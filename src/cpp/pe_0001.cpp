#include <iostream>


// USING


using std::cout;
using std::endl;


// SCRIPT


int main() {
    int gross, i;

    gross = 0;
    for (i = 1; i < 1000; ++i) {
        if (i % 3 == 0 || i % 5 == 0) {
            gross += i;
        }
    }

    cout << gross << endl;
}
