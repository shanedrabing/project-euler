#include <stdio.h>


// FUNCTIONS


int sum_of_squares(int arr[], int n) {
    int gross = 0;
    for (int i = 0; i < n; ++i) {
        gross += arr[i] * arr[i];
    }
    return gross;
}


int square_of_sum(int arr[], int n) {
    int gross = 0;
    for (int i = 0; i < n; ++i) {
        gross += arr[i];
    }
    return gross * gross;
}


// SCRIPT


int main() {
    int n = 100;
    int arr[100];

    for (int i = 0; i < n; ++i) {
        arr[i] = i + 1;
    }

    printf("%d\n", square_of_sum(arr, n) - sum_of_squares(arr, n));
}
