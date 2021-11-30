package com.objetosInicio;

public class Data {
    public int dia;
    public int mes;
    public int ano;
    //fazem parte do objeto data

    public static String separador = "/";
    //faz parte da classe data

    public void mostrar(){
        System.out.println(dia + separador + mes + separador + ano);
    }
}
