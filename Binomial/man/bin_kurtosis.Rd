% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Function.R
\name{bin_kurtosis}
\alias{bin_kurtosis}
\title{Binomial Kurtosis}
\usage{
bin_kurtosis(trials, prob)
}
\arguments{
\item{trials}{number of trials}

\item{prob}{success rate of each trials}
}
\value{
Return the kurtosis of binomial distribution
}
\description{
Calculates the kurtosis of a binomial variable
}
\examples{
bin_kurtosis(trials = 5, prob = 0.5)
}
