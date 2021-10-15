package com.company;

import javax.swing.*;

public class EstadoBomba {
    public static void main(String[] args) {
        //variaveis
        int estado = 0;

        Bomba bomba1 = new Bomba();

        estado = JOptionPane.showConfirmDialog(null, "Ligar a bomba");

        if (estado == 0)
            bomba1.ligar();
        else
            bomba1.desligar();

        //saida
        JOptionPane.showMessageDialog(null, bomba1.observar());

    }
}
