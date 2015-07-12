# read file
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";",
                   na.strings="?", colClasses=c("character", "character",
                   "numeric", "numeric", "numeric", "numeric", "numeric",
                   "numeric", "numeric"))

# filter data
data <- data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
# get datetime
data$Datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
