.DATA
	A:.WORD -5
.TEXT
	ldr r1,=A;address of number
	ldr r2,[r1]
	rsb r3,r2,#0;2's complement
	rsc r4,r2,#0;1's complement
	