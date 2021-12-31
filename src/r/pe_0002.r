fibonacci_step <- function(a, b) {
    list(b, a + b)
}

gross <- 0
lst <- list(1, 2)
while (lst[[1]] < 4e6) {
    if (lst[[1]] %% 2 == 0) {
        gross <- gross + lst[[1]]
    }
    lst <- do.call(fibonacci_step, lst)
}

cat(gross, "\n")
