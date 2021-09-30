# Calcular 4x - 2y + 3z e armazenar o resultado em $t7
# Para x, y e z sendo 2, 5 e 3: 8 - 10 + 9 = 7

# Inicializa as variaveis x, y e z
ori $t1, $zero, 2 # x = 2
ori $t2, $zero, 5 # y = 5
ori $t3, $zero, 3 # z = 3

# Calcula 4x e guarda em $t5
add $t5, $t1, $t1 # x + x = 2x
add $t5, $t5, $t5 # 2x + 2x = 4x

# Calcula 2y e guarda em $t6
add $t6, $t2, $t2 # y + y = 2y

# Calcula 3z e guarda em $t7
add $t7, $t3, $t3 # z + z = 2z
add $t7, $t7, $t3 # 2z + z = 3z

# Opera todos os valores e armazena em $t7
add $t7, $t7, $t5 # 3z + 4x
sub $t7, $t7, $t6 # (3z + 4x) - 2y
