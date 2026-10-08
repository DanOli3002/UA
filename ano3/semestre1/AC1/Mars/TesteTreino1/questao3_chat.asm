    .data
    .eqv N,35                   # Define N as 35
a_array:  .space 140              # Allocate space for array a with 35 integers
b_array:  .space 140              # Allocate space for array b with 35 integers
	.eqv read_int,5
	.eqv print_int10,1
    .text
    .globl main
main:
    # Initialize n_even and n_odd
    li $t0, 0                  # n_even = 0
    li $t1, 0                  # n_odd = 0

    # First loop: Read integers into array a
    la $t2, a_array                  # Load address of array a into $t2
    li $t3, 0                  # Initialize counter i = 0
loop1:
    bge $t3, N, end_loop1      # if i >= N, end loop
    li $v0, read_int                  # syscall to read integer
    syscall
    sw $v0, 0($t2)             # Store read integer into a[i]
    addi $t2, $t2, 4           # Increment pointer to a[i+1]
    addi $t3, $t3, 1           # Increment counter i
    j loop1
end_loop1:

    # Second loop: Separate even and odd numbers
    la $t2, a_array                  # Reset pointer to array a
    la $t4, b_array                  # Load address of array b into $t4
    li $t3, 0                  # Reset counter i = 0
loop2:
    bge $t3, N, end_loop2      # if i >= N, end loop
    lw $t5, 0($t2)             # Load a[i] into $t5
    rem $t6, $t5, 2            # t6 = a[i] % 2
    bne $t6, 0, odd_case       # if a[i] is odd, jump to odd_case
even_case:
    addi $t0, $t0, 1           # n_even++
    j next_element             # Skip odd case
odd_case:
    sw $t5, 0($t4)             # Store odd number in b[n_odd]
    addi $t4, $t4, 4           # Move to next position in b
    addi $t1, $t1, 1           # n_odd++
next_element:
    addi $t2, $t2, 4           # Move to the next element in a
    addi $t3, $t3, 1           # i++
    j loop2
end_loop2:

    # Third loop: Print elements of b
    la $t4, b_array                  # Reset pointer to array b
    li $t3, 0                  # Reset counter i = 0
print_loop:
    bge $t3, $t1, end_print    # if i >= n_odd, end loop
    lw $a0, 0($t4)             # Load b[i] into $a0
    li $v0, print_int10                  # syscall for print_int
    syscall
    li $v0, 11                 # syscall for print_char
    li $a0, 44                 # ASCII code for comma ','
    syscall
    addi $t4, $t4, 4           # Move to next element in b
    addi $t3, $t3, 1           # i++
    j print_loop
end_print:

    jr $ra
