using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _09_Abstraction
{
    internal class Program
    {
        static void Main(string[] args)
        {

            //VivoBaseMobileClass vbc=new VivoBaseMobileClass();//Not Support

            Version1Mobile v1m = new Version1Mobile();
            Version2Mobile v2m = new Version2Mobile();

            v1m.IternetSupport();
            v2m.IternetSupport();

            Console.ReadKey();
        }
    }
}
