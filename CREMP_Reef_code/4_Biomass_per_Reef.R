

library(rio)
library("magrittr")
library("tidyverse")


#####Dry Tortugas 

##

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/DT")

#RVC_00 <- import("RVC_00_UK.xls")
#export(RVC_00,"RVC_00_UK_file.csv")
#RVC_00_UK <- import("RVC_00_UK_file.csv")
#RVC_00_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_00_UK))
#export(RVC_00_UK,"RVC_00_UK_analyze.csv")

### First change .xls to .csv for each reef, then get total biomass, max, min 
Bird_Key_2000 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2000.xls")
Bird_Key_2000_Total_biomass <- summarise_at(Bird_Key_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2000_Total_biomass$Year <- ('2000')
###output
export(Bird_Key_2000_Total_biomass,"Bird_Key_Reef/data/Bird_Key_2000_biomass_data.csv")

##repeat for all years 99-16
Bird_Key_1999 <- import("Bird_Key_Reef/data/Bird_Key_Reef_1999.xls")
Bird_Key_1999_Total_biomass <- summarise_at(Bird_Key_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_1999_Total_biomass$Year <- ('1999')
###output
export(Bird_Key_1999_Total_biomass,"Bird_Key_Reef/data/Bird_Key_1999_biomass_data.csv")

Bird_Key_2004 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2004.xls")
Bird_Key_2004_Total_biomass <- summarise_at(Bird_Key_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2004_Total_biomass$Year <- ('2004')

###output
export(Bird_Key_2004_Total_biomass,"Bird_Key_Reef/data/Bird_Key_2004_biomass_data.csv")

Bird_Key_2006 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2006.xls")
Bird_Key_2006_Total_biomass <- summarise_at(Bird_Key_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2006_Total_biomass$Year <- ('2006')

###output
export(Bird_Key_2006_Total_biomass,"Bird_Key_Reef/data/Bird_Key_2006_biomass_data.csv")

Bird_Key_2008 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2008.xls")
Bird_Key_2008_Total_biomass <- summarise_at(Bird_Key_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2008_Total_biomass$Year <- ('2008')

###output
export(Bird_Key_2008_Total_biomass,"Bird_Key_Reef/data/Bird_Key_2008_biomass_data.csv")
Bird_Key_2010 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2010.xls")
Bird_Key_2010_Total_biomass <- summarise_at(Bird_Key_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2010_Total_biomass$Year <- ('2010')

###output
export(Bird_Key_2010_Total_biomass,"Bird_Key_Reef/data/Bird_Key_2010_biomass_data.csv")

Bird_Key_2012 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2012.xls")
Bird_Key_2012_Total_biomass <- summarise_at(Bird_Key_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2012_Total_biomass$Year <- ('2012')

###output
export(Bird_Key_2012_Total_biomass,"Bird_Key_Reef/data/Bird_Key_2012_biomass_data.csv")

Bird_Key_2014 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2014.xls")
Bird_Key_2014_Total_biomass <- summarise_at(Bird_Key_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2014_Total_biomass$Year <- ('2014')

###output
export(Bird_Key_2014_Total_biomass,"Bird_Key_Reef/data/Bird_Key_2014_biomass_data.csv")

Bird_Key_2016 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2016.xls")
Bird_Key_2016_Total_biomass <- summarise_at(Bird_Key_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2016_Total_biomass$Year <- ('2016')

###output
export(Bird_Key_2016_Total_biomass,"Bird_Key_Reef/data/Bird_Key_2016_biomass_data.csv")

####combine biomass data for each reef in a table 
Bird_Key_1999_merge <- read_csv("Bird_Key_Reef/data/Bird_Key_1999_biomass_data.csv")
Bird_Key_2000_merge <- read_csv("Bird_Key_Reef/data/Bird_Key_2000_biomass_data.csv")
Bird_Key_2004_merge <- read_csv("Bird_Key_Reef/data/Bird_Key_2004_biomass_data.csv")
Bird_Key_2006_merge <- read_csv("Bird_Key_Reef/data/Bird_Key_2006_biomass_data.csv")
Bird_Key_2008_merge <- read_csv("Bird_Key_Reef/data/Bird_Key_2008_biomass_data.csv")
Bird_Key_2010_merge <- read_csv("Bird_Key_Reef/data/Bird_Key_2010_biomass_data.csv")
Bird_Key_2012_merge <- read_csv("Bird_Key_Reef/data/Bird_Key_2012_biomass_data.csv")
Bird_Key_2014_merge <- read_csv("Bird_Key_Reef/data/Bird_Key_2014_biomass_data.csv")
Bird_Key_2016_merge <- read_csv("Bird_Key_Reef/data/Bird_Key_2016_biomass_data.csv")

Bird_key_merge_1 <- rbind(Bird_Key_1999_merge,Bird_Key_2000_merge)
Bird_key_merge_2 <- rbind(Bird_key_merge_1,Bird_Key_2004_merge)
Bird_key_merge_3 <- rbind(Bird_key_merge_2,Bird_Key_2006_merge)
Bird_key_merge_4 <- rbind(Bird_key_merge_3,Bird_Key_2008_merge)
Bird_key_merge_5 <- rbind(Bird_key_merge_4,Bird_Key_2010_merge)
Bird_key_merge_6 <- rbind(Bird_key_merge_5,Bird_Key_2012_merge)
Bird_key_merge_7 <- rbind(Bird_key_merge_6,Bird_Key_2014_merge)
Bird_Key_Reef_biomass_data_combined <- rbind(Bird_key_merge_7,Bird_Key_2016_merge)

##output
export(Bird_Key_Reef_biomass_data_combined,"Bird_Key_Reef/data/Bird_Key_biomass_data_combined.csv")




#### REPEAT FOR EACH REEF 

### Black Coral (take 1999 out)

### First change .xls to .csv for each reef, then get total biomass, max, min 
Black_Coral_Rock_2000 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2000.xls")
Black_Coral_Rock_2000_Total_biomass <- summarise_at(Black_Coral_Rock_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2000_Total_biomass$Year <- ('2000')
###output
export(Black_Coral_Rock_2000_Total_biomass,"Black_Coral_Rock/data/Black_Coral_Rock_2000_biomass_data.csv")

##repeat for all years 99-16
Black_Coral_Rock_1999 <- import("Black_Coral_Rock/data/Black_Coral_Rock_1999.xls")
Black_Coral_Rock_1999_Total_biomass <- summarise_at(Black_Coral_Rock_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_1999_Total_biomass$Year <- ('1999')
###output
#export(Black_Coral_Rock_1999_Total_biomass,"Black_Coral_Rock/data/Black_Coral_Rock_1999_biomass_data.csv")

Black_Coral_Rock_2004 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2004.xls")
Black_Coral_Rock_2004_Total_biomass <- summarise_at(Black_Coral_Rock_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2004_Total_biomass$Year <- ('2004')

###output
export(Black_Coral_Rock_2004_Total_biomass,"Black_Coral_Rock/data/Black_Coral_Rock_2004_biomass_data.csv")

Black_Coral_Rock_2006 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2006.xls")
Black_Coral_Rock_2006_Total_biomass <- summarise_at(Black_Coral_Rock_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2006_Total_biomass$Year <- ('2006')

###output
export(Black_Coral_Rock_2006_Total_biomass,"Black_Coral_Rock/data/Black_Coral_Rock_2006_biomass_data.csv")

Black_Coral_Rock_2008 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2008.xls")
Black_Coral_Rock_2008_Total_biomass <- summarise_at(Black_Coral_Rock_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2008_Total_biomass$Year <- ('2008')

###output
export(Black_Coral_Rock_2008_Total_biomass,"Black_Coral_Rock/data/Black_Coral_Rock_2008_biomass_data.csv")
Black_Coral_Rock_2010 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2010.xls")
Black_Coral_Rock_2010_Total_biomass <- summarise_at(Black_Coral_Rock_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2010_Total_biomass$Year <- ('2010')

###output
export(Black_Coral_Rock_2010_Total_biomass,"Black_Coral_Rock/data/Black_Coral_Rock_2010_biomass_data.csv")

Black_Coral_Rock_2012 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2012.xls")
Black_Coral_Rock_2012_Total_biomass <- summarise_at(Black_Coral_Rock_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2012_Total_biomass$Year <- ('2012')

###output
export(Black_Coral_Rock_2012_Total_biomass,"Black_Coral_Rock/data/Black_Coral_Rock_2012_biomass_data.csv")

Black_Coral_Rock_2014 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2014.xls")
Black_Coral_Rock_2014_Total_biomass <- summarise_at(Black_Coral_Rock_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2014_Total_biomass$Year <- ('2014')

###output
export(Black_Coral_Rock_2014_Total_biomass,"Black_Coral_Rock/data/Black_Coral_Rock_2014_biomass_data.csv")

Black_Coral_Rock_2016 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2016.xls")
Black_Coral_Rock_2016_Total_biomass <- summarise_at(Black_Coral_Rock_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2016_Total_biomass$Year <- ('2016')

###output
export(Black_Coral_Rock_2016_Total_biomass,"Black_Coral_Rock/data/Black_Coral_Rock_2016_biomass_data.csv")

####combine biomass data for each reef in a table 
#Black_Coral_Rock_1999_merge <- read_csv("Black_Coral_Rock/data/Black_Coral_Rock_1999_biomass_data.csv")
Black_Coral_Rock_2000_merge <- read_csv("Black_Coral_Rock/data/Black_Coral_Rock_2000_biomass_data.csv")
Black_Coral_Rock_2004_merge <- read_csv("Black_Coral_Rock/data/Black_Coral_Rock_2004_biomass_data.csv")
Black_Coral_Rock_2006_merge <- read_csv("Black_Coral_Rock/data/Black_Coral_Rock_2006_biomass_data.csv")
Black_Coral_Rock_2008_merge <- read_csv("Black_Coral_Rock/data/Black_Coral_Rock_2008_biomass_data.csv")
Black_Coral_Rock_2010_merge <- read_csv("Black_Coral_Rock/data/Black_Coral_Rock_2010_biomass_data.csv")
Black_Coral_Rock_2012_merge <- read_csv("Black_Coral_Rock/data/Black_Coral_Rock_2012_biomass_data.csv")
Black_Coral_Rock_2014_merge <- read_csv("Black_Coral_Rock/data/Black_Coral_Rock_2014_biomass_data.csv")
Black_Coral_Rock_2016_merge <- read_csv("Black_Coral_Rock/data/Black_Coral_Rock_2016_biomass_data.csv")

#Black_Coral_Rock_merge_1 <- rbind(Black_Coral_Rock_1999_merge,Black_Coral_Rock_2000_merge)
Black_Coral_Rock_merge_2 <- rbind(Black_Coral_Rock_2000_merge,Black_Coral_Rock_2004_merge)
Black_Coral_Rock_merge_3 <- rbind(Black_Coral_Rock_merge_2,Black_Coral_Rock_2006_merge)
Black_Coral_Rock_merge_4 <- rbind(Black_Coral_Rock_merge_3,Black_Coral_Rock_2008_merge)
Black_Coral_Rock_merge_5 <- rbind(Black_Coral_Rock_merge_4,Black_Coral_Rock_2010_merge)
Black_Coral_Rock_merge_6 <- rbind(Black_Coral_Rock_merge_5,Black_Coral_Rock_2012_merge)
Black_Coral_Rock_merge_7 <- rbind(Black_Coral_Rock_merge_6,Black_Coral_Rock_2014_merge)
Black_Coral_Rock_Reef_biomass_data_combined <- rbind(Black_Coral_Rock_merge_7,Black_Coral_Rock_2016_merge)

##output
export(Black_Coral_Rock_Reef_biomass_data_combined,"Black_Coral_Rock/data/Black_Coral_Rock_biomass_data_combined.csv")




###DAvis rock 

### First change .xls to .csv for each reef, then get total biomass, max, min 

Davis_Rock_2000 <- import("Davis_Rock/data/Davis_Rock_2000.xls")
Davis_Rock_2000_Total_biomass <- summarise_at(Davis_Rock_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2000_Total_biomass$Year <- ('2000')
###output
export(Davis_Rock_2000_Total_biomass,"Davis_Rock/data/Davis_Rock_2000_biomass_data.csv")

##repeat for all years 99-16
Davis_Rock_1999 <- import("Davis_Rock/data/Davis_Rock_1999.xls")
Davis_Rock_1999_Total_biomass <- summarise_at(Davis_Rock_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_1999_Total_biomass$Year <- ('1999')
###output
#export(Davis_Rock_1999_Total_biomass,"Davis_Rock/data/Davis_Rock_1999_biomass_data.csv")

Davis_Rock_2004 <- import("Davis_Rock/data/Davis_Rock_2004.xls")
Davis_Rock_2004_Total_biomass <- summarise_at(Davis_Rock_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2004_Total_biomass$Year <- ('2004')

###output
export(Davis_Rock_2004_Total_biomass,"Davis_Rock/data/Davis_Rock_2004_biomass_data.csv")

Davis_Rock_2006 <- import("Davis_Rock/data/Davis_Rock_2006.xls")
Davis_Rock_2006_Total_biomass <- summarise_at(Davis_Rock_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2006_Total_biomass$Year <- ('2006')

###output
export(Davis_Rock_2006_Total_biomass,"Davis_Rock/data/Davis_Rock_2006_biomass_data.csv")

Davis_Rock_2008 <- import("Davis_Rock/data/Davis_Rock_2008.xls")
Davis_Rock_2008_Total_biomass <- summarise_at(Davis_Rock_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2008_Total_biomass$Year <- ('2008')

###output
export(Davis_Rock_2008_Total_biomass,"Davis_Rock/data/Davis_Rock_2008_biomass_data.csv")

Davis_Rock_2010 <- import("Davis_Rock/data/Davis_Rock_2010.xls")
Davis_Rock_2010_Total_biomass <- summarise_at(Davis_Rock_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2010_Total_biomass$Year <- ('2010')

###output
export(Davis_Rock_2010_Total_biomass,"Davis_Rock/data/Davis_Rock_2010_biomass_data.csv")

Davis_Rock_2012 <- import("Davis_Rock/data/Davis_Rock_2012.xls")
Davis_Rock_2012_Total_biomass <- summarise_at(Davis_Rock_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2012_Total_biomass$Year <- ('2012')

###output
export(Davis_Rock_2012_Total_biomass,"Davis_Rock/data/Davis_Rock_2012_biomass_data.csv")

Davis_Rock_2014 <- import("Davis_Rock/data/Davis_Rock_2014.xls")
Davis_Rock_2014_Total_biomass <- summarise_at(Davis_Rock_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2014_Total_biomass$Year <- ('2014')

###output
export(Davis_Rock_2014_Total_biomass,"Davis_Rock/data/Davis_Rock_2014_biomass_data.csv")

Davis_Rock_2016 <- import("Davis_Rock/data/Davis_Rock_2016.xls")
Davis_Rock_2016_Total_biomass <- summarise_at(Davis_Rock_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2016_Total_biomass$Year <- ('2016')

###output
export(Davis_Rock_2016_Total_biomass,"Davis_Rock/data/Davis_Rock_2016_biomass_data.csv")

####combine biomass data for each reef in a table 
Davis_Rock_1999_merge <- read_csv("Davis_Rock/data/Davis_Rock_1999_biomass_data.csv")
Davis_Rock_2000_merge <- read_csv("Davis_Rock/data/Davis_Rock_2000_biomass_data.csv")
Davis_Rock_2004_merge <- read_csv("Davis_Rock/data/Davis_Rock_2004_biomass_data.csv")
Davis_Rock_2006_merge <- read_csv("Davis_Rock/data/Davis_Rock_2006_biomass_data.csv")
Davis_Rock_2008_merge <- read_csv("Davis_Rock/data/Davis_Rock_2008_biomass_data.csv")
Davis_Rock_2010_merge <- read_csv("Davis_Rock/data/Davis_Rock_2010_biomass_data.csv")
Davis_Rock_2012_merge <- read_csv("Davis_Rock/data/Davis_Rock_2012_biomass_data.csv")
Davis_Rock_2014_merge <- read_csv("Davis_Rock/data/Davis_Rock_2014_biomass_data.csv")
Davis_Rock_2016_merge <- read_csv("Davis_Rock/data/Davis_Rock_2016_biomass_data.csv")

Davis_Rock_merge_1 <- rbind(Davis_Rock_1999_merge,Davis_Rock_2000_merge)
Davis_Rock_merge_2 <- rbind(Davis_Rock_2000_merge,Davis_Rock_2004_merge)
Davis_Rock_merge_3 <- rbind(Davis_Rock_merge_2,Davis_Rock_2006_merge)
Davis_Rock_merge_4 <- rbind(Davis_Rock_merge_3,Davis_Rock_2008_merge)
Davis_Rock_merge_5 <- rbind(Davis_Rock_merge_4,Davis_Rock_2010_merge)
Davis_Rock_merge_6 <- rbind(Davis_Rock_merge_5,Davis_Rock_2012_merge)
Davis_Rock_merge_7 <- rbind(Davis_Rock_merge_6,Davis_Rock_2014_merge)
Davis_Rock_Reef_biomass_data_combined <- rbind(Davis_Rock_merge_7,Davis_Rock_2016_merge)

##output
export(Davis_Rock_Reef_biomass_data_combined,"Davis_Rock/data/Davis_Rock_biomass_data_combined.csv")



###Loggerhead Patch

### First change .xls to .csv for each reef, then get total biomass, max, min 

Loggerhead_Patch_2000 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2000.xls")
Loggerhead_Patch_2000_Total_biomass <- summarise_at(Loggerhead_Patch_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2000_Total_biomass$Year <- ('2000')
###output
export(Loggerhead_Patch_2000_Total_biomass,"Loggerhead_Patch/data/Loggerhead_Patch_2000_biomass_data.csv")

##repeat for all years 99-16
Loggerhead_Patch_1999 <- import("Loggerhead_Patch/data/Loggerhead_Patch_1999.xls")
Loggerhead_Patch_1999_Total_biomass <- summarise_at(Loggerhead_Patch_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_1999_Total_biomass$Year <- ('1999')
###output
export(Loggerhead_Patch_1999_Total_biomass,"Loggerhead_Patch/data/Loggerhead_Patch_1999_biomass_data.csv")

Loggerhead_Patch_2004 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2004.xls")
Loggerhead_Patch_2004_Total_biomass <- summarise_at(Loggerhead_Patch_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2004_Total_biomass$Year <- ('2004')

###output
export(Loggerhead_Patch_2004_Total_biomass,"Loggerhead_Patch/data/Loggerhead_Patch_2004_biomass_data.csv")

Loggerhead_Patch_2006 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2006.xls")
Loggerhead_Patch_2006_Total_biomass <- summarise_at(Loggerhead_Patch_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2006_Total_biomass$Year <- ('2006')

###output
export(Loggerhead_Patch_2006_Total_biomass,"Loggerhead_Patch/data/Loggerhead_Patch_2006_biomass_data.csv")

Loggerhead_Patch_2008 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2008.xls")
Loggerhead_Patch_2008_Total_biomass <- summarise_at(Loggerhead_Patch_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2008_Total_biomass$Year <- ('2008')

###output
export(Loggerhead_Patch_2008_Total_biomass,"Loggerhead_Patch/data/Loggerhead_Patch_2008_biomass_data.csv")

Loggerhead_Patch_2010 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2010.xls")
Loggerhead_Patch_2010_Total_biomass <- summarise_at(Loggerhead_Patch_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2010_Total_biomass$Year <- ('2010')

###output
export(Loggerhead_Patch_2010_Total_biomass,"Loggerhead_Patch/data/Loggerhead_Patch_2010_biomass_data.csv")

Loggerhead_Patch_2012 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2012.xls")
Loggerhead_Patch_2012_Total_biomass <- summarise_at(Loggerhead_Patch_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2012_Total_biomass$Year <- ('2012')

###output
export(Loggerhead_Patch_2012_Total_biomass,"Loggerhead_Patch/data/Loggerhead_Patch_2012_biomass_data.csv")

Loggerhead_Patch_2014 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2014.xls")
Loggerhead_Patch_2014_Total_biomass <- summarise_at(Loggerhead_Patch_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2014_Total_biomass$Year <- ('2014')

###output
export(Loggerhead_Patch_2014_Total_biomass,"Loggerhead_Patch/data/Loggerhead_Patch_2014_biomass_data.csv")

Loggerhead_Patch_2016 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2016.xls")
Loggerhead_Patch_2016_Total_biomass <- summarise_at(Loggerhead_Patch_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2016_Total_biomass$Year <- ('2016')

###output
export(Loggerhead_Patch_2016_Total_biomass,"Loggerhead_Patch/data/Loggerhead_Patch_2016_biomass_data.csv")

####combine biomass data for each reef in a table 
Loggerhead_Patch_1999_merge <- read_csv("Loggerhead_Patch/data/Loggerhead_Patch_1999_biomass_data.csv")
Loggerhead_Patch_2000_merge <- read_csv("Loggerhead_Patch/data/Loggerhead_Patch_2000_biomass_data.csv")
Loggerhead_Patch_2004_merge <- read_csv("Loggerhead_Patch/data/Loggerhead_Patch_2004_biomass_data.csv")
Loggerhead_Patch_2006_merge <- read_csv("Loggerhead_Patch/data/Loggerhead_Patch_2006_biomass_data.csv")
Loggerhead_Patch_2008_merge <- read_csv("Loggerhead_Patch/data/Loggerhead_Patch_2008_biomass_data.csv")
Loggerhead_Patch_2010_merge <- read_csv("Loggerhead_Patch/data/Loggerhead_Patch_2010_biomass_data.csv")
Loggerhead_Patch_2012_merge <- read_csv("Loggerhead_Patch/data/Loggerhead_Patch_2012_biomass_data.csv")
Loggerhead_Patch_2014_merge <- read_csv("Loggerhead_Patch/data/Loggerhead_Patch_2014_biomass_data.csv")
Loggerhead_Patch_2016_merge <- read_csv("Loggerhead_Patch/data/Loggerhead_Patch_2016_biomass_data.csv")

Loggerhead_Patch_merge_1 <- rbind(Loggerhead_Patch_1999_merge,Loggerhead_Patch_2000_merge)
Loggerhead_Patch_merge_2 <- rbind(Loggerhead_Patch_merge_1,Loggerhead_Patch_2004_merge)
Loggerhead_Patch_merge_3 <- rbind(Loggerhead_Patch_merge_2,Loggerhead_Patch_2006_merge)
Loggerhead_Patch_merge_4 <- rbind(Loggerhead_Patch_merge_3,Loggerhead_Patch_2008_merge)
Loggerhead_Patch_merge_5 <- rbind(Loggerhead_Patch_merge_4,Loggerhead_Patch_2010_merge)
Loggerhead_Patch_merge_6 <- rbind(Loggerhead_Patch_merge_5,Loggerhead_Patch_2012_merge)
Loggerhead_Patch_merge_7 <- rbind(Loggerhead_Patch_merge_6,Loggerhead_Patch_2014_merge)
Loggerhead_Patch_Reef_biomass_data_combined <- rbind(Loggerhead_Patch_merge_7,Loggerhead_Patch_2016_merge)

##output
export(Loggerhead_Patch_Reef_biomass_data_combined,"Loggerhead_Patch/data/Loggerhead_Patch_biomass_data_combined.csv")




###Mayers Peak

Mayers_Peak_2000 <- import("Mayers_Peak/data/Mayers_Peak_2000.xls")
Mayers_Peak_2000_Total_biomass <- summarise_at(Mayers_Peak_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2000_Total_biomass$Year <- ('2000')
###output
export(Mayers_Peak_2000_Total_biomass,"Mayers_Peak/data/Mayers_Peak_2000_biomass_data.csv")

##repeat for all years 99-16
Mayers_Peak_1999 <- import("Mayers_Peak/data/Mayers_Peak_1999.xls")
Mayers_Peak_1999_Total_biomass <- summarise_at(Mayers_Peak_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_1999_Total_biomass$Year <- ('1999')
###output
export(Mayers_Peak_1999_Total_biomass,"Mayers_Peak/data/Mayers_Peak_1999_biomass_data.csv")

Mayers_Peak_2004 <- import("Mayers_Peak/data/Mayers_Peak_2004.xls")
Mayers_Peak_2004_Total_biomass <- summarise_at(Mayers_Peak_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2004_Total_biomass$Year <- ('2004')

###output
export(Mayers_Peak_2004_Total_biomass,"Mayers_Peak/data/Mayers_Peak_2004_biomass_data.csv")

Mayers_Peak_2006 <- import("Mayers_Peak/data/Mayers_Peak_2006.xls")
Mayers_Peak_2006_Total_biomass <- summarise_at(Mayers_Peak_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2006_Total_biomass$Year <- ('2006')

###output
export(Mayers_Peak_2006_Total_biomass,"Mayers_Peak/data/Mayers_Peak_2006_biomass_data.csv")

Mayers_Peak_2008 <- import("Mayers_Peak/data/Mayers_Peak_2008.xls")
Mayers_Peak_2008_Total_biomass <- summarise_at(Mayers_Peak_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2008_Total_biomass$Year <- ('2008')

###output
export(Mayers_Peak_2008_Total_biomass,"Mayers_Peak/data/Mayers_Peak_2008_biomass_data.csv")

Mayers_Peak_2010 <- import("Mayers_Peak/data/Mayers_Peak_2010.xls")
Mayers_Peak_2010_Total_biomass <- summarise_at(Mayers_Peak_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2010_Total_biomass$Year <- ('2010')

###output
export(Mayers_Peak_2010_Total_biomass,"Mayers_Peak/data/Mayers_Peak_2010_biomass_data.csv")

Mayers_Peak_2012 <- import("Mayers_Peak/data/Mayers_Peak_2012.xls")
Mayers_Peak_2012_Total_biomass <- summarise_at(Mayers_Peak_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2012_Total_biomass$Year <- ('2012')

###output
export(Mayers_Peak_2012_Total_biomass,"Mayers_Peak/data/Mayers_Peak_2012_biomass_data.csv")

Mayers_Peak_2014 <- import("Mayers_Peak/data/Mayers_Peak_2014.xls")
Mayers_Peak_2014_Total_biomass <- summarise_at(Mayers_Peak_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2014_Total_biomass$Year <- ('2014')

###output
export(Mayers_Peak_2014_Total_biomass,"Mayers_Peak/data/Mayers_Peak_2014_biomass_data.csv")

Mayers_Peak_2016 <- import("Mayers_Peak/data/Mayers_Peak_2016.xls")
Mayers_Peak_2016_Total_biomass <- summarise_at(Mayers_Peak_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2016_Total_biomass$Year <- ('2016')

###output
export(Mayers_Peak_2016_Total_biomass,"Mayers_Peak/data/Mayers_Peak_2016_biomass_data.csv")

####combine biomass data for each reef in a table 
Mayers_Peak_1999_merge <- read_csv("Mayers_Peak/data/Mayers_Peak_1999_biomass_data.csv")
Mayers_Peak_2000_merge <- read_csv("Mayers_Peak/data/Mayers_Peak_2000_biomass_data.csv")
Mayers_Peak_2004_merge <- read_csv("Mayers_Peak/data/Mayers_Peak_2004_biomass_data.csv")
Mayers_Peak_2006_merge <- read_csv("Mayers_Peak/data/Mayers_Peak_2006_biomass_data.csv")
Mayers_Peak_2008_merge <- read_csv("Mayers_Peak/data/Mayers_Peak_2008_biomass_data.csv")
Mayers_Peak_2010_merge <- read_csv("Mayers_Peak/data/Mayers_Peak_2010_biomass_data.csv")
Mayers_Peak_2012_merge <- read_csv("Mayers_Peak/data/Mayers_Peak_2012_biomass_data.csv")
Mayers_Peak_2014_merge <- read_csv("Mayers_Peak/data/Mayers_Peak_2014_biomass_data.csv")
Mayers_Peak_2016_merge <- read_csv("Mayers_Peak/data/Mayers_Peak_2016_biomass_data.csv")

Mayers_Peak_merge_1 <- rbind(Mayers_Peak_1999_merge,Mayers_Peak_2000_merge)
Mayers_Peak_merge_2 <- rbind(Mayers_Peak_merge_1,Mayers_Peak_2004_merge)
Mayers_Peak_merge_3 <- rbind(Mayers_Peak_merge_2,Mayers_Peak_2006_merge)
Mayers_Peak_merge_4 <- rbind(Mayers_Peak_merge_3,Mayers_Peak_2008_merge)
Mayers_Peak_merge_5 <- rbind(Mayers_Peak_merge_4,Mayers_Peak_2010_merge)
Mayers_Peak_merge_6 <- rbind(Mayers_Peak_merge_5,Mayers_Peak_2012_merge)
Mayers_Peak_merge_7 <- rbind(Mayers_Peak_merge_6,Mayers_Peak_2014_merge)
Mayers_Peak_Reef_biomass_data_combined <- rbind(Mayers_Peak_merge_7,Mayers_Peak_2016_merge)

##output
export(Mayers_Peak_Reef_biomass_data_combined,"Mayers_Peak/data/Mayers_Peak_biomass_data_combined.csv")



###Palmata patch

Palmata_Patch_2000 <- import("Palmata_Patch/data/Palmata_Patch_2000.xls")
Palmata_Patch_2000_Total_biomass <- summarise_at(Palmata_Patch_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2000_Total_biomass$Year <- ('2000')
###output
export(Palmata_Patch_2000_Total_biomass,"Palmata_Patch/data/Palmata_Patch_2000_biomass_data.csv")

##repeat for all years 99-16
Palmata_Patch_1999 <- import("Palmata_Patch/data/Palmata_Patch_1999.xls")
Palmata_Patch_1999_Total_biomass <- summarise_at(Palmata_Patch_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_1999_Total_biomass$Year <- ('1999')
###output
export(Palmata_Patch_1999_Total_biomass,"Palmata_Patch/data/Palmata_Patch_1999_biomass_data.csv")

Palmata_Patch_2004 <- import("Palmata_Patch/data/Palmata_Patch_2004.xls")
Palmata_Patch_2004_Total_biomass <- summarise_at(Palmata_Patch_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2004_Total_biomass$Year <- ('2004')

###output
export(Palmata_Patch_2004_Total_biomass,"Palmata_Patch/data/Palmata_Patch_2004_biomass_data.csv")

Palmata_Patch_2006 <- import("Palmata_Patch/data/Palmata_Patch_2006.xls")
Palmata_Patch_2006_Total_biomass <- summarise_at(Palmata_Patch_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2006_Total_biomass$Year <- ('2006')

###output
export(Palmata_Patch_2006_Total_biomass,"Palmata_Patch/data/Palmata_Patch_2006_biomass_data.csv")

Palmata_Patch_2008 <- import("Palmata_Patch/data/Palmata_Patch_2008.xls")
Palmata_Patch_2008_Total_biomass <- summarise_at(Palmata_Patch_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2008_Total_biomass$Year <- ('2008')

###output
export(Palmata_Patch_2008_Total_biomass,"Palmata_Patch/data/Palmata_Patch_2008_biomass_data.csv")

Palmata_Patch_2010 <- import("Palmata_Patch/data/Palmata_Patch_2010.xls")
Palmata_Patch_2010_Total_biomass <- summarise_at(Palmata_Patch_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2010_Total_biomass$Year <- ('2010')

###output
export(Palmata_Patch_2010_Total_biomass,"Palmata_Patch/data/Palmata_Patch_2010_biomass_data.csv")

Palmata_Patch_2012 <- import("Palmata_Patch/data/Palmata_Patch_2012.xls")
Palmata_Patch_2012_Total_biomass <- summarise_at(Palmata_Patch_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2012_Total_biomass$Year <- ('2012')

###output
export(Palmata_Patch_2012_Total_biomass,"Palmata_Patch/data/Palmata_Patch_2012_biomass_data.csv")

Palmata_Patch_2014 <- import("Palmata_Patch/data/Palmata_Patch_2014.xls")
Palmata_Patch_2014_Total_biomass <- summarise_at(Palmata_Patch_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2014_Total_biomass$Year <- ('2014')

###output
export(Palmata_Patch_2014_Total_biomass,"Palmata_Patch/data/Palmata_Patch_2014_biomass_data.csv")

Palmata_Patch_2016 <- import("Palmata_Patch/data/Palmata_Patch_2016.xls")
Palmata_Patch_2016_Total_biomass <- summarise_at(Palmata_Patch_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2016_Total_biomass$Year <- ('2016')

###output
export(Palmata_Patch_2016_Total_biomass,"Palmata_Patch/data/Palmata_Patch_2016_biomass_data.csv")

####combine biomass data for each reef in a table 
Palmata_Patch_1999_merge <- read_csv("Palmata_Patch/data/Palmata_Patch_1999_biomass_data.csv")
Palmata_Patch_2000_merge <- read_csv("Palmata_Patch/data/Palmata_Patch_2000_biomass_data.csv")
Palmata_Patch_2004_merge <- read_csv("Palmata_Patch/data/Palmata_Patch_2004_biomass_data.csv")
Palmata_Patch_2006_merge <- read_csv("Palmata_Patch/data/Palmata_Patch_2006_biomass_data.csv")
Palmata_Patch_2008_merge <- read_csv("Palmata_Patch/data/Palmata_Patch_2008_biomass_data.csv")
Palmata_Patch_2010_merge <- read_csv("Palmata_Patch/data/Palmata_Patch_2010_biomass_data.csv")
Palmata_Patch_2012_merge <- read_csv("Palmata_Patch/data/Palmata_Patch_2012_biomass_data.csv")
Palmata_Patch_2014_merge <- read_csv("Palmata_Patch/data/Palmata_Patch_2014_biomass_data.csv")
Palmata_Patch_2016_merge <- read_csv("Palmata_Patch/data/Palmata_Patch_2016_biomass_data.csv")

Palmata_Patch_merge_1 <- rbind(Palmata_Patch_1999_merge,Palmata_Patch_2000_merge)
Palmata_Patch_merge_2 <- rbind(Palmata_Patch_merge_1,Palmata_Patch_2004_merge)
Palmata_Patch_merge_3 <- rbind(Palmata_Patch_merge_2,Palmata_Patch_2006_merge)
Palmata_Patch_merge_4 <- rbind(Palmata_Patch_merge_3,Palmata_Patch_2008_merge)
Palmata_Patch_merge_5 <- rbind(Palmata_Patch_merge_4,Palmata_Patch_2010_merge)
Palmata_Patch_merge_6 <- rbind(Palmata_Patch_merge_5,Palmata_Patch_2012_merge)
Palmata_Patch_merge_7 <- rbind(Palmata_Patch_merge_6,Palmata_Patch_2014_merge)
Palmata_Patch_Reef_biomass_data_combined <- rbind(Palmata_Patch_merge_7,Palmata_Patch_2016_merge)

##output
export(Palmata_Patch_Reef_biomass_data_combined,"Palmata_Patch/data/Palmata_Patch_biomass_data_combined.csv")




###Prolifera Patch

Prolifera_Patch_2000 <- import("Prolifera_Patch/data/Prolifera_Patch_2000.xls")
Prolifera_Patch_2000_Total_biomass <- summarise_at(Prolifera_Patch_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2000_Total_biomass$Year <- ('2000')
###output
export(Prolifera_Patch_2000_Total_biomass,"Prolifera_Patch/data/Prolifera_Patch_2000_biomass_data.csv")

##repeat for all years 99-16
Prolifera_Patch_1999 <- import("Prolifera_Patch/data/Prolifera_Patch_1999.xls")
Prolifera_Patch_1999_Total_biomass <- summarise_at(Prolifera_Patch_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_1999_Total_biomass$Year <- ('1999')
###output
export(Prolifera_Patch_1999_Total_biomass,"Prolifera_Patch/data/Prolifera_Patch_1999_biomass_data.csv")

Prolifera_Patch_2004 <- import("Prolifera_Patch/data/Prolifera_Patch_2004.xls")
Prolifera_Patch_2004_Total_biomass <- summarise_at(Prolifera_Patch_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2004_Total_biomass$Year <- ('2004')

###output
export(Prolifera_Patch_2004_Total_biomass,"Prolifera_Patch/data/Prolifera_Patch_2004_biomass_data.csv")

Prolifera_Patch_2006 <- import("Prolifera_Patch/data/Prolifera_Patch_2006.xls")
Prolifera_Patch_2006_Total_biomass <- summarise_at(Prolifera_Patch_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2006_Total_biomass$Year <- ('2006')

###output
export(Prolifera_Patch_2006_Total_biomass,"Prolifera_Patch/data/Prolifera_Patch_2006_biomass_data.csv")

Prolifera_Patch_2008 <- import("Prolifera_Patch/data/Prolifera_Patch_2008.xls")
Prolifera_Patch_2008_Total_biomass <- summarise_at(Prolifera_Patch_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2008_Total_biomass$Year <- ('2008')

###output
export(Prolifera_Patch_2008_Total_biomass,"Prolifera_Patch/data/Prolifera_Patch_2008_biomass_data.csv")

Prolifera_Patch_2010 <- import("Prolifera_Patch/data/Prolifera_Patch_2010.xls")
Prolifera_Patch_2010_Total_biomass <- summarise_at(Prolifera_Patch_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2010_Total_biomass$Year <- ('2010')

###output
export(Prolifera_Patch_2010_Total_biomass,"Prolifera_Patch/data/Prolifera_Patch_2010_biomass_data.csv")

Prolifera_Patch_2012 <- import("Prolifera_Patch/data/Prolifera_Patch_2012.xls")
Prolifera_Patch_2012_Total_biomass <- summarise_at(Prolifera_Patch_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2012_Total_biomass$Year <- ('2012')

###output
export(Prolifera_Patch_2012_Total_biomass,"Prolifera_Patch/data/Prolifera_Patch_2012_biomass_data.csv")

Prolifera_Patch_2014 <- import("Prolifera_Patch/data/Prolifera_Patch_2014.xls")
Prolifera_Patch_2014_Total_biomass <- summarise_at(Prolifera_Patch_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2014_Total_biomass$Year <- ('2014')

###output
export(Prolifera_Patch_2014_Total_biomass,"Prolifera_Patch/data/Prolifera_Patch_2014_biomass_data.csv")

Prolifera_Patch_2016 <- import("Prolifera_Patch/data/Prolifera_Patch_2016.xls")
Prolifera_Patch_2016_Total_biomass <- summarise_at(Prolifera_Patch_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2016_Total_biomass$Year <- ('2016')

###output
export(Prolifera_Patch_2016_Total_biomass,"Prolifera_Patch/data/Prolifera_Patch_2016_biomass_data.csv")

####combine biomass data for each reef in a table 
Prolifera_Patch_1999_merge <- read_csv("Prolifera_Patch/data/Prolifera_Patch_1999_biomass_data.csv")
Prolifera_Patch_2000_merge <- read_csv("Prolifera_Patch/data/Prolifera_Patch_2000_biomass_data.csv")
Prolifera_Patch_2004_merge <- read_csv("Prolifera_Patch/data/Prolifera_Patch_2004_biomass_data.csv")
Prolifera_Patch_2006_merge <- read_csv("Prolifera_Patch/data/Prolifera_Patch_2006_biomass_data.csv")
Prolifera_Patch_2008_merge <- read_csv("Prolifera_Patch/data/Prolifera_Patch_2008_biomass_data.csv")
Prolifera_Patch_2010_merge <- read_csv("Prolifera_Patch/data/Prolifera_Patch_2010_biomass_data.csv")
Prolifera_Patch_2012_merge <- read_csv("Prolifera_Patch/data/Prolifera_Patch_2012_biomass_data.csv")
Prolifera_Patch_2014_merge <- read_csv("Prolifera_Patch/data/Prolifera_Patch_2014_biomass_data.csv")
Prolifera_Patch_2016_merge <- read_csv("Prolifera_Patch/data/Prolifera_Patch_2016_biomass_data.csv")

Prolifera_Patch_merge_1 <- rbind(Prolifera_Patch_1999_merge,Prolifera_Patch_2000_merge)
Prolifera_Patch_merge_2 <- rbind(Prolifera_Patch_merge_1,Prolifera_Patch_2004_merge)
Prolifera_Patch_merge_3 <- rbind(Prolifera_Patch_merge_2,Prolifera_Patch_2006_merge)
Prolifera_Patch_merge_4 <- rbind(Prolifera_Patch_merge_3,Prolifera_Patch_2008_merge)
Prolifera_Patch_merge_5 <- rbind(Prolifera_Patch_merge_4,Prolifera_Patch_2010_merge)
Prolifera_Patch_merge_6 <- rbind(Prolifera_Patch_merge_5,Prolifera_Patch_2012_merge)
Prolifera_Patch_merge_7 <- rbind(Prolifera_Patch_merge_6,Prolifera_Patch_2014_merge)
Prolifera_Patch_Reef_biomass_data_combined <- rbind(Prolifera_Patch_merge_7,Prolifera_Patch_2016_merge)

##output
export(Prolifera_Patch_Reef_biomass_data_combined,"Prolifera_Patch/data/Prolifera_Patch_biomass_data_combined.csv")



###Temptation Rock

Temptation_Rock_2000 <- import("Temptation_Rock/data/Temptation_Rock_2000.xls")
Temptation_Rock_2000_Total_biomass <- summarise_at(Temptation_Rock_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2000_Total_biomass$Year <- ('2000')
###output
export(Temptation_Rock_2000_Total_biomass,"Temptation_Rock/data/Temptation_Rock_2000_biomass_data.csv")

##repeat for all years 99-16
Temptation_Rock_1999 <- import("Temptation_Rock/data/Temptation_Rock_1999.xls")
Temptation_Rock_1999_Total_biomass <- summarise_at(Temptation_Rock_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_1999_Total_biomass$Year <- ('1999')
###output
export(Temptation_Rock_1999_Total_biomass,"Temptation_Rock/data/Temptation_Rock_1999_biomass_data.csv")

Temptation_Rock_2004 <- import("Temptation_Rock/data/Temptation_Rock_2004.xls")
Temptation_Rock_2004_Total_biomass <- summarise_at(Temptation_Rock_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2004_Total_biomass$Year <- ('2004')

###output
export(Temptation_Rock_2004_Total_biomass,"Temptation_Rock/data/Temptation_Rock_2004_biomass_data.csv")

Temptation_Rock_2006 <- import("Temptation_Rock/data/Temptation_Rock_2006.xls")
Temptation_Rock_2006_Total_biomass <- summarise_at(Temptation_Rock_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2006_Total_biomass$Year <- ('2006')

###output
export(Temptation_Rock_2006_Total_biomass,"Temptation_Rock/data/Temptation_Rock_2006_biomass_data.csv")

Temptation_Rock_2008 <- import("Temptation_Rock/data/Temptation_Rock_2008.xls")
Temptation_Rock_2008_Total_biomass <- summarise_at(Temptation_Rock_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2008_Total_biomass$Year <- ('2008')

###output
export(Temptation_Rock_2008_Total_biomass,"Temptation_Rock/data/Temptation_Rock_2008_biomass_data.csv")

Temptation_Rock_2010 <- import("Temptation_Rock/data/Temptation_Rock_2010.xls")
Temptation_Rock_2010_Total_biomass <- summarise_at(Temptation_Rock_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2010_Total_biomass$Year <- ('2010')

###output
export(Temptation_Rock_2010_Total_biomass,"Temptation_Rock/data/Temptation_Rock_2010_biomass_data.csv")

Temptation_Rock_2012 <- import("Temptation_Rock/data/Temptation_Rock_2012.xls")
Temptation_Rock_2012_Total_biomass <- summarise_at(Temptation_Rock_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2012_Total_biomass$Year <- ('2012')

###output
export(Temptation_Rock_2012_Total_biomass,"Temptation_Rock/data/Temptation_Rock_2012_biomass_data.csv")

Temptation_Rock_2014 <- import("Temptation_Rock/data/Temptation_Rock_2014.xls")
Temptation_Rock_2014_Total_biomass <- summarise_at(Temptation_Rock_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2014_Total_biomass$Year <- ('2014')

###output
export(Temptation_Rock_2014_Total_biomass,"Temptation_Rock/data/Temptation_Rock_2014_biomass_data.csv")

Temptation_Rock_2016 <- import("Temptation_Rock/data/Temptation_Rock_2016.xls")
Temptation_Rock_2016_Total_biomass <- summarise_at(Temptation_Rock_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2016_Total_biomass$Year <- ('2016')

###output
export(Temptation_Rock_2016_Total_biomass,"Temptation_Rock/data/Temptation_Rock_2016_biomass_data.csv")

####combine biomass data for each reef in a table 
Temptation_Rock_1999_merge <- read_csv("Temptation_Rock/data/Temptation_Rock_1999_biomass_data.csv")
Temptation_Rock_2000_merge <- read_csv("Temptation_Rock/data/Temptation_Rock_2000_biomass_data.csv")
Temptation_Rock_2004_merge <- read_csv("Temptation_Rock/data/Temptation_Rock_2004_biomass_data.csv")
Temptation_Rock_2006_merge <- read_csv("Temptation_Rock/data/Temptation_Rock_2006_biomass_data.csv")
Temptation_Rock_2008_merge <- read_csv("Temptation_Rock/data/Temptation_Rock_2008_biomass_data.csv")
Temptation_Rock_2010_merge <- read_csv("Temptation_Rock/data/Temptation_Rock_2010_biomass_data.csv")
Temptation_Rock_2012_merge <- read_csv("Temptation_Rock/data/Temptation_Rock_2012_biomass_data.csv")
Temptation_Rock_2014_merge <- read_csv("Temptation_Rock/data/Temptation_Rock_2014_biomass_data.csv")
Temptation_Rock_2016_merge <- read_csv("Temptation_Rock/data/Temptation_Rock_2016_biomass_data.csv")

Temptation_Rock_merge_1 <- rbind(Temptation_Rock_1999_merge,Temptation_Rock_2000_merge)
Temptation_Rock_merge_2 <- rbind(Temptation_Rock_merge_1,Temptation_Rock_2004_merge)
Temptation_Rock_merge_3 <- rbind(Temptation_Rock_merge_2,Temptation_Rock_2006_merge)
Temptation_Rock_merge_4 <- rbind(Temptation_Rock_merge_3,Temptation_Rock_2008_merge)
Temptation_Rock_merge_5 <- rbind(Temptation_Rock_merge_4,Temptation_Rock_2010_merge)
Temptation_Rock_merge_6 <- rbind(Temptation_Rock_merge_5,Temptation_Rock_2012_merge)
Temptation_Rock_merge_7 <- rbind(Temptation_Rock_merge_6,Temptation_Rock_2014_merge)
Temptation_Rock_Reef_biomass_data_combined <- rbind(Temptation_Rock_merge_7,Temptation_Rock_2016_merge)

##output
export(Temptation_Rock_Reef_biomass_data_combined,"Temptation_Rock/data/Temptation_Rock_biomass_data_combined.csv")




### Texas Rock


Texas_Rock_2000 <- import("Texas_Rock/data/Texas_Rock_2000.xls")
Texas_Rock_2000_Total_biomass <- summarise_at(Texas_Rock_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2000_Total_biomass$Year <- ('2000')
###output
export(Texas_Rock_2000_Total_biomass,"Texas_Rock/data/Texas_Rock_2000_biomass_data.csv")

##repeat for all years 99-16
Texas_Rock_1999 <- import("Texas_Rock/data/Texas_Rock_1999.xls")
Texas_Rock_1999_Total_biomass <- summarise_at(Texas_Rock_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_1999_Total_biomass$Year <- ('1999')
###output
export(Texas_Rock_1999_Total_biomass,"Texas_Rock/data/Texas_Rock_1999_biomass_data.csv")

Texas_Rock_2004 <- import("Texas_Rock/data/Texas_Rock_2004.xls")
Texas_Rock_2004_Total_biomass <- summarise_at(Texas_Rock_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2004_Total_biomass$Year <- ('2004')

###output
export(Texas_Rock_2004_Total_biomass,"Texas_Rock/data/Texas_Rock_2004_biomass_data.csv")

Texas_Rock_2006 <- import("Texas_Rock/data/Texas_Rock_2006.xls")
Texas_Rock_2006_Total_biomass <- summarise_at(Texas_Rock_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2006_Total_biomass$Year <- ('2006')

###output
export(Texas_Rock_2006_Total_biomass,"Texas_Rock/data/Texas_Rock_2006_biomass_data.csv")

Texas_Rock_2008 <- import("Texas_Rock/data/Texas_Rock_2008.xls")
Texas_Rock_2008_Total_biomass <- summarise_at(Texas_Rock_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2008_Total_biomass$Year <- ('2008')

###output
export(Texas_Rock_2008_Total_biomass,"Texas_Rock/data/Texas_Rock_2008_biomass_data.csv")

Texas_Rock_2010 <- import("Texas_Rock/data/Texas_Rock_2010.xls")
Texas_Rock_2010_Total_biomass <- summarise_at(Texas_Rock_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2010_Total_biomass$Year <- ('2010')

###output
export(Texas_Rock_2010_Total_biomass,"Texas_Rock/data/Texas_Rock_2010_biomass_data.csv")

Texas_Rock_2012 <- import("Texas_Rock/data/Texas_Rock_2012.xls")
Texas_Rock_2012_Total_biomass <- summarise_at(Texas_Rock_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2012_Total_biomass$Year <- ('2012')

###output
export(Texas_Rock_2012_Total_biomass,"Texas_Rock/data/Texas_Rock_2012_biomass_data.csv")

Texas_Rock_2014 <- import("Texas_Rock/data/Texas_Rock_2014.xls")
Texas_Rock_2014_Total_biomass <- summarise_at(Texas_Rock_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2014_Total_biomass$Year <- ('2014')

###output
export(Texas_Rock_2014_Total_biomass,"Texas_Rock/data/Texas_Rock_2014_biomass_data.csv")

Texas_Rock_2016 <- import("Texas_Rock/data/Texas_Rock_2016.xls")
Texas_Rock_2016_Total_biomass <- summarise_at(Texas_Rock_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2016_Total_biomass$Year <- ('2016')

###output
export(Texas_Rock_2016_Total_biomass,"Texas_Rock/data/Texas_Rock_2016_biomass_data.csv")

####combine biomass data for each reef in a table 
Texas_Rock_1999_merge <- read_csv("Texas_Rock/data/Texas_Rock_1999_biomass_data.csv")
Texas_Rock_2000_merge <- read_csv("Texas_Rock/data/Texas_Rock_2000_biomass_data.csv")
Texas_Rock_2004_merge <- read_csv("Texas_Rock/data/Texas_Rock_2004_biomass_data.csv")
Texas_Rock_2006_merge <- read_csv("Texas_Rock/data/Texas_Rock_2006_biomass_data.csv")
Texas_Rock_2008_merge <- read_csv("Texas_Rock/data/Texas_Rock_2008_biomass_data.csv")
Texas_Rock_2010_merge <- read_csv("Texas_Rock/data/Texas_Rock_2010_biomass_data.csv")
Texas_Rock_2012_merge <- read_csv("Texas_Rock/data/Texas_Rock_2012_biomass_data.csv")
Texas_Rock_2014_merge <- read_csv("Texas_Rock/data/Texas_Rock_2014_biomass_data.csv")
Texas_Rock_2016_merge <- read_csv("Texas_Rock/data/Texas_Rock_2016_biomass_data.csv")

Texas_Rock_merge_1 <- rbind(Texas_Rock_1999_merge,Texas_Rock_2000_merge)
Texas_Rock_merge_2 <- rbind(Texas_Rock_merge_1,Texas_Rock_2004_merge)
Texas_Rock_merge_3 <- rbind(Texas_Rock_merge_2,Texas_Rock_2006_merge)
Texas_Rock_merge_4 <- rbind(Texas_Rock_merge_3,Texas_Rock_2008_merge)
Texas_Rock_merge_5 <- rbind(Texas_Rock_merge_4,Texas_Rock_2010_merge)
Texas_Rock_merge_6 <- rbind(Texas_Rock_merge_5,Texas_Rock_2012_merge)
Texas_Rock_merge_7 <- rbind(Texas_Rock_merge_6,Texas_Rock_2014_merge)
Texas_Rock_Reef_biomass_data_combined <- rbind(Texas_Rock_merge_7,Texas_Rock_2016_merge)

##output
export(Texas_Rock_Reef_biomass_data_combined,"Texas_Rock/data/Texas_Rock_biomass_data_combined.csv")


###The Maze


Maze_2000 <- import("The_Maze/data/Maze_2000.xls")
Maze_2000_Total_biomass <- summarise_at(Maze_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2000_Total_biomass$Year <- ('2000')
###output
export(Maze_2000_Total_biomass,"The_Maze/data/Maze_2000_biomass_data.csv")

##repeat for all years 99-16
Maze_1999 <- import("The_Maze/data/Maze_1999.xls")
Maze_1999_Total_biomass <- summarise_at(Maze_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_1999_Total_biomass$Year <- ('1999')
###output
export(Maze_1999_Total_biomass,"The_Maze/data/Maze_1999_biomass_data.csv")

Maze_2004 <- import("The_Maze/data/Maze_2004.xls")
Maze_2004_Total_biomass <- summarise_at(Maze_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2004_Total_biomass$Year <- ('2004')

###output
export(Maze_2004_Total_biomass,"The_Maze/data/Maze_2004_biomass_data.csv")

Maze_2006 <- import("The_Maze/data/Maze_2006.xls")
Maze_2006_Total_biomass <- summarise_at(Maze_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2006_Total_biomass$Year <- ('2006')

###output
export(Maze_2006_Total_biomass,"The_Maze/data/Maze_2006_biomass_data.csv")

Maze_2008 <- import("The_Maze/data/Maze_2008.xls")
Maze_2008_Total_biomass <- summarise_at(Maze_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2008_Total_biomass$Year <- ('2008')

###output
export(Maze_2008_Total_biomass,"The_Maze/data/Maze_2008_biomass_data.csv")

Maze_2010 <- import("The_Maze/data/Maze_2010.xls")
Maze_2010_Total_biomass <- summarise_at(Maze_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2010_Total_biomass$Year <- ('2010')

###output
export(Maze_2010_Total_biomass,"The_Maze/data/Maze_2010_biomass_data.csv")

Maze_2012 <- import("The_Maze/data/Maze_2012.xls")
Maze_2012_Total_biomass <- summarise_at(Maze_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2012_Total_biomass$Year <- ('2012')

###output
export(Maze_2012_Total_biomass,"The_Maze/data/Maze_2012_biomass_data.csv")

Maze_2014 <- import("The_Maze/data/Maze_2014.xls")
Maze_2014_Total_biomass <- summarise_at(Maze_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2014_Total_biomass$Year <- ('2014')

###output
export(Maze_2014_Total_biomass,"The_Maze/data/Maze_2014_biomass_data.csv")

Maze_2016 <- import("The_Maze/data/Maze_2016.xls")
Maze_2016_Total_biomass <- summarise_at(Maze_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2016_Total_biomass$Year <- ('2016')

###output
export(Maze_2016_Total_biomass,"The_Maze/data/Maze_2016_biomass_data.csv")

####combine biomass data for each reef in a table 
Maze_1999_merge <- read_csv("The_Maze/data/Maze_1999_biomass_data.csv")
Maze_2000_merge <- read_csv("The_Maze/data/Maze_2000_biomass_data.csv")
Maze_2004_merge <- read_csv("The_Maze/data/Maze_2004_biomass_data.csv")
Maze_2006_merge <- read_csv("The_Maze/data/Maze_2006_biomass_data.csv")
Maze_2008_merge <- read_csv("The_Maze/data/Maze_2008_biomass_data.csv")
Maze_2010_merge <- read_csv("The_Maze/data/Maze_2010_biomass_data.csv")
Maze_2012_merge <- read_csv("The_Maze/data/Maze_2012_biomass_data.csv")
Maze_2014_merge <- read_csv("The_Maze/data/Maze_2014_biomass_data.csv")
Maze_2016_merge <- read_csv("The_Maze/data/Maze_2016_biomass_data.csv")

#Maze_merge_1 <- rbind(Maze_1999_merge,Maze_2000_merge)
Maze_merge_2 <- rbind(Maze_2000_merge,Maze_2004_merge)
Maze_merge_3 <- rbind(Maze_merge_2,Maze_2006_merge)
Maze_merge_4 <- rbind(Maze_merge_3,Maze_2008_merge)
Maze_merge_5 <- rbind(Maze_merge_4,Maze_2010_merge)
Maze_merge_6 <- rbind(Maze_merge_5,Maze_2012_merge)
Maze_merge_7 <- rbind(Maze_merge_6,Maze_2014_merge)
Maze_Reef_biomass_data_combined <- rbind(Maze_merge_7,Maze_2016_merge)

##output
export(Maze_Reef_biomass_data_combined,"The_Maze/data/Maze_biomass_data_combined.csv")


##White Shoal

White_Shoal_2000 <- import("White_Shoal/data/White_Shoal_2000.xls")
White_Shoal_2000_Total_biomass <- summarise_at(White_Shoal_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2000_Total_biomass$Year <- ('2000')
###output
export(White_Shoal_2000_Total_biomass,"White_Shoal/data/White_Shoal_2000_biomass_data.csv")

##repeat for all years 99-16
White_Shoal_1999 <- import("White_Shoal/data/White_Shoal_1999.xls")
White_Shoal_1999_Total_biomass <- summarise_at(White_Shoal_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_1999_Total_biomass$Year <- ('1999')
###output
export(White_Shoal_1999_Total_biomass,"White_Shoal/data/White_Shoal_1999_biomass_data.csv")

White_Shoal_2004 <- import("White_Shoal/data/White_Shoal_2004.xls")
White_Shoal_2004_Total_biomass <- summarise_at(White_Shoal_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2004_Total_biomass$Year <- ('2004')

###output
export(White_Shoal_2004_Total_biomass,"White_Shoal/data/White_Shoal_2004_biomass_data.csv")

White_Shoal_2006 <- import("White_Shoal/data/White_Shoal_2006.xls")
White_Shoal_2006_Total_biomass <- summarise_at(White_Shoal_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2006_Total_biomass$Year <- ('2006')

###output
export(White_Shoal_2006_Total_biomass,"White_Shoal/data/White_Shoal_2006_biomass_data.csv")

White_Shoal_2008 <- import("White_Shoal/data/White_Shoal_2008.xls")
White_Shoal_2008_Total_biomass <- summarise_at(White_Shoal_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2008_Total_biomass$Year <- ('2008')

###output
export(White_Shoal_2008_Total_biomass,"White_Shoal/data/White_Shoal_2008_biomass_data.csv")

White_Shoal_2010 <- import("White_Shoal/data/White_Shoal_2010.xls")
White_Shoal_2010_Total_biomass <- summarise_at(White_Shoal_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2010_Total_biomass$Year <- ('2010')

###output
export(White_Shoal_2010_Total_biomass,"White_Shoal/data/White_Shoal_2010_biomass_data.csv")

White_Shoal_2012 <- import("White_Shoal/data/White_Shoal_2012.xls")
White_Shoal_2012_Total_biomass <- summarise_at(White_Shoal_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2012_Total_biomass$Year <- ('2012')

###output
export(White_Shoal_2012_Total_biomass,"White_Shoal/data/White_Shoal_2012_biomass_data.csv")

White_Shoal_2014 <- import("White_Shoal/data/White_Shoal_2014.xls")
White_Shoal_2014_Total_biomass <- summarise_at(White_Shoal_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2014_Total_biomass$Year <- ('2014')

###output
export(White_Shoal_2014_Total_biomass,"White_Shoal/data/White_Shoal_2014_biomass_data.csv")

White_Shoal_2016 <- import("White_Shoal/data/White_Shoal_2016.xls")
White_Shoal_2016_Total_biomass <- summarise_at(White_Shoal_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2016_Total_biomass$Year <- ('2016')

###output
export(White_Shoal_2016_Total_biomass,"White_Shoal/data/White_Shoal_2016_biomass_data.csv")

####combine biomass data for each reef in a table 
White_Shoal_1999_merge <- read_csv("White_Shoal/data/White_Shoal_1999_biomass_data.csv")
White_Shoal_2000_merge <- read_csv("White_Shoal/data/White_Shoal_2000_biomass_data.csv")
White_Shoal_2004_merge <- read_csv("White_Shoal/data/White_Shoal_2004_biomass_data.csv")
White_Shoal_2006_merge <- read_csv("White_Shoal/data/White_Shoal_2006_biomass_data.csv")
White_Shoal_2008_merge <- read_csv("White_Shoal/data/White_Shoal_2008_biomass_data.csv")
White_Shoal_2010_merge <- read_csv("White_Shoal/data/White_Shoal_2010_biomass_data.csv")
White_Shoal_2012_merge <- read_csv("White_Shoal/data/White_Shoal_2012_biomass_data.csv")
White_Shoal_2014_merge <- read_csv("White_Shoal/data/White_Shoal_2014_biomass_data.csv")
White_Shoal_2016_merge <- read_csv("White_Shoal/data/White_Shoal_2016_biomass_data.csv")

White_Shoal_merge_1 <- rbind(White_Shoal_1999_merge,White_Shoal_2000_merge)
White_Shoal_merge_2 <- rbind(White_Shoal_merge_1,White_Shoal_2004_merge)
White_Shoal_merge_3 <- rbind(White_Shoal_merge_2,White_Shoal_2006_merge)
White_Shoal_merge_4 <- rbind(White_Shoal_merge_3,White_Shoal_2008_merge)
White_Shoal_merge_5 <- rbind(White_Shoal_merge_4,White_Shoal_2010_merge)
White_Shoal_merge_6 <- rbind(White_Shoal_merge_5,White_Shoal_2012_merge)
White_Shoal_merge_7 <- rbind(White_Shoal_merge_6,White_Shoal_2014_merge)
White_Shoal_Reef_biomass_data_combined <- rbind(White_Shoal_merge_7,White_Shoal_2016_merge)

##output
export(White_Shoal_Reef_biomass_data_combined,"White_Shoal/data/White_Shoal_biomass_data_combined.csv")








####Lower Keys 

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/LK")


##repeat for all years 99-16
Eastern_Sambo_Deep_1999 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_1999.xls")
Eastern_Sambo_Deep_1999_Total_biomass <- summarise_at(Eastern_Sambo_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_1999_Total_biomass$Year <- ('1999')
###output
export(Eastern_Sambo_Deep_1999_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_1999_biomass_data.csv")

Eastern_Sambo_Deep_2000 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2000.xls")
Eastern_Sambo_Deep_2000_Total_biomass <- summarise_at(Eastern_Sambo_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2000_Total_biomass$Year <- ('2000')
###output
export(Eastern_Sambo_Deep_2000_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2000_biomass_data.csv")

Eastern_Sambo_Deep_2001 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2001.xls")
Eastern_Sambo_Deep_2001_Total_biomass <- summarise_at(Eastern_Sambo_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2001_Total_biomass$Year <- ('2001')
###output
export(Eastern_Sambo_Deep_2001_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2001_biomass_data.csv")

Eastern_Sambo_Deep_2002 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2002.xls")
Eastern_Sambo_Deep_2002_Total_biomass <- summarise_at(Eastern_Sambo_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2002_Total_biomass$Year <- ('2002')
###output
export(Eastern_Sambo_Deep_2002_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2002_biomass_data.csv")

Eastern_Sambo_Deep_2003 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2003.xls")
Eastern_Sambo_Deep_2003_Total_biomass <- summarise_at(Eastern_Sambo_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2003_Total_biomass$Year <- ('2003')
###output
export(Eastern_Sambo_Deep_2003_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2003_biomass_data.csv")


Eastern_Sambo_Deep_2004 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2004.xls")
Eastern_Sambo_Deep_2004_Total_biomass <- summarise_at(Eastern_Sambo_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2004_Total_biomass$Year <- ('2004')

###output
export(Eastern_Sambo_Deep_2004_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2004_biomass_data.csv")

Eastern_Sambo_Deep_2005 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2005.xls")
Eastern_Sambo_Deep_2005_Total_biomass <- summarise_at(Eastern_Sambo_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2005_Total_biomass$Year <- ('2005')
###output
export(Eastern_Sambo_Deep_2005_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2005_biomass_data.csv")


Eastern_Sambo_Deep_2006 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2006.xls")
Eastern_Sambo_Deep_2006_Total_biomass <- summarise_at(Eastern_Sambo_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2006_Total_biomass$Year <- ('2006')

###output
export(Eastern_Sambo_Deep_2006_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2006_biomass_data.csv")

Eastern_Sambo_Deep_2007 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2007.xls")
Eastern_Sambo_Deep_2007_Total_biomass <- summarise_at(Eastern_Sambo_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2007_Total_biomass$Year <- ('2007')
###output
export(Eastern_Sambo_Deep_2007_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2007_biomass_data.csv")


Eastern_Sambo_Deep_2008 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2008.xls")
Eastern_Sambo_Deep_2008_Total_biomass <- summarise_at(Eastern_Sambo_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2008_Total_biomass$Year <- ('2008')

###output
export(Eastern_Sambo_Deep_2008_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2008_biomass_data.csv")

Eastern_Sambo_Deep_2009 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2009.xls")
Eastern_Sambo_Deep_2009_Total_biomass <- summarise_at(Eastern_Sambo_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2009_Total_biomass$Year <- ('2009')
###output
export(Eastern_Sambo_Deep_2009_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2009_biomass_data.csv")


Eastern_Sambo_Deep_2010 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2010.xls")
Eastern_Sambo_Deep_2010_Total_biomass <- summarise_at(Eastern_Sambo_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2010_Total_biomass$Year <- ('2010')

###output
export(Eastern_Sambo_Deep_2010_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2010_biomass_data.csv")

Eastern_Sambo_Deep_2011 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2011.xls")
Eastern_Sambo_Deep_2011_Total_biomass <- summarise_at(Eastern_Sambo_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2011_Total_biomass$Year <- ('2011')
###output
export(Eastern_Sambo_Deep_2011_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2011_biomass_data.csv")


Eastern_Sambo_Deep_2012 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2012.xls")
Eastern_Sambo_Deep_2012_Total_biomass <- summarise_at(Eastern_Sambo_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2012_Total_biomass$Year <- ('2012')

###output
export(Eastern_Sambo_Deep_2012_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2012_biomass_data.csv")

Eastern_Sambo_Deep_2014 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2014.xls")
Eastern_Sambo_Deep_2014_Total_biomass <- summarise_at(Eastern_Sambo_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2014_Total_biomass$Year <- ('2014')

###output
export(Eastern_Sambo_Deep_2014_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2014_biomass_data.csv")

Eastern_Sambo_Deep_2016 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2016.xls")
Eastern_Sambo_Deep_2016_Total_biomass <- summarise_at(Eastern_Sambo_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2016_Total_biomass$Year <- ('2016')

###output
export(Eastern_Sambo_Deep_2016_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2016_biomass_data.csv")

Eastern_Sambo_Deep_2018 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2018.xls")
Eastern_Sambo_Deep_2018_Total_biomass <- summarise_at(Eastern_Sambo_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2018_Total_biomass$Year <- ('2018')
###output
export(Eastern_Sambo_Deep_2018_Total_biomass,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Eastern_Sambo_Deep_1999_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_1999_biomass_data.csv")
Eastern_Sambo_Deep_2000_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2000_biomass_data.csv")
Eastern_Sambo_Deep_2001_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2001_biomass_data.csv")
Eastern_Sambo_Deep_2002_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2002_biomass_data.csv")
Eastern_Sambo_Deep_2003_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2003_biomass_data.csv")
Eastern_Sambo_Deep_2004_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2004_biomass_data.csv")
Eastern_Sambo_Deep_2005_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2005_biomass_data.csv")
Eastern_Sambo_Deep_2006_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2006_biomass_data.csv")
Eastern_Sambo_Deep_2007_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2007_biomass_data.csv")
Eastern_Sambo_Deep_2008_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2008_biomass_data.csv")
Eastern_Sambo_Deep_2009_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2009_biomass_data.csv")
Eastern_Sambo_Deep_2010_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2010_biomass_data.csv")
Eastern_Sambo_Deep_2011_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2011_biomass_data.csv")
Eastern_Sambo_Deep_2012_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2012_biomass_data.csv")
Eastern_Sambo_Deep_2014_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2014_biomass_data.csv")
Eastern_Sambo_Deep_2016_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2016_biomass_data.csv")
Eastern_Sambo_Deep_2018_merge <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2018_biomass_data.csv")

Eastern_Sambo_Deep_merge_1 <- rbind(Eastern_Sambo_Deep_1999_merge,Eastern_Sambo_Deep_2000_merge)
Eastern_Sambo_Deep_merge_2 <- rbind(Eastern_Sambo_Deep_merge_1,Eastern_Sambo_Deep_2001_merge)
Eastern_Sambo_Deep_merge_3 <- rbind(Eastern_Sambo_Deep_merge_2,Eastern_Sambo_Deep_2002_merge)
Eastern_Sambo_Deep_merge_4 <- rbind(Eastern_Sambo_Deep_merge_3,Eastern_Sambo_Deep_2003_merge)
Eastern_Sambo_Deep_merge_5 <- rbind(Eastern_Sambo_Deep_merge_4,Eastern_Sambo_Deep_2004_merge)
Eastern_Sambo_Deep_merge_6 <- rbind(Eastern_Sambo_Deep_merge_5,Eastern_Sambo_Deep_2005_merge)
Eastern_Sambo_Deep_merge_7 <- rbind(Eastern_Sambo_Deep_merge_6,Eastern_Sambo_Deep_2006_merge)
Eastern_Sambo_Deep_merge_8 <- rbind(Eastern_Sambo_Deep_merge_7,Eastern_Sambo_Deep_2007_merge)
Eastern_Sambo_Deep_merge_9 <- rbind(Eastern_Sambo_Deep_merge_8,Eastern_Sambo_Deep_2008_merge)
Eastern_Sambo_Deep_merge_10 <- rbind(Eastern_Sambo_Deep_merge_9,Eastern_Sambo_Deep_2009_merge)
Eastern_Sambo_Deep_merge_11<- rbind(Eastern_Sambo_Deep_merge_10,Eastern_Sambo_Deep_2010_merge)
Eastern_Sambo_Deep_merge_12 <- rbind(Eastern_Sambo_Deep_merge_11,Eastern_Sambo_Deep_2011_merge)
Eastern_Sambo_Deep_merge_13 <- rbind(Eastern_Sambo_Deep_merge_12,Eastern_Sambo_Deep_2012_merge)
Eastern_Sambo_Deep_merge_14 <- rbind(Eastern_Sambo_Deep_merge_13,Eastern_Sambo_Deep_2014_merge)
Eastern_Sambo_Deep_merge_15 <- rbind(Eastern_Sambo_Deep_merge_14,Eastern_Sambo_Deep_2016_merge)
Eastern_Sambo_Deep_Reef_biomass_data_combined <- rbind(Eastern_Sambo_Deep_merge_15,Eastern_Sambo_Deep_2018_merge)

##output
export(Eastern_Sambo_Deep_Reef_biomass_data_combined,"Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_biomass_data_combined.csv")




###Eastern Sambo Shallow

##repeat for all years 99-16
Eastern_Sambo_Shallow_1999 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_1999.xls")
Eastern_Sambo_Shallow_1999_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_1999_Total_biomass$Year <- ('1999')
###output
export(Eastern_Sambo_Shallow_1999_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_1999_biomass_data.csv")

Eastern_Sambo_Shallow_2000 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2000.xls")
Eastern_Sambo_Shallow_2000_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2000_Total_biomass$Year <- ('2000')
###output
export(Eastern_Sambo_Shallow_2000_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2000_biomass_data.csv")

Eastern_Sambo_Shallow_2001 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2001.xls")
Eastern_Sambo_Shallow_2001_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2001_Total_biomass$Year <- ('2001')
###output
export(Eastern_Sambo_Shallow_2001_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2001_biomass_data.csv")

Eastern_Sambo_Shallow_2002 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2002.xls")
Eastern_Sambo_Shallow_2002_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2002_Total_biomass$Year <- ('2002')
###output
export(Eastern_Sambo_Shallow_2002_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2002_biomass_data.csv")

Eastern_Sambo_Shallow_2003 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2003.xls")
Eastern_Sambo_Shallow_2003_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2003_Total_biomass$Year <- ('2003')
###output
export(Eastern_Sambo_Shallow_2003_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2003_biomass_data.csv")


Eastern_Sambo_Shallow_2004 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2004.xls")
Eastern_Sambo_Shallow_2004_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2004_Total_biomass$Year <- ('2004')

###output
export(Eastern_Sambo_Shallow_2004_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2004_biomass_data.csv")

Eastern_Sambo_Shallow_2005 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2005.xls")
Eastern_Sambo_Shallow_2005_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2005_Total_biomass$Year <- ('2005')
###output
export(Eastern_Sambo_Shallow_2005_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2005_biomass_data.csv")


Eastern_Sambo_Shallow_2006 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2006.xls")
Eastern_Sambo_Shallow_2006_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2006_Total_biomass$Year <- ('2006')

###output
export(Eastern_Sambo_Shallow_2006_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2006_biomass_data.csv")

Eastern_Sambo_Shallow_2007 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2007.xls")
Eastern_Sambo_Shallow_2007_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2007_Total_biomass$Year <- ('2007')
###output
export(Eastern_Sambo_Shallow_2007_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2007_biomass_data.csv")


Eastern_Sambo_Shallow_2008 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2008.xls")
Eastern_Sambo_Shallow_2008_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2008_Total_biomass$Year <- ('2008')

###output
export(Eastern_Sambo_Shallow_2008_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2008_biomass_data.csv")

Eastern_Sambo_Shallow_2009 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2009.xls")
Eastern_Sambo_Shallow_2009_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2009_Total_biomass$Year <- ('2009')
###output
export(Eastern_Sambo_Shallow_2009_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2009_biomass_data.csv")


Eastern_Sambo_Shallow_2010 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2010.xls")
Eastern_Sambo_Shallow_2010_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2010_Total_biomass$Year <- ('2010')

###output
export(Eastern_Sambo_Shallow_2010_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2010_biomass_data.csv")

Eastern_Sambo_Shallow_2011 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2011.xls")
Eastern_Sambo_Shallow_2011_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2011_Total_biomass$Year <- ('2011')
###output
export(Eastern_Sambo_Shallow_2011_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2011_biomass_data.csv")


Eastern_Sambo_Shallow_2012 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2012.xls")
Eastern_Sambo_Shallow_2012_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2012_Total_biomass$Year <- ('2012')

###output
export(Eastern_Sambo_Shallow_2012_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2012_biomass_data.csv")

Eastern_Sambo_Shallow_2014 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2014.xls")
Eastern_Sambo_Shallow_2014_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2014_Total_biomass$Year <- ('2014')

###output
export(Eastern_Sambo_Shallow_2014_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2014_biomass_data.csv")

Eastern_Sambo_Shallow_2016 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2016.xls")
Eastern_Sambo_Shallow_2016_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2016_Total_biomass$Year <- ('2016')

###output
export(Eastern_Sambo_Shallow_2016_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2016_biomass_data.csv")

Eastern_Sambo_Shallow_2018 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2018.xls")
Eastern_Sambo_Shallow_2018_Total_biomass <- summarise_at(Eastern_Sambo_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2018_Total_biomass$Year <- ('2018')
###output
export(Eastern_Sambo_Shallow_2018_Total_biomass,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Eastern_Sambo_Shallow_1999_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_1999_biomass_data.csv")
Eastern_Sambo_Shallow_2000_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2000_biomass_data.csv")
Eastern_Sambo_Shallow_2001_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2001_biomass_data.csv")
Eastern_Sambo_Shallow_2002_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2002_biomass_data.csv")
Eastern_Sambo_Shallow_2003_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2003_biomass_data.csv")
Eastern_Sambo_Shallow_2004_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2004_biomass_data.csv")
Eastern_Sambo_Shallow_2005_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2005_biomass_data.csv")
Eastern_Sambo_Shallow_2006_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2006_biomass_data.csv")
Eastern_Sambo_Shallow_2007_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2007_biomass_data.csv")
Eastern_Sambo_Shallow_2008_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2008_biomass_data.csv")
Eastern_Sambo_Shallow_2009_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2009_biomass_data.csv")
Eastern_Sambo_Shallow_2010_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2010_biomass_data.csv")
Eastern_Sambo_Shallow_2011_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2011_biomass_data.csv")
Eastern_Sambo_Shallow_2012_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2012_biomass_data.csv")
Eastern_Sambo_Shallow_2014_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2014_biomass_data.csv")
Eastern_Sambo_Shallow_2016_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2016_biomass_data.csv")
Eastern_Sambo_Shallow_2018_merge <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2018_biomass_data.csv")

Eastern_Sambo_Shallow_merge_1 <- rbind(Eastern_Sambo_Shallow_1999_merge,Eastern_Sambo_Shallow_2000_merge)
Eastern_Sambo_Shallow_merge_2 <- rbind(Eastern_Sambo_Shallow_merge_1,Eastern_Sambo_Shallow_2001_merge)
Eastern_Sambo_Shallow_merge_3 <- rbind(Eastern_Sambo_Shallow_merge_2,Eastern_Sambo_Shallow_2002_merge)
Eastern_Sambo_Shallow_merge_4 <- rbind(Eastern_Sambo_Shallow_merge_3,Eastern_Sambo_Shallow_2003_merge)
Eastern_Sambo_Shallow_merge_5 <- rbind(Eastern_Sambo_Shallow_merge_4,Eastern_Sambo_Shallow_2004_merge)
Eastern_Sambo_Shallow_merge_6 <- rbind(Eastern_Sambo_Shallow_merge_5,Eastern_Sambo_Shallow_2005_merge)
Eastern_Sambo_Shallow_merge_7 <- rbind(Eastern_Sambo_Shallow_merge_6,Eastern_Sambo_Shallow_2006_merge)
Eastern_Sambo_Shallow_merge_8 <- rbind(Eastern_Sambo_Shallow_merge_7,Eastern_Sambo_Shallow_2007_merge)
Eastern_Sambo_Shallow_merge_9 <- rbind(Eastern_Sambo_Shallow_merge_8,Eastern_Sambo_Shallow_2008_merge)
Eastern_Sambo_Shallow_merge_10 <- rbind(Eastern_Sambo_Shallow_merge_9,Eastern_Sambo_Shallow_2009_merge)
Eastern_Sambo_Shallow_merge_11<- rbind(Eastern_Sambo_Shallow_merge_10,Eastern_Sambo_Shallow_2010_merge)
Eastern_Sambo_Shallow_merge_12 <- rbind(Eastern_Sambo_Shallow_merge_11,Eastern_Sambo_Shallow_2011_merge)
Eastern_Sambo_Shallow_merge_13 <- rbind(Eastern_Sambo_Shallow_merge_12,Eastern_Sambo_Shallow_2012_merge)
Eastern_Sambo_Shallow_merge_14 <- rbind(Eastern_Sambo_Shallow_merge_13,Eastern_Sambo_Shallow_2014_merge)
Eastern_Sambo_Shallow_merge_15 <- rbind(Eastern_Sambo_Shallow_merge_14,Eastern_Sambo_Shallow_2016_merge)
Eastern_Sambo_Shallow_Reef_biomass_data_combined <- rbind(Eastern_Sambo_Shallow_merge_15,Eastern_Sambo_Shallow_2018_merge)

##output
export(Eastern_Sambo_Shallow_Reef_biomass_data_combined,"Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_biomass_data_combined.csv")



## Jaap Reef

##repeat for all years 99-16
Jaap_Reef_1999 <- import("Jaap_Reef/data/Jaap_Reef_1999.xls")
Jaap_Reef_1999_Total_biomass <- summarise_at(Jaap_Reef_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_1999_Total_biomass$Year <- ('1999')
###output
export(Jaap_Reef_1999_Total_biomass,"Jaap_Reef/data/Jaap_Reef_1999_biomass_data.csv")

Jaap_Reef_2000 <- import("Jaap_Reef/data/Jaap_Reef_2000.xls")
Jaap_Reef_2000_Total_biomass <- summarise_at(Jaap_Reef_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2000_Total_biomass$Year <- ('2000')
###output
export(Jaap_Reef_2000_Total_biomass,"Jaap_Reef/data/Jaap_Reef_2000_biomass_data.csv")

Jaap_Reef_2001 <- import("Jaap_Reef/data/Jaap_Reef_2001.xls")
Jaap_Reef_2001_Total_biomass <- summarise_at(Jaap_Reef_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2001_Total_biomass$Year <- ('2001')
###output
export(Jaap_Reef_2001_Total_biomass,"Jaap_Reef/data/Jaap_Reef_2001_biomass_data.csv")

Jaap_Reef_2002 <- import("Jaap_Reef/data/Jaap_Reef_2002.xls")
Jaap_Reef_2002_Total_biomass <- summarise_at(Jaap_Reef_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2002_Total_biomass$Year <- ('2002')
###output
export(Jaap_Reef_2002_Total_biomass,"Jaap_Reef/data/Jaap_Reef_2002_biomass_data.csv")

Jaap_Reef_2003 <- import("Jaap_Reef/data/Jaap_Reef_2003.xls")
Jaap_Reef_2003_Total_biomass <- summarise_at(Jaap_Reef_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2003_Total_biomass$Year <- ('2003')
###output
export(Jaap_Reef_2003_Total_biomass,"Jaap_Reef/data/Jaap_Reef_2003_biomass_data.csv")


Jaap_Reef_2004 <- import("Jaap_Reef/data/Jaap_Reef_2004.xls")
Jaap_Reef_2004_Total_biomass <- summarise_at(Jaap_Reef_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2004_Total_biomass$Year <- ('2004')

###output
export(Jaap_Reef_2004_Total_biomass,"Jaap_Reef/data/Jaap_Reef_2004_biomass_data.csv")

Jaap_Reef_2005 <- import("Jaap_Reef/data/Jaap_Reef_2005.xls")
Jaap_Reef_2005_Total_biomass <- summarise_at(Jaap_Reef_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2005_Total_biomass$Year <- ('2005')
###output
export(Jaap_Reef_2005_Total_biomass,"Jaap_Reef/data/Jaap_Reef_2005_biomass_data.csv")


Jaap_Reef_2006 <- import("Jaap_Reef/data/Jaap_Reef_2006.xls")
Jaap_Reef_2006_Total_biomass <- summarise_at(Jaap_Reef_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2006_Total_biomass$Year <- ('2006')

###output
export(Jaap_Reef_2006_Total_biomass,"Jaap_Reef/data/Jaap_Reef_2006_biomass_data.csv")

Jaap_Reef_2007 <- import("Jaap_Reef/data/Jaap_Reef_2007.xls")
Jaap_Reef_2007_Total_biomass <- summarise_at(Jaap_Reef_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2007_Total_biomass$Year <- ('2007')
###output
export(Jaap_Reef_2007_Total_biomass,"Jaap_Reef/data/Jaap_Reef_2007_biomass_data.csv")


Jaap_Reef_2008 <- import("Jaap_Reef/data/Jaap_Reef_2008.xls")
Jaap_Reef_2008_Total_biomass <- summarise_at(Jaap_Reef_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2008_Total_biomass$Year <- ('2008')

###output
export(Jaap_Reef_2008_Total_biomass,"Jaap_Reef/data/Jaap_Reef_2008_biomass_data.csv")

Jaap_Reef_2009 <- import("Jaap_Reef/data/Jaap_Reef_2009.xls")
Jaap_Reef_2009_Total_biomass <- summarise_at(Jaap_Reef_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2009_Total_biomass$Year <- ('2009')
###output
export(Jaap_Reef_2009_Total_biomass,"Jaap_Reef/data/Jaap_Reef_2009_biomass_data.csv")


Jaap_Reef_2010 <- import("Jaap_Reef/data/Jaap_Reef_2010.xls")
Jaap_Reef_2010_Total_biomass <- summarise_at(Jaap_Reef_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2010_Total_biomass$Year <- ('2010')

###output
export(Jaap_Reef_2010_Total_biomass,"Jaap_Reef/data/Jaap_Reef_2010_biomass_data.csv")

Jaap_Reef_2011 <- import("Jaap_Reef/data/Jaap_Reef_2011.xls")
Jaap_Reef_2011_Total_biomass <- summarise_at(Jaap_Reef_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2011_Total_biomass$Year <- ('2011')
###output
export(Jaap_Reef_2011_Total_biomass,"Jaap_Reef/data/Jaap_Reef_2011_biomass_data.csv")


Jaap_Reef_2012 <- import("Jaap_Reef/data/Jaap_Reef_2012.xls")
Jaap_Reef_2012_Total_biomass <- summarise_at(Jaap_Reef_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2012_Total_biomass$Year <- ('2012')

###output
export(Jaap_Reef_2012_Total_biomass,"Jaap_Reef/data/Jaap_Reef_2012_biomass_data.csv")

Jaap_Reef_2014 <- import("Jaap_Reef/data/Jaap_Reef_2014.xls")
Jaap_Reef_2014_Total_biomass <- summarise_at(Jaap_Reef_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2014_Total_biomass$Year <- ('2014')

###output
export(Jaap_Reef_2014_Total_biomass,"Jaap_Reef/data/Jaap_Reef_2014_biomass_data.csv")

Jaap_Reef_2016 <- import("Jaap_Reef/data/Jaap_Reef_2016.xls")
Jaap_Reef_2016_Total_biomass <- summarise_at(Jaap_Reef_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2016_Total_biomass$Year <- ('2016')

###output
export(Jaap_Reef_2016_Total_biomass,"Jaap_Reef/data/Jaap_Reef_2016_biomass_data.csv")

Jaap_Reef_2018 <- import("Jaap_Reef/data/Jaap_Reef_2018.xls")
Jaap_Reef_2018_Total_biomass <- summarise_at(Jaap_Reef_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2018_Total_biomass$Year <- ('2018')
###output
export(Jaap_Reef_2018_Total_biomass,"Jaap_Reef/data/Jaap_Reef_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Jaap_Reef_1999_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_1999_biomass_data.csv")
Jaap_Reef_2000_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_2000_biomass_data.csv")
Jaap_Reef_2001_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_2001_biomass_data.csv")
Jaap_Reef_2002_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_2002_biomass_data.csv")
Jaap_Reef_2003_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_2003_biomass_data.csv")
Jaap_Reef_2004_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_2004_biomass_data.csv")
Jaap_Reef_2005_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_2005_biomass_data.csv")
Jaap_Reef_2006_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_2006_biomass_data.csv")
Jaap_Reef_2007_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_2007_biomass_data.csv")
Jaap_Reef_2008_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_2008_biomass_data.csv")
Jaap_Reef_2009_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_2009_biomass_data.csv")
Jaap_Reef_2010_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_2010_biomass_data.csv")
Jaap_Reef_2011_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_2011_biomass_data.csv")
Jaap_Reef_2012_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_2012_biomass_data.csv")
Jaap_Reef_2014_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_2014_biomass_data.csv")
Jaap_Reef_2016_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_2016_biomass_data.csv")
Jaap_Reef_2018_merge <- read_csv("Jaap_Reef/data/Jaap_Reef_2018_biomass_data.csv")

Jaap_Reef_merge_1 <- rbind(Jaap_Reef_1999_merge,Jaap_Reef_2000_merge)
Jaap_Reef_merge_2 <- rbind(Jaap_Reef_merge_1,Jaap_Reef_2001_merge)
Jaap_Reef_merge_3 <- rbind(Jaap_Reef_merge_2,Jaap_Reef_2002_merge)
Jaap_Reef_merge_4 <- rbind(Jaap_Reef_merge_3,Jaap_Reef_2003_merge)
Jaap_Reef_merge_5 <- rbind(Jaap_Reef_merge_4,Jaap_Reef_2004_merge)
Jaap_Reef_merge_6 <- rbind(Jaap_Reef_merge_5,Jaap_Reef_2005_merge)
Jaap_Reef_merge_7 <- rbind(Jaap_Reef_merge_6,Jaap_Reef_2006_merge)
Jaap_Reef_merge_8 <- rbind(Jaap_Reef_merge_7,Jaap_Reef_2007_merge)
Jaap_Reef_merge_9 <- rbind(Jaap_Reef_merge_8,Jaap_Reef_2008_merge)
Jaap_Reef_merge_10 <- rbind(Jaap_Reef_merge_9,Jaap_Reef_2009_merge)
Jaap_Reef_merge_11<- rbind(Jaap_Reef_merge_10,Jaap_Reef_2010_merge)
Jaap_Reef_merge_12 <- rbind(Jaap_Reef_merge_11,Jaap_Reef_2011_merge)
Jaap_Reef_merge_13 <- rbind(Jaap_Reef_merge_12,Jaap_Reef_2012_merge)
Jaap_Reef_merge_14 <- rbind(Jaap_Reef_merge_13,Jaap_Reef_2014_merge)
Jaap_Reef_merge_15 <- rbind(Jaap_Reef_merge_14,Jaap_Reef_2016_merge)
Jaap_Reef_biomass_data_combined <- rbind(Jaap_Reef_merge_15,Jaap_Reef_2018_merge)

##output
export(Jaap_Reef_biomass_data_combined,"Jaap_Reef/data/Jaap_Reef_biomass_data_combined.csv")




####Looe Key Deep

##repeat for all years 99-16
Looe_Key_Deep_1999 <- import("Looe_Key_Deep/data/Looe_Key_Deep_1999.xls")
Looe_Key_Deep_1999_Total_biomass <- summarise_at(Looe_Key_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_1999_Total_biomass$Year <- ('1999')
###output
export(Looe_Key_Deep_1999_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_1999_biomass_data.csv")

Looe_Key_Deep_2000 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2000.xls")
Looe_Key_Deep_2000_Total_biomass <- summarise_at(Looe_Key_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2000_Total_biomass$Year <- ('2000')
###output
export(Looe_Key_Deep_2000_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_2000_biomass_data.csv")

Looe_Key_Deep_2001 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2001.xls")
Looe_Key_Deep_2001_Total_biomass <- summarise_at(Looe_Key_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2001_Total_biomass$Year <- ('2001')
###output
export(Looe_Key_Deep_2001_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_2001_biomass_data.csv")

Looe_Key_Deep_2002 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2002.xls")
Looe_Key_Deep_2002_Total_biomass <- summarise_at(Looe_Key_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2002_Total_biomass$Year <- ('2002')
###output
export(Looe_Key_Deep_2002_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_2002_biomass_data.csv")

Looe_Key_Deep_2003 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2003.xls")
Looe_Key_Deep_2003_Total_biomass <- summarise_at(Looe_Key_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2003_Total_biomass$Year <- ('2003')
###output
export(Looe_Key_Deep_2003_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_2003_biomass_data.csv")


Looe_Key_Deep_2004 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2004.xls")
Looe_Key_Deep_2004_Total_biomass <- summarise_at(Looe_Key_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2004_Total_biomass$Year <- ('2004')

###output
export(Looe_Key_Deep_2004_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_2004_biomass_data.csv")

Looe_Key_Deep_2005 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2005.xls")
Looe_Key_Deep_2005_Total_biomass <- summarise_at(Looe_Key_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2005_Total_biomass$Year <- ('2005')
###output
export(Looe_Key_Deep_2005_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_2005_biomass_data.csv")


Looe_Key_Deep_2006 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2006.xls")
Looe_Key_Deep_2006_Total_biomass <- summarise_at(Looe_Key_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2006_Total_biomass$Year <- ('2006')

###output
export(Looe_Key_Deep_2006_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_2006_biomass_data.csv")

Looe_Key_Deep_2007 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2007.xls")
Looe_Key_Deep_2007_Total_biomass <- summarise_at(Looe_Key_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2007_Total_biomass$Year <- ('2007')
###output
export(Looe_Key_Deep_2007_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_2007_biomass_data.csv")


Looe_Key_Deep_2008 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2008.xls")
Looe_Key_Deep_2008_Total_biomass <- summarise_at(Looe_Key_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2008_Total_biomass$Year <- ('2008')

###output
export(Looe_Key_Deep_2008_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_2008_biomass_data.csv")

Looe_Key_Deep_2009 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2009.xls")
Looe_Key_Deep_2009_Total_biomass <- summarise_at(Looe_Key_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2009_Total_biomass$Year <- ('2009')
###output
export(Looe_Key_Deep_2009_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_2009_biomass_data.csv")


Looe_Key_Deep_2010 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2010.xls")
Looe_Key_Deep_2010_Total_biomass <- summarise_at(Looe_Key_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2010_Total_biomass$Year <- ('2010')

###output
export(Looe_Key_Deep_2010_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_2010_biomass_data.csv")

Looe_Key_Deep_2011 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2011.xls")
Looe_Key_Deep_2011_Total_biomass <- summarise_at(Looe_Key_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2011_Total_biomass$Year <- ('2011')
###output
export(Looe_Key_Deep_2011_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_2011_biomass_data.csv")


Looe_Key_Deep_2012 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2012.xls")
Looe_Key_Deep_2012_Total_biomass <- summarise_at(Looe_Key_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2012_Total_biomass$Year <- ('2012')

###output
export(Looe_Key_Deep_2012_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_2012_biomass_data.csv")

Looe_Key_Deep_2014 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2014.xls")
Looe_Key_Deep_2014_Total_biomass <- summarise_at(Looe_Key_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2014_Total_biomass$Year <- ('2014')

###output
export(Looe_Key_Deep_2014_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_2014_biomass_data.csv")

Looe_Key_Deep_2016 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2016.xls")
Looe_Key_Deep_2016_Total_biomass <- summarise_at(Looe_Key_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2016_Total_biomass$Year <- ('2016')

###output
export(Looe_Key_Deep_2016_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_2016_biomass_data.csv")

Looe_Key_Deep_2018 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2018.xls")
Looe_Key_Deep_2018_Total_biomass <- summarise_at(Looe_Key_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2018_Total_biomass$Year <- ('2018')
###output
export(Looe_Key_Deep_2018_Total_biomass,"Looe_Key_Deep/data/Looe_Key_Deep_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Looe_Key_Deep_1999_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_1999_biomass_data.csv")
Looe_Key_Deep_2000_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_2000_biomass_data.csv")
Looe_Key_Deep_2001_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_2001_biomass_data.csv")
Looe_Key_Deep_2002_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_2002_biomass_data.csv")
Looe_Key_Deep_2003_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_2003_biomass_data.csv")
Looe_Key_Deep_2004_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_2004_biomass_data.csv")
Looe_Key_Deep_2005_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_2005_biomass_data.csv")
Looe_Key_Deep_2006_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_2006_biomass_data.csv")
Looe_Key_Deep_2007_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_2007_biomass_data.csv")
Looe_Key_Deep_2008_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_2008_biomass_data.csv")
Looe_Key_Deep_2009_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_2009_biomass_data.csv")
Looe_Key_Deep_2010_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_2010_biomass_data.csv")
Looe_Key_Deep_2011_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_2011_biomass_data.csv")
Looe_Key_Deep_2012_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_2012_biomass_data.csv")
Looe_Key_Deep_2014_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_2014_biomass_data.csv")
Looe_Key_Deep_2016_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_2016_biomass_data.csv")
Looe_Key_Deep_2018_merge <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_2018_biomass_data.csv")

Looe_Key_Deep_merge_1 <- rbind(Looe_Key_Deep_1999_merge,Looe_Key_Deep_2000_merge)
Looe_Key_Deep_merge_2 <- rbind(Looe_Key_Deep_merge_1,Looe_Key_Deep_2001_merge)
Looe_Key_Deep_merge_3 <- rbind(Looe_Key_Deep_merge_2,Looe_Key_Deep_2002_merge)
Looe_Key_Deep_merge_4 <- rbind(Looe_Key_Deep_merge_3,Looe_Key_Deep_2003_merge)
Looe_Key_Deep_merge_5 <- rbind(Looe_Key_Deep_merge_4,Looe_Key_Deep_2004_merge)
Looe_Key_Deep_merge_6 <- rbind(Looe_Key_Deep_merge_5,Looe_Key_Deep_2005_merge)
Looe_Key_Deep_merge_7 <- rbind(Looe_Key_Deep_merge_6,Looe_Key_Deep_2006_merge)
Looe_Key_Deep_merge_8 <- rbind(Looe_Key_Deep_merge_7,Looe_Key_Deep_2007_merge)
Looe_Key_Deep_merge_9 <- rbind(Looe_Key_Deep_merge_8,Looe_Key_Deep_2008_merge)
Looe_Key_Deep_merge_10 <- rbind(Looe_Key_Deep_merge_9,Looe_Key_Deep_2009_merge)
Looe_Key_Deep_merge_11<- rbind(Looe_Key_Deep_merge_10,Looe_Key_Deep_2010_merge)
Looe_Key_Deep_merge_12 <- rbind(Looe_Key_Deep_merge_11,Looe_Key_Deep_2011_merge)
Looe_Key_Deep_merge_13 <- rbind(Looe_Key_Deep_merge_12,Looe_Key_Deep_2012_merge)
Looe_Key_Deep_merge_14 <- rbind(Looe_Key_Deep_merge_13,Looe_Key_Deep_2014_merge)
Looe_Key_Deep_merge_15 <- rbind(Looe_Key_Deep_merge_14,Looe_Key_Deep_2016_merge)
Looe_Key_Deep_Reef_biomass_data_combined <- rbind(Looe_Key_Deep_merge_15,Looe_Key_Deep_2018_merge)

##output
export(Looe_Key_Deep_Reef_biomass_data_combined,"Looe_Key_Deep/data/Looe_Key_Deep_biomass_data_combined.csv")




###Looe Key Shallow

##repeat for all years 99-16
Looe_Key_Shallow_1999 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_1999.xls")
Looe_Key_Shallow_1999_Total_biomass <- summarise_at(Looe_Key_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_1999_Total_biomass$Year <- ('1999')
###output
export(Looe_Key_Shallow_1999_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_1999_biomass_data.csv")

Looe_Key_Shallow_2000 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2000.xls")
Looe_Key_Shallow_2000_Total_biomass <- summarise_at(Looe_Key_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2000_Total_biomass$Year <- ('2000')
###output
export(Looe_Key_Shallow_2000_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_2000_biomass_data.csv")

Looe_Key_Shallow_2001 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2001.xls")
Looe_Key_Shallow_2001_Total_biomass <- summarise_at(Looe_Key_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2001_Total_biomass$Year <- ('2001')
###output
export(Looe_Key_Shallow_2001_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_2001_biomass_data.csv")

Looe_Key_Shallow_2002 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2002.xls")
Looe_Key_Shallow_2002_Total_biomass <- summarise_at(Looe_Key_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2002_Total_biomass$Year <- ('2002')
###output
export(Looe_Key_Shallow_2002_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_2002_biomass_data.csv")

Looe_Key_Shallow_2003 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2003.xls")
Looe_Key_Shallow_2003_Total_biomass <- summarise_at(Looe_Key_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2003_Total_biomass$Year <- ('2003')
###output
export(Looe_Key_Shallow_2003_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_2003_biomass_data.csv")


Looe_Key_Shallow_2004 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2004.xls")
Looe_Key_Shallow_2004_Total_biomass <- summarise_at(Looe_Key_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2004_Total_biomass$Year <- ('2004')

###output
export(Looe_Key_Shallow_2004_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_2004_biomass_data.csv")

Looe_Key_Shallow_2005 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2005.xls")
Looe_Key_Shallow_2005_Total_biomass <- summarise_at(Looe_Key_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2005_Total_biomass$Year <- ('2005')
###output
export(Looe_Key_Shallow_2005_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_2005_biomass_data.csv")


Looe_Key_Shallow_2006 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2006.xls")
Looe_Key_Shallow_2006_Total_biomass <- summarise_at(Looe_Key_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2006_Total_biomass$Year <- ('2006')

###output
export(Looe_Key_Shallow_2006_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_2006_biomass_data.csv")

Looe_Key_Shallow_2007 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2007.xls")
Looe_Key_Shallow_2007_Total_biomass <- summarise_at(Looe_Key_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2007_Total_biomass$Year <- ('2007')
###output
export(Looe_Key_Shallow_2007_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_2007_biomass_data.csv")


Looe_Key_Shallow_2008 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2008.xls")
Looe_Key_Shallow_2008_Total_biomass <- summarise_at(Looe_Key_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2008_Total_biomass$Year <- ('2008')

###output
export(Looe_Key_Shallow_2008_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_2008_biomass_data.csv")

Looe_Key_Shallow_2009 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2009.xls")
Looe_Key_Shallow_2009_Total_biomass <- summarise_at(Looe_Key_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2009_Total_biomass$Year <- ('2009')
###output
export(Looe_Key_Shallow_2009_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_2009_biomass_data.csv")


Looe_Key_Shallow_2010 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2010.xls")
Looe_Key_Shallow_2010_Total_biomass <- summarise_at(Looe_Key_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2010_Total_biomass$Year <- ('2010')

###output
export(Looe_Key_Shallow_2010_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_2010_biomass_data.csv")

Looe_Key_Shallow_2011 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2011.xls")
Looe_Key_Shallow_2011_Total_biomass <- summarise_at(Looe_Key_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2011_Total_biomass$Year <- ('2011')
###output
export(Looe_Key_Shallow_2011_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_2011_biomass_data.csv")


Looe_Key_Shallow_2012 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2012.xls")
Looe_Key_Shallow_2012_Total_biomass <- summarise_at(Looe_Key_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2012_Total_biomass$Year <- ('2012')

###output
export(Looe_Key_Shallow_2012_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_2012_biomass_data.csv")

Looe_Key_Shallow_2014 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2014.xls")
Looe_Key_Shallow_2014_Total_biomass <- summarise_at(Looe_Key_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2014_Total_biomass$Year <- ('2014')

###output
export(Looe_Key_Shallow_2014_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_2014_biomass_data.csv")

Looe_Key_Shallow_2016 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2016.xls")
Looe_Key_Shallow_2016_Total_biomass <- summarise_at(Looe_Key_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2016_Total_biomass$Year <- ('2016')

###output
export(Looe_Key_Shallow_2016_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_2016_biomass_data.csv")

Looe_Key_Shallow_2018 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2018.xls")
Looe_Key_Shallow_2018_Total_biomass <- summarise_at(Looe_Key_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2018_Total_biomass$Year <- ('2018')
###output
export(Looe_Key_Shallow_2018_Total_biomass,"Looe_Key_Shallow/data/Looe_Key_Shallow_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Looe_Key_Shallow_1999_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_1999_biomass_data.csv")
Looe_Key_Shallow_2000_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_2000_biomass_data.csv")
Looe_Key_Shallow_2001_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_2001_biomass_data.csv")
Looe_Key_Shallow_2002_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_2002_biomass_data.csv")
Looe_Key_Shallow_2003_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_2003_biomass_data.csv")
Looe_Key_Shallow_2004_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_2004_biomass_data.csv")
Looe_Key_Shallow_2005_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_2005_biomass_data.csv")
Looe_Key_Shallow_2006_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_2006_biomass_data.csv")
Looe_Key_Shallow_2007_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_2007_biomass_data.csv")
Looe_Key_Shallow_2008_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_2008_biomass_data.csv")
Looe_Key_Shallow_2009_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_2009_biomass_data.csv")
Looe_Key_Shallow_2010_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_2010_biomass_data.csv")
Looe_Key_Shallow_2011_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_2011_biomass_data.csv")
Looe_Key_Shallow_2012_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_2012_biomass_data.csv")
Looe_Key_Shallow_2014_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_2014_biomass_data.csv")
Looe_Key_Shallow_2016_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_2016_biomass_data.csv")
Looe_Key_Shallow_2018_merge <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_2018_biomass_data.csv")

Looe_Key_Shallow_merge_1 <- rbind(Looe_Key_Shallow_1999_merge,Looe_Key_Shallow_2000_merge)
Looe_Key_Shallow_merge_2 <- rbind(Looe_Key_Shallow_merge_1,Looe_Key_Shallow_2001_merge)
Looe_Key_Shallow_merge_3 <- rbind(Looe_Key_Shallow_merge_2,Looe_Key_Shallow_2002_merge)
Looe_Key_Shallow_merge_4 <- rbind(Looe_Key_Shallow_merge_3,Looe_Key_Shallow_2003_merge)
Looe_Key_Shallow_merge_5 <- rbind(Looe_Key_Shallow_merge_4,Looe_Key_Shallow_2004_merge)
Looe_Key_Shallow_merge_6 <- rbind(Looe_Key_Shallow_merge_5,Looe_Key_Shallow_2005_merge)
Looe_Key_Shallow_merge_7 <- rbind(Looe_Key_Shallow_merge_6,Looe_Key_Shallow_2006_merge)
Looe_Key_Shallow_merge_8 <- rbind(Looe_Key_Shallow_merge_7,Looe_Key_Shallow_2007_merge)
Looe_Key_Shallow_merge_9 <- rbind(Looe_Key_Shallow_merge_8,Looe_Key_Shallow_2008_merge)
Looe_Key_Shallow_merge_10 <- rbind(Looe_Key_Shallow_merge_9,Looe_Key_Shallow_2009_merge)
Looe_Key_Shallow_merge_11<- rbind(Looe_Key_Shallow_merge_10,Looe_Key_Shallow_2010_merge)
Looe_Key_Shallow_merge_12 <- rbind(Looe_Key_Shallow_merge_11,Looe_Key_Shallow_2011_merge)
Looe_Key_Shallow_merge_13 <- rbind(Looe_Key_Shallow_merge_12,Looe_Key_Shallow_2012_merge)
Looe_Key_Shallow_merge_14 <- rbind(Looe_Key_Shallow_merge_13,Looe_Key_Shallow_2014_merge)
Looe_Key_Shallow_merge_15 <- rbind(Looe_Key_Shallow_merge_14,Looe_Key_Shallow_2016_merge)
Looe_Key_Shallow_Reef_biomass_data_combined <- rbind(Looe_Key_Shallow_merge_15,Looe_Key_Shallow_2018_merge)

##output
export(Looe_Key_Shallow_Reef_biomass_data_combined,"Looe_Key_Shallow/data/Looe_Key_Shallow_biomass_data_combined.csv")



###Red Dun Reef

##repeat for all years 99-16
Red_Dun_Reef_1999 <- import("Red_Dun_Reef/data/Red_Dun_Reef_1999.xls")
Red_Dun_Reef_1999_Total_biomass <- summarise_at(Red_Dun_Reef_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_1999_Total_biomass$Year <- ('1999')
###output
export(Red_Dun_Reef_1999_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_1999_biomass_data.csv")

Red_Dun_Reef_2000 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2000.xls")
Red_Dun_Reef_2000_Total_biomass <- summarise_at(Red_Dun_Reef_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2000_Total_biomass$Year <- ('2000')
###output
export(Red_Dun_Reef_2000_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_2000_biomass_data.csv")

Red_Dun_Reef_2001 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2001.xls")
Red_Dun_Reef_2001_Total_biomass <- summarise_at(Red_Dun_Reef_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2001_Total_biomass$Year <- ('2001')
###output
export(Red_Dun_Reef_2001_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_2001_biomass_data.csv")

Red_Dun_Reef_2002 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2002.xls")
Red_Dun_Reef_2002_Total_biomass <- summarise_at(Red_Dun_Reef_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2002_Total_biomass$Year <- ('2002')
###output
export(Red_Dun_Reef_2002_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_2002_biomass_data.csv")

Red_Dun_Reef_2003 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2003.xls")
Red_Dun_Reef_2003_Total_biomass <- summarise_at(Red_Dun_Reef_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2003_Total_biomass$Year <- ('2003')
###output
export(Red_Dun_Reef_2003_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_2003_biomass_data.csv")


Red_Dun_Reef_2004 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2004.xls")
Red_Dun_Reef_2004_Total_biomass <- summarise_at(Red_Dun_Reef_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2004_Total_biomass$Year <- ('2004')

###output
export(Red_Dun_Reef_2004_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_2004_biomass_data.csv")

Red_Dun_Reef_2005 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2005.xls")
Red_Dun_Reef_2005_Total_biomass <- summarise_at(Red_Dun_Reef_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2005_Total_biomass$Year <- ('2005')
###output
export(Red_Dun_Reef_2005_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_2005_biomass_data.csv")


Red_Dun_Reef_2006 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2006.xls")
Red_Dun_Reef_2006_Total_biomass <- summarise_at(Red_Dun_Reef_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2006_Total_biomass$Year <- ('2006')

###output
export(Red_Dun_Reef_2006_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_2006_biomass_data.csv")

Red_Dun_Reef_2007 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2007.xls")
Red_Dun_Reef_2007_Total_biomass <- summarise_at(Red_Dun_Reef_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2007_Total_biomass$Year <- ('2007')
###output
export(Red_Dun_Reef_2007_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_2007_biomass_data.csv")


Red_Dun_Reef_2008 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2008.xls")
Red_Dun_Reef_2008_Total_biomass <- summarise_at(Red_Dun_Reef_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2008_Total_biomass$Year <- ('2008')

###output
export(Red_Dun_Reef_2008_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_2008_biomass_data.csv")

Red_Dun_Reef_2009 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2009.xls")
Red_Dun_Reef_2009_Total_biomass <- summarise_at(Red_Dun_Reef_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2009_Total_biomass$Year <- ('2009')
###output
export(Red_Dun_Reef_2009_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_2009_biomass_data.csv")


Red_Dun_Reef_2010 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2010.xls")
Red_Dun_Reef_2010_Total_biomass <- summarise_at(Red_Dun_Reef_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2010_Total_biomass$Year <- ('2010')

###output
export(Red_Dun_Reef_2010_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_2010_biomass_data.csv")

Red_Dun_Reef_2011 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2011.xls")
Red_Dun_Reef_2011_Total_biomass <- summarise_at(Red_Dun_Reef_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2011_Total_biomass$Year <- ('2011')
###output
export(Red_Dun_Reef_2011_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_2011_biomass_data.csv")


Red_Dun_Reef_2012 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2012.xls")
Red_Dun_Reef_2012_Total_biomass <- summarise_at(Red_Dun_Reef_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2012_Total_biomass$Year <- ('2012')

###output
export(Red_Dun_Reef_2012_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_2012_biomass_data.csv")

Red_Dun_Reef_2014 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2014.xls")
Red_Dun_Reef_2014_Total_biomass <- summarise_at(Red_Dun_Reef_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2014_Total_biomass$Year <- ('2014')

###output
export(Red_Dun_Reef_2014_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_2014_biomass_data.csv")

Red_Dun_Reef_2016 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2016.xls")
Red_Dun_Reef_2016_Total_biomass <- summarise_at(Red_Dun_Reef_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2016_Total_biomass$Year <- ('2016')

###output
export(Red_Dun_Reef_2016_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_2016_biomass_data.csv")

Red_Dun_Reef_2018 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2018.xls")
Red_Dun_Reef_2018_Total_biomass <- summarise_at(Red_Dun_Reef_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2018_Total_biomass$Year <- ('2018')
###output
export(Red_Dun_Reef_2018_Total_biomass,"Red_Dun_Reef/data/Red_Dun_Reef_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Red_Dun_Reef_1999_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_1999_biomass_data.csv")
Red_Dun_Reef_2000_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_2000_biomass_data.csv")
Red_Dun_Reef_2001_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_2001_biomass_data.csv")
Red_Dun_Reef_2002_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_2002_biomass_data.csv")
Red_Dun_Reef_2003_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_2003_biomass_data.csv")
Red_Dun_Reef_2004_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_2004_biomass_data.csv")
Red_Dun_Reef_2005_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_2005_biomass_data.csv")
Red_Dun_Reef_2006_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_2006_biomass_data.csv")
Red_Dun_Reef_2007_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_2007_biomass_data.csv")
Red_Dun_Reef_2008_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_2008_biomass_data.csv")
Red_Dun_Reef_2009_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_2009_biomass_data.csv")
Red_Dun_Reef_2010_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_2010_biomass_data.csv")
Red_Dun_Reef_2011_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_2011_biomass_data.csv")
Red_Dun_Reef_2012_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_2012_biomass_data.csv")
Red_Dun_Reef_2014_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_2014_biomass_data.csv")
Red_Dun_Reef_2016_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_2016_biomass_data.csv")
Red_Dun_Reef_2018_merge <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_2018_biomass_data.csv")

Red_Dun_Reef_merge_1 <- rbind(Red_Dun_Reef_1999_merge,Red_Dun_Reef_2000_merge)
Red_Dun_Reef_merge_2 <- rbind(Red_Dun_Reef_merge_1,Red_Dun_Reef_2001_merge)
Red_Dun_Reef_merge_3 <- rbind(Red_Dun_Reef_merge_2,Red_Dun_Reef_2002_merge)
Red_Dun_Reef_merge_4 <- rbind(Red_Dun_Reef_merge_3,Red_Dun_Reef_2003_merge)
Red_Dun_Reef_merge_5 <- rbind(Red_Dun_Reef_merge_4,Red_Dun_Reef_2004_merge)
Red_Dun_Reef_merge_6 <- rbind(Red_Dun_Reef_merge_5,Red_Dun_Reef_2005_merge)
Red_Dun_Reef_merge_7 <- rbind(Red_Dun_Reef_merge_6,Red_Dun_Reef_2006_merge)
Red_Dun_Reef_merge_8 <- rbind(Red_Dun_Reef_merge_7,Red_Dun_Reef_2007_merge)
Red_Dun_Reef_merge_9 <- rbind(Red_Dun_Reef_merge_8,Red_Dun_Reef_2008_merge)
Red_Dun_Reef_merge_10 <- rbind(Red_Dun_Reef_merge_9,Red_Dun_Reef_2009_merge)
Red_Dun_Reef_merge_11<- rbind(Red_Dun_Reef_merge_10,Red_Dun_Reef_2010_merge)
Red_Dun_Reef_merge_12 <- rbind(Red_Dun_Reef_merge_11,Red_Dun_Reef_2011_merge)
Red_Dun_Reef_merge_13 <- rbind(Red_Dun_Reef_merge_12,Red_Dun_Reef_2012_merge)
Red_Dun_Reef_merge_14 <- rbind(Red_Dun_Reef_merge_13,Red_Dun_Reef_2014_merge)
Red_Dun_Reef_merge_15 <- rbind(Red_Dun_Reef_merge_14,Red_Dun_Reef_2016_merge)
Red_Dun_Reef_biomass_data_combined <- rbind(Red_Dun_Reef_merge_15,Red_Dun_Reef_2018_merge)

##output
export(Red_Dun_Reef_biomass_data_combined,"Red_Dun_Reef/data/Red_Dun_Reef_biomass_data_combined.csv")


### Rock Key Deep

##repeat for all years 99-16
Rock_Key_Deep_1999 <- import("Rock_Key_Deep/data/Rock_Key_Deep_1999.xls")
Rock_Key_Deep_1999_Total_biomass <- summarise_at(Rock_Key_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_1999_Total_biomass$Year <- ('1999')
###output
export(Rock_Key_Deep_1999_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_1999_biomass_data.csv")

Rock_Key_Deep_2000 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2000.xls")
Rock_Key_Deep_2000_Total_biomass <- summarise_at(Rock_Key_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2000_Total_biomass$Year <- ('2000')
###output
export(Rock_Key_Deep_2000_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_2000_biomass_data.csv")

Rock_Key_Deep_2001 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2001.xls")
Rock_Key_Deep_2001_Total_biomass <- summarise_at(Rock_Key_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2001_Total_biomass$Year <- ('2001')
###output
export(Rock_Key_Deep_2001_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_2001_biomass_data.csv")

Rock_Key_Deep_2002 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2002.xls")
Rock_Key_Deep_2002_Total_biomass <- summarise_at(Rock_Key_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2002_Total_biomass$Year <- ('2002')
###output
export(Rock_Key_Deep_2002_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_2002_biomass_data.csv")

Rock_Key_Deep_2003 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2003.xls")
Rock_Key_Deep_2003_Total_biomass <- summarise_at(Rock_Key_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2003_Total_biomass$Year <- ('2003')
###output
export(Rock_Key_Deep_2003_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_2003_biomass_data.csv")


Rock_Key_Deep_2004 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2004.xls")
Rock_Key_Deep_2004_Total_biomass <- summarise_at(Rock_Key_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2004_Total_biomass$Year <- ('2004')

###output
export(Rock_Key_Deep_2004_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_2004_biomass_data.csv")

Rock_Key_Deep_2005 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2005.xls")
Rock_Key_Deep_2005_Total_biomass <- summarise_at(Rock_Key_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2005_Total_biomass$Year <- ('2005')
###output
export(Rock_Key_Deep_2005_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_2005_biomass_data.csv")


Rock_Key_Deep_2006 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2006.xls")
Rock_Key_Deep_2006_Total_biomass <- summarise_at(Rock_Key_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2006_Total_biomass$Year <- ('2006')

###output
export(Rock_Key_Deep_2006_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_2006_biomass_data.csv")

Rock_Key_Deep_2007 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2007.xls")
Rock_Key_Deep_2007_Total_biomass <- summarise_at(Rock_Key_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2007_Total_biomass$Year <- ('2007')
###output
export(Rock_Key_Deep_2007_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_2007_biomass_data.csv")


Rock_Key_Deep_2008 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2008.xls")
Rock_Key_Deep_2008_Total_biomass <- summarise_at(Rock_Key_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2008_Total_biomass$Year <- ('2008')

###output
export(Rock_Key_Deep_2008_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_2008_biomass_data.csv")

Rock_Key_Deep_2009 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2009.xls")
Rock_Key_Deep_2009_Total_biomass <- summarise_at(Rock_Key_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2009_Total_biomass$Year <- ('2009')
###output
export(Rock_Key_Deep_2009_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_2009_biomass_data.csv")


Rock_Key_Deep_2010 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2010.xls")
Rock_Key_Deep_2010_Total_biomass <- summarise_at(Rock_Key_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2010_Total_biomass$Year <- ('2010')

###output
export(Rock_Key_Deep_2010_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_2010_biomass_data.csv")

Rock_Key_Deep_2011 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2011.xls")
Rock_Key_Deep_2011_Total_biomass <- summarise_at(Rock_Key_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2011_Total_biomass$Year <- ('2011')
###output
export(Rock_Key_Deep_2011_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_2011_biomass_data.csv")


Rock_Key_Deep_2012 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2012.xls")
Rock_Key_Deep_2012_Total_biomass <- summarise_at(Rock_Key_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2012_Total_biomass$Year <- ('2012')

###output
export(Rock_Key_Deep_2012_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_2012_biomass_data.csv")

Rock_Key_Deep_2014 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2014.xls")
Rock_Key_Deep_2014_Total_biomass <- summarise_at(Rock_Key_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2014_Total_biomass$Year <- ('2014')

###output
export(Rock_Key_Deep_2014_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_2014_biomass_data.csv")

Rock_Key_Deep_2016 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2016.xls")
Rock_Key_Deep_2016_Total_biomass <- summarise_at(Rock_Key_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2016_Total_biomass$Year <- ('2016')

###output
export(Rock_Key_Deep_2016_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_2016_biomass_data.csv")

Rock_Key_Deep_2018 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2018.xls")
Rock_Key_Deep_2018_Total_biomass <- summarise_at(Rock_Key_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2018_Total_biomass$Year <- ('2018')
###output
export(Rock_Key_Deep_2018_Total_biomass,"Rock_Key_Deep/data/Rock_Key_Deep_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Rock_Key_Deep_1999_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_1999_biomass_data.csv")
Rock_Key_Deep_2000_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_2000_biomass_data.csv")
Rock_Key_Deep_2001_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_2001_biomass_data.csv")
Rock_Key_Deep_2002_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_2002_biomass_data.csv")
Rock_Key_Deep_2003_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_2003_biomass_data.csv")
Rock_Key_Deep_2004_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_2004_biomass_data.csv")
Rock_Key_Deep_2005_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_2005_biomass_data.csv")
Rock_Key_Deep_2006_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_2006_biomass_data.csv")
Rock_Key_Deep_2007_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_2007_biomass_data.csv")
Rock_Key_Deep_2008_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_2008_biomass_data.csv")
Rock_Key_Deep_2009_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_2009_biomass_data.csv")
Rock_Key_Deep_2010_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_2010_biomass_data.csv")
Rock_Key_Deep_2011_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_2011_biomass_data.csv")
Rock_Key_Deep_2012_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_2012_biomass_data.csv")
Rock_Key_Deep_2014_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_2014_biomass_data.csv")
Rock_Key_Deep_2016_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_2016_biomass_data.csv")
Rock_Key_Deep_2018_merge <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_2018_biomass_data.csv")

Rock_Key_Deep_merge_1 <- rbind(Rock_Key_Deep_1999_merge,Rock_Key_Deep_2000_merge)
Rock_Key_Deep_merge_2 <- rbind(Rock_Key_Deep_merge_1,Rock_Key_Deep_2001_merge)
Rock_Key_Deep_merge_3 <- rbind(Rock_Key_Deep_merge_2,Rock_Key_Deep_2002_merge)
Rock_Key_Deep_merge_4 <- rbind(Rock_Key_Deep_merge_3,Rock_Key_Deep_2003_merge)
Rock_Key_Deep_merge_5 <- rbind(Rock_Key_Deep_merge_4,Rock_Key_Deep_2004_merge)
Rock_Key_Deep_merge_6 <- rbind(Rock_Key_Deep_merge_5,Rock_Key_Deep_2005_merge)
Rock_Key_Deep_merge_7 <- rbind(Rock_Key_Deep_merge_6,Rock_Key_Deep_2006_merge)
Rock_Key_Deep_merge_8 <- rbind(Rock_Key_Deep_merge_7,Rock_Key_Deep_2007_merge)
Rock_Key_Deep_merge_9 <- rbind(Rock_Key_Deep_merge_8,Rock_Key_Deep_2008_merge)
Rock_Key_Deep_merge_10 <- rbind(Rock_Key_Deep_merge_9,Rock_Key_Deep_2009_merge)
Rock_Key_Deep_merge_11<- rbind(Rock_Key_Deep_merge_10,Rock_Key_Deep_2010_merge)
Rock_Key_Deep_merge_12 <- rbind(Rock_Key_Deep_merge_11,Rock_Key_Deep_2011_merge)
Rock_Key_Deep_merge_13 <- rbind(Rock_Key_Deep_merge_12,Rock_Key_Deep_2012_merge)
Rock_Key_Deep_merge_14 <- rbind(Rock_Key_Deep_merge_13,Rock_Key_Deep_2014_merge)
Rock_Key_Deep_merge_15 <- rbind(Rock_Key_Deep_merge_14,Rock_Key_Deep_2016_merge)
Rock_Key_Deep_Reef_biomass_data_combined <- rbind(Rock_Key_Deep_merge_15,Rock_Key_Deep_2018_merge)

##output
export(Rock_Key_Deep_Reef_biomass_data_combined,"Rock_Key_Deep/data/Rock_Key_Deep_biomass_data_combined.csv")



###Rock Key Shallow

##repeat for all years 99-16
Rock_Key_Shallow_1999 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_1999.xls")
Rock_Key_Shallow_1999_Total_biomass <- summarise_at(Rock_Key_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_1999_Total_biomass$Year <- ('1999')
###output
export(Rock_Key_Shallow_1999_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_1999_biomass_data.csv")

Rock_Key_Shallow_2000 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2000.xls")
Rock_Key_Shallow_2000_Total_biomass <- summarise_at(Rock_Key_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2000_Total_biomass$Year <- ('2000')
###output
export(Rock_Key_Shallow_2000_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_2000_biomass_data.csv")

Rock_Key_Shallow_2001 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2001.xls")
Rock_Key_Shallow_2001_Total_biomass <- summarise_at(Rock_Key_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2001_Total_biomass$Year <- ('2001')
###output
export(Rock_Key_Shallow_2001_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_2001_biomass_data.csv")

Rock_Key_Shallow_2002 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2002.xls")
Rock_Key_Shallow_2002_Total_biomass <- summarise_at(Rock_Key_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2002_Total_biomass$Year <- ('2002')
###output
export(Rock_Key_Shallow_2002_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_2002_biomass_data.csv")

Rock_Key_Shallow_2003 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2003.xls")
Rock_Key_Shallow_2003_Total_biomass <- summarise_at(Rock_Key_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2003_Total_biomass$Year <- ('2003')
###output
export(Rock_Key_Shallow_2003_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_2003_biomass_data.csv")


Rock_Key_Shallow_2004 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2004.xls")
Rock_Key_Shallow_2004_Total_biomass <- summarise_at(Rock_Key_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2004_Total_biomass$Year <- ('2004')

###output
export(Rock_Key_Shallow_2004_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_2004_biomass_data.csv")

Rock_Key_Shallow_2005 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2005.xls")
Rock_Key_Shallow_2005_Total_biomass <- summarise_at(Rock_Key_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2005_Total_biomass$Year <- ('2005')
###output
export(Rock_Key_Shallow_2005_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_2005_biomass_data.csv")


Rock_Key_Shallow_2006 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2006.xls")
Rock_Key_Shallow_2006_Total_biomass <- summarise_at(Rock_Key_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2006_Total_biomass$Year <- ('2006')

###output
export(Rock_Key_Shallow_2006_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_2006_biomass_data.csv")

Rock_Key_Shallow_2007 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2007.xls")
Rock_Key_Shallow_2007_Total_biomass <- summarise_at(Rock_Key_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2007_Total_biomass$Year <- ('2007')
###output
export(Rock_Key_Shallow_2007_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_2007_biomass_data.csv")


Rock_Key_Shallow_2008 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2008.xls")
Rock_Key_Shallow_2008_Total_biomass <- summarise_at(Rock_Key_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2008_Total_biomass$Year <- ('2008')

###output
export(Rock_Key_Shallow_2008_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_2008_biomass_data.csv")

Rock_Key_Shallow_2009 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2009.xls")
Rock_Key_Shallow_2009_Total_biomass <- summarise_at(Rock_Key_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2009_Total_biomass$Year <- ('2009')
###output
export(Rock_Key_Shallow_2009_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_2009_biomass_data.csv")


Rock_Key_Shallow_2010 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2010.xls")
Rock_Key_Shallow_2010_Total_biomass <- summarise_at(Rock_Key_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2010_Total_biomass$Year <- ('2010')

###output
export(Rock_Key_Shallow_2010_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_2010_biomass_data.csv")

Rock_Key_Shallow_2011 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2011.xls")
Rock_Key_Shallow_2011_Total_biomass <- summarise_at(Rock_Key_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2011_Total_biomass$Year <- ('2011')
###output
export(Rock_Key_Shallow_2011_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_2011_biomass_data.csv")


Rock_Key_Shallow_2012 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2012.xls")
Rock_Key_Shallow_2012_Total_biomass <- summarise_at(Rock_Key_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2012_Total_biomass$Year <- ('2012')

###output
export(Rock_Key_Shallow_2012_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_2012_biomass_data.csv")

Rock_Key_Shallow_2014 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2014.xls")
Rock_Key_Shallow_2014_Total_biomass <- summarise_at(Rock_Key_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2014_Total_biomass$Year <- ('2014')

###output
export(Rock_Key_Shallow_2014_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_2014_biomass_data.csv")

Rock_Key_Shallow_2016 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2016.xls")
Rock_Key_Shallow_2016_Total_biomass <- summarise_at(Rock_Key_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2016_Total_biomass$Year <- ('2016')

###output
export(Rock_Key_Shallow_2016_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_2016_biomass_data.csv")

Rock_Key_Shallow_2018 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2018.xls")
Rock_Key_Shallow_2018_Total_biomass <- summarise_at(Rock_Key_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2018_Total_biomass$Year <- ('2018')
###output
export(Rock_Key_Shallow_2018_Total_biomass,"Rock_Key_Shallow/data/Rock_Key_Shallow_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Rock_Key_Shallow_1999_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_1999_biomass_data.csv")
Rock_Key_Shallow_2000_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_2000_biomass_data.csv")
Rock_Key_Shallow_2001_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_2001_biomass_data.csv")
Rock_Key_Shallow_2002_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_2002_biomass_data.csv")
Rock_Key_Shallow_2003_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_2003_biomass_data.csv")
Rock_Key_Shallow_2004_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_2004_biomass_data.csv")
Rock_Key_Shallow_2005_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_2005_biomass_data.csv")
Rock_Key_Shallow_2006_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_2006_biomass_data.csv")
Rock_Key_Shallow_2007_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_2007_biomass_data.csv")
Rock_Key_Shallow_2008_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_2008_biomass_data.csv")
Rock_Key_Shallow_2009_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_2009_biomass_data.csv")
Rock_Key_Shallow_2010_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_2010_biomass_data.csv")
Rock_Key_Shallow_2011_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_2011_biomass_data.csv")
Rock_Key_Shallow_2012_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_2012_biomass_data.csv")
Rock_Key_Shallow_2014_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_2014_biomass_data.csv")
Rock_Key_Shallow_2016_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_2016_biomass_data.csv")
Rock_Key_Shallow_2018_merge <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_2018_biomass_data.csv")

Rock_Key_Shallow_merge_1 <- rbind(Rock_Key_Shallow_1999_merge,Rock_Key_Shallow_2000_merge)
Rock_Key_Shallow_merge_2 <- rbind(Rock_Key_Shallow_merge_1,Rock_Key_Shallow_2001_merge)
Rock_Key_Shallow_merge_3 <- rbind(Rock_Key_Shallow_merge_2,Rock_Key_Shallow_2002_merge)
Rock_Key_Shallow_merge_4 <- rbind(Rock_Key_Shallow_merge_3,Rock_Key_Shallow_2003_merge)
Rock_Key_Shallow_merge_5 <- rbind(Rock_Key_Shallow_merge_4,Rock_Key_Shallow_2004_merge)
Rock_Key_Shallow_merge_6 <- rbind(Rock_Key_Shallow_merge_5,Rock_Key_Shallow_2005_merge)
Rock_Key_Shallow_merge_7 <- rbind(Rock_Key_Shallow_merge_6,Rock_Key_Shallow_2006_merge)
Rock_Key_Shallow_merge_8 <- rbind(Rock_Key_Shallow_merge_7,Rock_Key_Shallow_2007_merge)
Rock_Key_Shallow_merge_9 <- rbind(Rock_Key_Shallow_merge_8,Rock_Key_Shallow_2008_merge)
Rock_Key_Shallow_merge_10 <- rbind(Rock_Key_Shallow_merge_9,Rock_Key_Shallow_2009_merge)
Rock_Key_Shallow_merge_11<- rbind(Rock_Key_Shallow_merge_10,Rock_Key_Shallow_2010_merge)
Rock_Key_Shallow_merge_12 <- rbind(Rock_Key_Shallow_merge_11,Rock_Key_Shallow_2011_merge)
Rock_Key_Shallow_merge_13 <- rbind(Rock_Key_Shallow_merge_12,Rock_Key_Shallow_2012_merge)
Rock_Key_Shallow_merge_14 <- rbind(Rock_Key_Shallow_merge_13,Rock_Key_Shallow_2014_merge)
Rock_Key_Shallow_merge_15 <- rbind(Rock_Key_Shallow_merge_14,Rock_Key_Shallow_2016_merge)
Rock_Key_Shallow_Reef_biomass_data_combined <- rbind(Rock_Key_Shallow_merge_15,Rock_Key_Shallow_2018_merge)

##output
export(Rock_Key_Shallow_Reef_biomass_data_combined,"Rock_Key_Shallow/data/Rock_Key_Shallow_biomass_data_combined.csv")



### Sand Key Deep

##repeat for all years 99-16
Sand_Key_Deep_1999 <- import("Sand_Key_Deep/data/Sand_Key_Deep_1999.xls")
Sand_Key_Deep_1999_Total_biomass <- summarise_at(Sand_Key_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_1999_Total_biomass$Year <- ('1999')
###output
export(Sand_Key_Deep_1999_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_1999_biomass_data.csv")

Sand_Key_Deep_2000 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2000.xls")
Sand_Key_Deep_2000_Total_biomass <- summarise_at(Sand_Key_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2000_Total_biomass$Year <- ('2000')
###output
export(Sand_Key_Deep_2000_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_2000_biomass_data.csv")

Sand_Key_Deep_2001 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2001.xls")
Sand_Key_Deep_2001_Total_biomass <- summarise_at(Sand_Key_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2001_Total_biomass$Year <- ('2001')
###output
export(Sand_Key_Deep_2001_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_2001_biomass_data.csv")

Sand_Key_Deep_2002 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2002.xls")
Sand_Key_Deep_2002_Total_biomass <- summarise_at(Sand_Key_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2002_Total_biomass$Year <- ('2002')
###output
export(Sand_Key_Deep_2002_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_2002_biomass_data.csv")

Sand_Key_Deep_2003 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2003.xls")
Sand_Key_Deep_2003_Total_biomass <- summarise_at(Sand_Key_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2003_Total_biomass$Year <- ('2003')
###output
export(Sand_Key_Deep_2003_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_2003_biomass_data.csv")


Sand_Key_Deep_2004 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2004.xls")
Sand_Key_Deep_2004_Total_biomass <- summarise_at(Sand_Key_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2004_Total_biomass$Year <- ('2004')

###output
export(Sand_Key_Deep_2004_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_2004_biomass_data.csv")

Sand_Key_Deep_2005 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2005.xls")
Sand_Key_Deep_2005_Total_biomass <- summarise_at(Sand_Key_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2005_Total_biomass$Year <- ('2005')
###output
export(Sand_Key_Deep_2005_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_2005_biomass_data.csv")


Sand_Key_Deep_2006 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2006.xls")
Sand_Key_Deep_2006_Total_biomass <- summarise_at(Sand_Key_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2006_Total_biomass$Year <- ('2006')

###output
export(Sand_Key_Deep_2006_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_2006_biomass_data.csv")

Sand_Key_Deep_2007 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2007.xls")
Sand_Key_Deep_2007_Total_biomass <- summarise_at(Sand_Key_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2007_Total_biomass$Year <- ('2007')
###output
export(Sand_Key_Deep_2007_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_2007_biomass_data.csv")


Sand_Key_Deep_2008 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2008.xls")
Sand_Key_Deep_2008_Total_biomass <- summarise_at(Sand_Key_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2008_Total_biomass$Year <- ('2008')

###output
export(Sand_Key_Deep_2008_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_2008_biomass_data.csv")

Sand_Key_Deep_2009 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2009.xls")
Sand_Key_Deep_2009_Total_biomass <- summarise_at(Sand_Key_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2009_Total_biomass$Year <- ('2009')
###output
export(Sand_Key_Deep_2009_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_2009_biomass_data.csv")


Sand_Key_Deep_2010 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2010.xls")
Sand_Key_Deep_2010_Total_biomass <- summarise_at(Sand_Key_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2010_Total_biomass$Year <- ('2010')

###output
export(Sand_Key_Deep_2010_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_2010_biomass_data.csv")

Sand_Key_Deep_2011 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2011.xls")
Sand_Key_Deep_2011_Total_biomass <- summarise_at(Sand_Key_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2011_Total_biomass$Year <- ('2011')
###output
export(Sand_Key_Deep_2011_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_2011_biomass_data.csv")


Sand_Key_Deep_2012 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2012.xls")
Sand_Key_Deep_2012_Total_biomass <- summarise_at(Sand_Key_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2012_Total_biomass$Year <- ('2012')

###output
export(Sand_Key_Deep_2012_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_2012_biomass_data.csv")

Sand_Key_Deep_2014 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2014.xls")
Sand_Key_Deep_2014_Total_biomass <- summarise_at(Sand_Key_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2014_Total_biomass$Year <- ('2014')

###output
export(Sand_Key_Deep_2014_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_2014_biomass_data.csv")

Sand_Key_Deep_2016 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2016.xls")
Sand_Key_Deep_2016_Total_biomass <- summarise_at(Sand_Key_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2016_Total_biomass$Year <- ('2016')

###output
export(Sand_Key_Deep_2016_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_2016_biomass_data.csv")

Sand_Key_Deep_2018 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2018.xls")
Sand_Key_Deep_2018_Total_biomass <- summarise_at(Sand_Key_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2018_Total_biomass$Year <- ('2018')
###output
export(Sand_Key_Deep_2018_Total_biomass,"Sand_Key_Deep/data/Sand_Key_Deep_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Sand_Key_Deep_1999_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_1999_biomass_data.csv")
Sand_Key_Deep_2000_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_2000_biomass_data.csv")
Sand_Key_Deep_2001_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_2001_biomass_data.csv")
Sand_Key_Deep_2002_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_2002_biomass_data.csv")
Sand_Key_Deep_2003_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_2003_biomass_data.csv")
Sand_Key_Deep_2004_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_2004_biomass_data.csv")
Sand_Key_Deep_2005_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_2005_biomass_data.csv")
Sand_Key_Deep_2006_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_2006_biomass_data.csv")
Sand_Key_Deep_2007_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_2007_biomass_data.csv")
Sand_Key_Deep_2008_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_2008_biomass_data.csv")
Sand_Key_Deep_2009_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_2009_biomass_data.csv")
Sand_Key_Deep_2010_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_2010_biomass_data.csv")
Sand_Key_Deep_2011_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_2011_biomass_data.csv")
Sand_Key_Deep_2012_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_2012_biomass_data.csv")
Sand_Key_Deep_2014_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_2014_biomass_data.csv")
Sand_Key_Deep_2016_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_2016_biomass_data.csv")
Sand_Key_Deep_2018_merge <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_2018_biomass_data.csv")

Sand_Key_Deep_merge_1 <- rbind(Sand_Key_Deep_1999_merge,Sand_Key_Deep_2000_merge)
Sand_Key_Deep_merge_2 <- rbind(Sand_Key_Deep_merge_1,Sand_Key_Deep_2001_merge)
Sand_Key_Deep_merge_3 <- rbind(Sand_Key_Deep_merge_2,Sand_Key_Deep_2002_merge)
Sand_Key_Deep_merge_4 <- rbind(Sand_Key_Deep_merge_3,Sand_Key_Deep_2003_merge)
Sand_Key_Deep_merge_5 <- rbind(Sand_Key_Deep_merge_4,Sand_Key_Deep_2004_merge)
Sand_Key_Deep_merge_6 <- rbind(Sand_Key_Deep_merge_5,Sand_Key_Deep_2005_merge)
Sand_Key_Deep_merge_7 <- rbind(Sand_Key_Deep_merge_6,Sand_Key_Deep_2006_merge)
Sand_Key_Deep_merge_8 <- rbind(Sand_Key_Deep_merge_7,Sand_Key_Deep_2007_merge)
Sand_Key_Deep_merge_9 <- rbind(Sand_Key_Deep_merge_8,Sand_Key_Deep_2008_merge)
Sand_Key_Deep_merge_10 <- rbind(Sand_Key_Deep_merge_9,Sand_Key_Deep_2009_merge)
Sand_Key_Deep_merge_11<- rbind(Sand_Key_Deep_merge_10,Sand_Key_Deep_2010_merge)
Sand_Key_Deep_merge_12 <- rbind(Sand_Key_Deep_merge_11,Sand_Key_Deep_2011_merge)
Sand_Key_Deep_merge_13 <- rbind(Sand_Key_Deep_merge_12,Sand_Key_Deep_2012_merge)
Sand_Key_Deep_merge_14 <- rbind(Sand_Key_Deep_merge_13,Sand_Key_Deep_2014_merge)
Sand_Key_Deep_merge_15 <- rbind(Sand_Key_Deep_merge_14,Sand_Key_Deep_2016_merge)
Sand_Key_Deep_Reef_biomass_data_combined <- rbind(Sand_Key_Deep_merge_15,Sand_Key_Deep_2018_merge)

##output
export(Sand_Key_Deep_Reef_biomass_data_combined,"Sand_Key_Deep/data/Sand_Key_Deep_biomass_data_combined.csv")


###Sand Key Shallow

##repeat for all years 99-16
Sand_Key_Shallow_1999 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_1999.xls")
Sand_Key_Shallow_1999_Total_biomass <- summarise_at(Sand_Key_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_1999_Total_biomass$Year <- ('1999')
###output
export(Sand_Key_Shallow_1999_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_1999_biomass_data.csv")

Sand_Key_Shallow_2000 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2000.xls")
Sand_Key_Shallow_2000_Total_biomass <- summarise_at(Sand_Key_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2000_Total_biomass$Year <- ('2000')
###output
export(Sand_Key_Shallow_2000_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_2000_biomass_data.csv")

Sand_Key_Shallow_2001 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2001.xls")
Sand_Key_Shallow_2001_Total_biomass <- summarise_at(Sand_Key_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2001_Total_biomass$Year <- ('2001')
###output
export(Sand_Key_Shallow_2001_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_2001_biomass_data.csv")

Sand_Key_Shallow_2002 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2002.xls")
Sand_Key_Shallow_2002_Total_biomass <- summarise_at(Sand_Key_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2002_Total_biomass$Year <- ('2002')
###output
export(Sand_Key_Shallow_2002_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_2002_biomass_data.csv")

Sand_Key_Shallow_2003 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2003.xls")
Sand_Key_Shallow_2003_Total_biomass <- summarise_at(Sand_Key_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2003_Total_biomass$Year <- ('2003')
###output
export(Sand_Key_Shallow_2003_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_2003_biomass_data.csv")


Sand_Key_Shallow_2004 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2004.xls")
Sand_Key_Shallow_2004_Total_biomass <- summarise_at(Sand_Key_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2004_Total_biomass$Year <- ('2004')

###output
export(Sand_Key_Shallow_2004_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_2004_biomass_data.csv")

Sand_Key_Shallow_2005 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2005.xls")
Sand_Key_Shallow_2005_Total_biomass <- summarise_at(Sand_Key_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2005_Total_biomass$Year <- ('2005')
###output
export(Sand_Key_Shallow_2005_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_2005_biomass_data.csv")


Sand_Key_Shallow_2006 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2006.xls")
Sand_Key_Shallow_2006_Total_biomass <- summarise_at(Sand_Key_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2006_Total_biomass$Year <- ('2006')

###output
export(Sand_Key_Shallow_2006_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_2006_biomass_data.csv")

Sand_Key_Shallow_2007 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2007.xls")
Sand_Key_Shallow_2007_Total_biomass <- summarise_at(Sand_Key_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2007_Total_biomass$Year <- ('2007')
###output
export(Sand_Key_Shallow_2007_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_2007_biomass_data.csv")


Sand_Key_Shallow_2008 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2008.xls")
Sand_Key_Shallow_2008_Total_biomass <- summarise_at(Sand_Key_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2008_Total_biomass$Year <- ('2008')

###output
export(Sand_Key_Shallow_2008_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_2008_biomass_data.csv")

Sand_Key_Shallow_2009 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2009.xls")
Sand_Key_Shallow_2009_Total_biomass <- summarise_at(Sand_Key_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2009_Total_biomass$Year <- ('2009')
###output
export(Sand_Key_Shallow_2009_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_2009_biomass_data.csv")


Sand_Key_Shallow_2010 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2010.xls")
Sand_Key_Shallow_2010_Total_biomass <- summarise_at(Sand_Key_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2010_Total_biomass$Year <- ('2010')

###output
export(Sand_Key_Shallow_2010_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_2010_biomass_data.csv")

Sand_Key_Shallow_2011 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2011.xls")
Sand_Key_Shallow_2011_Total_biomass <- summarise_at(Sand_Key_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2011_Total_biomass$Year <- ('2011')
###output
export(Sand_Key_Shallow_2011_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_2011_biomass_data.csv")


Sand_Key_Shallow_2012 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2012.xls")
Sand_Key_Shallow_2012_Total_biomass <- summarise_at(Sand_Key_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2012_Total_biomass$Year <- ('2012')

###output
export(Sand_Key_Shallow_2012_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_2012_biomass_data.csv")

Sand_Key_Shallow_2014 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2014.xls")
Sand_Key_Shallow_2014_Total_biomass <- summarise_at(Sand_Key_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2014_Total_biomass$Year <- ('2014')

###output
export(Sand_Key_Shallow_2014_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_2014_biomass_data.csv")

Sand_Key_Shallow_2016 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2016.xls")
Sand_Key_Shallow_2016_Total_biomass <- summarise_at(Sand_Key_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2016_Total_biomass$Year <- ('2016')

###output
export(Sand_Key_Shallow_2016_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_2016_biomass_data.csv")

Sand_Key_Shallow_2018 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2018.xls")
Sand_Key_Shallow_2018_Total_biomass <- summarise_at(Sand_Key_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2018_Total_biomass$Year <- ('2018')
###output
export(Sand_Key_Shallow_2018_Total_biomass,"Sand_Key_Shallow/data/Sand_Key_Shallow_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Sand_Key_Shallow_1999_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_1999_biomass_data.csv")
Sand_Key_Shallow_2000_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_2000_biomass_data.csv")
Sand_Key_Shallow_2001_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_2001_biomass_data.csv")
Sand_Key_Shallow_2002_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_2002_biomass_data.csv")
Sand_Key_Shallow_2003_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_2003_biomass_data.csv")
Sand_Key_Shallow_2004_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_2004_biomass_data.csv")
Sand_Key_Shallow_2005_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_2005_biomass_data.csv")
Sand_Key_Shallow_2006_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_2006_biomass_data.csv")
Sand_Key_Shallow_2007_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_2007_biomass_data.csv")
Sand_Key_Shallow_2008_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_2008_biomass_data.csv")
Sand_Key_Shallow_2009_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_2009_biomass_data.csv")
Sand_Key_Shallow_2010_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_2010_biomass_data.csv")
Sand_Key_Shallow_2011_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_2011_biomass_data.csv")
Sand_Key_Shallow_2012_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_2012_biomass_data.csv")
Sand_Key_Shallow_2014_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_2014_biomass_data.csv")
Sand_Key_Shallow_2016_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_2016_biomass_data.csv")
Sand_Key_Shallow_2018_merge <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_2018_biomass_data.csv")

Sand_Key_Shallow_merge_1 <- rbind(Sand_Key_Shallow_1999_merge,Sand_Key_Shallow_2000_merge)
Sand_Key_Shallow_merge_2 <- rbind(Sand_Key_Shallow_merge_1,Sand_Key_Shallow_2001_merge)
Sand_Key_Shallow_merge_3 <- rbind(Sand_Key_Shallow_merge_2,Sand_Key_Shallow_2002_merge)
Sand_Key_Shallow_merge_4 <- rbind(Sand_Key_Shallow_merge_3,Sand_Key_Shallow_2003_merge)
Sand_Key_Shallow_merge_5 <- rbind(Sand_Key_Shallow_merge_4,Sand_Key_Shallow_2004_merge)
Sand_Key_Shallow_merge_6 <- rbind(Sand_Key_Shallow_merge_5,Sand_Key_Shallow_2005_merge)
Sand_Key_Shallow_merge_7 <- rbind(Sand_Key_Shallow_merge_6,Sand_Key_Shallow_2006_merge)
Sand_Key_Shallow_merge_8 <- rbind(Sand_Key_Shallow_merge_7,Sand_Key_Shallow_2007_merge)
Sand_Key_Shallow_merge_9 <- rbind(Sand_Key_Shallow_merge_8,Sand_Key_Shallow_2008_merge)
Sand_Key_Shallow_merge_10 <- rbind(Sand_Key_Shallow_merge_9,Sand_Key_Shallow_2009_merge)
Sand_Key_Shallow_merge_11<- rbind(Sand_Key_Shallow_merge_10,Sand_Key_Shallow_2010_merge)
Sand_Key_Shallow_merge_12 <- rbind(Sand_Key_Shallow_merge_11,Sand_Key_Shallow_2011_merge)
Sand_Key_Shallow_merge_13 <- rbind(Sand_Key_Shallow_merge_12,Sand_Key_Shallow_2012_merge)
Sand_Key_Shallow_merge_14 <- rbind(Sand_Key_Shallow_merge_13,Sand_Key_Shallow_2014_merge)
Sand_Key_Shallow_merge_15 <- rbind(Sand_Key_Shallow_merge_14,Sand_Key_Shallow_2016_merge)
Sand_Key_Shallow_Reef_biomass_data_combined <- rbind(Sand_Key_Shallow_merge_15,Sand_Key_Shallow_2018_merge)

##output
export(Sand_Key_Shallow_Reef_biomass_data_combined,"Sand_Key_Shallow/data/Sand_Key_Shallow_biomass_data_combined.csv")


###Smith Shoal

##repeat for all years 99-16
Smith_Shoal_1999 <- import("Smith_Shoal/data/Smith_Shoal_1999.xls")
Smith_Shoal_1999_Total_biomass <- summarise_at(Smith_Shoal_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_1999_Total_biomass$Year <- ('1999')
###output
export(Smith_Shoal_1999_Total_biomass,"Smith_Shoal/data/Smith_Shoal_1999_biomass_data.csv")

Smith_Shoal_2000 <- import("Smith_Shoal/data/Smith_Shoal_2000.xls")
Smith_Shoal_2000_Total_biomass <- summarise_at(Smith_Shoal_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_2000_Total_biomass$Year <- ('2000')
###output
export(Smith_Shoal_2000_Total_biomass,"Smith_Shoal/data/Smith_Shoal_2000_biomass_data.csv")

Smith_Shoal_2001 <- import("Smith_Shoal/data/Smith_Shoal_2001.xls")
Smith_Shoal_2001_Total_biomass <- summarise_at(Smith_Shoal_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_2001_Total_biomass$Year <- ('2001')
###output
export(Smith_Shoal_2001_Total_biomass,"Smith_Shoal/data/Smith_Shoal_2001_biomass_data.csv")

Smith_Shoal_2002 <- import("Smith_Shoal/data/Smith_Shoal_2002.xls")
Smith_Shoal_2002_Total_biomass <- summarise_at(Smith_Shoal_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_2002_Total_biomass$Year <- ('2002')
###output
export(Smith_Shoal_2002_Total_biomass,"Smith_Shoal/data/Smith_Shoal_2002_biomass_data.csv")

Smith_Shoal_2003 <- import("Smith_Shoal/data/Smith_Shoal_2003.xls")
Smith_Shoal_2003_Total_biomass <- summarise_at(Smith_Shoal_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_2003_Total_biomass$Year <- ('2003')
###output
export(Smith_Shoal_2003_Total_biomass,"Smith_Shoal/data/Smith_Shoal_2003_biomass_data.csv")


Smith_Shoal_2004 <- import("Smith_Shoal/data/Smith_Shoal_2004.xls")
Smith_Shoal_2004_Total_biomass <- summarise_at(Smith_Shoal_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_2004_Total_biomass$Year <- ('2004')

###output
export(Smith_Shoal_2004_Total_biomass,"Smith_Shoal/data/Smith_Shoal_2004_biomass_data.csv")

Smith_Shoal_2005 <- import("Smith_Shoal/data/Smith_Shoal_2005.xls")
Smith_Shoal_2005_Total_biomass <- summarise_at(Smith_Shoal_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_2005_Total_biomass$Year <- ('2005')
###output
export(Smith_Shoal_2005_Total_biomass,"Smith_Shoal/data/Smith_Shoal_2005_biomass_data.csv")


Smith_Shoal_2006 <- import("Smith_Shoal/data/Smith_Shoal_2006.xls")
Smith_Shoal_2006_Total_biomass <- summarise_at(Smith_Shoal_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_2006_Total_biomass$Year <- ('2006')

###output
export(Smith_Shoal_2006_Total_biomass,"Smith_Shoal/data/Smith_Shoal_2006_biomass_data.csv")

Smith_Shoal_2007 <- import("Smith_Shoal/data/Smith_Shoal_2007.xls")
Smith_Shoal_2007_Total_biomass <- summarise_at(Smith_Shoal_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_2007_Total_biomass$Year <- ('2007')
###output
export(Smith_Shoal_2007_Total_biomass,"Smith_Shoal/data/Smith_Shoal_2007_biomass_data.csv")


Smith_Shoal_2008 <- import("Smith_Shoal/data/Smith_Shoal_2008.xls")
Smith_Shoal_2008_Total_biomass <- summarise_at(Smith_Shoal_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_2008_Total_biomass$Year <- ('2008')

###output
export(Smith_Shoal_2008_Total_biomass,"Smith_Shoal/data/Smith_Shoal_2008_biomass_data.csv")

Smith_Shoal_2009 <- import("Smith_Shoal/data/Smith_Shoal_2009.xls")
Smith_Shoal_2009_Total_biomass <- summarise_at(Smith_Shoal_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_2009_Total_biomass$Year <- ('2009')
###output
export(Smith_Shoal_2009_Total_biomass,"Smith_Shoal/data/Smith_Shoal_2009_biomass_data.csv")


Smith_Shoal_2010 <- import("Smith_Shoal/data/Smith_Shoal_2010.xls")
Smith_Shoal_2010_Total_biomass <- summarise_at(Smith_Shoal_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_2010_Total_biomass$Year <- ('2010')

###output
export(Smith_Shoal_2010_Total_biomass,"Smith_Shoal/data/Smith_Shoal_2010_biomass_data.csv")

Smith_Shoal_2011 <- import("Smith_Shoal/data/Smith_Shoal_2011.xls")
Smith_Shoal_2011_Total_biomass <- summarise_at(Smith_Shoal_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_2011_Total_biomass$Year <- ('2011')
###output
export(Smith_Shoal_2011_Total_biomass,"Smith_Shoal/data/Smith_Shoal_2011_biomass_data.csv")


Smith_Shoal_2012 <- import("Smith_Shoal/data/Smith_Shoal_2012.xls")
Smith_Shoal_2012_Total_biomass <- summarise_at(Smith_Shoal_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_2012_Total_biomass$Year <- ('2012')

###output
export(Smith_Shoal_2012_Total_biomass,"Smith_Shoal/data/Smith_Shoal_2012_biomass_data.csv")

Smith_Shoal_2014 <- import("Smith_Shoal/data/Smith_Shoal_2014.xls")
Smith_Shoal_2014_Total_biomass <- summarise_at(Smith_Shoal_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_2014_Total_biomass$Year <- ('2014')

###output
export(Smith_Shoal_2014_Total_biomass,"Smith_Shoal/data/Smith_Shoal_2014_biomass_data.csv")

Smith_Shoal_2016 <- import("Smith_Shoal/data/Smith_Shoal_2016.xls")
Smith_Shoal_2016_Total_biomass <- summarise_at(Smith_Shoal_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_2016_Total_biomass$Year <- ('2016')

###output
export(Smith_Shoal_2016_Total_biomass,"Smith_Shoal/data/Smith_Shoal_2016_biomass_data.csv")

Smith_Shoal_2018 <- import("Smith_Shoal/data/Smith_Shoal_2018.xls")
Smith_Shoal_2018_Total_biomass <- summarise_at(Smith_Shoal_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Smith_Shoal_2018_Total_biomass$Year <- ('2018')
###output
export(Smith_Shoal_2018_Total_biomass,"Smith_Shoal/data/Smith_Shoal_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Smith_Shoal_1999_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_1999_biomass_data.csv")
Smith_Shoal_2000_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_2000_biomass_data.csv")
Smith_Shoal_2001_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_2001_biomass_data.csv")
Smith_Shoal_2002_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_2002_biomass_data.csv")
Smith_Shoal_2003_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_2003_biomass_data.csv")
Smith_Shoal_2004_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_2004_biomass_data.csv")
Smith_Shoal_2005_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_2005_biomass_data.csv")
Smith_Shoal_2006_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_2006_biomass_data.csv")
Smith_Shoal_2007_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_2007_biomass_data.csv")
Smith_Shoal_2008_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_2008_biomass_data.csv")
Smith_Shoal_2009_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_2009_biomass_data.csv")
Smith_Shoal_2010_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_2010_biomass_data.csv")
Smith_Shoal_2011_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_2011_biomass_data.csv")
Smith_Shoal_2012_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_2012_biomass_data.csv")
Smith_Shoal_2014_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_2014_biomass_data.csv")
Smith_Shoal_2016_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_2016_biomass_data.csv")
Smith_Shoal_2018_merge <- read_csv("Smith_Shoal/data/Smith_Shoal_2018_biomass_data.csv")

Smith_Shoal_merge_1 <- rbind(Smith_Shoal_1999_merge,Smith_Shoal_2000_merge)
Smith_Shoal_merge_2 <- rbind(Smith_Shoal_merge_1,Smith_Shoal_2001_merge)
Smith_Shoal_merge_3 <- rbind(Smith_Shoal_merge_2,Smith_Shoal_2002_merge)
Smith_Shoal_merge_4 <- rbind(Smith_Shoal_merge_3,Smith_Shoal_2003_merge)
Smith_Shoal_merge_5 <- rbind(Smith_Shoal_merge_4,Smith_Shoal_2004_merge)
Smith_Shoal_merge_6 <- rbind(Smith_Shoal_merge_5,Smith_Shoal_2005_merge)
Smith_Shoal_merge_7 <- rbind(Smith_Shoal_merge_6,Smith_Shoal_2006_merge)
Smith_Shoal_merge_8 <- rbind(Smith_Shoal_merge_7,Smith_Shoal_2007_merge)
Smith_Shoal_merge_9 <- rbind(Smith_Shoal_merge_8,Smith_Shoal_2008_merge)
Smith_Shoal_merge_10 <- rbind(Smith_Shoal_merge_9,Smith_Shoal_2009_merge)
Smith_Shoal_merge_11<- rbind(Smith_Shoal_merge_10,Smith_Shoal_2010_merge)
Smith_Shoal_merge_12 <- rbind(Smith_Shoal_merge_11,Smith_Shoal_2011_merge)
Smith_Shoal_merge_13 <- rbind(Smith_Shoal_merge_12,Smith_Shoal_2012_merge)
Smith_Shoal_merge_14 <- rbind(Smith_Shoal_merge_13,Smith_Shoal_2014_merge)
Smith_Shoal_merge_15 <- rbind(Smith_Shoal_merge_14,Smith_Shoal_2016_merge)
Smith_Shoal_Reef_biomass_data_combined <- rbind(Smith_Shoal_merge_15,Smith_Shoal_2018_merge)

##output
export(Smith_Shoal_Reef_biomass_data_combined,"Smith_Shoal/data/Smith_Shoal_biomass_data_combined.csv")


###West Washer Women

##repeat for all years 99-16
West_Washer_Woman_1999 <- import("West_Washer_Woman/data/West_Washer_1999.xls")
West_Washer_Woman_1999_Total_biomass <- summarise_at(West_Washer_Woman_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_1999_Total_biomass$Year <- ('1999')
###output
export(West_Washer_Woman_1999_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_1999_biomass_data.csv")

West_Washer_Woman_2000 <- import("West_Washer_Woman/data/West_Washer_2000.xls")
West_Washer_Woman_2000_Total_biomass <- summarise_at(West_Washer_Woman_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2000_Total_biomass$Year <- ('2000')
###output
export(West_Washer_Woman_2000_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_2000_biomass_data.csv")

West_Washer_Woman_2001 <- import("West_Washer_Woman/data/West_Washer_2001.xls")
West_Washer_Woman_2001_Total_biomass <- summarise_at(West_Washer_Woman_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2001_Total_biomass$Year <- ('2001')
###output
export(West_Washer_Woman_2001_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_2001_biomass_data.csv")

West_Washer_Woman_2002 <- import("West_Washer_Woman/data/West_Washer_2002.xls")
West_Washer_Woman_2002_Total_biomass <- summarise_at(West_Washer_Woman_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2002_Total_biomass$Year <- ('2002')
###output
export(West_Washer_Woman_2002_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_2002_biomass_data.csv")

West_Washer_Woman_2003 <- import("West_Washer_Woman/data/West_Washer_2003.xls")
West_Washer_Woman_2003_Total_biomass <- summarise_at(West_Washer_Woman_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2003_Total_biomass$Year <- ('2003')
###output
export(West_Washer_Woman_2003_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_2003_biomass_data.csv")


West_Washer_Woman_2004 <- import("West_Washer_Woman/data/West_Washer_2004.xls")
West_Washer_Woman_2004_Total_biomass <- summarise_at(West_Washer_Woman_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2004_Total_biomass$Year <- ('2004')

###output
export(West_Washer_Woman_2004_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_2004_biomass_data.csv")

West_Washer_Woman_2005 <- import("West_Washer_Woman/data/West_Washer_2005.xls")
West_Washer_Woman_2005_Total_biomass <- summarise_at(West_Washer_Woman_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2005_Total_biomass$Year <- ('2005')
###output
export(West_Washer_Woman_2005_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_2005_biomass_data.csv")


West_Washer_Woman_2006 <- import("West_Washer_Woman/data/West_Washer_2006.xls")
West_Washer_Woman_2006_Total_biomass <- summarise_at(West_Washer_Woman_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2006_Total_biomass$Year <- ('2006')

###output
export(West_Washer_Woman_2006_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_2006_biomass_data.csv")

West_Washer_Woman_2007 <- import("West_Washer_Woman/data/West_Washer_2007.xls")
West_Washer_Woman_2007_Total_biomass <- summarise_at(West_Washer_Woman_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2007_Total_biomass$Year <- ('2007')
###output
export(West_Washer_Woman_2007_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_2007_biomass_data.csv")


West_Washer_Woman_2008 <- import("West_Washer_Woman/data/West_Washer_2008.xls")
West_Washer_Woman_2008_Total_biomass <- summarise_at(West_Washer_Woman_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2008_Total_biomass$Year <- ('2008')

###output
export(West_Washer_Woman_2008_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_2008_biomass_data.csv")

West_Washer_Woman_2009 <- import("West_Washer_Woman/data/West_Washer_2009.xls")
West_Washer_Woman_2009_Total_biomass <- summarise_at(West_Washer_Woman_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2009_Total_biomass$Year <- ('2009')
###output
export(West_Washer_Woman_2009_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_2009_biomass_data.csv")


West_Washer_Woman_2010 <- import("West_Washer_Woman/data/West_Washer_2010.xls")
West_Washer_Woman_2010_Total_biomass <- summarise_at(West_Washer_Woman_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2010_Total_biomass$Year <- ('2010')

###output
export(West_Washer_Woman_2010_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_2010_biomass_data.csv")

West_Washer_Woman_2011 <- import("West_Washer_Woman/data/West_Washer_2011.xls")
West_Washer_Woman_2011_Total_biomass <- summarise_at(West_Washer_Woman_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2011_Total_biomass$Year <- ('2011')
###output
export(West_Washer_Woman_2011_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_2011_biomass_data.csv")


West_Washer_Woman_2012 <- import("West_Washer_Woman/data/West_Washer_2012.xls")
West_Washer_Woman_2012_Total_biomass <- summarise_at(West_Washer_Woman_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2012_Total_biomass$Year <- ('2012')

###output
export(West_Washer_Woman_2012_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_2012_biomass_data.csv")

West_Washer_Woman_2014 <- import("West_Washer_Woman/data/West_Washer_2014.xls")
West_Washer_Woman_2014_Total_biomass <- summarise_at(West_Washer_Woman_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2014_Total_biomass$Year <- ('2014')

###output
export(West_Washer_Woman_2014_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_2014_biomass_data.csv")

West_Washer_Woman_2016 <- import("West_Washer_Woman/data/West_Washer_2016.xls")
West_Washer_Woman_2016_Total_biomass <- summarise_at(West_Washer_Woman_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2016_Total_biomass$Year <- ('2016')

###output
export(West_Washer_Woman_2016_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_2016_biomass_data.csv")

West_Washer_Woman_2018 <- import("West_Washer_Woman/data/West_Washer_2018.xls")
West_Washer_Woman_2018_Total_biomass <- summarise_at(West_Washer_Woman_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2018_Total_biomass$Year <- ('2018')
###output
export(West_Washer_Woman_2018_Total_biomass,"West_Washer_Woman/data/West_Washer_Woman_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
West_Washer_Woman_1999_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_1999_biomass_data.csv")
West_Washer_Woman_2000_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_2000_biomass_data.csv")
West_Washer_Woman_2001_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_2001_biomass_data.csv")
West_Washer_Woman_2002_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_2002_biomass_data.csv")
West_Washer_Woman_2003_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_2003_biomass_data.csv")
West_Washer_Woman_2004_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_2004_biomass_data.csv")
West_Washer_Woman_2005_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_2005_biomass_data.csv")
West_Washer_Woman_2006_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_2006_biomass_data.csv")
West_Washer_Woman_2007_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_2007_biomass_data.csv")
West_Washer_Woman_2008_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_2008_biomass_data.csv")
West_Washer_Woman_2009_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_2009_biomass_data.csv")
West_Washer_Woman_2010_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_2010_biomass_data.csv")
West_Washer_Woman_2011_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_2011_biomass_data.csv")
West_Washer_Woman_2012_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_2012_biomass_data.csv")
West_Washer_Woman_2014_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_2014_biomass_data.csv")
West_Washer_Woman_2016_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_2016_biomass_data.csv")
West_Washer_Woman_2018_merge <- read_csv("West_Washer_Woman/data/West_Washer_Woman_2018_biomass_data.csv")

West_Washer_Woman_merge_1 <- rbind(West_Washer_Woman_1999_merge,West_Washer_Woman_2000_merge)
West_Washer_Woman_merge_2 <- rbind(West_Washer_Woman_merge_1,West_Washer_Woman_2001_merge)
West_Washer_Woman_merge_3 <- rbind(West_Washer_Woman_merge_2,West_Washer_Woman_2002_merge)
West_Washer_Woman_merge_4 <- rbind(West_Washer_Woman_merge_3,West_Washer_Woman_2003_merge)
West_Washer_Woman_merge_5 <- rbind(West_Washer_Woman_merge_4,West_Washer_Woman_2004_merge)
West_Washer_Woman_merge_6 <- rbind(West_Washer_Woman_merge_5,West_Washer_Woman_2005_merge)
West_Washer_Woman_merge_7 <- rbind(West_Washer_Woman_merge_6,West_Washer_Woman_2006_merge)
West_Washer_Woman_merge_8 <- rbind(West_Washer_Woman_merge_7,West_Washer_Woman_2007_merge)
West_Washer_Woman_merge_9 <- rbind(West_Washer_Woman_merge_8,West_Washer_Woman_2008_merge)
West_Washer_Woman_merge_10 <- rbind(West_Washer_Woman_merge_9,West_Washer_Woman_2009_merge)
West_Washer_Woman_merge_11<- rbind(West_Washer_Woman_merge_10,West_Washer_Woman_2010_merge)
West_Washer_Woman_merge_12 <- rbind(West_Washer_Woman_merge_11,West_Washer_Woman_2011_merge)
West_Washer_Woman_merge_13 <- rbind(West_Washer_Woman_merge_12,West_Washer_Woman_2012_merge)
West_Washer_Woman_merge_14 <- rbind(West_Washer_Woman_merge_13,West_Washer_Woman_2014_merge)
West_Washer_Woman_merge_15 <- rbind(West_Washer_Woman_merge_14,West_Washer_Woman_2016_merge)
West_Washer_Woman_Reef_biomass_data_combined <- rbind(West_Washer_Woman_merge_15,West_Washer_Woman_2018_merge)

##output
export(West_Washer_Woman_Reef_biomass_data_combined,"West_Washer_Woman/data/West_Washer_Woman_biomass_data_combined.csv")



### Western Head   (no data fyi)

##repeat for all years 99-16
Western_Head_1999 <- import("Western_Head/data/Western_Head_1999.xls")
Western_Head_1999_Total_biomass <- summarise_at(Western_Head_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_1999_Total_biomass$Year <- ('1999')
###output
export(Western_Head_1999_Total_biomass,"Western_Head/data/Western_Head_1999_biomass_data.csv")

Western_Head_2000 <- import("Western_Head/data/Western_Head_2000.xls")
Western_Head_2000_Total_biomass <- summarise_at(Western_Head_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_2000_Total_biomass$Year <- ('2000')
###output
export(Western_Head_2000_Total_biomass,"Western_Head/data/Western_Head_2000_biomass_data.csv")

Western_Head_2001 <- import("Western_Head/data/Western_Head_2001.xls")
Western_Head_2001_Total_biomass <- summarise_at(Western_Head_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_2001_Total_biomass$Year <- ('2001')
###output
export(Western_Head_2001_Total_biomass,"Western_Head/data/Western_Head_2001_biomass_data.csv")

Western_Head_2002 <- import("Western_Head/data/Western_Head_2002.xls")
Western_Head_2002_Total_biomass <- summarise_at(Western_Head_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_2002_Total_biomass$Year <- ('2002')
###output
export(Western_Head_2002_Total_biomass,"Western_Head/data/Western_Head_2002_biomass_data.csv")

Western_Head_2003 <- import("Western_Head/data/Western_Head_2003.xls")
Western_Head_2003_Total_biomass <- summarise_at(Western_Head_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_2003_Total_biomass$Year <- ('2003')
###output
export(Western_Head_2003_Total_biomass,"Western_Head/data/Western_Head_2003_biomass_data.csv")


Western_Head_2004 <- import("Western_Head/data/Western_Head_2004.xls")
Western_Head_2004_Total_biomass <- summarise_at(Western_Head_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_2004_Total_biomass$Year <- ('2004')

###output
export(Western_Head_2004_Total_biomass,"Western_Head/data/Western_Head_2004_biomass_data.csv")

Western_Head_2005 <- import("Western_Head/data/Western_Head_2005.xls")
Western_Head_2005_Total_biomass <- summarise_at(Western_Head_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_2005_Total_biomass$Year <- ('2005')
###output
export(Western_Head_2005_Total_biomass,"Western_Head/data/Western_Head_2005_biomass_data.csv")


Western_Head_2006 <- import("Western_Head/data/Western_Head_2006.xls")
Western_Head_2006_Total_biomass <- summarise_at(Western_Head_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_2006_Total_biomass$Year <- ('2006')

###output
export(Western_Head_2006_Total_biomass,"Western_Head/data/Western_Head_2006_biomass_data.csv")

Western_Head_2007 <- import("Western_Head/data/Western_Head_2007.xls")
Western_Head_2007_Total_biomass <- summarise_at(Western_Head_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_2007_Total_biomass$Year <- ('2007')
###output
export(Western_Head_2007_Total_biomass,"Western_Head/data/Western_Head_2007_biomass_data.csv")


Western_Head_2008 <- import("Western_Head/data/Western_Head_2008.xls")
Western_Head_2008_Total_biomass <- summarise_at(Western_Head_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_2008_Total_biomass$Year <- ('2008')

###output
export(Western_Head_2008_Total_biomass,"Western_Head/data/Western_Head_2008_biomass_data.csv")

Western_Head_2009 <- import("Western_Head/data/Western_Head_2009.xls")
Western_Head_2009_Total_biomass <- summarise_at(Western_Head_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_2009_Total_biomass$Year <- ('2009')
###output
export(Western_Head_2009_Total_biomass,"Western_Head/data/Western_Head_2009_biomass_data.csv")


Western_Head_2010 <- import("Western_Head/data/Western_Head_2010.xls")
Western_Head_2010_Total_biomass <- summarise_at(Western_Head_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_2010_Total_biomass$Year <- ('2010')

###output
export(Western_Head_2010_Total_biomass,"Western_Head/data/Western_Head_2010_biomass_data.csv")

Western_Head_2011 <- import("Western_Head/data/Western_Head_2011.xls")
Western_Head_2011_Total_biomass <- summarise_at(Western_Head_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_2011_Total_biomass$Year <- ('2011')
###output
export(Western_Head_2011_Total_biomass,"Western_Head/data/Western_Head_2011_biomass_data.csv")


Western_Head_2012 <- import("Western_Head/data/Western_Head_2012.xls")
Western_Head_2012_Total_biomass <- summarise_at(Western_Head_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_2012_Total_biomass$Year <- ('2012')

###output
export(Western_Head_2012_Total_biomass,"Western_Head/data/Western_Head_2012_biomass_data.csv")

Western_Head_2014 <- import("Western_Head/data/Western_Head_2014.xls")
Western_Head_2014_Total_biomass <- summarise_at(Western_Head_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_2014_Total_biomass$Year <- ('2014')

###output
export(Western_Head_2014_Total_biomass,"Western_Head/data/Western_Head_2014_biomass_data.csv")

Western_Head_2016 <- import("Western_Head/data/Western_Head_2016.xls")
Western_Head_2016_Total_biomass <- summarise_at(Western_Head_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_2016_Total_biomass$Year <- ('2016')

###output
export(Western_Head_2016_Total_biomass,"Western_Head/data/Western_Head_2016_biomass_data.csv")

Western_Head_2018 <- import("Western_Head/data/Western_Head_2018.xls")
Western_Head_2018_Total_biomass <- summarise_at(Western_Head_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Head_2018_Total_biomass$Year <- ('2018')
###output
export(Western_Head_2018_Total_biomass,"Western_Head/data/Western_Head_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Western_Head_1999_merge <- read_csv("Western_Head/data/Western_Head_1999_biomass_data.csv")
Western_Head_2000_merge <- read_csv("Western_Head/data/Western_Head_2000_biomass_data.csv")
Western_Head_2001_merge <- read_csv("Western_Head/data/Western_Head_2001_biomass_data.csv")
Western_Head_2002_merge <- read_csv("Western_Head/data/Western_Head_2002_biomass_data.csv")
Western_Head_2003_merge <- read_csv("Western_Head/data/Western_Head_2003_biomass_data.csv")
Western_Head_2004_merge <- read_csv("Western_Head/data/Western_Head_2004_biomass_data.csv")
Western_Head_2005_merge <- read_csv("Western_Head/data/Western_Head_2005_biomass_data.csv")
Western_Head_2006_merge <- read_csv("Western_Head/data/Western_Head_2006_biomass_data.csv")
Western_Head_2007_merge <- read_csv("Western_Head/data/Western_Head_2007_biomass_data.csv")
Western_Head_2008_merge <- read_csv("Western_Head/data/Western_Head_2008_biomass_data.csv")
Western_Head_2009_merge <- read_csv("Western_Head/data/Western_Head_2009_biomass_data.csv")
Western_Head_2010_merge <- read_csv("Western_Head/data/Western_Head_2010_biomass_data.csv")
Western_Head_2011_merge <- read_csv("Western_Head/data/Western_Head_2011_biomass_data.csv")
Western_Head_2012_merge <- read_csv("Western_Head/data/Western_Head_2012_biomass_data.csv")
Western_Head_2014_merge <- read_csv("Western_Head/data/Western_Head_2014_biomass_data.csv")
Western_Head_2016_merge <- read_csv("Western_Head/data/Western_Head_2016_biomass_data.csv")
Western_Head_2018_merge <- read_csv("Western_Head/data/Western_Head_2018_biomass_data.csv")

Western_Head_merge_1 <- rbind(Western_Head_1999_merge,Western_Head_2000_merge)
Western_Head_merge_2 <- rbind(Western_Head_merge_1,Western_Head_2001_merge)
Western_Head_merge_3 <- rbind(Western_Head_merge_2,Western_Head_2002_merge)
Western_Head_merge_4 <- rbind(Western_Head_merge_3,Western_Head_2003_merge)
Western_Head_merge_5 <- rbind(Western_Head_merge_4,Western_Head_2004_merge)
Western_Head_merge_6 <- rbind(Western_Head_merge_5,Western_Head_2005_merge)
Western_Head_merge_7 <- rbind(Western_Head_merge_6,Western_Head_2006_merge)
Western_Head_merge_8 <- rbind(Western_Head_merge_7,Western_Head_2007_merge)
Western_Head_merge_9 <- rbind(Western_Head_merge_8,Western_Head_2008_merge)
Western_Head_merge_10 <- rbind(Western_Head_merge_9,Western_Head_2009_merge)
Western_Head_merge_11<- rbind(Western_Head_merge_10,Western_Head_2010_merge)
Western_Head_merge_12 <- rbind(Western_Head_merge_11,Western_Head_2011_merge)
Western_Head_merge_13 <- rbind(Western_Head_merge_12,Western_Head_2012_merge)
Western_Head_merge_14 <- rbind(Western_Head_merge_13,Western_Head_2014_merge)
Western_Head_merge_15 <- rbind(Western_Head_merge_14,Western_Head_2016_merge)
Western_Head_Reef_biomass_data_combined <- rbind(Western_Head_merge_15,Western_Head_2018_merge)

##output
export(Western_Head_Reef_biomass_data_combined,"Western_Head/data/Western_Head_biomass_data_combined.csv")



###Western Sambo Deep


##repeat for all years 99-16
Western_Sambo_Deep_1999 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_1999.xls")
Western_Sambo_Deep_1999_Total_biomass <- summarise_at(Western_Sambo_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_1999_Total_biomass$Year <- ('1999')
###output
export(Western_Sambo_Deep_1999_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_1999_biomass_data.csv")

Western_Sambo_Deep_2000 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2000.xls")
Western_Sambo_Deep_2000_Total_biomass <- summarise_at(Western_Sambo_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2000_Total_biomass$Year <- ('2000')
###output
export(Western_Sambo_Deep_2000_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_2000_biomass_data.csv")

Western_Sambo_Deep_2001 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2001.xls")
Western_Sambo_Deep_2001_Total_biomass <- summarise_at(Western_Sambo_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2001_Total_biomass$Year <- ('2001')
###output
export(Western_Sambo_Deep_2001_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_2001_biomass_data.csv")

Western_Sambo_Deep_2002 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2002.xls")
Western_Sambo_Deep_2002_Total_biomass <- summarise_at(Western_Sambo_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2002_Total_biomass$Year <- ('2002')
###output
export(Western_Sambo_Deep_2002_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_2002_biomass_data.csv")

Western_Sambo_Deep_2003 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2003.xls")
Western_Sambo_Deep_2003_Total_biomass <- summarise_at(Western_Sambo_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2003_Total_biomass$Year <- ('2003')
###output
export(Western_Sambo_Deep_2003_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_2003_biomass_data.csv")


Western_Sambo_Deep_2004 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2004.xls")
Western_Sambo_Deep_2004_Total_biomass <- summarise_at(Western_Sambo_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2004_Total_biomass$Year <- ('2004')

###output
export(Western_Sambo_Deep_2004_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_2004_biomass_data.csv")

Western_Sambo_Deep_2005 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2005.xls")
Western_Sambo_Deep_2005_Total_biomass <- summarise_at(Western_Sambo_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2005_Total_biomass$Year <- ('2005')
###output
export(Western_Sambo_Deep_2005_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_2005_biomass_data.csv")


Western_Sambo_Deep_2006 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2006.xls")
Western_Sambo_Deep_2006_Total_biomass <- summarise_at(Western_Sambo_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2006_Total_biomass$Year <- ('2006')

###output
export(Western_Sambo_Deep_2006_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_2006_biomass_data.csv")

Western_Sambo_Deep_2007 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2007.xls")
Western_Sambo_Deep_2007_Total_biomass <- summarise_at(Western_Sambo_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2007_Total_biomass$Year <- ('2007')
###output
export(Western_Sambo_Deep_2007_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_2007_biomass_data.csv")


Western_Sambo_Deep_2008 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2008.xls")
Western_Sambo_Deep_2008_Total_biomass <- summarise_at(Western_Sambo_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2008_Total_biomass$Year <- ('2008')

###output
export(Western_Sambo_Deep_2008_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_2008_biomass_data.csv")

Western_Sambo_Deep_2009 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2009.xls")
Western_Sambo_Deep_2009_Total_biomass <- summarise_at(Western_Sambo_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2009_Total_biomass$Year <- ('2009')
###output
export(Western_Sambo_Deep_2009_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_2009_biomass_data.csv")


Western_Sambo_Deep_2010 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2010.xls")
Western_Sambo_Deep_2010_Total_biomass <- summarise_at(Western_Sambo_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2010_Total_biomass$Year <- ('2010')

###output
export(Western_Sambo_Deep_2010_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_2010_biomass_data.csv")

Western_Sambo_Deep_2011 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2011.xls")
Western_Sambo_Deep_2011_Total_biomass <- summarise_at(Western_Sambo_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2011_Total_biomass$Year <- ('2011')
###output
export(Western_Sambo_Deep_2011_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_2011_biomass_data.csv")


Western_Sambo_Deep_2012 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2012.xls")
Western_Sambo_Deep_2012_Total_biomass <- summarise_at(Western_Sambo_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2012_Total_biomass$Year <- ('2012')

###output
export(Western_Sambo_Deep_2012_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_2012_biomass_data.csv")

Western_Sambo_Deep_2014 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2014.xls")
Western_Sambo_Deep_2014_Total_biomass <- summarise_at(Western_Sambo_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2014_Total_biomass$Year <- ('2014')

###output
export(Western_Sambo_Deep_2014_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_2014_biomass_data.csv")

Western_Sambo_Deep_2016 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2016.xls")
Western_Sambo_Deep_2016_Total_biomass <- summarise_at(Western_Sambo_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2016_Total_biomass$Year <- ('2016')

###output
export(Western_Sambo_Deep_2016_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_2016_biomass_data.csv")

Western_Sambo_Deep_2018 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2018.xls")
Western_Sambo_Deep_2018_Total_biomass <- summarise_at(Western_Sambo_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2018_Total_biomass$Year <- ('2018')
###output
export(Western_Sambo_Deep_2018_Total_biomass,"Western_Sambo_Deep/data/Western_Sambo_Deep_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Western_Sambo_Deep_1999_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_1999_biomass_data.csv")
Western_Sambo_Deep_2000_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_2000_biomass_data.csv")
Western_Sambo_Deep_2001_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_2001_biomass_data.csv")
Western_Sambo_Deep_2002_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_2002_biomass_data.csv")
Western_Sambo_Deep_2003_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_2003_biomass_data.csv")
Western_Sambo_Deep_2004_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_2004_biomass_data.csv")
Western_Sambo_Deep_2005_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_2005_biomass_data.csv")
Western_Sambo_Deep_2006_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_2006_biomass_data.csv")
Western_Sambo_Deep_2007_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_2007_biomass_data.csv")
Western_Sambo_Deep_2008_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_2008_biomass_data.csv")
Western_Sambo_Deep_2009_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_2009_biomass_data.csv")
Western_Sambo_Deep_2010_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_2010_biomass_data.csv")
Western_Sambo_Deep_2011_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_2011_biomass_data.csv")
Western_Sambo_Deep_2012_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_2012_biomass_data.csv")
Western_Sambo_Deep_2014_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_2014_biomass_data.csv")
Western_Sambo_Deep_2016_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_2016_biomass_data.csv")
Western_Sambo_Deep_2018_merge <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_2018_biomass_data.csv")

Western_Sambo_Deep_merge_1 <- rbind(Western_Sambo_Deep_1999_merge,Western_Sambo_Deep_2000_merge)
Western_Sambo_Deep_merge_2 <- rbind(Western_Sambo_Deep_merge_1,Western_Sambo_Deep_2001_merge)
Western_Sambo_Deep_merge_3 <- rbind(Western_Sambo_Deep_merge_2,Western_Sambo_Deep_2002_merge)
Western_Sambo_Deep_merge_4 <- rbind(Western_Sambo_Deep_merge_3,Western_Sambo_Deep_2003_merge)
Western_Sambo_Deep_merge_5 <- rbind(Western_Sambo_Deep_merge_4,Western_Sambo_Deep_2004_merge)
Western_Sambo_Deep_merge_6 <- rbind(Western_Sambo_Deep_merge_5,Western_Sambo_Deep_2005_merge)
Western_Sambo_Deep_merge_7 <- rbind(Western_Sambo_Deep_merge_6,Western_Sambo_Deep_2006_merge)
Western_Sambo_Deep_merge_8 <- rbind(Western_Sambo_Deep_merge_7,Western_Sambo_Deep_2007_merge)
Western_Sambo_Deep_merge_9 <- rbind(Western_Sambo_Deep_merge_8,Western_Sambo_Deep_2008_merge)
Western_Sambo_Deep_merge_10 <- rbind(Western_Sambo_Deep_merge_9,Western_Sambo_Deep_2009_merge)
Western_Sambo_Deep_merge_11<- rbind(Western_Sambo_Deep_merge_10,Western_Sambo_Deep_2010_merge)
Western_Sambo_Deep_merge_12 <- rbind(Western_Sambo_Deep_merge_11,Western_Sambo_Deep_2011_merge)
Western_Sambo_Deep_merge_13 <- rbind(Western_Sambo_Deep_merge_12,Western_Sambo_Deep_2012_merge)
Western_Sambo_Deep_merge_14 <- rbind(Western_Sambo_Deep_merge_13,Western_Sambo_Deep_2014_merge)
Western_Sambo_Deep_merge_15 <- rbind(Western_Sambo_Deep_merge_14,Western_Sambo_Deep_2016_merge)
Western_Sambo_Deep_Reef_biomass_data_combined <- rbind(Western_Sambo_Deep_merge_15,Western_Sambo_Deep_2018_merge)

##output
export(Western_Sambo_Deep_Reef_biomass_data_combined,"Western_Sambo_Deep/data/Western_Sambo_Deep_biomass_data_combined.csv")


### Western Sambo shallow

##repeat for all years 99-16
Western_Sambo_Shallow_1999 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_1999.xls")
Western_Sambo_Shallow_1999_Total_biomass <- summarise_at(Western_Sambo_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_1999_Total_biomass$Year <- ('1999')
###output
export(Western_Sambo_Shallow_1999_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_1999_biomass_data.csv")

Western_Sambo_Shallow_2000 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2000.xls")
Western_Sambo_Shallow_2000_Total_biomass <- summarise_at(Western_Sambo_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2000_Total_biomass$Year <- ('2000')
###output
export(Western_Sambo_Shallow_2000_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_2000_biomass_data.csv")

Western_Sambo_Shallow_2001 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2001.xls")
Western_Sambo_Shallow_2001_Total_biomass <- summarise_at(Western_Sambo_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2001_Total_biomass$Year <- ('2001')
###output
export(Western_Sambo_Shallow_2001_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_2001_biomass_data.csv")

Western_Sambo_Shallow_2002 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2002.xls")
Western_Sambo_Shallow_2002_Total_biomass <- summarise_at(Western_Sambo_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2002_Total_biomass$Year <- ('2002')
###output
export(Western_Sambo_Shallow_2002_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_2002_biomass_data.csv")

Western_Sambo_Shallow_2003 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2003.xls")
Western_Sambo_Shallow_2003_Total_biomass <- summarise_at(Western_Sambo_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2003_Total_biomass$Year <- ('2003')
###output
export(Western_Sambo_Shallow_2003_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_2003_biomass_data.csv")


Western_Sambo_Shallow_2004 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2004.xls")
Western_Sambo_Shallow_2004_Total_biomass <- summarise_at(Western_Sambo_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2004_Total_biomass$Year <- ('2004')

###output
export(Western_Sambo_Shallow_2004_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_2004_biomass_data.csv")

Western_Sambo_Shallow_2005 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2005.xls")
Western_Sambo_Shallow_2005_Total_biomass <- summarise_at(Western_Sambo_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2005_Total_biomass$Year <- ('2005')
###output
export(Western_Sambo_Shallow_2005_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_2005_biomass_data.csv")


Western_Sambo_Shallow_2006 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2006.xls")
Western_Sambo_Shallow_2006_Total_biomass <- summarise_at(Western_Sambo_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2006_Total_biomass$Year <- ('2006')

###output
export(Western_Sambo_Shallow_2006_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_2006_biomass_data.csv")

Western_Sambo_Shallow_2007 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2007.xls")
Western_Sambo_Shallow_2007_Total_biomass <- summarise_at(Western_Sambo_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2007_Total_biomass$Year <- ('2007')
###output
export(Western_Sambo_Shallow_2007_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_2007_biomass_data.csv")


Western_Sambo_Shallow_2008 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2008.xls")
Western_Sambo_Shallow_2008_Total_biomass <- summarise_at(Western_Sambo_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2008_Total_biomass$Year <- ('2008')

###output
export(Western_Sambo_Shallow_2008_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_2008_biomass_data.csv")

Western_Sambo_Shallow_2009 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2009.xls")
Western_Sambo_Shallow_2009_Total_biomass <- summarise_at(Western_Sambo_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2009_Total_biomass$Year <- ('2009')
###output
export(Western_Sambo_Shallow_2009_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_2009_biomass_data.csv")


Western_Sambo_Shallow_2010 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2010.xls")
Western_Sambo_Shallow_2010_Total_biomass <- summarise_at(Western_Sambo_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2010_Total_biomass$Year <- ('2010')

###output
export(Western_Sambo_Shallow_2010_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_2010_biomass_data.csv")

Western_Sambo_Shallow_2011 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2011.xls")
Western_Sambo_Shallow_2011_Total_biomass <- summarise_at(Western_Sambo_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2011_Total_biomass$Year <- ('2011')
###output
export(Western_Sambo_Shallow_2011_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_2011_biomass_data.csv")


Western_Sambo_Shallow_2012 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2012.xls")
Western_Sambo_Shallow_2012_Total_biomass <- summarise_at(Western_Sambo_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2012_Total_biomass$Year <- ('2012')

###output
export(Western_Sambo_Shallow_2012_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_2012_biomass_data.csv")

Western_Sambo_Shallow_2014 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2014.xls")
Western_Sambo_Shallow_2014_Total_biomass <- summarise_at(Western_Sambo_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2014_Total_biomass$Year <- ('2014')

###output
export(Western_Sambo_Shallow_2014_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_2014_biomass_data.csv")

Western_Sambo_Shallow_2016 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2016.xls")
Western_Sambo_Shallow_2016_Total_biomass <- summarise_at(Western_Sambo_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2016_Total_biomass$Year <- ('2016')

###output
export(Western_Sambo_Shallow_2016_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_2016_biomass_data.csv")

Western_Sambo_Shallow_2018 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2018.xls")
Western_Sambo_Shallow_2018_Total_biomass <- summarise_at(Western_Sambo_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2018_Total_biomass$Year <- ('2018')
###output
export(Western_Sambo_Shallow_2018_Total_biomass,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Western_Sambo_Shallow_1999_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_1999_biomass_data.csv")
Western_Sambo_Shallow_2000_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2000_biomass_data.csv")
Western_Sambo_Shallow_2001_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2001_biomass_data.csv")
Western_Sambo_Shallow_2002_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2002_biomass_data.csv")
Western_Sambo_Shallow_2003_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2003_biomass_data.csv")
Western_Sambo_Shallow_2004_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2004_biomass_data.csv")
Western_Sambo_Shallow_2005_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2005_biomass_data.csv")
Western_Sambo_Shallow_2006_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2006_biomass_data.csv")
Western_Sambo_Shallow_2007_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2007_biomass_data.csv")
Western_Sambo_Shallow_2008_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2008_biomass_data.csv")
Western_Sambo_Shallow_2009_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2009_biomass_data.csv")
Western_Sambo_Shallow_2010_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2010_biomass_data.csv")
Western_Sambo_Shallow_2011_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2011_biomass_data.csv")
Western_Sambo_Shallow_2012_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2012_biomass_data.csv")
Western_Sambo_Shallow_2014_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2014_biomass_data.csv")
Western_Sambo_Shallow_2016_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2016_biomass_data.csv")
Western_Sambo_Shallow_2018_merge <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2018_biomass_data.csv")

Western_Sambo_Shallow_merge_1 <- rbind(Western_Sambo_Shallow_1999_merge,Western_Sambo_Shallow_2000_merge)
Western_Sambo_Shallow_merge_2 <- rbind(Western_Sambo_Shallow_merge_1,Western_Sambo_Shallow_2001_merge)
Western_Sambo_Shallow_merge_3 <- rbind(Western_Sambo_Shallow_merge_2,Western_Sambo_Shallow_2002_merge)
Western_Sambo_Shallow_merge_4 <- rbind(Western_Sambo_Shallow_merge_3,Western_Sambo_Shallow_2003_merge)
Western_Sambo_Shallow_merge_5 <- rbind(Western_Sambo_Shallow_merge_4,Western_Sambo_Shallow_2004_merge)
Western_Sambo_Shallow_merge_6 <- rbind(Western_Sambo_Shallow_merge_5,Western_Sambo_Shallow_2005_merge)
Western_Sambo_Shallow_merge_7 <- rbind(Western_Sambo_Shallow_merge_6,Western_Sambo_Shallow_2006_merge)
Western_Sambo_Shallow_merge_8 <- rbind(Western_Sambo_Shallow_merge_7,Western_Sambo_Shallow_2007_merge)
Western_Sambo_Shallow_merge_9 <- rbind(Western_Sambo_Shallow_merge_8,Western_Sambo_Shallow_2008_merge)
Western_Sambo_Shallow_merge_10 <- rbind(Western_Sambo_Shallow_merge_9,Western_Sambo_Shallow_2009_merge)
Western_Sambo_Shallow_merge_11<- rbind(Western_Sambo_Shallow_merge_10,Western_Sambo_Shallow_2010_merge)
Western_Sambo_Shallow_merge_12 <- rbind(Western_Sambo_Shallow_merge_11,Western_Sambo_Shallow_2011_merge)
Western_Sambo_Shallow_merge_13 <- rbind(Western_Sambo_Shallow_merge_12,Western_Sambo_Shallow_2012_merge)
Western_Sambo_Shallow_merge_14 <- rbind(Western_Sambo_Shallow_merge_13,Western_Sambo_Shallow_2014_merge)
Western_Sambo_Shallow_merge_15 <- rbind(Western_Sambo_Shallow_merge_14,Western_Sambo_Shallow_2016_merge)
Western_Sambo_Shallow_Reef_biomass_data_combined <- rbind(Western_Sambo_Shallow_merge_15,Western_Sambo_Shallow_2018_merge)

##output
export(Western_Sambo_Shallow_Reef_biomass_data_combined,"Western_Sambo_Shallow/data/Western_Sambo_Shallow_biomass_data_combined.csv")





#### MIDDLE KEYS  (missing 2004 data)

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/MK")

###Alligator Deep

##repeat for all years 99-16
Alligator_Deep_1999 <- import("Alligator_Deep/data/Alligator_Deep_1999.xls")
Alligator_Deep_1999_Total_biomass <- summarise_at(Alligator_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_1999_Total_biomass$Year <- ('1999')
###output
export(Alligator_Deep_1999_Total_biomass,"Alligator_Deep/data/Alligator_Deep_1999_biomass_data.csv")

Alligator_Deep_2000 <- import("Alligator_Deep/data/Alligator_Deep_2000.xls")
Alligator_Deep_2000_Total_biomass <- summarise_at(Alligator_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2000_Total_biomass$Year <- ('2000')
###output
export(Alligator_Deep_2000_Total_biomass,"Alligator_Deep/data/Alligator_Deep_2000_biomass_data.csv")

Alligator_Deep_2001 <- import("Alligator_Deep/data/Alligator_Deep_2001.xls")
Alligator_Deep_2001_Total_biomass <- summarise_at(Alligator_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2001_Total_biomass$Year <- ('2001')
###output
export(Alligator_Deep_2001_Total_biomass,"Alligator_Deep/data/Alligator_Deep_2001_biomass_data.csv")

Alligator_Deep_2002 <- import("Alligator_Deep/data/Alligator_Deep_2002.xls")
Alligator_Deep_2002_Total_biomass <- summarise_at(Alligator_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2002_Total_biomass$Year <- ('2002')
###output
export(Alligator_Deep_2002_Total_biomass,"Alligator_Deep/data/Alligator_Deep_2002_biomass_data.csv")

Alligator_Deep_2003 <- import("Alligator_Deep/data/Alligator_Deep_2003.xls")
Alligator_Deep_2003_Total_biomass <- summarise_at(Alligator_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2003_Total_biomass$Year <- ('2003')
###output
export(Alligator_Deep_2003_Total_biomass,"Alligator_Deep/data/Alligator_Deep_2003_biomass_data.csv")


#Alligator_Deep_2004 <- import("Alligator_Deep/data/Alligator_Deep_2004.xls")
#Alligator_Deep_2004_Total_biomass <- summarise_at(Alligator_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
#Alligator_Deep_2004_Total_biomass$Year <- ('2004')

###output
#export(Alligator_Deep_2004_Total_biomass,"Alligator_Deep/data/Alligator_Deep_2004_biomass_data.csv")

Alligator_Deep_2005 <- import("Alligator_Deep/data/Alligator_Deep_2005.xls")
Alligator_Deep_2005_Total_biomass <- summarise_at(Alligator_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2005_Total_biomass$Year <- ('2005')
###output
export(Alligator_Deep_2005_Total_biomass,"Alligator_Deep/data/Alligator_Deep_2005_biomass_data.csv")


Alligator_Deep_2006 <- import("Alligator_Deep/data/Alligator_Deep_2006.xls")
Alligator_Deep_2006_Total_biomass <- summarise_at(Alligator_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2006_Total_biomass$Year <- ('2006')

###output
export(Alligator_Deep_2006_Total_biomass,"Alligator_Deep/data/Alligator_Deep_2006_biomass_data.csv")

Alligator_Deep_2007 <- import("Alligator_Deep/data/Alligator_Deep_2007.xls")
Alligator_Deep_2007_Total_biomass <- summarise_at(Alligator_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2007_Total_biomass$Year <- ('2007')
###output
export(Alligator_Deep_2007_Total_biomass,"Alligator_Deep/data/Alligator_Deep_2007_biomass_data.csv")


Alligator_Deep_2008 <- import("Alligator_Deep/data/Alligator_Deep_2008.xls")
Alligator_Deep_2008_Total_biomass <- summarise_at(Alligator_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2008_Total_biomass$Year <- ('2008')

###output
export(Alligator_Deep_2008_Total_biomass,"Alligator_Deep/data/Alligator_Deep_2008_biomass_data.csv")

Alligator_Deep_2009 <- import("Alligator_Deep/data/Alligator_Deep_2009.xls")
Alligator_Deep_2009_Total_biomass <- summarise_at(Alligator_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2009_Total_biomass$Year <- ('2009')
###output
export(Alligator_Deep_2009_Total_biomass,"Alligator_Deep/data/Alligator_Deep_2009_biomass_data.csv")


Alligator_Deep_2010 <- import("Alligator_Deep/data/Alligator_Deep_2010.xls")
Alligator_Deep_2010_Total_biomass <- summarise_at(Alligator_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2010_Total_biomass$Year <- ('2010')

###output
export(Alligator_Deep_2010_Total_biomass,"Alligator_Deep/data/Alligator_Deep_2010_biomass_data.csv")

Alligator_Deep_2011 <- import("Alligator_Deep/data/Alligator_Deep_2011.xls")
Alligator_Deep_2011_Total_biomass <- summarise_at(Alligator_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2011_Total_biomass$Year <- ('2011')
###output
export(Alligator_Deep_2011_Total_biomass,"Alligator_Deep/data/Alligator_Deep_2011_biomass_data.csv")


Alligator_Deep_2012 <- import("Alligator_Deep/data/Alligator_Deep_2012.xls")
Alligator_Deep_2012_Total_biomass <- summarise_at(Alligator_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2012_Total_biomass$Year <- ('2012')

###output
export(Alligator_Deep_2012_Total_biomass,"Alligator_Deep/data/Alligator_Deep_2012_biomass_data.csv")

Alligator_Deep_2014 <- import("Alligator_Deep/data/Alligator_Deep_2014.xls")
Alligator_Deep_2014_Total_biomass <- summarise_at(Alligator_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2014_Total_biomass$Year <- ('2014')

###output
export(Alligator_Deep_2014_Total_biomass,"Alligator_Deep/data/Alligator_Deep_2014_biomass_data.csv")

Alligator_Deep_2016 <- import("Alligator_Deep/data/Alligator_Deep_2016.xls")
Alligator_Deep_2016_Total_biomass <- summarise_at(Alligator_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2016_Total_biomass$Year <- ('2016')

###output
export(Alligator_Deep_2016_Total_biomass,"Alligator_Deep/data/Alligator_Deep_2016_biomass_data.csv")

Alligator_Deep_2018 <- import("Alligator_Deep/data/Alligator_Deep_2018.xls")
Alligator_Deep_2018_Total_biomass <- summarise_at(Alligator_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2018_Total_biomass$Year <- ('2018')
###output
export(Alligator_Deep_2018_Total_biomass,"Alligator_Deep/data/Alligator_Deep_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Alligator_Deep_1999_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_1999_biomass_data.csv")
Alligator_Deep_2000_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_2000_biomass_data.csv")
Alligator_Deep_2001_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_2001_biomass_data.csv")
Alligator_Deep_2002_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_2002_biomass_data.csv")
Alligator_Deep_2003_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_2003_biomass_data.csv")
#Alligator_Deep_2004_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_2004_biomass_data.csv")
Alligator_Deep_2005_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_2005_biomass_data.csv")
Alligator_Deep_2006_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_2006_biomass_data.csv")
Alligator_Deep_2007_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_2007_biomass_data.csv")
Alligator_Deep_2008_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_2008_biomass_data.csv")
Alligator_Deep_2009_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_2009_biomass_data.csv")
Alligator_Deep_2010_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_2010_biomass_data.csv")
Alligator_Deep_2011_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_2011_biomass_data.csv")
Alligator_Deep_2012_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_2012_biomass_data.csv")
Alligator_Deep_2014_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_2014_biomass_data.csv")
Alligator_Deep_2016_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_2016_biomass_data.csv")
Alligator_Deep_2018_merge <- read_csv("Alligator_Deep/data/Alligator_Deep_2018_biomass_data.csv")

Alligator_Deep_merge_1 <- rbind(Alligator_Deep_1999_merge,Alligator_Deep_2000_merge)
Alligator_Deep_merge_2 <- rbind(Alligator_Deep_merge_1,Alligator_Deep_2001_merge)
Alligator_Deep_merge_3 <- rbind(Alligator_Deep_merge_2,Alligator_Deep_2002_merge)
Alligator_Deep_merge_5 <- rbind(Alligator_Deep_merge_3,Alligator_Deep_2003_merge)
Alligator_Deep_merge_6 <- rbind(Alligator_Deep_merge_5,Alligator_Deep_2005_merge)
Alligator_Deep_merge_7 <- rbind(Alligator_Deep_merge_6,Alligator_Deep_2006_merge)
Alligator_Deep_merge_8 <- rbind(Alligator_Deep_merge_7,Alligator_Deep_2007_merge)
Alligator_Deep_merge_9 <- rbind(Alligator_Deep_merge_8,Alligator_Deep_2008_merge)
Alligator_Deep_merge_10 <- rbind(Alligator_Deep_merge_9,Alligator_Deep_2009_merge)
Alligator_Deep_merge_11 <- rbind(Alligator_Deep_merge_10,Alligator_Deep_2010_merge)
Alligator_Deep_merge_12<- rbind(Alligator_Deep_merge_11,Alligator_Deep_2011_merge)
Alligator_Deep_merge_13 <- rbind(Alligator_Deep_merge_12,Alligator_Deep_2012_merge)
Alligator_Deep_merge_14 <- rbind(Alligator_Deep_merge_13,Alligator_Deep_2014_merge)
Alligator_Deep_merge_15 <- rbind(Alligator_Deep_merge_14,Alligator_Deep_2016_merge)
Alligator_Deep_Reef_biomass_data_combined <- rbind(Alligator_Deep_merge_15,Alligator_Deep_2018_merge)


##output
export(Alligator_Deep_Reef_biomass_data_combined,"Alligator_Deep/data/Alligator_Deep_biomass_data_combined.csv")


##Alligator Shallow



##repeat for all years 99-16
Alligator_Shallow_1999 <- import("Alligator_Shallow/data/Alligator_Shallow_1999.xls")
Alligator_Shallow_1999_Total_biomass <- summarise_at(Alligator_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_1999_Total_biomass$Year <- ('1999')
###output
export(Alligator_Shallow_1999_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_1999_biomass_data.csv")

Alligator_Shallow_2000 <- import("Alligator_Shallow/data/Alligator_Shallow_2000.xls")
Alligator_Shallow_2000_Total_biomass <- summarise_at(Alligator_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2000_Total_biomass$Year <- ('2000')
###output
export(Alligator_Shallow_2000_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_2000_biomass_data.csv")

Alligator_Shallow_2001 <- import("Alligator_Shallow/data/Alligator_Shallow_2001.xls")
Alligator_Shallow_2001_Total_biomass <- summarise_at(Alligator_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2001_Total_biomass$Year <- ('2001')
###output
export(Alligator_Shallow_2001_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_2001_biomass_data.csv")

Alligator_Shallow_2002 <- import("Alligator_Shallow/data/Alligator_Shallow_2002.xls")
Alligator_Shallow_2002_Total_biomass <- summarise_at(Alligator_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2002_Total_biomass$Year <- ('2002')
###output
export(Alligator_Shallow_2002_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_2002_biomass_data.csv")

Alligator_Shallow_2003 <- import("Alligator_Shallow/data/Alligator_Shallow_2003.xls")
Alligator_Shallow_2003_Total_biomass <- summarise_at(Alligator_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2003_Total_biomass$Year <- ('2003')
###output
export(Alligator_Shallow_2003_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_2003_biomass_data.csv")


#Alligator_Shallow_2004 <- import("Alligator_Shallow/data/Alligator_Shallow_2004.xls")
#Alligator_Shallow_2004_Total_biomass <- summarise_at(Alligator_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
#Alligator_Shallow_2004_Total_biomass$Year <- ('2004')

###output
#export(Alligator_Shallow_2004_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_2004_biomass_data.csv")

Alligator_Shallow_2005 <- import("Alligator_Shallow/data/Alligator_Shallow_2005.xls")
Alligator_Shallow_2005_Total_biomass <- summarise_at(Alligator_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2005_Total_biomass$Year <- ('2005')
###output
export(Alligator_Shallow_2005_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_2005_biomass_data.csv")


Alligator_Shallow_2006 <- import("Alligator_Shallow/data/Alligator_Shallow_2006.xls")
Alligator_Shallow_2006_Total_biomass <- summarise_at(Alligator_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2006_Total_biomass$Year <- ('2006')

###output
export(Alligator_Shallow_2006_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_2006_biomass_data.csv")

Alligator_Shallow_2007 <- import("Alligator_Shallow/data/Alligator_Shallow_2007.xls")
Alligator_Shallow_2007_Total_biomass <- summarise_at(Alligator_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2007_Total_biomass$Year <- ('2007')
###output
export(Alligator_Shallow_2007_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_2007_biomass_data.csv")


Alligator_Shallow_2008 <- import("Alligator_Shallow/data/Alligator_Shallow_2008.xls")
Alligator_Shallow_2008_Total_biomass <- summarise_at(Alligator_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2008_Total_biomass$Year <- ('2008')

###output
export(Alligator_Shallow_2008_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_2008_biomass_data.csv")

Alligator_Shallow_2009 <- import("Alligator_Shallow/data/Alligator_Shallow_2009.xls")
Alligator_Shallow_2009_Total_biomass <- summarise_at(Alligator_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2009_Total_biomass$Year <- ('2009')
###output
export(Alligator_Shallow_2009_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_2009_biomass_data.csv")


Alligator_Shallow_2010 <- import("Alligator_Shallow/data/Alligator_Shallow_2010.xls")
Alligator_Shallow_2010_Total_biomass <- summarise_at(Alligator_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2010_Total_biomass$Year <- ('2010')

###output
export(Alligator_Shallow_2010_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_2010_biomass_data.csv")

Alligator_Shallow_2011 <- import("Alligator_Shallow/data/Alligator_Shallow_2011.xls")
Alligator_Shallow_2011_Total_biomass <- summarise_at(Alligator_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2011_Total_biomass$Year <- ('2011')
###output
export(Alligator_Shallow_2011_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_2011_biomass_data.csv")


Alligator_Shallow_2012 <- import("Alligator_Shallow/data/Alligator_Shallow_2012.xls")
Alligator_Shallow_2012_Total_biomass <- summarise_at(Alligator_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2012_Total_biomass$Year <- ('2012')

###output
export(Alligator_Shallow_2012_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_2012_biomass_data.csv")

Alligator_Shallow_2014 <- import("Alligator_Shallow/data/Alligator_Shallow_2014.xls")
Alligator_Shallow_2014_Total_biomass <- summarise_at(Alligator_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2014_Total_biomass$Year <- ('2014')

###output
export(Alligator_Shallow_2014_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_2014_biomass_data.csv")

Alligator_Shallow_2016 <- import("Alligator_Shallow/data/Alligator_Shallow_2016.xls")
Alligator_Shallow_2016_Total_biomass <- summarise_at(Alligator_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2016_Total_biomass$Year <- ('2016')

###output
export(Alligator_Shallow_2016_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_2016_biomass_data.csv")

Alligator_Shallow_2018 <- import("Alligator_Shallow/data/Alligator_Shallow_2018.xls")
Alligator_Shallow_2018_Total_biomass <- summarise_at(Alligator_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2018_Total_biomass$Year <- ('2018')
###output
export(Alligator_Shallow_2018_Total_biomass,"Alligator_Shallow/data/Alligator_Shallow_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Alligator_Shallow_1999_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_1999_biomass_data.csv")
Alligator_Shallow_2000_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_2000_biomass_data.csv")
Alligator_Shallow_2001_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_2001_biomass_data.csv")
Alligator_Shallow_2002_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_2002_biomass_data.csv")
Alligator_Shallow_2003_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_2003_biomass_data.csv")
#Alligator_Shallow_2004_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_2004_biomass_data.csv")
Alligator_Shallow_2005_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_2005_biomass_data.csv")
Alligator_Shallow_2006_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_2006_biomass_data.csv")
Alligator_Shallow_2007_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_2007_biomass_data.csv")
Alligator_Shallow_2008_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_2008_biomass_data.csv")
Alligator_Shallow_2009_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_2009_biomass_data.csv")
Alligator_Shallow_2010_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_2010_biomass_data.csv")
Alligator_Shallow_2011_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_2011_biomass_data.csv")
Alligator_Shallow_2012_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_2012_biomass_data.csv")
Alligator_Shallow_2014_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_2014_biomass_data.csv")
Alligator_Shallow_2016_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_2016_biomass_data.csv")
Alligator_Shallow_2018_merge <- read_csv("Alligator_Shallow/data/Alligator_Shallow_2018_biomass_data.csv")

Alligator_Shallow_merge_1 <- rbind(Alligator_Shallow_1999_merge,Alligator_Shallow_2000_merge)
Alligator_Shallow_merge_2 <- rbind(Alligator_Shallow_merge_1,Alligator_Shallow_2001_merge)
Alligator_Shallow_merge_3 <- rbind(Alligator_Shallow_merge_2,Alligator_Shallow_2002_merge)
Alligator_Shallow_merge_5 <- rbind(Alligator_Shallow_merge_3,Alligator_Shallow_2003_merge)
Alligator_Shallow_merge_6 <- rbind(Alligator_Shallow_merge_5,Alligator_Shallow_2005_merge)
Alligator_Shallow_merge_7 <- rbind(Alligator_Shallow_merge_6,Alligator_Shallow_2006_merge)
Alligator_Shallow_merge_8 <- rbind(Alligator_Shallow_merge_7,Alligator_Shallow_2007_merge)
Alligator_Shallow_merge_9 <- rbind(Alligator_Shallow_merge_8,Alligator_Shallow_2008_merge)
Alligator_Shallow_merge_10 <- rbind(Alligator_Shallow_merge_9,Alligator_Shallow_2009_merge)
Alligator_Shallow_merge_11 <- rbind(Alligator_Shallow_merge_10,Alligator_Shallow_2010_merge)
Alligator_Shallow_merge_12<- rbind(Alligator_Shallow_merge_11,Alligator_Shallow_2011_merge)
Alligator_Shallow_merge_13 <- rbind(Alligator_Shallow_merge_12,Alligator_Shallow_2012_merge)
Alligator_Shallow_merge_14 <- rbind(Alligator_Shallow_merge_13,Alligator_Shallow_2014_merge)
Alligator_Shallow_merge_15 <- rbind(Alligator_Shallow_merge_14,Alligator_Shallow_2016_merge)
Alligator_Shallow_Reef_biomass_data_combined <- rbind(Alligator_Shallow_merge_15,Alligator_Shallow_2018_merge)


##output
export(Alligator_Shallow_Reef_biomass_data_combined,"Alligator_Shallow/data/Alligator_Shallow_biomass_data_combined.csv")



###Dustan Rocks



##repeat for all years 99-16
Dustan_Rocks_1999 <- import("Dustan_Rocks/data/Dustan_Rocks_1999.xls")
Dustan_Rocks_1999_Total_biomass <- summarise_at(Dustan_Rocks_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_1999_Total_biomass$Year <- ('1999')
###output
export(Dustan_Rocks_1999_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_1999_biomass_data.csv")

Dustan_Rocks_2000 <- import("Dustan_Rocks/data/Dustan_Rocks_2000.xls")
Dustan_Rocks_2000_Total_biomass <- summarise_at(Dustan_Rocks_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2000_Total_biomass$Year <- ('2000')
###output
export(Dustan_Rocks_2000_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_2000_biomass_data.csv")

Dustan_Rocks_2001 <- import("Dustan_Rocks/data/Dustan_Rocks_2001.xls")
Dustan_Rocks_2001_Total_biomass <- summarise_at(Dustan_Rocks_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2001_Total_biomass$Year <- ('2001')
###output
export(Dustan_Rocks_2001_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_2001_biomass_data.csv")

Dustan_Rocks_2002 <- import("Dustan_Rocks/data/Dustan_Rocks_2002.xls")
Dustan_Rocks_2002_Total_biomass <- summarise_at(Dustan_Rocks_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2002_Total_biomass$Year <- ('2002')
###output
export(Dustan_Rocks_2002_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_2002_biomass_data.csv")

Dustan_Rocks_2003 <- import("Dustan_Rocks/data/Dustan_Rocks_2003.xls")
Dustan_Rocks_2003_Total_biomass <- summarise_at(Dustan_Rocks_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2003_Total_biomass$Year <- ('2003')
###output
export(Dustan_Rocks_2003_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_2003_biomass_data.csv")


#Dustan_Rocks_2004 <- import("Dustan_Rocks/data/Dustan_Rocks_2004.xls")
#Dustan_Rocks_2004_Total_biomass <- summarise_at(Dustan_Rocks_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
#Dustan_Rocks_2004_Total_biomass$Year <- ('2004')

###output
#export(Dustan_Rocks_2004_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_2004_biomass_data.csv")

Dustan_Rocks_2005 <- import("Dustan_Rocks/data/Dustan_Rocks_2005.xls")
Dustan_Rocks_2005_Total_biomass <- summarise_at(Dustan_Rocks_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2005_Total_biomass$Year <- ('2005')
###output
export(Dustan_Rocks_2005_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_2005_biomass_data.csv")


Dustan_Rocks_2006 <- import("Dustan_Rocks/data/Dustan_Rocks_2006.xls")
Dustan_Rocks_2006_Total_biomass <- summarise_at(Dustan_Rocks_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2006_Total_biomass$Year <- ('2006')

###output
export(Dustan_Rocks_2006_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_2006_biomass_data.csv")

Dustan_Rocks_2007 <- import("Dustan_Rocks/data/Dustan_Rocks_2007.xls")
Dustan_Rocks_2007_Total_biomass <- summarise_at(Dustan_Rocks_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2007_Total_biomass$Year <- ('2007')
###output
export(Dustan_Rocks_2007_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_2007_biomass_data.csv")


Dustan_Rocks_2008 <- import("Dustan_Rocks/data/Dustan_Rocks_2008.xls")
Dustan_Rocks_2008_Total_biomass <- summarise_at(Dustan_Rocks_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2008_Total_biomass$Year <- ('2008')

###output
export(Dustan_Rocks_2008_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_2008_biomass_data.csv")

Dustan_Rocks_2009 <- import("Dustan_Rocks/data/Dustan_Rocks_2009.xls")
Dustan_Rocks_2009_Total_biomass <- summarise_at(Dustan_Rocks_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2009_Total_biomass$Year <- ('2009')
###output
export(Dustan_Rocks_2009_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_2009_biomass_data.csv")


Dustan_Rocks_2010 <- import("Dustan_Rocks/data/Dustan_Rocks_2010.xls")
Dustan_Rocks_2010_Total_biomass <- summarise_at(Dustan_Rocks_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2010_Total_biomass$Year <- ('2010')

###output
export(Dustan_Rocks_2010_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_2010_biomass_data.csv")

Dustan_Rocks_2011 <- import("Dustan_Rocks/data/Dustan_Rocks_2011.xls")
Dustan_Rocks_2011_Total_biomass <- summarise_at(Dustan_Rocks_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2011_Total_biomass$Year <- ('2011')
###output
export(Dustan_Rocks_2011_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_2011_biomass_data.csv")


Dustan_Rocks_2012 <- import("Dustan_Rocks/data/Dustan_Rocks_2012.xls")
Dustan_Rocks_2012_Total_biomass <- summarise_at(Dustan_Rocks_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2012_Total_biomass$Year <- ('2012')

###output
export(Dustan_Rocks_2012_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_2012_biomass_data.csv")

Dustan_Rocks_2014 <- import("Dustan_Rocks/data/Dustan_Rocks_2014.xls")
Dustan_Rocks_2014_Total_biomass <- summarise_at(Dustan_Rocks_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2014_Total_biomass$Year <- ('2014')

###output
export(Dustan_Rocks_2014_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_2014_biomass_data.csv")

Dustan_Rocks_2016 <- import("Dustan_Rocks/data/Dustan_Rocks_2016.xls")
Dustan_Rocks_2016_Total_biomass <- summarise_at(Dustan_Rocks_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2016_Total_biomass$Year <- ('2016')

###output
export(Dustan_Rocks_2016_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_2016_biomass_data.csv")

Dustan_Rocks_2018 <- import("Dustan_Rocks/data/Dustan_Rocks_2018.xls")
Dustan_Rocks_2018_Total_biomass <- summarise_at(Dustan_Rocks_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2018_Total_biomass$Year <- ('2018')
###output
export(Dustan_Rocks_2018_Total_biomass,"Dustan_Rocks/data/Dustan_Rocks_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Dustan_Rocks_1999_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_1999_biomass_data.csv")
Dustan_Rocks_2000_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_2000_biomass_data.csv")
Dustan_Rocks_2001_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_2001_biomass_data.csv")
Dustan_Rocks_2002_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_2002_biomass_data.csv")
Dustan_Rocks_2003_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_2003_biomass_data.csv")
#Dustan_Rocks_2004_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_2004_biomass_data.csv")
Dustan_Rocks_2005_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_2005_biomass_data.csv")
Dustan_Rocks_2006_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_2006_biomass_data.csv")
Dustan_Rocks_2007_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_2007_biomass_data.csv")
Dustan_Rocks_2008_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_2008_biomass_data.csv")
Dustan_Rocks_2009_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_2009_biomass_data.csv")
Dustan_Rocks_2010_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_2010_biomass_data.csv")
Dustan_Rocks_2011_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_2011_biomass_data.csv")
Dustan_Rocks_2012_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_2012_biomass_data.csv")
Dustan_Rocks_2014_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_2014_biomass_data.csv")
Dustan_Rocks_2016_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_2016_biomass_data.csv")
Dustan_Rocks_2018_merge <- read_csv("Dustan_Rocks/data/Dustan_Rocks_2018_biomass_data.csv")

Dustan_Rocks_merge_1 <- rbind(Dustan_Rocks_1999_merge,Dustan_Rocks_2000_merge)
Dustan_Rocks_merge_2 <- rbind(Dustan_Rocks_merge_1,Dustan_Rocks_2001_merge)
Dustan_Rocks_merge_3 <- rbind(Dustan_Rocks_merge_2,Dustan_Rocks_2002_merge)
Dustan_Rocks_merge_5 <- rbind(Dustan_Rocks_merge_3,Dustan_Rocks_2003_merge)
Dustan_Rocks_merge_6 <- rbind(Dustan_Rocks_merge_5,Dustan_Rocks_2005_merge)
Dustan_Rocks_merge_7 <- rbind(Dustan_Rocks_merge_6,Dustan_Rocks_2006_merge)
Dustan_Rocks_merge_8 <- rbind(Dustan_Rocks_merge_7,Dustan_Rocks_2007_merge)
Dustan_Rocks_merge_9 <- rbind(Dustan_Rocks_merge_8,Dustan_Rocks_2008_merge)
Dustan_Rocks_merge_10 <- rbind(Dustan_Rocks_merge_9,Dustan_Rocks_2009_merge)
Dustan_Rocks_merge_11 <- rbind(Dustan_Rocks_merge_10,Dustan_Rocks_2010_merge)
Dustan_Rocks_merge_12<- rbind(Dustan_Rocks_merge_11,Dustan_Rocks_2011_merge)
Dustan_Rocks_merge_13 <- rbind(Dustan_Rocks_merge_12,Dustan_Rocks_2012_merge)
Dustan_Rocks_merge_14 <- rbind(Dustan_Rocks_merge_13,Dustan_Rocks_2014_merge)
Dustan_Rocks_merge_15 <- rbind(Dustan_Rocks_merge_14,Dustan_Rocks_2016_merge)
Dustan_Rocks_Reef_biomass_data_combined <- rbind(Dustan_Rocks_merge_15,Dustan_Rocks_2018_merge)


##output
export(Dustan_Rocks_Reef_biomass_data_combined,"Dustan_Rocks/data/Dustan_Rocks_biomass_data_combined.csv")


###Long Key



##repeat for all years 99-16
Long_Key_1999 <- import("Long_Key/data/Long_Key_1999.xls")
Long_Key_1999_Total_biomass <- summarise_at(Long_Key_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_1999_Total_biomass$Year <- ('1999')
###output
export(Long_Key_1999_Total_biomass,"Long_Key/data/Long_Key_1999_biomass_data.csv")

Long_Key_2000 <- import("Long_Key/data/Long_Key_2000.xls")
Long_Key_2000_Total_biomass <- summarise_at(Long_Key_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2000_Total_biomass$Year <- ('2000')
###output
export(Long_Key_2000_Total_biomass,"Long_Key/data/Long_Key_2000_biomass_data.csv")

Long_Key_2001 <- import("Long_Key/data/Long_Key_2001.xls")
Long_Key_2001_Total_biomass <- summarise_at(Long_Key_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2001_Total_biomass$Year <- ('2001')
###output
export(Long_Key_2001_Total_biomass,"Long_Key/data/Long_Key_2001_biomass_data.csv")

Long_Key_2002 <- import("Long_Key/data/Long_Key_2002.xls")
Long_Key_2002_Total_biomass <- summarise_at(Long_Key_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2002_Total_biomass$Year <- ('2002')
###output
export(Long_Key_2002_Total_biomass,"Long_Key/data/Long_Key_2002_biomass_data.csv")

Long_Key_2003 <- import("Long_Key/data/Long_Key_2003.xls")
Long_Key_2003_Total_biomass <- summarise_at(Long_Key_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2003_Total_biomass$Year <- ('2003')
###output
export(Long_Key_2003_Total_biomass,"Long_Key/data/Long_Key_2003_biomass_data.csv")


#Long_Key_2004 <- import("Long_Key/data/Long_Key_2004.xls")
#Long_Key_2004_Total_biomass <- summarise_at(Long_Key_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
#Long_Key_2004_Total_biomass$Year <- ('2004')

###output
#export(Long_Key_2004_Total_biomass,"Long_Key/data/Long_Key_2004_biomass_data.csv")

Long_Key_2005 <- import("Long_Key/data/Long_Key_2005.xls")
Long_Key_2005_Total_biomass <- summarise_at(Long_Key_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2005_Total_biomass$Year <- ('2005')
###output
export(Long_Key_2005_Total_biomass,"Long_Key/data/Long_Key_2005_biomass_data.csv")


Long_Key_2006 <- import("Long_Key/data/Long_Key_2006.xls")
Long_Key_2006_Total_biomass <- summarise_at(Long_Key_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2006_Total_biomass$Year <- ('2006')

###output
export(Long_Key_2006_Total_biomass,"Long_Key/data/Long_Key_2006_biomass_data.csv")

Long_Key_2007 <- import("Long_Key/data/Long_Key_2007.xls")
Long_Key_2007_Total_biomass <- summarise_at(Long_Key_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2007_Total_biomass$Year <- ('2007')
###output
export(Long_Key_2007_Total_biomass,"Long_Key/data/Long_Key_2007_biomass_data.csv")


Long_Key_2008 <- import("Long_Key/data/Long_Key_2008.xls")
Long_Key_2008_Total_biomass <- summarise_at(Long_Key_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2008_Total_biomass$Year <- ('2008')

###output
export(Long_Key_2008_Total_biomass,"Long_Key/data/Long_Key_2008_biomass_data.csv")

Long_Key_2009 <- import("Long_Key/data/Long_Key_2009.xls")
Long_Key_2009_Total_biomass <- summarise_at(Long_Key_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2009_Total_biomass$Year <- ('2009')
###output
export(Long_Key_2009_Total_biomass,"Long_Key/data/Long_Key_2009_biomass_data.csv")


Long_Key_2010 <- import("Long_Key/data/Long_Key_2010.xls")
Long_Key_2010_Total_biomass <- summarise_at(Long_Key_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2010_Total_biomass$Year <- ('2010')

###output
export(Long_Key_2010_Total_biomass,"Long_Key/data/Long_Key_2010_biomass_data.csv")

Long_Key_2011 <- import("Long_Key/data/Long_Key_2011.xls")
Long_Key_2011_Total_biomass <- summarise_at(Long_Key_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2011_Total_biomass$Year <- ('2011')
###output
export(Long_Key_2011_Total_biomass,"Long_Key/data/Long_Key_2011_biomass_data.csv")


Long_Key_2012 <- import("Long_Key/data/Long_Key_2012.xls")
Long_Key_2012_Total_biomass <- summarise_at(Long_Key_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2012_Total_biomass$Year <- ('2012')

###output
export(Long_Key_2012_Total_biomass,"Long_Key/data/Long_Key_2012_biomass_data.csv")

Long_Key_2014 <- import("Long_Key/data/Long_Key_2014.xls")
Long_Key_2014_Total_biomass <- summarise_at(Long_Key_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2014_Total_biomass$Year <- ('2014')

###output
export(Long_Key_2014_Total_biomass,"Long_Key/data/Long_Key_2014_biomass_data.csv")

Long_Key_2016 <- import("Long_Key/data/Long_Key_2016.xls")
Long_Key_2016_Total_biomass <- summarise_at(Long_Key_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2016_Total_biomass$Year <- ('2016')

###output
export(Long_Key_2016_Total_biomass,"Long_Key/data/Long_Key_2016_biomass_data.csv")

Long_Key_2018 <- import("Long_Key/data/Long_Key_2018.xls")
Long_Key_2018_Total_biomass <- summarise_at(Long_Key_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2018_Total_biomass$Year <- ('2018')
###output
export(Long_Key_2018_Total_biomass,"Long_Key/data/Long_Key_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Long_Key_1999_merge <- read_csv("Long_Key/data/Long_Key_1999_biomass_data.csv")
Long_Key_2000_merge <- read_csv("Long_Key/data/Long_Key_2000_biomass_data.csv")
Long_Key_2001_merge <- read_csv("Long_Key/data/Long_Key_2001_biomass_data.csv")
Long_Key_2002_merge <- read_csv("Long_Key/data/Long_Key_2002_biomass_data.csv")
Long_Key_2003_merge <- read_csv("Long_Key/data/Long_Key_2003_biomass_data.csv")
#Long_Key_2004_merge <- read_csv("Long_Key/data/Long_Key_2004_biomass_data.csv")
Long_Key_2005_merge <- read_csv("Long_Key/data/Long_Key_2005_biomass_data.csv")
Long_Key_2006_merge <- read_csv("Long_Key/data/Long_Key_2006_biomass_data.csv")
Long_Key_2007_merge <- read_csv("Long_Key/data/Long_Key_2007_biomass_data.csv")
Long_Key_2008_merge <- read_csv("Long_Key/data/Long_Key_2008_biomass_data.csv")
Long_Key_2009_merge <- read_csv("Long_Key/data/Long_Key_2009_biomass_data.csv")
Long_Key_2010_merge <- read_csv("Long_Key/data/Long_Key_2010_biomass_data.csv")
Long_Key_2011_merge <- read_csv("Long_Key/data/Long_Key_2011_biomass_data.csv")
Long_Key_2012_merge <- read_csv("Long_Key/data/Long_Key_2012_biomass_data.csv")
Long_Key_2014_merge <- read_csv("Long_Key/data/Long_Key_2014_biomass_data.csv")
Long_Key_2016_merge <- read_csv("Long_Key/data/Long_Key_2016_biomass_data.csv")
Long_Key_2018_merge <- read_csv("Long_Key/data/Long_Key_2018_biomass_data.csv")

Long_Key_merge_1 <- rbind(Long_Key_1999_merge,Long_Key_2000_merge)
Long_Key_merge_2 <- rbind(Long_Key_merge_1,Long_Key_2001_merge)
Long_Key_merge_3 <- rbind(Long_Key_merge_2,Long_Key_2002_merge)
Long_Key_merge_5 <- rbind(Long_Key_merge_3,Long_Key_2003_merge)
Long_Key_merge_6 <- rbind(Long_Key_merge_5,Long_Key_2005_merge)
Long_Key_merge_7 <- rbind(Long_Key_merge_6,Long_Key_2006_merge)
Long_Key_merge_8 <- rbind(Long_Key_merge_7,Long_Key_2007_merge)
Long_Key_merge_9 <- rbind(Long_Key_merge_8,Long_Key_2008_merge)
Long_Key_merge_10 <- rbind(Long_Key_merge_9,Long_Key_2009_merge)
Long_Key_merge_11 <- rbind(Long_Key_merge_10,Long_Key_2010_merge)
Long_Key_merge_12<- rbind(Long_Key_merge_11,Long_Key_2011_merge)
Long_Key_merge_13 <- rbind(Long_Key_merge_12,Long_Key_2012_merge)
Long_Key_merge_14 <- rbind(Long_Key_merge_13,Long_Key_2014_merge)
Long_Key_merge_15 <- rbind(Long_Key_merge_14,Long_Key_2016_merge)
Long_Key_Reef_biomass_data_combined <- rbind(Long_Key_merge_15,Long_Key_2018_merge)


##output
export(Long_Key_Reef_biomass_data_combined,"Long_Key/data/Long_Key_biomass_data_combined.csv")


###Molassess Key (no data)



##repeat for all years 99-16
Molasses_Keys_1999 <- import("Molasses_Keys/data/Molasses_Keys_1999.xls")
Molasses_Keys_1999_Total_biomass <- summarise_at(Molasses_Keys_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_1999_Total_biomass$Year <- ('1999')
###output
export(Molasses_Keys_1999_Total_biomass,"Molasses_Keys/data/Molasses_Keys_1999_biomass_data.csv")

Molasses_Keys_2000 <- import("Molasses_Keys/data/Molasses_Keys_2000.xls")
Molasses_Keys_2000_Total_biomass <- summarise_at(Molasses_Keys_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2000_Total_biomass$Year <- ('2000')
###output
export(Molasses_Keys_2000_Total_biomass,"Molasses_Keys/data/Molasses_Keys_2000_biomass_data.csv")

Molasses_Keys_2001 <- import("Molasses_Keys/data/Molasses_Keys_2001.xls")
Molasses_Keys_2001_Total_biomass <- summarise_at(Molasses_Keys_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2001_Total_biomass$Year <- ('2001')
###output
export(Molasses_Keys_2001_Total_biomass,"Molasses_Keys/data/Molasses_Keys_2001_biomass_data.csv")

Molasses_Keys_2002 <- import("Molasses_Keys/data/Molasses_Keys_2002.xls")
Molasses_Keys_2002_Total_biomass <- summarise_at(Molasses_Keys_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2002_Total_biomass$Year <- ('2002')
###output
export(Molasses_Keys_2002_Total_biomass,"Molasses_Keys/data/Molasses_Keys_2002_biomass_data.csv")

Molasses_Keys_2003 <- import("Molasses_Keys/data/Molasses_Keys_2003.xls")
Molasses_Keys_2003_Total_biomass <- summarise_at(Molasses_Keys_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2003_Total_biomass$Year <- ('2003')
###output
export(Molasses_Keys_2003_Total_biomass,"Molasses_Keys/data/Molasses_Keys_2003_biomass_data.csv")


#Molasses_Keys_2004 <- import("Molasses_Keys/data/Molasses_Keys_2004.xls")
#Molasses_Keys_2004_Total_biomass <- summarise_at(Molasses_Keys_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
#Molasses_Keys_2004_Total_biomass$Year <- ('2004')

###output
#export(Molasses_Keys_2004_Total_biomass,"Molasses_Keys/data/Molasses_Keys_2004_biomass_data.csv")

Molasses_Keys_2005 <- import("Molasses_Keys/data/Molasses_Keys_2005.xls")
Molasses_Keys_2005_Total_biomass <- summarise_at(Molasses_Keys_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2005_Total_biomass$Year <- ('2005')
###output
export(Molasses_Keys_2005_Total_biomass,"Molasses_Keys/data/Molasses_Keys_2005_biomass_data.csv")


Molasses_Keys_2006 <- import("Molasses_Keys/data/Molasses_Keys_2006.xls")
Molasses_Keys_2006_Total_biomass <- summarise_at(Molasses_Keys_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2006_Total_biomass$Year <- ('2006')

###output
export(Molasses_Keys_2006_Total_biomass,"Molasses_Keys/data/Molasses_Keys_2006_biomass_data.csv")

Molasses_Keys_2007 <- import("Molasses_Keys/data/Molasses_Keys_2007.xls")
Molasses_Keys_2007_Total_biomass <- summarise_at(Molasses_Keys_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2007_Total_biomass$Year <- ('2007')
###output
export(Molasses_Keys_2007_Total_biomass,"Molasses_Keys/data/Molasses_Keys_2007_biomass_data.csv")


Molasses_Keys_2008 <- import("Molasses_Keys/data/Molasses_Keys_2008.xls")
Molasses_Keys_2008_Total_biomass <- summarise_at(Molasses_Keys_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2008_Total_biomass$Year <- ('2008')

###output
export(Molasses_Keys_2008_Total_biomass,"Molasses_Keys/data/Molasses_Keys_2008_biomass_data.csv")

Molasses_Keys_2009 <- import("Molasses_Keys/data/Molasses_Keys_2009.xls")
Molasses_Keys_2009_Total_biomass <- summarise_at(Molasses_Keys_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2009_Total_biomass$Year <- ('2009')
###output
export(Molasses_Keys_2009_Total_biomass,"Molasses_Keys/data/Molasses_Keys_2009_biomass_data.csv")


Molasses_Keys_2010 <- import("Molasses_Keys/data/Molasses_Keys_2010.xls")
Molasses_Keys_2010_Total_biomass <- summarise_at(Molasses_Keys_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2010_Total_biomass$Year <- ('2010')

###output
export(Molasses_Keys_2010_Total_biomass,"Molasses_Keys/data/Molasses_Keys_2010_biomass_data.csv")

Molasses_Keys_2011 <- import("Molasses_Keys/data/Molasses_Keys_2011.xls")
Molasses_Keys_2011_Total_biomass <- summarise_at(Molasses_Keys_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2011_Total_biomass$Year <- ('2011')
###output
export(Molasses_Keys_2011_Total_biomass,"Molasses_Keys/data/Molasses_Keys_2011_biomass_data.csv")


Molasses_Keys_2012 <- import("Molasses_Keys/data/Molasses_Keys_2012.xls")
Molasses_Keys_2012_Total_biomass <- summarise_at(Molasses_Keys_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2012_Total_biomass$Year <- ('2012')

###output
export(Molasses_Keys_2012_Total_biomass,"Molasses_Keys/data/Molasses_Keys_2012_biomass_data.csv")

Molasses_Keys_2014 <- import("Molasses_Keys/data/Molasses_Keys_2014.xls")
Molasses_Keys_2014_Total_biomass <- summarise_at(Molasses_Keys_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2014_Total_biomass$Year <- ('2014')

###output
export(Molasses_Keys_2014_Total_biomass,"Molasses_Keys/data/Molasses_Keys_2014_biomass_data.csv")

Molasses_Keys_2016 <- import("Molasses_Keys/data/Molasses_Keys_2016.xls")
Molasses_Keys_2016_Total_biomass <- summarise_at(Molasses_Keys_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2016_Total_biomass$Year <- ('2016')

###output
export(Molasses_Keys_2016_Total_biomass,"Molasses_Keys/data/Molasses_Keys_2016_biomass_data.csv")

Molasses_Keys_2018 <- import("Molasses_Keys/data/Molasses_Keys_2018.xls")
Molasses_Keys_2018_Total_biomass <- summarise_at(Molasses_Keys_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2018_Total_biomass$Year <- ('2018')
###output
export(Molasses_Keys_2018_Total_biomass,"Molasses_Keys/data/Molasses_Keys_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Molasses_Keys_1999_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_1999_biomass_data.csv")
Molasses_Keys_2000_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_2000_biomass_data.csv")
Molasses_Keys_2001_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_2001_biomass_data.csv")
Molasses_Keys_2002_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_2002_biomass_data.csv")
Molasses_Keys_2003_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_2003_biomass_data.csv")
#Molasses_Keys_2004_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_2004_biomass_data.csv")
Molasses_Keys_2005_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_2005_biomass_data.csv")
Molasses_Keys_2006_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_2006_biomass_data.csv")
Molasses_Keys_2007_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_2007_biomass_data.csv")
Molasses_Keys_2008_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_2008_biomass_data.csv")
Molasses_Keys_2009_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_2009_biomass_data.csv")
Molasses_Keys_2010_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_2010_biomass_data.csv")
Molasses_Keys_2011_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_2011_biomass_data.csv")
Molasses_Keys_2012_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_2012_biomass_data.csv")
Molasses_Keys_2014_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_2014_biomass_data.csv")
Molasses_Keys_2016_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_2016_biomass_data.csv")
Molasses_Keys_2018_merge <- read_csv("Molasses_Keys/data/Molasses_Keys_2018_biomass_data.csv")

Molasses_Keys_merge_1 <- rbind(Molasses_Keys_1999_merge,Molasses_Keys_2000_merge)
Molasses_Keys_merge_2 <- rbind(Molasses_Keys_merge_1,Molasses_Keys_2001_merge)
Molasses_Keys_merge_3 <- rbind(Molasses_Keys_merge_2,Molasses_Keys_2002_merge)
Molasses_Keys_merge_5 <- rbind(Molasses_Keys_merge_3,Molasses_Keys_2003_merge)
Molasses_Keys_merge_6 <- rbind(Molasses_Keys_merge_5,Molasses_Keys_2005_merge)
Molasses_Keys_merge_7 <- rbind(Molasses_Keys_merge_6,Molasses_Keys_2006_merge)
Molasses_Keys_merge_8 <- rbind(Molasses_Keys_merge_7,Molasses_Keys_2007_merge)
Molasses_Keys_merge_9 <- rbind(Molasses_Keys_merge_8,Molasses_Keys_2008_merge)
Molasses_Keys_merge_10 <- rbind(Molasses_Keys_merge_9,Molasses_Keys_2009_merge)
Molasses_Keys_merge_11 <- rbind(Molasses_Keys_merge_10,Molasses_Keys_2010_merge)
Molasses_Keys_merge_12<- rbind(Molasses_Keys_merge_11,Molasses_Keys_2011_merge)
Molasses_Keys_merge_13 <- rbind(Molasses_Keys_merge_12,Molasses_Keys_2012_merge)
Molasses_Keys_merge_14 <- rbind(Molasses_Keys_merge_13,Molasses_Keys_2014_merge)
Molasses_Keys_merge_15 <- rbind(Molasses_Keys_merge_14,Molasses_Keys_2016_merge)
Molasses_Keys_Reef_biomass_data_combined <- rbind(Molasses_Keys_merge_15,Molasses_Keys_2018_merge)


##output
export(Molasses_Keys_Reef_biomass_data_combined,"Molasses_Keys/data/Molasses_Keys_biomass_data_combined.csv")



### Moser Channel (no data)



##repeat for all years 99-16
Moser_Channel_1999 <- import("Moser_Channel/data/Moser_Channel_1999.xls")
Moser_Channel_1999_Total_biomass <- summarise_at(Moser_Channel_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_1999_Total_biomass$Year <- ('1999')
###output
export(Moser_Channel_1999_Total_biomass,"Moser_Channel/data/Moser_Channel_1999_biomass_data.csv")

Moser_Channel_2000 <- import("Moser_Channel/data/Moser_Channel_2000.xls")
Moser_Channel_2000_Total_biomass <- summarise_at(Moser_Channel_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2000_Total_biomass$Year <- ('2000')
###output
export(Moser_Channel_2000_Total_biomass,"Moser_Channel/data/Moser_Channel_2000_biomass_data.csv")

Moser_Channel_2001 <- import("Moser_Channel/data/Moser_Channel_2001.xls")
Moser_Channel_2001_Total_biomass <- summarise_at(Moser_Channel_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2001_Total_biomass$Year <- ('2001')
###output
export(Moser_Channel_2001_Total_biomass,"Moser_Channel/data/Moser_Channel_2001_biomass_data.csv")

Moser_Channel_2002 <- import("Moser_Channel/data/Moser_Channel_2002.xls")
Moser_Channel_2002_Total_biomass <- summarise_at(Moser_Channel_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2002_Total_biomass$Year <- ('2002')
###output
export(Moser_Channel_2002_Total_biomass,"Moser_Channel/data/Moser_Channel_2002_biomass_data.csv")

Moser_Channel_2003 <- import("Moser_Channel/data/Moser_Channel_2003.xls")
Moser_Channel_2003_Total_biomass <- summarise_at(Moser_Channel_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2003_Total_biomass$Year <- ('2003')
###output
export(Moser_Channel_2003_Total_biomass,"Moser_Channel/data/Moser_Channel_2003_biomass_data.csv")


#Moser_Channel_2004 <- import("Moser_Channel/data/Moser_Channel_2004.xls")
#Moser_Channel_2004_Total_biomass <- summarise_at(Moser_Channel_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
#Moser_Channel_2004_Total_biomass$Year <- ('2004')

###output
#export(Moser_Channel_2004_Total_biomass,"Moser_Channel/data/Moser_Channel_2004_biomass_data.csv")

Moser_Channel_2005 <- import("Moser_Channel/data/Moser_Channel_2005.xls")
Moser_Channel_2005_Total_biomass <- summarise_at(Moser_Channel_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2005_Total_biomass$Year <- ('2005')
###output
export(Moser_Channel_2005_Total_biomass,"Moser_Channel/data/Moser_Channel_2005_biomass_data.csv")


Moser_Channel_2006 <- import("Moser_Channel/data/Moser_Channel_2006.xls")
Moser_Channel_2006_Total_biomass <- summarise_at(Moser_Channel_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2006_Total_biomass$Year <- ('2006')

###output
export(Moser_Channel_2006_Total_biomass,"Moser_Channel/data/Moser_Channel_2006_biomass_data.csv")

Moser_Channel_2007 <- import("Moser_Channel/data/Moser_Channel_2007.xls")
Moser_Channel_2007_Total_biomass <- summarise_at(Moser_Channel_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2007_Total_biomass$Year <- ('2007')
###output
export(Moser_Channel_2007_Total_biomass,"Moser_Channel/data/Moser_Channel_2007_biomass_data.csv")


Moser_Channel_2008 <- import("Moser_Channel/data/Moser_Channel_2008.xls")
Moser_Channel_2008_Total_biomass <- summarise_at(Moser_Channel_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2008_Total_biomass$Year <- ('2008')

###output
export(Moser_Channel_2008_Total_biomass,"Moser_Channel/data/Moser_Channel_2008_biomass_data.csv")

Moser_Channel_2009 <- import("Moser_Channel/data/Moser_Channel_2009.xls")
Moser_Channel_2009_Total_biomass <- summarise_at(Moser_Channel_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2009_Total_biomass$Year <- ('2009')
###output
export(Moser_Channel_2009_Total_biomass,"Moser_Channel/data/Moser_Channel_2009_biomass_data.csv")


Moser_Channel_2010 <- import("Moser_Channel/data/Moser_Channel_2010.xls")
Moser_Channel_2010_Total_biomass <- summarise_at(Moser_Channel_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2010_Total_biomass$Year <- ('2010')

###output
export(Moser_Channel_2010_Total_biomass,"Moser_Channel/data/Moser_Channel_2010_biomass_data.csv")

Moser_Channel_2011 <- import("Moser_Channel/data/Moser_Channel_2011.xls")
Moser_Channel_2011_Total_biomass <- summarise_at(Moser_Channel_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2011_Total_biomass$Year <- ('2011')
###output
export(Moser_Channel_2011_Total_biomass,"Moser_Channel/data/Moser_Channel_2011_biomass_data.csv")


Moser_Channel_2012 <- import("Moser_Channel/data/Moser_Channel_2012.xls")
Moser_Channel_2012_Total_biomass <- summarise_at(Moser_Channel_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2012_Total_biomass$Year <- ('2012')

###output
export(Moser_Channel_2012_Total_biomass,"Moser_Channel/data/Moser_Channel_2012_biomass_data.csv")

Moser_Channel_2014 <- import("Moser_Channel/data/Moser_Channel_2014.xls")
Moser_Channel_2014_Total_biomass <- summarise_at(Moser_Channel_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2014_Total_biomass$Year <- ('2014')

###output
export(Moser_Channel_2014_Total_biomass,"Moser_Channel/data/Moser_Channel_2014_biomass_data.csv")

Moser_Channel_2016 <- import("Moser_Channel/data/Moser_Channel_2016.xls")
Moser_Channel_2016_Total_biomass <- summarise_at(Moser_Channel_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2016_Total_biomass$Year <- ('2016')

###output
export(Moser_Channel_2016_Total_biomass,"Moser_Channel/data/Moser_Channel_2016_biomass_data.csv")

Moser_Channel_2018 <- import("Moser_Channel/data/Moser_Channel_2018.xls")
Moser_Channel_2018_Total_biomass <- summarise_at(Moser_Channel_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2018_Total_biomass$Year <- ('2018')
###output
export(Moser_Channel_2018_Total_biomass,"Moser_Channel/data/Moser_Channel_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Moser_Channel_1999_merge <- read_csv("Moser_Channel/data/Moser_Channel_1999_biomass_data.csv")
Moser_Channel_2000_merge <- read_csv("Moser_Channel/data/Moser_Channel_2000_biomass_data.csv")
Moser_Channel_2001_merge <- read_csv("Moser_Channel/data/Moser_Channel_2001_biomass_data.csv")
Moser_Channel_2002_merge <- read_csv("Moser_Channel/data/Moser_Channel_2002_biomass_data.csv")
Moser_Channel_2003_merge <- read_csv("Moser_Channel/data/Moser_Channel_2003_biomass_data.csv")
#Moser_Channel_2004_merge <- read_csv("Moser_Channel/data/Moser_Channel_2004_biomass_data.csv")
Moser_Channel_2005_merge <- read_csv("Moser_Channel/data/Moser_Channel_2005_biomass_data.csv")
Moser_Channel_2006_merge <- read_csv("Moser_Channel/data/Moser_Channel_2006_biomass_data.csv")
Moser_Channel_2007_merge <- read_csv("Moser_Channel/data/Moser_Channel_2007_biomass_data.csv")
Moser_Channel_2008_merge <- read_csv("Moser_Channel/data/Moser_Channel_2008_biomass_data.csv")
Moser_Channel_2009_merge <- read_csv("Moser_Channel/data/Moser_Channel_2009_biomass_data.csv")
Moser_Channel_2010_merge <- read_csv("Moser_Channel/data/Moser_Channel_2010_biomass_data.csv")
Moser_Channel_2011_merge <- read_csv("Moser_Channel/data/Moser_Channel_2011_biomass_data.csv")
Moser_Channel_2012_merge <- read_csv("Moser_Channel/data/Moser_Channel_2012_biomass_data.csv")
Moser_Channel_2014_merge <- read_csv("Moser_Channel/data/Moser_Channel_2014_biomass_data.csv")
Moser_Channel_2016_merge <- read_csv("Moser_Channel/data/Moser_Channel_2016_biomass_data.csv")
Moser_Channel_2018_merge <- read_csv("Moser_Channel/data/Moser_Channel_2018_biomass_data.csv")

Moser_Channel_merge_1 <- rbind(Moser_Channel_1999_merge,Moser_Channel_2000_merge)
Moser_Channel_merge_2 <- rbind(Moser_Channel_merge_1,Moser_Channel_2001_merge)
Moser_Channel_merge_3 <- rbind(Moser_Channel_merge_2,Moser_Channel_2002_merge)
Moser_Channel_merge_5 <- rbind(Moser_Channel_merge_3,Moser_Channel_2003_merge)
Moser_Channel_merge_6 <- rbind(Moser_Channel_merge_5,Moser_Channel_2005_merge)
Moser_Channel_merge_7 <- rbind(Moser_Channel_merge_6,Moser_Channel_2006_merge)
Moser_Channel_merge_8 <- rbind(Moser_Channel_merge_7,Moser_Channel_2007_merge)
Moser_Channel_merge_9 <- rbind(Moser_Channel_merge_8,Moser_Channel_2008_merge)
Moser_Channel_merge_10 <- rbind(Moser_Channel_merge_9,Moser_Channel_2009_merge)
Moser_Channel_merge_11 <- rbind(Moser_Channel_merge_10,Moser_Channel_2010_merge)
Moser_Channel_merge_12<- rbind(Moser_Channel_merge_11,Moser_Channel_2011_merge)
Moser_Channel_merge_13 <- rbind(Moser_Channel_merge_12,Moser_Channel_2012_merge)
Moser_Channel_merge_14 <- rbind(Moser_Channel_merge_13,Moser_Channel_2014_merge)
Moser_Channel_merge_15 <- rbind(Moser_Channel_merge_14,Moser_Channel_2016_merge)
Moser_Channel_Reef_biomass_data_combined <- rbind(Moser_Channel_merge_15,Moser_Channel_2018_merge)


##output
export(Moser_Channel_Reef_biomass_data_combined,"Moser_Channel/data/Moser_Channel_biomass_data_combined.csv")


###Rawa Reef



##repeat for all years 99-16
Rawa_Reef_1999 <- import("Rawa_Reef/data/Rawa_Reef_1999.xls")
Rawa_Reef_1999_Total_biomass <- summarise_at(Rawa_Reef_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_1999_Total_biomass$Year <- ('1999')
###output
export(Rawa_Reef_1999_Total_biomass,"Rawa_Reef/data/Rawa_Reef_1999_biomass_data.csv")

Rawa_Reef_2000 <- import("Rawa_Reef/data/Rawa_Reef_2000.xls")
Rawa_Reef_2000_Total_biomass <- summarise_at(Rawa_Reef_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2000_Total_biomass$Year <- ('2000')
###output
export(Rawa_Reef_2000_Total_biomass,"Rawa_Reef/data/Rawa_Reef_2000_biomass_data.csv")

Rawa_Reef_2001 <- import("Rawa_Reef/data/Rawa_Reef_2001.xls")
Rawa_Reef_2001_Total_biomass <- summarise_at(Rawa_Reef_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2001_Total_biomass$Year <- ('2001')
###output
export(Rawa_Reef_2001_Total_biomass,"Rawa_Reef/data/Rawa_Reef_2001_biomass_data.csv")

Rawa_Reef_2002 <- import("Rawa_Reef/data/Rawa_Reef_2002.xls")
Rawa_Reef_2002_Total_biomass <- summarise_at(Rawa_Reef_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2002_Total_biomass$Year <- ('2002')
###output
export(Rawa_Reef_2002_Total_biomass,"Rawa_Reef/data/Rawa_Reef_2002_biomass_data.csv")

Rawa_Reef_2003 <- import("Rawa_Reef/data/Rawa_Reef_2003.xls")
Rawa_Reef_2003_Total_biomass <- summarise_at(Rawa_Reef_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2003_Total_biomass$Year <- ('2003')
###output
export(Rawa_Reef_2003_Total_biomass,"Rawa_Reef/data/Rawa_Reef_2003_biomass_data.csv")


#Rawa_Reef_2004 <- import("Rawa_Reef/data/Rawa_Reef_2004.xls")
#Rawa_Reef_2004_Total_biomass <- summarise_at(Rawa_Reef_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
#Rawa_Reef_2004_Total_biomass$Year <- ('2004')

###output
#export(Rawa_Reef_2004_Total_biomass,"Rawa_Reef/data/Rawa_Reef_2004_biomass_data.csv")

Rawa_Reef_2005 <- import("Rawa_Reef/data/Rawa_Reef_2005.xls")
Rawa_Reef_2005_Total_biomass <- summarise_at(Rawa_Reef_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2005_Total_biomass$Year <- ('2005')
###output
export(Rawa_Reef_2005_Total_biomass,"Rawa_Reef/data/Rawa_Reef_2005_biomass_data.csv")


Rawa_Reef_2006 <- import("Rawa_Reef/data/Rawa_Reef_2006.xls")
Rawa_Reef_2006_Total_biomass <- summarise_at(Rawa_Reef_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2006_Total_biomass$Year <- ('2006')

###output
export(Rawa_Reef_2006_Total_biomass,"Rawa_Reef/data/Rawa_Reef_2006_biomass_data.csv")

Rawa_Reef_2007 <- import("Rawa_Reef/data/Rawa_Reef_2007.xls")
Rawa_Reef_2007_Total_biomass <- summarise_at(Rawa_Reef_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2007_Total_biomass$Year <- ('2007')
###output
export(Rawa_Reef_2007_Total_biomass,"Rawa_Reef/data/Rawa_Reef_2007_biomass_data.csv")


Rawa_Reef_2008 <- import("Rawa_Reef/data/Rawa_Reef_2008.xls")
Rawa_Reef_2008_Total_biomass <- summarise_at(Rawa_Reef_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2008_Total_biomass$Year <- ('2008')

###output
export(Rawa_Reef_2008_Total_biomass,"Rawa_Reef/data/Rawa_Reef_2008_biomass_data.csv")

Rawa_Reef_2009 <- import("Rawa_Reef/data/Rawa_Reef_2009.xls")
Rawa_Reef_2009_Total_biomass <- summarise_at(Rawa_Reef_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2009_Total_biomass$Year <- ('2009')
###output
export(Rawa_Reef_2009_Total_biomass,"Rawa_Reef/data/Rawa_Reef_2009_biomass_data.csv")


Rawa_Reef_2010 <- import("Rawa_Reef/data/Rawa_Reef_2010.xls")
Rawa_Reef_2010_Total_biomass <- summarise_at(Rawa_Reef_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2010_Total_biomass$Year <- ('2010')

###output
export(Rawa_Reef_2010_Total_biomass,"Rawa_Reef/data/Rawa_Reef_2010_biomass_data.csv")

Rawa_Reef_2011 <- import("Rawa_Reef/data/Rawa_Reef_2011.xls")
Rawa_Reef_2011_Total_biomass <- summarise_at(Rawa_Reef_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2011_Total_biomass$Year <- ('2011')
###output
export(Rawa_Reef_2011_Total_biomass,"Rawa_Reef/data/Rawa_Reef_2011_biomass_data.csv")


Rawa_Reef_2012 <- import("Rawa_Reef/data/Rawa_Reef_2012.xls")
Rawa_Reef_2012_Total_biomass <- summarise_at(Rawa_Reef_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2012_Total_biomass$Year <- ('2012')

###output
export(Rawa_Reef_2012_Total_biomass,"Rawa_Reef/data/Rawa_Reef_2012_biomass_data.csv")

Rawa_Reef_2014 <- import("Rawa_Reef/data/Rawa_Reef_2014.xls")
Rawa_Reef_2014_Total_biomass <- summarise_at(Rawa_Reef_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2014_Total_biomass$Year <- ('2014')

###output
export(Rawa_Reef_2014_Total_biomass,"Rawa_Reef/data/Rawa_Reef_2014_biomass_data.csv")

Rawa_Reef_2016 <- import("Rawa_Reef/data/Rawa_Reef_2016.xls")
Rawa_Reef_2016_Total_biomass <- summarise_at(Rawa_Reef_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2016_Total_biomass$Year <- ('2016')

###output
export(Rawa_Reef_2016_Total_biomass,"Rawa_Reef/data/Rawa_Reef_2016_biomass_data.csv")

Rawa_Reef_2018 <- import("Rawa_Reef/data/Rawa_Reef_2018.xls")
Rawa_Reef_2018_Total_biomass <- summarise_at(Rawa_Reef_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2018_Total_biomass$Year <- ('2018')
###output
export(Rawa_Reef_2018_Total_biomass,"Rawa_Reef/data/Rawa_Reef_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Rawa_Reef_1999_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_1999_biomass_data.csv")
Rawa_Reef_2000_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_2000_biomass_data.csv")
Rawa_Reef_2001_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_2001_biomass_data.csv")
Rawa_Reef_2002_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_2002_biomass_data.csv")
Rawa_Reef_2003_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_2003_biomass_data.csv")
#Rawa_Reef_2004_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_2004_biomass_data.csv")
Rawa_Reef_2005_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_2005_biomass_data.csv")
Rawa_Reef_2006_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_2006_biomass_data.csv")
Rawa_Reef_2007_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_2007_biomass_data.csv")
Rawa_Reef_2008_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_2008_biomass_data.csv")
Rawa_Reef_2009_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_2009_biomass_data.csv")
Rawa_Reef_2010_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_2010_biomass_data.csv")
Rawa_Reef_2011_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_2011_biomass_data.csv")
Rawa_Reef_2012_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_2012_biomass_data.csv")
Rawa_Reef_2014_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_2014_biomass_data.csv")
Rawa_Reef_2016_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_2016_biomass_data.csv")
Rawa_Reef_2018_merge <- read_csv("Rawa_Reef/data/Rawa_Reef_2018_biomass_data.csv")

Rawa_Reef_merge_1 <- rbind(Rawa_Reef_1999_merge,Rawa_Reef_2000_merge)
Rawa_Reef_merge_2 <- rbind(Rawa_Reef_merge_1,Rawa_Reef_2001_merge)
Rawa_Reef_merge_3 <- rbind(Rawa_Reef_merge_2,Rawa_Reef_2002_merge)
Rawa_Reef_merge_5 <- rbind(Rawa_Reef_merge_3,Rawa_Reef_2003_merge)
Rawa_Reef_merge_6 <- rbind(Rawa_Reef_merge_5,Rawa_Reef_2005_merge)
Rawa_Reef_merge_7 <- rbind(Rawa_Reef_merge_6,Rawa_Reef_2006_merge)
Rawa_Reef_merge_8 <- rbind(Rawa_Reef_merge_7,Rawa_Reef_2007_merge)
Rawa_Reef_merge_9 <- rbind(Rawa_Reef_merge_8,Rawa_Reef_2008_merge)
Rawa_Reef_merge_10 <- rbind(Rawa_Reef_merge_9,Rawa_Reef_2009_merge)
Rawa_Reef_merge_11 <- rbind(Rawa_Reef_merge_10,Rawa_Reef_2010_merge)
Rawa_Reef_merge_12<- rbind(Rawa_Reef_merge_11,Rawa_Reef_2011_merge)
Rawa_Reef_merge_13 <- rbind(Rawa_Reef_merge_12,Rawa_Reef_2012_merge)
Rawa_Reef_merge_14 <- rbind(Rawa_Reef_merge_13,Rawa_Reef_2014_merge)
Rawa_Reef_merge_15 <- rbind(Rawa_Reef_merge_14,Rawa_Reef_2016_merge)
Rawa_Reef_biomass_data_combined <- rbind(Rawa_Reef_merge_15,Rawa_Reef_2018_merge)


##output
export(Rawa_Reef_biomass_data_combined,"Rawa_Reef/data/Rawa_Reef_biomass_data_combined.csv")


### Sombrero Deep


##repeat for all years 99-16
Sombrero_Deep_1999 <- import("Sombrero_Deep/data/Sombrero_Deep_1999.xls")
Sombrero_Deep_1999_Total_biomass <- summarise_at(Sombrero_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_1999_Total_biomass$Year <- ('1999')
###output
export(Sombrero_Deep_1999_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_1999_biomass_data.csv")

Sombrero_Deep_2000 <- import("Sombrero_Deep/data/Sombrero_Deep_2000.xls")
Sombrero_Deep_2000_Total_biomass <- summarise_at(Sombrero_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2000_Total_biomass$Year <- ('2000')
###output
export(Sombrero_Deep_2000_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_2000_biomass_data.csv")

Sombrero_Deep_2001 <- import("Sombrero_Deep/data/Sombrero_Deep_2001.xls")
Sombrero_Deep_2001_Total_biomass <- summarise_at(Sombrero_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2001_Total_biomass$Year <- ('2001')
###output
export(Sombrero_Deep_2001_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_2001_biomass_data.csv")

Sombrero_Deep_2002 <- import("Sombrero_Deep/data/Sombrero_Deep_2002.xls")
Sombrero_Deep_2002_Total_biomass <- summarise_at(Sombrero_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2002_Total_biomass$Year <- ('2002')
###output
export(Sombrero_Deep_2002_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_2002_biomass_data.csv")

Sombrero_Deep_2003 <- import("Sombrero_Deep/data/Sombrero_Deep_2003.xls")
Sombrero_Deep_2003_Total_biomass <- summarise_at(Sombrero_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2003_Total_biomass$Year <- ('2003')
###output
export(Sombrero_Deep_2003_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_2003_biomass_data.csv")


#Sombrero_Deep_2004 <- import("Sombrero_Deep/data/Sombrero_Deep_2004.xls")
#Sombrero_Deep_2004_Total_biomass <- summarise_at(Sombrero_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
#Sombrero_Deep_2004_Total_biomass$Year <- ('2004')

###output
#export(Sombrero_Deep_2004_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_2004_biomass_data.csv")

Sombrero_Deep_2005 <- import("Sombrero_Deep/data/Sombrero_Deep_2005.xls")
Sombrero_Deep_2005_Total_biomass <- summarise_at(Sombrero_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2005_Total_biomass$Year <- ('2005')
###output
export(Sombrero_Deep_2005_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_2005_biomass_data.csv")


Sombrero_Deep_2006 <- import("Sombrero_Deep/data/Sombrero_Deep_2006.xls")
Sombrero_Deep_2006_Total_biomass <- summarise_at(Sombrero_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2006_Total_biomass$Year <- ('2006')

###output
export(Sombrero_Deep_2006_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_2006_biomass_data.csv")

Sombrero_Deep_2007 <- import("Sombrero_Deep/data/Sombrero_Deep_2007.xls")
Sombrero_Deep_2007_Total_biomass <- summarise_at(Sombrero_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2007_Total_biomass$Year <- ('2007')
###output
export(Sombrero_Deep_2007_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_2007_biomass_data.csv")


Sombrero_Deep_2008 <- import("Sombrero_Deep/data/Sombrero_Deep_2008.xls")
Sombrero_Deep_2008_Total_biomass <- summarise_at(Sombrero_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2008_Total_biomass$Year <- ('2008')

###output
export(Sombrero_Deep_2008_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_2008_biomass_data.csv")

Sombrero_Deep_2009 <- import("Sombrero_Deep/data/Sombrero_Deep_2009.xls")
Sombrero_Deep_2009_Total_biomass <- summarise_at(Sombrero_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2009_Total_biomass$Year <- ('2009')
###output
export(Sombrero_Deep_2009_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_2009_biomass_data.csv")


Sombrero_Deep_2010 <- import("Sombrero_Deep/data/Sombrero_Deep_2010.xls")
Sombrero_Deep_2010_Total_biomass <- summarise_at(Sombrero_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2010_Total_biomass$Year <- ('2010')

###output
export(Sombrero_Deep_2010_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_2010_biomass_data.csv")

Sombrero_Deep_2011 <- import("Sombrero_Deep/data/Sombrero_Deep_2011.xls")
Sombrero_Deep_2011_Total_biomass <- summarise_at(Sombrero_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2011_Total_biomass$Year <- ('2011')
###output
export(Sombrero_Deep_2011_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_2011_biomass_data.csv")


Sombrero_Deep_2012 <- import("Sombrero_Deep/data/Sombrero_Deep_2012.xls")
Sombrero_Deep_2012_Total_biomass <- summarise_at(Sombrero_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2012_Total_biomass$Year <- ('2012')

###output
export(Sombrero_Deep_2012_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_2012_biomass_data.csv")

Sombrero_Deep_2014 <- import("Sombrero_Deep/data/Sombrero_Deep_2014.xls")
Sombrero_Deep_2014_Total_biomass <- summarise_at(Sombrero_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2014_Total_biomass$Year <- ('2014')

###output
export(Sombrero_Deep_2014_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_2014_biomass_data.csv")

Sombrero_Deep_2016 <- import("Sombrero_Deep/data/Sombrero_Deep_2016.xls")
Sombrero_Deep_2016_Total_biomass <- summarise_at(Sombrero_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2016_Total_biomass$Year <- ('2016')

###output
export(Sombrero_Deep_2016_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_2016_biomass_data.csv")

Sombrero_Deep_2018 <- import("Sombrero_Deep/data/Sombrero_Deep_2018.xls")
Sombrero_Deep_2018_Total_biomass <- summarise_at(Sombrero_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2018_Total_biomass$Year <- ('2018')
###output
export(Sombrero_Deep_2018_Total_biomass,"Sombrero_Deep/data/Sombrero_Deep_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Sombrero_Deep_1999_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_1999_biomass_data.csv")
Sombrero_Deep_2000_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_2000_biomass_data.csv")
Sombrero_Deep_2001_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_2001_biomass_data.csv")
Sombrero_Deep_2002_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_2002_biomass_data.csv")
Sombrero_Deep_2003_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_2003_biomass_data.csv")
#Sombrero_Deep_2004_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_2004_biomass_data.csv")
Sombrero_Deep_2005_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_2005_biomass_data.csv")
Sombrero_Deep_2006_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_2006_biomass_data.csv")
Sombrero_Deep_2007_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_2007_biomass_data.csv")
Sombrero_Deep_2008_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_2008_biomass_data.csv")
Sombrero_Deep_2009_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_2009_biomass_data.csv")
Sombrero_Deep_2010_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_2010_biomass_data.csv")
Sombrero_Deep_2011_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_2011_biomass_data.csv")
Sombrero_Deep_2012_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_2012_biomass_data.csv")
Sombrero_Deep_2014_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_2014_biomass_data.csv")
Sombrero_Deep_2016_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_2016_biomass_data.csv")
Sombrero_Deep_2018_merge <- read_csv("Sombrero_Deep/data/Sombrero_Deep_2018_biomass_data.csv")

Sombrero_Deep_merge_1 <- rbind(Sombrero_Deep_1999_merge,Sombrero_Deep_2000_merge)
Sombrero_Deep_merge_2 <- rbind(Sombrero_Deep_merge_1,Sombrero_Deep_2001_merge)
Sombrero_Deep_merge_3 <- rbind(Sombrero_Deep_merge_2,Sombrero_Deep_2002_merge)
Sombrero_Deep_merge_5 <- rbind(Sombrero_Deep_merge_3,Sombrero_Deep_2003_merge)
Sombrero_Deep_merge_6 <- rbind(Sombrero_Deep_merge_5,Sombrero_Deep_2005_merge)
Sombrero_Deep_merge_7 <- rbind(Sombrero_Deep_merge_6,Sombrero_Deep_2006_merge)
Sombrero_Deep_merge_8 <- rbind(Sombrero_Deep_merge_7,Sombrero_Deep_2007_merge)
Sombrero_Deep_merge_9 <- rbind(Sombrero_Deep_merge_8,Sombrero_Deep_2008_merge)
Sombrero_Deep_merge_10 <- rbind(Sombrero_Deep_merge_9,Sombrero_Deep_2009_merge)
Sombrero_Deep_merge_11 <- rbind(Sombrero_Deep_merge_10,Sombrero_Deep_2010_merge)
Sombrero_Deep_merge_12<- rbind(Sombrero_Deep_merge_11,Sombrero_Deep_2011_merge)
Sombrero_Deep_merge_13 <- rbind(Sombrero_Deep_merge_12,Sombrero_Deep_2012_merge)
Sombrero_Deep_merge_14 <- rbind(Sombrero_Deep_merge_13,Sombrero_Deep_2014_merge)
Sombrero_Deep_merge_15 <- rbind(Sombrero_Deep_merge_14,Sombrero_Deep_2016_merge)
Sombrero_Deep_Reef_biomass_data_combined <- rbind(Sombrero_Deep_merge_15,Sombrero_Deep_2018_merge)


##output
export(Sombrero_Deep_Reef_biomass_data_combined,"Sombrero_Deep/data/Sombrero_Deep_biomass_data_combined.csv")


###Sombrero Shallow



##repeat for all years 99-16
Sombrero_Shallow_1999 <- import("Sombrero_Shallow/data/Sombrero_Shallow_1999.xls")
Sombrero_Shallow_1999_Total_biomass <- summarise_at(Sombrero_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_1999_Total_biomass$Year <- ('1999')
###output
export(Sombrero_Shallow_1999_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_1999_biomass_data.csv")

Sombrero_Shallow_2000 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2000.xls")
Sombrero_Shallow_2000_Total_biomass <- summarise_at(Sombrero_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2000_Total_biomass$Year <- ('2000')
###output
export(Sombrero_Shallow_2000_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_2000_biomass_data.csv")

Sombrero_Shallow_2001 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2001.xls")
Sombrero_Shallow_2001_Total_biomass <- summarise_at(Sombrero_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2001_Total_biomass$Year <- ('2001')
###output
export(Sombrero_Shallow_2001_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_2001_biomass_data.csv")

Sombrero_Shallow_2002 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2002.xls")
Sombrero_Shallow_2002_Total_biomass <- summarise_at(Sombrero_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2002_Total_biomass$Year <- ('2002')
###output
export(Sombrero_Shallow_2002_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_2002_biomass_data.csv")

Sombrero_Shallow_2003 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2003.xls")
Sombrero_Shallow_2003_Total_biomass <- summarise_at(Sombrero_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2003_Total_biomass$Year <- ('2003')
###output
export(Sombrero_Shallow_2003_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_2003_biomass_data.csv")


#Sombrero_Shallow_2004 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2004.xls")
#Sombrero_Shallow_2004_Total_biomass <- summarise_at(Sombrero_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
#Sombrero_Shallow_2004_Total_biomass$Year <- ('2004')

###output
#export(Sombrero_Shallow_2004_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_2004_biomass_data.csv")

Sombrero_Shallow_2005 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2005.xls")
Sombrero_Shallow_2005_Total_biomass <- summarise_at(Sombrero_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2005_Total_biomass$Year <- ('2005')
###output
export(Sombrero_Shallow_2005_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_2005_biomass_data.csv")


Sombrero_Shallow_2006 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2006.xls")
Sombrero_Shallow_2006_Total_biomass <- summarise_at(Sombrero_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2006_Total_biomass$Year <- ('2006')

###output
export(Sombrero_Shallow_2006_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_2006_biomass_data.csv")

Sombrero_Shallow_2007 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2007.xls")
Sombrero_Shallow_2007_Total_biomass <- summarise_at(Sombrero_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2007_Total_biomass$Year <- ('2007')
###output
export(Sombrero_Shallow_2007_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_2007_biomass_data.csv")


Sombrero_Shallow_2008 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2008.xls")
Sombrero_Shallow_2008_Total_biomass <- summarise_at(Sombrero_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2008_Total_biomass$Year <- ('2008')

###output
export(Sombrero_Shallow_2008_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_2008_biomass_data.csv")

Sombrero_Shallow_2009 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2009.xls")
Sombrero_Shallow_2009_Total_biomass <- summarise_at(Sombrero_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2009_Total_biomass$Year <- ('2009')
###output
export(Sombrero_Shallow_2009_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_2009_biomass_data.csv")


Sombrero_Shallow_2010 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2010.xls")
Sombrero_Shallow_2010_Total_biomass <- summarise_at(Sombrero_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2010_Total_biomass$Year <- ('2010')

###output
export(Sombrero_Shallow_2010_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_2010_biomass_data.csv")

Sombrero_Shallow_2011 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2011.xls")
Sombrero_Shallow_2011_Total_biomass <- summarise_at(Sombrero_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2011_Total_biomass$Year <- ('2011')
###output
export(Sombrero_Shallow_2011_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_2011_biomass_data.csv")


Sombrero_Shallow_2012 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2012.xls")
Sombrero_Shallow_2012_Total_biomass <- summarise_at(Sombrero_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2012_Total_biomass$Year <- ('2012')

###output
export(Sombrero_Shallow_2012_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_2012_biomass_data.csv")

Sombrero_Shallow_2014 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2014.xls")
Sombrero_Shallow_2014_Total_biomass <- summarise_at(Sombrero_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2014_Total_biomass$Year <- ('2014')

###output
export(Sombrero_Shallow_2014_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_2014_biomass_data.csv")

Sombrero_Shallow_2016 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2016.xls")
Sombrero_Shallow_2016_Total_biomass <- summarise_at(Sombrero_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2016_Total_biomass$Year <- ('2016')

###output
export(Sombrero_Shallow_2016_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_2016_biomass_data.csv")

Sombrero_Shallow_2018 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2018.xls")
Sombrero_Shallow_2018_Total_biomass <- summarise_at(Sombrero_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2018_Total_biomass$Year <- ('2018')
###output
export(Sombrero_Shallow_2018_Total_biomass,"Sombrero_Shallow/data/Sombrero_Shallow_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Sombrero_Shallow_1999_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_1999_biomass_data.csv")
Sombrero_Shallow_2000_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_2000_biomass_data.csv")
Sombrero_Shallow_2001_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_2001_biomass_data.csv")
Sombrero_Shallow_2002_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_2002_biomass_data.csv")
Sombrero_Shallow_2003_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_2003_biomass_data.csv")
#Sombrero_Shallow_2004_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_2004_biomass_data.csv")
Sombrero_Shallow_2005_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_2005_biomass_data.csv")
Sombrero_Shallow_2006_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_2006_biomass_data.csv")
Sombrero_Shallow_2007_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_2007_biomass_data.csv")
Sombrero_Shallow_2008_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_2008_biomass_data.csv")
Sombrero_Shallow_2009_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_2009_biomass_data.csv")
Sombrero_Shallow_2010_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_2010_biomass_data.csv")
Sombrero_Shallow_2011_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_2011_biomass_data.csv")
Sombrero_Shallow_2012_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_2012_biomass_data.csv")
Sombrero_Shallow_2014_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_2014_biomass_data.csv")
Sombrero_Shallow_2016_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_2016_biomass_data.csv")
Sombrero_Shallow_2018_merge <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_2018_biomass_data.csv")

Sombrero_Shallow_merge_1 <- rbind(Sombrero_Shallow_1999_merge,Sombrero_Shallow_2000_merge)
Sombrero_Shallow_merge_2 <- rbind(Sombrero_Shallow_merge_1,Sombrero_Shallow_2001_merge)
Sombrero_Shallow_merge_3 <- rbind(Sombrero_Shallow_merge_2,Sombrero_Shallow_2002_merge)
Sombrero_Shallow_merge_5 <- rbind(Sombrero_Shallow_merge_3,Sombrero_Shallow_2003_merge)
Sombrero_Shallow_merge_6 <- rbind(Sombrero_Shallow_merge_5,Sombrero_Shallow_2005_merge)
Sombrero_Shallow_merge_7 <- rbind(Sombrero_Shallow_merge_6,Sombrero_Shallow_2006_merge)
Sombrero_Shallow_merge_8 <- rbind(Sombrero_Shallow_merge_7,Sombrero_Shallow_2007_merge)
Sombrero_Shallow_merge_9 <- rbind(Sombrero_Shallow_merge_8,Sombrero_Shallow_2008_merge)
Sombrero_Shallow_merge_10 <- rbind(Sombrero_Shallow_merge_9,Sombrero_Shallow_2009_merge)
Sombrero_Shallow_merge_11 <- rbind(Sombrero_Shallow_merge_10,Sombrero_Shallow_2010_merge)
Sombrero_Shallow_merge_12<- rbind(Sombrero_Shallow_merge_11,Sombrero_Shallow_2011_merge)
Sombrero_Shallow_merge_13 <- rbind(Sombrero_Shallow_merge_12,Sombrero_Shallow_2012_merge)
Sombrero_Shallow_merge_14 <- rbind(Sombrero_Shallow_merge_13,Sombrero_Shallow_2014_merge)
Sombrero_Shallow_merge_15 <- rbind(Sombrero_Shallow_merge_14,Sombrero_Shallow_2016_merge)
Sombrero_Shallow_Reef_biomass_data_combined <- rbind(Sombrero_Shallow_merge_15,Sombrero_Shallow_2018_merge)


##output
export(Sombrero_Shallow_Reef_biomass_data_combined,"Sombrero_Shallow/data/Sombrero_Shallow_biomass_data_combined.csv")


###Tennesee Deep



##repeat for all years 99-16
Tennessee_Deep_1999 <- import("Tennessee_Deep/data/Tennessee_Deep_1999.xls")
Tennessee_Deep_1999_Total_biomass <- summarise_at(Tennessee_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_1999_Total_biomass$Year <- ('1999')
###output
export(Tennessee_Deep_1999_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_1999_biomass_data.csv")

Tennessee_Deep_2000 <- import("Tennessee_Deep/data/Tennessee_Deep_2000.xls")
Tennessee_Deep_2000_Total_biomass <- summarise_at(Tennessee_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2000_Total_biomass$Year <- ('2000')
###output
export(Tennessee_Deep_2000_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_2000_biomass_data.csv")

Tennessee_Deep_2001 <- import("Tennessee_Deep/data/Tennessee_Deep_2001.xls")
Tennessee_Deep_2001_Total_biomass <- summarise_at(Tennessee_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2001_Total_biomass$Year <- ('2001')
###output
export(Tennessee_Deep_2001_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_2001_biomass_data.csv")

Tennessee_Deep_2002 <- import("Tennessee_Deep/data/Tennessee_Deep_2002.xls")
Tennessee_Deep_2002_Total_biomass <- summarise_at(Tennessee_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2002_Total_biomass$Year <- ('2002')
###output
export(Tennessee_Deep_2002_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_2002_biomass_data.csv")

Tennessee_Deep_2003 <- import("Tennessee_Deep/data/Tennessee_Deep_2003.xls")
Tennessee_Deep_2003_Total_biomass <- summarise_at(Tennessee_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2003_Total_biomass$Year <- ('2003')
###output
export(Tennessee_Deep_2003_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_2003_biomass_data.csv")


#Tennessee_Deep_2004 <- import("Tennessee_Deep/data/Tennessee_Deep_2004.xls")
#Tennessee_Deep_2004_Total_biomass <- summarise_at(Tennessee_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
#Tennessee_Deep_2004_Total_biomass$Year <- ('2004')

###output
#export(Tennessee_Deep_2004_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_2004_biomass_data.csv")

Tennessee_Deep_2005 <- import("Tennessee_Deep/data/Tennessee_Deep_2005.xls")
Tennessee_Deep_2005_Total_biomass <- summarise_at(Tennessee_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2005_Total_biomass$Year <- ('2005')
###output
export(Tennessee_Deep_2005_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_2005_biomass_data.csv")


Tennessee_Deep_2006 <- import("Tennessee_Deep/data/Tennessee_Deep_2006.xls")
Tennessee_Deep_2006_Total_biomass <- summarise_at(Tennessee_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2006_Total_biomass$Year <- ('2006')

###output
export(Tennessee_Deep_2006_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_2006_biomass_data.csv")

Tennessee_Deep_2007 <- import("Tennessee_Deep/data/Tennessee_Deep_2007.xls")
Tennessee_Deep_2007_Total_biomass <- summarise_at(Tennessee_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2007_Total_biomass$Year <- ('2007')
###output
export(Tennessee_Deep_2007_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_2007_biomass_data.csv")


Tennessee_Deep_2008 <- import("Tennessee_Deep/data/Tennessee_Deep_2008.xls")
Tennessee_Deep_2008_Total_biomass <- summarise_at(Tennessee_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2008_Total_biomass$Year <- ('2008')

###output
export(Tennessee_Deep_2008_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_2008_biomass_data.csv")

Tennessee_Deep_2009 <- import("Tennessee_Deep/data/Tennessee_Deep_2009.xls")
Tennessee_Deep_2009_Total_biomass <- summarise_at(Tennessee_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2009_Total_biomass$Year <- ('2009')
###output
export(Tennessee_Deep_2009_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_2009_biomass_data.csv")


Tennessee_Deep_2010 <- import("Tennessee_Deep/data/Tennessee_Deep_2010.xls")
Tennessee_Deep_2010_Total_biomass <- summarise_at(Tennessee_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2010_Total_biomass$Year <- ('2010')

###output
export(Tennessee_Deep_2010_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_2010_biomass_data.csv")

Tennessee_Deep_2011 <- import("Tennessee_Deep/data/Tennessee_Deep_2011.xls")
Tennessee_Deep_2011_Total_biomass <- summarise_at(Tennessee_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2011_Total_biomass$Year <- ('2011')
###output
export(Tennessee_Deep_2011_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_2011_biomass_data.csv")


Tennessee_Deep_2012 <- import("Tennessee_Deep/data/Tennessee_Deep_2012.xls")
Tennessee_Deep_2012_Total_biomass <- summarise_at(Tennessee_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2012_Total_biomass$Year <- ('2012')

###output
export(Tennessee_Deep_2012_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_2012_biomass_data.csv")

Tennessee_Deep_2014 <- import("Tennessee_Deep/data/Tennessee_Deep_2014.xls")
Tennessee_Deep_2014_Total_biomass <- summarise_at(Tennessee_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2014_Total_biomass$Year <- ('2014')

###output
export(Tennessee_Deep_2014_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_2014_biomass_data.csv")

Tennessee_Deep_2016 <- import("Tennessee_Deep/data/Tennessee_Deep_2016.xls")
Tennessee_Deep_2016_Total_biomass <- summarise_at(Tennessee_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2016_Total_biomass$Year <- ('2016')

###output
export(Tennessee_Deep_2016_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_2016_biomass_data.csv")

Tennessee_Deep_2018 <- import("Tennessee_Deep/data/Tennessee_Deep_2018.xls")
Tennessee_Deep_2018_Total_biomass <- summarise_at(Tennessee_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2018_Total_biomass$Year <- ('2018')
###output
export(Tennessee_Deep_2018_Total_biomass,"Tennessee_Deep/data/Tennessee_Deep_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Tennessee_Deep_1999_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_1999_biomass_data.csv")
Tennessee_Deep_2000_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_2000_biomass_data.csv")
Tennessee_Deep_2001_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_2001_biomass_data.csv")
Tennessee_Deep_2002_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_2002_biomass_data.csv")
Tennessee_Deep_2003_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_2003_biomass_data.csv")
#Tennessee_Deep_2004_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_2004_biomass_data.csv")
Tennessee_Deep_2005_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_2005_biomass_data.csv")
Tennessee_Deep_2006_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_2006_biomass_data.csv")
Tennessee_Deep_2007_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_2007_biomass_data.csv")
Tennessee_Deep_2008_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_2008_biomass_data.csv")
Tennessee_Deep_2009_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_2009_biomass_data.csv")
Tennessee_Deep_2010_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_2010_biomass_data.csv")
Tennessee_Deep_2011_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_2011_biomass_data.csv")
Tennessee_Deep_2012_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_2012_biomass_data.csv")
Tennessee_Deep_2014_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_2014_biomass_data.csv")
Tennessee_Deep_2016_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_2016_biomass_data.csv")
Tennessee_Deep_2018_merge <- read_csv("Tennessee_Deep/data/Tennessee_Deep_2018_biomass_data.csv")

Tennessee_Deep_merge_1 <- rbind(Tennessee_Deep_1999_merge,Tennessee_Deep_2000_merge)
Tennessee_Deep_merge_2 <- rbind(Tennessee_Deep_merge_1,Tennessee_Deep_2001_merge)
Tennessee_Deep_merge_3 <- rbind(Tennessee_Deep_merge_2,Tennessee_Deep_2002_merge)
Tennessee_Deep_merge_5 <- rbind(Tennessee_Deep_merge_3,Tennessee_Deep_2003_merge)
Tennessee_Deep_merge_6 <- rbind(Tennessee_Deep_merge_5,Tennessee_Deep_2005_merge)
Tennessee_Deep_merge_7 <- rbind(Tennessee_Deep_merge_6,Tennessee_Deep_2006_merge)
Tennessee_Deep_merge_8 <- rbind(Tennessee_Deep_merge_7,Tennessee_Deep_2007_merge)
Tennessee_Deep_merge_9 <- rbind(Tennessee_Deep_merge_8,Tennessee_Deep_2008_merge)
Tennessee_Deep_merge_10 <- rbind(Tennessee_Deep_merge_9,Tennessee_Deep_2009_merge)
Tennessee_Deep_merge_11 <- rbind(Tennessee_Deep_merge_10,Tennessee_Deep_2010_merge)
Tennessee_Deep_merge_12<- rbind(Tennessee_Deep_merge_11,Tennessee_Deep_2011_merge)
Tennessee_Deep_merge_13 <- rbind(Tennessee_Deep_merge_12,Tennessee_Deep_2012_merge)
Tennessee_Deep_merge_14 <- rbind(Tennessee_Deep_merge_13,Tennessee_Deep_2014_merge)
Tennessee_Deep_merge_15 <- rbind(Tennessee_Deep_merge_14,Tennessee_Deep_2016_merge)
Tennessee_Deep_Reef_biomass_data_combined <- rbind(Tennessee_Deep_merge_15,Tennessee_Deep_2018_merge)


##output
export(Tennessee_Deep_Reef_biomass_data_combined,"Tennessee_Deep/data/Tennessee_Deep_biomass_data_combined.csv")


###Tennessee Shallow



##repeat for all years 99-16
Tennessee_Shallow_1999 <- import("Tennessee_Shallow/data/Tennessee_Shallow_1999.xls")
Tennessee_Shallow_1999_Total_biomass <- summarise_at(Tennessee_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_1999_Total_biomass$Year <- ('1999')
###output
export(Tennessee_Shallow_1999_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_1999_biomass_data.csv")

Tennessee_Shallow_2000 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2000.xls")
Tennessee_Shallow_2000_Total_biomass <- summarise_at(Tennessee_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2000_Total_biomass$Year <- ('2000')
###output
export(Tennessee_Shallow_2000_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_2000_biomass_data.csv")

Tennessee_Shallow_2001 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2001.xls")
Tennessee_Shallow_2001_Total_biomass <- summarise_at(Tennessee_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2001_Total_biomass$Year <- ('2001')
###output
export(Tennessee_Shallow_2001_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_2001_biomass_data.csv")

Tennessee_Shallow_2002 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2002.xls")
Tennessee_Shallow_2002_Total_biomass <- summarise_at(Tennessee_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2002_Total_biomass$Year <- ('2002')
###output
export(Tennessee_Shallow_2002_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_2002_biomass_data.csv")

Tennessee_Shallow_2003 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2003.xls")
Tennessee_Shallow_2003_Total_biomass <- summarise_at(Tennessee_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2003_Total_biomass$Year <- ('2003')
###output
export(Tennessee_Shallow_2003_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_2003_biomass_data.csv")


#Tennessee_Shallow_2004 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2004.xls")
#Tennessee_Shallow_2004_Total_biomass <- summarise_at(Tennessee_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
#Tennessee_Shallow_2004_Total_biomass$Year <- ('2004')

###output
#export(Tennessee_Shallow_2004_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_2004_biomass_data.csv")

Tennessee_Shallow_2005 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2005.xls")
Tennessee_Shallow_2005_Total_biomass <- summarise_at(Tennessee_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2005_Total_biomass$Year <- ('2005')
###output
export(Tennessee_Shallow_2005_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_2005_biomass_data.csv")


Tennessee_Shallow_2006 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2006.xls")
Tennessee_Shallow_2006_Total_biomass <- summarise_at(Tennessee_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2006_Total_biomass$Year <- ('2006')

###output
export(Tennessee_Shallow_2006_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_2006_biomass_data.csv")

Tennessee_Shallow_2007 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2007.xls")
Tennessee_Shallow_2007_Total_biomass <- summarise_at(Tennessee_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2007_Total_biomass$Year <- ('2007')
###output
export(Tennessee_Shallow_2007_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_2007_biomass_data.csv")


Tennessee_Shallow_2008 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2008.xls")
Tennessee_Shallow_2008_Total_biomass <- summarise_at(Tennessee_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2008_Total_biomass$Year <- ('2008')

###output
export(Tennessee_Shallow_2008_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_2008_biomass_data.csv")

Tennessee_Shallow_2009 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2009.xls")
Tennessee_Shallow_2009_Total_biomass <- summarise_at(Tennessee_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2009_Total_biomass$Year <- ('2009')
###output
export(Tennessee_Shallow_2009_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_2009_biomass_data.csv")


Tennessee_Shallow_2010 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2010.xls")
Tennessee_Shallow_2010_Total_biomass <- summarise_at(Tennessee_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2010_Total_biomass$Year <- ('2010')

###output
export(Tennessee_Shallow_2010_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_2010_biomass_data.csv")

Tennessee_Shallow_2011 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2011.xls")
Tennessee_Shallow_2011_Total_biomass <- summarise_at(Tennessee_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2011_Total_biomass$Year <- ('2011')
###output
export(Tennessee_Shallow_2011_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_2011_biomass_data.csv")


Tennessee_Shallow_2012 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2012.xls")
Tennessee_Shallow_2012_Total_biomass <- summarise_at(Tennessee_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2012_Total_biomass$Year <- ('2012')

###output
export(Tennessee_Shallow_2012_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_2012_biomass_data.csv")

Tennessee_Shallow_2014 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2014.xls")
Tennessee_Shallow_2014_Total_biomass <- summarise_at(Tennessee_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2014_Total_biomass$Year <- ('2014')

###output
export(Tennessee_Shallow_2014_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_2014_biomass_data.csv")

Tennessee_Shallow_2016 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2016.xls")
Tennessee_Shallow_2016_Total_biomass <- summarise_at(Tennessee_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2016_Total_biomass$Year <- ('2016')

###output
export(Tennessee_Shallow_2016_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_2016_biomass_data.csv")

Tennessee_Shallow_2018 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2018.xls")
Tennessee_Shallow_2018_Total_biomass <- summarise_at(Tennessee_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2018_Total_biomass$Year <- ('2018')
###output
export(Tennessee_Shallow_2018_Total_biomass,"Tennessee_Shallow/data/Tennessee_Shallow_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Tennessee_Shallow_1999_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_1999_biomass_data.csv")
Tennessee_Shallow_2000_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_2000_biomass_data.csv")
Tennessee_Shallow_2001_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_2001_biomass_data.csv")
Tennessee_Shallow_2002_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_2002_biomass_data.csv")
Tennessee_Shallow_2003_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_2003_biomass_data.csv")
#Tennessee_Shallow_2004_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_2004_biomass_data.csv")
Tennessee_Shallow_2005_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_2005_biomass_data.csv")
Tennessee_Shallow_2006_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_2006_biomass_data.csv")
Tennessee_Shallow_2007_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_2007_biomass_data.csv")
Tennessee_Shallow_2008_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_2008_biomass_data.csv")
Tennessee_Shallow_2009_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_2009_biomass_data.csv")
Tennessee_Shallow_2010_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_2010_biomass_data.csv")
Tennessee_Shallow_2011_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_2011_biomass_data.csv")
Tennessee_Shallow_2012_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_2012_biomass_data.csv")
Tennessee_Shallow_2014_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_2014_biomass_data.csv")
Tennessee_Shallow_2016_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_2016_biomass_data.csv")
Tennessee_Shallow_2018_merge <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_2018_biomass_data.csv")

Tennessee_Shallow_merge_1 <- rbind(Tennessee_Shallow_1999_merge,Tennessee_Shallow_2000_merge)
Tennessee_Shallow_merge_2 <- rbind(Tennessee_Shallow_merge_1,Tennessee_Shallow_2001_merge)
Tennessee_Shallow_merge_3 <- rbind(Tennessee_Shallow_merge_2,Tennessee_Shallow_2002_merge)
Tennessee_Shallow_merge_5 <- rbind(Tennessee_Shallow_merge_3,Tennessee_Shallow_2003_merge)
Tennessee_Shallow_merge_6 <- rbind(Tennessee_Shallow_merge_5,Tennessee_Shallow_2005_merge)
Tennessee_Shallow_merge_7 <- rbind(Tennessee_Shallow_merge_6,Tennessee_Shallow_2006_merge)
Tennessee_Shallow_merge_8 <- rbind(Tennessee_Shallow_merge_7,Tennessee_Shallow_2007_merge)
Tennessee_Shallow_merge_9 <- rbind(Tennessee_Shallow_merge_8,Tennessee_Shallow_2008_merge)
Tennessee_Shallow_merge_10 <- rbind(Tennessee_Shallow_merge_9,Tennessee_Shallow_2009_merge)
Tennessee_Shallow_merge_11 <- rbind(Tennessee_Shallow_merge_10,Tennessee_Shallow_2010_merge)
Tennessee_Shallow_merge_12<- rbind(Tennessee_Shallow_merge_11,Tennessee_Shallow_2011_merge)
Tennessee_Shallow_merge_13 <- rbind(Tennessee_Shallow_merge_12,Tennessee_Shallow_2012_merge)
Tennessee_Shallow_merge_14 <- rbind(Tennessee_Shallow_merge_13,Tennessee_Shallow_2014_merge)
Tennessee_Shallow_merge_15 <- rbind(Tennessee_Shallow_merge_14,Tennessee_Shallow_2016_merge)
Tennessee_Shallow_Reef_biomass_data_combined <- rbind(Tennessee_Shallow_merge_15,Tennessee_Shallow_2018_merge)


##output
export(Tennessee_Shallow_Reef_biomass_data_combined,"Tennessee_Shallow/data/Tennessee_Shallow_biomass_data_combined.csv")


###Thor



##repeat for all years 99-16
Thor_1999 <- import("Thor/data/Thor_1999.xls")
Thor_1999_Total_biomass <- summarise_at(Thor_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_1999_Total_biomass$Year <- ('1999')
###output
export(Thor_1999_Total_biomass,"Thor/data/Thor_1999_biomass_data.csv")

Thor_2000 <- import("Thor/data/Thor_2000.xls")
Thor_2000_Total_biomass <- summarise_at(Thor_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2000_Total_biomass$Year <- ('2000')
###output
export(Thor_2000_Total_biomass,"Thor/data/Thor_2000_biomass_data.csv")

Thor_2001 <- import("Thor/data/Thor_2001.xls")
Thor_2001_Total_biomass <- summarise_at(Thor_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2001_Total_biomass$Year <- ('2001')
###output
export(Thor_2001_Total_biomass,"Thor/data/Thor_2001_biomass_data.csv")

Thor_2002 <- import("Thor/data/Thor_2002.xls")
Thor_2002_Total_biomass <- summarise_at(Thor_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2002_Total_biomass$Year <- ('2002')
###output
export(Thor_2002_Total_biomass,"Thor/data/Thor_2002_biomass_data.csv")

Thor_2003 <- import("Thor/data/Thor_2003.xls")
Thor_2003_Total_biomass <- summarise_at(Thor_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2003_Total_biomass$Year <- ('2003')
###output
export(Thor_2003_Total_biomass,"Thor/data/Thor_2003_biomass_data.csv")


#Thor_2004 <- import("Thor/data/Thor_2004.xls")
#Thor_2004_Total_biomass <- summarise_at(Thor_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
#Thor_2004_Total_biomass$Year <- ('2004')

###output
#export(Thor_2004_Total_biomass,"Thor/data/Thor_2004_biomass_data.csv")

Thor_2005 <- import("Thor/data/Thor_2005.xls")
Thor_2005_Total_biomass <- summarise_at(Thor_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2005_Total_biomass$Year <- ('2005')
###output
export(Thor_2005_Total_biomass,"Thor/data/Thor_2005_biomass_data.csv")


Thor_2006 <- import("Thor/data/Thor_2006.xls")
Thor_2006_Total_biomass <- summarise_at(Thor_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2006_Total_biomass$Year <- ('2006')

###output
export(Thor_2006_Total_biomass,"Thor/data/Thor_2006_biomass_data.csv")

Thor_2007 <- import("Thor/data/Thor_2007.xls")
Thor_2007_Total_biomass <- summarise_at(Thor_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2007_Total_biomass$Year <- ('2007')
###output
export(Thor_2007_Total_biomass,"Thor/data/Thor_2007_biomass_data.csv")


Thor_2008 <- import("Thor/data/Thor_2008.xls")
Thor_2008_Total_biomass <- summarise_at(Thor_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2008_Total_biomass$Year <- ('2008')

###output
export(Thor_2008_Total_biomass,"Thor/data/Thor_2008_biomass_data.csv")

Thor_2009 <- import("Thor/data/Thor_2009.xls")
Thor_2009_Total_biomass <- summarise_at(Thor_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2009_Total_biomass$Year <- ('2009')
###output
export(Thor_2009_Total_biomass,"Thor/data/Thor_2009_biomass_data.csv")


Thor_2010 <- import("Thor/data/Thor_2010.xls")
Thor_2010_Total_biomass <- summarise_at(Thor_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2010_Total_biomass$Year <- ('2010')

###output
export(Thor_2010_Total_biomass,"Thor/data/Thor_2010_biomass_data.csv")

Thor_2011 <- import("Thor/data/Thor_2011.xls")
Thor_2011_Total_biomass <- summarise_at(Thor_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2011_Total_biomass$Year <- ('2011')
###output
export(Thor_2011_Total_biomass,"Thor/data/Thor_2011_biomass_data.csv")


Thor_2012 <- import("Thor/data/Thor_2012.xls")
Thor_2012_Total_biomass <- summarise_at(Thor_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2012_Total_biomass$Year <- ('2012')

###output
export(Thor_2012_Total_biomass,"Thor/data/Thor_2012_biomass_data.csv")

Thor_2014 <- import("Thor/data/Thor_2014.xls")
Thor_2014_Total_biomass <- summarise_at(Thor_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2014_Total_biomass$Year <- ('2014')

###output
export(Thor_2014_Total_biomass,"Thor/data/Thor_2014_biomass_data.csv")

Thor_2016 <- import("Thor/data/Thor_2016.xls")
Thor_2016_Total_biomass <- summarise_at(Thor_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2016_Total_biomass$Year <- ('2016')

###output
export(Thor_2016_Total_biomass,"Thor/data/Thor_2016_biomass_data.csv")

Thor_2018 <- import("Thor/data/Thor_2018.xls")
Thor_2018_Total_biomass <- summarise_at(Thor_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2018_Total_biomass$Year <- ('2018')
###output
export(Thor_2018_Total_biomass,"Thor/data/Thor_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Thor_1999_merge <- read_csv("Thor/data/Thor_1999_biomass_data.csv")
Thor_2000_merge <- read_csv("Thor/data/Thor_2000_biomass_data.csv")
Thor_2001_merge <- read_csv("Thor/data/Thor_2001_biomass_data.csv")
Thor_2002_merge <- read_csv("Thor/data/Thor_2002_biomass_data.csv")
Thor_2003_merge <- read_csv("Thor/data/Thor_2003_biomass_data.csv")
#Thor_2004_merge <- read_csv("Thor/data/Thor_2004_biomass_data.csv")
Thor_2005_merge <- read_csv("Thor/data/Thor_2005_biomass_data.csv")
Thor_2006_merge <- read_csv("Thor/data/Thor_2006_biomass_data.csv")
Thor_2007_merge <- read_csv("Thor/data/Thor_2007_biomass_data.csv")
Thor_2008_merge <- read_csv("Thor/data/Thor_2008_biomass_data.csv")
Thor_2009_merge <- read_csv("Thor/data/Thor_2009_biomass_data.csv")
Thor_2010_merge <- read_csv("Thor/data/Thor_2010_biomass_data.csv")
Thor_2011_merge <- read_csv("Thor/data/Thor_2011_biomass_data.csv")
Thor_2012_merge <- read_csv("Thor/data/Thor_2012_biomass_data.csv")
Thor_2014_merge <- read_csv("Thor/data/Thor_2014_biomass_data.csv")
Thor_2016_merge <- read_csv("Thor/data/Thor_2016_biomass_data.csv")
Thor_2018_merge <- read_csv("Thor/data/Thor_2018_biomass_data.csv")

Thor_merge_1 <- rbind(Thor_1999_merge,Thor_2000_merge)
Thor_merge_2 <- rbind(Thor_merge_1,Thor_2001_merge)
Thor_merge_3 <- rbind(Thor_merge_2,Thor_2002_merge)
Thor_merge_5 <- rbind(Thor_merge_3,Thor_2003_merge)
Thor_merge_6 <- rbind(Thor_merge_5,Thor_2005_merge)
Thor_merge_7 <- rbind(Thor_merge_6,Thor_2006_merge)
Thor_merge_8 <- rbind(Thor_merge_7,Thor_2007_merge)
Thor_merge_9 <- rbind(Thor_merge_8,Thor_2008_merge)
Thor_merge_10 <- rbind(Thor_merge_9,Thor_2009_merge)
Thor_merge_11 <- rbind(Thor_merge_10,Thor_2010_merge)
Thor_merge_12<- rbind(Thor_merge_11,Thor_2011_merge)
Thor_merge_13 <- rbind(Thor_merge_12,Thor_2012_merge)
Thor_merge_14 <- rbind(Thor_merge_13,Thor_2014_merge)
Thor_merge_15 <- rbind(Thor_merge_14,Thor_2016_merge)
Thor_Reef_biomass_data_combined <- rbind(Thor_merge_15,Thor_2018_merge)


##output
export(Thor_Reef_biomass_data_combined,"Thor/data/Thor_biomass_data_combined.csv")


###West Turtle Shoal



##repeat for all years 99-16
West_Turtle_Shoal_1999 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_1999.xls")
West_Turtle_Shoal_1999_Total_biomass <- summarise_at(West_Turtle_Shoal_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_1999_Total_biomass$Year <- ('1999')
###output
export(West_Turtle_Shoal_1999_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_1999_biomass_data.csv")

West_Turtle_Shoal_2000 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2000.xls")
West_Turtle_Shoal_2000_Total_biomass <- summarise_at(West_Turtle_Shoal_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2000_Total_biomass$Year <- ('2000')
###output
export(West_Turtle_Shoal_2000_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_2000_biomass_data.csv")

West_Turtle_Shoal_2001 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2001.xls")
West_Turtle_Shoal_2001_Total_biomass <- summarise_at(West_Turtle_Shoal_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2001_Total_biomass$Year <- ('2001')
###output
export(West_Turtle_Shoal_2001_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_2001_biomass_data.csv")

West_Turtle_Shoal_2002 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2002.xls")
West_Turtle_Shoal_2002_Total_biomass <- summarise_at(West_Turtle_Shoal_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2002_Total_biomass$Year <- ('2002')
###output
export(West_Turtle_Shoal_2002_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_2002_biomass_data.csv")

West_Turtle_Shoal_2003 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2003.xls")
West_Turtle_Shoal_2003_Total_biomass <- summarise_at(West_Turtle_Shoal_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2003_Total_biomass$Year <- ('2003')
###output
export(West_Turtle_Shoal_2003_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_2003_biomass_data.csv")


#West_Turtle_Shoal_2004 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2004.xls")
#West_Turtle_Shoal_2004_Total_biomass <- summarise_at(West_Turtle_Shoal_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
#West_Turtle_Shoal_2004_Total_biomass$Year <- ('2004')

###output
#export(West_Turtle_Shoal_2004_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_2004_biomass_data.csv")

West_Turtle_Shoal_2005 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2005.xls")
West_Turtle_Shoal_2005_Total_biomass <- summarise_at(West_Turtle_Shoal_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2005_Total_biomass$Year <- ('2005')
###output
export(West_Turtle_Shoal_2005_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_2005_biomass_data.csv")


West_Turtle_Shoal_2006 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2006.xls")
West_Turtle_Shoal_2006_Total_biomass <- summarise_at(West_Turtle_Shoal_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2006_Total_biomass$Year <- ('2006')

###output
export(West_Turtle_Shoal_2006_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_2006_biomass_data.csv")

West_Turtle_Shoal_2007 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2007.xls")
West_Turtle_Shoal_2007_Total_biomass <- summarise_at(West_Turtle_Shoal_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2007_Total_biomass$Year <- ('2007')
###output
export(West_Turtle_Shoal_2007_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_2007_biomass_data.csv")


West_Turtle_Shoal_2008 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2008.xls")
West_Turtle_Shoal_2008_Total_biomass <- summarise_at(West_Turtle_Shoal_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2008_Total_biomass$Year <- ('2008')

###output
export(West_Turtle_Shoal_2008_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_2008_biomass_data.csv")

West_Turtle_Shoal_2009 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2009.xls")
West_Turtle_Shoal_2009_Total_biomass <- summarise_at(West_Turtle_Shoal_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2009_Total_biomass$Year <- ('2009')
###output
export(West_Turtle_Shoal_2009_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_2009_biomass_data.csv")


West_Turtle_Shoal_2010 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2010.xls")
West_Turtle_Shoal_2010_Total_biomass <- summarise_at(West_Turtle_Shoal_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2010_Total_biomass$Year <- ('2010')

###output
export(West_Turtle_Shoal_2010_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_2010_biomass_data.csv")

West_Turtle_Shoal_2011 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2011.xls")
West_Turtle_Shoal_2011_Total_biomass <- summarise_at(West_Turtle_Shoal_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2011_Total_biomass$Year <- ('2011')
###output
export(West_Turtle_Shoal_2011_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_2011_biomass_data.csv")


West_Turtle_Shoal_2012 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2012.xls")
West_Turtle_Shoal_2012_Total_biomass <- summarise_at(West_Turtle_Shoal_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2012_Total_biomass$Year <- ('2012')

###output
export(West_Turtle_Shoal_2012_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_2012_biomass_data.csv")

West_Turtle_Shoal_2014 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2014.xls")
West_Turtle_Shoal_2014_Total_biomass <- summarise_at(West_Turtle_Shoal_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2014_Total_biomass$Year <- ('2014')

###output
export(West_Turtle_Shoal_2014_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_2014_biomass_data.csv")

West_Turtle_Shoal_2016 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2016.xls")
West_Turtle_Shoal_2016_Total_biomass <- summarise_at(West_Turtle_Shoal_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2016_Total_biomass$Year <- ('2016')

###output
export(West_Turtle_Shoal_2016_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_2016_biomass_data.csv")

West_Turtle_Shoal_2018 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2018.xls")
West_Turtle_Shoal_2018_Total_biomass <- summarise_at(West_Turtle_Shoal_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2018_Total_biomass$Year <- ('2018')
###output
export(West_Turtle_Shoal_2018_Total_biomass,"West_Turtle_Shoal/data/West_Turtle_Shoal_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
West_Turtle_Shoal_1999_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_1999_biomass_data.csv")
West_Turtle_Shoal_2000_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_2000_biomass_data.csv")
West_Turtle_Shoal_2001_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_2001_biomass_data.csv")
West_Turtle_Shoal_2002_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_2002_biomass_data.csv")
West_Turtle_Shoal_2003_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_2003_biomass_data.csv")
#West_Turtle_Shoal_2004_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_2004_biomass_data.csv")
West_Turtle_Shoal_2005_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_2005_biomass_data.csv")
West_Turtle_Shoal_2006_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_2006_biomass_data.csv")
West_Turtle_Shoal_2007_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_2007_biomass_data.csv")
West_Turtle_Shoal_2008_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_2008_biomass_data.csv")
West_Turtle_Shoal_2009_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_2009_biomass_data.csv")
West_Turtle_Shoal_2010_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_2010_biomass_data.csv")
West_Turtle_Shoal_2011_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_2011_biomass_data.csv")
West_Turtle_Shoal_2012_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_2012_biomass_data.csv")
West_Turtle_Shoal_2014_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_2014_biomass_data.csv")
West_Turtle_Shoal_2016_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_2016_biomass_data.csv")
West_Turtle_Shoal_2018_merge <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_2018_biomass_data.csv")

West_Turtle_Shoal_merge_1 <- rbind(West_Turtle_Shoal_1999_merge,West_Turtle_Shoal_2000_merge)
West_Turtle_Shoal_merge_2 <- rbind(West_Turtle_Shoal_merge_1,West_Turtle_Shoal_2001_merge)
West_Turtle_Shoal_merge_3 <- rbind(West_Turtle_Shoal_merge_2,West_Turtle_Shoal_2002_merge)
West_Turtle_Shoal_merge_5 <- rbind(West_Turtle_Shoal_merge_3,West_Turtle_Shoal_2003_merge)
West_Turtle_Shoal_merge_6 <- rbind(West_Turtle_Shoal_merge_5,West_Turtle_Shoal_2005_merge)
West_Turtle_Shoal_merge_7 <- rbind(West_Turtle_Shoal_merge_6,West_Turtle_Shoal_2006_merge)
West_Turtle_Shoal_merge_8 <- rbind(West_Turtle_Shoal_merge_7,West_Turtle_Shoal_2007_merge)
West_Turtle_Shoal_merge_9 <- rbind(West_Turtle_Shoal_merge_8,West_Turtle_Shoal_2008_merge)
West_Turtle_Shoal_merge_10 <- rbind(West_Turtle_Shoal_merge_9,West_Turtle_Shoal_2009_merge)
West_Turtle_Shoal_merge_11 <- rbind(West_Turtle_Shoal_merge_10,West_Turtle_Shoal_2010_merge)
West_Turtle_Shoal_merge_12<- rbind(West_Turtle_Shoal_merge_11,West_Turtle_Shoal_2011_merge)
West_Turtle_Shoal_merge_13 <- rbind(West_Turtle_Shoal_merge_12,West_Turtle_Shoal_2012_merge)
West_Turtle_Shoal_merge_14 <- rbind(West_Turtle_Shoal_merge_13,West_Turtle_Shoal_2014_merge)
West_Turtle_Shoal_merge_15 <- rbind(West_Turtle_Shoal_merge_14,West_Turtle_Shoal_2016_merge)
West_Turtle_Shoal_Reef_biomass_data_combined <- rbind(West_Turtle_Shoal_merge_15,West_Turtle_Shoal_2018_merge)


##output
export(West_Turtle_Shoal_Reef_biomass_data_combined,"West_Turtle_Shoal/data/West_Turtle_Shoal_biomass_data_combined.csv")




#### UPPER KEYS

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/UK")


### Admiral 

Admiral_1999 <- import("Admiral/data/Admiral_1999.xls")
Admiral_1999_Total_biomass <- summarise_at(Admiral_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_1999_Total_biomass$Year <- ('1999')
###output
export(Admiral_1999_Total_biomass,"Admiral/data/Admiral_1999_biomass_data.csv")

Admiral_2000 <- import("Admiral/data/Admiral_2000.xls")
Admiral_2000_Total_biomass <- summarise_at(Admiral_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2000_Total_biomass$Year <- ('2000')
###output
export(Admiral_2000_Total_biomass,"Admiral/data/Admiral_2000_biomass_data.csv")

Admiral_2001 <- import("Admiral/data/Admiral_2001.xls")
Admiral_2001_Total_biomass <- summarise_at(Admiral_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2001_Total_biomass$Year <- ('2001')
###output
export(Admiral_2001_Total_biomass,"Admiral/data/Admiral_2001_biomass_data.csv")

Admiral_2002 <- import("Admiral/data/Admiral_2002.xls")
Admiral_2002_Total_biomass <- summarise_at(Admiral_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2002_Total_biomass$Year <- ('2002')
###output
export(Admiral_2002_Total_biomass,"Admiral/data/Admiral_2002_biomass_data.csv")

Admiral_2003 <- import("Admiral/data/Admiral_2003.xls")
Admiral_2003_Total_biomass <- summarise_at(Admiral_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2003_Total_biomass$Year <- ('2003')
###output
export(Admiral_2003_Total_biomass,"Admiral/data/Admiral_2003_biomass_data.csv")


Admiral_2004 <- import("Admiral/data/Admiral_2004.xls")
Admiral_2004_Total_biomass <- summarise_at(Admiral_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2004_Total_biomass$Year <- ('2004')

###output
export(Admiral_2004_Total_biomass,"Admiral/data/Admiral_2004_biomass_data.csv")

Admiral_2005 <- import("Admiral/data/Admiral_2005.xls")
Admiral_2005_Total_biomass <- summarise_at(Admiral_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2005_Total_biomass$Year <- ('2005')
###output
export(Admiral_2005_Total_biomass,"Admiral/data/Admiral_2005_biomass_data.csv")


Admiral_2006 <- import("Admiral/data/Admiral_2006.xls")
Admiral_2006_Total_biomass <- summarise_at(Admiral_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2006_Total_biomass$Year <- ('2006')

###output
export(Admiral_2006_Total_biomass,"Admiral/data/Admiral_2006_biomass_data.csv")

Admiral_2007 <- import("Admiral/data/Admiral_2007.xls")
Admiral_2007_Total_biomass <- summarise_at(Admiral_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2007_Total_biomass$Year <- ('2007')
###output
export(Admiral_2007_Total_biomass,"Admiral/data/Admiral_2007_biomass_data.csv")


Admiral_2008 <- import("Admiral/data/Admiral_2008.xls")
Admiral_2008_Total_biomass <- summarise_at(Admiral_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2008_Total_biomass$Year <- ('2008')

###output
export(Admiral_2008_Total_biomass,"Admiral/data/Admiral_2008_biomass_data.csv")

Admiral_2009 <- import("Admiral/data/Admiral_2009.xls")
Admiral_2009_Total_biomass <- summarise_at(Admiral_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2009_Total_biomass$Year <- ('2009')
###output
export(Admiral_2009_Total_biomass,"Admiral/data/Admiral_2009_biomass_data.csv")


Admiral_2010 <- import("Admiral/data/Admiral_2010.xls")
Admiral_2010_Total_biomass <- summarise_at(Admiral_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2010_Total_biomass$Year <- ('2010')

###output
export(Admiral_2010_Total_biomass,"Admiral/data/Admiral_2010_biomass_data.csv")

Admiral_2011 <- import("Admiral/data/Admiral_2011.xls")
Admiral_2011_Total_biomass <- summarise_at(Admiral_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2011_Total_biomass$Year <- ('2011')
###output
export(Admiral_2011_Total_biomass,"Admiral/data/Admiral_2011_biomass_data.csv")


Admiral_2012 <- import("Admiral/data/Admiral_2012.xls")
Admiral_2012_Total_biomass <- summarise_at(Admiral_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2012_Total_biomass$Year <- ('2012')

###output
export(Admiral_2012_Total_biomass,"Admiral/data/Admiral_2012_biomass_data.csv")

Admiral_2014 <- import("Admiral/data/Admiral_2014.xls")
Admiral_2014_Total_biomass <- summarise_at(Admiral_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2014_Total_biomass$Year <- ('2014')

###output
export(Admiral_2014_Total_biomass,"Admiral/data/Admiral_2014_biomass_data.csv")

Admiral_2016 <- import("Admiral/data/Admiral_2016.xls")
Admiral_2016_Total_biomass <- summarise_at(Admiral_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2016_Total_biomass$Year <- ('2016')

###output
export(Admiral_2016_Total_biomass,"Admiral/data/Admiral_2016_biomass_data.csv")

Admiral_2018 <- import("Admiral/data/Admiral_2018.xls")
Admiral_2018_Total_biomass <- summarise_at(Admiral_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2018_Total_biomass$Year <- ('2018')
###output
export(Admiral_2018_Total_biomass,"Admiral/data/Admiral_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Admiral_1999_merge <- read_csv("Admiral/data/Admiral_1999_biomass_data.csv")
Admiral_2000_merge <- read_csv("Admiral/data/Admiral_2000_biomass_data.csv")
Admiral_2001_merge <- read_csv("Admiral/data/Admiral_2001_biomass_data.csv")
Admiral_2002_merge <- read_csv("Admiral/data/Admiral_2002_biomass_data.csv")
Admiral_2003_merge <- read_csv("Admiral/data/Admiral_2003_biomass_data.csv")
Admiral_2004_merge <- read_csv("Admiral/data/Admiral_2004_biomass_data.csv")
Admiral_2005_merge <- read_csv("Admiral/data/Admiral_2005_biomass_data.csv")
Admiral_2006_merge <- read_csv("Admiral/data/Admiral_2006_biomass_data.csv")
Admiral_2007_merge <- read_csv("Admiral/data/Admiral_2007_biomass_data.csv")
Admiral_2008_merge <- read_csv("Admiral/data/Admiral_2008_biomass_data.csv")
Admiral_2009_merge <- read_csv("Admiral/data/Admiral_2009_biomass_data.csv")
Admiral_2010_merge <- read_csv("Admiral/data/Admiral_2010_biomass_data.csv")
Admiral_2011_merge <- read_csv("Admiral/data/Admiral_2011_biomass_data.csv")
Admiral_2012_merge <- read_csv("Admiral/data/Admiral_2012_biomass_data.csv")
Admiral_2014_merge <- read_csv("Admiral/data/Admiral_2014_biomass_data.csv")
Admiral_2016_merge <- read_csv("Admiral/data/Admiral_2016_biomass_data.csv")
Admiral_2018_merge <- read_csv("Admiral/data/Admiral_2018_biomass_data.csv")

Admiral_merge_1 <- rbind(Admiral_1999_merge,Admiral_2000_merge)
Admiral_merge_2 <- rbind(Admiral_merge_1,Admiral_2001_merge)
Admiral_merge_3 <- rbind(Admiral_merge_2,Admiral_2002_merge)
Admiral_merge_4 <- rbind(Admiral_merge_3,Admiral_2003_merge)
Admiral_merge_5 <- rbind(Admiral_merge_4,Admiral_2004_merge)
Admiral_merge_6 <- rbind(Admiral_merge_5,Admiral_2005_merge)
Admiral_merge_7 <- rbind(Admiral_merge_6,Admiral_2006_merge)
Admiral_merge_8 <- rbind(Admiral_merge_7,Admiral_2007_merge)
Admiral_merge_9 <- rbind(Admiral_merge_8,Admiral_2008_merge)
Admiral_merge_10 <- rbind(Admiral_merge_9,Admiral_2009_merge)
Admiral_merge_11<- rbind(Admiral_merge_10,Admiral_2010_merge)
Admiral_merge_12 <- rbind(Admiral_merge_11,Admiral_2011_merge)
Admiral_merge_13 <- rbind(Admiral_merge_12,Admiral_2012_merge)
Admiral_merge_14 <- rbind(Admiral_merge_13,Admiral_2014_merge)
Admiral_merge_15 <- rbind(Admiral_merge_14,Admiral_2016_merge)
Admiral_Reef_biomass_data_combined <- rbind(Admiral_merge_15,Admiral_2018_merge)

##output
export(Admiral_Reef_biomass_data_combined,"Admiral/data/Admiral_biomass_data_combined.csv")


###Burr Fish


Burr_Fish_1999 <- import("Burr_Fish/data/Burr_Fish_1999.xls")
Burr_Fish_1999_Total_biomass <- summarise_at(Burr_Fish_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_1999_Total_biomass$Year <- ('1999')
###output
export(Burr_Fish_1999_Total_biomass,"Burr_Fish/data/Burr_Fish_1999_biomass_data.csv")

Burr_Fish_2000 <- import("Burr_Fish/data/Burr_Fish_2000.xls")
Burr_Fish_2000_Total_biomass <- summarise_at(Burr_Fish_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2000_Total_biomass$Year <- ('2000')
###output
export(Burr_Fish_2000_Total_biomass,"Burr_Fish/data/Burr_Fish_2000_biomass_data.csv")

Burr_Fish_2001 <- import("Burr_Fish/data/Burr_Fish_2001.xls")
Burr_Fish_2001_Total_biomass <- summarise_at(Burr_Fish_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2001_Total_biomass$Year <- ('2001')
###output
export(Burr_Fish_2001_Total_biomass,"Burr_Fish/data/Burr_Fish_2001_biomass_data.csv")

Burr_Fish_2002 <- import("Burr_Fish/data/Burr_Fish_2002.xls")
Burr_Fish_2002_Total_biomass <- summarise_at(Burr_Fish_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2002_Total_biomass$Year <- ('2002')
###output
export(Burr_Fish_2002_Total_biomass,"Burr_Fish/data/Burr_Fish_2002_biomass_data.csv")

Burr_Fish_2003 <- import("Burr_Fish/data/Burr_Fish_2003.xls")
Burr_Fish_2003_Total_biomass <- summarise_at(Burr_Fish_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2003_Total_biomass$Year <- ('2003')
###output
export(Burr_Fish_2003_Total_biomass,"Burr_Fish/data/Burr_Fish_2003_biomass_data.csv")


Burr_Fish_2004 <- import("Burr_Fish/data/Burr_Fish_2004.xls")
Burr_Fish_2004_Total_biomass <- summarise_at(Burr_Fish_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2004_Total_biomass$Year <- ('2004')

###output
export(Burr_Fish_2004_Total_biomass,"Burr_Fish/data/Burr_Fish_2004_biomass_data.csv")

Burr_Fish_2005 <- import("Burr_Fish/data/Burr_Fish_2005.xls")
Burr_Fish_2005_Total_biomass <- summarise_at(Burr_Fish_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2005_Total_biomass$Year <- ('2005')
###output
export(Burr_Fish_2005_Total_biomass,"Burr_Fish/data/Burr_Fish_2005_biomass_data.csv")


Burr_Fish_2006 <- import("Burr_Fish/data/Burr_Fish_2006.xls")
Burr_Fish_2006_Total_biomass <- summarise_at(Burr_Fish_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2006_Total_biomass$Year <- ('2006')

###output
export(Burr_Fish_2006_Total_biomass,"Burr_Fish/data/Burr_Fish_2006_biomass_data.csv")

Burr_Fish_2007 <- import("Burr_Fish/data/Burr_Fish_2007.xls")
Burr_Fish_2007_Total_biomass <- summarise_at(Burr_Fish_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2007_Total_biomass$Year <- ('2007')
###output
export(Burr_Fish_2007_Total_biomass,"Burr_Fish/data/Burr_Fish_2007_biomass_data.csv")


Burr_Fish_2008 <- import("Burr_Fish/data/Burr_Fish_2008.xls")
Burr_Fish_2008_Total_biomass <- summarise_at(Burr_Fish_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2008_Total_biomass$Year <- ('2008')

###output
export(Burr_Fish_2008_Total_biomass,"Burr_Fish/data/Burr_Fish_2008_biomass_data.csv")

Burr_Fish_2009 <- import("Burr_Fish/data/Burr_Fish_2009.xls")
Burr_Fish_2009_Total_biomass <- summarise_at(Burr_Fish_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2009_Total_biomass$Year <- ('2009')
###output
export(Burr_Fish_2009_Total_biomass,"Burr_Fish/data/Burr_Fish_2009_biomass_data.csv")


Burr_Fish_2010 <- import("Burr_Fish/data/Burr_Fish_2010.xls")
Burr_Fish_2010_Total_biomass <- summarise_at(Burr_Fish_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2010_Total_biomass$Year <- ('2010')

###output
export(Burr_Fish_2010_Total_biomass,"Burr_Fish/data/Burr_Fish_2010_biomass_data.csv")

Burr_Fish_2011 <- import("Burr_Fish/data/Burr_Fish_2011.xls")
Burr_Fish_2011_Total_biomass <- summarise_at(Burr_Fish_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2011_Total_biomass$Year <- ('2011')
###output
export(Burr_Fish_2011_Total_biomass,"Burr_Fish/data/Burr_Fish_2011_biomass_data.csv")


Burr_Fish_2012 <- import("Burr_Fish/data/Burr_Fish_2012.xls")
Burr_Fish_2012_Total_biomass <- summarise_at(Burr_Fish_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2012_Total_biomass$Year <- ('2012')

###output
export(Burr_Fish_2012_Total_biomass,"Burr_Fish/data/Burr_Fish_2012_biomass_data.csv")

Burr_Fish_2014 <- import("Burr_Fish/data/Burr_Fish_2014.xls")
Burr_Fish_2014_Total_biomass <- summarise_at(Burr_Fish_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2014_Total_biomass$Year <- ('2014')

###output
export(Burr_Fish_2014_Total_biomass,"Burr_Fish/data/Burr_Fish_2014_biomass_data.csv")

Burr_Fish_2016 <- import("Burr_Fish/data/Burr_Fish_2016.xls")
Burr_Fish_2016_Total_biomass <- summarise_at(Burr_Fish_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2016_Total_biomass$Year <- ('2016')

###output
export(Burr_Fish_2016_Total_biomass,"Burr_Fish/data/Burr_Fish_2016_biomass_data.csv")

Burr_Fish_2018 <- import("Burr_Fish/data/Burr_Fish_2018.xls")
Burr_Fish_2018_Total_biomass <- summarise_at(Burr_Fish_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2018_Total_biomass$Year <- ('2018')
###output
export(Burr_Fish_2018_Total_biomass,"Burr_Fish/data/Burr_Fish_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Burr_Fish_1999_merge <- read_csv("Burr_Fish/data/Burr_Fish_1999_biomass_data.csv")
Burr_Fish_2000_merge <- read_csv("Burr_Fish/data/Burr_Fish_2000_biomass_data.csv")
Burr_Fish_2001_merge <- read_csv("Burr_Fish/data/Burr_Fish_2001_biomass_data.csv")
Burr_Fish_2002_merge <- read_csv("Burr_Fish/data/Burr_Fish_2002_biomass_data.csv")
Burr_Fish_2003_merge <- read_csv("Burr_Fish/data/Burr_Fish_2003_biomass_data.csv")
Burr_Fish_2004_merge <- read_csv("Burr_Fish/data/Burr_Fish_2004_biomass_data.csv")
Burr_Fish_2005_merge <- read_csv("Burr_Fish/data/Burr_Fish_2005_biomass_data.csv")
Burr_Fish_2006_merge <- read_csv("Burr_Fish/data/Burr_Fish_2006_biomass_data.csv")
Burr_Fish_2007_merge <- read_csv("Burr_Fish/data/Burr_Fish_2007_biomass_data.csv")
Burr_Fish_2008_merge <- read_csv("Burr_Fish/data/Burr_Fish_2008_biomass_data.csv")
Burr_Fish_2009_merge <- read_csv("Burr_Fish/data/Burr_Fish_2009_biomass_data.csv")
Burr_Fish_2010_merge <- read_csv("Burr_Fish/data/Burr_Fish_2010_biomass_data.csv")
Burr_Fish_2011_merge <- read_csv("Burr_Fish/data/Burr_Fish_2011_biomass_data.csv")
Burr_Fish_2012_merge <- read_csv("Burr_Fish/data/Burr_Fish_2012_biomass_data.csv")
Burr_Fish_2014_merge <- read_csv("Burr_Fish/data/Burr_Fish_2014_biomass_data.csv")
Burr_Fish_2016_merge <- read_csv("Burr_Fish/data/Burr_Fish_2016_biomass_data.csv")
Burr_Fish_2018_merge <- read_csv("Burr_Fish/data/Burr_Fish_2018_biomass_data.csv")

Burr_Fish_merge_1 <- rbind(Burr_Fish_1999_merge,Burr_Fish_2000_merge)
Burr_Fish_merge_2 <- rbind(Burr_Fish_merge_1,Burr_Fish_2001_merge)
Burr_Fish_merge_3 <- rbind(Burr_Fish_merge_2,Burr_Fish_2002_merge)
Burr_Fish_merge_4 <- rbind(Burr_Fish_merge_3,Burr_Fish_2003_merge)
Burr_Fish_merge_5 <- rbind(Burr_Fish_merge_4,Burr_Fish_2004_merge)
Burr_Fish_merge_6 <- rbind(Burr_Fish_merge_5,Burr_Fish_2005_merge)
Burr_Fish_merge_7 <- rbind(Burr_Fish_merge_6,Burr_Fish_2006_merge)
Burr_Fish_merge_8 <- rbind(Burr_Fish_merge_7,Burr_Fish_2007_merge)
Burr_Fish_merge_9 <- rbind(Burr_Fish_merge_8,Burr_Fish_2008_merge)
Burr_Fish_merge_10 <- rbind(Burr_Fish_merge_9,Burr_Fish_2009_merge)
Burr_Fish_merge_11<- rbind(Burr_Fish_merge_10,Burr_Fish_2010_merge)
Burr_Fish_merge_12 <- rbind(Burr_Fish_merge_11,Burr_Fish_2011_merge)
Burr_Fish_merge_13 <- rbind(Burr_Fish_merge_12,Burr_Fish_2012_merge)
Burr_Fish_merge_14 <- rbind(Burr_Fish_merge_13,Burr_Fish_2014_merge)
Burr_Fish_merge_15 <- rbind(Burr_Fish_merge_14,Burr_Fish_2016_merge)
Burr_Fish_Reef_biomass_data_combined <- rbind(Burr_Fish_merge_15,Burr_Fish_2018_merge)

##output
export(Burr_Fish_Reef_biomass_data_combined,"Burr_Fish/data/Burr_Fish_biomass_data_combined.csv")


###Carysfort Deep


Carysfort_Deep_1999 <- import("Carysfort_Deep/data/Carysfort_Deep_1999.xls")
Carysfort_Deep_1999_Total_biomass <- summarise_at(Carysfort_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_1999_Total_biomass$Year <- ('1999')
###output
export(Carysfort_Deep_1999_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_1999_biomass_data.csv")

Carysfort_Deep_2000 <- import("Carysfort_Deep/data/Carysfort_Deep_2000.xls")
Carysfort_Deep_2000_Total_biomass <- summarise_at(Carysfort_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2000_Total_biomass$Year <- ('2000')
###output
export(Carysfort_Deep_2000_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_2000_biomass_data.csv")

Carysfort_Deep_2001 <- import("Carysfort_Deep/data/Carysfort_Deep_2001.xls")
Carysfort_Deep_2001_Total_biomass <- summarise_at(Carysfort_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2001_Total_biomass$Year <- ('2001')
###output
export(Carysfort_Deep_2001_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_2001_biomass_data.csv")

Carysfort_Deep_2002 <- import("Carysfort_Deep/data/Carysfort_Deep_2002.xls")
Carysfort_Deep_2002_Total_biomass <- summarise_at(Carysfort_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2002_Total_biomass$Year <- ('2002')
###output
export(Carysfort_Deep_2002_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_2002_biomass_data.csv")

Carysfort_Deep_2003 <- import("Carysfort_Deep/data/Carysfort_Deep_2003.xls")
Carysfort_Deep_2003_Total_biomass <- summarise_at(Carysfort_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2003_Total_biomass$Year <- ('2003')
###output
export(Carysfort_Deep_2003_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_2003_biomass_data.csv")


Carysfort_Deep_2004 <- import("Carysfort_Deep/data/Carysfort_Deep_2004.xls")
Carysfort_Deep_2004_Total_biomass <- summarise_at(Carysfort_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2004_Total_biomass$Year <- ('2004')

###output
export(Carysfort_Deep_2004_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_2004_biomass_data.csv")

Carysfort_Deep_2005 <- import("Carysfort_Deep/data/Carysfort_Deep_2005.xls")
Carysfort_Deep_2005_Total_biomass <- summarise_at(Carysfort_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2005_Total_biomass$Year <- ('2005')
###output
export(Carysfort_Deep_2005_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_2005_biomass_data.csv")


Carysfort_Deep_2006 <- import("Carysfort_Deep/data/Carysfort_Deep_2006.xls")
Carysfort_Deep_2006_Total_biomass <- summarise_at(Carysfort_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2006_Total_biomass$Year <- ('2006')

###output
export(Carysfort_Deep_2006_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_2006_biomass_data.csv")

Carysfort_Deep_2007 <- import("Carysfort_Deep/data/Carysfort_Deep_2007.xls")
Carysfort_Deep_2007_Total_biomass <- summarise_at(Carysfort_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2007_Total_biomass$Year <- ('2007')
###output
export(Carysfort_Deep_2007_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_2007_biomass_data.csv")


Carysfort_Deep_2008 <- import("Carysfort_Deep/data/Carysfort_Deep_2008.xls")
Carysfort_Deep_2008_Total_biomass <- summarise_at(Carysfort_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2008_Total_biomass$Year <- ('2008')

###output
export(Carysfort_Deep_2008_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_2008_biomass_data.csv")

Carysfort_Deep_2009 <- import("Carysfort_Deep/data/Carysfort_Deep_2009.xls")
Carysfort_Deep_2009_Total_biomass <- summarise_at(Carysfort_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2009_Total_biomass$Year <- ('2009')
###output
export(Carysfort_Deep_2009_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_2009_biomass_data.csv")


Carysfort_Deep_2010 <- import("Carysfort_Deep/data/Carysfort_Deep_2010.xls")
Carysfort_Deep_2010_Total_biomass <- summarise_at(Carysfort_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2010_Total_biomass$Year <- ('2010')

###output
export(Carysfort_Deep_2010_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_2010_biomass_data.csv")

Carysfort_Deep_2011 <- import("Carysfort_Deep/data/Carysfort_Deep_2011.xls")
Carysfort_Deep_2011_Total_biomass <- summarise_at(Carysfort_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2011_Total_biomass$Year <- ('2011')
###output
export(Carysfort_Deep_2011_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_2011_biomass_data.csv")


Carysfort_Deep_2012 <- import("Carysfort_Deep/data/Carysfort_Deep_2012.xls")
Carysfort_Deep_2012_Total_biomass <- summarise_at(Carysfort_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2012_Total_biomass$Year <- ('2012')

###output
export(Carysfort_Deep_2012_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_2012_biomass_data.csv")

Carysfort_Deep_2014 <- import("Carysfort_Deep/data/Carysfort_Deep_2014.xls")
Carysfort_Deep_2014_Total_biomass <- summarise_at(Carysfort_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2014_Total_biomass$Year <- ('2014')

###output
export(Carysfort_Deep_2014_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_2014_biomass_data.csv")

Carysfort_Deep_2016 <- import("Carysfort_Deep/data/Carysfort_Deep_2016.xls")
Carysfort_Deep_2016_Total_biomass <- summarise_at(Carysfort_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2016_Total_biomass$Year <- ('2016')

###output
export(Carysfort_Deep_2016_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_2016_biomass_data.csv")

Carysfort_Deep_2018 <- import("Carysfort_Deep/data/Carysfort_Deep_2018.xls")
Carysfort_Deep_2018_Total_biomass <- summarise_at(Carysfort_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2018_Total_biomass$Year <- ('2018')
###output
export(Carysfort_Deep_2018_Total_biomass,"Carysfort_Deep/data/Carysfort_Deep_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Carysfort_Deep_1999_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_1999_biomass_data.csv")
Carysfort_Deep_2000_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_2000_biomass_data.csv")
Carysfort_Deep_2001_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_2001_biomass_data.csv")
Carysfort_Deep_2002_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_2002_biomass_data.csv")
Carysfort_Deep_2003_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_2003_biomass_data.csv")
Carysfort_Deep_2004_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_2004_biomass_data.csv")
Carysfort_Deep_2005_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_2005_biomass_data.csv")
Carysfort_Deep_2006_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_2006_biomass_data.csv")
Carysfort_Deep_2007_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_2007_biomass_data.csv")
Carysfort_Deep_2008_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_2008_biomass_data.csv")
Carysfort_Deep_2009_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_2009_biomass_data.csv")
Carysfort_Deep_2010_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_2010_biomass_data.csv")
Carysfort_Deep_2011_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_2011_biomass_data.csv")
Carysfort_Deep_2012_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_2012_biomass_data.csv")
Carysfort_Deep_2014_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_2014_biomass_data.csv")
Carysfort_Deep_2016_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_2016_biomass_data.csv")
Carysfort_Deep_2018_merge <- read_csv("Carysfort_Deep/data/Carysfort_Deep_2018_biomass_data.csv")

Carysfort_Deep_merge_1 <- rbind(Carysfort_Deep_1999_merge,Carysfort_Deep_2000_merge)
Carysfort_Deep_merge_2 <- rbind(Carysfort_Deep_merge_1,Carysfort_Deep_2001_merge)
Carysfort_Deep_merge_3 <- rbind(Carysfort_Deep_merge_2,Carysfort_Deep_2002_merge)
Carysfort_Deep_merge_4 <- rbind(Carysfort_Deep_merge_3,Carysfort_Deep_2003_merge)
Carysfort_Deep_merge_5 <- rbind(Carysfort_Deep_merge_4,Carysfort_Deep_2004_merge)
Carysfort_Deep_merge_6 <- rbind(Carysfort_Deep_merge_5,Carysfort_Deep_2005_merge)
Carysfort_Deep_merge_7 <- rbind(Carysfort_Deep_merge_6,Carysfort_Deep_2006_merge)
Carysfort_Deep_merge_8 <- rbind(Carysfort_Deep_merge_7,Carysfort_Deep_2007_merge)
Carysfort_Deep_merge_9 <- rbind(Carysfort_Deep_merge_8,Carysfort_Deep_2008_merge)
Carysfort_Deep_merge_10 <- rbind(Carysfort_Deep_merge_9,Carysfort_Deep_2009_merge)
Carysfort_Deep_merge_11<- rbind(Carysfort_Deep_merge_10,Carysfort_Deep_2010_merge)
Carysfort_Deep_merge_12 <- rbind(Carysfort_Deep_merge_11,Carysfort_Deep_2011_merge)
Carysfort_Deep_merge_13 <- rbind(Carysfort_Deep_merge_12,Carysfort_Deep_2012_merge)
Carysfort_Deep_merge_14 <- rbind(Carysfort_Deep_merge_13,Carysfort_Deep_2014_merge)
Carysfort_Deep_merge_15 <- rbind(Carysfort_Deep_merge_14,Carysfort_Deep_2016_merge)
Carysfort_Deep_Reef_biomass_data_combined <- rbind(Carysfort_Deep_merge_15,Carysfort_Deep_2018_merge)

##output
export(Carysfort_Deep_Reef_biomass_data_combined,"Carysfort_Deep/data/Carysfort_Deep_biomass_data_combined.csv")


###Carysfort Shallow


Carysfort_Shallow_1999 <- import("Carysfort_Shallow/data/Carysfort_Shallow_1999.xls")
Carysfort_Shallow_1999_Total_biomass <- summarise_at(Carysfort_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_1999_Total_biomass$Year <- ('1999')
###output
export(Carysfort_Shallow_1999_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_1999_biomass_data.csv")

Carysfort_Shallow_2000 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2000.xls")
Carysfort_Shallow_2000_Total_biomass <- summarise_at(Carysfort_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2000_Total_biomass$Year <- ('2000')
###output
export(Carysfort_Shallow_2000_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_2000_biomass_data.csv")

Carysfort_Shallow_2001 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2001.xls")
Carysfort_Shallow_2001_Total_biomass <- summarise_at(Carysfort_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2001_Total_biomass$Year <- ('2001')
###output
export(Carysfort_Shallow_2001_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_2001_biomass_data.csv")

Carysfort_Shallow_2002 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2002.xls")
Carysfort_Shallow_2002_Total_biomass <- summarise_at(Carysfort_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2002_Total_biomass$Year <- ('2002')
###output
export(Carysfort_Shallow_2002_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_2002_biomass_data.csv")

Carysfort_Shallow_2003 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2003.xls")
Carysfort_Shallow_2003_Total_biomass <- summarise_at(Carysfort_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2003_Total_biomass$Year <- ('2003')
###output
export(Carysfort_Shallow_2003_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_2003_biomass_data.csv")


Carysfort_Shallow_2004 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2004.xls")
Carysfort_Shallow_2004_Total_biomass <- summarise_at(Carysfort_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2004_Total_biomass$Year <- ('2004')

###output
export(Carysfort_Shallow_2004_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_2004_biomass_data.csv")

Carysfort_Shallow_2005 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2005.xls")
Carysfort_Shallow_2005_Total_biomass <- summarise_at(Carysfort_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2005_Total_biomass$Year <- ('2005')
###output
export(Carysfort_Shallow_2005_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_2005_biomass_data.csv")


Carysfort_Shallow_2006 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2006.xls")
Carysfort_Shallow_2006_Total_biomass <- summarise_at(Carysfort_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2006_Total_biomass$Year <- ('2006')

###output
export(Carysfort_Shallow_2006_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_2006_biomass_data.csv")

Carysfort_Shallow_2007 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2007.xls")
Carysfort_Shallow_2007_Total_biomass <- summarise_at(Carysfort_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2007_Total_biomass$Year <- ('2007')
###output
export(Carysfort_Shallow_2007_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_2007_biomass_data.csv")


Carysfort_Shallow_2008 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2008.xls")
Carysfort_Shallow_2008_Total_biomass <- summarise_at(Carysfort_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2008_Total_biomass$Year <- ('2008')

###output
export(Carysfort_Shallow_2008_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_2008_biomass_data.csv")

Carysfort_Shallow_2009 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2009.xls")
Carysfort_Shallow_2009_Total_biomass <- summarise_at(Carysfort_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2009_Total_biomass$Year <- ('2009')
###output
export(Carysfort_Shallow_2009_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_2009_biomass_data.csv")


Carysfort_Shallow_2010 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2010.xls")
Carysfort_Shallow_2010_Total_biomass <- summarise_at(Carysfort_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2010_Total_biomass$Year <- ('2010')

###output
export(Carysfort_Shallow_2010_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_2010_biomass_data.csv")

Carysfort_Shallow_2011 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2011.xls")
Carysfort_Shallow_2011_Total_biomass <- summarise_at(Carysfort_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2011_Total_biomass$Year <- ('2011')
###output
export(Carysfort_Shallow_2011_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_2011_biomass_data.csv")


Carysfort_Shallow_2012 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2012.xls")
Carysfort_Shallow_2012_Total_biomass <- summarise_at(Carysfort_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2012_Total_biomass$Year <- ('2012')

###output
export(Carysfort_Shallow_2012_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_2012_biomass_data.csv")

Carysfort_Shallow_2014 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2014.xls")
Carysfort_Shallow_2014_Total_biomass <- summarise_at(Carysfort_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2014_Total_biomass$Year <- ('2014')

###output
export(Carysfort_Shallow_2014_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_2014_biomass_data.csv")

Carysfort_Shallow_2016 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2016.xls")
Carysfort_Shallow_2016_Total_biomass <- summarise_at(Carysfort_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2016_Total_biomass$Year <- ('2016')

###output
export(Carysfort_Shallow_2016_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_2016_biomass_data.csv")

Carysfort_Shallow_2018 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2018.xls")
Carysfort_Shallow_2018_Total_biomass <- summarise_at(Carysfort_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2018_Total_biomass$Year <- ('2018')
###output
export(Carysfort_Shallow_2018_Total_biomass,"Carysfort_Shallow/data/Carysfort_Shallow_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Carysfort_Shallow_1999_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_1999_biomass_data.csv")
Carysfort_Shallow_2000_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_2000_biomass_data.csv")
Carysfort_Shallow_2001_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_2001_biomass_data.csv")
Carysfort_Shallow_2002_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_2002_biomass_data.csv")
Carysfort_Shallow_2003_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_2003_biomass_data.csv")
Carysfort_Shallow_2004_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_2004_biomass_data.csv")
Carysfort_Shallow_2005_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_2005_biomass_data.csv")
Carysfort_Shallow_2006_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_2006_biomass_data.csv")
Carysfort_Shallow_2007_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_2007_biomass_data.csv")
Carysfort_Shallow_2008_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_2008_biomass_data.csv")
Carysfort_Shallow_2009_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_2009_biomass_data.csv")
Carysfort_Shallow_2010_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_2010_biomass_data.csv")
Carysfort_Shallow_2011_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_2011_biomass_data.csv")
Carysfort_Shallow_2012_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_2012_biomass_data.csv")
Carysfort_Shallow_2014_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_2014_biomass_data.csv")
Carysfort_Shallow_2016_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_2016_biomass_data.csv")
Carysfort_Shallow_2018_merge <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_2018_biomass_data.csv")

Carysfort_Shallow_merge_1 <- rbind(Carysfort_Shallow_1999_merge,Carysfort_Shallow_2000_merge)
Carysfort_Shallow_merge_2 <- rbind(Carysfort_Shallow_merge_1,Carysfort_Shallow_2001_merge)
Carysfort_Shallow_merge_3 <- rbind(Carysfort_Shallow_merge_2,Carysfort_Shallow_2002_merge)
Carysfort_Shallow_merge_4 <- rbind(Carysfort_Shallow_merge_3,Carysfort_Shallow_2003_merge)
Carysfort_Shallow_merge_5 <- rbind(Carysfort_Shallow_merge_4,Carysfort_Shallow_2004_merge)
Carysfort_Shallow_merge_6 <- rbind(Carysfort_Shallow_merge_5,Carysfort_Shallow_2005_merge)
Carysfort_Shallow_merge_7 <- rbind(Carysfort_Shallow_merge_6,Carysfort_Shallow_2006_merge)
Carysfort_Shallow_merge_8 <- rbind(Carysfort_Shallow_merge_7,Carysfort_Shallow_2007_merge)
Carysfort_Shallow_merge_9 <- rbind(Carysfort_Shallow_merge_8,Carysfort_Shallow_2008_merge)
Carysfort_Shallow_merge_10 <- rbind(Carysfort_Shallow_merge_9,Carysfort_Shallow_2009_merge)
Carysfort_Shallow_merge_11<- rbind(Carysfort_Shallow_merge_10,Carysfort_Shallow_2010_merge)
Carysfort_Shallow_merge_12 <- rbind(Carysfort_Shallow_merge_11,Carysfort_Shallow_2011_merge)
Carysfort_Shallow_merge_13 <- rbind(Carysfort_Shallow_merge_12,Carysfort_Shallow_2012_merge)
Carysfort_Shallow_merge_14 <- rbind(Carysfort_Shallow_merge_13,Carysfort_Shallow_2014_merge)
Carysfort_Shallow_merge_15 <- rbind(Carysfort_Shallow_merge_14,Carysfort_Shallow_2016_merge)
Carysfort_Shallow_Reef_biomass_data_combined <- rbind(Carysfort_Shallow_merge_15,Carysfort_Shallow_2018_merge)

##output
export(Carysfort_Shallow_Reef_biomass_data_combined,"Carysfort_Shallow/data/Carysfort_Shallow_biomass_data_combined.csv")


###Conch Deep


Conch_Deep_1999 <- import("Conch_Deep/data/Conch_Deep_1999.xls")
Conch_Deep_1999_Total_biomass <- summarise_at(Conch_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_1999_Total_biomass$Year <- ('1999')
###output
export(Conch_Deep_1999_Total_biomass,"Conch_Deep/data/Conch_Deep_1999_biomass_data.csv")

Conch_Deep_2000 <- import("Conch_Deep/data/Conch_Deep_2000.xls")
Conch_Deep_2000_Total_biomass <- summarise_at(Conch_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2000_Total_biomass$Year <- ('2000')
###output
export(Conch_Deep_2000_Total_biomass,"Conch_Deep/data/Conch_Deep_2000_biomass_data.csv")

Conch_Deep_2001 <- import("Conch_Deep/data/Conch_Deep_2001.xls")
Conch_Deep_2001_Total_biomass <- summarise_at(Conch_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2001_Total_biomass$Year <- ('2001')
###output
export(Conch_Deep_2001_Total_biomass,"Conch_Deep/data/Conch_Deep_2001_biomass_data.csv")

Conch_Deep_2002 <- import("Conch_Deep/data/Conch_Deep_2002.xls")
Conch_Deep_2002_Total_biomass <- summarise_at(Conch_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2002_Total_biomass$Year <- ('2002')
###output
export(Conch_Deep_2002_Total_biomass,"Conch_Deep/data/Conch_Deep_2002_biomass_data.csv")

Conch_Deep_2003 <- import("Conch_Deep/data/Conch_Deep_2003.xls")
Conch_Deep_2003_Total_biomass <- summarise_at(Conch_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2003_Total_biomass$Year <- ('2003')
###output
export(Conch_Deep_2003_Total_biomass,"Conch_Deep/data/Conch_Deep_2003_biomass_data.csv")


Conch_Deep_2004 <- import("Conch_Deep/data/Conch_Deep_2004.xls")
Conch_Deep_2004_Total_biomass <- summarise_at(Conch_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2004_Total_biomass$Year <- ('2004')

###output
export(Conch_Deep_2004_Total_biomass,"Conch_Deep/data/Conch_Deep_2004_biomass_data.csv")

Conch_Deep_2005 <- import("Conch_Deep/data/Conch_Deep_2005.xls")
Conch_Deep_2005_Total_biomass <- summarise_at(Conch_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2005_Total_biomass$Year <- ('2005')
###output
export(Conch_Deep_2005_Total_biomass,"Conch_Deep/data/Conch_Deep_2005_biomass_data.csv")


Conch_Deep_2006 <- import("Conch_Deep/data/Conch_Deep_2006.xls")
Conch_Deep_2006_Total_biomass <- summarise_at(Conch_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2006_Total_biomass$Year <- ('2006')

###output
export(Conch_Deep_2006_Total_biomass,"Conch_Deep/data/Conch_Deep_2006_biomass_data.csv")

Conch_Deep_2007 <- import("Conch_Deep/data/Conch_Deep_2007.xls")
Conch_Deep_2007_Total_biomass <- summarise_at(Conch_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2007_Total_biomass$Year <- ('2007')
###output
export(Conch_Deep_2007_Total_biomass,"Conch_Deep/data/Conch_Deep_2007_biomass_data.csv")


Conch_Deep_2008 <- import("Conch_Deep/data/Conch_Deep_2008.xls")
Conch_Deep_2008_Total_biomass <- summarise_at(Conch_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2008_Total_biomass$Year <- ('2008')

###output
export(Conch_Deep_2008_Total_biomass,"Conch_Deep/data/Conch_Deep_2008_biomass_data.csv")

Conch_Deep_2009 <- import("Conch_Deep/data/Conch_Deep_2009.xls")
Conch_Deep_2009_Total_biomass <- summarise_at(Conch_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2009_Total_biomass$Year <- ('2009')
###output
export(Conch_Deep_2009_Total_biomass,"Conch_Deep/data/Conch_Deep_2009_biomass_data.csv")


Conch_Deep_2010 <- import("Conch_Deep/data/Conch_Deep_2010.xls")
Conch_Deep_2010_Total_biomass <- summarise_at(Conch_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2010_Total_biomass$Year <- ('2010')

###output
export(Conch_Deep_2010_Total_biomass,"Conch_Deep/data/Conch_Deep_2010_biomass_data.csv")

Conch_Deep_2011 <- import("Conch_Deep/data/Conch_Deep_2011.xls")
Conch_Deep_2011_Total_biomass <- summarise_at(Conch_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2011_Total_biomass$Year <- ('2011')
###output
export(Conch_Deep_2011_Total_biomass,"Conch_Deep/data/Conch_Deep_2011_biomass_data.csv")


Conch_Deep_2012 <- import("Conch_Deep/data/Conch_Deep_2012.xls")
Conch_Deep_2012_Total_biomass <- summarise_at(Conch_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2012_Total_biomass$Year <- ('2012')

###output
export(Conch_Deep_2012_Total_biomass,"Conch_Deep/data/Conch_Deep_2012_biomass_data.csv")

Conch_Deep_2014 <- import("Conch_Deep/data/Conch_Deep_2014.xls")
Conch_Deep_2014_Total_biomass <- summarise_at(Conch_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2014_Total_biomass$Year <- ('2014')

###output
export(Conch_Deep_2014_Total_biomass,"Conch_Deep/data/Conch_Deep_2014_biomass_data.csv")

Conch_Deep_2016 <- import("Conch_Deep/data/Conch_Deep_2016.xls")
Conch_Deep_2016_Total_biomass <- summarise_at(Conch_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2016_Total_biomass$Year <- ('2016')

###output
export(Conch_Deep_2016_Total_biomass,"Conch_Deep/data/Conch_Deep_2016_biomass_data.csv")

Conch_Deep_2018 <- import("Conch_Deep/data/Conch_Deep_2018.xls")
Conch_Deep_2018_Total_biomass <- summarise_at(Conch_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2018_Total_biomass$Year <- ('2018')
###output
export(Conch_Deep_2018_Total_biomass,"Conch_Deep/data/Conch_Deep_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Conch_Deep_1999_merge <- read_csv("Conch_Deep/data/Conch_Deep_1999_biomass_data.csv")
Conch_Deep_2000_merge <- read_csv("Conch_Deep/data/Conch_Deep_2000_biomass_data.csv")
Conch_Deep_2001_merge <- read_csv("Conch_Deep/data/Conch_Deep_2001_biomass_data.csv")
Conch_Deep_2002_merge <- read_csv("Conch_Deep/data/Conch_Deep_2002_biomass_data.csv")
Conch_Deep_2003_merge <- read_csv("Conch_Deep/data/Conch_Deep_2003_biomass_data.csv")
Conch_Deep_2004_merge <- read_csv("Conch_Deep/data/Conch_Deep_2004_biomass_data.csv")
Conch_Deep_2005_merge <- read_csv("Conch_Deep/data/Conch_Deep_2005_biomass_data.csv")
Conch_Deep_2006_merge <- read_csv("Conch_Deep/data/Conch_Deep_2006_biomass_data.csv")
Conch_Deep_2007_merge <- read_csv("Conch_Deep/data/Conch_Deep_2007_biomass_data.csv")
Conch_Deep_2008_merge <- read_csv("Conch_Deep/data/Conch_Deep_2008_biomass_data.csv")
Conch_Deep_2009_merge <- read_csv("Conch_Deep/data/Conch_Deep_2009_biomass_data.csv")
Conch_Deep_2010_merge <- read_csv("Conch_Deep/data/Conch_Deep_2010_biomass_data.csv")
Conch_Deep_2011_merge <- read_csv("Conch_Deep/data/Conch_Deep_2011_biomass_data.csv")
Conch_Deep_2012_merge <- read_csv("Conch_Deep/data/Conch_Deep_2012_biomass_data.csv")
Conch_Deep_2014_merge <- read_csv("Conch_Deep/data/Conch_Deep_2014_biomass_data.csv")
Conch_Deep_2016_merge <- read_csv("Conch_Deep/data/Conch_Deep_2016_biomass_data.csv")
Conch_Deep_2018_merge <- read_csv("Conch_Deep/data/Conch_Deep_2018_biomass_data.csv")

Conch_Deep_merge_1 <- rbind(Conch_Deep_1999_merge,Conch_Deep_2000_merge)
Conch_Deep_merge_2 <- rbind(Conch_Deep_merge_1,Conch_Deep_2001_merge)
Conch_Deep_merge_3 <- rbind(Conch_Deep_merge_2,Conch_Deep_2002_merge)
Conch_Deep_merge_4 <- rbind(Conch_Deep_merge_3,Conch_Deep_2003_merge)
Conch_Deep_merge_5 <- rbind(Conch_Deep_merge_4,Conch_Deep_2004_merge)
Conch_Deep_merge_6 <- rbind(Conch_Deep_merge_5,Conch_Deep_2005_merge)
Conch_Deep_merge_7 <- rbind(Conch_Deep_merge_6,Conch_Deep_2006_merge)
Conch_Deep_merge_8 <- rbind(Conch_Deep_merge_7,Conch_Deep_2007_merge)
Conch_Deep_merge_9 <- rbind(Conch_Deep_merge_8,Conch_Deep_2008_merge)
Conch_Deep_merge_10 <- rbind(Conch_Deep_merge_9,Conch_Deep_2009_merge)
Conch_Deep_merge_11<- rbind(Conch_Deep_merge_10,Conch_Deep_2010_merge)
Conch_Deep_merge_12 <- rbind(Conch_Deep_merge_11,Conch_Deep_2011_merge)
Conch_Deep_merge_13 <- rbind(Conch_Deep_merge_12,Conch_Deep_2012_merge)
Conch_Deep_merge_14 <- rbind(Conch_Deep_merge_13,Conch_Deep_2014_merge)
Conch_Deep_merge_15 <- rbind(Conch_Deep_merge_14,Conch_Deep_2016_merge)
Conch_Deep_Reef_biomass_data_combined <- rbind(Conch_Deep_merge_15,Conch_Deep_2018_merge)

##output
export(Conch_Deep_Reef_biomass_data_combined,"Conch_Deep/data/Conch_Deep_biomass_data_combined.csv")


###Conch Shallow


Conch_Shallow_1999 <- import("Conch_Shallow/data/Conch_Shallow_1999.xls")
Conch_Shallow_1999_Total_biomass <- summarise_at(Conch_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_1999_Total_biomass$Year <- ('1999')
###output
export(Conch_Shallow_1999_Total_biomass,"Conch_Shallow/data/Conch_Shallow_1999_biomass_data.csv")

Conch_Shallow_2000 <- import("Conch_Shallow/data/Conch_Shallow_2000.xls")
Conch_Shallow_2000_Total_biomass <- summarise_at(Conch_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2000_Total_biomass$Year <- ('2000')
###output
export(Conch_Shallow_2000_Total_biomass,"Conch_Shallow/data/Conch_Shallow_2000_biomass_data.csv")

Conch_Shallow_2001 <- import("Conch_Shallow/data/Conch_Shallow_2001.xls")
Conch_Shallow_2001_Total_biomass <- summarise_at(Conch_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2001_Total_biomass$Year <- ('2001')
###output
export(Conch_Shallow_2001_Total_biomass,"Conch_Shallow/data/Conch_Shallow_2001_biomass_data.csv")

Conch_Shallow_2002 <- import("Conch_Shallow/data/Conch_Shallow_2002.xls")
Conch_Shallow_2002_Total_biomass <- summarise_at(Conch_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2002_Total_biomass$Year <- ('2002')
###output
export(Conch_Shallow_2002_Total_biomass,"Conch_Shallow/data/Conch_Shallow_2002_biomass_data.csv")

Conch_Shallow_2003 <- import("Conch_Shallow/data/Conch_Shallow_2003.xls")
Conch_Shallow_2003_Total_biomass <- summarise_at(Conch_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2003_Total_biomass$Year <- ('2003')
###output
export(Conch_Shallow_2003_Total_biomass,"Conch_Shallow/data/Conch_Shallow_2003_biomass_data.csv")


Conch_Shallow_2004 <- import("Conch_Shallow/data/Conch_Shallow_2004.xls")
Conch_Shallow_2004_Total_biomass <- summarise_at(Conch_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2004_Total_biomass$Year <- ('2004')

###output
export(Conch_Shallow_2004_Total_biomass,"Conch_Shallow/data/Conch_Shallow_2004_biomass_data.csv")

Conch_Shallow_2005 <- import("Conch_Shallow/data/Conch_Shallow_2005.xls")
Conch_Shallow_2005_Total_biomass <- summarise_at(Conch_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2005_Total_biomass$Year <- ('2005')
###output
export(Conch_Shallow_2005_Total_biomass,"Conch_Shallow/data/Conch_Shallow_2005_biomass_data.csv")


Conch_Shallow_2006 <- import("Conch_Shallow/data/Conch_Shallow_2006.xls")
Conch_Shallow_2006_Total_biomass <- summarise_at(Conch_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2006_Total_biomass$Year <- ('2006')

###output
export(Conch_Shallow_2006_Total_biomass,"Conch_Shallow/data/Conch_Shallow_2006_biomass_data.csv")

Conch_Shallow_2007 <- import("Conch_Shallow/data/Conch_Shallow_2007.xls")
Conch_Shallow_2007_Total_biomass <- summarise_at(Conch_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2007_Total_biomass$Year <- ('2007')
###output
export(Conch_Shallow_2007_Total_biomass,"Conch_Shallow/data/Conch_Shallow_2007_biomass_data.csv")


Conch_Shallow_2008 <- import("Conch_Shallow/data/Conch_Shallow_2008.xls")
Conch_Shallow_2008_Total_biomass <- summarise_at(Conch_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2008_Total_biomass$Year <- ('2008')

###output
export(Conch_Shallow_2008_Total_biomass,"Conch_Shallow/data/Conch_Shallow_2008_biomass_data.csv")

Conch_Shallow_2009 <- import("Conch_Shallow/data/Conch_Shallow_2009.xls")
Conch_Shallow_2009_Total_biomass <- summarise_at(Conch_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2009_Total_biomass$Year <- ('2009')
###output
export(Conch_Shallow_2009_Total_biomass,"Conch_Shallow/data/Conch_Shallow_2009_biomass_data.csv")


Conch_Shallow_2010 <- import("Conch_Shallow/data/Conch_Shallow_2010.xls")
Conch_Shallow_2010_Total_biomass <- summarise_at(Conch_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2010_Total_biomass$Year <- ('2010')

###output
export(Conch_Shallow_2010_Total_biomass,"Conch_Shallow/data/Conch_Shallow_2010_biomass_data.csv")

Conch_Shallow_2011 <- import("Conch_Shallow/data/Conch_Shallow_2011.xls")
Conch_Shallow_2011_Total_biomass <- summarise_at(Conch_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2011_Total_biomass$Year <- ('2011')
###output
export(Conch_Shallow_2011_Total_biomass,"Conch_Shallow/data/Conch_Shallow_2011_biomass_data.csv")


Conch_Shallow_2012 <- import("Conch_Shallow/data/Conch_Shallow_2012.xls")
Conch_Shallow_2012_Total_biomass <- summarise_at(Conch_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2012_Total_biomass$Year <- ('2012')

###output
export(Conch_Shallow_2012_Total_biomass,"Conch_Shallow/data/Conch_Shallow_2012_biomass_data.csv")

Conch_Shallow_2014 <- import("Conch_Shallow/data/Conch_Shallow_2014.xls")
Conch_Shallow_2014_Total_biomass <- summarise_at(Conch_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2014_Total_biomass$Year <- ('2014')

###output
export(Conch_Shallow_2014_Total_biomass,"Conch_Shallow/data/Conch_Shallow_2014_biomass_data.csv")

Conch_Shallow_2016 <- import("Conch_Shallow/data/Conch_Shallow_2016.xls")
Conch_Shallow_2016_Total_biomass <- summarise_at(Conch_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2016_Total_biomass$Year <- ('2016')

###output
export(Conch_Shallow_2016_Total_biomass,"Conch_Shallow/data/Conch_Shallow_2016_biomass_data.csv")

Conch_Shallow_2018 <- import("Conch_Shallow/data/Conch_Shallow_2018.xls")
Conch_Shallow_2018_Total_biomass <- summarise_at(Conch_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2018_Total_biomass$Year <- ('2018')
###output
export(Conch_Shallow_2018_Total_biomass,"Conch_Shallow/data/Conch_Shallow_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Conch_Shallow_1999_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_1999_biomass_data.csv")
Conch_Shallow_2000_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_2000_biomass_data.csv")
Conch_Shallow_2001_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_2001_biomass_data.csv")
Conch_Shallow_2002_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_2002_biomass_data.csv")
Conch_Shallow_2003_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_2003_biomass_data.csv")
Conch_Shallow_2004_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_2004_biomass_data.csv")
Conch_Shallow_2005_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_2005_biomass_data.csv")
Conch_Shallow_2006_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_2006_biomass_data.csv")
Conch_Shallow_2007_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_2007_biomass_data.csv")
Conch_Shallow_2008_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_2008_biomass_data.csv")
Conch_Shallow_2009_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_2009_biomass_data.csv")
Conch_Shallow_2010_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_2010_biomass_data.csv")
Conch_Shallow_2011_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_2011_biomass_data.csv")
Conch_Shallow_2012_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_2012_biomass_data.csv")
Conch_Shallow_2014_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_2014_biomass_data.csv")
Conch_Shallow_2016_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_2016_biomass_data.csv")
Conch_Shallow_2018_merge <- read_csv("Conch_Shallow/data/Conch_Shallow_2018_biomass_data.csv")

Conch_Shallow_merge_1 <- rbind(Conch_Shallow_1999_merge,Conch_Shallow_2000_merge)
Conch_Shallow_merge_2 <- rbind(Conch_Shallow_merge_1,Conch_Shallow_2001_merge)
Conch_Shallow_merge_3 <- rbind(Conch_Shallow_merge_2,Conch_Shallow_2002_merge)
Conch_Shallow_merge_4 <- rbind(Conch_Shallow_merge_3,Conch_Shallow_2003_merge)
Conch_Shallow_merge_5 <- rbind(Conch_Shallow_merge_4,Conch_Shallow_2004_merge)
Conch_Shallow_merge_6 <- rbind(Conch_Shallow_merge_5,Conch_Shallow_2005_merge)
Conch_Shallow_merge_7 <- rbind(Conch_Shallow_merge_6,Conch_Shallow_2006_merge)
Conch_Shallow_merge_8 <- rbind(Conch_Shallow_merge_7,Conch_Shallow_2007_merge)
Conch_Shallow_merge_9 <- rbind(Conch_Shallow_merge_8,Conch_Shallow_2008_merge)
Conch_Shallow_merge_10 <- rbind(Conch_Shallow_merge_9,Conch_Shallow_2009_merge)
Conch_Shallow_merge_11<- rbind(Conch_Shallow_merge_10,Conch_Shallow_2010_merge)
Conch_Shallow_merge_12 <- rbind(Conch_Shallow_merge_11,Conch_Shallow_2011_merge)
Conch_Shallow_merge_13 <- rbind(Conch_Shallow_merge_12,Conch_Shallow_2012_merge)
Conch_Shallow_merge_14 <- rbind(Conch_Shallow_merge_13,Conch_Shallow_2014_merge)
Conch_Shallow_merge_15 <- rbind(Conch_Shallow_merge_14,Conch_Shallow_2016_merge)
Conch_Shallow_Reef_biomass_data_combined <- rbind(Conch_Shallow_merge_15,Conch_Shallow_2018_merge)

##output
export(Conch_Shallow_Reef_biomass_data_combined,"Conch_Shallow/data/Conch_Shallow_biomass_data_combined.csv")


###Grecian Rocks


Grecian_Rocks_1999 <- import("Grecian_Rocks/data/Grecian_Rocks_1999.xls")
Grecian_Rocks_1999_Total_biomass <- summarise_at(Grecian_Rocks_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_1999_Total_biomass$Year <- ('1999')
###output
export(Grecian_Rocks_1999_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_1999_biomass_data.csv")

Grecian_Rocks_2000 <- import("Grecian_Rocks/data/Grecian_Rocks_2000.xls")
Grecian_Rocks_2000_Total_biomass <- summarise_at(Grecian_Rocks_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2000_Total_biomass$Year <- ('2000')
###output
export(Grecian_Rocks_2000_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_2000_biomass_data.csv")

Grecian_Rocks_2001 <- import("Grecian_Rocks/data/Grecian_Rocks_2001.xls")
Grecian_Rocks_2001_Total_biomass <- summarise_at(Grecian_Rocks_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2001_Total_biomass$Year <- ('2001')
###output
export(Grecian_Rocks_2001_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_2001_biomass_data.csv")

Grecian_Rocks_2002 <- import("Grecian_Rocks/data/Grecian_Rocks_2002.xls")
Grecian_Rocks_2002_Total_biomass <- summarise_at(Grecian_Rocks_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2002_Total_biomass$Year <- ('2002')
###output
export(Grecian_Rocks_2002_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_2002_biomass_data.csv")

Grecian_Rocks_2003 <- import("Grecian_Rocks/data/Grecian_Rocks_2003.xls")
Grecian_Rocks_2003_Total_biomass <- summarise_at(Grecian_Rocks_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2003_Total_biomass$Year <- ('2003')
###output
export(Grecian_Rocks_2003_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_2003_biomass_data.csv")


Grecian_Rocks_2004 <- import("Grecian_Rocks/data/Grecian_Rocks_2004.xls")
Grecian_Rocks_2004_Total_biomass <- summarise_at(Grecian_Rocks_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2004_Total_biomass$Year <- ('2004')

###output
export(Grecian_Rocks_2004_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_2004_biomass_data.csv")

Grecian_Rocks_2005 <- import("Grecian_Rocks/data/Grecian_Rocks_2005.xls")
Grecian_Rocks_2005_Total_biomass <- summarise_at(Grecian_Rocks_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2005_Total_biomass$Year <- ('2005')
###output
export(Grecian_Rocks_2005_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_2005_biomass_data.csv")


Grecian_Rocks_2006 <- import("Grecian_Rocks/data/Grecian_Rocks_2006.xls")
Grecian_Rocks_2006_Total_biomass <- summarise_at(Grecian_Rocks_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2006_Total_biomass$Year <- ('2006')

###output
export(Grecian_Rocks_2006_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_2006_biomass_data.csv")

Grecian_Rocks_2007 <- import("Grecian_Rocks/data/Grecian_Rocks_2007.xls")
Grecian_Rocks_2007_Total_biomass <- summarise_at(Grecian_Rocks_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2007_Total_biomass$Year <- ('2007')
###output
export(Grecian_Rocks_2007_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_2007_biomass_data.csv")


Grecian_Rocks_2008 <- import("Grecian_Rocks/data/Grecian_Rocks_2008.xls")
Grecian_Rocks_2008_Total_biomass <- summarise_at(Grecian_Rocks_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2008_Total_biomass$Year <- ('2008')

###output
export(Grecian_Rocks_2008_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_2008_biomass_data.csv")

Grecian_Rocks_2009 <- import("Grecian_Rocks/data/Grecian_Rocks_2009.xls")
Grecian_Rocks_2009_Total_biomass <- summarise_at(Grecian_Rocks_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2009_Total_biomass$Year <- ('2009')
###output
export(Grecian_Rocks_2009_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_2009_biomass_data.csv")


Grecian_Rocks_2010 <- import("Grecian_Rocks/data/Grecian_Rocks_2010.xls")
Grecian_Rocks_2010_Total_biomass <- summarise_at(Grecian_Rocks_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2010_Total_biomass$Year <- ('2010')

###output
export(Grecian_Rocks_2010_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_2010_biomass_data.csv")

Grecian_Rocks_2011 <- import("Grecian_Rocks/data/Grecian_Rocks_2011.xls")
Grecian_Rocks_2011_Total_biomass <- summarise_at(Grecian_Rocks_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2011_Total_biomass$Year <- ('2011')
###output
export(Grecian_Rocks_2011_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_2011_biomass_data.csv")


Grecian_Rocks_2012 <- import("Grecian_Rocks/data/Grecian_Rocks_2012.xls")
Grecian_Rocks_2012_Total_biomass <- summarise_at(Grecian_Rocks_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2012_Total_biomass$Year <- ('2012')

###output
export(Grecian_Rocks_2012_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_2012_biomass_data.csv")

Grecian_Rocks_2014 <- import("Grecian_Rocks/data/Grecian_Rocks_2014.xls")
Grecian_Rocks_2014_Total_biomass <- summarise_at(Grecian_Rocks_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2014_Total_biomass$Year <- ('2014')

###output
export(Grecian_Rocks_2014_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_2014_biomass_data.csv")

Grecian_Rocks_2016 <- import("Grecian_Rocks/data/Grecian_Rocks_2016.xls")
Grecian_Rocks_2016_Total_biomass <- summarise_at(Grecian_Rocks_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2016_Total_biomass$Year <- ('2016')

###output
export(Grecian_Rocks_2016_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_2016_biomass_data.csv")

Grecian_Rocks_2018 <- import("Grecian_Rocks/data/Grecian_Rocks_2018.xls")
Grecian_Rocks_2018_Total_biomass <- summarise_at(Grecian_Rocks_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2018_Total_biomass$Year <- ('2018')
###output
export(Grecian_Rocks_2018_Total_biomass,"Grecian_Rocks/data/Grecian_Rocks_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Grecian_Rocks_1999_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_1999_biomass_data.csv")
Grecian_Rocks_2000_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_2000_biomass_data.csv")
Grecian_Rocks_2001_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_2001_biomass_data.csv")
Grecian_Rocks_2002_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_2002_biomass_data.csv")
Grecian_Rocks_2003_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_2003_biomass_data.csv")
Grecian_Rocks_2004_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_2004_biomass_data.csv")
Grecian_Rocks_2005_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_2005_biomass_data.csv")
Grecian_Rocks_2006_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_2006_biomass_data.csv")
Grecian_Rocks_2007_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_2007_biomass_data.csv")
Grecian_Rocks_2008_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_2008_biomass_data.csv")
Grecian_Rocks_2009_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_2009_biomass_data.csv")
Grecian_Rocks_2010_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_2010_biomass_data.csv")
Grecian_Rocks_2011_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_2011_biomass_data.csv")
Grecian_Rocks_2012_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_2012_biomass_data.csv")
Grecian_Rocks_2014_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_2014_biomass_data.csv")
Grecian_Rocks_2016_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_2016_biomass_data.csv")
Grecian_Rocks_2018_merge <- read_csv("Grecian_Rocks/data/Grecian_Rocks_2018_biomass_data.csv")

Grecian_Rocks_merge_1 <- rbind(Grecian_Rocks_1999_merge,Grecian_Rocks_2000_merge)
Grecian_Rocks_merge_2 <- rbind(Grecian_Rocks_merge_1,Grecian_Rocks_2001_merge)
Grecian_Rocks_merge_3 <- rbind(Grecian_Rocks_merge_2,Grecian_Rocks_2002_merge)
Grecian_Rocks_merge_4 <- rbind(Grecian_Rocks_merge_3,Grecian_Rocks_2003_merge)
Grecian_Rocks_merge_5 <- rbind(Grecian_Rocks_merge_4,Grecian_Rocks_2004_merge)
Grecian_Rocks_merge_6 <- rbind(Grecian_Rocks_merge_5,Grecian_Rocks_2005_merge)
Grecian_Rocks_merge_7 <- rbind(Grecian_Rocks_merge_6,Grecian_Rocks_2006_merge)
Grecian_Rocks_merge_8 <- rbind(Grecian_Rocks_merge_7,Grecian_Rocks_2007_merge)
Grecian_Rocks_merge_9 <- rbind(Grecian_Rocks_merge_8,Grecian_Rocks_2008_merge)
Grecian_Rocks_merge_10 <- rbind(Grecian_Rocks_merge_9,Grecian_Rocks_2009_merge)
Grecian_Rocks_merge_11<- rbind(Grecian_Rocks_merge_10,Grecian_Rocks_2010_merge)
Grecian_Rocks_merge_12 <- rbind(Grecian_Rocks_merge_11,Grecian_Rocks_2011_merge)
Grecian_Rocks_merge_13 <- rbind(Grecian_Rocks_merge_12,Grecian_Rocks_2012_merge)
Grecian_Rocks_merge_14 <- rbind(Grecian_Rocks_merge_13,Grecian_Rocks_2014_merge)
Grecian_Rocks_merge_15 <- rbind(Grecian_Rocks_merge_14,Grecian_Rocks_2016_merge)
Grecian_Rocks_Reef_biomass_data_combined <- rbind(Grecian_Rocks_merge_15,Grecian_Rocks_2018_merge)

##output
export(Grecian_Rocks_Reef_biomass_data_combined,"Grecian_Rocks/data/Grecian_Rocks_biomass_data_combined.csv")


###Molasses Deep


Molasses_Deep_1999 <- import("Molasses_Deep/data/Molasses_Deep_1999.xls")
Molasses_Deep_1999_Total_biomass <- summarise_at(Molasses_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_1999_Total_biomass$Year <- ('1999')
###output
export(Molasses_Deep_1999_Total_biomass,"Molasses_Deep/data/Molasses_Deep_1999_biomass_data.csv")

Molasses_Deep_2000 <- import("Molasses_Deep/data/Molasses_Deep_2000.xls")
Molasses_Deep_2000_Total_biomass <- summarise_at(Molasses_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2000_Total_biomass$Year <- ('2000')
###output
export(Molasses_Deep_2000_Total_biomass,"Molasses_Deep/data/Molasses_Deep_2000_biomass_data.csv")

Molasses_Deep_2001 <- import("Molasses_Deep/data/Molasses_Deep_2001.xls")
Molasses_Deep_2001_Total_biomass <- summarise_at(Molasses_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2001_Total_biomass$Year <- ('2001')
###output
export(Molasses_Deep_2001_Total_biomass,"Molasses_Deep/data/Molasses_Deep_2001_biomass_data.csv")

Molasses_Deep_2002 <- import("Molasses_Deep/data/Molasses_Deep_2002.xls")
Molasses_Deep_2002_Total_biomass <- summarise_at(Molasses_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2002_Total_biomass$Year <- ('2002')
###output
export(Molasses_Deep_2002_Total_biomass,"Molasses_Deep/data/Molasses_Deep_2002_biomass_data.csv")

Molasses_Deep_2003 <- import("Molasses_Deep/data/Molasses_Deep_2003.xls")
Molasses_Deep_2003_Total_biomass <- summarise_at(Molasses_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2003_Total_biomass$Year <- ('2003')
###output
export(Molasses_Deep_2003_Total_biomass,"Molasses_Deep/data/Molasses_Deep_2003_biomass_data.csv")


Molasses_Deep_2004 <- import("Molasses_Deep/data/Molasses_Deep_2004.xls")
Molasses_Deep_2004_Total_biomass <- summarise_at(Molasses_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2004_Total_biomass$Year <- ('2004')

###output
export(Molasses_Deep_2004_Total_biomass,"Molasses_Deep/data/Molasses_Deep_2004_biomass_data.csv")

Molasses_Deep_2005 <- import("Molasses_Deep/data/Molasses_Deep_2005.xls")
Molasses_Deep_2005_Total_biomass <- summarise_at(Molasses_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2005_Total_biomass$Year <- ('2005')
###output
export(Molasses_Deep_2005_Total_biomass,"Molasses_Deep/data/Molasses_Deep_2005_biomass_data.csv")


Molasses_Deep_2006 <- import("Molasses_Deep/data/Molasses_Deep_2006.xls")
Molasses_Deep_2006_Total_biomass <- summarise_at(Molasses_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2006_Total_biomass$Year <- ('2006')

###output
export(Molasses_Deep_2006_Total_biomass,"Molasses_Deep/data/Molasses_Deep_2006_biomass_data.csv")

Molasses_Deep_2007 <- import("Molasses_Deep/data/Molasses_Deep_2007.xls")
Molasses_Deep_2007_Total_biomass <- summarise_at(Molasses_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2007_Total_biomass$Year <- ('2007')
###output
export(Molasses_Deep_2007_Total_biomass,"Molasses_Deep/data/Molasses_Deep_2007_biomass_data.csv")


Molasses_Deep_2008 <- import("Molasses_Deep/data/Molasses_Deep_2008.xls")
Molasses_Deep_2008_Total_biomass <- summarise_at(Molasses_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2008_Total_biomass$Year <- ('2008')

###output
export(Molasses_Deep_2008_Total_biomass,"Molasses_Deep/data/Molasses_Deep_2008_biomass_data.csv")

Molasses_Deep_2009 <- import("Molasses_Deep/data/Molasses_Deep_2009.xls")
Molasses_Deep_2009_Total_biomass <- summarise_at(Molasses_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2009_Total_biomass$Year <- ('2009')
###output
export(Molasses_Deep_2009_Total_biomass,"Molasses_Deep/data/Molasses_Deep_2009_biomass_data.csv")


Molasses_Deep_2010 <- import("Molasses_Deep/data/Molasses_Deep_2010.xls")
Molasses_Deep_2010_Total_biomass <- summarise_at(Molasses_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2010_Total_biomass$Year <- ('2010')

###output
export(Molasses_Deep_2010_Total_biomass,"Molasses_Deep/data/Molasses_Deep_2010_biomass_data.csv")

Molasses_Deep_2011 <- import("Molasses_Deep/data/Molasses_Deep_2011.xls")
Molasses_Deep_2011_Total_biomass <- summarise_at(Molasses_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2011_Total_biomass$Year <- ('2011')
###output
export(Molasses_Deep_2011_Total_biomass,"Molasses_Deep/data/Molasses_Deep_2011_biomass_data.csv")


Molasses_Deep_2012 <- import("Molasses_Deep/data/Molasses_Deep_2012.xls")
Molasses_Deep_2012_Total_biomass <- summarise_at(Molasses_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2012_Total_biomass$Year <- ('2012')

###output
export(Molasses_Deep_2012_Total_biomass,"Molasses_Deep/data/Molasses_Deep_2012_biomass_data.csv")

Molasses_Deep_2014 <- import("Molasses_Deep/data/Molasses_Deep_2014.xls")
Molasses_Deep_2014_Total_biomass <- summarise_at(Molasses_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2014_Total_biomass$Year <- ('2014')

###output
export(Molasses_Deep_2014_Total_biomass,"Molasses_Deep/data/Molasses_Deep_2014_biomass_data.csv")

Molasses_Deep_2016 <- import("Molasses_Deep/data/Molasses_Deep_2016.xls")
Molasses_Deep_2016_Total_biomass <- summarise_at(Molasses_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2016_Total_biomass$Year <- ('2016')

###output
export(Molasses_Deep_2016_Total_biomass,"Molasses_Deep/data/Molasses_Deep_2016_biomass_data.csv")

Molasses_Deep_2018 <- import("Molasses_Deep/data/Molasses_Deep_2018.xls")
Molasses_Deep_2018_Total_biomass <- summarise_at(Molasses_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2018_Total_biomass$Year <- ('2018')
###output
export(Molasses_Deep_2018_Total_biomass,"Molasses_Deep/data/Molasses_Deep_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Molasses_Deep_1999_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_1999_biomass_data.csv")
Molasses_Deep_2000_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_2000_biomass_data.csv")
Molasses_Deep_2001_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_2001_biomass_data.csv")
Molasses_Deep_2002_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_2002_biomass_data.csv")
Molasses_Deep_2003_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_2003_biomass_data.csv")
Molasses_Deep_2004_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_2004_biomass_data.csv")
Molasses_Deep_2005_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_2005_biomass_data.csv")
Molasses_Deep_2006_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_2006_biomass_data.csv")
Molasses_Deep_2007_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_2007_biomass_data.csv")
Molasses_Deep_2008_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_2008_biomass_data.csv")
Molasses_Deep_2009_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_2009_biomass_data.csv")
Molasses_Deep_2010_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_2010_biomass_data.csv")
Molasses_Deep_2011_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_2011_biomass_data.csv")
Molasses_Deep_2012_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_2012_biomass_data.csv")
Molasses_Deep_2014_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_2014_biomass_data.csv")
Molasses_Deep_2016_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_2016_biomass_data.csv")
Molasses_Deep_2018_merge <- read_csv("Molasses_Deep/data/Molasses_Deep_2018_biomass_data.csv")

Molasses_Deep_merge_1 <- rbind(Molasses_Deep_1999_merge,Molasses_Deep_2000_merge)
Molasses_Deep_merge_2 <- rbind(Molasses_Deep_merge_1,Molasses_Deep_2001_merge)
Molasses_Deep_merge_3 <- rbind(Molasses_Deep_merge_2,Molasses_Deep_2002_merge)
Molasses_Deep_merge_4 <- rbind(Molasses_Deep_merge_3,Molasses_Deep_2003_merge)
Molasses_Deep_merge_5 <- rbind(Molasses_Deep_merge_4,Molasses_Deep_2004_merge)
Molasses_Deep_merge_6 <- rbind(Molasses_Deep_merge_5,Molasses_Deep_2005_merge)
Molasses_Deep_merge_7 <- rbind(Molasses_Deep_merge_6,Molasses_Deep_2006_merge)
Molasses_Deep_merge_8 <- rbind(Molasses_Deep_merge_7,Molasses_Deep_2007_merge)
Molasses_Deep_merge_9 <- rbind(Molasses_Deep_merge_8,Molasses_Deep_2008_merge)
Molasses_Deep_merge_10 <- rbind(Molasses_Deep_merge_9,Molasses_Deep_2009_merge)
Molasses_Deep_merge_11<- rbind(Molasses_Deep_merge_10,Molasses_Deep_2010_merge)
Molasses_Deep_merge_12 <- rbind(Molasses_Deep_merge_11,Molasses_Deep_2011_merge)
Molasses_Deep_merge_13 <- rbind(Molasses_Deep_merge_12,Molasses_Deep_2012_merge)
Molasses_Deep_merge_14 <- rbind(Molasses_Deep_merge_13,Molasses_Deep_2014_merge)
Molasses_Deep_merge_15 <- rbind(Molasses_Deep_merge_14,Molasses_Deep_2016_merge)
Molasses_Deep_Reef_biomass_data_combined <- rbind(Molasses_Deep_merge_15,Molasses_Deep_2018_merge)

##output
export(Molasses_Deep_Reef_biomass_data_combined,"Molasses_Deep/data/Molasses_Deep_biomass_data_combined.csv")


###Molasses Shallow


Molasses_Shallow_1999 <- import("Molasses_Shallow/data/Molasses_Shallow_1999.xls")
Molasses_Shallow_1999_Total_biomass <- summarise_at(Molasses_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_1999_Total_biomass$Year <- ('1999')
###output
export(Molasses_Shallow_1999_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_1999_biomass_data.csv")

Molasses_Shallow_2000 <- import("Molasses_Shallow/data/Molasses_Shallow_2000.xls")
Molasses_Shallow_2000_Total_biomass <- summarise_at(Molasses_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2000_Total_biomass$Year <- ('2000')
###output
export(Molasses_Shallow_2000_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_2000_biomass_data.csv")

Molasses_Shallow_2001 <- import("Molasses_Shallow/data/Molasses_Shallow_2001.xls")
Molasses_Shallow_2001_Total_biomass <- summarise_at(Molasses_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2001_Total_biomass$Year <- ('2001')
###output
export(Molasses_Shallow_2001_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_2001_biomass_data.csv")

Molasses_Shallow_2002 <- import("Molasses_Shallow/data/Molasses_Shallow_2002.xls")
Molasses_Shallow_2002_Total_biomass <- summarise_at(Molasses_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2002_Total_biomass$Year <- ('2002')
###output
export(Molasses_Shallow_2002_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_2002_biomass_data.csv")

Molasses_Shallow_2003 <- import("Molasses_Shallow/data/Molasses_Shallow_2003.xls")
Molasses_Shallow_2003_Total_biomass <- summarise_at(Molasses_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2003_Total_biomass$Year <- ('2003')
###output
export(Molasses_Shallow_2003_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_2003_biomass_data.csv")


Molasses_Shallow_2004 <- import("Molasses_Shallow/data/Molasses_Shallow_2004.xls")
Molasses_Shallow_2004_Total_biomass <- summarise_at(Molasses_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2004_Total_biomass$Year <- ('2004')

###output
export(Molasses_Shallow_2004_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_2004_biomass_data.csv")

Molasses_Shallow_2005 <- import("Molasses_Shallow/data/Molasses_Shallow_2005.xls")
Molasses_Shallow_2005_Total_biomass <- summarise_at(Molasses_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2005_Total_biomass$Year <- ('2005')
###output
export(Molasses_Shallow_2005_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_2005_biomass_data.csv")


Molasses_Shallow_2006 <- import("Molasses_Shallow/data/Molasses_Shallow_2006.xls")
Molasses_Shallow_2006_Total_biomass <- summarise_at(Molasses_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2006_Total_biomass$Year <- ('2006')

###output
export(Molasses_Shallow_2006_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_2006_biomass_data.csv")

Molasses_Shallow_2007 <- import("Molasses_Shallow/data/Molasses_Shallow_2007.xls")
Molasses_Shallow_2007_Total_biomass <- summarise_at(Molasses_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2007_Total_biomass$Year <- ('2007')
###output
export(Molasses_Shallow_2007_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_2007_biomass_data.csv")


Molasses_Shallow_2008 <- import("Molasses_Shallow/data/Molasses_Shallow_2008.xls")
Molasses_Shallow_2008_Total_biomass <- summarise_at(Molasses_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2008_Total_biomass$Year <- ('2008')

###output
export(Molasses_Shallow_2008_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_2008_biomass_data.csv")

Molasses_Shallow_2009 <- import("Molasses_Shallow/data/Molasses_Shallow_2009.xls")
Molasses_Shallow_2009_Total_biomass <- summarise_at(Molasses_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2009_Total_biomass$Year <- ('2009')
###output
export(Molasses_Shallow_2009_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_2009_biomass_data.csv")


Molasses_Shallow_2010 <- import("Molasses_Shallow/data/Molasses_Shallow_2010.xls")
Molasses_Shallow_2010_Total_biomass <- summarise_at(Molasses_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2010_Total_biomass$Year <- ('2010')

###output
export(Molasses_Shallow_2010_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_2010_biomass_data.csv")

Molasses_Shallow_2011 <- import("Molasses_Shallow/data/Molasses_Shallow_2011.xls")
Molasses_Shallow_2011_Total_biomass <- summarise_at(Molasses_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2011_Total_biomass$Year <- ('2011')
###output
export(Molasses_Shallow_2011_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_2011_biomass_data.csv")


Molasses_Shallow_2012 <- import("Molasses_Shallow/data/Molasses_Shallow_2012.xls")
Molasses_Shallow_2012_Total_biomass <- summarise_at(Molasses_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2012_Total_biomass$Year <- ('2012')

###output
export(Molasses_Shallow_2012_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_2012_biomass_data.csv")

Molasses_Shallow_2014 <- import("Molasses_Shallow/data/Molasses_Shallow_2014.xls")
Molasses_Shallow_2014_Total_biomass <- summarise_at(Molasses_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2014_Total_biomass$Year <- ('2014')

###output
export(Molasses_Shallow_2014_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_2014_biomass_data.csv")

Molasses_Shallow_2016 <- import("Molasses_Shallow/data/Molasses_Shallow_2016.xls")
Molasses_Shallow_2016_Total_biomass <- summarise_at(Molasses_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2016_Total_biomass$Year <- ('2016')

###output
export(Molasses_Shallow_2016_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_2016_biomass_data.csv")

Molasses_Shallow_2018 <- import("Molasses_Shallow/data/Molasses_Shallow_2018.xls")
Molasses_Shallow_2018_Total_biomass <- summarise_at(Molasses_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2018_Total_biomass$Year <- ('2018')
###output
export(Molasses_Shallow_2018_Total_biomass,"Molasses_Shallow/data/Molasses_Shallow_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Molasses_Shallow_1999_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_1999_biomass_data.csv")
Molasses_Shallow_2000_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_2000_biomass_data.csv")
Molasses_Shallow_2001_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_2001_biomass_data.csv")
Molasses_Shallow_2002_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_2002_biomass_data.csv")
Molasses_Shallow_2003_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_2003_biomass_data.csv")
Molasses_Shallow_2004_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_2004_biomass_data.csv")
Molasses_Shallow_2005_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_2005_biomass_data.csv")
Molasses_Shallow_2006_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_2006_biomass_data.csv")
Molasses_Shallow_2007_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_2007_biomass_data.csv")
Molasses_Shallow_2008_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_2008_biomass_data.csv")
Molasses_Shallow_2009_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_2009_biomass_data.csv")
Molasses_Shallow_2010_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_2010_biomass_data.csv")
Molasses_Shallow_2011_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_2011_biomass_data.csv")
Molasses_Shallow_2012_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_2012_biomass_data.csv")
Molasses_Shallow_2014_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_2014_biomass_data.csv")
Molasses_Shallow_2016_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_2016_biomass_data.csv")
Molasses_Shallow_2018_merge <- read_csv("Molasses_Shallow/data/Molasses_Shallow_2018_biomass_data.csv")

Molasses_Shallow_merge_1 <- rbind(Molasses_Shallow_1999_merge,Molasses_Shallow_2000_merge)
Molasses_Shallow_merge_2 <- rbind(Molasses_Shallow_merge_1,Molasses_Shallow_2001_merge)
Molasses_Shallow_merge_3 <- rbind(Molasses_Shallow_merge_2,Molasses_Shallow_2002_merge)
Molasses_Shallow_merge_4 <- rbind(Molasses_Shallow_merge_3,Molasses_Shallow_2003_merge)
Molasses_Shallow_merge_5 <- rbind(Molasses_Shallow_merge_4,Molasses_Shallow_2004_merge)
Molasses_Shallow_merge_6 <- rbind(Molasses_Shallow_merge_5,Molasses_Shallow_2005_merge)
Molasses_Shallow_merge_7 <- rbind(Molasses_Shallow_merge_6,Molasses_Shallow_2006_merge)
Molasses_Shallow_merge_8 <- rbind(Molasses_Shallow_merge_7,Molasses_Shallow_2007_merge)
Molasses_Shallow_merge_9 <- rbind(Molasses_Shallow_merge_8,Molasses_Shallow_2008_merge)
Molasses_Shallow_merge_10 <- rbind(Molasses_Shallow_merge_9,Molasses_Shallow_2009_merge)
Molasses_Shallow_merge_11<- rbind(Molasses_Shallow_merge_10,Molasses_Shallow_2010_merge)
Molasses_Shallow_merge_12 <- rbind(Molasses_Shallow_merge_11,Molasses_Shallow_2011_merge)
Molasses_Shallow_merge_13 <- rbind(Molasses_Shallow_merge_12,Molasses_Shallow_2012_merge)
Molasses_Shallow_merge_14 <- rbind(Molasses_Shallow_merge_13,Molasses_Shallow_2014_merge)
Molasses_Shallow_merge_15 <- rbind(Molasses_Shallow_merge_14,Molasses_Shallow_2016_merge)
Molasses_Shallow_Reef_biomass_data_combined <- rbind(Molasses_Shallow_merge_15,Molasses_Shallow_2018_merge)

##output
export(Molasses_Shallow_Reef_biomass_data_combined,"Molasses_Shallow/data/Molasses_Shallow_biomass_data_combined.csv")


###Porter Patch


Porter_Patch_1999 <- import("Porter_Patch/data/Porter_Patch_1999.xls")
Porter_Patch_1999_Total_biomass <- summarise_at(Porter_Patch_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_1999_Total_biomass$Year <- ('1999')
###output
export(Porter_Patch_1999_Total_biomass,"Porter_Patch/data/Porter_Patch_1999_biomass_data.csv")

Porter_Patch_2000 <- import("Porter_Patch/data/Porter_Patch_2000.xls")
Porter_Patch_2000_Total_biomass <- summarise_at(Porter_Patch_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2000_Total_biomass$Year <- ('2000')
###output
export(Porter_Patch_2000_Total_biomass,"Porter_Patch/data/Porter_Patch_2000_biomass_data.csv")

Porter_Patch_2001 <- import("Porter_Patch/data/Porter_Patch_2001.xls")
Porter_Patch_2001_Total_biomass <- summarise_at(Porter_Patch_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2001_Total_biomass$Year <- ('2001')
###output
export(Porter_Patch_2001_Total_biomass,"Porter_Patch/data/Porter_Patch_2001_biomass_data.csv")

Porter_Patch_2002 <- import("Porter_Patch/data/Porter_Patch_2002.xls")
Porter_Patch_2002_Total_biomass <- summarise_at(Porter_Patch_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2002_Total_biomass$Year <- ('2002')
###output
export(Porter_Patch_2002_Total_biomass,"Porter_Patch/data/Porter_Patch_2002_biomass_data.csv")

Porter_Patch_2003 <- import("Porter_Patch/data/Porter_Patch_2003.xls")
Porter_Patch_2003_Total_biomass <- summarise_at(Porter_Patch_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2003_Total_biomass$Year <- ('2003')
###output
export(Porter_Patch_2003_Total_biomass,"Porter_Patch/data/Porter_Patch_2003_biomass_data.csv")


Porter_Patch_2004 <- import("Porter_Patch/data/Porter_Patch_2004.xls")
Porter_Patch_2004_Total_biomass <- summarise_at(Porter_Patch_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2004_Total_biomass$Year <- ('2004')

###output
export(Porter_Patch_2004_Total_biomass,"Porter_Patch/data/Porter_Patch_2004_biomass_data.csv")

Porter_Patch_2005 <- import("Porter_Patch/data/Porter_Patch_2005.xls")
Porter_Patch_2005_Total_biomass <- summarise_at(Porter_Patch_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2005_Total_biomass$Year <- ('2005')
###output
export(Porter_Patch_2005_Total_biomass,"Porter_Patch/data/Porter_Patch_2005_biomass_data.csv")


Porter_Patch_2006 <- import("Porter_Patch/data/Porter_Patch_2006.xls")
Porter_Patch_2006_Total_biomass <- summarise_at(Porter_Patch_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2006_Total_biomass$Year <- ('2006')

###output
export(Porter_Patch_2006_Total_biomass,"Porter_Patch/data/Porter_Patch_2006_biomass_data.csv")

Porter_Patch_2007 <- import("Porter_Patch/data/Porter_Patch_2007.xls")
Porter_Patch_2007_Total_biomass <- summarise_at(Porter_Patch_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2007_Total_biomass$Year <- ('2007')
###output
export(Porter_Patch_2007_Total_biomass,"Porter_Patch/data/Porter_Patch_2007_biomass_data.csv")


Porter_Patch_2008 <- import("Porter_Patch/data/Porter_Patch_2008.xls")
Porter_Patch_2008_Total_biomass <- summarise_at(Porter_Patch_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2008_Total_biomass$Year <- ('2008')

###output
export(Porter_Patch_2008_Total_biomass,"Porter_Patch/data/Porter_Patch_2008_biomass_data.csv")

Porter_Patch_2009 <- import("Porter_Patch/data/Porter_Patch_2009.xls")
Porter_Patch_2009_Total_biomass <- summarise_at(Porter_Patch_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2009_Total_biomass$Year <- ('2009')
###output
export(Porter_Patch_2009_Total_biomass,"Porter_Patch/data/Porter_Patch_2009_biomass_data.csv")


Porter_Patch_2010 <- import("Porter_Patch/data/Porter_Patch_2010.xls")
Porter_Patch_2010_Total_biomass <- summarise_at(Porter_Patch_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2010_Total_biomass$Year <- ('2010')

###output
export(Porter_Patch_2010_Total_biomass,"Porter_Patch/data/Porter_Patch_2010_biomass_data.csv")

Porter_Patch_2011 <- import("Porter_Patch/data/Porter_Patch_2011.xls")
Porter_Patch_2011_Total_biomass <- summarise_at(Porter_Patch_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2011_Total_biomass$Year <- ('2011')
###output
export(Porter_Patch_2011_Total_biomass,"Porter_Patch/data/Porter_Patch_2011_biomass_data.csv")


Porter_Patch_2012 <- import("Porter_Patch/data/Porter_Patch_2012.xls")
Porter_Patch_2012_Total_biomass <- summarise_at(Porter_Patch_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2012_Total_biomass$Year <- ('2012')

###output
export(Porter_Patch_2012_Total_biomass,"Porter_Patch/data/Porter_Patch_2012_biomass_data.csv")

Porter_Patch_2014 <- import("Porter_Patch/data/Porter_Patch_2014.xls")
Porter_Patch_2014_Total_biomass <- summarise_at(Porter_Patch_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2014_Total_biomass$Year <- ('2014')

###output
export(Porter_Patch_2014_Total_biomass,"Porter_Patch/data/Porter_Patch_2014_biomass_data.csv")

Porter_Patch_2016 <- import("Porter_Patch/data/Porter_Patch_2016.xls")
Porter_Patch_2016_Total_biomass <- summarise_at(Porter_Patch_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2016_Total_biomass$Year <- ('2016')

###output
export(Porter_Patch_2016_Total_biomass,"Porter_Patch/data/Porter_Patch_2016_biomass_data.csv")

Porter_Patch_2018 <- import("Porter_Patch/data/Porter_Patch_2018.xls")
Porter_Patch_2018_Total_biomass <- summarise_at(Porter_Patch_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2018_Total_biomass$Year <- ('2018')
###output
export(Porter_Patch_2018_Total_biomass,"Porter_Patch/data/Porter_Patch_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Porter_Patch_1999_merge <- read_csv("Porter_Patch/data/Porter_Patch_1999_biomass_data.csv")
Porter_Patch_2000_merge <- read_csv("Porter_Patch/data/Porter_Patch_2000_biomass_data.csv")
Porter_Patch_2001_merge <- read_csv("Porter_Patch/data/Porter_Patch_2001_biomass_data.csv")
Porter_Patch_2002_merge <- read_csv("Porter_Patch/data/Porter_Patch_2002_biomass_data.csv")
Porter_Patch_2003_merge <- read_csv("Porter_Patch/data/Porter_Patch_2003_biomass_data.csv")
Porter_Patch_2004_merge <- read_csv("Porter_Patch/data/Porter_Patch_2004_biomass_data.csv")
Porter_Patch_2005_merge <- read_csv("Porter_Patch/data/Porter_Patch_2005_biomass_data.csv")
Porter_Patch_2006_merge <- read_csv("Porter_Patch/data/Porter_Patch_2006_biomass_data.csv")
Porter_Patch_2007_merge <- read_csv("Porter_Patch/data/Porter_Patch_2007_biomass_data.csv")
Porter_Patch_2008_merge <- read_csv("Porter_Patch/data/Porter_Patch_2008_biomass_data.csv")
Porter_Patch_2009_merge <- read_csv("Porter_Patch/data/Porter_Patch_2009_biomass_data.csv")
Porter_Patch_2010_merge <- read_csv("Porter_Patch/data/Porter_Patch_2010_biomass_data.csv")
Porter_Patch_2011_merge <- read_csv("Porter_Patch/data/Porter_Patch_2011_biomass_data.csv")
Porter_Patch_2012_merge <- read_csv("Porter_Patch/data/Porter_Patch_2012_biomass_data.csv")
Porter_Patch_2014_merge <- read_csv("Porter_Patch/data/Porter_Patch_2014_biomass_data.csv")
Porter_Patch_2016_merge <- read_csv("Porter_Patch/data/Porter_Patch_2016_biomass_data.csv")
Porter_Patch_2018_merge <- read_csv("Porter_Patch/data/Porter_Patch_2018_biomass_data.csv")

Porter_Patch_merge_1 <- rbind(Porter_Patch_1999_merge,Porter_Patch_2000_merge)
Porter_Patch_merge_2 <- rbind(Porter_Patch_merge_1,Porter_Patch_2001_merge)
Porter_Patch_merge_3 <- rbind(Porter_Patch_merge_2,Porter_Patch_2002_merge)
Porter_Patch_merge_4 <- rbind(Porter_Patch_merge_3,Porter_Patch_2003_merge)
Porter_Patch_merge_5 <- rbind(Porter_Patch_merge_4,Porter_Patch_2004_merge)
Porter_Patch_merge_6 <- rbind(Porter_Patch_merge_5,Porter_Patch_2005_merge)
Porter_Patch_merge_7 <- rbind(Porter_Patch_merge_6,Porter_Patch_2006_merge)
Porter_Patch_merge_8 <- rbind(Porter_Patch_merge_7,Porter_Patch_2007_merge)
Porter_Patch_merge_9 <- rbind(Porter_Patch_merge_8,Porter_Patch_2008_merge)
Porter_Patch_merge_10 <- rbind(Porter_Patch_merge_9,Porter_Patch_2009_merge)
Porter_Patch_merge_11<- rbind(Porter_Patch_merge_10,Porter_Patch_2010_merge)
Porter_Patch_merge_12 <- rbind(Porter_Patch_merge_11,Porter_Patch_2011_merge)
Porter_Patch_merge_13 <- rbind(Porter_Patch_merge_12,Porter_Patch_2012_merge)
Porter_Patch_merge_14 <- rbind(Porter_Patch_merge_13,Porter_Patch_2014_merge)
Porter_Patch_merge_15 <- rbind(Porter_Patch_merge_14,Porter_Patch_2016_merge)
Porter_Patch_Reef_biomass_data_combined <- rbind(Porter_Patch_merge_15,Porter_Patch_2018_merge)

##output
export(Porter_Patch_Reef_biomass_data_combined,"Porter_Patch/data/Porter_Patch_biomass_data_combined.csv")


### Turtle


Turtle_1999 <- import("Turtle/data/Turtle_1999.xls")
Turtle_1999_Total_biomass <- summarise_at(Turtle_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_1999_Total_biomass$Year <- ('1999')
###output
export(Turtle_1999_Total_biomass,"Turtle/data/Turtle_1999_biomass_data.csv")

Turtle_2000 <- import("Turtle/data/Turtle_2000.xls")
Turtle_2000_Total_biomass <- summarise_at(Turtle_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2000_Total_biomass$Year <- ('2000')
###output
export(Turtle_2000_Total_biomass,"Turtle/data/Turtle_2000_biomass_data.csv")

Turtle_2001 <- import("Turtle/data/Turtle_2001.xls")
Turtle_2001_Total_biomass <- summarise_at(Turtle_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2001_Total_biomass$Year <- ('2001')
###output
export(Turtle_2001_Total_biomass,"Turtle/data/Turtle_2001_biomass_data.csv")

Turtle_2002 <- import("Turtle/data/Turtle_2002.xls")
Turtle_2002_Total_biomass <- summarise_at(Turtle_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2002_Total_biomass$Year <- ('2002')
###output
export(Turtle_2002_Total_biomass,"Turtle/data/Turtle_2002_biomass_data.csv")

Turtle_2003 <- import("Turtle/data/Turtle_2003.xls")
Turtle_2003_Total_biomass <- summarise_at(Turtle_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2003_Total_biomass$Year <- ('2003')
###output
export(Turtle_2003_Total_biomass,"Turtle/data/Turtle_2003_biomass_data.csv")


Turtle_2004 <- import("Turtle/data/Turtle_2004.xls")
Turtle_2004_Total_biomass <- summarise_at(Turtle_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2004_Total_biomass$Year <- ('2004')

###output
export(Turtle_2004_Total_biomass,"Turtle/data/Turtle_2004_biomass_data.csv")

Turtle_2005 <- import("Turtle/data/Turtle_2005.xls")
Turtle_2005_Total_biomass <- summarise_at(Turtle_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2005_Total_biomass$Year <- ('2005')
###output
export(Turtle_2005_Total_biomass,"Turtle/data/Turtle_2005_biomass_data.csv")


Turtle_2006 <- import("Turtle/data/Turtle_2006.xls")
Turtle_2006_Total_biomass <- summarise_at(Turtle_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2006_Total_biomass$Year <- ('2006')

###output
export(Turtle_2006_Total_biomass,"Turtle/data/Turtle_2006_biomass_data.csv")

Turtle_2007 <- import("Turtle/data/Turtle_2007.xls")
Turtle_2007_Total_biomass <- summarise_at(Turtle_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2007_Total_biomass$Year <- ('2007')
###output
export(Turtle_2007_Total_biomass,"Turtle/data/Turtle_2007_biomass_data.csv")


Turtle_2008 <- import("Turtle/data/Turtle_2008.xls")
Turtle_2008_Total_biomass <- summarise_at(Turtle_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2008_Total_biomass$Year <- ('2008')

###output
export(Turtle_2008_Total_biomass,"Turtle/data/Turtle_2008_biomass_data.csv")

Turtle_2009 <- import("Turtle/data/Turtle_2009.xls")
Turtle_2009_Total_biomass <- summarise_at(Turtle_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2009_Total_biomass$Year <- ('2009')
###output
export(Turtle_2009_Total_biomass,"Turtle/data/Turtle_2009_biomass_data.csv")


Turtle_2010 <- import("Turtle/data/Turtle_2010.xls")
Turtle_2010_Total_biomass <- summarise_at(Turtle_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2010_Total_biomass$Year <- ('2010')

###output
export(Turtle_2010_Total_biomass,"Turtle/data/Turtle_2010_biomass_data.csv")

Turtle_2011 <- import("Turtle/data/Turtle_2011.xls")
Turtle_2011_Total_biomass <- summarise_at(Turtle_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2011_Total_biomass$Year <- ('2011')
###output
export(Turtle_2011_Total_biomass,"Turtle/data/Turtle_2011_biomass_data.csv")


Turtle_2012 <- import("Turtle/data/Turtle_2012.xls")
Turtle_2012_Total_biomass <- summarise_at(Turtle_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2012_Total_biomass$Year <- ('2012')

###output
export(Turtle_2012_Total_biomass,"Turtle/data/Turtle_2012_biomass_data.csv")

Turtle_2014 <- import("Turtle/data/Turtle_2014.xls")
Turtle_2014_Total_biomass <- summarise_at(Turtle_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2014_Total_biomass$Year <- ('2014')

###output
export(Turtle_2014_Total_biomass,"Turtle/data/Turtle_2014_biomass_data.csv")

Turtle_2016 <- import("Turtle/data/Turtle_2016.xls")
Turtle_2016_Total_biomass <- summarise_at(Turtle_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2016_Total_biomass$Year <- ('2016')

###output
export(Turtle_2016_Total_biomass,"Turtle/data/Turtle_2016_biomass_data.csv")

Turtle_2018 <- import("Turtle/data/Turtle_2018.xls")
Turtle_2018_Total_biomass <- summarise_at(Turtle_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2018_Total_biomass$Year <- ('2018')
###output
export(Turtle_2018_Total_biomass,"Turtle/data/Turtle_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Turtle_1999_merge <- read_csv("Turtle/data/Turtle_1999_biomass_data.csv")
Turtle_2000_merge <- read_csv("Turtle/data/Turtle_2000_biomass_data.csv")
Turtle_2001_merge <- read_csv("Turtle/data/Turtle_2001_biomass_data.csv")
Turtle_2002_merge <- read_csv("Turtle/data/Turtle_2002_biomass_data.csv")
Turtle_2003_merge <- read_csv("Turtle/data/Turtle_2003_biomass_data.csv")
Turtle_2004_merge <- read_csv("Turtle/data/Turtle_2004_biomass_data.csv")
Turtle_2005_merge <- read_csv("Turtle/data/Turtle_2005_biomass_data.csv")
Turtle_2006_merge <- read_csv("Turtle/data/Turtle_2006_biomass_data.csv")
Turtle_2007_merge <- read_csv("Turtle/data/Turtle_2007_biomass_data.csv")
Turtle_2008_merge <- read_csv("Turtle/data/Turtle_2008_biomass_data.csv")
Turtle_2009_merge <- read_csv("Turtle/data/Turtle_2009_biomass_data.csv")
Turtle_2010_merge <- read_csv("Turtle/data/Turtle_2010_biomass_data.csv")
Turtle_2011_merge <- read_csv("Turtle/data/Turtle_2011_biomass_data.csv")
Turtle_2012_merge <- read_csv("Turtle/data/Turtle_2012_biomass_data.csv")
Turtle_2014_merge <- read_csv("Turtle/data/Turtle_2014_biomass_data.csv")
Turtle_2016_merge <- read_csv("Turtle/data/Turtle_2016_biomass_data.csv")
Turtle_2018_merge <- read_csv("Turtle/data/Turtle_2018_biomass_data.csv")

Turtle_merge_1 <- rbind(Turtle_1999_merge,Turtle_2000_merge)
Turtle_merge_2 <- rbind(Turtle_merge_1,Turtle_2001_merge)
Turtle_merge_3 <- rbind(Turtle_merge_2,Turtle_2002_merge)
Turtle_merge_4 <- rbind(Turtle_merge_3,Turtle_2003_merge)
Turtle_merge_5 <- rbind(Turtle_merge_4,Turtle_2004_merge)
Turtle_merge_6 <- rbind(Turtle_merge_5,Turtle_2005_merge)
Turtle_merge_7 <- rbind(Turtle_merge_6,Turtle_2006_merge)
Turtle_merge_8 <- rbind(Turtle_merge_7,Turtle_2007_merge)
Turtle_merge_9 <- rbind(Turtle_merge_8,Turtle_2008_merge)
Turtle_merge_10 <- rbind(Turtle_merge_9,Turtle_2009_merge)
Turtle_merge_11<- rbind(Turtle_merge_10,Turtle_2010_merge)
Turtle_merge_12 <- rbind(Turtle_merge_11,Turtle_2011_merge)
Turtle_merge_13 <- rbind(Turtle_merge_12,Turtle_2012_merge)
Turtle_merge_14 <- rbind(Turtle_merge_13,Turtle_2014_merge)
Turtle_merge_15 <- rbind(Turtle_merge_14,Turtle_2016_merge)
Turtle_Reef_biomass_data_combined <- rbind(Turtle_merge_15,Turtle_2018_merge)

##output
export(Turtle_Reef_biomass_data_combined,"Turtle/data/Turtle_biomass_data_combined.csv")


###Two Patches


Two_Patches_1999 <- import("Two_Patches/data/Two_Patches_1999.xls")
Two_Patches_1999_Total_biomass <- summarise_at(Two_Patches_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_1999_Total_biomass$Year <- ('1999')
###output
export(Two_Patches_1999_Total_biomass,"Two_Patches/data/Two_Patches_1999_biomass_data.csv")

Two_Patches_2000 <- import("Two_Patches/data/Two_Patches_2000.xls")
Two_Patches_2000_Total_biomass <- summarise_at(Two_Patches_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2000_Total_biomass$Year <- ('2000')
###output
export(Two_Patches_2000_Total_biomass,"Two_Patches/data/Two_Patches_2000_biomass_data.csv")

Two_Patches_2001 <- import("Two_Patches/data/Two_Patches_2001.xls")
Two_Patches_2001_Total_biomass <- summarise_at(Two_Patches_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2001_Total_biomass$Year <- ('2001')
###output
export(Two_Patches_2001_Total_biomass,"Two_Patches/data/Two_Patches_2001_biomass_data.csv")

Two_Patches_2002 <- import("Two_Patches/data/Two_Patches_2002.xls")
Two_Patches_2002_Total_biomass <- summarise_at(Two_Patches_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2002_Total_biomass$Year <- ('2002')
###output
export(Two_Patches_2002_Total_biomass,"Two_Patches/data/Two_Patches_2002_biomass_data.csv")

Two_Patches_2003 <- import("Two_Patches/data/Two_Patches_2003.xls")
Two_Patches_2003_Total_biomass <- summarise_at(Two_Patches_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2003_Total_biomass$Year <- ('2003')
###output
export(Two_Patches_2003_Total_biomass,"Two_Patches/data/Two_Patches_2003_biomass_data.csv")


Two_Patches_2004 <- import("Two_Patches/data/Two_Patches_2004.xls")
Two_Patches_2004_Total_biomass <- summarise_at(Two_Patches_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2004_Total_biomass$Year <- ('2004')

###output
export(Two_Patches_2004_Total_biomass,"Two_Patches/data/Two_Patches_2004_biomass_data.csv")

Two_Patches_2005 <- import("Two_Patches/data/Two_Patches_2005.xls")
Two_Patches_2005_Total_biomass <- summarise_at(Two_Patches_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2005_Total_biomass$Year <- ('2005')
###output
export(Two_Patches_2005_Total_biomass,"Two_Patches/data/Two_Patches_2005_biomass_data.csv")


Two_Patches_2006 <- import("Two_Patches/data/Two_Patches_2006.xls")
Two_Patches_2006_Total_biomass <- summarise_at(Two_Patches_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2006_Total_biomass$Year <- ('2006')

###output
export(Two_Patches_2006_Total_biomass,"Two_Patches/data/Two_Patches_2006_biomass_data.csv")

Two_Patches_2007 <- import("Two_Patches/data/Two_Patches_2007.xls")
Two_Patches_2007_Total_biomass <- summarise_at(Two_Patches_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2007_Total_biomass$Year <- ('2007')
###output
export(Two_Patches_2007_Total_biomass,"Two_Patches/data/Two_Patches_2007_biomass_data.csv")


Two_Patches_2008 <- import("Two_Patches/data/Two_Patches_2008.xls")
Two_Patches_2008_Total_biomass <- summarise_at(Two_Patches_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2008_Total_biomass$Year <- ('2008')

###output
export(Two_Patches_2008_Total_biomass,"Two_Patches/data/Two_Patches_2008_biomass_data.csv")

Two_Patches_2009 <- import("Two_Patches/data/Two_Patches_2009.xls")
Two_Patches_2009_Total_biomass <- summarise_at(Two_Patches_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2009_Total_biomass$Year <- ('2009')
###output
export(Two_Patches_2009_Total_biomass,"Two_Patches/data/Two_Patches_2009_biomass_data.csv")


Two_Patches_2010 <- import("Two_Patches/data/Two_Patches_2010.xls")
Two_Patches_2010_Total_biomass <- summarise_at(Two_Patches_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2010_Total_biomass$Year <- ('2010')

###output
export(Two_Patches_2010_Total_biomass,"Two_Patches/data/Two_Patches_2010_biomass_data.csv")

Two_Patches_2011 <- import("Two_Patches/data/Two_Patches_2011.xls")
Two_Patches_2011_Total_biomass <- summarise_at(Two_Patches_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2011_Total_biomass$Year <- ('2011')
###output
export(Two_Patches_2011_Total_biomass,"Two_Patches/data/Two_Patches_2011_biomass_data.csv")


Two_Patches_2012 <- import("Two_Patches/data/Two_Patches_2012.xls")
Two_Patches_2012_Total_biomass <- summarise_at(Two_Patches_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2012_Total_biomass$Year <- ('2012')

###output
export(Two_Patches_2012_Total_biomass,"Two_Patches/data/Two_Patches_2012_biomass_data.csv")

Two_Patches_2014 <- import("Two_Patches/data/Two_Patches_2014.xls")
Two_Patches_2014_Total_biomass <- summarise_at(Two_Patches_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2014_Total_biomass$Year <- ('2014')

###output
export(Two_Patches_2014_Total_biomass,"Two_Patches/data/Two_Patches_2014_biomass_data.csv")

Two_Patches_2016 <- import("Two_Patches/data/Two_Patches_2016.xls")
Two_Patches_2016_Total_biomass <- summarise_at(Two_Patches_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2016_Total_biomass$Year <- ('2016')

###output
export(Two_Patches_2016_Total_biomass,"Two_Patches/data/Two_Patches_2016_biomass_data.csv")

Two_Patches_2018 <- import("Two_Patches/data/Two_Patches_2018.xls")
Two_Patches_2018_Total_biomass <- summarise_at(Two_Patches_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2018_Total_biomass$Year <- ('2018')
###output
export(Two_Patches_2018_Total_biomass,"Two_Patches/data/Two_Patches_2018_biomass_data.csv")


####combine biomass data for each reef in a table 
Two_Patches_1999_merge <- read_csv("Two_Patches/data/Two_Patches_1999_biomass_data.csv")
Two_Patches_2000_merge <- read_csv("Two_Patches/data/Two_Patches_2000_biomass_data.csv")
Two_Patches_2001_merge <- read_csv("Two_Patches/data/Two_Patches_2001_biomass_data.csv")
Two_Patches_2002_merge <- read_csv("Two_Patches/data/Two_Patches_2002_biomass_data.csv")
Two_Patches_2003_merge <- read_csv("Two_Patches/data/Two_Patches_2003_biomass_data.csv")
Two_Patches_2004_merge <- read_csv("Two_Patches/data/Two_Patches_2004_biomass_data.csv")
Two_Patches_2005_merge <- read_csv("Two_Patches/data/Two_Patches_2005_biomass_data.csv")
Two_Patches_2006_merge <- read_csv("Two_Patches/data/Two_Patches_2006_biomass_data.csv")
Two_Patches_2007_merge <- read_csv("Two_Patches/data/Two_Patches_2007_biomass_data.csv")
Two_Patches_2008_merge <- read_csv("Two_Patches/data/Two_Patches_2008_biomass_data.csv")
Two_Patches_2009_merge <- read_csv("Two_Patches/data/Two_Patches_2009_biomass_data.csv")
Two_Patches_2010_merge <- read_csv("Two_Patches/data/Two_Patches_2010_biomass_data.csv")
Two_Patches_2011_merge <- read_csv("Two_Patches/data/Two_Patches_2011_biomass_data.csv")
Two_Patches_2012_merge <- read_csv("Two_Patches/data/Two_Patches_2012_biomass_data.csv")
Two_Patches_2014_merge <- read_csv("Two_Patches/data/Two_Patches_2014_biomass_data.csv")
Two_Patches_2016_merge <- read_csv("Two_Patches/data/Two_Patches_2016_biomass_data.csv")
Two_Patches_2018_merge <- read_csv("Two_Patches/data/Two_Patches_2018_biomass_data.csv")

Two_Patches_merge_1 <- rbind(Two_Patches_1999_merge,Two_Patches_2000_merge)
Two_Patches_merge_2 <- rbind(Two_Patches_merge_1,Two_Patches_2001_merge)
Two_Patches_merge_3 <- rbind(Two_Patches_merge_2,Two_Patches_2002_merge)
Two_Patches_merge_4 <- rbind(Two_Patches_merge_3,Two_Patches_2003_merge)
Two_Patches_merge_5 <- rbind(Two_Patches_merge_4,Two_Patches_2004_merge)
Two_Patches_merge_6 <- rbind(Two_Patches_merge_5,Two_Patches_2005_merge)
Two_Patches_merge_7 <- rbind(Two_Patches_merge_6,Two_Patches_2006_merge)
Two_Patches_merge_8 <- rbind(Two_Patches_merge_7,Two_Patches_2007_merge)
Two_Patches_merge_9 <- rbind(Two_Patches_merge_8,Two_Patches_2008_merge)
Two_Patches_merge_10 <- rbind(Two_Patches_merge_9,Two_Patches_2009_merge)
Two_Patches_merge_11<- rbind(Two_Patches_merge_10,Two_Patches_2010_merge)
Two_Patches_merge_12 <- rbind(Two_Patches_merge_11,Two_Patches_2011_merge)
Two_Patches_merge_13 <- rbind(Two_Patches_merge_12,Two_Patches_2012_merge)
Two_Patches_merge_14 <- rbind(Two_Patches_merge_13,Two_Patches_2014_merge)
Two_Patches_merge_15 <- rbind(Two_Patches_merge_14,Two_Patches_2016_merge)
Two_Patches_Reef_biomass_data_combined <- rbind(Two_Patches_merge_15,Two_Patches_2018_merge)

##output
export(Two_Patches_Reef_biomass_data_combined,"Two_Patches/data/Two_Patches_biomass_data_combined.csv")




#####SE Florida 

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/SEF")


###Broward County 1
Broward_County_1_2013 <- import("Broward_County_1/data/Broward_County_1_2013.xls")
Broward_County_1_2013_Total_biomass <- summarise_at(Broward_County_1_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2013_Total_biomass$Year <- ('2013')

###output
export(Broward_County_1_2013_Total_biomass,"Broward_County_1/data/Broward_County_1_2013_biomass_data.csv")


Broward_County_1_2014 <- import("Broward_County_1/data/Broward_County_1_2014.xls")
Broward_County_1_2014_Total_biomass <- summarise_at(Broward_County_1_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2014_Total_biomass$Year <- ('2014')

###output
export(Broward_County_1_2014_Total_biomass,"Broward_County_1/data/Broward_County_1_2014_biomass_data.csv")

Broward_County_1_2015 <- import("Broward_County_1/data/Broward_County_1_2015.xls")
Broward_County_1_2015_Total_biomass <- summarise_at(Broward_County_1_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2015_Total_biomass$Year <- ('2015')

###output
export(Broward_County_1_2015_Total_biomass,"Broward_County_1/data/Broward_County_1_2015_biomass_data.csv")


Broward_County_1_2016 <- import("Broward_County_1/data/Broward_County_1_2016.xls")
Broward_County_1_2016_Total_biomass <- summarise_at(Broward_County_1_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2016_Total_biomass$Year <- ('2016')

###output
export(Broward_County_1_2016_Total_biomass,"Broward_County_1/data/Broward_County_1_2016_biomass_data.csv")

Broward_County_1_2018 <- import("Broward_County_1/data/Broward_County_1_2018.xls")
Broward_County_1_2018_Total_biomass <- summarise_at(Broward_County_1_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2018_Total_biomass$Year <- ('2018')
###output
export(Broward_County_1_2018_Total_biomass,"Broward_County_1/data/Broward_County_1_2018_biomass_data.csv")


Broward_County_1_2013_merge <- read_csv("Broward_County_1/data/Broward_County_1_2013_biomass_data.csv")
Broward_County_1_2014_merge <- read_csv("Broward_County_1/data/Broward_County_1_2014_biomass_data.csv")
Broward_County_1_2015_merge <- read_csv("Broward_County_1/data/Broward_County_1_2015_biomass_data.csv")
Broward_County_1_2016_merge <- read_csv("Broward_County_1/data/Broward_County_1_2016_biomass_data.csv")
Broward_County_1_2018_merge <- read_csv("Broward_County_1/data/Broward_County_1_2018_biomass_data.csv")

Broward_County_1_merge_1 <- rbind(Broward_County_1_2013_merge,Broward_County_1_2014_merge)
Broward_County_1_merge_2 <- rbind(Broward_County_1_merge_1,Broward_County_1_2015_merge)
Broward_County_1_merge_3 <- rbind(Broward_County_1_merge_2,Broward_County_1_2016_merge)
Broward_County_1_Reef_biomass_data_combined <- rbind(Broward_County_1_merge_3,Broward_County_1_2018_merge)

##output
export(Broward_County_1_Reef_biomass_data_combined,"Broward_County_1/data/Broward_County_1_biomass_data_combined.csv")


### Broward County 2

Broward_County_2_2013 <- import("Broward_County_2/data/Broward_County_2_2013.xls")
Broward_County_2_2013_Total_biomass <- summarise_at(Broward_County_2_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2013_Total_biomass$Year <- ('2013')

###output
export(Broward_County_2_2013_Total_biomass,"Broward_County_2/data/Broward_County_2_2013_biomass_data.csv")


Broward_County_2_2014 <- import("Broward_County_2/data/Broward_County_2_2014.xls")
Broward_County_2_2014_Total_biomass <- summarise_at(Broward_County_2_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2014_Total_biomass$Year <- ('2014')

###output
export(Broward_County_2_2014_Total_biomass,"Broward_County_2/data/Broward_County_2_2014_biomass_data.csv")

Broward_County_2_2015 <- import("Broward_County_2/data/Broward_County_2_2015.xls")
Broward_County_2_2015_Total_biomass <- summarise_at(Broward_County_2_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2015_Total_biomass$Year <- ('2015')

###output
export(Broward_County_2_2015_Total_biomass,"Broward_County_2/data/Broward_County_2_2015_biomass_data.csv")


Broward_County_2_2016 <- import("Broward_County_2/data/Broward_County_2_2016.xls")
Broward_County_2_2016_Total_biomass <- summarise_at(Broward_County_2_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2016_Total_biomass$Year <- ('2016')

###output
export(Broward_County_2_2016_Total_biomass,"Broward_County_2/data/Broward_County_2_2016_biomass_data.csv")

Broward_County_2_2018 <- import("Broward_County_2/data/Broward_County_2_2018.xls")
Broward_County_2_2018_Total_biomass <- summarise_at(Broward_County_2_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2018_Total_biomass$Year <- ('2018')
###output
export(Broward_County_2_2018_Total_biomass,"Broward_County_2/data/Broward_County_2_2018_biomass_data.csv")


Broward_County_2_2013_merge <- read_csv("Broward_County_2/data/Broward_County_2_2013_biomass_data.csv")
Broward_County_2_2014_merge <- read_csv("Broward_County_2/data/Broward_County_2_2014_biomass_data.csv")
Broward_County_2_2015_merge <- read_csv("Broward_County_2/data/Broward_County_2_2015_biomass_data.csv")
Broward_County_2_2016_merge <- read_csv("Broward_County_2/data/Broward_County_2_2016_biomass_data.csv")
Broward_County_2_2018_merge <- read_csv("Broward_County_2/data/Broward_County_2_2018_biomass_data.csv")

Broward_County_2_merge_1 <- rbind(Broward_County_2_2013_merge,Broward_County_2_2014_merge)
Broward_County_2_merge_2 <- rbind(Broward_County_2_merge_1,Broward_County_2_2015_merge)
Broward_County_2_merge_3 <- rbind(Broward_County_2_merge_2,Broward_County_2_2016_merge)
Broward_County_2_Reef_biomass_data_combined <- rbind(Broward_County_2_merge_3,Broward_County_2_2018_merge)

##output
export(Broward_County_2_Reef_biomass_data_combined,"Broward_County_2/data/Broward_County_2_biomass_data_combined.csv")


###Broward County 3


Broward_County_3_2013 <- import("Broward_County_3/data/Broward_County_3_2013.xls")
Broward_County_3_2013_Total_biomass <- summarise_at(Broward_County_3_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2013_Total_biomass$Year <- ('2013')

###output
export(Broward_County_3_2013_Total_biomass,"Broward_County_3/data/Broward_County_3_2013_biomass_data.csv")


Broward_County_3_2014 <- import("Broward_County_3/data/Broward_County_3_2014.xls")
Broward_County_3_2014_Total_biomass <- summarise_at(Broward_County_3_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2014_Total_biomass$Year <- ('2014')

###output
export(Broward_County_3_2014_Total_biomass,"Broward_County_3/data/Broward_County_3_2014_biomass_data.csv")

Broward_County_3_2015 <- import("Broward_County_3/data/Broward_County_3_2015.xls")
Broward_County_3_2015_Total_biomass <- summarise_at(Broward_County_3_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2015_Total_biomass$Year <- ('2015')

###output
export(Broward_County_3_2015_Total_biomass,"Broward_County_3/data/Broward_County_3_2015_biomass_data.csv")


Broward_County_3_2016 <- import("Broward_County_3/data/Broward_County_3_2016.xls")
Broward_County_3_2016_Total_biomass <- summarise_at(Broward_County_3_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2016_Total_biomass$Year <- ('2016')

###output
export(Broward_County_3_2016_Total_biomass,"Broward_County_3/data/Broward_County_3_2016_biomass_data.csv")

Broward_County_3_2018 <- import("Broward_County_3/data/Broward_County_3_2018.xls")
Broward_County_3_2018_Total_biomass <- summarise_at(Broward_County_3_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2018_Total_biomass$Year <- ('2018')
###output
export(Broward_County_3_2018_Total_biomass,"Broward_County_3/data/Broward_County_3_2018_biomass_data.csv")


Broward_County_3_2013_merge <- read_csv("Broward_County_3/data/Broward_County_3_2013_biomass_data.csv")
Broward_County_3_2014_merge <- read_csv("Broward_County_3/data/Broward_County_3_2014_biomass_data.csv")
Broward_County_3_2015_merge <- read_csv("Broward_County_3/data/Broward_County_3_2015_biomass_data.csv")
Broward_County_3_2016_merge <- read_csv("Broward_County_3/data/Broward_County_3_2016_biomass_data.csv")
Broward_County_3_2018_merge <- read_csv("Broward_County_3/data/Broward_County_3_2018_biomass_data.csv")

Broward_County_3_merge_1 <- rbind(Broward_County_3_2013_merge,Broward_County_3_2014_merge)
Broward_County_3_merge_2 <- rbind(Broward_County_3_merge_1,Broward_County_3_2015_merge)
Broward_County_3_merge_3 <- rbind(Broward_County_3_merge_2,Broward_County_3_2016_merge)
Broward_County_3_Reef_biomass_data_combined <- rbind(Broward_County_3_merge_3,Broward_County_3_2018_merge)

##output
export(Broward_County_3_Reef_biomass_data_combined,"Broward_County_3/data/Broward_County_3_biomass_data_combined.csv")


###Broward County 4


Broward_County_4_2013 <- import("Broward_County_4/data/Broward_County_4_2013.xls")
Broward_County_4_2013_Total_biomass <- summarise_at(Broward_County_4_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2013_Total_biomass$Year <- ('2013')

###output
export(Broward_County_4_2013_Total_biomass,"Broward_County_4/data/Broward_County_4_2013_biomass_data.csv")


Broward_County_4_2014 <- import("Broward_County_4/data/Broward_County_4_2014.xls")
Broward_County_4_2014_Total_biomass <- summarise_at(Broward_County_4_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2014_Total_biomass$Year <- ('2014')

###output
export(Broward_County_4_2014_Total_biomass,"Broward_County_4/data/Broward_County_4_2014_biomass_data.csv")

Broward_County_4_2015 <- import("Broward_County_4/data/Broward_County_4_2015.xls")
Broward_County_4_2015_Total_biomass <- summarise_at(Broward_County_4_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2015_Total_biomass$Year <- ('2015')

###output
export(Broward_County_4_2015_Total_biomass,"Broward_County_4/data/Broward_County_4_2015_biomass_data.csv")


Broward_County_4_2016 <- import("Broward_County_4/data/Broward_County_4_2016.xls")
Broward_County_4_2016_Total_biomass <- summarise_at(Broward_County_4_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2016_Total_biomass$Year <- ('2016')

###output
export(Broward_County_4_2016_Total_biomass,"Broward_County_4/data/Broward_County_4_2016_biomass_data.csv")

Broward_County_4_2018 <- import("Broward_County_4/data/Broward_County_4_2018.xls")
Broward_County_4_2018_Total_biomass <- summarise_at(Broward_County_4_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2018_Total_biomass$Year <- ('2018')
###output
export(Broward_County_4_2018_Total_biomass,"Broward_County_4/data/Broward_County_4_2018_biomass_data.csv")


Broward_County_4_2013_merge <- read_csv("Broward_County_4/data/Broward_County_4_2013_biomass_data.csv")
Broward_County_4_2014_merge <- read_csv("Broward_County_4/data/Broward_County_4_2014_biomass_data.csv")
Broward_County_4_2015_merge <- read_csv("Broward_County_4/data/Broward_County_4_2015_biomass_data.csv")
Broward_County_4_2016_merge <- read_csv("Broward_County_4/data/Broward_County_4_2016_biomass_data.csv")
Broward_County_4_2018_merge <- read_csv("Broward_County_4/data/Broward_County_4_2018_biomass_data.csv")

Broward_County_4_merge_1 <- rbind(Broward_County_4_2013_merge,Broward_County_4_2014_merge)
Broward_County_4_merge_2 <- rbind(Broward_County_4_merge_1,Broward_County_4_2015_merge)
Broward_County_4_merge_3 <- rbind(Broward_County_4_merge_2,Broward_County_4_2016_merge)
Broward_County_4_Reef_biomass_data_combined <- rbind(Broward_County_4_merge_3,Broward_County_4_2018_merge)

##output
export(Broward_County_4_Reef_biomass_data_combined,"Broward_County_4/data/Broward_County_4_biomass_data_combined.csv")


###Broward County 5


Broward_County_5_2013 <- import("Broward_County_5/data/Broward_County_5_2013.xls")
Broward_County_5_2013_Total_biomass <- summarise_at(Broward_County_5_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2013_Total_biomass$Year <- ('2013')

###output
export(Broward_County_5_2013_Total_biomass,"Broward_County_5/data/Broward_County_5_2013_biomass_data.csv")


Broward_County_5_2014 <- import("Broward_County_5/data/Broward_County_5_2014.xls")
Broward_County_5_2014_Total_biomass <- summarise_at(Broward_County_5_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2014_Total_biomass$Year <- ('2014')

###output
export(Broward_County_5_2014_Total_biomass,"Broward_County_5/data/Broward_County_5_2014_biomass_data.csv")

Broward_County_5_2015 <- import("Broward_County_5/data/Broward_County_5_2015.xls")
Broward_County_5_2015_Total_biomass <- summarise_at(Broward_County_5_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2015_Total_biomass$Year <- ('2015')

###output
export(Broward_County_5_2015_Total_biomass,"Broward_County_5/data/Broward_County_5_2015_biomass_data.csv")


Broward_County_5_2016 <- import("Broward_County_5/data/Broward_County_5_2016.xls")
Broward_County_5_2016_Total_biomass <- summarise_at(Broward_County_5_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2016_Total_biomass$Year <- ('2016')

###output
export(Broward_County_5_2016_Total_biomass,"Broward_County_5/data/Broward_County_5_2016_biomass_data.csv")

Broward_County_5_2018 <- import("Broward_County_5/data/Broward_County_5_2018.xls")
Broward_County_5_2018_Total_biomass <- summarise_at(Broward_County_5_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2018_Total_biomass$Year <- ('2018')
###output
export(Broward_County_5_2018_Total_biomass,"Broward_County_5/data/Broward_County_5_2018_biomass_data.csv")


Broward_County_5_2013_merge <- read_csv("Broward_County_5/data/Broward_County_5_2013_biomass_data.csv")
Broward_County_5_2014_merge <- read_csv("Broward_County_5/data/Broward_County_5_2014_biomass_data.csv")
Broward_County_5_2015_merge <- read_csv("Broward_County_5/data/Broward_County_5_2015_biomass_data.csv")
Broward_County_5_2016_merge <- read_csv("Broward_County_5/data/Broward_County_5_2016_biomass_data.csv")
Broward_County_5_2018_merge <- read_csv("Broward_County_5/data/Broward_County_5_2018_biomass_data.csv")

Broward_County_5_merge_1 <- rbind(Broward_County_5_2013_merge,Broward_County_5_2014_merge)
Broward_County_5_merge_2 <- rbind(Broward_County_5_merge_1,Broward_County_5_2015_merge)
Broward_County_5_merge_3 <- rbind(Broward_County_5_merge_2,Broward_County_5_2016_merge)
Broward_County_5_Reef_biomass_data_combined <- rbind(Broward_County_5_merge_3,Broward_County_5_2018_merge)

##output
export(Broward_County_5_Reef_biomass_data_combined,"Broward_County_5/data/Broward_County_5_biomass_data_combined.csv")


###Broward County 6


Broward_County_6_2013 <- import("Broward_County_6/data/Broward_County_6_2013.xls")
Broward_County_6_2013_Total_biomass <- summarise_at(Broward_County_6_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2013_Total_biomass$Year <- ('2013')

###output
export(Broward_County_6_2013_Total_biomass,"Broward_County_6/data/Broward_County_6_2013_biomass_data.csv")


Broward_County_6_2014 <- import("Broward_County_6/data/Broward_County_6_2014.xls")
Broward_County_6_2014_Total_biomass <- summarise_at(Broward_County_6_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2014_Total_biomass$Year <- ('2014')

###output
export(Broward_County_6_2014_Total_biomass,"Broward_County_6/data/Broward_County_6_2014_biomass_data.csv")

Broward_County_6_2015 <- import("Broward_County_6/data/Broward_County_6_2015.xls")
Broward_County_6_2015_Total_biomass <- summarise_at(Broward_County_6_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2015_Total_biomass$Year <- ('2015')

###output
export(Broward_County_6_2015_Total_biomass,"Broward_County_6/data/Broward_County_6_2015_biomass_data.csv")


Broward_County_6_2016 <- import("Broward_County_6/data/Broward_County_6_2016.xls")
Broward_County_6_2016_Total_biomass <- summarise_at(Broward_County_6_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2016_Total_biomass$Year <- ('2016')

###output
export(Broward_County_6_2016_Total_biomass,"Broward_County_6/data/Broward_County_6_2016_biomass_data.csv")

Broward_County_6_2018 <- import("Broward_County_6/data/Broward_County_6_2018.xls")
Broward_County_6_2018_Total_biomass <- summarise_at(Broward_County_6_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2018_Total_biomass$Year <- ('2018')
###output
export(Broward_County_6_2018_Total_biomass,"Broward_County_6/data/Broward_County_6_2018_biomass_data.csv")


Broward_County_6_2013_merge <- read_csv("Broward_County_6/data/Broward_County_6_2013_biomass_data.csv")
Broward_County_6_2014_merge <- read_csv("Broward_County_6/data/Broward_County_6_2014_biomass_data.csv")
Broward_County_6_2015_merge <- read_csv("Broward_County_6/data/Broward_County_6_2015_biomass_data.csv")
Broward_County_6_2016_merge <- read_csv("Broward_County_6/data/Broward_County_6_2016_biomass_data.csv")
Broward_County_6_2018_merge <- read_csv("Broward_County_6/data/Broward_County_6_2018_biomass_data.csv")

Broward_County_6_merge_1 <- rbind(Broward_County_6_2013_merge,Broward_County_6_2014_merge)
Broward_County_6_merge_2 <- rbind(Broward_County_6_merge_1,Broward_County_6_2015_merge)
Broward_County_6_merge_3 <- rbind(Broward_County_6_merge_2,Broward_County_6_2016_merge)
Broward_County_6_Reef_biomass_data_combined <- rbind(Broward_County_6_merge_3,Broward_County_6_2018_merge)

##output
export(Broward_County_6_Reef_biomass_data_combined,"Broward_County_6/data/Broward_County_6_biomass_data_combined.csv")


###Broward County A


Broward_County_A_2013 <- import("Broward_County_A/data/Broward_County_A_2013.xls")
Broward_County_A_2013_Total_biomass <- summarise_at(Broward_County_A_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2013_Total_biomass$Year <- ('2013')

###output
export(Broward_County_A_2013_Total_biomass,"Broward_County_A/data/Broward_County_A_2013_biomass_data.csv")


Broward_County_A_2014 <- import("Broward_County_A/data/Broward_County_A_2014.xls")
Broward_County_A_2014_Total_biomass <- summarise_at(Broward_County_A_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2014_Total_biomass$Year <- ('2014')

###output
export(Broward_County_A_2014_Total_biomass,"Broward_County_A/data/Broward_County_A_2014_biomass_data.csv")

Broward_County_A_2015 <- import("Broward_County_A/data/Broward_County_A_2015.xls")
Broward_County_A_2015_Total_biomass <- summarise_at(Broward_County_A_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2015_Total_biomass$Year <- ('2015')

###output
export(Broward_County_A_2015_Total_biomass,"Broward_County_A/data/Broward_County_A_2015_biomass_data.csv")


Broward_County_A_2016 <- import("Broward_County_A/data/Broward_County_A_2016.xls")
Broward_County_A_2016_Total_biomass <- summarise_at(Broward_County_A_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2016_Total_biomass$Year <- ('2016')

###output
export(Broward_County_A_2016_Total_biomass,"Broward_County_A/data/Broward_County_A_2016_biomass_data.csv")

Broward_County_A_2018 <- import("Broward_County_A/data/Broward_County_A_2018.xls")
Broward_County_A_2018_Total_biomass <- summarise_at(Broward_County_A_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2018_Total_biomass$Year <- ('2018')
###output
export(Broward_County_A_2018_Total_biomass,"Broward_County_A/data/Broward_County_A_2018_biomass_data.csv")


Broward_County_A_2013_merge <- read_csv("Broward_County_A/data/Broward_County_A_2013_biomass_data.csv")
Broward_County_A_2014_merge <- read_csv("Broward_County_A/data/Broward_County_A_2014_biomass_data.csv")
Broward_County_A_2015_merge <- read_csv("Broward_County_A/data/Broward_County_A_2015_biomass_data.csv")
Broward_County_A_2016_merge <- read_csv("Broward_County_A/data/Broward_County_A_2016_biomass_data.csv")
Broward_County_A_2018_merge <- read_csv("Broward_County_A/data/Broward_County_A_2018_biomass_data.csv")

Broward_County_A_merge_1 <- rbind(Broward_County_A_2013_merge,Broward_County_A_2014_merge)
Broward_County_A_merge_2 <- rbind(Broward_County_A_merge_1,Broward_County_A_2015_merge)
Broward_County_A_merge_3 <- rbind(Broward_County_A_merge_2,Broward_County_A_2016_merge)
Broward_County_A_Reef_biomass_data_combined <- rbind(Broward_County_A_merge_3,Broward_County_A_2018_merge)

##output
export(Broward_County_A_Reef_biomass_data_combined,"Broward_County_A/data/Broward_County_A_biomass_data_combined.csv")


###Dade County 1


Dade_County_1_2013 <- import("Dade_County_1/data/Dade_County_1_2013.xls")
Dade_County_1_2013_Total_biomass <- summarise_at(Dade_County_1_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2013_Total_biomass$Year <- ('2013')

###output
export(Dade_County_1_2013_Total_biomass,"Dade_County_1/data/Dade_County_1_2013_biomass_data.csv")


Dade_County_1_2014 <- import("Dade_County_1/data/Dade_County_1_2014.xls")
Dade_County_1_2014_Total_biomass <- summarise_at(Dade_County_1_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2014_Total_biomass$Year <- ('2014')

###output
export(Dade_County_1_2014_Total_biomass,"Dade_County_1/data/Dade_County_1_2014_biomass_data.csv")

Dade_County_1_2015 <- import("Dade_County_1/data/Dade_County_1_2015.xls")
Dade_County_1_2015_Total_biomass <- summarise_at(Dade_County_1_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2015_Total_biomass$Year <- ('2015')

###output
export(Dade_County_1_2015_Total_biomass,"Dade_County_1/data/Dade_County_1_2015_biomass_data.csv")


Dade_County_1_2016 <- import("Dade_County_1/data/Dade_County_1_2016.xls")
Dade_County_1_2016_Total_biomass <- summarise_at(Dade_County_1_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2016_Total_biomass$Year <- ('2016')

###output
export(Dade_County_1_2016_Total_biomass,"Dade_County_1/data/Dade_County_1_2016_biomass_data.csv")

Dade_County_1_2018 <- import("Dade_County_1/data/Dade_County_1_2018.xls")
Dade_County_1_2018_Total_biomass <- summarise_at(Dade_County_1_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2018_Total_biomass$Year <- ('2018')
###output
export(Dade_County_1_2018_Total_biomass,"Dade_County_1/data/Dade_County_1_2018_biomass_data.csv")


Dade_County_1_2013_merge <- read_csv("Dade_County_1/data/Dade_County_1_2013_biomass_data.csv")
Dade_County_1_2014_merge <- read_csv("Dade_County_1/data/Dade_County_1_2014_biomass_data.csv")
Dade_County_1_2015_merge <- read_csv("Dade_County_1/data/Dade_County_1_2015_biomass_data.csv")
Dade_County_1_2016_merge <- read_csv("Dade_County_1/data/Dade_County_1_2016_biomass_data.csv")
Dade_County_1_2018_merge <- read_csv("Dade_County_1/data/Dade_County_1_2018_biomass_data.csv")

Dade_County_1_merge_1 <- rbind(Dade_County_1_2013_merge,Dade_County_1_2014_merge)
Dade_County_1_merge_2 <- rbind(Dade_County_1_merge_1,Dade_County_1_2015_merge)
Dade_County_1_merge_3 <- rbind(Dade_County_1_merge_2,Dade_County_1_2016_merge)
Dade_County_1_Reef_biomass_data_combined <- rbind(Dade_County_1_merge_3,Dade_County_1_2018_merge)

##output
export(Dade_County_1_Reef_biomass_data_combined,"Dade_County_1/data/Dade_County_1_biomass_data_combined.csv")


###Dade county 2


Dade_County_2_2013 <- import("Dade_County_2/data/Dade_County_2_2013.xls")
Dade_County_2_2013_Total_biomass <- summarise_at(Dade_County_2_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2013_Total_biomass$Year <- ('2013')

###output
export(Dade_County_2_2013_Total_biomass,"Dade_County_2/data/Dade_County_2_2013_biomass_data.csv")


Dade_County_2_2014 <- import("Dade_County_2/data/Dade_County_2_2014.xls")
Dade_County_2_2014_Total_biomass <- summarise_at(Dade_County_2_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2014_Total_biomass$Year <- ('2014')

###output
export(Dade_County_2_2014_Total_biomass,"Dade_County_2/data/Dade_County_2_2014_biomass_data.csv")

Dade_County_2_2015 <- import("Dade_County_2/data/Dade_County_2_2015.xls")
Dade_County_2_2015_Total_biomass <- summarise_at(Dade_County_2_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2015_Total_biomass$Year <- ('2015')

###output
export(Dade_County_2_2015_Total_biomass,"Dade_County_2/data/Dade_County_2_2015_biomass_data.csv")


Dade_County_2_2016 <- import("Dade_County_2/data/Dade_County_2_2016.xls")
Dade_County_2_2016_Total_biomass <- summarise_at(Dade_County_2_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2016_Total_biomass$Year <- ('2016')

###output
export(Dade_County_2_2016_Total_biomass,"Dade_County_2/data/Dade_County_2_2016_biomass_data.csv")

Dade_County_2_2018 <- import("Dade_County_2/data/Dade_County_2_2018.xls")
Dade_County_2_2018_Total_biomass <- summarise_at(Dade_County_2_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2018_Total_biomass$Year <- ('2018')
###output
export(Dade_County_2_2018_Total_biomass,"Dade_County_2/data/Dade_County_2_2018_biomass_data.csv")


Dade_County_2_2013_merge <- read_csv("Dade_County_2/data/Dade_County_2_2013_biomass_data.csv")
Dade_County_2_2014_merge <- read_csv("Dade_County_2/data/Dade_County_2_2014_biomass_data.csv")
Dade_County_2_2015_merge <- read_csv("Dade_County_2/data/Dade_County_2_2015_biomass_data.csv")
Dade_County_2_2016_merge <- read_csv("Dade_County_2/data/Dade_County_2_2016_biomass_data.csv")
Dade_County_2_2018_merge <- read_csv("Dade_County_2/data/Dade_County_2_2018_biomass_data.csv")

Dade_County_2_merge_1 <- rbind(Dade_County_2_2013_merge,Dade_County_2_2014_merge)
Dade_County_2_merge_2 <- rbind(Dade_County_2_merge_1,Dade_County_2_2015_merge)
Dade_County_2_merge_3 <- rbind(Dade_County_2_merge_2,Dade_County_2_2016_merge)
Dade_County_2_Reef_biomass_data_combined <- rbind(Dade_County_2_merge_3,Dade_County_2_2018_merge)

##output
export(Dade_County_2_Reef_biomass_data_combined,"Dade_County_2/data/Dade_County_2_biomass_data_combined.csv")


###Dade county 3


Dade_County_3_2013 <- import("Dade_County_3/data/Dade_County_3_2013.xls")
Dade_County_3_2013_Total_biomass <- summarise_at(Dade_County_3_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2013_Total_biomass$Year <- ('2013')

###output
export(Dade_County_3_2013_Total_biomass,"Dade_County_3/data/Dade_County_3_2013_biomass_data.csv")


Dade_County_3_2014 <- import("Dade_County_3/data/Dade_County_3_2014.xls")
Dade_County_3_2014_Total_biomass <- summarise_at(Dade_County_3_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2014_Total_biomass$Year <- ('2014')

###output
export(Dade_County_3_2014_Total_biomass,"Dade_County_3/data/Dade_County_3_2014_biomass_data.csv")

Dade_County_3_2015 <- import("Dade_County_3/data/Dade_County_3_2015.xls")
Dade_County_3_2015_Total_biomass <- summarise_at(Dade_County_3_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2015_Total_biomass$Year <- ('2015')

###output
export(Dade_County_3_2015_Total_biomass,"Dade_County_3/data/Dade_County_3_2015_biomass_data.csv")


Dade_County_3_2016 <- import("Dade_County_3/data/Dade_County_3_2016.xls")
Dade_County_3_2016_Total_biomass <- summarise_at(Dade_County_3_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2016_Total_biomass$Year <- ('2016')

###output
export(Dade_County_3_2016_Total_biomass,"Dade_County_3/data/Dade_County_3_2016_biomass_data.csv")

Dade_County_3_2018 <- import("Dade_County_3/data/Dade_County_3_2018.xls")
Dade_County_3_2018_Total_biomass <- summarise_at(Dade_County_3_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2018_Total_biomass$Year <- ('2018')
###output
export(Dade_County_3_2018_Total_biomass,"Dade_County_3/data/Dade_County_3_2018_biomass_data.csv")


Dade_County_3_2013_merge <- read_csv("Dade_County_3/data/Dade_County_3_2013_biomass_data.csv")
Dade_County_3_2014_merge <- read_csv("Dade_County_3/data/Dade_County_3_2014_biomass_data.csv")
Dade_County_3_2015_merge <- read_csv("Dade_County_3/data/Dade_County_3_2015_biomass_data.csv")
Dade_County_3_2016_merge <- read_csv("Dade_County_3/data/Dade_County_3_2016_biomass_data.csv")
Dade_County_3_2018_merge <- read_csv("Dade_County_3/data/Dade_County_3_2018_biomass_data.csv")

Dade_County_3_merge_1 <- rbind(Dade_County_3_2013_merge,Dade_County_3_2014_merge)
Dade_County_3_merge_2 <- rbind(Dade_County_3_merge_1,Dade_County_3_2015_merge)
Dade_County_3_merge_3 <- rbind(Dade_County_3_merge_2,Dade_County_3_2016_merge)
Dade_County_3_Reef_biomass_data_combined <- rbind(Dade_County_3_merge_3,Dade_County_3_2018_merge)

##output
export(Dade_County_3_Reef_biomass_data_combined,"Dade_County_3/data/Dade_County_3_biomass_data_combined.csv")


###Dade County 4


Dade_County_4_2013 <- import("Dade_County_4/data/Dade_County_4_2013.xls")
Dade_County_4_2013_Total_biomass <- summarise_at(Dade_County_4_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2013_Total_biomass$Year <- ('2013')

###output
export(Dade_County_4_2013_Total_biomass,"Dade_County_4/data/Dade_County_4_2013_biomass_data.csv")


Dade_County_4_2014 <- import("Dade_County_4/data/Dade_County_4_2014.xls")
Dade_County_4_2014_Total_biomass <- summarise_at(Dade_County_4_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2014_Total_biomass$Year <- ('2014')

###output
export(Dade_County_4_2014_Total_biomass,"Dade_County_4/data/Dade_County_4_2014_biomass_data.csv")

Dade_County_4_2015 <- import("Dade_County_4/data/Dade_County_4_2015.xls")
Dade_County_4_2015_Total_biomass <- summarise_at(Dade_County_4_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2015_Total_biomass$Year <- ('2015')

###output
export(Dade_County_4_2015_Total_biomass,"Dade_County_4/data/Dade_County_4_2015_biomass_data.csv")


Dade_County_4_2016 <- import("Dade_County_4/data/Dade_County_4_2016.xls")
Dade_County_4_2016_Total_biomass <- summarise_at(Dade_County_4_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2016_Total_biomass$Year <- ('2016')

###output
export(Dade_County_4_2016_Total_biomass,"Dade_County_4/data/Dade_County_4_2016_biomass_data.csv")

Dade_County_4_2018 <- import("Dade_County_4/data/Dade_County_4_2018.xls")
Dade_County_4_2018_Total_biomass <- summarise_at(Dade_County_4_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2018_Total_biomass$Year <- ('2018')
###output
export(Dade_County_4_2018_Total_biomass,"Dade_County_4/data/Dade_County_4_2018_biomass_data.csv")


Dade_County_4_2013_merge <- read_csv("Dade_County_4/data/Dade_County_4_2013_biomass_data.csv")
Dade_County_4_2014_merge <- read_csv("Dade_County_4/data/Dade_County_4_2014_biomass_data.csv")
Dade_County_4_2015_merge <- read_csv("Dade_County_4/data/Dade_County_4_2015_biomass_data.csv")
Dade_County_4_2016_merge <- read_csv("Dade_County_4/data/Dade_County_4_2016_biomass_data.csv")
Dade_County_4_2018_merge <- read_csv("Dade_County_4/data/Dade_County_4_2018_biomass_data.csv")

Dade_County_4_merge_1 <- rbind(Dade_County_4_2013_merge,Dade_County_4_2014_merge)
Dade_County_4_merge_2 <- rbind(Dade_County_4_merge_1,Dade_County_4_2015_merge)
Dade_County_4_merge_3 <- rbind(Dade_County_4_merge_2,Dade_County_4_2016_merge)
Dade_County_4_Reef_biomass_data_combined <- rbind(Dade_County_4_merge_3,Dade_County_4_2018_merge)

##output
export(Dade_County_4_Reef_biomass_data_combined,"Dade_County_4/data/Dade_County_4_biomass_data_combined.csv")


###Dade County 5


Dade_County_5_2013 <- import("Dade_County_5/data/Dade_County_5_2013.xls")
Dade_County_5_2013_Total_biomass <- summarise_at(Dade_County_5_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2013_Total_biomass$Year <- ('2013')

###output
export(Dade_County_5_2013_Total_biomass,"Dade_County_5/data/Dade_County_5_2013_biomass_data.csv")


Dade_County_5_2014 <- import("Dade_County_5/data/Dade_County_5_2014.xls")
Dade_County_5_2014_Total_biomass <- summarise_at(Dade_County_5_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2014_Total_biomass$Year <- ('2014')

###output
export(Dade_County_5_2014_Total_biomass,"Dade_County_5/data/Dade_County_5_2014_biomass_data.csv")

Dade_County_5_2015 <- import("Dade_County_5/data/Dade_County_5_2015.xls")
Dade_County_5_2015_Total_biomass <- summarise_at(Dade_County_5_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2015_Total_biomass$Year <- ('2015')

###output
export(Dade_County_5_2015_Total_biomass,"Dade_County_5/data/Dade_County_5_2015_biomass_data.csv")


Dade_County_5_2016 <- import("Dade_County_5/data/Dade_County_5_2016.xls")
Dade_County_5_2016_Total_biomass <- summarise_at(Dade_County_5_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2016_Total_biomass$Year <- ('2016')

###output
export(Dade_County_5_2016_Total_biomass,"Dade_County_5/data/Dade_County_5_2016_biomass_data.csv")

Dade_County_5_2018 <- import("Dade_County_5/data/Dade_County_5_2018.xls")
Dade_County_5_2018_Total_biomass <- summarise_at(Dade_County_5_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2018_Total_biomass$Year <- ('2018')
###output
export(Dade_County_5_2018_Total_biomass,"Dade_County_5/data/Dade_County_5_2018_biomass_data.csv")


Dade_County_5_2013_merge <- read_csv("Dade_County_5/data/Dade_County_5_2013_biomass_data.csv")
Dade_County_5_2014_merge <- read_csv("Dade_County_5/data/Dade_County_5_2014_biomass_data.csv")
Dade_County_5_2015_merge <- read_csv("Dade_County_5/data/Dade_County_5_2015_biomass_data.csv")
Dade_County_5_2016_merge <- read_csv("Dade_County_5/data/Dade_County_5_2016_biomass_data.csv")
Dade_County_5_2018_merge <- read_csv("Dade_County_5/data/Dade_County_5_2018_biomass_data.csv")

Dade_County_5_merge_1 <- rbind(Dade_County_5_2013_merge,Dade_County_5_2014_merge)
Dade_County_5_merge_2 <- rbind(Dade_County_5_merge_1,Dade_County_5_2015_merge)
Dade_County_5_merge_3 <- rbind(Dade_County_5_merge_2,Dade_County_5_2016_merge)
Dade_County_5_Reef_biomass_data_combined <- rbind(Dade_County_5_merge_3,Dade_County_5_2018_merge)

##output
export(Dade_County_5_Reef_biomass_data_combined,"Dade_County_5/data/Dade_County_5_biomass_data_combined.csv")


###Dade County 6


Dade_County_6_2013 <- import("Dade_County_6/data/Dade_County_6_2013.xls")
Dade_County_6_2013_Total_biomass <- summarise_at(Dade_County_6_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2013_Total_biomass$Year <- ('2013')

###output
export(Dade_County_6_2013_Total_biomass,"Dade_County_6/data/Dade_County_6_2013_biomass_data.csv")


Dade_County_6_2014 <- import("Dade_County_6/data/Dade_County_6_2014.xls")
Dade_County_6_2014_Total_biomass <- summarise_at(Dade_County_6_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2014_Total_biomass$Year <- ('2014')

###output
export(Dade_County_6_2014_Total_biomass,"Dade_County_6/data/Dade_County_6_2014_biomass_data.csv")

Dade_County_6_2015 <- import("Dade_County_6/data/Dade_County_6_2015.xls")
Dade_County_6_2015_Total_biomass <- summarise_at(Dade_County_6_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2015_Total_biomass$Year <- ('2015')

###output
export(Dade_County_6_2015_Total_biomass,"Dade_County_6/data/Dade_County_6_2015_biomass_data.csv")


Dade_County_6_2016 <- import("Dade_County_6/data/Dade_County_6_2016.xls")
Dade_County_6_2016_Total_biomass <- summarise_at(Dade_County_6_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2016_Total_biomass$Year <- ('2016')

###output
export(Dade_County_6_2016_Total_biomass,"Dade_County_6/data/Dade_County_6_2016_biomass_data.csv")

Dade_County_6_2018 <- import("Dade_County_6/data/Dade_County_6_2018.xls")
Dade_County_6_2018_Total_biomass <- summarise_at(Dade_County_6_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2018_Total_biomass$Year <- ('2018')
###output
export(Dade_County_6_2018_Total_biomass,"Dade_County_6/data/Dade_County_6_2018_biomass_data.csv")


Dade_County_6_2013_merge <- read_csv("Dade_County_6/data/Dade_County_6_2013_biomass_data.csv")
Dade_County_6_2014_merge <- read_csv("Dade_County_6/data/Dade_County_6_2014_biomass_data.csv")
Dade_County_6_2015_merge <- read_csv("Dade_County_6/data/Dade_County_6_2015_biomass_data.csv")
Dade_County_6_2016_merge <- read_csv("Dade_County_6/data/Dade_County_6_2016_biomass_data.csv")
Dade_County_6_2018_merge <- read_csv("Dade_County_6/data/Dade_County_6_2018_biomass_data.csv")

Dade_County_6_merge_1 <- rbind(Dade_County_6_2013_merge,Dade_County_6_2014_merge)
Dade_County_6_merge_2 <- rbind(Dade_County_6_merge_1,Dade_County_6_2015_merge)
Dade_County_6_merge_3 <- rbind(Dade_County_6_merge_2,Dade_County_6_2016_merge)
Dade_County_6_Reef_biomass_data_combined <- rbind(Dade_County_6_merge_3,Dade_County_6_2018_merge)

##output
export(Dade_County_6_Reef_biomass_data_combined,"Dade_County_6/data/Dade_County_6_biomass_data_combined.csv")


###Dade County 7


Dade_County_7_2013 <- import("Dade_County_7/data/Dade_County_7_2013.xls")
Dade_County_7_2013_Total_biomass <- summarise_at(Dade_County_7_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2013_Total_biomass$Year <- ('2013')

###output
export(Dade_County_7_2013_Total_biomass,"Dade_County_7/data/Dade_County_7_2013_biomass_data.csv")


Dade_County_7_2014 <- import("Dade_County_7/data/Dade_County_7_2014.xls")
Dade_County_7_2014_Total_biomass <- summarise_at(Dade_County_7_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2014_Total_biomass$Year <- ('2014')

###output
export(Dade_County_7_2014_Total_biomass,"Dade_County_7/data/Dade_County_7_2014_biomass_data.csv")

Dade_County_7_2015 <- import("Dade_County_7/data/Dade_County_7_2015.xls")
Dade_County_7_2015_Total_biomass <- summarise_at(Dade_County_7_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2015_Total_biomass$Year <- ('2015')

###output
export(Dade_County_7_2015_Total_biomass,"Dade_County_7/data/Dade_County_7_2015_biomass_data.csv")


Dade_County_7_2016 <- import("Dade_County_7/data/Dade_County_7_2016.xls")
Dade_County_7_2016_Total_biomass <- summarise_at(Dade_County_7_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2016_Total_biomass$Year <- ('2016')

###output
export(Dade_County_7_2016_Total_biomass,"Dade_County_7/data/Dade_County_7_2016_biomass_data.csv")

Dade_County_7_2018 <- import("Dade_County_7/data/Dade_County_7_2018.xls")
Dade_County_7_2018_Total_biomass <- summarise_at(Dade_County_7_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2018_Total_biomass$Year <- ('2018')
###output
export(Dade_County_7_2018_Total_biomass,"Dade_County_7/data/Dade_County_7_2018_biomass_data.csv")


Dade_County_7_2013_merge <- read_csv("Dade_County_7/data/Dade_County_7_2013_biomass_data.csv")
Dade_County_7_2014_merge <- read_csv("Dade_County_7/data/Dade_County_7_2014_biomass_data.csv")
Dade_County_7_2015_merge <- read_csv("Dade_County_7/data/Dade_County_7_2015_biomass_data.csv")
Dade_County_7_2016_merge <- read_csv("Dade_County_7/data/Dade_County_7_2016_biomass_data.csv")
Dade_County_7_2018_merge <- read_csv("Dade_County_7/data/Dade_County_7_2018_biomass_data.csv")

Dade_County_7_merge_1 <- rbind(Dade_County_7_2013_merge,Dade_County_7_2014_merge)
Dade_County_7_merge_2 <- rbind(Dade_County_7_merge_1,Dade_County_7_2015_merge)
Dade_County_7_merge_3 <- rbind(Dade_County_7_merge_2,Dade_County_7_2016_merge)
Dade_County_7_Reef_biomass_data_combined <- rbind(Dade_County_7_merge_3,Dade_County_7_2018_merge)

##output
export(Dade_County_7_Reef_biomass_data_combined,"Dade_County_7/data/Dade_County_7_biomass_data_combined.csv")


###Dade County 8

Dade_County_8_2013 <- import("Dade_County_8/data/Dade_County_8_2013.xls")
Dade_County_8_2013_Total_biomass <- summarise_at(Dade_County_8_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2013_Total_biomass$Year <- ('2013')

###output
export(Dade_County_8_2013_Total_biomass,"Dade_County_8/data/Dade_County_8_2013_biomass_data.csv")


Dade_County_8_2014 <- import("Dade_County_8/data/Dade_County_8_2014.xls")
Dade_County_8_2014_Total_biomass <- summarise_at(Dade_County_8_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2014_Total_biomass$Year <- ('2014')

###output
export(Dade_County_8_2014_Total_biomass,"Dade_County_8/data/Dade_County_8_2014_biomass_data.csv")

Dade_County_8_2015 <- import("Dade_County_8/data/Dade_County_8_2015.xls")
Dade_County_8_2015_Total_biomass <- summarise_at(Dade_County_8_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2015_Total_biomass$Year <- ('2015')

###output
export(Dade_County_8_2015_Total_biomass,"Dade_County_8/data/Dade_County_8_2015_biomass_data.csv")


Dade_County_8_2016 <- import("Dade_County_8/data/Dade_County_8_2016.xls")
Dade_County_8_2016_Total_biomass <- summarise_at(Dade_County_8_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2016_Total_biomass$Year <- ('2016')

###output
export(Dade_County_8_2016_Total_biomass,"Dade_County_8/data/Dade_County_8_2016_biomass_data.csv")

Dade_County_8_2018 <- import("Dade_County_8/data/Dade_County_8_2018.xls")
Dade_County_8_2018_Total_biomass <- summarise_at(Dade_County_8_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2018_Total_biomass$Year <- ('2018')
###output
export(Dade_County_8_2018_Total_biomass,"Dade_County_8/data/Dade_County_8_2018_biomass_data.csv")


Dade_County_8_2013_merge <- read_csv("Dade_County_8/data/Dade_County_8_2013_biomass_data.csv")
Dade_County_8_2014_merge <- read_csv("Dade_County_8/data/Dade_County_8_2014_biomass_data.csv")
Dade_County_8_2015_merge <- read_csv("Dade_County_8/data/Dade_County_8_2015_biomass_data.csv")
Dade_County_8_2016_merge <- read_csv("Dade_County_8/data/Dade_County_8_2016_biomass_data.csv")
Dade_County_8_2018_merge <- read_csv("Dade_County_8/data/Dade_County_8_2018_biomass_data.csv")

Dade_County_8_merge_1 <- rbind(Dade_County_8_2013_merge,Dade_County_8_2014_merge)
Dade_County_8_merge_2 <- rbind(Dade_County_8_merge_1,Dade_County_8_2015_merge)
Dade_County_8_merge_3 <- rbind(Dade_County_8_merge_2,Dade_County_8_2016_merge)
Dade_County_8_Reef_biomass_data_combined <- rbind(Dade_County_8_merge_3,Dade_County_8_2018_merge)

##output
export(Dade_County_8_Reef_biomass_data_combined,"Dade_County_8/data/Dade_County_8_biomass_data_combined.csv")


### Martin county 1


Martin_County_1_2013 <- import("Martin_County_1/data/Martin_County_1_2013.xls")
Martin_County_1_2013_Total_biomass <- summarise_at(Martin_County_1_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2013_Total_biomass$Year <- ('2013')

###output
export(Martin_County_1_2013_Total_biomass,"Martin_County_1/data/Martin_County_1_2013_biomass_data.csv")


Martin_County_1_2014 <- import("Martin_County_1/data/Martin_County_1_2014.xls")
Martin_County_1_2014_Total_biomass <- summarise_at(Martin_County_1_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2014_Total_biomass$Year <- ('2014')

###output
export(Martin_County_1_2014_Total_biomass,"Martin_County_1/data/Martin_County_1_2014_biomass_data.csv")

Martin_County_1_2015 <- import("Martin_County_1/data/Martin_County_1_2015.xls")
Martin_County_1_2015_Total_biomass <- summarise_at(Martin_County_1_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2015_Total_biomass$Year <- ('2015')

###output
export(Martin_County_1_2015_Total_biomass,"Martin_County_1/data/Martin_County_1_2015_biomass_data.csv")


Martin_County_1_2016 <- import("Martin_County_1/data/Martin_County_1_2016.xls")
Martin_County_1_2016_Total_biomass <- summarise_at(Martin_County_1_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2016_Total_biomass$Year <- ('2016')

###output
export(Martin_County_1_2016_Total_biomass,"Martin_County_1/data/Martin_County_1_2016_biomass_data.csv")

Martin_County_1_2018 <- import("Martin_County_1/data/Martin_County_1_2018.xls")
Martin_County_1_2018_Total_biomass <- summarise_at(Martin_County_1_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2018_Total_biomass$Year <- ('2018')
###output
export(Martin_County_1_2018_Total_biomass,"Martin_County_1/data/Martin_County_1_2018_biomass_data.csv")


Martin_County_1_2013_merge <- read_csv("Martin_County_1/data/Martin_County_1_2013_biomass_data.csv")
Martin_County_1_2014_merge <- read_csv("Martin_County_1/data/Martin_County_1_2014_biomass_data.csv")
Martin_County_1_2015_merge <- read_csv("Martin_County_1/data/Martin_County_1_2015_biomass_data.csv")
Martin_County_1_2016_merge <- read_csv("Martin_County_1/data/Martin_County_1_2016_biomass_data.csv")
Martin_County_1_2018_merge <- read_csv("Martin_County_1/data/Martin_County_1_2018_biomass_data.csv")

Martin_County_1_merge_1 <- rbind(Martin_County_1_2013_merge,Martin_County_1_2014_merge)
Martin_County_1_merge_2 <- rbind(Martin_County_1_merge_1,Martin_County_1_2015_merge)
Martin_County_1_merge_3 <- rbind(Martin_County_1_merge_2,Martin_County_1_2016_merge)
Martin_County_1_Reef_biomass_data_combined <- rbind(Martin_County_1_merge_3,Martin_County_1_2018_merge)

##output
export(Martin_County_1_Reef_biomass_data_combined,"Martin_County_1/data/Martin_County_1_biomass_data_combined.csv")


###Martin County 2


Martin_County_2_2013 <- import("Martin_County_2/data/Martin_County_2_2013.xls")
Martin_County_2_2013_Total_biomass <- summarise_at(Martin_County_2_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2013_Total_biomass$Year <- ('2013')

###output
export(Martin_County_2_2013_Total_biomass,"Martin_County_2/data/Martin_County_2_2013_biomass_data.csv")


Martin_County_2_2014 <- import("Martin_County_2/data/Martin_County_2_2014.xls")
Martin_County_2_2014_Total_biomass <- summarise_at(Martin_County_2_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2014_Total_biomass$Year <- ('2014')

###output
export(Martin_County_2_2014_Total_biomass,"Martin_County_2/data/Martin_County_2_2014_biomass_data.csv")

Martin_County_2_2015 <- import("Martin_County_2/data/Martin_County_2_2015.xls")
Martin_County_2_2015_Total_biomass <- summarise_at(Martin_County_2_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2015_Total_biomass$Year <- ('2015')

###output
export(Martin_County_2_2015_Total_biomass,"Martin_County_2/data/Martin_County_2_2015_biomass_data.csv")


Martin_County_2_2016 <- import("Martin_County_2/data/Martin_County_2_2016.xls")
Martin_County_2_2016_Total_biomass <- summarise_at(Martin_County_2_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2016_Total_biomass$Year <- ('2016')

###output
export(Martin_County_2_2016_Total_biomass,"Martin_County_2/data/Martin_County_2_2016_biomass_data.csv")

Martin_County_2_2018 <- import("Martin_County_2/data/Martin_County_2_2018.xls")
Martin_County_2_2018_Total_biomass <- summarise_at(Martin_County_2_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2018_Total_biomass$Year <- ('2018')
###output
export(Martin_County_2_2018_Total_biomass,"Martin_County_2/data/Martin_County_2_2018_biomass_data.csv")


Martin_County_2_2013_merge <- read_csv("Martin_County_2/data/Martin_County_2_2013_biomass_data.csv")
Martin_County_2_2014_merge <- read_csv("Martin_County_2/data/Martin_County_2_2014_biomass_data.csv")
Martin_County_2_2015_merge <- read_csv("Martin_County_2/data/Martin_County_2_2015_biomass_data.csv")
Martin_County_2_2016_merge <- read_csv("Martin_County_2/data/Martin_County_2_2016_biomass_data.csv")
Martin_County_2_2018_merge <- read_csv("Martin_County_2/data/Martin_County_2_2018_biomass_data.csv")

Martin_County_2_merge_1 <- rbind(Martin_County_2_2013_merge,Martin_County_2_2014_merge)
Martin_County_2_merge_2 <- rbind(Martin_County_2_merge_1,Martin_County_2_2015_merge)
Martin_County_2_merge_3 <- rbind(Martin_County_2_merge_2,Martin_County_2_2016_merge)
Martin_County_2_Reef_biomass_data_combined <- rbind(Martin_County_2_merge_3,Martin_County_2_2018_merge)

##output
export(Martin_County_2_Reef_biomass_data_combined,"Martin_County_2/data/Martin_County_2_biomass_data_combined.csv")


###Palm Beach 1


Palm_Beach_1_2013 <- import("Palm_Beach_1/data/Palm_Beach_1_2013.xls")
Palm_Beach_1_2013_Total_biomass <- summarise_at(Palm_Beach_1_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2013_Total_biomass$Year <- ('2013')

###output
export(Palm_Beach_1_2013_Total_biomass,"Palm_Beach_1/data/Palm_Beach_1_2013_biomass_data.csv")


Palm_Beach_1_2014 <- import("Palm_Beach_1/data/Palm_Beach_1_2014.xls")
Palm_Beach_1_2014_Total_biomass <- summarise_at(Palm_Beach_1_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2014_Total_biomass$Year <- ('2014')

###output
export(Palm_Beach_1_2014_Total_biomass,"Palm_Beach_1/data/Palm_Beach_1_2014_biomass_data.csv")

Palm_Beach_1_2015 <- import("Palm_Beach_1/data/Palm_Beach_1_2015.xls")
Palm_Beach_1_2015_Total_biomass <- summarise_at(Palm_Beach_1_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2015_Total_biomass$Year <- ('2015')

###output
export(Palm_Beach_1_2015_Total_biomass,"Palm_Beach_1/data/Palm_Beach_1_2015_biomass_data.csv")


Palm_Beach_1_2016 <- import("Palm_Beach_1/data/Palm_Beach_1_2016.xls")
Palm_Beach_1_2016_Total_biomass <- summarise_at(Palm_Beach_1_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2016_Total_biomass$Year <- ('2016')

###output
export(Palm_Beach_1_2016_Total_biomass,"Palm_Beach_1/data/Palm_Beach_1_2016_biomass_data.csv")

Palm_Beach_1_2018 <- import("Palm_Beach_1/data/Palm_Beach_1_2018.xls")
Palm_Beach_1_2018_Total_biomass <- summarise_at(Palm_Beach_1_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2018_Total_biomass$Year <- ('2018')
###output
export(Palm_Beach_1_2018_Total_biomass,"Palm_Beach_1/data/Palm_Beach_1_2018_biomass_data.csv")


Palm_Beach_1_2013_merge <- read_csv("Palm_Beach_1/data/Palm_Beach_1_2013_biomass_data.csv")
Palm_Beach_1_2014_merge <- read_csv("Palm_Beach_1/data/Palm_Beach_1_2014_biomass_data.csv")
Palm_Beach_1_2015_merge <- read_csv("Palm_Beach_1/data/Palm_Beach_1_2015_biomass_data.csv")
Palm_Beach_1_2016_merge <- read_csv("Palm_Beach_1/data/Palm_Beach_1_2016_biomass_data.csv")
Palm_Beach_1_2018_merge <- read_csv("Palm_Beach_1/data/Palm_Beach_1_2018_biomass_data.csv")

Palm_Beach_1_merge_1 <- rbind(Palm_Beach_1_2013_merge,Palm_Beach_1_2014_merge)
Palm_Beach_1_merge_2 <- rbind(Palm_Beach_1_merge_1,Palm_Beach_1_2015_merge)
Palm_Beach_1_merge_3 <- rbind(Palm_Beach_1_merge_2,Palm_Beach_1_2016_merge)
Palm_Beach_1_Reef_biomass_data_combined <- rbind(Palm_Beach_1_merge_3,Palm_Beach_1_2018_merge)

##output
export(Palm_Beach_1_Reef_biomass_data_combined,"Palm_Beach_1/data/Palm_Beach_1_biomass_data_combined.csv")


###Palm Beach 2


Palm_Beach_2_2013 <- import("Palm_Beach_2/data/Palm_Beach_2_2013.xls")
Palm_Beach_2_2013_Total_biomass <- summarise_at(Palm_Beach_2_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2013_Total_biomass$Year <- ('2013')

###output
export(Palm_Beach_2_2013_Total_biomass,"Palm_Beach_2/data/Palm_Beach_2_2013_biomass_data.csv")


Palm_Beach_2_2014 <- import("Palm_Beach_2/data/Palm_Beach_2_2014.xls")
Palm_Beach_2_2014_Total_biomass <- summarise_at(Palm_Beach_2_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2014_Total_biomass$Year <- ('2014')

###output
export(Palm_Beach_2_2014_Total_biomass,"Palm_Beach_2/data/Palm_Beach_2_2014_biomass_data.csv")

Palm_Beach_2_2015 <- import("Palm_Beach_2/data/Palm_Beach_2_2015.xls")
Palm_Beach_2_2015_Total_biomass <- summarise_at(Palm_Beach_2_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2015_Total_biomass$Year <- ('2015')

###output
export(Palm_Beach_2_2015_Total_biomass,"Palm_Beach_2/data/Palm_Beach_2_2015_biomass_data.csv")


Palm_Beach_2_2016 <- import("Palm_Beach_2/data/Palm_Beach_2_2016.xls")
Palm_Beach_2_2016_Total_biomass <- summarise_at(Palm_Beach_2_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2016_Total_biomass$Year <- ('2016')

###output
export(Palm_Beach_2_2016_Total_biomass,"Palm_Beach_2/data/Palm_Beach_2_2016_biomass_data.csv")

Palm_Beach_2_2018 <- import("Palm_Beach_2/data/Palm_Beach_2_2018.xls")
Palm_Beach_2_2018_Total_biomass <- summarise_at(Palm_Beach_2_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2018_Total_biomass$Year <- ('2018')
###output
export(Palm_Beach_2_2018_Total_biomass,"Palm_Beach_2/data/Palm_Beach_2_2018_biomass_data.csv")


Palm_Beach_2_2013_merge <- read_csv("Palm_Beach_2/data/Palm_Beach_2_2013_biomass_data.csv")
Palm_Beach_2_2014_merge <- read_csv("Palm_Beach_2/data/Palm_Beach_2_2014_biomass_data.csv")
Palm_Beach_2_2015_merge <- read_csv("Palm_Beach_2/data/Palm_Beach_2_2015_biomass_data.csv")
Palm_Beach_2_2016_merge <- read_csv("Palm_Beach_2/data/Palm_Beach_2_2016_biomass_data.csv")
Palm_Beach_2_2018_merge <- read_csv("Palm_Beach_2/data/Palm_Beach_2_2018_biomass_data.csv")

Palm_Beach_2_merge_1 <- rbind(Palm_Beach_2_2013_merge,Palm_Beach_2_2014_merge)
Palm_Beach_2_merge_2 <- rbind(Palm_Beach_2_merge_1,Palm_Beach_2_2015_merge)
Palm_Beach_2_merge_3 <- rbind(Palm_Beach_2_merge_2,Palm_Beach_2_2016_merge)
Palm_Beach_2_Reef_biomass_data_combined <- rbind(Palm_Beach_2_merge_3,Palm_Beach_2_2018_merge)

##output
export(Palm_Beach_2_Reef_biomass_data_combined,"Palm_Beach_2/data/Palm_Beach_2_biomass_data_combined.csv")


###Palm Beach 3


Palm_Beach_3_2013 <- import("Palm_Beach_3/data/Palm_Beach_3_2013.xls")
Palm_Beach_3_2013_Total_biomass <- summarise_at(Palm_Beach_3_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2013_Total_biomass$Year <- ('2013')

###output
export(Palm_Beach_3_2013_Total_biomass,"Palm_Beach_3/data/Palm_Beach_3_2013_biomass_data.csv")


Palm_Beach_3_2014 <- import("Palm_Beach_3/data/Palm_Beach_3_2014.xls")
Palm_Beach_3_2014_Total_biomass <- summarise_at(Palm_Beach_3_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2014_Total_biomass$Year <- ('2014')

###output
export(Palm_Beach_3_2014_Total_biomass,"Palm_Beach_3/data/Palm_Beach_3_2014_biomass_data.csv")

Palm_Beach_3_2015 <- import("Palm_Beach_3/data/Palm_Beach_3_2015.xls")
Palm_Beach_3_2015_Total_biomass <- summarise_at(Palm_Beach_3_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2015_Total_biomass$Year <- ('2015')

###output
export(Palm_Beach_3_2015_Total_biomass,"Palm_Beach_3/data/Palm_Beach_3_2015_biomass_data.csv")


Palm_Beach_3_2016 <- import("Palm_Beach_3/data/Palm_Beach_3_2016.xls")
Palm_Beach_3_2016_Total_biomass <- summarise_at(Palm_Beach_3_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2016_Total_biomass$Year <- ('2016')

###output
export(Palm_Beach_3_2016_Total_biomass,"Palm_Beach_3/data/Palm_Beach_3_2016_biomass_data.csv")

Palm_Beach_3_2018 <- import("Palm_Beach_3/data/Palm_Beach_3_2018.xls")
Palm_Beach_3_2018_Total_biomass <- summarise_at(Palm_Beach_3_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2018_Total_biomass$Year <- ('2018')
###output
export(Palm_Beach_3_2018_Total_biomass,"Palm_Beach_3/data/Palm_Beach_3_2018_biomass_data.csv")


Palm_Beach_3_2013_merge <- read_csv("Palm_Beach_3/data/Palm_Beach_3_2013_biomass_data.csv")
Palm_Beach_3_2014_merge <- read_csv("Palm_Beach_3/data/Palm_Beach_3_2014_biomass_data.csv")
Palm_Beach_3_2015_merge <- read_csv("Palm_Beach_3/data/Palm_Beach_3_2015_biomass_data.csv")
Palm_Beach_3_2016_merge <- read_csv("Palm_Beach_3/data/Palm_Beach_3_2016_biomass_data.csv")
Palm_Beach_3_2018_merge <- read_csv("Palm_Beach_3/data/Palm_Beach_3_2018_biomass_data.csv")

Palm_Beach_3_merge_1 <- rbind(Palm_Beach_3_2013_merge,Palm_Beach_3_2014_merge)
Palm_Beach_3_merge_2 <- rbind(Palm_Beach_3_merge_1,Palm_Beach_3_2015_merge)
Palm_Beach_3_merge_3 <- rbind(Palm_Beach_3_merge_2,Palm_Beach_3_2016_merge)
Palm_Beach_3_Reef_biomass_data_combined <- rbind(Palm_Beach_3_merge_3,Palm_Beach_3_2018_merge)

##output
export(Palm_Beach_3_Reef_biomass_data_combined,"Palm_Beach_3/data/Palm_Beach_3_biomass_data_combined.csv")


###Palm Beach 4


Palm_Beach_4_2013 <- import("Palm_Beach_4/data/Palm_Beach_4_2013.xls")
Palm_Beach_4_2013_Total_biomass <- summarise_at(Palm_Beach_4_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2013_Total_biomass$Year <- ('2013')

###output
export(Palm_Beach_4_2013_Total_biomass,"Palm_Beach_4/data/Palm_Beach_4_2013_biomass_data.csv")


Palm_Beach_4_2014 <- import("Palm_Beach_4/data/Palm_Beach_4_2014.xls")
Palm_Beach_4_2014_Total_biomass <- summarise_at(Palm_Beach_4_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2014_Total_biomass$Year <- ('2014')

###output
export(Palm_Beach_4_2014_Total_biomass,"Palm_Beach_4/data/Palm_Beach_4_2014_biomass_data.csv")

Palm_Beach_4_2015 <- import("Palm_Beach_4/data/Palm_Beach_4_2015.xls")
Palm_Beach_4_2015_Total_biomass <- summarise_at(Palm_Beach_4_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2015_Total_biomass$Year <- ('2015')

###output
export(Palm_Beach_4_2015_Total_biomass,"Palm_Beach_4/data/Palm_Beach_4_2015_biomass_data.csv")


Palm_Beach_4_2016 <- import("Palm_Beach_4/data/Palm_Beach_4_2016.xls")
Palm_Beach_4_2016_Total_biomass <- summarise_at(Palm_Beach_4_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2016_Total_biomass$Year <- ('2016')

###output
export(Palm_Beach_4_2016_Total_biomass,"Palm_Beach_4/data/Palm_Beach_4_2016_biomass_data.csv")

Palm_Beach_4_2018 <- import("Palm_Beach_4/data/Palm_Beach_4_2018.xls")
Palm_Beach_4_2018_Total_biomass <- summarise_at(Palm_Beach_4_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2018_Total_biomass$Year <- ('2018')
###output
export(Palm_Beach_4_2018_Total_biomass,"Palm_Beach_4/data/Palm_Beach_4_2018_biomass_data.csv")


Palm_Beach_4_2013_merge <- read_csv("Palm_Beach_4/data/Palm_Beach_4_2013_biomass_data.csv")
Palm_Beach_4_2014_merge <- read_csv("Palm_Beach_4/data/Palm_Beach_4_2014_biomass_data.csv")
Palm_Beach_4_2015_merge <- read_csv("Palm_Beach_4/data/Palm_Beach_4_2015_biomass_data.csv")
Palm_Beach_4_2016_merge <- read_csv("Palm_Beach_4/data/Palm_Beach_4_2016_biomass_data.csv")
Palm_Beach_4_2018_merge <- read_csv("Palm_Beach_4/data/Palm_Beach_4_2018_biomass_data.csv")

Palm_Beach_4_merge_1 <- rbind(Palm_Beach_4_2013_merge,Palm_Beach_4_2014_merge)
Palm_Beach_4_merge_2 <- rbind(Palm_Beach_4_merge_1,Palm_Beach_4_2015_merge)
Palm_Beach_4_merge_3 <- rbind(Palm_Beach_4_merge_2,Palm_Beach_4_2016_merge)
Palm_Beach_4_Reef_biomass_data_combined <- rbind(Palm_Beach_4_merge_3,Palm_Beach_4_2018_merge)

##output
export(Palm_Beach_4_Reef_biomass_data_combined,"Palm_Beach_4/data/Palm_Beach_4_biomass_data_combined.csv")


###Palm Beach 5


Palm_Beach_5_2013 <- import("Palm_Beach_5/data/Palm_Beach_5_2013.xls")
Palm_Beach_5_2013_Total_biomass <- summarise_at(Palm_Beach_5_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2013_Total_biomass$Year <- ('2013')

###output
export(Palm_Beach_5_2013_Total_biomass,"Palm_Beach_5/data/Palm_Beach_5_2013_biomass_data.csv")


Palm_Beach_5_2014 <- import("Palm_Beach_5/data/Palm_Beach_5_2014.xls")
Palm_Beach_5_2014_Total_biomass <- summarise_at(Palm_Beach_5_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2014_Total_biomass$Year <- ('2014')

###output
export(Palm_Beach_5_2014_Total_biomass,"Palm_Beach_5/data/Palm_Beach_5_2014_biomass_data.csv")

Palm_Beach_5_2015 <- import("Palm_Beach_5/data/Palm_Beach_5_2015.xls")
Palm_Beach_5_2015_Total_biomass <- summarise_at(Palm_Beach_5_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2015_Total_biomass$Year <- ('2015')

###output
export(Palm_Beach_5_2015_Total_biomass,"Palm_Beach_5/data/Palm_Beach_5_2015_biomass_data.csv")


Palm_Beach_5_2016 <- import("Palm_Beach_5/data/Palm_Beach_5_2016.xls")
Palm_Beach_5_2016_Total_biomass <- summarise_at(Palm_Beach_5_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2016_Total_biomass$Year <- ('2016')

###output
export(Palm_Beach_5_2016_Total_biomass,"Palm_Beach_5/data/Palm_Beach_5_2016_biomass_data.csv")

Palm_Beach_5_2018 <- import("Palm_Beach_5/data/Palm_Beach_5_2018.xls")
Palm_Beach_5_2018_Total_biomass <- summarise_at(Palm_Beach_5_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2018_Total_biomass$Year <- ('2018')
###output
export(Palm_Beach_5_2018_Total_biomass,"Palm_Beach_5/data/Palm_Beach_5_2018_biomass_data.csv")


Palm_Beach_5_2013_merge <- read_csv("Palm_Beach_5/data/Palm_Beach_5_2013_biomass_data.csv")
Palm_Beach_5_2014_merge <- read_csv("Palm_Beach_5/data/Palm_Beach_5_2014_biomass_data.csv")
Palm_Beach_5_2015_merge <- read_csv("Palm_Beach_5/data/Palm_Beach_5_2015_biomass_data.csv")
Palm_Beach_5_2016_merge <- read_csv("Palm_Beach_5/data/Palm_Beach_5_2016_biomass_data.csv")
Palm_Beach_5_2018_merge <- read_csv("Palm_Beach_5/data/Palm_Beach_5_2018_biomass_data.csv")

Palm_Beach_5_merge_1 <- rbind(Palm_Beach_5_2013_merge,Palm_Beach_5_2014_merge)
Palm_Beach_5_merge_2 <- rbind(Palm_Beach_5_merge_1,Palm_Beach_5_2015_merge)
Palm_Beach_5_merge_3 <- rbind(Palm_Beach_5_merge_2,Palm_Beach_5_2016_merge)
Palm_Beach_5_Reef_biomass_data_combined <- rbind(Palm_Beach_5_merge_3,Palm_Beach_5_2018_merge)

##output
export(Palm_Beach_5_Reef_biomass_data_combined,"Palm_Beach_5/data/Palm_Beach_5_biomass_data_combined.csv")
