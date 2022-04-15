using System;
using clientesCobrancas.Data;
using clientesCobrancas.Domain;
using clientesCobrancas.Services;

namespace clientesCobrancas.Controllers
{
    public class ClienteCobrancaController
    {
        ClienteService clienteServ = new ClienteService();
        CobrancasService cobServices = new CobrancasService();
        CobrancaRepository cobRep = new CobrancaRepository();
        ClienteRepository clRep = new ClienteRepository();

        public void Menu()
        {
            string verificador = string.Empty;

            while(verificador != "0")
            {
                Console.WriteLine("Digite 0 para encerrar o programa");

                Console.WriteLine("CLIENTES:");
                Console.WriteLine("Digite 1 para adicionar um novo cliente");
                Console.WriteLine("Digite 2 para editar um cliente");
                Console.WriteLine("Digite 3 para listar todos cliente");
                Console.WriteLine("Digite 4 para remover um cliente");
                Console.WriteLine("Digite 5 para ver quantos clientes estão cadastrados");
                Console.WriteLine("Digite 6 para verificar se um cliente está cadastrado, pelo NOME");

                Console.WriteLine("\nCOBRANÇAS:");
                Console.WriteLine("Digite 7 para adicionar uma nova cobrança");
                Console.WriteLine("Digite 8 para pagar uma cobrança");
                Console.WriteLine("Digite 9 para listar todas as cobranças");
                Console.WriteLine("Digite 10 para listar todas as cobranças de um cliente específico");


                verificador = Console.ReadLine();

                switch (verificador)
                {
                    case "0":
                        Environment.Exit(0);
                    break;

                    //CLIENTES:
                    case "1":
                        Console.WriteLine("Digite o nome do cliente:");
                        string nome = Console.ReadLine().Trim();

                        Console.WriteLine("Digite o telefone do cliente:");
                        string telefone = Console.ReadLine().Trim();

                        var retorno = clienteServ.criarCliente(nome, telefone);
                        Console.WriteLine(retorno);
                        Console.WriteLine("");
                    break;

                    case "2":
                        Console.WriteLine("Digite o ID do usuário que deseja editar: ");
                        var clientes = clienteServ.listarClientes();

                        if(clientes.Contains("vazia"))
                        {
                            Console.WriteLine(clientes);
                            Menu();
                        }
                        else
                        {
                            Console.WriteLine(clientes);
                        }

                        string idCliente = Console.ReadLine();
                        int idClienteInt = Convert.ToInt32(idCliente);

                        Console.WriteLine("Digite o novo nome do cliente");
                        string novoNome = Console.ReadLine().Trim();

                        Console.WriteLine("Digite o novo telefone do cliente");
                        string novoTelefone = Console.ReadLine().Trim();

                        var retornoClienteEditado = clienteServ.editarCliente(idClienteInt, novoNome, novoTelefone);
                        Console.WriteLine(retornoClienteEditado);
                        Console.WriteLine("");
                    break;

                    case "3":
                        var retornoListar = clienteServ.listarClientes();
                        Console.WriteLine(retornoListar);
                    break;

                    case "4":
                        Console.WriteLine("Escolha o id do cliente que deseja remover");
                        var todosClientes = clienteServ.listarClientes();

                        if (todosClientes.Contains("vazia"))
                        {
                            Console.WriteLine(todosClientes);
                            Menu();
                        }
                        else
                        {
                            Console.WriteLine(todosClientes);
                        }

                        string idClienteRemover = Console.ReadLine();
                        int idClienteRemoverInt = Convert.ToInt32(idClienteRemover);

                        var clienteRemovido = clienteServ.RemoverCliente(idClienteRemoverInt);
                        Console.WriteLine(clienteRemovido);
                    break;

                    case "5":
                        var tamanho = clienteServ.tamanhoListaClientes();
                        Console.WriteLine(tamanho);
                    break;

                    case "6":
                        Console.WriteLine("Digite o nome que deseja procurar na lista:");
                        string nomeCliente = Console.ReadLine();
                        nomeCliente = clienteServ.AcharClienteNome(nomeCliente);
                    break;

                    //----------------------------------------------------------------------------------------------------------------------

                    //COBRANÇAS:
                     case "7":
                        Console.WriteLine("Digite a data de vencimento da cobranca:");
                        string vencimento = Console.ReadLine().Trim();
                        DateTime dataVencData = Convert.ToDateTime(vencimento);

                        Console.WriteLine("Digite o valor da cobranca:");
                        string valor = Console.ReadLine().Trim();
                        double valorDouble = Convert.ToDouble(valor);

                        Console.WriteLine("Digite o id do cliente que essa cobrança pertence:");
                        var clientesListar = clienteServ.listarClientes();
                        int tamanhoLista = clienteServ.tamanhoListaClientes();
                        if(tamanhoLista == 0)
                        {
                            Console.WriteLine("Não há nenhum cliente cadastrado! Cadastre pelo menos um cliente na lista.");
                            Menu();
                        }
                        else
                        {
                            Console.WriteLine(clientesListar);
                        }
                        string idDoCliente = Console.ReadLine();
                        var idDoClienteInt = Convert.ToInt32(idDoCliente);
                        Cliente clienteCobranca = null;
                        clienteCobranca = clRep.GetById(idDoClienteInt);

                        var retorno2 = cobServices.criarCobranca(dataVencData, valorDouble, clienteCobranca);
                        Console.WriteLine(retorno2);
                        Console.WriteLine("");
                    break;

                    case "8":
                    var tamanhoListaC = cobServices.tamanhoListaCobrancas();
                        if(tamanhoListaC == 0)
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

                    case "9":
                        var retorno3 = cobServices.listarTodasCobrancas();
                        Console.WriteLine(retorno3);
                    break;

                    case "10":
                        Console.WriteLine("Para ver as cobranças de um cliente digite seu id");
                        var listarClientes = clienteServ.listarClientes();
                        Console.WriteLine(listarClientes);
                        string idC = Console.ReadLine();
                        int idCInt = Convert.ToInt32(idC);
                        var clienteC = clRep.GetById(idCInt);

                        cobServices.mostrarCobsDeCliente(clienteC);
                    break;

                    default:
                        Console.WriteLine("Opção inválida!");
                        Menu();
                    break;
                }
            }

        }
    }
}