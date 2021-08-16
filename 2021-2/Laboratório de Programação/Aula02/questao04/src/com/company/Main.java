package com.company;

import javax.swing.*;

public class Main {

    public static void main(String[] args) {
	int idade, tempoContribuicao;
    String ler;
    char g;

    ler = JOptionPane.showInputDialog("Seu gênero. Digite f para feminino e m para masculino: ");
    g = ler.charAt(0);

    ler = JOptionPane.showInputDialog("Digite sua idade: ");
    idade = Integer.parseInt(ler);

    ler = JOptionPane.showInputDialog("Digite o tempo de contribuição, em anos: ");
    tempoContribuicao = Integer.parseInt(ler);

    if(g == 'f'){
        if(idade >= 60){
            if(tempoContribuicao >= 30){
                JOptionPane.showInputDialog("Você já tem o direito a aposentadoria!");
            }else{
                JOptionPane.showInputDialog("Você não tem o direito a aposentadoria!");
            }
        }else{
            JOptionPane.showInputDialog("Você não tem o direito a aposentadoria!");
        }
    }
        if(g == 'm'){
            if(idade >= 65){
                if(tempoContribuicao >= 35){
                    JOptionPane.showInputDialog("Você já tem o direito a aposentadoria!");
                }else{
                    JOptionPane.showInputDialog("Você não tem o direito a aposentadoria!");
                }
            }else{
                JOptionPane.showInputDialog("Você não tem o direito a aposentadoria!");
            }
        }

    }
}
