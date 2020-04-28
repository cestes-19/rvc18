

library(rio)
library("magrittr")
library("tidyverse")

### PLOT ON FISH COUNT PER REEF AND REGION

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF")

## upload output from RHI Fish count per

All_data <- read_csv("All_regions_fish_count.csv")

## remove vars

All_data$vars <- NULL


## Dry Tortugas 

DT_count <- filter(All_data, REGION == "DT")

DT_herb_count <- filter(DT_count, Type == "Herbivorous")

DT_comm_count <- filter(DT_count, Type == "Commercial")


DT_1999_herb <- filter(DT_herb_count, Year == "1999")

DT_1999_herb_sum <- sum(DT_1999_herb$n)
DT_1999_herb_merge <- data.frame(DT_1999_herb_sum)


DT_1999_herb_merge$Years <- "1999"
colnames(DT_1999_herb_merge) <- c("Herbivorous","Year")




DT_1999_comm <- filter(DT_comm_count, Year == "1999")

DT_1999_comm_sum <- sum(DT_1999_comm$n)
DT_1999_comm_merge <- data.frame(DT_1999_comm_sum)


DT_1999_comm_merge$Years <- "1999"
colnames(DT_1999_comm_merge) <- c("Commercial","Year")



DT_1999 <- merge(DT_1999_herb_merge,DT_1999_comm_merge)



DT_2000_herb <- filter(DT_herb_count, Year == "2000")

DT_2000_herb_sum <- sum(DT_2000_herb$n)
DT_2000_herb_merge <- data.frame(DT_2000_herb_sum)


DT_2000_herb_merge$Years <- "2000"
colnames(DT_2000_herb_merge) <- c("Herbivorous","Year")




DT_2000_comm <- filter(DT_comm_count, Year == "2000")

DT_2000_comm_sum <- sum(DT_2000_comm$n)
DT_2000_comm_merge <- data.frame(DT_2000_comm_sum)


DT_2000_comm_merge$Years <- "2000"
colnames(DT_2000_comm_merge) <- c("Commercial","Year")



DT_2000 <- merge(DT_2000_herb_merge,DT_2000_comm_merge)



DT_2004_herb <- filter(DT_herb_count, Year == "2004")

DT_2004_herb_sum <- sum(DT_2004_herb$n)
DT_2004_herb_merge <- data.frame(DT_2004_herb_sum)


DT_2004_herb_merge$Years <- "2004"
colnames(DT_2004_herb_merge) <- c("Herbivorous","Year")




DT_2004_comm <- filter(DT_comm_count, Year == "2004")

DT_2004_comm_sum <- sum(DT_2004_comm$n)
DT_2004_comm_merge <- data.frame(DT_2004_comm_sum)


DT_2004_comm_merge$Years <- "2004"
colnames(DT_2004_comm_merge) <- c("Commercial","Year")



DT_2004 <- merge(DT_2004_herb_merge,DT_2004_comm_merge)



DT_2006_herb <- filter(DT_herb_count, Year == "2006")

DT_2006_herb_sum <- sum(DT_2006_herb$n)
DT_2006_herb_merge <- data.frame(DT_2006_herb_sum)


DT_2006_herb_merge$Years <- "2006"
colnames(DT_2006_herb_merge) <- c("Herbivorous","Year")




DT_2006_comm <- filter(DT_comm_count, Year == "2006")

DT_2006_comm_sum <- sum(DT_2006_comm$n)
DT_2006_comm_merge <- data.frame(DT_2006_comm_sum)


DT_2006_comm_merge$Years <- "2006"
colnames(DT_2006_comm_merge) <- c("Commercial","Year")



DT_2006 <- merge(DT_2006_herb_merge,DT_2006_comm_merge)



DT_2008_herb <- filter(DT_herb_count, Year == "2008")

DT_2008_herb_sum <- sum(DT_2008_herb$n)
DT_2008_herb_merge <- data.frame(DT_2008_herb_sum)


DT_2008_herb_merge$Years <- "2008"
colnames(DT_2008_herb_merge) <- c("Herbivorous","Year")




DT_2008_comm <- filter(DT_comm_count, Year == "2008")

DT_2008_comm_sum <- sum(DT_2008_comm$n)
DT_2008_comm_merge <- data.frame(DT_2008_comm_sum)


DT_2008_comm_merge$Years <- "2008"
colnames(DT_2008_comm_merge) <- c("Commercial","Year")



DT_2008 <- merge(DT_2008_herb_merge,DT_2008_comm_merge)



DT_2010_herb <- filter(DT_herb_count, Year == "2010")

DT_2010_herb_sum <- sum(DT_2010_herb$n)
DT_2010_herb_merge <- data.frame(DT_2010_herb_sum)


DT_2010_herb_merge$Years <- "2010"
colnames(DT_2010_herb_merge) <- c("Herbivorous","Year")




DT_2010_comm <- filter(DT_comm_count, Year == "2010")

DT_2010_comm_sum <- sum(DT_2010_comm$n)
DT_2010_comm_merge <- data.frame(DT_2010_comm_sum)


DT_2010_comm_merge$Years <- "2010"
colnames(DT_2010_comm_merge) <- c("Commercial","Year")



DT_2010 <- merge(DT_2010_herb_merge,DT_2010_comm_merge)



DT_2012_herb <- filter(DT_herb_count, Year == "2012")

DT_2012_herb_sum <- sum(DT_2012_herb$n)
DT_2012_herb_merge <- data.frame(DT_2012_herb_sum)


DT_2012_herb_merge$Years <- "2012"
colnames(DT_2012_herb_merge) <- c("Herbivorous","Year")




DT_2012_comm <- filter(DT_comm_count, Year == "2012")

DT_2012_comm_sum <- sum(DT_2012_comm$n)
DT_2012_comm_merge <- data.frame(DT_2012_comm_sum)


DT_2012_comm_merge$Years <- "2012"
colnames(DT_2012_comm_merge) <- c("Commercial","Year")



DT_2012 <- merge(DT_2012_herb_merge,DT_2012_comm_merge)



DT_2014_herb <- filter(DT_herb_count, Year == "2014")

DT_2014_herb_sum <- sum(DT_2014_herb$n)
DT_2014_herb_merge <- data.frame(DT_2014_herb_sum)


DT_2014_herb_merge$Years <- "2014"
colnames(DT_2014_herb_merge) <- c("Herbivorous","Year")




DT_2014_comm <- filter(DT_comm_count, Year == "2014")

DT_2014_comm_sum <- sum(DT_2014_comm$n)
DT_2014_comm_merge <- data.frame(DT_2014_comm_sum)


DT_2014_comm_merge$Years <- "2014"
colnames(DT_2014_comm_merge) <- c("Commercial","Year")



DT_2014 <- merge(DT_2014_herb_merge,DT_2014_comm_merge)



DT_2016_herb <- filter(DT_herb_count, Year == "2016")

DT_2016_herb_sum <- sum(DT_2016_herb$n)
DT_2016_herb_merge <- data.frame(DT_2016_herb_sum)


DT_2016_herb_merge$Years <- "2016"
colnames(DT_2016_herb_merge) <- c("Herbivorous","Year")




