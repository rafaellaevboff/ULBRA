using System;
using System.Collections.Generic;
using atividadeTDE.Domain;

namespace atividadeTDE.Data
{
    public class ClienteRepository
    {
        private List<Cliente> listaDeClientes = new List<Cliente>();

        //retornar a lista de contatos
        public List<Cliente> GetAll()
        {
            return listaDeClientes;
        } 

        //adicionar mais um cliente
        public void Save(Cliente cliente)
        {
            listaDeClientes.Add(cliente);
        }

        //achar um cliente por seu id
        public Cliente GetById(int idCliente)
        {
            return listaDeClientes.Find(p => p.Id == idCliente); //usando expressão lambda
        }

        //mudar em clientes
        public void Update(Cliente cliente)
        {
            var clienteEditado = GetById(cliente.Id);

            clienteEditado.Nome = cliente.Nome;
            clienteEditado.Telefone = cliente.Telefone;
        }

        //deletar um cliente
        public void Delete(Cliente cliente)
        {
            listaDeClientes.Remove(cliente);
        }
    }
}