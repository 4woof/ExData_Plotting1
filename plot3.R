#3 Creating time series plot for Energy Sub metering 1, Energy Sub metering 2, and Energy Sub metering 3
#NB: data uploading and cleaning process is described under plot1.R and ommited here

#converting character variables Sub_metering_1 and Sub_metering_2 into numeric ones
clean_data$Sub_metering_1  <- as.numeric(clean_data$Sub_metering_1)
clean_data$Sub_metering_2  <- as.numeric(clean_data$Sub_metering_2)

png(file="plot3.png",width=480,height=480)
plot(clean_data$Time, clean_data$Sub_metering_1, type="l", col = "black", xlab="", ylab = "Energy sub metering")
lines(clean_data$Time, clean_data$Sub_metering_2, type="l", col = "red")
lines(clean_data$Time, clean_data$Sub_metering_3, type="l", col = "blue")
legend('topright', legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c('black', 'red', 'blue'), cex=0.9)
dev.off()
