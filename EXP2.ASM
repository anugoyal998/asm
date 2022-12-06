; DS: 4000, SI: 2000
MOV AX, 4000H
MOV DS, AX
MOV SI, 2000H
MOV DX, 2001H
MOV CH, 04H
BACK1:  MOV CL, CH
        MOV DI, DX
BACK:   MOV AL, [SI]
        MOV BL, [DI]
        CMP AL, BL
        JNC NEXT
        MOV [SI], BL ; SWAP
        MOV [DI], AL
NEXT:   INC DI
        DEC CL
        JNZ BACK
        INC SI
        INC DX
        DEC CH
        JNZ BACK1
INT 03H