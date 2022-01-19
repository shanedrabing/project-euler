import functools
import operator
import math


# FUNCTIONS


def prod(itr):
    return functools.reduce(operator.mul, (1, *itr))


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


def lcd(*args):
    tup_out = tuple()
    tup_factors = tuple(map(list, map(prime_factors, args)))
    while any(tup_factors):
        n = None
        for lst in tup_factors:
            if not lst:
                pass
            elif n is None:
                n = lst.pop(0)
                tup_out += n,
            elif n in lst:
                lst.remove(n)
    return prod(tup_out)


# SCRIPT


if __name__ == "__main__":
    print(lcd(*range(1, 20 + 1)))
