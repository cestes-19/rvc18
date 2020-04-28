

library(rio)
library("magrittr")
library(tidyverse)
library(data.table)
library(plyr)

setwd("C:/Users/cara.estes/Documents/Spring_2020/1996_2017")

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


Coral_macro_combine <- data.frame(Coral_macro_RHI$Year,Coral_macro_RHI$sitename,Coral_macro_RHI$RHI_Coral,Coral_macro_RHI$RHI_Macroalgae)
colnames(Coral_macro_combine) <- c("Year","sitename","RHI_coral","RHI_macroalgae")




##Add fish data

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF")




## Herbivorous 

RHI_herb <- read_csv("All_regions_RVC_herbivorous_RHI.csv")


### Combine with join function (herbivorous first and commercial second) 

CREMP_RVC_RHI_herb_combined <- merge(RHI_herb, CREMP, by = c("sitename","Year"))

## Clean it up 
CREMP_RVC_RHI_herb_combined$subRegionId <- NULL
CREMP_RVC_RHI_herb_combined_by_year <- arrange(CREMP_RVC_RHI_herb_combined, Year)

### output (arranged by year or reef)

colnames(CREMP_RVC_RHI_herb_combined_by_year)[4] <- "RHI_Herb"
#export(CREMP_RVC_RHI_herb_combined_by_year,"C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/CREMP_RVC_RHI_herbivorous_YEAR.csv")
#export(CREMP_RVC_RHI_herb_combined,"C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/CREMP_RVC_RHI_herbivorous_REEF.csv" )


## Commercial 

RHI_comm <- read_csv("All_regions_RVC_commercial_RHI.csv")


### Combine with join function (commivorous first and commercial second) SOMETHING IS HAPPENING HERE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

CREMP_RVC_RHI_comm_combined <- merge(RHI_comm, CREMP, by = c("sitename","Year"))

## Clean it up 
CREMP_RVC_RHI_comm_combined$subRegionId <- NULL
CREMP_RVC_RHI_comm_combined_by_year <- arrange(CREMP_RVC_RHI_comm_combined, Year)

### output (arranged by year or reef)
colnames(CREMP_RVC_RHI_comm_combined_by_year)[4] <- "RHI_Comm"

#export(CREMP_RVC_RHI_comm_combined_by_year,"C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/CREMP_RVC_RHI_commercial_YEAR.csv")
#export(CREMP_RVC_RHI_comm_combined,"C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/CREMP_RVC_RHI_commercial_REEF.csv" )

## combine herbivorous with commercial fish

RHI_final <- merge(CREMP_RVC_RHI_herb_combined_by_year,CREMP_RVC_RHI_comm_combined_by_year, by = c("Year","sitename"))

# clean it up (could use select)

RHI_export <- data.frame(RHI_final$Year,RHI_final$sitename,RHI_final$RHI_Herb, RHI_final$SUBREGION.x,RHI_final$RHI_Comm)


colnames(RHI_export) <- c("Year","sitename","RHI_Herb","Subregion","RHI_Comm")




### combine coral/macro with fish RHI values 
RHI_test <- merge(Coral_macro_combine, RHI_export)



#output
export(RHI_test, "RHI_RVC_CREMP_ALL.csv")


### take the average of all RHI columns (done in excel) (4 categories) and plot 

setwd("C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC")

RHI_read <- read_csv("RHI_RVC_CREMP_Average.csv")

RHI_master <- select(RHI_read, Year,sitename,Subregion,RHI_Average)

## Graph per reef for all reefs 

##MK

setwd("C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/RHI/MK")

Alligator_Deep <- filter(RHI_master, sitename == "Alligator Deep")
export(Alligator_Deep,"Alligator_Deep.csv")

ggplot(Alligator_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Alligator Deep")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Alligator_Deep.png", width = 8, height = 4)


Alligator_Shallow <- filter(RHI_master, sitename == "Alligator Shallow")
export(Alligator_Shallow,"Alligator_Shallow.csv")

ggplot(Alligator_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Alligator Shallow")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Alligator_Shallow.png", width = 8, height = 4)


