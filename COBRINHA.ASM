

    ORG    0    
    
JMP INICIO
    DB    29
    DB    1
    DB    4F
    DB    B
    DB    1F
    DB    4
    DB    8F
    DB    5
    DB    19
    DB    2
    DB    4F
    DB    5
    DB    1F
    DB    4
    DB    8F
    DB    9
    DB    2D
    DB    6
    DB    8A
    DB    2
    DB    1E
    DB    7
    DB    4E
    DB    B
    DB    1F
    DB    1
    DB    8E
    DB    C
    DB    2D
    DB    A
    DB    4D
    DB    4
    DB    1D
    DB    6
    DB    4D
    DB    8
    DB    2C
    DB    2
    DB    8F
    DB    5
    DB    2B
    DB    5
    DB    4E
    DB    5
    DB    2C
    DB    2    
    DB    8F
    DB    9
    DB    82
    DB    6
    DB    24
    DB    2

INICIO:
    MOV    AL,FF
    OUT    04
    MOV    BL,2
    MOV    DL,1A
REPETE:        
    MOV    AL,[BL]
    INC    BL
    MOV    CL,[BL]
    INC    BL
LOOP:    OUT    04
    DEC    CL
    JNZ    LOOP
    DEC    DL
    JNZ    REPETE
    END