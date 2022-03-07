using System;
					
public class Program
{
	public static void Main()
	{
        //A program that asks the user to enter a number. The program then counts from 0 to that number.
        string number = "0";
        int counter = 0;
		int numberInt;

        Console.WriteLine("Enter a number");
        number = Console.ReadLine();
		numberInt = int.Parse(number);
		
        if (numberInt > 0) {
            while(counter <= numberInt) {
                Console.WriteLine(counter);
                counter = counter + 1;
                }
            } else if (numberInt < 0) {
                while(counter >= numberInt) {
                    Console.WriteLine(counter);
                    counter = counter - 1;
                    }
                } else {
                    Console.WriteLine(numberInt);
                }
	        }
        }