using System;

namespace atividadeTDE.Domain
{
    public class Cobranca
    {
        public Cobranca(Cliente cliente, int cod, DateTime emissao, DateTime vencimento, double valor, DateTime pagamento)
        {
            Cliente = cliente;
            Cod = cod;
            Emissao = emissao;
            Vencimento = vencimento;
            Valor = valor;
            Pagamento = pagamento;
        }

        public Cliente Cliente { get; set; }
        public int Cod { get; set; }
        public DateTime Emissao { get; set; }
        public DateTime Vencimento { get; set; }
        public double Valor { get; set; }
        public DateTime Pagamento { get; set; }
        
    }
}