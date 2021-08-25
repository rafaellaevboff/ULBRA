package com.company;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);

        System.out.println("Digite uma frase para ela ser invertida: ");
        String frase = ler.nextLine();
        System.out.println(frase);

        StringBuilder strb = new StringBuilder(frase);
        frase = strb.reverse().toString();
        System.out.print(frase.replace(" ", ""));
        //System.out.println(frase);


        //char = vetor[]
        //String frase = JOptionPane.showInputDialog(null, "Digite uma frase: ");
        //vetor = frase.toCharArray();
    }
}
