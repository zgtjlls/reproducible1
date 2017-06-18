## libraries
library(dplyr)

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

## histogram of steps for each day
table(data$date)
data_steps <- data %>% group_by(date) %>% summarize(total_step = sum(steps, na.rm = TRUE))
hist(data_steps$total_step, breaks = 10, 
     main = "Histogram of total number of steps each day", 
     xlab = "total number of steps each day")
