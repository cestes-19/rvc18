
### Combine Nutrient data (serc and ws) per Reef and Subregion

library(ggplot2)
library(tidyverse)
library(vegan)
library(dygraphs)
library(rio)
library(readr)
library(ggplot2)
library(ggpubr)
library(hrbrthemes)
library(tibble)
library(reshape2)
library(data.table)


setwd("C:/Users/cara.estes/Documents/Spring_2020/Nutrients/Nutrients_by_REEF")


## Dry Tortugas

Bird_Key_Reef_serc <- import("DT_10km/Bird_Key_Reef_serc.xls")
Bird_Key_Reef_ws <- import("DT_10km/Bird_Key_Reef_ws.xls")

## Change date to Year to merge the two dataframes

Bird_Key_Reef_serc_date <- format(as.Date(Bird_Key_Reef_serc$DATE_, format = "%Y %m %d"),"%Y")
Bird_Key_Reef_serc_frame <- data.frame(Bird_Key_Reef_serc_date)
Bird_Key_Reef_serc_year <- cbind(Bird_Key_Reef_serc_frame, Bird_Key_Reef_serc)
colnames(Bird_Key_Reef_serc_year)[1]<- "Year"
Bird_Key_Reef_serc_year$FID <- NULL
Bird_Key_Reef_serc_year$SURV <- NULL
Bird_Key_Reef_serc_year$BASIN <- NULL
Bird_Key_Reef_serc_year$SEGMENT <- NULL
Bird_Key_Reef_serc_year$ZONE_ <- NULL
Bird_Key_Reef_serc_year$TIME_ <- NULL
Bird_Key_Reef_serc_year$DATE_ <- NULL
Bird_Key_Reef_serc_year$STATION <- NULL
Bird_Key_Reef_serc_year$SITE <- NULL



Bird_Key_Reef_ws_date <- format(as.Date(Bird_Key_Reef_ws$Date_, format = "%Y %m %d"),"%Y")
Bird_Key_Reef_ws_frame <- data.frame(Bird_Key_Reef_ws_date)
Bird_Key_Reef_ws_year <- cbind(Bird_Key_Reef_ws_frame, Bird_Key_Reef_ws)
colnames(Bird_Key_Reef_ws_year)[1]<- "Year"
Bird_Key_Reef_ws_year$FID <- NULL
Bird_Key_Reef_ws_year$Station <- NULL
Bird_Key_Reef_ws_year$Date_ <- NULL
Bird_Key_Reef_ws_year$GMT <- NULL
Bird_Key_Reef_ws_year$Field11 <- NULL
Bird_Key_Reef_ws_year$Field12 <- NULL
Bird_Key_Reef_ws_year$Field13 <- NULL
Bird_Key_Reef_ws_year$Field14 <- NULL
Bird_Key_Reef_ws_year$Field15 <- NULL
Bird_Key_Reef_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end


## Using subset add another ID column to make merging easier

Bird_Key_Reef_serc_2002 <- subset(Bird_Key_Reef_serc_year, Year == "2002")
Bird_Key_Reef_serc_2002_merge <- Bird_Key_Reef_serc_2002 %>%
                          mutate(id = row_number())

Bird_Key_Reef_ws_2002 <- subset(Bird_Key_Reef_ws_year, Year == "2002")
Bird_Key_Reef_ws_2002_merge <- Bird_Key_Reef_ws_2002 %>%
  mutate(id = row_number())

Bird_Key_Reef_2002_all <- full_join(Bird_Key_Reef_serc_2002_merge, Bird_Key_Reef_ws_2002_merge, by = c("Year","id"))


Bird_Key_Reef_serc_2003 <- subset(Bird_Key_Reef_serc_year, Year == "2003")
Bird_Key_Reef_serc_2003_merge <- Bird_Key_Reef_serc_2003 %>%
  mutate(id = row_number())

Bird_Key_Reef_ws_2003 <- subset(Bird_Key_Reef_ws_year, Year == "2003")
Bird_Key_Reef_ws_2003_merge <- Bird_Key_Reef_ws_2003 %>%
  mutate(id = row_number())

Bird_Key_Reef_2003_all <- full_join(Bird_Key_Reef_serc_2003_merge, Bird_Key_Reef_ws_2003_merge, by = c("Year","id"))


Bird_Key_Reef_serc_2004 <- subset(Bird_Key_Reef_serc_year, Year == "2004")
Bird_Key_Reef_serc_2004_merge <- Bird_Key_Reef_serc_2004 %>%
  mutate(id = row_number())

Bird_Key_Reef_ws_2004 <- subset(Bird_Key_Reef_ws_year, Year == "2004")
Bird_Key_Reef_ws_2004_merge <- Bird_Key_Reef_ws_2004 %>%
  mutate(id = row_number())

Bird_Key_Reef_2004_all <- full_join(Bird_Key_Reef_serc_2004_merge, Bird_Key_Reef_ws_2004_merge, by = c("Year","id"))


Bird_Key_Reef_serc_2005 <- subset(Bird_Key_Reef_serc_year, Year == "2005")
Bird_Key_Reef_serc_2005_merge <- Bird_Key_Reef_serc_2005 %>%
  mutate(id = row_number())

Bird_Key_Reef_ws_2005 <- subset(Bird_Key_Reef_ws_year, Year == "2005")
Bird_Key_Reef_ws_2005_merge <- Bird_Key_Reef_ws_2005 %>%
  mutate(id = row_number())

Bird_Key_Reef_2005_all <- full_join(Bird_Key_Reef_serc_2005_merge, Bird_Key_Reef_ws_2005_merge, by = c("Year","id"))


Bird_Key_Reef_serc_2006 <- subset(Bird_Key_Reef_serc_year, Year == "2006")
Bird_Key_Reef_serc_2006_merge <- Bird_Key_Reef_serc_2006 %>%
  mutate(id = row_number())

Bird_Key_Reef_ws_2006 <- subset(Bird_Key_Reef_ws_year, Year == "2006")
Bird_Key_Reef_ws_2006_merge <- Bird_Key_Reef_ws_2006 %>%
  mutate(id = row_number())

Bird_Key_Reef_2006_all <- full_join(Bird_Key_Reef_serc_2006_merge, Bird_Key_Reef_ws_2006_merge, by = c("Year","id"))


Bird_Key_Reef_serc_2007 <- subset(Bird_Key_Reef_serc_year, Year == "2007")
Bird_Key_Reef_serc_2007_merge <- Bird_Key_Reef_serc_2007 %>%
  mutate(id = row_number())

Bird_Key_Reef_ws_2007 <- subset(Bird_Key_Reef_ws_year, Year == "2007")
Bird_Key_Reef_ws_2007_merge <- Bird_Key_Reef_ws_2007 %>%
  mutate(id = row_number())

Bird_Key_Reef_2007_all <- full_join(Bird_Key_Reef_serc_2007_merge, Bird_Key_Reef_ws_2007_merge, by = c("Year","id"))


Bird_Key_Reef_serc_2008 <- subset(Bird_Key_Reef_serc_year, Year == "2008")
Bird_Key_Reef_serc_2008_merge <- Bird_Key_Reef_serc_2008 %>%
  mutate(id = row_number())

Bird_Key_Reef_ws_2008 <- subset(Bird_Key_Reef_ws_year, Year == "2008")
Bird_Key_Reef_ws_2008_merge <- Bird_Key_Reef_ws_2008 %>%
  mutate(id = row_number())

Bird_Key_Reef_2008_all <- full_join(Bird_Key_Reef_serc_2008_merge, Bird_Key_Reef_ws_2008_merge, by = c("Year","id"))


Bird_Key_Reef_serc_2009 <- subset(Bird_Key_Reef_serc_year, Year == "2009")
Bird_Key_Reef_serc_2009_merge <- Bird_Key_Reef_serc_2009 %>%
  mutate(id = row_number())

Bird_Key_Reef_ws_2009 <- subset(Bird_Key_Reef_ws_year, Year == "2009")
Bird_Key_Reef_ws_2009_merge <- Bird_Key_Reef_ws_2009 %>%
  mutate(id = row_number())

Bird_Key_Reef_2009_all <- full_join(Bird_Key_Reef_serc_2009_merge, Bird_Key_Reef_ws_2009_merge, by = c("Year","id"))


Bird_Key_Reef_serc_2011 <- subset(Bird_Key_Reef_serc_year, Year == "2011")
Bird_Key_Reef_serc_2011_merge <- Bird_Key_Reef_serc_2011 %>%
  mutate(id = row_number())

Bird_Key_Reef_ws_2011 <- subset(Bird_Key_Reef_ws_year, Year == "2011")
Bird_Key_Reef_ws_2011_merge <- Bird_Key_Reef_ws_2011 %>%
  mutate(id = row_number())

Bird_Key_Reef_2011_all <- full_join(Bird_Key_Reef_serc_2011_merge, Bird_Key_Reef_ws_2011_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

Bird_Key_Reef_ws_2012_all <- subset(Bird_Key_Reef_ws_year, Year == "2012") 

## adding extra columns to merge 

Bird_Key_Reef_ws_2012_all$LATDEC <- "NA"
Bird_Key_Reef_ws_2012_all$LONDEC <- "NA"
Bird_Key_Reef_ws_2012_all$DEPTH <- "NA"
Bird_Key_Reef_ws_2012_all$NOX_S <- "NA"
Bird_Key_Reef_ws_2012_all$NOX_B <- "NA"
Bird_Key_Reef_ws_2012_all$NO3_S <- "NA"
Bird_Key_Reef_ws_2012_all$NO3_B <- "NA"
Bird_Key_Reef_ws_2012_all$NO2_S <- "NA"
Bird_Key_Reef_ws_2012_all$NO2_B <- "NA"
Bird_Key_Reef_ws_2012_all$NH4_S <- "NA"
Bird_Key_Reef_ws_2012_all$NH4_B <- "NA"
Bird_Key_Reef_ws_2012_all$TN_S <- "NA"
Bird_Key_Reef_ws_2012_all$TN_B <- "NA"
Bird_Key_Reef_ws_2012_all$DIN_S <- "NA"
Bird_Key_Reef_ws_2012_all$DIN_B <- "NA"
Bird_Key_Reef_ws_2012_all$TON_S <- "NA"
Bird_Key_Reef_ws_2012_all$TON_B <- "NA"
Bird_Key_Reef_ws_2012_all$TP_S <- "NA"
Bird_Key_Reef_ws_2012_all$TP_B <- "NA"
Bird_Key_Reef_ws_2012_all$SRP_S <- "NA"
Bird_Key_Reef_ws_2012_all$SRP_B <- "NA"
Bird_Key_Reef_ws_2012_all$APA_S <- "NA"
Bird_Key_Reef_ws_2012_all$APA_B <- "NA"
Bird_Key_Reef_ws_2012_all$CHLA_S <- "NA"
Bird_Key_Reef_ws_2012_all$CHLA_B <- "NA"
Bird_Key_Reef_ws_2012_all$TOC_S <- "NA"
Bird_Key_Reef_ws_2012_all$TOC_B <- "NA"
Bird_Key_Reef_ws_2012_all$SiO2_S <- "NA"
Bird_Key_Reef_ws_2012_all$SiO2_B <- "NA"
Bird_Key_Reef_ws_2012_all$TURB_S <- "NA"
Bird_Key_Reef_ws_2012_all$TURB_B <- "NA"
Bird_Key_Reef_ws_2012_all$SAL_S <- "NA"
Bird_Key_Reef_ws_2012_all$SAL_B <- "NA"
Bird_Key_Reef_ws_2012_all$TEMP_S <- "NA"
Bird_Key_Reef_ws_2012_all$TEMP_B <- "NA"
Bird_Key_Reef_ws_2012_all$DO_S <- "NA"
Bird_Key_Reef_ws_2012_all$DO_B <- "NA"
Bird_Key_Reef_ws_2012_all$Kd <- "NA"
Bird_Key_Reef_ws_2012_all$pH <- "NA"
Bird_Key_Reef_ws_2012_all$TN_TP <- "NA"
Bird_Key_Reef_ws_2012_all$N_P <- "NA"
Bird_Key_Reef_ws_2012_all$DIN_TP <- "NA"
Bird_Key_Reef_ws_2012_all$Si_DIN <- "NA"
Bird_Key_Reef_ws_2012_all$F_SAT_S <- "NA"
Bird_Key_Reef_ws_2012_all$F_SAT_B <- "NA"
Bird_Key_Reef_ws_2012_all$F_Io <- "NA"
Bird_Key_Reef_ws_2012_all$DSIGT <- "NA"
Bird_Key_Reef_ws_2012_all$id <- "NA"







## rest of the serc data
Bird_Key_Reef_serc_1995 <- subset(Bird_Key_Reef_serc_year, Year == "1995")
Bird_Key_Reef_serc_1996 <- subset(Bird_Key_Reef_serc_year, Year == "1996")
Bird_Key_Reef_serc_1997 <- subset(Bird_Key_Reef_serc_year, Year == "1997")
Bird_Key_Reef_serc_1998 <- subset(Bird_Key_Reef_serc_year, Year == "1998")
Bird_Key_Reef_serc_1999 <- subset(Bird_Key_Reef_serc_year, Year == "1999")
Bird_Key_Reef_serc_2000 <- subset(Bird_Key_Reef_serc_year, Year == "2000")
Bird_Key_Reef_serc_2001 <- subset(Bird_Key_Reef_serc_year, Year == "2001")
Bird_Key_Reef_serc_2010 <- subset(Bird_Key_Reef_serc_year, Year == "2010")



Bird_Key_Reef_serc_extra <- rbind(Bird_Key_Reef_serc_1995,Bird_Key_Reef_serc_1996,Bird_Key_Reef_serc_1997,Bird_Key_Reef_serc_1998,Bird_Key_Reef_serc_1999,Bird_Key_Reef_serc_2000,Bird_Key_Reef_serc_2001,Bird_Key_Reef_serc_2010)





Bird_Key_Reef_serc_extra$Longitude <- "NA"
Bird_Key_Reef_serc_extra$Latitude <- "NA"
Bird_Key_Reef_serc_extra$Depth <- "NA"
Bird_Key_Reef_serc_extra$SST <- "NA"
Bird_Key_Reef_serc_extra$SSS <- "NA"
Bird_Key_Reef_serc_extra$Chl_a <- "NA"
Bird_Key_Reef_serc_extra$Phaeophyti <- "NA"
Bird_Key_Reef_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_select to merge with all other data

Bird_Key_Reef_ws_2012_all <- setcolorder(Bird_Key_Reef_ws_2012_all, names(Bird_Key_Reef_serc_extra))

## Merge all years together 

Bird_Key_Reef_all <- rbind(Bird_Key_Reef_serc_extra,Bird_Key_Reef_2002_all,Bird_Key_Reef_2003_all,Bird_Key_Reef_2004_all, Bird_Key_Reef_2005_all,Bird_Key_Reef_2006_all,Bird_Key_Reef_2007_all,Bird_Key_Reef_2008_all,Bird_Key_Reef_2009_all,Bird_Key_Reef_2011_all,Bird_Key_Reef_ws_2012_all)
Bird_Key_Reef_all$sitename <- "Bird_Key_Reef"

export(Bird_Key_Reef_all,"DT_10km/Bird_Key_Reef_combined.csv")




Black_Coral_Rock_serc <- import("DT_10km/Black_Coral_Rock_serc.xls")
Black_Coral_Rock_ws <- import("DT_10km/Black_Coral_Rock_ws.xls")

## Change date to Year to merge the two dataframes

Black_Coral_Rock_serc_date <- format(as.Date(Black_Coral_Rock_serc$DATE_, format = "%Y %m %d"),"%Y")
Black_Coral_Rock_serc_frame <- data.frame(Black_Coral_Rock_serc_date)
Black_Coral_Rock_serc_year <- cbind(Black_Coral_Rock_serc_frame, Black_Coral_Rock_serc)
colnames(Black_Coral_Rock_serc_year)[1]<- "Year"
Black_Coral_Rock_serc_year$FID <- NULL
Black_Coral_Rock_serc_year$SURV <- NULL
Black_Coral_Rock_serc_year$BASIN <- NULL
Black_Coral_Rock_serc_year$SEGMENT <- NULL
Black_Coral_Rock_serc_year$ZONE_ <- NULL
Black_Coral_Rock_serc_year$TIME_ <- NULL
Black_Coral_Rock_serc_year$DATE_ <- NULL
Black_Coral_Rock_serc_year$STATION <- NULL
Black_Coral_Rock_serc_year$SITE <- NULL



Black_Coral_Rock_ws_date <- format(as.Date(Black_Coral_Rock_ws$Date_, format = "%Y %m %d"),"%Y")
Black_Coral_Rock_ws_frame <- data.frame(Black_Coral_Rock_ws_date)
Black_Coral_Rock_ws_year <- cbind(Black_Coral_Rock_ws_frame, Black_Coral_Rock_ws)
colnames(Black_Coral_Rock_ws_year)[1]<- "Year"
Black_Coral_Rock_ws_year$FID <- NULL
Black_Coral_Rock_ws_year$Station <- NULL
Black_Coral_Rock_ws_year$Date_ <- NULL
Black_Coral_Rock_ws_year$GMT <- NULL
Black_Coral_Rock_ws_year$Field11 <- NULL
Black_Coral_Rock_ws_year$Field12 <- NULL
Black_Coral_Rock_ws_year$Field13 <- NULL
Black_Coral_Rock_ws_year$Field14 <- NULL
Black_Coral_Rock_ws_year$Field15 <- NULL
Black_Coral_Rock_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end


## Using subset add another ID column to make merging easier

Black_Coral_Rock_serc_1998 <- subset(Black_Coral_Rock_serc_year, Year == "1998")
Black_Coral_Rock_serc_1998_merge <- Black_Coral_Rock_serc_1998 %>%
  mutate(id = row_number())

Black_Coral_Rock_ws_1998 <- subset(Black_Coral_Rock_ws_year, Year == "1998")
Black_Coral_Rock_ws_1998_merge <- Black_Coral_Rock_ws_1998 %>%
  mutate(id = row_number())

Black_Coral_Rock_1998_all <- full_join(Black_Coral_Rock_serc_1998_merge, Black_Coral_Rock_ws_1998_merge, by = c("Year","id"))


Black_Coral_Rock_serc_2002 <- subset(Black_Coral_Rock_serc_year, Year == "2002")
Black_Coral_Rock_serc_2002_merge <- Black_Coral_Rock_serc_2002 %>%
  mutate(id = row_number())

Black_Coral_Rock_ws_2002 <- subset(Black_Coral_Rock_ws_year, Year == "2002")
Black_Coral_Rock_ws_2002_merge <- Black_Coral_Rock_ws_2002 %>%
  mutate(id = row_number())

Black_Coral_Rock_2002_all <- full_join(Black_Coral_Rock_serc_2002_merge, Black_Coral_Rock_ws_2002_merge, by = c("Year","id"))


Black_Coral_Rock_serc_2003 <- subset(Black_Coral_Rock_serc_year, Year == "2003")
Black_Coral_Rock_serc_2003_merge <- Black_Coral_Rock_serc_2003 %>%
  mutate(id = row_number())

Black_Coral_Rock_ws_2003 <- subset(Black_Coral_Rock_ws_year, Year == "2003")
Black_Coral_Rock_ws_2003_merge <- Black_Coral_Rock_ws_2003 %>%
  mutate(id = row_number())

Black_Coral_Rock_2003_all <- full_join(Black_Coral_Rock_serc_2003_merge, Black_Coral_Rock_ws_2003_merge, by = c("Year","id"))


Black_Coral_Rock_serc_2004 <- subset(Black_Coral_Rock_serc_year, Year == "2004")
Black_Coral_Rock_serc_2004_merge <- Black_Coral_Rock_serc_2004 %>%
  mutate(id = row_number())

Black_Coral_Rock_ws_2004 <- subset(Black_Coral_Rock_ws_year, Year == "2004")
Black_Coral_Rock_ws_2004_merge <- Black_Coral_Rock_ws_2004 %>%
  mutate(id = row_number())

Black_Coral_Rock_2004_all <- full_join(Black_Coral_Rock_serc_2004_merge, Black_Coral_Rock_ws_2004_merge, by = c("Year","id"))


Black_Coral_Rock_serc_2005 <- subset(Black_Coral_Rock_serc_year, Year == "2005")
Black_Coral_Rock_serc_2005_merge <- Black_Coral_Rock_serc_2005 %>%
  mutate(id = row_number())

Black_Coral_Rock_ws_2005 <- subset(Black_Coral_Rock_ws_year, Year == "2005")
Black_Coral_Rock_ws_2005_merge <- Black_Coral_Rock_ws_2005 %>%
  mutate(id = row_number())

Black_Coral_Rock_2005_all <- full_join(Black_Coral_Rock_serc_2005_merge, Black_Coral_Rock_ws_2005_merge, by = c("Year","id"))


Black_Coral_Rock_serc_2006 <- subset(Black_Coral_Rock_serc_year, Year == "2006")
Black_Coral_Rock_serc_2006_merge <- Black_Coral_Rock_serc_2006 %>%
  mutate(id = row_number())

Black_Coral_Rock_ws_2006 <- subset(Black_Coral_Rock_ws_year, Year == "2006")
Black_Coral_Rock_ws_2006_merge <- Black_Coral_Rock_ws_2006 %>%
  mutate(id = row_number())

Black_Coral_Rock_2006_all <- full_join(Black_Coral_Rock_serc_2006_merge, Black_Coral_Rock_ws_2006_merge, by = c("Year","id"))




### ADD on years for ws (need to add missing columns to merge)

# Black_Coral_Rock_ws_2012_all <- subset(Black_Coral_Rock_ws_year, Year == "2012") 
# 
# ## adding extra columns to merge 
# 
# Black_Coral_Rock_ws_2012_all$LATDEC <- "NA"
# Black_Coral_Rock_ws_2012_all$LONDEC <- "NA"
# Black_Coral_Rock_ws_2012_all$DEPTH <- "NA"
# Black_Coral_Rock_ws_2012_all$NOX_S <- "NA"
# Black_Coral_Rock_ws_2012_all$NOX_B <- "NA"
# Black_Coral_Rock_ws_2012_all$NO3_S <- "NA"
# Black_Coral_Rock_ws_2012_all$NO3_B <- "NA"
# Black_Coral_Rock_ws_2012_all$NO2_S <- "NA"
# Black_Coral_Rock_ws_2012_all$NO2_B <- "NA"
# Black_Coral_Rock_ws_2012_all$NH4_S <- "NA"
# Black_Coral_Rock_ws_2012_all$NH4_B <- "NA"
# Black_Coral_Rock_ws_2012_all$TN_S <- "NA"
# Black_Coral_Rock_ws_2012_all$TN_B <- "NA"
# Black_Coral_Rock_ws_2012_all$DIN_S <- "NA"
# Black_Coral_Rock_ws_2012_all$DIN_B <- "NA"
# Black_Coral_Rock_ws_2012_all$TON_S <- "NA"
# Black_Coral_Rock_ws_2012_all$TON_B <- "NA"
# Black_Coral_Rock_ws_2012_all$TP_S <- "NA"
# Black_Coral_Rock_ws_2012_all$TP_B <- "NA"
# Black_Coral_Rock_ws_2012_all$SRP_S <- "NA"
# Black_Coral_Rock_ws_2012_all$SRP_B <- "NA"
# Black_Coral_Rock_ws_2012_all$APA_S <- "NA"
# Black_Coral_Rock_ws_2012_all$APA_B <- "NA"
# Black_Coral_Rock_ws_2012_all$CHLA_S <- "NA"
# Black_Coral_Rock_ws_2012_all$CHLA_B <- "NA"
# Black_Coral_Rock_ws_2012_all$TOC_S <- "NA"
# Black_Coral_Rock_ws_2012_all$TOC_B <- "NA"
# Black_Coral_Rock_ws_2012_all$SiO2_S <- "NA"
# Black_Coral_Rock_ws_2012_all$SiO2_B <- "NA"
# Black_Coral_Rock_ws_2012_all$TURB_S <- "NA"
# Black_Coral_Rock_ws_2012_all$TURB_B <- "NA"
# Black_Coral_Rock_ws_2012_all$SAL_S <- "NA"
# Black_Coral_Rock_ws_2012_all$SAL_B <- "NA"
# Black_Coral_Rock_ws_2012_all$TEMP_S <- "NA"
# Black_Coral_Rock_ws_2012_all$TEMP_B <- "NA"
# Black_Coral_Rock_ws_2012_all$DO_S <- "NA"
# Black_Coral_Rock_ws_2012_all$DO_B <- "NA"
# Black_Coral_Rock_ws_2012_all$Kd <- "NA"
# Black_Coral_Rock_ws_2012_all$pH <- "NA"
# Black_Coral_Rock_ws_2012_all$TN_TP <- "NA"
# Black_Coral_Rock_ws_2012_all$N_P <- "NA"
# Black_Coral_Rock_ws_2012_all$DIN_TP <- "NA"
# Black_Coral_Rock_ws_2012_all$Si_DIN <- "NA"
# Black_Coral_Rock_ws_2012_all$F_SAT_S <- "NA"
# Black_Coral_Rock_ws_2012_all$F_SAT_B <- "NA"
# Black_Coral_Rock_ws_2012_all$F_Io <- "NA"
# Black_Coral_Rock_ws_2012_all$DSIGT <- "NA"
# Black_Coral_Rock_ws_2012_all$id <- "NA"
# 
# 





## rest of the serc data
Black_Coral_Rock_serc_1995 <- subset(Black_Coral_Rock_serc_year, Year == "1995")
Black_Coral_Rock_serc_1996 <- subset(Black_Coral_Rock_serc_year, Year == "1996")
Black_Coral_Rock_serc_1997 <- subset(Black_Coral_Rock_serc_year, Year == "1997")
#Black_Coral_Rock_serc_1998 <- subset(Black_Coral_Rock_serc_year, Year == "1998")
Black_Coral_Rock_serc_1999 <- subset(Black_Coral_Rock_serc_year, Year == "1999")
Black_Coral_Rock_serc_2000 <- subset(Black_Coral_Rock_serc_year, Year == "2000")
Black_Coral_Rock_serc_2001 <- subset(Black_Coral_Rock_serc_year, Year == "2001")
Black_Coral_Rock_serc_2007 <- subset(Black_Coral_Rock_serc_year, Year == "2007")
Black_Coral_Rock_serc_2008 <- subset(Black_Coral_Rock_serc_year, Year == "2008")
Black_Coral_Rock_serc_2009 <- subset(Black_Coral_Rock_serc_year, Year == "2009")
Black_Coral_Rock_serc_2010 <- subset(Black_Coral_Rock_serc_year, Year == "2010")
Black_Coral_Rock_serc_2011 <- subset(Black_Coral_Rock_serc_year, Year == "2011")


Black_Coral_Rock_serc_extra <- rbind(Black_Coral_Rock_serc_1995,Black_Coral_Rock_serc_1996,Black_Coral_Rock_serc_1997,Black_Coral_Rock_serc_1999,Black_Coral_Rock_serc_2000,Black_Coral_Rock_serc_2001,Black_Coral_Rock_serc_2007,Black_Coral_Rock_serc_2008,Black_Coral_Rock_serc_2009,Black_Coral_Rock_serc_2010,Black_Coral_Rock_serc_2011)





Black_Coral_Rock_serc_extra$Longitude <- "NA"
Black_Coral_Rock_serc_extra$Latitude <- "NA"
Black_Coral_Rock_serc_extra$Depth <- "NA"
Black_Coral_Rock_serc_extra$SST <- "NA"
Black_Coral_Rock_serc_extra$SSS <- "NA"
Black_Coral_Rock_serc_extra$Chl_a <- "NA"
Black_Coral_Rock_serc_extra$Phaeophyti <- "NA"
Black_Coral_Rock_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_select to merge with all other data

#Black_Coral_Rock_ws_2012_all <- setcolorder(Black_Coral_Rock_ws_2012_all, names(Black_Coral_Rock_serc_extra))

## Merge all years together 

Black_Coral_Rock_all <- rbind(Black_Coral_Rock_serc_extra,Black_Coral_Rock_1998_all,Black_Coral_Rock_2002_all,Black_Coral_Rock_2003_all,Black_Coral_Rock_2004_all, Black_Coral_Rock_2005_all,Black_Coral_Rock_2006_all)
Black_Coral_Rock_all$sitename <- "Black_Coral_Rock"


export(Black_Coral_Rock_all,"DT_10km/Black_Coral_Rock_combined.csv")




Davis_Rock_serc <- import("DT_10km/Davis_Rock_serc.xls")
Davis_Rock_ws <- import("DT_10km/Davis_Rock_ws.xls")

## Change date to Year to merge the two dataframes

Davis_Rock_serc_date <- format(as.Date(Davis_Rock_serc$DATE_, format = "%Y %m %d"),"%Y")
Davis_Rock_serc_frame <- data.frame(Davis_Rock_serc_date)
Davis_Rock_serc_year <- cbind(Davis_Rock_serc_frame, Davis_Rock_serc)
colnames(Davis_Rock_serc_year)[1]<- "Year"
Davis_Rock_serc_year$FID <- NULL
Davis_Rock_serc_year$SURV <- NULL
Davis_Rock_serc_year$BASIN <- NULL
Davis_Rock_serc_year$SEGMENT <- NULL
Davis_Rock_serc_year$ZONE_ <- NULL
Davis_Rock_serc_year$TIME_ <- NULL
Davis_Rock_serc_year$DATE_ <- NULL
Davis_Rock_serc_year$STATION <- NULL
Davis_Rock_serc_year$SITE <- NULL



Davis_Rock_ws_date <- format(as.Date(Davis_Rock_ws$Date_, format = "%Y %m %d"),"%Y")
Davis_Rock_ws_frame <- data.frame(Davis_Rock_ws_date)
Davis_Rock_ws_year <- cbind(Davis_Rock_ws_frame, Davis_Rock_ws)
colnames(Davis_Rock_ws_year)[1]<- "Year"
Davis_Rock_ws_year$FID <- NULL
Davis_Rock_ws_year$Station <- NULL
Davis_Rock_ws_year$Date_ <- NULL
Davis_Rock_ws_year$GMT <- NULL
Davis_Rock_ws_year$Field11 <- NULL
Davis_Rock_ws_year$Field12 <- NULL
Davis_Rock_ws_year$Field13 <- NULL
Davis_Rock_ws_year$Field14 <- NULL
Davis_Rock_ws_year$Field15 <- NULL
Davis_Rock_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end


## Using subset add another ID column to make merging easier

Davis_Rock_serc_2002 <- subset(Davis_Rock_serc_year, Year == "2002")
Davis_Rock_serc_2002_merge <- Davis_Rock_serc_2002 %>%
  mutate(id = row_number())

Davis_Rock_ws_2002 <- subset(Davis_Rock_ws_year, Year == "2002")
Davis_Rock_ws_2002_merge <- Davis_Rock_ws_2002 %>%
  mutate(id = row_number())

Davis_Rock_2002_all <- full_join(Davis_Rock_serc_2002_merge, Davis_Rock_ws_2002_merge, by = c("Year","id"))


Davis_Rock_serc_2003 <- subset(Davis_Rock_serc_year, Year == "2003")
Davis_Rock_serc_2003_merge <- Davis_Rock_serc_2003 %>%
  mutate(id = row_number())

Davis_Rock_ws_2003 <- subset(Davis_Rock_ws_year, Year == "2003")
Davis_Rock_ws_2003_merge <- Davis_Rock_ws_2003 %>%
  mutate(id = row_number())

Davis_Rock_2003_all <- full_join(Davis_Rock_serc_2003_merge, Davis_Rock_ws_2003_merge, by = c("Year","id"))


Davis_Rock_serc_2004 <- subset(Davis_Rock_serc_year, Year == "2004")
Davis_Rock_serc_2004_merge <- Davis_Rock_serc_2004 %>%
  mutate(id = row_number())

Davis_Rock_ws_2004 <- subset(Davis_Rock_ws_year, Year == "2004")
Davis_Rock_ws_2004_merge <- Davis_Rock_ws_2004 %>%
  mutate(id = row_number())

Davis_Rock_2004_all <- full_join(Davis_Rock_serc_2004_merge, Davis_Rock_ws_2004_merge, by = c("Year","id"))


Davis_Rock_serc_2005 <- subset(Davis_Rock_serc_year, Year == "2005")
Davis_Rock_serc_2005_merge <- Davis_Rock_serc_2005 %>%
  mutate(id = row_number())

Davis_Rock_ws_2005 <- subset(Davis_Rock_ws_year, Year == "2005")
Davis_Rock_ws_2005_merge <- Davis_Rock_ws_2005 %>%
  mutate(id = row_number())

Davis_Rock_2005_all <- full_join(Davis_Rock_serc_2005_merge, Davis_Rock_ws_2005_merge, by = c("Year","id"))


Davis_Rock_serc_2006 <- subset(Davis_Rock_serc_year, Year == "2006")
Davis_Rock_serc_2006_merge <- Davis_Rock_serc_2006 %>%
  mutate(id = row_number())

Davis_Rock_ws_2006 <- subset(Davis_Rock_ws_year, Year == "2006")
Davis_Rock_ws_2006_merge <- Davis_Rock_ws_2006 %>%
  mutate(id = row_number())

Davis_Rock_2006_all <- full_join(Davis_Rock_serc_2006_merge, Davis_Rock_ws_2006_merge, by = c("Year","id"))


Davis_Rock_serc_2007 <- subset(Davis_Rock_serc_year, Year == "2007")
Davis_Rock_serc_2007_merge <- Davis_Rock_serc_2007 %>%
  mutate(id = row_number())

Davis_Rock_ws_2007 <- subset(Davis_Rock_ws_year, Year == "2007")
Davis_Rock_ws_2007_merge <- Davis_Rock_ws_2007 %>%
  mutate(id = row_number())

Davis_Rock_2007_all <- full_join(Davis_Rock_serc_2007_merge, Davis_Rock_ws_2007_merge, by = c("Year","id"))


Davis_Rock_serc_2008 <- subset(Davis_Rock_serc_year, Year == "2008")
Davis_Rock_serc_2008_merge <- Davis_Rock_serc_2008 %>%
  mutate(id = row_number())

Davis_Rock_ws_2008 <- subset(Davis_Rock_ws_year, Year == "2008")
Davis_Rock_ws_2008_merge <- Davis_Rock_ws_2008 %>%
  mutate(id = row_number())

Davis_Rock_2008_all <- full_join(Davis_Rock_serc_2008_merge, Davis_Rock_ws_2008_merge, by = c("Year","id"))


Davis_Rock_serc_2009 <- subset(Davis_Rock_serc_year, Year == "2009")
Davis_Rock_serc_2009_merge <- Davis_Rock_serc_2009 %>%
  mutate(id = row_number())

Davis_Rock_ws_2009 <- subset(Davis_Rock_ws_year, Year == "2009")
Davis_Rock_ws_2009_merge <- Davis_Rock_ws_2009 %>%
  mutate(id = row_number())

Davis_Rock_2009_all <- full_join(Davis_Rock_serc_2009_merge, Davis_Rock_ws_2009_merge, by = c("Year","id"))


Davis_Rock_serc_2011 <- subset(Davis_Rock_serc_year, Year == "2011")
Davis_Rock_serc_2011_merge <- Davis_Rock_serc_2011 %>%
  mutate(id = row_number())

Davis_Rock_ws_2011 <- subset(Davis_Rock_ws_year, Year == "2011")
Davis_Rock_ws_2011_merge <- Davis_Rock_ws_2011 %>%
  mutate(id = row_number())

Davis_Rock_2011_all <- full_join(Davis_Rock_serc_2011_merge, Davis_Rock_ws_2011_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

Davis_Rock_ws_2012_all <- subset(Davis_Rock_ws_year, Year == "2012") 

## adding extra columns to merge 

Davis_Rock_ws_2012_all$LATDEC <- "NA"
Davis_Rock_ws_2012_all$LONDEC <- "NA"
Davis_Rock_ws_2012_all$DEPTH <- "NA"
Davis_Rock_ws_2012_all$NOX_S <- "NA"
Davis_Rock_ws_2012_all$NOX_B <- "NA"
Davis_Rock_ws_2012_all$NO3_S <- "NA"
Davis_Rock_ws_2012_all$NO3_B <- "NA"
Davis_Rock_ws_2012_all$NO2_S <- "NA"
Davis_Rock_ws_2012_all$NO2_B <- "NA"
Davis_Rock_ws_2012_all$NH4_S <- "NA"
Davis_Rock_ws_2012_all$NH4_B <- "NA"
Davis_Rock_ws_2012_all$TN_S <- "NA"
Davis_Rock_ws_2012_all$TN_B <- "NA"
Davis_Rock_ws_2012_all$DIN_S <- "NA"
Davis_Rock_ws_2012_all$DIN_B <- "NA"
Davis_Rock_ws_2012_all$TON_S <- "NA"
Davis_Rock_ws_2012_all$TON_B <- "NA"
Davis_Rock_ws_2012_all$TP_S <- "NA"
Davis_Rock_ws_2012_all$TP_B <- "NA"
Davis_Rock_ws_2012_all$SRP_S <- "NA"
Davis_Rock_ws_2012_all$SRP_B <- "NA"
Davis_Rock_ws_2012_all$APA_S <- "NA"
Davis_Rock_ws_2012_all$APA_B <- "NA"
Davis_Rock_ws_2012_all$CHLA_S <- "NA"
Davis_Rock_ws_2012_all$CHLA_B <- "NA"
Davis_Rock_ws_2012_all$TOC_S <- "NA"
Davis_Rock_ws_2012_all$TOC_B <- "NA"
Davis_Rock_ws_2012_all$SiO2_S <- "NA"
Davis_Rock_ws_2012_all$SiO2_B <- "NA"
Davis_Rock_ws_2012_all$TURB_S <- "NA"
Davis_Rock_ws_2012_all$TURB_B <- "NA"
Davis_Rock_ws_2012_all$SAL_S <- "NA"
Davis_Rock_ws_2012_all$SAL_B <- "NA"
Davis_Rock_ws_2012_all$TEMP_S <- "NA"
Davis_Rock_ws_2012_all$TEMP_B <- "NA"
Davis_Rock_ws_2012_all$DO_S <- "NA"
Davis_Rock_ws_2012_all$DO_B <- "NA"
Davis_Rock_ws_2012_all$Kd <- "NA"
Davis_Rock_ws_2012_all$pH <- "NA"
Davis_Rock_ws_2012_all$TN_TP <- "NA"
Davis_Rock_ws_2012_all$N_P <- "NA"
Davis_Rock_ws_2012_all$DIN_TP <- "NA"
Davis_Rock_ws_2012_all$Si_DIN <- "NA"
Davis_Rock_ws_2012_all$F_SAT_S <- "NA"
Davis_Rock_ws_2012_all$F_SAT_B <- "NA"
Davis_Rock_ws_2012_all$F_Io <- "NA"
Davis_Rock_ws_2012_all$DSIGT <- "NA"
Davis_Rock_ws_2012_all$id <- "NA"







## rest of the serc data
Davis_Rock_serc_1995 <- subset(Davis_Rock_serc_year, Year == "1995")
Davis_Rock_serc_1996 <- subset(Davis_Rock_serc_year, Year == "1996")
Davis_Rock_serc_1997 <- subset(Davis_Rock_serc_year, Year == "1997")
Davis_Rock_serc_1998 <- subset(Davis_Rock_serc_year, Year == "1998")
Davis_Rock_serc_1999 <- subset(Davis_Rock_serc_year, Year == "1999")
Davis_Rock_serc_2000 <- subset(Davis_Rock_serc_year, Year == "2000")
Davis_Rock_serc_2001 <- subset(Davis_Rock_serc_year, Year == "2001")
Davis_Rock_serc_2010 <- subset(Davis_Rock_serc_year, Year == "2010")



Davis_Rock_serc_extra <- rbind(Davis_Rock_serc_1995,Davis_Rock_serc_1996,Davis_Rock_serc_1997,Davis_Rock_serc_1998,Davis_Rock_serc_1999,Davis_Rock_serc_2000,Davis_Rock_serc_2001,Davis_Rock_serc_2010)





Davis_Rock_serc_extra$Longitude <- "NA"
Davis_Rock_serc_extra$Latitude <- "NA"
Davis_Rock_serc_extra$Depth <- "NA"
Davis_Rock_serc_extra$SST <- "NA"
Davis_Rock_serc_extra$SSS <- "NA"
Davis_Rock_serc_extra$Chl_a <- "NA"
Davis_Rock_serc_extra$Phaeophyti <- "NA"
Davis_Rock_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_select to merge with all other data

Davis_Rock_ws_2012_all <- setcolorder(Davis_Rock_ws_2012_all, names(Davis_Rock_serc_extra))

## Merge all years together 

Davis_Rock_all <- rbind(Davis_Rock_serc_extra,Davis_Rock_2002_all,Davis_Rock_2003_all,Davis_Rock_2004_all, Davis_Rock_2005_all,Davis_Rock_2006_all,Davis_Rock_2007_all,Davis_Rock_2008_all,Davis_Rock_2009_all,Davis_Rock_2011_all,Davis_Rock_ws_2012_all)
Davis_Rock_all$sitename <- "Davis_Rock"


export(Davis_Rock_all,"DT_10km/Davis_Rock_combined.csv")




Loggerhead_Patch_serc <- import("DT_10km/Loggerhead_Patch_serc.xls")
Loggerhead_Patch_ws <- import("DT_10km/Loggerhead_Patch_ws.xls")

## Change date to Year to merge the two dataframes

Loggerhead_Patch_serc_date <- format(as.Date(Loggerhead_Patch_serc$DATE_, format = "%Y %m %d"),"%Y")
Loggerhead_Patch_serc_frame <- data.frame(Loggerhead_Patch_serc_date)
Loggerhead_Patch_serc_year <- cbind(Loggerhead_Patch_serc_frame, Loggerhead_Patch_serc)
colnames(Loggerhead_Patch_serc_year)[1]<- "Year"
Loggerhead_Patch_serc_year$FID <- NULL
Loggerhead_Patch_serc_year$SURV <- NULL
Loggerhead_Patch_serc_year$BASIN <- NULL
Loggerhead_Patch_serc_year$SEGMENT <- NULL
Loggerhead_Patch_serc_year$ZONE_ <- NULL
Loggerhead_Patch_serc_year$TIME_ <- NULL
Loggerhead_Patch_serc_year$DATE_ <- NULL
Loggerhead_Patch_serc_year$STATION <- NULL
Loggerhead_Patch_serc_year$SITE <- NULL



Loggerhead_Patch_ws_date <- format(as.Date(Loggerhead_Patch_ws$Date_, format = "%Y %m %d"),"%Y")
Loggerhead_Patch_ws_frame <- data.frame(Loggerhead_Patch_ws_date)
Loggerhead_Patch_ws_year <- cbind(Loggerhead_Patch_ws_frame, Loggerhead_Patch_ws)
colnames(Loggerhead_Patch_ws_year)[1]<- "Year"
Loggerhead_Patch_ws_year$FID <- NULL
Loggerhead_Patch_ws_year$Station <- NULL
Loggerhead_Patch_ws_year$Date_ <- NULL
Loggerhead_Patch_ws_year$GMT <- NULL
Loggerhead_Patch_ws_year$Field11 <- NULL
Loggerhead_Patch_ws_year$Field12 <- NULL
Loggerhead_Patch_ws_year$Field13 <- NULL
Loggerhead_Patch_ws_year$Field14 <- NULL
Loggerhead_Patch_ws_year$Field15 <- NULL
Loggerhead_Patch_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Loggerhead_Patch_serc_year$Year)
unique(Loggerhead_Patch_ws_year$Year)


## Using subset add another ID column to make merging easier

Loggerhead_Patch_serc_2002 <- subset(Loggerhead_Patch_serc_year, Year == "2002")
Loggerhead_Patch_serc_2002_merge <- Loggerhead_Patch_serc_2002 %>%
  mutate(id = row_number())

Loggerhead_Patch_ws_2002 <- subset(Loggerhead_Patch_ws_year, Year == "2002")
Loggerhead_Patch_ws_2002_merge <- Loggerhead_Patch_ws_2002 %>%
  mutate(id = row_number())

Loggerhead_Patch_2002_all <- full_join(Loggerhead_Patch_serc_2002_merge, Loggerhead_Patch_ws_2002_merge, by = c("Year","id"))


Loggerhead_Patch_serc_2003 <- subset(Loggerhead_Patch_serc_year, Year == "2003")
Loggerhead_Patch_serc_2003_merge <- Loggerhead_Patch_serc_2003 %>%
  mutate(id = row_number())

Loggerhead_Patch_ws_2003 <- subset(Loggerhead_Patch_ws_year, Year == "2003")
Loggerhead_Patch_ws_2003_merge <- Loggerhead_Patch_ws_2003 %>%
  mutate(id = row_number())

Loggerhead_Patch_2003_all <- full_join(Loggerhead_Patch_serc_2003_merge, Loggerhead_Patch_ws_2003_merge, by = c("Year","id"))


Loggerhead_Patch_serc_2004 <- subset(Loggerhead_Patch_serc_year, Year == "2004")
Loggerhead_Patch_serc_2004_merge <- Loggerhead_Patch_serc_2004 %>%
  mutate(id = row_number())

Loggerhead_Patch_ws_2004 <- subset(Loggerhead_Patch_ws_year, Year == "2004")
Loggerhead_Patch_ws_2004_merge <- Loggerhead_Patch_ws_2004 %>%
  mutate(id = row_number())

Loggerhead_Patch_2004_all <- full_join(Loggerhead_Patch_serc_2004_merge, Loggerhead_Patch_ws_2004_merge, by = c("Year","id"))


Loggerhead_Patch_serc_2005 <- subset(Loggerhead_Patch_serc_year, Year == "2005")
Loggerhead_Patch_serc_2005_merge <- Loggerhead_Patch_serc_2005 %>%
  mutate(id = row_number())

Loggerhead_Patch_ws_2005 <- subset(Loggerhead_Patch_ws_year, Year == "2005")
Loggerhead_Patch_ws_2005_merge <- Loggerhead_Patch_ws_2005 %>%
  mutate(id = row_number())

Loggerhead_Patch_2005_all <- full_join(Loggerhead_Patch_serc_2005_merge, Loggerhead_Patch_ws_2005_merge, by = c("Year","id"))


Loggerhead_Patch_serc_2006 <- subset(Loggerhead_Patch_serc_year, Year == "2006")
Loggerhead_Patch_serc_2006_merge <- Loggerhead_Patch_serc_2006 %>%
  mutate(id = row_number())

Loggerhead_Patch_ws_2006 <- subset(Loggerhead_Patch_ws_year, Year == "2006")
Loggerhead_Patch_ws_2006_merge <- Loggerhead_Patch_ws_2006 %>%
  mutate(id = row_number())

Loggerhead_Patch_2006_all <- full_join(Loggerhead_Patch_serc_2006_merge, Loggerhead_Patch_ws_2006_merge, by = c("Year","id"))


Loggerhead_Patch_serc_2007 <- subset(Loggerhead_Patch_serc_year, Year == "2007")
Loggerhead_Patch_serc_2007_merge <- Loggerhead_Patch_serc_2007 %>%
  mutate(id = row_number())

Loggerhead_Patch_ws_2007 <- subset(Loggerhead_Patch_ws_year, Year == "2007")
Loggerhead_Patch_ws_2007_merge <- Loggerhead_Patch_ws_2007 %>%
  mutate(id = row_number())

Loggerhead_Patch_2007_all <- full_join(Loggerhead_Patch_serc_2007_merge, Loggerhead_Patch_ws_2007_merge, by = c("Year","id"))


Loggerhead_Patch_serc_2008 <- subset(Loggerhead_Patch_serc_year, Year == "2008")
Loggerhead_Patch_serc_2008_merge <- Loggerhead_Patch_serc_2008 %>%
  mutate(id = row_number())

Loggerhead_Patch_ws_2008 <- subset(Loggerhead_Patch_ws_year, Year == "2008")
Loggerhead_Patch_ws_2008_merge <- Loggerhead_Patch_ws_2008 %>%
  mutate(id = row_number())

Loggerhead_Patch_2008_all <- full_join(Loggerhead_Patch_serc_2008_merge, Loggerhead_Patch_ws_2008_merge, by = c("Year","id"))


Loggerhead_Patch_serc_2009 <- subset(Loggerhead_Patch_serc_year, Year == "2009")
Loggerhead_Patch_serc_2009_merge <- Loggerhead_Patch_serc_2009 %>%
  mutate(id = row_number())

Loggerhead_Patch_ws_2009 <- subset(Loggerhead_Patch_ws_year, Year == "2009")
Loggerhead_Patch_ws_2009_merge <- Loggerhead_Patch_ws_2009 %>%
  mutate(id = row_number())

Loggerhead_Patch_2009_all <- full_join(Loggerhead_Patch_serc_2009_merge, Loggerhead_Patch_ws_2009_merge, by = c("Year","id"))


Loggerhead_Patch_serc_2011 <- subset(Loggerhead_Patch_serc_year, Year == "2011")
Loggerhead_Patch_serc_2011_merge <- Loggerhead_Patch_serc_2011 %>%
  mutate(id = row_number())

Loggerhead_Patch_ws_2011 <- subset(Loggerhead_Patch_ws_year, Year == "2011")
Loggerhead_Patch_ws_2011_merge <- Loggerhead_Patch_ws_2011 %>%
  mutate(id = row_number())

Loggerhead_Patch_2011_all <- full_join(Loggerhead_Patch_serc_2011_merge, Loggerhead_Patch_ws_2011_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

Loggerhead_Patch_ws_2012_all <- subset(Loggerhead_Patch_ws_year, Year == "2012") 

## adding extra columns to merge 

Loggerhead_Patch_ws_2012_all$LATDEC <- "NA"
Loggerhead_Patch_ws_2012_all$LONDEC <- "NA"
Loggerhead_Patch_ws_2012_all$DEPTH <- "NA"
Loggerhead_Patch_ws_2012_all$NOX_S <- "NA"
Loggerhead_Patch_ws_2012_all$NOX_B <- "NA"
Loggerhead_Patch_ws_2012_all$NO3_S <- "NA"
Loggerhead_Patch_ws_2012_all$NO3_B <- "NA"
Loggerhead_Patch_ws_2012_all$NO2_S <- "NA"
Loggerhead_Patch_ws_2012_all$NO2_B <- "NA"
Loggerhead_Patch_ws_2012_all$NH4_S <- "NA"
Loggerhead_Patch_ws_2012_all$NH4_B <- "NA"
Loggerhead_Patch_ws_2012_all$TN_S <- "NA"
Loggerhead_Patch_ws_2012_all$TN_B <- "NA"
Loggerhead_Patch_ws_2012_all$DIN_S <- "NA"
Loggerhead_Patch_ws_2012_all$DIN_B <- "NA"
Loggerhead_Patch_ws_2012_all$TON_S <- "NA"
Loggerhead_Patch_ws_2012_all$TON_B <- "NA"
Loggerhead_Patch_ws_2012_all$TP_S <- "NA"
Loggerhead_Patch_ws_2012_all$TP_B <- "NA"
Loggerhead_Patch_ws_2012_all$SRP_S <- "NA"
Loggerhead_Patch_ws_2012_all$SRP_B <- "NA"
Loggerhead_Patch_ws_2012_all$APA_S <- "NA"
Loggerhead_Patch_ws_2012_all$APA_B <- "NA"
Loggerhead_Patch_ws_2012_all$CHLA_S <- "NA"
Loggerhead_Patch_ws_2012_all$CHLA_B <- "NA"
Loggerhead_Patch_ws_2012_all$TOC_S <- "NA"
Loggerhead_Patch_ws_2012_all$TOC_B <- "NA"
Loggerhead_Patch_ws_2012_all$SiO2_S <- "NA"
Loggerhead_Patch_ws_2012_all$SiO2_B <- "NA"
Loggerhead_Patch_ws_2012_all$TURB_S <- "NA"
Loggerhead_Patch_ws_2012_all$TURB_B <- "NA"
Loggerhead_Patch_ws_2012_all$SAL_S <- "NA"
Loggerhead_Patch_ws_2012_all$SAL_B <- "NA"
Loggerhead_Patch_ws_2012_all$TEMP_S <- "NA"
Loggerhead_Patch_ws_2012_all$TEMP_B <- "NA"
Loggerhead_Patch_ws_2012_all$DO_S <- "NA"
Loggerhead_Patch_ws_2012_all$DO_B <- "NA"
Loggerhead_Patch_ws_2012_all$Kd <- "NA"
Loggerhead_Patch_ws_2012_all$pH <- "NA"
Loggerhead_Patch_ws_2012_all$TN_TP <- "NA"
Loggerhead_Patch_ws_2012_all$N_P <- "NA"
Loggerhead_Patch_ws_2012_all$DIN_TP <- "NA"
Loggerhead_Patch_ws_2012_all$Si_DIN <- "NA"
Loggerhead_Patch_ws_2012_all$F_SAT_S <- "NA"
Loggerhead_Patch_ws_2012_all$F_SAT_B <- "NA"
Loggerhead_Patch_ws_2012_all$F_Io <- "NA"
Loggerhead_Patch_ws_2012_all$DSIGT <- "NA"
Loggerhead_Patch_ws_2012_all$id <- "NA"







## rest of the serc data
Loggerhead_Patch_serc_1995 <- subset(Loggerhead_Patch_serc_year, Year == "1995")
Loggerhead_Patch_serc_1996 <- subset(Loggerhead_Patch_serc_year, Year == "1996")
Loggerhead_Patch_serc_1997 <- subset(Loggerhead_Patch_serc_year, Year == "1997")
Loggerhead_Patch_serc_1998 <- subset(Loggerhead_Patch_serc_year, Year == "1998")
Loggerhead_Patch_serc_1999 <- subset(Loggerhead_Patch_serc_year, Year == "1999")
Loggerhead_Patch_serc_2000 <- subset(Loggerhead_Patch_serc_year, Year == "2000")
Loggerhead_Patch_serc_2001 <- subset(Loggerhead_Patch_serc_year, Year == "2001")
Loggerhead_Patch_serc_2010 <- subset(Loggerhead_Patch_serc_year, Year == "2010")



Loggerhead_Patch_serc_extra <- rbind(Loggerhead_Patch_serc_1995,Loggerhead_Patch_serc_1996,Loggerhead_Patch_serc_1997,Loggerhead_Patch_serc_1998,Loggerhead_Patch_serc_1999,Loggerhead_Patch_serc_2000,Loggerhead_Patch_serc_2001,Loggerhead_Patch_serc_2010)





Loggerhead_Patch_serc_extra$Longitude <- "NA"
Loggerhead_Patch_serc_extra$Latitude <- "NA"
Loggerhead_Patch_serc_extra$Depth <- "NA"
Loggerhead_Patch_serc_extra$SST <- "NA"
Loggerhead_Patch_serc_extra$SSS <- "NA"
Loggerhead_Patch_serc_extra$Chl_a <- "NA"
Loggerhead_Patch_serc_extra$Phaeophyti <- "NA"
Loggerhead_Patch_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_select to merge with all other data

Loggerhead_Patch_ws_2012_all <- setcolorder(Loggerhead_Patch_ws_2012_all, names(Loggerhead_Patch_serc_extra))

## Merge all years together 

Loggerhead_Patch_all <- rbind(Loggerhead_Patch_serc_extra,Loggerhead_Patch_2002_all,Loggerhead_Patch_2003_all,Loggerhead_Patch_2004_all, Loggerhead_Patch_2005_all,Loggerhead_Patch_2006_all,Loggerhead_Patch_2007_all,Loggerhead_Patch_2008_all,Loggerhead_Patch_2009_all,Loggerhead_Patch_2011_all,Loggerhead_Patch_ws_2012_all)
Loggerhead_Patch_all$sitename <- "Loggerhead_Patch"

export(Loggerhead_Patch_all,"DT_10km/Loggerhead_Patch_combined.csv")



Mayers_Peak_serc <- import("DT_10km/Mayers_Peak_serc.xls")
Mayers_Peak_ws <- import("DT_10km/Mayers_Peak_ws.xls")

## Change date to Year to merge the two dataframes

Mayers_Peak_serc_date <- format(as.Date(Mayers_Peak_serc$DATE_, format = "%Y %m %d"),"%Y")
Mayers_Peak_serc_frame <- data.frame(Mayers_Peak_serc_date)
Mayers_Peak_serc_year <- cbind(Mayers_Peak_serc_frame, Mayers_Peak_serc)
colnames(Mayers_Peak_serc_year)[1]<- "Year"
Mayers_Peak_serc_year$FID <- NULL
Mayers_Peak_serc_year$SURV <- NULL
Mayers_Peak_serc_year$BASIN <- NULL
Mayers_Peak_serc_year$SEGMENT <- NULL
Mayers_Peak_serc_year$ZONE_ <- NULL
Mayers_Peak_serc_year$TIME_ <- NULL
Mayers_Peak_serc_year$DATE_ <- NULL
Mayers_Peak_serc_year$STATION <- NULL
Mayers_Peak_serc_year$SITE <- NULL



Mayers_Peak_ws_date <- format(as.Date(Mayers_Peak_ws$Date_, format = "%Y %m %d"),"%Y")
Mayers_Peak_ws_frame <- data.frame(Mayers_Peak_ws_date)
Mayers_Peak_ws_year <- cbind(Mayers_Peak_ws_frame, Mayers_Peak_ws)
colnames(Mayers_Peak_ws_year)[1]<- "Year"
Mayers_Peak_ws_year$FID <- NULL
Mayers_Peak_ws_year$Station <- NULL
Mayers_Peak_ws_year$Date_ <- NULL
Mayers_Peak_ws_year$GMT <- NULL
Mayers_Peak_ws_year$Field11 <- NULL
Mayers_Peak_ws_year$Field12 <- NULL
Mayers_Peak_ws_year$Field13 <- NULL
Mayers_Peak_ws_year$Field14 <- NULL
Mayers_Peak_ws_year$Field15 <- NULL
Mayers_Peak_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Mayers_Peak_serc_year$Year)
unique(Mayers_Peak_ws_year$Year)


## Using subset add another ID column to make merging easier

Mayers_Peak_serc_2002 <- subset(Mayers_Peak_serc_year, Year == "2002")
Mayers_Peak_serc_2002_merge <- Mayers_Peak_serc_2002 %>%
  mutate(id = row_number())

Mayers_Peak_ws_2002 <- subset(Mayers_Peak_ws_year, Year == "2002")
Mayers_Peak_ws_2002_merge <- Mayers_Peak_ws_2002 %>%
  mutate(id = row_number())

Mayers_Peak_2002_all <- full_join(Mayers_Peak_serc_2002_merge, Mayers_Peak_ws_2002_merge, by = c("Year","id"))


Mayers_Peak_serc_2003 <- subset(Mayers_Peak_serc_year, Year == "2003")
Mayers_Peak_serc_2003_merge <- Mayers_Peak_serc_2003 %>%
  mutate(id = row_number())

Mayers_Peak_ws_2003 <- subset(Mayers_Peak_ws_year, Year == "2003")
Mayers_Peak_ws_2003_merge <- Mayers_Peak_ws_2003 %>%
  mutate(id = row_number())

Mayers_Peak_2003_all <- full_join(Mayers_Peak_serc_2003_merge, Mayers_Peak_ws_2003_merge, by = c("Year","id"))


Mayers_Peak_serc_2004 <- subset(Mayers_Peak_serc_year, Year == "2004")
Mayers_Peak_serc_2004_merge <- Mayers_Peak_serc_2004 %>%
  mutate(id = row_number())

Mayers_Peak_ws_2004 <- subset(Mayers_Peak_ws_year, Year == "2004")
Mayers_Peak_ws_2004_merge <- Mayers_Peak_ws_2004 %>%
  mutate(id = row_number())

Mayers_Peak_2004_all <- full_join(Mayers_Peak_serc_2004_merge, Mayers_Peak_ws_2004_merge, by = c("Year","id"))


Mayers_Peak_serc_2005 <- subset(Mayers_Peak_serc_year, Year == "2005")
Mayers_Peak_serc_2005_merge <- Mayers_Peak_serc_2005 %>%
  mutate(id = row_number())

Mayers_Peak_ws_2005 <- subset(Mayers_Peak_ws_year, Year == "2005")
Mayers_Peak_ws_2005_merge <- Mayers_Peak_ws_2005 %>%
  mutate(id = row_number())

Mayers_Peak_2005_all <- full_join(Mayers_Peak_serc_2005_merge, Mayers_Peak_ws_2005_merge, by = c("Year","id"))


Mayers_Peak_serc_2006 <- subset(Mayers_Peak_serc_year, Year == "2006")
Mayers_Peak_serc_2006_merge <- Mayers_Peak_serc_2006 %>%
  mutate(id = row_number())

Mayers_Peak_ws_2006 <- subset(Mayers_Peak_ws_year, Year == "2006")
Mayers_Peak_ws_2006_merge <- Mayers_Peak_ws_2006 %>%
  mutate(id = row_number())

Mayers_Peak_2006_all <- full_join(Mayers_Peak_serc_2006_merge, Mayers_Peak_ws_2006_merge, by = c("Year","id"))


Mayers_Peak_serc_2007 <- subset(Mayers_Peak_serc_year, Year == "2007")
Mayers_Peak_serc_2007_merge <- Mayers_Peak_serc_2007 %>%
  mutate(id = row_number())

Mayers_Peak_ws_2007 <- subset(Mayers_Peak_ws_year, Year == "2007")
Mayers_Peak_ws_2007_merge <- Mayers_Peak_ws_2007 %>%
  mutate(id = row_number())

Mayers_Peak_2007_all <- full_join(Mayers_Peak_serc_2007_merge, Mayers_Peak_ws_2007_merge, by = c("Year","id"))


Mayers_Peak_serc_2008 <- subset(Mayers_Peak_serc_year, Year == "2008")
Mayers_Peak_serc_2008_merge <- Mayers_Peak_serc_2008 %>%
  mutate(id = row_number())

Mayers_Peak_ws_2008 <- subset(Mayers_Peak_ws_year, Year == "2008")
Mayers_Peak_ws_2008_merge <- Mayers_Peak_ws_2008 %>%
  mutate(id = row_number())

Mayers_Peak_2008_all <- full_join(Mayers_Peak_serc_2008_merge, Mayers_Peak_ws_2008_merge, by = c("Year","id"))


Mayers_Peak_serc_2009 <- subset(Mayers_Peak_serc_year, Year == "2009")
Mayers_Peak_serc_2009_merge <- Mayers_Peak_serc_2009 %>%
  mutate(id = row_number())

Mayers_Peak_ws_2009 <- subset(Mayers_Peak_ws_year, Year == "2009")
Mayers_Peak_ws_2009_merge <- Mayers_Peak_ws_2009 %>%
  mutate(id = row_number())

Mayers_Peak_2009_all <- full_join(Mayers_Peak_serc_2009_merge, Mayers_Peak_ws_2009_merge, by = c("Year","id"))


Mayers_Peak_serc_2011 <- subset(Mayers_Peak_serc_year, Year == "2011")
Mayers_Peak_serc_2011_merge <- Mayers_Peak_serc_2011 %>%
  mutate(id = row_number())

Mayers_Peak_ws_2011 <- subset(Mayers_Peak_ws_year, Year == "2011")
Mayers_Peak_ws_2011_merge <- Mayers_Peak_ws_2011 %>%
  mutate(id = row_number())

Mayers_Peak_2011_all <- full_join(Mayers_Peak_serc_2011_merge, Mayers_Peak_ws_2011_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

Mayers_Peak_ws_2012_all <- subset(Mayers_Peak_ws_year, Year == "2012") 

## adding extra columns to merge 

Mayers_Peak_ws_2012_all$LATDEC <- "NA"
Mayers_Peak_ws_2012_all$LONDEC <- "NA"
Mayers_Peak_ws_2012_all$DEPTH <- "NA"
Mayers_Peak_ws_2012_all$NOX_S <- "NA"
Mayers_Peak_ws_2012_all$NOX_B <- "NA"
Mayers_Peak_ws_2012_all$NO3_S <- "NA"
Mayers_Peak_ws_2012_all$NO3_B <- "NA"
Mayers_Peak_ws_2012_all$NO2_S <- "NA"
Mayers_Peak_ws_2012_all$NO2_B <- "NA"
Mayers_Peak_ws_2012_all$NH4_S <- "NA"
Mayers_Peak_ws_2012_all$NH4_B <- "NA"
Mayers_Peak_ws_2012_all$TN_S <- "NA"
Mayers_Peak_ws_2012_all$TN_B <- "NA"
Mayers_Peak_ws_2012_all$DIN_S <- "NA"
Mayers_Peak_ws_2012_all$DIN_B <- "NA"
Mayers_Peak_ws_2012_all$TON_S <- "NA"
Mayers_Peak_ws_2012_all$TON_B <- "NA"
Mayers_Peak_ws_2012_all$TP_S <- "NA"
Mayers_Peak_ws_2012_all$TP_B <- "NA"
Mayers_Peak_ws_2012_all$SRP_S <- "NA"
Mayers_Peak_ws_2012_all$SRP_B <- "NA"
Mayers_Peak_ws_2012_all$APA_S <- "NA"
Mayers_Peak_ws_2012_all$APA_B <- "NA"
Mayers_Peak_ws_2012_all$CHLA_S <- "NA"
Mayers_Peak_ws_2012_all$CHLA_B <- "NA"
Mayers_Peak_ws_2012_all$TOC_S <- "NA"
Mayers_Peak_ws_2012_all$TOC_B <- "NA"
Mayers_Peak_ws_2012_all$SiO2_S <- "NA"
Mayers_Peak_ws_2012_all$SiO2_B <- "NA"
Mayers_Peak_ws_2012_all$TURB_S <- "NA"
Mayers_Peak_ws_2012_all$TURB_B <- "NA"
Mayers_Peak_ws_2012_all$SAL_S <- "NA"
Mayers_Peak_ws_2012_all$SAL_B <- "NA"
Mayers_Peak_ws_2012_all$TEMP_S <- "NA"
Mayers_Peak_ws_2012_all$TEMP_B <- "NA"
Mayers_Peak_ws_2012_all$DO_S <- "NA"
Mayers_Peak_ws_2012_all$DO_B <- "NA"
Mayers_Peak_ws_2012_all$Kd <- "NA"
Mayers_Peak_ws_2012_all$pH <- "NA"
Mayers_Peak_ws_2012_all$TN_TP <- "NA"
Mayers_Peak_ws_2012_all$N_P <- "NA"
Mayers_Peak_ws_2012_all$DIN_TP <- "NA"
Mayers_Peak_ws_2012_all$Si_DIN <- "NA"
Mayers_Peak_ws_2012_all$F_SAT_S <- "NA"
Mayers_Peak_ws_2012_all$F_SAT_B <- "NA"
Mayers_Peak_ws_2012_all$F_Io <- "NA"
Mayers_Peak_ws_2012_all$DSIGT <- "NA"
Mayers_Peak_ws_2012_all$id <- "NA"







## rest of the serc data
Mayers_Peak_serc_1995 <- subset(Mayers_Peak_serc_year, Year == "1995")
Mayers_Peak_serc_1996 <- subset(Mayers_Peak_serc_year, Year == "1996")
Mayers_Peak_serc_1997 <- subset(Mayers_Peak_serc_year, Year == "1997")
Mayers_Peak_serc_1998 <- subset(Mayers_Peak_serc_year, Year == "1998")
Mayers_Peak_serc_1999 <- subset(Mayers_Peak_serc_year, Year == "1999")
Mayers_Peak_serc_2000 <- subset(Mayers_Peak_serc_year, Year == "2000")
Mayers_Peak_serc_2001 <- subset(Mayers_Peak_serc_year, Year == "2001")
Mayers_Peak_serc_2010 <- subset(Mayers_Peak_serc_year, Year == "2010")



Mayers_Peak_serc_extra <- rbind(Mayers_Peak_serc_1995,Mayers_Peak_serc_1996,Mayers_Peak_serc_1997,Mayers_Peak_serc_1998,Mayers_Peak_serc_1999,Mayers_Peak_serc_2000,Mayers_Peak_serc_2001,Mayers_Peak_serc_2010)





Mayers_Peak_serc_extra$Longitude <- "NA"
Mayers_Peak_serc_extra$Latitude <- "NA"
Mayers_Peak_serc_extra$Depth <- "NA"
Mayers_Peak_serc_extra$SST <- "NA"
Mayers_Peak_serc_extra$SSS <- "NA"
Mayers_Peak_serc_extra$Chl_a <- "NA"
Mayers_Peak_serc_extra$Phaeophyti <- "NA"
Mayers_Peak_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_select to merge with all other data

Mayers_Peak_ws_2012_all <- setcolorder(Mayers_Peak_ws_2012_all, names(Mayers_Peak_serc_extra))

## Merge all years together 

Mayers_Peak_all <- rbind(Mayers_Peak_serc_extra,Mayers_Peak_2002_all,Mayers_Peak_2003_all,Mayers_Peak_2004_all, Mayers_Peak_2005_all,Mayers_Peak_2006_all,Mayers_Peak_2007_all,Mayers_Peak_2008_all,Mayers_Peak_2009_all,Mayers_Peak_2011_all,Mayers_Peak_ws_2012_all)
Mayers_Peak_all$sitename <- "Mayers_Peak"

export(Mayers_Peak_all,"DT_10km/Mayers_Peak_combined.csv")



Palmata_Patch_serc <- import("DT_10km/Palmata_Patch_serc.xls")
Palmata_Patch_ws <- import("DT_10km/Palmata_Patch_ws.xls")

## Change date to Year to merge the two dataframes

Palmata_Patch_serc_date <- format(as.Date(Palmata_Patch_serc$DATE_, format = "%Y %m %d"),"%Y")
Palmata_Patch_serc_frame <- data.frame(Palmata_Patch_serc_date)
Palmata_Patch_serc_year <- cbind(Palmata_Patch_serc_frame, Palmata_Patch_serc)
colnames(Palmata_Patch_serc_year)[1]<- "Year"
Palmata_Patch_serc_year$FID <- NULL
Palmata_Patch_serc_year$SURV <- NULL
Palmata_Patch_serc_year$BASIN <- NULL
Palmata_Patch_serc_year$SEGMENT <- NULL
Palmata_Patch_serc_year$ZONE_ <- NULL
Palmata_Patch_serc_year$TIME_ <- NULL
Palmata_Patch_serc_year$DATE_ <- NULL
Palmata_Patch_serc_year$STATION <- NULL
Palmata_Patch_serc_year$SITE <- NULL



Palmata_Patch_ws_date <- format(as.Date(Palmata_Patch_ws$Date_, format = "%Y %m %d"),"%Y")
Palmata_Patch_ws_frame <- data.frame(Palmata_Patch_ws_date)
Palmata_Patch_ws_year <- cbind(Palmata_Patch_ws_frame, Palmata_Patch_ws)
colnames(Palmata_Patch_ws_year)[1]<- "Year"
Palmata_Patch_ws_year$FID <- NULL
Palmata_Patch_ws_year$Station <- NULL
Palmata_Patch_ws_year$Date_ <- NULL
Palmata_Patch_ws_year$GMT <- NULL
Palmata_Patch_ws_year$Field11 <- NULL
Palmata_Patch_ws_year$Field12 <- NULL
Palmata_Patch_ws_year$Field13 <- NULL
Palmata_Patch_ws_year$Field14 <- NULL
Palmata_Patch_ws_year$Field15 <- NULL
Palmata_Patch_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Palmata_Patch_serc_year$Year)
unique(Palmata_Patch_ws_year$Year)


## Using subset add another ID column to make merging easier

Palmata_Patch_serc_2002 <- subset(Palmata_Patch_serc_year, Year == "2002")
Palmata_Patch_serc_2002_merge <- Palmata_Patch_serc_2002 %>%
  mutate(id = row_number())

Palmata_Patch_ws_2002 <- subset(Palmata_Patch_ws_year, Year == "2002")
Palmata_Patch_ws_2002_merge <- Palmata_Patch_ws_2002 %>%
  mutate(id = row_number())

Palmata_Patch_2002_all <- full_join(Palmata_Patch_serc_2002_merge, Palmata_Patch_ws_2002_merge, by = c("Year","id"))


Palmata_Patch_serc_2003 <- subset(Palmata_Patch_serc_year, Year == "2003")
Palmata_Patch_serc_2003_merge <- Palmata_Patch_serc_2003 %>%
  mutate(id = row_number())

Palmata_Patch_ws_2003 <- subset(Palmata_Patch_ws_year, Year == "2003")
Palmata_Patch_ws_2003_merge <- Palmata_Patch_ws_2003 %>%
  mutate(id = row_number())

Palmata_Patch_2003_all <- full_join(Palmata_Patch_serc_2003_merge, Palmata_Patch_ws_2003_merge, by = c("Year","id"))


Palmata_Patch_serc_2004 <- subset(Palmata_Patch_serc_year, Year == "2004")
Palmata_Patch_serc_2004_merge <- Palmata_Patch_serc_2004 %>%
  mutate(id = row_number())

Palmata_Patch_ws_2004 <- subset(Palmata_Patch_ws_year, Year == "2004")
Palmata_Patch_ws_2004_merge <- Palmata_Patch_ws_2004 %>%
  mutate(id = row_number())

Palmata_Patch_2004_all <- full_join(Palmata_Patch_serc_2004_merge, Palmata_Patch_ws_2004_merge, by = c("Year","id"))


Palmata_Patch_serc_2005 <- subset(Palmata_Patch_serc_year, Year == "2005")
Palmata_Patch_serc_2005_merge <- Palmata_Patch_serc_2005 %>%
  mutate(id = row_number())

Palmata_Patch_ws_2005 <- subset(Palmata_Patch_ws_year, Year == "2005")
Palmata_Patch_ws_2005_merge <- Palmata_Patch_ws_2005 %>%
  mutate(id = row_number())

Palmata_Patch_2005_all <- full_join(Palmata_Patch_serc_2005_merge, Palmata_Patch_ws_2005_merge, by = c("Year","id"))


Palmata_Patch_serc_2006 <- subset(Palmata_Patch_serc_year, Year == "2006")
Palmata_Patch_serc_2006_merge <- Palmata_Patch_serc_2006 %>%
  mutate(id = row_number())

Palmata_Patch_ws_2006 <- subset(Palmata_Patch_ws_year, Year == "2006")
Palmata_Patch_ws_2006_merge <- Palmata_Patch_ws_2006 %>%
  mutate(id = row_number())

Palmata_Patch_2006_all <- full_join(Palmata_Patch_serc_2006_merge, Palmata_Patch_ws_2006_merge, by = c("Year","id"))


Palmata_Patch_serc_2007 <- subset(Palmata_Patch_serc_year, Year == "2007")
Palmata_Patch_serc_2007_merge <- Palmata_Patch_serc_2007 %>%
  mutate(id = row_number())

Palmata_Patch_ws_2007 <- subset(Palmata_Patch_ws_year, Year == "2007")
Palmata_Patch_ws_2007_merge <- Palmata_Patch_ws_2007 %>%
  mutate(id = row_number())

Palmata_Patch_2007_all <- full_join(Palmata_Patch_serc_2007_merge, Palmata_Patch_ws_2007_merge, by = c("Year","id"))


Palmata_Patch_serc_2008 <- subset(Palmata_Patch_serc_year, Year == "2008")
Palmata_Patch_serc_2008_merge <- Palmata_Patch_serc_2008 %>%
  mutate(id = row_number())

Palmata_Patch_ws_2008 <- subset(Palmata_Patch_ws_year, Year == "2008")
Palmata_Patch_ws_2008_merge <- Palmata_Patch_ws_2008 %>%
  mutate(id = row_number())

Palmata_Patch_2008_all <- full_join(Palmata_Patch_serc_2008_merge, Palmata_Patch_ws_2008_merge, by = c("Year","id"))


Palmata_Patch_serc_2009 <- subset(Palmata_Patch_serc_year, Year == "2009")
Palmata_Patch_serc_2009_merge <- Palmata_Patch_serc_2009 %>%
  mutate(id = row_number())

Palmata_Patch_ws_2009 <- subset(Palmata_Patch_ws_year, Year == "2009")
Palmata_Patch_ws_2009_merge <- Palmata_Patch_ws_2009 %>%
  mutate(id = row_number())

Palmata_Patch_2009_all <- full_join(Palmata_Patch_serc_2009_merge, Palmata_Patch_ws_2009_merge, by = c("Year","id"))


Palmata_Patch_serc_2011 <- subset(Palmata_Patch_serc_year, Year == "2011")
Palmata_Patch_serc_2011_merge <- Palmata_Patch_serc_2011 %>%
  mutate(id = row_number())

Palmata_Patch_ws_2011 <- subset(Palmata_Patch_ws_year, Year == "2011")
Palmata_Patch_ws_2011_merge <- Palmata_Patch_ws_2011 %>%
  mutate(id = row_number())

Palmata_Patch_2011_all <- full_join(Palmata_Patch_serc_2011_merge, Palmata_Patch_ws_2011_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

Palmata_Patch_ws_2012_all <- subset(Palmata_Patch_ws_year, Year == "2012") 

## adding extra columns to merge 

Palmata_Patch_ws_2012_all$LATDEC <- "NA"
Palmata_Patch_ws_2012_all$LONDEC <- "NA"
Palmata_Patch_ws_2012_all$DEPTH <- "NA"
Palmata_Patch_ws_2012_all$NOX_S <- "NA"
Palmata_Patch_ws_2012_all$NOX_B <- "NA"
Palmata_Patch_ws_2012_all$NO3_S <- "NA"
Palmata_Patch_ws_2012_all$NO3_B <- "NA"
Palmata_Patch_ws_2012_all$NO2_S <- "NA"
Palmata_Patch_ws_2012_all$NO2_B <- "NA"
Palmata_Patch_ws_2012_all$NH4_S <- "NA"
Palmata_Patch_ws_2012_all$NH4_B <- "NA"
Palmata_Patch_ws_2012_all$TN_S <- "NA"
Palmata_Patch_ws_2012_all$TN_B <- "NA"
Palmata_Patch_ws_2012_all$DIN_S <- "NA"
Palmata_Patch_ws_2012_all$DIN_B <- "NA"
Palmata_Patch_ws_2012_all$TON_S <- "NA"
Palmata_Patch_ws_2012_all$TON_B <- "NA"
Palmata_Patch_ws_2012_all$TP_S <- "NA"
Palmata_Patch_ws_2012_all$TP_B <- "NA"
Palmata_Patch_ws_2012_all$SRP_S <- "NA"
Palmata_Patch_ws_2012_all$SRP_B <- "NA"
Palmata_Patch_ws_2012_all$APA_S <- "NA"
Palmata_Patch_ws_2012_all$APA_B <- "NA"
Palmata_Patch_ws_2012_all$CHLA_S <- "NA"
Palmata_Patch_ws_2012_all$CHLA_B <- "NA"
Palmata_Patch_ws_2012_all$TOC_S <- "NA"
Palmata_Patch_ws_2012_all$TOC_B <- "NA"
Palmata_Patch_ws_2012_all$SiO2_S <- "NA"
Palmata_Patch_ws_2012_all$SiO2_B <- "NA"
Palmata_Patch_ws_2012_all$TURB_S <- "NA"
Palmata_Patch_ws_2012_all$TURB_B <- "NA"
Palmata_Patch_ws_2012_all$SAL_S <- "NA"
Palmata_Patch_ws_2012_all$SAL_B <- "NA"
Palmata_Patch_ws_2012_all$TEMP_S <- "NA"
Palmata_Patch_ws_2012_all$TEMP_B <- "NA"
Palmata_Patch_ws_2012_all$DO_S <- "NA"
Palmata_Patch_ws_2012_all$DO_B <- "NA"
Palmata_Patch_ws_2012_all$Kd <- "NA"
Palmata_Patch_ws_2012_all$pH <- "NA"
Palmata_Patch_ws_2012_all$TN_TP <- "NA"
Palmata_Patch_ws_2012_all$N_P <- "NA"
Palmata_Patch_ws_2012_all$DIN_TP <- "NA"
Palmata_Patch_ws_2012_all$Si_DIN <- "NA"
Palmata_Patch_ws_2012_all$F_SAT_S <- "NA"
Palmata_Patch_ws_2012_all$F_SAT_B <- "NA"
Palmata_Patch_ws_2012_all$F_Io <- "NA"
Palmata_Patch_ws_2012_all$DSIGT <- "NA"
Palmata_Patch_ws_2012_all$id <- "NA"







## rest of the serc data
Palmata_Patch_serc_1995 <- subset(Palmata_Patch_serc_year, Year == "1995")
Palmata_Patch_serc_1996 <- subset(Palmata_Patch_serc_year, Year == "1996")
Palmata_Patch_serc_1997 <- subset(Palmata_Patch_serc_year, Year == "1997")
Palmata_Patch_serc_1998 <- subset(Palmata_Patch_serc_year, Year == "1998")
Palmata_Patch_serc_1999 <- subset(Palmata_Patch_serc_year, Year == "1999")
Palmata_Patch_serc_2000 <- subset(Palmata_Patch_serc_year, Year == "2000")
Palmata_Patch_serc_2001 <- subset(Palmata_Patch_serc_year, Year == "2001")
Palmata_Patch_serc_2010 <- subset(Palmata_Patch_serc_year, Year == "2010")



Palmata_Patch_serc_extra <- rbind(Palmata_Patch_serc_1995,Palmata_Patch_serc_1996,Palmata_Patch_serc_1997,Palmata_Patch_serc_1998,Palmata_Patch_serc_1999,Palmata_Patch_serc_2000,Palmata_Patch_serc_2001,Palmata_Patch_serc_2010)





Palmata_Patch_serc_extra$Longitude <- "NA"
Palmata_Patch_serc_extra$Latitude <- "NA"
Palmata_Patch_serc_extra$Depth <- "NA"
Palmata_Patch_serc_extra$SST <- "NA"
Palmata_Patch_serc_extra$SSS <- "NA"
Palmata_Patch_serc_extra$Chl_a <- "NA"
Palmata_Patch_serc_extra$Phaeophyti <- "NA"
Palmata_Patch_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_select to merge with all other data

Palmata_Patch_ws_2012_all <- setcolorder(Palmata_Patch_ws_2012_all, names(Palmata_Patch_serc_extra))

## Merge all years together 

Palmata_Patch_all <- rbind(Palmata_Patch_serc_extra,Palmata_Patch_2002_all,Palmata_Patch_2003_all,Palmata_Patch_2004_all, Palmata_Patch_2005_all,Palmata_Patch_2006_all,Palmata_Patch_2007_all,Palmata_Patch_2008_all,Palmata_Patch_2009_all,Palmata_Patch_2011_all,Palmata_Patch_ws_2012_all)
Palmata_Patch_all$sitename <- "Palmata_Patch"

export(Palmata_Patch_all,"DT_10km/Palmata_Patch_combined.csv")



Prolifera_Patch_serc <- import("DT_10km/Prolifera_Patch_serc.xls")
Prolifera_Patch_ws <- import("DT_10km/Prolifera_Patch_ws.xls")

## Change date to Year to merge the two dataframes

Prolifera_Patch_serc_date <- format(as.Date(Prolifera_Patch_serc$DATE_, format = "%Y %m %d"),"%Y")
Prolifera_Patch_serc_frame <- data.frame(Prolifera_Patch_serc_date)
Prolifera_Patch_serc_year <- cbind(Prolifera_Patch_serc_frame, Prolifera_Patch_serc)
colnames(Prolifera_Patch_serc_year)[1]<- "Year"
Prolifera_Patch_serc_year$FID <- NULL
Prolifera_Patch_serc_year$SURV <- NULL
Prolifera_Patch_serc_year$BASIN <- NULL
Prolifera_Patch_serc_year$SEGMENT <- NULL
Prolifera_Patch_serc_year$ZONE_ <- NULL
Prolifera_Patch_serc_year$TIME_ <- NULL
Prolifera_Patch_serc_year$DATE_ <- NULL
Prolifera_Patch_serc_year$STATION <- NULL
Prolifera_Patch_serc_year$SITE <- NULL



Prolifera_Patch_ws_date <- format(as.Date(Prolifera_Patch_ws$Date_, format = "%Y %m %d"),"%Y")
Prolifera_Patch_ws_frame <- data.frame(Prolifera_Patch_ws_date)
Prolifera_Patch_ws_year <- cbind(Prolifera_Patch_ws_frame, Prolifera_Patch_ws)
colnames(Prolifera_Patch_ws_year)[1]<- "Year"
Prolifera_Patch_ws_year$FID <- NULL
Prolifera_Patch_ws_year$Station <- NULL
Prolifera_Patch_ws_year$Date_ <- NULL
Prolifera_Patch_ws_year$GMT <- NULL
Prolifera_Patch_ws_year$Field11 <- NULL
Prolifera_Patch_ws_year$Field12 <- NULL
Prolifera_Patch_ws_year$Field13 <- NULL
Prolifera_Patch_ws_year$Field14 <- NULL
Prolifera_Patch_ws_year$Field15 <- NULL
Prolifera_Patch_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Prolifera_Patch_serc_year$Year)
unique(Prolifera_Patch_ws_year$Year)


## Using subset add another ID column to make merging easier

Prolifera_Patch_serc_2002 <- subset(Prolifera_Patch_serc_year, Year == "2002")
Prolifera_Patch_serc_2002_merge <- Prolifera_Patch_serc_2002 %>%
  mutate(id = row_number())

Prolifera_Patch_ws_2002 <- subset(Prolifera_Patch_ws_year, Year == "2002")
Prolifera_Patch_ws_2002_merge <- Prolifera_Patch_ws_2002 %>%
  mutate(id = row_number())

Prolifera_Patch_2002_all <- full_join(Prolifera_Patch_serc_2002_merge, Prolifera_Patch_ws_2002_merge, by = c("Year","id"))


Prolifera_Patch_serc_2003 <- subset(Prolifera_Patch_serc_year, Year == "2003")
Prolifera_Patch_serc_2003_merge <- Prolifera_Patch_serc_2003 %>%
  mutate(id = row_number())

Prolifera_Patch_ws_2003 <- subset(Prolifera_Patch_ws_year, Year == "2003")
Prolifera_Patch_ws_2003_merge <- Prolifera_Patch_ws_2003 %>%
  mutate(id = row_number())

Prolifera_Patch_2003_all <- full_join(Prolifera_Patch_serc_2003_merge, Prolifera_Patch_ws_2003_merge, by = c("Year","id"))


Prolifera_Patch_serc_2004 <- subset(Prolifera_Patch_serc_year, Year == "2004")
Prolifera_Patch_serc_2004_merge <- Prolifera_Patch_serc_2004 %>%
  mutate(id = row_number())

Prolifera_Patch_ws_2004 <- subset(Prolifera_Patch_ws_year, Year == "2004")
Prolifera_Patch_ws_2004_merge <- Prolifera_Patch_ws_2004 %>%
  mutate(id = row_number())

Prolifera_Patch_2004_all <- full_join(Prolifera_Patch_serc_2004_merge, Prolifera_Patch_ws_2004_merge, by = c("Year","id"))


Prolifera_Patch_serc_2005 <- subset(Prolifera_Patch_serc_year, Year == "2005")
Prolifera_Patch_serc_2005_merge <- Prolifera_Patch_serc_2005 %>%
  mutate(id = row_number())

Prolifera_Patch_ws_2005 <- subset(Prolifera_Patch_ws_year, Year == "2005")
Prolifera_Patch_ws_2005_merge <- Prolifera_Patch_ws_2005 %>%
  mutate(id = row_number())

Prolifera_Patch_2005_all <- full_join(Prolifera_Patch_serc_2005_merge, Prolifera_Patch_ws_2005_merge, by = c("Year","id"))


Prolifera_Patch_serc_2006 <- subset(Prolifera_Patch_serc_year, Year == "2006")
Prolifera_Patch_serc_2006_merge <- Prolifera_Patch_serc_2006 %>%
  mutate(id = row_number())

Prolifera_Patch_ws_2006 <- subset(Prolifera_Patch_ws_year, Year == "2006")
Prolifera_Patch_ws_2006_merge <- Prolifera_Patch_ws_2006 %>%
  mutate(id = row_number())

Prolifera_Patch_2006_all <- full_join(Prolifera_Patch_serc_2006_merge, Prolifera_Patch_ws_2006_merge, by = c("Year","id"))


Prolifera_Patch_serc_2007 <- subset(Prolifera_Patch_serc_year, Year == "2007")
Prolifera_Patch_serc_2007_merge <- Prolifera_Patch_serc_2007 %>%
  mutate(id = row_number())

Prolifera_Patch_ws_2007 <- subset(Prolifera_Patch_ws_year, Year == "2007")
Prolifera_Patch_ws_2007_merge <- Prolifera_Patch_ws_2007 %>%
  mutate(id = row_number())

Prolifera_Patch_2007_all <- full_join(Prolifera_Patch_serc_2007_merge, Prolifera_Patch_ws_2007_merge, by = c("Year","id"))


Prolifera_Patch_serc_2008 <- subset(Prolifera_Patch_serc_year, Year == "2008")
Prolifera_Patch_serc_2008_merge <- Prolifera_Patch_serc_2008 %>%
  mutate(id = row_number())

Prolifera_Patch_ws_2008 <- subset(Prolifera_Patch_ws_year, Year == "2008")
Prolifera_Patch_ws_2008_merge <- Prolifera_Patch_ws_2008 %>%
  mutate(id = row_number())

Prolifera_Patch_2008_all <- full_join(Prolifera_Patch_serc_2008_merge, Prolifera_Patch_ws_2008_merge, by = c("Year","id"))


Prolifera_Patch_serc_2009 <- subset(Prolifera_Patch_serc_year, Year == "2009")
Prolifera_Patch_serc_2009_merge <- Prolifera_Patch_serc_2009 %>%
  mutate(id = row_number())

Prolifera_Patch_ws_2009 <- subset(Prolifera_Patch_ws_year, Year == "2009")
Prolifera_Patch_ws_2009_merge <- Prolifera_Patch_ws_2009 %>%
  mutate(id = row_number())

Prolifera_Patch_2009_all <- full_join(Prolifera_Patch_serc_2009_merge, Prolifera_Patch_ws_2009_merge, by = c("Year","id"))


Prolifera_Patch_serc_2011 <- subset(Prolifera_Patch_serc_year, Year == "2011")
Prolifera_Patch_serc_2011_merge <- Prolifera_Patch_serc_2011 %>%
  mutate(id = row_number())

Prolifera_Patch_ws_2011 <- subset(Prolifera_Patch_ws_year, Year == "2011")
Prolifera_Patch_ws_2011_merge <- Prolifera_Patch_ws_2011 %>%
  mutate(id = row_number())

Prolifera_Patch_2011_all <- full_join(Prolifera_Patch_serc_2011_merge, Prolifera_Patch_ws_2011_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

Prolifera_Patch_ws_2012_all <- subset(Prolifera_Patch_ws_year, Year == "2012") 

## adding extra columns to merge 

Prolifera_Patch_ws_2012_all$LATDEC <- "NA"
Prolifera_Patch_ws_2012_all$LONDEC <- "NA"
Prolifera_Patch_ws_2012_all$DEPTH <- "NA"
Prolifera_Patch_ws_2012_all$NOX_S <- "NA"
Prolifera_Patch_ws_2012_all$NOX_B <- "NA"
Prolifera_Patch_ws_2012_all$NO3_S <- "NA"
Prolifera_Patch_ws_2012_all$NO3_B <- "NA"
Prolifera_Patch_ws_2012_all$NO2_S <- "NA"
Prolifera_Patch_ws_2012_all$NO2_B <- "NA"
Prolifera_Patch_ws_2012_all$NH4_S <- "NA"
Prolifera_Patch_ws_2012_all$NH4_B <- "NA"
Prolifera_Patch_ws_2012_all$TN_S <- "NA"
Prolifera_Patch_ws_2012_all$TN_B <- "NA"
Prolifera_Patch_ws_2012_all$DIN_S <- "NA"
Prolifera_Patch_ws_2012_all$DIN_B <- "NA"
Prolifera_Patch_ws_2012_all$TON_S <- "NA"
Prolifera_Patch_ws_2012_all$TON_B <- "NA"
Prolifera_Patch_ws_2012_all$TP_S <- "NA"
Prolifera_Patch_ws_2012_all$TP_B <- "NA"
Prolifera_Patch_ws_2012_all$SRP_S <- "NA"
Prolifera_Patch_ws_2012_all$SRP_B <- "NA"
Prolifera_Patch_ws_2012_all$APA_S <- "NA"
Prolifera_Patch_ws_2012_all$APA_B <- "NA"
Prolifera_Patch_ws_2012_all$CHLA_S <- "NA"
Prolifera_Patch_ws_2012_all$CHLA_B <- "NA"
Prolifera_Patch_ws_2012_all$TOC_S <- "NA"
Prolifera_Patch_ws_2012_all$TOC_B <- "NA"
Prolifera_Patch_ws_2012_all$SiO2_S <- "NA"
Prolifera_Patch_ws_2012_all$SiO2_B <- "NA"
Prolifera_Patch_ws_2012_all$TURB_S <- "NA"
Prolifera_Patch_ws_2012_all$TURB_B <- "NA"
Prolifera_Patch_ws_2012_all$SAL_S <- "NA"
Prolifera_Patch_ws_2012_all$SAL_B <- "NA"
Prolifera_Patch_ws_2012_all$TEMP_S <- "NA"
Prolifera_Patch_ws_2012_all$TEMP_B <- "NA"
Prolifera_Patch_ws_2012_all$DO_S <- "NA"
Prolifera_Patch_ws_2012_all$DO_B <- "NA"
Prolifera_Patch_ws_2012_all$Kd <- "NA"
Prolifera_Patch_ws_2012_all$pH <- "NA"
Prolifera_Patch_ws_2012_all$TN_TP <- "NA"
Prolifera_Patch_ws_2012_all$N_P <- "NA"
Prolifera_Patch_ws_2012_all$DIN_TP <- "NA"
Prolifera_Patch_ws_2012_all$Si_DIN <- "NA"
Prolifera_Patch_ws_2012_all$F_SAT_S <- "NA"
Prolifera_Patch_ws_2012_all$F_SAT_B <- "NA"
Prolifera_Patch_ws_2012_all$F_Io <- "NA"
Prolifera_Patch_ws_2012_all$DSIGT <- "NA"
Prolifera_Patch_ws_2012_all$id <- "NA"







## rest of the serc data
Prolifera_Patch_serc_1995 <- subset(Prolifera_Patch_serc_year, Year == "1995")
Prolifera_Patch_serc_1996 <- subset(Prolifera_Patch_serc_year, Year == "1996")
Prolifera_Patch_serc_1997 <- subset(Prolifera_Patch_serc_year, Year == "1997")
Prolifera_Patch_serc_1998 <- subset(Prolifera_Patch_serc_year, Year == "1998")
Prolifera_Patch_serc_1999 <- subset(Prolifera_Patch_serc_year, Year == "1999")
Prolifera_Patch_serc_2000 <- subset(Prolifera_Patch_serc_year, Year == "2000")
Prolifera_Patch_serc_2001 <- subset(Prolifera_Patch_serc_year, Year == "2001")
Prolifera_Patch_serc_2010 <- subset(Prolifera_Patch_serc_year, Year == "2010")



Prolifera_Patch_serc_extra <- rbind(Prolifera_Patch_serc_1995,Prolifera_Patch_serc_1996,Prolifera_Patch_serc_1997,Prolifera_Patch_serc_1998,Prolifera_Patch_serc_1999,Prolifera_Patch_serc_2000,Prolifera_Patch_serc_2001,Prolifera_Patch_serc_2010)





Prolifera_Patch_serc_extra$Longitude <- "NA"
Prolifera_Patch_serc_extra$Latitude <- "NA"
Prolifera_Patch_serc_extra$Depth <- "NA"
Prolifera_Patch_serc_extra$SST <- "NA"
Prolifera_Patch_serc_extra$SSS <- "NA"
Prolifera_Patch_serc_extra$Chl_a <- "NA"
Prolifera_Patch_serc_extra$Phaeophyti <- "NA"
Prolifera_Patch_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_select to merge with all other data

Prolifera_Patch_ws_2012_all <- setcolorder(Prolifera_Patch_ws_2012_all, names(Prolifera_Patch_serc_extra))

## Merge all years together 

Prolifera_Patch_all <- rbind(Prolifera_Patch_serc_extra,Prolifera_Patch_2002_all,Prolifera_Patch_2003_all,Prolifera_Patch_2004_all, Prolifera_Patch_2005_all,Prolifera_Patch_2006_all,Prolifera_Patch_2007_all,Prolifera_Patch_2008_all,Prolifera_Patch_2009_all,Prolifera_Patch_2011_all,Prolifera_Patch_ws_2012_all)
Prolifera_Patch_all$sitename <- "Prolifera_Patch"

export(Prolifera_Patch_all,"DT_10km/Prolifera_Patch_combined.csv")



Temptation_Rock_serc <- import("DT_10km/Temptation_Rock_serc.xls")
Temptation_Rock_ws <- import("DT_10km/Temptation_Rock_ws.xls")

## Change date to Year to merge the two dataframes

Temptation_Rock_serc_date <- format(as.Date(Temptation_Rock_serc$DATE_, format = "%Y %m %d"),"%Y")
Temptation_Rock_serc_frame <- data.frame(Temptation_Rock_serc_date)
Temptation_Rock_serc_year <- cbind(Temptation_Rock_serc_frame, Temptation_Rock_serc)
colnames(Temptation_Rock_serc_year)[1]<- "Year"
Temptation_Rock_serc_year$FID <- NULL
Temptation_Rock_serc_year$SURV <- NULL
Temptation_Rock_serc_year$BASIN <- NULL
Temptation_Rock_serc_year$SEGMENT <- NULL
Temptation_Rock_serc_year$ZONE_ <- NULL
Temptation_Rock_serc_year$TIME_ <- NULL
Temptation_Rock_serc_year$DATE_ <- NULL
Temptation_Rock_serc_year$STATION <- NULL
Temptation_Rock_serc_year$SITE <- NULL



Temptation_Rock_ws_date <- format(as.Date(Temptation_Rock_ws$Date_, format = "%Y %m %d"),"%Y")
Temptation_Rock_ws_frame <- data.frame(Temptation_Rock_ws_date)
Temptation_Rock_ws_year <- cbind(Temptation_Rock_ws_frame, Temptation_Rock_ws)
colnames(Temptation_Rock_ws_year)[1]<- "Year"
Temptation_Rock_ws_year$FID <- NULL
Temptation_Rock_ws_year$Station <- NULL
Temptation_Rock_ws_year$Date_ <- NULL
Temptation_Rock_ws_year$GMT <- NULL
Temptation_Rock_ws_year$Field11 <- NULL
Temptation_Rock_ws_year$Field12 <- NULL
Temptation_Rock_ws_year$Field13 <- NULL
Temptation_Rock_ws_year$Field14 <- NULL
Temptation_Rock_ws_year$Field15 <- NULL
Temptation_Rock_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Temptation_Rock_serc_year$Year)
unique(Temptation_Rock_ws_year$Year)


## Using subset add another ID column to make merging easier

Temptation_Rock_serc_2002 <- subset(Temptation_Rock_serc_year, Year == "2002")
Temptation_Rock_serc_2002_merge <- Temptation_Rock_serc_2002 %>%
  mutate(id = row_number())

Temptation_Rock_ws_2002 <- subset(Temptation_Rock_ws_year, Year == "2002")
Temptation_Rock_ws_2002_merge <- Temptation_Rock_ws_2002 %>%
  mutate(id = row_number())

Temptation_Rock_2002_all <- full_join(Temptation_Rock_serc_2002_merge, Temptation_Rock_ws_2002_merge, by = c("Year","id"))


Temptation_Rock_serc_2003 <- subset(Temptation_Rock_serc_year, Year == "2003")
Temptation_Rock_serc_2003_merge <- Temptation_Rock_serc_2003 %>%
  mutate(id = row_number())

Temptation_Rock_ws_2003 <- subset(Temptation_Rock_ws_year, Year == "2003")
Temptation_Rock_ws_2003_merge <- Temptation_Rock_ws_2003 %>%
  mutate(id = row_number())

Temptation_Rock_2003_all <- full_join(Temptation_Rock_serc_2003_merge, Temptation_Rock_ws_2003_merge, by = c("Year","id"))


Temptation_Rock_serc_2004 <- subset(Temptation_Rock_serc_year, Year == "2004")
Temptation_Rock_serc_2004_merge <- Temptation_Rock_serc_2004 %>%
  mutate(id = row_number())

Temptation_Rock_ws_2004 <- subset(Temptation_Rock_ws_year, Year == "2004")
Temptation_Rock_ws_2004_merge <- Temptation_Rock_ws_2004 %>%
  mutate(id = row_number())

Temptation_Rock_2004_all <- full_join(Temptation_Rock_serc_2004_merge, Temptation_Rock_ws_2004_merge, by = c("Year","id"))


Temptation_Rock_serc_2005 <- subset(Temptation_Rock_serc_year, Year == "2005")
Temptation_Rock_serc_2005_merge <- Temptation_Rock_serc_2005 %>%
  mutate(id = row_number())

Temptation_Rock_ws_2005 <- subset(Temptation_Rock_ws_year, Year == "2005")
Temptation_Rock_ws_2005_merge <- Temptation_Rock_ws_2005 %>%
  mutate(id = row_number())

Temptation_Rock_2005_all <- full_join(Temptation_Rock_serc_2005_merge, Temptation_Rock_ws_2005_merge, by = c("Year","id"))


Temptation_Rock_serc_2006 <- subset(Temptation_Rock_serc_year, Year == "2006")
Temptation_Rock_serc_2006_merge <- Temptation_Rock_serc_2006 %>%
  mutate(id = row_number())

Temptation_Rock_ws_2006 <- subset(Temptation_Rock_ws_year, Year == "2006")
Temptation_Rock_ws_2006_merge <- Temptation_Rock_ws_2006 %>%
  mutate(id = row_number())

Temptation_Rock_2006_all <- full_join(Temptation_Rock_serc_2006_merge, Temptation_Rock_ws_2006_merge, by = c("Year","id"))


Temptation_Rock_serc_2007 <- subset(Temptation_Rock_serc_year, Year == "2007")
Temptation_Rock_serc_2007_merge <- Temptation_Rock_serc_2007 %>%
  mutate(id = row_number())

Temptation_Rock_ws_2007 <- subset(Temptation_Rock_ws_year, Year == "2007")
Temptation_Rock_ws_2007_merge <- Temptation_Rock_ws_2007 %>%
  mutate(id = row_number())

Temptation_Rock_2007_all <- full_join(Temptation_Rock_serc_2007_merge, Temptation_Rock_ws_2007_merge, by = c("Year","id"))


Temptation_Rock_serc_2008 <- subset(Temptation_Rock_serc_year, Year == "2008")
Temptation_Rock_serc_2008_merge <- Temptation_Rock_serc_2008 %>%
  mutate(id = row_number())

Temptation_Rock_ws_2008 <- subset(Temptation_Rock_ws_year, Year == "2008")
Temptation_Rock_ws_2008_merge <- Temptation_Rock_ws_2008 %>%
  mutate(id = row_number())

Temptation_Rock_2008_all <- full_join(Temptation_Rock_serc_2008_merge, Temptation_Rock_ws_2008_merge, by = c("Year","id"))


Temptation_Rock_serc_2009 <- subset(Temptation_Rock_serc_year, Year == "2009")
Temptation_Rock_serc_2009_merge <- Temptation_Rock_serc_2009 %>%
  mutate(id = row_number())

Temptation_Rock_ws_2009 <- subset(Temptation_Rock_ws_year, Year == "2009")
Temptation_Rock_ws_2009_merge <- Temptation_Rock_ws_2009 %>%
  mutate(id = row_number())

Temptation_Rock_2009_all <- full_join(Temptation_Rock_serc_2009_merge, Temptation_Rock_ws_2009_merge, by = c("Year","id"))


Temptation_Rock_serc_2011 <- subset(Temptation_Rock_serc_year, Year == "2011")
Temptation_Rock_serc_2011_merge <- Temptation_Rock_serc_2011 %>%
  mutate(id = row_number())

Temptation_Rock_ws_2011 <- subset(Temptation_Rock_ws_year, Year == "2011")
Temptation_Rock_ws_2011_merge <- Temptation_Rock_ws_2011 %>%
  mutate(id = row_number())

Temptation_Rock_2011_all <- full_join(Temptation_Rock_serc_2011_merge, Temptation_Rock_ws_2011_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

Temptation_Rock_ws_2012_all <- subset(Temptation_Rock_ws_year, Year == "2012") 

## adding extra columns to merge 

Temptation_Rock_ws_2012_all$LATDEC <- "NA"
Temptation_Rock_ws_2012_all$LONDEC <- "NA"
Temptation_Rock_ws_2012_all$DEPTH <- "NA"
Temptation_Rock_ws_2012_all$NOX_S <- "NA"
Temptation_Rock_ws_2012_all$NOX_B <- "NA"
Temptation_Rock_ws_2012_all$NO3_S <- "NA"
Temptation_Rock_ws_2012_all$NO3_B <- "NA"
Temptation_Rock_ws_2012_all$NO2_S <- "NA"
Temptation_Rock_ws_2012_all$NO2_B <- "NA"
Temptation_Rock_ws_2012_all$NH4_S <- "NA"
Temptation_Rock_ws_2012_all$NH4_B <- "NA"
Temptation_Rock_ws_2012_all$TN_S <- "NA"
Temptation_Rock_ws_2012_all$TN_B <- "NA"
Temptation_Rock_ws_2012_all$DIN_S <- "NA"
Temptation_Rock_ws_2012_all$DIN_B <- "NA"
Temptation_Rock_ws_2012_all$TON_S <- "NA"
Temptation_Rock_ws_2012_all$TON_B <- "NA"
Temptation_Rock_ws_2012_all$TP_S <- "NA"
Temptation_Rock_ws_2012_all$TP_B <- "NA"
Temptation_Rock_ws_2012_all$SRP_S <- "NA"
Temptation_Rock_ws_2012_all$SRP_B <- "NA"
Temptation_Rock_ws_2012_all$APA_S <- "NA"
Temptation_Rock_ws_2012_all$APA_B <- "NA"
Temptation_Rock_ws_2012_all$CHLA_S <- "NA"
Temptation_Rock_ws_2012_all$CHLA_B <- "NA"
Temptation_Rock_ws_2012_all$TOC_S <- "NA"
Temptation_Rock_ws_2012_all$TOC_B <- "NA"
Temptation_Rock_ws_2012_all$SiO2_S <- "NA"
Temptation_Rock_ws_2012_all$SiO2_B <- "NA"
Temptation_Rock_ws_2012_all$TURB_S <- "NA"
Temptation_Rock_ws_2012_all$TURB_B <- "NA"
Temptation_Rock_ws_2012_all$SAL_S <- "NA"
Temptation_Rock_ws_2012_all$SAL_B <- "NA"
Temptation_Rock_ws_2012_all$TEMP_S <- "NA"
Temptation_Rock_ws_2012_all$TEMP_B <- "NA"
Temptation_Rock_ws_2012_all$DO_S <- "NA"
Temptation_Rock_ws_2012_all$DO_B <- "NA"
Temptation_Rock_ws_2012_all$Kd <- "NA"
Temptation_Rock_ws_2012_all$pH <- "NA"
Temptation_Rock_ws_2012_all$TN_TP <- "NA"
Temptation_Rock_ws_2012_all$N_P <- "NA"
Temptation_Rock_ws_2012_all$DIN_TP <- "NA"
Temptation_Rock_ws_2012_all$Si_DIN <- "NA"
Temptation_Rock_ws_2012_all$F_SAT_S <- "NA"
Temptation_Rock_ws_2012_all$F_SAT_B <- "NA"
Temptation_Rock_ws_2012_all$F_Io <- "NA"
Temptation_Rock_ws_2012_all$DSIGT <- "NA"
Temptation_Rock_ws_2012_all$id <- "NA"







## rest of the serc data
Temptation_Rock_serc_1995 <- subset(Temptation_Rock_serc_year, Year == "1995")
Temptation_Rock_serc_1996 <- subset(Temptation_Rock_serc_year, Year == "1996")
Temptation_Rock_serc_1997 <- subset(Temptation_Rock_serc_year, Year == "1997")
Temptation_Rock_serc_1998 <- subset(Temptation_Rock_serc_year, Year == "1998")
Temptation_Rock_serc_1999 <- subset(Temptation_Rock_serc_year, Year == "1999")
Temptation_Rock_serc_2000 <- subset(Temptation_Rock_serc_year, Year == "2000")
Temptation_Rock_serc_2001 <- subset(Temptation_Rock_serc_year, Year == "2001")
Temptation_Rock_serc_2010 <- subset(Temptation_Rock_serc_year, Year == "2010")



Temptation_Rock_serc_extra <- rbind(Temptation_Rock_serc_1995,Temptation_Rock_serc_1996,Temptation_Rock_serc_1997,Temptation_Rock_serc_1998,Temptation_Rock_serc_1999,Temptation_Rock_serc_2000,Temptation_Rock_serc_2001,Temptation_Rock_serc_2010)





Temptation_Rock_serc_extra$Longitude <- "NA"
Temptation_Rock_serc_extra$Latitude <- "NA"
Temptation_Rock_serc_extra$Depth <- "NA"
Temptation_Rock_serc_extra$SST <- "NA"
Temptation_Rock_serc_extra$SSS <- "NA"
Temptation_Rock_serc_extra$Chl_a <- "NA"
Temptation_Rock_serc_extra$Phaeophyti <- "NA"
Temptation_Rock_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_select to merge with all other data

Temptation_Rock_ws_2012_all <- setcolorder(Temptation_Rock_ws_2012_all, names(Temptation_Rock_serc_extra))

## Merge all years together 

Temptation_Rock_all <- rbind(Temptation_Rock_serc_extra,Temptation_Rock_2002_all,Temptation_Rock_2003_all,Temptation_Rock_2004_all, Temptation_Rock_2005_all,Temptation_Rock_2006_all,Temptation_Rock_2007_all,Temptation_Rock_2008_all,Temptation_Rock_2009_all,Temptation_Rock_2011_all,Temptation_Rock_ws_2012_all)
Temptation_Rock_all$sitename <- "Temptation_Rock"

export(Temptation_Rock_all,"DT_10km/Temptation_Rock_combined.csv")


Texas_Rock_serc <- import("DT_10km/Texas_Rock_serc.xls")
Texas_Rock_ws <- import("DT_10km/Texas_Rock_ws.xls")

## Change date to Year to merge the two dataframes

Texas_Rock_serc_date <- format(as.Date(Texas_Rock_serc$DATE_, format = "%Y %m %d"),"%Y")
Texas_Rock_serc_frame <- data.frame(Texas_Rock_serc_date)
Texas_Rock_serc_year <- cbind(Texas_Rock_serc_frame, Texas_Rock_serc)
colnames(Texas_Rock_serc_year)[1]<- "Year"
Texas_Rock_serc_year$FID <- NULL
Texas_Rock_serc_year$SURV <- NULL
Texas_Rock_serc_year$BASIN <- NULL
Texas_Rock_serc_year$SEGMENT <- NULL
Texas_Rock_serc_year$ZONE_ <- NULL
Texas_Rock_serc_year$TIME_ <- NULL
Texas_Rock_serc_year$DATE_ <- NULL
Texas_Rock_serc_year$STATION <- NULL
Texas_Rock_serc_year$SITE <- NULL



Texas_Rock_ws_date <- format(as.Date(Texas_Rock_ws$Date_, format = "%Y %m %d"),"%Y")
Texas_Rock_ws_frame <- data.frame(Texas_Rock_ws_date)
Texas_Rock_ws_year <- cbind(Texas_Rock_ws_frame, Texas_Rock_ws)
colnames(Texas_Rock_ws_year)[1]<- "Year"
Texas_Rock_ws_year$FID <- NULL
Texas_Rock_ws_year$Station <- NULL
Texas_Rock_ws_year$Date_ <- NULL
Texas_Rock_ws_year$GMT <- NULL
Texas_Rock_ws_year$Field11 <- NULL
Texas_Rock_ws_year$Field12 <- NULL
Texas_Rock_ws_year$Field13 <- NULL
Texas_Rock_ws_year$Field14 <- NULL
Texas_Rock_ws_year$Field15 <- NULL
Texas_Rock_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Texas_Rock_serc_year$Year)
unique(Texas_Rock_ws_year$Year)


## Using subset add another ID column to make merging easier

Texas_Rock_serc_2002 <- subset(Texas_Rock_serc_year, Year == "2002")
Texas_Rock_serc_2002_merge <- Texas_Rock_serc_2002 %>%
  mutate(id = row_number())

Texas_Rock_ws_2002 <- subset(Texas_Rock_ws_year, Year == "2002")
Texas_Rock_ws_2002_merge <- Texas_Rock_ws_2002 %>%
  mutate(id = row_number())

Texas_Rock_2002_all <- full_join(Texas_Rock_serc_2002_merge, Texas_Rock_ws_2002_merge, by = c("Year","id"))


Texas_Rock_serc_2003 <- subset(Texas_Rock_serc_year, Year == "2003")
Texas_Rock_serc_2003_merge <- Texas_Rock_serc_2003 %>%
  mutate(id = row_number())

Texas_Rock_ws_2003 <- subset(Texas_Rock_ws_year, Year == "2003")
Texas_Rock_ws_2003_merge <- Texas_Rock_ws_2003 %>%
  mutate(id = row_number())

Texas_Rock_2003_all <- full_join(Texas_Rock_serc_2003_merge, Texas_Rock_ws_2003_merge, by = c("Year","id"))


Texas_Rock_serc_2004 <- subset(Texas_Rock_serc_year, Year == "2004")
Texas_Rock_serc_2004_merge <- Texas_Rock_serc_2004 %>%
  mutate(id = row_number())

Texas_Rock_ws_2004 <- subset(Texas_Rock_ws_year, Year == "2004")
Texas_Rock_ws_2004_merge <- Texas_Rock_ws_2004 %>%
  mutate(id = row_number())

Texas_Rock_2004_all <- full_join(Texas_Rock_serc_2004_merge, Texas_Rock_ws_2004_merge, by = c("Year","id"))


Texas_Rock_serc_2005 <- subset(Texas_Rock_serc_year, Year == "2005")
Texas_Rock_serc_2005_merge <- Texas_Rock_serc_2005 %>%
  mutate(id = row_number())

Texas_Rock_ws_2005 <- subset(Texas_Rock_ws_year, Year == "2005")
Texas_Rock_ws_2005_merge <- Texas_Rock_ws_2005 %>%
  mutate(id = row_number())

Texas_Rock_2005_all <- full_join(Texas_Rock_serc_2005_merge, Texas_Rock_ws_2005_merge, by = c("Year","id"))


Texas_Rock_serc_2006 <- subset(Texas_Rock_serc_year, Year == "2006")
Texas_Rock_serc_2006_merge <- Texas_Rock_serc_2006 %>%
  mutate(id = row_number())

Texas_Rock_ws_2006 <- subset(Texas_Rock_ws_year, Year == "2006")
Texas_Rock_ws_2006_merge <- Texas_Rock_ws_2006 %>%
  mutate(id = row_number())

Texas_Rock_2006_all <- full_join(Texas_Rock_serc_2006_merge, Texas_Rock_ws_2006_merge, by = c("Year","id"))


Texas_Rock_serc_2007 <- subset(Texas_Rock_serc_year, Year == "2007")
Texas_Rock_serc_2007_merge <- Texas_Rock_serc_2007 %>%
  mutate(id = row_number())

Texas_Rock_ws_2007 <- subset(Texas_Rock_ws_year, Year == "2007")
Texas_Rock_ws_2007_merge <- Texas_Rock_ws_2007 %>%
  mutate(id = row_number())

Texas_Rock_2007_all <- full_join(Texas_Rock_serc_2007_merge, Texas_Rock_ws_2007_merge, by = c("Year","id"))


Texas_Rock_serc_2008 <- subset(Texas_Rock_serc_year, Year == "2008")
Texas_Rock_serc_2008_merge <- Texas_Rock_serc_2008 %>%
  mutate(id = row_number())

Texas_Rock_ws_2008 <- subset(Texas_Rock_ws_year, Year == "2008")
Texas_Rock_ws_2008_merge <- Texas_Rock_ws_2008 %>%
  mutate(id = row_number())

Texas_Rock_2008_all <- full_join(Texas_Rock_serc_2008_merge, Texas_Rock_ws_2008_merge, by = c("Year","id"))


Texas_Rock_serc_2009 <- subset(Texas_Rock_serc_year, Year == "2009")
Texas_Rock_serc_2009_merge <- Texas_Rock_serc_2009 %>%
  mutate(id = row_number())

Texas_Rock_ws_2009 <- subset(Texas_Rock_ws_year, Year == "2009")
Texas_Rock_ws_2009_merge <- Texas_Rock_ws_2009 %>%
  mutate(id = row_number())

Texas_Rock_2009_all <- full_join(Texas_Rock_serc_2009_merge, Texas_Rock_ws_2009_merge, by = c("Year","id"))


Texas_Rock_serc_2011 <- subset(Texas_Rock_serc_year, Year == "2011")
Texas_Rock_serc_2011_merge <- Texas_Rock_serc_2011 %>%
  mutate(id = row_number())

Texas_Rock_ws_2011 <- subset(Texas_Rock_ws_year, Year == "2011")
Texas_Rock_ws_2011_merge <- Texas_Rock_ws_2011 %>%
  mutate(id = row_number())

Texas_Rock_2011_all <- full_join(Texas_Rock_serc_2011_merge, Texas_Rock_ws_2011_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

Texas_Rock_ws_2012_all <- subset(Texas_Rock_ws_year, Year == "2012") 

## adding extra columns to merge 

Texas_Rock_ws_2012_all$LATDEC <- "NA"
Texas_Rock_ws_2012_all$LONDEC <- "NA"
Texas_Rock_ws_2012_all$DEPTH <- "NA"
Texas_Rock_ws_2012_all$NOX_S <- "NA"
Texas_Rock_ws_2012_all$NOX_B <- "NA"
Texas_Rock_ws_2012_all$NO3_S <- "NA"
Texas_Rock_ws_2012_all$NO3_B <- "NA"
Texas_Rock_ws_2012_all$NO2_S <- "NA"
Texas_Rock_ws_2012_all$NO2_B <- "NA"
Texas_Rock_ws_2012_all$NH4_S <- "NA"
Texas_Rock_ws_2012_all$NH4_B <- "NA"
Texas_Rock_ws_2012_all$TN_S <- "NA"
Texas_Rock_ws_2012_all$TN_B <- "NA"
Texas_Rock_ws_2012_all$DIN_S <- "NA"
Texas_Rock_ws_2012_all$DIN_B <- "NA"
Texas_Rock_ws_2012_all$TON_S <- "NA"
Texas_Rock_ws_2012_all$TON_B <- "NA"
Texas_Rock_ws_2012_all$TP_S <- "NA"
Texas_Rock_ws_2012_all$TP_B <- "NA"
Texas_Rock_ws_2012_all$SRP_S <- "NA"
Texas_Rock_ws_2012_all$SRP_B <- "NA"
Texas_Rock_ws_2012_all$APA_S <- "NA"
Texas_Rock_ws_2012_all$APA_B <- "NA"
Texas_Rock_ws_2012_all$CHLA_S <- "NA"
Texas_Rock_ws_2012_all$CHLA_B <- "NA"
Texas_Rock_ws_2012_all$TOC_S <- "NA"
Texas_Rock_ws_2012_all$TOC_B <- "NA"
Texas_Rock_ws_2012_all$SiO2_S <- "NA"
Texas_Rock_ws_2012_all$SiO2_B <- "NA"
Texas_Rock_ws_2012_all$TURB_S <- "NA"
Texas_Rock_ws_2012_all$TURB_B <- "NA"
Texas_Rock_ws_2012_all$SAL_S <- "NA"
Texas_Rock_ws_2012_all$SAL_B <- "NA"
Texas_Rock_ws_2012_all$TEMP_S <- "NA"
Texas_Rock_ws_2012_all$TEMP_B <- "NA"
Texas_Rock_ws_2012_all$DO_S <- "NA"
Texas_Rock_ws_2012_all$DO_B <- "NA"
Texas_Rock_ws_2012_all$Kd <- "NA"
Texas_Rock_ws_2012_all$pH <- "NA"
Texas_Rock_ws_2012_all$TN_TP <- "NA"
Texas_Rock_ws_2012_all$N_P <- "NA"
Texas_Rock_ws_2012_all$DIN_TP <- "NA"
Texas_Rock_ws_2012_all$Si_DIN <- "NA"
Texas_Rock_ws_2012_all$F_SAT_S <- "NA"
Texas_Rock_ws_2012_all$F_SAT_B <- "NA"
Texas_Rock_ws_2012_all$F_Io <- "NA"
Texas_Rock_ws_2012_all$DSIGT <- "NA"
Texas_Rock_ws_2012_all$id <- "NA"







## rest of the serc data
Texas_Rock_serc_1995 <- subset(Texas_Rock_serc_year, Year == "1995")
Texas_Rock_serc_1996 <- subset(Texas_Rock_serc_year, Year == "1996")
Texas_Rock_serc_1997 <- subset(Texas_Rock_serc_year, Year == "1997")
Texas_Rock_serc_1998 <- subset(Texas_Rock_serc_year, Year == "1998")
Texas_Rock_serc_1999 <- subset(Texas_Rock_serc_year, Year == "1999")
Texas_Rock_serc_2000 <- subset(Texas_Rock_serc_year, Year == "2000")
Texas_Rock_serc_2001 <- subset(Texas_Rock_serc_year, Year == "2001")
Texas_Rock_serc_2010 <- subset(Texas_Rock_serc_year, Year == "2010")



Texas_Rock_serc_extra <- rbind(Texas_Rock_serc_1995,Texas_Rock_serc_1996,Texas_Rock_serc_1997,Texas_Rock_serc_1998,Texas_Rock_serc_1999,Texas_Rock_serc_2000,Texas_Rock_serc_2001,Texas_Rock_serc_2010)





Texas_Rock_serc_extra$Longitude <- "NA"
Texas_Rock_serc_extra$Latitude <- "NA"
Texas_Rock_serc_extra$Depth <- "NA"
Texas_Rock_serc_extra$SST <- "NA"
Texas_Rock_serc_extra$SSS <- "NA"
Texas_Rock_serc_extra$Chl_a <- "NA"
Texas_Rock_serc_extra$Phaeophyti <- "NA"
Texas_Rock_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_select to merge with all other data

Texas_Rock_ws_2012_all <- setcolorder(Texas_Rock_ws_2012_all, names(Texas_Rock_serc_extra))

## Merge all years together 

Texas_Rock_all <- rbind(Texas_Rock_serc_extra,Texas_Rock_2002_all,Texas_Rock_2003_all,Texas_Rock_2004_all, Texas_Rock_2005_all,Texas_Rock_2006_all,Texas_Rock_2007_all,Texas_Rock_2008_all,Texas_Rock_2009_all,Texas_Rock_2011_all,Texas_Rock_ws_2012_all)
Texas_Rock_all$sitename <- "Texas_Rock"

export(Texas_Rock_all,"DT_10km/Texas_Rock_combined.csv")


The_Maze_serc <- import("DT_10km/The_Maze_serc.xls")
The_Maze_ws <- import("DT_10km/The_Maze_ws.xls")

## Change date to Year to merge the two dataframes

The_Maze_serc_date <- format(as.Date(The_Maze_serc$DATE_, format = "%Y %m %d"),"%Y")
The_Maze_serc_frame <- data.frame(The_Maze_serc_date)
The_Maze_serc_year <- cbind(The_Maze_serc_frame, The_Maze_serc)
colnames(The_Maze_serc_year)[1]<- "Year"
The_Maze_serc_year$FID <- NULL
The_Maze_serc_year$SURV <- NULL
The_Maze_serc_year$BASIN <- NULL
The_Maze_serc_year$SEGMENT <- NULL
The_Maze_serc_year$ZONE_ <- NULL
The_Maze_serc_year$TIME_ <- NULL
The_Maze_serc_year$DATE_ <- NULL
The_Maze_serc_year$STATION <- NULL
The_Maze_serc_year$SITE <- NULL



The_Maze_ws_date <- format(as.Date(The_Maze_ws$Date_, format = "%Y %m %d"),"%Y")
The_Maze_ws_frame <- data.frame(The_Maze_ws_date)
The_Maze_ws_year <- cbind(The_Maze_ws_frame, The_Maze_ws)
colnames(The_Maze_ws_year)[1]<- "Year"
The_Maze_ws_year$FID <- NULL
The_Maze_ws_year$Station <- NULL
The_Maze_ws_year$Date_ <- NULL
The_Maze_ws_year$GMT <- NULL
The_Maze_ws_year$Field11 <- NULL
The_Maze_ws_year$Field12 <- NULL
The_Maze_ws_year$Field13 <- NULL
The_Maze_ws_year$Field14 <- NULL
The_Maze_ws_year$Field15 <- NULL
The_Maze_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(The_Maze_serc_year$Year)
unique(The_Maze_ws_year$Year)


## Using subset add another ID column to make merging easier

The_Maze_serc_2002 <- subset(The_Maze_serc_year, Year == "2002")
The_Maze_serc_2002_merge <- The_Maze_serc_2002 %>%
  mutate(id = row_number())

The_Maze_ws_2002 <- subset(The_Maze_ws_year, Year == "2002")
The_Maze_ws_2002_merge <- The_Maze_ws_2002 %>%
  mutate(id = row_number())

The_Maze_2002_all <- full_join(The_Maze_serc_2002_merge, The_Maze_ws_2002_merge, by = c("Year","id"))


The_Maze_serc_2003 <- subset(The_Maze_serc_year, Year == "2003")
The_Maze_serc_2003_merge <- The_Maze_serc_2003 %>%
  mutate(id = row_number())

The_Maze_ws_2003 <- subset(The_Maze_ws_year, Year == "2003")
The_Maze_ws_2003_merge <- The_Maze_ws_2003 %>%
  mutate(id = row_number())

The_Maze_2003_all <- full_join(The_Maze_serc_2003_merge, The_Maze_ws_2003_merge, by = c("Year","id"))


The_Maze_serc_2004 <- subset(The_Maze_serc_year, Year == "2004")
The_Maze_serc_2004_merge <- The_Maze_serc_2004 %>%
  mutate(id = row_number())

The_Maze_ws_2004 <- subset(The_Maze_ws_year, Year == "2004")
The_Maze_ws_2004_merge <- The_Maze_ws_2004 %>%
  mutate(id = row_number())

The_Maze_2004_all <- full_join(The_Maze_serc_2004_merge, The_Maze_ws_2004_merge, by = c("Year","id"))


The_Maze_serc_2005 <- subset(The_Maze_serc_year, Year == "2005")
The_Maze_serc_2005_merge <- The_Maze_serc_2005 %>%
  mutate(id = row_number())

The_Maze_ws_2005 <- subset(The_Maze_ws_year, Year == "2005")
The_Maze_ws_2005_merge <- The_Maze_ws_2005 %>%
  mutate(id = row_number())

The_Maze_2005_all <- full_join(The_Maze_serc_2005_merge, The_Maze_ws_2005_merge, by = c("Year","id"))


The_Maze_serc_2006 <- subset(The_Maze_serc_year, Year == "2006")
The_Maze_serc_2006_merge <- The_Maze_serc_2006 %>%
  mutate(id = row_number())

The_Maze_ws_2006 <- subset(The_Maze_ws_year, Year == "2006")
The_Maze_ws_2006_merge <- The_Maze_ws_2006 %>%
  mutate(id = row_number())

The_Maze_2006_all <- full_join(The_Maze_serc_2006_merge, The_Maze_ws_2006_merge, by = c("Year","id"))


The_Maze_serc_2007 <- subset(The_Maze_serc_year, Year == "2007")
The_Maze_serc_2007_merge <- The_Maze_serc_2007 %>%
  mutate(id = row_number())

The_Maze_ws_2007 <- subset(The_Maze_ws_year, Year == "2007")
The_Maze_ws_2007_merge <- The_Maze_ws_2007 %>%
  mutate(id = row_number())

The_Maze_2007_all <- full_join(The_Maze_serc_2007_merge, The_Maze_ws_2007_merge, by = c("Year","id"))


The_Maze_serc_2008 <- subset(The_Maze_serc_year, Year == "2008")
The_Maze_serc_2008_merge <- The_Maze_serc_2008 %>%
  mutate(id = row_number())

The_Maze_ws_2008 <- subset(The_Maze_ws_year, Year == "2008")
The_Maze_ws_2008_merge <- The_Maze_ws_2008 %>%
  mutate(id = row_number())

The_Maze_2008_all <- full_join(The_Maze_serc_2008_merge, The_Maze_ws_2008_merge, by = c("Year","id"))


The_Maze_serc_2009 <- subset(The_Maze_serc_year, Year == "2009")
The_Maze_serc_2009_merge <- The_Maze_serc_2009 %>%
  mutate(id = row_number())

The_Maze_ws_2009 <- subset(The_Maze_ws_year, Year == "2009")
The_Maze_ws_2009_merge <- The_Maze_ws_2009 %>%
  mutate(id = row_number())

The_Maze_2009_all <- full_join(The_Maze_serc_2009_merge, The_Maze_ws_2009_merge, by = c("Year","id"))


The_Maze_serc_2011 <- subset(The_Maze_serc_year, Year == "2011")
The_Maze_serc_2011_merge <- The_Maze_serc_2011 %>%
  mutate(id = row_number())

The_Maze_ws_2011 <- subset(The_Maze_ws_year, Year == "2011")
The_Maze_ws_2011_merge <- The_Maze_ws_2011 %>%
  mutate(id = row_number())

The_Maze_2011_all <- full_join(The_Maze_serc_2011_merge, The_Maze_ws_2011_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

The_Maze_ws_2012_all <- subset(The_Maze_ws_year, Year == "2012") 

## adding extra columns to merge 

The_Maze_ws_2012_all$LATDEC <- "NA"
The_Maze_ws_2012_all$LONDEC <- "NA"
The_Maze_ws_2012_all$DEPTH <- "NA"
The_Maze_ws_2012_all$NOX_S <- "NA"
The_Maze_ws_2012_all$NOX_B <- "NA"
The_Maze_ws_2012_all$NO3_S <- "NA"
The_Maze_ws_2012_all$NO3_B <- "NA"
The_Maze_ws_2012_all$NO2_S <- "NA"
The_Maze_ws_2012_all$NO2_B <- "NA"
The_Maze_ws_2012_all$NH4_S <- "NA"
The_Maze_ws_2012_all$NH4_B <- "NA"
The_Maze_ws_2012_all$TN_S <- "NA"
The_Maze_ws_2012_all$TN_B <- "NA"
The_Maze_ws_2012_all$DIN_S <- "NA"
The_Maze_ws_2012_all$DIN_B <- "NA"
The_Maze_ws_2012_all$TON_S <- "NA"
The_Maze_ws_2012_all$TON_B <- "NA"
The_Maze_ws_2012_all$TP_S <- "NA"
The_Maze_ws_2012_all$TP_B <- "NA"
The_Maze_ws_2012_all$SRP_S <- "NA"
The_Maze_ws_2012_all$SRP_B <- "NA"
The_Maze_ws_2012_all$APA_S <- "NA"
The_Maze_ws_2012_all$APA_B <- "NA"
The_Maze_ws_2012_all$CHLA_S <- "NA"
The_Maze_ws_2012_all$CHLA_B <- "NA"
The_Maze_ws_2012_all$TOC_S <- "NA"
The_Maze_ws_2012_all$TOC_B <- "NA"
The_Maze_ws_2012_all$SiO2_S <- "NA"
The_Maze_ws_2012_all$SiO2_B <- "NA"
The_Maze_ws_2012_all$TURB_S <- "NA"
The_Maze_ws_2012_all$TURB_B <- "NA"
The_Maze_ws_2012_all$SAL_S <- "NA"
The_Maze_ws_2012_all$SAL_B <- "NA"
The_Maze_ws_2012_all$TEMP_S <- "NA"
The_Maze_ws_2012_all$TEMP_B <- "NA"
The_Maze_ws_2012_all$DO_S <- "NA"
The_Maze_ws_2012_all$DO_B <- "NA"
The_Maze_ws_2012_all$Kd <- "NA"
The_Maze_ws_2012_all$pH <- "NA"
The_Maze_ws_2012_all$TN_TP <- "NA"
The_Maze_ws_2012_all$N_P <- "NA"
The_Maze_ws_2012_all$DIN_TP <- "NA"
The_Maze_ws_2012_all$Si_DIN <- "NA"
The_Maze_ws_2012_all$F_SAT_S <- "NA"
The_Maze_ws_2012_all$F_SAT_B <- "NA"
The_Maze_ws_2012_all$F_Io <- "NA"
The_Maze_ws_2012_all$DSIGT <- "NA"
The_Maze_ws_2012_all$id <- "NA"







## rest of the serc data
The_Maze_serc_1995 <- subset(The_Maze_serc_year, Year == "1995")
The_Maze_serc_1996 <- subset(The_Maze_serc_year, Year == "1996")
The_Maze_serc_1997 <- subset(The_Maze_serc_year, Year == "1997")
The_Maze_serc_1998 <- subset(The_Maze_serc_year, Year == "1998")
The_Maze_serc_1999 <- subset(The_Maze_serc_year, Year == "1999")
The_Maze_serc_2000 <- subset(The_Maze_serc_year, Year == "2000")
The_Maze_serc_2001 <- subset(The_Maze_serc_year, Year == "2001")
The_Maze_serc_2010 <- subset(The_Maze_serc_year, Year == "2010")



The_Maze_serc_extra <- rbind(The_Maze_serc_1995,The_Maze_serc_1996,The_Maze_serc_1997,The_Maze_serc_1998,The_Maze_serc_1999,The_Maze_serc_2000,The_Maze_serc_2001,The_Maze_serc_2010)





The_Maze_serc_extra$Longitude <- "NA"
The_Maze_serc_extra$Latitude <- "NA"
The_Maze_serc_extra$Depth <- "NA"
The_Maze_serc_extra$SST <- "NA"
The_Maze_serc_extra$SSS <- "NA"
The_Maze_serc_extra$Chl_a <- "NA"
The_Maze_serc_extra$Phaeophyti <- "NA"
The_Maze_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_select to merge with all other data

The_Maze_ws_2012_all <- setcolorder(The_Maze_ws_2012_all, names(The_Maze_serc_extra))

## Merge all years together 

The_Maze_all <- rbind(The_Maze_serc_extra,The_Maze_2002_all,The_Maze_2003_all,The_Maze_2004_all, The_Maze_2005_all,The_Maze_2006_all,The_Maze_2007_all,The_Maze_2008_all,The_Maze_2009_all,The_Maze_2011_all,The_Maze_ws_2012_all)
The_Maze_all$sitename <- "The_Maze"

export(The_Maze_all,"DT_10km/The_Maze_combined.csv")


White_Shoal_serc <- import("DT_10km/White_Shoal_serc.xls")
White_Shoal_ws <- import("DT_10km/White_Shoal_ws.xls")

## Change date to Year to merge the two dataframes

White_Shoal_serc_date <- format(as.Date(White_Shoal_serc$DATE_, format = "%Y %m %d"),"%Y")
White_Shoal_serc_frame <- data.frame(White_Shoal_serc_date)
White_Shoal_serc_year <- cbind(White_Shoal_serc_frame, White_Shoal_serc)
colnames(White_Shoal_serc_year)[1]<- "Year"
White_Shoal_serc_year$FID <- NULL
White_Shoal_serc_year$SURV <- NULL
White_Shoal_serc_year$BASIN <- NULL
White_Shoal_serc_year$SEGMENT <- NULL
White_Shoal_serc_year$ZONE_ <- NULL
White_Shoal_serc_year$TIME_ <- NULL
White_Shoal_serc_year$DATE_ <- NULL
White_Shoal_serc_year$STATION <- NULL
White_Shoal_serc_year$SITE <- NULL



White_Shoal_ws_date <- format(as.Date(White_Shoal_ws$Date_, format = "%Y %m %d"),"%Y")
White_Shoal_ws_frame <- data.frame(White_Shoal_ws_date)
White_Shoal_ws_year <- cbind(White_Shoal_ws_frame, White_Shoal_ws)
colnames(White_Shoal_ws_year)[1]<- "Year"
White_Shoal_ws_year$FID <- NULL
White_Shoal_ws_year$Station <- NULL
White_Shoal_ws_year$Date_ <- NULL
White_Shoal_ws_year$GMT <- NULL
White_Shoal_ws_year$Field11 <- NULL
White_Shoal_ws_year$Field12 <- NULL
White_Shoal_ws_year$Field13 <- NULL
White_Shoal_ws_year$Field14 <- NULL
White_Shoal_ws_year$Field15 <- NULL
White_Shoal_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(White_Shoal_serc_year$Year)
unique(White_Shoal_ws_year$Year)


## Using subset add another ID column to make merging easier

White_Shoal_serc_2002 <- subset(White_Shoal_serc_year, Year == "2002")
White_Shoal_serc_2002_merge <- White_Shoal_serc_2002 %>%
  mutate(id = row_number())

White_Shoal_ws_2002 <- subset(White_Shoal_ws_year, Year == "2002")
White_Shoal_ws_2002_merge <- White_Shoal_ws_2002 %>%
  mutate(id = row_number())

White_Shoal_2002_all <- full_join(White_Shoal_serc_2002_merge, White_Shoal_ws_2002_merge, by = c("Year","id"))


White_Shoal_serc_2003 <- subset(White_Shoal_serc_year, Year == "2003")
White_Shoal_serc_2003_merge <- White_Shoal_serc_2003 %>%
  mutate(id = row_number())

White_Shoal_ws_2003 <- subset(White_Shoal_ws_year, Year == "2003")
White_Shoal_ws_2003_merge <- White_Shoal_ws_2003 %>%
  mutate(id = row_number())

White_Shoal_2003_all <- full_join(White_Shoal_serc_2003_merge, White_Shoal_ws_2003_merge, by = c("Year","id"))


White_Shoal_serc_2004 <- subset(White_Shoal_serc_year, Year == "2004")
White_Shoal_serc_2004_merge <- White_Shoal_serc_2004 %>%
  mutate(id = row_number())

White_Shoal_ws_2004 <- subset(White_Shoal_ws_year, Year == "2004")
White_Shoal_ws_2004_merge <- White_Shoal_ws_2004 %>%
  mutate(id = row_number())

White_Shoal_2004_all <- full_join(White_Shoal_serc_2004_merge, White_Shoal_ws_2004_merge, by = c("Year","id"))


White_Shoal_serc_2005 <- subset(White_Shoal_serc_year, Year == "2005")
White_Shoal_serc_2005_merge <- White_Shoal_serc_2005 %>%
  mutate(id = row_number())

White_Shoal_ws_2005 <- subset(White_Shoal_ws_year, Year == "2005")
White_Shoal_ws_2005_merge <- White_Shoal_ws_2005 %>%
  mutate(id = row_number())

White_Shoal_2005_all <- full_join(White_Shoal_serc_2005_merge, White_Shoal_ws_2005_merge, by = c("Year","id"))


White_Shoal_serc_2006 <- subset(White_Shoal_serc_year, Year == "2006")
White_Shoal_serc_2006_merge <- White_Shoal_serc_2006 %>%
  mutate(id = row_number())

White_Shoal_ws_2006 <- subset(White_Shoal_ws_year, Year == "2006")
White_Shoal_ws_2006_merge <- White_Shoal_ws_2006 %>%
  mutate(id = row_number())

White_Shoal_2006_all <- full_join(White_Shoal_serc_2006_merge, White_Shoal_ws_2006_merge, by = c("Year","id"))


White_Shoal_serc_2007 <- subset(White_Shoal_serc_year, Year == "2007")
White_Shoal_serc_2007_merge <- White_Shoal_serc_2007 %>%
  mutate(id = row_number())

White_Shoal_ws_2007 <- subset(White_Shoal_ws_year, Year == "2007")
White_Shoal_ws_2007_merge <- White_Shoal_ws_2007 %>%
  mutate(id = row_number())

White_Shoal_2007_all <- full_join(White_Shoal_serc_2007_merge, White_Shoal_ws_2007_merge, by = c("Year","id"))


White_Shoal_serc_2008 <- subset(White_Shoal_serc_year, Year == "2008")
White_Shoal_serc_2008_merge <- White_Shoal_serc_2008 %>%
  mutate(id = row_number())

White_Shoal_ws_2008 <- subset(White_Shoal_ws_year, Year == "2008")
White_Shoal_ws_2008_merge <- White_Shoal_ws_2008 %>%
  mutate(id = row_number())

White_Shoal_2008_all <- full_join(White_Shoal_serc_2008_merge, White_Shoal_ws_2008_merge, by = c("Year","id"))


White_Shoal_serc_2009 <- subset(White_Shoal_serc_year, Year == "2009")
White_Shoal_serc_2009_merge <- White_Shoal_serc_2009 %>%
  mutate(id = row_number())

White_Shoal_ws_2009 <- subset(White_Shoal_ws_year, Year == "2009")
White_Shoal_ws_2009_merge <- White_Shoal_ws_2009 %>%
  mutate(id = row_number())

White_Shoal_2009_all <- full_join(White_Shoal_serc_2009_merge, White_Shoal_ws_2009_merge, by = c("Year","id"))


White_Shoal_serc_2011 <- subset(White_Shoal_serc_year, Year == "2011")
White_Shoal_serc_2011_merge <- White_Shoal_serc_2011 %>%
  mutate(id = row_number())

White_Shoal_ws_2011 <- subset(White_Shoal_ws_year, Year == "2011")
White_Shoal_ws_2011_merge <- White_Shoal_ws_2011 %>%
  mutate(id = row_number())

White_Shoal_2011_all <- full_join(White_Shoal_serc_2011_merge, White_Shoal_ws_2011_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

White_Shoal_ws_2012_all <- subset(White_Shoal_ws_year, Year == "2012") 

## adding extra columns to merge 

White_Shoal_ws_2012_all$LATDEC <- "NA"
White_Shoal_ws_2012_all$LONDEC <- "NA"
White_Shoal_ws_2012_all$DEPTH <- "NA"
White_Shoal_ws_2012_all$NOX_S <- "NA"
White_Shoal_ws_2012_all$NOX_B <- "NA"
White_Shoal_ws_2012_all$NO3_S <- "NA"
White_Shoal_ws_2012_all$NO3_B <- "NA"
White_Shoal_ws_2012_all$NO2_S <- "NA"
White_Shoal_ws_2012_all$NO2_B <- "NA"
White_Shoal_ws_2012_all$NH4_S <- "NA"
White_Shoal_ws_2012_all$NH4_B <- "NA"
White_Shoal_ws_2012_all$TN_S <- "NA"
White_Shoal_ws_2012_all$TN_B <- "NA"
White_Shoal_ws_2012_all$DIN_S <- "NA"
White_Shoal_ws_2012_all$DIN_B <- "NA"
White_Shoal_ws_2012_all$TON_S <- "NA"
White_Shoal_ws_2012_all$TON_B <- "NA"
White_Shoal_ws_2012_all$TP_S <- "NA"
White_Shoal_ws_2012_all$TP_B <- "NA"
White_Shoal_ws_2012_all$SRP_S <- "NA"
White_Shoal_ws_2012_all$SRP_B <- "NA"
White_Shoal_ws_2012_all$APA_S <- "NA"
White_Shoal_ws_2012_all$APA_B <- "NA"
White_Shoal_ws_2012_all$CHLA_S <- "NA"
White_Shoal_ws_2012_all$CHLA_B <- "NA"
White_Shoal_ws_2012_all$TOC_S <- "NA"
White_Shoal_ws_2012_all$TOC_B <- "NA"
White_Shoal_ws_2012_all$SiO2_S <- "NA"
White_Shoal_ws_2012_all$SiO2_B <- "NA"
White_Shoal_ws_2012_all$TURB_S <- "NA"
White_Shoal_ws_2012_all$TURB_B <- "NA"
White_Shoal_ws_2012_all$SAL_S <- "NA"
White_Shoal_ws_2012_all$SAL_B <- "NA"
White_Shoal_ws_2012_all$TEMP_S <- "NA"
White_Shoal_ws_2012_all$TEMP_B <- "NA"
White_Shoal_ws_2012_all$DO_S <- "NA"
White_Shoal_ws_2012_all$DO_B <- "NA"
White_Shoal_ws_2012_all$Kd <- "NA"
White_Shoal_ws_2012_all$pH <- "NA"
White_Shoal_ws_2012_all$TN_TP <- "NA"
White_Shoal_ws_2012_all$N_P <- "NA"
White_Shoal_ws_2012_all$DIN_TP <- "NA"
White_Shoal_ws_2012_all$Si_DIN <- "NA"
White_Shoal_ws_2012_all$F_SAT_S <- "NA"
White_Shoal_ws_2012_all$F_SAT_B <- "NA"
White_Shoal_ws_2012_all$F_Io <- "NA"
White_Shoal_ws_2012_all$DSIGT <- "NA"
White_Shoal_ws_2012_all$id <- "NA"







## rest of the serc data
White_Shoal_serc_1995 <- subset(White_Shoal_serc_year, Year == "1995")
White_Shoal_serc_1996 <- subset(White_Shoal_serc_year, Year == "1996")
White_Shoal_serc_1997 <- subset(White_Shoal_serc_year, Year == "1997")
White_Shoal_serc_1998 <- subset(White_Shoal_serc_year, Year == "1998")
White_Shoal_serc_1999 <- subset(White_Shoal_serc_year, Year == "1999")
White_Shoal_serc_2000 <- subset(White_Shoal_serc_year, Year == "2000")
White_Shoal_serc_2001 <- subset(White_Shoal_serc_year, Year == "2001")
White_Shoal_serc_2010 <- subset(White_Shoal_serc_year, Year == "2010")



White_Shoal_serc_extra <- rbind(White_Shoal_serc_1995,White_Shoal_serc_1996,White_Shoal_serc_1997,White_Shoal_serc_1998,White_Shoal_serc_1999,White_Shoal_serc_2000,White_Shoal_serc_2001,White_Shoal_serc_2010)





White_Shoal_serc_extra$Longitude <- "NA"
White_Shoal_serc_extra$Latitude <- "NA"
White_Shoal_serc_extra$Depth <- "NA"
White_Shoal_serc_extra$SST <- "NA"
White_Shoal_serc_extra$SSS <- "NA"
White_Shoal_serc_extra$Chl_a <- "NA"
White_Shoal_serc_extra$Phaeophyti <- "NA"
White_Shoal_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_select to merge with all other data

White_Shoal_ws_2012_all <- setcolorder(White_Shoal_ws_2012_all, names(White_Shoal_serc_extra))

## Merge all years together 

White_Shoal_all <- rbind(White_Shoal_serc_extra,White_Shoal_2002_all,White_Shoal_2003_all,White_Shoal_2004_all, White_Shoal_2005_all,White_Shoal_2006_all,White_Shoal_2007_all,White_Shoal_2008_all,White_Shoal_2009_all,White_Shoal_2011_all,White_Shoal_ws_2012_all)
White_Shoal_all$sitename <- "White_Shoal"

export(White_Shoal_all,"DT_10km/White_Shoal_combined.csv")


### Combine all Dry Tortugas

Dry_Tortugas_all <- rbind(Bird_Key_Reef_all,Black_Coral_Rock_all,Davis_Rock_all,Loggerhead_Patch_all,Mayers_Peak_all,Palmata_Patch_all,Prolifera_Patch_all,Temptation_Rock_all,Texas_Rock_all,The_Maze_all,White_Shoal_all)


export(Dry_Tortugas_all,"DT_10km/DT_Nutrients_Combined.csv")






### Lower Keys 


Cliff_Green_serc <- import("LK_10km/Cliff_Green_serc.xls")
Cliff_Green_ws <- import("LK_10km/Cliff_Green_ws.xls")

## Change date to Year to merge the two dataframes

Cliff_Green_serc_date <- format(as.Date(Cliff_Green_serc$DATE_, format = "%Y %m %d"),"%Y")
Cliff_Green_serc_frame <- data.frame(Cliff_Green_serc_date)
Cliff_Green_serc_year <- cbind(Cliff_Green_serc_frame, Cliff_Green_serc)
colnames(Cliff_Green_serc_year)[1]<- "Year"
Cliff_Green_serc_year$FID <- NULL
Cliff_Green_serc_year$SURV <- NULL
Cliff_Green_serc_year$BASIN <- NULL
Cliff_Green_serc_year$SEGMENT <- NULL
Cliff_Green_serc_year$ZONE_ <- NULL
Cliff_Green_serc_year$TIME_ <- NULL
Cliff_Green_serc_year$DATE_ <- NULL
Cliff_Green_serc_year$STATION <- NULL
Cliff_Green_serc_year$SITE <- NULL



Cliff_Green_ws_date <- format(as.Date(Cliff_Green_ws$Date_, format = "%Y %m %d"),"%Y")
Cliff_Green_ws_frame <- data.frame(Cliff_Green_ws_date)
Cliff_Green_ws_year <- cbind(Cliff_Green_ws_frame, Cliff_Green_ws)
colnames(Cliff_Green_ws_year)[1]<- "Year"
Cliff_Green_ws_year$FID <- NULL
Cliff_Green_ws_year$Station <- NULL
Cliff_Green_ws_year$Date_ <- NULL
Cliff_Green_ws_year$GMT <- NULL
Cliff_Green_ws_year$Field11 <- NULL
Cliff_Green_ws_year$Field12 <- NULL
Cliff_Green_ws_year$Field13 <- NULL
Cliff_Green_ws_year$Field14 <- NULL
Cliff_Green_ws_year$Field15 <- NULL
Cliff_Green_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Cliff_Green_serc_year$Year)
unique(Cliff_Green_ws_year$Year)


## Using subset add another ID column to make merging easier
Cliff_Green_serc_1998 <- subset(Cliff_Green_serc_year, Year == "1998")
Cliff_Green_serc_1998_merge <- Cliff_Green_serc_1998 %>%
  mutate(id = row_number())

Cliff_Green_ws_1998 <- subset(Cliff_Green_ws_year, Year == "1998")
Cliff_Green_ws_1998_merge <- Cliff_Green_ws_1998 %>%
  mutate(id = row_number())

Cliff_Green_1998_all <- full_join(Cliff_Green_serc_1998_merge, Cliff_Green_ws_1998_merge, by = c("Year","id"))


Cliff_Green_serc_1999 <- subset(Cliff_Green_serc_year, Year == "1999")
Cliff_Green_serc_1999_merge <- Cliff_Green_serc_1999 %>%
  mutate(id = row_number())

Cliff_Green_ws_1999 <- subset(Cliff_Green_ws_year, Year == "1999")
Cliff_Green_ws_1999_merge <- Cliff_Green_ws_1999 %>%
  mutate(id = row_number())

Cliff_Green_1999_all <- full_join(Cliff_Green_serc_1999_merge, Cliff_Green_ws_1999_merge, by = c("Year","id"))


Cliff_Green_serc_2000 <- subset(Cliff_Green_serc_year, Year == "2000")
Cliff_Green_serc_2000_merge <- Cliff_Green_serc_2000 %>%
  mutate(id = row_number())

Cliff_Green_ws_2000 <- subset(Cliff_Green_ws_year, Year == "2000")
Cliff_Green_ws_2000_merge <- Cliff_Green_ws_2000 %>%
  mutate(id = row_number())

Cliff_Green_2000_all <- full_join(Cliff_Green_serc_2000_merge, Cliff_Green_ws_2000_merge, by = c("Year","id"))


Cliff_Green_serc_2001 <- subset(Cliff_Green_serc_year, Year == "2001")
Cliff_Green_serc_2001_merge <- Cliff_Green_serc_2001 %>%
  mutate(id = row_number())

Cliff_Green_ws_2001 <- subset(Cliff_Green_ws_year, Year == "2001")
Cliff_Green_ws_2001_merge <- Cliff_Green_ws_2001 %>%
  mutate(id = row_number())

Cliff_Green_2001_all <- full_join(Cliff_Green_serc_2001_merge, Cliff_Green_ws_2001_merge, by = c("Year","id"))


Cliff_Green_serc_2002 <- subset(Cliff_Green_serc_year, Year == "2002")
Cliff_Green_serc_2002_merge <- Cliff_Green_serc_2002 %>%
  mutate(id = row_number())

Cliff_Green_ws_2002 <- subset(Cliff_Green_ws_year, Year == "2002")
Cliff_Green_ws_2002_merge <- Cliff_Green_ws_2002 %>%
  mutate(id = row_number())

Cliff_Green_2002_all <- full_join(Cliff_Green_serc_2002_merge, Cliff_Green_ws_2002_merge, by = c("Year","id"))


Cliff_Green_serc_2003 <- subset(Cliff_Green_serc_year, Year == "2003")
Cliff_Green_serc_2003_merge <- Cliff_Green_serc_2003 %>%
  mutate(id = row_number())

Cliff_Green_ws_2003 <- subset(Cliff_Green_ws_year, Year == "2003")
Cliff_Green_ws_2003_merge <- Cliff_Green_ws_2003 %>%
  mutate(id = row_number())

Cliff_Green_2003_all <- full_join(Cliff_Green_serc_2003_merge, Cliff_Green_ws_2003_merge, by = c("Year","id"))


Cliff_Green_serc_2004 <- subset(Cliff_Green_serc_year, Year == "2004")
Cliff_Green_serc_2004_merge <- Cliff_Green_serc_2004 %>%
  mutate(id = row_number())

Cliff_Green_ws_2004 <- subset(Cliff_Green_ws_year, Year == "2004")
Cliff_Green_ws_2004_merge <- Cliff_Green_ws_2004 %>%
  mutate(id = row_number())

Cliff_Green_2004_all <- full_join(Cliff_Green_serc_2004_merge, Cliff_Green_ws_2004_merge, by = c("Year","id"))


Cliff_Green_serc_2005 <- subset(Cliff_Green_serc_year, Year == "2005")
Cliff_Green_serc_2005_merge <- Cliff_Green_serc_2005 %>%
  mutate(id = row_number())

Cliff_Green_ws_2005 <- subset(Cliff_Green_ws_year, Year == "2005")
Cliff_Green_ws_2005_merge <- Cliff_Green_ws_2005 %>%
  mutate(id = row_number())

Cliff_Green_2005_all <- full_join(Cliff_Green_serc_2005_merge, Cliff_Green_ws_2005_merge, by = c("Year","id"))


Cliff_Green_serc_2006 <- subset(Cliff_Green_serc_year, Year == "2006")
Cliff_Green_serc_2006_merge <- Cliff_Green_serc_2006 %>%
  mutate(id = row_number())

Cliff_Green_ws_2006 <- subset(Cliff_Green_ws_year, Year == "2006")
Cliff_Green_ws_2006_merge <- Cliff_Green_ws_2006 %>%
  mutate(id = row_number())

Cliff_Green_2006_all <- full_join(Cliff_Green_serc_2006_merge, Cliff_Green_ws_2006_merge, by = c("Year","id"))


Cliff_Green_serc_2007 <- subset(Cliff_Green_serc_year, Year == "2007")
Cliff_Green_serc_2007_merge <- Cliff_Green_serc_2007 %>%
  mutate(id = row_number())

Cliff_Green_ws_2007 <- subset(Cliff_Green_ws_year, Year == "2007")
Cliff_Green_ws_2007_merge <- Cliff_Green_ws_2007 %>%
  mutate(id = row_number())

Cliff_Green_2007_all <- full_join(Cliff_Green_serc_2007_merge, Cliff_Green_ws_2007_merge, by = c("Year","id"))


Cliff_Green_serc_2008 <- subset(Cliff_Green_serc_year, Year == "2008")
Cliff_Green_serc_2008_merge <- Cliff_Green_serc_2008 %>%
  mutate(id = row_number())

Cliff_Green_ws_2008 <- subset(Cliff_Green_ws_year, Year == "2008")
Cliff_Green_ws_2008_merge <- Cliff_Green_ws_2008 %>%
  mutate(id = row_number())

Cliff_Green_2008_all <- full_join(Cliff_Green_serc_2008_merge, Cliff_Green_ws_2008_merge, by = c("Year","id"))


Cliff_Green_serc_2009 <- subset(Cliff_Green_serc_year, Year == "2009")
Cliff_Green_serc_2009_merge <- Cliff_Green_serc_2009 %>%
  mutate(id = row_number())

Cliff_Green_ws_2009 <- subset(Cliff_Green_ws_year, Year == "2009")
Cliff_Green_ws_2009_merge <- Cliff_Green_ws_2009 %>%
  mutate(id = row_number())

Cliff_Green_2009_all <- full_join(Cliff_Green_serc_2009_merge, Cliff_Green_ws_2009_merge, by = c("Year","id"))


Cliff_Green_serc_2010 <- subset(Cliff_Green_serc_year, Year == "2010")
Cliff_Green_serc_2010_merge <- Cliff_Green_serc_2010 %>%
  mutate(id = row_number())

Cliff_Green_ws_2010 <- subset(Cliff_Green_ws_year, Year == "2010")
Cliff_Green_ws_2010_merge <- Cliff_Green_ws_2010 %>%
  mutate(id = row_number())

Cliff_Green_2010_all <- full_join(Cliff_Green_serc_2010_merge, Cliff_Green_ws_2010_merge, by = c("Year","id"))


Cliff_Green_serc_2011 <- subset(Cliff_Green_serc_year, Year == "2011")
Cliff_Green_serc_2011_merge <- Cliff_Green_serc_2011 %>%
  mutate(id = row_number())

Cliff_Green_ws_2011 <- subset(Cliff_Green_ws_year, Year == "2011")
Cliff_Green_ws_2011_merge <- Cliff_Green_ws_2011 %>%
  mutate(id = row_number())

Cliff_Green_2011_all <- full_join(Cliff_Green_serc_2011_merge, Cliff_Green_ws_2011_merge, by = c("Year","id"))


Cliff_Green_serc_2012 <- subset(Cliff_Green_serc_year, Year == "2012")
Cliff_Green_serc_2012_merge <- Cliff_Green_serc_2012 %>%
  mutate(id = row_number())

Cliff_Green_ws_2012 <- subset(Cliff_Green_ws_year, Year == "2012")
Cliff_Green_ws_2012_merge <- Cliff_Green_ws_2012 %>%
  mutate(id = row_number())

Cliff_Green_2012_all <- full_join(Cliff_Green_serc_2012_merge, Cliff_Green_ws_2012_merge, by = c("Year","id"))


Cliff_Green_serc_2014 <- subset(Cliff_Green_serc_year, Year == "2014")
Cliff_Green_serc_2014_merge <- Cliff_Green_serc_2014 %>%
  mutate(id = row_number())

Cliff_Green_ws_2014 <- subset(Cliff_Green_ws_year, Year == "2014")
Cliff_Green_ws_2014_merge <- Cliff_Green_ws_2014 %>%
  mutate(id = row_number())

Cliff_Green_2014_all <- full_join(Cliff_Green_serc_2014_merge, Cliff_Green_ws_2014_merge, by = c("Year","id"))


Cliff_Green_serc_2015 <- subset(Cliff_Green_serc_year, Year == "2015")
Cliff_Green_serc_2015_merge <- Cliff_Green_serc_2015 %>%
  mutate(id = row_number())

Cliff_Green_ws_2015 <- subset(Cliff_Green_ws_year, Year == "2015")
Cliff_Green_ws_2015_merge <- Cliff_Green_ws_2015 %>%
  mutate(id = row_number())

Cliff_Green_2015_all <- full_join(Cliff_Green_serc_2015_merge, Cliff_Green_ws_2015_merge, by = c("Year","id"))


Cliff_Green_serc_2016 <- subset(Cliff_Green_serc_year, Year == "2016")
Cliff_Green_serc_2016_merge <- Cliff_Green_serc_2016 %>%
  mutate(id = row_number())

Cliff_Green_ws_2016 <- subset(Cliff_Green_ws_year, Year == "2016")
Cliff_Green_ws_2016_merge <- Cliff_Green_ws_2016 %>%
  mutate(id = row_number())

Cliff_Green_2016_all <- full_join(Cliff_Green_serc_2016_merge, Cliff_Green_ws_2016_merge, by = c("Year","id"))



Cliff_Green_serc_2017 <- subset(Cliff_Green_serc_year, Year == "2017")
Cliff_Green_serc_2017_merge <- Cliff_Green_serc_2017 %>%
  mutate(id = row_number())

Cliff_Green_ws_2017 <- subset(Cliff_Green_ws_year, Year == "2017")
Cliff_Green_ws_2017_merge <- Cliff_Green_ws_2017 %>%
  mutate(id = row_number())

Cliff_Green_2017_all <- full_join(Cliff_Green_serc_2017_merge, Cliff_Green_ws_2017_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

Cliff_Green_ws_2018_all <- subset(Cliff_Green_ws_year, Year == "2018") 

## adding extra columns to merge 

Cliff_Green_ws_2018_all$LATDEC <- "NA"
Cliff_Green_ws_2018_all$LONDEC <- "NA"
Cliff_Green_ws_2018_all$DEPTH <- "NA"
Cliff_Green_ws_2018_all$NOX_S <- "NA"
Cliff_Green_ws_2018_all$NOX_B <- "NA"
Cliff_Green_ws_2018_all$NO3_S <- "NA"
Cliff_Green_ws_2018_all$NO3_B <- "NA"
Cliff_Green_ws_2018_all$NO2_S <- "NA"
Cliff_Green_ws_2018_all$NO2_B <- "NA"
Cliff_Green_ws_2018_all$NH4_S <- "NA"
Cliff_Green_ws_2018_all$NH4_B <- "NA"
Cliff_Green_ws_2018_all$TN_S <- "NA"
Cliff_Green_ws_2018_all$TN_B <- "NA"
Cliff_Green_ws_2018_all$DIN_S <- "NA"
Cliff_Green_ws_2018_all$DIN_B <- "NA"
Cliff_Green_ws_2018_all$TON_S <- "NA"
Cliff_Green_ws_2018_all$TON_B <- "NA"
Cliff_Green_ws_2018_all$TP_S <- "NA"
Cliff_Green_ws_2018_all$TP_B <- "NA"
Cliff_Green_ws_2018_all$SRP_S <- "NA"
Cliff_Green_ws_2018_all$SRP_B <- "NA"
Cliff_Green_ws_2018_all$APA_S <- "NA"
Cliff_Green_ws_2018_all$APA_B <- "NA"
Cliff_Green_ws_2018_all$CHLA_S <- "NA"
Cliff_Green_ws_2018_all$CHLA_B <- "NA"
Cliff_Green_ws_2018_all$TOC_S <- "NA"
Cliff_Green_ws_2018_all$TOC_B <- "NA"
Cliff_Green_ws_2018_all$SiO2_S <- "NA"
Cliff_Green_ws_2018_all$SiO2_B <- "NA"
Cliff_Green_ws_2018_all$TURB_S <- "NA"
Cliff_Green_ws_2018_all$TURB_B <- "NA"
Cliff_Green_ws_2018_all$SAL_S <- "NA"
Cliff_Green_ws_2018_all$SAL_B <- "NA"
Cliff_Green_ws_2018_all$TEMP_S <- "NA"
Cliff_Green_ws_2018_all$TEMP_B <- "NA"
Cliff_Green_ws_2018_all$DO_S <- "NA"
Cliff_Green_ws_2018_all$DO_B <- "NA"
Cliff_Green_ws_2018_all$Kd <- "NA"
Cliff_Green_ws_2018_all$pH <- "NA"
Cliff_Green_ws_2018_all$TN_TP <- "NA"
Cliff_Green_ws_2018_all$N_P <- "NA"
Cliff_Green_ws_2018_all$DIN_TP <- "NA"
Cliff_Green_ws_2018_all$Si_DIN <- "NA"
Cliff_Green_ws_2018_all$F_SAT_S <- "NA"
Cliff_Green_ws_2018_all$F_SAT_B <- "NA"
Cliff_Green_ws_2018_all$F_Io <- "NA"
Cliff_Green_ws_2018_all$DSIGT <- "NA"
Cliff_Green_ws_2018_all$id <- "NA"







## rest of the serc data
Cliff_Green_serc_1995 <- subset(Cliff_Green_serc_year, Year == "1995")
Cliff_Green_serc_1996 <- subset(Cliff_Green_serc_year, Year == "1996")
Cliff_Green_serc_1997 <- subset(Cliff_Green_serc_year, Year == "1997")
# Cliff_Green_serc_1998 <- subset(Cliff_Green_serc_year, Year == "1998")
# Cliff_Green_serc_1999 <- subset(Cliff_Green_serc_year, Year == "1999")
# Cliff_Green_serc_2000 <- subset(Cliff_Green_serc_year, Year == "2000")
# Cliff_Green_serc_2001 <- subset(Cliff_Green_serc_year, Year == "2001")
Cliff_Green_serc_2013 <- subset(Cliff_Green_serc_year, Year == "2013")



Cliff_Green_serc_extra <- rbind(Cliff_Green_serc_1995,Cliff_Green_serc_1996,Cliff_Green_serc_1997,Cliff_Green_serc_2013)




Cliff_Green_serc_extra$Longitude <- "NA"
Cliff_Green_serc_extra$Latitude <- "NA"
Cliff_Green_serc_extra$Depth <- "NA"
Cliff_Green_serc_extra$SST <- "NA"
Cliff_Green_serc_extra$SSS <- "NA"
Cliff_Green_serc_extra$Chl_a <- "NA"
Cliff_Green_serc_extra$Phaeophyti <- "NA"
Cliff_Green_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Cliff_Green_ws_2018_all <- setcolorder(Cliff_Green_ws_2018_all, names(Cliff_Green_serc_extra))

## Merge all years together 

Cliff_Green_all <- rbind(Cliff_Green_serc_extra,Cliff_Green_1998_all,Cliff_Green_1999_all,Cliff_Green_2000_all,Cliff_Green_2001_all,Cliff_Green_2002_all,Cliff_Green_2003_all,Cliff_Green_2004_all, Cliff_Green_2005_all,Cliff_Green_2006_all,Cliff_Green_2007_all,Cliff_Green_2008_all,Cliff_Green_2009_all,Cliff_Green_2010_all,Cliff_Green_2011_all,Cliff_Green_2012_all,Cliff_Green_2014_all,Cliff_Green_2015_all,Cliff_Green_2016_all,Cliff_Green_2017_all,Cliff_Green_ws_2018_all)
Cliff_Green_all$sitename <- "Cliff_Green"

export(Cliff_Green_all,"LK_10km/Cliff_Green_combined.csv")




Eastern_Sambo_Deep_serc <- import("LK_10km/Eastern_Sambo_Deep_serc.xls")
Eastern_Sambo_Deep_ws <- import("LK_10km/Eastern_Sambo_Deep_ws.xls")

## Change date to Year to merge the two dataframes

Eastern_Sambo_Deep_serc_date <- format(as.Date(Eastern_Sambo_Deep_serc$DATE_, format = "%Y %m %d"),"%Y")
Eastern_Sambo_Deep_serc_frame <- data.frame(Eastern_Sambo_Deep_serc_date)
Eastern_Sambo_Deep_serc_year <- cbind(Eastern_Sambo_Deep_serc_frame, Eastern_Sambo_Deep_serc)
colnames(Eastern_Sambo_Deep_serc_year)[1]<- "Year"
Eastern_Sambo_Deep_serc_year$FID <- NULL
Eastern_Sambo_Deep_serc_year$SURV <- NULL
Eastern_Sambo_Deep_serc_year$BASIN <- NULL
Eastern_Sambo_Deep_serc_year$SEGMENT <- NULL
Eastern_Sambo_Deep_serc_year$ZONE_ <- NULL
Eastern_Sambo_Deep_serc_year$TIME_ <- NULL
Eastern_Sambo_Deep_serc_year$DATE_ <- NULL
Eastern_Sambo_Deep_serc_year$STATION <- NULL
Eastern_Sambo_Deep_serc_year$SITE <- NULL



Eastern_Sambo_Deep_ws_date <- format(as.Date(Eastern_Sambo_Deep_ws$Date_, format = "%Y %m %d"),"%Y")
Eastern_Sambo_Deep_ws_frame <- data.frame(Eastern_Sambo_Deep_ws_date)
Eastern_Sambo_Deep_ws_year <- cbind(Eastern_Sambo_Deep_ws_frame, Eastern_Sambo_Deep_ws)
colnames(Eastern_Sambo_Deep_ws_year)[1]<- "Year"
Eastern_Sambo_Deep_ws_year$FID <- NULL
Eastern_Sambo_Deep_ws_year$Station <- NULL
Eastern_Sambo_Deep_ws_year$Date_ <- NULL
Eastern_Sambo_Deep_ws_year$GMT <- NULL
Eastern_Sambo_Deep_ws_year$Field11 <- NULL
Eastern_Sambo_Deep_ws_year$Field12 <- NULL
Eastern_Sambo_Deep_ws_year$Field13 <- NULL
Eastern_Sambo_Deep_ws_year$Field14 <- NULL
Eastern_Sambo_Deep_ws_year$Field15 <- NULL
Eastern_Sambo_Deep_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Eastern_Sambo_Deep_serc_year$Year)
unique(Eastern_Sambo_Deep_ws_year$Year)


## Using subset add another ID column to make merging easier
Eastern_Sambo_Deep_serc_2015 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2015")
Eastern_Sambo_Deep_serc_2015_merge <- Eastern_Sambo_Deep_serc_2015 %>%
  mutate(id = row_number())

Eastern_Sambo_Deep_ws_2015 <- subset(Eastern_Sambo_Deep_ws_year, Year == "2015")
Eastern_Sambo_Deep_ws_2015_merge <- Eastern_Sambo_Deep_ws_2015 %>%
  mutate(id = row_number())

Eastern_Sambo_Deep_2015_all <- full_join(Eastern_Sambo_Deep_serc_2015_merge, Eastern_Sambo_Deep_ws_2015_merge, by = c("Year","id"))


Eastern_Sambo_Deep_serc_2016 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2016")
Eastern_Sambo_Deep_serc_2016_merge <- Eastern_Sambo_Deep_serc_2016 %>%
  mutate(id = row_number())

Eastern_Sambo_Deep_ws_2016 <- subset(Eastern_Sambo_Deep_ws_year, Year == "2016")
Eastern_Sambo_Deep_ws_2016_merge <- Eastern_Sambo_Deep_ws_2016 %>%
  mutate(id = row_number())

Eastern_Sambo_Deep_2016_all <- full_join(Eastern_Sambo_Deep_serc_2016_merge, Eastern_Sambo_Deep_ws_2016_merge, by = c("Year","id"))



Eastern_Sambo_Deep_serc_2017 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2017")
Eastern_Sambo_Deep_serc_2017_merge <- Eastern_Sambo_Deep_serc_2017 %>%
  mutate(id = row_number())

Eastern_Sambo_Deep_ws_2017 <- subset(Eastern_Sambo_Deep_ws_year, Year == "2017")
Eastern_Sambo_Deep_ws_2017_merge <- Eastern_Sambo_Deep_ws_2017 %>%
  mutate(id = row_number())

Eastern_Sambo_Deep_2017_all <- full_join(Eastern_Sambo_Deep_serc_2017_merge, Eastern_Sambo_Deep_ws_2017_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

Eastern_Sambo_Deep_ws_2018_all <- subset(Eastern_Sambo_Deep_ws_year, Year == "2018") 

## adding extra columns to merge 

Eastern_Sambo_Deep_ws_2018_all$LATDEC <- "NA"
Eastern_Sambo_Deep_ws_2018_all$LONDEC <- "NA"
Eastern_Sambo_Deep_ws_2018_all$DEPTH <- "NA"
Eastern_Sambo_Deep_ws_2018_all$NOX_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$NOX_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$NO3_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$NO3_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$NO2_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$NO2_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$NH4_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$NH4_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$TN_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$TN_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$DIN_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$DIN_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$TON_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$TON_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$TP_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$TP_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$SRP_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$SRP_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$APA_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$APA_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$CHLA_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$CHLA_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$TOC_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$TOC_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$SiO2_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$SiO2_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$TURB_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$TURB_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$SAL_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$SAL_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$TEMP_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$TEMP_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$DO_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$DO_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$Kd <- "NA"
Eastern_Sambo_Deep_ws_2018_all$pH <- "NA"
Eastern_Sambo_Deep_ws_2018_all$TN_TP <- "NA"
Eastern_Sambo_Deep_ws_2018_all$N_P <- "NA"
Eastern_Sambo_Deep_ws_2018_all$DIN_TP <- "NA"
Eastern_Sambo_Deep_ws_2018_all$Si_DIN <- "NA"
Eastern_Sambo_Deep_ws_2018_all$F_SAT_S <- "NA"
Eastern_Sambo_Deep_ws_2018_all$F_SAT_B <- "NA"
Eastern_Sambo_Deep_ws_2018_all$F_Io <- "NA"
Eastern_Sambo_Deep_ws_2018_all$DSIGT <- "NA"
Eastern_Sambo_Deep_ws_2018_all$id <- "NA"







## rest of the serc data
Eastern_Sambo_Deep_serc_1995 <- subset(Eastern_Sambo_Deep_serc_year, Year == "1995")
Eastern_Sambo_Deep_serc_1996 <- subset(Eastern_Sambo_Deep_serc_year, Year == "1996")
Eastern_Sambo_Deep_serc_1997 <- subset(Eastern_Sambo_Deep_serc_year, Year == "1997")
Eastern_Sambo_Deep_serc_1998 <- subset(Eastern_Sambo_Deep_serc_year, Year == "1998")
Eastern_Sambo_Deep_serc_1999 <- subset(Eastern_Sambo_Deep_serc_year, Year == "1999")
Eastern_Sambo_Deep_serc_2000 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2000")
Eastern_Sambo_Deep_serc_2001 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2001")
Eastern_Sambo_Deep_serc_2002 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2001")
Eastern_Sambo_Deep_serc_2003 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2001")
Eastern_Sambo_Deep_serc_2004 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2001")
Eastern_Sambo_Deep_serc_2005 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2001")
Eastern_Sambo_Deep_serc_2006 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2001")
Eastern_Sambo_Deep_serc_2007 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2001")
Eastern_Sambo_Deep_serc_2008 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2001")
Eastern_Sambo_Deep_serc_2009 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2001")
Eastern_Sambo_Deep_serc_2010 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2001")
Eastern_Sambo_Deep_serc_2011 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2001")
Eastern_Sambo_Deep_serc_2012 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2001")
Eastern_Sambo_Deep_serc_2013 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2013")
Eastern_Sambo_Deep_serc_2014 <- subset(Eastern_Sambo_Deep_serc_year, Year == "2001")



Eastern_Sambo_Deep_serc_extra <- rbind(Eastern_Sambo_Deep_serc_1995,Eastern_Sambo_Deep_serc_1996,Eastern_Sambo_Deep_serc_1997,Eastern_Sambo_Deep_serc_1998,Eastern_Sambo_Deep_serc_1999,Eastern_Sambo_Deep_serc_2000,Eastern_Sambo_Deep_serc_2001,Eastern_Sambo_Deep_serc_2002,Eastern_Sambo_Deep_serc_2003,Eastern_Sambo_Deep_serc_2004,Eastern_Sambo_Deep_serc_2005,Eastern_Sambo_Deep_serc_2006,Eastern_Sambo_Deep_serc_2007,Eastern_Sambo_Deep_serc_2008,Eastern_Sambo_Deep_serc_2009,Eastern_Sambo_Deep_serc_2010,Eastern_Sambo_Deep_serc_2011,Eastern_Sambo_Deep_serc_2012,Eastern_Sambo_Deep_serc_2013,Eastern_Sambo_Deep_serc_2014)




Eastern_Sambo_Deep_serc_extra$Longitude <- "NA"
Eastern_Sambo_Deep_serc_extra$Latitude <- "NA"
Eastern_Sambo_Deep_serc_extra$Depth <- "NA"
Eastern_Sambo_Deep_serc_extra$SST <- "NA"
Eastern_Sambo_Deep_serc_extra$SSS <- "NA"
Eastern_Sambo_Deep_serc_extra$Chl_a <- "NA"
Eastern_Sambo_Deep_serc_extra$Phaeophyti <- "NA"
Eastern_Sambo_Deep_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Eastern_Sambo_Deep_ws_2018_all <- setcolorder(Eastern_Sambo_Deep_ws_2018_all, names(Eastern_Sambo_Deep_serc_extra))

## Merge all years together 

Eastern_Sambo_Deep_all <- rbind(Eastern_Sambo_Deep_serc_extra,Eastern_Sambo_Deep_2015_all,Eastern_Sambo_Deep_2016_all,Eastern_Sambo_Deep_2017_all,Eastern_Sambo_Deep_ws_2018_all)
Eastern_Sambo_Deep_all$sitename <- "Eastern_Sambo_Deep"

export(Eastern_Sambo_Deep_all,"LK_10km/Eastern_Sambo_Deep_combined.csv")




Eastern_Sambo_Shallow_serc <- import("LK_10km/Eastern_Sambo_Shallow_serc.xls")
Eastern_Sambo_Shallow_ws <- import("LK_10km/Eastern_Sambo_Shallow_ws.xls")

## Change date to Year to merge the two dataframes

Eastern_Sambo_Shallow_serc_date <- format(as.Date(Eastern_Sambo_Shallow_serc$DATE_, format = "%Y %m %d"),"%Y")
Eastern_Sambo_Shallow_serc_frame <- data.frame(Eastern_Sambo_Shallow_serc_date)
Eastern_Sambo_Shallow_serc_year <- cbind(Eastern_Sambo_Shallow_serc_frame, Eastern_Sambo_Shallow_serc)
colnames(Eastern_Sambo_Shallow_serc_year)[1]<- "Year"
Eastern_Sambo_Shallow_serc_year$FID <- NULL
Eastern_Sambo_Shallow_serc_year$SURV <- NULL
Eastern_Sambo_Shallow_serc_year$BASIN <- NULL
Eastern_Sambo_Shallow_serc_year$SEGMENT <- NULL
Eastern_Sambo_Shallow_serc_year$ZONE_ <- NULL
Eastern_Sambo_Shallow_serc_year$TIME_ <- NULL
Eastern_Sambo_Shallow_serc_year$DATE_ <- NULL
Eastern_Sambo_Shallow_serc_year$STATION <- NULL
Eastern_Sambo_Shallow_serc_year$SITE <- NULL



Eastern_Sambo_Shallow_ws_date <- format(as.Date(Eastern_Sambo_Shallow_ws$Date_, format = "%Y %m %d"),"%Y")
Eastern_Sambo_Shallow_ws_frame <- data.frame(Eastern_Sambo_Shallow_ws_date)
Eastern_Sambo_Shallow_ws_year <- cbind(Eastern_Sambo_Shallow_ws_frame, Eastern_Sambo_Shallow_ws)
colnames(Eastern_Sambo_Shallow_ws_year)[1]<- "Year"
Eastern_Sambo_Shallow_ws_year$FID <- NULL
Eastern_Sambo_Shallow_ws_year$Station <- NULL
Eastern_Sambo_Shallow_ws_year$Date_ <- NULL
Eastern_Sambo_Shallow_ws_year$GMT <- NULL
Eastern_Sambo_Shallow_ws_year$Field11 <- NULL
Eastern_Sambo_Shallow_ws_year$Field12 <- NULL
Eastern_Sambo_Shallow_ws_year$Field13 <- NULL
Eastern_Sambo_Shallow_ws_year$Field14 <- NULL
Eastern_Sambo_Shallow_ws_year$Field15 <- NULL
Eastern_Sambo_Shallow_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Eastern_Sambo_Shallow_serc_year$Year)
unique(Eastern_Sambo_Shallow_ws_year$Year)


## Using subset add another ID column to make merging easier
Eastern_Sambo_Shallow_serc_2015 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2015")
Eastern_Sambo_Shallow_serc_2015_merge <- Eastern_Sambo_Shallow_serc_2015 %>%
  mutate(id = row_number())

Eastern_Sambo_Shallow_ws_2015 <- subset(Eastern_Sambo_Shallow_ws_year, Year == "2015")
Eastern_Sambo_Shallow_ws_2015_merge <- Eastern_Sambo_Shallow_ws_2015 %>%
  mutate(id = row_number())

Eastern_Sambo_Shallow_2015_all <- full_join(Eastern_Sambo_Shallow_serc_2015_merge, Eastern_Sambo_Shallow_ws_2015_merge, by = c("Year","id"))


Eastern_Sambo_Shallow_serc_2016 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2016")
Eastern_Sambo_Shallow_serc_2016_merge <- Eastern_Sambo_Shallow_serc_2016 %>%
  mutate(id = row_number())

Eastern_Sambo_Shallow_ws_2016 <- subset(Eastern_Sambo_Shallow_ws_year, Year == "2016")
Eastern_Sambo_Shallow_ws_2016_merge <- Eastern_Sambo_Shallow_ws_2016 %>%
  mutate(id = row_number())

Eastern_Sambo_Shallow_2016_all <- full_join(Eastern_Sambo_Shallow_serc_2016_merge, Eastern_Sambo_Shallow_ws_2016_merge, by = c("Year","id"))



Eastern_Sambo_Shallow_serc_2017 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2017")
Eastern_Sambo_Shallow_serc_2017_merge <- Eastern_Sambo_Shallow_serc_2017 %>%
  mutate(id = row_number())

Eastern_Sambo_Shallow_ws_2017 <- subset(Eastern_Sambo_Shallow_ws_year, Year == "2017")
Eastern_Sambo_Shallow_ws_2017_merge <- Eastern_Sambo_Shallow_ws_2017 %>%
  mutate(id = row_number())

Eastern_Sambo_Shallow_2017_all <- full_join(Eastern_Sambo_Shallow_serc_2017_merge, Eastern_Sambo_Shallow_ws_2017_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

Eastern_Sambo_Shallow_ws_2018_all <- subset(Eastern_Sambo_Shallow_ws_year, Year == "2018") 

## adding extra columns to merge 

Eastern_Sambo_Shallow_ws_2018_all$LATDEC <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$LONDEC <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$DEPTH <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$NOX_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$NOX_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$NO3_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$NO3_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$NO2_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$NO2_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$NH4_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$NH4_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$TN_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$TN_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$DIN_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$DIN_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$TON_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$TON_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$TP_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$TP_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$SRP_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$SRP_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$APA_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$APA_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$CHLA_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$CHLA_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$TOC_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$TOC_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$SiO2_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$SiO2_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$TURB_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$TURB_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$SAL_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$SAL_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$TEMP_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$TEMP_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$DO_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$DO_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$Kd <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$pH <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$TN_TP <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$N_P <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$DIN_TP <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$Si_DIN <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$F_SAT_S <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$F_SAT_B <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$F_Io <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$DSIGT <- "NA"
Eastern_Sambo_Shallow_ws_2018_all$id <- "NA"







## rest of the serc data
Eastern_Sambo_Shallow_serc_1995 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "1995")
Eastern_Sambo_Shallow_serc_1996 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "1996")
Eastern_Sambo_Shallow_serc_1997 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "1997")
Eastern_Sambo_Shallow_serc_1998 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "1998")
Eastern_Sambo_Shallow_serc_1999 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "1999")
Eastern_Sambo_Shallow_serc_2000 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2000")
Eastern_Sambo_Shallow_serc_2001 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2001")
Eastern_Sambo_Shallow_serc_2002 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2001")
Eastern_Sambo_Shallow_serc_2003 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2001")
Eastern_Sambo_Shallow_serc_2004 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2001")
Eastern_Sambo_Shallow_serc_2005 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2001")
Eastern_Sambo_Shallow_serc_2006 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2001")
Eastern_Sambo_Shallow_serc_2007 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2001")
Eastern_Sambo_Shallow_serc_2008 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2001")
Eastern_Sambo_Shallow_serc_2009 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2001")
Eastern_Sambo_Shallow_serc_2010 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2001")
Eastern_Sambo_Shallow_serc_2011 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2001")
Eastern_Sambo_Shallow_serc_2012 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2001")
Eastern_Sambo_Shallow_serc_2013 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2013")
Eastern_Sambo_Shallow_serc_2014 <- subset(Eastern_Sambo_Shallow_serc_year, Year == "2001")



Eastern_Sambo_Shallow_serc_extra <- rbind(Eastern_Sambo_Shallow_serc_1995,Eastern_Sambo_Shallow_serc_1996,Eastern_Sambo_Shallow_serc_1997,Eastern_Sambo_Shallow_serc_1998,Eastern_Sambo_Shallow_serc_1999,Eastern_Sambo_Shallow_serc_2000,Eastern_Sambo_Shallow_serc_2001,Eastern_Sambo_Shallow_serc_2002,Eastern_Sambo_Shallow_serc_2003,Eastern_Sambo_Shallow_serc_2004,Eastern_Sambo_Shallow_serc_2005,Eastern_Sambo_Shallow_serc_2006,Eastern_Sambo_Shallow_serc_2007,Eastern_Sambo_Shallow_serc_2008,Eastern_Sambo_Shallow_serc_2009,Eastern_Sambo_Shallow_serc_2010,Eastern_Sambo_Shallow_serc_2011,Eastern_Sambo_Shallow_serc_2012,Eastern_Sambo_Shallow_serc_2013,Eastern_Sambo_Shallow_serc_2014)




Eastern_Sambo_Shallow_serc_extra$Longitude <- "NA"
Eastern_Sambo_Shallow_serc_extra$Latitude <- "NA"
Eastern_Sambo_Shallow_serc_extra$Depth <- "NA"
Eastern_Sambo_Shallow_serc_extra$SST <- "NA"
Eastern_Sambo_Shallow_serc_extra$SSS <- "NA"
Eastern_Sambo_Shallow_serc_extra$Chl_a <- "NA"
Eastern_Sambo_Shallow_serc_extra$Phaeophyti <- "NA"
Eastern_Sambo_Shallow_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Eastern_Sambo_Shallow_ws_2018_all <- setcolorder(Eastern_Sambo_Shallow_ws_2018_all, names(Eastern_Sambo_Shallow_serc_extra))

## Merge all years together 

Eastern_Sambo_Shallow_all <- rbind(Eastern_Sambo_Shallow_serc_extra,Eastern_Sambo_Shallow_2015_all,Eastern_Sambo_Shallow_2016_all,Eastern_Sambo_Shallow_2017_all,Eastern_Sambo_Shallow_ws_2018_all)
Eastern_Sambo_Shallow_all$sitename <- "Eastern_Sambo_Shallow"

export(Eastern_Sambo_Shallow_all,"LK_10km/Eastern_Sambo_Shallow_combined.csv")


#### No data for ws for Jaap Reef........ so load serc data, add columns from ws, and export 
# 
Jaap_Reef_serc <- import("LK_10km/Jaap_Reef_serc.xls")
# Jaap_Reef_ws <- import("LK_10km/Jaap_Reef_ws.xls")
# 
# ## Change date to Year to merge the two dataframes
# 
Jaap_Reef_serc_date <- format(as.Date(Jaap_Reef_serc$DATE_, format = "%Y %m %d"),"%Y")
Jaap_Reef_serc_frame <- data.frame(Jaap_Reef_serc_date)
Jaap_Reef_serc_year <- cbind(Jaap_Reef_serc_frame, Jaap_Reef_serc)
colnames(Jaap_Reef_serc_year)[1]<- "Year"
Jaap_Reef_serc_year$FID <- NULL
Jaap_Reef_serc_year$SURV <- NULL
Jaap_Reef_serc_year$BASIN <- NULL
Jaap_Reef_serc_year$SEGMENT <- NULL
Jaap_Reef_serc_year$ZONE_ <- NULL
Jaap_Reef_serc_year$TIME_ <- NULL
Jaap_Reef_serc_year$DATE_ <- NULL
Jaap_Reef_serc_year$STATION <- NULL
Jaap_Reef_serc_year$SITE <- NULL
# 
# 
# 
# Jaap_Reef_ws_date <- format(as.Date(Jaap_Reef_ws$Date_, format = "%Y %m %d"),"%Y")
# Jaap_Reef_ws_frame <- data.frame(Jaap_Reef_ws_date)
# Jaap_Reef_ws_year <- cbind(Jaap_Reef_ws_frame, Jaap_Reef_ws)
# colnames(Jaap_Reef_ws_year)[1]<- "Year"
# Jaap_Reef_ws_year$FID <- NULL
# Jaap_Reef_ws_year$Station <- NULL
# Jaap_Reef_ws_year$Date_ <- NULL
# Jaap_Reef_ws_year$GMT <- NULL
# Jaap_Reef_ws_year$Field11 <- NULL
# Jaap_Reef_ws_year$Field12 <- NULL
# Jaap_Reef_ws_year$Field13 <- NULL
# Jaap_Reef_ws_year$Field14 <- NULL
# Jaap_Reef_ws_year$Field15 <- NULL
# Jaap_Reef_ws_year$Field16 <- NULL
# 
# 
# #unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
# #   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
# unique(Jaap_Reef_serc_year$Year)
# unique(Jaap_Reef_ws_year$Year)
# 
# 
# ## Using subset add another ID column to make merging easier
# Jaap_Reef_serc_2015 <- subset(Jaap_Reef_serc_year, Year == "2015")
# Jaap_Reef_serc_2015_merge <- Jaap_Reef_serc_2015 %>%
#   mutate(id = row_number())
# 
# Jaap_Reef_ws_2015 <- subset(Jaap_Reef_ws_year, Year == "2015")
# Jaap_Reef_ws_2015_merge <- Jaap_Reef_ws_2015 %>%
#   mutate(id = row_number())
# 
# Jaap_Reef_2015_all <- full_join(Jaap_Reef_serc_2015_merge, Jaap_Reef_ws_2015_merge, by = c("Year","id"))
# 
# 
# Jaap_Reef_serc_2016 <- subset(Jaap_Reef_serc_year, Year == "2016")
# Jaap_Reef_serc_2016_merge <- Jaap_Reef_serc_2016 %>%
#   mutate(id = row_number())
# 
# Jaap_Reef_ws_2016 <- subset(Jaap_Reef_ws_year, Year == "2016")
# Jaap_Reef_ws_2016_merge <- Jaap_Reef_ws_2016 %>%
#   mutate(id = row_number())
# 
# Jaap_Reef_2016_all <- full_join(Jaap_Reef_serc_2016_merge, Jaap_Reef_ws_2016_merge, by = c("Year","id"))
# 
# 
# 
# Jaap_Reef_serc_2017 <- subset(Jaap_Reef_serc_year, Year == "2017")
# Jaap_Reef_serc_2017_merge <- Jaap_Reef_serc_2017 %>%
#   mutate(id = row_number())
# 
# Jaap_Reef_ws_2017 <- subset(Jaap_Reef_ws_year, Year == "2017")
# Jaap_Reef_ws_2017_merge <- Jaap_Reef_ws_2017 %>%
#   mutate(id = row_number())
# 
# Jaap_Reef_2017_all <- full_join(Jaap_Reef_serc_2017_merge, Jaap_Reef_ws_2017_merge, by = c("Year","id"))
# 
# 
# ### ADD on years for ws (need to add missing columns to merge)
# 
# Jaap_Reef_ws_2018_all <- subset(Jaap_Reef_ws_year, Year == "2018") 
# 
# ## adding extra columns to merge 
# 
# Jaap_Reef_ws_2018_all$LATDEC <- "NA"
# Jaap_Reef_ws_2018_all$LONDEC <- "NA"
# Jaap_Reef_ws_2018_all$DEPTH <- "NA"
# Jaap_Reef_ws_2018_all$NOX_S <- "NA"
# Jaap_Reef_ws_2018_all$NOX_B <- "NA"
# Jaap_Reef_ws_2018_all$NO3_S <- "NA"
# Jaap_Reef_ws_2018_all$NO3_B <- "NA"
# Jaap_Reef_ws_2018_all$NO2_S <- "NA"
# Jaap_Reef_ws_2018_all$NO2_B <- "NA"
# Jaap_Reef_ws_2018_all$NH4_S <- "NA"
# Jaap_Reef_ws_2018_all$NH4_B <- "NA"
# Jaap_Reef_ws_2018_all$TN_S <- "NA"
# Jaap_Reef_ws_2018_all$TN_B <- "NA"
# Jaap_Reef_ws_2018_all$DIN_S <- "NA"
# Jaap_Reef_ws_2018_all$DIN_B <- "NA"
# Jaap_Reef_ws_2018_all$TON_S <- "NA"
# Jaap_Reef_ws_2018_all$TON_B <- "NA"
# Jaap_Reef_ws_2018_all$TP_S <- "NA"
# Jaap_Reef_ws_2018_all$TP_B <- "NA"
# Jaap_Reef_ws_2018_all$SRP_S <- "NA"
# Jaap_Reef_ws_2018_all$SRP_B <- "NA"
# Jaap_Reef_ws_2018_all$APA_S <- "NA"
# Jaap_Reef_ws_2018_all$APA_B <- "NA"
# Jaap_Reef_ws_2018_all$CHLA_S <- "NA"
# Jaap_Reef_ws_2018_all$CHLA_B <- "NA"
# Jaap_Reef_ws_2018_all$TOC_S <- "NA"
# Jaap_Reef_ws_2018_all$TOC_B <- "NA"
# Jaap_Reef_ws_2018_all$SiO2_S <- "NA"
# Jaap_Reef_ws_2018_all$SiO2_B <- "NA"
# Jaap_Reef_ws_2018_all$TURB_S <- "NA"
# Jaap_Reef_ws_2018_all$TURB_B <- "NA"
# Jaap_Reef_ws_2018_all$SAL_S <- "NA"
# Jaap_Reef_ws_2018_all$SAL_B <- "NA"
# Jaap_Reef_ws_2018_all$TEMP_S <- "NA"
# Jaap_Reef_ws_2018_all$TEMP_B <- "NA"
# Jaap_Reef_ws_2018_all$DO_S <- "NA"
# Jaap_Reef_ws_2018_all$DO_B <- "NA"
# Jaap_Reef_ws_2018_all$Kd <- "NA"
# Jaap_Reef_ws_2018_all$pH <- "NA"
# Jaap_Reef_ws_2018_all$TN_TP <- "NA"
# Jaap_Reef_ws_2018_all$N_P <- "NA"
# Jaap_Reef_ws_2018_all$DIN_TP <- "NA"
# Jaap_Reef_ws_2018_all$Si_DIN <- "NA"
# Jaap_Reef_ws_2018_all$F_SAT_S <- "NA"
# Jaap_Reef_ws_2018_all$F_SAT_B <- "NA"
# Jaap_Reef_ws_2018_all$F_Io <- "NA"
# Jaap_Reef_ws_2018_all$DSIGT <- "NA"
# Jaap_Reef_ws_2018_all$id <- "NA"
# 
# 
# 
# 
# 
# 
# 
# ## rest of the serc data
# Jaap_Reef_serc_1995 <- subset(Jaap_Reef_serc_year, Year == "1995")
# Jaap_Reef_serc_1996 <- subset(Jaap_Reef_serc_year, Year == "1996")
# Jaap_Reef_serc_1997 <- subset(Jaap_Reef_serc_year, Year == "1997")
# Jaap_Reef_serc_1998 <- subset(Jaap_Reef_serc_year, Year == "1998")
# Jaap_Reef_serc_1999 <- subset(Jaap_Reef_serc_year, Year == "1999")
# Jaap_Reef_serc_2000 <- subset(Jaap_Reef_serc_year, Year == "2000")
# Jaap_Reef_serc_2001 <- subset(Jaap_Reef_serc_year, Year == "2001")
# Jaap_Reef_serc_2002 <- subset(Jaap_Reef_serc_year, Year == "2001")
# Jaap_Reef_serc_2003 <- subset(Jaap_Reef_serc_year, Year == "2001")
# Jaap_Reef_serc_2004 <- subset(Jaap_Reef_serc_year, Year == "2001")
# Jaap_Reef_serc_2005 <- subset(Jaap_Reef_serc_year, Year == "2001")
# Jaap_Reef_serc_2006 <- subset(Jaap_Reef_serc_year, Year == "2001")
# Jaap_Reef_serc_2007 <- subset(Jaap_Reef_serc_year, Year == "2001")
# Jaap_Reef_serc_2008 <- subset(Jaap_Reef_serc_year, Year == "2001")
# Jaap_Reef_serc_2009 <- subset(Jaap_Reef_serc_year, Year == "2001")
# Jaap_Reef_serc_2010 <- subset(Jaap_Reef_serc_year, Year == "2001")
# Jaap_Reef_serc_2011 <- subset(Jaap_Reef_serc_year, Year == "2001")
# Jaap_Reef_serc_2012 <- subset(Jaap_Reef_serc_year, Year == "2001")
# Jaap_Reef_serc_2013 <- subset(Jaap_Reef_serc_year, Year == "2013")
# Jaap_Reef_serc_2014 <- subset(Jaap_Reef_serc_year, Year == "2001")
# 
# 
# 
# Jaap_Reef_serc_extra <- rbind(Jaap_Reef_serc_1995,Jaap_Reef_serc_1996,Jaap_Reef_serc_1997,Jaap_Reef_serc_1998,Jaap_Reef_serc_1999,Jaap_Reef_serc_2000,Jaap_Reef_serc_2001,Jaap_Reef_serc_2002,Jaap_Reef_serc_2003,Jaap_Reef_serc_2004,Jaap_Reef_serc_2005,Jaap_Reef_serc_2006,Jaap_Reef_serc_2007,Jaap_Reef_serc_2008,Jaap_Reef_serc_2009,Jaap_Reef_serc_2010,Jaap_Reef_serc_2011,Jaap_Reef_serc_2012,Jaap_Reef_serc_2013,Jaap_Reef_serc_2014)
# 
# 
# 
# 
 Jaap_Reef_serc_year$Longitude <- "NA"
 Jaap_Reef_serc_year$Latitude <- "NA"
 Jaap_Reef_serc_year$Depth <- "NA"
 Jaap_Reef_serc_year$SST <- "NA"
 Jaap_Reef_serc_year$SSS <- "NA"
 Jaap_Reef_serc_year$Chl_a <- "NA"
 Jaap_Reef_serc_year$Phaeophyti <- "NA"
 Jaap_Reef_serc_year$id <- "NA"
# 
# 
# ### Rearrange extra ws data with serc_extra to merge with all other data
# 
# Jaap_Reef_ws_2018_all <- setcolorder(Jaap_Reef_ws_2018_all, names(Jaap_Reef_serc_extra))
# 
# ## Merge all years together 
# 
# Jaap_Reef_all <- rbind(Jaap_Reef_serc_extra,Jaap_Reef_2015_all,Jaap_Reef_2016_all,Jaap_Reef_2017_all,Jaap_Reef_ws_2018_all)

Jaap_Reef_serc_year$sitename <- "Jaap_Reef"
 
export(Jaap_Reef_serc_year,"LK_10km/Jaap_Reef_combined.csv")



Looe_Key_Deep_serc <- import("LK_10km/Looe_Key_Deep_serc.xls")
Looe_Key_Deep_ws <- import("LK_10km/Looe_Key_Deep_ws.xls")

## Change date to Year to merge the two dataframes

Looe_Key_Deep_serc_date <- format(as.Date(Looe_Key_Deep_serc$DATE_, format = "%Y %m %d"),"%Y")
Looe_Key_Deep_serc_frame <- data.frame(Looe_Key_Deep_serc_date)
Looe_Key_Deep_serc_year <- cbind(Looe_Key_Deep_serc_frame, Looe_Key_Deep_serc)
colnames(Looe_Key_Deep_serc_year)[1]<- "Year"
Looe_Key_Deep_serc_year$FID <- NULL
Looe_Key_Deep_serc_year$SURV <- NULL
Looe_Key_Deep_serc_year$BASIN <- NULL
Looe_Key_Deep_serc_year$SEGMENT <- NULL
Looe_Key_Deep_serc_year$ZONE_ <- NULL
Looe_Key_Deep_serc_year$TIME_ <- NULL
Looe_Key_Deep_serc_year$DATE_ <- NULL
Looe_Key_Deep_serc_year$STATION <- NULL
Looe_Key_Deep_serc_year$SITE <- NULL



Looe_Key_Deep_ws_date <- format(as.Date(Looe_Key_Deep_ws$Date_, format = "%Y %m %d"),"%Y")
Looe_Key_Deep_ws_frame <- data.frame(Looe_Key_Deep_ws_date)
Looe_Key_Deep_ws_year <- cbind(Looe_Key_Deep_ws_frame, Looe_Key_Deep_ws)
colnames(Looe_Key_Deep_ws_year)[1]<- "Year"
Looe_Key_Deep_ws_year$FID <- NULL
Looe_Key_Deep_ws_year$Station <- NULL
Looe_Key_Deep_ws_year$Date_ <- NULL
Looe_Key_Deep_ws_year$GMT <- NULL
Looe_Key_Deep_ws_year$Field11 <- NULL
Looe_Key_Deep_ws_year$Field12 <- NULL
Looe_Key_Deep_ws_year$Field13 <- NULL
Looe_Key_Deep_ws_year$Field14 <- NULL
Looe_Key_Deep_ws_year$Field15 <- NULL
Looe_Key_Deep_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Looe_Key_Deep_serc_year$Year)
unique(Looe_Key_Deep_ws_year$Year)


## Using subset add another ID column to make merging easier
Looe_Key_Deep_serc_1998 <- subset(Looe_Key_Deep_serc_year, Year == "1998")
Looe_Key_Deep_serc_1998_merge <- Looe_Key_Deep_serc_1998 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_1998 <- subset(Looe_Key_Deep_ws_year, Year == "1998")
Looe_Key_Deep_ws_1998_merge <- Looe_Key_Deep_ws_1998 %>%
  mutate(id = row_number())

Looe_Key_Deep_1998_all <- full_join(Looe_Key_Deep_serc_1998_merge, Looe_Key_Deep_ws_1998_merge, by = c("Year","id"))


Looe_Key_Deep_serc_1999 <- subset(Looe_Key_Deep_serc_year, Year == "1999")
Looe_Key_Deep_serc_1999_merge <- Looe_Key_Deep_serc_1999 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_1999 <- subset(Looe_Key_Deep_ws_year, Year == "1999")
Looe_Key_Deep_ws_1999_merge <- Looe_Key_Deep_ws_1999 %>%
  mutate(id = row_number())

Looe_Key_Deep_1999_all <- full_join(Looe_Key_Deep_serc_1999_merge, Looe_Key_Deep_ws_1999_merge, by = c("Year","id"))


Looe_Key_Deep_serc_2000 <- subset(Looe_Key_Deep_serc_year, Year == "2000")
Looe_Key_Deep_serc_2000_merge <- Looe_Key_Deep_serc_2000 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2000 <- subset(Looe_Key_Deep_ws_year, Year == "2000")
Looe_Key_Deep_ws_2000_merge <- Looe_Key_Deep_ws_2000 %>%
  mutate(id = row_number())

Looe_Key_Deep_2000_all <- full_join(Looe_Key_Deep_serc_2000_merge, Looe_Key_Deep_ws_2000_merge, by = c("Year","id"))


Looe_Key_Deep_serc_2001 <- subset(Looe_Key_Deep_serc_year, Year == "2001")
Looe_Key_Deep_serc_2001_merge <- Looe_Key_Deep_serc_2001 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2001 <- subset(Looe_Key_Deep_ws_year, Year == "2001")
Looe_Key_Deep_ws_2001_merge <- Looe_Key_Deep_ws_2001 %>%
  mutate(id = row_number())

Looe_Key_Deep_2001_all <- full_join(Looe_Key_Deep_serc_2001_merge, Looe_Key_Deep_ws_2001_merge, by = c("Year","id"))


Looe_Key_Deep_serc_2002 <- subset(Looe_Key_Deep_serc_year, Year == "2002")
Looe_Key_Deep_serc_2002_merge <- Looe_Key_Deep_serc_2002 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2002 <- subset(Looe_Key_Deep_ws_year, Year == "2002")
Looe_Key_Deep_ws_2002_merge <- Looe_Key_Deep_ws_2002 %>%
  mutate(id = row_number())

Looe_Key_Deep_2002_all <- full_join(Looe_Key_Deep_serc_2002_merge, Looe_Key_Deep_ws_2002_merge, by = c("Year","id"))


Looe_Key_Deep_serc_2003 <- subset(Looe_Key_Deep_serc_year, Year == "2003")
Looe_Key_Deep_serc_2003_merge <- Looe_Key_Deep_serc_2003 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2003 <- subset(Looe_Key_Deep_ws_year, Year == "2003")
Looe_Key_Deep_ws_2003_merge <- Looe_Key_Deep_ws_2003 %>%
  mutate(id = row_number())

Looe_Key_Deep_2003_all <- full_join(Looe_Key_Deep_serc_2003_merge, Looe_Key_Deep_ws_2003_merge, by = c("Year","id"))


Looe_Key_Deep_serc_2004 <- subset(Looe_Key_Deep_serc_year, Year == "2004")
Looe_Key_Deep_serc_2004_merge <- Looe_Key_Deep_serc_2004 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2004 <- subset(Looe_Key_Deep_ws_year, Year == "2004")
Looe_Key_Deep_ws_2004_merge <- Looe_Key_Deep_ws_2004 %>%
  mutate(id = row_number())

Looe_Key_Deep_2004_all <- full_join(Looe_Key_Deep_serc_2004_merge, Looe_Key_Deep_ws_2004_merge, by = c("Year","id"))


Looe_Key_Deep_serc_2005 <- subset(Looe_Key_Deep_serc_year, Year == "2005")
Looe_Key_Deep_serc_2005_merge <- Looe_Key_Deep_serc_2005 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2005 <- subset(Looe_Key_Deep_ws_year, Year == "2005")
Looe_Key_Deep_ws_2005_merge <- Looe_Key_Deep_ws_2005 %>%
  mutate(id = row_number())

Looe_Key_Deep_2005_all <- full_join(Looe_Key_Deep_serc_2005_merge, Looe_Key_Deep_ws_2005_merge, by = c("Year","id"))


Looe_Key_Deep_serc_2006 <- subset(Looe_Key_Deep_serc_year, Year == "2006")
Looe_Key_Deep_serc_2006_merge <- Looe_Key_Deep_serc_2006 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2006 <- subset(Looe_Key_Deep_ws_year, Year == "2006")
Looe_Key_Deep_ws_2006_merge <- Looe_Key_Deep_ws_2006 %>%
  mutate(id = row_number())

Looe_Key_Deep_2006_all <- full_join(Looe_Key_Deep_serc_2006_merge, Looe_Key_Deep_ws_2006_merge, by = c("Year","id"))


Looe_Key_Deep_serc_2007 <- subset(Looe_Key_Deep_serc_year, Year == "2007")
Looe_Key_Deep_serc_2007_merge <- Looe_Key_Deep_serc_2007 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2007 <- subset(Looe_Key_Deep_ws_year, Year == "2007")
Looe_Key_Deep_ws_2007_merge <- Looe_Key_Deep_ws_2007 %>%
  mutate(id = row_number())

Looe_Key_Deep_2007_all <- full_join(Looe_Key_Deep_serc_2007_merge, Looe_Key_Deep_ws_2007_merge, by = c("Year","id"))


Looe_Key_Deep_serc_2008 <- subset(Looe_Key_Deep_serc_year, Year == "2008")
Looe_Key_Deep_serc_2008_merge <- Looe_Key_Deep_serc_2008 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2008 <- subset(Looe_Key_Deep_ws_year, Year == "2008")
Looe_Key_Deep_ws_2008_merge <- Looe_Key_Deep_ws_2008 %>%
  mutate(id = row_number())

Looe_Key_Deep_2008_all <- full_join(Looe_Key_Deep_serc_2008_merge, Looe_Key_Deep_ws_2008_merge, by = c("Year","id"))


Looe_Key_Deep_serc_2009 <- subset(Looe_Key_Deep_serc_year, Year == "2009")
Looe_Key_Deep_serc_2009_merge <- Looe_Key_Deep_serc_2009 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2009 <- subset(Looe_Key_Deep_ws_year, Year == "2009")
Looe_Key_Deep_ws_2009_merge <- Looe_Key_Deep_ws_2009 %>%
  mutate(id = row_number())

Looe_Key_Deep_2009_all <- full_join(Looe_Key_Deep_serc_2009_merge, Looe_Key_Deep_ws_2009_merge, by = c("Year","id"))


Looe_Key_Deep_serc_2010 <- subset(Looe_Key_Deep_serc_year, Year == "2010")
Looe_Key_Deep_serc_2010_merge <- Looe_Key_Deep_serc_2010 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2010 <- subset(Looe_Key_Deep_ws_year, Year == "2010")
Looe_Key_Deep_ws_2010_merge <- Looe_Key_Deep_ws_2010 %>%
  mutate(id = row_number())

Looe_Key_Deep_2010_all <- full_join(Looe_Key_Deep_serc_2010_merge, Looe_Key_Deep_ws_2010_merge, by = c("Year","id"))


Looe_Key_Deep_serc_2011 <- subset(Looe_Key_Deep_serc_year, Year == "2011")
Looe_Key_Deep_serc_2011_merge <- Looe_Key_Deep_serc_2011 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2011 <- subset(Looe_Key_Deep_ws_year, Year == "2011")
Looe_Key_Deep_ws_2011_merge <- Looe_Key_Deep_ws_2011 %>%
  mutate(id = row_number())

Looe_Key_Deep_2011_all <- full_join(Looe_Key_Deep_serc_2011_merge, Looe_Key_Deep_ws_2011_merge, by = c("Year","id"))


Looe_Key_Deep_serc_2012 <- subset(Looe_Key_Deep_serc_year, Year == "2012")
Looe_Key_Deep_serc_2012_merge <- Looe_Key_Deep_serc_2012 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2012 <- subset(Looe_Key_Deep_ws_year, Year == "2012")
Looe_Key_Deep_ws_2012_merge <- Looe_Key_Deep_ws_2012 %>%
  mutate(id = row_number())

Looe_Key_Deep_2012_all <- full_join(Looe_Key_Deep_serc_2012_merge, Looe_Key_Deep_ws_2012_merge, by = c("Year","id"))


Looe_Key_Deep_serc_2014 <- subset(Looe_Key_Deep_serc_year, Year == "2014")
Looe_Key_Deep_serc_2014_merge <- Looe_Key_Deep_serc_2014 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2014 <- subset(Looe_Key_Deep_ws_year, Year == "2014")
Looe_Key_Deep_ws_2014_merge <- Looe_Key_Deep_ws_2014 %>%
  mutate(id = row_number())

Looe_Key_Deep_2014_all <- full_join(Looe_Key_Deep_serc_2014_merge, Looe_Key_Deep_ws_2014_merge, by = c("Year","id"))


Looe_Key_Deep_serc_2015 <- subset(Looe_Key_Deep_serc_year, Year == "2015")
Looe_Key_Deep_serc_2015_merge <- Looe_Key_Deep_serc_2015 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2015 <- subset(Looe_Key_Deep_ws_year, Year == "2015")
Looe_Key_Deep_ws_2015_merge <- Looe_Key_Deep_ws_2015 %>%
  mutate(id = row_number())

Looe_Key_Deep_2015_all <- full_join(Looe_Key_Deep_serc_2015_merge, Looe_Key_Deep_ws_2015_merge, by = c("Year","id"))


Looe_Key_Deep_serc_2016 <- subset(Looe_Key_Deep_serc_year, Year == "2016")
Looe_Key_Deep_serc_2016_merge <- Looe_Key_Deep_serc_2016 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2016 <- subset(Looe_Key_Deep_ws_year, Year == "2016")
Looe_Key_Deep_ws_2016_merge <- Looe_Key_Deep_ws_2016 %>%
  mutate(id = row_number())

Looe_Key_Deep_2016_all <- full_join(Looe_Key_Deep_serc_2016_merge, Looe_Key_Deep_ws_2016_merge, by = c("Year","id"))



Looe_Key_Deep_serc_2017 <- subset(Looe_Key_Deep_serc_year, Year == "2017")
Looe_Key_Deep_serc_2017_merge <- Looe_Key_Deep_serc_2017 %>%
  mutate(id = row_number())

Looe_Key_Deep_ws_2017 <- subset(Looe_Key_Deep_ws_year, Year == "2017")
Looe_Key_Deep_ws_2017_merge <- Looe_Key_Deep_ws_2017 %>%
  mutate(id = row_number())

Looe_Key_Deep_2017_all <- full_join(Looe_Key_Deep_serc_2017_merge, Looe_Key_Deep_ws_2017_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

Looe_Key_Deep_ws_2018_all <- subset(Looe_Key_Deep_ws_year, Year == "2018") 

## adding extra columns to merge 

Looe_Key_Deep_ws_2018_all$LATDEC <- "NA"
Looe_Key_Deep_ws_2018_all$LONDEC <- "NA"
Looe_Key_Deep_ws_2018_all$DEPTH <- "NA"
Looe_Key_Deep_ws_2018_all$NOX_S <- "NA"
Looe_Key_Deep_ws_2018_all$NOX_B <- "NA"
Looe_Key_Deep_ws_2018_all$NO3_S <- "NA"
Looe_Key_Deep_ws_2018_all$NO3_B <- "NA"
Looe_Key_Deep_ws_2018_all$NO2_S <- "NA"
Looe_Key_Deep_ws_2018_all$NO2_B <- "NA"
Looe_Key_Deep_ws_2018_all$NH4_S <- "NA"
Looe_Key_Deep_ws_2018_all$NH4_B <- "NA"
Looe_Key_Deep_ws_2018_all$TN_S <- "NA"
Looe_Key_Deep_ws_2018_all$TN_B <- "NA"
Looe_Key_Deep_ws_2018_all$DIN_S <- "NA"
Looe_Key_Deep_ws_2018_all$DIN_B <- "NA"
Looe_Key_Deep_ws_2018_all$TON_S <- "NA"
Looe_Key_Deep_ws_2018_all$TON_B <- "NA"
Looe_Key_Deep_ws_2018_all$TP_S <- "NA"
Looe_Key_Deep_ws_2018_all$TP_B <- "NA"
Looe_Key_Deep_ws_2018_all$SRP_S <- "NA"
Looe_Key_Deep_ws_2018_all$SRP_B <- "NA"
Looe_Key_Deep_ws_2018_all$APA_S <- "NA"
Looe_Key_Deep_ws_2018_all$APA_B <- "NA"
Looe_Key_Deep_ws_2018_all$CHLA_S <- "NA"
Looe_Key_Deep_ws_2018_all$CHLA_B <- "NA"
Looe_Key_Deep_ws_2018_all$TOC_S <- "NA"
Looe_Key_Deep_ws_2018_all$TOC_B <- "NA"
Looe_Key_Deep_ws_2018_all$SiO2_S <- "NA"
Looe_Key_Deep_ws_2018_all$SiO2_B <- "NA"
Looe_Key_Deep_ws_2018_all$TURB_S <- "NA"
Looe_Key_Deep_ws_2018_all$TURB_B <- "NA"
Looe_Key_Deep_ws_2018_all$SAL_S <- "NA"
Looe_Key_Deep_ws_2018_all$SAL_B <- "NA"
Looe_Key_Deep_ws_2018_all$TEMP_S <- "NA"
Looe_Key_Deep_ws_2018_all$TEMP_B <- "NA"
Looe_Key_Deep_ws_2018_all$DO_S <- "NA"
Looe_Key_Deep_ws_2018_all$DO_B <- "NA"
Looe_Key_Deep_ws_2018_all$Kd <- "NA"
Looe_Key_Deep_ws_2018_all$pH <- "NA"
Looe_Key_Deep_ws_2018_all$TN_TP <- "NA"
Looe_Key_Deep_ws_2018_all$N_P <- "NA"
Looe_Key_Deep_ws_2018_all$DIN_TP <- "NA"
Looe_Key_Deep_ws_2018_all$Si_DIN <- "NA"
Looe_Key_Deep_ws_2018_all$F_SAT_S <- "NA"
Looe_Key_Deep_ws_2018_all$F_SAT_B <- "NA"
Looe_Key_Deep_ws_2018_all$F_Io <- "NA"
Looe_Key_Deep_ws_2018_all$DSIGT <- "NA"
Looe_Key_Deep_ws_2018_all$id <- "NA"







## rest of the serc data
Looe_Key_Deep_serc_1995 <- subset(Looe_Key_Deep_serc_year, Year == "1995")
Looe_Key_Deep_serc_1996 <- subset(Looe_Key_Deep_serc_year, Year == "1996")
Looe_Key_Deep_serc_1997 <- subset(Looe_Key_Deep_serc_year, Year == "1997")
# Looe_Key_Deep_serc_1998 <- subset(Looe_Key_Deep_serc_year, Year == "1998")
# Looe_Key_Deep_serc_1999 <- subset(Looe_Key_Deep_serc_year, Year == "1999")
# Looe_Key_Deep_serc_2000 <- subset(Looe_Key_Deep_serc_year, Year == "2000")
# Looe_Key_Deep_serc_2001 <- subset(Looe_Key_Deep_serc_year, Year == "2001")
Looe_Key_Deep_serc_2013 <- subset(Looe_Key_Deep_serc_year, Year == "2013")



Looe_Key_Deep_serc_extra <- rbind(Looe_Key_Deep_serc_1995,Looe_Key_Deep_serc_1996,Looe_Key_Deep_serc_1997,Looe_Key_Deep_serc_2013)




Looe_Key_Deep_serc_extra$Longitude <- "NA"
Looe_Key_Deep_serc_extra$Latitude <- "NA"
Looe_Key_Deep_serc_extra$Depth <- "NA"
Looe_Key_Deep_serc_extra$SST <- "NA"
Looe_Key_Deep_serc_extra$SSS <- "NA"
Looe_Key_Deep_serc_extra$Chl_a <- "NA"
Looe_Key_Deep_serc_extra$Phaeophyti <- "NA"
Looe_Key_Deep_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Looe_Key_Deep_ws_2018_all <- setcolorder(Looe_Key_Deep_ws_2018_all, names(Looe_Key_Deep_serc_extra))

## Merge all years together 

Looe_Key_Deep_all <- rbind(Looe_Key_Deep_serc_extra,Looe_Key_Deep_1998_all,Looe_Key_Deep_1999_all,Looe_Key_Deep_2000_all,Looe_Key_Deep_2001_all,Looe_Key_Deep_2002_all,Looe_Key_Deep_2003_all,Looe_Key_Deep_2004_all, Looe_Key_Deep_2005_all,Looe_Key_Deep_2006_all,Looe_Key_Deep_2007_all,Looe_Key_Deep_2008_all,Looe_Key_Deep_2009_all,Looe_Key_Deep_2010_all,Looe_Key_Deep_2011_all,Looe_Key_Deep_2012_all,Looe_Key_Deep_2014_all,Looe_Key_Deep_2015_all,Looe_Key_Deep_2016_all,Looe_Key_Deep_2017_all,Looe_Key_Deep_ws_2018_all)
Looe_Key_Deep_all$sitename <- "Looe_Key_Deep"

export(Looe_Key_Deep_all,"LK_10km/Looe_Key_Deep_combined.csv")



Looe_Key_Shallow_serc <- import("LK_10km/Looe_Key_Shallow_serc.xls")
Looe_Key_Shallow_ws <- import("LK_10km/Looe_Key_Shallow_ws.xls")

## Change date to Year to merge the two dataframes

Looe_Key_Shallow_serc_date <- format(as.Date(Looe_Key_Shallow_serc$DATE_, format = "%Y %m %d"),"%Y")
Looe_Key_Shallow_serc_frame <- data.frame(Looe_Key_Shallow_serc_date)
Looe_Key_Shallow_serc_year <- cbind(Looe_Key_Shallow_serc_frame, Looe_Key_Shallow_serc)
colnames(Looe_Key_Shallow_serc_year)[1]<- "Year"
Looe_Key_Shallow_serc_year$FID <- NULL
Looe_Key_Shallow_serc_year$SURV <- NULL
Looe_Key_Shallow_serc_year$BASIN <- NULL
Looe_Key_Shallow_serc_year$SEGMENT <- NULL
Looe_Key_Shallow_serc_year$ZONE_ <- NULL
Looe_Key_Shallow_serc_year$TIME_ <- NULL
Looe_Key_Shallow_serc_year$DATE_ <- NULL
Looe_Key_Shallow_serc_year$STATION <- NULL
Looe_Key_Shallow_serc_year$SITE <- NULL



Looe_Key_Shallow_ws_date <- format(as.Date(Looe_Key_Shallow_ws$Date_, format = "%Y %m %d"),"%Y")
Looe_Key_Shallow_ws_frame <- data.frame(Looe_Key_Shallow_ws_date)
Looe_Key_Shallow_ws_year <- cbind(Looe_Key_Shallow_ws_frame, Looe_Key_Shallow_ws)
colnames(Looe_Key_Shallow_ws_year)[1]<- "Year"
Looe_Key_Shallow_ws_year$FID <- NULL
Looe_Key_Shallow_ws_year$Station <- NULL
Looe_Key_Shallow_ws_year$Date_ <- NULL
Looe_Key_Shallow_ws_year$GMT <- NULL
Looe_Key_Shallow_ws_year$Field11 <- NULL
Looe_Key_Shallow_ws_year$Field12 <- NULL
Looe_Key_Shallow_ws_year$Field13 <- NULL
Looe_Key_Shallow_ws_year$Field14 <- NULL
Looe_Key_Shallow_ws_year$Field15 <- NULL
Looe_Key_Shallow_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Looe_Key_Shallow_serc_year$Year)
unique(Looe_Key_Shallow_ws_year$Year)


## Using subset add another ID column to make merging easier
Looe_Key_Shallow_serc_1998 <- subset(Looe_Key_Shallow_serc_year, Year == "1998")
Looe_Key_Shallow_serc_1998_merge <- Looe_Key_Shallow_serc_1998 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_1998 <- subset(Looe_Key_Shallow_ws_year, Year == "1998")
Looe_Key_Shallow_ws_1998_merge <- Looe_Key_Shallow_ws_1998 %>%
  mutate(id = row_number())

Looe_Key_Shallow_1998_all <- full_join(Looe_Key_Shallow_serc_1998_merge, Looe_Key_Shallow_ws_1998_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_1999 <- subset(Looe_Key_Shallow_serc_year, Year == "1999")
Looe_Key_Shallow_serc_1999_merge <- Looe_Key_Shallow_serc_1999 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_1999 <- subset(Looe_Key_Shallow_ws_year, Year == "1999")
Looe_Key_Shallow_ws_1999_merge <- Looe_Key_Shallow_ws_1999 %>%
  mutate(id = row_number())

Looe_Key_Shallow_1999_all <- full_join(Looe_Key_Shallow_serc_1999_merge, Looe_Key_Shallow_ws_1999_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_2000 <- subset(Looe_Key_Shallow_serc_year, Year == "2000")
Looe_Key_Shallow_serc_2000_merge <- Looe_Key_Shallow_serc_2000 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2000 <- subset(Looe_Key_Shallow_ws_year, Year == "2000")
Looe_Key_Shallow_ws_2000_merge <- Looe_Key_Shallow_ws_2000 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2000_all <- full_join(Looe_Key_Shallow_serc_2000_merge, Looe_Key_Shallow_ws_2000_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_2001 <- subset(Looe_Key_Shallow_serc_year, Year == "2001")
Looe_Key_Shallow_serc_2001_merge <- Looe_Key_Shallow_serc_2001 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2001 <- subset(Looe_Key_Shallow_ws_year, Year == "2001")
Looe_Key_Shallow_ws_2001_merge <- Looe_Key_Shallow_ws_2001 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2001_all <- full_join(Looe_Key_Shallow_serc_2001_merge, Looe_Key_Shallow_ws_2001_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_2002 <- subset(Looe_Key_Shallow_serc_year, Year == "2002")
Looe_Key_Shallow_serc_2002_merge <- Looe_Key_Shallow_serc_2002 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2002 <- subset(Looe_Key_Shallow_ws_year, Year == "2002")
Looe_Key_Shallow_ws_2002_merge <- Looe_Key_Shallow_ws_2002 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2002_all <- full_join(Looe_Key_Shallow_serc_2002_merge, Looe_Key_Shallow_ws_2002_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_2003 <- subset(Looe_Key_Shallow_serc_year, Year == "2003")
Looe_Key_Shallow_serc_2003_merge <- Looe_Key_Shallow_serc_2003 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2003 <- subset(Looe_Key_Shallow_ws_year, Year == "2003")
Looe_Key_Shallow_ws_2003_merge <- Looe_Key_Shallow_ws_2003 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2003_all <- full_join(Looe_Key_Shallow_serc_2003_merge, Looe_Key_Shallow_ws_2003_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_2004 <- subset(Looe_Key_Shallow_serc_year, Year == "2004")
Looe_Key_Shallow_serc_2004_merge <- Looe_Key_Shallow_serc_2004 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2004 <- subset(Looe_Key_Shallow_ws_year, Year == "2004")
Looe_Key_Shallow_ws_2004_merge <- Looe_Key_Shallow_ws_2004 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2004_all <- full_join(Looe_Key_Shallow_serc_2004_merge, Looe_Key_Shallow_ws_2004_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_2005 <- subset(Looe_Key_Shallow_serc_year, Year == "2005")
Looe_Key_Shallow_serc_2005_merge <- Looe_Key_Shallow_serc_2005 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2005 <- subset(Looe_Key_Shallow_ws_year, Year == "2005")
Looe_Key_Shallow_ws_2005_merge <- Looe_Key_Shallow_ws_2005 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2005_all <- full_join(Looe_Key_Shallow_serc_2005_merge, Looe_Key_Shallow_ws_2005_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_2006 <- subset(Looe_Key_Shallow_serc_year, Year == "2006")
Looe_Key_Shallow_serc_2006_merge <- Looe_Key_Shallow_serc_2006 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2006 <- subset(Looe_Key_Shallow_ws_year, Year == "2006")
Looe_Key_Shallow_ws_2006_merge <- Looe_Key_Shallow_ws_2006 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2006_all <- full_join(Looe_Key_Shallow_serc_2006_merge, Looe_Key_Shallow_ws_2006_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_2007 <- subset(Looe_Key_Shallow_serc_year, Year == "2007")
Looe_Key_Shallow_serc_2007_merge <- Looe_Key_Shallow_serc_2007 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2007 <- subset(Looe_Key_Shallow_ws_year, Year == "2007")
Looe_Key_Shallow_ws_2007_merge <- Looe_Key_Shallow_ws_2007 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2007_all <- full_join(Looe_Key_Shallow_serc_2007_merge, Looe_Key_Shallow_ws_2007_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_2008 <- subset(Looe_Key_Shallow_serc_year, Year == "2008")
Looe_Key_Shallow_serc_2008_merge <- Looe_Key_Shallow_serc_2008 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2008 <- subset(Looe_Key_Shallow_ws_year, Year == "2008")
Looe_Key_Shallow_ws_2008_merge <- Looe_Key_Shallow_ws_2008 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2008_all <- full_join(Looe_Key_Shallow_serc_2008_merge, Looe_Key_Shallow_ws_2008_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_2009 <- subset(Looe_Key_Shallow_serc_year, Year == "2009")
Looe_Key_Shallow_serc_2009_merge <- Looe_Key_Shallow_serc_2009 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2009 <- subset(Looe_Key_Shallow_ws_year, Year == "2009")
Looe_Key_Shallow_ws_2009_merge <- Looe_Key_Shallow_ws_2009 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2009_all <- full_join(Looe_Key_Shallow_serc_2009_merge, Looe_Key_Shallow_ws_2009_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_2010 <- subset(Looe_Key_Shallow_serc_year, Year == "2010")
Looe_Key_Shallow_serc_2010_merge <- Looe_Key_Shallow_serc_2010 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2010 <- subset(Looe_Key_Shallow_ws_year, Year == "2010")
Looe_Key_Shallow_ws_2010_merge <- Looe_Key_Shallow_ws_2010 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2010_all <- full_join(Looe_Key_Shallow_serc_2010_merge, Looe_Key_Shallow_ws_2010_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_2011 <- subset(Looe_Key_Shallow_serc_year, Year == "2011")
Looe_Key_Shallow_serc_2011_merge <- Looe_Key_Shallow_serc_2011 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2011 <- subset(Looe_Key_Shallow_ws_year, Year == "2011")
Looe_Key_Shallow_ws_2011_merge <- Looe_Key_Shallow_ws_2011 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2011_all <- full_join(Looe_Key_Shallow_serc_2011_merge, Looe_Key_Shallow_ws_2011_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_2012 <- subset(Looe_Key_Shallow_serc_year, Year == "2012")
Looe_Key_Shallow_serc_2012_merge <- Looe_Key_Shallow_serc_2012 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2012 <- subset(Looe_Key_Shallow_ws_year, Year == "2012")
Looe_Key_Shallow_ws_2012_merge <- Looe_Key_Shallow_ws_2012 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2012_all <- full_join(Looe_Key_Shallow_serc_2012_merge, Looe_Key_Shallow_ws_2012_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_2014 <- subset(Looe_Key_Shallow_serc_year, Year == "2014")
Looe_Key_Shallow_serc_2014_merge <- Looe_Key_Shallow_serc_2014 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2014 <- subset(Looe_Key_Shallow_ws_year, Year == "2014")
Looe_Key_Shallow_ws_2014_merge <- Looe_Key_Shallow_ws_2014 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2014_all <- full_join(Looe_Key_Shallow_serc_2014_merge, Looe_Key_Shallow_ws_2014_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_2015 <- subset(Looe_Key_Shallow_serc_year, Year == "2015")
Looe_Key_Shallow_serc_2015_merge <- Looe_Key_Shallow_serc_2015 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2015 <- subset(Looe_Key_Shallow_ws_year, Year == "2015")
Looe_Key_Shallow_ws_2015_merge <- Looe_Key_Shallow_ws_2015 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2015_all <- full_join(Looe_Key_Shallow_serc_2015_merge, Looe_Key_Shallow_ws_2015_merge, by = c("Year","id"))


Looe_Key_Shallow_serc_2016 <- subset(Looe_Key_Shallow_serc_year, Year == "2016")
Looe_Key_Shallow_serc_2016_merge <- Looe_Key_Shallow_serc_2016 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2016 <- subset(Looe_Key_Shallow_ws_year, Year == "2016")
Looe_Key_Shallow_ws_2016_merge <- Looe_Key_Shallow_ws_2016 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2016_all <- full_join(Looe_Key_Shallow_serc_2016_merge, Looe_Key_Shallow_ws_2016_merge, by = c("Year","id"))



Looe_Key_Shallow_serc_2017 <- subset(Looe_Key_Shallow_serc_year, Year == "2017")
Looe_Key_Shallow_serc_2017_merge <- Looe_Key_Shallow_serc_2017 %>%
  mutate(id = row_number())

Looe_Key_Shallow_ws_2017 <- subset(Looe_Key_Shallow_ws_year, Year == "2017")
Looe_Key_Shallow_ws_2017_merge <- Looe_Key_Shallow_ws_2017 %>%
  mutate(id = row_number())

Looe_Key_Shallow_2017_all <- full_join(Looe_Key_Shallow_serc_2017_merge, Looe_Key_Shallow_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Looe_Key_Shallow_ws_2018_all <- subset(Looe_Key_Shallow_ws_year, Year == "2018") 

## adding extra columns to merge 

Looe_Key_Shallow_ws_2018_all$LATDEC <- "NA"
Looe_Key_Shallow_ws_2018_all$LONDEC <- "NA"
Looe_Key_Shallow_ws_2018_all$DEPTH <- "NA"
Looe_Key_Shallow_ws_2018_all$NOX_S <- "NA"
Looe_Key_Shallow_ws_2018_all$NOX_B <- "NA"
Looe_Key_Shallow_ws_2018_all$NO3_S <- "NA"
Looe_Key_Shallow_ws_2018_all$NO3_B <- "NA"
Looe_Key_Shallow_ws_2018_all$NO2_S <- "NA"
Looe_Key_Shallow_ws_2018_all$NO2_B <- "NA"
Looe_Key_Shallow_ws_2018_all$NH4_S <- "NA"
Looe_Key_Shallow_ws_2018_all$NH4_B <- "NA"
Looe_Key_Shallow_ws_2018_all$TN_S <- "NA"
Looe_Key_Shallow_ws_2018_all$TN_B <- "NA"
Looe_Key_Shallow_ws_2018_all$DIN_S <- "NA"
Looe_Key_Shallow_ws_2018_all$DIN_B <- "NA"
Looe_Key_Shallow_ws_2018_all$TON_S <- "NA"
Looe_Key_Shallow_ws_2018_all$TON_B <- "NA"
Looe_Key_Shallow_ws_2018_all$TP_S <- "NA"
Looe_Key_Shallow_ws_2018_all$TP_B <- "NA"
Looe_Key_Shallow_ws_2018_all$SRP_S <- "NA"
Looe_Key_Shallow_ws_2018_all$SRP_B <- "NA"
Looe_Key_Shallow_ws_2018_all$APA_S <- "NA"
Looe_Key_Shallow_ws_2018_all$APA_B <- "NA"
Looe_Key_Shallow_ws_2018_all$CHLA_S <- "NA"
Looe_Key_Shallow_ws_2018_all$CHLA_B <- "NA"
Looe_Key_Shallow_ws_2018_all$TOC_S <- "NA"
Looe_Key_Shallow_ws_2018_all$TOC_B <- "NA"
Looe_Key_Shallow_ws_2018_all$SiO2_S <- "NA"
Looe_Key_Shallow_ws_2018_all$SiO2_B <- "NA"
Looe_Key_Shallow_ws_2018_all$TURB_S <- "NA"
Looe_Key_Shallow_ws_2018_all$TURB_B <- "NA"
Looe_Key_Shallow_ws_2018_all$SAL_S <- "NA"
Looe_Key_Shallow_ws_2018_all$SAL_B <- "NA"
Looe_Key_Shallow_ws_2018_all$TEMP_S <- "NA"
Looe_Key_Shallow_ws_2018_all$TEMP_B <- "NA"
Looe_Key_Shallow_ws_2018_all$DO_S <- "NA"
Looe_Key_Shallow_ws_2018_all$DO_B <- "NA"
Looe_Key_Shallow_ws_2018_all$Kd <- "NA"
Looe_Key_Shallow_ws_2018_all$pH <- "NA"
Looe_Key_Shallow_ws_2018_all$TN_TP <- "NA"
Looe_Key_Shallow_ws_2018_all$N_P <- "NA"
Looe_Key_Shallow_ws_2018_all$DIN_TP <- "NA"
Looe_Key_Shallow_ws_2018_all$Si_DIN <- "NA"
Looe_Key_Shallow_ws_2018_all$F_SAT_S <- "NA"
Looe_Key_Shallow_ws_2018_all$F_SAT_B <- "NA"
Looe_Key_Shallow_ws_2018_all$F_Io <- "NA"
Looe_Key_Shallow_ws_2018_all$DSIGT <- "NA"
Looe_Key_Shallow_ws_2018_all$id <- "NA"







## rest of the serc data
Looe_Key_Shallow_serc_1995 <- subset(Looe_Key_Shallow_serc_year, Year == "1995")
Looe_Key_Shallow_serc_1996 <- subset(Looe_Key_Shallow_serc_year, Year == "1996")
Looe_Key_Shallow_serc_1997 <- subset(Looe_Key_Shallow_serc_year, Year == "1997")
# Looe_Key_Shallow_serc_1998 <- subset(Looe_Key_Shallow_serc_year, Year == "1998")
# Looe_Key_Shallow_serc_1999 <- subset(Looe_Key_Shallow_serc_year, Year == "1999")
# Looe_Key_Shallow_serc_2000 <- subset(Looe_Key_Shallow_serc_year, Year == "2000")
# Looe_Key_Shallow_serc_2001 <- subset(Looe_Key_Shallow_serc_year, Year == "2001")
Looe_Key_Shallow_serc_2013 <- subset(Looe_Key_Shallow_serc_year, Year == "2013")



Looe_Key_Shallow_serc_extra <- rbind(Looe_Key_Shallow_serc_1995,Looe_Key_Shallow_serc_1996,Looe_Key_Shallow_serc_1997,Looe_Key_Shallow_serc_2013)




Looe_Key_Shallow_serc_extra$Longitude <- "NA"
Looe_Key_Shallow_serc_extra$Latitude <- "NA"
Looe_Key_Shallow_serc_extra$Depth <- "NA"
Looe_Key_Shallow_serc_extra$SST <- "NA"
Looe_Key_Shallow_serc_extra$SSS <- "NA"
Looe_Key_Shallow_serc_extra$Chl_a <- "NA"
Looe_Key_Shallow_serc_extra$Phaeophyti <- "NA"
Looe_Key_Shallow_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Looe_Key_Shallow_ws_2018_all <- setcolorder(Looe_Key_Shallow_ws_2018_all, names(Looe_Key_Shallow_serc_extra))

## Merge all years together 

Looe_Key_Shallow_all <- rbind(Looe_Key_Shallow_serc_extra,Looe_Key_Shallow_1998_all,Looe_Key_Shallow_1999_all,Looe_Key_Shallow_2000_all,Looe_Key_Shallow_2001_all,Looe_Key_Shallow_2002_all,Looe_Key_Shallow_2003_all,Looe_Key_Shallow_2004_all, Looe_Key_Shallow_2005_all,Looe_Key_Shallow_2006_all,Looe_Key_Shallow_2007_all,Looe_Key_Shallow_2008_all,Looe_Key_Shallow_2009_all,Looe_Key_Shallow_2010_all,Looe_Key_Shallow_2011_all,Looe_Key_Shallow_2012_all,Looe_Key_Shallow_2014_all,Looe_Key_Shallow_2015_all,Looe_Key_Shallow_2016_all,Looe_Key_Shallow_2017_all,Looe_Key_Shallow_ws_2018_all)
Looe_Key_Shallow_all$sitename <- "Looe_Key_Shallow"

export(Looe_Key_Shallow_all,"LK_10km/Looe_Key_Shallow_combined.csv")




Red_Dun_Reef_serc <- import("LK_10km/Red_Dun_Reef_serc.xls")
Red_Dun_Reef_ws <- import("LK_10km/Red_Dun_Reef_ws.xls")

## Change date to Year to merge the two dataframes

Red_Dun_Reef_serc_date <- format(as.Date(Red_Dun_Reef_serc$DATE_, format = "%Y %m %d"),"%Y")
Red_Dun_Reef_serc_frame <- data.frame(Red_Dun_Reef_serc_date)
Red_Dun_Reef_serc_year <- cbind(Red_Dun_Reef_serc_frame, Red_Dun_Reef_serc)
colnames(Red_Dun_Reef_serc_year)[1]<- "Year"
Red_Dun_Reef_serc_year$FID <- NULL
Red_Dun_Reef_serc_year$SURV <- NULL
Red_Dun_Reef_serc_year$BASIN <- NULL
Red_Dun_Reef_serc_year$SEGMENT <- NULL
Red_Dun_Reef_serc_year$ZONE_ <- NULL
Red_Dun_Reef_serc_year$TIME_ <- NULL
Red_Dun_Reef_serc_year$DATE_ <- NULL
Red_Dun_Reef_serc_year$STATION <- NULL
Red_Dun_Reef_serc_year$SITE <- NULL



Red_Dun_Reef_ws_date <- format(as.Date(Red_Dun_Reef_ws$Date_, format = "%Y %m %d"),"%Y")
Red_Dun_Reef_ws_frame <- data.frame(Red_Dun_Reef_ws_date)
Red_Dun_Reef_ws_year <- cbind(Red_Dun_Reef_ws_frame, Red_Dun_Reef_ws)
colnames(Red_Dun_Reef_ws_year)[1]<- "Year"
Red_Dun_Reef_ws_year$FID <- NULL
Red_Dun_Reef_ws_year$Station <- NULL
Red_Dun_Reef_ws_year$Date_ <- NULL
Red_Dun_Reef_ws_year$GMT <- NULL
Red_Dun_Reef_ws_year$Field11 <- NULL
Red_Dun_Reef_ws_year$Field12 <- NULL
Red_Dun_Reef_ws_year$Field13 <- NULL
Red_Dun_Reef_ws_year$Field14 <- NULL
Red_Dun_Reef_ws_year$Field15 <- NULL
Red_Dun_Reef_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Red_Dun_Reef_serc_year$Year)
unique(Red_Dun_Reef_ws_year$Year)


## Using subset add another ID column to make merging easier
Red_Dun_Reef_serc_2015 <- subset(Red_Dun_Reef_serc_year, Year == "2015")
Red_Dun_Reef_serc_2015_merge <- Red_Dun_Reef_serc_2015 %>%
  mutate(id = row_number())

Red_Dun_Reef_ws_2015 <- subset(Red_Dun_Reef_ws_year, Year == "2015")
Red_Dun_Reef_ws_2015_merge <- Red_Dun_Reef_ws_2015 %>%
  mutate(id = row_number())

Red_Dun_Reef_2015_all <- full_join(Red_Dun_Reef_serc_2015_merge, Red_Dun_Reef_ws_2015_merge, by = c("Year","id"))


Red_Dun_Reef_serc_2016 <- subset(Red_Dun_Reef_serc_year, Year == "2016")
Red_Dun_Reef_serc_2016_merge <- Red_Dun_Reef_serc_2016 %>%
  mutate(id = row_number())

Red_Dun_Reef_ws_2016 <- subset(Red_Dun_Reef_ws_year, Year == "2016")
Red_Dun_Reef_ws_2016_merge <- Red_Dun_Reef_ws_2016 %>%
  mutate(id = row_number())

Red_Dun_Reef_2016_all <- full_join(Red_Dun_Reef_serc_2016_merge, Red_Dun_Reef_ws_2016_merge, by = c("Year","id"))



Red_Dun_Reef_serc_2017 <- subset(Red_Dun_Reef_serc_year, Year == "2017")
Red_Dun_Reef_serc_2017_merge <- Red_Dun_Reef_serc_2017 %>%
  mutate(id = row_number())

Red_Dun_Reef_ws_2017 <- subset(Red_Dun_Reef_ws_year, Year == "2017")
Red_Dun_Reef_ws_2017_merge <- Red_Dun_Reef_ws_2017 %>%
  mutate(id = row_number())

Red_Dun_Reef_2017_all <- full_join(Red_Dun_Reef_serc_2017_merge, Red_Dun_Reef_ws_2017_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

Red_Dun_Reef_ws_2018_all <- subset(Red_Dun_Reef_ws_year, Year == "2018") 

## adding extra columns to merge 

Red_Dun_Reef_ws_2018_all$LATDEC <- "NA"
Red_Dun_Reef_ws_2018_all$LONDEC <- "NA"
Red_Dun_Reef_ws_2018_all$DEPTH <- "NA"
Red_Dun_Reef_ws_2018_all$NOX_S <- "NA"
Red_Dun_Reef_ws_2018_all$NOX_B <- "NA"
Red_Dun_Reef_ws_2018_all$NO3_S <- "NA"
Red_Dun_Reef_ws_2018_all$NO3_B <- "NA"
Red_Dun_Reef_ws_2018_all$NO2_S <- "NA"
Red_Dun_Reef_ws_2018_all$NO2_B <- "NA"
Red_Dun_Reef_ws_2018_all$NH4_S <- "NA"
Red_Dun_Reef_ws_2018_all$NH4_B <- "NA"
Red_Dun_Reef_ws_2018_all$TN_S <- "NA"
Red_Dun_Reef_ws_2018_all$TN_B <- "NA"
Red_Dun_Reef_ws_2018_all$DIN_S <- "NA"
Red_Dun_Reef_ws_2018_all$DIN_B <- "NA"
Red_Dun_Reef_ws_2018_all$TON_S <- "NA"
Red_Dun_Reef_ws_2018_all$TON_B <- "NA"
Red_Dun_Reef_ws_2018_all$TP_S <- "NA"
Red_Dun_Reef_ws_2018_all$TP_B <- "NA"
Red_Dun_Reef_ws_2018_all$SRP_S <- "NA"
Red_Dun_Reef_ws_2018_all$SRP_B <- "NA"
Red_Dun_Reef_ws_2018_all$APA_S <- "NA"
Red_Dun_Reef_ws_2018_all$APA_B <- "NA"
Red_Dun_Reef_ws_2018_all$CHLA_S <- "NA"
Red_Dun_Reef_ws_2018_all$CHLA_B <- "NA"
Red_Dun_Reef_ws_2018_all$TOC_S <- "NA"
Red_Dun_Reef_ws_2018_all$TOC_B <- "NA"
Red_Dun_Reef_ws_2018_all$SiO2_S <- "NA"
Red_Dun_Reef_ws_2018_all$SiO2_B <- "NA"
Red_Dun_Reef_ws_2018_all$TURB_S <- "NA"
Red_Dun_Reef_ws_2018_all$TURB_B <- "NA"
Red_Dun_Reef_ws_2018_all$SAL_S <- "NA"
Red_Dun_Reef_ws_2018_all$SAL_B <- "NA"
Red_Dun_Reef_ws_2018_all$TEMP_S <- "NA"
Red_Dun_Reef_ws_2018_all$TEMP_B <- "NA"
Red_Dun_Reef_ws_2018_all$DO_S <- "NA"
Red_Dun_Reef_ws_2018_all$DO_B <- "NA"
Red_Dun_Reef_ws_2018_all$Kd <- "NA"
Red_Dun_Reef_ws_2018_all$pH <- "NA"
Red_Dun_Reef_ws_2018_all$TN_TP <- "NA"
Red_Dun_Reef_ws_2018_all$N_P <- "NA"
Red_Dun_Reef_ws_2018_all$DIN_TP <- "NA"
Red_Dun_Reef_ws_2018_all$Si_DIN <- "NA"
Red_Dun_Reef_ws_2018_all$F_SAT_S <- "NA"
Red_Dun_Reef_ws_2018_all$F_SAT_B <- "NA"
Red_Dun_Reef_ws_2018_all$F_Io <- "NA"
Red_Dun_Reef_ws_2018_all$DSIGT <- "NA"
Red_Dun_Reef_ws_2018_all$id <- "NA"







## rest of the serc data
Red_Dun_Reef_serc_1995 <- subset(Red_Dun_Reef_serc_year, Year == "1995")
Red_Dun_Reef_serc_1996 <- subset(Red_Dun_Reef_serc_year, Year == "1996")
Red_Dun_Reef_serc_1997 <- subset(Red_Dun_Reef_serc_year, Year == "1997")
Red_Dun_Reef_serc_1998 <- subset(Red_Dun_Reef_serc_year, Year == "1998")
Red_Dun_Reef_serc_1999 <- subset(Red_Dun_Reef_serc_year, Year == "1999")
Red_Dun_Reef_serc_2000 <- subset(Red_Dun_Reef_serc_year, Year == "2000")
Red_Dun_Reef_serc_2001 <- subset(Red_Dun_Reef_serc_year, Year == "2001")
Red_Dun_Reef_serc_2002 <- subset(Red_Dun_Reef_serc_year, Year == "2001")
Red_Dun_Reef_serc_2003 <- subset(Red_Dun_Reef_serc_year, Year == "2001")
Red_Dun_Reef_serc_2004 <- subset(Red_Dun_Reef_serc_year, Year == "2001")
Red_Dun_Reef_serc_2005 <- subset(Red_Dun_Reef_serc_year, Year == "2001")
Red_Dun_Reef_serc_2006 <- subset(Red_Dun_Reef_serc_year, Year == "2001")
Red_Dun_Reef_serc_2007 <- subset(Red_Dun_Reef_serc_year, Year == "2001")
Red_Dun_Reef_serc_2008 <- subset(Red_Dun_Reef_serc_year, Year == "2001")
Red_Dun_Reef_serc_2009 <- subset(Red_Dun_Reef_serc_year, Year == "2001")
Red_Dun_Reef_serc_2010 <- subset(Red_Dun_Reef_serc_year, Year == "2001")
Red_Dun_Reef_serc_2011 <- subset(Red_Dun_Reef_serc_year, Year == "2001")
Red_Dun_Reef_serc_2012 <- subset(Red_Dun_Reef_serc_year, Year == "2001")
Red_Dun_Reef_serc_2013 <- subset(Red_Dun_Reef_serc_year, Year == "2013")
Red_Dun_Reef_serc_2014 <- subset(Red_Dun_Reef_serc_year, Year == "2001")



Red_Dun_Reef_serc_extra <- rbind(Red_Dun_Reef_serc_1995,Red_Dun_Reef_serc_1996,Red_Dun_Reef_serc_1997,Red_Dun_Reef_serc_1998,Red_Dun_Reef_serc_1999,Red_Dun_Reef_serc_2000,Red_Dun_Reef_serc_2001,Red_Dun_Reef_serc_2002,Red_Dun_Reef_serc_2003,Red_Dun_Reef_serc_2004,Red_Dun_Reef_serc_2005,Red_Dun_Reef_serc_2006,Red_Dun_Reef_serc_2007,Red_Dun_Reef_serc_2008,Red_Dun_Reef_serc_2009,Red_Dun_Reef_serc_2010,Red_Dun_Reef_serc_2011,Red_Dun_Reef_serc_2012,Red_Dun_Reef_serc_2013,Red_Dun_Reef_serc_2014)




Red_Dun_Reef_serc_extra$Longitude <- "NA"
Red_Dun_Reef_serc_extra$Latitude <- "NA"
Red_Dun_Reef_serc_extra$Depth <- "NA"
Red_Dun_Reef_serc_extra$SST <- "NA"
Red_Dun_Reef_serc_extra$SSS <- "NA"
Red_Dun_Reef_serc_extra$Chl_a <- "NA"
Red_Dun_Reef_serc_extra$Phaeophyti <- "NA"
Red_Dun_Reef_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Red_Dun_Reef_ws_2018_all <- setcolorder(Red_Dun_Reef_ws_2018_all, names(Red_Dun_Reef_serc_extra))

## Merge all years together 

Red_Dun_Reef_all <- rbind(Red_Dun_Reef_serc_extra,Red_Dun_Reef_2015_all,Red_Dun_Reef_2016_all,Red_Dun_Reef_2017_all,Red_Dun_Reef_ws_2018_all)
Red_Dun_Reef_all$sitename <- "Red_Dun_Reef"

export(Red_Dun_Reef_all,"LK_10km/Red_Dun_Reef_combined.csv")



Rock_Key_Deep_serc <- import("LK_10km/Rock_Key_Deep_serc.xls")
Rock_Key_Deep_ws <- import("LK_10km/Rock_Key_Deep_ws.xls")

## Change date to Year to merge the two dataframes

Rock_Key_Deep_serc_date <- format(as.Date(Rock_Key_Deep_serc$DATE_, format = "%Y %m %d"),"%Y")
Rock_Key_Deep_serc_frame <- data.frame(Rock_Key_Deep_serc_date)
Rock_Key_Deep_serc_year <- cbind(Rock_Key_Deep_serc_frame, Rock_Key_Deep_serc)
colnames(Rock_Key_Deep_serc_year)[1]<- "Year"
Rock_Key_Deep_serc_year$FID <- NULL
Rock_Key_Deep_serc_year$SURV <- NULL
Rock_Key_Deep_serc_year$BASIN <- NULL
Rock_Key_Deep_serc_year$SEGMENT <- NULL
Rock_Key_Deep_serc_year$ZONE_ <- NULL
Rock_Key_Deep_serc_year$TIME_ <- NULL
Rock_Key_Deep_serc_year$DATE_ <- NULL
Rock_Key_Deep_serc_year$STATION <- NULL
Rock_Key_Deep_serc_year$SITE <- NULL



Rock_Key_Deep_ws_date <- format(as.Date(Rock_Key_Deep_ws$Date_, format = "%Y %m %d"),"%Y")
Rock_Key_Deep_ws_frame <- data.frame(Rock_Key_Deep_ws_date)
Rock_Key_Deep_ws_year <- cbind(Rock_Key_Deep_ws_frame, Rock_Key_Deep_ws)
colnames(Rock_Key_Deep_ws_year)[1]<- "Year"
Rock_Key_Deep_ws_year$FID <- NULL
Rock_Key_Deep_ws_year$Station <- NULL
Rock_Key_Deep_ws_year$Date_ <- NULL
Rock_Key_Deep_ws_year$GMT <- NULL
Rock_Key_Deep_ws_year$Field11 <- NULL
Rock_Key_Deep_ws_year$Field12 <- NULL
Rock_Key_Deep_ws_year$Field13 <- NULL
Rock_Key_Deep_ws_year$Field14 <- NULL
Rock_Key_Deep_ws_year$Field15 <- NULL
Rock_Key_Deep_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Rock_Key_Deep_serc_year$Year)
unique(Rock_Key_Deep_ws_year$Year)



Rock_Key_Deep_serc_1998 <- subset(Rock_Key_Deep_serc_year, Year == "1998")
Rock_Key_Deep_serc_1998_merge <- Rock_Key_Deep_serc_1998 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_1998 <- subset(Rock_Key_Deep_ws_year, Year == "1998")
Rock_Key_Deep_ws_1998_merge <- Rock_Key_Deep_ws_1998 %>%
  mutate(id = row_number())

Rock_Key_Deep_1998_all <- full_join(Rock_Key_Deep_serc_1998_merge, Rock_Key_Deep_ws_1998_merge, by = c("Year","id"))


Rock_Key_Deep_serc_1999 <- subset(Rock_Key_Deep_serc_year, Year == "1999")
Rock_Key_Deep_serc_1999_merge <- Rock_Key_Deep_serc_1999 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_1999 <- subset(Rock_Key_Deep_ws_year, Year == "1999")
Rock_Key_Deep_ws_1999_merge <- Rock_Key_Deep_ws_1999 %>%
  mutate(id = row_number())

Rock_Key_Deep_1999_all <- full_join(Rock_Key_Deep_serc_1999_merge, Rock_Key_Deep_ws_1999_merge, by = c("Year","id"))


Rock_Key_Deep_serc_2000 <- subset(Rock_Key_Deep_serc_year, Year == "2000")
Rock_Key_Deep_serc_2000_merge <- Rock_Key_Deep_serc_2000 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2000 <- subset(Rock_Key_Deep_ws_year, Year == "2000")
Rock_Key_Deep_ws_2000_merge <- Rock_Key_Deep_ws_2000 %>%
  mutate(id = row_number())

Rock_Key_Deep_2000_all <- full_join(Rock_Key_Deep_serc_2000_merge, Rock_Key_Deep_ws_2000_merge, by = c("Year","id"))


Rock_Key_Deep_serc_2001 <- subset(Rock_Key_Deep_serc_year, Year == "2001")
Rock_Key_Deep_serc_2001_merge <- Rock_Key_Deep_serc_2001 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2001 <- subset(Rock_Key_Deep_ws_year, Year == "2001")
Rock_Key_Deep_ws_2001_merge <- Rock_Key_Deep_ws_2001 %>%
  mutate(id = row_number())

Rock_Key_Deep_2001_all <- full_join(Rock_Key_Deep_serc_2001_merge, Rock_Key_Deep_ws_2001_merge, by = c("Year","id"))


Rock_Key_Deep_serc_2002 <- subset(Rock_Key_Deep_serc_year, Year == "2002")
Rock_Key_Deep_serc_2002_merge <- Rock_Key_Deep_serc_2002 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2002 <- subset(Rock_Key_Deep_ws_year, Year == "2002")
Rock_Key_Deep_ws_2002_merge <- Rock_Key_Deep_ws_2002 %>%
  mutate(id = row_number())

Rock_Key_Deep_2002_all <- full_join(Rock_Key_Deep_serc_2002_merge, Rock_Key_Deep_ws_2002_merge, by = c("Year","id"))


Rock_Key_Deep_serc_2003 <- subset(Rock_Key_Deep_serc_year, Year == "2003")
Rock_Key_Deep_serc_2003_merge <- Rock_Key_Deep_serc_2003 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2003 <- subset(Rock_Key_Deep_ws_year, Year == "2003")
Rock_Key_Deep_ws_2003_merge <- Rock_Key_Deep_ws_2003 %>%
  mutate(id = row_number())

Rock_Key_Deep_2003_all <- full_join(Rock_Key_Deep_serc_2003_merge, Rock_Key_Deep_ws_2003_merge, by = c("Year","id"))


Rock_Key_Deep_serc_2004 <- subset(Rock_Key_Deep_serc_year, Year == "2004")
Rock_Key_Deep_serc_2004_merge <- Rock_Key_Deep_serc_2004 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2004 <- subset(Rock_Key_Deep_ws_year, Year == "2004")
Rock_Key_Deep_ws_2004_merge <- Rock_Key_Deep_ws_2004 %>%
  mutate(id = row_number())

Rock_Key_Deep_2004_all <- full_join(Rock_Key_Deep_serc_2004_merge, Rock_Key_Deep_ws_2004_merge, by = c("Year","id"))


Rock_Key_Deep_serc_2005 <- subset(Rock_Key_Deep_serc_year, Year == "2005")
Rock_Key_Deep_serc_2005_merge <- Rock_Key_Deep_serc_2005 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2005 <- subset(Rock_Key_Deep_ws_year, Year == "2005")
Rock_Key_Deep_ws_2005_merge <- Rock_Key_Deep_ws_2005 %>%
  mutate(id = row_number())

Rock_Key_Deep_2005_all <- full_join(Rock_Key_Deep_serc_2005_merge, Rock_Key_Deep_ws_2005_merge, by = c("Year","id"))


Rock_Key_Deep_serc_2006 <- subset(Rock_Key_Deep_serc_year, Year == "2006")
Rock_Key_Deep_serc_2006_merge <- Rock_Key_Deep_serc_2006 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2006 <- subset(Rock_Key_Deep_ws_year, Year == "2006")
Rock_Key_Deep_ws_2006_merge <- Rock_Key_Deep_ws_2006 %>%
  mutate(id = row_number())

Rock_Key_Deep_2006_all <- full_join(Rock_Key_Deep_serc_2006_merge, Rock_Key_Deep_ws_2006_merge, by = c("Year","id"))


Rock_Key_Deep_serc_2007 <- subset(Rock_Key_Deep_serc_year, Year == "2007")
Rock_Key_Deep_serc_2007_merge <- Rock_Key_Deep_serc_2007 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2007 <- subset(Rock_Key_Deep_ws_year, Year == "2007")
Rock_Key_Deep_ws_2007_merge <- Rock_Key_Deep_ws_2007 %>%
  mutate(id = row_number())

Rock_Key_Deep_2007_all <- full_join(Rock_Key_Deep_serc_2007_merge, Rock_Key_Deep_ws_2007_merge, by = c("Year","id"))


Rock_Key_Deep_serc_2008 <- subset(Rock_Key_Deep_serc_year, Year == "2008")
Rock_Key_Deep_serc_2008_merge <- Rock_Key_Deep_serc_2008 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2008 <- subset(Rock_Key_Deep_ws_year, Year == "2008")
Rock_Key_Deep_ws_2008_merge <- Rock_Key_Deep_ws_2008 %>%
  mutate(id = row_number())

Rock_Key_Deep_2008_all <- full_join(Rock_Key_Deep_serc_2008_merge, Rock_Key_Deep_ws_2008_merge, by = c("Year","id"))


Rock_Key_Deep_serc_2009 <- subset(Rock_Key_Deep_serc_year, Year == "2009")
Rock_Key_Deep_serc_2009_merge <- Rock_Key_Deep_serc_2009 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2009 <- subset(Rock_Key_Deep_ws_year, Year == "2009")
Rock_Key_Deep_ws_2009_merge <- Rock_Key_Deep_ws_2009 %>%
  mutate(id = row_number())

Rock_Key_Deep_2009_all <- full_join(Rock_Key_Deep_serc_2009_merge, Rock_Key_Deep_ws_2009_merge, by = c("Year","id"))


Rock_Key_Deep_serc_2010 <- subset(Rock_Key_Deep_serc_year, Year == "2010")
Rock_Key_Deep_serc_2010_merge <- Rock_Key_Deep_serc_2010 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2010 <- subset(Rock_Key_Deep_ws_year, Year == "2010")
Rock_Key_Deep_ws_2010_merge <- Rock_Key_Deep_ws_2010 %>%
  mutate(id = row_number())

Rock_Key_Deep_2010_all <- full_join(Rock_Key_Deep_serc_2010_merge, Rock_Key_Deep_ws_2010_merge, by = c("Year","id"))


Rock_Key_Deep_serc_2011 <- subset(Rock_Key_Deep_serc_year, Year == "2011")
Rock_Key_Deep_serc_2011_merge <- Rock_Key_Deep_serc_2011 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2011 <- subset(Rock_Key_Deep_ws_year, Year == "2011")
Rock_Key_Deep_ws_2011_merge <- Rock_Key_Deep_ws_2011 %>%
  mutate(id = row_number())

Rock_Key_Deep_2011_all <- full_join(Rock_Key_Deep_serc_2011_merge, Rock_Key_Deep_ws_2011_merge, by = c("Year","id"))


Rock_Key_Deep_serc_2012 <- subset(Rock_Key_Deep_serc_year, Year == "2012")
Rock_Key_Deep_serc_2012_merge <- Rock_Key_Deep_serc_2012 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2012 <- subset(Rock_Key_Deep_ws_year, Year == "2012")
Rock_Key_Deep_ws_2012_merge <- Rock_Key_Deep_ws_2012 %>%
  mutate(id = row_number())

Rock_Key_Deep_2012_all <- full_join(Rock_Key_Deep_serc_2012_merge, Rock_Key_Deep_ws_2012_merge, by = c("Year","id"))


Rock_Key_Deep_serc_2014 <- subset(Rock_Key_Deep_serc_year, Year == "2014")
Rock_Key_Deep_serc_2014_merge <- Rock_Key_Deep_serc_2014 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2014 <- subset(Rock_Key_Deep_ws_year, Year == "2014")
Rock_Key_Deep_ws_2014_merge <- Rock_Key_Deep_ws_2014 %>%
  mutate(id = row_number())

Rock_Key_Deep_2014_all <- full_join(Rock_Key_Deep_serc_2014_merge, Rock_Key_Deep_ws_2014_merge, by = c("Year","id"))


Rock_Key_Deep_serc_2015 <- subset(Rock_Key_Deep_serc_year, Year == "2015")
Rock_Key_Deep_serc_2015_merge <- Rock_Key_Deep_serc_2015 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2015 <- subset(Rock_Key_Deep_ws_year, Year == "2015")
Rock_Key_Deep_ws_2015_merge <- Rock_Key_Deep_ws_2015 %>%
  mutate(id = row_number())

Rock_Key_Deep_2015_all <- full_join(Rock_Key_Deep_serc_2015_merge, Rock_Key_Deep_ws_2015_merge, by = c("Year","id"))


Rock_Key_Deep_serc_2016 <- subset(Rock_Key_Deep_serc_year, Year == "2016")
Rock_Key_Deep_serc_2016_merge <- Rock_Key_Deep_serc_2016 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2016 <- subset(Rock_Key_Deep_ws_year, Year == "2016")
Rock_Key_Deep_ws_2016_merge <- Rock_Key_Deep_ws_2016 %>%
  mutate(id = row_number())

Rock_Key_Deep_2016_all <- full_join(Rock_Key_Deep_serc_2016_merge, Rock_Key_Deep_ws_2016_merge, by = c("Year","id"))



Rock_Key_Deep_serc_2017 <- subset(Rock_Key_Deep_serc_year, Year == "2017")
Rock_Key_Deep_serc_2017_merge <- Rock_Key_Deep_serc_2017 %>%
  mutate(id = row_number())

Rock_Key_Deep_ws_2017 <- subset(Rock_Key_Deep_ws_year, Year == "2017")
Rock_Key_Deep_ws_2017_merge <- Rock_Key_Deep_ws_2017 %>%
  mutate(id = row_number())

Rock_Key_Deep_2017_all <- full_join(Rock_Key_Deep_serc_2017_merge, Rock_Key_Deep_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Rock_Key_Deep_ws_2018_all <- subset(Rock_Key_Deep_ws_year, Year == "2018") 

## adding extra columns to merge 

Rock_Key_Deep_ws_2018_all$LATDEC <- "NA"
Rock_Key_Deep_ws_2018_all$LONDEC <- "NA"
Rock_Key_Deep_ws_2018_all$DEPTH <- "NA"
Rock_Key_Deep_ws_2018_all$NOX_S <- "NA"
Rock_Key_Deep_ws_2018_all$NOX_B <- "NA"
Rock_Key_Deep_ws_2018_all$NO3_S <- "NA"
Rock_Key_Deep_ws_2018_all$NO3_B <- "NA"
Rock_Key_Deep_ws_2018_all$NO2_S <- "NA"
Rock_Key_Deep_ws_2018_all$NO2_B <- "NA"
Rock_Key_Deep_ws_2018_all$NH4_S <- "NA"
Rock_Key_Deep_ws_2018_all$NH4_B <- "NA"
Rock_Key_Deep_ws_2018_all$TN_S <- "NA"
Rock_Key_Deep_ws_2018_all$TN_B <- "NA"
Rock_Key_Deep_ws_2018_all$DIN_S <- "NA"
Rock_Key_Deep_ws_2018_all$DIN_B <- "NA"
Rock_Key_Deep_ws_2018_all$TON_S <- "NA"
Rock_Key_Deep_ws_2018_all$TON_B <- "NA"
Rock_Key_Deep_ws_2018_all$TP_S <- "NA"
Rock_Key_Deep_ws_2018_all$TP_B <- "NA"
Rock_Key_Deep_ws_2018_all$SRP_S <- "NA"
Rock_Key_Deep_ws_2018_all$SRP_B <- "NA"
Rock_Key_Deep_ws_2018_all$APA_S <- "NA"
Rock_Key_Deep_ws_2018_all$APA_B <- "NA"
Rock_Key_Deep_ws_2018_all$CHLA_S <- "NA"
Rock_Key_Deep_ws_2018_all$CHLA_B <- "NA"
Rock_Key_Deep_ws_2018_all$TOC_S <- "NA"
Rock_Key_Deep_ws_2018_all$TOC_B <- "NA"
Rock_Key_Deep_ws_2018_all$SiO2_S <- "NA"
Rock_Key_Deep_ws_2018_all$SiO2_B <- "NA"
Rock_Key_Deep_ws_2018_all$TURB_S <- "NA"
Rock_Key_Deep_ws_2018_all$TURB_B <- "NA"
Rock_Key_Deep_ws_2018_all$SAL_S <- "NA"
Rock_Key_Deep_ws_2018_all$SAL_B <- "NA"
Rock_Key_Deep_ws_2018_all$TEMP_S <- "NA"
Rock_Key_Deep_ws_2018_all$TEMP_B <- "NA"
Rock_Key_Deep_ws_2018_all$DO_S <- "NA"
Rock_Key_Deep_ws_2018_all$DO_B <- "NA"
Rock_Key_Deep_ws_2018_all$Kd <- "NA"
Rock_Key_Deep_ws_2018_all$pH <- "NA"
Rock_Key_Deep_ws_2018_all$TN_TP <- "NA"
Rock_Key_Deep_ws_2018_all$N_P <- "NA"
Rock_Key_Deep_ws_2018_all$DIN_TP <- "NA"
Rock_Key_Deep_ws_2018_all$Si_DIN <- "NA"
Rock_Key_Deep_ws_2018_all$F_SAT_S <- "NA"
Rock_Key_Deep_ws_2018_all$F_SAT_B <- "NA"
Rock_Key_Deep_ws_2018_all$F_Io <- "NA"
Rock_Key_Deep_ws_2018_all$DSIGT <- "NA"
Rock_Key_Deep_ws_2018_all$id <- "NA"







## rest of the serc data
Rock_Key_Deep_serc_1995 <- subset(Rock_Key_Deep_serc_year, Year == "1995")
Rock_Key_Deep_serc_1996 <- subset(Rock_Key_Deep_serc_year, Year == "1996")
Rock_Key_Deep_serc_1997 <- subset(Rock_Key_Deep_serc_year, Year == "1997")
# Rock_Key_Deep_serc_1998 <- subset(Rock_Key_Deep_serc_year, Year == "1998")
# Rock_Key_Deep_serc_1999 <- subset(Rock_Key_Deep_serc_year, Year == "1999")
# Rock_Key_Deep_serc_2000 <- subset(Rock_Key_Deep_serc_year, Year == "2000")
# Rock_Key_Deep_serc_2001 <- subset(Rock_Key_Deep_serc_year, Year == "2001")
Rock_Key_Deep_serc_2013 <- subset(Rock_Key_Deep_serc_year, Year == "2013")



Rock_Key_Deep_serc_extra <- rbind(Rock_Key_Deep_serc_1995,Rock_Key_Deep_serc_1996,Rock_Key_Deep_serc_1997,Rock_Key_Deep_serc_2013)




Rock_Key_Deep_serc_extra$Longitude <- "NA"
Rock_Key_Deep_serc_extra$Latitude <- "NA"
Rock_Key_Deep_serc_extra$Depth <- "NA"
Rock_Key_Deep_serc_extra$SST <- "NA"
Rock_Key_Deep_serc_extra$SSS <- "NA"
Rock_Key_Deep_serc_extra$Chl_a <- "NA"
Rock_Key_Deep_serc_extra$Phaeophyti <- "NA"
Rock_Key_Deep_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Rock_Key_Deep_ws_2018_all <- setcolorder(Rock_Key_Deep_ws_2018_all, names(Rock_Key_Deep_serc_extra))

## Merge all years together 

Rock_Key_Deep_all <- rbind(Rock_Key_Deep_serc_extra,Rock_Key_Deep_1998_all,Rock_Key_Deep_1999_all,Rock_Key_Deep_2000_all,Rock_Key_Deep_2001_all,Rock_Key_Deep_2002_all,Rock_Key_Deep_2003_all,Rock_Key_Deep_2004_all, Rock_Key_Deep_2005_all,Rock_Key_Deep_2006_all,Rock_Key_Deep_2007_all,Rock_Key_Deep_2008_all,Rock_Key_Deep_2009_all,Rock_Key_Deep_2010_all,Rock_Key_Deep_2011_all,Rock_Key_Deep_2012_all,Rock_Key_Deep_2014_all,Rock_Key_Deep_2015_all,Rock_Key_Deep_2016_all,Rock_Key_Deep_2017_all,Rock_Key_Deep_ws_2018_all)
Rock_Key_Deep_all$sitename <- "Rock_Key_Deep"

export(Rock_Key_Deep_all,"LK_10km/Rock_Key_Deep_combined.csv")



Rock_Key_Shallow_serc <- import("LK_10km/Rock_Key_Shallow_serc.xls")
Rock_Key_Shallow_ws <- import("LK_10km/Rock_Key_Shallow_ws.xls")

## Change date to Year to merge the two dataframes

Rock_Key_Shallow_serc_date <- format(as.Date(Rock_Key_Shallow_serc$DATE_, format = "%Y %m %d"),"%Y")
Rock_Key_Shallow_serc_frame <- data.frame(Rock_Key_Shallow_serc_date)
Rock_Key_Shallow_serc_year <- cbind(Rock_Key_Shallow_serc_frame, Rock_Key_Shallow_serc)
colnames(Rock_Key_Shallow_serc_year)[1]<- "Year"
Rock_Key_Shallow_serc_year$FID <- NULL
Rock_Key_Shallow_serc_year$SURV <- NULL
Rock_Key_Shallow_serc_year$BASIN <- NULL
Rock_Key_Shallow_serc_year$SEGMENT <- NULL
Rock_Key_Shallow_serc_year$ZONE_ <- NULL
Rock_Key_Shallow_serc_year$TIME_ <- NULL
Rock_Key_Shallow_serc_year$DATE_ <- NULL
Rock_Key_Shallow_serc_year$STATION <- NULL
Rock_Key_Shallow_serc_year$SITE <- NULL



Rock_Key_Shallow_ws_date <- format(as.Date(Rock_Key_Shallow_ws$Date_, format = "%Y %m %d"),"%Y")
Rock_Key_Shallow_ws_frame <- data.frame(Rock_Key_Shallow_ws_date)
Rock_Key_Shallow_ws_year <- cbind(Rock_Key_Shallow_ws_frame, Rock_Key_Shallow_ws)
colnames(Rock_Key_Shallow_ws_year)[1]<- "Year"
Rock_Key_Shallow_ws_year$FID <- NULL
Rock_Key_Shallow_ws_year$Station <- NULL
Rock_Key_Shallow_ws_year$Date_ <- NULL
Rock_Key_Shallow_ws_year$GMT <- NULL
Rock_Key_Shallow_ws_year$Field11 <- NULL
Rock_Key_Shallow_ws_year$Field12 <- NULL
Rock_Key_Shallow_ws_year$Field13 <- NULL
Rock_Key_Shallow_ws_year$Field14 <- NULL
Rock_Key_Shallow_ws_year$Field15 <- NULL
Rock_Key_Shallow_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Rock_Key_Shallow_serc_year$Year)
unique(Rock_Key_Shallow_ws_year$Year)



Rock_Key_Shallow_serc_1998 <- subset(Rock_Key_Shallow_serc_year, Year == "1998")
Rock_Key_Shallow_serc_1998_merge <- Rock_Key_Shallow_serc_1998 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_1998 <- subset(Rock_Key_Shallow_ws_year, Year == "1998")
Rock_Key_Shallow_ws_1998_merge <- Rock_Key_Shallow_ws_1998 %>%
  mutate(id = row_number())

Rock_Key_Shallow_1998_all <- full_join(Rock_Key_Shallow_serc_1998_merge, Rock_Key_Shallow_ws_1998_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_1999 <- subset(Rock_Key_Shallow_serc_year, Year == "1999")
Rock_Key_Shallow_serc_1999_merge <- Rock_Key_Shallow_serc_1999 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_1999 <- subset(Rock_Key_Shallow_ws_year, Year == "1999")
Rock_Key_Shallow_ws_1999_merge <- Rock_Key_Shallow_ws_1999 %>%
  mutate(id = row_number())

Rock_Key_Shallow_1999_all <- full_join(Rock_Key_Shallow_serc_1999_merge, Rock_Key_Shallow_ws_1999_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_2000 <- subset(Rock_Key_Shallow_serc_year, Year == "2000")
Rock_Key_Shallow_serc_2000_merge <- Rock_Key_Shallow_serc_2000 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2000 <- subset(Rock_Key_Shallow_ws_year, Year == "2000")
Rock_Key_Shallow_ws_2000_merge <- Rock_Key_Shallow_ws_2000 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2000_all <- full_join(Rock_Key_Shallow_serc_2000_merge, Rock_Key_Shallow_ws_2000_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_2001 <- subset(Rock_Key_Shallow_serc_year, Year == "2001")
Rock_Key_Shallow_serc_2001_merge <- Rock_Key_Shallow_serc_2001 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2001 <- subset(Rock_Key_Shallow_ws_year, Year == "2001")
Rock_Key_Shallow_ws_2001_merge <- Rock_Key_Shallow_ws_2001 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2001_all <- full_join(Rock_Key_Shallow_serc_2001_merge, Rock_Key_Shallow_ws_2001_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_2002 <- subset(Rock_Key_Shallow_serc_year, Year == "2002")
Rock_Key_Shallow_serc_2002_merge <- Rock_Key_Shallow_serc_2002 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2002 <- subset(Rock_Key_Shallow_ws_year, Year == "2002")
Rock_Key_Shallow_ws_2002_merge <- Rock_Key_Shallow_ws_2002 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2002_all <- full_join(Rock_Key_Shallow_serc_2002_merge, Rock_Key_Shallow_ws_2002_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_2003 <- subset(Rock_Key_Shallow_serc_year, Year == "2003")
Rock_Key_Shallow_serc_2003_merge <- Rock_Key_Shallow_serc_2003 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2003 <- subset(Rock_Key_Shallow_ws_year, Year == "2003")
Rock_Key_Shallow_ws_2003_merge <- Rock_Key_Shallow_ws_2003 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2003_all <- full_join(Rock_Key_Shallow_serc_2003_merge, Rock_Key_Shallow_ws_2003_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_2004 <- subset(Rock_Key_Shallow_serc_year, Year == "2004")
Rock_Key_Shallow_serc_2004_merge <- Rock_Key_Shallow_serc_2004 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2004 <- subset(Rock_Key_Shallow_ws_year, Year == "2004")
Rock_Key_Shallow_ws_2004_merge <- Rock_Key_Shallow_ws_2004 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2004_all <- full_join(Rock_Key_Shallow_serc_2004_merge, Rock_Key_Shallow_ws_2004_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_2005 <- subset(Rock_Key_Shallow_serc_year, Year == "2005")
Rock_Key_Shallow_serc_2005_merge <- Rock_Key_Shallow_serc_2005 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2005 <- subset(Rock_Key_Shallow_ws_year, Year == "2005")
Rock_Key_Shallow_ws_2005_merge <- Rock_Key_Shallow_ws_2005 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2005_all <- full_join(Rock_Key_Shallow_serc_2005_merge, Rock_Key_Shallow_ws_2005_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_2006 <- subset(Rock_Key_Shallow_serc_year, Year == "2006")
Rock_Key_Shallow_serc_2006_merge <- Rock_Key_Shallow_serc_2006 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2006 <- subset(Rock_Key_Shallow_ws_year, Year == "2006")
Rock_Key_Shallow_ws_2006_merge <- Rock_Key_Shallow_ws_2006 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2006_all <- full_join(Rock_Key_Shallow_serc_2006_merge, Rock_Key_Shallow_ws_2006_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_2007 <- subset(Rock_Key_Shallow_serc_year, Year == "2007")
Rock_Key_Shallow_serc_2007_merge <- Rock_Key_Shallow_serc_2007 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2007 <- subset(Rock_Key_Shallow_ws_year, Year == "2007")
Rock_Key_Shallow_ws_2007_merge <- Rock_Key_Shallow_ws_2007 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2007_all <- full_join(Rock_Key_Shallow_serc_2007_merge, Rock_Key_Shallow_ws_2007_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_2008 <- subset(Rock_Key_Shallow_serc_year, Year == "2008")
Rock_Key_Shallow_serc_2008_merge <- Rock_Key_Shallow_serc_2008 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2008 <- subset(Rock_Key_Shallow_ws_year, Year == "2008")
Rock_Key_Shallow_ws_2008_merge <- Rock_Key_Shallow_ws_2008 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2008_all <- full_join(Rock_Key_Shallow_serc_2008_merge, Rock_Key_Shallow_ws_2008_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_2009 <- subset(Rock_Key_Shallow_serc_year, Year == "2009")
Rock_Key_Shallow_serc_2009_merge <- Rock_Key_Shallow_serc_2009 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2009 <- subset(Rock_Key_Shallow_ws_year, Year == "2009")
Rock_Key_Shallow_ws_2009_merge <- Rock_Key_Shallow_ws_2009 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2009_all <- full_join(Rock_Key_Shallow_serc_2009_merge, Rock_Key_Shallow_ws_2009_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_2010 <- subset(Rock_Key_Shallow_serc_year, Year == "2010")
Rock_Key_Shallow_serc_2010_merge <- Rock_Key_Shallow_serc_2010 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2010 <- subset(Rock_Key_Shallow_ws_year, Year == "2010")
Rock_Key_Shallow_ws_2010_merge <- Rock_Key_Shallow_ws_2010 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2010_all <- full_join(Rock_Key_Shallow_serc_2010_merge, Rock_Key_Shallow_ws_2010_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_2011 <- subset(Rock_Key_Shallow_serc_year, Year == "2011")
Rock_Key_Shallow_serc_2011_merge <- Rock_Key_Shallow_serc_2011 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2011 <- subset(Rock_Key_Shallow_ws_year, Year == "2011")
Rock_Key_Shallow_ws_2011_merge <- Rock_Key_Shallow_ws_2011 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2011_all <- full_join(Rock_Key_Shallow_serc_2011_merge, Rock_Key_Shallow_ws_2011_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_2012 <- subset(Rock_Key_Shallow_serc_year, Year == "2012")
Rock_Key_Shallow_serc_2012_merge <- Rock_Key_Shallow_serc_2012 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2012 <- subset(Rock_Key_Shallow_ws_year, Year == "2012")
Rock_Key_Shallow_ws_2012_merge <- Rock_Key_Shallow_ws_2012 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2012_all <- full_join(Rock_Key_Shallow_serc_2012_merge, Rock_Key_Shallow_ws_2012_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_2014 <- subset(Rock_Key_Shallow_serc_year, Year == "2014")
Rock_Key_Shallow_serc_2014_merge <- Rock_Key_Shallow_serc_2014 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2014 <- subset(Rock_Key_Shallow_ws_year, Year == "2014")
Rock_Key_Shallow_ws_2014_merge <- Rock_Key_Shallow_ws_2014 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2014_all <- full_join(Rock_Key_Shallow_serc_2014_merge, Rock_Key_Shallow_ws_2014_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_2015 <- subset(Rock_Key_Shallow_serc_year, Year == "2015")
Rock_Key_Shallow_serc_2015_merge <- Rock_Key_Shallow_serc_2015 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2015 <- subset(Rock_Key_Shallow_ws_year, Year == "2015")
Rock_Key_Shallow_ws_2015_merge <- Rock_Key_Shallow_ws_2015 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2015_all <- full_join(Rock_Key_Shallow_serc_2015_merge, Rock_Key_Shallow_ws_2015_merge, by = c("Year","id"))


Rock_Key_Shallow_serc_2016 <- subset(Rock_Key_Shallow_serc_year, Year == "2016")
Rock_Key_Shallow_serc_2016_merge <- Rock_Key_Shallow_serc_2016 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2016 <- subset(Rock_Key_Shallow_ws_year, Year == "2016")
Rock_Key_Shallow_ws_2016_merge <- Rock_Key_Shallow_ws_2016 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2016_all <- full_join(Rock_Key_Shallow_serc_2016_merge, Rock_Key_Shallow_ws_2016_merge, by = c("Year","id"))



Rock_Key_Shallow_serc_2017 <- subset(Rock_Key_Shallow_serc_year, Year == "2017")
Rock_Key_Shallow_serc_2017_merge <- Rock_Key_Shallow_serc_2017 %>%
  mutate(id = row_number())

Rock_Key_Shallow_ws_2017 <- subset(Rock_Key_Shallow_ws_year, Year == "2017")
Rock_Key_Shallow_ws_2017_merge <- Rock_Key_Shallow_ws_2017 %>%
  mutate(id = row_number())

Rock_Key_Shallow_2017_all <- full_join(Rock_Key_Shallow_serc_2017_merge, Rock_Key_Shallow_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Rock_Key_Shallow_ws_2018_all <- subset(Rock_Key_Shallow_ws_year, Year == "2018") 

## adding extra columns to merge 

Rock_Key_Shallow_ws_2018_all$LATDEC <- "NA"
Rock_Key_Shallow_ws_2018_all$LONDEC <- "NA"
Rock_Key_Shallow_ws_2018_all$DEPTH <- "NA"
Rock_Key_Shallow_ws_2018_all$NOX_S <- "NA"
Rock_Key_Shallow_ws_2018_all$NOX_B <- "NA"
Rock_Key_Shallow_ws_2018_all$NO3_S <- "NA"
Rock_Key_Shallow_ws_2018_all$NO3_B <- "NA"
Rock_Key_Shallow_ws_2018_all$NO2_S <- "NA"
Rock_Key_Shallow_ws_2018_all$NO2_B <- "NA"
Rock_Key_Shallow_ws_2018_all$NH4_S <- "NA"
Rock_Key_Shallow_ws_2018_all$NH4_B <- "NA"
Rock_Key_Shallow_ws_2018_all$TN_S <- "NA"
Rock_Key_Shallow_ws_2018_all$TN_B <- "NA"
Rock_Key_Shallow_ws_2018_all$DIN_S <- "NA"
Rock_Key_Shallow_ws_2018_all$DIN_B <- "NA"
Rock_Key_Shallow_ws_2018_all$TON_S <- "NA"
Rock_Key_Shallow_ws_2018_all$TON_B <- "NA"
Rock_Key_Shallow_ws_2018_all$TP_S <- "NA"
Rock_Key_Shallow_ws_2018_all$TP_B <- "NA"
Rock_Key_Shallow_ws_2018_all$SRP_S <- "NA"
Rock_Key_Shallow_ws_2018_all$SRP_B <- "NA"
Rock_Key_Shallow_ws_2018_all$APA_S <- "NA"
Rock_Key_Shallow_ws_2018_all$APA_B <- "NA"
Rock_Key_Shallow_ws_2018_all$CHLA_S <- "NA"
Rock_Key_Shallow_ws_2018_all$CHLA_B <- "NA"
Rock_Key_Shallow_ws_2018_all$TOC_S <- "NA"
Rock_Key_Shallow_ws_2018_all$TOC_B <- "NA"
Rock_Key_Shallow_ws_2018_all$SiO2_S <- "NA"
Rock_Key_Shallow_ws_2018_all$SiO2_B <- "NA"
Rock_Key_Shallow_ws_2018_all$TURB_S <- "NA"
Rock_Key_Shallow_ws_2018_all$TURB_B <- "NA"
Rock_Key_Shallow_ws_2018_all$SAL_S <- "NA"
Rock_Key_Shallow_ws_2018_all$SAL_B <- "NA"
Rock_Key_Shallow_ws_2018_all$TEMP_S <- "NA"
Rock_Key_Shallow_ws_2018_all$TEMP_B <- "NA"
Rock_Key_Shallow_ws_2018_all$DO_S <- "NA"
Rock_Key_Shallow_ws_2018_all$DO_B <- "NA"
Rock_Key_Shallow_ws_2018_all$Kd <- "NA"
Rock_Key_Shallow_ws_2018_all$pH <- "NA"
Rock_Key_Shallow_ws_2018_all$TN_TP <- "NA"
Rock_Key_Shallow_ws_2018_all$N_P <- "NA"
Rock_Key_Shallow_ws_2018_all$DIN_TP <- "NA"
Rock_Key_Shallow_ws_2018_all$Si_DIN <- "NA"
Rock_Key_Shallow_ws_2018_all$F_SAT_S <- "NA"
Rock_Key_Shallow_ws_2018_all$F_SAT_B <- "NA"
Rock_Key_Shallow_ws_2018_all$F_Io <- "NA"
Rock_Key_Shallow_ws_2018_all$DSIGT <- "NA"
Rock_Key_Shallow_ws_2018_all$id <- "NA"







## rest of the serc data
Rock_Key_Shallow_serc_1995 <- subset(Rock_Key_Shallow_serc_year, Year == "1995")
Rock_Key_Shallow_serc_1996 <- subset(Rock_Key_Shallow_serc_year, Year == "1996")
Rock_Key_Shallow_serc_1997 <- subset(Rock_Key_Shallow_serc_year, Year == "1997")
# Rock_Key_Shallow_serc_1998 <- subset(Rock_Key_Shallow_serc_year, Year == "1998")
# Rock_Key_Shallow_serc_1999 <- subset(Rock_Key_Shallow_serc_year, Year == "1999")
# Rock_Key_Shallow_serc_2000 <- subset(Rock_Key_Shallow_serc_year, Year == "2000")
# Rock_Key_Shallow_serc_2001 <- subset(Rock_Key_Shallow_serc_year, Year == "2001")
Rock_Key_Shallow_serc_2013 <- subset(Rock_Key_Shallow_serc_year, Year == "2013")



Rock_Key_Shallow_serc_extra <- rbind(Rock_Key_Shallow_serc_1995,Rock_Key_Shallow_serc_1996,Rock_Key_Shallow_serc_1997,Rock_Key_Shallow_serc_2013)




Rock_Key_Shallow_serc_extra$Longitude <- "NA"
Rock_Key_Shallow_serc_extra$Latitude <- "NA"
Rock_Key_Shallow_serc_extra$Depth <- "NA"
Rock_Key_Shallow_serc_extra$SST <- "NA"
Rock_Key_Shallow_serc_extra$SSS <- "NA"
Rock_Key_Shallow_serc_extra$Chl_a <- "NA"
Rock_Key_Shallow_serc_extra$Phaeophyti <- "NA"
Rock_Key_Shallow_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Rock_Key_Shallow_ws_2018_all <- setcolorder(Rock_Key_Shallow_ws_2018_all, names(Rock_Key_Shallow_serc_extra))

## Merge all years together 

Rock_Key_Shallow_all <- rbind(Rock_Key_Shallow_serc_extra,Rock_Key_Shallow_1998_all,Rock_Key_Shallow_1999_all,Rock_Key_Shallow_2000_all,Rock_Key_Shallow_2001_all,Rock_Key_Shallow_2002_all,Rock_Key_Shallow_2003_all,Rock_Key_Shallow_2004_all, Rock_Key_Shallow_2005_all,Rock_Key_Shallow_2006_all,Rock_Key_Shallow_2007_all,Rock_Key_Shallow_2008_all,Rock_Key_Shallow_2009_all,Rock_Key_Shallow_2010_all,Rock_Key_Shallow_2011_all,Rock_Key_Shallow_2012_all,Rock_Key_Shallow_2014_all,Rock_Key_Shallow_2015_all,Rock_Key_Shallow_2016_all,Rock_Key_Shallow_2017_all,Rock_Key_Shallow_ws_2018_all)
Rock_Key_Shallow_all$sitename <- "Rock_Key_Shallow"

export(Rock_Key_Shallow_all,"LK_10km/Rock_Key_Shallow_combined.csv")



Sand_Key_Deep_serc <- import("LK_10km/Sand_Key_Deep_serc.xls")
Sand_Key_Deep_ws <- import("LK_10km/Sand_Key_Deep_ws.xls")

## Change date to Year to merge the two dataframes

Sand_Key_Deep_serc_date <- format(as.Date(Sand_Key_Deep_serc$DATE_, format = "%Y %m %d"),"%Y")
Sand_Key_Deep_serc_frame <- data.frame(Sand_Key_Deep_serc_date)
Sand_Key_Deep_serc_year <- cbind(Sand_Key_Deep_serc_frame, Sand_Key_Deep_serc)
colnames(Sand_Key_Deep_serc_year)[1]<- "Year"
Sand_Key_Deep_serc_year$FID <- NULL
Sand_Key_Deep_serc_year$SURV <- NULL
Sand_Key_Deep_serc_year$BASIN <- NULL
Sand_Key_Deep_serc_year$SEGMENT <- NULL
Sand_Key_Deep_serc_year$ZONE_ <- NULL
Sand_Key_Deep_serc_year$TIME_ <- NULL
Sand_Key_Deep_serc_year$DATE_ <- NULL
Sand_Key_Deep_serc_year$STATION <- NULL
Sand_Key_Deep_serc_year$SITE <- NULL



Sand_Key_Deep_ws_date <- format(as.Date(Sand_Key_Deep_ws$Date_, format = "%Y %m %d"),"%Y")
Sand_Key_Deep_ws_frame <- data.frame(Sand_Key_Deep_ws_date)
Sand_Key_Deep_ws_year <- cbind(Sand_Key_Deep_ws_frame, Sand_Key_Deep_ws)
colnames(Sand_Key_Deep_ws_year)[1]<- "Year"
Sand_Key_Deep_ws_year$FID <- NULL
Sand_Key_Deep_ws_year$Station <- NULL
Sand_Key_Deep_ws_year$Date_ <- NULL
Sand_Key_Deep_ws_year$GMT <- NULL
Sand_Key_Deep_ws_year$Field11 <- NULL
Sand_Key_Deep_ws_year$Field12 <- NULL
Sand_Key_Deep_ws_year$Field13 <- NULL
Sand_Key_Deep_ws_year$Field14 <- NULL
Sand_Key_Deep_ws_year$Field15 <- NULL
Sand_Key_Deep_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Sand_Key_Deep_serc_year$Year)
unique(Sand_Key_Deep_ws_year$Year)


Sand_Key_Deep_serc_1998 <- subset(Sand_Key_Deep_serc_year, Year == "1998")
Sand_Key_Deep_serc_1998_merge <- Sand_Key_Deep_serc_1998 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_1998 <- subset(Sand_Key_Deep_ws_year, Year == "1998")
Sand_Key_Deep_ws_1998_merge <- Sand_Key_Deep_ws_1998 %>%
  mutate(id = row_number())

Sand_Key_Deep_1998_all <- full_join(Sand_Key_Deep_serc_1998_merge, Sand_Key_Deep_ws_1998_merge, by = c("Year","id"))


Sand_Key_Deep_serc_1999 <- subset(Sand_Key_Deep_serc_year, Year == "1999")
Sand_Key_Deep_serc_1999_merge <- Sand_Key_Deep_serc_1999 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_1999 <- subset(Sand_Key_Deep_ws_year, Year == "1999")
Sand_Key_Deep_ws_1999_merge <- Sand_Key_Deep_ws_1999 %>%
  mutate(id = row_number())

Sand_Key_Deep_1999_all <- full_join(Sand_Key_Deep_serc_1999_merge, Sand_Key_Deep_ws_1999_merge, by = c("Year","id"))


Sand_Key_Deep_serc_2000 <- subset(Sand_Key_Deep_serc_year, Year == "2000")
Sand_Key_Deep_serc_2000_merge <- Sand_Key_Deep_serc_2000 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2000 <- subset(Sand_Key_Deep_ws_year, Year == "2000")
Sand_Key_Deep_ws_2000_merge <- Sand_Key_Deep_ws_2000 %>%
  mutate(id = row_number())

Sand_Key_Deep_2000_all <- full_join(Sand_Key_Deep_serc_2000_merge, Sand_Key_Deep_ws_2000_merge, by = c("Year","id"))


Sand_Key_Deep_serc_2001 <- subset(Sand_Key_Deep_serc_year, Year == "2001")
Sand_Key_Deep_serc_2001_merge <- Sand_Key_Deep_serc_2001 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2001 <- subset(Sand_Key_Deep_ws_year, Year == "2001")
Sand_Key_Deep_ws_2001_merge <- Sand_Key_Deep_ws_2001 %>%
  mutate(id = row_number())

Sand_Key_Deep_2001_all <- full_join(Sand_Key_Deep_serc_2001_merge, Sand_Key_Deep_ws_2001_merge, by = c("Year","id"))


Sand_Key_Deep_serc_2002 <- subset(Sand_Key_Deep_serc_year, Year == "2002")
Sand_Key_Deep_serc_2002_merge <- Sand_Key_Deep_serc_2002 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2002 <- subset(Sand_Key_Deep_ws_year, Year == "2002")
Sand_Key_Deep_ws_2002_merge <- Sand_Key_Deep_ws_2002 %>%
  mutate(id = row_number())

Sand_Key_Deep_2002_all <- full_join(Sand_Key_Deep_serc_2002_merge, Sand_Key_Deep_ws_2002_merge, by = c("Year","id"))


Sand_Key_Deep_serc_2003 <- subset(Sand_Key_Deep_serc_year, Year == "2003")
Sand_Key_Deep_serc_2003_merge <- Sand_Key_Deep_serc_2003 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2003 <- subset(Sand_Key_Deep_ws_year, Year == "2003")
Sand_Key_Deep_ws_2003_merge <- Sand_Key_Deep_ws_2003 %>%
  mutate(id = row_number())

Sand_Key_Deep_2003_all <- full_join(Sand_Key_Deep_serc_2003_merge, Sand_Key_Deep_ws_2003_merge, by = c("Year","id"))


Sand_Key_Deep_serc_2004 <- subset(Sand_Key_Deep_serc_year, Year == "2004")
Sand_Key_Deep_serc_2004_merge <- Sand_Key_Deep_serc_2004 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2004 <- subset(Sand_Key_Deep_ws_year, Year == "2004")
Sand_Key_Deep_ws_2004_merge <- Sand_Key_Deep_ws_2004 %>%
  mutate(id = row_number())

Sand_Key_Deep_2004_all <- full_join(Sand_Key_Deep_serc_2004_merge, Sand_Key_Deep_ws_2004_merge, by = c("Year","id"))


Sand_Key_Deep_serc_2005 <- subset(Sand_Key_Deep_serc_year, Year == "2005")
Sand_Key_Deep_serc_2005_merge <- Sand_Key_Deep_serc_2005 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2005 <- subset(Sand_Key_Deep_ws_year, Year == "2005")
Sand_Key_Deep_ws_2005_merge <- Sand_Key_Deep_ws_2005 %>%
  mutate(id = row_number())

Sand_Key_Deep_2005_all <- full_join(Sand_Key_Deep_serc_2005_merge, Sand_Key_Deep_ws_2005_merge, by = c("Year","id"))


Sand_Key_Deep_serc_2006 <- subset(Sand_Key_Deep_serc_year, Year == "2006")
Sand_Key_Deep_serc_2006_merge <- Sand_Key_Deep_serc_2006 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2006 <- subset(Sand_Key_Deep_ws_year, Year == "2006")
Sand_Key_Deep_ws_2006_merge <- Sand_Key_Deep_ws_2006 %>%
  mutate(id = row_number())

Sand_Key_Deep_2006_all <- full_join(Sand_Key_Deep_serc_2006_merge, Sand_Key_Deep_ws_2006_merge, by = c("Year","id"))


Sand_Key_Deep_serc_2007 <- subset(Sand_Key_Deep_serc_year, Year == "2007")
Sand_Key_Deep_serc_2007_merge <- Sand_Key_Deep_serc_2007 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2007 <- subset(Sand_Key_Deep_ws_year, Year == "2007")
Sand_Key_Deep_ws_2007_merge <- Sand_Key_Deep_ws_2007 %>%
  mutate(id = row_number())

Sand_Key_Deep_2007_all <- full_join(Sand_Key_Deep_serc_2007_merge, Sand_Key_Deep_ws_2007_merge, by = c("Year","id"))


Sand_Key_Deep_serc_2008 <- subset(Sand_Key_Deep_serc_year, Year == "2008")
Sand_Key_Deep_serc_2008_merge <- Sand_Key_Deep_serc_2008 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2008 <- subset(Sand_Key_Deep_ws_year, Year == "2008")
Sand_Key_Deep_ws_2008_merge <- Sand_Key_Deep_ws_2008 %>%
  mutate(id = row_number())

Sand_Key_Deep_2008_all <- full_join(Sand_Key_Deep_serc_2008_merge, Sand_Key_Deep_ws_2008_merge, by = c("Year","id"))


Sand_Key_Deep_serc_2009 <- subset(Sand_Key_Deep_serc_year, Year == "2009")
Sand_Key_Deep_serc_2009_merge <- Sand_Key_Deep_serc_2009 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2009 <- subset(Sand_Key_Deep_ws_year, Year == "2009")
Sand_Key_Deep_ws_2009_merge <- Sand_Key_Deep_ws_2009 %>%
  mutate(id = row_number())

Sand_Key_Deep_2009_all <- full_join(Sand_Key_Deep_serc_2009_merge, Sand_Key_Deep_ws_2009_merge, by = c("Year","id"))


Sand_Key_Deep_serc_2010 <- subset(Sand_Key_Deep_serc_year, Year == "2010")
Sand_Key_Deep_serc_2010_merge <- Sand_Key_Deep_serc_2010 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2010 <- subset(Sand_Key_Deep_ws_year, Year == "2010")
Sand_Key_Deep_ws_2010_merge <- Sand_Key_Deep_ws_2010 %>%
  mutate(id = row_number())

Sand_Key_Deep_2010_all <- full_join(Sand_Key_Deep_serc_2010_merge, Sand_Key_Deep_ws_2010_merge, by = c("Year","id"))


Sand_Key_Deep_serc_2011 <- subset(Sand_Key_Deep_serc_year, Year == "2011")
Sand_Key_Deep_serc_2011_merge <- Sand_Key_Deep_serc_2011 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2011 <- subset(Sand_Key_Deep_ws_year, Year == "2011")
Sand_Key_Deep_ws_2011_merge <- Sand_Key_Deep_ws_2011 %>%
  mutate(id = row_number())

Sand_Key_Deep_2011_all <- full_join(Sand_Key_Deep_serc_2011_merge, Sand_Key_Deep_ws_2011_merge, by = c("Year","id"))


Sand_Key_Deep_serc_2012 <- subset(Sand_Key_Deep_serc_year, Year == "2012")
Sand_Key_Deep_serc_2012_merge <- Sand_Key_Deep_serc_2012 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2012 <- subset(Sand_Key_Deep_ws_year, Year == "2012")
Sand_Key_Deep_ws_2012_merge <- Sand_Key_Deep_ws_2012 %>%
  mutate(id = row_number())

Sand_Key_Deep_2012_all <- full_join(Sand_Key_Deep_serc_2012_merge, Sand_Key_Deep_ws_2012_merge, by = c("Year","id"))


Sand_Key_Deep_serc_2014 <- subset(Sand_Key_Deep_serc_year, Year == "2014")
Sand_Key_Deep_serc_2014_merge <- Sand_Key_Deep_serc_2014 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2014 <- subset(Sand_Key_Deep_ws_year, Year == "2014")
Sand_Key_Deep_ws_2014_merge <- Sand_Key_Deep_ws_2014 %>%
  mutate(id = row_number())

Sand_Key_Deep_2014_all <- full_join(Sand_Key_Deep_serc_2014_merge, Sand_Key_Deep_ws_2014_merge, by = c("Year","id"))


Sand_Key_Deep_serc_2015 <- subset(Sand_Key_Deep_serc_year, Year == "2015")
Sand_Key_Deep_serc_2015_merge <- Sand_Key_Deep_serc_2015 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2015 <- subset(Sand_Key_Deep_ws_year, Year == "2015")
Sand_Key_Deep_ws_2015_merge <- Sand_Key_Deep_ws_2015 %>%
  mutate(id = row_number())

Sand_Key_Deep_2015_all <- full_join(Sand_Key_Deep_serc_2015_merge, Sand_Key_Deep_ws_2015_merge, by = c("Year","id"))


Sand_Key_Deep_serc_2016 <- subset(Sand_Key_Deep_serc_year, Year == "2016")
Sand_Key_Deep_serc_2016_merge <- Sand_Key_Deep_serc_2016 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2016 <- subset(Sand_Key_Deep_ws_year, Year == "2016")
Sand_Key_Deep_ws_2016_merge <- Sand_Key_Deep_ws_2016 %>%
  mutate(id = row_number())

Sand_Key_Deep_2016_all <- full_join(Sand_Key_Deep_serc_2016_merge, Sand_Key_Deep_ws_2016_merge, by = c("Year","id"))



Sand_Key_Deep_serc_2017 <- subset(Sand_Key_Deep_serc_year, Year == "2017")
Sand_Key_Deep_serc_2017_merge <- Sand_Key_Deep_serc_2017 %>%
  mutate(id = row_number())

Sand_Key_Deep_ws_2017 <- subset(Sand_Key_Deep_ws_year, Year == "2017")
Sand_Key_Deep_ws_2017_merge <- Sand_Key_Deep_ws_2017 %>%
  mutate(id = row_number())

Sand_Key_Deep_2017_all <- full_join(Sand_Key_Deep_serc_2017_merge, Sand_Key_Deep_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Sand_Key_Deep_ws_2018_all <- subset(Sand_Key_Deep_ws_year, Year == "2018") 

## adding extra columns to merge 

Sand_Key_Deep_ws_2018_all$LATDEC <- "NA"
Sand_Key_Deep_ws_2018_all$LONDEC <- "NA"
Sand_Key_Deep_ws_2018_all$DEPTH <- "NA"
Sand_Key_Deep_ws_2018_all$NOX_S <- "NA"
Sand_Key_Deep_ws_2018_all$NOX_B <- "NA"
Sand_Key_Deep_ws_2018_all$NO3_S <- "NA"
Sand_Key_Deep_ws_2018_all$NO3_B <- "NA"
Sand_Key_Deep_ws_2018_all$NO2_S <- "NA"
Sand_Key_Deep_ws_2018_all$NO2_B <- "NA"
Sand_Key_Deep_ws_2018_all$NH4_S <- "NA"
Sand_Key_Deep_ws_2018_all$NH4_B <- "NA"
Sand_Key_Deep_ws_2018_all$TN_S <- "NA"
Sand_Key_Deep_ws_2018_all$TN_B <- "NA"
Sand_Key_Deep_ws_2018_all$DIN_S <- "NA"
Sand_Key_Deep_ws_2018_all$DIN_B <- "NA"
Sand_Key_Deep_ws_2018_all$TON_S <- "NA"
Sand_Key_Deep_ws_2018_all$TON_B <- "NA"
Sand_Key_Deep_ws_2018_all$TP_S <- "NA"
Sand_Key_Deep_ws_2018_all$TP_B <- "NA"
Sand_Key_Deep_ws_2018_all$SRP_S <- "NA"
Sand_Key_Deep_ws_2018_all$SRP_B <- "NA"
Sand_Key_Deep_ws_2018_all$APA_S <- "NA"
Sand_Key_Deep_ws_2018_all$APA_B <- "NA"
Sand_Key_Deep_ws_2018_all$CHLA_S <- "NA"
Sand_Key_Deep_ws_2018_all$CHLA_B <- "NA"
Sand_Key_Deep_ws_2018_all$TOC_S <- "NA"
Sand_Key_Deep_ws_2018_all$TOC_B <- "NA"
Sand_Key_Deep_ws_2018_all$SiO2_S <- "NA"
Sand_Key_Deep_ws_2018_all$SiO2_B <- "NA"
Sand_Key_Deep_ws_2018_all$TURB_S <- "NA"
Sand_Key_Deep_ws_2018_all$TURB_B <- "NA"
Sand_Key_Deep_ws_2018_all$SAL_S <- "NA"
Sand_Key_Deep_ws_2018_all$SAL_B <- "NA"
Sand_Key_Deep_ws_2018_all$TEMP_S <- "NA"
Sand_Key_Deep_ws_2018_all$TEMP_B <- "NA"
Sand_Key_Deep_ws_2018_all$DO_S <- "NA"
Sand_Key_Deep_ws_2018_all$DO_B <- "NA"
Sand_Key_Deep_ws_2018_all$Kd <- "NA"
Sand_Key_Deep_ws_2018_all$pH <- "NA"
Sand_Key_Deep_ws_2018_all$TN_TP <- "NA"
Sand_Key_Deep_ws_2018_all$N_P <- "NA"
Sand_Key_Deep_ws_2018_all$DIN_TP <- "NA"
Sand_Key_Deep_ws_2018_all$Si_DIN <- "NA"
Sand_Key_Deep_ws_2018_all$F_SAT_S <- "NA"
Sand_Key_Deep_ws_2018_all$F_SAT_B <- "NA"
Sand_Key_Deep_ws_2018_all$F_Io <- "NA"
Sand_Key_Deep_ws_2018_all$DSIGT <- "NA"
Sand_Key_Deep_ws_2018_all$id <- "NA"







## rest of the serc data
Sand_Key_Deep_serc_1995 <- subset(Sand_Key_Deep_serc_year, Year == "1995")
Sand_Key_Deep_serc_1996 <- subset(Sand_Key_Deep_serc_year, Year == "1996")
Sand_Key_Deep_serc_1997 <- subset(Sand_Key_Deep_serc_year, Year == "1997")
# Sand_Key_Deep_serc_1998 <- subset(Sand_Key_Deep_serc_year, Year == "1998")
# Sand_Key_Deep_serc_1999 <- subset(Sand_Key_Deep_serc_year, Year == "1999")
# Sand_Key_Deep_serc_2000 <- subset(Sand_Key_Deep_serc_year, Year == "2000")
# Sand_Key_Deep_serc_2001 <- subset(Sand_Key_Deep_serc_year, Year == "2001")
Sand_Key_Deep_serc_2013 <- subset(Sand_Key_Deep_serc_year, Year == "2013")



Sand_Key_Deep_serc_extra <- rbind(Sand_Key_Deep_serc_1995,Sand_Key_Deep_serc_1996,Sand_Key_Deep_serc_1997,Sand_Key_Deep_serc_2013)




Sand_Key_Deep_serc_extra$Longitude <- "NA"
Sand_Key_Deep_serc_extra$Latitude <- "NA"
Sand_Key_Deep_serc_extra$Depth <- "NA"
Sand_Key_Deep_serc_extra$SST <- "NA"
Sand_Key_Deep_serc_extra$SSS <- "NA"
Sand_Key_Deep_serc_extra$Chl_a <- "NA"
Sand_Key_Deep_serc_extra$Phaeophyti <- "NA"
Sand_Key_Deep_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Sand_Key_Deep_ws_2018_all <- setcolorder(Sand_Key_Deep_ws_2018_all, names(Sand_Key_Deep_serc_extra))

## Merge all years together 

Sand_Key_Deep_all <- rbind(Sand_Key_Deep_serc_extra,Sand_Key_Deep_1998_all,Sand_Key_Deep_1999_all,Sand_Key_Deep_2000_all,Sand_Key_Deep_2001_all,Sand_Key_Deep_2002_all,Sand_Key_Deep_2003_all,Sand_Key_Deep_2004_all, Sand_Key_Deep_2005_all,Sand_Key_Deep_2006_all,Sand_Key_Deep_2007_all,Sand_Key_Deep_2008_all,Sand_Key_Deep_2009_all,Sand_Key_Deep_2010_all,Sand_Key_Deep_2011_all,Sand_Key_Deep_2012_all,Sand_Key_Deep_2014_all,Sand_Key_Deep_2015_all,Sand_Key_Deep_2016_all,Sand_Key_Deep_2017_all,Sand_Key_Deep_ws_2018_all)
Sand_Key_Deep_all$sitename <- "Sand_Key_Deep"

export(Sand_Key_Deep_all,"LK_10km/Sand_Key_Deep_combined.csv")





Sand_Key_Shallow_serc <- import("LK_10km/Sand_Key_Shallow_serc.xls")
Sand_Key_Shallow_ws <- import("LK_10km/Sand_Key_Shallow_ws.xls")

## Change date to Year to merge the two dataframes

Sand_Key_Shallow_serc_date <- format(as.Date(Sand_Key_Shallow_serc$DATE_, format = "%Y %m %d"),"%Y")
Sand_Key_Shallow_serc_frame <- data.frame(Sand_Key_Shallow_serc_date)
Sand_Key_Shallow_serc_year <- cbind(Sand_Key_Shallow_serc_frame, Sand_Key_Shallow_serc)
colnames(Sand_Key_Shallow_serc_year)[1]<- "Year"
Sand_Key_Shallow_serc_year$FID <- NULL
Sand_Key_Shallow_serc_year$SURV <- NULL
Sand_Key_Shallow_serc_year$BASIN <- NULL
Sand_Key_Shallow_serc_year$SEGMENT <- NULL
Sand_Key_Shallow_serc_year$ZONE_ <- NULL
Sand_Key_Shallow_serc_year$TIME_ <- NULL
Sand_Key_Shallow_serc_year$DATE_ <- NULL
Sand_Key_Shallow_serc_year$STATION <- NULL
Sand_Key_Shallow_serc_year$SITE <- NULL



Sand_Key_Shallow_ws_date <- format(as.Date(Sand_Key_Shallow_ws$Date_, format = "%Y %m %d"),"%Y")
Sand_Key_Shallow_ws_frame <- data.frame(Sand_Key_Shallow_ws_date)
Sand_Key_Shallow_ws_year <- cbind(Sand_Key_Shallow_ws_frame, Sand_Key_Shallow_ws)
colnames(Sand_Key_Shallow_ws_year)[1]<- "Year"
Sand_Key_Shallow_ws_year$FID <- NULL
Sand_Key_Shallow_ws_year$Station <- NULL
Sand_Key_Shallow_ws_year$Date_ <- NULL
Sand_Key_Shallow_ws_year$GMT <- NULL
Sand_Key_Shallow_ws_year$Field11 <- NULL
Sand_Key_Shallow_ws_year$Field12 <- NULL
Sand_Key_Shallow_ws_year$Field13 <- NULL
Sand_Key_Shallow_ws_year$Field14 <- NULL
Sand_Key_Shallow_ws_year$Field15 <- NULL
Sand_Key_Shallow_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Sand_Key_Shallow_serc_year$Year)
unique(Sand_Key_Shallow_ws_year$Year)


Sand_Key_Shallow_serc_1998 <- subset(Sand_Key_Shallow_serc_year, Year == "1998")
Sand_Key_Shallow_serc_1998_merge <- Sand_Key_Shallow_serc_1998 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_1998 <- subset(Sand_Key_Shallow_ws_year, Year == "1998")
Sand_Key_Shallow_ws_1998_merge <- Sand_Key_Shallow_ws_1998 %>%
  mutate(id = row_number())

Sand_Key_Shallow_1998_all <- full_join(Sand_Key_Shallow_serc_1998_merge, Sand_Key_Shallow_ws_1998_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_1999 <- subset(Sand_Key_Shallow_serc_year, Year == "1999")
Sand_Key_Shallow_serc_1999_merge <- Sand_Key_Shallow_serc_1999 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_1999 <- subset(Sand_Key_Shallow_ws_year, Year == "1999")
Sand_Key_Shallow_ws_1999_merge <- Sand_Key_Shallow_ws_1999 %>%
  mutate(id = row_number())

Sand_Key_Shallow_1999_all <- full_join(Sand_Key_Shallow_serc_1999_merge, Sand_Key_Shallow_ws_1999_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_2000 <- subset(Sand_Key_Shallow_serc_year, Year == "2000")
Sand_Key_Shallow_serc_2000_merge <- Sand_Key_Shallow_serc_2000 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2000 <- subset(Sand_Key_Shallow_ws_year, Year == "2000")
Sand_Key_Shallow_ws_2000_merge <- Sand_Key_Shallow_ws_2000 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2000_all <- full_join(Sand_Key_Shallow_serc_2000_merge, Sand_Key_Shallow_ws_2000_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_2001 <- subset(Sand_Key_Shallow_serc_year, Year == "2001")
Sand_Key_Shallow_serc_2001_merge <- Sand_Key_Shallow_serc_2001 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2001 <- subset(Sand_Key_Shallow_ws_year, Year == "2001")
Sand_Key_Shallow_ws_2001_merge <- Sand_Key_Shallow_ws_2001 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2001_all <- full_join(Sand_Key_Shallow_serc_2001_merge, Sand_Key_Shallow_ws_2001_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_2002 <- subset(Sand_Key_Shallow_serc_year, Year == "2002")
Sand_Key_Shallow_serc_2002_merge <- Sand_Key_Shallow_serc_2002 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2002 <- subset(Sand_Key_Shallow_ws_year, Year == "2002")
Sand_Key_Shallow_ws_2002_merge <- Sand_Key_Shallow_ws_2002 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2002_all <- full_join(Sand_Key_Shallow_serc_2002_merge, Sand_Key_Shallow_ws_2002_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_2003 <- subset(Sand_Key_Shallow_serc_year, Year == "2003")
Sand_Key_Shallow_serc_2003_merge <- Sand_Key_Shallow_serc_2003 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2003 <- subset(Sand_Key_Shallow_ws_year, Year == "2003")
Sand_Key_Shallow_ws_2003_merge <- Sand_Key_Shallow_ws_2003 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2003_all <- full_join(Sand_Key_Shallow_serc_2003_merge, Sand_Key_Shallow_ws_2003_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_2004 <- subset(Sand_Key_Shallow_serc_year, Year == "2004")
Sand_Key_Shallow_serc_2004_merge <- Sand_Key_Shallow_serc_2004 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2004 <- subset(Sand_Key_Shallow_ws_year, Year == "2004")
Sand_Key_Shallow_ws_2004_merge <- Sand_Key_Shallow_ws_2004 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2004_all <- full_join(Sand_Key_Shallow_serc_2004_merge, Sand_Key_Shallow_ws_2004_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_2005 <- subset(Sand_Key_Shallow_serc_year, Year == "2005")
Sand_Key_Shallow_serc_2005_merge <- Sand_Key_Shallow_serc_2005 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2005 <- subset(Sand_Key_Shallow_ws_year, Year == "2005")
Sand_Key_Shallow_ws_2005_merge <- Sand_Key_Shallow_ws_2005 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2005_all <- full_join(Sand_Key_Shallow_serc_2005_merge, Sand_Key_Shallow_ws_2005_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_2006 <- subset(Sand_Key_Shallow_serc_year, Year == "2006")
Sand_Key_Shallow_serc_2006_merge <- Sand_Key_Shallow_serc_2006 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2006 <- subset(Sand_Key_Shallow_ws_year, Year == "2006")
Sand_Key_Shallow_ws_2006_merge <- Sand_Key_Shallow_ws_2006 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2006_all <- full_join(Sand_Key_Shallow_serc_2006_merge, Sand_Key_Shallow_ws_2006_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_2007 <- subset(Sand_Key_Shallow_serc_year, Year == "2007")
Sand_Key_Shallow_serc_2007_merge <- Sand_Key_Shallow_serc_2007 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2007 <- subset(Sand_Key_Shallow_ws_year, Year == "2007")
Sand_Key_Shallow_ws_2007_merge <- Sand_Key_Shallow_ws_2007 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2007_all <- full_join(Sand_Key_Shallow_serc_2007_merge, Sand_Key_Shallow_ws_2007_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_2008 <- subset(Sand_Key_Shallow_serc_year, Year == "2008")
Sand_Key_Shallow_serc_2008_merge <- Sand_Key_Shallow_serc_2008 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2008 <- subset(Sand_Key_Shallow_ws_year, Year == "2008")
Sand_Key_Shallow_ws_2008_merge <- Sand_Key_Shallow_ws_2008 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2008_all <- full_join(Sand_Key_Shallow_serc_2008_merge, Sand_Key_Shallow_ws_2008_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_2009 <- subset(Sand_Key_Shallow_serc_year, Year == "2009")
Sand_Key_Shallow_serc_2009_merge <- Sand_Key_Shallow_serc_2009 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2009 <- subset(Sand_Key_Shallow_ws_year, Year == "2009")
Sand_Key_Shallow_ws_2009_merge <- Sand_Key_Shallow_ws_2009 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2009_all <- full_join(Sand_Key_Shallow_serc_2009_merge, Sand_Key_Shallow_ws_2009_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_2010 <- subset(Sand_Key_Shallow_serc_year, Year == "2010")
Sand_Key_Shallow_serc_2010_merge <- Sand_Key_Shallow_serc_2010 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2010 <- subset(Sand_Key_Shallow_ws_year, Year == "2010")
Sand_Key_Shallow_ws_2010_merge <- Sand_Key_Shallow_ws_2010 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2010_all <- full_join(Sand_Key_Shallow_serc_2010_merge, Sand_Key_Shallow_ws_2010_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_2011 <- subset(Sand_Key_Shallow_serc_year, Year == "2011")
Sand_Key_Shallow_serc_2011_merge <- Sand_Key_Shallow_serc_2011 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2011 <- subset(Sand_Key_Shallow_ws_year, Year == "2011")
Sand_Key_Shallow_ws_2011_merge <- Sand_Key_Shallow_ws_2011 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2011_all <- full_join(Sand_Key_Shallow_serc_2011_merge, Sand_Key_Shallow_ws_2011_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_2012 <- subset(Sand_Key_Shallow_serc_year, Year == "2012")
Sand_Key_Shallow_serc_2012_merge <- Sand_Key_Shallow_serc_2012 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2012 <- subset(Sand_Key_Shallow_ws_year, Year == "2012")
Sand_Key_Shallow_ws_2012_merge <- Sand_Key_Shallow_ws_2012 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2012_all <- full_join(Sand_Key_Shallow_serc_2012_merge, Sand_Key_Shallow_ws_2012_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_2014 <- subset(Sand_Key_Shallow_serc_year, Year == "2014")
Sand_Key_Shallow_serc_2014_merge <- Sand_Key_Shallow_serc_2014 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2014 <- subset(Sand_Key_Shallow_ws_year, Year == "2014")
Sand_Key_Shallow_ws_2014_merge <- Sand_Key_Shallow_ws_2014 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2014_all <- full_join(Sand_Key_Shallow_serc_2014_merge, Sand_Key_Shallow_ws_2014_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_2015 <- subset(Sand_Key_Shallow_serc_year, Year == "2015")
Sand_Key_Shallow_serc_2015_merge <- Sand_Key_Shallow_serc_2015 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2015 <- subset(Sand_Key_Shallow_ws_year, Year == "2015")
Sand_Key_Shallow_ws_2015_merge <- Sand_Key_Shallow_ws_2015 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2015_all <- full_join(Sand_Key_Shallow_serc_2015_merge, Sand_Key_Shallow_ws_2015_merge, by = c("Year","id"))


Sand_Key_Shallow_serc_2016 <- subset(Sand_Key_Shallow_serc_year, Year == "2016")
Sand_Key_Shallow_serc_2016_merge <- Sand_Key_Shallow_serc_2016 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2016 <- subset(Sand_Key_Shallow_ws_year, Year == "2016")
Sand_Key_Shallow_ws_2016_merge <- Sand_Key_Shallow_ws_2016 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2016_all <- full_join(Sand_Key_Shallow_serc_2016_merge, Sand_Key_Shallow_ws_2016_merge, by = c("Year","id"))



Sand_Key_Shallow_serc_2017 <- subset(Sand_Key_Shallow_serc_year, Year == "2017")
Sand_Key_Shallow_serc_2017_merge <- Sand_Key_Shallow_serc_2017 %>%
  mutate(id = row_number())

Sand_Key_Shallow_ws_2017 <- subset(Sand_Key_Shallow_ws_year, Year == "2017")
Sand_Key_Shallow_ws_2017_merge <- Sand_Key_Shallow_ws_2017 %>%
  mutate(id = row_number())

Sand_Key_Shallow_2017_all <- full_join(Sand_Key_Shallow_serc_2017_merge, Sand_Key_Shallow_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Sand_Key_Shallow_ws_2018_all <- subset(Sand_Key_Shallow_ws_year, Year == "2018") 

## adding extra columns to merge 

Sand_Key_Shallow_ws_2018_all$LATDEC <- "NA"
Sand_Key_Shallow_ws_2018_all$LONDEC <- "NA"
Sand_Key_Shallow_ws_2018_all$DEPTH <- "NA"
Sand_Key_Shallow_ws_2018_all$NOX_S <- "NA"
Sand_Key_Shallow_ws_2018_all$NOX_B <- "NA"
Sand_Key_Shallow_ws_2018_all$NO3_S <- "NA"
Sand_Key_Shallow_ws_2018_all$NO3_B <- "NA"
Sand_Key_Shallow_ws_2018_all$NO2_S <- "NA"
Sand_Key_Shallow_ws_2018_all$NO2_B <- "NA"
Sand_Key_Shallow_ws_2018_all$NH4_S <- "NA"
Sand_Key_Shallow_ws_2018_all$NH4_B <- "NA"
Sand_Key_Shallow_ws_2018_all$TN_S <- "NA"
Sand_Key_Shallow_ws_2018_all$TN_B <- "NA"
Sand_Key_Shallow_ws_2018_all$DIN_S <- "NA"
Sand_Key_Shallow_ws_2018_all$DIN_B <- "NA"
Sand_Key_Shallow_ws_2018_all$TON_S <- "NA"
Sand_Key_Shallow_ws_2018_all$TON_B <- "NA"
Sand_Key_Shallow_ws_2018_all$TP_S <- "NA"
Sand_Key_Shallow_ws_2018_all$TP_B <- "NA"
Sand_Key_Shallow_ws_2018_all$SRP_S <- "NA"
Sand_Key_Shallow_ws_2018_all$SRP_B <- "NA"
Sand_Key_Shallow_ws_2018_all$APA_S <- "NA"
Sand_Key_Shallow_ws_2018_all$APA_B <- "NA"
Sand_Key_Shallow_ws_2018_all$CHLA_S <- "NA"
Sand_Key_Shallow_ws_2018_all$CHLA_B <- "NA"
Sand_Key_Shallow_ws_2018_all$TOC_S <- "NA"
Sand_Key_Shallow_ws_2018_all$TOC_B <- "NA"
Sand_Key_Shallow_ws_2018_all$SiO2_S <- "NA"
Sand_Key_Shallow_ws_2018_all$SiO2_B <- "NA"
Sand_Key_Shallow_ws_2018_all$TURB_S <- "NA"
Sand_Key_Shallow_ws_2018_all$TURB_B <- "NA"
Sand_Key_Shallow_ws_2018_all$SAL_S <- "NA"
Sand_Key_Shallow_ws_2018_all$SAL_B <- "NA"
Sand_Key_Shallow_ws_2018_all$TEMP_S <- "NA"
Sand_Key_Shallow_ws_2018_all$TEMP_B <- "NA"
Sand_Key_Shallow_ws_2018_all$DO_S <- "NA"
Sand_Key_Shallow_ws_2018_all$DO_B <- "NA"
Sand_Key_Shallow_ws_2018_all$Kd <- "NA"
Sand_Key_Shallow_ws_2018_all$pH <- "NA"
Sand_Key_Shallow_ws_2018_all$TN_TP <- "NA"
Sand_Key_Shallow_ws_2018_all$N_P <- "NA"
Sand_Key_Shallow_ws_2018_all$DIN_TP <- "NA"
Sand_Key_Shallow_ws_2018_all$Si_DIN <- "NA"
Sand_Key_Shallow_ws_2018_all$F_SAT_S <- "NA"
Sand_Key_Shallow_ws_2018_all$F_SAT_B <- "NA"
Sand_Key_Shallow_ws_2018_all$F_Io <- "NA"
Sand_Key_Shallow_ws_2018_all$DSIGT <- "NA"
Sand_Key_Shallow_ws_2018_all$id <- "NA"







## rest of the serc data
Sand_Key_Shallow_serc_1995 <- subset(Sand_Key_Shallow_serc_year, Year == "1995")
Sand_Key_Shallow_serc_1996 <- subset(Sand_Key_Shallow_serc_year, Year == "1996")
Sand_Key_Shallow_serc_1997 <- subset(Sand_Key_Shallow_serc_year, Year == "1997")
# Sand_Key_Shallow_serc_1998 <- subset(Sand_Key_Shallow_serc_year, Year == "1998")
# Sand_Key_Shallow_serc_1999 <- subset(Sand_Key_Shallow_serc_year, Year == "1999")
# Sand_Key_Shallow_serc_2000 <- subset(Sand_Key_Shallow_serc_year, Year == "2000")
# Sand_Key_Shallow_serc_2001 <- subset(Sand_Key_Shallow_serc_year, Year == "2001")
Sand_Key_Shallow_serc_2013 <- subset(Sand_Key_Shallow_serc_year, Year == "2013")



Sand_Key_Shallow_serc_extra <- rbind(Sand_Key_Shallow_serc_1995,Sand_Key_Shallow_serc_1996,Sand_Key_Shallow_serc_1997,Sand_Key_Shallow_serc_2013)




Sand_Key_Shallow_serc_extra$Longitude <- "NA"
Sand_Key_Shallow_serc_extra$Latitude <- "NA"
Sand_Key_Shallow_serc_extra$Depth <- "NA"
Sand_Key_Shallow_serc_extra$SST <- "NA"
Sand_Key_Shallow_serc_extra$SSS <- "NA"
Sand_Key_Shallow_serc_extra$Chl_a <- "NA"
Sand_Key_Shallow_serc_extra$Phaeophyti <- "NA"
Sand_Key_Shallow_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Sand_Key_Shallow_ws_2018_all <- setcolorder(Sand_Key_Shallow_ws_2018_all, names(Sand_Key_Shallow_serc_extra))

## Merge all years together 

Sand_Key_Shallow_all <- rbind(Sand_Key_Shallow_serc_extra,Sand_Key_Shallow_1998_all,Sand_Key_Shallow_1999_all,Sand_Key_Shallow_2000_all,Sand_Key_Shallow_2001_all,Sand_Key_Shallow_2002_all,Sand_Key_Shallow_2003_all,Sand_Key_Shallow_2004_all, Sand_Key_Shallow_2005_all,Sand_Key_Shallow_2006_all,Sand_Key_Shallow_2007_all,Sand_Key_Shallow_2008_all,Sand_Key_Shallow_2009_all,Sand_Key_Shallow_2010_all,Sand_Key_Shallow_2011_all,Sand_Key_Shallow_2012_all,Sand_Key_Shallow_2014_all,Sand_Key_Shallow_2015_all,Sand_Key_Shallow_2016_all,Sand_Key_Shallow_2017_all,Sand_Key_Shallow_ws_2018_all)
Sand_Key_Shallow_all$sitename <- "Sand_Key_Shallow"

export(Sand_Key_Shallow_all,"LK_10km/Sand_Key_Shallow_combined.csv")



### Only serc data

West_Washer_Woman_serc <- import("LK_10km/West_Washer_Woman_serc.xls")
#West_Washer_Woman_ws <- import("LK_10km/West_Washer_Woman_ws.xls")

## Change date to Year to merge the two dataframes

West_Washer_Woman_serc_date <- format(as.Date(West_Washer_Woman_serc$DATE_, format = "%Y %m %d"),"%Y")
West_Washer_Woman_serc_frame <- data.frame(West_Washer_Woman_serc_date)
West_Washer_Woman_serc_year <- cbind(West_Washer_Woman_serc_frame, West_Washer_Woman_serc)
colnames(West_Washer_Woman_serc_year)[1]<- "Year"
West_Washer_Woman_serc_year$FID <- NULL
West_Washer_Woman_serc_year$SURV <- NULL
West_Washer_Woman_serc_year$BASIN <- NULL
West_Washer_Woman_serc_year$SEGMENT <- NULL
West_Washer_Woman_serc_year$ZONE_ <- NULL
West_Washer_Woman_serc_year$TIME_ <- NULL
West_Washer_Woman_serc_year$DATE_ <- NULL
West_Washer_Woman_serc_year$STATION <- NULL
West_Washer_Woman_serc_year$SITE <- NULL



# West_Washer_Woman_ws_date <- format(as.Date(West_Washer_Woman_ws$Date_, format = "%Y %m %d"),"%Y")
# West_Washer_Woman_ws_frame <- data.frame(West_Washer_Woman_ws_date)
# West_Washer_Woman_ws_year <- cbind(West_Washer_Woman_ws_frame, West_Washer_Woman_ws)
# colnames(West_Washer_Woman_ws_year)[1]<- "Year"
# West_Washer_Woman_ws_year$FID <- NULL
# West_Washer_Woman_ws_year$Station <- NULL
# West_Washer_Woman_ws_year$Date_ <- NULL
# West_Washer_Woman_ws_year$GMT <- NULL
# West_Washer_Woman_ws_year$Field11 <- NULL
# West_Washer_Woman_ws_year$Field12 <- NULL
# West_Washer_Woman_ws_year$Field13 <- NULL
# West_Washer_Woman_ws_year$Field14 <- NULL
# West_Washer_Woman_ws_year$Field15 <- NULL
# West_Washer_Woman_ws_year$Field16 <- NULL
# 
# 
# #unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
# #   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
# unique(West_Washer_Woman_serc_year$Year)
# unique(West_Washer_Woman_ws_year$Year)
# 
# 
# West_Washer_Woman_serc_1998 <- subset(West_Washer_Woman_serc_year, Year == "1998")
# West_Washer_Woman_serc_1998_merge <- West_Washer_Woman_serc_1998 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_1998 <- subset(West_Washer_Woman_ws_year, Year == "1998")
# West_Washer_Woman_ws_1998_merge <- West_Washer_Woman_ws_1998 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_1998_all <- full_join(West_Washer_Woman_serc_1998_merge, West_Washer_Woman_ws_1998_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_1999 <- subset(West_Washer_Woman_serc_year, Year == "1999")
# West_Washer_Woman_serc_1999_merge <- West_Washer_Woman_serc_1999 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_1999 <- subset(West_Washer_Woman_ws_year, Year == "1999")
# West_Washer_Woman_ws_1999_merge <- West_Washer_Woman_ws_1999 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_1999_all <- full_join(West_Washer_Woman_serc_1999_merge, West_Washer_Woman_ws_1999_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_2000 <- subset(West_Washer_Woman_serc_year, Year == "2000")
# West_Washer_Woman_serc_2000_merge <- West_Washer_Woman_serc_2000 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2000 <- subset(West_Washer_Woman_ws_year, Year == "2000")
# West_Washer_Woman_ws_2000_merge <- West_Washer_Woman_ws_2000 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2000_all <- full_join(West_Washer_Woman_serc_2000_merge, West_Washer_Woman_ws_2000_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_2001 <- subset(West_Washer_Woman_serc_year, Year == "2001")
# West_Washer_Woman_serc_2001_merge <- West_Washer_Woman_serc_2001 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2001 <- subset(West_Washer_Woman_ws_year, Year == "2001")
# West_Washer_Woman_ws_2001_merge <- West_Washer_Woman_ws_2001 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2001_all <- full_join(West_Washer_Woman_serc_2001_merge, West_Washer_Woman_ws_2001_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_2002 <- subset(West_Washer_Woman_serc_year, Year == "2002")
# West_Washer_Woman_serc_2002_merge <- West_Washer_Woman_serc_2002 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2002 <- subset(West_Washer_Woman_ws_year, Year == "2002")
# West_Washer_Woman_ws_2002_merge <- West_Washer_Woman_ws_2002 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2002_all <- full_join(West_Washer_Woman_serc_2002_merge, West_Washer_Woman_ws_2002_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_2003 <- subset(West_Washer_Woman_serc_year, Year == "2003")
# West_Washer_Woman_serc_2003_merge <- West_Washer_Woman_serc_2003 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2003 <- subset(West_Washer_Woman_ws_year, Year == "2003")
# West_Washer_Woman_ws_2003_merge <- West_Washer_Woman_ws_2003 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2003_all <- full_join(West_Washer_Woman_serc_2003_merge, West_Washer_Woman_ws_2003_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_2004 <- subset(West_Washer_Woman_serc_year, Year == "2004")
# West_Washer_Woman_serc_2004_merge <- West_Washer_Woman_serc_2004 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2004 <- subset(West_Washer_Woman_ws_year, Year == "2004")
# West_Washer_Woman_ws_2004_merge <- West_Washer_Woman_ws_2004 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2004_all <- full_join(West_Washer_Woman_serc_2004_merge, West_Washer_Woman_ws_2004_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_2005 <- subset(West_Washer_Woman_serc_year, Year == "2005")
# West_Washer_Woman_serc_2005_merge <- West_Washer_Woman_serc_2005 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2005 <- subset(West_Washer_Woman_ws_year, Year == "2005")
# West_Washer_Woman_ws_2005_merge <- West_Washer_Woman_ws_2005 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2005_all <- full_join(West_Washer_Woman_serc_2005_merge, West_Washer_Woman_ws_2005_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_2006 <- subset(West_Washer_Woman_serc_year, Year == "2006")
# West_Washer_Woman_serc_2006_merge <- West_Washer_Woman_serc_2006 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2006 <- subset(West_Washer_Woman_ws_year, Year == "2006")
# West_Washer_Woman_ws_2006_merge <- West_Washer_Woman_ws_2006 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2006_all <- full_join(West_Washer_Woman_serc_2006_merge, West_Washer_Woman_ws_2006_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_2007 <- subset(West_Washer_Woman_serc_year, Year == "2007")
# West_Washer_Woman_serc_2007_merge <- West_Washer_Woman_serc_2007 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2007 <- subset(West_Washer_Woman_ws_year, Year == "2007")
# West_Washer_Woman_ws_2007_merge <- West_Washer_Woman_ws_2007 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2007_all <- full_join(West_Washer_Woman_serc_2007_merge, West_Washer_Woman_ws_2007_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_2008 <- subset(West_Washer_Woman_serc_year, Year == "2008")
# West_Washer_Woman_serc_2008_merge <- West_Washer_Woman_serc_2008 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2008 <- subset(West_Washer_Woman_ws_year, Year == "2008")
# West_Washer_Woman_ws_2008_merge <- West_Washer_Woman_ws_2008 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2008_all <- full_join(West_Washer_Woman_serc_2008_merge, West_Washer_Woman_ws_2008_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_2009 <- subset(West_Washer_Woman_serc_year, Year == "2009")
# West_Washer_Woman_serc_2009_merge <- West_Washer_Woman_serc_2009 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2009 <- subset(West_Washer_Woman_ws_year, Year == "2009")
# West_Washer_Woman_ws_2009_merge <- West_Washer_Woman_ws_2009 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2009_all <- full_join(West_Washer_Woman_serc_2009_merge, West_Washer_Woman_ws_2009_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_2010 <- subset(West_Washer_Woman_serc_year, Year == "2010")
# West_Washer_Woman_serc_2010_merge <- West_Washer_Woman_serc_2010 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2010 <- subset(West_Washer_Woman_ws_year, Year == "2010")
# West_Washer_Woman_ws_2010_merge <- West_Washer_Woman_ws_2010 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2010_all <- full_join(West_Washer_Woman_serc_2010_merge, West_Washer_Woman_ws_2010_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_2011 <- subset(West_Washer_Woman_serc_year, Year == "2011")
# West_Washer_Woman_serc_2011_merge <- West_Washer_Woman_serc_2011 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2011 <- subset(West_Washer_Woman_ws_year, Year == "2011")
# West_Washer_Woman_ws_2011_merge <- West_Washer_Woman_ws_2011 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2011_all <- full_join(West_Washer_Woman_serc_2011_merge, West_Washer_Woman_ws_2011_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_2012 <- subset(West_Washer_Woman_serc_year, Year == "2012")
# West_Washer_Woman_serc_2012_merge <- West_Washer_Woman_serc_2012 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2012 <- subset(West_Washer_Woman_ws_year, Year == "2012")
# West_Washer_Woman_ws_2012_merge <- West_Washer_Woman_ws_2012 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2012_all <- full_join(West_Washer_Woman_serc_2012_merge, West_Washer_Woman_ws_2012_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_2014 <- subset(West_Washer_Woman_serc_year, Year == "2014")
# West_Washer_Woman_serc_2014_merge <- West_Washer_Woman_serc_2014 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2014 <- subset(West_Washer_Woman_ws_year, Year == "2014")
# West_Washer_Woman_ws_2014_merge <- West_Washer_Woman_ws_2014 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2014_all <- full_join(West_Washer_Woman_serc_2014_merge, West_Washer_Woman_ws_2014_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_2015 <- subset(West_Washer_Woman_serc_year, Year == "2015")
# West_Washer_Woman_serc_2015_merge <- West_Washer_Woman_serc_2015 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2015 <- subset(West_Washer_Woman_ws_year, Year == "2015")
# West_Washer_Woman_ws_2015_merge <- West_Washer_Woman_ws_2015 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2015_all <- full_join(West_Washer_Woman_serc_2015_merge, West_Washer_Woman_ws_2015_merge, by = c("Year","id"))
# 
# 
# West_Washer_Woman_serc_2016 <- subset(West_Washer_Woman_serc_year, Year == "2016")
# West_Washer_Woman_serc_2016_merge <- West_Washer_Woman_serc_2016 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2016 <- subset(West_Washer_Woman_ws_year, Year == "2016")
# West_Washer_Woman_ws_2016_merge <- West_Washer_Woman_ws_2016 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2016_all <- full_join(West_Washer_Woman_serc_2016_merge, West_Washer_Woman_ws_2016_merge, by = c("Year","id"))
# 
# 
# 
# West_Washer_Woman_serc_2017 <- subset(West_Washer_Woman_serc_year, Year == "2017")
# West_Washer_Woman_serc_2017_merge <- West_Washer_Woman_serc_2017 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_ws_2017 <- subset(West_Washer_Woman_ws_year, Year == "2017")
# West_Washer_Woman_ws_2017_merge <- West_Washer_Woman_ws_2017 %>%
#   mutate(id = row_number())
# 
# West_Washer_Woman_2017_all <- full_join(West_Washer_Woman_serc_2017_merge, West_Washer_Woman_ws_2017_merge, by = c("Year","id"))
# 
# 
# 
# ### ADD on years for ws (need to add missing columns to merge)
# 
# West_Washer_Woman_ws_2018_all <- subset(West_Washer_Woman_ws_year, Year == "2018") 
# 
# ## adding extra columns to merge 
# 
# West_Washer_Woman_ws_2018_all$LATDEC <- "NA"
# West_Washer_Woman_ws_2018_all$LONDEC <- "NA"
# West_Washer_Woman_ws_2018_all$DEPTH <- "NA"
# West_Washer_Woman_ws_2018_all$NOX_S <- "NA"
# West_Washer_Woman_ws_2018_all$NOX_B <- "NA"
# West_Washer_Woman_ws_2018_all$NO3_S <- "NA"
# West_Washer_Woman_ws_2018_all$NO3_B <- "NA"
# West_Washer_Woman_ws_2018_all$NO2_S <- "NA"
# West_Washer_Woman_ws_2018_all$NO2_B <- "NA"
# West_Washer_Woman_ws_2018_all$NH4_S <- "NA"
# West_Washer_Woman_ws_2018_all$NH4_B <- "NA"
# West_Washer_Woman_ws_2018_all$TN_S <- "NA"
# West_Washer_Woman_ws_2018_all$TN_B <- "NA"
# West_Washer_Woman_ws_2018_all$DIN_S <- "NA"
# West_Washer_Woman_ws_2018_all$DIN_B <- "NA"
# West_Washer_Woman_ws_2018_all$TON_S <- "NA"
# West_Washer_Woman_ws_2018_all$TON_B <- "NA"
# West_Washer_Woman_ws_2018_all$TP_S <- "NA"
# West_Washer_Woman_ws_2018_all$TP_B <- "NA"
# West_Washer_Woman_ws_2018_all$SRP_S <- "NA"
# West_Washer_Woman_ws_2018_all$SRP_B <- "NA"
# West_Washer_Woman_ws_2018_all$APA_S <- "NA"
# West_Washer_Woman_ws_2018_all$APA_B <- "NA"
# West_Washer_Woman_ws_2018_all$CHLA_S <- "NA"
# West_Washer_Woman_ws_2018_all$CHLA_B <- "NA"
# West_Washer_Woman_ws_2018_all$TOC_S <- "NA"
# West_Washer_Woman_ws_2018_all$TOC_B <- "NA"
# West_Washer_Woman_ws_2018_all$SiO2_S <- "NA"
# West_Washer_Woman_ws_2018_all$SiO2_B <- "NA"
# West_Washer_Woman_ws_2018_all$TURB_S <- "NA"
# West_Washer_Woman_ws_2018_all$TURB_B <- "NA"
# West_Washer_Woman_ws_2018_all$SAL_S <- "NA"
# West_Washer_Woman_ws_2018_all$SAL_B <- "NA"
# West_Washer_Woman_ws_2018_all$TEMP_S <- "NA"
# West_Washer_Woman_ws_2018_all$TEMP_B <- "NA"
# West_Washer_Woman_ws_2018_all$DO_S <- "NA"
# West_Washer_Woman_ws_2018_all$DO_B <- "NA"
# West_Washer_Woman_ws_2018_all$Kd <- "NA"
# West_Washer_Woman_ws_2018_all$pH <- "NA"
# West_Washer_Woman_ws_2018_all$TN_TP <- "NA"
# West_Washer_Woman_ws_2018_all$N_P <- "NA"
# West_Washer_Woman_ws_2018_all$DIN_TP <- "NA"
# West_Washer_Woman_ws_2018_all$Si_DIN <- "NA"
# West_Washer_Woman_ws_2018_all$F_SAT_S <- "NA"
# West_Washer_Woman_ws_2018_all$F_SAT_B <- "NA"
# West_Washer_Woman_ws_2018_all$F_Io <- "NA"
# West_Washer_Woman_ws_2018_all$DSIGT <- "NA"
# West_Washer_Woman_ws_2018_all$id <- "NA"
# 
# 
# 
# 
# 
# 
# 
# ## rest of the serc data
# West_Washer_Woman_serc_1995 <- subset(West_Washer_Woman_serc_year, Year == "1995")
# West_Washer_Woman_serc_1996 <- subset(West_Washer_Woman_serc_year, Year == "1996")
# West_Washer_Woman_serc_1997 <- subset(West_Washer_Woman_serc_year, Year == "1997")
# # West_Washer_Woman_serc_1998 <- subset(West_Washer_Woman_serc_year, Year == "1998")
# # West_Washer_Woman_serc_1999 <- subset(West_Washer_Woman_serc_year, Year == "1999")
# # West_Washer_Woman_serc_2000 <- subset(West_Washer_Woman_serc_year, Year == "2000")
# # West_Washer_Woman_serc_2001 <- subset(West_Washer_Woman_serc_year, Year == "2001")
# West_Washer_Woman_serc_2013 <- subset(West_Washer_Woman_serc_year, Year == "2013")
# 
# 
# 
# West_Washer_Woman_serc_extra <- rbind(West_Washer_Woman_serc_1995,West_Washer_Woman_serc_1996,West_Washer_Woman_serc_1997,West_Washer_Woman_serc_2013)
# 
# 
# 
# 
West_Washer_Woman_serc_year$Longitude <- "NA"
West_Washer_Woman_serc_year$Latitude <- "NA"
West_Washer_Woman_serc_year$Depth <- "NA"
West_Washer_Woman_serc_year$SST <- "NA"
West_Washer_Woman_serc_year$SSS <- "NA"
West_Washer_Woman_serc_year$Chl_a <- "NA"
West_Washer_Woman_serc_year$Phaeophyti <- "NA"
West_Washer_Woman_serc_year$id <- "NA"
# 
# 
# ### Rearrange extra ws data with serc_extra to merge with all other data
# 
# West_Washer_Woman_ws_2018_all <- setcolorder(West_Washer_Woman_ws_2018_all, names(West_Washer_Woman_serc_extra))
# 
# ## Merge all years together 

# West_Washer_Woman_all <- rbind(West_Washer_Woman_serc_extra,West_Washer_Woman_1998_all,West_Washer_Woman_1999_all,West_Washer_Woman_2000_all,West_Washer_Woman_2001_all,West_Washer_Woman_2002_all,West_Washer_Woman_2003_all,West_Washer_Woman_2004_all, West_Washer_Woman_2005_all,West_Washer_Woman_2006_all,West_Washer_Woman_2007_all,West_Washer_Woman_2008_all,West_Washer_Woman_2009_all,West_Washer_Woman_2010_all,West_Washer_Woman_2011_all,West_Washer_Woman_2012_all,West_Washer_Woman_2014_all,West_Washer_Woman_2015_all,West_Washer_Woman_2016_all,West_Washer_Woman_2017_all,West_Washer_Woman_ws_2018_all)
West_Washer_Woman_serc_year$sitename <- "West_Washer_Woman"

export(West_Washer_Woman_serc_year,"LK_10km/West_Washer_Woman_combined.csv")





Western_Head_serc <- import("LK_10km/Western_Head_serc.xls")
Western_Head_ws <- import("LK_10km/Western_Head_ws.xls")

## Change date to Year to merge the two dataframes

Western_Head_serc_date <- format(as.Date(Western_Head_serc$DATE_, format = "%Y %m %d"),"%Y")
Western_Head_serc_frame <- data.frame(Western_Head_serc_date)
Western_Head_serc_year <- cbind(Western_Head_serc_frame, Western_Head_serc)
colnames(Western_Head_serc_year)[1]<- "Year"
Western_Head_serc_year$FID <- NULL
Western_Head_serc_year$SURV <- NULL
Western_Head_serc_year$BASIN <- NULL
Western_Head_serc_year$SEGMENT <- NULL
Western_Head_serc_year$ZONE_ <- NULL
Western_Head_serc_year$TIME_ <- NULL
Western_Head_serc_year$DATE_ <- NULL
Western_Head_serc_year$STATION <- NULL
Western_Head_serc_year$SITE <- NULL



Western_Head_ws_date <- format(as.Date(Western_Head_ws$Date_, format = "%Y %m %d"),"%Y")
Western_Head_ws_frame <- data.frame(Western_Head_ws_date)
Western_Head_ws_year <- cbind(Western_Head_ws_frame, Western_Head_ws)
colnames(Western_Head_ws_year)[1]<- "Year"
Western_Head_ws_year$FID <- NULL
Western_Head_ws_year$Station <- NULL
Western_Head_ws_year$Date_ <- NULL
Western_Head_ws_year$GMT <- NULL
Western_Head_ws_year$Field11 <- NULL
Western_Head_ws_year$Field12 <- NULL
Western_Head_ws_year$Field13 <- NULL
Western_Head_ws_year$Field14 <- NULL
Western_Head_ws_year$Field15 <- NULL
Western_Head_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Western_Head_serc_year$Year)
unique(Western_Head_ws_year$Year)


Western_Head_serc_1998 <- subset(Western_Head_serc_year, Year == "1998")
Western_Head_serc_1998_merge <- Western_Head_serc_1998 %>%
  mutate(id = row_number())

Western_Head_ws_1998 <- subset(Western_Head_ws_year, Year == "1998")
Western_Head_ws_1998_merge <- Western_Head_ws_1998 %>%
  mutate(id = row_number())

Western_Head_1998_all <- full_join(Western_Head_serc_1998_merge, Western_Head_ws_1998_merge, by = c("Year","id"))


Western_Head_serc_1999 <- subset(Western_Head_serc_year, Year == "1999")
Western_Head_serc_1999_merge <- Western_Head_serc_1999 %>%
  mutate(id = row_number())

Western_Head_ws_1999 <- subset(Western_Head_ws_year, Year == "1999")
Western_Head_ws_1999_merge <- Western_Head_ws_1999 %>%
  mutate(id = row_number())

Western_Head_1999_all <- full_join(Western_Head_serc_1999_merge, Western_Head_ws_1999_merge, by = c("Year","id"))


Western_Head_serc_2000 <- subset(Western_Head_serc_year, Year == "2000")
Western_Head_serc_2000_merge <- Western_Head_serc_2000 %>%
  mutate(id = row_number())

Western_Head_ws_2000 <- subset(Western_Head_ws_year, Year == "2000")
Western_Head_ws_2000_merge <- Western_Head_ws_2000 %>%
  mutate(id = row_number())

Western_Head_2000_all <- full_join(Western_Head_serc_2000_merge, Western_Head_ws_2000_merge, by = c("Year","id"))


Western_Head_serc_2001 <- subset(Western_Head_serc_year, Year == "2001")
Western_Head_serc_2001_merge <- Western_Head_serc_2001 %>%
  mutate(id = row_number())

Western_Head_ws_2001 <- subset(Western_Head_ws_year, Year == "2001")
Western_Head_ws_2001_merge <- Western_Head_ws_2001 %>%
  mutate(id = row_number())

Western_Head_2001_all <- full_join(Western_Head_serc_2001_merge, Western_Head_ws_2001_merge, by = c("Year","id"))


Western_Head_serc_2002 <- subset(Western_Head_serc_year, Year == "2002")
Western_Head_serc_2002_merge <- Western_Head_serc_2002 %>%
  mutate(id = row_number())

Western_Head_ws_2002 <- subset(Western_Head_ws_year, Year == "2002")
Western_Head_ws_2002_merge <- Western_Head_ws_2002 %>%
  mutate(id = row_number())

Western_Head_2002_all <- full_join(Western_Head_serc_2002_merge, Western_Head_ws_2002_merge, by = c("Year","id"))


Western_Head_serc_2003 <- subset(Western_Head_serc_year, Year == "2003")
Western_Head_serc_2003_merge <- Western_Head_serc_2003 %>%
  mutate(id = row_number())

Western_Head_ws_2003 <- subset(Western_Head_ws_year, Year == "2003")
Western_Head_ws_2003_merge <- Western_Head_ws_2003 %>%
  mutate(id = row_number())

Western_Head_2003_all <- full_join(Western_Head_serc_2003_merge, Western_Head_ws_2003_merge, by = c("Year","id"))


Western_Head_serc_2004 <- subset(Western_Head_serc_year, Year == "2004")
Western_Head_serc_2004_merge <- Western_Head_serc_2004 %>%
  mutate(id = row_number())

Western_Head_ws_2004 <- subset(Western_Head_ws_year, Year == "2004")
Western_Head_ws_2004_merge <- Western_Head_ws_2004 %>%
  mutate(id = row_number())

Western_Head_2004_all <- full_join(Western_Head_serc_2004_merge, Western_Head_ws_2004_merge, by = c("Year","id"))


Western_Head_serc_2005 <- subset(Western_Head_serc_year, Year == "2005")
Western_Head_serc_2005_merge <- Western_Head_serc_2005 %>%
  mutate(id = row_number())

Western_Head_ws_2005 <- subset(Western_Head_ws_year, Year == "2005")
Western_Head_ws_2005_merge <- Western_Head_ws_2005 %>%
  mutate(id = row_number())

Western_Head_2005_all <- full_join(Western_Head_serc_2005_merge, Western_Head_ws_2005_merge, by = c("Year","id"))


Western_Head_serc_2006 <- subset(Western_Head_serc_year, Year == "2006")
Western_Head_serc_2006_merge <- Western_Head_serc_2006 %>%
  mutate(id = row_number())

Western_Head_ws_2006 <- subset(Western_Head_ws_year, Year == "2006")
Western_Head_ws_2006_merge <- Western_Head_ws_2006 %>%
  mutate(id = row_number())

Western_Head_2006_all <- full_join(Western_Head_serc_2006_merge, Western_Head_ws_2006_merge, by = c("Year","id"))


Western_Head_serc_2007 <- subset(Western_Head_serc_year, Year == "2007")
Western_Head_serc_2007_merge <- Western_Head_serc_2007 %>%
  mutate(id = row_number())

Western_Head_ws_2007 <- subset(Western_Head_ws_year, Year == "2007")
Western_Head_ws_2007_merge <- Western_Head_ws_2007 %>%
  mutate(id = row_number())

Western_Head_2007_all <- full_join(Western_Head_serc_2007_merge, Western_Head_ws_2007_merge, by = c("Year","id"))


Western_Head_serc_2008 <- subset(Western_Head_serc_year, Year == "2008")
Western_Head_serc_2008_merge <- Western_Head_serc_2008 %>%
  mutate(id = row_number())

Western_Head_ws_2008 <- subset(Western_Head_ws_year, Year == "2008")
Western_Head_ws_2008_merge <- Western_Head_ws_2008 %>%
  mutate(id = row_number())

Western_Head_2008_all <- full_join(Western_Head_serc_2008_merge, Western_Head_ws_2008_merge, by = c("Year","id"))


Western_Head_serc_2009 <- subset(Western_Head_serc_year, Year == "2009")
Western_Head_serc_2009_merge <- Western_Head_serc_2009 %>%
  mutate(id = row_number())

Western_Head_ws_2009 <- subset(Western_Head_ws_year, Year == "2009")
Western_Head_ws_2009_merge <- Western_Head_ws_2009 %>%
  mutate(id = row_number())

Western_Head_2009_all <- full_join(Western_Head_serc_2009_merge, Western_Head_ws_2009_merge, by = c("Year","id"))


Western_Head_serc_2010 <- subset(Western_Head_serc_year, Year == "2010")
Western_Head_serc_2010_merge <- Western_Head_serc_2010 %>%
  mutate(id = row_number())

Western_Head_ws_2010 <- subset(Western_Head_ws_year, Year == "2010")
Western_Head_ws_2010_merge <- Western_Head_ws_2010 %>%
  mutate(id = row_number())

Western_Head_2010_all <- full_join(Western_Head_serc_2010_merge, Western_Head_ws_2010_merge, by = c("Year","id"))


Western_Head_serc_2011 <- subset(Western_Head_serc_year, Year == "2011")
Western_Head_serc_2011_merge <- Western_Head_serc_2011 %>%
  mutate(id = row_number())

Western_Head_ws_2011 <- subset(Western_Head_ws_year, Year == "2011")
Western_Head_ws_2011_merge <- Western_Head_ws_2011 %>%
  mutate(id = row_number())

Western_Head_2011_all <- full_join(Western_Head_serc_2011_merge, Western_Head_ws_2011_merge, by = c("Year","id"))


Western_Head_serc_2012 <- subset(Western_Head_serc_year, Year == "2012")
Western_Head_serc_2012_merge <- Western_Head_serc_2012 %>%
  mutate(id = row_number())

Western_Head_ws_2012 <- subset(Western_Head_ws_year, Year == "2012")
Western_Head_ws_2012_merge <- Western_Head_ws_2012 %>%
  mutate(id = row_number())

Western_Head_2012_all <- full_join(Western_Head_serc_2012_merge, Western_Head_ws_2012_merge, by = c("Year","id"))


Western_Head_serc_2014 <- subset(Western_Head_serc_year, Year == "2014")
Western_Head_serc_2014_merge <- Western_Head_serc_2014 %>%
  mutate(id = row_number())

Western_Head_ws_2014 <- subset(Western_Head_ws_year, Year == "2014")
Western_Head_ws_2014_merge <- Western_Head_ws_2014 %>%
  mutate(id = row_number())

Western_Head_2014_all <- full_join(Western_Head_serc_2014_merge, Western_Head_ws_2014_merge, by = c("Year","id"))


Western_Head_serc_2015 <- subset(Western_Head_serc_year, Year == "2015")
Western_Head_serc_2015_merge <- Western_Head_serc_2015 %>%
  mutate(id = row_number())

Western_Head_ws_2015 <- subset(Western_Head_ws_year, Year == "2015")
Western_Head_ws_2015_merge <- Western_Head_ws_2015 %>%
  mutate(id = row_number())

Western_Head_2015_all <- full_join(Western_Head_serc_2015_merge, Western_Head_ws_2015_merge, by = c("Year","id"))


Western_Head_serc_2016 <- subset(Western_Head_serc_year, Year == "2016")
Western_Head_serc_2016_merge <- Western_Head_serc_2016 %>%
  mutate(id = row_number())

Western_Head_ws_2016 <- subset(Western_Head_ws_year, Year == "2016")
Western_Head_ws_2016_merge <- Western_Head_ws_2016 %>%
  mutate(id = row_number())

Western_Head_2016_all <- full_join(Western_Head_serc_2016_merge, Western_Head_ws_2016_merge, by = c("Year","id"))



Western_Head_serc_2017 <- subset(Western_Head_serc_year, Year == "2017")
Western_Head_serc_2017_merge <- Western_Head_serc_2017 %>%
  mutate(id = row_number())

Western_Head_ws_2017 <- subset(Western_Head_ws_year, Year == "2017")
Western_Head_ws_2017_merge <- Western_Head_ws_2017 %>%
  mutate(id = row_number())

Western_Head_2017_all <- full_join(Western_Head_serc_2017_merge, Western_Head_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Western_Head_ws_2018_all <- subset(Western_Head_ws_year, Year == "2018") 

## adding extra columns to merge 

Western_Head_ws_2018_all$LATDEC <- "NA"
Western_Head_ws_2018_all$LONDEC <- "NA"
Western_Head_ws_2018_all$DEPTH <- "NA"
Western_Head_ws_2018_all$NOX_S <- "NA"
Western_Head_ws_2018_all$NOX_B <- "NA"
Western_Head_ws_2018_all$NO3_S <- "NA"
Western_Head_ws_2018_all$NO3_B <- "NA"
Western_Head_ws_2018_all$NO2_S <- "NA"
Western_Head_ws_2018_all$NO2_B <- "NA"
Western_Head_ws_2018_all$NH4_S <- "NA"
Western_Head_ws_2018_all$NH4_B <- "NA"
Western_Head_ws_2018_all$TN_S <- "NA"
Western_Head_ws_2018_all$TN_B <- "NA"
Western_Head_ws_2018_all$DIN_S <- "NA"
Western_Head_ws_2018_all$DIN_B <- "NA"
Western_Head_ws_2018_all$TON_S <- "NA"
Western_Head_ws_2018_all$TON_B <- "NA"
Western_Head_ws_2018_all$TP_S <- "NA"
Western_Head_ws_2018_all$TP_B <- "NA"
Western_Head_ws_2018_all$SRP_S <- "NA"
Western_Head_ws_2018_all$SRP_B <- "NA"
Western_Head_ws_2018_all$APA_S <- "NA"
Western_Head_ws_2018_all$APA_B <- "NA"
Western_Head_ws_2018_all$CHLA_S <- "NA"
Western_Head_ws_2018_all$CHLA_B <- "NA"
Western_Head_ws_2018_all$TOC_S <- "NA"
Western_Head_ws_2018_all$TOC_B <- "NA"
Western_Head_ws_2018_all$SiO2_S <- "NA"
Western_Head_ws_2018_all$SiO2_B <- "NA"
Western_Head_ws_2018_all$TURB_S <- "NA"
Western_Head_ws_2018_all$TURB_B <- "NA"
Western_Head_ws_2018_all$SAL_S <- "NA"
Western_Head_ws_2018_all$SAL_B <- "NA"
Western_Head_ws_2018_all$TEMP_S <- "NA"
Western_Head_ws_2018_all$TEMP_B <- "NA"
Western_Head_ws_2018_all$DO_S <- "NA"
Western_Head_ws_2018_all$DO_B <- "NA"
Western_Head_ws_2018_all$Kd <- "NA"
Western_Head_ws_2018_all$pH <- "NA"
Western_Head_ws_2018_all$TN_TP <- "NA"
Western_Head_ws_2018_all$N_P <- "NA"
Western_Head_ws_2018_all$DIN_TP <- "NA"
Western_Head_ws_2018_all$Si_DIN <- "NA"
Western_Head_ws_2018_all$F_SAT_S <- "NA"
Western_Head_ws_2018_all$F_SAT_B <- "NA"
Western_Head_ws_2018_all$F_Io <- "NA"
Western_Head_ws_2018_all$DSIGT <- "NA"
Western_Head_ws_2018_all$id <- "NA"







## rest of the serc data
Western_Head_serc_1995 <- subset(Western_Head_serc_year, Year == "1995")
Western_Head_serc_1996 <- subset(Western_Head_serc_year, Year == "1996")
Western_Head_serc_1997 <- subset(Western_Head_serc_year, Year == "1997")
# Western_Head_serc_1998 <- subset(Western_Head_serc_year, Year == "1998")
# Western_Head_serc_1999 <- subset(Western_Head_serc_year, Year == "1999")
# Western_Head_serc_2000 <- subset(Western_Head_serc_year, Year == "2000")
# Western_Head_serc_2001 <- subset(Western_Head_serc_year, Year == "2001")
Western_Head_serc_2013 <- subset(Western_Head_serc_year, Year == "2013")



Western_Head_serc_extra <- rbind(Western_Head_serc_1995,Western_Head_serc_1996,Western_Head_serc_1997,Western_Head_serc_2013)




Western_Head_serc_extra$Longitude <- "NA"
Western_Head_serc_extra$Latitude <- "NA"
Western_Head_serc_extra$Depth <- "NA"
Western_Head_serc_extra$SST <- "NA"
Western_Head_serc_extra$SSS <- "NA"
Western_Head_serc_extra$Chl_a <- "NA"
Western_Head_serc_extra$Phaeophyti <- "NA"
Western_Head_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Western_Head_ws_2018_all <- setcolorder(Western_Head_ws_2018_all, names(Western_Head_serc_extra))

## Merge all years together 

Western_Head_all <- rbind(Western_Head_serc_extra,Western_Head_1998_all,Western_Head_1999_all,Western_Head_2000_all,Western_Head_2001_all,Western_Head_2002_all,Western_Head_2003_all,Western_Head_2004_all, Western_Head_2005_all,Western_Head_2006_all,Western_Head_2007_all,Western_Head_2008_all,Western_Head_2009_all,Western_Head_2010_all,Western_Head_2011_all,Western_Head_2012_all,Western_Head_2014_all,Western_Head_2015_all,Western_Head_2016_all,Western_Head_2017_all,Western_Head_ws_2018_all)
Western_Head_all$sitename <- "Western_Head"

export(Western_Head_all,"LK_10km/Western_Head_combined.csv")



Western_Sambo_Deep_serc <- import("LK_10km/Western_Sambo_Deep_serc.xls")
Western_Sambo_Deep_ws <- import("LK_10km/Western_Sambo_Deep_ws.xls")

## Change date to Year to merge the two dataframes

Western_Sambo_Deep_serc_date <- format(as.Date(Western_Sambo_Deep_serc$DATE_, format = "%Y %m %d"),"%Y")
Western_Sambo_Deep_serc_frame <- data.frame(Western_Sambo_Deep_serc_date)
Western_Sambo_Deep_serc_year <- cbind(Western_Sambo_Deep_serc_frame, Western_Sambo_Deep_serc)
colnames(Western_Sambo_Deep_serc_year)[1]<- "Year"
Western_Sambo_Deep_serc_year$FID <- NULL
Western_Sambo_Deep_serc_year$SURV <- NULL
Western_Sambo_Deep_serc_year$BASIN <- NULL
Western_Sambo_Deep_serc_year$SEGMENT <- NULL
Western_Sambo_Deep_serc_year$ZONE_ <- NULL
Western_Sambo_Deep_serc_year$TIME_ <- NULL
Western_Sambo_Deep_serc_year$DATE_ <- NULL
Western_Sambo_Deep_serc_year$STATION <- NULL
Western_Sambo_Deep_serc_year$SITE <- NULL



Western_Sambo_Deep_ws_date <- format(as.Date(Western_Sambo_Deep_ws$Date_, format = "%Y %m %d"),"%Y")
Western_Sambo_Deep_ws_frame <- data.frame(Western_Sambo_Deep_ws_date)
Western_Sambo_Deep_ws_year <- cbind(Western_Sambo_Deep_ws_frame, Western_Sambo_Deep_ws)
colnames(Western_Sambo_Deep_ws_year)[1]<- "Year"
Western_Sambo_Deep_ws_year$FID <- NULL
Western_Sambo_Deep_ws_year$Station <- NULL
Western_Sambo_Deep_ws_year$Date_ <- NULL
Western_Sambo_Deep_ws_year$GMT <- NULL
Western_Sambo_Deep_ws_year$Field11 <- NULL
Western_Sambo_Deep_ws_year$Field12 <- NULL
Western_Sambo_Deep_ws_year$Field13 <- NULL
Western_Sambo_Deep_ws_year$Field14 <- NULL
Western_Sambo_Deep_ws_year$Field15 <- NULL
Western_Sambo_Deep_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Western_Sambo_Deep_serc_year$Year)
unique(Western_Sambo_Deep_ws_year$Year)


Western_Sambo_Deep_serc_2015 <- subset(Western_Sambo_Deep_serc_year, Year == "2015")
Western_Sambo_Deep_serc_2015_merge <- Western_Sambo_Deep_serc_2015 %>%
  mutate(id = row_number())

Western_Sambo_Deep_ws_2015 <- subset(Western_Sambo_Deep_ws_year, Year == "2015")
Western_Sambo_Deep_ws_2015_merge <- Western_Sambo_Deep_ws_2015 %>%
  mutate(id = row_number())

Western_Sambo_Deep_2015_all <- full_join(Western_Sambo_Deep_serc_2015_merge, Western_Sambo_Deep_ws_2015_merge, by = c("Year","id"))


Western_Sambo_Deep_serc_2016 <- subset(Western_Sambo_Deep_serc_year, Year == "2016")
Western_Sambo_Deep_serc_2016_merge <- Western_Sambo_Deep_serc_2016 %>%
  mutate(id = row_number())

Western_Sambo_Deep_ws_2016 <- subset(Western_Sambo_Deep_ws_year, Year == "2016")
Western_Sambo_Deep_ws_2016_merge <- Western_Sambo_Deep_ws_2016 %>%
  mutate(id = row_number())

Western_Sambo_Deep_2016_all <- full_join(Western_Sambo_Deep_serc_2016_merge, Western_Sambo_Deep_ws_2016_merge, by = c("Year","id"))



Western_Sambo_Deep_serc_2017 <- subset(Western_Sambo_Deep_serc_year, Year == "2017")
Western_Sambo_Deep_serc_2017_merge <- Western_Sambo_Deep_serc_2017 %>%
  mutate(id = row_number())

Western_Sambo_Deep_ws_2017 <- subset(Western_Sambo_Deep_ws_year, Year == "2017")
Western_Sambo_Deep_ws_2017_merge <- Western_Sambo_Deep_ws_2017 %>%
  mutate(id = row_number())

Western_Sambo_Deep_2017_all <- full_join(Western_Sambo_Deep_serc_2017_merge, Western_Sambo_Deep_ws_2017_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

Western_Sambo_Deep_ws_2018_all <- subset(Western_Sambo_Deep_ws_year, Year == "2018") 

## adding extra columns to merge 

Western_Sambo_Deep_ws_2018_all$LATDEC <- "NA"
Western_Sambo_Deep_ws_2018_all$LONDEC <- "NA"
Western_Sambo_Deep_ws_2018_all$DEPTH <- "NA"
Western_Sambo_Deep_ws_2018_all$NOX_S <- "NA"
Western_Sambo_Deep_ws_2018_all$NOX_B <- "NA"
Western_Sambo_Deep_ws_2018_all$NO3_S <- "NA"
Western_Sambo_Deep_ws_2018_all$NO3_B <- "NA"
Western_Sambo_Deep_ws_2018_all$NO2_S <- "NA"
Western_Sambo_Deep_ws_2018_all$NO2_B <- "NA"
Western_Sambo_Deep_ws_2018_all$NH4_S <- "NA"
Western_Sambo_Deep_ws_2018_all$NH4_B <- "NA"
Western_Sambo_Deep_ws_2018_all$TN_S <- "NA"
Western_Sambo_Deep_ws_2018_all$TN_B <- "NA"
Western_Sambo_Deep_ws_2018_all$DIN_S <- "NA"
Western_Sambo_Deep_ws_2018_all$DIN_B <- "NA"
Western_Sambo_Deep_ws_2018_all$TON_S <- "NA"
Western_Sambo_Deep_ws_2018_all$TON_B <- "NA"
Western_Sambo_Deep_ws_2018_all$TP_S <- "NA"
Western_Sambo_Deep_ws_2018_all$TP_B <- "NA"
Western_Sambo_Deep_ws_2018_all$SRP_S <- "NA"
Western_Sambo_Deep_ws_2018_all$SRP_B <- "NA"
Western_Sambo_Deep_ws_2018_all$APA_S <- "NA"
Western_Sambo_Deep_ws_2018_all$APA_B <- "NA"
Western_Sambo_Deep_ws_2018_all$CHLA_S <- "NA"
Western_Sambo_Deep_ws_2018_all$CHLA_B <- "NA"
Western_Sambo_Deep_ws_2018_all$TOC_S <- "NA"
Western_Sambo_Deep_ws_2018_all$TOC_B <- "NA"
Western_Sambo_Deep_ws_2018_all$SiO2_S <- "NA"
Western_Sambo_Deep_ws_2018_all$SiO2_B <- "NA"
Western_Sambo_Deep_ws_2018_all$TURB_S <- "NA"
Western_Sambo_Deep_ws_2018_all$TURB_B <- "NA"
Western_Sambo_Deep_ws_2018_all$SAL_S <- "NA"
Western_Sambo_Deep_ws_2018_all$SAL_B <- "NA"
Western_Sambo_Deep_ws_2018_all$TEMP_S <- "NA"
Western_Sambo_Deep_ws_2018_all$TEMP_B <- "NA"
Western_Sambo_Deep_ws_2018_all$DO_S <- "NA"
Western_Sambo_Deep_ws_2018_all$DO_B <- "NA"
Western_Sambo_Deep_ws_2018_all$Kd <- "NA"
Western_Sambo_Deep_ws_2018_all$pH <- "NA"
Western_Sambo_Deep_ws_2018_all$TN_TP <- "NA"
Western_Sambo_Deep_ws_2018_all$N_P <- "NA"
Western_Sambo_Deep_ws_2018_all$DIN_TP <- "NA"
Western_Sambo_Deep_ws_2018_all$Si_DIN <- "NA"
Western_Sambo_Deep_ws_2018_all$F_SAT_S <- "NA"
Western_Sambo_Deep_ws_2018_all$F_SAT_B <- "NA"
Western_Sambo_Deep_ws_2018_all$F_Io <- "NA"
Western_Sambo_Deep_ws_2018_all$DSIGT <- "NA"
Western_Sambo_Deep_ws_2018_all$id <- "NA"







## rest of the serc data
Western_Sambo_Deep_serc_1995 <- subset(Western_Sambo_Deep_serc_year, Year == "1995")
Western_Sambo_Deep_serc_1996 <- subset(Western_Sambo_Deep_serc_year, Year == "1996")
Western_Sambo_Deep_serc_1997 <- subset(Western_Sambo_Deep_serc_year, Year == "1997")
Western_Sambo_Deep_serc_1998 <- subset(Western_Sambo_Deep_serc_year, Year == "1998")
Western_Sambo_Deep_serc_1999 <- subset(Western_Sambo_Deep_serc_year, Year == "1999")
Western_Sambo_Deep_serc_2000 <- subset(Western_Sambo_Deep_serc_year, Year == "2000")
Western_Sambo_Deep_serc_2001 <- subset(Western_Sambo_Deep_serc_year, Year == "2001")
Western_Sambo_Deep_serc_2002 <- subset(Western_Sambo_Deep_serc_year, Year == "2001")
Western_Sambo_Deep_serc_2003 <- subset(Western_Sambo_Deep_serc_year, Year == "2001")
Western_Sambo_Deep_serc_2004 <- subset(Western_Sambo_Deep_serc_year, Year == "2001")
Western_Sambo_Deep_serc_2005 <- subset(Western_Sambo_Deep_serc_year, Year == "2001")
Western_Sambo_Deep_serc_2006 <- subset(Western_Sambo_Deep_serc_year, Year == "2001")
Western_Sambo_Deep_serc_2007 <- subset(Western_Sambo_Deep_serc_year, Year == "2001")
Western_Sambo_Deep_serc_2008 <- subset(Western_Sambo_Deep_serc_year, Year == "2001")
Western_Sambo_Deep_serc_2009 <- subset(Western_Sambo_Deep_serc_year, Year == "2001")
Western_Sambo_Deep_serc_2010 <- subset(Western_Sambo_Deep_serc_year, Year == "2001")
Western_Sambo_Deep_serc_2011 <- subset(Western_Sambo_Deep_serc_year, Year == "2001")
Western_Sambo_Deep_serc_2012 <- subset(Western_Sambo_Deep_serc_year, Year == "2001")
Western_Sambo_Deep_serc_2013 <- subset(Western_Sambo_Deep_serc_year, Year == "2013")
Western_Sambo_Deep_serc_2014 <- subset(Western_Sambo_Deep_serc_year, Year == "2001")



Western_Sambo_Deep_serc_extra <- rbind(Western_Sambo_Deep_serc_1995,Western_Sambo_Deep_serc_1996,Western_Sambo_Deep_serc_1997,Western_Sambo_Deep_serc_1998,Western_Sambo_Deep_serc_1999,Western_Sambo_Deep_serc_2000,Western_Sambo_Deep_serc_2001,Western_Sambo_Deep_serc_2002,Western_Sambo_Deep_serc_2003,Western_Sambo_Deep_serc_2004,Western_Sambo_Deep_serc_2005,Western_Sambo_Deep_serc_2006,Western_Sambo_Deep_serc_2007,Western_Sambo_Deep_serc_2008,Western_Sambo_Deep_serc_2009,Western_Sambo_Deep_serc_2010,Western_Sambo_Deep_serc_2011,Western_Sambo_Deep_serc_2012,Western_Sambo_Deep_serc_2013,Western_Sambo_Deep_serc_2014)




Western_Sambo_Deep_serc_extra$Longitude <- "NA"
Western_Sambo_Deep_serc_extra$Latitude <- "NA"
Western_Sambo_Deep_serc_extra$Depth <- "NA"
Western_Sambo_Deep_serc_extra$SST <- "NA"
Western_Sambo_Deep_serc_extra$SSS <- "NA"
Western_Sambo_Deep_serc_extra$Chl_a <- "NA"
Western_Sambo_Deep_serc_extra$Phaeophyti <- "NA"
Western_Sambo_Deep_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Western_Sambo_Deep_ws_2018_all <- setcolorder(Western_Sambo_Deep_ws_2018_all, names(Western_Sambo_Deep_serc_extra))

## Merge all years together 

Western_Sambo_Deep_all <- rbind(Western_Sambo_Deep_serc_extra,Western_Sambo_Deep_2015_all,Western_Sambo_Deep_2016_all,Western_Sambo_Deep_2017_all,Western_Sambo_Deep_ws_2018_all)
Western_Sambo_Deep_all$sitename <- "Western_Sambo_Deep"

export(Western_Sambo_Deep_all,"LK_10km/Western_Sambo_Deep_combined.csv")



Western_Sambo_Shallow_serc <- import("LK_10km/Western_Sambo_Shallow_serc.xls")
Western_Sambo_Shallow_ws <- import("LK_10km/Western_Sambo_Shallow_ws.xls")

## Change date to Year to merge the two dataframes

Western_Sambo_Shallow_serc_date <- format(as.Date(Western_Sambo_Shallow_serc$DATE_, format = "%Y %m %d"),"%Y")
Western_Sambo_Shallow_serc_frame <- data.frame(Western_Sambo_Shallow_serc_date)
Western_Sambo_Shallow_serc_year <- cbind(Western_Sambo_Shallow_serc_frame, Western_Sambo_Shallow_serc)
colnames(Western_Sambo_Shallow_serc_year)[1]<- "Year"
Western_Sambo_Shallow_serc_year$FID <- NULL
Western_Sambo_Shallow_serc_year$SURV <- NULL
Western_Sambo_Shallow_serc_year$BASIN <- NULL
Western_Sambo_Shallow_serc_year$SEGMENT <- NULL
Western_Sambo_Shallow_serc_year$ZONE_ <- NULL
Western_Sambo_Shallow_serc_year$TIME_ <- NULL
Western_Sambo_Shallow_serc_year$DATE_ <- NULL
Western_Sambo_Shallow_serc_year$STATION <- NULL
Western_Sambo_Shallow_serc_year$SITE <- NULL



Western_Sambo_Shallow_ws_date <- format(as.Date(Western_Sambo_Shallow_ws$Date_, format = "%Y %m %d"),"%Y")
Western_Sambo_Shallow_ws_frame <- data.frame(Western_Sambo_Shallow_ws_date)
Western_Sambo_Shallow_ws_year <- cbind(Western_Sambo_Shallow_ws_frame, Western_Sambo_Shallow_ws)
colnames(Western_Sambo_Shallow_ws_year)[1]<- "Year"
Western_Sambo_Shallow_ws_year$FID <- NULL
Western_Sambo_Shallow_ws_year$Station <- NULL
Western_Sambo_Shallow_ws_year$Date_ <- NULL
Western_Sambo_Shallow_ws_year$GMT <- NULL
Western_Sambo_Shallow_ws_year$Field11 <- NULL
Western_Sambo_Shallow_ws_year$Field12 <- NULL
Western_Sambo_Shallow_ws_year$Field13 <- NULL
Western_Sambo_Shallow_ws_year$Field14 <- NULL
Western_Sambo_Shallow_ws_year$Field15 <- NULL
Western_Sambo_Shallow_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Western_Sambo_Shallow_serc_year$Year)
unique(Western_Sambo_Shallow_ws_year$Year)



Western_Sambo_Shallow_serc_2015 <- subset(Western_Sambo_Shallow_serc_year, Year == "2015")
Western_Sambo_Shallow_serc_2015_merge <- Western_Sambo_Shallow_serc_2015 %>%
  mutate(id = row_number())

Western_Sambo_Shallow_ws_2015 <- subset(Western_Sambo_Shallow_ws_year, Year == "2015")
Western_Sambo_Shallow_ws_2015_merge <- Western_Sambo_Shallow_ws_2015 %>%
  mutate(id = row_number())

Western_Sambo_Shallow_2015_all <- full_join(Western_Sambo_Shallow_serc_2015_merge, Western_Sambo_Shallow_ws_2015_merge, by = c("Year","id"))


Western_Sambo_Shallow_serc_2016 <- subset(Western_Sambo_Shallow_serc_year, Year == "2016")
Western_Sambo_Shallow_serc_2016_merge <- Western_Sambo_Shallow_serc_2016 %>%
  mutate(id = row_number())

Western_Sambo_Shallow_ws_2016 <- subset(Western_Sambo_Shallow_ws_year, Year == "2016")
Western_Sambo_Shallow_ws_2016_merge <- Western_Sambo_Shallow_ws_2016 %>%
  mutate(id = row_number())

Western_Sambo_Shallow_2016_all <- full_join(Western_Sambo_Shallow_serc_2016_merge, Western_Sambo_Shallow_ws_2016_merge, by = c("Year","id"))



Western_Sambo_Shallow_serc_2017 <- subset(Western_Sambo_Shallow_serc_year, Year == "2017")
Western_Sambo_Shallow_serc_2017_merge <- Western_Sambo_Shallow_serc_2017 %>%
  mutate(id = row_number())

Western_Sambo_Shallow_ws_2017 <- subset(Western_Sambo_Shallow_ws_year, Year == "2017")
Western_Sambo_Shallow_ws_2017_merge <- Western_Sambo_Shallow_ws_2017 %>%
  mutate(id = row_number())

Western_Sambo_Shallow_2017_all <- full_join(Western_Sambo_Shallow_serc_2017_merge, Western_Sambo_Shallow_ws_2017_merge, by = c("Year","id"))


### ADD on years for ws (need to add missing columns to merge)

Western_Sambo_Shallow_ws_2018_all <- subset(Western_Sambo_Shallow_ws_year, Year == "2018") 

## adding extra columns to merge 

Western_Sambo_Shallow_ws_2018_all$LATDEC <- "NA"
Western_Sambo_Shallow_ws_2018_all$LONDEC <- "NA"
Western_Sambo_Shallow_ws_2018_all$DEPTH <- "NA"
Western_Sambo_Shallow_ws_2018_all$NOX_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$NOX_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$NO3_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$NO3_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$NO2_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$NO2_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$NH4_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$NH4_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$TN_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$TN_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$DIN_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$DIN_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$TON_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$TON_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$TP_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$TP_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$SRP_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$SRP_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$APA_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$APA_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$CHLA_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$CHLA_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$TOC_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$TOC_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$SiO2_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$SiO2_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$TURB_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$TURB_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$SAL_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$SAL_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$TEMP_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$TEMP_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$DO_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$DO_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$Kd <- "NA"
Western_Sambo_Shallow_ws_2018_all$pH <- "NA"
Western_Sambo_Shallow_ws_2018_all$TN_TP <- "NA"
Western_Sambo_Shallow_ws_2018_all$N_P <- "NA"
Western_Sambo_Shallow_ws_2018_all$DIN_TP <- "NA"
Western_Sambo_Shallow_ws_2018_all$Si_DIN <- "NA"
Western_Sambo_Shallow_ws_2018_all$F_SAT_S <- "NA"
Western_Sambo_Shallow_ws_2018_all$F_SAT_B <- "NA"
Western_Sambo_Shallow_ws_2018_all$F_Io <- "NA"
Western_Sambo_Shallow_ws_2018_all$DSIGT <- "NA"
Western_Sambo_Shallow_ws_2018_all$id <- "NA"







## rest of the serc data
Western_Sambo_Shallow_serc_1995 <- subset(Western_Sambo_Shallow_serc_year, Year == "1995")
Western_Sambo_Shallow_serc_1996 <- subset(Western_Sambo_Shallow_serc_year, Year == "1996")
Western_Sambo_Shallow_serc_1997 <- subset(Western_Sambo_Shallow_serc_year, Year == "1997")
Western_Sambo_Shallow_serc_1998 <- subset(Western_Sambo_Shallow_serc_year, Year == "1998")
Western_Sambo_Shallow_serc_1999 <- subset(Western_Sambo_Shallow_serc_year, Year == "1999")
Western_Sambo_Shallow_serc_2000 <- subset(Western_Sambo_Shallow_serc_year, Year == "2000")
Western_Sambo_Shallow_serc_2001 <- subset(Western_Sambo_Shallow_serc_year, Year == "2001")
Western_Sambo_Shallow_serc_2002 <- subset(Western_Sambo_Shallow_serc_year, Year == "2001")
Western_Sambo_Shallow_serc_2003 <- subset(Western_Sambo_Shallow_serc_year, Year == "2001")
Western_Sambo_Shallow_serc_2004 <- subset(Western_Sambo_Shallow_serc_year, Year == "2001")
Western_Sambo_Shallow_serc_2005 <- subset(Western_Sambo_Shallow_serc_year, Year == "2001")
Western_Sambo_Shallow_serc_2006 <- subset(Western_Sambo_Shallow_serc_year, Year == "2001")
Western_Sambo_Shallow_serc_2007 <- subset(Western_Sambo_Shallow_serc_year, Year == "2001")
Western_Sambo_Shallow_serc_2008 <- subset(Western_Sambo_Shallow_serc_year, Year == "2001")
Western_Sambo_Shallow_serc_2009 <- subset(Western_Sambo_Shallow_serc_year, Year == "2001")
Western_Sambo_Shallow_serc_2010 <- subset(Western_Sambo_Shallow_serc_year, Year == "2001")
Western_Sambo_Shallow_serc_2011 <- subset(Western_Sambo_Shallow_serc_year, Year == "2001")
Western_Sambo_Shallow_serc_2012 <- subset(Western_Sambo_Shallow_serc_year, Year == "2001")
Western_Sambo_Shallow_serc_2013 <- subset(Western_Sambo_Shallow_serc_year, Year == "2013")
Western_Sambo_Shallow_serc_2014 <- subset(Western_Sambo_Shallow_serc_year, Year == "2001")



Western_Sambo_Shallow_serc_extra <- rbind(Western_Sambo_Shallow_serc_1995,Western_Sambo_Shallow_serc_1996,Western_Sambo_Shallow_serc_1997,Western_Sambo_Shallow_serc_1998,Western_Sambo_Shallow_serc_1999,Western_Sambo_Shallow_serc_2000,Western_Sambo_Shallow_serc_2001,Western_Sambo_Shallow_serc_2002,Western_Sambo_Shallow_serc_2003,Western_Sambo_Shallow_serc_2004,Western_Sambo_Shallow_serc_2005,Western_Sambo_Shallow_serc_2006,Western_Sambo_Shallow_serc_2007,Western_Sambo_Shallow_serc_2008,Western_Sambo_Shallow_serc_2009,Western_Sambo_Shallow_serc_2010,Western_Sambo_Shallow_serc_2011,Western_Sambo_Shallow_serc_2012,Western_Sambo_Shallow_serc_2013,Western_Sambo_Shallow_serc_2014)




Western_Sambo_Shallow_serc_extra$Longitude <- "NA"
Western_Sambo_Shallow_serc_extra$Latitude <- "NA"
Western_Sambo_Shallow_serc_extra$Depth <- "NA"
Western_Sambo_Shallow_serc_extra$SST <- "NA"
Western_Sambo_Shallow_serc_extra$SSS <- "NA"
Western_Sambo_Shallow_serc_extra$Chl_a <- "NA"
Western_Sambo_Shallow_serc_extra$Phaeophyti <- "NA"
Western_Sambo_Shallow_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Western_Sambo_Shallow_ws_2018_all <- setcolorder(Western_Sambo_Shallow_ws_2018_all, names(Western_Sambo_Shallow_serc_extra))

## Merge all years together 

Western_Sambo_Shallow_all <- rbind(Western_Sambo_Shallow_serc_extra,Western_Sambo_Shallow_2015_all,Western_Sambo_Shallow_2016_all,Western_Sambo_Shallow_2017_all,Western_Sambo_Shallow_ws_2018_all)
Western_Sambo_Shallow_all$sitename <- "Western_Sambo_Shallow"

export(Western_Sambo_Shallow_all,"LK_10km/Western_Sambo_Shallow_combined.csv")



Wonderland_serc <- import("LK_10km/Wonderland_serc.xls")
Wonderland_ws <- import("LK_10km/Wonderland_ws.xls")

## Change date to Year to merge the two dataframes

Wonderland_serc_date <- format(as.Date(Wonderland_serc$DATE_, format = "%Y %m %d"),"%Y")
Wonderland_serc_frame <- data.frame(Wonderland_serc_date)
Wonderland_serc_year <- cbind(Wonderland_serc_frame, Wonderland_serc)
colnames(Wonderland_serc_year)[1]<- "Year"
Wonderland_serc_year$FID <- NULL
Wonderland_serc_year$SURV <- NULL
Wonderland_serc_year$BASIN <- NULL
Wonderland_serc_year$SEGMENT <- NULL
Wonderland_serc_year$ZONE_ <- NULL
Wonderland_serc_year$TIME_ <- NULL
Wonderland_serc_year$DATE_ <- NULL
Wonderland_serc_year$STATION <- NULL
Wonderland_serc_year$SITE <- NULL



Wonderland_ws_date <- format(as.Date(Wonderland_ws$Date_, format = "%Y %m %d"),"%Y")
Wonderland_ws_frame <- data.frame(Wonderland_ws_date)
Wonderland_ws_year <- cbind(Wonderland_ws_frame, Wonderland_ws)
colnames(Wonderland_ws_year)[1]<- "Year"
Wonderland_ws_year$FID <- NULL
Wonderland_ws_year$Station <- NULL
Wonderland_ws_year$Date_ <- NULL
Wonderland_ws_year$GMT <- NULL
Wonderland_ws_year$Field11 <- NULL
Wonderland_ws_year$Field12 <- NULL
Wonderland_ws_year$Field13 <- NULL
Wonderland_ws_year$Field14 <- NULL
Wonderland_ws_year$Field15 <- NULL
Wonderland_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Wonderland_serc_year$Year)
unique(Wonderland_ws_year$Year)


Wonderland_serc_1998 <- subset(Wonderland_serc_year, Year == "1998")
Wonderland_serc_1998_merge <- Wonderland_serc_1998 %>%
  mutate(id = row_number())

Wonderland_ws_1998 <- subset(Wonderland_ws_year, Year == "1998")
Wonderland_ws_1998_merge <- Wonderland_ws_1998 %>%
  mutate(id = row_number())

Wonderland_1998_all <- full_join(Wonderland_serc_1998_merge, Wonderland_ws_1998_merge, by = c("Year","id"))


Wonderland_serc_1999 <- subset(Wonderland_serc_year, Year == "1999")
Wonderland_serc_1999_merge <- Wonderland_serc_1999 %>%
  mutate(id = row_number())

Wonderland_ws_1999 <- subset(Wonderland_ws_year, Year == "1999")
Wonderland_ws_1999_merge <- Wonderland_ws_1999 %>%
  mutate(id = row_number())

Wonderland_1999_all <- full_join(Wonderland_serc_1999_merge, Wonderland_ws_1999_merge, by = c("Year","id"))


Wonderland_serc_2000 <- subset(Wonderland_serc_year, Year == "2000")
Wonderland_serc_2000_merge <- Wonderland_serc_2000 %>%
  mutate(id = row_number())

Wonderland_ws_2000 <- subset(Wonderland_ws_year, Year == "2000")
Wonderland_ws_2000_merge <- Wonderland_ws_2000 %>%
  mutate(id = row_number())

Wonderland_2000_all <- full_join(Wonderland_serc_2000_merge, Wonderland_ws_2000_merge, by = c("Year","id"))


Wonderland_serc_2001 <- subset(Wonderland_serc_year, Year == "2001")
Wonderland_serc_2001_merge <- Wonderland_serc_2001 %>%
  mutate(id = row_number())

Wonderland_ws_2001 <- subset(Wonderland_ws_year, Year == "2001")
Wonderland_ws_2001_merge <- Wonderland_ws_2001 %>%
  mutate(id = row_number())

Wonderland_2001_all <- full_join(Wonderland_serc_2001_merge, Wonderland_ws_2001_merge, by = c("Year","id"))


Wonderland_serc_2002 <- subset(Wonderland_serc_year, Year == "2002")
Wonderland_serc_2002_merge <- Wonderland_serc_2002 %>%
  mutate(id = row_number())

Wonderland_ws_2002 <- subset(Wonderland_ws_year, Year == "2002")
Wonderland_ws_2002_merge <- Wonderland_ws_2002 %>%
  mutate(id = row_number())

Wonderland_2002_all <- full_join(Wonderland_serc_2002_merge, Wonderland_ws_2002_merge, by = c("Year","id"))


Wonderland_serc_2003 <- subset(Wonderland_serc_year, Year == "2003")
Wonderland_serc_2003_merge <- Wonderland_serc_2003 %>%
  mutate(id = row_number())

Wonderland_ws_2003 <- subset(Wonderland_ws_year, Year == "2003")
Wonderland_ws_2003_merge <- Wonderland_ws_2003 %>%
  mutate(id = row_number())

Wonderland_2003_all <- full_join(Wonderland_serc_2003_merge, Wonderland_ws_2003_merge, by = c("Year","id"))


Wonderland_serc_2004 <- subset(Wonderland_serc_year, Year == "2004")
Wonderland_serc_2004_merge <- Wonderland_serc_2004 %>%
  mutate(id = row_number())

Wonderland_ws_2004 <- subset(Wonderland_ws_year, Year == "2004")
Wonderland_ws_2004_merge <- Wonderland_ws_2004 %>%
  mutate(id = row_number())

Wonderland_2004_all <- full_join(Wonderland_serc_2004_merge, Wonderland_ws_2004_merge, by = c("Year","id"))


Wonderland_serc_2005 <- subset(Wonderland_serc_year, Year == "2005")
Wonderland_serc_2005_merge <- Wonderland_serc_2005 %>%
  mutate(id = row_number())

Wonderland_ws_2005 <- subset(Wonderland_ws_year, Year == "2005")
Wonderland_ws_2005_merge <- Wonderland_ws_2005 %>%
  mutate(id = row_number())

Wonderland_2005_all <- full_join(Wonderland_serc_2005_merge, Wonderland_ws_2005_merge, by = c("Year","id"))


Wonderland_serc_2006 <- subset(Wonderland_serc_year, Year == "2006")
Wonderland_serc_2006_merge <- Wonderland_serc_2006 %>%
  mutate(id = row_number())

Wonderland_ws_2006 <- subset(Wonderland_ws_year, Year == "2006")
Wonderland_ws_2006_merge <- Wonderland_ws_2006 %>%
  mutate(id = row_number())

Wonderland_2006_all <- full_join(Wonderland_serc_2006_merge, Wonderland_ws_2006_merge, by = c("Year","id"))


Wonderland_serc_2007 <- subset(Wonderland_serc_year, Year == "2007")
Wonderland_serc_2007_merge <- Wonderland_serc_2007 %>%
  mutate(id = row_number())

Wonderland_ws_2007 <- subset(Wonderland_ws_year, Year == "2007")
Wonderland_ws_2007_merge <- Wonderland_ws_2007 %>%
  mutate(id = row_number())

Wonderland_2007_all <- full_join(Wonderland_serc_2007_merge, Wonderland_ws_2007_merge, by = c("Year","id"))


Wonderland_serc_2008 <- subset(Wonderland_serc_year, Year == "2008")
Wonderland_serc_2008_merge <- Wonderland_serc_2008 %>%
  mutate(id = row_number())

Wonderland_ws_2008 <- subset(Wonderland_ws_year, Year == "2008")
Wonderland_ws_2008_merge <- Wonderland_ws_2008 %>%
  mutate(id = row_number())

Wonderland_2008_all <- full_join(Wonderland_serc_2008_merge, Wonderland_ws_2008_merge, by = c("Year","id"))


Wonderland_serc_2009 <- subset(Wonderland_serc_year, Year == "2009")
Wonderland_serc_2009_merge <- Wonderland_serc_2009 %>%
  mutate(id = row_number())

Wonderland_ws_2009 <- subset(Wonderland_ws_year, Year == "2009")
Wonderland_ws_2009_merge <- Wonderland_ws_2009 %>%
  mutate(id = row_number())

Wonderland_2009_all <- full_join(Wonderland_serc_2009_merge, Wonderland_ws_2009_merge, by = c("Year","id"))


Wonderland_serc_2010 <- subset(Wonderland_serc_year, Year == "2010")
Wonderland_serc_2010_merge <- Wonderland_serc_2010 %>%
  mutate(id = row_number())

Wonderland_ws_2010 <- subset(Wonderland_ws_year, Year == "2010")
Wonderland_ws_2010_merge <- Wonderland_ws_2010 %>%
  mutate(id = row_number())

Wonderland_2010_all <- full_join(Wonderland_serc_2010_merge, Wonderland_ws_2010_merge, by = c("Year","id"))


Wonderland_serc_2011 <- subset(Wonderland_serc_year, Year == "2011")
Wonderland_serc_2011_merge <- Wonderland_serc_2011 %>%
  mutate(id = row_number())

Wonderland_ws_2011 <- subset(Wonderland_ws_year, Year == "2011")
Wonderland_ws_2011_merge <- Wonderland_ws_2011 %>%
  mutate(id = row_number())

Wonderland_2011_all <- full_join(Wonderland_serc_2011_merge, Wonderland_ws_2011_merge, by = c("Year","id"))


Wonderland_serc_2012 <- subset(Wonderland_serc_year, Year == "2012")
Wonderland_serc_2012_merge <- Wonderland_serc_2012 %>%
  mutate(id = row_number())

Wonderland_ws_2012 <- subset(Wonderland_ws_year, Year == "2012")
Wonderland_ws_2012_merge <- Wonderland_ws_2012 %>%
  mutate(id = row_number())

Wonderland_2012_all <- full_join(Wonderland_serc_2012_merge, Wonderland_ws_2012_merge, by = c("Year","id"))


Wonderland_serc_2014 <- subset(Wonderland_serc_year, Year == "2014")
Wonderland_serc_2014_merge <- Wonderland_serc_2014 %>%
  mutate(id = row_number())

Wonderland_ws_2014 <- subset(Wonderland_ws_year, Year == "2014")
Wonderland_ws_2014_merge <- Wonderland_ws_2014 %>%
  mutate(id = row_number())

Wonderland_2014_all <- full_join(Wonderland_serc_2014_merge, Wonderland_ws_2014_merge, by = c("Year","id"))


Wonderland_serc_2015 <- subset(Wonderland_serc_year, Year == "2015")
Wonderland_serc_2015_merge <- Wonderland_serc_2015 %>%
  mutate(id = row_number())

Wonderland_ws_2015 <- subset(Wonderland_ws_year, Year == "2015")
Wonderland_ws_2015_merge <- Wonderland_ws_2015 %>%
  mutate(id = row_number())

Wonderland_2015_all <- full_join(Wonderland_serc_2015_merge, Wonderland_ws_2015_merge, by = c("Year","id"))


Wonderland_serc_2016 <- subset(Wonderland_serc_year, Year == "2016")
Wonderland_serc_2016_merge <- Wonderland_serc_2016 %>%
  mutate(id = row_number())

Wonderland_ws_2016 <- subset(Wonderland_ws_year, Year == "2016")
Wonderland_ws_2016_merge <- Wonderland_ws_2016 %>%
  mutate(id = row_number())

Wonderland_2016_all <- full_join(Wonderland_serc_2016_merge, Wonderland_ws_2016_merge, by = c("Year","id"))



Wonderland_serc_2017 <- subset(Wonderland_serc_year, Year == "2017")
Wonderland_serc_2017_merge <- Wonderland_serc_2017 %>%
  mutate(id = row_number())

Wonderland_ws_2017 <- subset(Wonderland_ws_year, Year == "2017")
Wonderland_ws_2017_merge <- Wonderland_ws_2017 %>%
  mutate(id = row_number())

Wonderland_2017_all <- full_join(Wonderland_serc_2017_merge, Wonderland_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Wonderland_ws_2018_all <- subset(Wonderland_ws_year, Year == "2018") 

## adding extra columns to merge 

Wonderland_ws_2018_all$LATDEC <- "NA"
Wonderland_ws_2018_all$LONDEC <- "NA"
Wonderland_ws_2018_all$DEPTH <- "NA"
Wonderland_ws_2018_all$NOX_S <- "NA"
Wonderland_ws_2018_all$NOX_B <- "NA"
Wonderland_ws_2018_all$NO3_S <- "NA"
Wonderland_ws_2018_all$NO3_B <- "NA"
Wonderland_ws_2018_all$NO2_S <- "NA"
Wonderland_ws_2018_all$NO2_B <- "NA"
Wonderland_ws_2018_all$NH4_S <- "NA"
Wonderland_ws_2018_all$NH4_B <- "NA"
Wonderland_ws_2018_all$TN_S <- "NA"
Wonderland_ws_2018_all$TN_B <- "NA"
Wonderland_ws_2018_all$DIN_S <- "NA"
Wonderland_ws_2018_all$DIN_B <- "NA"
Wonderland_ws_2018_all$TON_S <- "NA"
Wonderland_ws_2018_all$TON_B <- "NA"
Wonderland_ws_2018_all$TP_S <- "NA"
Wonderland_ws_2018_all$TP_B <- "NA"
Wonderland_ws_2018_all$SRP_S <- "NA"
Wonderland_ws_2018_all$SRP_B <- "NA"
Wonderland_ws_2018_all$APA_S <- "NA"
Wonderland_ws_2018_all$APA_B <- "NA"
Wonderland_ws_2018_all$CHLA_S <- "NA"
Wonderland_ws_2018_all$CHLA_B <- "NA"
Wonderland_ws_2018_all$TOC_S <- "NA"
Wonderland_ws_2018_all$TOC_B <- "NA"
Wonderland_ws_2018_all$SiO2_S <- "NA"
Wonderland_ws_2018_all$SiO2_B <- "NA"
Wonderland_ws_2018_all$TURB_S <- "NA"
Wonderland_ws_2018_all$TURB_B <- "NA"
Wonderland_ws_2018_all$SAL_S <- "NA"
Wonderland_ws_2018_all$SAL_B <- "NA"
Wonderland_ws_2018_all$TEMP_S <- "NA"
Wonderland_ws_2018_all$TEMP_B <- "NA"
Wonderland_ws_2018_all$DO_S <- "NA"
Wonderland_ws_2018_all$DO_B <- "NA"
Wonderland_ws_2018_all$Kd <- "NA"
Wonderland_ws_2018_all$pH <- "NA"
Wonderland_ws_2018_all$TN_TP <- "NA"
Wonderland_ws_2018_all$N_P <- "NA"
Wonderland_ws_2018_all$DIN_TP <- "NA"
Wonderland_ws_2018_all$Si_DIN <- "NA"
Wonderland_ws_2018_all$F_SAT_S <- "NA"
Wonderland_ws_2018_all$F_SAT_B <- "NA"
Wonderland_ws_2018_all$F_Io <- "NA"
Wonderland_ws_2018_all$DSIGT <- "NA"
Wonderland_ws_2018_all$id <- "NA"







## rest of the serc data
Wonderland_serc_1995 <- subset(Wonderland_serc_year, Year == "1995")
Wonderland_serc_1996 <- subset(Wonderland_serc_year, Year == "1996")
Wonderland_serc_1997 <- subset(Wonderland_serc_year, Year == "1997")
# Wonderland_serc_1998 <- subset(Wonderland_serc_year, Year == "1998")
# Wonderland_serc_1999 <- subset(Wonderland_serc_year, Year == "1999")
# Wonderland_serc_2000 <- subset(Wonderland_serc_year, Year == "2000")
# Wonderland_serc_2001 <- subset(Wonderland_serc_year, Year == "2001")
Wonderland_serc_2013 <- subset(Wonderland_serc_year, Year == "2013")



Wonderland_serc_extra <- rbind(Wonderland_serc_1995,Wonderland_serc_1996,Wonderland_serc_1997,Wonderland_serc_2013)




Wonderland_serc_extra$Longitude <- "NA"
Wonderland_serc_extra$Latitude <- "NA"
Wonderland_serc_extra$Depth <- "NA"
Wonderland_serc_extra$SST <- "NA"
Wonderland_serc_extra$SSS <- "NA"
Wonderland_serc_extra$Chl_a <- "NA"
Wonderland_serc_extra$Phaeophyti <- "NA"
Wonderland_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Wonderland_ws_2018_all <- setcolorder(Wonderland_ws_2018_all, names(Wonderland_serc_extra))

## Merge all years together 

Wonderland_all <- rbind(Wonderland_serc_extra,Wonderland_1998_all,Wonderland_1999_all,Wonderland_2000_all,Wonderland_2001_all,Wonderland_2002_all,Wonderland_2003_all,Wonderland_2004_all, Wonderland_2005_all,Wonderland_2006_all,Wonderland_2007_all,Wonderland_2008_all,Wonderland_2009_all,Wonderland_2010_all,Wonderland_2011_all,Wonderland_2012_all,Wonderland_2014_all,Wonderland_2015_all,Wonderland_2016_all,Wonderland_2017_all,Wonderland_ws_2018_all)
Wonderland_all$sitename <- "Wonderland"

export(Wonderland_all,"LK_10km/Wonderland_combined.csv")


### Combine Lower Keys

Lower_Keys_all <- rbind(Cliff_Green_all,Eastern_Sambo_Deep_all
                        ,Eastern_Sambo_Shallow_all,Jaap_Reef_serc_year,
                        Looe_Key_Deep_all,Looe_Key_Shallow_all,
                        Red_Dun_Reef_all,Rock_Key_Deep_all,Rock_Key_Shallow_all,
                        Sand_Key_Deep_all,Sand_Key_Shallow_all,
                        West_Washer_Woman_serc_year,Western_Head_all,
                        Western_Sambo_Deep_all,Western_Sambo_Shallow_all,Wonderland_all)


export(Lower_Keys_all,"LK_10km/LK_Nutrients_Combined.csv")







## Middle Keys


Alligator_Deep_serc <- import("MK_10km/Alligator_Deep_serc.xls")
# Alligator_Deep_ws <- import("MK_10km/Alligator_Deep_ws.xls")

## Change date to Year to merge the two dataframes

Alligator_Deep_serc_date <- format(as.Date(Alligator_Deep_serc$DATE_, format = "%Y %m %d"),"%Y")
Alligator_Deep_serc_frame <- data.frame(Alligator_Deep_serc_date)
Alligator_Deep_serc_year <- cbind(Alligator_Deep_serc_frame, Alligator_Deep_serc)
colnames(Alligator_Deep_serc_year)[1]<- "Year"
Alligator_Deep_serc_year$FID <- NULL
Alligator_Deep_serc_year$SURV <- NULL
Alligator_Deep_serc_year$BASIN <- NULL
Alligator_Deep_serc_year$SEGMENT <- NULL
Alligator_Deep_serc_year$ZONE_ <- NULL
Alligator_Deep_serc_year$TIME_ <- NULL
Alligator_Deep_serc_year$DATE_ <- NULL
Alligator_Deep_serc_year$STATION <- NULL
Alligator_Deep_serc_year$SITE <- NULL



# Alligator_Deep_ws_date <- format(as.Date(Alligator_Deep_ws$Date_, format = "%Y %m %d"),"%Y")
# Alligator_Deep_ws_frame <- data.frame(Alligator_Deep_ws_date)
# Alligator_Deep_ws_year <- cbind(Alligator_Deep_ws_frame, Alligator_Deep_ws)
# colnames(Alligator_Deep_ws_year)[1]<- "Year"
# Alligator_Deep_ws_year$FID <- NULL
# Alligator_Deep_ws_year$Station <- NULL
# Alligator_Deep_ws_year$Date_ <- NULL
# Alligator_Deep_ws_year$GMT <- NULL
# Alligator_Deep_ws_year$Field11 <- NULL
# Alligator_Deep_ws_year$Field12 <- NULL
# Alligator_Deep_ws_year$Field13 <- NULL
# Alligator_Deep_ws_year$Field14 <- NULL
# Alligator_Deep_ws_year$Field15 <- NULL
# Alligator_Deep_ws_year$Field16 <- NULL
# 
# 
# #unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
# #   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
# unique(Alligator_Deep_serc_year$Year)
# unique(Alligator_Deep_ws_year$Year)
# 
# 
# Alligator_Deep_serc_1998 <- subset(Alligator_Deep_serc_year, Year == "1998")
# Alligator_Deep_serc_1998_merge <- Alligator_Deep_serc_1998 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_1998 <- subset(Alligator_Deep_ws_year, Year == "1998")
# Alligator_Deep_ws_1998_merge <- Alligator_Deep_ws_1998 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_1998_all <- full_join(Alligator_Deep_serc_1998_merge, Alligator_Deep_ws_1998_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_1999 <- subset(Alligator_Deep_serc_year, Year == "1999")
# Alligator_Deep_serc_1999_merge <- Alligator_Deep_serc_1999 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_1999 <- subset(Alligator_Deep_ws_year, Year == "1999")
# Alligator_Deep_ws_1999_merge <- Alligator_Deep_ws_1999 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_1999_all <- full_join(Alligator_Deep_serc_1999_merge, Alligator_Deep_ws_1999_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_2000 <- subset(Alligator_Deep_serc_year, Year == "2000")
# Alligator_Deep_serc_2000_merge <- Alligator_Deep_serc_2000 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2000 <- subset(Alligator_Deep_ws_year, Year == "2000")
# Alligator_Deep_ws_2000_merge <- Alligator_Deep_ws_2000 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2000_all <- full_join(Alligator_Deep_serc_2000_merge, Alligator_Deep_ws_2000_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_2001 <- subset(Alligator_Deep_serc_year, Year == "2001")
# Alligator_Deep_serc_2001_merge <- Alligator_Deep_serc_2001 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2001 <- subset(Alligator_Deep_ws_year, Year == "2001")
# Alligator_Deep_ws_2001_merge <- Alligator_Deep_ws_2001 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2001_all <- full_join(Alligator_Deep_serc_2001_merge, Alligator_Deep_ws_2001_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_2002 <- subset(Alligator_Deep_serc_year, Year == "2002")
# Alligator_Deep_serc_2002_merge <- Alligator_Deep_serc_2002 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2002 <- subset(Alligator_Deep_ws_year, Year == "2002")
# Alligator_Deep_ws_2002_merge <- Alligator_Deep_ws_2002 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2002_all <- full_join(Alligator_Deep_serc_2002_merge, Alligator_Deep_ws_2002_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_2003 <- subset(Alligator_Deep_serc_year, Year == "2003")
# Alligator_Deep_serc_2003_merge <- Alligator_Deep_serc_2003 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2003 <- subset(Alligator_Deep_ws_year, Year == "2003")
# Alligator_Deep_ws_2003_merge <- Alligator_Deep_ws_2003 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2003_all <- full_join(Alligator_Deep_serc_2003_merge, Alligator_Deep_ws_2003_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_2004 <- subset(Alligator_Deep_serc_year, Year == "2004")
# Alligator_Deep_serc_2004_merge <- Alligator_Deep_serc_2004 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2004 <- subset(Alligator_Deep_ws_year, Year == "2004")
# Alligator_Deep_ws_2004_merge <- Alligator_Deep_ws_2004 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2004_all <- full_join(Alligator_Deep_serc_2004_merge, Alligator_Deep_ws_2004_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_2005 <- subset(Alligator_Deep_serc_year, Year == "2005")
# Alligator_Deep_serc_2005_merge <- Alligator_Deep_serc_2005 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2005 <- subset(Alligator_Deep_ws_year, Year == "2005")
# Alligator_Deep_ws_2005_merge <- Alligator_Deep_ws_2005 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2005_all <- full_join(Alligator_Deep_serc_2005_merge, Alligator_Deep_ws_2005_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_2006 <- subset(Alligator_Deep_serc_year, Year == "2006")
# Alligator_Deep_serc_2006_merge <- Alligator_Deep_serc_2006 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2006 <- subset(Alligator_Deep_ws_year, Year == "2006")
# Alligator_Deep_ws_2006_merge <- Alligator_Deep_ws_2006 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2006_all <- full_join(Alligator_Deep_serc_2006_merge, Alligator_Deep_ws_2006_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_2007 <- subset(Alligator_Deep_serc_year, Year == "2007")
# Alligator_Deep_serc_2007_merge <- Alligator_Deep_serc_2007 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2007 <- subset(Alligator_Deep_ws_year, Year == "2007")
# Alligator_Deep_ws_2007_merge <- Alligator_Deep_ws_2007 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2007_all <- full_join(Alligator_Deep_serc_2007_merge, Alligator_Deep_ws_2007_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_2008 <- subset(Alligator_Deep_serc_year, Year == "2008")
# Alligator_Deep_serc_2008_merge <- Alligator_Deep_serc_2008 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2008 <- subset(Alligator_Deep_ws_year, Year == "2008")
# Alligator_Deep_ws_2008_merge <- Alligator_Deep_ws_2008 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2008_all <- full_join(Alligator_Deep_serc_2008_merge, Alligator_Deep_ws_2008_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_2009 <- subset(Alligator_Deep_serc_year, Year == "2009")
# Alligator_Deep_serc_2009_merge <- Alligator_Deep_serc_2009 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2009 <- subset(Alligator_Deep_ws_year, Year == "2009")
# Alligator_Deep_ws_2009_merge <- Alligator_Deep_ws_2009 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2009_all <- full_join(Alligator_Deep_serc_2009_merge, Alligator_Deep_ws_2009_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_2010 <- subset(Alligator_Deep_serc_year, Year == "2010")
# Alligator_Deep_serc_2010_merge <- Alligator_Deep_serc_2010 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2010 <- subset(Alligator_Deep_ws_year, Year == "2010")
# Alligator_Deep_ws_2010_merge <- Alligator_Deep_ws_2010 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2010_all <- full_join(Alligator_Deep_serc_2010_merge, Alligator_Deep_ws_2010_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_2011 <- subset(Alligator_Deep_serc_year, Year == "2011")
# Alligator_Deep_serc_2011_merge <- Alligator_Deep_serc_2011 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2011 <- subset(Alligator_Deep_ws_year, Year == "2011")
# Alligator_Deep_ws_2011_merge <- Alligator_Deep_ws_2011 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2011_all <- full_join(Alligator_Deep_serc_2011_merge, Alligator_Deep_ws_2011_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_2012 <- subset(Alligator_Deep_serc_year, Year == "2012")
# Alligator_Deep_serc_2012_merge <- Alligator_Deep_serc_2012 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2012 <- subset(Alligator_Deep_ws_year, Year == "2012")
# Alligator_Deep_ws_2012_merge <- Alligator_Deep_ws_2012 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2012_all <- full_join(Alligator_Deep_serc_2012_merge, Alligator_Deep_ws_2012_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_2014 <- subset(Alligator_Deep_serc_year, Year == "2014")
# Alligator_Deep_serc_2014_merge <- Alligator_Deep_serc_2014 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2014 <- subset(Alligator_Deep_ws_year, Year == "2014")
# Alligator_Deep_ws_2014_merge <- Alligator_Deep_ws_2014 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2014_all <- full_join(Alligator_Deep_serc_2014_merge, Alligator_Deep_ws_2014_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_2015 <- subset(Alligator_Deep_serc_year, Year == "2015")
# Alligator_Deep_serc_2015_merge <- Alligator_Deep_serc_2015 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2015 <- subset(Alligator_Deep_ws_year, Year == "2015")
# Alligator_Deep_ws_2015_merge <- Alligator_Deep_ws_2015 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2015_all <- full_join(Alligator_Deep_serc_2015_merge, Alligator_Deep_ws_2015_merge, by = c("Year","id"))
# 
# 
# Alligator_Deep_serc_2016 <- subset(Alligator_Deep_serc_year, Year == "2016")
# Alligator_Deep_serc_2016_merge <- Alligator_Deep_serc_2016 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2016 <- subset(Alligator_Deep_ws_year, Year == "2016")
# Alligator_Deep_ws_2016_merge <- Alligator_Deep_ws_2016 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2016_all <- full_join(Alligator_Deep_serc_2016_merge, Alligator_Deep_ws_2016_merge, by = c("Year","id"))
# 
# 
# 
# Alligator_Deep_serc_2017 <- subset(Alligator_Deep_serc_year, Year == "2017")
# Alligator_Deep_serc_2017_merge <- Alligator_Deep_serc_2017 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_ws_2017 <- subset(Alligator_Deep_ws_year, Year == "2017")
# Alligator_Deep_ws_2017_merge <- Alligator_Deep_ws_2017 %>%
#   mutate(id = row_number())
# 
# Alligator_Deep_2017_all <- full_join(Alligator_Deep_serc_2017_merge, Alligator_Deep_ws_2017_merge, by = c("Year","id"))
# 
# 
# 
# ### ADD on years for ws (need to add missing columns to merge)
# 
# Alligator_Deep_ws_2018_all <- subset(Alligator_Deep_ws_year, Year == "2018") 
# 
# ## adding extra columns to merge 
# 
# Alligator_Deep_ws_2018_all$LATDEC <- "NA"
# Alligator_Deep_ws_2018_all$LONDEC <- "NA"
# Alligator_Deep_ws_2018_all$DEPTH <- "NA"
# Alligator_Deep_ws_2018_all$NOX_S <- "NA"
# Alligator_Deep_ws_2018_all$NOX_B <- "NA"
# Alligator_Deep_ws_2018_all$NO3_S <- "NA"
# Alligator_Deep_ws_2018_all$NO3_B <- "NA"
# Alligator_Deep_ws_2018_all$NO2_S <- "NA"
# Alligator_Deep_ws_2018_all$NO2_B <- "NA"
# Alligator_Deep_ws_2018_all$NH4_S <- "NA"
# Alligator_Deep_ws_2018_all$NH4_B <- "NA"
# Alligator_Deep_ws_2018_all$TN_S <- "NA"
# Alligator_Deep_ws_2018_all$TN_B <- "NA"
# Alligator_Deep_ws_2018_all$DIN_S <- "NA"
# Alligator_Deep_ws_2018_all$DIN_B <- "NA"
# Alligator_Deep_ws_2018_all$TON_S <- "NA"
# Alligator_Deep_ws_2018_all$TON_B <- "NA"
# Alligator_Deep_ws_2018_all$TP_S <- "NA"
# Alligator_Deep_ws_2018_all$TP_B <- "NA"
# Alligator_Deep_ws_2018_all$SRP_S <- "NA"
# Alligator_Deep_ws_2018_all$SRP_B <- "NA"
# Alligator_Deep_ws_2018_all$APA_S <- "NA"
# Alligator_Deep_ws_2018_all$APA_B <- "NA"
# Alligator_Deep_ws_2018_all$CHLA_S <- "NA"
# Alligator_Deep_ws_2018_all$CHLA_B <- "NA"
# Alligator_Deep_ws_2018_all$TOC_S <- "NA"
# Alligator_Deep_ws_2018_all$TOC_B <- "NA"
# Alligator_Deep_ws_2018_all$SiO2_S <- "NA"
# Alligator_Deep_ws_2018_all$SiO2_B <- "NA"
# Alligator_Deep_ws_2018_all$TURB_S <- "NA"
# Alligator_Deep_ws_2018_all$TURB_B <- "NA"
# Alligator_Deep_ws_2018_all$SAL_S <- "NA"
# Alligator_Deep_ws_2018_all$SAL_B <- "NA"
# Alligator_Deep_ws_2018_all$TEMP_S <- "NA"
# Alligator_Deep_ws_2018_all$TEMP_B <- "NA"
# Alligator_Deep_ws_2018_all$DO_S <- "NA"
# Alligator_Deep_ws_2018_all$DO_B <- "NA"
# Alligator_Deep_ws_2018_all$Kd <- "NA"
# Alligator_Deep_ws_2018_all$pH <- "NA"
# Alligator_Deep_ws_2018_all$TN_TP <- "NA"
# Alligator_Deep_ws_2018_all$N_P <- "NA"
# Alligator_Deep_ws_2018_all$DIN_TP <- "NA"
# Alligator_Deep_ws_2018_all$Si_DIN <- "NA"
# Alligator_Deep_ws_2018_all$F_SAT_S <- "NA"
# Alligator_Deep_ws_2018_all$F_SAT_B <- "NA"
# Alligator_Deep_ws_2018_all$F_Io <- "NA"
# Alligator_Deep_ws_2018_all$DSIGT <- "NA"
# Alligator_Deep_ws_2018_all$id <- "NA"
# 
# 
# 
# 
# 
# 
# 
# ## rest of the serc data
# Alligator_Deep_serc_1995 <- subset(Alligator_Deep_serc_year, Year == "1995")
# Alligator_Deep_serc_1996 <- subset(Alligator_Deep_serc_year, Year == "1996")
# Alligator_Deep_serc_1997 <- subset(Alligator_Deep_serc_year, Year == "1997")
# # Alligator_Deep_serc_1998 <- subset(Alligator_Deep_serc_year, Year == "1998")
# # Alligator_Deep_serc_1999 <- subset(Alligator_Deep_serc_year, Year == "1999")
# # Alligator_Deep_serc_2000 <- subset(Alligator_Deep_serc_year, Year == "2000")
# # Alligator_Deep_serc_2001 <- subset(Alligator_Deep_serc_year, Year == "2001")
# Alligator_Deep_serc_2013 <- subset(Alligator_Deep_serc_year, Year == "2013")
# 
# 
# 
# Alligator_Deep_serc_extra <- rbind(Alligator_Deep_serc_1995,Alligator_Deep_serc_1996,Alligator_Deep_serc_1997,Alligator_Deep_serc_2013)
# 
# 
# 
# 
Alligator_Deep_serc_year$Longitude <- "NA"
Alligator_Deep_serc_year$Latitude <- "NA"
Alligator_Deep_serc_year$Depth <- "NA"
Alligator_Deep_serc_year$SST <- "NA"
Alligator_Deep_serc_year$SSS <- "NA"
Alligator_Deep_serc_year$Chl_a <- "NA"
Alligator_Deep_serc_year$Phaeophyti <- "NA"
Alligator_Deep_serc_year$id <- "NA"
# 
# 
# ### Rearrange extra ws data with serc_extra to merge with all other data
# 
# Alligator_Deep_ws_2018_all <- setcolorder(Alligator_Deep_ws_2018_all, names(Alligator_Deep_serc_extra))
# 
# ## Merge all years together 
# 
# Alligator_Deep_all <- rbind(Alligator_Deep_serc_extra,Alligator_Deep_1998_all,Alligator_Deep_1999_all,Alligator_Deep_2000_all,Alligator_Deep_2001_all,Alligator_Deep_2002_all,Alligator_Deep_2003_all,Alligator_Deep_2004_all, Alligator_Deep_2005_all,Alligator_Deep_2006_all,Alligator_Deep_2007_all,Alligator_Deep_2008_all,Alligator_Deep_2009_all,Alligator_Deep_2010_all,Alligator_Deep_2011_all,Alligator_Deep_2012_all,Alligator_Deep_2014_all,Alligator_Deep_2015_all,Alligator_Deep_2016_all,Alligator_Deep_2017_all,Alligator_Deep_ws_2018_all)
Alligator_Deep_serc_year$sitename <- "Alligator_Deep"

export(Alligator_Deep_serc_year,"MK_10km/Alligator_Deep_combined.csv")



Alligator_Shallow_serc <- import("MK_10km/Alligator_Shallow_serc.xls")
# Alligator_Shallow_ws <- import("MK_10km/Alligator_Shallow_ws.xls")

## Change date to Year to merge the two dataframes

Alligator_Shallow_serc_date <- format(as.Date(Alligator_Shallow_serc$DATE_, format = "%Y %m %d"),"%Y")
Alligator_Shallow_serc_frame <- data.frame(Alligator_Shallow_serc_date)
Alligator_Shallow_serc_year <- cbind(Alligator_Shallow_serc_frame, Alligator_Shallow_serc)
colnames(Alligator_Shallow_serc_year)[1]<- "Year"
Alligator_Shallow_serc_year$FID <- NULL
Alligator_Shallow_serc_year$SURV <- NULL
Alligator_Shallow_serc_year$BASIN <- NULL
Alligator_Shallow_serc_year$SEGMENT <- NULL
Alligator_Shallow_serc_year$ZONE_ <- NULL
Alligator_Shallow_serc_year$TIME_ <- NULL
Alligator_Shallow_serc_year$DATE_ <- NULL
Alligator_Shallow_serc_year$STATION <- NULL
Alligator_Shallow_serc_year$SITE <- NULL



# Alligator_Shallow_ws_date <- format(as.Date(Alligator_Shallow_ws$Date_, format = "%Y %m %d"),"%Y")
# Alligator_Shallow_ws_frame <- data.frame(Alligator_Shallow_ws_date)
# Alligator_Shallow_ws_year <- cbind(Alligator_Shallow_ws_frame, Alligator_Shallow_ws)
# colnames(Alligator_Shallow_ws_year)[1]<- "Year"
# Alligator_Shallow_ws_year$FID <- NULL
# Alligator_Shallow_ws_year$Station <- NULL
# Alligator_Shallow_ws_year$Date_ <- NULL
# Alligator_Shallow_ws_year$GMT <- NULL
# Alligator_Shallow_ws_year$Field11 <- NULL
# Alligator_Shallow_ws_year$Field12 <- NULL
# Alligator_Shallow_ws_year$Field13 <- NULL
# Alligator_Shallow_ws_year$Field14 <- NULL
# Alligator_Shallow_ws_year$Field15 <- NULL
# Alligator_Shallow_ws_year$Field16 <- NULL
# 
# 
# #unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
# #   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
# unique(Alligator_Shallow_serc_year$Year)
# unique(Alligator_Shallow_ws_year$Year)
# 
# 
# Alligator_Shallow_serc_1998 <- subset(Alligator_Shallow_serc_year, Year == "1998")
# Alligator_Shallow_serc_1998_merge <- Alligator_Shallow_serc_1998 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_1998 <- subset(Alligator_Shallow_ws_year, Year == "1998")
# Alligator_Shallow_ws_1998_merge <- Alligator_Shallow_ws_1998 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_1998_all <- full_join(Alligator_Shallow_serc_1998_merge, Alligator_Shallow_ws_1998_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_1999 <- subset(Alligator_Shallow_serc_year, Year == "1999")
# Alligator_Shallow_serc_1999_merge <- Alligator_Shallow_serc_1999 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_1999 <- subset(Alligator_Shallow_ws_year, Year == "1999")
# Alligator_Shallow_ws_1999_merge <- Alligator_Shallow_ws_1999 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_1999_all <- full_join(Alligator_Shallow_serc_1999_merge, Alligator_Shallow_ws_1999_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_2000 <- subset(Alligator_Shallow_serc_year, Year == "2000")
# Alligator_Shallow_serc_2000_merge <- Alligator_Shallow_serc_2000 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2000 <- subset(Alligator_Shallow_ws_year, Year == "2000")
# Alligator_Shallow_ws_2000_merge <- Alligator_Shallow_ws_2000 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2000_all <- full_join(Alligator_Shallow_serc_2000_merge, Alligator_Shallow_ws_2000_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_2001 <- subset(Alligator_Shallow_serc_year, Year == "2001")
# Alligator_Shallow_serc_2001_merge <- Alligator_Shallow_serc_2001 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2001 <- subset(Alligator_Shallow_ws_year, Year == "2001")
# Alligator_Shallow_ws_2001_merge <- Alligator_Shallow_ws_2001 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2001_all <- full_join(Alligator_Shallow_serc_2001_merge, Alligator_Shallow_ws_2001_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_2002 <- subset(Alligator_Shallow_serc_year, Year == "2002")
# Alligator_Shallow_serc_2002_merge <- Alligator_Shallow_serc_2002 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2002 <- subset(Alligator_Shallow_ws_year, Year == "2002")
# Alligator_Shallow_ws_2002_merge <- Alligator_Shallow_ws_2002 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2002_all <- full_join(Alligator_Shallow_serc_2002_merge, Alligator_Shallow_ws_2002_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_2003 <- subset(Alligator_Shallow_serc_year, Year == "2003")
# Alligator_Shallow_serc_2003_merge <- Alligator_Shallow_serc_2003 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2003 <- subset(Alligator_Shallow_ws_year, Year == "2003")
# Alligator_Shallow_ws_2003_merge <- Alligator_Shallow_ws_2003 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2003_all <- full_join(Alligator_Shallow_serc_2003_merge, Alligator_Shallow_ws_2003_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_2004 <- subset(Alligator_Shallow_serc_year, Year == "2004")
# Alligator_Shallow_serc_2004_merge <- Alligator_Shallow_serc_2004 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2004 <- subset(Alligator_Shallow_ws_year, Year == "2004")
# Alligator_Shallow_ws_2004_merge <- Alligator_Shallow_ws_2004 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2004_all <- full_join(Alligator_Shallow_serc_2004_merge, Alligator_Shallow_ws_2004_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_2005 <- subset(Alligator_Shallow_serc_year, Year == "2005")
# Alligator_Shallow_serc_2005_merge <- Alligator_Shallow_serc_2005 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2005 <- subset(Alligator_Shallow_ws_year, Year == "2005")
# Alligator_Shallow_ws_2005_merge <- Alligator_Shallow_ws_2005 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2005_all <- full_join(Alligator_Shallow_serc_2005_merge, Alligator_Shallow_ws_2005_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_2006 <- subset(Alligator_Shallow_serc_year, Year == "2006")
# Alligator_Shallow_serc_2006_merge <- Alligator_Shallow_serc_2006 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2006 <- subset(Alligator_Shallow_ws_year, Year == "2006")
# Alligator_Shallow_ws_2006_merge <- Alligator_Shallow_ws_2006 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2006_all <- full_join(Alligator_Shallow_serc_2006_merge, Alligator_Shallow_ws_2006_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_2007 <- subset(Alligator_Shallow_serc_year, Year == "2007")
# Alligator_Shallow_serc_2007_merge <- Alligator_Shallow_serc_2007 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2007 <- subset(Alligator_Shallow_ws_year, Year == "2007")
# Alligator_Shallow_ws_2007_merge <- Alligator_Shallow_ws_2007 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2007_all <- full_join(Alligator_Shallow_serc_2007_merge, Alligator_Shallow_ws_2007_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_2008 <- subset(Alligator_Shallow_serc_year, Year == "2008")
# Alligator_Shallow_serc_2008_merge <- Alligator_Shallow_serc_2008 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2008 <- subset(Alligator_Shallow_ws_year, Year == "2008")
# Alligator_Shallow_ws_2008_merge <- Alligator_Shallow_ws_2008 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2008_all <- full_join(Alligator_Shallow_serc_2008_merge, Alligator_Shallow_ws_2008_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_2009 <- subset(Alligator_Shallow_serc_year, Year == "2009")
# Alligator_Shallow_serc_2009_merge <- Alligator_Shallow_serc_2009 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2009 <- subset(Alligator_Shallow_ws_year, Year == "2009")
# Alligator_Shallow_ws_2009_merge <- Alligator_Shallow_ws_2009 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2009_all <- full_join(Alligator_Shallow_serc_2009_merge, Alligator_Shallow_ws_2009_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_2010 <- subset(Alligator_Shallow_serc_year, Year == "2010")
# Alligator_Shallow_serc_2010_merge <- Alligator_Shallow_serc_2010 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2010 <- subset(Alligator_Shallow_ws_year, Year == "2010")
# Alligator_Shallow_ws_2010_merge <- Alligator_Shallow_ws_2010 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2010_all <- full_join(Alligator_Shallow_serc_2010_merge, Alligator_Shallow_ws_2010_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_2011 <- subset(Alligator_Shallow_serc_year, Year == "2011")
# Alligator_Shallow_serc_2011_merge <- Alligator_Shallow_serc_2011 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2011 <- subset(Alligator_Shallow_ws_year, Year == "2011")
# Alligator_Shallow_ws_2011_merge <- Alligator_Shallow_ws_2011 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2011_all <- full_join(Alligator_Shallow_serc_2011_merge, Alligator_Shallow_ws_2011_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_2012 <- subset(Alligator_Shallow_serc_year, Year == "2012")
# Alligator_Shallow_serc_2012_merge <- Alligator_Shallow_serc_2012 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2012 <- subset(Alligator_Shallow_ws_year, Year == "2012")
# Alligator_Shallow_ws_2012_merge <- Alligator_Shallow_ws_2012 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2012_all <- full_join(Alligator_Shallow_serc_2012_merge, Alligator_Shallow_ws_2012_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_2014 <- subset(Alligator_Shallow_serc_year, Year == "2014")
# Alligator_Shallow_serc_2014_merge <- Alligator_Shallow_serc_2014 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2014 <- subset(Alligator_Shallow_ws_year, Year == "2014")
# Alligator_Shallow_ws_2014_merge <- Alligator_Shallow_ws_2014 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2014_all <- full_join(Alligator_Shallow_serc_2014_merge, Alligator_Shallow_ws_2014_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_2015 <- subset(Alligator_Shallow_serc_year, Year == "2015")
# Alligator_Shallow_serc_2015_merge <- Alligator_Shallow_serc_2015 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2015 <- subset(Alligator_Shallow_ws_year, Year == "2015")
# Alligator_Shallow_ws_2015_merge <- Alligator_Shallow_ws_2015 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2015_all <- full_join(Alligator_Shallow_serc_2015_merge, Alligator_Shallow_ws_2015_merge, by = c("Year","id"))
# 
# 
# Alligator_Shallow_serc_2016 <- subset(Alligator_Shallow_serc_year, Year == "2016")
# Alligator_Shallow_serc_2016_merge <- Alligator_Shallow_serc_2016 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2016 <- subset(Alligator_Shallow_ws_year, Year == "2016")
# Alligator_Shallow_ws_2016_merge <- Alligator_Shallow_ws_2016 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2016_all <- full_join(Alligator_Shallow_serc_2016_merge, Alligator_Shallow_ws_2016_merge, by = c("Year","id"))
# 
# 
# 
# Alligator_Shallow_serc_2017 <- subset(Alligator_Shallow_serc_year, Year == "2017")
# Alligator_Shallow_serc_2017_merge <- Alligator_Shallow_serc_2017 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_ws_2017 <- subset(Alligator_Shallow_ws_year, Year == "2017")
# Alligator_Shallow_ws_2017_merge <- Alligator_Shallow_ws_2017 %>%
#   mutate(id = row_number())
# 
# Alligator_Shallow_2017_all <- full_join(Alligator_Shallow_serc_2017_merge, Alligator_Shallow_ws_2017_merge, by = c("Year","id"))
# 
# 
# 
# ### ADD on years for ws (need to add missing columns to merge)
# 
# Alligator_Shallow_ws_2018_all <- subset(Alligator_Shallow_ws_year, Year == "2018") 
# 
# ## adding extra columns to merge 
# 
# Alligator_Shallow_ws_2018_all$LATDEC <- "NA"
# Alligator_Shallow_ws_2018_all$LONDEC <- "NA"
# Alligator_Shallow_ws_2018_all$DEPTH <- "NA"
# Alligator_Shallow_ws_2018_all$NOX_S <- "NA"
# Alligator_Shallow_ws_2018_all$NOX_B <- "NA"
# Alligator_Shallow_ws_2018_all$NO3_S <- "NA"
# Alligator_Shallow_ws_2018_all$NO3_B <- "NA"
# Alligator_Shallow_ws_2018_all$NO2_S <- "NA"
# Alligator_Shallow_ws_2018_all$NO2_B <- "NA"
# Alligator_Shallow_ws_2018_all$NH4_S <- "NA"
# Alligator_Shallow_ws_2018_all$NH4_B <- "NA"
# Alligator_Shallow_ws_2018_all$TN_S <- "NA"
# Alligator_Shallow_ws_2018_all$TN_B <- "NA"
# Alligator_Shallow_ws_2018_all$DIN_S <- "NA"
# Alligator_Shallow_ws_2018_all$DIN_B <- "NA"
# Alligator_Shallow_ws_2018_all$TON_S <- "NA"
# Alligator_Shallow_ws_2018_all$TON_B <- "NA"
# Alligator_Shallow_ws_2018_all$TP_S <- "NA"
# Alligator_Shallow_ws_2018_all$TP_B <- "NA"
# Alligator_Shallow_ws_2018_all$SRP_S <- "NA"
# Alligator_Shallow_ws_2018_all$SRP_B <- "NA"
# Alligator_Shallow_ws_2018_all$APA_S <- "NA"
# Alligator_Shallow_ws_2018_all$APA_B <- "NA"
# Alligator_Shallow_ws_2018_all$CHLA_S <- "NA"
# Alligator_Shallow_ws_2018_all$CHLA_B <- "NA"
# Alligator_Shallow_ws_2018_all$TOC_S <- "NA"
# Alligator_Shallow_ws_2018_all$TOC_B <- "NA"
# Alligator_Shallow_ws_2018_all$SiO2_S <- "NA"
# Alligator_Shallow_ws_2018_all$SiO2_B <- "NA"
# Alligator_Shallow_ws_2018_all$TURB_S <- "NA"
# Alligator_Shallow_ws_2018_all$TURB_B <- "NA"
# Alligator_Shallow_ws_2018_all$SAL_S <- "NA"
# Alligator_Shallow_ws_2018_all$SAL_B <- "NA"
# Alligator_Shallow_ws_2018_all$TEMP_S <- "NA"
# Alligator_Shallow_ws_2018_all$TEMP_B <- "NA"
# Alligator_Shallow_ws_2018_all$DO_S <- "NA"
# Alligator_Shallow_ws_2018_all$DO_B <- "NA"
# Alligator_Shallow_ws_2018_all$Kd <- "NA"
# Alligator_Shallow_ws_2018_all$pH <- "NA"
# Alligator_Shallow_ws_2018_all$TN_TP <- "NA"
# Alligator_Shallow_ws_2018_all$N_P <- "NA"
# Alligator_Shallow_ws_2018_all$DIN_TP <- "NA"
# Alligator_Shallow_ws_2018_all$Si_DIN <- "NA"
# Alligator_Shallow_ws_2018_all$F_SAT_S <- "NA"
# Alligator_Shallow_ws_2018_all$F_SAT_B <- "NA"
# Alligator_Shallow_ws_2018_all$F_Io <- "NA"
# Alligator_Shallow_ws_2018_all$DSIGT <- "NA"
# Alligator_Shallow_ws_2018_all$id <- "NA"
# 
# 
# 
# 
# 
# 
# 
# ## rest of the serc data
# Alligator_Shallow_serc_1995 <- subset(Alligator_Shallow_serc_year, Year == "1995")
# Alligator_Shallow_serc_1996 <- subset(Alligator_Shallow_serc_year, Year == "1996")
# Alligator_Shallow_serc_1997 <- subset(Alligator_Shallow_serc_year, Year == "1997")
# # Alligator_Shallow_serc_1998 <- subset(Alligator_Shallow_serc_year, Year == "1998")
# # Alligator_Shallow_serc_1999 <- subset(Alligator_Shallow_serc_year, Year == "1999")
# # Alligator_Shallow_serc_2000 <- subset(Alligator_Shallow_serc_year, Year == "2000")
# # Alligator_Shallow_serc_2001 <- subset(Alligator_Shallow_serc_year, Year == "2001")
# Alligator_Shallow_serc_2013 <- subset(Alligator_Shallow_serc_year, Year == "2013")
# 
# 
# 
# Alligator_Shallow_serc_extra <- rbind(Alligator_Shallow_serc_1995,Alligator_Shallow_serc_1996,Alligator_Shallow_serc_1997,Alligator_Shallow_serc_2013)
# 
# 
# 
# 
Alligator_Shallow_serc_year$Longitude <- "NA"
Alligator_Shallow_serc_year$Latitude <- "NA"
Alligator_Shallow_serc_year$Depth <- "NA"
Alligator_Shallow_serc_year$SST <- "NA"
Alligator_Shallow_serc_year$SSS <- "NA"
Alligator_Shallow_serc_year$Chl_a <- "NA"
Alligator_Shallow_serc_year$Phaeophyti <- "NA"
Alligator_Shallow_serc_year$id <- "NA"
# 
# 
# ### Rearrange extra ws data with serc_extra to merge with all other data
# 
# Alligator_Shallow_ws_2018_all <- setcolorder(Alligator_Shallow_ws_2018_all, names(Alligator_Shallow_serc_extra))
# 
# ## Merge all years together 
# 
# Alligator_Shallow_all <- rbind(Alligator_Shallow_serc_extra,Alligator_Shallow_1998_all,Alligator_Shallow_1999_all,Alligator_Shallow_2000_all,Alligator_Shallow_2001_all,Alligator_Shallow_2002_all,Alligator_Shallow_2003_all,Alligator_Shallow_2004_all, Alligator_Shallow_2005_all,Alligator_Shallow_2006_all,Alligator_Shallow_2007_all,Alligator_Shallow_2008_all,Alligator_Shallow_2009_all,Alligator_Shallow_2010_all,Alligator_Shallow_2011_all,Alligator_Shallow_2012_all,Alligator_Shallow_2014_all,Alligator_Shallow_2015_all,Alligator_Shallow_2016_all,Alligator_Shallow_2017_all,Alligator_Shallow_ws_2018_all)
Alligator_Shallow_serc_year$sitename <- "Alligator_Shallow"

export(Alligator_Shallow_serc_year,"MK_10km/Alligator_Shallow_combined.csv")




Dustan_Rocks_serc <- import("MK_10km/Dustan_Rocks_serc.xls")
Dustan_Rocks_ws <- import("MK_10km/Dustan_Rocks_ws.xls")

## Change date to Year to merge the two dataframes

Dustan_Rocks_serc_date <- format(as.Date(Dustan_Rocks_serc$DATE_, format = "%Y %m %d"),"%Y")
Dustan_Rocks_serc_frame <- data.frame(Dustan_Rocks_serc_date)
Dustan_Rocks_serc_year <- cbind(Dustan_Rocks_serc_frame, Dustan_Rocks_serc)
colnames(Dustan_Rocks_serc_year)[1]<- "Year"
Dustan_Rocks_serc_year$FID <- NULL
Dustan_Rocks_serc_year$SURV <- NULL
Dustan_Rocks_serc_year$BASIN <- NULL
Dustan_Rocks_serc_year$SEGMENT <- NULL
Dustan_Rocks_serc_year$ZONE_ <- NULL
Dustan_Rocks_serc_year$TIME_ <- NULL
Dustan_Rocks_serc_year$DATE_ <- NULL
Dustan_Rocks_serc_year$STATION <- NULL
Dustan_Rocks_serc_year$SITE <- NULL



Dustan_Rocks_ws_date <- format(as.Date(Dustan_Rocks_ws$Date_, format = "%Y %m %d"),"%Y")
Dustan_Rocks_ws_frame <- data.frame(Dustan_Rocks_ws_date)
Dustan_Rocks_ws_year <- cbind(Dustan_Rocks_ws_frame, Dustan_Rocks_ws)
colnames(Dustan_Rocks_ws_year)[1]<- "Year"
Dustan_Rocks_ws_year$FID <- NULL
Dustan_Rocks_ws_year$Station <- NULL
Dustan_Rocks_ws_year$Date_ <- NULL
Dustan_Rocks_ws_year$GMT <- NULL
Dustan_Rocks_ws_year$Field11 <- NULL
Dustan_Rocks_ws_year$Field12 <- NULL
Dustan_Rocks_ws_year$Field13 <- NULL
Dustan_Rocks_ws_year$Field14 <- NULL
Dustan_Rocks_ws_year$Field15 <- NULL
Dustan_Rocks_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Dustan_Rocks_serc_year$Year)
unique(Dustan_Rocks_ws_year$Year)


Dustan_Rocks_serc_1998 <- subset(Dustan_Rocks_serc_year, Year == "1998")
Dustan_Rocks_serc_1998_merge <- Dustan_Rocks_serc_1998 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_1998 <- subset(Dustan_Rocks_ws_year, Year == "1998")
Dustan_Rocks_ws_1998_merge <- Dustan_Rocks_ws_1998 %>%
  mutate(id = row_number())

Dustan_Rocks_1998_all <- full_join(Dustan_Rocks_serc_1998_merge, Dustan_Rocks_ws_1998_merge, by = c("Year","id"))


Dustan_Rocks_serc_1999 <- subset(Dustan_Rocks_serc_year, Year == "1999")
Dustan_Rocks_serc_1999_merge <- Dustan_Rocks_serc_1999 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_1999 <- subset(Dustan_Rocks_ws_year, Year == "1999")
Dustan_Rocks_ws_1999_merge <- Dustan_Rocks_ws_1999 %>%
  mutate(id = row_number())

Dustan_Rocks_1999_all <- full_join(Dustan_Rocks_serc_1999_merge, Dustan_Rocks_ws_1999_merge, by = c("Year","id"))


Dustan_Rocks_serc_2000 <- subset(Dustan_Rocks_serc_year, Year == "2000")
Dustan_Rocks_serc_2000_merge <- Dustan_Rocks_serc_2000 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2000 <- subset(Dustan_Rocks_ws_year, Year == "2000")
Dustan_Rocks_ws_2000_merge <- Dustan_Rocks_ws_2000 %>%
  mutate(id = row_number())

Dustan_Rocks_2000_all <- full_join(Dustan_Rocks_serc_2000_merge, Dustan_Rocks_ws_2000_merge, by = c("Year","id"))


Dustan_Rocks_serc_2001 <- subset(Dustan_Rocks_serc_year, Year == "2001")
Dustan_Rocks_serc_2001_merge <- Dustan_Rocks_serc_2001 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2001 <- subset(Dustan_Rocks_ws_year, Year == "2001")
Dustan_Rocks_ws_2001_merge <- Dustan_Rocks_ws_2001 %>%
  mutate(id = row_number())

Dustan_Rocks_2001_all <- full_join(Dustan_Rocks_serc_2001_merge, Dustan_Rocks_ws_2001_merge, by = c("Year","id"))


Dustan_Rocks_serc_2002 <- subset(Dustan_Rocks_serc_year, Year == "2002")
Dustan_Rocks_serc_2002_merge <- Dustan_Rocks_serc_2002 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2002 <- subset(Dustan_Rocks_ws_year, Year == "2002")
Dustan_Rocks_ws_2002_merge <- Dustan_Rocks_ws_2002 %>%
  mutate(id = row_number())

Dustan_Rocks_2002_all <- full_join(Dustan_Rocks_serc_2002_merge, Dustan_Rocks_ws_2002_merge, by = c("Year","id"))


Dustan_Rocks_serc_2003 <- subset(Dustan_Rocks_serc_year, Year == "2003")
Dustan_Rocks_serc_2003_merge <- Dustan_Rocks_serc_2003 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2003 <- subset(Dustan_Rocks_ws_year, Year == "2003")
Dustan_Rocks_ws_2003_merge <- Dustan_Rocks_ws_2003 %>%
  mutate(id = row_number())

Dustan_Rocks_2003_all <- full_join(Dustan_Rocks_serc_2003_merge, Dustan_Rocks_ws_2003_merge, by = c("Year","id"))


Dustan_Rocks_serc_2004 <- subset(Dustan_Rocks_serc_year, Year == "2004")
Dustan_Rocks_serc_2004_merge <- Dustan_Rocks_serc_2004 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2004 <- subset(Dustan_Rocks_ws_year, Year == "2004")
Dustan_Rocks_ws_2004_merge <- Dustan_Rocks_ws_2004 %>%
  mutate(id = row_number())

Dustan_Rocks_2004_all <- full_join(Dustan_Rocks_serc_2004_merge, Dustan_Rocks_ws_2004_merge, by = c("Year","id"))


Dustan_Rocks_serc_2005 <- subset(Dustan_Rocks_serc_year, Year == "2005")
Dustan_Rocks_serc_2005_merge <- Dustan_Rocks_serc_2005 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2005 <- subset(Dustan_Rocks_ws_year, Year == "2005")
Dustan_Rocks_ws_2005_merge <- Dustan_Rocks_ws_2005 %>%
  mutate(id = row_number())

Dustan_Rocks_2005_all <- full_join(Dustan_Rocks_serc_2005_merge, Dustan_Rocks_ws_2005_merge, by = c("Year","id"))


Dustan_Rocks_serc_2006 <- subset(Dustan_Rocks_serc_year, Year == "2006")
Dustan_Rocks_serc_2006_merge <- Dustan_Rocks_serc_2006 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2006 <- subset(Dustan_Rocks_ws_year, Year == "2006")
Dustan_Rocks_ws_2006_merge <- Dustan_Rocks_ws_2006 %>%
  mutate(id = row_number())

Dustan_Rocks_2006_all <- full_join(Dustan_Rocks_serc_2006_merge, Dustan_Rocks_ws_2006_merge, by = c("Year","id"))


Dustan_Rocks_serc_2007 <- subset(Dustan_Rocks_serc_year, Year == "2007")
Dustan_Rocks_serc_2007_merge <- Dustan_Rocks_serc_2007 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2007 <- subset(Dustan_Rocks_ws_year, Year == "2007")
Dustan_Rocks_ws_2007_merge <- Dustan_Rocks_ws_2007 %>%
  mutate(id = row_number())

Dustan_Rocks_2007_all <- full_join(Dustan_Rocks_serc_2007_merge, Dustan_Rocks_ws_2007_merge, by = c("Year","id"))


Dustan_Rocks_serc_2008 <- subset(Dustan_Rocks_serc_year, Year == "2008")
Dustan_Rocks_serc_2008_merge <- Dustan_Rocks_serc_2008 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2008 <- subset(Dustan_Rocks_ws_year, Year == "2008")
Dustan_Rocks_ws_2008_merge <- Dustan_Rocks_ws_2008 %>%
  mutate(id = row_number())

Dustan_Rocks_2008_all <- full_join(Dustan_Rocks_serc_2008_merge, Dustan_Rocks_ws_2008_merge, by = c("Year","id"))


Dustan_Rocks_serc_2009 <- subset(Dustan_Rocks_serc_year, Year == "2009")
Dustan_Rocks_serc_2009_merge <- Dustan_Rocks_serc_2009 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2009 <- subset(Dustan_Rocks_ws_year, Year == "2009")
Dustan_Rocks_ws_2009_merge <- Dustan_Rocks_ws_2009 %>%
  mutate(id = row_number())

Dustan_Rocks_2009_all <- full_join(Dustan_Rocks_serc_2009_merge, Dustan_Rocks_ws_2009_merge, by = c("Year","id"))


Dustan_Rocks_serc_2010 <- subset(Dustan_Rocks_serc_year, Year == "2010")
Dustan_Rocks_serc_2010_merge <- Dustan_Rocks_serc_2010 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2010 <- subset(Dustan_Rocks_ws_year, Year == "2010")
Dustan_Rocks_ws_2010_merge <- Dustan_Rocks_ws_2010 %>%
  mutate(id = row_number())

Dustan_Rocks_2010_all <- full_join(Dustan_Rocks_serc_2010_merge, Dustan_Rocks_ws_2010_merge, by = c("Year","id"))


Dustan_Rocks_serc_2011 <- subset(Dustan_Rocks_serc_year, Year == "2011")
Dustan_Rocks_serc_2011_merge <- Dustan_Rocks_serc_2011 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2011 <- subset(Dustan_Rocks_ws_year, Year == "2011")
Dustan_Rocks_ws_2011_merge <- Dustan_Rocks_ws_2011 %>%
  mutate(id = row_number())

Dustan_Rocks_2011_all <- full_join(Dustan_Rocks_serc_2011_merge, Dustan_Rocks_ws_2011_merge, by = c("Year","id"))


Dustan_Rocks_serc_2012 <- subset(Dustan_Rocks_serc_year, Year == "2012")
Dustan_Rocks_serc_2012_merge <- Dustan_Rocks_serc_2012 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2012 <- subset(Dustan_Rocks_ws_year, Year == "2012")
Dustan_Rocks_ws_2012_merge <- Dustan_Rocks_ws_2012 %>%
  mutate(id = row_number())

Dustan_Rocks_2012_all <- full_join(Dustan_Rocks_serc_2012_merge, Dustan_Rocks_ws_2012_merge, by = c("Year","id"))


Dustan_Rocks_serc_2014 <- subset(Dustan_Rocks_serc_year, Year == "2014")
Dustan_Rocks_serc_2014_merge <- Dustan_Rocks_serc_2014 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2014 <- subset(Dustan_Rocks_ws_year, Year == "2014")
Dustan_Rocks_ws_2014_merge <- Dustan_Rocks_ws_2014 %>%
  mutate(id = row_number())

Dustan_Rocks_2014_all <- full_join(Dustan_Rocks_serc_2014_merge, Dustan_Rocks_ws_2014_merge, by = c("Year","id"))


Dustan_Rocks_serc_2015 <- subset(Dustan_Rocks_serc_year, Year == "2015")
Dustan_Rocks_serc_2015_merge <- Dustan_Rocks_serc_2015 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2015 <- subset(Dustan_Rocks_ws_year, Year == "2015")
Dustan_Rocks_ws_2015_merge <- Dustan_Rocks_ws_2015 %>%
  mutate(id = row_number())

Dustan_Rocks_2015_all <- full_join(Dustan_Rocks_serc_2015_merge, Dustan_Rocks_ws_2015_merge, by = c("Year","id"))


Dustan_Rocks_serc_2016 <- subset(Dustan_Rocks_serc_year, Year == "2016")
Dustan_Rocks_serc_2016_merge <- Dustan_Rocks_serc_2016 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2016 <- subset(Dustan_Rocks_ws_year, Year == "2016")
Dustan_Rocks_ws_2016_merge <- Dustan_Rocks_ws_2016 %>%
  mutate(id = row_number())

Dustan_Rocks_2016_all <- full_join(Dustan_Rocks_serc_2016_merge, Dustan_Rocks_ws_2016_merge, by = c("Year","id"))



Dustan_Rocks_serc_2017 <- subset(Dustan_Rocks_serc_year, Year == "2017")
Dustan_Rocks_serc_2017_merge <- Dustan_Rocks_serc_2017 %>%
  mutate(id = row_number())

Dustan_Rocks_ws_2017 <- subset(Dustan_Rocks_ws_year, Year == "2017")
Dustan_Rocks_ws_2017_merge <- Dustan_Rocks_ws_2017 %>%
  mutate(id = row_number())

Dustan_Rocks_2017_all <- full_join(Dustan_Rocks_serc_2017_merge, Dustan_Rocks_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Dustan_Rocks_ws_2018_all <- subset(Dustan_Rocks_ws_year, Year == "2018") 

## adding extra columns to merge 

Dustan_Rocks_ws_2018_all$LATDEC <- "NA"
Dustan_Rocks_ws_2018_all$LONDEC <- "NA"
Dustan_Rocks_ws_2018_all$DEPTH <- "NA"
Dustan_Rocks_ws_2018_all$NOX_S <- "NA"
Dustan_Rocks_ws_2018_all$NOX_B <- "NA"
Dustan_Rocks_ws_2018_all$NO3_S <- "NA"
Dustan_Rocks_ws_2018_all$NO3_B <- "NA"
Dustan_Rocks_ws_2018_all$NO2_S <- "NA"
Dustan_Rocks_ws_2018_all$NO2_B <- "NA"
Dustan_Rocks_ws_2018_all$NH4_S <- "NA"
Dustan_Rocks_ws_2018_all$NH4_B <- "NA"
Dustan_Rocks_ws_2018_all$TN_S <- "NA"
Dustan_Rocks_ws_2018_all$TN_B <- "NA"
Dustan_Rocks_ws_2018_all$DIN_S <- "NA"
Dustan_Rocks_ws_2018_all$DIN_B <- "NA"
Dustan_Rocks_ws_2018_all$TON_S <- "NA"
Dustan_Rocks_ws_2018_all$TON_B <- "NA"
Dustan_Rocks_ws_2018_all$TP_S <- "NA"
Dustan_Rocks_ws_2018_all$TP_B <- "NA"
Dustan_Rocks_ws_2018_all$SRP_S <- "NA"
Dustan_Rocks_ws_2018_all$SRP_B <- "NA"
Dustan_Rocks_ws_2018_all$APA_S <- "NA"
Dustan_Rocks_ws_2018_all$APA_B <- "NA"
Dustan_Rocks_ws_2018_all$CHLA_S <- "NA"
Dustan_Rocks_ws_2018_all$CHLA_B <- "NA"
Dustan_Rocks_ws_2018_all$TOC_S <- "NA"
Dustan_Rocks_ws_2018_all$TOC_B <- "NA"
Dustan_Rocks_ws_2018_all$SiO2_S <- "NA"
Dustan_Rocks_ws_2018_all$SiO2_B <- "NA"
Dustan_Rocks_ws_2018_all$TURB_S <- "NA"
Dustan_Rocks_ws_2018_all$TURB_B <- "NA"
Dustan_Rocks_ws_2018_all$SAL_S <- "NA"
Dustan_Rocks_ws_2018_all$SAL_B <- "NA"
Dustan_Rocks_ws_2018_all$TEMP_S <- "NA"
Dustan_Rocks_ws_2018_all$TEMP_B <- "NA"
Dustan_Rocks_ws_2018_all$DO_S <- "NA"
Dustan_Rocks_ws_2018_all$DO_B <- "NA"
Dustan_Rocks_ws_2018_all$Kd <- "NA"
Dustan_Rocks_ws_2018_all$pH <- "NA"
Dustan_Rocks_ws_2018_all$TN_TP <- "NA"
Dustan_Rocks_ws_2018_all$N_P <- "NA"
Dustan_Rocks_ws_2018_all$DIN_TP <- "NA"
Dustan_Rocks_ws_2018_all$Si_DIN <- "NA"
Dustan_Rocks_ws_2018_all$F_SAT_S <- "NA"
Dustan_Rocks_ws_2018_all$F_SAT_B <- "NA"
Dustan_Rocks_ws_2018_all$F_Io <- "NA"
Dustan_Rocks_ws_2018_all$DSIGT <- "NA"
Dustan_Rocks_ws_2018_all$id <- "NA"







## rest of the serc data
Dustan_Rocks_serc_1995 <- subset(Dustan_Rocks_serc_year, Year == "1995")
Dustan_Rocks_serc_1996 <- subset(Dustan_Rocks_serc_year, Year == "1996")
Dustan_Rocks_serc_1997 <- subset(Dustan_Rocks_serc_year, Year == "1997")
# Dustan_Rocks_serc_1998 <- subset(Dustan_Rocks_serc_year, Year == "1998")
# Dustan_Rocks_serc_1999 <- subset(Dustan_Rocks_serc_year, Year == "1999")
# Dustan_Rocks_serc_2000 <- subset(Dustan_Rocks_serc_year, Year == "2000")
# Dustan_Rocks_serc_2001 <- subset(Dustan_Rocks_serc_year, Year == "2001")
Dustan_Rocks_serc_2013 <- subset(Dustan_Rocks_serc_year, Year == "2013")



Dustan_Rocks_serc_extra <- rbind(Dustan_Rocks_serc_1995,Dustan_Rocks_serc_1996,Dustan_Rocks_serc_1997,Dustan_Rocks_serc_2013)




Dustan_Rocks_serc_extra$Longitude <- "NA"
Dustan_Rocks_serc_extra$Latitude <- "NA"
Dustan_Rocks_serc_extra$Depth <- "NA"
Dustan_Rocks_serc_extra$SST <- "NA"
Dustan_Rocks_serc_extra$SSS <- "NA"
Dustan_Rocks_serc_extra$Chl_a <- "NA"
Dustan_Rocks_serc_extra$Phaeophyti <- "NA"
Dustan_Rocks_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Dustan_Rocks_ws_2018_all <- setcolorder(Dustan_Rocks_ws_2018_all, names(Dustan_Rocks_serc_extra))

## Merge all years together 

Dustan_Rocks_all <- rbind(Dustan_Rocks_serc_extra,Dustan_Rocks_1998_all,Dustan_Rocks_1999_all,Dustan_Rocks_2000_all,Dustan_Rocks_2001_all,Dustan_Rocks_2002_all,Dustan_Rocks_2003_all,Dustan_Rocks_2004_all, Dustan_Rocks_2005_all,Dustan_Rocks_2006_all,Dustan_Rocks_2007_all,Dustan_Rocks_2008_all,Dustan_Rocks_2009_all,Dustan_Rocks_2010_all,Dustan_Rocks_2011_all,Dustan_Rocks_2012_all,Dustan_Rocks_2014_all,Dustan_Rocks_2015_all,Dustan_Rocks_2016_all,Dustan_Rocks_2017_all,Dustan_Rocks_ws_2018_all)
Dustan_Rocks_all$sitename <- "Dustan_Rocks"

export(Dustan_Rocks_all,"MK_10km/Dustan_Rocks_combined.csv")



Long_Key_serc <- import("MK_10km/Long_Key_serc.xls")
Long_Key_ws <- import("MK_10km/Long_Key_ws.xls")

## Change date to Year to merge the two dataframes

Long_Key_serc_date <- format(as.Date(Long_Key_serc$DATE_, format = "%Y %m %d"),"%Y")
Long_Key_serc_frame <- data.frame(Long_Key_serc_date)
Long_Key_serc_year <- cbind(Long_Key_serc_frame, Long_Key_serc)
colnames(Long_Key_serc_year)[1]<- "Year"
Long_Key_serc_year$FID <- NULL
Long_Key_serc_year$SURV <- NULL
Long_Key_serc_year$BASIN <- NULL
Long_Key_serc_year$SEGMENT <- NULL
Long_Key_serc_year$ZONE_ <- NULL
Long_Key_serc_year$TIME_ <- NULL
Long_Key_serc_year$DATE_ <- NULL
Long_Key_serc_year$STATION <- NULL
Long_Key_serc_year$SITE <- NULL



Long_Key_ws_date <- format(as.Date(Long_Key_ws$Date_, format = "%Y %m %d"),"%Y")
Long_Key_ws_frame <- data.frame(Long_Key_ws_date)
Long_Key_ws_year <- cbind(Long_Key_ws_frame, Long_Key_ws)
colnames(Long_Key_ws_year)[1]<- "Year"
Long_Key_ws_year$FID <- NULL
Long_Key_ws_year$Station <- NULL
Long_Key_ws_year$Date_ <- NULL
Long_Key_ws_year$GMT <- NULL
Long_Key_ws_year$Field11 <- NULL
Long_Key_ws_year$Field12 <- NULL
Long_Key_ws_year$Field13 <- NULL
Long_Key_ws_year$Field14 <- NULL
Long_Key_ws_year$Field15 <- NULL
Long_Key_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Long_Key_serc_year$Year)
unique(Long_Key_ws_year$Year)


Long_Key_serc_1998 <- subset(Long_Key_serc_year, Year == "1998")
Long_Key_serc_1998_merge <- Long_Key_serc_1998 %>%
  mutate(id = row_number())

Long_Key_ws_1998 <- subset(Long_Key_ws_year, Year == "1998")
Long_Key_ws_1998_merge <- Long_Key_ws_1998 %>%
  mutate(id = row_number())

Long_Key_1998_all <- full_join(Long_Key_serc_1998_merge, Long_Key_ws_1998_merge, by = c("Year","id"))


Long_Key_serc_1999 <- subset(Long_Key_serc_year, Year == "1999")
Long_Key_serc_1999_merge <- Long_Key_serc_1999 %>%
  mutate(id = row_number())

Long_Key_ws_1999 <- subset(Long_Key_ws_year, Year == "1999")
Long_Key_ws_1999_merge <- Long_Key_ws_1999 %>%
  mutate(id = row_number())

Long_Key_1999_all <- full_join(Long_Key_serc_1999_merge, Long_Key_ws_1999_merge, by = c("Year","id"))


Long_Key_serc_2000 <- subset(Long_Key_serc_year, Year == "2000")
Long_Key_serc_2000_merge <- Long_Key_serc_2000 %>%
  mutate(id = row_number())

Long_Key_ws_2000 <- subset(Long_Key_ws_year, Year == "2000")
Long_Key_ws_2000_merge <- Long_Key_ws_2000 %>%
  mutate(id = row_number())

Long_Key_2000_all <- full_join(Long_Key_serc_2000_merge, Long_Key_ws_2000_merge, by = c("Year","id"))


Long_Key_serc_2001 <- subset(Long_Key_serc_year, Year == "2001")
Long_Key_serc_2001_merge <- Long_Key_serc_2001 %>%
  mutate(id = row_number())

Long_Key_ws_2001 <- subset(Long_Key_ws_year, Year == "2001")
Long_Key_ws_2001_merge <- Long_Key_ws_2001 %>%
  mutate(id = row_number())

Long_Key_2001_all <- full_join(Long_Key_serc_2001_merge, Long_Key_ws_2001_merge, by = c("Year","id"))


Long_Key_serc_2002 <- subset(Long_Key_serc_year, Year == "2002")
Long_Key_serc_2002_merge <- Long_Key_serc_2002 %>%
  mutate(id = row_number())

Long_Key_ws_2002 <- subset(Long_Key_ws_year, Year == "2002")
Long_Key_ws_2002_merge <- Long_Key_ws_2002 %>%
  mutate(id = row_number())

Long_Key_2002_all <- full_join(Long_Key_serc_2002_merge, Long_Key_ws_2002_merge, by = c("Year","id"))


Long_Key_serc_2003 <- subset(Long_Key_serc_year, Year == "2003")
Long_Key_serc_2003_merge <- Long_Key_serc_2003 %>%
  mutate(id = row_number())

Long_Key_ws_2003 <- subset(Long_Key_ws_year, Year == "2003")
Long_Key_ws_2003_merge <- Long_Key_ws_2003 %>%
  mutate(id = row_number())

Long_Key_2003_all <- full_join(Long_Key_serc_2003_merge, Long_Key_ws_2003_merge, by = c("Year","id"))


Long_Key_serc_2004 <- subset(Long_Key_serc_year, Year == "2004")
Long_Key_serc_2004_merge <- Long_Key_serc_2004 %>%
  mutate(id = row_number())

Long_Key_ws_2004 <- subset(Long_Key_ws_year, Year == "2004")
Long_Key_ws_2004_merge <- Long_Key_ws_2004 %>%
  mutate(id = row_number())

Long_Key_2004_all <- full_join(Long_Key_serc_2004_merge, Long_Key_ws_2004_merge, by = c("Year","id"))


Long_Key_serc_2005 <- subset(Long_Key_serc_year, Year == "2005")
Long_Key_serc_2005_merge <- Long_Key_serc_2005 %>%
  mutate(id = row_number())

Long_Key_ws_2005 <- subset(Long_Key_ws_year, Year == "2005")
Long_Key_ws_2005_merge <- Long_Key_ws_2005 %>%
  mutate(id = row_number())

Long_Key_2005_all <- full_join(Long_Key_serc_2005_merge, Long_Key_ws_2005_merge, by = c("Year","id"))


Long_Key_serc_2006 <- subset(Long_Key_serc_year, Year == "2006")
Long_Key_serc_2006_merge <- Long_Key_serc_2006 %>%
  mutate(id = row_number())

Long_Key_ws_2006 <- subset(Long_Key_ws_year, Year == "2006")
Long_Key_ws_2006_merge <- Long_Key_ws_2006 %>%
  mutate(id = row_number())

Long_Key_2006_all <- full_join(Long_Key_serc_2006_merge, Long_Key_ws_2006_merge, by = c("Year","id"))


Long_Key_serc_2007 <- subset(Long_Key_serc_year, Year == "2007")
Long_Key_serc_2007_merge <- Long_Key_serc_2007 %>%
  mutate(id = row_number())

Long_Key_ws_2007 <- subset(Long_Key_ws_year, Year == "2007")
Long_Key_ws_2007_merge <- Long_Key_ws_2007 %>%
  mutate(id = row_number())

Long_Key_2007_all <- full_join(Long_Key_serc_2007_merge, Long_Key_ws_2007_merge, by = c("Year","id"))


Long_Key_serc_2008 <- subset(Long_Key_serc_year, Year == "2008")
Long_Key_serc_2008_merge <- Long_Key_serc_2008 %>%
  mutate(id = row_number())

Long_Key_ws_2008 <- subset(Long_Key_ws_year, Year == "2008")
Long_Key_ws_2008_merge <- Long_Key_ws_2008 %>%
  mutate(id = row_number())

Long_Key_2008_all <- full_join(Long_Key_serc_2008_merge, Long_Key_ws_2008_merge, by = c("Year","id"))


Long_Key_serc_2009 <- subset(Long_Key_serc_year, Year == "2009")
Long_Key_serc_2009_merge <- Long_Key_serc_2009 %>%
  mutate(id = row_number())

Long_Key_ws_2009 <- subset(Long_Key_ws_year, Year == "2009")
Long_Key_ws_2009_merge <- Long_Key_ws_2009 %>%
  mutate(id = row_number())

Long_Key_2009_all <- full_join(Long_Key_serc_2009_merge, Long_Key_ws_2009_merge, by = c("Year","id"))


Long_Key_serc_2010 <- subset(Long_Key_serc_year, Year == "2010")
Long_Key_serc_2010_merge <- Long_Key_serc_2010 %>%
  mutate(id = row_number())

Long_Key_ws_2010 <- subset(Long_Key_ws_year, Year == "2010")
Long_Key_ws_2010_merge <- Long_Key_ws_2010 %>%
  mutate(id = row_number())

Long_Key_2010_all <- full_join(Long_Key_serc_2010_merge, Long_Key_ws_2010_merge, by = c("Year","id"))


Long_Key_serc_2011 <- subset(Long_Key_serc_year, Year == "2011")
Long_Key_serc_2011_merge <- Long_Key_serc_2011 %>%
  mutate(id = row_number())

Long_Key_ws_2011 <- subset(Long_Key_ws_year, Year == "2011")
Long_Key_ws_2011_merge <- Long_Key_ws_2011 %>%
  mutate(id = row_number())

Long_Key_2011_all <- full_join(Long_Key_serc_2011_merge, Long_Key_ws_2011_merge, by = c("Year","id"))


Long_Key_serc_2012 <- subset(Long_Key_serc_year, Year == "2012")
Long_Key_serc_2012_merge <- Long_Key_serc_2012 %>%
  mutate(id = row_number())

Long_Key_ws_2012 <- subset(Long_Key_ws_year, Year == "2012")
Long_Key_ws_2012_merge <- Long_Key_ws_2012 %>%
  mutate(id = row_number())

Long_Key_2012_all <- full_join(Long_Key_serc_2012_merge, Long_Key_ws_2012_merge, by = c("Year","id"))


Long_Key_serc_2014 <- subset(Long_Key_serc_year, Year == "2014")
Long_Key_serc_2014_merge <- Long_Key_serc_2014 %>%
  mutate(id = row_number())

Long_Key_ws_2014 <- subset(Long_Key_ws_year, Year == "2014")
Long_Key_ws_2014_merge <- Long_Key_ws_2014 %>%
  mutate(id = row_number())

Long_Key_2014_all <- full_join(Long_Key_serc_2014_merge, Long_Key_ws_2014_merge, by = c("Year","id"))


Long_Key_serc_2015 <- subset(Long_Key_serc_year, Year == "2015")
Long_Key_serc_2015_merge <- Long_Key_serc_2015 %>%
  mutate(id = row_number())

Long_Key_ws_2015 <- subset(Long_Key_ws_year, Year == "2015")
Long_Key_ws_2015_merge <- Long_Key_ws_2015 %>%
  mutate(id = row_number())

Long_Key_2015_all <- full_join(Long_Key_serc_2015_merge, Long_Key_ws_2015_merge, by = c("Year","id"))


Long_Key_serc_2016 <- subset(Long_Key_serc_year, Year == "2016")
Long_Key_serc_2016_merge <- Long_Key_serc_2016 %>%
  mutate(id = row_number())

Long_Key_ws_2016 <- subset(Long_Key_ws_year, Year == "2016")
Long_Key_ws_2016_merge <- Long_Key_ws_2016 %>%
  mutate(id = row_number())

Long_Key_2016_all <- full_join(Long_Key_serc_2016_merge, Long_Key_ws_2016_merge, by = c("Year","id"))



Long_Key_serc_2017 <- subset(Long_Key_serc_year, Year == "2017")
Long_Key_serc_2017_merge <- Long_Key_serc_2017 %>%
  mutate(id = row_number())

Long_Key_ws_2017 <- subset(Long_Key_ws_year, Year == "2017")
Long_Key_ws_2017_merge <- Long_Key_ws_2017 %>%
  mutate(id = row_number())

Long_Key_2017_all <- full_join(Long_Key_serc_2017_merge, Long_Key_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Long_Key_ws_2018_all <- subset(Long_Key_ws_year, Year == "2018") 

## adding extra columns to merge 

Long_Key_ws_2018_all$LATDEC <- "NA"
Long_Key_ws_2018_all$LONDEC <- "NA"
Long_Key_ws_2018_all$DEPTH <- "NA"
Long_Key_ws_2018_all$NOX_S <- "NA"
Long_Key_ws_2018_all$NOX_B <- "NA"
Long_Key_ws_2018_all$NO3_S <- "NA"
Long_Key_ws_2018_all$NO3_B <- "NA"
Long_Key_ws_2018_all$NO2_S <- "NA"
Long_Key_ws_2018_all$NO2_B <- "NA"
Long_Key_ws_2018_all$NH4_S <- "NA"
Long_Key_ws_2018_all$NH4_B <- "NA"
Long_Key_ws_2018_all$TN_S <- "NA"
Long_Key_ws_2018_all$TN_B <- "NA"
Long_Key_ws_2018_all$DIN_S <- "NA"
Long_Key_ws_2018_all$DIN_B <- "NA"
Long_Key_ws_2018_all$TON_S <- "NA"
Long_Key_ws_2018_all$TON_B <- "NA"
Long_Key_ws_2018_all$TP_S <- "NA"
Long_Key_ws_2018_all$TP_B <- "NA"
Long_Key_ws_2018_all$SRP_S <- "NA"
Long_Key_ws_2018_all$SRP_B <- "NA"
Long_Key_ws_2018_all$APA_S <- "NA"
Long_Key_ws_2018_all$APA_B <- "NA"
Long_Key_ws_2018_all$CHLA_S <- "NA"
Long_Key_ws_2018_all$CHLA_B <- "NA"
Long_Key_ws_2018_all$TOC_S <- "NA"
Long_Key_ws_2018_all$TOC_B <- "NA"
Long_Key_ws_2018_all$SiO2_S <- "NA"
Long_Key_ws_2018_all$SiO2_B <- "NA"
Long_Key_ws_2018_all$TURB_S <- "NA"
Long_Key_ws_2018_all$TURB_B <- "NA"
Long_Key_ws_2018_all$SAL_S <- "NA"
Long_Key_ws_2018_all$SAL_B <- "NA"
Long_Key_ws_2018_all$TEMP_S <- "NA"
Long_Key_ws_2018_all$TEMP_B <- "NA"
Long_Key_ws_2018_all$DO_S <- "NA"
Long_Key_ws_2018_all$DO_B <- "NA"
Long_Key_ws_2018_all$Kd <- "NA"
Long_Key_ws_2018_all$pH <- "NA"
Long_Key_ws_2018_all$TN_TP <- "NA"
Long_Key_ws_2018_all$N_P <- "NA"
Long_Key_ws_2018_all$DIN_TP <- "NA"
Long_Key_ws_2018_all$Si_DIN <- "NA"
Long_Key_ws_2018_all$F_SAT_S <- "NA"
Long_Key_ws_2018_all$F_SAT_B <- "NA"
Long_Key_ws_2018_all$F_Io <- "NA"
Long_Key_ws_2018_all$DSIGT <- "NA"
Long_Key_ws_2018_all$id <- "NA"







## rest of the serc data
Long_Key_serc_1995 <- subset(Long_Key_serc_year, Year == "1995")
Long_Key_serc_1996 <- subset(Long_Key_serc_year, Year == "1996")
Long_Key_serc_1997 <- subset(Long_Key_serc_year, Year == "1997")
# Long_Key_serc_1998 <- subset(Long_Key_serc_year, Year == "1998")
# Long_Key_serc_1999 <- subset(Long_Key_serc_year, Year == "1999")
# Long_Key_serc_2000 <- subset(Long_Key_serc_year, Year == "2000")
# Long_Key_serc_2001 <- subset(Long_Key_serc_year, Year == "2001")
Long_Key_serc_2013 <- subset(Long_Key_serc_year, Year == "2013")



Long_Key_serc_extra <- rbind(Long_Key_serc_1995,Long_Key_serc_1996,Long_Key_serc_1997,Long_Key_serc_2013)




Long_Key_serc_extra$Longitude <- "NA"
Long_Key_serc_extra$Latitude <- "NA"
Long_Key_serc_extra$Depth <- "NA"
Long_Key_serc_extra$SST <- "NA"
Long_Key_serc_extra$SSS <- "NA"
Long_Key_serc_extra$Chl_a <- "NA"
Long_Key_serc_extra$Phaeophyti <- "NA"
Long_Key_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Long_Key_ws_2018_all <- setcolorder(Long_Key_ws_2018_all, names(Long_Key_serc_extra))

## Merge all years together 

Long_Key_all <- rbind(Long_Key_serc_extra,Long_Key_1998_all,Long_Key_1999_all,Long_Key_2000_all,Long_Key_2001_all,Long_Key_2002_all,Long_Key_2003_all,Long_Key_2004_all, Long_Key_2005_all,Long_Key_2006_all,Long_Key_2007_all,Long_Key_2008_all,Long_Key_2009_all,Long_Key_2010_all,Long_Key_2011_all,Long_Key_2012_all,Long_Key_2014_all,Long_Key_2015_all,Long_Key_2016_all,Long_Key_2017_all,Long_Key_ws_2018_all)
Long_Key_all$sitename <- "Long_Key"

export(Long_Key_all,"MK_10km/Long_Key_combined.csv")





Molasses_Keys_serc <- import("MK_10km/Molasses_Keys_serc.xls")
Molasses_Keys_ws <- import("MK_10km/Molasses_Keys_ws.xls")

## Change date to Year to merge the two dataframes

Molasses_Keys_serc_date <- format(as.Date(Molasses_Keys_serc$DATE_, format = "%Y %m %d"),"%Y")
Molasses_Keys_serc_frame <- data.frame(Molasses_Keys_serc_date)
Molasses_Keys_serc_year <- cbind(Molasses_Keys_serc_frame, Molasses_Keys_serc)
colnames(Molasses_Keys_serc_year)[1]<- "Year"
Molasses_Keys_serc_year$FID <- NULL
Molasses_Keys_serc_year$SURV <- NULL
Molasses_Keys_serc_year$BASIN <- NULL
Molasses_Keys_serc_year$SEGMENT <- NULL
Molasses_Keys_serc_year$ZONE_ <- NULL
Molasses_Keys_serc_year$TIME_ <- NULL
Molasses_Keys_serc_year$DATE_ <- NULL
Molasses_Keys_serc_year$STATION <- NULL
Molasses_Keys_serc_year$SITE <- NULL



Molasses_Keys_ws_date <- format(as.Date(Molasses_Keys_ws$Date_, format = "%Y %m %d"),"%Y")
Molasses_Keys_ws_frame <- data.frame(Molasses_Keys_ws_date)
Molasses_Keys_ws_year <- cbind(Molasses_Keys_ws_frame, Molasses_Keys_ws)
colnames(Molasses_Keys_ws_year)[1]<- "Year"
Molasses_Keys_ws_year$FID <- NULL
Molasses_Keys_ws_year$Station <- NULL
Molasses_Keys_ws_year$Date_ <- NULL
Molasses_Keys_ws_year$GMT <- NULL
Molasses_Keys_ws_year$Field11 <- NULL
Molasses_Keys_ws_year$Field12 <- NULL
Molasses_Keys_ws_year$Field13 <- NULL
Molasses_Keys_ws_year$Field14 <- NULL
Molasses_Keys_ws_year$Field15 <- NULL
Molasses_Keys_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Molasses_Keys_serc_year$Year)
unique(Molasses_Keys_ws_year$Year)


Molasses_Keys_serc_1998 <- subset(Molasses_Keys_serc_year, Year == "1998")
Molasses_Keys_serc_1998_merge <- Molasses_Keys_serc_1998 %>%
  mutate(id = row_number())

Molasses_Keys_ws_1998 <- subset(Molasses_Keys_ws_year, Year == "1998")
Molasses_Keys_ws_1998_merge <- Molasses_Keys_ws_1998 %>%
  mutate(id = row_number())

Molasses_Keys_1998_all <- full_join(Molasses_Keys_serc_1998_merge, Molasses_Keys_ws_1998_merge, by = c("Year","id"))


Molasses_Keys_serc_1999 <- subset(Molasses_Keys_serc_year, Year == "1999")
Molasses_Keys_serc_1999_merge <- Molasses_Keys_serc_1999 %>%
  mutate(id = row_number())

Molasses_Keys_ws_1999 <- subset(Molasses_Keys_ws_year, Year == "1999")
Molasses_Keys_ws_1999_merge <- Molasses_Keys_ws_1999 %>%
  mutate(id = row_number())

Molasses_Keys_1999_all <- full_join(Molasses_Keys_serc_1999_merge, Molasses_Keys_ws_1999_merge, by = c("Year","id"))


Molasses_Keys_serc_2000 <- subset(Molasses_Keys_serc_year, Year == "2000")
Molasses_Keys_serc_2000_merge <- Molasses_Keys_serc_2000 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2000 <- subset(Molasses_Keys_ws_year, Year == "2000")
Molasses_Keys_ws_2000_merge <- Molasses_Keys_ws_2000 %>%
  mutate(id = row_number())

Molasses_Keys_2000_all <- full_join(Molasses_Keys_serc_2000_merge, Molasses_Keys_ws_2000_merge, by = c("Year","id"))


Molasses_Keys_serc_2001 <- subset(Molasses_Keys_serc_year, Year == "2001")
Molasses_Keys_serc_2001_merge <- Molasses_Keys_serc_2001 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2001 <- subset(Molasses_Keys_ws_year, Year == "2001")
Molasses_Keys_ws_2001_merge <- Molasses_Keys_ws_2001 %>%
  mutate(id = row_number())

Molasses_Keys_2001_all <- full_join(Molasses_Keys_serc_2001_merge, Molasses_Keys_ws_2001_merge, by = c("Year","id"))


Molasses_Keys_serc_2002 <- subset(Molasses_Keys_serc_year, Year == "2002")
Molasses_Keys_serc_2002_merge <- Molasses_Keys_serc_2002 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2002 <- subset(Molasses_Keys_ws_year, Year == "2002")
Molasses_Keys_ws_2002_merge <- Molasses_Keys_ws_2002 %>%
  mutate(id = row_number())

Molasses_Keys_2002_all <- full_join(Molasses_Keys_serc_2002_merge, Molasses_Keys_ws_2002_merge, by = c("Year","id"))


Molasses_Keys_serc_2003 <- subset(Molasses_Keys_serc_year, Year == "2003")
Molasses_Keys_serc_2003_merge <- Molasses_Keys_serc_2003 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2003 <- subset(Molasses_Keys_ws_year, Year == "2003")
Molasses_Keys_ws_2003_merge <- Molasses_Keys_ws_2003 %>%
  mutate(id = row_number())

Molasses_Keys_2003_all <- full_join(Molasses_Keys_serc_2003_merge, Molasses_Keys_ws_2003_merge, by = c("Year","id"))


Molasses_Keys_serc_2004 <- subset(Molasses_Keys_serc_year, Year == "2004")
Molasses_Keys_serc_2004_merge <- Molasses_Keys_serc_2004 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2004 <- subset(Molasses_Keys_ws_year, Year == "2004")
Molasses_Keys_ws_2004_merge <- Molasses_Keys_ws_2004 %>%
  mutate(id = row_number())

Molasses_Keys_2004_all <- full_join(Molasses_Keys_serc_2004_merge, Molasses_Keys_ws_2004_merge, by = c("Year","id"))


Molasses_Keys_serc_2005 <- subset(Molasses_Keys_serc_year, Year == "2005")
Molasses_Keys_serc_2005_merge <- Molasses_Keys_serc_2005 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2005 <- subset(Molasses_Keys_ws_year, Year == "2005")
Molasses_Keys_ws_2005_merge <- Molasses_Keys_ws_2005 %>%
  mutate(id = row_number())

Molasses_Keys_2005_all <- full_join(Molasses_Keys_serc_2005_merge, Molasses_Keys_ws_2005_merge, by = c("Year","id"))


Molasses_Keys_serc_2006 <- subset(Molasses_Keys_serc_year, Year == "2006")
Molasses_Keys_serc_2006_merge <- Molasses_Keys_serc_2006 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2006 <- subset(Molasses_Keys_ws_year, Year == "2006")
Molasses_Keys_ws_2006_merge <- Molasses_Keys_ws_2006 %>%
  mutate(id = row_number())

Molasses_Keys_2006_all <- full_join(Molasses_Keys_serc_2006_merge, Molasses_Keys_ws_2006_merge, by = c("Year","id"))


Molasses_Keys_serc_2007 <- subset(Molasses_Keys_serc_year, Year == "2007")
Molasses_Keys_serc_2007_merge <- Molasses_Keys_serc_2007 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2007 <- subset(Molasses_Keys_ws_year, Year == "2007")
Molasses_Keys_ws_2007_merge <- Molasses_Keys_ws_2007 %>%
  mutate(id = row_number())

Molasses_Keys_2007_all <- full_join(Molasses_Keys_serc_2007_merge, Molasses_Keys_ws_2007_merge, by = c("Year","id"))


Molasses_Keys_serc_2008 <- subset(Molasses_Keys_serc_year, Year == "2008")
Molasses_Keys_serc_2008_merge <- Molasses_Keys_serc_2008 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2008 <- subset(Molasses_Keys_ws_year, Year == "2008")
Molasses_Keys_ws_2008_merge <- Molasses_Keys_ws_2008 %>%
  mutate(id = row_number())

Molasses_Keys_2008_all <- full_join(Molasses_Keys_serc_2008_merge, Molasses_Keys_ws_2008_merge, by = c("Year","id"))


Molasses_Keys_serc_2009 <- subset(Molasses_Keys_serc_year, Year == "2009")
Molasses_Keys_serc_2009_merge <- Molasses_Keys_serc_2009 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2009 <- subset(Molasses_Keys_ws_year, Year == "2009")
Molasses_Keys_ws_2009_merge <- Molasses_Keys_ws_2009 %>%
  mutate(id = row_number())

Molasses_Keys_2009_all <- full_join(Molasses_Keys_serc_2009_merge, Molasses_Keys_ws_2009_merge, by = c("Year","id"))


Molasses_Keys_serc_2010 <- subset(Molasses_Keys_serc_year, Year == "2010")
Molasses_Keys_serc_2010_merge <- Molasses_Keys_serc_2010 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2010 <- subset(Molasses_Keys_ws_year, Year == "2010")
Molasses_Keys_ws_2010_merge <- Molasses_Keys_ws_2010 %>%
  mutate(id = row_number())

Molasses_Keys_2010_all <- full_join(Molasses_Keys_serc_2010_merge, Molasses_Keys_ws_2010_merge, by = c("Year","id"))


Molasses_Keys_serc_2011 <- subset(Molasses_Keys_serc_year, Year == "2011")
Molasses_Keys_serc_2011_merge <- Molasses_Keys_serc_2011 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2011 <- subset(Molasses_Keys_ws_year, Year == "2011")
Molasses_Keys_ws_2011_merge <- Molasses_Keys_ws_2011 %>%
  mutate(id = row_number())

Molasses_Keys_2011_all <- full_join(Molasses_Keys_serc_2011_merge, Molasses_Keys_ws_2011_merge, by = c("Year","id"))


Molasses_Keys_serc_2012 <- subset(Molasses_Keys_serc_year, Year == "2012")
Molasses_Keys_serc_2012_merge <- Molasses_Keys_serc_2012 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2012 <- subset(Molasses_Keys_ws_year, Year == "2012")
Molasses_Keys_ws_2012_merge <- Molasses_Keys_ws_2012 %>%
  mutate(id = row_number())

Molasses_Keys_2012_all <- full_join(Molasses_Keys_serc_2012_merge, Molasses_Keys_ws_2012_merge, by = c("Year","id"))


Molasses_Keys_serc_2014 <- subset(Molasses_Keys_serc_year, Year == "2014")
Molasses_Keys_serc_2014_merge <- Molasses_Keys_serc_2014 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2014 <- subset(Molasses_Keys_ws_year, Year == "2014")
Molasses_Keys_ws_2014_merge <- Molasses_Keys_ws_2014 %>%
  mutate(id = row_number())

Molasses_Keys_2014_all <- full_join(Molasses_Keys_serc_2014_merge, Molasses_Keys_ws_2014_merge, by = c("Year","id"))


Molasses_Keys_serc_2015 <- subset(Molasses_Keys_serc_year, Year == "2015")
Molasses_Keys_serc_2015_merge <- Molasses_Keys_serc_2015 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2015 <- subset(Molasses_Keys_ws_year, Year == "2015")
Molasses_Keys_ws_2015_merge <- Molasses_Keys_ws_2015 %>%
  mutate(id = row_number())

Molasses_Keys_2015_all <- full_join(Molasses_Keys_serc_2015_merge, Molasses_Keys_ws_2015_merge, by = c("Year","id"))


Molasses_Keys_serc_2016 <- subset(Molasses_Keys_serc_year, Year == "2016")
Molasses_Keys_serc_2016_merge <- Molasses_Keys_serc_2016 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2016 <- subset(Molasses_Keys_ws_year, Year == "2016")
Molasses_Keys_ws_2016_merge <- Molasses_Keys_ws_2016 %>%
  mutate(id = row_number())

Molasses_Keys_2016_all <- full_join(Molasses_Keys_serc_2016_merge, Molasses_Keys_ws_2016_merge, by = c("Year","id"))



Molasses_Keys_serc_2017 <- subset(Molasses_Keys_serc_year, Year == "2017")
Molasses_Keys_serc_2017_merge <- Molasses_Keys_serc_2017 %>%
  mutate(id = row_number())

Molasses_Keys_ws_2017 <- subset(Molasses_Keys_ws_year, Year == "2017")
Molasses_Keys_ws_2017_merge <- Molasses_Keys_ws_2017 %>%
  mutate(id = row_number())

Molasses_Keys_2017_all <- full_join(Molasses_Keys_serc_2017_merge, Molasses_Keys_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Molasses_Keys_ws_2018_all <- subset(Molasses_Keys_ws_year, Year == "2018") 

## adding extra columns to merge 

Molasses_Keys_ws_2018_all$LATDEC <- "NA"
Molasses_Keys_ws_2018_all$LONDEC <- "NA"
Molasses_Keys_ws_2018_all$DEPTH <- "NA"
Molasses_Keys_ws_2018_all$NOX_S <- "NA"
Molasses_Keys_ws_2018_all$NOX_B <- "NA"
Molasses_Keys_ws_2018_all$NO3_S <- "NA"
Molasses_Keys_ws_2018_all$NO3_B <- "NA"
Molasses_Keys_ws_2018_all$NO2_S <- "NA"
Molasses_Keys_ws_2018_all$NO2_B <- "NA"
Molasses_Keys_ws_2018_all$NH4_S <- "NA"
Molasses_Keys_ws_2018_all$NH4_B <- "NA"
Molasses_Keys_ws_2018_all$TN_S <- "NA"
Molasses_Keys_ws_2018_all$TN_B <- "NA"
Molasses_Keys_ws_2018_all$DIN_S <- "NA"
Molasses_Keys_ws_2018_all$DIN_B <- "NA"
Molasses_Keys_ws_2018_all$TON_S <- "NA"
Molasses_Keys_ws_2018_all$TON_B <- "NA"
Molasses_Keys_ws_2018_all$TP_S <- "NA"
Molasses_Keys_ws_2018_all$TP_B <- "NA"
Molasses_Keys_ws_2018_all$SRP_S <- "NA"
Molasses_Keys_ws_2018_all$SRP_B <- "NA"
Molasses_Keys_ws_2018_all$APA_S <- "NA"
Molasses_Keys_ws_2018_all$APA_B <- "NA"
Molasses_Keys_ws_2018_all$CHLA_S <- "NA"
Molasses_Keys_ws_2018_all$CHLA_B <- "NA"
Molasses_Keys_ws_2018_all$TOC_S <- "NA"
Molasses_Keys_ws_2018_all$TOC_B <- "NA"
Molasses_Keys_ws_2018_all$SiO2_S <- "NA"
Molasses_Keys_ws_2018_all$SiO2_B <- "NA"
Molasses_Keys_ws_2018_all$TURB_S <- "NA"
Molasses_Keys_ws_2018_all$TURB_B <- "NA"
Molasses_Keys_ws_2018_all$SAL_S <- "NA"
Molasses_Keys_ws_2018_all$SAL_B <- "NA"
Molasses_Keys_ws_2018_all$TEMP_S <- "NA"
Molasses_Keys_ws_2018_all$TEMP_B <- "NA"
Molasses_Keys_ws_2018_all$DO_S <- "NA"
Molasses_Keys_ws_2018_all$DO_B <- "NA"
Molasses_Keys_ws_2018_all$Kd <- "NA"
Molasses_Keys_ws_2018_all$pH <- "NA"
Molasses_Keys_ws_2018_all$TN_TP <- "NA"
Molasses_Keys_ws_2018_all$N_P <- "NA"
Molasses_Keys_ws_2018_all$DIN_TP <- "NA"
Molasses_Keys_ws_2018_all$Si_DIN <- "NA"
Molasses_Keys_ws_2018_all$F_SAT_S <- "NA"
Molasses_Keys_ws_2018_all$F_SAT_B <- "NA"
Molasses_Keys_ws_2018_all$F_Io <- "NA"
Molasses_Keys_ws_2018_all$DSIGT <- "NA"
Molasses_Keys_ws_2018_all$id <- "NA"







## rest of the serc data
Molasses_Keys_serc_1995 <- subset(Molasses_Keys_serc_year, Year == "1995")
Molasses_Keys_serc_1996 <- subset(Molasses_Keys_serc_year, Year == "1996")
Molasses_Keys_serc_1997 <- subset(Molasses_Keys_serc_year, Year == "1997")
# Molasses_Keys_serc_1998 <- subset(Molasses_Keys_serc_year, Year == "1998")
# Molasses_Keys_serc_1999 <- subset(Molasses_Keys_serc_year, Year == "1999")
# Molasses_Keys_serc_2000 <- subset(Molasses_Keys_serc_year, Year == "2000")
# Molasses_Keys_serc_2001 <- subset(Molasses_Keys_serc_year, Year == "2001")
Molasses_Keys_serc_2013 <- subset(Molasses_Keys_serc_year, Year == "2013")



Molasses_Keys_serc_extra <- rbind(Molasses_Keys_serc_1995,Molasses_Keys_serc_1996,Molasses_Keys_serc_1997,Molasses_Keys_serc_2013)




Molasses_Keys_serc_extra$Longitude <- "NA"
Molasses_Keys_serc_extra$Latitude <- "NA"
Molasses_Keys_serc_extra$Depth <- "NA"
Molasses_Keys_serc_extra$SST <- "NA"
Molasses_Keys_serc_extra$SSS <- "NA"
Molasses_Keys_serc_extra$Chl_a <- "NA"
Molasses_Keys_serc_extra$Phaeophyti <- "NA"
Molasses_Keys_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Molasses_Keys_ws_2018_all <- setcolorder(Molasses_Keys_ws_2018_all, names(Molasses_Keys_serc_extra))

## Merge all years together 

Molasses_Keys_all <- rbind(Molasses_Keys_serc_extra,Molasses_Keys_1998_all,Molasses_Keys_1999_all,Molasses_Keys_2000_all,Molasses_Keys_2001_all,Molasses_Keys_2002_all,Molasses_Keys_2003_all,Molasses_Keys_2004_all, Molasses_Keys_2005_all,Molasses_Keys_2006_all,Molasses_Keys_2007_all,Molasses_Keys_2008_all,Molasses_Keys_2009_all,Molasses_Keys_2010_all,Molasses_Keys_2011_all,Molasses_Keys_2012_all,Molasses_Keys_2014_all,Molasses_Keys_2015_all,Molasses_Keys_2016_all,Molasses_Keys_2017_all,Molasses_Keys_ws_2018_all)
Molasses_Keys_all$sitename <- "Molasses_Keys"

export(Molasses_Keys_all,"MK_10km/Molasses_Keys_combined.csv")



Moser_Channel_serc <- import("MK_10km/Moser_Channel_serc.xls")
Moser_Channel_ws <- import("MK_10km/Moser_Channel_ws.xls")

## Change date to Year to merge the two dataframes

Moser_Channel_serc_date <- format(as.Date(Moser_Channel_serc$DATE_, format = "%Y %m %d"),"%Y")
Moser_Channel_serc_frame <- data.frame(Moser_Channel_serc_date)
Moser_Channel_serc_year <- cbind(Moser_Channel_serc_frame, Moser_Channel_serc)
colnames(Moser_Channel_serc_year)[1]<- "Year"
Moser_Channel_serc_year$FID <- NULL
Moser_Channel_serc_year$SURV <- NULL
Moser_Channel_serc_year$BASIN <- NULL
Moser_Channel_serc_year$SEGMENT <- NULL
Moser_Channel_serc_year$ZONE_ <- NULL
Moser_Channel_serc_year$TIME_ <- NULL
Moser_Channel_serc_year$DATE_ <- NULL
Moser_Channel_serc_year$STATION <- NULL
Moser_Channel_serc_year$SITE <- NULL



Moser_Channel_ws_date <- format(as.Date(Moser_Channel_ws$Date_, format = "%Y %m %d"),"%Y")
Moser_Channel_ws_frame <- data.frame(Moser_Channel_ws_date)
Moser_Channel_ws_year <- cbind(Moser_Channel_ws_frame, Moser_Channel_ws)
colnames(Moser_Channel_ws_year)[1]<- "Year"
Moser_Channel_ws_year$FID <- NULL
Moser_Channel_ws_year$Station <- NULL
Moser_Channel_ws_year$Date_ <- NULL
Moser_Channel_ws_year$GMT <- NULL
Moser_Channel_ws_year$Field11 <- NULL
Moser_Channel_ws_year$Field12 <- NULL
Moser_Channel_ws_year$Field13 <- NULL
Moser_Channel_ws_year$Field14 <- NULL
Moser_Channel_ws_year$Field15 <- NULL
Moser_Channel_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Moser_Channel_serc_year$Year)
unique(Moser_Channel_ws_year$Year)


Moser_Channel_serc_1998 <- subset(Moser_Channel_serc_year, Year == "1998")
Moser_Channel_serc_1998_merge <- Moser_Channel_serc_1998 %>%
  mutate(id = row_number())

Moser_Channel_ws_1998 <- subset(Moser_Channel_ws_year, Year == "1998")
Moser_Channel_ws_1998_merge <- Moser_Channel_ws_1998 %>%
  mutate(id = row_number())

Moser_Channel_1998_all <- full_join(Moser_Channel_serc_1998_merge, Moser_Channel_ws_1998_merge, by = c("Year","id"))


Moser_Channel_serc_1999 <- subset(Moser_Channel_serc_year, Year == "1999")
Moser_Channel_serc_1999_merge <- Moser_Channel_serc_1999 %>%
  mutate(id = row_number())

Moser_Channel_ws_1999 <- subset(Moser_Channel_ws_year, Year == "1999")
Moser_Channel_ws_1999_merge <- Moser_Channel_ws_1999 %>%
  mutate(id = row_number())

Moser_Channel_1999_all <- full_join(Moser_Channel_serc_1999_merge, Moser_Channel_ws_1999_merge, by = c("Year","id"))


Moser_Channel_serc_2000 <- subset(Moser_Channel_serc_year, Year == "2000")
Moser_Channel_serc_2000_merge <- Moser_Channel_serc_2000 %>%
  mutate(id = row_number())

Moser_Channel_ws_2000 <- subset(Moser_Channel_ws_year, Year == "2000")
Moser_Channel_ws_2000_merge <- Moser_Channel_ws_2000 %>%
  mutate(id = row_number())

Moser_Channel_2000_all <- full_join(Moser_Channel_serc_2000_merge, Moser_Channel_ws_2000_merge, by = c("Year","id"))


Moser_Channel_serc_2001 <- subset(Moser_Channel_serc_year, Year == "2001")
Moser_Channel_serc_2001_merge <- Moser_Channel_serc_2001 %>%
  mutate(id = row_number())

Moser_Channel_ws_2001 <- subset(Moser_Channel_ws_year, Year == "2001")
Moser_Channel_ws_2001_merge <- Moser_Channel_ws_2001 %>%
  mutate(id = row_number())

Moser_Channel_2001_all <- full_join(Moser_Channel_serc_2001_merge, Moser_Channel_ws_2001_merge, by = c("Year","id"))


Moser_Channel_serc_2002 <- subset(Moser_Channel_serc_year, Year == "2002")
Moser_Channel_serc_2002_merge <- Moser_Channel_serc_2002 %>%
  mutate(id = row_number())

Moser_Channel_ws_2002 <- subset(Moser_Channel_ws_year, Year == "2002")
Moser_Channel_ws_2002_merge <- Moser_Channel_ws_2002 %>%
  mutate(id = row_number())

Moser_Channel_2002_all <- full_join(Moser_Channel_serc_2002_merge, Moser_Channel_ws_2002_merge, by = c("Year","id"))


Moser_Channel_serc_2003 <- subset(Moser_Channel_serc_year, Year == "2003")
Moser_Channel_serc_2003_merge <- Moser_Channel_serc_2003 %>%
  mutate(id = row_number())

Moser_Channel_ws_2003 <- subset(Moser_Channel_ws_year, Year == "2003")
Moser_Channel_ws_2003_merge <- Moser_Channel_ws_2003 %>%
  mutate(id = row_number())

Moser_Channel_2003_all <- full_join(Moser_Channel_serc_2003_merge, Moser_Channel_ws_2003_merge, by = c("Year","id"))


Moser_Channel_serc_2004 <- subset(Moser_Channel_serc_year, Year == "2004")
Moser_Channel_serc_2004_merge <- Moser_Channel_serc_2004 %>%
  mutate(id = row_number())

Moser_Channel_ws_2004 <- subset(Moser_Channel_ws_year, Year == "2004")
Moser_Channel_ws_2004_merge <- Moser_Channel_ws_2004 %>%
  mutate(id = row_number())

Moser_Channel_2004_all <- full_join(Moser_Channel_serc_2004_merge, Moser_Channel_ws_2004_merge, by = c("Year","id"))


Moser_Channel_serc_2005 <- subset(Moser_Channel_serc_year, Year == "2005")
Moser_Channel_serc_2005_merge <- Moser_Channel_serc_2005 %>%
  mutate(id = row_number())

Moser_Channel_ws_2005 <- subset(Moser_Channel_ws_year, Year == "2005")
Moser_Channel_ws_2005_merge <- Moser_Channel_ws_2005 %>%
  mutate(id = row_number())

Moser_Channel_2005_all <- full_join(Moser_Channel_serc_2005_merge, Moser_Channel_ws_2005_merge, by = c("Year","id"))


Moser_Channel_serc_2006 <- subset(Moser_Channel_serc_year, Year == "2006")
Moser_Channel_serc_2006_merge <- Moser_Channel_serc_2006 %>%
  mutate(id = row_number())

Moser_Channel_ws_2006 <- subset(Moser_Channel_ws_year, Year == "2006")
Moser_Channel_ws_2006_merge <- Moser_Channel_ws_2006 %>%
  mutate(id = row_number())

Moser_Channel_2006_all <- full_join(Moser_Channel_serc_2006_merge, Moser_Channel_ws_2006_merge, by = c("Year","id"))


Moser_Channel_serc_2007 <- subset(Moser_Channel_serc_year, Year == "2007")
Moser_Channel_serc_2007_merge <- Moser_Channel_serc_2007 %>%
  mutate(id = row_number())

Moser_Channel_ws_2007 <- subset(Moser_Channel_ws_year, Year == "2007")
Moser_Channel_ws_2007_merge <- Moser_Channel_ws_2007 %>%
  mutate(id = row_number())

Moser_Channel_2007_all <- full_join(Moser_Channel_serc_2007_merge, Moser_Channel_ws_2007_merge, by = c("Year","id"))


Moser_Channel_serc_2008 <- subset(Moser_Channel_serc_year, Year == "2008")
Moser_Channel_serc_2008_merge <- Moser_Channel_serc_2008 %>%
  mutate(id = row_number())

Moser_Channel_ws_2008 <- subset(Moser_Channel_ws_year, Year == "2008")
Moser_Channel_ws_2008_merge <- Moser_Channel_ws_2008 %>%
  mutate(id = row_number())

Moser_Channel_2008_all <- full_join(Moser_Channel_serc_2008_merge, Moser_Channel_ws_2008_merge, by = c("Year","id"))


Moser_Channel_serc_2009 <- subset(Moser_Channel_serc_year, Year == "2009")
Moser_Channel_serc_2009_merge <- Moser_Channel_serc_2009 %>%
  mutate(id = row_number())

Moser_Channel_ws_2009 <- subset(Moser_Channel_ws_year, Year == "2009")
Moser_Channel_ws_2009_merge <- Moser_Channel_ws_2009 %>%
  mutate(id = row_number())

Moser_Channel_2009_all <- full_join(Moser_Channel_serc_2009_merge, Moser_Channel_ws_2009_merge, by = c("Year","id"))


Moser_Channel_serc_2010 <- subset(Moser_Channel_serc_year, Year == "2010")
Moser_Channel_serc_2010_merge <- Moser_Channel_serc_2010 %>%
  mutate(id = row_number())

Moser_Channel_ws_2010 <- subset(Moser_Channel_ws_year, Year == "2010")
Moser_Channel_ws_2010_merge <- Moser_Channel_ws_2010 %>%
  mutate(id = row_number())

Moser_Channel_2010_all <- full_join(Moser_Channel_serc_2010_merge, Moser_Channel_ws_2010_merge, by = c("Year","id"))


Moser_Channel_serc_2011 <- subset(Moser_Channel_serc_year, Year == "2011")
Moser_Channel_serc_2011_merge <- Moser_Channel_serc_2011 %>%
  mutate(id = row_number())

Moser_Channel_ws_2011 <- subset(Moser_Channel_ws_year, Year == "2011")
Moser_Channel_ws_2011_merge <- Moser_Channel_ws_2011 %>%
  mutate(id = row_number())

Moser_Channel_2011_all <- full_join(Moser_Channel_serc_2011_merge, Moser_Channel_ws_2011_merge, by = c("Year","id"))


Moser_Channel_serc_2012 <- subset(Moser_Channel_serc_year, Year == "2012")
Moser_Channel_serc_2012_merge <- Moser_Channel_serc_2012 %>%
  mutate(id = row_number())

Moser_Channel_ws_2012 <- subset(Moser_Channel_ws_year, Year == "2012")
Moser_Channel_ws_2012_merge <- Moser_Channel_ws_2012 %>%
  mutate(id = row_number())

Moser_Channel_2012_all <- full_join(Moser_Channel_serc_2012_merge, Moser_Channel_ws_2012_merge, by = c("Year","id"))


Moser_Channel_serc_2014 <- subset(Moser_Channel_serc_year, Year == "2014")
Moser_Channel_serc_2014_merge <- Moser_Channel_serc_2014 %>%
  mutate(id = row_number())

Moser_Channel_ws_2014 <- subset(Moser_Channel_ws_year, Year == "2014")
Moser_Channel_ws_2014_merge <- Moser_Channel_ws_2014 %>%
  mutate(id = row_number())

Moser_Channel_2014_all <- full_join(Moser_Channel_serc_2014_merge, Moser_Channel_ws_2014_merge, by = c("Year","id"))


Moser_Channel_serc_2015 <- subset(Moser_Channel_serc_year, Year == "2015")
Moser_Channel_serc_2015_merge <- Moser_Channel_serc_2015 %>%
  mutate(id = row_number())

Moser_Channel_ws_2015 <- subset(Moser_Channel_ws_year, Year == "2015")
Moser_Channel_ws_2015_merge <- Moser_Channel_ws_2015 %>%
  mutate(id = row_number())

Moser_Channel_2015_all <- full_join(Moser_Channel_serc_2015_merge, Moser_Channel_ws_2015_merge, by = c("Year","id"))


Moser_Channel_serc_2016 <- subset(Moser_Channel_serc_year, Year == "2016")
Moser_Channel_serc_2016_merge <- Moser_Channel_serc_2016 %>%
  mutate(id = row_number())

Moser_Channel_ws_2016 <- subset(Moser_Channel_ws_year, Year == "2016")
Moser_Channel_ws_2016_merge <- Moser_Channel_ws_2016 %>%
  mutate(id = row_number())

Moser_Channel_2016_all <- full_join(Moser_Channel_serc_2016_merge, Moser_Channel_ws_2016_merge, by = c("Year","id"))



Moser_Channel_serc_2017 <- subset(Moser_Channel_serc_year, Year == "2017")
Moser_Channel_serc_2017_merge <- Moser_Channel_serc_2017 %>%
  mutate(id = row_number())

Moser_Channel_ws_2017 <- subset(Moser_Channel_ws_year, Year == "2017")
Moser_Channel_ws_2017_merge <- Moser_Channel_ws_2017 %>%
  mutate(id = row_number())

Moser_Channel_2017_all <- full_join(Moser_Channel_serc_2017_merge, Moser_Channel_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Moser_Channel_ws_2018_all <- subset(Moser_Channel_ws_year, Year == "2018") 

## adding extra columns to merge 

Moser_Channel_ws_2018_all$LATDEC <- "NA"
Moser_Channel_ws_2018_all$LONDEC <- "NA"
Moser_Channel_ws_2018_all$DEPTH <- "NA"
Moser_Channel_ws_2018_all$NOX_S <- "NA"
Moser_Channel_ws_2018_all$NOX_B <- "NA"
Moser_Channel_ws_2018_all$NO3_S <- "NA"
Moser_Channel_ws_2018_all$NO3_B <- "NA"
Moser_Channel_ws_2018_all$NO2_S <- "NA"
Moser_Channel_ws_2018_all$NO2_B <- "NA"
Moser_Channel_ws_2018_all$NH4_S <- "NA"
Moser_Channel_ws_2018_all$NH4_B <- "NA"
Moser_Channel_ws_2018_all$TN_S <- "NA"
Moser_Channel_ws_2018_all$TN_B <- "NA"
Moser_Channel_ws_2018_all$DIN_S <- "NA"
Moser_Channel_ws_2018_all$DIN_B <- "NA"
Moser_Channel_ws_2018_all$TON_S <- "NA"
Moser_Channel_ws_2018_all$TON_B <- "NA"
Moser_Channel_ws_2018_all$TP_S <- "NA"
Moser_Channel_ws_2018_all$TP_B <- "NA"
Moser_Channel_ws_2018_all$SRP_S <- "NA"
Moser_Channel_ws_2018_all$SRP_B <- "NA"
Moser_Channel_ws_2018_all$APA_S <- "NA"
Moser_Channel_ws_2018_all$APA_B <- "NA"
Moser_Channel_ws_2018_all$CHLA_S <- "NA"
Moser_Channel_ws_2018_all$CHLA_B <- "NA"
Moser_Channel_ws_2018_all$TOC_S <- "NA"
Moser_Channel_ws_2018_all$TOC_B <- "NA"
Moser_Channel_ws_2018_all$SiO2_S <- "NA"
Moser_Channel_ws_2018_all$SiO2_B <- "NA"
Moser_Channel_ws_2018_all$TURB_S <- "NA"
Moser_Channel_ws_2018_all$TURB_B <- "NA"
Moser_Channel_ws_2018_all$SAL_S <- "NA"
Moser_Channel_ws_2018_all$SAL_B <- "NA"
Moser_Channel_ws_2018_all$TEMP_S <- "NA"
Moser_Channel_ws_2018_all$TEMP_B <- "NA"
Moser_Channel_ws_2018_all$DO_S <- "NA"
Moser_Channel_ws_2018_all$DO_B <- "NA"
Moser_Channel_ws_2018_all$Kd <- "NA"
Moser_Channel_ws_2018_all$pH <- "NA"
Moser_Channel_ws_2018_all$TN_TP <- "NA"
Moser_Channel_ws_2018_all$N_P <- "NA"
Moser_Channel_ws_2018_all$DIN_TP <- "NA"
Moser_Channel_ws_2018_all$Si_DIN <- "NA"
Moser_Channel_ws_2018_all$F_SAT_S <- "NA"
Moser_Channel_ws_2018_all$F_SAT_B <- "NA"
Moser_Channel_ws_2018_all$F_Io <- "NA"
Moser_Channel_ws_2018_all$DSIGT <- "NA"
Moser_Channel_ws_2018_all$id <- "NA"







## rest of the serc data
Moser_Channel_serc_1995 <- subset(Moser_Channel_serc_year, Year == "1995")
Moser_Channel_serc_1996 <- subset(Moser_Channel_serc_year, Year == "1996")
Moser_Channel_serc_1997 <- subset(Moser_Channel_serc_year, Year == "1997")
# Moser_Channel_serc_1998 <- subset(Moser_Channel_serc_year, Year == "1998")
# Moser_Channel_serc_1999 <- subset(Moser_Channel_serc_year, Year == "1999")
# Moser_Channel_serc_2000 <- subset(Moser_Channel_serc_year, Year == "2000")
# Moser_Channel_serc_2001 <- subset(Moser_Channel_serc_year, Year == "2001")
Moser_Channel_serc_2013 <- subset(Moser_Channel_serc_year, Year == "2013")



Moser_Channel_serc_extra <- rbind(Moser_Channel_serc_1995,Moser_Channel_serc_1996,Moser_Channel_serc_1997,Moser_Channel_serc_2013)




Moser_Channel_serc_extra$Longitude <- "NA"
Moser_Channel_serc_extra$Latitude <- "NA"
Moser_Channel_serc_extra$Depth <- "NA"
Moser_Channel_serc_extra$SST <- "NA"
Moser_Channel_serc_extra$SSS <- "NA"
Moser_Channel_serc_extra$Chl_a <- "NA"
Moser_Channel_serc_extra$Phaeophyti <- "NA"
Moser_Channel_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Moser_Channel_ws_2018_all <- setcolorder(Moser_Channel_ws_2018_all, names(Moser_Channel_serc_extra))

## Merge all years together 

Moser_Channel_all <- rbind(Moser_Channel_serc_extra,Moser_Channel_1998_all,Moser_Channel_1999_all,Moser_Channel_2000_all,Moser_Channel_2001_all,Moser_Channel_2002_all,Moser_Channel_2003_all,Moser_Channel_2004_all, Moser_Channel_2005_all,Moser_Channel_2006_all,Moser_Channel_2007_all,Moser_Channel_2008_all,Moser_Channel_2009_all,Moser_Channel_2010_all,Moser_Channel_2011_all,Moser_Channel_2012_all,Moser_Channel_2014_all,Moser_Channel_2015_all,Moser_Channel_2016_all,Moser_Channel_2017_all,Moser_Channel_ws_2018_all)
Moser_Channel_all$sitename <- "Moser_Channel"

export(Moser_Channel_all,"MK_10km/Moser_Channel_combined.csv")



Rawa_Reef_serc <- import("MK_10km/Rawa_Reef_serc.xls")
Rawa_Reef_ws <- import("MK_10km/Rawa_Reef_ws.xls")

## Change date to Year to merge the two dataframes

Rawa_Reef_serc_date <- format(as.Date(Rawa_Reef_serc$DATE_, format = "%Y %m %d"),"%Y")
Rawa_Reef_serc_frame <- data.frame(Rawa_Reef_serc_date)
Rawa_Reef_serc_year <- cbind(Rawa_Reef_serc_frame, Rawa_Reef_serc)
colnames(Rawa_Reef_serc_year)[1]<- "Year"
Rawa_Reef_serc_year$FID <- NULL
Rawa_Reef_serc_year$SURV <- NULL
Rawa_Reef_serc_year$BASIN <- NULL
Rawa_Reef_serc_year$SEGMENT <- NULL
Rawa_Reef_serc_year$ZONE_ <- NULL
Rawa_Reef_serc_year$TIME_ <- NULL
Rawa_Reef_serc_year$DATE_ <- NULL
Rawa_Reef_serc_year$STATION <- NULL
Rawa_Reef_serc_year$SITE <- NULL



Rawa_Reef_ws_date <- format(as.Date(Rawa_Reef_ws$Date_, format = "%Y %m %d"),"%Y")
Rawa_Reef_ws_frame <- data.frame(Rawa_Reef_ws_date)
Rawa_Reef_ws_year <- cbind(Rawa_Reef_ws_frame, Rawa_Reef_ws)
colnames(Rawa_Reef_ws_year)[1]<- "Year"
Rawa_Reef_ws_year$FID <- NULL
Rawa_Reef_ws_year$Station <- NULL
Rawa_Reef_ws_year$Date_ <- NULL
Rawa_Reef_ws_year$GMT <- NULL
Rawa_Reef_ws_year$Field11 <- NULL
Rawa_Reef_ws_year$Field12 <- NULL
Rawa_Reef_ws_year$Field13 <- NULL
Rawa_Reef_ws_year$Field14 <- NULL
Rawa_Reef_ws_year$Field15 <- NULL
Rawa_Reef_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Rawa_Reef_serc_year$Year)
unique(Rawa_Reef_ws_year$Year)



Rawa_Reef_serc_2004 <- subset(Rawa_Reef_serc_year, Year == "2004")
Rawa_Reef_serc_2004_merge <- Rawa_Reef_serc_2004 %>%
  mutate(id = row_number())

Rawa_Reef_ws_2004 <- subset(Rawa_Reef_ws_year, Year == "2004")
Rawa_Reef_ws_2004_merge <- Rawa_Reef_ws_2004 %>%
  mutate(id = row_number())

Rawa_Reef_2004_all <- full_join(Rawa_Reef_serc_2004_merge, Rawa_Reef_ws_2004_merge, by = c("Year","id"))



Rawa_Reef_serc_2009 <- subset(Rawa_Reef_serc_year, Year == "2009")
Rawa_Reef_serc_2009_merge <- Rawa_Reef_serc_2009 %>%
  mutate(id = row_number())

Rawa_Reef_ws_2009 <- subset(Rawa_Reef_ws_year, Year == "2009")
Rawa_Reef_ws_2009_merge <- Rawa_Reef_ws_2009 %>%
  mutate(id = row_number())

Rawa_Reef_2009_all <- full_join(Rawa_Reef_serc_2009_merge, Rawa_Reef_ws_2009_merge, by = c("Year","id"))


Rawa_Reef_serc_2010 <- subset(Rawa_Reef_serc_year, Year == "2010")
Rawa_Reef_serc_2010_merge <- Rawa_Reef_serc_2010 %>%
  mutate(id = row_number())

Rawa_Reef_ws_2010 <- subset(Rawa_Reef_ws_year, Year == "2010")
Rawa_Reef_ws_2010_merge <- Rawa_Reef_ws_2010 %>%
  mutate(id = row_number())

Rawa_Reef_2010_all <- full_join(Rawa_Reef_serc_2010_merge, Rawa_Reef_ws_2010_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

# Rawa_Reef_ws_2018_all <- subset(Rawa_Reef_ws_year, Year == "2018") 
# 
# ## adding extra columns to merge 
# 
# Rawa_Reef_ws_2018_all$LATDEC <- "NA"
# Rawa_Reef_ws_2018_all$LONDEC <- "NA"
# Rawa_Reef_ws_2018_all$DEPTH <- "NA"
# Rawa_Reef_ws_2018_all$NOX_S <- "NA"
# Rawa_Reef_ws_2018_all$NOX_B <- "NA"
# Rawa_Reef_ws_2018_all$NO3_S <- "NA"
# Rawa_Reef_ws_2018_all$NO3_B <- "NA"
# Rawa_Reef_ws_2018_all$NO2_S <- "NA"
# Rawa_Reef_ws_2018_all$NO2_B <- "NA"
# Rawa_Reef_ws_2018_all$NH4_S <- "NA"
# Rawa_Reef_ws_2018_all$NH4_B <- "NA"
# Rawa_Reef_ws_2018_all$TN_S <- "NA"
# Rawa_Reef_ws_2018_all$TN_B <- "NA"
# Rawa_Reef_ws_2018_all$DIN_S <- "NA"
# Rawa_Reef_ws_2018_all$DIN_B <- "NA"
# Rawa_Reef_ws_2018_all$TON_S <- "NA"
# Rawa_Reef_ws_2018_all$TON_B <- "NA"
# Rawa_Reef_ws_2018_all$TP_S <- "NA"
# Rawa_Reef_ws_2018_all$TP_B <- "NA"
# Rawa_Reef_ws_2018_all$SRP_S <- "NA"
# Rawa_Reef_ws_2018_all$SRP_B <- "NA"
# Rawa_Reef_ws_2018_all$APA_S <- "NA"
# Rawa_Reef_ws_2018_all$APA_B <- "NA"
# Rawa_Reef_ws_2018_all$CHLA_S <- "NA"
# Rawa_Reef_ws_2018_all$CHLA_B <- "NA"
# Rawa_Reef_ws_2018_all$TOC_S <- "NA"
# Rawa_Reef_ws_2018_all$TOC_B <- "NA"
# Rawa_Reef_ws_2018_all$SiO2_S <- "NA"
# Rawa_Reef_ws_2018_all$SiO2_B <- "NA"
# Rawa_Reef_ws_2018_all$TURB_S <- "NA"
# Rawa_Reef_ws_2018_all$TURB_B <- "NA"
# Rawa_Reef_ws_2018_all$SAL_S <- "NA"
# Rawa_Reef_ws_2018_all$SAL_B <- "NA"
# Rawa_Reef_ws_2018_all$TEMP_S <- "NA"
# Rawa_Reef_ws_2018_all$TEMP_B <- "NA"
# Rawa_Reef_ws_2018_all$DO_S <- "NA"
# Rawa_Reef_ws_2018_all$DO_B <- "NA"
# Rawa_Reef_ws_2018_all$Kd <- "NA"
# Rawa_Reef_ws_2018_all$pH <- "NA"
# Rawa_Reef_ws_2018_all$TN_TP <- "NA"
# Rawa_Reef_ws_2018_all$N_P <- "NA"
# Rawa_Reef_ws_2018_all$DIN_TP <- "NA"
# Rawa_Reef_ws_2018_all$Si_DIN <- "NA"
# Rawa_Reef_ws_2018_all$F_SAT_S <- "NA"
# Rawa_Reef_ws_2018_all$F_SAT_B <- "NA"
# Rawa_Reef_ws_2018_all$F_Io <- "NA"
# Rawa_Reef_ws_2018_all$DSIGT <- "NA"
# Rawa_Reef_ws_2018_all$id <- "NA"
# 
# 





## rest of the serc data
Rawa_Reef_serc_1995 <- subset(Rawa_Reef_serc_year, Year == "1995")
Rawa_Reef_serc_1996 <- subset(Rawa_Reef_serc_year, Year == "1996")
Rawa_Reef_serc_1997 <- subset(Rawa_Reef_serc_year, Year == "1997")
Rawa_Reef_serc_1998 <- subset(Rawa_Reef_serc_year, Year == "1998")
Rawa_Reef_serc_1999 <- subset(Rawa_Reef_serc_year, Year == "1999")
Rawa_Reef_serc_2000 <- subset(Rawa_Reef_serc_year, Year == "2000")
Rawa_Reef_serc_2001 <- subset(Rawa_Reef_serc_year, Year == "2001")
Rawa_Reef_serc_2002 <- subset(Rawa_Reef_serc_year, Year == "2002")
Rawa_Reef_serc_2003 <- subset(Rawa_Reef_serc_year, Year == "2003")
Rawa_Reef_serc_2005 <- subset(Rawa_Reef_serc_year, Year == "2005")
Rawa_Reef_serc_2006 <- subset(Rawa_Reef_serc_year, Year == "2006")
Rawa_Reef_serc_2007 <- subset(Rawa_Reef_serc_year, Year == "2007")
Rawa_Reef_serc_2008 <- subset(Rawa_Reef_serc_year, Year == "2008")
Rawa_Reef_serc_2011 <- subset(Rawa_Reef_serc_year, Year == "2011")
Rawa_Reef_serc_2012 <- subset(Rawa_Reef_serc_year, Year == "2012")
Rawa_Reef_serc_2013 <- subset(Rawa_Reef_serc_year, Year == "2013")
Rawa_Reef_serc_2014 <- subset(Rawa_Reef_serc_year, Year == "2014")
Rawa_Reef_serc_2015 <- subset(Rawa_Reef_serc_year, Year == "2015")
Rawa_Reef_serc_2016 <- subset(Rawa_Reef_serc_year, Year == "2016")
Rawa_Reef_serc_2017 <- subset(Rawa_Reef_serc_year, Year == "2017")




Rawa_Reef_serc_extra <- rbind(Rawa_Reef_serc_1995,Rawa_Reef_serc_1996,Rawa_Reef_serc_1997,Rawa_Reef_serc_1998,Rawa_Reef_serc_1999,Rawa_Reef_serc_2000,Rawa_Reef_serc_2001,Rawa_Reef_serc_2002,Rawa_Reef_serc_2003,Rawa_Reef_serc_2005,Rawa_Reef_serc_2006,Rawa_Reef_serc_2007,Rawa_Reef_serc_2008,Rawa_Reef_serc_2011,Rawa_Reef_serc_2012,Rawa_Reef_serc_2013,Rawa_Reef_serc_2014,Rawa_Reef_serc_2015,Rawa_Reef_serc_2016,Rawa_Reef_serc_2017)




Rawa_Reef_serc_extra$Longitude <- "NA"
Rawa_Reef_serc_extra$Latitude <- "NA"
Rawa_Reef_serc_extra$Depth <- "NA"
Rawa_Reef_serc_extra$SST <- "NA"
Rawa_Reef_serc_extra$SSS <- "NA"
Rawa_Reef_serc_extra$Chl_a <- "NA"
Rawa_Reef_serc_extra$Phaeophyti <- "NA"
Rawa_Reef_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

#Rawa_Reef_ws_2018_all <- setcolorder(Rawa_Reef_ws_2018_all, names(Rawa_Reef_serc_extra))

## Merge all years together 

Rawa_Reef_all <- rbind(Rawa_Reef_serc_extra,Rawa_Reef_2004_all,Rawa_Reef_2009_all,Rawa_Reef_2010_all)
Rawa_Reef_all$sitename <- "Rawa_Reef"

export(Rawa_Reef_all,"MK_10km/Rawa_Reef_combined.csv")




Sombrero_Deep_serc <- import("MK_10km/Sombrero_Deep_serc.xls")
Sombrero_Deep_ws <- import("MK_10km/Sombrero_Deep_ws.xls")

## Change date to Year to merge the two dataframes

Sombrero_Deep_serc_date <- format(as.Date(Sombrero_Deep_serc$DATE_, format = "%Y %m %d"),"%Y")
Sombrero_Deep_serc_frame <- data.frame(Sombrero_Deep_serc_date)
Sombrero_Deep_serc_year <- cbind(Sombrero_Deep_serc_frame, Sombrero_Deep_serc)
colnames(Sombrero_Deep_serc_year)[1]<- "Year"
Sombrero_Deep_serc_year$FID <- NULL
Sombrero_Deep_serc_year$SURV <- NULL
Sombrero_Deep_serc_year$BASIN <- NULL
Sombrero_Deep_serc_year$SEGMENT <- NULL
Sombrero_Deep_serc_year$ZONE_ <- NULL
Sombrero_Deep_serc_year$TIME_ <- NULL
Sombrero_Deep_serc_year$DATE_ <- NULL
Sombrero_Deep_serc_year$STATION <- NULL
Sombrero_Deep_serc_year$SITE <- NULL



Sombrero_Deep_ws_date <- format(as.Date(Sombrero_Deep_ws$Date_, format = "%Y %m %d"),"%Y")
Sombrero_Deep_ws_frame <- data.frame(Sombrero_Deep_ws_date)
Sombrero_Deep_ws_year <- cbind(Sombrero_Deep_ws_frame, Sombrero_Deep_ws)
colnames(Sombrero_Deep_ws_year)[1]<- "Year"
Sombrero_Deep_ws_year$FID <- NULL
Sombrero_Deep_ws_year$Station <- NULL
Sombrero_Deep_ws_year$Date_ <- NULL
Sombrero_Deep_ws_year$GMT <- NULL
Sombrero_Deep_ws_year$Field11 <- NULL
Sombrero_Deep_ws_year$Field12 <- NULL
Sombrero_Deep_ws_year$Field13 <- NULL
Sombrero_Deep_ws_year$Field14 <- NULL
Sombrero_Deep_ws_year$Field15 <- NULL
Sombrero_Deep_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Sombrero_Deep_serc_year$Year)
unique(Sombrero_Deep_ws_year$Year)



Sombrero_Deep_serc_1998 <- subset(Sombrero_Deep_serc_year, Year == "1998")
Sombrero_Deep_serc_1998_merge <- Sombrero_Deep_serc_1998 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_1998 <- subset(Sombrero_Deep_ws_year, Year == "1998")
Sombrero_Deep_ws_1998_merge <- Sombrero_Deep_ws_1998 %>%
  mutate(id = row_number())

Sombrero_Deep_1998_all <- full_join(Sombrero_Deep_serc_1998_merge, Sombrero_Deep_ws_1998_merge, by = c("Year","id"))


Sombrero_Deep_serc_1999 <- subset(Sombrero_Deep_serc_year, Year == "1999")
Sombrero_Deep_serc_1999_merge <- Sombrero_Deep_serc_1999 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_1999 <- subset(Sombrero_Deep_ws_year, Year == "1999")
Sombrero_Deep_ws_1999_merge <- Sombrero_Deep_ws_1999 %>%
  mutate(id = row_number())

Sombrero_Deep_1999_all <- full_join(Sombrero_Deep_serc_1999_merge, Sombrero_Deep_ws_1999_merge, by = c("Year","id"))


Sombrero_Deep_serc_2000 <- subset(Sombrero_Deep_serc_year, Year == "2000")
Sombrero_Deep_serc_2000_merge <- Sombrero_Deep_serc_2000 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2000 <- subset(Sombrero_Deep_ws_year, Year == "2000")
Sombrero_Deep_ws_2000_merge <- Sombrero_Deep_ws_2000 %>%
  mutate(id = row_number())

Sombrero_Deep_2000_all <- full_join(Sombrero_Deep_serc_2000_merge, Sombrero_Deep_ws_2000_merge, by = c("Year","id"))


Sombrero_Deep_serc_2001 <- subset(Sombrero_Deep_serc_year, Year == "2001")
Sombrero_Deep_serc_2001_merge <- Sombrero_Deep_serc_2001 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2001 <- subset(Sombrero_Deep_ws_year, Year == "2001")
Sombrero_Deep_ws_2001_merge <- Sombrero_Deep_ws_2001 %>%
  mutate(id = row_number())

Sombrero_Deep_2001_all <- full_join(Sombrero_Deep_serc_2001_merge, Sombrero_Deep_ws_2001_merge, by = c("Year","id"))


Sombrero_Deep_serc_2002 <- subset(Sombrero_Deep_serc_year, Year == "2002")
Sombrero_Deep_serc_2002_merge <- Sombrero_Deep_serc_2002 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2002 <- subset(Sombrero_Deep_ws_year, Year == "2002")
Sombrero_Deep_ws_2002_merge <- Sombrero_Deep_ws_2002 %>%
  mutate(id = row_number())

Sombrero_Deep_2002_all <- full_join(Sombrero_Deep_serc_2002_merge, Sombrero_Deep_ws_2002_merge, by = c("Year","id"))


Sombrero_Deep_serc_2003 <- subset(Sombrero_Deep_serc_year, Year == "2003")
Sombrero_Deep_serc_2003_merge <- Sombrero_Deep_serc_2003 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2003 <- subset(Sombrero_Deep_ws_year, Year == "2003")
Sombrero_Deep_ws_2003_merge <- Sombrero_Deep_ws_2003 %>%
  mutate(id = row_number())

Sombrero_Deep_2003_all <- full_join(Sombrero_Deep_serc_2003_merge, Sombrero_Deep_ws_2003_merge, by = c("Year","id"))


Sombrero_Deep_serc_2004 <- subset(Sombrero_Deep_serc_year, Year == "2004")
Sombrero_Deep_serc_2004_merge <- Sombrero_Deep_serc_2004 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2004 <- subset(Sombrero_Deep_ws_year, Year == "2004")
Sombrero_Deep_ws_2004_merge <- Sombrero_Deep_ws_2004 %>%
  mutate(id = row_number())

Sombrero_Deep_2004_all <- full_join(Sombrero_Deep_serc_2004_merge, Sombrero_Deep_ws_2004_merge, by = c("Year","id"))


Sombrero_Deep_serc_2005 <- subset(Sombrero_Deep_serc_year, Year == "2005")
Sombrero_Deep_serc_2005_merge <- Sombrero_Deep_serc_2005 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2005 <- subset(Sombrero_Deep_ws_year, Year == "2005")
Sombrero_Deep_ws_2005_merge <- Sombrero_Deep_ws_2005 %>%
  mutate(id = row_number())

Sombrero_Deep_2005_all <- full_join(Sombrero_Deep_serc_2005_merge, Sombrero_Deep_ws_2005_merge, by = c("Year","id"))


Sombrero_Deep_serc_2006 <- subset(Sombrero_Deep_serc_year, Year == "2006")
Sombrero_Deep_serc_2006_merge <- Sombrero_Deep_serc_2006 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2006 <- subset(Sombrero_Deep_ws_year, Year == "2006")
Sombrero_Deep_ws_2006_merge <- Sombrero_Deep_ws_2006 %>%
  mutate(id = row_number())

Sombrero_Deep_2006_all <- full_join(Sombrero_Deep_serc_2006_merge, Sombrero_Deep_ws_2006_merge, by = c("Year","id"))


Sombrero_Deep_serc_2007 <- subset(Sombrero_Deep_serc_year, Year == "2007")
Sombrero_Deep_serc_2007_merge <- Sombrero_Deep_serc_2007 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2007 <- subset(Sombrero_Deep_ws_year, Year == "2007")
Sombrero_Deep_ws_2007_merge <- Sombrero_Deep_ws_2007 %>%
  mutate(id = row_number())

Sombrero_Deep_2007_all <- full_join(Sombrero_Deep_serc_2007_merge, Sombrero_Deep_ws_2007_merge, by = c("Year","id"))


Sombrero_Deep_serc_2008 <- subset(Sombrero_Deep_serc_year, Year == "2008")
Sombrero_Deep_serc_2008_merge <- Sombrero_Deep_serc_2008 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2008 <- subset(Sombrero_Deep_ws_year, Year == "2008")
Sombrero_Deep_ws_2008_merge <- Sombrero_Deep_ws_2008 %>%
  mutate(id = row_number())

Sombrero_Deep_2008_all <- full_join(Sombrero_Deep_serc_2008_merge, Sombrero_Deep_ws_2008_merge, by = c("Year","id"))


Sombrero_Deep_serc_2009 <- subset(Sombrero_Deep_serc_year, Year == "2009")
Sombrero_Deep_serc_2009_merge <- Sombrero_Deep_serc_2009 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2009 <- subset(Sombrero_Deep_ws_year, Year == "2009")
Sombrero_Deep_ws_2009_merge <- Sombrero_Deep_ws_2009 %>%
  mutate(id = row_number())

Sombrero_Deep_2009_all <- full_join(Sombrero_Deep_serc_2009_merge, Sombrero_Deep_ws_2009_merge, by = c("Year","id"))


Sombrero_Deep_serc_2010 <- subset(Sombrero_Deep_serc_year, Year == "2010")
Sombrero_Deep_serc_2010_merge <- Sombrero_Deep_serc_2010 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2010 <- subset(Sombrero_Deep_ws_year, Year == "2010")
Sombrero_Deep_ws_2010_merge <- Sombrero_Deep_ws_2010 %>%
  mutate(id = row_number())

Sombrero_Deep_2010_all <- full_join(Sombrero_Deep_serc_2010_merge, Sombrero_Deep_ws_2010_merge, by = c("Year","id"))


Sombrero_Deep_serc_2011 <- subset(Sombrero_Deep_serc_year, Year == "2011")
Sombrero_Deep_serc_2011_merge <- Sombrero_Deep_serc_2011 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2011 <- subset(Sombrero_Deep_ws_year, Year == "2011")
Sombrero_Deep_ws_2011_merge <- Sombrero_Deep_ws_2011 %>%
  mutate(id = row_number())

Sombrero_Deep_2011_all <- full_join(Sombrero_Deep_serc_2011_merge, Sombrero_Deep_ws_2011_merge, by = c("Year","id"))


Sombrero_Deep_serc_2012 <- subset(Sombrero_Deep_serc_year, Year == "2012")
Sombrero_Deep_serc_2012_merge <- Sombrero_Deep_serc_2012 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2012 <- subset(Sombrero_Deep_ws_year, Year == "2012")
Sombrero_Deep_ws_2012_merge <- Sombrero_Deep_ws_2012 %>%
  mutate(id = row_number())

Sombrero_Deep_2012_all <- full_join(Sombrero_Deep_serc_2012_merge, Sombrero_Deep_ws_2012_merge, by = c("Year","id"))


Sombrero_Deep_serc_2014 <- subset(Sombrero_Deep_serc_year, Year == "2014")
Sombrero_Deep_serc_2014_merge <- Sombrero_Deep_serc_2014 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2014 <- subset(Sombrero_Deep_ws_year, Year == "2014")
Sombrero_Deep_ws_2014_merge <- Sombrero_Deep_ws_2014 %>%
  mutate(id = row_number())

Sombrero_Deep_2014_all <- full_join(Sombrero_Deep_serc_2014_merge, Sombrero_Deep_ws_2014_merge, by = c("Year","id"))


Sombrero_Deep_serc_2015 <- subset(Sombrero_Deep_serc_year, Year == "2015")
Sombrero_Deep_serc_2015_merge <- Sombrero_Deep_serc_2015 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2015 <- subset(Sombrero_Deep_ws_year, Year == "2015")
Sombrero_Deep_ws_2015_merge <- Sombrero_Deep_ws_2015 %>%
  mutate(id = row_number())

Sombrero_Deep_2015_all <- full_join(Sombrero_Deep_serc_2015_merge, Sombrero_Deep_ws_2015_merge, by = c("Year","id"))


Sombrero_Deep_serc_2016 <- subset(Sombrero_Deep_serc_year, Year == "2016")
Sombrero_Deep_serc_2016_merge <- Sombrero_Deep_serc_2016 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2016 <- subset(Sombrero_Deep_ws_year, Year == "2016")
Sombrero_Deep_ws_2016_merge <- Sombrero_Deep_ws_2016 %>%
  mutate(id = row_number())

Sombrero_Deep_2016_all <- full_join(Sombrero_Deep_serc_2016_merge, Sombrero_Deep_ws_2016_merge, by = c("Year","id"))



Sombrero_Deep_serc_2017 <- subset(Sombrero_Deep_serc_year, Year == "2017")
Sombrero_Deep_serc_2017_merge <- Sombrero_Deep_serc_2017 %>%
  mutate(id = row_number())

Sombrero_Deep_ws_2017 <- subset(Sombrero_Deep_ws_year, Year == "2017")
Sombrero_Deep_ws_2017_merge <- Sombrero_Deep_ws_2017 %>%
  mutate(id = row_number())

Sombrero_Deep_2017_all <- full_join(Sombrero_Deep_serc_2017_merge, Sombrero_Deep_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Sombrero_Deep_ws_2018_all <- subset(Sombrero_Deep_ws_year, Year == "2018") 

## adding extra columns to merge 

Sombrero_Deep_ws_2018_all$LATDEC <- "NA"
Sombrero_Deep_ws_2018_all$LONDEC <- "NA"
Sombrero_Deep_ws_2018_all$DEPTH <- "NA"
Sombrero_Deep_ws_2018_all$NOX_S <- "NA"
Sombrero_Deep_ws_2018_all$NOX_B <- "NA"
Sombrero_Deep_ws_2018_all$NO3_S <- "NA"
Sombrero_Deep_ws_2018_all$NO3_B <- "NA"
Sombrero_Deep_ws_2018_all$NO2_S <- "NA"
Sombrero_Deep_ws_2018_all$NO2_B <- "NA"
Sombrero_Deep_ws_2018_all$NH4_S <- "NA"
Sombrero_Deep_ws_2018_all$NH4_B <- "NA"
Sombrero_Deep_ws_2018_all$TN_S <- "NA"
Sombrero_Deep_ws_2018_all$TN_B <- "NA"
Sombrero_Deep_ws_2018_all$DIN_S <- "NA"
Sombrero_Deep_ws_2018_all$DIN_B <- "NA"
Sombrero_Deep_ws_2018_all$TON_S <- "NA"
Sombrero_Deep_ws_2018_all$TON_B <- "NA"
Sombrero_Deep_ws_2018_all$TP_S <- "NA"
Sombrero_Deep_ws_2018_all$TP_B <- "NA"
Sombrero_Deep_ws_2018_all$SRP_S <- "NA"
Sombrero_Deep_ws_2018_all$SRP_B <- "NA"
Sombrero_Deep_ws_2018_all$APA_S <- "NA"
Sombrero_Deep_ws_2018_all$APA_B <- "NA"
Sombrero_Deep_ws_2018_all$CHLA_S <- "NA"
Sombrero_Deep_ws_2018_all$CHLA_B <- "NA"
Sombrero_Deep_ws_2018_all$TOC_S <- "NA"
Sombrero_Deep_ws_2018_all$TOC_B <- "NA"
Sombrero_Deep_ws_2018_all$SiO2_S <- "NA"
Sombrero_Deep_ws_2018_all$SiO2_B <- "NA"
Sombrero_Deep_ws_2018_all$TURB_S <- "NA"
Sombrero_Deep_ws_2018_all$TURB_B <- "NA"
Sombrero_Deep_ws_2018_all$SAL_S <- "NA"
Sombrero_Deep_ws_2018_all$SAL_B <- "NA"
Sombrero_Deep_ws_2018_all$TEMP_S <- "NA"
Sombrero_Deep_ws_2018_all$TEMP_B <- "NA"
Sombrero_Deep_ws_2018_all$DO_S <- "NA"
Sombrero_Deep_ws_2018_all$DO_B <- "NA"
Sombrero_Deep_ws_2018_all$Kd <- "NA"
Sombrero_Deep_ws_2018_all$pH <- "NA"
Sombrero_Deep_ws_2018_all$TN_TP <- "NA"
Sombrero_Deep_ws_2018_all$N_P <- "NA"
Sombrero_Deep_ws_2018_all$DIN_TP <- "NA"
Sombrero_Deep_ws_2018_all$Si_DIN <- "NA"
Sombrero_Deep_ws_2018_all$F_SAT_S <- "NA"
Sombrero_Deep_ws_2018_all$F_SAT_B <- "NA"
Sombrero_Deep_ws_2018_all$F_Io <- "NA"
Sombrero_Deep_ws_2018_all$DSIGT <- "NA"
Sombrero_Deep_ws_2018_all$id <- "NA"







## rest of the serc data
Sombrero_Deep_serc_1995 <- subset(Sombrero_Deep_serc_year, Year == "1995")
Sombrero_Deep_serc_1996 <- subset(Sombrero_Deep_serc_year, Year == "1996")
Sombrero_Deep_serc_1997 <- subset(Sombrero_Deep_serc_year, Year == "1997")
# Sombrero_Deep_serc_1998 <- subset(Sombrero_Deep_serc_year, Year == "1998")
# Sombrero_Deep_serc_1999 <- subset(Sombrero_Deep_serc_year, Year == "1999")
# Sombrero_Deep_serc_2000 <- subset(Sombrero_Deep_serc_year, Year == "2000")
# Sombrero_Deep_serc_2001 <- subset(Sombrero_Deep_serc_year, Year == "2001")
Sombrero_Deep_serc_2013 <- subset(Sombrero_Deep_serc_year, Year == "2013")



Sombrero_Deep_serc_extra <- rbind(Sombrero_Deep_serc_1995,Sombrero_Deep_serc_1996,Sombrero_Deep_serc_1997,Sombrero_Deep_serc_2013)




Sombrero_Deep_serc_extra$Longitude <- "NA"
Sombrero_Deep_serc_extra$Latitude <- "NA"
Sombrero_Deep_serc_extra$Depth <- "NA"
Sombrero_Deep_serc_extra$SST <- "NA"
Sombrero_Deep_serc_extra$SSS <- "NA"
Sombrero_Deep_serc_extra$Chl_a <- "NA"
Sombrero_Deep_serc_extra$Phaeophyti <- "NA"
Sombrero_Deep_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Sombrero_Deep_ws_2018_all <- setcolorder(Sombrero_Deep_ws_2018_all, names(Sombrero_Deep_serc_extra))

## Merge all years together 

Sombrero_Deep_all <- rbind(Sombrero_Deep_serc_extra,Sombrero_Deep_1998_all,Sombrero_Deep_1999_all,Sombrero_Deep_2000_all,Sombrero_Deep_2001_all,Sombrero_Deep_2002_all,Sombrero_Deep_2003_all,Sombrero_Deep_2004_all, Sombrero_Deep_2005_all,Sombrero_Deep_2006_all,Sombrero_Deep_2007_all,Sombrero_Deep_2008_all,Sombrero_Deep_2009_all,Sombrero_Deep_2010_all,Sombrero_Deep_2011_all,Sombrero_Deep_2012_all,Sombrero_Deep_2014_all,Sombrero_Deep_2015_all,Sombrero_Deep_2016_all,Sombrero_Deep_2017_all,Sombrero_Deep_ws_2018_all)
Sombrero_Deep_all$sitename <- "Sombrero_Deep"

export(Sombrero_Deep_all,"MK_10km/Sombrero_Deep_combined.csv")





Sombrero_Shallow_serc <- import("MK_10km/Sombrero_Shallow_serc.xls")
Sombrero_Shallow_ws <- import("MK_10km/Sombrero_Shallow_ws.xls")

## Change date to Year to merge the two dataframes

Sombrero_Shallow_serc_date <- format(as.Date(Sombrero_Shallow_serc$DATE_, format = "%Y %m %d"),"%Y")
Sombrero_Shallow_serc_frame <- data.frame(Sombrero_Shallow_serc_date)
Sombrero_Shallow_serc_year <- cbind(Sombrero_Shallow_serc_frame, Sombrero_Shallow_serc)
colnames(Sombrero_Shallow_serc_year)[1]<- "Year"
Sombrero_Shallow_serc_year$FID <- NULL
Sombrero_Shallow_serc_year$SURV <- NULL
Sombrero_Shallow_serc_year$BASIN <- NULL
Sombrero_Shallow_serc_year$SEGMENT <- NULL
Sombrero_Shallow_serc_year$ZONE_ <- NULL
Sombrero_Shallow_serc_year$TIME_ <- NULL
Sombrero_Shallow_serc_year$DATE_ <- NULL
Sombrero_Shallow_serc_year$STATION <- NULL
Sombrero_Shallow_serc_year$SITE <- NULL



Sombrero_Shallow_ws_date <- format(as.Date(Sombrero_Shallow_ws$Date_, format = "%Y %m %d"),"%Y")
Sombrero_Shallow_ws_frame <- data.frame(Sombrero_Shallow_ws_date)
Sombrero_Shallow_ws_year <- cbind(Sombrero_Shallow_ws_frame, Sombrero_Shallow_ws)
colnames(Sombrero_Shallow_ws_year)[1]<- "Year"
Sombrero_Shallow_ws_year$FID <- NULL
Sombrero_Shallow_ws_year$Station <- NULL
Sombrero_Shallow_ws_year$Date_ <- NULL
Sombrero_Shallow_ws_year$GMT <- NULL
Sombrero_Shallow_ws_year$Field11 <- NULL
Sombrero_Shallow_ws_year$Field12 <- NULL
Sombrero_Shallow_ws_year$Field13 <- NULL
Sombrero_Shallow_ws_year$Field14 <- NULL
Sombrero_Shallow_ws_year$Field15 <- NULL
Sombrero_Shallow_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Sombrero_Shallow_serc_year$Year)
unique(Sombrero_Shallow_ws_year$Year)



Sombrero_Shallow_serc_1998 <- subset(Sombrero_Shallow_serc_year, Year == "1998")
Sombrero_Shallow_serc_1998_merge <- Sombrero_Shallow_serc_1998 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_1998 <- subset(Sombrero_Shallow_ws_year, Year == "1998")
Sombrero_Shallow_ws_1998_merge <- Sombrero_Shallow_ws_1998 %>%
  mutate(id = row_number())

Sombrero_Shallow_1998_all <- full_join(Sombrero_Shallow_serc_1998_merge, Sombrero_Shallow_ws_1998_merge, by = c("Year","id"))


Sombrero_Shallow_serc_1999 <- subset(Sombrero_Shallow_serc_year, Year == "1999")
Sombrero_Shallow_serc_1999_merge <- Sombrero_Shallow_serc_1999 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_1999 <- subset(Sombrero_Shallow_ws_year, Year == "1999")
Sombrero_Shallow_ws_1999_merge <- Sombrero_Shallow_ws_1999 %>%
  mutate(id = row_number())

Sombrero_Shallow_1999_all <- full_join(Sombrero_Shallow_serc_1999_merge, Sombrero_Shallow_ws_1999_merge, by = c("Year","id"))


Sombrero_Shallow_serc_2000 <- subset(Sombrero_Shallow_serc_year, Year == "2000")
Sombrero_Shallow_serc_2000_merge <- Sombrero_Shallow_serc_2000 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2000 <- subset(Sombrero_Shallow_ws_year, Year == "2000")
Sombrero_Shallow_ws_2000_merge <- Sombrero_Shallow_ws_2000 %>%
  mutate(id = row_number())

Sombrero_Shallow_2000_all <- full_join(Sombrero_Shallow_serc_2000_merge, Sombrero_Shallow_ws_2000_merge, by = c("Year","id"))


Sombrero_Shallow_serc_2001 <- subset(Sombrero_Shallow_serc_year, Year == "2001")
Sombrero_Shallow_serc_2001_merge <- Sombrero_Shallow_serc_2001 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2001 <- subset(Sombrero_Shallow_ws_year, Year == "2001")
Sombrero_Shallow_ws_2001_merge <- Sombrero_Shallow_ws_2001 %>%
  mutate(id = row_number())

Sombrero_Shallow_2001_all <- full_join(Sombrero_Shallow_serc_2001_merge, Sombrero_Shallow_ws_2001_merge, by = c("Year","id"))


Sombrero_Shallow_serc_2002 <- subset(Sombrero_Shallow_serc_year, Year == "2002")
Sombrero_Shallow_serc_2002_merge <- Sombrero_Shallow_serc_2002 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2002 <- subset(Sombrero_Shallow_ws_year, Year == "2002")
Sombrero_Shallow_ws_2002_merge <- Sombrero_Shallow_ws_2002 %>%
  mutate(id = row_number())

Sombrero_Shallow_2002_all <- full_join(Sombrero_Shallow_serc_2002_merge, Sombrero_Shallow_ws_2002_merge, by = c("Year","id"))


Sombrero_Shallow_serc_2003 <- subset(Sombrero_Shallow_serc_year, Year == "2003")
Sombrero_Shallow_serc_2003_merge <- Sombrero_Shallow_serc_2003 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2003 <- subset(Sombrero_Shallow_ws_year, Year == "2003")
Sombrero_Shallow_ws_2003_merge <- Sombrero_Shallow_ws_2003 %>%
  mutate(id = row_number())

Sombrero_Shallow_2003_all <- full_join(Sombrero_Shallow_serc_2003_merge, Sombrero_Shallow_ws_2003_merge, by = c("Year","id"))


Sombrero_Shallow_serc_2004 <- subset(Sombrero_Shallow_serc_year, Year == "2004")
Sombrero_Shallow_serc_2004_merge <- Sombrero_Shallow_serc_2004 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2004 <- subset(Sombrero_Shallow_ws_year, Year == "2004")
Sombrero_Shallow_ws_2004_merge <- Sombrero_Shallow_ws_2004 %>%
  mutate(id = row_number())

Sombrero_Shallow_2004_all <- full_join(Sombrero_Shallow_serc_2004_merge, Sombrero_Shallow_ws_2004_merge, by = c("Year","id"))


Sombrero_Shallow_serc_2005 <- subset(Sombrero_Shallow_serc_year, Year == "2005")
Sombrero_Shallow_serc_2005_merge <- Sombrero_Shallow_serc_2005 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2005 <- subset(Sombrero_Shallow_ws_year, Year == "2005")
Sombrero_Shallow_ws_2005_merge <- Sombrero_Shallow_ws_2005 %>%
  mutate(id = row_number())

Sombrero_Shallow_2005_all <- full_join(Sombrero_Shallow_serc_2005_merge, Sombrero_Shallow_ws_2005_merge, by = c("Year","id"))


Sombrero_Shallow_serc_2006 <- subset(Sombrero_Shallow_serc_year, Year == "2006")
Sombrero_Shallow_serc_2006_merge <- Sombrero_Shallow_serc_2006 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2006 <- subset(Sombrero_Shallow_ws_year, Year == "2006")
Sombrero_Shallow_ws_2006_merge <- Sombrero_Shallow_ws_2006 %>%
  mutate(id = row_number())

Sombrero_Shallow_2006_all <- full_join(Sombrero_Shallow_serc_2006_merge, Sombrero_Shallow_ws_2006_merge, by = c("Year","id"))


Sombrero_Shallow_serc_2007 <- subset(Sombrero_Shallow_serc_year, Year == "2007")
Sombrero_Shallow_serc_2007_merge <- Sombrero_Shallow_serc_2007 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2007 <- subset(Sombrero_Shallow_ws_year, Year == "2007")
Sombrero_Shallow_ws_2007_merge <- Sombrero_Shallow_ws_2007 %>%
  mutate(id = row_number())

Sombrero_Shallow_2007_all <- full_join(Sombrero_Shallow_serc_2007_merge, Sombrero_Shallow_ws_2007_merge, by = c("Year","id"))


Sombrero_Shallow_serc_2008 <- subset(Sombrero_Shallow_serc_year, Year == "2008")
Sombrero_Shallow_serc_2008_merge <- Sombrero_Shallow_serc_2008 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2008 <- subset(Sombrero_Shallow_ws_year, Year == "2008")
Sombrero_Shallow_ws_2008_merge <- Sombrero_Shallow_ws_2008 %>%
  mutate(id = row_number())

Sombrero_Shallow_2008_all <- full_join(Sombrero_Shallow_serc_2008_merge, Sombrero_Shallow_ws_2008_merge, by = c("Year","id"))


Sombrero_Shallow_serc_2009 <- subset(Sombrero_Shallow_serc_year, Year == "2009")
Sombrero_Shallow_serc_2009_merge <- Sombrero_Shallow_serc_2009 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2009 <- subset(Sombrero_Shallow_ws_year, Year == "2009")
Sombrero_Shallow_ws_2009_merge <- Sombrero_Shallow_ws_2009 %>%
  mutate(id = row_number())

Sombrero_Shallow_2009_all <- full_join(Sombrero_Shallow_serc_2009_merge, Sombrero_Shallow_ws_2009_merge, by = c("Year","id"))


Sombrero_Shallow_serc_2010 <- subset(Sombrero_Shallow_serc_year, Year == "2010")
Sombrero_Shallow_serc_2010_merge <- Sombrero_Shallow_serc_2010 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2010 <- subset(Sombrero_Shallow_ws_year, Year == "2010")
Sombrero_Shallow_ws_2010_merge <- Sombrero_Shallow_ws_2010 %>%
  mutate(id = row_number())

Sombrero_Shallow_2010_all <- full_join(Sombrero_Shallow_serc_2010_merge, Sombrero_Shallow_ws_2010_merge, by = c("Year","id"))


Sombrero_Shallow_serc_2011 <- subset(Sombrero_Shallow_serc_year, Year == "2011")
Sombrero_Shallow_serc_2011_merge <- Sombrero_Shallow_serc_2011 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2011 <- subset(Sombrero_Shallow_ws_year, Year == "2011")
Sombrero_Shallow_ws_2011_merge <- Sombrero_Shallow_ws_2011 %>%
  mutate(id = row_number())

Sombrero_Shallow_2011_all <- full_join(Sombrero_Shallow_serc_2011_merge, Sombrero_Shallow_ws_2011_merge, by = c("Year","id"))


Sombrero_Shallow_serc_2012 <- subset(Sombrero_Shallow_serc_year, Year == "2012")
Sombrero_Shallow_serc_2012_merge <- Sombrero_Shallow_serc_2012 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2012 <- subset(Sombrero_Shallow_ws_year, Year == "2012")
Sombrero_Shallow_ws_2012_merge <- Sombrero_Shallow_ws_2012 %>%
  mutate(id = row_number())

Sombrero_Shallow_2012_all <- full_join(Sombrero_Shallow_serc_2012_merge, Sombrero_Shallow_ws_2012_merge, by = c("Year","id"))


Sombrero_Shallow_serc_2014 <- subset(Sombrero_Shallow_serc_year, Year == "2014")
Sombrero_Shallow_serc_2014_merge <- Sombrero_Shallow_serc_2014 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2014 <- subset(Sombrero_Shallow_ws_year, Year == "2014")
Sombrero_Shallow_ws_2014_merge <- Sombrero_Shallow_ws_2014 %>%
  mutate(id = row_number())

Sombrero_Shallow_2014_all <- full_join(Sombrero_Shallow_serc_2014_merge, Sombrero_Shallow_ws_2014_merge, by = c("Year","id"))


Sombrero_Shallow_serc_2015 <- subset(Sombrero_Shallow_serc_year, Year == "2015")
Sombrero_Shallow_serc_2015_merge <- Sombrero_Shallow_serc_2015 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2015 <- subset(Sombrero_Shallow_ws_year, Year == "2015")
Sombrero_Shallow_ws_2015_merge <- Sombrero_Shallow_ws_2015 %>%
  mutate(id = row_number())

Sombrero_Shallow_2015_all <- full_join(Sombrero_Shallow_serc_2015_merge, Sombrero_Shallow_ws_2015_merge, by = c("Year","id"))


Sombrero_Shallow_serc_2016 <- subset(Sombrero_Shallow_serc_year, Year == "2016")
Sombrero_Shallow_serc_2016_merge <- Sombrero_Shallow_serc_2016 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2016 <- subset(Sombrero_Shallow_ws_year, Year == "2016")
Sombrero_Shallow_ws_2016_merge <- Sombrero_Shallow_ws_2016 %>%
  mutate(id = row_number())

Sombrero_Shallow_2016_all <- full_join(Sombrero_Shallow_serc_2016_merge, Sombrero_Shallow_ws_2016_merge, by = c("Year","id"))



Sombrero_Shallow_serc_2017 <- subset(Sombrero_Shallow_serc_year, Year == "2017")
Sombrero_Shallow_serc_2017_merge <- Sombrero_Shallow_serc_2017 %>%
  mutate(id = row_number())

Sombrero_Shallow_ws_2017 <- subset(Sombrero_Shallow_ws_year, Year == "2017")
Sombrero_Shallow_ws_2017_merge <- Sombrero_Shallow_ws_2017 %>%
  mutate(id = row_number())

Sombrero_Shallow_2017_all <- full_join(Sombrero_Shallow_serc_2017_merge, Sombrero_Shallow_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Sombrero_Shallow_ws_2018_all <- subset(Sombrero_Shallow_ws_year, Year == "2018") 

## adding extra columns to merge 

Sombrero_Shallow_ws_2018_all$LATDEC <- "NA"
Sombrero_Shallow_ws_2018_all$LONDEC <- "NA"
Sombrero_Shallow_ws_2018_all$DEPTH <- "NA"
Sombrero_Shallow_ws_2018_all$NOX_S <- "NA"
Sombrero_Shallow_ws_2018_all$NOX_B <- "NA"
Sombrero_Shallow_ws_2018_all$NO3_S <- "NA"
Sombrero_Shallow_ws_2018_all$NO3_B <- "NA"
Sombrero_Shallow_ws_2018_all$NO2_S <- "NA"
Sombrero_Shallow_ws_2018_all$NO2_B <- "NA"
Sombrero_Shallow_ws_2018_all$NH4_S <- "NA"
Sombrero_Shallow_ws_2018_all$NH4_B <- "NA"
Sombrero_Shallow_ws_2018_all$TN_S <- "NA"
Sombrero_Shallow_ws_2018_all$TN_B <- "NA"
Sombrero_Shallow_ws_2018_all$DIN_S <- "NA"
Sombrero_Shallow_ws_2018_all$DIN_B <- "NA"
Sombrero_Shallow_ws_2018_all$TON_S <- "NA"
Sombrero_Shallow_ws_2018_all$TON_B <- "NA"
Sombrero_Shallow_ws_2018_all$TP_S <- "NA"
Sombrero_Shallow_ws_2018_all$TP_B <- "NA"
Sombrero_Shallow_ws_2018_all$SRP_S <- "NA"
Sombrero_Shallow_ws_2018_all$SRP_B <- "NA"
Sombrero_Shallow_ws_2018_all$APA_S <- "NA"
Sombrero_Shallow_ws_2018_all$APA_B <- "NA"
Sombrero_Shallow_ws_2018_all$CHLA_S <- "NA"
Sombrero_Shallow_ws_2018_all$CHLA_B <- "NA"
Sombrero_Shallow_ws_2018_all$TOC_S <- "NA"
Sombrero_Shallow_ws_2018_all$TOC_B <- "NA"
Sombrero_Shallow_ws_2018_all$SiO2_S <- "NA"
Sombrero_Shallow_ws_2018_all$SiO2_B <- "NA"
Sombrero_Shallow_ws_2018_all$TURB_S <- "NA"
Sombrero_Shallow_ws_2018_all$TURB_B <- "NA"
Sombrero_Shallow_ws_2018_all$SAL_S <- "NA"
Sombrero_Shallow_ws_2018_all$SAL_B <- "NA"
Sombrero_Shallow_ws_2018_all$TEMP_S <- "NA"
Sombrero_Shallow_ws_2018_all$TEMP_B <- "NA"
Sombrero_Shallow_ws_2018_all$DO_S <- "NA"
Sombrero_Shallow_ws_2018_all$DO_B <- "NA"
Sombrero_Shallow_ws_2018_all$Kd <- "NA"
Sombrero_Shallow_ws_2018_all$pH <- "NA"
Sombrero_Shallow_ws_2018_all$TN_TP <- "NA"
Sombrero_Shallow_ws_2018_all$N_P <- "NA"
Sombrero_Shallow_ws_2018_all$DIN_TP <- "NA"
Sombrero_Shallow_ws_2018_all$Si_DIN <- "NA"
Sombrero_Shallow_ws_2018_all$F_SAT_S <- "NA"
Sombrero_Shallow_ws_2018_all$F_SAT_B <- "NA"
Sombrero_Shallow_ws_2018_all$F_Io <- "NA"
Sombrero_Shallow_ws_2018_all$DSIGT <- "NA"
Sombrero_Shallow_ws_2018_all$id <- "NA"







## rest of the serc data
Sombrero_Shallow_serc_1995 <- subset(Sombrero_Shallow_serc_year, Year == "1995")
Sombrero_Shallow_serc_1996 <- subset(Sombrero_Shallow_serc_year, Year == "1996")
Sombrero_Shallow_serc_1997 <- subset(Sombrero_Shallow_serc_year, Year == "1997")
# Sombrero_Shallow_serc_1998 <- subset(Sombrero_Shallow_serc_year, Year == "1998")
# Sombrero_Shallow_serc_1999 <- subset(Sombrero_Shallow_serc_year, Year == "1999")
# Sombrero_Shallow_serc_2000 <- subset(Sombrero_Shallow_serc_year, Year == "2000")
# Sombrero_Shallow_serc_2001 <- subset(Sombrero_Shallow_serc_year, Year == "2001")
Sombrero_Shallow_serc_2013 <- subset(Sombrero_Shallow_serc_year, Year == "2013")



Sombrero_Shallow_serc_extra <- rbind(Sombrero_Shallow_serc_1995,Sombrero_Shallow_serc_1996,Sombrero_Shallow_serc_1997,Sombrero_Shallow_serc_2013)




Sombrero_Shallow_serc_extra$Longitude <- "NA"
Sombrero_Shallow_serc_extra$Latitude <- "NA"
Sombrero_Shallow_serc_extra$Depth <- "NA"
Sombrero_Shallow_serc_extra$SST <- "NA"
Sombrero_Shallow_serc_extra$SSS <- "NA"
Sombrero_Shallow_serc_extra$Chl_a <- "NA"
Sombrero_Shallow_serc_extra$Phaeophyti <- "NA"
Sombrero_Shallow_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Sombrero_Shallow_ws_2018_all <- setcolorder(Sombrero_Shallow_ws_2018_all, names(Sombrero_Shallow_serc_extra))

## Merge all years together 

Sombrero_Shallow_all <- rbind(Sombrero_Shallow_serc_extra,Sombrero_Shallow_1998_all,Sombrero_Shallow_1999_all,Sombrero_Shallow_2000_all,Sombrero_Shallow_2001_all,Sombrero_Shallow_2002_all,Sombrero_Shallow_2003_all,Sombrero_Shallow_2004_all, Sombrero_Shallow_2005_all,Sombrero_Shallow_2006_all,Sombrero_Shallow_2007_all,Sombrero_Shallow_2008_all,Sombrero_Shallow_2009_all,Sombrero_Shallow_2010_all,Sombrero_Shallow_2011_all,Sombrero_Shallow_2012_all,Sombrero_Shallow_2014_all,Sombrero_Shallow_2015_all,Sombrero_Shallow_2016_all,Sombrero_Shallow_2017_all,Sombrero_Shallow_ws_2018_all)
Sombrero_Shallow_all$sitename <- "Sombrero_Shallow"

export(Sombrero_Shallow_all,"MK_10km/Sombrero_Shallow_combined.csv")




Tennessee_Deep_serc <- import("MK_10km/Tennessee_Deep_serc.xls")
Tennessee_Deep_ws <- import("MK_10km/Tennessee_Deep_ws.xls")

## Change date to Year to merge the two dataframes

Tennessee_Deep_serc_date <- format(as.Date(Tennessee_Deep_serc$DATE_, format = "%Y %m %d"),"%Y")
Tennessee_Deep_serc_frame <- data.frame(Tennessee_Deep_serc_date)
Tennessee_Deep_serc_year <- cbind(Tennessee_Deep_serc_frame, Tennessee_Deep_serc)
colnames(Tennessee_Deep_serc_year)[1]<- "Year"
Tennessee_Deep_serc_year$FID <- NULL
Tennessee_Deep_serc_year$SURV <- NULL
Tennessee_Deep_serc_year$BASIN <- NULL
Tennessee_Deep_serc_year$SEGMENT <- NULL
Tennessee_Deep_serc_year$ZONE_ <- NULL
Tennessee_Deep_serc_year$TIME_ <- NULL
Tennessee_Deep_serc_year$DATE_ <- NULL
Tennessee_Deep_serc_year$STATION <- NULL
Tennessee_Deep_serc_year$SITE <- NULL



Tennessee_Deep_ws_date <- format(as.Date(Tennessee_Deep_ws$Date_, format = "%Y %m %d"),"%Y")
Tennessee_Deep_ws_frame <- data.frame(Tennessee_Deep_ws_date)
Tennessee_Deep_ws_year <- cbind(Tennessee_Deep_ws_frame, Tennessee_Deep_ws)
colnames(Tennessee_Deep_ws_year)[1]<- "Year"
Tennessee_Deep_ws_year$FID <- NULL
Tennessee_Deep_ws_year$Station <- NULL
Tennessee_Deep_ws_year$Date_ <- NULL
Tennessee_Deep_ws_year$GMT <- NULL
Tennessee_Deep_ws_year$Field11 <- NULL
Tennessee_Deep_ws_year$Field12 <- NULL
Tennessee_Deep_ws_year$Field13 <- NULL
Tennessee_Deep_ws_year$Field14 <- NULL
Tennessee_Deep_ws_year$Field15 <- NULL
Tennessee_Deep_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Tennessee_Deep_serc_year$Year)
unique(Tennessee_Deep_ws_year$Year)



Tennessee_Deep_serc_1998 <- subset(Tennessee_Deep_serc_year, Year == "1998")
Tennessee_Deep_serc_1998_merge <- Tennessee_Deep_serc_1998 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_1998 <- subset(Tennessee_Deep_ws_year, Year == "1998")
Tennessee_Deep_ws_1998_merge <- Tennessee_Deep_ws_1998 %>%
  mutate(id = row_number())

Tennessee_Deep_1998_all <- full_join(Tennessee_Deep_serc_1998_merge, Tennessee_Deep_ws_1998_merge, by = c("Year","id"))


Tennessee_Deep_serc_1999 <- subset(Tennessee_Deep_serc_year, Year == "1999")
Tennessee_Deep_serc_1999_merge <- Tennessee_Deep_serc_1999 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_1999 <- subset(Tennessee_Deep_ws_year, Year == "1999")
Tennessee_Deep_ws_1999_merge <- Tennessee_Deep_ws_1999 %>%
  mutate(id = row_number())

Tennessee_Deep_1999_all <- full_join(Tennessee_Deep_serc_1999_merge, Tennessee_Deep_ws_1999_merge, by = c("Year","id"))


Tennessee_Deep_serc_2000 <- subset(Tennessee_Deep_serc_year, Year == "2000")
Tennessee_Deep_serc_2000_merge <- Tennessee_Deep_serc_2000 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2000 <- subset(Tennessee_Deep_ws_year, Year == "2000")
Tennessee_Deep_ws_2000_merge <- Tennessee_Deep_ws_2000 %>%
  mutate(id = row_number())

Tennessee_Deep_2000_all <- full_join(Tennessee_Deep_serc_2000_merge, Tennessee_Deep_ws_2000_merge, by = c("Year","id"))


Tennessee_Deep_serc_2001 <- subset(Tennessee_Deep_serc_year, Year == "2001")
Tennessee_Deep_serc_2001_merge <- Tennessee_Deep_serc_2001 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2001 <- subset(Tennessee_Deep_ws_year, Year == "2001")
Tennessee_Deep_ws_2001_merge <- Tennessee_Deep_ws_2001 %>%
  mutate(id = row_number())

Tennessee_Deep_2001_all <- full_join(Tennessee_Deep_serc_2001_merge, Tennessee_Deep_ws_2001_merge, by = c("Year","id"))


Tennessee_Deep_serc_2002 <- subset(Tennessee_Deep_serc_year, Year == "2002")
Tennessee_Deep_serc_2002_merge <- Tennessee_Deep_serc_2002 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2002 <- subset(Tennessee_Deep_ws_year, Year == "2002")
Tennessee_Deep_ws_2002_merge <- Tennessee_Deep_ws_2002 %>%
  mutate(id = row_number())

Tennessee_Deep_2002_all <- full_join(Tennessee_Deep_serc_2002_merge, Tennessee_Deep_ws_2002_merge, by = c("Year","id"))


Tennessee_Deep_serc_2003 <- subset(Tennessee_Deep_serc_year, Year == "2003")
Tennessee_Deep_serc_2003_merge <- Tennessee_Deep_serc_2003 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2003 <- subset(Tennessee_Deep_ws_year, Year == "2003")
Tennessee_Deep_ws_2003_merge <- Tennessee_Deep_ws_2003 %>%
  mutate(id = row_number())

Tennessee_Deep_2003_all <- full_join(Tennessee_Deep_serc_2003_merge, Tennessee_Deep_ws_2003_merge, by = c("Year","id"))


Tennessee_Deep_serc_2004 <- subset(Tennessee_Deep_serc_year, Year == "2004")
Tennessee_Deep_serc_2004_merge <- Tennessee_Deep_serc_2004 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2004 <- subset(Tennessee_Deep_ws_year, Year == "2004")
Tennessee_Deep_ws_2004_merge <- Tennessee_Deep_ws_2004 %>%
  mutate(id = row_number())

Tennessee_Deep_2004_all <- full_join(Tennessee_Deep_serc_2004_merge, Tennessee_Deep_ws_2004_merge, by = c("Year","id"))


Tennessee_Deep_serc_2005 <- subset(Tennessee_Deep_serc_year, Year == "2005")
Tennessee_Deep_serc_2005_merge <- Tennessee_Deep_serc_2005 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2005 <- subset(Tennessee_Deep_ws_year, Year == "2005")
Tennessee_Deep_ws_2005_merge <- Tennessee_Deep_ws_2005 %>%
  mutate(id = row_number())

Tennessee_Deep_2005_all <- full_join(Tennessee_Deep_serc_2005_merge, Tennessee_Deep_ws_2005_merge, by = c("Year","id"))


Tennessee_Deep_serc_2006 <- subset(Tennessee_Deep_serc_year, Year == "2006")
Tennessee_Deep_serc_2006_merge <- Tennessee_Deep_serc_2006 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2006 <- subset(Tennessee_Deep_ws_year, Year == "2006")
Tennessee_Deep_ws_2006_merge <- Tennessee_Deep_ws_2006 %>%
  mutate(id = row_number())

Tennessee_Deep_2006_all <- full_join(Tennessee_Deep_serc_2006_merge, Tennessee_Deep_ws_2006_merge, by = c("Year","id"))


Tennessee_Deep_serc_2007 <- subset(Tennessee_Deep_serc_year, Year == "2007")
Tennessee_Deep_serc_2007_merge <- Tennessee_Deep_serc_2007 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2007 <- subset(Tennessee_Deep_ws_year, Year == "2007")
Tennessee_Deep_ws_2007_merge <- Tennessee_Deep_ws_2007 %>%
  mutate(id = row_number())

Tennessee_Deep_2007_all <- full_join(Tennessee_Deep_serc_2007_merge, Tennessee_Deep_ws_2007_merge, by = c("Year","id"))


Tennessee_Deep_serc_2008 <- subset(Tennessee_Deep_serc_year, Year == "2008")
Tennessee_Deep_serc_2008_merge <- Tennessee_Deep_serc_2008 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2008 <- subset(Tennessee_Deep_ws_year, Year == "2008")
Tennessee_Deep_ws_2008_merge <- Tennessee_Deep_ws_2008 %>%
  mutate(id = row_number())

Tennessee_Deep_2008_all <- full_join(Tennessee_Deep_serc_2008_merge, Tennessee_Deep_ws_2008_merge, by = c("Year","id"))


Tennessee_Deep_serc_2009 <- subset(Tennessee_Deep_serc_year, Year == "2009")
Tennessee_Deep_serc_2009_merge <- Tennessee_Deep_serc_2009 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2009 <- subset(Tennessee_Deep_ws_year, Year == "2009")
Tennessee_Deep_ws_2009_merge <- Tennessee_Deep_ws_2009 %>%
  mutate(id = row_number())

Tennessee_Deep_2009_all <- full_join(Tennessee_Deep_serc_2009_merge, Tennessee_Deep_ws_2009_merge, by = c("Year","id"))


Tennessee_Deep_serc_2010 <- subset(Tennessee_Deep_serc_year, Year == "2010")
Tennessee_Deep_serc_2010_merge <- Tennessee_Deep_serc_2010 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2010 <- subset(Tennessee_Deep_ws_year, Year == "2010")
Tennessee_Deep_ws_2010_merge <- Tennessee_Deep_ws_2010 %>%
  mutate(id = row_number())

Tennessee_Deep_2010_all <- full_join(Tennessee_Deep_serc_2010_merge, Tennessee_Deep_ws_2010_merge, by = c("Year","id"))


Tennessee_Deep_serc_2011 <- subset(Tennessee_Deep_serc_year, Year == "2011")
Tennessee_Deep_serc_2011_merge <- Tennessee_Deep_serc_2011 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2011 <- subset(Tennessee_Deep_ws_year, Year == "2011")
Tennessee_Deep_ws_2011_merge <- Tennessee_Deep_ws_2011 %>%
  mutate(id = row_number())

Tennessee_Deep_2011_all <- full_join(Tennessee_Deep_serc_2011_merge, Tennessee_Deep_ws_2011_merge, by = c("Year","id"))


Tennessee_Deep_serc_2012 <- subset(Tennessee_Deep_serc_year, Year == "2012")
Tennessee_Deep_serc_2012_merge <- Tennessee_Deep_serc_2012 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2012 <- subset(Tennessee_Deep_ws_year, Year == "2012")
Tennessee_Deep_ws_2012_merge <- Tennessee_Deep_ws_2012 %>%
  mutate(id = row_number())

Tennessee_Deep_2012_all <- full_join(Tennessee_Deep_serc_2012_merge, Tennessee_Deep_ws_2012_merge, by = c("Year","id"))


Tennessee_Deep_serc_2014 <- subset(Tennessee_Deep_serc_year, Year == "2014")
Tennessee_Deep_serc_2014_merge <- Tennessee_Deep_serc_2014 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2014 <- subset(Tennessee_Deep_ws_year, Year == "2014")
Tennessee_Deep_ws_2014_merge <- Tennessee_Deep_ws_2014 %>%
  mutate(id = row_number())

Tennessee_Deep_2014_all <- full_join(Tennessee_Deep_serc_2014_merge, Tennessee_Deep_ws_2014_merge, by = c("Year","id"))


Tennessee_Deep_serc_2015 <- subset(Tennessee_Deep_serc_year, Year == "2015")
Tennessee_Deep_serc_2015_merge <- Tennessee_Deep_serc_2015 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2015 <- subset(Tennessee_Deep_ws_year, Year == "2015")
Tennessee_Deep_ws_2015_merge <- Tennessee_Deep_ws_2015 %>%
  mutate(id = row_number())

Tennessee_Deep_2015_all <- full_join(Tennessee_Deep_serc_2015_merge, Tennessee_Deep_ws_2015_merge, by = c("Year","id"))


Tennessee_Deep_serc_2016 <- subset(Tennessee_Deep_serc_year, Year == "2016")
Tennessee_Deep_serc_2016_merge <- Tennessee_Deep_serc_2016 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2016 <- subset(Tennessee_Deep_ws_year, Year == "2016")
Tennessee_Deep_ws_2016_merge <- Tennessee_Deep_ws_2016 %>%
  mutate(id = row_number())

Tennessee_Deep_2016_all <- full_join(Tennessee_Deep_serc_2016_merge, Tennessee_Deep_ws_2016_merge, by = c("Year","id"))



Tennessee_Deep_serc_2017 <- subset(Tennessee_Deep_serc_year, Year == "2017")
Tennessee_Deep_serc_2017_merge <- Tennessee_Deep_serc_2017 %>%
  mutate(id = row_number())

Tennessee_Deep_ws_2017 <- subset(Tennessee_Deep_ws_year, Year == "2017")
Tennessee_Deep_ws_2017_merge <- Tennessee_Deep_ws_2017 %>%
  mutate(id = row_number())

Tennessee_Deep_2017_all <- full_join(Tennessee_Deep_serc_2017_merge, Tennessee_Deep_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Tennessee_Deep_ws_2018_all <- subset(Tennessee_Deep_ws_year, Year == "2018") 

## adding extra columns to merge 

Tennessee_Deep_ws_2018_all$LATDEC <- "NA"
Tennessee_Deep_ws_2018_all$LONDEC <- "NA"
Tennessee_Deep_ws_2018_all$DEPTH <- "NA"
Tennessee_Deep_ws_2018_all$NOX_S <- "NA"
Tennessee_Deep_ws_2018_all$NOX_B <- "NA"
Tennessee_Deep_ws_2018_all$NO3_S <- "NA"
Tennessee_Deep_ws_2018_all$NO3_B <- "NA"
Tennessee_Deep_ws_2018_all$NO2_S <- "NA"
Tennessee_Deep_ws_2018_all$NO2_B <- "NA"
Tennessee_Deep_ws_2018_all$NH4_S <- "NA"
Tennessee_Deep_ws_2018_all$NH4_B <- "NA"
Tennessee_Deep_ws_2018_all$TN_S <- "NA"
Tennessee_Deep_ws_2018_all$TN_B <- "NA"
Tennessee_Deep_ws_2018_all$DIN_S <- "NA"
Tennessee_Deep_ws_2018_all$DIN_B <- "NA"
Tennessee_Deep_ws_2018_all$TON_S <- "NA"
Tennessee_Deep_ws_2018_all$TON_B <- "NA"
Tennessee_Deep_ws_2018_all$TP_S <- "NA"
Tennessee_Deep_ws_2018_all$TP_B <- "NA"
Tennessee_Deep_ws_2018_all$SRP_S <- "NA"
Tennessee_Deep_ws_2018_all$SRP_B <- "NA"
Tennessee_Deep_ws_2018_all$APA_S <- "NA"
Tennessee_Deep_ws_2018_all$APA_B <- "NA"
Tennessee_Deep_ws_2018_all$CHLA_S <- "NA"
Tennessee_Deep_ws_2018_all$CHLA_B <- "NA"
Tennessee_Deep_ws_2018_all$TOC_S <- "NA"
Tennessee_Deep_ws_2018_all$TOC_B <- "NA"
Tennessee_Deep_ws_2018_all$SiO2_S <- "NA"
Tennessee_Deep_ws_2018_all$SiO2_B <- "NA"
Tennessee_Deep_ws_2018_all$TURB_S <- "NA"
Tennessee_Deep_ws_2018_all$TURB_B <- "NA"
Tennessee_Deep_ws_2018_all$SAL_S <- "NA"
Tennessee_Deep_ws_2018_all$SAL_B <- "NA"
Tennessee_Deep_ws_2018_all$TEMP_S <- "NA"
Tennessee_Deep_ws_2018_all$TEMP_B <- "NA"
Tennessee_Deep_ws_2018_all$DO_S <- "NA"
Tennessee_Deep_ws_2018_all$DO_B <- "NA"
Tennessee_Deep_ws_2018_all$Kd <- "NA"
Tennessee_Deep_ws_2018_all$pH <- "NA"
Tennessee_Deep_ws_2018_all$TN_TP <- "NA"
Tennessee_Deep_ws_2018_all$N_P <- "NA"
Tennessee_Deep_ws_2018_all$DIN_TP <- "NA"
Tennessee_Deep_ws_2018_all$Si_DIN <- "NA"
Tennessee_Deep_ws_2018_all$F_SAT_S <- "NA"
Tennessee_Deep_ws_2018_all$F_SAT_B <- "NA"
Tennessee_Deep_ws_2018_all$F_Io <- "NA"
Tennessee_Deep_ws_2018_all$DSIGT <- "NA"
Tennessee_Deep_ws_2018_all$id <- "NA"







## rest of the serc data
Tennessee_Deep_serc_1995 <- subset(Tennessee_Deep_serc_year, Year == "1995")
Tennessee_Deep_serc_1996 <- subset(Tennessee_Deep_serc_year, Year == "1996")
Tennessee_Deep_serc_1997 <- subset(Tennessee_Deep_serc_year, Year == "1997")
# Tennessee_Deep_serc_1998 <- subset(Tennessee_Deep_serc_year, Year == "1998")
# Tennessee_Deep_serc_1999 <- subset(Tennessee_Deep_serc_year, Year == "1999")
# Tennessee_Deep_serc_2000 <- subset(Tennessee_Deep_serc_year, Year == "2000")
# Tennessee_Deep_serc_2001 <- subset(Tennessee_Deep_serc_year, Year == "2001")
Tennessee_Deep_serc_2013 <- subset(Tennessee_Deep_serc_year, Year == "2013")



Tennessee_Deep_serc_extra <- rbind(Tennessee_Deep_serc_1995,Tennessee_Deep_serc_1996,Tennessee_Deep_serc_1997,Tennessee_Deep_serc_2013)




Tennessee_Deep_serc_extra$Longitude <- "NA"
Tennessee_Deep_serc_extra$Latitude <- "NA"
Tennessee_Deep_serc_extra$Depth <- "NA"
Tennessee_Deep_serc_extra$SST <- "NA"
Tennessee_Deep_serc_extra$SSS <- "NA"
Tennessee_Deep_serc_extra$Chl_a <- "NA"
Tennessee_Deep_serc_extra$Phaeophyti <- "NA"
Tennessee_Deep_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Tennessee_Deep_ws_2018_all <- setcolorder(Tennessee_Deep_ws_2018_all, names(Tennessee_Deep_serc_extra))

## Merge all years together 

Tennessee_Deep_all <- rbind(Tennessee_Deep_serc_extra,Tennessee_Deep_1998_all,Tennessee_Deep_1999_all,Tennessee_Deep_2000_all,Tennessee_Deep_2001_all,Tennessee_Deep_2002_all,Tennessee_Deep_2003_all,Tennessee_Deep_2004_all, Tennessee_Deep_2005_all,Tennessee_Deep_2006_all,Tennessee_Deep_2007_all,Tennessee_Deep_2008_all,Tennessee_Deep_2009_all,Tennessee_Deep_2010_all,Tennessee_Deep_2011_all,Tennessee_Deep_2012_all,Tennessee_Deep_2014_all,Tennessee_Deep_2015_all,Tennessee_Deep_2016_all,Tennessee_Deep_2017_all,Tennessee_Deep_ws_2018_all)
Tennessee_Deep_all$sitename <- "Tennessee_Deep"

export(Tennessee_Deep_all,"MK_10km/Tennessee_Deep_combined.csv")



Tennessee_Shallow_serc <- import("MK_10km/Tennessee_Shallow_serc.xls")
Tennessee_Shallow_ws <- import("MK_10km/Tennessee_Shallow_ws.xls")

## Change date to Year to merge the two dataframes

Tennessee_Shallow_serc_date <- format(as.Date(Tennessee_Shallow_serc$DATE_, format = "%Y %m %d"),"%Y")
Tennessee_Shallow_serc_frame <- data.frame(Tennessee_Shallow_serc_date)
Tennessee_Shallow_serc_year <- cbind(Tennessee_Shallow_serc_frame, Tennessee_Shallow_serc)
colnames(Tennessee_Shallow_serc_year)[1]<- "Year"
Tennessee_Shallow_serc_year$FID <- NULL
Tennessee_Shallow_serc_year$SURV <- NULL
Tennessee_Shallow_serc_year$BASIN <- NULL
Tennessee_Shallow_serc_year$SEGMENT <- NULL
Tennessee_Shallow_serc_year$ZONE_ <- NULL
Tennessee_Shallow_serc_year$TIME_ <- NULL
Tennessee_Shallow_serc_year$DATE_ <- NULL
Tennessee_Shallow_serc_year$STATION <- NULL
Tennessee_Shallow_serc_year$SITE <- NULL



Tennessee_Shallow_ws_date <- format(as.Date(Tennessee_Shallow_ws$Date_, format = "%Y %m %d"),"%Y")
Tennessee_Shallow_ws_frame <- data.frame(Tennessee_Shallow_ws_date)
Tennessee_Shallow_ws_year <- cbind(Tennessee_Shallow_ws_frame, Tennessee_Shallow_ws)
colnames(Tennessee_Shallow_ws_year)[1]<- "Year"
Tennessee_Shallow_ws_year$FID <- NULL
Tennessee_Shallow_ws_year$Station <- NULL
Tennessee_Shallow_ws_year$Date_ <- NULL
Tennessee_Shallow_ws_year$GMT <- NULL
Tennessee_Shallow_ws_year$Field11 <- NULL
Tennessee_Shallow_ws_year$Field12 <- NULL
Tennessee_Shallow_ws_year$Field13 <- NULL
Tennessee_Shallow_ws_year$Field14 <- NULL
Tennessee_Shallow_ws_year$Field15 <- NULL
Tennessee_Shallow_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Tennessee_Shallow_serc_year$Year)
unique(Tennessee_Shallow_ws_year$Year)



Tennessee_Shallow_serc_1998 <- subset(Tennessee_Shallow_serc_year, Year == "1998")
Tennessee_Shallow_serc_1998_merge <- Tennessee_Shallow_serc_1998 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_1998 <- subset(Tennessee_Shallow_ws_year, Year == "1998")
Tennessee_Shallow_ws_1998_merge <- Tennessee_Shallow_ws_1998 %>%
  mutate(id = row_number())

Tennessee_Shallow_1998_all <- full_join(Tennessee_Shallow_serc_1998_merge, Tennessee_Shallow_ws_1998_merge, by = c("Year","id"))


Tennessee_Shallow_serc_1999 <- subset(Tennessee_Shallow_serc_year, Year == "1999")
Tennessee_Shallow_serc_1999_merge <- Tennessee_Shallow_serc_1999 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_1999 <- subset(Tennessee_Shallow_ws_year, Year == "1999")
Tennessee_Shallow_ws_1999_merge <- Tennessee_Shallow_ws_1999 %>%
  mutate(id = row_number())

Tennessee_Shallow_1999_all <- full_join(Tennessee_Shallow_serc_1999_merge, Tennessee_Shallow_ws_1999_merge, by = c("Year","id"))


Tennessee_Shallow_serc_2000 <- subset(Tennessee_Shallow_serc_year, Year == "2000")
Tennessee_Shallow_serc_2000_merge <- Tennessee_Shallow_serc_2000 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2000 <- subset(Tennessee_Shallow_ws_year, Year == "2000")
Tennessee_Shallow_ws_2000_merge <- Tennessee_Shallow_ws_2000 %>%
  mutate(id = row_number())

Tennessee_Shallow_2000_all <- full_join(Tennessee_Shallow_serc_2000_merge, Tennessee_Shallow_ws_2000_merge, by = c("Year","id"))


Tennessee_Shallow_serc_2001 <- subset(Tennessee_Shallow_serc_year, Year == "2001")
Tennessee_Shallow_serc_2001_merge <- Tennessee_Shallow_serc_2001 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2001 <- subset(Tennessee_Shallow_ws_year, Year == "2001")
Tennessee_Shallow_ws_2001_merge <- Tennessee_Shallow_ws_2001 %>%
  mutate(id = row_number())

Tennessee_Shallow_2001_all <- full_join(Tennessee_Shallow_serc_2001_merge, Tennessee_Shallow_ws_2001_merge, by = c("Year","id"))


Tennessee_Shallow_serc_2002 <- subset(Tennessee_Shallow_serc_year, Year == "2002")
Tennessee_Shallow_serc_2002_merge <- Tennessee_Shallow_serc_2002 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2002 <- subset(Tennessee_Shallow_ws_year, Year == "2002")
Tennessee_Shallow_ws_2002_merge <- Tennessee_Shallow_ws_2002 %>%
  mutate(id = row_number())

Tennessee_Shallow_2002_all <- full_join(Tennessee_Shallow_serc_2002_merge, Tennessee_Shallow_ws_2002_merge, by = c("Year","id"))


Tennessee_Shallow_serc_2003 <- subset(Tennessee_Shallow_serc_year, Year == "2003")
Tennessee_Shallow_serc_2003_merge <- Tennessee_Shallow_serc_2003 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2003 <- subset(Tennessee_Shallow_ws_year, Year == "2003")
Tennessee_Shallow_ws_2003_merge <- Tennessee_Shallow_ws_2003 %>%
  mutate(id = row_number())

Tennessee_Shallow_2003_all <- full_join(Tennessee_Shallow_serc_2003_merge, Tennessee_Shallow_ws_2003_merge, by = c("Year","id"))


Tennessee_Shallow_serc_2004 <- subset(Tennessee_Shallow_serc_year, Year == "2004")
Tennessee_Shallow_serc_2004_merge <- Tennessee_Shallow_serc_2004 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2004 <- subset(Tennessee_Shallow_ws_year, Year == "2004")
Tennessee_Shallow_ws_2004_merge <- Tennessee_Shallow_ws_2004 %>%
  mutate(id = row_number())

Tennessee_Shallow_2004_all <- full_join(Tennessee_Shallow_serc_2004_merge, Tennessee_Shallow_ws_2004_merge, by = c("Year","id"))


Tennessee_Shallow_serc_2005 <- subset(Tennessee_Shallow_serc_year, Year == "2005")
Tennessee_Shallow_serc_2005_merge <- Tennessee_Shallow_serc_2005 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2005 <- subset(Tennessee_Shallow_ws_year, Year == "2005")
Tennessee_Shallow_ws_2005_merge <- Tennessee_Shallow_ws_2005 %>%
  mutate(id = row_number())

Tennessee_Shallow_2005_all <- full_join(Tennessee_Shallow_serc_2005_merge, Tennessee_Shallow_ws_2005_merge, by = c("Year","id"))


Tennessee_Shallow_serc_2006 <- subset(Tennessee_Shallow_serc_year, Year == "2006")
Tennessee_Shallow_serc_2006_merge <- Tennessee_Shallow_serc_2006 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2006 <- subset(Tennessee_Shallow_ws_year, Year == "2006")
Tennessee_Shallow_ws_2006_merge <- Tennessee_Shallow_ws_2006 %>%
  mutate(id = row_number())

Tennessee_Shallow_2006_all <- full_join(Tennessee_Shallow_serc_2006_merge, Tennessee_Shallow_ws_2006_merge, by = c("Year","id"))


Tennessee_Shallow_serc_2007 <- subset(Tennessee_Shallow_serc_year, Year == "2007")
Tennessee_Shallow_serc_2007_merge <- Tennessee_Shallow_serc_2007 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2007 <- subset(Tennessee_Shallow_ws_year, Year == "2007")
Tennessee_Shallow_ws_2007_merge <- Tennessee_Shallow_ws_2007 %>%
  mutate(id = row_number())

Tennessee_Shallow_2007_all <- full_join(Tennessee_Shallow_serc_2007_merge, Tennessee_Shallow_ws_2007_merge, by = c("Year","id"))


Tennessee_Shallow_serc_2008 <- subset(Tennessee_Shallow_serc_year, Year == "2008")
Tennessee_Shallow_serc_2008_merge <- Tennessee_Shallow_serc_2008 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2008 <- subset(Tennessee_Shallow_ws_year, Year == "2008")
Tennessee_Shallow_ws_2008_merge <- Tennessee_Shallow_ws_2008 %>%
  mutate(id = row_number())

Tennessee_Shallow_2008_all <- full_join(Tennessee_Shallow_serc_2008_merge, Tennessee_Shallow_ws_2008_merge, by = c("Year","id"))


Tennessee_Shallow_serc_2009 <- subset(Tennessee_Shallow_serc_year, Year == "2009")
Tennessee_Shallow_serc_2009_merge <- Tennessee_Shallow_serc_2009 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2009 <- subset(Tennessee_Shallow_ws_year, Year == "2009")
Tennessee_Shallow_ws_2009_merge <- Tennessee_Shallow_ws_2009 %>%
  mutate(id = row_number())

Tennessee_Shallow_2009_all <- full_join(Tennessee_Shallow_serc_2009_merge, Tennessee_Shallow_ws_2009_merge, by = c("Year","id"))


Tennessee_Shallow_serc_2010 <- subset(Tennessee_Shallow_serc_year, Year == "2010")
Tennessee_Shallow_serc_2010_merge <- Tennessee_Shallow_serc_2010 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2010 <- subset(Tennessee_Shallow_ws_year, Year == "2010")
Tennessee_Shallow_ws_2010_merge <- Tennessee_Shallow_ws_2010 %>%
  mutate(id = row_number())

Tennessee_Shallow_2010_all <- full_join(Tennessee_Shallow_serc_2010_merge, Tennessee_Shallow_ws_2010_merge, by = c("Year","id"))


Tennessee_Shallow_serc_2011 <- subset(Tennessee_Shallow_serc_year, Year == "2011")
Tennessee_Shallow_serc_2011_merge <- Tennessee_Shallow_serc_2011 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2011 <- subset(Tennessee_Shallow_ws_year, Year == "2011")
Tennessee_Shallow_ws_2011_merge <- Tennessee_Shallow_ws_2011 %>%
  mutate(id = row_number())

Tennessee_Shallow_2011_all <- full_join(Tennessee_Shallow_serc_2011_merge, Tennessee_Shallow_ws_2011_merge, by = c("Year","id"))


Tennessee_Shallow_serc_2012 <- subset(Tennessee_Shallow_serc_year, Year == "2012")
Tennessee_Shallow_serc_2012_merge <- Tennessee_Shallow_serc_2012 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2012 <- subset(Tennessee_Shallow_ws_year, Year == "2012")
Tennessee_Shallow_ws_2012_merge <- Tennessee_Shallow_ws_2012 %>%
  mutate(id = row_number())

Tennessee_Shallow_2012_all <- full_join(Tennessee_Shallow_serc_2012_merge, Tennessee_Shallow_ws_2012_merge, by = c("Year","id"))


Tennessee_Shallow_serc_2014 <- subset(Tennessee_Shallow_serc_year, Year == "2014")
Tennessee_Shallow_serc_2014_merge <- Tennessee_Shallow_serc_2014 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2014 <- subset(Tennessee_Shallow_ws_year, Year == "2014")
Tennessee_Shallow_ws_2014_merge <- Tennessee_Shallow_ws_2014 %>%
  mutate(id = row_number())

Tennessee_Shallow_2014_all <- full_join(Tennessee_Shallow_serc_2014_merge, Tennessee_Shallow_ws_2014_merge, by = c("Year","id"))


Tennessee_Shallow_serc_2015 <- subset(Tennessee_Shallow_serc_year, Year == "2015")
Tennessee_Shallow_serc_2015_merge <- Tennessee_Shallow_serc_2015 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2015 <- subset(Tennessee_Shallow_ws_year, Year == "2015")
Tennessee_Shallow_ws_2015_merge <- Tennessee_Shallow_ws_2015 %>%
  mutate(id = row_number())

Tennessee_Shallow_2015_all <- full_join(Tennessee_Shallow_serc_2015_merge, Tennessee_Shallow_ws_2015_merge, by = c("Year","id"))


Tennessee_Shallow_serc_2016 <- subset(Tennessee_Shallow_serc_year, Year == "2016")
Tennessee_Shallow_serc_2016_merge <- Tennessee_Shallow_serc_2016 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2016 <- subset(Tennessee_Shallow_ws_year, Year == "2016")
Tennessee_Shallow_ws_2016_merge <- Tennessee_Shallow_ws_2016 %>%
  mutate(id = row_number())

Tennessee_Shallow_2016_all <- full_join(Tennessee_Shallow_serc_2016_merge, Tennessee_Shallow_ws_2016_merge, by = c("Year","id"))



Tennessee_Shallow_serc_2017 <- subset(Tennessee_Shallow_serc_year, Year == "2017")
Tennessee_Shallow_serc_2017_merge <- Tennessee_Shallow_serc_2017 %>%
  mutate(id = row_number())

Tennessee_Shallow_ws_2017 <- subset(Tennessee_Shallow_ws_year, Year == "2017")
Tennessee_Shallow_ws_2017_merge <- Tennessee_Shallow_ws_2017 %>%
  mutate(id = row_number())

Tennessee_Shallow_2017_all <- full_join(Tennessee_Shallow_serc_2017_merge, Tennessee_Shallow_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Tennessee_Shallow_ws_2018_all <- subset(Tennessee_Shallow_ws_year, Year == "2018") 

## adding extra columns to merge 

Tennessee_Shallow_ws_2018_all$LATDEC <- "NA"
Tennessee_Shallow_ws_2018_all$LONDEC <- "NA"
Tennessee_Shallow_ws_2018_all$DEPTH <- "NA"
Tennessee_Shallow_ws_2018_all$NOX_S <- "NA"
Tennessee_Shallow_ws_2018_all$NOX_B <- "NA"
Tennessee_Shallow_ws_2018_all$NO3_S <- "NA"
Tennessee_Shallow_ws_2018_all$NO3_B <- "NA"
Tennessee_Shallow_ws_2018_all$NO2_S <- "NA"
Tennessee_Shallow_ws_2018_all$NO2_B <- "NA"
Tennessee_Shallow_ws_2018_all$NH4_S <- "NA"
Tennessee_Shallow_ws_2018_all$NH4_B <- "NA"
Tennessee_Shallow_ws_2018_all$TN_S <- "NA"
Tennessee_Shallow_ws_2018_all$TN_B <- "NA"
Tennessee_Shallow_ws_2018_all$DIN_S <- "NA"
Tennessee_Shallow_ws_2018_all$DIN_B <- "NA"
Tennessee_Shallow_ws_2018_all$TON_S <- "NA"
Tennessee_Shallow_ws_2018_all$TON_B <- "NA"
Tennessee_Shallow_ws_2018_all$TP_S <- "NA"
Tennessee_Shallow_ws_2018_all$TP_B <- "NA"
Tennessee_Shallow_ws_2018_all$SRP_S <- "NA"
Tennessee_Shallow_ws_2018_all$SRP_B <- "NA"
Tennessee_Shallow_ws_2018_all$APA_S <- "NA"
Tennessee_Shallow_ws_2018_all$APA_B <- "NA"
Tennessee_Shallow_ws_2018_all$CHLA_S <- "NA"
Tennessee_Shallow_ws_2018_all$CHLA_B <- "NA"
Tennessee_Shallow_ws_2018_all$TOC_S <- "NA"
Tennessee_Shallow_ws_2018_all$TOC_B <- "NA"
Tennessee_Shallow_ws_2018_all$SiO2_S <- "NA"
Tennessee_Shallow_ws_2018_all$SiO2_B <- "NA"
Tennessee_Shallow_ws_2018_all$TURB_S <- "NA"
Tennessee_Shallow_ws_2018_all$TURB_B <- "NA"
Tennessee_Shallow_ws_2018_all$SAL_S <- "NA"
Tennessee_Shallow_ws_2018_all$SAL_B <- "NA"
Tennessee_Shallow_ws_2018_all$TEMP_S <- "NA"
Tennessee_Shallow_ws_2018_all$TEMP_B <- "NA"
Tennessee_Shallow_ws_2018_all$DO_S <- "NA"
Tennessee_Shallow_ws_2018_all$DO_B <- "NA"
Tennessee_Shallow_ws_2018_all$Kd <- "NA"
Tennessee_Shallow_ws_2018_all$pH <- "NA"
Tennessee_Shallow_ws_2018_all$TN_TP <- "NA"
Tennessee_Shallow_ws_2018_all$N_P <- "NA"
Tennessee_Shallow_ws_2018_all$DIN_TP <- "NA"
Tennessee_Shallow_ws_2018_all$Si_DIN <- "NA"
Tennessee_Shallow_ws_2018_all$F_SAT_S <- "NA"
Tennessee_Shallow_ws_2018_all$F_SAT_B <- "NA"
Tennessee_Shallow_ws_2018_all$F_Io <- "NA"
Tennessee_Shallow_ws_2018_all$DSIGT <- "NA"
Tennessee_Shallow_ws_2018_all$id <- "NA"







## rest of the serc data
Tennessee_Shallow_serc_1995 <- subset(Tennessee_Shallow_serc_year, Year == "1995")
Tennessee_Shallow_serc_1996 <- subset(Tennessee_Shallow_serc_year, Year == "1996")
Tennessee_Shallow_serc_1997 <- subset(Tennessee_Shallow_serc_year, Year == "1997")
# Tennessee_Shallow_serc_1998 <- subset(Tennessee_Shallow_serc_year, Year == "1998")
# Tennessee_Shallow_serc_1999 <- subset(Tennessee_Shallow_serc_year, Year == "1999")
# Tennessee_Shallow_serc_2000 <- subset(Tennessee_Shallow_serc_year, Year == "2000")
# Tennessee_Shallow_serc_2001 <- subset(Tennessee_Shallow_serc_year, Year == "2001")
Tennessee_Shallow_serc_2013 <- subset(Tennessee_Shallow_serc_year, Year == "2013")



Tennessee_Shallow_serc_extra <- rbind(Tennessee_Shallow_serc_1995,Tennessee_Shallow_serc_1996,Tennessee_Shallow_serc_1997,Tennessee_Shallow_serc_2013)




Tennessee_Shallow_serc_extra$Longitude <- "NA"
Tennessee_Shallow_serc_extra$Latitude <- "NA"
Tennessee_Shallow_serc_extra$Depth <- "NA"
Tennessee_Shallow_serc_extra$SST <- "NA"
Tennessee_Shallow_serc_extra$SSS <- "NA"
Tennessee_Shallow_serc_extra$Chl_a <- "NA"
Tennessee_Shallow_serc_extra$Phaeophyti <- "NA"
Tennessee_Shallow_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Tennessee_Shallow_ws_2018_all <- setcolorder(Tennessee_Shallow_ws_2018_all, names(Tennessee_Shallow_serc_extra))

## Merge all years together 

Tennessee_Shallow_all <- rbind(Tennessee_Shallow_serc_extra,Tennessee_Shallow_1998_all,Tennessee_Shallow_1999_all,Tennessee_Shallow_2000_all,Tennessee_Shallow_2001_all,Tennessee_Shallow_2002_all,Tennessee_Shallow_2003_all,Tennessee_Shallow_2004_all, Tennessee_Shallow_2005_all,Tennessee_Shallow_2006_all,Tennessee_Shallow_2007_all,Tennessee_Shallow_2008_all,Tennessee_Shallow_2009_all,Tennessee_Shallow_2010_all,Tennessee_Shallow_2011_all,Tennessee_Shallow_2012_all,Tennessee_Shallow_2014_all,Tennessee_Shallow_2015_all,Tennessee_Shallow_2016_all,Tennessee_Shallow_2017_all,Tennessee_Shallow_ws_2018_all)
Tennessee_Shallow_all$sitename <- "Tennessee_Shallow"

export(Tennessee_Shallow_all,"MK_10km/Tennessee_Shallow_combined.csv")



Thor_serc <- import("MK_10km/Thor_serc.xls")
Thor_ws <- import("MK_10km/Thor_ws.xls")

## Change date to Year to merge the two dataframes

Thor_serc_date <- format(as.Date(Thor_serc$DATE_, format = "%Y %m %d"),"%Y")
Thor_serc_frame <- data.frame(Thor_serc_date)
Thor_serc_year <- cbind(Thor_serc_frame, Thor_serc)
colnames(Thor_serc_year)[1]<- "Year"
Thor_serc_year$FID <- NULL
Thor_serc_year$SURV <- NULL
Thor_serc_year$BASIN <- NULL
Thor_serc_year$SEGMENT <- NULL
Thor_serc_year$ZONE_ <- NULL
Thor_serc_year$TIME_ <- NULL
Thor_serc_year$DATE_ <- NULL
Thor_serc_year$STATION <- NULL
Thor_serc_year$SITE <- NULL



Thor_ws_date <- format(as.Date(Thor_ws$Date_, format = "%Y %m %d"),"%Y")
Thor_ws_frame <- data.frame(Thor_ws_date)
Thor_ws_year <- cbind(Thor_ws_frame, Thor_ws)
colnames(Thor_ws_year)[1]<- "Year"
Thor_ws_year$FID <- NULL
Thor_ws_year$Station <- NULL
Thor_ws_year$Date_ <- NULL
Thor_ws_year$GMT <- NULL
Thor_ws_year$Field11 <- NULL
Thor_ws_year$Field12 <- NULL
Thor_ws_year$Field13 <- NULL
Thor_ws_year$Field14 <- NULL
Thor_ws_year$Field15 <- NULL
Thor_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Thor_serc_year$Year)
unique(Thor_ws_year$Year)



Thor_serc_1998 <- subset(Thor_serc_year, Year == "1998")
Thor_serc_1998_merge <- Thor_serc_1998 %>%
  mutate(id = row_number())

Thor_ws_1998 <- subset(Thor_ws_year, Year == "1998")
Thor_ws_1998_merge <- Thor_ws_1998 %>%
  mutate(id = row_number())

Thor_1998_all <- full_join(Thor_serc_1998_merge, Thor_ws_1998_merge, by = c("Year","id"))


Thor_serc_1999 <- subset(Thor_serc_year, Year == "1999")
Thor_serc_1999_merge <- Thor_serc_1999 %>%
  mutate(id = row_number())

Thor_ws_1999 <- subset(Thor_ws_year, Year == "1999")
Thor_ws_1999_merge <- Thor_ws_1999 %>%
  mutate(id = row_number())

Thor_1999_all <- full_join(Thor_serc_1999_merge, Thor_ws_1999_merge, by = c("Year","id"))


Thor_serc_2000 <- subset(Thor_serc_year, Year == "2000")
Thor_serc_2000_merge <- Thor_serc_2000 %>%
  mutate(id = row_number())

Thor_ws_2000 <- subset(Thor_ws_year, Year == "2000")
Thor_ws_2000_merge <- Thor_ws_2000 %>%
  mutate(id = row_number())

Thor_2000_all <- full_join(Thor_serc_2000_merge, Thor_ws_2000_merge, by = c("Year","id"))


Thor_serc_2001 <- subset(Thor_serc_year, Year == "2001")
Thor_serc_2001_merge <- Thor_serc_2001 %>%
  mutate(id = row_number())

Thor_ws_2001 <- subset(Thor_ws_year, Year == "2001")
Thor_ws_2001_merge <- Thor_ws_2001 %>%
  mutate(id = row_number())

Thor_2001_all <- full_join(Thor_serc_2001_merge, Thor_ws_2001_merge, by = c("Year","id"))


Thor_serc_2002 <- subset(Thor_serc_year, Year == "2002")
Thor_serc_2002_merge <- Thor_serc_2002 %>%
  mutate(id = row_number())

Thor_ws_2002 <- subset(Thor_ws_year, Year == "2002")
Thor_ws_2002_merge <- Thor_ws_2002 %>%
  mutate(id = row_number())

Thor_2002_all <- full_join(Thor_serc_2002_merge, Thor_ws_2002_merge, by = c("Year","id"))


Thor_serc_2003 <- subset(Thor_serc_year, Year == "2003")
Thor_serc_2003_merge <- Thor_serc_2003 %>%
  mutate(id = row_number())

Thor_ws_2003 <- subset(Thor_ws_year, Year == "2003")
Thor_ws_2003_merge <- Thor_ws_2003 %>%
  mutate(id = row_number())

Thor_2003_all <- full_join(Thor_serc_2003_merge, Thor_ws_2003_merge, by = c("Year","id"))


Thor_serc_2004 <- subset(Thor_serc_year, Year == "2004")
Thor_serc_2004_merge <- Thor_serc_2004 %>%
  mutate(id = row_number())

Thor_ws_2004 <- subset(Thor_ws_year, Year == "2004")
Thor_ws_2004_merge <- Thor_ws_2004 %>%
  mutate(id = row_number())

Thor_2004_all <- full_join(Thor_serc_2004_merge, Thor_ws_2004_merge, by = c("Year","id"))


Thor_serc_2005 <- subset(Thor_serc_year, Year == "2005")
Thor_serc_2005_merge <- Thor_serc_2005 %>%
  mutate(id = row_number())

Thor_ws_2005 <- subset(Thor_ws_year, Year == "2005")
Thor_ws_2005_merge <- Thor_ws_2005 %>%
  mutate(id = row_number())

Thor_2005_all <- full_join(Thor_serc_2005_merge, Thor_ws_2005_merge, by = c("Year","id"))


Thor_serc_2006 <- subset(Thor_serc_year, Year == "2006")
Thor_serc_2006_merge <- Thor_serc_2006 %>%
  mutate(id = row_number())

Thor_ws_2006 <- subset(Thor_ws_year, Year == "2006")
Thor_ws_2006_merge <- Thor_ws_2006 %>%
  mutate(id = row_number())

Thor_2006_all <- full_join(Thor_serc_2006_merge, Thor_ws_2006_merge, by = c("Year","id"))


Thor_serc_2007 <- subset(Thor_serc_year, Year == "2007")
Thor_serc_2007_merge <- Thor_serc_2007 %>%
  mutate(id = row_number())

Thor_ws_2007 <- subset(Thor_ws_year, Year == "2007")
Thor_ws_2007_merge <- Thor_ws_2007 %>%
  mutate(id = row_number())

Thor_2007_all <- full_join(Thor_serc_2007_merge, Thor_ws_2007_merge, by = c("Year","id"))


Thor_serc_2008 <- subset(Thor_serc_year, Year == "2008")
Thor_serc_2008_merge <- Thor_serc_2008 %>%
  mutate(id = row_number())

Thor_ws_2008 <- subset(Thor_ws_year, Year == "2008")
Thor_ws_2008_merge <- Thor_ws_2008 %>%
  mutate(id = row_number())

Thor_2008_all <- full_join(Thor_serc_2008_merge, Thor_ws_2008_merge, by = c("Year","id"))


Thor_serc_2009 <- subset(Thor_serc_year, Year == "2009")
Thor_serc_2009_merge <- Thor_serc_2009 %>%
  mutate(id = row_number())

Thor_ws_2009 <- subset(Thor_ws_year, Year == "2009")
Thor_ws_2009_merge <- Thor_ws_2009 %>%
  mutate(id = row_number())

Thor_2009_all <- full_join(Thor_serc_2009_merge, Thor_ws_2009_merge, by = c("Year","id"))


Thor_serc_2010 <- subset(Thor_serc_year, Year == "2010")
Thor_serc_2010_merge <- Thor_serc_2010 %>%
  mutate(id = row_number())

Thor_ws_2010 <- subset(Thor_ws_year, Year == "2010")
Thor_ws_2010_merge <- Thor_ws_2010 %>%
  mutate(id = row_number())

Thor_2010_all <- full_join(Thor_serc_2010_merge, Thor_ws_2010_merge, by = c("Year","id"))


Thor_serc_2011 <- subset(Thor_serc_year, Year == "2011")
Thor_serc_2011_merge <- Thor_serc_2011 %>%
  mutate(id = row_number())

Thor_ws_2011 <- subset(Thor_ws_year, Year == "2011")
Thor_ws_2011_merge <- Thor_ws_2011 %>%
  mutate(id = row_number())

Thor_2011_all <- full_join(Thor_serc_2011_merge, Thor_ws_2011_merge, by = c("Year","id"))


Thor_serc_2012 <- subset(Thor_serc_year, Year == "2012")
Thor_serc_2012_merge <- Thor_serc_2012 %>%
  mutate(id = row_number())

Thor_ws_2012 <- subset(Thor_ws_year, Year == "2012")
Thor_ws_2012_merge <- Thor_ws_2012 %>%
  mutate(id = row_number())

Thor_2012_all <- full_join(Thor_serc_2012_merge, Thor_ws_2012_merge, by = c("Year","id"))


Thor_serc_2014 <- subset(Thor_serc_year, Year == "2014")
Thor_serc_2014_merge <- Thor_serc_2014 %>%
  mutate(id = row_number())

Thor_ws_2014 <- subset(Thor_ws_year, Year == "2014")
Thor_ws_2014_merge <- Thor_ws_2014 %>%
  mutate(id = row_number())

Thor_2014_all <- full_join(Thor_serc_2014_merge, Thor_ws_2014_merge, by = c("Year","id"))


Thor_serc_2015 <- subset(Thor_serc_year, Year == "2015")
Thor_serc_2015_merge <- Thor_serc_2015 %>%
  mutate(id = row_number())

Thor_ws_2015 <- subset(Thor_ws_year, Year == "2015")
Thor_ws_2015_merge <- Thor_ws_2015 %>%
  mutate(id = row_number())

Thor_2015_all <- full_join(Thor_serc_2015_merge, Thor_ws_2015_merge, by = c("Year","id"))


Thor_serc_2016 <- subset(Thor_serc_year, Year == "2016")
Thor_serc_2016_merge <- Thor_serc_2016 %>%
  mutate(id = row_number())

Thor_ws_2016 <- subset(Thor_ws_year, Year == "2016")
Thor_ws_2016_merge <- Thor_ws_2016 %>%
  mutate(id = row_number())

Thor_2016_all <- full_join(Thor_serc_2016_merge, Thor_ws_2016_merge, by = c("Year","id"))



Thor_serc_2017 <- subset(Thor_serc_year, Year == "2017")
Thor_serc_2017_merge <- Thor_serc_2017 %>%
  mutate(id = row_number())

Thor_ws_2017 <- subset(Thor_ws_year, Year == "2017")
Thor_ws_2017_merge <- Thor_ws_2017 %>%
  mutate(id = row_number())

Thor_2017_all <- full_join(Thor_serc_2017_merge, Thor_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Thor_ws_2018_all <- subset(Thor_ws_year, Year == "2018") 

## adding extra columns to merge 

Thor_ws_2018_all$LATDEC <- "NA"
Thor_ws_2018_all$LONDEC <- "NA"
Thor_ws_2018_all$DEPTH <- "NA"
Thor_ws_2018_all$NOX_S <- "NA"
Thor_ws_2018_all$NOX_B <- "NA"
Thor_ws_2018_all$NO3_S <- "NA"
Thor_ws_2018_all$NO3_B <- "NA"
Thor_ws_2018_all$NO2_S <- "NA"
Thor_ws_2018_all$NO2_B <- "NA"
Thor_ws_2018_all$NH4_S <- "NA"
Thor_ws_2018_all$NH4_B <- "NA"
Thor_ws_2018_all$TN_S <- "NA"
Thor_ws_2018_all$TN_B <- "NA"
Thor_ws_2018_all$DIN_S <- "NA"
Thor_ws_2018_all$DIN_B <- "NA"
Thor_ws_2018_all$TON_S <- "NA"
Thor_ws_2018_all$TON_B <- "NA"
Thor_ws_2018_all$TP_S <- "NA"
Thor_ws_2018_all$TP_B <- "NA"
Thor_ws_2018_all$SRP_S <- "NA"
Thor_ws_2018_all$SRP_B <- "NA"
Thor_ws_2018_all$APA_S <- "NA"
Thor_ws_2018_all$APA_B <- "NA"
Thor_ws_2018_all$CHLA_S <- "NA"
Thor_ws_2018_all$CHLA_B <- "NA"
Thor_ws_2018_all$TOC_S <- "NA"
Thor_ws_2018_all$TOC_B <- "NA"
Thor_ws_2018_all$SiO2_S <- "NA"
Thor_ws_2018_all$SiO2_B <- "NA"
Thor_ws_2018_all$TURB_S <- "NA"
Thor_ws_2018_all$TURB_B <- "NA"
Thor_ws_2018_all$SAL_S <- "NA"
Thor_ws_2018_all$SAL_B <- "NA"
Thor_ws_2018_all$TEMP_S <- "NA"
Thor_ws_2018_all$TEMP_B <- "NA"
Thor_ws_2018_all$DO_S <- "NA"
Thor_ws_2018_all$DO_B <- "NA"
Thor_ws_2018_all$Kd <- "NA"
Thor_ws_2018_all$pH <- "NA"
Thor_ws_2018_all$TN_TP <- "NA"
Thor_ws_2018_all$N_P <- "NA"
Thor_ws_2018_all$DIN_TP <- "NA"
Thor_ws_2018_all$Si_DIN <- "NA"
Thor_ws_2018_all$F_SAT_S <- "NA"
Thor_ws_2018_all$F_SAT_B <- "NA"
Thor_ws_2018_all$F_Io <- "NA"
Thor_ws_2018_all$DSIGT <- "NA"
Thor_ws_2018_all$id <- "NA"







## rest of the serc data
Thor_serc_1995 <- subset(Thor_serc_year, Year == "1995")
Thor_serc_1996 <- subset(Thor_serc_year, Year == "1996")
Thor_serc_1997 <- subset(Thor_serc_year, Year == "1997")
# Thor_serc_1998 <- subset(Thor_serc_year, Year == "1998")
# Thor_serc_1999 <- subset(Thor_serc_year, Year == "1999")
# Thor_serc_2000 <- subset(Thor_serc_year, Year == "2000")
# Thor_serc_2001 <- subset(Thor_serc_year, Year == "2001")
Thor_serc_2013 <- subset(Thor_serc_year, Year == "2013")



Thor_serc_extra <- rbind(Thor_serc_1995,Thor_serc_1996,Thor_serc_1997,Thor_serc_2013)




Thor_serc_extra$Longitude <- "NA"
Thor_serc_extra$Latitude <- "NA"
Thor_serc_extra$Depth <- "NA"
Thor_serc_extra$SST <- "NA"
Thor_serc_extra$SSS <- "NA"
Thor_serc_extra$Chl_a <- "NA"
Thor_serc_extra$Phaeophyti <- "NA"
Thor_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Thor_ws_2018_all <- setcolorder(Thor_ws_2018_all, names(Thor_serc_extra))

## Merge all years together 

Thor_all <- rbind(Thor_serc_extra,Thor_1998_all,Thor_1999_all,Thor_2000_all,Thor_2001_all,Thor_2002_all,Thor_2003_all,Thor_2004_all, Thor_2005_all,Thor_2006_all,Thor_2007_all,Thor_2008_all,Thor_2009_all,Thor_2010_all,Thor_2011_all,Thor_2012_all,Thor_2014_all,Thor_2015_all,Thor_2016_all,Thor_2017_all,Thor_ws_2018_all)
Thor_all$sitename <- "Thor"

export(Thor_all,"MK_10km/Thor_combined.csv")



West_Turtle_Shoal_serc <- import("MK_10km/West_Turtle_Shoal_serc.xls")
West_Turtle_Shoal_ws <- import("MK_10km/West_Turtle_Shoal_ws.xls")

## Change date to Year to merge the two dataframes

West_Turtle_Shoal_serc_date <- format(as.Date(West_Turtle_Shoal_serc$DATE_, format = "%Y %m %d"),"%Y")
West_Turtle_Shoal_serc_frame <- data.frame(West_Turtle_Shoal_serc_date)
West_Turtle_Shoal_serc_year <- cbind(West_Turtle_Shoal_serc_frame, West_Turtle_Shoal_serc)
colnames(West_Turtle_Shoal_serc_year)[1]<- "Year"
West_Turtle_Shoal_serc_year$FID <- NULL
West_Turtle_Shoal_serc_year$SURV <- NULL
West_Turtle_Shoal_serc_year$BASIN <- NULL
West_Turtle_Shoal_serc_year$SEGMENT <- NULL
West_Turtle_Shoal_serc_year$ZONE_ <- NULL
West_Turtle_Shoal_serc_year$TIME_ <- NULL
West_Turtle_Shoal_serc_year$DATE_ <- NULL
West_Turtle_Shoal_serc_year$STATION <- NULL
West_Turtle_Shoal_serc_year$SITE <- NULL



West_Turtle_Shoal_ws_date <- format(as.Date(West_Turtle_Shoal_ws$Date_, format = "%Y %m %d"),"%Y")
West_Turtle_Shoal_ws_frame <- data.frame(West_Turtle_Shoal_ws_date)
West_Turtle_Shoal_ws_year <- cbind(West_Turtle_Shoal_ws_frame, West_Turtle_Shoal_ws)
colnames(West_Turtle_Shoal_ws_year)[1]<- "Year"
West_Turtle_Shoal_ws_year$FID <- NULL
West_Turtle_Shoal_ws_year$Station <- NULL
West_Turtle_Shoal_ws_year$Date_ <- NULL
West_Turtle_Shoal_ws_year$GMT <- NULL
West_Turtle_Shoal_ws_year$Field11 <- NULL
West_Turtle_Shoal_ws_year$Field12 <- NULL
West_Turtle_Shoal_ws_year$Field13 <- NULL
West_Turtle_Shoal_ws_year$Field14 <- NULL
West_Turtle_Shoal_ws_year$Field15 <- NULL
West_Turtle_Shoal_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(West_Turtle_Shoal_serc_year$Year)
unique(West_Turtle_Shoal_ws_year$Year)



West_Turtle_Shoal_serc_1998 <- subset(West_Turtle_Shoal_serc_year, Year == "1998")
West_Turtle_Shoal_serc_1998_merge <- West_Turtle_Shoal_serc_1998 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_1998 <- subset(West_Turtle_Shoal_ws_year, Year == "1998")
West_Turtle_Shoal_ws_1998_merge <- West_Turtle_Shoal_ws_1998 %>%
  mutate(id = row_number())

West_Turtle_Shoal_1998_all <- full_join(West_Turtle_Shoal_serc_1998_merge, West_Turtle_Shoal_ws_1998_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_1999 <- subset(West_Turtle_Shoal_serc_year, Year == "1999")
West_Turtle_Shoal_serc_1999_merge <- West_Turtle_Shoal_serc_1999 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_1999 <- subset(West_Turtle_Shoal_ws_year, Year == "1999")
West_Turtle_Shoal_ws_1999_merge <- West_Turtle_Shoal_ws_1999 %>%
  mutate(id = row_number())

West_Turtle_Shoal_1999_all <- full_join(West_Turtle_Shoal_serc_1999_merge, West_Turtle_Shoal_ws_1999_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_2000 <- subset(West_Turtle_Shoal_serc_year, Year == "2000")
West_Turtle_Shoal_serc_2000_merge <- West_Turtle_Shoal_serc_2000 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2000 <- subset(West_Turtle_Shoal_ws_year, Year == "2000")
West_Turtle_Shoal_ws_2000_merge <- West_Turtle_Shoal_ws_2000 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2000_all <- full_join(West_Turtle_Shoal_serc_2000_merge, West_Turtle_Shoal_ws_2000_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_2001 <- subset(West_Turtle_Shoal_serc_year, Year == "2001")
West_Turtle_Shoal_serc_2001_merge <- West_Turtle_Shoal_serc_2001 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2001 <- subset(West_Turtle_Shoal_ws_year, Year == "2001")
West_Turtle_Shoal_ws_2001_merge <- West_Turtle_Shoal_ws_2001 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2001_all <- full_join(West_Turtle_Shoal_serc_2001_merge, West_Turtle_Shoal_ws_2001_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_2002 <- subset(West_Turtle_Shoal_serc_year, Year == "2002")
West_Turtle_Shoal_serc_2002_merge <- West_Turtle_Shoal_serc_2002 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2002 <- subset(West_Turtle_Shoal_ws_year, Year == "2002")
West_Turtle_Shoal_ws_2002_merge <- West_Turtle_Shoal_ws_2002 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2002_all <- full_join(West_Turtle_Shoal_serc_2002_merge, West_Turtle_Shoal_ws_2002_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_2003 <- subset(West_Turtle_Shoal_serc_year, Year == "2003")
West_Turtle_Shoal_serc_2003_merge <- West_Turtle_Shoal_serc_2003 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2003 <- subset(West_Turtle_Shoal_ws_year, Year == "2003")
West_Turtle_Shoal_ws_2003_merge <- West_Turtle_Shoal_ws_2003 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2003_all <- full_join(West_Turtle_Shoal_serc_2003_merge, West_Turtle_Shoal_ws_2003_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_2004 <- subset(West_Turtle_Shoal_serc_year, Year == "2004")
West_Turtle_Shoal_serc_2004_merge <- West_Turtle_Shoal_serc_2004 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2004 <- subset(West_Turtle_Shoal_ws_year, Year == "2004")
West_Turtle_Shoal_ws_2004_merge <- West_Turtle_Shoal_ws_2004 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2004_all <- full_join(West_Turtle_Shoal_serc_2004_merge, West_Turtle_Shoal_ws_2004_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_2005 <- subset(West_Turtle_Shoal_serc_year, Year == "2005")
West_Turtle_Shoal_serc_2005_merge <- West_Turtle_Shoal_serc_2005 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2005 <- subset(West_Turtle_Shoal_ws_year, Year == "2005")
West_Turtle_Shoal_ws_2005_merge <- West_Turtle_Shoal_ws_2005 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2005_all <- full_join(West_Turtle_Shoal_serc_2005_merge, West_Turtle_Shoal_ws_2005_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_2006 <- subset(West_Turtle_Shoal_serc_year, Year == "2006")
West_Turtle_Shoal_serc_2006_merge <- West_Turtle_Shoal_serc_2006 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2006 <- subset(West_Turtle_Shoal_ws_year, Year == "2006")
West_Turtle_Shoal_ws_2006_merge <- West_Turtle_Shoal_ws_2006 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2006_all <- full_join(West_Turtle_Shoal_serc_2006_merge, West_Turtle_Shoal_ws_2006_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_2007 <- subset(West_Turtle_Shoal_serc_year, Year == "2007")
West_Turtle_Shoal_serc_2007_merge <- West_Turtle_Shoal_serc_2007 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2007 <- subset(West_Turtle_Shoal_ws_year, Year == "2007")
West_Turtle_Shoal_ws_2007_merge <- West_Turtle_Shoal_ws_2007 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2007_all <- full_join(West_Turtle_Shoal_serc_2007_merge, West_Turtle_Shoal_ws_2007_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_2008 <- subset(West_Turtle_Shoal_serc_year, Year == "2008")
West_Turtle_Shoal_serc_2008_merge <- West_Turtle_Shoal_serc_2008 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2008 <- subset(West_Turtle_Shoal_ws_year, Year == "2008")
West_Turtle_Shoal_ws_2008_merge <- West_Turtle_Shoal_ws_2008 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2008_all <- full_join(West_Turtle_Shoal_serc_2008_merge, West_Turtle_Shoal_ws_2008_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_2009 <- subset(West_Turtle_Shoal_serc_year, Year == "2009")
West_Turtle_Shoal_serc_2009_merge <- West_Turtle_Shoal_serc_2009 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2009 <- subset(West_Turtle_Shoal_ws_year, Year == "2009")
West_Turtle_Shoal_ws_2009_merge <- West_Turtle_Shoal_ws_2009 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2009_all <- full_join(West_Turtle_Shoal_serc_2009_merge, West_Turtle_Shoal_ws_2009_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_2010 <- subset(West_Turtle_Shoal_serc_year, Year == "2010")
West_Turtle_Shoal_serc_2010_merge <- West_Turtle_Shoal_serc_2010 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2010 <- subset(West_Turtle_Shoal_ws_year, Year == "2010")
West_Turtle_Shoal_ws_2010_merge <- West_Turtle_Shoal_ws_2010 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2010_all <- full_join(West_Turtle_Shoal_serc_2010_merge, West_Turtle_Shoal_ws_2010_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_2011 <- subset(West_Turtle_Shoal_serc_year, Year == "2011")
West_Turtle_Shoal_serc_2011_merge <- West_Turtle_Shoal_serc_2011 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2011 <- subset(West_Turtle_Shoal_ws_year, Year == "2011")
West_Turtle_Shoal_ws_2011_merge <- West_Turtle_Shoal_ws_2011 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2011_all <- full_join(West_Turtle_Shoal_serc_2011_merge, West_Turtle_Shoal_ws_2011_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_2012 <- subset(West_Turtle_Shoal_serc_year, Year == "2012")
West_Turtle_Shoal_serc_2012_merge <- West_Turtle_Shoal_serc_2012 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2012 <- subset(West_Turtle_Shoal_ws_year, Year == "2012")
West_Turtle_Shoal_ws_2012_merge <- West_Turtle_Shoal_ws_2012 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2012_all <- full_join(West_Turtle_Shoal_serc_2012_merge, West_Turtle_Shoal_ws_2012_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_2014 <- subset(West_Turtle_Shoal_serc_year, Year == "2014")
West_Turtle_Shoal_serc_2014_merge <- West_Turtle_Shoal_serc_2014 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2014 <- subset(West_Turtle_Shoal_ws_year, Year == "2014")
West_Turtle_Shoal_ws_2014_merge <- West_Turtle_Shoal_ws_2014 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2014_all <- full_join(West_Turtle_Shoal_serc_2014_merge, West_Turtle_Shoal_ws_2014_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_2015 <- subset(West_Turtle_Shoal_serc_year, Year == "2015")
West_Turtle_Shoal_serc_2015_merge <- West_Turtle_Shoal_serc_2015 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2015 <- subset(West_Turtle_Shoal_ws_year, Year == "2015")
West_Turtle_Shoal_ws_2015_merge <- West_Turtle_Shoal_ws_2015 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2015_all <- full_join(West_Turtle_Shoal_serc_2015_merge, West_Turtle_Shoal_ws_2015_merge, by = c("Year","id"))


West_Turtle_Shoal_serc_2016 <- subset(West_Turtle_Shoal_serc_year, Year == "2016")
West_Turtle_Shoal_serc_2016_merge <- West_Turtle_Shoal_serc_2016 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2016 <- subset(West_Turtle_Shoal_ws_year, Year == "2016")
West_Turtle_Shoal_ws_2016_merge <- West_Turtle_Shoal_ws_2016 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2016_all <- full_join(West_Turtle_Shoal_serc_2016_merge, West_Turtle_Shoal_ws_2016_merge, by = c("Year","id"))



West_Turtle_Shoal_serc_2017 <- subset(West_Turtle_Shoal_serc_year, Year == "2017")
West_Turtle_Shoal_serc_2017_merge <- West_Turtle_Shoal_serc_2017 %>%
  mutate(id = row_number())

West_Turtle_Shoal_ws_2017 <- subset(West_Turtle_Shoal_ws_year, Year == "2017")
West_Turtle_Shoal_ws_2017_merge <- West_Turtle_Shoal_ws_2017 %>%
  mutate(id = row_number())

West_Turtle_Shoal_2017_all <- full_join(West_Turtle_Shoal_serc_2017_merge, West_Turtle_Shoal_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

West_Turtle_Shoal_ws_2018_all <- subset(West_Turtle_Shoal_ws_year, Year == "2018") 

## adding extra columns to merge 

West_Turtle_Shoal_ws_2018_all$LATDEC <- "NA"
West_Turtle_Shoal_ws_2018_all$LONDEC <- "NA"
West_Turtle_Shoal_ws_2018_all$DEPTH <- "NA"
West_Turtle_Shoal_ws_2018_all$NOX_S <- "NA"
West_Turtle_Shoal_ws_2018_all$NOX_B <- "NA"
West_Turtle_Shoal_ws_2018_all$NO3_S <- "NA"
West_Turtle_Shoal_ws_2018_all$NO3_B <- "NA"
West_Turtle_Shoal_ws_2018_all$NO2_S <- "NA"
West_Turtle_Shoal_ws_2018_all$NO2_B <- "NA"
West_Turtle_Shoal_ws_2018_all$NH4_S <- "NA"
West_Turtle_Shoal_ws_2018_all$NH4_B <- "NA"
West_Turtle_Shoal_ws_2018_all$TN_S <- "NA"
West_Turtle_Shoal_ws_2018_all$TN_B <- "NA"
West_Turtle_Shoal_ws_2018_all$DIN_S <- "NA"
West_Turtle_Shoal_ws_2018_all$DIN_B <- "NA"
West_Turtle_Shoal_ws_2018_all$TON_S <- "NA"
West_Turtle_Shoal_ws_2018_all$TON_B <- "NA"
West_Turtle_Shoal_ws_2018_all$TP_S <- "NA"
West_Turtle_Shoal_ws_2018_all$TP_B <- "NA"
West_Turtle_Shoal_ws_2018_all$SRP_S <- "NA"
West_Turtle_Shoal_ws_2018_all$SRP_B <- "NA"
West_Turtle_Shoal_ws_2018_all$APA_S <- "NA"
West_Turtle_Shoal_ws_2018_all$APA_B <- "NA"
West_Turtle_Shoal_ws_2018_all$CHLA_S <- "NA"
West_Turtle_Shoal_ws_2018_all$CHLA_B <- "NA"
West_Turtle_Shoal_ws_2018_all$TOC_S <- "NA"
West_Turtle_Shoal_ws_2018_all$TOC_B <- "NA"
West_Turtle_Shoal_ws_2018_all$SiO2_S <- "NA"
West_Turtle_Shoal_ws_2018_all$SiO2_B <- "NA"
West_Turtle_Shoal_ws_2018_all$TURB_S <- "NA"
West_Turtle_Shoal_ws_2018_all$TURB_B <- "NA"
West_Turtle_Shoal_ws_2018_all$SAL_S <- "NA"
West_Turtle_Shoal_ws_2018_all$SAL_B <- "NA"
West_Turtle_Shoal_ws_2018_all$TEMP_S <- "NA"
West_Turtle_Shoal_ws_2018_all$TEMP_B <- "NA"
West_Turtle_Shoal_ws_2018_all$DO_S <- "NA"
West_Turtle_Shoal_ws_2018_all$DO_B <- "NA"
West_Turtle_Shoal_ws_2018_all$Kd <- "NA"
West_Turtle_Shoal_ws_2018_all$pH <- "NA"
West_Turtle_Shoal_ws_2018_all$TN_TP <- "NA"
West_Turtle_Shoal_ws_2018_all$N_P <- "NA"
West_Turtle_Shoal_ws_2018_all$DIN_TP <- "NA"
West_Turtle_Shoal_ws_2018_all$Si_DIN <- "NA"
West_Turtle_Shoal_ws_2018_all$F_SAT_S <- "NA"
West_Turtle_Shoal_ws_2018_all$F_SAT_B <- "NA"
West_Turtle_Shoal_ws_2018_all$F_Io <- "NA"
West_Turtle_Shoal_ws_2018_all$DSIGT <- "NA"
West_Turtle_Shoal_ws_2018_all$id <- "NA"







## rest of the serc data
West_Turtle_Shoal_serc_1995 <- subset(West_Turtle_Shoal_serc_year, Year == "1995")
West_Turtle_Shoal_serc_1996 <- subset(West_Turtle_Shoal_serc_year, Year == "1996")
West_Turtle_Shoal_serc_1997 <- subset(West_Turtle_Shoal_serc_year, Year == "1997")
# West_Turtle_Shoal_serc_1998 <- subset(West_Turtle_Shoal_serc_year, Year == "1998")
# West_Turtle_Shoal_serc_1999 <- subset(West_Turtle_Shoal_serc_year, Year == "1999")
# West_Turtle_Shoal_serc_2000 <- subset(West_Turtle_Shoal_serc_year, Year == "2000")
# West_Turtle_Shoal_serc_2001 <- subset(West_Turtle_Shoal_serc_year, Year == "2001")
West_Turtle_Shoal_serc_2013 <- subset(West_Turtle_Shoal_serc_year, Year == "2013")



West_Turtle_Shoal_serc_extra <- rbind(West_Turtle_Shoal_serc_1995,West_Turtle_Shoal_serc_1996,West_Turtle_Shoal_serc_1997,West_Turtle_Shoal_serc_2013)




West_Turtle_Shoal_serc_extra$Longitude <- "NA"
West_Turtle_Shoal_serc_extra$Latitude <- "NA"
West_Turtle_Shoal_serc_extra$Depth <- "NA"
West_Turtle_Shoal_serc_extra$SST <- "NA"
West_Turtle_Shoal_serc_extra$SSS <- "NA"
West_Turtle_Shoal_serc_extra$Chl_a <- "NA"
West_Turtle_Shoal_serc_extra$Phaeophyti <- "NA"
West_Turtle_Shoal_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

West_Turtle_Shoal_ws_2018_all <- setcolorder(West_Turtle_Shoal_ws_2018_all, names(West_Turtle_Shoal_serc_extra))

## Merge all years together 

West_Turtle_Shoal_all <- rbind(West_Turtle_Shoal_serc_extra,West_Turtle_Shoal_1998_all,West_Turtle_Shoal_1999_all,West_Turtle_Shoal_2000_all,West_Turtle_Shoal_2001_all,West_Turtle_Shoal_2002_all,West_Turtle_Shoal_2003_all,West_Turtle_Shoal_2004_all, West_Turtle_Shoal_2005_all,West_Turtle_Shoal_2006_all,West_Turtle_Shoal_2007_all,West_Turtle_Shoal_2008_all,West_Turtle_Shoal_2009_all,West_Turtle_Shoal_2010_all,West_Turtle_Shoal_2011_all,West_Turtle_Shoal_2012_all,West_Turtle_Shoal_2014_all,West_Turtle_Shoal_2015_all,West_Turtle_Shoal_2016_all,West_Turtle_Shoal_2017_all,West_Turtle_Shoal_ws_2018_all)
West_Turtle_Shoal_all$sitename <- "West_Turtle_Shoal"

export(West_Turtle_Shoal_all,"MK_10km/West_Turtle_Shoal_combined.csv")


### Combine all Middle Keys

Middle_Keys_all <- rbind(Alligator_Deep_serc_year,Alligator_Shallow_serc_year,Dustan_Rocks_all,Long_Key_all,Molasses_Keys_all,Moser_Channel_all,Rawa_Reef_all,Sombrero_Deep_all,Sombrero_Shallow_all,Tennessee_Deep_all,Tennessee_Shallow_all,Thor_all,West_Turtle_Shoal_all)

export(Middle_Keys_all,"MK_10km/MK_Nutrients_Combined.csv")


### Upper Keys 

Admiral_serc <- import("UK_10km/Admiral_serc.xls")
Admiral_ws <- import("UK_10km/Admiral_ws.xls")

## Change date to Year to merge the two dataframes

Admiral_serc_date <- format(as.Date(Admiral_serc$DATE_, format = "%Y %m %d"),"%Y")
Admiral_serc_frame <- data.frame(Admiral_serc_date)
Admiral_serc_year <- cbind(Admiral_serc_frame, Admiral_serc)
colnames(Admiral_serc_year)[1]<- "Year"
Admiral_serc_year$FID <- NULL
Admiral_serc_year$SURV <- NULL
Admiral_serc_year$BASIN <- NULL
Admiral_serc_year$SEGMENT <- NULL
Admiral_serc_year$ZONE_ <- NULL
Admiral_serc_year$TIME_ <- NULL
Admiral_serc_year$DATE_ <- NULL
Admiral_serc_year$STATION <- NULL
Admiral_serc_year$SITE <- NULL



Admiral_ws_date <- format(as.Date(Admiral_ws$Date_, format = "%Y %m %d"),"%Y")
Admiral_ws_frame <- data.frame(Admiral_ws_date)
Admiral_ws_year <- cbind(Admiral_ws_frame, Admiral_ws)
colnames(Admiral_ws_year)[1]<- "Year"
Admiral_ws_year$FID <- NULL
Admiral_ws_year$Station <- NULL
Admiral_ws_year$Date_ <- NULL
Admiral_ws_year$GMT <- NULL
Admiral_ws_year$Field11 <- NULL
Admiral_ws_year$Field12 <- NULL
Admiral_ws_year$Field13 <- NULL
Admiral_ws_year$Field14 <- NULL
Admiral_ws_year$Field15 <- NULL
Admiral_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Admiral_serc_year$Year)
unique(Admiral_ws_year$Year)



Admiral_serc_1998 <- subset(Admiral_serc_year, Year == "1998")
Admiral_serc_1998_merge <- Admiral_serc_1998 %>%
  mutate(id = row_number())

Admiral_ws_1998 <- subset(Admiral_ws_year, Year == "1998")
Admiral_ws_1998_merge <- Admiral_ws_1998 %>%
  mutate(id = row_number())

Admiral_1998_all <- full_join(Admiral_serc_1998_merge, Admiral_ws_1998_merge, by = c("Year","id"))


Admiral_serc_1999 <- subset(Admiral_serc_year, Year == "1999")
Admiral_serc_1999_merge <- Admiral_serc_1999 %>%
  mutate(id = row_number())

Admiral_ws_1999 <- subset(Admiral_ws_year, Year == "1999")
Admiral_ws_1999_merge <- Admiral_ws_1999 %>%
  mutate(id = row_number())

Admiral_1999_all <- full_join(Admiral_serc_1999_merge, Admiral_ws_1999_merge, by = c("Year","id"))


Admiral_serc_2000 <- subset(Admiral_serc_year, Year == "2000")
Admiral_serc_2000_merge <- Admiral_serc_2000 %>%
  mutate(id = row_number())

Admiral_ws_2000 <- subset(Admiral_ws_year, Year == "2000")
Admiral_ws_2000_merge <- Admiral_ws_2000 %>%
  mutate(id = row_number())

Admiral_2000_all <- full_join(Admiral_serc_2000_merge, Admiral_ws_2000_merge, by = c("Year","id"))


Admiral_serc_2001 <- subset(Admiral_serc_year, Year == "2001")
Admiral_serc_2001_merge <- Admiral_serc_2001 %>%
  mutate(id = row_number())

Admiral_ws_2001 <- subset(Admiral_ws_year, Year == "2001")
Admiral_ws_2001_merge <- Admiral_ws_2001 %>%
  mutate(id = row_number())

Admiral_2001_all <- full_join(Admiral_serc_2001_merge, Admiral_ws_2001_merge, by = c("Year","id"))


Admiral_serc_2002 <- subset(Admiral_serc_year, Year == "2002")
Admiral_serc_2002_merge <- Admiral_serc_2002 %>%
  mutate(id = row_number())

Admiral_ws_2002 <- subset(Admiral_ws_year, Year == "2002")
Admiral_ws_2002_merge <- Admiral_ws_2002 %>%
  mutate(id = row_number())

Admiral_2002_all <- full_join(Admiral_serc_2002_merge, Admiral_ws_2002_merge, by = c("Year","id"))


Admiral_serc_2003 <- subset(Admiral_serc_year, Year == "2003")
Admiral_serc_2003_merge <- Admiral_serc_2003 %>%
  mutate(id = row_number())

Admiral_ws_2003 <- subset(Admiral_ws_year, Year == "2003")
Admiral_ws_2003_merge <- Admiral_ws_2003 %>%
  mutate(id = row_number())

Admiral_2003_all <- full_join(Admiral_serc_2003_merge, Admiral_ws_2003_merge, by = c("Year","id"))


Admiral_serc_2004 <- subset(Admiral_serc_year, Year == "2004")
Admiral_serc_2004_merge <- Admiral_serc_2004 %>%
  mutate(id = row_number())

Admiral_ws_2004 <- subset(Admiral_ws_year, Year == "2004")
Admiral_ws_2004_merge <- Admiral_ws_2004 %>%
  mutate(id = row_number())

Admiral_2004_all <- full_join(Admiral_serc_2004_merge, Admiral_ws_2004_merge, by = c("Year","id"))


Admiral_serc_2005 <- subset(Admiral_serc_year, Year == "2005")
Admiral_serc_2005_merge <- Admiral_serc_2005 %>%
  mutate(id = row_number())

Admiral_ws_2005 <- subset(Admiral_ws_year, Year == "2005")
Admiral_ws_2005_merge <- Admiral_ws_2005 %>%
  mutate(id = row_number())

Admiral_2005_all <- full_join(Admiral_serc_2005_merge, Admiral_ws_2005_merge, by = c("Year","id"))


Admiral_serc_2006 <- subset(Admiral_serc_year, Year == "2006")
Admiral_serc_2006_merge <- Admiral_serc_2006 %>%
  mutate(id = row_number())

Admiral_ws_2006 <- subset(Admiral_ws_year, Year == "2006")
Admiral_ws_2006_merge <- Admiral_ws_2006 %>%
  mutate(id = row_number())

Admiral_2006_all <- full_join(Admiral_serc_2006_merge, Admiral_ws_2006_merge, by = c("Year","id"))


Admiral_serc_2007 <- subset(Admiral_serc_year, Year == "2007")
Admiral_serc_2007_merge <- Admiral_serc_2007 %>%
  mutate(id = row_number())

Admiral_ws_2007 <- subset(Admiral_ws_year, Year == "2007")
Admiral_ws_2007_merge <- Admiral_ws_2007 %>%
  mutate(id = row_number())

Admiral_2007_all <- full_join(Admiral_serc_2007_merge, Admiral_ws_2007_merge, by = c("Year","id"))


Admiral_serc_2008 <- subset(Admiral_serc_year, Year == "2008")
Admiral_serc_2008_merge <- Admiral_serc_2008 %>%
  mutate(id = row_number())

Admiral_ws_2008 <- subset(Admiral_ws_year, Year == "2008")
Admiral_ws_2008_merge <- Admiral_ws_2008 %>%
  mutate(id = row_number())

Admiral_2008_all <- full_join(Admiral_serc_2008_merge, Admiral_ws_2008_merge, by = c("Year","id"))


Admiral_serc_2009 <- subset(Admiral_serc_year, Year == "2009")
Admiral_serc_2009_merge <- Admiral_serc_2009 %>%
  mutate(id = row_number())

Admiral_ws_2009 <- subset(Admiral_ws_year, Year == "2009")
Admiral_ws_2009_merge <- Admiral_ws_2009 %>%
  mutate(id = row_number())

Admiral_2009_all <- full_join(Admiral_serc_2009_merge, Admiral_ws_2009_merge, by = c("Year","id"))


Admiral_serc_2010 <- subset(Admiral_serc_year, Year == "2010")
Admiral_serc_2010_merge <- Admiral_serc_2010 %>%
  mutate(id = row_number())

Admiral_ws_2010 <- subset(Admiral_ws_year, Year == "2010")
Admiral_ws_2010_merge <- Admiral_ws_2010 %>%
  mutate(id = row_number())

Admiral_2010_all <- full_join(Admiral_serc_2010_merge, Admiral_ws_2010_merge, by = c("Year","id"))


Admiral_serc_2011 <- subset(Admiral_serc_year, Year == "2011")
Admiral_serc_2011_merge <- Admiral_serc_2011 %>%
  mutate(id = row_number())

Admiral_ws_2011 <- subset(Admiral_ws_year, Year == "2011")
Admiral_ws_2011_merge <- Admiral_ws_2011 %>%
  mutate(id = row_number())

Admiral_2011_all <- full_join(Admiral_serc_2011_merge, Admiral_ws_2011_merge, by = c("Year","id"))


Admiral_serc_2012 <- subset(Admiral_serc_year, Year == "2012")
Admiral_serc_2012_merge <- Admiral_serc_2012 %>%
  mutate(id = row_number())

Admiral_ws_2012 <- subset(Admiral_ws_year, Year == "2012")
Admiral_ws_2012_merge <- Admiral_ws_2012 %>%
  mutate(id = row_number())

Admiral_2012_all <- full_join(Admiral_serc_2012_merge, Admiral_ws_2012_merge, by = c("Year","id"))


Admiral_serc_2014 <- subset(Admiral_serc_year, Year == "2014")
Admiral_serc_2014_merge <- Admiral_serc_2014 %>%
  mutate(id = row_number())

Admiral_ws_2014 <- subset(Admiral_ws_year, Year == "2014")
Admiral_ws_2014_merge <- Admiral_ws_2014 %>%
  mutate(id = row_number())

Admiral_2014_all <- full_join(Admiral_serc_2014_merge, Admiral_ws_2014_merge, by = c("Year","id"))


Admiral_serc_2015 <- subset(Admiral_serc_year, Year == "2015")
Admiral_serc_2015_merge <- Admiral_serc_2015 %>%
  mutate(id = row_number())

Admiral_ws_2015 <- subset(Admiral_ws_year, Year == "2015")
Admiral_ws_2015_merge <- Admiral_ws_2015 %>%
  mutate(id = row_number())

Admiral_2015_all <- full_join(Admiral_serc_2015_merge, Admiral_ws_2015_merge, by = c("Year","id"))


Admiral_serc_2016 <- subset(Admiral_serc_year, Year == "2016")
Admiral_serc_2016_merge <- Admiral_serc_2016 %>%
  mutate(id = row_number())

Admiral_ws_2016 <- subset(Admiral_ws_year, Year == "2016")
Admiral_ws_2016_merge <- Admiral_ws_2016 %>%
  mutate(id = row_number())

Admiral_2016_all <- full_join(Admiral_serc_2016_merge, Admiral_ws_2016_merge, by = c("Year","id"))



Admiral_serc_2017 <- subset(Admiral_serc_year, Year == "2017")
Admiral_serc_2017_merge <- Admiral_serc_2017 %>%
  mutate(id = row_number())

Admiral_ws_2017 <- subset(Admiral_ws_year, Year == "2017")
Admiral_ws_2017_merge <- Admiral_ws_2017 %>%
  mutate(id = row_number())

Admiral_2017_all <- full_join(Admiral_serc_2017_merge, Admiral_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Admiral_ws_2018_all <- subset(Admiral_ws_year, Year == "2018") 

## adding extra columns to merge 

Admiral_ws_2018_all$LATDEC <- "NA"
Admiral_ws_2018_all$LONDEC <- "NA"
Admiral_ws_2018_all$DEPTH <- "NA"
Admiral_ws_2018_all$NOX_S <- "NA"
Admiral_ws_2018_all$NOX_B <- "NA"
Admiral_ws_2018_all$NO3_S <- "NA"
Admiral_ws_2018_all$NO3_B <- "NA"
Admiral_ws_2018_all$NO2_S <- "NA"
Admiral_ws_2018_all$NO2_B <- "NA"
Admiral_ws_2018_all$NH4_S <- "NA"
Admiral_ws_2018_all$NH4_B <- "NA"
Admiral_ws_2018_all$TN_S <- "NA"
Admiral_ws_2018_all$TN_B <- "NA"
Admiral_ws_2018_all$DIN_S <- "NA"
Admiral_ws_2018_all$DIN_B <- "NA"
Admiral_ws_2018_all$TON_S <- "NA"
Admiral_ws_2018_all$TON_B <- "NA"
Admiral_ws_2018_all$TP_S <- "NA"
Admiral_ws_2018_all$TP_B <- "NA"
Admiral_ws_2018_all$SRP_S <- "NA"
Admiral_ws_2018_all$SRP_B <- "NA"
Admiral_ws_2018_all$APA_S <- "NA"
Admiral_ws_2018_all$APA_B <- "NA"
Admiral_ws_2018_all$CHLA_S <- "NA"
Admiral_ws_2018_all$CHLA_B <- "NA"
Admiral_ws_2018_all$TOC_S <- "NA"
Admiral_ws_2018_all$TOC_B <- "NA"
Admiral_ws_2018_all$SiO2_S <- "NA"
Admiral_ws_2018_all$SiO2_B <- "NA"
Admiral_ws_2018_all$TURB_S <- "NA"
Admiral_ws_2018_all$TURB_B <- "NA"
Admiral_ws_2018_all$SAL_S <- "NA"
Admiral_ws_2018_all$SAL_B <- "NA"
Admiral_ws_2018_all$TEMP_S <- "NA"
Admiral_ws_2018_all$TEMP_B <- "NA"
Admiral_ws_2018_all$DO_S <- "NA"
Admiral_ws_2018_all$DO_B <- "NA"
Admiral_ws_2018_all$Kd <- "NA"
Admiral_ws_2018_all$pH <- "NA"
Admiral_ws_2018_all$TN_TP <- "NA"
Admiral_ws_2018_all$N_P <- "NA"
Admiral_ws_2018_all$DIN_TP <- "NA"
Admiral_ws_2018_all$Si_DIN <- "NA"
Admiral_ws_2018_all$F_SAT_S <- "NA"
Admiral_ws_2018_all$F_SAT_B <- "NA"
Admiral_ws_2018_all$F_Io <- "NA"
Admiral_ws_2018_all$DSIGT <- "NA"
Admiral_ws_2018_all$id <- "NA"







## rest of the serc data
Admiral_serc_1995 <- subset(Admiral_serc_year, Year == "1995")
Admiral_serc_1996 <- subset(Admiral_serc_year, Year == "1996")
Admiral_serc_1997 <- subset(Admiral_serc_year, Year == "1997")
# Admiral_serc_1998 <- subset(Admiral_serc_year, Year == "1998")
# Admiral_serc_1999 <- subset(Admiral_serc_year, Year == "1999")
# Admiral_serc_2000 <- subset(Admiral_serc_year, Year == "2000")
# Admiral_serc_2001 <- subset(Admiral_serc_year, Year == "2001")
Admiral_serc_2013 <- subset(Admiral_serc_year, Year == "2013")



Admiral_serc_extra <- rbind(Admiral_serc_1995,Admiral_serc_1996,Admiral_serc_1997,Admiral_serc_2013)




Admiral_serc_extra$Longitude <- "NA"
Admiral_serc_extra$Latitude <- "NA"
Admiral_serc_extra$Depth <- "NA"
Admiral_serc_extra$SST <- "NA"
Admiral_serc_extra$SSS <- "NA"
Admiral_serc_extra$Chl_a <- "NA"
Admiral_serc_extra$Phaeophyti <- "NA"
Admiral_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Admiral_ws_2018_all <- setcolorder(Admiral_ws_2018_all, names(Admiral_serc_extra))

## Merge all years together 

Admiral_all <- rbind(Admiral_serc_extra,Admiral_1998_all,Admiral_1999_all,Admiral_2000_all,Admiral_2001_all,Admiral_2002_all,Admiral_2003_all,Admiral_2004_all, Admiral_2005_all,Admiral_2006_all,Admiral_2007_all,Admiral_2008_all,Admiral_2009_all,Admiral_2010_all,Admiral_2011_all,Admiral_2012_all,Admiral_2014_all,Admiral_2015_all,Admiral_2016_all,Admiral_2017_all,Admiral_ws_2018_all)
Admiral_all$sitename <- "Admiral"


export(Admiral_all,"UK_10km/Admiral_combined.csv")





Burr_Fish_serc <- import("UK_10km/Burr_Fish_serc.xls")
Burr_Fish_ws <- import("UK_10km/Burr_Fish_ws.xls")

## Change date to Year to merge the two dataframes

Burr_Fish_serc_date <- format(as.Date(Burr_Fish_serc$DATE_, format = "%Y %m %d"),"%Y")
Burr_Fish_serc_frame <- data.frame(Burr_Fish_serc_date)
Burr_Fish_serc_year <- cbind(Burr_Fish_serc_frame, Burr_Fish_serc)
colnames(Burr_Fish_serc_year)[1]<- "Year"
Burr_Fish_serc_year$FID <- NULL
Burr_Fish_serc_year$SURV <- NULL
Burr_Fish_serc_year$BASIN <- NULL
Burr_Fish_serc_year$SEGMENT <- NULL
Burr_Fish_serc_year$ZONE_ <- NULL
Burr_Fish_serc_year$TIME_ <- NULL
Burr_Fish_serc_year$DATE_ <- NULL
Burr_Fish_serc_year$STATION <- NULL
Burr_Fish_serc_year$SITE <- NULL



Burr_Fish_ws_date <- format(as.Date(Burr_Fish_ws$Date_, format = "%Y %m %d"),"%Y")
Burr_Fish_ws_frame <- data.frame(Burr_Fish_ws_date)
Burr_Fish_ws_year <- cbind(Burr_Fish_ws_frame, Burr_Fish_ws)
colnames(Burr_Fish_ws_year)[1]<- "Year"
Burr_Fish_ws_year$FID <- NULL
Burr_Fish_ws_year$Station <- NULL
Burr_Fish_ws_year$Date_ <- NULL
Burr_Fish_ws_year$GMT <- NULL
Burr_Fish_ws_year$Field11 <- NULL
Burr_Fish_ws_year$Field12 <- NULL
Burr_Fish_ws_year$Field13 <- NULL
Burr_Fish_ws_year$Field14 <- NULL
Burr_Fish_ws_year$Field15 <- NULL
Burr_Fish_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Burr_Fish_serc_year$Year)
unique(Burr_Fish_ws_year$Year)




Burr_Fish_serc_2000 <- subset(Burr_Fish_serc_year, Year == "2000")
Burr_Fish_serc_2000_merge <- Burr_Fish_serc_2000 %>%
  mutate(id = row_number())

Burr_Fish_ws_2000 <- subset(Burr_Fish_ws_year, Year == "2000")
Burr_Fish_ws_2000_merge <- Burr_Fish_ws_2000 %>%
  mutate(id = row_number())

Burr_Fish_2000_all <- full_join(Burr_Fish_serc_2000_merge, Burr_Fish_ws_2000_merge, by = c("Year","id"))


Burr_Fish_serc_2001 <- subset(Burr_Fish_serc_year, Year == "2001")
Burr_Fish_serc_2001_merge <- Burr_Fish_serc_2001 %>%
  mutate(id = row_number())

Burr_Fish_ws_2001 <- subset(Burr_Fish_ws_year, Year == "2001")
Burr_Fish_ws_2001_merge <- Burr_Fish_ws_2001 %>%
  mutate(id = row_number())

Burr_Fish_2001_all <- full_join(Burr_Fish_serc_2001_merge, Burr_Fish_ws_2001_merge, by = c("Year","id"))


Burr_Fish_serc_2002 <- subset(Burr_Fish_serc_year, Year == "2002")
Burr_Fish_serc_2002_merge <- Burr_Fish_serc_2002 %>%
  mutate(id = row_number())

Burr_Fish_ws_2002 <- subset(Burr_Fish_ws_year, Year == "2002")
Burr_Fish_ws_2002_merge <- Burr_Fish_ws_2002 %>%
  mutate(id = row_number())

Burr_Fish_2002_all <- full_join(Burr_Fish_serc_2002_merge, Burr_Fish_ws_2002_merge, by = c("Year","id"))




Burr_Fish_serc_2015 <- subset(Burr_Fish_serc_year, Year == "2015")
Burr_Fish_serc_2015_merge <- Burr_Fish_serc_2015 %>%
  mutate(id = row_number())

Burr_Fish_ws_2015 <- subset(Burr_Fish_ws_year, Year == "2015")
Burr_Fish_ws_2015_merge <- Burr_Fish_ws_2015 %>%
  mutate(id = row_number())

Burr_Fish_2015_all <- full_join(Burr_Fish_serc_2015_merge, Burr_Fish_ws_2015_merge, by = c("Year","id"))


Burr_Fish_serc_2016 <- subset(Burr_Fish_serc_year, Year == "2016")
Burr_Fish_serc_2016_merge <- Burr_Fish_serc_2016 %>%
  mutate(id = row_number())

Burr_Fish_ws_2016 <- subset(Burr_Fish_ws_year, Year == "2016")
Burr_Fish_ws_2016_merge <- Burr_Fish_ws_2016 %>%
  mutate(id = row_number())

Burr_Fish_2016_all <- full_join(Burr_Fish_serc_2016_merge, Burr_Fish_ws_2016_merge, by = c("Year","id"))



Burr_Fish_serc_2017 <- subset(Burr_Fish_serc_year, Year == "2017")
Burr_Fish_serc_2017_merge <- Burr_Fish_serc_2017 %>%
  mutate(id = row_number())

Burr_Fish_ws_2017 <- subset(Burr_Fish_ws_year, Year == "2017")
Burr_Fish_ws_2017_merge <- Burr_Fish_ws_2017 %>%
  mutate(id = row_number())

Burr_Fish_2017_all <- full_join(Burr_Fish_serc_2017_merge, Burr_Fish_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Burr_Fish_ws_2018_all <- subset(Burr_Fish_ws_year, Year == "2018") 

## adding extra columns to merge 

Burr_Fish_ws_2018_all$LATDEC <- "NA"
Burr_Fish_ws_2018_all$LONDEC <- "NA"
Burr_Fish_ws_2018_all$DEPTH <- "NA"
Burr_Fish_ws_2018_all$NOX_S <- "NA"
Burr_Fish_ws_2018_all$NOX_B <- "NA"
Burr_Fish_ws_2018_all$NO3_S <- "NA"
Burr_Fish_ws_2018_all$NO3_B <- "NA"
Burr_Fish_ws_2018_all$NO2_S <- "NA"
Burr_Fish_ws_2018_all$NO2_B <- "NA"
Burr_Fish_ws_2018_all$NH4_S <- "NA"
Burr_Fish_ws_2018_all$NH4_B <- "NA"
Burr_Fish_ws_2018_all$TN_S <- "NA"
Burr_Fish_ws_2018_all$TN_B <- "NA"
Burr_Fish_ws_2018_all$DIN_S <- "NA"
Burr_Fish_ws_2018_all$DIN_B <- "NA"
Burr_Fish_ws_2018_all$TON_S <- "NA"
Burr_Fish_ws_2018_all$TON_B <- "NA"
Burr_Fish_ws_2018_all$TP_S <- "NA"
Burr_Fish_ws_2018_all$TP_B <- "NA"
Burr_Fish_ws_2018_all$SRP_S <- "NA"
Burr_Fish_ws_2018_all$SRP_B <- "NA"
Burr_Fish_ws_2018_all$APA_S <- "NA"
Burr_Fish_ws_2018_all$APA_B <- "NA"
Burr_Fish_ws_2018_all$CHLA_S <- "NA"
Burr_Fish_ws_2018_all$CHLA_B <- "NA"
Burr_Fish_ws_2018_all$TOC_S <- "NA"
Burr_Fish_ws_2018_all$TOC_B <- "NA"
Burr_Fish_ws_2018_all$SiO2_S <- "NA"
Burr_Fish_ws_2018_all$SiO2_B <- "NA"
Burr_Fish_ws_2018_all$TURB_S <- "NA"
Burr_Fish_ws_2018_all$TURB_B <- "NA"
Burr_Fish_ws_2018_all$SAL_S <- "NA"
Burr_Fish_ws_2018_all$SAL_B <- "NA"
Burr_Fish_ws_2018_all$TEMP_S <- "NA"
Burr_Fish_ws_2018_all$TEMP_B <- "NA"
Burr_Fish_ws_2018_all$DO_S <- "NA"
Burr_Fish_ws_2018_all$DO_B <- "NA"
Burr_Fish_ws_2018_all$Kd <- "NA"
Burr_Fish_ws_2018_all$pH <- "NA"
Burr_Fish_ws_2018_all$TN_TP <- "NA"
Burr_Fish_ws_2018_all$N_P <- "NA"
Burr_Fish_ws_2018_all$DIN_TP <- "NA"
Burr_Fish_ws_2018_all$Si_DIN <- "NA"
Burr_Fish_ws_2018_all$F_SAT_S <- "NA"
Burr_Fish_ws_2018_all$F_SAT_B <- "NA"
Burr_Fish_ws_2018_all$F_Io <- "NA"
Burr_Fish_ws_2018_all$DSIGT <- "NA"
Burr_Fish_ws_2018_all$id <- "NA"







## rest of the serc data
Burr_Fish_serc_1995 <- subset(Burr_Fish_serc_year, Year == "1995")
Burr_Fish_serc_1996 <- subset(Burr_Fish_serc_year, Year == "1996")
Burr_Fish_serc_1997 <- subset(Burr_Fish_serc_year, Year == "1997")
Burr_Fish_serc_1998 <- subset(Burr_Fish_serc_year, Year == "1998")
Burr_Fish_serc_1999 <- subset(Burr_Fish_serc_year, Year == "1999")
Burr_Fish_serc_2003 <- subset(Burr_Fish_serc_year, Year == "2003")
Burr_Fish_serc_2004 <- subset(Burr_Fish_serc_year, Year == "2004")
Burr_Fish_serc_2005 <- subset(Burr_Fish_serc_year, Year == "2005")
Burr_Fish_serc_2006 <- subset(Burr_Fish_serc_year, Year == "2006")
Burr_Fish_serc_2007 <- subset(Burr_Fish_serc_year, Year == "2007")
Burr_Fish_serc_2008 <- subset(Burr_Fish_serc_year, Year == "2008")
Burr_Fish_serc_2009 <- subset(Burr_Fish_serc_year, Year == "2009")
Burr_Fish_serc_2010 <- subset(Burr_Fish_serc_year, Year == "2010")
Burr_Fish_serc_2011 <- subset(Burr_Fish_serc_year, Year == "2011")
Burr_Fish_serc_2012 <- subset(Burr_Fish_serc_year, Year == "2012")
Burr_Fish_serc_2013 <- subset(Burr_Fish_serc_year, Year == "2013")
Burr_Fish_serc_2014 <- subset(Burr_Fish_serc_year, Year == "2014")



Burr_Fish_serc_extra <- rbind(Burr_Fish_serc_1995,Burr_Fish_serc_1996,Burr_Fish_serc_1997,Burr_Fish_serc_1998,Burr_Fish_serc_1999,Burr_Fish_serc_2003,Burr_Fish_serc_2004,Burr_Fish_serc_2005,Burr_Fish_serc_2006,Burr_Fish_serc_2007,Burr_Fish_serc_2008,Burr_Fish_serc_2009,Burr_Fish_serc_2010,Burr_Fish_serc_2011,Burr_Fish_serc_2012,Burr_Fish_serc_2013,Burr_Fish_serc_2014)




Burr_Fish_serc_extra$Longitude <- "NA"
Burr_Fish_serc_extra$Latitude <- "NA"
Burr_Fish_serc_extra$Depth <- "NA"
Burr_Fish_serc_extra$SST <- "NA"
Burr_Fish_serc_extra$SSS <- "NA"
Burr_Fish_serc_extra$Chl_a <- "NA"
Burr_Fish_serc_extra$Phaeophyti <- "NA"
Burr_Fish_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Burr_Fish_ws_2018_all <- setcolorder(Burr_Fish_ws_2018_all, names(Burr_Fish_serc_extra))

## Merge all years together 

Burr_Fish_all <- rbind(Burr_Fish_serc_extra,Burr_Fish_2000_all,Burr_Fish_2001_all,Burr_Fish_2002_all,Burr_Fish_2015_all,Burr_Fish_2016_all,Burr_Fish_2017_all,Burr_Fish_ws_2018_all)
Burr_Fish_all$sitename <- "Burr_Fish"

export(Burr_Fish_all,"UK_10km/Burr_Fish_combined.csv")



Carysfort_Deep_serc <- import("UK_10km/Carysfort_Deep_serc.xls")
Carysfort_Deep_ws <- import("UK_10km/Carysfort_Deep_ws.xls")

## Change date to Year to merge the two dataframes

Carysfort_Deep_serc_date <- format(as.Date(Carysfort_Deep_serc$DATE_, format = "%Y %m %d"),"%Y")
Carysfort_Deep_serc_frame <- data.frame(Carysfort_Deep_serc_date)
Carysfort_Deep_serc_year <- cbind(Carysfort_Deep_serc_frame, Carysfort_Deep_serc)
colnames(Carysfort_Deep_serc_year)[1]<- "Year"
Carysfort_Deep_serc_year$FID <- NULL
Carysfort_Deep_serc_year$SURV <- NULL
Carysfort_Deep_serc_year$BASIN <- NULL
Carysfort_Deep_serc_year$SEGMENT <- NULL
Carysfort_Deep_serc_year$ZONE_ <- NULL
Carysfort_Deep_serc_year$TIME_ <- NULL
Carysfort_Deep_serc_year$DATE_ <- NULL
Carysfort_Deep_serc_year$STATION <- NULL
Carysfort_Deep_serc_year$SITE <- NULL



Carysfort_Deep_ws_date <- format(as.Date(Carysfort_Deep_ws$Date_, format = "%Y %m %d"),"%Y")
Carysfort_Deep_ws_frame <- data.frame(Carysfort_Deep_ws_date)
Carysfort_Deep_ws_year <- cbind(Carysfort_Deep_ws_frame, Carysfort_Deep_ws)
colnames(Carysfort_Deep_ws_year)[1]<- "Year"
Carysfort_Deep_ws_year$FID <- NULL
Carysfort_Deep_ws_year$Station <- NULL
Carysfort_Deep_ws_year$Date_ <- NULL
Carysfort_Deep_ws_year$GMT <- NULL
Carysfort_Deep_ws_year$Field11 <- NULL
Carysfort_Deep_ws_year$Field12 <- NULL
Carysfort_Deep_ws_year$Field13 <- NULL
Carysfort_Deep_ws_year$Field14 <- NULL
Carysfort_Deep_ws_year$Field15 <- NULL
Carysfort_Deep_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Carysfort_Deep_serc_year$Year)
unique(Carysfort_Deep_ws_year$Year)




Carysfort_Deep_serc_2000 <- subset(Carysfort_Deep_serc_year, Year == "2000")
Carysfort_Deep_serc_2000_merge <- Carysfort_Deep_serc_2000 %>%
  mutate(id = row_number())

Carysfort_Deep_ws_2000 <- subset(Carysfort_Deep_ws_year, Year == "2000")
Carysfort_Deep_ws_2000_merge <- Carysfort_Deep_ws_2000 %>%
  mutate(id = row_number())

Carysfort_Deep_2000_all <- full_join(Carysfort_Deep_serc_2000_merge, Carysfort_Deep_ws_2000_merge, by = c("Year","id"))


Carysfort_Deep_serc_2001 <- subset(Carysfort_Deep_serc_year, Year == "2001")
Carysfort_Deep_serc_2001_merge <- Carysfort_Deep_serc_2001 %>%
  mutate(id = row_number())

Carysfort_Deep_ws_2001 <- subset(Carysfort_Deep_ws_year, Year == "2001")
Carysfort_Deep_ws_2001_merge <- Carysfort_Deep_ws_2001 %>%
  mutate(id = row_number())

Carysfort_Deep_2001_all <- full_join(Carysfort_Deep_serc_2001_merge, Carysfort_Deep_ws_2001_merge, by = c("Year","id"))


Carysfort_Deep_serc_2002 <- subset(Carysfort_Deep_serc_year, Year == "2002")
Carysfort_Deep_serc_2002_merge <- Carysfort_Deep_serc_2002 %>%
  mutate(id = row_number())

Carysfort_Deep_ws_2002 <- subset(Carysfort_Deep_ws_year, Year == "2002")
Carysfort_Deep_ws_2002_merge <- Carysfort_Deep_ws_2002 %>%
  mutate(id = row_number())

Carysfort_Deep_2002_all <- full_join(Carysfort_Deep_serc_2002_merge, Carysfort_Deep_ws_2002_merge, by = c("Year","id"))



Carysfort_Deep_serc_2014 <- subset(Carysfort_Deep_serc_year, Year == "2014")
Carysfort_Deep_serc_2014_merge <- Carysfort_Deep_serc_2014 %>%
  mutate(id = row_number())

Carysfort_Deep_ws_2014 <- subset(Carysfort_Deep_ws_year, Year == "2014")
Carysfort_Deep_ws_2014_merge <- Carysfort_Deep_ws_2014 %>%
  mutate(id = row_number())

Carysfort_Deep_2014_all <- full_join(Carysfort_Deep_serc_2014_merge, Carysfort_Deep_ws_2014_merge, by = c("Year","id"))


Carysfort_Deep_serc_2015 <- subset(Carysfort_Deep_serc_year, Year == "2015")
Carysfort_Deep_serc_2015_merge <- Carysfort_Deep_serc_2015 %>%
  mutate(id = row_number())

Carysfort_Deep_ws_2015 <- subset(Carysfort_Deep_ws_year, Year == "2015")
Carysfort_Deep_ws_2015_merge <- Carysfort_Deep_ws_2015 %>%
  mutate(id = row_number())

Carysfort_Deep_2015_all <- full_join(Carysfort_Deep_serc_2015_merge, Carysfort_Deep_ws_2015_merge, by = c("Year","id"))


Carysfort_Deep_serc_2016 <- subset(Carysfort_Deep_serc_year, Year == "2016")
Carysfort_Deep_serc_2016_merge <- Carysfort_Deep_serc_2016 %>%
  mutate(id = row_number())

Carysfort_Deep_ws_2016 <- subset(Carysfort_Deep_ws_year, Year == "2016")
Carysfort_Deep_ws_2016_merge <- Carysfort_Deep_ws_2016 %>%
  mutate(id = row_number())

Carysfort_Deep_2016_all <- full_join(Carysfort_Deep_serc_2016_merge, Carysfort_Deep_ws_2016_merge, by = c("Year","id"))



Carysfort_Deep_serc_2017 <- subset(Carysfort_Deep_serc_year, Year == "2017")
Carysfort_Deep_serc_2017_merge <- Carysfort_Deep_serc_2017 %>%
  mutate(id = row_number())

Carysfort_Deep_ws_2017 <- subset(Carysfort_Deep_ws_year, Year == "2017")
Carysfort_Deep_ws_2017_merge <- Carysfort_Deep_ws_2017 %>%
  mutate(id = row_number())

Carysfort_Deep_2017_all <- full_join(Carysfort_Deep_serc_2017_merge, Carysfort_Deep_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Carysfort_Deep_ws_2018_all <- subset(Carysfort_Deep_ws_year, Year == "2018") 

## adding extra columns to merge 

Carysfort_Deep_ws_2018_all$LATDEC <- "NA"
Carysfort_Deep_ws_2018_all$LONDEC <- "NA"
Carysfort_Deep_ws_2018_all$DEPTH <- "NA"
Carysfort_Deep_ws_2018_all$NOX_S <- "NA"
Carysfort_Deep_ws_2018_all$NOX_B <- "NA"
Carysfort_Deep_ws_2018_all$NO3_S <- "NA"
Carysfort_Deep_ws_2018_all$NO3_B <- "NA"
Carysfort_Deep_ws_2018_all$NO2_S <- "NA"
Carysfort_Deep_ws_2018_all$NO2_B <- "NA"
Carysfort_Deep_ws_2018_all$NH4_S <- "NA"
Carysfort_Deep_ws_2018_all$NH4_B <- "NA"
Carysfort_Deep_ws_2018_all$TN_S <- "NA"
Carysfort_Deep_ws_2018_all$TN_B <- "NA"
Carysfort_Deep_ws_2018_all$DIN_S <- "NA"
Carysfort_Deep_ws_2018_all$DIN_B <- "NA"
Carysfort_Deep_ws_2018_all$TON_S <- "NA"
Carysfort_Deep_ws_2018_all$TON_B <- "NA"
Carysfort_Deep_ws_2018_all$TP_S <- "NA"
Carysfort_Deep_ws_2018_all$TP_B <- "NA"
Carysfort_Deep_ws_2018_all$SRP_S <- "NA"
Carysfort_Deep_ws_2018_all$SRP_B <- "NA"
Carysfort_Deep_ws_2018_all$APA_S <- "NA"
Carysfort_Deep_ws_2018_all$APA_B <- "NA"
Carysfort_Deep_ws_2018_all$CHLA_S <- "NA"
Carysfort_Deep_ws_2018_all$CHLA_B <- "NA"
Carysfort_Deep_ws_2018_all$TOC_S <- "NA"
Carysfort_Deep_ws_2018_all$TOC_B <- "NA"
Carysfort_Deep_ws_2018_all$SiO2_S <- "NA"
Carysfort_Deep_ws_2018_all$SiO2_B <- "NA"
Carysfort_Deep_ws_2018_all$TURB_S <- "NA"
Carysfort_Deep_ws_2018_all$TURB_B <- "NA"
Carysfort_Deep_ws_2018_all$SAL_S <- "NA"
Carysfort_Deep_ws_2018_all$SAL_B <- "NA"
Carysfort_Deep_ws_2018_all$TEMP_S <- "NA"
Carysfort_Deep_ws_2018_all$TEMP_B <- "NA"
Carysfort_Deep_ws_2018_all$DO_S <- "NA"
Carysfort_Deep_ws_2018_all$DO_B <- "NA"
Carysfort_Deep_ws_2018_all$Kd <- "NA"
Carysfort_Deep_ws_2018_all$pH <- "NA"
Carysfort_Deep_ws_2018_all$TN_TP <- "NA"
Carysfort_Deep_ws_2018_all$N_P <- "NA"
Carysfort_Deep_ws_2018_all$DIN_TP <- "NA"
Carysfort_Deep_ws_2018_all$Si_DIN <- "NA"
Carysfort_Deep_ws_2018_all$F_SAT_S <- "NA"
Carysfort_Deep_ws_2018_all$F_SAT_B <- "NA"
Carysfort_Deep_ws_2018_all$F_Io <- "NA"
Carysfort_Deep_ws_2018_all$DSIGT <- "NA"
Carysfort_Deep_ws_2018_all$id <- "NA"







## rest of the serc data
Carysfort_Deep_serc_1995 <- subset(Carysfort_Deep_serc_year, Year == "1995")
Carysfort_Deep_serc_1996 <- subset(Carysfort_Deep_serc_year, Year == "1996")
Carysfort_Deep_serc_1997 <- subset(Carysfort_Deep_serc_year, Year == "1997")
Carysfort_Deep_serc_1998 <- subset(Carysfort_Deep_serc_year, Year == "1998")
Carysfort_Deep_serc_1999 <- subset(Carysfort_Deep_serc_year, Year == "1999")
Carysfort_Deep_serc_2003 <- subset(Carysfort_Deep_serc_year, Year == "2003")
Carysfort_Deep_serc_2004 <- subset(Carysfort_Deep_serc_year, Year == "2004")
Carysfort_Deep_serc_2005 <- subset(Carysfort_Deep_serc_year, Year == "2005")
Carysfort_Deep_serc_2006 <- subset(Carysfort_Deep_serc_year, Year == "2006")
Carysfort_Deep_serc_2007 <- subset(Carysfort_Deep_serc_year, Year == "2007")
Carysfort_Deep_serc_2008 <- subset(Carysfort_Deep_serc_year, Year == "2008")
Carysfort_Deep_serc_2009 <- subset(Carysfort_Deep_serc_year, Year == "2009")
Carysfort_Deep_serc_2010 <- subset(Carysfort_Deep_serc_year, Year == "2010")
Carysfort_Deep_serc_2011 <- subset(Carysfort_Deep_serc_year, Year == "2011")
Carysfort_Deep_serc_2012 <- subset(Carysfort_Deep_serc_year, Year == "2012")
Carysfort_Deep_serc_2013 <- subset(Carysfort_Deep_serc_year, Year == "2013")



Carysfort_Deep_serc_extra <- rbind(Carysfort_Deep_serc_1995,Carysfort_Deep_serc_1996,Carysfort_Deep_serc_1997,Carysfort_Deep_serc_1998,Carysfort_Deep_serc_1999,Carysfort_Deep_serc_2003,Carysfort_Deep_serc_2004,Carysfort_Deep_serc_2005,Carysfort_Deep_serc_2006,Carysfort_Deep_serc_2007,Carysfort_Deep_serc_2008,Carysfort_Deep_serc_2009,Carysfort_Deep_serc_2010,Carysfort_Deep_serc_2011,Carysfort_Deep_serc_2012,Carysfort_Deep_serc_2013)




Carysfort_Deep_serc_extra$Longitude <- "NA"
Carysfort_Deep_serc_extra$Latitude <- "NA"
Carysfort_Deep_serc_extra$Depth <- "NA"
Carysfort_Deep_serc_extra$SST <- "NA"
Carysfort_Deep_serc_extra$SSS <- "NA"
Carysfort_Deep_serc_extra$Chl_a <- "NA"
Carysfort_Deep_serc_extra$Phaeophyti <- "NA"
Carysfort_Deep_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Carysfort_Deep_ws_2018_all <- setcolorder(Carysfort_Deep_ws_2018_all, names(Carysfort_Deep_serc_extra))

## Merge all years together 

Carysfort_Deep_all <- rbind(Carysfort_Deep_serc_extra,Carysfort_Deep_2000_all,Carysfort_Deep_2001_all,Carysfort_Deep_2002_all,Carysfort_Deep_2014_all,Carysfort_Deep_2015_all,Carysfort_Deep_2016_all,Carysfort_Deep_2017_all,Carysfort_Deep_ws_2018_all)
Carysfort_Deep_all$sitename <- "Carysfort_Deep"

export(Carysfort_Deep_all,"UK_10km/Carysfort_Deep_combined.csv")



Carysfort_Shallow_serc <- import("UK_10km/Carysfort_Shallow_serc.xls")
Carysfort_Shallow_ws <- import("UK_10km/Carysfort_Shallow_ws.xls")

## Change date to Year to merge the two dataframes

Carysfort_Shallow_serc_date <- format(as.Date(Carysfort_Shallow_serc$DATE_, format = "%Y %m %d"),"%Y")
Carysfort_Shallow_serc_frame <- data.frame(Carysfort_Shallow_serc_date)
Carysfort_Shallow_serc_year <- cbind(Carysfort_Shallow_serc_frame, Carysfort_Shallow_serc)
colnames(Carysfort_Shallow_serc_year)[1]<- "Year"
Carysfort_Shallow_serc_year$FID <- NULL
Carysfort_Shallow_serc_year$SURV <- NULL
Carysfort_Shallow_serc_year$BASIN <- NULL
Carysfort_Shallow_serc_year$SEGMENT <- NULL
Carysfort_Shallow_serc_year$ZONE_ <- NULL
Carysfort_Shallow_serc_year$TIME_ <- NULL
Carysfort_Shallow_serc_year$DATE_ <- NULL
Carysfort_Shallow_serc_year$STATION <- NULL
Carysfort_Shallow_serc_year$SITE <- NULL



Carysfort_Shallow_ws_date <- format(as.Date(Carysfort_Shallow_ws$Date_, format = "%Y %m %d"),"%Y")
Carysfort_Shallow_ws_frame <- data.frame(Carysfort_Shallow_ws_date)
Carysfort_Shallow_ws_year <- cbind(Carysfort_Shallow_ws_frame, Carysfort_Shallow_ws)
colnames(Carysfort_Shallow_ws_year)[1]<- "Year"
Carysfort_Shallow_ws_year$FID <- NULL
Carysfort_Shallow_ws_year$Station <- NULL
Carysfort_Shallow_ws_year$Date_ <- NULL
Carysfort_Shallow_ws_year$GMT <- NULL
Carysfort_Shallow_ws_year$Field11 <- NULL
Carysfort_Shallow_ws_year$Field12 <- NULL
Carysfort_Shallow_ws_year$Field13 <- NULL
Carysfort_Shallow_ws_year$Field14 <- NULL
Carysfort_Shallow_ws_year$Field15 <- NULL
Carysfort_Shallow_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Carysfort_Shallow_serc_year$Year)
unique(Carysfort_Shallow_ws_year$Year)




Carysfort_Shallow_serc_2014 <- subset(Carysfort_Shallow_serc_year, Year == "2014")
Carysfort_Shallow_serc_2014_merge <- Carysfort_Shallow_serc_2014 %>%
  mutate(id = row_number())

Carysfort_Shallow_ws_2014 <- subset(Carysfort_Shallow_ws_year, Year == "2014")
Carysfort_Shallow_ws_2014_merge <- Carysfort_Shallow_ws_2014 %>%
  mutate(id = row_number())

Carysfort_Shallow_2014_all <- full_join(Carysfort_Shallow_serc_2014_merge, Carysfort_Shallow_ws_2014_merge, by = c("Year","id"))


Carysfort_Shallow_serc_2015 <- subset(Carysfort_Shallow_serc_year, Year == "2015")
Carysfort_Shallow_serc_2015_merge <- Carysfort_Shallow_serc_2015 %>%
  mutate(id = row_number())

Carysfort_Shallow_ws_2015 <- subset(Carysfort_Shallow_ws_year, Year == "2015")
Carysfort_Shallow_ws_2015_merge <- Carysfort_Shallow_ws_2015 %>%
  mutate(id = row_number())

Carysfort_Shallow_2015_all <- full_join(Carysfort_Shallow_serc_2015_merge, Carysfort_Shallow_ws_2015_merge, by = c("Year","id"))


Carysfort_Shallow_serc_2016 <- subset(Carysfort_Shallow_serc_year, Year == "2016")
Carysfort_Shallow_serc_2016_merge <- Carysfort_Shallow_serc_2016 %>%
  mutate(id = row_number())

Carysfort_Shallow_ws_2016 <- subset(Carysfort_Shallow_ws_year, Year == "2016")
Carysfort_Shallow_ws_2016_merge <- Carysfort_Shallow_ws_2016 %>%
  mutate(id = row_number())

Carysfort_Shallow_2016_all <- full_join(Carysfort_Shallow_serc_2016_merge, Carysfort_Shallow_ws_2016_merge, by = c("Year","id"))



Carysfort_Shallow_serc_2017 <- subset(Carysfort_Shallow_serc_year, Year == "2017")
Carysfort_Shallow_serc_2017_merge <- Carysfort_Shallow_serc_2017 %>%
  mutate(id = row_number())

Carysfort_Shallow_ws_2017 <- subset(Carysfort_Shallow_ws_year, Year == "2017")
Carysfort_Shallow_ws_2017_merge <- Carysfort_Shallow_ws_2017 %>%
  mutate(id = row_number())

Carysfort_Shallow_2017_all <- full_join(Carysfort_Shallow_serc_2017_merge, Carysfort_Shallow_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Carysfort_Shallow_ws_2018_all <- subset(Carysfort_Shallow_ws_year, Year == "2018") 

## adding extra columns to merge 

Carysfort_Shallow_ws_2018_all$LATDEC <- "NA"
Carysfort_Shallow_ws_2018_all$LONDEC <- "NA"
Carysfort_Shallow_ws_2018_all$DEPTH <- "NA"
Carysfort_Shallow_ws_2018_all$NOX_S <- "NA"
Carysfort_Shallow_ws_2018_all$NOX_B <- "NA"
Carysfort_Shallow_ws_2018_all$NO3_S <- "NA"
Carysfort_Shallow_ws_2018_all$NO3_B <- "NA"
Carysfort_Shallow_ws_2018_all$NO2_S <- "NA"
Carysfort_Shallow_ws_2018_all$NO2_B <- "NA"
Carysfort_Shallow_ws_2018_all$NH4_S <- "NA"
Carysfort_Shallow_ws_2018_all$NH4_B <- "NA"
Carysfort_Shallow_ws_2018_all$TN_S <- "NA"
Carysfort_Shallow_ws_2018_all$TN_B <- "NA"
Carysfort_Shallow_ws_2018_all$DIN_S <- "NA"
Carysfort_Shallow_ws_2018_all$DIN_B <- "NA"
Carysfort_Shallow_ws_2018_all$TON_S <- "NA"
Carysfort_Shallow_ws_2018_all$TON_B <- "NA"
Carysfort_Shallow_ws_2018_all$TP_S <- "NA"
Carysfort_Shallow_ws_2018_all$TP_B <- "NA"
Carysfort_Shallow_ws_2018_all$SRP_S <- "NA"
Carysfort_Shallow_ws_2018_all$SRP_B <- "NA"
Carysfort_Shallow_ws_2018_all$APA_S <- "NA"
Carysfort_Shallow_ws_2018_all$APA_B <- "NA"
Carysfort_Shallow_ws_2018_all$CHLA_S <- "NA"
Carysfort_Shallow_ws_2018_all$CHLA_B <- "NA"
Carysfort_Shallow_ws_2018_all$TOC_S <- "NA"
Carysfort_Shallow_ws_2018_all$TOC_B <- "NA"
Carysfort_Shallow_ws_2018_all$SiO2_S <- "NA"
Carysfort_Shallow_ws_2018_all$SiO2_B <- "NA"
Carysfort_Shallow_ws_2018_all$TURB_S <- "NA"
Carysfort_Shallow_ws_2018_all$TURB_B <- "NA"
Carysfort_Shallow_ws_2018_all$SAL_S <- "NA"
Carysfort_Shallow_ws_2018_all$SAL_B <- "NA"
Carysfort_Shallow_ws_2018_all$TEMP_S <- "NA"
Carysfort_Shallow_ws_2018_all$TEMP_B <- "NA"
Carysfort_Shallow_ws_2018_all$DO_S <- "NA"
Carysfort_Shallow_ws_2018_all$DO_B <- "NA"
Carysfort_Shallow_ws_2018_all$Kd <- "NA"
Carysfort_Shallow_ws_2018_all$pH <- "NA"
Carysfort_Shallow_ws_2018_all$TN_TP <- "NA"
Carysfort_Shallow_ws_2018_all$N_P <- "NA"
Carysfort_Shallow_ws_2018_all$DIN_TP <- "NA"
Carysfort_Shallow_ws_2018_all$Si_DIN <- "NA"
Carysfort_Shallow_ws_2018_all$F_SAT_S <- "NA"
Carysfort_Shallow_ws_2018_all$F_SAT_B <- "NA"
Carysfort_Shallow_ws_2018_all$F_Io <- "NA"
Carysfort_Shallow_ws_2018_all$DSIGT <- "NA"
Carysfort_Shallow_ws_2018_all$id <- "NA"







## rest of the serc data
Carysfort_Shallow_serc_1995 <- subset(Carysfort_Shallow_serc_year, Year == "1995")
Carysfort_Shallow_serc_1996 <- subset(Carysfort_Shallow_serc_year, Year == "1996")
Carysfort_Shallow_serc_1997 <- subset(Carysfort_Shallow_serc_year, Year == "1997")
Carysfort_Shallow_serc_1998 <- subset(Carysfort_Shallow_serc_year, Year == "1998")
Carysfort_Shallow_serc_1999 <- subset(Carysfort_Shallow_serc_year, Year == "1999")
Carysfort_Shallow_serc_2000 <- subset(Carysfort_Shallow_serc_year, Year == "2008")
Carysfort_Shallow_serc_2001 <- subset(Carysfort_Shallow_serc_year, Year == "2008")
Carysfort_Shallow_serc_2002 <- subset(Carysfort_Shallow_serc_year, Year == "2008")
Carysfort_Shallow_serc_2003 <- subset(Carysfort_Shallow_serc_year, Year == "2003")
Carysfort_Shallow_serc_2004 <- subset(Carysfort_Shallow_serc_year, Year == "2004")
Carysfort_Shallow_serc_2005 <- subset(Carysfort_Shallow_serc_year, Year == "2005")
Carysfort_Shallow_serc_2006 <- subset(Carysfort_Shallow_serc_year, Year == "2006")
Carysfort_Shallow_serc_2007 <- subset(Carysfort_Shallow_serc_year, Year == "2007")
Carysfort_Shallow_serc_2008 <- subset(Carysfort_Shallow_serc_year, Year == "2008")
Carysfort_Shallow_serc_2009 <- subset(Carysfort_Shallow_serc_year, Year == "2009")
Carysfort_Shallow_serc_2010 <- subset(Carysfort_Shallow_serc_year, Year == "2010")
Carysfort_Shallow_serc_2011 <- subset(Carysfort_Shallow_serc_year, Year == "2011")
Carysfort_Shallow_serc_2012 <- subset(Carysfort_Shallow_serc_year, Year == "2012")
Carysfort_Shallow_serc_2013 <- subset(Carysfort_Shallow_serc_year, Year == "2013")



Carysfort_Shallow_serc_extra <- rbind(Carysfort_Shallow_serc_1995,Carysfort_Shallow_serc_1996,Carysfort_Shallow_serc_1997,Carysfort_Shallow_serc_1998,Carysfort_Shallow_serc_1999,Carysfort_Shallow_serc_2000,Carysfort_Shallow_serc_2001,Carysfort_Shallow_serc_2002,Carysfort_Shallow_serc_2003,Carysfort_Shallow_serc_2004,Carysfort_Shallow_serc_2005,Carysfort_Shallow_serc_2006,Carysfort_Shallow_serc_2007,Carysfort_Shallow_serc_2008,Carysfort_Shallow_serc_2009,Carysfort_Shallow_serc_2010,Carysfort_Shallow_serc_2011,Carysfort_Shallow_serc_2012,Carysfort_Shallow_serc_2013)




Carysfort_Shallow_serc_extra$Longitude <- "NA"
Carysfort_Shallow_serc_extra$Latitude <- "NA"
Carysfort_Shallow_serc_extra$Depth <- "NA"
Carysfort_Shallow_serc_extra$SST <- "NA"
Carysfort_Shallow_serc_extra$SSS <- "NA"
Carysfort_Shallow_serc_extra$Chl_a <- "NA"
Carysfort_Shallow_serc_extra$Phaeophyti <- "NA"
Carysfort_Shallow_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Carysfort_Shallow_ws_2018_all <- setcolorder(Carysfort_Shallow_ws_2018_all, names(Carysfort_Shallow_serc_extra))

## Merge all years together 

Carysfort_Shallow_all <- rbind(Carysfort_Shallow_serc_extra,Carysfort_Shallow_2014_all,Carysfort_Shallow_2015_all,Carysfort_Shallow_2016_all,Carysfort_Shallow_2017_all,Carysfort_Shallow_ws_2018_all)
Carysfort_Shallow_all$sitename <- "Carysfort_Shallow"

export(Carysfort_Shallow_all,"UK_10km/Carysfort_Shallow_combined.csv")




Conch_Deep_serc <- import("UK_10km/Conch_Deep_serc.xls")
Conch_Deep_ws <- import("UK_10km/Conch_Deep_ws.xls")

## Change date to Year to merge the two dataframes

Conch_Deep_serc_date <- format(as.Date(Conch_Deep_serc$DATE_, format = "%Y %m %d"),"%Y")
Conch_Deep_serc_frame <- data.frame(Conch_Deep_serc_date)
Conch_Deep_serc_year <- cbind(Conch_Deep_serc_frame, Conch_Deep_serc)
colnames(Conch_Deep_serc_year)[1]<- "Year"
Conch_Deep_serc_year$FID <- NULL
Conch_Deep_serc_year$SURV <- NULL
Conch_Deep_serc_year$BASIN <- NULL
Conch_Deep_serc_year$SEGMENT <- NULL
Conch_Deep_serc_year$ZONE_ <- NULL
Conch_Deep_serc_year$TIME_ <- NULL
Conch_Deep_serc_year$DATE_ <- NULL
Conch_Deep_serc_year$STATION <- NULL
Conch_Deep_serc_year$SITE <- NULL



Conch_Deep_ws_date <- format(as.Date(Conch_Deep_ws$Date_, format = "%Y %m %d"),"%Y")
Conch_Deep_ws_frame <- data.frame(Conch_Deep_ws_date)
Conch_Deep_ws_year <- cbind(Conch_Deep_ws_frame, Conch_Deep_ws)
colnames(Conch_Deep_ws_year)[1]<- "Year"
Conch_Deep_ws_year$FID <- NULL
Conch_Deep_ws_year$Station <- NULL
Conch_Deep_ws_year$Date_ <- NULL
Conch_Deep_ws_year$GMT <- NULL
Conch_Deep_ws_year$Field11 <- NULL
Conch_Deep_ws_year$Field12 <- NULL
Conch_Deep_ws_year$Field13 <- NULL
Conch_Deep_ws_year$Field14 <- NULL
Conch_Deep_ws_year$Field15 <- NULL
Conch_Deep_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Conch_Deep_serc_year$Year)
unique(Conch_Deep_ws_year$Year)


Conch_Deep_serc_2000 <- subset(Conch_Deep_serc_year, Year == "2000")
Conch_Deep_serc_2000_merge <- Conch_Deep_serc_2000 %>%
  mutate(id = row_number())

Conch_Deep_ws_2000 <- subset(Conch_Deep_ws_year, Year == "2000")
Conch_Deep_ws_2000_merge <- Conch_Deep_ws_2000 %>%
  mutate(id = row_number())

Conch_Deep_2000_all <- full_join(Conch_Deep_serc_2000_merge, Conch_Deep_ws_2000_merge, by = c("Year","id"))


Conch_Deep_serc_2001 <- subset(Conch_Deep_serc_year, Year == "2001")
Conch_Deep_serc_2001_merge <- Conch_Deep_serc_2001 %>%
  mutate(id = row_number())

Conch_Deep_ws_2001 <- subset(Conch_Deep_ws_year, Year == "2001")
Conch_Deep_ws_2001_merge <- Conch_Deep_ws_2001 %>%
  mutate(id = row_number())

Conch_Deep_2001_all <- full_join(Conch_Deep_serc_2001_merge, Conch_Deep_ws_2001_merge, by = c("Year","id"))


Conch_Deep_serc_2002 <- subset(Conch_Deep_serc_year, Year == "2002")
Conch_Deep_serc_2002_merge <- Conch_Deep_serc_2002 %>%
  mutate(id = row_number())

Conch_Deep_ws_2002 <- subset(Conch_Deep_ws_year, Year == "2002")
Conch_Deep_ws_2002_merge <- Conch_Deep_ws_2002 %>%
  mutate(id = row_number())

Conch_Deep_2002_all <- full_join(Conch_Deep_serc_2002_merge, Conch_Deep_ws_2002_merge, by = c("Year","id"))


Conch_Deep_serc_2015 <- subset(Conch_Deep_serc_year, Year == "2015")
Conch_Deep_serc_2015_merge <- Conch_Deep_serc_2015 %>%
  mutate(id = row_number())

Conch_Deep_ws_2015 <- subset(Conch_Deep_ws_year, Year == "2015")
Conch_Deep_ws_2015_merge <- Conch_Deep_ws_2015 %>%
  mutate(id = row_number())

Conch_Deep_2015_all <- full_join(Conch_Deep_serc_2015_merge, Conch_Deep_ws_2015_merge, by = c("Year","id"))


Conch_Deep_serc_2016 <- subset(Conch_Deep_serc_year, Year == "2016")
Conch_Deep_serc_2016_merge <- Conch_Deep_serc_2016 %>%
  mutate(id = row_number())

Conch_Deep_ws_2016 <- subset(Conch_Deep_ws_year, Year == "2016")
Conch_Deep_ws_2016_merge <- Conch_Deep_ws_2016 %>%
  mutate(id = row_number())

Conch_Deep_2016_all <- full_join(Conch_Deep_serc_2016_merge, Conch_Deep_ws_2016_merge, by = c("Year","id"))



Conch_Deep_serc_2017 <- subset(Conch_Deep_serc_year, Year == "2017")
Conch_Deep_serc_2017_merge <- Conch_Deep_serc_2017 %>%
  mutate(id = row_number())

Conch_Deep_ws_2017 <- subset(Conch_Deep_ws_year, Year == "2017")
Conch_Deep_ws_2017_merge <- Conch_Deep_ws_2017 %>%
  mutate(id = row_number())

Conch_Deep_2017_all <- full_join(Conch_Deep_serc_2017_merge, Conch_Deep_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

# Conch_Deep_ws_2018_all <- subset(Conch_Deep_ws_year, Year == "2018") 
# 
# ## adding extra columns to merge 
# 
# Conch_Deep_ws_2018_all$LATDEC <- "NA"
# Conch_Deep_ws_2018_all$LONDEC <- "NA"
# Conch_Deep_ws_2018_all$DEPTH <- "NA"
# Conch_Deep_ws_2018_all$NOX_S <- "NA"
# Conch_Deep_ws_2018_all$NOX_B <- "NA"
# Conch_Deep_ws_2018_all$NO3_S <- "NA"
# Conch_Deep_ws_2018_all$NO3_B <- "NA"
# Conch_Deep_ws_2018_all$NO2_S <- "NA"
# Conch_Deep_ws_2018_all$NO2_B <- "NA"
# Conch_Deep_ws_2018_all$NH4_S <- "NA"
# Conch_Deep_ws_2018_all$NH4_B <- "NA"
# Conch_Deep_ws_2018_all$TN_S <- "NA"
# Conch_Deep_ws_2018_all$TN_B <- "NA"
# Conch_Deep_ws_2018_all$DIN_S <- "NA"
# Conch_Deep_ws_2018_all$DIN_B <- "NA"
# Conch_Deep_ws_2018_all$TON_S <- "NA"
# Conch_Deep_ws_2018_all$TON_B <- "NA"
# Conch_Deep_ws_2018_all$TP_S <- "NA"
# Conch_Deep_ws_2018_all$TP_B <- "NA"
# Conch_Deep_ws_2018_all$SRP_S <- "NA"
# Conch_Deep_ws_2018_all$SRP_B <- "NA"
# Conch_Deep_ws_2018_all$APA_S <- "NA"
# Conch_Deep_ws_2018_all$APA_B <- "NA"
# Conch_Deep_ws_2018_all$CHLA_S <- "NA"
# Conch_Deep_ws_2018_all$CHLA_B <- "NA"
# Conch_Deep_ws_2018_all$TOC_S <- "NA"
# Conch_Deep_ws_2018_all$TOC_B <- "NA"
# Conch_Deep_ws_2018_all$SiO2_S <- "NA"
# Conch_Deep_ws_2018_all$SiO2_B <- "NA"
# Conch_Deep_ws_2018_all$TURB_S <- "NA"
# Conch_Deep_ws_2018_all$TURB_B <- "NA"
# Conch_Deep_ws_2018_all$SAL_S <- "NA"
# Conch_Deep_ws_2018_all$SAL_B <- "NA"
# Conch_Deep_ws_2018_all$TEMP_S <- "NA"
# Conch_Deep_ws_2018_all$TEMP_B <- "NA"
# Conch_Deep_ws_2018_all$DO_S <- "NA"
# Conch_Deep_ws_2018_all$DO_B <- "NA"
# Conch_Deep_ws_2018_all$Kd <- "NA"
# Conch_Deep_ws_2018_all$pH <- "NA"
# Conch_Deep_ws_2018_all$TN_TP <- "NA"
# Conch_Deep_ws_2018_all$N_P <- "NA"
# Conch_Deep_ws_2018_all$DIN_TP <- "NA"
# Conch_Deep_ws_2018_all$Si_DIN <- "NA"
# Conch_Deep_ws_2018_all$F_SAT_S <- "NA"
# Conch_Deep_ws_2018_all$F_SAT_B <- "NA"
# Conch_Deep_ws_2018_all$F_Io <- "NA"
# Conch_Deep_ws_2018_all$DSIGT <- "NA"
# Conch_Deep_ws_2018_all$id <- "NA"
# 
# 





## rest of the serc data
Conch_Deep_serc_1995 <- subset(Conch_Deep_serc_year, Year == "1995")
Conch_Deep_serc_1996 <- subset(Conch_Deep_serc_year, Year == "1996")
Conch_Deep_serc_1997 <- subset(Conch_Deep_serc_year, Year == "1997")
Conch_Deep_serc_1998 <- subset(Conch_Deep_serc_year, Year == "1998")
Conch_Deep_serc_1999 <- subset(Conch_Deep_serc_year, Year == "1999")
#Conch_Deep_serc_2000 <- subset(Conch_Deep_serc_year, Year == "2008")
#Conch_Deep_serc_2001 <- subset(Conch_Deep_serc_year, Year == "2008")
#Conch_Deep_serc_2002 <- subset(Conch_Deep_serc_year, Year == "2008")
Conch_Deep_serc_2003 <- subset(Conch_Deep_serc_year, Year == "2003")
Conch_Deep_serc_2004 <- subset(Conch_Deep_serc_year, Year == "2004")
Conch_Deep_serc_2005 <- subset(Conch_Deep_serc_year, Year == "2005")
Conch_Deep_serc_2006 <- subset(Conch_Deep_serc_year, Year == "2006")
Conch_Deep_serc_2007 <- subset(Conch_Deep_serc_year, Year == "2007")
Conch_Deep_serc_2008 <- subset(Conch_Deep_serc_year, Year == "2008")
Conch_Deep_serc_2009 <- subset(Conch_Deep_serc_year, Year == "2009")
Conch_Deep_serc_2010 <- subset(Conch_Deep_serc_year, Year == "2010")
Conch_Deep_serc_2011 <- subset(Conch_Deep_serc_year, Year == "2011")
Conch_Deep_serc_2012 <- subset(Conch_Deep_serc_year, Year == "2012")
Conch_Deep_serc_2013 <- subset(Conch_Deep_serc_year, Year == "2013")
Conch_Deep_serc_2014 <- subset(Conch_Deep_serc_year, Year == "2014")



Conch_Deep_serc_extra <- rbind(Conch_Deep_serc_1995,Conch_Deep_serc_1996,Conch_Deep_serc_1997,Conch_Deep_serc_1998,Conch_Deep_serc_1999,Conch_Deep_serc_2003,Conch_Deep_serc_2004,Conch_Deep_serc_2005,Conch_Deep_serc_2006,Conch_Deep_serc_2007,Conch_Deep_serc_2008,Conch_Deep_serc_2009,Conch_Deep_serc_2010,Conch_Deep_serc_2011,Conch_Deep_serc_2012,Conch_Deep_serc_2013,Conch_Deep_serc_2014)




Conch_Deep_serc_extra$Longitude <- "NA"
Conch_Deep_serc_extra$Latitude <- "NA"
Conch_Deep_serc_extra$Depth <- "NA"
Conch_Deep_serc_extra$SST <- "NA"
Conch_Deep_serc_extra$SSS <- "NA"
Conch_Deep_serc_extra$Chl_a <- "NA"
Conch_Deep_serc_extra$Phaeophyti <- "NA"
Conch_Deep_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

#Conch_Deep_ws_2018_all <- setcolorder(Conch_Deep_ws_2018_all, names(Conch_Deep_serc_extra))

## Merge all years together 

Conch_Deep_all <- rbind(Conch_Deep_serc_extra,Conch_Deep_2000_all,Conch_Deep_2001_all,Conch_Deep_2002_all,Conch_Deep_2015_all,Conch_Deep_2016_all,Conch_Deep_2017_all)
Conch_Deep_all$sitename <- "Conch_Deep"

export(Conch_Deep_all,"UK_10km/Conch_Deep_combined.csv")



Conch_Shallow_serc <- import("UK_10km/Conch_Shallow_serc.xls")
Conch_Shallow_ws <- import("UK_10km/Conch_Shallow_ws.xls")

## Change date to Year to merge the two dataframes

Conch_Shallow_serc_date <- format(as.Date(Conch_Shallow_serc$DATE_, format = "%Y %m %d"),"%Y")
Conch_Shallow_serc_frame <- data.frame(Conch_Shallow_serc_date)
Conch_Shallow_serc_year <- cbind(Conch_Shallow_serc_frame, Conch_Shallow_serc)
colnames(Conch_Shallow_serc_year)[1]<- "Year"
Conch_Shallow_serc_year$FID <- NULL
Conch_Shallow_serc_year$SURV <- NULL
Conch_Shallow_serc_year$BASIN <- NULL
Conch_Shallow_serc_year$SEGMENT <- NULL
Conch_Shallow_serc_year$ZONE_ <- NULL
Conch_Shallow_serc_year$TIME_ <- NULL
Conch_Shallow_serc_year$DATE_ <- NULL
Conch_Shallow_serc_year$STATION <- NULL
Conch_Shallow_serc_year$SITE <- NULL



Conch_Shallow_ws_date <- format(as.Date(Conch_Shallow_ws$Date_, format = "%Y %m %d"),"%Y")
Conch_Shallow_ws_frame <- data.frame(Conch_Shallow_ws_date)
Conch_Shallow_ws_year <- cbind(Conch_Shallow_ws_frame, Conch_Shallow_ws)
colnames(Conch_Shallow_ws_year)[1]<- "Year"
Conch_Shallow_ws_year$FID <- NULL
Conch_Shallow_ws_year$Station <- NULL
Conch_Shallow_ws_year$Date_ <- NULL
Conch_Shallow_ws_year$GMT <- NULL
Conch_Shallow_ws_year$Field11 <- NULL
Conch_Shallow_ws_year$Field12 <- NULL
Conch_Shallow_ws_year$Field13 <- NULL
Conch_Shallow_ws_year$Field14 <- NULL
Conch_Shallow_ws_year$Field15 <- NULL
Conch_Shallow_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Conch_Shallow_serc_year$Year)
unique(Conch_Shallow_ws_year$Year)


Conch_Shallow_serc_2000 <- subset(Conch_Shallow_serc_year, Year == "2000")
Conch_Shallow_serc_2000_merge <- Conch_Shallow_serc_2000 %>%
  mutate(id = row_number())

Conch_Shallow_ws_2000 <- subset(Conch_Shallow_ws_year, Year == "2000")
Conch_Shallow_ws_2000_merge <- Conch_Shallow_ws_2000 %>%
  mutate(id = row_number())

Conch_Shallow_2000_all <- full_join(Conch_Shallow_serc_2000_merge, Conch_Shallow_ws_2000_merge, by = c("Year","id"))


Conch_Shallow_serc_2001 <- subset(Conch_Shallow_serc_year, Year == "2001")
Conch_Shallow_serc_2001_merge <- Conch_Shallow_serc_2001 %>%
  mutate(id = row_number())

Conch_Shallow_ws_2001 <- subset(Conch_Shallow_ws_year, Year == "2001")
Conch_Shallow_ws_2001_merge <- Conch_Shallow_ws_2001 %>%
  mutate(id = row_number())

Conch_Shallow_2001_all <- full_join(Conch_Shallow_serc_2001_merge, Conch_Shallow_ws_2001_merge, by = c("Year","id"))


Conch_Shallow_serc_2002 <- subset(Conch_Shallow_serc_year, Year == "2002")
Conch_Shallow_serc_2002_merge <- Conch_Shallow_serc_2002 %>%
  mutate(id = row_number())

Conch_Shallow_ws_2002 <- subset(Conch_Shallow_ws_year, Year == "2002")
Conch_Shallow_ws_2002_merge <- Conch_Shallow_ws_2002 %>%
  mutate(id = row_number())

Conch_Shallow_2002_all <- full_join(Conch_Shallow_serc_2002_merge, Conch_Shallow_ws_2002_merge, by = c("Year","id"))


Conch_Shallow_serc_2014 <- subset(Conch_Shallow_serc_year, Year == "2014")
Conch_Shallow_serc_2014_merge <- Conch_Shallow_serc_2014 %>%
  mutate(id = row_number())

Conch_Shallow_ws_2014 <- subset(Conch_Shallow_ws_year, Year == "2014")
Conch_Shallow_ws_2014_merge <- Conch_Shallow_ws_2014 %>%
  mutate(id = row_number())

Conch_Shallow_2014_all <- full_join(Conch_Shallow_serc_2014_merge, Conch_Shallow_ws_2014_merge, by = c("Year","id"))


Conch_Shallow_serc_2015 <- subset(Conch_Shallow_serc_year, Year == "2015")
Conch_Shallow_serc_2015_merge <- Conch_Shallow_serc_2015 %>%
  mutate(id = row_number())

Conch_Shallow_ws_2015 <- subset(Conch_Shallow_ws_year, Year == "2015")
Conch_Shallow_ws_2015_merge <- Conch_Shallow_ws_2015 %>%
  mutate(id = row_number())

Conch_Shallow_2015_all <- full_join(Conch_Shallow_serc_2015_merge, Conch_Shallow_ws_2015_merge, by = c("Year","id"))


Conch_Shallow_serc_2016 <- subset(Conch_Shallow_serc_year, Year == "2016")
Conch_Shallow_serc_2016_merge <- Conch_Shallow_serc_2016 %>%
  mutate(id = row_number())

Conch_Shallow_ws_2016 <- subset(Conch_Shallow_ws_year, Year == "2016")
Conch_Shallow_ws_2016_merge <- Conch_Shallow_ws_2016 %>%
  mutate(id = row_number())

Conch_Shallow_2016_all <- full_join(Conch_Shallow_serc_2016_merge, Conch_Shallow_ws_2016_merge, by = c("Year","id"))



Conch_Shallow_serc_2017 <- subset(Conch_Shallow_serc_year, Year == "2017")
Conch_Shallow_serc_2017_merge <- Conch_Shallow_serc_2017 %>%
  mutate(id = row_number())

Conch_Shallow_ws_2017 <- subset(Conch_Shallow_ws_year, Year == "2017")
Conch_Shallow_ws_2017_merge <- Conch_Shallow_ws_2017 %>%
  mutate(id = row_number())

Conch_Shallow_2017_all <- full_join(Conch_Shallow_serc_2017_merge, Conch_Shallow_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Conch_Shallow_ws_2018_all <- subset(Conch_Shallow_ws_year, Year == "2018")

## adding extra columns to merge

Conch_Shallow_ws_2018_all$LATDEC <- "NA"
Conch_Shallow_ws_2018_all$LONDEC <- "NA"
Conch_Shallow_ws_2018_all$DEPTH <- "NA"
Conch_Shallow_ws_2018_all$NOX_S <- "NA"
Conch_Shallow_ws_2018_all$NOX_B <- "NA"
Conch_Shallow_ws_2018_all$NO3_S <- "NA"
Conch_Shallow_ws_2018_all$NO3_B <- "NA"
Conch_Shallow_ws_2018_all$NO2_S <- "NA"
Conch_Shallow_ws_2018_all$NO2_B <- "NA"
Conch_Shallow_ws_2018_all$NH4_S <- "NA"
Conch_Shallow_ws_2018_all$NH4_B <- "NA"
Conch_Shallow_ws_2018_all$TN_S <- "NA"
Conch_Shallow_ws_2018_all$TN_B <- "NA"
Conch_Shallow_ws_2018_all$DIN_S <- "NA"
Conch_Shallow_ws_2018_all$DIN_B <- "NA"
Conch_Shallow_ws_2018_all$TON_S <- "NA"
Conch_Shallow_ws_2018_all$TON_B <- "NA"
Conch_Shallow_ws_2018_all$TP_S <- "NA"
Conch_Shallow_ws_2018_all$TP_B <- "NA"
Conch_Shallow_ws_2018_all$SRP_S <- "NA"
Conch_Shallow_ws_2018_all$SRP_B <- "NA"
Conch_Shallow_ws_2018_all$APA_S <- "NA"
Conch_Shallow_ws_2018_all$APA_B <- "NA"
Conch_Shallow_ws_2018_all$CHLA_S <- "NA"
Conch_Shallow_ws_2018_all$CHLA_B <- "NA"
Conch_Shallow_ws_2018_all$TOC_S <- "NA"
Conch_Shallow_ws_2018_all$TOC_B <- "NA"
Conch_Shallow_ws_2018_all$SiO2_S <- "NA"
Conch_Shallow_ws_2018_all$SiO2_B <- "NA"
Conch_Shallow_ws_2018_all$TURB_S <- "NA"
Conch_Shallow_ws_2018_all$TURB_B <- "NA"
Conch_Shallow_ws_2018_all$SAL_S <- "NA"
Conch_Shallow_ws_2018_all$SAL_B <- "NA"
Conch_Shallow_ws_2018_all$TEMP_S <- "NA"
Conch_Shallow_ws_2018_all$TEMP_B <- "NA"
Conch_Shallow_ws_2018_all$DO_S <- "NA"
Conch_Shallow_ws_2018_all$DO_B <- "NA"
Conch_Shallow_ws_2018_all$Kd <- "NA"
Conch_Shallow_ws_2018_all$pH <- "NA"
Conch_Shallow_ws_2018_all$TN_TP <- "NA"
Conch_Shallow_ws_2018_all$N_P <- "NA"
Conch_Shallow_ws_2018_all$DIN_TP <- "NA"
Conch_Shallow_ws_2018_all$Si_DIN <- "NA"
Conch_Shallow_ws_2018_all$F_SAT_S <- "NA"
Conch_Shallow_ws_2018_all$F_SAT_B <- "NA"
Conch_Shallow_ws_2018_all$F_Io <- "NA"
Conch_Shallow_ws_2018_all$DSIGT <- "NA"
Conch_Shallow_ws_2018_all$id <- "NA"







## rest of the serc data
Conch_Shallow_serc_1995 <- subset(Conch_Shallow_serc_year, Year == "1995")
Conch_Shallow_serc_1996 <- subset(Conch_Shallow_serc_year, Year == "1996")
Conch_Shallow_serc_1997 <- subset(Conch_Shallow_serc_year, Year == "1997")
Conch_Shallow_serc_1998 <- subset(Conch_Shallow_serc_year, Year == "1998")
Conch_Shallow_serc_1999 <- subset(Conch_Shallow_serc_year, Year == "1999")
#Conch_Shallow_serc_2000 <- subset(Conch_Shallow_serc_year, Year == "2008")
#Conch_Shallow_serc_2001 <- subset(Conch_Shallow_serc_year, Year == "2008")
#Conch_Shallow_serc_2002 <- subset(Conch_Shallow_serc_year, Year == "2008")
Conch_Shallow_serc_2003 <- subset(Conch_Shallow_serc_year, Year == "2003")
Conch_Shallow_serc_2004 <- subset(Conch_Shallow_serc_year, Year == "2004")
Conch_Shallow_serc_2005 <- subset(Conch_Shallow_serc_year, Year == "2005")
Conch_Shallow_serc_2006 <- subset(Conch_Shallow_serc_year, Year == "2006")
Conch_Shallow_serc_2007 <- subset(Conch_Shallow_serc_year, Year == "2007")
Conch_Shallow_serc_2008 <- subset(Conch_Shallow_serc_year, Year == "2008")
Conch_Shallow_serc_2009 <- subset(Conch_Shallow_serc_year, Year == "2009")
Conch_Shallow_serc_2010 <- subset(Conch_Shallow_serc_year, Year == "2010")
Conch_Shallow_serc_2011 <- subset(Conch_Shallow_serc_year, Year == "2011")
Conch_Shallow_serc_2012 <- subset(Conch_Shallow_serc_year, Year == "2012")
Conch_Shallow_serc_2013 <- subset(Conch_Shallow_serc_year, Year == "2013")
#Conch_Shallow_serc_2014 <- subset(Conch_Shallow_serc_year, Year == "2014")



Conch_Shallow_serc_extra <- rbind(Conch_Shallow_serc_1995,Conch_Shallow_serc_1996,Conch_Shallow_serc_1997,Conch_Shallow_serc_1998,Conch_Shallow_serc_1999,Conch_Shallow_serc_2003,Conch_Shallow_serc_2004,Conch_Shallow_serc_2005,Conch_Shallow_serc_2006,Conch_Shallow_serc_2007,Conch_Shallow_serc_2008,Conch_Shallow_serc_2009,Conch_Shallow_serc_2010,Conch_Shallow_serc_2011,Conch_Shallow_serc_2012,Conch_Shallow_serc_2013)




Conch_Shallow_serc_extra$Longitude <- "NA"
Conch_Shallow_serc_extra$Latitude <- "NA"
Conch_Shallow_serc_extra$Depth <- "NA"
Conch_Shallow_serc_extra$SST <- "NA"
Conch_Shallow_serc_extra$SSS <- "NA"
Conch_Shallow_serc_extra$Chl_a <- "NA"
Conch_Shallow_serc_extra$Phaeophyti <- "NA"
Conch_Shallow_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Conch_Shallow_ws_2018_all <- setcolorder(Conch_Shallow_ws_2018_all, names(Conch_Shallow_serc_extra))

## Merge all years together 

Conch_Shallow_all <- rbind(Conch_Shallow_serc_extra,Conch_Shallow_2000_all,Conch_Shallow_2001_all,Conch_Shallow_2002_all,Conch_Shallow_2014_all,Conch_Shallow_2015_all,Conch_Shallow_2016_all,Conch_Shallow_2017_all,Conch_Shallow_ws_2018_all)
Conch_Shallow_all$sitename <- "Conch_Shallow"

export(Conch_Shallow_all,"UK_10km/Conch_Shallow_combined.csv")



Dove_Key_serc <- import("UK_10km/Dove_Key_serc.xls")
Dove_Key_ws <- import("UK_10km/Dove_Key_ws.xls")

## Change date to Year to merge the two dataframes

Dove_Key_serc_date <- format(as.Date(Dove_Key_serc$DATE_, format = "%Y %m %d"),"%Y")
Dove_Key_serc_frame <- data.frame(Dove_Key_serc_date)
Dove_Key_serc_year <- cbind(Dove_Key_serc_frame, Dove_Key_serc)
colnames(Dove_Key_serc_year)[1]<- "Year"
Dove_Key_serc_year$FID <- NULL
Dove_Key_serc_year$SURV <- NULL
Dove_Key_serc_year$BASIN <- NULL
Dove_Key_serc_year$SEGMENT <- NULL
Dove_Key_serc_year$ZONE_ <- NULL
Dove_Key_serc_year$TIME_ <- NULL
Dove_Key_serc_year$DATE_ <- NULL
Dove_Key_serc_year$STATION <- NULL
Dove_Key_serc_year$SITE <- NULL



Dove_Key_ws_date <- format(as.Date(Dove_Key_ws$Date_, format = "%Y %m %d"),"%Y")
Dove_Key_ws_frame <- data.frame(Dove_Key_ws_date)
Dove_Key_ws_year <- cbind(Dove_Key_ws_frame, Dove_Key_ws)
colnames(Dove_Key_ws_year)[1]<- "Year"
Dove_Key_ws_year$FID <- NULL
Dove_Key_ws_year$Station <- NULL
Dove_Key_ws_year$Date_ <- NULL
Dove_Key_ws_year$GMT <- NULL
Dove_Key_ws_year$Field11 <- NULL
Dove_Key_ws_year$Field12 <- NULL
Dove_Key_ws_year$Field13 <- NULL
Dove_Key_ws_year$Field14 <- NULL
Dove_Key_ws_year$Field15 <- NULL
Dove_Key_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Dove_Key_serc_year$Year)
unique(Dove_Key_ws_year$Year)


Dove_Key_serc_2000 <- subset(Dove_Key_serc_year, Year == "2000")
Dove_Key_serc_2000_merge <- Dove_Key_serc_2000 %>%
  mutate(id = row_number())

Dove_Key_ws_2000 <- subset(Dove_Key_ws_year, Year == "2000")
Dove_Key_ws_2000_merge <- Dove_Key_ws_2000 %>%
  mutate(id = row_number())

Dove_Key_2000_all <- full_join(Dove_Key_serc_2000_merge, Dove_Key_ws_2000_merge, by = c("Year","id"))


Dove_Key_serc_2001 <- subset(Dove_Key_serc_year, Year == "2001")
Dove_Key_serc_2001_merge <- Dove_Key_serc_2001 %>%
  mutate(id = row_number())

Dove_Key_ws_2001 <- subset(Dove_Key_ws_year, Year == "2001")
Dove_Key_ws_2001_merge <- Dove_Key_ws_2001 %>%
  mutate(id = row_number())

Dove_Key_2001_all <- full_join(Dove_Key_serc_2001_merge, Dove_Key_ws_2001_merge, by = c("Year","id"))


Dove_Key_serc_2002 <- subset(Dove_Key_serc_year, Year == "2002")
Dove_Key_serc_2002_merge <- Dove_Key_serc_2002 %>%
  mutate(id = row_number())

Dove_Key_ws_2002 <- subset(Dove_Key_ws_year, Year == "2002")
Dove_Key_ws_2002_merge <- Dove_Key_ws_2002 %>%
  mutate(id = row_number())

Dove_Key_2002_all <- full_join(Dove_Key_serc_2002_merge, Dove_Key_ws_2002_merge, by = c("Year","id"))


# Dove_Key_serc_2014 <- subset(Dove_Key_serc_year, Year == "2014")
# Dove_Key_serc_2014_merge <- Dove_Key_serc_2014 %>%
#   mutate(id = row_number())
# 
# Dove_Key_ws_2014 <- subset(Dove_Key_ws_year, Year == "2014")
# Dove_Key_ws_2014_merge <- Dove_Key_ws_2014 %>%
#   mutate(id = row_number())
# 
# Dove_Key_2014_all <- full_join(Dove_Key_serc_2014_merge, Dove_Key_ws_2014_merge, by = c("Year","id"))


Dove_Key_serc_2015 <- subset(Dove_Key_serc_year, Year == "2015")
Dove_Key_serc_2015_merge <- Dove_Key_serc_2015 %>%
  mutate(id = row_number())

Dove_Key_ws_2015 <- subset(Dove_Key_ws_year, Year == "2015")
Dove_Key_ws_2015_merge <- Dove_Key_ws_2015 %>%
  mutate(id = row_number())

Dove_Key_2015_all <- full_join(Dove_Key_serc_2015_merge, Dove_Key_ws_2015_merge, by = c("Year","id"))


Dove_Key_serc_2016 <- subset(Dove_Key_serc_year, Year == "2016")
Dove_Key_serc_2016_merge <- Dove_Key_serc_2016 %>%
  mutate(id = row_number())

Dove_Key_ws_2016 <- subset(Dove_Key_ws_year, Year == "2016")
Dove_Key_ws_2016_merge <- Dove_Key_ws_2016 %>%
  mutate(id = row_number())

Dove_Key_2016_all <- full_join(Dove_Key_serc_2016_merge, Dove_Key_ws_2016_merge, by = c("Year","id"))



# Dove_Key_serc_2017 <- subset(Dove_Key_serc_year, Year == "2017")
# Dove_Key_serc_2017_merge <- Dove_Key_serc_2017 %>%
#   mutate(id = row_number())
# 
# Dove_Key_ws_2017 <- subset(Dove_Key_ws_year, Year == "2017")
# Dove_Key_ws_2017_merge <- Dove_Key_ws_2017 %>%
#   mutate(id = row_number())
# 
# Dove_Key_2017_all <- full_join(Dove_Key_serc_2017_merge, Dove_Key_ws_2017_merge, by = c("Year","id"))
# 
# 
# 
# ### ADD on years for ws (need to add missing columns to merge)
# 
# Dove_Key_ws_2018_all <- subset(Dove_Key_ws_year, Year == "2018")
# 
# ## adding extra columns to merge
# 
# Dove_Key_ws_2018_all$LATDEC <- "NA"
# Dove_Key_ws_2018_all$LONDEC <- "NA"
# Dove_Key_ws_2018_all$DEPTH <- "NA"
# Dove_Key_ws_2018_all$NOX_S <- "NA"
# Dove_Key_ws_2018_all$NOX_B <- "NA"
# Dove_Key_ws_2018_all$NO3_S <- "NA"
# Dove_Key_ws_2018_all$NO3_B <- "NA"
# Dove_Key_ws_2018_all$NO2_S <- "NA"
# Dove_Key_ws_2018_all$NO2_B <- "NA"
# Dove_Key_ws_2018_all$NH4_S <- "NA"
# Dove_Key_ws_2018_all$NH4_B <- "NA"
# Dove_Key_ws_2018_all$TN_S <- "NA"
# Dove_Key_ws_2018_all$TN_B <- "NA"
# Dove_Key_ws_2018_all$DIN_S <- "NA"
# Dove_Key_ws_2018_all$DIN_B <- "NA"
# Dove_Key_ws_2018_all$TON_S <- "NA"
# Dove_Key_ws_2018_all$TON_B <- "NA"
# Dove_Key_ws_2018_all$TP_S <- "NA"
# Dove_Key_ws_2018_all$TP_B <- "NA"
# Dove_Key_ws_2018_all$SRP_S <- "NA"
# Dove_Key_ws_2018_all$SRP_B <- "NA"
# Dove_Key_ws_2018_all$APA_S <- "NA"
# Dove_Key_ws_2018_all$APA_B <- "NA"
# Dove_Key_ws_2018_all$CHLA_S <- "NA"
# Dove_Key_ws_2018_all$CHLA_B <- "NA"
# Dove_Key_ws_2018_all$TOC_S <- "NA"
# Dove_Key_ws_2018_all$TOC_B <- "NA"
# Dove_Key_ws_2018_all$SiO2_S <- "NA"
# Dove_Key_ws_2018_all$SiO2_B <- "NA"
# Dove_Key_ws_2018_all$TURB_S <- "NA"
# Dove_Key_ws_2018_all$TURB_B <- "NA"
# Dove_Key_ws_2018_all$SAL_S <- "NA"
# Dove_Key_ws_2018_all$SAL_B <- "NA"
# Dove_Key_ws_2018_all$TEMP_S <- "NA"
# Dove_Key_ws_2018_all$TEMP_B <- "NA"
# Dove_Key_ws_2018_all$DO_S <- "NA"
# Dove_Key_ws_2018_all$DO_B <- "NA"
# Dove_Key_ws_2018_all$Kd <- "NA"
# Dove_Key_ws_2018_all$pH <- "NA"
# Dove_Key_ws_2018_all$TN_TP <- "NA"
# Dove_Key_ws_2018_all$N_P <- "NA"
# Dove_Key_ws_2018_all$DIN_TP <- "NA"
# Dove_Key_ws_2018_all$Si_DIN <- "NA"
# Dove_Key_ws_2018_all$F_SAT_S <- "NA"
# Dove_Key_ws_2018_all$F_SAT_B <- "NA"
# Dove_Key_ws_2018_all$F_Io <- "NA"
# Dove_Key_ws_2018_all$DSIGT <- "NA"
# Dove_Key_ws_2018_all$id <- "NA"
# 
# 





## rest of the serc data
Dove_Key_serc_1995 <- subset(Dove_Key_serc_year, Year == "1995")
Dove_Key_serc_1996 <- subset(Dove_Key_serc_year, Year == "1996")
Dove_Key_serc_1997 <- subset(Dove_Key_serc_year, Year == "1997")
Dove_Key_serc_1998 <- subset(Dove_Key_serc_year, Year == "1998")
Dove_Key_serc_1999 <- subset(Dove_Key_serc_year, Year == "1999")
#Dove_Key_serc_2000 <- subset(Dove_Key_serc_year, Year == "2008")
#Dove_Key_serc_2001 <- subset(Dove_Key_serc_year, Year == "2008")
#Dove_Key_serc_2002 <- subset(Dove_Key_serc_year, Year == "2008")
Dove_Key_serc_2003 <- subset(Dove_Key_serc_year, Year == "2003")
Dove_Key_serc_2004 <- subset(Dove_Key_serc_year, Year == "2004")
Dove_Key_serc_2005 <- subset(Dove_Key_serc_year, Year == "2005")
Dove_Key_serc_2006 <- subset(Dove_Key_serc_year, Year == "2006")
Dove_Key_serc_2007 <- subset(Dove_Key_serc_year, Year == "2007")
Dove_Key_serc_2008 <- subset(Dove_Key_serc_year, Year == "2008")
Dove_Key_serc_2009 <- subset(Dove_Key_serc_year, Year == "2009")
Dove_Key_serc_2010 <- subset(Dove_Key_serc_year, Year == "2010")
Dove_Key_serc_2011 <- subset(Dove_Key_serc_year, Year == "2011")
Dove_Key_serc_2012 <- subset(Dove_Key_serc_year, Year == "2012")
Dove_Key_serc_2013 <- subset(Dove_Key_serc_year, Year == "2013")
Dove_Key_serc_2014 <- subset(Dove_Key_serc_year, Year == "2014")
Dove_Key_serc_2017 <- subset(Dove_Key_serc_year, Year == "2017")



Dove_Key_serc_extra <- rbind(Dove_Key_serc_1995,Dove_Key_serc_1996,Dove_Key_serc_1997,Dove_Key_serc_1998,Dove_Key_serc_1999,Dove_Key_serc_2003,Dove_Key_serc_2004,Dove_Key_serc_2005,Dove_Key_serc_2006,Dove_Key_serc_2007,Dove_Key_serc_2008,Dove_Key_serc_2009,Dove_Key_serc_2010,Dove_Key_serc_2011,Dove_Key_serc_2012,Dove_Key_serc_2013,Dove_Key_serc_2014,Dove_Key_serc_2017)




Dove_Key_serc_extra$Longitude <- "NA"
Dove_Key_serc_extra$Latitude <- "NA"
Dove_Key_serc_extra$Depth <- "NA"
Dove_Key_serc_extra$SST <- "NA"
Dove_Key_serc_extra$SSS <- "NA"
Dove_Key_serc_extra$Chl_a <- "NA"
Dove_Key_serc_extra$Phaeophyti <- "NA"
Dove_Key_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

#Dove_Key_ws_2018_all <- setcolorder(Dove_Key_ws_2018_all, names(Dove_Key_serc_extra))

## Merge all years together 

Dove_Key_all <- rbind(Dove_Key_serc_extra,Dove_Key_2000_all,Dove_Key_2001_all,Dove_Key_2002_all,Dove_Key_2015_all,Dove_Key_2016_all)
Dove_Key_all$sitename <- "Dove_Key_all"

export(Dove_Key_all,"UK_10km/Dove_Key_combined.csv")



El_Radabob_serc <- import("UK_10km/El_Radabob_serc.xls")
El_Radabob_ws <- import("UK_10km/El_Radabob_ws.xls")

## Change date to Year to merge the two dataframes

El_Radabob_serc_date <- format(as.Date(El_Radabob_serc$DATE_, format = "%Y %m %d"),"%Y")
El_Radabob_serc_frame <- data.frame(El_Radabob_serc_date)
El_Radabob_serc_year <- cbind(El_Radabob_serc_frame, El_Radabob_serc)
colnames(El_Radabob_serc_year)[1]<- "Year"
El_Radabob_serc_year$FID <- NULL
El_Radabob_serc_year$SURV <- NULL
El_Radabob_serc_year$BASIN <- NULL
El_Radabob_serc_year$SEGMENT <- NULL
El_Radabob_serc_year$ZONE_ <- NULL
El_Radabob_serc_year$TIME_ <- NULL
El_Radabob_serc_year$DATE_ <- NULL
El_Radabob_serc_year$STATION <- NULL
El_Radabob_serc_year$SITE <- NULL



El_Radabob_ws_date <- format(as.Date(El_Radabob_ws$Date_, format = "%Y %m %d"),"%Y")
El_Radabob_ws_frame <- data.frame(El_Radabob_ws_date)
El_Radabob_ws_year <- cbind(El_Radabob_ws_frame, El_Radabob_ws)
colnames(El_Radabob_ws_year)[1]<- "Year"
El_Radabob_ws_year$FID <- NULL
El_Radabob_ws_year$Station <- NULL
El_Radabob_ws_year$Date_ <- NULL
El_Radabob_ws_year$GMT <- NULL
El_Radabob_ws_year$Field11 <- NULL
El_Radabob_ws_year$Field12 <- NULL
El_Radabob_ws_year$Field13 <- NULL
El_Radabob_ws_year$Field14 <- NULL
El_Radabob_ws_year$Field15 <- NULL
El_Radabob_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(El_Radabob_serc_year$Year)
unique(El_Radabob_ws_year$Year)


El_Radabob_serc_1998 <- subset(El_Radabob_serc_year, Year == "1998")
El_Radabob_serc_1998_merge <- El_Radabob_serc_1998 %>%
  mutate(id = row_number())

El_Radabob_ws_1998 <- subset(El_Radabob_ws_year, Year == "1998")
El_Radabob_ws_1998_merge <- El_Radabob_ws_1998 %>%
  mutate(id = row_number())

El_Radabob_1998_all <- full_join(El_Radabob_serc_1998_merge, El_Radabob_ws_1998_merge, by = c("Year","id"))


El_Radabob_serc_1999 <- subset(El_Radabob_serc_year, Year == "1999")
El_Radabob_serc_1999_merge <- El_Radabob_serc_1999 %>%
  mutate(id = row_number())

El_Radabob_ws_1999 <- subset(El_Radabob_ws_year, Year == "1999")
El_Radabob_ws_1999_merge <- El_Radabob_ws_1999 %>%
  mutate(id = row_number())

El_Radabob_1999_all <- full_join(El_Radabob_serc_1999_merge, El_Radabob_ws_1999_merge, by = c("Year","id"))


El_Radabob_serc_2000 <- subset(El_Radabob_serc_year, Year == "2000")
El_Radabob_serc_2000_merge <- El_Radabob_serc_2000 %>%
  mutate(id = row_number())

El_Radabob_ws_2000 <- subset(El_Radabob_ws_year, Year == "2000")
El_Radabob_ws_2000_merge <- El_Radabob_ws_2000 %>%
  mutate(id = row_number())

El_Radabob_2000_all <- full_join(El_Radabob_serc_2000_merge, El_Radabob_ws_2000_merge, by = c("Year","id"))


El_Radabob_serc_2001 <- subset(El_Radabob_serc_year, Year == "2001")
El_Radabob_serc_2001_merge <- El_Radabob_serc_2001 %>%
  mutate(id = row_number())

El_Radabob_ws_2001 <- subset(El_Radabob_ws_year, Year == "2001")
El_Radabob_ws_2001_merge <- El_Radabob_ws_2001 %>%
  mutate(id = row_number())

El_Radabob_2001_all <- full_join(El_Radabob_serc_2001_merge, El_Radabob_ws_2001_merge, by = c("Year","id"))


El_Radabob_serc_2002 <- subset(El_Radabob_serc_year, Year == "2002")
El_Radabob_serc_2002_merge <- El_Radabob_serc_2002 %>%
  mutate(id = row_number())

El_Radabob_ws_2002 <- subset(El_Radabob_ws_year, Year == "2002")
El_Radabob_ws_2002_merge <- El_Radabob_ws_2002 %>%
  mutate(id = row_number())

El_Radabob_2002_all <- full_join(El_Radabob_serc_2002_merge, El_Radabob_ws_2002_merge, by = c("Year","id"))


El_Radabob_serc_2003 <- subset(El_Radabob_serc_year, Year == "2003")
El_Radabob_serc_2003_merge <- El_Radabob_serc_2003 %>%
  mutate(id = row_number())

El_Radabob_ws_2003 <- subset(El_Radabob_ws_year, Year == "2003")
El_Radabob_ws_2003_merge <- El_Radabob_ws_2003 %>%
  mutate(id = row_number())

El_Radabob_2003_all <- full_join(El_Radabob_serc_2003_merge, El_Radabob_ws_2003_merge, by = c("Year","id"))


El_Radabob_serc_2004 <- subset(El_Radabob_serc_year, Year == "2004")
El_Radabob_serc_2004_merge <- El_Radabob_serc_2004 %>%
  mutate(id = row_number())

El_Radabob_ws_2004 <- subset(El_Radabob_ws_year, Year == "2004")
El_Radabob_ws_2004_merge <- El_Radabob_ws_2004 %>%
  mutate(id = row_number())

El_Radabob_2004_all <- full_join(El_Radabob_serc_2004_merge, El_Radabob_ws_2004_merge, by = c("Year","id"))


El_Radabob_serc_2005 <- subset(El_Radabob_serc_year, Year == "2005")
El_Radabob_serc_2005_merge <- El_Radabob_serc_2005 %>%
  mutate(id = row_number())

El_Radabob_ws_2005 <- subset(El_Radabob_ws_year, Year == "2005")
El_Radabob_ws_2005_merge <- El_Radabob_ws_2005 %>%
  mutate(id = row_number())

El_Radabob_2005_all <- full_join(El_Radabob_serc_2005_merge, El_Radabob_ws_2005_merge, by = c("Year","id"))


El_Radabob_serc_2006 <- subset(El_Radabob_serc_year, Year == "2006")
El_Radabob_serc_2006_merge <- El_Radabob_serc_2006 %>%
  mutate(id = row_number())

El_Radabob_ws_2006 <- subset(El_Radabob_ws_year, Year == "2006")
El_Radabob_ws_2006_merge <- El_Radabob_ws_2006 %>%
  mutate(id = row_number())

El_Radabob_2006_all <- full_join(El_Radabob_serc_2006_merge, El_Radabob_ws_2006_merge, by = c("Year","id"))


El_Radabob_serc_2007 <- subset(El_Radabob_serc_year, Year == "2007")
El_Radabob_serc_2007_merge <- El_Radabob_serc_2007 %>%
  mutate(id = row_number())

El_Radabob_ws_2007 <- subset(El_Radabob_ws_year, Year == "2007")
El_Radabob_ws_2007_merge <- El_Radabob_ws_2007 %>%
  mutate(id = row_number())

El_Radabob_2007_all <- full_join(El_Radabob_serc_2007_merge, El_Radabob_ws_2007_merge, by = c("Year","id"))


El_Radabob_serc_2008 <- subset(El_Radabob_serc_year, Year == "2008")
El_Radabob_serc_2008_merge <- El_Radabob_serc_2008 %>%
  mutate(id = row_number())

El_Radabob_ws_2008 <- subset(El_Radabob_ws_year, Year == "2008")
El_Radabob_ws_2008_merge <- El_Radabob_ws_2008 %>%
  mutate(id = row_number())

El_Radabob_2008_all <- full_join(El_Radabob_serc_2008_merge, El_Radabob_ws_2008_merge, by = c("Year","id"))


El_Radabob_serc_2009 <- subset(El_Radabob_serc_year, Year == "2009")
El_Radabob_serc_2009_merge <- El_Radabob_serc_2009 %>%
  mutate(id = row_number())

El_Radabob_ws_2009 <- subset(El_Radabob_ws_year, Year == "2009")
El_Radabob_ws_2009_merge <- El_Radabob_ws_2009 %>%
  mutate(id = row_number())

El_Radabob_2009_all <- full_join(El_Radabob_serc_2009_merge, El_Radabob_ws_2009_merge, by = c("Year","id"))


El_Radabob_serc_2010 <- subset(El_Radabob_serc_year, Year == "2010")
El_Radabob_serc_2010_merge <- El_Radabob_serc_2010 %>%
  mutate(id = row_number())

El_Radabob_ws_2010 <- subset(El_Radabob_ws_year, Year == "2010")
El_Radabob_ws_2010_merge <- El_Radabob_ws_2010 %>%
  mutate(id = row_number())

El_Radabob_2010_all <- full_join(El_Radabob_serc_2010_merge, El_Radabob_ws_2010_merge, by = c("Year","id"))


El_Radabob_serc_2011 <- subset(El_Radabob_serc_year, Year == "2011")
El_Radabob_serc_2011_merge <- El_Radabob_serc_2011 %>%
  mutate(id = row_number())

El_Radabob_ws_2011 <- subset(El_Radabob_ws_year, Year == "2011")
El_Radabob_ws_2011_merge <- El_Radabob_ws_2011 %>%
  mutate(id = row_number())

El_Radabob_2011_all <- full_join(El_Radabob_serc_2011_merge, El_Radabob_ws_2011_merge, by = c("Year","id"))


El_Radabob_serc_2012 <- subset(El_Radabob_serc_year, Year == "2012")
El_Radabob_serc_2012_merge <- El_Radabob_serc_2012 %>%
  mutate(id = row_number())

El_Radabob_ws_2012 <- subset(El_Radabob_ws_year, Year == "2012")
El_Radabob_ws_2012_merge <- El_Radabob_ws_2012 %>%
  mutate(id = row_number())

El_Radabob_2012_all <- full_join(El_Radabob_serc_2012_merge, El_Radabob_ws_2012_merge, by = c("Year","id"))


El_Radabob_serc_2014 <- subset(El_Radabob_serc_year, Year == "2014")
El_Radabob_serc_2014_merge <- El_Radabob_serc_2014 %>%
  mutate(id = row_number())

El_Radabob_ws_2014 <- subset(El_Radabob_ws_year, Year == "2014")
El_Radabob_ws_2014_merge <- El_Radabob_ws_2014 %>%
  mutate(id = row_number())

El_Radabob_2014_all <- full_join(El_Radabob_serc_2014_merge, El_Radabob_ws_2014_merge, by = c("Year","id"))


El_Radabob_serc_2015 <- subset(El_Radabob_serc_year, Year == "2015")
El_Radabob_serc_2015_merge <- El_Radabob_serc_2015 %>%
  mutate(id = row_number())

El_Radabob_ws_2015 <- subset(El_Radabob_ws_year, Year == "2015")
El_Radabob_ws_2015_merge <- El_Radabob_ws_2015 %>%
  mutate(id = row_number())

El_Radabob_2015_all <- full_join(El_Radabob_serc_2015_merge, El_Radabob_ws_2015_merge, by = c("Year","id"))


El_Radabob_serc_2016 <- subset(El_Radabob_serc_year, Year == "2016")
El_Radabob_serc_2016_merge <- El_Radabob_serc_2016 %>%
  mutate(id = row_number())

El_Radabob_ws_2016 <- subset(El_Radabob_ws_year, Year == "2016")
El_Radabob_ws_2016_merge <- El_Radabob_ws_2016 %>%
  mutate(id = row_number())

El_Radabob_2016_all <- full_join(El_Radabob_serc_2016_merge, El_Radabob_ws_2016_merge, by = c("Year","id"))



El_Radabob_serc_2017 <- subset(El_Radabob_serc_year, Year == "2017")
El_Radabob_serc_2017_merge <- El_Radabob_serc_2017 %>%
  mutate(id = row_number())

El_Radabob_ws_2017 <- subset(El_Radabob_ws_year, Year == "2017")
El_Radabob_ws_2017_merge <- El_Radabob_ws_2017 %>%
  mutate(id = row_number())

El_Radabob_2017_all <- full_join(El_Radabob_serc_2017_merge, El_Radabob_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

El_Radabob_ws_2018_all <- subset(El_Radabob_ws_year, Year == "2018") 

## adding extra columns to merge 

El_Radabob_ws_2018_all$LATDEC <- "NA"
El_Radabob_ws_2018_all$LONDEC <- "NA"
El_Radabob_ws_2018_all$DEPTH <- "NA"
El_Radabob_ws_2018_all$NOX_S <- "NA"
El_Radabob_ws_2018_all$NOX_B <- "NA"
El_Radabob_ws_2018_all$NO3_S <- "NA"
El_Radabob_ws_2018_all$NO3_B <- "NA"
El_Radabob_ws_2018_all$NO2_S <- "NA"
El_Radabob_ws_2018_all$NO2_B <- "NA"
El_Radabob_ws_2018_all$NH4_S <- "NA"
El_Radabob_ws_2018_all$NH4_B <- "NA"
El_Radabob_ws_2018_all$TN_S <- "NA"
El_Radabob_ws_2018_all$TN_B <- "NA"
El_Radabob_ws_2018_all$DIN_S <- "NA"
El_Radabob_ws_2018_all$DIN_B <- "NA"
El_Radabob_ws_2018_all$TON_S <- "NA"
El_Radabob_ws_2018_all$TON_B <- "NA"
El_Radabob_ws_2018_all$TP_S <- "NA"
El_Radabob_ws_2018_all$TP_B <- "NA"
El_Radabob_ws_2018_all$SRP_S <- "NA"
El_Radabob_ws_2018_all$SRP_B <- "NA"
El_Radabob_ws_2018_all$APA_S <- "NA"
El_Radabob_ws_2018_all$APA_B <- "NA"
El_Radabob_ws_2018_all$CHLA_S <- "NA"
El_Radabob_ws_2018_all$CHLA_B <- "NA"
El_Radabob_ws_2018_all$TOC_S <- "NA"
El_Radabob_ws_2018_all$TOC_B <- "NA"
El_Radabob_ws_2018_all$SiO2_S <- "NA"
El_Radabob_ws_2018_all$SiO2_B <- "NA"
El_Radabob_ws_2018_all$TURB_S <- "NA"
El_Radabob_ws_2018_all$TURB_B <- "NA"
El_Radabob_ws_2018_all$SAL_S <- "NA"
El_Radabob_ws_2018_all$SAL_B <- "NA"
El_Radabob_ws_2018_all$TEMP_S <- "NA"
El_Radabob_ws_2018_all$TEMP_B <- "NA"
El_Radabob_ws_2018_all$DO_S <- "NA"
El_Radabob_ws_2018_all$DO_B <- "NA"
El_Radabob_ws_2018_all$Kd <- "NA"
El_Radabob_ws_2018_all$pH <- "NA"
El_Radabob_ws_2018_all$TN_TP <- "NA"
El_Radabob_ws_2018_all$N_P <- "NA"
El_Radabob_ws_2018_all$DIN_TP <- "NA"
El_Radabob_ws_2018_all$Si_DIN <- "NA"
El_Radabob_ws_2018_all$F_SAT_S <- "NA"
El_Radabob_ws_2018_all$F_SAT_B <- "NA"
El_Radabob_ws_2018_all$F_Io <- "NA"
El_Radabob_ws_2018_all$DSIGT <- "NA"
El_Radabob_ws_2018_all$id <- "NA"







## rest of the serc data
El_Radabob_serc_1995 <- subset(El_Radabob_serc_year, Year == "1995")
El_Radabob_serc_1996 <- subset(El_Radabob_serc_year, Year == "1996")
El_Radabob_serc_1997 <- subset(El_Radabob_serc_year, Year == "1997")
# El_Radabob_serc_1998 <- subset(El_Radabob_serc_year, Year == "1998")
# El_Radabob_serc_1999 <- subset(El_Radabob_serc_year, Year == "1999")
# El_Radabob_serc_2000 <- subset(El_Radabob_serc_year, Year == "2000")
# El_Radabob_serc_2001 <- subset(El_Radabob_serc_year, Year == "2001")
El_Radabob_serc_2013 <- subset(El_Radabob_serc_year, Year == "2013")



El_Radabob_serc_extra <- rbind(El_Radabob_serc_1995,El_Radabob_serc_1996,El_Radabob_serc_1997,El_Radabob_serc_2013)




El_Radabob_serc_extra$Longitude <- "NA"
El_Radabob_serc_extra$Latitude <- "NA"
El_Radabob_serc_extra$Depth <- "NA"
El_Radabob_serc_extra$SST <- "NA"
El_Radabob_serc_extra$SSS <- "NA"
El_Radabob_serc_extra$Chl_a <- "NA"
El_Radabob_serc_extra$Phaeophyti <- "NA"
El_Radabob_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

El_Radabob_ws_2018_all <- setcolorder(El_Radabob_ws_2018_all, names(El_Radabob_serc_extra))

## Merge all years together 

El_Radabob_all <- rbind(El_Radabob_serc_extra,El_Radabob_1998_all,El_Radabob_1999_all,El_Radabob_2000_all,El_Radabob_2001_all,El_Radabob_2002_all,El_Radabob_2003_all,El_Radabob_2004_all, El_Radabob_2005_all,El_Radabob_2006_all,El_Radabob_2007_all,El_Radabob_2008_all,El_Radabob_2009_all,El_Radabob_2010_all,El_Radabob_2011_all,El_Radabob_2012_all,El_Radabob_2014_all,El_Radabob_2015_all,El_Radabob_2016_all,El_Radabob_2017_all,El_Radabob_ws_2018_all)
El_Radabob_all$sitename <- "El_Radabob"

export(El_Radabob_all,"UK_10km/El_Radabob_combined.csv")




Grecian_Rocks_serc <- import("UK_10km/Grecian_Rocks_serc.xls")
Grecian_Rocks_ws <- import("UK_10km/Grecian_Rocks_ws.xls")

## Change date to Year to merge the two dataframes

Grecian_Rocks_serc_date <- format(as.Date(Grecian_Rocks_serc$DATE_, format = "%Y %m %d"),"%Y")
Grecian_Rocks_serc_frame <- data.frame(Grecian_Rocks_serc_date)
Grecian_Rocks_serc_year <- cbind(Grecian_Rocks_serc_frame, Grecian_Rocks_serc)
colnames(Grecian_Rocks_serc_year)[1]<- "Year"
Grecian_Rocks_serc_year$FID <- NULL
Grecian_Rocks_serc_year$SURV <- NULL
Grecian_Rocks_serc_year$BASIN <- NULL
Grecian_Rocks_serc_year$SEGMENT <- NULL
Grecian_Rocks_serc_year$ZONE_ <- NULL
Grecian_Rocks_serc_year$TIME_ <- NULL
Grecian_Rocks_serc_year$DATE_ <- NULL
Grecian_Rocks_serc_year$STATION <- NULL
Grecian_Rocks_serc_year$SITE <- NULL



Grecian_Rocks_ws_date <- format(as.Date(Grecian_Rocks_ws$Date_, format = "%Y %m %d"),"%Y")
Grecian_Rocks_ws_frame <- data.frame(Grecian_Rocks_ws_date)
Grecian_Rocks_ws_year <- cbind(Grecian_Rocks_ws_frame, Grecian_Rocks_ws)
colnames(Grecian_Rocks_ws_year)[1]<- "Year"
Grecian_Rocks_ws_year$FID <- NULL
Grecian_Rocks_ws_year$Station <- NULL
Grecian_Rocks_ws_year$Date_ <- NULL
Grecian_Rocks_ws_year$GMT <- NULL
Grecian_Rocks_ws_year$Field11 <- NULL
Grecian_Rocks_ws_year$Field12 <- NULL
Grecian_Rocks_ws_year$Field13 <- NULL
Grecian_Rocks_ws_year$Field14 <- NULL
Grecian_Rocks_ws_year$Field15 <- NULL
Grecian_Rocks_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Grecian_Rocks_serc_year$Year)
unique(Grecian_Rocks_ws_year$Year)


Grecian_Rocks_serc_1998 <- subset(Grecian_Rocks_serc_year, Year == "1998")
Grecian_Rocks_serc_1998_merge <- Grecian_Rocks_serc_1998 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_1998 <- subset(Grecian_Rocks_ws_year, Year == "1998")
Grecian_Rocks_ws_1998_merge <- Grecian_Rocks_ws_1998 %>%
  mutate(id = row_number())

Grecian_Rocks_1998_all <- full_join(Grecian_Rocks_serc_1998_merge, Grecian_Rocks_ws_1998_merge, by = c("Year","id"))


Grecian_Rocks_serc_1999 <- subset(Grecian_Rocks_serc_year, Year == "1999")
Grecian_Rocks_serc_1999_merge <- Grecian_Rocks_serc_1999 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_1999 <- subset(Grecian_Rocks_ws_year, Year == "1999")
Grecian_Rocks_ws_1999_merge <- Grecian_Rocks_ws_1999 %>%
  mutate(id = row_number())

Grecian_Rocks_1999_all <- full_join(Grecian_Rocks_serc_1999_merge, Grecian_Rocks_ws_1999_merge, by = c("Year","id"))


Grecian_Rocks_serc_2000 <- subset(Grecian_Rocks_serc_year, Year == "2000")
Grecian_Rocks_serc_2000_merge <- Grecian_Rocks_serc_2000 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2000 <- subset(Grecian_Rocks_ws_year, Year == "2000")
Grecian_Rocks_ws_2000_merge <- Grecian_Rocks_ws_2000 %>%
  mutate(id = row_number())

Grecian_Rocks_2000_all <- full_join(Grecian_Rocks_serc_2000_merge, Grecian_Rocks_ws_2000_merge, by = c("Year","id"))


Grecian_Rocks_serc_2001 <- subset(Grecian_Rocks_serc_year, Year == "2001")
Grecian_Rocks_serc_2001_merge <- Grecian_Rocks_serc_2001 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2001 <- subset(Grecian_Rocks_ws_year, Year == "2001")
Grecian_Rocks_ws_2001_merge <- Grecian_Rocks_ws_2001 %>%
  mutate(id = row_number())

Grecian_Rocks_2001_all <- full_join(Grecian_Rocks_serc_2001_merge, Grecian_Rocks_ws_2001_merge, by = c("Year","id"))


Grecian_Rocks_serc_2002 <- subset(Grecian_Rocks_serc_year, Year == "2002")
Grecian_Rocks_serc_2002_merge <- Grecian_Rocks_serc_2002 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2002 <- subset(Grecian_Rocks_ws_year, Year == "2002")
Grecian_Rocks_ws_2002_merge <- Grecian_Rocks_ws_2002 %>%
  mutate(id = row_number())

Grecian_Rocks_2002_all <- full_join(Grecian_Rocks_serc_2002_merge, Grecian_Rocks_ws_2002_merge, by = c("Year","id"))


Grecian_Rocks_serc_2003 <- subset(Grecian_Rocks_serc_year, Year == "2003")
Grecian_Rocks_serc_2003_merge <- Grecian_Rocks_serc_2003 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2003 <- subset(Grecian_Rocks_ws_year, Year == "2003")
Grecian_Rocks_ws_2003_merge <- Grecian_Rocks_ws_2003 %>%
  mutate(id = row_number())

Grecian_Rocks_2003_all <- full_join(Grecian_Rocks_serc_2003_merge, Grecian_Rocks_ws_2003_merge, by = c("Year","id"))


Grecian_Rocks_serc_2004 <- subset(Grecian_Rocks_serc_year, Year == "2004")
Grecian_Rocks_serc_2004_merge <- Grecian_Rocks_serc_2004 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2004 <- subset(Grecian_Rocks_ws_year, Year == "2004")
Grecian_Rocks_ws_2004_merge <- Grecian_Rocks_ws_2004 %>%
  mutate(id = row_number())

Grecian_Rocks_2004_all <- full_join(Grecian_Rocks_serc_2004_merge, Grecian_Rocks_ws_2004_merge, by = c("Year","id"))


Grecian_Rocks_serc_2005 <- subset(Grecian_Rocks_serc_year, Year == "2005")
Grecian_Rocks_serc_2005_merge <- Grecian_Rocks_serc_2005 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2005 <- subset(Grecian_Rocks_ws_year, Year == "2005")
Grecian_Rocks_ws_2005_merge <- Grecian_Rocks_ws_2005 %>%
  mutate(id = row_number())

Grecian_Rocks_2005_all <- full_join(Grecian_Rocks_serc_2005_merge, Grecian_Rocks_ws_2005_merge, by = c("Year","id"))


Grecian_Rocks_serc_2006 <- subset(Grecian_Rocks_serc_year, Year == "2006")
Grecian_Rocks_serc_2006_merge <- Grecian_Rocks_serc_2006 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2006 <- subset(Grecian_Rocks_ws_year, Year == "2006")
Grecian_Rocks_ws_2006_merge <- Grecian_Rocks_ws_2006 %>%
  mutate(id = row_number())

Grecian_Rocks_2006_all <- full_join(Grecian_Rocks_serc_2006_merge, Grecian_Rocks_ws_2006_merge, by = c("Year","id"))


Grecian_Rocks_serc_2007 <- subset(Grecian_Rocks_serc_year, Year == "2007")
Grecian_Rocks_serc_2007_merge <- Grecian_Rocks_serc_2007 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2007 <- subset(Grecian_Rocks_ws_year, Year == "2007")
Grecian_Rocks_ws_2007_merge <- Grecian_Rocks_ws_2007 %>%
  mutate(id = row_number())

Grecian_Rocks_2007_all <- full_join(Grecian_Rocks_serc_2007_merge, Grecian_Rocks_ws_2007_merge, by = c("Year","id"))


Grecian_Rocks_serc_2008 <- subset(Grecian_Rocks_serc_year, Year == "2008")
Grecian_Rocks_serc_2008_merge <- Grecian_Rocks_serc_2008 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2008 <- subset(Grecian_Rocks_ws_year, Year == "2008")
Grecian_Rocks_ws_2008_merge <- Grecian_Rocks_ws_2008 %>%
  mutate(id = row_number())

Grecian_Rocks_2008_all <- full_join(Grecian_Rocks_serc_2008_merge, Grecian_Rocks_ws_2008_merge, by = c("Year","id"))


Grecian_Rocks_serc_2009 <- subset(Grecian_Rocks_serc_year, Year == "2009")
Grecian_Rocks_serc_2009_merge <- Grecian_Rocks_serc_2009 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2009 <- subset(Grecian_Rocks_ws_year, Year == "2009")
Grecian_Rocks_ws_2009_merge <- Grecian_Rocks_ws_2009 %>%
  mutate(id = row_number())

Grecian_Rocks_2009_all <- full_join(Grecian_Rocks_serc_2009_merge, Grecian_Rocks_ws_2009_merge, by = c("Year","id"))


Grecian_Rocks_serc_2010 <- subset(Grecian_Rocks_serc_year, Year == "2010")
Grecian_Rocks_serc_2010_merge <- Grecian_Rocks_serc_2010 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2010 <- subset(Grecian_Rocks_ws_year, Year == "2010")
Grecian_Rocks_ws_2010_merge <- Grecian_Rocks_ws_2010 %>%
  mutate(id = row_number())

Grecian_Rocks_2010_all <- full_join(Grecian_Rocks_serc_2010_merge, Grecian_Rocks_ws_2010_merge, by = c("Year","id"))


Grecian_Rocks_serc_2011 <- subset(Grecian_Rocks_serc_year, Year == "2011")
Grecian_Rocks_serc_2011_merge <- Grecian_Rocks_serc_2011 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2011 <- subset(Grecian_Rocks_ws_year, Year == "2011")
Grecian_Rocks_ws_2011_merge <- Grecian_Rocks_ws_2011 %>%
  mutate(id = row_number())

Grecian_Rocks_2011_all <- full_join(Grecian_Rocks_serc_2011_merge, Grecian_Rocks_ws_2011_merge, by = c("Year","id"))


Grecian_Rocks_serc_2012 <- subset(Grecian_Rocks_serc_year, Year == "2012")
Grecian_Rocks_serc_2012_merge <- Grecian_Rocks_serc_2012 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2012 <- subset(Grecian_Rocks_ws_year, Year == "2012")
Grecian_Rocks_ws_2012_merge <- Grecian_Rocks_ws_2012 %>%
  mutate(id = row_number())

Grecian_Rocks_2012_all <- full_join(Grecian_Rocks_serc_2012_merge, Grecian_Rocks_ws_2012_merge, by = c("Year","id"))


Grecian_Rocks_serc_2014 <- subset(Grecian_Rocks_serc_year, Year == "2014")
Grecian_Rocks_serc_2014_merge <- Grecian_Rocks_serc_2014 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2014 <- subset(Grecian_Rocks_ws_year, Year == "2014")
Grecian_Rocks_ws_2014_merge <- Grecian_Rocks_ws_2014 %>%
  mutate(id = row_number())

Grecian_Rocks_2014_all <- full_join(Grecian_Rocks_serc_2014_merge, Grecian_Rocks_ws_2014_merge, by = c("Year","id"))


Grecian_Rocks_serc_2015 <- subset(Grecian_Rocks_serc_year, Year == "2015")
Grecian_Rocks_serc_2015_merge <- Grecian_Rocks_serc_2015 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2015 <- subset(Grecian_Rocks_ws_year, Year == "2015")
Grecian_Rocks_ws_2015_merge <- Grecian_Rocks_ws_2015 %>%
  mutate(id = row_number())

Grecian_Rocks_2015_all <- full_join(Grecian_Rocks_serc_2015_merge, Grecian_Rocks_ws_2015_merge, by = c("Year","id"))


Grecian_Rocks_serc_2016 <- subset(Grecian_Rocks_serc_year, Year == "2016")
Grecian_Rocks_serc_2016_merge <- Grecian_Rocks_serc_2016 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2016 <- subset(Grecian_Rocks_ws_year, Year == "2016")
Grecian_Rocks_ws_2016_merge <- Grecian_Rocks_ws_2016 %>%
  mutate(id = row_number())

Grecian_Rocks_2016_all <- full_join(Grecian_Rocks_serc_2016_merge, Grecian_Rocks_ws_2016_merge, by = c("Year","id"))



Grecian_Rocks_serc_2017 <- subset(Grecian_Rocks_serc_year, Year == "2017")
Grecian_Rocks_serc_2017_merge <- Grecian_Rocks_serc_2017 %>%
  mutate(id = row_number())

Grecian_Rocks_ws_2017 <- subset(Grecian_Rocks_ws_year, Year == "2017")
Grecian_Rocks_ws_2017_merge <- Grecian_Rocks_ws_2017 %>%
  mutate(id = row_number())

Grecian_Rocks_2017_all <- full_join(Grecian_Rocks_serc_2017_merge, Grecian_Rocks_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Grecian_Rocks_ws_2018_all <- subset(Grecian_Rocks_ws_year, Year == "2018") 

## adding extra columns to merge 

Grecian_Rocks_ws_2018_all$LATDEC <- "NA"
Grecian_Rocks_ws_2018_all$LONDEC <- "NA"
Grecian_Rocks_ws_2018_all$DEPTH <- "NA"
Grecian_Rocks_ws_2018_all$NOX_S <- "NA"
Grecian_Rocks_ws_2018_all$NOX_B <- "NA"
Grecian_Rocks_ws_2018_all$NO3_S <- "NA"
Grecian_Rocks_ws_2018_all$NO3_B <- "NA"
Grecian_Rocks_ws_2018_all$NO2_S <- "NA"
Grecian_Rocks_ws_2018_all$NO2_B <- "NA"
Grecian_Rocks_ws_2018_all$NH4_S <- "NA"
Grecian_Rocks_ws_2018_all$NH4_B <- "NA"
Grecian_Rocks_ws_2018_all$TN_S <- "NA"
Grecian_Rocks_ws_2018_all$TN_B <- "NA"
Grecian_Rocks_ws_2018_all$DIN_S <- "NA"
Grecian_Rocks_ws_2018_all$DIN_B <- "NA"
Grecian_Rocks_ws_2018_all$TON_S <- "NA"
Grecian_Rocks_ws_2018_all$TON_B <- "NA"
Grecian_Rocks_ws_2018_all$TP_S <- "NA"
Grecian_Rocks_ws_2018_all$TP_B <- "NA"
Grecian_Rocks_ws_2018_all$SRP_S <- "NA"
Grecian_Rocks_ws_2018_all$SRP_B <- "NA"
Grecian_Rocks_ws_2018_all$APA_S <- "NA"
Grecian_Rocks_ws_2018_all$APA_B <- "NA"
Grecian_Rocks_ws_2018_all$CHLA_S <- "NA"
Grecian_Rocks_ws_2018_all$CHLA_B <- "NA"
Grecian_Rocks_ws_2018_all$TOC_S <- "NA"
Grecian_Rocks_ws_2018_all$TOC_B <- "NA"
Grecian_Rocks_ws_2018_all$SiO2_S <- "NA"
Grecian_Rocks_ws_2018_all$SiO2_B <- "NA"
Grecian_Rocks_ws_2018_all$TURB_S <- "NA"
Grecian_Rocks_ws_2018_all$TURB_B <- "NA"
Grecian_Rocks_ws_2018_all$SAL_S <- "NA"
Grecian_Rocks_ws_2018_all$SAL_B <- "NA"
Grecian_Rocks_ws_2018_all$TEMP_S <- "NA"
Grecian_Rocks_ws_2018_all$TEMP_B <- "NA"
Grecian_Rocks_ws_2018_all$DO_S <- "NA"
Grecian_Rocks_ws_2018_all$DO_B <- "NA"
Grecian_Rocks_ws_2018_all$Kd <- "NA"
Grecian_Rocks_ws_2018_all$pH <- "NA"
Grecian_Rocks_ws_2018_all$TN_TP <- "NA"
Grecian_Rocks_ws_2018_all$N_P <- "NA"
Grecian_Rocks_ws_2018_all$DIN_TP <- "NA"
Grecian_Rocks_ws_2018_all$Si_DIN <- "NA"
Grecian_Rocks_ws_2018_all$F_SAT_S <- "NA"
Grecian_Rocks_ws_2018_all$F_SAT_B <- "NA"
Grecian_Rocks_ws_2018_all$F_Io <- "NA"
Grecian_Rocks_ws_2018_all$DSIGT <- "NA"
Grecian_Rocks_ws_2018_all$id <- "NA"







## rest of the serc data
Grecian_Rocks_serc_1995 <- subset(Grecian_Rocks_serc_year, Year == "1995")
Grecian_Rocks_serc_1996 <- subset(Grecian_Rocks_serc_year, Year == "1996")
Grecian_Rocks_serc_1997 <- subset(Grecian_Rocks_serc_year, Year == "1997")
# Grecian_Rocks_serc_1998 <- subset(Grecian_Rocks_serc_year, Year == "1998")
# Grecian_Rocks_serc_1999 <- subset(Grecian_Rocks_serc_year, Year == "1999")
# Grecian_Rocks_serc_2000 <- subset(Grecian_Rocks_serc_year, Year == "2000")
# Grecian_Rocks_serc_2001 <- subset(Grecian_Rocks_serc_year, Year == "2001")
Grecian_Rocks_serc_2013 <- subset(Grecian_Rocks_serc_year, Year == "2013")



Grecian_Rocks_serc_extra <- rbind(Grecian_Rocks_serc_1995,Grecian_Rocks_serc_1996,Grecian_Rocks_serc_1997,Grecian_Rocks_serc_2013)




Grecian_Rocks_serc_extra$Longitude <- "NA"
Grecian_Rocks_serc_extra$Latitude <- "NA"
Grecian_Rocks_serc_extra$Depth <- "NA"
Grecian_Rocks_serc_extra$SST <- "NA"
Grecian_Rocks_serc_extra$SSS <- "NA"
Grecian_Rocks_serc_extra$Chl_a <- "NA"
Grecian_Rocks_serc_extra$Phaeophyti <- "NA"
Grecian_Rocks_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Grecian_Rocks_ws_2018_all <- setcolorder(Grecian_Rocks_ws_2018_all, names(Grecian_Rocks_serc_extra))

## Merge all years together 

Grecian_Rocks_all <- rbind(Grecian_Rocks_serc_extra,Grecian_Rocks_1998_all,Grecian_Rocks_1999_all,Grecian_Rocks_2000_all,Grecian_Rocks_2001_all,Grecian_Rocks_2002_all,Grecian_Rocks_2003_all,Grecian_Rocks_2004_all, Grecian_Rocks_2005_all,Grecian_Rocks_2006_all,Grecian_Rocks_2007_all,Grecian_Rocks_2008_all,Grecian_Rocks_2009_all,Grecian_Rocks_2010_all,Grecian_Rocks_2011_all,Grecian_Rocks_2012_all,Grecian_Rocks_2014_all,Grecian_Rocks_2015_all,Grecian_Rocks_2016_all,Grecian_Rocks_2017_all,Grecian_Rocks_ws_2018_all)
Grecian_Rocks_all$sitename <- "Grecian_Rocks"

export(Grecian_Rocks_all,"UK_10km/Grecian_Rocks_combined.csv")



Molasses_Deep_serc <- import("UK_10km/Molasses_Deep_serc.xls")
Molasses_Deep_ws <- import("UK_10km/Molasses_Deep_ws.xls")

## Change date to Year to merge the two dataframes

Molasses_Deep_serc_date <- format(as.Date(Molasses_Deep_serc$DATE_, format = "%Y %m %d"),"%Y")
Molasses_Deep_serc_frame <- data.frame(Molasses_Deep_serc_date)
Molasses_Deep_serc_year <- cbind(Molasses_Deep_serc_frame, Molasses_Deep_serc)
colnames(Molasses_Deep_serc_year)[1]<- "Year"
Molasses_Deep_serc_year$FID <- NULL
Molasses_Deep_serc_year$SURV <- NULL
Molasses_Deep_serc_year$BASIN <- NULL
Molasses_Deep_serc_year$SEGMENT <- NULL
Molasses_Deep_serc_year$ZONE_ <- NULL
Molasses_Deep_serc_year$TIME_ <- NULL
Molasses_Deep_serc_year$DATE_ <- NULL
Molasses_Deep_serc_year$STATION <- NULL
Molasses_Deep_serc_year$SITE <- NULL



Molasses_Deep_ws_date <- format(as.Date(Molasses_Deep_ws$Date_, format = "%Y %m %d"),"%Y")
Molasses_Deep_ws_frame <- data.frame(Molasses_Deep_ws_date)
Molasses_Deep_ws_year <- cbind(Molasses_Deep_ws_frame, Molasses_Deep_ws)
colnames(Molasses_Deep_ws_year)[1]<- "Year"
Molasses_Deep_ws_year$FID <- NULL
Molasses_Deep_ws_year$Station <- NULL
Molasses_Deep_ws_year$Date_ <- NULL
Molasses_Deep_ws_year$GMT <- NULL
Molasses_Deep_ws_year$Field11 <- NULL
Molasses_Deep_ws_year$Field12 <- NULL
Molasses_Deep_ws_year$Field13 <- NULL
Molasses_Deep_ws_year$Field14 <- NULL
Molasses_Deep_ws_year$Field15 <- NULL
Molasses_Deep_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Molasses_Deep_serc_year$Year)
unique(Molasses_Deep_ws_year$Year)


Molasses_Deep_serc_1998 <- subset(Molasses_Deep_serc_year, Year == "1998")
Molasses_Deep_serc_1998_merge <- Molasses_Deep_serc_1998 %>%
  mutate(id = row_number())

Molasses_Deep_ws_1998 <- subset(Molasses_Deep_ws_year, Year == "1998")
Molasses_Deep_ws_1998_merge <- Molasses_Deep_ws_1998 %>%
  mutate(id = row_number())

Molasses_Deep_1998_all <- full_join(Molasses_Deep_serc_1998_merge, Molasses_Deep_ws_1998_merge, by = c("Year","id"))


Molasses_Deep_serc_1999 <- subset(Molasses_Deep_serc_year, Year == "1999")
Molasses_Deep_serc_1999_merge <- Molasses_Deep_serc_1999 %>%
  mutate(id = row_number())

Molasses_Deep_ws_1999 <- subset(Molasses_Deep_ws_year, Year == "1999")
Molasses_Deep_ws_1999_merge <- Molasses_Deep_ws_1999 %>%
  mutate(id = row_number())

Molasses_Deep_1999_all <- full_join(Molasses_Deep_serc_1999_merge, Molasses_Deep_ws_1999_merge, by = c("Year","id"))


Molasses_Deep_serc_2000 <- subset(Molasses_Deep_serc_year, Year == "2000")
Molasses_Deep_serc_2000_merge <- Molasses_Deep_serc_2000 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2000 <- subset(Molasses_Deep_ws_year, Year == "2000")
Molasses_Deep_ws_2000_merge <- Molasses_Deep_ws_2000 %>%
  mutate(id = row_number())

Molasses_Deep_2000_all <- full_join(Molasses_Deep_serc_2000_merge, Molasses_Deep_ws_2000_merge, by = c("Year","id"))


Molasses_Deep_serc_2001 <- subset(Molasses_Deep_serc_year, Year == "2001")
Molasses_Deep_serc_2001_merge <- Molasses_Deep_serc_2001 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2001 <- subset(Molasses_Deep_ws_year, Year == "2001")
Molasses_Deep_ws_2001_merge <- Molasses_Deep_ws_2001 %>%
  mutate(id = row_number())

Molasses_Deep_2001_all <- full_join(Molasses_Deep_serc_2001_merge, Molasses_Deep_ws_2001_merge, by = c("Year","id"))


Molasses_Deep_serc_2002 <- subset(Molasses_Deep_serc_year, Year == "2002")
Molasses_Deep_serc_2002_merge <- Molasses_Deep_serc_2002 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2002 <- subset(Molasses_Deep_ws_year, Year == "2002")
Molasses_Deep_ws_2002_merge <- Molasses_Deep_ws_2002 %>%
  mutate(id = row_number())

Molasses_Deep_2002_all <- full_join(Molasses_Deep_serc_2002_merge, Molasses_Deep_ws_2002_merge, by = c("Year","id"))


Molasses_Deep_serc_2003 <- subset(Molasses_Deep_serc_year, Year == "2003")
Molasses_Deep_serc_2003_merge <- Molasses_Deep_serc_2003 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2003 <- subset(Molasses_Deep_ws_year, Year == "2003")
Molasses_Deep_ws_2003_merge <- Molasses_Deep_ws_2003 %>%
  mutate(id = row_number())

Molasses_Deep_2003_all <- full_join(Molasses_Deep_serc_2003_merge, Molasses_Deep_ws_2003_merge, by = c("Year","id"))


Molasses_Deep_serc_2004 <- subset(Molasses_Deep_serc_year, Year == "2004")
Molasses_Deep_serc_2004_merge <- Molasses_Deep_serc_2004 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2004 <- subset(Molasses_Deep_ws_year, Year == "2004")
Molasses_Deep_ws_2004_merge <- Molasses_Deep_ws_2004 %>%
  mutate(id = row_number())

Molasses_Deep_2004_all <- full_join(Molasses_Deep_serc_2004_merge, Molasses_Deep_ws_2004_merge, by = c("Year","id"))


Molasses_Deep_serc_2005 <- subset(Molasses_Deep_serc_year, Year == "2005")
Molasses_Deep_serc_2005_merge <- Molasses_Deep_serc_2005 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2005 <- subset(Molasses_Deep_ws_year, Year == "2005")
Molasses_Deep_ws_2005_merge <- Molasses_Deep_ws_2005 %>%
  mutate(id = row_number())

Molasses_Deep_2005_all <- full_join(Molasses_Deep_serc_2005_merge, Molasses_Deep_ws_2005_merge, by = c("Year","id"))


Molasses_Deep_serc_2006 <- subset(Molasses_Deep_serc_year, Year == "2006")
Molasses_Deep_serc_2006_merge <- Molasses_Deep_serc_2006 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2006 <- subset(Molasses_Deep_ws_year, Year == "2006")
Molasses_Deep_ws_2006_merge <- Molasses_Deep_ws_2006 %>%
  mutate(id = row_number())

Molasses_Deep_2006_all <- full_join(Molasses_Deep_serc_2006_merge, Molasses_Deep_ws_2006_merge, by = c("Year","id"))


Molasses_Deep_serc_2007 <- subset(Molasses_Deep_serc_year, Year == "2007")
Molasses_Deep_serc_2007_merge <- Molasses_Deep_serc_2007 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2007 <- subset(Molasses_Deep_ws_year, Year == "2007")
Molasses_Deep_ws_2007_merge <- Molasses_Deep_ws_2007 %>%
  mutate(id = row_number())

Molasses_Deep_2007_all <- full_join(Molasses_Deep_serc_2007_merge, Molasses_Deep_ws_2007_merge, by = c("Year","id"))


Molasses_Deep_serc_2008 <- subset(Molasses_Deep_serc_year, Year == "2008")
Molasses_Deep_serc_2008_merge <- Molasses_Deep_serc_2008 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2008 <- subset(Molasses_Deep_ws_year, Year == "2008")
Molasses_Deep_ws_2008_merge <- Molasses_Deep_ws_2008 %>%
  mutate(id = row_number())

Molasses_Deep_2008_all <- full_join(Molasses_Deep_serc_2008_merge, Molasses_Deep_ws_2008_merge, by = c("Year","id"))


Molasses_Deep_serc_2009 <- subset(Molasses_Deep_serc_year, Year == "2009")
Molasses_Deep_serc_2009_merge <- Molasses_Deep_serc_2009 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2009 <- subset(Molasses_Deep_ws_year, Year == "2009")
Molasses_Deep_ws_2009_merge <- Molasses_Deep_ws_2009 %>%
  mutate(id = row_number())

Molasses_Deep_2009_all <- full_join(Molasses_Deep_serc_2009_merge, Molasses_Deep_ws_2009_merge, by = c("Year","id"))


Molasses_Deep_serc_2010 <- subset(Molasses_Deep_serc_year, Year == "2010")
Molasses_Deep_serc_2010_merge <- Molasses_Deep_serc_2010 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2010 <- subset(Molasses_Deep_ws_year, Year == "2010")
Molasses_Deep_ws_2010_merge <- Molasses_Deep_ws_2010 %>%
  mutate(id = row_number())

Molasses_Deep_2010_all <- full_join(Molasses_Deep_serc_2010_merge, Molasses_Deep_ws_2010_merge, by = c("Year","id"))


Molasses_Deep_serc_2011 <- subset(Molasses_Deep_serc_year, Year == "2011")
Molasses_Deep_serc_2011_merge <- Molasses_Deep_serc_2011 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2011 <- subset(Molasses_Deep_ws_year, Year == "2011")
Molasses_Deep_ws_2011_merge <- Molasses_Deep_ws_2011 %>%
  mutate(id = row_number())

Molasses_Deep_2011_all <- full_join(Molasses_Deep_serc_2011_merge, Molasses_Deep_ws_2011_merge, by = c("Year","id"))


Molasses_Deep_serc_2012 <- subset(Molasses_Deep_serc_year, Year == "2012")
Molasses_Deep_serc_2012_merge <- Molasses_Deep_serc_2012 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2012 <- subset(Molasses_Deep_ws_year, Year == "2012")
Molasses_Deep_ws_2012_merge <- Molasses_Deep_ws_2012 %>%
  mutate(id = row_number())

Molasses_Deep_2012_all <- full_join(Molasses_Deep_serc_2012_merge, Molasses_Deep_ws_2012_merge, by = c("Year","id"))


Molasses_Deep_serc_2014 <- subset(Molasses_Deep_serc_year, Year == "2014")
Molasses_Deep_serc_2014_merge <- Molasses_Deep_serc_2014 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2014 <- subset(Molasses_Deep_ws_year, Year == "2014")
Molasses_Deep_ws_2014_merge <- Molasses_Deep_ws_2014 %>%
  mutate(id = row_number())

Molasses_Deep_2014_all <- full_join(Molasses_Deep_serc_2014_merge, Molasses_Deep_ws_2014_merge, by = c("Year","id"))


Molasses_Deep_serc_2015 <- subset(Molasses_Deep_serc_year, Year == "2015")
Molasses_Deep_serc_2015_merge <- Molasses_Deep_serc_2015 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2015 <- subset(Molasses_Deep_ws_year, Year == "2015")
Molasses_Deep_ws_2015_merge <- Molasses_Deep_ws_2015 %>%
  mutate(id = row_number())

Molasses_Deep_2015_all <- full_join(Molasses_Deep_serc_2015_merge, Molasses_Deep_ws_2015_merge, by = c("Year","id"))


Molasses_Deep_serc_2016 <- subset(Molasses_Deep_serc_year, Year == "2016")
Molasses_Deep_serc_2016_merge <- Molasses_Deep_serc_2016 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2016 <- subset(Molasses_Deep_ws_year, Year == "2016")
Molasses_Deep_ws_2016_merge <- Molasses_Deep_ws_2016 %>%
  mutate(id = row_number())

Molasses_Deep_2016_all <- full_join(Molasses_Deep_serc_2016_merge, Molasses_Deep_ws_2016_merge, by = c("Year","id"))



Molasses_Deep_serc_2017 <- subset(Molasses_Deep_serc_year, Year == "2017")
Molasses_Deep_serc_2017_merge <- Molasses_Deep_serc_2017 %>%
  mutate(id = row_number())

Molasses_Deep_ws_2017 <- subset(Molasses_Deep_ws_year, Year == "2017")
Molasses_Deep_ws_2017_merge <- Molasses_Deep_ws_2017 %>%
  mutate(id = row_number())

Molasses_Deep_2017_all <- full_join(Molasses_Deep_serc_2017_merge, Molasses_Deep_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Molasses_Deep_ws_2018_all <- subset(Molasses_Deep_ws_year, Year == "2018") 

## adding extra columns to merge 

Molasses_Deep_ws_2018_all$LATDEC <- "NA"
Molasses_Deep_ws_2018_all$LONDEC <- "NA"
Molasses_Deep_ws_2018_all$DEPTH <- "NA"
Molasses_Deep_ws_2018_all$NOX_S <- "NA"
Molasses_Deep_ws_2018_all$NOX_B <- "NA"
Molasses_Deep_ws_2018_all$NO3_S <- "NA"
Molasses_Deep_ws_2018_all$NO3_B <- "NA"
Molasses_Deep_ws_2018_all$NO2_S <- "NA"
Molasses_Deep_ws_2018_all$NO2_B <- "NA"
Molasses_Deep_ws_2018_all$NH4_S <- "NA"
Molasses_Deep_ws_2018_all$NH4_B <- "NA"
Molasses_Deep_ws_2018_all$TN_S <- "NA"
Molasses_Deep_ws_2018_all$TN_B <- "NA"
Molasses_Deep_ws_2018_all$DIN_S <- "NA"
Molasses_Deep_ws_2018_all$DIN_B <- "NA"
Molasses_Deep_ws_2018_all$TON_S <- "NA"
Molasses_Deep_ws_2018_all$TON_B <- "NA"
Molasses_Deep_ws_2018_all$TP_S <- "NA"
Molasses_Deep_ws_2018_all$TP_B <- "NA"
Molasses_Deep_ws_2018_all$SRP_S <- "NA"
Molasses_Deep_ws_2018_all$SRP_B <- "NA"
Molasses_Deep_ws_2018_all$APA_S <- "NA"
Molasses_Deep_ws_2018_all$APA_B <- "NA"
Molasses_Deep_ws_2018_all$CHLA_S <- "NA"
Molasses_Deep_ws_2018_all$CHLA_B <- "NA"
Molasses_Deep_ws_2018_all$TOC_S <- "NA"
Molasses_Deep_ws_2018_all$TOC_B <- "NA"
Molasses_Deep_ws_2018_all$SiO2_S <- "NA"
Molasses_Deep_ws_2018_all$SiO2_B <- "NA"
Molasses_Deep_ws_2018_all$TURB_S <- "NA"
Molasses_Deep_ws_2018_all$TURB_B <- "NA"
Molasses_Deep_ws_2018_all$SAL_S <- "NA"
Molasses_Deep_ws_2018_all$SAL_B <- "NA"
Molasses_Deep_ws_2018_all$TEMP_S <- "NA"
Molasses_Deep_ws_2018_all$TEMP_B <- "NA"
Molasses_Deep_ws_2018_all$DO_S <- "NA"
Molasses_Deep_ws_2018_all$DO_B <- "NA"
Molasses_Deep_ws_2018_all$Kd <- "NA"
Molasses_Deep_ws_2018_all$pH <- "NA"
Molasses_Deep_ws_2018_all$TN_TP <- "NA"
Molasses_Deep_ws_2018_all$N_P <- "NA"
Molasses_Deep_ws_2018_all$DIN_TP <- "NA"
Molasses_Deep_ws_2018_all$Si_DIN <- "NA"
Molasses_Deep_ws_2018_all$F_SAT_S <- "NA"
Molasses_Deep_ws_2018_all$F_SAT_B <- "NA"
Molasses_Deep_ws_2018_all$F_Io <- "NA"
Molasses_Deep_ws_2018_all$DSIGT <- "NA"
Molasses_Deep_ws_2018_all$id <- "NA"







## rest of the serc data
Molasses_Deep_serc_1995 <- subset(Molasses_Deep_serc_year, Year == "1995")
Molasses_Deep_serc_1996 <- subset(Molasses_Deep_serc_year, Year == "1996")
Molasses_Deep_serc_1997 <- subset(Molasses_Deep_serc_year, Year == "1997")
# Molasses_Deep_serc_1998 <- subset(Molasses_Deep_serc_year, Year == "1998")
# Molasses_Deep_serc_1999 <- subset(Molasses_Deep_serc_year, Year == "1999")
# Molasses_Deep_serc_2000 <- subset(Molasses_Deep_serc_year, Year == "2000")
# Molasses_Deep_serc_2001 <- subset(Molasses_Deep_serc_year, Year == "2001")
Molasses_Deep_serc_2013 <- subset(Molasses_Deep_serc_year, Year == "2013")



Molasses_Deep_serc_extra <- rbind(Molasses_Deep_serc_1995,Molasses_Deep_serc_1996,Molasses_Deep_serc_1997,Molasses_Deep_serc_2013)




Molasses_Deep_serc_extra$Longitude <- "NA"
Molasses_Deep_serc_extra$Latitude <- "NA"
Molasses_Deep_serc_extra$Depth <- "NA"
Molasses_Deep_serc_extra$SST <- "NA"
Molasses_Deep_serc_extra$SSS <- "NA"
Molasses_Deep_serc_extra$Chl_a <- "NA"
Molasses_Deep_serc_extra$Phaeophyti <- "NA"
Molasses_Deep_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Molasses_Deep_ws_2018_all <- setcolorder(Molasses_Deep_ws_2018_all, names(Molasses_Deep_serc_extra))

## Merge all years together 

Molasses_Deep_all <- rbind(Molasses_Deep_serc_extra,Molasses_Deep_1998_all,Molasses_Deep_1999_all,Molasses_Deep_2000_all,Molasses_Deep_2001_all,Molasses_Deep_2002_all,Molasses_Deep_2003_all,Molasses_Deep_2004_all, Molasses_Deep_2005_all,Molasses_Deep_2006_all,Molasses_Deep_2007_all,Molasses_Deep_2008_all,Molasses_Deep_2009_all,Molasses_Deep_2010_all,Molasses_Deep_2011_all,Molasses_Deep_2012_all,Molasses_Deep_2014_all,Molasses_Deep_2015_all,Molasses_Deep_2016_all,Molasses_Deep_2017_all,Molasses_Deep_ws_2018_all)
Molasses_Deep_all$sitename <- "Molasses_Deep"

export(Molasses_Deep_all,"UK_10km/Molasses_Deep_combined.csv")



Molasses_Shallow_serc <- import("UK_10km/Molasses_Shallow_serc.xls")
Molasses_Shallow_ws <- import("UK_10km/Molasses_Shallow_ws.xls")

## Change date to Year to merge the two dataframes

Molasses_Shallow_serc_date <- format(as.Date(Molasses_Shallow_serc$DATE_, format = "%Y %m %d"),"%Y")
Molasses_Shallow_serc_frame <- data.frame(Molasses_Shallow_serc_date)
Molasses_Shallow_serc_year <- cbind(Molasses_Shallow_serc_frame, Molasses_Shallow_serc)
colnames(Molasses_Shallow_serc_year)[1]<- "Year"
Molasses_Shallow_serc_year$FID <- NULL
Molasses_Shallow_serc_year$SURV <- NULL
Molasses_Shallow_serc_year$BASIN <- NULL
Molasses_Shallow_serc_year$SEGMENT <- NULL
Molasses_Shallow_serc_year$ZONE_ <- NULL
Molasses_Shallow_serc_year$TIME_ <- NULL
Molasses_Shallow_serc_year$DATE_ <- NULL
Molasses_Shallow_serc_year$STATION <- NULL
Molasses_Shallow_serc_year$SITE <- NULL



Molasses_Shallow_ws_date <- format(as.Date(Molasses_Shallow_ws$Date_, format = "%Y %m %d"),"%Y")
Molasses_Shallow_ws_frame <- data.frame(Molasses_Shallow_ws_date)
Molasses_Shallow_ws_year <- cbind(Molasses_Shallow_ws_frame, Molasses_Shallow_ws)
colnames(Molasses_Shallow_ws_year)[1]<- "Year"
Molasses_Shallow_ws_year$FID <- NULL
Molasses_Shallow_ws_year$Station <- NULL
Molasses_Shallow_ws_year$Date_ <- NULL
Molasses_Shallow_ws_year$GMT <- NULL
Molasses_Shallow_ws_year$Field11 <- NULL
Molasses_Shallow_ws_year$Field12 <- NULL
Molasses_Shallow_ws_year$Field13 <- NULL
Molasses_Shallow_ws_year$Field14 <- NULL
Molasses_Shallow_ws_year$Field15 <- NULL
Molasses_Shallow_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Molasses_Shallow_serc_year$Year)
unique(Molasses_Shallow_ws_year$Year)


Molasses_Shallow_serc_1998 <- subset(Molasses_Shallow_serc_year, Year == "1998")
Molasses_Shallow_serc_1998_merge <- Molasses_Shallow_serc_1998 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_1998 <- subset(Molasses_Shallow_ws_year, Year == "1998")
Molasses_Shallow_ws_1998_merge <- Molasses_Shallow_ws_1998 %>%
  mutate(id = row_number())

Molasses_Shallow_1998_all <- full_join(Molasses_Shallow_serc_1998_merge, Molasses_Shallow_ws_1998_merge, by = c("Year","id"))


Molasses_Shallow_serc_1999 <- subset(Molasses_Shallow_serc_year, Year == "1999")
Molasses_Shallow_serc_1999_merge <- Molasses_Shallow_serc_1999 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_1999 <- subset(Molasses_Shallow_ws_year, Year == "1999")
Molasses_Shallow_ws_1999_merge <- Molasses_Shallow_ws_1999 %>%
  mutate(id = row_number())

Molasses_Shallow_1999_all <- full_join(Molasses_Shallow_serc_1999_merge, Molasses_Shallow_ws_1999_merge, by = c("Year","id"))


Molasses_Shallow_serc_2000 <- subset(Molasses_Shallow_serc_year, Year == "2000")
Molasses_Shallow_serc_2000_merge <- Molasses_Shallow_serc_2000 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2000 <- subset(Molasses_Shallow_ws_year, Year == "2000")
Molasses_Shallow_ws_2000_merge <- Molasses_Shallow_ws_2000 %>%
  mutate(id = row_number())

Molasses_Shallow_2000_all <- full_join(Molasses_Shallow_serc_2000_merge, Molasses_Shallow_ws_2000_merge, by = c("Year","id"))


Molasses_Shallow_serc_2001 <- subset(Molasses_Shallow_serc_year, Year == "2001")
Molasses_Shallow_serc_2001_merge <- Molasses_Shallow_serc_2001 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2001 <- subset(Molasses_Shallow_ws_year, Year == "2001")
Molasses_Shallow_ws_2001_merge <- Molasses_Shallow_ws_2001 %>%
  mutate(id = row_number())

Molasses_Shallow_2001_all <- full_join(Molasses_Shallow_serc_2001_merge, Molasses_Shallow_ws_2001_merge, by = c("Year","id"))


Molasses_Shallow_serc_2002 <- subset(Molasses_Shallow_serc_year, Year == "2002")
Molasses_Shallow_serc_2002_merge <- Molasses_Shallow_serc_2002 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2002 <- subset(Molasses_Shallow_ws_year, Year == "2002")
Molasses_Shallow_ws_2002_merge <- Molasses_Shallow_ws_2002 %>%
  mutate(id = row_number())

Molasses_Shallow_2002_all <- full_join(Molasses_Shallow_serc_2002_merge, Molasses_Shallow_ws_2002_merge, by = c("Year","id"))


Molasses_Shallow_serc_2003 <- subset(Molasses_Shallow_serc_year, Year == "2003")
Molasses_Shallow_serc_2003_merge <- Molasses_Shallow_serc_2003 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2003 <- subset(Molasses_Shallow_ws_year, Year == "2003")
Molasses_Shallow_ws_2003_merge <- Molasses_Shallow_ws_2003 %>%
  mutate(id = row_number())

Molasses_Shallow_2003_all <- full_join(Molasses_Shallow_serc_2003_merge, Molasses_Shallow_ws_2003_merge, by = c("Year","id"))


Molasses_Shallow_serc_2004 <- subset(Molasses_Shallow_serc_year, Year == "2004")
Molasses_Shallow_serc_2004_merge <- Molasses_Shallow_serc_2004 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2004 <- subset(Molasses_Shallow_ws_year, Year == "2004")
Molasses_Shallow_ws_2004_merge <- Molasses_Shallow_ws_2004 %>%
  mutate(id = row_number())

Molasses_Shallow_2004_all <- full_join(Molasses_Shallow_serc_2004_merge, Molasses_Shallow_ws_2004_merge, by = c("Year","id"))


Molasses_Shallow_serc_2005 <- subset(Molasses_Shallow_serc_year, Year == "2005")
Molasses_Shallow_serc_2005_merge <- Molasses_Shallow_serc_2005 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2005 <- subset(Molasses_Shallow_ws_year, Year == "2005")
Molasses_Shallow_ws_2005_merge <- Molasses_Shallow_ws_2005 %>%
  mutate(id = row_number())

Molasses_Shallow_2005_all <- full_join(Molasses_Shallow_serc_2005_merge, Molasses_Shallow_ws_2005_merge, by = c("Year","id"))


Molasses_Shallow_serc_2006 <- subset(Molasses_Shallow_serc_year, Year == "2006")
Molasses_Shallow_serc_2006_merge <- Molasses_Shallow_serc_2006 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2006 <- subset(Molasses_Shallow_ws_year, Year == "2006")
Molasses_Shallow_ws_2006_merge <- Molasses_Shallow_ws_2006 %>%
  mutate(id = row_number())

Molasses_Shallow_2006_all <- full_join(Molasses_Shallow_serc_2006_merge, Molasses_Shallow_ws_2006_merge, by = c("Year","id"))


Molasses_Shallow_serc_2007 <- subset(Molasses_Shallow_serc_year, Year == "2007")
Molasses_Shallow_serc_2007_merge <- Molasses_Shallow_serc_2007 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2007 <- subset(Molasses_Shallow_ws_year, Year == "2007")
Molasses_Shallow_ws_2007_merge <- Molasses_Shallow_ws_2007 %>%
  mutate(id = row_number())

Molasses_Shallow_2007_all <- full_join(Molasses_Shallow_serc_2007_merge, Molasses_Shallow_ws_2007_merge, by = c("Year","id"))


Molasses_Shallow_serc_2008 <- subset(Molasses_Shallow_serc_year, Year == "2008")
Molasses_Shallow_serc_2008_merge <- Molasses_Shallow_serc_2008 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2008 <- subset(Molasses_Shallow_ws_year, Year == "2008")
Molasses_Shallow_ws_2008_merge <- Molasses_Shallow_ws_2008 %>%
  mutate(id = row_number())

Molasses_Shallow_2008_all <- full_join(Molasses_Shallow_serc_2008_merge, Molasses_Shallow_ws_2008_merge, by = c("Year","id"))


Molasses_Shallow_serc_2009 <- subset(Molasses_Shallow_serc_year, Year == "2009")
Molasses_Shallow_serc_2009_merge <- Molasses_Shallow_serc_2009 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2009 <- subset(Molasses_Shallow_ws_year, Year == "2009")
Molasses_Shallow_ws_2009_merge <- Molasses_Shallow_ws_2009 %>%
  mutate(id = row_number())

Molasses_Shallow_2009_all <- full_join(Molasses_Shallow_serc_2009_merge, Molasses_Shallow_ws_2009_merge, by = c("Year","id"))


Molasses_Shallow_serc_2010 <- subset(Molasses_Shallow_serc_year, Year == "2010")
Molasses_Shallow_serc_2010_merge <- Molasses_Shallow_serc_2010 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2010 <- subset(Molasses_Shallow_ws_year, Year == "2010")
Molasses_Shallow_ws_2010_merge <- Molasses_Shallow_ws_2010 %>%
  mutate(id = row_number())

Molasses_Shallow_2010_all <- full_join(Molasses_Shallow_serc_2010_merge, Molasses_Shallow_ws_2010_merge, by = c("Year","id"))


Molasses_Shallow_serc_2011 <- subset(Molasses_Shallow_serc_year, Year == "2011")
Molasses_Shallow_serc_2011_merge <- Molasses_Shallow_serc_2011 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2011 <- subset(Molasses_Shallow_ws_year, Year == "2011")
Molasses_Shallow_ws_2011_merge <- Molasses_Shallow_ws_2011 %>%
  mutate(id = row_number())

Molasses_Shallow_2011_all <- full_join(Molasses_Shallow_serc_2011_merge, Molasses_Shallow_ws_2011_merge, by = c("Year","id"))


Molasses_Shallow_serc_2012 <- subset(Molasses_Shallow_serc_year, Year == "2012")
Molasses_Shallow_serc_2012_merge <- Molasses_Shallow_serc_2012 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2012 <- subset(Molasses_Shallow_ws_year, Year == "2012")
Molasses_Shallow_ws_2012_merge <- Molasses_Shallow_ws_2012 %>%
  mutate(id = row_number())

Molasses_Shallow_2012_all <- full_join(Molasses_Shallow_serc_2012_merge, Molasses_Shallow_ws_2012_merge, by = c("Year","id"))


Molasses_Shallow_serc_2014 <- subset(Molasses_Shallow_serc_year, Year == "2014")
Molasses_Shallow_serc_2014_merge <- Molasses_Shallow_serc_2014 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2014 <- subset(Molasses_Shallow_ws_year, Year == "2014")
Molasses_Shallow_ws_2014_merge <- Molasses_Shallow_ws_2014 %>%
  mutate(id = row_number())

Molasses_Shallow_2014_all <- full_join(Molasses_Shallow_serc_2014_merge, Molasses_Shallow_ws_2014_merge, by = c("Year","id"))


Molasses_Shallow_serc_2015 <- subset(Molasses_Shallow_serc_year, Year == "2015")
Molasses_Shallow_serc_2015_merge <- Molasses_Shallow_serc_2015 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2015 <- subset(Molasses_Shallow_ws_year, Year == "2015")
Molasses_Shallow_ws_2015_merge <- Molasses_Shallow_ws_2015 %>%
  mutate(id = row_number())

Molasses_Shallow_2015_all <- full_join(Molasses_Shallow_serc_2015_merge, Molasses_Shallow_ws_2015_merge, by = c("Year","id"))


Molasses_Shallow_serc_2016 <- subset(Molasses_Shallow_serc_year, Year == "2016")
Molasses_Shallow_serc_2016_merge <- Molasses_Shallow_serc_2016 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2016 <- subset(Molasses_Shallow_ws_year, Year == "2016")
Molasses_Shallow_ws_2016_merge <- Molasses_Shallow_ws_2016 %>%
  mutate(id = row_number())

Molasses_Shallow_2016_all <- full_join(Molasses_Shallow_serc_2016_merge, Molasses_Shallow_ws_2016_merge, by = c("Year","id"))



Molasses_Shallow_serc_2017 <- subset(Molasses_Shallow_serc_year, Year == "2017")
Molasses_Shallow_serc_2017_merge <- Molasses_Shallow_serc_2017 %>%
  mutate(id = row_number())

Molasses_Shallow_ws_2017 <- subset(Molasses_Shallow_ws_year, Year == "2017")
Molasses_Shallow_ws_2017_merge <- Molasses_Shallow_ws_2017 %>%
  mutate(id = row_number())

Molasses_Shallow_2017_all <- full_join(Molasses_Shallow_serc_2017_merge, Molasses_Shallow_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Molasses_Shallow_ws_2018_all <- subset(Molasses_Shallow_ws_year, Year == "2018") 

## adding extra columns to merge 

Molasses_Shallow_ws_2018_all$LATDEC <- "NA"
Molasses_Shallow_ws_2018_all$LONDEC <- "NA"
Molasses_Shallow_ws_2018_all$DEPTH <- "NA"
Molasses_Shallow_ws_2018_all$NOX_S <- "NA"
Molasses_Shallow_ws_2018_all$NOX_B <- "NA"
Molasses_Shallow_ws_2018_all$NO3_S <- "NA"
Molasses_Shallow_ws_2018_all$NO3_B <- "NA"
Molasses_Shallow_ws_2018_all$NO2_S <- "NA"
Molasses_Shallow_ws_2018_all$NO2_B <- "NA"
Molasses_Shallow_ws_2018_all$NH4_S <- "NA"
Molasses_Shallow_ws_2018_all$NH4_B <- "NA"
Molasses_Shallow_ws_2018_all$TN_S <- "NA"
Molasses_Shallow_ws_2018_all$TN_B <- "NA"
Molasses_Shallow_ws_2018_all$DIN_S <- "NA"
Molasses_Shallow_ws_2018_all$DIN_B <- "NA"
Molasses_Shallow_ws_2018_all$TON_S <- "NA"
Molasses_Shallow_ws_2018_all$TON_B <- "NA"
Molasses_Shallow_ws_2018_all$TP_S <- "NA"
Molasses_Shallow_ws_2018_all$TP_B <- "NA"
Molasses_Shallow_ws_2018_all$SRP_S <- "NA"
Molasses_Shallow_ws_2018_all$SRP_B <- "NA"
Molasses_Shallow_ws_2018_all$APA_S <- "NA"
Molasses_Shallow_ws_2018_all$APA_B <- "NA"
Molasses_Shallow_ws_2018_all$CHLA_S <- "NA"
Molasses_Shallow_ws_2018_all$CHLA_B <- "NA"
Molasses_Shallow_ws_2018_all$TOC_S <- "NA"
Molasses_Shallow_ws_2018_all$TOC_B <- "NA"
Molasses_Shallow_ws_2018_all$SiO2_S <- "NA"
Molasses_Shallow_ws_2018_all$SiO2_B <- "NA"
Molasses_Shallow_ws_2018_all$TURB_S <- "NA"
Molasses_Shallow_ws_2018_all$TURB_B <- "NA"
Molasses_Shallow_ws_2018_all$SAL_S <- "NA"
Molasses_Shallow_ws_2018_all$SAL_B <- "NA"
Molasses_Shallow_ws_2018_all$TEMP_S <- "NA"
Molasses_Shallow_ws_2018_all$TEMP_B <- "NA"
Molasses_Shallow_ws_2018_all$DO_S <- "NA"
Molasses_Shallow_ws_2018_all$DO_B <- "NA"
Molasses_Shallow_ws_2018_all$Kd <- "NA"
Molasses_Shallow_ws_2018_all$pH <- "NA"
Molasses_Shallow_ws_2018_all$TN_TP <- "NA"
Molasses_Shallow_ws_2018_all$N_P <- "NA"
Molasses_Shallow_ws_2018_all$DIN_TP <- "NA"
Molasses_Shallow_ws_2018_all$Si_DIN <- "NA"
Molasses_Shallow_ws_2018_all$F_SAT_S <- "NA"
Molasses_Shallow_ws_2018_all$F_SAT_B <- "NA"
Molasses_Shallow_ws_2018_all$F_Io <- "NA"
Molasses_Shallow_ws_2018_all$DSIGT <- "NA"
Molasses_Shallow_ws_2018_all$id <- "NA"







## rest of the serc data
Molasses_Shallow_serc_1995 <- subset(Molasses_Shallow_serc_year, Year == "1995")
Molasses_Shallow_serc_1996 <- subset(Molasses_Shallow_serc_year, Year == "1996")
Molasses_Shallow_serc_1997 <- subset(Molasses_Shallow_serc_year, Year == "1997")
# Molasses_Shallow_serc_1998 <- subset(Molasses_Shallow_serc_year, Year == "1998")
# Molasses_Shallow_serc_1999 <- subset(Molasses_Shallow_serc_year, Year == "1999")
# Molasses_Shallow_serc_2000 <- subset(Molasses_Shallow_serc_year, Year == "2000")
# Molasses_Shallow_serc_2001 <- subset(Molasses_Shallow_serc_year, Year == "2001")
Molasses_Shallow_serc_2013 <- subset(Molasses_Shallow_serc_year, Year == "2013")



Molasses_Shallow_serc_extra <- rbind(Molasses_Shallow_serc_1995,Molasses_Shallow_serc_1996,Molasses_Shallow_serc_1997,Molasses_Shallow_serc_2013)




Molasses_Shallow_serc_extra$Longitude <- "NA"
Molasses_Shallow_serc_extra$Latitude <- "NA"
Molasses_Shallow_serc_extra$Depth <- "NA"
Molasses_Shallow_serc_extra$SST <- "NA"
Molasses_Shallow_serc_extra$SSS <- "NA"
Molasses_Shallow_serc_extra$Chl_a <- "NA"
Molasses_Shallow_serc_extra$Phaeophyti <- "NA"
Molasses_Shallow_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Molasses_Shallow_ws_2018_all <- setcolorder(Molasses_Shallow_ws_2018_all, names(Molasses_Shallow_serc_extra))

## Merge all years together 

Molasses_Shallow_all <- rbind(Molasses_Shallow_serc_extra,Molasses_Shallow_1998_all,Molasses_Shallow_1999_all,Molasses_Shallow_2000_all,Molasses_Shallow_2001_all,Molasses_Shallow_2002_all,Molasses_Shallow_2003_all,Molasses_Shallow_2004_all, Molasses_Shallow_2005_all,Molasses_Shallow_2006_all,Molasses_Shallow_2007_all,Molasses_Shallow_2008_all,Molasses_Shallow_2009_all,Molasses_Shallow_2010_all,Molasses_Shallow_2011_all,Molasses_Shallow_2012_all,Molasses_Shallow_2014_all,Molasses_Shallow_2015_all,Molasses_Shallow_2016_all,Molasses_Shallow_2017_all,Molasses_Shallow_ws_2018_all)
Molasses_Shallow_all$sitename <- "Molasses_Shallow"

export(Molasses_Shallow_all,"UK_10km/Molasses_Shallow_combined.csv")



Porter_Patch_serc <- import("UK_10km/Porter_Patch_serc.xls")
Porter_Patch_ws <- import("UK_10km/Porter_Patch_ws.xls")

## Change date to Year to merge the two dataframes

Porter_Patch_serc_date <- format(as.Date(Porter_Patch_serc$DATE_, format = "%Y %m %d"),"%Y")
Porter_Patch_serc_frame <- data.frame(Porter_Patch_serc_date)
Porter_Patch_serc_year <- cbind(Porter_Patch_serc_frame, Porter_Patch_serc)
colnames(Porter_Patch_serc_year)[1]<- "Year"
Porter_Patch_serc_year$FID <- NULL
Porter_Patch_serc_year$SURV <- NULL
Porter_Patch_serc_year$BASIN <- NULL
Porter_Patch_serc_year$SEGMENT <- NULL
Porter_Patch_serc_year$ZONE_ <- NULL
Porter_Patch_serc_year$TIME_ <- NULL
Porter_Patch_serc_year$DATE_ <- NULL
Porter_Patch_serc_year$STATION <- NULL
Porter_Patch_serc_year$SITE <- NULL



Porter_Patch_ws_date <- format(as.Date(Porter_Patch_ws$Date_, format = "%Y %m %d"),"%Y")
Porter_Patch_ws_frame <- data.frame(Porter_Patch_ws_date)
Porter_Patch_ws_year <- cbind(Porter_Patch_ws_frame, Porter_Patch_ws)
colnames(Porter_Patch_ws_year)[1]<- "Year"
Porter_Patch_ws_year$FID <- NULL
Porter_Patch_ws_year$Station <- NULL
Porter_Patch_ws_year$Date_ <- NULL
Porter_Patch_ws_year$GMT <- NULL
Porter_Patch_ws_year$Field11 <- NULL
Porter_Patch_ws_year$Field12 <- NULL
Porter_Patch_ws_year$Field13 <- NULL
Porter_Patch_ws_year$Field14 <- NULL
Porter_Patch_ws_year$Field15 <- NULL
Porter_Patch_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Porter_Patch_serc_year$Year)
unique(Porter_Patch_ws_year$Year)


Porter_Patch_serc_1998 <- subset(Porter_Patch_serc_year, Year == "1998")
Porter_Patch_serc_1998_merge <- Porter_Patch_serc_1998 %>%
  mutate(id = row_number())

Porter_Patch_ws_1998 <- subset(Porter_Patch_ws_year, Year == "1998")
Porter_Patch_ws_1998_merge <- Porter_Patch_ws_1998 %>%
  mutate(id = row_number())

Porter_Patch_1998_all <- full_join(Porter_Patch_serc_1998_merge, Porter_Patch_ws_1998_merge, by = c("Year","id"))


Porter_Patch_serc_1999 <- subset(Porter_Patch_serc_year, Year == "1999")
Porter_Patch_serc_1999_merge <- Porter_Patch_serc_1999 %>%
  mutate(id = row_number())

Porter_Patch_ws_1999 <- subset(Porter_Patch_ws_year, Year == "1999")
Porter_Patch_ws_1999_merge <- Porter_Patch_ws_1999 %>%
  mutate(id = row_number())

Porter_Patch_1999_all <- full_join(Porter_Patch_serc_1999_merge, Porter_Patch_ws_1999_merge, by = c("Year","id"))


Porter_Patch_serc_2000 <- subset(Porter_Patch_serc_year, Year == "2000")
Porter_Patch_serc_2000_merge <- Porter_Patch_serc_2000 %>%
  mutate(id = row_number())

Porter_Patch_ws_2000 <- subset(Porter_Patch_ws_year, Year == "2000")
Porter_Patch_ws_2000_merge <- Porter_Patch_ws_2000 %>%
  mutate(id = row_number())

Porter_Patch_2000_all <- full_join(Porter_Patch_serc_2000_merge, Porter_Patch_ws_2000_merge, by = c("Year","id"))


Porter_Patch_serc_2001 <- subset(Porter_Patch_serc_year, Year == "2001")
Porter_Patch_serc_2001_merge <- Porter_Patch_serc_2001 %>%
  mutate(id = row_number())

Porter_Patch_ws_2001 <- subset(Porter_Patch_ws_year, Year == "2001")
Porter_Patch_ws_2001_merge <- Porter_Patch_ws_2001 %>%
  mutate(id = row_number())

Porter_Patch_2001_all <- full_join(Porter_Patch_serc_2001_merge, Porter_Patch_ws_2001_merge, by = c("Year","id"))


Porter_Patch_serc_2002 <- subset(Porter_Patch_serc_year, Year == "2002")
Porter_Patch_serc_2002_merge <- Porter_Patch_serc_2002 %>%
  mutate(id = row_number())

Porter_Patch_ws_2002 <- subset(Porter_Patch_ws_year, Year == "2002")
Porter_Patch_ws_2002_merge <- Porter_Patch_ws_2002 %>%
  mutate(id = row_number())

Porter_Patch_2002_all <- full_join(Porter_Patch_serc_2002_merge, Porter_Patch_ws_2002_merge, by = c("Year","id"))


Porter_Patch_serc_2003 <- subset(Porter_Patch_serc_year, Year == "2003")
Porter_Patch_serc_2003_merge <- Porter_Patch_serc_2003 %>%
  mutate(id = row_number())

Porter_Patch_ws_2003 <- subset(Porter_Patch_ws_year, Year == "2003")
Porter_Patch_ws_2003_merge <- Porter_Patch_ws_2003 %>%
  mutate(id = row_number())

Porter_Patch_2003_all <- full_join(Porter_Patch_serc_2003_merge, Porter_Patch_ws_2003_merge, by = c("Year","id"))


Porter_Patch_serc_2004 <- subset(Porter_Patch_serc_year, Year == "2004")
Porter_Patch_serc_2004_merge <- Porter_Patch_serc_2004 %>%
  mutate(id = row_number())

Porter_Patch_ws_2004 <- subset(Porter_Patch_ws_year, Year == "2004")
Porter_Patch_ws_2004_merge <- Porter_Patch_ws_2004 %>%
  mutate(id = row_number())

Porter_Patch_2004_all <- full_join(Porter_Patch_serc_2004_merge, Porter_Patch_ws_2004_merge, by = c("Year","id"))


Porter_Patch_serc_2005 <- subset(Porter_Patch_serc_year, Year == "2005")
Porter_Patch_serc_2005_merge <- Porter_Patch_serc_2005 %>%
  mutate(id = row_number())

Porter_Patch_ws_2005 <- subset(Porter_Patch_ws_year, Year == "2005")
Porter_Patch_ws_2005_merge <- Porter_Patch_ws_2005 %>%
  mutate(id = row_number())

Porter_Patch_2005_all <- full_join(Porter_Patch_serc_2005_merge, Porter_Patch_ws_2005_merge, by = c("Year","id"))


Porter_Patch_serc_2006 <- subset(Porter_Patch_serc_year, Year == "2006")
Porter_Patch_serc_2006_merge <- Porter_Patch_serc_2006 %>%
  mutate(id = row_number())

Porter_Patch_ws_2006 <- subset(Porter_Patch_ws_year, Year == "2006")
Porter_Patch_ws_2006_merge <- Porter_Patch_ws_2006 %>%
  mutate(id = row_number())

Porter_Patch_2006_all <- full_join(Porter_Patch_serc_2006_merge, Porter_Patch_ws_2006_merge, by = c("Year","id"))


Porter_Patch_serc_2007 <- subset(Porter_Patch_serc_year, Year == "2007")
Porter_Patch_serc_2007_merge <- Porter_Patch_serc_2007 %>%
  mutate(id = row_number())

Porter_Patch_ws_2007 <- subset(Porter_Patch_ws_year, Year == "2007")
Porter_Patch_ws_2007_merge <- Porter_Patch_ws_2007 %>%
  mutate(id = row_number())

Porter_Patch_2007_all <- full_join(Porter_Patch_serc_2007_merge, Porter_Patch_ws_2007_merge, by = c("Year","id"))


Porter_Patch_serc_2008 <- subset(Porter_Patch_serc_year, Year == "2008")
Porter_Patch_serc_2008_merge <- Porter_Patch_serc_2008 %>%
  mutate(id = row_number())

Porter_Patch_ws_2008 <- subset(Porter_Patch_ws_year, Year == "2008")
Porter_Patch_ws_2008_merge <- Porter_Patch_ws_2008 %>%
  mutate(id = row_number())

Porter_Patch_2008_all <- full_join(Porter_Patch_serc_2008_merge, Porter_Patch_ws_2008_merge, by = c("Year","id"))


Porter_Patch_serc_2009 <- subset(Porter_Patch_serc_year, Year == "2009")
Porter_Patch_serc_2009_merge <- Porter_Patch_serc_2009 %>%
  mutate(id = row_number())

Porter_Patch_ws_2009 <- subset(Porter_Patch_ws_year, Year == "2009")
Porter_Patch_ws_2009_merge <- Porter_Patch_ws_2009 %>%
  mutate(id = row_number())

Porter_Patch_2009_all <- full_join(Porter_Patch_serc_2009_merge, Porter_Patch_ws_2009_merge, by = c("Year","id"))


Porter_Patch_serc_2010 <- subset(Porter_Patch_serc_year, Year == "2010")
Porter_Patch_serc_2010_merge <- Porter_Patch_serc_2010 %>%
  mutate(id = row_number())

Porter_Patch_ws_2010 <- subset(Porter_Patch_ws_year, Year == "2010")
Porter_Patch_ws_2010_merge <- Porter_Patch_ws_2010 %>%
  mutate(id = row_number())

Porter_Patch_2010_all <- full_join(Porter_Patch_serc_2010_merge, Porter_Patch_ws_2010_merge, by = c("Year","id"))


Porter_Patch_serc_2011 <- subset(Porter_Patch_serc_year, Year == "2011")
Porter_Patch_serc_2011_merge <- Porter_Patch_serc_2011 %>%
  mutate(id = row_number())

Porter_Patch_ws_2011 <- subset(Porter_Patch_ws_year, Year == "2011")
Porter_Patch_ws_2011_merge <- Porter_Patch_ws_2011 %>%
  mutate(id = row_number())

Porter_Patch_2011_all <- full_join(Porter_Patch_serc_2011_merge, Porter_Patch_ws_2011_merge, by = c("Year","id"))


Porter_Patch_serc_2012 <- subset(Porter_Patch_serc_year, Year == "2012")
Porter_Patch_serc_2012_merge <- Porter_Patch_serc_2012 %>%
  mutate(id = row_number())

Porter_Patch_ws_2012 <- subset(Porter_Patch_ws_year, Year == "2012")
Porter_Patch_ws_2012_merge <- Porter_Patch_ws_2012 %>%
  mutate(id = row_number())

Porter_Patch_2012_all <- full_join(Porter_Patch_serc_2012_merge, Porter_Patch_ws_2012_merge, by = c("Year","id"))


Porter_Patch_serc_2014 <- subset(Porter_Patch_serc_year, Year == "2014")
Porter_Patch_serc_2014_merge <- Porter_Patch_serc_2014 %>%
  mutate(id = row_number())

Porter_Patch_ws_2014 <- subset(Porter_Patch_ws_year, Year == "2014")
Porter_Patch_ws_2014_merge <- Porter_Patch_ws_2014 %>%
  mutate(id = row_number())

Porter_Patch_2014_all <- full_join(Porter_Patch_serc_2014_merge, Porter_Patch_ws_2014_merge, by = c("Year","id"))


Porter_Patch_serc_2015 <- subset(Porter_Patch_serc_year, Year == "2015")
Porter_Patch_serc_2015_merge <- Porter_Patch_serc_2015 %>%
  mutate(id = row_number())

Porter_Patch_ws_2015 <- subset(Porter_Patch_ws_year, Year == "2015")
Porter_Patch_ws_2015_merge <- Porter_Patch_ws_2015 %>%
  mutate(id = row_number())

Porter_Patch_2015_all <- full_join(Porter_Patch_serc_2015_merge, Porter_Patch_ws_2015_merge, by = c("Year","id"))


Porter_Patch_serc_2016 <- subset(Porter_Patch_serc_year, Year == "2016")
Porter_Patch_serc_2016_merge <- Porter_Patch_serc_2016 %>%
  mutate(id = row_number())

Porter_Patch_ws_2016 <- subset(Porter_Patch_ws_year, Year == "2016")
Porter_Patch_ws_2016_merge <- Porter_Patch_ws_2016 %>%
  mutate(id = row_number())

Porter_Patch_2016_all <- full_join(Porter_Patch_serc_2016_merge, Porter_Patch_ws_2016_merge, by = c("Year","id"))



Porter_Patch_serc_2017 <- subset(Porter_Patch_serc_year, Year == "2017")
Porter_Patch_serc_2017_merge <- Porter_Patch_serc_2017 %>%
  mutate(id = row_number())

Porter_Patch_ws_2017 <- subset(Porter_Patch_ws_year, Year == "2017")
Porter_Patch_ws_2017_merge <- Porter_Patch_ws_2017 %>%
  mutate(id = row_number())

Porter_Patch_2017_all <- full_join(Porter_Patch_serc_2017_merge, Porter_Patch_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Porter_Patch_ws_2018_all <- subset(Porter_Patch_ws_year, Year == "2018") 

## adding extra columns to merge 

Porter_Patch_ws_2018_all$LATDEC <- "NA"
Porter_Patch_ws_2018_all$LONDEC <- "NA"
Porter_Patch_ws_2018_all$DEPTH <- "NA"
Porter_Patch_ws_2018_all$NOX_S <- "NA"
Porter_Patch_ws_2018_all$NOX_B <- "NA"
Porter_Patch_ws_2018_all$NO3_S <- "NA"
Porter_Patch_ws_2018_all$NO3_B <- "NA"
Porter_Patch_ws_2018_all$NO2_S <- "NA"
Porter_Patch_ws_2018_all$NO2_B <- "NA"
Porter_Patch_ws_2018_all$NH4_S <- "NA"
Porter_Patch_ws_2018_all$NH4_B <- "NA"
Porter_Patch_ws_2018_all$TN_S <- "NA"
Porter_Patch_ws_2018_all$TN_B <- "NA"
Porter_Patch_ws_2018_all$DIN_S <- "NA"
Porter_Patch_ws_2018_all$DIN_B <- "NA"
Porter_Patch_ws_2018_all$TON_S <- "NA"
Porter_Patch_ws_2018_all$TON_B <- "NA"
Porter_Patch_ws_2018_all$TP_S <- "NA"
Porter_Patch_ws_2018_all$TP_B <- "NA"
Porter_Patch_ws_2018_all$SRP_S <- "NA"
Porter_Patch_ws_2018_all$SRP_B <- "NA"
Porter_Patch_ws_2018_all$APA_S <- "NA"
Porter_Patch_ws_2018_all$APA_B <- "NA"
Porter_Patch_ws_2018_all$CHLA_S <- "NA"
Porter_Patch_ws_2018_all$CHLA_B <- "NA"
Porter_Patch_ws_2018_all$TOC_S <- "NA"
Porter_Patch_ws_2018_all$TOC_B <- "NA"
Porter_Patch_ws_2018_all$SiO2_S <- "NA"
Porter_Patch_ws_2018_all$SiO2_B <- "NA"
Porter_Patch_ws_2018_all$TURB_S <- "NA"
Porter_Patch_ws_2018_all$TURB_B <- "NA"
Porter_Patch_ws_2018_all$SAL_S <- "NA"
Porter_Patch_ws_2018_all$SAL_B <- "NA"
Porter_Patch_ws_2018_all$TEMP_S <- "NA"
Porter_Patch_ws_2018_all$TEMP_B <- "NA"
Porter_Patch_ws_2018_all$DO_S <- "NA"
Porter_Patch_ws_2018_all$DO_B <- "NA"
Porter_Patch_ws_2018_all$Kd <- "NA"
Porter_Patch_ws_2018_all$pH <- "NA"
Porter_Patch_ws_2018_all$TN_TP <- "NA"
Porter_Patch_ws_2018_all$N_P <- "NA"
Porter_Patch_ws_2018_all$DIN_TP <- "NA"
Porter_Patch_ws_2018_all$Si_DIN <- "NA"
Porter_Patch_ws_2018_all$F_SAT_S <- "NA"
Porter_Patch_ws_2018_all$F_SAT_B <- "NA"
Porter_Patch_ws_2018_all$F_Io <- "NA"
Porter_Patch_ws_2018_all$DSIGT <- "NA"
Porter_Patch_ws_2018_all$id <- "NA"







## rest of the serc data
Porter_Patch_serc_1995 <- subset(Porter_Patch_serc_year, Year == "1995")
Porter_Patch_serc_1996 <- subset(Porter_Patch_serc_year, Year == "1996")
Porter_Patch_serc_1997 <- subset(Porter_Patch_serc_year, Year == "1997")
# Porter_Patch_serc_1998 <- subset(Porter_Patch_serc_year, Year == "1998")
# Porter_Patch_serc_1999 <- subset(Porter_Patch_serc_year, Year == "1999")
# Porter_Patch_serc_2000 <- subset(Porter_Patch_serc_year, Year == "2000")
# Porter_Patch_serc_2001 <- subset(Porter_Patch_serc_year, Year == "2001")
Porter_Patch_serc_2013 <- subset(Porter_Patch_serc_year, Year == "2013")



Porter_Patch_serc_extra <- rbind(Porter_Patch_serc_1995,Porter_Patch_serc_1996,Porter_Patch_serc_1997,Porter_Patch_serc_2013)




Porter_Patch_serc_extra$Longitude <- "NA"
Porter_Patch_serc_extra$Latitude <- "NA"
Porter_Patch_serc_extra$Depth <- "NA"
Porter_Patch_serc_extra$SST <- "NA"
Porter_Patch_serc_extra$SSS <- "NA"
Porter_Patch_serc_extra$Chl_a <- "NA"
Porter_Patch_serc_extra$Phaeophyti <- "NA"
Porter_Patch_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Porter_Patch_ws_2018_all <- setcolorder(Porter_Patch_ws_2018_all, names(Porter_Patch_serc_extra))

## Merge all years together 

Porter_Patch_all <- rbind(Porter_Patch_serc_extra,Porter_Patch_1998_all,Porter_Patch_1999_all,Porter_Patch_2000_all,Porter_Patch_2001_all,Porter_Patch_2002_all,Porter_Patch_2003_all,Porter_Patch_2004_all, Porter_Patch_2005_all,Porter_Patch_2006_all,Porter_Patch_2007_all,Porter_Patch_2008_all,Porter_Patch_2009_all,Porter_Patch_2010_all,Porter_Patch_2011_all,Porter_Patch_2012_all,Porter_Patch_2014_all,Porter_Patch_2015_all,Porter_Patch_2016_all,Porter_Patch_2017_all,Porter_Patch_ws_2018_all)
Porter_Patch_all$sitename <- "Porter_Patch"

export(Porter_Patch_all,"UK_10km/Porter_Patch_combined.csv")




Rattlesnake_serc <- import("UK_10km/Rattlesnake_serc.xls")
Rattlesnake_ws <- import("UK_10km/Rattlesnake_ws.xls")

## Change date to Year to merge the two dataframes

Rattlesnake_serc_date <- format(as.Date(Rattlesnake_serc$DATE_, format = "%Y %m %d"),"%Y")
Rattlesnake_serc_frame <- data.frame(Rattlesnake_serc_date)
Rattlesnake_serc_year <- cbind(Rattlesnake_serc_frame, Rattlesnake_serc)
colnames(Rattlesnake_serc_year)[1]<- "Year"
Rattlesnake_serc_year$FID <- NULL
Rattlesnake_serc_year$SURV <- NULL
Rattlesnake_serc_year$BASIN <- NULL
Rattlesnake_serc_year$SEGMENT <- NULL
Rattlesnake_serc_year$ZONE_ <- NULL
Rattlesnake_serc_year$TIME_ <- NULL
Rattlesnake_serc_year$DATE_ <- NULL
Rattlesnake_serc_year$STATION <- NULL
Rattlesnake_serc_year$SITE <- NULL



Rattlesnake_ws_date <- format(as.Date(Rattlesnake_ws$Date_, format = "%Y %m %d"),"%Y")
Rattlesnake_ws_frame <- data.frame(Rattlesnake_ws_date)
Rattlesnake_ws_year <- cbind(Rattlesnake_ws_frame, Rattlesnake_ws)
colnames(Rattlesnake_ws_year)[1]<- "Year"
Rattlesnake_ws_year$FID <- NULL
Rattlesnake_ws_year$Station <- NULL
Rattlesnake_ws_year$Date_ <- NULL
Rattlesnake_ws_year$GMT <- NULL
Rattlesnake_ws_year$Field11 <- NULL
Rattlesnake_ws_year$Field12 <- NULL
Rattlesnake_ws_year$Field13 <- NULL
Rattlesnake_ws_year$Field14 <- NULL
Rattlesnake_ws_year$Field15 <- NULL
Rattlesnake_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Rattlesnake_serc_year$Year)
unique(Rattlesnake_ws_year$Year)


Rattlesnake_serc_1998 <- subset(Rattlesnake_serc_year, Year == "1998")
Rattlesnake_serc_1998_merge <- Rattlesnake_serc_1998 %>%
  mutate(id = row_number())

Rattlesnake_ws_1998 <- subset(Rattlesnake_ws_year, Year == "1998")
Rattlesnake_ws_1998_merge <- Rattlesnake_ws_1998 %>%
  mutate(id = row_number())

Rattlesnake_1998_all <- full_join(Rattlesnake_serc_1998_merge, Rattlesnake_ws_1998_merge, by = c("Year","id"))


Rattlesnake_serc_1999 <- subset(Rattlesnake_serc_year, Year == "1999")
Rattlesnake_serc_1999_merge <- Rattlesnake_serc_1999 %>%
  mutate(id = row_number())

Rattlesnake_ws_1999 <- subset(Rattlesnake_ws_year, Year == "1999")
Rattlesnake_ws_1999_merge <- Rattlesnake_ws_1999 %>%
  mutate(id = row_number())

Rattlesnake_1999_all <- full_join(Rattlesnake_serc_1999_merge, Rattlesnake_ws_1999_merge, by = c("Year","id"))


Rattlesnake_serc_2000 <- subset(Rattlesnake_serc_year, Year == "2000")
Rattlesnake_serc_2000_merge <- Rattlesnake_serc_2000 %>%
  mutate(id = row_number())

Rattlesnake_ws_2000 <- subset(Rattlesnake_ws_year, Year == "2000")
Rattlesnake_ws_2000_merge <- Rattlesnake_ws_2000 %>%
  mutate(id = row_number())

Rattlesnake_2000_all <- full_join(Rattlesnake_serc_2000_merge, Rattlesnake_ws_2000_merge, by = c("Year","id"))


Rattlesnake_serc_2001 <- subset(Rattlesnake_serc_year, Year == "2001")
Rattlesnake_serc_2001_merge <- Rattlesnake_serc_2001 %>%
  mutate(id = row_number())

Rattlesnake_ws_2001 <- subset(Rattlesnake_ws_year, Year == "2001")
Rattlesnake_ws_2001_merge <- Rattlesnake_ws_2001 %>%
  mutate(id = row_number())

Rattlesnake_2001_all <- full_join(Rattlesnake_serc_2001_merge, Rattlesnake_ws_2001_merge, by = c("Year","id"))


Rattlesnake_serc_2002 <- subset(Rattlesnake_serc_year, Year == "2002")
Rattlesnake_serc_2002_merge <- Rattlesnake_serc_2002 %>%
  mutate(id = row_number())

Rattlesnake_ws_2002 <- subset(Rattlesnake_ws_year, Year == "2002")
Rattlesnake_ws_2002_merge <- Rattlesnake_ws_2002 %>%
  mutate(id = row_number())

Rattlesnake_2002_all <- full_join(Rattlesnake_serc_2002_merge, Rattlesnake_ws_2002_merge, by = c("Year","id"))


Rattlesnake_serc_2003 <- subset(Rattlesnake_serc_year, Year == "2003")
Rattlesnake_serc_2003_merge <- Rattlesnake_serc_2003 %>%
  mutate(id = row_number())

Rattlesnake_ws_2003 <- subset(Rattlesnake_ws_year, Year == "2003")
Rattlesnake_ws_2003_merge <- Rattlesnake_ws_2003 %>%
  mutate(id = row_number())

Rattlesnake_2003_all <- full_join(Rattlesnake_serc_2003_merge, Rattlesnake_ws_2003_merge, by = c("Year","id"))


Rattlesnake_serc_2004 <- subset(Rattlesnake_serc_year, Year == "2004")
Rattlesnake_serc_2004_merge <- Rattlesnake_serc_2004 %>%
  mutate(id = row_number())

Rattlesnake_ws_2004 <- subset(Rattlesnake_ws_year, Year == "2004")
Rattlesnake_ws_2004_merge <- Rattlesnake_ws_2004 %>%
  mutate(id = row_number())

Rattlesnake_2004_all <- full_join(Rattlesnake_serc_2004_merge, Rattlesnake_ws_2004_merge, by = c("Year","id"))


Rattlesnake_serc_2005 <- subset(Rattlesnake_serc_year, Year == "2005")
Rattlesnake_serc_2005_merge <- Rattlesnake_serc_2005 %>%
  mutate(id = row_number())

Rattlesnake_ws_2005 <- subset(Rattlesnake_ws_year, Year == "2005")
Rattlesnake_ws_2005_merge <- Rattlesnake_ws_2005 %>%
  mutate(id = row_number())

Rattlesnake_2005_all <- full_join(Rattlesnake_serc_2005_merge, Rattlesnake_ws_2005_merge, by = c("Year","id"))


Rattlesnake_serc_2006 <- subset(Rattlesnake_serc_year, Year == "2006")
Rattlesnake_serc_2006_merge <- Rattlesnake_serc_2006 %>%
  mutate(id = row_number())

Rattlesnake_ws_2006 <- subset(Rattlesnake_ws_year, Year == "2006")
Rattlesnake_ws_2006_merge <- Rattlesnake_ws_2006 %>%
  mutate(id = row_number())

Rattlesnake_2006_all <- full_join(Rattlesnake_serc_2006_merge, Rattlesnake_ws_2006_merge, by = c("Year","id"))


Rattlesnake_serc_2007 <- subset(Rattlesnake_serc_year, Year == "2007")
Rattlesnake_serc_2007_merge <- Rattlesnake_serc_2007 %>%
  mutate(id = row_number())

Rattlesnake_ws_2007 <- subset(Rattlesnake_ws_year, Year == "2007")
Rattlesnake_ws_2007_merge <- Rattlesnake_ws_2007 %>%
  mutate(id = row_number())

Rattlesnake_2007_all <- full_join(Rattlesnake_serc_2007_merge, Rattlesnake_ws_2007_merge, by = c("Year","id"))


Rattlesnake_serc_2008 <- subset(Rattlesnake_serc_year, Year == "2008")
Rattlesnake_serc_2008_merge <- Rattlesnake_serc_2008 %>%
  mutate(id = row_number())

Rattlesnake_ws_2008 <- subset(Rattlesnake_ws_year, Year == "2008")
Rattlesnake_ws_2008_merge <- Rattlesnake_ws_2008 %>%
  mutate(id = row_number())

Rattlesnake_2008_all <- full_join(Rattlesnake_serc_2008_merge, Rattlesnake_ws_2008_merge, by = c("Year","id"))


Rattlesnake_serc_2009 <- subset(Rattlesnake_serc_year, Year == "2009")
Rattlesnake_serc_2009_merge <- Rattlesnake_serc_2009 %>%
  mutate(id = row_number())

Rattlesnake_ws_2009 <- subset(Rattlesnake_ws_year, Year == "2009")
Rattlesnake_ws_2009_merge <- Rattlesnake_ws_2009 %>%
  mutate(id = row_number())

Rattlesnake_2009_all <- full_join(Rattlesnake_serc_2009_merge, Rattlesnake_ws_2009_merge, by = c("Year","id"))


Rattlesnake_serc_2010 <- subset(Rattlesnake_serc_year, Year == "2010")
Rattlesnake_serc_2010_merge <- Rattlesnake_serc_2010 %>%
  mutate(id = row_number())

Rattlesnake_ws_2010 <- subset(Rattlesnake_ws_year, Year == "2010")
Rattlesnake_ws_2010_merge <- Rattlesnake_ws_2010 %>%
  mutate(id = row_number())

Rattlesnake_2010_all <- full_join(Rattlesnake_serc_2010_merge, Rattlesnake_ws_2010_merge, by = c("Year","id"))


Rattlesnake_serc_2011 <- subset(Rattlesnake_serc_year, Year == "2011")
Rattlesnake_serc_2011_merge <- Rattlesnake_serc_2011 %>%
  mutate(id = row_number())

Rattlesnake_ws_2011 <- subset(Rattlesnake_ws_year, Year == "2011")
Rattlesnake_ws_2011_merge <- Rattlesnake_ws_2011 %>%
  mutate(id = row_number())

Rattlesnake_2011_all <- full_join(Rattlesnake_serc_2011_merge, Rattlesnake_ws_2011_merge, by = c("Year","id"))


Rattlesnake_serc_2012 <- subset(Rattlesnake_serc_year, Year == "2012")
Rattlesnake_serc_2012_merge <- Rattlesnake_serc_2012 %>%
  mutate(id = row_number())

Rattlesnake_ws_2012 <- subset(Rattlesnake_ws_year, Year == "2012")
Rattlesnake_ws_2012_merge <- Rattlesnake_ws_2012 %>%
  mutate(id = row_number())

Rattlesnake_2012_all <- full_join(Rattlesnake_serc_2012_merge, Rattlesnake_ws_2012_merge, by = c("Year","id"))


Rattlesnake_serc_2014 <- subset(Rattlesnake_serc_year, Year == "2014")
Rattlesnake_serc_2014_merge <- Rattlesnake_serc_2014 %>%
  mutate(id = row_number())

Rattlesnake_ws_2014 <- subset(Rattlesnake_ws_year, Year == "2014")
Rattlesnake_ws_2014_merge <- Rattlesnake_ws_2014 %>%
  mutate(id = row_number())

Rattlesnake_2014_all <- full_join(Rattlesnake_serc_2014_merge, Rattlesnake_ws_2014_merge, by = c("Year","id"))


Rattlesnake_serc_2015 <- subset(Rattlesnake_serc_year, Year == "2015")
Rattlesnake_serc_2015_merge <- Rattlesnake_serc_2015 %>%
  mutate(id = row_number())

Rattlesnake_ws_2015 <- subset(Rattlesnake_ws_year, Year == "2015")
Rattlesnake_ws_2015_merge <- Rattlesnake_ws_2015 %>%
  mutate(id = row_number())

Rattlesnake_2015_all <- full_join(Rattlesnake_serc_2015_merge, Rattlesnake_ws_2015_merge, by = c("Year","id"))


Rattlesnake_serc_2016 <- subset(Rattlesnake_serc_year, Year == "2016")
Rattlesnake_serc_2016_merge <- Rattlesnake_serc_2016 %>%
  mutate(id = row_number())

Rattlesnake_ws_2016 <- subset(Rattlesnake_ws_year, Year == "2016")
Rattlesnake_ws_2016_merge <- Rattlesnake_ws_2016 %>%
  mutate(id = row_number())

Rattlesnake_2016_all <- full_join(Rattlesnake_serc_2016_merge, Rattlesnake_ws_2016_merge, by = c("Year","id"))



Rattlesnake_serc_2017 <- subset(Rattlesnake_serc_year, Year == "2017")
Rattlesnake_serc_2017_merge <- Rattlesnake_serc_2017 %>%
  mutate(id = row_number())

Rattlesnake_ws_2017 <- subset(Rattlesnake_ws_year, Year == "2017")
Rattlesnake_ws_2017_merge <- Rattlesnake_ws_2017 %>%
  mutate(id = row_number())

Rattlesnake_2017_all <- full_join(Rattlesnake_serc_2017_merge, Rattlesnake_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Rattlesnake_ws_2018_all <- subset(Rattlesnake_ws_year, Year == "2018") 

## adding extra columns to merge 

Rattlesnake_ws_2018_all$LATDEC <- "NA"
Rattlesnake_ws_2018_all$LONDEC <- "NA"
Rattlesnake_ws_2018_all$DEPTH <- "NA"
Rattlesnake_ws_2018_all$NOX_S <- "NA"
Rattlesnake_ws_2018_all$NOX_B <- "NA"
Rattlesnake_ws_2018_all$NO3_S <- "NA"
Rattlesnake_ws_2018_all$NO3_B <- "NA"
Rattlesnake_ws_2018_all$NO2_S <- "NA"
Rattlesnake_ws_2018_all$NO2_B <- "NA"
Rattlesnake_ws_2018_all$NH4_S <- "NA"
Rattlesnake_ws_2018_all$NH4_B <- "NA"
Rattlesnake_ws_2018_all$TN_S <- "NA"
Rattlesnake_ws_2018_all$TN_B <- "NA"
Rattlesnake_ws_2018_all$DIN_S <- "NA"
Rattlesnake_ws_2018_all$DIN_B <- "NA"
Rattlesnake_ws_2018_all$TON_S <- "NA"
Rattlesnake_ws_2018_all$TON_B <- "NA"
Rattlesnake_ws_2018_all$TP_S <- "NA"
Rattlesnake_ws_2018_all$TP_B <- "NA"
Rattlesnake_ws_2018_all$SRP_S <- "NA"
Rattlesnake_ws_2018_all$SRP_B <- "NA"
Rattlesnake_ws_2018_all$APA_S <- "NA"
Rattlesnake_ws_2018_all$APA_B <- "NA"
Rattlesnake_ws_2018_all$CHLA_S <- "NA"
Rattlesnake_ws_2018_all$CHLA_B <- "NA"
Rattlesnake_ws_2018_all$TOC_S <- "NA"
Rattlesnake_ws_2018_all$TOC_B <- "NA"
Rattlesnake_ws_2018_all$SiO2_S <- "NA"
Rattlesnake_ws_2018_all$SiO2_B <- "NA"
Rattlesnake_ws_2018_all$TURB_S <- "NA"
Rattlesnake_ws_2018_all$TURB_B <- "NA"
Rattlesnake_ws_2018_all$SAL_S <- "NA"
Rattlesnake_ws_2018_all$SAL_B <- "NA"
Rattlesnake_ws_2018_all$TEMP_S <- "NA"
Rattlesnake_ws_2018_all$TEMP_B <- "NA"
Rattlesnake_ws_2018_all$DO_S <- "NA"
Rattlesnake_ws_2018_all$DO_B <- "NA"
Rattlesnake_ws_2018_all$Kd <- "NA"
Rattlesnake_ws_2018_all$pH <- "NA"
Rattlesnake_ws_2018_all$TN_TP <- "NA"
Rattlesnake_ws_2018_all$N_P <- "NA"
Rattlesnake_ws_2018_all$DIN_TP <- "NA"
Rattlesnake_ws_2018_all$Si_DIN <- "NA"
Rattlesnake_ws_2018_all$F_SAT_S <- "NA"
Rattlesnake_ws_2018_all$F_SAT_B <- "NA"
Rattlesnake_ws_2018_all$F_Io <- "NA"
Rattlesnake_ws_2018_all$DSIGT <- "NA"
Rattlesnake_ws_2018_all$id <- "NA"







## rest of the serc data
Rattlesnake_serc_1995 <- subset(Rattlesnake_serc_year, Year == "1995")
Rattlesnake_serc_1996 <- subset(Rattlesnake_serc_year, Year == "1996")
Rattlesnake_serc_1997 <- subset(Rattlesnake_serc_year, Year == "1997")
# Rattlesnake_serc_1998 <- subset(Rattlesnake_serc_year, Year == "1998")
# Rattlesnake_serc_1999 <- subset(Rattlesnake_serc_year, Year == "1999")
# Rattlesnake_serc_2000 <- subset(Rattlesnake_serc_year, Year == "2000")
# Rattlesnake_serc_2001 <- subset(Rattlesnake_serc_year, Year == "2001")
Rattlesnake_serc_2013 <- subset(Rattlesnake_serc_year, Year == "2013")



Rattlesnake_serc_extra <- rbind(Rattlesnake_serc_1995,Rattlesnake_serc_1996,Rattlesnake_serc_1997,Rattlesnake_serc_2013)




Rattlesnake_serc_extra$Longitude <- "NA"
Rattlesnake_serc_extra$Latitude <- "NA"
Rattlesnake_serc_extra$Depth <- "NA"
Rattlesnake_serc_extra$SST <- "NA"
Rattlesnake_serc_extra$SSS <- "NA"
Rattlesnake_serc_extra$Chl_a <- "NA"
Rattlesnake_serc_extra$Phaeophyti <- "NA"
Rattlesnake_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Rattlesnake_ws_2018_all <- setcolorder(Rattlesnake_ws_2018_all, names(Rattlesnake_serc_extra))

## Merge all years together 

Rattlesnake_all <- rbind(Rattlesnake_serc_extra,Rattlesnake_1998_all,Rattlesnake_1999_all,Rattlesnake_2000_all,Rattlesnake_2001_all,Rattlesnake_2002_all,Rattlesnake_2003_all,Rattlesnake_2004_all, Rattlesnake_2005_all,Rattlesnake_2006_all,Rattlesnake_2007_all,Rattlesnake_2008_all,Rattlesnake_2009_all,Rattlesnake_2010_all,Rattlesnake_2011_all,Rattlesnake_2012_all,Rattlesnake_2014_all,Rattlesnake_2015_all,Rattlesnake_2016_all,Rattlesnake_2017_all,Rattlesnake_ws_2018_all)
Rattlesnake_all$sitename <- "Rattlesnake"

export(Rattlesnake_all,"UK_10km/Rattlesnake_combined.csv")




Turtle_serc <- import("UK_10km/Turtle_serc.xls")
Turtle_ws <- import("UK_10km/Turtle_ws.xls")

## Change date to Year to merge the two dataframes

Turtle_serc_date <- format(as.Date(Turtle_serc$DATE_, format = "%Y %m %d"),"%Y")
Turtle_serc_frame <- data.frame(Turtle_serc_date)
Turtle_serc_year <- cbind(Turtle_serc_frame, Turtle_serc)
colnames(Turtle_serc_year)[1]<- "Year"
Turtle_serc_year$FID <- NULL
Turtle_serc_year$SURV <- NULL
Turtle_serc_year$BASIN <- NULL
Turtle_serc_year$SEGMENT <- NULL
Turtle_serc_year$ZONE_ <- NULL
Turtle_serc_year$TIME_ <- NULL
Turtle_serc_year$DATE_ <- NULL
Turtle_serc_year$STATION <- NULL
Turtle_serc_year$SITE <- NULL



Turtle_ws_date <- format(as.Date(Turtle_ws$Date_, format = "%Y %m %d"),"%Y")
Turtle_ws_frame <- data.frame(Turtle_ws_date)
Turtle_ws_year <- cbind(Turtle_ws_frame, Turtle_ws)
colnames(Turtle_ws_year)[1]<- "Year"
Turtle_ws_year$FID <- NULL
Turtle_ws_year$Station <- NULL
Turtle_ws_year$Date_ <- NULL
Turtle_ws_year$GMT <- NULL
Turtle_ws_year$Field11 <- NULL
Turtle_ws_year$Field12 <- NULL
Turtle_ws_year$Field13 <- NULL
Turtle_ws_year$Field14 <- NULL
Turtle_ws_year$Field15 <- NULL
Turtle_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Turtle_serc_year$Year)
unique(Turtle_ws_year$Year)



Turtle_serc_2014 <- subset(Turtle_serc_year, Year == "2014")
Turtle_serc_2014_merge <- Turtle_serc_2014 %>%
  mutate(id = row_number())

Turtle_ws_2014 <- subset(Turtle_ws_year, Year == "2014")
Turtle_ws_2014_merge <- Turtle_ws_2014 %>%
  mutate(id = row_number())

Turtle_2014_all <- full_join(Turtle_serc_2014_merge, Turtle_ws_2014_merge, by = c("Year","id"))


Turtle_serc_2015 <- subset(Turtle_serc_year, Year == "2015")
Turtle_serc_2015_merge <- Turtle_serc_2015 %>%
  mutate(id = row_number())

Turtle_ws_2015 <- subset(Turtle_ws_year, Year == "2015")
Turtle_ws_2015_merge <- Turtle_ws_2015 %>%
  mutate(id = row_number())

Turtle_2015_all <- full_join(Turtle_serc_2015_merge, Turtle_ws_2015_merge, by = c("Year","id"))


Turtle_serc_2016 <- subset(Turtle_serc_year, Year == "2016")
Turtle_serc_2016_merge <- Turtle_serc_2016 %>%
  mutate(id = row_number())

Turtle_ws_2016 <- subset(Turtle_ws_year, Year == "2016")
Turtle_ws_2016_merge <- Turtle_ws_2016 %>%
  mutate(id = row_number())

Turtle_2016_all <- full_join(Turtle_serc_2016_merge, Turtle_ws_2016_merge, by = c("Year","id"))



Turtle_serc_2017 <- subset(Turtle_serc_year, Year == "2017")
Turtle_serc_2017_merge <- Turtle_serc_2017 %>%
  mutate(id = row_number())

Turtle_ws_2017 <- subset(Turtle_ws_year, Year == "2017")
Turtle_ws_2017_merge <- Turtle_ws_2017 %>%
  mutate(id = row_number())

Turtle_2017_all <- full_join(Turtle_serc_2017_merge, Turtle_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Turtle_ws_2018_all <- subset(Turtle_ws_year, Year == "2018") 

## adding extra columns to merge 

Turtle_ws_2018_all$LATDEC <- "NA"
Turtle_ws_2018_all$LONDEC <- "NA"
Turtle_ws_2018_all$DEPTH <- "NA"
Turtle_ws_2018_all$NOX_S <- "NA"
Turtle_ws_2018_all$NOX_B <- "NA"
Turtle_ws_2018_all$NO3_S <- "NA"
Turtle_ws_2018_all$NO3_B <- "NA"
Turtle_ws_2018_all$NO2_S <- "NA"
Turtle_ws_2018_all$NO2_B <- "NA"
Turtle_ws_2018_all$NH4_S <- "NA"
Turtle_ws_2018_all$NH4_B <- "NA"
Turtle_ws_2018_all$TN_S <- "NA"
Turtle_ws_2018_all$TN_B <- "NA"
Turtle_ws_2018_all$DIN_S <- "NA"
Turtle_ws_2018_all$DIN_B <- "NA"
Turtle_ws_2018_all$TON_S <- "NA"
Turtle_ws_2018_all$TON_B <- "NA"
Turtle_ws_2018_all$TP_S <- "NA"
Turtle_ws_2018_all$TP_B <- "NA"
Turtle_ws_2018_all$SRP_S <- "NA"
Turtle_ws_2018_all$SRP_B <- "NA"
Turtle_ws_2018_all$APA_S <- "NA"
Turtle_ws_2018_all$APA_B <- "NA"
Turtle_ws_2018_all$CHLA_S <- "NA"
Turtle_ws_2018_all$CHLA_B <- "NA"
Turtle_ws_2018_all$TOC_S <- "NA"
Turtle_ws_2018_all$TOC_B <- "NA"
Turtle_ws_2018_all$SiO2_S <- "NA"
Turtle_ws_2018_all$SiO2_B <- "NA"
Turtle_ws_2018_all$TURB_S <- "NA"
Turtle_ws_2018_all$TURB_B <- "NA"
Turtle_ws_2018_all$SAL_S <- "NA"
Turtle_ws_2018_all$SAL_B <- "NA"
Turtle_ws_2018_all$TEMP_S <- "NA"
Turtle_ws_2018_all$TEMP_B <- "NA"
Turtle_ws_2018_all$DO_S <- "NA"
Turtle_ws_2018_all$DO_B <- "NA"
Turtle_ws_2018_all$Kd <- "NA"
Turtle_ws_2018_all$pH <- "NA"
Turtle_ws_2018_all$TN_TP <- "NA"
Turtle_ws_2018_all$N_P <- "NA"
Turtle_ws_2018_all$DIN_TP <- "NA"
Turtle_ws_2018_all$Si_DIN <- "NA"
Turtle_ws_2018_all$F_SAT_S <- "NA"
Turtle_ws_2018_all$F_SAT_B <- "NA"
Turtle_ws_2018_all$F_Io <- "NA"
Turtle_ws_2018_all$DSIGT <- "NA"
Turtle_ws_2018_all$id <- "NA"







## rest of the serc data
Turtle_serc_1995 <- subset(Turtle_serc_year, Year == "1995")
Turtle_serc_1996 <- subset(Turtle_serc_year, Year == "1996")
Turtle_serc_1997 <- subset(Turtle_serc_year, Year == "1997")
Turtle_serc_1998 <- subset(Turtle_serc_year, Year == "1998")
Turtle_serc_1999 <- subset(Turtle_serc_year, Year == "1999")
Turtle_serc_2000 <- subset(Turtle_serc_year, Year == "2000")
Turtle_serc_2001 <- subset(Turtle_serc_year, Year == "2001")
Turtle_serc_2002 <- subset(Turtle_serc_year, Year == "2002")
Turtle_serc_2003 <- subset(Turtle_serc_year, Year == "2003")
Turtle_serc_2004 <- subset(Turtle_serc_year, Year == "2004")
Turtle_serc_2005 <- subset(Turtle_serc_year, Year == "2005")
Turtle_serc_2006 <- subset(Turtle_serc_year, Year == "2006")
Turtle_serc_2007 <- subset(Turtle_serc_year, Year == "2007")
Turtle_serc_2008 <- subset(Turtle_serc_year, Year == "2008")
Turtle_serc_2009 <- subset(Turtle_serc_year, Year == "2009")
Turtle_serc_2010 <- subset(Turtle_serc_year, Year == "2010")
Turtle_serc_2011 <- subset(Turtle_serc_year, Year == "2011")
Turtle_serc_2012 <- subset(Turtle_serc_year, Year == "2012")
Turtle_serc_2013 <- subset(Turtle_serc_year, Year == "2013")



Turtle_serc_extra <- rbind(Turtle_serc_1995,Turtle_serc_1996,Turtle_serc_1997,Turtle_serc_1998,Turtle_serc_1999,Turtle_serc_2000,Turtle_serc_2001,Turtle_serc_2002,Turtle_serc_2003,Turtle_serc_2004,Turtle_serc_2005,Turtle_serc_2006,Turtle_serc_2007,Turtle_serc_2008,Turtle_serc_2009,Turtle_serc_2010,Turtle_serc_2011,Turtle_serc_2012,Turtle_serc_2013)




Turtle_serc_extra$Longitude <- "NA"
Turtle_serc_extra$Latitude <- "NA"
Turtle_serc_extra$Depth <- "NA"
Turtle_serc_extra$SST <- "NA"
Turtle_serc_extra$SSS <- "NA"
Turtle_serc_extra$Chl_a <- "NA"
Turtle_serc_extra$Phaeophyti <- "NA"
Turtle_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Turtle_ws_2018_all <- setcolorder(Turtle_ws_2018_all, names(Turtle_serc_extra))

## Merge all years together 

Turtle_all <- rbind(Turtle_serc_extra,Turtle_2014_all,Turtle_2015_all,Turtle_2016_all,Turtle_2017_all,Turtle_ws_2018_all)
Turtle_all$sitename <- "Turtle"

export(Turtle_all,"UK_10km/Turtle_combined.csv")




Two_Patches_serc <- import("UK_10km/Two_Patches_serc.xls")
Two_Patches_ws <- import("UK_10km/Two_Patches_ws.xls")

## Change date to Year to merge the two dataframes

Two_Patches_serc_date <- format(as.Date(Two_Patches_serc$DATE_, format = "%Y %m %d"),"%Y")
Two_Patches_serc_frame <- data.frame(Two_Patches_serc_date)
Two_Patches_serc_year <- cbind(Two_Patches_serc_frame, Two_Patches_serc)
colnames(Two_Patches_serc_year)[1]<- "Year"
Two_Patches_serc_year$FID <- NULL
Two_Patches_serc_year$SURV <- NULL
Two_Patches_serc_year$BASIN <- NULL
Two_Patches_serc_year$SEGMENT <- NULL
Two_Patches_serc_year$ZONE_ <- NULL
Two_Patches_serc_year$TIME_ <- NULL
Two_Patches_serc_year$DATE_ <- NULL
Two_Patches_serc_year$STATION <- NULL
Two_Patches_serc_year$SITE <- NULL



Two_Patches_ws_date <- format(as.Date(Two_Patches_ws$Date_, format = "%Y %m %d"),"%Y")
Two_Patches_ws_frame <- data.frame(Two_Patches_ws_date)
Two_Patches_ws_year <- cbind(Two_Patches_ws_frame, Two_Patches_ws)
colnames(Two_Patches_ws_year)[1]<- "Year"
Two_Patches_ws_year$FID <- NULL
Two_Patches_ws_year$Station <- NULL
Two_Patches_ws_year$Date_ <- NULL
Two_Patches_ws_year$GMT <- NULL
Two_Patches_ws_year$Field11 <- NULL
Two_Patches_ws_year$Field12 <- NULL
Two_Patches_ws_year$Field13 <- NULL
Two_Patches_ws_year$Field14 <- NULL
Two_Patches_ws_year$Field15 <- NULL
Two_Patches_ws_year$Field16 <- NULL


#unique(data.frame)  will show the years each df has,, this helps with adding an ID column to the data
#   add id row for all ws (always less than serc) and then pull out remaining years of serc to combine at end
unique(Two_Patches_serc_year$Year)
unique(Two_Patches_ws_year$Year)



Two_Patches_serc_2000 <- subset(Two_Patches_serc_year, Year == "2000")
Two_Patches_serc_2000_merge <- Two_Patches_serc_2000 %>%
  mutate(id = row_number())

Two_Patches_ws_2000 <- subset(Two_Patches_ws_year, Year == "2000")
Two_Patches_ws_2000_merge <- Two_Patches_ws_2000 %>%
  mutate(id = row_number())

Two_Patches_2000_all <- full_join(Two_Patches_serc_2000_merge, Two_Patches_ws_2000_merge, by = c("Year","id"))


Two_Patches_serc_2001 <- subset(Two_Patches_serc_year, Year == "2001")
Two_Patches_serc_2001_merge <- Two_Patches_serc_2001 %>%
  mutate(id = row_number())

Two_Patches_ws_2001 <- subset(Two_Patches_ws_year, Year == "2001")
Two_Patches_ws_2001_merge <- Two_Patches_ws_2001 %>%
  mutate(id = row_number())

Two_Patches_2001_all <- full_join(Two_Patches_serc_2001_merge, Two_Patches_ws_2001_merge, by = c("Year","id"))


Two_Patches_serc_2002 <- subset(Two_Patches_serc_year, Year == "2002")
Two_Patches_serc_2002_merge <- Two_Patches_serc_2002 %>%
  mutate(id = row_number())

Two_Patches_ws_2002 <- subset(Two_Patches_ws_year, Year == "2002")
Two_Patches_ws_2002_merge <- Two_Patches_ws_2002 %>%
  mutate(id = row_number())

Two_Patches_2002_all <- full_join(Two_Patches_serc_2002_merge, Two_Patches_ws_2002_merge, by = c("Year","id"))


Two_Patches_serc_2015 <- subset(Two_Patches_serc_year, Year == "2015")
Two_Patches_serc_2015_merge <- Two_Patches_serc_2015 %>%
  mutate(id = row_number())

Two_Patches_ws_2015 <- subset(Two_Patches_ws_year, Year == "2015")
Two_Patches_ws_2015_merge <- Two_Patches_ws_2015 %>%
  mutate(id = row_number())

Two_Patches_2015_all <- full_join(Two_Patches_serc_2015_merge, Two_Patches_ws_2015_merge, by = c("Year","id"))


Two_Patches_serc_2016 <- subset(Two_Patches_serc_year, Year == "2016")
Two_Patches_serc_2016_merge <- Two_Patches_serc_2016 %>%
  mutate(id = row_number())

Two_Patches_ws_2016 <- subset(Two_Patches_ws_year, Year == "2016")
Two_Patches_ws_2016_merge <- Two_Patches_ws_2016 %>%
  mutate(id = row_number())

Two_Patches_2016_all <- full_join(Two_Patches_serc_2016_merge, Two_Patches_ws_2016_merge, by = c("Year","id"))



Two_Patches_serc_2017 <- subset(Two_Patches_serc_year, Year == "2017")
Two_Patches_serc_2017_merge <- Two_Patches_serc_2017 %>%
  mutate(id = row_number())

Two_Patches_ws_2017 <- subset(Two_Patches_ws_year, Year == "2017")
Two_Patches_ws_2017_merge <- Two_Patches_ws_2017 %>%
  mutate(id = row_number())

Two_Patches_2017_all <- full_join(Two_Patches_serc_2017_merge, Two_Patches_ws_2017_merge, by = c("Year","id"))



### ADD on years for ws (need to add missing columns to merge)

Two_Patches_ws_2018_all <- subset(Two_Patches_ws_year, Year == "2018") 

## adding extra columns to merge 

Two_Patches_ws_2018_all$LATDEC <- "NA"
Two_Patches_ws_2018_all$LONDEC <- "NA"
Two_Patches_ws_2018_all$DEPTH <- "NA"
Two_Patches_ws_2018_all$NOX_S <- "NA"
Two_Patches_ws_2018_all$NOX_B <- "NA"
Two_Patches_ws_2018_all$NO3_S <- "NA"
Two_Patches_ws_2018_all$NO3_B <- "NA"
Two_Patches_ws_2018_all$NO2_S <- "NA"
Two_Patches_ws_2018_all$NO2_B <- "NA"
Two_Patches_ws_2018_all$NH4_S <- "NA"
Two_Patches_ws_2018_all$NH4_B <- "NA"
Two_Patches_ws_2018_all$TN_S <- "NA"
Two_Patches_ws_2018_all$TN_B <- "NA"
Two_Patches_ws_2018_all$DIN_S <- "NA"
Two_Patches_ws_2018_all$DIN_B <- "NA"
Two_Patches_ws_2018_all$TON_S <- "NA"
Two_Patches_ws_2018_all$TON_B <- "NA"
Two_Patches_ws_2018_all$TP_S <- "NA"
Two_Patches_ws_2018_all$TP_B <- "NA"
Two_Patches_ws_2018_all$SRP_S <- "NA"
Two_Patches_ws_2018_all$SRP_B <- "NA"
Two_Patches_ws_2018_all$APA_S <- "NA"
Two_Patches_ws_2018_all$APA_B <- "NA"
Two_Patches_ws_2018_all$CHLA_S <- "NA"
Two_Patches_ws_2018_all$CHLA_B <- "NA"
Two_Patches_ws_2018_all$TOC_S <- "NA"
Two_Patches_ws_2018_all$TOC_B <- "NA"
Two_Patches_ws_2018_all$SiO2_S <- "NA"
Two_Patches_ws_2018_all$SiO2_B <- "NA"
Two_Patches_ws_2018_all$TURB_S <- "NA"
Two_Patches_ws_2018_all$TURB_B <- "NA"
Two_Patches_ws_2018_all$SAL_S <- "NA"
Two_Patches_ws_2018_all$SAL_B <- "NA"
Two_Patches_ws_2018_all$TEMP_S <- "NA"
Two_Patches_ws_2018_all$TEMP_B <- "NA"
Two_Patches_ws_2018_all$DO_S <- "NA"
Two_Patches_ws_2018_all$DO_B <- "NA"
Two_Patches_ws_2018_all$Kd <- "NA"
Two_Patches_ws_2018_all$pH <- "NA"
Two_Patches_ws_2018_all$TN_TP <- "NA"
Two_Patches_ws_2018_all$N_P <- "NA"
Two_Patches_ws_2018_all$DIN_TP <- "NA"
Two_Patches_ws_2018_all$Si_DIN <- "NA"
Two_Patches_ws_2018_all$F_SAT_S <- "NA"
Two_Patches_ws_2018_all$F_SAT_B <- "NA"
Two_Patches_ws_2018_all$F_Io <- "NA"
Two_Patches_ws_2018_all$DSIGT <- "NA"
Two_Patches_ws_2018_all$id <- "NA"







## rest of the serc data
Two_Patches_serc_1995 <- subset(Two_Patches_serc_year, Year == "1995")
Two_Patches_serc_1996 <- subset(Two_Patches_serc_year, Year == "1996")
Two_Patches_serc_1997 <- subset(Two_Patches_serc_year, Year == "1997")
Two_Patches_serc_1998 <- subset(Two_Patches_serc_year, Year == "1998")
Two_Patches_serc_1999 <- subset(Two_Patches_serc_year, Year == "1999")
#Two_Patches_serc_2000 <- subset(Two_Patches_serc_year, Year == "2000")
#Two_Patches_serc_2001 <- subset(Two_Patches_serc_year, Year == "2001")
#Two_Patches_serc_2002 <- subset(Two_Patches_serc_year, Year == "2002")
Two_Patches_serc_2003 <- subset(Two_Patches_serc_year, Year == "2003")
Two_Patches_serc_2004 <- subset(Two_Patches_serc_year, Year == "2004")
Two_Patches_serc_2005 <- subset(Two_Patches_serc_year, Year == "2005")
Two_Patches_serc_2006 <- subset(Two_Patches_serc_year, Year == "2006")
Two_Patches_serc_2007 <- subset(Two_Patches_serc_year, Year == "2007")
Two_Patches_serc_2008 <- subset(Two_Patches_serc_year, Year == "2008")
Two_Patches_serc_2009 <- subset(Two_Patches_serc_year, Year == "2009")
Two_Patches_serc_2010 <- subset(Two_Patches_serc_year, Year == "2010")
Two_Patches_serc_2011 <- subset(Two_Patches_serc_year, Year == "2011")
Two_Patches_serc_2012 <- subset(Two_Patches_serc_year, Year == "2012")
Two_Patches_serc_2013 <- subset(Two_Patches_serc_year, Year == "2013")
Two_Patches_serc_2014 <- subset(Two_Patches_serc_year, Year == "2014")



Two_Patches_serc_extra <- rbind(Two_Patches_serc_1995,Two_Patches_serc_1996,Two_Patches_serc_1997,Two_Patches_serc_1998,Two_Patches_serc_1999,Two_Patches_serc_2003,Two_Patches_serc_2004,Two_Patches_serc_2005,Two_Patches_serc_2006,Two_Patches_serc_2007,Two_Patches_serc_2008,Two_Patches_serc_2009,Two_Patches_serc_2010,Two_Patches_serc_2011,Two_Patches_serc_2012,Two_Patches_serc_2013,Two_Patches_serc_2014)





Two_Patches_serc_extra$Longitude <- "NA"
Two_Patches_serc_extra$Latitude <- "NA"
Two_Patches_serc_extra$Depth <- "NA"
Two_Patches_serc_extra$SST <- "NA"
Two_Patches_serc_extra$SSS <- "NA"
Two_Patches_serc_extra$Chl_a <- "NA"
Two_Patches_serc_extra$Phaeophyti <- "NA"
Two_Patches_serc_extra$id <- "NA"


### Rearrange extra ws data with serc_extra to merge with all other data

Two_Patches_ws_2018_all <- setcolorder(Two_Patches_ws_2018_all, names(Two_Patches_serc_extra))

## Merge all years together 

Two_Patches_all <- rbind(Two_Patches_serc_extra,Two_Patches_2000_all,Two_Patches_2001_all,Two_Patches_2002_all,Two_Patches_2015_all,Two_Patches_2016_all,Two_Patches_2017_all,Two_Patches_ws_2018_all)
Two_Patches_all$sitename <- "Two_Patches"

export(Two_Patches_all,"UK_10km/Two_Patches_combined.csv")



### Combine Upper Keys


Upper_Keys_all <- rbind (Admiral_all,Burr_Fish_all,Carysfort_Deep_all,Carysfort_Shallow_all,Conch_Deep_all,Conch_Shallow_all,Dove_Key_all,El_Radabob_all,Grecian_Rocks_all,Molasses_Deep_all,Molasses_Shallow_all,Porter_Patch_all,Rattlesnake_all,Turtle_all,Two_Patches_all)

export(Upper_Keys_all,"UK_10km/UK_Nutrients_Combined.csv")


#### Combine entire regions

DT <- read_csv("DT_10km/DT_Nutrients_Combined.csv")
DT$subregion <- "DT"

LK <- read_csv("LK_10km/LK_Nutrients_Combined.csv")
LK$subregion <- "LK"

MK <- read_csv("MK_10km/MK_Nutrients_Combined.csv")
MK$subregion <- "MK"

UK <- read_csv("UK_10km/UK_Nutrients_Combined.csv")
UK$subregion <- "UK"

All_regions_nutrients <- rbind(DT,LK,MK,UK)


export(All_regions_nutrients,"All_Regions_Nutrients_10km.csv")




