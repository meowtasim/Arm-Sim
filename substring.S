.data
	yourstring:.asciz "m bon"
	substring:.asciz "bond"
	suc:.asciz "Succesful"
	usuc:.asciz "UnSuccesful"
.text
	ldr r1,=yourstring
	ldr r3,=substring
	
	L1:	
		ldrb r2,[r1],#1;mismatch
		ldrb r4,[r3]
		cmp r2,#0
		beq not
		cmp r2,r4
		bne L1
		ldrb r2,[r1],#-1
	L2:	
		cmp r4,#0
		beq done
		ldrb r2,[r1],#1;mismatch
		ldrb r4,[r3],#1
		cmp r2,#0
		beq not
		cmp r2,r4
		ldrne r3,=substring
		ldrne r4,[r3]
		bne L1
		
		beq L2
	done:
		ldr r0,=suc
		swi 0x02
		swi 0x011
	not:
		ldr r0,=usuc
		swi 0x02
		swi 0x011
		