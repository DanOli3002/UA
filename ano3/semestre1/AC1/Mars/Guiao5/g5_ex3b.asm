# Mapa de registos 
# houve_troca: $t4 
# i:   $t5 
# lista:  $t6 
# lista + i:  $t7
# v :  $t8
# v1 :   $t9
	.data
	.eqv SIZE,10
	.eqv false,0
	.eqv true,1
	.eqv read_int,5
	.eqv print_int10,1
list:	.space 40			# o space é SIZE * 4
	.text
	.globl main
main:	li $t5,0
# fill list
for:	bge $t5,SIZE,do
	
	la $t6,list
	
	sll $t7,$t5,2
	addu $t7,$t7,$t6
	
	li $v0,read_int
	syscall				# read_int()
	sw $v0,0($t7)			# guarda na lista o valor lido
	
	addi $t5,$t5,1			# i++
	j for

# order list
do:	li $t4,false
	li $t5,0

for1:	li $t7,SIZE
	sub $t7,$t7,1
	
	bge $t5,$t7,endfor1
	
	sll $t7,$t5,2
	addu $t7,$t7,$t6
	lw $t8,0($t7)
	lw $t9,4($t7)
	
if:	ble $t8,$t9,endif
	sw $t8,4($t7)
	sw $t9,0($t7)
	li $t4,true
	
endif:	addi $t5,$t5,1			# i++
	j for1
	
endfor1:
	beq $t4,true,do	
	
# print list
	li $t5,0

do2:	la $t6,list

	bge $t5,SIZE,end
	
	sll $t7,$t5,2
	addu $t7,$t7,$t6
	
	lw $t8,0($t7)
	move $a0,$t8
	li $v0,print_int10
	syscall
	
	addi $t5,$t5,1			# i++
	
	j do2
	
end:	jr $ra
