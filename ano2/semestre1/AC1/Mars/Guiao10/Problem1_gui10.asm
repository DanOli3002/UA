	# $t0: i
	# $t1: abs(y)
	# $t2: y
	# $f0: result
	# $f12: x
xtoy:	addiu $sp,$sp,-20		# xtoy chama abs por isso tem de se peservar o retorno
	sw $ra,0($sp)
	sw $s0,4($sp)			# i
	sw $s1,8($sp)			# y
	s.s $f20,12($sp)		# float x
	s.s $f22,16($sp)		# result
	mov.s $f20,$f12
	li $s0,0			# i = 0
	la $t3,um
	l.s $f22,0($sp)			# result = 1.0
	move $s1,$a0			# preservar y para futuro uso
	jal abs				# abs(y) - note-se que $a0 contém y por isso pode-se manter par.
	move $t1,$v0			# convém mudar o output de abs para outro registo porque $v0 é
for_xt:	bge $s0,$t1,end_fxt
	blez $s1,else_xt
	mul.s $f22,$f22,$f20
	j xtl
else_xt:
	div.s $f22,$f22,$f20		# $f12 é a entrada de parâmentros float, logo contém x
xtl	addi $s0,$s0,1			# i++
	j for_xt
end_fxt:
	mov.s $f0,$f22
	l.s $f22,16($sp)
	l.s $f20,12($sp)
	lw $s1,8($sp)
	lw $s0,4($sp)
	lw $ra,0($sp)
	addiu $sp,$sp,20