# file dataProcessing.R contains the code the processes the original dataset
# and creates data.txt containing only requested dates.

data <- read.table("data.txt", sep=";", header=TRUE)

png("plot4.png", height = 480, width = 480, bg = "transparent")

par(mfrow = c(2,2))

with(data, plot(dt, Global_active_power, xlab = "", type = "l", ylab = "Global Active Power"))
with(data, plot(dt, Voltage, xlab = "datetime", ylab = "Voltage", type = "l"))
with(data, plot(dt, Sub_metering_1, type = "l", col = "black",
                xlab = "", ylab = "Energy sub metering"))
lines(dt, Sub_metering_2, col = "red")
lines(dt, Sub_metering_3, col = "blue")
legend("topright",  col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
with(dt, plot(dt, Global_reactive_power, xlab = "datetime", type = "l"))

dev.off()