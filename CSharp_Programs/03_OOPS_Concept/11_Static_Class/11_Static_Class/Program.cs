using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _11_Static_Class
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //You cannot create object of static classes
            //Utility u=new Utility();

            //You cant create object of static class
            //When Program run all static classes will load automatcall by runtime
            //You can directly access its member

            Console.WriteLine($"Hello welcome to  {Utility.}");
            Utility.DisplayInformation();

            Console.ReadKey();
        }
    }
}
