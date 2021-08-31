package com.company;

import java.util.Random;

public class Main {

    public static void main(String[] args) {
    int sorteado, soma = 0;
    final int QTD_SORTEIOS=3;
    final int FACES_DADO = 6;
    Random r = new Random();

    for( int i = 0; i < QTD_SORTEIOS; i++){
        sorteado = r.nextInt(FACES_DADO)+1;
        System.out.println("O número sorteado foi " + sorteado);
        soma += sorteado;
    }
        System.out.println("A soma dos números sorteados é " + soma);
    }
}
