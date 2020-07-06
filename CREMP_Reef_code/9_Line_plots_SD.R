




setwd('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC')


library(ggplot2)
library(knitr)
library(tidyverse)
library(vegan)
library(rio)
library(ggpubr)
library(hrbrthemes)
library(tibble)
library(reshape2)
library(grid)
library(png)
library(Rgb)
library(gridExtra)






CHI_SD <- read.csv("CREMP_RVC_SD.csv")
CHI_SD_Master <- select(CHI_SD,sitename,Year,sum,sd,Coral_Average,Coral_SD,
       Macroalgae_Average,Macroaglae_SD,REGION)



CHI_SD_Master$Fish_plus <- CHI_SD_Master$sum + CHI_SD_Master$sd
CHI_SD_Master$Fish_minus <- CHI_SD_Master$sum - CHI_SD_Master$sd

CHI_SD_Master$Coral_plus <- CHI_SD_Master$Coral_Average + CHI_SD_Master$Coral_SD
CHI_SD_Master$Coral_minus <- CHI_SD_Master$Coral_Average - CHI_SD_Master$Coral_SD

CHI_SD_Master$Macroalgae_plus <- CHI_SD_Master$Macroalgae_Average - CHI_SD_Master$Macroaglae_SD
CHI_SD_Master$Macroalgae_minus <- CHI_SD_Master$Macroalgae_Average + CHI_SD_Master$Macroaglae_SD

CHI_SD_Master$Macroalgae_plus[CHI_SD_Master$Macroalgae_plus < 0] <- 0
CHI_SD_Master$Coral_minus[CHI_SD_Master$Coral_minus < 0] <- 0
CHI_SD_Master[is.na(CHI_SD_Master)] = 0

#export(CHI_SD_Master,"SD_Master.csv")


CHI_SD_Master <- read_csv("SD_Master.csv")

### Individual Reefs plus and minus (Plus first)



