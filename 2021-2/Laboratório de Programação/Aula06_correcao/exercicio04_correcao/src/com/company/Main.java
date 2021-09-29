package com.company;

public class Main {

    public static void main(String[] args) {
        String palindromo = "Rafa";

        StringBuilder palavra = new StringBuilder((palindromo));
        String msg = "";

        int fim = palindromo.length() - 1;
        System.out.println(fim);

        for (int i = 0; i < palindromo.length(); i++) {
            if (palindromo.charAt(i) == palindromo.charAt(fim)) {
                msg = "É um palíndromo";
                fim--;
            } else {
                msg = "Não é um palindromo";
                break;
            }
        }
        System.out.println(msg);

        String outra = "itati";
        String outraPali="";
        for(int i = outra.length()-1; i>=0; i--){
            outraPali = outraPali+outra.charAt(i);
        }
        if(outra.equals(outraPali)){
            System.out.println("é um palíndromo");
        }else{
            System.out.println("Não é um palíndromo.");
        }
    }
}

