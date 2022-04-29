namespace AgendaContatos.Domain
{
    public class Contact
    {
        public Contact(int id, string name, string phone)
        {
            Id = Id;
            Nome = name;
            Telefone = phone;
        }

        public int Id { get; set; }
        public string Nome { get; set; }
        public string Telefone { get; set; }
        

    }
}