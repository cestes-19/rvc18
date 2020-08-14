

library(knitr)
library(tidyverse)
library(rvc)
library(vegan)
library(readxl)
library(pipeR)
library(rlist)
library(rio)
library(reshape2)
library(ggplot2)



### middle keys 2004 find out why no data 

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables")


## Dry Tortugas 

DT1999 <- getSampleData(1999, "DRY TORT")

DT_den_1999 <- read_csv('DT/RVC_99_DT_analyze.csv')

DT_arcgis_1999 <- left_join(DT_den_1999,DT1999)
DT_arcgis_1999$X <- NULL


DT2000<- getSampleData(2000, "DRY TORT")

DT_den_2000 <- read_csv('DT/RVC_00_DT_analyze.csv')

DT_arcgis_2000 <- left_join(DT_den_2000,DT2000)
DT_arcgis_2000$X <- NULL


DT2004 <- getSampleData(2004, "DRY TORT")

DT_den_2004 <- read_csv('DT/RVC_04_DT_analyze.csv')

DT_arcgis_2004 <- left_join(DT_den_2004,DT2004)


DT2006 <- getSampleData(2006, "DRY TORT")

DT_den_2006 <- read_csv('DT/RVC_06_DT_analyze.csv')

DT_arcgis_2006 <- left_join(DT_den_2006,DT2006)


DT2008 <- getSampleData(2008, "DRY TORT")

DT_den_2008 <- read_csv('DT/RVC_08_DT_analyze.csv')

DT_arcgis_2008 <- left_join(DT_den_2008,DT2008)


DT2010 <- getSampleData(2010, "DRY TORT")

DT_den_2010 <- read_csv('DT/RVC_10_DT_analyze.csv')

DT_arcgis_2010 <- left_join(DT_den_2010,DT2010)


DT2012 <- getSampleData(2012, "DRY TORT")

DT_den_2012 <- read_csv('DT/RVC_12_DT_analyze.csv')

DT_arcgis_2012 <- left_join(DT_den_2012,DT2012)


DT2014 <- getSampleData(2014, "DRY TORT")

DT_den_2014 <- read_csv('DT/RVC_14_DT_analyze.csv')

DT_arcgis_2014 <- left_join(DT_den_2014,DT2014)


DT2016 <- getSampleData(2016, "DRY TORT")

DT_den_2016 <- read_csv('DT/RVC_16_DT_analyze.csv')

DT_arcgis_2016 <- left_join(DT_den_2016,DT2016)


DT2018 <- getSampleData(2018, "DRY TORT")

DT_den_2018 <- read_csv('DT/RVC_18_DT_analyze.csv')

DT_arcgis_2018 <- left_join(DT_den_2018,DT2018)


DT_arcgis_all <- rbind(DT_arcgis_1999,DT_arcgis_2000,DT_arcgis_2004,DT_arcgis_2006,DT_arcgis_2008,
                       DT_arcgis_2010,DT_arcgis_2012,DT_arcgis_2014,DT_arcgis_2016,DT_arcgis_2018)


## Lower Keys 


LK1999 <- getSampleData(1999, "FLA KEYS")

LK_den_1999 <- read_csv('LK/RVC_99_LK_analyze.csv')

LK_arcgis_1999 <- left_join(LK_den_1999,LK1999)



LK2000<- getSampleData(2000, "FLA KEYS")

LK_den_2000 <- read_csv('LK/RVC_00_LK_analyze.csv')

LK_arcgis_2000 <- left_join(LK_den_2000,LK2000)



LK2001 <- getSampleData(2001, "FLA KEYS")

LK_den_2001 <- read_csv('LK/RVC_01_LK_analyze.csv')

LK_arcgis_2001 <- left_join(LK_den_2001,LK2001)


LK2002 <- getSampleData(2002, "FLA KEYS")

LK_den_2002 <- read_csv('LK/RVC_02_LK_analyze.csv')

LK_arcgis_2002 <- left_join(LK_den_2002,LK2002)


LK2003 <- getSampleData(2003, "FLA KEYS")

LK_den_2003 <- read_csv('LK/RVC_03_LK_analyze.csv')

LK_arcgis_2003 <- left_join(LK_den_2003,LK2003)



LK2004 <- getSampleData(2004, "FLA KEYS")

LK_den_2004 <- read_csv('LK/RVC_04_LK_analyze.csv')

LK_arcgis_2004 <- left_join(LK_den_2004,LK2004)


