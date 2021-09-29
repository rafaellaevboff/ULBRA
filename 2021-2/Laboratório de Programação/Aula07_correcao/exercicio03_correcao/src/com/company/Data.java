package com.company;

public class Data {
    //12/12/2021
    public static int getDia(String data){
        int dia;
        if (valide(data)) {
            return dia = Integer.parseInt(data.substring(0,2));
        }
        return 0;
    }

    public static int getMes(String data){
        int mes;
        if (valide(data)) {
            return mes = Integer.parseInt(data.substring(3,5));
        }
        return 0;
    }

    public static int getAno(String data){
        int ano;
        if (valide(data)) {
            return ano = Integer.parseInt(data.substring(6,10));
        }
        return 0;

    }

    public static boolean valide(String data){
        if (data.length() == 10) {
            if((data.charAt(2)=='/') && (data.charAt(5)=='/')){
                return true;
            }else if((data.charAt(2)=='-') && (data.charAt(5)=='-')) {
                return true;
            } else{
                return false;
            }
        }else{
            return false;
        }
    }
}