Alligator_Deep <- filter(CHI_SD_Master, sitename == "Alligator Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Alligator_Deep_fish_plus <- Alligator_Deep$Fish_plus/max(Alligator_Deep$Fish_plus)
Alligator_Deep_biomass_plus <- data.frame(Alligator_Deep_fish_plus)

Alligator_Deep_biomass_plus <- 100*Alligator_Deep_biomass_plus


Alligator_Deep_Stony_plus <- Alligator_Deep$Coral_plus/max(Alligator_Deep$Coral_plus)
Alligator_Deep_coral_plus <- data.frame(Alligator_Deep_Stony_plus)

Alligator_Deep_stony_coral_plus <- 100*Alligator_Deep_coral_plus

Alligator_Deep_macro_plus <- ((Alligator_Deep$Macroalgae_plus)/max(Alligator_Deep$Macroalgae_plus))
Alligator_Deep_algae_plus <- data.frame(Alligator_Deep_macro_plus)


Alligator_Deep_macroalgae_plus <- 100-(100*Alligator_Deep_algae_plus)


Alligator_Deep_plot_plus <- cbind(Alligator_Deep_macroalgae_plus,Alligator_Deep_biomass_plus,Alligator_Deep_stony_coral_plus)

#Alligator_Deep_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Alligator_Deep_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Alligator_Deep_plot_plus <- Alligator_Deep_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Alligator_Deep_plot_plus$CHI_Average_plus <- rowMeans(subset(Alligator_Deep_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Alligator_Deep_fish_minus <- Alligator_Deep$Fish_minus/max(Alligator_Deep$Fish_minus)
Alligator_Deep_biomass_minus <- data.frame(Alligator_Deep_fish_minus)

Alligator_Deep_biomass_minus <- 100*Alligator_Deep_biomass_minus


Alligator_Deep_Stony_minus <- Alligator_Deep$Coral_minus/max(Alligator_Deep$Coral_minus)
Alligator_Deep_coral_minus <- data.frame(Alligator_Deep_Stony_minus)

Alligator_Deep_stony_coral_minus <- 100*Alligator_Deep_coral_minus

Alligator_Deep_macro_minus <- ((Alligator_Deep$Macroalgae_minus)/max(Alligator_Deep$Macroalgae_minus))
Alligator_Deep_algae_minus <- data.frame(Alligator_Deep_macro_minus)


Alligator_Deep_macroalgae_minus <- 100-(100*Alligator_Deep_algae_minus)


Alligator_Deep_plot_minus <- cbind(Alligator_Deep_macroalgae_minus,Alligator_Deep_biomass_minus,Alligator_Deep_stony_coral_minus)

#Alligator_Deep_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Alligator_Deep_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Alligator_Deep_plot_minus <- Alligator_Deep_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Alligator_Deep_plot_minus$CHI_Average_minus <- rowMeans(subset(Alligator_Deep_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Alligator_Deep_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/MK/Alligator_Deep.csv')

Alligator_Deep_All <- cbind(Alligator_Deep_plot_plus,Alligator_Deep_plot_minus,Alligator_Deep_normal)


export(Alligator_Deep_All,"Line/MK/Alligator_Deep_SD.csv")






Alligator_Deep_bar <- read.delim("Line/MK/Alligator_Deep_SD.csv", sep=",")
Alligator_Deep_barr <- select(Alligator_Deep_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Alligator_Deep_bar_graph <- melt(Alligator_Deep_barr, id.vars = "Year")


### plot
ggplot(Alligator_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Alligator Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Alligator_Deep_bar_graph$Year), max(Alligator_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/MK/plots/Alligator_Deep_SD.png", width = 8, height = 4)








Alligator_Shallow <- filter(CHI_SD_Master, sitename == "Alligator Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Alligator_Shallow_fish_plus <- Alligator_Shallow$Fish_plus/max(Alligator_Shallow$Fish_plus)
Alligator_Shallow_biomass_plus <- data.frame(Alligator_Shallow_fish_plus)

Alligator_Shallow_biomass_plus <- 100*Alligator_Shallow_biomass_plus


Alligator_Shallow_Stony_plus <- Alligator_Shallow$Coral_plus/max(Alligator_Shallow$Coral_plus)
Alligator_Shallow_coral_plus <- data.frame(Alligator_Shallow_Stony_plus)

Alligator_Shallow_stony_coral_plus <- 100*Alligator_Shallow_coral_plus

Alligator_Shallow_macro_plus <- ((Alligator_Shallow$Macroalgae_plus)/max(Alligator_Shallow$Macroalgae_plus))
Alligator_Shallow_algae_plus <- data.frame(Alligator_Shallow_macro_plus)


Alligator_Shallow_macroalgae_plus <- 100-(100*Alligator_Shallow_algae_plus)


Alligator_Shallow_plot_plus <- cbind(Alligator_Shallow_macroalgae_plus,Alligator_Shallow_biomass_plus,Alligator_Shallow_stony_coral_plus)

#Alligator_Shallow_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Alligator_Shallow_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Alligator_Shallow_plot_plus <- Alligator_Shallow_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Alligator_Shallow_plot_plus$CHI_Average_plus <- rowMeans(subset(Alligator_Shallow_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Alligator_Shallow_fish_minus <- Alligator_Shallow$Fish_minus/max(Alligator_Shallow$Fish_minus)
Alligator_Shallow_biomass_minus <- data.frame(Alligator_Shallow_fish_minus)

Alligator_Shallow_biomass_minus <- 100*Alligator_Shallow_biomass_minus


Alligator_Shallow_Stony_minus <- Alligator_Shallow$Coral_minus/max(Alligator_Shallow$Coral_minus)
Alligator_Shallow_coral_minus <- data.frame(Alligator_Shallow_Stony_minus)

Alligator_Shallow_stony_coral_minus <- 100*Alligator_Shallow_coral_minus

Alligator_Shallow_macro_minus <- ((Alligator_Shallow$Macroalgae_minus)/max(Alligator_Shallow$Macroalgae_minus))
Alligator_Shallow_algae_minus <- data.frame(Alligator_Shallow_macro_minus)


Alligator_Shallow_macroalgae_minus <- 100-(100*Alligator_Shallow_algae_minus)


Alligator_Shallow_plot_minus <- cbind(Alligator_Shallow_macroalgae_minus,Alligator_Shallow_biomass_minus,Alligator_Shallow_stony_coral_minus)

#Alligator_Shallow_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Alligator_Shallow_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Alligator_Shallow_plot_minus <- Alligator_Shallow_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Alligator_Shallow_plot_minus$CHI_Average_minus <- rowMeans(subset(Alligator_Shallow_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Alligator_Shallow_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/MK/Alligator_Shallow.csv')

Alligator_Shallow_All <- cbind(Alligator_Shallow_plot_plus,Alligator_Shallow_plot_minus,Alligator_Shallow_normal)


export(Alligator_Shallow_All,"Line/MK/Alligator_Shallow_SD.csv")




Alligator_Shallow_bar <- read.delim("Line/MK/Alligator_Shallow_SD.csv", sep=",")
Alligator_Shallow_barr <- select(Alligator_Shallow_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Alligator_Shallow_bar_graph <- melt(Alligator_Shallow_barr, id.vars = "Year")


### plot
ggplot(Alligator_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Alligator Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Alligator_Shallow_bar_graph$Year), max(Alligator_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/MK/plots/Alligator_Shallow_SD.png", width = 8, height = 4)




Sombrero_Deep <- filter(CHI_SD_Master, sitename == "Sombrero Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Sombrero_Deep_fish_plus <- Sombrero_Deep$Fish_plus/max(Sombrero_Deep$Fish_plus)
Sombrero_Deep_biomass_plus <- data.frame(Sombrero_Deep_fish_plus)

Sombrero_Deep_biomass_plus <- 100*Sombrero_Deep_biomass_plus


Sombrero_Deep_Stony_plus <- Sombrero_Deep$Coral_plus/max(Sombrero_Deep$Coral_plus)
Sombrero_Deep_coral_plus <- data.frame(Sombrero_Deep_Stony_plus)

Sombrero_Deep_stony_coral_plus <- 100*Sombrero_Deep_coral_plus

Sombrero_Deep_macro_plus <- ((Sombrero_Deep$Macroalgae_plus)/max(Sombrero_Deep$Macroalgae_plus))
Sombrero_Deep_algae_plus <- data.frame(Sombrero_Deep_macro_plus)


Sombrero_Deep_macroalgae_plus <- 100-(100*Sombrero_Deep_algae_plus)


Sombrero_Deep_plot_plus <- cbind(Sombrero_Deep_macroalgae_plus,Sombrero_Deep_biomass_plus,Sombrero_Deep_stony_coral_plus)

#Sombrero_Deep_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Sombrero_Deep_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Sombrero_Deep_plot_plus <- Sombrero_Deep_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Sombrero_Deep_plot_plus$CHI_Average_plus <- rowMeans(subset(Sombrero_Deep_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Sombrero_Deep_fish_minus <- Sombrero_Deep$Fish_minus/max(Sombrero_Deep$Fish_minus)
Sombrero_Deep_biomass_minus <- data.frame(Sombrero_Deep_fish_minus)

Sombrero_Deep_biomass_minus <- 100*Sombrero_Deep_biomass_minus


Sombrero_Deep_Stony_minus <- Sombrero_Deep$Coral_minus/max(Sombrero_Deep$Coral_minus)
Sombrero_Deep_coral_minus <- data.frame(Sombrero_Deep_Stony_minus)

Sombrero_Deep_stony_coral_minus <- 100*Sombrero_Deep_coral_minus

Sombrero_Deep_macro_minus <- ((Sombrero_Deep$Macroalgae_minus)/max(Sombrero_Deep$Macroalgae_minus))
Sombrero_Deep_algae_minus <- data.frame(Sombrero_Deep_macro_minus)


Sombrero_Deep_macroalgae_minus <- 100-(100*Sombrero_Deep_algae_minus)


Sombrero_Deep_plot_minus <- cbind(Sombrero_Deep_macroalgae_minus,Sombrero_Deep_biomass_minus,Sombrero_Deep_stony_coral_minus)

#Sombrero_Deep_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Sombrero_Deep_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Sombrero_Deep_plot_minus <- Sombrero_Deep_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Sombrero_Deep_plot_minus$CHI_Average_minus <- rowMeans(subset(Sombrero_Deep_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Sombrero_Deep_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/MK/Sombrero_Deep.csv')

Sombrero_Deep_All <- cbind(Sombrero_Deep_plot_plus,Sombrero_Deep_plot_minus,Sombrero_Deep_normal)


export(Sombrero_Deep_All,"Line/MK/Sombrero_Deep_SD.csv")



Sombrero_Deep_bar <- read.delim("Line/MK/Sombrero_Deep_SD.csv", sep=",")
Sombrero_Deep_barr <- select(Alligator_Deep_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Sombrero_Deep_bar_graph <- melt(Sombrero_Deep_barr, id.vars = "Year")


### plot
ggplot(Sombrero_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Sombrero Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Sombrero_Deep_bar_graph$Year), max(Sombrero_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/MK/plots/Sombrero_Deep_SD.png", width = 8, height = 4)






Sombrero_Shallow <- filter(CHI_SD_Master, sitename == "Sombrero Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Sombrero_Shallow_fish_plus <- Sombrero_Shallow$Fish_plus/max(Sombrero_Shallow$Fish_plus)
Sombrero_Shallow_biomass_plus <- data.frame(Sombrero_Shallow_fish_plus)

Sombrero_Shallow_biomass_plus <- 100*Sombrero_Shallow_biomass_plus


Sombrero_Shallow_Stony_plus <- Sombrero_Shallow$Coral_plus/max(Sombrero_Shallow$Coral_plus)
Sombrero_Shallow_coral_plus <- data.frame(Sombrero_Shallow_Stony_plus)

Sombrero_Shallow_stony_coral_plus <- 100*Sombrero_Shallow_coral_plus

Sombrero_Shallow_macro_plus <- ((Sombrero_Shallow$Macroalgae_plus)/max(Sombrero_Shallow$Macroalgae_plus))
Sombrero_Shallow_algae_plus <- data.frame(Sombrero_Shallow_macro_plus)


Sombrero_Shallow_macroalgae_plus <- 100-(100*Sombrero_Shallow_algae_plus)


Sombrero_Shallow_plot_plus <- cbind(Sombrero_Shallow_macroalgae_plus,Sombrero_Shallow_biomass_plus,Sombrero_Shallow_stony_coral_plus)

#Sombrero_Shallow_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Sombrero_Shallow_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Sombrero_Shallow_plot_plus <- Sombrero_Shallow_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Sombrero_Shallow_plot_plus$CHI_Average_plus <- rowMeans(subset(Sombrero_Shallow_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Sombrero_Shallow_fish_minus <- Sombrero_Shallow$Fish_minus/max(Sombrero_Shallow$Fish_minus)
Sombrero_Shallow_biomass_minus <- data.frame(Sombrero_Shallow_fish_minus)

Sombrero_Shallow_biomass_minus <- 100*Sombrero_Shallow_biomass_minus


Sombrero_Shallow_Stony_minus <- Sombrero_Shallow$Coral_minus/max(Sombrero_Shallow$Coral_minus)
Sombrero_Shallow_coral_minus <- data.frame(Sombrero_Shallow_Stony_minus)

Sombrero_Shallow_stony_coral_minus <- 100*Sombrero_Shallow_coral_minus

Sombrero_Shallow_macro_minus <- ((Sombrero_Shallow$Macroalgae_minus)/max(Sombrero_Shallow$Macroalgae_minus))
Sombrero_Shallow_algae_minus <- data.frame(Sombrero_Shallow_macro_minus)


Sombrero_Shallow_macroalgae_minus <- 100-(100*Sombrero_Shallow_algae_minus)


Sombrero_Shallow_plot_minus <- cbind(Sombrero_Shallow_macroalgae_minus,Sombrero_Shallow_biomass_minus,Sombrero_Shallow_stony_coral_minus)

#Sombrero_Shallow_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Sombrero_Shallow_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Sombrero_Shallow_plot_minus <- Sombrero_Shallow_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Sombrero_Shallow_plot_minus$CHI_Average_minus <- rowMeans(subset(Sombrero_Shallow_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Sombrero_Shallow_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/MK/Sombrero_Shallow.csv')

Sombrero_Shallow_All <- cbind(Sombrero_Shallow_plot_plus,Sombrero_Shallow_plot_minus,Sombrero_Shallow_normal)


export(Sombrero_Shallow_All,"Line/MK/Sombrero_Shallow_SD.csv")


Sombrero_Shallow_bar <- read.delim("Line/MK/Sombrero_Shallow_SD.csv", sep=",")
Sombrero_Shallow_barr <- select(Sombrero_Shallow_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Sombrero_Shallow_bar_graph <- melt(Sombrero_Shallow_barr, id.vars = "Year")


### plot
ggplot(Sombrero_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Sombrero Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Sombrero_Shallow_bar_graph$Year), max(Sombrero_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/MK/plots/Sombrero_Shallow_SD.png", width = 8, height = 4)




Tennessee_Deep <- filter(CHI_SD_Master, sitename == "Tennessee Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Tennessee_Deep_fish_plus <- Tennessee_Deep$Fish_plus/max(Tennessee_Deep$Fish_plus)
Tennessee_Deep_biomass_plus <- data.frame(Tennessee_Deep_fish_plus)

Tennessee_Deep_biomass_plus <- 100*Tennessee_Deep_biomass_plus


Tennessee_Deep_Stony_plus <- Tennessee_Deep$Coral_plus/max(Tennessee_Deep$Coral_plus)
Tennessee_Deep_coral_plus <- data.frame(Tennessee_Deep_Stony_plus)

Tennessee_Deep_stony_coral_plus <- 100*Tennessee_Deep_coral_plus

Tennessee_Deep_macro_plus <- ((Tennessee_Deep$Macroalgae_plus)/max(Tennessee_Deep$Macroalgae_plus))
Tennessee_Deep_algae_plus <- data.frame(Tennessee_Deep_macro_plus)


Tennessee_Deep_macroalgae_plus <- 100-(100*Tennessee_Deep_algae_plus)


Tennessee_Deep_plot_plus <- cbind(Tennessee_Deep_macroalgae_plus,Tennessee_Deep_biomass_plus,Tennessee_Deep_stony_coral_plus)

#Tennessee_Deep_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Tennessee_Deep_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Tennessee_Deep_plot_plus <- Tennessee_Deep_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Tennessee_Deep_plot_plus$CHI_Average_plus <- rowMeans(subset(Tennessee_Deep_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Tennessee_Deep_fish_minus <- Tennessee_Deep$Fish_minus/max(Tennessee_Deep$Fish_minus)
Tennessee_Deep_biomass_minus <- data.frame(Tennessee_Deep_fish_minus)

Tennessee_Deep_biomass_minus <- 100*Tennessee_Deep_biomass_minus


Tennessee_Deep_Stony_minus <- Tennessee_Deep$Coral_minus/max(Tennessee_Deep$Coral_minus)
Tennessee_Deep_coral_minus <- data.frame(Tennessee_Deep_Stony_minus)

Tennessee_Deep_stony_coral_minus <- 100*Tennessee_Deep_coral_minus

Tennessee_Deep_macro_minus <- ((Tennessee_Deep$Macroalgae_minus)/max(Tennessee_Deep$Macroalgae_minus))
Tennessee_Deep_algae_minus <- data.frame(Tennessee_Deep_macro_minus)


Tennessee_Deep_macroalgae_minus <- 100-(100*Tennessee_Deep_algae_minus)


Tennessee_Deep_plot_minus <- cbind(Tennessee_Deep_macroalgae_minus,Tennessee_Deep_biomass_minus,Tennessee_Deep_stony_coral_minus)

#Tennessee_Deep_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Tennessee_Deep_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Tennessee_Deep_plot_minus <- Tennessee_Deep_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Tennessee_Deep_plot_minus$CHI_Average_minus <- rowMeans(subset(Tennessee_Deep_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Tennessee_Deep_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/MK/Tennessee_Deep.csv')

Tennessee_Deep_All <- cbind(Tennessee_Deep_plot_plus,Tennessee_Deep_plot_minus,Tennessee_Deep_normal)


export(Tennessee_Deep_All,"Line/MK/Tennessee_Deep_SD.csv")


Tennessee_Deep_bar <- read.delim("Line/MK/Tennessee_Deep_SD.csv", sep=",")
Tennessee_Deep_barr <- select(Alligator_Deep_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Tennessee_Deep_bar_graph <- melt(Tennessee_Deep_barr, id.vars = "Year")


### plot
ggplot(Tennessee_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Tennessee Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Tennessee_Deep_bar_graph$Year), max(Tennessee_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/MK/plots/Tennessee_Deep_SD.png", width = 8, height = 4)



Tennessee_Shallow <- filter(CHI_SD_Master, sitename == "Tennessee Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Tennessee_Shallow_fish_plus <- Tennessee_Shallow$Fish_plus/max(Tennessee_Shallow$Fish_plus)
Tennessee_Shallow_biomass_plus <- data.frame(Tennessee_Shallow_fish_plus)

Tennessee_Shallow_biomass_plus <- 100*Tennessee_Shallow_biomass_plus


Tennessee_Shallow_Stony_plus <- Tennessee_Shallow$Coral_plus/max(Tennessee_Shallow$Coral_plus)
Tennessee_Shallow_coral_plus <- data.frame(Tennessee_Shallow_Stony_plus)

Tennessee_Shallow_stony_coral_plus <- 100*Tennessee_Shallow_coral_plus

Tennessee_Shallow_macro_plus <- ((Tennessee_Shallow$Macroalgae_plus)/max(Tennessee_Shallow$Macroalgae_plus))
Tennessee_Shallow_algae_plus <- data.frame(Tennessee_Shallow_macro_plus)


Tennessee_Shallow_macroalgae_plus <- 100-(100*Tennessee_Shallow_algae_plus)


Tennessee_Shallow_plot_plus <- cbind(Tennessee_Shallow_macroalgae_plus,Tennessee_Shallow_biomass_plus,Tennessee_Shallow_stony_coral_plus)

#Tennessee_Shallow_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Tennessee_Shallow_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Tennessee_Shallow_plot_plus <- Tennessee_Shallow_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Tennessee_Shallow_plot_plus$CHI_Average_plus <- rowMeans(subset(Tennessee_Shallow_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Tennessee_Shallow_fish_minus <- Tennessee_Shallow$Fish_minus/max(Tennessee_Shallow$Fish_minus)
Tennessee_Shallow_biomass_minus <- data.frame(Tennessee_Shallow_fish_minus)

Tennessee_Shallow_biomass_minus <- 100*Tennessee_Shallow_biomass_minus


Tennessee_Shallow_Stony_minus <- Tennessee_Shallow$Coral_minus/max(Tennessee_Shallow$Coral_minus)
Tennessee_Shallow_coral_minus <- data.frame(Tennessee_Shallow_Stony_minus)

Tennessee_Shallow_stony_coral_minus <- 100*Tennessee_Shallow_coral_minus

Tennessee_Shallow_macro_minus <- ((Tennessee_Shallow$Macroalgae_minus)/max(Tennessee_Shallow$Macroalgae_minus))
Tennessee_Shallow_algae_minus <- data.frame(Tennessee_Shallow_macro_minus)


Tennessee_Shallow_macroalgae_minus <- 100-(100*Tennessee_Shallow_algae_minus)


Tennessee_Shallow_plot_minus <- cbind(Tennessee_Shallow_macroalgae_minus,Tennessee_Shallow_biomass_minus,Tennessee_Shallow_stony_coral_minus)

#Tennessee_Shallow_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Tennessee_Shallow_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Tennessee_Shallow_plot_minus <- Tennessee_Shallow_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Tennessee_Shallow_plot_minus$CHI_Average_minus <- rowMeans(subset(Tennessee_Shallow_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Tennessee_Shallow_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/MK/Tennessee_Shallow.csv')

Tennessee_Shallow_All <- cbind(Tennessee_Shallow_plot_plus,Tennessee_Shallow_plot_minus,Tennessee_Shallow_normal)


export(Tennessee_Shallow_All,"Line/MK/Tennessee_Shallow_SD.csv")


Tennessee_Shallow_bar <- read.delim("Line/MK/Tennessee_Shallow_SD.csv", sep=",")
Tennessee_Shallow_barr <- select(Tennessee_Shallow_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Tennessee_Shallow_bar_graph <- melt(Tennessee_Shallow_barr, id.vars = "Year")


### plot
ggplot(Tennessee_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Tennessee Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Tennessee_Shallow_bar_graph$Year), max(Tennessee_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/MK/plots/Tennessee_Shallow_SD.png", width = 8, height = 4)




West_Turtle_Shoal <- filter(CHI_SD_Master, sitename == "West Turtle Shoal")

## Make percentages of sum, stony coral cover, and macroalgae

West_Turtle_Shoal_fish_plus <- West_Turtle_Shoal$Fish_plus/max(West_Turtle_Shoal$Fish_plus)
West_Turtle_Shoal_biomass_plus <- data.frame(West_Turtle_Shoal_fish_plus)

West_Turtle_Shoal_biomass_plus <- 100*West_Turtle_Shoal_biomass_plus


West_Turtle_Shoal_Stony_plus <- West_Turtle_Shoal$Coral_plus/max(West_Turtle_Shoal$Coral_plus)
West_Turtle_Shoal_coral_plus <- data.frame(West_Turtle_Shoal_Stony_plus)

West_Turtle_Shoal_stony_coral_plus <- 100*West_Turtle_Shoal_coral_plus

West_Turtle_Shoal_macro_plus <- ((West_Turtle_Shoal$Macroalgae_plus)/max(West_Turtle_Shoal$Macroalgae_plus))
West_Turtle_Shoal_algae_plus <- data.frame(West_Turtle_Shoal_macro_plus)


West_Turtle_Shoal_macroalgae_plus <- 100-(100*West_Turtle_Shoal_algae_plus)


West_Turtle_Shoal_plot_plus <- cbind(West_Turtle_Shoal_macroalgae_plus,West_Turtle_Shoal_biomass_plus,West_Turtle_Shoal_stony_coral_plus)

#West_Turtle_Shoal_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(West_Turtle_Shoal_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


West_Turtle_Shoal_plot_plus <- West_Turtle_Shoal_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


West_Turtle_Shoal_plot_plus$CHI_Average_plus <- rowMeans(subset(West_Turtle_Shoal_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

West_Turtle_Shoal_fish_minus <- West_Turtle_Shoal$Fish_minus/max(West_Turtle_Shoal$Fish_minus)
West_Turtle_Shoal_biomass_minus <- data.frame(West_Turtle_Shoal_fish_minus)

West_Turtle_Shoal_biomass_minus <- 100*West_Turtle_Shoal_biomass_minus


West_Turtle_Shoal_Stony_minus <- West_Turtle_Shoal$Coral_minus/max(West_Turtle_Shoal$Coral_minus)
West_Turtle_Shoal_coral_minus <- data.frame(West_Turtle_Shoal_Stony_minus)

West_Turtle_Shoal_stony_coral_minus <- 100*West_Turtle_Shoal_coral_minus

West_Turtle_Shoal_macro_minus <- ((West_Turtle_Shoal$Macroalgae_minus)/max(West_Turtle_Shoal$Macroalgae_minus))
West_Turtle_Shoal_algae_minus <- data.frame(West_Turtle_Shoal_macro_minus)


West_Turtle_Shoal_macroalgae_minus <- 100-(100*West_Turtle_Shoal_algae_minus)


West_Turtle_Shoal_plot_minus <- cbind(West_Turtle_Shoal_macroalgae_minus,West_Turtle_Shoal_biomass_minus,West_Turtle_Shoal_stony_coral_minus)

#West_Turtle_Shoal_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(West_Turtle_Shoal_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


West_Turtle_Shoal_plot_minus <- West_Turtle_Shoal_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


West_Turtle_Shoal_plot_minus$CHI_Average_minus <- rowMeans(subset(West_Turtle_Shoal_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

West_Turtle_Shoal_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/MK/West_Turtle_Shoal.csv')

West_Turtle_Shoal_All <- cbind(West_Turtle_Shoal_plot_plus,West_Turtle_Shoal_plot_minus,West_Turtle_Shoal_normal)


export(West_Turtle_Shoal_All,"Line/MK/West_Turtle_Shoal_SD.csv")


West_Turtle_Shoal_bar <- read.delim("Line/MK/West_Turtle_Shoal_SD.csv", sep=",")
West_Turtle_Shoal_barr <- select(West_Turtle_Shoal_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


West_Turtle_Shoal_bar_graph <- melt(West_Turtle_Shoal_barr, id.vars = "Year")


### plot
ggplot(West_Turtle_Shoal_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "West Turtle Shoal")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(West_Turtle_Shoal_bar_graph$Year), max(West_Turtle_Shoal_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/MK/plots/West_Turtle_Shoal_SD.png", width = 8, height = 4)


setwd('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/MK/plots')


pdf('MK.pdf')
lapply(ll <- list.files(patt='.*[.]png'),function(x){
  img <- as.raster(readPNG(x))
  grid.newpage()
  grid.raster(img, interpolate = FALSE)
  
})
dev.off()

plots <- lapply(ll <- list.files(patt='.*[.]png'),function(x){
  img <- as.raster(readPNG(x))
  rasterGrob(img, interpolate = FALSE)
})

ggsave("MK_combined.pdf", marrangeGrob(grobs=plots, nrow=2, ncol=4))


setwd('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC')




### Lower Keys


Eastern_Sambo_Deep <- filter(CHI_SD_Master, sitename == "Eastern Sambo Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Eastern_Sambo_Deep_fish_plus <- Eastern_Sambo_Deep$Fish_plus/max(Eastern_Sambo_Deep$Fish_plus)
Eastern_Sambo_Deep_biomass_plus <- data.frame(Eastern_Sambo_Deep_fish_plus)

Eastern_Sambo_Deep_biomass_plus <- 100*Eastern_Sambo_Deep_biomass_plus


Eastern_Sambo_Deep_Stony_plus <- Eastern_Sambo_Deep$Coral_plus/max(Eastern_Sambo_Deep$Coral_plus)
Eastern_Sambo_Deep_coral_plus <- data.frame(Eastern_Sambo_Deep_Stony_plus)

Eastern_Sambo_Deep_stony_coral_plus <- 100*Eastern_Sambo_Deep_coral_plus

Eastern_Sambo_Deep_macro_plus <- ((Eastern_Sambo_Deep$Macroalgae_plus)/max(Eastern_Sambo_Deep$Macroalgae_plus))
Eastern_Sambo_Deep_algae_plus <- data.frame(Eastern_Sambo_Deep_macro_plus)


Eastern_Sambo_Deep_macroalgae_plus <- 100-(100*Eastern_Sambo_Deep_algae_plus)


Eastern_Sambo_Deep_plot_plus <- cbind(Eastern_Sambo_Deep_macroalgae_plus,Eastern_Sambo_Deep_biomass_plus,Eastern_Sambo_Deep_stony_coral_plus)

#Eastern_Sambo_Deep_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Eastern_Sambo_Deep_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Eastern_Sambo_Deep_plot_plus <- Eastern_Sambo_Deep_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Eastern_Sambo_Deep_plot_plus$CHI_Average_plus <- rowMeans(subset(Eastern_Sambo_Deep_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Eastern_Sambo_Deep_fish_minus <- Eastern_Sambo_Deep$Fish_minus/max(Eastern_Sambo_Deep$Fish_minus)
Eastern_Sambo_Deep_biomass_minus <- data.frame(Eastern_Sambo_Deep_fish_minus)

Eastern_Sambo_Deep_biomass_minus <- 100*Eastern_Sambo_Deep_biomass_minus


Eastern_Sambo_Deep_Stony_minus <- Eastern_Sambo_Deep$Coral_minus/max(Eastern_Sambo_Deep$Coral_minus)
Eastern_Sambo_Deep_coral_minus <- data.frame(Eastern_Sambo_Deep_Stony_minus)

Eastern_Sambo_Deep_stony_coral_minus <- 100*Eastern_Sambo_Deep_coral_minus

Eastern_Sambo_Deep_macro_minus <- ((Eastern_Sambo_Deep$Macroalgae_minus)/max(Eastern_Sambo_Deep$Macroalgae_minus))
Eastern_Sambo_Deep_algae_minus <- data.frame(Eastern_Sambo_Deep_macro_minus)


Eastern_Sambo_Deep_macroalgae_minus <- 100-(100*Eastern_Sambo_Deep_algae_minus)


Eastern_Sambo_Deep_plot_minus <- cbind(Eastern_Sambo_Deep_macroalgae_minus,Eastern_Sambo_Deep_biomass_minus,Eastern_Sambo_Deep_stony_coral_minus)

#Eastern_Sambo_Deep_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Eastern_Sambo_Deep_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Eastern_Sambo_Deep_plot_minus <- Eastern_Sambo_Deep_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Eastern_Sambo_Deep_plot_minus$CHI_Average_minus <- rowMeans(subset(Eastern_Sambo_Deep_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Eastern_Sambo_Deep_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/LK/Eastern_Sambo_Deep.csv')

Eastern_Sambo_Deep_All <- cbind(Eastern_Sambo_Deep_plot_plus,Eastern_Sambo_Deep_plot_minus,Eastern_Sambo_Deep_normal)


export(Eastern_Sambo_Deep_All,"Line/LK/Eastern_Sambo_Deep_SD.csv")


Eastern_Sambo_Deep_bar <- read.delim("Line/LK/Eastern_Sambo_Deep_SD.csv", sep=",")
Eastern_Sambo_Deep_barr <- select(Eastern_Sambo_Deep_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Eastern_Sambo_Deep_bar_graph <- melt(Eastern_Sambo_Deep_barr, id.vars = "Year")


### plot
ggplot(Eastern_Sambo_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Eastern Sambo Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Eastern_Sambo_Deep_bar_graph$Year), max(Eastern_Sambo_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/LK/plots/Eastern_Sambo_Deep_SD.png", width = 8, height = 4)






Eastern_Sambo_Shallow <- filter(CHI_SD_Master, sitename == "Eastern Sambo Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Eastern_Sambo_Shallow_fish_plus <- Eastern_Sambo_Shallow$Fish_plus/max(Eastern_Sambo_Shallow$Fish_plus)
Eastern_Sambo_Shallow_biomass_plus <- data.frame(Eastern_Sambo_Shallow_fish_plus)

Eastern_Sambo_Shallow_biomass_plus <- 100*Eastern_Sambo_Shallow_biomass_plus


Eastern_Sambo_Shallow_Stony_plus <- Eastern_Sambo_Shallow$Coral_plus/max(Eastern_Sambo_Shallow$Coral_plus)
Eastern_Sambo_Shallow_coral_plus <- data.frame(Eastern_Sambo_Shallow_Stony_plus)

Eastern_Sambo_Shallow_stony_coral_plus <- 100*Eastern_Sambo_Shallow_coral_plus

Eastern_Sambo_Shallow_macro_plus <- ((Eastern_Sambo_Shallow$Macroalgae_plus)/max(Eastern_Sambo_Shallow$Macroalgae_plus))
Eastern_Sambo_Shallow_algae_plus <- data.frame(Eastern_Sambo_Shallow_macro_plus)


Eastern_Sambo_Shallow_macroalgae_plus <- 100-(100*Eastern_Sambo_Shallow_algae_plus)


Eastern_Sambo_Shallow_plot_plus <- cbind(Eastern_Sambo_Shallow_macroalgae_plus,Eastern_Sambo_Shallow_biomass_plus,Eastern_Sambo_Shallow_stony_coral_plus)

#Eastern_Sambo_Shallow_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Eastern_Sambo_Shallow_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Eastern_Sambo_Shallow_plot_plus <- Eastern_Sambo_Shallow_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Eastern_Sambo_Shallow_plot_plus$CHI_Average_plus <- rowMeans(subset(Eastern_Sambo_Shallow_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Eastern_Sambo_Shallow_fish_minus <- Eastern_Sambo_Shallow$Fish_minus/max(Eastern_Sambo_Shallow$Fish_minus)
Eastern_Sambo_Shallow_biomass_minus <- data.frame(Eastern_Sambo_Shallow_fish_minus)

Eastern_Sambo_Shallow_biomass_minus <- 100*Eastern_Sambo_Shallow_biomass_minus


Eastern_Sambo_Shallow_Stony_minus <- Eastern_Sambo_Shallow$Coral_minus/max(Eastern_Sambo_Shallow$Coral_minus)
Eastern_Sambo_Shallow_coral_minus <- data.frame(Eastern_Sambo_Shallow_Stony_minus)

Eastern_Sambo_Shallow_stony_coral_minus <- 100*Eastern_Sambo_Shallow_coral_minus

Eastern_Sambo_Shallow_macro_minus <- ((Eastern_Sambo_Shallow$Macroalgae_minus)/max(Eastern_Sambo_Shallow$Macroalgae_minus))
Eastern_Sambo_Shallow_algae_minus <- data.frame(Eastern_Sambo_Shallow_macro_minus)


Eastern_Sambo_Shallow_macroalgae_minus <- 100-(100*Eastern_Sambo_Shallow_algae_minus)


Eastern_Sambo_Shallow_plot_minus <- cbind(Eastern_Sambo_Shallow_macroalgae_minus,Eastern_Sambo_Shallow_biomass_minus,Eastern_Sambo_Shallow_stony_coral_minus)

#Eastern_Sambo_Shallow_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Eastern_Sambo_Shallow_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Eastern_Sambo_Shallow_plot_minus <- Eastern_Sambo_Shallow_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Eastern_Sambo_Shallow_plot_minus$CHI_Average_minus <- rowMeans(subset(Eastern_Sambo_Shallow_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Eastern_Sambo_Shallow_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/LK/Eastern_Sambo_Shallow.csv')

Eastern_Sambo_Shallow_All <- cbind(Eastern_Sambo_Shallow_plot_plus,Eastern_Sambo_Shallow_plot_minus,Eastern_Sambo_Shallow_normal)


export(Eastern_Sambo_Shallow_All,"Line/LK/Eastern_Sambo_Shallow_SD.csv")
Eastern_Sambo_Shallow_bar <- read.delim("Line/LK/Eastern_Sambo_Shallow_SD.csv", sep=",")
Eastern_Sambo_Shallow_barr <- select(Eastern_Sambo_Shallow_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Eastern_Sambo_Shallow_bar_graph <- melt(Eastern_Sambo_Shallow_barr, id.vars = "Year")


### plot
ggplot(Eastern_Sambo_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Eastern Sambo Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Eastern_Sambo_Shallow_bar_graph$Year), max(Eastern_Sambo_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/LK/plots/Eastern_Sambo_Shallow_SD.png", width = 8, height = 4)






Looe_Key_Deep <- filter(CHI_SD_Master, sitename == "Looe Key Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Looe_Key_Deep_fish_plus <- Looe_Key_Deep$Fish_plus/max(Looe_Key_Deep$Fish_plus)
Looe_Key_Deep_biomass_plus <- data.frame(Looe_Key_Deep_fish_plus)

Looe_Key_Deep_biomass_plus <- 100*Looe_Key_Deep_biomass_plus


Looe_Key_Deep_Stony_plus <- Looe_Key_Deep$Coral_plus/max(Looe_Key_Deep$Coral_plus)
Looe_Key_Deep_coral_plus <- data.frame(Looe_Key_Deep_Stony_plus)

Looe_Key_Deep_stony_coral_plus <- 100*Looe_Key_Deep_coral_plus

Looe_Key_Deep_macro_plus <- ((Looe_Key_Deep$Macroalgae_plus)/max(Looe_Key_Deep$Macroalgae_plus))
Looe_Key_Deep_algae_plus <- data.frame(Looe_Key_Deep_macro_plus)


Looe_Key_Deep_macroalgae_plus <- 100-(100*Looe_Key_Deep_algae_plus)


Looe_Key_Deep_plot_plus <- cbind(Looe_Key_Deep_macroalgae_plus,Looe_Key_Deep_biomass_plus,Looe_Key_Deep_stony_coral_plus)

#Looe_Key_Deep_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Looe_Key_Deep_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Looe_Key_Deep_plot_plus <- Looe_Key_Deep_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Looe_Key_Deep_plot_plus$CHI_Average_plus <- rowMeans(subset(Looe_Key_Deep_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Looe_Key_Deep_fish_minus <- Looe_Key_Deep$Fish_minus/max(Looe_Key_Deep$Fish_minus)
Looe_Key_Deep_biomass_minus <- data.frame(Looe_Key_Deep_fish_minus)

Looe_Key_Deep_biomass_minus <- 100*Looe_Key_Deep_biomass_minus


Looe_Key_Deep_Stony_minus <- Looe_Key_Deep$Coral_minus/max(Looe_Key_Deep$Coral_minus)
Looe_Key_Deep_coral_minus <- data.frame(Looe_Key_Deep_Stony_minus)

Looe_Key_Deep_stony_coral_minus <- 100*Looe_Key_Deep_coral_minus

Looe_Key_Deep_macro_minus <- ((Looe_Key_Deep$Macroalgae_minus)/max(Looe_Key_Deep$Macroalgae_minus))
Looe_Key_Deep_algae_minus <- data.frame(Looe_Key_Deep_macro_minus)


Looe_Key_Deep_macroalgae_minus <- 100-(100*Looe_Key_Deep_algae_minus)


Looe_Key_Deep_plot_minus <- cbind(Looe_Key_Deep_macroalgae_minus,Looe_Key_Deep_biomass_minus,Looe_Key_Deep_stony_coral_minus)

#Looe_Key_Deep_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Looe_Key_Deep_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Looe_Key_Deep_plot_minus <- Looe_Key_Deep_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Looe_Key_Deep_plot_minus$CHI_Average_minus <- rowMeans(subset(Looe_Key_Deep_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Looe_Key_Deep_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/LK/Looe_Key_Deep.csv')

Looe_Key_Deep_All <- cbind(Looe_Key_Deep_plot_plus,Looe_Key_Deep_plot_minus,Looe_Key_Deep_normal)


export(Looe_Key_Deep_All,"Line/LK/Looe_Key_Deep_SD.csv")

Looe_Key_Deep_bar <- read.delim("Line/LK/Looe_Key_Deep_SD.csv", sep=",")
Looe_Key_Deep_barr <- select(Looe_Key_Deep_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Looe_Key_Deep_bar_graph <- melt(Looe_Key_Deep_barr, id.vars = "Year")


### plot
ggplot(Looe_Key_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Looe Key Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Looe_Key_Deep_bar_graph$Year), max(Looe_Key_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/LK/plots/Looe_Key_Deep_SD.png", width = 8, height = 4)




Looe_Key_Shallow <- filter(CHI_SD_Master, sitename == "Looe Key Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Looe_Key_Shallow_fish_plus <- Looe_Key_Shallow$Fish_plus/max(Looe_Key_Shallow$Fish_plus)
Looe_Key_Shallow_biomass_plus <- data.frame(Looe_Key_Shallow_fish_plus)

Looe_Key_Shallow_biomass_plus <- 100*Looe_Key_Shallow_biomass_plus


Looe_Key_Shallow_Stony_plus <- Looe_Key_Shallow$Coral_plus/max(Looe_Key_Shallow$Coral_plus)
Looe_Key_Shallow_coral_plus <- data.frame(Looe_Key_Shallow_Stony_plus)

Looe_Key_Shallow_stony_coral_plus <- 100*Looe_Key_Shallow_coral_plus

Looe_Key_Shallow_macro_plus <- ((Looe_Key_Shallow$Macroalgae_plus)/max(Looe_Key_Shallow$Macroalgae_plus))
Looe_Key_Shallow_algae_plus <- data.frame(Looe_Key_Shallow_macro_plus)


Looe_Key_Shallow_macroalgae_plus <- 100-(100*Looe_Key_Shallow_algae_plus)


Looe_Key_Shallow_plot_plus <- cbind(Looe_Key_Shallow_macroalgae_plus,Looe_Key_Shallow_biomass_plus,Looe_Key_Shallow_stony_coral_plus)

#Looe_Key_Shallow_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Looe_Key_Shallow_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Looe_Key_Shallow_plot_plus <- Looe_Key_Shallow_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Looe_Key_Shallow_plot_plus$CHI_Average_plus <- rowMeans(subset(Looe_Key_Shallow_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Looe_Key_Shallow_fish_minus <- Looe_Key_Shallow$Fish_minus/max(Looe_Key_Shallow$Fish_minus)
Looe_Key_Shallow_biomass_minus <- data.frame(Looe_Key_Shallow_fish_minus)

Looe_Key_Shallow_biomass_minus <- 100*Looe_Key_Shallow_biomass_minus


Looe_Key_Shallow_Stony_minus <- Looe_Key_Shallow$Coral_minus/max(Looe_Key_Shallow$Coral_minus)
Looe_Key_Shallow_coral_minus <- data.frame(Looe_Key_Shallow_Stony_minus)

Looe_Key_Shallow_stony_coral_minus <- 100*Looe_Key_Shallow_coral_minus

Looe_Key_Shallow_macro_minus <- ((Looe_Key_Shallow$Macroalgae_minus)/max(Looe_Key_Shallow$Macroalgae_minus))
Looe_Key_Shallow_algae_minus <- data.frame(Looe_Key_Shallow_macro_minus)


Looe_Key_Shallow_macroalgae_minus <- 100-(100*Looe_Key_Shallow_algae_minus)


Looe_Key_Shallow_plot_minus <- cbind(Looe_Key_Shallow_macroalgae_minus,Looe_Key_Shallow_biomass_minus,Looe_Key_Shallow_stony_coral_minus)

#Looe_Key_Shallow_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Looe_Key_Shallow_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Looe_Key_Shallow_plot_minus <- Looe_Key_Shallow_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Looe_Key_Shallow_plot_minus$CHI_Average_minus <- rowMeans(subset(Looe_Key_Shallow_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Looe_Key_Shallow_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/LK/Looe_Key_Shallow.csv')

Looe_Key_Shallow_All <- cbind(Looe_Key_Shallow_plot_plus,Looe_Key_Shallow_plot_minus,Looe_Key_Shallow_normal)


export(Looe_Key_Shallow_All,"Line/LK/Looe_Key_Shallow_SD.csv")
Eastern_Sambo_Deep_bar <- read.delim("Line/LK/Eastern_Sambo_Deep_SD.csv", sep=",")
Eastern_Sambo_Deep_barr <- select(Eastern_Sambo_Deep_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Eastern_Sambo_Deep_bar_graph <- melt(Eastern_Sambo_Deep_barr, id.vars = "Year")


### plot
ggplot(Looe_Key_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Looe Key Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Looe_Key_Shallow_bar_graph$Year), max(Looe_Key_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/LK/plots/Looe_Key_Shallow_SD.png", width = 8, height = 4)







Rock_Key_Deep <- filter(CHI_SD_Master, sitename == "Rock Key Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Rock_Key_Deep_fish_plus <- Rock_Key_Deep$Fish_plus/max(Rock_Key_Deep$Fish_plus)
Rock_Key_Deep_biomass_plus <- data.frame(Rock_Key_Deep_fish_plus)

Rock_Key_Deep_biomass_plus <- 100*Rock_Key_Deep_biomass_plus


Rock_Key_Deep_Stony_plus <- Rock_Key_Deep$Coral_plus/max(Rock_Key_Deep$Coral_plus)
Rock_Key_Deep_coral_plus <- data.frame(Rock_Key_Deep_Stony_plus)

Rock_Key_Deep_stony_coral_plus <- 100*Rock_Key_Deep_coral_plus

Rock_Key_Deep_macro_plus <- ((Rock_Key_Deep$Macroalgae_plus)/max(Rock_Key_Deep$Macroalgae_plus))
Rock_Key_Deep_algae_plus <- data.frame(Rock_Key_Deep_macro_plus)


Rock_Key_Deep_macroalgae_plus <- 100-(100*Rock_Key_Deep_algae_plus)


Rock_Key_Deep_plot_plus <- cbind(Rock_Key_Deep_macroalgae_plus,Rock_Key_Deep_biomass_plus,Rock_Key_Deep_stony_coral_plus)

#Rock_Key_Deep_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Rock_Key_Deep_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Rock_Key_Deep_plot_plus <- Rock_Key_Deep_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Rock_Key_Deep_plot_plus$CHI_Average_plus <- rowMeans(subset(Rock_Key_Deep_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Rock_Key_Deep_fish_minus <- Rock_Key_Deep$Fish_minus/max(Rock_Key_Deep$Fish_minus)
Rock_Key_Deep_biomass_minus <- data.frame(Rock_Key_Deep_fish_minus)

Rock_Key_Deep_biomass_minus <- 100*Rock_Key_Deep_biomass_minus


Rock_Key_Deep_Stony_minus <- Rock_Key_Deep$Coral_minus/max(Rock_Key_Deep$Coral_minus)
Rock_Key_Deep_coral_minus <- data.frame(Rock_Key_Deep_Stony_minus)

Rock_Key_Deep_stony_coral_minus <- 100*Rock_Key_Deep_coral_minus

Rock_Key_Deep_macro_minus <- ((Rock_Key_Deep$Macroalgae_minus)/max(Rock_Key_Deep$Macroalgae_minus))
Rock_Key_Deep_algae_minus <- data.frame(Rock_Key_Deep_macro_minus)


Rock_Key_Deep_macroalgae_minus <- 100-(100*Rock_Key_Deep_algae_minus)


Rock_Key_Deep_plot_minus <- cbind(Rock_Key_Deep_macroalgae_minus,Rock_Key_Deep_biomass_minus,Rock_Key_Deep_stony_coral_minus)

#Rock_Key_Deep_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Rock_Key_Deep_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Rock_Key_Deep_plot_minus <- Rock_Key_Deep_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Rock_Key_Deep_plot_minus$CHI_Average_minus <- rowMeans(subset(Rock_Key_Deep_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Recalculate normal and combine with SD CHI's 

## Make percentages of sum, stony coral cover, and macroalgae

Rock_Key_Deep_fish <- Rock_Key_Deep$sum/max(Rock_Key_Deep$sum)
Rock_Key_Deep_biomass <- data.frame(Rock_Key_Deep_fish)

Rock_Key_Deep_biomass <- 100*Rock_Key_Deep_biomass


Rock_Key_Deep_Stony <- Rock_Key_Deep$Coral_Average/max(Rock_Key_Deep$Coral_Average)
Rock_Key_Deep_coral <- data.frame(Rock_Key_Deep_Stony)

Rock_Key_Deep_stony_coral <- 100*Rock_Key_Deep_coral

Rock_Key_Deep_macro <- Rock_Key_Deep$Macroalgae_Average/max(Rock_Key_Deep$Macroalgae_Average)
Rock_Key_Deep_algae <- data.frame(Rock_Key_Deep_macro)


Rock_Key_Deep_macroalgae <- 100-(100*Rock_Key_Deep_algae)


Rock_Key_Deep_plot <- cbind(Rock_Key_Deep_macroalgae,Rock_Key_Deep_biomass,Rock_Key_Deep_stony_coral)

Rock_Key_Deep_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016")

colnames(Rock_Key_Deep_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Rock_Key_Deep_plot <- Rock_Key_Deep_plot %>%
  mutate_if(is.numeric,round,digits = 0)

Rock_Key_Deep_plot$CHI_Average <- rowMeans(subset(Rock_Key_Deep_plot, select = c(Macroalgae,Fish_Biomass,Stony_Coral)))
Rock_Key_Deep_normal <- Rock_Key_Deep_plot

Rock_Key_Deep_All <- cbind(Rock_Key_Deep_plot_plus,Rock_Key_Deep_plot_minus,Rock_Key_Deep_normal)


export(Rock_Key_Deep_All,"Line/LK/Rock_Key_Deep_SD.csv")
Rock_Key_Deep_bar <- read.delim("Line/LK/Rock_Key_Deep_SD.csv", sep=",")
Rock_Key_Deep_barr <- select(Rock_Key_Deep_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Rock_Key_Deep_bar_graph <- melt(Rock_Key_Deep_barr, id.vars = "Year")


### plot
ggplot(Rock_Key_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Rock Key Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Rock_Key_Deep_bar_graph$Year), max(Rock_Key_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/LK/plots/Rock_Key_Deep_SD.png", width = 8, height = 4)






Rock_Key_Shallow <- filter(CHI_SD_Master, sitename == "Rock Key Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Rock_Key_Shallow_fish_plus <- Rock_Key_Shallow$Fish_plus/max(Rock_Key_Shallow$Fish_plus)
Rock_Key_Shallow_biomass_plus <- data.frame(Rock_Key_Shallow_fish_plus)

Rock_Key_Shallow_biomass_plus <- 100*Rock_Key_Shallow_biomass_plus


Rock_Key_Shallow_Stony_plus <- Rock_Key_Shallow$Coral_plus/max(Rock_Key_Shallow$Coral_plus)
Rock_Key_Shallow_coral_plus <- data.frame(Rock_Key_Shallow_Stony_plus)

Rock_Key_Shallow_stony_coral_plus <- 100*Rock_Key_Shallow_coral_plus

Rock_Key_Shallow_macro_plus <- ((Rock_Key_Shallow$Macroalgae_plus)/max(Rock_Key_Shallow$Macroalgae_plus))
Rock_Key_Shallow_algae_plus <- data.frame(Rock_Key_Shallow_macro_plus)


Rock_Key_Shallow_macroalgae_plus <- 100-(100*Rock_Key_Shallow_algae_plus)


Rock_Key_Shallow_plot_plus <- cbind(Rock_Key_Shallow_macroalgae_plus,Rock_Key_Shallow_biomass_plus,Rock_Key_Shallow_stony_coral_plus)

#Rock_Key_Shallow_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Rock_Key_Shallow_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Rock_Key_Shallow_plot_plus <- Rock_Key_Shallow_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Rock_Key_Shallow_plot_plus$CHI_Average_plus <- rowMeans(subset(Rock_Key_Shallow_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Rock_Key_Shallow_fish_minus <- Rock_Key_Shallow$Fish_minus/max(Rock_Key_Shallow$Fish_minus)
Rock_Key_Shallow_biomass_minus <- data.frame(Rock_Key_Shallow_fish_minus)

Rock_Key_Shallow_biomass_minus <- 100*Rock_Key_Shallow_biomass_minus


Rock_Key_Shallow_Stony_minus <- Rock_Key_Shallow$Coral_minus/max(Rock_Key_Shallow$Coral_minus)
Rock_Key_Shallow_coral_minus <- data.frame(Rock_Key_Shallow_Stony_minus)

Rock_Key_Shallow_stony_coral_minus <- 100*Rock_Key_Shallow_coral_minus

Rock_Key_Shallow_macro_minus <- ((Rock_Key_Shallow$Macroalgae_minus)/max(Rock_Key_Shallow$Macroalgae_minus))
Rock_Key_Shallow_algae_minus <- data.frame(Rock_Key_Shallow_macro_minus)


Rock_Key_Shallow_macroalgae_minus <- 100-(100*Rock_Key_Shallow_algae_minus)


Rock_Key_Shallow_plot_minus <- cbind(Rock_Key_Shallow_macroalgae_minus,Rock_Key_Shallow_biomass_minus,Rock_Key_Shallow_stony_coral_minus)

#Rock_Key_Shallow_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Rock_Key_Shallow_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Rock_Key_Shallow_plot_minus <- Rock_Key_Shallow_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Rock_Key_Shallow_plot_minus$CHI_Average_minus <- rowMeans(subset(Rock_Key_Shallow_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Rock_Key_Shallow_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/LK/Rock_Key_Shallow.csv')

Rock_Key_Shallow_All <- cbind(Rock_Key_Shallow_plot_plus,Rock_Key_Shallow_plot_minus,Rock_Key_Shallow_normal)


export(Rock_Key_Shallow_All,"Line/LK/Rock_Key_Shallow_SD.csv")
Rock_Key_Shallow_bar <- read.delim("Line/LK/Rock_Key_Shallow_SD.csv", sep=",")
Rock_Key_Shallow_barr <- select(Rock_Key_Shallow_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Rock_Key_Shallow_bar_graph <- melt(Rock_Key_Shallow_barr, id.vars = "Year")


### plot
ggplot(Rock_Key_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Rock Key Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Rock_Key_Shallow_bar_graph$Year), max(Rock_Key_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/LK/plots/Rock_Key_Shallow_SD.png", width = 8, height = 4)






Sand_Key_Deep <- filter(CHI_SD_Master, sitename == "Sand Key Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Sand_Key_Deep_fish_plus <- Sand_Key_Deep$Fish_plus/max(Sand_Key_Deep$Fish_plus)
Sand_Key_Deep_biomass_plus <- data.frame(Sand_Key_Deep_fish_plus)

Sand_Key_Deep_biomass_plus <- 100*Sand_Key_Deep_biomass_plus


Sand_Key_Deep_Stony_plus <- Sand_Key_Deep$Coral_plus/max(Sand_Key_Deep$Coral_plus)
Sand_Key_Deep_coral_plus <- data.frame(Sand_Key_Deep_Stony_plus)

Sand_Key_Deep_stony_coral_plus <- 100*Sand_Key_Deep_coral_plus

Sand_Key_Deep_macro_plus <- ((Sand_Key_Deep$Macroalgae_plus)/max(Sand_Key_Deep$Macroalgae_plus))
Sand_Key_Deep_algae_plus <- data.frame(Sand_Key_Deep_macro_plus)


Sand_Key_Deep_macroalgae_plus <- 100-(100*Sand_Key_Deep_algae_plus)


Sand_Key_Deep_plot_plus <- cbind(Sand_Key_Deep_macroalgae_plus,Sand_Key_Deep_biomass_plus,Sand_Key_Deep_stony_coral_plus)

#Sand_Key_Deep_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Sand_Key_Deep_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Sand_Key_Deep_plot_plus <- Sand_Key_Deep_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Sand_Key_Deep_plot_plus$CHI_Average_plus <- rowMeans(subset(Sand_Key_Deep_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Sand_Key_Deep_fish_minus <- Sand_Key_Deep$Fish_minus/max(Sand_Key_Deep$Fish_minus)
Sand_Key_Deep_biomass_minus <- data.frame(Sand_Key_Deep_fish_minus)

Sand_Key_Deep_biomass_minus <- 100*Sand_Key_Deep_biomass_minus


Sand_Key_Deep_Stony_minus <- Sand_Key_Deep$Coral_minus/max(Sand_Key_Deep$Coral_minus)
Sand_Key_Deep_coral_minus <- data.frame(Sand_Key_Deep_Stony_minus)

Sand_Key_Deep_stony_coral_minus <- 100*Sand_Key_Deep_coral_minus

Sand_Key_Deep_macro_minus <- ((Sand_Key_Deep$Macroalgae_minus)/max(Sand_Key_Deep$Macroalgae_minus))
Sand_Key_Deep_algae_minus <- data.frame(Sand_Key_Deep_macro_minus)


Sand_Key_Deep_macroalgae_minus <- 100-(100*Sand_Key_Deep_algae_minus)


Sand_Key_Deep_plot_minus <- cbind(Sand_Key_Deep_macroalgae_minus,Sand_Key_Deep_biomass_minus,Sand_Key_Deep_stony_coral_minus)

#Sand_Key_Deep_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Sand_Key_Deep_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Sand_Key_Deep_plot_minus <- Sand_Key_Deep_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Sand_Key_Deep_plot_minus$CHI_Average_minus <- rowMeans(subset(Sand_Key_Deep_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

## Make percentages of sum, stony coral cover, and macroalgae

Sand_Key_Deep_fish <- Sand_Key_Deep$sum/max(Sand_Key_Deep$sum)
Sand_Key_Deep_biomass <- data.frame(Sand_Key_Deep_fish)

Sand_Key_Deep_biomass <- 100*Sand_Key_Deep_biomass


Sand_Key_Deep_Stony <- Sand_Key_Deep$Coral_Average/max(Sand_Key_Deep$Coral_Average)
Sand_Key_Deep_coral <- data.frame(Sand_Key_Deep_Stony)

Sand_Key_Deep_stony_coral <- 100*Sand_Key_Deep_coral

Sand_Key_Deep_macro <- Sand_Key_Deep$Macroalgae_Average/max(Sand_Key_Deep$Macroalgae_Average)
Sand_Key_Deep_algae <- data.frame(Sand_Key_Deep_macro)


Sand_Key_Deep_macroalgae <- 100-(100*Sand_Key_Deep_algae)


Sand_Key_Deep_plot <- cbind(Sand_Key_Deep_macroalgae,Sand_Key_Deep_biomass,Sand_Key_Deep_stony_coral)

Sand_Key_Deep_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016")

colnames(Sand_Key_Deep_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Sand_Key_Deep_plot <- Sand_Key_Deep_plot %>%
  mutate_if(is.numeric,round,digits = 0)

Sand_Key_Deep_plot$CHI_Average <- rowMeans(subset(Sand_Key_Deep_plot, select = c(Macroalgae,Fish_Biomass,Stony_Coral)))
Sand_Key_Deep_normal <- Sand_Key_Deep_plot

Sand_Key_Deep_All <- cbind(Sand_Key_Deep_plot_plus,Sand_Key_Deep_plot_minus,Sand_Key_Deep_normal)


export(Sand_Key_Deep_All,"Line/LK/Sand_Key_Deep_SD.csv")
Sand_Key_Deep_bar <- read.delim("Line/LK/Sand_Key_Deep_SD.csv", sep=",")
Sand_Key_Deep_barr <- select(Sand_Key_Deep_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Sand_Key_Deep_bar_graph <- melt(Sand_Key_Deep_barr, id.vars = "Year")


### plot
ggplot(Sand_Key_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Sand Key Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Sand_Key_Deep_bar_graph$Year), max(Sand_Key_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/LK/plots/Sand_Key_Deep_SD.png", width = 8, height = 4)






Sand_Key_Shallow <- filter(CHI_SD_Master, sitename == "Sand Key Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Sand_Key_Shallow_fish_plus <- Sand_Key_Shallow$Fish_plus/max(Sand_Key_Shallow$Fish_plus)
Sand_Key_Shallow_biomass_plus <- data.frame(Sand_Key_Shallow_fish_plus)

Sand_Key_Shallow_biomass_plus <- 100*Sand_Key_Shallow_biomass_plus


Sand_Key_Shallow_Stony_plus <- Sand_Key_Shallow$Coral_plus/max(Sand_Key_Shallow$Coral_plus)
Sand_Key_Shallow_coral_plus <- data.frame(Sand_Key_Shallow_Stony_plus)

Sand_Key_Shallow_stony_coral_plus <- 100*Sand_Key_Shallow_coral_plus

Sand_Key_Shallow_macro_plus <- ((Sand_Key_Shallow$Macroalgae_plus)/max(Sand_Key_Shallow$Macroalgae_plus))
Sand_Key_Shallow_algae_plus <- data.frame(Sand_Key_Shallow_macro_plus)


Sand_Key_Shallow_macroalgae_plus <- 100-(100*Sand_Key_Shallow_algae_plus)


Sand_Key_Shallow_plot_plus <- cbind(Sand_Key_Shallow_macroalgae_plus,Sand_Key_Shallow_biomass_plus,Sand_Key_Shallow_stony_coral_plus)

#Sand_Key_Shallow_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Sand_Key_Shallow_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Sand_Key_Shallow_plot_plus <- Sand_Key_Shallow_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Sand_Key_Shallow_plot_plus$CHI_Average_plus <- rowMeans(subset(Sand_Key_Shallow_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Sand_Key_Shallow_fish_minus <- Sand_Key_Shallow$Fish_minus/max(Sand_Key_Shallow$Fish_minus)
Sand_Key_Shallow_biomass_minus <- data.frame(Sand_Key_Shallow_fish_minus)

Sand_Key_Shallow_biomass_minus <- 100*Sand_Key_Shallow_biomass_minus


Sand_Key_Shallow_Stony_minus <- Sand_Key_Shallow$Coral_minus/max(Sand_Key_Shallow$Coral_minus)
Sand_Key_Shallow_coral_minus <- data.frame(Sand_Key_Shallow_Stony_minus)

Sand_Key_Shallow_stony_coral_minus <- 100*Sand_Key_Shallow_coral_minus

Sand_Key_Shallow_macro_minus <- ((Sand_Key_Shallow$Macroalgae_minus)/max(Sand_Key_Shallow$Macroalgae_minus))
Sand_Key_Shallow_algae_minus <- data.frame(Sand_Key_Shallow_macro_minus)


Sand_Key_Shallow_macroalgae_minus <- 100-(100*Sand_Key_Shallow_algae_minus)


Sand_Key_Shallow_plot_minus <- cbind(Sand_Key_Shallow_macroalgae_minus,Sand_Key_Shallow_biomass_minus,Sand_Key_Shallow_stony_coral_minus)

#Sand_Key_Shallow_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Sand_Key_Shallow_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Sand_Key_Shallow_plot_minus <- Sand_Key_Shallow_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Sand_Key_Shallow_plot_minus$CHI_Average_minus <- rowMeans(subset(Sand_Key_Shallow_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Sand_Key_Shallow_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/LK/Sand_Key_Shallow.csv')

Sand_Key_Shallow_All <- cbind(Sand_Key_Shallow_plot_plus,Sand_Key_Shallow_plot_minus,Sand_Key_Shallow_normal)


export(Sand_Key_Shallow_All,"Line/LK/Sand_Key_Shallow_SD.csv")

Sand_Key_Shallow_bar <- read.delim("Line/LK/Sand_Key_Shallow_SD.csv", sep=",")
Sand_Key_Shallow_barr <- select(Sand_Key_Shallow_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Sand_Key_Shallow_bar_graph <- melt(Sand_Key_Shallow_barr, id.vars = "Year")


### plot
ggplot(Sand_Key_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Sand Key Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Sand_Key_Shallow_bar_graph$Year), max(Sand_Key_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/LK/plots/Sand_Key_Shallow_SD.png", width = 8, height = 4)






Western_Sambo_Deep <- filter(CHI_SD_Master, sitename == "Western Sambo Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Western_Sambo_Deep_fish_plus <- Western_Sambo_Deep$Fish_plus/max(Western_Sambo_Deep$Fish_plus)
Western_Sambo_Deep_biomass_plus <- data.frame(Western_Sambo_Deep_fish_plus)

Western_Sambo_Deep_biomass_plus <- 100*Western_Sambo_Deep_biomass_plus


Western_Sambo_Deep_Stony_plus <- Western_Sambo_Deep$Coral_plus/max(Western_Sambo_Deep$Coral_plus)
Western_Sambo_Deep_coral_plus <- data.frame(Western_Sambo_Deep_Stony_plus)

Western_Sambo_Deep_stony_coral_plus <- 100*Western_Sambo_Deep_coral_plus

Western_Sambo_Deep_macro_plus <- ((Western_Sambo_Deep$Macroalgae_plus)/max(Western_Sambo_Deep$Macroalgae_plus))
Western_Sambo_Deep_algae_plus <- data.frame(Western_Sambo_Deep_macro_plus)


Western_Sambo_Deep_macroalgae_plus <- 100-(100*Western_Sambo_Deep_algae_plus)


Western_Sambo_Deep_plot_plus <- cbind(Western_Sambo_Deep_macroalgae_plus,Western_Sambo_Deep_biomass_plus,Western_Sambo_Deep_stony_coral_plus)

#Western_Sambo_Deep_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Western_Sambo_Deep_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Western_Sambo_Deep_plot_plus <- Western_Sambo_Deep_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Western_Sambo_Deep_plot_plus$CHI_Average_plus <- rowMeans(subset(Western_Sambo_Deep_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Western_Sambo_Deep_fish_minus <- Western_Sambo_Deep$Fish_minus/max(Western_Sambo_Deep$Fish_minus)
Western_Sambo_Deep_biomass_minus <- data.frame(Western_Sambo_Deep_fish_minus)

Western_Sambo_Deep_biomass_minus <- 100*Western_Sambo_Deep_biomass_minus


Western_Sambo_Deep_Stony_minus <- Western_Sambo_Deep$Coral_minus/max(Western_Sambo_Deep$Coral_minus)
Western_Sambo_Deep_coral_minus <- data.frame(Western_Sambo_Deep_Stony_minus)

Western_Sambo_Deep_stony_coral_minus <- 100*Western_Sambo_Deep_coral_minus

Western_Sambo_Deep_macro_minus <- ((Western_Sambo_Deep$Macroalgae_minus)/max(Western_Sambo_Deep$Macroalgae_minus))
Western_Sambo_Deep_algae_minus <- data.frame(Western_Sambo_Deep_macro_minus)


Western_Sambo_Deep_macroalgae_minus <- 100-(100*Western_Sambo_Deep_algae_minus)


Western_Sambo_Deep_plot_minus <- cbind(Western_Sambo_Deep_macroalgae_minus,Western_Sambo_Deep_biomass_minus,Western_Sambo_Deep_stony_coral_minus)

#Western_Sambo_Deep_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Western_Sambo_Deep_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Western_Sambo_Deep_plot_minus <- Western_Sambo_Deep_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Western_Sambo_Deep_plot_minus$CHI_Average_minus <- rowMeans(subset(Western_Sambo_Deep_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 


## Make percentages of sum, stony coral cover, and macroalgae

Western_Sambo_Deep_fish <- Western_Sambo_Deep$sum/max(Western_Sambo_Deep$sum)
Western_Sambo_Deep_biomass <- data.frame(Western_Sambo_Deep_fish)

Western_Sambo_Deep_biomass <- 100*Western_Sambo_Deep_biomass


Western_Sambo_Deep_Stony <- Western_Sambo_Deep$Coral_Average/max(Western_Sambo_Deep$Coral_Average)
Western_Sambo_Deep_coral <- data.frame(Western_Sambo_Deep_Stony)

Western_Sambo_Deep_stony_coral <- 100*Western_Sambo_Deep_coral

Western_Sambo_Deep_macro <- Western_Sambo_Deep$Macroalgae_Average/max(Western_Sambo_Deep$Macroalgae_Average)
Western_Sambo_Deep_algae <- data.frame(Western_Sambo_Deep_macro)


Western_Sambo_Deep_macroalgae <- 100-(100*Western_Sambo_Deep_algae)


Western_Sambo_Deep_plot <- cbind(Western_Sambo_Deep_macroalgae,Western_Sambo_Deep_biomass,Western_Sambo_Deep_stony_coral)

Western_Sambo_Deep_plot$Year <- c("1999","2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2010","2011","2012","2014","2016")

colnames(Western_Sambo_Deep_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Western_Sambo_Deep_plot <- Western_Sambo_Deep_plot %>%
  mutate_if(is.numeric,round,digits = 0)

Western_Sambo_Deep_plot$CHI_Average <- rowMeans(subset(Western_Sambo_Deep_plot, select = c(Macroalgae,Fish_Biomass,Stony_Coral)))
Western_Sambo_Deep_normal <- Western_Sambo_Deep_plot

Western_Sambo_Deep_All <- cbind(Western_Sambo_Deep_plot_plus,Western_Sambo_Deep_plot_minus,Western_Sambo_Deep_normal)


export(Western_Sambo_Deep_All,"Line/LK/Western_Sambo_Deep_SD.csv")
Western_Sambo_Deep_bar <- read.delim("Line/LK/Western_Sambo_Deep_SD.csv", sep=",")
Western_Sambo_Deep_barr <- select(Western_Sambo_Deep_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Western_Sambo_Deep_bar_graph <- melt(Western_Sambo_Deep_barr, id.vars = "Year")


### plot
ggplot(Western_Sambo_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Western Sambo Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Western_Sambo_Deep_bar_graph$Year), max(Western_Sambo_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/LK/plots/Western_Sambo_Deep_SD.png", width = 8, height = 4)






Western_Sambo_Shallow <- filter(CHI_SD_Master, sitename == "Western Sambo Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Western_Sambo_Shallow_fish_plus <- Western_Sambo_Shallow$Fish_plus/max(Western_Sambo_Shallow$Fish_plus)
Western_Sambo_Shallow_biomass_plus <- data.frame(Western_Sambo_Shallow_fish_plus)

Western_Sambo_Shallow_biomass_plus <- 100*Western_Sambo_Shallow_biomass_plus


Western_Sambo_Shallow_Stony_plus <- Western_Sambo_Shallow$Coral_plus/max(Western_Sambo_Shallow$Coral_plus)
Western_Sambo_Shallow_coral_plus <- data.frame(Western_Sambo_Shallow_Stony_plus)

Western_Sambo_Shallow_stony_coral_plus <- 100*Western_Sambo_Shallow_coral_plus

Western_Sambo_Shallow_macro_plus <- ((Western_Sambo_Shallow$Macroalgae_plus)/max(Western_Sambo_Shallow$Macroalgae_plus))
Western_Sambo_Shallow_algae_plus <- data.frame(Western_Sambo_Shallow_macro_plus)


Western_Sambo_Shallow_macroalgae_plus <- 100-(100*Western_Sambo_Shallow_algae_plus)


Western_Sambo_Shallow_plot_plus <- cbind(Western_Sambo_Shallow_macroalgae_plus,Western_Sambo_Shallow_biomass_plus,Western_Sambo_Shallow_stony_coral_plus)

#Western_Sambo_Shallow_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Western_Sambo_Shallow_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Western_Sambo_Shallow_plot_plus <- Western_Sambo_Shallow_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Western_Sambo_Shallow_plot_plus$CHI_Average_plus <- rowMeans(subset(Western_Sambo_Shallow_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Western_Sambo_Shallow_fish_minus <- Western_Sambo_Shallow$Fish_minus/max(Western_Sambo_Shallow$Fish_minus)
Western_Sambo_Shallow_biomass_minus <- data.frame(Western_Sambo_Shallow_fish_minus)

Western_Sambo_Shallow_biomass_minus <- 100*Western_Sambo_Shallow_biomass_minus


Western_Sambo_Shallow_Stony_minus <- Western_Sambo_Shallow$Coral_minus/max(Western_Sambo_Shallow$Coral_minus)
Western_Sambo_Shallow_coral_minus <- data.frame(Western_Sambo_Shallow_Stony_minus)

Western_Sambo_Shallow_stony_coral_minus <- 100*Western_Sambo_Shallow_coral_minus

Western_Sambo_Shallow_macro_minus <- ((Western_Sambo_Shallow$Macroalgae_minus)/max(Western_Sambo_Shallow$Macroalgae_minus))
Western_Sambo_Shallow_algae_minus <- data.frame(Western_Sambo_Shallow_macro_minus)


Western_Sambo_Shallow_macroalgae_minus <- 100-(100*Western_Sambo_Shallow_algae_minus)


Western_Sambo_Shallow_plot_minus <- cbind(Western_Sambo_Shallow_macroalgae_minus,Western_Sambo_Shallow_biomass_minus,Western_Sambo_Shallow_stony_coral_minus)

#Western_Sambo_Shallow_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Western_Sambo_Shallow_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Western_Sambo_Shallow_plot_minus <- Western_Sambo_Shallow_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Western_Sambo_Shallow_plot_minus$CHI_Average_minus <- rowMeans(subset(Western_Sambo_Shallow_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Western_Sambo_Shallow_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/LK/Western_Sambo_Shallow.csv')

Western_Sambo_Shallow_All <- cbind(Western_Sambo_Shallow_plot_plus,Western_Sambo_Shallow_plot_minus,Western_Sambo_Shallow_normal)


export(Western_Sambo_Shallow_All,"Line/LK/Western_Sambo_Shallow_SD.csv")

Western_Sambo_Shallow_bar <- read.delim("Line/LK/Western_Sambo_Shallow_SD.csv", sep=",")
Western_Sambo_Shallow_barr <- select(Western_Sambo_Shallow_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Western_Sambo_Shallow_bar_graph <- melt(Western_Sambo_Shallow_barr, id.vars = "Year")


### plot
ggplot(Western_Sambo_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Eastern Sambo Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Western_Sambo_Shallow_bar_graph$Year), max(Western_Sambo_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/LK/plots/Western_Sambo_Shallow_SD.png", width = 8, height = 4)


setwd('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/LK/plots')


pdf('LK.pdf')
lapply(ll <- list.files(patt='.*[.]png'),function(x){
  img <- as.raster(readPNG(x))
  grid.newpage()
  grid.raster(img, interpolate = FALSE)
  
})
dev.off()

plots <- lapply(ll <- list.files(patt='.*[.]png'),function(x){
  img <- as.raster(readPNG(x))
  rasterGrob(img, interpolate = FALSE)
})

ggsave("LK_combined.pdf", marrangeGrob(grobs=plots, nrow=2, ncol=4))


setwd('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC')


### Upper Keys


# Admiral <- filter(CHI_SD_Master, sitename == "Admiral")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Admiral_fish_plus <- Admiral$Fish_plus/max(Admiral$Fish_plus)
# Admiral_biomass_plus <- data.frame(Admiral_fish_plus)
# 
# Admiral_biomass_plus <- 100*Admiral_biomass_plus
# 
# 
# Admiral_Stony_plus <- Admiral$Coral_plus/max(Admiral$Coral_plus)
# Admiral_coral_plus <- data.frame(Admiral_Stony_plus)
# 
# Admiral_stony_coral_plus <- 100*Admiral_coral_plus
# 
# Admiral_macro_plus <- ((Admiral$Macroalgae_plus)/max(Admiral$Macroalgae_plus))
# Admiral_algae_plus <- data.frame(Admiral_macro_plus)
# 
# 
# Admiral_macroalgae_plus <- 100-(100*Admiral_algae_plus)
# 
# 
# Admiral_plot_plus <- cbind(Admiral_macroalgae_plus,Admiral_biomass_plus,Admiral_stony_coral_plus)
# 
# Admiral_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Admiral_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Admiral_plot_plus <- Admiral_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Admiral_plot_plus$CHI_Average_plus <- rowMeans(subset(Admiral_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Admiral_fish_minus <- Admiral$Fish_minus/max(Admiral$Fish_minus)
# Admiral_biomass_minus <- data.frame(Admiral_fish_minus)
# 
# Admiral_biomass_minus <- 100*Admiral_biomass_minus
# 
# 
# Admiral_Stony_minus <- Admiral$Coral_minus/max(Admiral$Coral_minus)
# Admiral_coral_minus <- data.frame(Admiral_Stony_minus)
# 
# Admiral_stony_coral_minus <- 100*Admiral_coral_minus
# 
# Admiral_macro_minus <- ((Admiral$Macroalgae_minus)/max(Admiral$Macroalgae_minus))
# Admiral_algae_minus <- data.frame(Admiral_macro_minus)
# 
# 
# Admiral_macroalgae_minus <- 100-(100*Admiral_algae_minus)
# 
# 
# Admiral_plot_minus <- cbind(Admiral_macroalgae_minus,Admiral_biomass_minus,Admiral_stony_coral_minus)
# 
# Admiral_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Admiral_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Admiral_plot_minus <- Admiral_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Admiral_plot_minus$CHI_Average_minus <- rowMeans(subset(Admiral_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Admiral_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/UK/Admiral.csv')
# 
# Admiral_All <- cbind(Admiral_plot_plus,Admiral_plot_minus,Admiral_normal)
# 
# Admiral_All$Year_plus <- NULL
# Admiral_All$Year_minus <- NULL
# 
# export(Admiral_All,"Line/UK/Admiral_SD.csv")
# 
# 
# 
# 
# Burr_Fish <- filter(CHI_SD_Master, sitename == "Burr Fish")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Burr_Fish_fish_plus <- Burr_Fish$Fish_plus/max(Burr_Fish$Fish_plus)
# Burr_Fish_biomass_plus <- data.frame(Burr_Fish_fish_plus)
# 
# Burr_Fish_biomass_plus <- 100*Burr_Fish_biomass_plus
# 
# 
# Burr_Fish_Stony_plus <- Burr_Fish$Coral_plus/max(Burr_Fish$Coral_plus)
# Burr_Fish_coral_plus <- data.frame(Burr_Fish_Stony_plus)
# 
# Burr_Fish_stony_coral_plus <- 100*Burr_Fish_coral_plus
# 
# Burr_Fish_macro_plus <- ((Burr_Fish$Macroalgae_plus)/max(Burr_Fish$Macroalgae_plus))
# Burr_Fish_algae_plus <- data.frame(Burr_Fish_macro_plus)
# 
# 
# Burr_Fish_macroalgae_plus <- 100-(100*Burr_Fish_algae_plus)
# 
# 
# Burr_Fish_plot_plus <- cbind(Burr_Fish_macroalgae_plus,Burr_Fish_biomass_plus,Burr_Fish_stony_coral_plus)
# 
# Burr_Fish_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Burr_Fish_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Burr_Fish_plot_plus <- Burr_Fish_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Burr_Fish_plot_plus$CHI_Average_plus <- rowMeans(subset(Burr_Fish_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Burr_Fish_fish_minus <- Burr_Fish$Fish_minus/max(Burr_Fish$Fish_minus)
# Burr_Fish_biomass_minus <- data.frame(Burr_Fish_fish_minus)
# 
# Burr_Fish_biomass_minus <- 100*Burr_Fish_biomass_minus
# 
# 
# Burr_Fish_Stony_minus <- Burr_Fish$Coral_minus/max(Burr_Fish$Coral_minus)
# Burr_Fish_coral_minus <- data.frame(Burr_Fish_Stony_minus)
# 
# Burr_Fish_stony_coral_minus <- 100*Burr_Fish_coral_minus
# 
# Burr_Fish_macro_minus <- ((Burr_Fish$Macroalgae_minus)/max(Burr_Fish$Macroalgae_minus))
# Burr_Fish_algae_minus <- data.frame(Burr_Fish_macro_minus)
# 
# 
# Burr_Fish_macroalgae_minus <- 100-(100*Burr_Fish_algae_minus)
# 
# 
# Burr_Fish_plot_minus <- cbind(Burr_Fish_macroalgae_minus,Burr_Fish_biomass_minus,Burr_Fish_stony_coral_minus)
# 
# Burr_Fish_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Burr_Fish_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Burr_Fish_plot_minus <- Burr_Fish_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Burr_Fish_plot_minus$CHI_Average_minus <- rowMeans(subset(Burr_Fish_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Burr_Fish_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/UK/Burr_Fish.csv')
# 
# Burr_Fish_All <- cbind(Burr_Fish_plot_plus,Burr_Fish_plot_minus,Burr_Fish_normal)
# 
# Burr_Fish_All$Year_plus <- NULL
# Burr_Fish_All$Year_minus <- NULL
# 
# export(Burr_Fish_All,"Line/UK/Burr_Fish_SD.csv")
# 



Carysfort_Deep <- filter(CHI_SD_Master, sitename == "Carysfort Deep")
#Carysfort_Deep <- Carysfort_Deep[-1,]

## Make percentages of sum, stony coral cover, and macroalgae

Carysfort_Deep_fish_plus <- Carysfort_Deep$Fish_plus/max(Carysfort_Deep$Fish_plus)
Carysfort_Deep_biomass_plus <- data.frame(Carysfort_Deep_fish_plus)

Carysfort_Deep_biomass_plus <- 100*Carysfort_Deep_biomass_plus


Carysfort_Deep_Stony_plus <- Carysfort_Deep$Coral_plus/max(Carysfort_Deep$Coral_plus)
Carysfort_Deep_coral_plus <- data.frame(Carysfort_Deep_Stony_plus)

Carysfort_Deep_stony_coral_plus <- 100*Carysfort_Deep_coral_plus

Carysfort_Deep_macro_plus <- ((Carysfort_Deep$Macroalgae_plus)/max(Carysfort_Deep$Macroalgae_plus))
Carysfort_Deep_algae_plus <- data.frame(Carysfort_Deep_macro_plus)


Carysfort_Deep_macroalgae_plus <- 100-(100*Carysfort_Deep_algae_plus)


Carysfort_Deep_plot_plus <- cbind(Carysfort_Deep_macroalgae_plus,Carysfort_Deep_biomass_plus,Carysfort_Deep_stony_coral_plus)

#Carysfort_Deep_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Carysfort_Deep_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Carysfort_Deep_plot_plus <- Carysfort_Deep_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Carysfort_Deep_plot_plus$CHI_Average_plus <- rowMeans(subset(Carysfort_Deep_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Carysfort_Deep_fish_minus <- Carysfort_Deep$Fish_minus/max(Carysfort_Deep$Fish_minus)
Carysfort_Deep_biomass_minus <- data.frame(Carysfort_Deep_fish_minus)

Carysfort_Deep_biomass_minus <- 100*Carysfort_Deep_biomass_minus


Carysfort_Deep_Stony_minus <- Carysfort_Deep$Coral_minus/max(Carysfort_Deep$Coral_minus)
Carysfort_Deep_coral_minus <- data.frame(Carysfort_Deep_Stony_minus)

Carysfort_Deep_stony_coral_minus <- 100*Carysfort_Deep_coral_minus

Carysfort_Deep_macro_minus <- ((Carysfort_Deep$Macroalgae_minus)/max(Carysfort_Deep$Macroalgae_minus))
Carysfort_Deep_algae_minus <- data.frame(Carysfort_Deep_macro_minus)


Carysfort_Deep_macroalgae_minus <- 100-(100*Carysfort_Deep_algae_minus)


Carysfort_Deep_plot_minus <- cbind(Carysfort_Deep_macroalgae_minus,Carysfort_Deep_biomass_minus,Carysfort_Deep_stony_coral_minus)

#Carysfort_Deep_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Carysfort_Deep_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Carysfort_Deep_plot_minus <- Carysfort_Deep_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Carysfort_Deep_plot_minus$CHI_Average_minus <- rowMeans(subset(Carysfort_Deep_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 


## Make percentages of sum, stony coral cover, and macroalgae

Carysfort_Deep_fish <- Carysfort_Deep$sum/max(Carysfort_Deep$sum)
Carysfort_Deep_biomass <- data.frame(Carysfort_Deep_fish)

Carysfort_Deep_biomass <- 100*Carysfort_Deep_biomass


Carysfort_Deep_Stony <- Carysfort_Deep$Coral_Average/max(Carysfort_Deep$Coral_Average)
Carysfort_Deep_coral <- data.frame(Carysfort_Deep_Stony)

Carysfort_Deep_stony_coral <- 100*Carysfort_Deep_coral

Carysfort_Deep_macro <- Carysfort_Deep$Macroalgae_Average/max(Carysfort_Deep$Macroalgae_Average)
Carysfort_Deep_algae <- data.frame(Carysfort_Deep_macro)


Carysfort_Deep_macroalgae <- 100-(100*Carysfort_Deep_algae)


Carysfort_Deep_plot <- cbind(Carysfort_Deep_macroalgae,Carysfort_Deep_biomass,Carysfort_Deep_stony_coral)

Carysfort_Deep_plot$Year <- c("2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Carysfort_Deep_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Carysfort_Deep_plot <- Carysfort_Deep_plot %>%
  mutate_if(is.numeric,round,digits = 0)

Carysfort_Deep_plot$CHI_Average <- rowMeans(subset(Carysfort_Deep_plot, select = c(Macroalgae,Fish_Biomass,Stony_Coral)))
Carysfort_Deep_normal <- Carysfort_Deep_plot

Carysfort_Deep_All <- cbind(Carysfort_Deep_plot_plus,Carysfort_Deep_plot_minus,Carysfort_Deep_normal)


export(Carysfort_Deep_All,"Line/UK/Carysfort_Deep_SD.csv")

Carysfort_Deep_bar <- read.delim("Line/UK/Carysfort_Deep_SD.csv", sep=",")
Carysfort_Deep_barr <- select(Carysfort_Deep_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Carysfort_Deep_bar_graph <- melt(Carysfort_Deep_barr, id.vars = "Year")


### plot
ggplot(Carysfort_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Carysfort Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Carysfort_Deep_bar_graph$Year), max(Carysfort_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/UK/plots/Carysfort_Deep_SD.png", width = 8, height = 4)






Carysfort_Shallow <- filter(CHI_SD_Master, sitename == "Carysfort Shallow")
#Carysfort_Shallow <- Carysfort_Shallow [-1,]

## Make percentages of sum, stony coral cover, and macroalgae

Carysfort_Shallow_fish_plus <- Carysfort_Shallow$Fish_plus/max(Carysfort_Shallow$Fish_plus)
Carysfort_Shallow_biomass_plus <- data.frame(Carysfort_Shallow_fish_plus)

Carysfort_Shallow_biomass_plus <- 100*Carysfort_Shallow_biomass_plus


Carysfort_Shallow_Stony_plus <- Carysfort_Shallow$Coral_plus/max(Carysfort_Shallow$Coral_plus)
Carysfort_Shallow_coral_plus <- data.frame(Carysfort_Shallow_Stony_plus)

Carysfort_Shallow_stony_coral_plus <- 100*Carysfort_Shallow_coral_plus

Carysfort_Shallow_macro_plus <- ((Carysfort_Shallow$Macroalgae_plus)/max(Carysfort_Shallow$Macroalgae_plus))
Carysfort_Shallow_algae_plus <- data.frame(Carysfort_Shallow_macro_plus)


Carysfort_Shallow_macroalgae_plus <- 100-(100*Carysfort_Shallow_algae_plus)


Carysfort_Shallow_plot_plus <- cbind(Carysfort_Shallow_macroalgae_plus,Carysfort_Shallow_biomass_plus,Carysfort_Shallow_stony_coral_plus)

#Carysfort_Shallow_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Carysfort_Shallow_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Carysfort_Shallow_plot_plus <- Carysfort_Shallow_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Carysfort_Shallow_plot_plus$CHI_Average_plus <- rowMeans(subset(Carysfort_Shallow_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Carysfort_Shallow_fish_minus <- Carysfort_Shallow$Fish_minus/max(Carysfort_Shallow$Fish_minus)
Carysfort_Shallow_biomass_minus <- data.frame(Carysfort_Shallow_fish_minus)

Carysfort_Shallow_biomass_minus <- 100*Carysfort_Shallow_biomass_minus


Carysfort_Shallow_Stony_minus <- Carysfort_Shallow$Coral_minus/max(Carysfort_Shallow$Coral_minus)
Carysfort_Shallow_coral_minus <- data.frame(Carysfort_Shallow_Stony_minus)

Carysfort_Shallow_stony_coral_minus <- 100*Carysfort_Shallow_coral_minus

Carysfort_Shallow_macro_minus <- ((Carysfort_Shallow$Macroalgae_minus)/max(Carysfort_Shallow$Macroalgae_minus))
Carysfort_Shallow_algae_minus <- data.frame(Carysfort_Shallow_macro_minus)


Carysfort_Shallow_macroalgae_minus <- 100-(100*Carysfort_Shallow_algae_minus)


Carysfort_Shallow_plot_minus <- cbind(Carysfort_Shallow_macroalgae_minus,Carysfort_Shallow_biomass_minus,Carysfort_Shallow_stony_coral_minus)

#Carysfort_Shallow_plot_minus$Year <- c("2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Carysfort_Shallow_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Carysfort_Shallow_plot_minus <- Carysfort_Shallow_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Carysfort_Shallow_plot_minus$CHI_Average_minus <- rowMeans(subset(Carysfort_Shallow_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Carysfort_Shallow_fish <- Carysfort_Shallow$sum/max(Carysfort_Shallow$sum)
Carysfort_Shallow_biomass <- data.frame(Carysfort_Shallow_fish)

Carysfort_Shallow_biomass <- 100*Carysfort_Shallow_biomass


Carysfort_Shallow_Stony <- Carysfort_Shallow$Coral_Average/max(Carysfort_Shallow$Coral_Average)
Carysfort_Shallow_coral <- data.frame(Carysfort_Shallow_Stony)

Carysfort_Shallow_stony_coral <- 100*Carysfort_Shallow_coral

Carysfort_Shallow_macro <- Carysfort_Shallow$Macroalgae_Average/max(Carysfort_Shallow$Macroalgae_Average)
Carysfort_Shallow_algae <- data.frame(Carysfort_Shallow_macro)


Carysfort_Shallow_macroalgae <- 100-(100*Carysfort_Shallow_algae)


Carysfort_Shallow_plot <- cbind(Carysfort_Shallow_macroalgae,Carysfort_Shallow_biomass,Carysfort_Shallow_stony_coral)

Carysfort_Shallow_plot$Year <- c("2000","2001","2002","2003","2004","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Carysfort_Shallow_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Carysfort_Shallow_plot <- Carysfort_Shallow_plot %>%
  mutate_if(is.numeric,round,digits = 0)

Carysfort_Shallow_plot$CHI_Average <- rowMeans(subset(Carysfort_Shallow_plot, select = c(Macroalgae,Fish_Biomass,Stony_Coral)))
Carysfort_Shallow_normal <- Carysfort_Shallow_plot

Carysfort_Shallow_All <- cbind(Carysfort_Shallow_plot_plus,Carysfort_Shallow_plot_minus,Carysfort_Shallow_normal)


export(Carysfort_Shallow_All,"Line/UK/Carysfort_Shallow_SD.csv")

Carysfort_Shallow_bar <- read.delim("Line/UK/Carysfort_Shallow_SD.csv", sep=",")
Carysfort_Shallow_barr <- select(Carysfort_Shallow_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Carysfort_Shallow_bar_graph <- melt(Carysfort_Shallow_barr, id.vars = "Year")


### plot
ggplot(Carysfort_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Carysfort Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Carysfort_Shallow_bar_graph$Year), max(Carysfort_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/UK/plots/Carysfort_Shallow_SD.png", width = 8, height = 4)




Conch_Deep <- filter(CHI_SD_Master, sitename == "Conch Deep")
#Conch_Deep <- Conch_Deep[-6,]
## Make percentages of sum, stony coral cover, and macroalgae

Conch_Deep_fish_plus <- Conch_Deep$Fish_plus/max(Conch_Deep$Fish_plus)
Conch_Deep_biomass_plus <- data.frame(Conch_Deep_fish_plus)

Conch_Deep_biomass_plus <- 100*Conch_Deep_biomass_plus


Conch_Deep_Stony_plus <- Conch_Deep$Coral_plus/max(Conch_Deep$Coral_plus)
Conch_Deep_coral_plus <- data.frame(Conch_Deep_Stony_plus)

Conch_Deep_stony_coral_plus <- 100*Conch_Deep_coral_plus

Conch_Deep_macro_plus <- ((Conch_Deep$Macroalgae_plus)/max(Conch_Deep$Macroalgae_plus))
Conch_Deep_algae_plus <- data.frame(Conch_Deep_macro_plus)


Conch_Deep_macroalgae_plus <- 100-(100*Conch_Deep_algae_plus)


Conch_Deep_plot_plus <- cbind(Conch_Deep_macroalgae_plus,Conch_Deep_biomass_plus,Conch_Deep_stony_coral_plus)

#Conch_Deep_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Conch_Deep_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Conch_Deep_plot_plus <- Conch_Deep_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Conch_Deep_plot_plus$CHI_Average_plus <- rowMeans(subset(Conch_Deep_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Conch_Deep_fish_minus <- Conch_Deep$Fish_minus/max(Conch_Deep$Fish_minus)
Conch_Deep_biomass_minus <- data.frame(Conch_Deep_fish_minus)

Conch_Deep_biomass_minus <- 100*Conch_Deep_biomass_minus


Conch_Deep_Stony_minus <- Conch_Deep$Coral_minus/max(Conch_Deep$Coral_minus)
Conch_Deep_coral_minus <- data.frame(Conch_Deep_Stony_minus)

Conch_Deep_stony_coral_minus <- 100*Conch_Deep_coral_minus

Conch_Deep_macro_minus <- ((Conch_Deep$Macroalgae_minus)/max(Conch_Deep$Macroalgae_minus))
Conch_Deep_algae_minus <- data.frame(Conch_Deep_macro_minus)


Conch_Deep_macroalgae_minus <- 100-(100*Conch_Deep_algae_minus)


Conch_Deep_plot_minus <- cbind(Conch_Deep_macroalgae_minus,Conch_Deep_biomass_minus,Conch_Deep_stony_coral_minus)

#Conch_Deep_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Conch_Deep_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Conch_Deep_plot_minus <- Conch_Deep_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Conch_Deep_plot_minus$CHI_Average_minus <- rowMeans(subset(Conch_Deep_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Conch_Deep_fish <- Conch_Deep$sum/max(Conch_Deep$sum)
Conch_Deep_biomass <- data.frame(Conch_Deep_fish)

Conch_Deep_biomass <- 100*Conch_Deep_biomass


Conch_Deep_Stony <- Conch_Deep$Coral_Average/max(Conch_Deep$Coral_Average)
Conch_Deep_coral <- data.frame(Conch_Deep_Stony)

Conch_Deep_stony_coral <- 100*Conch_Deep_coral

Conch_Deep_macro <- Conch_Deep$Macroalgae_Average/max(Conch_Deep$Macroalgae_Average)
Conch_Deep_algae <- data.frame(Conch_Deep_macro)


Conch_Deep_macroalgae <- 100-(100*Conch_Deep_algae)


Conch_Deep_plot <- cbind(Conch_Deep_macroalgae,Conch_Deep_biomass,Conch_Deep_stony_coral)

Conch_Deep_plot$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Conch_Deep_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Conch_Deep_plot <- Conch_Deep_plot %>%
  mutate_if(is.numeric,round,digits = 0)

Conch_Deep_plot$CHI_Average <- rowMeans(subset(Conch_Deep_plot, select = c(Macroalgae,Fish_Biomass,Stony_Coral)))
Conch_Deep_normal <- Conch_Deep_plot

Conch_Deep_All <- cbind(Conch_Deep_plot_plus,Conch_Deep_plot_minus,Conch_Deep_normal)


export(Conch_Deep_All,"Line/UK/Conch_Deep_SD.csv")
Conch_Deep_bar <- read.delim("Line/UK/Conch_Deep_SD.csv", sep=",")
Conch_Deep_barr <- select(Conch_Deep_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Conch_Deep_bar_graph <- melt(Conch_Deep_barr, id.vars = "Year")


### plot
ggplot(Conch_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Conch Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Conch_Deep_bar_graph$Year), max(Conch_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/UK/plots/Conch_Deep_SD.png", width = 8, height = 4)





Conch_Shallow <- filter(CHI_SD_Master, sitename == "Conch Shallow")
#Conch_Shallow <- Conch_Shallow[-6,]

## Make percentages of sum, stony coral cover, and macroalgae

Conch_Shallow_fish_plus <- Conch_Shallow$Fish_plus/max(Conch_Shallow$Fish_plus)
Conch_Shallow_biomass_plus <- data.frame(Conch_Shallow_fish_plus)

Conch_Shallow_biomass_plus <- 100*Conch_Shallow_biomass_plus


Conch_Shallow_Stony_plus <- Conch_Shallow$Coral_plus/max(Conch_Shallow$Coral_plus)
Conch_Shallow_coral_plus <- data.frame(Conch_Shallow_Stony_plus)

Conch_Shallow_stony_coral_plus <- 100*Conch_Shallow_coral_plus

Conch_Shallow_macro_plus <- ((Conch_Shallow$Macroalgae_plus)/max(Conch_Shallow$Macroalgae_plus))
Conch_Shallow_algae_plus <- data.frame(Conch_Shallow_macro_plus)


Conch_Shallow_macroalgae_plus <- 100-(100*Conch_Shallow_algae_plus)


Conch_Shallow_plot_plus <- cbind(Conch_Shallow_macroalgae_plus,Conch_Shallow_biomass_plus,Conch_Shallow_stony_coral_plus)

#Conch_Shallow_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Conch_Shallow_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Conch_Shallow_plot_plus <- Conch_Shallow_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Conch_Shallow_plot_plus$CHI_Average_plus <- rowMeans(subset(Conch_Shallow_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus

Conch_Shallow_fish_minus <- Conch_Shallow$Fish_minus/max(Conch_Shallow$Fish_minus)
Conch_Shallow_biomass_minus <- data.frame(Conch_Shallow_fish_minus)

Conch_Shallow_biomass_minus <- 100*Conch_Shallow_biomass_minus


Conch_Shallow_Stony_minus <- Conch_Shallow$Coral_minus/max(Conch_Shallow$Coral_minus)
Conch_Shallow_coral_minus <- data.frame(Conch_Shallow_Stony_minus)

Conch_Shallow_stony_coral_minus <- 100*Conch_Shallow_coral_minus

Conch_Shallow_macro_minus <- ((Conch_Shallow$Macroalgae_minus)/max(Conch_Shallow$Macroalgae_minus))
Conch_Shallow_algae_minus <- data.frame(Conch_Shallow_macro_minus)


Conch_Shallow_macroalgae_minus <- 100-(100*Conch_Shallow_algae_minus)


Conch_Shallow_plot_minus <- cbind(Conch_Shallow_macroalgae_minus,Conch_Shallow_biomass_minus,Conch_Shallow_stony_coral_minus)

#Conch_Shallow_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Conch_Shallow_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Conch_Shallow_plot_minus <- Conch_Shallow_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Conch_Shallow_plot_minus$CHI_Average_minus <- rowMeans(subset(Conch_Shallow_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's

Conch_Shallow_fish <- Conch_Shallow$sum/max(Conch_Shallow$sum)
Conch_Shallow_biomass <- data.frame(Conch_Shallow_fish)

Conch_Shallow_biomass <- 100*Conch_Shallow_biomass


Conch_Shallow_Stony <- Conch_Shallow$Coral_Average/max(Conch_Shallow$Coral_Average)
Conch_Shallow_coral <- data.frame(Conch_Shallow_Stony)

Conch_Shallow_stony_coral <- 100*Conch_Shallow_coral

Conch_Shallow_macro <- Conch_Shallow$Macroalgae_Average/max(Conch_Shallow$Macroalgae_Average)
Conch_Shallow_algae <- data.frame(Conch_Shallow_macro)


Conch_Shallow_macroalgae <- 100-(100*Conch_Shallow_algae)


Conch_Shallow_plot <- cbind(Conch_Shallow_macroalgae,Conch_Shallow_biomass,Conch_Shallow_stony_coral)

Conch_Shallow_plot$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")

colnames(Conch_Shallow_plot) <- c("Macroalgae","Fish_Biomass","Stony_Coral","Year")


Conch_Shallow_plot <- Conch_Shallow_plot %>%
  mutate_if(is.numeric,round,digits = 0)

Conch_Shallow_plot$CHI_Average <- rowMeans(subset(Conch_Shallow_plot, select = c(Macroalgae,Fish_Biomass,Stony_Coral)))
Conch_Shallow_normal <- Conch_Shallow_plot

Conch_Shallow_All <- cbind(Conch_Shallow_plot_plus,Conch_Shallow_plot_minus,Conch_Shallow_normal)


export(Conch_Shallow_All,"Line/UK/Conch_Shallow_SD.csv")
Conch_Shallow_bar <- read.delim("Line/UK/Conch_Shallow_SD.csv", sep=",")
Conch_Shallow_barr <- select(Conch_Shallow_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Conch_Shallow_bar_graph <- melt(Conch_Shallow_barr, id.vars = "Year")


### plot
ggplot(Conch_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Conch Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Conch_Shallow_bar_graph$Year), max(Conch_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/UK/plots/Conch_Shallow_SD.png", width = 8, height = 4)




Grecian_Rocks <- filter(CHI_SD_Master, sitename == "Grecian Rocks")

## Make percentages of sum, stony coral cover, and macroalgae

Grecian_Rocks_fish_plus <- Grecian_Rocks$Fish_plus/max(Grecian_Rocks$Fish_plus)
Grecian_Rocks_biomass_plus <- data.frame(Grecian_Rocks_fish_plus)

Grecian_Rocks_biomass_plus <- 100*Grecian_Rocks_biomass_plus


Grecian_Rocks_Stony_plus <- Grecian_Rocks$Coral_plus/max(Grecian_Rocks$Coral_plus)
Grecian_Rocks_coral_plus <- data.frame(Grecian_Rocks_Stony_plus)

Grecian_Rocks_stony_coral_plus <- 100*Grecian_Rocks_coral_plus

Grecian_Rocks_macro_plus <- ((Grecian_Rocks$Macroalgae_plus)/max(Grecian_Rocks$Macroalgae_plus))
Grecian_Rocks_algae_plus <- data.frame(Grecian_Rocks_macro_plus)


Grecian_Rocks_macroalgae_plus <- 100-(100*Grecian_Rocks_algae_plus)


Grecian_Rocks_plot_plus <- cbind(Grecian_Rocks_macroalgae_plus,Grecian_Rocks_biomass_plus,Grecian_Rocks_stony_coral_plus)

#Grecian_Rocks_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Grecian_Rocks_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Grecian_Rocks_plot_plus <- Grecian_Rocks_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Grecian_Rocks_plot_plus$CHI_Average_plus <- rowMeans(subset(Grecian_Rocks_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Grecian_Rocks_fish_minus <- Grecian_Rocks$Fish_minus/max(Grecian_Rocks$Fish_minus)
Grecian_Rocks_biomass_minus <- data.frame(Grecian_Rocks_fish_minus)

Grecian_Rocks_biomass_minus <- 100*Grecian_Rocks_biomass_minus


Grecian_Rocks_Stony_minus <- Grecian_Rocks$Coral_minus/max(Grecian_Rocks$Coral_minus)
Grecian_Rocks_coral_minus <- data.frame(Grecian_Rocks_Stony_minus)

Grecian_Rocks_stony_coral_minus <- 100*Grecian_Rocks_coral_minus

Grecian_Rocks_macro_minus <- ((Grecian_Rocks$Macroalgae_minus)/max(Grecian_Rocks$Macroalgae_minus))
Grecian_Rocks_algae_minus <- data.frame(Grecian_Rocks_macro_minus)


Grecian_Rocks_macroalgae_minus <- 100-(100*Grecian_Rocks_algae_minus)


Grecian_Rocks_plot_minus <- cbind(Grecian_Rocks_macroalgae_minus,Grecian_Rocks_biomass_minus,Grecian_Rocks_stony_coral_minus)

#Grecian_Rocks_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Grecian_Rocks_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Grecian_Rocks_plot_minus <- Grecian_Rocks_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Grecian_Rocks_plot_minus$CHI_Average_minus <- rowMeans(subset(Grecian_Rocks_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Grecian_Rocks_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/UK/Grecian_Rocks.csv')

Grecian_Rocks_All <- cbind(Grecian_Rocks_plot_plus,Grecian_Rocks_plot_minus,Grecian_Rocks_normal)


export(Grecian_Rocks_All,"Line/UK/Grecian_Rocks_SD.csv")
Grecian_Rocks_bar <- read.delim("Line/UK/Grecian_Rocks_SD.csv", sep=",")
Grecian_Rocks_barr <- select(Grecian_Rocks_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Grecian_Rocks_bar_graph <- melt(Grecian_Rocks_barr, id.vars = "Year")


### plot
ggplot(Grecian_Rocks_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Grecian Rocks")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Grecian_Rocks_bar_graph$Year), max(Grecian_Rocks_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/UK/plots/Grecian_Rocks_SD.png", width = 8, height = 4)




Molasses_Deep <- filter(CHI_SD_Master, sitename == "Molasses Deep")

## Make percentages of sum, stony coral cover, and macroalgae

Molasses_Deep_fish_plus <- Molasses_Deep$Fish_plus/max(Molasses_Deep$Fish_plus)
Molasses_Deep_biomass_plus <- data.frame(Molasses_Deep_fish_plus)

Molasses_Deep_biomass_plus <- 100*Molasses_Deep_biomass_plus


Molasses_Deep_Stony_plus <- Molasses_Deep$Coral_plus/max(Molasses_Deep$Coral_plus)
Molasses_Deep_coral_plus <- data.frame(Molasses_Deep_Stony_plus)

Molasses_Deep_stony_coral_plus <- 100*Molasses_Deep_coral_plus

Molasses_Deep_macro_plus <- ((Molasses_Deep$Macroalgae_plus)/max(Molasses_Deep$Macroalgae_plus))
Molasses_Deep_algae_plus <- data.frame(Molasses_Deep_macro_plus)


Molasses_Deep_macroalgae_plus <- 100-(100*Molasses_Deep_algae_plus)


Molasses_Deep_plot_plus <- cbind(Molasses_Deep_macroalgae_plus,Molasses_Deep_biomass_plus,Molasses_Deep_stony_coral_plus)

#Molasses_Deep_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Molasses_Deep_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Molasses_Deep_plot_plus <- Molasses_Deep_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Molasses_Deep_plot_plus$CHI_Average_plus <- rowMeans(subset(Molasses_Deep_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Molasses_Deep_fish_minus <- Molasses_Deep$Fish_minus/max(Molasses_Deep$Fish_minus)
Molasses_Deep_biomass_minus <- data.frame(Molasses_Deep_fish_minus)

Molasses_Deep_biomass_minus <- 100*Molasses_Deep_biomass_minus


Molasses_Deep_Stony_minus <- Molasses_Deep$Coral_minus/max(Molasses_Deep$Coral_minus)
Molasses_Deep_coral_minus <- data.frame(Molasses_Deep_Stony_minus)

Molasses_Deep_stony_coral_minus <- 100*Molasses_Deep_coral_minus

Molasses_Deep_macro_minus <- ((Molasses_Deep$Macroalgae_minus)/max(Molasses_Deep$Macroalgae_minus))
Molasses_Deep_algae_minus <- data.frame(Molasses_Deep_macro_minus)


Molasses_Deep_macroalgae_minus <- 100-(100*Molasses_Deep_algae_minus)


Molasses_Deep_plot_minus <- cbind(Molasses_Deep_macroalgae_minus,Molasses_Deep_biomass_minus,Molasses_Deep_stony_coral_minus)

#Molasses_Deep_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Molasses_Deep_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Molasses_Deep_plot_minus <- Molasses_Deep_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Molasses_Deep_plot_minus$CHI_Average_minus <- rowMeans(subset(Molasses_Deep_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Molasses_Deep_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/UK/Molasses_Deep.csv')

Molasses_Deep_All <- cbind(Molasses_Deep_plot_plus,Molasses_Deep_plot_minus,Molasses_Deep_normal)


export(Molasses_Deep_All,"Line/UK/Molasses_Deep_SD.csv")
Molasses_Deep_bar <- read.delim("Line/UK/Molasses_Deep_SD.csv", sep=",")
Molasses_Deep_barr <- select(Molasses_Deep_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Molasses_Deep_bar_graph <- melt(Molasses_Deep_barr, id.vars = "Year")


### plot
ggplot(Molasses_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Molasses Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Molasses_Deep_bar_graph$Year), max(Molasses_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/UK/plots/Molasses_Deep_SD.png", width = 8, height = 4)





Molasses_Shallow <- filter(CHI_SD_Master, sitename == "Molasses Shallow")

## Make percentages of sum, stony coral cover, and macroalgae

Molasses_Shallow_fish_plus <- Molasses_Shallow$Fish_plus/max(Molasses_Shallow$Fish_plus)
Molasses_Shallow_biomass_plus <- data.frame(Molasses_Shallow_fish_plus)

Molasses_Shallow_biomass_plus <- 100*Molasses_Shallow_biomass_plus


Molasses_Shallow_Stony_plus <- Molasses_Shallow$Coral_plus/max(Molasses_Shallow$Coral_plus)
Molasses_Shallow_coral_plus <- data.frame(Molasses_Shallow_Stony_plus)

Molasses_Shallow_stony_coral_plus <- 100*Molasses_Shallow_coral_plus

Molasses_Shallow_macro_plus <- ((Molasses_Shallow$Macroalgae_plus)/max(Molasses_Shallow$Macroalgae_plus))
Molasses_Shallow_algae_plus <- data.frame(Molasses_Shallow_macro_plus)


Molasses_Shallow_macroalgae_plus <- 100-(100*Molasses_Shallow_algae_plus)


Molasses_Shallow_plot_plus <- cbind(Molasses_Shallow_macroalgae_plus,Molasses_Shallow_biomass_plus,Molasses_Shallow_stony_coral_plus)

#Molasses_Shallow_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Molasses_Shallow_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Molasses_Shallow_plot_plus <- Molasses_Shallow_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Molasses_Shallow_plot_plus$CHI_Average_plus <- rowMeans(subset(Molasses_Shallow_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Molasses_Shallow_fish_minus <- Molasses_Shallow$Fish_minus/max(Molasses_Shallow$Fish_minus)
Molasses_Shallow_biomass_minus <- data.frame(Molasses_Shallow_fish_minus)

Molasses_Shallow_biomass_minus <- 100*Molasses_Shallow_biomass_minus


Molasses_Shallow_Stony_minus <- Molasses_Shallow$Coral_minus/max(Molasses_Shallow$Coral_minus)
Molasses_Shallow_coral_minus <- data.frame(Molasses_Shallow_Stony_minus)

Molasses_Shallow_stony_coral_minus <- 100*Molasses_Shallow_coral_minus

Molasses_Shallow_macro_minus <- ((Molasses_Shallow$Macroalgae_minus)/max(Molasses_Shallow$Macroalgae_minus))
Molasses_Shallow_algae_minus <- data.frame(Molasses_Shallow_macro_minus)


Molasses_Shallow_macroalgae_minus <- 100-(100*Molasses_Shallow_algae_minus)


Molasses_Shallow_plot_minus <- cbind(Molasses_Shallow_macroalgae_minus,Molasses_Shallow_biomass_minus,Molasses_Shallow_stony_coral_minus)

#Molasses_Shallow_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Molasses_Shallow_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Molasses_Shallow_plot_minus <- Molasses_Shallow_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Molasses_Shallow_plot_minus$CHI_Average_minus <- rowMeans(subset(Molasses_Shallow_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Molasses_Shallow_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/UK/Molasses_Shallow.csv')

Molasses_Shallow_All <- cbind(Molasses_Shallow_plot_plus,Molasses_Shallow_plot_minus,Molasses_Shallow_normal)


export(Molasses_Shallow_All,"Line/UK/Molasses_Shallow_SD.csv")
Molasses_Shallow_bar <- read.delim("Line/UK/Molasses_Shallow_SD.csv", sep=",")
Molasses_Shallow_barr <- select(Molasses_Shallow_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Molasses_Shallow_bar_graph <- melt(Molasses_Shallow_barr, id.vars = "Year")


### plot
ggplot(Molasses_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Molasses Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Molasses_Shallow_bar_graph$Year), max(Molasses_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/UK/plots/Molasses_Shallow_SD.png", width = 8, height = 4)






Porter_Patch <- filter(CHI_SD_Master, sitename == "Porter Patch")

## Make percentages of sum, stony coral cover, and macroalgae

Porter_Patch_fish_plus <- Porter_Patch$Fish_plus/max(Porter_Patch$Fish_plus)
Porter_Patch_biomass_plus <- data.frame(Porter_Patch_fish_plus)

Porter_Patch_biomass_plus <- 100*Porter_Patch_biomass_plus


Porter_Patch_Stony_plus <- Porter_Patch$Coral_plus/max(Porter_Patch$Coral_plus)
Porter_Patch_coral_plus <- data.frame(Porter_Patch_Stony_plus)

Porter_Patch_stony_coral_plus <- 100*Porter_Patch_coral_plus

Porter_Patch_macro_plus <- ((Porter_Patch$Macroalgae_plus)/max(Porter_Patch$Macroalgae_plus))
Porter_Patch_algae_plus <- data.frame(Porter_Patch_macro_plus)


Porter_Patch_macroalgae_plus <- 100-(100*Porter_Patch_algae_plus)


Porter_Patch_plot_plus <- cbind(Porter_Patch_macroalgae_plus,Porter_Patch_biomass_plus,Porter_Patch_stony_coral_plus)

#Porter_Patch_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Porter_Patch_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Porter_Patch_plot_plus <- Porter_Patch_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Porter_Patch_plot_plus$CHI_Average_plus <- rowMeans(subset(Porter_Patch_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus

Porter_Patch_fish_minus <- Porter_Patch$Fish_minus/max(Porter_Patch$Fish_minus)
Porter_Patch_biomass_minus <- data.frame(Porter_Patch_fish_minus)

Porter_Patch_biomass_minus <- 100*Porter_Patch_biomass_minus


Porter_Patch_Stony_minus <- Porter_Patch$Coral_minus/max(Porter_Patch$Coral_minus)
Porter_Patch_coral_minus <- data.frame(Porter_Patch_Stony_minus)

Porter_Patch_stony_coral_minus <- 100*Porter_Patch_coral_minus

Porter_Patch_macro_minus <- ((Porter_Patch$Macroalgae_minus)/max(Porter_Patch$Macroalgae_minus))
Porter_Patch_algae_minus <- data.frame(Porter_Patch_macro_minus)


Porter_Patch_macroalgae_minus <- 100-(100*Porter_Patch_algae_minus)


Porter_Patch_plot_minus <- cbind(Porter_Patch_macroalgae_minus,Porter_Patch_biomass_minus,Porter_Patch_stony_coral_minus)

#Porter_Patch_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Porter_Patch_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Porter_Patch_plot_minus <- Porter_Patch_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Porter_Patch_plot_minus$CHI_Average_minus <- rowMeans(subset(Porter_Patch_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's

Porter_Patch_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/UK/Porter_Patch.csv')

Porter_Patch_All <- cbind(Porter_Patch_plot_plus,Porter_Patch_plot_minus,Porter_Patch_normal)

Porter_Patch_All$Year_plus <- NULL
Porter_Patch_All$Year_minus <- NULL

export(Porter_Patch_All,"Line/UK/Porter_Patch_SD.csv")

Porter_Patch_bar <- read.delim("Line/UK/Porter_Patch_SD.csv", sep=",")
Porter_Patch_barr <- select(Porter_Patch_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Porter_Patch_bar_graph <- melt(Porter_Patch_barr, id.vars = "Year")


### plot
ggplot(Porter_Patch_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Porter Patch")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Porter_Patch_bar_graph$Year), max(Porter_Patch_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/UK/plots/Porter_Patch_SD.png", width = 8, height = 4)



Turtle <- filter(CHI_SD_Master, sitename == "Turtle")

## Make percentages of sum, stony coral cover, and macroalgae

Turtle_fish_plus <- Turtle$Fish_plus/max(Turtle$Fish_plus)
Turtle_biomass_plus <- data.frame(Turtle_fish_plus)

Turtle_biomass_plus <- 100*Turtle_biomass_plus


Turtle_Stony_plus <- Turtle$Coral_plus/max(Turtle$Coral_plus)
Turtle_coral_plus <- data.frame(Turtle_Stony_plus)

Turtle_stony_coral_plus <- 100*Turtle_coral_plus

Turtle_macro_plus <- ((Turtle$Macroalgae_plus)/max(Turtle$Macroalgae_plus))
Turtle_algae_plus <- data.frame(Turtle_macro_plus)


Turtle_macroalgae_plus <- 100-(100*Turtle_algae_plus)


Turtle_plot_plus <- cbind(Turtle_macroalgae_plus,Turtle_biomass_plus,Turtle_stony_coral_plus)

#Turtle_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Turtle_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Turtle_plot_plus <- Turtle_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Turtle_plot_plus$CHI_Average_plus <- rowMeans(subset(Turtle_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus

Turtle_fish_minus <- Turtle$Fish_minus/max(Turtle$Fish_minus)
Turtle_biomass_minus <- data.frame(Turtle_fish_minus)

Turtle_biomass_minus <- 100*Turtle_biomass_minus


Turtle_Stony_minus <- Turtle$Coral_minus/max(Turtle$Coral_minus)
Turtle_coral_minus <- data.frame(Turtle_Stony_minus)

Turtle_stony_coral_minus <- 100*Turtle_coral_minus

Turtle_macro_minus <- ((Turtle$Macroalgae_minus)/max(Turtle$Macroalgae_minus))
Turtle_algae_minus <- data.frame(Turtle_macro_minus)


Turtle_macroalgae_minus <- 100-(100*Turtle_algae_minus)


Turtle_plot_minus <- cbind(Turtle_macroalgae_minus,Turtle_biomass_minus,Turtle_stony_coral_minus)

#Turtle_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Turtle_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Turtle_plot_minus <- Turtle_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Turtle_plot_minus$CHI_Average_minus <- rowMeans(subset(Turtle_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's

Turtle_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/UK/Turtle.csv')

Turtle_All <- cbind(Turtle_plot_plus,Turtle_plot_minus,Turtle_normal)


export(Turtle_All,"Line/UK/Turtle_SD.csv")

Turtle_bar <- read.delim("Line/UK/Turtle_SD.csv", sep=",")
Turtle_barr <- select(Turtle_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Turtle_bar_graph <- melt(Turtle_barr, id.vars = "Year")


### plot
ggplot(Turtle_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Turtle")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Turtle_bar_graph$Year), max(Turtle_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/UK/plots/Turtle_SD.png", width = 8, height = 4)






# Two_Patches <- filter(CHI_SD_Master, sitename == "Two Patches")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Two_Patches_fish_plus <- Two_Patches$Fish_plus/max(Two_Patches$Fish_plus)
# Two_Patches_biomass_plus <- data.frame(Two_Patches_fish_plus)
# 
# Two_Patches_biomass_plus <- 100*Two_Patches_biomass_plus
# 
# 
# Two_Patches_Stony_plus <- Two_Patches$Coral_plus/max(Two_Patches$Coral_plus)
# Two_Patches_coral_plus <- data.frame(Two_Patches_Stony_plus)
# 
# Two_Patches_stony_coral_plus <- 100*Two_Patches_coral_plus
# 
# Two_Patches_macro_plus <- ((Two_Patches$Macroalgae_plus)/max(Two_Patches$Macroalgae_plus))
# Two_Patches_algae_plus <- data.frame(Two_Patches_macro_plus)
# 
# 
# Two_Patches_macroalgae_plus <- 100-(100*Two_Patches_algae_plus)
# 
# 
# Two_Patches_plot_plus <- cbind(Two_Patches_macroalgae_plus,Two_Patches_biomass_plus,Two_Patches_stony_coral_plus)
# 
# #Two_Patches_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Two_Patches_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Two_Patches_plot_plus <- Two_Patches_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Two_Patches_plot_plus$CHI_Average_plus <- rowMeans(subset(Two_Patches_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Two_Patches_fish_minus <- Two_Patches$Fish_minus/max(Two_Patches$Fish_minus)
# Two_Patches_biomass_minus <- data.frame(Two_Patches_fish_minus)
# 
# Two_Patches_biomass_minus <- 100*Two_Patches_biomass_minus
# 
# 
# Two_Patches_Stony_minus <- Two_Patches$Coral_minus/max(Two_Patches$Coral_minus)
# Two_Patches_coral_minus <- data.frame(Two_Patches_Stony_minus)
# 
# Two_Patches_stony_coral_minus <- 100*Two_Patches_coral_minus
# 
# Two_Patches_macro_minus <- ((Two_Patches$Macroalgae_minus)/max(Two_Patches$Macroalgae_minus))
# Two_Patches_algae_minus <- data.frame(Two_Patches_macro_minus)
# 
# 
# Two_Patches_macroalgae_minus <- 100-(100*Two_Patches_algae_minus)
# 
# 
# Two_Patches_plot_minus <- cbind(Two_Patches_macroalgae_minus,Two_Patches_biomass_minus,Two_Patches_stony_coral_minus)
# 
# #Two_Patches_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Two_Patches_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Two_Patches_plot_minus <- Two_Patches_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Two_Patches_plot_minus$CHI_Average_minus <- rowMeans(subset(Two_Patches_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Two_Patches_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/UK/Two_Patches.csv')
# 
# Two_Patches_All <- cbind(Two_Patches_plot_plus,Two_Patches_plot_minus,Two_Patches_normal)
# 
# 
# export(Two_Patches_All,"Line/UK/Two_Patches_SD.csv")
# 



setwd('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/UK/plots')


pdf('UK.pdf')
lapply(ll <- list.files(patt='.*[.]png'),function(x){
  img <- as.raster(readPNG(x))
  grid.newpage()
  grid.raster(img, interpolate = FALSE)
  
})
dev.off()

plots <- lapply(ll <- list.files(patt='.*[.]png'),function(x){
  img <- as.raster(readPNG(x))
  rasterGrob(img, interpolate = FALSE)
})

ggsave("UK_combined.pdf", marrangeGrob(grobs=plots, nrow=2, ncol=4))


setwd('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC')


### Dry Tortugas


Bird_Key_Reef <- filter(CHI_SD_Master, sitename == "Bird Key Reef")

## Make percentages of sum, stony coral cover, and macroalgae

Bird_Key_Reef_fish_plus <- Bird_Key_Reef$Fish_plus/max(Bird_Key_Reef$Fish_plus)
Bird_Key_Reef_biomass_plus <- data.frame(Bird_Key_Reef_fish_plus)

Bird_Key_Reef_biomass_plus <- 100*Bird_Key_Reef_biomass_plus


Bird_Key_Reef_Stony_plus <- Bird_Key_Reef$Coral_plus/max(Bird_Key_Reef$Coral_plus)
Bird_Key_Reef_coral_plus <- data.frame(Bird_Key_Reef_Stony_plus)

Bird_Key_Reef_stony_coral_plus <- 100*Bird_Key_Reef_coral_plus

Bird_Key_Reef_macro_plus <- ((Bird_Key_Reef$Macroalgae_plus)/max(Bird_Key_Reef$Macroalgae_plus))
Bird_Key_Reef_algae_plus <- data.frame(Bird_Key_Reef_macro_plus)


Bird_Key_Reef_macroalgae_plus <- 100-(100*Bird_Key_Reef_algae_plus)


Bird_Key_Reef_plot_plus <- cbind(Bird_Key_Reef_macroalgae_plus,Bird_Key_Reef_biomass_plus,Bird_Key_Reef_stony_coral_plus)

#Bird_Key_Reef_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Bird_Key_Reef_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Bird_Key_Reef_plot_plus <- Bird_Key_Reef_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Bird_Key_Reef_plot_plus$CHI_Average_plus <- rowMeans(subset(Bird_Key_Reef_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Bird_Key_Reef_fish_minus <- Bird_Key_Reef$Fish_minus/max(Bird_Key_Reef$Fish_minus)
Bird_Key_Reef_biomass_minus <- data.frame(Bird_Key_Reef_fish_minus)

Bird_Key_Reef_biomass_minus <- 100*Bird_Key_Reef_biomass_minus


Bird_Key_Reef_Stony_minus <- Bird_Key_Reef$Coral_minus/max(Bird_Key_Reef$Coral_minus)
Bird_Key_Reef_coral_minus <- data.frame(Bird_Key_Reef_Stony_minus)

Bird_Key_Reef_stony_coral_minus <- 100*Bird_Key_Reef_coral_minus

Bird_Key_Reef_macro_minus <- ((Bird_Key_Reef$Macroalgae_minus)/max(Bird_Key_Reef$Macroalgae_minus))
Bird_Key_Reef_algae_minus <- data.frame(Bird_Key_Reef_macro_minus)


Bird_Key_Reef_macroalgae_minus <- 100-(100*Bird_Key_Reef_algae_minus)


Bird_Key_Reef_plot_minus <- cbind(Bird_Key_Reef_macroalgae_minus,Bird_Key_Reef_biomass_minus,Bird_Key_Reef_stony_coral_minus)

#Bird_Key_Reef_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Bird_Key_Reef_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Bird_Key_Reef_plot_minus <- Bird_Key_Reef_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Bird_Key_Reef_plot_minus$CHI_Average_minus <- rowMeans(subset(Bird_Key_Reef_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Bird_Key_Reef_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/DT/Bird_Key_Reef.csv')

Bird_Key_Reef_All <- cbind(Bird_Key_Reef_plot_plus,Bird_Key_Reef_plot_minus,Bird_Key_Reef_normal)


export(Bird_Key_Reef_All,"Line/DT/Bird_Key_Reef_SD.csv")
Bird_Key_Reef_bar <- read.delim("Line/DT/Bird_Key_Reef_SD.csv", sep=",")
Bird_Key_Reef_barr <- select(Bird_Key_Reef_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Bird_Key_Reef_bar_graph <- melt(Bird_Key_Reef_barr, id.vars = "Year")


### plot
ggplot(Bird_Key_Reef_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Bird Key Reef")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Bird_Key_Reef_bar_graph$Year), max(Bird_Key_Reef_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/DT/plots/Bird_Key_Reef_SD.png", width = 8, height = 4)





# Black_Coral_Rock <- filter(CHI_SD_Master, sitename == "Black Coral Rock")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Black_Coral_Rock_fish_plus <- Black_Coral_Rock$Fish_plus/max(Black_Coral_Rock$Fish_plus)
# Black_Coral_Rock_biomass_plus <- data.frame(Black_Coral_Rock_fish_plus)
# 
# Black_Coral_Rock_biomass_plus <- 100*Black_Coral_Rock_biomass_plus
# 
# 
# Black_Coral_Rock_Stony_plus <- Black_Coral_Rock$Coral_plus/max(Black_Coral_Rock$Coral_plus)
# Black_Coral_Rock_coral_plus <- data.frame(Black_Coral_Rock_Stony_plus)
# 
# Black_Coral_Rock_stony_coral_plus <- 100*Black_Coral_Rock_coral_plus
# 
# Black_Coral_Rock_macro_plus <- ((Black_Coral_Rock$Macroalgae_plus)/max(Black_Coral_Rock$Macroalgae_plus))
# Black_Coral_Rock_algae_plus <- data.frame(Black_Coral_Rock_macro_plus)
# 
# 
# Black_Coral_Rock_macroalgae_plus <- 100-(100*Black_Coral_Rock_algae_plus)
# 
# 
# Black_Coral_Rock_plot_plus <- cbind(Black_Coral_Rock_macroalgae_plus,Black_Coral_Rock_biomass_plus,Black_Coral_Rock_stony_coral_plus)
# 
# Black_Coral_Rock_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Black_Coral_Rock_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Black_Coral_Rock_plot_plus <- Black_Coral_Rock_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Black_Coral_Rock_plot_plus$CHI_Average_plus <- rowMeans(subset(Black_Coral_Rock_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Black_Coral_Rock_fish_minus <- Black_Coral_Rock$Fish_minus/max(Black_Coral_Rock$Fish_minus)
# Black_Coral_Rock_biomass_minus <- data.frame(Black_Coral_Rock_fish_minus)
# 
# Black_Coral_Rock_biomass_minus <- 100*Black_Coral_Rock_biomass_minus
# 
# 
# Black_Coral_Rock_Stony_minus <- Black_Coral_Rock$Coral_minus/max(Black_Coral_Rock$Coral_minus)
# Black_Coral_Rock_coral_minus <- data.frame(Black_Coral_Rock_Stony_minus)
# 
# Black_Coral_Rock_stony_coral_minus <- 100*Black_Coral_Rock_coral_minus
# 
# Black_Coral_Rock_macro_minus <- ((Black_Coral_Rock$Macroalgae_minus)/max(Black_Coral_Rock$Macroalgae_minus))
# Black_Coral_Rock_algae_minus <- data.frame(Black_Coral_Rock_macro_minus)
# 
# 
# Black_Coral_Rock_macroalgae_minus <- 100-(100*Black_Coral_Rock_algae_minus)
# 
# 
# Black_Coral_Rock_plot_minus <- cbind(Black_Coral_Rock_macroalgae_minus,Black_Coral_Rock_biomass_minus,Black_Coral_Rock_stony_coral_minus)
# 
# Black_Coral_Rock_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Black_Coral_Rock_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Black_Coral_Rock_plot_minus <- Black_Coral_Rock_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Black_Coral_Rock_plot_minus$CHI_Average_minus <- rowMeans(subset(Black_Coral_Rock_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Black_Coral_Rock_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/DT/Black_Coral_Rock.csv')
# 
# Black_Coral_Rock_All <- cbind(Black_Coral_Rock_plot_plus,Black_Coral_Rock_plot_minus,Black_Coral_Rock_normal)
# 
# Black_Coral_Rock_All$Year_plus <- NULL
# Black_Coral_Rock_All$Year_minus <- NULL
# 
# export(Black_Coral_Rock_All,"Line/DT/Black_Coral_Rock_SD.csv")
# 



# Davis_Rock <- filter(CHI_SD_Master, sitename == "Davis Rock")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Davis_Rock_fish_plus <- Davis_Rock$Fish_plus/max(Davis_Rock$Fish_plus)
# Davis_Rock_biomass_plus <- data.frame(Davis_Rock_fish_plus)
# 
# Davis_Rock_biomass_plus <- 100*Davis_Rock_biomass_plus
# 
# 
# Davis_Rock_Stony_plus <- Davis_Rock$Coral_plus/max(Davis_Rock$Coral_plus)
# Davis_Rock_coral_plus <- data.frame(Davis_Rock_Stony_plus)
# 
# Davis_Rock_stony_coral_plus <- 100*Davis_Rock_coral_plus
# 
# Davis_Rock_macro_plus <- ((Davis_Rock$Macroalgae_plus)/max(Davis_Rock$Macroalgae_plus))
# Davis_Rock_algae_plus <- data.frame(Davis_Rock_macro_plus)
# 
# 
# Davis_Rock_macroalgae_plus <- 100-(100*Davis_Rock_algae_plus)
# 
# 
# Davis_Rock_plot_plus <- cbind(Davis_Rock_macroalgae_plus,Davis_Rock_biomass_plus,Davis_Rock_stony_coral_plus)
# 
# Davis_Rock_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Davis_Rock_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Davis_Rock_plot_plus <- Davis_Rock_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Davis_Rock_plot_plus$CHI_Average_plus <- rowMeans(subset(Davis_Rock_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Davis_Rock_fish_minus <- Davis_Rock$Fish_minus/max(Davis_Rock$Fish_minus)
# Davis_Rock_biomass_minus <- data.frame(Davis_Rock_fish_minus)
# 
# Davis_Rock_biomass_minus <- 100*Davis_Rock_biomass_minus
# 
# 
# Davis_Rock_Stony_minus <- Davis_Rock$Coral_minus/max(Davis_Rock$Coral_minus)
# Davis_Rock_coral_minus <- data.frame(Davis_Rock_Stony_minus)
# 
# Davis_Rock_stony_coral_minus <- 100*Davis_Rock_coral_minus
# 
# Davis_Rock_macro_minus <- ((Davis_Rock$Macroalgae_minus)/max(Davis_Rock$Macroalgae_minus))
# Davis_Rock_algae_minus <- data.frame(Davis_Rock_macro_minus)
# 
# 
# Davis_Rock_macroalgae_minus <- 100-(100*Davis_Rock_algae_minus)
# 
# 
# Davis_Rock_plot_minus <- cbind(Davis_Rock_macroalgae_minus,Davis_Rock_biomass_minus,Davis_Rock_stony_coral_minus)
# 
# Davis_Rock_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Davis_Rock_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Davis_Rock_plot_minus <- Davis_Rock_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Davis_Rock_plot_minus$CHI_Average_minus <- rowMeans(subset(Davis_Rock_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Davis_Rock_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/DT/Davis_Rock.csv')
# 
# Davis_Rock_All <- cbind(Davis_Rock_plot_plus,Davis_Rock_plot_minus,Davis_Rock_normal)
# 
# Davis_Rock_All$Year_plus <- NULL
# Davis_Rock_All$Year_minus <- NULL
# 
# export(Davis_Rock_All,"Line/DT/Davis_Rock_SD.csv")
# 

Loggerhead_Patch <- filter(CHI_SD_Master, sitename == "Loggerhead Patch")

## Make percentages of sum, stony coral cover, and macroalgae

Loggerhead_Patch_fish_plus <- Loggerhead_Patch$Fish_plus/max(Loggerhead_Patch$Fish_plus)
Loggerhead_Patch_biomass_plus <- data.frame(Loggerhead_Patch_fish_plus)

Loggerhead_Patch_biomass_plus <- 100*Loggerhead_Patch_biomass_plus


Loggerhead_Patch_Stony_plus <- Loggerhead_Patch$Coral_plus/max(Loggerhead_Patch$Coral_plus)
Loggerhead_Patch_coral_plus <- data.frame(Loggerhead_Patch_Stony_plus)

Loggerhead_Patch_stony_coral_plus <- 100*Loggerhead_Patch_coral_plus

Loggerhead_Patch_macro_plus <- ((Loggerhead_Patch$Macroalgae_plus)/max(Loggerhead_Patch$Macroalgae_plus))
Loggerhead_Patch_algae_plus <- data.frame(Loggerhead_Patch_macro_plus)


Loggerhead_Patch_macroalgae_plus <- 100-(100*Loggerhead_Patch_algae_plus)


Loggerhead_Patch_plot_plus <- cbind(Loggerhead_Patch_macroalgae_plus,Loggerhead_Patch_biomass_plus,Loggerhead_Patch_stony_coral_plus)

#Loggerhead_Patch_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Loggerhead_Patch_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Loggerhead_Patch_plot_plus <- Loggerhead_Patch_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Loggerhead_Patch_plot_plus$CHI_Average_plus <- rowMeans(subset(Loggerhead_Patch_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Loggerhead_Patch_fish_minus <- Loggerhead_Patch$Fish_minus/max(Loggerhead_Patch$Fish_minus)
Loggerhead_Patch_biomass_minus <- data.frame(Loggerhead_Patch_fish_minus)

Loggerhead_Patch_biomass_minus <- 100*Loggerhead_Patch_biomass_minus


Loggerhead_Patch_Stony_minus <- Loggerhead_Patch$Coral_minus/max(Loggerhead_Patch$Coral_minus)
Loggerhead_Patch_coral_minus <- data.frame(Loggerhead_Patch_Stony_minus)

Loggerhead_Patch_stony_coral_minus <- 100*Loggerhead_Patch_coral_minus

Loggerhead_Patch_macro_minus <- ((Loggerhead_Patch$Macroalgae_minus)/max(Loggerhead_Patch$Macroalgae_minus))
Loggerhead_Patch_algae_minus <- data.frame(Loggerhead_Patch_macro_minus)


Loggerhead_Patch_macroalgae_minus <- 100-(100*Loggerhead_Patch_algae_minus)


Loggerhead_Patch_plot_minus <- cbind(Loggerhead_Patch_macroalgae_minus,Loggerhead_Patch_biomass_minus,Loggerhead_Patch_stony_coral_minus)

#Loggerhead_Patch_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Loggerhead_Patch_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Loggerhead_Patch_plot_minus <- Loggerhead_Patch_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Loggerhead_Patch_plot_minus$CHI_Average_minus <- rowMeans(subset(Loggerhead_Patch_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Loggerhead_Patch_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/DT/Loggerhead_Patch.csv')

Loggerhead_Patch_All <- cbind(Loggerhead_Patch_plot_plus,Loggerhead_Patch_plot_minus,Loggerhead_Patch_normal)


export(Loggerhead_Patch_All,"Line/DT/Loggerhead_Patch_SD.csv")
Loggerhead_Patch_bar <- read.delim("Line/DT/Loggerhead_Patch_SD.csv", sep=",")
Loggerhead_Patch_barr <- select(Loggerhead_Patch_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Loggerhead_Patch_bar_graph <- melt(Loggerhead_Patch_barr, id.vars = "Year")


### plot
ggplot(Loggerhead_Patch_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Loggerhead Patch")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Loggerhead_Patch_bar_graph$Year), max(Loggerhead_Patch_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/DT/plots/Loggerhead_Patch_SD.png", width = 8, height = 4)





# Mayers_Peak <- filter(CHI_SD_Master, sitename == "Mayers Peak")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Mayers_Peak_fish_plus <- Mayers_Peak$Fish_plus/max(Mayers_Peak$Fish_plus)
# Mayers_Peak_biomass_plus <- data.frame(Mayers_Peak_fish_plus)
# 
# Mayers_Peak_biomass_plus <- 100*Mayers_Peak_biomass_plus
# 
# 
# Mayers_Peak_Stony_plus <- Mayers_Peak$Coral_plus/max(Mayers_Peak$Coral_plus)
# Mayers_Peak_coral_plus <- data.frame(Mayers_Peak_Stony_plus)
# 
# Mayers_Peak_stony_coral_plus <- 100*Mayers_Peak_coral_plus
# 
# Mayers_Peak_macro_plus <- ((Mayers_Peak$Macroalgae_plus)/max(Mayers_Peak$Macroalgae_plus))
# Mayers_Peak_algae_plus <- data.frame(Mayers_Peak_macro_plus)
# 
# 
# Mayers_Peak_macroalgae_plus <- 100-(100*Mayers_Peak_algae_plus)
# 
# 
# Mayers_Peak_plot_plus <- cbind(Mayers_Peak_macroalgae_plus,Mayers_Peak_biomass_plus,Mayers_Peak_stony_coral_plus)
# 
# Mayers_Peak_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Mayers_Peak_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Mayers_Peak_plot_plus <- Mayers_Peak_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Mayers_Peak_plot_plus$CHI_Average_plus <- rowMeans(subset(Mayers_Peak_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Mayers_Peak_fish_minus <- Mayers_Peak$Fish_minus/max(Mayers_Peak$Fish_minus)
# Mayers_Peak_biomass_minus <- data.frame(Mayers_Peak_fish_minus)
# 
# Mayers_Peak_biomass_minus <- 100*Mayers_Peak_biomass_minus
# 
# 
# Mayers_Peak_Stony_minus <- Mayers_Peak$Coral_minus/max(Mayers_Peak$Coral_minus)
# Mayers_Peak_coral_minus <- data.frame(Mayers_Peak_Stony_minus)
# 
# Mayers_Peak_stony_coral_minus <- 100*Mayers_Peak_coral_minus
# 
# Mayers_Peak_macro_minus <- ((Mayers_Peak$Macroalgae_minus)/max(Mayers_Peak$Macroalgae_minus))
# Mayers_Peak_algae_minus <- data.frame(Mayers_Peak_macro_minus)
# 
# 
# Mayers_Peak_macroalgae_minus <- 100-(100*Mayers_Peak_algae_minus)
# 
# 
# Mayers_Peak_plot_minus <- cbind(Mayers_Peak_macroalgae_minus,Mayers_Peak_biomass_minus,Mayers_Peak_stony_coral_minus)
# 
# Mayers_Peak_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Mayers_Peak_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Mayers_Peak_plot_minus <- Mayers_Peak_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Mayers_Peak_plot_minus$CHI_Average_minus <- rowMeans(subset(Mayers_Peak_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Mayers_Peak_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/DT/Mayers_Peak.csv')
# 
# Mayers_Peak_All <- cbind(Mayers_Peak_plot_plus,Mayers_Peak_plot_minus,Mayers_Peak_normal)
# 
# Mayers_Peak_All$Year_plus <- NULL
# Mayers_Peak_All$Year_minus <- NULL
# 
# export(Mayers_Peak_All,"Line/DT/Mayers_Peak_SD.csv")
# 
# 
# 
# Maze <- filter(CHI_SD_Master, sitename == "Maze")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Maze_fish_plus <- Maze$Fish_plus/max(Maze$Fish_plus)
# Maze_biomass_plus <- data.frame(Maze_fish_plus)
# 
# Maze_biomass_plus <- 100*Maze_biomass_plus
# 
# 
# Maze_Stony_plus <- Maze$Coral_plus/max(Maze$Coral_plus)
# Maze_coral_plus <- data.frame(Maze_Stony_plus)
# 
# Maze_stony_coral_plus <- 100*Maze_coral_plus
# 
# Maze_macro_plus <- ((Maze$Macroalgae_plus)/max(Maze$Macroalgae_plus))
# Maze_algae_plus <- data.frame(Maze_macro_plus)
# 
# 
# Maze_macroalgae_plus <- 100-(100*Maze_algae_plus)
# 
# 
# Maze_plot_plus <- cbind(Maze_macroalgae_plus,Maze_biomass_plus,Maze_stony_coral_plus)
# 
# Maze_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Maze_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Maze_plot_plus <- Maze_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Maze_plot_plus$CHI_Average_plus <- rowMeans(subset(Maze_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Maze_fish_minus <- Maze$Fish_minus/max(Maze$Fish_minus)
# Maze_biomass_minus <- data.frame(Maze_fish_minus)
# 
# Maze_biomass_minus <- 100*Maze_biomass_minus
# 
# 
# Maze_Stony_minus <- Maze$Coral_minus/max(Maze$Coral_minus)
# Maze_coral_minus <- data.frame(Maze_Stony_minus)
# 
# Maze_stony_coral_minus <- 100*Maze_coral_minus
# 
# Maze_macro_minus <- ((Maze$Macroalgae_minus)/max(Maze$Macroalgae_minus))
# Maze_algae_minus <- data.frame(Maze_macro_minus)
# 
# 
# Maze_macroalgae_minus <- 100-(100*Maze_algae_minus)
# 
# 
# Maze_plot_minus <- cbind(Maze_macroalgae_minus,Maze_biomass_minus,Maze_stony_coral_minus)
# 
# Maze_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Maze_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Maze_plot_minus <- Maze_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Maze_plot_minus$CHI_Average_minus <- rowMeans(subset(Maze_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Maze_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/DT/Maze.csv')
# 
# Maze_All <- cbind(Maze_plot_plus,Maze_plot_minus,Maze_normal)
# 
# Maze_All$Year_plus <- NULL
# Maze_All$Year_minus <- NULL
# 
# export(Maze_All,"Line/DT/Maze_SD.csv")
# 

Palmata_Patch <- filter(CHI_SD_Master, sitename == "Palmata Patch")

## Make percentages of sum, stony coral cover, and macroalgae

Palmata_Patch_fish_plus <- Palmata_Patch$Fish_plus/max(Palmata_Patch$Fish_plus)
Palmata_Patch_biomass_plus <- data.frame(Palmata_Patch_fish_plus)

Palmata_Patch_biomass_plus <- 100*Palmata_Patch_biomass_plus


Palmata_Patch_Stony_plus <- Palmata_Patch$Coral_plus/max(Palmata_Patch$Coral_plus)
Palmata_Patch_coral_plus <- data.frame(Palmata_Patch_Stony_plus)

Palmata_Patch_stony_coral_plus <- 100*Palmata_Patch_coral_plus

Palmata_Patch_macro_plus <- ((Palmata_Patch$Macroalgae_plus)/max(Palmata_Patch$Macroalgae_plus))
Palmata_Patch_algae_plus <- data.frame(Palmata_Patch_macro_plus)


Palmata_Patch_macroalgae_plus <- 100-(100*Palmata_Patch_algae_plus)


Palmata_Patch_plot_plus <- cbind(Palmata_Patch_macroalgae_plus,Palmata_Patch_biomass_plus,Palmata_Patch_stony_coral_plus)

#Palmata_Patch_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Palmata_Patch_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Palmata_Patch_plot_plus <- Palmata_Patch_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Palmata_Patch_plot_plus$CHI_Average_plus <- rowMeans(subset(Palmata_Patch_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Palmata_Patch_fish_minus <- Palmata_Patch$Fish_minus/max(Palmata_Patch$Fish_minus)
Palmata_Patch_biomass_minus <- data.frame(Palmata_Patch_fish_minus)

Palmata_Patch_biomass_minus <- 100*Palmata_Patch_biomass_minus


Palmata_Patch_Stony_minus <- Palmata_Patch$Coral_minus/max(Palmata_Patch$Coral_minus)
Palmata_Patch_coral_minus <- data.frame(Palmata_Patch_Stony_minus)

Palmata_Patch_stony_coral_minus <- 100*Palmata_Patch_coral_minus

Palmata_Patch_macro_minus <- ((Palmata_Patch$Macroalgae_minus)/max(Palmata_Patch$Macroalgae_minus))
Palmata_Patch_algae_minus <- data.frame(Palmata_Patch_macro_minus)


Palmata_Patch_macroalgae_minus <- 100-(100*Palmata_Patch_algae_minus)


Palmata_Patch_plot_minus <- cbind(Palmata_Patch_macroalgae_minus,Palmata_Patch_biomass_minus,Palmata_Patch_stony_coral_minus)

#Palmata_Patch_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Palmata_Patch_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Palmata_Patch_plot_minus <- Palmata_Patch_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Palmata_Patch_plot_minus$CHI_Average_minus <- rowMeans(subset(Palmata_Patch_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Palmata_Patch_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/DT/Palmata_Patch.csv')

Palmata_Patch_All <- cbind(Palmata_Patch_plot_plus,Palmata_Patch_plot_minus,Palmata_Patch_normal)


export(Palmata_Patch_All,"Line/DT/Palmata_Patch_SD.csv")

Palmata_Patch_bar <- read.delim("Line/DT/Palmata_Patch_SD.csv", sep=",")
Palmata_Patch_barr <- select(Palmata_Patch_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Palmata_Patch_bar_graph <- melt(Palmata_Patch_barr, id.vars = "Year")


### plot
ggplot(Palmata_Patch_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Palmata Patch")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Palmata_Patch_bar_graph$Year), max(Palmata_Patch_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/DT/plots/Palmata_Patch_SD.png", width = 8, height = 4)




Prolifera_Patch <- filter(CHI_SD_Master, sitename == "Prolifera Patch")

## Make percentages of sum, stony coral cover, and macroalgae

Prolifera_Patch_fish_plus <- Prolifera_Patch$Fish_plus/max(Prolifera_Patch$Fish_plus)
Prolifera_Patch_biomass_plus <- data.frame(Prolifera_Patch_fish_plus)

Prolifera_Patch_biomass_plus <- 100*Prolifera_Patch_biomass_plus


Prolifera_Patch_Stony_plus <- Prolifera_Patch$Coral_plus/max(Prolifera_Patch$Coral_plus)
Prolifera_Patch_coral_plus <- data.frame(Prolifera_Patch_Stony_plus)

Prolifera_Patch_stony_coral_plus <- 100*Prolifera_Patch_coral_plus

Prolifera_Patch_macro_plus <- ((Prolifera_Patch$Macroalgae_plus)/max(Prolifera_Patch$Macroalgae_plus))
Prolifera_Patch_algae_plus <- data.frame(Prolifera_Patch_macro_plus)


Prolifera_Patch_macroalgae_plus <- 100-(100*Prolifera_Patch_algae_plus)


Prolifera_Patch_plot_plus <- cbind(Prolifera_Patch_macroalgae_plus,Prolifera_Patch_biomass_plus,Prolifera_Patch_stony_coral_plus)

#Prolifera_Patch_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Prolifera_Patch_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Prolifera_Patch_plot_plus <- Prolifera_Patch_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Prolifera_Patch_plot_plus$CHI_Average_plus <- rowMeans(subset(Prolifera_Patch_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Prolifera_Patch_fish_minus <- Prolifera_Patch$Fish_minus/max(Prolifera_Patch$Fish_minus)
Prolifera_Patch_biomass_minus <- data.frame(Prolifera_Patch_fish_minus)

Prolifera_Patch_biomass_minus <- 100*Prolifera_Patch_biomass_minus


Prolifera_Patch_Stony_minus <- Prolifera_Patch$Coral_minus/max(Prolifera_Patch$Coral_minus)
Prolifera_Patch_coral_minus <- data.frame(Prolifera_Patch_Stony_minus)

Prolifera_Patch_stony_coral_minus <- 100*Prolifera_Patch_coral_minus

Prolifera_Patch_macro_minus <- ((Prolifera_Patch$Macroalgae_minus)/max(Prolifera_Patch$Macroalgae_minus))
Prolifera_Patch_algae_minus <- data.frame(Prolifera_Patch_macro_minus)


Prolifera_Patch_macroalgae_minus <- 100-(100*Prolifera_Patch_algae_minus)


Prolifera_Patch_plot_minus <- cbind(Prolifera_Patch_macroalgae_minus,Prolifera_Patch_biomass_minus,Prolifera_Patch_stony_coral_minus)

#Prolifera_Patch_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Prolifera_Patch_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Prolifera_Patch_plot_minus <- Prolifera_Patch_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Prolifera_Patch_plot_minus$CHI_Average_minus <- rowMeans(subset(Prolifera_Patch_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Prolifera_Patch_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/DT/Prolifera_Patch.csv')

Prolifera_Patch_All <- cbind(Prolifera_Patch_plot_plus,Prolifera_Patch_plot_minus,Prolifera_Patch_normal)


export(Prolifera_Patch_All,"Line/DT/Prolifera_Patch_SD.csv")

Prolifera_Patch_bar <- read.delim("Line/DT/Prolifera_Patch_SD.csv", sep=",")
Prolifera_Patch_barr <- select(Prolifera_Patch_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Prolifera_Patch_bar_graph <- melt(Prolifera_Patch_barr, id.vars = "Year")


### plot
ggplot(Prolifera_Patch_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Prolifera Patch")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Prolifera_Patch_bar_graph$Year), max(Prolifera_Patch_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/DT/plots/Prolifera_Patch_SD.png", width = 8, height = 4)




Temptation_Rock <- filter(CHI_SD_Master, sitename == "Temptation Rock")

## Make percentages of sum, stony coral cover, and macroalgae

Temptation_Rock_fish_plus <- Temptation_Rock$Fish_plus/max(Temptation_Rock$Fish_plus)
Temptation_Rock_biomass_plus <- data.frame(Temptation_Rock_fish_plus)

Temptation_Rock_biomass_plus <- 100*Temptation_Rock_biomass_plus


Temptation_Rock_Stony_plus <- Temptation_Rock$Coral_plus/max(Temptation_Rock$Coral_plus)
Temptation_Rock_coral_plus <- data.frame(Temptation_Rock_Stony_plus)

Temptation_Rock_stony_coral_plus <- 100*Temptation_Rock_coral_plus

Temptation_Rock_macro_plus <- ((Temptation_Rock$Macroalgae_plus)/max(Temptation_Rock$Macroalgae_plus))
Temptation_Rock_algae_plus <- data.frame(Temptation_Rock_macro_plus)


Temptation_Rock_macroalgae_plus <- 100-(100*Temptation_Rock_algae_plus)


Temptation_Rock_plot_plus <- cbind(Temptation_Rock_macroalgae_plus,Temptation_Rock_biomass_plus,Temptation_Rock_stony_coral_plus)

#Temptation_Rock_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Temptation_Rock_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


Temptation_Rock_plot_plus <- Temptation_Rock_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


Temptation_Rock_plot_plus$CHI_Average_plus <- rowMeans(subset(Temptation_Rock_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

Temptation_Rock_fish_minus <- Temptation_Rock$Fish_minus/max(Temptation_Rock$Fish_minus)
Temptation_Rock_biomass_minus <- data.frame(Temptation_Rock_fish_minus)

Temptation_Rock_biomass_minus <- 100*Temptation_Rock_biomass_minus


Temptation_Rock_Stony_minus <- Temptation_Rock$Coral_minus/max(Temptation_Rock$Coral_minus)
Temptation_Rock_coral_minus <- data.frame(Temptation_Rock_Stony_minus)

Temptation_Rock_stony_coral_minus <- 100*Temptation_Rock_coral_minus

Temptation_Rock_macro_minus <- ((Temptation_Rock$Macroalgae_minus)/max(Temptation_Rock$Macroalgae_minus))
Temptation_Rock_algae_minus <- data.frame(Temptation_Rock_macro_minus)


Temptation_Rock_macroalgae_minus <- 100-(100*Temptation_Rock_algae_minus)


Temptation_Rock_plot_minus <- cbind(Temptation_Rock_macroalgae_minus,Temptation_Rock_biomass_minus,Temptation_Rock_stony_coral_minus)

#Temptation_Rock_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(Temptation_Rock_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


Temptation_Rock_plot_minus <- Temptation_Rock_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


Temptation_Rock_plot_minus$CHI_Average_minus <- rowMeans(subset(Temptation_Rock_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

Temptation_Rock_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/DT/Temptation_Rock.csv')

Temptation_Rock_All <- cbind(Temptation_Rock_plot_plus,Temptation_Rock_plot_minus,Temptation_Rock_normal)


export(Temptation_Rock_All,"Line/DT/Temptation_Rock_SD.csv")

Temptation_Rock_bar <- read.delim("Line/DT/Temptation_Rock_SD.csv", sep=",")
Temptation_Rock_barr <- select(Temptation_Rock_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


Temptation_Rock_bar_graph <- melt(Temptation_Rock_barr, id.vars = "Year")


### plot
ggplot(Temptation_Rock_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Temptation Rock")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(Temptation_Rock_bar_graph$Year), max(Temptation_Rock_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/DT/plots/Temptation_Rock_SD.png", width = 8, height = 4)




# Texas_Rock <- filter(CHI_SD_Master, sitename == "Texas_Rock")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Texas_Rock_fish_plus <- Texas_Rock$Fish_plus/max(Texas_Rock$Fish_plus)
# Texas_Rock_biomass_plus <- data.frame(Texas_Rock_fish_plus)
# 
# Texas_Rock_biomass_plus <- 100*Texas_Rock_biomass_plus
# 
# 
# Texas_Rock_Stony_plus <- Texas_Rock$Coral_plus/max(Texas_Rock$Coral_plus)
# Texas_Rock_coral_plus <- data.frame(Texas_Rock_Stony_plus)
# 
# Texas_Rock_stony_coral_plus <- 100*Texas_Rock_coral_plus
# 
# Texas_Rock_macro_plus <- ((Texas_Rock$Macroalgae_plus)/max(Texas_Rock$Macroalgae_plus))
# Texas_Rock_algae_plus <- data.frame(Texas_Rock_macro_plus)
# 
# 
# Texas_Rock_macroalgae_plus <- 100-(100*Texas_Rock_algae_plus)
# 
# 
# Texas_Rock_plot_plus <- cbind(Texas_Rock_macroalgae_plus,Texas_Rock_biomass_plus,Texas_Rock_stony_coral_plus)
# 
# Texas_Rock_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Texas_Rock_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Texas_Rock_plot_plus <- Texas_Rock_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Texas_Rock_plot_plus$CHI_Average_plus <- rowMeans(subset(Texas_Rock_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Texas_Rock_fish_minus <- Texas_Rock$Fish_minus/max(Texas_Rock$Fish_minus)
# Texas_Rock_biomass_minus <- data.frame(Texas_Rock_fish_minus)
# 
# Texas_Rock_biomass_minus <- 100*Texas_Rock_biomass_minus
# 
# 
# Texas_Rock_Stony_minus <- Texas_Rock$Coral_minus/max(Texas_Rock$Coral_minus)
# Texas_Rock_coral_minus <- data.frame(Texas_Rock_Stony_minus)
# 
# Texas_Rock_stony_coral_minus <- 100*Texas_Rock_coral_minus
# 
# Texas_Rock_macro_minus <- ((Texas_Rock$Macroalgae_minus)/max(Texas_Rock$Macroalgae_minus))
# Texas_Rock_algae_minus <- data.frame(Texas_Rock_macro_minus)
# 
# 
# Texas_Rock_macroalgae_minus <- 100-(100*Texas_Rock_algae_minus)
# 
# 
# Texas_Rock_plot_minus <- cbind(Texas_Rock_macroalgae_minus,Texas_Rock_biomass_minus,Texas_Rock_stony_coral_minus)
# 
# Texas_Rock_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Texas_Rock_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Texas_Rock_plot_minus <- Texas_Rock_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Texas_Rock_plot_minus$CHI_Average_minus <- rowMeans(subset(Texas_Rock_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Texas_Rock_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/DT/Texas_Rock.csv')
# 
# Texas_Rock_All <- cbind(Texas_Rock_plot_plus,Texas_Rock_plot_minus,Texas_Rock_normal)
# 
# Texas_Rock_All$Year_plus <- NULL
# Texas_Rock_All$Year_minus <- NULL
# 
# export(Texas_Rock_All,"Line/DT/Texas_Rock_SD.csv")


White_Shoal <- filter(CHI_SD_Master, sitename == "White Shoal")
#White_Shoal <- White_Shoal[-6,]
## Make percentages of sum, stony coral cover, and macroalgae

White_Shoal_fish_plus <- White_Shoal$Fish_plus/max(White_Shoal$Fish_plus)
White_Shoal_biomass_plus <- data.frame(White_Shoal_fish_plus)

White_Shoal_biomass_plus <- 100*White_Shoal_biomass_plus


White_Shoal_Stony_plus <- White_Shoal$Coral_plus/max(White_Shoal$Coral_plus)
White_Shoal_coral_plus <- data.frame(White_Shoal_Stony_plus)

White_Shoal_stony_coral_plus <- 100*White_Shoal_coral_plus

White_Shoal_macro_plus <- ((White_Shoal$Macroalgae_plus)/max(White_Shoal$Macroalgae_plus))
White_Shoal_algae_plus <- data.frame(White_Shoal_macro_plus)


White_Shoal_macroalgae_plus <- 100-(100*White_Shoal_algae_plus)


White_Shoal_plot_plus <- cbind(White_Shoal_macroalgae_plus,White_Shoal_biomass_plus,White_Shoal_stony_coral_plus)

#White_Shoal_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(White_Shoal_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")


White_Shoal_plot_plus <- White_Shoal_plot_plus %>%
  mutate_if(is.numeric,round,digits = 0)


White_Shoal_plot_plus$CHI_Average_plus <- rowMeans(subset(White_Shoal_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))


### Minus 

White_Shoal_fish_minus <- White_Shoal$Fish_minus/max(White_Shoal$Fish_minus)
White_Shoal_biomass_minus <- data.frame(White_Shoal_fish_minus)

White_Shoal_biomass_minus <- 100*White_Shoal_biomass_minus


White_Shoal_Stony_minus <- White_Shoal$Coral_minus/max(White_Shoal$Coral_minus)
White_Shoal_coral_minus <- data.frame(White_Shoal_Stony_minus)

White_Shoal_stony_coral_minus <- 100*White_Shoal_coral_minus

White_Shoal_macro_minus <- ((White_Shoal$Macroalgae_minus)/max(White_Shoal$Macroalgae_minus))
White_Shoal_algae_minus <- data.frame(White_Shoal_macro_minus)


White_Shoal_macroalgae_minus <- 100-(100*White_Shoal_algae_minus)


White_Shoal_plot_minus <- cbind(White_Shoal_macroalgae_minus,White_Shoal_biomass_minus,White_Shoal_stony_coral_minus)

#White_Shoal_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")


colnames(White_Shoal_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")


White_Shoal_plot_minus <- White_Shoal_plot_minus %>%
  mutate_if(is.numeric,round,digits = 0)


White_Shoal_plot_minus$CHI_Average_minus <- rowMeans(subset(White_Shoal_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))


## Add in normal and combine with SD CHI's 

White_Shoal_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/DT/White_Shoal.csv')
#White_Shoal_normal <- White_Shoal_normal[-6,]

White_Shoal_All <- cbind(White_Shoal_plot_plus,White_Shoal_plot_minus,White_Shoal_normal)


export(White_Shoal_All,"Line/DT/White_Shoal_SD.csv")

White_Shoal_bar <- read.delim("Line/DT/White_Shoal_SD.csv", sep=",")
White_Shoal_barr <- select(White_Shoal_bar,CHI_Average_minus,CHI_Average_plus,CHI_Average,Year)


White_Shoal_bar_graph <- melt(White_Shoal_barr, id.vars = "Year")


### plot
ggplot(White_Shoal_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "White Shoal")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 20, fill = 'Very Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 20.5, ymax = 40, fill = 'Degraded'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 40.5, ymax = 60,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 60.5, ymax = 80, fill = 'Healthy'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 80.5, ymax = Inf, fill = 'Very Healthy'), alpha = .05)+
  geom_line(aes(color = variable), size = 1)+
  geom_point()+
  scale_x_continuous(breaks = round(seq(min(White_Shoal_bar_graph$Year), max(White_Shoal_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0, 100), breaks = seq(0, 100, by = 20))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("Minus SD","Plus SD","CHI Average"),
                     values=c("black", "black", "red"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Healthy","Healthy","Fair","Degraded","Very Degraded"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("CHI %")

ggsave ("Line/DT/plots/White_Shoal_SD.png", width = 8, height = 4)




setwd('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/DT/plots')


pdf('DT.pdf')
lapply(ll <- list.files(patt='.*[.]png'),function(x){
  img <- as.raster(readPNG(x))
  grid.newpage()
  grid.raster(img, interpolate = FALSE)
  
})
dev.off()

plots <- lapply(ll <- list.files(patt='.*[.]png'),function(x){
  img <- as.raster(readPNG(x))
  rasterGrob(img, interpolate = FALSE)
})

ggsave("DT_combined.pdf", marrangeGrob(grobs=plots, nrow=2, ncol=4))


setwd('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC')

### Southeast Florida 


# Broward_County_1 <- filter(CHI_SD_Master, sitename == "Broward County 1")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Broward_County_1_fish_plus <- Broward_County_1$Fish_plus/max(Broward_County_1$Fish_plus)
# Broward_County_1_biomass_plus <- data.frame(Broward_County_1_fish_plus)
# 
# Broward_County_1_biomass_plus <- 100*Broward_County_1_biomass_plus
# 
# 
# Broward_County_1_Stony_plus <- Broward_County_1$Coral_plus/max(Broward_County_1$Coral_plus)
# Broward_County_1_coral_plus <- data.frame(Broward_County_1_Stony_plus)
# 
# Broward_County_1_stony_coral_plus <- 100*Broward_County_1_coral_plus
# 
# Broward_County_1_macro_plus <- ((Broward_County_1$Macroalgae_plus)/max(Broward_County_1$Macroalgae_plus))
# Broward_County_1_algae_plus <- data.frame(Broward_County_1_macro_plus)
# 
# 
# Broward_County_1_macroalgae_plus <- 100-(100*Broward_County_1_algae_plus)
# 
# 
# Broward_County_1_plot_plus <- cbind(Broward_County_1_macroalgae_plus,Broward_County_1_biomass_plus,Broward_County_1_stony_coral_plus)
# 
# #Broward_County_1_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Broward_County_1_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Broward_County_1_plot_plus <- Broward_County_1_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Broward_County_1_plot_plus$CHI_Average_plus <- rowMeans(subset(Broward_County_1_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Broward_County_1_fish_minus <- Broward_County_1$Fish_minus/max(Broward_County_1$Fish_minus)
# Broward_County_1_biomass_minus <- data.frame(Broward_County_1_fish_minus)
# 
# Broward_County_1_biomass_minus <- 100*Broward_County_1_biomass_minus
# 
# 
# Broward_County_1_Stony_minus <- Broward_County_1$Coral_minus/max(Broward_County_1$Coral_minus)
# Broward_County_1_coral_minus <- data.frame(Broward_County_1_Stony_minus)
# 
# Broward_County_1_stony_coral_minus <- 100*Broward_County_1_coral_minus
# 
# Broward_County_1_macro_minus <- ((Broward_County_1$Macroalgae_minus)/max(Broward_County_1$Macroalgae_minus))
# Broward_County_1_algae_minus <- data.frame(Broward_County_1_macro_minus)
# 
# 
# Broward_County_1_macroalgae_minus <- 100-(100*Broward_County_1_algae_minus)
# 
# 
# Broward_County_1_plot_minus <- cbind(Broward_County_1_macroalgae_minus,Broward_County_1_biomass_minus,Broward_County_1_stony_coral_minus)
# 
# #Broward_County_1_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Broward_County_1_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Broward_County_1_plot_minus <- Broward_County_1_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Broward_County_1_plot_minus$CHI_Average_minus <- rowMeans(subset(Broward_County_1_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Broward_County_1_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/SEF/Broward_County_1.csv')
# 
# Broward_County_1_All <- cbind(Broward_County_1_plot_plus,Broward_County_1_plot_minus,Broward_County_1_normal)
# 
# 
# export(Broward_County_1_All,"Line/SEF/Broward_County_1_SD.csv")
# 



# Broward_County_2 <- filter(CHI_SD_Master, sitename == "Broward County 2")
# Broward_County_2 <- Broward_County_2[-3,]
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Broward_County_2_fish_plus <- Broward_County_2$Fish_plus/max(Broward_County_2$Fish_plus)
# Broward_County_2_biomass_plus <- data.frame(Broward_County_2_fish_plus)
# 
# Broward_County_2_biomass_plus <- 100*Broward_County_2_biomass_plus
# 
# 
# Broward_County_2_Stony_plus <- Broward_County_2$Coral_plus/max(Broward_County_2$Coral_plus)
# Broward_County_2_coral_plus <- data.frame(Broward_County_2_Stony_plus)
# 
# Broward_County_2_stony_coral_plus <- 100*Broward_County_2_coral_plus
# 
# Broward_County_2_macro_plus <- ((Broward_County_2$Macroalgae_plus)/max(Broward_County_2$Macroalgae_plus))
# Broward_County_2_algae_plus <- data.frame(Broward_County_2_macro_plus)
# 
# 
# Broward_County_2_macroalgae_plus <- 100-(100*Broward_County_2_algae_plus)
# 
# 
# Broward_County_2_plot_plus <- cbind(Broward_County_2_macroalgae_plus,Broward_County_2_biomass_plus,Broward_County_2_stony_coral_plus)
# 
# #Broward_County_2_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Broward_County_2_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Broward_County_2_plot_plus <- Broward_County_2_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Broward_County_2_plot_plus$CHI_Average_plus <- rowMeans(subset(Broward_County_2_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Broward_County_2_fish_minus <- Broward_County_2$Fish_minus/max(Broward_County_2$Fish_minus)
# Broward_County_2_biomass_minus <- data.frame(Broward_County_2_fish_minus)
# 
# Broward_County_2_biomass_minus <- 100*Broward_County_2_biomass_minus
# 
# 
# Broward_County_2_Stony_minus <- Broward_County_2$Coral_minus/max(Broward_County_2$Coral_minus)
# Broward_County_2_coral_minus <- data.frame(Broward_County_2_Stony_minus)
# 
# Broward_County_2_stony_coral_minus <- 100*Broward_County_2_coral_minus
# 
# Broward_County_2_macro_minus <- ((Broward_County_2$Macroalgae_minus)/max(Broward_County_2$Macroalgae_minus))
# Broward_County_2_algae_minus <- data.frame(Broward_County_2_macro_minus)
# 
# 
# Broward_County_2_macroalgae_minus <- 100-(100*Broward_County_2_algae_minus)
# 
# 
# Broward_County_2_plot_minus <- cbind(Broward_County_2_macroalgae_minus,Broward_County_2_biomass_minus,Broward_County_2_stony_coral_minus)
# 
# #Broward_County_2_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Broward_County_2_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Broward_County_2_plot_minus <- Broward_County_2_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Broward_County_2_plot_minus$CHI_Average_minus <- rowMeans(subset(Broward_County_2_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Broward_County_2_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/SEF/Broward_County_2.csv')
# Broward_County_2_normal <- Broward_County_2_normal[-3,]
# 
# Broward_County_2_All <- cbind(Broward_County_2_plot_plus,Broward_County_2_plot_minus,Broward_County_2_normal)
# 
# 
# export(Broward_County_2_All,"Line/SEF/Broward_County_2_SD.csv")
# 
# 
# 
# 
# Broward_County_3 <- filter(CHI_SD_Master, sitename == "Broward County 3")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Broward_County_3_fish_plus <- Broward_County_3$Fish_plus/max(Broward_County_3$Fish_plus)
# Broward_County_3_biomass_plus <- data.frame(Broward_County_3_fish_plus)
# 
# Broward_County_3_biomass_plus <- 100*Broward_County_3_biomass_plus
# 
# 
# Broward_County_3_Stony_plus <- Broward_County_3$Coral_plus/max(Broward_County_3$Coral_plus)
# Broward_County_3_coral_plus <- data.frame(Broward_County_3_Stony_plus)
# 
# Broward_County_3_stony_coral_plus <- 100*Broward_County_3_coral_plus
# 
# Broward_County_3_macro_plus <- ((Broward_County_3$Macroalgae_plus)/max(Broward_County_3$Macroalgae_plus))
# Broward_County_3_algae_plus <- data.frame(Broward_County_3_macro_plus)
# 
# 
# Broward_County_3_macroalgae_plus <- 100-(100*Broward_County_3_algae_plus)
# 
# 
# Broward_County_3_plot_plus <- cbind(Broward_County_3_macroalgae_plus,Broward_County_3_biomass_plus,Broward_County_3_stony_coral_plus)
# 
# #Broward_County_3_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Broward_County_3_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Broward_County_3_plot_plus <- Broward_County_3_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Broward_County_3_plot_plus$CHI_Average_plus <- rowMeans(subset(Broward_County_3_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Broward_County_3_fish_minus <- Broward_County_3$Fish_minus/max(Broward_County_3$Fish_minus)
# Broward_County_3_biomass_minus <- data.frame(Broward_County_3_fish_minus)
# 
# Broward_County_3_biomass_minus <- 100*Broward_County_3_biomass_minus
# 
# 
# Broward_County_3_Stony_minus <- Broward_County_3$Coral_minus/max(Broward_County_3$Coral_minus)
# Broward_County_3_coral_minus <- data.frame(Broward_County_3_Stony_minus)
# 
# Broward_County_3_stony_coral_minus <- 100*Broward_County_3_coral_minus
# 
# Broward_County_3_macro_minus <- ((Broward_County_3$Macroalgae_minus)/max(Broward_County_3$Macroalgae_minus))
# Broward_County_3_algae_minus <- data.frame(Broward_County_3_macro_minus)
# 
# 
# Broward_County_3_macroalgae_minus <- 100-(100*Broward_County_3_algae_minus)
# 
# 
# Broward_County_3_plot_minus <- cbind(Broward_County_3_macroalgae_minus,Broward_County_3_biomass_minus,Broward_County_3_stony_coral_minus)
# 
# #Broward_County_3_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Broward_County_3_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Broward_County_3_plot_minus <- Broward_County_3_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Broward_County_3_plot_minus$CHI_Average_minus <- rowMeans(subset(Broward_County_3_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Broward_County_3_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/SEF/Broward_County_3.csv')
# 
# Broward_County_3_All <- cbind(Broward_County_3_plot_plus,Broward_County_3_plot_minus,Broward_County_3_normal)
# 
# 
# export(Broward_County_3_All,"Line/SEF/Broward_County_3_SD.csv")
# 




# Broward_County_A <- filter(CHI_SD_Master, sitename == "Broward County A")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Broward_County_A_fish_plus <- Broward_County_A$Fish_plus/max(Broward_County_A$Fish_plus)
# Broward_County_A_biomass_plus <- data.frame(Broward_County_A_fish_plus)
# 
# Broward_County_A_biomass_plus <- 100*Broward_County_A_biomass_plus
# 
# 
# Broward_County_A_Stony_plus <- Broward_County_A$Coral_plus/max(Broward_County_A$Coral_plus)
# Broward_County_A_coral_plus <- data.frame(Broward_County_A_Stony_plus)
# 
# Broward_County_A_stony_coral_plus <- 100*Broward_County_A_coral_plus
# 
# Broward_County_A_macro_plus <- ((Broward_County_A$Macroalgae_plus)/max(Broward_County_A$Macroalgae_plus))
# Broward_County_A_algae_plus <- data.frame(Broward_County_A_macro_plus)
# 
# 
# Broward_County_A_macroalgae_plus <- 100-(100*Broward_County_A_algae_plus)
# 
# 
# Broward_County_A_plot_plus <- cbind(Broward_County_A_macroalgae_plus,Broward_County_A_biomass_plus,Broward_County_A_stony_coral_plus)
# 
# #Broward_County_A_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Broward_County_A_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Broward_County_A_plot_plus <- Broward_County_A_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Broward_County_A_plot_plus$CHI_Average_plus <- rowMeans(subset(Broward_County_A_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Broward_County_A_fish_minus <- Broward_County_A$Fish_minus/max(Broward_County_A$Fish_minus)
# Broward_County_A_biomass_minus <- data.frame(Broward_County_A_fish_minus)
# 
# Broward_County_A_biomass_minus <- 100*Broward_County_A_biomass_minus
# 
# 
# Broward_County_A_Stony_minus <- Broward_County_A$Coral_minus/max(Broward_County_A$Coral_minus)
# Broward_County_A_coral_minus <- data.frame(Broward_County_A_Stony_minus)
# 
# Broward_County_A_stony_coral_minus <- 100*Broward_County_A_coral_minus
# 
# Broward_County_A_macro_minus <- ((Broward_County_A$Macroalgae_minus)/max(Broward_County_A$Macroalgae_minus))
# Broward_County_A_algae_minus <- data.frame(Broward_County_A_macro_minus)
# 
# 
# Broward_County_A_macroalgae_minus <- 100-(100*Broward_County_A_algae_minus)
# 
# 
# Broward_County_A_plot_minus <- cbind(Broward_County_A_macroalgae_minus,Broward_County_A_biomass_minus,Broward_County_A_stony_coral_minus)
# 
# #Broward_County_A_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Broward_County_A_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Broward_County_A_plot_minus <- Broward_County_A_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Broward_County_A_plot_minus$CHI_Average_minus <- rowMeans(subset(Broward_County_A_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Broward_County_A_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/SEF/Broward_County_A.csv')
# 
# Broward_County_A_All <- cbind(Broward_County_A_plot_plus,Broward_County_A_plot_minus,Broward_County_A_normal)
# 
# 
# export(Broward_County_A_All,"Line/SEF/Broward_County_A_SD.csv")




# Dade_County_1 <- filter(CHI_SD_Master, sitename == "Dade County 1")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Dade_County_1_fish_plus <- Dade_County_1$Fish_plus/max(Dade_County_1$Fish_plus)
# Dade_County_1_biomass_plus <- data.frame(Dade_County_1_fish_plus)
# 
# Dade_County_1_biomass_plus <- 100*Dade_County_1_biomass_plus
# 
# 
# Dade_County_1_Stony_plus <- Dade_County_1$Coral_plus/max(Dade_County_1$Coral_plus)
# Dade_County_1_coral_plus <- data.frame(Dade_County_1_Stony_plus)
# 
# Dade_County_1_stony_coral_plus <- 100*Dade_County_1_coral_plus
# 
# Dade_County_1_macro_plus <- ((Dade_County_1$Macroalgae_plus)/max(Dade_County_1$Macroalgae_plus))
# Dade_County_1_algae_plus <- data.frame(Dade_County_1_macro_plus)
# 
# 
# Dade_County_1_macroalgae_plus <- 100-(100*Dade_County_1_algae_plus)
# 
# 
# Dade_County_1_plot_plus <- cbind(Dade_County_1_macroalgae_plus,Dade_County_1_biomass_plus,Dade_County_1_stony_coral_plus)
# 
# #Dade_County_1_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Dade_County_1_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Dade_County_1_plot_plus <- Dade_County_1_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Dade_County_1_plot_plus$CHI_Average_plus <- rowMeans(subset(Dade_County_1_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Dade_County_1_fish_minus <- Dade_County_1$Fish_minus/max(Dade_County_1$Fish_minus)
# Dade_County_1_biomass_minus <- data.frame(Dade_County_1_fish_minus)
# 
# Dade_County_1_biomass_minus <- 100*Dade_County_1_biomass_minus
# 
# 
# Dade_County_1_Stony_minus <- Dade_County_1$Coral_minus/max(Dade_County_1$Coral_minus)
# Dade_County_1_coral_minus <- data.frame(Dade_County_1_Stony_minus)
# 
# Dade_County_1_stony_coral_minus <- 100*Dade_County_1_coral_minus
# 
# Dade_County_1_macro_minus <- ((Dade_County_1$Macroalgae_minus)/max(Dade_County_1$Macroalgae_minus))
# Dade_County_1_algae_minus <- data.frame(Dade_County_1_macro_minus)
# 
# 
# Dade_County_1_macroalgae_minus <- 100-(100*Dade_County_1_algae_minus)
# 
# 
# Dade_County_1_plot_minus <- cbind(Dade_County_1_macroalgae_minus,Dade_County_1_biomass_minus,Dade_County_1_stony_coral_minus)
# 
# #Dade_County_1_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Dade_County_1_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Dade_County_1_plot_minus <- Dade_County_1_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Dade_County_1_plot_minus$CHI_Average_minus <- rowMeans(subset(Dade_County_1_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Dade_County_1_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/SEF/Dade_County_1.csv')
# 
# Dade_County_1_All <- cbind(Dade_County_1_plot_plus,Dade_County_1_plot_minus,Dade_County_1_normal)
# 
# 
# export(Dade_County_1_All,"Line/SEF/Dade_County_1_SD.csv")
# 
# 
# 
# 
# 
# Dade_County_2 <- filter(CHI_SD_Master, sitename == "Dade County 2")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Dade_County_2_fish_plus <- Dade_County_2$Fish_plus/max(Dade_County_2$Fish_plus)
# Dade_County_2_biomass_plus <- data.frame(Dade_County_2_fish_plus)
# 
# Dade_County_2_biomass_plus <- 100*Dade_County_2_biomass_plus
# 
# 
# Dade_County_2_Stony_plus <- Dade_County_2$Coral_plus/max(Dade_County_2$Coral_plus)
# Dade_County_2_coral_plus <- data.frame(Dade_County_2_Stony_plus)
# 
# Dade_County_2_stony_coral_plus <- 100*Dade_County_2_coral_plus
# 
# Dade_County_2_macro_plus <- ((Dade_County_2$Macroalgae_plus)/max(Dade_County_2$Macroalgae_plus))
# Dade_County_2_algae_plus <- data.frame(Dade_County_2_macro_plus)
# 
# 
# Dade_County_2_macroalgae_plus <- 100-(100*Dade_County_2_algae_plus)
# 
# 
# Dade_County_2_plot_plus <- cbind(Dade_County_2_macroalgae_plus,Dade_County_2_biomass_plus,Dade_County_2_stony_coral_plus)
# 
# #Dade_County_2_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Dade_County_2_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Dade_County_2_plot_plus <- Dade_County_2_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Dade_County_2_plot_plus$CHI_Average_plus <- rowMeans(subset(Dade_County_2_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Dade_County_2_fish_minus <- Dade_County_2$Fish_minus/max(Dade_County_2$Fish_minus)
# Dade_County_2_biomass_minus <- data.frame(Dade_County_2_fish_minus)
# 
# Dade_County_2_biomass_minus <- 100*Dade_County_2_biomass_minus
# 
# 
# Dade_County_2_Stony_minus <- Dade_County_2$Coral_minus/max(Dade_County_2$Coral_minus)
# Dade_County_2_coral_minus <- data.frame(Dade_County_2_Stony_minus)
# 
# Dade_County_2_stony_coral_minus <- 100*Dade_County_2_coral_minus
# 
# Dade_County_2_macro_minus <- ((Dade_County_2$Macroalgae_minus)/max(Dade_County_2$Macroalgae_minus))
# Dade_County_2_algae_minus <- data.frame(Dade_County_2_macro_minus)
# 
# 
# Dade_County_2_macroalgae_minus <- 100-(100*Dade_County_2_algae_minus)
# 
# 
# Dade_County_2_plot_minus <- cbind(Dade_County_2_macroalgae_minus,Dade_County_2_biomass_minus,Dade_County_2_stony_coral_minus)
# 
# #Dade_County_2_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Dade_County_2_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Dade_County_2_plot_minus <- Dade_County_2_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Dade_County_2_plot_minus$CHI_Average_minus <- rowMeans(subset(Dade_County_2_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Dade_County_2_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/SEF/Dade_County_2.csv')
# 
# Dade_County_2_All <- cbind(Dade_County_2_plot_plus,Dade_County_2_plot_minus,Dade_County_2_normal)
# 
# 
# export(Dade_County_2_All,"Line/SEF/Dade_County_2_SD.csv")
# 
# 
# 
# 
# Dade_County_3 <- filter(CHI_SD_Master, sitename == "Dade County 3")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Dade_County_3_fish_plus <- Dade_County_3$Fish_plus/max(Dade_County_3$Fish_plus)
# Dade_County_3_biomass_plus <- data.frame(Dade_County_3_fish_plus)
# 
# Dade_County_3_biomass_plus <- 100*Dade_County_3_biomass_plus
# 
# 
# Dade_County_3_Stony_plus <- Dade_County_3$Coral_plus/max(Dade_County_3$Coral_plus)
# Dade_County_3_coral_plus <- data.frame(Dade_County_3_Stony_plus)
# 
# Dade_County_3_stony_coral_plus <- 100*Dade_County_3_coral_plus
# 
# Dade_County_3_macro_plus <- ((Dade_County_3$Macroalgae_plus)/max(Dade_County_3$Macroalgae_plus))
# Dade_County_3_algae_plus <- data.frame(Dade_County_3_macro_plus)
# 
# 
# Dade_County_3_macroalgae_plus <- 100-(100*Dade_County_3_algae_plus)
# 
# 
# Dade_County_3_plot_plus <- cbind(Dade_County_3_macroalgae_plus,Dade_County_3_biomass_plus,Dade_County_3_stony_coral_plus)
# 
# #Dade_County_3_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Dade_County_3_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Dade_County_3_plot_plus <- Dade_County_3_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Dade_County_3_plot_plus$CHI_Average_plus <- rowMeans(subset(Dade_County_3_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Dade_County_3_fish_minus <- Dade_County_3$Fish_minus/max(Dade_County_3$Fish_minus)
# Dade_County_3_biomass_minus <- data.frame(Dade_County_3_fish_minus)
# 
# Dade_County_3_biomass_minus <- 100*Dade_County_3_biomass_minus
# 
# 
# Dade_County_3_Stony_minus <- Dade_County_3$Coral_minus/max(Dade_County_3$Coral_minus)
# Dade_County_3_coral_minus <- data.frame(Dade_County_3_Stony_minus)
# 
# Dade_County_3_stony_coral_minus <- 100*Dade_County_3_coral_minus
# 
# Dade_County_3_macro_minus <- ((Dade_County_3$Macroalgae_minus)/max(Dade_County_3$Macroalgae_minus))
# Dade_County_3_algae_minus <- data.frame(Dade_County_3_macro_minus)
# 
# 
# Dade_County_3_macroalgae_minus <- 100-(100*Dade_County_3_algae_minus)
# 
# 
# Dade_County_3_plot_minus <- cbind(Dade_County_3_macroalgae_minus,Dade_County_3_biomass_minus,Dade_County_3_stony_coral_minus)
# 
# #Dade_County_3_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Dade_County_3_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Dade_County_3_plot_minus <- Dade_County_3_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Dade_County_3_plot_minus$CHI_Average_minus <- rowMeans(subset(Dade_County_3_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Dade_County_3_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/SEF/Dade_County_3.csv')
# 
# Dade_County_3_All <- cbind(Dade_County_3_plot_plus,Dade_County_3_plot_minus,Dade_County_3_normal)
# 
# 
# export(Dade_County_3_All,"Line/SEF/Dade_County_3_SD.csv")
# 
# 
# 
# 
# Martin_County_1 <- filter(CHI_SD_Master, sitename == "Martin County 1")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Martin_County_1_fish_plus <- Martin_County_1$Fish_plus/max(Martin_County_1$Fish_plus)
# Martin_County_1_biomass_plus <- data.frame(Martin_County_1_fish_plus)
# 
# Martin_County_1_biomass_plus <- 100*Martin_County_1_biomass_plus
# 
# 
# Martin_County_1_Stony_plus <- Martin_County_1$Coral_plus/max(Martin_County_1$Coral_plus)
# Martin_County_1_coral_plus <- data.frame(Martin_County_1_Stony_plus)
# 
# Martin_County_1_stony_coral_plus <- 100*Martin_County_1_coral_plus
# 
# Martin_County_1_macro_plus <- ((Martin_County_1$Macroalgae_plus)/max(Martin_County_1$Macroalgae_plus))
# Martin_County_1_algae_plus <- data.frame(Martin_County_1_macro_plus)
# 
# 
# Martin_County_1_macroalgae_plus <- 100-(100*Martin_County_1_algae_plus)
# 
# 
# Martin_County_1_plot_plus <- cbind(Martin_County_1_macroalgae_plus,Martin_County_1_biomass_plus,Martin_County_1_stony_coral_plus)
# 
# #Martin_County_1_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Martin_County_1_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Martin_County_1_plot_plus <- Martin_County_1_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Martin_County_1_plot_plus$CHI_Average_plus <- rowMeans(subset(Martin_County_1_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Martin_County_1_fish_minus <- Martin_County_1$Fish_minus/max(Martin_County_1$Fish_minus)
# Martin_County_1_biomass_minus <- data.frame(Martin_County_1_fish_minus)
# 
# Martin_County_1_biomass_minus <- 100*Martin_County_1_biomass_minus
# 
# 
# Martin_County_1_Stony_minus <- Martin_County_1$Coral_minus/max(Martin_County_1$Coral_minus)
# Martin_County_1_coral_minus <- data.frame(Martin_County_1_Stony_minus)
# 
# Martin_County_1_stony_coral_minus <- 100*Martin_County_1_coral_minus
# 
# Martin_County_1_macro_minus <- ((Martin_County_1$Macroalgae_minus)/max(Martin_County_1$Macroalgae_minus))
# Martin_County_1_algae_minus <- data.frame(Martin_County_1_macro_minus)
# 
# 
# Martin_County_1_macroalgae_minus <- 100-(100*Martin_County_1_algae_minus)
# 
# 
# Martin_County_1_plot_minus <- cbind(Martin_County_1_macroalgae_minus,Martin_County_1_biomass_minus,Martin_County_1_stony_coral_minus)
# 
# #Martin_County_1_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Martin_County_1_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Martin_County_1_plot_minus <- Martin_County_1_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Martin_County_1_plot_minus$CHI_Average_minus <- rowMeans(subset(Martin_County_1_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Martin_County_1_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/SEF/Martin_County_1.csv')
# 
# Martin_County_1_All <- cbind(Martin_County_1_plot_plus,Martin_County_1_plot_minus,Martin_County_1_normal)
# 
# 
# export(Martin_County_1_All,"Line/SEF/Martin_County_1_SD.csv")
# 
# 
# 
# 
# Martin_County_2 <- filter(CHI_SD_Master, sitename == "Martin County 2")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Martin_County_2_fish_plus <- Martin_County_2$Fish_plus/max(Martin_County_2$Fish_plus)
# Martin_County_2_biomass_plus <- data.frame(Martin_County_2_fish_plus)
# 
# Martin_County_2_biomass_plus <- 100*Martin_County_2_biomass_plus
# 
# 
# Martin_County_2_Stony_plus <- Martin_County_2$Coral_plus/max(Martin_County_2$Coral_plus)
# Martin_County_2_coral_plus <- data.frame(Martin_County_2_Stony_plus)
# 
# Martin_County_2_stony_coral_plus <- 100*Martin_County_2_coral_plus
# 
# Martin_County_2_macro_plus <- ((Martin_County_2$Macroalgae_plus)/max(Martin_County_2$Macroalgae_plus))
# Martin_County_2_algae_plus <- data.frame(Martin_County_2_macro_plus)
# 
# 
# Martin_County_2_macroalgae_plus <- 100-(100*Martin_County_2_algae_plus)
# 
# 
# Martin_County_2_plot_plus <- cbind(Martin_County_2_macroalgae_plus,Martin_County_2_biomass_plus,Martin_County_2_stony_coral_plus)
# 
# #Martin_County_2_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Martin_County_2_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Martin_County_2_plot_plus <- Martin_County_2_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Martin_County_2_plot_plus$CHI_Average_plus <- rowMeans(subset(Martin_County_2_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Martin_County_2_fish_minus <- Martin_County_2$Fish_minus/max(Martin_County_2$Fish_minus)
# Martin_County_2_biomass_minus <- data.frame(Martin_County_2_fish_minus)
# 
# Martin_County_2_biomass_minus <- 100*Martin_County_2_biomass_minus
# 
# 
# Martin_County_2_Stony_minus <- Martin_County_2$Coral_minus/max(Martin_County_2$Coral_minus)
# Martin_County_2_coral_minus <- data.frame(Martin_County_2_Stony_minus)
# 
# Martin_County_2_stony_coral_minus <- 100*Martin_County_2_coral_minus
# 
# Martin_County_2_macro_minus <- ((Martin_County_2$Macroalgae_minus)/max(Martin_County_2$Macroalgae_minus))
# Martin_County_2_algae_minus <- data.frame(Martin_County_2_macro_minus)
# 
# 
# Martin_County_2_macroalgae_minus <- 100-(100*Martin_County_2_algae_minus)
# 
# 
# Martin_County_2_plot_minus <- cbind(Martin_County_2_macroalgae_minus,Martin_County_2_biomass_minus,Martin_County_2_stony_coral_minus)
# 
# #Martin_County_2_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Martin_County_2_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Martin_County_2_plot_minus <- Martin_County_2_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Martin_County_2_plot_minus$CHI_Average_minus <- rowMeans(subset(Martin_County_2_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Martin_County_2_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/SEF/Martin_County_2.csv')
# 
# Martin_County_2_All <- cbind(Martin_County_2_plot_plus,Martin_County_2_plot_minus,Martin_County_2_normal)
# 
# 
# export(Martin_County_2_All,"Line/SEF/Martin_County_2_SD.csv")
# 
# 
# 
# 
# Palm_Beach_1 <- filter(CHI_SD_Master, sitename == "Palm Beach 1")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Palm_Beach_1_fish_plus <- Palm_Beach_1$Fish_plus/max(Palm_Beach_1$Fish_plus)
# Palm_Beach_1_biomass_plus <- data.frame(Palm_Beach_1_fish_plus)
# 
# Palm_Beach_1_biomass_plus <- 100*Palm_Beach_1_biomass_plus
# 
# 
# Palm_Beach_1_Stony_plus <- Palm_Beach_1$Coral_plus/max(Palm_Beach_1$Coral_plus)
# Palm_Beach_1_coral_plus <- data.frame(Palm_Beach_1_Stony_plus)
# 
# Palm_Beach_1_stony_coral_plus <- 100*Palm_Beach_1_coral_plus
# 
# Palm_Beach_1_macro_plus <- ((Palm_Beach_1$Macroalgae_plus)/max(Palm_Beach_1$Macroalgae_plus))
# Palm_Beach_1_algae_plus <- data.frame(Palm_Beach_1_macro_plus)
# 
# 
# Palm_Beach_1_macroalgae_plus <- 100-(100*Palm_Beach_1_algae_plus)
# 
# 
# Palm_Beach_1_plot_plus <- cbind(Palm_Beach_1_macroalgae_plus,Palm_Beach_1_biomass_plus,Palm_Beach_1_stony_coral_plus)
# 
# #Palm_Beach_1_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Palm_Beach_1_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Palm_Beach_1_plot_plus <- Palm_Beach_1_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Palm_Beach_1_plot_plus$CHI_Average_plus <- rowMeans(subset(Palm_Beach_1_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Palm_Beach_1_fish_minus <- Palm_Beach_1$Fish_minus/max(Palm_Beach_1$Fish_minus)
# Palm_Beach_1_biomass_minus <- data.frame(Palm_Beach_1_fish_minus)
# 
# Palm_Beach_1_biomass_minus <- 100*Palm_Beach_1_biomass_minus
# 
# 
# Palm_Beach_1_Stony_minus <- Palm_Beach_1$Coral_minus/max(Palm_Beach_1$Coral_minus)
# Palm_Beach_1_coral_minus <- data.frame(Palm_Beach_1_Stony_minus)
# 
# Palm_Beach_1_stony_coral_minus <- 100*Palm_Beach_1_coral_minus
# 
# Palm_Beach_1_macro_minus <- ((Palm_Beach_1$Macroalgae_minus)/max(Palm_Beach_1$Macroalgae_minus))
# Palm_Beach_1_algae_minus <- data.frame(Palm_Beach_1_macro_minus)
# 
# 
# Palm_Beach_1_macroalgae_minus <- 100-(100*Palm_Beach_1_algae_minus)
# 
# 
# Palm_Beach_1_plot_minus <- cbind(Palm_Beach_1_macroalgae_minus,Palm_Beach_1_biomass_minus,Palm_Beach_1_stony_coral_minus)
# 
# #Palm_Beach_1_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Palm_Beach_1_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Palm_Beach_1_plot_minus <- Palm_Beach_1_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Palm_Beach_1_plot_minus$CHI_Average_minus <- rowMeans(subset(Palm_Beach_1_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Palm_Beach_1_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/SEF/Palm_Beach_1.csv')
# 
# Palm_Beach_1_All <- cbind(Palm_Beach_1_plot_plus,Palm_Beach_1_plot_minus,Palm_Beach_1_normal)
# 
# 
# export(Palm_Beach_1_All,"Line/SEF/Palm_Beach_1_SD.csv")
# 
# 
# 
# 
# Palm_Beach_2 <- filter(CHI_SD_Master, sitename == "Palm Beach 2")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Palm_Beach_2_fish_plus <- Palm_Beach_2$Fish_plus/max(Palm_Beach_2$Fish_plus)
# Palm_Beach_2_biomass_plus <- data.frame(Palm_Beach_2_fish_plus)
# 
# Palm_Beach_2_biomass_plus <- 100*Palm_Beach_2_biomass_plus
# 
# 
# Palm_Beach_2_Stony_plus <- Palm_Beach_2$Coral_plus/max(Palm_Beach_2$Coral_plus)
# Palm_Beach_2_coral_plus <- data.frame(Palm_Beach_2_Stony_plus)
# 
# Palm_Beach_2_stony_coral_plus <- 100*Palm_Beach_2_coral_plus
# 
# Palm_Beach_2_macro_plus <- ((Palm_Beach_2$Macroalgae_plus)/max(Palm_Beach_2$Macroalgae_plus))
# Palm_Beach_2_algae_plus <- data.frame(Palm_Beach_2_macro_plus)
# 
# 
# Palm_Beach_2_macroalgae_plus <- 100-(100*Palm_Beach_2_algae_plus)
# 
# 
# Palm_Beach_2_plot_plus <- cbind(Palm_Beach_2_macroalgae_plus,Palm_Beach_2_biomass_plus,Palm_Beach_2_stony_coral_plus)
# 
# #Palm_Beach_2_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Palm_Beach_2_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Palm_Beach_2_plot_plus <- Palm_Beach_2_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Palm_Beach_2_plot_plus$CHI_Average_plus <- rowMeans(subset(Palm_Beach_2_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Palm_Beach_2_fish_minus <- Palm_Beach_2$Fish_minus/max(Palm_Beach_2$Fish_minus)
# Palm_Beach_2_biomass_minus <- data.frame(Palm_Beach_2_fish_minus)
# 
# Palm_Beach_2_biomass_minus <- 100*Palm_Beach_2_biomass_minus
# 
# 
# Palm_Beach_2_Stony_minus <- Palm_Beach_2$Coral_minus/max(Palm_Beach_2$Coral_minus)
# Palm_Beach_2_coral_minus <- data.frame(Palm_Beach_2_Stony_minus)
# 
# Palm_Beach_2_stony_coral_minus <- 100*Palm_Beach_2_coral_minus
# 
# Palm_Beach_2_macro_minus <- ((Palm_Beach_2$Macroalgae_minus)/max(Palm_Beach_2$Macroalgae_minus))
# Palm_Beach_2_algae_minus <- data.frame(Palm_Beach_2_macro_minus)
# 
# 
# Palm_Beach_2_macroalgae_minus <- 100-(100*Palm_Beach_2_algae_minus)
# 
# 
# Palm_Beach_2_plot_minus <- cbind(Palm_Beach_2_macroalgae_minus,Palm_Beach_2_biomass_minus,Palm_Beach_2_stony_coral_minus)
# 
# #Palm_Beach_2_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Palm_Beach_2_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Palm_Beach_2_plot_minus <- Palm_Beach_2_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Palm_Beach_2_plot_minus$CHI_Average_minus <- rowMeans(subset(Palm_Beach_2_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Palm_Beach_2_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/SEF/Palm_Beach_2.csv')
# 
# Palm_Beach_2_All <- cbind(Palm_Beach_2_plot_plus,Palm_Beach_2_plot_minus,Palm_Beach_2_normal)
# 
# 
# export(Palm_Beach_2_All,"Line/SEF/Palm_Beach_2_SD.csv")
# 
# 
# 
# 
# Palm_Beach_3 <- filter(CHI_SD_Master, sitename == "Palm Beach 3")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Palm_Beach_3_fish_plus <- Palm_Beach_3$Fish_plus/max(Palm_Beach_3$Fish_plus)
# Palm_Beach_3_biomass_plus <- data.frame(Palm_Beach_3_fish_plus)
# 
# Palm_Beach_3_biomass_plus <- 100*Palm_Beach_3_biomass_plus
# 
# 
# Palm_Beach_3_Stony_plus <- Palm_Beach_3$Coral_plus/max(Palm_Beach_3$Coral_plus)
# Palm_Beach_3_coral_plus <- data.frame(Palm_Beach_3_Stony_plus)
# 
# Palm_Beach_3_stony_coral_plus <- 100*Palm_Beach_3_coral_plus
# 
# Palm_Beach_3_macro_plus <- ((Palm_Beach_3$Macroalgae_plus)/max(Palm_Beach_3$Macroalgae_plus))
# Palm_Beach_3_algae_plus <- data.frame(Palm_Beach_3_macro_plus)
# 
# 
# Palm_Beach_3_macroalgae_plus <- 100-(100*Palm_Beach_3_algae_plus)
# 
# 
# Palm_Beach_3_plot_plus <- cbind(Palm_Beach_3_macroalgae_plus,Palm_Beach_3_biomass_plus,Palm_Beach_3_stony_coral_plus)
# 
# #Palm_Beach_3_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Palm_Beach_3_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Palm_Beach_3_plot_plus <- Palm_Beach_3_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Palm_Beach_3_plot_plus$CHI_Average_plus <- rowMeans(subset(Palm_Beach_3_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Palm_Beach_3_fish_minus <- Palm_Beach_3$Fish_minus/max(Palm_Beach_3$Fish_minus)
# Palm_Beach_3_biomass_minus <- data.frame(Palm_Beach_3_fish_minus)
# 
# Palm_Beach_3_biomass_minus <- 100*Palm_Beach_3_biomass_minus
# 
# 
# Palm_Beach_3_Stony_minus <- Palm_Beach_3$Coral_minus/max(Palm_Beach_3$Coral_minus)
# Palm_Beach_3_coral_minus <- data.frame(Palm_Beach_3_Stony_minus)
# 
# Palm_Beach_3_stony_coral_minus <- 100*Palm_Beach_3_coral_minus
# 
# Palm_Beach_3_macro_minus <- ((Palm_Beach_3$Macroalgae_minus)/max(Palm_Beach_3$Macroalgae_minus))
# Palm_Beach_3_algae_minus <- data.frame(Palm_Beach_3_macro_minus)
# 
# 
# Palm_Beach_3_macroalgae_minus <- 100-(100*Palm_Beach_3_algae_minus)
# 
# 
# Palm_Beach_3_plot_minus <- cbind(Palm_Beach_3_macroalgae_minus,Palm_Beach_3_biomass_minus,Palm_Beach_3_stony_coral_minus)
# 
# #Palm_Beach_3_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Palm_Beach_3_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Palm_Beach_3_plot_minus <- Palm_Beach_3_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Palm_Beach_3_plot_minus$CHI_Average_minus <- rowMeans(subset(Palm_Beach_3_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Palm_Beach_3_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/SEF/Palm_Beach_3.csv')
# 
# Palm_Beach_3_All <- cbind(Palm_Beach_3_plot_plus,Palm_Beach_3_plot_minus,Palm_Beach_3_normal)
# 
# 
# export(Palm_Beach_3_All,"Line/SEF/Palm_Beach_3_SD.csv")
# 
# 
# 
# 
# Palm_Beach_4 <- filter(CHI_SD_Master, sitename == "Palm Beach 4")
# 
# ## Make percentages of sum, stony coral cover, and macroalgae
# 
# Palm_Beach_4_fish_plus <- Palm_Beach_4$Fish_plus/max(Palm_Beach_4$Fish_plus)
# Palm_Beach_4_biomass_plus <- data.frame(Palm_Beach_4_fish_plus)
# 
# Palm_Beach_4_biomass_plus <- 100*Palm_Beach_4_biomass_plus
# 
# 
# Palm_Beach_4_Stony_plus <- Palm_Beach_4$Coral_plus/max(Palm_Beach_4$Coral_plus)
# Palm_Beach_4_coral_plus <- data.frame(Palm_Beach_4_Stony_plus)
# 
# Palm_Beach_4_stony_coral_plus <- 100*Palm_Beach_4_coral_plus
# 
# Palm_Beach_4_macro_plus <- ((Palm_Beach_4$Macroalgae_plus)/max(Palm_Beach_4$Macroalgae_plus))
# Palm_Beach_4_algae_plus <- data.frame(Palm_Beach_4_macro_plus)
# 
# 
# Palm_Beach_4_macroalgae_plus <- 100-(100*Palm_Beach_4_algae_plus)
# 
# 
# Palm_Beach_4_plot_plus <- cbind(Palm_Beach_4_macroalgae_plus,Palm_Beach_4_biomass_plus,Palm_Beach_4_stony_coral_plus)
# 
# #Palm_Beach_4_plot_plus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Palm_Beach_4_plot_plus) <- c("Macroalgae_plus","Fish_Biomass_plus","Stony_Coral_plus")
# 
# 
# Palm_Beach_4_plot_plus <- Palm_Beach_4_plot_plus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Palm_Beach_4_plot_plus$CHI_Average_plus <- rowMeans(subset(Palm_Beach_4_plot_plus, select = c(Macroalgae_plus,Fish_Biomass_plus,Stony_Coral_plus)))
# 
# 
# ### Minus 
# 
# Palm_Beach_4_fish_minus <- Palm_Beach_4$Fish_minus/max(Palm_Beach_4$Fish_minus)
# Palm_Beach_4_biomass_minus <- data.frame(Palm_Beach_4_fish_minus)
# 
# Palm_Beach_4_biomass_minus <- 100*Palm_Beach_4_biomass_minus
# 
# 
# Palm_Beach_4_Stony_minus <- Palm_Beach_4$Coral_minus/max(Palm_Beach_4$Coral_minus)
# Palm_Beach_4_coral_minus <- data.frame(Palm_Beach_4_Stony_minus)
# 
# Palm_Beach_4_stony_coral_minus <- 100*Palm_Beach_4_coral_minus
# 
# Palm_Beach_4_macro_minus <- ((Palm_Beach_4$Macroalgae_minus)/max(Palm_Beach_4$Macroalgae_minus))
# Palm_Beach_4_algae_minus <- data.frame(Palm_Beach_4_macro_minus)
# 
# 
# Palm_Beach_4_macroalgae_minus <- 100-(100*Palm_Beach_4_algae_minus)
# 
# 
# Palm_Beach_4_plot_minus <- cbind(Palm_Beach_4_macroalgae_minus,Palm_Beach_4_biomass_minus,Palm_Beach_4_stony_coral_minus)
# 
# #Palm_Beach_4_plot_minus$Year <- c("1999","2000","2001","2002","2003","2005","2006","2007","2008","2009","2011","2012","2014","2016")
# 
# 
# colnames(Palm_Beach_4_plot_minus) <- c("Macroalgae_minus","Fish_Biomass_minus","Stony_Coral_minus")
# 
# 
# Palm_Beach_4_plot_minus <- Palm_Beach_4_plot_minus %>%
#   mutate_if(is.numeric,round,digits = 0)
# 
# 
# Palm_Beach_4_plot_minus$CHI_Average_minus <- rowMeans(subset(Palm_Beach_4_plot_minus, select = c(Macroalgae_minus,Fish_Biomass_minus,Stony_Coral_minus)))
# 
# 
# ## Add in normal and combine with SD CHI's 
# 
# Palm_Beach_4_normal <- read_csv('C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/Line/SEF/Palm_Beach_4.csv')
# 
# Palm_Beach_4_All <- cbind(Palm_Beach_4_plot_plus,Palm_Beach_4_plot_minus,Palm_Beach_4_normal)
# 
# 
# export(Palm_Beach_4_All,"Line/SEF/Palm_Beach_4_SD.csv")
# 
# 

