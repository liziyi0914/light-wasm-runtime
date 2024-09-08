(module
  (func $fib (export "fib") (param i32) (result i64)
    (local i64 i64)
    i64.const 0
    local.set 1
    block  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 0
              br_table 0 (;@5;) 1 (;@4;) 2 (;@3;)
            end
            i64.const 0
            local.set 2
            br 3 (;@1;)
          end
          i64.const 1
          local.set 2
          br 2 (;@1;)
        end
        local.get 0
        i32.const -1
        i32.add
        call $fib
        local.get 1
        i64.add
        local.set 1
        local.get 0
        i32.const -2
        i32.add
        local.set 0
        br 0 (;@2;)
      end
    end
    local.get 2
    local.get 1
    i64.add)
  )