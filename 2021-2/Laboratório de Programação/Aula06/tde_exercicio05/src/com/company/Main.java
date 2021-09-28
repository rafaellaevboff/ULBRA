package com.company;

import java.util.Scanner;

public class Main {
/*Elabore uma classe que receba 5 notas de alunos por meio, armazene essas notas em um array de cinco elementos,
apresente em tela as cinco notas em ordem decrescente (da maior para a menor) e a média aritmética das notas.

 */
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);

        double[] notasAlunos = new double[5];
        for (int i = 0; i < notasAlunos.length; i++) {
            System.out.println("Digite a " + (i+1) +"º nota: ");
            notasAlunos[i] = ler.nextDouble();
        }

        System.out.println("Notas em ordem decresente(da maior pra menor): ");
        for (int i = 0; i < notasAlunos.length; i++) {
            for (int j = 0; j < i; j++) {
                if (notasAlunos[i] > notasAlunos[j]) {
                    double temp = notasAlunos[i];
                    notasAlunos[i] = notasAlunos[j];
                    notasAlunos[j] = temp;
                }
            }
        }
        for (int i = 0; i < notasAlunos.length; i++) {
            System.out.println(notasAlunos[i]);
        }


        double somaNotas = 0;
        for (int i = 0; i < notasAlunos.length; i++) {
            somaNotas += notasAlunos[i];
        }

        double mediaNotas;
        mediaNotas = somaNotas/notasAlunos.length;
        System.out.println("\nMédia das notas: " + mediaNotas);



    }
}
