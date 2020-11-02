
.global_start @program global_start

_start:
    mv  R0, #1          @ here, #1 is an immediate operand, which means it stores as a part of instruction
    ldr R1, =banner     @ banner to print, use the lable
    mov R2, #18         @ length of the banner
    mov R7, #4          @ store system call number in R7 to called in next line
    svc 0               @ software interrupt to call system call 4

@exit from program with return code 0
    mov R0, #0          @ return code
    mov R7, #1          @ 
    svc 0               @ software interrupt to call system call 1

.data
banner:     .ascii  "Hello Raspberry Pi\n"
