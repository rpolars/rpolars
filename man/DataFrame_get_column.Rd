% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataframe__frame.R
\name{DataFrame_get_column}
\alias{DataFrame_get_column}
\alias{get_column}
\alias{DataFrame_to_series}
\title{Get Column (as one Series)}
\usage{
DataFrame_get_column(name)

DataFrame_to_series(idx = 0)
}
\value{
Series

Series or NULL
}
\description{
get one column by name as series

get one column by idx as series from DataFrame.
Unlike get_column this method will not fail if no series found at idx but
return a NULL, idx is zero idx.
}
\examples{
df = pl$DataFrame(iris[1,])
df$get_column("Species")
pl$DataFrame(a=1:4)$to_series()
}
\keyword{DataFrame}
