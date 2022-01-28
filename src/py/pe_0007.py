# FUNCTIONS


def is_prime_6k1(n):
    prime = True

    if n <= 3:
        return n > 1
    elif n % 2 == 0 or n % 3 == 0:
        return False

    i = 5
    while i * i <= n:
        if n % i == 0 or n % (i + 2) == 0:
            return False
        i += 6

    return True


# SCRIPT


if __name__ == "__main__":
    i = 1
    n = 1
    while i != 10001:
        n += 2
        i += is_prime_6k1(n)

    print(n)
