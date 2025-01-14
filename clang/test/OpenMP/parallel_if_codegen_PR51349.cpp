// NOTE: Assertions have been autogenerated by utils/update_cc_test_checks.py UTC_ARGS: --function-signature --check-attributes --include-generated-funcs
// RUN: %clang_cc1 -x c++ -O1 -fopenmp-version=45 -disable-llvm-optzns -verify -fopenmp -triple x86_64-unknown-linux -emit-llvm %s -o - | FileCheck %s --check-prefix=CHECK
// expected-no-diagnostics

#ifndef HEADER
#define HEADER

void foo() {
#pragma omp parallel if(0)
  ;
}

#endif
// CHECK: Function Attrs: mustprogress nounwind
// CHECK-LABEL: define {{[^@]+}}@_Z3foov
// CHECK-SAME: () #[[ATTR0:[0-9]+]] {
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[DOTTHREADID_TEMP_:%.*]] = alloca i32, align 4
// CHECK-NEXT:    [[DOTBOUND_ZERO_ADDR:%.*]] = alloca i32, align 4
// CHECK-NEXT:    [[TMP0:%.*]] = call i32 @__kmpc_global_thread_num(%struct.ident_t* @[[GLOB1:[0-9]+]])
// CHECK-NEXT:    call void @__kmpc_serialized_parallel(%struct.ident_t* @[[GLOB1]], i32 [[TMP0]])
// CHECK-NEXT:    store i32 [[TMP0]], i32* [[DOTTHREADID_TEMP_]], align 4, !tbaa [[TBAA3:![0-9]+]]
// CHECK-NEXT:    store i32 0, i32* [[DOTBOUND_ZERO_ADDR]], align 4
// CHECK-NEXT:    call void @.omp_outlined.(i32* [[DOTTHREADID_TEMP_]], i32* [[DOTBOUND_ZERO_ADDR]]) #[[ATTR2:[0-9]+]]
// CHECK-NEXT:    call void @__kmpc_end_serialized_parallel(%struct.ident_t* @[[GLOB1]], i32 [[TMP0]])
// CHECK-NEXT:    ret void
//
//
// CHECK: Function Attrs: noinline norecurse nounwind
// CHECK-LABEL: define {{[^@]+}}@.omp_outlined.
// CHECK-SAME: (i32* noalias noundef [[DOTGLOBAL_TID_:%.*]], i32* noalias noundef [[DOTBOUND_TID_:%.*]]) #[[ATTR1:[0-9]+]] {
// CHECK-NEXT:  entry:
// CHECK-NEXT:    [[DOTGLOBAL_TID__ADDR:%.*]] = alloca i32*, align 8
// CHECK-NEXT:    [[DOTBOUND_TID__ADDR:%.*]] = alloca i32*, align 8
// CHECK-NEXT:    store i32* [[DOTGLOBAL_TID_]], i32** [[DOTGLOBAL_TID__ADDR]], align 8, !tbaa [[TBAA7:![0-9]+]]
// CHECK-NEXT:    store i32* [[DOTBOUND_TID_]], i32** [[DOTBOUND_TID__ADDR]], align 8, !tbaa [[TBAA7]]
// CHECK-NEXT:    ret void
//
