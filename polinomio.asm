	.text
	.globl main
main:
	li $v0, 5
	syscall
	ori $a0, $v0, 0 # a0 = a
	
	li $v0, 5
	syscall
	ori $a1, $v0, 0 # a1 = b
	
	li $v0, 5
	syscall
	ori $a2, $v0, 0 # a2 = c
	
	li $v0, 5
	syscall	
	ori $a3, $v0, 0 # a3 = d
	
	li $v0, 5
	syscall
	ori $s0, $v0, 0 # s0 = x

	jal polinomio
	
	addi $a0, $v0, 0
	li $v0, 1
	syscall	
	
end:
	li $v0, 10
	syscall
	
polinomio:	          # s0 = x^1
	mul $t0, $s0, $s0 # t0 = x^2
 	mul $t1, $t0, $s0 # t1 = x^3
 		
	mul $t2, $a0, $t1 # a*x^3
	mul $t3, $a1, $t0 # b*x^2
	mul $t4, $a2, $s0 # c*x
	
	add $a3, $a3, $t4
	add $a3, $a3, $t3
	add $a3, $a3, $s2
	
	addi $v0, $s0, 0	
	jr $ra
#vamos escrever nossa função aqui
