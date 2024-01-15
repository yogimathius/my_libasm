section .text
    global my_strncmp

my_strncmp:
    ; Input Arguments: 
    ;   rdi = first string address, 
    ;   rsi = second string address
    ;   rdx = n (maximum number of characters to compare)
    ; Output: Boolean

    cmp rdx, 0          ; Check if n is zero 
    je .equal
    mov al, [rdi]       ; Load characters from both strings
    mov bl, [rsi]
    cmp al, bl          ; Check if characters are equal
    jne .not_equal
    inc rdi             ; Increment pointers 
    inc rsi
    dec rdx             ; Decrement n
    call my_strncmp     ; Recursively call my_strncmp
    jmp .done

.not_equal:
    xor rax, rax        ; If characters are not equal, set the zero flag to indicate inequality
    jmp done

.equal:
    ; If we reach this point, the strings are equal up to n characters
    xor rax, rax        ; Set the zero flag to indicate equality

.done:
    ret

