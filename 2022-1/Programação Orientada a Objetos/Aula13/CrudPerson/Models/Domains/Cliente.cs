namespace CrudPerson.Domains
{
  public class Cliente
  {
    public Cliente()
    {

    }

    public int Id { get; set; }
    public string Nome { get; set; }//não deixar a variável nula
    public string Email { get; set; }
    public string Cpf { get; set; }
    public string Fone { get; set; }
    public string Endereco { get; set; }
  }
}