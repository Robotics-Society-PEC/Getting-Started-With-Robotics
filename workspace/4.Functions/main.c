#include <stdio.h>

// Function declaration
int add(int a, int b);

int main()
{
    int sum = add(5, 10);
    printf("Sum: %d\n", sum);
    return 0;
}

// Function definition
int add(int a, int b)
{
    return a + b;
}
