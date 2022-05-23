using System.Collections.Generic;
using CrudPerson.Domains;
using CrudPerson.Repositories;
using CrudPerson.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace CrudPerson.WebApi.Controllers
{
  [ApiController]
  [Route("[controller]")]
  public class ClienteController : ControllerBase
  {
    private readonly IClienteRepository repository;

    public ClienteController(IClienteRepository clienteRepository)
    {
      this.repository = clienteRepository;
    }

    [HttpGet()] //vai chamar a lista de pessoas
    public IEnumerable<Cliente>Get()
    {
      return repository.GetAll();
    }

    [HttpGet("{id}")] //vai chamar uma pessoa
    public IActionResult Get([FromRoute] int id)
    {
      var cliente = repository.GetById(id);

      if (cliente == null)
        return NotFound();
      else
        return Ok(cliente);
    }

    [HttpPost()] //vai cadastrar uma pessoa
    public IActionResult Post([FromBody]Cliente cliente)
    {
      repository.Create(cliente);
      return Ok(cliente);
    }

    //deletar e editar:
    
    [HttpDelete("{id}")] //vai deletar uma pessoa, de acordo com o id informado
    public IActionResult Delete([FromRoute]int id)
    {
      var cliente = repository.GetById(id);
      if (cliente == null) return NotFound();

      repository.Delete(cliente);
      return Ok(cliente);
    }

    [HttpPut("{id}")] //vai editar uma pessoa de acordo com o id informado e com os dados alterados
    public IActionResult Put([FromRoute]int id, [FromBody] ClienteUpdate update)
    {
      var cliente = repository.GetById(id);
      if (cliente == null) return NotFound();

      cliente.Nome = update.Nome;
      cliente.Email = update.Email;
      cliente.Cpf = update.Cpf;
      cliente.Fone = update.Fone;
      cliente.Endereco = update.Endereco;

      repository.Update(cliente);
      return Ok(cliente);
    }
  }
}