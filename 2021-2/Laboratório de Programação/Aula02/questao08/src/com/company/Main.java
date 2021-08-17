package com.company;
import java.util.Arrays;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        int numero, i;

        System.out.println("Digite o número que deseja saber a tabuada: ");
        numero = ler.nextInt();

        for(i = 0; i < 11; i++){
            System.out.println((numero) + (" x ") + (i) + (" = ") + (numero * i));
        }
    }
}
