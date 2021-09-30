# Calcular o produtorio, lendo o valor de n em 0x10010000
# e armazenando o resultado em 0x10010004

main:
	ori $t0, $0, 0 # I (t0) = 0
	ori $t2, $0, 1 # A (t2) = 1
	lw $t1, 0x10010000 # Carrega o valor de N (t1)
	ori $t3, $0, 0
	ori $t5, $0, 2

loop:
	slt $t3, $t1, $t0 # Se N (t1) < I (t0), t3 = 1; senão, t3 = 0
	bne $t3, $0, endLoop # Enquanto t3 = 0, continua
	div $0, $t5 # Divide I por 2
	mflo $t4 # Salva o resultado em 4
	add $t4, $t4, $t1 # Soma t4 com N (t1)
	mult $t2, $t4 # Multiplica A (t2) por t4
	mflo $t2 # Salva o resultado em A (t2)
	addi $t0, $t0, 1 # Incrementa o valor de I
	j loop

endLoop:
	sw $t2, 0x10010004