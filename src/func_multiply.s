.global _start

_add:
    push {R4-R12, LR}
    add  R4, R0, R1
    mov  R0, R4
    pop  {R4-R12, PC}


@ function multiply two integers
@ R0, R1 input params
@ R0 return the sum
    .EQU VAR0,   0
    .EQU VAR1,   4
    .EQU SUM,    8
    .EQU SF_END, 12
_multiply:
    push {R4-R12, LR}
    sub  SP, #SF_END
    str  R0, [SP, #VAR0]
    str  R1, [SP, #VAR1]
    mov  R4, R1
    mov  [SP, #SUM], #0
_repeat_add:
    lrd  R0, [SP, #VAR0]
    lrd  R1, [SP, #SUM]
    bl _add
    str  R0, [SP, #SUM]
    sub  R4, #1
    cmp  R4, #0
    bgt  _repeat_add
    lrd  R0, [SP, #SUM]
    add  SP, #SF_END
    pop  {R4-R12, PC}

_start:
    mov R0, 2
    mov R1, 3
    bl multiply

    mov R0, #0
    mov R7, #1
    svc 0








    
