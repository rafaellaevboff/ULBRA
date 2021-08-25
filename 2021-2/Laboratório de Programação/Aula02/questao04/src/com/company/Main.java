package com.company;

import javax.swing.*;

public class Main {

    public static void main(String[] args) {
	int idade, tempoContribuicao;
    String ler;
    char g;

    final int IDADE_MASC_APOSENTAR = 65;
    final int IDADE_FEM_APOSENTAR = 60;

    final int TEMPO_CONT_MASC = 35;
    final int TEMPO_CONT_FEM = 30;

    ler = JOptionPane.showInputDialog("Seu gênero. Digite f para feminino e m para masculino: ");
    g = ler.charAt(0);

    ler = JOptionPane.showInputDialog("Digite sua idade: ");
    idade = Integer.parseInt(ler);

    ler = JOptionPane.showInputDialog("Digite o tempo de contribuição, em anos: ");
    tempoContribuicao = Integer.parseInt(ler);

    if(g == 'f'){
        if(idade >= IDADE_FEM_APOSENTAR) {
            JOptionPane.showMessageDialog(null, "Você já tem o direito a aposentadoria por idade!");
        }
        else if(tempoContribuicao >= TEMPO_CONT_FEM){
                JOptionPane.showMessageDialog(null,"Você já tem o direito a aposentadoria por tempo de contribuição!");
        }
        }else{
            JOptionPane.showMessageDialog(null,"Você não tem o direito a aposentadoria!");
        }

    if(g == 'm'){
        if(idade >= IDADE_MASC_APOSENTAR){
            JOptionPane.showMessageDialog(null,"Você já tem o direito a aposentadoria por idade!");
        }
        else if(tempoContribuicao >= TEMPO_CONT_MASC){
            JOptionPane.showMessageDialog(null,"Você já tem o direito a aposentadoria por tempo de contribuição!");
        }
    }else{
        JOptionPane.showMessageDialog(null,"Você não tem o direito a aposentadoria!");
    }
    }
}
