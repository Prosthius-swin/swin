using System;
					
public class Program
{
	public static void Main()
	{
        //A program that asks the user to enter a number. The program then counts from 0 to that number.
        string number = "0";
        int counter = 0;
		int numberInt = 0;

        Console.WriteLine("Enter a number");
        number = Console.ReadLine();
		
		while(!int.TryParse(number, out int value)) {
            Console.WriteLine("Please enter a number");
            Console.WriteLine("Enter a number");
            number = Console.ReadLine();
            } 
            
        numberInt = int.Parse(number);

        switch(numberInt) {
            case > 0:
                while(counter <= numberInt) {
                Console.WriteLine(counter);
                counter = counter + 1;
                }
                break;   
            case < 0:
                while(counter >= numberInt) {
                Console.WriteLine(counter);
                counter = counter - 1;
                }
                break;   
			default:
                Console.WriteLine(numberInt);
                break;
        }
	}
}