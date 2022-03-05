using System;
					
public class Program
{
	public static void Main()
	{
        //A program that asks the user to guess a number. The magic number is 5. 
        //If they get it wrong, the program asks for the number again.
        string guess = "0";
		
        while(guess != "5") {
        Console.WriteLine("Guess the number");
		guess = Console.ReadLine();
            } if (guess == "5") {
		Console.WriteLine("You guessed the number!");
			} 
	}
}