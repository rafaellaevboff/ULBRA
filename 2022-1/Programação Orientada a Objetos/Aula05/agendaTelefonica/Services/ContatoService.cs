using System;
using agendaTelefonica.Data;
using agendaTelefonica.Domain;

namespace agendaTelefonica.Services
{
    public class ContatoService
    {
        ContatoRepository minhaAgenda = new ContatoRepository();

        public int RetornaProximoId()
        {
            return minhaAgenda.GetAll().Count + 1;
        }

        public string CriarContato(string nome, string telefone)
        {
            minhaAgenda.Save(new Contato(RetornaProximoId(), nome, telefone));

            return "Contato add com sucesso!";
        }

        public string ListarContatos()
        {
            var builder = new System.Text.StringBuilder();
            var listaContatos = minhaAgenda.GetAll();
            var qtdContatos = listaContatos.Count;

            if(qtdContatos == 0)
            {
                builder.AppendLine("Lista vazia!");
            }else
            {
                foreach(Contato contato in listaContatos)
                {
                    builder.AppendLine($"Id: {contato.Id}. Nome: {contato.Nome}");
                }
            }

            return builder.ToString();
        }

    }
}