# FUNCTIONS


sum_of_squares <- function(vec) {
    sum(vec ^ 2)
}


square_of_sum <- function(vec) {
    sum(vec) ^ 2
}


# SCRIPT


ten <- 1:10
hundred <- 1:100

stopifnot(sum_of_squares(ten) == 385)
stopifnot(square_of_sum(ten) == 3025)
stopifnot(square_of_sum(ten) - sum_of_squares(ten) == 2640)

cat(square_of_sum(hundred) - sum_of_squares(hundred), "\n")
