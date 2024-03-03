import java.util.Scanner;

public class valor_aproximado_de_pi {
    public static void main(String[] args) {
        Integer quantidadeTermos;
        Integer sinal =1;
        Double somatoriaS= 0.0;
        Double dividendo = 1.0;
        try(Scanner scan = new Scanner(System.in)){
            System.out.println("Digite um numero inteiro: ");
            quantidadeTermos = scan.nextInt();

            for(int i = 1;i <= quantidadeTermos; i++){
                if(sinal > 0.0){
                    somatoriaS = somatoriaS + (1.0 / (Math.pow(dividendo, 3)));
                    sinal = -1;
                }else{
                    somatoriaS =somatoriaS-(1.0 / (Math.pow(dividendo, 3)));
                    sinal = 1;
                }
                dividendo +=2.0;
            }
            Double pi = Math.pow((somatoriaS*32),(0.333333));
            System.out.printf("O valor de pi é: %.5f", pi);

        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}