DT_2016_comm <- filter(DT_comm_count, Year == "2016")

DT_2016_comm_sum <- sum(DT_2016_comm$n)
DT_2016_comm_merge <- data.frame(DT_2016_comm_sum)


DT_2016_comm_merge$Years <- "2016"
colnames(DT_2016_comm_merge) <- c("Commercial","Year")



DT_2016 <- merge(DT_2016_herb_merge,DT_2016_comm_merge)




DT_count_combined <- rbind(DT_1999,DT_2000,DT_2004,DT_2006,DT_2008,DT_2010,DT_2012,DT_2014,DT_2016)

DT_count_combined$SUBREGION <- "DT"


### Lower Keys 



LK_count <- filter(All_data, REGION == "LK")

LK_herb_count <- filter(LK_count, Type == "Herbivorous")

LK_comm_count <- filter(LK_count, Type == "Commercial")


LK_1999_herb <- filter(LK_herb_count, Year == "1999")

LK_1999_herb_sum <- sum(LK_1999_herb$n)
LK_1999_herb_merge <- data.frame(LK_1999_herb_sum)


LK_1999_herb_merge$Years <- "1999"
colnames(LK_1999_herb_merge) <- c("Herbivorous","Year")




LK_1999_comm <- filter(LK_comm_count, Year == "1999")

LK_1999_comm_sum <- sum(LK_1999_comm$n)
LK_1999_comm_merge <- data.frame(LK_1999_comm_sum)


LK_1999_comm_merge$Years <- "1999"
colnames(LK_1999_comm_merge) <- c("Commercial","Year")



LK_1999 <- merge(LK_1999_herb_merge,LK_1999_comm_merge)



LK_2000_herb <- filter(LK_herb_count, Year == "2000")

LK_2000_herb_sum <- sum(LK_2000_herb$n)
LK_2000_herb_merge <- data.frame(LK_2000_herb_sum)


LK_2000_herb_merge$Years <- "2000"
colnames(LK_2000_herb_merge) <- c("Herbivorous","Year")




LK_2000_comm <- filter(LK_comm_count, Year == "2000")

LK_2000_comm_sum <- sum(LK_2000_comm$n)
LK_2000_comm_merge <- data.frame(LK_2000_comm_sum)


LK_2000_comm_merge$Years <- "2000"
colnames(LK_2000_comm_merge) <- c("Commercial","Year")



LK_2000 <- merge(LK_2000_herb_merge,LK_2000_comm_merge)


LK_2001_herb <- filter(LK_herb_count, Year == "2001")

LK_2001_herb_sum <- sum(LK_2001_herb$n)
LK_2001_herb_merge <- data.frame(LK_2001_herb_sum)


LK_2001_herb_merge$Years <- "2001"
colnames(LK_2001_herb_merge) <- c("Herbivorous","Year")




LK_2001_comm <- filter(LK_comm_count, Year == "2001")

LK_2001_comm_sum <- sum(LK_2001_comm$n)
LK_2001_comm_merge <- data.frame(LK_2001_comm_sum)


LK_2001_comm_merge$Years <- "2001"
colnames(LK_2001_comm_merge) <- c("Commercial","Year")



LK_2001 <- merge(LK_2001_herb_merge,LK_2001_comm_merge)



LK_2002_herb <- filter(LK_herb_count, Year == "2002")

LK_2002_herb_sum <- sum(LK_2002_herb$n)
LK_2002_herb_merge <- data.frame(LK_2002_herb_sum)


LK_2002_herb_merge$Years <- "2002"
colnames(LK_2002_herb_merge) <- c("Herbivorous","Year")




LK_2002_comm <- filter(LK_comm_count, Year == "2002")

LK_2002_comm_sum <- sum(LK_2002_comm$n)
LK_2002_comm_merge <- data.frame(LK_2002_comm_sum)


LK_2002_comm_merge$Years <- "2002"
colnames(LK_2002_comm_merge) <- c("Commercial","Year")



LK_2002 <- merge(LK_2002_herb_merge,LK_2002_comm_merge)



LK_2003_herb <- filter(LK_herb_count, Year == "2003")

LK_2003_herb_sum <- sum(LK_2003_herb$n)
LK_2003_herb_merge <- data.frame(LK_2003_herb_sum)


LK_2003_herb_merge$Years <- "2003"
colnames(LK_2003_herb_merge) <- c("Herbivorous","Year")




LK_2003_comm <- filter(LK_comm_count, Year == "2003")

LK_2003_comm_sum <- sum(LK_2003_comm$n)
LK_2003_comm_merge <- data.frame(LK_2003_comm_sum)


LK_2003_comm_merge$Years <- "2003"
colnames(LK_2003_comm_merge) <- c("Commercial","Year")



LK_2003 <- merge(LK_2003_herb_merge,LK_2003_comm_merge)



LK_2004_herb <- filter(LK_herb_count, Year == "2004")

LK_2004_herb_sum <- sum(LK_2004_herb$n)
LK_2004_herb_merge <- data.frame(LK_2004_herb_sum)


LK_2004_herb_merge$Years <- "2004"
colnames(LK_2004_herb_merge) <- c("Herbivorous","Year")




LK_2004_comm <- filter(LK_comm_count, Year == "2004")

LK_2004_comm_sum <- sum(LK_2004_comm$n)
LK_2004_comm_merge <- data.frame(LK_2004_comm_sum)


LK_2004_comm_merge$Years <- "2004"
colnames(LK_2004_comm_merge) <- c("Commercial","Year")



LK_2004 <- merge(LK_2004_herb_merge,LK_2004_comm_merge)



LK_2004_herb <- filter(LK_herb_count, Year == "2004")

LK_2004_herb_sum <- sum(LK_2004_herb$n)
LK_2004_herb_merge <- data.frame(LK_2004_herb_sum)


LK_2004_herb_merge$Years <- "2004"
colnames(LK_2004_herb_merge) <- c("Herbivorous","Year")




LK_2004_comm <- filter(LK_comm_count, Year == "2004")

LK_2004_comm_sum <- sum(LK_2004_comm$n)
LK_2004_comm_merge <- data.frame(LK_2004_comm_sum)


LK_2004_comm_merge$Years <- "2004"
colnames(LK_2004_comm_merge) <- c("Commercial","Year")



LK_2004 <- merge(LK_2004_herb_merge,LK_2004_comm_merge)



LK_2005_herb <- filter(LK_herb_count, Year == "2005")

LK_2005_herb_sum <- sum(LK_2005_herb$n)
LK_2005_herb_merge <- data.frame(LK_2005_herb_sum)


LK_2005_herb_merge$Years <- "2005"
colnames(LK_2005_herb_merge) <- c("Herbivorous","Year")




LK_2005_comm <- filter(LK_comm_count, Year == "2005")

LK_2005_comm_sum <- sum(LK_2005_comm$n)
LK_2005_comm_merge <- data.frame(LK_2005_comm_sum)


LK_2005_comm_merge$Years <- "2005"
colnames(LK_2005_comm_merge) <- c("Commercial","Year")



LK_2005 <- merge(LK_2005_herb_merge,LK_2005_comm_merge)



