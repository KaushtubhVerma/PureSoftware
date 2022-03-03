using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _09_Abstraction
{
    internal abstract class VivoBaseMobileClass
    {
        public VivoBaseMobileClass()
        {

        }

        //Abstract Methiods Declartion
        //Abstract methids doent have body,
        ////it has only declaration with or without parameters
        public abstract void IternetSupport();
        public abstract void CallingSupport();

        public abstract void CameraPixeceQuality();

        //Non Absract 
        public void Method1()
        {
            Console.WriteLine("Method from Base Class");
        }

    }


    class Version1Mobile: VivoBaseMobileClass
    {
        //Only Abstract methods are must and  need to overrid in child class
        public override void IternetSupport()
        {
            Console.WriteLine("It Supports 2G Connectivity");
        }

        public override void CallingSupport()
        {
            Console.WriteLine("It Supports Audio only");
        }

        public override void CameraPixeceQuality()
        {
            Console.WriteLine("It Suppoorts Low Quality");
        }
    }

    class Version2Mobile: VivoBaseMobileClass
    {
        public override void IternetSupport()
        {
            Console.WriteLine("It Supports 3G Connectivity");
        }

        public override void CallingSupport()
        {
            Console.WriteLine("It Supports Audio and Video only");
        }

        public override void CameraPixeceQuality()
        {
            Console.WriteLine("It Supports High Quality");
        }
    }


}
