library(RColorBrewer)
library(rworldmap)
library(readxl)

mapData <- read_xlsx("C:\\Users\\mathe\\Desktop\\R_Exercises\\Map_Presentation\\InternationalFurniturePartSales2.xlsx")

head(mapData)
mapData <- aggregate(mapData$Sales, by=list(Country=mapData$Country, City=mapData$City), FUN=sum)
colnames(mapData)[colnames(mapData)=="x"] <- "International Furniture Part Sales"

WorldMapFurnitureSales <-  joinCountryData2Map(mapData,
                                           nameJoinColumn="Country",
                                           joinCode="NAME")

colourPalette <- RColorBrewer::brewer.pal(10, 'Spectral') #

mapCountryData(WorldMapFurnitureSales,
               nameColumnToPlot = 'International Furniture Part Sales',
               catMethod = 'fixedWidth',
               colourPalette = colourPalette,
               numCats = 100)