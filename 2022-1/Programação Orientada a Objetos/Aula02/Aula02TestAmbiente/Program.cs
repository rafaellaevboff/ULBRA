using System;
using Aula02TestAmbiente.Entities;

namespace Aula02TestAmbiente
{
    class Program
    {
        static void Main(string[] args)
        {
            //use o control + . para pegar as referencias(imports)dos pacotes
            Console.WriteLine("Hello World!");

            Console.WriteLine("Hello World");
            Autor oAutor = new Autor(555, "Rafaela");
            Livro objLivro = new Livro(100, "Banco de Dados", oAutor);
            //Console.WriteLine(objLivro.GetId() + " - " + objLivro.GetTitulo() + " - " + objLivro.GetValor());
        
            Console.WriteLine(
                    objLivro.GetId() + " - " + 
                    objLivro.GetTitulo() + " - " + 
                    objLivro.GetValor() + " Autor: " + 
                    objLivro.Autor.Nome);

            objLivro.SetValor(199);
            Console.WriteLine("Valor do livro: " + objLivro.GetValor());
        }
    }
}
