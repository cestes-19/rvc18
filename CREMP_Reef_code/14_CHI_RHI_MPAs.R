



### CREMP MPA merge and analyses


library(knitr)
library(tidyverse)
library(vegan)
library(rio)
library("magrittr")
library(dygraphs)
library(htmlwidgets)


setwd('C:/Users/cara.estes/Documents')
 
### Data from FKNMS shapefiles     
   
MPA_reefs <- import('Summer_2020/ArcGIS_Analyses/CREMP_MPA.xls')

## get unique number of reefs

MPA_unique <- data.frame(unique(MPA_reefs$sitename))

colnames(MPA_unique) <- "sitename"

### Add MPA data to CHI and RHI to compare (add columns with 0=protected and 1=unprotected)
## add in csvs from line/ and rhi/

# Dry Tortugas

Bird_Key_Reef_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/DT/Bird_Key_Reef.csv')
Bird_Key_Reef_CHI$sitename <- "Bird Key Reef"

Loggerhead_Patch_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/DT/Loggerhead_Patch.csv')
Loggerhead_Patch_CHI$sitename <- "Loggerhead Patch"

Palmata_Patch_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/DT/Palmata_Patch.csv')
Palmata_Patch_CHI$sitename <- "Palmata Patch"

Prolifera_Patch_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/DT/Prolifera_Patch.csv')
Prolifera_Patch_CHI$sitename <- "Prolifera Patch"

Temptation_Rock_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/DT/Temptation_Rock.csv')
Temptation_Rock_CHI$sitename <- "Temptation Rock"

White_Shoal_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/DT/White_Shoal.csv')
White_Shoal_CHI$sitename <- "White Shoal"


DT_CHI <- rbind(Bird_Key_Reef_CHI,Loggerhead_Patch_CHI,Palmata_Patch_CHI,Prolifera_Patch_CHI,
                Temptation_Rock_CHI,White_Shoal_CHI)

DT_CHI$REGION <- "DT"


Bird_Key_Reef_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/DT/Bird_Key_Reef.csv')
Bird_Key_Reef_RHI$sitename <- "Bird Key Reef"

Loggerhead_Patch_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/DT/Loggerhead_Patch.csv')
Loggerhead_Patch_RHI$sitename <- "Loggerhead Patch"

Palmata_Patch_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/DT/Palmata_Patch.csv')
Palmata_Patch_RHI$sitename <- "Palmata Patch"

Prolifera_Patch_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/DT/Prolifera_Patch.csv')
Prolifera_Patch_RHI$sitename <- "Prolifera Patch"

Temptation_Rock_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/DT/Temptation_Rock.csv')
Temptation_Rock_RHI$sitename <- "Temptation Rock"

White_Shoal_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/DT/White_Shoal.csv')
White_Shoal_RHI$sitename <- "White Shoal"


DT_RHI <- rbind(Bird_Key_Reef_RHI,Loggerhead_Patch_RHI,Palmata_Patch_RHI,Prolifera_Patch_RHI,
                Temptation_Rock_RHI,White_Shoal_RHI)

DT_RHI$REGION <- "DT"



## Lower Keys 


Eastern_Sambo_Deep_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/LK/Eastern_Sambo_Deep.csv')
Eastern_Sambo_Deep_CHI$sitename <- "Eastern Sambo Deep"

Eastern_Sambo_Shallow_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/LK/Eastern_Sambo_Shallow.csv')
Eastern_Sambo_Shallow_CHI$sitename <- "Eastern Sambo Shallow"


Looe_Key_Deep_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/LK/Looe_Key_Deep.csv')
Looe_Key_Deep_CHI$sitename <- "Looe Key Deep"

Looe_Key_Shallow_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/LK/Looe_Key_Shallow.csv')
Looe_Key_Shallow_CHI$sitename <- "Looe Key Shallow"

Rock_Key_Deep_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/LK/Rock_Key_Deep.csv')
Rock_Key_Deep_CHI$sitename <- "Rock Key Deep"

