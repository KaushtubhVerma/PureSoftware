using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _05_Class_Members
{
    internal class Employee
    {
        //Members of Classes

        //Naming Convention
        //Method Names Title casing
        //Private filds _CamelCasing
        //Pulic Propeties Title casing
        //Parameters camelCasing

        //Fields
        private int _id; // 
        private string _companyName;

        //Properties
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string City { get; set; }

        //Constructors
        public Employee()
        {
            //Default Constructor
        }

        public Employee(int id)
        {
            //Parameterised Constructor
        }

        //Methods
        public void Display()
        {
            //No return
        }

        public string GetEmployeeNameById(int id)
        {
            //return only string (dataType)
            return "Afzal";
        }

        //Destructor
        ~Employee()
        {
            //Only One Destructor allowed in class
            //Used for releasing objects (Garbage Collection)
            //No need to explicitly called the Destructor
            //Destructor will automaticaly balled by
            //.NET framework at run time when Memory isseus occured
            GC.Collect();

        }

    }
}
