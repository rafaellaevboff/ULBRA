using System;
using atividadeTDE.Domain;
using atividadeTDE.Services;
using atividadeTDE.Data;

namespace atividadeTDE.Controllers
{
    public class CobrancaController
    {
        CobrancaService controle = new CobrancaService();

        public void MenuCobranca(){
            string escolha = string.Empty;
            CobrancaService cobrancaS = new CobrancaService();

            while(escolha != "0"){
                Console.WriteLine("Digite 0 para encerrar o programa");
                Console.WriteLine("Digite 1 para adicionar uma nova cobrança");
                Console.WriteLine("Digite 2 para listar todas as cobranças");
                escolha = Console.ReadLine();
                
                switch(escolha)
                {
                    case("0"):
                        Environment.Exit(0); 
                    break;

                    case("1"):
                        int codCobranca = (listaDeCobranca.Count() + 1);

                        //adiconar cliente dono da cobrança
                        Console.WriteLine("Escolha o id do cliente a quem essa conrança pertencerá: ");
                        int idCliente = Console.ReadLine();
                        Cliente devedor = null;
                        devedor = clientes.GetById(idCliente);

                        Console.WriteLine("Digite a data de emissão da cobrança ");
                        string dataEmissao = Console.ReadLine();
                        DateTime dataEmissaoC = Convert.ToDateTime(dataEmissao);

                        Console.WriteLine("Digite a data de vencimento da cobrança ");
                        string dataVencimento = Console.ReadLine();
                        DateTime dataVencimentoC = Convert.ToDateTime(dataVencimento);

                        Console.WriteLine("Digite o valor da cobrança ");
                        string valor = Console.ReadLine();
                        double valorCobradoC = Convert.ToDouble(valor);

                        listaDeCobranca.Save(new Cobranca(codCobranca, devedor, dataEmissaoC, dataVencimentoC, valorCobradoC));
                
                    break;

                    case("2"):
                        retornoCobrancas = controle.listarCobrancas;
                        Console.WriteLine(retornoCobrancas);
                    break;
                }
            }
        }
    }
}