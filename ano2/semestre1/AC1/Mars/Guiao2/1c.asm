	.data
	.text
	.globl main 
main: 	ori $t0,$0,0x0F1E # substituir val_1 pelo valor dado
	ori $t1,$0,0xFFFF # dar a $t1 todos os bits setados (0xFFF)
	nor $t2,$t0,$t1 # Aplicando NOR com todos os bits setados (0xFFFF)
	xor $t2,$t2,$t1 # Aplicando XOR com todos os bits setados (0xFFFF)
			# Agora $t2 contém a negação bit a bit de $t0
	jr $ra 		# fim do programa
	
	# Isto está errado