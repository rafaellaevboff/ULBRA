using System;
using clientesCobrancas.Services;
using clientesCobrancas.Data;
using clientesCobrancas.Domain;

namespace clientesCobrancas.Controllers
{
    public class CobrancasController
    {
        CobrancasService cobServices = new CobrancasService();
        ClienteService clienteServ = new ClienteService();
        CobrancaRepository cobRep = new CobrancaRepository();
        ClienteRepository clRep = new ClienteRepository();
        Interface interf = new Interface();

        public void MenuCob()
        {
            string verificador = string.Empty;

            while(verificador != "0")
            {
                Console.WriteLine("Digite 0 para encerrar o programa");
                Console.WriteLine("Digite 1 para adicionar uma nova cobrança");
                Console.WriteLine("Digite 2 para pagar uma cobrança");
                Console.WriteLine("Digite 3 para listar todas as cobranças");
                Console.WriteLine("Digite 4 para listar todas as cobranças de um cliente específico");
                Console.WriteLine("Digite 5 para voltar para a aba de navegação");

                verificador = Console.ReadLine();

                switch (verificador)
                {
                    case "0":
                        Environment.Exit(0);
                    break;

                    case "1":
                        Console.WriteLine("Digite a data de vencimento da cobranca:");
                        string vencimento = Console.ReadLine().Trim();
                        DateTime dataVencData = Convert.ToDateTime(vencimento);

                        Console.WriteLine("Digite o valor da cobranca:");
                        string valor = Console.ReadLine().Trim();
                        double valorDouble = Convert.ToDouble(valor);

                        Console.WriteLine("Digite o id do cliente que essa cobrança pertence:");
                        var clientes = clienteServ.listarClientes();
                        int tamanhoLista = clienteServ.tamanhoListaClientes();
                        if(tamanhoLista == 0)
                        {
                            Console.WriteLine("Não há nenhum cliente cadastrado! Cadastre pelo menos um cliente na lista.");
                            MenuCob();
                        }
                        else
                        {
                            Console.WriteLine(clientes);
                        }
                        string idCliente = Console.ReadLine();
                        int idClienteInt = Convert.ToInt32(idCliente);
                        Cliente clienteCobranca = clRep.GetById(idClienteInt);

                        if(idClienteInt > tamanhoLista)
                        {
                            Console.WriteLine("O id digitado não corresponde a nenhum cliente.");
                        }
                        else{
                            var retorno = cobServices.criarCobranca(dataVencData, valorDouble, clienteCobranca);
                            Console.WriteLine(retorno);
                            Console.WriteLine("");
                        }

                    break;

                    case "2":
                    var tamanho = cobServices.tamanhoListaCobrancas();
                        if(tamanho == 0)
                        {
                            Console.WriteLine("A lista de cobranças está vazia! Adicione uma cobrança");
                        }
                        else
                        {
                            Console.WriteLine("Digite o id da cobrança que deseja pagar");
                            string idCob = Console.ReadLine();
                            int idCobInt = Convert.ToInt32(idCob);
                            var cobPagar = cobRep.GetById(idCobInt);

                            DateTime dataHoje = DateTime.Today;
                            
                            if(dataHoje > cobPagar.dataVencimento){
                                double valorReajustado = cobPagar.Valor * 1.15;
                                cobPagar.Valor = valorReajustado;

                                cobPagar.DataPagamento = dataHoje.ToString();
                                cobPagar.Pago = true;

                                Console.WriteLine($"Pagamento realizado. Você pagou depois da data de vencimento, por isso foi aplicado juros de 15%.\nValor com juros: R${cobPagar.Valor} - Data de Pagamento: {cobPagar.DataPagamento}");
                            }else{
                                cobPagar.DataPagamento = dataHoje.ToString();
                                cobPagar.Pago = true;

                                Console.WriteLine($"Pagamento realizado.\nValor pago: R${cobPagar.Valor} - Data de Pagamento: {cobPagar.DataPagamento}");
                            }
                        }
                    break;

                    case "3":
                        var retornoListar = cobServices.listarTodasCobrancas();
                        Console.WriteLine(retornoListar);
                    break;

                    case "4":
                        Console.WriteLine("Para ver as cobranças de um cliente digite seu id");
                        string idC = Console.ReadLine();
                        int idCInt = Convert.ToInt32(idC);
                        var clienteC = clRep.GetById(idCInt);

                        cobServices.mostrarCobsDeCliente(clienteC);
                    break;

                    case "5":
                        interf.MenuPrincipal();
                    break;

                    default:
                        Console.WriteLine("Opção inválida!");
                        MenuCob();
                    break;
                }
            }
        }
    }
}