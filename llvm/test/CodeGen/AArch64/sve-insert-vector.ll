; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=aarch64-linux-gnu -mattr=+sve < %s | FileCheck %s --check-prefixes=CHECK

define <vscale x 2 x i64> @insert_v2i64_nxv2i64(<vscale x 2 x i64> %vec, <2 x i64> %subvec) nounwind {
; CHECK-LABEL: insert_v2i64_nxv2i64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    str x29, [sp, #-16]! // 8-byte Folded Spill
; CHECK-NEXT:    addvl sp, sp, #-1
; CHECK-NEXT:    ptrue p0.d
; CHECK-NEXT:    st1d { z0.d }, p0, [sp]
; CHECK-NEXT:    str q1, [sp]
; CHECK-NEXT:    ld1d { z0.d }, p0/z, [sp]
; CHECK-NEXT:    addvl sp, sp, #1
; CHECK-NEXT:    ldr x29, [sp], #16 // 8-byte Folded Reload
; CHECK-NEXT:    ret
  %retval = call <vscale x 2 x i64> @llvm.experimental.vector.insert.nxv2i64.v2i64(<vscale x 2 x i64> %vec, <2 x i64> %subvec, i64 0)
  ret <vscale x 2 x i64> %retval
}

define <vscale x 2 x i64> @insert_v2i64_nxv2i64_idx2(<vscale x 2 x i64> %vec, <2 x i64> %subvec) nounwind {
; CHECK-LABEL: insert_v2i64_nxv2i64_idx2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    str x29, [sp, #-16]! // 8-byte Folded Spill
; CHECK-NEXT:    addvl sp, sp, #-1
; CHECK-NEXT:    cntd x8
; CHECK-NEXT:    mov w9, #2
; CHECK-NEXT:    sub x8, x8, #2
; CHECK-NEXT:    ptrue p0.d
; CHECK-NEXT:    cmp x8, #2
; CHECK-NEXT:    st1d { z0.d }, p0, [sp]
; CHECK-NEXT:    csel x8, x8, x9, lo
; CHECK-NEXT:    mov x9, sp
; CHECK-NEXT:    lsl x8, x8, #3
; CHECK-NEXT:    str q1, [x9, x8]
; CHECK-NEXT:    ld1d { z0.d }, p0/z, [sp]
; CHECK-NEXT:    addvl sp, sp, #1
; CHECK-NEXT:    ldr x29, [sp], #16 // 8-byte Folded Reload
; CHECK-NEXT:    ret
  %retval = call <vscale x 2 x i64> @llvm.experimental.vector.insert.nxv2i64.v2i64(<vscale x 2 x i64> %vec, <2 x i64> %subvec, i64 2)
  ret <vscale x 2 x i64> %retval
}

define <vscale x 4 x i32> @insert_v4i32_nxv4i32(<vscale x 4 x i32> %vec, <4 x i32> %subvec) nounwind {
; CHECK-LABEL: insert_v4i32_nxv4i32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    str x29, [sp, #-16]! // 8-byte Folded Spill
; CHECK-NEXT:    addvl sp, sp, #-1
; CHECK-NEXT:    ptrue p0.s
; CHECK-NEXT:    st1w { z0.s }, p0, [sp]
; CHECK-NEXT:    str q1, [sp]
; CHECK-NEXT:    ld1w { z0.s }, p0/z, [sp]
; CHECK-NEXT:    addvl sp, sp, #1
; CHECK-NEXT:    ldr x29, [sp], #16 // 8-byte Folded Reload
; CHECK-NEXT:    ret
  %retval = call <vscale x 4 x i32> @llvm.experimental.vector.insert.nxv4i32.v4i32(<vscale x 4 x i32> %vec, <4 x i32> %subvec, i64 0)
  ret <vscale x 4 x i32> %retval
}

define <vscale x 4 x i32> @insert_v4i32_nxv4i32_idx4(<vscale x 4 x i32> %vec, <4 x i32> %subvec) nounwind {
; CHECK-LABEL: insert_v4i32_nxv4i32_idx4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    str x29, [sp, #-16]! // 8-byte Folded Spill
; CHECK-NEXT:    addvl sp, sp, #-1
; CHECK-NEXT:    cntw x8
; CHECK-NEXT:    mov w9, #4
; CHECK-NEXT:    sub x8, x8, #4
; CHECK-NEXT:    ptrue p0.s
; CHECK-NEXT:    cmp x8, #4
; CHECK-NEXT:    st1w { z0.s }, p0, [sp]
; CHECK-NEXT:    csel x8, x8, x9, lo
; CHECK-NEXT:    mov x9, sp
; CHECK-NEXT:    lsl x8, x8, #2
; CHECK-NEXT:    str q1, [x9, x8]
; CHECK-NEXT:    ld1w { z0.s }, p0/z, [sp]
; CHECK-NEXT:    addvl sp, sp, #1
; CHECK-NEXT:    ldr x29, [sp], #16 // 8-byte Folded Reload
; CHECK-NEXT:    ret
  %retval = call <vscale x 4 x i32> @llvm.experimental.vector.insert.nxv4i32.v4i32(<vscale x 4 x i32> %vec, <4 x i32> %subvec, i64 4)
  ret <vscale x 4 x i32> %retval
}

define <vscale x 8 x i16> @insert_v8i16_nxv8i16(<vscale x 8 x i16> %vec, <8 x i16> %subvec) nounwind {
; CHECK-LABEL: insert_v8i16_nxv8i16:
; CHECK:       // %bb.0:
; CHECK-NEXT:    str x29, [sp, #-16]! // 8-byte Folded Spill
; CHECK-NEXT:    addvl sp, sp, #-1
; CHECK-NEXT:    ptrue p0.h
; CHECK-NEXT:    st1h { z0.h }, p0, [sp]
; CHECK-NEXT:    str q1, [sp]
; CHECK-NEXT:    ld1h { z0.h }, p0/z, [sp]
; CHECK-NEXT:    addvl sp, sp, #1
; CHECK-NEXT:    ldr x29, [sp], #16 // 8-byte Folded Reload
; CHECK-NEXT:    ret
  %retval = call <vscale x 8 x i16> @llvm.experimental.vector.insert.nxv8i16.v8i16(<vscale x 8 x i16> %vec, <8 x i16> %subvec, i64 0)
  ret <vscale x 8 x i16> %retval
}

define <vscale x 8 x i16> @insert_v8i16_nxv8i16_idx8(<vscale x 8 x i16> %vec, <8 x i16> %subvec) nounwind {
; CHECK-LABEL: insert_v8i16_nxv8i16_idx8:
; CHECK:       // %bb.0:
; CHECK-NEXT:    str x29, [sp, #-16]! // 8-byte Folded Spill
; CHECK-NEXT:    addvl sp, sp, #-1
; CHECK-NEXT:    cnth x8
; CHECK-NEXT:    mov w9, #8
; CHECK-NEXT:    sub x8, x8, #8
; CHECK-NEXT:    ptrue p0.h
; CHECK-NEXT:    cmp x8, #8
; CHECK-NEXT:    st1h { z0.h }, p0, [sp]
; CHECK-NEXT:    csel x8, x8, x9, lo
; CHECK-NEXT:    mov x9, sp
; CHECK-NEXT:    lsl x8, x8, #1
; CHECK-NEXT:    str q1, [x9, x8]
; CHECK-NEXT:    ld1h { z0.h }, p0/z, [sp]
; CHECK-NEXT:    addvl sp, sp, #1
; CHECK-NEXT:    ldr x29, [sp], #16 // 8-byte Folded Reload
; CHECK-NEXT:    ret
  %retval = call <vscale x 8 x i16> @llvm.experimental.vector.insert.nxv8i16.v8i16(<vscale x 8 x i16> %vec, <8 x i16> %subvec, i64 8)
  ret <vscale x 8 x i16> %retval
}

define <vscale x 16 x i8> @insert_v16i8_nxv16i8(<vscale x 16 x i8> %vec, <16 x i8> %subvec) nounwind {
; CHECK-LABEL: insert_v16i8_nxv16i8:
; CHECK:       // %bb.0:
; CHECK-NEXT:    str x29, [sp, #-16]! // 8-byte Folded Spill
; CHECK-NEXT:    addvl sp, sp, #-1
; CHECK-NEXT:    ptrue p0.b
; CHECK-NEXT:    st1b { z0.b }, p0, [sp]
; CHECK-NEXT:    str q1, [sp]
; CHECK-NEXT:    ld1b { z0.b }, p0/z, [sp]
; CHECK-NEXT:    addvl sp, sp, #1
; CHECK-NEXT:    ldr x29, [sp], #16 // 8-byte Folded Reload
; CHECK-NEXT:    ret
  %retval = call <vscale x 16 x i8> @llvm.experimental.vector.insert.nxv16i8.v16i8(<vscale x 16 x i8> %vec, <16 x i8> %subvec, i64 0)
  ret <vscale x 16 x i8> %retval
}

define <vscale x 16 x i8> @insert_v16i8_nxv16i8_idx16(<vscale x 16 x i8> %vec, <16 x i8> %subvec) nounwind {
; CHECK-LABEL: insert_v16i8_nxv16i8_idx16:
; CHECK:       // %bb.0:
; CHECK-NEXT:    str x29, [sp, #-16]! // 8-byte Folded Spill
; CHECK-NEXT:    addvl sp, sp, #-1
; CHECK-NEXT:    mov x8, #-16
; CHECK-NEXT:    mov w9, #16
; CHECK-NEXT:    ptrue p0.b
; CHECK-NEXT:    st1b { z0.b }, p0, [sp]
; CHECK-NEXT:    addvl x8, x8, #1
; CHECK-NEXT:    cmp x8, #16
; CHECK-NEXT:    csel x8, x8, x9, lo
; CHECK-NEXT:    mov x9, sp
; CHECK-NEXT:    str q1, [x9, x8]
; CHECK-NEXT:    ld1b { z0.b }, p0/z, [sp]
; CHECK-NEXT:    addvl sp, sp, #1
; CHECK-NEXT:    ldr x29, [sp], #16 // 8-byte Folded Reload
; CHECK-NEXT:    ret
  %retval = call <vscale x 16 x i8> @llvm.experimental.vector.insert.nxv16i8.v16i8(<vscale x 16 x i8> %vec, <16 x i8> %subvec, i64 16)
  ret <vscale x 16 x i8> %retval
}


; Insert subvectors into illegal vectors

define void @insert_nxv8i64_nxv16i64(<vscale x 8 x i64> %sv0, <vscale x 8 x i64> %sv1, <vscale x 16 x i64>* %out) {
; CHECK-LABEL: insert_nxv8i64_nxv16i64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ptrue p0.d
; CHECK-NEXT:    st1d { z7.d }, p0, [x0, #7, mul vl]
; CHECK-NEXT:    st1d { z6.d }, p0, [x0, #6, mul vl]
; CHECK-NEXT:    st1d { z5.d }, p0, [x0, #5, mul vl]
; CHECK-NEXT:    st1d { z4.d }, p0, [x0, #4, mul vl]
; CHECK-NEXT:    st1d { z3.d }, p0, [x0, #3, mul vl]
; CHECK-NEXT:    st1d { z2.d }, p0, [x0, #2, mul vl]
; CHECK-NEXT:    st1d { z1.d }, p0, [x0, #1, mul vl]
; CHECK-NEXT:    st1d { z0.d }, p0, [x0]
; CHECK-NEXT:    ret
  %v0 = call <vscale x 16 x i64> @llvm.experimental.vector.insert.nxv8i64.nxv16i64(<vscale x 16 x i64> undef, <vscale x 8 x i64> %sv0, i64 0)
  %v = call <vscale x 16 x i64> @llvm.experimental.vector.insert.nxv8i64.nxv16i64(<vscale x 16 x i64> %v0, <vscale x 8 x i64> %sv1, i64 8)
  store <vscale x 16 x i64> %v, <vscale x 16 x i64>* %out
  ret void
}

define void @insert_nxv8i64_nxv16i64_lo(<vscale x 8 x i64> %sv0, <vscale x 16 x i64>* %out) {
; CHECK-LABEL: insert_nxv8i64_nxv16i64_lo:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ptrue p0.d
; CHECK-NEXT:    st1d { z3.d }, p0, [x0, #3, mul vl]
; CHECK-NEXT:    st1d { z2.d }, p0, [x0, #2, mul vl]
; CHECK-NEXT:    st1d { z1.d }, p0, [x0, #1, mul vl]
; CHECK-NEXT:    st1d { z0.d }, p0, [x0]
; CHECK-NEXT:    ret
  %v = call <vscale x 16 x i64> @llvm.experimental.vector.insert.nxv8i64.nxv16i64(<vscale x 16 x i64> undef, <vscale x 8 x i64> %sv0, i64 0)
  store <vscale x 16 x i64> %v, <vscale x 16 x i64>* %out
  ret void
}

define void @insert_nxv8i64_nxv16i64_hi(<vscale x 8 x i64> %sv0, <vscale x 16 x i64>* %out) {
; CHECK-LABEL: insert_nxv8i64_nxv16i64_hi:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ptrue p0.d
; CHECK-NEXT:    st1d { z3.d }, p0, [x0, #7, mul vl]
; CHECK-NEXT:    st1d { z2.d }, p0, [x0, #6, mul vl]
; CHECK-NEXT:    st1d { z1.d }, p0, [x0, #5, mul vl]
; CHECK-NEXT:    st1d { z0.d }, p0, [x0, #4, mul vl]
; CHECK-NEXT:    ret
  %v = call <vscale x 16 x i64> @llvm.experimental.vector.insert.nxv8i64.nxv16i64(<vscale x 16 x i64> undef, <vscale x 8 x i64> %sv0, i64 8)
  store <vscale x 16 x i64> %v, <vscale x 16 x i64>* %out
  ret void
}

define void @insert_v2i64_nxv16i64(<2 x i64> %sv0, <2 x i64> %sv1, <vscale x 16 x i64>* %out) {
; CHECK-LABEL: insert_v2i64_nxv16i64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    str x29, [sp, #-16]! // 8-byte Folded Spill
; CHECK-NEXT:    addvl sp, sp, #-4
; CHECK-NEXT:    .cfi_escape 0x0f, 0x0c, 0x8f, 0x00, 0x11, 0x10, 0x22, 0x11, 0x20, 0x92, 0x2e, 0x00, 0x1e, 0x22 // sp + 16 + 32 * VG
; CHECK-NEXT:    .cfi_offset w29, -16
; CHECK-NEXT:    ptrue p0.d
; CHECK-NEXT:    // kill: def $q0 killed $q0 def $z0
; CHECK-NEXT:    st1d { z0.d }, p0, [sp]
; CHECK-NEXT:    str q1, [sp, #32]
; CHECK-NEXT:    ld1d { z0.d }, p0/z, [sp]
; CHECK-NEXT:    ld1d { z1.d }, p0/z, [sp, #1, mul vl]
; CHECK-NEXT:    ld1d { z2.d }, p0/z, [sp, #2, mul vl]
; CHECK-NEXT:    ld1d { z3.d }, p0/z, [sp, #3, mul vl]
; CHECK-NEXT:    st1d { z3.d }, p0, [x0, #3, mul vl]
; CHECK-NEXT:    st1d { z2.d }, p0, [x0, #2, mul vl]
; CHECK-NEXT:    st1d { z1.d }, p0, [x0, #1, mul vl]
; CHECK-NEXT:    st1d { z0.d }, p0, [x0]
; CHECK-NEXT:    addvl sp, sp, #4
; CHECK-NEXT:    ldr x29, [sp], #16 // 8-byte Folded Reload
; CHECK-NEXT:    ret
  %v0 = call <vscale x 16 x i64> @llvm.experimental.vector.insert.v2i64.nxv16i64(<vscale x 16 x i64> undef, <2 x i64> %sv0, i64 0)
  %v = call <vscale x 16 x i64> @llvm.experimental.vector.insert.v2i64.nxv16i64(<vscale x 16 x i64> %v0, <2 x i64> %sv1, i64 4)
  store <vscale x 16 x i64> %v, <vscale x 16 x i64>* %out
  ret void
}

define void @insert_v2i64_nxv16i64_lo0(<2 x i64>* %psv, <vscale x 16 x i64>* %out) {
; CHECK-LABEL: insert_v2i64_nxv16i64_lo0:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ldr q0, [x0]
; CHECK-NEXT:    ptrue p0.d
; CHECK-NEXT:    st1d { z0.d }, p0, [x1]
; CHECK-NEXT:    ret
  %sv = load <2 x i64>, <2 x i64>* %psv
  %v = call <vscale x 16 x i64> @llvm.experimental.vector.insert.v2i64.nxv16i64(<vscale x 16 x i64> undef, <2 x i64> %sv, i64 0)
  store <vscale x 16 x i64> %v, <vscale x 16 x i64>* %out
  ret void
}

define void @insert_v2i64_nxv16i64_lo2(<2 x i64>* %psv, <vscale x 16 x i64>* %out) {
; CHECK-LABEL: insert_v2i64_nxv16i64_lo2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    str x29, [sp, #-16]! // 8-byte Folded Spill
; CHECK-NEXT:    addvl sp, sp, #-2
; CHECK-NEXT:    .cfi_escape 0x0f, 0x0c, 0x8f, 0x00, 0x11, 0x10, 0x22, 0x11, 0x10, 0x92, 0x2e, 0x00, 0x1e, 0x22 // sp + 16 + 16 * VG
; CHECK-NEXT:    .cfi_offset w29, -16
; CHECK-NEXT:    ldr q0, [x0]
; CHECK-NEXT:    ptrue p0.d
; CHECK-NEXT:    str q0, [sp, #16]
; CHECK-NEXT:    ld1d { z0.d }, p0/z, [sp]
; CHECK-NEXT:    ld1d { z1.d }, p0/z, [sp, #1, mul vl]
; CHECK-NEXT:    st1d { z1.d }, p0, [x1, #1, mul vl]
; CHECK-NEXT:    st1d { z0.d }, p0, [x1]
; CHECK-NEXT:    addvl sp, sp, #2
; CHECK-NEXT:    ldr x29, [sp], #16 // 8-byte Folded Reload
; CHECK-NEXT:    ret
  %sv = load <2 x i64>, <2 x i64>* %psv
  %v = call <vscale x 16 x i64> @llvm.experimental.vector.insert.v2i64.nxv16i64(<vscale x 16 x i64> undef, <2 x i64> %sv, i64 2)
  store <vscale x 16 x i64> %v, <vscale x 16 x i64>* %out
  ret void
}


; Insert subvectors that need widening

define <vscale x 4 x i32> @insert_nxv1i32_nxv4i32_undef() nounwind {
; CHECK-LABEL: insert_nxv1i32_nxv4i32_undef:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    mov z0.s, #1 // =0x1
; CHECK-NEXT:    ret
entry:
  %0 = insertelement <vscale x 1 x i32> undef, i32 1, i32 0
  %subvec = shufflevector <vscale x 1 x i32> %0, <vscale x 1 x i32> undef, <vscale x 1 x i32> zeroinitializer
  %retval = call <vscale x 4 x i32> @llvm.experimental.vector.insert.nxv4i32.nxv1i32(<vscale x 4 x i32> undef, <vscale x 1 x i32> %subvec, i64 0)
  ret <vscale x 4 x i32> %retval
}

define <vscale x 6 x i16> @insert_nxv1i16_nxv6i16_undef() nounwind {
; CHECK-LABEL: insert_nxv1i16_nxv6i16_undef:
; CHECK:       // %bb.0: // %entry
; CHECK-NEXT:    mov z0.h, #1 // =0x1
; CHECK-NEXT:    ret
entry:
  %0 = insertelement <vscale x 1 x i16> undef, i16 1, i32 0
  %subvec = shufflevector <vscale x 1 x i16> %0, <vscale x 1 x i16> undef, <vscale x 1 x i32> zeroinitializer
  %retval = call <vscale x 6 x i16> @llvm.experimental.vector.insert.nxv6i16.nxv1i16(<vscale x 6 x i16> undef, <vscale x 1 x i16> %subvec, i64 0)
  ret <vscale x 6 x i16> %retval
}

; This tests promotion of the input operand to INSERT_SUBVECTOR.
define <vscale x 8 x i16> @insert_nxv8i16_nxv2i16(<vscale x 8 x i16> %vec, <vscale x 2 x i16> %in) nounwind {
; CHECK-LABEL: insert_nxv8i16_nxv2i16:
; CHECK:       // %bb.0:
; CHECK-NEXT:    uunpklo z2.s, z0.h
; CHECK-NEXT:    uunpkhi z0.s, z0.h
; CHECK-NEXT:    uunpklo z2.d, z2.s
; CHECK-NEXT:    uzp1 z1.s, z2.s, z1.s
; CHECK-NEXT:    uzp1 z0.h, z1.h, z0.h
; CHECK-NEXT:    ret
  %r = call <vscale x 8 x i16> @llvm.experimental.vector.insert.nxv8i16.nxv2i16(<vscale x 8 x i16> %vec, <vscale x 2 x i16> %in, i64 2)
  ret <vscale x 8 x i16> %r
}

; Test that the index is scaled by vscale if the subvector is scalable.
define <vscale x 8 x half> @insert_nxv8f16_nxv2f16(<vscale x 8 x half> %vec, <vscale x 2 x half> %in) nounwind {
; CHECK-LABEL: insert_nxv8f16_nxv2f16:
; CHECK:       // %bb.0:
; CHECK-NEXT:    str x29, [sp, #-16]! // 8-byte Folded Spill
; CHECK-NEXT:    addvl sp, sp, #-1
; CHECK-NEXT:    ptrue p0.h
; CHECK-NEXT:    ptrue p1.d
; CHECK-NEXT:    st1h { z0.h }, p0, [sp]
; CHECK-NEXT:    st1h { z1.d }, p1, [sp, #1, mul vl]
; CHECK-NEXT:    ld1h { z0.h }, p0/z, [sp]
; CHECK-NEXT:    addvl sp, sp, #1
; CHECK-NEXT:    ldr x29, [sp], #16 // 8-byte Folded Reload
; CHECK-NEXT:    ret
  %r = call <vscale x 8 x half> @llvm.experimental.vector.insert.nxv8f16.nxv2f16(<vscale x 8 x half> %vec, <vscale x 2 x half> %in, i64 2)
  ret <vscale x 8 x half> %r
}

; Fixed length clamping

define <vscale x 2 x i64> @insert_fixed_v2i64_nxv2i64(<vscale x 2 x i64> %vec, <2 x i64> %subvec) nounwind #0 {
; CHECK-LABEL: insert_fixed_v2i64_nxv2i64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    str x29, [sp, #-16]! // 8-byte Folded Spill
; CHECK-NEXT:    addvl sp, sp, #-1
; CHECK-NEXT:    cntd x8
; CHECK-NEXT:    mov w9, #2
; CHECK-NEXT:    sub x8, x8, #2
; CHECK-NEXT:    ptrue p0.d
; CHECK-NEXT:    cmp x8, #2
; CHECK-NEXT:    st1d { z0.d }, p0, [sp]
; CHECK-NEXT:    csel x8, x8, x9, lo
; CHECK-NEXT:    mov x9, sp
; CHECK-NEXT:    lsl x8, x8, #3
; CHECK-NEXT:    str q1, [x9, x8]
; CHECK-NEXT:    ld1d { z0.d }, p0/z, [sp]
; CHECK-NEXT:    addvl sp, sp, #1
; CHECK-NEXT:    ldr x29, [sp], #16 // 8-byte Folded Reload
; CHECK-NEXT:    ret
  %retval = call <vscale x 2 x i64> @llvm.experimental.vector.insert.nxv2i64.v2i64(<vscale x 2 x i64> %vec, <2 x i64> %subvec, i64 2)
  ret <vscale x 2 x i64> %retval
}

define <vscale x 2 x i64> @insert_fixed_v4i64_nxv2i64(<vscale x 2 x i64> %vec, <4 x i64>* %ptr) nounwind #0 {
; CHECK-LABEL: insert_fixed_v4i64_nxv2i64:
; CHECK:       // %bb.0:
; CHECK-NEXT:    str x29, [sp, #-16]! // 8-byte Folded Spill
; CHECK-NEXT:    addvl sp, sp, #-1
; CHECK-NEXT:    cntd x8
; CHECK-NEXT:    ptrue p0.d
; CHECK-NEXT:    subs x8, x8, #4
; CHECK-NEXT:    ld1d { z1.d }, p0/z, [x0]
; CHECK-NEXT:    csel x8, xzr, x8, lo
; CHECK-NEXT:    mov w9, #4
; CHECK-NEXT:    cmp x8, #4
; CHECK-NEXT:    st1d { z0.d }, p0, [sp]
; CHECK-NEXT:    csel x8, x8, x9, lo
; CHECK-NEXT:    mov x9, sp
; CHECK-NEXT:    st1d { z1.d }, p0, [x9, x8, lsl #3]
; CHECK-NEXT:    ld1d { z0.d }, p0/z, [sp]
; CHECK-NEXT:    addvl sp, sp, #1
; CHECK-NEXT:    ldr x29, [sp], #16 // 8-byte Folded Reload
; CHECK-NEXT:    ret
  %subvec = load <4 x i64>, <4 x i64>* %ptr
  %retval = call <vscale x 2 x i64> @llvm.experimental.vector.insert.nxv2i64.v4i64(<vscale x 2 x i64> %vec, <4 x i64> %subvec, i64 4)
  ret <vscale x 2 x i64> %retval
}

attributes #0 = { vscale_range(2,2) }

declare <vscale x 2 x i64> @llvm.experimental.vector.insert.nxv2i64.v2i64(<vscale x 2 x i64>, <2 x i64>, i64)
declare <vscale x 4 x i32> @llvm.experimental.vector.insert.nxv4i32.v4i32(<vscale x 4 x i32>, <4 x i32>, i64)
declare <vscale x 8 x i16> @llvm.experimental.vector.insert.nxv8i16.v8i16(<vscale x 8 x i16>, <8 x i16>, i64)
declare <vscale x 16 x i8> @llvm.experimental.vector.insert.nxv16i8.v16i8(<vscale x 16 x i8>, <16 x i8>, i64)

declare <vscale x 2 x i64> @llvm.experimental.vector.insert.nxv2i64.v4i64(<vscale x 2 x i64>, <4 x i64>, i64)

declare <vscale x 16 x i64> @llvm.experimental.vector.insert.nxv8i64.nxv16i64(<vscale x 16 x i64>, <vscale x 8 x i64>, i64)
declare <vscale x 16 x i64> @llvm.experimental.vector.insert.v2i64.nxv16i64(<vscale x 16 x i64>, <2 x i64>, i64)
declare <vscale x 4 x i32> @llvm.experimental.vector.insert.nxv4i32.nxv1i32(<vscale x 4 x i32>, <vscale x 1 x i32>, i64)
declare <vscale x 6 x i16> @llvm.experimental.vector.insert.nxv6i16.nxv1i16(<vscale x 6 x i16>, <vscale x 1 x i16>, i64)

declare <vscale x 8 x i16> @llvm.experimental.vector.insert.nxv8i16.nxv2i16(<vscale x 8 x i16>, <vscale x 2 x i16>, i64)

declare <vscale x 8 x half> @llvm.experimental.vector.insert.nxv8f16.nxv2f16(<vscale x 8 x half>, <vscale x 2 x half>, i64)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Upacked types that need result widening
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

define <vscale x 3 x i32> @insert_nxv3i32_nxv2i32(<vscale x 2 x i32> %sv0) {
; CHECK-LABEL: insert_nxv3i32_nxv2i32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    uzp1 z0.s, z0.s, z0.s
; CHECK-NEXT:    ret
  %v0 = call <vscale x 3 x i32> @llvm.experimental.vector.insert.nxv3i32.nxv2i32(<vscale x 3 x i32> undef, <vscale x 2 x i32> %sv0, i64 0)
 ret <vscale x 3 x i32> %v0
}

;; Check that the Subvector is not widen so it does not crash.
define <vscale x 3 x i32> @insert_nxv3i32_nxv2i32_2(<vscale x 3 x i32> %sv0, <vscale x 2 x i32> %sv1) {
; CHECK-LABEL: insert_nxv3i32_nxv2i32_2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    uunpkhi z0.d, z0.s
; CHECK-NEXT:    uzp1 z0.s, z1.s, z0.s
; CHECK-NEXT:    ret
  %v0 = call <vscale x 3 x i32> @llvm.experimental.vector.insert.nxv3i32.nxv2i32(<vscale x 3 x i32> %sv0, <vscale x 2 x i32> %sv1, i64 0)
  ret <vscale x 3 x i32> %v0
}

define <vscale x 3 x float> @insert_nxv3f32_nxv2f32(<vscale x 2 x float> %sv0) nounwind {
; CHECK-LABEL: insert_nxv3f32_nxv2f32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    str x29, [sp, #-16]! // 8-byte Folded Spill
; CHECK-NEXT:    addvl sp, sp, #-1
; CHECK-NEXT:    ptrue p0.d
; CHECK-NEXT:    st1w { z0.d }, p0, [sp]
; CHECK-NEXT:    ptrue p0.s
; CHECK-NEXT:    ld1w { z0.s }, p0/z, [sp]
; CHECK-NEXT:    addvl sp, sp, #1
; CHECK-NEXT:    ldr x29, [sp], #16 // 8-byte Folded Reload
; CHECK-NEXT:    ret
  %v0 = call <vscale x 3 x float> @llvm.experimental.vector.insert.nxv3f32.nxv2f32(<vscale x 3 x float> undef, <vscale x 2 x float> %sv0, i64 0)
 ret <vscale x 3 x float> %v0
}

define <vscale x 6 x i32>  @insert_nxv6i32_nxv2i32(<vscale x 2 x i32> %sv0, <vscale x 2 x i32> %sv1) nounwind {
; CHECK-LABEL: insert_nxv6i32_nxv2i32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    str x29, [sp, #-16]! // 8-byte Folded Spill
; CHECK-NEXT:    addvl sp, sp, #-2
; CHECK-NEXT:    ptrue p0.s
; CHECK-NEXT:    uzp1 z0.s, z0.s, z1.s
; CHECK-NEXT:    st1w { z0.s }, p0, [sp]
; CHECK-NEXT:    ld1w { z1.s }, p0/z, [sp, #1, mul vl]
; CHECK-NEXT:    addvl sp, sp, #2
; CHECK-NEXT:    ldr x29, [sp], #16 // 8-byte Folded Reload
; CHECK-NEXT:    ret
  %v0 = call <vscale x 6 x i32> @llvm.experimental.vector.insert.nxv6i32.nxv2i32(<vscale x 6 x i32> undef, <vscale x 2 x i32> %sv0, i64 0)
  %v1 = call <vscale x 6 x i32> @llvm.experimental.vector.insert.nxv6i32.nxv2i32(<vscale x 6 x i32> %v0, <vscale x 2 x i32> %sv1, i64 2)
  ret <vscale x 6 x i32> %v1
}

;; This only works because the input vector is undef and index is zero
define  <vscale x 6 x i32> @insert_nxv6i32_nxv3i32(<vscale x 3 x i32> %sv0) {
; CHECK-LABEL: insert_nxv6i32_nxv3i32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ret
  %v0 = call <vscale x 6 x i32> @llvm.experimental.vector.insert.nxv6i32.nxv3i32(<vscale x 6 x i32> undef, <vscale x 3 x i32> %sv0, i64 0)
  ret <vscale x 6 x i32> %v0
}

define <vscale x 12 x i32> @insert_nxv12i32_nxv4i32(<vscale x 4 x i32> %sv0, <vscale x 4 x i32> %sv1, <vscale x 4 x i32> %sv2) {
; CHECK-LABEL: insert_nxv12i32_nxv4i32:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ret
  %v0 = call <vscale x 12 x i32> @llvm.experimental.vector.insert.nxv4i32.nxv12i32(<vscale x 12 x i32> undef, <vscale x 4 x i32> %sv0, i64 0)
  %v1 = call <vscale x 12 x i32> @llvm.experimental.vector.insert.nxv4i32.nxv12i32(<vscale x 12 x i32> %v0, <vscale x 4 x i32> %sv1, i64 4)
  %v2 = call <vscale x 12 x i32> @llvm.experimental.vector.insert.nxv4i32.nxv12i32(<vscale x 12 x i32> %v1, <vscale x 4 x i32> %sv2, i64 8)
  ret <vscale x 12 x i32> %v2
}

declare <vscale x 3 x i32> @llvm.experimental.vector.insert.nxv3i32.nxv2i32(<vscale x 3 x i32>, <vscale x 2 x i32>, i64)
declare <vscale x 3 x float> @llvm.experimental.vector.insert.nxv3f32.nxv2f32(<vscale x 3 x float>, <vscale x 2 x float>, i64)
declare <vscale x 6 x i32> @llvm.experimental.vector.insert.nxv6i32.nxv2i32(<vscale x 6 x i32>, <vscale x 2 x i32>, i64)
declare <vscale x 6 x i32> @llvm.experimental.vector.insert.nxv6i32.nxv3i32(<vscale x 6 x i32>, <vscale x 3 x i32>, i64)
declare <vscale x 12 x i32> @llvm.experimental.vector.insert.nxv4i32.nxv12i32(<vscale x 12 x i32>, <vscale x 4 x i32>, i64)
