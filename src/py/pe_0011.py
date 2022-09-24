import functools
import operator


# FUNCTIONS


def prod(itr):
    return functools.reduce(operator.mul, itr, 1)


def close(f, *args):
    def g(x):
        return f(x, *args)
    return g


def apply(f, mat):
    def tmp(row):
        return list(map(f, row))
    return list(map(tmp, mat))


def transpose(mat):
    return list(map(list, zip(*mat)))


def diag_se(mat):
    r = len(mat)
    c = len(mat[0])
    starter = ([(0, i) for i in range(c)][::-1] +
               [(i, 0) for i in range(1, r)])
    diag = []
    for x, y in starter:
        new = []
        while x < c and y < r:
            new.append(mat[y][x])
            x += 1
            y += 1
        diag.append(new)
    return diag


def diag_ne(mat):
    r = len(mat)
    c = len(mat[0])
    starter = ([(r-1, i) for i in range(c)][::-1] +
               [(i, 0) for i in range(0, r-1)][::-1])
    diag = []
    for y, x in starter:
        new = []
        while x < c and y >= 0:
            new.append(mat[y][x])
            x += 1
            y -= 1
        diag.append(new)
    return diag


def window(itr, k):
    n = len(itr)
    return [
        itr[i:i + k]
        for i in range(0, 1 + n - k) 
    ]


def process_line(line):
    return list(map(int, line.split()))


def print_mat(mat):
    mat = apply(str, mat)
    cols = transpose(mat)
    pads = list(map(max, apply(len, cols)))
    cols = [
        list(map(close(str.rjust, pads[i]), row))
        for i, row in enumerate(cols)
    ]
    mat = transpose(cols)
    print(*map(" ".join, mat), sep="\n")


# SCRIPT


if __name__ == "__main__":
    fpath = "data/pe_0011.txt"
    with open(fpath) as fh:
        mat = list(map(process_line, fh))

    col = transpose(mat)
    di1 = diag_se(mat)
    di2 = diag_ne(mat)

    f = close(window, 4)
    row_chunks = functools.reduce(list.__add__, map(f, mat))
    col_chunks = functools.reduce(list.__add__, map(f, col))
    di1_chunks = functools.reduce(list.__add__, map(f, di1))
    di2_chunks = functools.reduce(list.__add__, map(f, di2))

    print(max(
        max(map(prod, row_chunks)),
        max(map(prod, col_chunks)),
        max(map(prod, di1_chunks)),
        max(map(prod, di2_chunks)),
    ))
