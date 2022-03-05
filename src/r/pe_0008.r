# SCRIPT


lines <- readLines("data/pe_0008.txt")
digit <- as.integer(unlist(strsplit(lines, "")))

i <- 0
hold <- 0
vec <- c(0, 0, 0, 0)

for (n in digit) {
    vec[1 + i %% 4] <- n
    p <- prod(vec)
    if (hold < p) {
        hold <- p
    }
    i <- i + 1
}

message(hold)
