package com.company;

public class Main {
    //Escreva um programa que crie um array de inteiros data e use um laço for para criar um novo String que exiba o conteúdo do array data entre chaves e separado por vírgulas. Por exemplo, se o array data tiver tamanho
    // 4 e armazenar os valores 3, 4, 1, 5, o String “{3, 4, 1, 5}” deve ser criado e exibido.

    public static void main(String[] args) {
        int[] data = {1, 2, 3, 4, 5};
        for(int i = 0; i < data.length; i++) {
            System.out.println(data[i]);
        }

        StringBuilder string = new StringBuilder();
        for (int i = 0; i < data.length; i++){
            string.append(data[i] + ", ");
        }
        System.out.println(string);
    }
}
