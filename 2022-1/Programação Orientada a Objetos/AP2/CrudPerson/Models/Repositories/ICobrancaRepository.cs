using System.Collections.Generic;
using CrudPerson.Models.Domains;

namespace CrudPerson.Models.Repositories
{
  public interface ICobrancaRepository : IBaseRepository<Cobranca>
  {
    //pode ter opções específicas aqui para Cobrança, ou seja, ter na cobrança, mas não ter no Cliente
  }
}