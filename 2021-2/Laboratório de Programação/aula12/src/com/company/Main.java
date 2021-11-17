package com.company;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        int op = 0;
        ArrayList<Sabores> arraySabores = new ArrayList<Sabores>();
        Scanner tc = new Scanner(System.in);

        do{
            System.out.println("Sabores cadastrados " + arraySabores.size());
            System.out.println("1. Cadastrar sabores");
            System.out.println("2. Exibir sabores");
            System.out.println("3. Encontrar sabores");
            System.out.println("4. Atualizar sabor");
            System.out.println("5. Verificar alergia");
            System.out.println("6. Remover sabores");
            op = tc.nextInt();

            switch (op){
                case 1:{
                    Sabores sabor = new Sabores();
                    if(arraySabores.add(sabor)){
                        System.out.println("Sabor cadastrado!");
                        sabor.mostrar();
                    }else{
                        System.out.println("Sabor não cadastrado!");
                    }
                    break;
                }

                case 2:{
                    if(arraySabores.isEmpty()){
                        System.out.println("Sabores não cadastrados.");
                    }else {
                        for (int i = 0; i < arraySabores.size(); i++) {
                            arraySabores.get(i).mostrar();
                            //Sabores s = arraySabores.get(i);
                            //s.mostrar();
                        }
                        // ForIt- Outra forma de fazer o for: Sabores arraySabores : arraySabores
                    }
                    break;
                }

                case 3:{
                    System.out.println("Digite qual sabor você deseja encontrar:");
                    String sabor = tc.next();
                    Sabores busca = new Sabores(sabor);
                    if(arraySabores.contains(busca)){
                        System.out.println("Sabor já cadastrado!");
                        System.out.println("Posição: " + arraySabores.indexOf(busca));
                    }else{
                        System.out.println("Sabor não encontrado.");
                    }
                }

                case 4:{
                    System.out.println("Digite qual sabor você deseja atualizar:");
                    String sabor = tc.next();
                    Sabores busca = new Sabores(sabor);

                    if(arraySabores.contains(busca)){
                        int i = arraySabores.indexOf(busca);
                        busca = arraySabores.get(i);
                        busca.mostrar();
                        busca.ler();
                        arraySabores.set(i, busca);
                    }else{
                        System.out.println("Sabor não encontrado.");
                    }
                }
                case 5:{
                    for (int i = 0; i < arraySabores.size(); i++){
                        if(!arraySabores.get(i).alergia){
                            arraySabores.get(i).mostrar();
                        }
                    }
                }


            }
        }while(op!=99);
    }
}
