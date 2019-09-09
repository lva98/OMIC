	.text
	.globl main
main:
	ori $t0, $zero, 10
	ori $s0, $zero, 2
loop_i:
	ori $s1, $zero, 0
loop_j:
	addi $s1, $s1, 1
	# multiplicar $s1 por $s2  printar
	mul $s2, $s1, $s0
	li $v0, 1
	move $a0, $s2
	syscall
	
	li $v0, 4
	la $a0, breakline
	syscall
	
	bne $s1, $t0, loop_j # 
	
	addi $s0, $s0, 1
	bne $s0, $t0, loop_i	

end:
	li $v0, 10
	syscall
	
.data 
	breakline:
	.asciiz "\n"	
