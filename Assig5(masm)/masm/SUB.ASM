DATA SEGMENT
    NUM1 DW 0004H          
    NUM2 DW 0003H          
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA          
    ; Set up data segment
    MOV DS, AX

    MOV AX, NUM1          
    MOV BX, NUM2          
    SUB AX, BX            


    MOV AH, 4CH           
    INT 21Hp

CODE ENDS
END START

