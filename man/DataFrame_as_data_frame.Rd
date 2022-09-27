% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataframe.R
\name{DataFrame_as_data_frame}
\alias{DataFrame_as_data_frame}
\title{return polars DataFrame as R data.frame}
\usage{
as_data_frame()
}
\arguments{
\item{...}{any args pased to as.data.frame()}
}
\value{
data.frame
}
\description{
return polars DataFrame as R data.frame
}
\examples{
pl$DataFrame(iris)$as_data_frame()
}
\keyword{DataFrame}