# Stack and Stack Frame

The stack is a special area of memory used (LIFO)
- to store function call information
- manage local vars
- pass args
- temporarily save registers
- recursion and nexsted functions

Stack growns downwards in memory.

A stack frame is a section of the stack memory created for each function call (to keep track of local vars, store the return address and optionally store rbp)

Example of how to setup a stack frame when a function is called

BP: points to the base of the current stack frame inside a function.
SP: points to the top of the stack
```
main:
    push    rbp        # save caller's BP; i.e dec sp by 8 bytes and stores rbp at [rsp]
    mov     rbp, rsp   # Set BP for current frame start point
    sub     rsp, 16    # Allocate space for locals 8 bytes vars
```

Example of what happen on function return
```

```

Example of allocating 16 bytes of spaces on the stack by dec the stack pointer.
```
sub rsp, 16
```
```
Stack after sub rsp, 16:

+------------------+  ← rbp (saved old rbp)
|                  |
|  local storage   |  ← rsp (now 16 bytes lower)
|    (16 bytes)    |
|                  |
+------------------+

```
