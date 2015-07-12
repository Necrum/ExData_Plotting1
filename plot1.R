# get data
source("read_data.R")

# get png device
png(filename = "plot1.png", width = 480, height = 480)

# set proper font in Linux
par(family="cairo")
# draw red histogram
hist(data$Global_active_power, col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()
