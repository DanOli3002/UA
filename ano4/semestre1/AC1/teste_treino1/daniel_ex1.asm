# mapa de registo:
# num:	$t0
# i:	$t1
#order:	$t2
	.data
	.eqv read_int,5
	.eqv print_string,4
	.eqv print_int10,1
str1:	.asciiz "No set bits\n"
	.text
	.globl main
main:	li $t2,-1			# order = -1
	li $t1,0			# i = 0
	
	li $v0,read_int
	syscall				# read_int()
	move $t0,$v0			# num = read_int()
do:	
if1:	andi $t3,$t0,1			# %t3 = num & 1
	bne $t3,1,endif1		# if ((num & 1) == 1)
	move $t2,$t1			# order = i
endif1:	srl $t0,$t0,1			# num = num >> 1
	addi $t1,$t1,1			# i++
while:	blt $t1,32,do			# while (i < 32)
if2:	beq $t2,-1,else			# if (order != -1)
	move $a0,$t2
	li $v0,print_int10
	syscall				# print_int10(order)
	j continue
	
else:	la $a0,str1
	li $v0,print_string
	syscall				# print_string(str1)
continue:
	jr $ra