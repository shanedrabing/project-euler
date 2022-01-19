package main

func reverse_number(n int) int {
    m := 0
    for ; n != 0 ; {
        m *= 10
        m += n % 10
        n /= 10
    }
    return m
}

func is_palindromic(n int) bool {
    return n == reverse_number(n)
}

func main() {
    max := 0

    for a := 1; a < 1000; a += 1 {
        for b := a; b < 1000; b += 1 {
            p := a * b
            if is_palindromic(p) && (max < p) {
                max = p
            }
        }
    }

    println(max)
}
