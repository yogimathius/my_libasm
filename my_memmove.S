section .text
    global my_memmove

my_memmove:
   ; Input Arguments: 
    ;   rdi = destination address
    ;   rsi = source address
    ;   rdx = n (number of bytes to be copied into dest from source)
    ; Output: 
    ;   rax = memory address for destination

    cmp rdx, 0          ; Check if n is zero 
    je .done
    push rdi            ; Save original destination in stack
    mov eax, rdi
    sub eax, rsi
    cmp eax, rdx
    jle backwards

forward:
    mov eax, 0
forward_loop:
    mov al, [rsi]       ; Load byte from source address
    mov [rdi], al       ; Store the byte in destination address
    inc rdi             ; Increment pointers 
    inc rsi
    dec rdx             ; Decrement n
    jnz forward_loop           ; Loop if n is not zero
    jmp .done

backwards:
    mov eax, rdx
backwards_loop:
    mov al, byte [rsi+eax-1]
    mov byte [rdi+eax-1], al
    dec eax
    jnz backwards_loop

.done:
    pop rax             ; Retrieve original destination address into rax
    ret