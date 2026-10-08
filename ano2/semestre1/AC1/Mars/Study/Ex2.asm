	.data
	.eqv SIZE, 8
val:	.word 8, 4, 15, -1987, 327, -9, 27, 16
str1:	.asciiz "Result is: "
char1:	.asciiz ", "
	.eqv print_int10, 1
	.eqv print_char, 11
	.eqv print_str, 4
	
	.text
	.globl main
main:
	la $t0, val
	li $t7, SIZE
	li $t1, 0			# i = 0
do:
	sll $t2, $t1, 2
	addu $t2, $t2, $t0
	lw $t3, 0($t2)		# val [i]
	
	add $t4, $t1, $t7		# i + SIZE
	div $t4, $t4, 2		# (i + SIZE)/2
	sll $t4, $t4, 2
	addu $t4, $t4, $t0
	lw $t5, 0($t4)		# val [(i + SIZE)/2]
	
	sw $t3, 0($t4)		#trocar as posições
	sw $t5, 0($t2)
	
	addi $t1, $t1, 1
	div $t6, $t7, 2
	bge $t1, $t6, enddo
	j do
enddo:
	li $t1, 0			# i = 0
do1:
	sll $t2, $t1, 2
	addu $t2, $t2, $t0
	lw $t3, 0($t2)
	
	move $a0, $t3
	li $v0, print_int10
	syscall
	
	la $a0, char1
	li $v0, print_char
	syscall
	
	addiu $t1, $t1, 1
	
	bge $t1, SIZE, enddo1
	j do1
enddo1:
	jr $ra
	
	
	
	
	
	
	
	