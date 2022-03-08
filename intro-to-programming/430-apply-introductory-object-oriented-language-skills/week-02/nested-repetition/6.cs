//Create a C# program for the below and paste as the answer.

//For the following task the program may only contain three output statements. Each to be used once.

//    PRINT x
//    PRINT newline
//    PRINT " " (space)
/*
xxxxxxxxxxx
 xxxxxxxxx
  xxxxxxx
   xxxxx
    xxx
     x
*/

int counter = 0;
int repetitions = 11;
string x = "x";
int counterTwo = 0;
int counterThree = 0;

while (repetitions > 0) {
    while(counterTwo > counterThree) {
        Console.Write(" ");
        counterThree++;
    } 
    counterThree = 0;

    while (counter < repetitions) {
        counter++;
        Console.Write(x);
    } 
    repetitions = repetitions - 2;
    Console.WriteLine();
    counter = 0;
    counterThree = 0;
    counterTwo++;
}