.global _start

@ funtion to print a string
@ R0 - address of the string to print
@ R1 - length of the string
_print:
    push {R4-R12, LR}
    push {R0-R1}
    mov  R0, #1
    pop  {R1}       @ pop parameter 1
    pop  {R2}       @ pop parameter 2
    mov  R7, #4
    svc 0
    pop {R4-R12, LR}
    bx  LR

@ program exit function
_exit:
    push {R4-R12, LR}
    mov R0, #0
    mov R7, #1
    svc 0

_start:
    ldr R0, =msg1
    mov R1, #6
    bl  _print

    ldr R0, =msg2
    mov R1, #13
    bl  _print

    bl  _exit

.data
msg1:   .ascii  "Hello\n"
msg2:   .ascii  "How are you?\n"
