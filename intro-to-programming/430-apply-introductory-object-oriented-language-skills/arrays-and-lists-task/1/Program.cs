using System;
using System.Collections;

namespace _1
{
    class Program
    {
        static void Main(string[] args)
        {
            // Using an Array Create a program that reads in 5 names from the console.  It then prints out "Hello <name>" for all the names entered
            string[] names = new string[5];
            Console.WriteLine("Enter 5 names.");
            Console.WriteLine();

            for(int i = 0; i < 5; i++) {
                Console.Write("Name - {0} : ",i);
                names[i] = (Console.ReadLine());
            } 
            Console.WriteLine("-----------------------");

            foreach (string i in names) {
                Console.WriteLine("Hello " + i);
            }
        }
    }
}
