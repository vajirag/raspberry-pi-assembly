.global _start

@ funtion to add two numbers
@ R0 - address of the string to print
@ R1 - length of the string
@ 
_print:
    push {R4-R12, LR}
    push {R0-R1}
    mov  R0, #1
    pop  {R1}
    pop  {R2}
    mov  R7, #4
    svc 0
    pop {R4-R12, LR}
    bx  LR

_start:
    ldr R0, =msg1
    mov R1, #6
    bl  _print

    ldr R0, =msg2
    mov R1, #13
    bl  _print

    mov R0, #0
    mov R7, #1
    svc 0

.data
msg1:   .ascii  "Hello\n"
msg2:   .ascii  "How are you?\n"
