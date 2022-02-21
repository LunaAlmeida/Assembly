.data
   mnsg: .ascii "insira um número:"
   cont: .word 0

.text
   #aparecer mnsg
   li $v0, 4 
   la $a0, mnsg
   syscall
   
   #salvar idade
   li $v0, 5
   syscall
   move $t0, $v0
   jal cont
   
   #print
   li $v0, 1
   move $a0, $t0
   syscall
