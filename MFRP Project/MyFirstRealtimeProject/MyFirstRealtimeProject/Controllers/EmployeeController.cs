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

        [HttpGet] //Attibutes
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

        [HttpGet]
        public IActionResult Edit(int id)
        {
            var employee = _db.Employees.Find(id);
            return View(employee);
        }

        [HttpPost]
        public IActionResult Edit(Employee employee)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    _db.Employees.Update(employee);
                    _db.SaveChanges();
                    return RedirectToAction("Index");
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
            else{
                return View(employee);
            }
        }

        [HttpGet]
        public IActionResult Delete(int id)
        {
            ViewData["company"] = "Pure Software"; //Way1
            
            ViewBag.City = "Noida"; //Way2

            var emploee = _db.Employees.Find(id);
            return View(emploee); //Way3
        }


        public IActionResult DeleteEmployee(int id)
        {
            var employee = _db.Employees.Find(id);
            try {

                _db.Employees.Remove(employee);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
