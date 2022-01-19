itos <- function(n) {
    unlist(strsplit(paste(n), NULL))
}

is_palindromic <- function(n) {
    v <- itos(n)
    identical(v, rev(v))
}

prods <- NULL
for (a in 100:999) {
    prods <- c(prods, a * (a:999))
}
prods <- unique(prods)

index <- sapply(prods, is_palindromic)
max(prods[index])
