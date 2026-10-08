	.data
	.text
	.globl main
main:	ori $t0,$0,0x0002			# $t0 é o valor de gray
	or $t1,$0,$t0				# $t1 é o num
	
	srl $t3,$t1,4				# num >> 4
	xor $t1,$t1,$t3				# num ^ (num >> 4)
	
	srl $t3,$t1,2				# num >> 2
	xor $t1,$t1,$t3				# num ^ (num >> 2)
	
	srl $t3,$t1,1				# num >> 1
	xor $t1,$t1,$t3				# num ^ (num >> 1)
	
	move $t2,$t1				# bin = num
	jr $ra