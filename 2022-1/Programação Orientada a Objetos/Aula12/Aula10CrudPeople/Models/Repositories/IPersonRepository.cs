using System.Collections.Generic;
using Aula10CrudPeople.Models.Domains;

namespace Aula10CrudPeople.Models.Repositories
{
    public interface IPersonRepository
    {
         Person GetById(int id);
         List<Person>GetAll();
         void Create(Person person);
         void Update(int id, Person person);
        void Delete(Person person);
    }
}