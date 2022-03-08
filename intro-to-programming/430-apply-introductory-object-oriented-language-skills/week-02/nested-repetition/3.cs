//The user is able to enter the amount of starting x's
/*
xxxx
xxx
xx
x
*/

int counter = 0;
string repetitions;
int repetitionsInt;
char x = 'x';

Console.WriteLine("Enter number of repetitions");
repetitions = Console.ReadLine();
repetitionsInt = int.Parse(repetitions);

while (repetitionsInt > 0) {
    while (counter < repetitionsInt) {
        counter++;
        Console.Write(x);
    } repetitionsInt--;
    Console.WriteLine();
    counter = 0;
}