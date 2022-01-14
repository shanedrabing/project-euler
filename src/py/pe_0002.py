# FUNCTIONS


def fibonacci(a=1, b=1):
    yield a
    yield from fibonacci(b, a + b)


# SCRIPT


if __name__ == "__main__":
    gross = 0
    for n in fibonacci(1, 2):
        if 4e6 < n:
            break
        elif n % 2 == 0:
            gross += n

    print(gross)
