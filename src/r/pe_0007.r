# FUNCTIONS


is_prime_6k1 <- function(n) {
    prime <- TRUE

    if (n <= 3) {
        return(n > 1)
    } else if (n %% 2 == 0 || n %% 3 == 0) {
        return(FALSE)
    }

    i <- 5
    while (i * i <= n) {
        if (n %% i == 0 || n %% (i + 2) == 0) {
            return(FALSE)
        }
        i <- i + 6
    }

    return(TRUE)
}


# SCRIPT


i <- 1
n <- 1
while (i != 10001) {
    n <- n + 2
    i <- i + is_prime_6k1(n)
}

message(n)
