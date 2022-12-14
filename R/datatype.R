#
#' @title DataTypes polars types
#'
#' @name DataType
#' @description `DataType` any polars type (ported so far)
#' @examples
#' print(ls(pl$dtypes))
#' pl$dtypes$Float64
#' pl$dtypes$Utf8
#'
#' # Some DataType use case, this user function fails because....
#'\dontrun{
#'  pl$Series(1:4)$apply(\(x) letters[x])
#'}
#' #The function changes type from Integer(Int32)[Integers] to char(Utf8)[Strings]
#' #specifying the output DataType: Utf8 solves the problem
#' pl$Series(1:4)$apply(\(x) letters[x],datatype = pl$dtypes$Utf8)
#'
NULL





#' print a polars datatype
#'
#' @param x DataType
#'
#' @return self
#' @export
#'
#' @examples
#' pl$dtypes$Boolean #implicit print
print.DataType = function(x) {
  cat("polars DataType: ")
  x$print()
  invisible(x)
}

#' @export
"==.DataType" <- function(e1,e2) e1$eq(e2)
#' @export
"!=.DataType" <- function(e1,e2) e1$ne(e2)

#create any flag-like DataType
DataType_new = function(str) {
  .pr$DataType$new_list(str)
}


#' internal collection of datatype constructors
DataType_constructors = list(


#' create list data type
#' @param dt an inner DataType
#' @return a list DataType with an inner DataType
#' @examples pl$list(pl$list(pl$Boolean))
  list = function(datatype) {
    if(is.character(datatype) && length(datatype)==1 ) {
      datatype = .pr$DataType$new(datatype)
    }
    if(!inherits(datatype,"DataType")) {
      stopf(paste(
        "input for generating a list DataType must be another DataType",
        "or an interpretable name thereof."
      ))
    }
    .pr$DataType$new_list(datatype)
  }
)




