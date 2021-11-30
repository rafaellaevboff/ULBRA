package com.objetosInicio;

public class Main {

    public static void main(String[] args) {
        System.out.println("POKEMON");
        Pokemon snorlax = new Pokemon(); //instanciar um objeto

        Pokemon.capturar();
        snorlax.nome = "Snolax";
        snorlax.peso = 460;
        snorlax.descricao = "Pokemon do tipo NORMAL";
        snorlax.tipo = "Normal";
        snorlax.nivel = 10;
        snorlax.hit = 10;
        snorlax.vida = 100;
        System.out.println(snorlax);

        snorlax.atacar();
        snorlax.atacar("Ataque especial!");
        System.out.println(snorlax);
        snorlax.defender();
        System.out.println(snorlax);

        Data hoje = new Data();
        hoje.dia = 28;
        hoje.mes = 11;
        hoje.ano = 2021;

        Data amanha = new Data();
        amanha.dia = 29;
        amanha.mes = 11;
        amanha.ano = 2021;

        Data.separador = "-";
        System.out.println("\nDATAS:");
        hoje.mostrar();
        amanha.mostrar();

        Data.separador = "/";
        System.out.println("\nDATAS:");
        hoje.mostrar();
        amanha.mostrar();
    }
}
