langs <- dir("src")
scripts <- dir(file.path("src", langs))

df <- data.frame(do.call(rbind, strsplit(scripts, "\\.")))
names(df) <- c("problem", "lang")

df$group <- match(df$problem, unique(df$problem))

build <- NULL
for (g in unique(df$group)) {
    df_sub <- subset(df, group == g)
    fpaths <- sprintf("src/%s/%s.%s", df_sub$lang, df_sub$problem, df_sub$lang)
    files <- sapply(fpaths, readr::read_file)
    for (i in 1:(length(files) - 1)) {
        for (j in (i + 1):length(files)) {
            build <- rbind(build, unlist(c(
                df_sub[i, -3],
                df_sub[j, -3],
                adist(files[i], files[j]) / max(sapply(files[c(i, j)], nchar))
            )))
        }
    }
}

build <- data.frame(build)
build <- build[order(build[, 5]), -c(1, 3)]
keys <- apply(build[, -3], 1, paste, collapse = " -- ")
related <- tapply(build[, 3], keys, function(x) {
    mean(as.numeric(x))
})

sort(related)
