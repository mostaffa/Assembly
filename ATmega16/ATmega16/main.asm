;
; ATmega16.asm
;
; Created: 6/19/2020 7:40:59 PM
; Author : smoge
;


; Replace with your application code
ldi R17, 0b00000000
start:
    inc r17
	out DDRA, R17
	out PORTA, R17
	rjmp Delay_1sec
    rjmp start

Delay_1sec:                 ; For CLK(CPU) = 1 MHz
    LDI     R18,   8       ; One clock cycle;
Delay1:
    LDI     R19,   125     ; One clock cycle
Delay2:
    LDI     R20,   250     ; One clock cycle
Delay3:
    DEC     R20            ; One clock cycle
    NOP                     ; One clock cycle
    BRNE    Delay3          ; Two clock cycles when jumping to Delay3, 1 clock when continuing to DEC

    DEC     R19            ; One clock cycle
    BRNE    Delay2          ; Two clock cycles when jumping to Delay2, 1 clock when continuing to DEC

    DEC     R18            ; One clock Cycle
    BRNE    Delay1          ; Two clock cycles when jumping to Delay1, 1 clock when continuing to RET
rjmp start