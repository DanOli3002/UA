	# i: $t0
	# lista: $t1
	# lista + i: $t2
				
	.eqv print_string,4
	.eqv read_int,5
	.eqv print_char,11
	.eqv print_int16,34
	.eqv print_int10,1
	.eqv read_string,8
	.eqv SIZE,5
	.eqv SIZEx4,20
	
	.data
str: 	.asciiz "\nIntroduza um numero: "
 	.align 2
lista:	.space SIZEx4 	# SIZE * 4
 	
 	.text
 	.globl main
main: 	li 	$t0,0 		# i = 0;
for: 	bge 	$t0,SIZE,efor 	# não faz for se i >= SIZE;
 	la 	$a0,str		# print_string(str)
 	li 	$v0,print_string
 	syscall
 	li 	$v0,read_int
 	syscall 		
 	la 	$t1,lista 		# $t1 = lista;
 	sll 	$t2,$t0,2 		# i * 4
 	addu 	$t2,$t1,$t2 	# $t2 = &lista[i] = lista + i * 4
 	sw 	$v0,0($t2)		
 	addi 	$t0,$t0,1 		
 	j  	for 			
efor:	li 	$v0,0
 	jr 	$ra 			
