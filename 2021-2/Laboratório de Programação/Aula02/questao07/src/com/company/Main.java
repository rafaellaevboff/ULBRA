package com.company;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        String login;
        String senha;
        int i, t, tentativas = 3;

        for(i = 0; i < 3; i++) {
            boolean acessoL = true;
            boolean acessoS = true;

            System.out.println("Login: ");
            login = ler.next();
            if (!login.equals("java8")) {
                acessoL = false;
            }

            System.out.println("Senha: ");
            senha = ler.next();
            if (!senha.equals("java8")) {
                acessoS = false;
            }

            if(!acessoL || !acessoS) {
                t = (tentativas - i) - 1;
                System.out.println("Você tem mais " + t + " tentativas.");
            }else{
                System.out.println("Acesso liberado!");
                break;
            }
        }
    }
}
