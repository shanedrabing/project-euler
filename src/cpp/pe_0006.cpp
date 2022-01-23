#include <iostream>
#include <vector>


// USING


using std::cout;
using std::endl;
using std::vector;


// FUNCTIONS


int sum_of_squares(vector<int> vec) {
    int gross = 0;
    for (int n : vec) {
        gross += n * n;
    }
    return gross;
}


int square_of_sum(vector<int> vec) {
    int gross = 0;
    for (int i = 0; i < vec.size(); ++i) {
        gross += vec[i];
    }
    return gross * gross;
}


// SCRIPT


int main() {
    vector<int> vec(100, 0);

    for (int i = 0; i < vec.size(); ++i) {
        vec[i] = i + 1;
    }

    cout << square_of_sum(vec) - sum_of_squares(vec) << endl;
}
