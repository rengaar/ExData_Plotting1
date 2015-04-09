# file dataProcessing.R contains the code the processes the original dataset
# and creates data.txt containing only requested dates.

data <- read.table("data.txt", sep=";", header = TRUE)

png(filename = "plot2.png", width = 480, height = 480, bg = "transparent")

with(data, plot(dt, Global_active_power, type="l",xlab = "",
             ylab = "Global Active Power (kilowatts)"))

dev.off()
