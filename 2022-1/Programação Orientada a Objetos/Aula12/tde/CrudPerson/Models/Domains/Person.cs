namespace CrudPerson.Domains
{
  public class Person
  {
    public Person()
    {

    }
    public int Id { get; set; }
    public string Nome { get; set; }
    public string Email { get; set; }
    public string Cpf { get; set; }
    public string Fone { get; set; }
    public string Endereco { get; set; }
  }
}