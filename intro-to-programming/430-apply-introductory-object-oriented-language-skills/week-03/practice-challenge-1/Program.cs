using System;

namespace practice_challenge_1
{
    class Program
    {
        static void Main(string[] args)
        {
            string guess = "";
            int counter = 4;

            //Generates random number and assigns it to the variable, answer
            Random rnd = new Random();
            int answer = rnd.Next(1, 101);

            //Prints answer for debugging
            Console.WriteLine("The answer is " + answer);

            //Receives users guess and assigns it the variable, guess
            Console.WriteLine("Guess the number");
            guess = Console.ReadLine();

            //Will ask user to guess answer until correct
            while (counter > 0 && Int32.Parse(guess) != answer) {
                if (Int32.Parse(guess) > answer) {
                    Console.WriteLine("Incorrect, your guess was greater than the answer.");
                    Console.WriteLine("You have " + counter + " attempt(s) left.");
                    guess = Console.ReadLine();
                } else if (Int32.Parse(guess) < answer) {
                    Console.WriteLine("Incorrect, your guess was less than the answer.");
                    Console.WriteLine("You have " + counter + " attempt(s) left.");
                    guess = Console.ReadLine();
                } if (Int32.Parse(guess) == answer) {
                    Console.WriteLine("Correct!");
                } else {
                    Console.WriteLine("You have run out of attempts."); 
                } 
                counter--;
            }  
        }
    }
}