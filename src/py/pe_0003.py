# FUNCTIONS


def prime_factors(n):
    i = 2
    out = tuple()
    while n != 1:
        if n % i == 0:
            n //= i
            out += i,
        else:
            i += 1
    return out


# SCRIPT


if __name__ == "__main__":
    assert prime_factors(13195) == (5, 7, 13, 29)
    print(max(prime_factors(600851475143)))
