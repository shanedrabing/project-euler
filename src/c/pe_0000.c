#include <stdio.h>


// SCRIPT


int main() {
    int i = 10;
    if (i % 15 == 0) {
        printf("FizzBuzz\n");
    } else if (i % 3 == 0) {
        printf("Fizz\n");
    } else if (i % 5 == 0) {
        printf("Buzz\n");
    } else {
        printf("%d\n", i);
    }
}
