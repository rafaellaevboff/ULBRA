package com.company;

import javax.swing.*;
import java.util.Scanner;

public class Teclado {
    Scanner ler = new Scanner(System.in);

    //ler e retornar valor

    public String lerString(){
        System.out.println("\nDigite uma string:");
        String str = ler.next();
        System.out.println("String: " + str);
        return str;
    }
    public String lerString(String mensagem){
        System.out.println(mensagem);
        String str = ler.next();
        System.out.println("String: " + str);
        return str;
    }
    public String stringJOP(){
        String strJop;
        strJop = JOptionPane.showInputDialog("Digite uma String:");
        JOptionPane.showMessageDialog(null, "String: " + strJop);
        return strJop;
    }

    public float lerFloat(){
        System.out.println("\nDigite um float:");
        float numFloat = ler.nextFloat();
        System.out.println("Float: " + numFloat);
        return numFloat;
    }
    public float lerFloat(String mensagem){
        System.out.println(mensagem);
        float numFloat = ler.nextFloat();
        System.out.println("Float: " + numFloat);
        return numFloat;
    }
    public float floatJOP(){
        float floatJop;
        floatJop = Float.parseFloat(JOptionPane.showInputDialog("Digite um float: "));
        JOptionPane.showMessageDialog(null, "Float: " + floatJop);
        return floatJop;
    }

    public double lerDouble(){
        System.out.println("\nDigite um double:");
        double numDouble = ler.nextDouble();
        System.out.println("Double: " + numDouble);
        return numDouble;
    }
    public double lerDouble(String mensagem){
        System.out.println(mensagem);
        double numDouble = ler.nextDouble();
        System.out.println("Double: " + numDouble);
        return numDouble;
    }
    public double doubleJOP(){
        double doubleJop;
        doubleJop = Double.parseDouble(JOptionPane.showInputDialog("Digite um double:"));
        JOptionPane.showMessageDialog(null, "Double: " + doubleJop);
        return doubleJop;
    }

    public int lerInt(){
        System.out.println("\nDigite um inteiro:");
        int numInt = ler.nextInt();
        System.out.println("Inteiro: " + numInt);
        return numInt;
    }
    public int lerInt(String mensagem){
        System.out.println(mensagem);
        int numInt = ler.nextInt();
        System.out.println("Inteiro: " + numInt);
        return numInt;
    }
    public int intJOP(){
        int intJop;
        intJop = Integer.parseInt(JOptionPane.showInputDialog("Digite um inteiro:"));
        JOptionPane.showMessageDialog(null, "Inteiro: " + intJop);
        return intJop;
    }

    public char lerChar(){
        System.out.println("\nDigite um Char:");
        char caracterChar = ler.next().charAt(0);
        System.out.println("Char: " + caracterChar);
        return caracterChar;
    }
    public char lerChar(String mensagem){
        System.out.println(mensagem);
        char caracterChar = ler.next().charAt(0);
        System.out.println("Char: " + caracterChar);
        return caracterChar;
    }
    public String charJOP(){
        String charJop = null;
        charJop = JOptionPane.showInputDialog("\nDigite um char:");

        if(charJop.length() != 1) {
            JOptionPane.showMessageDialog(null, "O Valor digitado não é um char.");
        }else {
            JOptionPane.showMessageDialog(null, "Char: " + charJop);
        }
        return charJop;
    }

    //Verificar se o valor digitado é um e-mail
    public String validarEmail(){
        String email;

        System.out.println("\nDigite um e-mail:");
        email = ler.next();

        if(email.contains("@") && email.contains(".")){
            System.out.println("E-mail validado. Seu e-mail é: " + email);
        }
        else {
            System.out.println("Null. E-mail inválido.");
        }
        return ("O e-mail é: " + email);
    }

    //Validar se o valor digitado é um número de telefone
    public boolean validarTelefone(){
        System.out.println("\nDigite número de telefone no formato XXX-XXXXXXXXX:");
        String telefone = ler.next();

        if(telefone.length() == 13){
            if(telefone.charAt(3)=='-'){
                System.out.println("Telefone validado. O telefone é: " + telefone);
                return true;
            } else{
                System.out.println("Null. Telefone não validado.");
                return false;
           }
        }else{
            System.out.println("Null. Telefone não validado.");
            return false;
        }
    }

    //Validar se o valor digitado é uma data:
    public boolean validarData(){
        System.out.println("\nDigite uma data no formato dd/mm/aaaa:");
        String data = ler.next();

        if(data.length() == 10){
            if(data.charAt(2)=='/' && data.charAt(5)=='/'){
                System.out.println("Data validada. A data é: " + data );
                return true;
            }
            else if(data.charAt(2)=='-' && data.charAt(5)=='-'){
                System.out.println("Data validada.\n");
                return true;
            }else{
                System.out.println("Null. Data não validada.");
                return false;
            }
        }else{
            System.out.println("Null. Data não validada.");
            return false;
        }
    }

    //converter data de formato dd/mm/aaaa para o formato mm/dd/aaaa
    public int converterData(){
        System.out.println("\nDigite uma data no formato dd/mm/aaaa:");
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
        System.out.println("\nDigite algo para verificar se é númerico:");
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