LK2005 <- getSampleData(2005, "FLA KEYS")

LK_den_2005 <- read_csv('LK/RVC_05_LK_analyze.csv')

LK_arcgis_2005 <- left_join(LK_den_2005,LK2005)



LK2006 <- getSampleData(2006, "FLA KEYS")

LK_den_2006 <- read_csv('LK/RVC_06_LK_analyze.csv')

LK_arcgis_2006 <- left_join(LK_den_2006,LK2006)


LK2007 <- getSampleData(2007, "FLA KEYS")

LK_den_2007 <- read_csv('LK/RVC_07_LK_analyze.csv')

LK_arcgis_2007 <- left_join(LK_den_2007,LK2007)



LK2008 <- getSampleData(2008, "FLA KEYS")

LK_den_2008 <- read_csv('LK/RVC_08_LK_analyze.csv')

LK_arcgis_2008 <- left_join(LK_den_2008,LK2008)


LK2009 <- getSampleData(2009, "FLA KEYS")

LK_den_2009 <- read_csv('LK/RVC_09_LK_analyze.csv')

LK_arcgis_2009 <- left_join(LK_den_2009,LK2009)



LK2010 <- getSampleData(2010, "FLA KEYS")

LK_den_2010 <- read_csv('LK/RVC_10_LK_analyze.csv')

LK_arcgis_2010 <- left_join(LK_den_2010,LK2010)


LK2011 <- getSampleData(2011, "FLA KEYS")

LK_den_2011 <- read_csv('LK/RVC_11_LK_analyze.csv')

LK_arcgis_2011 <- left_join(LK_den_2011,LK2011)



LK2012 <- getSampleData(2012, "FLA KEYS")

LK_den_2012 <- read_csv('LK/RVC_12_LK_analyze.csv')

LK_arcgis_2012 <- left_join(LK_den_2012,LK2012)


LK2014 <- getSampleData(2014, "FLA KEYS")

LK_den_2014 <- read_csv('LK/RVC_14_LK_analyze.csv')

LK_arcgis_2014 <- left_join(LK_den_2014,LK2014)


LK2016 <- getSampleData(2016, "FLA KEYS")

LK_den_2016 <- read_csv('LK/RVC_16_LK_analyze.csv')

LK_arcgis_2016 <- left_join(LK_den_2016,LK2016)


LK2018 <- getSampleData(2018, "FLA KEYS")

LK_den_2018 <- read_csv('LK/RVC_18_LK_analyze.csv')

LK_arcgis_2018 <- left_join(LK_den_2018,LK2018)


LK_arcgis_all <- rbind(LK_arcgis_1999,LK_arcgis_2000,LK_arcgis_2001,LK_arcgis_2002,LK_arcgis_2003,
                       LK_arcgis_2004,LK_arcgis_2005,LK_arcgis_2006,LK_arcgis_2007,LK_arcgis_2008,
                       LK_arcgis_2009,LK_arcgis_2010,LK_arcgis_2011,LK_arcgis_2012,LK_arcgis_2014,
                       LK_arcgis_2016,LK_arcgis_2018)



## MIddle Keys 

MK1999 <- getSampleData(1999, "FLA KEYS")

MK_den_1999 <- read_csv('MK/RVC_11_MK_analyze.csv')

MK_arcgis_1999 <- left_join(MK_den_1999,MK1999)



MK2000<- getSampleData(2000, "FLA KEYS")

MK_den_2000 <- read_csv('MK/RVC_00_MK_analyze.csv')

MK_arcgis_2000 <- left_join(MK_den_2000,MK2000)



MK2001 <- getSampleData(2001, "FLA KEYS")

MK_den_2001 <- read_csv('MK/RVC_01_MK_analyze.csv')

MK_arcgis_2001 <- left_join(MK_den_2001,MK2001)


MK2002 <- getSampleData(2002, "FLA KEYS")

MK_den_2002 <- read_csv('MK/RVC_02_MK_analyze.csv')

MK_arcgis_2002 <- left_join(MK_den_2002,MK2002)


MK2003 <- getSampleData(2003, "FLA KEYS")

MK_den_2003 <- read_csv('MK/RVC_03_MK_analyze.csv')

MK_arcgis_2003 <- left_join(MK_den_2003,MK2003)



# MK2004 <- getSampleData(2004, "FLA KEYS")
# 
# MK_den_2004 <- read_csv('MK/RVC_04_MK_analyze.csv')
# 
# MK_arcgis_2004 <- left_join(MK_den_2004,MK2004)


