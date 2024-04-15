ORG    0
    
JMP INICIO	
    DB    "VALOR INVALIDO"
	DB 3
        DB 93
	DB 4B
	
	DB 27
INICIO:
    MOV	  DL, 11
    IN    0
    PUSH   AL
    IN    0
    PUSH   AL
    IN    0
    PUSH   AL
 
    MOV   AL, [BD]
    MOV   BL, [BF]
    MOV   [BF], AL
    MOV   [BD], BL
DESEMPILHA:
    MOV	  CL, [10]
    POP    BL
    SUB    BL,30
    JZ    ERRO
    DEC   CL
    JZ   FIM

LOOP:
    
    MOV    AL, [DL]
   
    OUT    1
    MOV    AL,0
    OUT    1
    DEC    BL
    JNZ    LOOP
	
     INC	  DL
    JMP    DESEMPILHA

ERRO:
    MOV    AL,2
    MOV    BL,C0
    MOV    CL,E

AQUI:
    MOV    DL,[AL]
    MOV    [BL],DL
    INC    AL
    INC    BL
    DEC    CL
    JNZ    AQUI


FIM:
    END