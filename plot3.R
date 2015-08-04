# This code read in the data and plot figure 3 of exploratory data analysis project 1
electric <- read.table("household_power_consumption.txt",
                       skip=66637,nrows=2880,sep=";")
day = strptime(paste(electric[,"V1"],electric[,"V2"]), "%d/%m/%Y %T")
png("plot3.png",width=480,height=480)
plot(day,electric[,"V7"],xlab="",ylab="Energy sub metering",type="l")
lines(day,electric[,"V8"],col="red")
lines(day,electric[,"V9"],col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
       ,col=c("black","red","blue"),lty=1)
dev.off()