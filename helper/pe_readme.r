dir_full <- function(dpath) {
    file.path(dpath, dir(dpath))
}

fpaths <- sort(dir_full("templates"))
texts <- lapply(fpaths, function(fpath) {
    lines <- readLines(fpath)
    paste(lines, collapse = "\n")
})

texts <- lapply(texts, function(text) {
    text <- gsub("(#+)", "#\\1", text)
    text <- gsub("```(\\n|$)", "```\n\n</details>\n", text)
    text <- gsub(
        "(```)(\\w+)",
        "<details><summary>\\2</summary>\n\n\\1\\2",
        text
    )
})

out <- sprintf(
    "# Project Euler\n\n%s",
    paste(texts, collapse = "\n\n")
)

writeLines(trimws(out), "README.md")
