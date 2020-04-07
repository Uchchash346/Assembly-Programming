.MODEL SMALL
.STACK 100H
.DATA 

a DB 'INPUT FIRST DIGIT $'
b DB 'INPUT SECOND DIGIT $'
c DB 'RESULT $'

.CODE

MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AH,9
    LEA DX,a
    INT 21H
    
    MOV AH,1 
    INT 21H
    MOV BL,AL
    
    MOV AH,9 
    LEA DX,b
    INT 21H
    
    MOV AH,1 
    INT 21H
    MOV BH,AL
    
    MOV AH,9
    LEA DX,c
    INT 21H
    
    ADD BL,BH ;BL = BL + BH
    SUB BL,48
    
    MOV AH,2 
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN