package main

func main() {
	n := 600851475143

    i := 2
	for ; n != 1 ; {
        if (n % i == 0) {
            n = n / i
		} else {
            i = i + 1
        }
    }

	println(i)
}
