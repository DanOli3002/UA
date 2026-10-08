# mapa de registos:
# $t1:	p
# $t2:	pultimo
	
	.eqv SIZE,3
	.eqv print_string,4
	.eqv print_char,11
	.data
array:	.word str1,str2,str3
str1:	.asciiz "Array"
str2:	.asciiz "de"
str3:	.asciiz "ponteiros"
	.text
	.globl main
main:	la $t1,array			# $t1 = p = &array[0] = array
	li $t0,SIZE
	sll $t0,$t0,2
	addu $t2,$t1,$t0		# $t2 = pultimo = array + SIZE
for:	bge $t1,$t2,endfor		# for(p < pultimo)
	
	lw $a0,0($t1)
	li $v0,print_string
	syscall				# print_string(*p)
	
	li $a0,'\n'
	li $v0,print_char
	syscall				# print_char('\n')
	
	addi $t1,$t1,4			# p++
	
	j for
	
endfor:	jr $ra