MK2005 <- getSampleData(2005, "FLA KEYS")

MK_den_2005 <- read_csv('MK/RVC_05_MK_analyze.csv')

MK_arcgis_2005 <- left_join(MK_den_2005,MK2005)



MK2006 <- getSampleData(2006, "FLA KEYS")

MK_den_2006 <- read_csv('MK/RVC_06_MK_analyze.csv')

MK_arcgis_2006 <- left_join(MK_den_2006,MK2006)


MK2007 <- getSampleData(2007, "FLA KEYS")

MK_den_2007 <- read_csv('MK/RVC_07_MK_analyze.csv')

MK_arcgis_2007 <- left_join(MK_den_2007,MK2007)



MK2008 <- getSampleData(2008, "FLA KEYS")

MK_den_2008 <- read_csv('MK/RVC_08_MK_analyze.csv')

MK_arcgis_2008 <- left_join(MK_den_2008,MK2008)


MK2009 <- getSampleData(2009, "FLA KEYS")

MK_den_2009 <- read_csv('MK/RVC_09_MK_analyze.csv')

MK_arcgis_2009 <- left_join(MK_den_2009,MK2009)



MK2010 <- getSampleData(2010, "FLA KEYS")

MK_den_2010 <- read_csv('MK/RVC_10_MK_analyze.csv')

MK_arcgis_2010 <- left_join(MK_den_2010,MK2010)


MK2011 <- getSampleData(2011, "FLA KEYS")

MK_den_2011 <- read_csv('MK/RVC_11_MK_analyze.csv')

MK_arcgis_2011 <- left_join(MK_den_2011,MK2011)



MK2012 <- getSampleData(2012, "FLA KEYS")

MK_den_2012 <- read_csv('MK/RVC_12_MK_analyze.csv')

MK_arcgis_2012 <- left_join(MK_den_2012,MK2012)


MK2014 <- getSampleData(2014, "FLA KEYS")

MK_den_2014 <- read_csv('MK/RVC_14_MK_analyze.csv')

MK_arcgis_2014 <- left_join(MK_den_2014,MK2014)


MK2016 <- getSampleData(2016, "FLA KEYS")

MK_den_2016 <- read_csv('MK/RVC_16_MK_analyze.csv')

MK_arcgis_2016 <- left_join(MK_den_2016,MK2016)


MK2018 <- getSampleData(2018, "FLA KEYS")

MK_den_2018 <- read_csv('MK/RVC_18_MK_analyze.csv')

MK_arcgis_2018 <- left_join(MK_den_2018,MK2018)


MK_arcgis_all <- rbind(MK_arcgis_1999,MK_arcgis_2000,MK_arcgis_2001,MK_arcgis_2002,MK_arcgis_2003,
                       MK_arcgis_2005,MK_arcgis_2006,MK_arcgis_2007,MK_arcgis_2008,
                       MK_arcgis_2009,MK_arcgis_2010,MK_arcgis_2011,MK_arcgis_2012,MK_arcgis_2014,
                       MK_arcgis_2016,MK_arcgis_2018)



### Upper Keys 


UK1999 <- getSampleData(1999, "FLA KEYS")

UK_den_1999 <- read_csv('UK/RVC_99_UK_analyze.csv')

UK_arcgis_1999 <- left_join(UK_den_1999,UK1999)



UK2000<- getSampleData(2000, "FLA KEYS")

UK_den_2000 <- read_csv('UK/RVC_00_UK_analyze.csv')

UK_arcgis_2000 <- left_join(UK_den_2000,UK2000)



UK2001 <- getSampleData(2001, "FLA KEYS")

UK_den_2001 <- read_csv('UK/RVC_01_UK_analyze.csv')

UK_arcgis_2001 <- left_join(UK_den_2001,UK2001)


UK2002 <- getSampleData(2002, "FLA KEYS")

UK_den_2002 <- read_csv('UK/RVC_02_UK_analyze.csv')

UK_arcgis_2002 <- left_join(UK_den_2002,UK2002)


UK2003 <- getSampleData(2003, "FLA KEYS")

UK_den_2003 <- read_csv('UK/RVC_03_UK_analyze.csv')

UK_arcgis_2003 <- left_join(UK_den_2003,UK2003)



UK2004 <- getSampleData(2004, "FLA KEYS")

