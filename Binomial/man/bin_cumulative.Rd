% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Function.R
\name{bin_cumulative}
\alias{bin_cumulative}
\title{binomial cumulative function}
\usage{
bin_cumulative(trials, prob)
}
\arguments{
\item{n}{number of trials}

\item{p}{success rate of each trials}
}
\value{
A data frame with number of success, probability and cumulative probability
}
\description{
calculates the probability and cumulative probability of different success times
}
\examples{
bin_cumulative(trials = 5, prob = 0.5)
}
