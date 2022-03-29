namespace Mercado.Entidades
{
    public class Produto
    {
        public Produto(int id, string nome, double preco, int qtdeEstoque = 0)
        {
            Id = id;
            Nome = nome;
            Preco = preco;
            QtdeEstoque = qtdeEstoque;
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public double Preco { get; set; }
        public int QtdeEstoque { get; set; }
    }
}