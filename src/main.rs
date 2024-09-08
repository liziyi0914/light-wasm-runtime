extern crate core;

use crate::base::Val;
use crate::instance::{ImportDef, Instance};
use crate::module::Module;

mod instance;
mod module;
mod base;
mod machine;

fn main() {
}

#[allow(unused)]
fn run(data: &'static [u8], func: &'static str, args: Vec<Val>, imports: &Vec<ImportDef>) -> anyhow::Result<Vec<Val>> {
    let module = Module::parse(data)?;

    let instance = Instance::new(&module, imports)?;

    let result = instance.call(func, args);

    println!("result: {:?}", result);

    result
}

#[test]
fn test_esp32() {
    run(
        include_bytes!("../.test/esp32.wasm"),
        "main",
        vec![],
        &vec![
            ImportDef::function("env", "helmet_set_led", |args| {
                let n = args.get(0).unwrap().to_i32().unwrap() as usize;
                let mut leds = [0u8].repeat(3 * n);
                leds.extend(vec![255u8, 0u8, 0u8]);
                println!("set leds: {:?}", leds);
                Ok(vec![])
            }),
            ImportDef::function("env", "helmet_sleep", |args| {
                let n = args.get(0).unwrap().to_i64().unwrap() as u64;
                println!("sleep: {:?}", n);
                Ok(vec![])
            }),
        ],
    ).unwrap();
    // assert_eq!(ret[0].to_i64().unwrap(), 13);
}

#[test]
fn test_fib() {
    run(
        include_bytes!("../.test/fib.wasm"),
        "fib",
        vec![Val::I32(6)],
        &vec![],
    ).unwrap();
    // assert_eq!(ret[0].to_i64().unwrap(), 13);
}

#[test]
fn test_fac() {
    run(
        include_bytes!("../.test/fac.wasm"),
        "fac",
        vec![Val::F64(5f64)],
        &vec![],
    ).unwrap();
    // assert_eq!(ret[0].to_i64().unwrap(), 13);
}

#[test]
fn test_sign_ext() {
    assert_eq!(
        0,
        run(
            include_bytes!("../.test/sign-ext.wasm"),
            "f",
            vec![Val::I32(0)],
            &vec![],
        ).unwrap()[0].to_i32().unwrap()
    );
    assert_eq!(
        127,
        run(
            include_bytes!("../.test/sign-ext.wasm"),
            "f",
            vec![Val::I32(127)],
            &vec![],
        ).unwrap()[0].to_i32().unwrap()
    );
    assert_eq!(
        -128,
        run(
            include_bytes!("../.test/sign-ext.wasm"),
            "f",
            vec![Val::I32(128)],
            &vec![],
        ).unwrap()[0].to_i32().unwrap()
    );
    assert_eq!(
        -1,
        run(
            include_bytes!("../.test/sign-ext.wasm"),
            "f",
            vec![Val::I32(255)],
            &vec![],
        ).unwrap()[0].to_i32().unwrap()
    );
}

#[test]
fn test_br_table() {
    run(
        include_bytes!("../.test/br-table.wasm"),
        "work",
        vec![Val::I32(10)],
        &vec![],
    ).unwrap();
}

#[test]
fn test_swap() {
    let ret = run(
        include_bytes!("../.test/swap.wasm"),
        "reverseSub",
        vec![Val::I32(10), Val::I32(3)],
        &vec![],
    ).unwrap();
    assert_eq!(ret[0].to_i32().unwrap(), -7);
}

#[test]
fn test_call_function() {
    run(
        include_bytes!("../.test/call-function.wasm"),
        "work",
        vec![Val::I64(2), Val::I64(3), Val::I64(3)],
        &vec![
            ImportDef::function(
                "env",
                "print_num",
                |args| {
                    println!("print_num: {:?}", args);
                    Ok(vec![])
                },
            ),
        ],
    ).unwrap();
}

#[test]
fn test_memory() {
    use std::sync::Arc;
    use crate::instance::MemoryDef;

    let memory = Arc::new(MemoryDef::new(1));

    let mem = memory.clone();
    run(
        include_bytes!("../.test/test-memory.wasm"),
        "writeHi",
        vec![],
        &vec![
            ImportDef::function(
                "console",
                "log",
                move |args| {
                    let memory = mem.clone();

                    // println!("args: {:?}", args);

                    let offset = args[0].to_i32().unwrap() as usize;
                    let len = args[1].to_i32().unwrap() as usize;

                    let data = memory.read(offset, len)?;

                    println!("{}", String::from_utf8_lossy(data.as_slice()));

                    Ok(vec![])
                },
            ),
            ImportDef::memory("js", "mem", &memory),
        ],
    ).unwrap();
}

#[test]
fn test_log_info() {
    use std::sync::Arc;
    use crate::instance::MemoryDef;

    let memory = Arc::new(MemoryDef::new(1));

    let mem = memory.clone();
    run(
        include_bytes!("../.test/log_info_string.wasm"),
        "main",
        vec![],
        &vec![
            ImportDef::function(
                "mc_helmet",
                "log_info",
                move |args| {
                    let memory = mem.clone();

                    // println!("args: {:?}", args);

                    let offset = args[0].to_i32().unwrap() as usize;
                    let len = args[1].to_i32().unwrap() as usize;

                    let data = memory.read(offset, len)?;

                    println!("{}", String::from_utf8_lossy(data.as_slice()));

                    Ok(vec![])
                },
            ),
            ImportDef::memory("env", "memory", &memory),
        ],
    ).unwrap();
}

#[test]
fn test_table() {
    let ret = run(
        include_bytes!("../.test/table.wasm"),
        "callByIndex",
        vec![Val::I32(0)],
        &vec![],
    ).unwrap();
    assert_eq!(ret[0].to_i32().unwrap(), 42);
    let ret = run(
        include_bytes!("../.test/table.wasm"),
        "callByIndex",
        vec![Val::I32(1)],
        &vec![],
    ).unwrap();
    assert_eq!(ret[0].to_i32().unwrap(), 13);
}