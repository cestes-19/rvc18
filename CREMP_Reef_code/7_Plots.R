

### Donut plot of RVC and CREMP Data 

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

### All data
RVC_CREMP <- read_csv("CREMP_RVC_REEF.csv")








### Data per reef 

Alligator_deep <- filter(RVC_CREMP, sitename == "Alligator Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Alligator_deep_fish <- Alligator_deep$sum/max(Alligator_deep$sum)
Alligator_deep_biomass <- data.frame(Alligator_deep_fish)

Alligator_deep_biomass <- 100*Alligator_deep_biomass


Alligator_deep_Stony <- Alligator_deep$Stony_coral/max(Alligator_deep$Stony_coral)
Alligator_deep_coral <- data.frame(Alligator_deep_Stony)

Alligator_deep_stony_coral <- 100*Alligator_deep_coral

Alligator_deep_macro <- Alligator_deep$Macroalgae/max(Alligator_deep$Macroalgae)
Alligator_deep_algae <- data.frame(Alligator_deep_macro)


Alligator_deep_macroalgae <- (100*Alligator_deep_algae)


Alligator_deep_plot <- cbind(Alligator_deep_macroalgae,Alligator_deep_biomass,Alligator_deep_stony_coral)

Alligator_deep_plot$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")

### Filter per year

Alligator_deep_1999 <- filter(Alligator_deep_plot, Year == 1999)
Alligator_deep_1999$Year <- NULL


### Donut Plot

## manipulate data

colnames(Alligator_deep_1999) <- c("Macroalgae","Fish Biomass","Stony Coral")
Alligator_deep_1999_t <- t(Alligator_deep_1999)

Alligator_deep_1999_donut <- data.frame(Alligator_deep_1999_t)
colnames(Alligator_deep_1999_donut) <- c("Value")
Alligator_deep_1999_donut <- Alligator_deep_1999_donut %>%
  rownames_to_column(var = "Category")


export(Alligator_deep_1999_donut,"Alligator_deep_1999.csv")


### import as csv (change category and value to the two column names)

Alligator_deep_1999_donut_plot <- read.table("Alligator_deep_1999.csv", header=TRUE, sep=",")


Alligator_deep_1999_donut_plot_rounded <- Alligator_deep_1999_donut_plot %>%
  mutate_if(is.numeric,round,digits = 0)
Alligator_deep_1999_donut_plot_rounded


# plot

## This allows the columns to be different colors and the legend variables

Legend = c("Macroalgae","Fish Biomass","Stony Coral")
Alligator_deep_1999_donut_plot_test <- cbind(Alligator_deep_1999_donut_plot_rounded,Legend)


Alligator_deep_1999_donut_plot_test %>%
  filter(!is.na(Value)) %>%
  arrange(Value) %>%
  tail(6) %>%
  mutate(Category=factor(Category, Category)) %>%
  ggplot( aes(x=Category, y=Value, fill = Legend) )+ ggtitle("Coral Health Index", subtitle = "Alligator Deep 1999") +
  geom_bar(show.legend = TRUE, stat="identity") +
  scale_fill_manual("Legend", values = c("Macroalgae"="forestgreen","Fish Biomass"="dodgerblue","Stony Coral"="indianred1"))+
  geom_text(hjust = 1, size = 5, aes( y = 0, label = paste(Value,"%"))) +
  theme_ipsum() +
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    legend.position="bottom",
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"),
    axis.text = element_blank()
  ) +
  xlab("") +
  ylab("") +
  coord_polar(theta = "y") +
  ylim(0,100) 

ggsave ("plots/Alligator_Deep_1999.png")



### Alligator Deep 2000


Alligator_deep_2000 <- filter(Alligator_deep_plot, Year == 2000)
Alligator_deep_2000$Year <- NULL


### Donut Plot

## manipulate data

colnames(Alligator_deep_2000) <- c("Macroalgae","Fish Biomass","Stony Coral")
Alligator_deep_2000_t <- t(Alligator_deep_2000)

Alligator_deep_2000_donut <- data.frame(Alligator_deep_2000_t)
colnames(Alligator_deep_2000_donut) <- c("Value")
Alligator_deep_2000_donut <- Alligator_deep_2000_donut %>%
  rownames_to_column(var = "Category")


