using System;

namespace clientesCobrancas.Controllers
{
    public class Interface
    {
        public void MenuPrincipal()
        {
            ClienteController clientCont = new ClienteController();
            CobrancasController cobContr = new CobrancasController();

            string verificador = string.Empty;

            while(verificador != "0")
            {
                Console.WriteLine("Digite 0 para encerrar o programa");
                Console.WriteLine("Digite 1 para ir para a aba de clientes");
                Console.WriteLine("Digite 2 para ir para a aba de cobranças");

                verificador = Console.ReadLine();

                switch(verificador)
                {
                    case "0":
                        Environment.Exit(0);
                    break;

                    case "1":
                        clientCont.Menu();
                    break;

                    case "2":
                        cobContr.MenuCob();
                    break;
                }
            }
        }
    }
}