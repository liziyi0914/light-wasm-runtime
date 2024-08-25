use std::ops::{Add, Div, Mul, Neg, Shl, Shr, Sub};
use std::sync::Arc;

use anyhow::{anyhow, bail, Result};
use wasmparser::{BlockType, Operator, ValType};

use crate::base::Val;
use crate::instance::{MemoryDef, RuntimeError, Stack, VarMap};

#[allow(dead_code)]
#[derive(Debug)]
pub struct OperatorDesc {
    pub next: Option<u32>,
    pub head: u32,
    pub tail: u32,
    pub op_type: OpType,
}

#[derive(Debug)]
pub enum OpType {
    Common,
    Block,
    Loop,
    If {
        else_branch: Option<u32>,
    },
}

impl OperatorDesc {
    pub fn build(ops: &Vec<Operator>) -> Vec<Self> {
        let ops_len = ops.len() as u32;

        let mut list = vec![];

        let mut head = 0u32;
        let mut tail = ops_len - 1;

        let mut head_list = vec![head];
        let mut tail_list = vec![tail];
        let mut if_list = vec![];

        for i in 0..ops_len {
            let op = &ops[i as usize];

            // println!("op: {:?}", op);

            list.push(OperatorDesc {
                next: Some(i + 1),
                head: head,
                tail: tail,
                op_type: OpType::Common,
            });

            match op {
                Operator::Block { .. } => {
                    head_list.push(head);
                    head = i;
                    list[i as usize].op_type = OpType::Block;
                }
                Operator::Loop { .. } => {
                    head_list.push(head);
                    head = i;
                    list[i as usize].op_type = OpType::Loop;
                }
                Operator::If { .. } => {
                    head_list.push(head);
                    if_list.push(i);
                    head = i;
                    list[i as usize].op_type = OpType::If { else_branch: None };
                }
                Operator::Else => {
                    head_list.pop();
                    head_list.push(head);
                    head = i;
                    list[i as usize].op_type = OpType::Block;
                    let if_index = if_list.pop().unwrap();
                    list[if_index as usize].op_type = OpType::If {
                        else_branch: Some(i),
                    };
                }
                Operator::End => {
                    head = head_list.pop().unwrap();
                }
                _ => {}
            }
        }

        list[(ops_len - 1) as usize].next = None;

        let mut last_is_else = false;

        for i in 0..ops_len {
            let index = ops_len - i - 1;
            let op = &ops[index as usize];

            list[index as usize].tail = tail;

            match op {
                Operator::Block { .. } => {
                    tail = tail_list.pop().unwrap();
                }
                Operator::Loop { .. } => {
                    tail = tail_list.pop().unwrap();
                }
                Operator::If { .. } => {
                    tail = tail_list.pop().unwrap();
                }
                Operator::Else { .. } => {
                    last_is_else = true;
                //     tail_list.pop();
                //     tail_list.push(tail);
                //     tail = index;
                }
                Operator::End => {
                    tail_list.push(tail);
                    tail = index;
                }
                _ => {
                    if last_is_else {
                        last_is_else = false;
                        list[index as usize].next = list[tail as usize].next;
                    }
                }
            }
        }

        // for i in 0..ops_len {
        //     println!("{:<75} {:}", format!("{:?}",ops[i as usize]), format!(
        //         "current: {}\t next: {}\t head: {}\t tail: {}\t type: {:?}",
        //         i,
        //         match list[i as usize].next {
        //             None => { "None".to_string() }
        //             Some(n) => { n.to_string() }
        //         },
        //         list[i as usize].head,
        //         list[i as usize].tail,
        //         list[i as usize].op_type
        //     ));
        // }

        // panic!("");

        list
    }
}

trait OperatorDescVecEx {
    fn calc_break(&self, index: u32, depth: u32) -> Result<Option<u32>>;
}

