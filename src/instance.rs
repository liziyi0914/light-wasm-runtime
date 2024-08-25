use core::fmt;
use std::collections::HashMap;
use std::fmt::Formatter;
use std::sync::{Arc, Mutex};

use anyhow::{anyhow, bail, Result};
use thiserror::Error;
use wasmparser::{DataKind, ExternalKind, Operator, TypeRef};

use crate::base::Val;
use crate::machine::{Machine, OperatorDesc};
use crate::module::Module;

#[allow(dead_code)]
#[derive(Debug, Error)]
pub enum RuntimeError {
    #[error("Unreachable code")]
    Unreachable,
    #[error("Unsupported operator code: {0}")]
    UnsupportedOp(String),
    #[error("Invalid type conversion")]
    InvalidTypeConversion,
    #[error("Runtime error {0:?}")]
    Other(anyhow::Error),
}

#[derive(Clone)]
pub enum ImportItem {
    Function(Arc<dyn Fn(Vec<Val>) -> Result<Vec<Val>>>),
    Memory(Arc<MemoryDef>),
}

#[derive(Clone)]
pub struct ImportDef {
    pub module: String,
    pub name: String,
    pub item: ImportItem,
}

impl ImportDef {
    pub fn function(module: &str, name: &str, f: impl Fn(Vec<Val>) -> Result<Vec<Val>> + 'static) -> ImportDef {
        ImportDef {
            module: module.to_string(),
            name: name.to_string(),
            item: ImportItem::Function(Arc::new(f)),
        }
    }

    pub fn memory(module: &str, name: &str, memory: &Arc<MemoryDef>) -> ImportDef {
        ImportDef {
            module: module.to_string(),
            name: name.to_string(),
            item: ImportItem::Memory(memory.clone()),
        }
    }
}

pub struct MemoryDef {
    pub data: Mutex<Vec<u8>>,
}

impl MemoryDef {
    pub fn new(page: usize) -> Self {
        MemoryDef {
            data: Mutex::new(vec![0; page * 64 * 1024]),
        }
    }

    pub fn page_count(&self) -> usize {
        self.data.lock().unwrap().len() / 64 / 1024
    }

    pub fn grow_page(&self, page: usize) -> Result<()> {
        let mut data = self.data.lock().unwrap();

        data.extend(vec![0u8; page * 64 * 1024]);

        Ok(())
    }

    pub fn write(&self, offset: usize, values: &[u8]) -> Result<()> {
        let len = values.len();
        let mut data = self.data.lock().unwrap();

        if data.len() < offset + len {
            bail!("Memory out of bounds");
        }

        data[offset..offset + len].copy_from_slice(values);
        Ok(())
    }

    fn write_addr(&self, addr: u64, offset: u64, align: u64, values: &[u8]) -> Result<()> {
        let mut addr = addr + offset;

        if addr % align != 0 {
            addr += align - (addr % align);
        }

        self.write(addr as usize, values)
    }

    pub fn write8(&self, addr: u64, offset: u64, align: u64, values: u8) -> Result<()> {
        self.write_addr(addr, offset, align, &values.to_ne_bytes())?;
        Ok(())
    }

    pub fn write16(&self, addr: u64, offset: u64, align: u64, values: u16) -> Result<()> {
        self.write_addr(addr, offset, align, &values.to_ne_bytes())?;
        Ok(())
    }

    pub fn write32(&self, addr: u64, offset: u64, align: u64, values: u32) -> Result<()> {
        self.write_addr(addr, offset, align, &values.to_ne_bytes())?;
        Ok(())
    }

    pub fn write64(&self, addr: u64, offset: u64, align: u64, values: u64) -> Result<()> {
        self.write_addr(addr, offset, align, &values.to_ne_bytes())?;
        Ok(())
    }

    fn read(&self, offset: usize, len: usize) -> Result<Vec<u8>> {
        let data = self.data.lock().unwrap();

        if data.len() < offset + len {
            bail!("Memory out of bounds");
        }

        Ok(data[offset..offset + len].to_vec())
    }

    fn read_addr(&self, addr: u64, offset: u64, align: u64, len: usize) -> Result<Vec<u8>> {
        let mut addr = addr + offset;

        if addr % align != 0 {
            addr += align - (addr % align);
        }

        self.read(addr as usize, len)
    }

    pub fn read8(&self, addr: u64, offset: u64, align: u64) -> Result<u8> {
        let result = self.read_addr(addr, offset, align, 1)?;
        Ok(u8::from_ne_bytes([result[0]]))
    }

