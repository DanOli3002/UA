	.data
	.eqv read_int, 5
	.eqv print_int10, 1
	.eqv N, 35
a:	.space 140
b1:	.space 140	
	.text
	.globl main
main:
	li $t0, 0			# n_even = 0
	li $t1, 0			# n_odd = 0
	la $t2, a
	la $t3, b1
	
	li $t4, N
	sll $t4, $t4, 2
	addu $t4, $t4, $t2
	
for1:	bge $t2, $t4, endfor1
	
	li $v0, read_int
	syscall
	sw $v0, 0($t2)		#guardar valor
	
	addiu $t2, $t2, 4
	j for1
endfor1:
	la $t2, a
	
for2:	bge $t2, $t4, endfor2

	lw $t5, 0($t2)  		# Carregar a[i] em $t5
    	rem $t6, $t5, 2  		# Calcular a[i] % 2
	beq $6, $0, else
	
	sw $t5, 0($t3)		# Armazenar o valor ímpar em b1[n_odd]
	addiu $t3, $t3, 4
	addi $t1, $t1, 1
	j endif
else:
	addi $t0, $t0, 1
	j endif
endif:
	addiu $t2, $t2, 4 
    	j for2
endfor2:
	la $t3, b1
	sll $t6, $t1,2
	add $t6, $t6, $t3
	
for3:	bge $t3, $t6, endfor3

	lw $a0, 0($t3)		# Carregar b1[i] em $a0
	li $v0, print_int10
	syscall
	
	addiu $t3, $t3, 4
	j for3
endfor3:
	jr $ra