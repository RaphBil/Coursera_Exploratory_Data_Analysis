setwd("C:/Users/admin/Desktop/Coursera/Exploratory_Data_Analysis")
mydata=read.table("household_power_consumption.txt",header=TRUE, sep=";", na="?");
library(dplyr);
mydata2 = filter(mydata, Date == "1/2/2007" | Date == "2/2/2007");
attach(mydata2);
Date_Time = paste(Date, Time);
mydata2$DateTime = strptime(Date_Time,"%d/%m/%Y %H:%M:%S");
png(filename = "plot1.png", width = 480, height = 480, units = "px");
hist(mydata2$Global_active_power, col="red",main = "Global Active Power", breaks = 12 ,xlab="Global Active Power (kilowatts)", ylim = c(0,1200));
dev.off()