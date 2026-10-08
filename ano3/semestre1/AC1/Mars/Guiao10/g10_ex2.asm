	.data
	.eqv print_double,3
	.eqv read_double,7
	.text
	.globl main
	
main:	addiu $sp,$sp,-4			# prologo
	sw $ra,0($sp)
	
	li $v0,read_double
	syscall					# read_double()
	mov.d $f12,$f0				# val = read_double
	
	jal sqrt				# sqrt(val)
	
	mov.d $f12,$f0
	li $v0,print_double			# print_double()
	syscall
	
	lw $ra,0($sp)				# epilogo
	addiu $sp,$sp,4
	li $v0,0				# return 0
	jr $ra
	
	.data
x:	.double 0.5
xn:	.double 1.0
	.text
	.globl sqrt
# Mapa de registos
# xn -> $f0
# aux -> $f4
# tmp -> $f6
# i: $t0
sqrt:	li $t0,0				# i = 0
	la $t1,xn
	l.d $f0,0($t1)				# xn = 1.0
	mtc1 $0,$f6				# $f6 = 0.0
	c.le.d $f12,$f6				# if(val > 0.0)
	bc1t else
do:	mov.d $f4,$f0				# aux = xn
	div.d $f0,$f12,$f0			
	add.d $f0,$f0,$f4			# xn = (xn + val/xn)
	la $t1,x
	l.d $f6,0($t1)				# $f6 = 0.5
	mul.d $f0,$f6,$f0			# xn = 0.5 * (xn + val/xn)
	c.eq.d $f4,$f0 				# while{
	bc1t endif				# (aux != xn)
	addi $t0,$t0,1				# i++
	blt $t0,25,do				# && (++i < 25)
	j endif
else:	mtc1 $0,$f0				# xn = 0.0
endif:	jr $ra