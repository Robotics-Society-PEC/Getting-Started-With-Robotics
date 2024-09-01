#include <stdio.h>

struct Robot
{
    char name[20];
    int batteryLevel;
};

int main()
{
    struct Robot robo1 = {"Robo1", 100};

    printf("Name: %s\n", robo1.name);
    printf("Battery: %d%%\n", robo1.batteryLevel);

    return 0;
}
