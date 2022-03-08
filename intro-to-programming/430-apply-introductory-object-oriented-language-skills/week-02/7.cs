using System;
					
public class Program
{
	public static async void Main()
	{
		//Write a console application that prints the integers from 1 to 100 (inclusive).
        //But:
        //for multiples of three, print Fizz (instead of the number)
        //for multiples of five, print Buzz (instead of the number)
        //for multiples of both three and five, print FizzBuzz (instead of the number)

        string fizz = "fizz";
        string buzz = "buzz";
        string fizzBuzz = "FizzBuzz";
        int num = 1;

        for (int i = 0; i < 100; i++) {
            Console.WriteLine(num++);
        }


	}
}