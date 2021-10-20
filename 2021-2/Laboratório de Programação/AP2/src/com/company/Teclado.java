package com.company;

import java.util.Scanner;

public class Teclado {
    //ler e retornar valor
    public String lerString(){
        System.out.println("Digite uma string:");
        Scanner ler = new Scanner(System.in);
        return ler.next().toString();
    }
    public String lerString(String mensagem){
        System.out.println(mensagem);
        Scanner ler = new Scanner(System.in);
        return ler.next().toString();
    }

    public float lerFloat(){
        System.out.println("Digite um float:");
        Scanner ler = new Scanner(System.in);
        return ler.nextFloat();
    }
    public float lerFloat(String mensagem){
        System.out.println(mensagem);
        Scanner ler = new Scanner(System.in);
        return ler.nextFloat();
    }

    public double lerDouble(){
        System.out.println("Digite um double:");
        Scanner ler = new Scanner(System.in);
        return ler.nextDouble();
    }
    public double lerDouble(String mensagem){
        System.out.println(mensagem);
        Scanner ler = new Scanner(System.in);
        return ler.nextDouble();
    }

    public int lerInt(){
        System.out.println("Digite um inteiro:");
        Scanner ler = new Scanner(System.in);
        return ler.nextInt();
    }
    public int lerInt(String mensagem){
        System.out.println(mensagem);
        Scanner ler = new Scanner(System.in);
        return ler.nextInt();
    }

    public char lerChar(){
        System.out.println("Digite um Char:");
        Scanner ler = new Scanner(System.in);
        return ler.next().charAt(0);
    }
    public char lerChar(String mensagem){
        System.out.println(mensagem);
        Scanner ler = new Scanner(System.in);
        return ler.next().charAt(0);
    }

    //Verificar se o valor digitado é um e-mail
    public String validarEmail(){
        Scanner ler = new Scanner(System.in);
        String email;

        System.out.println("Digite um e-mail:");
        email = ler.next().toString();

        if(email.contains("@") && email.contains(".")){
            System.out.println("E-mail validado. Seu e-mail é: " + email);
        }
        else {
            System.out.println("Null");
        }
        return ("Próxima fase");
    }

    //Validar se o valor digitado é um número de telefone
    public boolean validarTelefone(){
        Scanner ler = new Scanner(System.in);
        System.out.println("Digite número de telefone no formato XXX-XXXXXXXXX:");
        String telefone = ler.next();

        if(telefone.length() == 13){
            if(telefone.charAt(3)=='-'){
                System.out.println("Telefone validado. O telefone é: " + telefone);
                return true;
            }
           else{
                System.out.println("Telefone não validado.");
                return false;
            }
        }else{
            System.out.println("Telefone não validado.");
            return false;
        }
    }

    //Validar se o valor digitado é uma data:
    public boolean validarData(){
        Scanner ler = new Scanner(System.in);
        System.out.println("Digite uma data no formato dd/mm/aaaa:");
        String data = ler.next();

        if(data.length() == 10){
            if(data.charAt(2)=='/' && data.charAt(5)=='/'){
                System.out.println("Data validada. A data é: " + data);
                return true;
            }
            if(data.charAt(2)=='-' && data.charAt(5)=='-'){
                System.out.println("Data validada.");
                return true;
            }else{
                System.out.println("Data não validada.");
                return false;
            }
        }else{
            System.out.println("Data não validada.");
            return false;
        }
    }

    //converter data de formato dd/mm/aaaa para o formato mm/dd/aaaa
    public int converterData(){
        Scanner ler = new Scanner(System.in);
        System.out.println("Digite uma data no formato dd/mm/aaaa:");
        String data = ler.next();

        if(data.length() == 10){
            if(data.charAt(2)=='/' && data.charAt(5)=='/'){
                int dia = Integer.parseInt(data.substring(0,2));
                int mes = Integer.parseInt(data.substring(3,5));
                int ano = Integer.parseInt(data.substring(6,10));
                System.out.println("O novo formato da data é: " + mes + "/" + dia + "/" + ano);
            }
            if(data.charAt(2)=='-' && data.charAt(5)=='-'){
                int dia = Integer.parseInt(data.substring(0,2));
                int mes = Integer.parseInt(data.substring(3,5));
                int ano = Integer.parseInt(data.substring(6,10));
                System.out.println("O novo formato da data é: " + mes + "/" + dia + "/" + ano);
            }
        }else{
            System.out.println("Data inválida, não foi possível alterar o formato da data.");
        }
        return 0;
    }

    //Validar se o valor digitado é um número:
    public boolean validarNumerico() {
        Scanner ler = new Scanner(System.in);
        System.out.println("Digite algo para verificar se é númerico:");
        String str = ler.next();
        try {
            Double.parseDouble(str);
            System.out.println("O valor digitado é númerico. Valor digitado: " + str);
            return true;
        } catch(NumberFormatException e){
            System.out.println("O valor digitado não é númerico.");
            return false;
        }
    }
}