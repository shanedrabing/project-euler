#include <stdio.h>
#include <stdlib.h>


// SCRIPT


int main() {
    int a, b, c;

    for (a = 1; a < 999; a++) {
        for (b = a + 1; b < (1000 - a); b++) {
            c = 1000 - (a + b);
            if (a * a + b * b == c * c) {
                printf("%d %d %d\n", a, b, c);
                exit(0);
            }
        }
    }
}
