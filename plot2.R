#2.Creating time series plot for Global Active Power
#NB: data uploading and cleaning process is described under plot1.R and ommited here

#Convert variable Date into date type, mergin Date and Time variables 
#and applying required format ("Year-month-date hours-minutes-seconds") 
date_form <- as.Date(clean_data$Date, format = "%d/%m/%Y")
new_date_time <- paste(date_form,clean_data$Time)
clean_data$Time <- strptime(new_date_time, format = "%Y-%m-%d %H:%M:%S")
str(clean_data)

time_grp <- subset(clean_data, select= c(Time, Global_active_power))
png(file="plot2.png",width=480,height=480)
par(mar = c(4, 4, 2, 1)) #set margin size
plot(time_grp, type="l", xlab=" ", ylab = "Global active power (kilowatts)")
dev.off()