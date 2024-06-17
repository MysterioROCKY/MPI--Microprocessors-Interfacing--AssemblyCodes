	global gcd            ; Declare the 'gcd' function globally

section .text
gcd:
    xor rax, rax         ; Set the return value (rax) to 0
    cmp rsi, $0          ; Check if the size (rsi) is 0
    je return            ; If size=0, return 0
    cmp rsi, $1          ; Check if the size is 1
    je single            ; If size=1, return the single element
    mov r8, [rdi]        ; Load the first element into r8
    dec rsi              ; Decrement the size
    add rdi, $8          ; Move to the next index

looping:
    mov r9, [rdi]        ; Load the second element into r9
    dec rsi              ; Decrement the size
    cmp r8, r9           ; Compare r8 and r9
    jl exchange          ; If r8 < r9, swap them

find_gcd:
    mov rax, r8          ; Calculate gcd(a, b) using gcd(b, b % a)
    xor rdx, rdx         ; Clear rdx for division
    idiv r9              ; Divide rax by r9 (remainder in rdx)
    mov r8, rdx          ; Update r8 with the remainder
    cmp r8, $0           ; Check if gcd is found (remainder is 0)
    je update_gcd        ; If gcd is found, update the values
    cmp r8, r9           ; Compare r8 and r9
    jl exchange          ; If r8 < r9, swap them
    jmp find_gcd         ; Continue finding gcd using a loop

update_gcd:
    mov r8, r9           ; Update r8 with the gcd of past elements
    cmp rsi, $0          ; Check if size is 0
    je final             ; If size=0, the array is traversed
    add rdi, $8          ; Move to the next index
    jmp looping          ; Continue finding gcd

exchange:
    mov r10, r8          ; Swap r8 and r9 using r10 as a temporary register
    mov r8, r9
    mov r9, r10
    jmp find_gcd         ; Continue finding gcd after swapping

final:
    mov rax, r8          ; Update the return value with the final gcd
    jmp return           ; Return from the function

single:
    mov rax, [rdi]       ; Load the single element into rax and return

return:
    ret                  ; Return from the function
