# This code read in the data and plot figure 2 of exploratory data analysis project 1
electric <- read.table("household_power_consumption.txt",
                       skip=66637,nrows=2880,sep=";")
electric <- electric[electric[,"V3"]!="?",]
day = strptime(paste(electric[,"V1"],electric[,"V2"]), "%d/%m/%Y %T")
png("plot2.png",width=480,height=480)
plot(day,electric[,"V3"],xlab="",ylab="Global Active Power (kilowatts)",type="l")
dev.off()