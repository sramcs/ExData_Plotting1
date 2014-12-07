#set working directory
setwd("~/Programs/Coursera/Exploratory Data Analysis")

# loading the required data by calling the getdata function
source("getdata.R")
plot1_data <- getdata()

#opening the device
png(filename = 'plot1.png',width = 480,height = 480,units = 'px')

# ploting the data as histogram by taking Global active power as parameter and coloring in Red

hist(plot1_data$Global_active_power,col='red',main=" Global Active Power",xlab ="Global Active Power(Kilowatts)")

# turning the device off
dev.off()

