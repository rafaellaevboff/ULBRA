package com.company;

import javax.swing.*;

public class Main {

    public static void main(String[] args) {
        float valorTransação , valorVenal, percentualImposto, valorImposto, maiorValor = 0;
        String leitura;

        leitura = JOptionPane.showInputDialog("Digite o valor da transação: ");
        valorTransação = Float.parseFloat(leitura);

        leitura = JOptionPane.showInputDialog("Digite o valor venal: ");
        valorVenal = Float.parseFloat(leitura);

        if(maiorValor < valorTransação){
            maiorValor = valorTransação;
            if(maiorValor < valorVenal){
                maiorValor = valorVenal;
            }
        }

        leitura = JOptionPane.showInputDialog("Digite o percentual do Imposto: ");
        percentualImposto = Float.parseFloat(leitura);

        valorImposto = (maiorValor * percentualImposto) / 100;

        JOptionPane.showMessageDialog(null, "O valor do Imposto a ser pago é: " + valorImposto);
    }
}
