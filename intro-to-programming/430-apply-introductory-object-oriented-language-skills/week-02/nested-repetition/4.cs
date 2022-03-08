//Create a C# program that creates the below output and copy and paste your code as the answer.
/*
x
xx
xxx
xxxx
xxxxx
*/

int counter = 0;
int repetitions = 1;
char x = 'x';

while (repetitions < 6) {
    while (counter < repetitions) {
        counter++;
        Console.Write(x);
    } repetitions++;
    Console.WriteLine();
    counter = 0;
}


