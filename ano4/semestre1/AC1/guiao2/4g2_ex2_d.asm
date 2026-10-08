	.data
	.text
	.globl main
main:	ori $t0,$0,0x000f		# guardar em $t0 0 "bin"
	srl $t2,$t0,1			# deslocamento para a direita
	xor $t1,$t0,$t2			# $t1 é o bin convertido a gray
					# gray = bin ^ (bin >> 1)
	jr $ra