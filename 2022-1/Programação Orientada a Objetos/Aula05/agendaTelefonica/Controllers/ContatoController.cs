using System;
using agendaTelefonica.Services;

namespace agendaTelefonica.Controllers
{
    public class ContatoController
    {
        ContatoService controle = new ContatoService();

        public void Menu()
        {
            string operador = string.Empty;

            while(operador != "0")
            {
                Console.WriteLine("Digite 1 para add um novo contato");
                Console.WriteLine("Digite 2 para listar todos os contatos");
                Console.WriteLine("Digite 0 para sair da aplicação");
                operador = Console.ReadLine();

                switch (operador)
                {
                    case  "0":
                        Environment.Exit(0);
                    break;

                    case  "1":
                        Console.WriteLine("Digite o nome do contato");
                        string nome = Console.ReadLine().Trim();//o Trim tira os espaços que podem ser digitados a mais no fim e no começo

                        Console.WriteLine("Digite o telefone do contato");
                        string telefone = Console.ReadLine().Trim();

                        string retorno = controle.CriarContato(nome, telefone);

                        Console.WriteLine(retorno);
                    break;

                    case  "2":
                        var retorno2 = controle.ListarContatos();
                        Console.WriteLine(retorno2);
                    break;

                    default:
                        Console.WriteLine("Opção inválida");
                        Menu();
                    break;
                }
            }
        }
    }
}