global odd                ; Declare 'odd' as a global symbol

section .text
odd:
    xor rax, rax          ; Clear the rax register (rax = 0)
    cmp rsi, $0           ; Compare rsi (second parameter) to 0
    je finish             ; If rsi is 0, jump to the 'finish' label
    mov rcx, [rdi]        ; Load the value at the memory address pointed by rdi into rcx

next1:
    and rcx, $1           ; Perform a bitwise AND operation of rcx and 1, result in rcx
    jz next2              ; If rcx is 0, jump to 'next2'
    inc rax               ; Increment the value in rax by 1

next2:
    dec rsi               ; Decrement the value in rsi by 1
    jz finish             ; If rsi is now 0, jump to 'finish'
    add rdi, $8           ; Add 8 to the value in rdi (assuming it points to an 8-byte element)
    mov rcx, [rdi]        ; Load the value at the updated memory address pointed by rdi into rcx
    jmp next1             ; Jump back to 'next1' label, continuing the loop

finish:
    ret                   ; Return from the function