    pub fn read16(&self, addr: u64, offset: u64, align: u64) -> Result<u16> {
        let result = self.read_addr(addr, offset, align, 2)?;
        Ok(u16::from_ne_bytes([result[0], result[1]]))
    }

    pub fn read32(&self, addr: u64, offset: u64, align: u64) -> Result<u32> {
        let result = self.read_addr(addr, offset, align, 4)?;
        Ok(u32::from_ne_bytes([result[0], result[1], result[2], result[3]]))
    }

    pub fn read64(&self, addr: u64, offset: u64, align: u64) -> Result<u64> {
        let result = self.read_addr(addr, offset, align, 8)?;
        Ok(u64::from_ne_bytes([
            result[0],
            result[1],
            result[2],
            result[3],
            result[4],
            result[5],
            result[6],
            result[7]
        ]))
    }
}

#[derive(Default)]
pub struct Stack {
    stack: Mutex<Vec<Val>>,
}

impl Stack {
    pub fn new() -> Self {
        Stack {
            stack: Mutex::new(vec![]),
        }
    }

    pub fn push(&self, val: impl Into<Val>) {
        let mut stack = self.stack.lock().unwrap();
        stack.push(val.into());
    }

    pub fn pop(&self) -> Option<Val> {
        let mut stack = self.stack.lock().unwrap();
        stack.pop()
    }

    pub fn pop_res(&self) -> Result<Val> {
        self.pop()
            .ok_or(anyhow!("Cannot pop stack"))
    }

    pub fn pop_i32(&self) -> Result<i32> {
        self.pop()
            .and_then(|v| v.to_i32())
            .ok_or(anyhow!("Cannot pop stack"))
    }

    pub fn pop_i64(&self) -> Result<i64> {
        self.pop()
            .and_then(|v| v.to_i64())
            .ok_or(anyhow!("Cannot pop stack"))
    }

    pub fn pop_f32(&self) -> Result<f32> {
        self.pop()
            .and_then(|v| v.to_f32())
            .ok_or(anyhow!("Cannot pop stack"))
    }

    pub fn pop_f64(&self) -> Result<f64> {
        self.pop()
            .and_then(|v| v.to_f64())
            .ok_or(anyhow!("Cannot pop stack"))
    }
}

impl fmt::Debug for Stack {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        let stack = self.stack.lock().unwrap();
        f.debug_list()
            .entries(stack.clone())
            .finish()
    }
}

#[derive(Debug, Default)]
pub struct VarMap {
    values: Mutex<HashMap<u32, Val>>,
    mutable_map: Mutex<HashMap<u32, bool>>,
}

impl VarMap {
    pub fn new() -> Self {
        Self {
            values: Mutex::new(HashMap::new()),
            mutable_map: Mutex::new(HashMap::new()),
        }
    }

    pub fn get(&self, index: u32) -> Option<Val> {
        let values = self.values.lock().unwrap();
        let ret = values.get(&index);
        ret.map(|i| i.clone())
    }

    pub fn set(&self, index: u32, val: Val) {
        let mut mutable_map = self.mutable_map.lock().unwrap();
        let opt = mutable_map.get(&index);

        if opt.is_none() {
            mutable_map.insert(index, true);
        } else if !opt.unwrap() {
            return;
        }

        let mut values = self.values.lock().unwrap();
        values.insert(index, val);
    }

    pub fn set_mut(&self, index: u32, mutable: bool) {
        let mut mutable_map = self.mutable_map.lock().unwrap();
        mutable_map.insert(index, mutable);
    }
}

#[allow(dead_code)]
pub struct Instance<'a> {
    module: Module<'a>,
    stack: Stack,
    global: VarMap,
    imports: Vec<ImportDef>,
    memory_def: Arc<MemoryDef>,
    ops_desc_cache: Mutex<HashMap<u32, Arc<Vec<OperatorDesc>>>>,
}

