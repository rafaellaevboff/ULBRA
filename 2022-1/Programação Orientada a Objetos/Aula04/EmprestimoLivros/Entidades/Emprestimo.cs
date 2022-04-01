using System;

namespace EmprestimoLivros.Entidades
{
    public class Emprestimo
    {
        public Emprestimo(Pessoa pessoa, Livro livro, DateTime dataInicio, DateTime dataDevol)
        {
            Pessoa = pessoa;
            Livro = livro;
            DataInicio = dataInicio;
            DataDevol = dataDevol;
        }

        public Pessoa Pessoa { get; private set; }
        public Livro Livro { get; set; }
        public DateTime DataInicio { get; private set; }
        public DateTime DataDevol { get; set; }
    }
}