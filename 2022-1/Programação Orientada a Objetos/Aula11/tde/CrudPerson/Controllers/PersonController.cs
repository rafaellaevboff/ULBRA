using System.Collections.Generic;
using CrudPerson.Domains;
using CrudPerson.Repositories;
using CrudPerson.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace CrudPerson.WebApi.Controllers
{
  [ApiController]
  [Route("[controller]")]
  public class PersonController : ControllerBase
  {
    private readonly IPersonRepository repository;

    public PersonController(IPersonRepository personRepository)
    {
      this.repository = personRepository;
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

    //deletar e editar:
    
    [HttpDelete]
    [Route("person/{id}")]
    public IActionResult Delete(int id)
    {
      var person = repository.GetById(id);
      if (person == null) return NotFound();

      repository.Delete(person);
      return Ok(person);
    }

    [HttpPut]
    [Route("person/{id}")]
    public IActionResult Put(int id, [FromBody] PersonUpdate model)
    {
      var person = repository.GetById(id);
      if (person == null) return NotFound();

      person.Email = model.Email;
      person.Fone = model.Fone;

      repository.Update(person);
      return Ok(person);
    }
  }
}