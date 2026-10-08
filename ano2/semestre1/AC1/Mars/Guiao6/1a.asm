		# i: $t0
		#
 	.eqv SIZE,3
 	.eqv print_string,4
 	.eqv print_char,11
 	
 	.data
array:	.word str1,str2,str3
str1: 	.asciiz "Array"
str2: 	.asciiz "de"
str3: 	.asciiz "ponteiros"
 	.text
 	.globl main
main:	li $t0,0		# i = 0
for: 	bge $t0,SIZE,efor	# i >= SIZE salta para o fim do for

 	la $t1,array 
 	sll $t2,$t0,2 		# i * 4 (cada ponteiro ocupa 4 bytes)
 	addu $t2,$t2,$t1 	# array + i * 4 = &array[i]
 	lw $a0,0($t2) 
 	li $v0,print_string
 	syscall
 	li $a0,'\n'
 	li $v0,print_char
 	syscall
 	
 	addi $t0,$t0,1		# i++
 	j for
efor: 	li $v0,0
 	jr $ra 