% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/FileMetadata.R
\docType{methods}
\name{readFileMeta}
\alias{readFileMeta}
\alias{readFileMeta,Recordr-method}
\title{Retrieve saved file metadata for one or more files}
\usage{
readFileMeta(recordr, ...)

\S4method{readFileMeta}{Recordr}(recordr, fileId = as.character(NA),
  executionId = as.character(NA), filePath = as.character(NA),
  sha256 = as.character(NA), user = as.character(NA),
  access = as.character(NA), format = as.character(NA),
  orderBy = as.character(NA), sortOrder = "ascending", delete = FALSE,
  ...)
}
\arguments{
\item{recordr}{A recordr object}

\item{...}{Additional parameters}

\item{fileId}{The id of the file to search for}

\item{executionId}{A character value that specifies an execution identifier to search for.}

\item{filePath}{The path name of the file to search for.}

\item{sha256}{The sha256 checksum value for the uncompressed file.}

\item{user}{The user that ran the execution that created or accessed the file.}

\item{access}{The type of access for the file. Values include "read", "write", "execute"}

\item{format}{The format type of the object, e.g. "text/plain"}

\item{orderBy}{The column to sort the result set by.}

\item{sortOrder}{The sort type. Values include ("ascending", "descending")}

\item{delete}{a \code{"logical"}, if TRUE, the selected file entries are deleted (default: FALSE).}
}
\value{
A dataframe containing file metadata objects
}
\description{
File metadata is retrived from the recordr database table \emph{filemeta}
based on search parameters.
}
\details{
This method is used internally by the recordr package.
}
\seealso{
\code{\link[=FileMetadata-class]{FileMetadata}} { class description}
}