LK_2006_herb <- filter(LK_herb_count, Year == "2006")

LK_2006_herb_sum <- sum(LK_2006_herb$n)
LK_2006_herb_merge <- data.frame(LK_2006_herb_sum)


LK_2006_herb_merge$Years <- "2006"
colnames(LK_2006_herb_merge) <- c("Herbivorous","Year")




LK_2006_comm <- filter(LK_comm_count, Year == "2006")

LK_2006_comm_sum <- sum(LK_2006_comm$n)
LK_2006_comm_merge <- data.frame(LK_2006_comm_sum)


LK_2006_comm_merge$Years <- "2006"
colnames(LK_2006_comm_merge) <- c("Commercial","Year")



LK_2006 <- merge(LK_2006_herb_merge,LK_2006_comm_merge)


LK_2007_herb <- filter(LK_herb_count, Year == "2007")

LK_2007_herb_sum <- sum(LK_2007_herb$n)
LK_2007_herb_merge <- data.frame(LK_2007_herb_sum)


LK_2007_herb_merge$Years <- "2007"
colnames(LK_2007_herb_merge) <- c("Herbivorous","Year")




LK_2007_comm <- filter(LK_comm_count, Year == "2007")

LK_2007_comm_sum <- sum(LK_2007_comm$n)
LK_2007_comm_merge <- data.frame(LK_2007_comm_sum)


LK_2007_comm_merge$Years <- "2007"
colnames(LK_2007_comm_merge) <- c("Commercial","Year")



LK_2007 <- merge(LK_2007_herb_merge,LK_2007_comm_merge)



LK_2008_herb <- filter(LK_herb_count, Year == "2008")

LK_2008_herb_sum <- sum(LK_2008_herb$n)
LK_2008_herb_merge <- data.frame(LK_2008_herb_sum)


LK_2008_herb_merge$Years <- "2008"
colnames(LK_2008_herb_merge) <- c("Herbivorous","Year")




LK_2008_comm <- filter(LK_comm_count, Year == "2008")

LK_2008_comm_sum <- sum(LK_2008_comm$n)
LK_2008_comm_merge <- data.frame(LK_2008_comm_sum)


LK_2008_comm_merge$Years <- "2008"
colnames(LK_2008_comm_merge) <- c("Commercial","Year")



LK_2008 <- merge(LK_2008_herb_merge,LK_2008_comm_merge)



LK_2009_herb <- filter(LK_herb_count, Year == "2009")

LK_2009_herb_sum <- sum(LK_2009_herb$n)
LK_2009_herb_merge <- data.frame(LK_2009_herb_sum)


LK_2009_herb_merge$Years <- "2009"
colnames(LK_2009_herb_merge) <- c("Herbivorous","Year")




LK_2009_comm <- filter(LK_comm_count, Year == "2009")

LK_2009_comm_sum <- sum(LK_2009_comm$n)
LK_2009_comm_merge <- data.frame(LK_2009_comm_sum)


LK_2009_comm_merge$Years <- "2009"
colnames(LK_2009_comm_merge) <- c("Commercial","Year")



LK_2009 <- merge(LK_2009_herb_merge,LK_2009_comm_merge)




LK_2010_herb <- filter(LK_herb_count, Year == "2010")

LK_2010_herb_sum <- sum(LK_2010_herb$n)
LK_2010_herb_merge <- data.frame(LK_2010_herb_sum)


LK_2010_herb_merge$Years <- "2010"
colnames(LK_2010_herb_merge) <- c("Herbivorous","Year")




LK_2010_comm <- filter(LK_comm_count, Year == "2010")

LK_2010_comm_sum <- sum(LK_2010_comm$n)
LK_2010_comm_merge <- data.frame(LK_2010_comm_sum)


LK_2010_comm_merge$Years <- "2010"
colnames(LK_2010_comm_merge) <- c("Commercial","Year")



LK_2010 <- merge(LK_2010_herb_merge,LK_2010_comm_merge)



LK_2011_herb <- filter(LK_herb_count, Year == "2011")

LK_2011_herb_sum <- sum(LK_2011_herb$n)
LK_2011_herb_merge <- data.frame(LK_2011_herb_sum)


LK_2011_herb_merge$Years <- "2011"
colnames(LK_2011_herb_merge) <- c("Herbivorous","Year")




LK_2011_comm <- filter(LK_comm_count, Year == "2011")

LK_2011_comm_sum <- sum(LK_2011_comm$n)
LK_2011_comm_merge <- data.frame(LK_2011_comm_sum)


LK_2011_comm_merge$Years <- "2011"
colnames(LK_2011_comm_merge) <- c("Commercial","Year")



LK_2011 <- merge(LK_2011_herb_merge,LK_2011_comm_merge)



LK_2012_herb <- filter(LK_herb_count, Year == "2012")

LK_2012_herb_sum <- sum(LK_2012_herb$n)
LK_2012_herb_merge <- data.frame(LK_2012_herb_sum)


LK_2012_herb_merge$Years <- "2012"
colnames(LK_2012_herb_merge) <- c("Herbivorous","Year")




LK_2012_comm <- filter(LK_comm_count, Year == "2012")

LK_2012_comm_sum <- sum(LK_2012_comm$n)
LK_2012_comm_merge <- data.frame(LK_2012_comm_sum)


LK_2012_comm_merge$Years <- "2012"
colnames(LK_2012_comm_merge) <- c("Commercial","Year")



LK_2012 <- merge(LK_2012_herb_merge,LK_2012_comm_merge)



LK_2014_herb <- filter(LK_herb_count, Year == "2014")

LK_2014_herb_sum <- sum(LK_2014_herb$n)
LK_2014_herb_merge <- data.frame(LK_2014_herb_sum)


LK_2014_herb_merge$Years <- "2014"
colnames(LK_2014_herb_merge) <- c("Herbivorous","Year")




LK_2014_comm <- filter(LK_comm_count, Year == "2014")

LK_2014_comm_sum <- sum(LK_2014_comm$n)
LK_2014_comm_merge <- data.frame(LK_2014_comm_sum)


LK_2014_comm_merge$Years <- "2014"
colnames(LK_2014_comm_merge) <- c("Commercial","Year")



LK_2014 <- merge(LK_2014_herb_merge,LK_2014_comm_merge)



LK_2016_herb <- filter(LK_herb_count, Year == "2016")

LK_2016_herb_sum <- sum(LK_2016_herb$n)
LK_2016_herb_merge <- data.frame(LK_2016_herb_sum)


LK_2016_herb_merge$Years <- "2016"
colnames(LK_2016_herb_merge) <- c("Herbivorous","Year")




LK_2016_comm <- filter(LK_comm_count, Year == "2016")

LK_2016_comm_sum <- sum(LK_2016_comm$n)
LK_2016_comm_merge <- data.frame(LK_2016_comm_sum)


LK_2016_comm_merge$Years <- "2016"
colnames(LK_2016_comm_merge) <- c("Commercial","Year")



LK_2016 <- merge(LK_2016_herb_merge,LK_2016_comm_merge)




LK_2018_herb <- filter(LK_herb_count, Year == "2018")

