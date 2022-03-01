using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _08_This_And_Base
{
    internal class Class2: Class1
    {
        public string Name { get; set; } = "Devangini";

        public void Class2Method()
        {
            Console.WriteLine($" Default Name is { Name }"); //Devangini
           
            Console.WriteLine($" This.Name is { this.Name }");//Devangini
            //This means current class member
           
            
            Console.WriteLine($" Base.Name is { base.Name }");// Afzal
            //base means base class member
        }
    }
}
