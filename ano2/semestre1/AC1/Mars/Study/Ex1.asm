	.data
	.eqv min, 0x7FFFFFFF
	.eqv max, 0x80000000
str1:	.asciiz "Digite ate 20 inteiros (zero para terminar) :"
str2:	.asciiz "Maximo/minimo são: "
char1:	.asciiz " : "
	.eqv print_str, 4
	.eqv print_int10, 1
	.eqv print_char, 11
	.eqv read_int, 5

	.text
	.globl main
main:
	li $t0, 0			# n = 0
	li $t1, min
	li $t2, max
	
	la $a0, str1
	li $v0, print_str
	syscall
	
do:	
	li $v0, read_int
	syscall
	move $t3, $v0
	
	beq $t3, $0, endif
	
	ble $t3, $t2, endif1
	move $t2, $t3
endif1:
	bge $t3, $t1, endif
	move $t1, $t3
endif:
	addi $t0, $t0, 1

	bge $t0, 20, enddo
	beq $t3, $0, enddo
	j do
enddo:
	la $a0, str2
	li $v0, print_str
	syscall
	
	move $a0, $t2
	li $v0, print_int10
	syscall
	
	la $a0, char1
	li $v0, print_char
	syscall
	
	move $a0, $t1
	li $v0, print_int10
	syscall
	
	jr $ra
	
	
	