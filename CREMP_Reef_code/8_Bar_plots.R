### Reef to reef comparison  

setwd("C:/Users/cestes/Documents/Spring_2020/CREMP_RVC")
extrafont::loadfonts(device="pdf")
extrafont::loadfonts(device="postscript")


library(ggplot2)
library(tidyverse)
library(vegan)
library(dygraphs)
library(rio)
library(RColorBrewer)
library(ggplot2)
library(ggpubr)
library(hrbrthemes)
library(tibble)
library(reshape2)

### All data
RVC_CREMP <- read_csv("CREMP_RVC_REEF.csv")




Admiral <- filter(RVC_CREMP, sitename == "Admiral")
Alligator_Deep <- filter(RVC_CREMP, sitename == "Alligator Deep")
Alligator_Shallow <- filter(RVC_CREMP, sitename == "Alligator Shallow")
Bird_Key_Reef <- filter(RVC_CREMP, sitename == "Bird Key Reef")
Broward_County_1 <- filter(RVC_CREMP, sitename == "Broward County 1")
Broward_County_2 <- filter(RVC_CREMP, sitename == "Broward County 2")
Broward_County_3 <- filter(RVC_CREMP, sitename == "Broward County 3")
Broward_County_A <- filter(RVC_CREMP, sitename == "Broward County A")
Burr_Fish <- filter(RVC_CREMP, sitename == "Burr Fish")
Carysfort_Deep <- filter(RVC_CREMP, sitename == "Carysfort Deep")
Carysfort_Shallow <- filter(RVC_CREMP, sitename == "Carysfort Shallow")
Conch_Deep <- filter(RVC_CREMP, sitename == "Conch Deep")
Conch_Shallow <- filter(RVC_CREMP, sitename == "Conch Shallow")
Dade_County_1 <- filter(RVC_CREMP, sitename == "Dade County 1")
Dade_County_2 <- filter(RVC_CREMP, sitename == "Dade County 2")
Dade_County_3 <- filter(RVC_CREMP, sitename == "Dade County 3")
Dade_County_4 <- filter(RVC_CREMP, sitename == "Dade County 4")
Dade_County_5 <- filter(RVC_CREMP, sitename == "Dade County 5")
Davis_Rock <- filter(RVC_CREMP, sitename == "Davis Rock")
Dustan_Rocks <- filter(RVC_CREMP, sitename == "Dustan Rocks")
Eastern_Sambo_Deep <- filter(RVC_CREMP, sitename == "Eastern Sambo Deep")
Eastern_Sambo_Shallow <- filter(RVC_CREMP, sitename == "Eastern Sambo Shallow")
Grecian_Rocks <- filter(RVC_CREMP, sitename == "Grecian Rocks")
Loggerhead_Patch <- filter(RVC_CREMP, sitename == "Loggerhead Patch")
Long_Key <- filter(RVC_CREMP, sitename == "Long Key")
Looe_Key_Deep <- filter(RVC_CREMP, sitename == "Looe Key Deep")
Looe_Key_Shallow <- filter(RVC_CREMP, sitename == "Looe Key Shallow")
Martin_County_1 <- filter(RVC_CREMP, sitename == "Martin County 1")
Martin_County_2 <- filter(RVC_CREMP, sitename == "Martin County 2")
Molasses_Deep <- filter(RVC_CREMP, sitename == "Molasses Deep")
Molasses_Shallow <- filter(RVC_CREMP, sitename == "Molasses Shallow")
Palm_Beach_1 <- filter(RVC_CREMP, sitename == "Palm Beach 1")
Palm_Beach_2 <- filter(RVC_CREMP, sitename == "Palm Beach 2")
Palm_Beach_3 <- filter(RVC_CREMP, sitename == "Palm Beach 3")
Palm_Beach_4 <- filter(RVC_CREMP, sitename == "Palm Beach 4")
Palmata_Patch <- filter(RVC_CREMP, sitename == "Palmata Patch")
Porter_Patch <- filter(RVC_CREMP, sitename == "Porter Patch")
Prolifera_Patch <- filter(RVC_CREMP, sitename == "Prolifera Patch")
Rawa_Reef <- filter(RVC_CREMP, sitename == "Rawa Reef")
Rock_Key_Deep <- filter(RVC_CREMP, sitename == "Rock Key Deep")
Rock_Key_Shallow <- filter(RVC_CREMP, sitename == "Rock Key Shallow")
Sand_Key_Deep <- filter(RVC_CREMP, sitename == "Sand Key Deep")
Sand_Key_Shallow <- filter(RVC_CREMP, sitename == "Sand Key Shallow")
Smith_Shoal <- filter(RVC_CREMP, sitename == "Smith Shoal")
Sombrero_Deep <- filter(RVC_CREMP, sitename == "Sombrero Deep")
Sombrero_Shallow <- filter(RVC_CREMP, sitename == "Sombrero Shallow")
Temptation_Rock <- filter(RVC_CREMP, sitename == "Temptation Rock")
Tennessee_Deep <- filter(RVC_CREMP, sitename == "Tennessee Deep")
Tennessee_Shallow <- filter(RVC_CREMP, sitename == "Tennessee Shallow")
Texas_Rock <- filter(RVC_CREMP, sitename == "Texas Rock")
Thor <- filter(RVC_CREMP, sitename == "Thor")
Turtle <- filter(RVC_CREMP, sitename == "Turtle")
Two_Patches <- filter(RVC_CREMP, sitename == "Two Patches")
West_Turtle_Shoal <- filter(RVC_CREMP, sitename == "West Turtle Shoal")
Western_Sambo_Deep <- filter(RVC_CREMP, sitename == "Western Sambo Deep")
Western_Sambo_Shallow <- filter(RVC_CREMP, sitename == "Western Sambo Shallow")
White_Shoal <- filter(RVC_CREMP, sitename == "White Shoal")



