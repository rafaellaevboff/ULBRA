package com.company;

public class Main {

    /*Já que todos os strings são objetos de tipo String, mostre como chamar os métodos length( ) e charAt( ) neste literal de string: “I like Java”.
*/

    public static void main(String[] args) {
        String[] frase =  {"I like Java"};

        System.out.println(frase);

        StringBuilder string = new StringBuilder();
        for (int i = 0; i < frase.length; i++){
            string.append(frase[i] + ", ");
        }

        System.out.println(frase.length);
        //System.out.println(frase.charAt());

    }
}
