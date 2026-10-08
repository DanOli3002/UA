# Mapa de registos:
# value:	$t0
# bit:		$t1
# i:		$t2
# flag.		$t9
	.data
str1:	.asciiz "Introduza um número: "
str2:	.asciiz "\nO valor em binário é: "
	.eqv print_string,4
	.eqv read_int,5
	.eqv print_char,11
	.text
	.globl main
main:	la $a0,str1			
	li $v0,print_string
	syscall				# print_string(str1)
	
	li $v0,read_int
	syscall
	move $t0,$v0			# value = read_int()
	
	la $a0,str2
	li $v0,print_string
	syscall				# print_string(str2)
	
	li $t2,0			# i = 0
	li $t9,0			# flag = 0

do:
	li $t3,0x80000000
	and $t1,$t0,$t3			# bit = value & 0x80000000

	srl $t1,$t1,31			# bit = (value & 0x80000000) >> 31
	
if:	beq $t9,1,then			# flag == 1
	bne $t1,0,then			# bit != 0

	j endif

then:	
	li $t9,1			# flag = 1

if2:	rem $t4,$t2,4
	bne $t4,0,endif2		# if((i % 4) == 0)
	
	li $a0,' '
	li $v0,print_char
	syscall				# print_char(' ')	
endif2:
	
	li $t6,0x30
	add $t5,$t6,$t1			# $t5 = 0x30 + bit
	
	move $a0,$t5
	li $v0,print_char
	syscall				# print_char(0x30 + bit)
	
endif:	sll $t0,$t0,1			# value = value << 1
	addi $t2,$t2,1			# i++
	
while:	blt $t2,32,do			# for(i < 32)
	jr $ra