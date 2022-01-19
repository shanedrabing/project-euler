n <- 0

check <- FALSE
while (!check) {
    n <- n + 380
    check <- TRUE
    for (m in 19:1) {
        if (n %% m != 0) {
            check <- FALSE
            break
        }
    }
}

cat(n, "\n")
