package com.company;

import java.util.Objects;
import java.util.Scanner;

public class Livro {
    public String titulo;
    public String sinopse;
    public int capitulos;
    private int qtdPag;

    Scanner tc = new Scanner(System.in);

    public void lerDados(){
        System.out.println("\nInforme o titulo:");
        titulo = tc.nextLine();

        System.out.println("Informe a sinopse:");
        sinopse = tc.nextLine();

        System.out.println("Informe a quantidade de capítulos:");
        capitulos = tc.nextInt();

        System.out.println("Informe a quantidade de páginas:");
        qtdPag = tc.nextInt();
    }

    public void exibirDados() {
        System.out.println(this.titulo);
        System.out.println(this.sinopse);
        System.out.println(this.capitulos);
        System.out.println(this.qtdPag);
    }

    public Livro(int paginas){
        this.qtdPag=paginas;
        System.out.println("Criando o objeto....");
    }

    public Livro(String nome){
        this.titulo=nome;
    }

    public Livro(){

    }

    public void setQtdPag(int qtdPag) {
        this.qtdPag = qtdPag;
    }

    public int getQtdPag() {
        return qtdPag;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Livro livro = (Livro) o;
        return Objects.equals(titulo, livro.titulo);
    }

    @Override
    public int hashCode() {
        return Objects.hash(titulo);
    }
}