	.data
str1:	.asciiz "Uma string qualquer"
str2:	.asciiz "AC1 - P"

	.text
	.globl main
main:	la $a0,str1		# guardar em $a0 a str1
	ori $v0,$0,4		# print_string é 4
	syscall
	
	ori $a0,$0,'\n'
	ori $v0,$0,11		# print_char('\n') é 11
	syscall			# serve para dar o parágrafo
	
	la $a0,str2		# guardar em $a1 a str2
	ori $v0,$0,4		# print_string é 4
	syscall
	
	jr $ra