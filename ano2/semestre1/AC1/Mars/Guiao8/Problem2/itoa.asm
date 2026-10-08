# Mapa de registos
# n: $a0 -> $s0
# b: $a1 -> $s1
# s: $a2 -> $s2
# p: $s3
# digit: $t0
# Sub-rotina intermédia 

	.text
	.globl itoa
itoa:	addiu $sp,$sp,-20
	sw $s0,0($sp)
	sw $s1,4($sp)
	sw $s2,8($sp)
	sw $s3,12($sp)
	sw $ra,16($sp)
	
	move $s0,$a0		# salvaguarda n
	move $s1,$a1		# salvaguarda b
	move $s2,$a2		# salvaguarda s
	move $s3,$a3		# char *p = s
	
do:	rem $t0,$s0,$s1		# digit = n % b
	div $s0,$s0,$s1		# n = n / b
	move $a0,$t0		# digit é o parametro de entrada da toascii
	jal toascii
	sb $v0,0($a3)		# *p = toascii(digit)
	addiu $s3,$s3,1		# p++
	bgt $s0,0,do		# while(n > 0)
	sb $0,0,($a3)		# *p = 0
	move $a0,$s2
	jal strrev		# strrev( s )
	move $v0,$s2
	
	lw $s0,0($sp)		# repõe registos $sx e $ra 
	lw $s1,4($sp)
	lw $s2,8($sp)
	lw $s3,12($sp)
	lw $ra,16($sp)
	addiu $sp,$sp,20	# liberta espaço na stack
	jr $ra