using CrudPerson.Models.Domains;
using CrudPerson.Models.Repositories;
using CrudPerson.ViewModels;
using Microsoft.AspNetCore.Mvc;

namespace CrudPerson.Controllers
{
  [ApiController]
  [Route("[controller]")]
  public class CobrancaController : ControllerBase
  {
    private readonly ICobrancaRepository repository;

    public CobrancaController(ICobrancaRepository cobrancaRepository)
    {
      this.repository = cobrancaRepository;
    }
    
    //chamar a lista de pessoas
    [HttpGet()] 
    public IEnumerable<Cobranca>Get()
    {
      return repository.GetAll();
    }

    //chamar uma pessoa
    [HttpGet("{id}")] 
    public IActionResult Get([FromRoute] int id)
    {
      var cobranca = repository.GetById(id);

      if (cobranca == null)return NotFound();
      else return Ok(cobranca);
    }
    
    //cadastrar uma pessoa
    [HttpPost()] 
    public IActionResult Post([FromBody]Cobranca cobranca)
    {
      repository.Create(cobranca);
      return Ok(cobranca);
    }

    //deletar uma pessoa, de acordo com o id informado
    [HttpDelete("{id}")] 
    public IActionResult Delete([FromRoute]int id)
    {
      var cobranca = repository.GetById(id);
      if (cobranca == null) return NotFound();

      repository.Delete(cobranca);
      return Ok(cobranca);
    }

    //editar uma pessoa de acordo com o id informado e com os dados alterados
    [HttpPut("{id}")] 
    public IActionResult Put([FromRoute]int id, [FromBody] CobrancaVencimentoUpdate update)
    {
      var cobranca = repository.GetById(id);
      if (cobranca == null) return NotFound();

      cobranca.DataVencimento = update.DataVencimento;
      //cobranca.DataPagamento = DateTime.Now;

      repository.Update(cobranca);
      return Ok(cobranca);
    }

    [HttpPatch("{id}")] 
    public IActionResult Patch([FromRoute]int id, [FromBody] CobrancaPagamentoUpdate update)
    {
      var cobranca = repository.GetById(id);
      if (cobranca == null) return NotFound();

      cobranca.DataPagamento = DateTime.Now;

      repository.Update(cobranca);
      return Ok(cobranca);
    }
  }
}