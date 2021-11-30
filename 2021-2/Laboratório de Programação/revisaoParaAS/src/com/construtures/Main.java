package com.construtures;

public class Main {

    public static void main(String[] args) {
        //usando construtor com qtde de páginas
        Livros l1 = new Livros(100); //se não for colocado p adc valor em páginas o min de páginas do livro é 100
        l1.lerDados();
        l1.exibirDados();

        //usando construtor default
        Livros l2 = new Livros();
        l2.lerDados();
        l2.exibirDados();
    }
}