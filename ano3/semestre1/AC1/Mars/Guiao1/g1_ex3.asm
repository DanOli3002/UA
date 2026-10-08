	.data
	.text
	.globl main
main:	ori $v0,$0,5	# read_int() é 5
	syscall
	or $t0,$0,$v0	# $t0 = $v0 = valor lido do teclado
	
	ori $t2,$0,8	# $t2 = 8
	add $t1,$t0,$t0	# $t1 = $t0 + $t0 = x + x = 2 * x
	sub $t1,$t1,$t2	# $t1 = $t1 - $t2 = 2 * x - 8
	
	or $a0,$0,$t1	# $a0 = $t1
	ori $v0,$0,1	# print_int10() é 1
	syscall
	
	ori $a0,$0,'\n'	# $a0 = '\n'
	ori $v0,$0,11	# print_char('\n') é 11
	syscall		# serve para dar o parágrafo
	
	or $a0,$0,$t1	# $a0 = $t1
	ori $v0,$0,34	# print_int16() é 34
	syscall
	
	ori $a0,$0,'\n'	# $a0 = '\n'
	ori $v0,$0,11	# print_char('\n') é 11
	syscall		# serve para dar o parágrafo
	
	or $a0,$0,$t1	# $a0 = $t1
	ori $v0,$0,36	# print_intu10() é 36
	syscall
	
	jr $ra
	
