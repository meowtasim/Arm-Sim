.DATA
	A:.WORD 0,1,2,3,4,5
	B:.WORD 2
	suc:.asciz "Successful"
	usuc:.asciz "UnSuccessful"

.TEXT
	LDR R1,=A
	LDR R2,=B
	MOV R4,#5;KEY LENGTH
	MOV R5,#0;COUNTER
	MOV R7,#1;STATUS
	MOV R3,#2
	L:	LDR R6,[R1]
		CMP R3,R6
		BEQ DONE
		ADD R5,R5,#1
		ADD R1,R1,#4
		CMP R4,R5
		BNE L
		ADD R7,R7,#-1
	DONE:	STR R7,[R2]
		cmp r7,#0
		beq UNSUC
	SUC:	ldr r0,=suc
		swi 0x02
		swi 0x011
		
	UNSUC:	ldr r0,=usuc
		swi 0x02
		swi 0x011