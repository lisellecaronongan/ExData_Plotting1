setwd("C:/Users/lare1849/Documents/Coursera/Course 4/Week 1")
data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#We only need the following dates:
data1 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
#Save the plot into PNG file.
png("plot1.png",width=480,height=480)
#Create histogram of Global Active Power
hist(as.numeric(data1$Global_active_power), col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
#Close the PNG file
dev.off()