# MIPS Registers mapping:
# i = $t0
# v = $t1
# base address of val array = $t2

    .data
	.eqv SIZE,8
val:    .word 8,4,15,-1987,327,-9,27,16  # Define the array elements

    .text
    .globl main

main:
    li $t0, 0                # i = 0
    la $t2, val              # Load the base address of val array

# Begin first loop (do-while equivalent in MIPS)
loop1:
    sll $t3, $t0, 2          # $t3 = i * 4 (to access words in array)
    add $t4, $t2, $t3        # $t4 = &val[i]
    lw $t1, 0($t4)           # v = val[i]

    # Calculate i + SIZE/2 index
    li $t5,SIZE        		# $t5 = SIZE
    div $t5,$t5,2		# $t5 = SIZE / 2
    add $t6, $t0, $t5        # $t6 = i + SIZE / 2
    sll $t6, $t6, 2          # $t6 = (i + SIZE / 2) * 4
    add $t7, $t2, $t6        # $t7 = &val[i + SIZE / 2]

    # Swap val[i] with val[i + SIZE / 2]
    lw $t8, 0($t7)           # $t8 = val[i + SIZE / 2]
    sw $t8, 0($t4)           # val[i] = val[i + SIZE / 2]
    sw $t1, 0($t7)           # val[i + SIZE / 2] = v

    addi $t0, $t0, 1         # i++

    # Check the condition for the loop
    blt $t0, $t5, loop1      # while(i < SIZE / 2)

# Start second loop to print array elements with comma separation
    li $t0, 0                # i = 0

print_loop:
    sll $t3, $t0, 2          # $t3 = i * 4 (to access words in array)
    add $t4, $t2, $t3        # $t4 = &val[i]
    lw $a0, 0($t4)           # Load val[i] into $a0 for printing

    li $v0, 1                # Print integer syscall
    syscall                  # Print val[i]

    # Print separator (comma)
    li $a0, ','              # ASCII code for ','
    li $v0, 11               # Print character syscall
    syscall                  # Print ','

    addi $t0, $t0, 1         # i++
    li $t5, SIZE             # SIZE of the array
    blt $t0, $t5, print_loop # while(i < SIZE)

    # Exit program
    li $v0, 10               # Exit syscall
    syscall
