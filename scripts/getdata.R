
getdata <- function() {
#set working directory
setwd("~/Programs/Coursera/Exploratory Data Analysis")

# loading required packages
library(data.table)

# Assuming the data file is downloaded and unzipped to working directory
# Reading the entire data set to variable
power_cosumption <- read.table("~/Programs/Coursera/Exploratory Data Analysis/household_power_consumption.txt",header = TRUE, sep = ';',na.strings = '?')

# Filtering the required data for further analysis
power_cosumption_data <- power_cosumption[power_cosumption$Date=='1/2/2007' | power_cosumption$Date=='2/2/2007',]
#changing the date format to mm/dd/yyyy format
power_cosumption_data$Date <- strftime(strptime(power_cosumption_data$Date,"%d/%m/%Y"),"%m/%d/%Y")

#removing the large data set variable from the environment
rm(power_cosumption)

#returning the required data set

power_cosumption_data
}

