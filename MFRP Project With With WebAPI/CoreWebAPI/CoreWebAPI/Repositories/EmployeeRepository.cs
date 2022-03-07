using CoreWebAPI.Data;
using CoreWebAPI.Models;
using CoreWebAPI.Repositories.Interfaces;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CoreWebAPI.Repositories
{
    public class EmployeeRepository : IEmployeeRepository
    {
        private readonly ApplicationDbContext _db;

        public EmployeeRepository(ApplicationDbContext context)
        {
            this._db = context;
        }
        public async Task<List<Employee>> GetAll()
        {
            return await _db.Employees.ToListAsync<Employee>();
        }

        public async Task<Employee> GetById(int? id)
        {
            return await _db.Employees.Where(e => e.Id.Equals(id)).FirstOrDefaultAsync<Employee>();
        }

        public async Task<Employee> Add(Employee entity)
        {
            _db.Employees.Add(entity);
            await _db.SaveChangesAsync();
            return entity;
        }

        public async Task<Employee> Update(Employee entity)
        {
            _db.Employees.Update(entity);
            await _db.SaveChangesAsync();
            return entity;
        }

        public async Task Delete(int? id)
        {
            var employee = await this.GetById(id);
            _db.Remove(employee);
            await _db.SaveChangesAsync();
        }

    }
}
