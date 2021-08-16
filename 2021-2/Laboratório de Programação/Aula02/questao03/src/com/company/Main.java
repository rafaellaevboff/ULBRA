package com.company;

import javax.swing.*;

public class Main {

    public static void main(String[] args) {
        float media, prova1, prova2, trabalho;
        String leitura;

        leitura = JOptionPane.showInputDialog("Digite a nota da primeira prova: ");
        prova1 = Float.parseFloat(leitura);

        leitura = JOptionPane.showInputDialog("Digite a nota da segunda prova: ");
        prova2 = Float.parseFloat(leitura);

        leitura = JOptionPane.showInputDialog("Digite a nota do trabalho: ");
        trabalho = Float.parseFloat(leitura);


        media = (prova1 + prova2 + trabalho) / 3;

        if(media >= 6) {
            JOptionPane.showInputDialog("APROVADO!");
        } else {
            JOptionPane.showInputDialog("REPROVADO!");
        }
    }
}
