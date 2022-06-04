using Microsoft.AspNetCore.Mvc;
using projetoCrud.Models.Domains;
using projetoCrud.Models.Repositories;
using projetoCrud.ViewModels;

namespace projetoCrud.Controllers
{
    public class AlunoController
    {
        [ApiController]
        [Route("[controller]")]
        public class PersonController : ControllerBase
        {
            private readonly IAlunoRepository repository;

            public PersonController(IAlunoRepository alunoRepository)
            {
                this.repository = alunoRepository;
            }

            [HttpGet()]
            public IEnumerable<Aluno>Get()
            {
                return repository.GetAll();
            }

            [HttpGet("{id}")]
                public IActionResult Get([FromRoute] int id)
                {
                var aluno = repository.GetById(id);

                if (aluno == null)
                    return NotFound();
                else
                    return Ok(aluno);
            }

            [HttpPost()]
            public IActionResult Post([FromBody]Aluno aluno)
            {
                repository.Create(aluno);
                return Ok(aluno);
            }
            
            [HttpDelete("{id}")]
            public IActionResult Delete([FromRoute]int id)
            {
                var aluno = repository.GetById(id);
                if (aluno == null) return NotFound();

                repository.Delete(aluno);
                return Ok(aluno);
            }

            [HttpPut("{id}")] //vai editar uma pessoa de acordo com o id informado e com os dados alterados
            public IActionResult Put([FromRoute]int id, [FromBody] AlunoUpdate model)
            {
                var aluno = repository.GetById(id);
                if (aluno == null) return NotFound();

                aluno.Nome = model.Nome;
                aluno.Telefone = model.Telefone;
                aluno.Email = model.Email;

                repository.Update(aluno);
                return Ok(aluno);
            }
        }
    }
}