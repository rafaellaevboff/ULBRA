package com.company;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);

        System.out.println("Digite uma frase para ela ser invertida sem os espaços: ");
        String frase = ler.nextLine();
        //System.out.println(frase);

        StringBuilder stb = new StringBuilder(frase);
        String fraseFinal = stb.reverse().toString().replace(" ", "");
        System.out.print(fraseFinal);
    }
}
