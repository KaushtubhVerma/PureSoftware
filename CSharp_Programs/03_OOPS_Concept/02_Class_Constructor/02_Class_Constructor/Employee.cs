using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _02_Class_Constructor
{
    internal class Employee
    {

        //Wheen ever we created a object of class,  the constructor will call autiomatically
        //Defaultt Constructor ---> parameter less Constructor
        public Employee()
        {
            Console.WriteLine("This code from constructor");
        }

        //Parameterised Constructor
        public Employee(string name)
        {
            Console.WriteLine($"Hi { name } from Constructor ");
        }

        //Parameterised Constructor
        public Employee(int age)
        {
            Console.WriteLine($"Your Age is { age } from Constructor ");
        }
        public Employee(string name, int age)
        {
            Console.WriteLine($"Hi {name}, Your Age is { age } from Constructor ");
        }


    }
}
