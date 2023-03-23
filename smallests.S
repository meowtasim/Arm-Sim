.DATA
	A:.WORD 53,42,91,27,73,31,69
.TEXT
	mov r1,#7;size
	ldr r2,=A;pointer to array
	ldr r7,[r2];r7 holds the smallest element
	loop:	sub r1,r1,#1
		ldr r5,[r2] 	;copy data pointed to in r5
		cmp r7,r5	;check for smallest current element
		movgt r7,r5	;move r5 to r7 is r5 element is smaller
		add r2,r2,#4	;point to the next element in array
		cmp r1,#0
		bne loop
	swi 0x011
	
		