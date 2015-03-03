setwd("C:/Users/admin/Desktop/Coursera/Exploratory_Data_Analysis")
mydata=read.table("household_power_consumption.txt",header=TRUE, sep=";", na="?");
library(dplyr);
mydata2 = filter(mydata, Date == "1/2/2007" | Date == "2/2/2007");
attach(mydata2);
Date_Time = paste(Date, Time);
mydata2$DateTime = strptime(Date_Time,"%d/%m/%Y %H:%M:%S");
png(filename = "plot3.png", width = 480, height = 480, units = "px");
plot(mydata2$DateTime, mydata2$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering");
lines(mydata2$DateTime,mydata2$Sub_metering_2, col="red");
lines(mydata2$DateTime,mydata2$Sub_metering_3, col="blue");
legend("topright",col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1);
dev.off()