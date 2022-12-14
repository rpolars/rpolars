% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/expr__expr.R
\docType{data}
\name{Expr_abs}
\alias{Expr_abs}
\title{Abs}
\format{
An object of class \code{character} of length 1.
}
\usage{
Expr_abs
}
\value{
Exprs abs
}
\description{
Compute absolute values
}
\examples{
pl$DataFrame(list(a=-1:1))$select(pl$col("a"),pl$col("a")$abs()$alias("abs"))
}
\keyword{Expr}
