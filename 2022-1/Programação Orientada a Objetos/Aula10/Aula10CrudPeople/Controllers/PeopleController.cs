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
    }
}