Dustan_Rocks <- filter(RHI_master, sitename == "Dustan Rocks")
export(Dustan_Rocks,"Dustan_Rocks.csv")

ggplot(Dustan_Rocks, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dustan Rocks")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Dustan_Rocks.png", width = 8, height = 4)



Long_Key <- filter(RHI_master, sitename == "Long Key")
export(Long_Key,"Long_Key.csv")

ggplot(Long_Key, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Long Key")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
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
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Rawa_Reef.png", width = 8, height = 4)



Sombrero_Deep <- filter(RHI_master, sitename == "Sombrero Deep")
export(Sombrero_Deep,"Sombrero_Deep.csv")

ggplot(Sombrero_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Sombrero Deep")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Sombrero_Deep.png", width = 8, height = 4)



Sombrero_Shallow <- filter(RHI_master, sitename == "Sombrero Shallow")
export(Sombrero_Shallow,"Sombrero_Shallow.csv")

ggplot(Sombrero_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Sombrero Shallow")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Sombrero_Shallow.png", width = 8, height = 4)



Tennessee_Deep <- filter(RHI_master, sitename == "Tennessee Deep")
export(Tennessee_Deep,"Tennessee_Deep.csv")

ggplot(Tennessee_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Tennessee Deep")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Tennessee_Deep.png", width = 8, height = 4)



Tennessee_Shallow <- filter(RHI_master, sitename == "Tennessee Shallow")
export(Tennessee_Shallow,"Tennessee_Shallow.csv")

ggplot(Tennessee_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Tennessee Shallow")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Tennessee_Shallow.png", width = 8, height = 4)



Thor <- filter(RHI_master, sitename == "Thor")
export(Thor,"Thor.csv")

ggplot(Thor, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Thor")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Thor.png", width = 8, height = 4)



West_Turtle_Shoal <- filter(RHI_master, sitename == "West Turtle Shoal")
export(West_Turtle_Shoal,"West_Turtle_Shoal.csv")

ggplot(West_Turtle_Shoal, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "West Turtle Shoal")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
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
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Eastern_Sambo_Deep.png", width = 8, height = 4)



Eastern_Sambo_Shallow <- filter(RHI_master, sitename == "Eastern Sambo Shallow")
export(Eastern_Sambo_Shallow,"Eastern_Sambo_Shallow.csv")

ggplot(Eastern_Sambo_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Eastern Sambo Shallow")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Eastern_Sambo_Shallow.png", width = 8, height = 4)



Jaap_Reef <- filter(RHI_master, sitename == "Jaap Reef")
export(Jaap_Reef,"Jaap_Reef.csv")

ggplot(Jaap_Reef, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Jaap Reef")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Jaap_Reef.png", width = 8, height = 4)



Looe_Key_Deep <- filter(RHI_master, sitename == "Looe Key Deep")
export(Looe_Key_Deep,"Looe_Key_Deep.csv")

ggplot(Looe_Key_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Looe Key Deep")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Looe_Key_Deep.png", width = 8, height = 4)



Looe_Key_Shallow <- filter(RHI_master, sitename == "Looe Key Shallow")
export(Looe_Key_Shallow,"Looe_Key_Shallow.csv")

ggplot(Looe_Key_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Looe Key Shallow")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Looe_Key_Shallow.png", width = 8, height = 4)




Red_Dun_Reef <- filter(RHI_master, sitename == "Red Dun Reef")
export(Red_Dun_Reef,"Red_Dun_Reef.csv")

ggplot(Red_Dun_Reef, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Red Dun Reef")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Red_Dun_Reef.png", width = 8, height = 4)



Rock_Key_Deep <- filter(RHI_master, sitename == "Rock Key Deep")
export(Rock_Key_Deep,"Rock_Key_Deep.csv")

ggplot(Rock_Key_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Rock Key Deep")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Rock_Key_Deep.png", width = 8, height = 4)




Rock_Key_Shallow <- filter(RHI_master, sitename == "Rock Key Shallow")
export(Rock_Key_Shallow,"Rock_Key_Shallow.csv")

ggplot(Rock_Key_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Rock Key Shallow")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Rock_Key_Shallow.png", width = 8, height = 4)



Sand_Key_Deep <- filter(RHI_master, sitename == "Sand Key Deep")
export(Sand_Key_Deep,"Sand_Key_Deep.csv")

ggplot(Sand_Key_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Sand Key Deep")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Sand_Key_Deep.png", width = 8, height = 4)




Sand_Key_Shallow <- filter(RHI_master, sitename == "Sand Key Shallow")
export(Sand_Key_Shallow,"Sand_Key_Shallow.csv")

ggplot(Sand_Key_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Sand Key Shallow")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Sand_Key_Shallow.png", width = 8, height = 4)



Smith_Shoal <- filter(RHI_master, sitename == "Smith Shoal")
export(Smith_Shoal,"Smith_Shoal.csv")

ggplot(Smith_Shoal, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Smith Shoal")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Smith_Shoal.png", width = 8, height = 4)



West_Washer_Woman <- filter(RHI_master, sitename == "West Washer Woman")
export(West_Washer_Woman,"West_Washer_Woman.csv")

ggplot(West_Washer_Woman, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "West Washer Woman")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
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
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Western_Sambo_Deep.png", width = 8, height = 4)



Western_Sambo_Shallow <- filter(RHI_master, sitename == "Western Sambo Shallow")
export(Western_Sambo_Shallow,"Western_Sambo_Shallow.csv")

ggplot(Western_Sambo_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Western Sambo Shallow")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
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
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Admiral.png", width = 8, height = 4)



Burr_Fish <- filter(RHI_master, sitename == "Burr Fish")
export(Burr_Fish,"Burr_Fish.csv")

ggplot(Burr_Fish, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Burr Fish")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Burr_Fish.png", width = 8, height = 4)



Carysfort_Deep <- filter(RHI_master, sitename == "Carysfort Deep")
export(Carysfort_Deep,"Carysfort_Deep.csv")

ggplot(Carysfort_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Carysfort Deep")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Carysfort_Deep.png", width = 8, height = 4)



Carysfort_Shallow <- filter(RHI_master, sitename == "Carysfort Shallow")
export(Carysfort_Shallow,"Carysfort_Shallow.csv")

ggplot(Carysfort_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Carysfort Shallow")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Carysfort_Shallow.png", width = 8, height = 4)



Conch_Deep <- filter(RHI_master, sitename == "Conch Deep")
export(Conch_Deep,"Conch_Deep.csv")

ggplot(Conch_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Conch Deep")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Conch_Deep.png", width = 8, height = 4)



Conch_Shallow <- filter(RHI_master, sitename == "Conch Shallow")
export(Conch_Shallow,"Conch_Shallow.csv")

ggplot(Conch_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Conch Shallow")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Conch_Shallow.png", width = 8, height = 4)




Grecian_Rocks <- filter(RHI_master, sitename == "Grecian Rocks")
export(Grecian_Rocks,"Grecian_Rocks.csv")

ggplot(Grecian_Rocks, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Grecian Rocks")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Grecian_Rocks.png", width = 8, height = 4)




Molasses_Deep <- filter(RHI_master, sitename == "Molasses Deep")
export(Molasses_Deep,"Molasses_Deep.csv")

ggplot(Molasses_Deep, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Molasses Deep")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Molasses_Deep.png", width = 8, height = 4)



Molasses_Shallow <- filter(RHI_master, sitename == "Molasses Shallow")
export(Molasses_Shallow,"Molasses_Shallow.csv")

ggplot(Molasses_Shallow, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Molasses Shallow")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Molasses_Shallow.png", width = 8, height = 4)



Porter_Patch <- filter(RHI_master, sitename == "Porter Patch")
export(Porter_Patch,"Porter_Patch.csv")

ggplot(Porter_Patch, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Porter Patch")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Porter_Patch.png", width = 8, height = 4)



Turtle <- filter(RHI_master, sitename == "Turtle")
export(Turtle,"Turtle.csv")

ggplot(Turtle, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Turtle")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Turtle.png", width = 8, height = 4)



Two_Patches <- filter(RHI_master, sitename == "Two Patches")
export(Two_Patches,"Two_Patches.csv")

ggplot(Two_Patches, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Two Patches")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
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
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Bird_Key_Reef.png", width = 8, height = 4)




Black_Coral_Rock <- filter(RHI_master, sitename == "Black Coral Rock")
export(Black_Coral_Rock,"Black_Coral_Rock.csv")

ggplot(Black_Coral_Rock, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Black Coral Rock")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Black_Coral_Rock.png", width = 8, height = 4)



Davis_Rock <- filter(RHI_master, sitename == "Davis Rock")
export(Davis_Rock,"Davis_Rock.csv")

ggplot(Davis_Rock, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Davis Rock")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Davis_Rock.png", width = 8, height = 4)



Loggerhead_Patch <- filter(RHI_master, sitename == "Loggerhead Patch")
export(Loggerhead_Patch,"Loggerhead_Patch.csv")

ggplot(Loggerhead_Patch, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Loggerhead Patch")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Loggerhead_Patch.png", width = 8, height = 4)




Mayers_Peak <- filter(RHI_master, sitename == "Mayers Peak")
export(Mayers_Peak,"Mayers_Peak.csv")

ggplot(Mayers_Peak, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Mayers Peak")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Mayers_Peak.png", width = 8, height = 4)



Palmata_Patch <- filter(RHI_master, sitename == "Palmata Patch")
export(Palmata_Patch,"Palmata_Patch.csv")

ggplot(Palmata_Patch, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Palmata Patch")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Palmata_Patch.png", width = 8, height = 4)



Prolifera_Patch <- filter(RHI_master, sitename == "Prolifera Patch")
export(Prolifera_Patch,"Prolifera_Patch.csv")

ggplot(Prolifera_Patch, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Prolifera Patch")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Prolifera_Patch.png", width = 8, height = 4)



Temptation_Rock <- filter(RHI_master, sitename == "Temptation Rock")
export(Temptation_Rock,"Temptation_Rock.csv")

ggplot(Temptation_Rock, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Temptation Rock")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Temptation_Rock.png", width = 8, height = 4)



Texas_Rock <- filter(RHI_master, sitename == "Texas Rock")
export(Texas_Rock,"Texas_Rock.csv")

ggplot(Texas_Rock, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Texas Rock")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Texas_Rock.png", width = 8, height = 4)



Maze <- filter(RHI_master, sitename == "Maze")
export(Maze,"Maze.csv")

ggplot(Maze, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Maze")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Maze.png", width = 8, height = 4)



White_Shoal <- filter(RHI_master, sitename == "White Shoal")
export(White_Shoal,"White_Shoal.csv")

ggplot(White_Shoal, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "White Shoal")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
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
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Broward_County_1.png", width = 8, height = 4)



Broward_County_2 <- filter(RHI_master, sitename == "Broward County 2")
export(Broward_County_2,"Broward_County_2.csv")

ggplot(Broward_County_2, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Broward County 2")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Broward_County_2.png", width = 8, height = 4)




Broward_County_3 <- filter(RHI_master, sitename == "Broward County 3")
export(Broward_County_3,"Broward_County_3.csv")

ggplot(Broward_County_3, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Broward County 3")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Broward_County_3.png", width = 8, height = 4)



Broward_County_4 <- filter(RHI_master, sitename == "Broward County 4")
export(Broward_County_4,"Broward_County_4.csv")

ggplot(Broward_County_4, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Broward County 4")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Broward_County_4.png", width = 8, height = 4)




Broward_County_5 <- filter(RHI_master, sitename == "Broward County 5")
export(Broward_County_5,"Broward_County_5.csv")

ggplot(Broward_County_5, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Broward County 5")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Broward_County_5.png", width = 8, height = 4)




Broward_County_6 <- filter(RHI_master, sitename == "Broward County 6")
export(Broward_County_6,"Broward_County_6.csv")

ggplot(Broward_County_6, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Broward County 6")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Broward_County_6.png", width = 8, height = 4)




Broward_County_A <- filter(RHI_master, sitename == "Broward County A")
export(Broward_County_A,"Broward_County_A.csv")

ggplot(Broward_County_A, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Broward County A")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Broward_County_A.png", width = 8, height = 4)




Dade_County_1 <- filter(RHI_master, sitename == "Dade County 1")
export(Dade_County_1,"Dade_County_1.csv")

ggplot(Dade_County_1, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dade County 1")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Dade_County_1.png", width = 8, height = 4)



Dade_County_2 <- filter(RHI_master, sitename == "Dade County 2")
export(Dade_County_2,"Dade_County_2.csv")

ggplot(Dade_County_2, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dade County 2")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Dade_County_2.png", width = 8, height = 4)



Dade_County_3 <- filter(RHI_master, sitename == "Dade County 3")
export(Dade_County_3,"Dade_County_3.csv")

ggplot(Dade_County_3, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dade County 3")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Dade_County_3.png", width = 8, height = 4)



Dade_County_4 <- filter(RHI_master, sitename == "Dade County 4")
export(Dade_County_4,"Dade_County_4.csv")

ggplot(Dade_County_4, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dade County 4")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Dade_County_4.png", width = 8, height = 4)



Dade_County_5 <- filter(RHI_master, sitename == "Dade County 5")
export(Dade_County_5,"Dade_County_5.csv")

ggplot(Dade_County_5, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dade County 5")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Dade_County_5.png", width = 8, height = 4)



Dade_County_6 <- filter(RHI_master, sitename == "Dade County 6")
export(Dade_County_6,"Dade_County_6.csv")

ggplot(Dade_County_6, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dade County 6")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Dade_County_6.png", width = 8, height = 4)


Dade_County_7 <- filter(RHI_master, sitename == "Dade County 7")
export(Dade_County_7,"Dade_County_7.csv")

ggplot(Dade_County_7, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dade County 7")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Dade_County_7.png", width = 8, height = 4)




Dade_County_8 <- filter(RHI_master, sitename == "Dade County 8")
export(Dade_County_8,"Dade_County_8.csv")

ggplot(Dade_County_8, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Dade County 8")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Dade_County_8.png", width = 8, height = 4)






Martin_County_1 <- filter(RHI_master, sitename == "Martin County 1")
export(Martin_County_1,"Martin_County_1.csv")

ggplot(Martin_County_1, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Martin County 1")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Martin_County_1.png", width = 8, height = 4)




Martin_County_2 <- filter(RHI_master, sitename == "Martin County 2")
export(Martin_County_2,"Martin_County_2.csv")

ggplot(Martin_County_2, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Martin County 2")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Martin_County_2.png", width = 8, height = 4)




Palm_Beach_1 <- filter(RHI_master, sitename == "Palm Beach 1")
export(Palm_Beach_1,"Palm_Beach_1.csv")

ggplot(Palm_Beach_1, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Palm Beach 1")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Palm_Beach_1.png", width = 8, height = 4)



Palm_Beach_2 <- filter(RHI_master, sitename == "Palm Beach 2")
export(Palm_Beach_2,"Palm_Beach_2.csv")

ggplot(Palm_Beach_2, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Palm Beach 2")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Palm_Beach_2.png", width = 8, height = 4)



Palm_Beach_3 <- filter(RHI_master, sitename == "Palm Beach 3")
export(Palm_Beach_3,"Palm_Beach_3.csv")

ggplot(Palm_Beach_3, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Palm Beach 3")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Palm_Beach_3.png", width = 8, height = 4)



Palm_Beach_4 <- filter(RHI_master, sitename == "Palm Beach 4")
export(Palm_Beach_4,"Palm_Beach_4.csv")

ggplot(Palm_Beach_4, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Palm Beach 4")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("plots/Palm_Beach_4.png", width = 8, height = 4)




Palm_Beach_5 <- filter(RHI_master, sitename == "Palm Beach 5")
export(Palm_Beach_5,"Palm_Beach_5.csv")

ggplot(Palm_Beach_5, aes(Year, RHI_Average))+
  ggtitle("Reef Health Index", subtitle = "Palm Beach 5")+
  geom_line(size = 1, color = "red")+
  geom_point(size = 1)+
  scale_y_continuous(limits = c(0,5))+
  theme_light()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
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



