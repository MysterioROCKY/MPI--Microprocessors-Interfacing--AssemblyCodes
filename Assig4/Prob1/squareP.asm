global squareP
section .text

squareP:
    mov r8, rdi     ; Initialize r8 with a (rdi)
    mov r10, rsi    ; Initialize r10 with b (rsi)
    xor r11, r11    ; Clear r11 (used to store a^2 - b^2)
    xor rax, rax    ; Clear rax (used to store the result)
    xor r12, r12    ; Clear r12 (used as a temporary variable)

next1:
    add r11, r8     ; Accumulate a^2
    cmp rdi, 1      ; Compare rdi with 1 (a) and check if it's equal
    je next2        ; If a is 1, jump to 'next2'
    dec rdi         ; Decrement rdi (a) and continue the loop
    jmp next1       ; Jump back to 'next1' to continue the loop

next2:
    add r12, r10    ; Accumulate b^2
    cmp rsi, 1      ; Compare rsi with 1 (b) and check if it's equal
    je next3        ; If b is 1, jump to 'next3'
    dec rsi         ; Decrement rsi (b) and continue the loop
    jmp next2       ; Jump back to 'next2' to continue the loop

next3:
    sub r11, r12    ; Calculate a^2 - b^2

finish:
    mov rax, r11    ; Store the result in rax
    ret             ; Return the result
