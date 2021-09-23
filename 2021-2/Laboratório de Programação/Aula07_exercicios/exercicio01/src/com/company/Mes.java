package com.company;

import java.util.Scanner;

public class Mes {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        System.out.println("Digite o mês que deseja em numeral:");
        int mes = ler.nextInt();
        System.out.println("Digite o idioma que deseja(1: pt-br, 2: en):");
        int idioma = ler.nextInt();

        if(mes > 0 && mes <= 12) {
            if(idioma == 1 || idioma == 2) {
                System.out.println("O mês por extenso é: " + getMesPorExtenso(mes, idioma));
            }else{
                System.out.println(getMesPorExtenso(mes, idioma));
            }
        }else{
            System.out.println(getMesPorExtenso(mes,idioma));
        }
    }

    public static String[] mesPortugues = {"Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"};
    public static String [] mesIngles = {"January","February","March","April","May","June","July","August","September","October","November","December"};

    public static String getMesPorExtenso(int mes, int idioma) {
        String respostaIdioma = "Este idioma não está cadastrado.";
        String agradecimento = "Obrigada por utilizar o programa!";

        if(mes >= 1 && mes <= 12) {
            int m = mes - 1;
            if (idioma == 1 || idioma == 2){
                if(idioma == 1){
                    return mesPortugues[m] + "\n" + agradecimento;
                }else {
                    return mesIngles[m] + "\n" + agradecimento;
                }
            }else{
                return(respostaIdioma + "\n" + agradecimento);
            }
        }else{
            System.out.println("Esse mês não existe no calendário.");
            if(idioma != 1 && idioma != 2){
                System.out.println(respostaIdioma);
            }
        }
        return(agradecimento);
    }
}
