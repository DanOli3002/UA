	.data
	.text
	.globl main
main:	ori $t0,$0,0x0008	# $t0 é o valor de gray
	or $t1,$0,$t0		# $t1 é o num
	
	srl $t3,$t1,4		# deslocamento a direita de 4
	xor $t1,$t1,$t3		# num ^ (num >> 4)
	
	srl $t3,$t1,2		# deslocamento a direita de 2
	xor $t1,$t1,$t3		# num ^ (num >> 2)
	
	srl $t3,$t1,1		# deslocamento a direita de 1
	xor $t1,$t1,$t3		# num ^ (num >> 1)
	
	or $t2,$0,$t1		# bin = num
	jr $ra