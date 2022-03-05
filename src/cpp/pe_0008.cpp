#include <fstream>
#include <iostream>
#include <vector>


// USING


using std::cout;
using std::endl;
using std::ifstream;
using std::string;
using std::vector;


// FUNCTIONS


int prod(vector<int> arr) {
    int n = 1;
    for (int i : arr) {
        n *= i;
    }
    return n;
}


// SCRIPT


int main() {
    int i, p, hold;
    char c = 0;

    i = 0;
    hold = 0;

    string fname = "data/pe_0008.txt";
    vector<int> arr = {0, 0, 0, 0};

    ifstream fh(fname);
    while (fh.get(c)) {
        if ('0' <= c && c <= '9') {
            arr[i % 4] = (int)(c - '0');
            p = prod(arr);
            if (hold < p) {
                hold = p;
            }
            i++;
        }
    }

    cout << hold << endl;
}
