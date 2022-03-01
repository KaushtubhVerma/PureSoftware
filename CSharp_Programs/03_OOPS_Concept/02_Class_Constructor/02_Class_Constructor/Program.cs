using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _02_Class_Constructor
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Employee employee1 = new Employee(); //it willl Default Constructor
            //Employee employee2 = new Employee();

            //It will Call Parameter constructor
            Employee employee3 =new Employee("Afzal");

            //It will Call Parameter constructor
            Employee employee4 = new Employee(30);

            //It will Call Parameter constructor, with same order of paramerts
            Employee employee5 = new Employee("Afzal",40); 

            Console.ReadKey();
        }
    }
}
