% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/expr__expr.R
\docType{data}
\name{Expr_any}
\alias{Expr_any}
\alias{any}
\title{Any (is true)}
\format{
An object of class \code{character} of length 1.
}
\usage{
Expr_any
}
\value{
Boolean literal
}
\description{
Check if any boolean value in a Boolean column is \code{TRUE}.
}
\examples{
pl$DataFrame(list(all=c(T,T),any=c(T,F),none=c(F,F)))$select(pl$all()$any())
}
\keyword{Expr}
