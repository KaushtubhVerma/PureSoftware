using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _02_EvenNumber
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //int number = 5;

            //if (number % 2 == 0)
            //{
            //    Console.WriteLine($" Number is Even");
            //}
            //else
            //{
            //    Console.WriteLine("Number is Odd");
            //}

            int[] numbers = new int[] {2,3,4,5,6,7,8,9,10 };

            Console.WriteLine("Even Numbers are listed below");

            //for (int i = 0; i <= numbers.Length -1; i++)
            //{
            //    if (numbers[i] % 2 == 0)
            //        Console.WriteLine(numbers[i]);
            //}

            foreach (var number in numbers)
            {
                if(number % 2 == 0)
                    Console.WriteLine(number);
            }



            Console.ReadKey();
        }
    }
}
