using System.Collections.Generic;
using System.Linq;
using CrudPerson.Domains;
using CrudPerson.Models.Repositories;
using Microsoft.EntityFrameworkCore;

namespace CrudPerson.Repositories
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
      return context.Person.ToList();
    }

    public Person GetById(int id)
    {
      return context.Person.SingleOrDefault(x => x.Id == id);
    }

    public void Delete(Person person)
    {
      context.Person.Remove(person);
      context.SaveChanges();
    }

    public void Update(Person person)
    {
      context.Entry(person).State = EntityState.Modified;
      context.SaveChanges();
    }
  }
}