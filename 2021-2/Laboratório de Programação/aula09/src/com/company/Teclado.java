package com.company;

import java.util.Scanner;

public class Teclado {
    public int digitarInteiro() {
        Scanner ler = new Scanner(System.in);
        System.out.println("Digite um inteiro");
        int valor;

        try{
            valor = ler.nextInt();
        }catch(Exception io){
            System.out.println("Erro ao ler o inteiro.");
        }finally{
            valor = 0;
        }
        return valor;
    }

    public String digitarNome(){
        Scanner ler = new Scanner(System.in);
        System.out.println("Digite seu nome");
        String nome;
        try {
            nome = ler.next();
            System.out.println("Nome recebido.");
        }catch(Exception io){
            System.out.println("Não foi possivel ler.");
        }finally{
            nome = "0";
        }
        return nome;
    }


}
