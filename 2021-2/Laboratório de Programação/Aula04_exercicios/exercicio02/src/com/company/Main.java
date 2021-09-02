package com.company;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        double valorDoProduto, valorReajustado;
        final double ACRESCIMO = 1.12;
        Scanner ler = new Scanner(System.in);

        System.out.println("Programa para calcular reajuste de preço de produto. Para encerrar o uso digite 0.");
        do {
            System.out.println("Digite o valor do produto: R$");
            valorDoProduto = ler.nextInt();
            if(valorDoProduto > 0) {
                valorReajustado = valorDoProduto * ACRESCIMO;
                System.out.println("O valor do produto com seu reajuste é R$" + valorReajustado);
            }else{
                System.out.println("Volte Sempre!");
            }
        }while(valorDoProduto!=0);
    }
}
