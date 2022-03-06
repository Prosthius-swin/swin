//Set a secret number to 653.  Then program will then loop, where each loop will ask the user to enter what they think a secret integer is. 
//If they get it right, print "Correct", otherwise print "Wrong, counter value is ".  Give the user 10 chances to guess.   
//Hint: You will need an if statement inside the loop.  Bonus: Make the secret number randomly generate between 1 and 1000 each time the program is run.  
 
int secretNumber; 
string guess = "";
int counter = 9;
string attempts = "attempts";

Random rnd = new Random();
secretNumber = rnd.Next(1, 1001);
Console.WriteLine("The secret number is " + secretNumber + ".");

Console.WriteLine("Guess a number.");
guess = Console.ReadLine();

while(counter > 0 && (!String.Equals(guess, secretNumber.ToString()))) {
    if (!String.Equals(guess, secretNumber.ToString())) {
        /*while(guess == "") {
            Console.WriteLine("Counter is " + counter);
            Console.WriteLine("Please enter a number.");
            guess = Console.ReadLine();
            }*/ Console.WriteLine("Wrong, you have " + counter + " " + attempts + " left.");
            Console.WriteLine("Guess a number.");
            guess = Console.ReadLine();
            counter--;
            } if (String.Equals(counter.ToString() ,"1")) {
                attempts = "attempt";
            } else {
                attempts = "attempts";
                }
            } if(counter < 1) {
                Console.WriteLine("You have run out of attempts.");
                } else if(String.Equals(guess, secretNumber.ToString())) {
                    Console.WriteLine("Correct!");
                } else {
                    Console.WriteLine("Something went wrong.");
                    }