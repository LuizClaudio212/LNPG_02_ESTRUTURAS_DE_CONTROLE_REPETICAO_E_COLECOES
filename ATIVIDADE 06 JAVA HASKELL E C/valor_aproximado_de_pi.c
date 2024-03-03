#include <stdio.h>
#include <math.h>

int main() {
    int n;
    printf("Digite um numero inteiro: ");
    scanf("%d", &n);

    double S = 0;
    for (int i = 0; i < n; i++) {
        S += pow(-1, i) / (2 * i + 1.0);
    }

    double pi = cbrt(S * 32);

    printf("O valor de pi e: %.5f\n", pi);

    return 0;
} 