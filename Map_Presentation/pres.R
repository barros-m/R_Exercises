################################################################
# Worldmap with Furniture Sales
# By David Maillie 2018
# Note - replace = with vector assignment as YouTube doesn't allow angle brackets.
################################################################

library("readxl")
library(ggmap)
library(tidyverse)
library(dplyr) 
rm(mapData)
rm(Combined)
#library("readxl", lib.loc="C:/Program Files/R/R-3.4.3/library")
## TBC
mapData <- read_xlsx("C:\\Users\\mathe\\Desktop\\R_Exercises\\Map_Presentation\\InternationalFurniturePartSales2.xlsx")

print(mapData)
Combined <- WorldData(mapData$Country %in% mapData$Country, )
Combined$value <- mapData$Sales[match(Combined$region, mapData$Country)]

Countries <-  unique(Combined$region)
CDF <- data.frame(label1=Countries)
for(i in CDF){
  Combined$value <- ifelse(Combined$region %in% CDF$label1[i], (mapData$Sales), Combined$value)
}

ggplot(Combined, aes(x=long, y=lat, group = group, fill = value)) + 
  geom_polygon(colour = "white") +
  scale_fill_continuous(low = "blue",
                        high = "red",
                        guide="colorbar") +
  theme_bw()  +
  labs(fill = "Sales Amt" ,title = "International Furniture Part Sales", x="", y="") +
  scale_y_continuous(breaks=c()) +
  scale_x_continuous(breaks=c()) +
  theme(panel.border =  element_blank())
############