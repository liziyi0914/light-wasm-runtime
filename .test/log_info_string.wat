(module $demo_wasm-121eba6f707d9ac0.wasm
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32)))
  (type (;4;) (func (param i32 i32 i32)))
  (type (;5;) (func))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func (param i32 i32 i32 i32)))
  (import "env" "memory" (memory (;0;) 17))
  (import "mc_helmet" "log_info" (func $_ZN9demo_wasm9mc_helmet3sys8log_info17h090be927d213f8ceE (type 2)))
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h609bb2d197bb13a4E (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter3pad17h065d8d6337e2addeE)
  (func $_ZN4core3fmt9Formatter3pad17h065d8d6337e2addeE (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load
            local.tee 4
            br_if 0 (;@4;)
            local.get 3
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
          end
          block  ;; label = @4
            local.get 3
            i32.const 1
            i32.and
            i32.eqz
            br_if 0 (;@4;)
            local.get 1
            local.get 2
            i32.add
            local.set 5
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load offset=12
                local.tee 6
                br_if 0 (;@6;)
                i32.const 0
                local.set 7
                local.get 1
                local.set 8
                br 1 (;@5;)
              end
              i32.const 0
              local.set 7
              i32.const 0
              local.set 9
              local.get 1
              local.set 8
              loop  ;; label = @6
                local.get 8
                local.tee 3
                local.get 5
                i32.eq
                br_if 2 (;@4;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.load8_s
                    local.tee 8
                    i32.const -1
                    i32.le_s
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 1
                    i32.add
                    local.set 8
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 8
                    i32.const -32
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 2
                    i32.add
                    local.set 8
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 8
                    i32.const -16
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 3
                    i32.add
                    local.set 8
                    br 1 (;@7;)
                  end
                  local.get 3
                  i32.const 4
                  i32.add
                  local.set 8
                end
                local.get 8
                local.get 3
                i32.sub
                local.get 7
                i32.add
                local.set 7
                local.get 6
                local.get 9
                i32.const 1
                i32.add
                local.tee 9
                i32.ne
                br_if 0 (;@6;)
              end
            end
            local.get 8
            local.get 5
            i32.eq
            br_if 0 (;@4;)
            block  ;; label = @5
              local.get 8
              i32.load8_s
              local.tee 3
              i32.const -1
              i32.gt_s
              br_if 0 (;@5;)
              local.get 3
              i32.const -32
              i32.lt_u
              drop
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                i32.eqz
                br_if 0 (;@6;)
                block  ;; label = @7
                  local.get 7
                  local.get 2
                  i32.ge_u
                  br_if 0 (;@7;)
                  local.get 1
                  local.get 7
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 3
                  br 2 (;@5;)
                end
                local.get 7
                local.get 2
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                br 1 (;@5;)
              end
              local.get 1
              local.set 3
            end
            local.get 7
            local.get 2
            local.get 3
            select
            local.set 2
            local.get 3
            local.get 1
            local.get 3
            select
            local.set 1
          end
          block  ;; label = @4
            local.get 4
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=20
            local.get 1
            local.get 2
            local.get 0
            i32.load offset=24
            i32.load offset=12
            call_indirect (type 0)
            return
          end
          local.get 0
          i32.load offset=4
          local.set 10
          block  ;; label = @4
            local.get 2
            i32.const 16
            i32.lt_u
            br_if 0 (;@4;)
            local.get 2
            local.get 1
            local.get 1
            i32.const 3
            i32.add
            i32.const -4
            i32.and
            local.tee 7
            i32.sub
            local.tee 9
            i32.add
            local.tee 11
            i32.const 3
            i32.and
            local.set 4
            i32.const 0
            local.set 6
            i32.const 0
            local.set 3
            block  ;; label = @5
              local.get 1
              local.get 7
              i32.eq
              br_if 0 (;@5;)
              i32.const 0
              local.set 3
              block  ;; label = @6
                local.get 9
                i32.const -4
                i32.gt_u
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                i32.const 0
                local.set 5
                loop  ;; label = @7
                  local.get 3
                  local.get 1
                  local.get 5
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
                  local.set 3
                  local.get 5
                  i32.const 4
                  i32.add
                  local.tee 5
                  br_if 0 (;@7;)
                end
              end
              local.get 1
              local.set 8
              loop  ;; label = @6
                local.get 3
                local.get 8
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.set 3
                local.get 8
                i32.const 1
                i32.add
                local.set 8
                local.get 9
                i32.const 1
                i32.add
                local.tee 9
                br_if 0 (;@6;)
              end
            end
            block  ;; label = @5
              local.get 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              local.get 11
              i32.const -4
              i32.and
              i32.add
              local.tee 8
              i32.load8_s
              i32.const -65
              i32.gt_s
              local.set 6
              local.get 4
              i32.const 1
              i32.eq
              br_if 0 (;@5;)
              local.get 6
              local.get 8
              i32.load8_s offset=1
              i32.const -65
              i32.gt_s
              i32.add
              local.set 6
              local.get 4
              i32.const 2
              i32.eq
              br_if 0 (;@5;)
              local.get 6
              local.get 8
              i32.load8_s offset=2
              i32.const -65
              i32.gt_s
              i32.add
              local.set 6
            end
            local.get 11
            i32.const 2
            i32.shr_u
            local.set 5
            local.get 6
            local.get 3
            i32.add
            local.set 6
            loop  ;; label = @5
              local.get 7
              local.set 4
              local.get 5
              i32.eqz
              br_if 4 (;@1;)
              local.get 5
              i32.const 192
              local.get 5
              i32.const 192
              i32.lt_u
              select
              local.tee 11
              i32.const 3
              i32.and
              local.set 12
              local.get 11
              i32.const 2
              i32.shl
              local.set 13
              i32.const 0
              local.set 8
              block  ;; label = @6
                local.get 5
                i32.const 4
                i32.lt_u
                br_if 0 (;@6;)
                local.get 4
                local.get 13
                i32.const 1008
                i32.and
                i32.add
                local.set 9
                i32.const 0
                local.set 8
                local.get 4
                local.set 3
                loop  ;; label = @7
                  local.get 3
                  i32.load offset=12
                  local.tee 7
                  i32.const -1
                  i32.xor
                  i32.const 7
                  i32.shr_u
                  local.get 7
                  i32.const 6
                  i32.shr_u
                  i32.or
                  i32.const 16843009
                  i32.and
                  local.get 3
                  i32.load offset=8
                  local.tee 7
                  i32.const -1
                  i32.xor
                  i32.const 7
                  i32.shr_u
                  local.get 7
                  i32.const 6
                  i32.shr_u
                  i32.or
                  i32.const 16843009
                  i32.and
                  local.get 3
                  i32.load offset=4
                  local.tee 7
                  i32.const -1
                  i32.xor
                  i32.const 7
                  i32.shr_u
                  local.get 7
                  i32.const 6
                  i32.shr_u
                  i32.or
                  i32.const 16843009
                  i32.and
                  local.get 3
                  i32.load
                  local.tee 7
                  i32.const -1
                  i32.xor
                  i32.const 7
                  i32.shr_u
                  local.get 7
                  i32.const 6
                  i32.shr_u
                  i32.or
                  i32.const 16843009
                  i32.and
                  local.get 8
                  i32.add
                  i32.add
                  i32.add
                  i32.add
                  local.set 8
                  local.get 3
                  i32.const 16
                  i32.add
                  local.tee 3
                  local.get 9
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 5
              local.get 11
              i32.sub
              local.set 5
              local.get 4
              local.get 13
              i32.add
              local.set 7
              local.get 8
              i32.const 8
              i32.shr_u
              i32.const 16711935
              i32.and
              local.get 8
              i32.const 16711935
              i32.and
              i32.add
              i32.const 65537
              i32.mul
              i32.const 16
              i32.shr_u
              local.get 6
              i32.add
              local.set 6
              local.get 12
              i32.eqz
              br_if 0 (;@5;)
            end
            local.get 4
            local.get 11
            i32.const 252
            i32.and
            i32.const 2
            i32.shl
            i32.add
            local.tee 8
            i32.load
            local.tee 3
            i32.const -1
            i32.xor
            i32.const 7
            i32.shr_u
            local.get 3
            i32.const 6
            i32.shr_u
            i32.or
            i32.const 16843009
            i32.and
            local.set 3
            local.get 12
            i32.const 1
            i32.eq
            br_if 2 (;@2;)
            local.get 8
            i32.load offset=4
            local.tee 7
            i32.const -1
            i32.xor
            i32.const 7
            i32.shr_u
            local.get 7
            i32.const 6
            i32.shr_u
            i32.or
            i32.const 16843009
            i32.and
            local.get 3
            i32.add
            local.set 3
            local.get 12
            i32.const 2
            i32.eq
            br_if 2 (;@2;)
            local.get 8
            i32.load offset=8
            local.tee 8
            i32.const -1
            i32.xor
            i32.const 7
            i32.shr_u
            local.get 8
            i32.const 6
            i32.shr_u
            i32.or
            i32.const 16843009
            i32.and
            local.get 3
            i32.add
            local.set 3
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 2
            br_if 0 (;@4;)
            i32.const 0
            local.set 6
            br 3 (;@1;)
          end
          local.get 2
          i32.const 3
          i32.and
          local.set 8
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.const 4
              i32.ge_u
              br_if 0 (;@5;)
              i32.const 0
              local.set 6
              i32.const 0
              local.set 9
              br 1 (;@4;)
            end
            i32.const 0
            local.set 6
            local.get 1
            local.set 3
            local.get 2
            i32.const 12
            i32.and
            local.tee 9
            local.set 7
            loop  ;; label = @5
              local.get 6
              local.get 3
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.const 1
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.const 2
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 3
              i32.const 3
              i32.add
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 6
              local.get 3
              i32.const 4
              i32.add
              local.set 3
              local.get 7
              i32.const -4
              i32.add
              local.tee 7
              br_if 0 (;@5;)
            end
          end
          local.get 8
          i32.eqz
          br_if 2 (;@1;)
          local.get 1
          local.get 9
          i32.add
          local.set 3
          loop  ;; label = @4
            local.get 6
            local.get 3
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 6
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 8
            i32.const -1
            i32.add
            local.tee 8
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        local.get 0
        i32.load offset=20
        local.get 1
        local.get 2
        local.get 0
        i32.load offset=24
        i32.load offset=12
        call_indirect (type 0)
        return
      end
      local.get 3
      i32.const 8
      i32.shr_u
      i32.const 459007
      i32.and
      local.get 3
      i32.const 16711935
      i32.and
      i32.add
      i32.const 65537
      i32.mul
      i32.const 16
      i32.shr_u
      local.get 6
      i32.add
      local.set 6
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 10
        local.get 6
        i32.le_u
        br_if 0 (;@2;)
        local.get 10
        local.get 6
        i32.sub
        local.set 5
        i32.const 0
        local.set 3
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.load8_u offset=32
              br_table 2 (;@3;) 0 (;@5;) 1 (;@4;) 2 (;@3;) 2 (;@3;)
            end
            local.get 5
            local.set 3
            i32.const 0
            local.set 5
            br 1 (;@3;)
          end
          local.get 5
          i32.const 1
          i32.shr_u
          local.set 3
          local.get 5
          i32.const 1
          i32.add
          i32.const 1
          i32.shr_u
          local.set 5
        end
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 0
        i32.load offset=16
        local.set 9
        local.get 0
        i32.load offset=24
        local.set 8
        local.get 0
        i32.load offset=20
        local.set 7
        loop  ;; label = @3
          local.get 3
          i32.const -1
          i32.add
          local.tee 3
          i32.eqz
          br_if 2 (;@1;)
          local.get 7
          local.get 9
          local.get 8
          i32.load offset=16
          call_indirect (type 1)
          i32.eqz
          br_if 0 (;@3;)
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
      call_indirect (type 0)
      return
    end
    block  ;; label = @1
      local.get 7
      local.get 1
      local.get 2
      local.get 8
      i32.load offset=12
      call_indirect (type 0)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    i32.const 0
    local.set 3
    loop  ;; label = @1
      block  ;; label = @2
        local.get 5
        local.get 3
        i32.ne
        br_if 0 (;@2;)
        local.get 5
        local.get 5
        i32.lt_u
        return
      end
      local.get 3
      i32.const 1
      i32.add
      local.set 3
      local.get 7
      local.get 9
      local.get 8
      i32.load offset=16
      call_indirect (type 1)
      i32.eqz
      br_if 0 (;@1;)
    end
    local.get 3
    i32.const -1
    i32.add
    local.get 5
    i32.lt_u)
  (func $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h753b8bcce0d7fcd7E (type 3) (param i32)
    block  ;; label = @1
      local.get 0
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h7e43a4e4aeb24063E
    end)
  (func $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h7e43a4e4aeb24063E (type 3) (param i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.const 0
    i32.store
    local.get 0
    i32.const -8
    i32.add
    local.tee 1
    local.get 1
    i32.load
    local.tee 2
    i32.const -2
    i32.and
    i32.store
    i32.const 0
    i32.load offset=1048728
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const -4
          i32.add
          i32.load
          i32.const -4
          i32.and
          local.tee 4
          i32.eqz
          br_if 0 (;@3;)
          local.get 4
          i32.load8_u
          i32.const 1
          i32.and
          br_if 0 (;@3;)
          local.get 1
          call $_ZN9wee_alloc9neighbors18Neighbors$LT$T$GT$6remove17h8bf1c7efdb01e3ceE
          local.get 1
          i32.load8_u
          i32.const 2
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 4
          local.get 4
          i32.load
          i32.const 2
          i32.or
          i32.store
          br 1 (;@2;)
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 2
            i32.and
            br_if 0 (;@4;)
            local.get 2
            i32.const -4
            i32.and
            local.tee 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.load8_u
            i32.const 1
            i32.and
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 3
          i32.store
          br 2 (;@1;)
        end
        local.get 0
        local.get 2
        i32.load offset=8
        i32.const -4
        i32.and
        i32.store
        local.get 2
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=8
      end
      local.get 3
      local.set 1
    end
    i32.const 0
    local.get 1
    i32.store offset=1048728)
  (func $get_skin (type 4) (param i32 i32 i32)
    local.get 0
    i32.const 0
    i32.store)
  (func $main (type 5)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 0
    i32.load8_u offset=1048732
    drop
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          i32.const 1
          call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h728e6f383fd4a86dE
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 1
          i32.const 49
          i32.store8
          local.get 0
          i32.const 1
          i32.store offset=64
          local.get 0
          i32.const 1
          i32.store offset=20
          local.get 0
          i32.const 1048584
          i32.store offset=16
          local.get 0
          i32.const 1
          i32.store offset=52
          local.get 0
          local.get 1
          i32.store offset=48
          local.get 0
          i32.const 1
          i32.store offset=44
          local.get 0
          i64.const 1
          i64.store offset=28 align=4
          local.get 0
          local.get 1
          i64.extend_i32_u
          i64.const 32
          i64.shl
          i64.const 1
          i64.or
          i64.store offset=56
          i32.const 0
          i32.load8_u offset=1048732
          drop
          local.get 0
          local.get 0
          i32.const 40
          i32.add
          i32.store offset=24
          local.get 0
          local.get 0
          i32.const 48
          i32.add
          i32.store offset=40
          i32.const 12
          call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h728e6f383fd4a86dE
          local.tee 1
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          i32.const 0
          i32.store offset=76
          local.get 0
          local.get 1
          i32.store offset=72
          local.get 0
          i32.const 12
          i32.store offset=68
          local.get 0
          i32.const 68
          i32.add
          i32.const 1048600
          local.get 0
          i32.const 16
          i32.add
          call $_ZN4core3fmt5write17hde75546e59aaedecE
          br_if 2 (;@1;)
          local.get 0
          i32.const 8
          i32.add
          local.tee 1
          local.get 0
          i32.const 68
          i32.add
          i32.const 8
          i32.add
          i32.load
          i32.store
          local.get 0
          local.get 0
          i64.load offset=68 align=4
          i64.store
          local.get 0
          i32.const 56
          i32.add
          call $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h753b8bcce0d7fcd7E
          local.get 0
          i32.load offset=4
          local.get 1
          i32.load
          call $_ZN9demo_wasm9mc_helmet3sys8log_info17h090be927d213f8ceE
          local.get 0
          call $_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h753b8bcce0d7fcd7E
          local.get 0
          i32.const 80
          i32.add
          global.set $__stack_pointer
          return
        end
        i32.const 1
        call $_ZN5alloc5alloc18handle_alloc_error17hcafd7601e2fba075E
        unreachable
      end
      i32.const 12
      call $_ZN5alloc5alloc18handle_alloc_error17hcafd7601e2fba075E
      unreachable
    end
    i32.const 1048640
    i32.const 86
    local.get 0
    i32.const 1048624
    call $_ZN4core6result13unwrap_failed17h4e80c6aa8322d0bbE
    unreachable)
  (func $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h728e6f383fd4a86dE (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.load offset=1048728
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.add
        i32.const 2
        i32.shr_u
        local.tee 2
        local.get 1
        i32.const 12
        i32.add
        call $_ZN9wee_alloc15alloc_first_fit17he7fe2b884251d6afE
        local.tee 0
        i32.eqz
        br_if 0 (;@2;)
        i32.const 0
        local.get 1
        i32.load offset=12
        i32.store offset=1048728
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      i32.const 1
      call $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17h2b705041649c10a2E
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          local.get 1
          i32.load offset=12
          i32.store offset=1048728
          br 1 (;@2;)
        end
        local.get 1
        i32.load offset=4
        local.tee 0
        local.get 1
        i32.load offset=12
        i32.store offset=8
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 2
        local.get 1
        i32.const 12
        i32.add
        call $_ZN9wee_alloc15alloc_first_fit17he7fe2b884251d6afE
        local.set 0
        i32.const 0
        local.get 1
        i32.load offset=12
        i32.store offset=1048728
        local.get 0
        br_if 1 (;@1;)
      end
      i32.const 0
      local.set 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core3fmt5write17hde75546e59aaedecE (type 0) (param i32 i32 i32) (result i32)
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
                  call_indirect (type 0)
                  br_if 4 (;@3;)
                end
                local.get 1
                i32.load
                local.get 3
                i32.const 12
                i32.add
                local.get 1
                i32.load offset=4
                call_indirect (type 1)
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
                call_indirect (type 0)
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
              call_indirect (type 1)
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
          call_indirect (type 0)
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
  (func $_ZN5alloc5alloc18handle_alloc_error17hcafd7601e2fba075E (type 3) (param i32)
    local.get 0
    call $__rust_alloc_error_handler
    unreachable)
  (func $_ZN4core6result13unwrap_failed17h4e80c6aa8322d0bbE (type 7) (param i32 i32 i32 i32)
    call $_ZN4core9panicking18panic_nounwind_fmt17h132a98b4376de587E
    unreachable)
  (func $__rust_alloc_error_handler (type 3) (param i32)
    local.get 0
    call $__rdl_oom
    unreachable)
  (func $__rdl_oom (type 3) (param i32)
    call $_ZN4core9panicking18panic_nounwind_fmt17h132a98b4376de587E
    unreachable)
  (func $_ZN5alloc7raw_vec12handle_error17hc1043650360c276bE (type 2) (param i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      call $_ZN5alloc7raw_vec17capacity_overflow17h99e5b22417960701E
      unreachable
    end
    local.get 1
    call $_ZN5alloc5alloc18handle_alloc_error17hcafd7601e2fba075E
    unreachable)
  (func $_ZN5alloc7raw_vec17capacity_overflow17h99e5b22417960701E (type 5)
    call $_ZN4core9panicking18panic_nounwind_fmt17h132a98b4376de587E
    unreachable)
  (func $_ZN4core9panicking18panic_nounwind_fmt17h132a98b4376de587E (type 5)
    loop  ;; label = @1
      br 0 (;@1;)
    end)
  (func $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h472870d85f8e9c82E (type 4) (param i32 i32 i32)
    (local i32 i32)
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
      call $_ZN5alloc7raw_vec12handle_error17hc1043650360c276bE
      unreachable
    end
    block  ;; label = @1
      local.get 0
      i32.load
      local.tee 4
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
      i32.const 0
      i32.ge_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call $_ZN5alloc7raw_vec12handle_error17hc1043650360c276bE
      unreachable
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      local.get 4
      i32.store offset=28
      local.get 3
      local.get 0
      i32.load offset=4
      i32.store offset=20
      i32.const 1
      local.set 2
    end
    local.get 3
    local.get 2
    i32.store offset=24
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    local.get 3
    i32.const 20
    i32.add
    call $_ZN5alloc7raw_vec11finish_grow17hab3841ca253ec03fE
    block  ;; label = @1
      local.get 3
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=16
      call $_ZN5alloc7raw_vec12handle_error17hc1043650360c276bE
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
  (func $_ZN5alloc7raw_vec11finish_grow17hab3841ca253ec03fE (type 4) (param i32 i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=8
          local.tee 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          i32.load
          local.set 4
          local.get 1
          call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h728e6f383fd4a86dE
          local.tee 2
          i32.eqz
          br_if 1 (;@2;)
          local.get 2
          local.get 4
          local.get 3
          call $memcpy
          drop
          local.get 4
          call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h7e43a4e4aeb24063E
          i32.const 0
          local.set 4
          br 2 (;@1;)
        end
        i32.const 0
        local.set 4
        i32.const 0
        i32.load8_u offset=1048732
        drop
        local.get 1
        call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17h728e6f383fd4a86dE
        local.tee 2
        br_if 1 (;@1;)
      end
      i32.const 1
      local.set 2
      i32.const 1
      local.set 4
    end
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 4
    i32.store)
  (func $_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h4248082beff88636E (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load offset=20
    i32.const 1048592
    i32.const 5
    local.get 1
    i32.load offset=24
    i32.load offset=12
    call_indirect (type 0))
  (func $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c68a928bb440626E (type 3) (param i32)
    block  ;; label = @1
      local.get 0
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      call $_ZN72_$LT$wee_alloc..WeeAlloc$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h7e43a4e4aeb24063E
    end)
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17hdfc3a02ec59866d2E (type 0) (param i32 i32 i32) (result i32)
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
      call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h472870d85f8e9c82E
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
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17hafb21948f82132deE (type 1) (param i32 i32) (result i32)
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
            i32.const 18
            i32.shr_u
            i32.const 240
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
            call $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hcf689458c76674a1E
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
        call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h472870d85f8e9c82E
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
  (func $_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hcf689458c76674a1E (type 3) (param i32)
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
      i32.const -1
      i32.ne
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call $_ZN5alloc7raw_vec12handle_error17hc1043650360c276bE
      unreachable
    end
    block  ;; label = @1
      local.get 2
      i32.const 1
      i32.shl
      local.tee 3
      local.get 2
      i32.const 1
      i32.add
      local.tee 4
      local.get 3
      local.get 4
      i32.gt_u
      select
      local.tee 3
      i32.const 8
      local.get 3
      i32.const 8
      i32.gt_u
      select
      local.tee 3
      i32.const 0
      i32.ge_s
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      call $_ZN5alloc7raw_vec12handle_error17hc1043650360c276bE
      unreachable
    end
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
    local.get 3
    local.get 1
    i32.const 20
    i32.add
    call $_ZN5alloc7raw_vec11finish_grow17hab3841ca253ec03fE
    block  ;; label = @1
      local.get 1
      i32.load offset=8
      i32.const 1
      i32.ne
      br_if 0 (;@1;)
      local.get 1
      i32.load offset=12
      local.get 1
      i32.load offset=16
      call $_ZN5alloc7raw_vec12handle_error17hc1043650360c276bE
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
  (func $_ZN4core3fmt5Write9write_fmt17h98247f68ba3c9917E (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.const 1048600
    local.get 1
    call $_ZN4core3fmt5write17hde75546e59aaedecE)
  (func $_ZN70_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$GT$22new_cell_for_free_list17h2b705041649c10a2E (type 4) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 2
        i32.shl
        local.tee 1
        local.get 2
        i32.const 3
        i32.shl
        i32.const 512
        i32.add
        local.tee 2
        local.get 1
        local.get 2
        i32.gt_u
        select
        i32.const 65543
        i32.add
        local.tee 2
        i32.const 16
        i32.shr_u
        memory.grow
        local.tee 1
        i32.const -1
        i32.ne
        br_if 0 (;@2;)
        i32.const 1
        local.set 2
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      local.get 1
      i32.const 16
      i32.shl
      local.tee 1
      i64.const 0
      i64.store offset=4 align=4
      local.get 1
      local.get 1
      local.get 2
      i32.const -65536
      i32.and
      i32.add
      i32.const 2
      i32.or
      i32.store
      i32.const 0
      local.set 2
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store)
  (func $_ZN9wee_alloc15alloc_first_fit17he7fe2b884251d6afE (type 1) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const 2
    i32.shl
    local.set 2
    local.get 1
    i32.load
    local.set 0
    i32.const 0
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 0
                      i32.load offset=8
                      local.tee 4
                      i32.const 1
                      i32.and
                      br_if 0 (;@9;)
                      local.get 0
                      i32.load
                      i32.const -4
                      i32.and
                      local.tee 5
                      local.get 0
                      i32.const 8
                      i32.add
                      local.tee 6
                      i32.sub
                      local.get 2
                      i32.lt_u
                      br_if 3 (;@6;)
                      local.get 6
                      i32.const 72
                      i32.add
                      local.get 5
                      local.get 2
                      i32.sub
                      local.tee 2
                      i32.gt_u
                      br_if 1 (;@8;)
                      i32.const 0
                      local.set 1
                      local.get 2
                      i32.const 0
                      i32.store
                      local.get 2
                      i32.const -8
                      i32.add
                      local.tee 4
                      i64.const 0
                      i64.store align=4
                      local.get 4
                      local.get 0
                      i32.load
                      i32.const -4
                      i32.and
                      i32.store
                      block  ;; label = @10
                        local.get 0
                        i32.load
                        local.tee 2
                        i32.const 2
                        i32.and
                        br_if 0 (;@10;)
                        local.get 2
                        i32.const -4
                        i32.and
                        local.tee 2
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 2
                        local.get 2
                        i32.load offset=4
                        i32.const 3
                        i32.and
                        local.get 4
                        i32.or
                        i32.store offset=4
                        local.get 4
                        i32.load offset=4
                        i32.const 3
                        i32.and
                        local.set 1
                      end
                      local.get 4
                      local.get 1
                      local.get 0
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 0
                      i32.load offset=8
                      i32.const -2
                      i32.and
                      i32.store offset=8
                      local.get 0
                      local.get 0
                      i32.load
                      local.tee 1
                      i32.const 3
                      i32.and
                      local.get 4
                      i32.or
                      local.tee 2
                      i32.store
                      block  ;; label = @10
                        local.get 1
                        i32.const 2
                        i32.and
                        br_if 0 (;@10;)
                        local.get 4
                        i32.load
                        local.set 1
                        br 3 (;@7;)
                      end
                      local.get 0
                      local.get 2
                      i32.const -3
                      i32.and
                      i32.store
                      local.get 4
                      i32.load
                      i32.const 2
                      i32.or
                      local.set 1
                      br 2 (;@7;)
                    end
                    local.get 0
                    local.get 4
                    i32.const -2
                    i32.and
                    i32.store offset=8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        i32.load offset=4
                        i32.const -4
                        i32.and
                        local.tee 4
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 4
                        br 1 (;@9;)
                      end
                      i32.const 0
                      local.get 4
                      local.get 4
                      i32.load8_u
                      i32.const 1
                      i32.and
                      select
                      local.set 4
                    end
                    local.get 0
                    call $_ZN9wee_alloc9neighbors18Neighbors$LT$T$GT$6remove17h8bf1c7efdb01e3ceE
                    local.get 0
                    i32.load8_u
                    i32.const 2
                    i32.and
                    br_if 3 (;@5;)
                    br 4 (;@4;)
                  end
                  local.get 1
                  local.get 4
                  i32.const -4
                  i32.and
                  i32.store
                  local.get 0
                  i32.load
                  local.set 1
                  local.get 0
                  local.set 4
                end
                local.get 4
                local.get 1
                i32.const 1
                i32.or
                i32.store
                local.get 4
                i32.const 8
                i32.add
                local.set 3
                br 5 (;@1;)
              end
              local.get 1
              local.get 4
              i32.store
              local.get 4
              local.set 0
              br 3 (;@2;)
            end
            local.get 4
            local.get 4
            i32.load
            i32.const 2
            i32.or
            i32.store
          end
          local.get 1
          local.get 4
          i32.store
          local.get 4
          local.set 0
          br 0 (;@3;)
        end
      end
    end
    local.get 3)
  (func $_ZN9wee_alloc9neighbors18Neighbors$LT$T$GT$6remove17h8bf1c7efdb01e3ceE (type 3) (param i32)
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
  (func $memcpy (type 0) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 16
        i32.ge_u
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.set 5
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        local.set 3
        local.get 1
        local.set 6
        loop  ;; label = @3
          local.get 3
          local.get 6
          i32.load8_u
          i32.store8
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 5
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 2
      local.get 4
      i32.sub
      local.tee 7
      i32.const -4
      i32.and
      local.tee 8
      i32.add
      local.set 3
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 4
          i32.add
          local.tee 9
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          local.get 8
          i32.const 1
          i32.lt_s
          br_if 1 (;@2;)
          local.get 9
          i32.const 3
          i32.shl
          local.tee 6
          i32.const 24
          i32.and
          local.set 2
          local.get 9
          i32.const -4
          i32.and
          local.tee 10
          i32.const 4
          i32.add
          local.set 1
          i32.const 0
          local.get 6
          i32.sub
          i32.const 24
          i32.and
          local.set 4
          local.get 10
          i32.load
          local.set 6
          loop  ;; label = @4
            local.get 5
            local.get 6
            local.get 2
            i32.shr_u
            local.get 1
            i32.load
            local.tee 6
            local.get 4
            i32.shl
            i32.or
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        local.get 8
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 9
        local.set 1
        loop  ;; label = @3
          local.get 5
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 7
      i32.const 3
      i32.and
      local.set 2
      local.get 9
      local.get 8
      i32.add
      local.set 1
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.add
      local.set 5
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 5
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (table (;0;) 7 7 funcref)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1048733))
  (global (;2;) i32 (i32.const 1048736))
  (export "get_skin" (func $get_skin))
  (export "main" (func $main))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h609bb2d197bb13a4E $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h5c68a928bb440626E $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17hdfc3a02ec59866d2E $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17hafb21948f82132deE $_ZN4core3fmt5Write9write_fmt17h98247f68ba3c9917E $_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h4248082beff88636E)
  (data $.rodata (i32.const 1048576) "hello \00\00\00\00\10\00\06\00\00\00Error\00\00\00\02\00\00\00\0c\00\00\00\04\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\06\00\00\00a formatting trait implementation returned an error when the underlying stream did not")
  (data $.bss (i32.const 1048728) "\00\00\00\00\00"))
