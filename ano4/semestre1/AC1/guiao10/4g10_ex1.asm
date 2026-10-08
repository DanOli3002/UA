	.data
	.eqv print_float,2
	.eqv read_int,5
	.eqv read_float,6
	.text
	.globl main
main:	addiu $sp,$sp,-4
	sw $ra,0($sp)
	
	li $v0,read_float
	syscall					# read_float()
	mov.s $f12,$f0
	
	li $v0,read_int
	syscall					# read_int()
	move $a0,$v0
	
	jal xtoy
	
	mov.s $f12,$f0
	li $v0,print_float
	syscall					# print_float()
	
	lw $ra,0($sp)
	addi $sp,$sp,4
	li $v0,0				# return 0
	jr $ra
	
# Mapa de registo:
#x: $f12 -> $f20
#y: $a0 -> $s0
#i: $t0
#result: $f0
#abs(y): $t1
	.data
f1:	.float 1.0
	.text
xtoy:	addiu $sp,$sp,-12
	sw $ra,0($sp)
	sw $s0,4($sp)
	s.s $f20,8($sp)
	
	move $s0,$a0
	mov.s $f20,$f12
	
	jal abs
	li $t0,0				# i = 0
	la $t2,f1
	l.s $f0,0($t2)				# result = 1.0
for:	bge $t0,$v0,endf			# for(i < abs(y))
if:	ble $s0,0,else				# if(y > 0)
	mul.s $f0,$f0,$f20			# result = result * x
	j endif
else:	div.s $f0,$f0,$f20			# result = result / x
endif:
	addi $t0,$t0,1				# i++
	j for
endf:	
	lw $ra,0($sp)
	lw $s0,4($sp)
	l.s $f20,8($sp)
	addiu $sp,$sp,12
	jr $ra
	
# função abs
abs:	bge $a0,0,endabs
	sub $a0,$0,$a0				# val = -val <=> val = 0 - val
endabs: move $v0,$a0
	jr $ra