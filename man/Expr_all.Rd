% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/expr__expr.R
\docType{data}
\name{Expr_all}
\alias{Expr_all}
\alias{all}
\title{All (is true)}
\format{
An object of class \code{character} of length 1.
}
\usage{
Expr_all
}
\value{
Boolean literal
}
\description{
Check if all boolean values in a Boolean column are \code{TRUE}.
This method is an expression - not to be confused with
\code{pl$all} which is a function to select all columns.
}
\details{
last \code{all()} in example is this Expr method, the first \code{pl$all()} refers
to "all-columns" and is an expression constructor
}
\examples{
pl$DataFrame(list(all=c(T,T),any=c(T,F),none=c(F,F)))$select(pl$all()$all())
}
\keyword{Expr}
