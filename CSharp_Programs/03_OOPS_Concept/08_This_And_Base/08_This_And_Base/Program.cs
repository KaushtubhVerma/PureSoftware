﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _08_This_And_Base
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Class1 c1=new Class1();
            Class2 c2 = new Class2();

            c1.Class1Method(); // Expected Afzal// first Line 
            c2.Class2Method(); //Devangini

            Console.ReadKey();
        }
    }
}
