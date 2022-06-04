using projetoCrud.Models.Domains;

namespace projetoCrud.Models.Repositories
{
    public interface IAlunoRepository
    {
        Aluno GetById(int id);
        List<Aluno> GetAll();
        void Create(Aluno obj);
        void Delete(Aluno obj);
        void Update(Aluno obj);
    }
}