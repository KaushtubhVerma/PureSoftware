using Microsoft.AspNetCore.Mvc;
using MyFirstRealtimeProject.Data;
using MyFirstRealtimeProject.Models;
using System;

namespace MyFirstRealtimeProject.Controllers
{
    public class EmployeeController : Controller
    {
        private readonly ApllicationDbContext _db;
        public EmployeeController(ApllicationDbContext db)
        {
            _db = db;
        }

        public IActionResult Index()
        {
            var employees= _db.Employees;
            return View(employees); //Way pass the values from Controller to View
        }

        [HttpGet]
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(Employee employee)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    _db.Employees.Add(employee);
                    _db.SaveChanges();
                    return RedirectToAction("Index");
                }
                catch(Exception ex)
                {
                    throw ex;
                }
            }
            else
            {
                return View();
            }

        }
    }
}
