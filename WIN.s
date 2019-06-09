PORTA_DATA 		EQU 0x400043FC	
TIMER0_CTL			EQU 0x4003000C
	
	
			AREA 	routines, CODE, READONLY
			THUMB
			EXTERN  TRANSMIT
			EXPORT 	WIN
				
				
				
WIN			PROC
	
			PUSH 	{LR}
			
CLEARLOOP	
			MOV		R0,#0
			MOV		R1, #503
LOOP		MOV		R5, #0X0
			BL		TRANSMIT
			ADD		R0, #1
			CMP		R0,R1
			BNE		LOOP

			LDR R1,=PORTA_DATA
			LDR	R0,[R1]
			BIC	R0,#0x40				
			STR	R0,[R1]
			
			MOV	R5, #0xA3
			BL	TRANSMIT
			MOV	R5, #0X41
			BL	TRANSMIT
			
			LDR R1,=PORTA_DATA
			LDR	R0,[R1]
			ORR	R0,#0x40				
			STR	R0,[R1]	
			
			MOV		R5, #0X00
			BL		TRANSMIT
			MOV		R5, #0XC0
			BL		TRANSMIT
			MOV		R5, #0X20
			BL		TRANSMIT
			MOV		R5, #0X10
			BL		TRANSMIT
			MOV		R5, #0X10
			BL		TRANSMIT			
			MOV		R5, #0X60
			BL		TRANSMIT
			MOV		R5, #0X80
			BL		TRANSMIT
			MOV		R5, #0X00
			BL		TRANSMIT
			MOV		R5, #0X00
			BL		TRANSMIT
			MOV		R5, #0X00
			BL		TRANSMIT
			MOV		R5, #0XC0
			BL		TRANSMIT
			MOV		R5, #0X20
			BL		TRANSMIT
			MOV		R5, #0X10
			BL		TRANSMIT
			MOV		R5, #0X10
			BL		TRANSMIT
			MOV		R5, #0XE0
			BL		TRANSMIT
			MOV		R5, #0X00
			BL		TRANSMIT
			MOV		R5, #0X00
			BL		TRANSMIT
			
			LDR R1,=PORTA_DATA
			LDR	R0,[R1]
			BIC	R0,#0x40				
			STR	R0,[R1]
			
			MOV	R5, #0xA3
			BL	TRANSMIT
			MOV	R5, #0X42
			BL	TRANSMIT
			
			LDR R1,=PORTA_DATA
			LDR	R0,[R1]
			ORR	R0,#0x40				
			STR	R0,[R1]	
			
			MOV		R5, #0X00
			BL		TRANSMIT
			MOV		R5, #0X01
			BL		TRANSMIT
			MOV		R5, #0X1E
			BL		TRANSMIT
			MOV		R5, #0XE0
			BL		TRANSMIT
			MOV		R5, #0X00
			BL		TRANSMIT			
			MOV		R5, #0X00
			BL		TRANSMIT
			MOV		R5, #0X7F
			BL		TRANSMIT
			MOV		R5, #0X80
			BL		TRANSMIT
			MOV		R5, #0X78
			BL		TRANSMIT
			MOV		R5, #0X07
			BL		TRANSMIT
			MOV		R5, #0X80
			BL		TRANSMIT
			MOV		R5, #0X40
			BL		TRANSMIT
			MOV		R5, #0X70
			BL		TRANSMIT
			MOV		R5, #0X8C
			BL		TRANSMIT
			MOV		R5, #0X03
			BL		TRANSMIT
			MOV		R5, #0X00
			BL		TRANSMIT
			MOV		R5, #0X00
			BL		TRANSMIT
			
			LDR R1,=PORTA_DATA
			LDR	R0,[R1]
			BIC	R0,#0x40				
			STR	R0,[R1]
			
			MOV	R5, #0xA3
			BL	TRANSMIT
			MOV	R5, #0X43
			BL	TRANSMIT
			
			LDR R1,=PORTA_DATA
			LDR	R0,[R1]
			ORR	R0,#0x40				
			STR	R0,[R1]	
			
			MOV		R5, #0XF0
			BL		TRANSMIT
			MOV		R5, #0X08
			BL		TRANSMIT
			MOV		R5, #0X04
			BL		TRANSMIT
			MOV		R5, #0X83
			BL		TRANSMIT
			MOV		R5, #0XC2
			BL		TRANSMIT			
			MOV		R5, #0X82
			BL		TRANSMIT
			MOV		R5, #0X84
			BL		TRANSMIT
			MOV		R5, #0X88
			BL		TRANSMIT
			MOV		R5, #0X8C
			BL		TRANSMIT
			MOV		R5, #0X8B
			BL		TRANSMIT
			MOV		R5, #0X48
			BL		TRANSMIT
			MOV		R5, #0XB0
			BL		TRANSMIT
			MOV		R5, #0X90
			BL		TRANSMIT
			MOV		R5, #0X8F
			BL		TRANSMIT
			MOV		R5, #0X42
			BL		TRANSMIT
			MOV		R5, #0X32
			BL		TRANSMIT
			MOV		R5, #0X0C
			BL		TRANSMIT
			
			LDR R1,=PORTA_DATA
			LDR	R0,[R1]
			BIC	R0,#0x40				
			STR	R0,[R1]
			
			MOV	R5, #0xA3
			BL	TRANSMIT
			MOV	R5, #0X44
			BL	TRANSMIT
			
			LDR R1,=PORTA_DATA
			LDR	R0,[R1]
			ORR	R0,#0x40				
			STR	R0,[R1]	
			
			MOV		R5, #0X00
			BL		TRANSMIT
			MOV		R5, #0X03
			BL		TRANSMIT
			MOV		R5, #0X04
			BL		TRANSMIT
			MOV		R5, #0X08
			BL		TRANSMIT
			MOV		R5, #0X08
			BL		TRANSMIT			
			MOV		R5, #0X10
			BL		TRANSMIT
			MOV		R5, #0X14
			BL		TRANSMIT
			MOV		R5, #0X13
			BL		TRANSMIT
			MOV		R5, #0X10
			BL		TRANSMIT
			MOV		R5, #0X10
			BL		TRANSMIT
			MOV		R5, #0X10
			BL		TRANSMIT
			MOV		R5, #0X08
			BL		TRANSMIT
			MOV		R5, #0X04
			BL		TRANSMIT
			MOV		R5, #0X03
			BL		TRANSMIT
			MOV		R5, #0X00
			BL		TRANSMIT
			MOV		R5, #0X00
			BL		TRANSMIT
			MOV		R5, #0X00
			BL		TRANSMIT
			
			
			POP		{LR}
			BX 		LR
			
			ENDP
			END