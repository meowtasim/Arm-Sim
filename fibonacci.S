.DATA
	A:.WORD 0
.TEXT
	MOV R0,#10
	SUB R0,R0,#2
	LDR R9,=A
	MOV R1,#0
	STR R1,[R9],#4
	MOV R2,#1
	STR R2,[R9],#4
	L:	MOV R4,R2
		ADD R2,R2,R1
		MOV R1,R4
		STR R2,[R9],#4
		SUB R0,R0,#1
		CMP R0,#0
		BNE L
	MOV R7,R2
		