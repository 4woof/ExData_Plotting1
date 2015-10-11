install.packages("data.table")
library(data.table)
require(data.table)
#set directory, load and check data
setwd<-"/Users/Hooshmand/Desktop/dasha/Coursera/Exploratory_data_analysis"
data <- fread("/Users/Hooshmand/Desktop/dasha/Coursera/Exploratory_data_analysis/household_power_consumption.txt", header = T)
head(data)
str(data)
#assign and eliminate NAs
data[data == "?"] <- NA
data_na_free <- data[complete.cases(data)]
#convert the entire dataset to one class
class(data_na_free) <- "data.frame"
#subset
clean_data <- data_na_free[ which(data_na_free$Date=='1/2/2007' | data_na_free$Date=='2/2/2007'), ]
#convert 3rd column into numeric for hist
clean_data$Global_active_power <- as.numeric(clean_data$Global_active_power)
#create png with hist
png(file="plot1.png",width=480,height=480)
hist(clean_data$Global_active_power, xlab = "Global Active Power (kilowatts)", main="Global Active Power", labels=c(2,4,6),  col ="red" ) 
dev.off()
