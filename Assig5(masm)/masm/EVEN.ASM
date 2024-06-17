DATA SEGMENT
    ARRAY_SIZE DW 5                    
    NUMBERS DW 10,20,11,14,13          
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA          
    MOV DS, AX;  

    MOV CX,ARRAY_SIZE;
    LEA SI,NUMBERS;
    
    MOV BX,0000           
    MOV AX,[SI];


next_1:
    and AX,0001;    
    jnz next_2;
    inc BX;

next_2:
    dec CX;
    jz EndProgram;
    add SI,0002;
    MOV AX,[SI];
    jmp next_1; 


EndProgram:
    MOV AH, 4CH         
    INT 21H


CODE ENDS
END START

