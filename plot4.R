# get data
source("read_data.R")

# get png device
png(filename = "plot4.png", width = 480, height = 480)

# set proper font in Linux and number of rows/columns
par(family="cairo", mfrow=c(2,2))

# draw first plot
plot(data$Datetime, data$Global_active_power, type="l",
     main="", xlab="", ylab="Global Active Power")

# draw second plot
plot(data$Datetime, data$Voltage, type="l",
     main="", xlab="datetime", ylab="Voltage")

# draw third plot
plot(data$Datetime, data$Sub_metering_1, type="l",
     main="", xlab="", ylab="Energy sub metering")
# draw Sub_metering_2 with red color
lines(data$Datetime, data$Sub_metering_2, col="red")
# draw Sub_metering_3 with blue color
lines(data$Datetime, data$Sub_metering_3, col="blue")
# draw legend
legend("topright", bty="n", lwd=1, col=c("black", "red", "blue"),
                   legend=c("Sub_metering_1", "Sub_metering_2",
                   "Sub_metering_3"))

# draw fourth plot
plot(data$Datetime, data$Global_reactive_power, type="l",
     main="", xlab="datetime", ylab="Global_reactive_power")

dev.off()
