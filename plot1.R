library(data.table)
powerConsumption <- data.table(read.table("./household_power_consumption.txt", sep=";", header=TRUE))
tail(powerConsumption)
powerConsumptionFeb2007 <- powerConsumption[powerConsumption$Date == "1/2/2007" | powerConsumption$Date == "2/2/2007"]

hist(as.numeric(powerConsumptionFeb2007$Global_active_power), main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")