setwd("C:/Users/cestes/Documents/Spring_2020/CREMP_RVC/Bar/MK")


Alligator_Deep <- filter(RVC_CREMP, sitename == "Alligator Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Alligator_Deep_fish <- Alligator_Deep$sum/max(Alligator_Deep$sum)
Alligator_Deep_biomass <- data.frame(Alligator_Deep_fish)

Alligator_Deep_biomass <- 100*Alligator_Deep_biomass


Alligator_Deep_Stony <- Alligator_Deep$Stony_coral/max(Alligator_Deep$Stony_coral)
Alligator_Deep_coral <- data.frame(Alligator_Deep_Stony)

Alligator_Deep_stony_coral <- 100*Alligator_Deep_coral

Alligator_Deep_macro <- Alligator_Deep$Macroalgae/max(Alligator_Deep$Macroalgae)
Alligator_Deep_algae <- data.frame(Alligator_Deep_macro)


Alligator_Deep_macroalgae <- (100*Alligator_Deep_algae)


Alligator_Deep_plot <- cbind(Alligator_Deep_macroalgae,Alligator_Deep_biomass,Alligator_Deep_stony_coral)

Alligator_Deep_plot$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Alligator_Deep_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Alligator_Deep_plot <- Alligator_Deep_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Alligator_Deep_plot,"Alligator_Deep.csv")


### import as csv (change category and value to the two column names)

Alligator_Deep_bar <- read.delim("Alligator_Deep.csv", sep=",")



Alligator_Deep_bar_graph <- melt(Alligator_Deep_bar, id.vars = "Year")


### Bar plot code if kept
# 
# ggplot(Alligator_Deep_bar_graph, aes(Year, value, fill=variable))+
#   ggtitle("Coral Health Index", subtitle = "Alligator Deep")+
#   geom_bar( stat = "identity", width = 0.6, position = position_dodge())+
#   scale_fill_manual("Legend", values = c("Macroalgae"="forestgreen","Fish_Biomass"="dodgerblue","Stony_Coral"="indianred1"))+
#   scale_x_continuous(breaks = round(seq(min(Alligator_Deep_bar_graph$Year), max(Alligator_Deep_bar_graph$Year), by = 2),1))+
#   theme_bw()+
#   theme(
#   plot.title = element_text(hjust = 0.5),
#   plot.subtitle = element_text(hjust = 0.5),
#   legend.background = element_blank(),
#   legend.box.background = element_rect(colour = "black"))+
#   ylab("Percentage %")








