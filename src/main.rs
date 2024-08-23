mod instance;
mod module;

use crate::instance::{ImportDef, ImportItem, Instance, Val};
use crate::module::Module;

fn main() {
    // parse_wasm(include_bytes!("../.test/hello_world.wasm"));
    // run(include_bytes!("../.test/add.wasm"), "add", vec![Val::I32(1), Val::I32(2)]).unwrap();
    // run(include_bytes!("../.test/call-function.wasm"), "work", vec![Val::I64(2), Val::I64(3), Val::I64(3)]).unwrap();
    run(include_bytes!("../.test/import-fun.wasm"), "work", vec![Val::I64(2), Val::I64(3)]).unwrap();
    // parse_wasm(include_bytes!("../.test/call-function.wasm"));
    // parse_wasm(include_bytes!("../.test/import.wasm"));
}


fn run(data: &'static [u8], func: &'static str, args: Vec<Val>) -> anyhow::Result<()> {
    let module = Module::parse(data)?;

    let instance = Instance::new(&module, vec![
        ImportDef {
            module: "env".to_string(),
            name: "print_num".to_string(),
            item: ImportItem::Function(Box::new(|args| {
                println!("print_num: {:?}", args);
                Ok(vec![])
            })),
        },
    ]);

    let result = instance.call(func, args);

    println!("result: {:?}", result);

    Ok(())
}