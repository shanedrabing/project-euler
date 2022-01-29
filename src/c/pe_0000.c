#include <stdio.h>


// SCRIPT


int main() {
    int n = 1;
    for (int i = 1; i <= 10; ++i) {
        printf("%d\n", n);
        n *= i;
    }
}
