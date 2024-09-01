#include <stdio.h>

int main()
{
    int count = 10;

    while (count > 0)
    {
        printf("Countdown: %d\n", count);
        count--; // Decrease the count by 1
    }

    printf("Liftoff!\n");

    return 0;
}
