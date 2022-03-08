//As above, but the user is able to enter the amount of starting x's
/*
x
xx
xxx
xxxx
xxxxx
*/

int counter = 1;
int counterTwo = 0;
string repetitions;
int repetitionsInt;
char x = 'x';

Console.WriteLine("Enter number of repetitions");
repetitions = Console.ReadLine();
repetitionsInt = int.Parse(repetitions);
repetitionsInt++;

while (counter < repetitionsInt) {
    while (counterTwo < counter) {
        counterTwo++;
        Console.Write(x);
    } counter++;
    Console.WriteLine();
    counterTwo = 0;
}