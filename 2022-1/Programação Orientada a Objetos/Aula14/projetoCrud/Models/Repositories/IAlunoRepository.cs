using projetoCrud.Models.Domains;
using System.Threading.Tasks;
using System.Collections.Generic;

namespace projetoCrud.Models.Repositories
{
    public interface IAlunoRepository
    {
        Task<Aluno> GetByIdAsync(int id);
        Task<List<Aluno>> GetAllAsync();
        void Create(Aluno obj);
        bool Delete(int objId);
        void Update(Aluno obj);
    }
}