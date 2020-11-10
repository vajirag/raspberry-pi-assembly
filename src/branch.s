
.global _start

_start:
    mov R4, #1      @ repeat count

_repeat:
    mov R0, #1      @ stdout
    ldr R1, =msg
    mov R2, #3      @ len(msg)
    mov R7, #4      @ print
    svc 0

    add R4, #1      @ increment loop count
    cmp R4, #10     @ results in CPRS
    bls _repeat     @ goto _repeat if R4 < 10

_end:
    mov R0, #0
    mov R7, #1
    svc 0

.data
msg:    .ascii "hi\n"
