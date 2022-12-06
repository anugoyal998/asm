; TRIANGULAR WAVE
DELAY:  EQU 6030
        ORG DELAY
        NOP
        NOP
        NOP
        RET
        ORG 6000
START:  MOV AX, 0000H
        MOV DS, AX ; DATA SEGMENT
        MOV AX, 0FFD6 ;CWR
        MOV DX, AX
        MOV AL, 80 ;CW
        OUT DX, AL
AGAIN:  MOV CX, 0FFH
        MOV AX, 0000H
UP:     MOV DX, 0FFD0H ; PORT ADDRESS
        OUT DX, AL
        INC AL  
        CALL DELAY
        LOOP UP
        MOV CX, 0FFH
DOWN:   MOV DX, 0FFD0H ; PORT ADDRESS
        OUT DX, AL
        DEC AL
        CALL DELAY
        LOOP DOWN
        JMP AGAIN
        INT 03H

; sQUARE WAVE
DELAY:  EQU 6030
        ORG DELAY
        NOP
        NOP
        NOP
        RET
        ORG 6000
START:  MOV AX, 0000H
        MOV DS, AX ; DATA SEGMENT
        MOV AX, 0FFD6 ;CWR
        MOV DX, AX
        MOV AL, 80 ;CW
        OUT DX, AL
AGAIN:  MOV CX, 0FFH
        MOV AX, 0000H
UP:     MOV DX, 0FFD0H ; PORT ADDRESS
        OUT DX, AL
        CALL DELAY
        LOOP UP
        MOV CX, 0FFH
DOWN:   MOV DX, 0FFD0H ; PORT ADDRESS
        MOV AX, 0FFH
        OUT DX, AL
        CALL DELAY
        LOOP DOWN
        JMP AGAIN
        INT 03H