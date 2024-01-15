

section .text
    global my_strcmp

my_strcmp:
    ; Input Arguments: rdi = first string address, rsi = second string address
    ; Output: Boolean
    mov al, [rdi]           ; Load characters from both strings
    mov bl, [rsi]
    cmp al, 0               ; Check if either string has reached the null terminator
    je end_string_1
    cmp bl, 0
    je end_string_2
    cmp al, bl              ; Check if characters are equal
    jne not_equal
    inc rdi                 ; Increment pointers 
    inc rsi
    call my_strcmp          ; Recursively call strcmp_loop
    jmp done

end_string_1:
    cmp bl, 0           ; Check if str_2 is at the end
    je equal            ; If yes, strings are equal
    jmp not_equal       ; If we reach this point, the strings are NOT equal 

end_string_2:
    cmp al, 0           ; Check if str_1 is at the end
    je equal            ; If yes, strings are equal
    jmp not_equal       ; If we reach this point, the strings are NOT equal 

not_equal:
    xor rax, rax        ; If characters are not equal, set the zero flag to indicate inequality
    jmp done

equal:
    ; If we reach this point, the strings are equal 
    xor rax, rax        ; Set the zero flag to indicate equality
    jmp done

done:
    ret
