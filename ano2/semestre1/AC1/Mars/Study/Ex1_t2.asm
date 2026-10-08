	.data
	
	.eqv print_str, 4
	.eqv print_int10, 1
	.eqv print_float, 2
	
	.eqv stidof, 0
	.eqv stfnof, 4		# começa first_name
	.eqv stlnof, 22		# começa last_name
	.eqv stgrof, 40		# começa grade
	.eqv stfmx, 17	# maximo de frist_name
	.eqv stlmx, 14	# maximo de last_name
	.eqv sizest, 44			# sizeof(student)
	
	
	.eqv MAX_STUDENTS, 4
	
	.align 2
st_array:
	.space 176		# static student st_array[Max_student]    (44*4)
	
media:	.float
str1:	.asciiz "Nº mec: "
str2:	.asciiz "Primeiro Nome: "
str3:	.asciiz "Ultimo nome: "
str4:	.asciiz "Nota: "
str5:	.asciiz "\nMedia: "

max_grade:	.float -20.0

	.text
	.globl main
	
read_data:
	move $t0, $a0		# st
	move $t1, $a1		# ns
	
	li $t2, 0			# i = 0
	
f_rd:
	bge $t2, $t1, end_f_rd	# i < ns
	
	la $a0, str1
	li $v0, print_str
	syscall
	
	li $t3, sizest		# sizeof(student)
	
	mulu $t4, $t3, $t2		# i * sizeof(student)
	addu $t5, $t0, $t4		# st_array[i]
	
	li $v0, read_int
	syscall
	
	sw $v0, stidof($t5)		# escreve na posição do id_number
	
	la $a0, str2
	li $v0, print_str
	syscall
	
	li $t3, sizest		# sizeof(student)
	
	mulu $t4, $t3, $t2		# i * sizeof(student)
	addu $t5, $t0, $t4		# st_array[i]
	addiu $a0, $t5, stfnof	# começa no first_name
	
	li $a1, stfmx
	
	li $v0, read_str
	syscall
	
	la $a0, str3
	li $v0, print_str
	syscall
	
	li $t3, sizest		# sizeof(student)
	
	mulu $t4, $t3, $t2		# i * sizeof(student)
	addu $t5, $t0, $t4		# st_array[i]
	addiu $a0, $t5, stlnof	# começa no last_name
	
	li $a1, stlmx
	
	li $v0, read_str
	syscall
	
	la $a0, str4
	li $v0, print_str
	syscall
	
	li $t3, sizest
	
	mulu $t4, $t3, $t2		# i * sizeof(student)
	addu $t5, $t0, $t4		# st_array[i]
	
	li $v0, read_float
	syscall
	
	s.s $f0, stgrof($t5)		# começa em grade
	
	addiu $t2, $t2, 1		# i++
	j f_rd
end_f_rd:
	jr $ra
	
max:
	la $t3, max_grade
	l.s $t2, 0($t3)		# float max_grade = -20.0
	
	mtc1 $0, $f4		
	cvt.s.w $f4, $f4		
	
	move $t0, $a0		# p = student *st (array)
	li $t3, sizest
	mul $t3, $t3, $a1		# (int ns = $a1)
	addu $t2, $t0, $t3		# st + ns
	
f_mx:
	bge $t0, $t2, end_fmx	# p < ( st + ns )
	
	l.s $f6, stgrof($t0)		# array posição grade
	add.s $f4, $f4, $f6		# sum += grade
	
	c.le.s $f6, $f2		# if (grade > max_grade)
	
	bc1t end_if_mx
	mov.s $f2, $f6		# max_grade = p->grade
	move $t1, $t0		# pmax = p
	
end_if_mx:
	addiu $t0, $t0, sizest
	j f_mx

end_fmx:
	mtc1 $a1,$f8 
    	cvt.s.w $f8,$f8 
    	
    	div.s $f4,$f4,$f8
    	s.s $f4,0($a2)      	 	#*media = sum /(float)ns
	
main:
	addiu $sp, $sp, -4
	sw $ra, 0($sp)
	
	la $a0, st_array
	li $a1, MAX_STUDENTS
	
	jal read_data
	
	la $a0, st_array
	li $a1, MAX_STUDENTS
	la $a2, media
	
	jal max			# pmax = max ($a0, $a1, $a2)
	move $s1, $v0		# ($v0 = pmax) valor retornado do max para $s1
	
	la $a0, str5
	li $v0, print_str
	syscall
	
	la $t0, media		
	l.s $f12, 0($t0)		# ou l.s $f12, media
	
	li $v0, print_float		# print_float(media)
	syscall
	
	move $a0, $s1		# mover o pmax para ser usado como argumento
	jal print_student		# print_student( pmax )
	
	lw $ra, 0($sp)
	li $v0, 0
	jr $ra