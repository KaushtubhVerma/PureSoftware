using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _11_Static_Class
{
    internal static class Utility
    {
        //Members should be static only
        //Non static members doennot support
        
        public static string CompanyName { get; set; } = "Pure Software";


        public static void DisplayInformation()
        {
            Console.WriteLine();
            Console.WriteLine("This value from Static Method");
        }
    }
}
