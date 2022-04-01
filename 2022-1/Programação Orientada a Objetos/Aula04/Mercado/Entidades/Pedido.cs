using System;
using System.Collections.Generic;

namespace Mercado.Entidades
{
    public class Pedido
    {
        public Pedido(int id, DateTime data, Cliente cliente, List<Produto> produtos)
        {
            Id = id;
            Data = data;
            Cliente = cliente;
            Produtos = produtos;
            FormasPagamentos = new List<FormaPagamento>();
        }

        public int Id { get; set; }
        public DateTime Data { get; set; }
        public Cliente Cliente { get; set; }
        public List<Produto> Produtos {get; set;}
        public List<FormaPagamento> FormasPagamentos {get; set;}    
    }
}