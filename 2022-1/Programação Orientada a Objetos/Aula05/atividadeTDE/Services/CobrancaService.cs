using System;
using atividadeTDE.Domain;
using atividadeTDE.Data;

namespace atividadeTDE.Services
{
    public class CobrancaService
    {
        CobrancaRepository listaCobrancas = new CobrancaRepository();

        public void addCobranca(Cobranca cobranca)
        {
            listaCobrancas.Save(cobranca);
        }

        public int listarCobrancas()
        {
            listaCobrancas.GetAll();
        }

    }
}