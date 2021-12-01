package com.arrayList;

import java.util.Objects;
import java.util.Scanner;

public class LivrosAL {
    private int qtdPag;
    public int capitulo;
    public String titulo;
    public String sinopse;

    Scanner tc = new Scanner(System.in);

    public void lerDados() {
        System.out.println("Digite os dados do livro:");

        System.out.println("Título:");
        this.titulo = tc.next();

        System.out.println("Sinopse:");
        this.sinopse = tc.next();

        System.out.println("Quantidade de capítulos:");
        this.capitulo = tc.nextInt();

        System.out.println("Quantidade de páginas:");
        this.qtdPag = tc.nextInt();
    }

    public void exibirDados() {
        System.out.println(this.titulo);
        System.out.println(this.sinopse);
        System.out.println(this.capitulo);
        System.out.println(this.qtdPag);
    }

    public LivrosAL(String nome) {
        this.titulo = nome;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        LivrosAL livros = (LivrosAL) o;
        return Objects.equals(titulo, livros.titulo);
    }

    @Override
    public int hashCode() {
        return Objects.hash(titulo);
    }

    public LivrosAL(int paginas){
        this.qtdPag = paginas;
        System.out.println("Criando o objeto...");
    }
    public LivrosAL(){
    }
}