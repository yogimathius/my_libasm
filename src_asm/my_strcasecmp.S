section .text
    global my_strcasecmp

my_strcasecmp:
    ; Input Arguments: 
    ;   rdi = first string address, 
    ;   rsi = second string address
    ;   rdx = n (maximum number of characters to compare)
    ; Output: Integer less than, equal to, or greater than zero

    cmp rdx, 0              ; Check if n is zero 
    je .equal               ; If zero, strings are equal

.loop:
    movzx rax, byte [rdi]   ; Load byte from first string
    movzx rbx, byte [rsi]   ; Load byte from second string

    ; Convert characters to lowercase (assuming ASCII characters)
    cmp rax, 'A'
    jl .not_uppercase_rax
    cmp rax, 'Z'
    jg .not_uppercase_rax
    add rax, 32             ; Convert uppercase to lowercase

.not_uppercase_rax:
    cmp rbx, 'A'
    jl .not_uppercase_rbx
    cmp rbx, 'Z'
    jg .not_uppercase_rbx
    add rbx, 32             ; Convert uppercase to lowercase

.not_uppercase_rbx:
    cmp rax, rbx            ; Compare bytes
    jne .not_equal          ; If not equal, go to not_equal

    test rax, rax           ; Check if rax (byte from first string) is zero (end of string)
    je .equal               ; If zero, strings are equal up to n bytes

    inc rdi                 ; Increment pointers 
    inc rsi
    dec rdx                 ; Decrement n
    jnz .loop               ; If n is not zero, loop

.equal:
    xor rax, rax            ; Equal: Set result to zero
    jmp .done

.not_equal:
    sub rax, rbx            ; Set rax to difference of the characters

.done:
    ret
