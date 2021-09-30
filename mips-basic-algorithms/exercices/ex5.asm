# Contar dentro de um array de tamanho n quantos elementos existem
# dentro de um intervalo fechado definido por $s0 e $s1 em complemento de dois

## Registradores utilizados:
# $s0 = Inicio do intervalo
# $s1 = Final do intervalo
# $s3 = Endereco do registrador inicial do array
# $s4 = Tamanho total do array
# $t0 = Copia de $s3 para iterar na recursao
# $t1 = Word do array em cada iteracao da recursao
# $t2 = Iterador (i) da recursao
# $t3 = Contador de elementos no intervalo entre $s0 e $s1 (Resposta)
# $t4 = Registrador auxiliar de teste

.data
	.word -80  	# Guarda o primeiro elemento em 0x10010000
	.word -120 	# Guarda o segundo elemento em 0x10010004
	.word -80	# ...
	.word -100
	.word -200
	.word -20

.text
	# Inicializa a primeira posicao do array
	# Copia a primeira posicao em $t0 para manipulacao
	lui $s3, 0x1001
	or $t0, $zero, $s3
	
	# Inicializa o tamanho do array
	ori $s4, $zero, 6
	
	# Inicializa variaveis auxiliares
	ori $t2, $zero, 0 # Iterador da recursao
	ori $t3, $zero, 0 # Contador de elementos no intervalo
	
	# Calculo do complemento de dois
	# Inicializa $s0 com o inicio do intervalo
	ori $s0, $zero, 120 # Guarda o valor positivo
	nor $s0, $s0, $s0 # Faz o complemento
	addi $s0, $s0, 1 # Soma 1
	
	# Calculo do complemento de dois
	# Inicializa $s1 com o final do intervalo
	ori $s1, $zero, 20 # Guarda o valor positivo
	nor $s1, $s1, $s1 # Faz o complemento
	addi $s1, $s1, 1 # Soma 1
	
recursion:
	# Armazena a cada word do array em $t1
	lw $t1, 0x0($t0)
	
	# Se t1 (word) < s0 (valor inicial), t4 = 1; senao t4 = 0
	# Sai da recursao caso t4 = 1, ou seja, esta fora do intervalo inicial
	slt $t4, $t1, $s0
	bne $t4, $zero, exit
	
	# Se s1 (valor final) < t1 (word), t4 = 1; senao t4 = 0
	# Sai da recursao caso t4 = 1, ou seja, esta fora do intervalo final
	slt $t4, $s1, $t1
	bne $t4, $zero, exit
	
	# Como esta dentro do intervalo, incrementa o contador de elementos
	addi $t3, $t3, 1
	
exit:
	# Incrementa a posicao atual do array de 4 em 4
	addi $t0, $t0, 4
	
	# Incrementa o iterador da recursao
	addi $t2, $t2, 1
	
	# Volta para a recursao se: iterador da recursao != tamanho do array
	bne $t2, $s4, recursion