# SCRIPT


{
    # initialize variables
    size <- 2000000
    half <- floor(size / 2)
    prime <- (1:size) %% 2 == 1

    # one is not prime, two is
    prime[1] <- FALSE
    prime[2] <- TRUE
    gross <- 2

    for (i in seq(3, half, 2)) {
        if (prime[i]) {
            gross <- gross + i
            for (j in seq(i * 2, size, i)) {
                prime[j] <- FALSE
            }
        }
    }

    # continue the sum
    for (i in seq(i + 2, size, 2)) {
        if (prime[i]) {
            gross <- gross + i
        }
    }

    # print out
    print(gross)
}
