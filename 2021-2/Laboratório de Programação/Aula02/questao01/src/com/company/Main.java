package com.company;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner ler = new Scanner(System.in);
        float valorProduto, desconto, valorDesconto, produtoDesconto;

        System.out.println("Digite o valor do produto:");
        valorProduto = ler.nextFloat();

        System.out.println("Digite a porcentagem de desconto:");
        desconto = ler.nextFloat();

        valorDesconto = valorProduto * desconto / 100;
        produtoDesconto = valorProduto - valorDesconto;

        System.out.println("\nO valor do produto sem desconto é :" + valorProduto);
        System.out.println("O valor do desconto é:" + valorDesconto);
        System.out.println("O valor do produto com desconto é:" + produtoDesconto);

    }
}
