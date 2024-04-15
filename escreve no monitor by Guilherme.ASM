ORG    0
   
    MOV     AL,20
    MOV    BL,C0
    MOV    CL,1A
APAGA:
    MOV    [BL],AL
    INC    BL
    DEC    CL
    JNZ    APAGA

    MOV     AL,61
    MOV    BL,C0
    MOV    CL,1A
LOOP:
    MOV    [BL],AL
    INC    AL
    INC    BL
    DEC    CL
    JNZ    LOOP    

END