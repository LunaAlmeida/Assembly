.data
	Numero: .ascii "Informe um número:"
	contador: .word 0
	num: .word 0

.text

	li $v0, 4 
	la $a0, Numero
	syscall

	li $v0, 5
	syscall
	
	move $t0, $v0
	sw $t0, num

	la $t1, contador
	lw $t1, 0($t1) 

	loop1: 
		andi $t2, $t0, 1
 		add $t1, $t1, $t2
  		srl  $t0, $t0, 1
  		beqz $t0, stop 
    		j loop1
    	stop:
    	
 

	