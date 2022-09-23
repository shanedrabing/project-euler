#include <iostream>
#include <vector>


// USING


using std::cout;
using std::endl;
using std::vector;


// SCRIPT


int main() {
    // initialize variables
    uint64_t i, j, size, half, gross;

    // array size
    size = 2000000;
    half = size / 2;

    // new array, all false
    vector<bool> prime;
    prime.resize(size, false);

    // two is prime, begin sum
    prime[2] = true;
    gross = 2;

    // all odds are potential primes
    for (i = 3; i < size; i += 2) {
        prime[i] = true;
    }

    // disregard multiples of primes
    for (i = 3; i < half; i += 2) {
        if (prime[i] == true) {
            gross += i;
            for (j = i * 2; j < size; j += i) {
                prime[j] = false;
            }
        }
    }

    // continue the sum
    for (; i < size; i += 2) {
        if (prime[i] == true) {
            gross += i;
        }
    }

    // print out
    cout << gross << endl;
}
