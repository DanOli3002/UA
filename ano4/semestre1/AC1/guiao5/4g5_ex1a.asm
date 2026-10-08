# Mapa de Registos:
# $t0:	i
# $t1:	lista
# $t2:	lista + i
	.data
	.eqv SIZE,5
str:	.asciiz "\nIntroduza um número: "
	.align 2
lista:	.space 20		# SIZE * 4
	.eqv print_string,4
	.eqv read_int,5
	.text
	.globl main
main:	li $t0,0		# i = 0
	
for:	bge $t0,SIZE,endfor	# for(i < SIZE)
	la $a0,str
	li $v0,print_string
	syscall			# print_string(str)
	
	li $v0,read_int
	syscall			# read_int()
	
	la $t1,lista		# $t1 = lista ou &lista[0]
	sll $t2,$t0,2
	addu $t2,$t1,$t2	# $t2 = &lista[i] 
	sw $v0,0($t2)		# lista[i] = read_int()
	addi $t0,$t0,1		# i++
	j for
	
endfor:	jr $ra