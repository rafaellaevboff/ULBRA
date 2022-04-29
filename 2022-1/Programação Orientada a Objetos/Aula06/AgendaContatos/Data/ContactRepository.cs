using System.Collections.Generic;
using AgendaContatos.Domain;

namespace AgendaContatos.Data
{
    public class AgendaDeContatos
    {
        private List<Contact> listaDeContatos = new List<Contact>();

        public List<Contact> GetAll()
        {
            return listaDeContatos;
        }

        public void Save(Contact contato)
        {
            listaDeContatos.Add(contato);
        }

        public Contact GetById(int idContato)
        {
            return listaDeContatos.Find(p => p.Id == idContato);
        }

        public void Update(Contact contato)
        {
            var contatoEditado = listaDeContatos.Find(p => p.Id == contato.Id);

            contatoEditado.Nome = contato.Nome;
            contatoEditado.Telefone = contato.Telefone;
        }

        public void Delete(Contact contato)
        {
            listaDeContatos.Remove(contato);
        }
    }
}