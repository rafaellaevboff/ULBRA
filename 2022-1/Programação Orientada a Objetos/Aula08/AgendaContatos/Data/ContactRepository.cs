using System.Collections.Generic;
using System.Linq;
using AgendaContatos.Domain;
using Microsoft.EntityFrameworkCore;

namespace AgendaContatos.Data
{
    public class ContactRepository
    {
        private DataContext Context;

        public ContactRepository(DataContext context)
        {
            this.Context = context;
        }

        public List<Contact> GetAll()
        {
            return Context.contatos.ToList();
        }

        public Contact GetById(int id)
        {

            // foreach (var item in listaDeContatos)
            // {
            //     if(item.Id == id)
            //     {
            //         return item;
            //     }
                    
            // }

            // for (int i = 0; i < listaDeContatos.Count; i++)
            // {
            //     if(listaDeContatos[i].Id == id)
            //     {
            //         return listaDeContatos[0];
            //     }
            // }

            return Context.contatos.SingleOrDefault(i => i.Id == id);

            
        }

        public void Save(Contact contact)
        {
            Context.Add(contact);
            Context.SaveChanges();
        }

        public void Update(Contact contact)
        {
            Context.Entry(contact).State = EntityState.Modified;
        }

        public void Delete(Contact contact)
        {
            Context.contatos.Remove(contact);
        }
    }
}