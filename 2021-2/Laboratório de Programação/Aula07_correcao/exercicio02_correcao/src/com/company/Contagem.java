package com.company;

public class Contagem {

    public static void contar() {
        for (int i = 0; i < 11; i++) {
            System.out.println(i);
        }
    }

    public static void contar(int fim) {
        for (int i = 0; i <= fim; i++) {
            System.out.println(i);
        }
    }

    public static void contar(int inicio, int fim) {
        for (int i = inicio; i <= fim; i++) {
            System.out.println(i);
        }
    }

    public static void contar(int inicio, int fim, int pausa) {
        for (int i = inicio; i <= fim; i++) {
            System.out.println(i);
            try {
                Thread.sleep(pausa);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
