	LXI H,0100H	;0100H<-INPUT
	MOV C,M		;C<-COUNTER
	INX H
	LXI D,0200H	;0200H<-OUTPUT
LOOP:	MOV A,M
	XCHG
	MOV M,A
	XCHG
	INX H
	INX D
	DCR C
	JNZ LOOP
	HLT