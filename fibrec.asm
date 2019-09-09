	.text
	.globl main
main:
	li $v0, 5
	syscall
	ori $a0, $v0, 0
	
	jal fib
	
	ori $a0, $v0, 0
	li $v0, 1
	syscall
	
	
	j end
	
fib:
	slti $t0, $a0, 1
	bne $t0, $zero, fib_0
	
	
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $a0, $a0, -1
	jal fib
	
	addi $t1, $v0, 0
	
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	addi $a0, $a0, -2
	jal fib
	
	addi $t2, $v0, 0
	
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	
	add $v0, $t1, $t2
	jr $ra
	
	
fib_0:
	ori $v0, $zero, 1 
	jr $ra

end:
	li $v0, 10
	syscall