#include <stdio.h>

/*
	Escreva um programa que calcule o fatorial de n.
	O valor de n deve ser lido da memória na posição 0x10010000 e o valor de n! deve 
	ser escrito na posição seguinte na memória (0x10010004).
*/

int main() {
	
// Inicializa a variavel do operador e resultado (fat)
// Inicializa a variavel do operando (n)
int fat = 1, n = 4;

// Looping decrementa n até n > 1
while(n > 1) {
	// Realiza a multiplicação dos fatores
	fat = fat * n;
	n--;
}

printf("%d", fat);
return 0;
}
