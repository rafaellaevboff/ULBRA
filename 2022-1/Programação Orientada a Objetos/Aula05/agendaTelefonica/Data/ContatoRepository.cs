using System.Collections.Generic;
using agendaTelefonica.Domain;

namespace agendaTelefonica.Data
{
    public class ContatoRepository
    {
        private List<Contato> listaDeContatos = new List<Contato>();

    //retornar a lista de contatos
        public List<Contato> GetAll()
        {
            return listaDeContatos;
        }

        public void Save(Contato contato)
        {
            listaDeContatos.Add(contato);
        }

        public Contato GetById(int idContato)
        {

            return listaDeContatos.Find(p => p.Id == idContato); //expressão lambda

            /*
            -- mesma coisa que a linha de cima:

            foreach (var item in listaDeContatos)
            {
                if(item.Id == idContato)
                {
                    return item;
                }
                    
            }

            for (int i = 0; i < listaDeContatos.Count; i++)
            {
                if(listaDeContatos[i].Id == idContato)
                {
                    return listaDeContatos[i];
                }
            }
            */
            
        }

        public void Update(Contato contato)
        {
            var contatoEditado = GetById(contato.Id);

            contatoEditado.Nome = contato.Nome;
            contatoEditado.Telefone = contato.Telefone;
        }

        public void Delete(Contato contato)
        {
            listaDeContatos.Remove(contato);
        }
    }
}