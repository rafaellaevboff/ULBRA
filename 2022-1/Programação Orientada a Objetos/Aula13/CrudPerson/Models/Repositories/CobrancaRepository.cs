using System.Collections.Generic;
using System.Linq;
using CrudPerson.Models.Domains;
using CrudPerson.Models.Repositories;
using Microsoft.EntityFrameworkCore;

namespace CrudPerson.Models.Repositories
{
    public class CobrancaRepository : ICobrancaRepository
    {
        private DataContext context;
        public CobrancaRepository(DataContext context)
        {
            this.context = context;
        }
        public void Create(Cobranca cobranca)
        {
            if(cobranca.Cliente.Id>0)
            {
                cobranca.Cliente = context.Clientes.SingleOrDefault(x=>x.Id == cobranca.Cliente.Id);
            }
            context.Add(cobranca);
            context.SaveChanges();
        }

        public List<Cobranca> GetAll()
        {
            return context.Cobrancas.Include(c=>c.Cliente).ToList();
        }

        public Cobranca GetById(int id)
        {
            return context.Cobrancas.Include(c=>c.Cliente).SingleOrDefault(x => x.Id == id);
            // from clientes cl inner join cobrancas c on cl.cliente_id = c.id
        }

        public void Delete(Cobranca cobranca)
        {
            context.Cobrancas.Remove(cobranca);
            context.SaveChanges();
        }

        public void Update(Cobranca cobranca)
        {
            context.Entry(cobranca).State = EntityState.Modified;
            context.SaveChanges();
        }
    }
}