impl OperatorDescVecEx for Vec<OperatorDesc> {
    fn calc_break(&self, index: u32, depth: u32) -> Result<Option<u32>> {
        let mut current = index;

        for _ in 0..depth {
            current = self[current as usize].head;
        };

        let desc = &self[current as usize];

        let next = match desc.op_type {
            OpType::Common => {
                self.get(desc.tail as usize)
                    .and_then(|i|i.next)
            }
            OpType::Block => {
                self.get(desc.tail as usize)
                    .and_then(|i|i.next)
            }
            OpType::Loop => {
                self.get(current as usize)
                    .and_then(|i|i.next)
            }
            OpType::If { .. } => {
                self.get(desc.tail as usize)
                    .and_then(|i|i.next)
            }
        };

        Ok(next)
    }
}

pub struct Machine;

impl Machine {
    pub fn simply_run(stack: &Stack, ops: &Vec<Operator>) -> Result<()> {
        let global = VarMap::new();
        let local = VarMap::new();
        let memory = MemoryDef::new(0);

        Self::run(
            stack,
            &global,
            &local,
            ops,
            Arc::new(OperatorDesc::build(ops)),
            &memory,
            |_| bail!("Cannot get function info"),
            |_, _| bail!("Cannot call function"),
        )?;

        Ok(())
    }

