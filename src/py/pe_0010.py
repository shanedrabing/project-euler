# SCRIPT


if __name__ == "__main__":
    # initialize variables
    size = 2000000
    half = size // 2
    prime = [i % 2 == 1 for i in range(size)]

    # one is not prime
    prime[1] = False
    gross = 2

    # disregard multiples of primes
    for i in range(3, half, 2):
        if prime[i]:
            gross += i
            for j in range(i * 2, size, i):
                prime[j] = False

    # continue the sum
    for i in range(i, size, 2):
        if prime[i]:
            gross += i

    # print out
    print(gross)
