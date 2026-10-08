	.eqv SIZE,10
	.eqv read_double,7
	.eqv print_double,3
	.data
sum:	.double 0.0
	.align 2
array:	.space 80			# SIZE * 8 ( multiplicar por 8 pois é um array de double)
	.text
	.globl main
main:	addiu $sp,$sp,-4
	sw $ra,0($sp)
	
	la $s0,array			# &array
	li $s1,0			# i = 0

for_main:
	bge $s1,SIZE,endfor_main	# for (i < SIZE)
	
	sll $t0,$s1,1
	add $t1,$s0,$t0
	
	li $v0,read_double
	syscall 			# read_double()
	
	mov.d $f12,$f0
	
	s.d $f0,0($t1)
	
	j for_main
endfor_main:
	mtc1 $s0,$f12
	cvt.d.w $f12,$f12
	li $a0,SIZE
	
	jal average
	
	mov.d $f12,$f0
	li $v0,print_double
	syscall				# print_double(average(a, SIZE))
	
	li $v0,0			# return 0
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra
	
	.data
zero:	.double 0.0
	.text
average:
	la $t0,zero
	l.d $f2,0($t0)			# sum = 0.0
	
	li $t0,0 
		
for: 	bge $t0,$a1,endf
	l.d $f4,0($a0)
	add.d $f2,$f2,$f4
	addi $a0,$a0,8
	addi $t0,$t0,1
	j for

endf:	mtc1 $a1,$f8 		#int to double
	cvt.d.w	$f8,$f8
	div.d $f0,$f2,$f8	# return sum / (double)n;
	
	jr $ra
	