    pub fn run(
        stack: &Stack,
        global: &VarMap,
        local: &VarMap,
        ops: &Vec<Operator>,
        ops_desc: Arc<Vec<OperatorDesc>>,
        memory: &MemoryDef,
        get_function_info: impl Fn(u32) -> Result<(Vec<ValType>, Vec<ValType>, bool, u32)>,
        call_function: impl Fn(u32, Vec<Val>) -> Result<Vec<Val>>,
    ) -> Result<()> {
        let mut index = 0u32;

        loop {
            let op = &ops[index as usize];

            // println!("op: {:?}", op);

            let mut next = ops_desc
                .get(index as usize)
                .and_then(|desc| desc.next);

            match op {
                Operator::Call { function_index } => {
                    let (params, _, _, _) = get_function_info(*function_index)?;

                    let mut args = vec![];

                    for typ in params.iter().rev() {
                        let val = stack.pop().ok_or(anyhow!("Cannot pop stack"))?;

                        if &val.to_type() != typ {
                            return Err(anyhow!("Wrong type"));
                        }

                        args.insert(0, val);
                    }

                    // println!("args: {:?}", args);

                    let ret = call_function(*function_index, args)?;

                    // println!("return {:?}", ret);

                    for val in ret {
                        stack.push(val);
                    }
                }
                Operator::Return {} => {
                    next = None;
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
                Operator::Loop { .. } => {
                }
                Operator::If { .. } => {
                    // println!("if: {:?}", blockty);
                    let n = stack.pop_i32()?;
                    if n == 0 {
                        let typ = &ops_desc.get(index as usize).unwrap().op_type;
                        if let OpType::If { else_branch } = typ {
                            next = else_branch.clone();
                        }
                    }
                }
                Operator::Else => {}
                // Operator::TryTable { .. } => {}
                // Operator::Throw { .. } => {}
                // Operator::ThrowRef => {}
                // Operator::Try { .. } => {}
                // Operator::Catch { .. } => {}
                // Operator::Rethrow { .. } => {}
                // Operator::Delegate { .. } => {}
                // Operator::CatchAll => {}
                Operator::BrIf { relative_depth } => {
                    let n = stack.pop_i32()?;

                    if n != 0 {
                        // jmp_depth += (*relative_depth as i64) + 1
                        next = ops_desc.calc_break(index, *relative_depth + 1)?;
                    }
                }
                Operator::Br { relative_depth } => {
                    next = ops_desc.calc_break(index, *relative_depth + 1)?;
                }
                Operator::BrTable { targets } => {
                    let m = stack.pop_i32()? as u32;

                    if let Some(Ok(n)) = targets.targets().nth(m as usize) {
                        next = ops_desc.calc_break(index, n+1)?;
                    } else {
                        next = ops_desc.calc_break(index, targets.default() + 1)?;
                    }
                }
                // Operator::CallIndirect { .. } => {}
                // Operator::ReturnCall { .. } => {}
                // Operator::ReturnCallIndirect { .. } => {}
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
                // Operator::TypedSelect { .. } => {}
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
                    let val = global
                        .get(*global_index)
                        .ok_or(anyhow!("Cannot get global variable"))?;
                    stack.push(val.clone());
                }
                Operator::GlobalSet { global_index } => {
                    let val = stack.pop_res()?;
                    global.set(*global_index, val);
                }
                Operator::I32Load { memarg } => {
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    let n = memory.read32(addr, offset, align)?;

                    stack.push(n as i32);
                }
                Operator::I64Load { memarg } => {
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    let n = memory.read64(addr, offset, align)?;

                    stack.push(n as i64);
                }
                Operator::F32Load { memarg } => {
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    let n = memory.read32(addr, offset, align)?;

                    stack.push(f32::from_bits(n));
                }
                Operator::F64Load { memarg } => {
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    let n = memory.read64(addr, offset, align)?;

                    stack.push(f64::from_bits(n));
                }
                Operator::I32Load8S { memarg } => {
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    let n = memory.read8(addr, offset, align)?;

                    stack.push(n as i8 as i32);
                }
                Operator::I32Load8U { memarg } => {
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    let n = memory.read8(addr, offset, align)?;

                    stack.push(n as i32);
                }
                Operator::I32Load16S { memarg } => {
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    let n = memory.read16(addr, offset, align)?;

                    stack.push(n as i16 as i32);
                }
                Operator::I32Load16U { memarg } => {
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    let n = memory.read16(addr, offset, align)?;

                    stack.push(n as i32);
                }
                Operator::I64Load8S { memarg } => {
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    let n = memory.read8(addr, offset, align)?;

                    stack.push(n as i8 as i64);
                }
                Operator::I64Load8U { memarg } => {
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    let n = memory.read8(addr, offset, align)?;

                    stack.push(n as i64);
                }
                Operator::I64Load16S { memarg } => {
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    let n = memory.read16(addr, offset, align)?;

                    stack.push(n as i16 as i64);
                }
                Operator::I64Load16U { memarg } => {
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    let n = memory.read16(addr, offset, align)?;

                    stack.push(n as i64);
                }
                Operator::I64Load32S { memarg } => {
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    let n = memory.read32(addr, offset, align)?;

                    stack.push(n as i32 as i64);
                }
                Operator::I64Load32U { memarg } => {
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    let n = memory.read32(addr, offset, align)?;

                    stack.push(n as i64);
                }
                Operator::I32Store { memarg } => {
                    let value = stack.pop_i32()?;
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    memory.write32(addr, offset, align, value as u32)?;
                }
                Operator::I64Store { memarg } => {
                    let value = stack.pop_i64()?;
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    memory.write64(addr, offset, align, value as u64)?;
                }
                Operator::F32Store { memarg } => {
                    let value = stack.pop_f32()?;
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    memory.write32(addr, offset, align, value.to_bits())?;
                }
                Operator::F64Store { memarg } => {
                    let value = stack.pop_f64()?;
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    memory.write64(addr, offset, align, value.to_bits())?;
                }
                Operator::I32Store8 { memarg } => {
                    let value = stack.pop_i32()?;
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    memory.write8(addr, offset, align, value as u32 as u8)?;
                }
                Operator::I32Store16 { memarg } => {
                    let value = stack.pop_i32()?;
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    memory.write16(addr, offset, align, value as u32 as u16)?;
                }
                Operator::I64Store8 { memarg } => {
                    let value = stack.pop_i64()?;
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    memory.write8(addr, offset, align, value as u64 as u8)?;
                }
                Operator::I64Store16 { memarg } => {
                    let value = stack.pop_i64()?;
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    memory.write16(addr, offset, align, value as u64 as u16)?;
                }
                Operator::I64Store32 { memarg } => {
                    let value = stack.pop_i64()?;
                    let addr = stack.pop_i32()? as u64;
                    let offset = memarg.offset;
                    let align = (1 << memarg.align) as u64;

                    memory.write32(addr, offset, align, value as u32)?;
                }
                Operator::MemorySize { .. } => {
                    stack.push(memory.page_count() as u32 as i32);
                }
                Operator::MemoryGrow { .. } => {
                    let c = stack.pop_i32()?;
                    let v = stack.pop_i32()?;
                    match memory.grow_page(v as u32 as usize) {
                        Ok(_) => {
                            stack.push(c);
                        }
                        Err(_) => {
                            stack.push(-1i32);
                        }
                    }
                }
                Operator::I32Const { value } => {
                    stack.push(Val::I32(*value));
                }
                Operator::I64Const { value } => {
                    stack.push(Val::I64(*value));
                }
                Operator::F32Const { value } => {
                    stack.push(Val::F32(f32::from_bits(value.bits())));
                }
                Operator::F64Const { value } => {
                    stack.push(Val::F64(f64::from_bits(value.bits())));
                }
                // Operator::RefNull { .. } => {}
                // Operator::RefIsNull => {}
                // Operator::RefFunc { .. } => {}
                // Operator::RefEq => {}
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
                Operator::I32WrapI64 => {
                    let n = stack.pop_i64()?;
                    stack.push(n as u64 as u32 as i32);
                }
                Operator::I32TruncF32S => {
                    let n = stack.pop_f32()?;
                    stack.push(n.trunc() as i32);
                }
                Operator::I32TruncF32U => {
                    let n = stack.pop_f32()?;
                    stack.push(n.trunc() as u32 as i32);
                }
                Operator::I32TruncF64S => {
                    let n = stack.pop_f64()?;
                    stack.push(n.trunc() as i64 as i32);
                }
                Operator::I32TruncF64U => {
                    let n = stack.pop_f64()?;
                    stack.push(n.trunc() as i64 as u64 as i32);
                }
                Operator::I64ExtendI32S => {
                    let n = stack.pop_i32()?;
                    stack.push(n as i64);
                }
                Operator::I64ExtendI32U => {
                    let n = stack.pop_i32()?;
                    stack.push(n as u64 as i64);
                }
                Operator::I64TruncF32S => {
                    let n = stack.pop_f32()?;
                    stack.push(n.trunc() as i32 as i64);
                }
                Operator::I64TruncF32U => {
                    let n = stack.pop_f32()?;
                    stack.push(n.trunc() as u32 as i64);
                }
                Operator::I64TruncF64S => {
                    let n = stack.pop_f64()?;
                    stack.push(n.trunc() as i64);
                }
                Operator::I64TruncF64U => {
                    let n = stack.pop_f64()?;
                    stack.push(n.trunc() as u64 as i64);
                }
                Operator::F32ConvertI32S => {
                    let n = stack.pop_i32()?;
                    stack.push(n as f32);
                }
                Operator::F32ConvertI32U => {
                    let n = stack.pop_i32()?;
                    stack.push(n as u32 as f32);
                }
                Operator::F32ConvertI64S => {
                    let n = stack.pop_i64()?;
                    stack.push(n as f64);
                }
                Operator::F32ConvertI64U => {
                    let n = stack.pop_i64()?;
                    stack.push(n as u64 as f64);
                }
                Operator::F32DemoteF64 => {
                    let n = stack.pop_f64()?;
                    stack.push(n as f32);
                }
                Operator::F64ConvertI32S => {
                    let n = stack.pop_i32()?;
                    stack.push(n as f64);
                }
                Operator::F64ConvertI32U => {
                    let n = stack.pop_i32()?;
                    stack.push(n as u32 as f64);
                }
                Operator::F64ConvertI64S => {
                    let n = stack.pop_i64()?;
                    stack.push(n as f64);
                }
                Operator::F64ConvertI64U => {
                    let n = stack.pop_i64()?;
                    stack.push(n as u64 as f64);
                }
                Operator::F64PromoteF32 => {
                    let n = stack.pop_f32()?;
                    stack.push(n as f64);
                }
                Operator::I32ReinterpretF32 => {
                    let n = stack.pop_f32()?;
                    stack.push(n.to_bits() as i32);
                }
                Operator::I64ReinterpretF64 => {
                    let n = stack.pop_f64()?;
                    stack.push(n.to_bits() as i64);
                }
                Operator::F32ReinterpretI32 => {
                    let n = stack.pop_i32()?;
                    stack.push(f32::from_bits(n as u32));
                }
                Operator::F64ReinterpretI64 => {
                    let n = stack.pop_i64()?;
                    stack.push(f64::from_bits(n as u64));
                }
                // Operator::StructNew { .. } => {}
                // Operator::StructNewDefault { .. } => {}
                // Operator::StructGet { .. } => {}
                // Operator::StructGetS { .. } => {}
                // Operator::StructGetU { .. } => {}
                // Operator::StructSet { .. } => {}
                // Operator::ArrayNew { .. } => {}
                // Operator::ArrayNewDefault { .. } => {}
                // Operator::ArrayNewFixed { .. } => {}
                // Operator::ArrayNewData { .. } => {}
                // Operator::ArrayNewElem { .. } => {}
                // Operator::ArrayGet { .. } => {}
                // Operator::ArrayGetS { .. } => {}
                // Operator::ArrayGetU { .. } => {}
                // Operator::ArraySet { .. } => {}
                // Operator::ArrayLen => {}
                // Operator::ArrayFill { .. } => {}
                // Operator::ArrayCopy { .. } => {}
                // Operator::ArrayInitData { .. } => {}
                // Operator::ArrayInitElem { .. } => {}
                // Operator::RefTestNonNull { .. } => {}
                // Operator::RefTestNullable { .. } => {}
                // Operator::RefCastNonNull { .. } => {}
                // Operator::RefCastNullable { .. } => {}
                // Operator::BrOnCast { .. } => {}
                // Operator::BrOnCastFail { .. } => {}
                // Operator::AnyConvertExtern => {}
                // Operator::ExternConvertAny => {}
                // Operator::RefI31 => {}
                // Operator::I31GetS => {}
                // Operator::I31GetU => {}
                // Operator::I32TruncSatF32S => {}
                // Operator::I32TruncSatF32U => {}
                // Operator::I32TruncSatF64S => {}
                // Operator::I32TruncSatF64U => {}
                // Operator::I64TruncSatF32S => {}
                // Operator::I64TruncSatF32U => {}
                // Operator::I64TruncSatF64S => {}
                // Operator::I64TruncSatF64U => {}
                // Operator::MemoryInit { .. } => {}
                // Operator::DataDrop { .. } => {}
                // Operator::MemoryCopy { .. } => {}
                // Operator::MemoryFill { .. } => {}
                // Operator::TableInit { .. } => {}
                // Operator::ElemDrop { .. } => {}
                // Operator::TableCopy { .. } => {}
                // Operator::TableFill { .. } => {}
                // Operator::TableGet { .. } => {}
                // Operator::TableSet { .. } => {}
                // Operator::TableGrow { .. } => {}
                // Operator::TableSize { .. } => {}
                // Operator::MemoryDiscard { .. } => {}
                // Operator::MemoryAtomicNotify { .. } => {}
                // Operator::MemoryAtomicWait32 { .. } => {}
                // Operator::MemoryAtomicWait64 { .. } => {}
                // Operator::AtomicFence => {}
                // Operator::CallRef { .. } => {}
                // Operator::ReturnCallRef { .. } => {}
                // Operator::RefAsNonNull => {}
                // Operator::BrOnNull { .. } => {}
                Operator::BrOnNonNull { .. } => {}
                _ => {
                    bail!(RuntimeError::UnsupportedOp(format!("{:?}", op)));
                }
            }

            match next {
                None => {
                    break;
                }
                Some(i) => {
                    index = i;
                }
            }

            // println!("{:<70} {:?}", format!("{:?}", op), stack);
        }

        Ok(())
    }
}