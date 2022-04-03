namespace atividadeTDE.Domain
{
    public class Cliente
    {
        public Cliente(int id, string nome, string telefone)
        {
            Id = id;
            Nome = nome;
            Telefone = telefone;
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public string Telefone { get; set; }

    }
}