# Mapa de registos:
# $t0 – value
# $t1 – bit
# $t2 - i
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
 	syscall 		# print_string(str1)
 	
 	li $v0,read_int
 	syscall
 	or $t0,$0,$v0 		# value=read_int()
 	#move $t0,$v0
 	
 	li $v0,print_string
 	la $a0,str2
 	syscall 		# print_string("\n0 valor em binário é: ");
 	
 	li $t2,0 		# i = 0
 	
for: 	bge $t2,32,endfor 	# while(i < 32) {

	rem $t4,$t2,4		# i % 4
if1:	bne $t4,$0,endif1	# if((i % 4) == 0)
	li $v0,print_char
	li $a0,' '		# print de ' '
	syscall
	
endif1:

 	li $t3,0x80000000
	and $t1,$t0,$t3		# isola bit 31
 	
if2: 	beq $t1,$0,else 	# if(bit != 0)
 	li $v0,print_char
 	li $a0,'1'
 	syscall 		# print_char("1")
 	j endif2
 	
else: 				# else
 	li $v0,print_char 	# print_char('0');
 	li $a0,'0'
 	syscall			# print_char('0');
 	
endif2:	addi $t2,$t2,1		# i++;
 	sll $t0,$t0,1		# value = value << 1;
 	j for
endfor: 
 	jr $ra