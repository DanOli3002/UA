# Mapa de registos
# str: $s0
# val: $s1
# O main é, neste caso, uma sub-rotina intermédia
	.data
str:	.space 33
	.eqv STR_MAX_SIZE,33
	.eqv read_int,5
	.eqv print_string,4
	.text
	.globl main
main:	addiu $sp,$sp,-20
	sw $s0,0($sp)
	sw $s1,4($sp)
	sw $s2,8($sp)
	sw $s3,12($sp)
	sw $ra,16($sp)
do:	
	li $v0,read_int
	syscall
	move $s1,$v0 		# val = read_int()
	la $a0,str
	
	