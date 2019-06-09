PORTA_DATA 		EQU 0x400043FC	
;TIMER0_CTL			EQU 0x4003000C
	
	
			AREA 	routines, CODE, READONLY
			THUMB
			EXTERN  TRANSMIT
			EXPORT 	BEGINING
				
				
				
BEGINING	PROC
	
			PUSH 	{LR}
			LDR R1,=PORTA_DATA
			LDR	R0,[R1]
			BIC	R0,#0x40				
			STR	R0,[R1]
			
			MOV	R5, #0x9F
			BL	TRANSMIT
			MOV	R5, #0X41
			BL	TRANSMIT
			MOV	R5, #0X0D
			BL	TRANSMIT
			LDR R1,=PORTA_DATA
			LDR	R0,[R1]
			ORR	R0,#0x40				
			STR	R0,[R1]	
			
			MOV		R5, #0X0			
			BL		TRANSMIT
			MOV		R5, #0X0
			BL		TRANSMIT
			MOV		R5, #0XC4
			BL		TRANSMIT
			MOV		R5, #0X30
			BL		TRANSMIT
			MOV		R5, #0X30
			BL		TRANSMIT			
			MOV		R5, #0X48			
			BL		TRANSMIT
			MOV		R5, #0X88
			BL		TRANSMIT
			MOV		R5, #0X8E
			BL		TRANSMIT			
			MOV		R5, #0X88
			BL		TRANSMIT
			MOV		R5, #0X48
			BL		TRANSMIT
			MOV		R5, #0X30			
			BL		TRANSMIT
			MOV		R5, #0X30
			BL		TRANSMIT
			MOV		R5, #0XC4
			BL		TRANSMIT			
			MOV		R5, #0X0			
			BL		TRANSMIT
			MOV		R5, #0X0
			BL		TRANSMIT			
			
			
			LDR R1,=PORTA_DATA
			LDR	R0,[R1]
			BIC	R0,#0x40				
			STR	R0,[R1]
			
			MOV	R5, #0x9F
			BL	TRANSMIT
			MOV	R5, #0X42
			BL	TRANSMIT
			
			LDR R1,=PORTA_DATA
			LDR	R0,[R1]
			ORR	R0,#0x40				
			STR	R0,[R1]				
			
			
			MOV		R5, #0X1			
			BL		TRANSMIT
			MOV		R5, #0X1
			BL		TRANSMIT
			MOV		R5, #0X27
			BL		TRANSMIT
			MOV		R5, #0X19
			BL		TRANSMIT
			MOV		R5, #0X19
			BL		TRANSMIT			
			MOV		R5, #0X25			
			BL		TRANSMIT
			MOV		R5, #0X23
			BL		TRANSMIT
			MOV		R5, #0XE2
			BL		TRANSMIT			
			MOV		R5, #0X23
			BL		TRANSMIT
			MOV		R5, #0X25
			BL		TRANSMIT
			MOV		R5, #0X19			
			BL		TRANSMIT
			MOV		R5, #0X19
			BL		TRANSMIT
			MOV		R5, #0X27
			BL		TRANSMIT			
			MOV		R5, #0X1			
			BL		TRANSMIT
			MOV		R5, #0X1
			BL		TRANSMIT
			
			
			LDR R1,=PORTA_DATA
			LDR	R0,[R1]
			BIC	R0,#0x40				
			STR	R0,[R1]
			
			MOV	R5, #0x8D
			BL	TRANSMIT
			MOV	R5, #0X43
			BL	TRANSMIT

			LDR R1,=PORTA_DATA
			LDR	R0,[R1]
			ORR	R0,#0x40				
			STR	R0,[R1]	
			
			MOV		R5, #0X7F			;B
			BL		TRANSMIT
			MOV		R5, #0X49
			BL		TRANSMIT
			MOV		R5, #0X49
			BL		TRANSMIT
			MOV		R5, #0X49
			BL		TRANSMIT
			MOV		R5, #0X36
			BL		TRANSMIT			
			MOV		R5, #0X7E			;A
			BL		TRANSMIT
			MOV		R5, #0X11
			BL		TRANSMIT
			MOV		R5, #0X11
			BL		TRANSMIT			
			MOV		R5, #0X11
			BL		TRANSMIT
			MOV		R5, #0X7E
			BL		TRANSMIT
			MOV		R5, #0X01			;T
			BL		TRANSMIT
			MOV		R5, #0X01
			BL		TRANSMIT
			MOV		R5, #0X7F
			BL		TRANSMIT
			MOV		R5, #0X01
			BL		TRANSMIT
			MOV		R5, #0X01
			BL		TRANSMIT
			MOV		R5, #0X01			;T
			BL		TRANSMIT
			MOV		R5, #0X01
			BL		TRANSMIT
			MOV		R5, #0X7F
			BL		TRANSMIT
			MOV		R5, #0X01
			BL		TRANSMIT
			MOV		R5, #0X01
			BL		TRANSMIT
			MOV		R5, #0X7F			;L
			BL		TRANSMIT
			MOV		R5, #0X40
			BL		TRANSMIT
			MOV		R5, #0X40
			BL		TRANSMIT
			MOV		R5, #0X40
			BL		TRANSMIT
			MOV		R5, #0X40
			BL		TRANSMIT
			MOV		R5, #0X7F			;E
			BL		TRANSMIT
			MOV		R5, #0X49
			BL		TRANSMIT
			MOV		R5, #0X49
			BL		TRANSMIT
			MOV		R5, #0X49
			BL		TRANSMIT
			MOV		R5, #0X41
			BL		TRANSMIT
			MOV		R5, #0X46			;S
			BL		TRANSMIT
			MOV		R5, #0X49
			BL		TRANSMIT
			MOV		R5, #0X49
			BL		TRANSMIT
			MOV		R5, #0X49
			BL		TRANSMIT
			MOV		R5, #0X31
			BL		TRANSMIT
			MOV		R5, #0X7F			;H
			BL		TRANSMIT
			MOV		R5, #0X08
			BL		TRANSMIT
			MOV		R5, #0X08
			BL		TRANSMIT
			MOV		R5, #0X08
			BL		TRANSMIT
			MOV		R5, #0X7F
			BL		TRANSMIT
			MOV		R5, #0X00			;I
			BL		TRANSMIT
			MOV		R5, #0X41
			BL		TRANSMIT
			MOV		R5, #0X7F
			BL		TRANSMIT
			MOV		R5, #0X41
			BL		TRANSMIT
			MOV		R5, #0X00
			BL		TRANSMIT
			MOV		R5, #0X7F			;P
			BL		TRANSMIT
			MOV		R5, #0X09
			BL		TRANSMIT
			MOV		R5, #0X09
			BL		TRANSMIT
			MOV		R5, #0X09
			BL		TRANSMIT
			MOV		R5, #0X06
			BL		TRANSMIT
			MOV		R5, #0X46			;S
			BL		TRANSMIT
			MOV		R5, #0X49
			BL		TRANSMIT
			MOV		R5, #0X49
			BL		TRANSMIT
			MOV		R5, #0X49
			BL		TRANSMIT
			MOV		R5, #0X31
			BL		TRANSMIT
		
			
			POP		{LR}
			BX 		LR
			
			ENDP
			END