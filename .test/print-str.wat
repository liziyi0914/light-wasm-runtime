(module $demo_wasm-730c3346e81f39f9.wasm
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (result i32)))
  (type (;5;) (func))
  (type (;6;) (func (param i32)))
  (type (;7;) (func (param i64)))
  (type (;8;) (func (param i64 i64) (result i64)))
  (type (;9;) (func (param i64 i64)))
  (type (;10;) (func (param i32 i32)))
  (type (;11;) (func (param i32 i32 i32)))
  (type (;12;) (func (param i64 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (import "env" "__main_void" (func $__main_void (type 4)))
  (import "env" "__wasm_call_dtors" (func $__wasm_call_dtors (type 5)))
  (import "env" "__wasi_proc_exit" (func $__wasi_proc_exit (type 6)))
  (import "env" "print_num" (func $print_num (type 7)))
  (import "env" "print" (func $print (type 6)))
  (import "env" "memcpy" (func $memcpy (type 0)))
  (func $__wasm_call_ctors (type 5))
  (func $_start (type 5)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        global.get $GOT.data.internal.__memory_base
        i32.const 1048816
        i32.add
        i32.load
        br_if 0 (;@2;)
        global.get $GOT.data.internal.__memory_base
        i32.const 1048816
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
  (func $add (type 8) (param i64 i64) (result i64)
    local.get 1
    local.get 0
    i64.add)
  (func $work (type 9) (param i64 i64)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    local.get 1
    call $add
    local.tee 1
    i64.store offset=40
    local.get 1
    call $print_num
    i32.const 0
    i32.load8_u offset=1049848
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 5
          call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hc2f65ef655f45029E
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 4
          i32.add
          i32.const 0
          i32.load8_u offset=1048580
          i32.store8
          local.get 3
          i32.const 0
          i32.load offset=1048576 align=1
          i32.store align=1
          local.get 2
          i32.const 64
          i32.add
          i32.const 8
          i32.add
          i32.const 5
          i32.store
          local.get 2
          i32.const 24
          i32.add
          i32.const 8
          i32.add
          i32.const 5
          i32.store
          local.get 2
          local.get 3
          i32.store offset=68
          local.get 2
          i32.const 5
          i32.store offset=64
          local.get 2
          local.get 2
          i64.load offset=64 align=4
          i64.store offset=24
          local.get 2
          i32.const 24
          i32.add
          call $print
          local.get 2
          i32.const 1
          i32.store offset=68
          local.get 2
          i32.const 1048584
          i32.store offset=64
          local.get 2
          i64.const 1
          i64.store offset=76 align=4
          local.get 2
          i32.const 1
          i32.store offset=92
          i32.const 0
          i32.load8_u offset=1049848
          drop
          local.get 2
          local.get 2
          i32.const 88
          i32.add
          i32.store offset=72
          local.get 2
          local.get 2
          i32.const 40
          i32.add
          i32.store offset=88
          i32.const 6
          call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hc2f65ef655f45029E
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          i32.const 0
          i32.store offset=104
          local.get 2
          local.get 3
          i32.store offset=100
          local.get 2
          i32.const 6
          i32.store offset=96
          local.get 2
          i32.const 96
          i32.add
          local.get 2
          i32.const 64
          i32.add
          call $_ZN4core3fmt5write17hbfdffefff34f5cf8E
          br_if 2 (;@1;)
          local.get 2
          i32.const 48
          i32.add
          i32.const 8
          i32.add
          local.get 2
          i32.const 96
          i32.add
          i32.const 8
          i32.add
          i32.load
          local.tee 3
          i32.store
          local.get 2
          i32.const 8
          i32.add
          i32.const 8
          i32.add
          local.get 3
          i32.store
          local.get 2
          local.get 2
          i64.load offset=96 align=4
          local.tee 1
          i64.store offset=48
          local.get 2
          local.get 1
          i64.store offset=8
          local.get 2
          i32.const 8
          i32.add
          call $print
          local.get 2
          i32.const 112
          i32.add
          global.set $__stack_pointer
          return
        end
        i32.const 5
        call $__rust_alloc_error_handler
        unreachable
      end
      i32.const 6
      call $__rust_alloc_error_handler
      unreachable
    end
    local.get 2
    i32.const 111
    i32.add
    call $_ZN4core6result13unwrap_failed17had3752ac9f022e32E
    unreachable)
  (func $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hc2f65ef655f45029E (type 3) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.add
        i32.const 2
        i32.shr_u
        local.tee 0
        i32.const -1
        i32.add
        local.tee 2
        i32.const 256
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 0
        i32.load offset=1049844
        i32.store offset=8
        local.get 0
        i32.const 1
        local.get 1
        i32.const 8
        i32.add
        i32.const 1048816
        i32.const 2
        i32.const 3
        call $_ZN9wee_alloc17alloc_with_refill17hd2da1aa5c7d6221cE
        local.set 0
        i32.const 0
        local.get 1
        i32.load offset=8
        i32.store offset=1049844
        br 1 (;@1;)
      end
      local.get 1
      i32.const 1049844
      i32.store offset=4
      local.get 1
      local.get 2
      i32.const 2
      i32.shl
      i32.const 1048820
      i32.add
      local.tee 2
      i32.load
      i32.store offset=12
      local.get 0
      i32.const 1
      local.get 1
      i32.const 12
      i32.add
      local.get 1
      i32.const 4
      i32.add
      i32.const 4
      i32.const 5
      call $_ZN9wee_alloc17alloc_with_refill17hd2da1aa5c7d6221cE
      local.set 0
      local.get 2
      local.get 1
      i32.load offset=12
      i32.store
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h92fbeb98db7ebf91E (type 1) (param i32 i32) (result i32)
    local.get 0
    i64.load
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417h3c5e505d6883ff36E)
  (func $_ZN4core3fmt5write17hbfdffefff34f5cf8E (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 3
    i32.store8 offset=44
    local.get 2
    i32.const 32
    i32.store offset=28
    i32.const 0
    local.set 3
    local.get 2
    i32.const 0
    i32.store offset=40
    local.get 2
    i32.const 1048592
    i32.store offset=36
    local.get 2
    local.get 0
    i32.store offset=32
    local.get 2
    i32.const 0
    i32.store offset=20
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=16
              local.tee 4
              br_if 0 (;@5;)
              local.get 1
              i32.load offset=12
              local.tee 5
              i32.eqz
              br_if 1 (;@4;)
              local.get 1
              i32.load offset=8
              local.set 0
              local.get 5
              i32.const 3
              i32.shl
              local.set 6
              local.get 5
              i32.const -1
              i32.add
              i32.const 536870911
              i32.and
              i32.const 1
              i32.add
              local.set 3
              local.get 1
              i32.load
              local.set 5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 5
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 7
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 2
                  i32.load offset=32
                  local.get 5
                  i32.load
                  local.get 7
                  local.get 2
                  i32.load offset=36
                  i32.load offset=12
                  call_indirect (type 0)
                  br_if 4 (;@3;)
                end
                local.get 0
                i32.load
                local.get 2
                i32.const 12
                i32.add
                local.get 0
                i32.load offset=4
                call_indirect (type 1)
                br_if 3 (;@3;)
                local.get 0
                i32.const 8
                i32.add
                local.set 0
                local.get 5
                i32.const 8
                i32.add
                local.set 5
                local.get 6
                i32.const -8
                i32.add
                local.tee 6
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            local.get 1
            i32.load offset=20
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 5
            i32.shl
            local.set 8
            local.get 0
            i32.const -1
            i32.add
            i32.const 134217727
            i32.and
            i32.const 1
            i32.add
            local.set 3
            local.get 1
            i32.load offset=8
            local.set 9
            local.get 1
            i32.load
            local.set 5
            i32.const 0
            local.set 6
            loop  ;; label = @5
              block  ;; label = @6
                local.get 5
                i32.const 4
                i32.add
                i32.load
                local.tee 0
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                i32.load offset=32
                local.get 5
                i32.load
                local.get 0
                local.get 2
                i32.load offset=36
                i32.load offset=12
                call_indirect (type 0)
                br_if 3 (;@3;)
              end
              local.get 2
              local.get 4
              local.get 6
              i32.add
              local.tee 0
              i32.const 16
              i32.add
              i32.load
              i32.store offset=28
              local.get 2
              local.get 0
              i32.const 28
              i32.add
              i32.load8_u
              i32.store8 offset=44
              local.get 2
              local.get 0
              i32.const 24
              i32.add
              i32.load
              i32.store offset=40
              local.get 0
              i32.const 12
              i32.add
              i32.load
              local.set 7
              i32.const 0
              local.set 10
              i32.const 0
              local.set 11
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.const 8
                    i32.add
                    i32.load
                    br_table 1 (;@7;) 0 (;@8;) 2 (;@6;) 1 (;@7;)
                  end
                  local.get 7
                  i32.const 3
                  i32.shl
                  local.set 12
                  i32.const 0
                  local.set 11
                  local.get 9
                  local.get 12
                  i32.add
                  local.tee 12
                  i32.load offset=4
                  br_if 1 (;@6;)
                  local.get 12
                  i32.load
                  local.set 7
                end
                i32.const 1
                local.set 11
              end
              local.get 2
              local.get 7
              i32.store offset=16
              local.get 2
              local.get 11
              i32.store offset=12
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.set 7
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load
                    br_table 1 (;@7;) 0 (;@8;) 2 (;@6;) 1 (;@7;)
                  end
                  local.get 7
                  i32.const 3
                  i32.shl
                  local.set 11
                  local.get 9
                  local.get 11
                  i32.add
                  local.tee 11
                  i32.load offset=4
                  br_if 1 (;@6;)
                  local.get 11
                  i32.load
                  local.set 7
                end
                i32.const 1
                local.set 10
              end
              local.get 2
              local.get 7
              i32.store offset=24
              local.get 2
              local.get 10
              i32.store offset=20
              local.get 9
              local.get 0
              i32.const 20
              i32.add
              i32.load
              i32.const 3
              i32.shl
              i32.add
              local.tee 0
              i32.load
              local.get 2
              i32.const 12
              i32.add
              local.get 0
              i32.load offset=4
              call_indirect (type 1)
              br_if 2 (;@3;)
              local.get 5
              i32.const 8
              i32.add
              local.set 5
              local.get 8
              local.get 6
              i32.const 32
              i32.add
              local.tee 6
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 3
          local.get 1
          i32.load offset=4
          i32.ge_u
          br_if 1 (;@2;)
          local.get 2
          i32.load offset=32
          local.get 1
          i32.load
          local.get 3
          i32.const 3
          i32.shl
          i32.add
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=4
          local.get 2
          i32.load offset=36
          i32.load offset=12
          call_indirect (type 0)
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 1
        local.set 0
        br 1 (;@1;)
      end
      i32.const 0
      local.set 0
    end
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $__rust_alloc_error_handler (type 6) (param i32)
    local.get 0
    call $__rdl_oom
    unreachable)
  (func $_ZN4core6result13unwrap_failed17had3752ac9f022e32E (type 6) (param i32)
    call $_ZN4core9panicking18panic_nounwind_fmt17hb636fdb33a93afa7E
    unreachable)
  (func $__rdl_oom (type 6) (param i32)
    call $_ZN4core9panicking18panic_nounwind_fmt17hb636fdb33a93afa7E
    unreachable)
  (func $_ZN5alloc7raw_vec12handle_error17h7e30ce1f05b9350bE (type 10) (param i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $_ZN5alloc7raw_vec17capacity_overflow17ha844c72da6f68b05E
      unreachable
    end
    local.get 1
    call $__rust_alloc_error_handler
    unreachable)
  (func $_ZN5alloc7raw_vec17capacity_overflow17ha844c72da6f68b05E (type 5)
    call $_ZN4core9panicking18panic_nounwind_fmt17hb636fdb33a93afa7E
    unreachable)
  (func $_ZN4core9panicking18panic_nounwind_fmt17hb636fdb33a93afa7E (type 5)
    loop  ;; label = @1
      br 0 (;@1;)
    end)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h17f8ec6cdd5d9d15E (type 11) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.add
      local.tee 2
      local.get 1
      i32.ge_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call $_ZN5alloc7raw_vec12handle_error17h7e30ce1f05b9350bE
      unreachable
    end
    i32.const 1
    local.set 4
    local.get 0
    i32.load
    local.tee 5
    i32.const 1
    i32.shl
    local.tee 1
    local.get 2
    local.get 1
    local.get 2
    i32.gt_u
    select
    local.tee 1
    i32.const 8
    local.get 1
    i32.const 8
    i32.gt_u
    select
    local.tee 1
    i32.const -1
    i32.xor
    i32.const 31
    i32.shr_u
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      local.get 5
      i32.store offset=28
      local.get 3
      local.get 0
      i32.load offset=4
      i32.store offset=20
    end
    local.get 3
    local.get 4
    i32.store offset=24
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    local.get 1
    local.get 3
    i32.const 20
    i32.add
    call $_ZN5alloc7raw_vec11finish_grow17hac99f93d79e8a118E
    block  ;; label = @1
      local.get 3
      i32.load offset=8
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=16
      call $_ZN5alloc7raw_vec12handle_error17h7e30ce1f05b9350bE
      unreachable
    end
    local.get 3
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN5alloc7raw_vec11finish_grow17hac99f93d79e8a118E (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    i32.const 1
    local.set 4
    i32.const 0
    local.set 5
    i32.const 4
    local.set 6
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.load offset=4
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load offset=8
              local.tee 5
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load
              local.set 6
              local.get 2
              call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hc2f65ef655f45029E
              local.tee 4
              i32.eqz
              br_if 2 (;@3;)
              local.get 4
              local.get 6
              local.get 5
              call $memcpy
              drop
              local.get 6
              local.get 5
              call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h6b81f36dd6cb3679E
              br 1 (;@4;)
            end
            i32.const 0
            i32.load8_u offset=1049848
            drop
            local.get 2
            call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hc2f65ef655f45029E
            local.tee 4
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 4
          i32.store offset=4
          i32.const 0
          local.set 4
          br 1 (;@2;)
        end
        i32.const 1
        local.set 4
        local.get 0
        i32.const 1
        i32.store offset=4
      end
      i32.const 8
      local.set 6
      local.get 2
      local.set 5
    end
    local.get 0
    local.get 6
    i32.add
    local.get 5
    i32.store
    local.get 0
    local.get 4
    i32.store)
  (func $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h6b81f36dd6cb3679E (type 10) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 3
        i32.add
        i32.const 2
        i32.shr_u
        i32.const -1
        i32.add
        local.tee 1
        i32.const 256
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 0
        i32.load offset=1049844
        i32.store offset=8
        local.get 0
        local.get 2
        i32.const 8
        i32.add
        i32.const 1048816
        i32.const 6
        call $_ZN9wee_alloc8WeeAlloc12dealloc_impl28_$u7b$$u7b$closure$u7d$$u7d$17h2b1a6f25da788f28E
        i32.const 0
        local.get 2
        i32.load offset=8
        i32.store offset=1049844
        br 1 (;@1;)
      end
      local.get 2
      i32.const 1049844
      i32.store offset=4
      local.get 2
      local.get 1
      i32.const 2
      i32.shl
      i32.const 1048820
      i32.add
      local.tee 1
      i32.load
      i32.store offset=12
      local.get 0
      local.get 2
      i32.const 12
      i32.add
      local.get 2
      i32.const 4
      i32.add
      i32.const 7
      call $_ZN9wee_alloc8WeeAlloc12dealloc_impl28_$u7b$$u7b$closure$u7d$$u7d$17h2b1a6f25da788f28E
      local.get 1
      local.get 2
      i32.load offset=12
      i32.store
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb214d1d8443bd4bfE (type 6) (param i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 2
      i32.const 1
      i32.add
      local.tee 3
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call $_ZN5alloc7raw_vec12handle_error17h7e30ce1f05b9350bE
      unreachable
    end
    local.get 2
    i32.const 1
    i32.shl
    local.tee 4
    local.get 3
    local.get 4
    local.get 3
    i32.gt_u
    select
    local.tee 3
    i32.const 8
    local.get 3
    i32.const 8
    i32.gt_u
    select
    local.tee 3
    i32.const -1
    i32.xor
    i32.const 31
    i32.shr_u
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      i32.store offset=28
      local.get 1
      local.get 0
      i32.load offset=4
      i32.store offset=20
      i32.const 1
      local.set 2
    end
    local.get 1
    local.get 2
    i32.store offset=24
    local.get 1
    i32.const 8
    i32.add
    local.get 4
    local.get 3
    local.get 1
    i32.const 20
    i32.add
    call $_ZN5alloc7raw_vec11finish_grow17hac99f93d79e8a118E
    block  ;; label = @1
      local.get 1
      i32.load offset=8
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.get 1
      i32.load offset=16
      call $_ZN5alloc7raw_vec12handle_error17h7e30ce1f05b9350bE
      unreachable
    end
    local.get 1
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hee8e15b778ffa808E (type 6) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 1
      call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h6b81f36dd6cb3679E
    end)
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17hd7cc20b68bb95e6aE (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.sub
      local.get 2
      i32.ge_u
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 2
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h17f8ec6cdd5d9d15E
      local.get 0
      i32.load offset=8
      local.set 3
    end
    local.get 0
    i32.load offset=4
    local.get 3
    i32.add
    local.get 1
    local.get 2
    call $memcpy
    drop
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h4dc2a2d994a80c83E (type 1) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            i32.const 0
            i32.store offset=12
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 1
              i32.const 65536
              i32.ge_u
              br_if 0 (;@5;)
              local.get 2
              local.get 1
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              local.get 2
              local.get 1
              i32.const 12
              i32.shr_u
              i32.const 224
              i32.or
              i32.store8 offset=12
              local.get 2
              local.get 1
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              i32.const 3
              local.set 1
              br 3 (;@2;)
            end
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=15
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 7
            i32.and
            i32.const 240
            i32.or
            i32.store8 offset=12
            i32.const 4
            local.set 1
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 0
            i32.load offset=8
            local.tee 3
            local.get 0
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 0
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb214d1d8443bd4bfE
          end
          local.get 0
          local.get 3
          i32.const 1
          i32.add
          i32.store offset=8
          local.get 0
          i32.load offset=4
          local.get 3
          i32.add
          local.get 1
          i32.store8
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        local.set 1
      end
      block  ;; label = @2
        local.get 0
        i32.load
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.sub
        local.get 1
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        local.get 1
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h17f8ec6cdd5d9d15E
        local.get 0
        i32.load offset=8
        local.set 3
      end
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call $memcpy
      drop
      local.get 0
      local.get 3
      local.get 1
      i32.add
      i32.store offset=8
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_ZN4core3fmt5Write9write_fmt17h498efb08531c1676E (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $_ZN4core3fmt5write17hbfdffefff34f5cf8E)
  (func $_ZN4core3fmt3num3imp7fmt_u6417h3c5e505d6883ff36E (type 12) (param i64 i32) (result i32)
    (local i32 i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 39
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 10000
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 4
        br 1 (;@1;)
      end
      i32.const 39
      local.set 3
      loop  ;; label = @2
        local.get 2
        i32.const 9
        i32.add
        local.get 3
        i32.add
        local.tee 5
        i32.const -4
        i32.add
        local.get 0
        i64.const 10000
        i64.div_u
        local.tee 4
        i64.const 55536
        i64.mul
        local.get 0
        i64.add
        i32.wrap_i64
        local.tee 6
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 7
        i32.const 1
        i32.shl
        i32.const 1048616
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 5
        i32.const -2
        i32.add
        local.get 7
        i32.const -100
        i32.mul
        local.get 6
        i32.add
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1048616
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 0
        i64.const 99999999
        i64.gt_u
        local.set 5
        local.get 4
        local.set 0
        local.get 5
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 4
      i32.wrap_i64
      local.tee 5
      i32.const 99
      i32.le_u
      br_if 0 (;@1;)
      local.get 2
      i32.const 9
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 4
      i32.wrap_i64
      local.tee 6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 5
      i32.const -100
      i32.mul
      local.get 6
      i32.add
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1048616
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 10
        i32.lt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 9
        i32.add
        local.get 3
        i32.const -2
        i32.add
        local.tee 3
        i32.add
        local.get 5
        i32.const 1
        i32.shl
        i32.const 1048616
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 9
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 5
      i32.const 48
      i32.or
      i32.store8
    end
    i32.const 39
    local.get 3
    i32.sub
    local.set 8
    i32.const 1
    local.set 7
    i32.const 43
    i32.const 1114112
    local.get 1
    i32.load offset=28
    local.tee 5
    i32.const 1
    i32.and
    local.tee 6
    select
    local.set 9
    local.get 5
    i32.const 4
    i32.and
    i32.const 2
    i32.shr_u
    local.set 10
    local.get 2
    i32.const 9
    i32.add
    local.get 3
    i32.add
    local.set 11
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=20
        local.tee 3
        local.get 1
        i32.load offset=24
        local.tee 5
        local.get 9
        local.get 10
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf81d4cc4fa4dec61E
        br_if 1 (;@1;)
        local.get 3
        local.get 11
        local.get 8
        local.get 5
        i32.load offset=12
        call_indirect (type 0)
        local.set 7
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 12
        local.get 6
        local.get 8
        i32.add
        local.tee 7
        i32.gt_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 7
        local.get 1
        i32.load offset=20
        local.tee 3
        local.get 1
        i32.load offset=24
        local.tee 5
        local.get 9
        local.get 10
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf81d4cc4fa4dec61E
        br_if 1 (;@1;)
        local.get 3
        local.get 11
        local.get 8
        local.get 5
        i32.load offset=12
        call_indirect (type 0)
        local.set 7
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 5
        i32.const 8
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=16
        local.set 13
        local.get 1
        i32.const 48
        i32.store offset=16
        local.get 1
        i32.load8_u offset=32
        local.set 14
        i32.const 1
        local.set 7
        local.get 1
        i32.const 1
        i32.store8 offset=32
        local.get 1
        i32.load offset=20
        local.tee 5
        local.get 1
        i32.load offset=24
        local.tee 15
        local.get 9
        local.get 10
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf81d4cc4fa4dec61E
        br_if 1 (;@1;)
        local.get 3
        local.get 12
        i32.add
        local.get 6
        i32.sub
        i32.const -38
        i32.add
        local.set 3
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            i32.eqz
            br_if 1 (;@3;)
            local.get 5
            i32.const 48
            local.get 15
            i32.load offset=16
            call_indirect (type 1)
            i32.eqz
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 5
        local.get 11
        local.get 8
        local.get 15
        i32.load offset=12
        call_indirect (type 0)
        br_if 1 (;@1;)
        local.get 1
        local.get 14
        i32.store8 offset=32
        local.get 1
        local.get 13
        i32.store offset=16
        i32.const 0
        local.set 7
        br 1 (;@1;)
      end
      local.get 12
      local.get 7
      i32.sub
      local.set 12
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load8_u offset=32
            local.tee 3
            br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 0 (;@4;) 2 (;@2;)
          end
          local.get 12
          local.set 3
          i32.const 0
          local.set 12
          br 1 (;@2;)
        end
        local.get 12
        i32.const 1
        i32.shr_u
        local.set 3
        local.get 12
        i32.const 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set 12
      end
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      local.get 1
      i32.load offset=16
      local.set 15
      local.get 1
      i32.load offset=24
      local.set 5
      local.get 1
      i32.load offset=20
      local.set 6
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.const -1
          i32.add
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 6
          local.get 15
          local.get 5
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        local.set 7
        br 1 (;@1;)
      end
      i32.const 1
      local.set 7
      local.get 6
      local.get 5
      local.get 9
      local.get 10
      call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf81d4cc4fa4dec61E
      br_if 0 (;@1;)
      local.get 6
      local.get 11
      local.get 8
      local.get 5
      i32.load offset=12
      call_indirect (type 0)
      br_if 0 (;@1;)
      i32.const 0
      local.set 3
      loop  ;; label = @2
        block  ;; label = @3
          local.get 12
          local.get 3
          i32.ne
          br_if 0 (;@3;)
          local.get 12
          local.get 12
          i32.lt_u
          local.set 7
          br 2 (;@1;)
        end
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 6
        local.get 15
        local.get 5
        i32.load offset=16
        call_indirect (type 1)
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 3
      i32.const -1
      i32.add
      local.get 12
      i32.lt_u
      local.set 7
    end
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 7)
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf81d4cc4fa4dec61E (type 13) (param i32 i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 1114112
          i32.eq
          br_if 0 (;@3;)
          i32.const 1
          local.set 4
          local.get 0
          local.get 2
          local.get 1
          i32.load offset=16
          call_indirect (type 1)
          br_if 1 (;@2;)
        end
        local.get 3
        br_if 1 (;@1;)
        i32.const 0
        local.set 4
      end
      local.get 4
      return
    end
    local.get 0
    local.get 3
    i32.const 0
    local.get 1
    i32.load offset=12
    call_indirect (type 0))
  (func $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17h8d7a795a1d5cb40aE (type 2) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 1
    i32.load
    local.tee 5
    i32.load
    i32.store offset=12
    i32.const 1
    local.set 6
    local.get 2
    i32.const 2
    i32.add
    local.tee 1
    local.get 1
    i32.mul
    local.tee 1
    i32.const 2048
    local.get 1
    i32.const 2048
    i32.gt_u
    select
    local.tee 2
    i32.const 4
    local.get 4
    i32.const 12
    i32.add
    i32.const 1
    i32.const 2
    i32.const 3
    call $_ZN9wee_alloc17alloc_with_refill17hd2da1aa5c7d6221cE
    local.set 1
    local.get 5
    local.get 4
    i32.load offset=12
    i32.store
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i64.const 0
      i64.store offset=4 align=4
      local.get 1
      local.get 1
      local.get 2
      i32.const 2
      i32.shl
      i32.add
      i32.const 2
      i32.or
      i32.store
      i32.const 0
      local.set 6
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 6
    i32.store
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17he0f166c6e8eacd01E (type 2) (param i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 2
        i32.shl
        local.tee 2
        local.get 3
        i32.const 3
        i32.shl
        i32.const 16384
        i32.add
        local.tee 3
        local.get 2
        local.get 3
        i32.gt_u
        select
        i32.const 65543
        i32.add
        local.tee 3
        i32.const 16
        i32.shr_u
        memory.grow
        local.tee 2
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 2
      i32.const 16
      i32.shl
      local.tee 2
      i64.const 0
      i64.store offset=4 align=4
      local.get 2
      local.get 2
      local.get 3
      i32.const -65536
      i32.and
      i32.add
      i32.const 2
      i32.or
      i32.store
      i32.const 0
      local.set 3
    end
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store)
  (func $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17hb43ee149ee580236E (type 1) (param i32 i32) (result i32)
    i32.const 512)
  (func $_ZN9wee_alloc17alloc_with_refill17hd2da1aa5c7d6221cE (type 14) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      local.get 5
      call $_ZN9wee_alloc15alloc_first_fit17had0ebe688228033bE
      local.tee 7
      br_if 0 (;@1;)
      local.get 6
      i32.const 8
      i32.add
      local.get 3
      local.get 0
      local.get 1
      local.get 4
      call_indirect (type 2)
      i32.const 0
      local.set 7
      local.get 6
      i32.load offset=8
      br_if 0 (;@1;)
      local.get 6
      i32.load offset=12
      local.tee 7
      local.get 2
      i32.load
      i32.store offset=8
      local.get 2
      local.get 7
      i32.store
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      local.get 5
      call $_ZN9wee_alloc15alloc_first_fit17had0ebe688228033bE
      local.set 7
    end
    local.get 6
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 7)
  (func $_ZN9wee_alloc15alloc_first_fit17had0ebe688228033bE (type 15) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const -1
    i32.add
    local.set 5
    i32.const 0
    local.set 6
    i32.const 0
    local.get 1
    i32.sub
    local.set 7
    local.get 0
    i32.const 2
    i32.shl
    local.set 8
    local.get 2
    i32.load
    local.set 9
    loop (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 9
          i32.eqz
          br_if 0 (;@3;)
          local.get 9
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.load offset=8
                  local.tee 9
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                  local.get 1
                  i32.load
                  i32.const -4
                  i32.and
                  local.tee 10
                  local.get 1
                  i32.const 8
                  i32.add
                  local.tee 11
                  i32.sub
                  local.get 8
                  i32.lt_u
                  br_if 5 (;@2;)
                  block  ;; label = @8
                    local.get 11
                    local.get 3
                    local.get 0
                    local.get 4
                    call_indirect (type 1)
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.const 8
                    i32.add
                    local.get 10
                    local.get 8
                    i32.sub
                    local.get 7
                    i32.and
                    local.tee 9
                    i32.le_u
                    br_if 0 (;@8;)
                    local.get 11
                    i32.load
                    local.set 9
                    local.get 5
                    local.get 11
                    i32.and
                    br_if 6 (;@2;)
                    local.get 2
                    local.get 9
                    i32.const -4
                    i32.and
                    i32.store
                    local.get 1
                    i32.load
                    local.set 2
                    local.get 1
                    local.set 9
                    br 4 (;@4;)
                  end
                  i32.const 0
                  local.set 2
                  local.get 9
                  i32.const 0
                  i32.store
                  local.get 9
                  i32.const -8
                  i32.add
                  local.tee 9
                  i64.const 0
                  i64.store align=4
                  local.get 9
                  local.get 1
                  i32.load
                  i32.const -4
                  i32.and
                  i32.store
                  block  ;; label = @8
                    local.get 1
                    i32.load
                    local.tee 11
                    i32.const 2
                    i32.and
                    br_if 0 (;@8;)
                    local.get 11
                    i32.const -4
                    i32.and
                    local.tee 11
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 11
                    local.get 11
                    i32.load offset=4
                    i32.const 3
                    i32.and
                    local.get 9
                    i32.or
                    i32.store offset=4
                    local.get 9
                    i32.load offset=4
                    i32.const 3
                    i32.and
                    local.set 2
                  end
                  local.get 9
                  local.get 2
                  local.get 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 1
                  i32.load offset=8
                  i32.const -2
                  i32.and
                  i32.store offset=8
                  local.get 1
                  local.get 1
                  i32.load
                  local.tee 2
                  i32.const 3
                  i32.and
                  local.get 9
                  i32.or
                  local.tee 11
                  i32.store
                  local.get 2
                  i32.const 2
                  i32.and
                  br_if 2 (;@5;)
                  local.get 9
                  i32.load
                  local.set 2
                  br 3 (;@4;)
                end
                local.get 1
                local.get 9
                i32.const -2
                i32.and
                i32.store offset=8
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
                    i32.load offset=4
                    i32.const -4
                    i32.and
                    local.tee 9
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 9
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.get 9
                  local.get 9
                  i32.load8_u
                  i32.const 1
                  i32.and
                  select
                  local.set 9
                end
                local.get 1
                call $_ZN9wee_alloc9neighbors18Neighbors$LT$T$GT$6remove17h3fe0f53a11e4508dE
                block  ;; label = @7
                  local.get 1
                  i32.load8_u
                  i32.const 2
                  i32.and
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 9
                  local.get 9
                  i32.load
                  i32.const 2
                  i32.or
                  i32.store
                end
                local.get 2
                local.get 9
                i32.store
                local.get 9
                local.set 1
                br 0 (;@6;)
              end
            end
            local.get 1
            local.get 11
            i32.const -3
            i32.and
            i32.store
            local.get 9
            i32.load
            i32.const 2
            i32.or
            local.set 2
          end
          local.get 9
          local.get 2
          i32.const 1
          i32.or
          i32.store
          local.get 9
          i32.const 8
          i32.add
          local.set 6
        end
        local.get 6
        return
      end
      local.get 2
      local.get 9
      i32.store
      br 0 (;@1;)
    end)
  (func $_ZN9wee_alloc9neighbors18Neighbors$LT$T$GT$6remove17h3fe0f53a11e4508dE (type 6) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const 2
      i32.and
      br_if 0 (;@1;)
      local.get 1
      i32.const -4
      i32.and
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 2
      i32.load offset=4
      i32.const 3
      i32.and
      local.get 0
      i32.load offset=4
      i32.const -4
      i32.and
      i32.or
      i32.store offset=4
      local.get 0
      i32.load
      local.set 1
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 2
      i32.const -4
      i32.and
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 3
      i32.load
      i32.const 3
      i32.and
      local.get 1
      i32.const -4
      i32.and
      i32.or
      i32.store
      local.get 0
      i32.load offset=4
      local.set 2
      local.get 0
      i32.load
      local.set 1
    end
    local.get 0
    local.get 2
    i32.const 3
    i32.and
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 3
    i32.and
    i32.store)
  (func $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$32should_merge_adjacent_free_cells17hc898a2fa2e1d1457E (type 3) (param i32) (result i32)
    i32.const 1)
  (func $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17h1a352824a9a6e8d5E (type 1) (param i32 i32) (result i32)
    local.get 1)
  (func $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$32should_merge_adjacent_free_cells17hae6cd3874acde1a7E (type 3) (param i32) (result i32)
    i32.const 0)
  (func $_ZN9wee_alloc8WeeAlloc12dealloc_impl28_$u7b$$u7b$closure$u7d$$u7d$17h2b1a6f25da788f28E (type 2) (param i32 i32 i32 i32)
    (local i32)
    local.get 0
    i32.const 0
    i32.store
    local.get 0
    i32.const -8
    i32.add
    local.tee 4
    local.get 4
    i32.load
    i32.const -2
    i32.and
    i32.store
    block  ;; label = @1
      local.get 2
      local.get 3
      call_indirect (type 3)
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const -4
          i32.add
          i32.load
          i32.const -4
          i32.and
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load8_u
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 4
          call $_ZN9wee_alloc9neighbors18Neighbors$LT$T$GT$6remove17h3fe0f53a11e4508dE
          local.get 4
          i32.load8_u
          i32.const 2
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          local.get 2
          i32.load
          i32.const 2
          i32.or
          i32.store
          return
        end
        local.get 4
        i32.load
        local.tee 2
        i32.const 2
        i32.and
        br_if 1 (;@1;)
        local.get 2
        i32.const -4
        i32.and
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        i32.load8_u
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        i32.load offset=8
        i32.const -4
        i32.and
        i32.store
        local.get 2
        local.get 4
        i32.const 1
        i32.or
        i32.store offset=8
      end
      return
    end
    local.get 0
    local.get 1
    i32.load
    i32.store
    local.get 1
    local.get 4
    i32.store)
  (table (;0;) 12 12 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (global $GOT.data.internal.__memory_base i32 (i32.const 0))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (export "add" (func $add))
  (export "work" (func $work))
  (elem (;0;) (i32.const 1) func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17h92fbeb98db7ebf91E $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17he0f166c6e8eacd01E $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17hb43ee149ee580236E $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17h8d7a795a1d5cb40aE $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$13min_cell_size17h1a352824a9a6e8d5E $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$32should_merge_adjacent_free_cells17hc898a2fa2e1d1457E $_ZN88_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$32should_merge_adjacent_free_cells17hae6cd3874acde1a7E $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hee8e15b778ffa808E $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17hd7cc20b68bb95e6aE $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h4dc2a2d994a80c83E $_ZN4core3fmt5Write9write_fmt17h498efb08531c1676E)
  (data $.rodata (i32.const 1048576) "hellohi \05\00\10\00\03\00\00\00\08\00\00\00\0c\00\00\00\04\00\00\00\09\00\00\00\0a\00\00\00\0b\00\00\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"))
