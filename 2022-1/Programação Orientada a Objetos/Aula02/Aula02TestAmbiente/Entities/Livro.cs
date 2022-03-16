
using System;

namespace Aula02TestAmbiente.Entities
{
    public class Livro
    {
        //por default está private (está acessível para o próprio método, mas não aparece para outros)
        private int id;
        string titulo;
        decimal valor;
        DateTime dataPublicacao;

        public Autor Autor { get; set; }

        public Livro(int id, string titulo, Autor autor)
        {
            this.id = id;
            this.titulo = titulo;
            this.Autor = autor;
        }

        //GETS
        public int GetId()
        {
            return this.id;
        }
        public string GetTitulo()
        {
            return this.titulo;
        }

        public decimal Valor{get; set;}//retorna o de baixo, pode apagar os de baixo

        public decimal GetValor()
        {
            return this.valor;
        }

        public void SetValor(decimal valor)
        {
            this.valor = valor;
        }

        /*public decimal GetValor()
        {
            if(this.valor == 0)
                return 0;
            else
                return this.valor;
        }
        public void SetValor(decimal valor)
        {
            this.valor= valor;
        }*/
    }
}