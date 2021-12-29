#include <stdio.h>


// SCRIPT


int main() {
    int gross, i;

    gross = 0;
    for (i = 0; i < 1000; ++i) {
        if (i % 3 == 0 || i % 5 == 0) {
            gross += i;
        }
    }

    printf("%d\n", gross);
}
