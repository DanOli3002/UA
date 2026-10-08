# Mapa de registos
# i = $t0
# v = $t1
# &val[0] = $t2

	.data
	.eqv SIZE,8
	.eqv print_string,4
	.eqv print_int10,1
	.eqv print_char,11
val:	.word 8,4,15,-1987,327,-9,27,16
	.text
	.globl main
main:	li $t0,0			# i = 0
	la $t2,val			# $t2 = $val[0]
do1:	
	sll $t3,$t0,2          		# $t3 = i * 4 (to access words in array)
    	add $t4,$t2,$t3        		# $t4 = &val[i]
    	lw $t1,0($t4)           	# v = val[i]
	
	li $t5,SIZE        		# $t5 = SIZE
    	div $t5,$t5,2			# $t5 = SIZE / 2
	add $t6,$t0,$t5			# $t6 = (SIZE + i)/2
	sll $t6,$t6,2          		# $t6 = (i + SIZE / 2) * 4
   	add $t7,$t2,$t6        		# $t7 = &val[i + SIZE / 2]
   	
   	lw $t8,0($t7)           	# $t8 = val[i + SIZE / 2]
    	sw $t8,0($t4)           	# val[i] = val[i + SIZE / 2]
    	sw $t1,0($t7)           	# val[i + SIZE / 2] = v
	
	addi $t0,$t0,1			# i++
while1:	blt $t0,$t5,do1      		# while(i < SIZE / 2)
	
	li $t0,0			# i = 0
	
do2:	sll $t3,$t0,2          		# $t3 = i * 4 (to access words in array)
    	add $t4,$t2,$t3        		# $t4 = &val[i]
    	lw $a0,0($t4)           	# Load val[i] into $a0 for printing
	
	li $v0,print_int10
	syscall				# print_int10(val[i])
	
	li $v0,print_char
	li $a0,','
	syscall				# print_char(',')
	
	addi $t0,$t0,1			# i++
	li $t5,SIZE
	
while2:	blt $t0,$t5,do2 		# while(i < SIZE)
	
	jr $ra
