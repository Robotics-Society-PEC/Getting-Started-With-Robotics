# Array Iteration Program - C

This repository contains a simple C program that demonstrates how to iterate over an array and print its elements.

## What are Arrays

An array is structure which can hold some given amount of data in it.
In this structure every single data has some index in that structure which can be used to address that data .

Think of arrays as lists; every item has a serial number

We can access any index (Serial number) in an array by just calling that array with the index we want to call

for eg if we have an array called numbers

`int numbers[5]={10,20,30,40,50}`

we can access any index by

`index_num = number[2]` which gives an output of 30

> [!NOTE]
>
> An array indexing starts with number 0
>
> so for {10,20,30,40,50} indexes are
> {0,1,2,3,4}

```c
#include <stdio.h>

int main() {
    int numbers[5] = {10, 20, 30, 40, 50};

    for (int i = 0; i < 5; i++) {
        printf("%d\n", i, numbers[i]);
    }

    return 0;
}

```

## Explanation:

1. `Array Declaration:`The program defines an integer array `numbers` with 5 elements: `10, 20, 30, 40, 50`.
2. For Loop:

- The `for` loop iterates over each element in the `numbers` array.
- The loop variable `i` runs from 0 to 4, corresponding to the indices of the array elements.
- During each iteration, the program prints the index and the value of the corresponding array element.
