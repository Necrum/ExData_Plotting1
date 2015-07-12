# get data
source("read_data.R")

# get png device
png(filename = "plot2.png", width = 480, height = 480)

# set proper font in Linux
par(family="cairo")
# draw plot
plot(data$Datetime, data$Global_active_power, type="l",
     main="", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
