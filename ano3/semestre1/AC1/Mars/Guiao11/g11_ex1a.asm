	.data
	.eqv print_float,2
	.eqv print_string,4
	.eqv print_char,11
	.eqv print_intu10,36
str1:	.asciiz "\nNºMec: "
str2:	.asciiz "\nNome: "
str3:	.asciiz "\nNota: "
	.align 2
stg:	.word 72343
	.asciiz "Napoleao"
	.space 9			# 18 - (strlen("Napoleao") + 1)
	.asciiz "Bonaparte"
	.space 5			# 15 - (strlen("Bonaparte") + 1)
	.float 5.1
	.text
	.globl main
main:	
	la $a0,str1
	li $v0,print_string
	syscall				# print_string(str1)
	
	la $t0,stg
	lw $a0,0($t0)
	li $v0,print_intu10
	syscall				# print_intu10(stg.id_numver)
	
	la $a0,str2
	li $v0,print_string
	syscall				# print_string(str2)
	
	# não é necessátio fazer o la, mas aqui é feito para vermos onde acontece
	la $t0,stg
	addiu $a0,$t0,22
	li $v0,print_string		# print_string(str2)
	syscall
	
	li $a0,','
	li $v0,print_char
	syscall				# print_char(',')
	
	# não é necessátio fazer o la, mas aqui é feito para vermos onde acontece
	la $t0,stg
	addiu $a0,$t0,4
	li $v0,print_string
	syscall				# print_string(stg.first_name)
	
	la $a0,str3
	li $v0,print_string
	syscall 			# print_string(str3)
	
	# não é necessátio fazer o la, mas aqui é feito para vermos onde acontece
	la $t0,stg
	l.s $f12,40($t0)
	li $v0,print_float
	syscall				# print_float(stg-grade)
	
	li $v0,0			# return 0
	jr $ra