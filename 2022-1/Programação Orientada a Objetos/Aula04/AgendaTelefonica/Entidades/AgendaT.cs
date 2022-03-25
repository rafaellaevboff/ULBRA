using System;
using System.Collections.Generic;

namespace AgendaTelefonica.Entidades
{
    public class AgendaT
    {
        public AgendaT(string nomeAgenda, int ano)
        {
            NomeAgenda = nomeAgenda;
            Ano = ano;
        }

        public string NomeAgenda { get; set; }
        public int Ano { get; private set; }

        public List<Pessoa> Pessoas { get; set; } = new List<Pessoa>();

    }
}