LK_2018_herb_sum <- sum(LK_2018_herb$n)
LK_2018_herb_merge <- data.frame(LK_2018_herb_sum)


LK_2018_herb_merge$Years <- "2018"
colnames(LK_2018_herb_merge) <- c("Herbivorous","Year")




LK_2018_comm <- filter(LK_comm_count, Year == "2018")

LK_2018_comm_sum <- sum(LK_2018_comm$n)
LK_2018_comm_merge <- data.frame(LK_2018_comm_sum)


LK_2018_comm_merge$Years <- "2018"
colnames(LK_2018_comm_merge) <- c("Commercial","Year")



LK_2018 <- merge(LK_2018_herb_merge,LK_2018_comm_merge)


LK_count_combined <- rbind(LK_1999,LK_2000,LK_2001,LK_2002,LK_2003,LK_2004,LK_2005,LK_2006,LK_2007,LK_2008,LK_2009,LK_2010,LK_2011,LK_2012,LK_2014,LK_2016,LK_2018)


LK_count_combined$SUBREGION <- "LK"


### MIddle Keys 


MK_count <- filter(All_data, REGION == "MK")

MK_herb_count <- filter(MK_count, Type == "Herbivorous")

MK_comm_count <- filter(MK_count, Type == "Commercial")


MK_1999_herb <- filter(MK_herb_count, Year == "1999")

MK_1999_herb_sum <- sum(MK_1999_herb$n)
MK_1999_herb_merge <- data.frame(MK_1999_herb_sum)


MK_1999_herb_merge$Years <- "1999"
colnames(MK_1999_herb_merge) <- c("Herbivorous","Year")




MK_1999_comm <- filter(MK_comm_count, Year == "1999")

MK_1999_comm_sum <- sum(MK_1999_comm$n)
MK_1999_comm_merge <- data.frame(MK_1999_comm_sum)


MK_1999_comm_merge$Years <- "1999"
colnames(MK_1999_comm_merge) <- c("Commercial","Year")



MK_1999 <- merge(MK_1999_herb_merge,MK_1999_comm_merge)



MK_2000_herb <- filter(MK_herb_count, Year == "2000")

MK_2000_herb_sum <- sum(MK_2000_herb$n)
MK_2000_herb_merge <- data.frame(MK_2000_herb_sum)


MK_2000_herb_merge$Years <- "2000"
colnames(MK_2000_herb_merge) <- c("Herbivorous","Year")




MK_2000_comm <- filter(MK_comm_count, Year == "2000")

MK_2000_comm_sum <- sum(MK_2000_comm$n)
MK_2000_comm_merge <- data.frame(MK_2000_comm_sum)


MK_2000_comm_merge$Years <- "2000"
colnames(MK_2000_comm_merge) <- c("Commercial","Year")



MK_2000 <- merge(MK_2000_herb_merge,MK_2000_comm_merge)


MK_2001_herb <- filter(MK_herb_count, Year == "2001")

MK_2001_herb_sum <- sum(MK_2001_herb$n)
MK_2001_herb_merge <- data.frame(MK_2001_herb_sum)


MK_2001_herb_merge$Years <- "2001"
colnames(MK_2001_herb_merge) <- c("Herbivorous","Year")




MK_2001_comm <- filter(MK_comm_count, Year == "2001")

MK_2001_comm_sum <- sum(MK_2001_comm$n)
MK_2001_comm_merge <- data.frame(MK_2001_comm_sum)


MK_2001_comm_merge$Years <- "2001"
colnames(MK_2001_comm_merge) <- c("Commercial","Year")



MK_2001 <- merge(MK_2001_herb_merge,MK_2001_comm_merge)



MK_2002_herb <- filter(MK_herb_count, Year == "2002")

MK_2002_herb_sum <- sum(MK_2002_herb$n)
MK_2002_herb_merge <- data.frame(MK_2002_herb_sum)


MK_2002_herb_merge$Years <- "2002"
colnames(MK_2002_herb_merge) <- c("Herbivorous","Year")




MK_2002_comm <- filter(MK_comm_count, Year == "2002")

MK_2002_comm_sum <- sum(MK_2002_comm$n)
MK_2002_comm_merge <- data.frame(MK_2002_comm_sum)


MK_2002_comm_merge$Years <- "2002"
colnames(MK_2002_comm_merge) <- c("Commercial","Year")



MK_2002 <- merge(MK_2002_herb_merge,MK_2002_comm_merge)



MK_2003_herb <- filter(MK_herb_count, Year == "2003")

MK_2003_herb_sum <- sum(MK_2003_herb$n)
MK_2003_herb_merge <- data.frame(MK_2003_herb_sum)


MK_2003_herb_merge$Years <- "2003"
colnames(MK_2003_herb_merge) <- c("Herbivorous","Year")




MK_2003_comm <- filter(MK_comm_count, Year == "2003")

MK_2003_comm_sum <- sum(MK_2003_comm$n)
MK_2003_comm_merge <- data.frame(MK_2003_comm_sum)


MK_2003_comm_merge$Years <- "2003"
colnames(MK_2003_comm_merge) <- c("Commercial","Year")



MK_2003 <- merge(MK_2003_herb_merge,MK_2003_comm_merge)



# MK_2004_herb <- filter(MK_herb_count, Year == "2004")
# 
# MK_2004_herb_sum <- sum(MK_2004_herb$n)
# MK_2004_herb_merge <- data.frame(MK_2004_herb_sum)
# 
# 
# MK_2004_herb_merge$Years <- "2004"
# colnames(MK_2004_herb_merge) <- c("Herbivorous","Year")
# 
# 
# 
# 
# MK_2004_comm <- filter(MK_comm_count, Year == "2004")
# 
# MK_2004_comm_sum <- sum(MK_2004_comm$n)
# MK_2004_comm_merge <- data.frame(MK_2004_comm_sum)
# 
# 
# MK_2004_comm_merge$Years <- "2004"
# colnames(MK_2004_comm_merge) <- c("Commercial","Year")
# 
# 
# 
# MK_2004 <- merge(MK_2004_herb_merge,MK_2004_comm_merge)
# 
# 
# 
# MK_2004_herb <- filter(MK_herb_count, Year == "2004")
# 
# MK_2004_herb_sum <- sum(MK_2004_herb$n)
# MK_2004_herb_merge <- data.frame(MK_2004_herb_sum)
# 
# 
# MK_2004_herb_merge$Years <- "2004"
# colnames(MK_2004_herb_merge) <- c("Herbivorous","Year")
# 
# 
# 
# 
# MK_2004_comm <- filter(MK_comm_count, Year == "2004")
# 
# MK_2004_comm_sum <- sum(MK_2004_comm$n)
# MK_2004_comm_merge <- data.frame(MK_2004_comm_sum)
# 
# 
# MK_2004_comm_merge$Years <- "2004"
# colnames(MK_2004_comm_merge) <- c("Commercial","Year")
# 
# 
# 
# MK_2004 <- merge(MK_2004_herb_merge,MK_2004_comm_merge)



MK_2005_herb <- filter(MK_herb_count, Year == "2005")

MK_2005_herb_sum <- sum(MK_2005_herb$n)
MK_2005_herb_merge <- data.frame(MK_2005_herb_sum)


