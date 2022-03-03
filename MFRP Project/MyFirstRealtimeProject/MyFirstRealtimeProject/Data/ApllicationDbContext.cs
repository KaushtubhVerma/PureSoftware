using Microsoft.EntityFrameworkCore;
using MyFirstRealtimeProject.Models;

namespace MyFirstRealtimeProject.Data
{
    public class ApllicationDbContext:DbContext
    {
        public ApllicationDbContext(DbContextOptions<ApllicationDbContext> options):base(options)
        {
        }

        public DbSet<Employee> Employees { get; set; }

    }
}
