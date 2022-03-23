package main


// IMPORT


import (
    "fmt"
    "os"
)


// SCRIPT


func main() {
    for a := 1; a < 999; a++ {
        for b := a + 1; b < (1000 - a); b++ {
            c := 1000 - (a + b);
            if (a * a + b * b == c * c) {
                fmt.Printf("%d %d %d\n", a, b, c)
                os.Exit(0)
            }
        }
    }
}
