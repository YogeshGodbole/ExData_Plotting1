dataFile <- "household_power_consumption.txt"
powerdata <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[powerdata$Date %in% c("1/2/2007","2/2/2007") ,]

dateandtime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(dateandtime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()