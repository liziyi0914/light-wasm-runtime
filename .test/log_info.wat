(module $demo_wasm-121eba6f707d9ac0.wasm
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32 i32)))
  (type (;2;) (func))
  (import "env" "memory" (memory (;0;) 17))
  (import "mc_helmet" "log_info" (func $_ZN9demo_wasm9mc_helmet3sys8log_info17h090be927d213f8ceE (type 0)))
  (func $get_skin (type 1) (param i32 i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (func $main (type 2)
    i32.const 1048576
    i32.const 11
    call $_ZN9demo_wasm9mc_helmet3sys8log_info17h090be927d213f8ceE)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1048587))
  (global (;2;) i32 (i32.const 1048592))
  (export "get_skin" (func $get_skin))
  (export "main" (func $main))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data $.rodata (i32.const 1048576) "hello world"))