using System.Collections.Generic;
using CrudPerson.Domains;

namespace CrudPerson.Repositories
{
  public interface IPersonRepository
  {
    Person GetById(int id);
    List<Person> GetAll();
    void Create(Person obj);
    void Delete(Person obj);
    void Update(Person obj);
  }
}