\name{fixCommonEncodingProblems}
\alias{fixCommonEncodingProblems}
\title{Fix common encoding problems when working with web imported data.}
\usage{
  fixCommonEncodingProblems(x)
}
\arguments{
  \item{x}{A character vector}
}
\description{
  This function tries to resolve typical encoding problems
  when importing web data on Windows. Typical problems
  occur with pound and hyphen (-), especially when these
  originated in MS-Word.
}
\seealso{
  Other Functions to clean data: \code{\link{encToInt}},
  \code{\link{fixLevels01}}, \code{\link{fixLevels01R}},
  \code{\link{fixLevels01SPSS}}, \code{\link{hasDK}},
  \code{\link{intToEnc}}, \code{\link{leveltestR}},
  \code{\link{leveltestSPSS}}, \code{\link{removeAllDK}},
  \code{\link{removeDK}}
}
\keyword{encoding}

