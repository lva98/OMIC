	.text
	.globl main
main:
	li $v0, 5
	syscall
	ori $a0, $v0, 0 
	
	jal fib
	
	addi $a0, $v0, 0
	li $v0, 1
	syscall	
	
end:
	li $v0, 10
	syscall
	
fib:
	ori $t0, $zero, 0
	addi, $a0, $a0, -1
	
	add $t1, $zero, 0
	add $t2, $zero, 1
loop:
	add $t3, $t1, $t2
	addi $t1, $t2, 0
	addi $t2, $t3, 0
	  
	addi $t0, $t0, 1
	bne $t0, $a0, loop
	
	addi $v0, $t3, 0
	jr $ra
	
# 1 1 2 3 5 8 13 21 34 55 89

#vamos escrever nossa função aqui
