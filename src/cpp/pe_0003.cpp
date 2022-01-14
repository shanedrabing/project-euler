#include <iostream>


// USING


using std::cout;
using std::endl;


// SCRIPT


int main() {
    long long int n, i;

    n = 600851475143L;

    i = 2;
    while (n != 1) {
        if (n % i == 0) {
            n = n / i;
        } else {
            i = i + 1;
        }
    }

    cout << i << endl;
}
