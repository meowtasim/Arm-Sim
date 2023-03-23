.data
	yourstring:.asciz "My name is James"
.text
	ldr r1,=yourstring
	swi 0x02
		