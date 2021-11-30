package com.construtures;

import java.util.Scanner;

public class Livros {
    private int qtdPag;
    public int capitulo;
    public String titulo;
    public String sinopse;

    Scanner tc = new Scanner(System.in);

    public void lerDados(){
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

    public void exibirDados(){
        System.out.println(this.titulo);
        System.out.println(this.sinopse);
        System.out.println(this.capitulo);
        System.out.println(this.qtdPag);
    }

    //ASSINATURA DE MÉTODOS:
    public Livros(int paginas){
        this.qtdPag = paginas;
        System.out.println("Criando o objeto...");
    }
    /* - quando esse construtor é criado o default deixa de funcionar/existir, então tem de ser criado novamente para ele funcionar
       - pode haver vários construtores na classe*/

    public Livros(){}
    /* - criando o construtor default, só que agora está explicito
       - em uma conexão em banco de dados, por exemplo, é preciso usuário e senha para acessar,
       então é passado no construtor essa necessidade p garantir isso*/


    //SOBRECARGA DE CONSTRUTORES- ele vai se adequar a qual mais se encaixa
    public Livros add(int a, int b){
        return null;
    }
    public Livros add(int a, double b){
        return null;
    }
    public Livros add(double a, int b){
        return null;
    }
    public Livros add(double a, double b){
        return null;
    }

    //VAR PRIVADA:
    public void setQtdPag(int qtdPag) {
        this.qtdPag = qtdPag;
    }

    public int getQtdPag() {
        return qtdPag;
    }
}
