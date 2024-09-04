# Iteration Program - C

This repository contains a simple C program that demonstrates the use of a `for` loop to iterate a fixed number of times.

## For loop Statement

a `for` loop is a control flow statement that allows code to be executed repeatedly based on a given condition. It's commonly used when you know in advance how many times you want to execute a statement or a block of statements.

```c
#include <stdio.h>

int main() {
    for (int i = 0; i <= 5; i++) {
        printf("%d\n", i);
    }
    return 0;
}
```

On Every interation the i will be incremented by 1 and it will do it until i = 5

## Explanation:

The `for` loop runs 5 times, with the loop variable `i` starting at 0 and incrementing by 1 in each iteration.
The condition `i < 5` ensures that the loop continues as long as `i` is less than 5.
During each iteration, the current value of `i` is printed.
