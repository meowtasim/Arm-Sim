.TEXT ;CODE SEGMENT
 LDR R1,=A
 LDR R2,=B	
 LDR R6,=C

 LDR R3,[R1]
 LDR R4,[R2]

 ADD R5,R3,R4

 STR R5,[R6]
 SWI 0X011 ;Logical end

.DATA ;DATA SEGMENT
 A: .WORD 0x12345678
 B: .WORD 0x11111111
 C: .WORD 0X00000000
  ;physical end