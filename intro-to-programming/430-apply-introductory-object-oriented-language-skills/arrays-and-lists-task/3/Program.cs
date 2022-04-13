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
            int dup = 0;

            List<int> nums = new List<int>();

            Console.WriteLine("Enter 5 numbers:");
            Console.WriteLine();

            for(int i = 1; i < 6; i++) {
                Console.Write("Enter number {0}: ",i);
                nums.Add(int.Parse(Console.ReadLine()));
            } 
            
            Console.WriteLine("------------------------------------");

            Console.Write("Enter another number: ");
            int numSix = int.Parse(Console.ReadLine());

            foreach(int check in nums) 
            {
                if (check == numSix) { 
                    Console.WriteLine("The number has already been entered."); 
                    dup = 1;
                    break;
                } 
            } if(dup == 0)
            {
                Console.WriteLine("The number is not a duplicate.");
            }
        }
    }
}
