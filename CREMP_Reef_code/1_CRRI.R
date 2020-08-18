
#### CRRI data analyses 



library(knitr)
library(tidyverse)
library(rvc)
library(vegan)
library(readxl)
library(pipeR)
library(rlist)
library(rio)
library(magrittr)
library(reshape2)
library(ggplot2)


setwd("C:/Users/cara.estes/Documents/Summer_2020")


## Dry Tortugas first 


DT_Composition <- import("CRRI_coral/CRRI_regions/DT/data/DT_Composition.xls")

## change the date to just years
DT_Composition$Date_ <- as.Date(DT_Composition$Date_)

DT_Composition_date <- data.frame(format(as.Date(DT_Composition$Date_, format = "%Y %m %d"), "%Y"))
                                  
DT_Composition_date_2 <- cbind(DT_Composition_date,DT_Composition)
colnames(DT_Composition_date_2)[1] <- "Year"

## all the data in original files have no zeros 
DT_Composition_date_2[DT_Composition_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

DT_Composition_Average <- DT_Composition_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)


## DT Diameter data 

DT_Diameter <- import("CRRI_coral/CRRI_regions/DT/data/DT_Diameter.xls")

## change the date to just years
DT_Diameter$Date_ <- as.Date(DT_Diameter$Date_)

DT_Diameter_date <- data.frame(format(as.Date(DT_Diameter$Date_, format = "%Y %m %d"), "%Y"))

DT_Diameter_date_2 <- cbind(DT_Diameter_date,DT_Diameter)
colnames(DT_Diameter_date_2)[1] <- "Year"

## all the data in original files have no zeros 
DT_Diameter_date_2[DT_Diameter_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

DT_Diameter_Average <- DT_Diameter_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)




## DT Disease 

DT_Disease <- import("CRRI_coral/CRRI_regions/DT/data/DT_Disease.xls")

## change the date to just years
DT_Disease$Date_ <- as.Date(DT_Disease$Date_)

DT_Disease_date <- data.frame(format(as.Date(DT_Disease$Date_, format = "%Y %m %d"), "%Y"))

DT_Disease_date_2 <- cbind(DT_Disease_date,DT_Disease)
colnames(DT_Disease_date_2)[1] <- "Year"

## all the data in original files have no zeros 
DT_Disease_date_2[DT_Disease_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

DT_Disease_Average <- DT_Disease_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)



## DT Height

DT_Height <- import("CRRI_coral/CRRI_regions/DT/data/DT_Height.xls")

## change the date to just years
DT_Height$Date_ <- as.Date(DT_Height$Date_)

DT_Height_date <- data.frame(format(as.Date(DT_Height$Date_, format = "%Y %m %d"), "%Y"))

DT_Height_date_2 <- cbind(DT_Height_date,DT_Height)
colnames(DT_Height_date_2)[1] <- "Year"

## all the data in original files have no zeros 
DT_Height_date_2[DT_Height_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

DT_Height_Average <- DT_Height_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)


## DT Mortality 


DT_Mortality <- import("CRRI_coral/CRRI_regions/DT/data/DT_Mortality.xls")

## change the date to just years
DT_Mortality$Date_ <- as.Date(DT_Mortality$Date_)

DT_Mortality_date <- data.frame(format(as.Date(DT_Mortality$Date_, format = "%Y %m %d"), "%Y"))

DT_Mortality_date_2 <- cbind(DT_Mortality_date,DT_Mortality)
colnames(DT_Mortality_date_2)[1] <- "Year"

## all the data in original files have no zeros 
DT_Mortality_date_2[DT_Mortality_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

DT_Mortality_Average <- DT_Mortality_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)



## Lower Keys 


LK_Composition <- import("CRRI_coral/CRRI_regions/LK/data/LK_Composition.xls")

## change the date to just years
LK_Composition$Date_ <- as.Date(LK_Composition$Date_)

