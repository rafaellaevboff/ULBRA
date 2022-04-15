using System;
using System.Text;
using clientesCobrancas.Data;
using clientesCobrancas.Domain;

namespace clientesCobrancas.Services
{
    public class CobrancasService
    {
        CobrancaRepository cobRep = new CobrancaRepository();
        ClienteRepository clRep = new ClienteRepository();

        //RETORNAR TAMANHO DA LISTA
        public int tamanhoListaCobrancas()
        {
            var quantidade = cobRep.GetAll().Count;
            return quantidade;
        }

        //CRIAR UMA COBRANÇA
        public string criarCobranca(string dataEmissao, DateTime dataVencimento, double valor, int idCliente)
        {
            int id = tamanhoListaCobrancas() + 1;

            DateTime dataEmissaoC = Convert.ToDateTime(dataEmissao);

            //procurar cliente na lista de clientes
            Cliente clienteDaCob = clRep.GetById(idCliente);

            cobRep.Save(new Cobrancas(id, dataEmissaoC, dataVencimento, valor, clienteDaCob));
            return "Cobrança adicionada!";
        }   

        //LISTAR TODAS AS COBRANÇAS
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

            foreach (Cobrancas itemC in cobrancas)
            {
                builder.AppendLine($"Id: {itemC.Id} - Data de vencimento: {itemC.DataVencimento} - Data de Emissao: {itemC.DataEmissao} - Data de pagamento: {itemC.DataPagamento} - Valor: {itemC.Valor} - Cliente: {itemC.Cliente}");
            }

            return builder.ToString();
        }

        //REMOVER UMA COBRANÇA
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

        //PAGAR UMA COBRANÇA
        public string pagamentoEfetuar(int idCob)
        {
            Cobrancas cobranca = null;
            cobranca = cobRep.GetById(idCob);

            if(cobranca == null)
            {
                return "ERRO, cobrança não encontrada, verifique o id correto na lista de cobranças";
            }
            
            if (cobranca.Pago == true)
            {
                return "Está cobrança já está paga!";
            }

            DateTime dataHoje = DateTime.Today;
            DateTime venc = cobranca.DataVencimento;

            int result = DateTime.Compare(dataHoje, venc);
            
            if(result > 0){
                double valorReajustado = cobranca.Valor * 1.15;
                cobranca.Valor = valorReajustado;

                cobranca.DataPagamento = dataHoje.ToString();
                cobranca.Pago = true;

                return $"Pagamento realizado. Você pagou depois da data de vencimento, por isso foi aplicado juros de 15%.\nValor com juros: R${cobranca.Valor} - Data de Emissao: {cobranca.DataEmissao} - Data de vencimento: {cobranca.DataVencimento} - Data de Pagamento: {cobranca.DataPagamento}";
            }else{
                cobranca.DataPagamento = dataHoje.ToString();
                cobranca.Pago = true;

                return $"Pagamento realizado.\nValor pago: R${cobranca.Valor} - Data de Emissao: {cobranca.DataEmissao} - Data de vencimento: {cobranca.DataVencimento} - Data de Pagamento: {cobranca.DataPagamento}";
            }
        }

        //MOSTRAR COBRANÇAS DE UM CLIENTE ESPECÍFICO
        public string mostrarCobsDeCliente(int idCliente)
        {
            var builder = new StringBuilder();
            var cobrancas = cobRep.GetAll();

            foreach (Cobrancas item in cobrancas)
            {
                if(item.Cliente.Id == idCliente){
                    builder.AppendLine($"Id: {item.Id} - Data de vencimento: {item.DataVencimento} - Data de Emissão: {item.DataEmissao} - Valor: {item.Valor} Cliente - {item.Cliente.Nome}");
                }
            }

            return builder.ToString();
        }
    }
}