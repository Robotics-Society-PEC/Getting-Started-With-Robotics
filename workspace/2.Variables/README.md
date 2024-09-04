# Age, Height, and Grade - C Program

This repository contains a simple C program that demonstrates the use of basic data types and the `printf` function to output values in C. The program stores a person's age, height, and grade, then prints these values to the console.

## Data Types in C

1. `int`
   Integers from value a starting value of -2,147,483,648 and an ending value of 2,147,483,647 i.e. **4 bytes**

2. `long`
   Long values range from -9,223,372,036,854,775,808 and goes up to 9,223,372,036,854,775,807. i.e. **8 bytes**

3. `float`
   Decimal Values has a size of **4 bytes** but has a precision in decimal digits upto 7 digits.

4. `double`
   Decimal Values has a size of **8 bytes** but has a precision in decimal digits upto 15 digits.

5. `char`
   A single character with a size of **1 byte** its value can range from 128 to 127 or 0 to 255.

6. `short`
   it can have values between -32768 and 32767 i.e. **2 bytes**

Adding `unsigned` infront of any data type can increase its range. Unsigned specifies the computer that the variable is positive only hence all the negative number space can be utilized for a more digits.
For eg:
`short` has a range from -32768 to 32767. **BUT**
`unsigned short` has a range from 0 to 65,535

`unsigned` can be added to any data type to increase its size;

## Constants (const)

`consts` are data types which cannot be changed unline variables. Where varaibles can be redefined to change there values consts cannot

`const int age = 18;`
Now the variable age cannot be changed into another variable.

## Code Explanation

1. `int age = 21;`
   This line declares an integer variable named `age` and initializes it with the value `21`.

2. `float height = 5.9;`
   This line declares a floating-point variable named `height` and initializes it with the value `5.9`.

3. `char grade = 'A';`
   This line declares a character variable named `grade` and initializes it with the value `'A'`.

4. `printf("Age: %d\n", age);`
   This line uses the `printf` function to print the value of the `age` variable to the console. The %d format specifier is used for printing an integer.

5. `printf("Height: %.1f\n", height);`
   This line uses the `printf` function to print the value of the `height` variable to the console. The `%.1f` format specifier is used for printing a floating-point number with one digit after the decimal point.

6. `printf("Grade: %c\n", grade);`
   This line uses the printf function to print the value of the `grade` variable to the console. The %c format specifier is used for printing a character.
