hh <- read.table("household_power_consumption.txt", header = TRUE, colClasses=c("character", "character", "numeric",
                                                                                "numeric", "numeric", "numeric",
                                                                                "numeric", "numeric", "numeric"), sep = ";", na = "?")
head(hh)
h <- subset(hh, Date == "1/2/2007" | Date == "2/2/2007")
dt <- with(h, paste(Date, Time))
h$dt <- strptime(time, "%d/%m/%Y %H:%M:%S")
rownames(h) <- 1:nrow(h)
write.table(h, "data.txt", sep=";")
