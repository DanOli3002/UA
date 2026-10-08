#typedef struct
#{				Align Size Offset
#	char id;		          1	1    0
# 	double av;		  8     8    8
#	int ns;			  4     4    16
# 	char smp[18];		  1     18    20
# 	int sum;		          4	4     40     	
#
#} t_sample;

# Mapa de registos
# ts: $a0
# nval: $a1
# sum: $f0
# n:$t0
# k:$t1
# acc:$t2
# pu:$t3

	.data
zero:	.double 0.0
	.text
	.globl process

process:	la	$t0,zero
	l.d	$f0,0($t0)	#sum = 0.0
	li	$t2,0		#acc =0 
	li	$t1,0		#k=0
	
	addu	$t3,$a0,$a1
for:	bge	$a0,$t2,endfor
	
for2:	lw	$t5,16($a0)	#ts->ns
	bge	$t1,$t5,enfor2
	addu	$t6,$a0,$t1	
	lb	$t7,20($t6)		#ts->smp[k]
	addu	$t2,$t2,$t7		#acc+=ts->smp[k]
	addiu	$t1,$t1,1
	j	for2
enfor2:
	sw	$t2,40($a0)		#ts->sum = acc
	mtc1	$t2,$f0
	cvt.d.w	$f2,$f2			#double acc
	mtc1	$t5,$f4
	cvt.d.w	$f4,$f4
	div.d	$f6,$f2,$f4
	s.d	$f6,8($a0)
	add.d	$f0,$f0,$f6
	addiu	$a0,$a0,1
	j	for
endfor:
	cvt.s.d	$f0,$f0
	jr	$ra
	
	
	