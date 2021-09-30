#include <stdio.h>
#include <math.h>

int main() {
int i = 0, a = 1, n = 2;

while(i<=n) {
	a = a * (n + floor(i/2));
	i++;
}

printf("Produtório: %d", a);

return 0;
}

