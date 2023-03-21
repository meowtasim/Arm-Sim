.data
	a:.word 20
.text
	ldr r0,=a;pointer to memory location
	mov r1,#10;value to swap
	mov r2,r1;copying using temp
	ldr r1,[r0]
	str r2,[r0]