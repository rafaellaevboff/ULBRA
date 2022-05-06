using Aula10CrudPeople.Models.Domains;
using Microsoft.EntityFrameworkCore;

namespace Aula10CrudPeople.Models.Repositories
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> opts)
            :base(opts)
        {}

        public DbSet<Person> People { get; set; }
    }
}