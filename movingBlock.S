.DATA
    A:.WORD 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16
    B:.WORD 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.TEXT
    LDR R1,=A
    LDR R2,=B

    MOV R7,#0

    L: LDMIA R1!,{R3,R4,R5,R6}
    	STMIA R2!,{R3,R4,R5,R6}
    	ADD R7,R7,#1
    	CMP R7,#4
	BNE L
	SWI 0X011
