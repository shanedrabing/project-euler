#include <iostream>


// USING


using std::cout;
using std::endl;


// SCRIPT


int main() {
    int n = 1;
    for (int i = 1; i <= 10; ++i) {
        std::cout << n << std::endl;
        n *= i;
    }
}
