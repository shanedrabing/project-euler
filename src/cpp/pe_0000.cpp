#include <iostream>


// USING


using std::cout;
using std::endl;


// SCRIPT


int main() {
    int i = 10;
    if (i % 15 == 0) {
        std::cout << "FizzBuzz" << std::endl;
    } else if (i % 3 == 0) {
        std::cout << "Fizz" << std::endl;
    } else if (i % 5 == 0) {
        std::cout << "Buzz" << std::endl;
    } else {
        std::cout << i << std::endl;
    }
}