Rock_Key_Shallow_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/LK/Rock_Key_Shallow.csv')
Rock_Key_Shallow_CHI$sitename <- "Rock Key Shallow"

Sand_Key_Deep_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/LK/Sand_Key_Deep.csv')
Sand_Key_Deep_CHI$sitename <- "Sand Key Deep"

Sand_Key_Shallow_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/LK/Sand_Key_Shallow.csv')
Sand_Key_Shallow_CHI$sitename <- "Sand Key Shallow"

Western_Sambo_Deep_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/LK/Western_Sambo_Deep.csv')
Western_Sambo_Deep_CHI$sitename <- "Western Sambo Deep"

Western_Sambo_Shallow_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/LK/Western_Sambo_Shallow.csv')
Western_Sambo_Shallow_CHI$sitename <- "Western Sambo Shallow"

LK_CHI <- rbind(Eastern_Sambo_Deep_CHI,Eastern_Sambo_Shallow_CHI,Looe_Key_Deep_CHI,Looe_Key_Shallow_CHI,
                Rock_Key_Deep_CHI,Rock_Key_Shallow_CHI,Sand_Key_Deep_CHI,Sand_Key_Shallow_CHI,Western_Sambo_Deep_CHI,
                Western_Sambo_Shallow_CHI)

LK_CHI$REGION <- "LK"




Eastern_Sambo_Deep_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/LK/Eastern_Sambo_Deep.csv')
Eastern_Sambo_Deep_RHI$sitename <- "Eastern Sambo Deep"

Eastern_Sambo_Shallow_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/LK/Eastern_Sambo_Shallow.csv')
Eastern_Sambo_Shallow_RHI$sitename <- "Eastern Sambo Shallow"


Looe_Key_Deep_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/LK/Looe_Key_Deep.csv')
Looe_Key_Deep_RHI$sitename <- "Looe Key Deep"

Looe_Key_Shallow_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/LK/Looe_Key_Shallow.csv')
Looe_Key_Shallow_RHI$sitename <- "Looe Key Shallow"

Rock_Key_Deep_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/LK/Rock_Key_Deep.csv')
Rock_Key_Deep_RHI$sitename <- "Rock Key Deep"

Rock_Key_Shallow_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/LK/Rock_Key_Shallow.csv')
Rock_Key_Shallow_RHI$sitename <- "Rock Key Shallow"

Sand_Key_Deep_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/LK/Sand_Key_Deep.csv')
Sand_Key_Deep_RHI$sitename <- "Sand Key Deep"

Sand_Key_Shallow_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/LK/Sand_Key_Shallow.csv')
Sand_Key_Shallow_RHI$sitename <- "Sand Key Shallow"

Western_Sambo_Deep_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/LK/Western_Sambo_Deep.csv')
Western_Sambo_Deep_RHI$sitename <- "Western Sambo Deep"

Western_Sambo_Shallow_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/LK/Western_Sambo_Shallow.csv')
Western_Sambo_Shallow_RHI$sitename <- "Western Sambo Shallow"

LK_RHI <- rbind(Eastern_Sambo_Deep_RHI,Eastern_Sambo_Shallow_RHI,Looe_Key_Deep_RHI,Looe_Key_Shallow_RHI,
                Rock_Key_Deep_RHI,Rock_Key_Shallow_RHI,Sand_Key_Deep_RHI,Sand_Key_Shallow_RHI,Western_Sambo_Deep_RHI,
                Western_Sambo_Shallow_RHI)

LK_RHI$REGION <- "LK"


## Middle Keys 

Alligator_Deep_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/MK/Alligator_Deep.csv')
Alligator_Deep_CHI$sitename <- "Alligator Deep"

Alligator_Shallow_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/MK/Alligator_Shallow.csv')
Alligator_Shallow_CHI$sitename <- "Alligator Shallow"

Sombrero_Deep_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/MK/Sombrero_Deep.csv')
Sombrero_Deep_CHI$sitename <- "Sombrero Deep"

Sombrero_Shallow_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/MK/Sombrero_Shallow.csv')
Sombrero_Shallow_CHI$sitename <- "Sombrero Shallow"

