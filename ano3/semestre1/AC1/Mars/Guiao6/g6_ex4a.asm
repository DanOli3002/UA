	.eqv print_int10,1
	.eqv print_string,4
	.data
str1:	.asciiz "Nr. parametros: "
str2:	.asciiz "\nP"
str3:	.asciiz ": "
	.text
	.globl main
main:	move $t0,$a0			# $a0 argc
	move $t1,$a1			# $a1 argv
	
	li $v0,print_string
	la $a0,str1
	syscall				# print_string("Nr. de parametros: ")
	
	li $v0,print_int10
	move $a0,$t0
	syscall				# print_int10(argc)
	
	li $t2,0			# i = 0
	
for:	bge $t2,$t0,endfor		# for(i < argc)
	li $v0,print_string
	la $a0,str2
	syscall				# print_string("\nP")
	
	li $v0,print_int10
	move $a0,$t2
	syscall				# print_int10(i)
	
	li $v0,print_string
	la $a0,str3
	syscall				# print_string(": ")
	
	sll $t3,$t2,2
	addu $t3,$t3,$t1
	lw $a0,0($t3)
	
	li $v0,print_string
	syscall				# print_string(argv[i])
	
	addi $t2,$t2,1			# i++
	j for
endfor:	
	jr $ra