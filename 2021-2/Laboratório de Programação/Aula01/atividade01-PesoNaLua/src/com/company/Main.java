//A gravidade da Lua é cerca de 17% a da Terra. Crie um programa que calcule seu peso na Lua.

package com.company;
import java.util.Scanner; // importar classe Scanner

public class Main {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in); //instanciando e criando um objeto Scanner
        double pesoTerra, pesoLua;

        System.out.println("Digite seu peso: ");
	    pesoTerra = ler.nextDouble();

	    pesoLua = pesoTerra * 0.17;

	    System.out.print("\nO seu peso na Lua é " + pesoLua + "kg.");
    }
}
