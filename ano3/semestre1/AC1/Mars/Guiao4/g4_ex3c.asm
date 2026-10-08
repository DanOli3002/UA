# Mapa de registos
# i = $t0
# soma = $t1
# array = $t2
# array[i] = $t3
	.data
	.eqv SIZE,4
	.eqv print_int10,1
array:	.word 7692,23,5,234
	.text
	.globl main
main:	li $t1,0			# soma = 0
	li $t0,0			# i = 0
	la $t2,array
	
while:	bge $t0,SIZE,endw		# while(i < SIZE)

	sll $t4,$t0,2
	addu $t3,$t2,$t4
	lw $t3,0($t3)			# *array[i]
	
	add $t1,$t1,$t3			# soma = soma + array[i]
	
	addi $t0,$t0,1			# i++
	j while
	
endw:	li $v0,print_int10
	move $a0,$t1
	syscall				# print_int10(soma)
	
	jr $ra