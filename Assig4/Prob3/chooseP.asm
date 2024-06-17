global chooseP              ; Declare 'chooseP' as a global symbol
section .text               ; Start the text section

chooseP:                    ; Begin the 'chooseP' function
    xor rax, rax;           ; Clear the rax register (set it to zero)
    cmp rsi, 0;             ; Compare rsi (b) to 0
    je final;               ; If b is 0, jump to 'final'
    cmp rdi, rsi;           ; Compare rdi (a) to rsi (b)
    jl final;               ; If a is less than b, jump to 'final'
    cmp rdi, rsi;           ; Compare a to b again
    je final;               ; If a is equal to b, jump to 'final'
    cmp rsi, 1;             ; Compare b to 1
    je one;                 ; If b is 1, jump to 'one'
    mov r8, rdi;            ; Move a (rdi) to r8
    mov r9, rsi;            ; Move b (rsi) to r9
    sub r8, r9;             ; Subtract b from a and store in r8
    cmp r8, 1;              ; Compare the result to 1
    je one;                 ; If the result is 1, jump to 'one'

a_fact_init:                ; Label for initializing the 'a' factorial
    mov r8, rdi;            ; Initialize r8 with a (rdi)
    mov r9, rdi;            ; Initialize r9 with a (rdi)

a_fact:                     ; Label for 'a' factorial calculation loop
    dec r9;                  ; Decrement r9
    cmp r9, 1;               ; Compare r9 to 1 (checking if we are done with the factorial)
    je b_fact_init;          ; If r9 is 1, jump to 'b_fact_init' to store a factorial
    jmp a_mult_init;         ; Otherwise, jump to 'a_mult_init'

a_mult_init:                ; Label for initializing 'a' multiplication
    mov rcx, r9;             ; Copy r9 to rcx
    mov r11, r8;             ; Copy r8 to r11

a_mult:                     ; Label for 'a' multiplication loop
    add r8, r11;             ; Add r11 to r8 (multiply by a)
    dec rcx;                 ; Decrement rcx
    cmp rcx, 1;              ; Compare rcx to 1
    je a_fact;               ; If rcx is 1, jump back to 'a_fact' to complete factorial
    jmp a_mult;              ; Otherwise, jump back to 'a_mult' for multiplication

    ; r8 holds the value of 'a' factorial

b_fact_init:                ; Label for initializing the 'b' factorial
    mov r9, rsi;             ; Initialize r9 with b (rsi)
    mov r10, rsi;            ; Initialize r10 with b (rsi)

b_fact:                     ; Label for 'b' factorial calculation loop
    dec r10;                 ; Decrement r10
    cmp r10, 1;              ; Compare r10 to 1
    je div_fact_init;        ; If r10 is 1, jump to 'div_fact_init' to store b factorial
    jmp b_mult_init;         ; Otherwise, jump to 'b_mult_init' for multiplication

b_mult_init:                ; Label for initializing 'b' multiplication
    mov rcx, r10;            ; Copy r10 to rcx
    mov r11, r9;             ; Copy r9 to r11

b_mult:                     ; Label for 'b' multiplication loop
    add r9, r11;             ; Add r11 to r9 (multiply by b)
    dec rcx;                 ; Decrement rcx
    cmp rcx, 1;              ; Compare rcx to 1
    je b_fact;               ; If rcx is 1, jump back to 'b_fact' to complete factorial
    jmp b_mult;              ; Otherwise, jump back to 'b_mult' for multiplication

    ; r9 holds the value of 'b' factorial

div_fact_init:              ; Label for initializing the division of 'a' factorial and '(a-b)' factorial
    mov r10, rdi;            ; Initialize r10 with a (rdi)
    mov r11, rsi;            ; Initialize r11 with b (rsi)
    sub r10, r11;            ; Calculate (a - b) and store in r10
    mov rdx, r10;            ; Copy r10 to rdx

    mov r10, rdx;            ; Copy rdx back to r10
    mov r11, rdx;            ; Copy rdx to r11

div_fact:               ; Label for division loop
    dec r11;             ; Decrement r11
    cmp r11, 1;          ; Compare r11 to 1
    je div_one_init;     ; If r11 is 1, jump to 'div_one_init' to store the result of division
    jmp div_mult_init;   ; Otherwise, jump to 'div_mult_init' for multiplication

div_mult_init:          ; Label for initializing multiplication during division
    mov rcx, r11;        ; Copy r11 to rcx
    mov r12, r10;        ; Copy r10 to r12

div_mult:               ; Label for multiplication loop during division
    add r10, r12;        ; Add r12 to r10 (multiply by (A-B)!)
    dec rcx;             ; Decrement rcx
    cmp rcx, 1;          ; Compare rcx to 1
    je div_fact;         ; If rcx is 1, jump back to 'div_fact' to complete multiplication
    jmp div_mult;        ; Otherwise, jump back to 'div_mult' for further multiplication

; marker A! = r8, B! = r9, (A-B)! = r10

div_one_init:           ; Label for initializing division of A! by (A-B)!
    xor rcx, rcx;        ; Clear rcx to 0

div_one:                ; Label for division loop
    cmp r8, r10;         ; Compare A! (r8) to (A-B)! (r10)
    jl div_two_init;     ; If A! is less than (A-B)!, jump to 'div_two_init'
    inc rcx;             ; Increment rcx (counting quotient)
    sub r8, r10;         ; Subtract (A-B)! from A! and store in r8
    jmp div_one;         ; Repeat until A! is less than (A-B)!

div_two_init:           ; Label for initializing division of the quotient by B!
    mov r11, rcx;        ; Copy the quotient (rcx) to r11
    xor rcx, rcx;        ; Clear rcx to 0

div_two:                ; Label for division loop
    cmp r11, r9;         ; Compare the quotient (r11) to B! (r9)
    jl finish;           ; If the quotient is less than B!, we are done
    inc rcx;             ; Increment rcx (counting quotient)
    sub r11, r9;         ; Subtract B! from the quotient and store in r11
    jmp div_two;         ; Repeat until the quotient is less than B!

finish:                 ; Label for the final result
    mov rax, rcx;        ; Move the final quotient (rcx) to rax as the result
    jmp final;           ; Jump to 'final' to return the result

one:                    ; Label for 'one' case
    mov rax, rdi;        ; Move rdi (a) to rax
    jmp final;           ; Jump to 'final' to return the result

zero:                   ; Label for 'zero' case
    mov rax, 1;          ; Set rax to 1
    jmp final;           ; Jump to 'final' to return the result

final:                  ; Label for the end of the 'chooseP' function
    ret                 ; Return from the function
