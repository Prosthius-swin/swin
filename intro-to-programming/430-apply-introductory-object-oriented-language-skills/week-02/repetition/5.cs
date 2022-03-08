using System;
					
public class Program
{
	public static void Main()
	{
        //A program that asks the user "What happens when you throw a yellow rock in the red sea?". 
        //The user must guess the correct answer, "It gets wet". If the correct answer isn't entered the program asks again.

        string question = "What happens when you throw a yellow rock in the red sea?";
        string answer = "it gets wet";
        string answerPunctuation = "it gets wet.";
        string answerInput = "";

        Console.WriteLine(question);
        answerInput = Console.ReadLine();

        while(!String.Equals(answerInput.ToLower(), answer) && (!String.Equals(answerInput.ToLower(), answerPunctuation))) {
            Console.WriteLine("Incorrect, try again.");
            Console.WriteLine(question);
            answerInput = Console.ReadLine();
        } Console.WriteLine("Correct!");
	}
}