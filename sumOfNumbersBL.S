.text
	ldr r0,=a
	ldr r3,[r0]
	add r3,r3,#1
	BL sum
	swi 0x011
	sum:	mov r1,#0
		mov r7,#0
	L:	add r7,r7,r1
		add r1,r1,#1
		cmp r1,r3
		bne L
		mov pc,lr
		
.data
	a:.word 30