UK_den_2004 <- read_csv('UK/RVC_04_UK_analyze.csv')

UK_arcgis_2004 <- left_join(UK_den_2004,UK2004)


UK2005 <- getSampleData(2005, "FLA KEYS")

UK_den_2005 <- read_csv('UK/RVC_05_UK_analyze.csv')

UK_arcgis_2005 <- left_join(UK_den_2005,UK2005)



UK2006 <- getSampleData(2006, "FLA KEYS")

UK_den_2006 <- read_csv('UK/RVC_06_UK_analyze.csv')

UK_arcgis_2006 <- left_join(UK_den_2006,UK2006)


UK2007 <- getSampleData(2007, "FLA KEYS")

UK_den_2007 <- read_csv('UK/RVC_07_UK_analyze.csv')

UK_arcgis_2007 <- left_join(UK_den_2007,UK2007)



UK2008 <- getSampleData(2008, "FLA KEYS")

UK_den_2008 <- read_csv('UK/RVC_08_UK_analyze.csv')

UK_arcgis_2008 <- left_join(UK_den_2008,UK2008)


UK2009 <- getSampleData(2009, "FLA KEYS")

UK_den_2009 <- read_csv('UK/RVC_09_UK_analyze.csv')

UK_arcgis_2009 <- left_join(UK_den_2009,UK2009)



UK2010 <- getSampleData(2010, "FLA KEYS")

UK_den_2010 <- read_csv('UK/RVC_10_UK_analyze.csv')

UK_arcgis_2010 <- left_join(UK_den_2010,UK2010)


UK2011 <- getSampleData(2011, "FLA KEYS")

UK_den_2011 <- read_csv('UK/RVC_11_UK_analyze.csv')

UK_arcgis_2011 <- left_join(UK_den_2011,UK2011)



UK2012 <- getSampleData(2012, "FLA KEYS")

UK_den_2012 <- read_csv('UK/RVC_12_UK_analyze.csv')

UK_arcgis_2012 <- left_join(UK_den_2012,UK2012)


UK2014 <- getSampleData(2014, "FLA KEYS")

UK_den_2014 <- read_csv('UK/RVC_14_UK_analyze.csv')

UK_arcgis_2014 <- left_join(UK_den_2014,UK2014)


UK2016 <- getSampleData(2016, "FLA KEYS")

UK_den_2016 <- read_csv('UK/RVC_16_UK_analyze.csv')

UK_arcgis_2016 <- left_join(UK_den_2016,UK2016)


UK2018 <- getSampleData(2018, "FLA KEYS")

UK_den_2018 <- read_csv('UK/RVC_18_UK_analyze.csv')

UK_arcgis_2018 <- left_join(UK_den_2018,UK2018)


UK_arcgis_all <- rbind(UK_arcgis_1999,UK_arcgis_2000,UK_arcgis_2001,UK_arcgis_2002,UK_arcgis_2003,
                       UK_arcgis_2004,UK_arcgis_2005,UK_arcgis_2006,UK_arcgis_2007,UK_arcgis_2008,
                       UK_arcgis_2009,UK_arcgis_2010,UK_arcgis_2011,UK_arcgis_2012,UK_arcgis_2014,
                       UK_arcgis_2016,UK_arcgis_2018)


colnames(DT_arcgis_all)[1] <- "YEAR_"

LK_arcgis_all$OBJECTID <- NULL
LK_arcgis_all$YEAR <- NULL

MK_arcgis_all$OBJECTID <- NULL
MK_arcgis_all$YEAR <- NULL

UK_arcgis_all$OBJECTID <- NULL
UK_arcgis_all$YEAR <- NULL

All_arcgis_cut <- rbind (DT_arcgis_all,LK_arcgis_all,MK_arcgis_all,UK_arcgis_all)

## change some column names to merge 


colnames(All_arcgis_cut)[2]<- "LAT_DEGREE"
colnames(All_arcgis_cut)[3]<- "LON_DEGREE"
colnames(All_arcgis_cut)[6]<- "SUBREGION_"


export(All_arcgis_cut,"Sample_Data_Combined.csv")




### can't combine correctly just do in ArcGIS 


