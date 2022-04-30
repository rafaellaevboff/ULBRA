using AgendaContatos.Domain;
using Microsoft.EntityFrameworkCore;

namespace AgendaContatos.Data
{
        public class DataContext : DbContext
    {
        protected override void OnConfiguring(
            DbContextOptionsBuilder optionBuilder)
        {
            //optionBuilder.("");
        }

        public DbSet<Contact> contatos { get; set; }
    }
}