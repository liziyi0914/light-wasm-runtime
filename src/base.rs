use wasmparser::ValType;

#[allow(dead_code)]
#[derive(Debug, Clone)]
pub enum Val {
    I32(i32),
    I64(i64),
    F32(f32),
    F64(f64),
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

    pub fn is_type(&self, typ: ValType) -> bool {
        match self {
            Val::I32(_) => {
                typ == ValType::I32
            }
            Val::I64(_) => {
                typ == ValType::I64
            }
            Val::F32(_) => {
                typ == ValType::F32
            }
            Val::F64(_) => {
                typ == ValType::F64
            }
        }
    }

    pub fn default_value(typ: ValType) -> Self {
        match typ {
            ValType::I32 => {
                Val::I32(0)
            }
            ValType::I64 => {
                Val::I64(0)
            }
            ValType::F32 => {
                Val::F32(0.0)
            }
            ValType::F64 => {
                Val::F64(0.0)
            }
            _ => {
                Val::I32(0)
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