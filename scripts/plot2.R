#set working directory
setwd("~/Programs/Coursera/Exploratory Data Analysis")

# loading the required data by calling the getdata function
source("getdata.R")
plot2_data <- getdata()

#merging date and time and creating a new column DateTime
plot2_data$DateTime <- as.POSIXct(paste(plot2_data$Date,plot2_data$Time), format="%m/%d/%Y %H:%M:%S")


#opening the device
png(filename = 'plot2.png',width = 480,height = 480,units = 'px')

# ploting the data  by taking Global active power  and dateTime as parameters

plot(plot2_data$DateTime,plot2_data$Global_active_power,ylab ="Global Active Power(Kilowatts)",xlab = '',type = 'l')

# turning the device off
dev.off()


