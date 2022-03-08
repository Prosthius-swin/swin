//Create a C# program that creates the below output and copy and paste your code as the answer.
/*
xxxx
xxx
xx
x
*/

int counter = 0;
int repetitions = 5;
char x = 'x';

while (repetitions > 0) {
    while (counter < repetitions) {
        counter++;
        Console.Write(x);
    } repetitions--;
    Console.WriteLine();
    counter = 0;
}