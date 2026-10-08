	.eqv MAX_STUDENT,44
	.eqv print_int,1
	.eqv pritn_float,2
	.eqv print_string,4
	.eqv read_int,5
	.eqv read_float,6
	.eqv read_string,8
	.data
str1:	.asciiz "\nN. Mec: "
str2:	.asciiz "\nPrimeiro Nome: "
str3:	.asciiz "\nÚltimo Nome: "
str4:	.asciiz "\nNota: "
str5:	.asciiz "\nMédia: "
	.align 2
st_array:	.space 176   # 44 * 4
	.align 2
media:	.space 4
max_grade: .float -20.0
	.text
	.globl main
main:	
	addiu $sp,$sp,-4
	sw $ra,0($sp)
	
	la $a0,st_array
	li $a1,4			# li de 4 pq são 4 students
	jal read_data
	
	la $a0,st_array
	li $a1,4
	# o l.s está mal
	l.s $f12,media
	jal max
	move $s0,$v0
	
	la $a0,str5
	li $v0,print_string
	syscall				# print_string(str5)
	
	mov.s $f12,$f0
	li $v0,print_float
	syscall				# print_float(media)
	
	move $a0,$s0
	jal print_student
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	
	li $v0,0
	jr $ra

##########################################################
# Mapa de Registos:
# st:	$a0  -> $t0
# ns:	$a1  -> $t1
# i:	$t2
read_data: 
	move $t0,$a0
	move $t1,$a1
	
	li $t2,0				# i = 0
for:	bge $t2,$t1,endfor			# for (i < ns)

	la $a0,str1
	li $v0,print_string
	syscall					# print_string(str1)
	
	li $v0,read_int
	syscall					# read_int()
	
	mul $t3,$t2,44
	addu $t3,$t0,$t3			# $t3 = &st[i]
	sw $v0,0($t3)				# st[i].id_number = read_int()
	
	la $a0,str2
	li $v0,print_string
	syscall					# print_string(str2)
	
	addiu $a0,$t3,4
	li $a1,17
	li $v0,read_string
	syscall					# read_string()
	
	la $a0,str3
	li $v0,print_string
	syscall					# print_string(str3)
	
	addiu $a0,$t3,22
	li $a1,14
	li $v0,read_string
	syscall					# read_string()
	
	la $a0,str4
	li $v0,print_string
	syscall					# print_string(str4)
	
	li $v0,read_float
	syscall
	s.s $f0,40($t3)				# read_float()
	
	addi $t2,$t2,1				# i++
	j for
endfor: 

	jr $ra
	
##########################################################
max:	l.s $f6,max_grade
	move $t0,$a0
	mul $t1,$a1,44
	addu $t1,$t0,$t1
	
formax:	bge $t0,$t1,endformax

	l.s $f2,40($t0)
	add.s $f4,$f4,$f2
	
ifmax:	c.le.s $f2,$f6
	bc1t endifmax
	
	mov.s $f6,$f2
	move $v0,$t0
endifmax:
	addiu $t0,$t0,44
	j formax
	
endformax:
	mtc1 $a1,$f8
	cvt.s.w $f8,$f8
	
	div.s $f0,$f4,$f8
	jr $ra
	
##########################################################
print_student:
	move $t0,$a0
	
	lw $a0,0($t0)
	li $v0,print_int
	syscall
	
	addiu $a0,$t0,4
	li $v0,print_string
	syscall
	
	addiu $a0,$t0,22
	li $v0,print_string
	syscall
	
	l.s $f12,40($t0)
	li $v0,print_float
	syscall
	
	jr $ra
