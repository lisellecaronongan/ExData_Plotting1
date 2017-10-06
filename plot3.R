setwd("C:/Users/lare1849/Documents/Coursera/Course 4/Week 1")
data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#We only need the following dates:
data1 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
#Convert Character Date and Time into Calendar Date and TIme
datetime <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#Make the following numeric:
subMetering1 <- as.numeric(subsetdata$Sub_metering_1)
subMetering2 <- as.numeric(subsetdata$Sub_metering_2)
subMetering3 <- as.numeric(subsetdata$Sub_metering_3)
#Save the plot into PNG file.
png("plot3.png",width=480,height=480)
#Create the Line (X,Y) of DateTime and subMetering1
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
#Add the Line XY plot of Submetering2 using color red
lines(datetime, subMetering2, type="l", col="red")
#Add the Line XY plot of Submetering3 using color blue
lines(datetime, subMetering3, type="l", col="blue")
#Create Legends
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
#Close the PNG file
dev.off()