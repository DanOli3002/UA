# $t0 - gray
# $t1 - num
# $t2 - bin
# $t3 - registo auxiliar para contar
	.eqv gray, 10
	.data
	.text
	.globl main
main: 	li $t0, gray		# Substituir bin pelos valores de entrada desejados
	move $t1,$t0 		# num = gray
	srl $t3,$t1,4 		# $t3 e um registo auxiliar para guardar num >> 4
	xor $t1,$t1,$t3		# num = num ^ (num >> 4)
	srl $t3,$t1,2		# $t2 e um registo auxiliar para guardar num >> 2
	xor $t1,$t1,$t3		# num = num ^ (num >> 2)
	srl $t3,$t1,1		# $t3 e um registo auxiliar para guardar num >> 1
	xor $t1,$t1,$t3		# num = num ^ (num >> 1)
	move $t2,$t1
	
	jr $ra 		# fim do programa