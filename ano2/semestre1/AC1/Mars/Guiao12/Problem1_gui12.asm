	.eqv print_float,1
	.eqv print_string, 4
	.eqv read_integer, 5
	.eqv read_string, 8
	.eqv read_float, 6
	.eqv print_intu10, 36
	
	.eqv stmxln, 0
	.eqv stmxln, 4
	.eqv stmxln, 22
	.eqv stmxln, 40
	.eqv stmxln, 17
	.eqv stmxln, 14
	.eqv MAX_STUDENTS, 4
	.eqv sizest, 44
	.data
	.align 2
st_arr:	.space  
	
	
max:	
	la $t3,max_grade
	l.s $f2,0($t3)
	mtc1 $0,$f4
	cvt.s.w $f4,$f4
	move $t0,$a0
	li $t3,sizest
	mul $t3,$t3,$a1
	addu $t2,$t0,$t3
f_mx:	bge $t0,$t2,end_fmx
	l.s $f6,stgrof($t0)
	add.s $f4,$f4,$f6
	c.le.s $f6,$f2
	bc1t end_if_mx
	mov.s $f2,$f6
	move $t1,$t0
end_if_mx:
	addiu $t0,$t0,sizest
	j f_mx
end_fmx:
	mtc1 $a1,$f8
	cvt.s.w $f8,$f8
	div.s $f4,$f4,$f8
	s.s $f4,0($a2)
	
	# falta código
	
read_data:
	move $t0,$a0
	move $t1,$a1
	li $t2,0
t_rd:	bge $t2,$t1, end_f_rd
	la $a0,str1
	li $v0,print_string
	syscall
	li $t3,sizest
	mulu $t4,$t3,$t2
	addu $t5,$t0,$t4
	li $v0,read_integer
	syscall
	sw $v0,stidof($t5)
	
	la $a0,str2
	li $v0,print_string
	syscall
	
	# falta código
	
	la $a0,str3
	li $v0,print_string
	syscall
	li $t3,sizest
	mulu $t4,$t3,$t2
	addu $t5,$t0,$t4
	addiu $a0,$t5,stlnof
	li $a1,stmxln
	li $v0,read_string
	syscall
	
	la $a0,str4
	li $v0,print_string
	syscall
	li $t3,sizest
	mulu $t4,$t3,$t2
	addu $t5,$t0,$t4
	li $v0,read_float
	syscall
	s.s $f0,stgrof($t5)
	
	addi $t2,$t2,1
	j f_rd
end_f_rd:
	jr $ra