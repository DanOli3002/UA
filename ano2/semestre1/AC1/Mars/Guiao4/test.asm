	.data
str: .asciiz "YourStringHere"  # Replace with your string

	.text
	.globl main

main:
    la $t1, str      # p = str;

while:
    lb $t2, 0($t1)   # *p
    bne $t2, $zero, if_not_null   # if(*p != '\0')
    j end_while

if_not_null:
    li $t3, '0'      # ASCII value for '0'
    li $t4, '9'      # ASCII value for '9'
    blt $t2, $t3, endif   # if(*p < '0')
    bgt $t2, $t4, endif   # if(*p > '9')

    addi $t0, $t0, 1   # num++;

endif:
    addiu $t1, $t1, 1  # p++;
    j while

end_while:
    # print_int10(num);
    li $v0, 10        # syscall for program termination
    syscall
