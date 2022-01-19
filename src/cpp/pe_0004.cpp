#include <iostream>


// USING


using std::cout;
using std::endl;


// FUNCTIONS


int reverse_number(int n) {
    int m = 0;
    while (n != 0) {
        m *= 10;
        m += n % 10;
        n /= 10;
    }
    return m;
}

bool is_palindromic(int n) {
    return n == reverse_number(n);
}


// SCRIPT


int main() {
    int max = 0;

    for (int a = 1; a < 1000; a += 1) {
        for (int b = a; b < 1000; b += 1) {
            int p = a * b;
            if (is_palindromic(p) && max < p) {
                max = p;
            }
        }
    }

    cout << max << endl;
}
