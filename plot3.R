if (!exists('household_power_consumption')) {
    source("load.R")
}

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

dev.copy(png, file = "plot3.png", width = 800, height = 800) #default is 480px x 480px
dev.off()