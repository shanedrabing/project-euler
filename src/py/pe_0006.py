import functools
import operator
import math


# FUNCTIONS


def sum_of_squares(itr):
    return sum(n ** 2 for n in itr)


def square_of_sum(itr):
    return sum(itr) ** 2


# SCRIPT


if __name__ == "__main__":
    ten = range(1, 10 + 1)
    hundred = range(1, 100 + 1)
    
    assert sum_of_squares(ten) == 385
    assert square_of_sum(ten) == 3025
    assert square_of_sum(ten) - sum_of_squares(ten) == 2640

    print(square_of_sum(hundred) - sum_of_squares(hundred))