Tennessee_Deep_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/MK/Tennessee_Deep.csv')
Tennessee_Deep_CHI$sitename <- "Tennessee Deep"

Tennessee_Shallow_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/MK/Tennessee_Shallow.csv')
Tennessee_Shallow_CHI$sitename <- "Tennessee Shallow"

West_Turtle_Shoal_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/MK/West_Turtle_Shoal.csv')
West_Turtle_Shoal_CHI$sitename <- "West Turtle Shoal"

MK_CHI <- rbind(Alligator_Deep_CHI,Alligator_Shallow_CHI,Sombrero_Deep_CHI,Sombrero_Shallow_CHI,
                Tennessee_Deep_CHI,Tennessee_Shallow_CHI,West_Turtle_Shoal_CHI)

MK_CHI$REGION <- "MK"




Alligator_Deep_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/MK/Alligator_Deep.csv')
Alligator_Deep_RHI$sitename <- "Alligator Deep"

Alligator_Shallow_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/MK/Alligator_Shallow.csv')
Alligator_Shallow_RHI$sitename <- "Alligator Shallow"

Sombrero_Deep_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/MK/Sombrero_Deep.csv')
Sombrero_Deep_RHI$sitename <- "Sombrero Deep"

Sombrero_Shallow_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/MK/Sombrero_Shallow.csv')
Sombrero_Shallow_RHI$sitename <- "Sombrero Shallow"

Tennessee_Deep_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/MK/Tennessee_Deep.csv')
Tennessee_Deep_RHI$sitename <- "Tennessee Deep"

Tennessee_Shallow_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/MK/Tennessee_Shallow.csv')
Tennessee_Shallow_RHI$sitename <- "Tennessee Shallow"

West_Turtle_Shoal_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/MK/West_Turtle_Shoal.csv')
West_Turtle_Shoal_RHI$sitename <- "West Turtle Shoal"

MK_RHI <- rbind(Alligator_Deep_RHI,Alligator_Shallow_RHI,Sombrero_Deep_RHI,Sombrero_Shallow_RHI,
                Tennessee_Deep_RHI,Tennessee_Shallow_RHI,West_Turtle_Shoal_RHI)

MK_RHI$REGION <- "MK"


## Upper Keys 

Carysfort_Deep_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/UK/Carysfort_Deep.csv')
Carysfort_Deep_CHI$sitename <- "Carysfort Deep"

Carysfort_Shallow_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/UK/Carysfort_Shallow.csv')
Carysfort_Shallow_CHI$sitename <- "Carysfort Shallow"

Conch_Deep_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/UK/Conch_Deep.csv')
Conch_Deep_CHI$sitename <- "Conch Deep"

Conch_Shallow_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/UK/Conch_Shallow.csv')
Conch_Shallow_CHI$sitename <- "Conch Shallow"

Grecian_Rocks_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/UK/Grecian_Rocks.csv')
Grecian_Rocks_CHI$sitename <- "Grecian Rocks"

Molasses_Deep_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/UK/Molasses_Deep.csv')
Molasses_Deep_CHI$sitename <- "Molasses Deep"

Molasses_Shallow_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/UK/Molasses_Shallow.csv')
Molasses_Shallow_CHI$sitename <- "Molasses_Shallow"

Porter_Patch_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/UK/Porter_Patch.csv')
Porter_Patch_CHI$sitename <- "Porter Patch"

Turtle_CHI <- read_csv('Spring_2020/CREMP_RVC/Line/UK/Turtle.csv')
Turtle_CHI$sitename <- "Turtle"

UK_CHI <- rbind (Carysfort_Deep_CHI,Carysfort_Shallow_CHI,Conch_Deep_CHI,Conch_Shallow_CHI,Grecian_Rocks_CHI,
                 Molasses_Deep_CHI,Molasses_Shallow_CHI,Porter_Patch_CHI,Turtle_CHI)

UK_CHI$REGION <- "UK"


Carysfort_Deep_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/UK/Carysfort_Deep.csv')
Carysfort_Deep_RHI$sitename <- "Carysfort Deep"

