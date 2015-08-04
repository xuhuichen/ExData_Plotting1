# This code read in the data and plot figure 1 of exploratory data analysis project 1
electric <- read.table("household_power_consumption.txt",
                       skip=66637,nrows=2880,sep=";")
electric <- electric[electric[,"V3"]!="?",]
png("plot1.png",width=480,height=480)
with(electric,hist(V3,main="Global Active Power",xlab="Global Active Power (kilowatts)",
     col="red"))
dev.off()