using System;
using Encapsulamento.Domain;

namespace Encapsulamento
{
    class Program
    {
        static void Main(string[] args)
        {
            WriteMsg("Criar o objeto mochila!");

            Mochila mp = new Mochila(1, "Mochila de notebook", 199, 10, eCor.Amarelo);
            WriteMsg($"Nome: {mp.Descricao}\nCor: {mp.Cor}\nPreço: {mp.Preco}");
            
            
            Item celular = new Item(100, "Nokia 3030");
            Item caneta = new Item(101, "Caneta de Quadro Branco");

            //adicionar itens na mochila
            mp.Itens.Add(celular);
            mp.Itens.Add(caneta);

            WriteMsg($"Nome: {mp.Descricao}\n");
            WriteMsg("Itens: ");
            foreach (var item in mp.Itens)
            {
                WriteMsg(item.Nome);
            }   // o foreach percorre uma lista de objetos

        }   

        private static void WriteMsg(string msg){
            Console.WriteLine(msg);
        }
    }
}
