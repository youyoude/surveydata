\name{varlabels}
\alias{varlabels}
\alias{varlabels<-}
\title{Returns and updates variable.labels attribute of surveydata object.}
\usage{
  varlabels(x)

  "varlabels(x) <- value"
}
\arguments{
  \item{x}{surveydata object}

  \item{value}{New value}
}
\description{
  In a surveydata object, the \code{variable.labels}
  attribute store metadata about the original question text
  (see \code{\link[foreign]{read.spss}} for details).  The
  function \code{varlabels} returns the
  \code{variable.labels} attribute of data, and
  \code{varlabels(x) <- value} updates this attribute.
}
\details{
  In a surveydata object, the \code{varlabels} attribute is
  a named character vector, where the names correspond to
  the names of the the columns in
}
\examples{
# Extract the variable labels from membersurvey

ms <- membersurvey[, c("id", "Q1", "Q2")]

str(ms)
varlabels(ms)
varlabels(ms)["Q2"]

# Assign a new value to the text of question 2

varlabels(ms)["Q2"] <- "When did you join?"
varlabels(ms)
str(ms["Q2"])

}
\seealso{
  \code{\link{surveydata-package}}

  Other Attribute functions: \code{\link{pattern}},
  \code{\link{pattern<-}}

  Other Attribute functions: \code{\link{pattern}},
  \code{\link{pattern<-}}
}

