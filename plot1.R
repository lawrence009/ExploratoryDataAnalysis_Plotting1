#source("load.R")

hist(household_power_consumption$Global_active_power,
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power",
     col  = "red")

dev.copy(png, file = "Plot1.png")
dev.off()