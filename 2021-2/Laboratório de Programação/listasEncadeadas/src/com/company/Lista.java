package com.company;

public class Lista {
    public Cao primeiro;
    public int tam;
    public Cao ultimo;

    public int size() {
        return tam;
    }

    @Override
    public String toString() {
        return "Lista{" +
                "primeiro=" + primeiro +
                ", tam=" + tam +
                '}';
    }

    public boolean isEmpty() {
        if (primeiro == null) {
            return true;
        } else {
            return false;
        }

        /*
        OU
        if(tam == 0){
            return true;
        }else{
            return false;
        }*/
    }

    public boolean add(Cao caozinho) {
        if (this.primeiro == null) {
            this.primeiro = caozinho;
            this.tam++;
            return true;
        } else {
            caozinho.proximo = primeiro;
            primeiro = caozinho;
            this.tam++;
            return true;
        }
    }

    public boolean addFim(Cao caozinho){
        if(this.primeiro==null){
            return add(caozinho);
        }else{
            Cao aux=primeiro;

            while (aux.proximo!=null){
                aux=aux.proximo;
            }
            aux.proximo=caozinho;
            this.ultimo=caozinho;
            tam++;
            return true;
        }
    }

    public void exibir(){
        if(isEmpty()){
            System.out.println("Lista vazia!");
        }else {
            Cao aux = primeiro;
            aux.exibir();
            while (aux.proximo != null) {
                aux = aux.proximo;
                aux.exibir();
            }
        }
    }

    public boolean remover(){
        if (!isEmpty()){
            Cao p = this.primeiro;
            this.primeiro = p.proximo;
            this.tam--;
            return true;
            //   this.primeiro=this.primeiro.proximo;
        }else{
            System.out.println("Lista vazia");
            return false;
        }
    }

    //remover em uma posição
    public boolean remover(int x){
        if(x == 0){
            return this.remover();
        }else if(x >= tam){
            return false;
        }else if(x==tam-1){
            return this.removerFim();
        }else{
            int count = 0;
            Cao elemento = this.primeiro;
            Cao anterior = this.primeiro;
                while(x > count){
                    count ++;
                    anterior = elemento;
                    elemento = elemento.proximo;
                }
                anterior.proximo = elemento.proximo;
                this.tam--;
                return true;
        }
    }

    public boolean removerFim(){
        if(this.primeiro == null){
            System.out.println("lista vazia");
            return false;
        }else {
            Cao aux = primeiro;
            Cao penultimo = primeiro;
            while (aux.proximo != null) {
                penultimo = aux;
                aux = aux.proximo;
            }

            penultimo.proximo = null;
            this.ultimo = penultimo;
            this.tam--;
            return true;
        }
    }

    //REMOVER ELEMENTO POR NOME:
    public boolean removerNome(String nomeP){
        if(isEmpty()){
            System.out.println("Lista vazia!");
            return false;
        }else {
            Cao aux = primeiro;
            int i = 0;

            while (!aux.nome.equals(nomeP)) {
                i++;
                aux = aux.proximo;
            }
            return this.remover(i);
        }
    }

    //forma que o Ramon fez para remover por nome:
    public boolean remover(Cao c) {
        //p é a posição do cachorriho pra eliminar, por isso ele inicia com -1, pois na contagem ele depois da primeira entrada ele vai comecar no laço com o 0 que é o primeiro index
        int p = -1;
        boolean find = false;
        if (isEmpty()) {
            System.out.println("Lista vazia!");
            return false;
        } else {
            Cao aux = primeiro;
            while (aux.proximo != null) {
                aux = aux.proximo;
                p++;
                if (aux.equals(c)) {
                    find = true;
                    break;
                }
            }
            if(find) {
                return remover(p);
            }else{
                System.out.println("Erro ao encontyrar cão");
                return false;
            }
        }
    }
}