impl<'a> Instance<'a> {
    pub fn new(module: &Module<'a>, imports: &Vec<ImportDef>) -> Result<Self> {
        // 初始化内存
        let mem = {
            let mem_opt = module.memories.first();
            if let Some(mem) = mem_opt {
                Arc::new(MemoryDef::new(mem.initial as usize))
            } else {
                let import_opt = module.imports
                    .iter()
                    .filter(|import| matches!(import.ty, TypeRef::Memory(..)))
                    .nth(0);

                if let Some(import) = import_opt {
                    let import_def_opt = imports
                        .iter()
                        .filter(|im| im.name == import.name && im.module == import.module)
                        .nth(0);

                    if let Some(import_def) = import_def_opt {
                        match &import_def.item {
                            ImportItem::Memory(mem) => {
                                mem.clone()
                            }
                            _ => {
                                Arc::new(MemoryDef::new(0))
                            }
                        }
                    } else {
                        Arc::new(MemoryDef::new(0))
                    }
                } else {
                    Arc::new(MemoryDef::new(0))
                }
            }
        };

        // 初始化Data段
        for data in &module.datas {
            let bytes = data.data;
            let offset = {
                match &data.kind {
                    DataKind::Passive => {
                        bail!(RuntimeError::Other(anyhow!("Not support passive data section")));
                    }
                    DataKind::Active { offset_expr, .. } => {
                        let mut ops = vec![];
                        for res2 in offset_expr.get_operators_reader().into_iter_with_offsets() {
                            if let Ok((op, _)) = res2 {
                                ops.push(op);
                            }
                        }
                        let st = Stack::new();
                        Machine::simply_run(&st, &ops)?;
                        st.pop_i32()?
                    }
                }
            };

            mem.write(offset as usize, bytes)?;
        }

        let inst = Instance {
            module: module.clone(),
            stack: Stack::new(),
            global: VarMap::default(),
            imports: imports.clone(),
            memory_def: mem,
            ops_desc_cache: Default::default(),
        };

        Ok(inst)
    }

    pub fn call(&self, func_name: &str, args: Vec<Val>) -> Result<Vec<Val>> {
        // 获取导出的函数索引
        let func_exp = self.module.exports
            .iter()
            .find(|exp| matches!(exp.kind, ExternalKind::Func) && func_name == exp.name)
            .map(|exp| exp.index)
            .ok_or(anyhow!("export not found"))?;

        // 返回值出栈
        let ret = self.call_function(func_exp, args)?;

        Ok(ret)
    }

    fn call_function(&self, func_index: u32, args: Vec<Val>) -> Result<Vec<Val>> {
        // println!(">>>>>> {:?}", args);

        // 检查函数签名
        let (params, results, is_import, index) = self.module.get_function_info(func_index)?;
        if params.len() != args.len() {
            return Err(anyhow!("function signature error: {}", "params length not match"));
        }
        for (i, param) in params.iter().enumerate() {
            if param != &args[i].to_type() {
                return Err(anyhow!("function signature error: {}", format!("param[{}] type not match", i)));
            }
        }

        // 调用函数
        if is_import {
            let import_info = self.module.imports
                .get(index as usize)
                .ok_or(anyhow!("function not imported"))?;

            // 调用函数
            let import = self.imports
                .iter()
                .filter(|def| def.module == import_info.module && def.name == import_info.name)
                .nth(0)
                .ok_or(anyhow!("function not imported"))?;
            match &import.item {
                ImportItem::Function(f) => {
                    let result = f(args)?;

                    Ok(result)
                }
                _ => {
                    bail!(RuntimeError::Other(anyhow!("function not imported")));
                }
            }
        } else {
            // 参数入栈
            let local = VarMap::default();
            for (i, arg) in args.iter().enumerate() {
                local.set(i as u32, arg.clone());
            }

            if let Some(locals) = self.module.code_locals.get(&func_index) {
                for i in 0..locals.len() {
                    local.set((i + args.len()) as u32, Val::default_value(locals[i]));
                }
            }

            // 调用函数
            let ops = self.module.codes
                .get(&func_index)
                .ok_or(anyhow!("function not found"))?;
            let desc = {
                let mut cache = self.ops_desc_cache.lock().unwrap();
                if !cache.contains_key(&func_index) {
                    cache.insert(func_index, Arc::new(OperatorDesc::build(ops)));
                }
                cache.get(&func_index).unwrap().clone()
            };
            self.exec(local, ops, desc)?;

            // 返回值出栈
            let mut ret = vec![];
            {
                for result_type in results {
                    let value = self.stack.pop()
                        .ok_or(anyhow!("Empty stack"))?;
                    if result_type == value.to_type() {
                        ret.insert(0, value);
                    } else {
                        return Err(anyhow!("Wrong ret type"));
                    }
                }
            }

            // println!("{:?} >>>> {:?}", args, ret);
            // println!("==========================");
            // println!(">>>>>> {:?}", ret);

            Ok(ret)
        }
    }

    fn exec(&self, local: VarMap, ops: &Vec<Operator>, ops_desc: Arc<Vec<OperatorDesc>>) -> Result<()> {
        // println!("ops: {:?}", ops);

        let stack = &self.stack;

        Machine::run(
            stack,
            &self.global,
            &local,
            ops,
            ops_desc,
            &self.memory_def,

            |index| self.module.get_function_info(index),
            |index, args| self.call_function(index, args),
        )?;

        Ok(())
    }
}

