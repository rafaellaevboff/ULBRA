package com.company;

public class Senha {

    public static void main(String[] args) {
        System.out.println("A senha gerada é: ");
        System.out.println(gerar());
    }

    public static String gerar(){
        String[] numeros = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};
        final int tamanhoSenha = 8;

        StringBuilder senha = new StringBuilder();

        for(int i = 0; i < tamanhoSenha; i++){
            int p = (int) (Math.random()*numeros.length);
            senha.append(numeros[p]);
        }
        return senha.toString();
    }
}
