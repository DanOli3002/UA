	.data
	.eqv print_double,3
	.eqv read_double,7
	.text
	.globl main
main:	addiu $sp,$sp,-4
	sw $ra,0($sp)
	
	li $v0,read_double
	syscall
	mov.d $f12,$f0
	
	jal f2c
	
	mov.d $f12,$f0
	li $v0,print_double
	syscall
	
	li $v0,0				# return 0
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra
	
	.data
d1:	.double 5.0
d2:	.double 9.0
d3:	.double 32.0
	.text
f2c:	la $t0,d1
	l.d $f0,0($t0)				# $f0 = 5.0
	
	la $t1,d2
	l.d $f2,0($t1)				# $f2 = 9.0
	
	la $t2,d3
	l.d $f4,0($t2)				# $f4 = 32.0
	
	div.d $f6,$f0,$f2			# $f6 = 5.0 / 9.0
	sub.d $f8,$f12,$f4			# $f8 = ft - 32.0
	mul.d $f0,$f6,$f8			# $f0 = 5.0/9.0 * (ft - 32.0)
	
	jr $ra