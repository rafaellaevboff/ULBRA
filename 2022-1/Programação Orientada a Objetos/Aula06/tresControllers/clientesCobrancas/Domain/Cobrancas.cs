using System;

namespace clientesCobrancas.Domain
{
    public class Cobrancas
    {
        public Cobrancas(int id, DateTime dataVencimento, double valor, Cliente cliente)
        {
            this.Id = id;
            this.dataVencimento = dataVencimento;
            this.Valor = valor;
            this.Pago = false;
            this.DataPagamento = "";
            this.Cliente = cliente;
        }

        public int Id { get; set; }
        public DateTime dataVencimento { get; set; }
        public double Valor { get; set; }
        public bool Pago { get; set; }
        public string DataPagamento { get; set; }
        public Cliente Cliente { get; private set; }
    
    }
}