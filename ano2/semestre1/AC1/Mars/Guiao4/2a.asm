		# Mapa de registos
		# num: $t0
		# p: $t1
		# *p: $t2 (Registo temporário para guardar o valor armazenado na posição de memória p)
 	.data
str: 	.asciiz "AStringHere"
 	
 	.text
 	.globl main
main: 	 			
 	la $t1,str 		# p = str;
while: 				# while(*p != '\0')
 	lb $t2,0($t1) 		#
 	bne $t2,$0,endw 	# {
 	blt $t2,'0',endif 	# if(str[i] >='0' &&
 	bgt $t2,'9',endif 	# str[i] <= '9')
 	addi $t0,$t0,1		# num++;
endif:
 	addiu $t1,$t1,1 	# p++;
 	j while 		# }
endw: 	 			# print_int10(num);
	li $v0,10
 	jr $ra 			# termina o programa