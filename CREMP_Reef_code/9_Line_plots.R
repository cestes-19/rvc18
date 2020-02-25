
### Line Graphs for each Reef


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



### MK

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


### plot
ggplot(Alligator_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Alligator Deep")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Alligator_Deep_bar_graph$Year), max(Alligator_Deep_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Alligator_Deep.png", width = 8, height = 4)




Alligator_Shallow <- filter(RVC_CREMP, sitename == "Alligator Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Alligator_Shallow_fish <- Alligator_Shallow$sum/max(Alligator_Shallow$sum)
Alligator_Shallow_biomass <- data.frame(Alligator_Shallow_fish)

Alligator_Shallow_biomass <- 100*Alligator_Shallow_biomass


Alligator_Shallow_Stony <- Alligator_Shallow$Stony_coral/max(Alligator_Shallow$Stony_coral)
Alligator_Shallow_coral <- data.frame(Alligator_Shallow_Stony)

Alligator_Shallow_stony_coral <- 100*Alligator_Shallow_coral

Alligator_Shallow_macro <- Alligator_Shallow$Macroalgae/max(Alligator_Shallow$Macroalgae)
Alligator_Shallow_algae <- data.frame(Alligator_Shallow_macro)


Alligator_Shallow_macroalgae <- (100*Alligator_Shallow_algae)


Alligator_Shallow_plot <- cbind(Alligator_Shallow_macroalgae,Alligator_Shallow_biomass,Alligator_Shallow_stony_coral)

Alligator_Shallow_plot$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Alligator_Shallow_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Alligator_Shallow_plot <- Alligator_Shallow_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Alligator_Shallow_plot,"Alligator_Shallow.csv")


### import as csv (change category and value to the two column names)

Alligator_Shallow_bar <- read.delim("Alligator_Shallow.csv", sep=",")



Alligator_Shallow_bar_graph <- melt(Alligator_Shallow_bar, id.vars = "Year")


### plot
ggplot(Alligator_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Alligator Shallow")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Alligator_Shallow_bar_graph$Year), max(Alligator_Shallow_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Alligator_Shallow.png", width = 8, height = 4)





Sombrero_Deep <- filter(RVC_CREMP, sitename == "Sombrero Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Sombrero_Deep_fish <- Sombrero_Deep$sum/max(Sombrero_Deep$sum)
Sombrero_Deep_biomass <- data.frame(Sombrero_Deep_fish)

Sombrero_Deep_biomass <- 100*Sombrero_Deep_biomass


Sombrero_Deep_Stony <- Sombrero_Deep$Stony_coral/max(Sombrero_Deep$Stony_coral)
Sombrero_Deep_coral <- data.frame(Sombrero_Deep_Stony)

Sombrero_Deep_stony_coral <- 100*Sombrero_Deep_coral

Sombrero_Deep_macro <- Sombrero_Deep$Macroalgae/max(Sombrero_Deep$Macroalgae)
Sombrero_Deep_algae <- data.frame(Sombrero_Deep_macro)


Sombrero_Deep_macroalgae <- (100*Sombrero_Deep_algae)


Sombrero_Deep_plot <- cbind(Sombrero_Deep_macroalgae,Sombrero_Deep_biomass,Sombrero_Deep_stony_coral)

Sombrero_Deep_plot$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Sombrero_Deep_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Sombrero_Deep_plot <- Sombrero_Deep_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Sombrero_Deep_plot,"Sombrero_Deep.csv")


### import as csv (change category and value to the two column names)

Sombrero_Deep_bar <- read.delim("Sombrero_Deep.csv", sep=",")



Sombrero_Deep_bar_graph <- melt(Sombrero_Deep_bar, id.vars = "Year")


### plot
ggplot(Sombrero_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Sombrero Deep")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Sombrero_Deep_bar_graph$Year), max(Sombrero_Deep_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Sombrero_Deep.png", width = 8, height = 4)




Sombrero_Shallow <- filter(RVC_CREMP, sitename == "Sombrero Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Sombrero_Shallow_fish <- Sombrero_Shallow$sum/max(Sombrero_Shallow$sum)
Sombrero_Shallow_biomass <- data.frame(Sombrero_Shallow_fish)

Sombrero_Shallow_biomass <- 100*Sombrero_Shallow_biomass


Sombrero_Shallow_Stony <- Sombrero_Shallow$Stony_coral/max(Sombrero_Shallow$Stony_coral)
Sombrero_Shallow_coral <- data.frame(Sombrero_Shallow_Stony)

Sombrero_Shallow_stony_coral <- 100*Sombrero_Shallow_coral

Sombrero_Shallow_macro <- Sombrero_Shallow$Macroalgae/max(Sombrero_Shallow$Macroalgae)
Sombrero_Shallow_algae <- data.frame(Sombrero_Shallow_macro)


Sombrero_Shallow_macroalgae <- (100*Sombrero_Shallow_algae)


Sombrero_Shallow_plot <- cbind(Sombrero_Shallow_macroalgae,Sombrero_Shallow_biomass,Sombrero_Shallow_stony_coral)

Sombrero_Shallow_plot$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Sombrero_Shallow_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Sombrero_Shallow_plot <- Sombrero_Shallow_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Sombrero_Shallow_plot,"Sombrero_Shallow.csv")


### import as csv (change category and value to the two column names)

Sombrero_Shallow_bar <- read.delim("Sombrero_Shallow.csv", sep=",")



Sombrero_Shallow_bar_graph <- melt(Sombrero_Shallow_bar, id.vars = "Year")


### plot
ggplot(Sombrero_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Sombrero Shallow")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Sombrero_Shallow_bar_graph$Year), max(Sombrero_Shallow_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Sombrero_Shallow.png", width = 8, height = 4)





Tennessee_Deep <- filter(RVC_CREMP, sitename == "Tennessee Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Tennessee_Deep_fish <- Tennessee_Deep$sum/max(Tennessee_Deep$sum)
Tennessee_Deep_biomass <- data.frame(Tennessee_Deep_fish)

Tennessee_Deep_biomass <- 100*Tennessee_Deep_biomass


Tennessee_Deep_Stony <- Tennessee_Deep$Stony_coral/max(Tennessee_Deep$Stony_coral)
Tennessee_Deep_coral <- data.frame(Tennessee_Deep_Stony)

Tennessee_Deep_stony_coral <- 100*Tennessee_Deep_coral

Tennessee_Deep_macro <- Tennessee_Deep$Macroalgae/max(Tennessee_Deep$Macroalgae)
Tennessee_Deep_algae <- data.frame(Tennessee_Deep_macro)


Tennessee_Deep_macroalgae <- (100*Tennessee_Deep_algae)


Tennessee_Deep_plot <- cbind(Tennessee_Deep_macroalgae,Tennessee_Deep_biomass,Tennessee_Deep_stony_coral)

Tennessee_Deep_plot$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Tennessee_Deep_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Tennessee_Deep_plot <- Tennessee_Deep_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Tennessee_Deep_plot,"Tennessee_Deep.csv")


### import as csv (change category and value to the two column names)

Tennessee_Deep_bar <- read.delim("Tennessee_Deep.csv", sep=",")



Tennessee_Deep_bar_graph <- melt(Tennessee_Deep_bar, id.vars = "Year")


### plot
ggplot(Tennessee_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Tennessee Deep")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Tennessee_Deep_bar_graph$Year), max(Tennessee_Deep_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Tennessee_Deep.png", width = 8, height = 4)




Tennessee_Shallow <- filter(RVC_CREMP, sitename == "Tennessee Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Tennessee_Shallow_fish <- Tennessee_Shallow$sum/max(Tennessee_Shallow$sum)
Tennessee_Shallow_biomass <- data.frame(Tennessee_Shallow_fish)

Tennessee_Shallow_biomass <- 100*Tennessee_Shallow_biomass


Tennessee_Shallow_Stony <- Tennessee_Shallow$Stony_coral/max(Tennessee_Shallow$Stony_coral)
Tennessee_Shallow_coral <- data.frame(Tennessee_Shallow_Stony)

Tennessee_Shallow_stony_coral <- 100*Tennessee_Shallow_coral

Tennessee_Shallow_macro <- Tennessee_Shallow$Macroalgae/max(Tennessee_Shallow$Macroalgae)
Tennessee_Shallow_algae <- data.frame(Tennessee_Shallow_macro)


Tennessee_Shallow_macroalgae <- (100*Tennessee_Shallow_algae)


Tennessee_Shallow_plot <- cbind(Tennessee_Shallow_macroalgae,Tennessee_Shallow_biomass,Tennessee_Shallow_stony_coral)

Tennessee_Shallow_plot$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Tennessee_Shallow_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Tennessee_Shallow_plot <- Tennessee_Shallow_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Tennessee_Shallow_plot,"Tennessee_Shallow.csv")


### import as csv (change category and value to the two column names)

Tennessee_Shallow_bar <- read.delim("Tennessee_Shallow.csv", sep=",")



Tennessee_Shallow_bar_graph <- melt(Tennessee_Shallow_bar, id.vars = "Year")


### plot
ggplot(Tennessee_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Tennessee Shallow")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Tennessee_Shallow_bar_graph$Year), max(Tennessee_Shallow_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Tennessee_Shallow.png", width = 8, height = 4)




West_Turtle_Shoal <- filter(RVC_CREMP, sitename == "West Turtle Shoal")

## Make percentages of sum, stony coral cover, and macroalgae

West_Turtle_Shoal_fish <- West_Turtle_Shoal$sum/max(West_Turtle_Shoal$sum)
West_Turtle_Shoal_biomass <- data.frame(West_Turtle_Shoal_fish)

West_Turtle_Shoal_biomass <- 100*West_Turtle_Shoal_biomass


West_Turtle_Shoal_Stony <- West_Turtle_Shoal$Stony_coral/max(West_Turtle_Shoal$Stony_coral)
West_Turtle_Shoal_coral <- data.frame(West_Turtle_Shoal_Stony)

West_Turtle_Shoal_stony_coral <- 100*West_Turtle_Shoal_coral

West_Turtle_Shoal_macro <- West_Turtle_Shoal$Macroalgae/max(West_Turtle_Shoal$Macroalgae)
West_Turtle_Shoal_algae <- data.frame(West_Turtle_Shoal_macro)


