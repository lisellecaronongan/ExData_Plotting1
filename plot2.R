setwd("C:/Users/lare1849/Documents/Coursera/Course 4/Week 1")
data <- read.table("household_power_consumption.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#We only need the following dates:
data1 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
#Convert Character Date and Time into Calendar Date and TIme
datetime <- strptime(paste(data1$Date, data1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#Make Global active power numeric
GlobalActivePower<-as.numeric(data1$Global_active_power)
#Save the plot into PNG file.
png("plot2.png",width=480,height=480)
#Create the plot (X,Y) of Global Active Power and DateTime
plot(datetime, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
#Close the PNG file
dev.off()