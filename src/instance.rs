use std::collections::HashMap;
use std::ops::{Add, Div, Mul, Neg, Shl, Shr, Sub};
use std::sync::Mutex;
use anyhow::{anyhow, bail, Result};
use thiserror::Error;
use wasmparser::{BlockType, ExternalKind, Operator, ValType};
use crate::module::Module;

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

#[allow(dead_code)]
#[derive(Debug, Clone)]
pub enum Val {
    I32(i32),
    I64(i64),
    F32(f32),
    F64(f64),
}

pub enum ImportItem {
    Function(Box<dyn Fn(Vec<Val>) -> Result<Vec<Val>>>),
}

pub struct ImportDef {
    pub module: String,
    pub name: String,
    pub item: ImportItem,
}

impl Val {
    pub fn to_type(&self) -> ValType {
        match self {
            Val::I32(_) => {
                ValType::I32
            }
            Val::I64(_) => {
                ValType::I64
            }
            Val::F32(_) => {
                ValType::F32
            }
            Val::F64(_) => {
                ValType::F64
            }
        }
    }

    pub fn to_i32(&self) -> Option<i32> {
        match self {
            Val::I32(v) => {
                Some(*v)
            }
            _ => {
                None
            }
        }
    }

    pub fn to_i64(&self) -> Option<i64> {
        match self {
            Val::I64(v) => {
                Some(*v)
            }
            _ => {
                None
            }
        }
    }

    pub fn to_f32(&self) -> Option<f32> {
        match self {
            Val::F32(v) => {
                Some(*v)
            }
            _ => {
                None
            }
        }
    }

    pub fn to_f64(&self) -> Option<f64> {
        match self {
            Val::F64(v) => {
                Some(*v)
            }
            _ => {
                None
            }
        }
    }
}

impl From<i32> for Val {
    fn from(v: i32) -> Self {
        Val::I32(v)
    }
}

impl From<i64> for Val {
    fn from(v: i64) -> Self {
        Val::I64(v)
    }
}

impl From<f32> for Val {
    fn from(v: f32) -> Self {
        Val::F32(v)
    }
}

impl From<f64> for Val {
    fn from(v: f64) -> Self {
        Val::F64(v)
    }
}

#[derive(Debug, Default)]
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

#[derive(Debug, Default)]
pub struct VarMap {
    values: Mutex<HashMap<u32, Val>>,
}

impl VarMap {
    pub fn new() -> Self {
        Self {
            values: Mutex::new(HashMap::new()),
        }
    }

    pub fn get(&self, index: u32) -> Option<Val> {
        let values = self.values.lock().unwrap();
        let ret = values.get(&index);
        ret.map(|i|i.clone())
    }

    pub fn set(&self, index: u32, val: Val) {
        let mut values = self.values.lock().unwrap();
        values.insert(index, val);
    }
}

#[allow(dead_code)]
pub struct Instance<'a> {
    module: Module<'a>,
    stack: Stack,
    global: VarMap,
    imports: Vec<ImportDef>,
}

