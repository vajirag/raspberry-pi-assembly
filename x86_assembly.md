# Stack and Stack Frame

The stack is a special area of memory used (LIFO)
- to store function call information
- manage local vars
- pass args
- temporarily save registers
- recursion and nexsted functions

Stack growns downwards in memory.

A stack frame is a section of the stack memory created for each function call (to keep track of local vars, store the return address and optionally store rbp)

Example of how to setup a stack frame

BP: is a register used to point to the base of the current stack frame inside a function.
```
main:
    push    rbp        # save caller's BP
    mov     rbp, rsp   # Set BP for current frame
    sub     rsp, 16    # Allocate space for locals
```
