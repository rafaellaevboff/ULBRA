package com.objetosInicio;

public class Pokemon {
    String tipo;
    int nivel;
    double peso;
    String nome;
    String descricao;
    int vida;
    int hit;

    public void atacar(){
        System.out.println("ATACAR!!!");
        this.hit++;
    }

    public void atacar(String msg){
        System.out.println("ATACAR!!! " + msg);
        hit = (hit/2) + hit;
    }

    public void defender(){
        System.out.println("DEFENDER!!!");
        this.vida -= 10;
    }

    public static void capturar(){
        System.out.println("CAPTURAR!!!");
    }

    @Override
    public String toString() {
        return "Pokemon{" +
                "tipo='" + tipo + '\'' +
                ", nivel=" + nivel +
                ", peso=" + peso +
                ", nome='" + nome + '\'' +
                ", descricao='" + descricao + '\'' +
                ", vida=" + vida +
                ", hit=" + hit +
                '}';
    }
}
