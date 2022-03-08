//A program receives a user's name and prints it for the amount of times that the user specifies.
string name;
string counter2;
int counter = 0;

Console.WriteLine("Enter your name");
name = Console.ReadLine();

Console.WriteLine("Number of repetitions");
counter2 = Console.ReadLine();

while (counter < int.Parse(counter2)) {
    counter++;
    Console.Write(name);
}