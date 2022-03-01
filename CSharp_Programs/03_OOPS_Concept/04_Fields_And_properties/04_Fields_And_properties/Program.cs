using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _04_Fields_And_properties
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Employee employee = new Employee();
            
            employee.Name = "Manas";      
            //employee.id = 1001; //Id is not accesible

            employee.DisplayMethod();

            Console.ReadKey();
        }
    }
}
