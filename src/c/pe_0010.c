#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>


// SCRIPT


int main() {
    // initialize variables
    int i, j, size, half;
    unsigned long long gross;
    _Bool prime[2000000];

    // array size
    size = 2000000;
    half = size / 2;

    // set all false (perhaps unnecessary)
    for (i = 0; i < size; i++) {
        prime[i] = 0;
    }

    // set two as prime, begin sum
    prime[2] = 1;
    gross = 2;

    // all odds are potential primes
    for (i = 3; i < size; i += 2) {
        prime[i] = 1;
    }

    // cross of multiples of primes
    for (i = 3; i < half; i += 2) {
        if (prime[i] == 1) {
            gross += i;
            for (j = i * 2; j < size; j += i) {
                prime[j] = 0;
            }
        }
    }

    // continue the sum
    for (; i < size; i += 2) {
        if (prime[i] == 1) {
            gross += i;
        }
    }

    printf("%llu\n", gross);
}
