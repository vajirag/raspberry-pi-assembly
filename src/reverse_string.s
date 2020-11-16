.global _start:


_start:
    ldr R4, =msg
    mov R5, [R4]
    mov R6, #10

_repeat_push:
    mov  R5, [R4]
    push R5
    add  R4, #1
    sub  R6, #1
    cmp  R5, #10
    ble  _repeat_push

    ldr  R4, =msg
_repeat_pop:
    pop  R5
    str  R5, [R4]
    add  R4, #1
    sub  R6, #1
    cmp  R5, #10
    ble  _repeat_pop

    mov R0, #1
    ldr R1, =msg
    mov R2, #10 
    mov R7, #4
    svc 0

    mov R0, #0
    mov R7, #1
    svc 0

.data
msg  .ascii "012345679"
