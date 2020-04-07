.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    INT 21H 
    MOV BH,AL    ;INPUT 
    INT 21H
    MOV CL,AL
    INT 21H
    MOV CH,AL
    INT 21H             
    
    
    
    MOV AH,2
    MOV DL,0DH     ;NEWLINE 
    INT 21H
    MOV DL,0AH  
    INT 21H
    
    
    
     MOV AH,2
     INT 21H
     
     MOV DL,BL       ;OUTPUT
     INT 21H
      MOV DL,BH
     INT 21H
      MOV DL,CL
     INT 21H
      MOV DL,CH
     INT 21H
              
              
    
      MOV AH,4CH
      INT 21H       ;EXI PROGRAM 
      MAIN ENDP

END MAIN