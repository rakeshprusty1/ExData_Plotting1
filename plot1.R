#read file
power <- read.table("household_power_consumption.txt",sep = ";",header = TRUE,na.strings = "?")
#subset only 1/2/2007 and 2/2/2007 data
power_data <- subset(power, Date == "1/2/2007"| Date == "2/2/2007")
#prepare numeric data for histogram
gap <- as.numeric(power_data$Global_active_power)
#define png file
png(filename = "plot1.png",width = 480,height = 480)
#create histogram
hist(gap, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
#close file
dev.off()