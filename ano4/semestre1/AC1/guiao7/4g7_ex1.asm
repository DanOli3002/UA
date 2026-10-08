# O argumento da função é passado em $a0 
# O resultado é devolvido em $v0 
# Sub-rotina terminal: não devem ser usados registos $sx 

strlen:	li $t1,0			# len = 0
while:	lb $t0,0($a0)			# while(*s++ != '\0')
	addiu $a0,$a0,1
	beq $t0,'\0',endw
	addi $t1,$t1,1			# len++
	j while
endw:	move $v0,$t1
	jr $ra
	
	.eqv print_int10,1
	.data
str1:	.asciiz "Arquitetura de Computadores I"
	.text
	.globl main
main:	addiu $sp,$sp,-4		# reserva espaço na stack
	sw $ra,0($sp)
	
	la $a0,str1
	jal strlen
	move $a0,$v0			# meter o valor de $v0 resultante para $a0
	li $v0,print_int10
	syscall				# print_int10(strlen(str))
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra