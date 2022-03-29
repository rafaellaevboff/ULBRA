using System;
using System.Collections.Generic;
using Mercado.Entidades;

namespace Mercado
{
    class Program
    {
        static Pedido pedidoJoao;

        static void Main(string[] args)
        {
            Produto produto1 = new Produto(1, "Caneta", 2.50, 10);
            Produto produto2 = new Produto(1, "Lápis", 1.50, 10);
            Produto produto3 = new Produto(1, "Borracha", 1.50, 10);

            Cliente cliente = new Cliente (10, "João");

            FormaPagamento fDinheiro = new FormaPagamento(01, "Dinheiro");
            FormaPagamento fCartao = new FormaPagamento(02, "Cartão");

            //criando um pedido
            pedidoJoao = new Pedido( 1,
                new DateTime(2022,03,01),
                cliente,
                new List<Produto> ()
                {
                    produto1, 
                    produto2
                }
            );

            pedidoJoao.Produtos.Add(produto3);
            pedidoJoao.Produtos.FormasPagamentos.Add(fDinheiro);
            pedidoJoao.Produtos.FormasPagamentos.Add(fCartao);

            //imprimir pedido
            ImprimirPedido();


        }

        private static void ImprimirPedido()
        {
            Console.WriteLine($"Pedido do {pedidoJoao.Cliente.Nome}");
            Console.WriteLine($"Data: {pedidoJoao.Data.ToShortDateString()}");
            Console.WriteLine("-------------------------------");
            foreach(var item in pedidoJoao.Produtos)
            {
                Console.WriteLine(item.Nome);
            }

            Console.WriteLine("-------------------------------");
            foreach(var item in pedidoJoao.FormasPagamentos)
            {
                Console.WriteLine(item.Nome);
            }
        }
    }
}
