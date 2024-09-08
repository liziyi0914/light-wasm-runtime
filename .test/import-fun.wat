(module $demo_wasm-c21dc58edb7c674e.wasm
  (type (;0;) (func (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i64)))
  (type (;4;) (func (param i64 i64) (result i64)))
  (type (;5;) (func (param i64 i64)))
  (import "env" "__main_void" (func $__main_void (type 0)))
  (import "env" "__wasm_call_dtors" (func $__wasm_call_dtors (type 1)))
  (import "env" "__wasi_proc_exit" (func $__wasi_proc_exit (type 2)))
  (import "env" "print_num" (func $print_num (type 3)))
  (func $__wasm_call_ctors (type 1))
  (func $_start (type 1)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        global.get $GOT.data.internal.__memory_base
        i32.const 1048576
        i32.add
        i32.load
        br_if 0 (;@2;)
        global.get $GOT.data.internal.__memory_base
        i32.const 1048576
        i32.add
        i32.const 1
        i32.store
        call $__wasm_call_ctors
        call $__main_void
        local.set 0
        call $__wasm_call_dtors
        local.get 0
        br_if 1 (;@1;)
        return
      end
      unreachable
      unreachable
    end
    local.get 0
    call $__wasi_proc_exit
    unreachable)
  (func $add (type 4) (param i64 i64) (result i64)
    local.get 1
    local.get 0
    i64.add)
  (func $work (type 5) (param i64 i64)
    local.get 0
    local.get 1
    call $add
    call $print_num)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (global $GOT.data.internal.__memory_base i32 (i32.const 0))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (export "add" (func $add))
  (export "work" (func $work)))
