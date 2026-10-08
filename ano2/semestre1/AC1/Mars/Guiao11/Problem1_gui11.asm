	.eqv print_float,2
	.eqv print_string,4
	.eqv print_char,11
	.eqv print_intu,36
	
	.eqv of_id, 0
	.eqv of_fn, 4
	.eqv of_ln, 22
	.eqv of_gr, 40
	
	.data
	.align 2
stg:	.word 72343		# unsigned int id_number;
	.asciiz "Napoleao"	# char first_name[18];
	.space 9
	.asciiz "Bonaparte"	# char last_name[15];
	.space 5
	.align 2		# .space 3
	.float 5.1		# float grade:
	
str1:	.asciiz "\nN. Mec: "
str2:	.asciiz "\nNome: "
str3:	.asciiz "\nNota: "

	.text
	.globl main
main:	la $a0,str1
	li $v0,print_string
	syscall
	la $t0,stg
	lw $a0,of_id($t0)
	li $v0,print_string
	syscall
	la $t0,stg
	la $a0,str2
	li $v0, print_intu
	syscall
	la $t0,stg
	lw $a0, of_id($t0)
	li $v0, print_float
	syscall
	la $t0, stg
	la $a0, str2
	li $v0, print_string
	syscall
	lw $a0, of_ln($t0)  
	li $v0, print_string
	syscall
	la $t0, stg
	lw $a0, of_fn($t0)
	li $v0, print_string
	syscall
	li $v0, print_char
	li $a0, ','
	syscall
	la $t0, stg
	lw $a0, of_gr($t0)
	li $v0, print_float
	syscall
	li $v0, 10
	syscall
