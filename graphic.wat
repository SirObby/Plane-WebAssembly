(module
  (func $i (import "imports" "print") (param i32))
  (func $draw (param i32 i32) (result i32) 
    
    local.get 0
    call $i

    local.get 1
    call $i
    
    i32.const 0
    return
  )
  (func (export "create") (result i32)
    i32.const 4
    i32.const 8
    call $draw
    
    i32.const 0
    return)
    )
