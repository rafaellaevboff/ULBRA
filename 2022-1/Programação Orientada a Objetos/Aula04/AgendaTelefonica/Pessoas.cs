namespace AgendaTelefonica
{
    public class Agenda
    {
        string nome;
        long telefone;
        string endereco;

        public Agenda(string nome, long telefone, string endereco)
        {
            this.nome = nome;
            this.telefone = telefone;
            this.endereco = endereco;
        }
    }
}