MK_2005_herb_merge$Years <- "2005"
colnames(MK_2005_herb_merge) <- c("Herbivorous","Year")




MK_2005_comm <- filter(MK_comm_count, Year == "2005")

MK_2005_comm_sum <- sum(MK_2005_comm$n)
MK_2005_comm_merge <- data.frame(MK_2005_comm_sum)


MK_2005_comm_merge$Years <- "2005"
colnames(MK_2005_comm_merge) <- c("Commercial","Year")



MK_2005 <- merge(MK_2005_herb_merge,MK_2005_comm_merge)



MK_2006_herb <- filter(MK_herb_count, Year == "2006")

MK_2006_herb_sum <- sum(MK_2006_herb$n)
MK_2006_herb_merge <- data.frame(MK_2006_herb_sum)


MK_2006_herb_merge$Years <- "2006"
colnames(MK_2006_herb_merge) <- c("Herbivorous","Year")




MK_2006_comm <- filter(MK_comm_count, Year == "2006")

MK_2006_comm_sum <- sum(MK_2006_comm$n)
MK_2006_comm_merge <- data.frame(MK_2006_comm_sum)


MK_2006_comm_merge$Years <- "2006"
colnames(MK_2006_comm_merge) <- c("Commercial","Year")



MK_2006 <- merge(MK_2006_herb_merge,MK_2006_comm_merge)


MK_2007_herb <- filter(MK_herb_count, Year == "2007")

MK_2007_herb_sum <- sum(MK_2007_herb$n)
MK_2007_herb_merge <- data.frame(MK_2007_herb_sum)


MK_2007_herb_merge$Years <- "2007"
colnames(MK_2007_herb_merge) <- c("Herbivorous","Year")




MK_2007_comm <- filter(MK_comm_count, Year == "2007")

MK_2007_comm_sum <- sum(MK_2007_comm$n)
MK_2007_comm_merge <- data.frame(MK_2007_comm_sum)


MK_2007_comm_merge$Years <- "2007"
colnames(MK_2007_comm_merge) <- c("Commercial","Year")



MK_2007 <- merge(MK_2007_herb_merge,MK_2007_comm_merge)



MK_2008_herb <- filter(MK_herb_count, Year == "2008")

MK_2008_herb_sum <- sum(MK_2008_herb$n)
MK_2008_herb_merge <- data.frame(MK_2008_herb_sum)


MK_2008_herb_merge$Years <- "2008"
colnames(MK_2008_herb_merge) <- c("Herbivorous","Year")




MK_2008_comm <- filter(MK_comm_count, Year == "2008")

MK_2008_comm_sum <- sum(MK_2008_comm$n)
MK_2008_comm_merge <- data.frame(MK_2008_comm_sum)


MK_2008_comm_merge$Years <- "2008"
colnames(MK_2008_comm_merge) <- c("Commercial","Year")



MK_2008 <- merge(MK_2008_herb_merge,MK_2008_comm_merge)



MK_2009_herb <- filter(MK_herb_count, Year == "2009")

MK_2009_herb_sum <- sum(MK_2009_herb$n)
MK_2009_herb_merge <- data.frame(MK_2009_herb_sum)


MK_2009_herb_merge$Years <- "2009"
colnames(MK_2009_herb_merge) <- c("Herbivorous","Year")




MK_2009_comm <- filter(MK_comm_count, Year == "2009")

MK_2009_comm_sum <- sum(MK_2009_comm$n)
MK_2009_comm_merge <- data.frame(MK_2009_comm_sum)


MK_2009_comm_merge$Years <- "2009"
colnames(MK_2009_comm_merge) <- c("Commercial","Year")



MK_2009 <- merge(MK_2009_herb_merge,MK_2009_comm_merge)




MK_2010_herb <- filter(MK_herb_count, Year == "2010")

MK_2010_herb_sum <- sum(MK_2010_herb$n)
MK_2010_herb_merge <- data.frame(MK_2010_herb_sum)


MK_2010_herb_merge$Years <- "2010"
colnames(MK_2010_herb_merge) <- c("Herbivorous","Year")




MK_2010_comm <- filter(MK_comm_count, Year == "2010")

MK_2010_comm_sum <- sum(MK_2010_comm$n)
MK_2010_comm_merge <- data.frame(MK_2010_comm_sum)


MK_2010_comm_merge$Years <- "2010"
colnames(MK_2010_comm_merge) <- c("Commercial","Year")



MK_2010 <- merge(MK_2010_herb_merge,MK_2010_comm_merge)



MK_2011_herb <- filter(MK_herb_count, Year == "2011")

MK_2011_herb_sum <- sum(MK_2011_herb$n)
MK_2011_herb_merge <- data.frame(MK_2011_herb_sum)


MK_2011_herb_merge$Years <- "2011"
colnames(MK_2011_herb_merge) <- c("Herbivorous","Year")




MK_2011_comm <- filter(MK_comm_count, Year == "2011")

MK_2011_comm_sum <- sum(MK_2011_comm$n)
MK_2011_comm_merge <- data.frame(MK_2011_comm_sum)


MK_2011_comm_merge$Years <- "2011"
colnames(MK_2011_comm_merge) <- c("Commercial","Year")



MK_2011 <- merge(MK_2011_herb_merge,MK_2011_comm_merge)



MK_2012_herb <- filter(MK_herb_count, Year == "2012")

MK_2012_herb_sum <- sum(MK_2012_herb$n)
MK_2012_herb_merge <- data.frame(MK_2012_herb_sum)


MK_2012_herb_merge$Years <- "2012"
colnames(MK_2012_herb_merge) <- c("Herbivorous","Year")




MK_2012_comm <- filter(MK_comm_count, Year == "2012")

MK_2012_comm_sum <- sum(MK_2012_comm$n)
MK_2012_comm_merge <- data.frame(MK_2012_comm_sum)


MK_2012_comm_merge$Years <- "2012"
colnames(MK_2012_comm_merge) <- c("Commercial","Year")



MK_2012 <- merge(MK_2012_herb_merge,MK_2012_comm_merge)



MK_2014_herb <- filter(MK_herb_count, Year == "2014")

MK_2014_herb_sum <- sum(MK_2014_herb$n)
MK_2014_herb_merge <- data.frame(MK_2014_herb_sum)


MK_2014_herb_merge$Years <- "2014"
colnames(MK_2014_herb_merge) <- c("Herbivorous","Year")




MK_2014_comm <- filter(MK_comm_count, Year == "2014")

MK_2014_comm_sum <- sum(MK_2014_comm$n)
MK_2014_comm_merge <- data.frame(MK_2014_comm_sum)


MK_2014_comm_merge$Years <- "2014"
colnames(MK_2014_comm_merge) <- c("Commercial","Year")



MK_2014 <- merge(MK_2014_herb_merge,MK_2014_comm_merge)



MK_2016_herb <- filter(MK_herb_count, Year == "2016")

MK_2016_herb_sum <- sum(MK_2016_herb$n)
MK_2016_herb_merge <- data.frame(MK_2016_herb_sum)


MK_2016_herb_merge$Years <- "2016"
colnames(MK_2016_herb_merge) <- c("Herbivorous","Year")




