#include <iostream>


// USING


using std::cout;
using std::endl;


// SCRIPT


int main() {
    int a, b, c;

    for (a = 1; a < 999; a++) {
        for (b = a + 1; b < (1000 - a); b++) {
            c = 1000 - (a + b);
            if (a * a + b * b == c * c) {
                cout << a << " " << b << " " << c << endl;
                exit(0);
            }
        }
    }
}
