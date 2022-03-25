using System;
using AgendaTelefonica.Entidades;

namespace AgendaTelefonica
{
    class Program
    {
        static void Main(string[] args)
        {
            //criar agenda telefônica
            AgendaT facul = new AgendaT("Números de colegas da faculdade", 2022);

            Pessoa rafaella = new Pessoa("Rafaella", "987654321", "Morrinhos do Sul", "98765432109");
            Pessoa maria = new Pessoa("Maria", "123456789", "Torres", "12345678909");

            //adicionando pessoas na agenda telefônica criada
            facul.Pessoas.Add(rafaella);
            facul.Pessoas.Add(maria);

            //mostrando dados da agenda e quem está cadastrado
            Console.WriteLine($"Nome da agenda: {facul.NomeAgenda}. Ano: {facul.Ano}");
            Console.WriteLine("Pessoas cadastradas na agenda:");
            foreach (var pessoa in facul.Pessoas)
            {
                Console.WriteLine("--------------------");
                Console.WriteLine(pessoa.Nome);
                Console.WriteLine(pessoa.Numero);
                Console.WriteLine(pessoa.Endereco);
                
            }

        }
    }
}
