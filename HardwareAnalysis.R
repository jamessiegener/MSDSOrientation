setwd("~/MSDS/MSDSOrientation")
data <- read.csv("MSDS-Hardware.csv")
library(tidyverse)
library(ggplot2)
timestamps <- data$Timestamp
data["Timestamp"] <- as.POSIXct(data$Timestamp, format = "%m/%d/%Y %H:%M")
data["Year"] <- format(data["Timestamp"], format="%Y")
data <- data[-c(1),]
data <- data[data$CPU.Cycle.Rate..in.GHz. < 10,]
plot <- ggplot(data, aes(x=CPU.Cycle.Rate..in.GHz., fill=as.factor(Year))) +
  geom_histogram() +
  labs(title ="CPU Cycle Rate Across Cohort Years", 
       x="CPU Cycle Rate (GHz)", 
       y="Count", 
       fill="Year") +  # This will label the legend
  scale_fill_brewer(palette="Set1")  # Optional: specify a color palette
print(plot)
