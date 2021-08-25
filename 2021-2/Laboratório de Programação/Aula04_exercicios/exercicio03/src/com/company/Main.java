package com.company;

import java.util.Random;

public class Main {

    public static void main(String[] args) {
        Random gerador = new Random();
        int numSorteado;
        int num1, num2, num3, num4, num5, num6, num7, num8, num9, num10;
        final int qtd = 9;

        numSorteado = (int) ((gerador.nextDouble() * 6)+5);

        System.out.println("O numero sorteado foi " + numSorteado);

        System.out.println("A senha de " + numSorteado + " dígitos é:");
        switch (numSorteado) {
            case 5:
                num1 = (int) (Math.random()*qtd)+1;
                num2 = (int) (Math.random()*qtd)+1;
                num3 = (int) (Math.random()*qtd)+1;
                num4 = (int) (Math.random()*qtd)+1;
                num5 = (int) (Math.random()*qtd)+1;
                System.out.println(num1+" "+num2+" "+num3+" "+num4+" "+num5);
                break;

            case 6:
                num1 = (int) (Math.random()*qtd)+1;
                num2 = (int) (Math.random()*qtd)+1;
                num3 = (int) (Math.random()*qtd)+1;
                num4 = (int) (Math.random()*qtd)+1;
                num5 = (int) (Math.random()*qtd)+1;
                num6 = (int) (Math.random()*qtd)+1;
                System.out.println(num1+" "+num2+" "+num3+" "+num4+" "+num5+" "+num6);
                break;

            case 7:
                num1 = (int) (Math.random()*qtd)+1;
                num2 = (int) (Math.random()*qtd)+1;
                num3 = (int) (Math.random()*qtd)+1;
                num4 = (int) (Math.random()*qtd)+1;
                num5 = (int) (Math.random()*qtd)+1;
                num6 = (int) (Math.random()*qtd)+1;
                num7 = (int) (Math.random()*qtd)+1;
                System.out.println(num1+" "+num2+" "+num3+" "+num4+" "+num5+" "+num6+" "+num7);
                break;

            case 8:
                num1 = (int) (Math.random()*qtd)+1;
                num2 = (int) (Math.random()*qtd)+1;
                num3 = (int) (Math.random()*qtd)+1;
                num4 = (int) (Math.random()*qtd)+1;
                num5 = (int) (Math.random()*qtd)+1;
                num6 = (int) (Math.random()*qtd)+1;
                num7 = (int) (Math.random()*qtd)+1;
                num8 = (int) (Math.random()*qtd)+1;
                System.out.println(num1+" "+num2+" "+num3+" "+num4+" "+num5+" "+num6+" "+num7+" "+num8);
                break;

            case 9:
                num1 = (int) (Math.random()*qtd)+1;
                num2 = (int) (Math.random()*qtd)+1;
                num3 = (int) (Math.random()*qtd)+1;
                num4 = (int) (Math.random()*qtd)+1;
                num5 = (int) (Math.random()*qtd)+1;
                num6 = (int) (Math.random()*qtd)+1;
                num7 = (int) (Math.random()*qtd)+1;
                num8 = (int) (Math.random()*qtd)+1;
                num9 = (int) (Math.random()*qtd)+1;
                System.out.println(num1+" "+num2+" "+num3+" "+num4+" "+num5+" "+num6+" "+num7+" "+num8+" "+num9);
                break;

            case 10:
                num1 = (int) (Math.random()*qtd)+1;
                num2 = (int) (Math.random()*qtd)+1;
                num3 = (int) (Math.random()*qtd)+1;
                num4 = (int) (Math.random()*qtd)+1;
                num5 = (int) (Math.random()*qtd)+1;
                num6 = (int) (Math.random()*qtd)+1;
                num7 = (int) (Math.random()*qtd)+1;
                num8 = (int) (Math.random()*qtd)+1;
                num9 = (int) (Math.random()*qtd)+1;
                num10 = (int) (Math.random()*qtd)+1;
                System.out.println(num1+" "+num2+" "+num3+" "+num4+" "+num5+" "+num6+" "+num7+" "+num8+" "+num9+" "+num10);
                break;
        }
        }
    }
