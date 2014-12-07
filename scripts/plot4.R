#set working directory
setwd("~/Programs/Coursera/Exploratory Data Analysis")

# loading the required data by calling the getdata function
source("getdata.R")
plot4_data <- getdata()

#merging date and time and creating a new column DateTime
plot4_data$DateTime <- as.POSIXct(paste(plot4_data$Date,plot4_data$Time), format="%m/%d/%Y %H:%M:%S")


#opening the device
png(filename = 'plot4.png',width = 480,height = 480,units = 'px')

#making four subplots
par(mfrow=c(2,2))

# For subplot (1,1)
plot(plot4_data$DateTime,plot4_data$Global_active_power,ylab ="Global Active Power(Kilowatts)",xlab = '',type = 'l')

# For subplot (1,2)
plot(plot4_data$DateTime,plot4_data$Voltage,ylab ="Voltage",xlab = 'datetime',type = 'l')

# For subplot (2,1)
plot(plot4_data$DateTime,plot4_data$Sub_metering_1,ylab ="Energy sub metering",xlab = '',type = 'l',col="Black")
lines(plot4_data$DateTime,plot4_data$Sub_metering_2,col="Red")
lines(plot4_data$DateTime,plot4_data$Sub_metering_3,col="Blue")
legend("topright",legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('Black','Red','Blue'),lty = "solid")

# For subplot (2,2)
plot(plot4_data$DateTime,plot4_data$Global_reactive_power,ylab ="Global_reactive_power",xlab = 'datetime',type = 'l')

# turning the device off
dev.off()




