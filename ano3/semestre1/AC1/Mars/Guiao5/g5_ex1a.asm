# i: $t0
# lista: $t1
# lista + i: $t2 
	.data
	.eqv SIZE,5
str:	.asciiz "\nIntroduza um número: "
	.align 2
list:	.space 20			# o space é SIZE * 4
	.eqv print_string,4
	.eqv read_int,5
	.text
	.globl main
main:	li $t0,0			# i = 0

for:	bge $t0,SIZE,endfor		# for(i < SIZE)
	la $a0,str
	li $v0,print_string
	syscall				# print_string(str)
	
	li $v0,read_int
	syscall				# read_int
	
	la $t1,list
	sll $t2,$t0,2
	addu $t2,$t1,$t2
	sw $v0,0($t2)
	addi $t0,$t0,1			# i++
	j for
	
endfor:	jr $ra
	