% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tracedFunctions.R
\name{recordr_getObject}
\alias{recordr_getObject}
\title{Provenance wrapper function for dataone::getObject}
\usage{
recordr_getObject(node, pid, ...)
}
\arguments{
\item{node}{The DataONE node to get the object from}

\item{pid}{The persistent identifier for the object}

\item{...}{additional parameters}
}
\description{
Override the dataone::getObject method and record a provenance relationship
for the object that was downloaded.
}
\note{
This function is not intended to be called directly by a user.
}

