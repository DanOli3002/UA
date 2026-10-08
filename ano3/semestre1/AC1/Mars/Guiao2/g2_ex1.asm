	.data
	.text
	.globl main
main:	ori $t0,$0,0x0004	# o valor1 de entrada
	ori $t1,$0,0x0005	# o valor2 de entrada
	and $t2,$t0,$t1		# $t2 = $t0 & $t1
	or $t3,$t0,$t1		# $t3 = $t0 | $t1
	nor $t4,$t0,$t1		# $t4 = ~($t0 | #t1)
	xor $t5,$t0,$t1		# $t5 = $t0 ^ $t1
	
	jr $ra
