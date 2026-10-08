# mapa de registos:
# i:	$t0
# max1:	$t1
# max2:	$t2
	.data
	.eqv SIZE,5
array:	.word 5,27,3,11,56
	.text
	.globl main
main:	li $t6,1
	srl $t1,$t6,31				# max1 = 1 << 31
	move $t2,$t1				# max2 = max1

	la $t3,array				# $t3 = &array[0]
	li $t0,0				# i = 0
for:	bge $t0,SIZE,endfor			# for(i < SIZE)
	mul $t4,$t0,4
	addu $t3,$t3,$t4			# $t3 = &array[i]
	lw $t5,0($t3)				# $t5 = array[i]
if1:	ble $t5,$t1,else			# if (array[i] > max1)
	move $t2,$t1				# max2 = max1
	move $t1,$t5				# max1 = array[i]
	j endif
else:
if2:	ble $t5,$t2,endif			# if(array[i] > max2 &&
	bge $t5,$t1,endif			# array[i] < max1)
	move $t2,$t5				# max2 = array[i]
endif:
	addi $t0,$t0,1				# i++
	j for
endfor:
	jr $ra