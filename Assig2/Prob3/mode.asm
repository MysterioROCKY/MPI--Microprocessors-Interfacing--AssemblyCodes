global mode
section .text
mode:
    cmp rsi, $0;    checking if size is o
    je return;      then returning 
    cmp rsi, $1;    checking if size is 1
    je found;       then returning the 1 element
    xor rcx, rcx;   making rcx to 0
    inc rcx;        incrementing rcx 1
    xor r8, r8;     making r8 to 0 used for frequency of elements
    xor rax, rax;   the return value the mode

finding:
    dec rsi;        reducing the size
    cmp rsi, $0;    checking if size is 0 that is we reached end
    je return;      then return if size = 0
    mov rdx, [rdi]; comparing the adjacent elements if they are same or not
    add rdi, $8;
    cmp rdx, [rdi]; 
    je counting;    if they are same we increase the frequency
    jmp reset;      else we reset the frequency

reset:
    xor rcx, rcx;   we reset the frequency to 1
    inc rcx;
    jmp finding;

counting:
    inc rcx;        incrasing the frequency
    cmp r8, rcx;    updating the max frequency
    jl update;
    jmp finding;

update:
    mov r8, rcx;    updates the max frequency
    mov rax, [rdi];
    jmp finding;

found:
    mov rax, [rdi]; if only 1 element return it
    jmp return;

return:
    ret
