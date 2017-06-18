## Set work directory and download data
setwd("~/Documents/Coursera/Data Science/Reproducible Research/project1/reproducible1")
data_link <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip"
if(! file.exists("data.zip")){
    download.file(data_link, "data.zip")
}

## Load data
unzip("data.zip")
data <- read.csv("activity.csv")
View(data)
