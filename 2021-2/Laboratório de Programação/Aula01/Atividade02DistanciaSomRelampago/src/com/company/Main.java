//Faça um programa que calcula a que distância, em pés, um ouvinte está da queda de um relâmpago.
//O som viaja a aproximadamente 1.100 pés por segundo pelo ar. Logo, conhecer o intervalo
//entre o momento em que você viu um relâmpago e o momento em que o som o alcançou lhe permitirá
//calcular a distância do relâmpago. Para este projeto, considere que o intervalo seja de 7,2 segundos.

package com.company;

public class Main {

    public static void main(String[] args) {
        double distanciaRelampago;

        distanciaRelampago = 7.2 * 1100;

        System.out.println("A distância do relâmpago até o ouvinte é de " + distanciaRelampago + " pés");
    }
}
