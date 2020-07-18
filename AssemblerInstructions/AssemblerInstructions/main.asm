;
; AssemblerInstructions.asm
;
; Created: 7/18/2020 4:27:11 PM
; Author : Mostafa Othman.
;


; Replace with your application code


; Add Instruction:
ADD R17, R18	; R17 = R17 + R18
; NO ADDI !
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;SUB Instruction:
SUB R17, R18	; R17 = R17 - R18
; SUBI Instruction with Constant:
SUBI R17, 26	; R17 = R17 - 26 (Constant should be maximum 255, Only for Registers (R17, ..., R31))
				; Sets Flag (Z-Flag) when result is 0.
				; Takes 1 Takt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; AND Instruction:
AND R17, R18	; R17 = R17 AND R18
; ANDI Instruction with Constant:
ANDI R17, 26	; R17 = R17 AND 26 (Constant should be maximum 255, Only for Registers (R17, ..., R31))
				; Sets Flag (Z-Flag) when result is 0.
				; Takes 1 Takt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; OR Instruction:
OR R17, R18		; R17 = R17 OR R18
; ORI Instruction with Constant:
ORI R17, 26		; R17 = R17 OR 26 (Constant should be maximum 255, Only for Registers (R17, ..., R31))
				; Sets Flag (Z-Flag) when result is 0.
				; Takes 1 Takt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; EOR Instruction:
EOR R17, R18	; R17 = R17 XOR R18
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; COM Instruction:
COM R17			; R17 = NOT R17
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; CP Instruction:
CP R17, R18		; R17 - R18
; CPI Instruction with Constant:
CPI R17, 26		; R17 - 26 (Constant should be maximum 255, Only for Registers (R17, ..., R31))
				; Sets Flag (Z-Flag) when result is 0.
				; Takes 1 Takt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; NEG Instruction:
NEG R17			; R17 = Not R17 +1
				; Sets Flag (Z-Flag) when result is 0.
				; Takes 1 Takt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Inc Instruction:
INC R17			; R17 = R17 + 1
				; Sets Flag (Z-Flag) when result is 0.
				; Takes 1 Takt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; DEC Instruction:
DEC R17			; R17 = R17 - 1
				; Sets Flag (Z-Flag) when result is 0.
				; Takes 1 Takt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; CLR Instruction:
CLR R17			; R17 = 0
				; Sets Flag (Z-Flag) when result is 0.
				; Takes 1 Takt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; SER Instruction:
SER R17			; R17 = 255 (0xFF)
				; Sets Flag (Z-Flag) when result is 0.
				; Takes 1 Takt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; LSL Instruction:
LSL R17			; Left Shefting without Reset.
				; Sets Flag (Z-Flag) when result is 0.
				; Takes 1 Takt.
				; Like Multiplied by 2.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; LSR Instruction:
LSR R17			; Right Shefting without Reset.
				; Sets Flag (Z-Flag) when result is 0.
				; Takes 1 Takt.
				; Like Divided by 2.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ROL Instruction:
ROL R17			; Left Shefting with Reset.
				; Sets Flag (Z-Flag) when result is 0.
				; Takes 1 Takt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ROR Instruction:
ROR R17			; Right Shefting with Reset.
				; Sets Flag (Z-Flag) when result is 0.
				; Takes 1 Takt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; MOV Instruction:
MOV R17, R18	; R17 = R18
				; Sets NO Flag.
				; Takes 1 Takt
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; LDI Instruction:
LDI R17, 26		; R17 = 26
				; ONLY FOR (R16, ..., R31)
				; Sets NO Flag.
				; Takes 1 Takt.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; LDS Instruction:
LDS R17, 0xFA	; R17 = 0xFA (Address in Data Memory)
				; Sets NO Flag.
				; Two Words.
				; Takes 2 Takts.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; STS Instruction:
STS DDRA, R17	; DDRA (Address in Data Memory) = R17
				; Sets NO Flag.
				; Two Words.
				; Takes 2 Takts.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; IN Instruction:
IN R17, DDRA	; R17 = DDRA (Address in Data Memory).
				; Sets NO Flag.
				; Takes 1 Takt.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; OUT Instruction:
OUT DDRA, R17	; DDRA (Address in Data Memory) = R17.
				; Sets NO Flag.
				; Takes 1 Takt.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

