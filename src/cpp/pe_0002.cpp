#include <iostream>


// USING


using std::cout;
using std::endl;


// SCRIPT


int main() {
    int gross, a, b, c;

    gross = 0;
    a = 1;
    b = 2;
    while (a < 4e6) {
        if (a % 2 == 0) {
            gross += a;
        }
        c = a + b;
        a = b;
        b = c;
    }

    cout << gross << endl;
}
