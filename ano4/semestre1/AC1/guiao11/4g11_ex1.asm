# typedef struct {		Alinhamento		SIZE		OFFSET
# int id_number			4			4		0
# char first_name[18]		1			18		4
# char last_name[15]		1			15		22
# float grade			4			4		37->40
# } student			4			44		
	.data
str1:	.asciiz "\nN, Mec: "
str2:	.asciiz "\nNome: "
str3:	.asciiz "\nNota: "
	.eqv print_string,4
	.eqv print_intu10,36
	.eqv print_char,11
	.eqv print_float,2
	.align 2
stg:	.word 72343
	.asciiz "Napoleao"		# ocupa 9 bytes
	.space 9			# encher o resto com 9 bytes (9+9=18)
	.asciiz "Bonaparte"		# ocupa 10 bytes
	.space 5			# encher resto (10+5=15)
	.float 5.1
	.text
	.globl main
main:	la $a0,str1
	li $v0,print_string
	syscall				# print_string(str1)
	
	la $t0,stg			# $t0 = &stg
	li $v0,print_intu10
	lw $a0,0($t0)
	syscall				# print_intu10(stg.id_number)
	
	la $a0,str2
	li $v0,print_string
	syscall				# print_string(str2)
	
	la $t0,stg
	addiu $a0,$t0,22
	li $v0,print_string
	syscall				# print_string(stg.last_name.)
	
	li $a0,','
	li $v0,print_char
	syscall
	
	la $t0,stg
	addiu $a0,$t0,4
	li $v0,print_string
	syscall				# print_string(stg.first_name)
	
	la $a0,str3
	li $v0,print_string
	syscall				# ptint_string(str3)
	
	la $t0,stg
	l.s $f12,40($t0)
	li $v0,print_float
	syscall				# print_float(stg.grade)
	
	li $v0,0			# return 0
	jr $ra