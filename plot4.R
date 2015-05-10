if (!exists('household_power_consumption')) {
    source("load.R")
}

par(mfcol = c(2, 2), cex = 0.7)

#plot 1
plot(household_power_consumption$Time,
     household_power_consumption$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power")


#plot 2
with(household_power_consumption,
     plot(Time, Sub_metering_1,
          type = "l",
          xlab = "",
          ylab = "Energy sub metering"))

with(household_power_consumption,
     lines(Time, Sub_metering_2,
           col = "red"))

with(household_power_consumption,
     lines(Time, Sub_metering_3,
           col = "blue"))

legend("topright",
       col    = c("black", "red", "blue"),
       lty    = c(1, 1, 1), # gives the legend approriate line symbols
       legend = colnames(household_power_consumption[7:9]))


#plot 3
with(household_power_consumption,
     plot(Time, Voltage,
          type = "l",
          xlab = "datetime",
          ylab = "Voltage"))


#plot 4
with(household_power_consumption,
     plot(Time, Global_reactive_power,
          type = "l"))

dev.copy(png, file = "plot4.png", width = 480, height = 480) #default is 480px x 480px
dev.off()