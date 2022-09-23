package main


// FUNCTIONS


func sum(arr []int) int {
    gross := 0
    for _, n := range arr {
        gross += n
    }
    return gross
}

func sum_of_squares(arr []int) int {
    gross := 0
    for _, n := range arr {
        gross += n * n
    }
    return gross
}

func square_of_sum(arr []int) int {
    gross := sum(arr)
    return gross * gross
}


// SCRIPT


func main() {
    // initialize vairables
    size := 10;
    half := size / 2
    prime := make([]bool, size)

    // set two as prime, begin sum
    prime[2] = true;
    gross := 2

    // all odds are potential primes
    for i := 3; i < size; i += 2 {
        prime[i] = true
    }

    // disregard multiples of primes
    i := 3
    for ; i < half; i += 2 {
        if prime[i] {
            gross += i
            for j := i * 2; j < size; j += i {
                prime[j] = false
            }
        }
    }

    // continue the sum
    for ; i < size; i += 2 {
        if prime[i] {
            gross += i
        }
    }

    // print out
    println(gross)
}
