package main

func main() {
	gross := 0
	a := 1
	b := 2

	for ; a < 4e6 ; {
		if a % 2 == 0 {
			gross += a
		}
		c := a + b
		a = b
		b = c
	}

	println(gross)
}
