# CONSTANTS


langs <- c(
    "c" = "C",
    "cpp" = "C++",
    "go" = "Go",
    "java" = "Java",
    "jl" = "Julia",
    "julia" = "Julia",
    "js" = "JavaScript",
    "pl" = "Perl",
    "py" = "Python",
    "r" = "R",
    "sh" = "Bash"
)


# FUNCTIONS


suniq <- function(x) {
    sort(unique(x))
}


dir_full <- function(dpath) {
    file.path(dpath, dir(dpath))
}


# PROGRESS REPORT


# read in source files
fnames <- unlist(sapply(dir_full("src"), dir_full))
mat <- do.call(rbind, strsplit(gsub("^.+_0*", "", fnames), "\\."))
mat <- mat[mat[, 1] != "", ]

# matrix becomes rows and columns
x <- as.numeric(mat[, 1])
y <- mat[, 2]
r <- suniq(x)
c <- suniq(y)

# want titles of the problems
fpaths <- dir_full("docs")
texts <- sapply(fpaths, function(fpath) {
    lines <- readLines(fpath)
    index <- startsWith(lines, "# ")
    gsub("# ", "", lines[index])
})

# names become number
names(texts) <- gsub("^.+_0*(.+?)\\..+$", "\\1", names(texts))

dnames <- list(sprintf("[%s] %s", r, texts[r]), c)
mat <- matrix("", length(r), length(c), dimnames = dnames)
for (i in 1:length(x)) {
    mat[x[i], y[i]] <- sprintf("[&#x2713;](src/%s/pe_%04d.%s)", y[i], x[i], y[i])
}

header <- c("Problem", langs[colnames(mat)])
bar <- rep("-", length(header))
body <- cbind(rownames(mat), mat)

lines <- apply(rbind(header, bar, body), 1, paste, collapse = "|")
build <- paste(lines, collapse = "\n")

# length <- 65
# dat <- table(mat[!grepl("_fail", mat[, 2]), 1]) - 1
# tbl <- round(length * dat / 772)

# build <- ""
# for (k in sort(names(tbl))) {
#     v <- tbl[[k]]
#     u <- length - v
#     build <- paste0(
#         trimws(build, which = "right"), "\n",
#         sprintf("%4s", k),
#         sprintf(" (%3.d)", dat[k]),
#         ": [",
#         paste(rep("#", v), collapse = ""),
#         paste(rep(" ", u), collapse = ""),
#         "]",
#         collapse = ""
#     )
# }


# TEMPLATES


fpaths <- sort(dir_full("templates"))
texts <- lapply(fpaths, function(fpath) {
    lines <- readLines(fpath)
    paste(lines, collapse = "\n")
})

texts <- lapply(texts, function(text) {
    text <- gsub("(#+)\\s+?([^\n]+)", "<details><summary>\\2</summary><br>", text)
    text <- gsub("(```)(\\w+)", "!!!\\2!!!\n\n\\1\\2", text)
    for (i in 1:length(langs)) {
        text <- gsub(
            sprintf("!!!%s!!!", names(langs)[i]),
            sprintf("Example in %s", langs[i]),
            text
        )
    }
    text
})


# FINAL DOC


form <- "# Project Euler\n
## Progress\n
%s\n
## Snippets\n
%s"

out <- sprintf(
    form,
    build,
    paste(sprintf("%s\n\n</details>", texts), collapse = "\n")
)

writeLines(trimws(out), "README.md")
