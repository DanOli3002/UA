# Mapa de registo:
# cc:	$t0
# ms:	$t1
	.data
str:	.asciiz "Teste-Pratico-1"
	.text
	.globl main
main:	la $t1,str				# ms = str

while:	lb $t2,0($t1)
	beq $t2,'\0',endw			# while(ms != '\0')
	lb $t0,0($t1)				# cc = *ms
	
if1:	bge $t0,'0',else			# if(cc < '0')
	li $t2,'0'				# ms = '0'
	sb $t2,0($t1)
	j endif1

else:	
if2:	blt $t0,'a',endif1			# if (cc >= 'a' &&
	bgt $t0,'z',endif1			# cc <= 'z')
	lb  $t2,0($t1)
	addiu $t3,$t2,-0x20			# ms = ms - 0x20
	sb $t3,0($t1)
endif1:
	addiu $t1,$t1,1				# ms++
	j while
endw:	jr $ra

	