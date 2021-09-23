package com.company;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);

        System.out.println("Digite seu nome:");
        String nome = ler.next();
        boasVindas(nome);

        System.out.println("Digite o valor da variável a:");
        int a = ler.nextInt();
        System.out.println("Digite o valor da variável b:");
        int b = ler.nextInt();

        System.out.println("A soma dos dois números digitados é:");
        System.out.println(somarDoisNumeros(a,b));
    }

    public static void boasVindas(String nome){
        System.out.println("Seja bem vindo(a) " + nome);
    }

    //sobrecarga = varios metodos com mesmo nome, mas com algumas mudanças, assinaturas diferentes
    public static int somarDoisNumeros(int a, int b){
        int c = a + b;
        return c;
    }
    public static int somarDoisNumeros(int a, double b){
        double c = a + b;
        return (int) c;
    }
    public static int somarDoisNumeros(double a, int b){
        double c = a + b;
        return (int) c;
    }
    public static int somarDoisNumeros(double a, double b){
        double c = a + b;
        return (int) c;
    }
}
