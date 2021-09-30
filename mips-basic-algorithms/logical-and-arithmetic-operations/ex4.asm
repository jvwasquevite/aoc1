# Guardar 0x12345678 em $t1 e inverter os bits em $t2

# 0x00000000, onde cada dígito '0' é 1 byte = 4 bits (8 bytes x 4 bits = 32 bits)

# Armazena 0x1234 em t1
# Desloca 16 bits a esquerda
# Armezena (e concatena) 0x5678 em t1
ori $t1, $zero, 0x1234 
sll $t1, $t1, 16
ori $t1, $t1, 0x5678

# Copia t1 = 0x12345678, para t3
# Desloca 28 bits (32 bits - 4 bits) para a esquerda
# t3 armazena o ultimo digito (8)
or $t3, $t1, $zero
sll $t3, $t3, 28

# Desloca 4 bits para direita
# Desloca 28 bits para esquerda: retira os outros digitos
# Desloca 4 bits para direita: posiciona na posicao para fazer o or
srl $t4, $t1, 4
sll $t4, $t4, 28
srl $t4, $t4, 4
or $t3, $t3, $t4

srl $t4, $t1, 8
sll $t4, $t4, 28
srl $t4, $t4, 8
or $t3, $t3, $t4

srl $t4, $t1, 12
sll $t4, $t4, 28
srl $t4, $t4, 12
or $t3, $t3, $t4

srl $t4, $t1, 16
sll $t4, $t4, 28
srl $t4, $t4, 16
or $t3, $t3, $t4

srl $t4, $t1, 20
sll $t4, $t4, 28
srl $t4, $t4, 20
or $t3, $t3, $t4

srl $t4, $t1, 24
sll $t4, $t4, 28
srl $t4, $t4, 24
or $t3, $t3, $t4

srl $t4, $t1, 28
sll $t4, $t4, 28
srl $t4, $t4, 28
or $t3, $t3, $t4

or $t2, $t3, $zero