LK_Composition_date <- data.frame(format(as.Date(LK_Composition$Date_, format = "%Y %m %d"), "%Y"))

LK_Composition_date_2 <- cbind(LK_Composition_date,LK_Composition)
colnames(LK_Composition_date_2)[1] <- "Year"

## all the data in original files have no zeros 
LK_Composition_date_2[LK_Composition_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

LK_Composition_Average <- LK_Composition_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)


## LK Diameter data 

LK_Diameter <- import("CRRI_coral/CRRI_regions/LK/data/LK_Diameter.xls")

## change the date to just years
LK_Diameter$Date_ <- as.Date(LK_Diameter$Date_)

LK_Diameter_date <- data.frame(format(as.Date(LK_Diameter$Date_, format = "%Y %m %d"), "%Y"))

LK_Diameter_date_2 <- cbind(LK_Diameter_date,LK_Diameter)
colnames(LK_Diameter_date_2)[1] <- "Year"

## all the data in original files have no zeros 
LK_Diameter_date_2[LK_Diameter_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

LK_Diameter_Average <- LK_Diameter_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)




## LK Disease 

LK_Disease <- import("CRRI_coral/CRRI_regions/LK/data/LK_Disease.xls")

## change the date to just years
LK_Disease$Date_ <- as.Date(LK_Disease$Date_)

LK_Disease_date <- data.frame(format(as.Date(LK_Disease$Date_, format = "%Y %m %d"), "%Y"))

LK_Disease_date_2 <- cbind(LK_Disease_date,LK_Disease)
colnames(LK_Disease_date_2)[1] <- "Year"

## all the data in original files have no zeros 
LK_Disease_date_2[LK_Disease_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

LK_Disease_Average <- LK_Disease_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)



## LK Height

LK_Height <- import("CRRI_coral/CRRI_regions/LK/data/LK_Height.xls")

## change the date to just years
LK_Height$Date_ <- as.Date(LK_Height$Date_)

LK_Height_date <- data.frame(format(as.Date(LK_Height$Date_, format = "%Y %m %d"), "%Y"))

LK_Height_date_2 <- cbind(LK_Height_date,LK_Height)
colnames(LK_Height_date_2)[1] <- "Year"

## all the data in original files have no zeros 
LK_Height_date_2[LK_Height_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

LK_Height_Average <- LK_Height_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)


## LK Mortality 


LK_Mortality <- import("CRRI_coral/CRRI_regions/LK/data/LK_Mortality.xls")

## change the date to just years
LK_Mortality$Date_ <- as.Date(LK_Mortality$Date_)

LK_Mortality_date <- data.frame(format(as.Date(LK_Mortality$Date_, format = "%Y %m %d"), "%Y"))

LK_Mortality_date_2 <- cbind(LK_Mortality_date,LK_Mortality)
colnames(LK_Mortality_date_2)[1] <- "Year"

## all the data in original files have no zeros 
LK_Mortality_date_2[LK_Mortality_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

LK_Mortality_Average <- LK_Mortality_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)




### Middle Keys 



MK_Composition <- import("CRRI_coral/CRRI_regions/MK/data/MK_Composition.xls")

## change the date to just years
MK_Composition$Date_ <- as.Date(MK_Composition$Date_)

MK_Composition_date <- data.frame(format(as.Date(MK_Composition$Date_, format = "%Y %m %d"), "%Y"))

MK_Composition_date_2 <- cbind(MK_Composition_date,MK_Composition)
colnames(MK_Composition_date_2)[1] <- "Year"

## all the data in original files have no zeros 
MK_Composition_date_2[MK_Composition_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

MK_Composition_Average <- MK_Composition_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)


## MK Diameter data 

MK_Diameter <- import("CRRI_coral/CRRI_regions/MK/data/MK_Diameter.xls")

## change the date to just years
MK_Diameter$Date_ <- as.Date(MK_Diameter$Date_)

MK_Diameter_date <- data.frame(format(as.Date(MK_Diameter$Date_, format = "%Y %m %d"), "%Y"))

