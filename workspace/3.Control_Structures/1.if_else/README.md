# Grading System - C Program

This repository contains a simple C program that determines a student's grade based on their score.

## If-Else Statements

Condtiotional statements are the pieces of code which only run when a specific condition is fulfilled.

One of the most used conditional statement is a If-Else Statement

```C
#include <stdio.h>

int main(){
  char grade = 'A';

  if (grade == 'A'){
    printf("%s","Excellent!!");
  }
  else if (grade == 'B'){
    printf("%s","Great !!");
  }
  else{
    printf("%s","You can do better");
  }


  return 0;
}
```

It starts checking from the `If` statement if the statement in the check block is true then the code is run and the If-Else Block is exited.
Otherwise if will check every other `else if` block.
If no other else if block is true it will run the code in `else`. Note Else is not necessary in an if-Else Block

## Code Explanation

1. `Conditional Statements:` The program uses an if-else if-else structure to determine the grade:

- `Grade A` for scores 90 and above.
- `Grade B` for scores 80 to 89.
- `Grade C` for scores below 80.
  2 `Score:` In this example, the score is set to 75, so the program will output Grade: C.
