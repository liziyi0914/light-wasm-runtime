use core::fmt;
use std::collections::HashMap;
use std::fmt::Formatter;
use std::sync::{Arc, Mutex};

use anyhow::{anyhow, bail, Result};
use thiserror::Error;
use wasmparser::{DataKind, ElementItems, ElementKind, ExternalKind, Operator, TableInit, TypeRef};

use crate::base::Val;
use crate::machine::{ConstExprEx, Machine, OperatorDesc};
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

#[allow(unused)]
#[derive(Clone)]
pub enum ImportItem {
    Function(Arc<dyn Fn(Vec<Val>) -> Result<Vec<Val>>>),
    Memory(Arc<MemoryDef>),
    Table(Arc<TableDef>),
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

static CHUNK_SIZE: u32 = 32;

pub struct MemoryDef {
    page: Mutex<usize>,
    data: Mutex<HashMap<u32, Vec<u8>>>,
}

impl MemoryDef {
    pub fn new(page: usize) -> Self {
        MemoryDef {
            page: Mutex::new(page),
            data: Mutex::new(HashMap::new()),
        }
    }

    pub fn page_count(&self) -> usize {
        *self.page.lock().unwrap()
    }

    pub fn grow_page(&self, n: usize) -> Result<()> {
        let mut page = self.page.lock().unwrap();

        *page += n;

        Ok(())
    }

