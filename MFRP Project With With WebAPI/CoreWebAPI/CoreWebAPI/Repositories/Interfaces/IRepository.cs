using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

namespace CoreWebAPI.Repositories.Interfaces
{
    //This is Base Generic Repository
    //It has only Blueprint/Structure
    //Any Class
    public interface IRepository<T> where T : class
    {
        Task<List<T>> GetAll();
        Task<T> GetById(int? id);
        Task<T> Add(T entity);
        Task<T> Update(T entity);
        Task Delete(int? id);
    }
}
