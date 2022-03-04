using System;
					
public class Program
{
	public static void Main()
	{
        string guess = "0";
		
        while(guess != "5") {
        Console.WriteLine("Guess the number");
		guess = Console.ReadLine();
            } if (guess == "5") {
		Console.WriteLine("You guessed the number!");
			} 
	}
}