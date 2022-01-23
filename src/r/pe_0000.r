i = 10;
if (i %% 15 == 0) {
    cat("FizzBuzz\n");
} else if (i %% 3 == 0) {
    cat("Fizz\n");
} else if (i %% 5 == 0) {
    cat("Buzz\n");
} else {
    cat(i, "\n");
}
