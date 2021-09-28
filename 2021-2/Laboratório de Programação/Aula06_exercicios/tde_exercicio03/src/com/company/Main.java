package com.company;

import java.util.Scanner;

public class Main {
    /*Declare duas maneiras de declarar um array unidimensional de 12 doubles.
     */

    public static void main(String[] args) {

        Scanner ler = new Scanner(System.in);

        System.out.println("Primeira forma de construir um array: ");
        double[] numerosDouble01 = new double[12];
        for (int i = 0; i < numerosDouble01.length; i++) {
            System.out.println("Digite o " + (i+1) +"º valor: ");
            numerosDouble01[i] = ler.nextDouble();
        }
        for (int i = 0; i < numerosDouble01.length; i++){
            System.out.println(numerosDouble01[i]);
        }

	    System.out.println("Segunda forma de construir um array: ");
	    double[] numerosDouble02 = {1.2, 2.2, 3.3, 4.4, 5.5, 6.6, 7.7, 8.8, 9.9, 10.10, 11.11, 12.12};
        for(int i = 0; i < numerosDouble02.length; i++){
            System.out.println(numerosDouble02[i]);
        }
    }
}
