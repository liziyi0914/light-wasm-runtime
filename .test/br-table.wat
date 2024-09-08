(module
  (func (export "work") (param i32) (result i64)
    block
      block
        block
          local.get 0
          br_table 1 2 0
          i64.const 10
          return
        end
        i64.const 9
        return
      end
      i64.const 8
      return
    end
    i64.const 7
    return
  )
)