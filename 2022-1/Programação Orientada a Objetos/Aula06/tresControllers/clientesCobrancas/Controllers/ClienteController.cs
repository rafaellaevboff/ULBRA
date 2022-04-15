using System;
using clientesCobrancas.Services;

namespace clientesCobrancas.Controllers
{
    public class ClienteController
    {
        ClienteService clienteServ = new ClienteService();
        Interface interf = new Interface();

        public void Menu()
        {
            string verificador = string.Empty;

            while(verificador != "0")
            {
                Console.WriteLine("Digite 0 para encerrar o programa");
                Console.WriteLine("Digite 1 para adicionar um novo cliente");
                Console.WriteLine("Digite 2 para editar um cliente");
                Console.WriteLine("Digite 3 para listar todos cliente");
                Console.WriteLine("Digite 4 para remover um cliente");
                Console.WriteLine("Digite 5 para ver quantos clientes estão cadastrados");
                Console.WriteLine("Digite 6 para verificar se um cliente está cadastrado, pelo NOME");
                Console.WriteLine("Digite 7 para voltar para a aba de navegação");


                verificador = Console.ReadLine();

                switch (verificador)
                {
                    case "0":
                        Environment.Exit(0);
                    break;

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

                    case "7":
                        interf.MenuPrincipal();
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