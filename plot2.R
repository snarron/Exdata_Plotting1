library(data.table)
library(lubridate)
powerConsumption <- data.table(read.table("./household_power_consumption.txt", sep=";", header=TRUE, na.strings="?"))
# tail(powerConsumption)
powerConsumptionFeb2007 <- powerConsumption[powerConsumption$Date == "1/2/2007" | powerConsumption$Date == "2/2/2007"]
powerConsumptionFeb2007$datetime <- as.POSIXct(paste(as.Date(powerConsumptionFeb2007$Date, format="%d/%m/%Y"), powerConsumptionFeb2007$Time), format="%Y-%m-%d %H:%M")

plot(x=powerConsumptionFeb2007$datetime, y=powerConsumptionFeb2007$Global_active_power, type="l", ylab="Global Active Power (kilowatts)",xlab="")

dev.copy(png, file="plot2.png")
dev.off()
