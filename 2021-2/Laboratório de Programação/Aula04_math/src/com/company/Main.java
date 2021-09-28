package com.company;

public class Main {

    public static void main(String[] args) {
        System.out.println(Math.floor(2.9));
        System.out.println(Math.floor(2.1));

        System.out.println(Math.round(2.9));
        System.out.println(Math.round(2.1));

        System.out.println(Math.max(5,5));
        System.out.println(Math.max(Math.max(2.9, Math.ceil(3.1)), 2.1));

        int sorteio = (int) (Math.random()*6)+1; //(int) transforma double em int
        System.out.println(sorteio);
    }
}
