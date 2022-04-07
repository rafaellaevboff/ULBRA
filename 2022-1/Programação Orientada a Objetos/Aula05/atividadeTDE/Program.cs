using System;

namespace atividadeTDE
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("Bem vindo(a) ao sistema de cobranças!");

            do{
                Console.WriteLine("Digite 1 se deseja abrir a aba de Clientes\nDigite 2 se deseja abrir a aba de cobranças!");
                string direcionamento = string.Empty;

                if(direcionamento == "1"){
                    ClienteController.MenuCliente();
                }else if(direcionamento == "2"){
                    CobrancaController.MenuCobranca();
                }
            }while(direcionamento != "1" || direcionamento != "2");
        }
    }
}
