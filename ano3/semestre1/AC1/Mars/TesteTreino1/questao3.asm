# Mapa de Registos
# n_even = $t0
# n_odd = $t1
# p1 =
# p2 = 
	.data
N:	.word 35			# Definir N 35
a:	.space 4 * 35			# space 'a' para array de 35
b:	.space 4 * 35			# space 'b' para array de 35
	.eqv read_int,5
	.eqv print_int10,1
	.text
	.globl main
main:	li $t0,0			# n_even = 0
	li $t1,0			# n_odd = 0
	
	