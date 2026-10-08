# Mapa de registos: 
# str: $a0 -> $s0 (argumento é passado em $a0) 
# p1:  $s1  (registo callee-saved) 
# p2:  $s2  (registo callee-saved)

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
	
	.eqv print_string,4
	.data
str1:	.asciiz "ITED - orievA ed edadisrevinU"
	.text
	.globl main
main:	addiu $sp,$sp,-4		# reserva espaço na stack
	sw $ra,0($sp)
	
	la $a0,str1
	jal strrev
	move $a0,$v0			# meter o valor de $v0 resultante para $a0
	li $v0,print_string
	syscall				# print_int10(strlen(str))
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra