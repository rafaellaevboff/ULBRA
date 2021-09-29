package com.company;

public class Main {

    public static void main(String[] args) {
        int[] meuA = {1,4,5,6};
        int[] meuB = {1,4,5,6};
        System.out.println(MeusArrays.findArrays(meuA, meuB, 5));

        int[] array= MeusArrays.returnArray(10);
        MeusArrays.showArray(array);
    }
}
