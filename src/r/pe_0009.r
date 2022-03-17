# FUNCTION


is_triplet <- function(a, b, c) {
    (a < b) && (b < c) && (a ** 2 + b ** 2 == c ** 2)
}


# SCRIPT


for (a in 1:1000) {
    for (b in (a + 1):(1000 - a)) {
        c = 1000 - (a + b)
        if (is_triplet(a, b, c)) {
            message(a, b, c)
        }
    }
}
