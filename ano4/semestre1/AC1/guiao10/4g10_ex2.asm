	.data
	.eqv print_double,3
	.eqv read_double,7
	.text
	.globl main
	
main:	addiu $sp,$sp,-8
	sw $ra,0($sp)
	s.s $f20,8($sp)
	
	li $v0,read_double
	syscall					# read_double()
	mov.d $f12,$f0				# val = read_double
	
	jal sqrt				# sqrt(val)
	
	mov.d $f12,$f0
	li $v0,print_double			# print_double()
	syscall
	
	lw $ra,0($sp)
	l.s $f20,8($sp)
	addiu $sp,$sp,8
	li $v0,0				# return 0
	jr $ra

# Mapa de registos:
#val:	$f12 -> $f20
#xn:	$f0
#aux.	$f2
#i:	$t0
	.data
d1:	.double 1.0
d2:	.double 0.0
d3:	.double 0.5
	.text
sqrt:	mov.s $f20,$f12
	la $t1,d1
	l.d $f0,0($t1)				# xn = 1.0
	li $t0,0				# i = 0
	la $t2,d2
	l.d $f4,0($t2)				# $f4 = 0.0
	la $t3,d3
	l.d $f8,0($t3)				# $f8 = 0.5
if:	ble $f20,$f4,else			# if(val > 0.0)
do:	move $f2,$f0				# aux = xn
	div.d $f6,$20,$f0			# $f6 = val/xn
	add.d $f6,$f0,$f6			# $f6 = xn + val/xn
	mul.d $f0,$f8,$f6			# xn = 0.5 * (xn + val/xn)
while:	c.eq.d $f2,$f0
	bc1t endif				# (aux != xn)
	addi $t0,$t0,1				# ++i
	bge $t0,25,endif			# (++i < 25)
else:
	l.d $f0,0($t2)				# xn = 0.0
endif:	move $f12,$f0