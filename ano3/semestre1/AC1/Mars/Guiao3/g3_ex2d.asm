# Mapa de registos: 
#  value: $t0 
#  bit:  $t1 
#  i:   $t2
# flag: $t3
	.data
str1:	.asciiz "Introduza um numero: "
str2: 	.asciiz "O valor em binário é: \n" 
 	.eqv print_string,4
 	.eqv read_int,5
 	.eqv print_char,11
 	.text
 	.globl main
main: 	la $a0,str1
 	li $v0,print_string
 	syscall 		# print_string(str1);
 	
 	li $v0,read_int
 	syscall
 	or $t0,$0,$v0 		# value = read_int();
 	#move $t0,$v0
 	
 	li $v0, print_string
 	la $a0, str2
 	syscall 		# print_string("\nO valor em binário é: ")
 	
 	li $t2,0 		# i = 0
 	li $t3,0		# flag = 0
 	
for: 	bge $t2,32,endfor 	# while(i < 32) {
	srl $t1,$t0,31
	beq $t3,1,doit		# if(flag == 1)
	bne $t1,0,doit		# if(bit != 0)
	j endif
	
doit:	li $t3,1
	rem $t4,$t2,4		# i % 4
	bne $t4,$0,enddoit	# if((i % 4) == 0)
	li $v0,print_char
	li $a0,' '		# print de ' '
	syscall
	j enddoit
	
enddoit:
	addi $a0,$t1,0x30
	li $v0,print_char
	syscall
	j endif

endif:
	sll $t0,$t0,1		# value = value << 1;
	addi $t2,$t2,1		# i++
	j for
	
endfor:
	jr $ra 