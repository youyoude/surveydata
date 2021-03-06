\name{qText}
\alias{qText}
\title{Returns question text.}
\usage{
  qText(x, Q)
}
\arguments{
  \item{x}{A surveydata object}

  \item{Q}{The question id, e.g. "Q4"}
}
\value{
  character vector
}
\description{
  Given a question id, e.g. "Q4", returns question text for
  this question. Note that this returns. The functions
  \code{\link{qTextUnique}} and \code{\link{qTextCommon}}
  returns the unique and common components of the question
  text.
}
\examples{
# Basic operations on a surveydata object, illustrated with the example dataset membersurvey

class(membersurvey)

questions(membersurvey)

which.q(membersurvey, "Q1")
which.q(membersurvey, "Q3")
which.q(membersurvey, c("Q1", "Q3"))

qText(membersurvey, "Q3")
qTextUnique(membersurvey, "Q3")
qTextCommon(membersurvey, "Q3")

# Extracting columns from a surveydata object

head(membersurvey[, "Q1"])
head(membersurvey["Q1"])
head(membersurvey[, "Q3"])
head(membersurvey[, c("Q1", "Q3")])

# Note that the result is always a surveydata object, even if only one column is extracted

head(membersurvey[, "id"])
str(membersurvey[, "id"])

}
\seealso{
  Other Question functions: \code{\link{qTextCommon}},
  \code{\link{qTextUnique}}, \code{\link{questions}},
  \code{\link{splitCommonUnique}}, \code{\link{which.q}}
}
\keyword{Questions}

