		# Mapa de registos
		# p: $t0
		# *p: $t1 (Registo temporário para guardar o valor armazenado em memória)
		# lista+Size: $t2
		
	.eqv print_string,4
	.eqv read_int,5
	.eqv print_char,11
	.eqv print_int16,34
	.eqv print_int10,1
	.eqv read_string,8
	.eqv SIZE,10
	
 	.data
str1: 	.asciiz "; "
str2: 	.asciiz "Conteudo do array:\n"
lista:	.word 8,-4, 3, 5, 124, -15, 87, 9, 27, 15	# a diretiva ".word" alinha num endereço
 				# múltiplo de 4 
  	.text
 	.globl main
main: 	li $v0,print_string 	# print_string(str2)
	la $a0,str2
	syscall
 	la $t0,lista		# p = lista
 	li $t2,SIZE 		#
 	sll $t2,$t2,2		# size = size*4
 	addu $t2,$t2,$t0	# size*4 + array = $t2
while: 	bgeu $t0,$t2,endw 	# while(p < lista+SIZE) {
 	lw $t1,0($t0) 		# $t1 = *p;
 	li $v0,print_int10 	# print_int10( *p );
 	move $a0,$t1
 	syscall
 	li $v0,print_string 	# print_string(str1);
 	la $a0,str1
 	syscall
 	addiu $t0,$t0,4 	# p++;
 	j while 		# }
endw:

 	jr $ra 			# termina o programa 
