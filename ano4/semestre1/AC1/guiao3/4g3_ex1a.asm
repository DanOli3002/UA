# Mapa de registos:
# soma:		$t0
# value:	$t1
# i:		$t2
	.data
str1:	.asciiz "Introduza um número: "
str2:	.asciiz "Valor ignorado\n"
str3:	.asciiz "A soma dos positivos é: "
	.eqv print_string,4
	.eqv print_int10,1
	.eqv read_int,5
	.text
	.globl main
main:	li $t0,0			# soma = 0
	li $t2,0			# i = 0
for:	bge $t2,5,endfor		# while(i < 5)
	
	li $v0,print_string
	la $a0,str1
	syscall			#print_string(Introduzir um numero: )
	
	li $v0,read_int
	syscall
	or $t1,$0,$v0 		#value = read_int()
	#move $t1,$v0 		tbm podemos usar isto
	
if:	ble $t1,0, else 	#if (value>0)
	add $t0,$t0,$t1 	#soma = soma + val
	j endif
	
else:	li $v0,print_string
	la $a0,str2
	syscall			#print_string("Valor ignorado: \n")
	
endif:	addi $t2,$t2,1 		#i++
	j for
		
endfor:	
	li $v0, print_string
	la $a0,str3
	syscall 		#print_string("A soma dos positivos é: ")
		
	li $v0, print_int10
	or $a0,$t0,$0
	#move $a0,$t0		tbm podemos usar isto
	syscall 		#print_int10(soma)
		
	jr $ra