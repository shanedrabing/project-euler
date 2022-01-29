dir_full <- function(dpath) {
    file.path(dpath, dir(dpath))
}


# PROGRESS REPORT


fnames <- unlist(sapply(dir_full("src"), dir_full))
mat <- do.call(rbind, strsplit(fnames, "/"))[, -1]

length <- 65
dat <- table(mat[!grepl("_fail", mat[, 2]), 1]) - 1
tbl <- round(length * dat / 772)

build <- ""
for (k in sort(names(tbl))) {
    v <- tbl[[k]]
    u <- length - v
    build <- paste0(
        trimws(build, which = "right"), "\n",
        sprintf("%4s", k),
        sprintf(" (%3.d)", dat[k]),
        ": [",
        paste(rep("#", v), collapse = ""),
        paste(rep(" ", u), collapse = ""),
        "]",
        collapse = ""
    )
}


# TEMPLATES


langs <- rbind(
    c("c", "C"),
    c("cpp", "C++"),
    c("go", "Go"),
    c("java", "Java"),
    c("julia", "Julia"),
    c("js", "JavaScript"),
    c("pl", "Perl"),
    c("py", "Python"),
    c("r", "R"),
    c("sh", "Bash")
)

fpaths <- sort(dir_full("templates"))
texts <- lapply(fpaths, function(fpath) {
    lines <- readLines(fpath)
    paste(lines, collapse = "\n")
})

texts <- lapply(texts, function(text) {
    text <- gsub("(#+)\\s+?([^\n]+)", "<details><summary>\\2</summary><br>", text)
    text <- gsub("(```)(\\w+)", "!!!\\2!!!\n\n\\1\\2", text)
    for (i in 1:nrow(langs)) {
        text <- gsub(
            sprintf("!!!%s!!!", langs[i, 1]),
            sprintf("Example in %s", langs[i, 2]),
            text
        )
    }
    text
})


# FINAL DOC


form <- "# Project Euler\n
## Progress\n\n<details><summary>View</summary><br>\n
```txt%s\n```\n
</details><br>\n
## Syntax Templates\n
%s"

out <- sprintf(
    form,
    build,
    paste(sprintf("%s\n\n</details>", texts), collapse = "\n")
)

writeLines(trimws(out), "README.md")
