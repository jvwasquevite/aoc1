# Comecando com 'ori $t1, $zero, 0x01', escrever '0xFFFFFFFF' em $t1

# sll + or: permite aumentar o numero de uns (1) até ter 16
# Ao ter 16 uns (1), ao realizar o or, todos os 32 bits se tornam uns (1)

# Inicializa o $t1 = 00000000000000000000000000000001 (32 bits) = 1
ori $t1, $zero, 0x01

# Desloca o t1 1 bit a esquerda e salva em t2
# Concatena (soma) o t1 com o t2 e salva em t1
sll $t2, $t1, 1   # t2 = 00000000000000000000000000000010 = 2
or $t1, $t1, $t2  # t1 = 00000000000000000000000000000011 = 3

# Desloca o t1 2 bits a esquerda e salva em t2
# Concatena (soma) o t1 com o t2 e salva em t1
sll $t2, $t1, 2   # t2 = 00000000000000000000000000001100 = 12
or $t1, $t1, $t2  # t1 = 00000000000000000000000000001111 = 15

# Desloca o t1 4 bits a esquerda e salva em t2
# Concatena (soma) o t1 com o t2 e salva em t1
sll $t2, $t1, 4   # t2 = 00000000000000000000000011110000 = 240
or $t1, $t1, $t2  # t1 = 00000000000000000000000011111111 = 255

# Desloca o t1 8 bits a esquerda e salva em t2
# Concatena (soma) o t1 com o t2 e salva em t1
sll $t2, $t1, 8   # t2 = 00000000000000001111111100000000 = 65280
or $t1, $t1, $t2  # t1 = 00000000000000001111111111111111 = 65535

# Desloca o t1 16 bits a esquerda e salva em t2
# Concatena (soma) o t1 com o t2 e salva em t1
sll $t2, $t1, 16  # t2 = 11111111111111110000000000000000 = 4294901760
or $t1, $t1, $t2  # t1 = 11111111111111111111111111111111 = 4294967295