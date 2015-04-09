# file dataProcessing.R contains the code that processes the original dataset
# and creates data.txt containing only requested dates.

data <- read.table("data.txt", sep=";", header=TRUE)

png(filename = "plot1.png", 
    width = 480, height = 480, 
    bg = "transparent")

with(data, hist(Global_active_power, 
            col = "red",
            xlab = "Global Active Power (killowatts)",
            main = "Global Active Power"),
            breaks = 12, 
            ylim = c(0, 1200))
dev.off()
