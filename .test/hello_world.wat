(module $light_wasm-ca0da07bcfe2d26a.wasm
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32 i32) (result i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32 i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;15;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param i64 i32 i32) (result i32)))
  (import "wasi_snapshot_preview1" "fd_write" (func $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17hf054d878a92dc86eE (type 7)))
  (import "wasi_snapshot_preview1" "environ_get" (func $__imported_wasi_snapshot_preview1_environ_get (type 4)))
  (import "wasi_snapshot_preview1" "environ_sizes_get" (func $__imported_wasi_snapshot_preview1_environ_sizes_get (type 4)))
  (import "wasi_snapshot_preview1" "proc_exit" (func $__imported_wasi_snapshot_preview1_proc_exit (type 1)))
  (func $__wasm_call_ctors (type 0))
  (func $_start (type 0)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        global.get $GOT.data.internal.__memory_base
        i32.const 1055408
        i32.add
        i32.load
        br_if 0 (;@2;)
        global.get $GOT.data.internal.__memory_base
        i32.const 1055408
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
  (func $_ZN10light_wasm4main17h187dbf60e96095a0E (type 0)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 32
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    local.set 2
    local.get 2
    global.set $__stack_pointer
    i32.const 8
    local.set 3
    local.get 2
    local.get 3
    i32.add
    local.set 4
    local.get 4
    local.set 5
    i32.const 1048592
    local.set 6
    local.get 5
    local.get 6
    call $_ZN4core3fmt9Arguments9new_const17hae1fc48ff3eef251E
    i32.const 8
    local.set 7
    local.get 2
    local.get 7
    i32.add
    local.set 8
    local.get 8
    local.set 9
    local.get 9
    call $_ZN3std2io5stdio6_print17h723c1375aa632d4bE
    i32.const 32
    local.set 10
    local.get 2
    local.get 10
    i32.add
    local.set 11
    local.get 11
    global.set $__stack_pointer
    return)
  (func $__main_void (type 8) (result i32)
    (local i32 i32 i32 i32)
    i32.const 1
    local.set 0
    i32.const 0
    local.set 1
    i32.const 0
    local.set 2
    local.get 0
    local.get 1
    local.get 1
    local.get 2
    call $_ZN3std2rt10lang_start17hece23a2d796db243E
    local.set 3
    local.get 3
    return)
  (func $_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h282c8a0fb94e2428E (type 1) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 0
    call $_ZN4core3ops8function6FnOnce9call_once17h4e6f2355d3650cc5E
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.add
    local.set 5
    local.get 5
    global.set $__stack_pointer
    return)
  (func $_ZN3std2rt10lang_start17hece23a2d796db243E (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 4
    i32.const 32
    local.set 5
    local.get 4
    local.get 5
    i32.sub
    local.set 6
    local.get 6
    global.set $__stack_pointer
    local.get 6
    local.get 0
    i32.store offset=12
    local.get 6
    local.get 1
    i32.store offset=16
    local.get 6
    local.get 2
    i32.store offset=20
    local.get 6
    local.get 3
    i32.store8 offset=27
    local.get 6
    local.get 0
    i32.store offset=8
    i32.const 8
    local.set 7
    local.get 6
    local.get 7
    i32.add
    local.set 8
    local.get 8
    local.set 9
    i32.const 1048600
    local.set 10
    local.get 9
    local.get 10
    local.get 1
    local.get 2
    local.get 3
    call $_ZN3std2rt19lang_start_internal17ha09d1afae9b8b528E
    local.set 11
    local.get 6
    local.get 11
    i32.store offset=4
    local.get 6
    i32.load offset=4
    local.set 12
    local.get 6
    local.get 12
    i32.store offset=28
    i32.const 32
    local.set 13
    local.get 6
    local.get 13
    i32.add
    local.set 14
    local.get 14
    global.set $__stack_pointer
    local.get 12
    return)
  (func $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hbf8b66a58e5b6f14E (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 0
    i32.load
    local.set 4
    local.get 4
    call $_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h282c8a0fb94e2428E
    call $_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h5dfa8878328695cdE
    local.set 5
    i32.const 1
    local.set 6
    local.get 5
    local.get 6
    i32.and
    local.set 7
    local.get 3
    local.get 7
    i32.store8 offset=7
    i32.const 7
    local.set 8
    local.get 3
    local.get 8
    i32.add
    local.set 9
    local.get 9
    local.set 10
    local.get 3
    local.get 10
    i32.store offset=12
    local.get 3
    i32.load8_u offset=7
    local.set 11
    i32.const 1
    local.set 12
    local.get 11
    local.get 12
    i32.and
    local.set 13
    i32.const 16
    local.set 14
    local.get 3
    local.get 14
    i32.add
    local.set 15
    local.get 15
    global.set $__stack_pointer
    local.get 13
    return)
  (func $_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h5dfa8878328695cdE (type 8) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 0
    i32.const 16
    local.set 1
    local.get 0
    local.get 1
    i32.sub
    drop
    i32.const 0
    local.set 2
    i32.const 1
    local.set 3
    local.get 2
    local.get 3
    i32.and
    local.set 4
    local.get 4
    return)
  (func $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdbfdc71d3e32adcbE (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 0
    i32.load
    local.set 4
    local.get 4
    call $_ZN4core3ops8function6FnOnce9call_once17h552fcdeaf0bb11d4E
    local.set 5
    i32.const 16
    local.set 6
    local.get 3
    local.get 6
    i32.add
    local.set 7
    local.get 7
    global.set $__stack_pointer
    local.get 5
    return)
  (func $_ZN4core3ops8function6FnOnce9call_once17h552fcdeaf0bb11d4E (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=8
    i32.const 8
    local.set 4
    local.get 3
    local.get 4
    i32.add
    local.set 5
    local.get 5
    local.set 6
    local.get 6
    call $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hbf8b66a58e5b6f14E
    local.set 7
    i32.const 16
    local.set 8
    local.get 3
    local.get 8
    i32.add
    local.set 9
    local.get 9
    global.set $__stack_pointer
    local.get 7
    return)
  (func $_ZN4core3ops8function6FnOnce9call_once17h4e6f2355d3650cc5E (type 1) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 1
    i32.const 16
    local.set 2
    local.get 1
    local.get 2
    i32.sub
    local.set 3
    local.get 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 0
    call_indirect (type 0)
    i32.const 16
    local.set 4
    local.get 3
    local.get 4
    i32.add
    local.set 5
    local.get 5
    global.set $__stack_pointer
    return)
  (func $_ZN4core3fmt9Arguments9new_const17hae1fc48ff3eef251E (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    local.set 2
    i32.const 16
    local.set 3
    local.get 2
    local.get 3
    i32.sub
    local.set 4
    local.get 4
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store
    i32.const 1
    local.set 5
    local.get 0
    local.get 5
    i32.store offset=4
    i32.const 0
    local.set 6
    local.get 6
    i32.load offset=1048624
    local.set 7
    i32.const 0
    local.set 8
    local.get 8
    i32.load offset=1048628
    local.set 9
    local.get 0
    local.get 7
    i32.store offset=16
    local.get 0
    local.get 9
    i32.store offset=20
    i32.const 4
    local.set 10
    local.get 0
    local.get 10
    i32.store offset=8
    i32.const 0
    local.set 11
    local.get 0
    local.get 11
    i32.store offset=12
    return)
  (func $__rust_alloc (type 4) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    call $__rdl_alloc
    local.set 2
    local.get 2
    return)
  (func $__rust_dealloc (type 6) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $__rdl_dealloc
    return)
  (func $__rust_realloc (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $__rdl_realloc
    local.set 4
    local.get 4
    return)
  (func $__rust_alloc_error_handler (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call $__rg_oom
    return)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h08d9b2fe83e1d956E (type 2) (param i32 i32)
    local.get 0
    i64.const -5900651689286924628
    i64.store offset=8
    local.get 0
    i64.const -224606329976845912
    i64.store)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h1095ce410adc101fE (type 2) (param i32 i32)
    local.get 0
    i64.const 7199936582794304877
    i64.store offset=8
    local.get 0
    i64.const -5076933981314334344
    i64.store)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h18563e9cae83bb19E (type 2) (param i32 i32)
    local.get 0
    i64.const 4787181567193931505
    i64.store offset=8
    local.get 0
    i64.const 5823941144022795414
    i64.store)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2cc639f8ab650329E (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 0
        i32.load8_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 1048984
        i32.const 4
        call $_ZN4core3fmt9Formatter9write_str17h27ead38f26af9f7cE
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      local.get 0
      i32.const 1
      i32.add
      i32.store offset=12
      local.get 1
      i32.const 1048988
      i32.const 4
      local.get 2
      i32.const 12
      i32.add
      i32.const 1048632
      call $_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h27de2cb5ad4c9725E
      local.set 0
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5c67958fad7b99a1E (type 4) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      local.get 1
      i32.load offset=28
      local.tee 2
      i32.const 16
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.const 32
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17hc85ecf06cc9e3dccE
        return
      end
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h915ac1480c2473a0E
      return
    end
    local.get 0
    local.get 1
    call $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17h83ea9ef9e2d917ddE)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf2884d419915b3a7E (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h5bc1718bd81a2971E)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0733a3b685dc6d0eE (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    local.get 1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h337dbcd73fd76d73E)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9d2cd46cf4dc5d54E (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call $_ZN70_$LT$core..panic..location..Location$u20$as$u20$core..fmt..Display$GT$3fmt17hc54b66789c9a8ac2E)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hde970c8e789a879eE (type 4) (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 1
      i32.load offset=28
      local.tee 2
      i32.const 16
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 2
        i32.const 32
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.get 1
        call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h21e83e20c922bcf6E
        return
      end
      local.get 0
      local.get 1
      call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h36c9a2b4cbce5d0cE
      return
    end
    local.get 0
    local.get 1
    call $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h8a212632f208eb07E)
  (func $_ZN4core3fmt5Write10write_char17h4d3dede2d28ae446E (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 65536
            i32.ge_u
            br_if 2 (;@2;)
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
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.store8 offset=12
          i32.const 1
          local.set 1
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
        br 1 (;@1;)
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
    end
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    local.get 1
    call $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h8caa9840fb3bf804E
    local.set 1
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h8caa9840fb3bf804E (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.eqz
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          local.get 2
          i32.store offset=4
          local.get 3
          local.get 1
          i32.store
          local.get 3
          i32.const 8
          i32.add
          i32.const 2
          local.get 3
          i32.const 1
          call $_ZN4wasi13lib_generated8fd_write17hbe069b13f96a29b1E
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.load16_u offset=8
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=12
                  local.tee 5
                  br_if 2 (;@5;)
                  i32.const 0
                  i64.load offset=1050496
                  local.set 6
                  br 1 (;@6;)
                end
                local.get 3
                i64.load16_u offset=10
                local.tee 6
                i64.const 27
                i64.eq
                br_if 2 (;@4;)
                local.get 6
                i64.const 32
                i64.shl
                local.set 6
              end
              local.get 6
              i64.const 255
              i64.and
              i64.const 4
              i64.eq
              br_if 3 (;@2;)
              local.get 0
              i32.load offset=4
              local.set 1
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load8_u
                  local.tee 2
                  i32.const 4
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  i32.const 3
                  i32.ne
                  br_if 1 (;@6;)
                end
                local.get 1
                i32.load
                local.set 5
                block  ;; label = @7
                  local.get 1
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 2
                  i32.load
                  local.tee 4
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 5
                  local.get 4
                  call_indirect (type 1)
                end
                block  ;; label = @7
                  local.get 2
                  i32.load offset=4
                  local.tee 4
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 5
                  local.get 4
                  local.get 2
                  i32.load offset=8
                  call $__rust_dealloc
                end
                local.get 1
                i32.const 12
                i32.const 4
                call $__rust_dealloc
              end
              local.get 0
              local.get 6
              i64.store align=4
              i32.const 1
              local.set 4
              br 3 (;@2;)
            end
            local.get 2
            local.get 5
            i32.lt_u
            br_if 3 (;@1;)
            local.get 1
            local.get 5
            i32.add
            local.set 1
            local.get 2
            local.get 5
            i32.sub
            local.set 2
          end
          local.get 2
          br_if 0 (;@3;)
        end
      end
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 4
      return
    end
    local.get 5
    local.get 2
    i32.const 1050504
    call $_ZN4core5slice5index26slice_start_index_len_fail17h464ae35af7c6898eE
    unreachable)
  (func $_ZN4core3fmt5Write10write_char17h562d40b6adb80c97E (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 65536
            i32.ge_u
            br_if 2 (;@2;)
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
            local.set 3
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.store8 offset=12
          i32.const 1
          local.set 3
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
        local.set 3
        br 1 (;@1;)
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
      local.set 3
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 1
      i32.load
      local.get 1
      i32.load offset=8
      local.tee 0
      i32.sub
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      local.get 3
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h6c41788b49cc4567E
      local.get 1
      i32.load offset=8
      local.set 0
    end
    local.get 1
    i32.load offset=4
    local.get 0
    i32.add
    local.get 2
    i32.const 12
    i32.add
    local.get 3
    call $memcpy
    drop
    local.get 1
    local.get 0
    local.get 3
    i32.add
    i32.store offset=8
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    i32.const 0)
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h6c41788b49cc4567E (type 6) (param i32 i32 i32)
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
    call $_ZN5alloc7raw_vec11finish_grow17h0177d5d875abff0eE
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
  (func $_ZN4core3fmt5Write10write_char17hfa8a4950ff3b2360E (type 4) (param i32 i32) (result i32)
    (local i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 0
    i32.store offset=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 128
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 65536
            i32.ge_u
            br_if 2 (;@2;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=6
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=4
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=5
            i32.const 3
            local.set 1
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.store8 offset=4
          i32.const 1
          local.set 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=5
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=4
        i32.const 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=7
      local.get 2
      local.get 1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=6
      local.get 2
      local.get 1
      i32.const 12
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=5
      local.get 2
      local.get 1
      i32.const 18
      i32.shr_u
      i32.const 7
      i32.and
      i32.const 240
      i32.or
      i32.store8 offset=4
      i32.const 4
      local.set 1
    end
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=8
    local.get 2
    i32.const 4
    i32.add
    local.get 1
    call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17ha9870daa825a49adE
    block  ;; label = @1
      local.get 2
      i32.load8_u offset=8
      local.tee 1
      i32.const 4
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.set 3
      local.get 2
      i64.load offset=8
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 5
          i32.const 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 5
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 3
        i32.load
        local.set 6
        block  ;; label = @3
          local.get 3
          i32.const 4
          i32.add
          i32.load
          local.tee 5
          i32.load
          local.tee 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          local.get 7
          call_indirect (type 1)
        end
        block  ;; label = @3
          local.get 5
          i32.load offset=4
          local.tee 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          local.get 7
          local.get 5
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 3
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 0
      local.get 4
      i64.store align=4
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
    i32.const 4
    i32.ne)
  (func $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17ha9870daa825a49adE (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.load
                        local.tee 5
                        i32.load offset=12
                        br_if 0 (;@10;)
                        local.get 5
                        i32.const -1
                        i32.store offset=12
                        local.get 4
                        i32.const 8
                        i32.add
                        i32.const 10
                        local.get 2
                        local.get 3
                        call $_ZN4core5slice6memchr7memrchr17h167f4b6b40ef34b9E
                        block  ;; label = @11
                          local.get 4
                          i32.load offset=8
                          br_if 0 (;@11;)
                          block  ;; label = @12
                            local.get 5
                            i32.const 24
                            i32.add
                            i32.load
                            local.tee 6
                            br_if 0 (;@12;)
                            i32.const 0
                            local.set 6
                            br 9 (;@3;)
                          end
                          local.get 6
                          local.get 5
                          i32.const 20
                          i32.add
                          i32.load
                          local.tee 7
                          i32.add
                          i32.const -1
                          i32.add
                          i32.load8_u
                          i32.const 10
                          i32.ne
                          br_if 8 (;@3;)
                          i32.const 0
                          local.set 1
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 4
                              local.get 6
                              local.get 1
                              i32.sub
                              local.tee 8
                              i32.store offset=44
                              local.get 4
                              local.get 7
                              local.get 1
                              i32.add
                              local.tee 9
                              i32.store offset=40
                              local.get 4
                              i32.const 16
                              i32.add
                              i32.const 1
                              local.get 4
                              i32.const 40
                              i32.add
                              i32.const 1
                              call $_ZN4wasi13lib_generated8fd_write17hbe069b13f96a29b1E
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 4
                                        i32.load16_u offset=16
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        local.get 8
                                        local.set 10
                                        local.get 4
                                        i32.load16_u offset=18
                                        local.tee 11
                                        i32.const 8
                                        i32.eq
                                        br_if 1 (;@17;)
                                        local.get 5
                                        i32.const 0
                                        i32.store8 offset=28
                                        local.get 11
                                        i32.const 27
                                        i32.eq
                                        br_if 4 (;@14;)
                                        local.get 11
                                        i64.extend_i32_u
                                        i64.const 32
                                        i64.shl
                                        local.set 12
                                        br 2 (;@16;)
                                      end
                                      local.get 4
                                      i32.load offset=20
                                      local.set 10
                                    end
                                    local.get 5
                                    i32.const 0
                                    i32.store8 offset=28
                                    local.get 10
                                    br_if 1 (;@15;)
                                    i32.const 1049420
                                    i64.extend_i32_u
                                    i64.const 32
                                    i64.shl
                                    i64.const 2
                                    i64.or
                                    local.set 12
                                  end
                                  block  ;; label = @16
                                    local.get 1
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    local.get 7
                                    local.get 9
                                    local.get 8
                                    call $memmove
                                    drop
                                    local.get 5
                                    i32.const 24
                                    i32.add
                                    local.get 8
                                    i32.store
                                  end
                                  local.get 12
                                  i64.const 255
                                  i64.and
                                  i64.const 4
                                  i64.ne
                                  br_if 3 (;@12;)
                                  local.get 5
                                  i32.const 24
                                  i32.add
                                  i32.load
                                  local.set 6
                                  br 12 (;@3;)
                                end
                                local.get 10
                                local.get 1
                                i32.add
                                local.set 1
                              end
                              local.get 1
                              local.get 6
                              i32.ge_u
                              br_if 9 (;@4;)
                              br 0 (;@13;)
                            end
                          end
                          local.get 0
                          local.get 12
                          i64.store align=4
                          br 9 (;@2;)
                        end
                        local.get 3
                        local.get 4
                        i32.load offset=12
                        i32.const 1
                        i32.add
                        local.tee 13
                        i32.lt_u
                        br_if 5 (;@5;)
                        block  ;; label = @11
                          local.get 5
                          i32.const 24
                          i32.add
                          i32.load
                          local.tee 1
                          br_if 0 (;@11;)
                          local.get 13
                          i32.eqz
                          br_if 4 (;@7;)
                          local.get 2
                          local.set 6
                          local.get 13
                          local.set 1
                          loop  ;; label = @12
                            local.get 4
                            local.get 1
                            i32.store offset=44
                            local.get 4
                            local.get 6
                            i32.store offset=40
                            local.get 4
                            i32.const 16
                            i32.add
                            i32.const 1
                            local.get 4
                            i32.const 40
                            i32.add
                            i32.const 1
                            call $_ZN4wasi13lib_generated8fd_write17hbe069b13f96a29b1E
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 4
                                    i32.load16_u offset=16
                                    br_if 0 (;@16;)
                                    local.get 4
                                    i32.load offset=20
                                    local.tee 10
                                    br_if 2 (;@14;)
                                    i32.const 0
                                    i64.load offset=1050496
                                    local.set 12
                                    br 1 (;@15;)
                                  end
                                  local.get 4
                                  i64.load16_u offset=18
                                  local.tee 12
                                  i64.const 27
                                  i64.eq
                                  br_if 2 (;@13;)
                                  local.get 12
                                  i64.const 32
                                  i64.shl
                                  local.set 12
                                end
                                local.get 12
                                i64.const 255
                                i64.and
                                i64.const 4
                                i64.eq
                                br_if 7 (;@7;)
                                local.get 12
                                i64.const -4294967041
                                i64.and
                                i64.const 34359738368
                                i64.eq
                                br_if 7 (;@7;)
                                local.get 0
                                local.get 12
                                i64.store align=4
                                br 12 (;@2;)
                              end
                              local.get 1
                              local.get 10
                              i32.lt_u
                              br_if 7 (;@6;)
                              local.get 6
                              local.get 10
                              i32.add
                              local.set 6
                              local.get 1
                              local.get 10
                              i32.sub
                              local.set 1
                            end
                            local.get 1
                            br_if 0 (;@12;)
                            br 5 (;@7;)
                          end
                        end
                        block  ;; label = @11
                          local.get 5
                          i32.load offset=16
                          local.get 1
                          i32.sub
                          local.get 13
                          i32.le_u
                          br_if 0 (;@11;)
                          local.get 5
                          i32.const 20
                          i32.add
                          i32.load
                          local.get 1
                          i32.add
                          local.get 2
                          local.get 13
                          call $memcpy
                          drop
                          local.get 5
                          i32.const 24
                          i32.add
                          local.get 1
                          local.get 13
                          i32.add
                          local.tee 10
                          i32.store
                          br 3 (;@8;)
                        end
                        local.get 4
                        i32.const 16
                        i32.add
                        local.get 5
                        i32.const 16
                        i32.add
                        local.get 2
                        local.get 13
                        call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h48da1c18e0722cb5E
                        local.get 4
                        i32.load8_u offset=16
                        i32.const 4
                        i32.eq
                        br_if 1 (;@9;)
                        local.get 0
                        local.get 4
                        i64.load offset=16
                        i64.store align=4
                        br 8 (;@2;)
                      end
                      i32.const 1050352
                      call $_ZN4core4cell22panic_already_borrowed17hfdf4e832e2c2aedfE
                      unreachable
                    end
                    local.get 5
                    i32.const 24
                    i32.add
                    i32.load
                    local.set 10
                  end
                  local.get 10
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 5
                  i32.const 20
                  i32.add
                  i32.load
                  local.set 7
                  i32.const 0
                  local.set 1
                  loop  ;; label = @8
                    local.get 4
                    local.get 10
                    local.get 1
                    i32.sub
                    local.tee 8
                    i32.store offset=44
                    local.get 4
                    local.get 7
                    local.get 1
                    i32.add
                    local.tee 9
                    i32.store offset=40
                    local.get 4
                    i32.const 16
                    i32.add
                    i32.const 1
                    local.get 4
                    i32.const 40
                    i32.add
                    i32.const 1
                    call $_ZN4wasi13lib_generated8fd_write17hbe069b13f96a29b1E
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 4
                              i32.load16_u offset=16
                              i32.eqz
                              br_if 0 (;@13;)
                              local.get 8
                              local.set 6
                              local.get 4
                              i32.load16_u offset=18
                              local.tee 11
                              i32.const 8
                              i32.eq
                              br_if 1 (;@12;)
                              local.get 5
                              i32.const 0
                              i32.store8 offset=28
                              local.get 11
                              i32.const 27
                              i32.eq
                              br_if 4 (;@9;)
                              local.get 11
                              i64.extend_i32_u
                              i64.const 32
                              i64.shl
                              local.set 12
                              br 2 (;@11;)
                            end
                            local.get 4
                            i32.load offset=20
                            local.set 6
                          end
                          local.get 5
                          i32.const 0
                          i32.store8 offset=28
                          local.get 6
                          br_if 1 (;@10;)
                          i32.const 1049420
                          i64.extend_i32_u
                          i64.const 32
                          i64.shl
                          i64.const 2
                          i64.or
                          local.set 12
                        end
                        block  ;; label = @11
                          local.get 1
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 7
                          local.get 9
                          local.get 8
                          call $memmove
                          drop
                          local.get 5
                          i32.const 24
                          i32.add
                          local.get 8
                          i32.store
                        end
                        local.get 12
                        i64.const 255
                        i64.and
                        i64.const 4
                        i64.eq
                        br_if 3 (;@7;)
                        local.get 0
                        local.get 12
                        i64.store align=4
                        br 8 (;@2;)
                      end
                      local.get 6
                      local.get 1
                      i32.add
                      local.set 1
                    end
                    local.get 1
                    local.get 10
                    i32.lt_u
                    br_if 0 (;@8;)
                  end
                  block  ;; label = @8
                    local.get 10
                    local.get 1
                    i32.lt_u
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 24
                    i32.add
                    i32.const 0
                    i32.store
                    br 1 (;@7;)
                  end
                  local.get 1
                  local.get 10
                  i32.const 1048904
                  call $_ZN4core5slice5index24slice_end_index_len_fail17h32adee9828d9a43aE
                  unreachable
                end
                local.get 2
                local.get 13
                i32.add
                local.set 10
                block  ;; label = @7
                  local.get 5
                  i32.load offset=16
                  local.get 5
                  i32.const 24
                  i32.add
                  local.tee 8
                  i32.load
                  local.tee 6
                  i32.sub
                  local.get 3
                  local.get 13
                  i32.sub
                  local.tee 1
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 5
                  i32.const 16
                  i32.add
                  local.get 10
                  local.get 1
                  call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h48da1c18e0722cb5E
                  br 5 (;@2;)
                end
                local.get 5
                i32.const 20
                i32.add
                i32.load
                local.get 6
                i32.add
                local.get 10
                local.get 1
                call $memcpy
                drop
                local.get 0
                i32.const 4
                i32.store8
                local.get 8
                local.get 6
                local.get 1
                i32.add
                i32.store
                br 4 (;@2;)
              end
              local.get 10
              local.get 1
              i32.const 1050504
              call $_ZN4core5slice5index26slice_start_index_len_fail17h464ae35af7c6898eE
              unreachable
            end
            local.get 4
            i32.const 0
            i32.store offset=32
            local.get 4
            i32.const 1
            i32.store offset=20
            local.get 4
            i32.const 1049496
            i32.store offset=16
            local.get 4
            i64.const 4
            i64.store offset=24 align=4
            local.get 4
            i32.const 16
            i32.add
            i32.const 1049504
            call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
            unreachable
          end
          local.get 6
          local.get 1
          i32.lt_u
          br_if 2 (;@1;)
          i32.const 0
          local.set 6
          local.get 5
          i32.const 24
          i32.add
          i32.const 0
          i32.store
        end
        block  ;; label = @3
          local.get 5
          i32.load offset=16
          local.get 6
          i32.sub
          local.get 3
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 5
          i32.const 16
          i32.add
          local.get 2
          local.get 3
          call $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h48da1c18e0722cb5E
          br 1 (;@2;)
        end
        local.get 5
        i32.load offset=20
        local.get 6
        i32.add
        local.get 2
        local.get 3
        call $memcpy
        drop
        local.get 0
        i32.const 4
        i32.store8
        local.get 5
        i32.const 24
        i32.add
        local.get 6
        local.get 3
        i32.add
        i32.store
      end
      local.get 5
      local.get 5
      i32.load offset=12
      i32.const 1
      i32.add
      i32.store offset=12
      local.get 4
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 1
    local.get 6
    i32.const 1048904
    call $_ZN4core5slice5index24slice_end_index_len_fail17h32adee9828d9a43aE
    unreachable)
  (func $_ZN4core3fmt5Write9write_fmt17h16c27a814ae30fbcE (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.const 1048992
    local.get 1
    call $_ZN4core3fmt5write17hbfdffefff34f5cf8E)
  (func $_ZN4core3fmt5Write9write_fmt17h3b1c96c74fb5543dE (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.const 1049040
    local.get 1
    call $_ZN4core3fmt5write17hbfdffefff34f5cf8E)
  (func $_ZN4core3fmt5Write9write_fmt17h3ccd32ccade0033fE (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.const 1049064
    local.get 1
    call $_ZN4core3fmt5write17hbfdffefff34f5cf8E)
  (func $_ZN4core3fmt5Write9write_fmt17h6072faff8efe5cc0E (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.const 1049016
    local.get 1
    call $_ZN4core3fmt5write17hbfdffefff34f5cf8E)
  (func $_ZN3std9panicking12default_hook17h68409056c7d8af4dE (type 1) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=17
        br_if 0 (;@2;)
        block  ;; label = @3
          i32.const 0
          i32.load offset=1055488
          i32.const 1
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          call $_ZN3std5panic19get_backtrace_style17h2f1f03419d97519dE
          i32.store8 offset=47
          br 2 (;@1;)
        end
        local.get 1
        i32.const 1
        i32.store8 offset=47
        br 1 (;@1;)
      end
      local.get 1
      i32.const 3
      i32.store8 offset=47
    end
    local.get 1
    local.get 0
    i32.load offset=12
    i32.store offset=48
    i32.const 12
    local.set 2
    local.get 1
    i32.const 24
    i32.add
    local.get 0
    i32.load
    local.tee 3
    local.get 0
    i32.load offset=4
    i32.const 12
    i32.add
    local.tee 4
    i32.load
    call_indirect (type 2)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i64.load offset=24
          i64.const -5076933981314334344
          i64.ne
          br_if 0 (;@3;)
          i32.const 4
          local.set 0
          local.get 3
          local.set 5
          local.get 1
          i64.load offset=32
          i64.const 7199936582794304877
          i64.eq
          br_if 1 (;@2;)
        end
        local.get 1
        i32.const 8
        i32.add
        local.get 3
        local.get 4
        i32.load
        call_indirect (type 2)
        i32.const 1051264
        local.set 0
        local.get 1
        i64.load offset=8
        i64.const -224606329976845912
        i64.ne
        br_if 1 (;@1;)
        local.get 1
        i64.load offset=16
        i64.const -5900651689286924628
        i64.ne
        br_if 1 (;@1;)
        local.get 3
        i32.const 4
        i32.add
        local.set 5
        i32.const 8
        local.set 0
      end
      local.get 3
      local.get 0
      i32.add
      i32.load
      local.set 2
      local.get 5
      i32.load
      local.set 0
    end
    local.get 1
    local.get 2
    i32.store offset=56
    local.get 1
    local.get 0
    i32.store offset=52
    block  ;; label = @1
      i32.const 0
      i32.load offset=1055504
      local.tee 0
      br_if 0 (;@1;)
      i32.const 1055504
      call $_ZN4core4cell4once17OnceCell$LT$T$GT$8try_init17hac2951c9c126a997E
      drop
      i32.const 0
      i32.load offset=1055504
      local.set 0
    end
    local.get 0
    local.get 0
    i32.load
    local.tee 3
    i32.const 1
    i32.add
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        i32.store offset=60
        i32.const 9
        local.set 3
        i32.const 1051276
        local.set 2
        block  ;; label = @3
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load offset=16
              br_table 1 (;@4;) 0 (;@5;) 2 (;@3;) 1 (;@4;)
            end
            local.get 0
            i32.load offset=24
            i32.const -1
            i32.add
            local.set 3
            local.get 0
            i32.load offset=20
            local.set 2
            br 1 (;@3;)
          end
          i32.const 4
          local.set 3
          i32.const 1049324
          local.set 2
        end
        local.get 1
        local.get 3
        i32.store offset=68
        local.get 1
        local.get 2
        i32.store offset=64
        local.get 1
        local.get 1
        i32.const 47
        i32.add
        i32.store offset=84
        local.get 1
        local.get 1
        i32.const 52
        i32.add
        i32.store offset=80
        local.get 1
        local.get 1
        i32.const 48
        i32.add
        i32.store offset=76
        local.get 1
        local.get 1
        i32.const 64
        i32.add
        i32.store offset=72
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load8_u offset=1055415
                br_if 0 (;@6;)
                local.get 1
                i64.const 0
                i64.store offset=88 align=4
                local.get 1
                i32.const 92
                i32.add
                local.set 2
                br 1 (;@5;)
              end
              i32.const 0
              i32.const 1
              i32.store8 offset=1055415
              block  ;; label = @6
                i32.const 0
                i32.load8_u offset=1055496
                br_if 0 (;@6;)
                i32.const 0
                call $_ZN3std3sys12thread_local12static_local20LazyStorage$LT$T$GT$10initialize17haef55f6b271ee756E
              end
              local.get 1
              i32.const 0
              i32.store offset=88
              local.get 1
              i32.const 0
              i32.load offset=1055500
              local.tee 3
              i32.store offset=92
              i32.const 0
              i32.const 0
              i32.store offset=1055500
              local.get 1
              i32.const 92
              i32.add
              local.set 2
              local.get 3
              br_if 1 (;@4;)
            end
            local.get 1
            i32.const 72
            i32.add
            local.get 1
            i32.const 127
            i32.add
            i32.const 4
            call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h66fa5a68d312208cE
            i32.const 0
            local.set 3
            br 1 (;@3;)
          end
          local.get 3
          i32.load8_u offset=8
          local.set 0
          local.get 3
          i32.const 1
          i32.store8 offset=8
          local.get 1
          local.get 0
          i32.store8 offset=99
          local.get 0
          br_if 2 (;@1;)
          local.get 1
          i32.const 72
          i32.add
          local.get 3
          i32.const 12
          i32.add
          i32.const 5
          call $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h66fa5a68d312208cE
          local.get 3
          i32.const 0
          i32.store8 offset=8
          i32.const 0
          i32.const 1
          i32.store8 offset=1055415
          block  ;; label = @4
            i32.const 0
            i32.load8_u offset=1055496
            br_if 0 (;@4;)
            i32.const 0
            call $_ZN3std3sys12thread_local12static_local20LazyStorage$LT$T$GT$10initialize17haef55f6b271ee756E
          end
          i32.const 0
          i32.load offset=1055500
          local.set 0
          i32.const 0
          local.get 3
          i32.store offset=1055500
          i32.const 1
          local.set 3
          local.get 1
          i32.const 1
          i32.store offset=100
          local.get 1
          local.get 0
          i32.store offset=104
          block  ;; label = @4
            local.get 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 0
            i32.load
            local.tee 5
            i32.const -1
            i32.add
            i32.store
            local.get 5
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            local.get 1
            i32.const 104
            i32.add
            call $_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf2eeb82ddbcf9fcfE
          end
          local.get 1
          i32.load offset=60
          local.set 0
        end
        block  ;; label = @3
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          i32.load
          local.tee 5
          i32.const -1
          i32.add
          i32.store
          local.get 5
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 1
          i32.const 60
          i32.add
          call $_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf96288bb2908aba2E
        end
        block  ;; label = @3
          local.get 3
          local.get 1
          i32.load offset=88
          i32.const 0
          i32.ne
          local.get 1
          i32.load offset=92
          local.tee 0
          i32.eqz
          i32.or
          i32.or
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          i32.load
          local.tee 3
          i32.const -1
          i32.add
          i32.store
          local.get 3
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          call $_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf2eeb82ddbcf9fcfE
        end
        local.get 1
        i32.const 128
        i32.add
        global.set $__stack_pointer
        return
      end
      unreachable
      unreachable
    end
    local.get 1
    i64.const 0
    i64.store offset=112 align=4
    local.get 1
    i64.const 17179869185
    i64.store offset=104 align=4
    local.get 1
    i32.const 1050708
    i32.store offset=100
    local.get 1
    i32.const 99
    i32.add
    local.get 1
    i32.const 100
    i32.add
    call $_ZN4core9panicking13assert_failed17h666a74dd383b19f9E
    unreachable)
  (func $_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf96288bb2908aba2E (type 1) (param i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      i32.load offset=16
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=20
      local.tee 1
      i32.const 0
      i32.store8
      local.get 0
      i32.load offset=24
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 1
      call $__rust_dealloc
    end
    block  ;; label = @1
      local.get 0
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.const -1
      i32.add
      i32.store offset=4
      local.get 1
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 32
      i32.const 8
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h55e24719e8a056abE (type 1) (param i32)
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
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic_handler..FormatStringPayload$GT$17hc737e4b332032fedE (type 1) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 1
      i32.const -2147483648
      i32.or
      i32.const -2147483648
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h5d854e0bba0c750bE (type 2) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.and
        local.tee 0
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 3
        i32.ne
        br_if 1 (;@1;)
      end
      local.get 1
      i32.load
      local.set 2
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.tee 0
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        call_indirect (type 1)
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        local.get 0
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 1
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN4core3ptr88drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h50f89f6492f9b26fE (type 1) (param i32)
    (local i32 i32 i32)
    local.get 0
    i32.load offset=4
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u
        local.tee 0
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 3
        i32.ne
        br_if 1 (;@1;)
      end
      local.get 1
      i32.load
      local.set 2
      block  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        i32.load
        local.tee 0
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        call_indirect (type 1)
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 3
        local.get 0
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 1
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN4core4cell4once17OnceCell$LT$T$GT$8try_init17hac2951c9c126a997E (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.const 24
    call $_ZN5alloc4sync32arcinner_layout_for_value_layout17h5a6f9e71af256231E
    local.get 1
    i32.load
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.load offset=4
        local.tee 3
        br_if 0 (;@2;)
        local.get 2
        local.set 4
        br 1 (;@1;)
      end
      i32.const 0
      i32.load8_u offset=1055413
      drop
      local.get 3
      local.get 2
      call $__rust_alloc
      local.set 4
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.const 2
          i32.store offset=16
          local.get 4
          i64.const 4294967297
          i64.store
          i32.const 0
          i64.load offset=1055480
          local.set 5
          loop  ;; label = @4
            local.get 5
            i64.const 1
            i64.add
            local.tee 6
            i64.eqz
            br_if 2 (;@2;)
            i32.const 0
            local.get 6
            i32.const 0
            i64.load offset=1055480
            local.tee 7
            local.get 7
            local.get 5
            i64.eq
            local.tee 2
            select
            i64.store offset=1055480
            local.get 7
            local.set 5
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
          end
          local.get 4
          local.get 6
          i64.store offset=8
          local.get 0
          i32.load
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          i32.const 0
          i32.store offset=24
          local.get 1
          i32.const 1
          i32.store offset=12
          local.get 1
          i32.const 1048664
          i32.store offset=8
          local.get 1
          i64.const 4
          i64.store offset=16 align=4
          local.get 1
          i32.const 8
          i32.add
          i32.const 1048752
          call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
          unreachable
        end
        local.get 2
        local.get 3
        call $_ZN5alloc5alloc18handle_alloc_error17h1200fd4682b58446E
        unreachable
      end
      call $_ZN3std6thread8ThreadId3new9exhausted17he10dc1cbcf2b941aE
      unreachable
    end
    local.get 0
    local.get 4
    i32.store
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN3std6thread8ThreadId3new9exhausted17he10dc1cbcf2b941aE (type 0)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i32.const 1
    i32.store offset=12
    local.get 0
    i32.const 1049300
    i32.store offset=8
    local.get 0
    i64.const 4
    i64.store offset=16 align=4
    local.get 0
    i32.const 8
    i32.add
    i32.const 1049308
    call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
    unreachable)
  (func $_ZN4core9panicking13assert_failed17h666a74dd383b19f9E (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 1048768
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    i32.const 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 1048772
    local.get 2
    i32.const 12
    i32.add
    i32.const 1048772
    local.get 1
    i32.const 1050760
    call $_ZN4core9panicking19assert_failed_inner17hf16fae5f0227efbaE
    unreachable)
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h4dc2a2d994a80c83E (type 4) (param i32 i32) (result i32)
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
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h06dc16e0f80dbd42E
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
        call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h6c41788b49cc4567E
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
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h06dc16e0f80dbd42E (type 1) (param i32)
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
    call $_ZN5alloc7raw_vec11finish_grow17h0177d5d875abff0eE
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
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17hd7cc20b68bb95e6aE (type 5) (param i32 i32 i32) (result i32)
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
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h6c41788b49cc4567E
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
  (func $_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf2eeb82ddbcf9fcfE (type 1) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 0
      i32.const 12
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.add
      i32.load
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end
    block  ;; label = @1
      local.get 0
      i32.const -1
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.const -1
      i32.add
      i32.store offset=4
      local.get 1
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 0
      i32.const 24
      i32.const 4
      call $__rust_dealloc
    end)
  (func $_ZN5alloc7raw_vec11finish_grow17h0177d5d875abff0eE (type 9) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.const 0
          i32.lt_s
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.load offset=4
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 3
                  i32.load offset=8
                  local.tee 4
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 2
                    br_if 0 (;@8;)
                    local.get 1
                    local.set 3
                    br 4 (;@4;)
                  end
                  i32.const 0
                  i32.load8_u offset=1055413
                  drop
                  br 2 (;@5;)
                end
                local.get 3
                i32.load
                local.get 4
                local.get 1
                local.get 2
                call $__rust_realloc
                local.set 3
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 2
                br_if 0 (;@6;)
                local.get 1
                local.set 3
                br 2 (;@4;)
              end
              i32.const 0
              i32.load8_u offset=1055413
              drop
            end
            local.get 2
            local.get 1
            call $__rust_alloc
            local.set 3
          end
          block  ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 2
            i32.store offset=8
            local.get 0
            local.get 3
            i32.store offset=4
            local.get 0
            i32.const 0
            i32.store
            return
          end
          local.get 0
          local.get 2
          i32.store offset=8
          local.get 0
          local.get 1
          i32.store offset=4
          br 2 (;@1;)
        end
        local.get 0
        i32.const 0
        i32.store offset=4
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=4
    end
    local.get 0
    i32.const 1
    i32.store)
  (func $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17ha9ba8c42631e0963E (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    local.get 1
    call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h337dbcd73fd76d73E)
  (func $_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he670eae5db314858E (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=12
    local.get 1
    i32.const 1048920
    i32.const 9
    i32.const 1048929
    i32.const 11
    local.get 0
    i32.const 1048940
    i32.const 1048956
    i32.const 9
    local.get 2
    i32.const 12
    i32.add
    i32.const 1048968
    call $_ZN4core3fmt9Formatter26debug_struct_field2_finish17h826d32d2fef379efE
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN3std3sys4sync4once10no_threads4Once4call17h85c75d312efedb7fE (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load8_u offset=1055414
                      br_table 0 (;@9;) 2 (;@7;) 1 (;@8;) 8 (;@1;) 0 (;@9;)
                    end
                    i32.const 0
                    i32.const 2
                    i32.store8 offset=1055414
                    local.get 0
                    i32.load8_u
                    local.set 2
                    local.get 0
                    i32.const 0
                    i32.store8
                    local.get 2
                    i32.eqz
                    br_if 2 (;@6;)
                    local.get 1
                    i32.const 0
                    i32.store8 offset=39
                    block  ;; label = @9
                      i32.const 0
                      i32.load8_u offset=1055448
                      i32.const 3
                      i32.eq
                      br_if 0 (;@9;)
                      local.get 1
                      i32.const 39
                      i32.add
                      call $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17hc9d6380fcefc28e3E
                      local.get 1
                      i32.load8_u offset=39
                      br_if 7 (;@2;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1055416
                        i32.const 1048768
                        i32.eq
                        br_if 0 (;@10;)
                        i32.const 0
                        i32.load8_u offset=1055424
                        local.set 2
                        i32.const 1
                        local.set 0
                        i32.const 0
                        i32.const 1
                        i32.store8 offset=1055424
                        local.get 2
                        br_if 8 (;@2;)
                        i32.const 0
                        i32.const 1048768
                        i32.store offset=1055416
                        br 1 (;@9;)
                      end
                      i32.const 0
                      i32.load offset=1055420
                      i32.const 1
                      i32.add
                      local.tee 0
                      i32.eqz
                      br_if 7 (;@2;)
                    end
                    i32.const 0
                    local.get 0
                    i32.store offset=1055420
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1055428
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.const -1
                      i32.store offset=1055428
                      i32.const 0
                      i32.load8_u offset=1055444
                      br_if 6 (;@3;)
                      i32.const 0
                      local.set 0
                      i32.const 0
                      i32.load offset=1055440
                      local.tee 3
                      i32.eqz
                      br_if 6 (;@3;)
                      i32.const 0
                      i32.load offset=1055436
                      local.set 4
                      loop  ;; label = @10
                        local.get 1
                        local.get 3
                        local.get 0
                        i32.sub
                        local.tee 5
                        i32.store offset=44
                        local.get 1
                        local.get 4
                        local.get 0
                        i32.add
                        local.tee 6
                        i32.store offset=40
                        local.get 1
                        i32.const 12
                        i32.add
                        i32.const 1
                        local.get 1
                        i32.const 40
                        i32.add
                        i32.const 1
                        call $_ZN4wasi13lib_generated8fd_write17hbe069b13f96a29b1E
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 1
                                  i32.load16_u offset=12
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 5
                                  local.set 2
                                  local.get 1
                                  i32.load16_u offset=14
                                  local.tee 7
                                  i32.const -8
                                  i32.add
                                  br_table 1 (;@14;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 4 (;@11;) 2 (;@13;)
                                end
                                local.get 1
                                i32.load offset=16
                                local.set 2
                              end
                              local.get 2
                              br_if 1 (;@12;)
                              i32.const 1049420
                              i64.extend_i32_u
                              i64.const 32
                              i64.shl
                              i64.const 2
                              i64.or
                              local.set 8
                              br 8 (;@5;)
                            end
                            local.get 7
                            i64.extend_i32_u
                            i64.const 32
                            i64.shl
                            local.set 8
                            br 7 (;@5;)
                          end
                          local.get 2
                          local.get 0
                          i32.add
                          local.set 0
                        end
                        local.get 0
                        local.get 3
                        i32.ge_u
                        br_if 6 (;@4;)
                        br 0 (;@10;)
                      end
                    end
                    i32.const 1050336
                    call $_ZN4core4cell22panic_already_borrowed17hfdf4e832e2c2aedfE
                    unreachable
                  end
                  local.get 1
                  i32.const 0
                  i32.store offset=28
                  local.get 1
                  i32.const 1
                  i32.store offset=16
                  local.get 1
                  i32.const 1052020
                  i32.store offset=12
                  local.get 1
                  i64.const 4
                  i64.store offset=20 align=4
                  local.get 1
                  i32.const 12
                  i32.add
                  i32.const 1049112
                  call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
                  unreachable
                end
                local.get 1
                i32.const 0
                i32.store offset=28
                local.get 1
                i32.const 1
                i32.store offset=16
                local.get 1
                i32.const 1051956
                i32.store offset=12
                local.get 1
                i64.const 4
                i64.store offset=20 align=4
                local.get 1
                i32.const 12
                i32.add
                i32.const 1049112
                call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
                unreachable
              end
              i32.const 1050804
              call $_ZN4core6option13unwrap_failed17h165f1460d4b9b2e4E
              unreachable
            end
            local.get 8
            i32.wrap_i64
            local.set 2
            block  ;; label = @5
              local.get 0
              i32.eqz
              br_if 0 (;@5;)
              local.get 4
              local.get 6
              local.get 5
              call $memmove
              drop
            end
            block  ;; label = @5
              local.get 2
              i32.const 255
              i32.and
              local.tee 0
              i32.const 4
              i32.gt_u
              br_if 0 (;@5;)
              local.get 0
              i32.const 3
              i32.ne
              br_if 2 (;@3;)
            end
            local.get 8
            i64.const 32
            i64.shr_u
            i32.wrap_i64
            local.tee 0
            i32.load
            local.set 3
            block  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 2
              i32.load
              local.tee 5
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              local.get 5
              call_indirect (type 1)
            end
            block  ;; label = @5
              local.get 2
              i32.load offset=4
              local.tee 5
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              local.get 5
              local.get 2
              i32.load offset=8
              call $__rust_dealloc
            end
            local.get 0
            i32.const 12
            i32.const 4
            call $__rust_dealloc
            br 1 (;@3;)
          end
          local.get 3
          local.get 0
          i32.ge_u
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i32.const 1048904
          call $_ZN4core5slice5index24slice_end_index_len_fail17h32adee9828d9a43aE
          unreachable
        end
        block  ;; label = @3
          i32.const 0
          i32.load offset=1055432
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1055436
          local.get 0
          i32.const 1
          call $__rust_dealloc
        end
        i32.const 0
        i64.const 4294967296
        i64.store offset=1055432 align=4
        i32.const 0
        i32.const 0
        i32.load offset=1055428
        i32.const 1
        i32.add
        i32.store offset=1055428
        i32.const 0
        i32.const 0
        i32.load offset=1055420
        i32.const -1
        i32.add
        local.tee 0
        i32.store offset=1055420
        i32.const 0
        i32.const 0
        i32.store8 offset=1055444
        i32.const 0
        i32.const 0
        i32.store offset=1055440
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        i32.store8 offset=1055424
        i32.const 0
        i32.const 0
        i32.store offset=1055416
      end
      i32.const 0
      i32.const 3
      i32.store8 offset=1055414
    end
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std2rt19lang_start_internal17ha09d1afae9b8b528E (type 10) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    i32.const 8
    i32.const 24
    call $_ZN5alloc4sync32arcinner_layout_for_value_layout17h5a6f9e71af256231E
    local.get 5
    i32.load
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.load offset=4
        local.tee 7
        br_if 0 (;@2;)
        local.get 6
        local.set 8
        br 1 (;@1;)
      end
      i32.const 0
      i32.load8_u offset=1055413
      drop
      local.get 7
      local.get 6
      call $__rust_alloc
      local.set 8
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const 0
          i32.store offset=16
          local.get 8
          i64.const 4294967297
          i64.store
          i32.const 0
          i64.load offset=1055480
          local.set 9
          loop  ;; label = @4
            local.get 9
            i64.const 1
            i64.add
            local.tee 10
            i64.eqz
            br_if 2 (;@2;)
            i32.const 0
            local.get 10
            i32.const 0
            i64.load offset=1055480
            local.tee 11
            local.get 11
            local.get 9
            i64.eq
            local.tee 6
            select
            i64.store offset=1055480
            local.get 11
            local.set 9
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
          end
          local.get 8
          local.get 10
          i64.store offset=8
          i32.const 0
          i32.load offset=1055504
          br_if 2 (;@1;)
          i32.const 0
          local.get 8
          i32.store offset=1055504
          local.get 0
          local.get 1
          i32.load offset=20
          call_indirect (type 3)
          local.set 6
          block  ;; label = @4
            i32.const 0
            i32.load8_u offset=1055414
            i32.const 3
            i32.eq
            br_if 0 (;@4;)
            local.get 5
            i32.const 1
            i32.store8 offset=20
            local.get 5
            i32.const 20
            i32.add
            call $_ZN3std3sys4sync4once10no_threads4Once4call17h85c75d312efedb7fE
          end
          local.get 5
          i32.const 48
          i32.add
          global.set $__stack_pointer
          local.get 6
          return
        end
        local.get 6
        local.get 7
        call $_ZN5alloc5alloc18handle_alloc_error17h1200fd4682b58446E
        unreachable
      end
      call $_ZN3std6thread8ThreadId3new9exhausted17he10dc1cbcf2b941aE
      unreachable
    end
    local.get 5
    i32.const 1
    i32.store offset=24
    local.get 5
    i32.const 1049208
    i32.store offset=20
    local.get 5
    i64.const 0
    i64.store offset=32 align=4
    local.get 5
    local.get 5
    i32.const 44
    i32.add
    i32.store offset=28
    local.get 5
    i32.const 12
    i32.add
    local.get 5
    i32.const 44
    i32.add
    local.get 5
    i32.const 20
    i32.add
    call $_ZN3std2io5Write9write_fmt17had48db4995c7a5a8E
    local.get 5
    i32.load8_u offset=12
    local.get 5
    i32.load offset=16
    call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h5d854e0bba0c750bE
    call $_ZN3std3sys3pal4wasi7helpers14abort_internal17h4701a3d5a8d78f8bE
    unreachable)
  (func $_ZN3std2io5Write9write_fmt17had48db4995c7a5a8E (type 6) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 4
    i32.store8 offset=8
    local.get 3
    local.get 1
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 8
        i32.add
        i32.const 1049064
        local.get 2
        call $_ZN4core3fmt5write17hbfdffefff34f5cf8E
        br_if 0 (;@2;)
        local.get 0
        i32.const 4
        i32.store8
        local.get 3
        i32.load offset=12
        local.set 2
        block  ;; label = @3
          local.get 3
          i32.load8_u offset=8
          local.tee 1
          i32.const 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 3
          i32.ne
          br_if 2 (;@1;)
        end
        local.get 2
        i32.load
        local.set 0
        block  ;; label = @3
          local.get 2
          i32.const 4
          i32.add
          i32.load
          local.tee 1
          i32.load
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          call_indirect (type 1)
        end
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          local.get 1
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 2
        i32.const 12
        i32.const 4
        call $__rust_dealloc
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 3
        i32.load8_u offset=8
        i32.const 4
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i64.load offset=8
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 3
      i32.const 0
      i32.store offset=40
      local.get 3
      i32.const 1
      i32.store offset=28
      local.get 3
      i32.const 1050608
      i32.store offset=24
      local.get 3
      i64.const 4
      i64.store offset=32 align=4
      local.get 3
      i32.const 24
      i32.add
      i32.const 1050616
      call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
      unreachable
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std3sys3pal4wasi7helpers14abort_internal17h4701a3d5a8d78f8bE (type 0)
    call $abort
    unreachable)
  (func $_ZN3std3env11current_dir17h292161054bcb7ffeE (type 1) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 0
    i32.load8_u offset=1055413
    drop
    i32.const 512
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 512
                i32.const 1
                call $__rust_alloc
                local.tee 3
                i32.eqz
                br_if 0 (;@6;)
                local.get 1
                local.get 3
                i32.store offset=8
                local.get 1
                i32.const 512
                i32.store offset=4
                local.get 3
                i32.const 512
                call $getcwd
                br_if 3 (;@3;)
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1056004
                  local.tee 2
                  i32.const 68
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 512
                  local.set 2
                  br 2 (;@5;)
                end
                local.get 0
                local.get 2
                i32.store offset=8
                local.get 0
                i64.const 2147483648
                i64.store align=4
                i32.const 512
                local.set 2
                br 2 (;@4;)
              end
              i32.const 1
              i32.const 512
              call $_ZN5alloc7raw_vec12handle_error17h7e30ce1f05b9350bE
              unreachable
            end
            loop  ;; label = @5
              local.get 1
              local.get 2
              i32.store offset=12
              local.get 1
              i32.const 4
              i32.add
              local.get 2
              i32.const 1
              call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h6c41788b49cc4567E
              local.get 1
              i32.load offset=8
              local.tee 3
              local.get 1
              i32.load offset=4
              local.tee 2
              call $getcwd
              br_if 2 (;@3;)
              i32.const 0
              i32.load offset=1056004
              local.tee 4
              i32.const 68
              i32.eq
              br_if 0 (;@5;)
            end
            local.get 0
            local.get 4
            i32.store offset=8
            local.get 0
            i64.const 2147483648
            i64.store align=4
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 3
          local.get 2
          i32.const 1
          call $__rust_dealloc
          br 1 (;@2;)
        end
        local.get 1
        local.get 3
        call $strlen
        local.tee 4
        i32.store offset=12
        block  ;; label = @3
          local.get 2
          local.get 4
          i32.le_u
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              br_if 0 (;@5;)
              i32.const 1
              local.set 5
              local.get 3
              local.get 2
              i32.const 1
              call $__rust_dealloc
              br 1 (;@4;)
            end
            local.get 3
            local.get 2
            i32.const 1
            local.get 4
            call $__rust_realloc
            local.tee 5
            i32.eqz
            br_if 3 (;@1;)
          end
          local.get 1
          local.get 4
          i32.store offset=4
          local.get 1
          local.get 5
          i32.store offset=8
        end
        local.get 0
        local.get 1
        i64.load offset=4 align=4
        i64.store align=4
        local.get 0
        i32.const 8
        i32.add
        local.get 1
        i32.const 4
        i32.add
        i32.const 8
        i32.add
        i32.load
        i32.store
      end
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 1
    local.get 4
    call $_ZN5alloc7raw_vec12handle_error17h7e30ce1f05b9350bE
    unreachable)
  (func $_ZN3std3env7_var_os17ha50bf6cb63644954E (type 6) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 416
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 383
          i32.gt_u
          br_if 0 (;@3;)
          local.get 3
          i32.const 20
          i32.add
          local.get 1
          local.get 2
          call $memcpy
          drop
          local.get 3
          i32.const 20
          i32.add
          local.get 2
          i32.add
          i32.const 0
          i32.store8
          local.get 3
          i32.const 404
          i32.add
          local.get 3
          i32.const 20
          i32.add
          local.get 2
          i32.const 1
          i32.add
          call $_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17hfb8de03fe159d5c4E
          block  ;; label = @4
            local.get 3
            i32.load offset=404
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              i32.load offset=408
              call $getenv
              local.tee 1
              br_if 0 (;@5;)
              i32.const -2147483648
              local.set 2
              br 3 (;@2;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                call $strlen
                local.tee 2
                br_if 0 (;@6;)
                i32.const 1
                local.set 4
                br 1 (;@5;)
              end
              i32.const 0
              local.set 5
              local.get 2
              i32.const 0
              i32.lt_s
              br_if 4 (;@1;)
              i32.const 0
              i32.load8_u offset=1055413
              drop
              i32.const 1
              local.set 5
              local.get 2
              i32.const 1
              call $__rust_alloc
              local.tee 4
              i32.eqz
              br_if 4 (;@1;)
            end
            local.get 4
            local.get 1
            local.get 2
            call $memcpy
            local.set 1
            local.get 3
            local.get 2
            i32.store offset=16
            local.get 3
            local.get 1
            i32.store offset=12
            br 2 (;@2;)
          end
          local.get 3
          i32.const 0
          i64.load offset=1051000
          i64.store offset=12 align=4
          i32.const -2147483647
          local.set 2
          br 1 (;@2;)
        end
        local.get 3
        i32.const 8
        i32.add
        local.get 1
        local.get 2
        call $_ZN3std3sys3pal6common14small_c_string24run_with_cstr_allocating17hba2c937f1e0aa6a9E
        local.get 3
        i32.load offset=8
        local.set 2
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const -2147483647
          i32.eq
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          i64.load offset=12 align=4
          i64.store offset=4 align=4
          local.get 0
          local.get 2
          i32.store
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 3
          i32.load8_u offset=12
          i32.const 3
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=16
          local.tee 2
          i32.load
          local.set 4
          block  ;; label = @4
            local.get 2
            i32.const 4
            i32.add
            i32.load
            local.tee 1
            i32.load
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            call_indirect (type 1)
          end
          block  ;; label = @4
            local.get 1
            i32.load offset=4
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            local.get 1
            i32.load offset=8
            call $__rust_dealloc
          end
          local.get 2
          i32.const 12
          i32.const 4
          call $__rust_dealloc
        end
        local.get 0
        i32.const -2147483648
        i32.store
      end
      local.get 3
      i32.const 416
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 5
    local.get 2
    call $_ZN5alloc7raw_vec12handle_error17h7e30ce1f05b9350bE
    unreachable)
  (func $_ZN3std3sys3pal6common14small_c_string24run_with_cstr_allocating17hba2c937f1e0aa6a9E (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    local.get 2
    call $_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h8877d3a956b8dec6E
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load
          local.tee 2
          i32.const -2147483648
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=8
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.load offset=4
              local.tee 4
              call $getenv
              local.tee 5
              br_if 0 (;@5;)
              local.get 0
              i32.const -2147483648
              i32.store
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 5
                call $strlen
                local.tee 2
                br_if 0 (;@6;)
                i32.const 1
                local.set 6
                br 1 (;@5;)
              end
              i32.const 0
              local.set 7
              local.get 2
              i32.const 0
              i32.lt_s
              br_if 3 (;@2;)
              i32.const 0
              i32.load8_u offset=1055413
              drop
              i32.const 1
              local.set 7
              local.get 2
              i32.const 1
              call $__rust_alloc
              local.tee 6
              i32.eqz
              br_if 3 (;@2;)
            end
            local.get 6
            local.get 5
            local.get 2
            call $memcpy
            local.set 5
            local.get 0
            local.get 2
            i32.store offset=8
            local.get 0
            local.get 5
            i32.store offset=4
            local.get 0
            local.get 2
            i32.store
          end
          local.get 4
          i32.const 0
          i32.store8
          local.get 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 4
          local.get 1
          i32.const 1
          call $__rust_dealloc
          br 2 (;@1;)
        end
        local.get 0
        i32.const -2147483647
        i32.store
        local.get 0
        i32.const 0
        i64.load offset=1051000
        i64.store offset=4 align=4
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=4
        local.get 2
        i32.const 1
        call $__rust_dealloc
        br 1 (;@1;)
      end
      local.get 7
      local.get 2
      call $_ZN5alloc7raw_vec12handle_error17h7e30ce1f05b9350bE
      unreachable
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hf05a34fd688607a6E (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load8_u
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;) 3 (;@2;) 0 (;@5;)
            end
            local.get 2
            local.get 0
            i32.load offset=4
            local.tee 0
            i32.store offset=4
            local.get 2
            i32.const 8
            i32.add
            local.get 0
            call $_ZN3std3sys3pal4wasi2os12error_string17h8faa973cb2fa15a3E
            local.get 2
            i32.const 3
            i32.store offset=44
            local.get 2
            i32.const 1050284
            i32.store offset=40
            local.get 2
            i64.const 2
            i64.store offset=52 align=4
            local.get 2
            i32.const 6
            i64.extend_i32_u
            i64.const 32
            i64.shl
            local.get 2
            i32.const 4
            i32.add
            i64.extend_i32_u
            i64.or
            i64.store offset=32
            local.get 2
            i32.const 7
            i64.extend_i32_u
            i64.const 32
            i64.shl
            local.get 2
            i32.const 8
            i32.add
            i64.extend_i32_u
            i64.or
            i64.store offset=24
            local.get 2
            local.get 2
            i32.const 24
            i32.add
            i32.store offset=48
            local.get 1
            i32.load offset=20
            local.get 1
            i32.load offset=24
            local.get 2
            i32.const 40
            i32.add
            call $_ZN4core3fmt5write17hbfdffefff34f5cf8E
            local.set 0
            local.get 2
            i32.load offset=8
            local.tee 1
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            i32.load offset=12
            local.get 1
            i32.const 1
            call $__rust_dealloc
            br 3 (;@1;)
          end
          local.get 0
          i32.load8_u offset=1
          local.set 0
          local.get 2
          i32.const 1
          i32.store offset=44
          local.get 2
          i32.const 1049432
          i32.store offset=40
          local.get 2
          i64.const 1
          i64.store offset=52 align=4
          local.get 2
          i32.const 8
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.get 2
          i32.const 24
          i32.add
          i64.extend_i32_u
          i64.or
          i64.store offset=8
          local.get 2
          local.get 0
          i32.const 2
          i32.shl
          local.tee 0
          i32.const 1052084
          i32.add
          i32.load
          i32.store offset=28
          local.get 2
          local.get 0
          i32.const 1052248
          i32.add
          i32.load
          i32.store offset=24
          local.get 2
          local.get 2
          i32.const 8
          i32.add
          i32.store offset=48
          local.get 1
          i32.load offset=20
          local.get 1
          i32.load offset=24
          local.get 2
          i32.const 40
          i32.add
          call $_ZN4core3fmt5write17hbfdffefff34f5cf8E
          local.set 0
          br 2 (;@1;)
        end
        local.get 0
        i32.load offset=4
        local.tee 0
        i32.load
        local.get 0
        i32.load offset=4
        local.get 1
        call $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h337dbcd73fd76d73E
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=4
      local.tee 0
      i32.load
      local.get 1
      local.get 0
      i32.load offset=4
      i32.load offset=16
      call_indirect (type 4)
      local.set 0
    end
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN3std2io8buffered9bufwriter18BufWriter$LT$W$GT$14write_all_cold17h48da1c18e0722cb5E (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load
            local.tee 5
            local.get 1
            i32.load offset=8
            local.tee 6
            i32.sub
            local.get 3
            i32.ge_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 6
              br_if 0 (;@5;)
              i32.const 0
              local.set 6
              br 1 (;@4;)
            end
            local.get 1
            i32.load offset=4
            local.set 7
            i32.const 0
            local.set 8
            loop  ;; label = @5
              local.get 4
              local.get 6
              local.get 8
              i32.sub
              local.tee 9
              i32.store offset=4
              local.get 4
              local.get 7
              local.get 8
              i32.add
              local.tee 10
              i32.store
              local.get 4
              i32.const 8
              i32.add
              i32.const 1
              local.get 4
              i32.const 1
              call $_ZN4wasi13lib_generated8fd_write17hbe069b13f96a29b1E
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 4
                        i32.load16_u offset=8
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 9
                        local.set 11
                        local.get 4
                        i32.load16_u offset=10
                        local.tee 12
                        i32.const 8
                        i32.eq
                        br_if 1 (;@9;)
                        local.get 1
                        i32.const 0
                        i32.store8 offset=12
                        local.get 12
                        i32.const 27
                        i32.eq
                        br_if 4 (;@6;)
                        local.get 12
                        i64.extend_i32_u
                        i64.const 32
                        i64.shl
                        local.set 13
                        br 2 (;@8;)
                      end
                      local.get 4
                      i32.load offset=12
                      local.set 11
                    end
                    local.get 1
                    i32.const 0
                    i32.store8 offset=12
                    local.get 11
                    br_if 1 (;@7;)
                    i32.const 1049420
                    i64.extend_i32_u
                    i64.const 32
                    i64.shl
                    i64.const 2
                    i64.or
                    local.set 13
                  end
                  block  ;; label = @8
                    local.get 8
                    i32.eqz
                    br_if 0 (;@8;)
                    local.get 7
                    local.get 10
                    local.get 9
                    call $memmove
                    drop
                    local.get 1
                    local.get 9
                    i32.store offset=8
                    local.get 9
                    local.set 6
                  end
                  local.get 13
                  i64.const 255
                  i64.and
                  i64.const 4
                  i64.eq
                  br_if 3 (;@4;)
                  local.get 0
                  local.get 13
                  i64.store align=4
                  br 4 (;@3;)
                end
                local.get 11
                local.get 8
                i32.add
                local.set 8
              end
              local.get 8
              local.get 6
              i32.lt_u
              br_if 0 (;@5;)
            end
            local.get 6
            local.get 8
            i32.lt_u
            br_if 2 (;@2;)
            i32.const 0
            local.set 6
            local.get 1
            i32.const 0
            i32.store offset=8
          end
          block  ;; label = @4
            local.get 5
            local.get 3
            i32.le_u
            br_if 0 (;@4;)
            local.get 1
            i32.load offset=4
            local.get 6
            i32.add
            local.get 2
            local.get 3
            call $memcpy
            drop
            local.get 0
            i32.const 4
            i32.store8
            local.get 1
            local.get 6
            local.get 3
            i32.add
            i32.store offset=8
            br 1 (;@3;)
          end
          i64.const 0
          local.set 14
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.eqz
                br_if 0 (;@6;)
                loop  ;; label = @7
                  local.get 4
                  local.get 3
                  i32.store offset=4
                  local.get 4
                  local.get 2
                  i32.store
                  local.get 4
                  i32.const 8
                  i32.add
                  i32.const 1
                  local.get 4
                  i32.const 1
                  call $_ZN4wasi13lib_generated8fd_write17hbe069b13f96a29b1E
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 4
                          i32.load16_u offset=8
                          br_if 0 (;@11;)
                          local.get 4
                          i32.load offset=12
                          local.tee 8
                          br_if 2 (;@9;)
                          i32.const 0
                          i64.load offset=1050496
                          local.set 15
                          br 1 (;@10;)
                        end
                        local.get 4
                        i64.load16_u offset=10
                        local.tee 13
                        i64.const 27
                        i64.eq
                        br_if 2 (;@8;)
                        local.get 13
                        i64.const 32
                        i64.shl
                        local.set 15
                      end
                      local.get 15
                      i64.const 32
                      i64.shr_u
                      local.set 14
                      local.get 15
                      i64.const -256
                      i64.and
                      local.set 13
                      local.get 15
                      i32.wrap_i64
                      i32.const 255
                      i32.and
                      local.tee 8
                      i32.const 4
                      i32.eq
                      br_if 4 (;@5;)
                      i64.const 4
                      local.get 15
                      i64.const 255
                      i64.and
                      local.get 8
                      i32.eqz
                      local.get 14
                      i64.const 8
                      i64.eq
                      i32.and
                      local.tee 8
                      select
                      local.set 14
                      i64.const 0
                      local.get 13
                      local.get 8
                      select
                      local.set 13
                      br 5 (;@4;)
                    end
                    local.get 3
                    local.get 8
                    i32.lt_u
                    br_if 7 (;@1;)
                    local.get 2
                    local.get 8
                    i32.add
                    local.set 2
                    local.get 3
                    local.get 8
                    i32.sub
                    local.set 3
                  end
                  local.get 3
                  br_if 0 (;@7;)
                end
              end
              i64.const 0
              local.set 13
            end
            local.get 13
            i64.const 4294967040
            i64.and
            local.get 14
            i64.const 32
            i64.shl
            i64.or
            local.set 13
            i64.const 4
            local.set 14
          end
          local.get 1
          i32.const 0
          i32.store8 offset=12
          local.get 0
          local.get 14
          local.get 13
          i64.or
          i64.store align=4
        end
        local.get 4
        i32.const 16
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 8
      local.get 6
      i32.const 1048904
      call $_ZN4core5slice5index24slice_end_index_len_fail17h32adee9828d9a43aE
      unreachable
    end
    local.get 8
    local.get 3
    i32.const 1050504
    call $_ZN4core5slice5index26slice_start_index_len_fail17h464ae35af7c6898eE
    unreachable)
  (func $_ZN3std3sys3pal4wasi2os12error_string17h8faa973cb2fa15a3E (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 1056
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        i32.const 0
        i32.const 1024
        call $memset
        local.tee 2
        i32.const 1024
        call $strerror_r
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 2
        i32.const 1024
        i32.add
        local.get 2
        local.get 2
        call $strlen
        call $_ZN4core3str8converts9from_utf817hf5df6767648c29f8E
        block  ;; label = @3
          local.get 2
          i32.load offset=1024
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=1028
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=1032
              local.tee 1
              br_if 0 (;@5;)
              i32.const 1
              local.set 4
              br 1 (;@4;)
            end
            i32.const 0
            local.set 5
            local.get 1
            i32.const 0
            i32.lt_s
            br_if 3 (;@1;)
            i32.const 0
            i32.load8_u offset=1055413
            drop
            i32.const 1
            local.set 5
            local.get 1
            i32.const 1
            call $__rust_alloc
            local.tee 4
            i32.eqz
            br_if 3 (;@1;)
          end
          local.get 4
          local.get 3
          local.get 1
          call $memcpy
          local.set 3
          local.get 0
          local.get 1
          i32.store offset=8
          local.get 0
          local.get 3
          i32.store offset=4
          local.get 0
          local.get 1
          i32.store
          local.get 2
          i32.const 1056
          i32.add
          global.set $__stack_pointer
          return
        end
        local.get 2
        local.get 2
        i64.load offset=1028 align=4
        i64.store offset=1048
        i32.const 1049343
        i32.const 43
        local.get 2
        i32.const 1048
        i32.add
        i32.const 1051800
        i32.const 1051852
        call $_ZN4core6result13unwrap_failed17had3752ac9f022e32E
        unreachable
      end
      local.get 2
      i32.const 0
      i32.store offset=1040
      local.get 2
      i32.const 1
      i32.store offset=1028
      local.get 2
      i32.const 1051888
      i32.store offset=1024
      local.get 2
      i64.const 4
      i64.store offset=1032 align=4
      local.get 2
      i32.const 1024
      i32.add
      i32.const 1051896
      call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
      unreachable
    end
    local.get 5
    local.get 1
    call $_ZN5alloc7raw_vec12handle_error17h7e30ce1f05b9350bE
    unreachable)
  (func $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17h296160441532a998E (type 0)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1055448
      i32.const 3
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.const 1055416
      i32.store offset=4
      local.get 0
      local.get 0
      i32.const 15
      i32.add
      i32.store offset=8
      local.get 0
      i32.const 4
      i32.add
      call $_ZN3std3sys4sync4once10no_threads4Once4call17h336fb5c56707ec60E
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN61_$LT$$RF$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17he26b7575bc123e42E (type 6) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load
          i32.load
          local.tee 1
          i32.load
          i32.const 1048768
          i32.eq
          br_if 0 (;@3;)
          local.get 1
          i32.load8_u offset=8
          local.set 4
          local.get 1
          i32.const 1
          i32.store8 offset=8
          local.get 3
          local.get 4
          i32.store8 offset=8
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i64.const 0
          i64.store offset=36 align=4
          local.get 3
          i64.const 17179869185
          i64.store offset=28 align=4
          local.get 3
          i32.const 1050708
          i32.store offset=24
          local.get 3
          i32.const 8
          i32.add
          local.get 3
          i32.const 24
          i32.add
          call $_ZN4core9panicking13assert_failed17h666a74dd383b19f9E
          unreachable
        end
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.add
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          local.get 4
          i32.store offset=4
          br 2 (;@1;)
        end
        i32.const 1050852
        i32.const 38
        i32.const 1050928
        call $_ZN4core6option13expect_failed17h4bbb25fdd9d02fc5E
        unreachable
      end
      local.get 1
      i32.const 1
      i32.store offset=4
      local.get 1
      i32.const 1048768
      i32.store
    end
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 4
    i32.store8 offset=8
    local.get 3
    local.get 3
    i32.const 4
    i32.add
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 8
          i32.add
          i32.const 1048992
          local.get 2
          call $_ZN4core3fmt5write17hbfdffefff34f5cf8E
          br_if 0 (;@3;)
          local.get 0
          i32.const 4
          i32.store8
          local.get 3
          i32.load offset=12
          local.set 2
          block  ;; label = @4
            local.get 3
            i32.load8_u offset=8
            local.tee 1
            i32.const 4
            i32.gt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const 3
            i32.ne
            br_if 2 (;@2;)
          end
          local.get 2
          i32.load
          local.set 0
          block  ;; label = @4
            local.get 2
            i32.const 4
            i32.add
            i32.load
            local.tee 1
            i32.load
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 4
            call_indirect (type 1)
          end
          block  ;; label = @4
            local.get 1
            i32.load offset=4
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 4
            local.get 1
            i32.load offset=8
            call $__rust_dealloc
          end
          local.get 2
          i32.const 12
          i32.const 4
          call $__rust_dealloc
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u offset=8
        i32.const 4
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        local.get 3
        i64.load offset=8
        i64.store align=4
      end
      local.get 3
      i32.load offset=4
      local.tee 1
      local.get 1
      i32.load offset=4
      i32.const -1
      i32.add
      local.tee 2
      i32.store offset=4
      block  ;; label = @2
        local.get 2
        br_if 0 (;@2;)
        local.get 1
        i32.const 0
        i32.store8 offset=8
        local.get 1
        i32.const 0
        i32.store
      end
      local.get 3
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 3
    i32.const 0
    i32.store offset=40
    local.get 3
    i32.const 1
    i32.store offset=28
    local.get 3
    i32.const 1050608
    i32.store offset=24
    local.get 3
    i64.const 4
    i64.store offset=32 align=4
    local.get 3
    i32.const 24
    i32.add
    i32.const 1050616
    call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
    unreachable)
  (func $_ZN3std3sys12thread_local12static_local20LazyStorage$LT$T$GT$10initialize17haef55f6b271ee756E (type 1) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      local.set 3
      local.get 0
      i32.const 0
      i32.store
      local.get 0
      i32.load offset=4
      i32.const 0
      local.get 3
      select
      local.set 2
    end
    i32.const 0
    i32.load8_u offset=1055496
    local.set 3
    i32.const 0
    i32.const 1
    i32.store8 offset=1055496
    i32.const 0
    i32.load offset=1055500
    local.set 0
    i32.const 0
    local.get 2
    i32.store offset=1055500
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    local.get 3
    i32.store offset=8
    block  ;; label = @1
      local.get 3
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 0
      i32.load
      local.tee 3
      i32.const -1
      i32.add
      i32.store
      local.get 3
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.const 12
      i32.add
      call $_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf2eeb82ddbcf9fcfE
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std2io5stdio31print_to_buffer_if_capture_used17hda9e217d1ed1bc18E (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 0
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        i32.const 0
        i32.load8_u offset=1055415
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=1055496
          br_if 0 (;@3;)
          i32.const 0
          call $_ZN3std3sys12thread_local12static_local20LazyStorage$LT$T$GT$10initialize17haef55f6b271ee756E
        end
        i32.const 0
        i32.load offset=1055500
        local.set 3
        i32.const 0
        i32.const 0
        i32.store offset=1055500
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        i32.load8_u offset=8
        local.set 2
        local.get 3
        i32.const 1
        i32.store8 offset=8
        local.get 1
        local.get 2
        i32.store8 offset=7
        local.get 2
        br_if 1 (;@1;)
        local.get 1
        i32.const 8
        i32.add
        local.get 3
        i32.const 12
        i32.add
        local.get 0
        call $_ZN3std2io5Write9write_fmt17ha9724c34ed683e1aE
        local.get 1
        i32.load offset=12
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.load8_u offset=8
            local.tee 2
            i32.const 4
            i32.gt_u
            br_if 0 (;@4;)
            local.get 2
            i32.const 3
            i32.ne
            br_if 1 (;@3;)
          end
          local.get 0
          i32.load
          local.set 4
          block  ;; label = @4
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.tee 2
            i32.load
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            call_indirect (type 1)
          end
          block  ;; label = @4
            local.get 2
            i32.load offset=4
            local.tee 5
            i32.eqz
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            local.get 2
            i32.load offset=8
            call $__rust_dealloc
          end
          local.get 0
          i32.const 12
          i32.const 4
          call $__rust_dealloc
        end
        local.get 3
        i32.const 0
        i32.store8 offset=8
        i32.const 0
        i32.load offset=1055500
        local.set 2
        i32.const 0
        local.get 3
        i32.store offset=1055500
        local.get 1
        local.get 2
        i32.store offset=8
        block  ;; label = @3
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 2
          i32.load
          local.tee 3
          i32.const -1
          i32.add
          i32.store
          local.get 3
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          local.get 1
          i32.const 8
          i32.add
          call $_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hf2eeb82ddbcf9fcfE
        end
        i32.const 1
        local.set 2
      end
      local.get 1
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 2
      return
    end
    local.get 1
    i64.const 0
    i64.store offset=20 align=4
    local.get 1
    i64.const 17179869185
    i64.store offset=12 align=4
    local.get 1
    i32.const 1050708
    i32.store offset=8
    local.get 1
    i32.const 7
    i32.add
    local.get 1
    i32.const 8
    i32.add
    call $_ZN4core9panicking13assert_failed17h666a74dd383b19f9E
    unreachable)
  (func $_ZN3std2io5Write9write_fmt17ha9724c34ed683e1aE (type 6) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 4
    i32.store8 offset=8
    local.get 3
    local.get 1
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 8
        i32.add
        i32.const 1049040
        local.get 2
        call $_ZN4core3fmt5write17hbfdffefff34f5cf8E
        br_if 0 (;@2;)
        local.get 0
        i32.const 4
        i32.store8
        local.get 3
        i32.load offset=12
        local.set 2
        block  ;; label = @3
          local.get 3
          i32.load8_u offset=8
          local.tee 1
          i32.const 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 3
          i32.ne
          br_if 2 (;@1;)
        end
        local.get 2
        i32.load
        local.set 0
        block  ;; label = @3
          local.get 2
          i32.const 4
          i32.add
          i32.load
          local.tee 1
          i32.load
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          call_indirect (type 1)
        end
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 4
          local.get 1
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 2
        i32.const 12
        i32.const 4
        call $__rust_dealloc
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 3
        i32.load8_u offset=8
        i32.const 4
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        local.get 3
        i64.load offset=8
        i64.store align=4
        br 1 (;@1;)
      end
      local.get 3
      i32.const 0
      i32.store offset=40
      local.get 3
      i32.const 1
      i32.store offset=28
      local.get 3
      i32.const 1050608
      i32.store offset=24
      local.get 3
      i64.const 4
      i64.store offset=32 align=4
      local.get 3
      i32.const 24
      i32.add
      i32.const 1050616
      call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
      unreachable
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std2io5stdio6_print17h723c1375aa632d4bE (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 6
    i32.store offset=12
    local.get 1
    i32.const 1050424
    i32.store offset=8
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        call $_ZN3std2io5stdio31print_to_buffer_if_capture_used17hda9e217d1ed1bc18E
        br_if 0 (;@2;)
        block  ;; label = @3
          i32.const 0
          i32.load8_u offset=1055448
          i32.const 3
          i32.eq
          br_if 0 (;@3;)
          call $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17h296160441532a998E
        end
        local.get 1
        i32.const 1055416
        i32.store offset=28
        local.get 1
        local.get 1
        i32.const 28
        i32.add
        i32.store offset=40
        local.get 1
        i32.const 16
        i32.add
        local.get 1
        i32.const 40
        i32.add
        local.get 0
        call $_ZN61_$LT$$RF$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_fmt17he26b7575bc123e42E
        local.get 1
        i32.load8_u offset=16
        i32.const 4
        i32.ne
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const 80
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 1
    local.get 1
    i64.load offset=16
    i64.store offset=32
    local.get 1
    i32.const 2
    i32.store offset=44
    local.get 1
    i32.const 1050392
    i32.store offset=40
    local.get 1
    i64.const 2
    i64.store offset=52 align=4
    local.get 1
    i32.const 9
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i32.const 32
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=72
    local.get 1
    i32.const 8
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=64
    local.get 1
    local.get 1
    i32.const 64
    i32.add
    i32.store offset=48
    local.get 1
    i32.const 40
    i32.add
    i32.const 1050408
    call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
    unreachable)
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h74e8f241f9389f0bE (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 0
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
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h6c41788b49cc4567E
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
  (func $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17ha5c2072c068162b8E (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    i32.load offset=8
    local.get 1
    local.get 2
    call $_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$9write_all17ha9870daa825a49adE
    block  ;; label = @1
      local.get 3
      i32.load8_u offset=8
      local.tee 2
      i32.const 4
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.set 4
      local.get 3
      i64.load offset=8
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 1
          i32.const 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 4
        i32.load
        local.set 6
        block  ;; label = @3
          local.get 4
          i32.const 4
          i32.add
          i32.load
          local.tee 1
          i32.load
          local.tee 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          local.get 7
          call_indirect (type 1)
        end
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 7
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          local.get 7
          local.get 1
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 4
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 0
      local.get 5
      i64.store align=4
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 2
    i32.const 4
    i32.ne)
  (func $_ZN3std5panic19get_backtrace_style17h2f1f03419d97519dE (type 8) (result i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load8_u offset=1055452
              br_table 3 (;@2;) 1 (;@4;) 4 (;@1;) 2 (;@3;) 0 (;@5;)
            end
            i32.const 1048788
            i32.const 40
            i32.const 1050656
            call $_ZN4core9panicking5panic17h864593189f35325fE
            unreachable
          end
          i32.const 0
          local.set 1
          br 2 (;@1;)
        end
        i32.const 2
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      i32.const 4
      i32.add
      i32.const 1049329
      i32.const 14
      call $_ZN3std3env7_var_os17ha50bf6cb63644954E
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=4
          local.tee 2
          i32.const -2147483648
          i32.eq
          br_if 0 (;@3;)
          i32.const 0
          local.set 1
          local.get 0
          i32.load offset=8
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=12
                i32.const -1
                i32.add
                br_table 0 (;@6;) 2 (;@4;) 2 (;@4;) 1 (;@5;) 2 (;@4;)
              end
              local.get 3
              i32.load8_u
              i32.const 48
              i32.eq
              i32.const 1
              i32.shl
              local.set 1
              br 1 (;@4;)
            end
            local.get 3
            i32.const 1050672
            i32.const 4
            call $memcmp
            i32.eqz
            local.set 1
          end
          block  ;; label = @4
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 2
            i32.const 1
            call $__rust_dealloc
          end
          local.get 1
          i32.const 1
          i32.add
          local.set 2
          br 1 (;@2;)
        end
        i32.const 3
        local.set 2
        i32.const 2
        local.set 1
      end
      i32.const 0
      local.get 2
      i32.store8 offset=1055452
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN3std7process5abort17h5b698d250ade9076E (type 0)
    call $_ZN3std3sys3pal4wasi7helpers14abort_internal17h4701a3d5a8d78f8bE
    unreachable)
  (func $_ZN3std3sys4sync4once10no_threads4Once4call17h336fb5c56707ec60E (type 1) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load8_u offset=1055448
              local.tee 2
              i32.const 2
              i32.lt_u
              br_if 0 (;@5;)
              local.get 2
              i32.const -2
              i32.add
              br_table 4 (;@1;) 1 (;@4;) 4 (;@1;)
            end
            i32.const 0
            i32.const 2
            i32.store8 offset=1055448
            local.get 0
            i32.load
            local.set 2
            local.get 0
            i32.const 0
            i32.store
            local.get 2
            i32.eqz
            br_if 1 (;@3;)
            i32.const 0
            i32.load8_u offset=1055413
            drop
            i32.const 1024
            i32.const 1
            call $__rust_alloc
            local.tee 0
            i32.eqz
            br_if 2 (;@2;)
            local.get 2
            i64.const 0
            i64.store align=4
            local.get 2
            i32.const 0
            i32.store8 offset=28
            local.get 2
            i32.const 0
            i32.store offset=24
            local.get 2
            local.get 0
            i32.store offset=20
            local.get 2
            i64.const 4398046511104
            i64.store offset=12 align=4
            local.get 2
            i32.const 8
            i32.add
            i32.const 0
            i32.store8
            i32.const 0
            i32.const 3
            i32.store8 offset=1055448
          end
          local.get 1
          i32.const 32
          i32.add
          global.set $__stack_pointer
          return
        end
        i32.const 1050836
        call $_ZN4core6option13unwrap_failed17h165f1460d4b9b2e4E
        unreachable
      end
      i32.const 1
      i32.const 1024
      call $_ZN5alloc7raw_vec12handle_error17h7e30ce1f05b9350bE
      unreachable
    end
    local.get 1
    i32.const 0
    i32.store offset=24
    local.get 1
    i32.const 1
    i32.store offset=12
    local.get 1
    i32.const 1052020
    i32.store offset=8
    local.get 1
    i64.const 4
    i64.store offset=16 align=4
    local.get 1
    i32.const 8
    i32.add
    i32.const 1050820
    call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
    unreachable)
  (func $_ZN3std4sync9once_lock17OnceLock$LT$T$GT$10initialize17hc9d6380fcefc28e3E (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1055448
      i32.const 3
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      i32.const 1055416
      i32.store offset=4
      local.get 1
      local.get 0
      i32.store
      local.get 1
      local.get 1
      i32.const 15
      i32.add
      i32.store offset=8
      local.get 1
      call $_ZN3std3sys4sync4once10no_threads4Once4call17hb751e19e493c252bE
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $_ZN3std3sys4sync4once10no_threads4Once4call17hb751e19e493c252bE (type 1) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load8_u offset=1055448
            local.tee 2
            i32.const 2
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            i32.const -2
            i32.add
            br_table 3 (;@1;) 1 (;@3;) 3 (;@1;)
          end
          i32.const 0
          i32.const 2
          i32.store8 offset=1055448
          local.get 0
          i32.load
          local.set 2
          local.get 0
          i32.const 0
          i32.store
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=4
          local.set 0
          local.get 2
          i32.const 1
          i32.store8
          local.get 0
          i32.const 8
          i32.add
          i32.const 0
          i32.store8
          local.get 0
          i64.const 0
          i64.store align=4
          local.get 0
          i32.const 0
          i32.store8 offset=28
          local.get 0
          i64.const 1
          i64.store offset=20 align=4
          local.get 0
          i64.const 0
          i64.store offset=12 align=4
          i32.const 0
          i32.const 3
          i32.store8 offset=1055448
        end
        local.get 1
        i32.const 32
        i32.add
        global.set $__stack_pointer
        return
      end
      i32.const 1050836
      call $_ZN4core6option13unwrap_failed17h165f1460d4b9b2e4E
      unreachable
    end
    local.get 1
    i32.const 0
    i32.store offset=24
    local.get 1
    i32.const 1
    i32.store offset=12
    local.get 1
    i32.const 1052020
    i32.store offset=8
    local.get 1
    i64.const 4
    i64.store offset=16 align=4
    local.get 1
    i32.const 8
    i32.add
    i32.const 1050820
    call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
    unreachable)
  (func $_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17hc45bdf1c0d25ed27E (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load offset=24
    local.set 3
    local.get 1
    i32.load offset=20
    local.set 4
    local.get 0
    i32.load8_u
    local.set 0
    local.get 2
    i32.const 4
    i32.add
    call $_ZN3std3env11current_dir17h292161054bcb7ffeE
    local.get 2
    i64.load offset=8 align=4
    local.set 5
    block  ;; label = @1
      local.get 2
      i32.load offset=4
      local.tee 1
      i32.const -2147483648
      i32.ne
      br_if 0 (;@1;)
      local.get 5
      i64.const 255
      i64.and
      i64.const 3
      i64.ne
      br_if 0 (;@1;)
      local.get 5
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.tee 6
      i32.load
      local.set 7
      block  ;; label = @2
        local.get 6
        i32.const 4
        i32.add
        i32.load
        local.tee 8
        i32.load
        local.tee 9
        i32.eqz
        br_if 0 (;@2;)
        local.get 7
        local.get 9
        call_indirect (type 1)
      end
      block  ;; label = @2
        local.get 8
        i32.load offset=4
        local.tee 9
        i32.eqz
        br_if 0 (;@2;)
        local.get 7
        local.get 9
        local.get 8
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 6
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 1051008
          i32.const 17
          local.get 3
          i32.load offset=12
          local.tee 3
          call_indirect (type 5)
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 0
            i32.const 255
            i32.and
            br_if 0 (;@4;)
            local.get 4
            i32.const 1051025
            i32.const 88
            local.get 3
            call_indirect (type 5)
            br_if 1 (;@3;)
          end
          i32.const 0
          local.set 4
          local.get 1
          i32.const -2147483648
          i32.or
          i32.const -2147483648
          i32.eq
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        i32.const 1
        local.set 4
        local.get 1
        i32.const -2147483648
        i32.or
        i32.const -2147483648
        i32.eq
        br_if 1 (;@1;)
      end
      local.get 5
      i32.wrap_i64
      local.get 1
      i32.const 1
      call $__rust_dealloc
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h575fb82445d56667E (type 1) (param i32)
    local.get 0
    call $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h0187e6969a85aab0E
    unreachable)
  (func $_ZN3std9panicking19begin_panic_handler28_$u7b$$u7b$closure$u7d$$u7d$17h0187e6969a85aab0E (type 1) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.tee 2
    i32.load offset=12
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.load offset=4
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;)
          end
          local.get 3
          br_if 1 (;@2;)
          i32.const 1
          local.set 2
          i32.const 0
          local.set 3
          br 2 (;@1;)
        end
        local.get 3
        br_if 0 (;@2;)
        local.get 2
        i32.load
        local.tee 2
        i32.load offset=4
        local.set 3
        local.get 2
        i32.load
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      i32.store offset=12
      local.get 1
      i32.const -2147483648
      i32.store
      local.get 1
      i32.const 1051500
      local.get 0
      i32.load offset=4
      local.tee 2
      i32.load offset=8
      local.get 0
      i32.load offset=8
      local.get 2
      i32.load8_u offset=16
      local.get 2
      i32.load8_u offset=17
      call $_ZN3std9panicking20rust_panic_with_hook17h50e657195af0239cE
      unreachable
    end
    local.get 1
    local.get 3
    i32.store offset=4
    local.get 1
    local.get 2
    i32.store
    local.get 1
    i32.const 1051480
    local.get 0
    i32.load offset=4
    local.tee 2
    i32.load offset=8
    local.get 0
    i32.load offset=8
    local.get 2
    i32.load8_u offset=16
    local.get 2
    i32.load8_u offset=17
    call $_ZN3std9panicking20rust_panic_with_hook17h50e657195af0239cE
    unreachable)
  (func $_ZN3std5alloc24default_alloc_error_hook17h657d59eb5b8b6cdfE (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      i32.const 0
      i32.load8_u offset=1055412
      br_if 0 (;@1;)
      local.get 2
      i32.const 2
      i32.store offset=12
      local.get 2
      i32.const 1051148
      i32.store offset=8
      local.get 2
      i64.const 1
      i64.store offset=20 align=4
      local.get 2
      i32.const 10
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 2
      i32.const 40
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=32
      local.get 2
      local.get 1
      i32.store offset=40
      local.get 2
      local.get 2
      i32.const 32
      i32.add
      i32.store offset=16
      local.get 2
      local.get 2
      i32.const 47
      i32.add
      local.get 2
      i32.const 8
      i32.add
      call $_ZN3std2io5Write9write_fmt17had48db4995c7a5a8E
      local.get 2
      i32.load offset=4
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load8_u
          local.tee 1
          i32.const 4
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 3
        i32.load
        local.set 4
        block  ;; label = @3
          local.get 3
          i32.const 4
          i32.add
          i32.load
          local.tee 1
          i32.load
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          call_indirect (type 1)
        end
        block  ;; label = @3
          local.get 1
          i32.load offset=4
          local.tee 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          local.get 1
          i32.load offset=8
          call $__rust_dealloc
        end
        local.get 3
        i32.const 12
        i32.const 4
        call $__rust_dealloc
      end
      local.get 2
      i32.const 48
      i32.add
      global.set $__stack_pointer
      return
    end
    local.get 2
    i32.const 2
    i32.store offset=12
    local.get 2
    i32.const 1051180
    i32.store offset=8
    local.get 2
    i64.const 1
    i64.store offset=20 align=4
    local.get 2
    local.get 1
    i32.store
    local.get 2
    i32.const 10
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 2
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 2
    i32.const 8
    i32.add
    i32.const 1051220
    call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
    unreachable)
  (func $__rdl_alloc (type 4) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 8
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          local.get 0
          i32.le_u
          br_if 1 (;@2;)
        end
        local.get 2
        i32.const 0
        i32.store offset=12
        local.get 2
        i32.const 12
        i32.add
        local.get 1
        i32.const 4
        local.get 1
        i32.const 4
        i32.gt_u
        select
        local.get 0
        call $posix_memalign
        local.set 1
        i32.const 0
        local.get 2
        i32.load offset=12
        local.get 1
        select
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      call $malloc
      local.set 1
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $__rdl_dealloc (type 6) (param i32 i32 i32)
    local.get 0
    call $free)
  (func $__rdl_realloc (type 7) (param i32 i32 i32 i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 8
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          i32.le_u
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 5
        local.get 4
        i32.const 0
        i32.store offset=12
        local.get 4
        i32.const 12
        i32.add
        local.get 2
        i32.const 4
        local.get 2
        i32.const 4
        i32.gt_u
        select
        local.get 3
        call $posix_memalign
        br_if 1 (;@1;)
        local.get 4
        i32.load offset=12
        local.tee 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        local.get 0
        local.get 1
        local.get 3
        local.get 1
        local.get 3
        i32.lt_u
        select
        call $memcpy
        local.set 2
        local.get 0
        call $free
        local.get 2
        local.set 5
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      call $realloc
      local.set 5
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 5)
  (func $_ZN3std9panicking12default_hook28_$u7b$$u7b$closure$u7d$$u7d$17h66fa5a68d312208cE (type 6) (param i32 i32 i32)
    (local i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 1051312
    i32.store
    local.get 3
    i64.const 3
    i64.store offset=12 align=4
    local.get 3
    i32.const 8
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 4
    local.get 0
    i64.load32_u offset=8
    i64.or
    i64.store offset=48
    local.get 3
    i32.const 11
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 0
    i64.load32_u offset=4
    i64.or
    i64.store offset=40
    local.get 3
    local.get 4
    local.get 0
    i64.load32_u
    i64.or
    i64.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=8
    local.get 3
    i32.const 4
    i32.store offset=4
    local.get 3
    i32.const 24
    i32.add
    local.get 1
    local.get 3
    local.get 2
    call_indirect (type 6)
    local.get 3
    i32.load offset=28
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load8_u offset=24
        local.tee 6
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 6
        i32.const 3
        i32.ne
        br_if 1 (;@1;)
      end
      local.get 5
      i32.load
      local.set 7
      block  ;; label = @2
        local.get 5
        i32.const 4
        i32.add
        i32.load
        local.tee 6
        i32.load
        local.tee 8
        i32.eqz
        br_if 0 (;@2;)
        local.get 7
        local.get 8
        call_indirect (type 1)
      end
      block  ;; label = @2
        local.get 6
        i32.load offset=4
        local.tee 8
        i32.eqz
        br_if 0 (;@2;)
        local.get 7
        local.get 8
        local.get 6
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 5
      i32.const 12
      i32.const 4
      call $__rust_dealloc
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=12
                i32.load8_u
                br_table 0 (;@6;) 1 (;@5;) 2 (;@4;) 3 (;@3;) 0 (;@6;)
              end
              i32.const 0
              i32.load8_u offset=1055453
              local.set 0
              i32.const 0
              i32.const 1
              i32.store8 offset=1055453
              local.get 3
              local.get 0
              i32.store8
              local.get 0
              br_if 3 (;@2;)
              local.get 3
              i32.const 1
              i32.store offset=36
              local.get 3
              i32.const 1049432
              i32.store offset=32
              local.get 3
              i64.const 1
              i64.store offset=44 align=4
              local.get 3
              i32.const 12
              i64.extend_i32_u
              i64.const 32
              i64.shl
              local.get 3
              i32.const 63
              i32.add
              i64.extend_i32_u
              i64.or
              i64.store
              local.get 3
              i32.const 0
              i32.store8 offset=63
              local.get 3
              local.get 3
              i32.store offset=40
              local.get 3
              i32.const 24
              i32.add
              local.get 1
              local.get 3
              i32.const 32
              i32.add
              local.get 2
              call_indirect (type 6)
              i32.const 0
              i32.const 0
              i32.store8 offset=1055453
              local.get 3
              i32.load offset=28
              local.set 1
              block  ;; label = @6
                local.get 3
                i32.load8_u offset=24
                local.tee 0
                i32.const 4
                i32.gt_u
                br_if 0 (;@6;)
                local.get 0
                i32.const 3
                i32.ne
                br_if 3 (;@3;)
              end
              local.get 1
              i32.load
              local.set 2
              block  ;; label = @6
                local.get 1
                i32.const 4
                i32.add
                i32.load
                local.tee 0
                i32.load
                local.tee 6
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                local.get 6
                call_indirect (type 1)
              end
              block  ;; label = @6
                local.get 0
                i32.load offset=4
                local.tee 6
                i32.eqz
                br_if 0 (;@6;)
                local.get 2
                local.get 6
                local.get 0
                i32.load offset=8
                call $__rust_dealloc
              end
              local.get 1
              i32.const 12
              i32.const 4
              call $__rust_dealloc
              br 2 (;@3;)
            end
            i32.const 0
            i32.load8_u offset=1055453
            local.set 0
            i32.const 0
            i32.const 1
            i32.store8 offset=1055453
            local.get 3
            local.get 0
            i32.store8
            local.get 0
            br_if 3 (;@1;)
            local.get 3
            i32.const 1
            i32.store offset=36
            local.get 3
            i32.const 1049432
            i32.store offset=32
            local.get 3
            i64.const 1
            i64.store offset=44 align=4
            local.get 3
            i32.const 12
            i64.extend_i32_u
            i64.const 32
            i64.shl
            local.get 3
            i32.const 63
            i32.add
            i64.extend_i32_u
            i64.or
            i64.store
            local.get 3
            i32.const 1
            i32.store8 offset=63
            local.get 3
            local.get 3
            i32.store offset=40
            local.get 3
            i32.const 24
            i32.add
            local.get 1
            local.get 3
            i32.const 32
            i32.add
            local.get 2
            call_indirect (type 6)
            i32.const 0
            i32.const 0
            i32.store8 offset=1055453
            local.get 3
            i32.load offset=28
            local.set 1
            block  ;; label = @5
              local.get 3
              i32.load8_u offset=24
              local.tee 0
              i32.const 4
              i32.gt_u
              br_if 0 (;@5;)
              local.get 0
              i32.const 3
              i32.ne
              br_if 2 (;@3;)
            end
            local.get 1
            i32.load
            local.set 2
            block  ;; label = @5
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.tee 0
              i32.load
              local.tee 6
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.get 6
              call_indirect (type 1)
            end
            block  ;; label = @5
              local.get 0
              i32.load offset=4
              local.tee 6
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.get 6
              local.get 0
              i32.load offset=8
              call $__rust_dealloc
            end
            local.get 1
            i32.const 12
            i32.const 4
            call $__rust_dealloc
            br 1 (;@3;)
          end
          i32.const 0
          i32.load8_u offset=1055396
          local.set 0
          i32.const 0
          i32.const 0
          i32.store8 offset=1055396
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          i32.const 0
          i32.store offset=48
          local.get 3
          i32.const 1
          i32.store offset=36
          local.get 3
          i32.const 1051424
          i32.store offset=32
          local.get 3
          i64.const 4
          i64.store offset=40 align=4
          local.get 3
          local.get 1
          local.get 3
          i32.const 32
          i32.add
          local.get 2
          call_indirect (type 6)
          local.get 3
          i32.load offset=4
          local.set 1
          block  ;; label = @4
            local.get 3
            i32.load8_u
            local.tee 0
            i32.const 4
            i32.gt_u
            br_if 0 (;@4;)
            local.get 0
            i32.const 3
            i32.ne
            br_if 1 (;@3;)
          end
          local.get 1
          i32.load
          local.set 2
          block  ;; label = @4
            local.get 1
            i32.const 4
            i32.add
            i32.load
            local.tee 0
            i32.load
            local.tee 6
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 6
            call_indirect (type 1)
          end
          block  ;; label = @4
            local.get 0
            i32.load offset=4
            local.tee 6
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            local.get 6
            local.get 0
            i32.load offset=8
            call $__rust_dealloc
          end
          local.get 1
          i32.const 12
          i32.const 4
          call $__rust_dealloc
        end
        local.get 3
        i32.const 64
        i32.add
        global.set $__stack_pointer
        return
      end
      local.get 3
      i64.const 0
      i64.store offset=44 align=4
      local.get 3
      i64.const 17179869185
      i64.store offset=36 align=4
      local.get 3
      i32.const 1050708
      i32.store offset=32
      local.get 3
      local.get 3
      i32.const 32
      i32.add
      call $_ZN4core9panicking13assert_failed17h666a74dd383b19f9E
      unreachable
    end
    local.get 3
    i64.const 0
    i64.store offset=44 align=4
    local.get 3
    i64.const 17179869185
    i64.store offset=36 align=4
    local.get 3
    i32.const 1050708
    i32.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    call $_ZN4core9panicking13assert_failed17h666a74dd383b19f9E
    unreachable)
  (func $rust_begin_unwind (type 1) (param i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 2
      br_if 0 (;@1;)
      i32.const 1051432
      call $_ZN4core6option13unwrap_failed17h165f1460d4b9b2e4E
      unreachable
    end
    local.get 1
    local.get 0
    i32.load offset=12
    i32.store offset=12
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    i32.const 4
    i32.add
    call $_ZN3std10sys_common9backtrace26__rust_end_short_backtrace17h575fb82445d56667E
    unreachable)
  (func $_ZN102_$LT$std..panicking..begin_panic_handler..FormatStringPayload$u20$as$u20$core..panic..PanicPayload$GT$8take_box17h8635c8c220e838ecE (type 2) (param i32 i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      i32.load
      i32.const -2147483648
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 36
      i32.add
      i32.const 8
      i32.add
      local.tee 4
      i32.const 0
      i32.store
      local.get 2
      i64.const 4294967296
      i64.store offset=36 align=4
      local.get 2
      i32.const 36
      i32.add
      i32.const 1049016
      local.get 3
      call $_ZN4core3fmt5write17hbfdffefff34f5cf8E
      drop
      local.get 2
      i32.const 24
      i32.add
      i32.const 8
      i32.add
      local.get 4
      i32.load
      local.tee 3
      i32.store
      local.get 2
      local.get 2
      i64.load offset=36 align=4
      local.tee 5
      i64.store offset=24
      local.get 1
      i32.const 8
      i32.add
      local.get 3
      i32.store
      local.get 1
      local.get 5
      i64.store align=4
    end
    local.get 1
    i64.load align=4
    local.set 5
    local.get 1
    i64.const 4294967296
    i64.store align=4
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.tee 3
    local.get 1
    i32.const 8
    i32.add
    local.tee 1
    i32.load
    i32.store
    local.get 1
    i32.const 0
    i32.store
    i32.const 0
    i32.load8_u offset=1055413
    drop
    local.get 2
    local.get 5
    i64.store offset=8
    block  ;; label = @1
      i32.const 12
      i32.const 4
      call $__rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 4
      i32.const 12
      call $_ZN5alloc5alloc18handle_alloc_error17h1200fd4682b58446E
      unreachable
    end
    local.get 1
    local.get 2
    i64.load offset=8
    i64.store align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 3
    i32.load
    i32.store
    local.get 0
    i32.const 1051448
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $_ZN102_$LT$std..panicking..begin_panic_handler..FormatStringPayload$u20$as$u20$core..panic..PanicPayload$GT$3get17h1d02672a793994e3E (type 2) (param i32 i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      i32.load
      i32.const -2147483648
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 20
      i32.add
      i32.const 8
      i32.add
      local.tee 4
      i32.const 0
      i32.store
      local.get 2
      i64.const 4294967296
      i64.store offset=20 align=4
      local.get 2
      i32.const 20
      i32.add
      i32.const 1049016
      local.get 3
      call $_ZN4core3fmt5write17hbfdffefff34f5cf8E
      drop
      local.get 2
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      local.get 4
      i32.load
      local.tee 3
      i32.store
      local.get 2
      local.get 2
      i64.load offset=20 align=4
      local.tee 5
      i64.store offset=8
      local.get 1
      i32.const 8
      i32.add
      local.get 3
      i32.store
      local.get 1
      local.get 5
      i64.store align=4
    end
    local.get 0
    i32.const 1051448
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN99_$LT$std..panicking..begin_panic_handler..StaticStrPayload$u20$as$u20$core..panic..PanicPayload$GT$8take_box17hb58f6b3c6b343637E (type 2) (param i32 i32)
    (local i32 i32)
    i32.const 0
    i32.load8_u offset=1055413
    drop
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 3
    block  ;; label = @1
      i32.const 8
      i32.const 4
      call $__rust_alloc
      local.tee 1
      br_if 0 (;@1;)
      i32.const 4
      i32.const 8
      call $_ZN5alloc5alloc18handle_alloc_error17h1200fd4682b58446E
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1051464
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN99_$LT$std..panicking..begin_panic_handler..StaticStrPayload$u20$as$u20$core..panic..PanicPayload$GT$3get17hc959c2040fba4703E (type 2) (param i32 i32)
    local.get 0
    i32.const 1051464
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $_ZN3std9panicking20rust_panic_with_hook17h50e657195af0239cE (type 11) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    i32.const 0
    i32.const 0
    i32.load offset=1055472
    local.tee 7
    i32.const 1
    i32.add
    i32.store offset=1055472
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 7
                        i32.const 0
                        i32.lt_s
                        br_if 0 (;@10;)
                        i32.const 0
                        i32.load8_u offset=1055492
                        br_if 1 (;@9;)
                        i32.const 0
                        i32.const 1
                        i32.store8 offset=1055492
                        i32.const 0
                        i32.const 0
                        i32.load offset=1055488
                        i32.const 1
                        i32.add
                        i32.store offset=1055488
                        local.get 6
                        local.get 5
                        i32.store8 offset=41
                        local.get 6
                        local.get 4
                        i32.store8 offset=40
                        local.get 6
                        local.get 3
                        i32.store offset=36
                        local.get 6
                        local.get 2
                        i32.store offset=32
                        i32.const 0
                        i32.load offset=1055460
                        local.tee 2
                        i32.const -1
                        i32.le_s
                        br_if 4 (;@6;)
                        i32.const 0
                        local.get 2
                        i32.const 1
                        i32.add
                        i32.store offset=1055460
                        i32.const 0
                        i32.load offset=1055464
                        local.set 2
                        local.get 6
                        i32.const 8
                        i32.add
                        local.get 0
                        local.get 1
                        i32.load offset=16
                        call_indirect (type 2)
                        local.get 6
                        local.get 6
                        i64.load offset=8
                        i64.store offset=24 align=4
                        local.get 2
                        br_if 2 (;@8;)
                        local.get 6
                        i32.const 24
                        i32.add
                        call $_ZN3std9panicking12default_hook17h68409056c7d8af4dE
                        br 3 (;@7;)
                      end
                      local.get 6
                      local.get 5
                      i32.store8 offset=41
                      local.get 6
                      local.get 4
                      i32.store8 offset=40
                      local.get 6
                      local.get 3
                      i32.store offset=36
                      local.get 6
                      local.get 2
                      i32.store offset=32
                      local.get 6
                      i32.const 1051520
                      i32.store offset=28
                      local.get 6
                      i32.const 1
                      i32.store offset=24
                      local.get 6
                      i32.const 2
                      i32.store offset=92
                      local.get 6
                      i32.const 1051588
                      i32.store offset=88
                      local.get 6
                      i64.const 1
                      i64.store offset=100 align=4
                      local.get 6
                      i32.const 13
                      i64.extend_i32_u
                      i64.const 32
                      i64.shl
                      local.get 6
                      i32.const 24
                      i32.add
                      i64.extend_i32_u
                      i64.or
                      i64.store offset=48
                      local.get 6
                      local.get 6
                      i32.const 48
                      i32.add
                      i32.store offset=96
                      local.get 6
                      i32.const 80
                      i32.add
                      local.get 6
                      i32.const 80
                      i32.add
                      local.get 6
                      i32.const 88
                      i32.add
                      call $_ZN3std2io5Write9write_fmt17had48db4995c7a5a8E
                      local.get 6
                      i32.load offset=84
                      local.set 2
                      block  ;; label = @10
                        local.get 6
                        i32.load8_u offset=80
                        local.tee 6
                        i32.const 4
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 6
                        i32.const 3
                        i32.ne
                        br_if 9 (;@1;)
                      end
                      local.get 2
                      i32.load
                      local.set 4
                      block  ;; label = @10
                        local.get 2
                        i32.const 4
                        i32.add
                        i32.load
                        local.tee 6
                        i32.load
                        local.tee 5
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 4
                        local.get 5
                        call_indirect (type 1)
                      end
                      block  ;; label = @10
                        local.get 6
                        i32.load offset=4
                        local.tee 5
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 4
                        local.get 5
                        local.get 6
                        i32.load offset=8
                        call $__rust_dealloc
                      end
                      local.get 2
                      i32.const 12
                      i32.const 4
                      call $__rust_dealloc
                      br 8 (;@1;)
                    end
                    local.get 2
                    br_if 4 (;@4;)
                    br 5 (;@3;)
                  end
                  i32.const 0
                  i32.load offset=1055464
                  local.get 6
                  i32.const 24
                  i32.add
                  i32.const 0
                  i32.load offset=1055468
                  i32.load offset=20
                  call_indirect (type 2)
                end
                i32.const 0
                i32.const 0
                i32.load offset=1055460
                i32.const -1
                i32.add
                i32.store offset=1055460
                i32.const 0
                i32.const 0
                i32.store8 offset=1055492
                local.get 4
                i32.eqz
                br_if 1 (;@5;)
                local.get 0
                local.get 1
                call $rust_panic
                unreachable
              end
              local.get 6
              i32.const 1
              i32.store offset=92
              local.get 6
              i32.const 1052076
              i32.store offset=88
              local.get 6
              i64.const 0
              i64.store offset=100 align=4
              local.get 6
              local.get 6
              i32.const 80
              i32.add
              i32.store offset=96
              local.get 6
              i32.const 48
              i32.add
              local.get 6
              i32.const 80
              i32.add
              local.get 6
              i32.const 88
              i32.add
              call $_ZN3std2io5Write9write_fmt17had48db4995c7a5a8E
              local.get 6
              i32.load8_u offset=48
              local.get 6
              i32.load offset=52
              call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h5d854e0bba0c750bE
              call $_ZN3std3sys3pal4wasi7helpers14abort_internal17h4701a3d5a8d78f8bE
              unreachable
            end
            local.get 6
            i32.const 0
            i32.store offset=104
            local.get 6
            i32.const 1
            i32.store offset=92
            local.get 6
            i32.const 1051720
            i32.store offset=88
            local.get 6
            i64.const 4
            i64.store offset=96 align=4
            local.get 6
            i32.const 48
            i32.add
            local.get 6
            i32.const 80
            i32.add
            local.get 6
            i32.const 88
            i32.add
            call $_ZN3std2io5Write9write_fmt17had48db4995c7a5a8E
            local.get 6
            i32.load8_u offset=48
            local.get 6
            i32.load offset=52
            call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h5d854e0bba0c750bE
            call $_ZN3std3sys3pal4wasi7helpers14abort_internal17h4701a3d5a8d78f8bE
            unreachable
          end
          local.get 2
          i32.load offset=12
          local.set 7
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=4
                br_table 0 (;@6;) 1 (;@5;) 3 (;@3;)
              end
              local.get 7
              br_if 2 (;@3;)
              i32.const 0
              local.set 2
              i32.const 1
              local.set 7
              br 1 (;@4;)
            end
            local.get 7
            br_if 1 (;@3;)
            local.get 2
            i32.load
            local.tee 7
            i32.load offset=4
            local.set 2
            local.get 7
            i32.load
            local.set 7
          end
          local.get 6
          local.get 2
          i32.store offset=20
          local.get 6
          local.get 7
          i32.store offset=16
          local.get 6
          i64.const 0
          i64.store offset=36 align=4
          local.get 6
          i64.const 17179869185
          i64.store offset=28 align=4
          local.get 6
          local.get 6
          i32.const 16
          i32.add
          i32.store offset=24
          local.get 6
          i32.const 24
          i32.add
          local.set 2
          br 1 (;@2;)
        end
        i32.const 0
        local.set 2
        local.get 6
        i32.const 0
        i32.store offset=16
        local.get 6
        i32.const 0
        i32.store offset=24
      end
      local.get 6
      local.get 5
      i32.store8 offset=65
      local.get 6
      local.get 4
      i32.store8 offset=64
      local.get 6
      local.get 3
      i32.store offset=60
      local.get 6
      local.get 2
      i32.store offset=56
      local.get 6
      i32.const 1051520
      i32.store offset=52
      local.get 6
      i32.const 1
      i32.store offset=48
      local.get 6
      i32.const 2
      i32.store offset=92
      local.get 6
      i32.const 1051656
      i32.store offset=88
      local.get 6
      i64.const 1
      i64.store offset=100 align=4
      local.get 6
      i32.const 13
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 6
      i32.const 48
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=80
      local.get 6
      local.get 6
      i32.const 80
      i32.add
      i32.store offset=96
      local.get 6
      i32.const 72
      i32.add
      local.get 6
      i32.const 80
      i32.add
      local.get 6
      i32.const 88
      i32.add
      call $_ZN3std2io5Write9write_fmt17had48db4995c7a5a8E
      local.get 6
      i32.load offset=76
      local.set 2
      block  ;; label = @2
        local.get 6
        i32.load8_u offset=72
        local.tee 6
        i32.const 4
        i32.gt_u
        br_if 0 (;@2;)
        local.get 6
        i32.const 3
        i32.ne
        br_if 1 (;@1;)
      end
      local.get 2
      i32.load
      local.set 4
      block  ;; label = @2
        local.get 2
        i32.const 4
        i32.add
        i32.load
        local.tee 6
        i32.load
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 5
        call_indirect (type 1)
      end
      block  ;; label = @2
        local.get 6
        i32.load offset=4
        local.tee 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 4
        local.get 5
        local.get 6
        i32.load offset=8
        call $__rust_dealloc
      end
      local.get 2
      i32.const 12
      i32.const 4
      call $__rust_dealloc
      call $_ZN3std3sys3pal4wasi7helpers14abort_internal17h4701a3d5a8d78f8bE
      unreachable
    end
    call $_ZN3std3sys3pal4wasi7helpers14abort_internal17h4701a3d5a8d78f8bE
    unreachable)
  (func $rust_panic (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    local.get 1
    call $__rust_start_panic
    i32.store offset=12
    local.get 2
    i32.const 2
    i32.store offset=28
    local.get 2
    i32.const 1051784
    i32.store offset=24
    local.get 2
    i64.const 1
    i64.store offset=36 align=4
    local.get 2
    i32.const 10
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 2
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=48
    local.get 2
    local.get 2
    i32.const 48
    i32.add
    i32.store offset=32
    local.get 2
    i32.const 16
    i32.add
    local.get 2
    i32.const 63
    i32.add
    local.get 2
    i32.const 24
    i32.add
    call $_ZN3std2io5Write9write_fmt17had48db4995c7a5a8E
    local.get 2
    i32.load8_u offset=16
    local.get 2
    i32.load offset=20
    call $_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h5d854e0bba0c750bE
    call $_ZN3std3sys3pal4wasi7helpers14abort_internal17h4701a3d5a8d78f8bE
    unreachable)
  (func $_ZN3std5alloc8rust_oom17h6d1ba1a2793f1284E (type 2) (param i32 i32)
    (local i32)
    local.get 0
    local.get 1
    i32.const 0
    i32.load offset=1055456
    local.tee 2
    i32.const 14
    local.get 2
    select
    call_indirect (type 2)
    call $_ZN3std7process5abort17h5b698d250ade9076E
    unreachable)
  (func $__rg_oom (type 2) (param i32 i32)
    local.get 1
    local.get 0
    call $_ZN3std5alloc8rust_oom17h6d1ba1a2793f1284E
    unreachable)
  (func $__rust_start_panic (type 4) (param i32 i32) (result i32)
    unreachable
    unreachable)
  (func $_ZN4wasi13lib_generated8fd_write17hbe069b13f96a29b1E (type 9) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        local.get 3
        local.get 4
        i32.const 12
        i32.add
        call $_ZN4wasi13lib_generated22wasi_snapshot_preview18fd_write17hf054d878a92dc86eE
        local.tee 3
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.load offset=12
        i32.store offset=4
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      local.get 3
      i32.store16 offset=2
      i32.const 1
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store16
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $malloc (type 3) (param i32) (result i32)
    local.get 0
    call $dlmalloc)
  (func $dlmalloc (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1055532
                            local.tee 2
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1055980
                              local.tee 3
                              br_if 0 (;@13;)
                              i32.const 0
                              i64.const -1
                              i64.store offset=1055992 align=4
                              i32.const 0
                              i64.const 281474976776192
                              i64.store offset=1055984 align=4
                              i32.const 0
                              local.get 1
                              i32.const 8
                              i32.add
                              i32.const -16
                              i32.and
                              i32.const 1431655768
                              i32.xor
                              local.tee 3
                              i32.store offset=1055980
                              i32.const 0
                              i32.const 0
                              i32.store offset=1056000
                              i32.const 0
                              i32.const 0
                              i32.store offset=1055952
                            end
                            i32.const 1114112
                            i32.const 1056048
                            i32.lt_u
                            br_if 1 (;@11;)
                            i32.const 0
                            local.set 2
                            i32.const 1114112
                            i32.const 1056048
                            i32.sub
                            i32.const 89
                            i32.lt_u
                            br_if 0 (;@12;)
                            i32.const 0
                            local.set 4
                            i32.const 0
                            i32.const 1056048
                            i32.store offset=1055956
                            i32.const 0
                            i32.const 1056048
                            i32.store offset=1055524
                            i32.const 0
                            local.get 3
                            i32.store offset=1055544
                            i32.const 0
                            i32.const -1
                            i32.store offset=1055540
                            i32.const 0
                            i32.const 1114112
                            i32.const 1056048
                            i32.sub
                            i32.store offset=1055960
                            loop  ;; label = @13
                              local.get 4
                              i32.const 1055568
                              i32.add
                              local.get 4
                              i32.const 1055556
                              i32.add
                              local.tee 3
                              i32.store
                              local.get 3
                              local.get 4
                              i32.const 1055548
                              i32.add
                              local.tee 5
                              i32.store
                              local.get 4
                              i32.const 1055560
                              i32.add
                              local.get 5
                              i32.store
                              local.get 4
                              i32.const 1055576
                              i32.add
                              local.get 4
                              i32.const 1055564
                              i32.add
                              local.tee 5
                              i32.store
                              local.get 5
                              local.get 3
                              i32.store
                              local.get 4
                              i32.const 1055584
                              i32.add
                              local.get 4
                              i32.const 1055572
                              i32.add
                              local.tee 3
                              i32.store
                              local.get 3
                              local.get 5
                              i32.store
                              local.get 4
                              i32.const 1055580
                              i32.add
                              local.get 3
                              i32.store
                              local.get 4
                              i32.const 32
                              i32.add
                              local.tee 4
                              i32.const 256
                              i32.ne
                              br_if 0 (;@13;)
                            end
                            i32.const 1056048
                            i32.const -8
                            i32.const 1056048
                            i32.sub
                            i32.const 15
                            i32.and
                            local.tee 4
                            i32.add
                            local.tee 2
                            i32.const 1114112
                            i32.const 1056048
                            i32.sub
                            i32.const -56
                            i32.add
                            local.tee 3
                            local.get 4
                            i32.sub
                            local.tee 4
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 0
                            i32.const 0
                            i32.load offset=1055996
                            i32.store offset=1055536
                            i32.const 0
                            local.get 4
                            i32.store offset=1055520
                            i32.const 0
                            local.get 2
                            i32.store offset=1055532
                            local.get 3
                            i32.const 1056048
                            i32.add
                            i32.const 4
                            i32.add
                            i32.const 56
                            i32.store
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 0
                              i32.const 236
                              i32.gt_u
                              br_if 0 (;@13;)
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=1055508
                                local.tee 6
                                i32.const 16
                                local.get 0
                                i32.const 19
                                i32.add
                                i32.const 496
                                i32.and
                                local.get 0
                                i32.const 11
                                i32.lt_u
                                select
                                local.tee 7
                                i32.const 3
                                i32.shr_u
                                local.tee 3
                                i32.shr_u
                                local.tee 4
                                i32.const 3
                                i32.and
                                i32.eqz
                                br_if 0 (;@14;)
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 4
                                    i32.const 1
                                    i32.and
                                    local.get 3
                                    i32.or
                                    i32.const 1
                                    i32.xor
                                    local.tee 5
                                    i32.const 3
                                    i32.shl
                                    local.tee 3
                                    i32.const 1055548
                                    i32.add
                                    local.tee 4
                                    local.get 3
                                    i32.const 1055556
                                    i32.add
                                    i32.load
                                    local.tee 3
                                    i32.load offset=8
                                    local.tee 7
                                    i32.ne
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.get 6
                                    i32.const -2
                                    local.get 5
                                    i32.rotl
                                    i32.and
                                    i32.store offset=1055508
                                    br 1 (;@15;)
                                  end
                                  local.get 4
                                  local.get 7
                                  i32.store offset=8
                                  local.get 7
                                  local.get 4
                                  i32.store offset=12
                                end
                                local.get 3
                                i32.const 8
                                i32.add
                                local.set 4
                                local.get 3
                                local.get 5
                                i32.const 3
                                i32.shl
                                local.tee 5
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 3
                                local.get 5
                                i32.add
                                local.tee 3
                                local.get 3
                                i32.load offset=4
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                br 13 (;@1;)
                              end
                              local.get 7
                              i32.const 0
                              i32.load offset=1055516
                              local.tee 8
                              i32.le_u
                              br_if 1 (;@12;)
                              block  ;; label = @14
                                local.get 4
                                i32.eqz
                                br_if 0 (;@14;)
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 4
                                    local.get 3
                                    i32.shl
                                    i32.const 2
                                    local.get 3
                                    i32.shl
                                    local.tee 4
                                    i32.const 0
                                    local.get 4
                                    i32.sub
                                    i32.or
                                    i32.and
                                    i32.ctz
                                    local.tee 3
                                    i32.const 3
                                    i32.shl
                                    local.tee 4
                                    i32.const 1055548
                                    i32.add
                                    local.tee 5
                                    local.get 4
                                    i32.const 1055556
                                    i32.add
                                    i32.load
                                    local.tee 4
                                    i32.load offset=8
                                    local.tee 0
                                    i32.ne
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.get 6
                                    i32.const -2
                                    local.get 3
                                    i32.rotl
                                    i32.and
                                    local.tee 6
                                    i32.store offset=1055508
                                    br 1 (;@15;)
                                  end
                                  local.get 5
                                  local.get 0
                                  i32.store offset=8
                                  local.get 0
                                  local.get 5
                                  i32.store offset=12
                                end
                                local.get 4
                                local.get 7
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                local.get 4
                                local.get 3
                                i32.const 3
                                i32.shl
                                local.tee 3
                                i32.add
                                local.get 3
                                local.get 7
                                i32.sub
                                local.tee 5
                                i32.store
                                local.get 4
                                local.get 7
                                i32.add
                                local.tee 0
                                local.get 5
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                block  ;; label = @15
                                  local.get 8
                                  i32.eqz
                                  br_if 0 (;@15;)
                                  local.get 8
                                  i32.const -8
                                  i32.and
                                  i32.const 1055548
                                  i32.add
                                  local.set 7
                                  i32.const 0
                                  i32.load offset=1055528
                                  local.set 3
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 6
                                      i32.const 1
                                      local.get 8
                                      i32.const 3
                                      i32.shr_u
                                      i32.shl
                                      local.tee 9
                                      i32.and
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.get 6
                                      local.get 9
                                      i32.or
                                      i32.store offset=1055508
                                      local.get 7
                                      local.set 9
                                      br 1 (;@16;)
                                    end
                                    local.get 7
                                    i32.load offset=8
                                    local.set 9
                                  end
                                  local.get 9
                                  local.get 3
                                  i32.store offset=12
                                  local.get 7
                                  local.get 3
                                  i32.store offset=8
                                  local.get 3
                                  local.get 7
                                  i32.store offset=12
                                  local.get 3
                                  local.get 9
                                  i32.store offset=8
                                end
                                local.get 4
                                i32.const 8
                                i32.add
                                local.set 4
                                i32.const 0
                                local.get 0
                                i32.store offset=1055528
                                i32.const 0
                                local.get 5
                                i32.store offset=1055516
                                br 13 (;@1;)
                              end
                              i32.const 0
                              i32.load offset=1055512
                              local.tee 10
                              i32.eqz
                              br_if 1 (;@12;)
                              local.get 10
                              i32.ctz
                              i32.const 2
                              i32.shl
                              i32.const 1055812
                              i32.add
                              i32.load
                              local.tee 0
                              i32.load offset=4
                              i32.const -8
                              i32.and
                              local.get 7
                              i32.sub
                              local.set 3
                              local.get 0
                              local.set 5
                              block  ;; label = @14
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 5
                                    i32.load offset=16
                                    local.tee 4
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 20
                                    i32.add
                                    i32.load
                                    local.tee 4
                                    i32.eqz
                                    br_if 2 (;@14;)
                                  end
                                  local.get 4
                                  i32.load offset=4
                                  i32.const -8
                                  i32.and
                                  local.get 7
                                  i32.sub
                                  local.tee 5
                                  local.get 3
                                  local.get 5
                                  local.get 3
                                  i32.lt_u
                                  local.tee 5
                                  select
                                  local.set 3
                                  local.get 4
                                  local.get 0
                                  local.get 5
                                  select
                                  local.set 0
                                  local.get 4
                                  local.set 5
                                  br 0 (;@15;)
                                end
                              end
                              local.get 0
                              i32.load offset=24
                              local.set 11
                              block  ;; label = @14
                                local.get 0
                                i32.load offset=12
                                local.tee 9
                                local.get 0
                                i32.eq
                                br_if 0 (;@14;)
                                local.get 0
                                i32.load offset=8
                                local.tee 4
                                i32.const 0
                                i32.load offset=1055524
                                i32.lt_u
                                drop
                                local.get 9
                                local.get 4
                                i32.store offset=8
                                local.get 4
                                local.get 9
                                i32.store offset=12
                                br 12 (;@2;)
                              end
                              block  ;; label = @14
                                local.get 0
                                i32.const 20
                                i32.add
                                local.tee 5
                                i32.load
                                local.tee 4
                                br_if 0 (;@14;)
                                local.get 0
                                i32.load offset=16
                                local.tee 4
                                i32.eqz
                                br_if 4 (;@10;)
                                local.get 0
                                i32.const 16
                                i32.add
                                local.set 5
                              end
                              loop  ;; label = @14
                                local.get 5
                                local.set 2
                                local.get 4
                                local.tee 9
                                i32.const 20
                                i32.add
                                local.tee 5
                                i32.load
                                local.tee 4
                                br_if 0 (;@14;)
                                local.get 9
                                i32.const 16
                                i32.add
                                local.set 5
                                local.get 9
                                i32.load offset=16
                                local.tee 4
                                br_if 0 (;@14;)
                              end
                              local.get 2
                              i32.const 0
                              i32.store
                              br 11 (;@2;)
                            end
                            i32.const -1
                            local.set 7
                            local.get 0
                            i32.const -65
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const 19
                            i32.add
                            local.tee 4
                            i32.const -16
                            i32.and
                            local.set 7
                            i32.const 0
                            i32.load offset=1055512
                            local.tee 11
                            i32.eqz
                            br_if 0 (;@12;)
                            i32.const 0
                            local.set 8
                            block  ;; label = @13
                              local.get 7
                              i32.const 256
                              i32.lt_u
                              br_if 0 (;@13;)
                              i32.const 31
                              local.set 8
                              local.get 7
                              i32.const 16777215
                              i32.gt_u
                              br_if 0 (;@13;)
                              local.get 7
                              i32.const 38
                              local.get 4
                              i32.const 8
                              i32.shr_u
                              i32.clz
                              local.tee 4
                              i32.sub
                              i32.shr_u
                              i32.const 1
                              i32.and
                              local.get 4
                              i32.const 1
                              i32.shl
                              i32.sub
                              i32.const 62
                              i32.add
                              local.set 8
                            end
                            i32.const 0
                            local.get 7
                            i32.sub
                            local.set 3
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 8
                                    i32.const 2
                                    i32.shl
                                    i32.const 1055812
                                    i32.add
                                    i32.load
                                    local.tee 5
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 4
                                    i32.const 0
                                    local.set 9
                                    br 1 (;@15;)
                                  end
                                  i32.const 0
                                  local.set 4
                                  local.get 7
                                  i32.const 0
                                  i32.const 25
                                  local.get 8
                                  i32.const 1
                                  i32.shr_u
                                  i32.sub
                                  local.get 8
                                  i32.const 31
                                  i32.eq
                                  select
                                  i32.shl
                                  local.set 0
                                  i32.const 0
                                  local.set 9
                                  loop  ;; label = @16
                                    block  ;; label = @17
                                      local.get 5
                                      i32.load offset=4
                                      i32.const -8
                                      i32.and
                                      local.get 7
                                      i32.sub
                                      local.tee 6
                                      local.get 3
                                      i32.ge_u
                                      br_if 0 (;@17;)
                                      local.get 6
                                      local.set 3
                                      local.get 5
                                      local.set 9
                                      local.get 6
                                      br_if 0 (;@17;)
                                      i32.const 0
                                      local.set 3
                                      local.get 5
                                      local.set 9
                                      local.get 5
                                      local.set 4
                                      br 3 (;@14;)
                                    end
                                    local.get 4
                                    local.get 5
                                    i32.const 20
                                    i32.add
                                    i32.load
                                    local.tee 6
                                    local.get 6
                                    local.get 5
                                    local.get 0
                                    i32.const 29
                                    i32.shr_u
                                    i32.const 4
                                    i32.and
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    i32.load
                                    local.tee 5
                                    i32.eq
                                    select
                                    local.get 4
                                    local.get 6
                                    select
                                    local.set 4
                                    local.get 0
                                    i32.const 1
                                    i32.shl
                                    local.set 0
                                    local.get 5
                                    br_if 0 (;@16;)
                                  end
                                end
                                block  ;; label = @15
                                  local.get 4
                                  local.get 9
                                  i32.or
                                  br_if 0 (;@15;)
                                  i32.const 0
                                  local.set 9
                                  i32.const 2
                                  local.get 8
                                  i32.shl
                                  local.tee 4
                                  i32.const 0
                                  local.get 4
                                  i32.sub
                                  i32.or
                                  local.get 11
                                  i32.and
                                  local.tee 4
                                  i32.eqz
                                  br_if 3 (;@12;)
                                  local.get 4
                                  i32.ctz
                                  i32.const 2
                                  i32.shl
                                  i32.const 1055812
                                  i32.add
                                  i32.load
                                  local.set 4
                                end
                                local.get 4
                                i32.eqz
                                br_if 1 (;@13;)
                              end
                              loop  ;; label = @14
                                local.get 4
                                i32.load offset=4
                                i32.const -8
                                i32.and
                                local.get 7
                                i32.sub
                                local.tee 6
                                local.get 3
                                i32.lt_u
                                local.set 0
                                block  ;; label = @15
                                  local.get 4
                                  i32.load offset=16
                                  local.tee 5
                                  br_if 0 (;@15;)
                                  local.get 4
                                  i32.const 20
                                  i32.add
                                  i32.load
                                  local.set 5
                                end
                                local.get 6
                                local.get 3
                                local.get 0
                                select
                                local.set 3
                                local.get 4
                                local.get 9
                                local.get 0
                                select
                                local.set 9
                                local.get 5
                                local.set 4
                                local.get 5
                                br_if 0 (;@14;)
                              end
                            end
                            local.get 9
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 3
                            i32.const 0
                            i32.load offset=1055516
                            local.get 7
                            i32.sub
                            i32.ge_u
                            br_if 0 (;@12;)
                            local.get 9
                            i32.load offset=24
                            local.set 2
                            block  ;; label = @13
                              local.get 9
                              i32.load offset=12
                              local.tee 0
                              local.get 9
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 9
                              i32.load offset=8
                              local.tee 4
                              i32.const 0
                              i32.load offset=1055524
                              i32.lt_u
                              drop
                              local.get 0
                              local.get 4
                              i32.store offset=8
                              local.get 4
                              local.get 0
                              i32.store offset=12
                              br 10 (;@3;)
                            end
                            block  ;; label = @13
                              local.get 9
                              i32.const 20
                              i32.add
                              local.tee 5
                              i32.load
                              local.tee 4
                              br_if 0 (;@13;)
                              local.get 9
                              i32.load offset=16
                              local.tee 4
                              i32.eqz
                              br_if 4 (;@9;)
                              local.get 9
                              i32.const 16
                              i32.add
                              local.set 5
                            end
                            loop  ;; label = @13
                              local.get 5
                              local.set 6
                              local.get 4
                              local.tee 0
                              i32.const 20
                              i32.add
                              local.tee 5
                              i32.load
                              local.tee 4
                              br_if 0 (;@13;)
                              local.get 0
                              i32.const 16
                              i32.add
                              local.set 5
                              local.get 0
                              i32.load offset=16
                              local.tee 4
                              br_if 0 (;@13;)
                            end
                            local.get 6
                            i32.const 0
                            i32.store
                            br 9 (;@3;)
                          end
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1055516
                            local.tee 4
                            local.get 7
                            i32.lt_u
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.load offset=1055528
                            local.set 3
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 4
                                local.get 7
                                i32.sub
                                local.tee 5
                                i32.const 16
                                i32.lt_u
                                br_if 0 (;@14;)
                                local.get 3
                                local.get 7
                                i32.add
                                local.tee 0
                                local.get 5
                                i32.const 1
                                i32.or
                                i32.store offset=4
                                local.get 3
                                local.get 4
                                i32.add
                                local.get 5
                                i32.store
                                local.get 3
                                local.get 7
                                i32.const 3
                                i32.or
                                i32.store offset=4
                                br 1 (;@13;)
                              end
                              local.get 3
                              local.get 4
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              local.get 3
                              local.get 4
                              i32.add
                              local.tee 4
                              local.get 4
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              i32.const 0
                              local.set 0
                              i32.const 0
                              local.set 5
                            end
                            i32.const 0
                            local.get 5
                            i32.store offset=1055516
                            i32.const 0
                            local.get 0
                            i32.store offset=1055528
                            local.get 3
                            i32.const 8
                            i32.add
                            local.set 4
                            br 11 (;@1;)
                          end
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1055520
                            local.tee 5
                            local.get 7
                            i32.le_u
                            br_if 0 (;@12;)
                            local.get 2
                            local.get 7
                            i32.add
                            local.tee 4
                            local.get 5
                            local.get 7
                            i32.sub
                            local.tee 3
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            i32.const 0
                            local.get 4
                            i32.store offset=1055532
                            i32.const 0
                            local.get 3
                            i32.store offset=1055520
                            local.get 2
                            local.get 7
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            local.get 2
                            i32.const 8
                            i32.add
                            local.set 4
                            br 11 (;@1;)
                          end
                          block  ;; label = @12
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1055980
                              i32.eqz
                              br_if 0 (;@13;)
                              i32.const 0
                              i32.load offset=1055988
                              local.set 3
                              br 1 (;@12;)
                            end
                            i32.const 0
                            i64.const -1
                            i64.store offset=1055992 align=4
                            i32.const 0
                            i64.const 281474976776192
                            i64.store offset=1055984 align=4
                            i32.const 0
                            local.get 1
                            i32.const 12
                            i32.add
                            i32.const -16
                            i32.and
                            i32.const 1431655768
                            i32.xor
                            i32.store offset=1055980
                            i32.const 0
                            i32.const 0
                            i32.store offset=1056000
                            i32.const 0
                            i32.const 0
                            i32.store offset=1055952
                            i32.const 65536
                            local.set 3
                          end
                          i32.const 0
                          local.set 4
                          block  ;; label = @12
                            local.get 3
                            local.get 7
                            i32.const 71
                            i32.add
                            local.tee 8
                            i32.add
                            local.tee 0
                            i32.const 0
                            local.get 3
                            i32.sub
                            local.tee 6
                            i32.and
                            local.tee 9
                            local.get 7
                            i32.gt_u
                            br_if 0 (;@12;)
                            i32.const 0
                            i32.const 48
                            i32.store offset=1056004
                            br 11 (;@1;)
                          end
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1055948
                            local.tee 4
                            i32.eqz
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              i32.const 0
                              i32.load offset=1055940
                              local.tee 3
                              local.get 9
                              i32.add
                              local.tee 11
                              local.get 3
                              i32.le_u
                              br_if 0 (;@13;)
                              local.get 11
                              local.get 4
                              i32.le_u
                              br_if 1 (;@12;)
                            end
                            i32.const 0
                            local.set 4
                            i32.const 0
                            i32.const 48
                            i32.store offset=1056004
                            br 11 (;@1;)
                          end
                          i32.const 0
                          i32.load8_u offset=1055952
                          i32.const 4
                          i32.and
                          br_if 5 (;@6;)
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 2
                                i32.eqz
                                br_if 0 (;@14;)
                                i32.const 1055956
                                local.set 4
                                loop  ;; label = @15
                                  block  ;; label = @16
                                    local.get 4
                                    i32.load
                                    local.tee 3
                                    local.get 2
                                    i32.gt_u
                                    br_if 0 (;@16;)
                                    local.get 3
                                    local.get 4
                                    i32.load offset=4
                                    i32.add
                                    local.get 2
                                    i32.gt_u
                                    br_if 3 (;@13;)
                                  end
                                  local.get 4
                                  i32.load offset=8
                                  local.tee 4
                                  br_if 0 (;@15;)
                                end
                              end
                              i32.const 0
                              call $sbrk
                              local.tee 0
                              i32.const -1
                              i32.eq
                              br_if 6 (;@7;)
                              local.get 9
                              local.set 6
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=1055984
                                local.tee 4
                                i32.const -1
                                i32.add
                                local.tee 3
                                local.get 0
                                i32.and
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 9
                                local.get 0
                                i32.sub
                                local.get 3
                                local.get 0
                                i32.add
                                i32.const 0
                                local.get 4
                                i32.sub
                                i32.and
                                i32.add
                                local.set 6
                              end
                              local.get 6
                              local.get 7
                              i32.le_u
                              br_if 6 (;@7;)
                              local.get 6
                              i32.const 2147483646
                              i32.gt_u
                              br_if 6 (;@7;)
                              block  ;; label = @14
                                i32.const 0
                                i32.load offset=1055948
                                local.tee 4
                                i32.eqz
                                br_if 0 (;@14;)
                                i32.const 0
                                i32.load offset=1055940
                                local.tee 3
                                local.get 6
                                i32.add
                                local.tee 5
                                local.get 3
                                i32.le_u
                                br_if 7 (;@7;)
                                local.get 5
                                local.get 4
                                i32.gt_u
                                br_if 7 (;@7;)
                              end
                              local.get 6
                              call $sbrk
                              local.tee 4
                              local.get 0
                              i32.ne
                              br_if 1 (;@12;)
                              br 8 (;@5;)
                            end
                            local.get 0
                            local.get 5
                            i32.sub
                            local.get 6
                            i32.and
                            local.tee 6
                            i32.const 2147483646
                            i32.gt_u
                            br_if 5 (;@7;)
                            local.get 6
                            call $sbrk
                            local.tee 0
                            local.get 4
                            i32.load
                            local.get 4
                            i32.load offset=4
                            i32.add
                            i32.eq
                            br_if 4 (;@8;)
                            local.get 0
                            local.set 4
                          end
                          block  ;; label = @12
                            local.get 6
                            local.get 7
                            i32.const 72
                            i32.add
                            i32.ge_u
                            br_if 0 (;@12;)
                            local.get 4
                            i32.const -1
                            i32.eq
                            br_if 0 (;@12;)
                            block  ;; label = @13
                              local.get 8
                              local.get 6
                              i32.sub
                              i32.const 0
                              i32.load offset=1055988
                              local.tee 3
                              i32.add
                              i32.const 0
                              local.get 3
                              i32.sub
                              i32.and
                              local.tee 3
                              i32.const 2147483646
                              i32.le_u
                              br_if 0 (;@13;)
                              local.get 4
                              local.set 0
                              br 8 (;@5;)
                            end
                            block  ;; label = @13
                              local.get 3
                              call $sbrk
                              i32.const -1
                              i32.eq
                              br_if 0 (;@13;)
                              local.get 3
                              local.get 6
                              i32.add
                              local.set 6
                              local.get 4
                              local.set 0
                              br 8 (;@5;)
                            end
                            i32.const 0
                            local.get 6
                            i32.sub
                            call $sbrk
                            drop
                            br 5 (;@7;)
                          end
                          local.get 4
                          local.set 0
                          local.get 4
                          i32.const -1
                          i32.ne
                          br_if 6 (;@5;)
                          br 4 (;@7;)
                        end
                        unreachable
                        unreachable
                      end
                      i32.const 0
                      local.set 9
                      br 7 (;@2;)
                    end
                    i32.const 0
                    local.set 0
                    br 5 (;@3;)
                  end
                  local.get 0
                  i32.const -1
                  i32.ne
                  br_if 2 (;@5;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=1055952
                i32.const 4
                i32.or
                i32.store offset=1055952
              end
              local.get 9
              i32.const 2147483646
              i32.gt_u
              br_if 1 (;@4;)
              local.get 9
              call $sbrk
              local.set 0
              i32.const 0
              call $sbrk
              local.set 4
              local.get 0
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 4
              i32.const -1
              i32.eq
              br_if 1 (;@4;)
              local.get 0
              local.get 4
              i32.ge_u
              br_if 1 (;@4;)
              local.get 4
              local.get 0
              i32.sub
              local.tee 6
              local.get 7
              i32.const 56
              i32.add
              i32.le_u
              br_if 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1055940
            local.get 6
            i32.add
            local.tee 4
            i32.store offset=1055940
            block  ;; label = @5
              local.get 4
              i32.const 0
              i32.load offset=1055944
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              local.get 4
              i32.store offset=1055944
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1055532
                    local.tee 3
                    i32.eqz
                    br_if 0 (;@8;)
                    i32.const 1055956
                    local.set 4
                    loop  ;; label = @9
                      local.get 0
                      local.get 4
                      i32.load
                      local.tee 5
                      local.get 4
                      i32.load offset=4
                      local.tee 9
                      i32.add
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 4
                      i32.load offset=8
                      local.tee 4
                      br_if 0 (;@9;)
                      br 3 (;@6;)
                    end
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1055524
                      local.tee 4
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 0
                      local.get 4
                      i32.ge_u
                      br_if 1 (;@8;)
                    end
                    i32.const 0
                    local.get 0
                    i32.store offset=1055524
                  end
                  i32.const 0
                  local.set 4
                  i32.const 0
                  local.get 6
                  i32.store offset=1055960
                  i32.const 0
                  local.get 0
                  i32.store offset=1055956
                  i32.const 0
                  i32.const -1
                  i32.store offset=1055540
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055980
                  i32.store offset=1055544
                  i32.const 0
                  i32.const 0
                  i32.store offset=1055968
                  loop  ;; label = @8
                    local.get 4
                    i32.const 1055568
                    i32.add
                    local.get 4
                    i32.const 1055556
                    i32.add
                    local.tee 3
                    i32.store
                    local.get 3
                    local.get 4
                    i32.const 1055548
                    i32.add
                    local.tee 5
                    i32.store
                    local.get 4
                    i32.const 1055560
                    i32.add
                    local.get 5
                    i32.store
                    local.get 4
                    i32.const 1055576
                    i32.add
                    local.get 4
                    i32.const 1055564
                    i32.add
                    local.tee 5
                    i32.store
                    local.get 5
                    local.get 3
                    i32.store
                    local.get 4
                    i32.const 1055584
                    i32.add
                    local.get 4
                    i32.const 1055572
                    i32.add
                    local.tee 3
                    i32.store
                    local.get 3
                    local.get 5
                    i32.store
                    local.get 4
                    i32.const 1055580
                    i32.add
                    local.get 3
                    i32.store
                    local.get 4
                    i32.const 32
                    i32.add
                    local.tee 4
                    i32.const 256
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 0
                  i32.const -8
                  local.get 0
                  i32.sub
                  i32.const 15
                  i32.and
                  local.tee 4
                  i32.add
                  local.tee 3
                  local.get 6
                  i32.const -56
                  i32.add
                  local.tee 5
                  local.get 4
                  i32.sub
                  local.tee 4
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055996
                  i32.store offset=1055536
                  i32.const 0
                  local.get 4
                  i32.store offset=1055520
                  i32.const 0
                  local.get 3
                  i32.store offset=1055532
                  local.get 0
                  local.get 5
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  br 2 (;@5;)
                end
                local.get 3
                local.get 0
                i32.ge_u
                br_if 0 (;@6;)
                local.get 3
                local.get 5
                i32.lt_u
                br_if 0 (;@6;)
                local.get 4
                i32.load offset=12
                i32.const 8
                i32.and
                br_if 0 (;@6;)
                local.get 3
                i32.const -8
                local.get 3
                i32.sub
                i32.const 15
                i32.and
                local.tee 5
                i32.add
                local.tee 0
                i32.const 0
                i32.load offset=1055520
                local.get 6
                i32.add
                local.tee 2
                local.get 5
                i32.sub
                local.tee 5
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 4
                local.get 9
                local.get 6
                i32.add
                i32.store offset=4
                i32.const 0
                i32.const 0
                i32.load offset=1055996
                i32.store offset=1055536
                i32.const 0
                local.get 5
                i32.store offset=1055520
                i32.const 0
                local.get 0
                i32.store offset=1055532
                local.get 3
                local.get 2
                i32.add
                i32.const 56
                i32.store offset=4
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 0
                i32.const 0
                i32.load offset=1055524
                i32.ge_u
                br_if 0 (;@6;)
                i32.const 0
                local.get 0
                i32.store offset=1055524
              end
              local.get 0
              local.get 6
              i32.add
              local.set 5
              i32.const 1055956
              local.set 4
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      loop  ;; label = @10
                        local.get 4
                        i32.load
                        local.get 5
                        i32.eq
                        br_if 1 (;@9;)
                        local.get 4
                        i32.load offset=8
                        local.tee 4
                        br_if 0 (;@10;)
                        br 2 (;@8;)
                      end
                    end
                    local.get 4
                    i32.load8_u offset=12
                    i32.const 8
                    i32.and
                    i32.eqz
                    br_if 1 (;@7;)
                  end
                  i32.const 1055956
                  local.set 4
                  block  ;; label = @8
                    loop  ;; label = @9
                      block  ;; label = @10
                        local.get 4
                        i32.load
                        local.tee 5
                        local.get 3
                        i32.gt_u
                        br_if 0 (;@10;)
                        local.get 5
                        local.get 4
                        i32.load offset=4
                        i32.add
                        local.tee 5
                        local.get 3
                        i32.gt_u
                        br_if 2 (;@8;)
                      end
                      local.get 4
                      i32.load offset=8
                      local.set 4
                      br 0 (;@9;)
                    end
                  end
                  local.get 0
                  i32.const -8
                  local.get 0
                  i32.sub
                  i32.const 15
                  i32.and
                  local.tee 4
                  i32.add
                  local.tee 2
                  local.get 6
                  i32.const -56
                  i32.add
                  local.tee 9
                  local.get 4
                  i32.sub
                  local.tee 4
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 9
                  i32.add
                  i32.const 56
                  i32.store offset=4
                  local.get 3
                  local.get 5
                  i32.const 55
                  local.get 5
                  i32.sub
                  i32.const 15
                  i32.and
                  i32.add
                  i32.const -63
                  i32.add
                  local.tee 9
                  local.get 9
                  local.get 3
                  i32.const 16
                  i32.add
                  i32.lt_u
                  select
                  local.tee 9
                  i32.const 35
                  i32.store offset=4
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055996
                  i32.store offset=1055536
                  i32.const 0
                  local.get 4
                  i32.store offset=1055520
                  i32.const 0
                  local.get 2
                  i32.store offset=1055532
                  local.get 9
                  i32.const 16
                  i32.add
                  i32.const 0
                  i64.load offset=1055964 align=4
                  i64.store align=4
                  local.get 9
                  i32.const 0
                  i64.load offset=1055956 align=4
                  i64.store offset=8 align=4
                  i32.const 0
                  local.get 9
                  i32.const 8
                  i32.add
                  i32.store offset=1055964
                  i32.const 0
                  local.get 6
                  i32.store offset=1055960
                  i32.const 0
                  local.get 0
                  i32.store offset=1055956
                  i32.const 0
                  i32.const 0
                  i32.store offset=1055968
                  local.get 9
                  i32.const 36
                  i32.add
                  local.set 4
                  loop  ;; label = @8
                    local.get 4
                    i32.const 7
                    i32.store
                    local.get 4
                    i32.const 4
                    i32.add
                    local.tee 4
                    local.get 5
                    i32.lt_u
                    br_if 0 (;@8;)
                  end
                  local.get 9
                  local.get 3
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 9
                  local.get 9
                  i32.load offset=4
                  i32.const -2
                  i32.and
                  i32.store offset=4
                  local.get 9
                  local.get 9
                  local.get 3
                  i32.sub
                  local.tee 0
                  i32.store
                  local.get 3
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  block  ;; label = @8
                    local.get 0
                    i32.const 255
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const -8
                    i32.and
                    i32.const 1055548
                    i32.add
                    local.set 4
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1055508
                        local.tee 5
                        i32.const 1
                        local.get 0
                        i32.const 3
                        i32.shr_u
                        i32.shl
                        local.tee 0
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 5
                        local.get 0
                        i32.or
                        i32.store offset=1055508
                        local.get 4
                        local.set 5
                        br 1 (;@9;)
                      end
                      local.get 4
                      i32.load offset=8
                      local.set 5
                    end
                    local.get 5
                    local.get 3
                    i32.store offset=12
                    local.get 4
                    local.get 3
                    i32.store offset=8
                    local.get 3
                    local.get 4
                    i32.store offset=12
                    local.get 3
                    local.get 5
                    i32.store offset=8
                    br 3 (;@5;)
                  end
                  i32.const 31
                  local.set 4
                  block  ;; label = @8
                    local.get 0
                    i32.const 16777215
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 38
                    local.get 0
                    i32.const 8
                    i32.shr_u
                    i32.clz
                    local.tee 4
                    i32.sub
                    i32.shr_u
                    i32.const 1
                    i32.and
                    local.get 4
                    i32.const 1
                    i32.shl
                    i32.sub
                    i32.const 62
                    i32.add
                    local.set 4
                  end
                  local.get 3
                  local.get 4
                  i32.store offset=28
                  local.get 3
                  i64.const 0
                  i64.store offset=16 align=4
                  local.get 4
                  i32.const 2
                  i32.shl
                  i32.const 1055812
                  i32.add
                  local.set 5
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1055512
                    local.tee 9
                    i32.const 1
                    local.get 4
                    i32.shl
                    local.tee 6
                    i32.and
                    br_if 0 (;@8;)
                    local.get 5
                    local.get 3
                    i32.store
                    i32.const 0
                    local.get 9
                    local.get 6
                    i32.or
                    i32.store offset=1055512
                    local.get 3
                    local.get 5
                    i32.store offset=24
                    local.get 3
                    local.get 3
                    i32.store offset=8
                    local.get 3
                    local.get 3
                    i32.store offset=12
                    br 3 (;@5;)
                  end
                  local.get 0
                  i32.const 0
                  i32.const 25
                  local.get 4
                  i32.const 1
                  i32.shr_u
                  i32.sub
                  local.get 4
                  i32.const 31
                  i32.eq
                  select
                  i32.shl
                  local.set 4
                  local.get 5
                  i32.load
                  local.set 9
                  loop  ;; label = @8
                    local.get 9
                    local.tee 5
                    i32.load offset=4
                    i32.const -8
                    i32.and
                    local.get 0
                    i32.eq
                    br_if 2 (;@6;)
                    local.get 4
                    i32.const 29
                    i32.shr_u
                    local.set 9
                    local.get 4
                    i32.const 1
                    i32.shl
                    local.set 4
                    local.get 5
                    local.get 9
                    i32.const 4
                    i32.and
                    i32.add
                    i32.const 16
                    i32.add
                    local.tee 6
                    i32.load
                    local.tee 9
                    br_if 0 (;@8;)
                  end
                  local.get 6
                  local.get 3
                  i32.store
                  local.get 3
                  local.get 5
                  i32.store offset=24
                  local.get 3
                  local.get 3
                  i32.store offset=12
                  local.get 3
                  local.get 3
                  i32.store offset=8
                  br 2 (;@5;)
                end
                local.get 4
                local.get 0
                i32.store
                local.get 4
                local.get 4
                i32.load offset=4
                local.get 6
                i32.add
                i32.store offset=4
                local.get 0
                local.get 5
                local.get 7
                call $prepend_alloc
                local.set 4
                br 5 (;@1;)
              end
              local.get 5
              i32.load offset=8
              local.tee 4
              local.get 3
              i32.store offset=12
              local.get 5
              local.get 3
              i32.store offset=8
              local.get 3
              i32.const 0
              i32.store offset=24
              local.get 3
              local.get 5
              i32.store offset=12
              local.get 3
              local.get 4
              i32.store offset=8
            end
            i32.const 0
            i32.load offset=1055520
            local.tee 4
            local.get 7
            i32.le_u
            br_if 0 (;@4;)
            i32.const 0
            i32.load offset=1055532
            local.tee 3
            local.get 7
            i32.add
            local.tee 5
            local.get 4
            local.get 7
            i32.sub
            local.tee 4
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.get 4
            i32.store offset=1055520
            i32.const 0
            local.get 5
            i32.store offset=1055532
            local.get 3
            local.get 7
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 3
            i32.const 8
            i32.add
            local.set 4
            br 3 (;@1;)
          end
          i32.const 0
          local.set 4
          i32.const 0
          i32.const 48
          i32.store offset=1056004
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 2
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 9
              local.get 9
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 1055812
              i32.add
              local.tee 4
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 4
              local.get 0
              i32.store
              local.get 0
              br_if 1 (;@4;)
              i32.const 0
              local.get 11
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              local.tee 11
              i32.store offset=1055512
              br 2 (;@3;)
            end
            local.get 2
            i32.const 16
            i32.const 20
            local.get 2
            i32.load offset=16
            local.get 9
            i32.eq
            select
            i32.add
            local.get 0
            i32.store
            local.get 0
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 2
          i32.store offset=24
          block  ;; label = @4
            local.get 9
            i32.load offset=16
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            local.get 4
            i32.store offset=16
            local.get 4
            local.get 0
            i32.store offset=24
          end
          local.get 9
          i32.const 20
          i32.add
          i32.load
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 20
          i32.add
          local.get 4
          i32.store
          local.get 4
          local.get 0
          i32.store offset=24
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
            local.get 9
            local.get 3
            local.get 7
            i32.or
            local.tee 4
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 9
            local.get 4
            i32.add
            local.tee 4
            local.get 4
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            br 1 (;@3;)
          end
          local.get 9
          local.get 7
          i32.add
          local.tee 0
          local.get 3
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 9
          local.get 7
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 3
          i32.add
          local.get 3
          i32.store
          block  ;; label = @4
            local.get 3
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const -8
            i32.and
            i32.const 1055548
            i32.add
            local.set 4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 0
                i32.load offset=1055508
                local.tee 5
                i32.const 1
                local.get 3
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 3
                i32.and
                br_if 0 (;@6;)
                i32.const 0
                local.get 5
                local.get 3
                i32.or
                i32.store offset=1055508
                local.get 4
                local.set 3
                br 1 (;@5;)
              end
              local.get 4
              i32.load offset=8
              local.set 3
            end
            local.get 3
            local.get 0
            i32.store offset=12
            local.get 4
            local.get 0
            i32.store offset=8
            local.get 0
            local.get 4
            i32.store offset=12
            local.get 0
            local.get 3
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 31
          local.set 4
          block  ;; label = @4
            local.get 3
            i32.const 16777215
            i32.gt_u
            br_if 0 (;@4;)
            local.get 3
            i32.const 38
            local.get 3
            i32.const 8
            i32.shr_u
            i32.clz
            local.tee 4
            i32.sub
            i32.shr_u
            i32.const 1
            i32.and
            local.get 4
            i32.const 1
            i32.shl
            i32.sub
            i32.const 62
            i32.add
            local.set 4
          end
          local.get 0
          local.get 4
          i32.store offset=28
          local.get 0
          i64.const 0
          i64.store offset=16 align=4
          local.get 4
          i32.const 2
          i32.shl
          i32.const 1055812
          i32.add
          local.set 5
          block  ;; label = @4
            local.get 11
            i32.const 1
            local.get 4
            i32.shl
            local.tee 7
            i32.and
            br_if 0 (;@4;)
            local.get 5
            local.get 0
            i32.store
            i32.const 0
            local.get 11
            local.get 7
            i32.or
            i32.store offset=1055512
            local.get 0
            local.get 5
            i32.store offset=24
            local.get 0
            local.get 0
            i32.store offset=8
            local.get 0
            local.get 0
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 3
          i32.const 0
          i32.const 25
          local.get 4
          i32.const 1
          i32.shr_u
          i32.sub
          local.get 4
          i32.const 31
          i32.eq
          select
          i32.shl
          local.set 4
          local.get 5
          i32.load
          local.set 7
          block  ;; label = @4
            loop  ;; label = @5
              local.get 7
              local.tee 5
              i32.load offset=4
              i32.const -8
              i32.and
              local.get 3
              i32.eq
              br_if 1 (;@4;)
              local.get 4
              i32.const 29
              i32.shr_u
              local.set 7
              local.get 4
              i32.const 1
              i32.shl
              local.set 4
              local.get 5
              local.get 7
              i32.const 4
              i32.and
              i32.add
              i32.const 16
              i32.add
              local.tee 6
              i32.load
              local.tee 7
              br_if 0 (;@5;)
            end
            local.get 6
            local.get 0
            i32.store
            local.get 0
            local.get 5
            i32.store offset=24
            local.get 0
            local.get 0
            i32.store offset=12
            local.get 0
            local.get 0
            i32.store offset=8
            br 1 (;@3;)
          end
          local.get 5
          i32.load offset=8
          local.tee 4
          local.get 0
          i32.store offset=12
          local.get 5
          local.get 0
          i32.store offset=8
          local.get 0
          i32.const 0
          i32.store offset=24
          local.get 0
          local.get 5
          i32.store offset=12
          local.get 0
          local.get 4
          i32.store offset=8
        end
        local.get 9
        i32.const 8
        i32.add
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 11
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=28
            local.tee 5
            i32.const 2
            i32.shl
            i32.const 1055812
            i32.add
            local.tee 4
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 4
            local.get 9
            i32.store
            local.get 9
            br_if 1 (;@3;)
            i32.const 0
            local.get 10
            i32.const -2
            local.get 5
            i32.rotl
            i32.and
            i32.store offset=1055512
            br 2 (;@2;)
          end
          local.get 11
          i32.const 16
          i32.const 20
          local.get 11
          i32.load offset=16
          local.get 0
          i32.eq
          select
          i32.add
          local.get 9
          i32.store
          local.get 9
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 9
        local.get 11
        i32.store offset=24
        block  ;; label = @3
          local.get 0
          i32.load offset=16
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 9
          local.get 4
          i32.store offset=16
          local.get 4
          local.get 9
          i32.store offset=24
        end
        local.get 0
        i32.const 20
        i32.add
        i32.load
        local.tee 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 9
        i32.const 20
        i32.add
        local.get 4
        i32.store
        local.get 4
        local.get 9
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 0
          local.get 3
          local.get 7
          i32.or
          local.tee 4
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 0
          local.get 4
          i32.add
          local.tee 4
          local.get 4
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          br 1 (;@2;)
        end
        local.get 0
        local.get 7
        i32.add
        local.tee 5
        local.get 3
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 7
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 5
        local.get 3
        i32.add
        local.get 3
        i32.store
        block  ;; label = @3
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const -8
          i32.and
          i32.const 1055548
          i32.add
          local.set 7
          i32.const 0
          i32.load offset=1055528
          local.set 4
          block  ;; label = @4
            block  ;; label = @5
              i32.const 1
              local.get 8
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 9
              local.get 6
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 9
              local.get 6
              i32.or
              i32.store offset=1055508
              local.get 7
              local.set 9
              br 1 (;@4;)
            end
            local.get 7
            i32.load offset=8
            local.set 9
          end
          local.get 9
          local.get 4
          i32.store offset=12
          local.get 7
          local.get 4
          i32.store offset=8
          local.get 4
          local.get 7
          i32.store offset=12
          local.get 4
          local.get 9
          i32.store offset=8
        end
        i32.const 0
        local.get 5
        i32.store offset=1055528
        i32.const 0
        local.get 3
        i32.store offset=1055516
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 4
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $prepend_alloc (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.const -8
    local.get 0
    i32.sub
    i32.const 15
    i32.and
    i32.add
    local.tee 3
    local.get 2
    i32.const 3
    i32.or
    i32.store offset=4
    local.get 1
    i32.const -8
    local.get 1
    i32.sub
    i32.const 15
    i32.and
    i32.add
    local.tee 4
    local.get 3
    local.get 2
    i32.add
    local.tee 5
    i32.sub
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const 0
        i32.load offset=1055532
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 5
        i32.store offset=1055532
        i32.const 0
        i32.const 0
        i32.load offset=1055520
        local.get 2
        i32.add
        local.tee 2
        i32.store offset=1055520
        local.get 5
        local.get 2
        i32.const 1
        i32.or
        i32.store offset=4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.const 0
        i32.load offset=1055528
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 5
        i32.store offset=1055528
        i32.const 0
        i32.const 0
        i32.load offset=1055516
        local.get 2
        i32.add
        local.tee 2
        i32.store offset=1055516
        local.get 5
        local.get 2
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 5
        local.get 2
        i32.add
        local.get 2
        i32.store
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        i32.load offset=4
        local.tee 0
        i32.const 3
        i32.and
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const -8
        i32.and
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 4
            i32.load offset=8
            local.tee 1
            local.get 0
            i32.const 3
            i32.shr_u
            local.tee 7
            i32.const 3
            i32.shl
            i32.const 1055548
            i32.add
            local.tee 8
            i32.eq
            drop
            block  ;; label = @5
              local.get 4
              i32.load offset=12
              local.tee 0
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1055508
              i32.const -2
              local.get 7
              i32.rotl
              i32.and
              i32.store offset=1055508
              br 2 (;@3;)
            end
            local.get 0
            local.get 8
            i32.eq
            drop
            local.get 0
            local.get 1
            i32.store offset=8
            local.get 1
            local.get 0
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 4
          i32.load offset=24
          local.set 9
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.load offset=12
              local.tee 8
              local.get 4
              i32.eq
              br_if 0 (;@5;)
              local.get 4
              i32.load offset=8
              local.tee 0
              i32.const 0
              i32.load offset=1055524
              i32.lt_u
              drop
              local.get 8
              local.get 0
              i32.store offset=8
              local.get 0
              local.get 8
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.const 20
                i32.add
                local.tee 1
                i32.load
                local.tee 0
                br_if 0 (;@6;)
                local.get 4
                i32.load offset=16
                local.tee 0
                i32.eqz
                br_if 1 (;@5;)
                local.get 4
                i32.const 16
                i32.add
                local.set 1
              end
              loop  ;; label = @6
                local.get 1
                local.set 7
                local.get 0
                local.tee 8
                i32.const 20
                i32.add
                local.tee 1
                i32.load
                local.tee 0
                br_if 0 (;@6;)
                local.get 8
                i32.const 16
                i32.add
                local.set 1
                local.get 8
                i32.load offset=16
                local.tee 0
                br_if 0 (;@6;)
              end
              local.get 7
              i32.const 0
              i32.store
              br 1 (;@4;)
            end
            i32.const 0
            local.set 8
          end
          local.get 9
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              local.get 4
              i32.load offset=28
              local.tee 1
              i32.const 2
              i32.shl
              i32.const 1055812
              i32.add
              local.tee 0
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 0
              local.get 8
              i32.store
              local.get 8
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1055512
              i32.const -2
              local.get 1
              i32.rotl
              i32.and
              i32.store offset=1055512
              br 2 (;@3;)
            end
            local.get 9
            i32.const 16
            i32.const 20
            local.get 9
            i32.load offset=16
            local.get 4
            i32.eq
            select
            i32.add
            local.get 8
            i32.store
            local.get 8
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 8
          local.get 9
          i32.store offset=24
          block  ;; label = @4
            local.get 4
            i32.load offset=16
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            local.get 0
            i32.store offset=16
            local.get 0
            local.get 8
            i32.store offset=24
          end
          local.get 4
          i32.const 20
          i32.add
          i32.load
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const 20
          i32.add
          local.get 0
          i32.store
          local.get 0
          local.get 8
          i32.store offset=24
        end
        local.get 6
        local.get 2
        i32.add
        local.set 2
        local.get 4
        local.get 6
        i32.add
        local.tee 4
        i32.load offset=4
        local.set 0
      end
      local.get 4
      local.get 0
      i32.const -2
      i32.and
      i32.store offset=4
      local.get 5
      local.get 2
      i32.add
      local.get 2
      i32.store
      local.get 5
      local.get 2
      i32.const 1
      i32.or
      i32.store offset=4
      block  ;; label = @2
        local.get 2
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const -8
        i32.and
        i32.const 1055548
        i32.add
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1055508
            local.tee 1
            i32.const 1
            local.get 2
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 2
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 1
            local.get 2
            i32.or
            i32.store offset=1055508
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          i32.load offset=8
          local.set 2
        end
        local.get 2
        local.get 5
        i32.store offset=12
        local.get 0
        local.get 5
        i32.store offset=8
        local.get 5
        local.get 0
        i32.store offset=12
        local.get 5
        local.get 2
        i32.store offset=8
        br 1 (;@1;)
      end
      i32.const 31
      local.set 0
      block  ;; label = @2
        local.get 2
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 2
        i32.const 38
        local.get 2
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 0
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 0
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set 0
      end
      local.get 5
      local.get 0
      i32.store offset=28
      local.get 5
      i64.const 0
      i64.store offset=16 align=4
      local.get 0
      i32.const 2
      i32.shl
      i32.const 1055812
      i32.add
      local.set 1
      block  ;; label = @2
        i32.const 0
        i32.load offset=1055512
        local.tee 8
        i32.const 1
        local.get 0
        i32.shl
        local.tee 4
        i32.and
        br_if 0 (;@2;)
        local.get 1
        local.get 5
        i32.store
        i32.const 0
        local.get 8
        local.get 4
        i32.or
        i32.store offset=1055512
        local.get 5
        local.get 1
        i32.store offset=24
        local.get 5
        local.get 5
        i32.store offset=8
        local.get 5
        local.get 5
        i32.store offset=12
        br 1 (;@1;)
      end
      local.get 2
      i32.const 0
      i32.const 25
      local.get 0
      i32.const 1
      i32.shr_u
      i32.sub
      local.get 0
      i32.const 31
      i32.eq
      select
      i32.shl
      local.set 0
      local.get 1
      i32.load
      local.set 8
      block  ;; label = @2
        loop  ;; label = @3
          local.get 8
          local.tee 1
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 2
          i32.eq
          br_if 1 (;@2;)
          local.get 0
          i32.const 29
          i32.shr_u
          local.set 8
          local.get 0
          i32.const 1
          i32.shl
          local.set 0
          local.get 1
          local.get 8
          i32.const 4
          i32.and
          i32.add
          i32.const 16
          i32.add
          local.tee 4
          i32.load
          local.tee 8
          br_if 0 (;@3;)
        end
        local.get 4
        local.get 5
        i32.store
        local.get 5
        local.get 1
        i32.store offset=24
        local.get 5
        local.get 5
        i32.store offset=12
        local.get 5
        local.get 5
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 1
      i32.load offset=8
      local.tee 2
      local.get 5
      i32.store offset=12
      local.get 1
      local.get 5
      i32.store offset=8
      local.get 5
      i32.const 0
      i32.store offset=24
      local.get 5
      local.get 1
      i32.store offset=12
      local.get 5
      local.get 2
      i32.store offset=8
    end
    local.get 3
    i32.const 8
    i32.add)
  (func $free (type 1) (param i32)
    local.get 0
    call $dlfree)
  (func $dlfree (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -8
      i32.add
      local.tee 1
      local.get 0
      i32.const -4
      i32.add
      i32.load
      local.tee 2
      i32.const -8
      i32.and
      local.tee 0
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 1
        i32.load
        local.tee 2
        i32.sub
        local.tee 1
        i32.const 0
        i32.load offset=1055524
        local.tee 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 2
        local.get 0
        i32.add
        local.set 0
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 0
              i32.load offset=1055528
              i32.eq
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 2
                i32.const 255
                i32.gt_u
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=8
                local.tee 4
                local.get 2
                i32.const 3
                i32.shr_u
                local.tee 5
                i32.const 3
                i32.shl
                i32.const 1055548
                i32.add
                local.tee 6
                i32.eq
                drop
                block  ;; label = @7
                  local.get 1
                  i32.load offset=12
                  local.tee 2
                  local.get 4
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055508
                  i32.const -2
                  local.get 5
                  i32.rotl
                  i32.and
                  i32.store offset=1055508
                  br 5 (;@2;)
                end
                local.get 2
                local.get 6
                i32.eq
                drop
                local.get 2
                local.get 4
                i32.store offset=8
                local.get 4
                local.get 2
                i32.store offset=12
                br 4 (;@2;)
              end
              local.get 1
              i32.load offset=24
              local.set 7
              block  ;; label = @6
                local.get 1
                i32.load offset=12
                local.tee 6
                local.get 1
                i32.eq
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=8
                local.tee 2
                local.get 4
                i32.lt_u
                drop
                local.get 6
                local.get 2
                i32.store offset=8
                local.get 2
                local.get 6
                i32.store offset=12
                br 3 (;@3;)
              end
              block  ;; label = @6
                local.get 1
                i32.const 20
                i32.add
                local.tee 4
                i32.load
                local.tee 2
                br_if 0 (;@6;)
                local.get 1
                i32.load offset=16
                local.tee 2
                i32.eqz
                br_if 2 (;@4;)
                local.get 1
                i32.const 16
                i32.add
                local.set 4
              end
              loop  ;; label = @6
                local.get 4
                local.set 5
                local.get 2
                local.tee 6
                i32.const 20
                i32.add
                local.tee 4
                i32.load
                local.tee 2
                br_if 0 (;@6;)
                local.get 6
                i32.const 16
                i32.add
                local.set 4
                local.get 6
                i32.load offset=16
                local.tee 2
                br_if 0 (;@6;)
              end
              local.get 5
              i32.const 0
              i32.store
              br 2 (;@3;)
            end
            local.get 3
            i32.load offset=4
            local.tee 2
            i32.const 3
            i32.and
            i32.const 3
            i32.ne
            br_if 2 (;@2;)
            local.get 3
            local.get 2
            i32.const -2
            i32.and
            i32.store offset=4
            i32.const 0
            local.get 0
            i32.store offset=1055516
            local.get 3
            local.get 0
            i32.store
            local.get 1
            local.get 0
            i32.const 1
            i32.or
            i32.store offset=4
            return
          end
          i32.const 0
          local.set 6
        end
        local.get 7
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 1
            i32.load offset=28
            local.tee 4
            i32.const 2
            i32.shl
            i32.const 1055812
            i32.add
            local.tee 2
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 2
            local.get 6
            i32.store
            local.get 6
            br_if 1 (;@3;)
            i32.const 0
            i32.const 0
            i32.load offset=1055512
            i32.const -2
            local.get 4
            i32.rotl
            i32.and
            i32.store offset=1055512
            br 2 (;@2;)
          end
          local.get 7
          i32.const 16
          i32.const 20
          local.get 7
          i32.load offset=16
          local.get 1
          i32.eq
          select
          i32.add
          local.get 6
          i32.store
          local.get 6
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 6
        local.get 7
        i32.store offset=24
        block  ;; label = @3
          local.get 1
          i32.load offset=16
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          local.get 2
          i32.store offset=16
          local.get 2
          local.get 6
          i32.store offset=24
        end
        local.get 1
        i32.const 20
        i32.add
        i32.load
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        i32.const 20
        i32.add
        local.get 2
        i32.store
        local.get 2
        local.get 6
        i32.store offset=24
      end
      local.get 1
      local.get 3
      i32.ge_u
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=4
      local.tee 2
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.const 2
                i32.and
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 3
                  i32.const 0
                  i32.load offset=1055532
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 1
                  i32.store offset=1055532
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055520
                  local.get 0
                  i32.add
                  local.tee 0
                  i32.store offset=1055520
                  local.get 1
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  i32.const 0
                  i32.load offset=1055528
                  i32.ne
                  br_if 6 (;@1;)
                  i32.const 0
                  i32.const 0
                  i32.store offset=1055516
                  i32.const 0
                  i32.const 0
                  i32.store offset=1055528
                  return
                end
                block  ;; label = @7
                  local.get 3
                  i32.const 0
                  i32.load offset=1055528
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 1
                  i32.store offset=1055528
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055516
                  local.get 0
                  i32.add
                  local.tee 0
                  i32.store offset=1055516
                  local.get 1
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 0
                  i32.add
                  local.get 0
                  i32.store
                  return
                end
                local.get 2
                i32.const -8
                i32.and
                local.get 0
                i32.add
                local.set 0
                block  ;; label = @7
                  local.get 2
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=8
                  local.tee 4
                  local.get 2
                  i32.const 3
                  i32.shr_u
                  local.tee 5
                  i32.const 3
                  i32.shl
                  i32.const 1055548
                  i32.add
                  local.tee 6
                  i32.eq
                  drop
                  block  ;; label = @8
                    local.get 3
                    i32.load offset=12
                    local.tee 2
                    local.get 4
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.const 0
                    i32.load offset=1055508
                    i32.const -2
                    local.get 5
                    i32.rotl
                    i32.and
                    i32.store offset=1055508
                    br 5 (;@3;)
                  end
                  local.get 2
                  local.get 6
                  i32.eq
                  drop
                  local.get 2
                  local.get 4
                  i32.store offset=8
                  local.get 4
                  local.get 2
                  i32.store offset=12
                  br 4 (;@3;)
                end
                local.get 3
                i32.load offset=24
                local.set 7
                block  ;; label = @7
                  local.get 3
                  i32.load offset=12
                  local.tee 6
                  local.get 3
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=8
                  local.tee 2
                  i32.const 0
                  i32.load offset=1055524
                  i32.lt_u
                  drop
                  local.get 6
                  local.get 2
                  i32.store offset=8
                  local.get 2
                  local.get 6
                  i32.store offset=12
                  br 3 (;@4;)
                end
                block  ;; label = @7
                  local.get 3
                  i32.const 20
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 2
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=16
                  local.tee 2
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 3
                  i32.const 16
                  i32.add
                  local.set 4
                end
                loop  ;; label = @7
                  local.get 4
                  local.set 5
                  local.get 2
                  local.tee 6
                  i32.const 20
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 2
                  br_if 0 (;@7;)
                  local.get 6
                  i32.const 16
                  i32.add
                  local.set 4
                  local.get 6
                  i32.load offset=16
                  local.tee 2
                  br_if 0 (;@7;)
                end
                local.get 5
                i32.const 0
                i32.store
                br 2 (;@4;)
              end
              local.get 3
              local.get 2
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 1
              local.get 0
              i32.add
              local.get 0
              i32.store
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              br 3 (;@2;)
            end
            i32.const 0
            local.set 6
          end
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              local.get 3
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 1055812
              i32.add
              local.tee 2
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 2
              local.get 6
              i32.store
              local.get 6
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1055512
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              i32.store offset=1055512
              br 2 (;@3;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 3
            i32.eq
            select
            i32.add
            local.get 6
            i32.store
            local.get 6
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 6
          local.get 7
          i32.store offset=24
          block  ;; label = @4
            local.get 3
            i32.load offset=16
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            local.get 2
            i32.store offset=16
            local.get 2
            local.get 6
            i32.store offset=24
          end
          local.get 3
          i32.const 20
          i32.add
          i32.load
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          i32.const 20
          i32.add
          local.get 2
          i32.store
          local.get 2
          local.get 6
          i32.store offset=24
        end
        local.get 1
        local.get 0
        i32.add
        local.get 0
        i32.store
        local.get 1
        local.get 0
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        i32.const 0
        i32.load offset=1055528
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 0
        i32.store offset=1055516
        return
      end
      block  ;; label = @2
        local.get 0
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const -8
        i32.and
        i32.const 1055548
        i32.add
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1055508
            local.tee 4
            i32.const 1
            local.get 0
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 0
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 0
            i32.or
            i32.store offset=1055508
            local.get 2
            local.set 0
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=8
          local.set 0
        end
        local.get 0
        local.get 1
        i32.store offset=12
        local.get 2
        local.get 1
        i32.store offset=8
        local.get 1
        local.get 2
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 2
      block  ;; label = @2
        local.get 0
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        i32.const 38
        local.get 0
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 2
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 2
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set 2
      end
      local.get 1
      local.get 2
      i32.store offset=28
      local.get 1
      i64.const 0
      i64.store offset=16 align=4
      local.get 2
      i32.const 2
      i32.shl
      i32.const 1055812
      i32.add
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=1055512
          local.tee 6
          i32.const 1
          local.get 2
          i32.shl
          local.tee 3
          i32.and
          br_if 0 (;@3;)
          local.get 4
          local.get 1
          i32.store
          i32.const 0
          local.get 6
          local.get 3
          i32.or
          i32.store offset=1055512
          local.get 1
          local.get 4
          i32.store offset=24
          local.get 1
          local.get 1
          i32.store offset=8
          local.get 1
          local.get 1
          i32.store offset=12
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 2
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 2
        local.get 4
        i32.load
        local.set 6
        block  ;; label = @3
          loop  ;; label = @4
            local.get 6
            local.tee 4
            i32.load offset=4
            i32.const -8
            i32.and
            local.get 0
            i32.eq
            br_if 1 (;@3;)
            local.get 2
            i32.const 29
            i32.shr_u
            local.set 6
            local.get 2
            i32.const 1
            i32.shl
            local.set 2
            local.get 4
            local.get 6
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 3
            i32.load
            local.tee 6
            br_if 0 (;@4;)
          end
          local.get 3
          local.get 1
          i32.store
          local.get 1
          local.get 4
          i32.store offset=24
          local.get 1
          local.get 1
          i32.store offset=12
          local.get 1
          local.get 1
          i32.store offset=8
          br 1 (;@2;)
        end
        local.get 4
        i32.load offset=8
        local.tee 0
        local.get 1
        i32.store offset=12
        local.get 4
        local.get 1
        i32.store offset=8
        local.get 1
        i32.const 0
        i32.store offset=24
        local.get 1
        local.get 4
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=8
      end
      i32.const 0
      i32.const 0
      i32.load offset=1055540
      i32.const -1
      i32.add
      local.tee 1
      i32.const -1
      local.get 1
      select
      i32.store offset=1055540
    end)
  (func $calloc (type 4) (param i32 i32) (result i32)
    (local i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      i64.extend_i32_u
      local.get 1
      i64.extend_i32_u
      i64.mul
      local.tee 3
      i32.wrap_i64
      local.set 2
      local.get 1
      local.get 0
      i32.or
      i32.const 65536
      i32.lt_u
      br_if 0 (;@1;)
      i32.const -1
      local.get 2
      local.get 3
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      i32.const 0
      i32.ne
      select
      local.set 2
    end
    block  ;; label = @1
      local.get 2
      call $dlmalloc
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const -4
      i32.add
      i32.load8_u
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 2
      call $memset
      drop
    end
    local.get 0)
  (func $realloc (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      local.get 1
      call $dlmalloc
      return
    end
    block  ;; label = @1
      local.get 1
      i32.const -64
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=1056004
      i32.const 0
      return
    end
    i32.const 16
    local.get 1
    i32.const 19
    i32.add
    i32.const -16
    i32.and
    local.get 1
    i32.const 11
    i32.lt_u
    select
    local.set 2
    local.get 0
    i32.const -4
    i32.add
    local.tee 3
    i32.load
    local.tee 4
    i32.const -8
    i32.and
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 2
          i32.const 256
          i32.lt_u
          br_if 1 (;@2;)
          local.get 5
          local.get 2
          i32.const 4
          i32.or
          i32.lt_u
          br_if 1 (;@2;)
          local.get 5
          local.get 2
          i32.sub
          i32.const 0
          i32.load offset=1055988
          i32.const 1
          i32.shl
          i32.le_u
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        local.get 0
        i32.const -8
        i32.add
        local.tee 6
        local.get 5
        i32.add
        local.set 7
        block  ;; label = @3
          local.get 5
          local.get 2
          i32.lt_u
          br_if 0 (;@3;)
          local.get 5
          local.get 2
          i32.sub
          local.tee 1
          i32.const 16
          i32.lt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 2
          local.get 4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 6
          local.get 2
          i32.add
          local.tee 2
          local.get 1
          i32.const 3
          i32.or
          i32.store offset=4
          local.get 7
          local.get 7
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 1
          call $dispose_chunk
          local.get 0
          return
        end
        block  ;; label = @3
          local.get 7
          i32.const 0
          i32.load offset=1055532
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1055520
          local.get 5
          i32.add
          local.tee 5
          local.get 2
          i32.le_u
          br_if 1 (;@2;)
          local.get 3
          local.get 2
          local.get 4
          i32.const 1
          i32.and
          i32.or
          i32.const 2
          i32.or
          i32.store
          i32.const 0
          local.get 6
          local.get 2
          i32.add
          local.tee 1
          i32.store offset=1055532
          i32.const 0
          local.get 5
          local.get 2
          i32.sub
          local.tee 2
          i32.store offset=1055520
          local.get 1
          local.get 2
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        block  ;; label = @3
          local.get 7
          i32.const 0
          i32.load offset=1055528
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          i32.load offset=1055516
          local.get 5
          i32.add
          local.tee 5
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 5
              local.get 2
              i32.sub
              local.tee 1
              i32.const 16
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              local.get 2
              local.get 4
              i32.const 1
              i32.and
              i32.or
              i32.const 2
              i32.or
              i32.store
              local.get 6
              local.get 2
              i32.add
              local.tee 2
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 6
              local.get 5
              i32.add
              local.tee 5
              local.get 1
              i32.store
              local.get 5
              local.get 5
              i32.load offset=4
              i32.const -2
              i32.and
              i32.store offset=4
              br 1 (;@4;)
            end
            local.get 3
            local.get 4
            i32.const 1
            i32.and
            local.get 5
            i32.or
            i32.const 2
            i32.or
            i32.store
            local.get 6
            local.get 5
            i32.add
            local.tee 1
            local.get 1
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
            i32.const 0
            local.set 1
            i32.const 0
            local.set 2
          end
          i32.const 0
          local.get 2
          i32.store offset=1055528
          i32.const 0
          local.get 1
          i32.store offset=1055516
          local.get 0
          return
        end
        local.get 7
        i32.load offset=4
        local.tee 8
        i32.const 2
        i32.and
        br_if 0 (;@2;)
        local.get 8
        i32.const -8
        i32.and
        local.get 5
        i32.add
        local.tee 9
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 9
        local.get 2
        i32.sub
        local.set 10
        block  ;; label = @3
          block  ;; label = @4
            local.get 8
            i32.const 255
            i32.gt_u
            br_if 0 (;@4;)
            local.get 7
            i32.load offset=8
            local.tee 1
            local.get 8
            i32.const 3
            i32.shr_u
            local.tee 11
            i32.const 3
            i32.shl
            i32.const 1055548
            i32.add
            local.tee 8
            i32.eq
            drop
            block  ;; label = @5
              local.get 7
              i32.load offset=12
              local.tee 5
              local.get 1
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              i32.const 0
              i32.load offset=1055508
              i32.const -2
              local.get 11
              i32.rotl
              i32.and
              i32.store offset=1055508
              br 2 (;@3;)
            end
            local.get 5
            local.get 8
            i32.eq
            drop
            local.get 5
            local.get 1
            i32.store offset=8
            local.get 1
            local.get 5
            i32.store offset=12
            br 1 (;@3;)
          end
          local.get 7
          i32.load offset=24
          local.set 12
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              i32.load offset=12
              local.tee 8
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              local.get 7
              i32.load offset=8
              local.tee 1
              i32.const 0
              i32.load offset=1055524
              i32.lt_u
              drop
              local.get 8
              local.get 1
              i32.store offset=8
              local.get 1
              local.get 8
              i32.store offset=12
              br 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                i32.const 20
                i32.add
                local.tee 5
                i32.load
                local.tee 1
                br_if 0 (;@6;)
                local.get 7
                i32.load offset=16
                local.tee 1
                i32.eqz
                br_if 1 (;@5;)
                local.get 7
                i32.const 16
                i32.add
                local.set 5
              end
              loop  ;; label = @6
                local.get 5
                local.set 11
                local.get 1
                local.tee 8
                i32.const 20
                i32.add
                local.tee 5
                i32.load
                local.tee 1
                br_if 0 (;@6;)
                local.get 8
                i32.const 16
                i32.add
                local.set 5
                local.get 8
                i32.load offset=16
                local.tee 1
                br_if 0 (;@6;)
              end
              local.get 11
              i32.const 0
              i32.store
              br 1 (;@4;)
            end
            i32.const 0
            local.set 8
          end
          local.get 12
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 7
              local.get 7
              i32.load offset=28
              local.tee 5
              i32.const 2
              i32.shl
              i32.const 1055812
              i32.add
              local.tee 1
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 1
              local.get 8
              i32.store
              local.get 8
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1055512
              i32.const -2
              local.get 5
              i32.rotl
              i32.and
              i32.store offset=1055512
              br 2 (;@3;)
            end
            local.get 12
            i32.const 16
            i32.const 20
            local.get 12
            i32.load offset=16
            local.get 7
            i32.eq
            select
            i32.add
            local.get 8
            i32.store
            local.get 8
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 8
          local.get 12
          i32.store offset=24
          block  ;; label = @4
            local.get 7
            i32.load offset=16
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 8
            local.get 1
            i32.store offset=16
            local.get 1
            local.get 8
            i32.store offset=24
          end
          local.get 7
          i32.const 20
          i32.add
          i32.load
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const 20
          i32.add
          local.get 1
          i32.store
          local.get 1
          local.get 8
          i32.store offset=24
        end
        block  ;; label = @3
          local.get 10
          i32.const 15
          i32.gt_u
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.const 1
          i32.and
          local.get 9
          i32.or
          i32.const 2
          i32.or
          i32.store
          local.get 6
          local.get 9
          i32.add
          local.tee 1
          local.get 1
          i32.load offset=4
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          return
        end
        local.get 3
        local.get 2
        local.get 4
        i32.const 1
        i32.and
        i32.or
        i32.const 2
        i32.or
        i32.store
        local.get 6
        local.get 2
        i32.add
        local.tee 1
        local.get 10
        i32.const 3
        i32.or
        i32.store offset=4
        local.get 6
        local.get 9
        i32.add
        local.tee 2
        local.get 2
        i32.load offset=4
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 1
        local.get 10
        call $dispose_chunk
        local.get 0
        return
      end
      block  ;; label = @2
        local.get 1
        call $dlmalloc
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 2
      local.get 0
      i32.const -4
      i32.const -8
      local.get 3
      i32.load
      local.tee 5
      i32.const 3
      i32.and
      select
      local.get 5
      i32.const -8
      i32.and
      i32.add
      local.tee 5
      local.get 1
      local.get 5
      local.get 1
      i32.lt_u
      select
      call $memcpy
      local.set 1
      local.get 0
      call $dlfree
      local.get 1
      local.set 0
    end
    local.get 0)
  (func $dispose_chunk (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                local.get 3
                i32.sub
                local.tee 0
                i32.const 0
                i32.load offset=1055528
                i32.eq
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 3
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load offset=8
                  local.tee 4
                  local.get 3
                  i32.const 3
                  i32.shr_u
                  local.tee 5
                  i32.const 3
                  i32.shl
                  i32.const 1055548
                  i32.add
                  local.tee 6
                  i32.eq
                  drop
                  local.get 0
                  i32.load offset=12
                  local.tee 3
                  local.get 4
                  i32.ne
                  br_if 2 (;@5;)
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055508
                  i32.const -2
                  local.get 5
                  i32.rotl
                  i32.and
                  i32.store offset=1055508
                  br 5 (;@2;)
                end
                local.get 0
                i32.load offset=24
                local.set 7
                block  ;; label = @7
                  local.get 0
                  i32.load offset=12
                  local.tee 6
                  local.get 0
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load offset=8
                  local.tee 3
                  i32.const 0
                  i32.load offset=1055524
                  i32.lt_u
                  drop
                  local.get 6
                  local.get 3
                  i32.store offset=8
                  local.get 3
                  local.get 6
                  i32.store offset=12
                  br 4 (;@3;)
                end
                block  ;; label = @7
                  local.get 0
                  i32.const 20
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 3
                  br_if 0 (;@7;)
                  local.get 0
                  i32.load offset=16
                  local.tee 3
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 0
                  i32.const 16
                  i32.add
                  local.set 4
                end
                loop  ;; label = @7
                  local.get 4
                  local.set 5
                  local.get 3
                  local.tee 6
                  i32.const 20
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 3
                  br_if 0 (;@7;)
                  local.get 6
                  i32.const 16
                  i32.add
                  local.set 4
                  local.get 6
                  i32.load offset=16
                  local.tee 3
                  br_if 0 (;@7;)
                end
                local.get 5
                i32.const 0
                i32.store
                br 3 (;@3;)
              end
              local.get 2
              i32.load offset=4
              local.tee 3
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.const -2
              i32.and
              i32.store offset=4
              i32.const 0
              local.get 1
              i32.store offset=1055516
              local.get 2
              local.get 1
              i32.store
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              return
            end
            local.get 3
            local.get 6
            i32.eq
            drop
            local.get 3
            local.get 4
            i32.store offset=8
            local.get 4
            local.get 3
            i32.store offset=12
            br 2 (;@2;)
          end
          i32.const 0
          local.set 6
        end
        local.get 7
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 0
            i32.load offset=28
            local.tee 4
            i32.const 2
            i32.shl
            i32.const 1055812
            i32.add
            local.tee 3
            i32.load
            i32.ne
            br_if 0 (;@4;)
            local.get 3
            local.get 6
            i32.store
            local.get 6
            br_if 1 (;@3;)
            i32.const 0
            i32.const 0
            i32.load offset=1055512
            i32.const -2
            local.get 4
            i32.rotl
            i32.and
            i32.store offset=1055512
            br 2 (;@2;)
          end
          local.get 7
          i32.const 16
          i32.const 20
          local.get 7
          i32.load offset=16
          local.get 0
          i32.eq
          select
          i32.add
          local.get 6
          i32.store
          local.get 6
          i32.eqz
          br_if 1 (;@2;)
        end
        local.get 6
        local.get 7
        i32.store offset=24
        block  ;; label = @3
          local.get 0
          i32.load offset=16
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          local.get 3
          i32.store offset=16
          local.get 3
          local.get 6
          i32.store offset=24
        end
        local.get 0
        i32.const 20
        i32.add
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        i32.const 20
        i32.add
        local.get 3
        i32.store
        local.get 3
        local.get 6
        i32.store offset=24
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.load offset=4
                local.tee 3
                i32.const 2
                i32.and
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 2
                  i32.const 0
                  i32.load offset=1055532
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 0
                  i32.store offset=1055532
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055520
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store offset=1055520
                  local.get 0
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  i32.const 0
                  i32.load offset=1055528
                  i32.ne
                  br_if 6 (;@1;)
                  i32.const 0
                  i32.const 0
                  i32.store offset=1055516
                  i32.const 0
                  i32.const 0
                  i32.store offset=1055528
                  return
                end
                block  ;; label = @7
                  local.get 2
                  i32.const 0
                  i32.load offset=1055528
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 0
                  i32.store offset=1055528
                  i32.const 0
                  i32.const 0
                  i32.load offset=1055516
                  local.get 1
                  i32.add
                  local.tee 1
                  i32.store offset=1055516
                  local.get 0
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 1
                  i32.add
                  local.get 1
                  i32.store
                  return
                end
                local.get 3
                i32.const -8
                i32.and
                local.get 1
                i32.add
                local.set 1
                block  ;; label = @7
                  local.get 3
                  i32.const 255
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 2
                  i32.load offset=8
                  local.tee 4
                  local.get 3
                  i32.const 3
                  i32.shr_u
                  local.tee 5
                  i32.const 3
                  i32.shl
                  i32.const 1055548
                  i32.add
                  local.tee 6
                  i32.eq
                  drop
                  block  ;; label = @8
                    local.get 2
                    i32.load offset=12
                    local.tee 3
                    local.get 4
                    i32.ne
                    br_if 0 (;@8;)
                    i32.const 0
                    i32.const 0
                    i32.load offset=1055508
                    i32.const -2
                    local.get 5
                    i32.rotl
                    i32.and
                    i32.store offset=1055508
                    br 5 (;@3;)
                  end
                  local.get 3
                  local.get 6
                  i32.eq
                  drop
                  local.get 3
                  local.get 4
                  i32.store offset=8
                  local.get 4
                  local.get 3
                  i32.store offset=12
                  br 4 (;@3;)
                end
                local.get 2
                i32.load offset=24
                local.set 7
                block  ;; label = @7
                  local.get 2
                  i32.load offset=12
                  local.tee 6
                  local.get 2
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 2
                  i32.load offset=8
                  local.tee 3
                  i32.const 0
                  i32.load offset=1055524
                  i32.lt_u
                  drop
                  local.get 6
                  local.get 3
                  i32.store offset=8
                  local.get 3
                  local.get 6
                  i32.store offset=12
                  br 3 (;@4;)
                end
                block  ;; label = @7
                  local.get 2
                  i32.const 20
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 3
                  br_if 0 (;@7;)
                  local.get 2
                  i32.load offset=16
                  local.tee 3
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 16
                  i32.add
                  local.set 4
                end
                loop  ;; label = @7
                  local.get 4
                  local.set 5
                  local.get 3
                  local.tee 6
                  i32.const 20
                  i32.add
                  local.tee 4
                  i32.load
                  local.tee 3
                  br_if 0 (;@7;)
                  local.get 6
                  i32.const 16
                  i32.add
                  local.set 4
                  local.get 6
                  i32.load offset=16
                  local.tee 3
                  br_if 0 (;@7;)
                end
                local.get 5
                i32.const 0
                i32.store
                br 2 (;@4;)
              end
              local.get 2
              local.get 3
              i32.const -2
              i32.and
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
              local.get 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              br 3 (;@2;)
            end
            i32.const 0
            local.set 6
          end
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              local.get 2
              i32.load offset=28
              local.tee 4
              i32.const 2
              i32.shl
              i32.const 1055812
              i32.add
              local.tee 3
              i32.load
              i32.ne
              br_if 0 (;@5;)
              local.get 3
              local.get 6
              i32.store
              local.get 6
              br_if 1 (;@4;)
              i32.const 0
              i32.const 0
              i32.load offset=1055512
              i32.const -2
              local.get 4
              i32.rotl
              i32.and
              i32.store offset=1055512
              br 2 (;@3;)
            end
            local.get 7
            i32.const 16
            i32.const 20
            local.get 7
            i32.load offset=16
            local.get 2
            i32.eq
            select
            i32.add
            local.get 6
            i32.store
            local.get 6
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 6
          local.get 7
          i32.store offset=24
          block  ;; label = @4
            local.get 2
            i32.load offset=16
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 6
            local.get 3
            i32.store offset=16
            local.get 3
            local.get 6
            i32.store offset=24
          end
          local.get 2
          i32.const 20
          i32.add
          i32.load
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 6
          i32.const 20
          i32.add
          local.get 3
          i32.store
          local.get 3
          local.get 6
          i32.store offset=24
        end
        local.get 0
        local.get 1
        i32.add
        local.get 1
        i32.store
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        i32.const 0
        i32.load offset=1055528
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        local.get 1
        i32.store offset=1055516
        return
      end
      block  ;; label = @2
        local.get 1
        i32.const 255
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const -8
        i32.and
        i32.const 1055548
        i32.add
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1055508
            local.tee 4
            i32.const 1
            local.get 1
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 1
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 4
            local.get 1
            i32.or
            i32.store offset=1055508
            local.get 3
            local.set 1
            br 1 (;@3;)
          end
          local.get 3
          i32.load offset=8
          local.set 1
        end
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 3
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 3
        i32.store offset=12
        local.get 0
        local.get 1
        i32.store offset=8
        return
      end
      i32.const 31
      local.set 3
      block  ;; label = @2
        local.get 1
        i32.const 16777215
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 38
        local.get 1
        i32.const 8
        i32.shr_u
        i32.clz
        local.tee 3
        i32.sub
        i32.shr_u
        i32.const 1
        i32.and
        local.get 3
        i32.const 1
        i32.shl
        i32.sub
        i32.const 62
        i32.add
        local.set 3
      end
      local.get 0
      local.get 3
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16 align=4
      local.get 3
      i32.const 2
      i32.shl
      i32.const 1055812
      i32.add
      local.set 4
      block  ;; label = @2
        i32.const 0
        i32.load offset=1055512
        local.tee 6
        i32.const 1
        local.get 3
        i32.shl
        local.tee 2
        i32.and
        br_if 0 (;@2;)
        local.get 4
        local.get 0
        i32.store
        i32.const 0
        local.get 6
        local.get 2
        i32.or
        i32.store offset=1055512
        local.get 0
        local.get 4
        i32.store offset=24
        local.get 0
        local.get 0
        i32.store offset=8
        local.get 0
        local.get 0
        i32.store offset=12
        return
      end
      local.get 1
      i32.const 0
      i32.const 25
      local.get 3
      i32.const 1
      i32.shr_u
      i32.sub
      local.get 3
      i32.const 31
      i32.eq
      select
      i32.shl
      local.set 3
      local.get 4
      i32.load
      local.set 6
      block  ;; label = @2
        loop  ;; label = @3
          local.get 6
          local.tee 4
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.eq
          br_if 1 (;@2;)
          local.get 3
          i32.const 29
          i32.shr_u
          local.set 6
          local.get 3
          i32.const 1
          i32.shl
          local.set 3
          local.get 4
          local.get 6
          i32.const 4
          i32.and
          i32.add
          i32.const 16
          i32.add
          local.tee 2
          i32.load
          local.tee 6
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        i32.store
        local.get 0
        local.get 4
        i32.store offset=24
        local.get 0
        local.get 0
        i32.store offset=12
        local.get 0
        local.get 0
        i32.store offset=8
        return
      end
      local.get 4
      i32.load offset=8
      local.tee 1
      local.get 0
      i32.store offset=12
      local.get 4
      local.get 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      local.get 4
      i32.store offset=12
      local.get 0
      local.get 1
      i32.store offset=8
    end)
  (func $posix_memalign (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 16
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          call $dlmalloc
          local.set 1
          br 1 (;@2;)
        end
        i32.const 28
        local.set 3
        local.get 1
        i32.const 4
        i32.lt_u
        br_if 1 (;@1;)
        local.get 1
        i32.const 3
        i32.and
        br_if 1 (;@1;)
        local.get 1
        i32.const 2
        i32.shr_u
        local.tee 4
        local.get 4
        i32.const -1
        i32.add
        i32.and
        br_if 1 (;@1;)
        i32.const 48
        local.set 3
        i32.const -64
        local.get 1
        i32.sub
        local.get 2
        i32.lt_u
        br_if 1 (;@1;)
        local.get 1
        i32.const 16
        local.get 1
        i32.const 16
        i32.gt_u
        select
        local.get 2
        call $internal_memalign
        local.set 1
      end
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 48
        return
      end
      local.get 0
      local.get 1
      i32.store
      i32.const 0
      local.set 3
    end
    local.get 3)
  (func $internal_memalign (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 16
        local.get 0
        i32.const 16
        i32.gt_u
        select
        local.tee 2
        local.get 2
        i32.const -1
        i32.add
        i32.and
        br_if 0 (;@2;)
        local.get 2
        local.set 0
        br 1 (;@1;)
      end
      i32.const 32
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.tee 0
        i32.const 1
        i32.shl
        local.set 3
        local.get 0
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      i32.const -64
      local.get 0
      i32.sub
      local.get 1
      i32.gt_u
      br_if 0 (;@1;)
      i32.const 0
      i32.const 48
      i32.store offset=1056004
      i32.const 0
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 16
      local.get 1
      i32.const 19
      i32.add
      i32.const -16
      i32.and
      local.get 1
      i32.const 11
      i32.lt_u
      select
      local.tee 1
      i32.add
      i32.const 12
      i32.add
      call $dlmalloc
      local.tee 3
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 3
    i32.const -8
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const -1
        i32.add
        local.get 3
        i32.and
        br_if 0 (;@2;)
        local.get 2
        local.set 0
        br 1 (;@1;)
      end
      local.get 3
      i32.const -4
      i32.add
      local.tee 4
      i32.load
      local.tee 5
      i32.const -8
      i32.and
      local.get 3
      local.get 0
      i32.add
      i32.const -1
      i32.add
      i32.const 0
      local.get 0
      i32.sub
      i32.and
      i32.const -8
      i32.add
      local.tee 3
      i32.const 0
      local.get 0
      local.get 3
      local.get 2
      i32.sub
      i32.const 15
      i32.gt_u
      select
      i32.add
      local.tee 0
      local.get 2
      i32.sub
      local.tee 3
      i32.sub
      local.set 6
      block  ;; label = @2
        local.get 5
        i32.const 3
        i32.and
        br_if 0 (;@2;)
        local.get 0
        local.get 6
        i32.store offset=4
        local.get 0
        local.get 2
        i32.load
        local.get 3
        i32.add
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      local.get 6
      local.get 0
      i32.load offset=4
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 0
      local.get 6
      i32.add
      local.tee 6
      local.get 6
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 4
      local.get 3
      local.get 4
      i32.load
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store
      local.get 2
      local.get 3
      i32.add
      local.tee 6
      local.get 6
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 2
      local.get 3
      call $dispose_chunk
    end
    block  ;; label = @1
      local.get 0
      i32.load offset=4
      local.tee 3
      i32.const 3
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const -8
      i32.and
      local.tee 2
      local.get 1
      i32.const 16
      i32.add
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 3
      i32.const 1
      i32.and
      i32.or
      i32.const 2
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      local.tee 3
      local.get 2
      local.get 1
      i32.sub
      local.tee 1
      i32.const 3
      i32.or
      i32.store offset=4
      local.get 0
      local.get 2
      i32.add
      local.tee 2
      local.get 2
      i32.load offset=4
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 3
      local.get 1
      call $dispose_chunk
    end
    local.get 0
    i32.const 8
    i32.add)
  (func $_Exit (type 1) (param i32)
    local.get 0
    call $__wasi_proc_exit
    unreachable)
  (func $__wasilibc_ensure_environ (type 0)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1055400
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      call $__wasilibc_initialize_environ
    end)
  (func $__wasilibc_initialize_environ (type 0)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 12
        i32.add
        local.get 0
        i32.const 8
        i32.add
        call $__wasi_environ_sizes_get
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load offset=12
          local.tee 1
          br_if 0 (;@3;)
          i32.const 1056008
          local.set 1
          br 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 1
            i32.add
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=8
            call $malloc
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 4
            call $calloc
            local.tee 1
            br_if 1 (;@3;)
            local.get 2
            call $free
          end
          i32.const 70
          call $_Exit
          unreachable
        end
        local.get 1
        local.get 2
        call $__wasi_environ_get
        i32.eqz
        br_if 1 (;@1;)
        local.get 2
        call $free
        local.get 1
        call $free
      end
      i32.const 71
      call $_Exit
      unreachable
    end
    i32.const 0
    local.get 1
    i32.store offset=1055400
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $__wasi_environ_get (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_environ_get
    i32.const 65535
    i32.and)
  (func $__wasi_environ_sizes_get (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__imported_wasi_snapshot_preview1_environ_sizes_get
    i32.const 65535
    i32.and)
  (func $__wasi_proc_exit (type 1) (param i32)
    local.get 0
    call $__imported_wasi_snapshot_preview1_proc_exit
    unreachable)
  (func $abort (type 0)
    unreachable
    unreachable)
  (func $getcwd (type 4) (param i32 i32) (result i32)
    (local i32)
    i32.const 0
    i32.load offset=1055404
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        local.get 2
        call $strdup
        local.tee 0
        br_if 1 (;@1;)
        i32.const 0
        i32.const 48
        i32.store offset=1056004
        i32.const 0
        return
      end
      block  ;; label = @2
        local.get 2
        call $strlen
        i32.const 1
        i32.add
        local.get 1
        i32.le_u
        br_if 0 (;@2;)
        i32.const 0
        i32.const 68
        i32.store offset=1056004
        i32.const 0
        return
      end
      local.get 0
      local.get 2
      call $strcpy
      local.set 0
    end
    local.get 0)
  (func $sbrk (type 3) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      memory.size
      i32.const 16
      i32.shl
      return
    end
    block  ;; label = @1
      local.get 0
      i32.const 65535
      i32.and
      br_if 0 (;@1;)
      local.get 0
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.const 16
        i32.shr_u
        memory.grow
        local.tee 0
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        i32.const 48
        i32.store offset=1056004
        i32.const -1
        return
      end
      local.get 0
      i32.const 16
      i32.shl
      return
    end
    call $abort
    unreachable)
  (func $getenv (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32)
    call $__wasilibc_ensure_environ
    block  ;; label = @1
      local.get 0
      i32.const 61
      call $__strchrnul
      local.tee 1
      local.get 0
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    i32.const 0
    local.set 2
    block  ;; label = @1
      local.get 0
      local.get 1
      local.get 0
      i32.sub
      local.tee 3
      i32.add
      i32.load8_u
      br_if 0 (;@1;)
      i32.const 0
      i32.load offset=1055400
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 4
      i32.const 4
      i32.add
      local.set 4
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 1
            local.get 3
            call $strncmp
            br_if 0 (;@4;)
            local.get 1
            local.get 3
            i32.add
            local.tee 1
            i32.load8_u
            i32.const 61
            i32.eq
            br_if 2 (;@2;)
          end
          local.get 4
          i32.load
          local.set 1
          local.get 4
          i32.const 4
          i32.add
          local.set 4
          local.get 1
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 1
      i32.const 1
      i32.add
      local.set 2
    end
    local.get 2)
  (func $dummy (type 0))
  (func $__wasm_call_dtors (type 0)
    call $dummy
    call $dummy)
  (func $memcmp (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        loop  ;; label = @3
          local.get 0
          i32.load8_u
          local.tee 4
          local.get 1
          i32.load8_u
          local.tee 5
          i32.ne
          br_if 1 (;@2;)
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          br_if 0 (;@3;)
          br 2 (;@1;)
        end
      end
      local.get 4
      local.get 5
      i32.sub
      local.set 3
    end
    local.get 3)
  (func $memcpy (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 32
          i32.gt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 1
          i32.load8_u
          i32.store8
          local.get 2
          i32.const -1
          i32.add
          local.set 3
          local.get 0
          i32.const 1
          i32.add
          local.set 4
          local.get 1
          i32.const 1
          i32.add
          local.tee 5
          i32.const 3
          i32.and
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          local.get 1
          i32.load8_u offset=1
          i32.store8 offset=1
          local.get 2
          i32.const -2
          i32.add
          local.set 3
          local.get 0
          i32.const 2
          i32.add
          local.set 4
          local.get 1
          i32.const 2
          i32.add
          local.tee 5
          i32.const 3
          i32.and
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          local.get 1
          i32.load8_u offset=2
          i32.store8 offset=2
          local.get 2
          i32.const -3
          i32.add
          local.set 3
          local.get 0
          i32.const 3
          i32.add
          local.set 4
          local.get 1
          i32.const 3
          i32.add
          local.tee 5
          i32.const 3
          i32.and
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          local.get 1
          i32.load8_u offset=3
          i32.store8 offset=3
          local.get 2
          i32.const -4
          i32.add
          local.set 3
          local.get 0
          i32.const 4
          i32.add
          local.set 4
          local.get 1
          i32.const 4
          i32.add
          local.set 5
          br 2 (;@1;)
        end
        local.get 0
        local.get 1
        local.get 2
        memory.copy
        local.get 0
        return
      end
      local.get 2
      local.set 3
      local.get 0
      local.set 4
      local.get 1
      local.set 5
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const 3
        i32.and
        local.tee 2
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 16
            i32.ge_u
            br_if 0 (;@4;)
            local.get 3
            local.set 2
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 3
            i32.const -16
            i32.add
            local.tee 2
            i32.const 16
            i32.and
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i64.load align=4
            i64.store align=4
            local.get 4
            local.get 5
            i64.load offset=8 align=4
            i64.store offset=8 align=4
            local.get 4
            i32.const 16
            i32.add
            local.set 4
            local.get 5
            i32.const 16
            i32.add
            local.set 5
            local.get 2
            local.set 3
          end
          local.get 2
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 3
          local.set 2
          loop  ;; label = @4
            local.get 4
            local.get 5
            i64.load align=4
            i64.store align=4
            local.get 4
            local.get 5
            i64.load offset=8 align=4
            i64.store offset=8 align=4
            local.get 4
            local.get 5
            i64.load offset=16 align=4
            i64.store offset=16 align=4
            local.get 4
            local.get 5
            i64.load offset=24 align=4
            i64.store offset=24 align=4
            local.get 4
            i32.const 32
            i32.add
            local.set 4
            local.get 5
            i32.const 32
            i32.add
            local.set 5
            local.get 2
            i32.const -32
            i32.add
            local.tee 2
            i32.const 15
            i32.gt_u
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 2
          i32.const 8
          i32.lt_u
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i64.load align=4
          i64.store align=4
          local.get 5
          i32.const 8
          i32.add
          local.set 5
          local.get 4
          i32.const 8
          i32.add
          local.set 4
        end
        block  ;; label = @3
          local.get 2
          i32.const 4
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.load
          i32.store
          local.get 5
          i32.const 4
          i32.add
          local.set 5
          local.get 4
          i32.const 4
          i32.add
          local.set 4
        end
        block  ;; label = @3
          local.get 2
          i32.const 2
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          local.get 5
          i32.load16_u align=1
          i32.store16 align=1
          local.get 4
          i32.const 2
          i32.add
          local.set 4
          local.get 5
          i32.const 2
          i32.add
          local.set 5
        end
        local.get 2
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 5
        i32.load8_u
        i32.store8
        local.get 0
        return
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.const 32
                i32.lt_u
                br_if 0 (;@6;)
                local.get 4
                local.get 5
                i32.load
                local.tee 3
                i32.store8
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 2
                    i32.const -1
                    i32.add
                    br_table 3 (;@5;) 0 (;@8;) 1 (;@7;) 3 (;@5;)
                  end
                  local.get 4
                  local.get 3
                  i32.const 8
                  i32.shr_u
                  i32.store8 offset=1
                  local.get 4
                  local.get 5
                  i32.const 6
                  i32.add
                  i64.load align=2
                  i64.store offset=6 align=4
                  local.get 4
                  local.get 5
                  i32.load offset=4
                  i32.const 16
                  i32.shl
                  local.get 3
                  i32.const 16
                  i32.shr_u
                  i32.or
                  i32.store offset=2
                  local.get 4
                  i32.const 18
                  i32.add
                  local.set 2
                  local.get 5
                  i32.const 18
                  i32.add
                  local.set 1
                  i32.const 14
                  local.set 6
                  local.get 5
                  i32.const 14
                  i32.add
                  i32.load align=2
                  local.set 5
                  i32.const 14
                  local.set 3
                  br 3 (;@4;)
                end
                local.get 4
                local.get 5
                i32.const 5
                i32.add
                i64.load align=1
                i64.store offset=5 align=4
                local.get 4
                local.get 5
                i32.load offset=4
                i32.const 24
                i32.shl
                local.get 3
                i32.const 8
                i32.shr_u
                i32.or
                i32.store offset=1
                local.get 4
                i32.const 17
                i32.add
                local.set 2
                local.get 5
                i32.const 17
                i32.add
                local.set 1
                i32.const 13
                local.set 6
                local.get 5
                i32.const 13
                i32.add
                i32.load align=1
                local.set 5
                i32.const 15
                local.set 3
                br 2 (;@4;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.const 16
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 4
                  local.set 2
                  local.get 5
                  local.set 1
                  br 1 (;@6;)
                end
                local.get 4
                local.get 5
                i32.load8_u
                i32.store8
                local.get 4
                local.get 5
                i32.load offset=1 align=1
                i32.store offset=1 align=1
                local.get 4
                local.get 5
                i64.load offset=5 align=1
                i64.store offset=5 align=1
                local.get 4
                local.get 5
                i32.load16_u offset=13 align=1
                i32.store16 offset=13 align=1
                local.get 4
                local.get 5
                i32.load8_u offset=15
                i32.store8 offset=15
                local.get 4
                i32.const 16
                i32.add
                local.set 2
                local.get 5
                i32.const 16
                i32.add
                local.set 1
              end
              local.get 3
              i32.const 8
              i32.and
              br_if 2 (;@3;)
              br 3 (;@2;)
            end
            local.get 4
            local.get 3
            i32.const 16
            i32.shr_u
            i32.store8 offset=2
            local.get 4
            local.get 3
            i32.const 8
            i32.shr_u
            i32.store8 offset=1
            local.get 4
            local.get 5
            i32.const 7
            i32.add
            i64.load align=1
            i64.store offset=7 align=4
            local.get 4
            local.get 5
            i32.load offset=4
            i32.const 8
            i32.shl
            local.get 3
            i32.const 24
            i32.shr_u
            i32.or
            i32.store offset=3
            local.get 4
            i32.const 19
            i32.add
            local.set 2
            local.get 5
            i32.const 19
            i32.add
            local.set 1
            i32.const 15
            local.set 6
            local.get 5
            i32.const 15
            i32.add
            i32.load align=1
            local.set 5
            i32.const 13
            local.set 3
          end
          local.get 4
          local.get 6
          i32.add
          local.get 5
          i32.store
        end
        local.get 2
        local.get 1
        i64.load align=1
        i64.store align=1
        local.get 2
        i32.const 8
        i32.add
        local.set 2
        local.get 1
        i32.const 8
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 3
        i32.const 4
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.load align=1
        i32.store align=1
        local.get 2
        i32.const 4
        i32.add
        local.set 2
        local.get 1
        i32.const 4
        i32.add
        local.set 1
      end
      block  ;; label = @2
        local.get 3
        i32.const 2
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.load16_u align=1
        i32.store16 align=1
        local.get 2
        i32.const 2
        i32.add
        local.set 2
        local.get 1
        i32.const 2
        i32.add
        local.set 1
      end
      local.get 3
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 1
      i32.load8_u
      i32.store8
    end
    local.get 0)
  (func $memmove (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 33
          i32.ge_u
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.eq
          br_if 2 (;@1;)
          local.get 1
          local.get 0
          local.get 2
          i32.add
          local.tee 3
          i32.sub
          i32.const 0
          local.get 2
          i32.const 1
          i32.shl
          i32.sub
          i32.gt_u
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 1
        local.get 2
        memory.copy
        br 1 (;@1;)
      end
      local.get 1
      local.get 0
      i32.xor
      i32.const 3
      i32.and
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            local.get 1
            i32.ge_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              local.set 5
              local.get 0
              local.set 3
              br 3 (;@2;)
            end
            block  ;; label = @5
              local.get 0
              i32.const 3
              i32.and
              br_if 0 (;@5;)
              local.get 2
              local.set 5
              local.get 0
              local.set 3
              br 2 (;@3;)
            end
            local.get 2
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 2
            i32.const -1
            i32.add
            local.set 5
            block  ;; label = @5
              local.get 0
              i32.const 1
              i32.add
              local.tee 3
              i32.const 3
              i32.and
              br_if 0 (;@5;)
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              br 2 (;@3;)
            end
            local.get 5
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=1
            i32.store8 offset=1
            local.get 2
            i32.const -2
            i32.add
            local.set 5
            block  ;; label = @5
              local.get 0
              i32.const 2
              i32.add
              local.tee 3
              i32.const 3
              i32.and
              br_if 0 (;@5;)
              local.get 1
              i32.const 2
              i32.add
              local.set 1
              br 2 (;@3;)
            end
            local.get 5
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=2
            i32.store8 offset=2
            local.get 2
            i32.const -3
            i32.add
            local.set 5
            block  ;; label = @5
              local.get 0
              i32.const 3
              i32.add
              local.tee 3
              i32.const 3
              i32.and
              br_if 0 (;@5;)
              local.get 1
              i32.const 3
              i32.add
              local.set 1
              br 2 (;@3;)
            end
            local.get 5
            i32.eqz
            br_if 3 (;@1;)
            local.get 0
            local.get 1
            i32.load8_u offset=3
            i32.store8 offset=3
            local.get 0
            i32.const 4
            i32.add
            local.set 3
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 2
            i32.const -4
            i32.add
            local.set 5
            br 1 (;@3;)
          end
          block  ;; label = @4
            local.get 4
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 3
              i32.const 3
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 2
              i32.const -1
              i32.add
              local.tee 3
              i32.add
              local.tee 4
              local.get 1
              local.get 3
              i32.add
              i32.load8_u
              i32.store8
              block  ;; label = @6
                local.get 4
                i32.const 3
                i32.and
                br_if 0 (;@6;)
                local.get 3
                local.set 2
                br 1 (;@5;)
              end
              local.get 3
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 2
              i32.const -2
              i32.add
              local.tee 3
              i32.add
              local.tee 4
              local.get 1
              local.get 3
              i32.add
              i32.load8_u
              i32.store8
              block  ;; label = @6
                local.get 4
                i32.const 3
                i32.and
                br_if 0 (;@6;)
                local.get 3
                local.set 2
                br 1 (;@5;)
              end
              local.get 3
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 2
              i32.const -3
              i32.add
              local.tee 3
              i32.add
              local.tee 4
              local.get 1
              local.get 3
              i32.add
              i32.load8_u
              i32.store8
              block  ;; label = @6
                local.get 4
                i32.const 3
                i32.and
                br_if 0 (;@6;)
                local.get 3
                local.set 2
                br 1 (;@5;)
              end
              local.get 3
              i32.eqz
              br_if 4 (;@1;)
              local.get 0
              local.get 2
              i32.const -4
              i32.add
              local.tee 2
              i32.add
              local.get 1
              local.get 2
              i32.add
              i32.load8_u
              i32.store8
            end
            local.get 2
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 2
              i32.const -4
              i32.add
              local.tee 6
              i32.const 2
              i32.shr_u
              i32.const 1
              i32.add
              i32.const 3
              i32.and
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.const -4
              i32.add
              local.set 4
              local.get 0
              i32.const -4
              i32.add
              local.set 5
              loop  ;; label = @6
                local.get 5
                local.get 2
                i32.add
                local.get 4
                local.get 2
                i32.add
                i32.load
                i32.store
                local.get 2
                i32.const -4
                i32.add
                local.set 2
                local.get 3
                i32.const -1
                i32.add
                local.tee 3
                br_if 0 (;@6;)
              end
            end
            local.get 6
            i32.const 12
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            i32.const -16
            i32.add
            local.set 5
            local.get 0
            i32.const -16
            i32.add
            local.set 6
            loop  ;; label = @5
              local.get 6
              local.get 2
              i32.add
              local.tee 3
              i32.const 12
              i32.add
              local.get 5
              local.get 2
              i32.add
              local.tee 4
              i32.const 12
              i32.add
              i32.load
              i32.store
              local.get 3
              i32.const 8
              i32.add
              local.get 4
              i32.const 8
              i32.add
              i32.load
              i32.store
              local.get 3
              i32.const 4
              i32.add
              local.get 4
              i32.const 4
              i32.add
              i32.load
              i32.store
              local.get 3
              local.get 4
              i32.load
              i32.store
              local.get 2
              i32.const -16
              i32.add
              local.tee 2
              i32.const 3
              i32.gt_u
              br_if 0 (;@5;)
            end
          end
          local.get 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 2
          local.set 3
          block  ;; label = @4
            local.get 2
            i32.const 3
            i32.and
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const -1
            i32.add
            local.set 5
            local.get 0
            i32.const -1
            i32.add
            local.set 6
            local.get 2
            local.set 3
            loop  ;; label = @5
              local.get 6
              local.get 3
              i32.add
              local.get 5
              local.get 3
              i32.add
              i32.load8_u
              i32.store8
              local.get 3
              i32.const -1
              i32.add
              local.set 3
              local.get 4
              i32.const -1
              i32.add
              local.tee 4
              br_if 0 (;@5;)
            end
          end
          local.get 2
          i32.const 4
          i32.lt_u
          br_if 2 (;@1;)
          local.get 1
          i32.const -4
          i32.add
          local.set 4
          local.get 0
          i32.const -4
          i32.add
          local.set 5
          loop  ;; label = @4
            local.get 5
            local.get 3
            i32.add
            local.tee 1
            i32.const 3
            i32.add
            local.get 4
            local.get 3
            i32.add
            local.tee 2
            i32.const 3
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 2
            i32.add
            local.get 2
            i32.const 2
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.get 2
            i32.const 1
            i32.add
            i32.load8_u
            i32.store8
            local.get 1
            local.get 2
            i32.load8_u
            i32.store8
            local.get 3
            i32.const -4
            i32.add
            local.tee 3
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 5
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 5
          i32.const -4
          i32.add
          local.tee 4
          i32.const 2
          i32.shr_u
          i32.const 1
          i32.add
          i32.const 7
          i32.and
          local.tee 2
          i32.eqz
          br_if 0 (;@3;)
          local.get 5
          local.get 2
          i32.const 2
          i32.shl
          i32.sub
          local.set 5
          loop  ;; label = @4
            local.get 3
            local.get 1
            i32.load
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 3
            i32.const 4
            i32.add
            local.set 3
            local.get 2
            i32.const -1
            i32.add
            local.tee 2
            br_if 0 (;@4;)
          end
        end
        local.get 4
        i32.const 28
        i32.lt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load
          i32.store
          local.get 3
          local.get 1
          i32.load offset=4
          i32.store offset=4
          local.get 3
          local.get 1
          i32.load offset=8
          i32.store offset=8
          local.get 3
          local.get 1
          i32.load offset=12
          i32.store offset=12
          local.get 3
          local.get 1
          i32.load offset=16
          i32.store offset=16
          local.get 3
          local.get 1
          i32.load offset=20
          i32.store offset=20
          local.get 3
          local.get 1
          i32.load offset=24
          i32.store offset=24
          local.get 3
          local.get 1
          i32.load offset=28
          i32.store offset=28
          local.get 1
          i32.const 32
          i32.add
          local.set 1
          local.get 3
          i32.const 32
          i32.add
          local.set 3
          local.get 5
          i32.const -32
          i32.add
          local.tee 5
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 5
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.const 7
          i32.and
          local.tee 2
          br_if 0 (;@3;)
          local.get 5
          local.set 4
          br 1 (;@2;)
        end
        local.get 5
        i32.const -8
        i32.and
        local.set 4
        loop  ;; label = @3
          local.get 3
          local.get 1
          i32.load8_u
          i32.store8
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 2
          i32.const -1
          i32.add
          local.tee 2
          br_if 0 (;@3;)
        end
      end
      local.get 5
      i32.const 8
      i32.lt_u
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 3
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 3
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 3
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 3
        local.get 1
        i32.load8_u offset=4
        i32.store8 offset=4
        local.get 3
        local.get 1
        i32.load8_u offset=5
        i32.store8 offset=5
        local.get 3
        local.get 1
        i32.load8_u offset=6
        i32.store8 offset=6
        local.get 3
        local.get 1
        i32.load8_u offset=7
        i32.store8 offset=7
        local.get 3
        i32.const 8
        i32.add
        local.set 3
        local.get 1
        i32.const 8
        i32.add
        local.set 1
        local.get 4
        i32.const -8
        i32.add
        local.tee 4
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $memset (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.const 33
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      local.get 2
      memory.fill
      local.get 0
      return
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8
      local.get 0
      local.get 2
      i32.add
      local.tee 3
      i32.const -1
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const -3
      i32.add
      local.get 1
      i32.store8
      local.get 3
      i32.const -2
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 3
      i32.const -4
      i32.add
      local.get 1
      i32.store8
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 5
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 3
      i32.store
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 1
      i32.add
      local.tee 2
      i32.const -4
      i32.add
      local.get 3
      i32.store
      local.get 1
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 5
      local.get 3
      i32.store offset=8
      local.get 5
      local.get 3
      i32.store offset=4
      local.get 2
      i32.const -8
      i32.add
      local.get 3
      i32.store
      local.get 2
      i32.const -12
      i32.add
      local.get 3
      i32.store
      local.get 1
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 5
      local.get 3
      i32.store offset=24
      local.get 5
      local.get 3
      i32.store offset=20
      local.get 5
      local.get 3
      i32.store offset=16
      local.get 5
      local.get 3
      i32.store offset=12
      local.get 2
      i32.const -16
      i32.add
      local.get 3
      i32.store
      local.get 2
      i32.const -20
      i32.add
      local.get 3
      i32.store
      local.get 2
      i32.const -24
      i32.add
      local.get 3
      i32.store
      local.get 2
      i32.const -28
      i32.add
      local.get 3
      i32.store
      local.get 1
      local.get 5
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 2
      i32.sub
      local.tee 1
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i64.extend_i32_u
      i64.const 4294967297
      i64.mul
      local.set 6
      local.get 5
      local.get 2
      i32.add
      local.set 2
      loop  ;; label = @2
        local.get 2
        local.get 6
        i64.store offset=24
        local.get 2
        local.get 6
        i64.store offset=16
        local.get 2
        local.get 6
        i64.store offset=8
        local.get 2
        local.get 6
        i64.store
        local.get 2
        i32.const 32
        i32.add
        local.set 2
        local.get 1
        i32.const -32
        i32.add
        local.tee 1
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func $__strchrnul (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 255
            i32.and
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 0
            i32.const 3
            i32.and
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 0
              i32.load8_u
              local.tee 3
              br_if 0 (;@5;)
              local.get 0
              return
            end
            local.get 3
            local.get 1
            i32.const 255
            i32.and
            i32.ne
            br_if 1 (;@3;)
            local.get 0
            return
          end
          local.get 0
          local.get 0
          call $strlen
          i32.add
          return
        end
        block  ;; label = @3
          local.get 0
          i32.const 1
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.const 2
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        block  ;; label = @3
          local.get 0
          i32.const 3
          i32.add
          local.tee 3
          i32.const 3
          i32.and
          br_if 0 (;@3;)
          local.get 3
          local.set 0
          br 1 (;@2;)
        end
        local.get 3
        i32.load8_u
        local.tee 4
        i32.eqz
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.const 255
        i32.and
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.set 0
      end
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 3
        i32.const -1
        i32.xor
        local.get 3
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 16843009
        i32.mul
        local.set 2
        loop  ;; label = @3
          local.get 3
          local.get 2
          i32.xor
          local.tee 3
          i32.const -1
          i32.xor
          local.get 3
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          br_if 1 (;@2;)
          local.get 0
          i32.const 4
          i32.add
          local.tee 0
          i32.load
          local.tee 3
          i32.const -1
          i32.xor
          local.get 3
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 0
      i32.const -1
      i32.add
      local.set 3
      local.get 1
      i32.const 255
      i32.and
      local.set 1
      loop  ;; label = @2
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        i32.load8_u
        local.tee 0
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        local.get 1
        i32.ne
        br_if 0 (;@2;)
      end
    end
    local.get 3)
  (func $__stpcpy (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 0
          i32.xor
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.load8_u
          local.set 2
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 1
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 1
          i32.load8_u
          local.tee 2
          i32.store8
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            local.get 0
            return
          end
          local.get 0
          i32.const 1
          i32.add
          local.set 2
          block  ;; label = @4
            local.get 1
            i32.const 1
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 2
            local.set 0
            local.get 3
            local.set 1
            br 1 (;@3;)
          end
          local.get 2
          local.get 3
          i32.load8_u
          local.tee 3
          i32.store8
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 2
          i32.add
          local.set 2
          block  ;; label = @4
            local.get 1
            i32.const 2
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 2
            local.set 0
            local.get 3
            local.set 1
            br 1 (;@3;)
          end
          local.get 2
          local.get 3
          i32.load8_u
          local.tee 3
          i32.store8
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 3
          i32.add
          local.set 2
          block  ;; label = @4
            local.get 1
            i32.const 3
            i32.add
            local.tee 3
            i32.const 3
            i32.and
            br_if 0 (;@4;)
            local.get 2
            local.set 0
            local.get 3
            local.set 1
            br 1 (;@3;)
          end
          local.get 2
          local.get 3
          i32.load8_u
          local.tee 3
          i32.store8
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const 4
          i32.add
          local.set 1
        end
        local.get 1
        i32.load
        local.tee 2
        i32.const -1
        i32.xor
        local.get 2
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          local.get 2
          i32.store
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const 4
          i32.add
          local.tee 1
          i32.load
          local.tee 2
          i32.const -1
          i32.xor
          local.get 2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 2
      i32.store8
      block  ;; label = @2
        local.get 2
        i32.const 255
        i32.and
        br_if 0 (;@2;)
        local.get 0
        return
      end
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      local.get 0
      local.set 2
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load8_u
        local.tee 0
        i32.store8 offset=1
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 0
        br_if 0 (;@2;)
      end
    end
    local.get 2)
  (func $strcpy (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $__stpcpy
    drop
    local.get 0)
  (func $strdup (type 3) (param i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 0
      call $strlen
      i32.const 1
      i32.add
      local.tee 1
      call $malloc
      local.tee 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      local.get 1
      call $memcpy
      drop
    end
    local.get 2)
  (func $dummy.1 (type 4) (param i32 i32) (result i32)
    local.get 0)
  (func $__lctrans (type 4) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $dummy.1)
  (func $strerror (type 3) (param i32) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1056036
      local.tee 1
      br_if 0 (;@1;)
      i32.const 1056012
      local.set 1
      i32.const 0
      i32.const 1056012
      i32.store offset=1056036
    end
    i32.const 0
    local.get 0
    local.get 0
    i32.const 76
    i32.gt_u
    select
    i32.const 1
    i32.shl
    i32.const 1053968
    i32.add
    i32.load16_u
    i32.const 1052414
    i32.add
    local.get 1
    i32.load offset=20
    call $__lctrans)
  (func $strerror_r (type 5) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        call $strerror
        local.tee 0
        call $strlen
        local.tee 3
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 68
        local.set 3
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        call $memcpy
        local.get 2
        i32.add
        i32.const 0
        i32.store8
        i32.const 68
        return
      end
      local.get 1
      local.get 0
      local.get 3
      i32.const 1
      i32.add
      call $memcpy
      drop
      i32.const 0
      local.set 3
    end
    local.get 3)
  (func $strlen (type 3) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 0
          i32.load8_u
          br_if 0 (;@3;)
          local.get 0
          local.get 0
          i32.sub
          return
        end
        local.get 0
        i32.const 1
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 2
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 3
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.const 4
        i32.add
        local.tee 1
        i32.const 3
        i32.and
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const -4
      i32.add
      local.set 2
      local.get 1
      i32.const -5
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 2
        i32.const 4
        i32.add
        local.tee 2
        i32.load
        local.tee 3
        i32.const -1
        i32.xor
        local.get 3
        i32.const -16843009
        i32.add
        i32.and
        i32.const -2139062144
        i32.and
        i32.eqz
        br_if 0 (;@2;)
      end
      loop  ;; label = @2
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.load8_u
        local.set 3
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        local.get 3
        br_if 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.sub)
  (func $strncmp (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32)
    block  ;; label = @1
      local.get 2
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u
        local.tee 3
        br_if 0 (;@2;)
        i32.const 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      local.get 2
      i32.const -1
      i32.add
      local.set 2
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.const 255
          i32.and
          local.get 1
          i32.load8_u
          local.tee 4
          i32.ne
          br_if 1 (;@2;)
          local.get 4
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          i32.const 0
          i32.eq
          br_if 1 (;@2;)
          local.get 2
          i32.const -1
          i32.add
          local.set 2
          local.get 1
          i32.const 1
          i32.add
          local.set 1
          local.get 0
          i32.load8_u
          local.set 3
          local.get 0
          i32.const 1
          i32.add
          local.set 0
          local.get 3
          br_if 0 (;@3;)
        end
        i32.const 0
        local.set 3
      end
      local.get 3
      i32.const 255
      i32.and
      local.set 3
    end
    local.get 3
    local.get 1
    i32.load8_u
    i32.sub)
  (func $_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hb398c037eb495ee7E (type 4) (param i32 i32) (result i32)
    local.get 1
    i32.const 1054122
    i32.const 11
    call $_ZN4core3fmt9Formatter9write_str17h27ead38f26af9f7cE)
  (func $_ZN5alloc7raw_vec17capacity_overflow17ha844c72da6f68b05E (type 0)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 0
    i32.store offset=24
    local.get 0
    i32.const 1
    i32.store offset=12
    local.get 0
    i32.const 1054152
    i32.store offset=8
    local.get 0
    i64.const 4
    i64.store offset=16 align=4
    local.get 0
    i32.const 8
    i32.add
    i32.const 1054188
    call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
    unreachable)
  (func $_ZN5alloc7raw_vec12handle_error17h7e30ce1f05b9350bE (type 2) (param i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $_ZN5alloc7raw_vec17capacity_overflow17ha844c72da6f68b05E
      unreachable
    end
    local.get 0
    local.get 1
    call $_ZN5alloc5alloc18handle_alloc_error17h1200fd4682b58446E
    unreachable)
  (func $_ZN5alloc7raw_vec11finish_grow17hac99f93d79e8a118E (type 9) (param i32 i32 i32 i32)
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
              block  ;; label = @6
                local.get 3
                i32.load offset=4
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 3
                  i32.load offset=8
                  local.tee 4
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 2
                    br_if 0 (;@8;)
                    i32.const 1
                    local.set 4
                    br 4 (;@4;)
                  end
                  i32.const 0
                  i32.load8_u offset=1055413
                  drop
                  local.get 2
                  i32.const 1
                  call $__rust_alloc
                  local.set 4
                  br 2 (;@5;)
                end
                local.get 3
                i32.load
                local.get 4
                i32.const 1
                local.get 2
                call $__rust_realloc
                local.set 4
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 2
                br_if 0 (;@6;)
                i32.const 1
                local.set 4
                br 2 (;@4;)
              end
              i32.const 0
              i32.load8_u offset=1055413
              drop
              local.get 2
              i32.const 1
              call $__rust_alloc
              local.set 4
            end
            local.get 4
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
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb214d1d8443bd4bfE (type 1) (param i32)
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
  (func $_ZN5alloc5alloc18handle_alloc_error17h1200fd4682b58446E (type 2) (param i32 i32)
    local.get 1
    local.get 0
    call $__rust_alloc_error_handler
    unreachable)
  (func $_ZN72_$LT$$RF$str$u20$as$u20$alloc..ffi..c_str..CString..new..SpecNewImpl$GT$13spec_new_impl17h8877d3a956b8dec6E (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 1
            i32.add
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 5
            local.get 4
            i32.const 0
            i32.lt_s
            br_if 1 (;@3;)
            i32.const 0
            i32.load8_u offset=1055413
            drop
            i32.const 1
            local.set 5
            local.get 4
            i32.const 1
            call $__rust_alloc
            local.tee 6
            i32.eqz
            br_if 1 (;@3;)
            local.get 6
            local.get 1
            local.get 2
            call $memcpy
            local.set 6
            block  ;; label = @5
              local.get 2
              i32.const 8
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              i32.const 8
              i32.add
              i32.const 0
              local.get 1
              local.get 2
              call $_ZN4core5slice6memchr14memchr_aligned17h5eb229a17b86a4e2E
              local.get 3
              i32.load offset=12
              local.set 7
              local.get 3
              i32.load offset=8
              local.set 5
              br 4 (;@1;)
            end
            block  ;; label = @5
              local.get 2
              br_if 0 (;@5;)
              i32.const 0
              local.set 7
              i32.const 0
              local.set 5
              br 4 (;@1;)
            end
            block  ;; label = @5
              local.get 1
              i32.load8_u
              br_if 0 (;@5;)
              i32.const 1
              local.set 5
              i32.const 0
              local.set 7
              br 4 (;@1;)
            end
            i32.const 1
            local.set 5
            local.get 2
            i32.const 1
            i32.eq
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 1
              i32.load8_u offset=1
              br_if 0 (;@5;)
              i32.const 1
              local.set 7
              br 4 (;@1;)
            end
            i32.const 2
            local.set 7
            local.get 2
            i32.const 2
            i32.eq
            br_if 2 (;@2;)
            local.get 1
            i32.load8_u offset=2
            i32.eqz
            br_if 3 (;@1;)
            i32.const 3
            local.set 7
            local.get 2
            i32.const 3
            i32.eq
            br_if 2 (;@2;)
            local.get 1
            i32.load8_u offset=3
            i32.eqz
            br_if 3 (;@1;)
            i32.const 4
            local.set 7
            local.get 2
            i32.const 4
            i32.eq
            br_if 2 (;@2;)
            local.get 1
            i32.load8_u offset=4
            i32.eqz
            br_if 3 (;@1;)
            i32.const 5
            local.set 7
            local.get 2
            i32.const 5
            i32.eq
            br_if 2 (;@2;)
            local.get 1
            i32.load8_u offset=5
            i32.eqz
            br_if 3 (;@1;)
            local.get 2
            local.set 7
            i32.const 0
            local.set 5
            local.get 2
            i32.const 6
            i32.eq
            br_if 3 (;@1;)
            local.get 2
            i32.const 6
            local.get 1
            i32.load8_u offset=6
            local.tee 1
            select
            local.set 7
            local.get 1
            i32.eqz
            local.set 5
            br 3 (;@1;)
          end
          i32.const 1054236
          call $_ZN4core6option13unwrap_failed17h165f1460d4b9b2e4E
          unreachable
        end
        local.get 5
        local.get 4
        call $_ZN5alloc7raw_vec12handle_error17h7e30ce1f05b9350bE
        unreachable
      end
      local.get 2
      local.set 7
      i32.const 0
      local.set 5
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        br_if 0 (;@2;)
        local.get 3
        local.get 2
        i32.store offset=28
        local.get 3
        local.get 6
        i32.store offset=24
        local.get 3
        local.get 4
        i32.store offset=20
        local.get 3
        local.get 3
        i32.const 20
        i32.add
        call $_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17h50d814f094fe0830E
        local.get 0
        local.get 3
        i64.load
        i64.store offset=4 align=4
        local.get 0
        i32.const -2147483648
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      local.get 2
      i32.store offset=8
      local.get 0
      local.get 6
      i32.store offset=4
      local.get 0
      local.get 4
      i32.store
      local.get 0
      local.get 7
      i32.store offset=12
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN5alloc3ffi5c_str7CString19_from_vec_unchecked17h50d814f094fe0830E (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 3
      local.get 1
      i32.load offset=8
      local.tee 4
      i32.ne
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 4
        i32.const 1
        i32.add
        local.tee 3
        br_if 0 (;@2;)
        i32.const 0
        i32.const 0
        call $_ZN5alloc7raw_vec12handle_error17h7e30ce1f05b9350bE
        unreachable
      end
      local.get 3
      i32.const -1
      i32.xor
      i32.const 31
      i32.shr_u
      local.set 5
      block  ;; label = @2
        block  ;; label = @3
          local.get 4
          br_if 0 (;@3;)
          i32.const 0
          local.set 6
          br 1 (;@2;)
        end
        local.get 2
        local.get 4
        i32.store offset=28
        local.get 2
        local.get 1
        i32.load offset=4
        i32.store offset=20
        i32.const 1
        local.set 6
      end
      local.get 2
      local.get 6
      i32.store offset=24
      local.get 2
      i32.const 8
      i32.add
      local.get 5
      local.get 3
      local.get 2
      i32.const 20
      i32.add
      call $_ZN5alloc7raw_vec11finish_grow17hac99f93d79e8a118E
      block  ;; label = @2
        local.get 2
        i32.load offset=8
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load offset=12
        local.get 2
        i32.load offset=16
        call $_ZN5alloc7raw_vec12handle_error17h7e30ce1f05b9350bE
        unreachable
      end
      local.get 2
      i32.load offset=12
      local.set 5
      local.get 1
      local.get 3
      i32.store
      local.get 1
      local.get 5
      i32.store offset=4
    end
    block  ;; label = @1
      local.get 4
      local.get 3
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hb214d1d8443bd4bfE
      local.get 1
      i32.load
      local.set 3
    end
    local.get 1
    local.get 4
    i32.const 1
    i32.add
    local.tee 5
    i32.store offset=8
    local.get 1
    i32.load offset=4
    local.tee 1
    local.get 4
    i32.add
    i32.const 0
    i32.store8
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        local.get 5
        i32.gt_u
        br_if 0 (;@2;)
        local.get 1
        local.set 4
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 5
        br_if 0 (;@2;)
        i32.const 1
        local.set 4
        local.get 1
        local.get 3
        i32.const 1
        call $__rust_dealloc
        br 1 (;@1;)
      end
      local.get 1
      local.get 3
      i32.const 1
      local.get 5
      call $__rust_realloc
      local.tee 4
      br_if 0 (;@1;)
      i32.const 1
      local.get 5
      call $_ZN5alloc7raw_vec12handle_error17h7e30ce1f05b9350bE
      unreachable
    end
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN5alloc4sync32arcinner_layout_for_value_layout17h5a6f9e71af256231E (type 6) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 1
      i32.const 7
      i32.add
      i32.const 0
      local.get 1
      i32.sub
      i32.and
      local.tee 4
      local.get 4
      i32.const -8
      i32.add
      i32.lt_u
      br_if 0 (;@1;)
      local.get 4
      local.get 2
      i32.add
      local.tee 2
      local.get 4
      i32.lt_u
      br_if 0 (;@1;)
      local.get 2
      i32.const -2147483648
      local.get 1
      i32.const 4
      local.get 1
      i32.const 4
      i32.gt_u
      select
      local.tee 1
      i32.sub
      i32.gt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.store
      local.get 0
      local.get 1
      local.get 2
      i32.add
      i32.const -1
      i32.add
      i32.const 0
      local.get 1
      i32.sub
      i32.and
      i32.store offset=4
      local.get 3
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 1054252
    i32.const 43
    local.get 3
    i32.const 15
    i32.add
    i32.const 1054296
    i32.const 1054340
    call $_ZN4core6result13unwrap_failed17had3752ac9f022e32E
    unreachable)
  (func $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E (type 2) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 1
    i32.store16 offset=28
    local.get 2
    local.get 1
    i32.store offset=24
    local.get 2
    local.get 0
    i32.store offset=20
    local.get 2
    i32.const 1054492
    i32.store offset=16
    local.get 2
    i32.const 1
    i32.store offset=12
    local.get 2
    i32.const 12
    i32.add
    call $rust_begin_unwind
    unreachable)
  (func $_ZN4core5slice5index26slice_start_index_len_fail17h464ae35af7c6898eE (type 6) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 2
    i32.store offset=12
    local.get 3
    i32.const 1055092
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i32.const 10
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 4
    local.get 3
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 3
    local.get 4
    local.get 3
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
    unreachable)
  (func $_ZN4core5slice5index24slice_end_index_len_fail17h32adee9828d9a43aE (type 6) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 2
    i32.store offset=12
    local.get 3
    i32.const 1055124
    i32.store offset=8
    local.get 3
    i64.const 2
    i64.store offset=20 align=4
    local.get 3
    i32.const 10
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 4
    local.get 3
    i32.const 4
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 3
    local.get 4
    local.get 3
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 3
    local.get 3
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 3
    i32.const 8
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
    unreachable)
  (func $_ZN4core3fmt9Formatter3pad17h9c823f28d3149995E (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 3
      local.get 0
      i32.load offset=8
      local.tee 4
      i32.or
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 2
        i32.add
        local.set 5
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load offset=12
            local.tee 6
            br_if 0 (;@4;)
            i32.const 0
            local.set 7
            local.get 1
            local.set 8
            br 1 (;@3;)
          end
          i32.const 0
          local.set 7
          local.get 1
          local.set 8
          loop  ;; label = @4
            local.get 8
            local.tee 4
            local.get 5
            i32.eq
            br_if 2 (;@2;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 4
                i32.load8_s
                local.tee 8
                i32.const -1
                i32.le_s
                br_if 0 (;@6;)
                local.get 4
                i32.const 1
                i32.add
                local.set 8
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 8
                i32.const -32
                i32.ge_u
                br_if 0 (;@6;)
                local.get 4
                i32.const 2
                i32.add
                local.set 8
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 8
                i32.const -16
                i32.ge_u
                br_if 0 (;@6;)
                local.get 4
                i32.const 3
                i32.add
                local.set 8
                br 1 (;@5;)
              end
              local.get 4
              i32.load8_u offset=2
              i32.const 63
              i32.and
              i32.const 6
              i32.shl
              local.get 4
              i32.load8_u offset=1
              i32.const 63
              i32.and
              i32.const 12
              i32.shl
              i32.or
              local.get 4
              i32.load8_u offset=3
              i32.const 63
              i32.and
              i32.or
              local.get 8
              i32.const 255
              i32.and
              i32.const 18
              i32.shl
              i32.const 1835008
              i32.and
              i32.or
              i32.const 1114112
              i32.eq
              br_if 3 (;@2;)
              local.get 4
              i32.const 4
              i32.add
              local.set 8
            end
            local.get 7
            local.get 4
            i32.sub
            local.get 8
            i32.add
            local.set 7
            local.get 6
            i32.const -1
            i32.add
            local.tee 6
            br_if 0 (;@4;)
          end
        end
        local.get 8
        local.get 5
        i32.eq
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 8
          i32.load8_s
          local.tee 4
          i32.const -1
          i32.gt_s
          br_if 0 (;@3;)
          local.get 4
          i32.const -32
          i32.lt_u
          br_if 0 (;@3;)
          local.get 4
          i32.const -16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 8
          i32.load8_u offset=2
          i32.const 63
          i32.and
          i32.const 6
          i32.shl
          local.get 8
          i32.load8_u offset=1
          i32.const 63
          i32.and
          i32.const 12
          i32.shl
          i32.or
          local.get 8
          i32.load8_u offset=3
          i32.const 63
          i32.and
          i32.or
          local.get 4
          i32.const 255
          i32.and
          i32.const 18
          i32.shl
          i32.const 1835008
          i32.and
          i32.or
          i32.const 1114112
          i32.eq
          br_if 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 7
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 7
              local.get 2
              i32.lt_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 4
              local.get 7
              local.get 2
              i32.eq
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            i32.const 0
            local.set 4
            local.get 1
            local.get 7
            i32.add
            i32.load8_s
            i32.const -64
            i32.lt_s
            br_if 1 (;@3;)
          end
          local.get 1
          local.set 4
        end
        local.get 7
        local.get 2
        local.get 4
        select
        local.set 2
        local.get 4
        local.get 1
        local.get 4
        select
        local.set 1
      end
      block  ;; label = @2
        local.get 3
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=20
        local.get 1
        local.get 2
        local.get 0
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 5)
        return
      end
      local.get 0
      i32.load offset=4
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          local.get 2
          call $_ZN4core3str5count14do_count_chars17h3f7e13a0ad1691c6E
          local.set 4
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 2
          br_if 0 (;@3;)
          i32.const 0
          local.set 4
          br 1 (;@2;)
        end
        local.get 2
        i32.const 3
        i32.and
        local.set 6
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 4
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 4
            i32.const 0
            local.set 7
            br 1 (;@3;)
          end
          local.get 2
          i32.const 12
          i32.and
          local.set 5
          i32.const 0
          local.set 4
          i32.const 0
          local.set 7
          loop  ;; label = @4
            local.get 4
            local.get 1
            local.get 7
            i32.add
            local.tee 8
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 8
            i32.const 1
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 8
            i32.const 2
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 8
            i32.const 3
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 4
            local.get 5
            local.get 7
            i32.const 4
            i32.add
            local.tee 7
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 6
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 7
        i32.add
        local.set 8
        loop  ;; label = @3
          local.get 4
          local.get 8
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 4
          local.get 8
          i32.const 1
          i32.add
          local.set 8
          local.get 6
          i32.const -1
          i32.add
          local.tee 6
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          local.get 4
          i32.le_u
          br_if 0 (;@3;)
          local.get 3
          local.get 4
          i32.sub
          local.set 5
          i32.const 0
          local.set 4
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load8_u offset=32
                br_table 2 (;@4;) 0 (;@6;) 1 (;@5;) 2 (;@4;) 2 (;@4;)
              end
              local.get 5
              local.set 4
              i32.const 0
              local.set 5
              br 1 (;@4;)
            end
            local.get 5
            i32.const 1
            i32.shr_u
            local.set 4
            local.get 5
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set 5
          end
          local.get 4
          i32.const 1
          i32.add
          local.set 4
          local.get 0
          i32.load offset=16
          local.set 6
          local.get 0
          i32.load offset=24
          local.set 8
          local.get 0
          i32.load offset=20
          local.set 7
          loop  ;; label = @4
            local.get 4
            i32.const -1
            i32.add
            local.tee 4
            i32.eqz
            br_if 2 (;@2;)
            local.get 7
            local.get 6
            local.get 8
            i32.load offset=16
            call_indirect (type 4)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        local.get 0
        i32.load offset=20
        local.get 1
        local.get 2
        local.get 0
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 5)
        return
      end
      i32.const 1
      local.set 4
      block  ;; label = @2
        local.get 7
        local.get 1
        local.get 2
        local.get 8
        i32.load offset=12
        call_indirect (type 5)
        br_if 0 (;@2;)
        i32.const 0
        local.set 4
        block  ;; label = @3
          loop  ;; label = @4
            block  ;; label = @5
              local.get 5
              local.get 4
              i32.ne
              br_if 0 (;@5;)
              local.get 5
              local.set 4
              br 2 (;@3;)
            end
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            local.get 7
            local.get 6
            local.get 8
            i32.load offset=16
            call_indirect (type 4)
            i32.eqz
            br_if 0 (;@4;)
          end
          local.get 4
          i32.const -1
          i32.add
          local.set 4
        end
        local.get 4
        local.get 5
        i32.lt_u
        local.set 4
      end
      local.get 4
      return
    end
    local.get 0
    i32.load offset=20
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 5))
  (func $_ZN4core9panicking5panic17h864593189f35325fE (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 0
    i32.store offset=16
    local.get 3
    i32.const 1
    i32.store offset=4
    local.get 3
    i64.const 4
    i64.store offset=8 align=4
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 24
    i32.add
    i32.store
    local.get 3
    local.get 2
    call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
    unreachable)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h21e83e20c922bcf6E (type 4) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    i32.const 1
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417h3c5e505d6883ff36E)
  (func $_ZN4core3fmt5write17hbfdffefff34f5cf8E (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 3
    i32.store8 offset=44
    local.get 3
    i32.const 32
    i32.store offset=28
    i32.const 0
    local.set 4
    local.get 3
    i32.const 0
    i32.store offset=40
    local.get 3
    local.get 1
    i32.store offset=36
    local.get 3
    local.get 0
    i32.store offset=32
    local.get 3
    i32.const 0
    i32.store offset=20
    local.get 3
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=16
              local.tee 5
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=12
              local.tee 0
              i32.eqz
              br_if 1 (;@4;)
              local.get 2
              i32.load offset=8
              local.set 1
              local.get 0
              i32.const 3
              i32.shl
              local.set 6
              local.get 0
              i32.const -1
              i32.add
              i32.const 536870911
              i32.and
              i32.const 1
              i32.add
              local.set 4
              local.get 2
              i32.load
              local.set 0
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 4
                  i32.add
                  i32.load
                  local.tee 7
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 3
                  i32.load offset=32
                  local.get 0
                  i32.load
                  local.get 7
                  local.get 3
                  i32.load offset=36
                  i32.load offset=12
                  call_indirect (type 5)
                  br_if 4 (;@3;)
                end
                local.get 1
                i32.load
                local.get 3
                i32.const 12
                i32.add
                local.get 1
                i32.load offset=4
                call_indirect (type 4)
                br_if 3 (;@3;)
                local.get 1
                i32.const 8
                i32.add
                local.set 1
                local.get 0
                i32.const 8
                i32.add
                local.set 0
                local.get 6
                i32.const -8
                i32.add
                local.tee 6
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            local.get 2
            i32.load offset=20
            local.tee 1
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            i32.const 5
            i32.shl
            local.set 8
            local.get 1
            i32.const -1
            i32.add
            i32.const 134217727
            i32.and
            i32.const 1
            i32.add
            local.set 4
            local.get 2
            i32.load offset=8
            local.set 9
            local.get 2
            i32.load
            local.set 0
            i32.const 0
            local.set 6
            loop  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=32
                local.get 0
                i32.load
                local.get 1
                local.get 3
                i32.load offset=36
                i32.load offset=12
                call_indirect (type 5)
                br_if 3 (;@3;)
              end
              local.get 3
              local.get 5
              local.get 6
              i32.add
              local.tee 1
              i32.const 16
              i32.add
              i32.load
              i32.store offset=28
              local.get 3
              local.get 1
              i32.const 28
              i32.add
              i32.load8_u
              i32.store8 offset=44
              local.get 3
              local.get 1
              i32.const 24
              i32.add
              i32.load
              i32.store offset=40
              local.get 1
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
                    local.get 1
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
              local.get 3
              local.get 7
              i32.store offset=16
              local.get 3
              local.get 11
              i32.store offset=12
              local.get 1
              i32.const 4
              i32.add
              i32.load
              local.set 7
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 1
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
              local.get 3
              local.get 7
              i32.store offset=24
              local.get 3
              local.get 10
              i32.store offset=20
              local.get 9
              local.get 1
              i32.const 20
              i32.add
              i32.load
              i32.const 3
              i32.shl
              i32.add
              local.tee 1
              i32.load
              local.get 3
              i32.const 12
              i32.add
              local.get 1
              i32.load offset=4
              call_indirect (type 4)
              br_if 2 (;@3;)
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 8
              local.get 6
              i32.const 32
              i32.add
              local.tee 6
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 4
          local.get 2
          i32.load offset=4
          i32.ge_u
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=32
          local.get 2
          i32.load
          local.get 4
          i32.const 3
          i32.shl
          i32.add
          local.tee 1
          i32.load
          local.get 1
          i32.load offset=4
          local.get 3
          i32.load offset=36
          i32.load offset=12
          call_indirect (type 5)
          i32.eqz
          br_if 1 (;@2;)
        end
        i32.const 1
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      local.set 1
    end
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hf6450125705d22b7E (type 2) (param i32 i32)
    local.get 0
    i64.const 4787181567193931505
    i64.store offset=8
    local.get 0
    i64.const 5823941144022795414
    i64.store)
  (func $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf791dc1a9a4c94dbE (type 4) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    i32.const 1054357
    i32.const 14
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 5))
  (func $_ZN4core4cell22panic_already_borrowed17hfdf4e832e2c2aedfE (type 1) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 1
    i32.store offset=12
    local.get 1
    i32.const 1054392
    i32.store offset=8
    local.get 1
    i64.const 1
    i64.store offset=20 align=4
    local.get 1
    i32.const 43
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i32.const 47
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 1
    local.get 1
    i32.const 32
    i32.add
    i32.store offset=16
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
    unreachable)
  (func $_ZN4core3ffi5c_str4CStr19from_bytes_with_nul17hfb8de03fe159d5c4E (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 8
              i32.lt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.const 3
                  i32.add
                  i32.const -4
                  i32.and
                  local.get 1
                  i32.sub
                  local.tee 3
                  i32.eqz
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 4
                  loop  ;; label = @8
                    local.get 1
                    local.get 4
                    i32.add
                    i32.load8_u
                    i32.eqz
                    br_if 5 (;@3;)
                    local.get 3
                    local.get 4
                    i32.const 1
                    i32.add
                    local.tee 4
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 3
                  local.get 2
                  i32.const -8
                  i32.add
                  local.tee 5
                  i32.le_u
                  br_if 1 (;@6;)
                  br 3 (;@4;)
                end
                local.get 2
                i32.const -8
                i32.add
                local.set 5
              end
              loop  ;; label = @6
                local.get 1
                local.get 3
                i32.add
                local.tee 4
                i32.const 4
                i32.add
                i32.load
                local.tee 6
                i32.const -16843009
                i32.add
                local.get 6
                i32.const -1
                i32.xor
                i32.and
                local.get 4
                i32.load
                local.tee 4
                i32.const -16843009
                i32.add
                local.get 4
                i32.const -1
                i32.xor
                i32.and
                i32.or
                i32.const -2139062144
                i32.and
                br_if 2 (;@4;)
                local.get 3
                i32.const 8
                i32.add
                local.tee 3
                local.get 5
                i32.le_u
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              local.get 1
              i32.load8_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 4
              br 2 (;@3;)
            end
            i32.const 1
            local.set 4
            local.get 2
            i32.const 1
            i32.eq
            br_if 2 (;@2;)
            local.get 1
            i32.load8_u offset=1
            i32.eqz
            br_if 1 (;@3;)
            i32.const 2
            local.set 4
            local.get 2
            i32.const 2
            i32.eq
            br_if 2 (;@2;)
            local.get 1
            i32.load8_u offset=2
            i32.eqz
            br_if 1 (;@3;)
            i32.const 3
            local.set 4
            local.get 2
            i32.const 3
            i32.eq
            br_if 2 (;@2;)
            local.get 1
            i32.load8_u offset=3
            i32.eqz
            br_if 1 (;@3;)
            i32.const 4
            local.set 4
            local.get 2
            i32.const 4
            i32.eq
            br_if 2 (;@2;)
            local.get 1
            i32.load8_u offset=4
            i32.eqz
            br_if 1 (;@3;)
            i32.const 5
            local.set 4
            local.get 2
            i32.const 5
            i32.eq
            br_if 2 (;@2;)
            local.get 1
            i32.load8_u offset=5
            i32.eqz
            br_if 1 (;@3;)
            i32.const 6
            local.set 4
            local.get 2
            i32.const 6
            i32.eq
            br_if 2 (;@2;)
            local.get 1
            i32.load8_u offset=6
            i32.eqz
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          local.get 3
          local.get 2
          i32.eq
          br_if 1 (;@2;)
          loop  ;; label = @4
            block  ;; label = @5
              local.get 1
              local.get 3
              i32.add
              i32.load8_u
              br_if 0 (;@5;)
              local.get 3
              local.set 4
              br 2 (;@3;)
            end
            local.get 2
            local.get 3
            i32.const 1
            i32.add
            local.tee 3
            i32.ne
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 4
        i32.const 1
        i32.add
        local.get 2
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        local.get 4
        i32.store offset=8
        local.get 0
        i32.const 0
        i32.store offset=4
        local.get 0
        i32.const 1
        i32.store
        return
      end
      local.get 0
      i32.const 1
      i32.store offset=4
      local.get 0
      i32.const 1
      i32.store
      return
    end
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store)
  (func $_ZN4core3str8converts9from_utf817hf5df6767648c29f8E (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i64 i64 i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.get 2
      i32.const -7
      i32.add
      local.tee 3
      local.get 3
      local.get 2
      i32.gt_u
      select
      local.set 4
      local.get 1
      i32.const 3
      i32.add
      i32.const -4
      i32.and
      local.get 1
      i32.sub
      local.set 5
      i32.const 0
      local.set 3
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                local.get 3
                i32.add
                i32.load8_u
                local.tee 6
                i32.extend8_s
                local.tee 7
                i32.const 0
                i32.lt_s
                br_if 0 (;@6;)
                local.get 5
                local.get 3
                i32.sub
                i32.const 3
                i32.and
                br_if 1 (;@5;)
                local.get 3
                local.get 4
                i32.ge_u
                br_if 2 (;@4;)
                loop  ;; label = @7
                  local.get 1
                  local.get 3
                  i32.add
                  local.tee 6
                  i32.const 4
                  i32.add
                  i32.load
                  local.get 6
                  i32.load
                  i32.or
                  i32.const -2139062144
                  i32.and
                  br_if 3 (;@4;)
                  local.get 3
                  i32.const 8
                  i32.add
                  local.tee 3
                  local.get 4
                  i32.lt_u
                  br_if 0 (;@7;)
                  br 3 (;@4;)
                end
              end
              i64.const 1099511627776
              local.set 8
              i64.const 4294967296
              local.set 9
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 6
                                      i32.const 1055140
                                      i32.add
                                      i32.load8_u
                                      i32.const -2
                                      i32.add
                                      br_table 0 (;@17;) 1 (;@16;) 2 (;@15;) 10 (;@7;)
                                    end
                                    local.get 3
                                    i32.const 1
                                    i32.add
                                    local.tee 6
                                    local.get 2
                                    i32.lt_u
                                    br_if 2 (;@14;)
                                    i64.const 0
                                    local.set 8
                                    i64.const 0
                                    local.set 9
                                    br 9 (;@7;)
                                  end
                                  i64.const 0
                                  local.set 8
                                  local.get 3
                                  i32.const 1
                                  i32.add
                                  local.tee 10
                                  local.get 2
                                  i32.lt_u
                                  br_if 2 (;@13;)
                                  i64.const 0
                                  local.set 9
                                  br 8 (;@7;)
                                end
                                i64.const 0
                                local.set 8
                                local.get 3
                                i32.const 1
                                i32.add
                                local.tee 10
                                local.get 2
                                i32.lt_u
                                br_if 2 (;@12;)
                                i64.const 0
                                local.set 9
                                br 7 (;@7;)
                              end
                              i64.const 1099511627776
                              local.set 8
                              i64.const 4294967296
                              local.set 9
                              local.get 1
                              local.get 6
                              i32.add
                              i32.load8_s
                              i32.const -65
                              i32.gt_s
                              br_if 6 (;@7;)
                              br 7 (;@6;)
                            end
                            local.get 1
                            local.get 10
                            i32.add
                            i32.load8_s
                            local.set 10
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 6
                                  i32.const -224
                                  i32.add
                                  br_table 0 (;@15;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 2 (;@13;) 1 (;@14;) 2 (;@13;)
                                end
                                local.get 10
                                i32.const -32
                                i32.and
                                i32.const -96
                                i32.eq
                                br_if 4 (;@10;)
                                br 3 (;@11;)
                              end
                              local.get 10
                              i32.const -97
                              i32.gt_s
                              br_if 2 (;@11;)
                              br 3 (;@10;)
                            end
                            block  ;; label = @13
                              local.get 7
                              i32.const 31
                              i32.add
                              i32.const 255
                              i32.and
                              i32.const 12
                              i32.lt_u
                              br_if 0 (;@13;)
                              local.get 7
                              i32.const -2
                              i32.and
                              i32.const -18
                              i32.ne
                              br_if 2 (;@11;)
                              local.get 10
                              i32.const -64
                              i32.lt_s
                              br_if 3 (;@10;)
                              br 2 (;@11;)
                            end
                            local.get 10
                            i32.const -64
                            i32.lt_s
                            br_if 2 (;@10;)
                            br 1 (;@11;)
                          end
                          local.get 1
                          local.get 10
                          i32.add
                          i32.load8_s
                          local.set 10
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 6
                                  i32.const -240
                                  i32.add
                                  br_table 1 (;@14;) 0 (;@15;) 0 (;@15;) 0 (;@15;) 2 (;@13;) 0 (;@15;)
                                end
                                local.get 7
                                i32.const 15
                                i32.add
                                i32.const 255
                                i32.and
                                i32.const 2
                                i32.gt_u
                                br_if 3 (;@11;)
                                local.get 10
                                i32.const -64
                                i32.ge_s
                                br_if 3 (;@11;)
                                br 2 (;@12;)
                              end
                              local.get 10
                              i32.const 112
                              i32.add
                              i32.const 255
                              i32.and
                              i32.const 48
                              i32.ge_u
                              br_if 2 (;@11;)
                              br 1 (;@12;)
                            end
                            local.get 10
                            i32.const -113
                            i32.gt_s
                            br_if 1 (;@11;)
                          end
                          block  ;; label = @12
                            local.get 3
                            i32.const 2
                            i32.add
                            local.tee 6
                            local.get 2
                            i32.lt_u
                            br_if 0 (;@12;)
                            i64.const 0
                            local.set 9
                            br 5 (;@7;)
                          end
                          local.get 1
                          local.get 6
                          i32.add
                          i32.load8_s
                          i32.const -65
                          i32.gt_s
                          br_if 2 (;@9;)
                          i64.const 0
                          local.set 9
                          local.get 3
                          i32.const 3
                          i32.add
                          local.tee 6
                          local.get 2
                          i32.ge_u
                          br_if 4 (;@7;)
                          local.get 1
                          local.get 6
                          i32.add
                          i32.load8_s
                          i32.const -65
                          i32.le_s
                          br_if 5 (;@6;)
                          i64.const 3298534883328
                          local.set 8
                          br 3 (;@8;)
                        end
                        i64.const 1099511627776
                        local.set 8
                        br 2 (;@8;)
                      end
                      i64.const 0
                      local.set 9
                      local.get 3
                      i32.const 2
                      i32.add
                      local.tee 6
                      local.get 2
                      i32.ge_u
                      br_if 2 (;@7;)
                      local.get 1
                      local.get 6
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.le_s
                      br_if 3 (;@6;)
                    end
                    i64.const 2199023255552
                    local.set 8
                  end
                  i64.const 4294967296
                  local.set 9
                end
                local.get 0
                local.get 8
                local.get 3
                i64.extend_i32_u
                i64.or
                local.get 9
                i64.or
                i64.store offset=4 align=4
                local.get 0
                i32.const 1
                i32.store
                return
              end
              local.get 6
              i32.const 1
              i32.add
              local.set 3
              br 2 (;@3;)
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            br 1 (;@3;)
          end
          local.get 3
          local.get 2
          i32.ge_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 1
            local.get 3
            i32.add
            i32.load8_s
            i32.const 0
            i32.lt_s
            br_if 1 (;@3;)
            local.get 2
            local.get 3
            i32.const 1
            i32.add
            local.tee 3
            i32.ne
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 3
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 0
    i32.store)
  (func $_ZN4core3fmt8builders11DebugStruct5field17h5169b8d642e38addE (type 10) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    i32.const 1
    local.set 6
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=4
      br_if 0 (;@1;)
      local.get 0
      i32.load8_u offset=5
      local.set 7
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 8
        i32.load offset=28
        local.tee 9
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 6
        local.get 8
        i32.load offset=20
        i32.const 1054703
        i32.const 1054700
        local.get 7
        i32.const 255
        i32.and
        local.tee 7
        select
        i32.const 2
        i32.const 3
        local.get 7
        select
        local.get 8
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
        i32.const 1
        local.set 6
        local.get 8
        i32.load offset=20
        local.get 1
        local.get 2
        local.get 8
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
        i32.const 1
        local.set 6
        local.get 8
        i32.load offset=20
        i32.const 1054652
        i32.const 2
        local.get 8
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
        local.get 3
        local.get 8
        local.get 4
        i32.load offset=12
        call_indirect (type 4)
        local.set 6
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 7
        i32.const 255
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 6
        local.get 8
        i32.load offset=20
        i32.const 1054705
        i32.const 3
        local.get 8
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
        local.get 8
        i32.load offset=28
        local.set 9
      end
      i32.const 1
      local.set 6
      local.get 5
      i32.const 1
      i32.store8 offset=27
      local.get 5
      local.get 8
      i64.load offset=20 align=4
      i64.store offset=12 align=4
      local.get 5
      i32.const 1054672
      i32.store offset=52
      local.get 5
      local.get 5
      i32.const 27
      i32.add
      i32.store offset=20
      local.get 5
      local.get 8
      i64.load offset=8 align=4
      i64.store offset=36 align=4
      local.get 8
      i64.load align=4
      local.set 10
      local.get 5
      local.get 9
      i32.store offset=56
      local.get 5
      local.get 8
      i32.load offset=16
      i32.store offset=44
      local.get 5
      local.get 8
      i32.load8_u offset=32
      i32.store8 offset=60
      local.get 5
      local.get 10
      i64.store offset=28 align=4
      local.get 5
      local.get 5
      i32.const 12
      i32.add
      i32.store offset=48
      local.get 5
      i32.const 12
      i32.add
      local.get 1
      local.get 2
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3361d97b57db5468E
      br_if 0 (;@1;)
      local.get 5
      i32.const 12
      i32.add
      i32.const 1054652
      i32.const 2
      call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3361d97b57db5468E
      br_if 0 (;@1;)
      local.get 3
      local.get 5
      i32.const 28
      i32.add
      local.get 4
      i32.load offset=12
      call_indirect (type 4)
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=48
      i32.const 1054708
      i32.const 2
      local.get 5
      i32.load offset=52
      i32.load offset=12
      call_indirect (type 5)
      local.set 6
    end
    local.get 0
    i32.const 1
    i32.store8 offset=5
    local.get 0
    local.get 6
    i32.store8 offset=4
    local.get 5
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17hc85ecf06cc9e3dccE (type 4) (param i32 i32) (result i32)
    local.get 0
    i64.load8_u
    i32.const 1
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417h3c5e505d6883ff36E)
  (func $_ZN4core6result13unwrap_failed17had3752ac9f022e32E (type 12) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    local.get 3
    i32.store offset=20
    local.get 5
    local.get 2
    i32.store offset=16
    local.get 5
    i32.const 2
    i32.store offset=28
    local.get 5
    i32.const 1054656
    i32.store offset=24
    local.get 5
    i64.const 2
    i64.store offset=36 align=4
    local.get 5
    i32.const 44
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i32.const 16
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=56
    local.get 5
    i32.const 45
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=48
    local.get 5
    local.get 5
    i32.const 48
    i32.add
    i32.store offset=32
    local.get 5
    i32.const 24
    i32.add
    local.get 4
    call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
    unreachable)
  (func $_ZN4core6option13unwrap_failed17h165f1460d4b9b2e4E (type 1) (param i32)
    i32.const 1054409
    i32.const 43
    local.get 0
    call $_ZN4core9panicking5panic17h864593189f35325fE
    unreachable)
  (func $_ZN4core6option13expect_failed17h4bbb25fdd9d02fc5E (type 6) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    local.get 3
    i32.const 1
    i32.store offset=20
    local.get 3
    i32.const 1054400
    i32.store offset=16
    local.get 3
    i64.const 1
    i64.store offset=28 align=4
    local.get 3
    i32.const 45
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 3
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 3
    local.get 3
    i32.const 40
    i32.add
    i32.store offset=24
    local.get 3
    i32.const 16
    i32.add
    local.get 2
    call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
    unreachable)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4904b04b6447a902E (type 4) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter3pad17h9c823f28d3149995E)
  (func $_ZN70_$LT$core..panic..location..Location$u20$as$u20$core..fmt..Display$GT$3fmt17hc54b66789c9a8ac2E (type 4) (param i32 i32) (result i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 3
    i32.store offset=4
    local.get 2
    i32.const 1054452
    i32.store
    local.get 2
    i64.const 3
    i64.store offset=12 align=4
    local.get 2
    i32.const 10
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 3
    local.get 0
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 2
    local.get 3
    local.get 0
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 2
    i32.const 45
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 0
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    local.get 2
    local.get 2
    i32.const 24
    i32.add
    i32.store offset=8
    local.get 1
    i32.load offset=20
    local.get 1
    i32.load offset=24
    local.get 2
    call $_ZN4core3fmt5write17hbfdffefff34f5cf8E
    local.set 0
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h6506a85cdc2d0d4aE (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 1
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load offset=20
      local.tee 4
      i32.const 1054476
      i32.const 12
      local.get 1
      i32.load offset=24
      local.tee 5
      i32.load offset=12
      local.tee 6
      call_indirect (type 5)
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=12
      local.set 1
      local.get 2
      i32.const 3
      i32.store offset=20
      local.get 2
      i32.const 1054452
      i32.store offset=16
      local.get 2
      i64.const 3
      i64.store offset=28 align=4
      local.get 2
      i32.const 45
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 1
      i64.extend_i32_u
      i64.or
      i64.store offset=40
      local.get 2
      i32.const 10
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.tee 7
      local.get 1
      i32.const 12
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=56
      local.get 2
      local.get 7
      local.get 1
      i32.const 8
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=48
      local.get 2
      local.get 2
      i32.const 40
      i32.add
      i32.store offset=24
      local.get 4
      local.get 5
      local.get 2
      i32.const 16
      i32.add
      call $_ZN4core3fmt5write17hbfdffefff34f5cf8E
      br_if 0 (;@1;)
      i32.const 1
      local.set 3
      local.get 4
      i32.const 1054408
      i32.const 1
      local.get 6
      call_indirect (type 5)
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load offset=8
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          i32.const 1
          local.set 3
          local.get 4
          i32.const 1054488
          i32.const 1
          local.get 6
          call_indirect (type 5)
          br_if 2 (;@1;)
          local.get 2
          i32.const 40
          i32.add
          i32.const 16
          i32.add
          local.get 1
          i32.const 16
          i32.add
          i64.load align=4
          i64.store
          local.get 2
          i32.const 40
          i32.add
          i32.const 8
          i32.add
          local.get 1
          i32.const 8
          i32.add
          i64.load align=4
          i64.store
          local.get 2
          local.get 1
          i64.load align=4
          i64.store offset=40
          local.get 4
          local.get 5
          local.get 2
          i32.const 40
          i32.add
          call $_ZN4core3fmt5write17hbfdffefff34f5cf8E
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 2
        local.get 0
        i32.load
        local.tee 1
        local.get 0
        i32.load offset=4
        i32.const 12
        i32.add
        i32.load
        call_indirect (type 2)
        local.get 2
        i64.load
        i64.const -5076933981314334344
        i64.ne
        br_if 0 (;@2;)
        local.get 2
        i64.load offset=8
        i64.const 7199936582794304877
        i64.ne
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        local.get 4
        i32.const 1054488
        i32.const 1
        local.get 6
        call_indirect (type 5)
        br_if 1 (;@1;)
        local.get 4
        local.get 1
        i32.load
        local.get 1
        i32.load offset=4
        local.get 6
        call_indirect (type 5)
        br_if 1 (;@1;)
      end
      i32.const 0
      local.set 3
    end
    local.get 2
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h8a212632f208eb07E (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      i32.const 127
      i32.add
      local.get 0
      i32.const 15
      i32.and
      local.tee 4
      i32.const 48
      i32.or
      local.get 4
      i32.const 87
      i32.add
      local.get 4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 0
      i32.const 16
      i32.lt_u
      local.set 4
      local.get 0
      i32.const 4
      i32.shr_u
      local.set 0
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 3
      i32.const 128
      i32.add
      local.tee 0
      i32.const 128
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 128
      i32.const 1054748
      call $_ZN4core5slice5index26slice_start_index_len_fail17h464ae35af7c6898eE
      unreachable
    end
    local.get 1
    i32.const 1
    i32.const 1054744
    i32.const 2
    local.get 2
    local.get 3
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get 3
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h8dd7664935fab95fE
    local.set 0
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core9panicking19assert_failed_inner17hf16fae5f0227efbaE (type 13) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    local.get 2
    i32.store offset=12
    local.get 7
    local.get 1
    i32.store offset=8
    local.get 7
    local.get 4
    i32.store offset=20
    local.get 7
    local.get 3
    i32.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.const 255
            i32.and
            br_table 0 (;@4;) 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          local.get 7
          i32.const 1054508
          i32.store offset=24
          i32.const 2
          local.set 2
          br 2 (;@1;)
        end
        local.get 7
        i32.const 1054510
        i32.store offset=24
        i32.const 2
        local.set 2
        br 1 (;@1;)
      end
      local.get 7
      i32.const 1054512
      i32.store offset=24
      i32.const 7
      local.set 2
    end
    local.get 7
    local.get 2
    i32.store offset=28
    block  ;; label = @1
      local.get 5
      i32.load
      br_if 0 (;@1;)
      local.get 7
      i32.const 3
      i32.store offset=92
      local.get 7
      i32.const 1054568
      i32.store offset=88
      local.get 7
      i64.const 3
      i64.store offset=100 align=4
      local.get 7
      i32.const 44
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.tee 8
      local.get 7
      i32.const 16
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=72
      local.get 7
      local.get 8
      local.get 7
      i32.const 8
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=64
      local.get 7
      i32.const 45
      i64.extend_i32_u
      i64.const 32
      i64.shl
      local.get 7
      i32.const 24
      i32.add
      i64.extend_i32_u
      i64.or
      i64.store offset=56
      local.get 7
      local.get 7
      i32.const 56
      i32.add
      i32.store offset=96
      local.get 7
      i32.const 88
      i32.add
      local.get 6
      call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
      unreachable
    end
    local.get 7
    i32.const 32
    i32.add
    i32.const 16
    i32.add
    local.get 5
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 7
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.get 5
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 7
    local.get 5
    i64.load align=4
    i64.store offset=32
    local.get 7
    i32.const 4
    i32.store offset=92
    local.get 7
    i32.const 1054620
    i32.store offset=88
    local.get 7
    i64.const 4
    i64.store offset=100 align=4
    local.get 7
    i32.const 44
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 8
    local.get 7
    i32.const 16
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=80
    local.get 7
    local.get 8
    local.get 7
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=72
    local.get 7
    i32.const 46
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 7
    i32.const 32
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=64
    local.get 7
    i32.const 45
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 7
    i32.const 24
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=56
    local.get 7
    local.get 7
    i32.const 56
    i32.add
    i32.store offset=96
    local.get 7
    i32.const 88
    i32.add
    local.get 6
    call $_ZN4core9panicking9panic_fmt17ha6764f2272b7fb95E
    unreachable)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hde29e90f09362d9fE (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 4))
  (func $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h300410d8e27313beE (type 4) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    local.get 1
    i32.load offset=24
    local.get 0
    call $_ZN4core3fmt5write17hbfdffefff34f5cf8E)
  (func $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3361d97b57db5468E (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const -1
    i32.add
    local.set 3
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    i32.load
    local.set 5
    local.get 0
    i32.load offset=8
    local.set 6
    i32.const 0
    local.set 7
    i32.const 0
    local.set 8
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 7
          local.get 2
          i32.gt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 1
            local.get 7
            i32.add
            local.set 9
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  local.get 7
                  i32.sub
                  local.tee 10
                  i32.const 8
                  i32.lt_u
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 9
                      i32.const 3
                      i32.add
                      i32.const -4
                      i32.and
                      local.tee 11
                      local.get 9
                      i32.sub
                      local.tee 12
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 0
                      loop  ;; label = @10
                        local.get 9
                        local.get 0
                        i32.add
                        i32.load8_u
                        i32.const 10
                        i32.eq
                        br_if 5 (;@5;)
                        local.get 12
                        local.get 0
                        i32.const 1
                        i32.add
                        local.tee 0
                        i32.ne
                        br_if 0 (;@10;)
                      end
                      local.get 12
                      local.get 10
                      i32.const -8
                      i32.add
                      local.tee 13
                      i32.le_u
                      br_if 1 (;@8;)
                      br 3 (;@6;)
                    end
                    local.get 10
                    i32.const -8
                    i32.add
                    local.set 13
                  end
                  loop  ;; label = @8
                    local.get 11
                    i32.const 4
                    i32.add
                    i32.load
                    local.tee 0
                    i32.const 168430090
                    i32.xor
                    i32.const -16843009
                    i32.add
                    local.get 0
                    i32.const -1
                    i32.xor
                    i32.and
                    local.get 11
                    i32.load
                    local.tee 0
                    i32.const 168430090
                    i32.xor
                    i32.const -16843009
                    i32.add
                    local.get 0
                    i32.const -1
                    i32.xor
                    i32.and
                    i32.or
                    i32.const -2139062144
                    i32.and
                    br_if 2 (;@6;)
                    local.get 11
                    i32.const 8
                    i32.add
                    local.set 11
                    local.get 12
                    i32.const 8
                    i32.add
                    local.tee 12
                    local.get 13
                    i32.le_u
                    br_if 0 (;@8;)
                    br 2 (;@6;)
                  end
                end
                block  ;; label = @7
                  local.get 2
                  local.get 7
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 2
                  local.set 7
                  br 4 (;@3;)
                end
                i32.const 0
                local.set 0
                loop  ;; label = @7
                  local.get 9
                  local.get 0
                  i32.add
                  i32.load8_u
                  i32.const 10
                  i32.eq
                  br_if 2 (;@5;)
                  local.get 10
                  local.get 0
                  i32.const 1
                  i32.add
                  local.tee 0
                  i32.ne
                  br_if 0 (;@7;)
                end
                local.get 2
                local.set 7
                br 3 (;@3;)
              end
              block  ;; label = @6
                local.get 10
                local.get 12
                i32.ne
                br_if 0 (;@6;)
                local.get 2
                local.set 7
                br 3 (;@3;)
              end
              loop  ;; label = @6
                block  ;; label = @7
                  local.get 9
                  local.get 12
                  i32.add
                  i32.load8_u
                  i32.const 10
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 12
                  local.set 0
                  br 2 (;@5;)
                end
                local.get 10
                local.get 12
                i32.const 1
                i32.add
                local.tee 12
                i32.ne
                br_if 0 (;@6;)
              end
              local.get 2
              local.set 7
              br 2 (;@3;)
            end
            local.get 0
            local.get 7
            i32.add
            local.tee 12
            i32.const 1
            i32.add
            local.set 7
            block  ;; label = @5
              local.get 12
              local.get 2
              i32.ge_u
              br_if 0 (;@5;)
              local.get 9
              local.get 0
              i32.add
              i32.load8_u
              i32.const 10
              i32.ne
              br_if 0 (;@5;)
              i32.const 0
              local.set 9
              local.get 7
              local.set 11
              local.get 7
              local.set 0
              br 3 (;@2;)
            end
            local.get 7
            local.get 2
            i32.le_u
            br_if 0 (;@4;)
          end
        end
        i32.const 1
        local.set 9
        local.get 8
        local.set 11
        local.get 2
        local.set 0
        local.get 8
        local.get 2
        i32.ne
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      block  ;; label = @2
        local.get 6
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.const 1054696
        i32.const 4
        local.get 4
        i32.load offset=12
        call_indirect (type 5)
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        return
      end
      local.get 0
      local.get 8
      i32.sub
      local.set 10
      i32.const 0
      local.set 12
      block  ;; label = @2
        local.get 0
        local.get 8
        i32.eq
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        i32.add
        i32.load8_u
        i32.const 10
        i32.eq
        local.set 12
      end
      local.get 1
      local.get 8
      i32.add
      local.set 0
      local.get 6
      local.get 12
      i32.store8
      local.get 11
      local.set 8
      local.get 5
      local.get 0
      local.get 10
      local.get 4
      i32.load offset=12
      call_indirect (type 5)
      local.tee 0
      local.get 9
      i32.or
      i32.eqz
      br_if 0 (;@1;)
    end
    local.get 0)
  (func $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17h63c05e7c33d6f640E (type 4) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 1054696
      i32.const 4
      local.get 2
      i32.load offset=12
      call_indirect (type 5)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    local.get 0
    local.get 1
    i32.const 10
    i32.eq
    i32.store8
    local.get 3
    local.get 1
    local.get 2
    i32.load offset=16
    call_indirect (type 4))
  (func $_ZN4core3fmt8builders10DebugTuple5field17h0064a092bf1ad15fE (type 5) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 4
    i32.const 1
    local.set 5
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=8
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 6
        i32.load offset=28
        local.tee 7
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 5
        local.get 6
        i32.load offset=20
        i32.const 1054703
        i32.const 1054713
        local.get 4
        select
        i32.const 2
        i32.const 1
        local.get 4
        select
        local.get 6
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
        local.get 1
        local.get 6
        local.get 2
        i32.load offset=12
        call_indirect (type 4)
        local.set 5
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        i32.const 1
        local.set 5
        local.get 6
        i32.load offset=20
        i32.const 1054714
        i32.const 2
        local.get 6
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
        local.get 6
        i32.load offset=28
        local.set 7
      end
      i32.const 1
      local.set 5
      local.get 3
      i32.const 1
      i32.store8 offset=27
      local.get 3
      local.get 6
      i64.load offset=20 align=4
      i64.store offset=12 align=4
      local.get 3
      i32.const 1054672
      i32.store offset=52
      local.get 3
      local.get 3
      i32.const 27
      i32.add
      i32.store offset=20
      local.get 3
      local.get 6
      i64.load offset=8 align=4
      i64.store offset=36 align=4
      local.get 6
      i64.load align=4
      local.set 8
      local.get 3
      local.get 7
      i32.store offset=56
      local.get 3
      local.get 6
      i32.load offset=16
      i32.store offset=44
      local.get 3
      local.get 6
      i32.load8_u offset=32
      i32.store8 offset=60
      local.get 3
      local.get 8
      i64.store offset=28 align=4
      local.get 3
      local.get 3
      i32.const 12
      i32.add
      i32.store offset=48
      local.get 1
      local.get 3
      i32.const 28
      i32.add
      local.get 2
      i32.load offset=12
      call_indirect (type 4)
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=48
      i32.const 1054708
      i32.const 2
      local.get 3
      i32.load offset=52
      i32.load offset=12
      call_indirect (type 5)
      local.set 5
    end
    local.get 0
    local.get 5
    i32.store8 offset=8
    local.get 0
    local.get 4
    i32.const 1
    i32.add
    i32.store
    local.get 3
    i32.const 64
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt9Formatter12pad_integral17h8dd7664935fab95fE (type 14) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        local.get 5
        i32.const 1
        i32.add
        local.set 6
        local.get 0
        i32.load offset=28
        local.set 7
        i32.const 45
        local.set 8
        br 1 (;@1;)
      end
      i32.const 43
      i32.const 1114112
      local.get 0
      i32.load offset=28
      local.tee 7
      i32.const 1
      i32.and
      local.tee 1
      select
      local.set 8
      local.get 1
      local.get 5
      i32.add
      local.set 6
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 7
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.const 16
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          call $_ZN4core3str5count14do_count_chars17h3f7e13a0ad1691c6E
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 3
          br_if 0 (;@3;)
          i32.const 0
          local.set 1
          br 1 (;@2;)
        end
        local.get 3
        i32.const 3
        i32.and
        local.set 9
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 4
            i32.ge_u
            br_if 0 (;@4;)
            i32.const 0
            local.set 1
            i32.const 0
            local.set 10
            br 1 (;@3;)
          end
          local.get 3
          i32.const 12
          i32.and
          local.set 11
          i32.const 0
          local.set 1
          i32.const 0
          local.set 10
          loop  ;; label = @4
            local.get 1
            local.get 2
            local.get 10
            i32.add
            local.tee 12
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 12
            i32.const 1
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 12
            i32.const 2
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.get 12
            i32.const 3
            i32.add
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 1
            local.get 11
            local.get 10
            i32.const 4
            i32.add
            local.tee 10
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 9
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 10
        i32.add
        local.set 12
        loop  ;; label = @3
          local.get 1
          local.get 12
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 1
          local.get 12
          i32.const 1
          i32.add
          local.set 12
          local.get 9
          i32.const -1
          i32.add
          local.tee 9
          br_if 0 (;@3;)
        end
      end
      local.get 1
      local.get 6
      i32.add
      local.set 6
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        local.get 0
        i32.load offset=20
        local.tee 12
        local.get 0
        i32.load offset=24
        local.tee 10
        local.get 8
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf81d4cc4fa4dec61E
        br_if 1 (;@1;)
        local.get 12
        local.get 4
        local.get 5
        local.get 10
        i32.load offset=12
        call_indirect (type 5)
        return
      end
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 9
        local.get 6
        i32.gt_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        local.get 0
        i32.load offset=20
        local.tee 12
        local.get 0
        i32.load offset=24
        local.tee 10
        local.get 8
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf81d4cc4fa4dec61E
        br_if 1 (;@1;)
        local.get 12
        local.get 4
        local.get 5
        local.get 10
        i32.load offset=12
        call_indirect (type 5)
        return
      end
      block  ;; label = @2
        local.get 7
        i32.const 8
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=16
        local.set 11
        local.get 0
        i32.const 48
        i32.store offset=16
        local.get 0
        i32.load8_u offset=32
        local.set 7
        i32.const 1
        local.set 1
        local.get 0
        i32.const 1
        i32.store8 offset=32
        local.get 0
        i32.load offset=20
        local.tee 12
        local.get 0
        i32.load offset=24
        local.tee 10
        local.get 8
        local.get 2
        local.get 3
        call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf81d4cc4fa4dec61E
        br_if 1 (;@1;)
        local.get 9
        local.get 6
        i32.sub
        i32.const 1
        i32.add
        local.set 1
        block  ;; label = @3
          loop  ;; label = @4
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 12
            i32.const 48
            local.get 10
            i32.load offset=16
            call_indirect (type 4)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        i32.const 1
        local.set 1
        local.get 12
        local.get 4
        local.get 5
        local.get 10
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
        local.get 0
        local.get 7
        i32.store8 offset=32
        local.get 0
        local.get 11
        i32.store offset=16
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 9
      local.get 6
      i32.sub
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load8_u offset=32
            local.tee 1
            br_table 2 (;@2;) 0 (;@4;) 1 (;@3;) 0 (;@4;) 2 (;@2;)
          end
          local.get 6
          local.set 1
          i32.const 0
          local.set 6
          br 1 (;@2;)
        end
        local.get 6
        i32.const 1
        i32.shr_u
        local.set 1
        local.get 6
        i32.const 1
        i32.add
        i32.const 1
        i32.shr_u
        local.set 6
      end
      local.get 1
      i32.const 1
      i32.add
      local.set 1
      local.get 0
      i32.load offset=16
      local.set 9
      local.get 0
      i32.load offset=24
      local.set 12
      local.get 0
      i32.load offset=20
      local.set 10
      block  ;; label = @2
        loop  ;; label = @3
          local.get 1
          i32.const -1
          i32.add
          local.tee 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 10
          local.get 9
          local.get 12
          i32.load offset=16
          call_indirect (type 4)
          i32.eqz
          br_if 0 (;@3;)
        end
        i32.const 1
        return
      end
      i32.const 1
      local.set 1
      local.get 10
      local.get 12
      local.get 8
      local.get 2
      local.get 3
      call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf81d4cc4fa4dec61E
      br_if 0 (;@1;)
      local.get 10
      local.get 4
      local.get 5
      local.get 12
      i32.load offset=12
      call_indirect (type 5)
      br_if 0 (;@1;)
      i32.const 0
      local.set 1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 6
          local.get 1
          i32.ne
          br_if 0 (;@3;)
          local.get 6
          local.get 6
          i32.lt_u
          return
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 10
        local.get 9
        local.get 12
        i32.load offset=16
        call_indirect (type 4)
        i32.eqz
        br_if 0 (;@2;)
      end
      local.get 1
      i32.const -1
      i32.add
      local.get 6
      i32.lt_u
      return
    end
    local.get 1)
  (func $_ZN4core3fmt5Write9write_fmt17h13ccfd6307048a08E (type 4) (param i32 i32) (result i32)
    local.get 0
    i32.const 1054672
    local.get 1
    call $_ZN4core3fmt5write17hbfdffefff34f5cf8E)
  (func $_ZN4core3str5count14do_count_chars17h3f7e13a0ad1691c6E (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 0
        i32.const 3
        i32.add
        i32.const -4
        i32.and
        local.tee 2
        local.get 0
        i32.sub
        local.tee 3
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        i32.sub
        local.tee 4
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        local.get 4
        i32.const 3
        i32.and
        local.set 5
        i32.const 0
        local.set 6
        i32.const 0
        local.set 1
        block  ;; label = @3
          local.get 2
          local.get 0
          i32.eq
          local.tee 7
          br_if 0 (;@3;)
          i32.const 0
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              local.get 2
              i32.sub
              local.tee 8
              i32.const -4
              i32.le_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 9
              br 1 (;@4;)
            end
            i32.const 0
            local.set 9
            loop  ;; label = @5
              local.get 1
              local.get 0
              local.get 9
              i32.add
              local.tee 2
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.const 1
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.const 2
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.const 3
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 1
              local.get 9
              i32.const 4
              i32.add
              local.tee 9
              br_if 0 (;@5;)
            end
          end
          local.get 7
          br_if 0 (;@3;)
          local.get 0
          local.get 9
          i32.add
          local.set 2
          loop  ;; label = @4
            local.get 1
            local.get 2
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 1
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            local.get 8
            i32.const 1
            i32.add
            local.tee 8
            br_if 0 (;@4;)
          end
        end
        local.get 0
        local.get 3
        i32.add
        local.set 9
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 9
          local.get 4
          i32.const -4
          i32.and
          i32.add
          local.tee 2
          i32.load8_s
          i32.const -65
          i32.gt_s
          local.set 6
          local.get 5
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 6
          local.get 2
          i32.load8_s offset=1
          i32.const -65
          i32.gt_s
          i32.add
          local.set 6
          local.get 5
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          local.get 6
          local.get 2
          i32.load8_s offset=2
          i32.const -65
          i32.gt_s
          i32.add
          local.set 6
        end
        local.get 4
        i32.const 2
        i32.shr_u
        local.set 3
        local.get 6
        local.get 1
        i32.add
        local.set 8
        loop  ;; label = @3
          local.get 9
          local.set 4
          local.get 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.const 192
          local.get 3
          i32.const 192
          i32.lt_u
          select
          local.tee 6
          i32.const 3
          i32.and
          local.set 7
          local.get 6
          i32.const 2
          i32.shl
          local.set 5
          i32.const 0
          local.set 2
          block  ;; label = @4
            local.get 3
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            local.get 4
            local.get 5
            i32.const 1008
            i32.and
            i32.add
            local.set 0
            i32.const 0
            local.set 2
            local.get 4
            local.set 1
            loop  ;; label = @5
              local.get 1
              i32.load offset=12
              local.tee 9
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 9
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 1
              i32.load offset=8
              local.tee 9
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 9
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 1
              i32.load offset=4
              local.tee 9
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 9
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 1
              i32.load
              local.tee 9
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 9
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              local.get 2
              i32.add
              i32.add
              i32.add
              i32.add
              local.set 2
              local.get 1
              i32.const 16
              i32.add
              local.tee 1
              local.get 0
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 3
          local.get 6
          i32.sub
          local.set 3
          local.get 4
          local.get 5
          i32.add
          local.set 9
          local.get 2
          i32.const 8
          i32.shr_u
          i32.const 16711935
          i32.and
          local.get 2
          i32.const 16711935
          i32.and
          i32.add
          i32.const 65537
          i32.mul
          i32.const 16
          i32.shr_u
          local.get 8
          i32.add
          local.set 8
          local.get 7
          i32.eqz
          br_if 0 (;@3;)
        end
        local.get 4
        local.get 6
        i32.const 252
        i32.and
        i32.const 2
        i32.shl
        i32.add
        local.tee 2
        i32.load
        local.tee 1
        i32.const -1
        i32.xor
        i32.const 7
        i32.shr_u
        local.get 1
        i32.const 6
        i32.shr_u
        i32.or
        i32.const 16843009
        i32.and
        local.set 1
        block  ;; label = @3
          local.get 7
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=4
          local.tee 9
          i32.const -1
          i32.xor
          i32.const 7
          i32.shr_u
          local.get 9
          i32.const 6
          i32.shr_u
          i32.or
          i32.const 16843009
          i32.and
          local.get 1
          i32.add
          local.set 1
          local.get 7
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=8
          local.tee 2
          i32.const -1
          i32.xor
          i32.const 7
          i32.shr_u
          local.get 2
          i32.const 6
          i32.shr_u
          i32.or
          i32.const 16843009
          i32.and
          local.get 1
          i32.add
          local.set 1
        end
        local.get 1
        i32.const 8
        i32.shr_u
        i32.const 459007
        i32.and
        local.get 1
        i32.const 16711935
        i32.and
        i32.add
        i32.const 65537
        i32.mul
        i32.const 16
        i32.shr_u
        local.get 8
        i32.add
        return
      end
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const 0
        return
      end
      local.get 1
      i32.const 3
      i32.and
      local.set 9
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 4
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 8
          i32.const 0
          local.set 2
          br 1 (;@2;)
        end
        local.get 1
        i32.const -4
        i32.and
        local.set 3
        i32.const 0
        local.set 8
        i32.const 0
        local.set 2
        loop  ;; label = @3
          local.get 8
          local.get 0
          local.get 2
          i32.add
          local.tee 1
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 1
          i32.const 1
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 1
          i32.const 2
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 1
          i32.const 3
          i32.add
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.set 8
          local.get 3
          local.get 2
          i32.const 4
          i32.add
          local.tee 2
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 9
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 8
        local.get 1
        i32.load8_s
        i32.const -65
        i32.gt_s
        i32.add
        local.set 8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 9
        i32.const -1
        i32.add
        local.tee 9
        br_if 0 (;@2;)
      end
    end
    local.get 8)
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17hf81d4cc4fa4dec61E (type 10) (param i32 i32 i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 1114112
          i32.eq
          br_if 0 (;@3;)
          i32.const 1
          local.set 5
          local.get 0
          local.get 2
          local.get 1
          i32.load offset=16
          call_indirect (type 4)
          br_if 1 (;@2;)
        end
        local.get 3
        br_if 1 (;@1;)
        i32.const 0
        local.set 5
      end
      local.get 5
      return
    end
    local.get 0
    local.get 3
    local.get 4
    local.get 1
    i32.load offset=12
    call_indirect (type 5))
  (func $_ZN4core3fmt9Formatter9write_str17h27ead38f26af9f7cE (type 5) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load offset=20
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 5))
  (func $_ZN4core3fmt9Formatter26debug_struct_field2_finish17h826d32d2fef379efE (type 15) (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 11
    global.set $__stack_pointer
    local.get 0
    i32.load offset=20
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 5)
    local.set 2
    local.get 11
    i32.const 0
    i32.store8 offset=13
    local.get 11
    local.get 2
    i32.store8 offset=12
    local.get 11
    local.get 0
    i32.store offset=8
    local.get 11
    i32.const 8
    i32.add
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    call $_ZN4core3fmt8builders11DebugStruct5field17h5169b8d642e38addE
    local.get 7
    local.get 8
    local.get 9
    local.get 10
    call $_ZN4core3fmt8builders11DebugStruct5field17h5169b8d642e38addE
    local.set 1
    local.get 11
    i32.load8_u offset=12
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 11
        i32.load8_u offset=13
        br_if 0 (;@2;)
        local.get 2
        i32.const 255
        i32.and
        i32.const 0
        i32.ne
        local.set 0
        br 1 (;@1;)
      end
      i32.const 1
      local.set 0
      local.get 2
      i32.const 255
      i32.and
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 1
        i32.load
        local.tee 0
        i32.load8_u offset=28
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        local.get 0
        i32.load offset=20
        i32.const 1054711
        i32.const 2
        local.get 0
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 5)
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.load offset=20
      i32.const 1054710
      i32.const 1
      local.get 0
      i32.load offset=24
      i32.load offset=12
      call_indirect (type 5)
      local.set 0
    end
    local.get 11
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h27de2cb5ad4c9725E (type 10) (param i32 i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 0
    i32.load offset=20
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 5)
    i32.store8 offset=12
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    local.get 2
    i32.eqz
    i32.store8 offset=13
    local.get 5
    i32.const 0
    i32.store offset=4
    local.get 5
    i32.const 4
    i32.add
    local.get 3
    local.get 4
    call $_ZN4core3fmt8builders10DebugTuple5field17h0064a092bf1ad15fE
    local.set 0
    local.get 5
    i32.load8_u offset=12
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load
        local.tee 1
        br_if 0 (;@2;)
        local.get 2
        i32.const 255
        i32.and
        i32.const 0
        i32.ne
        local.set 0
        br 1 (;@1;)
      end
      i32.const 1
      local.set 0
      local.get 2
      i32.const 255
      i32.and
      br_if 0 (;@1;)
      local.get 5
      i32.load offset=8
      local.set 2
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 5
        i32.load8_u offset=13
        i32.const 255
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.load8_u offset=28
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.set 0
        local.get 2
        i32.load offset=20
        i32.const 1054716
        i32.const 1
        local.get 2
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 5)
        br_if 1 (;@1;)
      end
      local.get 2
      i32.load offset=20
      i32.const 1054356
      i32.const 1
      local.get 2
      i32.load offset=24
      i32.load offset=12
      call_indirect (type 5)
      local.set 0
    end
    local.get 5
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN43_$LT$bool$u20$as$u20$core..fmt..Display$GT$3fmt17h5bc1718bd81a2971E (type 4) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.load8_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 1054964
      i32.const 5
      call $_ZN4core3fmt9Formatter3pad17h9c823f28d3149995E
      return
    end
    local.get 1
    i32.const 1054969
    i32.const 4
    call $_ZN4core3fmt9Formatter3pad17h9c823f28d3149995E)
  (func $_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h337dbcd73fd76d73E (type 5) (param i32 i32 i32) (result i32)
    local.get 2
    local.get 0
    local.get 1
    call $_ZN4core3fmt9Formatter3pad17h9c823f28d3149995E)
  (func $_ZN4core5slice6memchr14memchr_aligned17h5eb229a17b86a4e2E (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 3
            i32.add
            i32.const -4
            i32.and
            local.tee 4
            local.get 2
            i32.eq
            br_if 0 (;@4;)
            local.get 4
            local.get 2
            i32.sub
            local.tee 4
            local.get 3
            local.get 4
            local.get 3
            i32.lt_u
            select
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 5
            local.get 1
            i32.const 255
            i32.and
            local.set 6
            i32.const 1
            local.set 7
            loop  ;; label = @5
              local.get 2
              local.get 5
              i32.add
              i32.load8_u
              local.get 6
              i32.eq
              br_if 4 (;@1;)
              local.get 4
              local.get 5
              i32.const 1
              i32.add
              local.tee 5
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 4
            local.get 3
            i32.const -8
            i32.add
            local.tee 7
            i32.gt_u
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          local.get 3
          i32.const -8
          i32.add
          local.set 7
          i32.const 0
          local.set 4
        end
        local.get 1
        i32.const 255
        i32.and
        i32.const 16843009
        i32.mul
        local.set 5
        loop  ;; label = @3
          local.get 2
          local.get 4
          i32.add
          local.tee 6
          i32.const 4
          i32.add
          i32.load
          local.get 5
          i32.xor
          local.tee 8
          i32.const -16843009
          i32.add
          local.get 8
          i32.const -1
          i32.xor
          i32.and
          local.get 6
          i32.load
          local.get 5
          i32.xor
          local.tee 6
          i32.const -16843009
          i32.add
          local.get 6
          i32.const -1
          i32.xor
          i32.and
          i32.or
          i32.const -2139062144
          i32.and
          br_if 1 (;@2;)
          local.get 4
          i32.const 8
          i32.add
          local.tee 4
          local.get 7
          i32.le_u
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 3
            local.get 4
            i32.sub
            local.tee 6
            br_if 0 (;@4;)
            i32.const 0
            local.set 6
            br 1 (;@3;)
          end
          local.get 2
          local.get 4
          i32.add
          local.set 8
          i32.const 0
          local.set 5
          local.get 1
          i32.const 255
          i32.and
          local.set 2
          i32.const 1
          local.set 7
          loop  ;; label = @4
            block  ;; label = @5
              local.get 8
              local.get 5
              i32.add
              i32.load8_u
              local.get 2
              i32.ne
              br_if 0 (;@5;)
              local.get 5
              local.set 6
              br 3 (;@2;)
            end
            local.get 6
            local.get 5
            i32.const 1
            i32.add
            local.tee 5
            i32.ne
            br_if 0 (;@4;)
          end
        end
        i32.const 0
        local.set 7
      end
      local.get 6
      local.get 4
      i32.add
      local.set 5
    end
    local.get 0
    local.get 5
    i32.store offset=4
    local.get 0
    local.get 7
    i32.store)
  (func $_ZN4core5slice6memchr7memrchr17h167f4b6b40ef34b9E (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 0
    local.set 4
    local.get 3
    local.set 5
    local.get 3
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              local.get 2
              i32.const 3
              i32.add
              i32.const -4
              i32.and
              local.get 2
              i32.sub
              local.tee 7
              i32.lt_u
              br_if 0 (;@5;)
              local.get 3
              local.get 3
              local.get 7
              i32.sub
              i32.const 7
              i32.and
              local.tee 4
              i32.sub
              local.set 5
              local.get 3
              local.get 4
              i32.lt_u
              br_if 1 (;@4;)
              local.get 7
              local.set 6
            end
            block  ;; label = @5
              local.get 4
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  local.get 5
                  i32.add
                  local.tee 7
                  local.get 4
                  i32.add
                  local.tee 8
                  i32.const -1
                  i32.add
                  local.tee 9
                  i32.load8_u
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const -1
                  i32.add
                  local.set 4
                  br 1 (;@6;)
                end
                local.get 7
                local.get 9
                i32.eq
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 8
                  i32.const -2
                  i32.add
                  local.tee 9
                  i32.load8_u
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const -2
                  i32.add
                  local.set 4
                  br 1 (;@6;)
                end
                local.get 7
                local.get 9
                i32.eq
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 8
                  i32.const -3
                  i32.add
                  local.tee 9
                  i32.load8_u
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const -3
                  i32.add
                  local.set 4
                  br 1 (;@6;)
                end
                local.get 7
                local.get 9
                i32.eq
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 8
                  i32.const -4
                  i32.add
                  local.tee 9
                  i32.load8_u
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const -4
                  i32.add
                  local.set 4
                  br 1 (;@6;)
                end
                local.get 7
                local.get 9
                i32.eq
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 8
                  i32.const -5
                  i32.add
                  local.tee 9
                  i32.load8_u
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const -5
                  i32.add
                  local.set 4
                  br 1 (;@6;)
                end
                local.get 7
                local.get 9
                i32.eq
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 8
                  i32.const -6
                  i32.add
                  local.tee 9
                  i32.load8_u
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const -6
                  i32.add
                  local.set 4
                  br 1 (;@6;)
                end
                local.get 7
                local.get 9
                i32.eq
                br_if 1 (;@5;)
                block  ;; label = @7
                  local.get 8
                  i32.const -7
                  i32.add
                  local.tee 9
                  i32.load8_u
                  local.get 1
                  i32.const 255
                  i32.and
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 4
                  i32.const -7
                  i32.add
                  local.set 4
                  br 1 (;@6;)
                end
                local.get 7
                local.get 9
                i32.eq
                br_if 1 (;@5;)
                local.get 4
                i32.const -8
                i32.or
                local.set 4
              end
              local.get 4
              local.get 5
              i32.add
              local.set 4
              br 3 (;@2;)
            end
            local.get 1
            i32.const 255
            i32.and
            i32.const 16843009
            i32.mul
            local.set 7
            block  ;; label = @5
              loop  ;; label = @6
                local.get 5
                local.tee 4
                local.get 6
                i32.le_u
                br_if 1 (;@5;)
                local.get 4
                i32.const -8
                i32.add
                local.set 5
                local.get 2
                local.get 4
                i32.add
                local.tee 9
                i32.const -4
                i32.add
                i32.load
                local.get 7
                i32.xor
                local.tee 8
                i32.const -16843009
                i32.add
                local.get 8
                i32.const -1
                i32.xor
                i32.and
                local.get 9
                i32.const -8
                i32.add
                i32.load
                local.get 7
                i32.xor
                local.tee 9
                i32.const -16843009
                i32.add
                local.get 9
                i32.const -1
                i32.xor
                i32.and
                i32.or
                i32.const -2139062144
                i32.and
                i32.eqz
                br_if 0 (;@6;)
              end
            end
            local.get 4
            local.get 3
            i32.gt_u
            br_if 1 (;@3;)
            local.get 2
            i32.const -1
            i32.add
            local.set 7
            local.get 1
            i32.const 255
            i32.and
            local.set 9
            loop  ;; label = @5
              block  ;; label = @6
                local.get 4
                br_if 0 (;@6;)
                i32.const 0
                local.set 5
                br 5 (;@1;)
              end
              local.get 7
              local.get 4
              i32.add
              local.set 5
              local.get 4
              i32.const -1
              i32.add
              local.set 4
              local.get 5
              i32.load8_u
              local.get 9
              i32.eq
              br_if 3 (;@2;)
              br 0 (;@5;)
            end
          end
          local.get 5
          local.get 3
          i32.const 1055024
          call $_ZN4core5slice5index26slice_start_index_len_fail17h464ae35af7c6898eE
          unreachable
        end
        local.get 4
        local.get 3
        i32.const 1055008
        call $_ZN4core5slice5index24slice_end_index_len_fail17h32adee9828d9a43aE
        unreachable
      end
      i32.const 1
      local.set 5
    end
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 5
    i32.store)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i8$GT$3fmt17h915ac1480c2473a0E (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load8_u
    local.set 3
    i32.const 0
    local.set 0
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.add
      i32.const 127
      i32.add
      local.get 3
      i32.const 15
      i32.and
      local.tee 4
      i32.const 48
      i32.or
      local.get 4
      i32.const 55
      i32.add
      local.get 4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get 0
      i32.const -1
      i32.add
      local.set 0
      local.get 3
      i32.const 255
      i32.and
      local.tee 4
      i32.const 4
      i32.shr_u
      local.set 3
      local.get 4
      i32.const 16
      i32.ge_u
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 0
      i32.const 128
      i32.add
      local.tee 3
      i32.const 128
      i32.le_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 128
      i32.const 1054748
      call $_ZN4core5slice5index26slice_start_index_len_fail17h464ae35af7c6898eE
      unreachable
    end
    local.get 1
    i32.const 1
    i32.const 1054744
    i32.const 2
    local.get 2
    local.get 0
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get 0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h8dd7664935fab95fE
    local.set 0
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i8$GT$3fmt17h83ea9ef9e2d917ddE (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load8_u
    local.set 3
    i32.const 0
    local.set 0
    loop  ;; label = @1
      local.get 2
      local.get 0
      i32.add
      i32.const 127
      i32.add
      local.get 3
      i32.const 15
      i32.and
      local.tee 4
      i32.const 48
      i32.or
      local.get 4
      i32.const 87
      i32.add
      local.get 4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get 0
      i32.const -1
      i32.add
      local.set 0
      local.get 3
      i32.const 255
      i32.and
      local.tee 4
      i32.const 4
      i32.shr_u
      local.set 3
      local.get 4
      i32.const 16
      i32.ge_u
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 0
      i32.const 128
      i32.add
      local.tee 3
      i32.const 128
      i32.le_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 128
      i32.const 1054748
      call $_ZN4core5slice5index26slice_start_index_len_fail17h464ae35af7c6898eE
      unreachable
    end
    local.get 1
    i32.const 1
    i32.const 1054744
    i32.const 2
    local.get 2
    local.get 0
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get 0
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h8dd7664935fab95fE
    local.set 0
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num3imp7fmt_u6417h3c5e505d6883ff36E (type 16) (param i64 i32 i32) (result i32)
    (local i32 i32 i64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    i32.const 39
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i64.const 10000
        i64.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 5
        br 1 (;@1;)
      end
      i32.const 39
      local.set 4
      loop  ;; label = @2
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.add
        local.tee 6
        i32.const -4
        i32.add
        local.get 0
        local.get 0
        i64.const 10000
        i64.div_u
        local.tee 5
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        i32.const 1054764
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1054764
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 4
        i32.const -4
        i32.add
        local.set 4
        local.get 0
        i64.const 99999999
        i64.gt_u
        local.set 6
        local.get 5
        local.set 0
        local.get 6
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.tee 6
      i32.const 99
      i32.le_u
      br_if 0 (;@1;)
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -2
      i32.add
      local.tee 4
      i32.add
      local.get 5
      i32.wrap_i64
      local.tee 6
      local.get 6
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 6
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1054764
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 10
        i32.lt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 9
        i32.add
        local.get 4
        i32.const -2
        i32.add
        local.tee 4
        i32.add
        local.get 6
        i32.const 1
        i32.shl
        i32.const 1054764
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 3
      i32.const 9
      i32.add
      local.get 4
      i32.const -1
      i32.add
      local.tee 4
      i32.add
      local.get 6
      i32.const 48
      i32.or
      i32.store8
    end
    local.get 2
    local.get 1
    i32.const 1
    i32.const 0
    local.get 3
    i32.const 9
    i32.add
    local.get 4
    i32.add
    i32.const 39
    local.get 4
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h8dd7664935fab95fE
    local.set 4
    local.get 3
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h36c9a2b4cbce5d0cE (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load
    local.set 0
    i32.const 0
    local.set 3
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      i32.const 127
      i32.add
      local.get 0
      i32.const 15
      i32.and
      local.tee 4
      i32.const 48
      i32.or
      local.get 4
      i32.const 55
      i32.add
      local.get 4
      i32.const 10
      i32.lt_u
      select
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
      local.get 0
      i32.const 16
      i32.lt_u
      local.set 4
      local.get 0
      i32.const 4
      i32.shr_u
      local.set 0
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
    end
    block  ;; label = @1
      local.get 3
      i32.const 128
      i32.add
      local.tee 0
      i32.const 128
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 128
      i32.const 1054748
      call $_ZN4core5slice5index26slice_start_index_len_fail17h464ae35af7c6898eE
      unreachable
    end
    local.get 1
    i32.const 1
    i32.const 1054744
    i32.const 2
    local.get 2
    local.get 3
    i32.add
    i32.const 128
    i32.add
    i32.const 0
    local.get 3
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17h8dd7664935fab95fE
    local.set 0
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17ha27aae851322f006E (type 4) (param i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 0
    local.get 0
    i32.const 31
    i32.shr_s
    local.tee 2
    i32.xor
    local.get 2
    i32.sub
    i64.extend_i32_u
    local.get 0
    i32.const -1
    i32.xor
    i32.const 31
    i32.shr_u
    local.get 1
    call $_ZN4core3fmt3num3imp7fmt_u6417h3c5e505d6883ff36E)
  (table (;0;) 51 51 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (global $GOT.data.internal.__memory_base i32 (i32.const 0))
  (export "memory" (memory 0))
  (export "_start" (func $_start))
  (export "__main_void" (func $__main_void))
  (elem (;0;) (i32.const 1) func $_ZN10light_wasm4main17h187dbf60e96095a0E $_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17hdbfdc71d3e32adcbE $_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hbf8b66a58e5b6f14E $_ZN3std2io5Write9write_fmt17had48db4995c7a5a8E $_ZN3std2io5Write9write_fmt17ha9724c34ed683e1aE $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17ha27aae851322f006E $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17ha9ba8c42631e0963E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0733a3b685dc6d0eE $_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hf05a34fd688607a6E $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h21e83e20c922bcf6E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h9d2cd46cf4dc5d54E $_ZN91_$LT$std..sys_common..backtrace.._print..DisplayBacktrace$u20$as$u20$core..fmt..Display$GT$3fmt17hc45bdf1c0d25ed27E $_ZN73_$LT$core..panic..panic_info..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17h6506a85cdc2d0d4aE $_ZN3std5alloc24default_alloc_error_hook17h657d59eb5b8b6cdfE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h5c67958fad7b99a1E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hf2884d419915b3a7E $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hde970c8e789a879eE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2cc639f8ab650329E $_ZN4core3ptr88drop_in_place$LT$std..io..Write..write_fmt..Adapter$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h50f89f6492f9b26fE $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17ha5c2072c068162b8E $_ZN4core3fmt5Write10write_char17hfa8a4950ff3b2360E $_ZN4core3fmt5Write9write_fmt17h16c27a814ae30fbcE $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h55e24719e8a056abE $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17hd7cc20b68bb95e6aE $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h4dc2a2d994a80c83E $_ZN4core3fmt5Write9write_fmt17h6072faff8efe5cc0E $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h74e8f241f9389f0bE $_ZN4core3fmt5Write10write_char17h562d40b6adb80c97E $_ZN4core3fmt5Write9write_fmt17h3b1c96c74fb5543dE $_ZN80_$LT$std..io..Write..write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h8caa9840fb3bf804E $_ZN4core3fmt5Write10write_char17h4d3dede2d28ae446E $_ZN4core3fmt5Write9write_fmt17h3ccd32ccade0033fE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h08d9b2fe83e1d956E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h1095ce410adc101fE $_ZN99_$LT$std..panicking..begin_panic_handler..StaticStrPayload$u20$as$u20$core..panic..PanicPayload$GT$8take_box17hb58f6b3c6b343637E $_ZN99_$LT$std..panicking..begin_panic_handler..StaticStrPayload$u20$as$u20$core..panic..PanicPayload$GT$3get17hc959c2040fba4703E $_ZN4core3ptr77drop_in_place$LT$std..panicking..begin_panic_handler..FormatStringPayload$GT$17hc737e4b332032fedE $_ZN102_$LT$std..panicking..begin_panic_handler..FormatStringPayload$u20$as$u20$core..panic..PanicPayload$GT$8take_box17h8635c8c220e838ecE $_ZN102_$LT$std..panicking..begin_panic_handler..FormatStringPayload$u20$as$u20$core..panic..PanicPayload$GT$3get17h1d02672a793994e3E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h18563e9cae83bb19E $_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17he670eae5db314858E $_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hb398c037eb495ee7E $_ZN63_$LT$core..cell..BorrowMutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hf791dc1a9a4c94dbE $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hde29e90f09362d9fE $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4904b04b6447a902E $_ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17h300410d8e27313beE $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hf6450125705d22b7E $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h3361d97b57db5468E $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17h63c05e7c33d6f640E $_ZN4core3fmt5Write9write_fmt17h13ccfd6307048a08E)
  (data $.rodata (i32.const 1048576) "Hello, world!\0a\00\00\00\00\10\00\0e\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00\0f\00\00\00reentrant init\00\00H\00\10\00\0e\00\00\00/rustc/051478957371ee0084a7c0913941d2a8c4757bb9/library/core/src/cell/once.rs\00\00\00`\00\10\00M\00\00\00$\01\00\00B\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00\10\00\00\00internal error: entered unreachable code/rustc/051478957371ee0084a7c0913941d2a8c4757bb9/library/alloc/src/vec/mod.rs\fc\00\10\00L\00\00\00\95\08\00\00$\00\00\00Utf8Errorvalid_up_to\00\00\00\00\04\00\00\00\04\00\00\00\11\00\00\00error_len\00\00\00\00\00\00\00\04\00\00\00\04\00\00\00\12\00\00\00NoneSome\13\00\00\00\0c\00\00\00\04\00\00\00\14\00\00\00\15\00\00\00\16\00\00\00\17\00\00\00\0c\00\00\00\04\00\00\00\18\00\00\00\19\00\00\00\1a\00\00\00\13\00\00\00\0c\00\00\00\04\00\00\00\1b\00\00\00\1c\00\00\00\1d\00\00\00\13\00\00\00\0c\00\00\00\04\00\00\00\1e\00\00\00\1f\00\00\00 \00\00\00library/std/src/rt.rs\00\00\00\00\02\10\00\15\00\00\00k\00\00\00\0d\00\00\00fatal runtime error: thread::set_current should only be called once per thread\0a\00(\02\10\00O\00\00\00library/std/src/thread/mod.rsfailed to generate unique thread ID: bitspace exhausted\9d\02\10\007\00\00\00\80\02\10\00\1d\00\00\00\be\04\00\00\0d\00\00\00main\00RUST_BACKTRACEcalled `Result::unwrap()` on an `Err` valuefailed to write the buffered data\00*\03\10\00!\00\00\00\17\00\00\00\01\00\00\00\00\00\00\00library/std/src/io/buffered/linewritershim.rsmid > len\00\00\8d\03\10\00\09\00\00\00`\03\10\00-\00\00\00\0a\01\00\00)\00\00\00entity not foundpermission deniedconnection refusedconnection resethost unreachablenetwork unreachableconnection abortednot connectedaddress in useaddress not availablenetwork downbroken pipeentity already existsoperation would blocknot a directoryis a directorydirectory not emptyread-only filesystem or storage mediumfilesystem loop or indirection limit (e.g. symlink loop)stale network file handleinvalid input parameterinvalid datatimed outwrite zerono storage spaceseek on unseekable filefilesystem quota exceededfile too largeresource busyexecutable file busydeadlockcross-device link or renametoo many linksinvalid filenameargument list too longoperation interruptedunsupportedunexpected end of fileout of memoryother erroruncategorized error (os error )\00\00\00\01\00\00\00\00\00\00\00\9d\06\10\00\0b\00\00\00\a8\06\10\00\01\00\00\00library/std/src/io/stdio.rs\00\c4\06\10\00\1b\00\00\00\b4\02\00\00\13\00\00\00\c4\06\10\00\1b\00\00\00-\03\00\00\14\00\00\00failed printing to : \00\00\00\00\07\10\00\13\00\00\00\13\07\10\00\02\00\00\00\c4\06\10\00\1b\00\00\00^\04\00\00\09\00\00\00stdoutlibrary/std/src/io/mod.rsfailed to write whole buffer\00W\07\10\00\1c\00\00\00\17\00\00\00\02\00\00\00t\07\10\00>\07\10\00\19\00\00\00\a9\06\00\00$\00\00\00a formatting trait implementation returned an error when the underlying stream did not\00\00\98\07\10\00V\00\00\00>\07\10\00\19\00\00\004\07\00\00\15\00\00\00library/std/src/panic.rs\08\08\10\00\18\00\00\00\fc\00\00\00\12\00\00\00fullcannot recursively acquire mutex4\08\10\00 \00\00\00library/std/src/sys/sync/mutex/no_threads.rs\5c\08\10\00,\00\00\00\14\00\00\00\09\00\00\00library/std/src/sync/once.rs\98\08\10\00\1c\00\00\00\95\00\00\002\00\00\00\98\08\10\00\1c\00\00\00\d0\00\00\00\14\00\00\00\98\08\10\00\1c\00\00\00\d0\00\00\001\00\00\00lock count overflow in reentrant mutexlibrary/std/src/sync/reentrant_lock.rs\0a\09\10\00&\00\00\00\bf\00\00\00-\00\00\00file name contained an unexpected NUL byte\00\00@\09\10\00*\00\00\00\14\00\00\00\02\00\00\00l\09\10\00stack backtrace:\0anote: Some details are omitted, run with `RUST_BACKTRACE=full` for a verbose backtrace.\0amemory allocation of  bytes failed\0a\e9\09\10\00\15\00\00\00\fe\09\10\00\0e\00\00\00 bytes failed\00\00\00\e9\09\10\00\15\00\00\00\1c\0a\10\00\0d\00\00\00library/std/src/alloc.rs<\0a\10\00\18\00\00\00b\01\00\00\09\00\00\00library/std/src/panicking.rsBox<dyn Any><unnamed>thread '' panicked at :\0a\0a\00\00\95\0a\10\00\08\00\00\00\9d\0a\10\00\0e\00\00\00\ab\0a\10\00\02\00\00\00\ad\0a\10\00\01\00\00\00note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace\0a\00\00\d0\0a\10\00N\00\00\00d\0a\10\00\1c\00\00\00\8b\02\00\00\1e\00\00\00\17\00\00\00\0c\00\00\00\04\00\00\00!\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00\22\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00#\00\00\00$\00\00\00%\00\00\00\10\00\00\00\04\00\00\00&\00\00\00'\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00\0apanicked after panic::always_abort(), aborting.\0a\00\00\00\01\00\00\00\00\00\00\00\90\0b\10\001\00\00\00\0athread panicked while processing panic. aborting.\0a\00\01\00\00\00\00\00\00\00\d4\0b\10\003\00\00\00thread caused non-unwinding panic. aborting.\0a\00\00\00\18\0c\10\00-\00\00\00fatal runtime error: failed to initiate panic, error \00\00\00P\0c\10\005\00\00\00\ad\0a\10\00\01\00\00\00\00\00\00\00\08\00\00\00\04\00\00\00)\00\00\00library/std/src/sys/pal/wasi/os.rs\00\00\a8\0c\10\00\22\00\00\00C\00\00\006\00\00\00strerror_r failure\00\00\dc\0c\10\00\12\00\00\00\a8\0c\10\00\22\00\00\00A\00\00\00\0d\00\00\00Once instance has previously been poisoned\00\00\08\0d\10\00*\00\00\00one-time initialization may not be performed recursively<\0d\10\008\00\00\00fatal runtime error: rwlock locked for writing\0a\00|\0d\10\00/\00\00\00\10\00\00\00\11\00\00\00\12\00\00\00\10\00\00\00\10\00\00\00\13\00\00\00\12\00\00\00\0d\00\00\00\0e\00\00\00\15\00\00\00\0c\00\00\00\0b\00\00\00\15\00\00\00\15\00\00\00\0f\00\00\00\0e\00\00\00\13\00\00\00&\00\00\008\00\00\00\19\00\00\00\17\00\00\00\0c\00\00\00\09\00\00\00\0a\00\00\00\10\00\00\00\17\00\00\00\19\00\00\00\0e\00\00\00\0d\00\00\00\14\00\00\00\08\00\00\00\1b\00\00\00\0e\00\00\00\10\00\00\00\16\00\00\00\15\00\00\00\0b\00\00\00\16\00\00\00\0d\00\00\00\0b\00\00\00\13\00\00\00\b0\03\10\00\c0\03\10\00\d1\03\10\00\e3\03\10\00\f3\03\10\00\03\04\10\00\16\04\10\00(\04\10\005\04\10\00C\04\10\00X\04\10\00d\04\10\00o\04\10\00\84\04\10\00\99\04\10\00\a8\04\10\00\b6\04\10\00\c9\04\10\00\ef\04\10\00'\05\10\00@\05\10\00W\05\10\00c\05\10\00l\05\10\00v\05\10\00\86\05\10\00\9d\05\10\00\b6\05\10\00\c4\05\10\00\d1\05\10\00\e5\05\10\00\ed\05\10\00\08\06\10\00\16\06\10\00&\06\10\00<\06\10\00Q\06\10\00\5c\06\10\00r\06\10\00\7f\06\10\00\8a\06\10\00/\00Success\00Illegal byte sequence\00Domain error\00Result not representable\00Not a tty\00Permission denied\00Operation not permitted\00No such file or directory\00No such process\00File exists\00Value too large for data type\00No space left on device\00Out of memory\00Resource busy\00Interrupted system call\00Resource temporarily unavailable\00Invalid seek\00Cross-device link\00Read-only file system\00Directory not empty\00Connection reset by peer\00Operation timed out\00Connection refused\00Host is unreachable\00Address in use\00Broken pipe\00I/O error\00No such device or address\00No such device\00Not a directory\00Is a directory\00Text file busy\00Exec format error\00Invalid argument\00Argument list too long\00Symbolic link loop\00Filename too long\00Too many open files in system\00No file descriptors available\00Bad file descriptor\00No child process\00Bad address\00File too large\00Too many links\00No locks available\00Resource deadlock would occur\00State not recoverable\00Previous owner died\00Operation canceled\00Function not implemented\00No message of desired type\00Identifier removed\00Link has been severed\00Protocol error\00Bad message\00Not a socket\00Destination address required\00Message too large\00Protocol wrong type for socket\00Protocol not available\00Protocol not supported\00Not supported\00Address family not supported by protocol\00Address not available\00Network is down\00Network unreachable\00Connection reset by network\00Connection aborted\00No buffer space available\00Socket is connected\00Socket not connected\00Operation already in progress\00Operation in progress\00Stale file handle\00Quota exceeded\00Multihop attempted\00Capabilities insufficient\00\00\00\00\00u\02N\00\d6\01\e2\04\b9\04\18\01\8e\05\ed\02\16\04\f2\00\97\03\01\038\05\af\01\82\01O\03/\04\1e\00\d4\05\a2\00\12\03\1e\03\c2\01\de\03\08\00\ac\05\00\01d\02\f1\01e\054\02\8c\02\cf\02-\03L\04\e3\05\9f\02\f8\04\1c\05\08\05\b1\02K\05\15\02x\00R\02<\03\f1\03\e4\00\c3\03}\04\cc\00\aa\03y\05$\02n\01m\03\22\04\ab\04D\00\fb\01\ae\00\83\03`\00\e5\01\07\04\94\04^\04+\00X\019\01\92\00\c2\05\9b\01C\02F\01\f6\05LayoutErrorcapacity overflow\00\00\b5\15\10\00\11\00\00\00library/alloc/src/raw_vec.rs\d0\15\10\00\1c\00\00\00\19\00\00\00\05\00\00\00library/alloc/src/ffi/c_str.rs\00\00\fc\15\10\00\1e\00\00\00\1e\01\00\007\00\00\00called `Result::unwrap()` on an `Err` value\00\00\00\00\00\00\00\00\00\01\00\00\00*\00\00\00library/alloc/src/sync.rs\00\00\00h\16\10\00\19\00\00\00s\01\00\002\00\00\00)BorrowMutErroralready borrowed: \00\00\00\a3\16\10\00\12\00\00\00\01\00\00\00\00\00\00\00:called `Option::unwrap()` on a `None` value\01\00\00\00\00\00\00\00\c8\16\10\00\01\00\00\00\c8\16\10\00\01\00\00\00panicked at \0a\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00/\00\00\00==!=matchesassertion `left  right` failed\0a  left: \0a right: \007\17\10\00\10\00\00\00G\17\10\00\17\00\00\00^\17\10\00\09\00\00\00 right` failed: \0a  left: \00\00\007\17\10\00\10\00\00\00\80\17\10\00\10\00\00\00\90\17\10\00\09\00\00\00^\17\10\00\09\00\00\00: \00\00\01\00\00\00\00\00\00\00\bc\17\10\00\02\00\00\00\00\00\00\00\0c\00\00\00\04\00\00\000\00\00\001\00\00\002\00\00\00     { ,  {\0a,\0a} }((\0a,library/core/src/fmt/num.rs0x\00\00\fd\17\10\00\1b\00\00\00i\00\00\00\17\00\00\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899falsetruelibrary/core/src/slice/memchr.rs\00\00\00\fd\18\10\00 \00\00\00\9f\00\00\00\09\00\00\00\fd\18\10\00 \00\00\00\83\00\00\00\1e\00\00\00range start index  out of range for slice of length @\19\10\00\12\00\00\00R\19\10\00\22\00\00\00range end index \84\19\10\00\10\00\00\00R\19\10\00\22\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\00\00\00\00\00\00\00\00\00\00\00")
  (data $.data (i32.const 1055396) "\01\00\00\00\ff\ff\ff\ff\fc\0e\10\00"))
