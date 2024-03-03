#include <stdio.h>
#include <string.h>

int main() {
    int N;
    printf("Quantidade de passageiros: ");
    scanf("%d", &N);

    for (int i = 0; i < N; i++) {
        printf("Voce possui RG? (Sim ou Nao): ");
        char possuiRG[10];
        scanf("%s", possuiRG);
        
        printf("Qual sua data de nascimento no RG? (DD/MM/AAAA): ");
        char dataNascimentoRG[11];
        scanf("%s", dataNascimentoRG);

        printf("Voce possui passagem? (Sim ou Nao): ");
        char possuiPassagem[10];
        scanf("%s", possuiPassagem);
        
        printf("E a data de nascimento na passagem? (DD/MM/AAAA): ");
        char dataNascimentoPassagem[11];
        scanf("%s", dataNascimentoPassagem);
        
        printf("Qual o seu assento? ");
        char assento[10];
        scanf("%s", assento);

        if (strcmp(possuiRG, "Nao") == 0) {
            printf("A saida é nessa direçao\n");
        } else if (strcmp(possuiPassagem, "Nao") == 0) {
            printf("A recepção é nessa direçao\n");
        } else if (strcmp(dataNascimentoRG, dataNascimentoPassagem) != 0) {
            printf("Infelizmente terei que chamar a polícia.\n");
        } else {
            printf("O seu assento e %s, tenha um ótimo dia\n", assento);
        }
    }
    return 0;
}