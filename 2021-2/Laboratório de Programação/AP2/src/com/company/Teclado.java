package com.company;

import javax.swing.*;
import java.util.Scanner;

public class Teclado {

    //ler e retornar valor

    public String lerString(){
        System.out.println("\nDigite uma string:");
        Scanner ler = new Scanner(System.in);
        String str = ler.next();
        System.out.println("O dado lido foi: " + str);
        return str;
    }
    public String lerString(String mensagem){
        System.out.println(mensagem);
        Scanner ler = new Scanner(System.in);
        String str = ler.next();
        System.out.println("O dado lido foi: " + str + "\n");
        return str;
    }
    public String stringJOP(){
        String strJop = null;
        strJop = JOptionPane.showInputDialog("Digite uma String:");
        JOptionPane.showMessageDialog(null, "O dado lido foi: " + strJop);
        return strJop;
    }

    public float lerFloat(){
        System.out.println("Digite um float:");
        Scanner ler = new Scanner(System.in);
        float numFloat = ler.nextFloat();
        System.out.println("O dado lido foi: " + numFloat);
        return numFloat;
    }
    public float lerFloat(String mensagem){
        System.out.println(mensagem);
        Scanner ler = new Scanner(System.in);
        float numFloat = ler.nextFloat();
        System.out.println("O dado lido foi: " + numFloat + "\n");
        return numFloat;
    }
    public float floatJOP(){
        float floatJop;
        floatJop = Float.parseFloat(JOptionPane.showInputDialog("Digite um float:"));
        JOptionPane.showMessageDialog(null, "O dado lido foi: " + floatJop);
        return floatJop;
    }

    public double lerDouble(){
        System.out.println("Digite um double:");
        Scanner ler = new Scanner(System.in);
        double numDouble = ler.nextDouble();
        System.out.println("O dado lido foi: " + numDouble);
        return numDouble;
    }
    public double lerDouble(String mensagem){
        System.out.println(mensagem);
        Scanner ler = new Scanner(System.in);
        double numDouble = ler.nextDouble();
        System.out.println("O dado lido foi: " + numDouble + "\n");
        return numDouble;
    }
    public double doubleJOP(){
        double doubleJop;
        doubleJop = Double.parseDouble(JOptionPane.showInputDialog("Digite um double:"));
        JOptionPane.showMessageDialog(null, "O dado lido foi: " + doubleJop);
        return doubleJop;
    }

    public int lerInt(){
        System.out.println("Digite um inteiro:");
        Scanner ler = new Scanner(System.in);
        int numInt = ler.nextInt();
        System.out.println("O dado lido foi: " + numInt);
        return numInt;
    }
    public int lerInt(String mensagem){
        System.out.println(mensagem);
        Scanner ler = new Scanner(System.in);
        int numInt = ler.nextInt();
        System.out.println("O dado lido foi: " + numInt + "\n");
        return numInt;
    }
    public int intJOP(){
        int intJop;
        intJop = Integer.parseInt(JOptionPane.showInputDialog("Digite um inteiro:"));
        JOptionPane.showMessageDialog(null, "O dado lido foi: " + intJop);
        return intJop;
    }

    public char lerChar(){
        System.out.println("Digite um Char:");
        Scanner ler = new Scanner(System.in);
        char caracterChar = ler.next().charAt(0);
        System.out.println("O dado lido foi: " + caracterChar);
        return caracterChar;
    }
    public char lerChar(String mensagem){
        System.out.println(mensagem);
        Scanner ler = new Scanner(System.in);
        char caracterChar = ler.next().charAt(0);
        System.out.println("O dado lido foi: " + caracterChar + "\n");
        return caracterChar;
    }
    public String charJOP(){
        String charJop = null;
        charJop = JOptionPane.showInputDialog("Digite um char:");

        if(charJop.length() != 1) {
            JOptionPane.showMessageDialog(null, "O Valor digitado não é um char.");
        }else {
            JOptionPane.showMessageDialog(null, "O dado lido foi: " + charJop);
        }

        return charJop;
    }

    //Verificar se o valor digitado é um e-mail
    public String validarEmail(){
        Scanner ler = new Scanner(System.in);
        String email;

        System.out.println("Digite um e-mail:");
        email = ler.next();

        if(email.contains("@") && email.contains(".")){
            System.out.println("E-mail validado. Seu e-mail é: " + email + "\n");
        }
        else {
            System.out.println("Null. E-mail inválido.\n");
        }
        return ("O e-mail é: " + email);
    }

    //Validar se o valor digitado é um número de telefone
    public boolean validarTelefone(){
        Scanner ler = new Scanner(System.in);
        System.out.println("Digite número de telefone no formato XXX-XXXXXXXXX:");
        String telefone = ler.next();

        if(telefone.length() == 13){
            if(telefone.charAt(3)=='-'){
                System.out.println("Telefone validado. O telefone é: " + telefone + "\n");
                return true;
            } else{
                System.out.println("Null. Telefone não validado.\n");
                return false;
           }
        }else{
            System.out.println("Null. Telefone não validado.\n");
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
                System.out.println("Data validada. A data é: " + data + "\n");
                return true;
            }
            else if(data.charAt(2)=='-' && data.charAt(5)=='-'){
                System.out.println("Data validada.\n");
                return true;
            }else{
                System.out.println("Null. Data não validada.\n");
                return false;
            }
        }else{
            System.out.println("Null. Data não validada.\n");
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
                System.out.println("O novo formato da data é: " + mes + "/" + dia + "/" + ano + "\n");
            }
            if(data.charAt(2)=='-' && data.charAt(5)=='-'){
                int dia = Integer.parseInt(data.substring(0,2));
                int mes = Integer.parseInt(data.substring(3,5));
                int ano = Integer.parseInt(data.substring(6,10));
                System.out.println("O novo formato da data é: " + mes + "/" + dia + "/" + ano + "\n");
            }
        }else{
            System.out.println("Data inválida, não foi possível alterar o formato da data.\n");
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