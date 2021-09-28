package com.company;

import java.util.Scanner;

public class Data {

    public static void main(String[] args) {
        /*Crie uma classe chamada Data qu contenha os métodos getDia, getMes e getAno.
        Esses métodos recebem uma data em formato texto no padrão “dd/mm/aaaa” e retornam um número inteiro
        correspondente ao dia, mês e ano existentes na data fornecida. Caso a data enviada esteja fora do padrão,
        os métodos, deve retornar o valor zero. Faça também outra classe para testar o método.
         */
        Scanner ler = new Scanner(System.in);
        System.out.println("Digite uma data: ");
        String dataCompleta = ler.next();

        System.out.println("Dia: " + getDia() + ". Mês: " + getMes() + ". Ano: " + getAno());
    }

    public static boolean dataCorreta(String date, String format) {
        String[] data = date.split("/");
        String[] formato = format.split("/");

        int checar = 0;
        for (int i = 0; i < formato.length; i++) {
            if (formato[i].length() == data[i].length()) {
                checar++;
            }
        }
        if (checar == formato.length) {
            return true;
        }
        return false;
    }

    public static int getDia(String data) {
        int dia = 0;
        if (dataCorreta(data, "dd/mm/yyyy")) {
            String[] date = data.split("/");
            return (Integer.parseInt(date[0]));
        }
        return dia;
    }

    public static int getMes(String data) {
        int Mes = 0;
        if (dataCorreta(data, "dd/mm/yyyy")) {
            String[] date = data.split("/");
            return (Integer.parseInt(date[1]));
        }
            return Mes;
    }

    public static int getAno(String data) {
        int ano = 0;
        if (dataCorreta(data, "dd/mm/yyyy")) {
            String[] date = data.split("/");
            return (Integer.parseInt(date[2]));
        }
        return ano;
    }


    }