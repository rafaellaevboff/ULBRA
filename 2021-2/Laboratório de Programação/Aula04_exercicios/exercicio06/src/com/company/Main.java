package com.company;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);

        System.out.println("Digite uma palavra: ");
        String palavra = ler.nextLine();
        //String palavraFrase = "FRASE";
        System.out.println("A palavra digitada sem o último caracter é " + palavra.substring(0,palavra.length()-1));
    }
}
