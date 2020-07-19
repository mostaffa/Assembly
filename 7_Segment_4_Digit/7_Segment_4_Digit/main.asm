;
; 7_Segment_4_Digit.asm
;
; Created: 7/18/2020 9:04:21 PM
; Author : smoge
;


; Replace with your application code
LDI R17, 0b00000001
CLR R20
IN R20, DDRC
OUT DDRC, R20
call rolLeft
rolLeft:
	OUT DDRA, R17
	OUT PORTA, R17
	sbis PC0, 1
	breq decSpeed
	rjmp rolLeft

decSpeed:
	;OUT DDRC, R24
	cpi r20, 1
	brne decSpeed
	LSL R17
		CLR R20
	IN R20, DDRC
	RJMP rolLeft
Delay_1sec:                ; For CLK(CPU) = 1 MHz
    LDI     R18,   8       ; One clock cycle;
Delay1:
    LDI     R19,   125     ; One clock cycle
Delay2:
    LDI     R20,   250     ; One clock cycle
Delay3:
    DEC     R20            ; One clock cycle
    NOP                    ; One clock cycle
    BRNE    Delay3         ; Two clock cycles when jumping to Delay3, 1 clock when continuing to DEC

    DEC     R19            ; One clock cycle
    BRNE    Delay2         ; Two clock cycles when jumping to Delay2, 1 clock when continuing to DEC

    DEC     R18            ; One clock Cycle
    BRNE    Delay1         ; Two clock cycles when jumping to Delay1, 1 clock when continuing to RET
RET