	.data
	.text
	.globl main 
main: 	ori $t0,$0,0x0f1e
	nor $t1,$0,$t0
	jr $ra