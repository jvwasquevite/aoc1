#include <stdio.h>
 
/*
	Escreva um programa que receba dois números em complemento de dois 
	(armazenados em $s0 e $s1). Procure em um vetor (com início endereçado em $s3 e 
	tamanho armazenado em $s4) quantos números existem com valores dentro do 
	intervalo fechado definido por $s0 e $s1. Assuma que $s0 ≤ $s1.
	Utilize os registradores $s3 e $s4 apenas para armazenar o início e o tamanho do 
	vetor.
*/

int main() {
	
// Dois numeros (comp. de 2) em $s0 e $s1: intervalo fechado dentre -5 e 40
int beg = -120, end = -20;

// Vetor de elementos
int arr[6] = {50, -120, -80, -100, -200, -20};

// Inicio do vetor ($s3), tamanho do vetor ($s4) e numeros dentro do intervalo
int i = 0, size = 6, count = 0;

// Looping percorre todo o array
for (i=0; i < size; i++) {
	// Testa apenas os que estão dentro do intervalo
	if(arr[i] >= beg) {
		if(arr[i] <= end) {
			count++; // Incrementa o valor do contador
		}
	}
}

printf("%d", count);
return 0;
}
