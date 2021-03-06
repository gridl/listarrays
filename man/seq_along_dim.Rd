% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/seq_along.R
\name{seq_along_dim}
\alias{seq_along_dim}
\alias{seq_along_rows}
\alias{seq_along_cols}
\title{Sequence along a dimension}
\usage{
seq_along_dim(x, which_dim)

seq_along_rows(x)

seq_along_cols(x)
}
\arguments{
\item{x}{a dataframe, array or vector. For \code{seq_along_rows}, and
\code{seq_along_cols} sequence along the first and last dimensions,
respectively. Atomic vectors are treated as 1 dimensional
arrays (i.e., \code{seq_along_rows} is equivalent to \code{seq_along} when \code{x} is an
atomic vector or list).}

\item{which_dim}{a scalar integer or character string, specifying which
dimension to generate a sequence for. Negative numbers count from the back.}
}
\value{
a vector of integers 1:nrow(x), safe for use in \code{for} loops and
vectorized equivalents.
}
\description{
Sequence along a dimension
}
\examples{
for (r in seq_along_rows(mtcars[1:4,]))
  print(mtcars[r,])

x <- 1:3
identical(seq_along_rows(x), seq_along(x))

}
