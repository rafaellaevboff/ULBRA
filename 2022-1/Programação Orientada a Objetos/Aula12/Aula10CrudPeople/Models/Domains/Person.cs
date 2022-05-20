namespace Aula10CrudPeople.Models.Domains
{
    public class Person
    {
        public Person(){}
        public Person(int id, string nome, string fone, string email, string cpf, string endereco)
        {
            Id = id;
            Nome = nome;
            Fone = fone;
            Email = email;
            Cpf = cpf;
            Endereco = endereco;
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public string Fone { get; set; }
        public string Email { get; set; }
        public string Cpf { get; set; }
        public string Endereco { get; set; }
    }
}