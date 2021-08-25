package com.company;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        double resistencia, somar = 0, maiorR=0, menorR=0;
        int i;

        for(i = 0; i < 4; i++) {
            System.out.println("Digite o valor da resistência " + (i+1) + ": ");
            resistencia = ler.nextDouble();

            somar += resistencia;

            if(i == 0){
                maiorR = resistencia;
                menorR = resistencia;
            }

            if(maiorR < resistencia){
                maiorR = resistencia;
            }

            if(menorR > resistencia) {
                menorR = resistencia;
            }
        }
        
        

        System.out.println("Resistência total: " + somar);
        System.out.println("Maior resistência: " + maiorR);
        System.out.println("Menor resistência: " + menorR);
    }
}
