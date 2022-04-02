using System;
using System.Linq;

namespace _2
{
    class Program
    {
        static void Main(string[] args)
        {
            // Using an array write a program that starts with the values 34, 5, 67, 1, 99, 34, 44, 78, 34, 0, 
            // then adds all numbers together and outputs the total.

            int[] numbers = {4, 5, 67, 1, 99, 34, 44, 78, 34, 0};
            int sum = numbers.Sum();
            Console.WriteLine(sum);

        }
    }
}
