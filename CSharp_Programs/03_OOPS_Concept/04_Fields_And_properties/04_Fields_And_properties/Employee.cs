using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _04_Fields_And_properties
{
    internal class Employee
    {
        private int _id; // acessible for only members of class
        
        // acessible for  members of class and class object too
        public string Name; 

        public Employee()
        {
            _id = 100;
            Name = "Afzal pasha";
        }


        public void DisplayMethod()
        {
            Console.WriteLine("Data inside method");
            Console.WriteLine($"The value of Id is {_id}");
            Console.WriteLine($"The value of Name is {Name}");
        }


    }
}
