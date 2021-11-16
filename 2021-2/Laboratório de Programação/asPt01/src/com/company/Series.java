package com.company;

import java.util.Objects;
import java.util.Scanner;

public class Series {
    public String titulo;
    public String sinopse;
    public int qtdTemporadas;
    public int numeroEpTotal;
    public char visualizadaSN;

    Scanner tc = new Scanner(System.in);

    public void lerDados() {
        System.out.println("\nInforme o título da série:");
        titulo = tc.nextLine();

        System.out.println("Informe a sinopse da série:");
        sinopse = tc.nextLine();

        System.out.println("Informe a quantidade de temporadas da série:");
        try{
            qtdTemporadas = tc.nextInt();
        }catch (Exception io){
            System.out.println("O que você digitou não é válido!");
        }

        System.out.println("Informe o número total de episódios da série:");
        try{
            numeroEpTotal = tc.nextInt();
        }catch (Exception io){
            System.out.println("O que você digitou não é válido!");
        }

        System.out.println("A série foi assistida? Digite 's'(sim) ou 'n'(não):");
        try{
            visualizadaSN = tc.next().charAt(0);
        }catch (Exception io){
            System.out.println("O que você digitou não é válido!");
        }
    }

    public void serieVisualizada(){
        if (visualizadaSN == 's') {
            System.out.println(this.titulo);
        }
    }

    public void serieNaoVisualizada() {
        if (visualizadaSN == 'n') {
            System.out.println(this.titulo);
        }
    }

    public void exibirDados() {
        System.out.println("\nNome da série: " + this.titulo);
        System.out.println("Sinopse: " + this.sinopse);
        System.out.println("Quantidade de temporadas: " + this.qtdTemporadas);
        System.out.println("Número total de episódios: " + this.numeroEpTotal);
        System.out.println("Série visualizada? " + this.visualizadaSN + "\n");
    }

    public Series(String nome) {
        this.titulo = nome;
    }

    public Series() {
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Series series = (Series) o;
        return Objects.equals(titulo, series.titulo);
    }

    @Override
    public int hashCode() {
        return Objects.hash(titulo);
    }
}