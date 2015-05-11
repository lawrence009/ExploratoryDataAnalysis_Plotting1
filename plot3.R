if (!exists('household_power_consumption')) {
    source("load.R")
}

png("plot3.png", width=480, height=480)

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

dev.off()