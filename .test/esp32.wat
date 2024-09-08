(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32)))
  (type (;3;) (func (param i64)))
  (import "env" "helmet_set_led" (func (;0;) (type 2)))
  (import "env" "helmet_sleep" (func (;1;) (type 3)))
  (func (;2;) (type 1)
    (local i32)
    i32.const 0
    local.set 0
    loop  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 16
        i32.ne
        br_if 0 (;@2;)
        return
      end
      local.get 0
      call 0
      i64.const 1000
      call 1
      local.get 0
      i32.const 1
      i32.add
      local.set 0
      br 0 (;@1;)
    end)
  (export "main" (func 2)))
