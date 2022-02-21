.data
	Numero: .asciiz "Informe um número: "
	
.text
	la $v0, 4
	la $a0, Numero
	syscall
	
	li $v0, 5
	syscall
	
	move $s0, $v0
	li $t1, 85
	
	and $s1, $s0, $t1

