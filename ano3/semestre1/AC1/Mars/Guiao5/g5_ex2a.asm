# Mapa de registos 
# p:  $t0 
# *p:  $t1  (Registo temporário para guardar o valor armazenado em memória) 
# lista+Size: $t2
	.data
	.eqv SIZE,10
	.eqv print_int10,1
	.eqv print_string,4
str1:	.asciiz "\nConteúdo do array:\n"
str2:	.asciiz "; "
	.align 2
array:	.word 8,-4,3,5,124,-15,87,9,27,15
	.text
	.globl main
	
main:	la $a0,str1
	li $v0,print_string
	syscall			# print_string("\nConteúdo do array:\n")
	
	la $t0,array		# p = array
	li $t3,SIZE
	sll $t3,$t3,2
	add $t2,$t0,$t3		# $t2 = lista + SIZE
	
for:	bgeu $t0,$t2,endfor	# for(p < lista + SIZE)
	lw $t1,0($t0)
	addi $t0,$t0,4		# p++
	
	move $a0,$t1
	li $v0,print_int10
	syscall			# print_int10(*p)
	
	la $a0,str2
	li $v0,print_string
	syscall			# print_string("; ")
	
	j for
	
endfor:	jr $ra
