(module
  (memory 16 4294967295)
  (export "single_block" $single_block)
  (export "foo" $foo)
  (export "bar" $bar)
  (func $single_block (param $$0 i32) (result i32)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (i32.store align=4
            (get_local $$0)
            (i32.const 0)
          )
        )
      )
    )
  )
  (func $foo
    (local $$0 i32)
    (local $$1 i32)
    (block $fake_return_waka123
      (block
        (set_local $$0
          (i32.const 0)
        )
        (set_local $$1
          (get_local $$0)
        )
        (loop $label$1 $label$0
          (block
            (set_local $$1
              (i32.add
                (get_local $$1)
                (i32.const 1)
              )
            )
            (i32.store offset=4 align=4
              (get_local $$0)
              (get_local $$0)
            )
            (br_if
              (i32.ne
                (get_local $$1)
                (i32.const 256)
              )
              $label$0
            )
          )
        )
        (br $fake_return_waka123)
      )
    )
  )
  (func $bar
    (local $$0 i32)
    (local $$1 f32)
    (block $fake_return_waka123
      (block
        (set_local $$1
          (f32.const 0)
        )
        (set_local $$0
          (i32.const 0)
        )
        (loop $label$1 $label$0
          (block
            (i32.store offset=4 align=4
              (get_local $$0)
              (get_local $$0)
            )
            (set_local $$1
              (f32.add
                (get_local $$1)
                (f32.const 1)
              )
            )
            (br_if
              (f32.ne
                (get_local $$1)
                (f32.const 256)
              )
              $label$0
            )
          )
        )
        (br $fake_return_waka123)
      )
    )
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 15 }
