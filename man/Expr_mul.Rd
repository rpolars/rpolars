% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/expr__expr.R
\docType{data}
\name{Expr_mul}
\alias{Expr_mul}
\alias{*.Expr}
\title{Mul *}
\format{
An object of class \code{character} of length 1.
}
\usage{
Expr_mul

\method{*}{Expr}(e1, e2)
}
\arguments{
\item{other}{literal or Robj which can become a literal}
}
\value{
Exprs
}
\description{
Multiplication
}
\examples{
#three syntaxes same result
pl$lit(5) * 10
pl$lit(5) * pl$lit(10)
pl$lit(5)$mul(pl$lit(10))
}
\keyword{Expr}
\keyword{Expr_operators}
