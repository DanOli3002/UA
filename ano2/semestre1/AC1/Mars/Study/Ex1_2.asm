# Mapa de registos.
# argc: $s0
# argv: $s1
# i: $t0
# p: $t1
	
	.eqv SIZE,20
	.data
s0:	.asciiz "Invalid argc"
fla:	.space	20
	.text
	.globl print
	
print:	addiu	$sp,$sp,-20
	sw	$ra,0($sp)
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	sw	$s3,16($sp)
	
	li	$t0,0		#i=0
	la	$s3,fla		#*p=fla
	move	$s0,$a0		#argc = $s0
	move	$s1,$a1		#argv[] = $s1 
	
if:	ble	$s0,1,else
	bgt	$s0,SIZE,else
	
for:	bge	$t0,$s0,endfor
	addu	$a0,$s0,$t0		#argv[i]
	li	$a1,10
	jal	tof
	l.s	$f0,0($s3)		#*p=tof
	addiu	$t0,$t0,1
	addiu	$s3,$s3,4
	j	for

endfor:	
	la	$a0,fla
	move	$a1,$s0
	jal	aver
	li	$v0,2
	syscall
	j endif
else:
	la	$a0,s0
	li	$v0,4
	syscall
endif:	
	la	$v0,fla
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	lw	$s1,8($sp)
	lw	$s2,12($sp)
	lw	$s3,16($sp)
	addiu	$sp,$sp,-20
	jr	$ra
	
		


	
		