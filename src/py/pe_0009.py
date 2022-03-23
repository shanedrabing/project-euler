# FUNCTION


def is_triplet(a, b, c):
    return (a < b < c) and (a ** 2 + b ** 2 == c ** 2)


# SCRIPT


for a in range(1, 1000):
    for b in range(a + 1, 1000 - a):
        c = 1000 - (a + b)
        if is_triplet(a, b, c):
            print(a, b, c)
            exit()