    pub fn write(&self, offset0: usize, values: &[u8]) -> Result<()> {
        let mut len = values.len() as u32;
        let mut offset = offset0 as u32;
        let mut data = self.data.lock().unwrap();
        let mut values_offset = 0usize;

        while len > 0 {
            let part_index = offset / CHUNK_SIZE;
            let part_offset = offset % CHUNK_SIZE;
            let part_ava_len = CHUNK_SIZE - part_offset;
            let part_len = if part_ava_len < len { part_ava_len } else { len };

            if !data.contains_key(&part_index) {
                data.insert(part_index, vec![0u8; CHUNK_SIZE as usize]);
            }
            let part = data.get_mut(&part_index).unwrap();

            for i in 0..part_len {
                part[(part_offset + i) as usize] = values[values_offset + i as usize];
            }

            len -= part_len;
            values_offset += part_len as usize;
            offset += part_len;
        }

        // if data.len() < offset + len {
        //     bail!("Memory out of bounds");
        // }
        //
        // data[offset..offset + len].copy_from_slice(values);
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

    pub fn read(&self, offset: usize, len: usize) -> Result<Vec<u8>> {
        let mut result = vec![];

        let mut data = self.data.lock().unwrap();
        let mut len = len as u32;

        while len != 0 {
            let part_index = offset as u32 / CHUNK_SIZE;
            let part_offset = offset as u32 % CHUNK_SIZE;
            let part_ava_len = CHUNK_SIZE - part_offset;
            let part_len = if part_ava_len < len { part_ava_len } else { len };

            if !data.contains_key(&part_index) {
                result.extend(vec![0u8; part_len as usize]);
            } else {
                let part = data.get_mut(&part_index).unwrap();

                for i in 0..part_len {
                    result.push(part[(part_offset + i) as usize]);
                }
            }

            len -= part_len;
        }

        Ok(result)
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

#[allow(unused)]
pub struct TableDef {
    size: u32,
    functions: Mutex<HashMap<u32, Arc<dyn Fn(Vec<Val>) -> Result<Vec<Val>>>>>,
}

impl TableDef {
    pub fn new(size: u32) -> Self {
        TableDef {
            size,
            functions: Mutex::new(HashMap::default()),
        }
    }

    pub fn set_function(&self, index: u32, f: impl Fn(Vec<Val>) -> Result<Vec<Val>> + 'static) {
        let mut functions = self.functions.lock().unwrap();
        functions.insert(index, Arc::new(f));
    }

    pub fn call(&self, index: u32, args: Vec<Val>) -> Result<Vec<Val>> {
        let f = {
            let functions = self.functions.lock().unwrap();
            let f_opt = functions.get(&index);
            f_opt.map(|ff|ff.clone())
        };
        if let Some(ff) = f {
            return ff(args);
        }
        bail!(RuntimeError::Other(anyhow!("Not found function in table")))
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
    table_def: Arc<TableDef>,
}

impl<'a> Instance<'a> {
    pub fn new(module: &Module<'static>, imports: &Vec<ImportDef>) -> Result<Arc<Self>> {
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
                        offset_expr.run()?.to_i32().unwrap()
                    }
                }
            };

            mem.write(offset as usize, bytes)?;
        }

        // 初始化Table
        let tab = {
            let tab_opt = module.tables.first();
            if let Some(tab) = tab_opt {
                match &tab.init {
                    TableInit::Expr(_) => {
                        bail!(RuntimeError::Other(anyhow!("Not support Expr table section")));
                    }
                    _ => {}
                }
                let ty = tab.ty;
                if !ty.element_type.is_func_ref() {
                    bail!(RuntimeError::Other(anyhow!("Not support table section type: {}", ty.element_type.to_string())));
                }

                Arc::new(TableDef::new(ty.initial as u32))
            } else {
                let import_opt = module.imports
                    .iter()
                    .filter(|import| matches!(import.ty, TypeRef::Table(..)))
                    .nth(0);

                if let Some(import) = import_opt {
                    let import_def_opt = imports
                        .iter()
                        .filter(|im| im.name == import.name && im.module == import.module)
                        .nth(0);

                    if let Some(import_def) = import_def_opt {
                        match &import_def.item {
                            ImportItem::Table(tab) => {
                                tab.clone()
                            }
                            _ => {
                                Arc::new(TableDef::new(0))
                            }
                        }
                    } else {
                        Arc::new(TableDef::new(0))
                    }
                } else {
                    Arc::new(TableDef::new(0))
                }
            }
        };

        let global = {
            let global = VarMap::default();

            for (index, var) in module.globals.iter().enumerate() {
                let val = var.init_expr.run()?;
                if val.is_type(var.ty.content_type) {
                    global.set(index as u32, val);
                }
            }

            global
        };

        let inst = Arc::new(Instance {
            module: module.clone(),
            stack: Stack::new(),
            global: global,
            imports: imports.clone(),
            memory_def: mem,
            table_def: tab.clone(),
            ops_desc_cache: Default::default(),
        });

        // 初始化Element
        for ele in &module.elements {
            let offset = match &ele.kind {
                ElementKind::Active { offset_expr, .. } => {
                    offset_expr.run()?.to_i32().unwrap() as u32
                }
                _ => {
                    bail!(RuntimeError::Other(anyhow!("Not support element section")));
                }
            };
            match &ele.items {
                ElementItems::Functions(section) => {
                    let mut i = 0u32;
                    for res in section.clone().into_iter_with_offsets() {
                        if let Ok((_, index)) = res {
                            let inst_arc = inst.clone();
                            tab.set_function(offset + i, move |args| {
                                inst_arc.call_function(index, args)
                            });
                            i += 1;
                        }
                    }
                }
                _ => {
                    bail!(RuntimeError::Other(anyhow!("Not support element section")));
                }
            }
        }

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
        let (function_type, is_import, index) = self.module.get_function_info(func_index)?;
        if function_type.params.len() != args.len() {
            return Err(anyhow!("function signature error: {}", "params length not match"));
        }
        for (i, param) in function_type.params.iter().enumerate() {
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
                for result_type in function_type.results {
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

            |index| self.module.get_function_type_info(index),
            |index| self.module.get_function_info(index),
            |index, args| self.call_function(index, args),
            |index, args| self.table_def.call(index, args),
        )?;

        Ok(())
    }
}

