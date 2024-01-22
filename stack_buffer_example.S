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
    push rbp            ; save the base pointer (not necessary, but best practice for cleanup and debug)
    mov rbp, rsp        ; set the bp equal to the stack pointer 
    sub rsp, rdx        ; subtracting 'n' bytes to create a buffer of this size
    mov r8, rsp         ; save the buffer address in r8 register
    push rdi            ; save original destination in stack


    ; copy memory from source into buffer
    mov rcx, rdx        ; set up for "rep movsb"  
    lea rdi, [r8]       ; move the pointer to start of buffer into rdi
    rep movsb           ; this command will move rcx bytes from rsi into rdi, therefore into our stack buffer

    ; copy buffer into destination
    mov rcx, rdx        ; rcx was decremented to zero by rep movsb instruction
    pop rdi             ; restore the original destination
    lea rsi, [r8]      ; move the pointer to start of buffer into rsi
    rep movsb           ; copy rcx bytes into rdi (the original desitnation)

.done:
    leave               ; equivalent of  mov rsp, rbp | pop rbp (restoring sp and bp)
    ret