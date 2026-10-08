# Mapa de Registos
# res:	$f0
# val:	$t0
	.data
	.eqv read_int,5
	.eqv print_float,2
f1:	.float 2.59375
f2:	.float 0.0
	.text
	.globl main
main:	
do:	li $v0,read_int
	syscall
	move $t0,$v0			# val = read_int()
	mtc1 $t0,$f0			# meter para o coprocessor1 (FPU)
	cvt.s.w $f0,$f0			# $f0 = (float)val
	
	la $t1,f1
	l.s $f2,0($t1)			# $f2 = 2.59375
	
	mul.s $f0,$f0,$f2		# res = (float)val * 2.59375
	
	li $v0,print_float
	mov.s $f12,$f0			# $f12 é necessário para imprimir
	syscall				# print_float(res)
	
	la $t1,f2
	l.s $f2,0($t1)			# $f2 = 0.0
	c.eq.s $f0,$f2			
	bc1f do				# while (res != 0.0)
endw:	
	li $v0,0			# return 0
	jr $ra