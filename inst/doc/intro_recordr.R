## ---- include = FALSE----------------------------------------------------
library(recordr)
knitr::opts_chunk$set(fig.dpi = 96)

## ----echo=F,warning=F,message=F,eval=F-----------------------------------
#  # For recordr package maintainer only
#  library(recordr)
#  rc <- new("Recordr")
#  deleteRuns(rc, seq=1:1000)

## ----record,warning=F,message=F------------------------------------------
library(recordr)
suppressWarnings(require(ggplot2))
rc <- new("Recordr")
sampleScript <- system.file("extdata/EmCoverage.R", package="recordr")
firstRunId <- record(rc, sampleScript , tag="first recordr run")

## ----listRuns,warning=F,message=F----------------------------------------
listRuns(rc, tag="first")

## ----console session,warning=F,message=F,eval=F--------------------------
#  startRecord(rc, tag="first console run")
#  
#  df <- read.csv(file = system.file("./extdata/coverages_2001-2010.csv", package="recordr"))
#  endocladia_coverage <- df[df$final_classification=="endocladia muricata",]
#  myDir <- tempdir()
#  csvOutFile <- sprintf("%s/Endocladia_muricata.csv", myDir)
#  write.csv(endocladia_coverage, file = csvOutFile)
#  
#  endRecord(rc)

## ----viewRuns,warning=F,message=F,eval=T---------------------------------
viewRuns(rc, id=firstRunId, sections=c("details", "used", "generated"))

## ---- eval=F-------------------------------------------------------------
#  df <- read.csv(file = ("/usr/smith/data/coverages_2001-2010.csv", package="recordr"))

## ---- eval=F-------------------------------------------------------------
#  df <- utils::read.csv(file = ("/usr/smith/data/coverages_2001-2010.csv", package="recordr"))

## ----cleanup, echo=F,warning=F,message=F,eval=T--------------------------
# Remove the runs created by the examples.
rc <- new("Recordr")
deleteRuns(rc, id=firstRunId, quiet=T)

