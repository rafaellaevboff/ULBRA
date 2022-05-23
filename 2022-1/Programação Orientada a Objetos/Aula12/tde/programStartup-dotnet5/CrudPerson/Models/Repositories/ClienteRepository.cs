using System.Collections.Generic;
using System.Linq;
using CrudPerson.Domains;
using CrudPerson.Models.Repositories;
using Microsoft.EntityFrameworkCore;

namespace CrudPerson.Repositories
{
  public class ClienteRepository : IClienteRepository
  {
    private DataContext context;
    public ClienteRepository(DataContext context)
    {
      this.context = context;
    }
    public void Create(Cliente cliente)
    {
      context.Add(cliente);
      context.SaveChanges();
    }

    public List<Cliente> GetAll()
    {
      return context.Clientes.ToList();
    }

    public Cliente GetById(int id)
    {
      return context.Clientes.SingleOrDefault(x => x.Id == id);
    }

    public void Delete(Cliente cliente)
    {
      context.Clientes.Remove(cliente);
      context.SaveChanges();
    }

    public void Update(Cliente cliente)
    {
      context.Entry(cliente).State = EntityState.Modified;
      context.SaveChanges();
    }
  }
}