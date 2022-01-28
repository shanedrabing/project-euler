package main


// FUNCTIONS


func is_prime_6k1(n int) bool {
    if n <= 3 {
        return n > 1
    } else if n % 2 == 0 || n % 3 == 0 {
        return false
    }

    i := 5
    for ; i * i <= n ; {
        if n % i == 0 || n % (i + 2) == 0 {
            return false
        }
        i += 6
    }

    return true
}


// SCRIPT


func main() {
    i := 1
    n := 1
    for ; i != 10001 ; {
        n += 2
        if is_prime_6k1(n) {
            i += 1
        }
    }

    println(n)
}
