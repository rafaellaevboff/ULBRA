using System.Collections.Generic;
using System.Linq;
using AgendaContatos.Domain;

namespace AgendaContatos.Data
{
    public class AgendaDeContatos
    {
        private DataContext Context;
        public List<Contact> GetAll()
        {
            return Context.contatos.ToList();
        }

        public void Save(Contact contato)
        {
            Context.Add(contato);
        }

        public Contact GetById(int idContato)
        {
            return Context.contatos.SingleOrDefault(i => i.Id == idContato);
        }

        public void Update(Contact contato)
        {
            Context.Entry(contato).State = EntityState.Modified;
        }

        public void Delete(Contact contato)
        {
            Context.contatos.Remove(contato);
        }
    }
}