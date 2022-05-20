using System.Collections.Generic;
using Aula10CrudPeople.Models.Domains;
using Aula10CrudPeople.Models.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace Aula10CrudPeople.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PeopleController : ControllerBase
    {
        private IPersonRepository repository;
        public PeopleController(IPersonRepository repository){
            this.repository = repository;
        }

        [HttpGet()] //vai chamar a lista de pessoas
        public IEnumerable<Person>Get()
        {
            return repository.GetAll();
        }

        [HttpPost()] //vai cadastrar uma pessoa
        public IActionResult Post([FromBody]Person person)
        {
            repository.Create(person);
            return Ok(person);
        }

        //editar
        [HttpPut()]
        public IActionResult Put(int id, [FromBody] Person personUpdate) //Desserealizar é mudar do tipo Json pra tipo do código(primitivo ou outro)
        {
            repository.Update(id, personUpdate);
            return Ok(personUpdate);
        }

        //excluir
        [HttpDelete()]
        public IActionResult Delete(int id)
        {
            Person person = repository.GetById(id);
            if (person == null) return NotFound();

            repository.Delete(person);
            return Ok(person);
        }
    }
}