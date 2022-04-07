using System;

namespace atividadeTDE.Domain
{
    public class Cobranca
    {
        public Cobranca(int cod, Cliente cliente, DateTime emissao, DateTime vencimento, double valor, DateTime pagamento)
        {
            this.Cod = cod;
            this.Cliente = cliente;
            this.DataEmissao = emissao;
            this.DataVencimento = vencimento;
            this.Valor = valor;
            this.DataPagamento = pagamento;
        }

        public Cliente Cliente { get; set; }
        public int Cod { get; set; }
        public DateTime DataEmissao { get; set; }
        public DateTime DataVencimento { get; set; }
        public double Valor { get; set; }
        public DateTime DataPagamento { get; set; }
    
    }
}