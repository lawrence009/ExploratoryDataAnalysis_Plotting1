if (!exists('household_power_consumption')) {
    source("load.R")
}

plot(household_power_consumption$Time,
     household_power_consumption$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

dev.copy(png, file = "plot2.png", width = 480, height = 480) #default is 480px x 480px
dev.off()