using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _03_Methods
{
    internal class Employee
    {
        public Employee()
        {

        }

        //Methods
        //Should have Return type void or any datatype
        public void Display()
        {
            Console.WriteLine("Hello Afzal");
        }

        public string GetEmployeeId()
        {
            return "EMP1001";
        }

        public string GetEmployeeId(string name)
        {
            return "EMP3000";
        }

        public string GetEmployeeId(string name, int id)
        {
            return "EMP4000";
        }


        public string GetData(string name)
        {
            return "EMP5000";
        }
    }
}
