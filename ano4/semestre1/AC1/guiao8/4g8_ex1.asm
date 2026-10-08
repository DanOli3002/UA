# Mapa de registos:
# $v0:	res
# $a0:	s
# $t0:	*s
# $t1:	digit
atoi:	li $v0,0			# res = 0
while:	lb $t0,0,($a0)			
	blt $t0,'0',endw
	bgt $t0,'9',endw
	
	addi $t1,$t0,-0x30
	addi $a0,$a0,1			# *s++
	
	mulu $v0,$v0,10			# res = 10 * res
	addu $v0,$v0,$t1		# res = 10 * res + digit
	j while
endw:	jr $ra

	.data
str:	.asciiz "2020 2 2024 sao anos bissextos"
	.eqv print_int10,1
	.text
	.globl main
main:	addiu $sp,$sp,-4
	sw $ra,0($sp)

	la $a0,str

	jal atoi
	
	move $a0,$v0
	li $v0,print_int10
	syscall
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	
	jr $ra
	
	