	.text
	.globl main
main:
	li $v0, 5
	syscall
	
	ori $a0, $v0, 0
	jal fat 
	
end:
	li, $v0, 10
	syscall	

fat:
	ori $t0, $zero, 0
	ori $t1, $a0, 0
loop:
	slt $t2, $a0, $t0 # $t2 = t0 >= a0 ? 1 : 0
	
	or $a0, $t0, $zero
	ori $v0, 1
	syscall	
	
	beq $t2, $zero, loop
	