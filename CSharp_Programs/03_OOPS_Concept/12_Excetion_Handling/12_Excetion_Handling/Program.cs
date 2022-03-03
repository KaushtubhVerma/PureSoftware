using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _12_Excetion_Handling
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //Array
            string[] names = new string[] {"Afzal","Pasha","Bangalore" };


            Console.WriteLine("Please enter index number");   
            int index = Convert.ToInt32( Console.ReadLine()); //read the input from the screen in string Format

            try
            {
                //logic
                Console.WriteLine(names[index]);
            }
            catch (Exception ex)
            {
                //handle Exception
                Console.WriteLine($"Exception occured and the excpetion is {ex}");
            }
            finally
            {
                //Optional
                //Always execute if try success or failure
                ///Genrally we write closing DB connecrtions and orther stuf code
                Console.WriteLine("Code inside Finally Block");
            }

            Console.ReadKey();
        }
    }
}