Carysfort_Shallow_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/UK/Carysfort_Shallow.csv')
Carysfort_Shallow_RHI$sitename <- "Carysfort Shallow"

Conch_Deep_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/UK/Conch_Deep.csv')
Conch_Deep_RHI$sitename <- "Conch Deep"

Conch_Shallow_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/UK/Conch_Shallow.csv')
Conch_Shallow_RHI$sitename <- "Conch Shallow"

Grecian_Rocks_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/UK/Grecian_Rocks.csv')
Grecian_Rocks_RHI$sitename <- "Grecian Rocks"

Molasses_Deep_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/UK/Molasses_Deep.csv')
Molasses_Deep_RHI$sitename <- "Molasses Deep"

Molasses_Shallow_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/UK/Molasses_Shallow.csv')
Molasses_Shallow_RHI$sitename <- "Molasses_Shallow"

Porter_Patch_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/UK/Porter_Patch.csv')
Porter_Patch_RHI$sitename <- "Porter Patch"

Turtle_RHI <- read_csv('Spring_2020/CREMP_RVC/RHI/UK/Turtle.csv')
Turtle_RHI$sitename <- "Turtle"

UK_RHI <- rbind (Carysfort_Deep_RHI,Carysfort_Shallow_RHI,Conch_Deep_RHI,Conch_Shallow_RHI,Grecian_Rocks_RHI,
                 Molasses_Deep_RHI,Molasses_Shallow_RHI,Porter_Patch_RHI,Turtle_RHI)

UK_RHI$REGION <- "UK"



## Combine all CHI and RHI 

All_CHI <- rbind(DT_CHI,LK_CHI,MK_CHI,UK_CHI)
All_RHI <- rbind(DT_RHI,LK_RHI,MK_RHI,UK_RHI)



## Add in column for MPA protected vs unportected  


Protected <- c("Carysfort Shallow","Grecian Rocks","Molasses Shallow",
               "Conch Shallow","Alligator Shallow","Sombrero Shallow", "Looe Key Shallow",
               "Eastern Sambo Shallow","Western Sambo Shallow","Rock Key Shallow","Sand Key Shallow",
               "Carysfort Deep","Conch Deep","Alligator Deep","Sombrero Deep","Western Sambo Deep",
               "Sand Key Deep","Black Coral Rock")


All_CHI_protected <- filter(All_CHI, sitename %in% Protected)
All_CHI_protected$MPA <- "1"
  
All_CHI_unprotected <- anti_join(All_CHI,All_CHI_protected)
All_CHI_unprotected$MPA <- "0"


All_CHI_MPA <- rbind(All_CHI_protected,All_CHI_unprotected)


All_RHI_protected <- filter(All_RHI, sitename %in% Protected)
All_RHI_protected$MPA <- "1"

All_RHI_unprotected <- anti_join(All_RHI,All_RHI_protected)
All_RHI_unprotected$MPA <- "0"


All_RHI_MPA <- rbind(All_RHI_protected,All_RHI_unprotected)


### Now take CREMP locations data and add to the All_RHI and All_CHI

CREMP_Locations <- import('Summer_2020/ArcGIS_Analyses/CREMP_Locations.xls')


## get average of offshore depth 

CREMP <- CREMP_Locations  %>%  
  group_by(sitename)%>%
  mutate(OSDAverage= mean(c(offshoreDe)))%>%
  ungroup()

## Take the name, offshore depth average, and habitatid out
CREMP_merge <- CREMP %>%
  select(sitename,OSDAverage,habitatid)%>%
  unique()

## merge with All_RHI and All_CHI

All_CHI_MPA_final <- left_join(All_CHI_MPA,CREMP_merge)

All_RHI_MPA_final <- left_join(All_RHI_MPA,CREMP_merge)



### End of combining data






### Analyze the average of CHI and RHI values for Protected vs. Not protected 

CHI_protected <- All_CHI_MPA_final%>%
  filter(MPA == "1")%>%
  group_by(Year)%>%
  mutate(YearlyAverage= mean(c(CHI_Average)))%>%
  ungroup()

