
.global_start @program global_start

_start:
    mv  R0, #1
    ldr R1, =banner     @ banner to print
    mov R2, #17         @ length of the banner
    mov R7, #4          @ system call to write 
    svc 0               @ call system call

@exit from program with return code 0
    mov R0, #0          @ return code
    mov R7, #1          @
    svc 0

.data
banner:     .ascii  "Hello Raspberry Pi"
