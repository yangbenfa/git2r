% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/branch.r
\docType{methods}
\name{branch_rename}
\alias{branch_rename}
\alias{branch_rename,git_branch-method}
\title{Rename a branch}
\usage{
branch_rename(branch, name, force = FALSE)

\S4method{branch_rename}{git_branch}(branch, name, force = FALSE)
}
\arguments{
\item{branch}{Branch to rename}

\item{name}{The new name for the branch}

\item{force}{Overwrite existing branch. Default is FALSE}
}
\value{
invisible renamed S4 class git_branch
}
\description{
Rename a branch
}
\examples{
\dontrun{
## Initialize a temporary repository
path <- tempfile(pattern="git2r-")
dir.create(path)
repo <- init(path)

## Config user and commit a file
config(repo, user.name="Alice", user.email="alice@example.org")
writeLines("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do",
           file.path(path, "example.txt"))
add(repo, "example.txt")
commit(repo, "First commit message")

## Rename 'master' branch to 'dev'
branches(repo)
branch_rename(head(repo), "dev")
branches(repo)
}
}
\keyword{methods}

