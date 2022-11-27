# FUNCTIONS


diag_forward <- function(mat) {
    # setup
    lst <- NULL
    r <- nrow(mat)
    c <- ncol(mat)

    # up to and including diagonal
    for (y in 1:c) {
        x <- 1
        vec <- NULL
        while (x <= c && 0 < y) {
            vec <- c(vec, mat[y, x])
            x <- x + 1
            y <- y - 1
        }
        lst[[1 + length(lst)]] <- vec
    }

    # after the diagonal
    for (x in 2:r) {
        y <- c
        vec <- NULL
        while (x <= c && 0 < y) {
            vec <- c(vec, mat[y, x])
            x <- x + 1
            y <- y - 1
        }
        lst[[1 + length(lst)]] <- vec
    }

    # return
    lst
}

diag_backward <- function(mat) {
    # setup
    lst <- NULL
    r <- nrow(mat)
    c <- ncol(mat)

    # up to and including diagonal
    for (y in c:1) {
        x <- 1
        vec <- NULL
        while (x <= c && y <= r) {
            vec <- c(vec, mat[y, x])
            x <- x + 1
            y <- y + 1
        }
        lst[[1 + length(lst)]] <- vec
    }

    # after the diagonal
    for (x in 2:r) {
        y <- 1
        vec <- NULL
        while (x <= c && y <= r) {
            vec <- c(vec, mat[y, x])
            x <- x + 1
            y <- y + 1
        }
        lst[[1 + length(lst)]] <- vec
    }

    # return
    lst
}


# SCRIPT


{
    fpath <- "data/pe_0011.txt"
    mat <- as.matrix(unname(read.table(fpath)))

    n <- 4
    maxi <- max(unlist(lapply(list(
        apply(mat, 1, function(x) {
            x <- c(x, rep(0, max(0, n - length(x))))
            sapply(1:(length(x) - n + 1), function(i) {
                prod(x[i:(i + n - 1)])
            })
        }),
        apply(mat, 2, function(x) {
            x <- c(x, rep(0, max(0, n - length(x))))
            sapply(1:(length(x) - n + 1), function(i) {
                prod(x[i:(i + n - 1)])
            })
        }),
        sapply(diag_forward(mat), function(x) {
            x <- c(x, rep(0, max(0, n - length(x))))
            sapply(1:(length(x) - n + 1), function(i) {
                prod(x[i:(i + n - 1)])
            })
        }),
        sapply(diag_backward(mat), function(x) {
            x <- c(x, rep(0, max(0, n - length(x))))
            sapply(1:(length(x) - n + 1), function(i) {
                prod(x[i:(i + n - 1)])
            })
        })
    ), unlist)))

    # print out
    print(maxi)
}
