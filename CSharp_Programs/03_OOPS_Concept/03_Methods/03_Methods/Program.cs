using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _03_Methods
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Employee employee = new Employee();

            //calling methods
            employee.Display();

            var id = employee.GetEmployeeId();
            Console.WriteLine($"The Employee Id is {id}");


            Console.ReadKey();

        }
    }
}
