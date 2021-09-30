# Calcular o fatorial de n, onde o valor de n deve ser lido da posicao inicial
# (0x10010000) e o resultado (n!) deve ser escrito na posicao seguinte 0x10010004

## Registradores utilizados:
# $t0 = Operador e resultado final do calculo
# $t1 = Operando do calculo, inserido pelo usuario
# $t2 = Registrador auxiliar de teste

	# Inicializa o operador fat do calculo com 1 (um)
	# Le o valor de n na posicao inicial
	ori $t0, $zero, 1
	lw $t1, 0x10010000
	
recursion:
	# Se t1 (n) < 1, t2 = 1; senao t3 = 0
	# Sai da recursao caso t2 = 1, ou seja, o calculo finalizou
	slti $t2, $t1, 1
	bne $t2, $zero, exit
	
	# Realiza a multiplicacao de fatores
	mult $t0, $t1
	mflo $t0
	
	# Decrementa o valor de n
	sub $t1, $t1, 1
	j recursion

exit:
	# Escreve a resposta na posicao seguinte
	sw $t0, 0x10010004