MK_Diameter_date_2 <- cbind(MK_Diameter_date,MK_Diameter)
colnames(MK_Diameter_date_2)[1] <- "Year"

## all the data in original files have no zeros 
MK_Diameter_date_2[MK_Diameter_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

MK_Diameter_Average <- MK_Diameter_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)




## MK Disease 

MK_Disease <- import("CRRI_coral/CRRI_regions/MK/data/MK_Disease.xls")

## change the date to just years
MK_Disease$Date_ <- as.Date(MK_Disease$Date_)

MK_Disease_date <- data.frame(format(as.Date(MK_Disease$Date_, format = "%Y %m %d"), "%Y"))

MK_Disease_date_2 <- cbind(MK_Disease_date,MK_Disease)
colnames(MK_Disease_date_2)[1] <- "Year"

## all the data in original files have no zeros 
MK_Disease_date_2[MK_Disease_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

MK_Disease_Average <- MK_Disease_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)



## MK Height

MK_Height <- import("CRRI_coral/CRRI_regions/MK/data/MK_Height.xls")

## change the date to just years
MK_Height$Date_ <- as.Date(MK_Height$Date_)

MK_Height_date <- data.frame(format(as.Date(MK_Height$Date_, format = "%Y %m %d"), "%Y"))

MK_Height_date_2 <- cbind(MK_Height_date,MK_Height)
colnames(MK_Height_date_2)[1] <- "Year"

## all the data in original files have no zeros 
MK_Height_date_2[MK_Height_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

MK_Height_Average <- MK_Height_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)


## MK Mortality 


MK_Mortality <- import("CRRI_coral/CRRI_regions/MK/data/MK_Mortality.xls")

## change the date to just years
MK_Mortality$Date_ <- as.Date(MK_Mortality$Date_)

MK_Mortality_date <- data.frame(format(as.Date(MK_Mortality$Date_, format = "%Y %m %d"), "%Y"))

MK_Mortality_date_2 <- cbind(MK_Mortality_date,MK_Mortality)
colnames(MK_Mortality_date_2)[1] <- "Year"

## all the data in original files have no zeros 
MK_Mortality_date_2[MK_Mortality_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

MK_Mortality_Average <- MK_Mortality_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)




### Upper Keys 



UK_Composition <- import("CRRI_coral/CRRI_regions/UK/data/UK_Composition.xls")

## change the date to just years
UK_Composition$Date_ <- as.Date(UK_Composition$Date_)

UK_Composition_date <- data.frame(format(as.Date(UK_Composition$Date_, format = "%Y %m %d"), "%Y"))

UK_Composition_date_2 <- cbind(UK_Composition_date,UK_Composition)
colnames(UK_Composition_date_2)[1] <- "Year"

## all the data in original files have no zeros 
UK_Composition_date_2[UK_Composition_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

UK_Composition_Average <- UK_Composition_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)


## UK Diameter data 

UK_Diameter <- import("CRRI_coral/CRRI_regions/UK/data/UK_Diameter.xls")

## change the date to just years
UK_Diameter$Date_ <- as.Date(UK_Diameter$Date_)

UK_Diameter_date <- data.frame(format(as.Date(UK_Diameter$Date_, format = "%Y %m %d"), "%Y"))

UK_Diameter_date_2 <- cbind(UK_Diameter_date,UK_Diameter)
colnames(UK_Diameter_date_2)[1] <- "Year"

## all the data in original files have no zeros 
UK_Diameter_date_2[UK_Diameter_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

UK_Diameter_Average <- UK_Diameter_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)




## UK Disease 

UK_Disease <- import("CRRI_coral/CRRI_regions/UK/data/UK_Disease.xls")

## change the date to just years
UK_Disease$Date_ <- as.Date(UK_Disease$Date_)

UK_Disease_date <- data.frame(format(as.Date(UK_Disease$Date_, format = "%Y %m %d"), "%Y"))

