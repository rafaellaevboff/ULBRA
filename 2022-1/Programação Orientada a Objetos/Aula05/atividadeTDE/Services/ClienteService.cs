using System;
using atividadeTDE.Domain;
using atividadeTDE.Data;

namespace atividadeTDE.Services
{
    public class ClienteService
    {
        ClienteRepository listaClientes = new ClienteRepository();

        public void addCliente(Cliente cliente)
        {
            listaClientes.Save(cliente);
        }

        public int listarClientes()
        {
            listaClientes.GetAll();
        }

        public string mudarDados()
        {
            listaClientes.Update();
        }

    }
}