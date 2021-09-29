package com.company;

import java.util.Random;

public class MeusArrays {
    public static int findArrays(int[] vetorA, int[] vetorB, int number){
        int resp = 0;
        for(int i = 0; i< vetorA.length;i++){
            if(number == vetorA[i]){
                resp++;
                break;
            }
        }
        for(int i = 0; i< vetorB.length;i++){
            if(number == vetorB[i]){
                resp++;
                break;
            }
        }
        return resp;
    }

    public static int[] returnArray(int tam){
        int[] vetor = new int[tam];
        Random rand = new Random(100);
        for(int i = 0; i< tam; i++){
            vetor[i]= rand.nextInt(1000);
        }
        return vetor;
    }

    public static void showArray(int[] vetor){
        for(int i = 0; i< vetor.length; i++){
            System.out.println(vetor[i]);
        }
    }
}