UK_Disease_date_2 <- cbind(UK_Disease_date,UK_Disease)
colnames(UK_Disease_date_2)[1] <- "Year"

## all the data in original files have no zeros 
UK_Disease_date_2[UK_Disease_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

UK_Disease_Average <- UK_Disease_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)



## UK Height

UK_Height <- import("CRRI_coral/CRRI_regions/UK/data/UK_Height.xls")

## change the date to just years
UK_Height$Date_ <- as.Date(UK_Height$Date_)

UK_Height_date <- data.frame(format(as.Date(UK_Height$Date_, format = "%Y %m %d"), "%Y"))

UK_Height_date_2 <- cbind(UK_Height_date,UK_Height)
colnames(UK_Height_date_2)[1] <- "Year"

## all the data in original files have no zeros 
UK_Height_date_2[UK_Height_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

UK_Height_Average <- UK_Height_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)


## UK Mortality 


UK_Mortality <- import("CRRI_coral/CRRI_regions/UK/data/UK_Mortality.xls")

## change the date to just years
UK_Mortality$Date_ <- as.Date(UK_Mortality$Date_)

UK_Mortality_date <- data.frame(format(as.Date(UK_Mortality$Date_, format = "%Y %m %d"), "%Y"))

UK_Mortality_date_2 <- cbind(UK_Mortality_date,UK_Mortality)
colnames(UK_Mortality_date_2)[1] <- "Year"

## all the data in original files have no zeros 
UK_Mortality_date_2[UK_Mortality_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

UK_Mortality_Average <- UK_Mortality_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)



### Southeast Florida 



SEF_Composition <- import("CRRI_coral/CRRI_regions/SEF/data/SEF_Composition.xls")

## change the date to just years
SEF_Composition$Date_ <- as.Date(SEF_Composition$Date_)

SEF_Composition_date <- data.frame(format(as.Date(SEF_Composition$Date_, format = "%Y %m %d"), "%Y"))

SEF_Composition_date_2 <- cbind(SEF_Composition_date,SEF_Composition)
colnames(SEF_Composition_date_2)[1] <- "Year"

## all the data in original files have no zeros 
SEF_Composition_date_2[SEF_Composition_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

SEF_Composition_Average <- SEF_Composition_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)


## SEF Diameter data 

SEF_Diameter <- import("CRRI_coral/CRRI_regions/SEF/data/SEF_Diameter.xls")

## change the date to just years
SEF_Diameter$Date_ <- as.Date(SEF_Diameter$Date_)

SEF_Diameter_date <- data.frame(format(as.Date(SEF_Diameter$Date_, format = "%Y %m %d"), "%Y"))

SEF_Diameter_date_2 <- cbind(SEF_Diameter_date,SEF_Diameter)
colnames(SEF_Diameter_date_2)[1] <- "Year"

## all the data in original files have no zeros 
SEF_Diameter_date_2[SEF_Diameter_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

SEF_Diameter_Average <- SEF_Diameter_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)




## SEF Disease 

SEF_Disease <- import("CRRI_coral/CRRI_regions/SEF/data/SEF_Disease.xls")

## change the date to just years
SEF_Disease$Date_ <- as.Date(SEF_Disease$Date_)

SEF_Disease_date <- data.frame(format(as.Date(SEF_Disease$Date_, format = "%Y %m %d"), "%Y"))

SEF_Disease_date_2 <- cbind(SEF_Disease_date,SEF_Disease)
colnames(SEF_Disease_date_2)[1] <- "Year"

## all the data in original files have no zeros 
SEF_Disease_date_2[SEF_Disease_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

SEF_Disease_Average <- SEF_Disease_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)



## SEF Height

SEF_Height <- import("CRRI_coral/CRRI_regions/SEF/data/SEF_Height.xls")

## change the date to just years
SEF_Height$Date_ <- as.Date(SEF_Height$Date_)

SEF_Height_date <- data.frame(format(as.Date(SEF_Height$Date_, format = "%Y %m %d"), "%Y"))

