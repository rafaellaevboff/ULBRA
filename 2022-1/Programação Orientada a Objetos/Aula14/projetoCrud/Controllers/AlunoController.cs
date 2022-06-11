using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using projetoCrud.DTOs;
using projetoCrud.Models.Domains;
using projetoCrud.Models.Repositories;
using projetoCrud.ViewModels;

namespace projetoCrud.Controllers
{
    //[ApiController]
    [Route("[controller]")]
    public class AlunoController: ControllerBase
    {
        private readonly IAlunoRepository repository;
        private readonly IUnitOfWork _unitOfWork;

        public AlunoController(IAlunoRepository alunoRepository, IUnitOfWork unitOfWork)
        {
            this.repository = alunoRepository;
            this._unitOfWork = unitOfWork;
        }

        [HttpGet()]
        public async Task<IActionResult> GetAllAsync()
        {
            var alunosList = await repository.GetAllAsync();
            List<AlunoDTO> alunosDTO = new List<AlunoDTO>();
            
            foreach(Aluno aluno in alunosList){
                var alunoDTO = new AlunoDTO()
                {
                    Id = aluno.Id,
                    Matricula = aluno.Matricula,
                    Nome = aluno.Nome,
                    DataNascimento = aluno.DataNascimento,
                    Telefone = aluno.Telefone,
                    Email = aluno.Email,
                };
                alunosDTO.Add(alunoDTO);
            }
            return Ok(alunosDTO);
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetByIdAsync([FromRoute] int id)
        {
            var aluno = await repository.GetByIdAsync(id);

            if(aluno == null)
                return NotFound();
            else
            {
                var alunoDTO = new AlunoDTO()
                {
                    Id = aluno.Id,
                    Matricula = aluno.Matricula,
                    Nome = aluno.Nome,
                    DataNascimento = aluno.DataNascimento,
                    Telefone = aluno.Telefone,
                    Email = aluno.Email,
                };
                return Ok(alunoDTO);
            }
        }

        [HttpPost()]
        public async Task<IActionResult> PostAsync([FromBody]AlunoCreate model)
        {
            var aluno = new Aluno()
            {
                Matricula = model.Matricula,
                Nome = model.Nome,
                DataNascimento = model.DataNascimento,
                Telefone = model.Telefone,
                Email = model.Email
            };

            repository.Create(aluno);
            await _unitOfWork.CommitAsync();

            return Ok(new
            {
                message = "Aluno " + aluno.Nome + " foi adicionado com sucesso!"
            });
        }
        
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAsync([FromRoute] int id)
        {
            var alunoDeleted = repository.Delete(id);
            await _unitOfWork.CommitAsync();

            if(alunoDeleted == false)
                return NotFound();
            else
                return Ok(id);   
        }

        [HttpPatch("{id}")] //vai editar uma pessoa de acordo com o id informado e com os dados alterados
        public async Task<IActionResult> PutAsync([FromRoute] int id, [FromBody] AlunoUpdate model)
        {
            var aluno = await repository.GetByIdAsync(id);
            if (aluno == null) return NotFound();

            aluno.Nome = model.Nome;
            aluno.Telefone = model.Telefone;
            aluno.Email = model.Email;

            repository.Update(aluno);
            await _unitOfWork.CommitAsync();
            return Ok(aluno);
        }
    }
}