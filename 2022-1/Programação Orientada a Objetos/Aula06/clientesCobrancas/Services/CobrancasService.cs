using System;
using System.Text;
using clientesCobrancas.Data;
using clientesCobrancas.Domain;

namespace clientesCobrancas.Services
{
    public class CobrancasService
    {
        CobrancaRepository cobRep = new CobrancaRepository();

        public int tamanhoListaCobrancas()
        {
            var quantidade = cobRep.GetAll().Count;
            return quantidade;
        }

        public string criarCobranca(DateTime dataVencimento, double valor, Cliente cliente)
        {
            int id = tamanhoListaCobrancas() + 1;

            cobRep.Save(new Cobrancas(id, dataVencimento, valor, cliente));

            return "Cobrança adicionada!";
        }   

        public string listarTodasCobrancas()
        {
            var builder = new StringBuilder();
            var cobrancas = cobRep.GetAll();
            var qtdCob = tamanhoListaCobrancas();

            if(qtdCob == 0)
            {
                builder.AppendLine("Lista vazia!");
                return builder.ToString();
            }

            foreach (var item in cobrancas)
            {
                builder.AppendLine($"Id: {item.Id} - Data de vencimento: {item.dataVencimento} - Data de pagamento: {item.DataPagamento} - Valor: {item.Valor} Cliente - {item.Cliente.Nome}");
            }

            return builder.ToString();
        }

        public string RemoverCobranca(int idCob)
        {
            string retorno;

            if(tamanhoListaCobrancas().Equals(0))
            {
                retorno = "LISTA VAZIA! Adicione o menos uma cobrança para poder removê-la.";
                return retorno;
            }

            var cobranca = cobRep.GetById(idCob);

            if (cobranca == null)
            {
                retorno = $"Não existe uma cobrança com o código {idCob}";
            }

            cobRep.Delete(cobranca);

            retorno = "Cobrança excluída!";
            return retorno;
        }

        public void mostrarCobsDeCliente(Cliente cliente)
        {
            var cobrancas = cobRep.GetAll();
            foreach (var item in cobrancas)
            {
                if(item.Cliente == cliente){
                    Console.WriteLine($"Id: {item.Id} - Data de vencimento: {item.dataVencimento} - Valor: {item.Valor} Cliente - {item.Cliente.Nome}");
                }
            }
                
        }
    }
}