setwd("C:/Users/admin/Desktop/Coursera/Exploratory_Data_Analysis")
mydata=read.table("household_power_consumption.txt",header=TRUE, sep=";", na="?");
library(dplyr);
mydata2 = filter(mydata, Date == "1/2/2007" | Date == "2/2/2007");
attach(mydata2);
Date_Time = paste(Date, Time);
mydata2$DateTime = strptime(Date_Time,"%d/%m/%Y %H:%M:%S");
png(filename = "plot2.png", width = 480, height = 480, units = "px");
plot(mydata2$DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)");
dev.off()