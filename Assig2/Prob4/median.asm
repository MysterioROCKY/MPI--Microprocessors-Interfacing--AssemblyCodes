global median
section .text
median:
    cmp rsi, $0;    checking if size is o
    je return;      then returning 
    xor rdx, rdx;   making rdx to 0
    inc rdx;        incrementing to 1
    xor rax, rax;   making rax to 0
    and rdx, rsi;   checking if odd or even using and
    cmp rdx, rax;   commparing for odd or even
    je even;        if even then do the process for even
    jmp odd;        else jump to odd

even:
    mov rdx, $2;    finding n/2 by division
    mov rcx, rsi;
    mov r8, rdx;
    xor rdx, rdx;
    mov rax, rcx;
    idiv r8;
    imul rax, $8;   finding the address of required index
    xor r8, r8;
    add rdi, rax;
    add r8, [rdi];  finding the median for even number array
    sub rdi, $8;
    add r8, [rdi];
    mov rax, r8;
    mov rdx, $2;    dividing the sum by 2
    mov r8, rdx;
    xor rdx, rdx;
    idiv r8;        stores the median in rax
    jmp return;


odd:
    mov rdx, $2;    dividing to find n/2
    mov rcx, rsi;
    mov r8, rdx;
    xor rdx, rdx;
    mov rax, rcx;
    idiv r8;
    imul rax, $8;   finding the address of the median in array
    xor r8, r8;
    add rdi, rax;
    add r8, [rdi];
    mov rax, r8;    storing median in rax that is return value
    jmp return;

return:
    ret
