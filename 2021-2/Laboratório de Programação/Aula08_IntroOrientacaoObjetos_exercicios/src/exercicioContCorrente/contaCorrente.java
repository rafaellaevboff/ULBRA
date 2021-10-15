package exercicioContCorrente;

import java.util.Scanner;

/*Elabore uma classe Conta Corrente, com os seguintes atributos: saldo, número da conta,
senha e titular. Titular é um atributo composto de uma classe Cliente, os atributos de uma classe
cliente é cpf, nome e idade. Crie métodos
que possibilite efetuar um saque, efetuar um depósito e transferir valores de uma conta para outra.*/

public class contaCorrente {
    Scanner ler = new Scanner(System.in);

    public int saldo;
    public int numeroConta;
    public int senha;

    public class Cliente{
        public int cpf;
        public String nome;
        public int idade;
    }

    public void sacar(){
        System.out.println("Qual o valor que você deseja sacar?");
        int sacar = ler.nextInt();
        if(saldo < sacar){
            System.out.println("Seu valor foi sacado.");
        }else{
            System.out.println("Saldo insuficiente.");
        }
    }

    public void depositar(){
        System.out.println("Qual o valor que você deseja depositar?");
    }

    public void transferir(){
        System.out.println("Qual o valor que você deseja transferir?");
        int transferir = ler.nextInt();
        if(saldo < transferir){
            System.out.println("Saldo insuficiente.");
        }else{
            System.out.println("Seu valor foi transferido.");
        }
    }
}