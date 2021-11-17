package com.company;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner tc= new Scanner(System.in);

        ArrayList<Series> catalogo = new ArrayList<Series>();
        int op = 0;

        do {
            System.out.println("\nDigite 1 para ADICIONAR uma série e seus dados;");
            System.out.println("Digite 2 para LISTAR as séries vistas e não vistas;");
            System.out.println("Digite 3 para REMOVER uma série por seu título;");
            System.out.println("Digite 4 para REMOVER uma série por seu index;");
            System.out.println("Digite 5 para ENCONTRAR uma série por seu nome;");
            System.out.println("Digite 6 para MOSTRAR a quantidade total de Séries no catálogo;");
            System.out.println("Digite 0 para SAIR do programa.");

            try{
                op = tc.nextInt();
            }catch (Exception io) {
                System.out.println("O que você digitou não é válido!");
            }

            switch (op) {
                case 1: {
                    Series serie = new Series();
                    serie.lerDados();
                    catalogo.add(serie);
                    break;
                }

                case 2: {
                    System.out.println("\nSéries visualizadas:");
                    for (int i = 0; i < catalogo.size(); i++) {
                        catalogo.get(i).serieVisualizada();
                    }
                    System.out.println("\nSéries não visualizadas:");
                    for (int i = 0; i < catalogo.size(); i++) {
                        catalogo.get(i).serieNaoVisualizada();
                    }
                    break;
                }

                case 3: {
                    System.out.println("Digite o nome da série que deseja apagar:");
                    String nome = tc.next();
                    Series apagar = new Series(nome);

                    if(catalogo.remove(apagar)){
                        System.out.println("Removido!\nA série removida foi: " + nome);
                    }else{
                        System.out.println("Não encontrei a série no catálogo.");
                    }
                    break;
                }

                case 4:{
                    System.out.println("\nDigite a posição a ser apagada:");
                    int posicao = tc.nextInt();
                    Series apagar = catalogo.remove(posicao);
                    if(apagar!=null){
                        System.out.println("Livro apagado: " + apagar.titulo);
                    }else{
                        System.out.println("Nao encontrei");
                    }
                    break;
                }

                case 5: {
                    System.out.println("\nDigite o nome da série a ser buscada: ");
                    String nome = tc.next();
                    //nome.split(" ").toString();

                    Series buscar = new Series(nome);

                    if (catalogo.contains(buscar)) {
                        System.out.println("\nEncontrei a série " + nome + " na posiçao:" + catalogo.indexOf(buscar));
                        catalogo.get(catalogo.indexOf(buscar)).exibirDados();
                    } else {
                        System.out.println("\nDesculpe, não encontrei a série desejada.");
                    }
                    break;
                }

                case 6: {
                    System.out.println("\nTotal de séries cadastradas: " + catalogo.size());
                }

            }
        }while (op!=0);

        System.out.println("\nSéries no catálogo: ");
        for (int i = 0; i < catalogo.size(); i++){
            catalogo.get(i).exibirDados();
        }
    }
}