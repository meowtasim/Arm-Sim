.DATA
    A:.WORD 1,2,3,4,5,6,7,8,9,10
    B:.WORD 0,0,0,0,0,0,0,0,0,0
.TEXT
	LDR R1,=A
	LDR R2,=B
	MOV R7,#0
	LDR R3,[R1]
	STR R3,[R2]
	ADD R2,R2,#4
	L:	LDR R3,[R1,#4]!
		STR R3,[R2]
		ADD R2,R2,#4
		ADD R7,R7,#1
		CMP R7,#9
		BNE L
		SWI 0X011