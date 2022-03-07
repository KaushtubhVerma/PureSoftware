using CoreWebAPI.Models;
using CoreWebAPI.Repositories.Interfaces;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CoreWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeeController : ControllerBase
    {
        private readonly IEmployeeRepository _employeeRepository;

        public EmployeeController(IEmployeeRepository employeeRepository)
        {
            this._employeeRepository = employeeRepository;
        }

        [HttpGet]
        [Route("GetAllEmployees")]
        public async Task<ActionResult<List<Employee>>> GetAll()
        {
            try
            {
                var employees = await _employeeRepository.GetAll();
                if (employees.Any())
                    return Ok(employees);
                else
                    return NoContent();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        [HttpPost]
        [Route("AddEmployee")]
        public async Task<ActionResult<Employee>> Add(Employee employee)
        {
            try
            {
                await _employeeRepository.Add(employee);
                return Ok(employee);

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        [HttpPut]
        [Route("UpdateEmployee")]
        public async Task<ActionResult<Employee>> Update(Employee employee)
        {
            try
            {
                await _employeeRepository.Update(employee);
                return Ok(employee);

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        [HttpDelete]
        [Route("DeleteEmployee")]
        public async Task<ActionResult> Delete(int? Id)
        {
            try
            {
                await _employeeRepository.Delete(Id);
                return Ok();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