MK_2016_comm <- filter(MK_comm_count, Year == "2016")

MK_2016_comm_sum <- sum(MK_2016_comm$n)
MK_2016_comm_merge <- data.frame(MK_2016_comm_sum)


MK_2016_comm_merge$Years <- "2016"
colnames(MK_2016_comm_merge) <- c("Commercial","Year")



MK_2016 <- merge(MK_2016_herb_merge,MK_2016_comm_merge)




MK_2018_herb <- filter(MK_herb_count, Year == "2018")

MK_2018_herb_sum <- sum(MK_2018_herb$n)
MK_2018_herb_merge <- data.frame(MK_2018_herb_sum)


MK_2018_herb_merge$Years <- "2018"
colnames(MK_2018_herb_merge) <- c("Herbivorous","Year")




MK_2018_comm <- filter(MK_comm_count, Year == "2018")

MK_2018_comm_sum <- sum(MK_2018_comm$n)
MK_2018_comm_merge <- data.frame(MK_2018_comm_sum)


MK_2018_comm_merge$Years <- "2018"
colnames(MK_2018_comm_merge) <- c("Commercial","Year")



MK_2018 <- merge(MK_2018_herb_merge,MK_2018_comm_merge)


MK_count_combined <- rbind(MK_1999,MK_2000,MK_2001,MK_2002,MK_2003,MK_2005,MK_2006,MK_2007,MK_2008,MK_2009,MK_2010,MK_2011,MK_2012,MK_2014,MK_2016,MK_2018)

MK_count_combined$SUBREGION <- "MK"



### Upper KEys 


UK_count <- filter(All_data, REGION == "UK")

UK_herb_count <- filter(UK_count, Type == "Herbivorous")

UK_comm_count <- filter(UK_count, Type == "Commercial")


UK_1999_herb <- filter(UK_herb_count, Year == "1999")

UK_1999_herb_sum <- sum(UK_1999_herb$n)
UK_1999_herb_merge <- data.frame(UK_1999_herb_sum)


UK_1999_herb_merge$Years <- "1999"
colnames(UK_1999_herb_merge) <- c("Herbivorous","Year")




UK_1999_comm <- filter(UK_comm_count, Year == "1999")

UK_1999_comm_sum <- sum(UK_1999_comm$n)
UK_1999_comm_merge <- data.frame(UK_1999_comm_sum)


UK_1999_comm_merge$Years <- "1999"
colnames(UK_1999_comm_merge) <- c("Commercial","Year")



UK_1999 <- merge(UK_1999_herb_merge,UK_1999_comm_merge)



UK_2000_herb <- filter(UK_herb_count, Year == "2000")

UK_2000_herb_sum <- sum(UK_2000_herb$n)
UK_2000_herb_merge <- data.frame(UK_2000_herb_sum)


UK_2000_herb_merge$Years <- "2000"
colnames(UK_2000_herb_merge) <- c("Herbivorous","Year")




UK_2000_comm <- filter(UK_comm_count, Year == "2000")

UK_2000_comm_sum <- sum(UK_2000_comm$n)
UK_2000_comm_merge <- data.frame(UK_2000_comm_sum)


UK_2000_comm_merge$Years <- "2000"
colnames(UK_2000_comm_merge) <- c("Commercial","Year")



UK_2000 <- merge(UK_2000_herb_merge,UK_2000_comm_merge)


UK_2001_herb <- filter(UK_herb_count, Year == "2001")

UK_2001_herb_sum <- sum(UK_2001_herb$n)
UK_2001_herb_merge <- data.frame(UK_2001_herb_sum)


UK_2001_herb_merge$Years <- "2001"
colnames(UK_2001_herb_merge) <- c("Herbivorous","Year")




UK_2001_comm <- filter(UK_comm_count, Year == "2001")

UK_2001_comm_sum <- sum(UK_2001_comm$n)
UK_2001_comm_merge <- data.frame(UK_2001_comm_sum)


UK_2001_comm_merge$Years <- "2001"
colnames(UK_2001_comm_merge) <- c("Commercial","Year")



UK_2001 <- merge(UK_2001_herb_merge,UK_2001_comm_merge)



UK_2002_herb <- filter(UK_herb_count, Year == "2002")

UK_2002_herb_sum <- sum(UK_2002_herb$n)
UK_2002_herb_merge <- data.frame(UK_2002_herb_sum)


UK_2002_herb_merge$Years <- "2002"
colnames(UK_2002_herb_merge) <- c("Herbivorous","Year")




UK_2002_comm <- filter(UK_comm_count, Year == "2002")

UK_2002_comm_sum <- sum(UK_2002_comm$n)
UK_2002_comm_merge <- data.frame(UK_2002_comm_sum)


UK_2002_comm_merge$Years <- "2002"
colnames(UK_2002_comm_merge) <- c("Commercial","Year")



UK_2002 <- merge(UK_2002_herb_merge,UK_2002_comm_merge)



UK_2003_herb <- filter(UK_herb_count, Year == "2003")

UK_2003_herb_sum <- sum(UK_2003_herb$n)
UK_2003_herb_merge <- data.frame(UK_2003_herb_sum)


UK_2003_herb_merge$Years <- "2003"
colnames(UK_2003_herb_merge) <- c("Herbivorous","Year")




UK_2003_comm <- filter(UK_comm_count, Year == "2003")

UK_2003_comm_sum <- sum(UK_2003_comm$n)
UK_2003_comm_merge <- data.frame(UK_2003_comm_sum)


UK_2003_comm_merge$Years <- "2003"
colnames(UK_2003_comm_merge) <- c("Commercial","Year")



UK_2003 <- merge(UK_2003_herb_merge,UK_2003_comm_merge)



UK_2004_herb <- filter(UK_herb_count, Year == "2004")

UK_2004_herb_sum <- sum(UK_2004_herb$n)
UK_2004_herb_merge <- data.frame(UK_2004_herb_sum)


UK_2004_herb_merge$Years <- "2004"
colnames(UK_2004_herb_merge) <- c("Herbivorous","Year")




UK_2004_comm <- filter(UK_comm_count, Year == "2004")

UK_2004_comm_sum <- sum(UK_2004_comm$n)
UK_2004_comm_merge <- data.frame(UK_2004_comm_sum)


UK_2004_comm_merge$Years <- "2004"
colnames(UK_2004_comm_merge) <- c("Commercial","Year")



UK_2004 <- merge(UK_2004_herb_merge,UK_2004_comm_merge)



UK_2004_herb <- filter(UK_herb_count, Year == "2004")

UK_2004_herb_sum <- sum(UK_2004_herb$n)
UK_2004_herb_merge <- data.frame(UK_2004_herb_sum)


UK_2004_herb_merge$Years <- "2004"
colnames(UK_2004_herb_merge) <- c("Herbivorous","Year")




UK_2004_comm <- filter(UK_comm_count, Year == "2004")

UK_2004_comm_sum <- sum(UK_2004_comm$n)
UK_2004_comm_merge <- data.frame(UK_2004_comm_sum)


UK_2004_comm_merge$Years <- "2004"
colnames(UK_2004_comm_merge) <- c("Commercial","Year")



