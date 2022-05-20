using System.Collections.Generic;
using System.Linq;
using Aula10CrudPeople.Models.Domains;
using Microsoft.EntityFrameworkCore;

namespace Aula10CrudPeople.Models.Repositories
{
    public class PersonRepository : IPersonRepository
    {
        private DataContext context;
        public PersonRepository(DataContext context)
        {
            this.context = context;
        }

        public void Create(Person person)
        {
            context.Add(person);
            context.SaveChanges();
        }

        public List<Person> GetAll()
        {
            return context.People.ToList();
        }

        public Person GetById(int id)
        {
            return context.People.SingleOrDefault(i => i.Id == id);
        }

        public void Update(int id, Person personUpdate)
        {
            Person person = GetById(id);
            if (person == null) return;

            person.Nome = personUpdate.Nome;
            person.Fone = personUpdate.Fone;
            person.Email = personUpdate.Email;
            person.Endereco = personUpdate.Endereco;
            
            context.Entry(person).State = EntityState.Modified;
            context.SaveChanges();
        }

        public void Delete(Person person)
        {
            context.Remove(person);
            context.SaveChanges();
        }

    }
}