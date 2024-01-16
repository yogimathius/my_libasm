section .text
    global my_index

my_index:
    ; Input Arguments: 
    ;   rdi = string address, 
    ;   rsi = character to compare
    ; Output:
    ;   rax = if successful, address pointer for character location in string
    ;       else, null pointer

    xor rax, rax            ; Clear rax to store result
    mov al, byte [rsi]      ; Load character into al

.loop:
    mov bl, [rdi]           ; Load a byte from string into bl
    cmp bl, 0               ; test end of string
    je .fail_end            ; go to end

    cmp bl, al              ; check if current character is equal to character given in parameter
    je .strchr_end          ; go to end

    inc rdi                 ; move to next character of the string
    jmp .loop               ; loop

.strchr_end:
    mov rax, rdi            ; set function return
    ret

.fail_end:
    xor rax, rax            ; Return NULL (0) in case of failure
    ret

