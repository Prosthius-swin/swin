using System;
using System.Collections.Generic;

namespace _5
{
    class Program
    {
        static void Main(string[] args)
        {
            //Using a List, write a program stores words read from console, until the word "stop" is entered.  
            //It then outputs the words entered in reverse order.

            List<string> words = new List<string>();

            Console.Write("Enter a word: ");
            words.Add(Console.ReadLine());

            while (!words.Contains("stop"))
            {
                Console.Write("Enter another word: ");
                words.Add(Console.ReadLine());
            }

            Console.WriteLine();
            words.RemoveAt(words.Count - 1);
            words.Reverse();

            int counter = 0;
            foreach(string i in words)
            {
                counter++;
                Console.Write($"{counter}: {i}\n");
            }
            Console.WriteLine();
        }
    }
}
