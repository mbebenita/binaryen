(module
  (memory 0 4294967295)
  (export "i32_wrap_i64" $i32_wrap_i64)
  (export "i64_extend_s_i32" $i64_extend_s_i32)
  (export "i64_extend_u_i32" $i64_extend_u_i32)
  (export "i32_trunc_s_f32" $i32_trunc_s_f32)
  (export "i32_trunc_u_f32" $i32_trunc_u_f32)
  (export "i32_trunc_s_f64" $i32_trunc_s_f64)
  (export "i32_trunc_u_f64" $i32_trunc_u_f64)
  (export "i64_trunc_s_f32" $i64_trunc_s_f32)
  (export "i64_trunc_u_f32" $i64_trunc_u_f32)
  (export "i64_trunc_s_f64" $i64_trunc_s_f64)
  (export "i64_trunc_u_f64" $i64_trunc_u_f64)
  (export "f32_convert_s_i32" $f32_convert_s_i32)
  (export "f32_convert_u_i32" $f32_convert_u_i32)
  (export "f64_convert_s_i32" $f64_convert_s_i32)
  (export "f64_convert_u_i32" $f64_convert_u_i32)
  (export "f32_convert_s_i64" $f32_convert_s_i64)
  (export "f32_convert_u_i64" $f32_convert_u_i64)
  (export "f64_convert_s_i64" $f64_convert_s_i64)
  (export "f64_convert_u_i64" $f64_convert_u_i64)
  (export "f64_promote_f32" $f64_promote_f32)
  (export "f32_demote_f64" $f32_demote_f64)
  (export "anyext" $anyext)
  (export "bitcast_i32_to_float" $bitcast_i32_to_float)
  (export "bitcast_float_to_i32" $bitcast_float_to_i32)
  (export "bitcast_i64_to_double" $bitcast_i64_to_double)
  (export "bitcast_double_to_i64" $bitcast_double_to_i64)
  (func $i32_wrap_i64 (param $$0 i64) (result i32)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (i32.wrap/i64
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $i64_extend_s_i32 (param $$0 i32) (result i64)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (i64.extend_s/i32
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $i64_extend_u_i32 (param $$0 i32) (result i64)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (i64.extend_u/i32
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $i32_trunc_s_f32 (param $$0 f32) (result i32)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (i32.trunc_s/f32
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $i32_trunc_u_f32 (param $$0 f32) (result i32)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (i32.trunc_u/f32
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $i32_trunc_s_f64 (param $$0 f64) (result i32)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (i32.trunc_s/f64
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $i32_trunc_u_f64 (param $$0 f64) (result i32)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (i32.trunc_u/f64
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $i64_trunc_s_f32 (param $$0 f32) (result i64)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (i64.trunc_s/f32
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $i64_trunc_u_f32 (param $$0 f32) (result i64)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (i64.trunc_u/f32
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $i64_trunc_s_f64 (param $$0 f64) (result i64)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (i64.trunc_s/f64
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $i64_trunc_u_f64 (param $$0 f64) (result i64)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (i64.trunc_u/f64
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $f32_convert_s_i32 (param $$0 i32) (result f32)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (f32.convert_s/i32
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $f32_convert_u_i32 (param $$0 i32) (result f32)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (f32.convert_u/i32
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $f64_convert_s_i32 (param $$0 i32) (result f64)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (f64.convert_s/i32
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $f64_convert_u_i32 (param $$0 i32) (result f64)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (f64.convert_u/i32
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $f32_convert_s_i64 (param $$0 i64) (result f32)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (f32.convert_s/i64
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $f32_convert_u_i64 (param $$0 i64) (result f32)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (f32.convert_u/i64
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $f64_convert_s_i64 (param $$0 i64) (result f64)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (f64.convert_s/i64
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $f64_convert_u_i64 (param $$0 i64) (result f64)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (f64.convert_u/i64
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $f64_promote_f32 (param $$0 f32) (result f64)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (f64.promote/f32
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $f32_demote_f64 (param $$0 f64) (result f32)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (f32.demote/f64
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $anyext (param $$0 i32) (result i64)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (i64.shl
            (i64.extend_u/i32
              (get_local $$0)
            )
            (i64.const 32)
          )
        )
      )
    )
  )
  (func $bitcast_i32_to_float (param $$0 i32) (result f32)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (f32.reinterpret/i32
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $bitcast_float_to_i32 (param $$0 f32) (result i32)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (i32.reinterpret/f32
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $bitcast_i64_to_double (param $$0 i64) (result f64)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (f64.reinterpret/i64
            (get_local $$0)
          )
        )
      )
    )
  )
  (func $bitcast_double_to_i64 (param $$0 f64) (result i64)
    (block $fake_return_waka123
      (block
        (br $fake_return_waka123
          (i64.reinterpret/f64
            (get_local $$0)
          )
        )
      )
    )
  )
)
;; METADATA: { "asmConsts": {},"staticBump": 0 }
