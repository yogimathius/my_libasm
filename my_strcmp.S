

section .text
    global my_strcmp

my_strcmp:
    ; Input Arguments:
    ;   rdi: First string address
    ;   rsi: Second string address
    ; Output: Boolean

    mov rdi, str_1          ; 
    cmp byte [rdi], 0       ; Check if the current byte is null terminator first string
    cmp byte [rsi], 0       ; Check if the current byte is null terminator second string
    je equal
    mov al, [rdi]           ; Load characters from both strings
    mov bl, [rsi]
    cmp al, bl              ; Check if characters are equal
    jne not_equal
    inc rdi                 ; Increment pointers 
    inc rsi
    call my_strncmp         ; Recursively call my_strcmp
    jmp done

not_equal:
    xor rax, rax        ; If characters are not equal, set the zero flag to indicate inequality
    jmp done

equal:
    ; If we reach this point, the strings are equal up to n characters
    xor rax, rax        ; Set the zero flag to indicate equality

done:
    ret
