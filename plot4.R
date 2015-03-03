setwd("C:/Users/admin/Desktop/Coursera/Exploratory_Data_Analysis")
mydata=read.table("household_power_consumption.txt",header=TRUE, sep=";", na="?");
library(dplyr);
mydata2 = filter(mydata, Date == "1/2/2007" | Date == "2/2/2007");
attach(mydata2);
png(filename = "plot4.png", width = 480, height = 480, units = "px");
par(mfrow=c(2,2));
plot(mydata2$DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power");
plot(mydata2$DateTime, Voltage, type="l", xlab="datetime", ylab="Voltage");

plot(mydata2$DateTime, mydata2$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering");
lines(mydata2$DateTime,mydata2$Sub_metering_2, col="red");
lines(mydata2$DateTime,mydata2$Sub_metering_3, col="blue");
legend("topright",col=c("black","red","blue"),c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1, bty="n");

plot(mydata2$DateTime, Global_reactive_power, xlab="datetime", ylab="Global_reactive_power",type="l");
dev.off()