rm(list = ls())

getwd()

setwd("C:/Users/hp/Documents/R 2019/data_science_specialization/Data analysis - project 1")

#Exploratory Data Analysis: Project 1

tot<-read.table("household_power_consumption.txt",sep=';',header=T,dec=',',stringsAsFactors = F)

## Summary ## This assigment aims at providing the R code required for plotting 4 pre-defined plots

## Emily Silva Araujo

View(tot)

# Plot 1

#Reading, naming and subsetting power consumption data

power <-read.table("household_power_consumption.txt",sep=';',header=T,dec=',',stringsAsFactors = F)

names(power) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

subpower <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

#calling the basic plot function
hist(as.numeric(as.character(subpower$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")


# annotating graph
title(main="Global Active Power")


dev.off()
