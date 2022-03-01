using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _01_CSharpBasics
{
    /// <summary>
    /// 
    /// </summary>
    internal class Program
    {
        /// <summary>
        /// This Methios is Main methid
        /// </summary>
        /// <param name="args"> fdgdfgsfdg v b fgbfgb</param>
        static void Main(string[] args)
        {
            
            //Console.WriteLine("Welcome to Afzal's Training");           
            //Console.ReadKey();//Wait till any key pressed

            int number = 200;
            string Name = "Afzal Pasha";

            //var number1 = 500;
            //var Name1 = "Alia Bhatt..";

            //Console.WriteLine("Hello, " + Name1);
            //Console.WriteLine("The number is " + number1);
            //Console.WriteLine("number1 Type" + number1.GetType());
            //Console.WriteLine("name1 Type" + Name1.GetType());

            //Advance Way C#
            //Console.WriteLine($" Hello {Name1}  and the number is {number1}");

            //CTRL + K  C --> Comment
            //CTRL  + K U --> Un cooment

            //if (number < 500)
            //{
            //    Console.WriteLine("number is less than 500");
            //    //Console.WriteLine("");
            //}
            //else
            //{
            //    Console.WriteLine("Number is greater 500");
            //    //Console.WriteLine("");
            //}

            //if (number <500)
            //    Console.WriteLine("number is less than 500");
            //Console.WriteLine("Number is greater 500");

            //if(number == 100)
            //{
            //    Console.WriteLine("centurey");
            //}
            //else if(number == 200)
            //{

            //}
            //else
            //{

            //}


            //switch (number)
            //{
            //    case 100:
            //        Console.WriteLine("Century");
            //        break;
            //    case 200:
            //        Console.WriteLine("Double Cenutry");
            //        break;
            //    default:
            //        Console.WriteLine("Not a valid");
            //        break;
            //}

            //Iterations
            //for (int i = 0; i < 5; i++)
            //{
            //    //Any Logic
            //    Console.WriteLine("Hello");
            //}

            //var names=new List<string>() { "Afzal", "Pasha", "Bipen","Deepti"};

            //foreach (string name in names)
            //{
            //    Console.WriteLine($"Hello, {name}");
            //}

            //Arrays
            //Variable and Arrays
            int x = 100; // Variable

            //Arrays collecton of values
            //Starting Index 0
            //maimum is Size - 1 == 
            int[] numbers = new int[3] { 10, 20, 30 };// Int Array
            string[] names = new string[5] { "Afzal", "Pasha", "Singh", "Bipen", "Devangini" };


            int[] numbers1 = new int[] {10,20,30,40,50,60,70,80,90,100 };// Int Array
            string[] names2 = new string[] { "Afzal", "Pasha", "Singh","Bipen","Devangini","Simran","Japan","Keshav","karan"};

            //Console.WriteLine($" number is {numbers[2]}"); //10
            //Console.WriteLine($"Size of Array is { numbers.Length }");
            //Console.WriteLine($"Size of names2 Array is { names2.Length }");


            //for (int i = 0; i < names2.Length - 1; i++)
            //{
            //    Console.WriteLine($"name is {names2[i]}");
            //}

            foreach (var name in names2)
            {
                Console.WriteLine($"name is  {name}");
            }


            Console.ReadKey();
            
        }
    }
}
