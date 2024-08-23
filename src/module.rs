use std::collections::HashMap;
use wasmparser::{CompositeInnerType, Export, Global, Import, MemoryType, Operator, Parser, Payload, RecGroup, Table, TypeRef, ValType};
use anyhow::{anyhow, Result};

#[allow(dead_code)]
#[derive(Debug, Default, Clone)]
pub struct FunctionRef {
    pub type_ref: u32,
    pub index: u32,
    pub import: bool,
}

#[derive(Debug, Default, Clone)]
pub struct Module<'a> {
    pub types: Vec<RecGroup>,
    pub imports: Vec<Import<'a>>,
    pub exports: Vec<Export<'a>>,
    pub functions: Vec<FunctionRef>,
    pub codes: HashMap<u32, Vec<Operator<'a>>>,
    pub tables: Vec<Table<'a>>,
    pub memories: Vec<MemoryType>,
    pub globals: Vec<Global<'a>>,
}

impl <'a> Module<'a> {
    pub fn new() -> Self {
        Module::default()
    }

    pub fn parse(data: &'static [u8]) -> Result<Module> {
        let parser = Parser::default();

        let mut module = Module::new();

        let mut code_entry_index = 0;
        let mut func_index = 0;
        let mut import_index = 0;

        for payload_res in parser.parse_all(data) {
            if payload_res.is_err() {
                continue;
            }

            let payload = payload_res.unwrap();

            // println!("section: {:?}", payload);

            match payload {
                Payload::Version { .. } => {
                    // TODO
                }
                Payload::TypeSection(section) => {
                    // Type
                    for res in section.into_iter_with_offsets() {
                        if let Ok((_, type_ref)) = res {
                            module.types.push(type_ref);
                        }
                    }
                }
                Payload::ImportSection(section) => {
                    // Import
                    for res in section.into_iter_with_offsets() {
                        if let Ok((_, import)) = res {
                            module.imports.push(import);

                            if let TypeRef::Func(type_index) = import.ty {
                                module.functions.push(FunctionRef { type_ref: type_index, index: import_index, import: true });
                                func_index += 1;
                                code_entry_index += 1;
                            }

                            import_index += 1;
                        }
                    }
                }
                Payload::FunctionSection(section) => {
                    // Function
                    for res in section.into_iter_with_offsets() {
                        if let Ok((_, type_index)) = res {
                            module.functions.push(FunctionRef { type_ref: type_index, index: func_index, import: false });
                            func_index += 1;
                        }
                    }
                }
                Payload::TableSection(section) => {
                    // Table
                    for res in section.into_iter_with_offsets() {
                        if let Ok((_, table)) = res {
                            module.tables.push(table);
                        }
                    }
                }
                Payload::MemorySection(section) => {
                    // Memory
                    for res in section.into_iter_with_offsets() {
                        if let Ok((_, memory)) = res {
                            module.memories.push(memory);
                        }
                    }
                }
                Payload::TagSection(..) => {}
                Payload::GlobalSection(section) => {
                    // Global
                    for res in section.into_iter_with_offsets() {
                        if let Ok((_, global)) = res {
                            module.globals.push(global);
                        }
                    }
                }
                Payload::ExportSection(section) => {
                    // Export
                    for res in section.into_iter_with_offsets() {
                        if let Ok((_, export)) = res {
                            module.exports.push(export);
                        }
                    }
                }
                Payload::StartSection { .. } => {}
                Payload::ElementSection(..) => {}
                Payload::DataCountSection { .. } => {}
                Payload::DataSection(..) => {
                    // TODO
                }
                Payload::CodeSectionStart { .. } => {
                    // TODO
                }
                Payload::CodeSectionEntry(section) => {
                    // Code
                    if let Ok(reader) = section.get_operators_reader() {
                        for res in reader.into_iter_with_offsets() {
                            if let Ok((op, _)) = res {
                                // println!("op: {:?}", op);
                                if module.codes.contains_key(&code_entry_index) {
                                    module.codes.get_mut(&code_entry_index).unwrap().push(op);
                                } else {
                                    module.codes.insert(code_entry_index, vec![op]);
                                }
                            }
                        }
                        code_entry_index += 1;
                    }
                }
                Payload::ModuleSection { .. } => {}
                Payload::InstanceSection(..) => {}
                Payload::CoreTypeSection(..) => {}
                Payload::ComponentSection { .. } => {}
                Payload::ComponentInstanceSection(..) => {}
                Payload::ComponentAliasSection(..) => {}
                Payload::ComponentTypeSection(..) => {}
                Payload::ComponentCanonicalSection(..) => {}
                Payload::ComponentStartSection { .. } => {}
                Payload::ComponentImportSection(..) => {}
                Payload::ComponentExportSection(..) => {}
                Payload::CustomSection(..) => {
                    // TODO
                }
                Payload::UnknownSection { .. } => {}
                Payload::End(_) => {
                    // TODO
                }
            }
        }

        Ok(module)
    }

    pub fn get_function_info(&self, index: u32) -> Result<(&[ValType], &[ValType], bool, u32)> {
        let params: &[ValType];
        let results: &[ValType];
        let func_type = self.functions
            .get(index as usize)
            .ok_or(anyhow!("function not found"))?;
        let func_type_index = func_type.type_ref;
        let is_import = func_type.import;
        let type_group = self.types
            .get(func_type_index as usize)
            .ok_or(anyhow!("type not found"))?;
        let types: Vec<_> = type_group.types().collect();
        if types.len() < 1 {
            return Err(anyhow!("function signature not found"));
        }
        let typ = &types[0].composite_type.inner;

        return if let CompositeInnerType::Func(fun) = typ {
            params = fun.params();
            results = fun.results();
            Ok((params, results, is_import, func_type.index))
        } else {
            Err(anyhow!("function signature not found"))
        }
    }
}
