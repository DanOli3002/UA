	.data
	
	.text
	.globl main
main:	ori $t0,$0,3		# $t0 é igual a um valor dado pelo user
	ori $t2,$0,8		# $t0 = 8
	add $t1,$t0,$t0		# $t1 = $t0 + $t0 = 3 + 3 = 6
	add $t1,$t1,$t2  	# $t1 = $t1 + $t2 = 6 + 8 = 14
	jr $ra
	