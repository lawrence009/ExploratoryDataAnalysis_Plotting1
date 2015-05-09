#Read data into R filtering it with an sql statement. Only the filtered
#portion is processed by R so that files larger than R can otherwise handle
#can be accommodated.


filename <- "./household_power_consumption.txt"

#the common way; read all then subset 
# household_power_consumption <- read.csv(filename, sep=";", quote="", na.strings="?")
# household_power_consumption <- household_power_consumption[household_power_consumption$Date == "1/2/2007" |
#                                                            household_power_consumption$Date == "2/2/2007"
#                                                            , ]

#or use sqldf; still read the entire file but only the selected, i.e., filtered
#portion is processed by R
library(sqldf)
household_power_consumption <- read.csv.sql(filename,
                                            "select * from file where Date = '1/2/2007' or Date = '2/2/2007'",
                                            sep=";")


household_power_consumption$Time <- strptime(paste(household_power_consumption$Date, household_power_consumption$Time),
                                             "%d/%m/%Y %T")
household_power_consumption$Date <- as.Date(household_power_consumption$Time)
