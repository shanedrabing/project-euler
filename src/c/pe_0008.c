#include <stdio.h>
#include <stdbool.h>


// FUNCTIONS


int prod(int arr[], int n) {
    int p = 1;
    for (int i = 0; i < n; ++i) {
        p *= arr[i];
    }
    return p;
}


// SCRIPT


int main() {
    int i, c, p, hold;

    i = 0;
    hold = 0;
    int arr[] = {0, 0, 0, 0};

    FILE *fh = fopen("data/pe_0008.txt", "r");

    while ((c = fgetc(fh)) != EOF) {
        if ('0' <= c && c <= '9') {
            arr[i % 4] = c - '0';
            p = prod(arr, 4);
            if (hold < p) {
                hold = p;
            }
            i++;
        }
    }

    printf("%d\n", hold);
}
