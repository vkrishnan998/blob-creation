; ModuleID = 'test.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-redhat-linux-gnu"

@main.elements = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 16

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %elements = alloca [5 x i32], align 16
  %intermediate = alloca [5 x i32], align 16
  %result = alloca [5 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %1
  %2 = bitcast [5 x i32]* %elements to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* bitcast ([5 x i32]* @main.elements to i8*), i64 20, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %3

; <label>:3                                       ; preds = %24, %0
  %4 = load i32* %i, align 4
  %5 = icmp slt i32 %4, 20
  br i1 %5, label %6, label %27

; <label>:6                                       ; preds = %3
  %7 = load i32* %i, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [5 x i32]* %elements, i32 0, i64 %8
  %10 = load i32* %9, align 4
  %11 = mul nsw i32 %10, 10
  %12 = load i32* %i, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5 x i32]* %intermediate, i32 0, i64 %13
  %15 = load i32* %14, align 4
  %16 = add nsw i32 %15, %11
  store i32 %16, i32* %14, align 4
  %17 = load i32* %i, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [5 x i32]* %intermediate, i32 0, i64 %18
  %20 = load i32* %19, align 4
  %21 = load i32* %i, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [5 x i32]* %result, i32 0, i64 %22
  store i32 %20, i32* %23, align 4
  br label %24

; <label>:24                                      ; preds = %6
  %25 = load i32* %i, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %i, align 4
  br label %3

; <label>:27                                      ; preds = %3
  %28 = load i32* %1
  ret i32 %28
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.4.2 (tags/RELEASE_34/dot2-final)"}
