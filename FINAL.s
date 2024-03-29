POSITION		EQU 0X20000400	
BATTLE_COUNTER	EQU	0X2000040F
CIV_COUNTER		EQU	0X20000410
SCREEN_COUNTER  EQU 0X20000411
MINE_POSITION	EQU	0X20000412	
PORTA_DATA 		EQU 0x400043FC	
MINE_COUNTER	EQU 0X20000424		
			
			
			
			AREA 	routines, CODE, READONLY
			THUMB
			EXTERN  TRANSMIT
			EXTERN	WIN
			EXTERN LOSE_B
			EXTERN	LOSE_C
			EXTERN	TIMER_INIT
			EXPORT 	FINAL



FINAL		PROC
			PUSH{LR}			
			MOV R9,#0
			MOV R10,#0

FINAL_CIV
		
			CMP R9,#6
			MOVEQ R9,#0
			ADDEQ R10,#2
			CMP R10,#8
			MOVEQ R10,#0
			MOVEQ R9,#0
			BEQ FINAL_BAT
			LDR R1,=MINE_POSITION
			LDRB R0,[R1,R10]
			CMP R0,#0xFF
			MOVEQ R10,#6
			MOVEQ R9,#6
			BLEQ FINAL_CIV
			LDR R1,=POSITION
			LDRB R2,[R1,R9]
			CMP R0,R2
			ADDLO R9,#2
			BLO	FINAL_CIV
			ADD R2,R2,#8
			CMP R0,R2
			ADDGT R9,#2
			BGT FINAL_CIV
			LDR R1,=(MINE_POSITION  + 1)
			LDRB R0,[R1,R10]
			LDR R1,=(POSITION  + 1)
			LDRB R2,[R1,R9]
			CMP R0,R2
			ADDLO R9,#2
			BLO	FINAL_CIV
			ADD R2,R2,#8
			CMP R0,R2
			BLLS LOSE_C
			BLS	FINISH
			ADDGT R9,#2
			B	FINAL_CIV
			
FINAL_BAT
			CMP R9,#8
			ADDEQ R10,#2
			MOVEQ R9,#0
			CMP R10,#8
			MOVEQ R10,#0
			MOVEQ R9,#0
			BEQ CHECK_BAT
			LDR R1,=MINE_POSITION
			LDRB R0,[R1,R10]
			CMP R0,#0xFF
			MOVEQ R10,#6
			MOVEQ R9,#8
			BLEQ FINAL_BAT
			LDR R1,=POSITION+ 6 
			LDRB R2,[R1,R9]
			CMP R0,R2
			ADDLO R9,#2
			BLO	FINAL_BAT
			ADD R2,R2,#8
			CMP R0,R2
			ADDGT R9,#2
			BGT FINAL_BAT
			LDR R1,=(MINE_POSITION + 1)
			LDRB R0,[R1,R10]
			LDR R1,=(POSITION + 7)
			LDRB R2,[R1,R9]
			CMP R0,R2
			ADDLO R9,#2
			BLO	FINAL_BAT
			ADD R2,R2,#8
			CMP R0,R2
			ADDGT R9,#2
			BGT FINAL_BAT
			MOV R0,#0xFF
			LDR R1,=(POSITION+6)
			STRB R0,[R1,R9]
			LDR R1,=(POSITION+7)
			STRB R0,[R1,R9]
			ADDLS R9,#2
			B FINAL_BAT

CHECK_BAT
			LDR R1,=POSITION+6
			LDR R0,[R1]
			CMP R0,#0xFFFFFFFF
			BLNE LOSE_B
			CMP R0,#0xFFFFFFFF
			BLEQ  WIN
			
FINISH			
			POP		{LR}
			BX		LR
			
			
			ENDP
			ALIGN
			END