West_Turtle_Shoal_macroalgae <- (100*West_Turtle_Shoal_algae)


West_Turtle_Shoal_plot <- cbind(West_Turtle_Shoal_macroalgae,West_Turtle_Shoal_biomass,West_Turtle_Shoal_stony_coral)

West_Turtle_Shoal_plot$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014")

colnames(West_Turtle_Shoal_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


West_Turtle_Shoal_plot <- West_Turtle_Shoal_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(West_Turtle_Shoal_plot,"West_Turtle_Shoal.csv")


### import as csv (change category and value to the two column names)

West_Turtle_Shoal_bar <- read.delim("West_Turtle_Shoal.csv", sep=",")



West_Turtle_Shoal_bar_graph <- melt(West_Turtle_Shoal_bar, id.vars = "Year")


### plot
ggplot(West_Turtle_Shoal_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "West Turtle Shoal")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(West_Turtle_Shoal_bar_graph$Year), max(West_Turtle_Shoal_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/West_Turtle_Shoal.png", width = 8, height = 4)





#### Lower Keys 



setwd("C:/Users/cestes/Documents/Spring_2020/CREMP_RVC/Bar/LK")




Eastern_Sambo_Deep <- filter(RVC_CREMP, sitename == "Eastern Sambo Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Eastern_Sambo_Deep_fish <- Eastern_Sambo_Deep$sum/max(Eastern_Sambo_Deep$sum)
Eastern_Sambo_Deep_biomass <- data.frame(Eastern_Sambo_Deep_fish)

Eastern_Sambo_Deep_biomass <- 100*Eastern_Sambo_Deep_biomass


Eastern_Sambo_Deep_Stony <- Eastern_Sambo_Deep$Stony_coral/max(Eastern_Sambo_Deep$Stony_coral)
Eastern_Sambo_Deep_coral <- data.frame(Eastern_Sambo_Deep_Stony)

Eastern_Sambo_Deep_stony_coral <- 100*Eastern_Sambo_Deep_coral

Eastern_Sambo_Deep_macro <- Eastern_Sambo_Deep$Macroalgae/max(Eastern_Sambo_Deep$Macroalgae)
Eastern_Sambo_Deep_algae <- data.frame(Eastern_Sambo_Deep_macro)


Eastern_Sambo_Deep_macroalgae <- (100*Eastern_Sambo_Deep_algae)


Eastern_Sambo_Deep_plot <- cbind(Eastern_Sambo_Deep_macroalgae,Eastern_Sambo_Deep_biomass,Eastern_Sambo_Deep_stony_coral)

Eastern_Sambo_Deep_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016")

colnames(Eastern_Sambo_Deep_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Eastern_Sambo_Deep_plot <- Eastern_Sambo_Deep_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Eastern_Sambo_Deep_plot,"Eastern_Sambo_Deep.csv")


### import as csv (change category and value to the two column names)

Eastern_Sambo_Deep_bar <- read.delim("Eastern_Sambo_Deep.csv", sep=",")



Eastern_Sambo_Deep_bar_graph <- melt(Eastern_Sambo_Deep_bar, id.vars = "Year")


### plot
ggplot(Eastern_Sambo_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Eastern Sambo Deep")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Eastern_Sambo_Deep_bar_graph$Year), max(Eastern_Sambo_Deep_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Eastern_Sambo_Deep.png", width = 8, height = 4)





Eastern_Sambo_Shallow <- filter(RVC_CREMP, sitename == "Eastern Sambo Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Eastern_Sambo_Shallow_fish <- Eastern_Sambo_Shallow$sum/max(Eastern_Sambo_Shallow$sum)
Eastern_Sambo_Shallow_biomass <- data.frame(Eastern_Sambo_Shallow_fish)

Eastern_Sambo_Shallow_biomass <- 100*Eastern_Sambo_Shallow_biomass


Eastern_Sambo_Shallow_Stony <- Eastern_Sambo_Shallow$Stony_coral/max(Eastern_Sambo_Shallow$Stony_coral)
Eastern_Sambo_Shallow_coral <- data.frame(Eastern_Sambo_Shallow_Stony)

Eastern_Sambo_Shallow_stony_coral <- 100*Eastern_Sambo_Shallow_coral

Eastern_Sambo_Shallow_macro <- Eastern_Sambo_Shallow$Macroalgae/max(Eastern_Sambo_Shallow$Macroalgae)
Eastern_Sambo_Shallow_algae <- data.frame(Eastern_Sambo_Shallow_macro)


Eastern_Sambo_Shallow_macroalgae <- (100*Eastern_Sambo_Shallow_algae)


Eastern_Sambo_Shallow_plot <- cbind(Eastern_Sambo_Shallow_macroalgae,Eastern_Sambo_Shallow_biomass,Eastern_Sambo_Shallow_stony_coral)

Eastern_Sambo_Shallow_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Eastern_Sambo_Shallow_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Eastern_Sambo_Shallow_plot <- Eastern_Sambo_Shallow_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Eastern_Sambo_Shallow_plot,"Eastern_Sambo_Shallow.csv")


### import as csv (change category and value to the two column names)

Eastern_Sambo_Shallow_bar <- read.delim("Eastern_Sambo_Shallow.csv", sep=",")



Eastern_Sambo_Shallow_bar_graph <- melt(Eastern_Sambo_Shallow_bar, id.vars = "Year")


### plot
ggplot(Eastern_Sambo_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Eastern Sambo Shallow")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Eastern_Sambo_Shallow_bar_graph$Year), max(Eastern_Sambo_Shallow_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Eastern_Sambo_Shallow.png", width = 8, height = 4)





Looe_Key_Deep <- filter(RVC_CREMP, sitename == "Looe Key Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Looe_Key_Deep_fish <- Looe_Key_Deep$sum/max(Looe_Key_Deep$sum)
Looe_Key_Deep_biomass <- data.frame(Looe_Key_Deep_fish)

Looe_Key_Deep_biomass <- 100*Looe_Key_Deep_biomass


Looe_Key_Deep_Stony <- Looe_Key_Deep$Stony_coral/max(Looe_Key_Deep$Stony_coral)
Looe_Key_Deep_coral <- data.frame(Looe_Key_Deep_Stony)

Looe_Key_Deep_stony_coral <- 100*Looe_Key_Deep_coral

Looe_Key_Deep_macro <- Looe_Key_Deep$Macroalgae/max(Looe_Key_Deep$Macroalgae)
Looe_Key_Deep_algae <- data.frame(Looe_Key_Deep_macro)


Looe_Key_Deep_macroalgae <- (100*Looe_Key_Deep_algae)


Looe_Key_Deep_plot <- cbind(Looe_Key_Deep_macroalgae,Looe_Key_Deep_biomass,Looe_Key_Deep_stony_coral)

Looe_Key_Deep_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Looe_Key_Deep_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Looe_Key_Deep_plot <- Looe_Key_Deep_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Looe_Key_Deep_plot,"Looe_Key_Deep.csv")


### import as csv (change category and value to the two column names)

Looe_Key_Deep_bar <- read.delim("Looe_Key_Deep.csv", sep=",")



Looe_Key_Deep_bar_graph <- melt(Looe_Key_Deep_bar, id.vars = "Year")


### plot
ggplot(Looe_Key_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Looe Key Deep")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Looe_Key_Deep_bar_graph$Year), max(Looe_Key_Deep_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Looe_Key_Deep.png", width = 8, height = 4)




Looe_Key_Shallow <- filter(RVC_CREMP, sitename == "Looe Key Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Looe_Key_Shallow_fish <- Looe_Key_Shallow$sum/max(Looe_Key_Shallow$sum)
Looe_Key_Shallow_biomass <- data.frame(Looe_Key_Shallow_fish)

Looe_Key_Shallow_biomass <- 100*Looe_Key_Shallow_biomass


Looe_Key_Shallow_Stony <- Looe_Key_Shallow$Stony_coral/max(Looe_Key_Shallow$Stony_coral)
Looe_Key_Shallow_coral <- data.frame(Looe_Key_Shallow_Stony)

Looe_Key_Shallow_stony_coral <- 100*Looe_Key_Shallow_coral

Looe_Key_Shallow_macro <- Looe_Key_Shallow$Macroalgae/max(Looe_Key_Shallow$Macroalgae)
Looe_Key_Shallow_algae <- data.frame(Looe_Key_Shallow_macro)


Looe_Key_Shallow_macroalgae <- (100*Looe_Key_Shallow_algae)


Looe_Key_Shallow_plot <- cbind(Looe_Key_Shallow_macroalgae,Looe_Key_Shallow_biomass,Looe_Key_Shallow_stony_coral)

Looe_Key_Shallow_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Looe_Key_Shallow_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Looe_Key_Shallow_plot <- Looe_Key_Shallow_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Looe_Key_Shallow_plot,"Looe_Key_Shallow.csv")


### import as csv (change category and value to the two column names)

Looe_Key_Shallow_bar <- read.delim("Looe_Key_Shallow.csv", sep=",")



Looe_Key_Shallow_bar_graph <- melt(Looe_Key_Shallow_bar, id.vars = "Year")


### plot
ggplot(Looe_Key_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Looe Key Shallow")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Looe_Key_Shallow_bar_graph$Year), max(Looe_Key_Shallow_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Looe_Key_Shallow.png", width = 8, height = 4)




Rock_Key_Deep <- filter(RVC_CREMP, sitename == "Rock Key Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Rock_Key_Deep_fish <- Rock_Key_Deep$sum/max(Rock_Key_Deep$sum)
Rock_Key_Deep_biomass <- data.frame(Rock_Key_Deep_fish)

Rock_Key_Deep_biomass <- 100*Rock_Key_Deep_biomass


Rock_Key_Deep_Stony <- Rock_Key_Deep$Stony_coral/max(Rock_Key_Deep$Stony_coral)
Rock_Key_Deep_coral <- data.frame(Rock_Key_Deep_Stony)

Rock_Key_Deep_stony_coral <- 100*Rock_Key_Deep_coral

Rock_Key_Deep_macro <- Rock_Key_Deep$Macroalgae/max(Rock_Key_Deep$Macroalgae)
Rock_Key_Deep_algae <- data.frame(Rock_Key_Deep_macro)


Rock_Key_Deep_macroalgae <- (100*Rock_Key_Deep_algae)


Rock_Key_Deep_plot <- cbind(Rock_Key_Deep_macroalgae,Rock_Key_Deep_biomass,Rock_Key_Deep_stony_coral)

Rock_Key_Deep_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2010","2011","2012","2014","2016")

colnames(Rock_Key_Deep_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Rock_Key_Deep_plot <- Rock_Key_Deep_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Rock_Key_Deep_plot,"Rock_Key_Deep.csv")


### import as csv (change category and value to the two column names)

Rock_Key_Deep_bar <- read.delim("Rock_Key_Deep.csv", sep=",")



Rock_Key_Deep_bar_graph <- melt(Rock_Key_Deep_bar, id.vars = "Year")


### plot
ggplot(Rock_Key_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Rock Key Deep")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Rock_Key_Deep_bar_graph$Year), max(Rock_Key_Deep_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Rock_Key_Deep.png", width = 8, height = 4)




Rock_Key_Shallow <- filter(RVC_CREMP, sitename == "Rock Key Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Rock_Key_Shallow_fish <- Rock_Key_Shallow$sum/max(Rock_Key_Shallow$sum)
Rock_Key_Shallow_biomass <- data.frame(Rock_Key_Shallow_fish)

Rock_Key_Shallow_biomass <- 100*Rock_Key_Shallow_biomass


Rock_Key_Shallow_Stony <- Rock_Key_Shallow$Stony_coral/max(Rock_Key_Shallow$Stony_coral)
Rock_Key_Shallow_coral <- data.frame(Rock_Key_Shallow_Stony)

Rock_Key_Shallow_stony_coral <- 100*Rock_Key_Shallow_coral

Rock_Key_Shallow_macro <- Rock_Key_Shallow$Macroalgae/max(Rock_Key_Shallow$Macroalgae)
Rock_Key_Shallow_algae <- data.frame(Rock_Key_Shallow_macro)


Rock_Key_Shallow_macroalgae <- (100*Rock_Key_Shallow_algae)


Rock_Key_Shallow_plot <- cbind(Rock_Key_Shallow_macroalgae,Rock_Key_Shallow_biomass,Rock_Key_Shallow_stony_coral)

Rock_Key_Shallow_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Rock_Key_Shallow_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Rock_Key_Shallow_plot <- Rock_Key_Shallow_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Rock_Key_Shallow_plot,"Rock_Key_Shallow.csv")


### import as csv (change category and value to the two column names)

Rock_Key_Shallow_bar <- read.delim("Rock_Key_Shallow.csv", sep=",")



Rock_Key_Shallow_bar_graph <- melt(Rock_Key_Shallow_bar, id.vars = "Year")


### plot
ggplot(Rock_Key_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Rock Key Shallow")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Rock_Key_Shallow_bar_graph$Year), max(Rock_Key_Shallow_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Rock_Key_Shallow.png", width = 8, height = 4)




Sand_Key_Deep <- filter(RVC_CREMP, sitename == "Sand Key Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Sand_Key_Deep_fish <- Sand_Key_Deep$sum/max(Sand_Key_Deep$sum)
Sand_Key_Deep_biomass <- data.frame(Sand_Key_Deep_fish)

Sand_Key_Deep_biomass <- 100*Sand_Key_Deep_biomass


Sand_Key_Deep_Stony <- Sand_Key_Deep$Stony_coral/max(Sand_Key_Deep$Stony_coral)
Sand_Key_Deep_coral <- data.frame(Sand_Key_Deep_Stony)

Sand_Key_Deep_stony_coral <- 100*Sand_Key_Deep_coral

Sand_Key_Deep_macro <- Sand_Key_Deep$Macroalgae/max(Sand_Key_Deep$Macroalgae)
Sand_Key_Deep_algae <- data.frame(Sand_Key_Deep_macro)


Sand_Key_Deep_macroalgae <- (100*Sand_Key_Deep_algae)


Sand_Key_Deep_plot <- cbind(Sand_Key_Deep_macroalgae,Sand_Key_Deep_biomass,Sand_Key_Deep_stony_coral)

Sand_Key_Deep_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2010","2011","2012","2014","2016")

colnames(Sand_Key_Deep_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Sand_Key_Deep_plot <- Sand_Key_Deep_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Sand_Key_Deep_plot,"Sand_Key_Deep.csv")


### import as csv (change category and value to the two column names)

Sand_Key_Deep_bar <- read.delim("Sand_Key_Deep.csv", sep=",")



Sand_Key_Deep_bar_graph <- melt(Sand_Key_Deep_bar, id.vars = "Year")


### plot
ggplot(Sand_Key_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Sand Key Deep")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Sand_Key_Deep_bar_graph$Year), max(Sand_Key_Deep_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Sand_Key_Deep.png", width = 8, height = 4)




Sand_Key_Shallow <- filter(RVC_CREMP, sitename == "Sand Key Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Sand_Key_Shallow_fish <- Sand_Key_Shallow$sum/max(Sand_Key_Shallow$sum)
Sand_Key_Shallow_biomass <- data.frame(Sand_Key_Shallow_fish)

Sand_Key_Shallow_biomass <- 100*Sand_Key_Shallow_biomass


Sand_Key_Shallow_Stony <- Sand_Key_Shallow$Stony_coral/max(Sand_Key_Shallow$Stony_coral)
Sand_Key_Shallow_coral <- data.frame(Sand_Key_Shallow_Stony)

Sand_Key_Shallow_stony_coral <- 100*Sand_Key_Shallow_coral

Sand_Key_Shallow_macro <- Sand_Key_Shallow$Macroalgae/max(Sand_Key_Shallow$Macroalgae)
Sand_Key_Shallow_algae <- data.frame(Sand_Key_Shallow_macro)


Sand_Key_Shallow_macroalgae <- (100*Sand_Key_Shallow_algae)


Sand_Key_Shallow_plot <- cbind(Sand_Key_Shallow_macroalgae,Sand_Key_Shallow_biomass,Sand_Key_Shallow_stony_coral)

Sand_Key_Shallow_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Sand_Key_Shallow_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Sand_Key_Shallow_plot <- Sand_Key_Shallow_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Sand_Key_Shallow_plot,"Sand_Key_Shallow.csv")


### import as csv (change category and value to the two column names)

Sand_Key_Shallow_bar <- read.delim("Sand_Key_Shallow.csv", sep=",")



Sand_Key_Shallow_bar_graph <- melt(Sand_Key_Shallow_bar, id.vars = "Year")


### plot
ggplot(Sand_Key_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Sand Key Shallow")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Sand_Key_Shallow_bar_graph$Year), max(Sand_Key_Shallow_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Sand_Key_Shallow.png", width = 8, height = 4)





Western_Sambo_Deep <- filter(RVC_CREMP, sitename == "Western Sambo Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Western_Sambo_Deep_fish <- Western_Sambo_Deep$sum/max(Western_Sambo_Deep$sum)
Western_Sambo_Deep_biomass <- data.frame(Western_Sambo_Deep_fish)

Western_Sambo_Deep_biomass <- 100*Western_Sambo_Deep_biomass


Western_Sambo_Deep_Stony <- Western_Sambo_Deep$Stony_coral/max(Western_Sambo_Deep$Stony_coral)
Western_Sambo_Deep_coral <- data.frame(Western_Sambo_Deep_Stony)

Western_Sambo_Deep_stony_coral <- 100*Western_Sambo_Deep_coral

Western_Sambo_Deep_macro <- Western_Sambo_Deep$Macroalgae/max(Western_Sambo_Deep$Macroalgae)
Western_Sambo_Deep_algae <- data.frame(Western_Sambo_Deep_macro)


Western_Sambo_Deep_macroalgae <- (100*Western_Sambo_Deep_algae)


Western_Sambo_Deep_plot <- cbind(Western_Sambo_Deep_macroalgae,Western_Sambo_Deep_biomass,Western_Sambo_Deep_stony_coral)

Western_Sambo_Deep_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2010","2011","2012","2014","2016")

colnames(Western_Sambo_Deep_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Western_Sambo_Deep_plot <- Western_Sambo_Deep_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Western_Sambo_Deep_plot,"Western_Sambo_Deep.csv")


### import as csv (change category and value to the two column names)

Western_Sambo_Deep_bar <- read.delim("Western_Sambo_Deep.csv", sep=",")



Western_Sambo_Deep_bar_graph <- melt(Western_Sambo_Deep_bar, id.vars = "Year")


### plot
ggplot(Western_Sambo_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Western Sambo Deep")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Western_Sambo_Deep_bar_graph$Year), max(Western_Sambo_Deep_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Western_Sambo_Deep.png", width = 8, height = 4)





Western_Sambo_Shallow <- filter(RVC_CREMP, sitename == "Western Sambo Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Western_Sambo_Shallow_fish <- Western_Sambo_Shallow$sum/max(Western_Sambo_Shallow$sum)
Western_Sambo_Shallow_biomass <- data.frame(Western_Sambo_Shallow_fish)

Western_Sambo_Shallow_biomass <- 100*Western_Sambo_Shallow_biomass


Western_Sambo_Shallow_Stony <- Western_Sambo_Shallow$Stony_coral/max(Western_Sambo_Shallow$Stony_coral)
Western_Sambo_Shallow_coral <- data.frame(Western_Sambo_Shallow_Stony)

Western_Sambo_Shallow_stony_coral <- 100*Western_Sambo_Shallow_coral

Western_Sambo_Shallow_macro <- Western_Sambo_Shallow$Macroalgae/max(Western_Sambo_Shallow$Macroalgae)
Western_Sambo_Shallow_algae <- data.frame(Western_Sambo_Shallow_macro)


Western_Sambo_Shallow_macroalgae <- (100*Western_Sambo_Shallow_algae)


Western_Sambo_Shallow_plot <- cbind(Western_Sambo_Shallow_macroalgae,Western_Sambo_Shallow_biomass,Western_Sambo_Shallow_stony_coral)

Western_Sambo_Shallow_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Western_Sambo_Shallow_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Western_Sambo_Shallow_plot <- Western_Sambo_Shallow_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Western_Sambo_Shallow_plot,"Western_Sambo_Shallow.csv")


### import as csv (change category and value to the two column names)

Western_Sambo_Shallow_bar <- read.delim("Western_Sambo_Shallow.csv", sep=",")



Western_Sambo_Shallow_bar_graph <- melt(Western_Sambo_Shallow_bar, id.vars = "Year")


### plot
ggplot(Western_Sambo_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Western Sambo Shallow")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Western_Sambo_Shallow_bar_graph$Year), max(Western_Sambo_Shallow_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Western_Sambo_Shallow.png", width = 8, height = 4)




setwd("C:/Users/cestes/Documents/Spring_2020/CREMP_RVC/Bar/UK")



#### UK

Carysfort_Deep <- filter(RVC_CREMP, sitename == "Carysfort Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Carysfort_Deep_fish <- Carysfort_Deep$sum/max(Carysfort_Deep$sum)
Carysfort_Deep_biomass <- data.frame(Carysfort_Deep_fish)

Carysfort_Deep_biomass <- 100*Carysfort_Deep_biomass


Carysfort_Deep_Stony <- Carysfort_Deep$Stony_coral/max(Carysfort_Deep$Stony_coral)
Carysfort_Deep_coral <- data.frame(Carysfort_Deep_Stony)

Carysfort_Deep_stony_coral <- 100*Carysfort_Deep_coral

Carysfort_Deep_macro <- Carysfort_Deep$Macroalgae/max(Carysfort_Deep$Macroalgae)
Carysfort_Deep_algae <- data.frame(Carysfort_Deep_macro)


Carysfort_Deep_macroalgae <- (100*Carysfort_Deep_algae)


Carysfort_Deep_plot <- cbind(Carysfort_Deep_macroalgae,Carysfort_Deep_biomass,Carysfort_Deep_stony_coral)

Carysfort_Deep_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Carysfort_Deep_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Carysfort_Deep_plot <- Carysfort_Deep_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Carysfort_Deep_plot,"Carysfort_Deep.csv")


### import as csv (change category and value to the two column names)

Carysfort_Deep_bar <- read.delim("Carysfort_Deep.csv", sep=",")



Carysfort_Deep_bar_graph <- melt(Carysfort_Deep_bar, id.vars = "Year")


### plot
ggplot(Carysfort_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Carysfort Deep")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Carysfort_Deep_bar_graph$Year), max(Carysfort_Deep_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Carysfort_Deep.png", width = 8, height = 4)






Carysfort_Shallow <- filter(RVC_CREMP, sitename == "Carysfort Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Carysfort_Shallow_fish <- Carysfort_Shallow$sum/max(Carysfort_Shallow$sum)
Carysfort_Shallow_biomass <- data.frame(Carysfort_Shallow_fish)

Carysfort_Shallow_biomass <- 100*Carysfort_Shallow_biomass


Carysfort_Shallow_Stony <- Carysfort_Shallow$Stony_coral/max(Carysfort_Shallow$Stony_coral)
Carysfort_Shallow_coral <- data.frame(Carysfort_Shallow_Stony)

Carysfort_Shallow_stony_coral <- 100*Carysfort_Shallow_coral

Carysfort_Shallow_macro <- Carysfort_Shallow$Macroalgae/max(Carysfort_Shallow$Macroalgae)
Carysfort_Shallow_algae <- data.frame(Carysfort_Shallow_macro)


Carysfort_Shallow_macroalgae <- (100*Carysfort_Shallow_algae)


Carysfort_Shallow_plot <- cbind(Carysfort_Shallow_macroalgae,Carysfort_Shallow_biomass,Carysfort_Shallow_stony_coral)

Carysfort_Shallow_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Carysfort_Shallow_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Carysfort_Shallow_plot <- Carysfort_Shallow_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Carysfort_Shallow_plot,"Carysfort_Shallow.csv")


### import as csv (change category and value to the two column names)

Carysfort_Shallow_bar <- read.delim("Carysfort_Shallow.csv", sep=",")



Carysfort_Shallow_bar_graph <- melt(Carysfort_Shallow_bar, id.vars = "Year")


### plot
ggplot(Carysfort_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Carysfort Shallow")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Carysfort_Shallow_bar_graph$Year), max(Carysfort_Shallow_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Carysfort_Shallow.png", width = 8, height = 4)



Conch_Deep <- filter(RVC_CREMP, sitename == "Conch Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Conch_Deep_fish <- Conch_Deep$sum/max(Conch_Deep$sum)
Conch_Deep_biomass <- data.frame(Conch_Deep_fish)

Conch_Deep_biomass <- 100*Conch_Deep_biomass


Conch_Deep_Stony <- Conch_Deep$Stony_coral/max(Conch_Deep$Stony_coral)
Conch_Deep_coral <- data.frame(Conch_Deep_Stony)

Conch_Deep_stony_coral <- 100*Conch_Deep_coral

Conch_Deep_macro <- Conch_Deep$Macroalgae/max(Conch_Deep$Macroalgae)
Conch_Deep_algae <- data.frame(Conch_Deep_macro)


Conch_Deep_macroalgae <- (100*Conch_Deep_algae)


Conch_Deep_plot <- cbind(Conch_Deep_macroalgae,Conch_Deep_biomass,Conch_Deep_stony_coral)

Conch_Deep_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Conch_Deep_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Conch_Deep_plot <- Conch_Deep_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Conch_Deep_plot,"Conch_Deep.csv")


### import as csv (change category and value to the two column names)

Conch_Deep_bar <- read.delim("Conch_Deep.csv", sep=",")



Conch_Deep_bar_graph <- melt(Conch_Deep_bar, id.vars = "Year")


### plot
ggplot(Conch_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Conch Deep")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Conch_Deep_bar_graph$Year), max(Conch_Deep_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Conch_Deep.png", width = 8, height = 4)





Conch_Shallow <- filter(RVC_CREMP, sitename == "Conch Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Conch_Shallow_fish <- Conch_Shallow$sum/max(Conch_Shallow$sum)
Conch_Shallow_biomass <- data.frame(Conch_Shallow_fish)

Conch_Shallow_biomass <- 100*Conch_Shallow_biomass


Conch_Shallow_Stony <- Conch_Shallow$Stony_coral/max(Conch_Shallow$Stony_coral)
Conch_Shallow_coral <- data.frame(Conch_Shallow_Stony)

Conch_Shallow_stony_coral <- 100*Conch_Shallow_coral

Conch_Shallow_macro <- Conch_Shallow$Macroalgae/max(Conch_Shallow$Macroalgae)
Conch_Shallow_algae <- data.frame(Conch_Shallow_macro)


Conch_Shallow_macroalgae <- (100*Conch_Shallow_algae)


Conch_Shallow_plot <- cbind(Conch_Shallow_macroalgae,Conch_Shallow_biomass,Conch_Shallow_stony_coral)

Conch_Shallow_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Conch_Shallow_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Conch_Shallow_plot <- Conch_Shallow_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Conch_Shallow_plot,"Conch_Shallow.csv")


### import as csv (change category and value to the two column names)

Conch_Shallow_bar <- read.delim("Conch_Shallow.csv", sep=",")



Conch_Shallow_bar_graph <- melt(Conch_Shallow_bar, id.vars = "Year")


### plot
ggplot(Conch_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Conch Shallow")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Conch_Shallow_bar_graph$Year), max(Conch_Shallow_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Conch_Shallow.png", width = 8, height = 4)





Grecian_Rocks <- filter(RVC_CREMP, sitename == "Grecian Rocks")

## Make percentages of sum, stony coral cover, and macroalgae

Grecian_Rocks_fish <- Grecian_Rocks$sum/max(Grecian_Rocks$sum)
Grecian_Rocks_biomass <- data.frame(Grecian_Rocks_fish)

Grecian_Rocks_biomass <- 100*Grecian_Rocks_biomass


Grecian_Rocks_Stony <- Grecian_Rocks$Stony_coral/max(Grecian_Rocks$Stony_coral)
Grecian_Rocks_coral <- data.frame(Grecian_Rocks_Stony)

Grecian_Rocks_stony_coral <- 100*Grecian_Rocks_coral

Grecian_Rocks_macro <- Grecian_Rocks$Macroalgae/max(Grecian_Rocks$Macroalgae)
Grecian_Rocks_algae <- data.frame(Grecian_Rocks_macro)


Grecian_Rocks_macroalgae <- (100*Grecian_Rocks_algae)


Grecian_Rocks_plot <- cbind(Grecian_Rocks_macroalgae,Grecian_Rocks_biomass,Grecian_Rocks_stony_coral)

Grecian_Rocks_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Grecian_Rocks_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Grecian_Rocks_plot <- Grecian_Rocks_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Grecian_Rocks_plot,"Grecian_Rocks.csv")


### import as csv (change category and value to the two column names)

Grecian_Rocks_bar <- read.delim("Grecian_Rocks.csv", sep=",")



Grecian_Rocks_bar_graph <- melt(Grecian_Rocks_bar, id.vars = "Year")


### plot
ggplot(Grecian_Rocks_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Grecian Rocks")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Grecian_Rocks_bar_graph$Year), max(Grecian_Rocks_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Grecian_Rocks.png", width = 8, height = 4)






Molasses_Deep <- filter(RVC_CREMP, sitename == "Molasses Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Molasses_Deep_fish <- Molasses_Deep$sum/max(Molasses_Deep$sum)
Molasses_Deep_biomass <- data.frame(Molasses_Deep_fish)

Molasses_Deep_biomass <- 100*Molasses_Deep_biomass


Molasses_Deep_Stony <- Molasses_Deep$Stony_coral/max(Molasses_Deep$Stony_coral)
Molasses_Deep_coral <- data.frame(Molasses_Deep_Stony)

Molasses_Deep_stony_coral <- 100*Molasses_Deep_coral

Molasses_Deep_macro <- Molasses_Deep$Macroalgae/max(Molasses_Deep$Macroalgae)
Molasses_Deep_algae <- data.frame(Molasses_Deep_macro)


Molasses_Deep_macroalgae <- (100*Molasses_Deep_algae)


Molasses_Deep_plot <- cbind(Molasses_Deep_macroalgae,Molasses_Deep_biomass,Molasses_Deep_stony_coral)

Molasses_Deep_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Molasses_Deep_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Molasses_Deep_plot <- Molasses_Deep_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Molasses_Deep_plot,"Molasses_Deep.csv")


### import as csv (change category and value to the two column names)

Molasses_Deep_bar <- read.delim("Molasses_Deep.csv", sep=",")



Molasses_Deep_bar_graph <- melt(Molasses_Deep_bar, id.vars = "Year")


### plot
ggplot(Molasses_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Molasses Deep")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Molasses_Deep_bar_graph$Year), max(Molasses_Deep_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Molasses_Deep.png", width = 8, height = 4)






Molasses_Shallow <- filter(RVC_CREMP, sitename == "Molasses Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Molasses_Shallow_fish <- Molasses_Shallow$sum/max(Molasses_Shallow$sum)
Molasses_Shallow_biomass <- data.frame(Molasses_Shallow_fish)

Molasses_Shallow_biomass <- 100*Molasses_Shallow_biomass


Molasses_Shallow_Stony <- Molasses_Shallow$Stony_coral/max(Molasses_Shallow$Stony_coral)
Molasses_Shallow_coral <- data.frame(Molasses_Shallow_Stony)

Molasses_Shallow_stony_coral <- 100*Molasses_Shallow_coral

Molasses_Shallow_macro <- Molasses_Shallow$Macroalgae/max(Molasses_Shallow$Macroalgae)
Molasses_Shallow_algae <- data.frame(Molasses_Shallow_macro)


Molasses_Shallow_macroalgae <- (100*Molasses_Shallow_algae)


Molasses_Shallow_plot <- cbind(Molasses_Shallow_macroalgae,Molasses_Shallow_biomass,Molasses_Shallow_stony_coral)

Molasses_Shallow_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Molasses_Shallow_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Molasses_Shallow_plot <- Molasses_Shallow_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Molasses_Shallow_plot,"Molasses_Shallow.csv")


### import as csv (change category and value to the two column names)

Molasses_Shallow_bar <- read.delim("Molasses_Shallow.csv", sep=",")



Molasses_Shallow_bar_graph <- melt(Molasses_Shallow_bar, id.vars = "Year")


### plot
ggplot(Molasses_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Molasses Shallow")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Molasses_Shallow_bar_graph$Year), max(Molasses_Shallow_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Molasses_Shallow.png", width = 8, height = 4)




Porter_Patch <- filter(RVC_CREMP, sitename == "Porter Patch")

## Make percentages of sum, stony coral cover, and macroalgae

Porter_Patch_fish <- Porter_Patch$sum/max(Porter_Patch$sum)
Porter_Patch_biomass <- data.frame(Porter_Patch_fish)

Porter_Patch_biomass <- 100*Porter_Patch_biomass


Porter_Patch_Stony <- Porter_Patch$Stony_coral/max(Porter_Patch$Stony_coral)
Porter_Patch_coral <- data.frame(Porter_Patch_Stony)

Porter_Patch_stony_coral <- 100*Porter_Patch_coral

Porter_Patch_macro <- Porter_Patch$Macroalgae/max(Porter_Patch$Macroalgae)
Porter_Patch_algae <- data.frame(Porter_Patch_macro)


Porter_Patch_macroalgae <- (100*Porter_Patch_algae)


Porter_Patch_plot <- cbind(Porter_Patch_macroalgae,Porter_Patch_biomass,Porter_Patch_stony_coral)

Porter_Patch_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2012","2014")

colnames(Porter_Patch_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Porter_Patch_plot <- Porter_Patch_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Porter_Patch_plot,"Porter_Patch.csv")


### import as csv (change category and value to the two column names)

Porter_Patch_bar <- read.delim("Porter_Patch.csv", sep=",")



Porter_Patch_bar_graph <- melt(Porter_Patch_bar, id.vars = "Year")


### plot
ggplot(Porter_Patch_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Porter Patch")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Porter_Patch_bar_graph$Year), max(Porter_Patch_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Porter_Patch.png", width = 8, height = 4)







Turtle <- filter(RVC_CREMP, sitename == "Turtle")

## Make percentages of sum, stony coral cover, and macroalgae

Turtle_fish <- Turtle$sum/max(Turtle$sum)
Turtle_biomass <- data.frame(Turtle_fish)

Turtle_biomass <- 100*Turtle_biomass


Turtle_Stony <- Turtle$Stony_coral/max(Turtle$Stony_coral)
Turtle_coral <- data.frame(Turtle_Stony)

Turtle_stony_coral <- 100*Turtle_coral

Turtle_macro <- Turtle$Macroalgae/max(Turtle$Macroalgae)
Turtle_algae <- data.frame(Turtle_macro)


Turtle_macroalgae <- (100*Turtle_algae)


Turtle_plot <- cbind(Turtle_macroalgae,Turtle_biomass,Turtle_stony_coral)

Turtle_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014")

colnames(Turtle_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Turtle_plot <- Turtle_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Turtle_plot,"Turtle.csv")


### import as csv (change category and value to the two column names)

Turtle_bar <- read.delim("Turtle.csv", sep=",")



Turtle_bar_graph <- melt(Turtle_bar, id.vars = "Year")


### plot
ggplot(Turtle_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Turtle")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Turtle_bar_graph$Year), max(Turtle_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Turtle.png", width = 8, height = 4)






Palmata_Patch <- filter(RVC_CREMP, sitename == "Alligator Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Palmata_Patch_fish <- Palmata_Patch$sum/max(Palmata_Patch$sum)
Palmata_Patch_biomass <- data.frame(Palmata_Patch_fish)

Palmata_Patch_biomass <- 100*Palmata_Patch_biomass


Palmata_Patch_Stony <- Palmata_Patch$Stony_coral/max(Palmata_Patch$Stony_coral)
Palmata_Patch_coral <- data.frame(Palmata_Patch_Stony)

Palmata_Patch_stony_coral <- 100*Palmata_Patch_coral

Palmata_Patch_macro <- Palmata_Patch$Macroalgae/max(Palmata_Patch$Macroalgae)
Palmata_Patch_algae <- data.frame(Palmata_Patch_macro)


Palmata_Patch_macroalgae <- (100*Palmata_Patch_algae)


Palmata_Patch_plot <- cbind(Palmata_Patch_macroalgae,Palmata_Patch_biomass,Palmata_Patch_stony_coral)

Palmata_Patch_plot$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Palmata_Patch_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Palmata_Patch_plot <- Palmata_Patch_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Palmata_Patch_plot,"Palmata_Patch.csv")


### import as csv (change category and value to the two column names)

Palmata_Patch_bar <- read.delim("Palmata_Patch.csv", sep=",")



Palmata_Patch_bar_graph <- melt(Palmata_Patch_bar, id.vars = "Year")


### plot
ggplot(Palmata_Patch_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Alligator Deep")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Palmata_Patch_bar_graph$Year), max(Palmata_Patch_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Palmata_Patch.png", width = 8, height = 4)




### Dry Tortugas


setwd("C:/Users/cestes/Documents/Spring_2020/CREMP_RVC/Bar/DT")




Bird_Key_Reef <- filter(RVC_CREMP, sitename == "Bird Key Reef")

## Make percentages of sum, stony coral cover, and macroalgae

Bird_Key_Reef_fish <- Bird_Key_Reef$sum/max(Bird_Key_Reef$sum)
Bird_Key_Reef_biomass <- data.frame(Bird_Key_Reef_fish)

Bird_Key_Reef_biomass <- 100*Bird_Key_Reef_biomass


Bird_Key_Reef_Stony <- Bird_Key_Reef$Stony_coral/max(Bird_Key_Reef$Stony_coral)
Bird_Key_Reef_coral <- data.frame(Bird_Key_Reef_Stony)

Bird_Key_Reef_stony_coral <- 100*Bird_Key_Reef_coral

Bird_Key_Reef_macro <- Bird_Key_Reef$Macroalgae/max(Bird_Key_Reef$Macroalgae)
Bird_Key_Reef_algae <- data.frame(Bird_Key_Reef_macro)


Bird_Key_Reef_macroalgae <- (100*Bird_Key_Reef_algae)


Bird_Key_Reef_plot <- cbind(Bird_Key_Reef_macroalgae,Bird_Key_Reef_biomass,Bird_Key_Reef_stony_coral)

Bird_Key_Reef_plot$Year <- c("1999","2000","2004","2006","2008","2010","2012","2014","2016")

colnames(Bird_Key_Reef_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Bird_Key_Reef_plot <- Bird_Key_Reef_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Bird_Key_Reef_plot,"Bird_Key_Reef.csv")


### import as csv (change category and value to the two column names)

Bird_Key_Reef_bar <- read.delim("Bird_Key_Reef.csv", sep=",")



Bird_Key_Reef_bar_graph <- melt(Bird_Key_Reef_bar, id.vars = "Year")


### plot
ggplot(Bird_Key_Reef_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Bird Key Reef")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Bird_Key_Reef_bar_graph$Year), max(Bird_Key_Reef_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Bird_Key_Reef.png", width = 8, height = 4)




Loggerhead_Patch <- filter(RVC_CREMP, sitename == "Loggerhead Patch")

## Make percentages of sum, stony coral cover, and macroalgae

Loggerhead_Patch_fish <- Loggerhead_Patch$sum/max(Loggerhead_Patch$sum)
Loggerhead_Patch_biomass <- data.frame(Loggerhead_Patch_fish)

Loggerhead_Patch_biomass <- 100*Loggerhead_Patch_biomass


Loggerhead_Patch_Stony <- Loggerhead_Patch$Stony_coral/max(Loggerhead_Patch$Stony_coral)
Loggerhead_Patch_coral <- data.frame(Loggerhead_Patch_Stony)

Loggerhead_Patch_stony_coral <- 100*Loggerhead_Patch_coral

Loggerhead_Patch_macro <- Loggerhead_Patch$Macroalgae/max(Loggerhead_Patch$Macroalgae)
Loggerhead_Patch_algae <- data.frame(Loggerhead_Patch_macro)


Loggerhead_Patch_macroalgae <- (100*Loggerhead_Patch_algae)


Loggerhead_Patch_plot <- cbind(Loggerhead_Patch_macroalgae,Loggerhead_Patch_biomass,Loggerhead_Patch_stony_coral)

Loggerhead_Patch_plot$Year <- c("2006","2008","2012","2014","2016")

colnames(Loggerhead_Patch_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Loggerhead_Patch_plot <- Loggerhead_Patch_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Loggerhead_Patch_plot,"Loggerhead_Patch.csv")


### import as csv (change category and value to the two column names)

Loggerhead_Patch_bar <- read.delim("Loggerhead_Patch.csv", sep=",")



Loggerhead_Patch_bar_graph <- melt(Loggerhead_Patch_bar, id.vars = "Year")


### plot
ggplot(Loggerhead_Patch_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Loggerhead Patch")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Loggerhead_Patch_bar_graph$Year), max(Loggerhead_Patch_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Loggerhead_Patch.png", width = 8, height = 4)





Palmata_Patch <- filter(RVC_CREMP, sitename == "Palmata Patch")

## Make percentages of sum, stony coral cover, and macroalgae

Palmata_Patch_fish <- Palmata_Patch$sum/max(Palmata_Patch$sum)
Palmata_Patch_biomass <- data.frame(Palmata_Patch_fish)

Palmata_Patch_biomass <- 100*Palmata_Patch_biomass


Palmata_Patch_Stony <- Palmata_Patch$Stony_coral/max(Palmata_Patch$Stony_coral)
Palmata_Patch_coral <- data.frame(Palmata_Patch_Stony)

Palmata_Patch_stony_coral <- 100*Palmata_Patch_coral

Palmata_Patch_macro <- Palmata_Patch$Macroalgae/max(Palmata_Patch$Macroalgae)
Palmata_Patch_algae <- data.frame(Palmata_Patch_macro)


Palmata_Patch_macroalgae <- (100*Palmata_Patch_algae)


Palmata_Patch_plot <- cbind(Palmata_Patch_macroalgae,Palmata_Patch_biomass,Palmata_Patch_stony_coral)

Palmata_Patch_plot$Year <- c("2004","2006","2008","2012","2014")

colnames(Palmata_Patch_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Palmata_Patch_plot <- Palmata_Patch_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Palmata_Patch_plot,"Palmata_Patch.csv")


### import as csv (change category and value to the two column names)

Palmata_Patch_bar <- read.delim("Palmata_Patch.csv", sep=",")



Palmata_Patch_bar_graph <- melt(Palmata_Patch_bar, id.vars = "Year")


### plot
ggplot(Palmata_Patch_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Palmata Patch")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Palmata_Patch_bar_graph$Year), max(Palmata_Patch_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Palmata_Patch.png", width = 8, height = 4)





Prolifera_Patch <- filter(RVC_CREMP, sitename == "Prolifera Patch")

## Make percentages of sum, stony coral cover, and macroalgae

Prolifera_Patch_fish <- Prolifera_Patch$sum/max(Prolifera_Patch$sum)
Prolifera_Patch_biomass <- data.frame(Prolifera_Patch_fish)

Prolifera_Patch_biomass <- 100*Prolifera_Patch_biomass


Prolifera_Patch_Stony <- Prolifera_Patch$Stony_coral/max(Prolifera_Patch$Stony_coral)
Prolifera_Patch_coral <- data.frame(Prolifera_Patch_Stony)

Prolifera_Patch_stony_coral <- 100*Prolifera_Patch_coral

Prolifera_Patch_macro <- Prolifera_Patch$Macroalgae/max(Prolifera_Patch$Macroalgae)
Prolifera_Patch_algae <- data.frame(Prolifera_Patch_macro)


Prolifera_Patch_macroalgae <- (100*Prolifera_Patch_algae)


Prolifera_Patch_plot <- cbind(Prolifera_Patch_macroalgae,Prolifera_Patch_biomass,Prolifera_Patch_stony_coral)

Prolifera_Patch_plot$Year <- c("2004","2006","2008","2012","2014")

colnames(Prolifera_Patch_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Prolifera_Patch_plot <- Prolifera_Patch_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Prolifera_Patch_plot,"Prolifera_Patch.csv")


### import as csv (change category and value to the two column names)

Prolifera_Patch_bar <- read.delim("Prolifera_Patch.csv", sep=",")



Prolifera_Patch_bar_graph <- melt(Prolifera_Patch_bar, id.vars = "Year")


### plot
ggplot(Prolifera_Patch_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Prolifera Patch")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Prolifera_Patch_bar_graph$Year), max(Prolifera_Patch_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Prolifera_Patch.png", width = 8, height = 4)





Temptation_Rock <- filter(RVC_CREMP, sitename == "Temptation Rock")

## Make percentages of sum, stony coral cover, and macroalgae

Temptation_Rock_fish <- Temptation_Rock$sum/max(Temptation_Rock$sum)
Temptation_Rock_biomass <- data.frame(Temptation_Rock_fish)

Temptation_Rock_biomass <- 100*Temptation_Rock_biomass


Temptation_Rock_Stony <- Temptation_Rock$Stony_coral/max(Temptation_Rock$Stony_coral)
Temptation_Rock_coral <- data.frame(Temptation_Rock_Stony)

Temptation_Rock_stony_coral <- 100*Temptation_Rock_coral

Temptation_Rock_macro <- Temptation_Rock$Macroalgae/max(Temptation_Rock$Macroalgae)
Temptation_Rock_algae <- data.frame(Temptation_Rock_macro)


Temptation_Rock_macroalgae <- (100*Temptation_Rock_algae)


Temptation_Rock_plot <- cbind(Temptation_Rock_macroalgae,Temptation_Rock_biomass,Temptation_Rock_stony_coral)

Temptation_Rock_plot$Year <- c("2004","2006","2008","2012","2014")

colnames(Temptation_Rock_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Temptation_Rock_plot <- Temptation_Rock_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Temptation_Rock_plot,"Temptation_Rock.csv")


### import as csv (change category and value to the two column names)

Temptation_Rock_bar <- read.delim("Temptation_Rock.csv", sep=",")



Temptation_Rock_bar_graph <- melt(Temptation_Rock_bar, id.vars = "Year")


### plot
ggplot(Temptation_Rock_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Temptation Rock")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Temptation_Rock_bar_graph$Year), max(Temptation_Rock_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Temptation_Rock.png", width = 8, height = 4)





White_Shoal <- filter(RVC_CREMP, sitename == "White Shoal")

## Make percentages of sum, stony coral cover, and macroalgae

White_Shoal_fish <- White_Shoal$sum/max(White_Shoal$sum)
White_Shoal_biomass <- data.frame(White_Shoal_fish)

White_Shoal_biomass <- 100*White_Shoal_biomass


White_Shoal_Stony <- White_Shoal$Stony_coral/max(White_Shoal$Stony_coral)
White_Shoal_coral <- data.frame(White_Shoal_Stony)

White_Shoal_stony_coral <- 100*White_Shoal_coral

White_Shoal_macro <- White_Shoal$Macroalgae/max(White_Shoal$Macroalgae)
White_Shoal_algae <- data.frame(White_Shoal_macro)


White_Shoal_macroalgae <- (100*White_Shoal_algae)


White_Shoal_plot <- cbind(White_Shoal_macroalgae,White_Shoal_biomass,White_Shoal_stony_coral)

White_Shoal_plot$Year <- c("1999","2000","2004","2006","2008","2012","2014")

colnames(White_Shoal_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


White_Shoal_plot <- White_Shoal_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(White_Shoal_plot,"White_Shoal.csv")


### import as csv (change category and value to the two column names)

White_Shoal_bar <- read.delim("White_Shoal.csv", sep=",")



White_Shoal_bar_graph <- melt(White_Shoal_bar, id.vars = "Year")


### plot
ggplot(White_Shoal_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "White Shoal")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(White_Shoal_bar_graph$Year), max(White_Shoal_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/White_Shoal.png", width = 8, height = 4)




###SEF

setwd("C:/Users/cestes/Documents/Spring_2020/CREMP_RVC/Bar/SEF")



Broward_County_1 <- filter(RVC_CREMP, sitename == "Broward County 1")

## Make percentages of sum, stony coral cover, and macroalgae

Broward_County_1_fish <- Broward_County_1$sum/max(Broward_County_1$sum)
Broward_County_1_biomass <- data.frame(Broward_County_1_fish)

Broward_County_1_biomass <- 100*Broward_County_1_biomass


Broward_County_1_Stony <- Broward_County_1$Stony_coral/max(Broward_County_1$Stony_coral)
Broward_County_1_coral <- data.frame(Broward_County_1_Stony)

Broward_County_1_stony_coral <- 100*Broward_County_1_coral

Broward_County_1_macro <- Broward_County_1$Macroalgae/max(Broward_County_1$Macroalgae)
Broward_County_1_algae <- data.frame(Broward_County_1_macro)


Broward_County_1_macroalgae <- (100*Broward_County_1_algae)


Broward_County_1_plot <- cbind(Broward_County_1_macroalgae,Broward_County_1_biomass,Broward_County_1_stony_coral)

Broward_County_1_plot$Year <- c("2013","2014","2015","2016")

colnames(Broward_County_1_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Broward_County_1_plot <- Broward_County_1_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Broward_County_1_plot,"Broward_County_1.csv")


### import as csv (change category and value to the two column names)

Broward_County_1_bar <- read.delim("Broward_County_1.csv", sep=",")



Broward_County_1_bar_graph <- melt(Broward_County_1_bar, id.vars = "Year")


### plot
ggplot(Broward_County_1_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Broward County 1")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Broward_County_1_bar_graph$Year), max(Broward_County_1_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Broward_County_1.png", width = 8, height = 4)





Broward_County_2 <- filter(RVC_CREMP, sitename == "Broward County 2")

## Make percentages of sum, stony coral cover, and macroalgae

Broward_County_2_fish <- Broward_County_2$sum/max(Broward_County_2$sum)
Broward_County_2_biomass <- data.frame(Broward_County_2_fish)

Broward_County_2_biomass <- 100*Broward_County_2_biomass


Broward_County_2_Stony <- Broward_County_2$Stony_coral/max(Broward_County_2$Stony_coral)
Broward_County_2_coral <- data.frame(Broward_County_2_Stony)

Broward_County_2_stony_coral <- 100*Broward_County_2_coral

Broward_County_2_macro <- Broward_County_2$Macroalgae/max(Broward_County_2$Macroalgae)
Broward_County_2_algae <- data.frame(Broward_County_2_macro)


Broward_County_2_macroalgae <- (100*Broward_County_2_algae)


Broward_County_2_plot <- cbind(Broward_County_2_macroalgae,Broward_County_2_biomass,Broward_County_2_stony_coral)

Broward_County_2_plot$Year <- c("2013","2014","2015","2016")

colnames(Broward_County_2_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Broward_County_2_plot <- Broward_County_2_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Broward_County_2_plot,"Broward_County_2.csv")


### import as csv (change category and value to the two column names)

Broward_County_2_bar <- read.delim("Broward_County_2.csv", sep=",")



Broward_County_2_bar_graph <- melt(Broward_County_2_bar, id.vars = "Year")


### plot
ggplot(Broward_County_2_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Broward County 2")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Broward_County_2_bar_graph$Year), max(Broward_County_2_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Broward_County_2.png", width = 8, height = 4)





Broward_County_3 <- filter(RVC_CREMP, sitename == "Broward County 3")

## Make percentages of sum, stony coral cover, and macroalgae

Broward_County_3_fish <- Broward_County_3$sum/max(Broward_County_3$sum)
Broward_County_3_biomass <- data.frame(Broward_County_3_fish)

Broward_County_3_biomass <- 100*Broward_County_3_biomass


Broward_County_3_Stony <- Broward_County_3$Stony_coral/max(Broward_County_3$Stony_coral)
Broward_County_3_coral <- data.frame(Broward_County_3_Stony)

Broward_County_3_stony_coral <- 100*Broward_County_3_coral

Broward_County_3_macro <- Broward_County_3$Macroalgae/max(Broward_County_3$Macroalgae)
Broward_County_3_algae <- data.frame(Broward_County_3_macro)


Broward_County_3_macroalgae <- (100*Broward_County_3_algae)


Broward_County_3_plot <- cbind(Broward_County_3_macroalgae,Broward_County_3_biomass,Broward_County_3_stony_coral)

Broward_County_3_plot$Year <- c("2013","2014","2015","2016")

colnames(Broward_County_3_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Broward_County_3_plot <- Broward_County_3_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Broward_County_3_plot,"Broward_County_3.csv")


### import as csv (change category and value to the two column names)

Broward_County_3_bar <- read.delim("Broward_County_3.csv", sep=",")



Broward_County_3_bar_graph <- melt(Broward_County_3_bar, id.vars = "Year")


### plot
ggplot(Broward_County_3_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Broward County 3")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Broward_County_3_bar_graph$Year), max(Broward_County_3_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Broward_County_3.png", width = 8, height = 4)




Broward_County_A <- filter(RVC_CREMP, sitename == "Broward County A")

## Make percentages of sum, stony coral cover, and macroalgae

Broward_County_A_fish <- Broward_County_A$sum/max(Broward_County_A$sum)
Broward_County_A_biomass <- data.frame(Broward_County_A_fish)

Broward_County_A_biomass <- 100*Broward_County_A_biomass


Broward_County_A_Stony <- Broward_County_A$Stony_coral/max(Broward_County_A$Stony_coral)
Broward_County_A_coral <- data.frame(Broward_County_A_Stony)

Broward_County_A_stony_coral <- 100*Broward_County_A_coral

Broward_County_A_macro <- Broward_County_A$Macroalgae/max(Broward_County_A$Macroalgae)
Broward_County_A_algae <- data.frame(Broward_County_A_macro)


Broward_County_A_macroalgae <- (100*Broward_County_A_algae)


Broward_County_A_plot <- cbind(Broward_County_A_macroalgae,Broward_County_A_biomass,Broward_County_A_stony_coral)

Broward_County_A_plot$Year <- c("2013","2014","2015","2016")

colnames(Broward_County_A_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Broward_County_A_plot <- Broward_County_A_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Broward_County_A_plot,"Broward_County_A.csv")


### import as csv (change category and value to the two column names)

Broward_County_A_bar <- read.delim("Broward_County_A.csv", sep=",")



Broward_County_A_bar_graph <- melt(Broward_County_A_bar, id.vars = "Year")


### plot
ggplot(Broward_County_A_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Broward County A")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Broward_County_A_bar_graph$Year), max(Broward_County_A_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Broward_County_A.png", width = 8, height = 4)





Dade_County_1 <- filter(RVC_CREMP, sitename == "Dade County 1")

## Make percentages of sum, stony coral cover, and macroalgae

Dade_County_1_fish <- Dade_County_1$sum/max(Dade_County_1$sum)
Dade_County_1_biomass <- data.frame(Dade_County_1_fish)

Dade_County_1_biomass <- 100*Dade_County_1_biomass


Dade_County_1_Stony <- Dade_County_1$Stony_coral/max(Dade_County_1$Stony_coral)
Dade_County_1_coral <- data.frame(Dade_County_1_Stony)

Dade_County_1_stony_coral <- 100*Dade_County_1_coral

Dade_County_1_macro <- Dade_County_1$Macroalgae/max(Dade_County_1$Macroalgae)
Dade_County_1_algae <- data.frame(Dade_County_1_macro)


Dade_County_1_macroalgae <- (100*Dade_County_1_algae)


Dade_County_1_plot <- cbind(Dade_County_1_macroalgae,Dade_County_1_biomass,Dade_County_1_stony_coral)

Dade_County_1_plot$Year <- c("2013","2014","2015","2016")

colnames(Dade_County_1_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Dade_County_1_plot <- Dade_County_1_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Dade_County_1_plot,"Dade_County_1.csv")


### import as csv (change category and value to the two column names)

Dade_County_1_bar <- read.delim("Dade_County_1.csv", sep=",")



Dade_County_1_bar_graph <- melt(Dade_County_1_bar, id.vars = "Year")


### plot
ggplot(Dade_County_1_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Dade County 1")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Dade_County_1_bar_graph$Year), max(Dade_County_1_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Dade_County_1.png", width = 8, height = 4)



Dade_County_2 <- filter(RVC_CREMP, sitename == "Dade County 2")

## Make percentages of sum, stony coral cover, and macroalgae

Dade_County_2_fish <- Dade_County_2$sum/max(Dade_County_2$sum)
Dade_County_2_biomass <- data.frame(Dade_County_2_fish)

Dade_County_2_biomass <- 100*Dade_County_2_biomass


Dade_County_2_Stony <- Dade_County_2$Stony_coral/max(Dade_County_2$Stony_coral)
Dade_County_2_coral <- data.frame(Dade_County_2_Stony)

Dade_County_2_stony_coral <- 100*Dade_County_2_coral

Dade_County_2_macro <- Dade_County_2$Macroalgae/max(Dade_County_2$Macroalgae)
Dade_County_2_algae <- data.frame(Dade_County_2_macro)


Dade_County_2_macroalgae <- (100*Dade_County_2_algae)


Dade_County_2_plot <- cbind(Dade_County_2_macroalgae,Dade_County_2_biomass,Dade_County_2_stony_coral)

Dade_County_2_plot$Year <- c("2013","2014","2015","2016")

colnames(Dade_County_2_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Dade_County_2_plot <- Dade_County_2_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Dade_County_2_plot,"Dade_County_2.csv")


### import as csv (change category and value to the two column names)

Dade_County_2_bar <- read.delim("Dade_County_2.csv", sep=",")



Dade_County_2_bar_graph <- melt(Dade_County_2_bar, id.vars = "Year")


### plot
ggplot(Dade_County_2_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Dade County 2")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Dade_County_2_bar_graph$Year), max(Dade_County_2_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Dade_County_2.png", width = 8, height = 4)






Dade_County_3 <- filter(RVC_CREMP, sitename == "Dade County 3")

## Make percentages of sum, stony coral cover, and macroalgae

Dade_County_3_fish <- Dade_County_3$sum/max(Dade_County_3$sum)
Dade_County_3_biomass <- data.frame(Dade_County_3_fish)

Dade_County_3_biomass <- 100*Dade_County_3_biomass


Dade_County_3_Stony <- Dade_County_3$Stony_coral/max(Dade_County_3$Stony_coral)
Dade_County_3_coral <- data.frame(Dade_County_3_Stony)

Dade_County_3_stony_coral <- 100*Dade_County_3_coral

Dade_County_3_macro <- Dade_County_3$Macroalgae/max(Dade_County_3$Macroalgae)
Dade_County_3_algae <- data.frame(Dade_County_3_macro)


Dade_County_3_macroalgae <- (100*Dade_County_3_algae)


Dade_County_3_plot <- cbind(Dade_County_3_macroalgae,Dade_County_3_biomass,Dade_County_3_stony_coral)

Dade_County_3_plot$Year <- c("2013","2014","2015","2016")

colnames(Dade_County_3_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Dade_County_3_plot <- Dade_County_3_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Dade_County_3_plot,"Dade_County_3.csv")


### import as csv (change category and value to the two column names)

Dade_County_3_bar <- read.delim("Dade_County_3.csv", sep=",")



Dade_County_3_bar_graph <- melt(Dade_County_3_bar, id.vars = "Year")


### plot
ggplot(Dade_County_3_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Dade County 3")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Dade_County_3_bar_graph$Year), max(Dade_County_3_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Dade_County_3.png", width = 8, height = 4)





Martin_County_1 <- filter(RVC_CREMP, sitename == "Martin County 1")

## Make percentages of sum, stony coral cover, and macroalgae

Martin_County_1_fish <- Martin_County_1$sum/max(Martin_County_1$sum)
Martin_County_1_biomass <- data.frame(Martin_County_1_fish)

Martin_County_1_biomass <- 100*Martin_County_1_biomass


Martin_County_1_Stony <- Martin_County_1$Stony_coral/max(Martin_County_1$Stony_coral)
Martin_County_1_coral <- data.frame(Martin_County_1_Stony)

Martin_County_1_stony_coral <- 100*Martin_County_1_coral

Martin_County_1_macro <- Martin_County_1$Macroalgae/max(Martin_County_1$Macroalgae)
Martin_County_1_algae <- data.frame(Martin_County_1_macro)


Martin_County_1_macroalgae <- (100*Martin_County_1_algae)


Martin_County_1_plot <- cbind(Martin_County_1_macroalgae,Martin_County_1_biomass,Martin_County_1_stony_coral)

Martin_County_1_plot$Year <- c("2014","2015","2016")

colnames(Martin_County_1_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Martin_County_1_plot <- Martin_County_1_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Martin_County_1_plot,"Martin_County_1.csv")


### import as csv (change category and value to the two column names)

Martin_County_1_bar <- read.delim("Martin_County_1.csv", sep=",")



Martin_County_1_bar_graph <- melt(Martin_County_1_bar, id.vars = "Year")


### plot
ggplot(Martin_County_1_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Martin County 1")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Martin_County_1_bar_graph$Year), max(Martin_County_1_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Martin_County_1.png", width = 8, height = 4)



Martin_County_2 <- filter(RVC_CREMP, sitename == "Martin County 2")

## Make percentages of sum, stony coral cover, and macroalgae

Martin_County_2_fish <- Martin_County_2$sum/max(Martin_County_2$sum)
Martin_County_2_biomass <- data.frame(Martin_County_2_fish)

Martin_County_2_biomass <- 100*Martin_County_2_biomass


Martin_County_2_Stony <- Martin_County_2$Stony_coral/max(Martin_County_2$Stony_coral)
Martin_County_2_coral <- data.frame(Martin_County_2_Stony)

Martin_County_2_stony_coral <- 100*Martin_County_2_coral

Martin_County_2_macro <- Martin_County_2$Macroalgae/max(Martin_County_2$Macroalgae)
Martin_County_2_algae <- data.frame(Martin_County_2_macro)


Martin_County_2_macroalgae <- (100*Martin_County_2_algae)


Martin_County_2_plot <- cbind(Martin_County_2_macroalgae,Martin_County_2_biomass,Martin_County_2_stony_coral)

Martin_County_2_plot$Year <- c("2014","2015","2016")

colnames(Martin_County_2_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Martin_County_2_plot <- Martin_County_2_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Martin_County_2_plot,"Martin_County_2.csv")


### import as csv (change category and value to the two column names)

Martin_County_2_bar <- read.delim("Martin_County_2.csv", sep=",")



Martin_County_2_bar_graph <- melt(Martin_County_2_bar, id.vars = "Year")


### plot
ggplot(Martin_County_2_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Martin County 2")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Martin_County_2_bar_graph$Year), max(Martin_County_2_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Martin_County_2.png", width = 8, height = 4)



Palm_Beach_1 <- filter(RVC_CREMP, sitename == "Palm Beach 1")

## Make percentages of sum, stony coral cover, and macroalgae

Palm_Beach_1_fish <- Palm_Beach_1$sum/max(Palm_Beach_1$sum)
Palm_Beach_1_biomass <- data.frame(Palm_Beach_1_fish)

Palm_Beach_1_biomass <- 100*Palm_Beach_1_biomass


Palm_Beach_1_Stony <- Palm_Beach_1$Stony_coral/max(Palm_Beach_1$Stony_coral)
Palm_Beach_1_coral <- data.frame(Palm_Beach_1_Stony)

Palm_Beach_1_stony_coral <- 100*Palm_Beach_1_coral

Palm_Beach_1_macro <- Palm_Beach_1$Macroalgae/max(Palm_Beach_1$Macroalgae)
Palm_Beach_1_algae <- data.frame(Palm_Beach_1_macro)


Palm_Beach_1_macroalgae <- (100*Palm_Beach_1_algae)


Palm_Beach_1_plot <- cbind(Palm_Beach_1_macroalgae,Palm_Beach_1_biomass,Palm_Beach_1_stony_coral)

Palm_Beach_1_plot$Year <- c("2013","2014","2015","2016")

colnames(Palm_Beach_1_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Palm_Beach_1_plot <- Palm_Beach_1_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Palm_Beach_1_plot,"Palm_Beach_1.csv")


### import as csv (change category and value to the two column names)

Palm_Beach_1_bar <- read.delim("Palm_Beach_1.csv", sep=",")



Palm_Beach_1_bar_graph <- melt(Palm_Beach_1_bar, id.vars = "Year")


### plot
ggplot(Palm_Beach_1_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Palm Beach 1")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Palm_Beach_1_bar_graph$Year), max(Palm_Beach_1_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Palm_Beach_1.png", width = 8, height = 4)



Palm_Beach_2 <- filter(RVC_CREMP, sitename == "Palm Beach 2")

## Make percentages of sum, stony coral cover, and macroalgae

Palm_Beach_2_fish <- Palm_Beach_2$sum/max(Palm_Beach_2$sum)
Palm_Beach_2_biomass <- data.frame(Palm_Beach_2_fish)

Palm_Beach_2_biomass <- 100*Palm_Beach_2_biomass


Palm_Beach_2_Stony <- Palm_Beach_2$Stony_coral/max(Palm_Beach_2$Stony_coral)
Palm_Beach_2_coral <- data.frame(Palm_Beach_2_Stony)

Palm_Beach_2_stony_coral <- 100*Palm_Beach_2_coral

Palm_Beach_2_macro <- Palm_Beach_2$Macroalgae/max(Palm_Beach_2$Macroalgae)
Palm_Beach_2_algae <- data.frame(Palm_Beach_2_macro)


Palm_Beach_2_macroalgae <- (100*Palm_Beach_2_algae)


Palm_Beach_2_plot <- cbind(Palm_Beach_2_macroalgae,Palm_Beach_2_biomass,Palm_Beach_2_stony_coral)

Palm_Beach_2_plot$Year <- c("2013","2014","2015","2016")

colnames(Palm_Beach_2_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Palm_Beach_2_plot <- Palm_Beach_2_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Palm_Beach_2_plot,"Palm_Beach_2.csv")


### import as csv (change category and value to the two column names)

Palm_Beach_2_bar <- read.delim("Palm_Beach_2.csv", sep=",")



Palm_Beach_2_bar_graph <- melt(Palm_Beach_2_bar, id.vars = "Year")


### plot
ggplot(Palm_Beach_2_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Palm Beach 2")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Palm_Beach_2_bar_graph$Year), max(Palm_Beach_2_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Palm_Beach_2.png", width = 8, height = 4)






Palm_Beach_3 <- filter(RVC_CREMP, sitename == "Palm Beach 3")

## Make percentages of sum, stony coral cover, and macroalgae

Palm_Beach_3_fish <- Palm_Beach_3$sum/max(Palm_Beach_3$sum)
Palm_Beach_3_biomass <- data.frame(Palm_Beach_3_fish)

Palm_Beach_3_biomass <- 100*Palm_Beach_3_biomass


Palm_Beach_3_Stony <- Palm_Beach_3$Stony_coral/max(Palm_Beach_3$Stony_coral)
Palm_Beach_3_coral <- data.frame(Palm_Beach_3_Stony)

Palm_Beach_3_stony_coral <- 100*Palm_Beach_3_coral

Palm_Beach_3_macro <- Palm_Beach_3$Macroalgae/max(Palm_Beach_3$Macroalgae)
Palm_Beach_3_algae <- data.frame(Palm_Beach_3_macro)


Palm_Beach_3_macroalgae <- (100*Palm_Beach_3_algae)


Palm_Beach_3_plot <- cbind(Palm_Beach_3_macroalgae,Palm_Beach_3_biomass,Palm_Beach_3_stony_coral)

Palm_Beach_3_plot$Year <- c("2013","2014","2015","2016")

colnames(Palm_Beach_3_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Palm_Beach_3_plot <- Palm_Beach_3_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Palm_Beach_3_plot,"Palm_Beach_3.csv")


### import as csv (change category and value to the two column names)

Palm_Beach_3_bar <- read.delim("Palm_Beach_3.csv", sep=",")



Palm_Beach_3_bar_graph <- melt(Palm_Beach_3_bar, id.vars = "Year")


### plot
ggplot(Palm_Beach_3_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Palm Beach 3")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Palm_Beach_3_bar_graph$Year), max(Palm_Beach_3_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Palm_Beach_3.png", width = 8, height = 4)





Palm_Beach_4 <- filter(RVC_CREMP, sitename == "Palm Beach 4")

## Make percentages of sum, stony coral cover, and macroalgae

Palm_Beach_4_fish <- Palm_Beach_4$sum/max(Palm_Beach_4$sum)
Palm_Beach_4_biomass <- data.frame(Palm_Beach_4_fish)

Palm_Beach_4_biomass <- 100*Palm_Beach_4_biomass


Palm_Beach_4_Stony <- Palm_Beach_4$Stony_coral/max(Palm_Beach_4$Stony_coral)
Palm_Beach_4_coral <- data.frame(Palm_Beach_4_Stony)

Palm_Beach_4_stony_coral <- 100*Palm_Beach_4_coral

Palm_Beach_4_macro <- Palm_Beach_4$Macroalgae/max(Palm_Beach_4$Macroalgae)
Palm_Beach_4_algae <- data.frame(Palm_Beach_4_macro)


Palm_Beach_4_macroalgae <- (100*Palm_Beach_4_algae)


Palm_Beach_4_plot <- cbind(Palm_Beach_4_macroalgae,Palm_Beach_4_biomass,Palm_Beach_4_stony_coral)

Palm_Beach_4_plot$Year <- c("2014","2015","2016")

colnames(Palm_Beach_4_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Palm_Beach_4_plot <- Palm_Beach_4_plot %>%
  mutate_if(is.numeric,round,digits = 0)


export(Palm_Beach_4_plot,"Palm_Beach_4.csv")


### import as csv (change category and value to the two column names)

Palm_Beach_4_bar <- read.delim("Palm_Beach_4.csv", sep=",")



Palm_Beach_4_bar_graph <- melt(Palm_Beach_4_bar, id.vars = "Year")


### plot
ggplot(Palm_Beach_4_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Palm Beach 4")+
  geom_line(aes(color = variable), size = 2)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Palm_Beach_4_bar_graph$Year), max(Palm_Beach_4_bar_graph$Year), by = 2),1))+
  scale_color_manual(values=c("forestgreen", "dodgerblue", "indianred1"))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Percentage %")

ggsave ("plots/Palm_Beach_4.png", width = 8, height = 4)
