	.text
	.globl main
main:
	li $v0, 5
	syscall
	ori $a0, $v0, 0
	
	jal somatorio
	
	ori $a0, $v0, 0
	li $v0, 1
	syscall
	
	
	j end
	
somatorio:
	slti $t0, $a0, 1
	bne $t0, $zero, somatorio_0
	
	addi $sp, $sp, -8
	sw $a0, 0($sp)
	sw $ra, 4($sp)
	
	addi $a0, $a0, -1
	jal somatorio
	
	lw $a0, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8
	
	add $v0, $v0, $a0
	jr $ra
	
	
somatorio_0:
	ori $v0, $zero, 0
	jr $ra

end:
	li $v0, 10
	syscall