SEF_Height_date_2 <- cbind(SEF_Height_date,SEF_Height)
colnames(SEF_Height_date_2)[1] <- "Year"

## all the data in original files have no zeros 
SEF_Height_date_2[SEF_Height_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

SEF_Height_Average <- SEF_Height_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)


## SEF Mortality 


SEF_Mortality <- import("CRRI_coral/CRRI_regions/SEF/data/SEF_Mortality.xls")

## change the date to just years
SEF_Mortality$Date_ <- as.Date(SEF_Mortality$Date_)

SEF_Mortality_date <- data.frame(format(as.Date(SEF_Mortality$Date_, format = "%Y %m %d"), "%Y"))

SEF_Mortality_date_2 <- cbind(SEF_Mortality_date,SEF_Mortality)
colnames(SEF_Mortality_date_2)[1] <- "Year"

## all the data in original files have no zeros 
SEF_Mortality_date_2[SEF_Mortality_date_2 == 0] <- NA

## Average all columns of data per year (ignore all columns except species)

SEF_Mortality_Average <- SEF_Mortality_date_2 %>%
  group_by(Year) %>%
  summarise_if(is.numeric,mean,na.rm = TRUE)





### Add region column and combine with other data 

DT_Composition_Average$subregion <- "DT"
DT_Diameter_Average$subregion <- "DT"
DT_Disease_Average$subregion <- "DT"
DT_Height_Average$subregion <- "DT"
DT_Mortality_Average$subregion <- "DT"


LK_Composition_Average$subregion <- "LK"
LK_Diameter_Average$subregion <- "LK"
LK_Disease_Average$subregion <- "LK"
LK_Height_Average$subregion <- "LK"
LK_Mortality_Average$subregion <- "LK"


MK_Composition_Average$subregion <- "MK"
MK_Diameter_Average$subregion <- "MK"
MK_Disease_Average$subregion <- "MK"
MK_Height_Average$subregion <- "MK"
MK_Mortality_Average$subregion <- "MK"


UK_Composition_Average$subregion <- "UK"
UK_Diameter_Average$subregion <- "UK"
UK_Disease_Average$subregion <- "UK"
UK_Height_Average$subregion <- "UK"
UK_Mortality_Average$subregion <- "UK"


SEF_Composition_Average$subregion <- "SEF"
SEF_Diameter_Average$subregion <- "SEF"
SEF_Disease_Average$subregion <- "SEF"
SEF_Height_Average$subregion <- "SEF"
SEF_Mortality_Average$subregion <- "SEF"


### Start Combining by Composition (may have to add columns to merge properly)


Combined_Composition <- rbind(DT_Composition_Average,LK_Composition_Average,MK_Composition_Average,UK_Composition_Average,SEF_Composition_Average)
export(Combined_Composition,"CRRI_coral/Coral_Composition_p_Region.csv")

Combined_Diameter <- rbind(DT_Diameter_Average,LK_Diameter_Average,MK_Diameter_Average,UK_Diameter_Average,SEF_Diameter_Average)
export(Combined_Diameter,"CRRI_coral/Coral_Diameter_p_Region.csv")

Combined_Disease <- rbind(DT_Disease_Average,LK_Disease_Average,MK_Disease_Average,UK_Disease_Average,SEF_Disease_Average)
export(Combined_Disease,"CRRI_coral/Coral_Disease_p_Region.csv")

Combined_Height <- rbind(DT_Height_Average,LK_Height_Average,MK_Height_Average,UK_Height_Average,SEF_Height_Average)
export(Combined_Height,"CRRI_coral/Coral_Height_p_Region.csv")

Combined_Mortality <- rbind(DT_Mortality_Average,LK_Mortality_Average,MK_Mortality_Average,UK_Mortality_Average,SEF_Mortality_Average)
export(Combined_Mortality,"CRRI_coral/Coral_Mortality_p_Region.csv")





