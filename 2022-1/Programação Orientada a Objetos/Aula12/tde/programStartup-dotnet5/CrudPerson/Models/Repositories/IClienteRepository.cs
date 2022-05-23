using System.Collections.Generic;
using CrudPerson.Domains;

namespace CrudPerson.Repositories
{
  public interface IClienteRepository
  {
    Cliente GetById(int id);
    List<Cliente> GetAll();
    void Create(Cliente obj);
    void Delete(Cliente obj);
    void Update(Cliente obj);
  }
}