# get data
source("read_data.R")

# get png device
png(filename = "plot3.png", width = 480, height = 480)

# set proper font in Linux
par(family="cairo")
# draw Sub_metering_1
plot(data$Datetime, data$Sub_metering_1, type="l",
     main="", xlab="", ylab="Energy sub metering")

# draw Sub_metering_2 with red color
lines(data$Datetime, data$Sub_metering_2, col="red")

# draw Sub_metering_3 with blue color
lines(data$Datetime, data$Sub_metering_3, col="blue")

# draw legend
legend("topright", lwd=1, col=c("black", "red", "blue"),
                   legend=c("Sub_metering_1", "Sub_metering_2",
                   "Sub_metering_3"))
dev.off()