CHI_protected_Yearly <- CHI_protected %>%
  select(Year,YearlyAverage)

CHI_protected_Yearly_graph <- data.frame(unique(CHI_protected_Yearly)) 
colnames(CHI_protected_Yearly_graph) <- c("Year","Protected Average")
  
# ggplot(CHI_protected_Yearly_graph, aes(Year, YearlyAverage))+
#   ggtitle("CHI Yearly Average",subtitle = "Protected Status")+
#   geom_line(size = 1)+
#   geom_point(size = .3)+
#   scale_y_continuous(limits = c(0,100))+
#   theme_minimal()+
#   theme(
#     plot.title = element_text(hjust = 0.5),
#     plot.subtitle = element_text(hjust = 0.5),
#     legend.background = element_blank(),
#     legend.title = element_blank(),
#     legend.box.background = element_rect(colour = "black"))+
#   ylab("CHI %")


  
# CHI_protected_Average <- summarise_at(All_CHI_MPa_final, vars('CHI_Average'),funs(mean,sd), na.rm = TRUE)
 


CHI_unprotected <- All_CHI_MPA_final%>%
  filter(MPA == "0")%>%
  group_by(Year)%>%
  mutate(YearlyAverage= mean(c(CHI_Average)))%>%
  ungroup()

CHI_unprotected_Yearly <- CHI_unprotected %>%
  select(Year,YearlyAverage)

CHI_unprotected_Yearly_graph <- data.frame(unique(CHI_unprotected_Yearly))  
colnames(CHI_unprotected_Yearly_graph) <- c("Year","Unprotected Average")

# ggplot(CHI_unprotected_Yearly_graph, aes(Year, YearlyAverage))+
#   ggtitle("CHI Yearly Average",subtitle = "Unprotected Status")+
#   geom_line(size = 1)+
#   geom_point(size = .3)+
#   scale_y_continuous(limits = c(0,100))+
#   theme_minimal()+
#   theme(
#     plot.title = element_text(hjust = 0.5),
#     plot.subtitle = element_text(hjust = 0.5),
#     legend.background = element_blank(),
#     legend.title = element_blank(),
#     legend.box.background = element_rect(colour = "black"))+
#   ylab("CHI %")

CHI_all_graph <- merge(CHI_protected_Yearly_graph,CHI_unprotected_Yearly_graph)

setwd("C:/Users/cara.estes/Documents/Summer_2020/Dygraphs_CHI_RHI")


dygraph(CHI_all_graph, main = 'CHI Trends') %>% 
  dyAxis("y", label = "CHI %",valueRange = c(0,100)) %>%
  dyAxis("x", label = "Year") %>%
  dyOptions(stackedGraph = F, fillGraph = T, fillAlpha = .01)%>%
  saveWidget(file=paste0( getwd(), "/CHI_MPAs.html"))


  



RHI_protected <- All_RHI_MPA_final%>%
  filter(MPA == "1")%>%
  group_by(Year)%>%
  mutate(YearlyAverage= mean(c(RHI_Average)))%>%
  ungroup()

RHI_protected_Yearly <- RHI_protected %>%
  select(Year,YearlyAverage)

RHI_protected_Yearly_graph <- data.frame(unique(RHI_protected_Yearly)) 
colnames(RHI_protected_Yearly_graph) <- c("Year","Protected Average")

# ggplot(RHI_protected_Yearly_graph, aes(Year, YearlyAverage))+
#   ggtitle("RHI Yearly Average",subtitle = "Protected Status")+
#   geom_line(size = 1)+
#   geom_point(size = .3)+
#   scale_y_continuous(limits = c(0,100))+
#   theme_minimal()+
#   theme(
#     plot.title = element_text(hjust = 0.5),
#     plot.subtitle = element_text(hjust = 0.5),
#     legend.background = element_blank(),
#     legend.title = element_blank(),
#     legend.box.background = element_rect(colour = "black"))+
#   ylab("RHI %")



# RHI_protected_Average <- summarise_at(All_RHI_MPa_final, vars('RHI_Average'),funs(mean,sd), na.rm = TRUE)



