package com.company;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import com.sun.xml.internal.ws.api.model.wsdl.WSDLOutput;

public class Main {

    public static void main(String[] args) {
	final int MAIOR = 6;
	int sorteio;
	String senha = "";
	sorteio = (int)(Math.random()*MAIOR+5);

        System.out.println(sorteio);
        for(int i = 0; i < sorteio; i++){
            senha += Integer.toString((int)(Math.random()*10));
        }
        System.out.println(senha);
    }
}