UK_2004 <- merge(UK_2004_herb_merge,UK_2004_comm_merge)



UK_2005_herb <- filter(UK_herb_count, Year == "2005")

UK_2005_herb_sum <- sum(UK_2005_herb$n)
UK_2005_herb_merge <- data.frame(UK_2005_herb_sum)


UK_2005_herb_merge$Years <- "2005"
colnames(UK_2005_herb_merge) <- c("Herbivorous","Year")




UK_2005_comm <- filter(UK_comm_count, Year == "2005")

UK_2005_comm_sum <- sum(UK_2005_comm$n)
UK_2005_comm_merge <- data.frame(UK_2005_comm_sum)


UK_2005_comm_merge$Years <- "2005"
colnames(UK_2005_comm_merge) <- c("Commercial","Year")



UK_2005 <- merge(UK_2005_herb_merge,UK_2005_comm_merge)



UK_2006_herb <- filter(UK_herb_count, Year == "2006")

UK_2006_herb_sum <- sum(UK_2006_herb$n)
UK_2006_herb_merge <- data.frame(UK_2006_herb_sum)


UK_2006_herb_merge$Years <- "2006"
colnames(UK_2006_herb_merge) <- c("Herbivorous","Year")




UK_2006_comm <- filter(UK_comm_count, Year == "2006")

UK_2006_comm_sum <- sum(UK_2006_comm$n)
UK_2006_comm_merge <- data.frame(UK_2006_comm_sum)


UK_2006_comm_merge$Years <- "2006"
colnames(UK_2006_comm_merge) <- c("Commercial","Year")



UK_2006 <- merge(UK_2006_herb_merge,UK_2006_comm_merge)


UK_2007_herb <- filter(UK_herb_count, Year == "2007")

UK_2007_herb_sum <- sum(UK_2007_herb$n)
UK_2007_herb_merge <- data.frame(UK_2007_herb_sum)


UK_2007_herb_merge$Years <- "2007"
colnames(UK_2007_herb_merge) <- c("Herbivorous","Year")




UK_2007_comm <- filter(UK_comm_count, Year == "2007")

UK_2007_comm_sum <- sum(UK_2007_comm$n)
UK_2007_comm_merge <- data.frame(UK_2007_comm_sum)


UK_2007_comm_merge$Years <- "2007"
colnames(UK_2007_comm_merge) <- c("Commercial","Year")



UK_2007 <- merge(UK_2007_herb_merge,UK_2007_comm_merge)



UK_2008_herb <- filter(UK_herb_count, Year == "2008")

UK_2008_herb_sum <- sum(UK_2008_herb$n)
UK_2008_herb_merge <- data.frame(UK_2008_herb_sum)


UK_2008_herb_merge$Years <- "2008"
colnames(UK_2008_herb_merge) <- c("Herbivorous","Year")




UK_2008_comm <- filter(UK_comm_count, Year == "2008")

UK_2008_comm_sum <- sum(UK_2008_comm$n)
UK_2008_comm_merge <- data.frame(UK_2008_comm_sum)


UK_2008_comm_merge$Years <- "2008"
colnames(UK_2008_comm_merge) <- c("Commercial","Year")



UK_2008 <- merge(UK_2008_herb_merge,UK_2008_comm_merge)



UK_2009_herb <- filter(UK_herb_count, Year == "2009")

UK_2009_herb_sum <- sum(UK_2009_herb$n)
UK_2009_herb_merge <- data.frame(UK_2009_herb_sum)


UK_2009_herb_merge$Years <- "2009"
colnames(UK_2009_herb_merge) <- c("Herbivorous","Year")




UK_2009_comm <- filter(UK_comm_count, Year == "2009")

UK_2009_comm_sum <- sum(UK_2009_comm$n)
UK_2009_comm_merge <- data.frame(UK_2009_comm_sum)


UK_2009_comm_merge$Years <- "2009"
colnames(UK_2009_comm_merge) <- c("Commercial","Year")



UK_2009 <- merge(UK_2009_herb_merge,UK_2009_comm_merge)




UK_2010_herb <- filter(UK_herb_count, Year == "2010")

UK_2010_herb_sum <- sum(UK_2010_herb$n)
UK_2010_herb_merge <- data.frame(UK_2010_herb_sum)


UK_2010_herb_merge$Years <- "2010"
colnames(UK_2010_herb_merge) <- c("Herbivorous","Year")




UK_2010_comm <- filter(UK_comm_count, Year == "2010")

UK_2010_comm_sum <- sum(UK_2010_comm$n)
UK_2010_comm_merge <- data.frame(UK_2010_comm_sum)


UK_2010_comm_merge$Years <- "2010"
colnames(UK_2010_comm_merge) <- c("Commercial","Year")



UK_2010 <- merge(UK_2010_herb_merge,UK_2010_comm_merge)



UK_2011_herb <- filter(UK_herb_count, Year == "2011")

UK_2011_herb_sum <- sum(UK_2011_herb$n)
UK_2011_herb_merge <- data.frame(UK_2011_herb_sum)


UK_2011_herb_merge$Years <- "2011"
colnames(UK_2011_herb_merge) <- c("Herbivorous","Year")




UK_2011_comm <- filter(UK_comm_count, Year == "2011")

UK_2011_comm_sum <- sum(UK_2011_comm$n)
UK_2011_comm_merge <- data.frame(UK_2011_comm_sum)


UK_2011_comm_merge$Years <- "2011"
colnames(UK_2011_comm_merge) <- c("Commercial","Year")



UK_2011 <- merge(UK_2011_herb_merge,UK_2011_comm_merge)



UK_2012_herb <- filter(UK_herb_count, Year == "2012")

UK_2012_herb_sum <- sum(UK_2012_herb$n)
UK_2012_herb_merge <- data.frame(UK_2012_herb_sum)


UK_2012_herb_merge$Years <- "2012"
colnames(UK_2012_herb_merge) <- c("Herbivorous","Year")




UK_2012_comm <- filter(UK_comm_count, Year == "2012")

UK_2012_comm_sum <- sum(UK_2012_comm$n)
UK_2012_comm_merge <- data.frame(UK_2012_comm_sum)


UK_2012_comm_merge$Years <- "2012"
colnames(UK_2012_comm_merge) <- c("Commercial","Year")



UK_2012 <- merge(UK_2012_herb_merge,UK_2012_comm_merge)



UK_2014_herb <- filter(UK_herb_count, Year == "2014")

UK_2014_herb_sum <- sum(UK_2014_herb$n)
UK_2014_herb_merge <- data.frame(UK_2014_herb_sum)


UK_2014_herb_merge$Years <- "2014"
colnames(UK_2014_herb_merge) <- c("Herbivorous","Year")




UK_2014_comm <- filter(UK_comm_count, Year == "2014")

UK_2014_comm_sum <- sum(UK_2014_comm$n)
UK_2014_comm_merge <- data.frame(UK_2014_comm_sum)


UK_2014_comm_merge$Years <- "2014"
colnames(UK_2014_comm_merge) <- c("Commercial","Year")



UK_2014 <- merge(UK_2014_herb_merge,UK_2014_comm_merge)



