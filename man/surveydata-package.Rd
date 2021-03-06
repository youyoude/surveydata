\docType{package}
\name{surveydata-package}
\alias{surveydata}
\alias{surveydata-package}
\title{Tools, classes and methods to manipulate survey data.}
\description{
  Tools, classes and methods to manipulate survey data.
}
\details{
  Surveydata objects have been designed to function with
  SPSS export data, i.e. the result of an SPSS import,
  \code{\link[foreign]{read.spss}}.  This type of data is
  contained in a data.frame, with information about the
  questionnaire text in the \code{variable.labels}
  attribute.  Surveydata objects keep track of the variable
  labels, by offering methods for renaming, subsetting,
  etc.

  Coercion functions: \itemize{ \item
  \code{\link{as.surveydata}} \item
  \code{\link{is.surveydata}} \item
  \code{\link{as.data.frame.surveydata}} }

  To access and modify attributes: \itemize{ \item
  \code{\link{pattern}} \item \code{\link{varlabels}} }

  To subset or merge surveydata objects: \itemize{ \item
  \code{\link[surveydata]{merge}} \item
  \code{\link[surveydata]{Extract}} \item
  \code{\link{cbind.surveydata}} }

  To extract question text from varlabels: \itemize{ \item
  \code{\link[surveydata]{qText}} \item
  \code{\link[surveydata]{qTextCommon}} \item
  \code{\link[surveydata]{qTextUnique}} }

  To fix common encoding problems: \itemize{ \item
  \code{\link[surveydata]{encToInt}} \item
  \code{\link[surveydata]{intToEnc}} \item
  \code{\link{fixCommonEncodingProblems}} }

  To clean data: \itemize{ \item \code{\link{removeDK}} to
  remove "Don't know" responses \item
  \code{\link{removeAllDK}} to remove "Don't know"
  responses from all questions \item
  \code{\link{fixLevels01}} to fix level formatting of all
  question with Yes/No type answers }

  Miscellaneous tools: \itemize{ \item
  \code{\link{dropout}} to determine questions where
  respondents drop out }
}
\examples{
# Create surveydata object

sdat <- data.frame(
    id   = 1:4,
    Q1   = c("Yes", "No", "Yes", "Yes"),
    Q4_1 = c(1, 2, 1, 2), 
    Q4_2 = c(3, 4, 4, 3), 
    Q4_3 = c(5, 5, 6, 6), 
    Q10 = factor(c("Male", "Female", "Female", "Male")),
    crossbreak  = c("A", "A", "B", "B"), 
    weight      = c(0.9, 1.1, 0.8, 1.2)
)

varlabels(sdat) <- c(
    "RespID",
    "Question 1", 
    "Question 4: red", "Question 4: green", "Question 4: blue", 
    "Question 10",
    "crossbreak",
    "weight"
  )

sv <- as.surveydata(sdat, renameVarlabels=TRUE)

# Extract specific questions
sv[, "Q1"]
sv[, "Q4"]

# Query attributes
varlabels(sv)
pattern(sv)

# Find unique questions

questions(sv)
which.q(sv, "Q1")
which.q(sv, "Q4")

# Find question text
qText(sv, "Q1")
qText(sv, "Q4")

qTextCommon(sv, "Q4")
qTextUnique(sv, "Q4")


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
\author{
  Andrie de Vries \email{apdevries@gmail.com}
}
\keyword{package}

