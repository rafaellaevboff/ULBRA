package com.company;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        String nomeProduto;
        double valorProduto, valorDesconto;

        System.out.println("Digite o nome do produto: ");
        nomeProduto = ler.next();

        System.out.println("Digite o valor do produto: ");
        valorProduto = ler.nextDouble();

        if(valorProduto > 0 && valorProduto <50){
            System.out.println("Produto: " + nomeProduto);
            System.out.println("Você não tem desconto.");
            System.out.println("Valor a pagar: R$" + valorProduto);
        }
        else if(valorProduto >= 50 && valorProduto < 200){
            System.out.println("Produto: " + nomeProduto);
            System.out.println("Valor original: " + valorProduto);
            valorDesconto = valorProduto * 0.95;
            System.out.println("Com o desconto de 5% você irá pagar R$" + valorDesconto);
        }
        else if(valorProduto >= 200 && valorProduto < 500){
            System.out.println("Produto: " + nomeProduto);
            System.out.println("Valor original: " + valorProduto);
            valorDesconto = valorProduto * 0.94;
            System.out.println("Com o desconto de 6% você irá pagar R$" + valorDesconto);
        }
        else if(valorProduto >= 500 && valorProduto < 1000){
            System.out.println("Produto: " + nomeProduto);
            System.out.println("Valor original: " + valorProduto);
            valorDesconto = valorProduto * 0.93;
            System.out.println("Com o desconto de 7% você irá pagar R$" + valorDesconto);
        }
        else if(valorProduto >= 1000){
            System.out.println("Produto: " + nomeProduto);
            System.out.println("Valor original: " + valorProduto);
            valorDesconto = valorProduto * 0.92;
            System.out.println("Com o desconto de 8% você irá pagar R$" + valorDesconto);
        }
        else{
            System.out.println("Produto: " + nomeProduto);
            System.out.println("Você digitou um valor inválido.");
        }
    }
}
