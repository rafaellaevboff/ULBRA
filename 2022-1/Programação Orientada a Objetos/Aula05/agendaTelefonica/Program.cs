using System;
using agendaTelefonica.Controllers;

namespace agendaTelefonica
{
    class Program
    {
        static void Main(string[] args)
        {
            ContatoController agenda = new ContatoController();
            agenda.Menu();
        }
    }
}
