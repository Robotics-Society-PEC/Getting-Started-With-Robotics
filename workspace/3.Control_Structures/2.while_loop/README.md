# Countdown Program - C

This repository contains a simple C program that performs a countdown from 10 to 1 and then prints `"Liftoff!"`.

## While Statement

While statement will keep of running a particular piece of code until a statement is true.

```C
#include <stdio.h>
int main(){
        int num = 10;
        while(num>=0){
                printf("%d",num);
                num --;
        }
}
```

Now until the num is greater than equal to 0 the code in the while block will keep on running

## Explanation:

The while loop continues to run as long as the count variable is greater than 0.
Each iteration prints the current value of count and then decrements it by 1.
Once the countdown reaches 0, the loop exits, and the program prints `"Liftoff!"`.
