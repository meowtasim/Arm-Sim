.TEXT
	MOV R1,#11
	L1:	SUB R1,R1,#2
		CMP R1,#0
		BEQ EVEN
		CMP R1,#1
		BEQ ODD
		B L1
		SWI 0X011
	EVEN:	MOV R0,#0
		SWI 0X011

	ODD:	MOV R0,#1
		SWI 0X011