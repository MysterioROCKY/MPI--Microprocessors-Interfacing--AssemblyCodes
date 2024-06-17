global Even                  ; Declare the "Even" function as globally accessible

section .text                ; Start of the code section

Even:                        ; Label for the "Even" function
    xor rax, rax            ; Clear the RAX register (used for counting even numbers)
    cmp rsi, $0             ; Compare the value in RSI (second argument) with 0
    je finish                ; If RSI is 0, jump to the "finish" label (no numbers to check)
    mov rcx, [rdi]          ; Load the value at the memory address in RDI into RCX

next1:                      ; Label for the first loop
    and rcx, $1             ; Perform a bitwise AND between RCX and 1 to check if the lowest bit is set
    jnz next2               ; If the result is not zero (bit is set), jump to "next2"
    inc rax                 ; Increment RAX (count of even numbers)

next2:                      ; Label for the second loop
    dec rsi                 ; Decrement RSI (loop counter)
    jz finish               ; If RSI is now zero, jump to "finish" (end of loop)
    add rdi, $8             ; Add 8 to RDI to move to the next 64-bit integer in memory
    mov rcx, [rdi]          ; Load the next value from memory into RCX
    jmp next1               ; Jump back to "next1" to continue the loop

finish:                     ; Label for the end of the function
    ret                     ; Return from the function