RHI_unprotected <- All_RHI_MPA_final%>%
  filter(MPA == "0")%>%
  group_by(Year)%>%
  mutate(YearlyAverage= mean(c(RHI_Average)))%>%
  ungroup()

RHI_unprotected_Yearly <- RHI_unprotected %>%
  select(Year,YearlyAverage)

RHI_unprotected_Yearly_graph <- data.frame(unique(RHI_unprotected_Yearly))  
colnames(RHI_unprotected_Yearly_graph) <- c("Year","Unprotected Average")

# ggplot(RHI_unprotected_Yearly_graph, aes(Year, YearlyAverage))+
#   ggtitle("RHI Yearly Average",subtitle = "Unprotected Status")+
#   geom_line(size = 1)+
#   geom_point(size = .3)+
#   scale_y_continuous(limits = c(0,100))+
#   theme_minimal()+
#   theme(
#     plot.title = element_text(hjust = 0.5),
#     plot.subtitle = element_text(hjust = 0.5),
#     legend.background = element_blank(),
#     legend.title = element_blank(),
#     legend.box.background = element_rect(colour = "black"))+
#   ylab("RHI %")

RHI_all_graph <- merge(RHI_protected_Yearly_graph,RHI_unprotected_Yearly_graph)

dygraph(RHI_all_graph, main = 'RHI Trends') %>% 
  dyAxis("y", label = "RHI",valueRange = c(0,5)) %>%
  dyAxis("x", label = "Year") %>%
  dyOptions(stackedGraph = F, fillGraph = T, fillAlpha = .01)%>%
  saveWidget(file=paste0( getwd(), "/RHI_MPAs.html"))




### Different habitat types 

## P,HB,OS,OD are the four main ones in FKNMS and DT

CHI_P <- All_CHI_MPA_final%>%
  filter(habitatid == "P")%>%
  group_by(Year)%>%
  mutate(PatchAverage = mean(CHI_Average))%>%
  ungroup()%>%
  select(Year,PatchAverage)%>%
  unique()

# no hard bottom in dataframe
# CHI_HB <- All_CHI_MPA_final%>%
#   filter(habitatid == "HB")%>%
#   group_by(Year)%>%
#   mutate(HBAverage = mean(CHI_Average))%>%
#   ungroup()%>%
#   select(Year,HBAverage)%>%
#   unique()

CHI_OS <- All_CHI_MPA_final%>%
  filter(habitatid == "OS")%>%
  group_by(Year)%>%
  mutate(OSAverage = mean(CHI_Average))%>%
  ungroup()%>%
  select(Year,OSAverage)%>%
  unique()



CHI_OD <- All_CHI_MPA_final%>%
  filter(habitatid == "OD")%>%
  group_by(Year)%>%
  mutate(ODAverage = mean(CHI_Average))%>%
  ungroup()%>%
  select(Year,ODAverage)%>%
  unique()

### how to merge then dygraph next
 
CHI_habitat_year <- merge(CHI_P,CHI_OD)%>%
  left_join(CHI_OS)

dygraph(CHI_habitat_year, main = 'CHI Trends <br> Habitats') %>% 
  dyAxis("y", label = "CHI %",valueRange = c(0,100)) %>%
  dyAxis("x", label = "Year") %>%
  dyOptions(stackedGraph = F, fillGraph = T, fillAlpha = .01)%>%
  saveWidget(file=paste0( getwd(), "/CHI_Habitats.html"))




RHI_P <- All_RHI_MPA_final%>%
  filter(habitatid == "P")%>%
  group_by(Year)%>%
  mutate(PatchAverage = mean(RHI_Average))%>%
  ungroup()%>%
  select(Year,PatchAverage)%>%
  unique()

# no hard bottom in dataframe
# RHI_HB <- All_RHI_MPA_final%>%
#   filter(habitatid == "HB")%>%
#   group_by(Year)%>%
#   mutate(HBAverage = mean(RHI_Average))%>%
#   ungroup()%>%
#   select(Year,HBAverage)%>%
#   unique()

