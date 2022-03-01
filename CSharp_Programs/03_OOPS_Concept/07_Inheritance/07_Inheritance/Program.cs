using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _07_Inheritance
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Class1 c1 = new Class1();
            Class2 c2 = new Class2();
            Class3 c3=new Class3();
            Class5 c5 = new Class5();

            //All member of class1 can be accesible by ocject c1


            //All member of class2 can be accesible by ocject c2


            //All member of class 3 and class2 can be accesible by ocject c3
            //because it is inherited by Class1 so, C3= c3 + c2

            class

        }
    }
}
