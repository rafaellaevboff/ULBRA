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

    [HttpGet("{id}")] //vai chamar uma pessoa
    public IActionResult Get([FromRoute] int id)
    {
      var person = repository.GetById(id);

      if (person == null)
        return NotFound();
      else
        return Ok(person);
    }

    [HttpPost()] //vai cadastrar uma pessoa
    public IActionResult Post([FromBody]Person person)
    {
        repository.Create(person);
        return Ok(person);
    }

    //deletar e editar:
    
    [HttpDelete("{id}")] //vai deletar uma pessoa, de acordo com o id informado
    public IActionResult Delete([FromRoute]int id)
    {
      var person = repository.GetById(id);
      if (person == null) return NotFound();

      repository.Delete(person);
      return Ok(person);
    }

    [HttpPut("{id}")] //vai editar uma pessoa de acordo com o id informado e com os dados alterados
    public IActionResult Put([FromRoute]int id, [FromBody] PersonUpdate model)
    {
      var person = repository.GetById(id);
      if (person == null) return NotFound();

      person.Nome = model.Nome;
      person.Email = model.Email;
      person.Cpf = model.Cpf;
      person.Fone = model.Fone;
      person.Endereco = model.Endereco;

      repository.Update(person);
      return Ok(person);
    }
  }
}