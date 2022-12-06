;0FFE6 --> CWR, 80 --> CW, 0FFE0 --> PORT1, 0FFE2 --> PORT2
MOV DX, 0FFE6H
MOV AX, 80H
OUT DX, AX
START:  MOV AX, 0000H
        MOV DX, 0FFE0H
        OUT DX, AX
        MOV DX, 0FFE2H
        OUT DX, AX
        INC AL
        MOV BL, 08
LOOP1:  MOV DX, 0FFE0H
        OUT DX, AX
        PUSH AX
        CALL DELAY
        POP AX
        ROL AL, 01H
        DEC BL
        JNE LOOP1
        MOV BL, 08
LOOP2:  MOV DX, 0FFE2H
        OUT DX, AX
        PUSH AX
        CALL DELAY
        POP AX
        ROL AL, 01H
        DEC BL
        JNE LOOP2
        JMP START
DELAY:  PUSH CX
        MOV CX, 0FFFFH
REPEAT: LOOP REPEAT
        POP CX
        RET
        INT 03