## Combine the All_arcgis_cut with the already cut shapefiles (.xls files from ArcGIS)
# 
# 
#  All_arcgis_cut <- read_csv("Sample_Data_Combined.csv")
# 
# 
# 
# setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/DT/Bird_Key_Reef/data")
# 
# Bird_Key_Reef_files <- list.files(pattern = ".xls",all.files = TRUE)
# 
# Bird_Key_Reef_sfs <- lapply(Bird_Key_Reef_files, read_excel)%>>%
#   list.select(YEAR_,SPECIES_CD,LAT_DEGREE,LON_DEGREE,LEN,SUBREGION_)%>>%
#   bind_rows()
# 
# Bird_Key_Reef_sfs$sitename <- "Bird Key Reef"
# 
# Bird_Key_Reef_join <- merge(Bird_Key_Reef_sfs,All_arcgis_cut,all.x = TRUE, by = c("YEAR_","SPECIES_CD","LAT_DEGREE","LON_DEGREE",
#                                 "SUBREGION_","LEN"))
# 
# Bird_Key_Reef_complete <- Bird_Key_Reef_join[complete.cases(Bird_Key_Reef_join),]



### Once the shapfiles are cut we can calcualte density per reef

setwd("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/DT/data")


DT_master <- list.files(pattern = ".xls",full.names = TRUE) 

DT_output <- purrr::map_df(DT_master, function(x) {
  
  data_DT <- read_excel(x)
  cbind(file_id = x, data_DT)
  
})

### need to remove reefs with no data for this code to workkkk (trash file in folder)


setwd("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/LK/data")


LK_master <- list.files(pattern = ".xls",all.files = FALSE, full.names = TRUE) 

LK_output <- purrr::map_df(LK_master, function(x) {
  
  data_LK <- read_excel(x)
  cbind(file_id = x, data_LK)
  
})


setwd("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/MK/data")


MK_master <- list.files(pattern = ".xls",full.names = TRUE) 

MK_output <- purrr::map_df(MK_master, function(x) {
  
  data_MK <- read_excel(x)
  cbind(file_id = x, data_MK)
  
})


setwd("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/UK/data")


UK_master <- list.files(pattern = ".xls",full.names = TRUE) 

UK_output <- purrr::map_df(UK_master, function(x) {
  
  data_UK <- read_excel(x)
  cbind(file_id = x, data_UK)
  
})

## Combination of all subregions 

Sample_data_by_reef <- rbind(DT_output,LK_output,MK_output,UK_output)


export(Sample_data_by_reef,"C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/Sample_reef_data.csv" )



### start calculating density per reef


setwd("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef")


RVC_master <- read_csv("Sample_reef_data.csv")


### Calculate biomass first by adding wlenA and wlenB from RVC.rds files

RVC_tax <- readRDS("C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/RVCdata_FK.rds")

RVC_combine <- RVC_tax$taxonomic_data

RVC_tax_sample <- left_join(RVC_master,RVC_combine, by = "SPECIES_CD")


### Calculate biomass 


RVC_biomass <- RVC_tax_sample
RVC_biomass$Biomass <- (RVC_biomass$NUM*(RVC_biomass$WLEN_A*(RVC_biomass$LEN*10^(RVC_biomass$WLEN_B))/1000))


  
## Average biomass per species per year  

RVC_biomass_per_species <- RVC_biomass %>%
  group_by(file_id,YEAR_,SPECIES_CD) %>%
  mutate(Avgpspecies = sum(Biomass)) %>%
  ungroup()

## Average the density via psu -> ssu -> species by 177 m^2  

RVC_density_per_species <- RVC_biomass_per_species %>%
  group_by(file_id,YEAR_,SPECIES_CD,PRIMARY_SA,STATION_NR) %>%
  mutate(DensitypSSU = sum(NUM)) %>%
  ungroup()


#RVC_density_per_reef per year 

Test <- RVC_density_per_species %>%
  group_by(file_id,YEAR_,PRIMARY_SA) %>%
  mutate(DensitypPSU = sum(DensitypSSU)/length(STATION_NR)) %>%
  mutate(var = var(DensitypSSU)) %>%
  ungroup()

Test2 <- Test %>%
  group_by(file_id,YEAR_) %>%
  mutate(DensitypReef = sum(DensitypPSU)/length(unique(SPECIES_CD))) %>%
  ungroup()


#export(RVC_density_per_reef,"Density_per_Reef.csv")


### Add the CREMP data but first change the file_id to match sitename or vice versa 

RVC_name_test <- RVC_density_per_reef 

RVC_name_test1 <- data.frame(gsub(".xls","",RVC_name_test$file_id))
colnames(RVC_name_test1) <- "sitename"

