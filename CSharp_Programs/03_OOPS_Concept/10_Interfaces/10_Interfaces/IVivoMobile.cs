using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _10_Interfaces
{
    internal interface IVivoMobile
    {
        void InternetSupport();
        void CallingSupport();
      
        //Non Absract Not support

    }

    internal interface SecondInterface
    {
        void Method2fromSecondInterface();
    }


    public class Version1VivoMobile : IVivoMobile, SecondInterface
    {
        public void CallingSupport()
        {
            throw new NotImplementedException();
        }

        public void InternetSupport()
        {
            throw new NotImplementedException();
        }

        public void Method2fromSecondInterface()
        {
            throw new NotImplementedException();
        }
    }


}
