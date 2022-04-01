using System;
using EmprestimoLivros.Entidades;

namespace EmprestimoLivros
{
    class Program
    {
        static Emprestimo emprestimo1;
        static void Main(string[] args)
        {

            Pessoa ana = new Pessoa(1, "Ana", "40568957485");
            Pessoa pedro = new Pessoa(1, "Pedro", "45857412384");

            Livro livro1 = new Livro(1, "O Morro dos Ventos Uivantes", "Emily Jane Brontë", 2021, "Principis");
            Livro livro2 = new Livro(2, "As Aventuras de Pi","Yann Martel", 2012, "Agir" );
    
            emprestimo1 = new Emprestimo(ana, livro1, 
                new DateTime(2022,06,05), 
                new DateTime(2022,07,05)
            );

            ImprimirEmprestimo();
        }

        public static void ImprimirEmprestimo()
        {
            Console.WriteLine("Empréstimo de Livros:");
            Console.WriteLine("Empréstimo 01:");
            Console.WriteLine($"Nome: {emprestimo1.Pessoa.Nome}");
            Console.WriteLine($"Livro: {emprestimo1.Livro.Nome}");
            Console.WriteLine($"Data de início: {emprestimo1.DataInicio.ToShortDateString()}");
            Console.WriteLine($"Data de devolução: {emprestimo1.DataDevol.ToShortDateString()}");
        }
    }
}
