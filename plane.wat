(module
  (func $i (import "imports" "print") (param i32))
  (func (export "object") (result i32)
    i32.const 2
    return))
