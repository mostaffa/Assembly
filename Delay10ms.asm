; WAITING TIME–SAVE VERSION
; Input: Delay in multiples of 10 ms
.def Delay  = R19
.def Delay1 = R20
.def Delay2 = R21
.def temp   = R16
init:
			ldi temp, High(Ramend)
			out SPH, temp
			ldi temp, LOW(Ramend)
			out SPL, temp
			ser temp
			out DDRB, temp
loop:
			ldi temp, 0b00000001
			ldi Delay, 5
			out PORTB, temp
			call wait
			ldi temp, 0b00000000
			out PORTB, temp
			ldi Delay, 5
			call wait
			rjmp loop
WAIT:		push Delay			; save Delay on Stack
			push Delay1			; save Delay1 on Stack
			push Delay2			; save Delay2 on Stack
DLOOP:		clr Delay1			; init Delay1 with 0
			ldi Delay2, 13		; init Delay2 with 13 (for 10 ms)
DLY:		dec Delay1			; inner waiting loop
			brne DLY			; runs 256 times 3 cycles
			dec Delay2			; outer waiting loop
			brne DLY			; runs inner loop 256 times
			dec Delay			; runs inner 2 loops Delay times
			brne DLOOP			; if ready
			pop Delay2			; restore Delay2 from Stack
			pop Delay1			; restore Delay1 from Stack
			pop Delay			; restore Delay from Stack
			ret					; return
