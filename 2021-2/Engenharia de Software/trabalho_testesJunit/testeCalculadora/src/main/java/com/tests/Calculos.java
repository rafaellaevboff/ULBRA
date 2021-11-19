package com.tests;

import java.util.Scanner;

public class Calculos {
    Scanner ler = new Scanner(System.in);
    String nome;

    public void boasVindas(){
        System.out.println("Qual seu nome?");
        String nome = ler.nextLine();
        System.out.println("Seja bem vindo(a) " + nome + "!");
    }

    double c;
    public void somar(){
        System.out.println("\nDigite o valor do primeiro número:");
        double a = ler.nextDouble();
        System.out.println("Digite o valor do segundo número:");
        double b = ler.nextDouble();
        c = a + b;
        System.out.println("\nO resultado do cálculo foi: " + c);
    }

    public void subtrair(){
        System.out.println("\nDigite o valor do primeiro número:");
        double a = ler.nextDouble();
        System.out.println("Digite o valor do segundo número:");
        double b = ler.nextDouble();
        c = a - b;
        System.out.println("\nO resultado do cálculo foi: " + c);

    }

    public void multiplicar(){
        System.out.println("\nDigite o valor do primeiro número:");
        double a = ler.nextDouble();
        System.out.println("Digite o valor do segundo número:");
        double b = ler.nextDouble();
        c = a * b;
        System.out.println("\nO resultado do cálculo foi: " + c);
    }

    public void dividir(){
        System.out.println("\nDigite o valor do primeiro número:");
        double a = ler.nextDouble();
        System.out.println("Digite o valor do segundo número:");
        double b = ler.nextDouble();
        c = a / b;
        System.out.println("\nO resultado do cálculo foi: " + c);
    }
}