RHI_OS <- All_RHI_MPA_final%>%
  filter(habitatid == "OS")%>%
  group_by(Year)%>%
  mutate(OSAverage = mean(RHI_Average))%>%
  ungroup()%>%
  select(Year,OSAverage)%>%
  unique()



RHI_OD <- All_RHI_MPA_final%>%
  filter(habitatid == "OD")%>%
  group_by(Year)%>%
  mutate(ODAverage = mean(RHI_Average))%>%
  ungroup()%>%
  select(Year,ODAverage)%>%
  unique()

### how to merge then dygraph next

RHI_habitat_year <- merge(RHI_P,RHI_OD)%>%
  left_join(RHI_OS)

dygraph(RHI_habitat_year, main = 'RHI Trends <br> Habitats') %>% 
  dyAxis("y", label = "RHI",valueRange = c(0,5)) %>%
  dyAxis("x", label = "Year") %>%
  dyOptions(stackedGraph = F, fillGraph = T, fillAlpha = .01)%>%
  saveWidget(file=paste0( getwd(), "/RHI_Habitats.html"))



### Check macroalgae and herbivorous fish per protected vs. unprotected 

setwd("C:/Users/cara.estes/Documents")

## first give 0 or 1 for protected vs unprotected

Data <- read_csv("Spring_2020/CREMP_RVC/CREMP_RVC_RHI_SD.csv")
  
Data_protected <- filter(Data, sitename %in% Protected)
Data_protected$MPA <- "1"

Data_unprotected <- anti_join(Data,Data_protected)
Data_unprotected$MPA <- "0"


MPA_data <- rbind(Data_protected,Data_unprotected)

## Macroalgae  first


Macro_protected <- MPA_data %>%
  filter(MPA == "1") %>%
  group_by(Year) %>%
  mutate(MacroAverage= mean(c(Macroalgae_Average)))%>%
  ungroup()%>%
  select(Year,MacroAverage)

Macro_protected_1 <- data.frame(unique(Macro_protected))
colnames(Macro_protected_1) <- c("Year","Protected")


Macro_unprotected <- MPA_data %>%
  filter(MPA == "0") %>%
  group_by(Year) %>%
  mutate(MacroAverage= mean(c(Macroalgae_Average)))%>%
  ungroup()%>%
  select(Year,MacroAverage)

Macro_unprotected_1 <- data.frame(unique(Macro_unprotected))
colnames(Macro_unprotected_1) <- c("Year","Unprotected")

Macro_all <- merge(Macro_protected_1,Macro_unprotected_1)


dygraph(Macro_all, main = 'Macroalgae Cover') %>% 
  dyAxis("y", label = "Macroalgae % Cover",valueRange = c(0,40)) %>%
  dyAxis("x", label = "Year") %>%
  dyOptions(stackedGraph = F, fillGraph = T, fillAlpha = .01)

## Herbivorous fish biomass dygraph

Herb_protected <- MPA_data %>%
  filter(MPA == "1") %>%
  group_by(Year) %>%
  mutate(HerbAverage= mean(c(Herb)))%>%
  ungroup()%>%
  select(Year,HerbAverage)

Herb_protected_1 <- data.frame(unique(Herb_protected))
colnames(Herb_protected_1) <- c("Year","Protected")


Herb_unprotected <- MPA_data %>%
  filter(MPA == "0") %>%
  group_by(Year) %>%
  mutate(HerbAverage= mean(c(Herb)))%>%
  ungroup()%>%
  select(Year,HerbAverage)

Herb_unprotected_1 <- data.frame(unique(Herb_unprotected))
colnames(Herb_unprotected_1) <- c("Year","Unprotected")

Herb_all <- merge(Herb_protected_1,Herb_unprotected_1)


dygraph(Herb_all, main = 'Herbivorous Fish') %>% 
  dyAxis("y", label = "Herbivorous Fish Biomass",valueRange = c(0,.2)) %>%
  dyAxis("x", label = "Year") %>%
  dyOptions(stackedGraph = F, fillGraph = T, fillAlpha = .01)



