	.eqv print_int10,1
# Mapa de registos
# res: $v0
# s: $a0
# *s: $t0
# digit: $t1 
# Sub-rotina terminal: não devem ser usados registos $sx
	.text
atoi:	li $v0,0 		# res = 0;
while:	lb $t0,0($a0)		# *s
	blt $t0,'0',endw
	bgt $t0,'9',endw 
	li $t2,'0'
	sub $t1,$t0,$t2		# digit = *s - 0
	addiu $a0,$a0,1		# s++
	mul $v0,$v0,10		# res = res * 10
	addu $v0,$v0,$t1	# res = res + digit
	j while
endw:	jr $ra			# $v0 já tem res

	.data
str:	.asciiz "2020 e 2024 sao anos bissextos"
	.text
	.globl main
main:	addiu $sp,$sp,-4
	sw $ra,0($sp)
	
	la $a0,str		# print_int10(atoi(str))
	jal atoi
	move $a0,$v0
	li $v0,print_int10
	syscall
	li $v0,0
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra