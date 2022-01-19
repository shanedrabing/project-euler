import operator


# FUNCTIONS


def is_palindromic(n):
    str_n = str(n)
    return str_n == str_n[::-1]


def reverse_number(n):
    m = 0
    while (n != 0):
        m *= 10
        m += n % 10
        n //= 10
    return m


# SCRIPT


if __name__ == "__main__":
    set_prods = set()
    for a in range(100, 1000):
        for b in range(a, 1000):
            set_prods.add(a * b)

    print(max(filter(is_palindromic, set_prods)))
