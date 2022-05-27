using CrudPerson.Domains;
using CrudPerson.Models.Domains;
using Microsoft.EntityFrameworkCore;

namespace CrudPerson.Models.Repositories
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> opts)
            :base(opts)
        {}

        public DbSet<Cliente> Clientes { get; set; } 
        public DbSet<Cobranca> Cobrancas { get; set; }
    }
}