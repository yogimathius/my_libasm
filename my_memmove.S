section .text
    global my_memmove

my_memmove:
    ; Input Arguments: 
    ;   rdi = destination address
    ;   rsi = source address
    ;   rdx = n (number of bytes to be copied into dest from source)
    ; Output: 
    ;   rax = memory address for destination

    cmp rdx, 0          ; check if n is zero 
    je .done

    ; create buffer in stack i.e. a "stack frame"
    push rbp            ; save the base pointer (not necessary, but best practice for debug)
    mov rbp, rsp        ; set the bp equal to the stack pointer so that we can create a buffer
    sub rsp, rdx        ; subtracting 'n' bytes to create a buffer of this size
    push rdi            ; save original destination in stack


    ; copy memory from source into buffer
    mov rcx, rdx        ; set up for "rep movsb"  
    lea rdi, [rsp]      ; move the stack pointer address into rdi 
    rep movsb           ; this command will move rcx bytes from rsi into rdi, therefore into our stack buffer

    ; copy buffer into destination
    mov rcx, rdx        ; rcx was decremented to zero by rep movsb instruction
    pop rdi             ; restore the original destination
    lea rsi, [rsp]      ; move the buffer pointer into rsi
    rep movsb           ; copy rcx bytes into rdi (the original desitnation)

.done:
    mov rsp, rbp        ; restore the stack pointer
    pop rbp             ; restore the base pointer
    ret