#include <iostream>


// USING


using std::cout;
using std::endl;


// SCRIPT


int main() {
    int n = 0;
    int check = 0;

    while ( check == 0 ) {
        check = 1;
        n += 20 * 19;
        for (int m = 19; 1 <= m; --m) {
            if ( n % m != 0 ) {
                check = 0;
                break;
            }
        }
    }

    cout << n << endl;
}
