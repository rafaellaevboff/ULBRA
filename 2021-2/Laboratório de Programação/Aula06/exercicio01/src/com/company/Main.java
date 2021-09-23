package com.company;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        int [] numeros = new int[10];
        String[] frutas = {"Maçã", "Pera", "Abacaxi", "Mamão"};
        String busca = "Pera";

        /*numeros[0] = 3;
        numeros[1] = 4;*/
        for(int i = 0; i < 10; i++){
            numeros[i] = (i+2)*5;
            System.out.println(numeros[i]);
        }
        System.out.println("Tamanho do array numeros: " + numeros.length);

        System.out.println("\nImprimindo elementos do array frutas:");
        for(String frut: frutas){
            System.out.println(frut);
        }

        System.out.println("\nfor usando o array numeros:");
        for(int i=0; i < 10; i++){
            System.out.println("achou");
            break;
        }

        System.out.println("\nfor usando o array frutas:");
        for(int i = 0; i< 10; i++){
            if(frutas[i].equals("Maçã")){
                System.out.println("achou");
                break;
            }
        }
        /*
        int[] numeros;
        numeros = new int[5];

        double [] numeroDouble = new double[10];
        String [] string = new String[10];
        Scanner[] scanners = new Scanner[10];

        int[][] meusNumeros = new int[4][5];//4 linhas e cinco colunas
        //[linha][coluna]

        int[][] vetorIrregular = new int [3][];
        vetorIrregular[0] = new int[10];
        vetorIrregular[1] = new int[3];
        vetorIrregular[2] = new int[7];*/
    }
}
