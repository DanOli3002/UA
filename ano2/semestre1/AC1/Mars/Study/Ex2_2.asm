#Mapa de registos:
#val:$f0
#array:$t0
#fx:$t1
#k:$t2
#sum:$f2
#aux:$f4

	.data
zero:	.double 0.0
val:	.double 0.035
	.text
	.globl calc

calc:	li	$t1,1  			#fx=1
	li	$t2,0			#K=0
	la	$t8,zero
	l.d	$f2,0($t8)
	la	$t8,val
	l.d	$f10,0($t8)

do:	addiu	$t0,$t2,1			# k+1
	mult	$t1,$t0			#fx*(k+1)
	mflo	$t1			#fx = fx*(k+1)
	move	$a1,$t0			#*array
	addu	$t0,$t0,$t2		#&array[k]
	l.d	$f6,0($t0)		#array[k]
	mtc1	$t1,$f8			#double fx
	cvt.d.w	$f8,$f8
	div.d	$f4,$f6,$f8		#aux = array[k]/double fx
	add.d	$f2,$f2,$f4		#sum = sum+aux
	l.d	$f2,0($t0)		#array[k++]
	addiu	$t2,$t2,8		#k++
	
while:	c.le.d	$f4,$f10
	bc1f	do
	
	cvt.w.d	 $f2,$f2
	mfc1 	$t6,$f2			#int sum
	
	move	$v0,$t6
	jr	$ra
	
	