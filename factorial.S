.TEXT
	MOV R1,#1
	MOV R2,#5
	L:	MUL R1,R2,R1
	  	SUB R2,R2,#1
		CMP R2,#1
		BNE L
	