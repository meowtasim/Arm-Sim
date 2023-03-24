.DATA
	A:.WORD 53,42,91,27
	B:.WORD 0
.TEXT
	ldr r1,=A;address of numbers
	ldr r2,[r1];upper part of first number
	ldr r3,[r1,#4]!;lower part of first number
	ldr r4,[r1,#4]!;upper part of second number
	ldr r5,[r1,#4]!;lower part of second number
	adds r8,r3,r5;adding lower part
	adc r7,r2,r4;adding upper part
	ldr r6,=B;location of answer
	str r7,[r6]
	str r8,[r6,#4]