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

dnames <- list(sprintf("%s: %s", r, texts[r]), c)
mat <- matrix("", length(r), length(c), dimnames = dnames)
for (i in 1:length(x)) {
    mat[x[i], y[i]] <- sprintf("[&#x2713;](src/%s/pe_%04d.%s)", y[i], x[i], y[i])
}

header <- c("Problem", langs[colnames(mat)])
bar <- rep("-", length(header))
body <- cbind(rownames(mat), mat)

lines <- apply(rbind(header, bar, body), 1, paste, collapse = "|")
build <- paste(lines, collapse = "\n")


# TEMPLATES


fpaths <- sort(dir_full("templates"))
texts <- lapply(fpaths, function(fpath) {
    lines <- readLines(fpath)
    paste(lines, collapse = "\n")
})

df <- do.call(rbind, lapply(texts, function(text) {
    lines <- unlist(strsplit(text, "\n{2,}"))
    title <- gsub("# ", "", lines[1])
    soln <- lines[-1]
    lang <- gsub("^```(.+?)\n.+$", "\\1", soln)
    data.frame(lang = lang, title = title, text = soln)
}))

index <- tapply(1:nrow(df), df$lang, c)

snippets <- paste(lapply(names(index), function(key) {
    i <- index[[key]]
    df_sub <- df[i, ]
    val <- paste(sprintf(
        "<details><summary>%s</summary>\n\n%s\n\n</details>\n",
        df_sub$title, df_sub$text
    ), collapse = "\n")
    key_val <- sprintf(
        "<details><summary>%s</summary>\n%s<br></details>\n",
        langs[key], val
    )
}), collapse = "\n")


# FINAL DOC


form <- "# Project Euler\n
## Progress\n
%s\n
## Snippets\n
%s"

out <- sprintf(form, build, snippets)
writeLines(trimws(out), "README.md")
