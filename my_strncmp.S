section .text
    global my_strncmp

my_strncmp:
    ; Input Arguments: rdi = first string address, rsi = second string address
    ;   rdx = n (maximum number of characters to compare)
    ; Output: Boolean
    mov rdi, str_1      ; Move str_1 to register
    mov rsi, str_2      ; Move str_2 to register
    mov rdx, n          ; Move n value into reg

cmp_loop:
    cmp rdx, 0          ; Check if n is zero 
    je equal
    mov al, [rdi]       ; Load characters from both strings
    mov bl, [rsi]
    cmp al, bl          ; Check if characters are equal
    jne not_equal
    inc rdi             ; Increment pointers 
    inc rsi
    dec rdx             ; Decrement n
    call cmp_loop       ; Return to start of loop
    jmp done

not_equal:
    xor rax, rax        ; If characters are not equal, set the zero flag to indicate inequality
    jmp done

equal:
    ; If we reach this point, the strings are equal up to n characters
    xor rax, rax        ; Set the zero flag to indicate equality

done:
    ret

section .data
    str_1 db "string_1",0   ; null terinated str_1
    str_2 db "string_2",0   ; null terinated str_2
    n db 5                  ; set n value
