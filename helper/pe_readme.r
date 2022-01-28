dir_full <- function(dpath) {
    file.path(dpath, dir(dpath))
}

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

out <- sprintf(
    "# Project Euler\n\nClick on the spoilers below for syntax hints!\n\n%s",
    paste(sprintf("%s\n\n</details>", texts), collapse = "\n")
)

writeLines(trimws(out), "README.md")