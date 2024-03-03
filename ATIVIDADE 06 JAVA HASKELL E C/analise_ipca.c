#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    double menorIPCA = __DBL_MAX__;
    double maiorIPCA = __DBL_MIN__;
    double somaIPCA = 0;
    int quantidadeMeses = 0;
    char mesMenorIPCA[8] = "";
    char mesMaiorIPCA[8] = "";

    printf("Digite os valores do IPCA por mês (Digite '*' para encerrar):\n");

    while (1) {
        printf("Digite o mês e ano (MM/YYYY) seguido do IPCA (utilize vírgula para decimais): ");
        char entrada[50];
        fgets(entrada, sizeof(entrada), stdin);
        entrada[strcspn(entrada, "\n")] = '\0';

        if (strcmp(entrada, "*") == 0) {
            break;
        }

        char mesAno[8];
        double ipca;
        sscanf(entrada, "%s %lf", mesAno, &ipca);

        if (ipca < menorIPCA) {
            menorIPCA = ipca;
            strcpy(mesMenorIPCA, mesAno);
        }

        if (ipca > maiorIPCA) {
            maiorIPCA = ipca;
            strcpy(mesMaiorIPCA, mesAno);
        }

        somaIPCA += ipca;
        quantidadeMeses++;
    }

    double mediaIPCA = somaIPCA / quantidadeMeses;

    printf("Menor IPCA: %.2f (%s)\n", menorIPCA, mesMenorIPCA);
    printf("Maior IPCA: %.2f (%s)\n", maiorIPCA, mesMaiorIPCA);
    printf("Media do IPCA: %.2f\n", mediaIPCA);

    return 0;
}