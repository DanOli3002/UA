strcpy:	li $t0,0			# i = 0
do:	lb $t1,0($a0)
	lb $t2,0($a1)
	
	sb $a0,0($a1)			# dst[i] = src [i]
	addiu $a1,$a1,1
while:	beq $t2,'\0',do			# while(src[i++] != '\0')