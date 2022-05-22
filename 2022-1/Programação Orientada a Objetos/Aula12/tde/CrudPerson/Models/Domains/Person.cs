namespace CrudPerson.Domains
{
  public class Person
  {
    public Person()
    {

    }
    public int Id { get; set; }
    public string Nome { get; set; } = string.Empty;
    public string Email { get; set; } = string.Empty;
    public string Cpf { get; set; } = string.Empty;
    public string Fone { get; set; } = string.Empty;
    public string Endereco { get; set; } = string.Empty;
  }
}