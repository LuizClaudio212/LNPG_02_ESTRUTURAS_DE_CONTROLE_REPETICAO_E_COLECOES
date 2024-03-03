#include <stdio.h>

int main() {
    int quantidadeJogos;
    printf("Quantidade de jogos vendidos este mes: ");
    scanf("%d", &quantidadeJogos);

    double valorTotalVendas = quantidadeJogos * 19.90;
    double bonus = (quantidadeJogos / 15) * (0.08 * valorTotalVendas);
    double salario = (0.5 * valorTotalVendas) + bonus;

    printf("%.2f\n", valorTotalVendas);
    printf("%.2f\n", bonus);
    printf("%.2f\n", salario);

    return 0;
}