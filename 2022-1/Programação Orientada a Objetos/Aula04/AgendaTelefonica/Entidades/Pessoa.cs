namespace AgendaTelefonica.Entidades
{
    public class Pessoa
    {
        public Pessoa(string nome, string numero, string endereco, string cpf)
        {
            Nome = nome;
            Numero = numero;
            Endereco = endereco;
            Cpf = cpf;
        }

        public string Nome { get; set; }
        public string Numero { get; set; }
        public string Endereco { get; set; }
        public string Cpf { get; private set; }
        public AgendaT AgendaT { get; set; }
    }
}