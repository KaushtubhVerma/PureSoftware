using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _01_Class
{
    internal class Program
    {
        static void Main(string[] args)
        {
           Employee emp = new Employee();//Object Creation

            //Console.WriteLine($"Name = { emp.name}");
            //Console.WriteLine($"City = {emp.City}");

            //You cana create multiple object with same class but
            //name should be different
            Student student = new Student();//One Object
            Student student2 = new Student();//Second Object

            Console.WriteLine($"Student1={student.Student1}");
            Console.WriteLine($"Student2={student2.Student1}");

            //Assigning Value
            student.Student1 = "Afzal Pasha";

            //After assigning values 
            Console.WriteLine($"Student1={student.Student1}");
            Console.WriteLine($"Student2={student2.Student1}");

            Console.ReadKey();

        }
    }
}
