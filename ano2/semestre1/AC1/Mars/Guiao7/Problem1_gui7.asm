	.eqv print_int10,1
	# int strlen(char *s)
	# $v0 = len
	# $t0 = *s
	.text
strlen:	li $v0,0		# len = 0
while:	lb $t0,0($a0)		# *s
	beq $t0,0,endw		# salta while se *s == 0
	addi $a0,$a0,1		# s++
	addi $v0,$v0,1		# len+++
	j while
endw:	jr $ra			# o retorno é em $v0, logo já está carregado
	
	.data
str:	.asciiz "Arquitetura de Computadores I"
	.text
	.globl main
main:	addiu $sp,$sp,-4
	sw $ra,0($sp)
	
	la $a0,str
	jal strlen
	move $a0,$v0
	li $v0,print_int10
	syscall
	li $v0,0
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra