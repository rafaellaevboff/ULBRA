package com.tests;

import java.util.Scanner;

public class Calculos {
    Scanner ler = new Scanner(System.in);
    String nome;
    double c;

    public void boasVindas(){
        System.out.println("Qual seu nome?");
        String nome = ler.nextLine();
        System.out.println("Seja bem vindo(a) " + nome);
    }

    public void calcular() {
        System.out.println("\nDigite qual operação deseja fazer:\n1 = soma(+)\n2 = subtração(-)\n3 = multiplicação\n4 = divisão(/)");
        int operacao = ler.nextInt();
        System.out.println("\nDigite o valor do primeiro número:");
        double a = ler.nextDouble();
        System.out.println("Digite o valor do segundo número:");
        double b = ler.nextDouble();

        switch (operacao):{
            case 1: {
                somar();
                break;
            }
            case 2: {
                subtrair();
                break;
            }
            case 3: {
                multiplicar();
                break;
            }
            case 4: {
                divisao();
                break;
            }
        }
    }

    public void somar(double a, double b){
        c = a + b;
        System.out.println("\nO resultado do cálculo foi: " + c);
    }

    public void subtrair(double a, double b){
        c = a - b;
        System.out.println("\nO resultado do cálculo foi: " + c);

    }

    public void multiplicar(double a, double b){
        c = a * b;
        System.out.println("\nO resultado do cálculo foi: " + c);
    }

    public void dividir(double a, double b){
        c = a / b;
        System.out.println("\nO resultado do cálculo foi: " + c);
    }
}
