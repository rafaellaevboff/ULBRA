using System;
using TdeCrudDeClientes.Controllers;

namespace TdeCrudDeClientes
{
    class Program
    {
        static void Main(string[] args)
        {
            ClienteController clienteCont = new ClienteController();
            clienteCont.Menu();
        }
    }
}
