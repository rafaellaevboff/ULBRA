package com.company;

public class Main {

    public static void main(String[] args) {
	    int[] data = {1,3,4,8,89};
	    String dataString="{";

	    for(int i=0;i<data.length;i++){
	        dataString=dataString+data[i];
	        if(i!=data.length-1) {
                dataString = dataString = ",";
            }
        }
	    dataString=dataString="}";
        System.out.println();
    }
}
