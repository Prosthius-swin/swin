//A program receives a user's name and prints it 10 times on the same line. This process happens 10 times.

string name;
int counter = 0;

Console.WriteLine("Enter your name");
name = Console.ReadLine();

while (counter < 10) {
    counter++;
    Console.Write(name);
}