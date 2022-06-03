using System.Collections.Generic;
using CrudPerson.Domains;
using CrudPerson.Models.Repositories;
using CrudPerson.Repositories;
using CrudPerson.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace CrudPerson.Controllers
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
    
    //chamar a lista de pessoas
    [HttpGet()] 
    public IEnumerable<Cliente>Get()
    {
      return repository.GetAll();
    }

    //chamar uma pessoa
    [HttpGet("{id}")] 
    public IActionResult Get([FromRoute] int id)
    {
      var cliente = repository.GetById(id);

      if (cliente == null)return NotFound();
      else return Ok(cliente);
    }
    
    //cadastrar uma pessoa
    [HttpPost()] 
    public IActionResult Post([FromBody]Cliente cliente)
    {
      repository.Create(cliente);
      return Ok(cliente);
    }

    //deletar uma pessoa, de acordo com o id informado
    [HttpDelete("{id}")] 
    public IActionResult Delete([FromRoute]int id)
    {
      var cliente = repository.GetById(id);
      if (cliente == null) return NotFound();

      repository.Delete(cliente);
      return Ok(cliente);
    }

    //editar uma pessoa de acordo com o id informado e com os dados alterados
    [HttpPut("{id}")] 
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