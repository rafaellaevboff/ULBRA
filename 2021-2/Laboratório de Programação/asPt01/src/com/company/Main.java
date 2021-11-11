package com.company;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner tc= new Scanner(System.in);

        ArrayList<Series> catalogo = new ArrayList<Series>();
        int op = 0;

        do {
            System.out.println("\nDigite 1 para adicionar séries e seus dados;");
            System.out.println("Digite 2 listar as séries vistas e não vistas;");
            System.out.println("Digite 3 para remover uma série por seu nome;");
            System.out.println("Digite 4 para encontrar uma série;");
            System.out.println("Digite 5 mostrar a quantidade total de Séries no catálogo;");
            System.out.println("Digite 6 para sair do programa.");

            try{
                op = tc.nextInt();
            }catch (Exception io) {
                System.out.println("O que você digitou não é válido!");
            }

            switch (op) {
                case 1: {
                    Series series = new Series();
                    series.lerDados();
                    catalogo.add(series);
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
                    System.out.println("Digite o nome da série a ser apagada:");
                    String nome = tc.next();
                    Series apagar = new Series(nome);
                    if (catalogo.remove(apagar)) {
                        System.out.println("Removido!");
                    } else {
                        System.out.println("Desculpe, não encontrei a série desejada.");
                    }
                    break;
                }

                case 4: {
                    System.out.println("Digite o nome da série a ser buscada: ");
                    String nome = tc.nextLine();

                    Series buscar = new Series(nome);

                    if (catalogo.contains(buscar)) {
                        System.out.println("Encontrei a série " + nome + " na posiçao:" + catalogo.indexOf(buscar));
                    } else {
                        System.out.println("Descukpe, não encontrei a série desejada.");
                    }
                    break;
                }

                case 5: {
                    System.out.println("Total de séries cadastradas: " + catalogo.size());
                }

            }
        }while (op!=6);
    }

}
