package com.company;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Teclado tc = new Teclado();

        Scanner ler = new Scanner(System.in);
        System.out.println("Para utilizar a primeira parte do programa digite:\n1 para utilizar o Scanner;\n2 para utilizar o JOptionPane.");
        int escolhaFormaUsar = ler.nextInt();

        if(escolhaFormaUsar == 1){
            tc.lerString();
            tc.lerString("Por favor, digite uma String:");
            tc.lerFloat();
            tc.lerFloat("Por favor, digite um Float:");
            tc.lerDouble();
            tc.lerDouble("Por favor, digite uma Double:");
            tc.lerInt();
            tc.lerInt("Por favor, digite um Int:");
            tc.lerChar();
            tc.lerChar("Por favor, digite um Char:");

        }else if(escolhaFormaUsar == 2){
            tc.stringJOP();
            tc.floatJOP();
            tc.doubleJOP();
            tc.intJOP();
            tc.charJOP();
        }else{
            System.out.println("Você não digitou um valor válido.\n");
        }

        tc.validarEmail();
        tc.validarTelefone();
        tc.validarData();
        tc.converterData();
        tc.validarNumerico();
    }
}