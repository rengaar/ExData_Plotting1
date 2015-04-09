data <- read.table("data.txt", sep=";", header=TRUE)

png("plot3.png", height = 480, width = 480, bg = "transparent")

with(data, plot(dt, Sub_metering_1, type = "l", col = "black",
     xlab = "", ylab = "Energy sub metering"))
lines(dt, Sub_metering_2, col = "red")
lines(dt, Sub_metering_3, col = "blue")
legend("topright",  col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd = 1)
       
dev.off()