impl<'a> Instance<'a> {
    pub fn new(module: &Module<'a>, imports: Vec<ImportDef>) -> Self {
        Instance {
            module: module.clone(),
            stack: Stack::new(),
            global: VarMap::default(),
            imports,
        }
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

    pub fn call_function(&self, func_index: u32, args: Vec<Val>) -> Result<Vec<Val>> {
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
            }
        } else {
            // 参数入栈
            let local = VarMap::default();
            for (i, arg) in args.iter().enumerate() {
                local.set(i as u32, arg.clone());
            }

            // 调用函数
            let ops = self.module.codes
                .get(&func_index)
                .ok_or(anyhow!("function not found"))?;
            self.exec(local, ops)?;

            // 返回值出栈
            let mut ret = vec![];
            {
                for result_type in results {
                    let value = self.stack.pop()
                        .ok_or(anyhow!("Empty stack"))?;
                    if result_type == &value.to_type() {
                        ret.push(value);
                    } else {
                        return Err(anyhow!("Wrong ret type"));
                    }
                }
            }

            Ok(ret)
        }
    }

    fn exec(&self, local: VarMap, ops: &Vec<Operator>) -> Result<()> {
        // println!("ops: {:?}", ops);

        let stack = &self.stack;

        let mut jmp_depth: i64 = 0;

        for op in ops {
            if jmp_depth != 0 {
                if matches!(op, Operator::End) {
                    jmp_depth = jmp_depth.saturating_sub(1);
                } else if matches!(op, Operator::Block {..}) {
                    jmp_depth = jmp_depth.saturating_add(1);
                } else {
                    continue;
                }
            }

            // println!("op: {:?}", op);

            match op {
                Operator::Call { function_index } => {
                    let (params, _, _, _) = self.module.get_function_info(*function_index)?;

                    let mut args = vec![];

                    for typ in params.iter().rev() {
                        let val = stack.pop().ok_or(anyhow!("Cannot pop stack"))?;

                        if &val.to_type() != typ {
                            return Err(anyhow!("Wrong type"));
                        }

                        args.insert(0, val);
                    }

                    let ret = self.call_function(*function_index, args)?;

                    for val in ret {
                        stack.push(val);
                    }
                }
                Operator::Return {} => {
                    jmp_depth = -1;
                }
                Operator::Block { blockty } => {
                    match blockty {
                        BlockType::Empty => {}
                        _ => {
                            bail!(RuntimeError::UnsupportedOp(format!("{:?}", op)));
                        }
                    }
                }
                Operator::End => {}
                Operator::Unreachable => {
                    bail!(RuntimeError::Unreachable);
                }
                Operator::Nop => {}
                Operator::Loop { blockty } => {
                    // TODO
                }
                Operator::If { .. } => {}
                Operator::Else => {}
                Operator::TryTable { .. } => {}
                Operator::Throw { .. } => {}
                Operator::ThrowRef => {}
                Operator::Try { .. } => {}
                Operator::Catch { .. } => {}
                Operator::Rethrow { .. } => {}
                Operator::Delegate { .. } => {}
                Operator::CatchAll => {}
                Operator::BrIf { relative_depth } => {
                    let n = stack.pop_i32()?;

                    if n != 0 {
                        jmp_depth += (*relative_depth as i64) + 1;
                    }
                }
                Operator::Br { relative_depth } => {
                    jmp_depth += (*relative_depth as i64) + 1;
                }
                Operator::BrTable { .. } => {}
                Operator::CallIndirect { .. } => {}
                Operator::ReturnCall { .. } => {}
                Operator::ReturnCallIndirect { .. } => {}
                Operator::Drop => {
                    stack.pop();
                }
                Operator::Select => {
                    let c = stack.pop_i32()?;
                    let b = stack.pop_res()?;
                    let a = stack.pop_res()?;

                    if a.to_type() != b.to_type() {
                        bail!(RuntimeError::Other(anyhow!("Operate target type wrong")));
                    }

                    if c == 0 {
                        stack.push(b);
                    } else {
                        stack.push(a);
                    }
                }
                Operator::TypedSelect { .. } => {}
                Operator::LocalGet { local_index } => {
                    let val = local
                        .get(*local_index)
                        .ok_or(anyhow!("Cannot get local variable"))?;
                    stack.push(val.clone());
                }
                Operator::LocalSet { local_index } => {
                    let val = stack.pop_res()?;
                    local.set(*local_index, val);
                }
                Operator::LocalTee { local_index } => {
                    let val = stack.pop_res()?;
                    stack.push(val.clone());
                    local.set(*local_index, val);
                }
                Operator::GlobalGet { global_index } => {
                    let val = self.global
                        .get(*global_index)
                        .ok_or(anyhow!("Cannot get global variable"))?;
                    stack.push(val.clone());
                }
                Operator::GlobalSet { global_index } => {
                    let val = stack.pop_res()?;
                    self.global.set(*global_index, val);
                }
                Operator::I32Load { .. } => {}
                Operator::I64Load { .. } => {}
                Operator::F32Load { .. } => {}
                Operator::F64Load { .. } => {}
                Operator::I32Load8S { .. } => {}
                Operator::I32Load8U { .. } => {}
                Operator::I32Load16S { .. } => {}
                Operator::I32Load16U { .. } => {}
                Operator::I64Load8S { .. } => {}
                Operator::I64Load8U { .. } => {}
                Operator::I64Load16S { .. } => {}
                Operator::I64Load16U { .. } => {}
                Operator::I64Load32S { .. } => {}
                Operator::I64Load32U { .. } => {}
                Operator::I32Store { .. } => {}
                Operator::I64Store { .. } => {}
                Operator::F32Store { .. } => {}
                Operator::F64Store { .. } => {}
                Operator::I32Store8 { .. } => {}
                Operator::I32Store16 { .. } => {}
                Operator::I64Store8 { .. } => {}
                Operator::I64Store16 { .. } => {}
                Operator::I64Store32 { .. } => {}
                Operator::MemorySize { .. } => {}
                Operator::MemoryGrow { .. } => {}
                Operator::I32Const { value } => {
                    stack.push(Val::I32(*value));
                }
                Operator::I64Const { value } => {
                    stack.push(Val::I64(*value));
                }
                Operator::F32Const { value } => {
                    stack.push(Val::F32(value.bits() as f32));
                }
                Operator::F64Const { value } => {
                    stack.push(Val::F64(value.bits() as f64));
                }
                Operator::RefNull { .. } => {}
                Operator::RefIsNull => {}
                Operator::RefFunc { .. } => {}
                Operator::RefEq => {}
                Operator::I32Eqz => {
                    let n = stack.pop_i32()?;

                    stack.push(if n == 0 { 1i32 } else { 0i32 });
                }
                Operator::I32Eq => {
                    let a = stack.pop_i32()?;
                    let b = stack.pop_i32()?;

                    stack.push(if a == b { 1i32 } else { 0i32 });
                }
                Operator::I32Ne => {
                    let a = stack.pop_i32()?;
                    let b = stack.pop_i32()?;

                    stack.push(if a != b { 1i32 } else { 0i32 });
                }
                Operator::I32LtS => {
                    let a = stack.pop_i32()?;
                    let b = stack.pop_i32()?;

                    stack.push(if b < a { 1i32 } else { 0i32 });
                }
                Operator::I32LtU => {
                    let a = stack.pop_i32()? as u32;
                    let b = stack.pop_i32()? as u32;

                    stack.push(if b < a { 1i32 } else { 0i32 });
                }
                Operator::I32GtS => {
                    let a = stack.pop_i32()?;
                    let b = stack.pop_i32()?;

                    stack.push(if b > a { 1i32 } else { 0i32 });
                }
                Operator::I32GtU => {
                    let a = stack.pop_i32()? as u32;
                    let b = stack.pop_i32()? as u32;

                    stack.push(if b > a { 1i32 } else { 0i32 });
                }
                Operator::I32LeS => {
                    let a = stack.pop_i32()?;
                    let b = stack.pop_i32()?;

                    stack.push(if b <= a { 1i32 } else { 0i32 });
                }
                Operator::I32LeU => {
                    let a = stack.pop_i32()? as u32;
                    let b = stack.pop_i32()? as u32;

                    stack.push(if b <= a { 1i32 } else { 0i32 });
                }
                Operator::I32GeS => {
                    let a = stack.pop_i32()?;
                    let b = stack.pop_i32()?;

                    stack.push(if b >= a { 1i32 } else { 0i32 });
                }
                Operator::I32GeU => {
                    let a = stack.pop_i32()? as u32;
                    let b = stack.pop_i32()? as u32;

                    stack.push(if b >= a { 1i32 } else { 0i32 });
                }
                Operator::I64Eqz => {
                    let n = stack.pop_i64()?;

                    stack.push(if n == 0 { 1i32 } else { 0i32 });
                }
                Operator::I64Eq => {
                    let a = stack.pop_i64()?;
                    let b = stack.pop_i64()?;

                    stack.push(if a == b { 1i32 } else { 0i32 });
                }
                Operator::I64Ne => {
                    let a = stack.pop_i64()?;
                    let b = stack.pop_i64()?;

                    stack.push(if a != b { 1i32 } else { 0i32 });
                }
                Operator::I64LtS => {
                    let a = stack.pop_i64()?;
                    let b = stack.pop_i64()?;

                    stack.push(if b < a { 1i32 } else { 0i32 });
                }
                Operator::I64LtU => {
                    let a = stack.pop_i64()? as u64;
                    let b = stack.pop_i64()? as u64;

                    stack.push(if b < a { 1i32 } else { 0i32 });
                }
                Operator::I64GtS => {
                    let a = stack.pop_i64()?;
                    let b = stack.pop_i64()?;

                    stack.push(if b > a { 1i32 } else { 0i32 });
                }
                Operator::I64GtU => {
                    let a = stack.pop_i64()? as u64;
                    let b = stack.pop_i64()? as u64;

                    stack.push(if b > a { 1i32 } else { 0i32 });
                }
                Operator::I64LeS => {
                    let a = stack.pop_i64()?;
                    let b = stack.pop_i64()?;

                    stack.push(if b <= a { 1i32 } else { 0i32 });
                }
                Operator::I64LeU => {
                    let a = stack.pop_i64()? as u64;
                    let b = stack.pop_i64()? as u64;

                    stack.push(if b <= a { 1i32 } else { 0i32 });
                }
                Operator::I64GeS => {
                    let a = stack.pop_i64()?;
                    let b = stack.pop_i64()?;

                    stack.push(if b >= a { 1i32 } else { 0i32 });
                }
                Operator::I64GeU => {
                    let a = stack.pop_i64()? as u64;
                    let b = stack.pop_i64()? as u64;

                    stack.push(if b >= a { 1i32 } else { 0i32 });
                }
                Operator::F32Eq => {
                    let a = stack.pop_f32()?;
                    let b = stack.pop_f32()?;

                    stack.push(if a == b { 1i32 } else { 0i32 });
                }
                Operator::F32Ne => {
                    let a = stack.pop_f32()?;
                    let b = stack.pop_f32()?;

                    stack.push(if a != b { 1i32 } else { 0i32 });
                }
                Operator::F32Lt => {
                    let a = stack.pop_f32()?;
                    let b = stack.pop_f32()?;

                    stack.push(if b < a { 1i32 } else { 0i32 });
                }
                Operator::F32Gt => {
                    let a = stack.pop_f32()?;
                    let b = stack.pop_f32()?;

                    stack.push(if b > a { 1i32 } else { 0i32 });
                }
                Operator::F32Le => {
                    let a = stack.pop_f32()?;
                    let b = stack.pop_f32()?;

                    stack.push(if b <= a { 1i32 } else { 0i32 });
                }
                Operator::F32Ge => {
                    let a = stack.pop_f32()?;
                    let b = stack.pop_f32()?;

                    stack.push(if b >= a { 1i32 } else { 0i32 });
                }
                Operator::F64Eq => {
                    let a = stack.pop_f64()?;
                    let b = stack.pop_f64()?;

                    stack.push(if b == a { 1i32 } else { 0i32 });
                }
                Operator::F64Ne => {
                    let a = stack.pop_f64()?;
                    let b = stack.pop_f64()?;

                    stack.push(if b != a { 1i32 } else { 0i32 });
                }
                Operator::F64Lt => {
                    let a = stack.pop_f64()?;
                    let b = stack.pop_f64()?;

                    stack.push(if b < a { 1i32 } else { 0i32 });
                }
                Operator::F64Gt => {
                    let a = stack.pop_f64()?;
                    let b = stack.pop_f64()?;

                    stack.push(if b > a { 1i32 } else { 0i32 });
                }
                Operator::F64Le => {
                    let a = stack.pop_f64()?;
                    let b = stack.pop_f64()?;

                    stack.push(if b <= a { 1i32 } else { 0i32 });
                }
                Operator::F64Ge => {
                    let a = stack.pop_f64()?;
                    let b = stack.pop_f64()?;

                    stack.push(if b >= a { 1i32 } else { 0i32 });
                }
                Operator::I32Clz => {
                    let n = stack.pop_i32()?;

                    stack.push(n.leading_zeros() as i32);
                }
                Operator::I32Ctz => {
                    let n = stack.pop_i32()?;

                    stack.push(n.trailing_zeros() as i32);
                }
                Operator::I32Popcnt => {
                    let n = stack.pop_i32()?;

                    stack.push(n.count_ones() as i32);
                }
                Operator::I32Add => {
                    let a = stack.pop_i32()?;
                    let b = stack.pop_i32()?;

                    stack.push(b.wrapping_add(a));
                }
                Operator::I32Sub => {
                    let a = stack.pop_i32()?;
                    let b = stack.pop_i32()?;

                    stack.push(b.wrapping_sub(a));
                }
                Operator::I32Mul => {
                    let a = stack.pop_i32()?;
                    let b = stack.pop_i32()?;

                    stack.push(b.wrapping_mul(a));
                }
                Operator::I32DivS => {
                    let a = stack.pop_i32()?;
                    let b = stack.pop_i32()?;

                    stack.push(b.wrapping_div(a));
                }
                Operator::I32DivU => {
                    let a = stack.pop_i32()? as u32;
                    let b = stack.pop_i32()? as u32;

                    stack.push(b.wrapping_div(a) as i32);
                }
                Operator::I32RemS => {
                    let a = stack.pop_i32()?;
                    let b = stack.pop_i32()?;

                    stack.push(b.wrapping_rem(a));
                }
                Operator::I32RemU => {
                    let a = stack.pop_i32()? as u32;
                    let b = stack.pop_i32()? as u32;

                    stack.push(b.wrapping_rem(a) as i32);
                }
                Operator::I32And => {
                    let a = stack.pop_i32()?;
                    let b = stack.pop_i32()?;

                    stack.push(a & b);
                }
                Operator::I32Or => {
                    let a = stack.pop_i32()?;
                    let b = stack.pop_i32()?;

                    stack.push(a | b);
                }
                Operator::I32Xor => {
                    let a = stack.pop_i32()?;
                    let b = stack.pop_i32()?;

                    stack.push(a ^ b);
                }
                Operator::I32Shl => {
                    let a = stack.pop_i32()?;
                    let b = stack.pop_i32()?;

                    stack.push(b.shl(a));
                }
                Operator::I32ShrS => {
                    let a = stack.pop_i32()?;
                    let b = stack.pop_i32()?;

                    stack.push(b.shr(a));
                }
                Operator::I32ShrU => {
                    let a = stack.pop_i32()? as u32;
                    let b = stack.pop_i32()? as u32;

                    stack.push(b.shr(a) as i32);
                }
                Operator::I32Rotl => {
                    let a = stack.pop_i32()? as u32;
                    let b = stack.pop_i32()? as u32;

                    stack.push(b.rotate_left(a) as i32);
                }
                Operator::I32Rotr => {
                    let a = stack.pop_i32()? as u32;
                    let b = stack.pop_i32()? as u32;

                    stack.push(b.rotate_right(a) as i32);
                }
                Operator::I64Clz => {
                    let n = stack.pop_i64()?;

                    stack.push(n.count_ones() as i64);
                }
                Operator::I64Ctz => {
                    let n = stack.pop_i64()?;

                    stack.push(n.count_ones() as i64);
                }
                Operator::I64Popcnt => {
                    let n = stack.pop_i64()?;

                    stack.push(n.count_ones() as i64);
                }
                Operator::I64Add => {
                    let a = stack.pop_i64()?;
                    let b = stack.pop_i64()?;

                    stack.push(Val::I64(a.wrapping_add(b)));
                }
                Operator::I64Sub => {
                    let a = stack.pop_i64()?;
                    let b = stack.pop_i64()?;

                    stack.push(Val::I64(b.wrapping_sub(a)));
                }
                Operator::I64Mul => {
                    let a = stack.pop_i64()?;
                    let b = stack.pop_i64()?;

                    stack.push(b.wrapping_mul(a));
                }
                Operator::I64DivS => {
                    let a = stack.pop_i64()?;
                    let b = stack.pop_i64()?;

                    stack.push(b.wrapping_mul(a));
                }
                Operator::I64DivU => {
                    let a = stack.pop_i64()? as u64;
                    let b = stack.pop_i64()? as u64;

                    stack.push(b.wrapping_div(a) as i64);
                }
                Operator::I64RemS => {
                    let a = stack.pop_i64()?;
                    let b = stack.pop_i64()?;

                    stack.push(b.wrapping_rem(a));
                }
                Operator::I64RemU => {
                    let a = stack.pop_i64()? as u64;
                    let b = stack.pop_i64()? as u64;

                    stack.push(b.wrapping_rem(a) as i64);
                }
                Operator::I64And => {
                    let a = stack.pop_i64()?;
                    let b = stack.pop_i64()?;

                    stack.push(a & b);
                }
                Operator::I64Or => {
                    let a = stack.pop_i64()?;
                    let b = stack.pop_i64()?;

                    stack.push(a | b);
                }
                Operator::I64Xor => {
                    let a = stack.pop_i64()?;
                    let b = stack.pop_i64()?;

                    stack.push(a ^ b);
                }
                Operator::I64Shl => {
                    let a = stack.pop_i64()?;
                    let b = stack.pop_i64()?;

                    stack.push(b.shl(a));
                }
                Operator::I64ShrS => {
                    let a = stack.pop_i64()?;
                    let b = stack.pop_i64()?;

                    stack.push(b.shr(a));
                }
                Operator::I64ShrU => {
                    let a = stack.pop_i64()? as u64;
                    let b = stack.pop_i64()? as u64;

                    stack.push(b.shr(a) as i64);
                }
                Operator::I64Rotl => {
                    let a = stack.pop_i64()? as u64;
                    let b = stack.pop_i64()? as u64;

                    stack.push(b.rotate_left(a as u32) as i64);
                }
                Operator::I64Rotr => {
                    let a = stack.pop_i64()? as u64;
                    let b = stack.pop_i64()? as u64;

                    stack.push(b.rotate_right(a as u32) as i64);
                }
                Operator::F32Abs => {
                    let n = stack.pop_f32()?;

                    stack.push(n.abs());
                }
                Operator::F32Neg => {
                    let n = stack.pop_f32()?;

                    stack.push(n.neg());
                }
                Operator::F32Ceil => {
                    let n = stack.pop_f32()?;

                    stack.push(n.ceil());
                }
                Operator::F32Floor => {
                    let n = stack.pop_f32()?;

                    stack.push(n.floor());
                }
                Operator::F32Trunc => {
                    let n = stack.pop_f32()?;

                    stack.push(n.trunc());
                }
                Operator::F32Nearest => {
                    let n = stack.pop_f32()?;

                    stack.push(n.round_ties_even());
                }
                Operator::F32Sqrt => {
                    let n = stack.pop_f32()?;

                    stack.push(n.sqrt());
                }
                Operator::F32Add => {
                    let a = stack.pop_f32()?;
                    let b = stack.pop_f32()?;

                    stack.push(b.add(a));
                }
                Operator::F32Sub => {
                    let a = stack.pop_f32()?;
                    let b = stack.pop_f32()?;

                    stack.push(b.sub(a));
                }
                Operator::F32Mul => {
                    let a = stack.pop_f32()?;
                    let b = stack.pop_f32()?;

                    stack.push(b.mul(a));
                }
                Operator::F32Div => {
                    let a = stack.pop_f32()?;
                    let b = stack.pop_f32()?;

                    stack.push(b.div(a));
                }
                Operator::F32Min => {
                    let a = stack.pop_f32()?;
                    let b = stack.pop_f32()?;

                    stack.push(b.min(a));
                }
                Operator::F32Max => {
                    let a = stack.pop_f32()?;
                    let b = stack.pop_f32()?;

                    stack.push(b.max(a));
                }
                Operator::F32Copysign => {
                    let a = stack.pop_f32()?;
                    let b = stack.pop_f32()?;

                    stack.push(b.copysign(a));
                }
                Operator::F64Abs => {
                    let n = stack.pop_f64()?;

                    stack.push(n.abs());
                }
                Operator::F64Neg => {
                    let n = stack.pop_f64()?;

                    stack.push(n.neg());
                }
                Operator::F64Ceil => {
                    let n = stack.pop_f64()?;

                    stack.push(n.ceil());
                }
                Operator::F64Floor => {
                    let n = stack.pop_f64()?;

                    stack.push(n.floor());
                }
                Operator::F64Trunc => {
                    let n = stack.pop_f64()?;

                    stack.push(n.trunc());
                }
                Operator::F64Nearest => {
                    let n = stack.pop_f64()?;

                    stack.push(n.round_ties_even());
                }
                Operator::F64Sqrt => {
                    let n = stack.pop_f64()?;

                    stack.push(n.sqrt());
                }
                Operator::F64Add => {
                    let a = stack.pop_f64()?;
                    let b = stack.pop_f64()?;

                    stack.push(b.add(a));
                }
                Operator::F64Sub => {
                    let a = stack.pop_f64()?;
                    let b = stack.pop_f64()?;

                    stack.push(b.sub(a));
                }
                Operator::F64Mul => {
                    let a = stack.pop_f64()?;
                    let b = stack.pop_f64()?;

                    stack.push(b.mul(a));
                }
                Operator::F64Div => {
                    let a = stack.pop_f64()?;
                    let b = stack.pop_f64()?;

                    stack.push(b.div(a));
                }
                Operator::F64Min => {
                    let a = stack.pop_f64()?;
                    let b = stack.pop_f64()?;

                    stack.push(b.min(a));
                }
                Operator::F64Max => {
                    let a = stack.pop_f64()?;
                    let b = stack.pop_f64()?;

                    stack.push(b.max(a));
                }
                Operator::F64Copysign => {
                    let a = stack.pop_f64()?;
                    let b = stack.pop_f64()?;

                    stack.push(b.copysign(a));
                }
                // Operator::I32WrapI64 => {}
                // Operator::I32TruncF32S => {}
                // Operator::I32TruncF32U => {}
                // Operator::I32TruncF64S => {}
                // Operator::I32TruncF64U => {}
                // Operator::I64ExtendI32S => {}
                // Operator::I64ExtendI32U => {}
                // Operator::I64TruncF32S => {}
                // Operator::I64TruncF32U => {}
                // Operator::I64TruncF64S => {}
                // Operator::I64TruncF64U => {}
                // Operator::F32ConvertI32S => {}
                // Operator::F32ConvertI32U => {}
                // Operator::F32ConvertI64S => {}
                // Operator::F32ConvertI64U => {}
                // Operator::F32DemoteF64 => {}
                // Operator::F64ConvertI32S => {}
                // Operator::F64ConvertI32U => {}
                // Operator::F64ConvertI64S => {}
                // Operator::F64ConvertI64U => {}
                // Operator::F64PromoteF32 => {}
                // Operator::I32ReinterpretF32 => {}
                // Operator::I64ReinterpretF64 => {}
                // Operator::F32ReinterpretI32 => {}
                // Operator::F64ReinterpretI64 => {}
                Operator::StructNew { .. } => {}
                Operator::StructNewDefault { .. } => {}
                Operator::StructGet { .. } => {}
                Operator::StructGetS { .. } => {}
                Operator::StructGetU { .. } => {}
                Operator::StructSet { .. } => {}
                Operator::ArrayNew { .. } => {}
                Operator::ArrayNewDefault { .. } => {}
                Operator::ArrayNewFixed { .. } => {}
                Operator::ArrayNewData { .. } => {}
                Operator::ArrayNewElem { .. } => {}
                Operator::ArrayGet { .. } => {}
                Operator::ArrayGetS { .. } => {}
                Operator::ArrayGetU { .. } => {}
                Operator::ArraySet { .. } => {}
                Operator::ArrayLen => {}
                Operator::ArrayFill { .. } => {}
                Operator::ArrayCopy { .. } => {}
                Operator::ArrayInitData { .. } => {}
                Operator::ArrayInitElem { .. } => {}
                Operator::RefTestNonNull { .. } => {}
                Operator::RefTestNullable { .. } => {}
                Operator::RefCastNonNull { .. } => {}
                Operator::RefCastNullable { .. } => {}
                Operator::BrOnCast { .. } => {}
                Operator::BrOnCastFail { .. } => {}
                Operator::AnyConvertExtern => {}
                Operator::ExternConvertAny => {}
                Operator::RefI31 => {}
                Operator::I31GetS => {}
                Operator::I31GetU => {}
                Operator::I32TruncSatF32S => {}
                Operator::I32TruncSatF32U => {}
                Operator::I32TruncSatF64S => {}
                Operator::I32TruncSatF64U => {}
                Operator::I64TruncSatF32S => {}
                Operator::I64TruncSatF32U => {}
                Operator::I64TruncSatF64S => {}
                Operator::I64TruncSatF64U => {}
                Operator::MemoryInit { .. } => {}
                Operator::DataDrop { .. } => {}
                Operator::MemoryCopy { .. } => {}
                Operator::MemoryFill { .. } => {}
                Operator::TableInit { .. } => {}
                Operator::ElemDrop { .. } => {}
                Operator::TableCopy { .. } => {}
                Operator::TableFill { .. } => {}
                Operator::TableGet { .. } => {}
                Operator::TableSet { .. } => {}
                Operator::TableGrow { .. } => {}
                Operator::TableSize { .. } => {}
                Operator::MemoryDiscard { .. } => {}
                Operator::MemoryAtomicNotify { .. } => {}
                Operator::MemoryAtomicWait32 { .. } => {}
                Operator::MemoryAtomicWait64 { .. } => {}
                Operator::AtomicFence => {}
                Operator::CallRef { .. } => {}
                Operator::ReturnCallRef { .. } => {}
                Operator::RefAsNonNull => {}
                Operator::BrOnNull { .. } => {}
                Operator::BrOnNonNull { .. } => {}
                _ => {
                    bail!(RuntimeError::UnsupportedOp(format!("{:?}", op)));
                }
            }
        }

        Ok(())
    }
}


