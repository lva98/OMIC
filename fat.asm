	.text
	.globl main
main:
	li $v0, 5
	syscall
	
	ori $a0, $v0, 0
	jal fat
	
	ori $a0, $v0, 0
	li $v0, 1
	syscall	
	
end:
	li $v0, 10
	syscall
	
fat:
	ori $t0, $zero, 1
	ori $t1, $a0, 0
	ori $t3, $zero, 1
	
	addi $t1, $t1, 1
	li $v0, 1
loop:	
	mul $t3, $t0, $t3
	addi $t0, $t0, 1
	
	blt $t0, $t1, loop
			
	addi $v0, $t3, 0
	jr $ra

.data 
	_n:
	.ascii "\n"
