source("getData.R")
electricData <- getData()
dateTime <- strptime(paste(electricData$Date,electricData$Time),format = "%d/%m/%Y %H:%M:%S")


subMetering1 <- as.numeric(electricData$Sub_metering_1)
subMetering2 <- as.numeric(electricData$Sub_metering_2)
subMetering3 <- as.numeric(electricData$Sub_metering_3)
png(filename = "plot3.png")
plot(dateTime,subMetering1,type = "l",ylab = "Energy sub metering")
lines(dateTime,y = subMetering2,col= "red")
lines(dateTime,y = subMetering3,col= "blue")
legend("topright",legend = c("subMetering1","subMetering2","subMetering1"),fill = c("black","red","blue"))
graphics.off()