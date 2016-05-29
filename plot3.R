#read file
power <- read.table("household_power_consumption.txt",sep = ";",header = TRUE,na.strings = "?")
#subset only specific dates data
power_data <- subset(power, Date == "1/2/2007"| Date == "2/2/2007")
#combine date and time
datetime <- strptime(paste(power_data$Date,power_data$Time,sep = " "),format = "%d/%m/%Y %H:%M:%S")
#define png file
png(filename = "plot3.png",width = 480,height = 480)
#plot line chart
plot(datetime, power_data$Sub_metering_1, type="l", xlab="", ylab="Energy Sub metering")
lines(datetime,power_data$Sub_metering_2,col = "red")
lines(datetime,power_data$Sub_metering_3,col = "blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lty = 1,lwd = 2)
#close file
dev.off()
