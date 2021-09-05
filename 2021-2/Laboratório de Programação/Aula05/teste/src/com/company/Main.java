package com.company;

public class Main {

    public static void main(String[] args) {
        System.out.println("trim: ");
        String teste = "  testando   ";
        String semEspaco = teste.trim();
        System.out.println(semEspaco); //irá retornar "teste";

        System.out.println("\nequals:");
        String nome1 = "Pedro";
        String nome2 = "Ana";
        if(nome1.equals(nome2)) {
            System.out.println("Os nomes são iguais.");
        }else{
            System.out.println("Os nomes são diferentes.");
        }

        System.out.println("\nequalsIgnoreCase:");
        String nome01 = "ANA";
        String nome02 = "ana";
        System.out.println(nome01.equals(nome02));
        //false
        System.out.println(nome01.equalsIgnoreCase(nome02));
        //true

        System.out.println("\ncompareTo:");
        String igual1 = "Hello";
        String igual2 = "Hello";
        String diferente = "Olá";
        System.out.println(igual1.compareTo(igual2)); //irá retornar 0, porque são iguais.
        System.out.println(igual1.compareTo(diferente)); //irá retornar um valor negativo, pois diferente tem menos caracteres que igual1;
        System.out.println(diferente.compareTo(igual1)); //irá retornar um valor positivo, pois igual1 tem mais caracteres que diferente;

        System.out.println("\ncompareToIgnoreCase:");
        String maiuscula = "HELLO";
        String minuscula = "hello";
        System.out.println(maiuscula.compareToIgnoreCase(minuscula)); //irá retornar 0.

        System.out.println("\nreplace:");
        String brasil = "Brasil";
        System.out.println(brasil.replace("s","z"));//irá imprimir na tela "Brazil"

        System.out.println("\nvalueOf:");
        int num = 100;
        String convertido = String.valueOf(num);
        System.out.println(convertido + convertido);//irá imprimir 100100, pois 100 é uma string, então irá concatenar as strings e não somar.

        System.out.println("\nindexOf");
        String nome = "Rafaella";
        System.out.println(nome.indexOf("f"));

    }
}
