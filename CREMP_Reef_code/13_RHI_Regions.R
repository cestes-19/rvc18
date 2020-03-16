### RHI for regions (herbivorous and commercial fish species)

## This input data is an ouput of (4_Biomass_per_reef)

library(rio)
library("magrittr")
library("tidyverse")
library("binr")

setwd("C:/Users/cestes/Documents/Spring_2020/RVC_CREMP_by_REEF")

### First create bins to rank entire area

## Herbivorous first

Herb <- read_csv("All_regions_RVC_herbivorous_RHI.csv")


Herb$RHI_Fish <- NULL
Herb$sitename <- NULL


Herb_graph <- Herb[order(Herb$sum),]

## sort data into 5 different bins using binr 

Herb_bins <- bins(Herb_graph$sum,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
view(Herb_bins$binct)

#### MANUALLY ADD IN THE VALUES OF EACH BIN. 1-5 WILL BE ADDED TO EACH BIN SUBSET

## from binct make the value of the bins and apply number 1-5 for each bin

herb_1 <- subset(Herb_graph, sum < 0.0014643612286758)
herb_2 <- subset(Herb_graph, sum >= 0.0014643612286758  & sum < 0.0234138217423037 )
herb_3 <- subset(Herb_graph, sum >= 0.0234138217423037  & sum < 0.0451272652826235 )
herb_4 <- subset(Herb_graph, sum >= 0.0451272652826235  & sum < 0.0736664465881753 )
herb_5 <- subset(Herb_graph, sum >= 0.0736664465881753  & sum < 0.379531399188624 )


herb_1$RHI_Fish <- "1"
herb_2$RHI_Fish <- "2"
herb_3$RHI_Fish <- "3"
herb_4$RHI_Fish <- "4"
herb_5$RHI_Fish <- "5"

herb_RHI <- rbind(herb_1,herb_2,herb_3,herb_4,herb_5)  

export(herb_RHI,"All_regions_herbivorous_RHI_rank.csv")

## Commercial 

Comm <- read_csv("All_regions_RVC_commercial_RHI.csv")


Comm$RHI_Fish <- NULL
Comm$sitename <- NULL


Comm_graph <- Comm[order(Comm$sum),]

## sort data into 5 different bins using binr 

Comm_bins <- bins(Comm_graph$sum,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
view(Comm_bins$binct)

#### MANUALLY ADD IN THE VALUES OF EACH BIN. 1-5 WILL BE ADDED TO EACH BIN SUBSET

## from binct make the value of the bins and apply number 1-5 for each bin

Comm_1 <- subset(Comm_graph, sum < 0.00735327086059331)
Comm_2 <- subset(Comm_graph, sum >= 0.00735327086059331  & sum < 0.089556231975325 )
Comm_3 <- subset(Comm_graph, sum >= 0.089556231975325  & sum <  0.171020527633201 )
Comm_4 <- subset(Comm_graph, sum >=  0.171020527633201  & sum <  0.260244956225326 )
Comm_5 <- subset(Comm_graph, sum >=  0.260244956225326  & sum < 1.64067833758724 )


Comm_1$RHI_Fish <- "1"
Comm_2$RHI_Fish <- "2"
Comm_3$RHI_Fish <- "3"
Comm_4$RHI_Fish <- "4"
Comm_5$RHI_Fish <- "5"

Comm_RHI <- rbind(Comm_1,Comm_2,Comm_3,Comm_4,Comm_5)  


export(Comm_RHI,"All_regions_commercial_RHI_rank.csv")


## Filter by subregions

Herb2 <- read_csv("All_regions_herbivorous_RHI_rank.csv")


## Dry Tortugas

DT_herb <- filter(Herb2, SUBREGION == "DT")


DT_1999_herb <- filter(DT_herb, Year == "1999")

DT_1999_herb_sum <- mean(DT_1999_herb$RHI_Fish)
DT_1999_herbs <- data.frame(DT_1999_herb_sum)
DT_1999_herbs$Years <- "1999"
colnames(DT_1999_herbs) <- c("Herb","Year")


DT_2000_herb <- filter(DT_herb, Year == "2000")

DT_2000_herb_sum <- mean(DT_2000_herb$RHI_Fish)
DT_2000_herbs <- data.frame(DT_2000_herb_sum)
DT_2000_herbs$Years <- "2000"
colnames(DT_2000_herbs) <- c("Herb","Year")


DT_2004_herb <- filter(DT_herb, Year == "2004")

DT_2004_herb_sum <- mean(DT_2004_herb$RHI_Fish)
DT_2004_herbs <- data.frame(DT_2004_herb_sum)
DT_2004_herbs$Years <- "2004"
colnames(DT_2004_herbs) <- c("Herb","Year")


DT_2006_herb <- filter(DT_herb, Year == "2006")

DT_2006_herb_sum <- mean(DT_2006_herb$RHI_Fish)
DT_2006_herbs <- data.frame(DT_2006_herb_sum)
DT_2006_herbs$Years <- "2006"
colnames(DT_2006_herbs) <- c("Herb","Year")


DT_2008_herb <- filter(DT_herb, Year == "2008")

DT_2008_herb_sum <- mean(DT_2008_herb$RHI_Fish)
DT_2008_herbs <- data.frame(DT_2008_herb_sum)
DT_2008_herbs$Years <- "2008"
colnames(DT_2008_herbs) <- c("Herb","Year")


DT_2010_herb <- filter(DT_herb, Year == "2010")

DT_2010_herb_sum <- mean(DT_2010_herb$RHI_Fish)
DT_2010_herbs <- data.frame(DT_2010_herb_sum)
DT_2010_herbs$Years <- "2010"
colnames(DT_2010_herbs) <- c("Herb","Year")


DT_2012_herb <- filter(DT_herb, Year == "2012")

DT_2012_herb_sum <- mean(DT_2012_herb$RHI_Fish)
DT_2012_herbs <- data.frame(DT_2012_herb_sum)
DT_2012_herbs$Years <- "2012"
colnames(DT_2012_herbs) <- c("Herb","Year")


DT_2014_herb <- filter(DT_herb, Year == "2014")

DT_2014_herb_sum <- mean(DT_2014_herb$RHI_Fish)
DT_2014_herbs <- data.frame(DT_2014_herb_sum)
DT_2014_herbs$Years <- "2014"
colnames(DT_2014_herbs) <- c("Herb","Year")


DT_2016_herb <- filter(DT_herb, Year == "2016")

DT_2016_herb_sum <- mean(DT_2016_herb$RHI_Fish)
DT_2016_herbs <- data.frame(DT_2016_herb_sum)
DT_2016_herbs$Years <- "2016"
colnames(DT_2016_herbs) <- c("Herb","Year")


DT_RHI_herb <- rbind(DT_1999_herbs,DT_2000_herbs,DT_2004_herbs,DT_2006_herbs,DT_2008_herbs,DT_2010_herbs,DT_2012_herbs,DT_2014_herbs,DT_2016_herbs)


### Commercial 

Herb3 <- read_csv("All_regions_commercial_RHI_rank.csv")



DT_comm <- filter(Herb3, SUBREGION == "DT")


DT_1999_comm <- filter(DT_comm, Year == "1999")

DT_1999_comm_sum <- mean(DT_1999_comm$RHI_Fish)
DT_1999_comms <- data.frame(DT_1999_comm_sum)
DT_1999_comms$Years <- "1999"
colnames(DT_1999_comms) <- c("Comm","Year")


DT_2000_comm <- filter(DT_comm, Year == "2000")

DT_2000_comm_sum <- mean(DT_2000_comm$RHI_Fish)
DT_2000_comms <- data.frame(DT_2000_comm_sum)
DT_2000_comms$Years <- "2000"
colnames(DT_2000_comms) <- c("Comm","Year")


DT_2004_comm <- filter(DT_comm, Year == "2004")

DT_2004_comm_sum <- mean(DT_2004_comm$RHI_Fish)
DT_2004_comms <- data.frame(DT_2004_comm_sum)
DT_2004_comms$Years <- "2004"
colnames(DT_2004_comms) <- c("Comm","Year")


DT_2006_comm <- filter(DT_comm, Year == "2006")

DT_2006_comm_sum <- mean(DT_2006_comm$RHI_Fish)
DT_2006_comms <- data.frame(DT_2006_comm_sum)
DT_2006_comms$Years <- "2006"
colnames(DT_2006_comms) <- c("Comm","Year")


DT_2008_comm <- filter(DT_comm, Year == "2008")

DT_2008_comm_sum <- mean(DT_2008_comm$RHI_Fish)
DT_2008_comms <- data.frame(DT_2008_comm_sum)
DT_2008_comms$Years <- "2008"
colnames(DT_2008_comms) <- c("Comm","Year")


DT_2010_comm <- filter(DT_comm, Year == "2010")

DT_2010_comm_sum <- mean(DT_2010_comm$RHI_Fish)
DT_2010_comms <- data.frame(DT_2010_comm_sum)
DT_2010_comms$Years <- "2010"
colnames(DT_2010_comms) <- c("Comm","Year")


DT_2012_comm <- filter(DT_comm, Year == "2012")

DT_2012_comm_sum <- mean(DT_2012_comm$RHI_Fish)
DT_2012_comms <- data.frame(DT_2012_comm_sum)
DT_2012_comms$Years <- "2012"
colnames(DT_2012_comms) <- c("Comm","Year")


DT_2014_comm <- filter(DT_comm, Year == "2014")

DT_2014_comm_sum <- mean(DT_2014_comm$RHI_Fish)
DT_2014_comms <- data.frame(DT_2014_comm_sum)
DT_2014_comms$Years <- "2014"
colnames(DT_2014_comms) <- c("Comm","Year")


DT_2016_comm <- filter(DT_comm, Year == "2016")

DT_2016_comm_sum <- mean(DT_2016_comm$RHI_Fish)
DT_2016_comms <- data.frame(DT_2016_comm_sum)
DT_2016_comms$Years <- "2016"
colnames(DT_2016_comms) <- c("Comm","Year")


DT_RHI_comm <- rbind(DT_1999_comms,DT_2000_comms,DT_2004_comms,DT_2006_comms,DT_2008_comms,DT_2010_comms,DT_2012_comms,DT_2014_comms,DT_2016_comms)


## Combine 

DT_RHI_combined <- merge(DT_RHI_comm, DT_RHI_herb)







## Lower Keys

LK_herb <- filter(Herb2, SUBREGION == "LK")



LK_1999_herb <- filter(LK_herb, Year == "1999")

LK_1999_herb_sum <- mean(LK_1999_herb$RHI_Fish)
LK_1999_herbs <- data.frame(LK_1999_herb_sum)
LK_1999_herbs$Years <- "1999"
colnames(LK_1999_herbs) <- c("Herb","Year")

LK_2000_herb <- filter(LK_herb, Year == "2000")

LK_2000_herb_sum <- mean(LK_2000_herb$RHI_Fish)
LK_2000_herbs <- data.frame(LK_2000_herb_sum)
LK_2000_herbs$Years <- "2000"
colnames(LK_2000_herbs) <- c("Herb","Year")

LK_2001_herb <- filter(LK_herb, Year == "2001")

LK_2001_herb_sum <- mean(LK_2001_herb$RHI_Fish)
LK_2001_herbs <- data.frame(LK_2001_herb_sum)
LK_2001_herbs$Years <- "2001"
colnames(LK_2001_herbs) <- c("Herb","Year")


LK_2002_herb <- filter(LK_herb, Year == "2002")

LK_2002_herb_sum <- mean(LK_2002_herb$RHI_Fish)
LK_2002_herbs <- data.frame(LK_2002_herb_sum)
LK_2002_herbs$Years <- "2002"
colnames(LK_2002_herbs) <- c("Herb","Year")

LK_2003_herb <- filter(LK_herb, Year == "2003")

LK_2003_herb_sum <- mean(LK_2003_herb$RHI_Fish)
LK_2003_herbs <- data.frame(LK_2003_herb_sum)
LK_2003_herbs$Years <- "2003"
colnames(LK_2003_herbs) <- c("Herb","Year")


LK_2004_herb <- filter(LK_herb, Year == "2004")

LK_2004_herb_sum <- mean(LK_2004_herb$RHI_Fish)
LK_2004_herbs <- data.frame(LK_2004_herb_sum)
LK_2004_herbs$Years <- "2004"
colnames(LK_2004_herbs) <- c("Herb","Year")

LK_2005_herb <- filter(LK_herb, Year == "2005")

LK_2005_herb_sum <- mean(LK_2005_herb$RHI_Fish)
LK_2005_herbs <- data.frame(LK_2005_herb_sum)
LK_2005_herbs$Years <- "2005"
colnames(LK_2005_herbs) <- c("Herb","Year")



LK_2006_herb <- filter(LK_herb, Year == "2006")

LK_2006_herb_sum <- mean(LK_2006_herb$RHI_Fish)
LK_2006_herbs <- data.frame(LK_2006_herb_sum)
LK_2006_herbs$Years <- "2006"
colnames(LK_2006_herbs) <- c("Herb","Year")

LK_2007_herb <- filter(LK_herb, Year == "2007")

LK_2007_herb_sum <- mean(LK_2007_herb$RHI_Fish)
LK_2007_herbs <- data.frame(LK_2007_herb_sum)
LK_2007_herbs$Years <- "2007"
colnames(LK_2007_herbs) <- c("Herb","Year")



LK_2008_herb <- filter(LK_herb, Year == "2008")

LK_2008_herb_sum <- mean(LK_2008_herb$RHI_Fish)
LK_2008_herbs <- data.frame(LK_2008_herb_sum)
LK_2008_herbs$Years <- "2008"
colnames(LK_2008_herbs) <- c("Herb","Year")


LK_2009_herb <- filter(LK_herb, Year == "2009")

LK_2009_herb_sum <- mean(LK_2009_herb$RHI_Fish)
LK_2009_herbs <- data.frame(LK_2009_herb_sum)
LK_2009_herbs$Years <- "2009"
colnames(LK_2009_herbs) <- c("Herb","Year")



LK_2010_herb <- filter(LK_herb, Year == "2010")

LK_2010_herb_sum <- mean(LK_2010_herb$RHI_Fish)
LK_2010_herbs <- data.frame(LK_2010_herb_sum)
LK_2010_herbs$Years <- "2010"
colnames(LK_2010_herbs) <- c("Herb","Year")


LK_2011_herb <- filter(LK_herb, Year == "2011")

LK_2011_herb_sum <- mean(LK_2011_herb$RHI_Fish)
LK_2011_herbs <- data.frame(LK_2011_herb_sum)
LK_2011_herbs$Years <- "2011"
colnames(LK_2011_herbs) <- c("Herb","Year")



LK_2012_herb <- filter(LK_herb, Year == "2012")

LK_2012_herb_sum <- mean(LK_2012_herb$RHI_Fish)
LK_2012_herbs <- data.frame(LK_2012_herb_sum)
LK_2012_herbs$Years <- "2012"
colnames(LK_2012_herbs) <- c("Herb","Year")


LK_2014_herb <- filter(LK_herb, Year == "2014")

LK_2014_herb_sum <- mean(LK_2014_herb$RHI_Fish)
LK_2014_herbs <- data.frame(LK_2014_herb_sum)
LK_2014_herbs$Years <- "2014"
colnames(LK_2014_herbs) <- c("Herb","Year")


LK_2016_herb <- filter(LK_herb, Year == "2016")

LK_2016_herb_sum <- mean(LK_2016_herb$RHI_Fish)
LK_2016_herbs <- data.frame(LK_2016_herb_sum)
LK_2016_herbs$Years <- "2016"
colnames(LK_2016_herbs) <- c("Herb","Year")


LK_2018_herb <- filter(LK_herb, Year == "2018")

LK_2018_herb_sum <- mean(LK_2018_herb$RHI_Fish)
LK_2018_herbs <- data.frame(LK_2018_herb_sum)
LK_2018_herbs$Years <- "2018"
colnames(LK_2018_herbs) <- c("Herb","Year")



LK_RHI_herb <- rbind(LK_1999_herbs,LK_2000_herbs,LK_2001_herbs,LK_2002_herbs,LK_2003_herbs,LK_2004_herbs,LK_2005_herbs,LK_2006_herbs,LK_2007_herbs,LK_2008_herbs,LK_2009_herbs,LK_2010_herbs,LK_2011_herbs,LK_2012_herbs,LK_2014_herbs,LK_2016_herbs,LK_2018_herbs)


### Commercial 


LK_comm <- filter(Herb3, SUBREGION == "LK")



LK_1999_comm <- filter(LK_comm, Year == "1999")

LK_1999_comm_sum <- mean(LK_1999_comm$RHI_Fish)
LK_1999_comms <- data.frame(LK_1999_comm_sum)
LK_1999_comms$Years <- "1999"
colnames(LK_1999_comms) <- c("Comm","Year")

LK_2000_comm <- filter(LK_comm, Year == "2000")

LK_2000_comm_sum <- mean(LK_2000_comm$RHI_Fish)
LK_2000_comms <- data.frame(LK_2000_comm_sum)
LK_2000_comms$Years <- "2000"
colnames(LK_2000_comms) <- c("Comm","Year")

LK_2001_comm <- filter(LK_comm, Year == "2001")

LK_2001_comm_sum <- mean(LK_2001_comm$RHI_Fish)
LK_2001_comms <- data.frame(LK_2001_comm_sum)
LK_2001_comms$Years <- "2001"
colnames(LK_2001_comms) <- c("Comm","Year")


LK_2002_comm <- filter(LK_comm, Year == "2002")

LK_2002_comm_sum <- mean(LK_2002_comm$RHI_Fish)
LK_2002_comms <- data.frame(LK_2002_comm_sum)
LK_2002_comms$Years <- "2002"
colnames(LK_2002_comms) <- c("Comm","Year")

LK_2003_comm <- filter(LK_comm, Year == "2003")

LK_2003_comm_sum <- mean(LK_2003_comm$RHI_Fish)
LK_2003_comms <- data.frame(LK_2003_comm_sum)
LK_2003_comms$Years <- "2003"
colnames(LK_2003_comms) <- c("Comm","Year")


LK_2004_comm <- filter(LK_comm, Year == "2004")

LK_2004_comm_sum <- mean(LK_2004_comm$RHI_Fish)
LK_2004_comms <- data.frame(LK_2004_comm_sum)
LK_2004_comms$Years <- "2004"
colnames(LK_2004_comms) <- c("Comm","Year")

LK_2005_comm <- filter(LK_comm, Year == "2005")

LK_2005_comm_sum <- mean(LK_2005_comm$RHI_Fish)
LK_2005_comms <- data.frame(LK_2005_comm_sum)
LK_2005_comms$Years <- "2005"
colnames(LK_2005_comms) <- c("Comm","Year")



LK_2006_comm <- filter(LK_comm, Year == "2006")

LK_2006_comm_sum <- mean(LK_2006_comm$RHI_Fish)
LK_2006_comms <- data.frame(LK_2006_comm_sum)
LK_2006_comms$Years <- "2006"
colnames(LK_2006_comms) <- c("Comm","Year")

LK_2007_comm <- filter(LK_comm, Year == "2007")

LK_2007_comm_sum <- mean(LK_2007_comm$RHI_Fish)
LK_2007_comms <- data.frame(LK_2007_comm_sum)
LK_2007_comms$Years <- "2007"
colnames(LK_2007_comms) <- c("Comm","Year")



LK_2008_comm <- filter(LK_comm, Year == "2008")

LK_2008_comm_sum <- mean(LK_2008_comm$RHI_Fish)
LK_2008_comms <- data.frame(LK_2008_comm_sum)
LK_2008_comms$Years <- "2008"
colnames(LK_2008_comms) <- c("Comm","Year")


LK_2009_comm <- filter(LK_comm, Year == "2009")

LK_2009_comm_sum <- mean(LK_2009_comm$RHI_Fish)
LK_2009_comms <- data.frame(LK_2009_comm_sum)
LK_2009_comms$Years <- "2009"
colnames(LK_2009_comms) <- c("Comm","Year")



LK_2010_comm <- filter(LK_comm, Year == "2010")

LK_2010_comm_sum <- mean(LK_2010_comm$RHI_Fish)
LK_2010_comms <- data.frame(LK_2010_comm_sum)
LK_2010_comms$Years <- "2010"
colnames(LK_2010_comms) <- c("Comm","Year")


LK_2011_comm <- filter(LK_comm, Year == "2011")

LK_2011_comm_sum <- mean(LK_2011_comm$RHI_Fish)
LK_2011_comms <- data.frame(LK_2011_comm_sum)
LK_2011_comms$Years <- "2011"
colnames(LK_2011_comms) <- c("Comm","Year")



LK_2012_comm <- filter(LK_comm, Year == "2012")

LK_2012_comm_sum <- mean(LK_2012_comm$RHI_Fish)
LK_2012_comms <- data.frame(LK_2012_comm_sum)
LK_2012_comms$Years <- "2012"
colnames(LK_2012_comms) <- c("Comm","Year")


LK_2014_comm <- filter(LK_comm, Year == "2014")

LK_2014_comm_sum <- mean(LK_2014_comm$RHI_Fish)
LK_2014_comms <- data.frame(LK_2014_comm_sum)
LK_2014_comms$Years <- "2014"
colnames(LK_2014_comms) <- c("Comm","Year")


LK_2016_comm <- filter(LK_comm, Year == "2016")

LK_2016_comm_sum <- mean(LK_2016_comm$RHI_Fish)
LK_2016_comms <- data.frame(LK_2016_comm_sum)
LK_2016_comms$Years <- "2016"
colnames(LK_2016_comms) <- c("Comm","Year")


LK_2018_comm <- filter(LK_comm, Year == "2018")

LK_2018_comm_sum <- mean(LK_2018_comm$RHI_Fish)
LK_2018_comms <- data.frame(LK_2018_comm_sum)
LK_2018_comms$Years <- "2018"
colnames(LK_2018_comms) <- c("Comm","Year")



LK_RHI_comm <- rbind(LK_1999_comms,LK_2000_comms,LK_2001_comms,LK_2002_comms,LK_2003_comms,LK_2004_comms,LK_2005_comms,LK_2006_comms,LK_2007_comms,LK_2008_comms,LK_2009_comms,LK_2010_comms,LK_2011_comms,LK_2012_comms,LK_2014_comms,LK_2016_comms,LK_2018_comms)

LK_RHI_combined <- merge(LK_RHI_comm, LK_RHI_herb)




## Middle Keys

MK_herb <- filter(Herb2, SUBREGION == "MK")



MK_1999_herb <- filter(MK_herb, Year == "1999")

MK_1999_herb_sum <- mean(MK_1999_herb$RHI_Fish)
MK_1999_herbs <- data.frame(MK_1999_herb_sum)
MK_1999_herbs$Years <- "1999"
colnames(MK_1999_herbs) <- c("Herb","Year")

MK_2000_herb <- filter(MK_herb, Year == "2000")

MK_2000_herb_sum <- mean(MK_2000_herb$RHI_Fish)
MK_2000_herbs <- data.frame(MK_2000_herb_sum)
MK_2000_herbs$Years <- "2000"
colnames(MK_2000_herbs) <- c("Herb","Year")

MK_2001_herb <- filter(MK_herb, Year == "2001")

MK_2001_herb_sum <- mean(MK_2001_herb$RHI_Fish)
MK_2001_herbs <- data.frame(MK_2001_herb_sum)
MK_2001_herbs$Years <- "2001"
colnames(MK_2001_herbs) <- c("Herb","Year")


MK_2002_herb <- filter(MK_herb, Year == "2002")

MK_2002_herb_sum <- mean(MK_2002_herb$RHI_Fish)
MK_2002_herbs <- data.frame(MK_2002_herb_sum)
MK_2002_herbs$Years <- "2002"
colnames(MK_2002_herbs) <- c("Herb","Year")

MK_2003_herb <- filter(MK_herb, Year == "2003")

MK_2003_herb_sum <- mean(MK_2003_herb$RHI_Fish)
MK_2003_herbs <- data.frame(MK_2003_herb_sum)
MK_2003_herbs$Years <- "2003"
colnames(MK_2003_herbs) <- c("Herb","Year")


MK_2004_herb <- filter(MK_herb, Year == "2004")

MK_2004_herb_sum <- mean(MK_2004_herb$RHI_Fish)
MK_2004_herbs <- data.frame(MK_2004_herb_sum)
MK_2004_herbs$Years <- "2004"
colnames(MK_2004_herbs) <- c("Herb","Year")

MK_2005_herb <- filter(MK_herb, Year == "2005")

MK_2005_herb_sum <- mean(MK_2005_herb$RHI_Fish)
MK_2005_herbs <- data.frame(MK_2005_herb_sum)
MK_2005_herbs$Years <- "2005"
colnames(MK_2005_herbs) <- c("Herb","Year")



MK_2006_herb <- filter(MK_herb, Year == "2006")

MK_2006_herb_sum <- mean(MK_2006_herb$RHI_Fish)
MK_2006_herbs <- data.frame(MK_2006_herb_sum)
MK_2006_herbs$Years <- "2006"
colnames(MK_2006_herbs) <- c("Herb","Year")

MK_2007_herb <- filter(MK_herb, Year == "2007")

MK_2007_herb_sum <- mean(MK_2007_herb$RHI_Fish)
MK_2007_herbs <- data.frame(MK_2007_herb_sum)
MK_2007_herbs$Years <- "2007"
colnames(MK_2007_herbs) <- c("Herb","Year")



MK_2008_herb <- filter(MK_herb, Year == "2008")

MK_2008_herb_sum <- mean(MK_2008_herb$RHI_Fish)
MK_2008_herbs <- data.frame(MK_2008_herb_sum)
MK_2008_herbs$Years <- "2008"
colnames(MK_2008_herbs) <- c("Herb","Year")


MK_2009_herb <- filter(MK_herb, Year == "2009")

MK_2009_herb_sum <- mean(MK_2009_herb$RHI_Fish)
MK_2009_herbs <- data.frame(MK_2009_herb_sum)
MK_2009_herbs$Years <- "2009"
colnames(MK_2009_herbs) <- c("Herb","Year")



MK_2010_herb <- filter(MK_herb, Year == "2010")

MK_2010_herb_sum <- mean(MK_2010_herb$RHI_Fish)
MK_2010_herbs <- data.frame(MK_2010_herb_sum)
MK_2010_herbs$Years <- "2010"
colnames(MK_2010_herbs) <- c("Herb","Year")


MK_2011_herb <- filter(MK_herb, Year == "2011")

MK_2011_herb_sum <- mean(MK_2011_herb$RHI_Fish)
MK_2011_herbs <- data.frame(MK_2011_herb_sum)
MK_2011_herbs$Years <- "2011"
colnames(MK_2011_herbs) <- c("Herb","Year")



MK_2012_herb <- filter(MK_herb, Year == "2012")

MK_2012_herb_sum <- mean(MK_2012_herb$RHI_Fish)
MK_2012_herbs <- data.frame(MK_2012_herb_sum)
MK_2012_herbs$Years <- "2012"
colnames(MK_2012_herbs) <- c("Herb","Year")


MK_2014_herb <- filter(MK_herb, Year == "2014")

MK_2014_herb_sum <- mean(MK_2014_herb$RHI_Fish)
MK_2014_herbs <- data.frame(MK_2014_herb_sum)
MK_2014_herbs$Years <- "2014"
colnames(MK_2014_herbs) <- c("Herb","Year")


MK_2016_herb <- filter(MK_herb, Year == "2016")

MK_2016_herb_sum <- mean(MK_2016_herb$RHI_Fish)
MK_2016_herbs <- data.frame(MK_2016_herb_sum)
MK_2016_herbs$Years <- "2016"
colnames(MK_2016_herbs) <- c("Herb","Year")


MK_2018_herb <- filter(MK_herb, Year == "2018")

MK_2018_herb_sum <- mean(MK_2018_herb$RHI_Fish)
MK_2018_herbs <- data.frame(MK_2018_herb_sum)
MK_2018_herbs$Years <- "2018"
colnames(MK_2018_herbs) <- c("Herb","Year")



MK_RHI_herb <- rbind(MK_1999_herbs,MK_2000_herbs,MK_2001_herbs,MK_2002_herbs,MK_2003_herbs,MK_2004_herbs,MK_2005_herbs,MK_2006_herbs,MK_2007_herbs,MK_2008_herbs,MK_2009_herbs,MK_2010_herbs,MK_2011_herbs,MK_2012_herbs,MK_2014_herbs,MK_2016_herbs,MK_2018_herbs)


### Commercial 


MK_comm <- filter(Herb3, SUBREGION == "MK")



MK_1999_comm <- filter(MK_comm, Year == "1999")

MK_1999_comm_sum <- mean(MK_1999_comm$RHI_Fish)
MK_1999_comms <- data.frame(MK_1999_comm_sum)
MK_1999_comms$Years <- "1999"
colnames(MK_1999_comms) <- c("Comm","Year")

MK_2000_comm <- filter(MK_comm, Year == "2000")

MK_2000_comm_sum <- mean(MK_2000_comm$RHI_Fish)
MK_2000_comms <- data.frame(MK_2000_comm_sum)
MK_2000_comms$Years <- "2000"
colnames(MK_2000_comms) <- c("Comm","Year")

MK_2001_comm <- filter(MK_comm, Year == "2001")

MK_2001_comm_sum <- mean(MK_2001_comm$RHI_Fish)
MK_2001_comms <- data.frame(MK_2001_comm_sum)
MK_2001_comms$Years <- "2001"
colnames(MK_2001_comms) <- c("Comm","Year")


MK_2002_comm <- filter(MK_comm, Year == "2002")

MK_2002_comm_sum <- mean(MK_2002_comm$RHI_Fish)
MK_2002_comms <- data.frame(MK_2002_comm_sum)
MK_2002_comms$Years <- "2002"
colnames(MK_2002_comms) <- c("Comm","Year")

MK_2003_comm <- filter(MK_comm, Year == "2003")

MK_2003_comm_sum <- mean(MK_2003_comm$RHI_Fish)
MK_2003_comms <- data.frame(MK_2003_comm_sum)
MK_2003_comms$Years <- "2003"
colnames(MK_2003_comms) <- c("Comm","Year")


MK_2004_comm <- filter(MK_comm, Year == "2004")

MK_2004_comm_sum <- mean(MK_2004_comm$RHI_Fish)
MK_2004_comms <- data.frame(MK_2004_comm_sum)
MK_2004_comms$Years <- "2004"
colnames(MK_2004_comms) <- c("Comm","Year")

MK_2005_comm <- filter(MK_comm, Year == "2005")

MK_2005_comm_sum <- mean(MK_2005_comm$RHI_Fish)
MK_2005_comms <- data.frame(MK_2005_comm_sum)
MK_2005_comms$Years <- "2005"
colnames(MK_2005_comms) <- c("Comm","Year")



MK_2006_comm <- filter(MK_comm, Year == "2006")

MK_2006_comm_sum <- mean(MK_2006_comm$RHI_Fish)
MK_2006_comms <- data.frame(MK_2006_comm_sum)
MK_2006_comms$Years <- "2006"
colnames(MK_2006_comms) <- c("Comm","Year")

MK_2007_comm <- filter(MK_comm, Year == "2007")

MK_2007_comm_sum <- mean(MK_2007_comm$RHI_Fish)
MK_2007_comms <- data.frame(MK_2007_comm_sum)
MK_2007_comms$Years <- "2007"
colnames(MK_2007_comms) <- c("Comm","Year")



MK_2008_comm <- filter(MK_comm, Year == "2008")

MK_2008_comm_sum <- mean(MK_2008_comm$RHI_Fish)
MK_2008_comms <- data.frame(MK_2008_comm_sum)
MK_2008_comms$Years <- "2008"
colnames(MK_2008_comms) <- c("Comm","Year")


MK_2009_comm <- filter(MK_comm, Year == "2009")

MK_2009_comm_sum <- mean(MK_2009_comm$RHI_Fish)
MK_2009_comms <- data.frame(MK_2009_comm_sum)
MK_2009_comms$Years <- "2009"
colnames(MK_2009_comms) <- c("Comm","Year")



MK_2010_comm <- filter(MK_comm, Year == "2010")

MK_2010_comm_sum <- mean(MK_2010_comm$RHI_Fish)
MK_2010_comms <- data.frame(MK_2010_comm_sum)
MK_2010_comms$Years <- "2010"
colnames(MK_2010_comms) <- c("Comm","Year")


MK_2011_comm <- filter(MK_comm, Year == "2011")

MK_2011_comm_sum <- mean(MK_2011_comm$RHI_Fish)
MK_2011_comms <- data.frame(MK_2011_comm_sum)
MK_2011_comms$Years <- "2011"
colnames(MK_2011_comms) <- c("Comm","Year")



MK_2012_comm <- filter(MK_comm, Year == "2012")

MK_2012_comm_sum <- mean(MK_2012_comm$RHI_Fish)
MK_2012_comms <- data.frame(MK_2012_comm_sum)
MK_2012_comms$Years <- "2012"
colnames(MK_2012_comms) <- c("Comm","Year")


MK_2014_comm <- filter(MK_comm, Year == "2014")

MK_2014_comm_sum <- mean(MK_2014_comm$RHI_Fish)
MK_2014_comms <- data.frame(MK_2014_comm_sum)
MK_2014_comms$Years <- "2014"
colnames(MK_2014_comms) <- c("Comm","Year")


MK_2016_comm <- filter(MK_comm, Year == "2016")

MK_2016_comm_sum <- mean(MK_2016_comm$RHI_Fish)
MK_2016_comms <- data.frame(MK_2016_comm_sum)
MK_2016_comms$Years <- "2016"
colnames(MK_2016_comms) <- c("Comm","Year")


MK_2018_comm <- filter(MK_comm, Year == "2018")

MK_2018_comm_sum <- mean(MK_2018_comm$RHI_Fish)
MK_2018_comms <- data.frame(MK_2018_comm_sum)
MK_2018_comms$Years <- "2018"
colnames(MK_2018_comms) <- c("Comm","Year")



MK_RHI_comm <- rbind(MK_1999_comms,MK_2000_comms,MK_2001_comms,MK_2002_comms,MK_2003_comms,MK_2004_comms,MK_2005_comms,MK_2006_comms,MK_2007_comms,MK_2008_comms,MK_2009_comms,MK_2010_comms,MK_2011_comms,MK_2012_comms,MK_2014_comms,MK_2016_comms,MK_2018_comms)

MK_RHI_combined <- merge(MK_RHI_comm, MK_RHI_herb)








## Upper Keys 



UK_herb <- filter(Herb2, SUBREGION == "UK")



UK_1999_herb <- filter(UK_herb, Year == "1999")

UK_1999_herb_sum <- mean(UK_1999_herb$RHI_Fish)
UK_1999_herbs <- data.frame(UK_1999_herb_sum)
UK_1999_herbs$Years <- "1999"
colnames(UK_1999_herbs) <- c("Herb","Year")

UK_2000_herb <- filter(UK_herb, Year == "2000")

UK_2000_herb_sum <- mean(UK_2000_herb$RHI_Fish)
UK_2000_herbs <- data.frame(UK_2000_herb_sum)
UK_2000_herbs$Years <- "2000"
colnames(UK_2000_herbs) <- c("Herb","Year")

UK_2001_herb <- filter(UK_herb, Year == "2001")

UK_2001_herb_sum <- mean(UK_2001_herb$RHI_Fish)
UK_2001_herbs <- data.frame(UK_2001_herb_sum)
UK_2001_herbs$Years <- "2001"
colnames(UK_2001_herbs) <- c("Herb","Year")


UK_2002_herb <- filter(UK_herb, Year == "2002")

UK_2002_herb_sum <- mean(UK_2002_herb$RHI_Fish)
UK_2002_herbs <- data.frame(UK_2002_herb_sum)
UK_2002_herbs$Years <- "2002"
colnames(UK_2002_herbs) <- c("Herb","Year")

UK_2003_herb <- filter(UK_herb, Year == "2003")

UK_2003_herb_sum <- mean(UK_2003_herb$RHI_Fish)
UK_2003_herbs <- data.frame(UK_2003_herb_sum)
UK_2003_herbs$Years <- "2003"
colnames(UK_2003_herbs) <- c("Herb","Year")


UK_2004_herb <- filter(UK_herb, Year == "2004")

UK_2004_herb_sum <- mean(UK_2004_herb$RHI_Fish)
UK_2004_herbs <- data.frame(UK_2004_herb_sum)
UK_2004_herbs$Years <- "2004"
colnames(UK_2004_herbs) <- c("Herb","Year")

UK_2005_herb <- filter(UK_herb, Year == "2005")

UK_2005_herb_sum <- mean(UK_2005_herb$RHI_Fish)
UK_2005_herbs <- data.frame(UK_2005_herb_sum)
UK_2005_herbs$Years <- "2005"
colnames(UK_2005_herbs) <- c("Herb","Year")



UK_2006_herb <- filter(UK_herb, Year == "2006")

UK_2006_herb_sum <- mean(UK_2006_herb$RHI_Fish)
UK_2006_herbs <- data.frame(UK_2006_herb_sum)
UK_2006_herbs$Years <- "2006"
colnames(UK_2006_herbs) <- c("Herb","Year")

UK_2007_herb <- filter(UK_herb, Year == "2007")

UK_2007_herb_sum <- mean(UK_2007_herb$RHI_Fish)
UK_2007_herbs <- data.frame(UK_2007_herb_sum)
UK_2007_herbs$Years <- "2007"
colnames(UK_2007_herbs) <- c("Herb","Year")



UK_2008_herb <- filter(UK_herb, Year == "2008")

UK_2008_herb_sum <- mean(UK_2008_herb$RHI_Fish)
UK_2008_herbs <- data.frame(UK_2008_herb_sum)
UK_2008_herbs$Years <- "2008"
colnames(UK_2008_herbs) <- c("Herb","Year")


UK_2009_herb <- filter(UK_herb, Year == "2009")

UK_2009_herb_sum <- mean(UK_2009_herb$RHI_Fish)
UK_2009_herbs <- data.frame(UK_2009_herb_sum)
UK_2009_herbs$Years <- "2009"
colnames(UK_2009_herbs) <- c("Herb","Year")



UK_2010_herb <- filter(UK_herb, Year == "2010")

UK_2010_herb_sum <- mean(UK_2010_herb$RHI_Fish)
UK_2010_herbs <- data.frame(UK_2010_herb_sum)
UK_2010_herbs$Years <- "2010"
colnames(UK_2010_herbs) <- c("Herb","Year")


UK_2011_herb <- filter(UK_herb, Year == "2011")

UK_2011_herb_sum <- mean(UK_2011_herb$RHI_Fish)
UK_2011_herbs <- data.frame(UK_2011_herb_sum)
UK_2011_herbs$Years <- "2011"
colnames(UK_2011_herbs) <- c("Herb","Year")



UK_2012_herb <- filter(UK_herb, Year == "2012")

UK_2012_herb_sum <- mean(UK_2012_herb$RHI_Fish)
UK_2012_herbs <- data.frame(UK_2012_herb_sum)
UK_2012_herbs$Years <- "2012"
colnames(UK_2012_herbs) <- c("Herb","Year")


UK_2014_herb <- filter(UK_herb, Year == "2014")

UK_2014_herb_sum <- mean(UK_2014_herb$RHI_Fish)
UK_2014_herbs <- data.frame(UK_2014_herb_sum)
UK_2014_herbs$Years <- "2014"
colnames(UK_2014_herbs) <- c("Herb","Year")


UK_2016_herb <- filter(UK_herb, Year == "2016")

UK_2016_herb_sum <- mean(UK_2016_herb$RHI_Fish)
UK_2016_herbs <- data.frame(UK_2016_herb_sum)
UK_2016_herbs$Years <- "2016"
colnames(UK_2016_herbs) <- c("Herb","Year")


UK_2018_herb <- filter(UK_herb, Year == "2018")

UK_2018_herb_sum <- mean(UK_2018_herb$RHI_Fish)
UK_2018_herbs <- data.frame(UK_2018_herb_sum)
UK_2018_herbs$Years <- "2018"
colnames(UK_2018_herbs) <- c("Herb","Year")



UK_RHI_herb <- rbind(UK_1999_herbs,UK_2000_herbs,UK_2001_herbs,UK_2002_herbs,UK_2003_herbs,UK_2004_herbs,UK_2005_herbs,UK_2006_herbs,UK_2007_herbs,UK_2008_herbs,UK_2009_herbs,UK_2010_herbs,UK_2011_herbs,UK_2012_herbs,UK_2014_herbs,UK_2016_herbs,UK_2018_herbs)


### Commercial 


UK_comm <- filter(Herb3, SUBREGION == "UK")



UK_1999_comm <- filter(UK_comm, Year == "1999")

UK_1999_comm_sum <- mean(UK_1999_comm$RHI_Fish)
UK_1999_comms <- data.frame(UK_1999_comm_sum)
UK_1999_comms$Years <- "1999"
colnames(UK_1999_comms) <- c("Comm","Year")

UK_2000_comm <- filter(UK_comm, Year == "2000")

UK_2000_comm_sum <- mean(UK_2000_comm$RHI_Fish)
UK_2000_comms <- data.frame(UK_2000_comm_sum)
UK_2000_comms$Years <- "2000"
colnames(UK_2000_comms) <- c("Comm","Year")

UK_2001_comm <- filter(UK_comm, Year == "2001")

UK_2001_comm_sum <- mean(UK_2001_comm$RHI_Fish)
UK_2001_comms <- data.frame(UK_2001_comm_sum)
UK_2001_comms$Years <- "2001"
colnames(UK_2001_comms) <- c("Comm","Year")


UK_2002_comm <- filter(UK_comm, Year == "2002")

UK_2002_comm_sum <- mean(UK_2002_comm$RHI_Fish)
UK_2002_comms <- data.frame(UK_2002_comm_sum)
UK_2002_comms$Years <- "2002"
colnames(UK_2002_comms) <- c("Comm","Year")

UK_2003_comm <- filter(UK_comm, Year == "2003")

UK_2003_comm_sum <- mean(UK_2003_comm$RHI_Fish)
UK_2003_comms <- data.frame(UK_2003_comm_sum)
UK_2003_comms$Years <- "2003"
colnames(UK_2003_comms) <- c("Comm","Year")


UK_2004_comm <- filter(UK_comm, Year == "2004")

UK_2004_comm_sum <- mean(UK_2004_comm$RHI_Fish)
UK_2004_comms <- data.frame(UK_2004_comm_sum)
UK_2004_comms$Years <- "2004"
colnames(UK_2004_comms) <- c("Comm","Year")

UK_2005_comm <- filter(UK_comm, Year == "2005")

UK_2005_comm_sum <- mean(UK_2005_comm$RHI_Fish)
UK_2005_comms <- data.frame(UK_2005_comm_sum)
UK_2005_comms$Years <- "2005"
colnames(UK_2005_comms) <- c("Comm","Year")



UK_2006_comm <- filter(UK_comm, Year == "2006")

UK_2006_comm_sum <- mean(UK_2006_comm$RHI_Fish)
UK_2006_comms <- data.frame(UK_2006_comm_sum)
UK_2006_comms$Years <- "2006"
colnames(UK_2006_comms) <- c("Comm","Year")

UK_2007_comm <- filter(UK_comm, Year == "2007")

UK_2007_comm_sum <- mean(UK_2007_comm$RHI_Fish)
UK_2007_comms <- data.frame(UK_2007_comm_sum)
UK_2007_comms$Years <- "2007"
colnames(UK_2007_comms) <- c("Comm","Year")



UK_2008_comm <- filter(UK_comm, Year == "2008")

UK_2008_comm_sum <- mean(UK_2008_comm$RHI_Fish)
UK_2008_comms <- data.frame(UK_2008_comm_sum)
UK_2008_comms$Years <- "2008"
colnames(UK_2008_comms) <- c("Comm","Year")


UK_2009_comm <- filter(UK_comm, Year == "2009")

UK_2009_comm_sum <- mean(UK_2009_comm$RHI_Fish)
UK_2009_comms <- data.frame(UK_2009_comm_sum)
UK_2009_comms$Years <- "2009"
colnames(UK_2009_comms) <- c("Comm","Year")



UK_2010_comm <- filter(UK_comm, Year == "2010")

UK_2010_comm_sum <- mean(UK_2010_comm$RHI_Fish)
UK_2010_comms <- data.frame(UK_2010_comm_sum)
UK_2010_comms$Years <- "2010"
colnames(UK_2010_comms) <- c("Comm","Year")


UK_2011_comm <- filter(UK_comm, Year == "2011")

UK_2011_comm_sum <- mean(UK_2011_comm$RHI_Fish)
UK_2011_comms <- data.frame(UK_2011_comm_sum)
UK_2011_comms$Years <- "2011"
colnames(UK_2011_comms) <- c("Comm","Year")



UK_2012_comm <- filter(UK_comm, Year == "2012")

UK_2012_comm_sum <- mean(UK_2012_comm$RHI_Fish)
UK_2012_comms <- data.frame(UK_2012_comm_sum)
UK_2012_comms$Years <- "2012"
colnames(UK_2012_comms) <- c("Comm","Year")


UK_2014_comm <- filter(UK_comm, Year == "2014")

UK_2014_comm_sum <- mean(UK_2014_comm$RHI_Fish)
UK_2014_comms <- data.frame(UK_2014_comm_sum)
UK_2014_comms$Years <- "2014"
colnames(UK_2014_comms) <- c("Comm","Year")


UK_2016_comm <- filter(UK_comm, Year == "2016")

UK_2016_comm_sum <- mean(UK_2016_comm$RHI_Fish)
UK_2016_comms <- data.frame(UK_2016_comm_sum)
UK_2016_comms$Years <- "2016"
colnames(UK_2016_comms) <- c("Comm","Year")


UK_2018_comm <- filter(UK_comm, Year == "2018")

UK_2018_comm_sum <- mean(UK_2018_comm$RHI_Fish)
UK_2018_comms <- data.frame(UK_2018_comm_sum)
UK_2018_comms$Years <- "2018"
colnames(UK_2018_comms) <- c("Comm","Year")



UK_RHI_comm <- rbind(UK_1999_comms,UK_2000_comms,UK_2001_comms,UK_2002_comms,UK_2003_comms,UK_2004_comms,UK_2005_comms,UK_2006_comms,UK_2007_comms,UK_2008_comms,UK_2009_comms,UK_2010_comms,UK_2011_comms,UK_2012_comms,UK_2014_comms,UK_2016_comms,UK_2018_comms)

UK_RHI_combined <- merge(UK_RHI_comm, UK_RHI_herb)




## SEF


SEF_herb <- filter(Herb2, SUBREGION == "SEF")



SEF_2013_herb <- filter(SEF_herb, Year == "2013")

SEF_2013_herb_sum <- mean(SEF_2013_herb$RHI_Fish)
SEF_2013_herbs <- data.frame(SEF_2013_herb_sum)
SEF_2013_herbs$Years <- "2013"
colnames(SEF_2013_herbs) <- c("Herb","Year")


SEF_2014_herb <- filter(SEF_herb, Year == "2014")

SEF_2014_herb_sum <- mean(SEF_2014_herb$RHI_Fish)
SEF_2014_herbs <- data.frame(SEF_2014_herb_sum)
SEF_2014_herbs$Years <- "2014"
colnames(SEF_2014_herbs) <- c("Herb","Year")


SEF_2015_herb <- filter(SEF_herb, Year == "2015")

SEF_2015_herb_sum <- mean(SEF_2015_herb$RHI_Fish)
SEF_2015_herbs <- data.frame(SEF_2015_herb_sum)
SEF_2015_herbs$Years <- "2015"
colnames(SEF_2015_herbs) <- c("Herb","Year")


SEF_2016_herb <- filter(SEF_herb, Year == "2016")

SEF_2016_herb_sum <- mean(SEF_2016_herb$RHI_Fish)
SEF_2016_herbs <- data.frame(SEF_2016_herb_sum)
SEF_2016_herbs$Years <- "2016"
colnames(SEF_2016_herbs) <- c("Herb","Year")


SEF_2018_herb <- filter(SEF_herb, Year == "2018")

SEF_2018_herb_sum <- mean(SEF_2018_herb$RHI_Fish)
SEF_2018_herbs <- data.frame(SEF_2018_herb_sum)
SEF_2018_herbs$Years <- "2018"
colnames(SEF_2018_herbs) <- c("Herb","Year")



SEF_RHI_herb <- rbind(SEF_2013_herbs,SEF_2014_herbs,SEF_2015_herbs,SEF_2016_herbs,SEF_2018_herbs)


### Commercial 


SEF_comm <- filter(Herb3, SUBREGION == "SEF")


SEF_2013_comm <- filter(SEF_comm, Year == "2013")

SEF_2013_comm_sum <- mean(SEF_2013_comm$RHI_Fish)
SEF_2013_comms <- data.frame(SEF_2013_comm_sum)
SEF_2013_comms$Years <- "2013"
colnames(SEF_2013_comms) <- c("Comm","Year")


SEF_2014_comm <- filter(SEF_comm, Year == "2014")

SEF_2014_comm_sum <- mean(SEF_2014_comm$RHI_Fish)
SEF_2014_comms <- data.frame(SEF_2014_comm_sum)
SEF_2014_comms$Years <- "2014"
colnames(SEF_2014_comms) <- c("Comm","Year")


SEF_2015_comm <- filter(SEF_comm, Year == "2015")

SEF_2015_comm_sum <- mean(SEF_2015_comm$RHI_Fish)
SEF_2015_comms <- data.frame(SEF_2015_comm_sum)
SEF_2015_comms$Years <- "2015"
colnames(SEF_2015_comms) <- c("Comm","Year")


SEF_2016_comm <- filter(SEF_comm, Year == "2016")

SEF_2016_comm_sum <- mean(SEF_2016_comm$RHI_Fish)
SEF_2016_comms <- data.frame(SEF_2016_comm_sum)
SEF_2016_comms$Years <- "2016"
colnames(SEF_2016_comms) <- c("Comm","Year")


SEF_2018_comm <- filter(SEF_comm, Year == "2018")

SEF_2018_comm_sum <- mean(SEF_2018_comm$RHI_Fish)
SEF_2018_comms <- data.frame(SEF_2018_comm_sum)
SEF_2018_comms$Years <- "2018"
colnames(SEF_2018_comms) <- c("Comm","Year")



SEF_RHI_comm <- rbind(SEF_2013_comms,SEF_2014_comms,SEF_2015_comms,SEF_2016_comms,SEF_2018_comms)



SEF_RHI_combined <- merge(SEF_RHI_comm, SEF_RHI_herb)



## Combine CREMP and RHI 

setwd("C:/Users/cestes/Documents/Spring_2020/1996_2017")

### Combining coral data to later combine with fish data 


coral_1999 <- import("1999_regions_averages_graphs.xlsx")
coral_1999$Year <- ('1999')

coral_2000 <- import("2000_regions_averages_graphs.xlsx")
coral_2000$Year <- ('2000')

coral_2001 <- import("2001_regions_averages_graphs.xlsx")
coral_2001$Year <- ('2001')

coral_2002 <- import("2002_regions_averages_graphs.xlsx")
coral_2002$Year <- ('2002')

coral_2003 <- import("2003_regions_averages_graphs.xlsx")
coral_2003$Year <- ('2003')

coral_2004 <- import("2004_regions_averages_graphs.xlsx")
coral_2004$Year <- ('2004')

coral_2005 <- import("2005_regions_averages_graphs.xlsx")
coral_2005$Year <- ('2005')

coral_2006 <- import("2006_regions_averages_graphs.xlsx")
coral_2006$Year <- ('2006')

coral_2007 <- import("2007_regions_averages_graphs.xlsx")
coral_2007$Year <- ('2007')

coral_2008 <- import("2008_regions_averages_graphs.xlsx")
coral_2008$Year <- ('2008')

coral_2009 <- import("2009_regions_average_graphs.xlsx")
coral_2009$Year <- ('2009')

coral_2010 <- import("2010_regions_averages_graphs.xlsx")
coral_2010$Year <- ('2010')

coral_2011 <- import("2011_regions_averages_graph.xlsx")
coral_2011$Year <- ('2011')

coral_2012 <- import("2012_regions_averages_graphs.xlsx")
coral_2012$Year <- ('2012')

coral_2013 <- import("2013_regions_averages_graphs.xlsx")
coral_2013$Year <- ('2013')

coral_2014 <- import("2014_regions_averages_graphs.xlsx")
coral_2014$Year <- ('2014')

coral_2015 <- import("2015_regions_averages_graphs.xlsx")
coral_2015$Year <- ('2015')

coral_2016 <- import("2016_regions_averages_graphs.xlsx")
coral_2016$Year <- ('2016')

coral_2017 <- import("2017_regions_averages_graphs.xlsx")
coral_2017$Year <- ('2017')



CREMP_DATA_ALL <- rbind(coral_1999,coral_2000,coral_2001,coral_2002,coral_2003,coral_2004,coral_2005,coral_2006,coral_2007,coral_2008,coral_2009,coral_2010,coral_2011,coral_2012,coral_2013,coral_2014,coral_2015,coral_2016,coral_2017)

## Already output from previous run just rerun to combine with RHI 

#CREMP <- write_csv(CREMP_DATA_ALL, "CREMP_combined.csv")

CREMP <- CREMP_DATA_ALL


### cremp data into RHI categories 

## Stony coral RHI

Coral__1 <- subset(CREMP, Stony_coral <5)
Coral__2 <- subset(CREMP, Stony_coral >= 5  & Stony_coral < 9.9 )
Coral__3 <- subset(CREMP, Stony_coral >= 9.9  & Stony_coral < 19.9 )
Coral__4 <- subset(CREMP, Stony_coral >= 19.9  & Stony_coral < 29.9 )
Coral__5 <- subset(CREMP, Stony_coral >= 29.9  & Stony_coral < 39.9 )


Coral__1$RHI_Coral <- "1"
Coral__2$RHI_Coral <- "2"
Coral__3$RHI_Coral <- "3"
Coral__4$RHI_Coral <- "4"
Coral__5$RHI_Coral <- "5"

Coral__RHI <- rbind(Coral__1,Coral__2,Coral__3,Coral__4,Coral__5)  



## Macroalgae

Macroalgae__1 <- subset(CREMP, Macroalgae >25)
Macroalgae__2 <- subset(CREMP, Macroalgae <= 25  & Macroalgae > 12.1 )
Macroalgae__3 <- subset(CREMP, Macroalgae <= 12.1  & Macroalgae > 5.1 )
Macroalgae__4 <- subset(CREMP, Macroalgae <= 5.1  & Macroalgae > 1 )
Macroalgae__5 <- subset(CREMP, Macroalgae <= 1  & Macroalgae > .001 )


Macroalgae__1$RHI_Macroalgae <- "1"
Macroalgae__2$RHI_Macroalgae <- "2"
Macroalgae__3$RHI_Macroalgae <- "3"
Macroalgae__4$RHI_Macroalgae <- "4"
Macroalgae__5$RHI_Macroalgae <- "5"

Macroalgae__RHI <- rbind(Macroalgae__1,Macroalgae__2,Macroalgae__3,Macroalgae__4,Macroalgae__5)  


Coral_macro_RHI <- merge(Coral__RHI, Macroalgae__RHI)


Coral_macro_combine <- data.frame(Coral_macro_RHI$Year,Coral_macro_RHI$subRegionId,Coral_macro_RHI$RHI_Coral,Coral_macro_RHI$RHI_Macroalgae)
colnames(Coral_macro_combine) <- c("Year","SUBREGION","RHI_coral","RHI_macroalgae")

export(Coral_macro_combine, "RHI_regions.csv")


## RHI combining 

RHI_all <- read_csv("RHI_regions.csv")


## Dry Tortugas 
DT_coral_macro <- filter(RHI_all, SUBREGION == "DT")

# first average by year and combine with fish data 

DT_1999_CREMP <- filter(DT_coral_macro, Year == "1999")

DT_coral_1999 <- mean(DT_1999_CREMP$RHI_coral)
  DT_coral_1999_merge <- data.frame(DT_coral_1999)
  DT_coral_1999_merge$Years <- "1999"
  colnames(DT_coral_1999_merge) <- c("Coral", "Year")
  
  
DT_macro_1999 <- mean(DT_1999_CREMP$RHI_macroalgae)
  DT_macro_1999_merge <- data.frame(DT_macro_1999)
  DT_macro_1999_merge$Years <- "1999"
   colnames(DT_macro_1999_merge) <- c("Macroalgae", "Year")


DT_1999_combine <- merge(DT_coral_1999_merge, DT_macro_1999_merge)
   
  
 
DT_2000_CREMP <- filter(DT_coral_macro, Year == "2000")

DT_coral_2000 <- mean(DT_2000_CREMP$RHI_coral)
DT_coral_2000_merge <- data.frame(DT_coral_2000)
DT_coral_2000_merge$Years <- "2000"
colnames(DT_coral_2000_merge) <- c("Coral", "Year")


DT_macro_2000 <- mean(DT_2000_CREMP$RHI_macroalgae)
DT_macro_2000_merge <- data.frame(DT_macro_2000)
DT_macro_2000_merge$Years <- "2000"
colnames(DT_macro_2000_merge) <- c("Macroalgae", "Year")


DT_2000_combine <- merge(DT_coral_2000_merge, DT_macro_2000_merge)

   

DT_2004_CREMP <- filter(DT_coral_macro, Year == "2004")

DT_coral_2004 <- mean(DT_2004_CREMP$RHI_coral)
DT_coral_2004_merge <- data.frame(DT_coral_2004)
DT_coral_2004_merge$Years <- "2004"
colnames(DT_coral_2004_merge) <- c("Coral", "Year")


DT_macro_2004 <- mean(DT_2004_CREMP$RHI_macroalgae)
DT_macro_2004_merge <- data.frame(DT_macro_2004)
DT_macro_2004_merge$Years <- "2004"
colnames(DT_macro_2004_merge) <- c("Macroalgae", "Year")


DT_2004_combine <- merge(DT_coral_2004_merge, DT_macro_2004_merge)

   
   
   
DT_2006_CREMP <- filter(DT_coral_macro, Year == "2006")

DT_coral_2006 <- mean(DT_2006_CREMP$RHI_coral)
DT_coral_2006_merge <- data.frame(DT_coral_2006)
DT_coral_2006_merge$Years <- "2006"
colnames(DT_coral_2006_merge) <- c("Coral", "Year")


DT_macro_2006 <- mean(DT_2006_CREMP$RHI_macroalgae)
DT_macro_2006_merge <- data.frame(DT_macro_2006)
DT_macro_2006_merge$Years <- "2006"
colnames(DT_macro_2006_merge) <- c("Macroalgae", "Year")


DT_2006_combine <- merge(DT_coral_2006_merge, DT_macro_2006_merge)



DT_2008_CREMP <- filter(DT_coral_macro, Year == "2008")

DT_coral_2008 <- mean(DT_2008_CREMP$RHI_coral)
DT_coral_2008_merge <- data.frame(DT_coral_2008)
DT_coral_2008_merge$Years <- "2008"
colnames(DT_coral_2008_merge) <- c("Coral", "Year")


DT_macro_2008 <- mean(DT_2008_CREMP$RHI_macroalgae)
DT_macro_2008_merge <- data.frame(DT_macro_2008)
DT_macro_2008_merge$Years <- "2008"
colnames(DT_macro_2008_merge) <- c("Macroalgae", "Year")


DT_2008_combine <- merge(DT_coral_2008_merge, DT_macro_2008_merge)



DT_2010_CREMP <- filter(DT_coral_macro, Year == "2010")

DT_coral_2010 <- mean(DT_2010_CREMP$RHI_coral)
DT_coral_2010_merge <- data.frame(DT_coral_2010)
DT_coral_2010_merge$Years <- "2010"
colnames(DT_coral_2010_merge) <- c("Coral", "Year")


DT_macro_2010 <- mean(DT_2010_CREMP$RHI_macroalgae)
DT_macro_2010_merge <- data.frame(DT_macro_2010)
DT_macro_2010_merge$Years <- "2010"
colnames(DT_macro_2010_merge) <- c("Macroalgae", "Year")


DT_2010_combine <- merge(DT_coral_2010_merge, DT_macro_2010_merge)


DT_2012_CREMP <- filter(DT_coral_macro, Year == "2012")

DT_coral_2012 <- mean(DT_2012_CREMP$RHI_coral)
DT_coral_2012_merge <- data.frame(DT_coral_2012)
DT_coral_2012_merge$Years <- "2012"
colnames(DT_coral_2012_merge) <- c("Coral", "Year")


DT_macro_2012 <- mean(DT_2012_CREMP$RHI_macroalgae)
DT_macro_2012_merge <- data.frame(DT_macro_2012)
DT_macro_2012_merge$Years <- "2012"
colnames(DT_macro_2012_merge) <- c("Macroalgae", "Year")


DT_2012_combine <- merge(DT_coral_2012_merge, DT_macro_2012_merge)


DT_2014_CREMP <- filter(DT_coral_macro, Year == "2014")

DT_coral_2014 <- mean(DT_2014_CREMP$RHI_coral)
DT_coral_2014_merge <- data.frame(DT_coral_2014)
DT_coral_2014_merge$Years <- "2014"
colnames(DT_coral_2014_merge) <- c("Coral", "Year")


DT_macro_2014 <- mean(DT_2014_CREMP$RHI_macroalgae)
DT_macro_2014_merge <- data.frame(DT_macro_2014)
DT_macro_2014_merge$Years <- "2014"
colnames(DT_macro_2014_merge) <- c("Macroalgae", "Year")


DT_2014_combine <- merge(DT_coral_2014_merge, DT_macro_2014_merge)



DT_2016_CREMP <- filter(DT_coral_macro, Year == "2016")

DT_coral_2016 <- mean(DT_2016_CREMP$RHI_coral)
DT_coral_2016_merge <- data.frame(DT_coral_2016)
DT_coral_2016_merge$Years <- "2016"
colnames(DT_coral_2016_merge) <- c("Coral", "Year")


DT_macro_2016 <- mean(DT_2016_CREMP$RHI_macroalgae)
DT_macro_2016_merge <- data.frame(DT_macro_2016)
DT_macro_2016_merge$Years <- "2016"
colnames(DT_macro_2016_merge) <- c("Macroalgae", "Year")


DT_2016_combine <- merge(DT_coral_2016_merge, DT_macro_2016_merge)




DT_RHI_coral_macro <- rbind(DT_1999_combine,DT_2000_combine,DT_2004_combine,DT_2006_combine,DT_2008_combine,DT_2010_combine,DT_2012_combine,DT_2014_combine,DT_2016_combine)



### Combine with fish RHI

DT_final <- merge (DT_RHI_coral_macro,DT_RHI_combined)



## Lower Keys 


LK_coral_macro <- filter(RHI_all, SUBREGION == "LK")

# first average by year and combine with fish data 

LK_1999_CREMP <- filter(LK_coral_macro, Year == "1999")

LK_coral_1999 <- mean(LK_1999_CREMP$RHI_coral)
LK_coral_1999_merge <- data.frame(LK_coral_1999)
LK_coral_1999_merge$Years <- "1999"
colnames(LK_coral_1999_merge) <- c("Coral", "Year")


LK_macro_1999 <- mean(LK_1999_CREMP$RHI_macroalgae)
LK_macro_1999_merge <- data.frame(LK_macro_1999)
LK_macro_1999_merge$Years <- "1999"
colnames(LK_macro_1999_merge) <- c("Macroalgae", "Year")


LK_1999_combine <- merge(LK_coral_1999_merge, LK_macro_1999_merge)



LK_2000_CREMP <- filter(LK_coral_macro, Year == "2000")

LK_coral_2000 <- mean(LK_2000_CREMP$RHI_coral)
LK_coral_2000_merge <- data.frame(LK_coral_2000)
LK_coral_2000_merge$Years <- "2000"
colnames(LK_coral_2000_merge) <- c("Coral", "Year")


LK_macro_2000 <- mean(LK_2000_CREMP$RHI_macroalgae)
LK_macro_2000_merge <- data.frame(LK_macro_2000)
LK_macro_2000_merge$Years <- "2000"
colnames(LK_macro_2000_merge) <- c("Macroalgae", "Year")


LK_2000_combine <- merge(LK_coral_2000_merge, LK_macro_2000_merge)


LK_2001_CREMP <- filter(LK_coral_macro, Year == "2001")

LK_coral_2001 <- mean(LK_2001_CREMP$RHI_coral)
LK_coral_2001_merge <- data.frame(LK_coral_2001)
LK_coral_2001_merge$Years <- "2001"
colnames(LK_coral_2001_merge) <- c("Coral", "Year")


LK_macro_2001 <- mean(LK_2001_CREMP$RHI_macroalgae)
LK_macro_2001_merge <- data.frame(LK_macro_2001)
LK_macro_2001_merge$Years <- "2001"
colnames(LK_macro_2001_merge) <- c("Macroalgae", "Year")


LK_2001_combine <- merge(LK_coral_2001_merge, LK_macro_2001_merge)


LK_2002_CREMP <- filter(LK_coral_macro, Year == "2002")

LK_coral_2002 <- mean(LK_2002_CREMP$RHI_coral)
LK_coral_2002_merge <- data.frame(LK_coral_2002)
LK_coral_2002_merge$Years <- "2002"
colnames(LK_coral_2002_merge) <- c("Coral", "Year")


LK_macro_2002 <- mean(LK_2002_CREMP$RHI_macroalgae)
LK_macro_2002_merge <- data.frame(LK_macro_2002)
LK_macro_2002_merge$Years <- "2002"
colnames(LK_macro_2002_merge) <- c("Macroalgae", "Year")


LK_2002_combine <- merge(LK_coral_2002_merge, LK_macro_2002_merge)



LK_2003_CREMP <- filter(LK_coral_macro, Year == "2003")

LK_coral_2003 <- mean(LK_2003_CREMP$RHI_coral)
LK_coral_2003_merge <- data.frame(LK_coral_2003)
LK_coral_2003_merge$Years <- "2003"
colnames(LK_coral_2003_merge) <- c("Coral", "Year")


LK_macro_2003 <- mean(LK_2003_CREMP$RHI_macroalgae)
LK_macro_2003_merge <- data.frame(LK_macro_2003)
LK_macro_2003_merge$Years <- "2003"
colnames(LK_macro_2003_merge) <- c("Macroalgae", "Year")


LK_2003_combine <- merge(LK_coral_2003_merge, LK_macro_2003_merge)



LK_2004_CREMP <- filter(LK_coral_macro, Year == "2004")

LK_coral_2004 <- mean(LK_2004_CREMP$RHI_coral)
LK_coral_2004_merge <- data.frame(LK_coral_2004)
LK_coral_2004_merge$Years <- "2004"
colnames(LK_coral_2004_merge) <- c("Coral", "Year")


LK_macro_2004 <- mean(LK_2004_CREMP$RHI_macroalgae)
LK_macro_2004_merge <- data.frame(LK_macro_2004)
LK_macro_2004_merge$Years <- "2004"
colnames(LK_macro_2004_merge) <- c("Macroalgae", "Year")


LK_2004_combine <- merge(LK_coral_2004_merge, LK_macro_2004_merge)


LK_2005_CREMP <- filter(LK_coral_macro, Year == "2005")

LK_coral_2005 <- mean(LK_2005_CREMP$RHI_coral)
LK_coral_2005_merge <- data.frame(LK_coral_2005)
LK_coral_2005_merge$Years <- "2005"
colnames(LK_coral_2005_merge) <- c("Coral", "Year")


LK_macro_2005 <- mean(LK_2005_CREMP$RHI_macroalgae)
LK_macro_2005_merge <- data.frame(LK_macro_2005)
LK_macro_2005_merge$Years <- "2005"
colnames(LK_macro_2005_merge) <- c("Macroalgae", "Year")


LK_2005_combine <- merge(LK_coral_2005_merge, LK_macro_2005_merge)



LK_2006_CREMP <- filter(LK_coral_macro, Year == "2006")

LK_coral_2006 <- mean(LK_2006_CREMP$RHI_coral)
LK_coral_2006_merge <- data.frame(LK_coral_2006)
LK_coral_2006_merge$Years <- "2006"
colnames(LK_coral_2006_merge) <- c("Coral", "Year")


LK_macro_2006 <- mean(LK_2006_CREMP$RHI_macroalgae)
LK_macro_2006_merge <- data.frame(LK_macro_2006)
LK_macro_2006_merge$Years <- "2006"
colnames(LK_macro_2006_merge) <- c("Macroalgae", "Year")


LK_2006_combine <- merge(LK_coral_2006_merge, LK_macro_2006_merge)


LK_2007_CREMP <- filter(LK_coral_macro, Year == "2007")

LK_coral_2007 <- mean(LK_2007_CREMP$RHI_coral)
LK_coral_2007_merge <- data.frame(LK_coral_2007)
LK_coral_2007_merge$Years <- "2007"
colnames(LK_coral_2007_merge) <- c("Coral", "Year")


LK_macro_2007 <- mean(LK_2007_CREMP$RHI_macroalgae)
LK_macro_2007_merge <- data.frame(LK_macro_2007)
LK_macro_2007_merge$Years <- "2007"
colnames(LK_macro_2007_merge) <- c("Macroalgae", "Year")


LK_2007_combine <- merge(LK_coral_2007_merge, LK_macro_2007_merge)



LK_2008_CREMP <- filter(LK_coral_macro, Year == "2008")

LK_coral_2008 <- mean(LK_2008_CREMP$RHI_coral)
LK_coral_2008_merge <- data.frame(LK_coral_2008)
LK_coral_2008_merge$Years <- "2008"
colnames(LK_coral_2008_merge) <- c("Coral", "Year")


LK_macro_2008 <- mean(LK_2008_CREMP$RHI_macroalgae)
LK_macro_2008_merge <- data.frame(LK_macro_2008)
LK_macro_2008_merge$Years <- "2008"
colnames(LK_macro_2008_merge) <- c("Macroalgae", "Year")


LK_2008_combine <- merge(LK_coral_2008_merge, LK_macro_2008_merge)


LK_2009_CREMP <- filter(LK_coral_macro, Year == "2009")

LK_coral_2009 <- mean(LK_2009_CREMP$RHI_coral)
LK_coral_2009_merge <- data.frame(LK_coral_2009)
LK_coral_2009_merge$Years <- "2009"
colnames(LK_coral_2009_merge) <- c("Coral", "Year")


LK_macro_2009 <- mean(LK_2009_CREMP$RHI_macroalgae)
LK_macro_2009_merge <- data.frame(LK_macro_2009)
LK_macro_2009_merge$Years <- "2009"
colnames(LK_macro_2009_merge) <- c("Macroalgae", "Year")


LK_2009_combine <- merge(LK_coral_2009_merge, LK_macro_2009_merge)



LK_2010_CREMP <- filter(LK_coral_macro, Year == "2010")

LK_coral_2010 <- mean(LK_2010_CREMP$RHI_coral)
LK_coral_2010_merge <- data.frame(LK_coral_2010)
LK_coral_2010_merge$Years <- "2010"
colnames(LK_coral_2010_merge) <- c("Coral", "Year")


LK_macro_2010 <- mean(LK_2010_CREMP$RHI_macroalgae)
LK_macro_2010_merge <- data.frame(LK_macro_2010)
LK_macro_2010_merge$Years <- "2010"
colnames(LK_macro_2010_merge) <- c("Macroalgae", "Year")


LK_2010_combine <- merge(LK_coral_2010_merge, LK_macro_2010_merge)


LK_2011_CREMP <- filter(LK_coral_macro, Year == "2011")

LK_coral_2011 <- mean(LK_2011_CREMP$RHI_coral)
LK_coral_2011_merge <- data.frame(LK_coral_2011)
LK_coral_2011_merge$Years <- "2011"
colnames(LK_coral_2011_merge) <- c("Coral", "Year")


LK_macro_2011 <- mean(LK_2011_CREMP$RHI_macroalgae)
LK_macro_2011_merge <- data.frame(LK_macro_2011)
LK_macro_2011_merge$Years <- "2011"
colnames(LK_macro_2011_merge) <- c("Macroalgae", "Year")


LK_2011_combine <- merge(LK_coral_2011_merge, LK_macro_2011_merge)




LK_2012_CREMP <- filter(LK_coral_macro, Year == "2012")

LK_coral_2012 <- mean(LK_2012_CREMP$RHI_coral)
LK_coral_2012_merge <- data.frame(LK_coral_2012)
LK_coral_2012_merge$Years <- "2012"
colnames(LK_coral_2012_merge) <- c("Coral", "Year")


LK_macro_2012 <- mean(LK_2012_CREMP$RHI_macroalgae)
LK_macro_2012_merge <- data.frame(LK_macro_2012)
LK_macro_2012_merge$Years <- "2012"
colnames(LK_macro_2012_merge) <- c("Macroalgae", "Year")


LK_2012_combine <- merge(LK_coral_2012_merge, LK_macro_2012_merge)


LK_2014_CREMP <- filter(LK_coral_macro, Year == "2014")

LK_coral_2014 <- mean(LK_2014_CREMP$RHI_coral)
LK_coral_2014_merge <- data.frame(LK_coral_2014)
LK_coral_2014_merge$Years <- "2014"
colnames(LK_coral_2014_merge) <- c("Coral", "Year")


LK_macro_2014 <- mean(LK_2014_CREMP$RHI_macroalgae)
LK_macro_2014_merge <- data.frame(LK_macro_2014)
LK_macro_2014_merge$Years <- "2014"
colnames(LK_macro_2014_merge) <- c("Macroalgae", "Year")


LK_2014_combine <- merge(LK_coral_2014_merge, LK_macro_2014_merge)



LK_2016_CREMP <- filter(LK_coral_macro, Year == "2016")

LK_coral_2016 <- mean(LK_2016_CREMP$RHI_coral)
LK_coral_2016_merge <- data.frame(LK_coral_2016)
LK_coral_2016_merge$Years <- "2016"
colnames(LK_coral_2016_merge) <- c("Coral", "Year")


LK_macro_2016 <- mean(LK_2016_CREMP$RHI_macroalgae)
LK_macro_2016_merge <- data.frame(LK_macro_2016)
LK_macro_2016_merge$Years <- "2016"
colnames(LK_macro_2016_merge) <- c("Macroalgae", "Year")


LK_2016_combine <- merge(LK_coral_2016_merge, LK_macro_2016_merge)


LK_2018_CREMP <- filter(LK_coral_macro, Year == "2018")

LK_coral_2018 <- mean(LK_2018_CREMP$RHI_coral)
LK_coral_2018_merge <- data.frame(LK_coral_2018)
LK_coral_2018_merge$Years <- "2018"
colnames(LK_coral_2018_merge) <- c("Coral", "Year")


LK_macro_2018 <- mean(LK_2018_CREMP$RHI_macroalgae)
LK_macro_2018_merge <- data.frame(LK_macro_2018)
LK_macro_2018_merge$Years <- "2018"
colnames(LK_macro_2018_merge) <- c("Macroalgae", "Year")


LK_2018_combine <- merge(LK_coral_2018_merge, LK_macro_2018_merge)





LK_RHI_coral_macro <- rbind(LK_1999_combine,LK_2000_combine,LK_2001_combine,LK_2002_combine,LK_2003_combine,LK_2004_combine,LK_2005_combine,LK_2006_combine,LK_2007_combine,LK_2008_combine,LK_2009_combine,LK_2010_combine,LK_2011_combine,LK_2012_combine,LK_2014_combine,LK_2016_combine,LK_2018_combine)



### Combine with fish RHI

LK_final <- merge (LK_RHI_coral_macro,LK_RHI_combined)




## Middle Keys 


MK_coral_macro <- filter(RHI_all, SUBREGION == "MK")

# first average by year and combine with fish data 

MK_1999_CREMP <- filter(MK_coral_macro, Year == "1999")

MK_coral_1999 <- mean(MK_1999_CREMP$RHI_coral)
MK_coral_1999_merge <- data.frame(MK_coral_1999)
MK_coral_1999_merge$Years <- "1999"
colnames(MK_coral_1999_merge) <- c("Coral", "Year")


MK_macro_1999 <- mean(MK_1999_CREMP$RHI_macroalgae)
MK_macro_1999_merge <- data.frame(MK_macro_1999)
MK_macro_1999_merge$Years <- "1999"
colnames(MK_macro_1999_merge) <- c("Macroalgae", "Year")


MK_1999_combine <- merge(MK_coral_1999_merge, MK_macro_1999_merge)



MK_2000_CREMP <- filter(MK_coral_macro, Year == "2000")

MK_coral_2000 <- mean(MK_2000_CREMP$RHI_coral)
MK_coral_2000_merge <- data.frame(MK_coral_2000)
MK_coral_2000_merge$Years <- "2000"
colnames(MK_coral_2000_merge) <- c("Coral", "Year")


MK_macro_2000 <- mean(MK_2000_CREMP$RHI_macroalgae)
MK_macro_2000_merge <- data.frame(MK_macro_2000)
MK_macro_2000_merge$Years <- "2000"
colnames(MK_macro_2000_merge) <- c("Macroalgae", "Year")


MK_2000_combine <- merge(MK_coral_2000_merge, MK_macro_2000_merge)


MK_2001_CREMP <- filter(MK_coral_macro, Year == "2001")

MK_coral_2001 <- mean(MK_2001_CREMP$RHI_coral)
MK_coral_2001_merge <- data.frame(MK_coral_2001)
MK_coral_2001_merge$Years <- "2001"
colnames(MK_coral_2001_merge) <- c("Coral", "Year")


MK_macro_2001 <- mean(MK_2001_CREMP$RHI_macroalgae)
MK_macro_2001_merge <- data.frame(MK_macro_2001)
MK_macro_2001_merge$Years <- "2001"
colnames(MK_macro_2001_merge) <- c("Macroalgae", "Year")


MK_2001_combine <- merge(MK_coral_2001_merge, MK_macro_2001_merge)


MK_2002_CREMP <- filter(MK_coral_macro, Year == "2002")

MK_coral_2002 <- mean(MK_2002_CREMP$RHI_coral)
MK_coral_2002_merge <- data.frame(MK_coral_2002)
MK_coral_2002_merge$Years <- "2002"
colnames(MK_coral_2002_merge) <- c("Coral", "Year")


MK_macro_2002 <- mean(MK_2002_CREMP$RHI_macroalgae)
MK_macro_2002_merge <- data.frame(MK_macro_2002)
MK_macro_2002_merge$Years <- "2002"
colnames(MK_macro_2002_merge) <- c("Macroalgae", "Year")


MK_2002_combine <- merge(MK_coral_2002_merge, MK_macro_2002_merge)



MK_2003_CREMP <- filter(MK_coral_macro, Year == "2003")

MK_coral_2003 <- mean(MK_2003_CREMP$RHI_coral)
MK_coral_2003_merge <- data.frame(MK_coral_2003)
MK_coral_2003_merge$Years <- "2003"
colnames(MK_coral_2003_merge) <- c("Coral", "Year")


MK_macro_2003 <- mean(MK_2003_CREMP$RHI_macroalgae)
MK_macro_2003_merge <- data.frame(MK_macro_2003)
MK_macro_2003_merge$Years <- "2003"
colnames(MK_macro_2003_merge) <- c("Macroalgae", "Year")


MK_2003_combine <- merge(MK_coral_2003_merge, MK_macro_2003_merge)



MK_2004_CREMP <- filter(MK_coral_macro, Year == "2004")

MK_coral_2004 <- mean(MK_2004_CREMP$RHI_coral)
MK_coral_2004_merge <- data.frame(MK_coral_2004)
MK_coral_2004_merge$Years <- "2004"
colnames(MK_coral_2004_merge) <- c("Coral", "Year")


MK_macro_2004 <- mean(MK_2004_CREMP$RHI_macroalgae)
MK_macro_2004_merge <- data.frame(MK_macro_2004)
MK_macro_2004_merge$Years <- "2004"
colnames(MK_macro_2004_merge) <- c("Macroalgae", "Year")


MK_2004_combine <- merge(MK_coral_2004_merge, MK_macro_2004_merge)


MK_2005_CREMP <- filter(MK_coral_macro, Year == "2005")

MK_coral_2005 <- mean(MK_2005_CREMP$RHI_coral)
MK_coral_2005_merge <- data.frame(MK_coral_2005)
MK_coral_2005_merge$Years <- "2005"
colnames(MK_coral_2005_merge) <- c("Coral", "Year")


MK_macro_2005 <- mean(MK_2005_CREMP$RHI_macroalgae)
MK_macro_2005_merge <- data.frame(MK_macro_2005)
MK_macro_2005_merge$Years <- "2005"
colnames(MK_macro_2005_merge) <- c("Macroalgae", "Year")


MK_2005_combine <- merge(MK_coral_2005_merge, MK_macro_2005_merge)



MK_2006_CREMP <- filter(MK_coral_macro, Year == "2006")

MK_coral_2006 <- mean(MK_2006_CREMP$RHI_coral)
MK_coral_2006_merge <- data.frame(MK_coral_2006)
MK_coral_2006_merge$Years <- "2006"
colnames(MK_coral_2006_merge) <- c("Coral", "Year")


MK_macro_2006 <- mean(MK_2006_CREMP$RHI_macroalgae)
MK_macro_2006_merge <- data.frame(MK_macro_2006)
MK_macro_2006_merge$Years <- "2006"
colnames(MK_macro_2006_merge) <- c("Macroalgae", "Year")


MK_2006_combine <- merge(MK_coral_2006_merge, MK_macro_2006_merge)


MK_2007_CREMP <- filter(MK_coral_macro, Year == "2007")

MK_coral_2007 <- mean(MK_2007_CREMP$RHI_coral)
MK_coral_2007_merge <- data.frame(MK_coral_2007)
MK_coral_2007_merge$Years <- "2007"
colnames(MK_coral_2007_merge) <- c("Coral", "Year")


MK_macro_2007 <- mean(MK_2007_CREMP$RHI_macroalgae)
MK_macro_2007_merge <- data.frame(MK_macro_2007)
MK_macro_2007_merge$Years <- "2007"
colnames(MK_macro_2007_merge) <- c("Macroalgae", "Year")


MK_2007_combine <- merge(MK_coral_2007_merge, MK_macro_2007_merge)



MK_2008_CREMP <- filter(MK_coral_macro, Year == "2008")

MK_coral_2008 <- mean(MK_2008_CREMP$RHI_coral)
MK_coral_2008_merge <- data.frame(MK_coral_2008)
MK_coral_2008_merge$Years <- "2008"
colnames(MK_coral_2008_merge) <- c("Coral", "Year")


MK_macro_2008 <- mean(MK_2008_CREMP$RHI_macroalgae)
MK_macro_2008_merge <- data.frame(MK_macro_2008)
MK_macro_2008_merge$Years <- "2008"
colnames(MK_macro_2008_merge) <- c("Macroalgae", "Year")


MK_2008_combine <- merge(MK_coral_2008_merge, MK_macro_2008_merge)


MK_2009_CREMP <- filter(MK_coral_macro, Year == "2009")

MK_coral_2009 <- mean(MK_2009_CREMP$RHI_coral)
MK_coral_2009_merge <- data.frame(MK_coral_2009)
MK_coral_2009_merge$Years <- "2009"
colnames(MK_coral_2009_merge) <- c("Coral", "Year")


MK_macro_2009 <- mean(MK_2009_CREMP$RHI_macroalgae)
MK_macro_2009_merge <- data.frame(MK_macro_2009)
MK_macro_2009_merge$Years <- "2009"
colnames(MK_macro_2009_merge) <- c("Macroalgae", "Year")


MK_2009_combine <- merge(MK_coral_2009_merge, MK_macro_2009_merge)



MK_2010_CREMP <- filter(MK_coral_macro, Year == "2010")

MK_coral_2010 <- mean(MK_2010_CREMP$RHI_coral)
MK_coral_2010_merge <- data.frame(MK_coral_2010)
MK_coral_2010_merge$Years <- "2010"
colnames(MK_coral_2010_merge) <- c("Coral", "Year")


MK_macro_2010 <- mean(MK_2010_CREMP$RHI_macroalgae)
MK_macro_2010_merge <- data.frame(MK_macro_2010)
MK_macro_2010_merge$Years <- "2010"
colnames(MK_macro_2010_merge) <- c("Macroalgae", "Year")


MK_2010_combine <- merge(MK_coral_2010_merge, MK_macro_2010_merge)


MK_2011_CREMP <- filter(MK_coral_macro, Year == "2011")

MK_coral_2011 <- mean(MK_2011_CREMP$RHI_coral)
MK_coral_2011_merge <- data.frame(MK_coral_2011)
MK_coral_2011_merge$Years <- "2011"
colnames(MK_coral_2011_merge) <- c("Coral", "Year")


MK_macro_2011 <- mean(MK_2011_CREMP$RHI_macroalgae)
MK_macro_2011_merge <- data.frame(MK_macro_2011)
MK_macro_2011_merge$Years <- "2011"
colnames(MK_macro_2011_merge) <- c("Macroalgae", "Year")


MK_2011_combine <- merge(MK_coral_2011_merge, MK_macro_2011_merge)




MK_2012_CREMP <- filter(MK_coral_macro, Year == "2012")

MK_coral_2012 <- mean(MK_2012_CREMP$RHI_coral)
MK_coral_2012_merge <- data.frame(MK_coral_2012)
MK_coral_2012_merge$Years <- "2012"
colnames(MK_coral_2012_merge) <- c("Coral", "Year")


MK_macro_2012 <- mean(MK_2012_CREMP$RHI_macroalgae)
MK_macro_2012_merge <- data.frame(MK_macro_2012)
MK_macro_2012_merge$Years <- "2012"
colnames(MK_macro_2012_merge) <- c("Macroalgae", "Year")


MK_2012_combine <- merge(MK_coral_2012_merge, MK_macro_2012_merge)


MK_2014_CREMP <- filter(MK_coral_macro, Year == "2014")

MK_coral_2014 <- mean(MK_2014_CREMP$RHI_coral)
MK_coral_2014_merge <- data.frame(MK_coral_2014)
MK_coral_2014_merge$Years <- "2014"
colnames(MK_coral_2014_merge) <- c("Coral", "Year")


MK_macro_2014 <- mean(MK_2014_CREMP$RHI_macroalgae)
MK_macro_2014_merge <- data.frame(MK_macro_2014)
MK_macro_2014_merge$Years <- "2014"
colnames(MK_macro_2014_merge) <- c("Macroalgae", "Year")


MK_2014_combine <- merge(MK_coral_2014_merge, MK_macro_2014_merge)



MK_2016_CREMP <- filter(MK_coral_macro, Year == "2016")

MK_coral_2016 <- mean(MK_2016_CREMP$RHI_coral)
MK_coral_2016_merge <- data.frame(MK_coral_2016)
MK_coral_2016_merge$Years <- "2016"
colnames(MK_coral_2016_merge) <- c("Coral", "Year")


MK_macro_2016 <- mean(MK_2016_CREMP$RHI_macroalgae)
MK_macro_2016_merge <- data.frame(MK_macro_2016)
MK_macro_2016_merge$Years <- "2016"
colnames(MK_macro_2016_merge) <- c("Macroalgae", "Year")


MK_2016_combine <- merge(MK_coral_2016_merge, MK_macro_2016_merge)


MK_2018_CREMP <- filter(MK_coral_macro, Year == "2018")

MK_coral_2018 <- mean(MK_2018_CREMP$RHI_coral)
MK_coral_2018_merge <- data.frame(MK_coral_2018)
MK_coral_2018_merge$Years <- "2018"
colnames(MK_coral_2018_merge) <- c("Coral", "Year")


MK_macro_2018 <- mean(MK_2018_CREMP$RHI_macroalgae)
MK_macro_2018_merge <- data.frame(MK_macro_2018)
MK_macro_2018_merge$Years <- "2018"
colnames(MK_macro_2018_merge) <- c("Macroalgae", "Year")


MK_2018_combine <- merge(MK_coral_2018_merge, MK_macro_2018_merge)





MK_RHI_coral_macro <- rbind(MK_1999_combine,MK_2000_combine,MK_2001_combine,MK_2002_combine,MK_2003_combine,MK_2004_combine,MK_2005_combine,MK_2006_combine,MK_2007_combine,MK_2008_combine,MK_2009_combine,MK_2010_combine,MK_2011_combine,MK_2012_combine,MK_2014_combine,MK_2016_combine,MK_2018_combine)



### Combine with fish RHI

MK_final <- merge (MK_RHI_coral_macro,MK_RHI_combined)





## Upper Keys 


UK_coral_macro <- filter(RHI_all, SUBREGION == "UK")

# first average by year and combine with fish data 

UK_1999_CREMP <- filter(UK_coral_macro, Year == "1999")

UK_coral_1999 <- mean(UK_1999_CREMP$RHI_coral)
UK_coral_1999_merge <- data.frame(UK_coral_1999)
UK_coral_1999_merge$Years <- "1999"
colnames(UK_coral_1999_merge) <- c("Coral", "Year")


UK_macro_1999 <- mean(UK_1999_CREMP$RHI_macroalgae)
UK_macro_1999_merge <- data.frame(UK_macro_1999)
UK_macro_1999_merge$Years <- "1999"
colnames(UK_macro_1999_merge) <- c("Macroalgae", "Year")


UK_1999_combine <- merge(UK_coral_1999_merge, UK_macro_1999_merge)



UK_2000_CREMP <- filter(UK_coral_macro, Year == "2000")

UK_coral_2000 <- mean(UK_2000_CREMP$RHI_coral)
UK_coral_2000_merge <- data.frame(UK_coral_2000)
UK_coral_2000_merge$Years <- "2000"
colnames(UK_coral_2000_merge) <- c("Coral", "Year")


UK_macro_2000 <- mean(UK_2000_CREMP$RHI_macroalgae)
UK_macro_2000_merge <- data.frame(UK_macro_2000)
UK_macro_2000_merge$Years <- "2000"
colnames(UK_macro_2000_merge) <- c("Macroalgae", "Year")


UK_2000_combine <- merge(UK_coral_2000_merge, UK_macro_2000_merge)


UK_2001_CREMP <- filter(UK_coral_macro, Year == "2001")

UK_coral_2001 <- mean(UK_2001_CREMP$RHI_coral)
UK_coral_2001_merge <- data.frame(UK_coral_2001)
UK_coral_2001_merge$Years <- "2001"
colnames(UK_coral_2001_merge) <- c("Coral", "Year")


UK_macro_2001 <- mean(UK_2001_CREMP$RHI_macroalgae)
UK_macro_2001_merge <- data.frame(UK_macro_2001)
UK_macro_2001_merge$Years <- "2001"
colnames(UK_macro_2001_merge) <- c("Macroalgae", "Year")


UK_2001_combine <- merge(UK_coral_2001_merge, UK_macro_2001_merge)


UK_2002_CREMP <- filter(UK_coral_macro, Year == "2002")

UK_coral_2002 <- mean(UK_2002_CREMP$RHI_coral)
UK_coral_2002_merge <- data.frame(UK_coral_2002)
UK_coral_2002_merge$Years <- "2002"
colnames(UK_coral_2002_merge) <- c("Coral", "Year")


UK_macro_2002 <- mean(UK_2002_CREMP$RHI_macroalgae)
UK_macro_2002_merge <- data.frame(UK_macro_2002)
UK_macro_2002_merge$Years <- "2002"
colnames(UK_macro_2002_merge) <- c("Macroalgae", "Year")


UK_2002_combine <- merge(UK_coral_2002_merge, UK_macro_2002_merge)



UK_2003_CREMP <- filter(UK_coral_macro, Year == "2003")

UK_coral_2003 <- mean(UK_2003_CREMP$RHI_coral)
UK_coral_2003_merge <- data.frame(UK_coral_2003)
UK_coral_2003_merge$Years <- "2003"
colnames(UK_coral_2003_merge) <- c("Coral", "Year")


UK_macro_2003 <- mean(UK_2003_CREMP$RHI_macroalgae)
UK_macro_2003_merge <- data.frame(UK_macro_2003)
UK_macro_2003_merge$Years <- "2003"
colnames(UK_macro_2003_merge) <- c("Macroalgae", "Year")


UK_2003_combine <- merge(UK_coral_2003_merge, UK_macro_2003_merge)



UK_2004_CREMP <- filter(UK_coral_macro, Year == "2004")

UK_coral_2004 <- mean(UK_2004_CREMP$RHI_coral)
UK_coral_2004_merge <- data.frame(UK_coral_2004)
UK_coral_2004_merge$Years <- "2004"
colnames(UK_coral_2004_merge) <- c("Coral", "Year")


UK_macro_2004 <- mean(UK_2004_CREMP$RHI_macroalgae)
UK_macro_2004_merge <- data.frame(UK_macro_2004)
UK_macro_2004_merge$Years <- "2004"
colnames(UK_macro_2004_merge) <- c("Macroalgae", "Year")


UK_2004_combine <- merge(UK_coral_2004_merge, UK_macro_2004_merge)


UK_2005_CREMP <- filter(UK_coral_macro, Year == "2005")

UK_coral_2005 <- mean(UK_2005_CREMP$RHI_coral)
UK_coral_2005_merge <- data.frame(UK_coral_2005)
UK_coral_2005_merge$Years <- "2005"
colnames(UK_coral_2005_merge) <- c("Coral", "Year")


UK_macro_2005 <- mean(UK_2005_CREMP$RHI_macroalgae)
UK_macro_2005_merge <- data.frame(UK_macro_2005)
UK_macro_2005_merge$Years <- "2005"
colnames(UK_macro_2005_merge) <- c("Macroalgae", "Year")


UK_2005_combine <- merge(UK_coral_2005_merge, UK_macro_2005_merge)



UK_2006_CREMP <- filter(UK_coral_macro, Year == "2006")

UK_coral_2006 <- mean(UK_2006_CREMP$RHI_coral)
UK_coral_2006_merge <- data.frame(UK_coral_2006)
UK_coral_2006_merge$Years <- "2006"
colnames(UK_coral_2006_merge) <- c("Coral", "Year")


UK_macro_2006 <- mean(UK_2006_CREMP$RHI_macroalgae)
UK_macro_2006_merge <- data.frame(UK_macro_2006)
UK_macro_2006_merge$Years <- "2006"
colnames(UK_macro_2006_merge) <- c("Macroalgae", "Year")


UK_2006_combine <- merge(UK_coral_2006_merge, UK_macro_2006_merge)


UK_2007_CREMP <- filter(UK_coral_macro, Year == "2007")

UK_coral_2007 <- mean(UK_2007_CREMP$RHI_coral)
UK_coral_2007_merge <- data.frame(UK_coral_2007)
UK_coral_2007_merge$Years <- "2007"
colnames(UK_coral_2007_merge) <- c("Coral", "Year")


UK_macro_2007 <- mean(UK_2007_CREMP$RHI_macroalgae)
UK_macro_2007_merge <- data.frame(UK_macro_2007)
UK_macro_2007_merge$Years <- "2007"
colnames(UK_macro_2007_merge) <- c("Macroalgae", "Year")


UK_2007_combine <- merge(UK_coral_2007_merge, UK_macro_2007_merge)



UK_2008_CREMP <- filter(UK_coral_macro, Year == "2008")

UK_coral_2008 <- mean(UK_2008_CREMP$RHI_coral)
UK_coral_2008_merge <- data.frame(UK_coral_2008)
UK_coral_2008_merge$Years <- "2008"
colnames(UK_coral_2008_merge) <- c("Coral", "Year")


UK_macro_2008 <- mean(UK_2008_CREMP$RHI_macroalgae)
UK_macro_2008_merge <- data.frame(UK_macro_2008)
UK_macro_2008_merge$Years <- "2008"
colnames(UK_macro_2008_merge) <- c("Macroalgae", "Year")


UK_2008_combine <- merge(UK_coral_2008_merge, UK_macro_2008_merge)


UK_2009_CREMP <- filter(UK_coral_macro, Year == "2009")

UK_coral_2009 <- mean(UK_2009_CREMP$RHI_coral)
UK_coral_2009_merge <- data.frame(UK_coral_2009)
UK_coral_2009_merge$Years <- "2009"
colnames(UK_coral_2009_merge) <- c("Coral", "Year")


UK_macro_2009 <- mean(UK_2009_CREMP$RHI_macroalgae)
UK_macro_2009_merge <- data.frame(UK_macro_2009)
UK_macro_2009_merge$Years <- "2009"
colnames(UK_macro_2009_merge) <- c("Macroalgae", "Year")


UK_2009_combine <- merge(UK_coral_2009_merge, UK_macro_2009_merge)



UK_2010_CREMP <- filter(UK_coral_macro, Year == "2010")

UK_coral_2010 <- mean(UK_2010_CREMP$RHI_coral)
UK_coral_2010_merge <- data.frame(UK_coral_2010)
UK_coral_2010_merge$Years <- "2010"
colnames(UK_coral_2010_merge) <- c("Coral", "Year")


UK_macro_2010 <- mean(UK_2010_CREMP$RHI_macroalgae)
UK_macro_2010_merge <- data.frame(UK_macro_2010)
UK_macro_2010_merge$Years <- "2010"
colnames(UK_macro_2010_merge) <- c("Macroalgae", "Year")


UK_2010_combine <- merge(UK_coral_2010_merge, UK_macro_2010_merge)


UK_2011_CREMP <- filter(UK_coral_macro, Year == "2011")

UK_coral_2011 <- mean(UK_2011_CREMP$RHI_coral)
UK_coral_2011_merge <- data.frame(UK_coral_2011)
UK_coral_2011_merge$Years <- "2011"
colnames(UK_coral_2011_merge) <- c("Coral", "Year")


UK_macro_2011 <- mean(UK_2011_CREMP$RHI_macroalgae)
UK_macro_2011_merge <- data.frame(UK_macro_2011)
UK_macro_2011_merge$Years <- "2011"
colnames(UK_macro_2011_merge) <- c("Macroalgae", "Year")


UK_2011_combine <- merge(UK_coral_2011_merge, UK_macro_2011_merge)




UK_2012_CREMP <- filter(UK_coral_macro, Year == "2012")

UK_coral_2012 <- mean(UK_2012_CREMP$RHI_coral)
UK_coral_2012_merge <- data.frame(UK_coral_2012)
UK_coral_2012_merge$Years <- "2012"
colnames(UK_coral_2012_merge) <- c("Coral", "Year")


UK_macro_2012 <- mean(UK_2012_CREMP$RHI_macroalgae)
UK_macro_2012_merge <- data.frame(UK_macro_2012)
UK_macro_2012_merge$Years <- "2012"
colnames(UK_macro_2012_merge) <- c("Macroalgae", "Year")


UK_2012_combine <- merge(UK_coral_2012_merge, UK_macro_2012_merge)


UK_2014_CREMP <- filter(UK_coral_macro, Year == "2014")

UK_coral_2014 <- mean(UK_2014_CREMP$RHI_coral)
UK_coral_2014_merge <- data.frame(UK_coral_2014)
UK_coral_2014_merge$Years <- "2014"
colnames(UK_coral_2014_merge) <- c("Coral", "Year")


UK_macro_2014 <- mean(UK_2014_CREMP$RHI_macroalgae)
UK_macro_2014_merge <- data.frame(UK_macro_2014)
UK_macro_2014_merge$Years <- "2014"
colnames(UK_macro_2014_merge) <- c("Macroalgae", "Year")


UK_2014_combine <- merge(UK_coral_2014_merge, UK_macro_2014_merge)



UK_2016_CREMP <- filter(UK_coral_macro, Year == "2016")

UK_coral_2016 <- mean(UK_2016_CREMP$RHI_coral)
UK_coral_2016_merge <- data.frame(UK_coral_2016)
UK_coral_2016_merge$Years <- "2016"
colnames(UK_coral_2016_merge) <- c("Coral", "Year")


UK_macro_2016 <- mean(UK_2016_CREMP$RHI_macroalgae)
UK_macro_2016_merge <- data.frame(UK_macro_2016)
UK_macro_2016_merge$Years <- "2016"
colnames(UK_macro_2016_merge) <- c("Macroalgae", "Year")


UK_2016_combine <- merge(UK_coral_2016_merge, UK_macro_2016_merge)


UK_2018_CREMP <- filter(UK_coral_macro, Year == "2018")

UK_coral_2018 <- mean(UK_2018_CREMP$RHI_coral)
UK_coral_2018_merge <- data.frame(UK_coral_2018)
UK_coral_2018_merge$Years <- "2018"
colnames(UK_coral_2018_merge) <- c("Coral", "Year")


UK_macro_2018 <- mean(UK_2018_CREMP$RHI_macroalgae)
UK_macro_2018_merge <- data.frame(UK_macro_2018)
UK_macro_2018_merge$Years <- "2018"
colnames(UK_macro_2018_merge) <- c("Macroalgae", "Year")


UK_2018_combine <- merge(UK_coral_2018_merge, UK_macro_2018_merge)





UK_RHI_coral_macro <- rbind(UK_1999_combine,UK_2000_combine,UK_2001_combine,UK_2002_combine,UK_2003_combine,UK_2004_combine,UK_2005_combine,UK_2006_combine,UK_2007_combine,UK_2008_combine,UK_2009_combine,UK_2010_combine,UK_2011_combine,UK_2012_combine,UK_2014_combine,UK_2016_combine,UK_2018_combine)



### Combine with fish RHI

UK_final <- merge (UK_RHI_coral_macro,UK_RHI_combined)






### Change subregions ID (BC, DC, MC, PBC) to SEF 

BC_coral_macro <- filter(RHI_all, SUBREGION == "BC")
DC_coral_macro <- filter(RHI_all, SUBREGION == "DC")
MC_coral_macro <- filter(RHI_all, SUBREGION == "MC")
PBC_coral_macro <- filter(RHI_all, SUBREGION == "PBC")


SEF_coral_macro <- rbind(BC_coral_macro,DC_coral_macro,MC_coral_macro,PBC_coral_macro)

# first average by year and combine with fish data 


SEF_2013_CREMP <- filter(SEF_coral_macro, Year == "2013")

SEF_coral_2013 <- mean(SEF_2013_CREMP$RHI_coral)
SEF_coral_2013_merge <- data.frame(SEF_coral_2013)
SEF_coral_2013_merge$Years <- "2013"
colnames(SEF_coral_2013_merge) <- c("Coral", "Year")


SEF_macro_2013 <- mean(SEF_2013_CREMP$RHI_macroalgae)
SEF_macro_2013_merge <- data.frame(SEF_macro_2013)
SEF_macro_2013_merge$Years <- "2013"
colnames(SEF_macro_2013_merge) <- c("Macroalgae", "Year")


SEF_2013_combine <- merge(SEF_coral_2013_merge, SEF_macro_2013_merge)


SEF_2014_CREMP <- filter(SEF_coral_macro, Year == "2014")

SEF_coral_2014 <- mean(SEF_2014_CREMP$RHI_coral)
SEF_coral_2014_merge <- data.frame(SEF_coral_2014)
SEF_coral_2014_merge$Years <- "2014"
colnames(SEF_coral_2014_merge) <- c("Coral", "Year")


SEF_macro_2014 <- mean(SEF_2014_CREMP$RHI_macroalgae)
SEF_macro_2014_merge <- data.frame(SEF_macro_2014)
SEF_macro_2014_merge$Years <- "2014"
colnames(SEF_macro_2014_merge) <- c("Macroalgae", "Year")


SEF_2014_combine <- merge(SEF_coral_2014_merge, SEF_macro_2014_merge)


SEF_2015_CREMP <- filter(SEF_coral_macro, Year == "2015")

SEF_coral_2015 <- mean(SEF_2015_CREMP$RHI_coral)
SEF_coral_2015_merge <- data.frame(SEF_coral_2015)
SEF_coral_2015_merge$Years <- "2015"
colnames(SEF_coral_2015_merge) <- c("Coral", "Year")


SEF_macro_2015 <- mean(SEF_2015_CREMP$RHI_macroalgae)
SEF_macro_2015_merge <- data.frame(SEF_macro_2015)
SEF_macro_2015_merge$Years <- "2015"
colnames(SEF_macro_2015_merge) <- c("Macroalgae", "Year")


SEF_2015_combine <- merge(SEF_coral_2015_merge, SEF_macro_2015_merge)



SEF_2016_CREMP <- filter(SEF_coral_macro, Year == "2016")

SEF_coral_2016 <- mean(SEF_2016_CREMP$RHI_coral)
SEF_coral_2016_merge <- data.frame(SEF_coral_2016)
SEF_coral_2016_merge$Years <- "2016"
colnames(SEF_coral_2016_merge) <- c("Coral", "Year")


SEF_macro_2016 <- mean(SEF_2016_CREMP$RHI_macroalgae)
SEF_macro_2016_merge <- data.frame(SEF_macro_2016)
SEF_macro_2016_merge$Years <- "2016"
colnames(SEF_macro_2016_merge) <- c("Macroalgae", "Year")


SEF_2016_combine <- merge(SEF_coral_2016_merge, SEF_macro_2016_merge)



SEF_2018_CREMP <- filter(SEF_coral_macro, Year == "2018")

SEF_coral_2018 <- mean(SEF_2018_CREMP$RHI_coral)
SEF_coral_2018_merge <- data.frame(SEF_coral_2018)
SEF_coral_2018_merge$Years <- "2018"
colnames(SEF_coral_2018_merge) <- c("Coral", "Year")


SEF_macro_2018 <- mean(SEF_2018_CREMP$RHI_macroalgae)
SEF_macro_2018_merge <- data.frame(SEF_macro_2018)
SEF_macro_2018_merge$Years <- "2018"
colnames(SEF_macro_2018_merge) <- c("Macroalgae", "Year")


SEF_2018_combine <- merge(SEF_coral_2018_merge, SEF_macro_2018_merge)



SEF_RHI_coral_macro <- rbind(SEF_2013_combine,SEF_2015_combine,SEF_2014_combine,SEF_2016_combine,SEF_2018_combine)



### Combine with fish RHI

SEF_final <- merge (SEF_RHI_coral_macro,SEF_RHI_combined)



### Average categories for one year RHI value 


DT_final$Average <- rowMeans(DT_final[c('Coral','Macroalgae','Comm','Herb')], na.rm = TRUE)

LK_final$Average <- rowMeans(LK_final[c('Coral','Macroalgae','Comm','Herb')], na.rm = TRUE)
MK_final$Average <- rowMeans(MK_final[c('Coral','Macroalgae','Comm','Herb')], na.rm = TRUE)
UK_final$Average <- rowMeans(UK_final[c('Coral','Macroalgae','Comm','Herb')], na.rm = TRUE)
SEF_final$Average <- rowMeans(SEF_final[c('Coral','Macroalgae','Comm','Herb')], na.rm = TRUE)

colnames(DT_final) <- c("Year","Stony Coral","Macroalgae","Commercial Fish","Herbivorous Fish","Average")
colnames(LK_final) <- c("Year","Stony Coral","Macroalgae","Commercial Fish","Herbivorous Fish","Average")
colnames(MK_final) <- c("Year","Stony Coral","Macroalgae","Commercial Fish","Herbivorous Fish","Average")
colnames(UK_final) <- c("Year","Stony Coral","Macroalgae","Commercial Fish","Herbivorous Fish","Average")
colnames(SEF_final) <- c("Year","Stony Coral","Macroalgae","Commercial Fish","Herbivorous Fish","Average")

### output 

export(DT_final,"C:/Users/cestes/Documents/Spring_2020/CREMP_RVC/RHI_regions/DT.csv")
export(LK_final,"C:/Users/cestes/Documents/Spring_2020/CREMP_RVC/RHI_regions/LK.csv")
export(MK_final,"C:/Users/cestes/Documents/Spring_2020/CREMP_RVC/RHI_regions/MK.csv")
export(UK_final,"C:/Users/cestes/Documents/Spring_2020/CREMP_RVC/RHI_regions/UK.csv")
export(SEF_final,"C:/Users/cestes/Documents/Spring_2020/CREMP_RVC/RHI_regions/SEF.csv")



setwd("C:/Users/cestes/Documents/Spring_2020/CREMP_RVC/RHI_regions")


DT_plot <- read_csv("DT.csv")
LK_plot <- read_csv("LK.csv")
MK_plot <- read_csv("MK.csv")
UK_plot <- read_csv("UK.csv")
SEF_plot <- read_csv("SEF.csv")



### plots


ggplot(DT_plot, aes(Year, Average))+
  ggtitle("Reef Health Index", subtitle = "Dry Tortugas")+
  geom_line(size = 2, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave("DT.png", width = 8, height = 4)




ggplot(LK_plot, aes(Year, Average))+
  ggtitle("Reef Health Index", subtitle = "Lower Keys")+
  geom_line(size = 2, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave("LK.png", width = 8, height = 4)



ggplot(MK_plot, aes(Year, Average))+
  ggtitle("Reef Health Index", subtitle = "Middle Keys")+
  geom_line(size = 2, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave("MK.png", width = 8, height = 4)



ggplot(UK_plot, aes(Year, Average))+
  ggtitle("Reef Health Index", subtitle = "Upper Keys")+
  geom_line(size = 2, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave("UK.png", width = 8, height = 4)



ggplot(SEF_plot, aes(Year, Average))+
  ggtitle("Reef Health Index", subtitle = "SE Florida")+
  geom_line(size = 2, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave("SEF.png", width = 8, height = 4)



## more plotting ideas 
library(reshape)


LK_test <- read.delim("LK.csv", sep=",")


LK_melt <- melt(LK_test, id.vars = "Year")


ggplot(LK_melt, aes(Year, value, color = variable))+
  ggtitle("Reef Health Index", subtitle = "Lower Keys")+
  geom_line(size = 1)+
  geom_point(size = .3)+
  scale_y_continuous(limits = c(0,5))+
  scale_color_manual(values=c("indianred1","forestgreen","dodgerblue","orange","firebrick"))+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave("RHI_LK_all_categories.png",width = 8, height = 4)