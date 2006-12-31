; RUN: llvm-as < %s | llc -march=arm &&
; RUN: llvm-as < %s | llc -march=arm | grep moveq &&
; RUN: llvm-as < %s | llc -march=arm | grep movvs

define i32 %f7(float %a, float %b) {
entry:
    %tmp = fcmp ueq float %a,%b
    %retval = select bool %tmp, i32 666, i32 42
    ret i32 %retval
}

