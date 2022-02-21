.data

	array:
		.align 2
		.space 60
	h: .word 7
		
.text
	lw $t0, h
	li $t4, 32
	li $t5, 48
	
	move $t2, $zero
	move $t3, $zero
	
	loop:
		beq $t2, $t4, sairPrimeiro
		sw $t4, array($t2)
		lw $t3, array($t2)
		addi $t2, $t2, 4
		addi $t3, $t3, 0
		j loop
	
	sairPrimeiro:
		move $t2, $zero
		loop2:
			beq $t2, $t5, sairSegundo
			sw $t3, array($t2)
			lw $s1, array($t2)
			addi $t2, $t2, 4
			addi $t3, $t3, 0
			j loop2
		
	sairSegundo:
		move $t2, $zero
		move $t3, $zero
		li $t6, 60
		loop3:
			beq $t2, $t6, sairTerceiro
			sw $t3, array($t2)
			addi $t2, $t2, 4
			addi $t3, $t3, 0			
			j loop3

	sairTerceiro:
		add $s1, $t0, $t1
		li $t5, 52
		li $t6, 48
		move $t2, $t6

			loop4:
				beq $t2, $t5, sairQuarto
				sw $s1, array($t2)
				addi $t2, $t2, 4
				j loop4			
		
	sairQuarto:
		move $t2, $zero
		li $t6, 60
		imprime:
			beq $t2, $t6, impressao
			li $v0, 1
			lw $a0, array($t2)
			syscall
			
			addi $t2, $t2, 4
			j imprime
			
		impressao:
			
		
		
		