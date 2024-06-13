

ORG    0

INICIO:
    MOV    CL,9       ;=====>número de graus dividido por 10
    INC    CL
    MOV    AL,11
LOOP:
   
    OUT    05
    ROL    AL
    DEC    CL
    JNZ    LOOP

    JMP    INICIO


    END