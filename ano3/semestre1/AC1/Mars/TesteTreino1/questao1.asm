# Mapa de registos
# val = $t0
# n = $t1
# min = $t2
# max = $t3
	.data
	.eqv print_string,4
	.eqv print_int10,1
	.eqv print_char,11
	.eqv read_int,5
str1:	.asciiz "Digite até 20 inteiros (zero para terminar):"
str2:	.asciiz "Máximo/mínimo são: "
	.text
	.globl main
main:	li $t1,0			# n = 0
	li $t2,0x7FFFFFFF		# min = 0x7FFFFFFF
	li $t3,0x80000000		# max = 0x80000000
	
	li $v0,print_string
	la $a0,str1
	syscall				# print_string(str1)
	
do:	li $v0,read_int
	syscall
	move $t0,$v0			# val = read_int()
	
if1:	beq $t0,$0,endif1		# if(val != 0)
if2:	ble $t0,$t3,endif2		# if(val > max)
	move $t3,$t0			# max = val
endif2:
if3:	bge $t0,$t2,endif3		# if(val < min)
	move $t2,$t0			# min = val
endif3:	
endif1:
	addi $t1,$t1,1
	
while:	
	bge $t1,20,endw			# (n < 20)
	beq $t0,0,endw			# (val != 0)
	j do
	
endw:	
	li $v0,print_string
	la $a0,str2
	syscall				# print_string(str2)
	
	li $v0,print_int10
	move $a0,$t3
	syscall				# print_int10(max)
	
	li $v0,print_char
	li $a0,':'
	syscall				# print_char(':')
	
	li $v0,print_int10
	move $a0,$t2
	syscall				# print_int10(min)
	
	jr $ra
	