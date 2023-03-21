.DATA
    	A:.WORD 7
    	B:.WORD 9
	C:.WORD 0
.TEXT
    	LDR R5,=A
    	LDR R6,=B
	LDR R1,[R5]
    	LDR R2,[R6]
	LDR R3,=C
	ADD R4,R1,R2
	STR R4,[R3]