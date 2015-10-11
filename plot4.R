#4. Creating a 2x2 plot 
#NB: data uploading and cleaning process is described under plot1.R and ommited here

#open png device
png(file="plot4.png",width=480,height=480)

#set up the position of plots
par(mfrow = c(2, 2))
with(clean_data, {

#plot upper left
plot(clean_data$Time, clean_data$Global_active_power, type="l", xlab=" ", ylab = "Global active power (kilowatts)")
#plot upper right
plot(clean_data$Time, clean_data$Voltage, type="l", xlab="datetime", ylab="Voltage")
#plot lower left
plot(clean_data$Time, clean_data$Sub_metering_1, type="l", col = "black", xlab="", ylab = "Energy sub metering")
lines(clean_data$Time, clean_data$Sub_metering_2, type="l", col = "red")
lines(clean_data$Time, clean_data$Sub_metering_3, type="l", col = "blue")
legend('topright', legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, bty = "n", col=c('black', 'red', 'blue'), cex=0.9)
#plot lower right
plot(clean_data$Time, clean_data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
})
#close png device
dev.off()

