package com.company;

import java.util.Random;

public class Main {

    public static void main(String[] args) {
    int num, soma = 0;
    Random r = new Random();

    for( int i = 0; i < 3; i++){
        num = r.nextInt(6)+1;
        System.out.println("O número sorteado foi " + num);
        soma += num;
    }
        System.out.println("A soma dos números sorteados é " + soma);
    }
}
