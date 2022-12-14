% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataframe__frame.R
\name{DataFrame_join}
\alias{DataFrame_join}
\title{join DataFrame with other DataFrame}
\usage{
DataFrame_join(
  other,
  left_on = NULL,
  right_on = NULL,
  on = NULL,
  how = c("inner", "left", "outer", "semi", "anti", "cross"),
  suffix = "_right",
  allow_parallel = TRUE,
  force_parallel = FALSE
)
}
\arguments{
\item{other}{DataFrame}

\item{left_on}{names of columns in self LazyFrame, order should match. Type, see on param.}

\item{right_on}{names of columns in other LazyFrame, order should match. Type, see on param.}

\item{on}{named columns as char vector of named columns, or list of expressions and/or strings.}

\item{how}{a string selecting one of the following methods: inner, left, outer, semi, anti, cross}

\item{suffix}{name to added right table}

\item{allow_parallel}{bool}

\item{force_parallel}{bool}
}
\value{
DataFrame
}
\description{
join DataFrame with other DataFrame
}
\examples{
print(df1 <- pl$DataFrame(list(key=1:3,payload=c('f','i',NA))))
print(df2 <- pl$DataFrame(list(key=c(3L,4L,5L,NA_integer_))))
df1$join(other = df2,on = 'key')
}
\keyword{DataFrame}
