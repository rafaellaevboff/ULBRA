namespace EmprestimoLivros.Entidades
{
    public class Livro{
        public Livro(int id, string nome, string autor, int anoPublicacao, string editora) 
        {
            this.Id = id;
            this.Nome = nome;
            this.Autor= autor;
            this.AnoPublicacao = anoPublicacao;
            this.Editora = editora;
               
        }
        public int Id { get; set; }
        public string Nome { get; private set; }
        public string Autor { get; set; }
        public int AnoPublicacao { get; private set; }
        public string Editora { get; private set; }
    }
}