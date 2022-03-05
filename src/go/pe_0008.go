package main

import (
    "bufio"
    "io"
    "log"
    "os"
)


// FUNCTIONS


func prod(arr []int) int {
    n := 1
    for _, i := range arr {
        n *= i
    }
    return n
}


// SCRIPT


func main() {
    i := 0
    hold := 0
    arr := []int{0, 0, 0, 0}

    fh, _ := os.Open("data/pe_0008.txt")
    fr := bufio.NewReader(fh);

    for {
        if c, _, err := fr.ReadRune(); err != nil {
            if err == io.EOF {
                break
            } else {
                log.Fatal(err)
            }
        } else if '0' <= c && c <= '9' {
            arr[i % 4] = int(c - '0')
            p := prod(arr)
            if hold < p {
                hold = p
            }
            i += 1
        }
    }

    println(hold)
}

