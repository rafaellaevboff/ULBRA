package com.company;

import java.util.Scanner;

public class Main {
/*Escreva um programa que crie um String e use um laço for para verificar se ele é um palíndromo, ou seja,
se você inverter a ordem dos caracteres do String, obterá o mesmo String. Por exemplo, “abcdcba” é um palíndromo.
 */
    public static void main(String[] args) {
	Scanner ler = new Scanner(System.in);
        System.out.println("Digite uma palavra: ");

        String palavra = ler.next();
        String[] normal = palavra.split("");

        String palavraInvertida = new StringBuilder(palavra).reverse().toString();
        String[] invertida = palavraInvertida.split("");

        int contador = 0;
        for(int i = 0; i < palavra.length(); i++){
            if(normal[i].equals(invertida[i])){
                contador++;
            }
        }

        if(contador == palavra.length()){
            System.out.println("A palavra é um palíndromo!");
        }else{
            System.out.println("A palavra não é um palíndromo!");
        }

    }
}
