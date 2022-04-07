using System;
using System.Collections.Generic;
using atividadeTDE.Domain;

namespace atividadeTDE.Data
{
    public class CobrancaRepository
    {
        private List<Cobranca> listaDeCobranca = new List<Cobranca>();

        //retornar a lista de contatos
        public List<Cobranca> GetAll()
        {
            return listaDeCobranca;
        }

        //adicionar mais uma cobrança
        public void Save(Cobranca cobranca)
        {
            listaDeCobranca.Add(cobranca); 
        }

        //achar uma cobrança por seu id
        public Cobranca GetById(int codCobranca)
        {
            return listaDeCobranca.Find(p => p.Cod == codCobranca); //usando expressão lambda
        }

        //mudar data de vencimento e valor das cobranças
        public void Update(Cobranca cobranca)
        {
            var cobrancaEditada = GetById(cobranca.Cod);

            cobrancaEditada.Vencimento = cobranca.DataVencimento;
            cobrancaEditada.Valor = cobranca.Valor;
        }

        //deletar uma cobrança
        public void Delete(Cobranca cobranca)
        {
            listaDeCobranca.Remove(cobranca);
        }
    }
}