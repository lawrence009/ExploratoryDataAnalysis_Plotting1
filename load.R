library(sqldf)
filename <- "./household_power_consumption.txt"
# household_power_consumption <- read.csv(filename, sep=";", quote="", na.strings="?")
household_power_consumption <- read.csv.sql(filename,
                                            "select * from file where Date = '1/2/2007' or Date = '2/2/2007'",
                                            sep=";")
# close connection
sqldf()


household_power_consumption$Time <- strptime(paste(household_power_consumption$Date, household_power_consumption$Time),
                                             "%d/%m/%Y %T")
household_power_consumption$Date <- as.Date(household_power_consumption$Time)
