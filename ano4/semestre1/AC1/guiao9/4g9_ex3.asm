	.data
	.eqv SIZE,10
	.eqv read_double,7
	.eqv print_double,3
a:	.space 80			# SIZE * 8
	.text
	.globl main
main:	addiu $sp,$sp,-4
	sw $ra,0($sp)
	
	la $s0,a			# s0 = &a
	li $s1,0			# i = o
for_m:	bge $s1,SIZE,endf_m		# for(i < SIZE)
	sll $t0,$s1,1
	add $t1,$s0,$t0
	
	li $v0,read_double
	syscall
	
	mov.d $f12,$f0
	
	s.d $f0,0($t1)
	addi $s1,$s1,1			# i++
	j for_m
endf_m:	
	mtc1 $s0,$f12
	cvt.d.w $f12,$f12
	li $a0,SIZE
	
	jal average
	
	mov.d $f12,$f0
	li $v0,print_double
	syscall				# print_double(average/a,SIZE))
	
	li $v0,0			# return 0
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra	

# Mapa de registos:
# *array: $a0
# n:	  $a1
	.data
zero:	.double 0.0
	.text
average:
	la $t0,zero
	l.d $f2,0($t0)			# sum = $f2 = 0.0
	
	move $t0,$a1			# $t0 = n
	addi $t0,$t0,-1			# i = n - 1
for:	blt $t0,0,endf			# for(i >= 0)
	l.d $f4,0($a0)			# $f4 = array[i]
	add.d $f2,$f2,$f4		# sun = sum + array[i]
	sll $a0,$a0,8			# passar para o proximo elemento do array
	addi $t0,$t0,-1			# i--
	j for
endf:	
	mtc1 $a1,$f8			# int para double
	cvt.d.w $f8,$f8
	div.d $f0,$f2,$f8		# return sum / (double)n
	
	jr $ra