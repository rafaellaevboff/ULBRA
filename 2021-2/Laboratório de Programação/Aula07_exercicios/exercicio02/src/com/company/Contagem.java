package com.company;

public class Contagem {

    public static void contar(){
        System.out.println("Contagem de 1 a 10");
        for(int i=1; i <= 10; i++){
            System.out.println(i + " ");
        }

    }
    public static void contar(int fim){
        System.out.println("Fim");
        for(int i=1; i <= fim; i++){
            System.out.println(i);
        }
    }
    public static void contar (int inicio, int fim){
        System.out.println("Início-Fim");
        for(int i=inicio; i <= fim; i++){
            System.out.println(i);
        }
    }
    public static void contar(int inicio, int fim, int pausa){
        System.out.println("Início-Fim-Pausa");
        for(int i=inicio; i <= fim; i++){
            System.out.println(i);
            try{
                Thread.sleep(pausa*1000);
            }catch(InterruptedException ex){
                Thread.currentThread().interrupt();
            }
        }
    }


}
