# Mapa de registos
# $t4:	houve_troca
# $t5:	i
# $t6:	lista
# $t7:	lista + i
	.data
	.eqv SIZE,10
	.eqv FALSE,0
	.eqv TRUE,1
	.eqv read_int,5
	.eqv print_int10,1
	.eqv print_string,4
lista:	.space 40
str1:	.asciiz "; "
	.text
	.globl main
main:	li $t0,0		# i = 0
	
for1:	bge $t0,SIZE,endfor1	# for(i < SIZE)
	
	li $v0,read_int
	syscall			# read_int()
	
	la $t1,lista		# $t1 = lista ou &lista[0]
	sll $t2,$t0,2
	addu $t2,$t1,$t2	# $t2 = &lista[i] 
	sw $v0,0($t2)		# lista[i] = read_int()
	addi $t0,$t0,1		# i++
	j for1
	
endfor1:

	la $t6,lista
do:	
	li $t4,FALSE		# houve_troca = FALSE
	li $t5,0		# i = 0
for2:	li $t7,SIZE
	addi $t7,$t7,-1		# $t7 = SIXE - 1
	bge $t5,$t7,endfor2	# for(i < SIZE - 1)
	
if:	sll $t7,$t5,4		# $t5 = i * 4
	addu $t7,$t7,$t6	# $t7 = &lista[i]
	lw $t8,0($t7)		# $t8 = lista[i]
	lw $t9,4($t7)		# $t9 = lista[i + 1]
	ble $t8,$t9,endif	# if(lista[i] > lista[i + 1])
	
	sw $t8,0($t7)		# lista[i + 1] = $t8
	sw $t9,4($t7)		# lista[i] = $t9
	li $t4,TRUE
	
endif:	addi $t5,$t5,1		# i++
	j for2
endfor2:
while:	beq $t4,TRUE,do		# while(houve_troca == TRUE)
	
	li $t5,0

do2:	la $t6,lista

	bge $t5,SIZE,end
	
	sll $t7,$t5,2
	addu $t7,$t7,$t6
	
	lw $t8,0($t7)
	move $a0,$t8
	li $v0,print_int10
	syscall
	
	la $a0,str1
	li $v0,print_string
	syscall
	
	addi $t5,$t5,1			# i++
	
	j do2
	
end:	jr $ra	
	
	jr $ra