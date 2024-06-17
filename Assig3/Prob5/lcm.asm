global lcm
section .text
lcm:
    mov r11, $1           ; Initialize product as 1
    xor rax, rax          ; Initialize return value to 0
    cmp rsi, $0           ; Check if size is 0
    je return             ; If size=0, return
    cmp rsi, $1           ; Check if size is 1
    je single             ; If size=1, return the single element
    mov r8, [rdi]         ; Load the first element into r8
    dec rsi               ; Reduce the size
    add rdi, $8           ; Move to the next index

looping:
    mov r9, [rdi]         ; Load the second element into r9
    imul r11, r8          ; Multiply product by r8
    imul r11, r9          ; Multiply product by r9
    dec rsi               ; Decrease the size
    cmp r8, r9            ; Compare r8 and r9
    jl exchange           ; If r8 < r9, swap them

find_lcm:
    mov rax, r8           ; Find gcd(a, b) using Euclidean algorithm
    xor rdx, rdx
    idiv r9
    mov r8, rdx           ; Update r8 with the remainder
    cmp r8, $0            ; Check if gcd is found
    je update_lcm         ; If gcd=0, update values for lcm
    cmp r8, r9            ; Compare gcd with r9
    jl exchange           ; If gcd < r9, swap r8 and r9
    jmp find_lcm          ; Continue finding gcd using loop

update_lcm:
    mov rax, r11          ; Calculate lcm = (a * b) / gcd(a, b)
    xor rdx, rdx
    idiv r9
    mov r8, rax           ; Update r8 with the lcm value
    cmp rsi, $0           ; Check if size is 0
    je final              ; If size=0, array traversal is complete
    add rdi, $8           ; Move to the next index
    mov r11, $1           ; Reset product to 1
    jmp looping           ; Continue finding the resultant lcm

exchange:
    mov r10, r8           ; Swap r8 and r9 using r10 as a temporary register
    mov r8, r9
    mov r9, r10
    jmp find_lcm          ; Continue finding gcd using loop

final:
    mov rax, r8           ; Update the return value to the final lcm
    jmp return            ; Return the result

single:
    mov rax, [rdi]        ; Load the single element into rax and return

return:
    ret                   ; Return from the function
