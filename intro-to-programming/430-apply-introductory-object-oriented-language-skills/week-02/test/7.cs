	//Write a console application that prints the integers from 1 to 100 (inclusive).
        //But:
        //for multiples of three, print Fizz (instead of the number)
        //for multiples of five, print Buzz (instead of the number)
        //for multiples of both three and five, print FizzBuzz (instead of the number)

        string fizz = "Fizz";
        string buzz = "Buzz";
        string fizzBuzz = "FizzBuzz";
        int num = 0;
        int counter = 0;
        int userSelect;

        Console.WriteLine("Please enter number to count to.");
        userSelect = Int.Parse(Console.ReadLine());

        while(counter < userSelect) {
            num++;
            if ((num % 3 == 0) && (num % 5 == 0)) {
                Console.WriteLine(fizzBuzz);
            } else if (num % 3 == 0) {
                Console.WriteLine(fizz);
            } else if (num % 5 == 0) {
                Console.WriteLine(buzz);
            } else if ((num % 3 != 0) && num % 5 != 0) {
                Console.WriteLine(num); 
            }
        }