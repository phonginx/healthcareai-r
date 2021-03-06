% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predict.R
\name{get_cutoffs}
\alias{get_cutoffs}
\title{Get cutoff values for group predictions}
\usage{
get_cutoffs(x)
}
\arguments{
\item{x}{Data frame from \code{\link{predict.model_list}} where
\code{outcome_groups} or \code{risk_groups} was specified}
}
\value{
A message is printed about the thresholds. If \code{outcome_groups}
  were defined the return value is a single numeric value, the threshold used
  to separate predicted probabilities into outcome groups. If
  \code{risk_groups} were defined the return value is a data frame with one
  column giving the group names and another column giving the minimum
  predicted probability for an observation to be in that group.
}
\description{
Get cutoff values for group predictions
}
\examples{
machine_learn(pima_diabetes[1:20, ], patient_id, outcome = diabetes,
              models = "xgb", tune = FALSE) \%>\%
  predict(risk_groups = 5) \%>\%
  get_cutoffs()
}