UK_2016_herb <- filter(UK_herb_count, Year == "2016")

UK_2016_herb_sum <- sum(UK_2016_herb$n)
UK_2016_herb_merge <- data.frame(UK_2016_herb_sum)


UK_2016_herb_merge$Years <- "2016"
colnames(UK_2016_herb_merge) <- c("Herbivorous","Year")




UK_2016_comm <- filter(UK_comm_count, Year == "2016")

UK_2016_comm_sum <- sum(UK_2016_comm$n)
UK_2016_comm_merge <- data.frame(UK_2016_comm_sum)


UK_2016_comm_merge$Years <- "2016"
colnames(UK_2016_comm_merge) <- c("Commercial","Year")



UK_2016 <- merge(UK_2016_herb_merge,UK_2016_comm_merge)




UK_2018_herb <- filter(UK_herb_count, Year == "2018")

UK_2018_herb_sum <- sum(UK_2018_herb$n)
UK_2018_herb_merge <- data.frame(UK_2018_herb_sum)


UK_2018_herb_merge$Years <- "2018"
colnames(UK_2018_herb_merge) <- c("Herbivorous","Year")




UK_2018_comm <- filter(UK_comm_count, Year == "2018")

UK_2018_comm_sum <- sum(UK_2018_comm$n)
UK_2018_comm_merge <- data.frame(UK_2018_comm_sum)


UK_2018_comm_merge$Years <- "2018"
colnames(UK_2018_comm_merge) <- c("Commercial","Year")



UK_2018 <- merge(UK_2018_herb_merge,UK_2018_comm_merge)


UK_count_combined <- rbind(UK_1999,UK_2000,UK_2001,UK_2002,UK_2003,UK_2004,UK_2005,UK_2006,UK_2007,UK_2008,UK_2009,UK_2010,UK_2011,UK_2012,UK_2014,UK_2016,UK_2018)

UK_count_combined$SUBREGION <- "UK"



### SE Florida 



SEF_count <- filter(All_data, REGION == "SEF")

SEF_herb_count <- filter(SEF_count, Type == "Herbivorous")

SEF_comm_count <- filter(SEF_count, Type == "Commercial")



SEF_2013_herb <- filter(SEF_herb_count, Year == "2013")

SEF_2013_herb_sum <- sum(SEF_2013_herb$n)
SEF_2013_herb_merge <- data.frame(SEF_2013_herb_sum)


SEF_2013_herb_merge$Years <- "2013"
colnames(SEF_2013_herb_merge) <- c("Herbivorous","Year")




SEF_2013_comm <- filter(SEF_comm_count, Year == "2013")

SEF_2013_comm_sum <- sum(SEF_2013_comm$n)
SEF_2013_comm_merge <- data.frame(SEF_2013_comm_sum)


SEF_2013_comm_merge$Years <- "2013"
colnames(SEF_2013_comm_merge) <- c("Commercial","Year")



SEF_2013 <- merge(SEF_2013_herb_merge,SEF_2013_comm_merge)



SEF_2014_herb <- filter(SEF_herb_count, Year == "2014")

SEF_2014_herb_sum <- sum(SEF_2014_herb$n)
SEF_2014_herb_merge <- data.frame(SEF_2014_herb_sum)


SEF_2014_herb_merge$Years <- "2014"
colnames(SEF_2014_herb_merge) <- c("Herbivorous","Year")




SEF_2014_comm <- filter(SEF_comm_count, Year == "2014")

SEF_2014_comm_sum <- sum(SEF_2014_comm$n)
SEF_2014_comm_merge <- data.frame(SEF_2014_comm_sum)


SEF_2014_comm_merge$Years <- "2014"
colnames(SEF_2014_comm_merge) <- c("Commercial","Year")



SEF_2014 <- merge(SEF_2014_herb_merge,SEF_2014_comm_merge)


SEF_2015_herb <- filter(SEF_herb_count, Year == "2015")

SEF_2015_herb_sum <- sum(SEF_2015_herb$n)
SEF_2015_herb_merge <- data.frame(SEF_2015_herb_sum)


SEF_2015_herb_merge$Years <- "2015"
colnames(SEF_2015_herb_merge) <- c("Herbivorous","Year")




SEF_2015_comm <- filter(SEF_comm_count, Year == "2015")

SEF_2015_comm_sum <- sum(SEF_2015_comm$n)
SEF_2015_comm_merge <- data.frame(SEF_2015_comm_sum)


SEF_2015_comm_merge$Years <- "2015"
colnames(SEF_2015_comm_merge) <- c("Commercial","Year")



SEF_2015 <- merge(SEF_2015_herb_merge,SEF_2015_comm_merge)




SEF_2016_herb <- filter(SEF_herb_count, Year == "2016")

SEF_2016_herb_sum <- sum(SEF_2016_herb$n)
SEF_2016_herb_merge <- data.frame(SEF_2016_herb_sum)


SEF_2016_herb_merge$Years <- "2016"
colnames(SEF_2016_herb_merge) <- c("Herbivorous","Year")




SEF_2016_comm <- filter(SEF_comm_count, Year == "2016")

SEF_2016_comm_sum <- sum(SEF_2016_comm$n)
SEF_2016_comm_merge <- data.frame(SEF_2016_comm_sum)


SEF_2016_comm_merge$Years <- "2016"
colnames(SEF_2016_comm_merge) <- c("Commercial","Year")



SEF_2016 <- merge(SEF_2016_herb_merge,SEF_2016_comm_merge)




SEF_2018_herb <- filter(SEF_herb_count, Year == "2018")

SEF_2018_herb_sum <- sum(SEF_2018_herb$n)
SEF_2018_herb_merge <- data.frame(SEF_2018_herb_sum)


SEF_2018_herb_merge$Years <- "2018"
colnames(SEF_2018_herb_merge) <- c("Herbivorous","Year")




SEF_2018_comm <- filter(SEF_comm_count, Year == "2018")

SEF_2018_comm_sum <- sum(SEF_2018_comm$n)
SEF_2018_comm_merge <- data.frame(SEF_2018_comm_sum)


SEF_2018_comm_merge$Years <- "2018"
colnames(SEF_2018_comm_merge) <- c("Commercial","Year")



SEF_2018 <- merge(SEF_2018_herb_merge,SEF_2018_comm_merge)


SEF_count_combined <- rbind(SEF_2013,SEF_2014,SEF_2015,SEF_2016,SEF_2018)

SEF_count_combined$SUBREGION <- "SEF"


### Combine all areas
 
Regions_fish_count <- rbind(DT_count_combined,LK_count_combined,MK_count_combined,UK_count_combined,SEF_count_combined)

export(Regions_fish_count,"Total_regions_count.csv")

  
  
  
  

## Plot all on one line graph 
library(reshape)


total_test <- read.delim("Total_regions_count.csv", sep=",")


total_melt <- melt(total_test, id.vars = "Year")


ggplot(total_melt, aes(Year, value, color = variable))+
  ggtitle("Fish Count", subtitle = "Subregions")+
  geom_line(size = 1)+
  geom_point(size = .3)+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("# of Fish Observed")


#ggsave("RHI_LK_all_categories.png",width = 8, height = 4)






