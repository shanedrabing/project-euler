#include <stdio.h>
#include <stdbool.h>


// FUNCTIONS


bool is_prime_6k1(int n) {
    int i;

    if (n <= 3) {
        return n > 1;
    } else if (n % 2 == 0 || n % 3 == 0) {
        return false;
    }

    i = 5;
    while (i * i <= n) {
        if (n % i == 0 || n % (i + 2) == 0) {
            return false;
        }
        i += 6;
    }

    return true;
}


// SCRIPT


int main() {
    int i, n;

    i = 1;
    n = 1;
    while (i != 10001) {
        n += 2;
        i += (int)is_prime_6k1(n);
    }

    printf("%d\n", n);
}
