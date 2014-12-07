#set working directory
setwd("~/Programs/Coursera/Exploratory Data Analysis")

# loading the required data by calling the getdata function
source("getdata.R")
plot3_data <- getdata()

#merging date and time and creating a new column DateTime
plot3_data$DateTime <- as.POSIXct(paste(plot3_data$Date,plot3_data$Time), format="%m/%d/%Y %H:%M:%S")


#opening the device
png(filename = 'plot3.png',width = 480,height = 480,units = 'px')

# ploting the data  by taking  dateTime, Submetering_1  as parameters
plot(plot3_data$DateTime,plot3_data$Sub_metering_1,ylab ="Energy sub metering",xlab = '',type = 'l',col="Black")

#adding second submetering to the graph
lines(plot3_data$DateTime,plot3_data$Sub_metering_2,col="Red")

#adding third submetering to the graph
lines(plot3_data$DateTime,plot3_data$Sub_metering_3,col="Blue")

#adding legend
legend("topright",legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('Black','Red','Blue'),lty = "solid")


# turning the device off
dev.off()



