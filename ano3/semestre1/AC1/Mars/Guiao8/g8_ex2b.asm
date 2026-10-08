# Mapa de registos
# str:		$s0
# val:		$s1
# O main é, neste caso, uma sub-rotina intermédia
	.data
	.eqv print_string,4
	.eqv read_int,5
	.eqv print_char,11
	.eqv print_int10,1
	.eqv SIZE,33
str:	.space SIZE
par:	.asciiz "\n"
	.text
	.globl main
main:	addiu $sp,$sp,-4		# prologo
	sw $ra,0($sp)

do3:	li $v0,read_int
	syscall				# val = read_int()
	move $s1,$v0
	
	move $a0,$s1
	li $a1,2
	la $a2,str
	jal itoa
	
	move $a0,$v0
	li $v0,print_string
	syscall				# print_string(itoa(val, 2, str))
	
	move $a0,$s1
	li $a1,8
	la $a2,str
	jal itoa
	
	move $a0,$v0
	li $v0,print_string
	syscall				# print_string(itoa(val, 8, str))
	
	move $a0,$s1
	li $a1,16
	la $a2,str
	jal itoa
	
	move $a0,$v0
	li $v0,print_string
	syscall				# pritn_string(itoa(val, 16, str))
	
	la $a0,par
	li $v0,print_string
	syscall				# print_string("\n")
	
while3:	bne $t0,0,do3			# while(val != 0)

	li $v0,0
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	
	jr $ra
	
#############################################
# Mapa de registos
# n:		$a0 -> $s0
# b:		$a1 -> $s1
# s:		$a2 -> $s2
# p:		$s3
# digit:	$t0
# Sub-rotina intermédia
itoa:	addiu  $sp,$sp,-20
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	sw $s3,16($sp)
	
	move $s0,$a0
	move $s1,$a1
	move $s2,$a2
	move $s3,$a2			# char *p = s
	
do4:	rem $t0,$s0,$s1			# digit = n % b

	div $s0,$s0,$s1			# n = n / b
	
	move $a0,$t0
	jal toascii			# toascii(digit)
	
	sb $v0,0($s3)			# *p = toascii(digit)
	addiu $s3,$s3,1			# p++
	
while4:	bgt $s0,0,do4			# while(n > 0)

	li $t1,'\0'
	sb $t1,0($s3)
	
	move $a0,$s2
	jal strrev			# strrev(s)
	
	move $v0,$s2
	
	lw $ra,0($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	lw $s3,16($sp)
	addiu $sp,$sp,20
	
	jr $ra
	
#############################################

toascii:
	addi $a0,$a0,0x30		# v = v + '0'
	
if:	ble $a0,'9',endif		# if(v > '9')

	addi $a0,$a0,7			# v = v + 7
	
endif:	move $v0,$a0

	jr $ra
	
#############################################
	
exchange:
	lb $t0,0($a0)			# $t0 = *c1
	lb $t1,0($a1)			# $t1 = *c2
	sb $t1,0($a0)			# *c1 = *c2
	sb $t0,0($a1)			# *c2 = aux
	jr $ra

#############################################

# Mapa de registos:
# str:	$a0 -> $s0 (argumento é passado em $a0)
# p1:	$s1	(registo callee-saved)
# p2:	$s2	(registo callee-saved)

strrev:	addiu $sp,$sp,-16		# reserva espaço na stack
	sw $ra,0($sp)			# guarda endereço de retorno
	sw $s0,4($sp)			# guarda valor do registo $s0
	sw $s1,8($sp)			# guarda valor do registo $s1
	sw $s2,12($sp)			# guarda valor do registo $s2
	
	move $s0,$a0			# registo "callee-saved"
	move $s1,$a0			# p1 = str
	move $s2,$a0			# p2 = str

while1:	lb $t0,0($s2)			# while(*p2 != '\0')
	beq $t0,'\0',endw1
	addiu $s2,$s2,1			# p2++
	j while1
endw1:	addiu $s2,$s2,-1		# p2--

while2:	bgeu $s1,$s2,endw2		# while(p1 < p2)
	move $a0,$s1
	move $a1,$s2
	jal exchange			# exchange(p1,p2)
	addiu $s1,$s1,1			# p1++
	addiu $s2,$s2,-1		# p2--
	j while2
endw2:	move $v0,$s0			# return str

	lw $ra,0($sp)			# repõe endereço de retorno
	lw $s0,4($sp)			# repõe o valor do registo $s0
	lw $s1,8($sp)			# repõe o valor do registo $s1
	lw $s2,12($sp)			# repõe o valor do registo $s2
	addiu $sp,$sp,16		# liberta espaço da stack
	jr $ra