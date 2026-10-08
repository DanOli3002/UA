# Mapa de registos 
# res:		$v0
# s:		$a0
# *s:		$t0
# digit:	$ t1
# Sub-rotinas terminal: não devem ser usados registos $sx
	.data
	.eqv print_int10,1
str:	.asciiz "2020 e 2024 sao anos bissextos"
	.text
	.globl main
	
main:	addi $sp,$sp,-4			# prologo
	sw $ra,0($sp)
	
	la $a0,str			# str = 2020
	jal atoi
	
	lw $ra,0($sp)
	addi $sp,$sp,4			# epilogo
	
	move $t0,$v0
	li $v0,print_int10
	move $a0,$t0
	syscall				# print_int10(atoi(str))
	
	jr $ra
	
atoi:	li $v0,0			# res = 0

while:	lb $t0,0($a0)
	blt $t0,'0',endw		# while (*s >= '0')
	bgt $t0,'9',endw		# while (*s <= '9')
	addi $t1,$t0,-0x30		# digit = *s - '0'
	# O 0x30 é '0' em ASCII Table, e usamos -0x30, pq estamos a somar -0x30
	addiu $a0,$a0,1			# s++
	mulu $v0,$v0,10			# res = res * 10
	addu $v0,$v0,$t1		# res = res * 10 + digit
	j while
	
endw:	jr $ra				# termina sub-rotina