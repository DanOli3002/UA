	.data
str1:	.asciiz "Introduza 2 números\n"
str2:	.asciiz "A soma dos dois números é: "
	.eqv print_string,4
	.eqv read_int,5
	.eqv print_int10,1
	.text
	.globl main
main:	la $a0,str1
	ori $v0,$0,print_string
	syscall				# print_string(str1)
	
	ori $v0,$0,read_int
	syscall				# read_int()
	or $t0,$v0,$0			# $t0 = int lido
	
	ori $v0,$0,read_int
	syscall				# read_int()
	or $t1,$v0,$0			# $t1 = int lido
	
	la $a0,str2
	ori $v0,$0,print_string
	syscall				# print_string(str2)
	
	add $a0,$t1,$t0			# a + b = $t1 + $t0
	ori $v0,$0,print_int10
	syscall				# print_int10($a0)
	
	jr $ra