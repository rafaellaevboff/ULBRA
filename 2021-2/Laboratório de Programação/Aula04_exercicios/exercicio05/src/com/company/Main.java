package com.company;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);

        System.out.println("Digite uma frase: ");
        String frase = ler.nextLine();

        String procurarPor = "sexo";
        String procurarPor2 = "sexual";

        boolean positivo = frase.toLowerCase().contains(procurarPor.toLowerCase());
        boolean positivo2 = frase.toLowerCase().contains(procurarPor2.toLowerCase());

        if(positivo || positivo2){
            System.out.println("Conteúdo Impróprio.");
        }else{
            System.out.println("Conteúdo Liberado.");
        }

    }
}
