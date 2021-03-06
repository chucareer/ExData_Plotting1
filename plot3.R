##Plot 3

powerData <- readRDS("powerData.rda")
png(file = "plot3.png", width = 480, height = 480)
plot(powerData$Datetime, powerData$Sub_metering_1, col = "darkgrey", type = "l",
     xlab = "", ylab = "Energy sub metering")
lines(powerData$Datetime, powerData$Sub_metering_2, col = "red")
lines(powerData$Datetime, powerData$Sub_metering_3, col = "blue")
legend("topright", pch =1 , col = c("darkgrey", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
