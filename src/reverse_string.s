.global _start


_start:
    ldr R4, =msg
    mov R6, #10   @ loop counter

@ push char to stack
_repeat_push:
    ldr  R5, [R4]
    push {R5}
    add  R4, #1
    sub  R6, #1
    cmp  R6, #1
    bge _repeat_push

@ pop char from stack
    mov  R6, #10  @ loop counter
    ldr  R4, =out
_repeat_pop:
    pop  {R5}
    str  R5, [R4]
    add  R4, #1
    sub  R6, #1
    cmp  R6, #1
    bge  _repeat_pop

@ print reversed string stored in =out
    mov R0, #1
    ldr R1, =out
    mov R2, #10 
    mov R7, #4
    svc 0

    mov R0, #0
    mov R7, #1
    svc 0

.data
msg:  .ascii "0123456789"
out:  .ascii ".........."
