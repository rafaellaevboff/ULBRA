using System;
using atividadeTDE.Domain;
using atividadeTDE.Services;
using atividadeTDE.Data;

namespace atividadeTDE.Controllers
{
    public class ClienteController
    {
        ClienteService controle = new ClienteService();

        public void MenuCliente(){ 
            Console.WriteLine("Crie o primeiro cliente");

            string escolha = string.Empty;
            ClienteService clienteS = new ClienteService();

            while(escolha != "0"){
                Console.WriteLine("Digite 0 para encerrar o programa");
                Console.WriteLine("Digite 1 para adicionar um novo cliente");
                Console.WriteLine("Digite 2 para listar todos os clientes");
                Console.WriteLine("Digite 3 para atualizar dados de um cliente");
                escolha = Console.ReadLine();
                
                switch(escolha)
                {
                    case("0"):
                        Environment.Exit(0);
                    break;

                    case("1"):
                        Console.WriteLine("Digite o nome do cliente");
                        string nome = Console.ReadLine().Trim();

                        Console.WriteLine("Digite o telefone do cliente");
                        string telefone = Console.ReadLine().Trim();

                        var clienteCriado = controle.addCliente(nome, telefone);
                        Console.WriteLine(clienteCriado);
                        Console.WriteLine("");
                    break;

                    case("2"):
                        var retornoLista = controle.listarClientes();
                        Console.WriteLine(retornoLista);
                    break;

                    case("3"):
                        Console.WriteLine("Escolha o id do cliente que deseja editar");
                        var clientes = controle.ListarClientes();
                        if (clientes.Contains("vazia"))
                        {
                            Console.WriteLine(clientes);
                            MenuCliente();
                        }
                        else
                        {
                            Console.WriteLine(clientes);
                        }
                        
                        string idCliente = Console.ReadLine();
                        int idClientInt = Convert.ToInt32(idCliente);

                        Console.WriteLine("Digite o novo nome do cliente");
                        string novoNome = Console.ReadLine().Trim();

                        Console.WriteLine("Digite o novo telefone do cliente");
                        string novoTelefone = Console.ReadLine().Trim();

                        var retornoCliente = controle.mudarDados(idClientInt, novoNome, novoTelefone);
                        Console.WriteLine(retornoCliente);
                        Console.WriteLine("");
                    break;
                }
            }
        }
    }
}