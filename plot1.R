if (!exists('household_power_consumption')) {
    source("load.R")
}

hist(household_power_consumption$Global_active_power,
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power",
     col  = "red")

dev.copy(png, file = "plot1.png", width = 480, height = 480) #default is 480px x 480px 
dev.off()