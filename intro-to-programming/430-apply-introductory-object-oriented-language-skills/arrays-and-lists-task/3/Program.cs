using System;
using System.Collections.Generic;

namespace _3
{
    class Program
    {
        static void Main(string[] args)
        {
            // Using a List, write a program that reads in 5 numbers. 
            // It then asks the user for another number and outputs whether the number has already been entered.

            List<int> nums = new List<num>();
            Console.WriteLine("Enter 5 numbers:");
            Console.WriteLine();

            for(int i = 1; i < 6; i++) {
                input = Console.ReadLine();
                nums.Add(input);
            } 
            Console.WriteLine("-----------------------");

            /*foreach (string i in nums) {
                Console.WriteLine("Hello " + i);
            }*/
        }
    }
}