RVC_name_test2 <- data.frame(gsub("./","",RVC_name_test1$sitename))
colnames(RVC_name_test2) <- "sitename"

RVC_name_test3 <- data.frame(gsub("_"," ",RVC_name_test2$sitename))
colnames(RVC_name_test3) <- "sitename"


RVC_new_name <- cbind(RVC_name_test3,RVC_name_test)

colnames(RVC_new_name)[4] <- "Year"
colnames(RVC_new_name)[9] <- "subRegionId"


## Combine CREMP data w SD

CREMP_all <- read_csv("C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/SD_Master.csv")

## combine

Density_CREMP <- left_join(RVC_new_name, CREMP_all, by = c("sitename","Year"))


## calculate CHI w SD for each reef 

CHI_density <- Density_CREMP %>%
  select(sitename,Year,Densitypreef,Coral_Average,
         Coral_plus,Coral_minus,Macroalgae_Average,Macroalgae_plus,Macroalgae_minus) %>%
  unique() %>%
  group_by(sitename) %>%
  mutate(Coral_CHI_plus = 100*(Coral_plus/max(Coral_plus,na.rm = TRUE)))%>%
  mutate(Coral_CHI_minus = 100*(Coral_minus/max(Coral_minus,na.rm = TRUE))) %>%
  mutate(Coral_CHI_Average = 100*(Coral_Average/max(Coral_Average,na.rm = TRUE))) %>%
  mutate(Macroalgae_CHI_plus = 100-(100*(Macroalgae_plus/max(Macroalgae_plus,na.rm = TRUE))))%>%
  mutate(Macroalgae_CHI_minus = 100-(100*(Macroalgae_minus/max(Macroalgae_minus,na.rm = TRUE)))) %>%
  mutate(Macroalgae_CHI_Average = 100-(100*(Macroalgae_Average/max(Macroalgae_Average,na.rm = TRUE)))) %>%
  mutate(Density_CHI = 100*(Densitypreef/max(Densitypreef,na.rm = TRUE)))


CHI_density$CHI_Average <- rowMeans(subset(CHI_density, select = c(Coral_CHI_Average,Macroalgae_CHI_Average,Density_CHI)),na.rm = TRUE)
CHI_density$CHI_Plus <- rowMeans(subset(CHI_density, select = c(Coral_CHI_plus,Macroalgae_CHI_plus,Density_CHI)),na.rm = TRUE)
CHI_density$CHI_Minus <- rowMeans(subset(CHI_density, select = c(Coral_CHI_minus,Macroalgae_CHI_minus,Density_CHI)),na.rm = TRUE)

#export(CHI_density,"CHI_Density_SD.csv")


## plot 

CHI_master <- read.delim("CHI_Density_SD.csv",sep =",")


## Dry Tortugas 


CHI_Bird_Key_Reef <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Bird Key Reef")

CHI_Bird_Key_Reef$sitename <- NULL

Bird_Key_Reef_bar_graph <- melt(CHI_Bird_Key_Reef, id.vars = "Year")

ggplot(Bird_Key_Reef_bar_graph, aes(Year, value, fill=variable, na.rm = TRUE))+
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
                     labels = "CHI Average",
                     values= "black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/DT/CHI_Density/Bird_Key_Reef.png",
#   width = 8, height = 4)

CHI_Loggerhead_Patch <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Loggerhead Patch")

CHI_Loggerhead_Patch$sitename <- NULL

