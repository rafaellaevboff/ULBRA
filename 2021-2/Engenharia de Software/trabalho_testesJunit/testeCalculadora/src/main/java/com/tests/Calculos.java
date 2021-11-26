package com.tests;

import java.util.Scanner;

public class Calculos {
    Scanner ler = new Scanner(System.in);
    double c;

    public void boasVindas(){
        System.out.println("Qual seu nome?");
        String nome = ler.nextLine();
        System.out.println("Seja bem vindo(a) " + nome + "!");
    }

    public void somar(){
        System.out.println("\nDigite o valor do primeiro número:");
        double a = ler.nextDouble();
        System.out.println("Digite o valor do segundo número:");
        double b = ler.nextDouble();
        c = a + b;
        System.out.println("\nO resultado do cálculo foi: " + c);
    }
    public int som2(int a, int b){
        return (a + b)+1;
    }

    public void subtrair(){
        System.out.println("\nDigite o valor do primeiro número:");
        double a = ler.nextDouble();
        System.out.println("Digite o valor do segundo número:");
        double b = ler.nextDouble();
        c = a - b;
        System.out.println("\nO resultado do cálculo foi: " + c);
    }
    public int sub2(int a, int b){
        return a - b;
    }

    public void multiplicar(){
        System.out.println("\nDigite o valor do primeiro número:");
        double a = ler.nextDouble();
        System.out.println("Digite o valor do segundo número:");
        double b = ler.nextDouble();
        c = a * b;
        System.out.println("\nO resultado do cálculo foi: " + c);
    }
    public int mult2(int a, int b){
        return a * b;
    }

    public void dividir(){
        System.out.println("\nDigite o valor do primeiro número:");
        double a = ler.nextDouble();
        System.out.println("Digite o valor do segundo número:");
        double b = ler.nextDouble();
        c = a / b;
        System.out.println("\nO resultado do cálculo foi: " + c);
    }
    public int div2(int a, int b){
        return a / b;
    }

    public int potencia(double base, double exp) {
        return (int)Math.pow(base, exp * 2);
    }
}
