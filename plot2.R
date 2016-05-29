#read file
power <- read.table("household_power_consumption.txt",sep = ";",header = TRUE,na.strings = "?")
#subset only specific dates data
power_data <- subset(power, Date == "1/2/2007"| Date == "2/2/2007")
#combine date and time
datetime <- strptime(paste(power_data$Date,power_data$Time,sep = " "),format = "%d/%m/%Y %H:%M:%S")
#prepare data for plot
gap <- as.numeric(power_data$Global_active_power)
#define png file
png(filename = "plot2.png",width = 480,height = 480)
#plot line chart
plot(datetime, gap, type="l", xlab="", ylab="Global Active Power (kilowatts)")
#close file
dev.off()
