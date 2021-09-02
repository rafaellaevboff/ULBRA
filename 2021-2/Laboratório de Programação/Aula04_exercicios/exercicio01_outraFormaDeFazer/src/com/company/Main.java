package com.company;

public class Main {

    public static void main(String[] args) {
        int sorteado, soma = 0;
        final int FACES = 6;
        final int VEZES = 3;

        for( int i = 0; i < VEZES; i++){
            sorteado = (int) (Math.random()*FACES+1);
            System.out.println("O número sorteado foi " + sorteado);
            soma += sorteado;
        }
        System.out.println("A soma dos números sorteados é " + soma);
    }
}