Loggerhead_Patch_bar_graph <- melt(CHI_Loggerhead_Patch, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/DT/CHI_Density/Loggerhead_Patch.png",
#   width = 8, height = 4)



CHI_Palmata_Patch <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Palmata Patch")

CHI_Palmata_Patch$sitename <- NULL

Palmata_Patch_bar_graph <- melt(CHI_Palmata_Patch, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/DT/CHI_Density/Palmata_Patch.png",
#   width = 8, height = 4)


CHI_Prolifera_Patch <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Prolifera Patch")

CHI_Prolifera_Patch$sitename <- NULL

Prolifera_Patch_bar_graph <- melt(CHI_Prolifera_Patch, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/DT/CHI_Density/Prolifera_Patch.png",
#   width = 8, height = 4)


CHI_Temptation_Rock <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Temptation Rock")

CHI_Temptation_Rock$sitename <- NULL

Temptation_Rock_bar_graph <- melt(CHI_Temptation_Rock, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/DT/CHI_Density/Temptation_Rock.png",
#   width = 8, height = 4)


CHI_White_Shoal <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "White Shoal")

CHI_White_Shoal$sitename <- NULL

White_Shoal_bar_graph <- melt(CHI_White_Shoal, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/DT/CHI_Density/White_Shoal.png",
#   width = 8, height = 4)


## Lower Keys 


CHI_Eastern_Sambo_Deep <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Eastern Sambo Deep")

CHI_Eastern_Sambo_Deep$sitename <- NULL

Eastern_Sambo_Deep_bar_graph <- melt(CHI_Eastern_Sambo_Deep, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/LK/CHI_Density/Eastern_Sambo_Deep.png",
#   width = 8, height = 4)


CHI_Eastern_Sambo_Shallow <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Eastern Sambo Shallow")

CHI_Eastern_Sambo_Shallow$sitename <- NULL

Eastern_Sambo_Shallow_bar_graph <- melt(CHI_Eastern_Sambo_Shallow, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/LK/CHI_Density/Eastern_Sambo_Shallow.png",
#   width = 8, height = 4)


CHI_Looe_Key_Deep <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Looe Key Deep")

CHI_Looe_Key_Deep$sitename <- NULL

Looe_Key_Deep_bar_graph <- melt(CHI_Looe_Key_Deep, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/LK/CHI_Density/Looe_Key_Deep.png",
#   width = 8, height = 4)


CHI_Looe_Key_Shallow <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Looe Key Shallow")

CHI_Looe_Key_Shallow$sitename <- NULL

Looe_Key_Shallow_bar_graph <- melt(CHI_Looe_Key_Shallow, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/LK/CHI_Density/Looe_Key_Shallow.png",
#   width = 8, height = 4)


CHI_Rock_Key_Deep <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Rock Key Deep")

CHI_Rock_Key_Deep$sitename <- NULL

Rock_Key_Deep_bar_graph <- melt(CHI_Rock_Key_Deep, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/LK/CHI_Density/Rock_Key_Deep.png",
#   width = 8, height = 4)


CHI_Rock_Key_Shallow <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Rock Key Shallow")

CHI_Rock_Key_Shallow$sitename <- NULL

Rock_Key_Shallow_bar_graph <- melt(CHI_Rock_Key_Shallow, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/LK/CHI_Density/Rock_Key_Shallow.png",
#   width = 8, height = 4)


CHI_Sand_Key_Deep <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Sand Key Deep")

CHI_Sand_Key_Deep$sitename <- NULL

Sand_Key_Deep_bar_graph <- melt(CHI_Sand_Key_Deep, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/LK/CHI_Density/Sand_Key_Deep.png",
#   width = 8, height = 4)


CHI_Sand_Key_Shallow <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Sand Key Shallow")

CHI_Sand_Key_Shallow$sitename <- NULL

Sand_Key_Shallow_bar_graph <- melt(CHI_Sand_Key_Shallow, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/LK/CHI_Density/Sand_Key_Shallow.png",
#   width = 8, height = 4)


CHI_Western_Sambo_Deep <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Western Sambo Deep")

CHI_Western_Sambo_Deep$sitename <- NULL

Western_Sambo_Deep_bar_graph <- melt(CHI_Western_Sambo_Deep, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/LK/CHI_Density/Western_Sambo_Deep.png",
#   width = 8, height = 4)


CHI_Western_Sambo_Shallow <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Western Sambo Shallow")

CHI_Western_Sambo_Shallow$sitename <- NULL

Western_Sambo_Shallow_bar_graph <- melt(CHI_Western_Sambo_Shallow, id.vars = "Year")



ggplot(Western_Sambo_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Coral Health Index", subtitle = "Western Sambo Shallow")+
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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/LK/CHI_Density/Western_Sambo_Shallow.png",
#   width = 8, height = 4)


### Middle Keys 

CHI_Alligator_Deep <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Alligator Deep")

CHI_Alligator_Deep$sitename <- NULL

Alligator_Deep_bar_graph <- melt(CHI_Alligator_Deep, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/MK/CHI_Density/Alligator_Deep.png",
#   width = 8, height = 4)


CHI_Alligator_Shallow <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Alligator Shallow")

CHI_Alligator_Shallow$sitename <- NULL

Alligator_Shallow_bar_graph <- melt(CHI_Alligator_Shallow, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/MK/CHI_Density/Alligator_Shallow.png",
#   width = 8, height = 4)



CHI_Sombrero_Deep <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Sombrero Deep")

CHI_Sombrero_Deep$sitename <- NULL

Sombrero_Deep_bar_graph <- melt(CHI_Sombrero_Deep, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/MK/CHI_Density/Sombrero_Deep.png",
#   width = 8, height = 4)


CHI_Sombrero_Shallow <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Sombrero Shallow")

CHI_Sombrero_Shallow$sitename <- NULL

Sombrero_Shallow_bar_graph <- melt(CHI_Sombrero_Shallow, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/MK/CHI_Density/Sombrero_Shallow.png",
#   width = 8, height = 4)


CHI_Tennessee_Deep <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Tennessee Deep")

CHI_Tennessee_Deep$sitename <- NULL

Tennessee_Deep_bar_graph <- melt(CHI_Tennessee_Deep, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/MK/CHI_Density/Tennessee_Deep.png",
#   width = 8, height = 4)


CHI_Tennessee_Shallow <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Tennessee Shallow")

CHI_Tennessee_Shallow$sitename <- NULL

Tennessee_Shallow_bar_graph <- melt(CHI_Tennessee_Shallow, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/MK/CHI_Density/Tennessee_Shallow.png",
#   width = 8, height = 4)


CHI_West_Turtle_Shoal <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "West Turtle Shoal")

CHI_West_Turtle_Shoal$sitename <- NULL

West_Turtle_Shoal_bar_graph <- melt(CHI_West_Turtle_Shoal, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/MK/CHI_Density/West_Turtle_Shoal.png",
#   width = 8, height = 4)


## Upper Keys

CHI_Carysfort_Deep <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Carysfort Deep")

CHI_Carysfort_Deep$sitename <- NULL

Carysfort_Deep_bar_graph <- melt(CHI_Carysfort_Deep, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/DT/CHI_Density/Carysfort_Deep.png",
#   width = 8, height = 4)


CHI_Carysfort_Shallow <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Carysfort Shallow")

CHI_Carysfort_Shallow$sitename <- NULL

Carysfort_Shallow_bar_graph <- melt(CHI_Carysfort_Shallow, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/DT/CHI_Density/Carysfort_Shallow.png",
#   width = 8, height = 4)


CHI_Conch_Deep <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Conch Deep")

CHI_Conch_Deep$sitename <- NULL

Conch_Deep_bar_graph <- melt(CHI_Conch_Deep, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/DT/CHI_Density/Conch_Deep.png",
#   width = 8, height = 4)


CHI_Conch_Shallow <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Conch Shallow")

CHI_Conch_Shallow$sitename <- NULL

Conch_Shallow_bar_graph <- melt(CHI_Conch_Shallow, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/DT/CHI_Density/Conch_Shallow.png",
#   width = 8, height = 4)


CHI_Grecian_Rocks <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Grecian Rocks")

CHI_Grecian_Rocks$sitename <- NULL

Grecian_Rocks_bar_graph <- melt(CHI_Grecian_Rocks, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/DT/CHI_Density/Grecian_Rocks.png",
#   width = 8, height = 4)


CHI_Molasses_Deep <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Molasses Deep")

CHI_Molasses_Deep$sitename <- NULL

Molasses_Deep_bar_graph <- melt(CHI_Molasses_Deep, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/DT/CHI_Density/Molasses_Deep.png",
#   width = 8, height = 4)


CHI_Molasses_Shallow <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Molasses Shallow")

CHI_Molasses_Shallow$sitename <- NULL

Molasses_Shallow_bar_graph <- melt(CHI_Molasses_Shallow, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/DT/CHI_Density/Molasses_Shallow.png",
#   width = 8, height = 4)


CHI_Porter_Patch <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Porter Patch")

CHI_Porter_Patch$sitename <- NULL

Porter_Patch_bar_graph <- melt(CHI_Porter_Patch, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/DT/CHI_Density/Porter_Patch.png",
#   width = 8, height = 4)


CHI_Turtle <- CHI_master %>%
  select(sitename,Year,CHI_Average) %>%
  filter(Year != "2018") %>%
  filter(sitename == "Turtle")

CHI_Turtle$sitename <- NULL

Turtle_bar_graph <- melt(CHI_Turtle, id.vars = "Year")



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
                     labels = "CHI Average",
                     values="black")+
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

# ggsave("C:/Users/cara.estes/Documents/Summer_2020/ArcGIS_Analyses/RVC_Density_by_Reef/DT/CHI_Density/Turtle.png",
#   width = 8, height = 4)


