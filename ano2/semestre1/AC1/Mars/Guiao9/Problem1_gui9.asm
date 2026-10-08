	.eqv read_int,5
	.eqv print_float,2

	.data
k1:	.float 2.59375
k2:	.float 0.0
	.text
	.globl main
main:
do:	li $v0,read_int
	syscall
	move $t0,$v0		# $t0 = val
	la $t1,k1
	l.s $f2,0($t1)
	mtc1 $t0,$f0		# $f0 = val
	cvt.s.w $f0,$f0
	mul.s $f2,$f0,$f2	# $f2 = (float) val * 2.59375  $f2 - res
	mov.s $f12,$f2
	li $v0,print_float
	syscall
	la $t1, k2
	l.s $f4,0($t1)		# mtc1 $0,$f4   ctv.s.w $f4
	c.eq.s $f4,$f2
	bc1t fim
	j do
fim:	li $v0,0
	jr $ra
	