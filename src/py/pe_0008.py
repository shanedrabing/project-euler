import functools
import operator


# FUNCTIONS


def prod(itr):
    return functools.reduce(operator.mul, itr, 1)


# SCRIPT


if __name__ == "__main__":
    fpath = "data/pe_0008.txt"
    fh = open(fpath, encoding="utf8")

    i = 0
    hold = 0
    lst = [0, 0, 0, 0]
    for line in map(str.strip, fh):
        for x in line:
            n = int(x)

            lst[i % 4] = n
            p = prod(lst)
            if hold < p:
                hold = p

            i += 1

    fh.close()
    print(hold)
