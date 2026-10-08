	.data
str1:	.asciiz "Introduza 2 numeros\n"
str2:	.asciiz "A soma dos dois numeros é: "
	.eqv print_string,4
	.eqv read_int,5
	.eqv print_int10,1
	
	.text
	.globl main
main:	la $a0,str1
	ori $v0,$0,print_string
	syscall			# faz print da str1
	
	ori $v0,$0,read_int
	syscall			# valor lido é guardado em $v0
	or $t0,$v0,$0		# $t0 é o primeiro valor lido
	
	ori $v0,$0,read_int
	syscall			# valor lido é guardado em $v0
	or $t1,$v0,$0		# $t1 é o segundo valor lido
	
	la $a0,str2
	ori $v0,$0,print_string
	syscall			# faz print da str2
	
	add $t2,$t0,$t1		# soma dos valores lidos
	or $a0,$0,$t2
	ori $v0,$0,print_int10
	syscall			# faz print da soma
	
	jr $ra