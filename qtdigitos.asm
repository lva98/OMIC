	.text
	.globl main
main:
	li $v0, 5
	syscall
	ori $a0, $v0, 0
	
	jal qtdigitos
	
	addi $a0, $v0, 0
	li $v0, 1
	syscall	
	
end:
	li $v0, 10
	syscall
	
qtdigitos:
	ori $t0, $zero, 0
	addi $t1, $zero, 10 # T1 = 10
	addi $t2, $zero, 1
	
loop:	
	mul $t2, $t2, $t1 # T2 = T2 * 10
	addi $t0, $t0, 1 # T0 = T0 + 1
	slt $t3, $t2, $a0 # SE T2 > A0 ? T3 = 1 : T3 = 0
	
	mul $t4, $t0, $t1
	beq $a0, $t4, soma #Se for multiplo de 10
	
	bne $t3, $zero, loop
	j continua
	
soma:
	addi $t0, $t0, 1

continua:
	addi $v0, $t0, 0
	jr $ra
	
# 1