export(Alligator_deep_2000_donut,"Alligator_deep_2000.csv")


### import as csv (change category and value to the two column names)

Alligator_deep_2000_donut_plot <- read.table("Alligator_deep_2000.csv", header=TRUE, sep=",")


Alligator_deep_2000_donut_plot_rounded <- Alligator_deep_2000_donut_plot %>%
  mutate_if(is.numeric,round,digits = 0)
Alligator_deep_2000_donut_plot_rounded


# plot

## This allows the columns to be different colors and the legend variables

Legend = c("Macroalgae","Fish Biomass","Stony Coral")
Alligator_deep_2000_donut_plot_test <- cbind(Alligator_deep_2000_donut_plot_rounded,Legend)


Alligator_deep_2000_donut_plot_test %>%
  filter(!is.na(Value)) %>%
  arrange(Value) %>%
  tail(6) %>%
  mutate(Category=factor(Category, Category)) %>%
  ggplot( aes(x=Category, y=Value, fill = Legend) )+ ggtitle("Coral Health Index", subtitle = "Alligator Deep 1999") +
  geom_bar(show.legend = TRUE, stat="identity") +
  scale_fill_manual("Legend", values = c("Macroalgae"="forestgreen","Fish Biomass"="dodgerblue","Stony Coral"="indianred1"))+
  geom_text(hjust = 1, size = 5, aes( y = 0, label = paste(Value,"%"))) +
  theme_ipsum() +
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    legend.position="bottom",
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"),
    axis.text = element_blank()
  ) +
  xlab("") +
  ylab("") +
  coord_polar(theta = "y") +
  ylim(0,100) 

ggsave ("plots/Alligator_deep_2000.png")



### Alligator Deep 2001 

Alligator_deep_2001 <- filter(Alligator_deep_plot, Year == 2001)
Alligator_deep_2001$Year <- NULL


### Donut Plot

## manipulate data

colnames(Alligator_deep_2001) <- c("Macroalgae","Fish Biomass","Stony Coral")
Alligator_deep_2001_t <- t(Alligator_deep_2001)

Alligator_deep_2001_donut <- data.frame(Alligator_deep_2001_t)
colnames(Alligator_deep_2001_donut) <- c("Value")
Alligator_deep_2001_donut <- Alligator_deep_2001_donut %>%
  rownames_to_column(var = "Category")


export(Alligator_deep_2001_donut,"Alligator_deep_2001.csv")


### import as csv (change category and value to the two column names)

Alligator_deep_2001_donut_plot <- read.table("Alligator_deep_2001.csv", header=TRUE, sep=",")


Alligator_deep_2001_donut_plot_rounded <- Alligator_deep_2001_donut_plot %>%
  mutate_if(is.numeric,round,digits = 0)
Alligator_deep_2001_donut_plot_rounded


# plot

## This allows the columns to be different colors and the legend variables

Legend = c("Macroalgae","Fish Biomass","Stony Coral")
Alligator_deep_2001_donut_plot_test <- cbind(Alligator_deep_2001_donut_plot_rounded,Legend)


Alligator_deep_2001_donut_plot_test %>%
  filter(!is.na(Value)) %>%
  arrange(Value) %>%
  tail(6) %>%
  mutate(Category=factor(Category, Category)) %>%
  ggplot( aes(x=Category, y=Value, fill = Legend) )+ ggtitle("Coral Health Index", subtitle = "Alligator Deep 1999") +
  geom_bar(show.legend = TRUE, stat="identity") +
  scale_fill_manual("Legend", values = c("Macroalgae"="forestgreen","Fish Biomass"="dodgerblue","Stony Coral"="indianred1"))+
  geom_text(hjust = 1, size = 5, aes( y = 0, label = paste(Value,"%"))) +
  theme_ipsum() +
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    legend.position="bottom",
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"),
    axis.text = element_blank()
  ) +
  xlab("") +
  ylab("") +
  coord_polar(theta = "y") +
  ylim(0,100) 

ggsave ("plots/Alligator_deep_2001.png")

