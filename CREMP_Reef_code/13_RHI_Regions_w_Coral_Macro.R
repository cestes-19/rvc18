


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
library(grid)
library(png)
library(Rgb)
library("magrittr")
library(data.table)
library(plyr)
library("binr")

### Bin the coral and macroalgae data by subregion 


setwd("C:/Users/cara.estes/Documents/Spring_2020/1996_2017")


CREMP <- read_csv("CREMP_combined.csv")

##  Divide the cremp by subregions for binning 

# Dry Tortugas 

DT_data <- filter(CREMP, subRegionId == "DT")


DT_coral_bins <- bins(DT_data$Stony_coral,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
view(DT_coral_bins$binct)


## Stony coral RHI

Coral_DT_1 <- subset(DT_data, Stony_coral <2.99)
Coral_DT_2 <- subset(DT_data, Stony_coral >= 3  & Stony_coral < 5.13 )
Coral_DT_3 <- subset(DT_data, Stony_coral >= 5.14  & Stony_coral < 9.33 )
Coral_DT_4 <- subset(DT_data, Stony_coral >= 9.34  & Stony_coral < 13.78 )
Coral_DT_5 <- subset(DT_data, Stony_coral >=  13.79 & Stony_coral < 25.5 )


Coral_DT_1$RHI_Coral <- "1"
Coral_DT_2$RHI_Coral <- "2"
Coral_DT_3$RHI_Coral <- "3"
Coral_DT_4$RHI_Coral <- "4"
Coral_DT_5$RHI_Coral <- "5"

Coral_DT_RHI <- rbind(Coral_DT_1,Coral_DT_2,Coral_DT_3,Coral_DT_4,Coral_DT_5)  



## Macroalgae

DT_macroalgae_bins <- bins(DT_data$Macroalgae,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
view(DT_macroalgae_bins$binct)



Macroalgae_DT_1 <- subset(DT_data, Macroalgae >34.255)
Macroalgae_DT_2 <- subset(DT_data, Macroalgae <= 34.254  & Macroalgae > 24.213 )
Macroalgae_DT_3 <- subset(DT_data, Macroalgae <= 24.212  & Macroalgae > 11.676 )
Macroalgae_DT_4 <- subset(DT_data, Macroalgae <= 11.675  & Macroalgae > 4.57 )
Macroalgae_DT_5 <- subset(DT_data, Macroalgae <= 4.56  & Macroalgae > .00001)


Macroalgae_DT_1$RHI_Macroalgae <- "1"
Macroalgae_DT_2$RHI_Macroalgae <- "2"
Macroalgae_DT_3$RHI_Macroalgae <- "3"
Macroalgae_DT_4$RHI_Macroalgae <- "4"
Macroalgae_DT_5$RHI_Macroalgae <- "5"

Macroalgae_DT_RHI <- rbind(Macroalgae_DT_1,Macroalgae_DT_2,Macroalgae_DT_3,Macroalgae_DT_4,Macroalgae_DT_5)  


Coral_macro_DT_RHI <- merge(Coral_DT_RHI, Macroalgae_DT_RHI)


## Lower Keys 


LK_data <- filter(CREMP, subRegionId == "LK")


LK_coral_bins <- bins(LK_data$Stony_coral,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
view(LK_coral_bins$binct)


## plotting histogram for LK Stony coral data


LK_coral_bins_df <- data.frame(LK_coral_bins$xval)
LK_coral_bins_df$id <- "NA"
LK_coral_bins_id <- LK_coral_bins_df %>%
  mutate(id = row_number())


ggplot(LK_coral_bins_df,aes(LK_coral_bins.xval))



## Stony coral RHI

Coral_LK_1 <- subset(LK_data, Stony_coral <2.2)
Coral_LK_2 <- subset(LK_data, Stony_coral >= 2.21  & Stony_coral < 3.72 )
Coral_LK_3 <- subset(LK_data, Stony_coral >= 3.73  & Stony_coral < 5.27 )
Coral_LK_4 <- subset(LK_data, Stony_coral >= 5.28  & Stony_coral < 16.66 )
Coral_LK_5 <- subset(LK_data, Stony_coral >=  16.67 & Stony_coral < 42 )


Coral_LK_1$RHI_Coral <- "1"
Coral_LK_2$RHI_Coral <- "2"
Coral_LK_3$RHI_Coral <- "3"
Coral_LK_4$RHI_Coral <- "4"
Coral_LK_5$RHI_Coral <- "5"

Coral_LK_RHI <- rbind(Coral_LK_1,Coral_LK_2,Coral_LK_3,Coral_LK_4,Coral_LK_5)  



## Macroalgae

LK_macroalgae_bins <- bins(LK_data$Macroalgae,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
view(LK_macroalgae_bins$binct)



Macroalgae_LK_1 <- subset(LK_data, Macroalgae >24.3)
Macroalgae_LK_2 <- subset(LK_data, Macroalgae <= 24.3  & Macroalgae > 10.227 )
Macroalgae_LK_3 <- subset(LK_data, Macroalgae <= 10.2271  & Macroalgae > 3.75 )
Macroalgae_LK_4 <- subset(LK_data, Macroalgae <= 3.75 & Macroalgae > 1.333 )
Macroalgae_LK_5 <- subset(LK_data, Macroalgae <= 1.333  & Macroalgae > 0.001)


Macroalgae_LK_1$RHI_Macroalgae <- "1"
Macroalgae_LK_2$RHI_Macroalgae <- "2"
Macroalgae_LK_3$RHI_Macroalgae <- "3"
Macroalgae_LK_4$RHI_Macroalgae <- "4"
Macroalgae_LK_5$RHI_Macroalgae <- "5"

Macroalgae_LK_RHI <- rbind(Macroalgae_LK_1,Macroalgae_LK_2,Macroalgae_LK_3,Macroalgae_LK_4,Macroalgae_LK_5)  


Coral_macro_LK_RHI <- merge(Coral_LK_RHI, Macroalgae_LK_RHI)




## Middle Keys 



MK_data <- filter(CREMP, subRegionId == "MK")


MK_coral_bins <- bins(MK_data$Stony_coral,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
view(MK_coral_bins$binct)


## Stony coral RHI

Coral_MK_1 <- subset(MK_data, Stony_coral <1.03)
Coral_MK_2 <- subset(MK_data, Stony_coral >= 1.03  & Stony_coral < 1.94 )
Coral_MK_3 <- subset(MK_data, Stony_coral >= 1.94  & Stony_coral < 3.43 )
Coral_MK_4 <- subset(MK_data, Stony_coral >= 3.43  & Stony_coral < 12.04 )
Coral_MK_5 <- subset(MK_data, Stony_coral >=  12.04 & Stony_coral < 18 )


Coral_MK_1$RHI_Coral <- "1"
Coral_MK_2$RHI_Coral <- "2"
Coral_MK_3$RHI_Coral <- "3"
Coral_MK_4$RHI_Coral <- "4"
Coral_MK_5$RHI_Coral <- "5"

Coral_MK_RHI <- rbind(Coral_MK_1,Coral_MK_2,Coral_MK_3,Coral_MK_4,Coral_MK_5)  



## Macroalgae

MK_macroalgae_bins <- bins(MK_data$Macroalgae,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
view(MK_macroalgae_bins$binct)



Macroalgae_MK_1 <- subset(MK_data, Macroalgae >20.468)
Macroalgae_MK_2 <- subset(MK_data, Macroalgae <= 20.468  & Macroalgae > 12.8 )
Macroalgae_MK_3 <- subset(MK_data, Macroalgae <= 12.8  & Macroalgae > 7.8 )
Macroalgae_MK_4 <- subset(MK_data, Macroalgae <= 7.8  & Macroalgae > 3.5 )
Macroalgae_MK_5 <- subset(MK_data, Macroalgae <= 3.5 & Macroalgae > 0.001)


Macroalgae_MK_1$RHI_Macroalgae <- "1"
Macroalgae_MK_2$RHI_Macroalgae <- "2"
Macroalgae_MK_3$RHI_Macroalgae <- "3"
Macroalgae_MK_4$RHI_Macroalgae <- "4"
Macroalgae_MK_5$RHI_Macroalgae <- "5"

Macroalgae_MK_RHI <- rbind(Macroalgae_MK_1,Macroalgae_MK_2,Macroalgae_MK_3,Macroalgae_MK_4,Macroalgae_MK_5)  


Coral_macro_MK_RHI <- merge(Coral_MK_RHI, Macroalgae_MK_RHI)



## Upper Keys 


UK_data <- filter(CREMP, subRegionId == "UK")


UK_coral_bins <- bins(UK_data$Stony_coral,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
view(UK_coral_bins$binct)


## Stony coral RHI

Coral_UK_1 <- subset(UK_data, Stony_coral <1.82)
Coral_UK_2 <- subset(UK_data, Stony_coral >= 1.82  & Stony_coral < 2.76 )
Coral_UK_3 <- subset(UK_data, Stony_coral >= 2.76  & Stony_coral < 4.05 )
Coral_UK_4 <- subset(UK_data, Stony_coral >= 4.05  & Stony_coral < 7.03 )
Coral_UK_5 <- subset(UK_data, Stony_coral >=  7.03 & Stony_coral < 27 )


Coral_UK_1$RHI_Coral <- "1"
Coral_UK_2$RHI_Coral <- "2"
Coral_UK_3$RHI_Coral <- "3"
Coral_UK_4$RHI_Coral <- "4"
Coral_UK_5$RHI_Coral <- "5"

Coral_UK_RHI <- rbind(Coral_UK_1,Coral_UK_2,Coral_UK_3,Coral_UK_4,Coral_UK_5)  



## Macroalgae

UK_macroalgae_bins <- bins(UK_data$Macroalgae,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
view(UK_macroalgae_bins$binct)



Macroalgae_UK_1 <- subset(UK_data, Macroalgae >20.24)
Macroalgae_UK_2 <- subset(UK_data, Macroalgae <= 20.24  & Macroalgae > 14.1)
Macroalgae_UK_3 <- subset(UK_data, Macroalgae <= 14.1  & Macroalgae > 10.029 )
Macroalgae_UK_4 <- subset(UK_data, Macroalgae <= 10.029  & Macroalgae > 4.14 )
Macroalgae_UK_5 <- subset(UK_data, Macroalgae <= 4.14 & Macroalgae > 0.001)


Macroalgae_UK_1$RHI_Macroalgae <- "1"
Macroalgae_UK_2$RHI_Macroalgae <- "2"
Macroalgae_UK_3$RHI_Macroalgae <- "3"
Macroalgae_UK_4$RHI_Macroalgae <- "4"
Macroalgae_UK_5$RHI_Macroalgae <- "5"

Macroalgae_UK_RHI <- rbind(Macroalgae_UK_1,Macroalgae_UK_2,Macroalgae_UK_3,Macroalgae_UK_4,Macroalgae_UK_5)  


Coral_macro_UK_RHI <- merge(Coral_UK_RHI, Macroalgae_UK_RHI)



## Southeast Florida 


BC_data <- filter(CREMP, subRegionId == "BC")
DC_data <- filter(CREMP, subRegionId == "DC")
MC_data <- filter(CREMP, subRegionId == "MC")
PBC_data <- filter(CREMP, subRegionId == "PBC")

SEF_data <- rbind(BC_data,DC_data,MC_data,PBC_data)


SEF_coral_bins <- bins(SEF_data$Stony_coral,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
view(SEF_coral_bins$binct)


## Stony coral RHI

Coral_SEF_1 <- subset(SEF_data, Stony_coral <.4464)
Coral_SEF_2 <- subset(SEF_data, Stony_coral >= .4488  & Stony_coral < .96 )
Coral_SEF_3 <- subset(SEF_data, Stony_coral >= .96  & Stony_coral <  1.547)
Coral_SEF_4 <- subset(SEF_data, Stony_coral >= 1.547  & Stony_coral < 3.03 )
Coral_SEF_5 <- subset(SEF_data, Stony_coral >=  3.03 & Stony_coral < 40 )


Coral_SEF_1$RHI_Coral <- "1"
Coral_SEF_2$RHI_Coral <- "2"
Coral_SEF_3$RHI_Coral <- "3"
Coral_SEF_4$RHI_Coral <- "4"
Coral_SEF_5$RHI_Coral <- "5"

Coral_SEF_RHI <- rbind(Coral_SEF_1,Coral_SEF_2,Coral_SEF_3,Coral_SEF_4,Coral_SEF_5)  



## Macroalgae

SEF_macroalgae_bins <- bins(SEF_data$Macroalgae,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
view(SEF_macroalgae_bins$binct)



Macroalgae_SEF_1 <- subset(SEF_data, Macroalgae >18.72)
Macroalgae_SEF_2 <- subset(SEF_data, Macroalgae <= 18.72  & Macroalgae > 9.72)
Macroalgae_SEF_3 <- subset(SEF_data, Macroalgae <= 9.72  & Macroalgae > 4.85 )
Macroalgae_SEF_4 <- subset(SEF_data, Macroalgae <= 4.85  & Macroalgae > 2.15 )
Macroalgae_SEF_5 <- subset(SEF_data, Macroalgae <= 2.15 & Macroalgae >= 0)


Macroalgae_SEF_1$RHI_Macroalgae <- "1"
Macroalgae_SEF_2$RHI_Macroalgae <- "2"
Macroalgae_SEF_3$RHI_Macroalgae <- "3"
Macroalgae_SEF_4$RHI_Macroalgae <- "4"
Macroalgae_SEF_5$RHI_Macroalgae <- "5"

Macroalgae_SEF_RHI <- rbind(Macroalgae_SEF_1,Macroalgae_SEF_2,Macroalgae_SEF_3,Macroalgae_SEF_4,Macroalgae_SEF_5)  


Coral_macro_SEF_RHI <- merge(Coral_SEF_RHI, Macroalgae_SEF_RHI)
Coral_macro_SEF_RHI$subRegionId <- "SEF"


Coral_macro_combine <- rbind(Coral_macro_DT_RHI,Coral_macro_LK_RHI,Coral_macro_MK_RHI,Coral_macro_UK_RHI,Coral_macro_SEF_RHI)

Coral_macro_combine_RHI <- select(Coral_macro_combine, c("Year","sitename","RHI_Coral","RHI_Macroalgae"))



### Add fish data from each region (outputs of 10_RHI_per_Reef)

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF")

## Herbivorous Fish first

RHI_herb <- read_csv("All_regions_RVC_herbivorous_RHI.csv")

CREMP_RVC_RHI_herb_combined <- inner_join(RHI_herb, Coral_macro_combine_RHI, by = c("sitename","Year"))

CREMP_RVC_RHI_herb_combined$sum <- NULL
CREMP_RVC_RHI_herb_combined_by_year <- CREMP_RVC_RHI_herb_combined [,c(1,4,2,3,5,6)]
colnames(CREMP_RVC_RHI_herb_combined_by_year)[4] <- "RHI_Herb"


## Commercial Fish 

RHI_comm <- read_csv("All_regions_RVC_commercial_RHI.csv")

CREMP_RVC_RHI_comm_combined <- inner_join(RHI_comm, Coral_macro_combine_RHI, by = c("sitename","Year"))

CREMP_RVC_RHI_comm_combined$sum <- NULL
CREMP_RVC_RHI_comm_combined_by_year <- CREMP_RVC_RHI_comm_combined [,c(1,4,2,3,5,6)]
colnames(CREMP_RVC_RHI_comm_combined_by_year)[4] <- "RHI_Comm"

CREMP_RVC_RHI_all_combined <- inner_join(CREMP_RVC_RHI_herb_combined_by_year,CREMP_RVC_RHI_comm_combined_by_year)


###CREMP_RVC_RHI_all_combined$RHI_Average <- rowMeans(CREMP_RVC_RHI_all_combined [,c("RHI_Herb","RHI_Coral","RHI_Macroalgae","RHI_Comm")])
## Just get RHI_average in excel
export(CREMP_RVC_RHI_all_combined,"CREMP_RVC_Regions_all_new.csv")


### Read the csv back in with RHI_Average column 


RHI_read <- read_csv("CREMP_RVC_Regions_all_new.csv")



RHI_read$RHI_Average <- rowMeans(subset(RHI_read, select = c(RHI_Herb,RHI_Macroalgae,RHI_Coral,RHI_Comm)))


RHI_master <- select(RHI_read, Year, sitename, SUBREGION, RHI_Average)


## Graph per reef for all reefs 

##MK

setwd("C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/RHI/MK")

Alligator_Deep <- filter(RHI_master, sitename == "Alligator Deep")
export(Alligator_Deep,"Alligator_Deep.csv")

ggplot(Alligator_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Alligator Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Alligator_Deep$Year), max(Alligator_Deep$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Alligator_Deep.png", width = 8, height = 4)


Alligator_Shallow <- filter(RHI_master, sitename == "Alligator Shallow")
export(Alligator_Shallow,"Alligator_Shallow.csv")

ggplot(Alligator_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Alligator Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Alligator_Shallow$Year), max(Alligator_Shallow$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Alligator_Shallow.png", width = 8, height = 4)


Dustan_Rocks <- filter(RHI_master, sitename == "Dustan Rocks")
export(Dustan_Rocks,"Dustan_Rocks.csv")

ggplot(Dustan_Rocks, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dustan Rocks")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Dustan_Rocks$Year), max(Dustan_Rocks$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Dustan_Rocks.png", width = 8, height = 4)



Long_Key <- filter(RHI_master, sitename == "Long Key")
export(Long_Key,"Long_Key.csv")

ggplot(Long_Key, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Long Key")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Long_Key$Year), max(Long_Key$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Long_Key.png", width = 8, height = 4)


# Molasses_Key <- filter(RHI_master, sitename == "Molasses Key")
# export(Molasses_Key,"Molasses_Key.csv")
# 
# ggplot(Molasses_Key, aes(Year, RHI_Average))+
#   ggtitle("Reef Health Index", subtitle = "Molasses Key")+
#   geom_line(size = 1, color = "red")+
#   geom_point(size = 1)+
#   scale_y_continuous(limits = c(0,5))+
#   theme_light()+
#   theme(
#     plot.title = element_text(hjust = 0.5),
#     plot.subtitle = element_text(hjust = 0.5),
#     legend.background = element_blank(),
#     legend.box.background = element_rect(colour = "black"))+
#   ylab("RHI")
# 
# ggsave ("plots/Molasses_Key.png", width = 8, height = 4)
# 
# 
# Moser_Channel <- filter(RHI_master, sitename == "Moser Channel")
# export(Moser_Channel,"Moser_Channel.csv")
# 
# ggplot(Moser_Channel, aes(Year, RHI_Average))+
#   ggtitle("Reef Health Index", subtitle = "Moser Channel")+
#   geom_line(size = 1, color = "red")+
#   geom_point(size = 1)+
#   scale_y_continuous(limits = c(0,5))+
#   theme_light()+
#   theme(
#     plot.title = element_text(hjust = 0.5),
#     plot.subtitle = element_text(hjust = 0.5),
#     legend.background = element_blank(),
#     legend.box.background = element_rect(colour = "black"))+
#   ylab("RHI")
# 
# ggsave ("plots/Moser_Channel.png", width = 8, height = 4)



Rawa_Reef <- filter(RHI_master, sitename == "Rawa Reef")
export(Rawa_Reef,"Rawa_Reef.csv")

ggplot(Rawa_Reef, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Rawa Reef")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Rawa_Reef$Year), max(Rawa_Reef$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Rawa_Reef.png", width = 8, height = 4)



Sombrero_Deep <- filter(RHI_master, sitename == "Sombrero Deep")
export(Sombrero_Deep,"Sombrero_Deep.csv")

ggplot(Sombrero_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Sombrero Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Sombrero_Deep$Year), max(Sombrero_Deep$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Sombrero_Deep.png", width = 8, height = 4)



Sombrero_Shallow <- filter(RHI_master, sitename == "Sombrero Shallow")
export(Sombrero_Shallow,"Sombrero_Shallow.csv")

ggplot(Sombrero_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Sombrero Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Sombrero_Shallow$Year), max(Sombrero_Shallow$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Sombrero_Shallow.png", width = 8, height = 4)



Tennessee_Deep <- filter(RHI_master, sitename == "Tennessee Deep")
export(Tennessee_Deep,"Tennessee_Deep.csv")

ggplot(Tennessee_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Tennessee Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Tennessee_Deep$Year), max(Tennessee_Deep$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Tennessee_Deep.png", width = 8, height = 4)



Tennessee_Shallow <- filter(RHI_master, sitename == "Tennessee Shallow")
export(Tennessee_Shallow,"Tennessee_Shallow.csv")

ggplot(Tennessee_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Tennessee Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Tennessee_Shallow$Year), max(Tennessee_Shallow$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Tennessee_Shallow.png", width = 8, height = 4)



Thor <- filter(RHI_master, sitename == "Thor")
export(Thor,"Thor.csv")

ggplot(Thor, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Thor")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Thor$Year), max(Thor$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Thor.png", width = 8, height = 4)



West_Turtle_Shoal <- filter(RHI_master, sitename == "West Turtle Shoal")
export(West_Turtle_Shoal,"West_Turtle_Shoal.csv")

ggplot(West_Turtle_Shoal, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "West Turtle Shoal")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(West_Turtle_Shoal$Year), max(West_Turtle_Shoal$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/West_Turtle_Shoal.png", width = 8, height = 4)


### Combine 

MK_RHI <- rbind(Alligator_Deep,Alligator_Shallow,Dustan_Rocks,Long_Key,Rawa_Reef,Sombrero_Deep,Sombrero_Shallow,Tennessee_Deep,Tennessee_Shallow,Thor,West_Turtle_Shoal)
export(MK_RHI, "MK_RHI.csv")


## LK


setwd("C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/RHI/LK")

Eastern_Sambo_Deep <- filter(RHI_master, sitename == "Eastern Sambo Deep")
export(Eastern_Sambo_Deep,"Eastern_Sambo_Deep.csv")

ggplot(Eastern_Sambo_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Eastern Sambo Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Eastern_Sambo_Deep$Year), max(Eastern_Sambo_Deep$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Eastern_Sambo_Deep.png", width = 8, height = 4)



Eastern_Sambo_Shallow <- filter(RHI_master, sitename == "Eastern Sambo Shallow")
export(Eastern_Sambo_Shallow,"Eastern_Sambo_Shallow.csv")

ggplot(Eastern_Sambo_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Eastern Sambo Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Eastern_Sambo_Shallow$Year), max(Eastern_Sambo_Shallow$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Eastern_Sambo_Shallow.png", width = 8, height = 4)



Jaap_Reef <- filter(RHI_master, sitename == "Jaap Reef")
export(Jaap_Reef,"Jaap_Reef.csv")

ggplot(Jaap_Reef, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Jaap Reef")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Jaap_Reef$Year), max(Jaap_Reef$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Jaap_Reef.png", width = 8, height = 4)



Looe_Key_Deep <- filter(RHI_master, sitename == "Looe Key Deep")
export(Looe_Key_Deep,"Looe_Key_Deep.csv")

ggplot(Looe_Key_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Looe Key Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Looe_Key_Deep$Year), max(Looe_Key_Deep$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Looe_Key_Deep.png", width = 8, height = 4)



Looe_Key_Shallow <- filter(RHI_master, sitename == "Looe Key Shallow")
export(Looe_Key_Shallow,"Looe_Key_Shallow.csv")

ggplot(Looe_Key_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Looe Key Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Looe_Key_Shallow$Year), max(Looe_Key_Shallow$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Looe_Key_Shallow.png", width = 8, height = 4)




Red_Dun_Reef <- filter(RHI_master, sitename == "Red Dun Reef")
export(Red_Dun_Reef,"Red_Dun_Reef.csv")

ggplot(Red_Dun_Reef, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Red Dun Reef")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Red_Dun_Reef$Year), max(Red_Dun_Reef$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Red_Dun_Reef.png", width = 8, height = 4)



Rock_Key_Deep <- filter(RHI_master, sitename == "Rock Key Deep")
export(Rock_Key_Deep,"Rock_Key_Deep.csv")

ggplot(Rock_Key_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Rock Key Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Rock_Key_Deep$Year), max(Rock_Key_Deep$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Rock_Key_Deep.png", width = 8, height = 4)




Rock_Key_Shallow <- filter(RHI_master, sitename == "Rock Key Shallow")
export(Rock_Key_Shallow,"Rock_Key_Shallow.csv")

ggplot(Rock_Key_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Rock Key Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Rock_Key_Shallow$Year), max(Rock_Key_Shallow$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Rock_Key_Shallow.png", width = 8, height = 4)



Sand_Key_Deep <- filter(RHI_master, sitename == "Sand Key Deep")
export(Sand_Key_Deep,"Sand_Key_Deep.csv")

ggplot(Sand_Key_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Sand Key Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Sand_Key_Deep$Year), max(Sand_Key_Deep$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Sand_Key_Deep.png", width = 8, height = 4)




Sand_Key_Shallow <- filter(RHI_master, sitename == "Sand Key Shallow")
export(Sand_Key_Shallow,"Sand_Key_Shallow.csv")

ggplot(Sand_Key_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Sand Key Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Sand_Key_Shallow$Year), max(Sand_Key_Shallow$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Sand_Key_Shallow.png", width = 8, height = 4)



Smith_Shoal <- filter(RHI_master, sitename == "Smith Shoal")
export(Smith_Shoal,"Smith_Shoal.csv")

ggplot(Smith_Shoal, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Smith Shoal")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Smith_Shoal$Year), max(Smith_Shoal$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Smith_Shoal.png", width = 8, height = 4)



West_Washer_Woman <- filter(RHI_master, sitename == "West Washer Woman")
export(West_Washer_Woman,"West_Washer_Woman.csv")

ggplot(West_Washer_Woman, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "West Washer Woman")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(West_Washer_Woman$Year), max(West_Washer_Woman$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/West_Washer_Woman.png", width = 8, height = 4)



# Western_Head <- filter(RHI_master, sitename == "Western Head")
# export(Western_Head,"Western_Head.csv")
# 
# ggplot(Western_Head, aes(Year, RHI_Average))+
#   ggtitle("Reef Health Index", subtitle = "Western Head")+
#   geom_line(size = 1, color = "red")+
#   geom_point(size = 1)+
#   scale_y_continuous(limits = c(0,5))+
#   theme_light()+
#   theme(
#     plot.title = element_text(hjust = 0.5),
#     plot.subtitle = element_text(hjust = 0.5),
#     legend.background = element_blank(),
#     legend.box.background = element_rect(colour = "black"))+
#   ylab("RHI")
# 
# ggsave ("plots/Western_Head.png", width = 8, height = 4)




Western_Sambo_Deep <- filter(RHI_master, sitename == "Western Sambo Deep")
export(Western_Sambo_Deep,"Western_Sambo_Deep.csv")

ggplot(Western_Sambo_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Western Sambo Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Western_Sambo_Deep$Year), max(Western_Sambo_Deep$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Western_Sambo_Deep.png", width = 8, height = 4)



Western_Sambo_Shallow <- filter(RHI_master, sitename == "Western Sambo Shallow")
export(Western_Sambo_Shallow,"Western_Sambo_Shallow.csv")

ggplot(Western_Sambo_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Western Sambo Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Western_Sambo_Shallow$Year), max(Western_Sambo_Shallow$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Western_Sambo_Shallow.png", width = 8, height = 4)

LK_RHI <- rbind(Eastern_Sambo_Deep,Eastern_Sambo_Shallow,Jaap_Reef,Looe_Key_Deep,Looe_Key_Shallow,Red_Dun_Reef,Rock_Key_Deep,Rock_Key_Shallow,Sand_Key_Deep,Sand_Key_Shallow,Smith_Shoal,West_Washer_Woman,Western_Sambo_Deep,Western_Sambo_Shallow)
export(LK_RHI, "LK_RHI.csv")



## UK
setwd("C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/RHI/UK")


Admiral <- filter(RHI_master, sitename == "Admiral")
export(Admiral,"Admiral.csv")

ggplot(Admiral, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Admiral")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Admiral$Year), max(Admiral$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Admiral.png", width = 8, height = 4)



Burr_Fish <- filter(RHI_master, sitename == "Burr Fish")
export(Burr_Fish,"Burr_Fish.csv")

ggplot(Burr_Fish, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Burr Fish")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Burr_Fish$Year), max(Burr_Fish$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Burr_Fish.png", width = 8, height = 4)



Carysfort_Deep <- filter(RHI_master, sitename == "Carysfort Deep")
export(Carysfort_Deep,"Carysfort_Deep.csv")

ggplot(Carysfort_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Carysfort Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Carysfort_Deep$Year), max(Carysfort_Deep$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Carysfort_Deep.png", width = 8, height = 4)



Carysfort_Shallow <- filter(RHI_master, sitename == "Carysfort Shallow")
export(Carysfort_Shallow,"Carysfort_Shallow.csv")

ggplot(Carysfort_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Carysfort Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Carysfort_Shallow$Year), max(Carysfort_Shallow$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Carysfort_Shallow.png", width = 8, height = 4)



Conch_Deep <- filter(RHI_master, sitename == "Conch Deep")
export(Conch_Deep,"Conch_Deep.csv")

ggplot(Conch_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Conch Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Conch_Deep$Year), max(Conch_Deep$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Conch_Deep.png", width = 8, height = 4)



Conch_Shallow <- filter(RHI_master, sitename == "Conch Shallow")
export(Conch_Shallow,"Conch_Shallow.csv")

ggplot(Conch_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Conch Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Conch_Shallow$Year), max(Conch_Shallow$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Conch_Shallow.png", width = 8, height = 4)




Grecian_Rocks <- filter(RHI_master, sitename == "Grecian Rocks")
export(Grecian_Rocks,"Grecian_Rocks.csv")

ggplot(Grecian_Rocks, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Grecian Rocks")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Grecian_Rocks$Year), max(Grecian_Rocks$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Grecian_Rocks.png", width = 8, height = 4)




Molasses_Deep <- filter(RHI_master, sitename == "Molasses Deep")
export(Molasses_Deep,"Molasses_Deep.csv")

ggplot(Molasses_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Molasses Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Molasses_Deep$Year), max(Molasses_Deep$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Molasses_Deep.png", width = 8, height = 4)



Molasses_Shallow <- filter(RHI_master, sitename == "Molasses Shallow")
export(Molasses_Shallow,"Molasses_Shallow.csv")

ggplot(Molasses_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Molasses Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Molasses_Shallow$Year), max(Molasses_Shallow$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Molasses_Shallow.png", width = 8, height = 4)



Porter_Patch <- filter(RHI_master, sitename == "Porter Patch")
export(Porter_Patch,"Porter_Patch.csv")

ggplot(Porter_Patch, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Porter Patch")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Porter_Patch$Year), max(Porter_Patch$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Porter_Patch.png", width = 8, height = 4)



Turtle <- filter(RHI_master, sitename == "Turtle")
export(Turtle,"Turtle.csv")

ggplot(Turtle, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Turtle")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Turtle$Year), max(Turtle$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Turtle.png", width = 8, height = 4)



Two_Patches <- filter(RHI_master, sitename == "Two Patches")
export(Two_Patches,"Two_Patches.csv")

ggplot(Two_Patches, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Two Patches")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Two_Patches$Year), max(Two_Patches$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Two_Patches.png", width = 8, height = 4)




UK_RHI <- rbind(Admiral, Burr_Fish, Carysfort_Deep, Carysfort_Shallow, Conch_Deep, Conch_Shallow, Grecian_Rocks, Molasses_Deep, Molasses_Shallow, Porter_Patch, Turtle, Two_Patches)
export(UK_RHI, "UK_RHI.csv")




### DT

setwd("C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/RHI/DT")


Bird_Key_Reef <- filter(RHI_master, sitename == "Bird Key Reef")
export(Bird_Key_Reef,"Bird_Key_Reef.csv")

ggplot(Bird_Key_Reef, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Bird Key Reef")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Bird_Key_Reef$Year), max(Bird_Key_Reef$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Bird_Key_Reef.png", width = 8, height = 4)




Black_Coral_Rock <- filter(RHI_master, sitename == "Black Coral Rock")
export(Black_Coral_Rock,"Black_Coral_Rock.csv")

ggplot(Black_Coral_Rock, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Black Coral Rock")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Black_Coral_Rock$Year), max(Black_Coral_Rock$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Black_Coral_Rock.png", width = 8, height = 4)



Davis_Rock <- filter(RHI_master, sitename == "Davis Rock")
export(Davis_Rock,"Davis_Rock.csv")

ggplot(Davis_Rock, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Davis Rock")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Davis_Rock$Year), max(Davis_Rock$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Davis_Rock.png", width = 8, height = 4)



Loggerhead_Patch <- filter(RHI_master, sitename == "Loggerhead Patch")
export(Loggerhead_Patch,"Loggerhead_Patch.csv")

ggplot(Loggerhead_Patch, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Loggerhead Patch")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Loggerhead_Patch$Year), max(Loggerhead_Patch$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Loggerhead_Patch.png", width = 8, height = 4)




Mayers_Peak <- filter(RHI_master, sitename == "Mayers Peak")
export(Mayers_Peak,"Mayers_Peak.csv")

ggplot(Mayers_Peak, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Mayers Peak")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Mayers_Peak$Year), max(Mayers_Peak$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Mayers_Peak.png", width = 8, height = 4)



Palmata_Patch <- filter(RHI_master, sitename == "Palmata Patch")
export(Palmata_Patch,"Palmata_Patch.csv")

ggplot(Palmata_Patch, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Palmata Patch")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Palmata_Patch$Year), max(Palmata_Patch$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Palmata_Patch.png", width = 8, height = 4)



Prolifera_Patch <- filter(RHI_master, sitename == "Prolifera Patch")
export(Prolifera_Patch,"Prolifera_Patch.csv")

ggplot(Prolifera_Patch, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Prolifera Patch")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Prolifera_Patch$Year), max(Prolifera_Patch$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Prolifera_Patch.png", width = 8, height = 4)



Temptation_Rock <- filter(RHI_master, sitename == "Temptation Rock")
export(Temptation_Rock,"Temptation_Rock.csv")

ggplot(Temptation_Rock, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Temptation Rock")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Temptation_Rock$Year), max(Temptation_Rock$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Temptation_Rock.png", width = 8, height = 4)



Texas_Rock <- filter(RHI_master, sitename == "Texas Rock")
export(Texas_Rock,"Texas_Rock.csv")

ggplot(Texas_Rock, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Texas Rock")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Texas_Rock$Year), max(Texas_Rock$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Texas_Rock.png", width = 8, height = 4)



Maze <- filter(RHI_master, sitename == "Maze")
export(Maze,"Maze.csv")

ggplot(Maze, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Maze")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Maze$Year), max(Maze$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Maze.png", width = 8, height = 4)



White_Shoal <- filter(RHI_master, sitename == "White Shoal")
export(White_Shoal,"White_Shoal.csv")

ggplot(White_Shoal, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "White Shoal")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(White_Shoal$Year), max(White_Shoal$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/White_Shoal.png", width = 8, height = 4)


DT_RHI <- rbind(Bird_Key_Reef,Black_Coral_Rock, Davis_Rock, Loggerhead_Patch, Mayers_Peak, Palmata_Patch,Prolifera_Patch, Maze, Temptation_Rock, Texas_Rock, White_Shoal)
export(DT_RHI,"DT_RHI.csv")


### SEF

setwd("C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/RHI/SEF")


Broward_County_1 <- filter(RHI_master, sitename == "Broward County 1")
export(Broward_County_1,"Broward_County_1.csv")

ggplot(Broward_County_1, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Broward County 1")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Broward_County_1$Year), max(Broward_County_1$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Broward_County_1.png", width = 8, height = 4)



Broward_County_2 <- filter(RHI_master, sitename == "Broward County 2")
export(Broward_County_2,"Broward_County_2.csv")

ggplot(Broward_County_2, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Broward County 2")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Broward_County_2$Year), max(Broward_County_2$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Broward_County_2.png", width = 8, height = 4)




Broward_County_3 <- filter(RHI_master, sitename == "Broward County 3")
export(Broward_County_3,"Broward_County_3.csv")

ggplot(Broward_County_3, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Broward County 3")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Broward_County_3$Year), max(Broward_County_3$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Broward_County_3.png", width = 8, height = 4)



Broward_County_4 <- filter(RHI_master, sitename == "Broward County 4")
export(Broward_County_4,"Broward_County_4.csv")

ggplot(Broward_County_4, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Broward County 4")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Broward_County_4$Year), max(Broward_County_4$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Broward_County_4.png", width = 8, height = 4)




Broward_County_5 <- filter(RHI_master, sitename == "Broward County 5")
export(Broward_County_5,"Broward_County_5.csv")

ggplot(Broward_County_5, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Broward County 5")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Broward_County_5$Year), max(Broward_County_5$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Broward_County_5.png", width = 8, height = 4)




Broward_County_6 <- filter(RHI_master, sitename == "Broward County 6")
export(Broward_County_6,"Broward_County_6.csv")

ggplot(Broward_County_6, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Broward County 6")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Broward_County_6$Year), max(Broward_County_6$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Broward_County_6.png", width = 8, height = 4)




Broward_County_A <- filter(RHI_master, sitename == "Broward County A")
export(Broward_County_A,"Broward_County_A.csv")

ggplot(Broward_County_A, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Broward County A")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Broward_County_A$Year), max(Broward_County_A$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Broward_County_A.png", width = 8, height = 4)




Dade_County_1 <- filter(RHI_master, sitename == "Dade County 1")
export(Dade_County_1,"Dade_County_1.csv")

ggplot(Dade_County_1, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dade County 1")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Dade_County_1$Year), max(Dade_County_1$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Dade_County_1.png", width = 8, height = 4)



Dade_County_2 <- filter(RHI_master, sitename == "Dade County 2")
export(Dade_County_2,"Dade_County_2.csv")

ggplot(Dade_County_2, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dade County 2")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Dade_County_2$Year), max(Dade_County_2$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Dade_County_2.png", width = 8, height = 4)



Dade_County_3 <- filter(RHI_master, sitename == "Dade County 3")
export(Dade_County_3,"Dade_County_3.csv")

ggplot(Dade_County_3, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dade County 3")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Dade_County_3$Year), max(Dade_County_3$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Dade_County_3.png", width = 8, height = 4)



Dade_County_4 <- filter(RHI_master, sitename == "Dade County 4")
export(Dade_County_4,"Dade_County_4.csv")

ggplot(Dade_County_4, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dade County 4")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Dade_County_4$Year), max(Dade_County_4$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Dade_County_4.png", width = 8, height = 4)



Dade_County_5 <- filter(RHI_master, sitename == "Dade County 5")
export(Dade_County_5,"Dade_County_5.csv")

ggplot(Dade_County_5, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dade County 5")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Dade_County_5$Year), max(Dade_County_5$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Dade_County_5.png", width = 8, height = 4)



Dade_County_6 <- filter(RHI_master, sitename == "Dade County 6")
export(Dade_County_6,"Dade_County_6.csv")

ggplot(Dade_County_6, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dade County 6")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Dade_County_6$Year), max(Dade_County_6$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Dade_County_6.png", width = 8, height = 4)


Dade_County_7 <- filter(RHI_master, sitename == "Dade County 7")
export(Dade_County_7,"Dade_County_7.csv")

ggplot(Dade_County_7, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dade County 7")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Dade_County_7$Year), max(Dade_County_7$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Dade_County_7.png", width = 8, height = 4)




Dade_County_8 <- filter(RHI_master, sitename == "Dade County 8")
export(Dade_County_8,"Dade_County_8.csv")

ggplot(Dade_County_8, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dade County 8")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Dade_County_8$Year), max(Dade_County_8$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Dade_County_8.png", width = 8, height = 4)






Martin_County_1 <- filter(RHI_master, sitename == "Martin County 1")
export(Martin_County_1,"Martin_County_1.csv")

ggplot(Martin_County_1, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Martin County 1")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Martin_County_1$Year), max(Martin_County_1$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Martin_County_1.png", width = 8, height = 4)




Martin_County_2 <- filter(RHI_master, sitename == "Martin County 2")
export(Martin_County_2,"Martin_County_2.csv")

ggplot(Martin_County_2, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Martin County 2")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Martin_County_2$Year), max(Martin_County_2$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Martin_County_2.png", width = 8, height = 4)




Palm_Beach_1 <- filter(RHI_master, sitename == "Palm Beach 1")
export(Palm_Beach_1,"Palm_Beach_1.csv")

ggplot(Palm_Beach_1, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Palm Beach 1")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Palm_Beach_1$Year), max(Palm_Beach_1$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Palm_Beach_1.png", width = 8, height = 4)



Palm_Beach_2 <- filter(RHI_master, sitename == "Palm Beach 2")
export(Palm_Beach_2,"Palm_Beach_2.csv")

ggplot(Palm_Beach_2, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Palm Beach 2")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Palm_Beach_2$Year), max(Palm_Beach_2$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Palm_Beach_2.png", width = 8, height = 4)



Palm_Beach_3 <- filter(RHI_master, sitename == "Palm Beach 3")
export(Palm_Beach_3,"Palm_Beach_3.csv")

ggplot(Palm_Beach_3, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Palm Beach 3")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Palm_Beach_3$Year), max(Palm_Beach_3$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Palm_Beach_3.png", width = 8, height = 4)



Palm_Beach_4 <- filter(RHI_master, sitename == "Palm Beach 4")
export(Palm_Beach_4,"Palm_Beach_4.csv")

ggplot(Palm_Beach_4, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Palm Beach 4")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Palm_Beach_4$Year), max(Palm_Beach_4$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")


ggsave ("plots/Palm_Beach_4.png", width = 8, height = 4)




Palm_Beach_5 <- filter(RHI_master, sitename == "Palm Beach 5")
export(Palm_Beach_5,"Palm_Beach_5.csv")

ggplot(Palm_Beach_5, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Palm Beach 5")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1.1, ymax = 2, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2.1, ymax = 3,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 3.1, ymax = 4, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4.1, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_line(size = 1, color = "red")+
  geom_point()+
  scale_y_continuous(limits = c(0,5))+
  scale_x_continuous(breaks = round(seq(min(Palm_Beach_5$Year), max(Palm_Beach_5$Year), by = 2),1))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Palm_Beach_5.png", width = 8, height = 4)


SEF_RHI <- rbind(Broward_County_1,Broward_County_2,Broward_County_3,Broward_County_4,Broward_County_5,Broward_County_6,Broward_County_A, Dade_County_1, Dade_County_2,Dade_County_3,Dade_County_4,Dade_County_5,Dade_County_6,Dade_County_7,Dade_County_8,Martin_County_1,Martin_County_2,Palm_Beach_1,Palm_Beach_2,Palm_Beach_3,Palm_Beach_4)
export(SEF_RHI,"SEF_RHI.csv")



### Combine all 

setwd("C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/RHI")

DT_RHI <- read_csv("DT/DT_RHI.csv")
LK_RHI <- read_csv("LK/LK_RHI.csv")
MK_RHI <- read_csv("MK/MK_RHI.csv")
UK_RHI <- read_csv("UK/UK_RHI.csv")
SEF_RHI <- read_csv("SEF/SEF_RHI.csv")

All_regions_RHI <- rbind(DT_RHI,LK_RHI,MK_RHI,UK_RHI,SEF_RHI)

export(All_regions_RHI,"All_regions_RHI.csv")



               