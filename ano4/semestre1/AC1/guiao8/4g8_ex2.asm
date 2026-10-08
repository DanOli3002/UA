# Mapa de registos
# $a0 -> $s0:	n
# $a1 -> $s1:	b
# $a2 -> $s2:	s
# $s3:		p
# $t0:		digit
itoa:	addiu $sp,$sp,-20
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	sw $s3,16($sp)
	
	move $s0,$a0
	move $s1,$a1
	move $s2,$a2
	move $s3,$a2			# p = s
	
do:	
	rem $t0,$s0,$s1			# digit = n % b
	div $s0,$s0,$s1			# n = n / b
	move $a0,$t0
	jal toascii
	
	move $s3,$v0
	addi $s2,$s2,1			# p++

	bgt $s0,0,do 			# while( n > 0)
	
	li $s3,'\0'
	
	move $a0,$s2
	jal strrev
	
	lw $ra,0($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	lw $s3,16($sp)
	addiu $sp,$sp,20
	
	jr $ra
	
	
toascii:
	addi $a0,$a0,'0'
if:	ble $a0,'9',endif
	addi $v0,$a0,7
endif:	jr $ra

exchange:
	lb $t0,0($a0)
	lb $t1,0($a1)
	sb $t0,0($a1)
	sb $t1,0($a0)
	jr $ra

strrev:	addiu $sp,$sp,-16			# reserva espaço no stack
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	move $s0,$a0				# registo "callee-saved"
	move $s1,$a0				# p1 = str
	move $s2,$a0				# p2 = str
while1:	lb $t0,0($s2)				# while( *p2 != '\0')
	beq $t0,'\0',endw1			
	addiu $s2,$s2,1				# p2++
	j while1
endw1:	addiu $s2,$s2,-1			# p2--

while2:	bgeu $s1,$s2,endw2			# while(p1 < p2)
	move $a0,$s1
	move $a1,$s2
	jal exchange				# exchange(p1,p2)
	
	addiu $s1,$s1,1				# p1++
	addiu $s2,$s2,-1			# p2--
	
	j while2
endw2:		
	move $v0,$s0				# return str
	lw $ra,0($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	addiu $sp,$sp,16
	jr $ra