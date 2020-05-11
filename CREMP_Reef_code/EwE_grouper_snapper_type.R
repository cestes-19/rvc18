
### Plotting trends of groupers and snappers biomass with changes in coral cover

library(rio)
library("magrittr")
library("tidyverse")

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/DT")


snapper_spp_list = c("OCY CHRY", "LUT GRIS", "LUT ANAL", "LUT APOD", "LUT SYNA", "LUT MAHO", "LUT JOCU", "LUT BUCC", 'LUT SPE.', "LUT CYAN", "RHO AURO", "Lut camp")
snapper <- data.frame(snapper_spp_list)
colnames(snapper)<- "SPECIES_CD"

grouper_spp_list= c("CEP CRUE", "MYC BONA", "EPI MORI", "EPI STRI", "EPI ITAJ", "CEP FULV", "MYC MICR", "MYC PHEN", "MYC VENE", "MYC INTE", "MYC TIGR", "EPI FLAV", "DER INER", "SRR SPE.", "Epi nive", "Myc acut")
grouper <- data.frame(grouper_spp_list)
colnames(grouper) <- "SPECIES_CD"



### Do this for each coral reef and region(farther down)


## Dry Tortugas Reefs

## Subset data from each reef per year for grouper and snapper data

# Bird Key Reef 

# Bird_Key_1999 <- import("Bird_Key_Reef/data/Bird_Key_Reef_1999.xls")
# 
# 
# Bird_Key_1999_snapper <- merge(Bird_Key_1999, snapper, by = c("SPECIES_CD"))
# 
# 
# Bird_Key_1999_grouper <- merge(Bird_Key_1999, grouper, by = c("SPECIES_CD"))


Bird_Key_2000 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2000.xls")

Bird_Key_2000_snapper <- merge(Bird_Key_2000, snapper, by = c("SPECIES_CD"))
Bird_Key_2000_snapper <- NULL 

Bird_Key_2000_grouper <- merge(Bird_Key_2000, grouper, by = c("SPECIES_CD"))
Bird_Key_2000_grouper$X <- NULL

Bird_Key_2004 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2004.xls")

Bird_Key_2004_snapper <- merge(Bird_Key_2004, snapper, by = c("SPECIES_CD"))


Bird_Key_2004_grouper <- merge(Bird_Key_2004, grouper, by = c("SPECIES_CD"))

Bird_Key_2006 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2006.xls")

Bird_Key_2006_snapper <- merge(Bird_Key_2006, snapper, by = c("SPECIES_CD"))


Bird_Key_2006_grouper <- merge(Bird_Key_2006, grouper, by = c("SPECIES_CD"))

Bird_Key_2008 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2008.xls")

Bird_Key_2008_snapper <- merge(Bird_Key_2008, snapper, by = c("SPECIES_CD"))


Bird_Key_2008_grouper <- merge(Bird_Key_2008, grouper, by = c("SPECIES_CD"))

Bird_Key_2010 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2010.xls")

Bird_Key_2010_snapper <- merge(Bird_Key_2010, snapper, by = c("SPECIES_CD"))


Bird_Key_2010_grouper <- merge(Bird_Key_2010, grouper, by = c("SPECIES_CD"))


Bird_Key_2012 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2012.xls")

Bird_Key_2012_snapper <- merge(Bird_Key_2012, snapper, by = c("SPECIES_CD"))


Bird_Key_2012_grouper <- merge(Bird_Key_2012, grouper, by = c("SPECIES_CD"))

Bird_Key_2014 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2014.xls")

Bird_Key_2014_snapper <- merge(Bird_Key_2014, snapper, by = c("SPECIES_CD"))


Bird_Key_2014_grouper <- merge(Bird_Key_2014, grouper, by = c("SPECIES_CD"))


Bird_Key_2016 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2016.xls")

Bird_Key_2016_snapper <- merge(Bird_Key_2016, snapper, by = c("SPECIES_CD"))


Bird_Key_2016_grouper <- merge(Bird_Key_2016, grouper, by = c("SPECIES_CD"))


### Combine all years together for snapper_ and grouper_ seperately 

Bird_key_snapper_1 <- rbind(Bird_Key_2000_snapper,Bird_Key_2004_snapper)
#Bird_key_snapper_2 <- rbind(Bird_key_snapper_1,Bird_Key_2004_snapper)
Bird_key_snapper_3 <- rbind(Bird_key_snapper_1,Bird_Key_2006_snapper)
Bird_key_snapper_4 <- rbind(Bird_key_snapper_3,Bird_Key_2008_snapper)
Bird_key_snapper_5 <- rbind(Bird_key_snapper_4,Bird_Key_2010_snapper)
Bird_key_snapper_6 <- rbind(Bird_key_snapper_5,Bird_Key_2012_snapper)
Bird_key_snapper_7 <- rbind(Bird_key_snapper_6,Bird_Key_2014_snapper)
Bird_Key_snapper <- rbind(Bird_key_snapper_7,Bird_Key_2016_snapper)

Bird_Key_snapper$sitename <- "Bird Key Reef"

Bird_key_grouper_1 <- rbind(Bird_Key_2000_grouper,Bird_Key_2004_grouper)
#Bird_key_grouper_2 <- rbind(Bird_key_grouper_1,Bird_Key_2004_grouper)
Bird_key_grouper_3 <- rbind(Bird_key_grouper_1,Bird_Key_2006_grouper)
Bird_key_grouper_4 <- rbind(Bird_key_grouper_3,Bird_Key_2008_grouper)
Bird_key_grouper_5 <- rbind(Bird_key_grouper_4,Bird_Key_2010_grouper)
Bird_key_grouper_6 <- rbind(Bird_key_grouper_5,Bird_Key_2012_grouper)
Bird_key_grouper_7 <- rbind(Bird_key_grouper_6,Bird_Key_2014_grouper)
Bird_Key_grouper <- rbind(Bird_key_grouper_7,Bird_Key_2016_grouper)

Bird_Key_grouper$sitename <- "Bird Key Reef"


Bird_Key_all <- rbind(Bird_Key_snapper,Bird_Key_grouper)

#export(Bird_Key_all, "Bird_Key_Reef/data/Bird_Key_snapper_grouper_type.csv")






## Black Coral 



# Black_Coral_Rock_1999 <- import("Black_Coral_Rock/data/Black_Coral_Rock_1999.xls")
# 
# 
# Black_Coral_Rock_1999_snapper <- merge(Black_Coral_Rock_1999, snapper, by = c("SPECIES_CD"))
# Black_Coral_Rock_1999_snapper_biomass <- summarise_at(Black_Coral_Rock_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Black_Coral_Rock_1999_snapper_biomass$Year <- ('1999')
# Black_Coral_Rock_1999_snapper_biomass$Reef <- ('Black Coral Rock')
# 
# 
# Black_Coral_Rock_1999_grouper <- merge(Black_Coral_Rock_1999, grouper, by = c("SPECIES_CD"))
# Black_Coral_Rock_1999_grouper_biomass <- summarise_at(Black_Coral_Rock_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Black_Coral_Rock_1999_grouper_biomass$Year <- ('1999')
# Black_Coral_Rock_1999_grouper_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2000 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2000.xls")

Black_Coral_Rock_2000_snapper <- merge(Black_Coral_Rock_2000, snapper, by = c("SPECIES_CD"))
Black_Coral_Rock_2000_snapper$X <- NULL

Black_Coral_Rock_2000_grouper <- merge(Black_Coral_Rock_2000, grouper, by = c("SPECIES_CD"))
Black_Coral_Rock_2000_grouper$X <- NULL

Black_Coral_Rock_2004 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2004.xls")

Black_Coral_Rock_2004_snapper <- merge(Black_Coral_Rock_2004, snapper, by = c("SPECIES_CD"))


Black_Coral_Rock_2004_grouper <- merge(Black_Coral_Rock_2004, grouper, by = c("SPECIES_CD"))

Black_Coral_Rock_2006 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2006.xls")

Black_Coral_Rock_2006_snapper <- merge(Black_Coral_Rock_2006, snapper, by = c("SPECIES_CD"))


Black_Coral_Rock_2006_grouper <- merge(Black_Coral_Rock_2006, grouper, by = c("SPECIES_CD"))

Black_Coral_Rock_2008 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2008.xls")

Black_Coral_Rock_2008_snapper <- merge(Black_Coral_Rock_2008, snapper, by = c("SPECIES_CD"))


Black_Coral_Rock_2008_grouper <- merge(Black_Coral_Rock_2008, grouper, by = c("SPECIES_CD"))

Black_Coral_Rock_2010 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2010.xls")

Black_Coral_Rock_2010_snapper <- merge(Black_Coral_Rock_2010, snapper, by = c("SPECIES_CD"))


Black_Coral_Rock_2010_grouper <- merge(Black_Coral_Rock_2010, grouper, by = c("SPECIES_CD"))


Black_Coral_Rock_2012 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2012.xls")

Black_Coral_Rock_2012_snapper <- merge(Black_Coral_Rock_2012, snapper, by = c("SPECIES_CD"))


Black_Coral_Rock_2012_grouper <- merge(Black_Coral_Rock_2012, grouper, by = c("SPECIES_CD"))


Black_Coral_Rock_2014 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2014.xls")

Black_Coral_Rock_2014_snapper <- merge(Black_Coral_Rock_2014, snapper, by = c("SPECIES_CD"))


Black_Coral_Rock_2014_grouper <- merge(Black_Coral_Rock_2014, grouper, by = c("SPECIES_CD"))


Black_Coral_Rock_2016 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2016.xls")

Black_Coral_Rock_2016_snapper <- merge(Black_Coral_Rock_2016, snapper, by = c("SPECIES_CD"))


Black_Coral_Rock_2016_grouper <- merge(Black_Coral_Rock_2016, grouper, by = c("SPECIES_CD"))


### Combine all years together for snapper_ and grouper_ seperately 

#Black_Coral_Rock_snapper_1 <- rbind(Black_Coral_Rock_1999_snapper,Black_Coral_Rock_2000_snapper)
Black_Coral_Rock_snapper_2 <- rbind(Black_Coral_Rock_2000_snapper,Black_Coral_Rock_2004_snapper)
Black_Coral_Rock_snapper_3 <- rbind(Black_Coral_Rock_snapper_2,Black_Coral_Rock_2006_snapper)
Black_Coral_Rock_snapper_4 <- rbind(Black_Coral_Rock_snapper_3,Black_Coral_Rock_2008_snapper)
Black_Coral_Rock_snapper_5 <- rbind(Black_Coral_Rock_snapper_4,Black_Coral_Rock_2010_snapper)
Black_Coral_Rock_snapper_6 <- rbind(Black_Coral_Rock_snapper_5,Black_Coral_Rock_2012_snapper)
Black_Coral_Rock_snapper_7 <- rbind(Black_Coral_Rock_snapper_6,Black_Coral_Rock_2014_snapper)
Black_Coral_Rock_snapper <- rbind(Black_Coral_Rock_snapper_7,Black_Coral_Rock_2016_snapper)

Black_Coral_Rock_snapper$sitename <- "Black Coral Rock"

#Black_Coral_Rock_grouper_1 <- rbind(Black_Coral_Rock_1999_grouper,Black_Coral_Rock_2000_grouper)
Black_Coral_Rock_grouper_2 <- rbind(Black_Coral_Rock_2000_grouper,Black_Coral_Rock_2004_grouper)
Black_Coral_Rock_grouper_3 <- rbind(Black_Coral_Rock_grouper_2,Black_Coral_Rock_2006_grouper)
Black_Coral_Rock_grouper_4 <- rbind(Black_Coral_Rock_grouper_3,Black_Coral_Rock_2008_grouper)
Black_Coral_Rock_grouper_5 <- rbind(Black_Coral_Rock_grouper_4,Black_Coral_Rock_2010_grouper)
Black_Coral_Rock_grouper_6 <- rbind(Black_Coral_Rock_grouper_5,Black_Coral_Rock_2012_grouper)
Black_Coral_Rock_grouper_7 <- rbind(Black_Coral_Rock_grouper_6,Black_Coral_Rock_2014_grouper)
Black_Coral_Rock_grouper <- rbind(Black_Coral_Rock_grouper_7,Black_Coral_Rock_2016_grouper)

Black_Coral_Rock_grouper$sitename <- "Black Coral Rock"

Black_Coral_Rock_all <- rbind(Black_Coral_Rock_grouper,Black_Coral_Rock_snapper)

#export(Black_Coral_Rock_all, "Black_Coral_Rock/data/Black_Coral_Rock_snapper_grouper_type.csv")




## Davis Rock 



# Davis_Rock_1999 <- import("Davis_Rock/data/Davis_Rock_1999.xls")
# 
# 
# Davis_Rock_1999_snapper <- merge(Davis_Rock_1999, snapper, by = c("SPECIES_CD"))
# Davis_Rock_1999_snapper_biomass <- summarise_at(Davis_Rock_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Davis_Rock_1999_snapper_biomass$Year <- ('1999')
# Davis_Rock_1999_snapper_biomass$Reef <- ('Davis Rock')
# 
# 
# Davis_Rock_1999_grouper <- merge(Davis_Rock_1999, grouper, by = c("SPECIES_CD"))
# Davis_Rock_1999_grouper_biomass <- summarise_at(Davis_Rock_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Davis_Rock_1999_grouper_biomass$Year <- ('1999')
# Davis_Rock_1999_grouper_biomass$Reef <- ('Davis Rock')


Davis_Rock_2000 <- import("Davis_Rock/data/Davis_Rock_2000.xls")
Davis_Rock_2000$X <- NULL

Davis_Rock_2000_snapper <- merge(Davis_Rock_2000, snapper, by = c("SPECIES_CD"))


Davis_Rock_2000_grouper <- merge(Davis_Rock_2000, grouper, by = c("SPECIES_CD"))


Davis_Rock_2004 <- import("Davis_Rock/data/Davis_Rock_2004.xls")

Davis_Rock_2004_snapper <- merge(Davis_Rock_2004, snapper, by = c("SPECIES_CD"))


Davis_Rock_2004_grouper <- merge(Davis_Rock_2004, grouper, by = c("SPECIES_CD"))

Davis_Rock_2006 <- import("Davis_Rock/data/Davis_Rock_2006.xls")

Davis_Rock_2006_snapper <- merge(Davis_Rock_2006, snapper, by = c("SPECIES_CD"))


Davis_Rock_2006_grouper <- merge(Davis_Rock_2006, grouper, by = c("SPECIES_CD"))

Davis_Rock_2008 <- import("Davis_Rock/data/Davis_Rock_2008.xls")

Davis_Rock_2008_snapper <- merge(Davis_Rock_2008, snapper, by = c("SPECIES_CD"))


Davis_Rock_2008_grouper <- merge(Davis_Rock_2008, grouper, by = c("SPECIES_CD"))

Davis_Rock_2010 <- import("Davis_Rock/data/Davis_Rock_2010.xls")

Davis_Rock_2010_snapper <- merge(Davis_Rock_2010, snapper, by = c("SPECIES_CD"))


Davis_Rock_2010_grouper <- merge(Davis_Rock_2010, grouper, by = c("SPECIES_CD"))

Davis_Rock_2012 <- import("Davis_Rock/data/Davis_Rock_2012.xls")

Davis_Rock_2012_snapper <- merge(Davis_Rock_2012, snapper, by = c("SPECIES_CD"))


Davis_Rock_2012_grouper <- merge(Davis_Rock_2012, grouper, by = c("SPECIES_CD"))


Davis_Rock_2014 <- import("Davis_Rock/data/Davis_Rock_2014.xls")

Davis_Rock_2014_snapper <- merge(Davis_Rock_2014, snapper, by = c("SPECIES_CD"))


Davis_Rock_2014_grouper <- merge(Davis_Rock_2014, grouper, by = c("SPECIES_CD"))


Davis_Rock_2016 <- import("Davis_Rock/data/Davis_Rock_2016.xls")

Davis_Rock_2016_snapper <- merge(Davis_Rock_2016, snapper, by = c("SPECIES_CD"))


Davis_Rock_2016_grouper <- merge(Davis_Rock_2016, grouper, by = c("SPECIES_CD"))

### Combine all years together for snapper_ and grouper_ seperately 

#Davis_Rock_snapper_1 <- rbind(Davis_Rock_1999_snapper,Davis_Rock_2000_snapper)
Davis_Rock_snapper_2 <- rbind(Davis_Rock_2000_snapper,Davis_Rock_2004_snapper)
Davis_Rock_snapper_3 <- rbind(Davis_Rock_snapper_2,Davis_Rock_2006_snapper)
Davis_Rock_snapper_4 <- rbind(Davis_Rock_snapper_3,Davis_Rock_2008_snapper)
Davis_Rock_snapper_5 <- rbind(Davis_Rock_snapper_4,Davis_Rock_2010_snapper)
Davis_Rock_snapper_6 <- rbind(Davis_Rock_snapper_5,Davis_Rock_2012_snapper)
Davis_Rock_snapper_7 <- rbind(Davis_Rock_snapper_6,Davis_Rock_2014_snapper)
Davis_Rock_snapper <- rbind(Davis_Rock_snapper_7,Davis_Rock_2016_snapper)

Davis_Rock_snapper$sitename <- "Davis Rock"

#Davis_Rock_grouper_1 <- rbind(Davis_Rock_1999_grouper,Davis_Rock_2000_grouper)
Davis_Rock_grouper_2 <- rbind(Davis_Rock_2000_grouper,Davis_Rock_2004_grouper)
Davis_Rock_grouper_3 <- rbind(Davis_Rock_grouper_2,Davis_Rock_2006_grouper)
Davis_Rock_grouper_4 <- rbind(Davis_Rock_grouper_3,Davis_Rock_2008_grouper)
Davis_Rock_grouper_5 <- rbind(Davis_Rock_grouper_4,Davis_Rock_2010_grouper)
Davis_Rock_grouper_6 <- rbind(Davis_Rock_grouper_5,Davis_Rock_2012_grouper)
Davis_Rock_grouper_7 <- rbind(Davis_Rock_grouper_6,Davis_Rock_2014_grouper)
Davis_Rock_grouper <- rbind(Davis_Rock_grouper_7,Davis_Rock_2016_grouper)

Davis_Rock_grouper$sitename <- "Davis Rock"

Davis_Rock_all <- rbind(Davis_Rock_grouper,Davis_Rock_snapper)

#export(Davis_Rock_all, "Davis_Rock/data/Davis_Rock_snapper_grouper_type.csv")



## Loggerhead Patch 



Loggerhead_Patch_1999 <- import("Loggerhead_Patch/data/Loggerhead_Patch_1999.xls")
Loggerhead_Patch_1999$X <- NULL

Loggerhead_Patch_1999_snapper <- merge(Loggerhead_Patch_1999, snapper, by = c("SPECIES_CD"))

Loggerhead_Patch_1999_grouper <- merge(Loggerhead_Patch_1999, grouper, by = c("SPECIES_CD"))


Loggerhead_Patch_2000 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2000.xls")
Loggerhead_Patch_2000$X <- NULL

Loggerhead_Patch_2000_snapper <- merge(Loggerhead_Patch_2000, snapper, by = c("SPECIES_CD"))


Loggerhead_Patch_2000_grouper <- merge(Loggerhead_Patch_2000, grouper, by = c("SPECIES_CD"))

Loggerhead_Patch_2004 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2004.xls")

Loggerhead_Patch_2004_snapper <- merge(Loggerhead_Patch_2004, snapper, by = c("SPECIES_CD"))


Loggerhead_Patch_2004_grouper <- merge(Loggerhead_Patch_2004, grouper, by = c("SPECIES_CD"))

Loggerhead_Patch_2006 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2006.xls")

Loggerhead_Patch_2006_snapper <- merge(Loggerhead_Patch_2006, snapper, by = c("SPECIES_CD"))


Loggerhead_Patch_2006_grouper <- merge(Loggerhead_Patch_2006, grouper, by = c("SPECIES_CD"))

Loggerhead_Patch_2008 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2008.xls")

Loggerhead_Patch_2008_snapper <- merge(Loggerhead_Patch_2008, snapper, by = c("SPECIES_CD"))


Loggerhead_Patch_2008_grouper <- merge(Loggerhead_Patch_2008, grouper, by = c("SPECIES_CD"))

Loggerhead_Patch_2010 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2010.xls")

Loggerhead_Patch_2010_snapper <- merge(Loggerhead_Patch_2010, snapper, by = c("SPECIES_CD"))


Loggerhead_Patch_2010_grouper <- merge(Loggerhead_Patch_2010, grouper, by = c("SPECIES_CD"))


Loggerhead_Patch_2012 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2012.xls")

Loggerhead_Patch_2012_snapper <- merge(Loggerhead_Patch_2012, snapper, by = c("SPECIES_CD"))


Loggerhead_Patch_2012_grouper <- merge(Loggerhead_Patch_2012, grouper, by = c("SPECIES_CD"))


Loggerhead_Patch_2014 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2014.xls")

Loggerhead_Patch_2014_snapper <- merge(Loggerhead_Patch_2014, snapper, by = c("SPECIES_CD"))


Loggerhead_Patch_2014_grouper <- merge(Loggerhead_Patch_2014, grouper, by = c("SPECIES_CD"))


Loggerhead_Patch_2016 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2016.xls")

Loggerhead_Patch_2016_snapper <- merge(Loggerhead_Patch_2016, snapper, by = c("SPECIES_CD"))


Loggerhead_Patch_2016_grouper <- merge(Loggerhead_Patch_2016, grouper, by = c("SPECIES_CD"))


### Combine all years together for snapper_ and grouper_ seperately 

Loggerhead_Patch_snapper_1 <- rbind(Loggerhead_Patch_1999_snapper,Loggerhead_Patch_2000_snapper)
Loggerhead_Patch_snapper_2 <- rbind(Loggerhead_Patch_snapper_1,Loggerhead_Patch_2004_snapper)
Loggerhead_Patch_snapper_3 <- rbind(Loggerhead_Patch_snapper_2,Loggerhead_Patch_2006_snapper)
Loggerhead_Patch_snapper_4 <- rbind(Loggerhead_Patch_snapper_3,Loggerhead_Patch_2008_snapper)
Loggerhead_Patch_snapper_5 <- rbind(Loggerhead_Patch_snapper_4,Loggerhead_Patch_2010_snapper)
Loggerhead_Patch_snapper_6 <- rbind(Loggerhead_Patch_snapper_5,Loggerhead_Patch_2012_snapper)
Loggerhead_Patch_snapper_7 <- rbind(Loggerhead_Patch_snapper_6,Loggerhead_Patch_2014_snapper)
Loggerhead_Patch_snapper <- rbind(Loggerhead_Patch_snapper_7,Loggerhead_Patch_2016_snapper)

Loggerhead_Patch_snapper$sitename <- "Loggerhead Patch"

Loggerhead_Patch_grouper_1 <- rbind(Loggerhead_Patch_1999_grouper,Loggerhead_Patch_2000_grouper)
Loggerhead_Patch_grouper_2 <- rbind(Loggerhead_Patch_grouper_1,Loggerhead_Patch_2004_grouper)
Loggerhead_Patch_grouper_3 <- rbind(Loggerhead_Patch_grouper_2,Loggerhead_Patch_2006_grouper)
Loggerhead_Patch_grouper_4 <- rbind(Loggerhead_Patch_grouper_3,Loggerhead_Patch_2008_grouper)
Loggerhead_Patch_grouper_5 <- rbind(Loggerhead_Patch_grouper_4,Loggerhead_Patch_2010_grouper)
Loggerhead_Patch_grouper_6 <- rbind(Loggerhead_Patch_grouper_5,Loggerhead_Patch_2012_grouper)
Loggerhead_Patch_grouper_7 <- rbind(Loggerhead_Patch_grouper_6,Loggerhead_Patch_2014_grouper)
Loggerhead_Patch_grouper <- rbind(Loggerhead_Patch_grouper_7,Loggerhead_Patch_2016_grouper)

Loggerhead_Patch_grouper$sitename <- "Loggerhead Patch"

Loggerhead_Patch_all <- rbind(Loggerhead_Patch_snapper,Loggerhead_Patch_grouper)
#export(Loggerhead_Patch_all, "Loggerhead_Patch/data/Loggerhead_Patch_snapper_grouper_type.csv")


## Mayers Peak 



Mayers_Peak_1999 <- import("Mayers_Peak/data/Mayers_Peak_1999.xls")
Mayers_Peak_1999$X <- NULL

Mayers_Peak_1999_snapper <- merge(Mayers_Peak_1999, snapper, by = c("SPECIES_CD"))


Mayers_Peak_1999_grouper <- merge(Mayers_Peak_1999, grouper, by = c("SPECIES_CD"))


Mayers_Peak_2000 <- import("Mayers_Peak/data/Mayers_Peak_2000.xls")
Mayers_Peak_2000$X <- NULL

Mayers_Peak_2000_snapper <- merge(Mayers_Peak_2000, snapper, by = c("SPECIES_CD"))


Mayers_Peak_2000_grouper <- merge(Mayers_Peak_2000, grouper, by = c("SPECIES_CD"))

Mayers_Peak_2004 <- import("Mayers_Peak/data/Mayers_Peak_2004.xls")

Mayers_Peak_2004_snapper <- merge(Mayers_Peak_2004, snapper, by = c("SPECIES_CD"))


Mayers_Peak_2004_grouper <- merge(Mayers_Peak_2004, grouper, by = c("SPECIES_CD"))

Mayers_Peak_2006 <- import("Mayers_Peak/data/Mayers_Peak_2006.xls")

Mayers_Peak_2006_snapper <- merge(Mayers_Peak_2006, snapper, by = c("SPECIES_CD"))


Mayers_Peak_2006_grouper <- merge(Mayers_Peak_2006, grouper, by = c("SPECIES_CD"))

Mayers_Peak_2008 <- import("Mayers_Peak/data/Mayers_Peak_2008.xls")

Mayers_Peak_2008_snapper <- merge(Mayers_Peak_2008, snapper, by = c("SPECIES_CD"))


Mayers_Peak_2008_grouper <- merge(Mayers_Peak_2008, grouper, by = c("SPECIES_CD"))

Mayers_Peak_2010 <- import("Mayers_Peak/data/Mayers_Peak_2010.xls")

Mayers_Peak_2010_snapper <- merge(Mayers_Peak_2010, snapper, by = c("SPECIES_CD"))


Mayers_Peak_2010_grouper <- merge(Mayers_Peak_2010, grouper, by = c("SPECIES_CD"))


Mayers_Peak_2012 <- import("Mayers_Peak/data/Mayers_Peak_2012.xls")

Mayers_Peak_2012_snapper <- merge(Mayers_Peak_2012, snapper, by = c("SPECIES_CD"))


Mayers_Peak_2012_grouper <- merge(Mayers_Peak_2012, grouper, by = c("SPECIES_CD"))


Mayers_Peak_2014 <- import("Mayers_Peak/data/Mayers_Peak_2014.xls")

Mayers_Peak_2014_snapper <- merge(Mayers_Peak_2014, snapper, by = c("SPECIES_CD"))


Mayers_Peak_2014_grouper <- merge(Mayers_Peak_2014, grouper, by = c("SPECIES_CD"))


Mayers_Peak_2016 <- import("Mayers_Peak/data/Mayers_Peak_2016.xls")

Mayers_Peak_2016_snapper <- merge(Mayers_Peak_2016, snapper, by = c("SPECIES_CD"))


Mayers_Peak_2016_grouper <- merge(Mayers_Peak_2016, grouper, by = c("SPECIES_CD"))


### Combine all years together for snapper_ and grouper_ seperately 

Mayers_Peak_snapper_1 <- rbind(Mayers_Peak_1999_snapper,Mayers_Peak_2000_snapper)
Mayers_Peak_snapper_2 <- rbind(Mayers_Peak_snapper_1,Mayers_Peak_2004_snapper)
Mayers_Peak_snapper_3 <- rbind(Mayers_Peak_snapper_2,Mayers_Peak_2006_snapper)
Mayers_Peak_snapper_4 <- rbind(Mayers_Peak_snapper_3,Mayers_Peak_2008_snapper)
Mayers_Peak_snapper_5 <- rbind(Mayers_Peak_snapper_4,Mayers_Peak_2010_snapper)
Mayers_Peak_snapper_6 <- rbind(Mayers_Peak_snapper_5,Mayers_Peak_2012_snapper)
Mayers_Peak_snapper_7 <- rbind(Mayers_Peak_snapper_6,Mayers_Peak_2014_snapper)
Mayers_Peak_snapper <- rbind(Mayers_Peak_snapper_7,Mayers_Peak_2016_snapper)

Mayers_Peak_snapper$sitename <- "Mayers Peak"

Mayers_Peak_grouper_1 <- rbind(Mayers_Peak_1999_grouper,Mayers_Peak_2000_grouper)
Mayers_Peak_grouper_2 <- rbind(Mayers_Peak_grouper_1,Mayers_Peak_2004_grouper)
Mayers_Peak_grouper_3 <- rbind(Mayers_Peak_grouper_2,Mayers_Peak_2006_grouper)
Mayers_Peak_grouper_4 <- rbind(Mayers_Peak_grouper_3,Mayers_Peak_2008_grouper)
Mayers_Peak_grouper_5 <- rbind(Mayers_Peak_grouper_4,Mayers_Peak_2010_grouper)
Mayers_Peak_grouper_6 <- rbind(Mayers_Peak_grouper_5,Mayers_Peak_2012_grouper)
Mayers_Peak_grouper_7 <- rbind(Mayers_Peak_grouper_6,Mayers_Peak_2014_grouper)
Mayers_Peak_grouper <- rbind(Mayers_Peak_grouper_7,Mayers_Peak_2016_grouper)

Mayers_Peak_grouper$sitename <- "Mayers Peak"

Mayers_Peak_all <- rbind(Mayers_Peak_grouper,Mayers_Peak_snapper)

#export(Mayers_Peak_all, "Mayers_Peak/data/Mayers_Peak_snapper_grouper_type.csv")



# Palmata Patch

Palmata_Patch_1999 <- import("Palmata_Patch/data/Palmata_Patch_1999.xls")
Palmata_Patch_1999$X <- NULL

Palmata_Patch_1999_snapper <- merge(Palmata_Patch_1999, snapper, by = c("SPECIES_CD"))


Palmata_Patch_1999_grouper <- merge(Palmata_Patch_1999, grouper, by = c("SPECIES_CD"))


Palmata_Patch_2000 <- import("Palmata_Patch/data/Palmata_Patch_2000.xls")
Palmata_Patch_2000$X <- NULL
Palmata_Patch_2000_snapper <- merge(Palmata_Patch_2000, snapper, by = c("SPECIES_CD"))


Palmata_Patch_2000_grouper <- merge(Palmata_Patch_2000, grouper, by = c("SPECIES_CD"))

Palmata_Patch_2004 <- import("Palmata_Patch/data/Palmata_Patch_2004.xls")

Palmata_Patch_2004_snapper <- merge(Palmata_Patch_2004, snapper, by = c("SPECIES_CD"))


Palmata_Patch_2004_grouper <- merge(Palmata_Patch_2004, grouper, by = c("SPECIES_CD"))

Palmata_Patch_2006 <- import("Palmata_Patch/data/Palmata_Patch_2006.xls")

Palmata_Patch_2006_snapper <- merge(Palmata_Patch_2006, snapper, by = c("SPECIES_CD"))


Palmata_Patch_2006_grouper <- merge(Palmata_Patch_2006, grouper, by = c("SPECIES_CD"))

Palmata_Patch_2008 <- import("Palmata_Patch/data/Palmata_Patch_2008.xls")

Palmata_Patch_2008_snapper <- merge(Palmata_Patch_2008, snapper, by = c("SPECIES_CD"))


Palmata_Patch_2008_grouper <- merge(Palmata_Patch_2008, grouper, by = c("SPECIES_CD"))

Palmata_Patch_2010 <- import("Palmata_Patch/data/Palmata_Patch_2010.xls")

Palmata_Patch_2010_snapper <- merge(Palmata_Patch_2010, snapper, by = c("SPECIES_CD"))


Palmata_Patch_2010_grouper <- merge(Palmata_Patch_2010, grouper, by = c("SPECIES_CD"))


Palmata_Patch_2012 <- import("Palmata_Patch/data/Palmata_Patch_2012.xls")

Palmata_Patch_2012_snapper <- merge(Palmata_Patch_2012, snapper, by = c("SPECIES_CD"))


Palmata_Patch_2012_grouper <- merge(Palmata_Patch_2012, grouper, by = c("SPECIES_CD"))


Palmata_Patch_2014 <- import("Palmata_Patch/data/Palmata_Patch_2014.xls")

Palmata_Patch_2014_snapper <- merge(Palmata_Patch_2014, snapper, by = c("SPECIES_CD"))


Palmata_Patch_2014_grouper <- merge(Palmata_Patch_2014, grouper, by = c("SPECIES_CD"))


Palmata_Patch_2016 <- import("Palmata_Patch/data/Palmata_Patch_2016.xls")

Palmata_Patch_2016_snapper <- merge(Palmata_Patch_2016, snapper, by = c("SPECIES_CD"))


Palmata_Patch_2016_grouper <- merge(Palmata_Patch_2016, grouper, by = c("SPECIES_CD"))


### Combine all years together for snapper_ and grouper_ seperately 

Palmata_Patch_snapper_1 <- rbind(Palmata_Patch_1999_snapper,Palmata_Patch_2000_snapper)
Palmata_Patch_snapper_2 <- rbind(Palmata_Patch_snapper_1,Palmata_Patch_2004_snapper)
Palmata_Patch_snapper_3 <- rbind(Palmata_Patch_snapper_2,Palmata_Patch_2006_snapper)
Palmata_Patch_snapper_4 <- rbind(Palmata_Patch_snapper_3,Palmata_Patch_2008_snapper)
Palmata_Patch_snapper_5 <- rbind(Palmata_Patch_snapper_4,Palmata_Patch_2010_snapper)
Palmata_Patch_snapper_6 <- rbind(Palmata_Patch_snapper_5,Palmata_Patch_2012_snapper)
Palmata_Patch_snapper_7 <- rbind(Palmata_Patch_snapper_6,Palmata_Patch_2014_snapper)
Palmata_Patch_snapper <- rbind(Palmata_Patch_snapper_7,Palmata_Patch_2016_snapper)

Palmata_Patch_snapper$sitename <- "Palmata Patch"

Palmata_Patch_grouper_1 <- rbind(Palmata_Patch_1999_grouper,Palmata_Patch_2000_grouper)
Palmata_Patch_grouper_2 <- rbind(Palmata_Patch_grouper_1,Palmata_Patch_2004_grouper)
Palmata_Patch_grouper_3 <- rbind(Palmata_Patch_grouper_2,Palmata_Patch_2006_grouper)
Palmata_Patch_grouper_4 <- rbind(Palmata_Patch_grouper_3,Palmata_Patch_2008_grouper)
Palmata_Patch_grouper_5 <- rbind(Palmata_Patch_grouper_4,Palmata_Patch_2010_grouper)
Palmata_Patch_grouper_6 <- rbind(Palmata_Patch_grouper_5,Palmata_Patch_2012_grouper)
Palmata_Patch_grouper_7 <- rbind(Palmata_Patch_grouper_6,Palmata_Patch_2014_grouper)
Palmata_Patch_grouper <- rbind(Palmata_Patch_grouper_7,Palmata_Patch_2016_grouper)

Palmata_Patch_grouper$sitename <- "Palmata Patch"

Palmata_Patch_all <- rbind(Palmata_Patch_snapper,Palmata_Patch_grouper)

#export(Palmata_Patch_all, "Palmata_Patch/data/Palmata_Patch_snapper_grouper_type.csv")




# Prolifera Patch

Prolifera_Patch_1999 <- import("Prolifera_Patch/data/Prolifera_Patch_1999.xls")
Prolifera_Patch_1999$X <- NULL

Prolifera_Patch_1999_snapper <- merge(Prolifera_Patch_1999, snapper, by = c("SPECIES_CD"))


Prolifera_Patch_1999_grouper <- merge(Prolifera_Patch_1999, grouper, by = c("SPECIES_CD"))


Prolifera_Patch_2000 <- import("Prolifera_Patch/data/Prolifera_Patch_2000.xls")
Prolifera_Patch_2000$X <- NULL

Prolifera_Patch_2000_snapper <- merge(Prolifera_Patch_2000, snapper, by = c("SPECIES_CD"))


Prolifera_Patch_2000_grouper <- merge(Prolifera_Patch_2000, grouper, by = c("SPECIES_CD"))

Prolifera_Patch_2004 <- import("Prolifera_Patch/data/Prolifera_Patch_2004.xls")

Prolifera_Patch_2004_snapper <- merge(Prolifera_Patch_2004, snapper, by = c("SPECIES_CD"))


Prolifera_Patch_2004_grouper <- merge(Prolifera_Patch_2004, grouper, by = c("SPECIES_CD"))

Prolifera_Patch_2006 <- import("Prolifera_Patch/data/Prolifera_Patch_2006.xls")

Prolifera_Patch_2006_snapper <- merge(Prolifera_Patch_2006, snapper, by = c("SPECIES_CD"))


Prolifera_Patch_2006_grouper <- merge(Prolifera_Patch_2006, grouper, by = c("SPECIES_CD"))

Prolifera_Patch_2008 <- import("Prolifera_Patch/data/Prolifera_Patch_2008.xls")

Prolifera_Patch_2008_snapper <- merge(Prolifera_Patch_2008, snapper, by = c("SPECIES_CD"))


Prolifera_Patch_2008_grouper <- merge(Prolifera_Patch_2008, grouper, by = c("SPECIES_CD"))

Prolifera_Patch_2010 <- import("Prolifera_Patch/data/Prolifera_Patch_2010.xls")

Prolifera_Patch_2010_snapper <- merge(Prolifera_Patch_2010, snapper, by = c("SPECIES_CD"))


Prolifera_Patch_2010_grouper <- merge(Prolifera_Patch_2010, grouper, by = c("SPECIES_CD"))


Prolifera_Patch_2012 <- import("Prolifera_Patch/data/Prolifera_Patch_2012.xls")

Prolifera_Patch_2012_snapper <- merge(Prolifera_Patch_2012, snapper, by = c("SPECIES_CD"))


Prolifera_Patch_2012_grouper <- merge(Prolifera_Patch_2012, grouper, by = c("SPECIES_CD"))


Prolifera_Patch_2014 <- import("Prolifera_Patch/data/Prolifera_Patch_2014.xls")

Prolifera_Patch_2014_snapper <- merge(Prolifera_Patch_2014, snapper, by = c("SPECIES_CD"))


Prolifera_Patch_2014_grouper <- merge(Prolifera_Patch_2014, grouper, by = c("SPECIES_CD"))


Prolifera_Patch_2016 <- import("Prolifera_Patch/data/Prolifera_Patch_2016.xls")

Prolifera_Patch_2016_snapper <- merge(Prolifera_Patch_2016, snapper, by = c("SPECIES_CD"))


Prolifera_Patch_2016_grouper <- merge(Prolifera_Patch_2016, grouper, by = c("SPECIES_CD"))


### Combine all years together for snapper_ and grouper_ seperately 

Prolifera_Patch_snapper_1 <- rbind(Prolifera_Patch_1999_snapper,Prolifera_Patch_2000_snapper)
Prolifera_Patch_snapper_2 <- rbind(Prolifera_Patch_snapper_1,Prolifera_Patch_2004_snapper)
Prolifera_Patch_snapper_3 <- rbind(Prolifera_Patch_snapper_2,Prolifera_Patch_2006_snapper)
Prolifera_Patch_snapper_4 <- rbind(Prolifera_Patch_snapper_3,Prolifera_Patch_2008_snapper)
Prolifera_Patch_snapper_5 <- rbind(Prolifera_Patch_snapper_4,Prolifera_Patch_2010_snapper)
Prolifera_Patch_snapper_6 <- rbind(Prolifera_Patch_snapper_5,Prolifera_Patch_2012_snapper)
Prolifera_Patch_snapper_7 <- rbind(Prolifera_Patch_snapper_6,Prolifera_Patch_2014_snapper)
Prolifera_Patch_snapper <- rbind(Prolifera_Patch_snapper_7,Prolifera_Patch_2016_snapper)

Prolifera_Patch_snapper$sitename <- "Prolifera Patch"

Prolifera_Patch_grouper_1 <- rbind(Prolifera_Patch_1999_grouper,Prolifera_Patch_2000_grouper)
Prolifera_Patch_grouper_2 <- rbind(Prolifera_Patch_grouper_1,Prolifera_Patch_2004_grouper)
Prolifera_Patch_grouper_3 <- rbind(Prolifera_Patch_grouper_2,Prolifera_Patch_2006_grouper)
Prolifera_Patch_grouper_4 <- rbind(Prolifera_Patch_grouper_3,Prolifera_Patch_2008_grouper)
Prolifera_Patch_grouper_5 <- rbind(Prolifera_Patch_grouper_4,Prolifera_Patch_2010_grouper)
Prolifera_Patch_grouper_6 <- rbind(Prolifera_Patch_grouper_5,Prolifera_Patch_2012_grouper)
Prolifera_Patch_grouper_7 <- rbind(Prolifera_Patch_grouper_6,Prolifera_Patch_2014_grouper)
Prolifera_Patch_grouper <- rbind(Prolifera_Patch_grouper_7,Prolifera_Patch_2016_grouper)

Prolifera_Patch_grouper$sitename <- "Prolifera Patch"

Prolifera_Patch_all <- rbind(Prolifera_Patch_snapper,Prolifera_Patch_grouper)

#export(Prolifera_Patch_all, "Prolifera_Patch/data/Prolifera_Patch_snapper_grouper_type.csv")



# Temptation Rock

Temptation_Rock_1999 <- import("Temptation_Rock/data/Temptation_Rock_1999.xls")
Temptation_Rock_1999$X <- NULL

Temptation_Rock_1999_snapper <- merge(Temptation_Rock_1999, snapper, by = c("SPECIES_CD"))


Temptation_Rock_1999_grouper <- merge(Temptation_Rock_1999, grouper, by = c("SPECIES_CD"))


Temptation_Rock_2000 <- import("Temptation_Rock/data/Temptation_Rock_2000.xls")
Temptation_Rock_2000$X <- NULL

Temptation_Rock_2000_snapper <- merge(Temptation_Rock_2000, snapper, by = c("SPECIES_CD"))


Temptation_Rock_2000_grouper <- merge(Temptation_Rock_2000, grouper, by = c("SPECIES_CD"))

Temptation_Rock_2004 <- import("Temptation_Rock/data/Temptation_Rock_2004.xls")

Temptation_Rock_2004_snapper <- merge(Temptation_Rock_2004, snapper, by = c("SPECIES_CD"))


Temptation_Rock_2004_grouper <- merge(Temptation_Rock_2004, grouper, by = c("SPECIES_CD"))

Temptation_Rock_2006 <- import("Temptation_Rock/data/Temptation_Rock_2006.xls")

Temptation_Rock_2006_snapper <- merge(Temptation_Rock_2006, snapper, by = c("SPECIES_CD"))


Temptation_Rock_2006_grouper <- merge(Temptation_Rock_2006, grouper, by = c("SPECIES_CD"))

Temptation_Rock_2008 <- import("Temptation_Rock/data/Temptation_Rock_2008.xls")

Temptation_Rock_2008_snapper <- merge(Temptation_Rock_2008, snapper, by = c("SPECIES_CD"))


Temptation_Rock_2008_grouper <- merge(Temptation_Rock_2008, grouper, by = c("SPECIES_CD"))

Temptation_Rock_2010 <- import("Temptation_Rock/data/Temptation_Rock_2010.xls")

Temptation_Rock_2010_snapper <- merge(Temptation_Rock_2010, snapper, by = c("SPECIES_CD"))

Temptation_Rock_2010_grouper <- merge(Temptation_Rock_2010, grouper, by = c("SPECIES_CD"))


Temptation_Rock_2012 <- import("Temptation_Rock/data/Temptation_Rock_2012.xls")

Temptation_Rock_2012_snapper <- merge(Temptation_Rock_2012, snapper, by = c("SPECIES_CD"))


Temptation_Rock_2012_grouper <- merge(Temptation_Rock_2012, grouper, by = c("SPECIES_CD"))


Temptation_Rock_2014 <- import("Temptation_Rock/data/Temptation_Rock_2014.xls")

Temptation_Rock_2014_snapper <- merge(Temptation_Rock_2014, snapper, by = c("SPECIES_CD"))


Temptation_Rock_2014_grouper <- merge(Temptation_Rock_2014, grouper, by = c("SPECIES_CD"))


Temptation_Rock_2016 <- import("Temptation_Rock/data/Temptation_Rock_2016.xls")

Temptation_Rock_2016_snapper <- merge(Temptation_Rock_2016, snapper, by = c("SPECIES_CD"))


Temptation_Rock_2016_grouper <- merge(Temptation_Rock_2016, grouper, by = c("SPECIES_CD"))


### Combine all years together for snapper_ and grouper_ seperately 

Temptation_Rock_snapper_1 <- rbind(Temptation_Rock_1999_snapper,Temptation_Rock_2000_snapper)
Temptation_Rock_snapper_2 <- rbind(Temptation_Rock_snapper_1,Temptation_Rock_2004_snapper)
Temptation_Rock_snapper_3 <- rbind(Temptation_Rock_snapper_2,Temptation_Rock_2006_snapper)
Temptation_Rock_snapper_4 <- rbind(Temptation_Rock_snapper_3,Temptation_Rock_2008_snapper)
Temptation_Rock_snapper_5 <- rbind(Temptation_Rock_snapper_4,Temptation_Rock_2010_snapper)
Temptation_Rock_snapper_6 <- rbind(Temptation_Rock_snapper_5,Temptation_Rock_2012_snapper)
Temptation_Rock_snapper_7 <- rbind(Temptation_Rock_snapper_6,Temptation_Rock_2014_snapper)
Temptation_Rock_snapper <- rbind(Temptation_Rock_snapper_7,Temptation_Rock_2016_snapper)

Temptation_Rock_snapper$sitename <- "Temptation Rock"

Temptation_Rock_grouper_1 <- rbind(Temptation_Rock_1999_grouper,Temptation_Rock_2000_grouper)
Temptation_Rock_grouper_2 <- rbind(Temptation_Rock_grouper_1,Temptation_Rock_2004_grouper)
Temptation_Rock_grouper_3 <- rbind(Temptation_Rock_grouper_2,Temptation_Rock_2006_grouper)
Temptation_Rock_grouper_4 <- rbind(Temptation_Rock_grouper_3,Temptation_Rock_2008_grouper)
Temptation_Rock_grouper_5 <- rbind(Temptation_Rock_grouper_4,Temptation_Rock_2010_grouper)
Temptation_Rock_grouper_6 <- rbind(Temptation_Rock_grouper_5,Temptation_Rock_2012_grouper)
Temptation_Rock_grouper_7 <- rbind(Temptation_Rock_grouper_6,Temptation_Rock_2014_grouper)
Temptation_Rock_grouper <- rbind(Temptation_Rock_grouper_7,Temptation_Rock_2016_grouper)


Temptation_Rock_grouper$sitename <- "Temptation Rock"

Temptation_Rock_all <- rbind(Temptation_Rock_snapper, Temptation_Rock_grouper)

#export(Temptation_Rock_all, "Temptation_Rock/data/Temptation_Rock_snapper_grouper_type.csv")




# Texas Rock

Texas_Rock_1999 <- import("Texas_Rock/data/Texas_Rock_1999.xls")
Texas_Rock_1999$X <- NULL

Texas_Rock_1999_snapper <- merge(Texas_Rock_1999, snapper, by = c("SPECIES_CD"))


Texas_Rock_1999_grouper <- merge(Texas_Rock_1999, grouper, by = c("SPECIES_CD"))


Texas_Rock_2000 <- import("Texas_Rock/data/Texas_Rock_2000.xls")
Texas_Rock_2000$X <- NULL

Texas_Rock_2000_snapper <- merge(Texas_Rock_2000, snapper, by = c("SPECIES_CD"))


Texas_Rock_2000_grouper <- merge(Texas_Rock_2000, grouper, by = c("SPECIES_CD"))

Texas_Rock_2004 <- import("Texas_Rock/data/Texas_Rock_2004.xls")

Texas_Rock_2004_snapper <- merge(Texas_Rock_2004, snapper, by = c("SPECIES_CD"))


Texas_Rock_2004_grouper <- merge(Texas_Rock_2004, grouper, by = c("SPECIES_CD"))

Texas_Rock_2006 <- import("Texas_Rock/data/Texas_Rock_2006.xls")

Texas_Rock_2006_snapper <- merge(Texas_Rock_2006, snapper, by = c("SPECIES_CD"))


Texas_Rock_2006_grouper <- merge(Texas_Rock_2006, grouper, by = c("SPECIES_CD"))

Texas_Rock_2008 <- import("Texas_Rock/data/Texas_Rock_2008.xls")

Texas_Rock_2008_snapper <- merge(Texas_Rock_2008, snapper, by = c("SPECIES_CD"))


Texas_Rock_2008_grouper <- merge(Texas_Rock_2008, grouper, by = c("SPECIES_CD"))

Texas_Rock_2010 <- import("Texas_Rock/data/Texas_Rock_2010.xls")

Texas_Rock_2010_snapper <- merge(Texas_Rock_2010, snapper, by = c("SPECIES_CD"))


Texas_Rock_2010_grouper <- merge(Texas_Rock_2010, grouper, by = c("SPECIES_CD"))


Texas_Rock_2012 <- import("Texas_Rock/data/Texas_Rock_2012.xls")

Texas_Rock_2012_snapper <- merge(Texas_Rock_2012, snapper, by = c("SPECIES_CD"))


Texas_Rock_2012_grouper <- merge(Texas_Rock_2012, grouper, by = c("SPECIES_CD"))


Texas_Rock_2014 <- import("Texas_Rock/data/Texas_Rock_2014.xls")

Texas_Rock_2014_snapper <- merge(Texas_Rock_2014, snapper, by = c("SPECIES_CD"))


Texas_Rock_2014_grouper <- merge(Texas_Rock_2014, grouper, by = c("SPECIES_CD"))


Texas_Rock_2016 <- import("Texas_Rock/data/Texas_Rock_2016.xls")

Texas_Rock_2016_snapper <- merge(Texas_Rock_2016, snapper, by = c("SPECIES_CD"))


Texas_Rock_2016_grouper <- merge(Texas_Rock_2016, grouper, by = c("SPECIES_CD"))


### Combine all years together for snapper_ and grouper_ seperately 

Texas_Rock_snapper_1 <- rbind(Texas_Rock_1999_snapper,Texas_Rock_2000_snapper)
Texas_Rock_snapper_2 <- rbind(Texas_Rock_snapper_1,Texas_Rock_2004_snapper)
Texas_Rock_snapper_3 <- rbind(Texas_Rock_snapper_2,Texas_Rock_2006_snapper)
Texas_Rock_snapper_4 <- rbind(Texas_Rock_snapper_3,Texas_Rock_2008_snapper)
Texas_Rock_snapper_5 <- rbind(Texas_Rock_snapper_4,Texas_Rock_2010_snapper)
Texas_Rock_snapper_6 <- rbind(Texas_Rock_snapper_5,Texas_Rock_2012_snapper)
Texas_Rock_snapper_7 <- rbind(Texas_Rock_snapper_6,Texas_Rock_2014_snapper)
Texas_Rock_snapper <- rbind(Texas_Rock_snapper_7,Texas_Rock_2016_snapper)

Texas_Rock_snapper$sitename <- "Texas Rock"

Texas_Rock_grouper_1 <- rbind(Texas_Rock_1999_grouper,Texas_Rock_2000_grouper)
Texas_Rock_grouper_2 <- rbind(Texas_Rock_grouper_1,Texas_Rock_2004_grouper)
Texas_Rock_grouper_3 <- rbind(Texas_Rock_grouper_2,Texas_Rock_2006_grouper)
Texas_Rock_grouper_4 <- rbind(Texas_Rock_grouper_3,Texas_Rock_2008_grouper)
Texas_Rock_grouper_5 <- rbind(Texas_Rock_grouper_4,Texas_Rock_2010_grouper)
Texas_Rock_grouper_6 <- rbind(Texas_Rock_grouper_5,Texas_Rock_2012_grouper)
Texas_Rock_grouper_7 <- rbind(Texas_Rock_grouper_6,Texas_Rock_2014_grouper)
Texas_Rock_grouper <- rbind(Texas_Rock_grouper_7,Texas_Rock_2016_grouper)

Texas_Rock_grouper$sitename <- "Texas Rock"

Texas_Rock_all <- rbind(Texas_Rock_snapper,Texas_Rock_grouper)

#export(Texas_Rock_all, "Texas_Rock/data/Texas_Rock_snapper_grouper_type.csv")


# Maze

# Maze_1999 <- import("The_Maze/data/Maze_1999.xls")
# 
# 
# Maze_1999_snapper <- merge(Maze_1999, snapper, by = c("SPECIES_CD"))
# Maze_1999_snapper_biomass <- summarise_at(Maze_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Maze_1999_snapper_biomass$Year <- ('1999')
# Maze_1999_snapper_biomass$Reef <- ('Maze')


# Maze_1999_grouper <- merge(Maze_1999, grouper, by = c("SPECIES_CD"))
# Maze_1999_grouper_biomass <- summarise_at(Maze_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Maze_1999_grouper_biomass$Year <- ('1999')
# Maze_1999_grouper_biomass$Reef <- ('Maze')


Maze_2000 <- import("The_Maze/data/Maze_2000.xls")
Maze_2000$X <- NULL

Maze_2000_snapper <- merge(Maze_2000, snapper, by = c("SPECIES_CD"))


Maze_2000_grouper <- merge(Maze_2000, grouper, by = c("SPECIES_CD"))

Maze_2004 <- import("The_Maze/data/Maze_2004.xls")

Maze_2004_snapper <- merge(Maze_2004, snapper, by = c("SPECIES_CD"))


Maze_2004_grouper <- merge(Maze_2004, grouper, by = c("SPECIES_CD"))

Maze_2006 <- import("The_Maze/data/Maze_2006.xls")

Maze_2006_snapper <- merge(Maze_2006, snapper, by = c("SPECIES_CD"))


Maze_2006_grouper <- merge(Maze_2006, grouper, by = c("SPECIES_CD"))

Maze_2008 <- import("The_Maze/data/Maze_2008.xls")

Maze_2008_snapper <- merge(Maze_2008, snapper, by = c("SPECIES_CD"))


Maze_2008_grouper <- merge(Maze_2008, grouper, by = c("SPECIES_CD"))

Maze_2010 <- import("The_Maze/data/Maze_2010.xls")

Maze_2010_snapper <- merge(Maze_2010, snapper, by = c("SPECIES_CD"))


Maze_2010_grouper <- merge(Maze_2010, grouper, by = c("SPECIES_CD"))


Maze_2012 <- import("The_Maze/data/Maze_2012.xls")

Maze_2012_snapper <- merge(Maze_2012, snapper, by = c("SPECIES_CD"))


Maze_2012_grouper <- merge(Maze_2012, grouper, by = c("SPECIES_CD"))


Maze_2014 <- import("The_Maze/data/Maze_2014.xls")

Maze_2014_snapper <- merge(Maze_2014, snapper, by = c("SPECIES_CD"))


Maze_2014_grouper <- merge(Maze_2014, grouper, by = c("SPECIES_CD"))


Maze_2016 <- import("The_Maze/data/Maze_2016.xls")

Maze_2016_snapper <- merge(Maze_2016, snapper, by = c("SPECIES_CD"))


Maze_2016_grouper <- merge(Maze_2016, grouper, by = c("SPECIES_CD"))


### Combine all years together for snapper_ and grouper_ seperately 

#Maze_snapper_1 <- rbind(Maze_1999_snapper,Maze_2000_snapper)
Maze_snapper_2 <- rbind(Maze_2000_snapper,Maze_2004_snapper)
Maze_snapper_3 <- rbind(Maze_snapper_2,Maze_2006_snapper)
Maze_snapper_4 <- rbind(Maze_snapper_3,Maze_2008_snapper)
Maze_snapper_5 <- rbind(Maze_snapper_4,Maze_2010_snapper)
Maze_snapper_6 <- rbind(Maze_snapper_5,Maze_2012_snapper)
Maze_snapper_7 <- rbind(Maze_snapper_6,Maze_2014_snapper)
Maze_snapper <- rbind(Maze_snapper_7,Maze_2016_snapper)

Maze_snapper$sitename <- "Maze"

#Maze_grouper_1 <- rbind(Maze_1999_grouper,Maze_2000_grouper)
Maze_grouper_2 <- rbind(Maze_2000_grouper,Maze_2004_grouper)
Maze_grouper_3 <- rbind(Maze_grouper_2,Maze_2006_grouper)
Maze_grouper_4 <- rbind(Maze_grouper_3,Maze_2008_grouper)
Maze_grouper_5 <- rbind(Maze_grouper_4,Maze_2010_grouper)
Maze_grouper_6 <- rbind(Maze_grouper_5,Maze_2012_grouper)
Maze_grouper_7 <- rbind(Maze_grouper_6,Maze_2014_grouper)
Maze_grouper <- rbind(Maze_grouper_7,Maze_2016_grouper)

Maze_grouper$sitename <- "Maze"

Maze_all <- rbind(Maze_snapper,Maze_grouper)

#export(Maze_all, "The_Maze/data/Maze_snapper_grouper_type.csv")


# White Shoal

White_Shoal_1999 <- import("White_Shoal/data/White_Shoal_1999.xls")
White_Shoal_1999$X <- NULL

White_Shoal_1999_snapper <- merge(White_Shoal_1999, snapper, by = c("SPECIES_CD"))


White_Shoal_1999_grouper <- merge(White_Shoal_1999, grouper, by = c("SPECIES_CD"))


White_Shoal_2000 <- import("White_Shoal/data/White_Shoal_2000.xls")
White_Shoal_2000$X <- NULL

White_Shoal_2000_snapper <- merge(White_Shoal_2000, snapper, by = c("SPECIES_CD"))


White_Shoal_2000_grouper <- merge(White_Shoal_2000, grouper, by = c("SPECIES_CD"))

White_Shoal_2004 <- import("White_Shoal/data/White_Shoal_2004.xls")

White_Shoal_2004_snapper <- merge(White_Shoal_2004, snapper, by = c("SPECIES_CD"))


White_Shoal_2004_grouper <- merge(White_Shoal_2004, grouper, by = c("SPECIES_CD"))

White_Shoal_2006 <- import("White_Shoal/data/White_Shoal_2006.xls")

White_Shoal_2006_snapper <- merge(White_Shoal_2006, snapper, by = c("SPECIES_CD"))


White_Shoal_2006_grouper <- merge(White_Shoal_2006, grouper, by = c("SPECIES_CD"))

White_Shoal_2008 <- import("White_Shoal/data/White_Shoal_2008.xls")

White_Shoal_2008_snapper <- merge(White_Shoal_2008, snapper, by = c("SPECIES_CD"))


White_Shoal_2008_grouper <- merge(White_Shoal_2008, grouper, by = c("SPECIES_CD"))

White_Shoal_2010 <- import("White_Shoal/data/White_Shoal_2010.xls")

White_Shoal_2010_snapper <- merge(White_Shoal_2010, snapper, by = c("SPECIES_CD"))


White_Shoal_2010_grouper <- merge(White_Shoal_2010, grouper, by = c("SPECIES_CD"))


White_Shoal_2012 <- import("White_Shoal/data/White_Shoal_2012.xls")

White_Shoal_2012_snapper <- merge(White_Shoal_2012, snapper, by = c("SPECIES_CD"))


White_Shoal_2012_grouper <- merge(White_Shoal_2012, grouper, by = c("SPECIES_CD"))


White_Shoal_2014 <- import("White_Shoal/data/White_Shoal_2014.xls")

White_Shoal_2014_snapper <- merge(White_Shoal_2014, snapper, by = c("SPECIES_CD"))


White_Shoal_2014_grouper <- merge(White_Shoal_2014, grouper, by = c("SPECIES_CD"))


White_Shoal_2016 <- import("White_Shoal/data/White_Shoal_2016.xls")

White_Shoal_2016_snapper <- merge(White_Shoal_2016, snapper, by = c("SPECIES_CD"))


White_Shoal_2016_grouper <- merge(White_Shoal_2016, grouper, by = c("SPECIES_CD"))


### Combine all years together for snapper_ and grouper_ seperately 

White_Shoal_snapper_1 <- rbind(White_Shoal_1999_snapper,White_Shoal_2000_snapper)
White_Shoal_snapper_2 <- rbind(White_Shoal_snapper_1,White_Shoal_2004_snapper)
White_Shoal_snapper_3 <- rbind(White_Shoal_snapper_2,White_Shoal_2006_snapper)
White_Shoal_snapper_4 <- rbind(White_Shoal_snapper_3,White_Shoal_2008_snapper)
White_Shoal_snapper_5 <- rbind(White_Shoal_snapper_4,White_Shoal_2010_snapper)
White_Shoal_snapper_6 <- rbind(White_Shoal_snapper_5,White_Shoal_2012_snapper)
White_Shoal_snapper_7 <- rbind(White_Shoal_snapper_6,White_Shoal_2014_snapper)
White_Shoal_snapper <- rbind(White_Shoal_snapper_7,White_Shoal_2016_snapper)

White_Shoal_snapper$sitename <- "White Shoal"

White_Shoal_grouper_1 <- rbind(White_Shoal_1999_grouper,White_Shoal_2000_grouper)
White_Shoal_grouper_2 <- rbind(White_Shoal_grouper_1,White_Shoal_2004_grouper)
White_Shoal_grouper_3 <- rbind(White_Shoal_grouper_2,White_Shoal_2006_grouper)
White_Shoal_grouper_4 <- rbind(White_Shoal_grouper_3,White_Shoal_2008_grouper)
White_Shoal_grouper_5 <- rbind(White_Shoal_grouper_4,White_Shoal_2010_grouper)
White_Shoal_grouper_6 <- rbind(White_Shoal_grouper_5,White_Shoal_2012_grouper)
White_Shoal_grouper_7 <- rbind(White_Shoal_grouper_6,White_Shoal_2014_grouper)
White_Shoal_grouper <- rbind(White_Shoal_grouper_7,White_Shoal_2016_grouper)

White_Shoal_grouper$sitename <- "White Shoal"

White_Shoal_all <- rbind(White_Shoal_snapper,White_Shoal_grouper)

#export(White_Shoal_all, "White_Shoal/data/White_Shoal_snapper_grouper_type.csv")



### Combine data for all DT for snapper and grouper

DT_reef_all_combined <- rbind(Bird_Key_all,Black_Coral_Rock_all, Davis_Rock_all, Loggerhead_Patch_all, Mayers_Peak_all, Palmata_Patch_all,Prolifera_Patch_all, Maze_all, Temptation_Rock_all, Texas_Rock_all, White_Shoal_all)
#export(DT_reef_all_combined, "DT_snapper_grouper_type.csv")







### Lower Keys
setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/LK")


# Eastern Sambo Deep

Eastern_Sambo_Deep_1999 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_1999.xls")


Eastern_Sambo_Deep_1999_snapper <- merge(Eastern_Sambo_Deep_1999, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_1999_grouper <- merge(Eastern_Sambo_Deep_1999, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2000 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2000.xls")

Eastern_Sambo_Deep_2000_snapper <- merge(Eastern_Sambo_Deep_2000, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2000_grouper <- merge(Eastern_Sambo_Deep_2000, grouper, by = c("SPECIES_CD"))

Eastern_Sambo_Deep_2001 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2001.xls")

Eastern_Sambo_Deep_2001_snapper <- merge(Eastern_Sambo_Deep_2001, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2001_grouper <- merge(Eastern_Sambo_Deep_2001, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2002 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2002.xls")

Eastern_Sambo_Deep_2002_snapper <- merge(Eastern_Sambo_Deep_2002, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2002_grouper <- merge(Eastern_Sambo_Deep_2002, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2003 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2003.xls")

Eastern_Sambo_Deep_2003_snapper <- merge(Eastern_Sambo_Deep_2003, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2003_grouper <- merge(Eastern_Sambo_Deep_2003, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2004 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2004.xls")

Eastern_Sambo_Deep_2004_snapper <- merge(Eastern_Sambo_Deep_2004, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2004_grouper <- merge(Eastern_Sambo_Deep_2004, grouper, by = c("SPECIES_CD"))

Eastern_Sambo_Deep_2005 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2005.xls")

Eastern_Sambo_Deep_2005_snapper <- merge(Eastern_Sambo_Deep_2005, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2005_grouper <- merge(Eastern_Sambo_Deep_2005, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2006 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2006.xls")

Eastern_Sambo_Deep_2006_snapper <- merge(Eastern_Sambo_Deep_2006, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2006_grouper <- merge(Eastern_Sambo_Deep_2006, grouper, by = c("SPECIES_CD"))

Eastern_Sambo_Deep_2007 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2007.xls")

Eastern_Sambo_Deep_2007_snapper <- merge(Eastern_Sambo_Deep_2007, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2007_grouper <- merge(Eastern_Sambo_Deep_2007, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2008 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2008.xls")

Eastern_Sambo_Deep_2008_snapper <- merge(Eastern_Sambo_Deep_2008, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2008_grouper <- merge(Eastern_Sambo_Deep_2008, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2009 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2009.xls")

Eastern_Sambo_Deep_2009_snapper <- merge(Eastern_Sambo_Deep_2009, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2009_grouper <- merge(Eastern_Sambo_Deep_2009, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2010 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2010.xls")

Eastern_Sambo_Deep_2010_snapper <- merge(Eastern_Sambo_Deep_2010, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2010_grouper <- merge(Eastern_Sambo_Deep_2010, grouper, by = c("SPECIES_CD"))

Eastern_Sambo_Deep_2011 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2011.xls")

Eastern_Sambo_Deep_2011_snapper <- merge(Eastern_Sambo_Deep_2011, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2011_grouper <- merge(Eastern_Sambo_Deep_2011, grouper, by = c("SPECIES_CD"))



Eastern_Sambo_Deep_2012 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2012.xls")

Eastern_Sambo_Deep_2012_snapper <- merge(Eastern_Sambo_Deep_2012, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2012_grouper <- merge(Eastern_Sambo_Deep_2012, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2014 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2014.xls")

Eastern_Sambo_Deep_2014_snapper <- merge(Eastern_Sambo_Deep_2014, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2014_grouper <- merge(Eastern_Sambo_Deep_2014, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2016 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2016.xls")

Eastern_Sambo_Deep_2016_snapper <- merge(Eastern_Sambo_Deep_2016, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2016_grouper <- merge(Eastern_Sambo_Deep_2016, grouper, by = c("SPECIES_CD"))

Eastern_Sambo_Deep_2018 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2018.xls")

Eastern_Sambo_Deep_2018_snapper <- merge(Eastern_Sambo_Deep_2018, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Deep_2018_grouper <- merge(Eastern_Sambo_Deep_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Eastern_Sambo_Deep_snapper_1 <- rbind(Eastern_Sambo_Deep_1999_snapper,Eastern_Sambo_Deep_2000_snapper)
Eastern_Sambo_Deep_snapper_2 <- rbind(Eastern_Sambo_Deep_snapper_1,Eastern_Sambo_Deep_2001_snapper)
Eastern_Sambo_Deep_snapper_3 <- rbind(Eastern_Sambo_Deep_snapper_2,Eastern_Sambo_Deep_2002_snapper)
Eastern_Sambo_Deep_snapper_4 <- rbind(Eastern_Sambo_Deep_snapper_3,Eastern_Sambo_Deep_2003_snapper)
Eastern_Sambo_Deep_snapper_5 <- rbind(Eastern_Sambo_Deep_snapper_4,Eastern_Sambo_Deep_2004_snapper)
Eastern_Sambo_Deep_snapper_6 <- rbind(Eastern_Sambo_Deep_snapper_5,Eastern_Sambo_Deep_2005_snapper)
Eastern_Sambo_Deep_snapper_7 <- rbind(Eastern_Sambo_Deep_snapper_6,Eastern_Sambo_Deep_2006_snapper)
Eastern_Sambo_Deep_snapper_8 <- rbind(Eastern_Sambo_Deep_snapper_7,Eastern_Sambo_Deep_2007_snapper)
Eastern_Sambo_Deep_snapper_9 <- rbind(Eastern_Sambo_Deep_snapper_8,Eastern_Sambo_Deep_2008_snapper)
Eastern_Sambo_Deep_snapper_10 <- rbind(Eastern_Sambo_Deep_snapper_9,Eastern_Sambo_Deep_2009_snapper)
Eastern_Sambo_Deep_snapper_11<- rbind(Eastern_Sambo_Deep_snapper_10,Eastern_Sambo_Deep_2010_snapper)
Eastern_Sambo_Deep_snapper_12 <- rbind(Eastern_Sambo_Deep_snapper_11,Eastern_Sambo_Deep_2011_snapper)
Eastern_Sambo_Deep_snapper_13 <- rbind(Eastern_Sambo_Deep_snapper_12,Eastern_Sambo_Deep_2012_snapper)
Eastern_Sambo_Deep_snapper_14 <- rbind(Eastern_Sambo_Deep_snapper_13,Eastern_Sambo_Deep_2014_snapper)
Eastern_Sambo_Deep_snapper_15 <- rbind(Eastern_Sambo_Deep_snapper_14,Eastern_Sambo_Deep_2016_snapper)
Eastern_Sambo_Deep_snapper <- rbind(Eastern_Sambo_Deep_snapper_15,Eastern_Sambo_Deep_2018_snapper)

Eastern_Sambo_Deep_snapper$sitename <- "Eastern Sambo Deep"


Eastern_Sambo_Deep_grouper_1 <- rbind(Eastern_Sambo_Deep_1999_grouper,Eastern_Sambo_Deep_2000_grouper)
Eastern_Sambo_Deep_grouper_2 <- rbind(Eastern_Sambo_Deep_grouper_1,Eastern_Sambo_Deep_2001_grouper)
Eastern_Sambo_Deep_grouper_3 <- rbind(Eastern_Sambo_Deep_grouper_2,Eastern_Sambo_Deep_2002_grouper)
Eastern_Sambo_Deep_grouper_4 <- rbind(Eastern_Sambo_Deep_grouper_3,Eastern_Sambo_Deep_2003_grouper)
Eastern_Sambo_Deep_grouper_5 <- rbind(Eastern_Sambo_Deep_grouper_4,Eastern_Sambo_Deep_2004_grouper)
Eastern_Sambo_Deep_grouper_6 <- rbind(Eastern_Sambo_Deep_grouper_5,Eastern_Sambo_Deep_2005_grouper)
Eastern_Sambo_Deep_grouper_7 <- rbind(Eastern_Sambo_Deep_grouper_6,Eastern_Sambo_Deep_2006_grouper)
Eastern_Sambo_Deep_grouper_8 <- rbind(Eastern_Sambo_Deep_grouper_7,Eastern_Sambo_Deep_2007_grouper)
Eastern_Sambo_Deep_grouper_9 <- rbind(Eastern_Sambo_Deep_grouper_8,Eastern_Sambo_Deep_2008_grouper)
Eastern_Sambo_Deep_grouper_10 <- rbind(Eastern_Sambo_Deep_grouper_9,Eastern_Sambo_Deep_2009_grouper)
Eastern_Sambo_Deep_grouper_11<- rbind(Eastern_Sambo_Deep_grouper_10,Eastern_Sambo_Deep_2010_grouper)
Eastern_Sambo_Deep_grouper_12 <- rbind(Eastern_Sambo_Deep_grouper_11,Eastern_Sambo_Deep_2011_grouper)
Eastern_Sambo_Deep_grouper_13 <- rbind(Eastern_Sambo_Deep_grouper_12,Eastern_Sambo_Deep_2012_grouper)
Eastern_Sambo_Deep_grouper_14 <- rbind(Eastern_Sambo_Deep_grouper_13,Eastern_Sambo_Deep_2014_grouper)
Eastern_Sambo_Deep_grouper_15 <- rbind(Eastern_Sambo_Deep_grouper_14,Eastern_Sambo_Deep_2016_grouper)
Eastern_Sambo_Deep_grouper <- rbind(Eastern_Sambo_Deep_grouper_15,Eastern_Sambo_Deep_2018_grouper)

Eastern_Sambo_Deep_grouper$sitename <- "Eastern Sambo Deep"


Eastern_Sambo_Deep_all <- rbind(Eastern_Sambo_Deep_snapper,Eastern_Sambo_Deep_grouper)


#export(Eastern_Sambo_Deep_all, "Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_snapper_grouper_type.csv")




# Eastern Sambo Shallow

Eastern_Sambo_Shallow_1999 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_1999.xls")


Eastern_Sambo_Shallow_1999_snapper <- merge(Eastern_Sambo_Shallow_1999, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_1999_grouper <- merge(Eastern_Sambo_Shallow_1999, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2000 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2000.xls")

Eastern_Sambo_Shallow_2000_snapper <- merge(Eastern_Sambo_Shallow_2000, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2000_grouper <- merge(Eastern_Sambo_Shallow_2000, grouper, by = c("SPECIES_CD"))

Eastern_Sambo_Shallow_2001 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2001.xls")

Eastern_Sambo_Shallow_2001_snapper <- merge(Eastern_Sambo_Shallow_2001, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2001_grouper <- merge(Eastern_Sambo_Shallow_2001, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2002 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2002.xls")

Eastern_Sambo_Shallow_2002_snapper <- merge(Eastern_Sambo_Shallow_2002, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2002_grouper <- merge(Eastern_Sambo_Shallow_2002, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2003 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2003.xls")

Eastern_Sambo_Shallow_2003_snapper <- merge(Eastern_Sambo_Shallow_2003, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2003_grouper <- merge(Eastern_Sambo_Shallow_2003, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2004 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2004.xls")

Eastern_Sambo_Shallow_2004_snapper <- merge(Eastern_Sambo_Shallow_2004, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2004_grouper <- merge(Eastern_Sambo_Shallow_2004, grouper, by = c("SPECIES_CD"))

Eastern_Sambo_Shallow_2005 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2005.xls")

Eastern_Sambo_Shallow_2005_snapper <- merge(Eastern_Sambo_Shallow_2005, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2005_grouper <- merge(Eastern_Sambo_Shallow_2005, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2006 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2006.xls")

Eastern_Sambo_Shallow_2006_snapper <- merge(Eastern_Sambo_Shallow_2006, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2006_grouper <- merge(Eastern_Sambo_Shallow_2006, grouper, by = c("SPECIES_CD"))

Eastern_Sambo_Shallow_2007 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2007.xls")

Eastern_Sambo_Shallow_2007_snapper <- merge(Eastern_Sambo_Shallow_2007, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2007_grouper <- merge(Eastern_Sambo_Shallow_2007, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2008 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2008.xls")

Eastern_Sambo_Shallow_2008_snapper <- merge(Eastern_Sambo_Shallow_2008, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2008_grouper <- merge(Eastern_Sambo_Shallow_2008, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2009 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2009.xls")

Eastern_Sambo_Shallow_2009_snapper <- merge(Eastern_Sambo_Shallow_2009, snapper, by = c("SPECIES_CD"))

Eastern_Sambo_Shallow_2009_grouper <- merge(Eastern_Sambo_Shallow_2009, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2010 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2010.xls")

Eastern_Sambo_Shallow_2010_snapper <- merge(Eastern_Sambo_Shallow_2010, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2010_grouper <- merge(Eastern_Sambo_Shallow_2010, grouper, by = c("SPECIES_CD"))

Eastern_Sambo_Shallow_2011 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2011.xls")

Eastern_Sambo_Shallow_2011_snapper <- merge(Eastern_Sambo_Shallow_2011, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2011_grouper <- merge(Eastern_Sambo_Shallow_2011, grouper, by = c("SPECIES_CD"))



Eastern_Sambo_Shallow_2012 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2012.xls")

Eastern_Sambo_Shallow_2012_snapper <- merge(Eastern_Sambo_Shallow_2012, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2012_grouper <- merge(Eastern_Sambo_Shallow_2012, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2014 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2014.xls")

Eastern_Sambo_Shallow_2014_snapper <- merge(Eastern_Sambo_Shallow_2014, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2014_grouper <- merge(Eastern_Sambo_Shallow_2014, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2016 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2016.xls")

Eastern_Sambo_Shallow_2016_snapper <- merge(Eastern_Sambo_Shallow_2016, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2016_grouper <- merge(Eastern_Sambo_Shallow_2016, grouper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2018 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2018.xls")

Eastern_Sambo_Shallow_2018_snapper <- merge(Eastern_Sambo_Shallow_2018, snapper, by = c("SPECIES_CD"))


Eastern_Sambo_Shallow_2018_grouper <- merge(Eastern_Sambo_Shallow_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Eastern_Sambo_Shallow_snapper_1 <- rbind(Eastern_Sambo_Shallow_1999_snapper,Eastern_Sambo_Shallow_2000_snapper)
Eastern_Sambo_Shallow_snapper_2 <- rbind(Eastern_Sambo_Shallow_snapper_1,Eastern_Sambo_Shallow_2001_snapper)
Eastern_Sambo_Shallow_snapper_3 <- rbind(Eastern_Sambo_Shallow_snapper_2,Eastern_Sambo_Shallow_2002_snapper)
Eastern_Sambo_Shallow_snapper_4 <- rbind(Eastern_Sambo_Shallow_snapper_3,Eastern_Sambo_Shallow_2003_snapper)
Eastern_Sambo_Shallow_snapper_5 <- rbind(Eastern_Sambo_Shallow_snapper_4,Eastern_Sambo_Shallow_2004_snapper)
Eastern_Sambo_Shallow_snapper_6 <- rbind(Eastern_Sambo_Shallow_snapper_5,Eastern_Sambo_Shallow_2005_snapper)
Eastern_Sambo_Shallow_snapper_7 <- rbind(Eastern_Sambo_Shallow_snapper_6,Eastern_Sambo_Shallow_2006_snapper)
Eastern_Sambo_Shallow_snapper_8 <- rbind(Eastern_Sambo_Shallow_snapper_7,Eastern_Sambo_Shallow_2007_snapper)
Eastern_Sambo_Shallow_snapper_9 <- rbind(Eastern_Sambo_Shallow_snapper_8,Eastern_Sambo_Shallow_2008_snapper)
Eastern_Sambo_Shallow_snapper_10 <- rbind(Eastern_Sambo_Shallow_snapper_9,Eastern_Sambo_Shallow_2009_snapper)
Eastern_Sambo_Shallow_snapper_11<- rbind(Eastern_Sambo_Shallow_snapper_10,Eastern_Sambo_Shallow_2010_snapper)
Eastern_Sambo_Shallow_snapper_12 <- rbind(Eastern_Sambo_Shallow_snapper_11,Eastern_Sambo_Shallow_2011_snapper)
Eastern_Sambo_Shallow_snapper_13 <- rbind(Eastern_Sambo_Shallow_snapper_12,Eastern_Sambo_Shallow_2012_snapper)
Eastern_Sambo_Shallow_snapper_14 <- rbind(Eastern_Sambo_Shallow_snapper_13,Eastern_Sambo_Shallow_2014_snapper)
Eastern_Sambo_Shallow_snapper_15 <- rbind(Eastern_Sambo_Shallow_snapper_14,Eastern_Sambo_Shallow_2016_snapper)
Eastern_Sambo_Shallow_snapper <- rbind(Eastern_Sambo_Shallow_snapper_15,Eastern_Sambo_Shallow_2018_snapper)

Eastern_Sambo_Shallow_snapper$sitename <- "Eastern Sambo Shallow"


Eastern_Sambo_Shallow_grouper_1 <- rbind(Eastern_Sambo_Shallow_1999_grouper,Eastern_Sambo_Shallow_2000_grouper)
Eastern_Sambo_Shallow_grouper_2 <- rbind(Eastern_Sambo_Shallow_grouper_1,Eastern_Sambo_Shallow_2001_grouper)
Eastern_Sambo_Shallow_grouper_3 <- rbind(Eastern_Sambo_Shallow_grouper_2,Eastern_Sambo_Shallow_2002_grouper)
Eastern_Sambo_Shallow_grouper_4 <- rbind(Eastern_Sambo_Shallow_grouper_3,Eastern_Sambo_Shallow_2003_grouper)
Eastern_Sambo_Shallow_grouper_5 <- rbind(Eastern_Sambo_Shallow_grouper_4,Eastern_Sambo_Shallow_2004_grouper)
Eastern_Sambo_Shallow_grouper_6 <- rbind(Eastern_Sambo_Shallow_grouper_5,Eastern_Sambo_Shallow_2005_grouper)
Eastern_Sambo_Shallow_grouper_7 <- rbind(Eastern_Sambo_Shallow_grouper_6,Eastern_Sambo_Shallow_2006_grouper)
Eastern_Sambo_Shallow_grouper_8 <- rbind(Eastern_Sambo_Shallow_grouper_7,Eastern_Sambo_Shallow_2007_grouper)
Eastern_Sambo_Shallow_grouper_9 <- rbind(Eastern_Sambo_Shallow_grouper_8,Eastern_Sambo_Shallow_2008_grouper)
Eastern_Sambo_Shallow_grouper_10 <- rbind(Eastern_Sambo_Shallow_grouper_9,Eastern_Sambo_Shallow_2009_grouper)
Eastern_Sambo_Shallow_grouper_11<- rbind(Eastern_Sambo_Shallow_grouper_10,Eastern_Sambo_Shallow_2010_grouper)
Eastern_Sambo_Shallow_grouper_12 <- rbind(Eastern_Sambo_Shallow_grouper_11,Eastern_Sambo_Shallow_2011_grouper)
Eastern_Sambo_Shallow_grouper_13 <- rbind(Eastern_Sambo_Shallow_grouper_12,Eastern_Sambo_Shallow_2012_grouper)
Eastern_Sambo_Shallow_grouper_14 <- rbind(Eastern_Sambo_Shallow_grouper_13,Eastern_Sambo_Shallow_2014_grouper)
Eastern_Sambo_Shallow_grouper_15 <- rbind(Eastern_Sambo_Shallow_grouper_14,Eastern_Sambo_Shallow_2016_grouper)
Eastern_Sambo_Shallow_grouper <- rbind(Eastern_Sambo_Shallow_grouper_15,Eastern_Sambo_Shallow_2018_grouper)

Eastern_Sambo_Shallow_grouper$sitename <- "Eastern Sambo Shallow"

Eastern_Sambo_Shallow_all <- rbind(Eastern_Sambo_Shallow_snapper,Eastern_Sambo_Shallow_grouper)

#export(Eastern_Sambo_Shallow_all, "Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_snapper_grouper_type.csv")



# Jaap Reef

Jaap_Reef_1999 <- import("Jaap_Reef/data/Jaap_Reef_1999.xls")


Jaap_Reef_1999_snapper <- merge(Jaap_Reef_1999, snapper, by = c("SPECIES_CD"))


Jaap_Reef_1999_grouper <- merge(Jaap_Reef_1999, grouper, by = c("SPECIES_CD"))


Jaap_Reef_2000 <- import("Jaap_Reef/data/Jaap_Reef_2000.xls")

Jaap_Reef_2000_snapper <- merge(Jaap_Reef_2000, snapper, by = c("SPECIES_CD"))


Jaap_Reef_2000_grouper <- merge(Jaap_Reef_2000, grouper, by = c("SPECIES_CD"))

Jaap_Reef_2001 <- import("Jaap_Reef/data/Jaap_Reef_2001.xls")

Jaap_Reef_2001_snapper <- merge(Jaap_Reef_2001, snapper, by = c("SPECIES_CD"))


Jaap_Reef_2001_grouper <- merge(Jaap_Reef_2001, grouper, by = c("SPECIES_CD"))


Jaap_Reef_2002 <- import("Jaap_Reef/data/Jaap_Reef_2002.xls")

Jaap_Reef_2002_snapper <- merge(Jaap_Reef_2002, snapper, by = c("SPECIES_CD"))


Jaap_Reef_2002_grouper <- merge(Jaap_Reef_2002, grouper, by = c("SPECIES_CD"))


Jaap_Reef_2003 <- import("Jaap_Reef/data/Jaap_Reef_2003.xls")

Jaap_Reef_2003_snapper <- merge(Jaap_Reef_2003, snapper, by = c("SPECIES_CD"))


Jaap_Reef_2003_grouper <- merge(Jaap_Reef_2003, grouper, by = c("SPECIES_CD"))


Jaap_Reef_2004 <- import("Jaap_Reef/data/Jaap_Reef_2004.xls")

Jaap_Reef_2004_snapper <- merge(Jaap_Reef_2004, snapper, by = c("SPECIES_CD"))


Jaap_Reef_2004_grouper <- merge(Jaap_Reef_2004, grouper, by = c("SPECIES_CD"))

Jaap_Reef_2005 <- import("Jaap_Reef/data/Jaap_Reef_2005.xls")

Jaap_Reef_2005_snapper <- merge(Jaap_Reef_2005, snapper, by = c("SPECIES_CD"))


Jaap_Reef_2005_grouper <- merge(Jaap_Reef_2005, grouper, by = c("SPECIES_CD"))


Jaap_Reef_2006 <- import("Jaap_Reef/data/Jaap_Reef_2006.xls")

Jaap_Reef_2006_snapper <- merge(Jaap_Reef_2006, snapper, by = c("SPECIES_CD"))


Jaap_Reef_2006_grouper <- merge(Jaap_Reef_2006, grouper, by = c("SPECIES_CD"))

Jaap_Reef_2007 <- import("Jaap_Reef/data/Jaap_Reef_2007.xls")

Jaap_Reef_2007_snapper <- merge(Jaap_Reef_2007, snapper, by = c("SPECIES_CD"))


Jaap_Reef_2007_grouper <- merge(Jaap_Reef_2007, grouper, by = c("SPECIES_CD"))


Jaap_Reef_2008 <- import("Jaap_Reef/data/Jaap_Reef_2008.xls")

Jaap_Reef_2008_snapper <- merge(Jaap_Reef_2008, snapper, by = c("SPECIES_CD"))


Jaap_Reef_2008_grouper <- merge(Jaap_Reef_2008, grouper, by = c("SPECIES_CD"))


Jaap_Reef_2009 <- import("Jaap_Reef/data/Jaap_Reef_2009.xls")

Jaap_Reef_2009_snapper <- merge(Jaap_Reef_2009, snapper, by = c("SPECIES_CD"))


Jaap_Reef_2009_grouper <- merge(Jaap_Reef_2009, grouper, by = c("SPECIES_CD"))


Jaap_Reef_2010 <- import("Jaap_Reef/data/Jaap_Reef_2010.xls")

Jaap_Reef_2010_snapper <- merge(Jaap_Reef_2010, snapper, by = c("SPECIES_CD"))


Jaap_Reef_2010_grouper <- merge(Jaap_Reef_2010, grouper, by = c("SPECIES_CD"))

Jaap_Reef_2011 <- import("Jaap_Reef/data/Jaap_Reef_2011.xls")

Jaap_Reef_2011_snapper <- merge(Jaap_Reef_2011, snapper, by = c("SPECIES_CD"))


Jaap_Reef_2011_grouper <- merge(Jaap_Reef_2011, grouper, by = c("SPECIES_CD"))



Jaap_Reef_2012 <- import("Jaap_Reef/data/Jaap_Reef_2012.xls")

Jaap_Reef_2012_snapper <- merge(Jaap_Reef_2012, snapper, by = c("SPECIES_CD"))


Jaap_Reef_2012_grouper <- merge(Jaap_Reef_2012, grouper, by = c("SPECIES_CD"))


Jaap_Reef_2014 <- import("Jaap_Reef/data/Jaap_Reef_2014.xls")

Jaap_Reef_2014_snapper <- merge(Jaap_Reef_2014, snapper, by = c("SPECIES_CD"))


Jaap_Reef_2014_grouper <- merge(Jaap_Reef_2014, grouper, by = c("SPECIES_CD"))


Jaap_Reef_2016 <- import("Jaap_Reef/data/Jaap_Reef_2016.xls")

Jaap_Reef_2016_snapper <- merge(Jaap_Reef_2016, snapper, by = c("SPECIES_CD"))


Jaap_Reef_2016_grouper <- merge(Jaap_Reef_2016, grouper, by = c("SPECIES_CD"))


Jaap_Reef_2018 <- import("Jaap_Reef/data/Jaap_Reef_2018.xls")

Jaap_Reef_2018_snapper <- merge(Jaap_Reef_2018, snapper, by = c("SPECIES_CD"))


Jaap_Reef_2018_grouper <- merge(Jaap_Reef_2018, grouper, by = c("SPECIES_CD"))




### Combine all years together for snapper_ and grouper_ seperately



Jaap_Reef_snapper_1 <- rbind(Jaap_Reef_1999_snapper,Jaap_Reef_2000_snapper)
Jaap_Reef_snapper_2 <- rbind(Jaap_Reef_snapper_1,Jaap_Reef_2001_snapper)
Jaap_Reef_snapper_3 <- rbind(Jaap_Reef_snapper_2,Jaap_Reef_2002_snapper)
Jaap_Reef_snapper_4 <- rbind(Jaap_Reef_snapper_3,Jaap_Reef_2003_snapper)
Jaap_Reef_snapper_5 <- rbind(Jaap_Reef_snapper_4,Jaap_Reef_2004_snapper)
Jaap_Reef_snapper_6 <- rbind(Jaap_Reef_snapper_5,Jaap_Reef_2005_snapper)
Jaap_Reef_snapper_7 <- rbind(Jaap_Reef_snapper_6,Jaap_Reef_2006_snapper)
Jaap_Reef_snapper_8 <- rbind(Jaap_Reef_snapper_7,Jaap_Reef_2007_snapper)
Jaap_Reef_snapper_9 <- rbind(Jaap_Reef_snapper_8,Jaap_Reef_2008_snapper)
Jaap_Reef_snapper_10 <- rbind(Jaap_Reef_snapper_9,Jaap_Reef_2009_snapper)
Jaap_Reef_snapper_11<- rbind(Jaap_Reef_snapper_10,Jaap_Reef_2010_snapper)
Jaap_Reef_snapper_12 <- rbind(Jaap_Reef_snapper_11,Jaap_Reef_2011_snapper)
Jaap_Reef_snapper_13 <- rbind(Jaap_Reef_snapper_12,Jaap_Reef_2012_snapper)
Jaap_Reef_snapper_14 <- rbind(Jaap_Reef_snapper_13,Jaap_Reef_2014_snapper)
Jaap_Reef_snapper_15 <- rbind(Jaap_Reef_snapper_14,Jaap_Reef_2016_snapper)
Jaap_Reef_snapper <- rbind(Jaap_Reef_snapper_15,Jaap_Reef_2018_snapper)

Jaap_Reef_snapper$sitename <- "Jaap Reef"


Jaap_Reef_grouper_1 <- rbind(Jaap_Reef_1999_grouper,Jaap_Reef_2000_grouper)
Jaap_Reef_grouper_2 <- rbind(Jaap_Reef_grouper_1,Jaap_Reef_2001_grouper)
Jaap_Reef_grouper_3 <- rbind(Jaap_Reef_grouper_2,Jaap_Reef_2002_grouper)
Jaap_Reef_grouper_4 <- rbind(Jaap_Reef_grouper_3,Jaap_Reef_2003_grouper)
Jaap_Reef_grouper_5 <- rbind(Jaap_Reef_grouper_4,Jaap_Reef_2004_grouper)
Jaap_Reef_grouper_6 <- rbind(Jaap_Reef_grouper_5,Jaap_Reef_2005_grouper)
Jaap_Reef_grouper_7 <- rbind(Jaap_Reef_grouper_6,Jaap_Reef_2006_grouper)
Jaap_Reef_grouper_8 <- rbind(Jaap_Reef_grouper_7,Jaap_Reef_2007_grouper)
Jaap_Reef_grouper_9 <- rbind(Jaap_Reef_grouper_8,Jaap_Reef_2008_grouper)
Jaap_Reef_grouper_10 <- rbind(Jaap_Reef_grouper_9,Jaap_Reef_2009_grouper)
Jaap_Reef_grouper_11<- rbind(Jaap_Reef_grouper_10,Jaap_Reef_2010_grouper)
Jaap_Reef_grouper_12 <- rbind(Jaap_Reef_grouper_11,Jaap_Reef_2011_grouper)
Jaap_Reef_grouper_13 <- rbind(Jaap_Reef_grouper_12,Jaap_Reef_2012_grouper)
Jaap_Reef_grouper_14 <- rbind(Jaap_Reef_grouper_13,Jaap_Reef_2014_grouper)
Jaap_Reef_grouper_15 <- rbind(Jaap_Reef_grouper_14,Jaap_Reef_2016_grouper)
Jaap_Reef_grouper <- rbind(Jaap_Reef_grouper_15,Jaap_Reef_2018_grouper)

Jaap_Reef_grouper$sitename <- "Jaap Reef"

Jaap_Reef_all <- rbind(Jaap_Reef_snapper,Jaap_Reef_grouper)


#export(Jaap_Reef_all, "Jaap_Reef/data/Jaap_Reef_snapper_grouper_type.csv")




#Looe Key Deep

Looe_Key_Deep_1999 <- import("Looe_Key_Deep/data/Looe_Key_Deep_1999.xls")


Looe_Key_Deep_1999_snapper <- merge(Looe_Key_Deep_1999, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_1999_grouper <- merge(Looe_Key_Deep_1999, grouper, by = c("SPECIES_CD"))


Looe_Key_Deep_2000 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2000.xls")

Looe_Key_Deep_2000_snapper <- merge(Looe_Key_Deep_2000, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_2000_grouper <- merge(Looe_Key_Deep_2000, grouper, by = c("SPECIES_CD"))

Looe_Key_Deep_2001 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2001.xls")

Looe_Key_Deep_2001_snapper <- merge(Looe_Key_Deep_2001, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_2001_grouper <- merge(Looe_Key_Deep_2001, grouper, by = c("SPECIES_CD"))


Looe_Key_Deep_2002 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2002.xls")

Looe_Key_Deep_2002_snapper <- merge(Looe_Key_Deep_2002, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_2002_grouper <- merge(Looe_Key_Deep_2002, grouper, by = c("SPECIES_CD"))


Looe_Key_Deep_2003 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2003.xls")

Looe_Key_Deep_2003_snapper <- merge(Looe_Key_Deep_2003, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_2003_grouper <- merge(Looe_Key_Deep_2003, grouper, by = c("SPECIES_CD"))


Looe_Key_Deep_2004 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2004.xls")

Looe_Key_Deep_2004_snapper <- merge(Looe_Key_Deep_2004, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_2004_grouper <- merge(Looe_Key_Deep_2004, grouper, by = c("SPECIES_CD"))

Looe_Key_Deep_2005 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2005.xls")

Looe_Key_Deep_2005_snapper <- merge(Looe_Key_Deep_2005, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_2005_grouper <- merge(Looe_Key_Deep_2005, grouper, by = c("SPECIES_CD"))


Looe_Key_Deep_2006 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2006.xls")

Looe_Key_Deep_2006_snapper <- merge(Looe_Key_Deep_2006, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_2006_grouper <- merge(Looe_Key_Deep_2006, grouper, by = c("SPECIES_CD"))

Looe_Key_Deep_2007 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2007.xls")

Looe_Key_Deep_2007_snapper <- merge(Looe_Key_Deep_2007, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_2007_grouper <- merge(Looe_Key_Deep_2007, grouper, by = c("SPECIES_CD"))


Looe_Key_Deep_2008 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2008.xls")

Looe_Key_Deep_2008_snapper <- merge(Looe_Key_Deep_2008, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_2008_grouper <- merge(Looe_Key_Deep_2008, grouper, by = c("SPECIES_CD"))


Looe_Key_Deep_2009 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2009.xls")

Looe_Key_Deep_2009_snapper <- merge(Looe_Key_Deep_2009, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_2009_grouper <- merge(Looe_Key_Deep_2009, grouper, by = c("SPECIES_CD"))


Looe_Key_Deep_2010 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2010.xls")

Looe_Key_Deep_2010_snapper <- merge(Looe_Key_Deep_2010, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_2010_grouper <- merge(Looe_Key_Deep_2010, grouper, by = c("SPECIES_CD"))

Looe_Key_Deep_2011 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2011.xls")

Looe_Key_Deep_2011_snapper <- merge(Looe_Key_Deep_2011, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_2011_grouper <- merge(Looe_Key_Deep_2011, grouper, by = c("SPECIES_CD"))



Looe_Key_Deep_2012 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2012.xls")

Looe_Key_Deep_2012_snapper <- merge(Looe_Key_Deep_2012, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_2012_grouper <- merge(Looe_Key_Deep_2012, grouper, by = c("SPECIES_CD"))


Looe_Key_Deep_2014 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2014.xls")

Looe_Key_Deep_2014_snapper <- merge(Looe_Key_Deep_2014, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_2014_grouper <- merge(Looe_Key_Deep_2014, grouper, by = c("SPECIES_CD"))


Looe_Key_Deep_2016 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2016.xls")

Looe_Key_Deep_2016_snapper <- merge(Looe_Key_Deep_2016, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_2016_grouper <- merge(Looe_Key_Deep_2016, grouper, by = c("SPECIES_CD"))


Looe_Key_Deep_2018 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2018.xls")

Looe_Key_Deep_2018_snapper <- merge(Looe_Key_Deep_2018, snapper, by = c("SPECIES_CD"))


Looe_Key_Deep_2018_grouper <- merge(Looe_Key_Deep_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Looe_Key_Deep_snapper_1 <- rbind(Looe_Key_Deep_1999_snapper,Looe_Key_Deep_2000_snapper)
Looe_Key_Deep_snapper_2 <- rbind(Looe_Key_Deep_snapper_1,Looe_Key_Deep_2001_snapper)
Looe_Key_Deep_snapper_3 <- rbind(Looe_Key_Deep_snapper_2,Looe_Key_Deep_2002_snapper)
Looe_Key_Deep_snapper_4 <- rbind(Looe_Key_Deep_snapper_3,Looe_Key_Deep_2003_snapper)
Looe_Key_Deep_snapper_5 <- rbind(Looe_Key_Deep_snapper_4,Looe_Key_Deep_2004_snapper)
Looe_Key_Deep_snapper_6 <- rbind(Looe_Key_Deep_snapper_5,Looe_Key_Deep_2005_snapper)
Looe_Key_Deep_snapper_7 <- rbind(Looe_Key_Deep_snapper_6,Looe_Key_Deep_2006_snapper)
Looe_Key_Deep_snapper_8 <- rbind(Looe_Key_Deep_snapper_7,Looe_Key_Deep_2007_snapper)
Looe_Key_Deep_snapper_9 <- rbind(Looe_Key_Deep_snapper_8,Looe_Key_Deep_2008_snapper)
Looe_Key_Deep_snapper_10 <- rbind(Looe_Key_Deep_snapper_9,Looe_Key_Deep_2009_snapper)
Looe_Key_Deep_snapper_11<- rbind(Looe_Key_Deep_snapper_10,Looe_Key_Deep_2010_snapper)
Looe_Key_Deep_snapper_12 <- rbind(Looe_Key_Deep_snapper_11,Looe_Key_Deep_2011_snapper)
Looe_Key_Deep_snapper_13 <- rbind(Looe_Key_Deep_snapper_12,Looe_Key_Deep_2012_snapper)
Looe_Key_Deep_snapper_14 <- rbind(Looe_Key_Deep_snapper_13,Looe_Key_Deep_2014_snapper)
Looe_Key_Deep_snapper_15 <- rbind(Looe_Key_Deep_snapper_14,Looe_Key_Deep_2016_snapper)
Looe_Key_Deep_snapper <- rbind(Looe_Key_Deep_snapper_15,Looe_Key_Deep_2018_snapper)

Looe_Key_Deep_snapper$sitename <- "Looe Key Deep"

Looe_Key_Deep_grouper_1 <- rbind(Looe_Key_Deep_1999_grouper,Looe_Key_Deep_2000_grouper)
Looe_Key_Deep_grouper_2 <- rbind(Looe_Key_Deep_grouper_1,Looe_Key_Deep_2001_grouper)
Looe_Key_Deep_grouper_3 <- rbind(Looe_Key_Deep_grouper_2,Looe_Key_Deep_2002_grouper)
Looe_Key_Deep_grouper_4 <- rbind(Looe_Key_Deep_grouper_3,Looe_Key_Deep_2003_grouper)
Looe_Key_Deep_grouper_5 <- rbind(Looe_Key_Deep_grouper_4,Looe_Key_Deep_2004_grouper)
Looe_Key_Deep_grouper_6 <- rbind(Looe_Key_Deep_grouper_5,Looe_Key_Deep_2005_grouper)
Looe_Key_Deep_grouper_7 <- rbind(Looe_Key_Deep_grouper_6,Looe_Key_Deep_2006_grouper)
Looe_Key_Deep_grouper_8 <- rbind(Looe_Key_Deep_grouper_7,Looe_Key_Deep_2007_grouper)
Looe_Key_Deep_grouper_9 <- rbind(Looe_Key_Deep_grouper_8,Looe_Key_Deep_2008_grouper)
Looe_Key_Deep_grouper_10 <- rbind(Looe_Key_Deep_grouper_9,Looe_Key_Deep_2009_grouper)
Looe_Key_Deep_grouper_11<- rbind(Looe_Key_Deep_grouper_10,Looe_Key_Deep_2010_grouper)
Looe_Key_Deep_grouper_12 <- rbind(Looe_Key_Deep_grouper_11,Looe_Key_Deep_2011_grouper)
Looe_Key_Deep_grouper_13 <- rbind(Looe_Key_Deep_grouper_12,Looe_Key_Deep_2012_grouper)
Looe_Key_Deep_grouper_14 <- rbind(Looe_Key_Deep_grouper_13,Looe_Key_Deep_2014_grouper)
Looe_Key_Deep_grouper_15 <- rbind(Looe_Key_Deep_grouper_14,Looe_Key_Deep_2016_grouper)
Looe_Key_Deep_grouper <- rbind(Looe_Key_Deep_grouper_15,Looe_Key_Deep_2018_grouper)


Looe_Key_Deep_grouper$sitename <- "Looe Key Deep"

Looe_Key_Deep_all <- rbind(Looe_Key_Deep_snapper,Looe_Key_Deep_grouper)

#export(Looe_Key_Deep_all, "Looe_Key_Deep/data/Looe_Key_Deep_snapper_grouper_type.csv")



#Looe Key Shallow

Looe_Key_Shallow_1999 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_1999.xls")


Looe_Key_Shallow_1999_snapper <- merge(Looe_Key_Shallow_1999, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_1999_grouper <- merge(Looe_Key_Shallow_1999, grouper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2000 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2000.xls")

Looe_Key_Shallow_2000_snapper <- merge(Looe_Key_Shallow_2000, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2000_grouper <- merge(Looe_Key_Shallow_2000, grouper, by = c("SPECIES_CD"))

Looe_Key_Shallow_2001 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2001.xls")

Looe_Key_Shallow_2001_snapper <- merge(Looe_Key_Shallow_2001, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2001_grouper <- merge(Looe_Key_Shallow_2001, grouper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2002 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2002.xls")

Looe_Key_Shallow_2002_snapper <- merge(Looe_Key_Shallow_2002, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2002_grouper <- merge(Looe_Key_Shallow_2002, grouper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2003 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2003.xls")

Looe_Key_Shallow_2003_snapper <- merge(Looe_Key_Shallow_2003, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2003_grouper <- merge(Looe_Key_Shallow_2003, grouper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2004 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2004.xls")

Looe_Key_Shallow_2004_snapper <- merge(Looe_Key_Shallow_2004, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2004_grouper <- merge(Looe_Key_Shallow_2004, grouper, by = c("SPECIES_CD"))

Looe_Key_Shallow_2005 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2005.xls")

Looe_Key_Shallow_2005_snapper <- merge(Looe_Key_Shallow_2005, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2005_grouper <- merge(Looe_Key_Shallow_2005, grouper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2006 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2006.xls")

Looe_Key_Shallow_2006_snapper <- merge(Looe_Key_Shallow_2006, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2006_grouper <- merge(Looe_Key_Shallow_2006, grouper, by = c("SPECIES_CD"))

Looe_Key_Shallow_2007 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2007.xls")

Looe_Key_Shallow_2007_snapper <- merge(Looe_Key_Shallow_2007, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2007_grouper <- merge(Looe_Key_Shallow_2007, grouper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2008 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2008.xls")

Looe_Key_Shallow_2008_snapper <- merge(Looe_Key_Shallow_2008, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2008_grouper <- merge(Looe_Key_Shallow_2008, grouper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2009 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2009.xls")

Looe_Key_Shallow_2009_snapper <- merge(Looe_Key_Shallow_2009, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2009_grouper <- merge(Looe_Key_Shallow_2009, grouper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2010 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2010.xls")

Looe_Key_Shallow_2010_snapper <- merge(Looe_Key_Shallow_2010, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2010_grouper <- merge(Looe_Key_Shallow_2010, grouper, by = c("SPECIES_CD"))

Looe_Key_Shallow_2011 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2011.xls")

Looe_Key_Shallow_2011_snapper <- merge(Looe_Key_Shallow_2011, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2011_grouper <- merge(Looe_Key_Shallow_2011, grouper, by = c("SPECIES_CD"))



Looe_Key_Shallow_2012 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2012.xls")

Looe_Key_Shallow_2012_snapper <- merge(Looe_Key_Shallow_2012, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2012_grouper <- merge(Looe_Key_Shallow_2012, grouper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2014 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2014.xls")

Looe_Key_Shallow_2014_snapper <- merge(Looe_Key_Shallow_2014, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2014_grouper <- merge(Looe_Key_Shallow_2014, grouper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2016 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2016.xls")

Looe_Key_Shallow_2016_snapper <- merge(Looe_Key_Shallow_2016, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2016_grouper <- merge(Looe_Key_Shallow_2016, grouper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2018 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2018.xls")

Looe_Key_Shallow_2018_snapper <- merge(Looe_Key_Shallow_2018, snapper, by = c("SPECIES_CD"))


Looe_Key_Shallow_2018_grouper <- merge(Looe_Key_Shallow_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Looe_Key_Shallow_snapper_1 <- rbind(Looe_Key_Shallow_1999_snapper,Looe_Key_Shallow_2000_snapper)
Looe_Key_Shallow_snapper_2 <- rbind(Looe_Key_Shallow_snapper_1,Looe_Key_Shallow_2001_snapper)
Looe_Key_Shallow_snapper_3 <- rbind(Looe_Key_Shallow_snapper_2,Looe_Key_Shallow_2002_snapper)
Looe_Key_Shallow_snapper_4 <- rbind(Looe_Key_Shallow_snapper_3,Looe_Key_Shallow_2003_snapper)
Looe_Key_Shallow_snapper_5 <- rbind(Looe_Key_Shallow_snapper_4,Looe_Key_Shallow_2004_snapper)
Looe_Key_Shallow_snapper_6 <- rbind(Looe_Key_Shallow_snapper_5,Looe_Key_Shallow_2005_snapper)
Looe_Key_Shallow_snapper_7 <- rbind(Looe_Key_Shallow_snapper_6,Looe_Key_Shallow_2006_snapper)
Looe_Key_Shallow_snapper_8 <- rbind(Looe_Key_Shallow_snapper_7,Looe_Key_Shallow_2007_snapper)
Looe_Key_Shallow_snapper_9 <- rbind(Looe_Key_Shallow_snapper_8,Looe_Key_Shallow_2008_snapper)
Looe_Key_Shallow_snapper_10 <- rbind(Looe_Key_Shallow_snapper_9,Looe_Key_Shallow_2009_snapper)
Looe_Key_Shallow_snapper_11<- rbind(Looe_Key_Shallow_snapper_10,Looe_Key_Shallow_2010_snapper)
Looe_Key_Shallow_snapper_12 <- rbind(Looe_Key_Shallow_snapper_11,Looe_Key_Shallow_2011_snapper)
Looe_Key_Shallow_snapper_13 <- rbind(Looe_Key_Shallow_snapper_12,Looe_Key_Shallow_2012_snapper)
Looe_Key_Shallow_snapper_14 <- rbind(Looe_Key_Shallow_snapper_13,Looe_Key_Shallow_2014_snapper)
Looe_Key_Shallow_snapper_15 <- rbind(Looe_Key_Shallow_snapper_14,Looe_Key_Shallow_2016_snapper)
Looe_Key_Shallow_snapper <- rbind(Looe_Key_Shallow_snapper_15,Looe_Key_Shallow_2018_snapper)



Looe_Key_Shallow_grouper_1 <- rbind(Looe_Key_Shallow_1999_grouper,Looe_Key_Shallow_2000_grouper)
Looe_Key_Shallow_grouper_2 <- rbind(Looe_Key_Shallow_grouper_1,Looe_Key_Shallow_2001_grouper)
Looe_Key_Shallow_grouper_3 <- rbind(Looe_Key_Shallow_grouper_2,Looe_Key_Shallow_2002_grouper)
Looe_Key_Shallow_grouper_4 <- rbind(Looe_Key_Shallow_grouper_3,Looe_Key_Shallow_2003_grouper)
Looe_Key_Shallow_grouper_5 <- rbind(Looe_Key_Shallow_grouper_4,Looe_Key_Shallow_2004_grouper)
Looe_Key_Shallow_grouper_6 <- rbind(Looe_Key_Shallow_grouper_5,Looe_Key_Shallow_2005_grouper)
Looe_Key_Shallow_grouper_7 <- rbind(Looe_Key_Shallow_grouper_6,Looe_Key_Shallow_2006_grouper)
Looe_Key_Shallow_grouper_8 <- rbind(Looe_Key_Shallow_grouper_7,Looe_Key_Shallow_2007_grouper)
Looe_Key_Shallow_grouper_9 <- rbind(Looe_Key_Shallow_grouper_8,Looe_Key_Shallow_2008_grouper)
Looe_Key_Shallow_grouper_10 <- rbind(Looe_Key_Shallow_grouper_9,Looe_Key_Shallow_2009_grouper)
Looe_Key_Shallow_grouper_11<- rbind(Looe_Key_Shallow_grouper_10,Looe_Key_Shallow_2010_grouper)
Looe_Key_Shallow_grouper_12 <- rbind(Looe_Key_Shallow_grouper_11,Looe_Key_Shallow_2011_grouper)
Looe_Key_Shallow_grouper_13 <- rbind(Looe_Key_Shallow_grouper_12,Looe_Key_Shallow_2012_grouper)
Looe_Key_Shallow_grouper_14 <- rbind(Looe_Key_Shallow_grouper_13,Looe_Key_Shallow_2014_grouper)
Looe_Key_Shallow_grouper_15 <- rbind(Looe_Key_Shallow_grouper_14,Looe_Key_Shallow_2016_grouper)
Looe_Key_Shallow_grouper <- rbind(Looe_Key_Shallow_grouper_15,Looe_Key_Shallow_2018_grouper)

Looe_Key_Shallow_all <- rbind(Looe_Key_Shallow_snapper,Looe_Key_Shallow_grouper)
Looe_Key_Shallow_all$sitename <- "Looe Key Shallow"

#export(Looe_Key_Shallow_all, "Looe_Key_Shallow/data/Looe_Key_Shallow_snapper_grouper_type.csv")



#Red Dun Reef

Red_Dun_Reef_1999 <- import("Red_Dun_Reef/data/Red_Dun_Reef_1999.xls")


Red_Dun_Reef_1999_snapper <- merge(Red_Dun_Reef_1999, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_1999_grouper <- merge(Red_Dun_Reef_1999, grouper, by = c("SPECIES_CD"))


Red_Dun_Reef_2000 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2000.xls")

Red_Dun_Reef_2000_snapper <- merge(Red_Dun_Reef_2000, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_2000_grouper <- merge(Red_Dun_Reef_2000, grouper, by = c("SPECIES_CD"))

Red_Dun_Reef_2001 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2001.xls")

Red_Dun_Reef_2001_snapper <- merge(Red_Dun_Reef_2001, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_2001_grouper <- merge(Red_Dun_Reef_2001, grouper, by = c("SPECIES_CD"))


Red_Dun_Reef_2002 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2002.xls")

Red_Dun_Reef_2002_snapper <- merge(Red_Dun_Reef_2002, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_2002_grouper <- merge(Red_Dun_Reef_2002, grouper, by = c("SPECIES_CD"))


Red_Dun_Reef_2003 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2003.xls")

Red_Dun_Reef_2003_snapper <- merge(Red_Dun_Reef_2003, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_2003_grouper <- merge(Red_Dun_Reef_2003, grouper, by = c("SPECIES_CD"))


Red_Dun_Reef_2004 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2004.xls")

Red_Dun_Reef_2004_snapper <- merge(Red_Dun_Reef_2004, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_2004_grouper <- merge(Red_Dun_Reef_2004, grouper, by = c("SPECIES_CD"))

Red_Dun_Reef_2005 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2005.xls")

Red_Dun_Reef_2005_snapper <- merge(Red_Dun_Reef_2005, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_2005_grouper <- merge(Red_Dun_Reef_2005, grouper, by = c("SPECIES_CD"))


Red_Dun_Reef_2006 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2006.xls")

Red_Dun_Reef_2006_snapper <- merge(Red_Dun_Reef_2006, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_2006_grouper <- merge(Red_Dun_Reef_2006, grouper, by = c("SPECIES_CD"))

Red_Dun_Reef_2007 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2007.xls")

Red_Dun_Reef_2007_snapper <- merge(Red_Dun_Reef_2007, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_2007_grouper <- merge(Red_Dun_Reef_2007, grouper, by = c("SPECIES_CD"))


Red_Dun_Reef_2008 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2008.xls")

Red_Dun_Reef_2008_snapper <- merge(Red_Dun_Reef_2008, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_2008_grouper <- merge(Red_Dun_Reef_2008, grouper, by = c("SPECIES_CD"))


Red_Dun_Reef_2009 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2009.xls")

Red_Dun_Reef_2009_snapper <- merge(Red_Dun_Reef_2009, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_2009_grouper <- merge(Red_Dun_Reef_2009, grouper, by = c("SPECIES_CD"))


Red_Dun_Reef_2010 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2010.xls")

Red_Dun_Reef_2010_snapper <- merge(Red_Dun_Reef_2010, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_2010_grouper <- merge(Red_Dun_Reef_2010, grouper, by = c("SPECIES_CD"))

Red_Dun_Reef_2011 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2011.xls")

Red_Dun_Reef_2011_snapper <- merge(Red_Dun_Reef_2011, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_2011_grouper <- merge(Red_Dun_Reef_2011, grouper, by = c("SPECIES_CD"))



Red_Dun_Reef_2012 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2012.xls")

Red_Dun_Reef_2012_snapper <- merge(Red_Dun_Reef_2012, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_2012_grouper <- merge(Red_Dun_Reef_2012, grouper, by = c("SPECIES_CD"))


Red_Dun_Reef_2014 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2014.xls")

Red_Dun_Reef_2014_snapper <- merge(Red_Dun_Reef_2014, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_2014_grouper <- merge(Red_Dun_Reef_2014, grouper, by = c("SPECIES_CD"))


Red_Dun_Reef_2016 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2016.xls")

Red_Dun_Reef_2016_snapper <- merge(Red_Dun_Reef_2016, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_2016_grouper <- merge(Red_Dun_Reef_2016, grouper, by = c("SPECIES_CD"))


Red_Dun_Reef_2018 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2018.xls")

Red_Dun_Reef_2018_snapper <- merge(Red_Dun_Reef_2018, snapper, by = c("SPECIES_CD"))


Red_Dun_Reef_2018_grouper <- merge(Red_Dun_Reef_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Red_Dun_Reef_snapper_1 <- rbind(Red_Dun_Reef_1999_snapper,Red_Dun_Reef_2000_snapper)
Red_Dun_Reef_snapper_2 <- rbind(Red_Dun_Reef_snapper_1,Red_Dun_Reef_2001_snapper)
Red_Dun_Reef_snapper_3 <- rbind(Red_Dun_Reef_snapper_2,Red_Dun_Reef_2002_snapper)
Red_Dun_Reef_snapper_4 <- rbind(Red_Dun_Reef_snapper_3,Red_Dun_Reef_2003_snapper)
Red_Dun_Reef_snapper_5 <- rbind(Red_Dun_Reef_snapper_4,Red_Dun_Reef_2004_snapper)
Red_Dun_Reef_snapper_6 <- rbind(Red_Dun_Reef_snapper_5,Red_Dun_Reef_2005_snapper)
Red_Dun_Reef_snapper_7 <- rbind(Red_Dun_Reef_snapper_6,Red_Dun_Reef_2006_snapper)
Red_Dun_Reef_snapper_8 <- rbind(Red_Dun_Reef_snapper_7,Red_Dun_Reef_2007_snapper)
Red_Dun_Reef_snapper_9 <- rbind(Red_Dun_Reef_snapper_8,Red_Dun_Reef_2008_snapper)
Red_Dun_Reef_snapper_10 <- rbind(Red_Dun_Reef_snapper_9,Red_Dun_Reef_2009_snapper)
Red_Dun_Reef_snapper_11<- rbind(Red_Dun_Reef_snapper_10,Red_Dun_Reef_2010_snapper)
Red_Dun_Reef_snapper_12 <- rbind(Red_Dun_Reef_snapper_11,Red_Dun_Reef_2011_snapper)
Red_Dun_Reef_snapper_13 <- rbind(Red_Dun_Reef_snapper_12,Red_Dun_Reef_2012_snapper)
Red_Dun_Reef_snapper_14 <- rbind(Red_Dun_Reef_snapper_13,Red_Dun_Reef_2014_snapper)
Red_Dun_Reef_snapper_15 <- rbind(Red_Dun_Reef_snapper_14,Red_Dun_Reef_2016_snapper)
Red_Dun_Reef_snapper <- rbind(Red_Dun_Reef_snapper_15,Red_Dun_Reef_2018_snapper)



Red_Dun_Reef_grouper_1 <- rbind(Red_Dun_Reef_1999_grouper,Red_Dun_Reef_2000_grouper)
Red_Dun_Reef_grouper_2 <- rbind(Red_Dun_Reef_grouper_1,Red_Dun_Reef_2001_grouper)
Red_Dun_Reef_grouper_3 <- rbind(Red_Dun_Reef_grouper_2,Red_Dun_Reef_2002_grouper)
Red_Dun_Reef_grouper_4 <- rbind(Red_Dun_Reef_grouper_3,Red_Dun_Reef_2003_grouper)
Red_Dun_Reef_grouper_5 <- rbind(Red_Dun_Reef_grouper_4,Red_Dun_Reef_2004_grouper)
Red_Dun_Reef_grouper_6 <- rbind(Red_Dun_Reef_grouper_5,Red_Dun_Reef_2005_grouper)
Red_Dun_Reef_grouper_7 <- rbind(Red_Dun_Reef_grouper_6,Red_Dun_Reef_2006_grouper)
Red_Dun_Reef_grouper_8 <- rbind(Red_Dun_Reef_grouper_7,Red_Dun_Reef_2007_grouper)
Red_Dun_Reef_grouper_9 <- rbind(Red_Dun_Reef_grouper_8,Red_Dun_Reef_2008_grouper)
Red_Dun_Reef_grouper_10 <- rbind(Red_Dun_Reef_grouper_9,Red_Dun_Reef_2009_grouper)
Red_Dun_Reef_grouper_11<- rbind(Red_Dun_Reef_grouper_10,Red_Dun_Reef_2010_grouper)
Red_Dun_Reef_grouper_12 <- rbind(Red_Dun_Reef_grouper_11,Red_Dun_Reef_2011_grouper)
Red_Dun_Reef_grouper_13 <- rbind(Red_Dun_Reef_grouper_12,Red_Dun_Reef_2012_grouper)
Red_Dun_Reef_grouper_14 <- rbind(Red_Dun_Reef_grouper_13,Red_Dun_Reef_2014_grouper)
Red_Dun_Reef_grouper_15 <- rbind(Red_Dun_Reef_grouper_14,Red_Dun_Reef_2016_grouper)
Red_Dun_Reef_grouper <- rbind(Red_Dun_Reef_grouper_15,Red_Dun_Reef_2018_grouper)


Red_Dun_Reef_all <- rbind(Red_Dun_Reef_snapper,Red_Dun_Reef_grouper)
Red_Dun_Reef_all$sitename <- "Red Dun Reef"

#export(Red_Dun_Reef_all, "Red_Dun_Reef/data/Red_Dun_Reef_snapper_grouper_type.csv")



#Rock Key Deep


Rock_Key_Deep_1999 <- import("Rock_Key_Deep/data/Rock_Key_Deep_1999.xls")


Rock_Key_Deep_1999_snapper <- merge(Rock_Key_Deep_1999, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_1999_grouper <- merge(Rock_Key_Deep_1999, grouper, by = c("SPECIES_CD"))


Rock_Key_Deep_2000 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2000.xls")

Rock_Key_Deep_2000_snapper <- merge(Rock_Key_Deep_2000, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_2000_grouper <- merge(Rock_Key_Deep_2000, grouper, by = c("SPECIES_CD"))

Rock_Key_Deep_2001 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2001.xls")

Rock_Key_Deep_2001_snapper <- merge(Rock_Key_Deep_2001, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_2001_grouper <- merge(Rock_Key_Deep_2001, grouper, by = c("SPECIES_CD"))


Rock_Key_Deep_2002 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2002.xls")

Rock_Key_Deep_2002_snapper <- merge(Rock_Key_Deep_2002, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_2002_grouper <- merge(Rock_Key_Deep_2002, grouper, by = c("SPECIES_CD"))


Rock_Key_Deep_2003 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2003.xls")

Rock_Key_Deep_2003_snapper <- merge(Rock_Key_Deep_2003, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_2003_grouper <- merge(Rock_Key_Deep_2003, grouper, by = c("SPECIES_CD"))


Rock_Key_Deep_2004 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2004.xls")

Rock_Key_Deep_2004_snapper <- merge(Rock_Key_Deep_2004, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_2004_grouper <- merge(Rock_Key_Deep_2004, grouper, by = c("SPECIES_CD"))

Rock_Key_Deep_2005 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2005.xls")

Rock_Key_Deep_2005_snapper <- merge(Rock_Key_Deep_2005, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_2005_grouper <- merge(Rock_Key_Deep_2005, grouper, by = c("SPECIES_CD"))


Rock_Key_Deep_2006 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2006.xls")

Rock_Key_Deep_2006_snapper <- merge(Rock_Key_Deep_2006, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_2006_grouper <- merge(Rock_Key_Deep_2006, grouper, by = c("SPECIES_CD"))

Rock_Key_Deep_2007 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2007.xls")

Rock_Key_Deep_2007_snapper <- merge(Rock_Key_Deep_2007, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_2007_grouper <- merge(Rock_Key_Deep_2007, grouper, by = c("SPECIES_CD"))


Rock_Key_Deep_2008 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2008.xls")

Rock_Key_Deep_2008_snapper <- merge(Rock_Key_Deep_2008, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_2008_grouper <- merge(Rock_Key_Deep_2008, grouper, by = c("SPECIES_CD"))


Rock_Key_Deep_2009 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2009.xls")

Rock_Key_Deep_2009_snapper <- merge(Rock_Key_Deep_2009, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_2009_grouper <- merge(Rock_Key_Deep_2009, grouper, by = c("SPECIES_CD"))


Rock_Key_Deep_2010 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2010.xls")

Rock_Key_Deep_2010_snapper <- merge(Rock_Key_Deep_2010, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_2010_grouper <- merge(Rock_Key_Deep_2010, grouper, by = c("SPECIES_CD"))

Rock_Key_Deep_2011 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2011.xls")

Rock_Key_Deep_2011_snapper <- merge(Rock_Key_Deep_2011, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_2011_grouper <- merge(Rock_Key_Deep_2011, grouper, by = c("SPECIES_CD"))



Rock_Key_Deep_2012 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2012.xls")

Rock_Key_Deep_2012_snapper <- merge(Rock_Key_Deep_2012, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_2012_grouper <- merge(Rock_Key_Deep_2012, grouper, by = c("SPECIES_CD"))


Rock_Key_Deep_2014 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2014.xls")

Rock_Key_Deep_2014_snapper <- merge(Rock_Key_Deep_2014, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_2014_grouper <- merge(Rock_Key_Deep_2014, grouper, by = c("SPECIES_CD"))


Rock_Key_Deep_2016 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2016.xls")

Rock_Key_Deep_2016_snapper <- merge(Rock_Key_Deep_2016, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_2016_grouper <- merge(Rock_Key_Deep_2016, grouper, by = c("SPECIES_CD"))


Rock_Key_Deep_2018 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2018.xls")

Rock_Key_Deep_2018_snapper <- merge(Rock_Key_Deep_2018, snapper, by = c("SPECIES_CD"))


Rock_Key_Deep_2018_grouper <- merge(Rock_Key_Deep_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Rock_Key_Deep_snapper_1 <- rbind(Rock_Key_Deep_1999_snapper,Rock_Key_Deep_2000_snapper)
Rock_Key_Deep_snapper_2 <- rbind(Rock_Key_Deep_snapper_1,Rock_Key_Deep_2001_snapper)
Rock_Key_Deep_snapper_3 <- rbind(Rock_Key_Deep_snapper_2,Rock_Key_Deep_2002_snapper)
Rock_Key_Deep_snapper_4 <- rbind(Rock_Key_Deep_snapper_3,Rock_Key_Deep_2003_snapper)
Rock_Key_Deep_snapper_5 <- rbind(Rock_Key_Deep_snapper_4,Rock_Key_Deep_2004_snapper)
Rock_Key_Deep_snapper_6 <- rbind(Rock_Key_Deep_snapper_5,Rock_Key_Deep_2005_snapper)
Rock_Key_Deep_snapper_7 <- rbind(Rock_Key_Deep_snapper_6,Rock_Key_Deep_2006_snapper)
Rock_Key_Deep_snapper_8 <- rbind(Rock_Key_Deep_snapper_7,Rock_Key_Deep_2007_snapper)
Rock_Key_Deep_snapper_9 <- rbind(Rock_Key_Deep_snapper_8,Rock_Key_Deep_2008_snapper)
Rock_Key_Deep_snapper_10 <- rbind(Rock_Key_Deep_snapper_9,Rock_Key_Deep_2009_snapper)
Rock_Key_Deep_snapper_11<- rbind(Rock_Key_Deep_snapper_10,Rock_Key_Deep_2010_snapper)
Rock_Key_Deep_snapper_12 <- rbind(Rock_Key_Deep_snapper_11,Rock_Key_Deep_2011_snapper)
Rock_Key_Deep_snapper_13 <- rbind(Rock_Key_Deep_snapper_12,Rock_Key_Deep_2012_snapper)
Rock_Key_Deep_snapper_14 <- rbind(Rock_Key_Deep_snapper_13,Rock_Key_Deep_2014_snapper)
Rock_Key_Deep_snapper_15 <- rbind(Rock_Key_Deep_snapper_14,Rock_Key_Deep_2016_snapper)
Rock_Key_Deep_snapper <- rbind(Rock_Key_Deep_snapper_15,Rock_Key_Deep_2018_snapper)



Rock_Key_Deep_grouper_1 <- rbind(Rock_Key_Deep_1999_grouper,Rock_Key_Deep_2000_grouper)
Rock_Key_Deep_grouper_2 <- rbind(Rock_Key_Deep_grouper_1,Rock_Key_Deep_2001_grouper)
Rock_Key_Deep_grouper_3 <- rbind(Rock_Key_Deep_grouper_2,Rock_Key_Deep_2002_grouper)
Rock_Key_Deep_grouper_4 <- rbind(Rock_Key_Deep_grouper_3,Rock_Key_Deep_2003_grouper)
Rock_Key_Deep_grouper_5 <- rbind(Rock_Key_Deep_grouper_4,Rock_Key_Deep_2004_grouper)
Rock_Key_Deep_grouper_6 <- rbind(Rock_Key_Deep_grouper_5,Rock_Key_Deep_2005_grouper)
Rock_Key_Deep_grouper_7 <- rbind(Rock_Key_Deep_grouper_6,Rock_Key_Deep_2006_grouper)
Rock_Key_Deep_grouper_8 <- rbind(Rock_Key_Deep_grouper_7,Rock_Key_Deep_2007_grouper)
Rock_Key_Deep_grouper_9 <- rbind(Rock_Key_Deep_grouper_8,Rock_Key_Deep_2008_grouper)
Rock_Key_Deep_grouper_10 <- rbind(Rock_Key_Deep_grouper_9,Rock_Key_Deep_2009_grouper)
Rock_Key_Deep_grouper_11<- rbind(Rock_Key_Deep_grouper_10,Rock_Key_Deep_2010_grouper)
Rock_Key_Deep_grouper_12 <- rbind(Rock_Key_Deep_grouper_11,Rock_Key_Deep_2011_grouper)
Rock_Key_Deep_grouper_13 <- rbind(Rock_Key_Deep_grouper_12,Rock_Key_Deep_2012_grouper)
Rock_Key_Deep_grouper_14 <- rbind(Rock_Key_Deep_grouper_13,Rock_Key_Deep_2014_grouper)
Rock_Key_Deep_grouper_15 <- rbind(Rock_Key_Deep_grouper_14,Rock_Key_Deep_2016_grouper)
Rock_Key_Deep_grouper <- rbind(Rock_Key_Deep_grouper_15,Rock_Key_Deep_2018_grouper)


Rock_Key_Deep_all <- rbind(Rock_Key_Deep_snapper,Rock_Key_Deep_grouper)
Rock_Key_Deep_all$sitename <- "Rock Key Deep"

#export(Rock_Key_Deep_all, "Rock_Key_Deep/data/Rock_Key_Deep_snapper_grouper_type.csv")



#Rock Key Shallow


Rock_Key_Shallow_1999 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_1999.xls")


Rock_Key_Shallow_1999_snapper <- merge(Rock_Key_Shallow_1999, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_1999_grouper <- merge(Rock_Key_Shallow_1999, grouper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2000 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2000.xls")

Rock_Key_Shallow_2000_snapper <- merge(Rock_Key_Shallow_2000, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2000_grouper <- merge(Rock_Key_Shallow_2000, grouper, by = c("SPECIES_CD"))

Rock_Key_Shallow_2001 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2001.xls")

Rock_Key_Shallow_2001_snapper <- merge(Rock_Key_Shallow_2001, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2001_grouper <- merge(Rock_Key_Shallow_2001, grouper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2002 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2002.xls")

Rock_Key_Shallow_2002_snapper <- merge(Rock_Key_Shallow_2002, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2002_grouper <- merge(Rock_Key_Shallow_2002, grouper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2003 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2003.xls")

Rock_Key_Shallow_2003_snapper <- merge(Rock_Key_Shallow_2003, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2003_grouper <- merge(Rock_Key_Shallow_2003, grouper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2004 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2004.xls")

Rock_Key_Shallow_2004_snapper <- merge(Rock_Key_Shallow_2004, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2004_grouper <- merge(Rock_Key_Shallow_2004, grouper, by = c("SPECIES_CD"))

Rock_Key_Shallow_2005 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2005.xls")

Rock_Key_Shallow_2005_snapper <- merge(Rock_Key_Shallow_2005, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2005_grouper <- merge(Rock_Key_Shallow_2005, grouper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2006 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2006.xls")

Rock_Key_Shallow_2006_snapper <- merge(Rock_Key_Shallow_2006, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2006_grouper <- merge(Rock_Key_Shallow_2006, grouper, by = c("SPECIES_CD"))

Rock_Key_Shallow_2007 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2007.xls")

Rock_Key_Shallow_2007_snapper <- merge(Rock_Key_Shallow_2007, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2007_grouper <- merge(Rock_Key_Shallow_2007, grouper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2008 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2008.xls")

Rock_Key_Shallow_2008_snapper <- merge(Rock_Key_Shallow_2008, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2008_grouper <- merge(Rock_Key_Shallow_2008, grouper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2009 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2009.xls")

Rock_Key_Shallow_2009_snapper <- merge(Rock_Key_Shallow_2009, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2009_grouper <- merge(Rock_Key_Shallow_2009, grouper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2010 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2010.xls")

Rock_Key_Shallow_2010_snapper <- merge(Rock_Key_Shallow_2010, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2010_grouper <- merge(Rock_Key_Shallow_2010, grouper, by = c("SPECIES_CD"))

Rock_Key_Shallow_2011 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2011.xls")

Rock_Key_Shallow_2011_snapper <- merge(Rock_Key_Shallow_2011, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2011_grouper <- merge(Rock_Key_Shallow_2011, grouper, by = c("SPECIES_CD"))



Rock_Key_Shallow_2012 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2012.xls")

Rock_Key_Shallow_2012_snapper <- merge(Rock_Key_Shallow_2012, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2012_grouper <- merge(Rock_Key_Shallow_2012, grouper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2014 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2014.xls")

Rock_Key_Shallow_2014_snapper <- merge(Rock_Key_Shallow_2014, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2014_grouper <- merge(Rock_Key_Shallow_2014, grouper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2016 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2016.xls")

Rock_Key_Shallow_2016_snapper <- merge(Rock_Key_Shallow_2016, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2016_grouper <- merge(Rock_Key_Shallow_2016, grouper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2018 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2018.xls")

Rock_Key_Shallow_2018_snapper <- merge(Rock_Key_Shallow_2018, snapper, by = c("SPECIES_CD"))


Rock_Key_Shallow_2018_grouper <- merge(Rock_Key_Shallow_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Rock_Key_Shallow_snapper_1 <- rbind(Rock_Key_Shallow_1999_snapper,Rock_Key_Shallow_2000_snapper)
Rock_Key_Shallow_snapper_2 <- rbind(Rock_Key_Shallow_snapper_1,Rock_Key_Shallow_2001_snapper)
Rock_Key_Shallow_snapper_3 <- rbind(Rock_Key_Shallow_snapper_2,Rock_Key_Shallow_2002_snapper)
Rock_Key_Shallow_snapper_4 <- rbind(Rock_Key_Shallow_snapper_3,Rock_Key_Shallow_2003_snapper)
Rock_Key_Shallow_snapper_5 <- rbind(Rock_Key_Shallow_snapper_4,Rock_Key_Shallow_2004_snapper)
Rock_Key_Shallow_snapper_6 <- rbind(Rock_Key_Shallow_snapper_5,Rock_Key_Shallow_2005_snapper)
Rock_Key_Shallow_snapper_7 <- rbind(Rock_Key_Shallow_snapper_6,Rock_Key_Shallow_2006_snapper)
Rock_Key_Shallow_snapper_8 <- rbind(Rock_Key_Shallow_snapper_7,Rock_Key_Shallow_2007_snapper)
Rock_Key_Shallow_snapper_9 <- rbind(Rock_Key_Shallow_snapper_8,Rock_Key_Shallow_2008_snapper)
Rock_Key_Shallow_snapper_10 <- rbind(Rock_Key_Shallow_snapper_9,Rock_Key_Shallow_2009_snapper)
Rock_Key_Shallow_snapper_11<- rbind(Rock_Key_Shallow_snapper_10,Rock_Key_Shallow_2010_snapper)
Rock_Key_Shallow_snapper_12 <- rbind(Rock_Key_Shallow_snapper_11,Rock_Key_Shallow_2011_snapper)
Rock_Key_Shallow_snapper_13 <- rbind(Rock_Key_Shallow_snapper_12,Rock_Key_Shallow_2012_snapper)
Rock_Key_Shallow_snapper_14 <- rbind(Rock_Key_Shallow_snapper_13,Rock_Key_Shallow_2014_snapper)
Rock_Key_Shallow_snapper_15 <- rbind(Rock_Key_Shallow_snapper_14,Rock_Key_Shallow_2016_snapper)
Rock_Key_Shallow_snapper <- rbind(Rock_Key_Shallow_snapper_15,Rock_Key_Shallow_2018_snapper)



Rock_Key_Shallow_grouper_1 <- rbind(Rock_Key_Shallow_1999_grouper,Rock_Key_Shallow_2000_grouper)
Rock_Key_Shallow_grouper_2 <- rbind(Rock_Key_Shallow_grouper_1,Rock_Key_Shallow_2001_grouper)
Rock_Key_Shallow_grouper_3 <- rbind(Rock_Key_Shallow_grouper_2,Rock_Key_Shallow_2002_grouper)
Rock_Key_Shallow_grouper_4 <- rbind(Rock_Key_Shallow_grouper_3,Rock_Key_Shallow_2003_grouper)
Rock_Key_Shallow_grouper_5 <- rbind(Rock_Key_Shallow_grouper_4,Rock_Key_Shallow_2004_grouper)
Rock_Key_Shallow_grouper_6 <- rbind(Rock_Key_Shallow_grouper_5,Rock_Key_Shallow_2005_grouper)
Rock_Key_Shallow_grouper_7 <- rbind(Rock_Key_Shallow_grouper_6,Rock_Key_Shallow_2006_grouper)
Rock_Key_Shallow_grouper_8 <- rbind(Rock_Key_Shallow_grouper_7,Rock_Key_Shallow_2007_grouper)
Rock_Key_Shallow_grouper_9 <- rbind(Rock_Key_Shallow_grouper_8,Rock_Key_Shallow_2008_grouper)
Rock_Key_Shallow_grouper_10 <- rbind(Rock_Key_Shallow_grouper_9,Rock_Key_Shallow_2009_grouper)
Rock_Key_Shallow_grouper_11<- rbind(Rock_Key_Shallow_grouper_10,Rock_Key_Shallow_2010_grouper)
Rock_Key_Shallow_grouper_12 <- rbind(Rock_Key_Shallow_grouper_11,Rock_Key_Shallow_2011_grouper)
Rock_Key_Shallow_grouper_13 <- rbind(Rock_Key_Shallow_grouper_12,Rock_Key_Shallow_2012_grouper)
Rock_Key_Shallow_grouper_14 <- rbind(Rock_Key_Shallow_grouper_13,Rock_Key_Shallow_2014_grouper)
Rock_Key_Shallow_grouper_15 <- rbind(Rock_Key_Shallow_grouper_14,Rock_Key_Shallow_2016_grouper)
Rock_Key_Shallow_grouper <- rbind(Rock_Key_Shallow_grouper_15,Rock_Key_Shallow_2018_grouper)


Rock_Key_Shallow_all <- rbind(Rock_Key_Shallow_snapper,Rock_Key_Shallow_grouper)

Rock_Key_Shallow_all$sitename <- "Rock Key Shallow"

#export(Rock_Key_Shallow_all, "Rock_Key_Shallow/data/Rock_Key_Shallow_snapper_grouper_type.csv")



# Sand Key Deep

Sand_Key_Deep_1999 <- import("Sand_Key_Deep/data/Sand_Key_Deep_1999.xls")


Sand_Key_Deep_1999_snapper <- merge(Sand_Key_Deep_1999, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_1999_grouper <- merge(Sand_Key_Deep_1999, grouper, by = c("SPECIES_CD"))


Sand_Key_Deep_2000 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2000.xls")

Sand_Key_Deep_2000_snapper <- merge(Sand_Key_Deep_2000, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_2000_grouper <- merge(Sand_Key_Deep_2000, grouper, by = c("SPECIES_CD"))

Sand_Key_Deep_2001 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2001.xls")

Sand_Key_Deep_2001_snapper <- merge(Sand_Key_Deep_2001, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_2001_grouper <- merge(Sand_Key_Deep_2001, grouper, by = c("SPECIES_CD"))


Sand_Key_Deep_2002 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2002.xls")

Sand_Key_Deep_2002_snapper <- merge(Sand_Key_Deep_2002, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_2002_grouper <- merge(Sand_Key_Deep_2002, grouper, by = c("SPECIES_CD"))


Sand_Key_Deep_2003 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2003.xls")

Sand_Key_Deep_2003_snapper <- merge(Sand_Key_Deep_2003, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_2003_grouper <- merge(Sand_Key_Deep_2003, grouper, by = c("SPECIES_CD"))


Sand_Key_Deep_2004 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2004.xls")

Sand_Key_Deep_2004_snapper <- merge(Sand_Key_Deep_2004, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_2004_grouper <- merge(Sand_Key_Deep_2004, grouper, by = c("SPECIES_CD"))

Sand_Key_Deep_2005 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2005.xls")

Sand_Key_Deep_2005_snapper <- merge(Sand_Key_Deep_2005, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_2005_grouper <- merge(Sand_Key_Deep_2005, grouper, by = c("SPECIES_CD"))


Sand_Key_Deep_2006 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2006.xls")

Sand_Key_Deep_2006_snapper <- merge(Sand_Key_Deep_2006, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_2006_grouper <- merge(Sand_Key_Deep_2006, grouper, by = c("SPECIES_CD"))

Sand_Key_Deep_2007 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2007.xls")

Sand_Key_Deep_2007_snapper <- merge(Sand_Key_Deep_2007, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_2007_grouper <- merge(Sand_Key_Deep_2007, grouper, by = c("SPECIES_CD"))


Sand_Key_Deep_2008 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2008.xls")

Sand_Key_Deep_2008_snapper <- merge(Sand_Key_Deep_2008, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_2008_grouper <- merge(Sand_Key_Deep_2008, grouper, by = c("SPECIES_CD"))


Sand_Key_Deep_2009 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2009.xls")

Sand_Key_Deep_2009_snapper <- merge(Sand_Key_Deep_2009, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_2009_grouper <- merge(Sand_Key_Deep_2009, grouper, by = c("SPECIES_CD"))


Sand_Key_Deep_2010 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2010.xls")

Sand_Key_Deep_2010_snapper <- merge(Sand_Key_Deep_2010, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_2010_grouper <- merge(Sand_Key_Deep_2010, grouper, by = c("SPECIES_CD"))

Sand_Key_Deep_2011 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2011.xls")

Sand_Key_Deep_2011_snapper <- merge(Sand_Key_Deep_2011, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_2011_grouper <- merge(Sand_Key_Deep_2011, grouper, by = c("SPECIES_CD"))



Sand_Key_Deep_2012 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2012.xls")

Sand_Key_Deep_2012_snapper <- merge(Sand_Key_Deep_2012, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_2012_grouper <- merge(Sand_Key_Deep_2012, grouper, by = c("SPECIES_CD"))


Sand_Key_Deep_2014 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2014.xls")

Sand_Key_Deep_2014_snapper <- merge(Sand_Key_Deep_2014, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_2014_grouper <- merge(Sand_Key_Deep_2014, grouper, by = c("SPECIES_CD"))


Sand_Key_Deep_2016 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2016.xls")

Sand_Key_Deep_2016_snapper <- merge(Sand_Key_Deep_2016, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_2016_grouper <- merge(Sand_Key_Deep_2016, grouper, by = c("SPECIES_CD"))


Sand_Key_Deep_2018 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2018.xls")

Sand_Key_Deep_2018_snapper <- merge(Sand_Key_Deep_2018, snapper, by = c("SPECIES_CD"))


Sand_Key_Deep_2018_grouper <- merge(Sand_Key_Deep_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Sand_Key_Deep_snapper_1 <- rbind(Sand_Key_Deep_1999_snapper,Sand_Key_Deep_2000_snapper)
Sand_Key_Deep_snapper_2 <- rbind(Sand_Key_Deep_snapper_1,Sand_Key_Deep_2001_snapper)
Sand_Key_Deep_snapper_3 <- rbind(Sand_Key_Deep_snapper_2,Sand_Key_Deep_2002_snapper)
Sand_Key_Deep_snapper_4 <- rbind(Sand_Key_Deep_snapper_3,Sand_Key_Deep_2003_snapper)
Sand_Key_Deep_snapper_5 <- rbind(Sand_Key_Deep_snapper_4,Sand_Key_Deep_2004_snapper)
Sand_Key_Deep_snapper_6 <- rbind(Sand_Key_Deep_snapper_5,Sand_Key_Deep_2005_snapper)
Sand_Key_Deep_snapper_7 <- rbind(Sand_Key_Deep_snapper_6,Sand_Key_Deep_2006_snapper)
Sand_Key_Deep_snapper_8 <- rbind(Sand_Key_Deep_snapper_7,Sand_Key_Deep_2007_snapper)
Sand_Key_Deep_snapper_9 <- rbind(Sand_Key_Deep_snapper_8,Sand_Key_Deep_2008_snapper)
Sand_Key_Deep_snapper_10 <- rbind(Sand_Key_Deep_snapper_9,Sand_Key_Deep_2009_snapper)
Sand_Key_Deep_snapper_11<- rbind(Sand_Key_Deep_snapper_10,Sand_Key_Deep_2010_snapper)
Sand_Key_Deep_snapper_12 <- rbind(Sand_Key_Deep_snapper_11,Sand_Key_Deep_2011_snapper)
Sand_Key_Deep_snapper_13 <- rbind(Sand_Key_Deep_snapper_12,Sand_Key_Deep_2012_snapper)
Sand_Key_Deep_snapper_14 <- rbind(Sand_Key_Deep_snapper_13,Sand_Key_Deep_2014_snapper)
Sand_Key_Deep_snapper_15 <- rbind(Sand_Key_Deep_snapper_14,Sand_Key_Deep_2016_snapper)
Sand_Key_Deep_snapper <- rbind(Sand_Key_Deep_snapper_15,Sand_Key_Deep_2018_snapper)



Sand_Key_Deep_grouper_1 <- rbind(Sand_Key_Deep_1999_grouper,Sand_Key_Deep_2000_grouper)
Sand_Key_Deep_grouper_2 <- rbind(Sand_Key_Deep_grouper_1,Sand_Key_Deep_2001_grouper)
Sand_Key_Deep_grouper_3 <- rbind(Sand_Key_Deep_grouper_2,Sand_Key_Deep_2002_grouper)
Sand_Key_Deep_grouper_4 <- rbind(Sand_Key_Deep_grouper_3,Sand_Key_Deep_2003_grouper)
Sand_Key_Deep_grouper_5 <- rbind(Sand_Key_Deep_grouper_4,Sand_Key_Deep_2004_grouper)
Sand_Key_Deep_grouper_6 <- rbind(Sand_Key_Deep_grouper_5,Sand_Key_Deep_2005_grouper)
Sand_Key_Deep_grouper_7 <- rbind(Sand_Key_Deep_grouper_6,Sand_Key_Deep_2006_grouper)
Sand_Key_Deep_grouper_8 <- rbind(Sand_Key_Deep_grouper_7,Sand_Key_Deep_2007_grouper)
Sand_Key_Deep_grouper_9 <- rbind(Sand_Key_Deep_grouper_8,Sand_Key_Deep_2008_grouper)
Sand_Key_Deep_grouper_10 <- rbind(Sand_Key_Deep_grouper_9,Sand_Key_Deep_2009_grouper)
Sand_Key_Deep_grouper_11<- rbind(Sand_Key_Deep_grouper_10,Sand_Key_Deep_2010_grouper)
Sand_Key_Deep_grouper_12 <- rbind(Sand_Key_Deep_grouper_11,Sand_Key_Deep_2011_grouper)
Sand_Key_Deep_grouper_13 <- rbind(Sand_Key_Deep_grouper_12,Sand_Key_Deep_2012_grouper)
Sand_Key_Deep_grouper_14 <- rbind(Sand_Key_Deep_grouper_13,Sand_Key_Deep_2014_grouper)
Sand_Key_Deep_grouper_15 <- rbind(Sand_Key_Deep_grouper_14,Sand_Key_Deep_2016_grouper)
Sand_Key_Deep_grouper <- rbind(Sand_Key_Deep_grouper_15,Sand_Key_Deep_2018_grouper)


Sand_Key_Deep_all <- rbind(Sand_Key_Deep_snapper,Sand_Key_Deep_grouper)
Sand_Key_Deep_all$sitename <- "Sand Key Deep"

#export(Sand_Key_Deep_all, "Sand_Key_Deep/data/Sand_Key_Deep_snapper_grouper_type.csv")





# Sand Key Shallow

Sand_Key_Shallow_1999 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_1999.xls")


Sand_Key_Shallow_1999_snapper <- merge(Sand_Key_Shallow_1999, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_1999_grouper <- merge(Sand_Key_Shallow_1999, grouper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2000 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2000.xls")

Sand_Key_Shallow_2000_snapper <- merge(Sand_Key_Shallow_2000, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2000_grouper <- merge(Sand_Key_Shallow_2000, grouper, by = c("SPECIES_CD"))

Sand_Key_Shallow_2001 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2001.xls")

Sand_Key_Shallow_2001_snapper <- merge(Sand_Key_Shallow_2001, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2001_grouper <- merge(Sand_Key_Shallow_2001, grouper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2002 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2002.xls")

Sand_Key_Shallow_2002_snapper <- merge(Sand_Key_Shallow_2002, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2002_grouper <- merge(Sand_Key_Shallow_2002, grouper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2003 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2003.xls")

Sand_Key_Shallow_2003_snapper <- merge(Sand_Key_Shallow_2003, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2003_grouper <- merge(Sand_Key_Shallow_2003, grouper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2004 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2004.xls")

Sand_Key_Shallow_2004_snapper <- merge(Sand_Key_Shallow_2004, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2004_grouper <- merge(Sand_Key_Shallow_2004, grouper, by = c("SPECIES_CD"))

Sand_Key_Shallow_2005 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2005.xls")

Sand_Key_Shallow_2005_snapper <- merge(Sand_Key_Shallow_2005, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2005_grouper <- merge(Sand_Key_Shallow_2005, grouper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2006 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2006.xls")

Sand_Key_Shallow_2006_snapper <- merge(Sand_Key_Shallow_2006, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2006_grouper <- merge(Sand_Key_Shallow_2006, grouper, by = c("SPECIES_CD"))

Sand_Key_Shallow_2007 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2007.xls")

Sand_Key_Shallow_2007_snapper <- merge(Sand_Key_Shallow_2007, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2007_grouper <- merge(Sand_Key_Shallow_2007, grouper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2008 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2008.xls")

Sand_Key_Shallow_2008_snapper <- merge(Sand_Key_Shallow_2008, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2008_grouper <- merge(Sand_Key_Shallow_2008, grouper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2009 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2009.xls")

Sand_Key_Shallow_2009_snapper <- merge(Sand_Key_Shallow_2009, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2009_grouper <- merge(Sand_Key_Shallow_2009, grouper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2010 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2010.xls")

Sand_Key_Shallow_2010_snapper <- merge(Sand_Key_Shallow_2010, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2010_grouper <- merge(Sand_Key_Shallow_2010, grouper, by = c("SPECIES_CD"))

Sand_Key_Shallow_2011 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2011.xls")

Sand_Key_Shallow_2011_snapper <- merge(Sand_Key_Shallow_2011, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2011_grouper <- merge(Sand_Key_Shallow_2011, grouper, by = c("SPECIES_CD"))



Sand_Key_Shallow_2012 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2012.xls")

Sand_Key_Shallow_2012_snapper <- merge(Sand_Key_Shallow_2012, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2012_grouper <- merge(Sand_Key_Shallow_2012, grouper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2014 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2014.xls")

Sand_Key_Shallow_2014_snapper <- merge(Sand_Key_Shallow_2014, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2014_grouper <- merge(Sand_Key_Shallow_2014, grouper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2016 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2016.xls")

Sand_Key_Shallow_2016_snapper <- merge(Sand_Key_Shallow_2016, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2016_grouper <- merge(Sand_Key_Shallow_2016, grouper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2018 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2018.xls")

Sand_Key_Shallow_2018_snapper <- merge(Sand_Key_Shallow_2018, snapper, by = c("SPECIES_CD"))


Sand_Key_Shallow_2018_grouper <- merge(Sand_Key_Shallow_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Sand_Key_Shallow_snapper_1 <- rbind(Sand_Key_Shallow_1999_snapper,Sand_Key_Shallow_2000_snapper)
Sand_Key_Shallow_snapper_2 <- rbind(Sand_Key_Shallow_snapper_1,Sand_Key_Shallow_2001_snapper)
Sand_Key_Shallow_snapper_3 <- rbind(Sand_Key_Shallow_snapper_2,Sand_Key_Shallow_2002_snapper)
Sand_Key_Shallow_snapper_4 <- rbind(Sand_Key_Shallow_snapper_3,Sand_Key_Shallow_2003_snapper)
Sand_Key_Shallow_snapper_5 <- rbind(Sand_Key_Shallow_snapper_4,Sand_Key_Shallow_2004_snapper)
Sand_Key_Shallow_snapper_6 <- rbind(Sand_Key_Shallow_snapper_5,Sand_Key_Shallow_2005_snapper)
Sand_Key_Shallow_snapper_7 <- rbind(Sand_Key_Shallow_snapper_6,Sand_Key_Shallow_2006_snapper)
Sand_Key_Shallow_snapper_8 <- rbind(Sand_Key_Shallow_snapper_7,Sand_Key_Shallow_2007_snapper)
Sand_Key_Shallow_snapper_9 <- rbind(Sand_Key_Shallow_snapper_8,Sand_Key_Shallow_2008_snapper)
Sand_Key_Shallow_snapper_10 <- rbind(Sand_Key_Shallow_snapper_9,Sand_Key_Shallow_2009_snapper)
Sand_Key_Shallow_snapper_11<- rbind(Sand_Key_Shallow_snapper_10,Sand_Key_Shallow_2010_snapper)
Sand_Key_Shallow_snapper_12 <- rbind(Sand_Key_Shallow_snapper_11,Sand_Key_Shallow_2011_snapper)
Sand_Key_Shallow_snapper_13 <- rbind(Sand_Key_Shallow_snapper_12,Sand_Key_Shallow_2012_snapper)
Sand_Key_Shallow_snapper_14 <- rbind(Sand_Key_Shallow_snapper_13,Sand_Key_Shallow_2014_snapper)
Sand_Key_Shallow_snapper_15 <- rbind(Sand_Key_Shallow_snapper_14,Sand_Key_Shallow_2016_snapper)
Sand_Key_Shallow_snapper <- rbind(Sand_Key_Shallow_snapper_15,Sand_Key_Shallow_2018_snapper)



Sand_Key_Shallow_grouper_1 <- rbind(Sand_Key_Shallow_1999_grouper,Sand_Key_Shallow_2000_grouper)
Sand_Key_Shallow_grouper_2 <- rbind(Sand_Key_Shallow_grouper_1,Sand_Key_Shallow_2001_grouper)
Sand_Key_Shallow_grouper_3 <- rbind(Sand_Key_Shallow_grouper_2,Sand_Key_Shallow_2002_grouper)
Sand_Key_Shallow_grouper_4 <- rbind(Sand_Key_Shallow_grouper_3,Sand_Key_Shallow_2003_grouper)
Sand_Key_Shallow_grouper_5 <- rbind(Sand_Key_Shallow_grouper_4,Sand_Key_Shallow_2004_grouper)
Sand_Key_Shallow_grouper_6 <- rbind(Sand_Key_Shallow_grouper_5,Sand_Key_Shallow_2005_grouper)
Sand_Key_Shallow_grouper_7 <- rbind(Sand_Key_Shallow_grouper_6,Sand_Key_Shallow_2006_grouper)
Sand_Key_Shallow_grouper_8 <- rbind(Sand_Key_Shallow_grouper_7,Sand_Key_Shallow_2007_grouper)
Sand_Key_Shallow_grouper_9 <- rbind(Sand_Key_Shallow_grouper_8,Sand_Key_Shallow_2008_grouper)
Sand_Key_Shallow_grouper_10 <- rbind(Sand_Key_Shallow_grouper_9,Sand_Key_Shallow_2009_grouper)
Sand_Key_Shallow_grouper_11<- rbind(Sand_Key_Shallow_grouper_10,Sand_Key_Shallow_2010_grouper)
Sand_Key_Shallow_grouper_12 <- rbind(Sand_Key_Shallow_grouper_11,Sand_Key_Shallow_2011_grouper)
Sand_Key_Shallow_grouper_13 <- rbind(Sand_Key_Shallow_grouper_12,Sand_Key_Shallow_2012_grouper)
Sand_Key_Shallow_grouper_14 <- rbind(Sand_Key_Shallow_grouper_13,Sand_Key_Shallow_2014_grouper)
Sand_Key_Shallow_grouper_15 <- rbind(Sand_Key_Shallow_grouper_14,Sand_Key_Shallow_2016_grouper)
Sand_Key_Shallow_grouper <- rbind(Sand_Key_Shallow_grouper_15,Sand_Key_Shallow_2018_grouper)

Sand_Key_Shallow_all <- rbind(Sand_Key_Shallow_snapper,Sand_Key_Shallow_grouper)
Sand_Key_Shallow_all$sitename <- "Sand Key Shallow"

#export(Sand_Key_Shallow_all, "Sand_Key_Shallow/data/Sand_Key_Shallow_snapper_grouper_type.csv")


# West Washer Woman

West_Washer_Woman_1999 <- import("West_Washer_Woman/data/West_Washer_1999.xls")


West_Washer_Woman_1999_snapper <- merge(West_Washer_Woman_1999, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_1999_grouper <- merge(West_Washer_Woman_1999, grouper, by = c("SPECIES_CD"))


West_Washer_Woman_2000 <- import("West_Washer_Woman/data/West_Washer_2000.xls")

West_Washer_Woman_2000_snapper <- merge(West_Washer_Woman_2000, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_2000_grouper <- merge(West_Washer_Woman_2000, grouper, by = c("SPECIES_CD"))

West_Washer_Woman_2001 <- import("West_Washer_Woman/data/West_Washer_2001.xls")

West_Washer_Woman_2001_snapper <- merge(West_Washer_Woman_2001, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_2001_grouper <- merge(West_Washer_Woman_2001, grouper, by = c("SPECIES_CD"))


West_Washer_Woman_2002 <- import("West_Washer_Woman/data/West_Washer_2002.xls")

West_Washer_Woman_2002_snapper <- merge(West_Washer_Woman_2002, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_2002_grouper <- merge(West_Washer_Woman_2002, grouper, by = c("SPECIES_CD"))


West_Washer_Woman_2003 <- import("West_Washer_Woman/data/West_Washer_2003.xls")

West_Washer_Woman_2003_snapper <- merge(West_Washer_Woman_2003, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_2003_grouper <- merge(West_Washer_Woman_2003, grouper, by = c("SPECIES_CD"))


West_Washer_Woman_2004 <- import("West_Washer_Woman/data/West_Washer_2004.xls")

West_Washer_Woman_2004_snapper <- merge(West_Washer_Woman_2004, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_2004_grouper <- merge(West_Washer_Woman_2004, grouper, by = c("SPECIES_CD"))

West_Washer_Woman_2005 <- import("West_Washer_Woman/data/West_Washer_2005.xls")

West_Washer_Woman_2005_snapper <- merge(West_Washer_Woman_2005, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_2005_grouper <- merge(West_Washer_Woman_2005, grouper, by = c("SPECIES_CD"))


West_Washer_Woman_2006 <- import("West_Washer_Woman/data/West_Washer_2006.xls")

West_Washer_Woman_2006_snapper <- merge(West_Washer_Woman_2006, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_2006_grouper <- merge(West_Washer_Woman_2006, grouper, by = c("SPECIES_CD"))

West_Washer_Woman_2007 <- import("West_Washer_Woman/data/West_Washer_2007.xls")

West_Washer_Woman_2007_snapper <- merge(West_Washer_Woman_2007, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_2007_grouper <- merge(West_Washer_Woman_2007, grouper, by = c("SPECIES_CD"))


West_Washer_Woman_2008 <- import("West_Washer_Woman/data/West_Washer_2008.xls")

West_Washer_Woman_2008_snapper <- merge(West_Washer_Woman_2008, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_2008_grouper <- merge(West_Washer_Woman_2008, grouper, by = c("SPECIES_CD"))


West_Washer_Woman_2009 <- import("West_Washer_Woman/data/West_Washer_2009.xls")

West_Washer_Woman_2009_snapper <- merge(West_Washer_Woman_2009, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_2009_grouper <- merge(West_Washer_Woman_2009, grouper, by = c("SPECIES_CD"))


West_Washer_Woman_2010 <- import("West_Washer_Woman/data/West_Washer_2010.xls")

West_Washer_Woman_2010_snapper <- merge(West_Washer_Woman_2010, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_2010_grouper <- merge(West_Washer_Woman_2010, grouper, by = c("SPECIES_CD"))

West_Washer_Woman_2011 <- import("West_Washer_Woman/data/West_Washer_2011.xls")

West_Washer_Woman_2011_snapper <- merge(West_Washer_Woman_2011, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_2011_grouper <- merge(West_Washer_Woman_2011, grouper, by = c("SPECIES_CD"))



West_Washer_Woman_2012 <- import("West_Washer_Woman/data/West_Washer_2012.xls")

West_Washer_Woman_2012_snapper <- merge(West_Washer_Woman_2012, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_2012_grouper <- merge(West_Washer_Woman_2012, grouper, by = c("SPECIES_CD"))


West_Washer_Woman_2014 <- import("West_Washer_Woman/data/West_Washer_2014.xls")

West_Washer_Woman_2014_snapper <- merge(West_Washer_Woman_2014, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_2014_grouper <- merge(West_Washer_Woman_2014, grouper, by = c("SPECIES_CD"))


West_Washer_Woman_2016 <- import("West_Washer_Woman/data/West_Washer_2016.xls")

West_Washer_Woman_2016_snapper <- merge(West_Washer_Woman_2016, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_2016_grouper <- merge(West_Washer_Woman_2016, grouper, by = c("SPECIES_CD"))


West_Washer_Woman_2018 <- import("West_Washer_Woman/data/West_Washer_2018.xls")

West_Washer_Woman_2018_snapper <- merge(West_Washer_Woman_2018, snapper, by = c("SPECIES_CD"))


West_Washer_Woman_2018_grouper <- merge(West_Washer_Woman_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



West_Washer_Woman_snapper_1 <- rbind(West_Washer_Woman_1999_snapper,West_Washer_Woman_2000_snapper)
West_Washer_Woman_snapper_2 <- rbind(West_Washer_Woman_snapper_1,West_Washer_Woman_2001_snapper)
West_Washer_Woman_snapper_3 <- rbind(West_Washer_Woman_snapper_2,West_Washer_Woman_2002_snapper)
West_Washer_Woman_snapper_4 <- rbind(West_Washer_Woman_snapper_3,West_Washer_Woman_2003_snapper)
West_Washer_Woman_snapper_5 <- rbind(West_Washer_Woman_snapper_4,West_Washer_Woman_2004_snapper)
West_Washer_Woman_snapper_6 <- rbind(West_Washer_Woman_snapper_5,West_Washer_Woman_2005_snapper)
West_Washer_Woman_snapper_7 <- rbind(West_Washer_Woman_snapper_6,West_Washer_Woman_2006_snapper)
West_Washer_Woman_snapper_8 <- rbind(West_Washer_Woman_snapper_7,West_Washer_Woman_2007_snapper)
West_Washer_Woman_snapper_9 <- rbind(West_Washer_Woman_snapper_8,West_Washer_Woman_2008_snapper)
West_Washer_Woman_snapper_10 <- rbind(West_Washer_Woman_snapper_9,West_Washer_Woman_2009_snapper)
West_Washer_Woman_snapper_11<- rbind(West_Washer_Woman_snapper_10,West_Washer_Woman_2010_snapper)
West_Washer_Woman_snapper_12 <- rbind(West_Washer_Woman_snapper_11,West_Washer_Woman_2011_snapper)
West_Washer_Woman_snapper_13 <- rbind(West_Washer_Woman_snapper_12,West_Washer_Woman_2012_snapper)
West_Washer_Woman_snapper_14 <- rbind(West_Washer_Woman_snapper_13,West_Washer_Woman_2014_snapper)
West_Washer_Woman_snapper_15 <- rbind(West_Washer_Woman_snapper_14,West_Washer_Woman_2016_snapper)
West_Washer_Woman_snapper <- rbind(West_Washer_Woman_snapper_15,West_Washer_Woman_2018_snapper)



West_Washer_Woman_grouper_1 <- rbind(West_Washer_Woman_1999_grouper,West_Washer_Woman_2000_grouper)
West_Washer_Woman_grouper_2 <- rbind(West_Washer_Woman_grouper_1,West_Washer_Woman_2001_grouper)
West_Washer_Woman_grouper_3 <- rbind(West_Washer_Woman_grouper_2,West_Washer_Woman_2002_grouper)
West_Washer_Woman_grouper_4 <- rbind(West_Washer_Woman_grouper_3,West_Washer_Woman_2003_grouper)
West_Washer_Woman_grouper_5 <- rbind(West_Washer_Woman_grouper_4,West_Washer_Woman_2004_grouper)
West_Washer_Woman_grouper_6 <- rbind(West_Washer_Woman_grouper_5,West_Washer_Woman_2005_grouper)
West_Washer_Woman_grouper_7 <- rbind(West_Washer_Woman_grouper_6,West_Washer_Woman_2006_grouper)
West_Washer_Woman_grouper_8 <- rbind(West_Washer_Woman_grouper_7,West_Washer_Woman_2007_grouper)
West_Washer_Woman_grouper_9 <- rbind(West_Washer_Woman_grouper_8,West_Washer_Woman_2008_grouper)
West_Washer_Woman_grouper_10 <- rbind(West_Washer_Woman_grouper_9,West_Washer_Woman_2009_grouper)
West_Washer_Woman_grouper_11<- rbind(West_Washer_Woman_grouper_10,West_Washer_Woman_2010_grouper)
West_Washer_Woman_grouper_12 <- rbind(West_Washer_Woman_grouper_11,West_Washer_Woman_2011_grouper)
West_Washer_Woman_grouper_13 <- rbind(West_Washer_Woman_grouper_12,West_Washer_Woman_2012_grouper)
West_Washer_Woman_grouper_14 <- rbind(West_Washer_Woman_grouper_13,West_Washer_Woman_2014_grouper)
West_Washer_Woman_grouper_15 <- rbind(West_Washer_Woman_grouper_14,West_Washer_Woman_2016_grouper)
West_Washer_Woman_grouper <- rbind(West_Washer_Woman_grouper_15,West_Washer_Woman_2018_grouper)


West_Washer_Woman_all <- rbind(West_Washer_Woman_snapper,West_Washer_Woman_grouper)
West_Washer_Woman_all$sitename <- "West Washer Woman"

#export(West_Washer_Woman_all, "West_Washer_Woman/data/West_Washer_Woman_snapper_grouper_type.csv")



# Western Sambo Deep

Western_Sambo_Deep_1999 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_1999.xls")


Western_Sambo_Deep_1999_snapper <- merge(Western_Sambo_Deep_1999, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_1999_grouper <- merge(Western_Sambo_Deep_1999, grouper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2000 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2000.xls")

Western_Sambo_Deep_2000_snapper <- merge(Western_Sambo_Deep_2000, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2000_grouper <- merge(Western_Sambo_Deep_2000, grouper, by = c("SPECIES_CD"))

Western_Sambo_Deep_2001 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2001.xls")

Western_Sambo_Deep_2001_snapper <- merge(Western_Sambo_Deep_2001, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2001_grouper <- merge(Western_Sambo_Deep_2001, grouper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2002 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2002.xls")

Western_Sambo_Deep_2002_snapper <- merge(Western_Sambo_Deep_2002, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2002_grouper <- merge(Western_Sambo_Deep_2002, grouper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2003 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2003.xls")

Western_Sambo_Deep_2003_snapper <- merge(Western_Sambo_Deep_2003, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2003_grouper <- merge(Western_Sambo_Deep_2003, grouper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2004 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2004.xls")

Western_Sambo_Deep_2004_snapper <- merge(Western_Sambo_Deep_2004, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2004_grouper <- merge(Western_Sambo_Deep_2004, grouper, by = c("SPECIES_CD"))

Western_Sambo_Deep_2005 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2005.xls")

Western_Sambo_Deep_2005_snapper <- merge(Western_Sambo_Deep_2005, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2005_grouper <- merge(Western_Sambo_Deep_2005, grouper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2006 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2006.xls")

Western_Sambo_Deep_2006_snapper <- merge(Western_Sambo_Deep_2006, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2006_grouper <- merge(Western_Sambo_Deep_2006, grouper, by = c("SPECIES_CD"))

Western_Sambo_Deep_2007 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2007.xls")

Western_Sambo_Deep_2007_snapper <- merge(Western_Sambo_Deep_2007, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2007_grouper <- merge(Western_Sambo_Deep_2007, grouper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2008 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2008.xls")

Western_Sambo_Deep_2008_snapper <- merge(Western_Sambo_Deep_2008, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2008_grouper <- merge(Western_Sambo_Deep_2008, grouper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2009 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2009.xls")

Western_Sambo_Deep_2009_snapper <- merge(Western_Sambo_Deep_2009, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2009_grouper <- merge(Western_Sambo_Deep_2009, grouper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2010 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2010.xls")

Western_Sambo_Deep_2010_snapper <- merge(Western_Sambo_Deep_2010, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2010_grouper <- merge(Western_Sambo_Deep_2010, grouper, by = c("SPECIES_CD"))

Western_Sambo_Deep_2011 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2011.xls")

Western_Sambo_Deep_2011_snapper <- merge(Western_Sambo_Deep_2011, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2011_grouper <- merge(Western_Sambo_Deep_2011, grouper, by = c("SPECIES_CD"))



Western_Sambo_Deep_2012 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2012.xls")

Western_Sambo_Deep_2012_snapper <- merge(Western_Sambo_Deep_2012, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2012_grouper <- merge(Western_Sambo_Deep_2012, grouper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2014 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2014.xls")

Western_Sambo_Deep_2014_snapper <- merge(Western_Sambo_Deep_2014, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2014_grouper <- merge(Western_Sambo_Deep_2014, grouper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2016 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2016.xls")

Western_Sambo_Deep_2016_snapper <- merge(Western_Sambo_Deep_2016, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2016_grouper <- merge(Western_Sambo_Deep_2016, grouper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2018 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2018.xls")

Western_Sambo_Deep_2018_snapper <- merge(Western_Sambo_Deep_2018, snapper, by = c("SPECIES_CD"))


Western_Sambo_Deep_2018_grouper <- merge(Western_Sambo_Deep_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Western_Sambo_Deep_snapper_1 <- rbind(Western_Sambo_Deep_1999_snapper,Western_Sambo_Deep_2000_snapper)
Western_Sambo_Deep_snapper_2 <- rbind(Western_Sambo_Deep_snapper_1,Western_Sambo_Deep_2001_snapper)
Western_Sambo_Deep_snapper_3 <- rbind(Western_Sambo_Deep_snapper_2,Western_Sambo_Deep_2002_snapper)
Western_Sambo_Deep_snapper_4 <- rbind(Western_Sambo_Deep_snapper_3,Western_Sambo_Deep_2003_snapper)
Western_Sambo_Deep_snapper_5 <- rbind(Western_Sambo_Deep_snapper_4,Western_Sambo_Deep_2004_snapper)
Western_Sambo_Deep_snapper_6 <- rbind(Western_Sambo_Deep_snapper_5,Western_Sambo_Deep_2005_snapper)
Western_Sambo_Deep_snapper_7 <- rbind(Western_Sambo_Deep_snapper_6,Western_Sambo_Deep_2006_snapper)
Western_Sambo_Deep_snapper_8 <- rbind(Western_Sambo_Deep_snapper_7,Western_Sambo_Deep_2007_snapper)
Western_Sambo_Deep_snapper_9 <- rbind(Western_Sambo_Deep_snapper_8,Western_Sambo_Deep_2008_snapper)
Western_Sambo_Deep_snapper_10 <- rbind(Western_Sambo_Deep_snapper_9,Western_Sambo_Deep_2009_snapper)
Western_Sambo_Deep_snapper_11<- rbind(Western_Sambo_Deep_snapper_10,Western_Sambo_Deep_2010_snapper)
Western_Sambo_Deep_snapper_12 <- rbind(Western_Sambo_Deep_snapper_11,Western_Sambo_Deep_2011_snapper)
Western_Sambo_Deep_snapper_13 <- rbind(Western_Sambo_Deep_snapper_12,Western_Sambo_Deep_2012_snapper)
Western_Sambo_Deep_snapper_14 <- rbind(Western_Sambo_Deep_snapper_13,Western_Sambo_Deep_2014_snapper)
Western_Sambo_Deep_snapper_15 <- rbind(Western_Sambo_Deep_snapper_14,Western_Sambo_Deep_2016_snapper)
Western_Sambo_Deep_snapper <- rbind(Western_Sambo_Deep_snapper_15,Western_Sambo_Deep_2018_snapper)



Western_Sambo_Deep_grouper_1 <- rbind(Western_Sambo_Deep_1999_grouper,Western_Sambo_Deep_2000_grouper)
Western_Sambo_Deep_grouper_2 <- rbind(Western_Sambo_Deep_grouper_1,Western_Sambo_Deep_2001_grouper)
Western_Sambo_Deep_grouper_3 <- rbind(Western_Sambo_Deep_grouper_2,Western_Sambo_Deep_2002_grouper)
Western_Sambo_Deep_grouper_4 <- rbind(Western_Sambo_Deep_grouper_3,Western_Sambo_Deep_2003_grouper)
Western_Sambo_Deep_grouper_5 <- rbind(Western_Sambo_Deep_grouper_4,Western_Sambo_Deep_2004_grouper)
Western_Sambo_Deep_grouper_6 <- rbind(Western_Sambo_Deep_grouper_5,Western_Sambo_Deep_2005_grouper)
Western_Sambo_Deep_grouper_7 <- rbind(Western_Sambo_Deep_grouper_6,Western_Sambo_Deep_2006_grouper)
Western_Sambo_Deep_grouper_8 <- rbind(Western_Sambo_Deep_grouper_7,Western_Sambo_Deep_2007_grouper)
Western_Sambo_Deep_grouper_9 <- rbind(Western_Sambo_Deep_grouper_8,Western_Sambo_Deep_2008_grouper)
Western_Sambo_Deep_grouper_10 <- rbind(Western_Sambo_Deep_grouper_9,Western_Sambo_Deep_2009_grouper)
Western_Sambo_Deep_grouper_11<- rbind(Western_Sambo_Deep_grouper_10,Western_Sambo_Deep_2010_grouper)
Western_Sambo_Deep_grouper_12 <- rbind(Western_Sambo_Deep_grouper_11,Western_Sambo_Deep_2011_grouper)
Western_Sambo_Deep_grouper_13 <- rbind(Western_Sambo_Deep_grouper_12,Western_Sambo_Deep_2012_grouper)
Western_Sambo_Deep_grouper_14 <- rbind(Western_Sambo_Deep_grouper_13,Western_Sambo_Deep_2014_grouper)
Western_Sambo_Deep_grouper_15 <- rbind(Western_Sambo_Deep_grouper_14,Western_Sambo_Deep_2016_grouper)
Western_Sambo_Deep_grouper <- rbind(Western_Sambo_Deep_grouper_15,Western_Sambo_Deep_2018_grouper)


Western_Sambo_Deep_all <- rbind(Western_Sambo_Deep_snapper,Western_Sambo_Deep_grouper)
Western_Sambo_Deep_all$sitename <- "Western Sambo Deep"

#export(Western_Sambo_Deep_all, "Western_Sambo_Deep/data/Western_Sambo_Deep_snapper_grouper_type.csv")



# Western Sambo Shallow



Western_Sambo_Shallow_1999 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_1999.xls")


Western_Sambo_Shallow_1999_snapper <- merge(Western_Sambo_Shallow_1999, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_1999_grouper <- merge(Western_Sambo_Shallow_1999, grouper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2000 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2000.xls")

Western_Sambo_Shallow_2000_snapper <- merge(Western_Sambo_Shallow_2000, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2000_grouper <- merge(Western_Sambo_Shallow_2000, grouper, by = c("SPECIES_CD"))

Western_Sambo_Shallow_2001 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2001.xls")

Western_Sambo_Shallow_2001_snapper <- merge(Western_Sambo_Shallow_2001, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2001_grouper <- merge(Western_Sambo_Shallow_2001, grouper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2002 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2002.xls")

Western_Sambo_Shallow_2002_snapper <- merge(Western_Sambo_Shallow_2002, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2002_grouper <- merge(Western_Sambo_Shallow_2002, grouper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2003 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2003.xls")

Western_Sambo_Shallow_2003_snapper <- merge(Western_Sambo_Shallow_2003, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2003_grouper <- merge(Western_Sambo_Shallow_2003, grouper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2004 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2004.xls")

Western_Sambo_Shallow_2004_snapper <- merge(Western_Sambo_Shallow_2004, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2004_grouper <- merge(Western_Sambo_Shallow_2004, grouper, by = c("SPECIES_CD"))

Western_Sambo_Shallow_2005 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2005.xls")

Western_Sambo_Shallow_2005_snapper <- merge(Western_Sambo_Shallow_2005, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2005_grouper <- merge(Western_Sambo_Shallow_2005, grouper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2006 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2006.xls")

Western_Sambo_Shallow_2006_snapper <- merge(Western_Sambo_Shallow_2006, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2006_grouper <- merge(Western_Sambo_Shallow_2006, grouper, by = c("SPECIES_CD"))

Western_Sambo_Shallow_2007 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2007.xls")

Western_Sambo_Shallow_2007_snapper <- merge(Western_Sambo_Shallow_2007, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2007_grouper <- merge(Western_Sambo_Shallow_2007, grouper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2008 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2008.xls")

Western_Sambo_Shallow_2008_snapper <- merge(Western_Sambo_Shallow_2008, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2008_grouper <- merge(Western_Sambo_Shallow_2008, grouper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2009 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2009.xls")

Western_Sambo_Shallow_2009_snapper <- merge(Western_Sambo_Shallow_2009, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2009_grouper <- merge(Western_Sambo_Shallow_2009, grouper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2010 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2010.xls")

Western_Sambo_Shallow_2010_snapper <- merge(Western_Sambo_Shallow_2010, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2010_grouper <- merge(Western_Sambo_Shallow_2010, grouper, by = c("SPECIES_CD"))

Western_Sambo_Shallow_2011 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2011.xls")

Western_Sambo_Shallow_2011_snapper <- merge(Western_Sambo_Shallow_2011, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2011_grouper <- merge(Western_Sambo_Shallow_2011, grouper, by = c("SPECIES_CD"))



Western_Sambo_Shallow_2012 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2012.xls")

Western_Sambo_Shallow_2012_snapper <- merge(Western_Sambo_Shallow_2012, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2012_grouper <- merge(Western_Sambo_Shallow_2012, grouper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2014 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2014.xls")

Western_Sambo_Shallow_2014_snapper <- merge(Western_Sambo_Shallow_2014, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2014_grouper <- merge(Western_Sambo_Shallow_2014, grouper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2016 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2016.xls")

Western_Sambo_Shallow_2016_snapper <- merge(Western_Sambo_Shallow_2016, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2016_grouper <- merge(Western_Sambo_Shallow_2016, grouper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2018 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2018.xls")

Western_Sambo_Shallow_2018_snapper <- merge(Western_Sambo_Shallow_2018, snapper, by = c("SPECIES_CD"))


Western_Sambo_Shallow_2018_grouper <- merge(Western_Sambo_Shallow_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Western_Sambo_Shallow_snapper_1 <- rbind(Western_Sambo_Shallow_1999_snapper,Western_Sambo_Shallow_2000_snapper)
Western_Sambo_Shallow_snapper_2 <- rbind(Western_Sambo_Shallow_snapper_1,Western_Sambo_Shallow_2001_snapper)
Western_Sambo_Shallow_snapper_3 <- rbind(Western_Sambo_Shallow_snapper_2,Western_Sambo_Shallow_2002_snapper)
Western_Sambo_Shallow_snapper_4 <- rbind(Western_Sambo_Shallow_snapper_3,Western_Sambo_Shallow_2003_snapper)
Western_Sambo_Shallow_snapper_5 <- rbind(Western_Sambo_Shallow_snapper_4,Western_Sambo_Shallow_2004_snapper)
Western_Sambo_Shallow_snapper_6 <- rbind(Western_Sambo_Shallow_snapper_5,Western_Sambo_Shallow_2005_snapper)
Western_Sambo_Shallow_snapper_7 <- rbind(Western_Sambo_Shallow_snapper_6,Western_Sambo_Shallow_2006_snapper)
Western_Sambo_Shallow_snapper_8 <- rbind(Western_Sambo_Shallow_snapper_7,Western_Sambo_Shallow_2007_snapper)
Western_Sambo_Shallow_snapper_9 <- rbind(Western_Sambo_Shallow_snapper_8,Western_Sambo_Shallow_2008_snapper)
Western_Sambo_Shallow_snapper_10 <- rbind(Western_Sambo_Shallow_snapper_9,Western_Sambo_Shallow_2009_snapper)
Western_Sambo_Shallow_snapper_11<- rbind(Western_Sambo_Shallow_snapper_10,Western_Sambo_Shallow_2010_snapper)
Western_Sambo_Shallow_snapper_12 <- rbind(Western_Sambo_Shallow_snapper_11,Western_Sambo_Shallow_2011_snapper)
Western_Sambo_Shallow_snapper_13 <- rbind(Western_Sambo_Shallow_snapper_12,Western_Sambo_Shallow_2012_snapper)
Western_Sambo_Shallow_snapper_14 <- rbind(Western_Sambo_Shallow_snapper_13,Western_Sambo_Shallow_2014_snapper)
Western_Sambo_Shallow_snapper_15 <- rbind(Western_Sambo_Shallow_snapper_14,Western_Sambo_Shallow_2016_snapper)
Western_Sambo_Shallow_snapper <- rbind(Western_Sambo_Shallow_snapper_15,Western_Sambo_Shallow_2018_snapper)



Western_Sambo_Shallow_grouper_1 <- rbind(Western_Sambo_Shallow_1999_grouper,Western_Sambo_Shallow_2000_grouper)
Western_Sambo_Shallow_grouper_2 <- rbind(Western_Sambo_Shallow_grouper_1,Western_Sambo_Shallow_2001_grouper)
Western_Sambo_Shallow_grouper_3 <- rbind(Western_Sambo_Shallow_grouper_2,Western_Sambo_Shallow_2002_grouper)
Western_Sambo_Shallow_grouper_4 <- rbind(Western_Sambo_Shallow_grouper_3,Western_Sambo_Shallow_2003_grouper)
Western_Sambo_Shallow_grouper_5 <- rbind(Western_Sambo_Shallow_grouper_4,Western_Sambo_Shallow_2004_grouper)
Western_Sambo_Shallow_grouper_6 <- rbind(Western_Sambo_Shallow_grouper_5,Western_Sambo_Shallow_2005_grouper)
Western_Sambo_Shallow_grouper_7 <- rbind(Western_Sambo_Shallow_grouper_6,Western_Sambo_Shallow_2006_grouper)
Western_Sambo_Shallow_grouper_8 <- rbind(Western_Sambo_Shallow_grouper_7,Western_Sambo_Shallow_2007_grouper)
Western_Sambo_Shallow_grouper_9 <- rbind(Western_Sambo_Shallow_grouper_8,Western_Sambo_Shallow_2008_grouper)
Western_Sambo_Shallow_grouper_10 <- rbind(Western_Sambo_Shallow_grouper_9,Western_Sambo_Shallow_2009_grouper)
Western_Sambo_Shallow_grouper_11<- rbind(Western_Sambo_Shallow_grouper_10,Western_Sambo_Shallow_2010_grouper)
Western_Sambo_Shallow_grouper_12 <- rbind(Western_Sambo_Shallow_grouper_11,Western_Sambo_Shallow_2011_grouper)
Western_Sambo_Shallow_grouper_13 <- rbind(Western_Sambo_Shallow_grouper_12,Western_Sambo_Shallow_2012_grouper)
Western_Sambo_Shallow_grouper_14 <- rbind(Western_Sambo_Shallow_grouper_13,Western_Sambo_Shallow_2014_grouper)
Western_Sambo_Shallow_grouper_15 <- rbind(Western_Sambo_Shallow_grouper_14,Western_Sambo_Shallow_2016_grouper)
Western_Sambo_Shallow_grouper <- rbind(Western_Sambo_Shallow_grouper_15,Western_Sambo_Shallow_2018_grouper)


Western_Sambo_Shallow_all <- rbind(Western_Sambo_Shallow_snapper,Western_Sambo_Shallow_grouper)
Western_Sambo_Shallow_all$sitename <- "Western Sambo Shallow"

#export(Western_Sambo_Shallow_all, "Western_Sambo_Shallow/data/Western_Sambo_Shallow_snapper_grouper_type.csv")





### LK combo

LK_reef_all <- rbind(Eastern_Sambo_Deep_all,Eastern_Sambo_Shallow_all,Jaap_Reef_all,Looe_Key_Deep_all,Looe_Key_Shallow_all,Red_Dun_Reef_all,Rock_Key_Deep_all,Rock_Key_Shallow_all,Sand_Key_Deep_all,Sand_Key_Shallow_all,West_Washer_Woman_all,Western_Sambo_Deep_all,Western_Sambo_Shallow_all)

#export(LK_reef_all, "LK_snapper_grouper_type.csv")








### Middle Keys (missing 2004)


setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/MK")


# Alligator Deep


Alligator_Deep_1999 <- import("Alligator_Deep/data/Alligator_Deep_1999.xls")


Alligator_Deep_1999_snapper <- merge(Alligator_Deep_1999, snapper, by = c("SPECIES_CD"))


Alligator_Deep_1999_grouper <- merge(Alligator_Deep_1999, grouper, by = c("SPECIES_CD"))


Alligator_Deep_2000 <- import("Alligator_Deep/data/Alligator_Deep_2000.xls")

Alligator_Deep_2000_snapper <- merge(Alligator_Deep_2000, snapper, by = c("SPECIES_CD"))


Alligator_Deep_2000_grouper <- merge(Alligator_Deep_2000, grouper, by = c("SPECIES_CD"))

Alligator_Deep_2001 <- import("Alligator_Deep/data/Alligator_Deep_2001.xls")

Alligator_Deep_2001_snapper <- merge(Alligator_Deep_2001, snapper, by = c("SPECIES_CD"))


Alligator_Deep_2001_grouper <- merge(Alligator_Deep_2001, grouper, by = c("SPECIES_CD"))


Alligator_Deep_2002 <- import("Alligator_Deep/data/Alligator_Deep_2002.xls")

Alligator_Deep_2002_snapper <- merge(Alligator_Deep_2002, snapper, by = c("SPECIES_CD"))


Alligator_Deep_2002_grouper <- merge(Alligator_Deep_2002, grouper, by = c("SPECIES_CD"))


Alligator_Deep_2003 <- import("Alligator_Deep/data/Alligator_Deep_2003.xls")

Alligator_Deep_2003_snapper <- merge(Alligator_Deep_2003, snapper, by = c("SPECIES_CD"))


Alligator_Deep_2003_grouper <- merge(Alligator_Deep_2003, grouper, by = c("SPECIES_CD"))


# Alligator_Deep_2004 <- import("Alligator_Deep/data/Alligator_Deep_2004.xls")
# 
# Alligator_Deep_2004_snapper <- merge(Alligator_Deep_2004, snapper, by = c("SPECIES_CD"))
# Alligator_Deep_2004_snapper_biomass <- summarise_at(Alligator_Deep_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Alligator_Deep_2004_snapper_biomass$Year <- ('2004')
# Alligator_Deep_2004_snapper_biomass$Reef <- ('Alligator Deep')
# 
# 
# Alligator_Deep_2004_grouper <- merge(Alligator_Deep_2004, grouper, by = c("SPECIES_CD"))
# Alligator_Deep_2004_grouper_biomass <- summarise_at(Alligator_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Alligator_Deep_2004_grouper_biomass$Year <- ('2004')
# Alligator_Deep_2004_grouper_biomass$Reef <- ('Alligator Deep')

Alligator_Deep_2005 <- import("Alligator_Deep/data/Alligator_Deep_2005.xls")

Alligator_Deep_2005_snapper <- merge(Alligator_Deep_2005, snapper, by = c("SPECIES_CD"))


Alligator_Deep_2005_grouper <- merge(Alligator_Deep_2005, grouper, by = c("SPECIES_CD"))


Alligator_Deep_2006 <- import("Alligator_Deep/data/Alligator_Deep_2006.xls")

Alligator_Deep_2006_snapper <- merge(Alligator_Deep_2006, snapper, by = c("SPECIES_CD"))


Alligator_Deep_2006_grouper <- merge(Alligator_Deep_2006, grouper, by = c("SPECIES_CD"))

Alligator_Deep_2007 <- import("Alligator_Deep/data/Alligator_Deep_2007.xls")

Alligator_Deep_2007_snapper <- merge(Alligator_Deep_2007, snapper, by = c("SPECIES_CD"))


Alligator_Deep_2007_grouper <- merge(Alligator_Deep_2007, grouper, by = c("SPECIES_CD"))


Alligator_Deep_2008 <- import("Alligator_Deep/data/Alligator_Deep_2008.xls")

Alligator_Deep_2008_snapper <- merge(Alligator_Deep_2008, snapper, by = c("SPECIES_CD"))


Alligator_Deep_2008_grouper <- merge(Alligator_Deep_2008, grouper, by = c("SPECIES_CD"))


Alligator_Deep_2009 <- import("Alligator_Deep/data/Alligator_Deep_2009.xls")

Alligator_Deep_2009_snapper <- merge(Alligator_Deep_2009, snapper, by = c("SPECIES_CD"))


Alligator_Deep_2009_grouper <- merge(Alligator_Deep_2009, grouper, by = c("SPECIES_CD"))


Alligator_Deep_2010 <- import("Alligator_Deep/data/Alligator_Deep_2010.xls")

Alligator_Deep_2010_snapper <- merge(Alligator_Deep_2010, snapper, by = c("SPECIES_CD"))


Alligator_Deep_2010_grouper <- merge(Alligator_Deep_2010, grouper, by = c("SPECIES_CD"))

Alligator_Deep_2011 <- import("Alligator_Deep/data/Alligator_Deep_2011.xls")

Alligator_Deep_2011_snapper <- merge(Alligator_Deep_2011, snapper, by = c("SPECIES_CD"))


Alligator_Deep_2011_grouper <- merge(Alligator_Deep_2011, grouper, by = c("SPECIES_CD"))



Alligator_Deep_2012 <- import("Alligator_Deep/data/Alligator_Deep_2012.xls")

Alligator_Deep_2012_snapper <- merge(Alligator_Deep_2012, snapper, by = c("SPECIES_CD"))


Alligator_Deep_2012_grouper <- merge(Alligator_Deep_2012, grouper, by = c("SPECIES_CD"))


Alligator_Deep_2014 <- import("Alligator_Deep/data/Alligator_Deep_2014.xls")

Alligator_Deep_2014_snapper <- merge(Alligator_Deep_2014, snapper, by = c("SPECIES_CD"))


Alligator_Deep_2014_grouper <- merge(Alligator_Deep_2014, grouper, by = c("SPECIES_CD"))


Alligator_Deep_2016 <- import("Alligator_Deep/data/Alligator_Deep_2016.xls")

Alligator_Deep_2016_snapper <- merge(Alligator_Deep_2016, snapper, by = c("SPECIES_CD"))


Alligator_Deep_2016_grouper <- merge(Alligator_Deep_2016, grouper, by = c("SPECIES_CD"))


Alligator_Deep_2018 <- import("Alligator_Deep/data/Alligator_Deep_2018.xls")

Alligator_Deep_2018_snapper <- merge(Alligator_Deep_2018, snapper, by = c("SPECIES_CD"))


Alligator_Deep_2018_grouper <- merge(Alligator_Deep_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Alligator_Deep_snapper_1 <- rbind(Alligator_Deep_1999_snapper,Alligator_Deep_2000_snapper)
Alligator_Deep_snapper_2 <- rbind(Alligator_Deep_snapper_1,Alligator_Deep_2001_snapper)
Alligator_Deep_snapper_3 <- rbind(Alligator_Deep_snapper_2,Alligator_Deep_2002_snapper)
Alligator_Deep_snapper_4 <- rbind(Alligator_Deep_snapper_3,Alligator_Deep_2003_snapper)
#Alligator_Deep_snapper_5 <- rbind(Alligator_Deep_snapper_4,Alligator_Deep_2004_snapper)
Alligator_Deep_snapper_6 <- rbind(Alligator_Deep_snapper_4,Alligator_Deep_2005_snapper)
Alligator_Deep_snapper_7 <- rbind(Alligator_Deep_snapper_6,Alligator_Deep_2006_snapper)
Alligator_Deep_snapper_8 <- rbind(Alligator_Deep_snapper_7,Alligator_Deep_2007_snapper)
Alligator_Deep_snapper_9 <- rbind(Alligator_Deep_snapper_8,Alligator_Deep_2008_snapper)
Alligator_Deep_snapper_10 <- rbind(Alligator_Deep_snapper_9,Alligator_Deep_2009_snapper)
Alligator_Deep_snapper_11<- rbind(Alligator_Deep_snapper_10,Alligator_Deep_2010_snapper)
Alligator_Deep_snapper_12 <- rbind(Alligator_Deep_snapper_11,Alligator_Deep_2011_snapper)
Alligator_Deep_snapper_13 <- rbind(Alligator_Deep_snapper_12,Alligator_Deep_2012_snapper)
Alligator_Deep_snapper_14 <- rbind(Alligator_Deep_snapper_13,Alligator_Deep_2014_snapper)
Alligator_Deep_snapper_15 <- rbind(Alligator_Deep_snapper_14,Alligator_Deep_2016_snapper)
Alligator_Deep_snapper_data_combined <- rbind(Alligator_Deep_snapper_15,Alligator_Deep_2018_snapper)



Alligator_Deep_grouper_1 <- rbind(Alligator_Deep_1999_grouper,Alligator_Deep_2000_grouper)
Alligator_Deep_grouper_2 <- rbind(Alligator_Deep_grouper_1,Alligator_Deep_2001_grouper)
Alligator_Deep_grouper_3 <- rbind(Alligator_Deep_grouper_2,Alligator_Deep_2002_grouper)
Alligator_Deep_grouper_4 <- rbind(Alligator_Deep_grouper_3,Alligator_Deep_2003_grouper)
#Alligator_Deep_grouper_5 <- rbind(Alligator_Deep_grouper_4,Alligator_Deep_2004_grouper)
Alligator_Deep_grouper_6 <- rbind(Alligator_Deep_grouper_4,Alligator_Deep_2005_grouper)
Alligator_Deep_grouper_7 <- rbind(Alligator_Deep_grouper_6,Alligator_Deep_2006_grouper)
Alligator_Deep_grouper_8 <- rbind(Alligator_Deep_grouper_7,Alligator_Deep_2007_grouper)
Alligator_Deep_grouper_9 <- rbind(Alligator_Deep_grouper_8,Alligator_Deep_2008_grouper)
Alligator_Deep_grouper_10 <- rbind(Alligator_Deep_grouper_9,Alligator_Deep_2009_grouper)
Alligator_Deep_grouper_11<- rbind(Alligator_Deep_grouper_10,Alligator_Deep_2010_grouper)
Alligator_Deep_grouper_12 <- rbind(Alligator_Deep_grouper_11,Alligator_Deep_2011_grouper)
Alligator_Deep_grouper_13 <- rbind(Alligator_Deep_grouper_12,Alligator_Deep_2012_grouper)
Alligator_Deep_grouper_14 <- rbind(Alligator_Deep_grouper_13,Alligator_Deep_2014_grouper)
Alligator_Deep_grouper_15 <- rbind(Alligator_Deep_grouper_14,Alligator_Deep_2016_grouper)
Alligator_Deep_grouper_data_combined <- rbind(Alligator_Deep_grouper_15,Alligator_Deep_2018_grouper)


Alligator_Deep_all <- rbind(Alligator_Deep_snapper_data_combined,Alligator_Deep_grouper_data_combined)
Alligator_Deep_all$sitename <- "Alligator Deep"

#export(Alligator_Deep_all, "Alligator_Deep/data/Alligator_Deep_snapper_grouper_type.csv")



# Alligator Shallow


Alligator_Shallow_1999 <- import("Alligator_Shallow/data/Alligator_Shallow_1999.xls")


Alligator_Shallow_1999_snapper <- merge(Alligator_Shallow_1999, snapper, by = c("SPECIES_CD"))


Alligator_Shallow_1999_grouper <- merge(Alligator_Shallow_1999, grouper, by = c("SPECIES_CD"))


Alligator_Shallow_2000 <- import("Alligator_Shallow/data/Alligator_Shallow_2000.xls")

Alligator_Shallow_2000_snapper <- merge(Alligator_Shallow_2000, snapper, by = c("SPECIES_CD"))


Alligator_Shallow_2000_grouper <- merge(Alligator_Shallow_2000, grouper, by = c("SPECIES_CD"))

Alligator_Shallow_2001 <- import("Alligator_Shallow/data/Alligator_Shallow_2001.xls")

Alligator_Shallow_2001_snapper <- merge(Alligator_Shallow_2001, snapper, by = c("SPECIES_CD"))


Alligator_Shallow_2001_grouper <- merge(Alligator_Shallow_2001, grouper, by = c("SPECIES_CD"))


Alligator_Shallow_2002 <- import("Alligator_Shallow/data/Alligator_Shallow_2002.xls")

Alligator_Shallow_2002_snapper <- merge(Alligator_Shallow_2002, snapper, by = c("SPECIES_CD"))


Alligator_Shallow_2002_grouper <- merge(Alligator_Shallow_2002, grouper, by = c("SPECIES_CD"))


Alligator_Shallow_2003 <- import("Alligator_Shallow/data/Alligator_Shallow_2003.xls")

Alligator_Shallow_2003_snapper <- merge(Alligator_Shallow_2003, snapper, by = c("SPECIES_CD"))


Alligator_Shallow_2003_grouper <- merge(Alligator_Shallow_2003, grouper, by = c("SPECIES_CD"))


# Alligator_Shallow_2004 <- import("Alligator_Shallow/data/Alligator_Shallow_2004.xls")
# 
# Alligator_Shallow_2004_snapper <- merge(Alligator_Shallow_2004, snapper, by = c("SPECIES_CD"))
# Alligator_Shallow_2004_snapper <- summarise_at(Alligator_Shallow_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Alligator_Shallow_2004_snapper$Year <- ('2004')
# Alligator_Shallow_2004_snapper$Reef <- ('Alligator Shallow')
# 
# 
# Alligator_Shallow_2004_grouper <- merge(Alligator_Shallow_2004, grouper, by = c("SPECIES_CD"))
# Alligator_Shallow_2004_grouper <- summarise_at(Alligator_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Alligator_Shallow_2004_grouper$Year <- ('2004')
# Alligator_Shallow_2004_grouper$Reef <- ('Alligator Shallow')

Alligator_Shallow_2005 <- import("Alligator_Shallow/data/Alligator_Shallow_2005.xls")

Alligator_Shallow_2005_snapper <- merge(Alligator_Shallow_2005, snapper, by = c("SPECIES_CD"))


Alligator_Shallow_2005_grouper <- merge(Alligator_Shallow_2005, grouper, by = c("SPECIES_CD"))


Alligator_Shallow_2006 <- import("Alligator_Shallow/data/Alligator_Shallow_2006.xls")

Alligator_Shallow_2006_snapper <- merge(Alligator_Shallow_2006, snapper, by = c("SPECIES_CD"))


Alligator_Shallow_2006_grouper <- merge(Alligator_Shallow_2006, grouper, by = c("SPECIES_CD"))

Alligator_Shallow_2007 <- import("Alligator_Shallow/data/Alligator_Shallow_2007.xls")

Alligator_Shallow_2007_snapper <- merge(Alligator_Shallow_2007, snapper, by = c("SPECIES_CD"))


Alligator_Shallow_2007_grouper <- merge(Alligator_Shallow_2007, grouper, by = c("SPECIES_CD"))


Alligator_Shallow_2008 <- import("Alligator_Shallow/data/Alligator_Shallow_2008.xls")

Alligator_Shallow_2008_snapper <- merge(Alligator_Shallow_2008, snapper, by = c("SPECIES_CD"))


Alligator_Shallow_2008_grouper <- merge(Alligator_Shallow_2008, grouper, by = c("SPECIES_CD"))


Alligator_Shallow_2009 <- import("Alligator_Shallow/data/Alligator_Shallow_2009.xls")

Alligator_Shallow_2009_snapper <- merge(Alligator_Shallow_2009, snapper, by = c("SPECIES_CD"))


Alligator_Shallow_2009_grouper <- merge(Alligator_Shallow_2009, grouper, by = c("SPECIES_CD"))


Alligator_Shallow_2010 <- import("Alligator_Shallow/data/Alligator_Shallow_2010.xls")

Alligator_Shallow_2010_snapper <- merge(Alligator_Shallow_2010, snapper, by = c("SPECIES_CD"))


Alligator_Shallow_2010_grouper <- merge(Alligator_Shallow_2010, grouper, by = c("SPECIES_CD"))

Alligator_Shallow_2011 <- import("Alligator_Shallow/data/Alligator_Shallow_2011.xls")

Alligator_Shallow_2011_snapper <- merge(Alligator_Shallow_2011, snapper, by = c("SPECIES_CD"))


Alligator_Shallow_2011_grouper <- merge(Alligator_Shallow_2011, grouper, by = c("SPECIES_CD"))



Alligator_Shallow_2012 <- import("Alligator_Shallow/data/Alligator_Shallow_2012.xls")

Alligator_Shallow_2012_snapper <- merge(Alligator_Shallow_2012, snapper, by = c("SPECIES_CD"))


Alligator_Shallow_2012_grouper <- merge(Alligator_Shallow_2012, grouper, by = c("SPECIES_CD"))


Alligator_Shallow_2014 <- import("Alligator_Shallow/data/Alligator_Shallow_2014.xls")

Alligator_Shallow_2014_snapper <- merge(Alligator_Shallow_2014, snapper, by = c("SPECIES_CD"))


Alligator_Shallow_2014_grouper <- merge(Alligator_Shallow_2014, grouper, by = c("SPECIES_CD"))


Alligator_Shallow_2016 <- import("Alligator_Shallow/data/Alligator_Shallow_2016.xls")

Alligator_Shallow_2016_snapper <- merge(Alligator_Shallow_2016, snapper, by = c("SPECIES_CD"))


Alligator_Shallow_2016_grouper <- merge(Alligator_Shallow_2016, grouper, by = c("SPECIES_CD"))


Alligator_Shallow_2018 <- import("Alligator_Shallow/data/Alligator_Shallow_2018.xls")

Alligator_Shallow_2018_snapper <- merge(Alligator_Shallow_2018, snapper, by = c("SPECIES_CD"))


Alligator_Shallow_2018_grouper <- merge(Alligator_Shallow_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Alligator_Shallow_snapper_1 <- rbind(Alligator_Shallow_1999_snapper,Alligator_Shallow_2000_snapper)
Alligator_Shallow_snapper_2 <- rbind(Alligator_Shallow_snapper_1,Alligator_Shallow_2001_snapper)
Alligator_Shallow_snapper_3 <- rbind(Alligator_Shallow_snapper_2,Alligator_Shallow_2002_snapper)
Alligator_Shallow_snapper_4 <- rbind(Alligator_Shallow_snapper_3,Alligator_Shallow_2003_snapper)
#Alligator_Shallow_snapper_5 <- rbind(Alligator_Shallow_snapper_4,Alligator_Shallow_2004_snapper)
Alligator_Shallow_snapper_6 <- rbind(Alligator_Shallow_snapper_4,Alligator_Shallow_2005_snapper)
Alligator_Shallow_snapper_7 <- rbind(Alligator_Shallow_snapper_6,Alligator_Shallow_2006_snapper)
Alligator_Shallow_snapper_8 <- rbind(Alligator_Shallow_snapper_7,Alligator_Shallow_2007_snapper)
Alligator_Shallow_snapper_9 <- rbind(Alligator_Shallow_snapper_8,Alligator_Shallow_2008_snapper)
Alligator_Shallow_snapper_10 <- rbind(Alligator_Shallow_snapper_9,Alligator_Shallow_2009_snapper)
Alligator_Shallow_snapper_11<- rbind(Alligator_Shallow_snapper_10,Alligator_Shallow_2010_snapper)
Alligator_Shallow_snapper_12 <- rbind(Alligator_Shallow_snapper_11,Alligator_Shallow_2011_snapper)
Alligator_Shallow_snapper_13 <- rbind(Alligator_Shallow_snapper_12,Alligator_Shallow_2012_snapper)
Alligator_Shallow_snapper_14 <- rbind(Alligator_Shallow_snapper_13,Alligator_Shallow_2014_snapper)
Alligator_Shallow_snapper_15 <- rbind(Alligator_Shallow_snapper_14,Alligator_Shallow_2016_snapper)
Alligator_Shallow_snapper_data_combined <- rbind(Alligator_Shallow_snapper_15,Alligator_Shallow_2018_snapper)



Alligator_Shallow_grouper_1 <- rbind(Alligator_Shallow_1999_grouper,Alligator_Shallow_2000_grouper)
Alligator_Shallow_grouper_2 <- rbind(Alligator_Shallow_grouper_1,Alligator_Shallow_2001_grouper)
Alligator_Shallow_grouper_3 <- rbind(Alligator_Shallow_grouper_2,Alligator_Shallow_2002_grouper)
Alligator_Shallow_grouper_4 <- rbind(Alligator_Shallow_grouper_3,Alligator_Shallow_2003_grouper)
#Alligator_Shallow_grouper_5 <- rbind(Alligator_Shallow_grouper_4,Alligator_Shallow_2004_grouper)
Alligator_Shallow_grouper_6 <- rbind(Alligator_Shallow_grouper_4,Alligator_Shallow_2005_grouper)
Alligator_Shallow_grouper_7 <- rbind(Alligator_Shallow_grouper_6,Alligator_Shallow_2006_grouper)
Alligator_Shallow_grouper_8 <- rbind(Alligator_Shallow_grouper_7,Alligator_Shallow_2007_grouper)
Alligator_Shallow_grouper_9 <- rbind(Alligator_Shallow_grouper_8,Alligator_Shallow_2008_grouper)
Alligator_Shallow_grouper_10 <- rbind(Alligator_Shallow_grouper_9,Alligator_Shallow_2009_grouper)
Alligator_Shallow_grouper_11<- rbind(Alligator_Shallow_grouper_10,Alligator_Shallow_2010_grouper)
Alligator_Shallow_grouper_12 <- rbind(Alligator_Shallow_grouper_11,Alligator_Shallow_2011_grouper)
Alligator_Shallow_grouper_13 <- rbind(Alligator_Shallow_grouper_12,Alligator_Shallow_2012_grouper)
Alligator_Shallow_grouper_14 <- rbind(Alligator_Shallow_grouper_13,Alligator_Shallow_2014_grouper)
Alligator_Shallow_grouper_15 <- rbind(Alligator_Shallow_grouper_14,Alligator_Shallow_2016_grouper)
Alligator_Shallow_grouper_data_combined <- rbind(Alligator_Shallow_grouper_15,Alligator_Shallow_2018_grouper)



Alligator_Shallow_all <- rbind(Alligator_Shallow_snapper_data_combined,Alligator_Shallow_grouper_data_combined)
Alligator_Shallow_all$sitename <- "Alligator Shallow"

#export(Alligator_Shallow_all, "Alligator_Shallow/data/Alligator_Shallow_snapper_grouper_type.csv")




# Dustan Rocks 

Dustan_Rocks_1999 <- import("Dustan_Rocks/data/Dustan_Rocks_1999.xls")


Dustan_Rocks_1999_snapper <- merge(Dustan_Rocks_1999, snapper, by = c("SPECIES_CD"))


Dustan_Rocks_1999_grouper <- merge(Dustan_Rocks_1999, grouper, by = c("SPECIES_CD"))


Dustan_Rocks_2000 <- import("Dustan_Rocks/data/Dustan_Rocks_2000.xls")

Dustan_Rocks_2000_snapper <- merge(Dustan_Rocks_2000, snapper, by = c("SPECIES_CD"))


Dustan_Rocks_2000_grouper <- merge(Dustan_Rocks_2000, grouper, by = c("SPECIES_CD"))

Dustan_Rocks_2001 <- import("Dustan_Rocks/data/Dustan_Rocks_2001.xls")

Dustan_Rocks_2001_snapper <- merge(Dustan_Rocks_2001, snapper, by = c("SPECIES_CD"))


Dustan_Rocks_2001_grouper <- merge(Dustan_Rocks_2001, grouper, by = c("SPECIES_CD"))


Dustan_Rocks_2002 <- import("Dustan_Rocks/data/Dustan_Rocks_2002.xls")

Dustan_Rocks_2002_snapper <- merge(Dustan_Rocks_2002, snapper, by = c("SPECIES_CD"))


Dustan_Rocks_2002_grouper <- merge(Dustan_Rocks_2002, grouper, by = c("SPECIES_CD"))


Dustan_Rocks_2003 <- import("Dustan_Rocks/data/Dustan_Rocks_2003.xls")

Dustan_Rocks_2003_snapper <- merge(Dustan_Rocks_2003, snapper, by = c("SPECIES_CD"))


Dustan_Rocks_2003_grouper <- merge(Dustan_Rocks_2003, grouper, by = c("SPECIES_CD"))


# Dustan_Rocks_2004 <- import("Dustan_Rocks/data/Dustan_Rocks_2004.xls")
# 
# Dustan_Rocks_2004_snapper <- merge(Dustan_Rocks_2004, snapper, by = c("SPECIES_CD"))
# Dustan_Rocks_2004_snapper <- summarise_at(Dustan_Rocks_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Dustan_Rocks_2004_snapper$Year <- ('2004')
# Dustan_Rocks_2004_snapper$Reef <- ('Dustan Rocks')
# 
# 
# Dustan_Rocks_2004_grouper <- merge(Dustan_Rocks_2004, grouper, by = c("SPECIES_CD"))
# Dustan_Rocks_2004_grouper <- summarise_at(Dustan_Rocks_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Dustan_Rocks_2004_grouper$Year <- ('2004')
# Dustan_Rocks_2004_grouper$Reef <- ('Dustan Rocks')

Dustan_Rocks_2005 <- import("Dustan_Rocks/data/Dustan_Rocks_2005.xls")

Dustan_Rocks_2005_snapper <- merge(Dustan_Rocks_2005, snapper, by = c("SPECIES_CD"))


Dustan_Rocks_2005_grouper <- merge(Dustan_Rocks_2005, grouper, by = c("SPECIES_CD"))


Dustan_Rocks_2006 <- import("Dustan_Rocks/data/Dustan_Rocks_2006.xls")

Dustan_Rocks_2006_snapper <- merge(Dustan_Rocks_2006, snapper, by = c("SPECIES_CD"))


Dustan_Rocks_2006_grouper <- merge(Dustan_Rocks_2006, grouper, by = c("SPECIES_CD"))

Dustan_Rocks_2007 <- import("Dustan_Rocks/data/Dustan_Rocks_2007.xls")

Dustan_Rocks_2007_snapper <- merge(Dustan_Rocks_2007, snapper, by = c("SPECIES_CD"))


Dustan_Rocks_2007_grouper <- merge(Dustan_Rocks_2007, grouper, by = c("SPECIES_CD"))


Dustan_Rocks_2008 <- import("Dustan_Rocks/data/Dustan_Rocks_2008.xls")

Dustan_Rocks_2008_snapper <- merge(Dustan_Rocks_2008, snapper, by = c("SPECIES_CD"))


Dustan_Rocks_2008_grouper <- merge(Dustan_Rocks_2008, grouper, by = c("SPECIES_CD"))


Dustan_Rocks_2009 <- import("Dustan_Rocks/data/Dustan_Rocks_2009.xls")

Dustan_Rocks_2009_snapper <- merge(Dustan_Rocks_2009, snapper, by = c("SPECIES_CD"))


Dustan_Rocks_2009_grouper <- merge(Dustan_Rocks_2009, grouper, by = c("SPECIES_CD"))


Dustan_Rocks_2010 <- import("Dustan_Rocks/data/Dustan_Rocks_2010.xls")

Dustan_Rocks_2010_snapper <- merge(Dustan_Rocks_2010, snapper, by = c("SPECIES_CD"))


Dustan_Rocks_2010_grouper <- merge(Dustan_Rocks_2010, grouper, by = c("SPECIES_CD"))

Dustan_Rocks_2011 <- import("Dustan_Rocks/data/Dustan_Rocks_2011.xls")

Dustan_Rocks_2011_snapper <- merge(Dustan_Rocks_2011, snapper, by = c("SPECIES_CD"))


Dustan_Rocks_2011_grouper <- merge(Dustan_Rocks_2011, grouper, by = c("SPECIES_CD"))



Dustan_Rocks_2012 <- import("Dustan_Rocks/data/Dustan_Rocks_2012.xls")

Dustan_Rocks_2012_snapper <- merge(Dustan_Rocks_2012, snapper, by = c("SPECIES_CD"))


Dustan_Rocks_2012_grouper <- merge(Dustan_Rocks_2012, grouper, by = c("SPECIES_CD"))


Dustan_Rocks_2014 <- import("Dustan_Rocks/data/Dustan_Rocks_2014.xls")

Dustan_Rocks_2014_snapper <- merge(Dustan_Rocks_2014, snapper, by = c("SPECIES_CD"))


Dustan_Rocks_2014_grouper <- merge(Dustan_Rocks_2014, grouper, by = c("SPECIES_CD"))


Dustan_Rocks_2016 <- import("Dustan_Rocks/data/Dustan_Rocks_2016.xls")

Dustan_Rocks_2016_snapper <- merge(Dustan_Rocks_2016, snapper, by = c("SPECIES_CD"))


Dustan_Rocks_2016_grouper <- merge(Dustan_Rocks_2016, grouper, by = c("SPECIES_CD"))


Dustan_Rocks_2018 <- import("Dustan_Rocks/data/Dustan_Rocks_2018.xls")

Dustan_Rocks_2018_snapper <- merge(Dustan_Rocks_2018, snapper, by = c("SPECIES_CD"))


Dustan_Rocks_2018_grouper <- merge(Dustan_Rocks_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Dustan_Rocks_snapper_1 <- rbind(Dustan_Rocks_1999_snapper,Dustan_Rocks_2000_snapper)
Dustan_Rocks_snapper_2 <- rbind(Dustan_Rocks_snapper_1,Dustan_Rocks_2001_snapper)
Dustan_Rocks_snapper_3 <- rbind(Dustan_Rocks_snapper_2,Dustan_Rocks_2002_snapper)
Dustan_Rocks_snapper_4 <- rbind(Dustan_Rocks_snapper_3,Dustan_Rocks_2003_snapper)
#Dustan_Rocks_snapper_5 <- rbind(Dustan_Rocks_snapper_4,Dustan_Rocks_2004_snapper)
Dustan_Rocks_snapper_6 <- rbind(Dustan_Rocks_snapper_4,Dustan_Rocks_2005_snapper)
Dustan_Rocks_snapper_7 <- rbind(Dustan_Rocks_snapper_6,Dustan_Rocks_2006_snapper)
Dustan_Rocks_snapper_8 <- rbind(Dustan_Rocks_snapper_7,Dustan_Rocks_2007_snapper)
Dustan_Rocks_snapper_9 <- rbind(Dustan_Rocks_snapper_8,Dustan_Rocks_2008_snapper)
Dustan_Rocks_snapper_10 <- rbind(Dustan_Rocks_snapper_9,Dustan_Rocks_2009_snapper)
Dustan_Rocks_snapper_11<- rbind(Dustan_Rocks_snapper_10,Dustan_Rocks_2010_snapper)
Dustan_Rocks_snapper_12 <- rbind(Dustan_Rocks_snapper_11,Dustan_Rocks_2011_snapper)
Dustan_Rocks_snapper_13 <- rbind(Dustan_Rocks_snapper_12,Dustan_Rocks_2012_snapper)
Dustan_Rocks_snapper_14 <- rbind(Dustan_Rocks_snapper_13,Dustan_Rocks_2014_snapper)
Dustan_Rocks_snapper_15 <- rbind(Dustan_Rocks_snapper_14,Dustan_Rocks_2016_snapper)
Dustan_Rocks_snapper_data_combined <- rbind(Dustan_Rocks_snapper_15,Dustan_Rocks_2018_snapper)



Dustan_Rocks_grouper_1 <- rbind(Dustan_Rocks_1999_grouper,Dustan_Rocks_2000_grouper)
Dustan_Rocks_grouper_2 <- rbind(Dustan_Rocks_grouper_1,Dustan_Rocks_2001_grouper)
Dustan_Rocks_grouper_3 <- rbind(Dustan_Rocks_grouper_2,Dustan_Rocks_2002_grouper)
Dustan_Rocks_grouper_4 <- rbind(Dustan_Rocks_grouper_3,Dustan_Rocks_2003_grouper)
#Dustan_Rocks_grouper_5 <- rbind(Dustan_Rocks_grouper_4,Dustan_Rocks_2004_grouper)
Dustan_Rocks_grouper_6 <- rbind(Dustan_Rocks_grouper_4,Dustan_Rocks_2005_grouper)
Dustan_Rocks_grouper_7 <- rbind(Dustan_Rocks_grouper_6,Dustan_Rocks_2006_grouper)
Dustan_Rocks_grouper_8 <- rbind(Dustan_Rocks_grouper_7,Dustan_Rocks_2007_grouper)
Dustan_Rocks_grouper_9 <- rbind(Dustan_Rocks_grouper_8,Dustan_Rocks_2008_grouper)
Dustan_Rocks_grouper_10 <- rbind(Dustan_Rocks_grouper_9,Dustan_Rocks_2009_grouper)
Dustan_Rocks_grouper_11<- rbind(Dustan_Rocks_grouper_10,Dustan_Rocks_2010_grouper)
Dustan_Rocks_grouper_12 <- rbind(Dustan_Rocks_grouper_11,Dustan_Rocks_2011_grouper)
Dustan_Rocks_grouper_13 <- rbind(Dustan_Rocks_grouper_12,Dustan_Rocks_2012_grouper)
Dustan_Rocks_grouper_14 <- rbind(Dustan_Rocks_grouper_13,Dustan_Rocks_2014_grouper)
Dustan_Rocks_grouper_15 <- rbind(Dustan_Rocks_grouper_14,Dustan_Rocks_2016_grouper)
Dustan_Rocks_grouper_data_combined <- rbind(Dustan_Rocks_grouper_15,Dustan_Rocks_2018_grouper)


Dustan_Rocks_all <- rbind(Dustan_Rocks_snapper_data_combined,Dustan_Rocks_grouper_data_combined)
Dustan_Rocks_all$sitename <- "Dustan Rocks"

#export(Dustan_Rocks_all, "Dustan_Rocks/data/Dustan_Rocks_snapper_grouper_type.csv")




# Long Key 

Long_Key_1999 <- import("Long_Key/data/Long_Key_1999.xls")


Long_Key_1999_snapper <- merge(Long_Key_1999, snapper, by = c("SPECIES_CD"))


Long_Key_1999_grouper <- merge(Long_Key_1999, grouper, by = c("SPECIES_CD"))


Long_Key_2000 <- import("Long_Key/data/Long_Key_2000.xls")

Long_Key_2000_snapper <- merge(Long_Key_2000, snapper, by = c("SPECIES_CD"))


Long_Key_2000_grouper <- merge(Long_Key_2000, grouper, by = c("SPECIES_CD"))

Long_Key_2001 <- import("Long_Key/data/Long_Key_2001.xls")

Long_Key_2001_snapper <- merge(Long_Key_2001, snapper, by = c("SPECIES_CD"))


Long_Key_2001_grouper <- merge(Long_Key_2001, grouper, by = c("SPECIES_CD"))


Long_Key_2002 <- import("Long_Key/data/Long_Key_2002.xls")

Long_Key_2002_snapper <- merge(Long_Key_2002, snapper, by = c("SPECIES_CD"))


Long_Key_2002_grouper <- merge(Long_Key_2002, grouper, by = c("SPECIES_CD"))


Long_Key_2003 <- import("Long_Key/data/Long_Key_2003.xls")

Long_Key_2003_snapper <- merge(Long_Key_2003, snapper, by = c("SPECIES_CD"))


Long_Key_2003_grouper <- merge(Long_Key_2003, grouper, by = c("SPECIES_CD"))


# Long_Key_2004 <- import("Long_Key/data/Long_Key_2004.xls")
# 
# Long_Key_2004_snapper <- merge(Long_Key_2004, snapper, by = c("SPECIES_CD"))
# Long_Key_2004_snapper <- summarise_at(Long_Key_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Long_Key_2004_snapper$Year <- ('2004')
# Long_Key_2004_snapper$Reef <- ('Long Key')
# 
# 
# Long_Key_2004_grouper <- merge(Long_Key_2004, grouper, by = c("SPECIES_CD"))
# Long_Key_2004_grouper <- summarise_at(Long_Key_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Long_Key_2004_grouper$Year <- ('2004')
# Long_Key_2004_grouper$Reef <- ('Long Key')

Long_Key_2005 <- import("Long_Key/data/Long_Key_2005.xls")

Long_Key_2005_snapper <- merge(Long_Key_2005, snapper, by = c("SPECIES_CD"))


Long_Key_2005_grouper <- merge(Long_Key_2005, grouper, by = c("SPECIES_CD"))


Long_Key_2006 <- import("Long_Key/data/Long_Key_2006.xls")

Long_Key_2006_snapper <- merge(Long_Key_2006, snapper, by = c("SPECIES_CD"))


Long_Key_2006_grouper <- merge(Long_Key_2006, grouper, by = c("SPECIES_CD"))

Long_Key_2007 <- import("Long_Key/data/Long_Key_2007.xls")

Long_Key_2007_snapper <- merge(Long_Key_2007, snapper, by = c("SPECIES_CD"))


Long_Key_2007_grouper <- merge(Long_Key_2007, grouper, by = c("SPECIES_CD"))


Long_Key_2008 <- import("Long_Key/data/Long_Key_2008.xls")

Long_Key_2008_snapper <- merge(Long_Key_2008, snapper, by = c("SPECIES_CD"))


Long_Key_2008_grouper <- merge(Long_Key_2008, grouper, by = c("SPECIES_CD"))


Long_Key_2009 <- import("Long_Key/data/Long_Key_2009.xls")

Long_Key_2009_snapper <- merge(Long_Key_2009, snapper, by = c("SPECIES_CD"))


Long_Key_2009_grouper <- merge(Long_Key_2009, grouper, by = c("SPECIES_CD"))


Long_Key_2010 <- import("Long_Key/data/Long_Key_2010.xls")

Long_Key_2010_snapper <- merge(Long_Key_2010, snapper, by = c("SPECIES_CD"))


Long_Key_2010_grouper <- merge(Long_Key_2010, grouper, by = c("SPECIES_CD"))

Long_Key_2011 <- import("Long_Key/data/Long_Key_2011.xls")

Long_Key_2011_snapper <- merge(Long_Key_2011, snapper, by = c("SPECIES_CD"))


Long_Key_2011_grouper <- merge(Long_Key_2011, grouper, by = c("SPECIES_CD"))



Long_Key_2012 <- import("Long_Key/data/Long_Key_2012.xls")

Long_Key_2012_snapper <- merge(Long_Key_2012, snapper, by = c("SPECIES_CD"))


Long_Key_2012_grouper <- merge(Long_Key_2012, grouper, by = c("SPECIES_CD"))


Long_Key_2014 <- import("Long_Key/data/Long_Key_2014.xls")

Long_Key_2014_snapper <- merge(Long_Key_2014, snapper, by = c("SPECIES_CD"))


Long_Key_2014_grouper <- merge(Long_Key_2014, grouper, by = c("SPECIES_CD"))


Long_Key_2016 <- import("Long_Key/data/Long_Key_2016.xls")

Long_Key_2016_snapper <- merge(Long_Key_2016, snapper, by = c("SPECIES_CD"))


Long_Key_2016_grouper <- merge(Long_Key_2016, grouper, by = c("SPECIES_CD"))


Long_Key_2018 <- import("Long_Key/data/Long_Key_2018.xls")

Long_Key_2018_snapper <- merge(Long_Key_2018, snapper, by = c("SPECIES_CD"))


Long_Key_2018_grouper <- merge(Long_Key_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Long_Key_snapper_1 <- rbind(Long_Key_1999_snapper,Long_Key_2000_snapper)
Long_Key_snapper_2 <- rbind(Long_Key_snapper_1,Long_Key_2001_snapper)
Long_Key_snapper_3 <- rbind(Long_Key_snapper_2,Long_Key_2002_snapper)
Long_Key_snapper_4 <- rbind(Long_Key_snapper_3,Long_Key_2003_snapper)
#Long_Key_snapper_5 <- rbind(Long_Key_snapper_4,Long_Key_2004_snapper)
Long_Key_snapper_6 <- rbind(Long_Key_snapper_4,Long_Key_2005_snapper)
Long_Key_snapper_7 <- rbind(Long_Key_snapper_6,Long_Key_2006_snapper)
Long_Key_snapper_8 <- rbind(Long_Key_snapper_7,Long_Key_2007_snapper)
Long_Key_snapper_9 <- rbind(Long_Key_snapper_8,Long_Key_2008_snapper)
Long_Key_snapper_10 <- rbind(Long_Key_snapper_9,Long_Key_2009_snapper)
Long_Key_snapper_11<- rbind(Long_Key_snapper_10,Long_Key_2010_snapper)
Long_Key_snapper_12 <- rbind(Long_Key_snapper_11,Long_Key_2011_snapper)
Long_Key_snapper_13 <- rbind(Long_Key_snapper_12,Long_Key_2012_snapper)
Long_Key_snapper_14 <- rbind(Long_Key_snapper_13,Long_Key_2014_snapper)
Long_Key_snapper_15 <- rbind(Long_Key_snapper_14,Long_Key_2016_snapper)
Long_Key_snapper_data_combined <- rbind(Long_Key_snapper_15,Long_Key_2018_snapper)



Long_Key_grouper_1 <- rbind(Long_Key_1999_grouper,Long_Key_2000_grouper)
Long_Key_grouper_2 <- rbind(Long_Key_grouper_1,Long_Key_2001_grouper)
Long_Key_grouper_3 <- rbind(Long_Key_grouper_2,Long_Key_2002_grouper)
Long_Key_grouper_4 <- rbind(Long_Key_grouper_3,Long_Key_2003_grouper)
#Long_Key_grouper_5 <- rbind(Long_Key_grouper_4,Long_Key_2004_grouper)
Long_Key_grouper_6 <- rbind(Long_Key_grouper_4,Long_Key_2005_grouper)
Long_Key_grouper_7 <- rbind(Long_Key_grouper_6,Long_Key_2006_grouper)
Long_Key_grouper_8 <- rbind(Long_Key_grouper_7,Long_Key_2007_grouper)
Long_Key_grouper_9 <- rbind(Long_Key_grouper_8,Long_Key_2008_grouper)
Long_Key_grouper_10 <- rbind(Long_Key_grouper_9,Long_Key_2009_grouper)
Long_Key_grouper_11<- rbind(Long_Key_grouper_10,Long_Key_2010_grouper)
Long_Key_grouper_12 <- rbind(Long_Key_grouper_11,Long_Key_2011_grouper)
Long_Key_grouper_13 <- rbind(Long_Key_grouper_12,Long_Key_2012_grouper)
Long_Key_grouper_14 <- rbind(Long_Key_grouper_13,Long_Key_2014_grouper)
Long_Key_grouper_15 <- rbind(Long_Key_grouper_14,Long_Key_2016_grouper)
Long_Key_grouper_data_combined <- rbind(Long_Key_grouper_15,Long_Key_2018_grouper)


Long_Key_all <- rbind(Long_Key_snapper_data_combined,Long_Key_grouper_data_combined)
Long_Key_all$sitename <- "Long Key"

#export(Long_Key_all, "Long_Key/data/Long_Key_snapper_grouper_type.csv")





# Molasses_Keys (no data)

Molasses_Keys_1999 <- import("Molasses_Keys/data/Molasses_Keys_1999.xls")


Molasses_Keys_1999_snapper <- merge(Molasses_Keys_1999, snapper, by = c("SPECIES_CD"))


Molasses_Keys_1999_grouper <- merge(Molasses_Keys_1999, grouper, by = c("SPECIES_CD"))


Molasses_Keys_2000 <- import("Molasses_Keys/data/Molasses_Keys_2000.xls")

Molasses_Keys_2000_snapper <- merge(Molasses_Keys_2000, snapper, by = c("SPECIES_CD"))


Molasses_Keys_2000_grouper <- merge(Molasses_Keys_2000, grouper, by = c("SPECIES_CD"))

Molasses_Keys_2001 <- import("Molasses_Keys/data/Molasses_Keys_2001.xls")

Molasses_Keys_2001_snapper <- merge(Molasses_Keys_2001, snapper, by = c("SPECIES_CD"))


Molasses_Keys_2001_grouper <- merge(Molasses_Keys_2001, grouper, by = c("SPECIES_CD"))


Molasses_Keys_2002 <- import("Molasses_Keys/data/Molasses_Keys_2002.xls")

Molasses_Keys_2002_snapper <- merge(Molasses_Keys_2002, snapper, by = c("SPECIES_CD"))


Molasses_Keys_2002_grouper <- merge(Molasses_Keys_2002, grouper, by = c("SPECIES_CD"))


Molasses_Keys_2003 <- import("Molasses_Keys/data/Molasses_Keys_2003.xls")

Molasses_Keys_2003_snapper <- merge(Molasses_Keys_2003, snapper, by = c("SPECIES_CD"))


Molasses_Keys_2003_grouper <- merge(Molasses_Keys_2003, grouper, by = c("SPECIES_CD"))


# Molasses_Keys_2004 <- import("Molasses_Keys/data/Molasses_Keys_2004.xls")
# 
# Molasses_Keys_2004_snapper <- merge(Molasses_Keys_2004, snapper, by = c("SPECIES_CD"))
# Molasses_Keys_2004_snapper <- summarise_at(Molasses_Keys_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Molasses_Keys_2004_snapper$Year <- ('2004')
# Molasses_Keys_2004_snapper$Reef <- ('Molasses Keys')
# 
# 
# Molasses_Keys_2004_grouper <- merge(Molasses_Keys_2004, grouper, by = c("SPECIES_CD"))
# Molasses_Keys_2004_grouper <- summarise_at(Molasses_Keys_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Molasses_Keys_2004_grouper$Year <- ('2004')
# Molasses_Keys_2004_grouper$Reef <- ('Molasses Keys')

Molasses_Keys_2005 <- import("Molasses_Keys/data/Molasses_Keys_2005.xls")

Molasses_Keys_2005_snapper <- merge(Molasses_Keys_2005, snapper, by = c("SPECIES_CD"))


Molasses_Keys_2005_grouper <- merge(Molasses_Keys_2005, grouper, by = c("SPECIES_CD"))


Molasses_Keys_2006 <- import("Molasses_Keys/data/Molasses_Keys_2006.xls")

Molasses_Keys_2006_snapper <- merge(Molasses_Keys_2006, snapper, by = c("SPECIES_CD"))


Molasses_Keys_2006_grouper <- merge(Molasses_Keys_2006, grouper, by = c("SPECIES_CD"))

Molasses_Keys_2007 <- import("Molasses_Keys/data/Molasses_Keys_2007.xls")

Molasses_Keys_2007_snapper <- merge(Molasses_Keys_2007, snapper, by = c("SPECIES_CD"))


Molasses_Keys_2007_grouper <- merge(Molasses_Keys_2007, grouper, by = c("SPECIES_CD"))


Molasses_Keys_2008 <- import("Molasses_Keys/data/Molasses_Keys_2008.xls")

Molasses_Keys_2008_snapper <- merge(Molasses_Keys_2008, snapper, by = c("SPECIES_CD"))


Molasses_Keys_2008_grouper <- merge(Molasses_Keys_2008, grouper, by = c("SPECIES_CD"))


Molasses_Keys_2009 <- import("Molasses_Keys/data/Molasses_Keys_2009.xls")

Molasses_Keys_2009_snapper <- merge(Molasses_Keys_2009, snapper, by = c("SPECIES_CD"))


Molasses_Keys_2009_grouper <- merge(Molasses_Keys_2009, grouper, by = c("SPECIES_CD"))


Molasses_Keys_2010 <- import("Molasses_Keys/data/Molasses_Keys_2010.xls")

Molasses_Keys_2010_snapper <- merge(Molasses_Keys_2010, snapper, by = c("SPECIES_CD"))


Molasses_Keys_2010_grouper <- merge(Molasses_Keys_2010, grouper, by = c("SPECIES_CD"))

Molasses_Keys_2011 <- import("Molasses_Keys/data/Molasses_Keys_2011.xls")

Molasses_Keys_2011_snapper <- merge(Molasses_Keys_2011, snapper, by = c("SPECIES_CD"))


Molasses_Keys_2011_grouper <- merge(Molasses_Keys_2011, grouper, by = c("SPECIES_CD"))



Molasses_Keys_2012 <- import("Molasses_Keys/data/Molasses_Keys_2012.xls")

Molasses_Keys_2012_snapper <- merge(Molasses_Keys_2012, snapper, by = c("SPECIES_CD"))


Molasses_Keys_2012_grouper <- merge(Molasses_Keys_2012, grouper, by = c("SPECIES_CD"))


Molasses_Keys_2014 <- import("Molasses_Keys/data/Molasses_Keys_2014.xls")

Molasses_Keys_2014_snapper <- merge(Molasses_Keys_2014, snapper, by = c("SPECIES_CD"))


Molasses_Keys_2014_grouper <- merge(Molasses_Keys_2014, grouper, by = c("SPECIES_CD"))


Molasses_Keys_2016 <- import("Molasses_Keys/data/Molasses_Keys_2016.xls")

Molasses_Keys_2016_snapper <- merge(Molasses_Keys_2016, snapper, by = c("SPECIES_CD"))


Molasses_Keys_2016_grouper <- merge(Molasses_Keys_2016, grouper, by = c("SPECIES_CD"))


Molasses_Keys_2018 <- import("Molasses_Keys/data/Molasses_Keys_2018.xls")

Molasses_Keys_2018_snapper <- merge(Molasses_Keys_2018, snapper, by = c("SPECIES_CD"))


Molasses_Keys_2018_grouper <- merge(Molasses_Keys_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Molasses_Keys_snapper_1 <- rbind(Molasses_Keys_1999_snapper,Molasses_Keys_2000_snapper)
Molasses_Keys_snapper_2 <- rbind(Molasses_Keys_snapper_1,Molasses_Keys_2001_snapper)
Molasses_Keys_snapper_3 <- rbind(Molasses_Keys_snapper_2,Molasses_Keys_2002_snapper)
Molasses_Keys_snapper_4 <- rbind(Molasses_Keys_snapper_3,Molasses_Keys_2003_snapper)
#Molasses_Keys_snapper_5 <- rbind(Molasses_Keys_snapper_4,Molasses_Keys_2004_snapper)
Molasses_Keys_snapper_6 <- rbind(Molasses_Keys_snapper_4,Molasses_Keys_2005_snapper)
Molasses_Keys_snapper_7 <- rbind(Molasses_Keys_snapper_6,Molasses_Keys_2006_snapper)
Molasses_Keys_snapper_8 <- rbind(Molasses_Keys_snapper_7,Molasses_Keys_2007_snapper)
Molasses_Keys_snapper_9 <- rbind(Molasses_Keys_snapper_8,Molasses_Keys_2008_snapper)
Molasses_Keys_snapper_10 <- rbind(Molasses_Keys_snapper_9,Molasses_Keys_2009_snapper)
Molasses_Keys_snapper_11<- rbind(Molasses_Keys_snapper_10,Molasses_Keys_2010_snapper)
Molasses_Keys_snapper_12 <- rbind(Molasses_Keys_snapper_11,Molasses_Keys_2011_snapper)
Molasses_Keys_snapper_13 <- rbind(Molasses_Keys_snapper_12,Molasses_Keys_2012_snapper)
Molasses_Keys_snapper_14 <- rbind(Molasses_Keys_snapper_13,Molasses_Keys_2014_snapper)
Molasses_Keys_snapper_15 <- rbind(Molasses_Keys_snapper_14,Molasses_Keys_2016_snapper)
Molasses_Keys_snapper_data_combined <- rbind(Molasses_Keys_snapper_15,Molasses_Keys_2018_snapper)



Molasses_Keys_grouper_1 <- rbind(Molasses_Keys_1999_grouper,Molasses_Keys_2000_grouper)
Molasses_Keys_grouper_2 <- rbind(Molasses_Keys_grouper_1,Molasses_Keys_2001_grouper)
Molasses_Keys_grouper_3 <- rbind(Molasses_Keys_grouper_2,Molasses_Keys_2002_grouper)
Molasses_Keys_grouper_4 <- rbind(Molasses_Keys_grouper_3,Molasses_Keys_2003_grouper)
#Molasses_Keys_grouper_5 <- rbind(Molasses_Keys_grouper_4,Molasses_Keys_2004_grouper)
Molasses_Keys_grouper_6 <- rbind(Molasses_Keys_grouper_4,Molasses_Keys_2005_grouper)
Molasses_Keys_grouper_7 <- rbind(Molasses_Keys_grouper_6,Molasses_Keys_2006_grouper)
Molasses_Keys_grouper_8 <- rbind(Molasses_Keys_grouper_7,Molasses_Keys_2007_grouper)
Molasses_Keys_grouper_9 <- rbind(Molasses_Keys_grouper_8,Molasses_Keys_2008_grouper)
Molasses_Keys_grouper_10 <- rbind(Molasses_Keys_grouper_9,Molasses_Keys_2009_grouper)
Molasses_Keys_grouper_11<- rbind(Molasses_Keys_grouper_10,Molasses_Keys_2010_grouper)
Molasses_Keys_grouper_12 <- rbind(Molasses_Keys_grouper_11,Molasses_Keys_2011_grouper)
Molasses_Keys_grouper_13 <- rbind(Molasses_Keys_grouper_12,Molasses_Keys_2012_grouper)
Molasses_Keys_grouper_14 <- rbind(Molasses_Keys_grouper_13,Molasses_Keys_2014_grouper)
Molasses_Keys_grouper_15 <- rbind(Molasses_Keys_grouper_14,Molasses_Keys_2016_grouper)
Molasses_Keys_grouper_data_combined <- rbind(Molasses_Keys_grouper_15,Molasses_Keys_2018_grouper)



Molasses_Keys_all <- rbind(Molasses_Keys_snapper_data_combined,Molasses_Keys_grouper_data_combined)
Molasses_Keys_all$sitename <- "Molasses Keys"

#export(Molasses_Keys_all, "Molasses_Keys/data/Molasses_Keys_snapper_grouper_type.csv")




# Moser Channel (no data)

Moser_Channel_1999 <- import("Moser_Channel/data/Moser_Channel_1999.xls")


Moser_Channel_1999_snapper <- merge(Moser_Channel_1999, snapper, by = c("SPECIES_CD"))


Moser_Channel_1999_grouper <- merge(Moser_Channel_1999, grouper, by = c("SPECIES_CD"))


Moser_Channel_2000 <- import("Moser_Channel/data/Moser_Channel_2000.xls")

Moser_Channel_2000_snapper <- merge(Moser_Channel_2000, snapper, by = c("SPECIES_CD"))


Moser_Channel_2000_grouper <- merge(Moser_Channel_2000, grouper, by = c("SPECIES_CD"))

Moser_Channel_2001 <- import("Moser_Channel/data/Moser_Channel_2001.xls")

Moser_Channel_2001_snapper <- merge(Moser_Channel_2001, snapper, by = c("SPECIES_CD"))


Moser_Channel_2001_grouper <- merge(Moser_Channel_2001, grouper, by = c("SPECIES_CD"))


Moser_Channel_2002 <- import("Moser_Channel/data/Moser_Channel_2002.xls")

Moser_Channel_2002_snapper <- merge(Moser_Channel_2002, snapper, by = c("SPECIES_CD"))


Moser_Channel_2002_grouper <- merge(Moser_Channel_2002, grouper, by = c("SPECIES_CD"))


Moser_Channel_2003 <- import("Moser_Channel/data/Moser_Channel_2003.xls")

Moser_Channel_2003_snapper <- merge(Moser_Channel_2003, snapper, by = c("SPECIES_CD"))


Moser_Channel_2003_grouper <- merge(Moser_Channel_2003, grouper, by = c("SPECIES_CD"))


# Moser_Channel_2004 <- import("Moser_Channel/data/Moser_Channel_2004.xls")
# 
# Moser_Channel_2004_snapper <- merge(Moser_Channel_2004, snapper, by = c("SPECIES_CD"))
# Moser_Channel_2004_snapper <- summarise_at(Moser_Channel_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Moser_Channel_2004_snapper$Year <- ('2004')
# Moser_Channel_2004_snapper$Reef <- ('Moser Channel')
# 
# 
# Moser_Channel_2004_grouper <- merge(Moser_Channel_2004, grouper, by = c("SPECIES_CD"))
# Moser_Channel_2004_grouper <- summarise_at(Moser_Channel_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Moser_Channel_2004_grouper$Year <- ('2004')
# Moser_Channel_2004_grouper$Reef <- ('Moser Channel')

Moser_Channel_2005 <- import("Moser_Channel/data/Moser_Channel_2005.xls")

Moser_Channel_2005_snapper <- merge(Moser_Channel_2005, snapper, by = c("SPECIES_CD"))


Moser_Channel_2005_grouper <- merge(Moser_Channel_2005, grouper, by = c("SPECIES_CD"))


Moser_Channel_2006 <- import("Moser_Channel/data/Moser_Channel_2006.xls")

Moser_Channel_2006_snapper <- merge(Moser_Channel_2006, snapper, by = c("SPECIES_CD"))


Moser_Channel_2006_grouper <- merge(Moser_Channel_2006, grouper, by = c("SPECIES_CD"))

Moser_Channel_2007 <- import("Moser_Channel/data/Moser_Channel_2007.xls")

Moser_Channel_2007_snapper <- merge(Moser_Channel_2007, snapper, by = c("SPECIES_CD"))


Moser_Channel_2007_grouper <- merge(Moser_Channel_2007, grouper, by = c("SPECIES_CD"))


Moser_Channel_2008 <- import("Moser_Channel/data/Moser_Channel_2008.xls")

Moser_Channel_2008_snapper <- merge(Moser_Channel_2008, snapper, by = c("SPECIES_CD"))


Moser_Channel_2008_grouper <- merge(Moser_Channel_2008, grouper, by = c("SPECIES_CD"))


Moser_Channel_2009 <- import("Moser_Channel/data/Moser_Channel_2009.xls")

Moser_Channel_2009_snapper <- merge(Moser_Channel_2009, snapper, by = c("SPECIES_CD"))


Moser_Channel_2009_grouper <- merge(Moser_Channel_2009, grouper, by = c("SPECIES_CD"))


Moser_Channel_2010 <- import("Moser_Channel/data/Moser_Channel_2010.xls")

Moser_Channel_2010_snapper <- merge(Moser_Channel_2010, snapper, by = c("SPECIES_CD"))


Moser_Channel_2010_grouper <- merge(Moser_Channel_2010, grouper, by = c("SPECIES_CD"))

Moser_Channel_2011 <- import("Moser_Channel/data/Moser_Channel_2011.xls")

Moser_Channel_2011_snapper <- merge(Moser_Channel_2011, snapper, by = c("SPECIES_CD"))


Moser_Channel_2011_grouper <- merge(Moser_Channel_2011, grouper, by = c("SPECIES_CD"))



Moser_Channel_2012 <- import("Moser_Channel/data/Moser_Channel_2012.xls")

Moser_Channel_2012_snapper <- merge(Moser_Channel_2012, snapper, by = c("SPECIES_CD"))


Moser_Channel_2012_grouper <- merge(Moser_Channel_2012, grouper, by = c("SPECIES_CD"))


Moser_Channel_2014 <- import("Moser_Channel/data/Moser_Channel_2014.xls")

Moser_Channel_2014_snapper <- merge(Moser_Channel_2014, snapper, by = c("SPECIES_CD"))


Moser_Channel_2014_grouper <- merge(Moser_Channel_2014, grouper, by = c("SPECIES_CD"))


Moser_Channel_2016 <- import("Moser_Channel/data/Moser_Channel_2016.xls")

Moser_Channel_2016_snapper <- merge(Moser_Channel_2016, snapper, by = c("SPECIES_CD"))


Moser_Channel_2016_grouper <- merge(Moser_Channel_2016, grouper, by = c("SPECIES_CD"))


Moser_Channel_2018 <- import("Moser_Channel/data/Moser_Channel_2018.xls")

Moser_Channel_2018_snapper <- merge(Moser_Channel_2018, snapper, by = c("SPECIES_CD"))


Moser_Channel_2018_grouper <- merge(Moser_Channel_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Moser_Channel_snapper_1 <- rbind(Moser_Channel_1999_snapper,Moser_Channel_2000_snapper)
Moser_Channel_snapper_2 <- rbind(Moser_Channel_snapper_1,Moser_Channel_2001_snapper)
Moser_Channel_snapper_3 <- rbind(Moser_Channel_snapper_2,Moser_Channel_2002_snapper)
Moser_Channel_snapper_4 <- rbind(Moser_Channel_snapper_3,Moser_Channel_2003_snapper)
#Moser_Channel_snapper_5 <- rbind(Moser_Channel_snapper_4,Moser_Channel_2004_snapper)
Moser_Channel_snapper_6 <- rbind(Moser_Channel_snapper_4,Moser_Channel_2005_snapper)
Moser_Channel_snapper_7 <- rbind(Moser_Channel_snapper_6,Moser_Channel_2006_snapper)
Moser_Channel_snapper_8 <- rbind(Moser_Channel_snapper_7,Moser_Channel_2007_snapper)
Moser_Channel_snapper_9 <- rbind(Moser_Channel_snapper_8,Moser_Channel_2008_snapper)
Moser_Channel_snapper_10 <- rbind(Moser_Channel_snapper_9,Moser_Channel_2009_snapper)
Moser_Channel_snapper_11<- rbind(Moser_Channel_snapper_10,Moser_Channel_2010_snapper)
Moser_Channel_snapper_12 <- rbind(Moser_Channel_snapper_11,Moser_Channel_2011_snapper)
Moser_Channel_snapper_13 <- rbind(Moser_Channel_snapper_12,Moser_Channel_2012_snapper)
Moser_Channel_snapper_14 <- rbind(Moser_Channel_snapper_13,Moser_Channel_2014_snapper)
Moser_Channel_snapper_15 <- rbind(Moser_Channel_snapper_14,Moser_Channel_2016_snapper)
Moser_Channel_snapper_data_combined <- rbind(Moser_Channel_snapper_15,Moser_Channel_2018_snapper)



Moser_Channel_grouper_1 <- rbind(Moser_Channel_1999_grouper,Moser_Channel_2000_grouper)
Moser_Channel_grouper_2 <- rbind(Moser_Channel_grouper_1,Moser_Channel_2001_grouper)
Moser_Channel_grouper_3 <- rbind(Moser_Channel_grouper_2,Moser_Channel_2002_grouper)
Moser_Channel_grouper_4 <- rbind(Moser_Channel_grouper_3,Moser_Channel_2003_grouper)
#Moser_Channel_grouper_5 <- rbind(Moser_Channel_grouper_4,Moser_Channel_2004_grouper)
Moser_Channel_grouper_6 <- rbind(Moser_Channel_grouper_4,Moser_Channel_2005_grouper)
Moser_Channel_grouper_7 <- rbind(Moser_Channel_grouper_6,Moser_Channel_2006_grouper)
Moser_Channel_grouper_8 <- rbind(Moser_Channel_grouper_7,Moser_Channel_2007_grouper)
Moser_Channel_grouper_9 <- rbind(Moser_Channel_grouper_8,Moser_Channel_2008_grouper)
Moser_Channel_grouper_10 <- rbind(Moser_Channel_grouper_9,Moser_Channel_2009_grouper)
Moser_Channel_grouper_11<- rbind(Moser_Channel_grouper_10,Moser_Channel_2010_grouper)
Moser_Channel_grouper_12 <- rbind(Moser_Channel_grouper_11,Moser_Channel_2011_grouper)
Moser_Channel_grouper_13 <- rbind(Moser_Channel_grouper_12,Moser_Channel_2012_grouper)
Moser_Channel_grouper_14 <- rbind(Moser_Channel_grouper_13,Moser_Channel_2014_grouper)
Moser_Channel_grouper_15 <- rbind(Moser_Channel_grouper_14,Moser_Channel_2016_grouper)
Moser_Channel_grouper_data_combined <- rbind(Moser_Channel_grouper_15,Moser_Channel_2018_grouper)



Moser_Channel_all <- rbind(Moser_Channel_snapper_data_combined,Moser_Channel_grouper_data_combined)
Moser_Channel_all$sitename <- "Moser Channel"

#export(Moser_Channel_all, "Moser_Channel/data/Moser_Channel_snapper_grouper_type.csv")




# Rawa Reef 

Rawa_Reef_1999 <- import("Rawa_Reef/data/Rawa_Reef_1999.xls")


Rawa_Reef_1999_snapper <- merge(Rawa_Reef_1999, snapper, by = c("SPECIES_CD"))


Rawa_Reef_1999_grouper <- merge(Rawa_Reef_1999, grouper, by = c("SPECIES_CD"))


Rawa_Reef_2000 <- import("Rawa_Reef/data/Rawa_Reef_2000.xls")

Rawa_Reef_2000_snapper <- merge(Rawa_Reef_2000, snapper, by = c("SPECIES_CD"))


Rawa_Reef_2000_grouper <- merge(Rawa_Reef_2000, grouper, by = c("SPECIES_CD"))

Rawa_Reef_2001 <- import("Rawa_Reef/data/Rawa_Reef_2001.xls")

Rawa_Reef_2001_snapper <- merge(Rawa_Reef_2001, snapper, by = c("SPECIES_CD"))


Rawa_Reef_2001_grouper <- merge(Rawa_Reef_2001, grouper, by = c("SPECIES_CD"))


Rawa_Reef_2002 <- import("Rawa_Reef/data/Rawa_Reef_2002.xls")

Rawa_Reef_2002_snapper <- merge(Rawa_Reef_2002, snapper, by = c("SPECIES_CD"))


Rawa_Reef_2002_grouper <- merge(Rawa_Reef_2002, grouper, by = c("SPECIES_CD"))


Rawa_Reef_2003 <- import("Rawa_Reef/data/Rawa_Reef_2003.xls")

Rawa_Reef_2003_snapper <- merge(Rawa_Reef_2003, snapper, by = c("SPECIES_CD"))


Rawa_Reef_2003_grouper <- merge(Rawa_Reef_2003, grouper, by = c("SPECIES_CD"))


# Rawa_Reef_2004 <- import("Rawa_Reef/data/Rawa_Reef_2004.xls")
# 
# Rawa_Reef_2004_snapper <- merge(Rawa_Reef_2004, snapper, by = c("SPECIES_CD"))
# Rawa_Reef_2004_snapper <- summarise_at(Rawa_Reef_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Rawa_Reef_2004_snapper$Year <- ('2004')
# Rawa_Reef_2004_snapper$Reef <- ('Rawa Reef')
# 
# 
# Rawa_Reef_2004_grouper <- merge(Rawa_Reef_2004, grouper, by = c("SPECIES_CD"))
# Rawa_Reef_2004_grouper <- summarise_at(Rawa_Reef_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Rawa_Reef_2004_grouper$Year <- ('2004')
# Rawa_Reef_2004_grouper$Reef <- ('Rawa Reef')

Rawa_Reef_2005 <- import("Rawa_Reef/data/Rawa_Reef_2005.xls")

Rawa_Reef_2005_snapper <- merge(Rawa_Reef_2005, snapper, by = c("SPECIES_CD"))


Rawa_Reef_2005_grouper <- merge(Rawa_Reef_2005, grouper, by = c("SPECIES_CD"))


Rawa_Reef_2006 <- import("Rawa_Reef/data/Rawa_Reef_2006.xls")

Rawa_Reef_2006_snapper <- merge(Rawa_Reef_2006, snapper, by = c("SPECIES_CD"))


Rawa_Reef_2006_grouper <- merge(Rawa_Reef_2006, grouper, by = c("SPECIES_CD"))

Rawa_Reef_2007 <- import("Rawa_Reef/data/Rawa_Reef_2007.xls")

Rawa_Reef_2007_snapper <- merge(Rawa_Reef_2007, snapper, by = c("SPECIES_CD"))


Rawa_Reef_2007_grouper <- merge(Rawa_Reef_2007, grouper, by = c("SPECIES_CD"))


Rawa_Reef_2008 <- import("Rawa_Reef/data/Rawa_Reef_2008.xls")

Rawa_Reef_2008_snapper <- merge(Rawa_Reef_2008, snapper, by = c("SPECIES_CD"))


Rawa_Reef_2008_grouper <- merge(Rawa_Reef_2008, grouper, by = c("SPECIES_CD"))


Rawa_Reef_2009 <- import("Rawa_Reef/data/Rawa_Reef_2009.xls")

Rawa_Reef_2009_snapper <- merge(Rawa_Reef_2009, snapper, by = c("SPECIES_CD"))


Rawa_Reef_2009_grouper <- merge(Rawa_Reef_2009, grouper, by = c("SPECIES_CD"))


Rawa_Reef_2010 <- import("Rawa_Reef/data/Rawa_Reef_2010.xls")

Rawa_Reef_2010_snapper <- merge(Rawa_Reef_2010, snapper, by = c("SPECIES_CD"))


Rawa_Reef_2010_grouper <- merge(Rawa_Reef_2010, grouper, by = c("SPECIES_CD"))

Rawa_Reef_2011 <- import("Rawa_Reef/data/Rawa_Reef_2011.xls")

Rawa_Reef_2011_snapper <- merge(Rawa_Reef_2011, snapper, by = c("SPECIES_CD"))


Rawa_Reef_2011_grouper <- merge(Rawa_Reef_2011, grouper, by = c("SPECIES_CD"))



Rawa_Reef_2012 <- import("Rawa_Reef/data/Rawa_Reef_2012.xls")

Rawa_Reef_2012_snapper <- merge(Rawa_Reef_2012, snapper, by = c("SPECIES_CD"))


Rawa_Reef_2012_grouper <- merge(Rawa_Reef_2012, grouper, by = c("SPECIES_CD"))


Rawa_Reef_2014 <- import("Rawa_Reef/data/Rawa_Reef_2014.xls")

Rawa_Reef_2014_snapper <- merge(Rawa_Reef_2014, snapper, by = c("SPECIES_CD"))


Rawa_Reef_2014_grouper <- merge(Rawa_Reef_2014, grouper, by = c("SPECIES_CD"))


Rawa_Reef_2016 <- import("Rawa_Reef/data/Rawa_Reef_2016.xls")

Rawa_Reef_2016_snapper <- merge(Rawa_Reef_2016, snapper, by = c("SPECIES_CD"))


Rawa_Reef_2016_grouper <- merge(Rawa_Reef_2016, grouper, by = c("SPECIES_CD"))


Rawa_Reef_2018 <- import("Rawa_Reef/data/Rawa_Reef_2018.xls")

Rawa_Reef_2018_snapper <- merge(Rawa_Reef_2018, snapper, by = c("SPECIES_CD"))


Rawa_Reef_2018_grouper <- merge(Rawa_Reef_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Rawa_Reef_snapper_1 <- rbind(Rawa_Reef_1999_snapper,Rawa_Reef_2000_snapper)
Rawa_Reef_snapper_2 <- rbind(Rawa_Reef_snapper_1,Rawa_Reef_2001_snapper)
Rawa_Reef_snapper_3 <- rbind(Rawa_Reef_snapper_2,Rawa_Reef_2002_snapper)
Rawa_Reef_snapper_4 <- rbind(Rawa_Reef_snapper_3,Rawa_Reef_2003_snapper)
#Rawa_Reef_snapper_5 <- rbind(Rawa_Reef_snapper_4,Rawa_Reef_2004_snapper)
Rawa_Reef_snapper_6 <- rbind(Rawa_Reef_snapper_4,Rawa_Reef_2005_snapper)
Rawa_Reef_snapper_7 <- rbind(Rawa_Reef_snapper_6,Rawa_Reef_2006_snapper)
Rawa_Reef_snapper_8 <- rbind(Rawa_Reef_snapper_7,Rawa_Reef_2007_snapper)
Rawa_Reef_snapper_9 <- rbind(Rawa_Reef_snapper_8,Rawa_Reef_2008_snapper)
Rawa_Reef_snapper_10 <- rbind(Rawa_Reef_snapper_9,Rawa_Reef_2009_snapper)
Rawa_Reef_snapper_11<- rbind(Rawa_Reef_snapper_10,Rawa_Reef_2010_snapper)
Rawa_Reef_snapper_12 <- rbind(Rawa_Reef_snapper_11,Rawa_Reef_2011_snapper)
Rawa_Reef_snapper_13 <- rbind(Rawa_Reef_snapper_12,Rawa_Reef_2012_snapper)
Rawa_Reef_snapper_14 <- rbind(Rawa_Reef_snapper_13,Rawa_Reef_2014_snapper)
Rawa_Reef_snapper_15 <- rbind(Rawa_Reef_snapper_14,Rawa_Reef_2016_snapper)
Rawa_Reef_snapper_data_combined <- rbind(Rawa_Reef_snapper_15,Rawa_Reef_2018_snapper)



Rawa_Reef_grouper_1 <- rbind(Rawa_Reef_1999_grouper,Rawa_Reef_2000_grouper)
Rawa_Reef_grouper_2 <- rbind(Rawa_Reef_grouper_1,Rawa_Reef_2001_grouper)
Rawa_Reef_grouper_3 <- rbind(Rawa_Reef_grouper_2,Rawa_Reef_2002_grouper)
Rawa_Reef_grouper_4 <- rbind(Rawa_Reef_grouper_3,Rawa_Reef_2003_grouper)
#Rawa_Reef_grouper_5 <- rbind(Rawa_Reef_grouper_4,Rawa_Reef_2004_grouper)
Rawa_Reef_grouper_6 <- rbind(Rawa_Reef_grouper_4,Rawa_Reef_2005_grouper)
Rawa_Reef_grouper_7 <- rbind(Rawa_Reef_grouper_6,Rawa_Reef_2006_grouper)
Rawa_Reef_grouper_8 <- rbind(Rawa_Reef_grouper_7,Rawa_Reef_2007_grouper)
Rawa_Reef_grouper_9 <- rbind(Rawa_Reef_grouper_8,Rawa_Reef_2008_grouper)
Rawa_Reef_grouper_10 <- rbind(Rawa_Reef_grouper_9,Rawa_Reef_2009_grouper)
Rawa_Reef_grouper_11<- rbind(Rawa_Reef_grouper_10,Rawa_Reef_2010_grouper)
Rawa_Reef_grouper_12 <- rbind(Rawa_Reef_grouper_11,Rawa_Reef_2011_grouper)
Rawa_Reef_grouper_13 <- rbind(Rawa_Reef_grouper_12,Rawa_Reef_2012_grouper)
Rawa_Reef_grouper_14 <- rbind(Rawa_Reef_grouper_13,Rawa_Reef_2014_grouper)
Rawa_Reef_grouper_15 <- rbind(Rawa_Reef_grouper_14,Rawa_Reef_2016_grouper)
Rawa_Reef_grouper_data_combined <- rbind(Rawa_Reef_grouper_15,Rawa_Reef_2018_grouper)



Rawa_Reef_all <- rbind(Rawa_Reef_snapper_data_combined,Rawa_Reef_grouper_data_combined)
Rawa_Reef_all$sitename <- "Rawa Reef"

#export(Rawa_Reef_all, "Rawa_Reef/data/Rawa_Reef_snapper_grouper_type.csv")



# Sombrero Deep 

Sombrero_Deep_1999 <- import("Sombrero_Deep/data/Sombrero_Deep_1999.xls")


Sombrero_Deep_1999_snapper <- merge(Sombrero_Deep_1999, snapper, by = c("SPECIES_CD"))


Sombrero_Deep_1999_grouper <- merge(Sombrero_Deep_1999, grouper, by = c("SPECIES_CD"))


Sombrero_Deep_2000 <- import("Sombrero_Deep/data/Sombrero_Deep_2000.xls")

Sombrero_Deep_2000_snapper <- merge(Sombrero_Deep_2000, snapper, by = c("SPECIES_CD"))


Sombrero_Deep_2000_grouper <- merge(Sombrero_Deep_2000, grouper, by = c("SPECIES_CD"))

Sombrero_Deep_2001 <- import("Sombrero_Deep/data/Sombrero_Deep_2001.xls")

Sombrero_Deep_2001_snapper <- merge(Sombrero_Deep_2001, snapper, by = c("SPECIES_CD"))


Sombrero_Deep_2001_grouper <- merge(Sombrero_Deep_2001, grouper, by = c("SPECIES_CD"))


Sombrero_Deep_2002 <- import("Sombrero_Deep/data/Sombrero_Deep_2002.xls")

Sombrero_Deep_2002_snapper <- merge(Sombrero_Deep_2002, snapper, by = c("SPECIES_CD"))


Sombrero_Deep_2002_grouper <- merge(Sombrero_Deep_2002, grouper, by = c("SPECIES_CD"))


Sombrero_Deep_2003 <- import("Sombrero_Deep/data/Sombrero_Deep_2003.xls")

Sombrero_Deep_2003_snapper <- merge(Sombrero_Deep_2003, snapper, by = c("SPECIES_CD"))


Sombrero_Deep_2003_grouper <- merge(Sombrero_Deep_2003, grouper, by = c("SPECIES_CD"))


# Sombrero_Deep_2004 <- import("Sombrero_Deep/data/Sombrero_Deep_2004.xls")
# 
# Sombrero_Deep_2004_snapper <- merge(Sombrero_Deep_2004, snapper, by = c("SPECIES_CD"))
# Sombrero_Deep_2004_snapper <- summarise_at(Sombrero_Deep_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Sombrero_Deep_2004_snapper$Year <- ('2004')
# Sombrero_Deep_2004_snapper$Reef <- ('Sombrero Deep')
# 
# 
# Sombrero_Deep_2004_grouper <- merge(Sombrero_Deep_2004, grouper, by = c("SPECIES_CD"))
# Sombrero_Deep_2004_grouper <- summarise_at(Sombrero_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Sombrero_Deep_2004_grouper$Year <- ('2004')
# Sombrero_Deep_2004_grouper$Reef <- ('Sombrero Deep')

Sombrero_Deep_2005 <- import("Sombrero_Deep/data/Sombrero_Deep_2005.xls")

Sombrero_Deep_2005_snapper <- merge(Sombrero_Deep_2005, snapper, by = c("SPECIES_CD"))


Sombrero_Deep_2005_grouper <- merge(Sombrero_Deep_2005, grouper, by = c("SPECIES_CD"))


Sombrero_Deep_2006 <- import("Sombrero_Deep/data/Sombrero_Deep_2006.xls")

Sombrero_Deep_2006_snapper <- merge(Sombrero_Deep_2006, snapper, by = c("SPECIES_CD"))


Sombrero_Deep_2006_grouper <- merge(Sombrero_Deep_2006, grouper, by = c("SPECIES_CD"))

Sombrero_Deep_2007 <- import("Sombrero_Deep/data/Sombrero_Deep_2007.xls")

Sombrero_Deep_2007_snapper <- merge(Sombrero_Deep_2007, snapper, by = c("SPECIES_CD"))


Sombrero_Deep_2007_grouper <- merge(Sombrero_Deep_2007, grouper, by = c("SPECIES_CD"))


Sombrero_Deep_2008 <- import("Sombrero_Deep/data/Sombrero_Deep_2008.xls")

Sombrero_Deep_2008_snapper <- merge(Sombrero_Deep_2008, snapper, by = c("SPECIES_CD"))


Sombrero_Deep_2008_grouper <- merge(Sombrero_Deep_2008, grouper, by = c("SPECIES_CD"))


Sombrero_Deep_2009 <- import("Sombrero_Deep/data/Sombrero_Deep_2009.xls")

Sombrero_Deep_2009_snapper <- merge(Sombrero_Deep_2009, snapper, by = c("SPECIES_CD"))


Sombrero_Deep_2009_grouper <- merge(Sombrero_Deep_2009, grouper, by = c("SPECIES_CD"))


Sombrero_Deep_2010 <- import("Sombrero_Deep/data/Sombrero_Deep_2010.xls")

Sombrero_Deep_2010_snapper <- merge(Sombrero_Deep_2010, snapper, by = c("SPECIES_CD"))


Sombrero_Deep_2010_grouper <- merge(Sombrero_Deep_2010, grouper, by = c("SPECIES_CD"))

Sombrero_Deep_2011 <- import("Sombrero_Deep/data/Sombrero_Deep_2011.xls")

Sombrero_Deep_2011_snapper <- merge(Sombrero_Deep_2011, snapper, by = c("SPECIES_CD"))


Sombrero_Deep_2011_grouper <- merge(Sombrero_Deep_2011, grouper, by = c("SPECIES_CD"))



Sombrero_Deep_2012 <- import("Sombrero_Deep/data/Sombrero_Deep_2012.xls")

Sombrero_Deep_2012_snapper <- merge(Sombrero_Deep_2012, snapper, by = c("SPECIES_CD"))


Sombrero_Deep_2012_grouper <- merge(Sombrero_Deep_2012, grouper, by = c("SPECIES_CD"))


Sombrero_Deep_2014 <- import("Sombrero_Deep/data/Sombrero_Deep_2014.xls")

Sombrero_Deep_2014_snapper <- merge(Sombrero_Deep_2014, snapper, by = c("SPECIES_CD"))


Sombrero_Deep_2014_grouper <- merge(Sombrero_Deep_2014, grouper, by = c("SPECIES_CD"))


Sombrero_Deep_2016 <- import("Sombrero_Deep/data/Sombrero_Deep_2016.xls")

Sombrero_Deep_2016_snapper <- merge(Sombrero_Deep_2016, snapper, by = c("SPECIES_CD"))


Sombrero_Deep_2016_grouper <- merge(Sombrero_Deep_2016, grouper, by = c("SPECIES_CD"))


Sombrero_Deep_2018 <- import("Sombrero_Deep/data/Sombrero_Deep_2018.xls")

Sombrero_Deep_2018_snapper <- merge(Sombrero_Deep_2018, snapper, by = c("SPECIES_CD"))


Sombrero_Deep_2018_grouper <- merge(Sombrero_Deep_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Sombrero_Deep_snapper_1 <- rbind(Sombrero_Deep_1999_snapper,Sombrero_Deep_2000_snapper)
Sombrero_Deep_snapper_2 <- rbind(Sombrero_Deep_snapper_1,Sombrero_Deep_2001_snapper)
Sombrero_Deep_snapper_3 <- rbind(Sombrero_Deep_snapper_2,Sombrero_Deep_2002_snapper)
Sombrero_Deep_snapper_4 <- rbind(Sombrero_Deep_snapper_3,Sombrero_Deep_2003_snapper)
#Sombrero_Deep_snapper_5 <- rbind(Sombrero_Deep_snapper_4,Sombrero_Deep_2004_snapper)
Sombrero_Deep_snapper_6 <- rbind(Sombrero_Deep_snapper_4,Sombrero_Deep_2005_snapper)
Sombrero_Deep_snapper_7 <- rbind(Sombrero_Deep_snapper_6,Sombrero_Deep_2006_snapper)
Sombrero_Deep_snapper_8 <- rbind(Sombrero_Deep_snapper_7,Sombrero_Deep_2007_snapper)
Sombrero_Deep_snapper_9 <- rbind(Sombrero_Deep_snapper_8,Sombrero_Deep_2008_snapper)
Sombrero_Deep_snapper_10 <- rbind(Sombrero_Deep_snapper_9,Sombrero_Deep_2009_snapper)
Sombrero_Deep_snapper_11<- rbind(Sombrero_Deep_snapper_10,Sombrero_Deep_2010_snapper)
Sombrero_Deep_snapper_12 <- rbind(Sombrero_Deep_snapper_11,Sombrero_Deep_2011_snapper)
Sombrero_Deep_snapper_13 <- rbind(Sombrero_Deep_snapper_12,Sombrero_Deep_2012_snapper)
Sombrero_Deep_snapper_14 <- rbind(Sombrero_Deep_snapper_13,Sombrero_Deep_2014_snapper)
Sombrero_Deep_snapper_15 <- rbind(Sombrero_Deep_snapper_14,Sombrero_Deep_2016_snapper)
Sombrero_Deep_snapper_data_combined <- rbind(Sombrero_Deep_snapper_15,Sombrero_Deep_2018_snapper)



Sombrero_Deep_grouper_1 <- rbind(Sombrero_Deep_1999_grouper,Sombrero_Deep_2000_grouper)
Sombrero_Deep_grouper_2 <- rbind(Sombrero_Deep_grouper_1,Sombrero_Deep_2001_grouper)
Sombrero_Deep_grouper_3 <- rbind(Sombrero_Deep_grouper_2,Sombrero_Deep_2002_grouper)
Sombrero_Deep_grouper_4 <- rbind(Sombrero_Deep_grouper_3,Sombrero_Deep_2003_grouper)
#Sombrero_Deep_grouper_5 <- rbind(Sombrero_Deep_grouper_4,Sombrero_Deep_2004_grouper)
Sombrero_Deep_grouper_6 <- rbind(Sombrero_Deep_grouper_4,Sombrero_Deep_2005_grouper)
Sombrero_Deep_grouper_7 <- rbind(Sombrero_Deep_grouper_6,Sombrero_Deep_2006_grouper)
Sombrero_Deep_grouper_8 <- rbind(Sombrero_Deep_grouper_7,Sombrero_Deep_2007_grouper)
Sombrero_Deep_grouper_9 <- rbind(Sombrero_Deep_grouper_8,Sombrero_Deep_2008_grouper)
Sombrero_Deep_grouper_10 <- rbind(Sombrero_Deep_grouper_9,Sombrero_Deep_2009_grouper)
Sombrero_Deep_grouper_11<- rbind(Sombrero_Deep_grouper_10,Sombrero_Deep_2010_grouper)
Sombrero_Deep_grouper_12 <- rbind(Sombrero_Deep_grouper_11,Sombrero_Deep_2011_grouper)
Sombrero_Deep_grouper_13 <- rbind(Sombrero_Deep_grouper_12,Sombrero_Deep_2012_grouper)
Sombrero_Deep_grouper_14 <- rbind(Sombrero_Deep_grouper_13,Sombrero_Deep_2014_grouper)
Sombrero_Deep_grouper_15 <- rbind(Sombrero_Deep_grouper_14,Sombrero_Deep_2016_grouper)
Sombrero_Deep_grouper_data_combined <- rbind(Sombrero_Deep_grouper_15,Sombrero_Deep_2018_grouper)



Sombrero_Deep_all <- rbind(Sombrero_Deep_snapper_data_combined,Sombrero_Deep_grouper_data_combined)
Sombrero_Deep_all$sitename <- "Sombrero Deep"

#export(Sombrero_Deep_all, "Sombrero_Deep/data/Sombrero_Deep_snapper_grouper_type.csv")



# Sombrero Shallow 

Sombrero_Shallow_1999 <- import("Sombrero_Shallow/data/Sombrero_Shallow_1999.xls")


Sombrero_Shallow_1999_snapper <- merge(Sombrero_Shallow_1999, snapper, by = c("SPECIES_CD"))


Sombrero_Shallow_1999_grouper <- merge(Sombrero_Shallow_1999, grouper, by = c("SPECIES_CD"))


Sombrero_Shallow_2000 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2000.xls")

Sombrero_Shallow_2000_snapper <- merge(Sombrero_Shallow_2000, snapper, by = c("SPECIES_CD"))


Sombrero_Shallow_2000_grouper <- merge(Sombrero_Shallow_2000, grouper, by = c("SPECIES_CD"))

Sombrero_Shallow_2001 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2001.xls")

Sombrero_Shallow_2001_snapper <- merge(Sombrero_Shallow_2001, snapper, by = c("SPECIES_CD"))


Sombrero_Shallow_2001_grouper <- merge(Sombrero_Shallow_2001, grouper, by = c("SPECIES_CD"))


Sombrero_Shallow_2002 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2002.xls")

Sombrero_Shallow_2002_snapper <- merge(Sombrero_Shallow_2002, snapper, by = c("SPECIES_CD"))


Sombrero_Shallow_2002_grouper <- merge(Sombrero_Shallow_2002, grouper, by = c("SPECIES_CD"))


Sombrero_Shallow_2003 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2003.xls")

Sombrero_Shallow_2003_snapper <- merge(Sombrero_Shallow_2003, snapper, by = c("SPECIES_CD"))


Sombrero_Shallow_2003_grouper <- merge(Sombrero_Shallow_2003, grouper, by = c("SPECIES_CD"))


# Sombrero_Shallow_2004 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2004.xls")
# 
# Sombrero_Shallow_2004_snapper <- merge(Sombrero_Shallow_2004, snapper, by = c("SPECIES_CD"))
# Sombrero_Shallow_2004_snapper <- summarise_at(Sombrero_Shallow_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Sombrero_Shallow_2004_snapper$Year <- ('2004')
# Sombrero_Shallow_2004_snapper$Reef <- ('Sombrero Shallow')
# 
# 
# Sombrero_Shallow_2004_grouper <- merge(Sombrero_Shallow_2004, grouper, by = c("SPECIES_CD"))
# Sombrero_Shallow_2004_grouper <- summarise_at(Sombrero_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Sombrero_Shallow_2004_grouper$Year <- ('2004')
# Sombrero_Shallow_2004_grouper$Reef <- ('Sombrero Shallow')

Sombrero_Shallow_2005 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2005.xls")

Sombrero_Shallow_2005_snapper <- merge(Sombrero_Shallow_2005, snapper, by = c("SPECIES_CD"))


Sombrero_Shallow_2005_grouper <- merge(Sombrero_Shallow_2005, grouper, by = c("SPECIES_CD"))


Sombrero_Shallow_2006 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2006.xls")

Sombrero_Shallow_2006_snapper <- merge(Sombrero_Shallow_2006, snapper, by = c("SPECIES_CD"))


Sombrero_Shallow_2006_grouper <- merge(Sombrero_Shallow_2006, grouper, by = c("SPECIES_CD"))

Sombrero_Shallow_2007 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2007.xls")

Sombrero_Shallow_2007_snapper <- merge(Sombrero_Shallow_2007, snapper, by = c("SPECIES_CD"))


Sombrero_Shallow_2007_grouper <- merge(Sombrero_Shallow_2007, grouper, by = c("SPECIES_CD"))


Sombrero_Shallow_2008 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2008.xls")

Sombrero_Shallow_2008_snapper <- merge(Sombrero_Shallow_2008, snapper, by = c("SPECIES_CD"))


Sombrero_Shallow_2008_grouper <- merge(Sombrero_Shallow_2008, grouper, by = c("SPECIES_CD"))


Sombrero_Shallow_2009 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2009.xls")

Sombrero_Shallow_2009_snapper <- merge(Sombrero_Shallow_2009, snapper, by = c("SPECIES_CD"))


Sombrero_Shallow_2009_grouper <- merge(Sombrero_Shallow_2009, grouper, by = c("SPECIES_CD"))


Sombrero_Shallow_2010 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2010.xls")

Sombrero_Shallow_2010_snapper <- merge(Sombrero_Shallow_2010, snapper, by = c("SPECIES_CD"))


Sombrero_Shallow_2010_grouper <- merge(Sombrero_Shallow_2010, grouper, by = c("SPECIES_CD"))

Sombrero_Shallow_2011 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2011.xls")

Sombrero_Shallow_2011_snapper <- merge(Sombrero_Shallow_2011, snapper, by = c("SPECIES_CD"))


Sombrero_Shallow_2011_grouper <- merge(Sombrero_Shallow_2011, grouper, by = c("SPECIES_CD"))



Sombrero_Shallow_2012 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2012.xls")

Sombrero_Shallow_2012_snapper <- merge(Sombrero_Shallow_2012, snapper, by = c("SPECIES_CD"))


Sombrero_Shallow_2012_grouper <- merge(Sombrero_Shallow_2012, grouper, by = c("SPECIES_CD"))


Sombrero_Shallow_2014 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2014.xls")

Sombrero_Shallow_2014_snapper <- merge(Sombrero_Shallow_2014, snapper, by = c("SPECIES_CD"))


Sombrero_Shallow_2014_grouper <- merge(Sombrero_Shallow_2014, grouper, by = c("SPECIES_CD"))


Sombrero_Shallow_2016 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2016.xls")

Sombrero_Shallow_2016_snapper <- merge(Sombrero_Shallow_2016, snapper, by = c("SPECIES_CD"))


Sombrero_Shallow_2016_grouper <- merge(Sombrero_Shallow_2016, grouper, by = c("SPECIES_CD"))


Sombrero_Shallow_2018 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2018.xls")

Sombrero_Shallow_2018_snapper <- merge(Sombrero_Shallow_2018, snapper, by = c("SPECIES_CD"))


Sombrero_Shallow_2018_grouper <- merge(Sombrero_Shallow_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Sombrero_Shallow_snapper_1 <- rbind(Sombrero_Shallow_1999_snapper,Sombrero_Shallow_2000_snapper)
Sombrero_Shallow_snapper_2 <- rbind(Sombrero_Shallow_snapper_1,Sombrero_Shallow_2001_snapper)
Sombrero_Shallow_snapper_3 <- rbind(Sombrero_Shallow_snapper_2,Sombrero_Shallow_2002_snapper)
Sombrero_Shallow_snapper_4 <- rbind(Sombrero_Shallow_snapper_3,Sombrero_Shallow_2003_snapper)
#Sombrero_Shallow_snapper_5 <- rbind(Sombrero_Shallow_snapper_4,Sombrero_Shallow_2004_snapper)
Sombrero_Shallow_snapper_6 <- rbind(Sombrero_Shallow_snapper_4,Sombrero_Shallow_2005_snapper)
Sombrero_Shallow_snapper_7 <- rbind(Sombrero_Shallow_snapper_6,Sombrero_Shallow_2006_snapper)
Sombrero_Shallow_snapper_8 <- rbind(Sombrero_Shallow_snapper_7,Sombrero_Shallow_2007_snapper)
Sombrero_Shallow_snapper_9 <- rbind(Sombrero_Shallow_snapper_8,Sombrero_Shallow_2008_snapper)
Sombrero_Shallow_snapper_10 <- rbind(Sombrero_Shallow_snapper_9,Sombrero_Shallow_2009_snapper)
Sombrero_Shallow_snapper_11<- rbind(Sombrero_Shallow_snapper_10,Sombrero_Shallow_2010_snapper)
Sombrero_Shallow_snapper_12 <- rbind(Sombrero_Shallow_snapper_11,Sombrero_Shallow_2011_snapper)
Sombrero_Shallow_snapper_13 <- rbind(Sombrero_Shallow_snapper_12,Sombrero_Shallow_2012_snapper)
Sombrero_Shallow_snapper_14 <- rbind(Sombrero_Shallow_snapper_13,Sombrero_Shallow_2014_snapper)
Sombrero_Shallow_snapper_15 <- rbind(Sombrero_Shallow_snapper_14,Sombrero_Shallow_2016_snapper)
Sombrero_Shallow_snapper_data_combined <- rbind(Sombrero_Shallow_snapper_15,Sombrero_Shallow_2018_snapper)



Sombrero_Shallow_grouper_1 <- rbind(Sombrero_Shallow_1999_grouper,Sombrero_Shallow_2000_grouper)
Sombrero_Shallow_grouper_2 <- rbind(Sombrero_Shallow_grouper_1,Sombrero_Shallow_2001_grouper)
Sombrero_Shallow_grouper_3 <- rbind(Sombrero_Shallow_grouper_2,Sombrero_Shallow_2002_grouper)
Sombrero_Shallow_grouper_4 <- rbind(Sombrero_Shallow_grouper_3,Sombrero_Shallow_2003_grouper)
#Sombrero_Shallow_grouper_5 <- rbind(Sombrero_Shallow_grouper_4,Sombrero_Shallow_2004_grouper)
Sombrero_Shallow_grouper_6 <- rbind(Sombrero_Shallow_grouper_4,Sombrero_Shallow_2005_grouper)
Sombrero_Shallow_grouper_7 <- rbind(Sombrero_Shallow_grouper_6,Sombrero_Shallow_2006_grouper)
Sombrero_Shallow_grouper_8 <- rbind(Sombrero_Shallow_grouper_7,Sombrero_Shallow_2007_grouper)
Sombrero_Shallow_grouper_9 <- rbind(Sombrero_Shallow_grouper_8,Sombrero_Shallow_2008_grouper)
Sombrero_Shallow_grouper_10 <- rbind(Sombrero_Shallow_grouper_9,Sombrero_Shallow_2009_grouper)
Sombrero_Shallow_grouper_11<- rbind(Sombrero_Shallow_grouper_10,Sombrero_Shallow_2010_grouper)
Sombrero_Shallow_grouper_12 <- rbind(Sombrero_Shallow_grouper_11,Sombrero_Shallow_2011_grouper)
Sombrero_Shallow_grouper_13 <- rbind(Sombrero_Shallow_grouper_12,Sombrero_Shallow_2012_grouper)
Sombrero_Shallow_grouper_14 <- rbind(Sombrero_Shallow_grouper_13,Sombrero_Shallow_2014_grouper)
Sombrero_Shallow_grouper_15 <- rbind(Sombrero_Shallow_grouper_14,Sombrero_Shallow_2016_grouper)
Sombrero_Shallow_grouper_data_combined <- rbind(Sombrero_Shallow_grouper_15,Sombrero_Shallow_2018_grouper)



Sombrero_Shallow_all <- rbind(Sombrero_Shallow_snapper_data_combined,Sombrero_Shallow_grouper_data_combined)
Sombrero_Shallow_all$sitename <- "Sombrero Shallow"

#export(Sombrero_Shallow_all, "Sombrero_Shallow/data/Sombrero_Shallow_snapper_grouper_type.csv")




# Tennessee Deep 

Tennessee_Deep_1999 <- import("Tennessee_Deep/data/Tennessee_Deep_1999.xls")


Tennessee_Deep_1999_snapper <- merge(Tennessee_Deep_1999, snapper, by = c("SPECIES_CD"))


Tennessee_Deep_1999_grouper <- merge(Tennessee_Deep_1999, grouper, by = c("SPECIES_CD"))


Tennessee_Deep_2000 <- import("Tennessee_Deep/data/Tennessee_Deep_2000.xls")

Tennessee_Deep_2000_snapper <- merge(Tennessee_Deep_2000, snapper, by = c("SPECIES_CD"))


Tennessee_Deep_2000_grouper <- merge(Tennessee_Deep_2000, grouper, by = c("SPECIES_CD"))

Tennessee_Deep_2001 <- import("Tennessee_Deep/data/Tennessee_Deep_2001.xls")

Tennessee_Deep_2001_snapper <- merge(Tennessee_Deep_2001, snapper, by = c("SPECIES_CD"))


Tennessee_Deep_2001_grouper <- merge(Tennessee_Deep_2001, grouper, by = c("SPECIES_CD"))


Tennessee_Deep_2002 <- import("Tennessee_Deep/data/Tennessee_Deep_2002.xls")

Tennessee_Deep_2002_snapper <- merge(Tennessee_Deep_2002, snapper, by = c("SPECIES_CD"))


Tennessee_Deep_2002_grouper <- merge(Tennessee_Deep_2002, grouper, by = c("SPECIES_CD"))


Tennessee_Deep_2003 <- import("Tennessee_Deep/data/Tennessee_Deep_2003.xls")

Tennessee_Deep_2003_snapper <- merge(Tennessee_Deep_2003, snapper, by = c("SPECIES_CD"))


Tennessee_Deep_2003_grouper <- merge(Tennessee_Deep_2003, grouper, by = c("SPECIES_CD"))


# Tennessee_Deep_2004 <- import("Tennessee_Deep/data/Tennessee_Deep_2004.xls")
# 
# Tennessee_Deep_2004_snapper <- merge(Tennessee_Deep_2004, snapper, by = c("SPECIES_CD"))
# Tennessee_Deep_2004_snapper <- summarise_at(Tennessee_Deep_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Tennessee_Deep_2004_snapper$Year <- ('2004')
# Tennessee_Deep_2004_snapper$Reef <- ('Tennessee Deep')
# 
# 
# Tennessee_Deep_2004_grouper <- merge(Tennessee_Deep_2004, grouper, by = c("SPECIES_CD"))
# Tennessee_Deep_2004_grouper <- summarise_at(Tennessee_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Tennessee_Deep_2004_grouper$Year <- ('2004')
# Tennessee_Deep_2004_grouper$Reef <- ('Tennessee Deep')

Tennessee_Deep_2005 <- import("Tennessee_Deep/data/Tennessee_Deep_2005.xls")

Tennessee_Deep_2005_snapper <- merge(Tennessee_Deep_2005, snapper, by = c("SPECIES_CD"))


Tennessee_Deep_2005_grouper <- merge(Tennessee_Deep_2005, grouper, by = c("SPECIES_CD"))


Tennessee_Deep_2006 <- import("Tennessee_Deep/data/Tennessee_Deep_2006.xls")

Tennessee_Deep_2006_snapper <- merge(Tennessee_Deep_2006, snapper, by = c("SPECIES_CD"))


Tennessee_Deep_2006_grouper <- merge(Tennessee_Deep_2006, grouper, by = c("SPECIES_CD"))

Tennessee_Deep_2007 <- import("Tennessee_Deep/data/Tennessee_Deep_2007.xls")

Tennessee_Deep_2007_snapper <- merge(Tennessee_Deep_2007, snapper, by = c("SPECIES_CD"))


Tennessee_Deep_2007_grouper <- merge(Tennessee_Deep_2007, grouper, by = c("SPECIES_CD"))


Tennessee_Deep_2008 <- import("Tennessee_Deep/data/Tennessee_Deep_2008.xls")

Tennessee_Deep_2008_snapper <- merge(Tennessee_Deep_2008, snapper, by = c("SPECIES_CD"))


Tennessee_Deep_2008_grouper <- merge(Tennessee_Deep_2008, grouper, by = c("SPECIES_CD"))


Tennessee_Deep_2009 <- import("Tennessee_Deep/data/Tennessee_Deep_2009.xls")

Tennessee_Deep_2009_snapper <- merge(Tennessee_Deep_2009, snapper, by = c("SPECIES_CD"))


Tennessee_Deep_2009_grouper <- merge(Tennessee_Deep_2009, grouper, by = c("SPECIES_CD"))


Tennessee_Deep_2010 <- import("Tennessee_Deep/data/Tennessee_Deep_2010.xls")

Tennessee_Deep_2010_snapper <- merge(Tennessee_Deep_2010, snapper, by = c("SPECIES_CD"))


Tennessee_Deep_2010_grouper <- merge(Tennessee_Deep_2010, grouper, by = c("SPECIES_CD"))

Tennessee_Deep_2011 <- import("Tennessee_Deep/data/Tennessee_Deep_2011.xls")

Tennessee_Deep_2011_snapper <- merge(Tennessee_Deep_2011, snapper, by = c("SPECIES_CD"))


Tennessee_Deep_2011_grouper <- merge(Tennessee_Deep_2011, grouper, by = c("SPECIES_CD"))



Tennessee_Deep_2012 <- import("Tennessee_Deep/data/Tennessee_Deep_2012.xls")

Tennessee_Deep_2012_snapper <- merge(Tennessee_Deep_2012, snapper, by = c("SPECIES_CD"))


Tennessee_Deep_2012_grouper <- merge(Tennessee_Deep_2012, grouper, by = c("SPECIES_CD"))


Tennessee_Deep_2014 <- import("Tennessee_Deep/data/Tennessee_Deep_2014.xls")

Tennessee_Deep_2014_snapper <- merge(Tennessee_Deep_2014, snapper, by = c("SPECIES_CD"))


Tennessee_Deep_2014_grouper <- merge(Tennessee_Deep_2014, grouper, by = c("SPECIES_CD"))


Tennessee_Deep_2016 <- import("Tennessee_Deep/data/Tennessee_Deep_2016.xls")

Tennessee_Deep_2016_snapper <- merge(Tennessee_Deep_2016, snapper, by = c("SPECIES_CD"))


Tennessee_Deep_2016_grouper <- merge(Tennessee_Deep_2016, grouper, by = c("SPECIES_CD"))


Tennessee_Deep_2018 <- import("Tennessee_Deep/data/Tennessee_Deep_2018.xls")

Tennessee_Deep_2018_snapper <- merge(Tennessee_Deep_2018, snapper, by = c("SPECIES_CD"))


Tennessee_Deep_2018_grouper <- merge(Tennessee_Deep_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Tennessee_Deep_snapper_1 <- rbind(Tennessee_Deep_1999_snapper,Tennessee_Deep_2000_snapper)
Tennessee_Deep_snapper_2 <- rbind(Tennessee_Deep_snapper_1,Tennessee_Deep_2001_snapper)
Tennessee_Deep_snapper_3 <- rbind(Tennessee_Deep_snapper_2,Tennessee_Deep_2002_snapper)
Tennessee_Deep_snapper_4 <- rbind(Tennessee_Deep_snapper_3,Tennessee_Deep_2003_snapper)
#Tennessee_Deep_snapper_5 <- rbind(Tennessee_Deep_snapper_4,Tennessee_Deep_2004_snapper)
Tennessee_Deep_snapper_6 <- rbind(Tennessee_Deep_snapper_4,Tennessee_Deep_2005_snapper)
Tennessee_Deep_snapper_7 <- rbind(Tennessee_Deep_snapper_6,Tennessee_Deep_2006_snapper)
Tennessee_Deep_snapper_8 <- rbind(Tennessee_Deep_snapper_7,Tennessee_Deep_2007_snapper)
Tennessee_Deep_snapper_9 <- rbind(Tennessee_Deep_snapper_8,Tennessee_Deep_2008_snapper)
Tennessee_Deep_snapper_10 <- rbind(Tennessee_Deep_snapper_9,Tennessee_Deep_2009_snapper)
Tennessee_Deep_snapper_11<- rbind(Tennessee_Deep_snapper_10,Tennessee_Deep_2010_snapper)
Tennessee_Deep_snapper_12 <- rbind(Tennessee_Deep_snapper_11,Tennessee_Deep_2011_snapper)
Tennessee_Deep_snapper_13 <- rbind(Tennessee_Deep_snapper_12,Tennessee_Deep_2012_snapper)
Tennessee_Deep_snapper_14 <- rbind(Tennessee_Deep_snapper_13,Tennessee_Deep_2014_snapper)
Tennessee_Deep_snapper_15 <- rbind(Tennessee_Deep_snapper_14,Tennessee_Deep_2016_snapper)
Tennessee_Deep_snapper_data_combined <- rbind(Tennessee_Deep_snapper_15,Tennessee_Deep_2018_snapper)



Tennessee_Deep_grouper_1 <- rbind(Tennessee_Deep_1999_grouper,Tennessee_Deep_2000_grouper)
Tennessee_Deep_grouper_2 <- rbind(Tennessee_Deep_grouper_1,Tennessee_Deep_2001_grouper)
Tennessee_Deep_grouper_3 <- rbind(Tennessee_Deep_grouper_2,Tennessee_Deep_2002_grouper)
Tennessee_Deep_grouper_4 <- rbind(Tennessee_Deep_grouper_3,Tennessee_Deep_2003_grouper)
#Tennessee_Deep_grouper_5 <- rbind(Tennessee_Deep_grouper_4,Tennessee_Deep_2004_grouper)
Tennessee_Deep_grouper_6 <- rbind(Tennessee_Deep_grouper_4,Tennessee_Deep_2005_grouper)
Tennessee_Deep_grouper_7 <- rbind(Tennessee_Deep_grouper_6,Tennessee_Deep_2006_grouper)
Tennessee_Deep_grouper_8 <- rbind(Tennessee_Deep_grouper_7,Tennessee_Deep_2007_grouper)
Tennessee_Deep_grouper_9 <- rbind(Tennessee_Deep_grouper_8,Tennessee_Deep_2008_grouper)
Tennessee_Deep_grouper_10 <- rbind(Tennessee_Deep_grouper_9,Tennessee_Deep_2009_grouper)
Tennessee_Deep_grouper_11<- rbind(Tennessee_Deep_grouper_10,Tennessee_Deep_2010_grouper)
Tennessee_Deep_grouper_12 <- rbind(Tennessee_Deep_grouper_11,Tennessee_Deep_2011_grouper)
Tennessee_Deep_grouper_13 <- rbind(Tennessee_Deep_grouper_12,Tennessee_Deep_2012_grouper)
Tennessee_Deep_grouper_14 <- rbind(Tennessee_Deep_grouper_13,Tennessee_Deep_2014_grouper)
Tennessee_Deep_grouper_15 <- rbind(Tennessee_Deep_grouper_14,Tennessee_Deep_2016_grouper)
Tennessee_Deep_grouper_data_combined <- rbind(Tennessee_Deep_grouper_15,Tennessee_Deep_2018_grouper)



Tennessee_Deep_all <- rbind(Tennessee_Deep_snapper_data_combined,Tennessee_Deep_grouper_data_combined)
Tennessee_Deep_all$sitename <- "Tennessee Deep"

#export(Tennessee_Deep_all, "Tennessee_Deep/data/Tennessee_Deep_snapper_grouper_type.csv")




# Tennessee Shallow 

Tennessee_Shallow_1999 <- import("Tennessee_Shallow/data/Tennessee_Shallow_1999.xls")


Tennessee_Shallow_1999_snapper <- merge(Tennessee_Shallow_1999, snapper, by = c("SPECIES_CD"))


Tennessee_Shallow_1999_grouper <- merge(Tennessee_Shallow_1999, grouper, by = c("SPECIES_CD"))


Tennessee_Shallow_2000 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2000.xls")

Tennessee_Shallow_2000_snapper <- merge(Tennessee_Shallow_2000, snapper, by = c("SPECIES_CD"))


Tennessee_Shallow_2000_grouper <- merge(Tennessee_Shallow_2000, grouper, by = c("SPECIES_CD"))

Tennessee_Shallow_2001 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2001.xls")

Tennessee_Shallow_2001_snapper <- merge(Tennessee_Shallow_2001, snapper, by = c("SPECIES_CD"))


Tennessee_Shallow_2001_grouper <- merge(Tennessee_Shallow_2001, grouper, by = c("SPECIES_CD"))


Tennessee_Shallow_2002 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2002.xls")

Tennessee_Shallow_2002_snapper <- merge(Tennessee_Shallow_2002, snapper, by = c("SPECIES_CD"))


Tennessee_Shallow_2002_grouper <- merge(Tennessee_Shallow_2002, grouper, by = c("SPECIES_CD"))


Tennessee_Shallow_2003 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2003.xls")

Tennessee_Shallow_2003_snapper <- merge(Tennessee_Shallow_2003, snapper, by = c("SPECIES_CD"))


Tennessee_Shallow_2003_grouper <- merge(Tennessee_Shallow_2003, grouper, by = c("SPECIES_CD"))


# Tennessee_Shallow_2004 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2004.xls")
# 
# Tennessee_Shallow_2004_snapper <- merge(Tennessee_Shallow_2004, snapper, by = c("SPECIES_CD"))
# Tennessee_Shallow_2004_snapper <- summarise_at(Tennessee_Shallow_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Tennessee_Shallow_2004_snapper$Year <- ('2004')
# Tennessee_Shallow_2004_snapper$Reef <- ('Tennessee Shallow')
# 
# 
# Tennessee_Shallow_2004_grouper <- merge(Tennessee_Shallow_2004, grouper, by = c("SPECIES_CD"))
# Tennessee_Shallow_2004_grouper <- summarise_at(Tennessee_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Tennessee_Shallow_2004_grouper$Year <- ('2004')
# Tennessee_Shallow_2004_grouper$Reef <- ('Tennessee Shallow')

Tennessee_Shallow_2005 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2005.xls")

Tennessee_Shallow_2005_snapper <- merge(Tennessee_Shallow_2005, snapper, by = c("SPECIES_CD"))


Tennessee_Shallow_2005_grouper <- merge(Tennessee_Shallow_2005, grouper, by = c("SPECIES_CD"))


Tennessee_Shallow_2006 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2006.xls")

Tennessee_Shallow_2006_snapper <- merge(Tennessee_Shallow_2006, snapper, by = c("SPECIES_CD"))


Tennessee_Shallow_2006_grouper <- merge(Tennessee_Shallow_2006, grouper, by = c("SPECIES_CD"))

Tennessee_Shallow_2007 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2007.xls")

Tennessee_Shallow_2007_snapper <- merge(Tennessee_Shallow_2007, snapper, by = c("SPECIES_CD"))


Tennessee_Shallow_2007_grouper <- merge(Tennessee_Shallow_2007, grouper, by = c("SPECIES_CD"))


Tennessee_Shallow_2008 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2008.xls")

Tennessee_Shallow_2008_snapper <- merge(Tennessee_Shallow_2008, snapper, by = c("SPECIES_CD"))


Tennessee_Shallow_2008_grouper <- merge(Tennessee_Shallow_2008, grouper, by = c("SPECIES_CD"))


Tennessee_Shallow_2009 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2009.xls")

Tennessee_Shallow_2009_snapper <- merge(Tennessee_Shallow_2009, snapper, by = c("SPECIES_CD"))


Tennessee_Shallow_2009_grouper <- merge(Tennessee_Shallow_2009, grouper, by = c("SPECIES_CD"))


Tennessee_Shallow_2010 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2010.xls")

Tennessee_Shallow_2010_snapper <- merge(Tennessee_Shallow_2010, snapper, by = c("SPECIES_CD"))


Tennessee_Shallow_2010_grouper <- merge(Tennessee_Shallow_2010, grouper, by = c("SPECIES_CD"))

Tennessee_Shallow_2011 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2011.xls")

Tennessee_Shallow_2011_snapper <- merge(Tennessee_Shallow_2011, snapper, by = c("SPECIES_CD"))


Tennessee_Shallow_2011_grouper <- merge(Tennessee_Shallow_2011, grouper, by = c("SPECIES_CD"))



Tennessee_Shallow_2012 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2012.xls")

Tennessee_Shallow_2012_snapper <- merge(Tennessee_Shallow_2012, snapper, by = c("SPECIES_CD"))


Tennessee_Shallow_2012_grouper <- merge(Tennessee_Shallow_2012, grouper, by = c("SPECIES_CD"))


Tennessee_Shallow_2014 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2014.xls")

Tennessee_Shallow_2014_snapper <- merge(Tennessee_Shallow_2014, snapper, by = c("SPECIES_CD"))


Tennessee_Shallow_2014_grouper <- merge(Tennessee_Shallow_2014, grouper, by = c("SPECIES_CD"))


Tennessee_Shallow_2016 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2016.xls")

Tennessee_Shallow_2016_snapper <- merge(Tennessee_Shallow_2016, snapper, by = c("SPECIES_CD"))


Tennessee_Shallow_2016_grouper <- merge(Tennessee_Shallow_2016, grouper, by = c("SPECIES_CD"))


Tennessee_Shallow_2018 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2018.xls")

Tennessee_Shallow_2018_snapper <- merge(Tennessee_Shallow_2018, snapper, by = c("SPECIES_CD"))


Tennessee_Shallow_2018_grouper <- merge(Tennessee_Shallow_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Tennessee_Shallow_snapper_1 <- rbind(Tennessee_Shallow_1999_snapper,Tennessee_Shallow_2000_snapper)
Tennessee_Shallow_snapper_2 <- rbind(Tennessee_Shallow_snapper_1,Tennessee_Shallow_2001_snapper)
Tennessee_Shallow_snapper_3 <- rbind(Tennessee_Shallow_snapper_2,Tennessee_Shallow_2002_snapper)
Tennessee_Shallow_snapper_4 <- rbind(Tennessee_Shallow_snapper_3,Tennessee_Shallow_2003_snapper)
#Tennessee_Shallow_snapper_5 <- rbind(Tennessee_Shallow_snapper_4,Tennessee_Shallow_2004_snapper)
Tennessee_Shallow_snapper_6 <- rbind(Tennessee_Shallow_snapper_4,Tennessee_Shallow_2005_snapper)
Tennessee_Shallow_snapper_7 <- rbind(Tennessee_Shallow_snapper_6,Tennessee_Shallow_2006_snapper)
Tennessee_Shallow_snapper_8 <- rbind(Tennessee_Shallow_snapper_7,Tennessee_Shallow_2007_snapper)
Tennessee_Shallow_snapper_9 <- rbind(Tennessee_Shallow_snapper_8,Tennessee_Shallow_2008_snapper)
Tennessee_Shallow_snapper_10 <- rbind(Tennessee_Shallow_snapper_9,Tennessee_Shallow_2009_snapper)
Tennessee_Shallow_snapper_11<- rbind(Tennessee_Shallow_snapper_10,Tennessee_Shallow_2010_snapper)
Tennessee_Shallow_snapper_12 <- rbind(Tennessee_Shallow_snapper_11,Tennessee_Shallow_2011_snapper)
Tennessee_Shallow_snapper_13 <- rbind(Tennessee_Shallow_snapper_12,Tennessee_Shallow_2012_snapper)
Tennessee_Shallow_snapper_14 <- rbind(Tennessee_Shallow_snapper_13,Tennessee_Shallow_2014_snapper)
Tennessee_Shallow_snapper_15 <- rbind(Tennessee_Shallow_snapper_14,Tennessee_Shallow_2016_snapper)
Tennessee_Shallow_snapper_data_combined <- rbind(Tennessee_Shallow_snapper_15,Tennessee_Shallow_2018_snapper)



Tennessee_Shallow_grouper_1 <- rbind(Tennessee_Shallow_1999_grouper,Tennessee_Shallow_2000_grouper)
Tennessee_Shallow_grouper_2 <- rbind(Tennessee_Shallow_grouper_1,Tennessee_Shallow_2001_grouper)
Tennessee_Shallow_grouper_3 <- rbind(Tennessee_Shallow_grouper_2,Tennessee_Shallow_2002_grouper)
Tennessee_Shallow_grouper_4 <- rbind(Tennessee_Shallow_grouper_3,Tennessee_Shallow_2003_grouper)
#Tennessee_Shallow_grouper_5 <- rbind(Tennessee_Shallow_grouper_4,Tennessee_Shallow_2004_grouper)
Tennessee_Shallow_grouper_6 <- rbind(Tennessee_Shallow_grouper_4,Tennessee_Shallow_2005_grouper)
Tennessee_Shallow_grouper_7 <- rbind(Tennessee_Shallow_grouper_6,Tennessee_Shallow_2006_grouper)
Tennessee_Shallow_grouper_8 <- rbind(Tennessee_Shallow_grouper_7,Tennessee_Shallow_2007_grouper)
Tennessee_Shallow_grouper_9 <- rbind(Tennessee_Shallow_grouper_8,Tennessee_Shallow_2008_grouper)
Tennessee_Shallow_grouper_10 <- rbind(Tennessee_Shallow_grouper_9,Tennessee_Shallow_2009_grouper)
Tennessee_Shallow_grouper_11<- rbind(Tennessee_Shallow_grouper_10,Tennessee_Shallow_2010_grouper)
Tennessee_Shallow_grouper_12 <- rbind(Tennessee_Shallow_grouper_11,Tennessee_Shallow_2011_grouper)
Tennessee_Shallow_grouper_13 <- rbind(Tennessee_Shallow_grouper_12,Tennessee_Shallow_2012_grouper)
Tennessee_Shallow_grouper_14 <- rbind(Tennessee_Shallow_grouper_13,Tennessee_Shallow_2014_grouper)
Tennessee_Shallow_grouper_15 <- rbind(Tennessee_Shallow_grouper_14,Tennessee_Shallow_2016_grouper)
Tennessee_Shallow_grouper_data_combined <- rbind(Tennessee_Shallow_grouper_15,Tennessee_Shallow_2018_grouper)



Tennessee_Shallow_all <- rbind(Tennessee_Shallow_snapper_data_combined,Tennessee_Shallow_grouper_data_combined)
Tennessee_Shallow_all$sitename <- "Tennessee Shallow"

#export(Tennessee_Shallow_all, "Tennessee_Shallow/data/Tennessee_Shallow_snapper_grouper_type.csv")




# Thor 

Thor_1999 <- import("Thor/data/Thor_1999.xls")


Thor_1999_snapper <- merge(Thor_1999, snapper, by = c("SPECIES_CD"))


Thor_1999_grouper <- merge(Thor_1999, grouper, by = c("SPECIES_CD"))


Thor_2000 <- import("Thor/data/Thor_2000.xls")

Thor_2000_snapper <- merge(Thor_2000, snapper, by = c("SPECIES_CD"))


Thor_2000_grouper <- merge(Thor_2000, grouper, by = c("SPECIES_CD"))

Thor_2001 <- import("Thor/data/Thor_2001.xls")

Thor_2001_snapper <- merge(Thor_2001, snapper, by = c("SPECIES_CD"))


Thor_2001_grouper <- merge(Thor_2001, grouper, by = c("SPECIES_CD"))


Thor_2002 <- import("Thor/data/Thor_2002.xls")

Thor_2002_snapper <- merge(Thor_2002, snapper, by = c("SPECIES_CD"))


Thor_2002_grouper <- merge(Thor_2002, grouper, by = c("SPECIES_CD"))


Thor_2003 <- import("Thor/data/Thor_2003.xls")

Thor_2003_snapper <- merge(Thor_2003, snapper, by = c("SPECIES_CD"))


Thor_2003_grouper <- merge(Thor_2003, grouper, by = c("SPECIES_CD"))


# Thor_2004 <- import("Thor/data/Thor_2004.xls")
# 
# Thor_2004_snapper <- merge(Thor_2004, snapper, by = c("SPECIES_CD"))
# Thor_2004_snapper <- summarise_at(Thor_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Thor_2004_snapper$Year <- ('2004')
# Thor_2004_snapper$Reef <- ('Thor')
# 
# 
# Thor_2004_grouper <- merge(Thor_2004, grouper, by = c("SPECIES_CD"))
# Thor_2004_grouper <- summarise_at(Thor_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Thor_2004_grouper$Year <- ('2004')
# Thor_2004_grouper$Reef <- ('Thor')

Thor_2005 <- import("Thor/data/Thor_2005.xls")

Thor_2005_snapper <- merge(Thor_2005, snapper, by = c("SPECIES_CD"))


Thor_2005_grouper <- merge(Thor_2005, grouper, by = c("SPECIES_CD"))


Thor_2006 <- import("Thor/data/Thor_2006.xls")

Thor_2006_snapper <- merge(Thor_2006, snapper, by = c("SPECIES_CD"))


Thor_2006_grouper <- merge(Thor_2006, grouper, by = c("SPECIES_CD"))

Thor_2007 <- import("Thor/data/Thor_2007.xls")

Thor_2007_snapper <- merge(Thor_2007, snapper, by = c("SPECIES_CD"))


Thor_2007_grouper <- merge(Thor_2007, grouper, by = c("SPECIES_CD"))


Thor_2008 <- import("Thor/data/Thor_2008.xls")

Thor_2008_snapper <- merge(Thor_2008, snapper, by = c("SPECIES_CD"))


Thor_2008_grouper <- merge(Thor_2008, grouper, by = c("SPECIES_CD"))


Thor_2009 <- import("Thor/data/Thor_2009.xls")

Thor_2009_snapper <- merge(Thor_2009, snapper, by = c("SPECIES_CD"))


Thor_2009_grouper <- merge(Thor_2009, grouper, by = c("SPECIES_CD"))


Thor_2010 <- import("Thor/data/Thor_2010.xls")

Thor_2010_snapper <- merge(Thor_2010, snapper, by = c("SPECIES_CD"))


Thor_2010_grouper <- merge(Thor_2010, grouper, by = c("SPECIES_CD"))

Thor_2011 <- import("Thor/data/Thor_2011.xls")

Thor_2011_snapper <- merge(Thor_2011, snapper, by = c("SPECIES_CD"))


Thor_2011_grouper <- merge(Thor_2011, grouper, by = c("SPECIES_CD"))



Thor_2012 <- import("Thor/data/Thor_2012.xls")

Thor_2012_snapper <- merge(Thor_2012, snapper, by = c("SPECIES_CD"))


Thor_2012_grouper <- merge(Thor_2012, grouper, by = c("SPECIES_CD"))


Thor_2014 <- import("Thor/data/Thor_2014.xls")

Thor_2014_snapper <- merge(Thor_2014, snapper, by = c("SPECIES_CD"))


Thor_2014_grouper <- merge(Thor_2014, grouper, by = c("SPECIES_CD"))


Thor_2016 <- import("Thor/data/Thor_2016.xls")

Thor_2016_snapper <- merge(Thor_2016, snapper, by = c("SPECIES_CD"))


Thor_2016_grouper <- merge(Thor_2016, grouper, by = c("SPECIES_CD"))


Thor_2018 <- import("Thor/data/Thor_2018.xls")

Thor_2018_snapper <- merge(Thor_2018, snapper, by = c("SPECIES_CD"))


Thor_2018_grouper <- merge(Thor_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Thor_snapper_1 <- rbind(Thor_1999_snapper,Thor_2000_snapper)
Thor_snapper_2 <- rbind(Thor_snapper_1,Thor_2001_snapper)
Thor_snapper_3 <- rbind(Thor_snapper_2,Thor_2002_snapper)
Thor_snapper_4 <- rbind(Thor_snapper_3,Thor_2003_snapper)
#Thor_snapper_5 <- rbind(Thor_snapper_4,Thor_2004_snapper)
Thor_snapper_6 <- rbind(Thor_snapper_4,Thor_2005_snapper)
Thor_snapper_7 <- rbind(Thor_snapper_6,Thor_2006_snapper)
Thor_snapper_8 <- rbind(Thor_snapper_7,Thor_2007_snapper)
Thor_snapper_9 <- rbind(Thor_snapper_8,Thor_2008_snapper)
Thor_snapper_10 <- rbind(Thor_snapper_9,Thor_2009_snapper)
Thor_snapper_11<- rbind(Thor_snapper_10,Thor_2010_snapper)
Thor_snapper_12 <- rbind(Thor_snapper_11,Thor_2011_snapper)
Thor_snapper_13 <- rbind(Thor_snapper_12,Thor_2012_snapper)
Thor_snapper_14 <- rbind(Thor_snapper_13,Thor_2014_snapper)
Thor_snapper_15 <- rbind(Thor_snapper_14,Thor_2016_snapper)
Thor_snapper_data_combined <- rbind(Thor_snapper_15,Thor_2018_snapper)



Thor_grouper_1 <- rbind(Thor_1999_grouper,Thor_2000_grouper)
Thor_grouper_2 <- rbind(Thor_grouper_1,Thor_2001_grouper)
Thor_grouper_3 <- rbind(Thor_grouper_2,Thor_2002_grouper)
Thor_grouper_4 <- rbind(Thor_grouper_3,Thor_2003_grouper)
#Thor_grouper_5 <- rbind(Thor_grouper_4,Thor_2004_grouper)
Thor_grouper_6 <- rbind(Thor_grouper_4,Thor_2005_grouper)
Thor_grouper_7 <- rbind(Thor_grouper_6,Thor_2006_grouper)
Thor_grouper_8 <- rbind(Thor_grouper_7,Thor_2007_grouper)
Thor_grouper_9 <- rbind(Thor_grouper_8,Thor_2008_grouper)
Thor_grouper_10 <- rbind(Thor_grouper_9,Thor_2009_grouper)
Thor_grouper_11<- rbind(Thor_grouper_10,Thor_2010_grouper)
Thor_grouper_12 <- rbind(Thor_grouper_11,Thor_2011_grouper)
Thor_grouper_13 <- rbind(Thor_grouper_12,Thor_2012_grouper)
Thor_grouper_14 <- rbind(Thor_grouper_13,Thor_2014_grouper)
Thor_grouper_15 <- rbind(Thor_grouper_14,Thor_2016_grouper)
Thor_grouper_data_combined <- rbind(Thor_grouper_15,Thor_2018_grouper)



Thor_all <- rbind(Thor_snapper_data_combined,Thor_grouper_data_combined)
Thor_all$sitename <- "Thor"

#export(Thor_all, "Thor/data/Thor_snapper_grouper_type.csv")





# West Turtle Shoal 

West_Turtle_Shoal_1999 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_1999.xls")


West_Turtle_Shoal_1999_snapper <- merge(West_Turtle_Shoal_1999, snapper, by = c("SPECIES_CD"))


West_Turtle_Shoal_1999_grouper <- merge(West_Turtle_Shoal_1999, grouper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2000 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2000.xls")

West_Turtle_Shoal_2000_snapper <- merge(West_Turtle_Shoal_2000, snapper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2000_grouper <- merge(West_Turtle_Shoal_2000, grouper, by = c("SPECIES_CD"))

West_Turtle_Shoal_2001 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2001.xls")

West_Turtle_Shoal_2001_snapper <- merge(West_Turtle_Shoal_2001, snapper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2001_grouper <- merge(West_Turtle_Shoal_2001, grouper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2002 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2002.xls")

West_Turtle_Shoal_2002_snapper <- merge(West_Turtle_Shoal_2002, snapper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2002_grouper <- merge(West_Turtle_Shoal_2002, grouper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2003 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2003.xls")

West_Turtle_Shoal_2003_snapper <- merge(West_Turtle_Shoal_2003, snapper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2003_grouper <- merge(West_Turtle_Shoal_2003, grouper, by = c("SPECIES_CD"))


# West_Turtle_Shoal_2004 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2004.xls")
# 
# West_Turtle_Shoal_2004_snapper <- merge(West_Turtle_Shoal_2004, snapper, by = c("SPECIES_CD"))
# West_Turtle_Shoal_2004_snapper <- summarise_at(West_Turtle_Shoal_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# West_Turtle_Shoal_2004_snapper$Year <- ('2004')
# West_Turtle_Shoal_2004_snapper$Reef <- ('West Turtle Shoal')
# 
# 
# West_Turtle_Shoal_2004_grouper <- merge(West_Turtle_Shoal_2004, grouper, by = c("SPECIES_CD"))
# West_Turtle_Shoal_2004_grouper <- summarise_at(West_Turtle_Shoal_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# West_Turtle_Shoal_2004_grouper$Year <- ('2004')
# West_Turtle_Shoal_2004_grouper$Reef <- ('West Turtle Shoal')

West_Turtle_Shoal_2005 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2005.xls")

West_Turtle_Shoal_2005_snapper <- merge(West_Turtle_Shoal_2005, snapper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2005_grouper <- merge(West_Turtle_Shoal_2005, grouper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2006 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2006.xls")

West_Turtle_Shoal_2006_snapper <- merge(West_Turtle_Shoal_2006, snapper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2006_grouper <- merge(West_Turtle_Shoal_2006, grouper, by = c("SPECIES_CD"))

West_Turtle_Shoal_2007 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2007.xls")

West_Turtle_Shoal_2007_snapper <- merge(West_Turtle_Shoal_2007, snapper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2007_grouper <- merge(West_Turtle_Shoal_2007, grouper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2008 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2008.xls")

West_Turtle_Shoal_2008_snapper <- merge(West_Turtle_Shoal_2008, snapper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2008_grouper <- merge(West_Turtle_Shoal_2008, grouper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2009 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2009.xls")

West_Turtle_Shoal_2009_snapper <- merge(West_Turtle_Shoal_2009, snapper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2009_grouper <- merge(West_Turtle_Shoal_2009, grouper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2010 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2010.xls")

West_Turtle_Shoal_2010_snapper <- merge(West_Turtle_Shoal_2010, snapper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2010_grouper <- merge(West_Turtle_Shoal_2010, grouper, by = c("SPECIES_CD"))

West_Turtle_Shoal_2011 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2011.xls")

West_Turtle_Shoal_2011_snapper <- merge(West_Turtle_Shoal_2011, snapper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2011_grouper <- merge(West_Turtle_Shoal_2011, grouper, by = c("SPECIES_CD"))



West_Turtle_Shoal_2012 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2012.xls")

West_Turtle_Shoal_2012_snapper <- merge(West_Turtle_Shoal_2012, snapper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2012_grouper <- merge(West_Turtle_Shoal_2012, grouper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2014 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2014.xls")

West_Turtle_Shoal_2014_snapper <- merge(West_Turtle_Shoal_2014, snapper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2014_grouper <- merge(West_Turtle_Shoal_2014, grouper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2016 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2016.xls")

West_Turtle_Shoal_2016_snapper <- merge(West_Turtle_Shoal_2016, snapper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2016_grouper <- merge(West_Turtle_Shoal_2016, grouper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2018 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2018.xls")

West_Turtle_Shoal_2018_snapper <- merge(West_Turtle_Shoal_2018, snapper, by = c("SPECIES_CD"))


West_Turtle_Shoal_2018_grouper <- merge(West_Turtle_Shoal_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



West_Turtle_Shoal_snapper_1 <- rbind(West_Turtle_Shoal_1999_snapper,West_Turtle_Shoal_2000_snapper)
West_Turtle_Shoal_snapper_2 <- rbind(West_Turtle_Shoal_snapper_1,West_Turtle_Shoal_2001_snapper)
West_Turtle_Shoal_snapper_3 <- rbind(West_Turtle_Shoal_snapper_2,West_Turtle_Shoal_2002_snapper)
West_Turtle_Shoal_snapper_4 <- rbind(West_Turtle_Shoal_snapper_3,West_Turtle_Shoal_2003_snapper)
#West_Turtle_Shoal_snapper_5 <- rbind(West_Turtle_Shoal_snapper_4,West_Turtle_Shoal_2004_snapper)
West_Turtle_Shoal_snapper_6 <- rbind(West_Turtle_Shoal_snapper_4,West_Turtle_Shoal_2005_snapper)
West_Turtle_Shoal_snapper_7 <- rbind(West_Turtle_Shoal_snapper_6,West_Turtle_Shoal_2006_snapper)
West_Turtle_Shoal_snapper_8 <- rbind(West_Turtle_Shoal_snapper_7,West_Turtle_Shoal_2007_snapper)
West_Turtle_Shoal_snapper_9 <- rbind(West_Turtle_Shoal_snapper_8,West_Turtle_Shoal_2008_snapper)
West_Turtle_Shoal_snapper_10 <- rbind(West_Turtle_Shoal_snapper_9,West_Turtle_Shoal_2009_snapper)
West_Turtle_Shoal_snapper_11<- rbind(West_Turtle_Shoal_snapper_10,West_Turtle_Shoal_2010_snapper)
West_Turtle_Shoal_snapper_12 <- rbind(West_Turtle_Shoal_snapper_11,West_Turtle_Shoal_2011_snapper)
West_Turtle_Shoal_snapper_13 <- rbind(West_Turtle_Shoal_snapper_12,West_Turtle_Shoal_2012_snapper)
West_Turtle_Shoal_snapper_14 <- rbind(West_Turtle_Shoal_snapper_13,West_Turtle_Shoal_2014_snapper)
West_Turtle_Shoal_snapper_15 <- rbind(West_Turtle_Shoal_snapper_14,West_Turtle_Shoal_2016_snapper)
West_Turtle_Shoal_snapper_data_combined <- rbind(West_Turtle_Shoal_snapper_15,West_Turtle_Shoal_2018_snapper)



West_Turtle_Shoal_grouper_1 <- rbind(West_Turtle_Shoal_1999_grouper,West_Turtle_Shoal_2000_grouper)
West_Turtle_Shoal_grouper_2 <- rbind(West_Turtle_Shoal_grouper_1,West_Turtle_Shoal_2001_grouper)
West_Turtle_Shoal_grouper_3 <- rbind(West_Turtle_Shoal_grouper_2,West_Turtle_Shoal_2002_grouper)
West_Turtle_Shoal_grouper_4 <- rbind(West_Turtle_Shoal_grouper_3,West_Turtle_Shoal_2003_grouper)
#West_Turtle_Shoal_grouper_5 <- rbind(West_Turtle_Shoal_grouper_4,West_Turtle_Shoal_2004_grouper)
West_Turtle_Shoal_grouper_6 <- rbind(West_Turtle_Shoal_grouper_4,West_Turtle_Shoal_2005_grouper)
West_Turtle_Shoal_grouper_7 <- rbind(West_Turtle_Shoal_grouper_6,West_Turtle_Shoal_2006_grouper)
West_Turtle_Shoal_grouper_8 <- rbind(West_Turtle_Shoal_grouper_7,West_Turtle_Shoal_2007_grouper)
West_Turtle_Shoal_grouper_9 <- rbind(West_Turtle_Shoal_grouper_8,West_Turtle_Shoal_2008_grouper)
West_Turtle_Shoal_grouper_10 <- rbind(West_Turtle_Shoal_grouper_9,West_Turtle_Shoal_2009_grouper)
West_Turtle_Shoal_grouper_11<- rbind(West_Turtle_Shoal_grouper_10,West_Turtle_Shoal_2010_grouper)
West_Turtle_Shoal_grouper_12 <- rbind(West_Turtle_Shoal_grouper_11,West_Turtle_Shoal_2011_grouper)
West_Turtle_Shoal_grouper_13 <- rbind(West_Turtle_Shoal_grouper_12,West_Turtle_Shoal_2012_grouper)
West_Turtle_Shoal_grouper_14 <- rbind(West_Turtle_Shoal_grouper_13,West_Turtle_Shoal_2014_grouper)
West_Turtle_Shoal_grouper_15 <- rbind(West_Turtle_Shoal_grouper_14,West_Turtle_Shoal_2016_grouper)
West_Turtle_Shoal_grouper_data_combined <- rbind(West_Turtle_Shoal_grouper_15,West_Turtle_Shoal_2018_grouper)



West_Turtle_Shoal_all <- rbind(West_Turtle_Shoal_snapper_data_combined,West_Turtle_Shoal_grouper_data_combined)
West_Turtle_Shoal_all$sitename <- "West Turtle Shoal"

#export(West_Turtle_Shoal_all, "West_Turtle_Shoal/data/West_Turtle_Shoal_snapper_grouper_type.csv")



## Combine all MK 

MK_reef_snapper_combined <- rbind(Alligator_Deep_all,Alligator_Shallow_all,Dustan_Rocks_all,Long_Key_all,Rawa_Reef_all,Sombrero_Deep_all,Sombrero_Shallow_all,Tennessee_Deep_all,Tennessee_Shallow_all,Thor_all,West_Turtle_Shoal_all)
#export(MK_reef_snapper_combined, "MK_snapper_grouper_type.csv")

 








#Upper Keys

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/UK")


# Admiral 

Admiral_1999 <- import("Admiral/data/Admiral_1999.xls")


Admiral_1999_snapper <- merge(Admiral_1999, snapper, by = c("SPECIES_CD"))

Admiral_1999_grouper <- merge(Admiral_1999, grouper, by = c("SPECIES_CD"))


Admiral_2000 <- import("Admiral/data/Admiral_2000.xls")

Admiral_2000_snapper <- merge(Admiral_2000, snapper, by = c("SPECIES_CD"))


Admiral_2000_grouper <- merge(Admiral_2000, grouper, by = c("SPECIES_CD"))

Admiral_2001 <- import("Admiral/data/Admiral_2001.xls")

Admiral_2001_snapper <- merge(Admiral_2001, snapper, by = c("SPECIES_CD"))


Admiral_2001_grouper <- merge(Admiral_2001, grouper, by = c("SPECIES_CD"))


Admiral_2002 <- import("Admiral/data/Admiral_2002.xls")

Admiral_2002_snapper <- merge(Admiral_2002, snapper, by = c("SPECIES_CD"))


Admiral_2002_grouper <- merge(Admiral_2002, grouper, by = c("SPECIES_CD"))


Admiral_2003 <- import("Admiral/data/Admiral_2003.xls")

Admiral_2003_snapper <- merge(Admiral_2003, snapper, by = c("SPECIES_CD"))


Admiral_2003_grouper <- merge(Admiral_2003, grouper, by = c("SPECIES_CD"))


Admiral_2004 <- import("Admiral/data/Admiral_2004.xls")

Admiral_2004_snapper <- merge(Admiral_2004, snapper, by = c("SPECIES_CD"))


Admiral_2004_grouper <- merge(Admiral_2004, grouper, by = c("SPECIES_CD"))

Admiral_2005 <- import("Admiral/data/Admiral_2005.xls")

Admiral_2005_snapper <- merge(Admiral_2005, snapper, by = c("SPECIES_CD"))


Admiral_2005_grouper <- merge(Admiral_2005, grouper, by = c("SPECIES_CD"))


Admiral_2006 <- import("Admiral/data/Admiral_2006.xls")

Admiral_2006_snapper <- merge(Admiral_2006, snapper, by = c("SPECIES_CD"))


Admiral_2006_grouper <- merge(Admiral_2006, grouper, by = c("SPECIES_CD"))

Admiral_2007 <- import("Admiral/data/Admiral_2007.xls")

Admiral_2007_snapper <- merge(Admiral_2007, snapper, by = c("SPECIES_CD"))


Admiral_2007_grouper <- merge(Admiral_2007, grouper, by = c("SPECIES_CD"))


Admiral_2008 <- import("Admiral/data/Admiral_2008.xls")

Admiral_2008_snapper <- merge(Admiral_2008, snapper, by = c("SPECIES_CD"))


Admiral_2008_grouper <- merge(Admiral_2008, grouper, by = c("SPECIES_CD"))


Admiral_2009 <- import("Admiral/data/Admiral_2009.xls")

Admiral_2009_snapper <- merge(Admiral_2009, snapper, by = c("SPECIES_CD"))


Admiral_2009_grouper <- merge(Admiral_2009, grouper, by = c("SPECIES_CD"))


Admiral_2010 <- import("Admiral/data/Admiral_2010.xls")

Admiral_2010_snapper <- merge(Admiral_2010, snapper, by = c("SPECIES_CD"))


Admiral_2010_grouper <- merge(Admiral_2010, grouper, by = c("SPECIES_CD"))

Admiral_2011 <- import("Admiral/data/Admiral_2011.xls")

Admiral_2011_snapper <- merge(Admiral_2011, snapper, by = c("SPECIES_CD"))


Admiral_2011_grouper <- merge(Admiral_2011, grouper, by = c("SPECIES_CD"))



Admiral_2012 <- import("Admiral/data/Admiral_2012.xls")

Admiral_2012_snapper <- merge(Admiral_2012, snapper, by = c("SPECIES_CD"))


Admiral_2012_grouper <- merge(Admiral_2012, grouper, by = c("SPECIES_CD"))


Admiral_2014 <- import("Admiral/data/Admiral_2014.xls")

Admiral_2014_snapper <- merge(Admiral_2014, snapper, by = c("SPECIES_CD"))


Admiral_2014_grouper <- merge(Admiral_2014, grouper, by = c("SPECIES_CD"))


Admiral_2016 <- import("Admiral/data/Admiral_2016.xls")

Admiral_2016_snapper <- merge(Admiral_2016, snapper, by = c("SPECIES_CD"))


Admiral_2016_grouper <- merge(Admiral_2016, grouper, by = c("SPECIES_CD"))


Admiral_2018 <- import("Admiral/data/Admiral_2018.xls")

Admiral_2018_snapper <- merge(Admiral_2018, snapper, by = c("SPECIES_CD"))


Admiral_2018_grouper <- merge(Admiral_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Admiral_snapper_1 <- rbind(Admiral_1999_snapper,Admiral_2000_snapper)
Admiral_snapper_2 <- rbind(Admiral_snapper_1,Admiral_2001_snapper)
Admiral_snapper_3 <- rbind(Admiral_snapper_2,Admiral_2002_snapper)
Admiral_snapper_4 <- rbind(Admiral_snapper_3,Admiral_2003_snapper)
Admiral_snapper_5 <- rbind(Admiral_snapper_4,Admiral_2004_snapper)
Admiral_snapper_6 <- rbind(Admiral_snapper_5,Admiral_2005_snapper)
Admiral_snapper_7 <- rbind(Admiral_snapper_6,Admiral_2006_snapper)
Admiral_snapper_8 <- rbind(Admiral_snapper_7,Admiral_2007_snapper)
Admiral_snapper_9 <- rbind(Admiral_snapper_8,Admiral_2008_snapper)
Admiral_snapper_10 <- rbind(Admiral_snapper_9,Admiral_2009_snapper)
Admiral_snapper_11<- rbind(Admiral_snapper_10,Admiral_2010_snapper)
Admiral_snapper_12 <- rbind(Admiral_snapper_11,Admiral_2011_snapper)
Admiral_snapper_13 <- rbind(Admiral_snapper_12,Admiral_2012_snapper)
Admiral_snapper_14 <- rbind(Admiral_snapper_13,Admiral_2014_snapper)
Admiral_snapper_15 <- rbind(Admiral_snapper_14,Admiral_2016_snapper)
Admiral_snapper_data_combined <- rbind(Admiral_snapper_15,Admiral_2018_snapper)



Admiral_grouper_1 <- rbind(Admiral_1999_grouper,Admiral_2000_grouper)
Admiral_grouper_2 <- rbind(Admiral_grouper_1,Admiral_2001_grouper)
Admiral_grouper_3 <- rbind(Admiral_grouper_2,Admiral_2002_grouper)
Admiral_grouper_4 <- rbind(Admiral_grouper_3,Admiral_2003_grouper)
Admiral_grouper_5 <- rbind(Admiral_grouper_4,Admiral_2004_grouper)
Admiral_grouper_6 <- rbind(Admiral_grouper_5,Admiral_2005_grouper)
Admiral_grouper_7 <- rbind(Admiral_grouper_6,Admiral_2006_grouper)
Admiral_grouper_8 <- rbind(Admiral_grouper_7,Admiral_2007_grouper)
Admiral_grouper_9 <- rbind(Admiral_grouper_8,Admiral_2008_grouper)
Admiral_grouper_10 <- rbind(Admiral_grouper_9,Admiral_2009_grouper)
Admiral_grouper_11<- rbind(Admiral_grouper_10,Admiral_2010_grouper)
Admiral_grouper_12 <- rbind(Admiral_grouper_11,Admiral_2011_grouper)
Admiral_grouper_13 <- rbind(Admiral_grouper_12,Admiral_2012_grouper)
Admiral_grouper_14 <- rbind(Admiral_grouper_13,Admiral_2014_grouper)
Admiral_grouper_15 <- rbind(Admiral_grouper_14,Admiral_2016_grouper)
Admiral_grouper_data_combined <- rbind(Admiral_grouper_15,Admiral_2018_grouper)


Admiral_all <- rbind(Admiral_snapper_data_combined,Admiral_grouper_data_combined)
Admiral_all$sitename <- "Admiral"
#export(Admiral_all, "Admiral/data/Admiral_snapper_grouper_type.csv")



#Burr Fish


Burr_Fish_1999 <- import("Burr_Fish/data/Burr_Fish_1999.xls")


Burr_Fish_1999_snapper <- merge(Burr_Fish_1999, snapper, by = c("SPECIES_CD"))


Burr_Fish_1999_grouper <- merge(Burr_Fish_1999, grouper, by = c("SPECIES_CD"))


Burr_Fish_2000 <- import("Burr_Fish/data/Burr_Fish_2000.xls")

Burr_Fish_2000_snapper <- merge(Burr_Fish_2000, snapper, by = c("SPECIES_CD"))


Burr_Fish_2000_grouper <- merge(Burr_Fish_2000, grouper, by = c("SPECIES_CD"))

Burr_Fish_2001 <- import("Burr_Fish/data/Burr_Fish_2001.xls")

Burr_Fish_2001_snapper <- merge(Burr_Fish_2001, snapper, by = c("SPECIES_CD"))


Burr_Fish_2001_grouper <- merge(Burr_Fish_2001, grouper, by = c("SPECIES_CD"))


Burr_Fish_2002 <- import("Burr_Fish/data/Burr_Fish_2002.xls")

Burr_Fish_2002_snapper <- merge(Burr_Fish_2002, snapper, by = c("SPECIES_CD"))


Burr_Fish_2002_grouper <- merge(Burr_Fish_2002, grouper, by = c("SPECIES_CD"))


Burr_Fish_2003 <- import("Burr_Fish/data/Burr_Fish_2003.xls")

Burr_Fish_2003_snapper <- merge(Burr_Fish_2003, snapper, by = c("SPECIES_CD"))


Burr_Fish_2003_grouper <- merge(Burr_Fish_2003, grouper, by = c("SPECIES_CD"))


Burr_Fish_2004 <- import("Burr_Fish/data/Burr_Fish_2004.xls")

Burr_Fish_2004_snapper <- merge(Burr_Fish_2004, snapper, by = c("SPECIES_CD"))


Burr_Fish_2004_grouper <- merge(Burr_Fish_2004, grouper, by = c("SPECIES_CD"))

Burr_Fish_2005 <- import("Burr_Fish/data/Burr_Fish_2005.xls")

Burr_Fish_2005_snapper <- merge(Burr_Fish_2005, snapper, by = c("SPECIES_CD"))


Burr_Fish_2005_grouper <- merge(Burr_Fish_2005, grouper, by = c("SPECIES_CD"))


Burr_Fish_2006 <- import("Burr_Fish/data/Burr_Fish_2006.xls")

Burr_Fish_2006_snapper <- merge(Burr_Fish_2006, snapper, by = c("SPECIES_CD"))


Burr_Fish_2006_grouper <- merge(Burr_Fish_2006, grouper, by = c("SPECIES_CD"))

Burr_Fish_2007 <- import("Burr_Fish/data/Burr_Fish_2007.xls")

Burr_Fish_2007_snapper <- merge(Burr_Fish_2007, snapper, by = c("SPECIES_CD"))


Burr_Fish_2007_grouper <- merge(Burr_Fish_2007, grouper, by = c("SPECIES_CD"))


Burr_Fish_2008 <- import("Burr_Fish/data/Burr_Fish_2008.xls")

Burr_Fish_2008_snapper <- merge(Burr_Fish_2008, snapper, by = c("SPECIES_CD"))


Burr_Fish_2008_grouper <- merge(Burr_Fish_2008, grouper, by = c("SPECIES_CD"))


Burr_Fish_2009 <- import("Burr_Fish/data/Burr_Fish_2009.xls")

Burr_Fish_2009_snapper <- merge(Burr_Fish_2009, snapper, by = c("SPECIES_CD"))


Burr_Fish_2009_grouper <- merge(Burr_Fish_2009, grouper, by = c("SPECIES_CD"))


Burr_Fish_2010 <- import("Burr_Fish/data/Burr_Fish_2010.xls")

Burr_Fish_2010_snapper <- merge(Burr_Fish_2010, snapper, by = c("SPECIES_CD"))


Burr_Fish_2010_grouper <- merge(Burr_Fish_2010, grouper, by = c("SPECIES_CD"))

Burr_Fish_2011 <- import("Burr_Fish/data/Burr_Fish_2011.xls")

Burr_Fish_2011_snapper <- merge(Burr_Fish_2011, snapper, by = c("SPECIES_CD"))


Burr_Fish_2011_grouper <- merge(Burr_Fish_2011, grouper, by = c("SPECIES_CD"))



Burr_Fish_2012 <- import("Burr_Fish/data/Burr_Fish_2012.xls")

Burr_Fish_2012_snapper <- merge(Burr_Fish_2012, snapper, by = c("SPECIES_CD"))


Burr_Fish_2012_grouper <- merge(Burr_Fish_2012, grouper, by = c("SPECIES_CD"))


Burr_Fish_2014 <- import("Burr_Fish/data/Burr_Fish_2014.xls")

Burr_Fish_2014_snapper <- merge(Burr_Fish_2014, snapper, by = c("SPECIES_CD"))


Burr_Fish_2014_grouper <- merge(Burr_Fish_2014, grouper, by = c("SPECIES_CD"))


Burr_Fish_2016 <- import("Burr_Fish/data/Burr_Fish_2016.xls")

Burr_Fish_2016_snapper <- merge(Burr_Fish_2016, snapper, by = c("SPECIES_CD"))


Burr_Fish_2016_grouper <- merge(Burr_Fish_2016, grouper, by = c("SPECIES_CD"))


Burr_Fish_2018 <- import("Burr_Fish/data/Burr_Fish_2018.xls")

Burr_Fish_2018_snapper <- merge(Burr_Fish_2018, snapper, by = c("SPECIES_CD"))


Burr_Fish_2018_grouper <- merge(Burr_Fish_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Burr_Fish_snapper_1 <- rbind(Burr_Fish_1999_snapper,Burr_Fish_2000_snapper)
Burr_Fish_snapper_2 <- rbind(Burr_Fish_snapper_1,Burr_Fish_2001_snapper)
Burr_Fish_snapper_3 <- rbind(Burr_Fish_snapper_2,Burr_Fish_2002_snapper)
Burr_Fish_snapper_4 <- rbind(Burr_Fish_snapper_3,Burr_Fish_2003_snapper)
Burr_Fish_snapper_5 <- rbind(Burr_Fish_snapper_4,Burr_Fish_2004_snapper)
Burr_Fish_snapper_6 <- rbind(Burr_Fish_snapper_5,Burr_Fish_2005_snapper)
Burr_Fish_snapper_7 <- rbind(Burr_Fish_snapper_6,Burr_Fish_2006_snapper)
Burr_Fish_snapper_8 <- rbind(Burr_Fish_snapper_7,Burr_Fish_2007_snapper)
Burr_Fish_snapper_9 <- rbind(Burr_Fish_snapper_8,Burr_Fish_2008_snapper)
Burr_Fish_snapper_10 <- rbind(Burr_Fish_snapper_9,Burr_Fish_2009_snapper)
Burr_Fish_snapper_11<- rbind(Burr_Fish_snapper_10,Burr_Fish_2010_snapper)
Burr_Fish_snapper_12 <- rbind(Burr_Fish_snapper_11,Burr_Fish_2011_snapper)
Burr_Fish_snapper_13 <- rbind(Burr_Fish_snapper_12,Burr_Fish_2012_snapper)
Burr_Fish_snapper_14 <- rbind(Burr_Fish_snapper_13,Burr_Fish_2014_snapper)
Burr_Fish_snapper_15 <- rbind(Burr_Fish_snapper_14,Burr_Fish_2016_snapper)
Burr_Fish_snapper_data_combined <- rbind(Burr_Fish_snapper_15,Burr_Fish_2018_snapper)



Burr_Fish_grouper_1 <- rbind(Burr_Fish_1999_grouper,Burr_Fish_2000_grouper)
Burr_Fish_grouper_2 <- rbind(Burr_Fish_grouper_1,Burr_Fish_2001_grouper)
Burr_Fish_grouper_3 <- rbind(Burr_Fish_grouper_2,Burr_Fish_2002_grouper)
Burr_Fish_grouper_4 <- rbind(Burr_Fish_grouper_3,Burr_Fish_2003_grouper)
Burr_Fish_grouper_5 <- rbind(Burr_Fish_grouper_4,Burr_Fish_2004_grouper)
Burr_Fish_grouper_6 <- rbind(Burr_Fish_grouper_5,Burr_Fish_2005_grouper)
Burr_Fish_grouper_7 <- rbind(Burr_Fish_grouper_6,Burr_Fish_2006_grouper)
Burr_Fish_grouper_8 <- rbind(Burr_Fish_grouper_7,Burr_Fish_2007_grouper)
Burr_Fish_grouper_9 <- rbind(Burr_Fish_grouper_8,Burr_Fish_2008_grouper)
Burr_Fish_grouper_10 <- rbind(Burr_Fish_grouper_9,Burr_Fish_2009_grouper)
Burr_Fish_grouper_11<- rbind(Burr_Fish_grouper_10,Burr_Fish_2010_grouper)
Burr_Fish_grouper_12 <- rbind(Burr_Fish_grouper_11,Burr_Fish_2011_grouper)
Burr_Fish_grouper_13 <- rbind(Burr_Fish_grouper_12,Burr_Fish_2012_grouper)
Burr_Fish_grouper_14 <- rbind(Burr_Fish_grouper_13,Burr_Fish_2014_grouper)
Burr_Fish_grouper_15 <- rbind(Burr_Fish_grouper_14,Burr_Fish_2016_grouper)
Burr_Fish_grouper_data_combined <- rbind(Burr_Fish_grouper_15,Burr_Fish_2018_grouper)



Burr_Fish_all <- rbind(Burr_Fish_snapper_data_combined,Burr_Fish_grouper_data_combined)
Burr_Fish_all$sitename <- "Burr Fish"
#export(Burr_Fish_all, "Burr_Fish/data/Burr_Fish_snapper_grouper_type.csv")



#Carysfort Deep


Carysfort_Deep_1999 <- import("Carysfort_Deep/data/Carysfort_Deep_1999.xls")


Carysfort_Deep_1999_snapper <- merge(Carysfort_Deep_1999, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_1999_grouper <- merge(Carysfort_Deep_1999, grouper, by = c("SPECIES_CD"))


Carysfort_Deep_2000 <- import("Carysfort_Deep/data/Carysfort_Deep_2000.xls")

Carysfort_Deep_2000_snapper <- merge(Carysfort_Deep_2000, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_2000_grouper <- merge(Carysfort_Deep_2000, grouper, by = c("SPECIES_CD"))

Carysfort_Deep_2001 <- import("Carysfort_Deep/data/Carysfort_Deep_2001.xls")

Carysfort_Deep_2001_snapper <- merge(Carysfort_Deep_2001, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_2001_grouper <- merge(Carysfort_Deep_2001, grouper, by = c("SPECIES_CD"))


Carysfort_Deep_2002 <- import("Carysfort_Deep/data/Carysfort_Deep_2002.xls")

Carysfort_Deep_2002_snapper <- merge(Carysfort_Deep_2002, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_2002_grouper <- merge(Carysfort_Deep_2002, grouper, by = c("SPECIES_CD"))


Carysfort_Deep_2003 <- import("Carysfort_Deep/data/Carysfort_Deep_2003.xls")

Carysfort_Deep_2003_snapper <- merge(Carysfort_Deep_2003, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_2003_grouper <- merge(Carysfort_Deep_2003, grouper, by = c("SPECIES_CD"))


Carysfort_Deep_2004 <- import("Carysfort_Deep/data/Carysfort_Deep_2004.xls")

Carysfort_Deep_2004_snapper <- merge(Carysfort_Deep_2004, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_2004_grouper <- merge(Carysfort_Deep_2004, grouper, by = c("SPECIES_CD"))

Carysfort_Deep_2005 <- import("Carysfort_Deep/data/Carysfort_Deep_2005.xls")

Carysfort_Deep_2005_snapper <- merge(Carysfort_Deep_2005, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_2005_grouper <- merge(Carysfort_Deep_2005, grouper, by = c("SPECIES_CD"))


Carysfort_Deep_2006 <- import("Carysfort_Deep/data/Carysfort_Deep_2006.xls")

Carysfort_Deep_2006_snapper <- merge(Carysfort_Deep_2006, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_2006_grouper <- merge(Carysfort_Deep_2006, grouper, by = c("SPECIES_CD"))

Carysfort_Deep_2007 <- import("Carysfort_Deep/data/Carysfort_Deep_2007.xls")

Carysfort_Deep_2007_snapper <- merge(Carysfort_Deep_2007, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_2007_grouper <- merge(Carysfort_Deep_2007, grouper, by = c("SPECIES_CD"))


Carysfort_Deep_2008 <- import("Carysfort_Deep/data/Carysfort_Deep_2008.xls")

Carysfort_Deep_2008_snapper <- merge(Carysfort_Deep_2008, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_2008_grouper <- merge(Carysfort_Deep_2008, grouper, by = c("SPECIES_CD"))


Carysfort_Deep_2009 <- import("Carysfort_Deep/data/Carysfort_Deep_2009.xls")

Carysfort_Deep_2009_snapper <- merge(Carysfort_Deep_2009, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_2009_grouper <- merge(Carysfort_Deep_2009, grouper, by = c("SPECIES_CD"))


Carysfort_Deep_2010 <- import("Carysfort_Deep/data/Carysfort_Deep_2010.xls")

Carysfort_Deep_2010_snapper <- merge(Carysfort_Deep_2010, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_2010_grouper <- merge(Carysfort_Deep_2010, grouper, by = c("SPECIES_CD"))

Carysfort_Deep_2011 <- import("Carysfort_Deep/data/Carysfort_Deep_2011.xls")

Carysfort_Deep_2011_snapper <- merge(Carysfort_Deep_2011, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_2011_grouper <- merge(Carysfort_Deep_2011, grouper, by = c("SPECIES_CD"))



Carysfort_Deep_2012 <- import("Carysfort_Deep/data/Carysfort_Deep_2012.xls")

Carysfort_Deep_2012_snapper <- merge(Carysfort_Deep_2012, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_2012_grouper <- merge(Carysfort_Deep_2012, grouper, by = c("SPECIES_CD"))


Carysfort_Deep_2014 <- import("Carysfort_Deep/data/Carysfort_Deep_2014.xls")

Carysfort_Deep_2014_snapper <- merge(Carysfort_Deep_2014, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_2014_grouper <- merge(Carysfort_Deep_2014, grouper, by = c("SPECIES_CD"))


Carysfort_Deep_2016 <- import("Carysfort_Deep/data/Carysfort_Deep_2016.xls")

Carysfort_Deep_2016_snapper <- merge(Carysfort_Deep_2016, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_2016_grouper <- merge(Carysfort_Deep_2016, grouper, by = c("SPECIES_CD"))


Carysfort_Deep_2018 <- import("Carysfort_Deep/data/Carysfort_Deep_2018.xls")

Carysfort_Deep_2018_snapper <- merge(Carysfort_Deep_2018, snapper, by = c("SPECIES_CD"))


Carysfort_Deep_2018_grouper <- merge(Carysfort_Deep_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Carysfort_Deep_snapper_1 <- rbind(Carysfort_Deep_1999_snapper,Carysfort_Deep_2000_snapper)
Carysfort_Deep_snapper_2 <- rbind(Carysfort_Deep_snapper_1,Carysfort_Deep_2001_snapper)
Carysfort_Deep_snapper_3 <- rbind(Carysfort_Deep_snapper_2,Carysfort_Deep_2002_snapper)
Carysfort_Deep_snapper_4 <- rbind(Carysfort_Deep_snapper_3,Carysfort_Deep_2003_snapper)
Carysfort_Deep_snapper_5 <- rbind(Carysfort_Deep_snapper_4,Carysfort_Deep_2004_snapper)
Carysfort_Deep_snapper_6 <- rbind(Carysfort_Deep_snapper_5,Carysfort_Deep_2005_snapper)
Carysfort_Deep_snapper_7 <- rbind(Carysfort_Deep_snapper_6,Carysfort_Deep_2006_snapper)
Carysfort_Deep_snapper_8 <- rbind(Carysfort_Deep_snapper_7,Carysfort_Deep_2007_snapper)
Carysfort_Deep_snapper_9 <- rbind(Carysfort_Deep_snapper_8,Carysfort_Deep_2008_snapper)
Carysfort_Deep_snapper_10 <- rbind(Carysfort_Deep_snapper_9,Carysfort_Deep_2009_snapper)
Carysfort_Deep_snapper_11<- rbind(Carysfort_Deep_snapper_10,Carysfort_Deep_2010_snapper)
Carysfort_Deep_snapper_12 <- rbind(Carysfort_Deep_snapper_11,Carysfort_Deep_2011_snapper)
Carysfort_Deep_snapper_13 <- rbind(Carysfort_Deep_snapper_12,Carysfort_Deep_2012_snapper)
Carysfort_Deep_snapper_14 <- rbind(Carysfort_Deep_snapper_13,Carysfort_Deep_2014_snapper)
Carysfort_Deep_snapper_15 <- rbind(Carysfort_Deep_snapper_14,Carysfort_Deep_2016_snapper)
Carysfort_Deep_snapper_data_combined <- rbind(Carysfort_Deep_snapper_15,Carysfort_Deep_2018_snapper)



Carysfort_Deep_grouper_1 <- rbind(Carysfort_Deep_1999_grouper,Carysfort_Deep_2000_grouper)
Carysfort_Deep_grouper_2 <- rbind(Carysfort_Deep_grouper_1,Carysfort_Deep_2001_grouper)
Carysfort_Deep_grouper_3 <- rbind(Carysfort_Deep_grouper_2,Carysfort_Deep_2002_grouper)
Carysfort_Deep_grouper_4 <- rbind(Carysfort_Deep_grouper_3,Carysfort_Deep_2003_grouper)
Carysfort_Deep_grouper_5 <- rbind(Carysfort_Deep_grouper_4,Carysfort_Deep_2004_grouper)
Carysfort_Deep_grouper_6 <- rbind(Carysfort_Deep_grouper_5,Carysfort_Deep_2005_grouper)
Carysfort_Deep_grouper_7 <- rbind(Carysfort_Deep_grouper_6,Carysfort_Deep_2006_grouper)
Carysfort_Deep_grouper_8 <- rbind(Carysfort_Deep_grouper_7,Carysfort_Deep_2007_grouper)
Carysfort_Deep_grouper_9 <- rbind(Carysfort_Deep_grouper_8,Carysfort_Deep_2008_grouper)
Carysfort_Deep_grouper_10 <- rbind(Carysfort_Deep_grouper_9,Carysfort_Deep_2009_grouper)
Carysfort_Deep_grouper_11<- rbind(Carysfort_Deep_grouper_10,Carysfort_Deep_2010_grouper)
Carysfort_Deep_grouper_12 <- rbind(Carysfort_Deep_grouper_11,Carysfort_Deep_2011_grouper)
Carysfort_Deep_grouper_13 <- rbind(Carysfort_Deep_grouper_12,Carysfort_Deep_2012_grouper)
Carysfort_Deep_grouper_14 <- rbind(Carysfort_Deep_grouper_13,Carysfort_Deep_2014_grouper)
Carysfort_Deep_grouper_15 <- rbind(Carysfort_Deep_grouper_14,Carysfort_Deep_2016_grouper)
Carysfort_Deep_grouper_data_combined <- rbind(Carysfort_Deep_grouper_15,Carysfort_Deep_2018_grouper)



Carysfort_Deep_all <- rbind(Carysfort_Deep_snapper_data_combined,Carysfort_Deep_grouper_data_combined)
Carysfort_Deep_all$sitename <- "Carysfort Deep"
#export(Carysfort_Deep_all, "Carysfort_Deep/data/Carysfort_Deep_snapper_grouper_type.csv")




#Carysfort Shallow


Carysfort_Shallow_1999 <- import("Carysfort_Shallow/data/Carysfort_Shallow_1999.xls")


Carysfort_Shallow_1999_snapper <- merge(Carysfort_Shallow_1999, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_1999_grouper <- merge(Carysfort_Shallow_1999, grouper, by = c("SPECIES_CD"))


Carysfort_Shallow_2000 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2000.xls")

Carysfort_Shallow_2000_snapper <- merge(Carysfort_Shallow_2000, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_2000_grouper <- merge(Carysfort_Shallow_2000, grouper, by = c("SPECIES_CD"))

Carysfort_Shallow_2001 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2001.xls")

Carysfort_Shallow_2001_snapper <- merge(Carysfort_Shallow_2001, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_2001_grouper <- merge(Carysfort_Shallow_2001, grouper, by = c("SPECIES_CD"))


Carysfort_Shallow_2002 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2002.xls")

Carysfort_Shallow_2002_snapper <- merge(Carysfort_Shallow_2002, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_2002_grouper <- merge(Carysfort_Shallow_2002, grouper, by = c("SPECIES_CD"))


Carysfort_Shallow_2003 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2003.xls")

Carysfort_Shallow_2003_snapper <- merge(Carysfort_Shallow_2003, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_2003_grouper <- merge(Carysfort_Shallow_2003, grouper, by = c("SPECIES_CD"))


Carysfort_Shallow_2004 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2004.xls")

Carysfort_Shallow_2004_snapper <- merge(Carysfort_Shallow_2004, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_2004_grouper <- merge(Carysfort_Shallow_2004, grouper, by = c("SPECIES_CD"))

Carysfort_Shallow_2005 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2005.xls")

Carysfort_Shallow_2005_snapper <- merge(Carysfort_Shallow_2005, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_2005_grouper <- merge(Carysfort_Shallow_2005, grouper, by = c("SPECIES_CD"))


Carysfort_Shallow_2006 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2006.xls")

Carysfort_Shallow_2006_snapper <- merge(Carysfort_Shallow_2006, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_2006_grouper <- merge(Carysfort_Shallow_2006, grouper, by = c("SPECIES_CD"))

Carysfort_Shallow_2007 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2007.xls")

Carysfort_Shallow_2007_snapper <- merge(Carysfort_Shallow_2007, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_2007_grouper <- merge(Carysfort_Shallow_2007, grouper, by = c("SPECIES_CD"))


Carysfort_Shallow_2008 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2008.xls")

Carysfort_Shallow_2008_snapper <- merge(Carysfort_Shallow_2008, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_2008_grouper <- merge(Carysfort_Shallow_2008, grouper, by = c("SPECIES_CD"))


Carysfort_Shallow_2009 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2009.xls")

Carysfort_Shallow_2009_snapper <- merge(Carysfort_Shallow_2009, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_2009_grouper <- merge(Carysfort_Shallow_2009, grouper, by = c("SPECIES_CD"))


Carysfort_Shallow_2010 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2010.xls")

Carysfort_Shallow_2010_snapper <- merge(Carysfort_Shallow_2010, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_2010_grouper <- merge(Carysfort_Shallow_2010, grouper, by = c("SPECIES_CD"))

Carysfort_Shallow_2011 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2011.xls")

Carysfort_Shallow_2011_snapper <- merge(Carysfort_Shallow_2011, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_2011_grouper <- merge(Carysfort_Shallow_2011, grouper, by = c("SPECIES_CD"))



Carysfort_Shallow_2012 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2012.xls")

Carysfort_Shallow_2012_snapper <- merge(Carysfort_Shallow_2012, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_2012_grouper <- merge(Carysfort_Shallow_2012, grouper, by = c("SPECIES_CD"))


Carysfort_Shallow_2014 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2014.xls")

Carysfort_Shallow_2014_snapper <- merge(Carysfort_Shallow_2014, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_2014_grouper <- merge(Carysfort_Shallow_2014, grouper, by = c("SPECIES_CD"))


Carysfort_Shallow_2016 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2016.xls")

Carysfort_Shallow_2016_snapper <- merge(Carysfort_Shallow_2016, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_2016_grouper <- merge(Carysfort_Shallow_2016, grouper, by = c("SPECIES_CD"))


Carysfort_Shallow_2018 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2018.xls")

Carysfort_Shallow_2018_snapper <- merge(Carysfort_Shallow_2018, snapper, by = c("SPECIES_CD"))


Carysfort_Shallow_2018_grouper <- merge(Carysfort_Shallow_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Carysfort_Shallow_snapper_1 <- rbind(Carysfort_Shallow_1999_snapper,Carysfort_Shallow_2000_snapper)
Carysfort_Shallow_snapper_2 <- rbind(Carysfort_Shallow_snapper_1,Carysfort_Shallow_2001_snapper)
Carysfort_Shallow_snapper_3 <- rbind(Carysfort_Shallow_snapper_2,Carysfort_Shallow_2002_snapper)
Carysfort_Shallow_snapper_4 <- rbind(Carysfort_Shallow_snapper_3,Carysfort_Shallow_2003_snapper)
Carysfort_Shallow_snapper_5 <- rbind(Carysfort_Shallow_snapper_4,Carysfort_Shallow_2004_snapper)
Carysfort_Shallow_snapper_6 <- rbind(Carysfort_Shallow_snapper_5,Carysfort_Shallow_2005_snapper)
Carysfort_Shallow_snapper_7 <- rbind(Carysfort_Shallow_snapper_6,Carysfort_Shallow_2006_snapper)
Carysfort_Shallow_snapper_8 <- rbind(Carysfort_Shallow_snapper_7,Carysfort_Shallow_2007_snapper)
Carysfort_Shallow_snapper_9 <- rbind(Carysfort_Shallow_snapper_8,Carysfort_Shallow_2008_snapper)
Carysfort_Shallow_snapper_10 <- rbind(Carysfort_Shallow_snapper_9,Carysfort_Shallow_2009_snapper)
Carysfort_Shallow_snapper_11<- rbind(Carysfort_Shallow_snapper_10,Carysfort_Shallow_2010_snapper)
Carysfort_Shallow_snapper_12 <- rbind(Carysfort_Shallow_snapper_11,Carysfort_Shallow_2011_snapper)
Carysfort_Shallow_snapper_13 <- rbind(Carysfort_Shallow_snapper_12,Carysfort_Shallow_2012_snapper)
Carysfort_Shallow_snapper_14 <- rbind(Carysfort_Shallow_snapper_13,Carysfort_Shallow_2014_snapper)
Carysfort_Shallow_snapper_15 <- rbind(Carysfort_Shallow_snapper_14,Carysfort_Shallow_2016_snapper)
Carysfort_Shallow_snapper_data_combined <- rbind(Carysfort_Shallow_snapper_15,Carysfort_Shallow_2018_snapper)



Carysfort_Shallow_grouper_1 <- rbind(Carysfort_Shallow_1999_grouper,Carysfort_Shallow_2000_grouper)
Carysfort_Shallow_grouper_2 <- rbind(Carysfort_Shallow_grouper_1,Carysfort_Shallow_2001_grouper)
Carysfort_Shallow_grouper_3 <- rbind(Carysfort_Shallow_grouper_2,Carysfort_Shallow_2002_grouper)
Carysfort_Shallow_grouper_4 <- rbind(Carysfort_Shallow_grouper_3,Carysfort_Shallow_2003_grouper)
Carysfort_Shallow_grouper_5 <- rbind(Carysfort_Shallow_grouper_4,Carysfort_Shallow_2004_grouper)
Carysfort_Shallow_grouper_6 <- rbind(Carysfort_Shallow_grouper_5,Carysfort_Shallow_2005_grouper)
Carysfort_Shallow_grouper_7 <- rbind(Carysfort_Shallow_grouper_6,Carysfort_Shallow_2006_grouper)
Carysfort_Shallow_grouper_8 <- rbind(Carysfort_Shallow_grouper_7,Carysfort_Shallow_2007_grouper)
Carysfort_Shallow_grouper_9 <- rbind(Carysfort_Shallow_grouper_8,Carysfort_Shallow_2008_grouper)
Carysfort_Shallow_grouper_10 <- rbind(Carysfort_Shallow_grouper_9,Carysfort_Shallow_2009_grouper)
Carysfort_Shallow_grouper_11<- rbind(Carysfort_Shallow_grouper_10,Carysfort_Shallow_2010_grouper)
Carysfort_Shallow_grouper_12 <- rbind(Carysfort_Shallow_grouper_11,Carysfort_Shallow_2011_grouper)
Carysfort_Shallow_grouper_13 <- rbind(Carysfort_Shallow_grouper_12,Carysfort_Shallow_2012_grouper)
Carysfort_Shallow_grouper_14 <- rbind(Carysfort_Shallow_grouper_13,Carysfort_Shallow_2014_grouper)
Carysfort_Shallow_grouper_15 <- rbind(Carysfort_Shallow_grouper_14,Carysfort_Shallow_2016_grouper)
Carysfort_Shallow_grouper_data_combined <- rbind(Carysfort_Shallow_grouper_15,Carysfort_Shallow_2018_grouper)



Carysfort_Shallow_all <- rbind(Carysfort_Shallow_snapper_data_combined,Carysfort_Shallow_grouper_data_combined)
Carysfort_Shallow_all$sitename <- "Carysfort Shallow"
#export(Carysfort_Shallow_all, "Carysfort_Shallow/data/Carysfort_Shallow_snapper_grouper_type.csv")




#Conch Deep


Conch_Deep_1999 <- import("Conch_Deep/data/Conch_Deep_1999.xls")


Conch_Deep_1999_snapper <- merge(Conch_Deep_1999, snapper, by = c("SPECIES_CD"))


Conch_Deep_1999_grouper <- merge(Conch_Deep_1999, grouper, by = c("SPECIES_CD"))


Conch_Deep_2000 <- import("Conch_Deep/data/Conch_Deep_2000.xls")

Conch_Deep_2000_snapper <- merge(Conch_Deep_2000, snapper, by = c("SPECIES_CD"))


Conch_Deep_2000_grouper <- merge(Conch_Deep_2000, grouper, by = c("SPECIES_CD"))

Conch_Deep_2001 <- import("Conch_Deep/data/Conch_Deep_2001.xls")

Conch_Deep_2001_snapper <- merge(Conch_Deep_2001, snapper, by = c("SPECIES_CD"))


Conch_Deep_2001_grouper <- merge(Conch_Deep_2001, grouper, by = c("SPECIES_CD"))


Conch_Deep_2002 <- import("Conch_Deep/data/Conch_Deep_2002.xls")

Conch_Deep_2002_snapper <- merge(Conch_Deep_2002, snapper, by = c("SPECIES_CD"))


Conch_Deep_2002_grouper <- merge(Conch_Deep_2002, grouper, by = c("SPECIES_CD"))


Conch_Deep_2003 <- import("Conch_Deep/data/Conch_Deep_2003.xls")

Conch_Deep_2003_snapper <- merge(Conch_Deep_2003, snapper, by = c("SPECIES_CD"))


Conch_Deep_2003_grouper <- merge(Conch_Deep_2003, grouper, by = c("SPECIES_CD"))


Conch_Deep_2004 <- import("Conch_Deep/data/Conch_Deep_2004.xls")

Conch_Deep_2004_snapper <- merge(Conch_Deep_2004, snapper, by = c("SPECIES_CD"))


Conch_Deep_2004_grouper <- merge(Conch_Deep_2004, grouper, by = c("SPECIES_CD"))

Conch_Deep_2005 <- import("Conch_Deep/data/Conch_Deep_2005.xls")

Conch_Deep_2005_snapper <- merge(Conch_Deep_2005, snapper, by = c("SPECIES_CD"))


Conch_Deep_2005_grouper <- merge(Conch_Deep_2005, grouper, by = c("SPECIES_CD"))


Conch_Deep_2006 <- import("Conch_Deep/data/Conch_Deep_2006.xls")

Conch_Deep_2006_snapper <- merge(Conch_Deep_2006, snapper, by = c("SPECIES_CD"))


Conch_Deep_2006_grouper <- merge(Conch_Deep_2006, grouper, by = c("SPECIES_CD"))

Conch_Deep_2007 <- import("Conch_Deep/data/Conch_Deep_2007.xls")

Conch_Deep_2007_snapper <- merge(Conch_Deep_2007, snapper, by = c("SPECIES_CD"))


Conch_Deep_2007_grouper <- merge(Conch_Deep_2007, grouper, by = c("SPECIES_CD"))


Conch_Deep_2008 <- import("Conch_Deep/data/Conch_Deep_2008.xls")

Conch_Deep_2008_snapper <- merge(Conch_Deep_2008, snapper, by = c("SPECIES_CD"))


Conch_Deep_2008_grouper <- merge(Conch_Deep_2008, grouper, by = c("SPECIES_CD"))


Conch_Deep_2009 <- import("Conch_Deep/data/Conch_Deep_2009.xls")

Conch_Deep_2009_snapper <- merge(Conch_Deep_2009, snapper, by = c("SPECIES_CD"))


Conch_Deep_2009_grouper <- merge(Conch_Deep_2009, grouper, by = c("SPECIES_CD"))


Conch_Deep_2010 <- import("Conch_Deep/data/Conch_Deep_2010.xls")

Conch_Deep_2010_snapper <- merge(Conch_Deep_2010, snapper, by = c("SPECIES_CD"))


Conch_Deep_2010_grouper <- merge(Conch_Deep_2010, grouper, by = c("SPECIES_CD"))

Conch_Deep_2011 <- import("Conch_Deep/data/Conch_Deep_2011.xls")

Conch_Deep_2011_snapper <- merge(Conch_Deep_2011, snapper, by = c("SPECIES_CD"))


Conch_Deep_2011_grouper <- merge(Conch_Deep_2011, grouper, by = c("SPECIES_CD"))



Conch_Deep_2012 <- import("Conch_Deep/data/Conch_Deep_2012.xls")

Conch_Deep_2012_snapper <- merge(Conch_Deep_2012, snapper, by = c("SPECIES_CD"))


Conch_Deep_2012_grouper <- merge(Conch_Deep_2012, grouper, by = c("SPECIES_CD"))


Conch_Deep_2014 <- import("Conch_Deep/data/Conch_Deep_2014.xls")

Conch_Deep_2014_snapper <- merge(Conch_Deep_2014, snapper, by = c("SPECIES_CD"))


Conch_Deep_2014_grouper <- merge(Conch_Deep_2014, grouper, by = c("SPECIES_CD"))


Conch_Deep_2016 <- import("Conch_Deep/data/Conch_Deep_2016.xls")

Conch_Deep_2016_snapper <- merge(Conch_Deep_2016, snapper, by = c("SPECIES_CD"))


Conch_Deep_2016_grouper <- merge(Conch_Deep_2016, grouper, by = c("SPECIES_CD"))


Conch_Deep_2018 <- import("Conch_Deep/data/Conch_Deep_2018.xls")

Conch_Deep_2018_snapper <- merge(Conch_Deep_2018, snapper, by = c("SPECIES_CD"))


Conch_Deep_2018_grouper <- merge(Conch_Deep_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Conch_Deep_snapper_1 <- rbind(Conch_Deep_1999_snapper,Conch_Deep_2000_snapper)
Conch_Deep_snapper_2 <- rbind(Conch_Deep_snapper_1,Conch_Deep_2001_snapper)
Conch_Deep_snapper_3 <- rbind(Conch_Deep_snapper_2,Conch_Deep_2002_snapper)
Conch_Deep_snapper_4 <- rbind(Conch_Deep_snapper_3,Conch_Deep_2003_snapper)
Conch_Deep_snapper_5 <- rbind(Conch_Deep_snapper_4,Conch_Deep_2004_snapper)
Conch_Deep_snapper_6 <- rbind(Conch_Deep_snapper_5,Conch_Deep_2005_snapper)
Conch_Deep_snapper_7 <- rbind(Conch_Deep_snapper_6,Conch_Deep_2006_snapper)
Conch_Deep_snapper_8 <- rbind(Conch_Deep_snapper_7,Conch_Deep_2007_snapper)
Conch_Deep_snapper_9 <- rbind(Conch_Deep_snapper_8,Conch_Deep_2008_snapper)
Conch_Deep_snapper_10 <- rbind(Conch_Deep_snapper_9,Conch_Deep_2009_snapper)
Conch_Deep_snapper_11<- rbind(Conch_Deep_snapper_10,Conch_Deep_2010_snapper)
Conch_Deep_snapper_12 <- rbind(Conch_Deep_snapper_11,Conch_Deep_2011_snapper)
Conch_Deep_snapper_13 <- rbind(Conch_Deep_snapper_12,Conch_Deep_2012_snapper)
Conch_Deep_snapper_14 <- rbind(Conch_Deep_snapper_13,Conch_Deep_2014_snapper)
Conch_Deep_snapper_15 <- rbind(Conch_Deep_snapper_14,Conch_Deep_2016_snapper)
Conch_Deep_snapper_data_combined <- rbind(Conch_Deep_snapper_15,Conch_Deep_2018_snapper)



Conch_Deep_grouper_1 <- rbind(Conch_Deep_1999_grouper,Conch_Deep_2000_grouper)
Conch_Deep_grouper_2 <- rbind(Conch_Deep_grouper_1,Conch_Deep_2001_grouper)
Conch_Deep_grouper_3 <- rbind(Conch_Deep_grouper_2,Conch_Deep_2002_grouper)
Conch_Deep_grouper_4 <- rbind(Conch_Deep_grouper_3,Conch_Deep_2003_grouper)
Conch_Deep_grouper_5 <- rbind(Conch_Deep_grouper_4,Conch_Deep_2004_grouper)
Conch_Deep_grouper_6 <- rbind(Conch_Deep_grouper_5,Conch_Deep_2005_grouper)
Conch_Deep_grouper_7 <- rbind(Conch_Deep_grouper_6,Conch_Deep_2006_grouper)
Conch_Deep_grouper_8 <- rbind(Conch_Deep_grouper_7,Conch_Deep_2007_grouper)
Conch_Deep_grouper_9 <- rbind(Conch_Deep_grouper_8,Conch_Deep_2008_grouper)
Conch_Deep_grouper_10 <- rbind(Conch_Deep_grouper_9,Conch_Deep_2009_grouper)
Conch_Deep_grouper_11<- rbind(Conch_Deep_grouper_10,Conch_Deep_2010_grouper)
Conch_Deep_grouper_12 <- rbind(Conch_Deep_grouper_11,Conch_Deep_2011_grouper)
Conch_Deep_grouper_13 <- rbind(Conch_Deep_grouper_12,Conch_Deep_2012_grouper)
Conch_Deep_grouper_14 <- rbind(Conch_Deep_grouper_13,Conch_Deep_2014_grouper)
Conch_Deep_grouper_15 <- rbind(Conch_Deep_grouper_14,Conch_Deep_2016_grouper)
Conch_Deep_grouper_data_combined <- rbind(Conch_Deep_grouper_15,Conch_Deep_2018_grouper)



Conch_Deep_all <- rbind(Conch_Deep_snapper_data_combined,Conch_Deep_grouper_data_combined)
Conch_Deep_all$sitename <- "Conch Deep"
#export(Conch_Deep_all, "Conch_Deep/data/Conch_Deep_snapper_grouper_type.csv")




#Conch Shallow


Conch_Shallow_1999 <- import("Conch_Shallow/data/Conch_Shallow_1999.xls")


Conch_Shallow_1999_snapper <- merge(Conch_Shallow_1999, snapper, by = c("SPECIES_CD"))


Conch_Shallow_1999_grouper <- merge(Conch_Shallow_1999, grouper, by = c("SPECIES_CD"))


Conch_Shallow_2000 <- import("Conch_Shallow/data/Conch_Shallow_2000.xls")

Conch_Shallow_2000_snapper <- merge(Conch_Shallow_2000, snapper, by = c("SPECIES_CD"))


Conch_Shallow_2000_grouper <- merge(Conch_Shallow_2000, grouper, by = c("SPECIES_CD"))

Conch_Shallow_2001 <- import("Conch_Shallow/data/Conch_Shallow_2001.xls")

Conch_Shallow_2001_snapper <- merge(Conch_Shallow_2001, snapper, by = c("SPECIES_CD"))


Conch_Shallow_2001_grouper <- merge(Conch_Shallow_2001, grouper, by = c("SPECIES_CD"))


Conch_Shallow_2002 <- import("Conch_Shallow/data/Conch_Shallow_2002.xls")

Conch_Shallow_2002_snapper <- merge(Conch_Shallow_2002, snapper, by = c("SPECIES_CD"))


Conch_Shallow_2002_grouper <- merge(Conch_Shallow_2002, grouper, by = c("SPECIES_CD"))


Conch_Shallow_2003 <- import("Conch_Shallow/data/Conch_Shallow_2003.xls")

Conch_Shallow_2003_snapper <- merge(Conch_Shallow_2003, snapper, by = c("SPECIES_CD"))


Conch_Shallow_2003_grouper <- merge(Conch_Shallow_2003, grouper, by = c("SPECIES_CD"))


Conch_Shallow_2004 <- import("Conch_Shallow/data/Conch_Shallow_2004.xls")

Conch_Shallow_2004_snapper <- merge(Conch_Shallow_2004, snapper, by = c("SPECIES_CD"))


Conch_Shallow_2004_grouper <- merge(Conch_Shallow_2004, grouper, by = c("SPECIES_CD"))

Conch_Shallow_2005 <- import("Conch_Shallow/data/Conch_Shallow_2005.xls")

Conch_Shallow_2005_snapper <- merge(Conch_Shallow_2005, snapper, by = c("SPECIES_CD"))


Conch_Shallow_2005_grouper <- merge(Conch_Shallow_2005, grouper, by = c("SPECIES_CD"))


Conch_Shallow_2006 <- import("Conch_Shallow/data/Conch_Shallow_2006.xls")

Conch_Shallow_2006_snapper <- merge(Conch_Shallow_2006, snapper, by = c("SPECIES_CD"))


Conch_Shallow_2006_grouper <- merge(Conch_Shallow_2006, grouper, by = c("SPECIES_CD"))

Conch_Shallow_2007 <- import("Conch_Shallow/data/Conch_Shallow_2007.xls")

Conch_Shallow_2007_snapper <- merge(Conch_Shallow_2007, snapper, by = c("SPECIES_CD"))


Conch_Shallow_2007_grouper <- merge(Conch_Shallow_2007, grouper, by = c("SPECIES_CD"))


Conch_Shallow_2008 <- import("Conch_Shallow/data/Conch_Shallow_2008.xls")

Conch_Shallow_2008_snapper <- merge(Conch_Shallow_2008, snapper, by = c("SPECIES_CD"))


Conch_Shallow_2008_grouper <- merge(Conch_Shallow_2008, grouper, by = c("SPECIES_CD"))


Conch_Shallow_2009 <- import("Conch_Shallow/data/Conch_Shallow_2009.xls")

Conch_Shallow_2009_snapper <- merge(Conch_Shallow_2009, snapper, by = c("SPECIES_CD"))


Conch_Shallow_2009_grouper <- merge(Conch_Shallow_2009, grouper, by = c("SPECIES_CD"))


Conch_Shallow_2010 <- import("Conch_Shallow/data/Conch_Shallow_2010.xls")

Conch_Shallow_2010_snapper <- merge(Conch_Shallow_2010, snapper, by = c("SPECIES_CD"))


Conch_Shallow_2010_grouper <- merge(Conch_Shallow_2010, grouper, by = c("SPECIES_CD"))

Conch_Shallow_2011 <- import("Conch_Shallow/data/Conch_Shallow_2011.xls")

Conch_Shallow_2011_snapper <- merge(Conch_Shallow_2011, snapper, by = c("SPECIES_CD"))


Conch_Shallow_2011_grouper <- merge(Conch_Shallow_2011, grouper, by = c("SPECIES_CD"))



Conch_Shallow_2012 <- import("Conch_Shallow/data/Conch_Shallow_2012.xls")

Conch_Shallow_2012_snapper <- merge(Conch_Shallow_2012, snapper, by = c("SPECIES_CD"))


Conch_Shallow_2012_grouper <- merge(Conch_Shallow_2012, grouper, by = c("SPECIES_CD"))


Conch_Shallow_2014 <- import("Conch_Shallow/data/Conch_Shallow_2014.xls")

Conch_Shallow_2014_snapper <- merge(Conch_Shallow_2014, snapper, by = c("SPECIES_CD"))


Conch_Shallow_2014_grouper <- merge(Conch_Shallow_2014, grouper, by = c("SPECIES_CD"))


Conch_Shallow_2016 <- import("Conch_Shallow/data/Conch_Shallow_2016.xls")

Conch_Shallow_2016_snapper <- merge(Conch_Shallow_2016, snapper, by = c("SPECIES_CD"))


Conch_Shallow_2016_grouper <- merge(Conch_Shallow_2016, grouper, by = c("SPECIES_CD"))


Conch_Shallow_2018 <- import("Conch_Shallow/data/Conch_Shallow_2018.xls")

Conch_Shallow_2018_snapper <- merge(Conch_Shallow_2018, snapper, by = c("SPECIES_CD"))


Conch_Shallow_2018_grouper <- merge(Conch_Shallow_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Conch_Shallow_snapper_1 <- rbind(Conch_Shallow_1999_snapper,Conch_Shallow_2000_snapper)
Conch_Shallow_snapper_2 <- rbind(Conch_Shallow_snapper_1,Conch_Shallow_2001_snapper)
Conch_Shallow_snapper_3 <- rbind(Conch_Shallow_snapper_2,Conch_Shallow_2002_snapper)
Conch_Shallow_snapper_4 <- rbind(Conch_Shallow_snapper_3,Conch_Shallow_2003_snapper)
Conch_Shallow_snapper_5 <- rbind(Conch_Shallow_snapper_4,Conch_Shallow_2004_snapper)
Conch_Shallow_snapper_6 <- rbind(Conch_Shallow_snapper_5,Conch_Shallow_2005_snapper)
Conch_Shallow_snapper_7 <- rbind(Conch_Shallow_snapper_6,Conch_Shallow_2006_snapper)
Conch_Shallow_snapper_8 <- rbind(Conch_Shallow_snapper_7,Conch_Shallow_2007_snapper)
Conch_Shallow_snapper_9 <- rbind(Conch_Shallow_snapper_8,Conch_Shallow_2008_snapper)
Conch_Shallow_snapper_10 <- rbind(Conch_Shallow_snapper_9,Conch_Shallow_2009_snapper)
Conch_Shallow_snapper_11<- rbind(Conch_Shallow_snapper_10,Conch_Shallow_2010_snapper)
Conch_Shallow_snapper_12 <- rbind(Conch_Shallow_snapper_11,Conch_Shallow_2011_snapper)
Conch_Shallow_snapper_13 <- rbind(Conch_Shallow_snapper_12,Conch_Shallow_2012_snapper)
Conch_Shallow_snapper_14 <- rbind(Conch_Shallow_snapper_13,Conch_Shallow_2014_snapper)
Conch_Shallow_snapper_15 <- rbind(Conch_Shallow_snapper_14,Conch_Shallow_2016_snapper)
Conch_Shallow_snapper_data_combined <- rbind(Conch_Shallow_snapper_15,Conch_Shallow_2018_snapper)



Conch_Shallow_grouper_1 <- rbind(Conch_Shallow_1999_grouper,Conch_Shallow_2000_grouper)
Conch_Shallow_grouper_2 <- rbind(Conch_Shallow_grouper_1,Conch_Shallow_2001_grouper)
Conch_Shallow_grouper_3 <- rbind(Conch_Shallow_grouper_2,Conch_Shallow_2002_grouper)
Conch_Shallow_grouper_4 <- rbind(Conch_Shallow_grouper_3,Conch_Shallow_2003_grouper)
Conch_Shallow_grouper_5 <- rbind(Conch_Shallow_grouper_4,Conch_Shallow_2004_grouper)
Conch_Shallow_grouper_6 <- rbind(Conch_Shallow_grouper_5,Conch_Shallow_2005_grouper)
Conch_Shallow_grouper_7 <- rbind(Conch_Shallow_grouper_6,Conch_Shallow_2006_grouper)
Conch_Shallow_grouper_8 <- rbind(Conch_Shallow_grouper_7,Conch_Shallow_2007_grouper)
Conch_Shallow_grouper_9 <- rbind(Conch_Shallow_grouper_8,Conch_Shallow_2008_grouper)
Conch_Shallow_grouper_10 <- rbind(Conch_Shallow_grouper_9,Conch_Shallow_2009_grouper)
Conch_Shallow_grouper_11<- rbind(Conch_Shallow_grouper_10,Conch_Shallow_2010_grouper)
Conch_Shallow_grouper_12 <- rbind(Conch_Shallow_grouper_11,Conch_Shallow_2011_grouper)
Conch_Shallow_grouper_13 <- rbind(Conch_Shallow_grouper_12,Conch_Shallow_2012_grouper)
Conch_Shallow_grouper_14 <- rbind(Conch_Shallow_grouper_13,Conch_Shallow_2014_grouper)
Conch_Shallow_grouper_15 <- rbind(Conch_Shallow_grouper_14,Conch_Shallow_2016_grouper)
Conch_Shallow_grouper_data_combined <- rbind(Conch_Shallow_grouper_15,Conch_Shallow_2018_grouper)



Conch_Shallow_all <- rbind(Conch_Shallow_snapper_data_combined,Conch_Shallow_grouper_data_combined)
Conch_Shallow_all$sitename <- "Conch Shallow"
#export(Conch_Shallow_all, "Conch_Shallow/data/Conch_Shallow_snapper_grouper_type.csv")




#Grecian Rocks


Grecian_Rocks_1999 <- import("Grecian_Rocks/data/Grecian_Rocks_1999.xls")


Grecian_Rocks_1999_snapper <- merge(Grecian_Rocks_1999, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_1999_grouper <- merge(Grecian_Rocks_1999, grouper, by = c("SPECIES_CD"))


Grecian_Rocks_2000 <- import("Grecian_Rocks/data/Grecian_Rocks_2000.xls")

Grecian_Rocks_2000_snapper <- merge(Grecian_Rocks_2000, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_2000_grouper <- merge(Grecian_Rocks_2000, grouper, by = c("SPECIES_CD"))

Grecian_Rocks_2001 <- import("Grecian_Rocks/data/Grecian_Rocks_2001.xls")

Grecian_Rocks_2001_snapper <- merge(Grecian_Rocks_2001, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_2001_grouper <- merge(Grecian_Rocks_2001, grouper, by = c("SPECIES_CD"))


Grecian_Rocks_2002 <- import("Grecian_Rocks/data/Grecian_Rocks_2002.xls")

Grecian_Rocks_2002_snapper <- merge(Grecian_Rocks_2002, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_2002_grouper <- merge(Grecian_Rocks_2002, grouper, by = c("SPECIES_CD"))


Grecian_Rocks_2003 <- import("Grecian_Rocks/data/Grecian_Rocks_2003.xls")

Grecian_Rocks_2003_snapper <- merge(Grecian_Rocks_2003, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_2003_grouper <- merge(Grecian_Rocks_2003, grouper, by = c("SPECIES_CD"))


Grecian_Rocks_2004 <- import("Grecian_Rocks/data/Grecian_Rocks_2004.xls")

Grecian_Rocks_2004_snapper <- merge(Grecian_Rocks_2004, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_2004_grouper <- merge(Grecian_Rocks_2004, grouper, by = c("SPECIES_CD"))

Grecian_Rocks_2005 <- import("Grecian_Rocks/data/Grecian_Rocks_2005.xls")

Grecian_Rocks_2005_snapper <- merge(Grecian_Rocks_2005, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_2005_grouper <- merge(Grecian_Rocks_2005, grouper, by = c("SPECIES_CD"))


Grecian_Rocks_2006 <- import("Grecian_Rocks/data/Grecian_Rocks_2006.xls")

Grecian_Rocks_2006_snapper <- merge(Grecian_Rocks_2006, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_2006_grouper <- merge(Grecian_Rocks_2006, grouper, by = c("SPECIES_CD"))

Grecian_Rocks_2007 <- import("Grecian_Rocks/data/Grecian_Rocks_2007.xls")

Grecian_Rocks_2007_snapper <- merge(Grecian_Rocks_2007, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_2007_grouper <- merge(Grecian_Rocks_2007, grouper, by = c("SPECIES_CD"))


Grecian_Rocks_2008 <- import("Grecian_Rocks/data/Grecian_Rocks_2008.xls")

Grecian_Rocks_2008_snapper <- merge(Grecian_Rocks_2008, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_2008_grouper <- merge(Grecian_Rocks_2008, grouper, by = c("SPECIES_CD"))


Grecian_Rocks_2009 <- import("Grecian_Rocks/data/Grecian_Rocks_2009.xls")

Grecian_Rocks_2009_snapper <- merge(Grecian_Rocks_2009, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_2009_grouper <- merge(Grecian_Rocks_2009, grouper, by = c("SPECIES_CD"))


Grecian_Rocks_2010 <- import("Grecian_Rocks/data/Grecian_Rocks_2010.xls")

Grecian_Rocks_2010_snapper <- merge(Grecian_Rocks_2010, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_2010_grouper <- merge(Grecian_Rocks_2010, grouper, by = c("SPECIES_CD"))

Grecian_Rocks_2011 <- import("Grecian_Rocks/data/Grecian_Rocks_2011.xls")

Grecian_Rocks_2011_snapper <- merge(Grecian_Rocks_2011, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_2011_grouper <- merge(Grecian_Rocks_2011, grouper, by = c("SPECIES_CD"))



Grecian_Rocks_2012 <- import("Grecian_Rocks/data/Grecian_Rocks_2012.xls")

Grecian_Rocks_2012_snapper <- merge(Grecian_Rocks_2012, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_2012_grouper <- merge(Grecian_Rocks_2012, grouper, by = c("SPECIES_CD"))


Grecian_Rocks_2014 <- import("Grecian_Rocks/data/Grecian_Rocks_2014.xls")

Grecian_Rocks_2014_snapper <- merge(Grecian_Rocks_2014, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_2014_grouper <- merge(Grecian_Rocks_2014, grouper, by = c("SPECIES_CD"))


Grecian_Rocks_2016 <- import("Grecian_Rocks/data/Grecian_Rocks_2016.xls")

Grecian_Rocks_2016_snapper <- merge(Grecian_Rocks_2016, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_2016_grouper <- merge(Grecian_Rocks_2016, grouper, by = c("SPECIES_CD"))


Grecian_Rocks_2018 <- import("Grecian_Rocks/data/Grecian_Rocks_2018.xls")

Grecian_Rocks_2018_snapper <- merge(Grecian_Rocks_2018, snapper, by = c("SPECIES_CD"))


Grecian_Rocks_2018_grouper <- merge(Grecian_Rocks_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Grecian_Rocks_snapper_1 <- rbind(Grecian_Rocks_1999_snapper,Grecian_Rocks_2000_snapper)
Grecian_Rocks_snapper_2 <- rbind(Grecian_Rocks_snapper_1,Grecian_Rocks_2001_snapper)
Grecian_Rocks_snapper_3 <- rbind(Grecian_Rocks_snapper_2,Grecian_Rocks_2002_snapper)
Grecian_Rocks_snapper_4 <- rbind(Grecian_Rocks_snapper_3,Grecian_Rocks_2003_snapper)
Grecian_Rocks_snapper_5 <- rbind(Grecian_Rocks_snapper_4,Grecian_Rocks_2004_snapper)
Grecian_Rocks_snapper_6 <- rbind(Grecian_Rocks_snapper_5,Grecian_Rocks_2005_snapper)
Grecian_Rocks_snapper_7 <- rbind(Grecian_Rocks_snapper_6,Grecian_Rocks_2006_snapper)
Grecian_Rocks_snapper_8 <- rbind(Grecian_Rocks_snapper_7,Grecian_Rocks_2007_snapper)
Grecian_Rocks_snapper_9 <- rbind(Grecian_Rocks_snapper_8,Grecian_Rocks_2008_snapper)
Grecian_Rocks_snapper_10 <- rbind(Grecian_Rocks_snapper_9,Grecian_Rocks_2009_snapper)
Grecian_Rocks_snapper_11<- rbind(Grecian_Rocks_snapper_10,Grecian_Rocks_2010_snapper)
Grecian_Rocks_snapper_12 <- rbind(Grecian_Rocks_snapper_11,Grecian_Rocks_2011_snapper)
Grecian_Rocks_snapper_13 <- rbind(Grecian_Rocks_snapper_12,Grecian_Rocks_2012_snapper)
Grecian_Rocks_snapper_14 <- rbind(Grecian_Rocks_snapper_13,Grecian_Rocks_2014_snapper)
Grecian_Rocks_snapper_15 <- rbind(Grecian_Rocks_snapper_14,Grecian_Rocks_2016_snapper)
Grecian_Rocks_snapper_data_combined <- rbind(Grecian_Rocks_snapper_15,Grecian_Rocks_2018_snapper)



Grecian_Rocks_grouper_1 <- rbind(Grecian_Rocks_1999_grouper,Grecian_Rocks_2000_grouper)
Grecian_Rocks_grouper_2 <- rbind(Grecian_Rocks_grouper_1,Grecian_Rocks_2001_grouper)
Grecian_Rocks_grouper_3 <- rbind(Grecian_Rocks_grouper_2,Grecian_Rocks_2002_grouper)
Grecian_Rocks_grouper_4 <- rbind(Grecian_Rocks_grouper_3,Grecian_Rocks_2003_grouper)
Grecian_Rocks_grouper_5 <- rbind(Grecian_Rocks_grouper_4,Grecian_Rocks_2004_grouper)
Grecian_Rocks_grouper_6 <- rbind(Grecian_Rocks_grouper_5,Grecian_Rocks_2005_grouper)
Grecian_Rocks_grouper_7 <- rbind(Grecian_Rocks_grouper_6,Grecian_Rocks_2006_grouper)
Grecian_Rocks_grouper_8 <- rbind(Grecian_Rocks_grouper_7,Grecian_Rocks_2007_grouper)
Grecian_Rocks_grouper_9 <- rbind(Grecian_Rocks_grouper_8,Grecian_Rocks_2008_grouper)
Grecian_Rocks_grouper_10 <- rbind(Grecian_Rocks_grouper_9,Grecian_Rocks_2009_grouper)
Grecian_Rocks_grouper_11<- rbind(Grecian_Rocks_grouper_10,Grecian_Rocks_2010_grouper)
Grecian_Rocks_grouper_12 <- rbind(Grecian_Rocks_grouper_11,Grecian_Rocks_2011_grouper)
Grecian_Rocks_grouper_13 <- rbind(Grecian_Rocks_grouper_12,Grecian_Rocks_2012_grouper)
Grecian_Rocks_grouper_14 <- rbind(Grecian_Rocks_grouper_13,Grecian_Rocks_2014_grouper)
Grecian_Rocks_grouper_15 <- rbind(Grecian_Rocks_grouper_14,Grecian_Rocks_2016_grouper)
Grecian_Rocks_grouper_data_combined <- rbind(Grecian_Rocks_grouper_15,Grecian_Rocks_2018_grouper)



Grecian_Rocks_all <- rbind(Grecian_Rocks_snapper_data_combined,Grecian_Rocks_grouper_data_combined)
Grecian_Rocks_all$sitename <- "Grecian Rocks"
#export(Grecian_Rocks_all, "Grecian_Rocks/data/Grecian_Rocks_snapper_grouper_type.csv")




#Molasses Deep


Molasses_Deep_1999 <- import("Molasses_Deep/data/Molasses_Deep_1999.xls")


Molasses_Deep_1999_snapper <- merge(Molasses_Deep_1999, snapper, by = c("SPECIES_CD"))


Molasses_Deep_1999_grouper <- merge(Molasses_Deep_1999, grouper, by = c("SPECIES_CD"))


Molasses_Deep_2000 <- import("Molasses_Deep/data/Molasses_Deep_2000.xls")

Molasses_Deep_2000_snapper <- merge(Molasses_Deep_2000, snapper, by = c("SPECIES_CD"))


Molasses_Deep_2000_grouper <- merge(Molasses_Deep_2000, grouper, by = c("SPECIES_CD"))

Molasses_Deep_2001 <- import("Molasses_Deep/data/Molasses_Deep_2001.xls")

Molasses_Deep_2001_snapper <- merge(Molasses_Deep_2001, snapper, by = c("SPECIES_CD"))


Molasses_Deep_2001_grouper <- merge(Molasses_Deep_2001, grouper, by = c("SPECIES_CD"))


Molasses_Deep_2002 <- import("Molasses_Deep/data/Molasses_Deep_2002.xls")

Molasses_Deep_2002_snapper <- merge(Molasses_Deep_2002, snapper, by = c("SPECIES_CD"))


Molasses_Deep_2002_grouper <- merge(Molasses_Deep_2002, grouper, by = c("SPECIES_CD"))


Molasses_Deep_2003 <- import("Molasses_Deep/data/Molasses_Deep_2003.xls")

Molasses_Deep_2003_snapper <- merge(Molasses_Deep_2003, snapper, by = c("SPECIES_CD"))


Molasses_Deep_2003_grouper <- merge(Molasses_Deep_2003, grouper, by = c("SPECIES_CD"))


Molasses_Deep_2004 <- import("Molasses_Deep/data/Molasses_Deep_2004.xls")

Molasses_Deep_2004_snapper <- merge(Molasses_Deep_2004, snapper, by = c("SPECIES_CD"))


Molasses_Deep_2004_grouper <- merge(Molasses_Deep_2004, grouper, by = c("SPECIES_CD"))

Molasses_Deep_2005 <- import("Molasses_Deep/data/Molasses_Deep_2005.xls")

Molasses_Deep_2005_snapper <- merge(Molasses_Deep_2005, snapper, by = c("SPECIES_CD"))


Molasses_Deep_2005_grouper <- merge(Molasses_Deep_2005, grouper, by = c("SPECIES_CD"))


Molasses_Deep_2006 <- import("Molasses_Deep/data/Molasses_Deep_2006.xls")

Molasses_Deep_2006_snapper <- merge(Molasses_Deep_2006, snapper, by = c("SPECIES_CD"))


Molasses_Deep_2006_grouper <- merge(Molasses_Deep_2006, grouper, by = c("SPECIES_CD"))

Molasses_Deep_2007 <- import("Molasses_Deep/data/Molasses_Deep_2007.xls")

Molasses_Deep_2007_snapper <- merge(Molasses_Deep_2007, snapper, by = c("SPECIES_CD"))


Molasses_Deep_2007_grouper <- merge(Molasses_Deep_2007, grouper, by = c("SPECIES_CD"))


Molasses_Deep_2008 <- import("Molasses_Deep/data/Molasses_Deep_2008.xls")

Molasses_Deep_2008_snapper <- merge(Molasses_Deep_2008, snapper, by = c("SPECIES_CD"))


Molasses_Deep_2008_grouper <- merge(Molasses_Deep_2008, grouper, by = c("SPECIES_CD"))


Molasses_Deep_2009 <- import("Molasses_Deep/data/Molasses_Deep_2009.xls")

Molasses_Deep_2009_snapper <- merge(Molasses_Deep_2009, snapper, by = c("SPECIES_CD"))


Molasses_Deep_2009_grouper <- merge(Molasses_Deep_2009, grouper, by = c("SPECIES_CD"))


Molasses_Deep_2010 <- import("Molasses_Deep/data/Molasses_Deep_2010.xls")

Molasses_Deep_2010_snapper <- merge(Molasses_Deep_2010, snapper, by = c("SPECIES_CD"))


Molasses_Deep_2010_grouper <- merge(Molasses_Deep_2010, grouper, by = c("SPECIES_CD"))

Molasses_Deep_2011 <- import("Molasses_Deep/data/Molasses_Deep_2011.xls")

Molasses_Deep_2011_snapper <- merge(Molasses_Deep_2011, snapper, by = c("SPECIES_CD"))


Molasses_Deep_2011_grouper <- merge(Molasses_Deep_2011, grouper, by = c("SPECIES_CD"))



Molasses_Deep_2012 <- import("Molasses_Deep/data/Molasses_Deep_2012.xls")

Molasses_Deep_2012_snapper <- merge(Molasses_Deep_2012, snapper, by = c("SPECIES_CD"))


Molasses_Deep_2012_grouper <- merge(Molasses_Deep_2012, grouper, by = c("SPECIES_CD"))


Molasses_Deep_2014 <- import("Molasses_Deep/data/Molasses_Deep_2014.xls")

Molasses_Deep_2014_snapper <- merge(Molasses_Deep_2014, snapper, by = c("SPECIES_CD"))


Molasses_Deep_2014_grouper <- merge(Molasses_Deep_2014, grouper, by = c("SPECIES_CD"))


Molasses_Deep_2016 <- import("Molasses_Deep/data/Molasses_Deep_2016.xls")

Molasses_Deep_2016_snapper <- merge(Molasses_Deep_2016, snapper, by = c("SPECIES_CD"))


Molasses_Deep_2016_grouper <- merge(Molasses_Deep_2016, grouper, by = c("SPECIES_CD"))


Molasses_Deep_2018 <- import("Molasses_Deep/data/Molasses_Deep_2018.xls")

Molasses_Deep_2018_snapper <- merge(Molasses_Deep_2018, snapper, by = c("SPECIES_CD"))


Molasses_Deep_2018_grouper <- merge(Molasses_Deep_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Molasses_Deep_snapper_1 <- rbind(Molasses_Deep_1999_snapper,Molasses_Deep_2000_snapper)
Molasses_Deep_snapper_2 <- rbind(Molasses_Deep_snapper_1,Molasses_Deep_2001_snapper)
Molasses_Deep_snapper_3 <- rbind(Molasses_Deep_snapper_2,Molasses_Deep_2002_snapper)
Molasses_Deep_snapper_4 <- rbind(Molasses_Deep_snapper_3,Molasses_Deep_2003_snapper)
Molasses_Deep_snapper_5 <- rbind(Molasses_Deep_snapper_4,Molasses_Deep_2004_snapper)
Molasses_Deep_snapper_6 <- rbind(Molasses_Deep_snapper_5,Molasses_Deep_2005_snapper)
Molasses_Deep_snapper_7 <- rbind(Molasses_Deep_snapper_6,Molasses_Deep_2006_snapper)
Molasses_Deep_snapper_8 <- rbind(Molasses_Deep_snapper_7,Molasses_Deep_2007_snapper)
Molasses_Deep_snapper_9 <- rbind(Molasses_Deep_snapper_8,Molasses_Deep_2008_snapper)
Molasses_Deep_snapper_10 <- rbind(Molasses_Deep_snapper_9,Molasses_Deep_2009_snapper)
Molasses_Deep_snapper_11<- rbind(Molasses_Deep_snapper_10,Molasses_Deep_2010_snapper)
Molasses_Deep_snapper_12 <- rbind(Molasses_Deep_snapper_11,Molasses_Deep_2011_snapper)
Molasses_Deep_snapper_13 <- rbind(Molasses_Deep_snapper_12,Molasses_Deep_2012_snapper)
Molasses_Deep_snapper_14 <- rbind(Molasses_Deep_snapper_13,Molasses_Deep_2014_snapper)
Molasses_Deep_snapper_15 <- rbind(Molasses_Deep_snapper_14,Molasses_Deep_2016_snapper)
Molasses_Deep_snapper_data_combined <- rbind(Molasses_Deep_snapper_15,Molasses_Deep_2018_snapper)



Molasses_Deep_grouper_1 <- rbind(Molasses_Deep_1999_grouper,Molasses_Deep_2000_grouper)
Molasses_Deep_grouper_2 <- rbind(Molasses_Deep_grouper_1,Molasses_Deep_2001_grouper)
Molasses_Deep_grouper_3 <- rbind(Molasses_Deep_grouper_2,Molasses_Deep_2002_grouper)
Molasses_Deep_grouper_4 <- rbind(Molasses_Deep_grouper_3,Molasses_Deep_2003_grouper)
Molasses_Deep_grouper_5 <- rbind(Molasses_Deep_grouper_4,Molasses_Deep_2004_grouper)
Molasses_Deep_grouper_6 <- rbind(Molasses_Deep_grouper_5,Molasses_Deep_2005_grouper)
Molasses_Deep_grouper_7 <- rbind(Molasses_Deep_grouper_6,Molasses_Deep_2006_grouper)
Molasses_Deep_grouper_8 <- rbind(Molasses_Deep_grouper_7,Molasses_Deep_2007_grouper)
Molasses_Deep_grouper_9 <- rbind(Molasses_Deep_grouper_8,Molasses_Deep_2008_grouper)
Molasses_Deep_grouper_10 <- rbind(Molasses_Deep_grouper_9,Molasses_Deep_2009_grouper)
Molasses_Deep_grouper_11<- rbind(Molasses_Deep_grouper_10,Molasses_Deep_2010_grouper)
Molasses_Deep_grouper_12 <- rbind(Molasses_Deep_grouper_11,Molasses_Deep_2011_grouper)
Molasses_Deep_grouper_13 <- rbind(Molasses_Deep_grouper_12,Molasses_Deep_2012_grouper)
Molasses_Deep_grouper_14 <- rbind(Molasses_Deep_grouper_13,Molasses_Deep_2014_grouper)
Molasses_Deep_grouper_15 <- rbind(Molasses_Deep_grouper_14,Molasses_Deep_2016_grouper)
Molasses_Deep_grouper_data_combined <- rbind(Molasses_Deep_grouper_15,Molasses_Deep_2018_grouper)



Molasses_Deep_all <- rbind(Molasses_Deep_snapper_data_combined,Molasses_Deep_grouper_data_combined)
Molasses_Deep_all$sitename <- "Molasses Deep"
#export(Molasses_Deep_all, "Molasses_Deep/data/Molasses_Deep_snapper_grouper_type.csv")




#Molasses Shallow


Molasses_Shallow_1999 <- import("Molasses_Shallow/data/Molasses_Shallow_1999.xls")


Molasses_Shallow_1999_snapper <- merge(Molasses_Shallow_1999, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_1999_grouper <- merge(Molasses_Shallow_1999, grouper, by = c("SPECIES_CD"))


Molasses_Shallow_2000 <- import("Molasses_Shallow/data/Molasses_Shallow_2000.xls")

Molasses_Shallow_2000_snapper <- merge(Molasses_Shallow_2000, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_2000_grouper <- merge(Molasses_Shallow_2000, grouper, by = c("SPECIES_CD"))

Molasses_Shallow_2001 <- import("Molasses_Shallow/data/Molasses_Shallow_2001.xls")

Molasses_Shallow_2001_snapper <- merge(Molasses_Shallow_2001, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_2001_grouper <- merge(Molasses_Shallow_2001, grouper, by = c("SPECIES_CD"))


Molasses_Shallow_2002 <- import("Molasses_Shallow/data/Molasses_Shallow_2002.xls")

Molasses_Shallow_2002_snapper <- merge(Molasses_Shallow_2002, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_2002_grouper <- merge(Molasses_Shallow_2002, grouper, by = c("SPECIES_CD"))


Molasses_Shallow_2003 <- import("Molasses_Shallow/data/Molasses_Shallow_2003.xls")

Molasses_Shallow_2003_snapper <- merge(Molasses_Shallow_2003, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_2003_grouper <- merge(Molasses_Shallow_2003, grouper, by = c("SPECIES_CD"))


Molasses_Shallow_2004 <- import("Molasses_Shallow/data/Molasses_Shallow_2004.xls")

Molasses_Shallow_2004_snapper <- merge(Molasses_Shallow_2004, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_2004_grouper <- merge(Molasses_Shallow_2004, grouper, by = c("SPECIES_CD"))

Molasses_Shallow_2005 <- import("Molasses_Shallow/data/Molasses_Shallow_2005.xls")

Molasses_Shallow_2005_snapper <- merge(Molasses_Shallow_2005, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_2005_grouper <- merge(Molasses_Shallow_2005, grouper, by = c("SPECIES_CD"))


Molasses_Shallow_2006 <- import("Molasses_Shallow/data/Molasses_Shallow_2006.xls")

Molasses_Shallow_2006_snapper <- merge(Molasses_Shallow_2006, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_2006_grouper <- merge(Molasses_Shallow_2006, grouper, by = c("SPECIES_CD"))

Molasses_Shallow_2007 <- import("Molasses_Shallow/data/Molasses_Shallow_2007.xls")

Molasses_Shallow_2007_snapper <- merge(Molasses_Shallow_2007, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_2007_grouper <- merge(Molasses_Shallow_2007, grouper, by = c("SPECIES_CD"))


Molasses_Shallow_2008 <- import("Molasses_Shallow/data/Molasses_Shallow_2008.xls")

Molasses_Shallow_2008_snapper <- merge(Molasses_Shallow_2008, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_2008_grouper <- merge(Molasses_Shallow_2008, grouper, by = c("SPECIES_CD"))


Molasses_Shallow_2009 <- import("Molasses_Shallow/data/Molasses_Shallow_2009.xls")

Molasses_Shallow_2009_snapper <- merge(Molasses_Shallow_2009, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_2009_grouper <- merge(Molasses_Shallow_2009, grouper, by = c("SPECIES_CD"))


Molasses_Shallow_2010 <- import("Molasses_Shallow/data/Molasses_Shallow_2010.xls")

Molasses_Shallow_2010_snapper <- merge(Molasses_Shallow_2010, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_2010_grouper <- merge(Molasses_Shallow_2010, grouper, by = c("SPECIES_CD"))

Molasses_Shallow_2011 <- import("Molasses_Shallow/data/Molasses_Shallow_2011.xls")

Molasses_Shallow_2011_snapper <- merge(Molasses_Shallow_2011, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_2011_grouper <- merge(Molasses_Shallow_2011, grouper, by = c("SPECIES_CD"))



Molasses_Shallow_2012 <- import("Molasses_Shallow/data/Molasses_Shallow_2012.xls")

Molasses_Shallow_2012_snapper <- merge(Molasses_Shallow_2012, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_2012_grouper <- merge(Molasses_Shallow_2012, grouper, by = c("SPECIES_CD"))


Molasses_Shallow_2014 <- import("Molasses_Shallow/data/Molasses_Shallow_2014.xls")

Molasses_Shallow_2014_snapper <- merge(Molasses_Shallow_2014, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_2014_grouper <- merge(Molasses_Shallow_2014, grouper, by = c("SPECIES_CD"))


Molasses_Shallow_2016 <- import("Molasses_Shallow/data/Molasses_Shallow_2016.xls")

Molasses_Shallow_2016_snapper <- merge(Molasses_Shallow_2016, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_2016_grouper <- merge(Molasses_Shallow_2016, grouper, by = c("SPECIES_CD"))


Molasses_Shallow_2018 <- import("Molasses_Shallow/data/Molasses_Shallow_2018.xls")

Molasses_Shallow_2018_snapper <- merge(Molasses_Shallow_2018, snapper, by = c("SPECIES_CD"))


Molasses_Shallow_2018_grouper <- merge(Molasses_Shallow_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Molasses_Shallow_snapper_1 <- rbind(Molasses_Shallow_1999_snapper,Molasses_Shallow_2000_snapper)
Molasses_Shallow_snapper_2 <- rbind(Molasses_Shallow_snapper_1,Molasses_Shallow_2001_snapper)
Molasses_Shallow_snapper_3 <- rbind(Molasses_Shallow_snapper_2,Molasses_Shallow_2002_snapper)
Molasses_Shallow_snapper_4 <- rbind(Molasses_Shallow_snapper_3,Molasses_Shallow_2003_snapper)
Molasses_Shallow_snapper_5 <- rbind(Molasses_Shallow_snapper_4,Molasses_Shallow_2004_snapper)
Molasses_Shallow_snapper_6 <- rbind(Molasses_Shallow_snapper_5,Molasses_Shallow_2005_snapper)
Molasses_Shallow_snapper_7 <- rbind(Molasses_Shallow_snapper_6,Molasses_Shallow_2006_snapper)
Molasses_Shallow_snapper_8 <- rbind(Molasses_Shallow_snapper_7,Molasses_Shallow_2007_snapper)
Molasses_Shallow_snapper_9 <- rbind(Molasses_Shallow_snapper_8,Molasses_Shallow_2008_snapper)
Molasses_Shallow_snapper_10 <- rbind(Molasses_Shallow_snapper_9,Molasses_Shallow_2009_snapper)
Molasses_Shallow_snapper_11<- rbind(Molasses_Shallow_snapper_10,Molasses_Shallow_2010_snapper)
Molasses_Shallow_snapper_12 <- rbind(Molasses_Shallow_snapper_11,Molasses_Shallow_2011_snapper)
Molasses_Shallow_snapper_13 <- rbind(Molasses_Shallow_snapper_12,Molasses_Shallow_2012_snapper)
Molasses_Shallow_snapper_14 <- rbind(Molasses_Shallow_snapper_13,Molasses_Shallow_2014_snapper)
Molasses_Shallow_snapper_15 <- rbind(Molasses_Shallow_snapper_14,Molasses_Shallow_2016_snapper)
Molasses_Shallow_snapper_data_combined <- rbind(Molasses_Shallow_snapper_15,Molasses_Shallow_2018_snapper)



Molasses_Shallow_grouper_1 <- rbind(Molasses_Shallow_1999_grouper,Molasses_Shallow_2000_grouper)
Molasses_Shallow_grouper_2 <- rbind(Molasses_Shallow_grouper_1,Molasses_Shallow_2001_grouper)
Molasses_Shallow_grouper_3 <- rbind(Molasses_Shallow_grouper_2,Molasses_Shallow_2002_grouper)
Molasses_Shallow_grouper_4 <- rbind(Molasses_Shallow_grouper_3,Molasses_Shallow_2003_grouper)
Molasses_Shallow_grouper_5 <- rbind(Molasses_Shallow_grouper_4,Molasses_Shallow_2004_grouper)
Molasses_Shallow_grouper_6 <- rbind(Molasses_Shallow_grouper_5,Molasses_Shallow_2005_grouper)
Molasses_Shallow_grouper_7 <- rbind(Molasses_Shallow_grouper_6,Molasses_Shallow_2006_grouper)
Molasses_Shallow_grouper_8 <- rbind(Molasses_Shallow_grouper_7,Molasses_Shallow_2007_grouper)
Molasses_Shallow_grouper_9 <- rbind(Molasses_Shallow_grouper_8,Molasses_Shallow_2008_grouper)
Molasses_Shallow_grouper_10 <- rbind(Molasses_Shallow_grouper_9,Molasses_Shallow_2009_grouper)
Molasses_Shallow_grouper_11<- rbind(Molasses_Shallow_grouper_10,Molasses_Shallow_2010_grouper)
Molasses_Shallow_grouper_12 <- rbind(Molasses_Shallow_grouper_11,Molasses_Shallow_2011_grouper)
Molasses_Shallow_grouper_13 <- rbind(Molasses_Shallow_grouper_12,Molasses_Shallow_2012_grouper)
Molasses_Shallow_grouper_14 <- rbind(Molasses_Shallow_grouper_13,Molasses_Shallow_2014_grouper)
Molasses_Shallow_grouper_15 <- rbind(Molasses_Shallow_grouper_14,Molasses_Shallow_2016_grouper)
Molasses_Shallow_grouper_data_combined <- rbind(Molasses_Shallow_grouper_15,Molasses_Shallow_2018_grouper)



Molasses_Shallow_all <- rbind(Molasses_Shallow_snapper_data_combined,Molasses_Shallow_grouper_data_combined)
Molasses_Shallow_all$sitename <- "Molasses Shallow"
#export(Molasses_Shallow_all, "Molasses_Shallow/data/Molasses_Shallow_snapper_grouper_type.csv")





#Porter Patch


Porter_Patch_1999 <- import("Porter_Patch/data/Porter_Patch_1999.xls")


Porter_Patch_1999_snapper <- merge(Porter_Patch_1999, snapper, by = c("SPECIES_CD"))


Porter_Patch_1999_grouper <- merge(Porter_Patch_1999, grouper, by = c("SPECIES_CD"))


Porter_Patch_2000 <- import("Porter_Patch/data/Porter_Patch_2000.xls")

Porter_Patch_2000_snapper <- merge(Porter_Patch_2000, snapper, by = c("SPECIES_CD"))


Porter_Patch_2000_grouper <- merge(Porter_Patch_2000, grouper, by = c("SPECIES_CD"))

Porter_Patch_2001 <- import("Porter_Patch/data/Porter_Patch_2001.xls")

Porter_Patch_2001_snapper <- merge(Porter_Patch_2001, snapper, by = c("SPECIES_CD"))


Porter_Patch_2001_grouper <- merge(Porter_Patch_2001, grouper, by = c("SPECIES_CD"))


Porter_Patch_2002 <- import("Porter_Patch/data/Porter_Patch_2002.xls")

Porter_Patch_2002_snapper <- merge(Porter_Patch_2002, snapper, by = c("SPECIES_CD"))


Porter_Patch_2002_grouper <- merge(Porter_Patch_2002, grouper, by = c("SPECIES_CD"))


Porter_Patch_2003 <- import("Porter_Patch/data/Porter_Patch_2003.xls")

Porter_Patch_2003_snapper <- merge(Porter_Patch_2003, snapper, by = c("SPECIES_CD"))


Porter_Patch_2003_grouper <- merge(Porter_Patch_2003, grouper, by = c("SPECIES_CD"))


Porter_Patch_2004 <- import("Porter_Patch/data/Porter_Patch_2004.xls")

Porter_Patch_2004_snapper <- merge(Porter_Patch_2004, snapper, by = c("SPECIES_CD"))


Porter_Patch_2004_grouper <- merge(Porter_Patch_2004, grouper, by = c("SPECIES_CD"))

Porter_Patch_2005 <- import("Porter_Patch/data/Porter_Patch_2005.xls")

Porter_Patch_2005_snapper <- merge(Porter_Patch_2005, snapper, by = c("SPECIES_CD"))


Porter_Patch_2005_grouper <- merge(Porter_Patch_2005, grouper, by = c("SPECIES_CD"))


Porter_Patch_2006 <- import("Porter_Patch/data/Porter_Patch_2006.xls")

Porter_Patch_2006_snapper <- merge(Porter_Patch_2006, snapper, by = c("SPECIES_CD"))


Porter_Patch_2006_grouper <- merge(Porter_Patch_2006, grouper, by = c("SPECIES_CD"))

Porter_Patch_2007 <- import("Porter_Patch/data/Porter_Patch_2007.xls")

Porter_Patch_2007_snapper <- merge(Porter_Patch_2007, snapper, by = c("SPECIES_CD"))


Porter_Patch_2007_grouper <- merge(Porter_Patch_2007, grouper, by = c("SPECIES_CD"))


Porter_Patch_2008 <- import("Porter_Patch/data/Porter_Patch_2008.xls")

Porter_Patch_2008_snapper <- merge(Porter_Patch_2008, snapper, by = c("SPECIES_CD"))


Porter_Patch_2008_grouper <- merge(Porter_Patch_2008, grouper, by = c("SPECIES_CD"))


Porter_Patch_2009 <- import("Porter_Patch/data/Porter_Patch_2009.xls")

Porter_Patch_2009_snapper <- merge(Porter_Patch_2009, snapper, by = c("SPECIES_CD"))


Porter_Patch_2009_grouper <- merge(Porter_Patch_2009, grouper, by = c("SPECIES_CD"))


Porter_Patch_2010 <- import("Porter_Patch/data/Porter_Patch_2010.xls")

Porter_Patch_2010_snapper <- merge(Porter_Patch_2010, snapper, by = c("SPECIES_CD"))


Porter_Patch_2010_grouper <- merge(Porter_Patch_2010, grouper, by = c("SPECIES_CD"))

Porter_Patch_2011 <- import("Porter_Patch/data/Porter_Patch_2011.xls")

Porter_Patch_2011_snapper <- merge(Porter_Patch_2011, snapper, by = c("SPECIES_CD"))


Porter_Patch_2011_grouper <- merge(Porter_Patch_2011, grouper, by = c("SPECIES_CD"))



Porter_Patch_2012 <- import("Porter_Patch/data/Porter_Patch_2012.xls")

Porter_Patch_2012_snapper <- merge(Porter_Patch_2012, snapper, by = c("SPECIES_CD"))


Porter_Patch_2012_grouper <- merge(Porter_Patch_2012, grouper, by = c("SPECIES_CD"))


Porter_Patch_2014 <- import("Porter_Patch/data/Porter_Patch_2014.xls")

Porter_Patch_2014_snapper <- merge(Porter_Patch_2014, snapper, by = c("SPECIES_CD"))


Porter_Patch_2014_grouper <- merge(Porter_Patch_2014, grouper, by = c("SPECIES_CD"))


Porter_Patch_2016 <- import("Porter_Patch/data/Porter_Patch_2016.xls")

Porter_Patch_2016_snapper <- merge(Porter_Patch_2016, snapper, by = c("SPECIES_CD"))


Porter_Patch_2016_grouper <- merge(Porter_Patch_2016, grouper, by = c("SPECIES_CD"))

Porter_Patch_2018 <- import("Porter_Patch/data/Porter_Patch_2018.xls")

Porter_Patch_2018_snapper <- merge(Porter_Patch_2018, snapper, by = c("SPECIES_CD"))


Porter_Patch_2018_grouper <- merge(Porter_Patch_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Porter_Patch_snapper_1 <- rbind(Porter_Patch_1999_snapper,Porter_Patch_2000_snapper)
Porter_Patch_snapper_2 <- rbind(Porter_Patch_snapper_1,Porter_Patch_2001_snapper)
Porter_Patch_snapper_3 <- rbind(Porter_Patch_snapper_2,Porter_Patch_2002_snapper)
Porter_Patch_snapper_4 <- rbind(Porter_Patch_snapper_3,Porter_Patch_2003_snapper)
Porter_Patch_snapper_5 <- rbind(Porter_Patch_snapper_4,Porter_Patch_2004_snapper)
Porter_Patch_snapper_6 <- rbind(Porter_Patch_snapper_5,Porter_Patch_2005_snapper)
Porter_Patch_snapper_7 <- rbind(Porter_Patch_snapper_6,Porter_Patch_2006_snapper)
Porter_Patch_snapper_8 <- rbind(Porter_Patch_snapper_7,Porter_Patch_2007_snapper)
Porter_Patch_snapper_9 <- rbind(Porter_Patch_snapper_8,Porter_Patch_2008_snapper)
Porter_Patch_snapper_10 <- rbind(Porter_Patch_snapper_9,Porter_Patch_2009_snapper)
Porter_Patch_snapper_11<- rbind(Porter_Patch_snapper_10,Porter_Patch_2010_snapper)
Porter_Patch_snapper_12 <- rbind(Porter_Patch_snapper_11,Porter_Patch_2011_snapper)
Porter_Patch_snapper_13 <- rbind(Porter_Patch_snapper_12,Porter_Patch_2012_snapper)
Porter_Patch_snapper_14 <- rbind(Porter_Patch_snapper_13,Porter_Patch_2014_snapper)
Porter_Patch_snapper_15 <- rbind(Porter_Patch_snapper_14,Porter_Patch_2016_snapper)
Porter_Patch_snapper_data_combined <- rbind(Porter_Patch_snapper_15,Porter_Patch_2018_snapper)



Porter_Patch_grouper_1 <- rbind(Porter_Patch_1999_grouper,Porter_Patch_2000_grouper)
Porter_Patch_grouper_2 <- rbind(Porter_Patch_grouper_1,Porter_Patch_2001_grouper)
Porter_Patch_grouper_3 <- rbind(Porter_Patch_grouper_2,Porter_Patch_2002_grouper)
Porter_Patch_grouper_4 <- rbind(Porter_Patch_grouper_3,Porter_Patch_2003_grouper)
Porter_Patch_grouper_5 <- rbind(Porter_Patch_grouper_4,Porter_Patch_2004_grouper)
Porter_Patch_grouper_6 <- rbind(Porter_Patch_grouper_5,Porter_Patch_2005_grouper)
Porter_Patch_grouper_7 <- rbind(Porter_Patch_grouper_6,Porter_Patch_2006_grouper)
Porter_Patch_grouper_8 <- rbind(Porter_Patch_grouper_7,Porter_Patch_2007_grouper)
Porter_Patch_grouper_9 <- rbind(Porter_Patch_grouper_8,Porter_Patch_2008_grouper)
Porter_Patch_grouper_10 <- rbind(Porter_Patch_grouper_9,Porter_Patch_2009_grouper)
Porter_Patch_grouper_11<- rbind(Porter_Patch_grouper_10,Porter_Patch_2010_grouper)
Porter_Patch_grouper_12 <- rbind(Porter_Patch_grouper_11,Porter_Patch_2011_grouper)
Porter_Patch_grouper_13 <- rbind(Porter_Patch_grouper_12,Porter_Patch_2012_grouper)
Porter_Patch_grouper_14 <- rbind(Porter_Patch_grouper_13,Porter_Patch_2014_grouper)
Porter_Patch_grouper_15 <- rbind(Porter_Patch_grouper_14,Porter_Patch_2016_grouper)
Porter_Patch_grouper_data_combined <- rbind(Porter_Patch_grouper_15,Porter_Patch_2018_grouper)



Porter_Patch_all <- rbind(Porter_Patch_snapper_data_combined,Porter_Patch_grouper_data_combined)
Porter_Patch_all$sitename <- "Porter Patch"
#export(Porter_Patch_all, "Porter_Patch/data/Porter_Patch_snapper_grouper_type.csv")






#Turtle


Turtle_1999 <- import("Turtle/data/Turtle_1999.xls")


Turtle_1999_snapper <- merge(Turtle_1999, snapper, by = c("SPECIES_CD"))


Turtle_1999_grouper <- merge(Turtle_1999, grouper, by = c("SPECIES_CD"))


Turtle_2000 <- import("Turtle/data/Turtle_2000.xls")

Turtle_2000_snapper <- merge(Turtle_2000, snapper, by = c("SPECIES_CD"))


Turtle_2000_grouper <- merge(Turtle_2000, grouper, by = c("SPECIES_CD"))

Turtle_2001 <- import("Turtle/data/Turtle_2001.xls")

Turtle_2001_snapper <- merge(Turtle_2001, snapper, by = c("SPECIES_CD"))


Turtle_2001_grouper <- merge(Turtle_2001, grouper, by = c("SPECIES_CD"))


Turtle_2002 <- import("Turtle/data/Turtle_2002.xls")

Turtle_2002_snapper <- merge(Turtle_2002, snapper, by = c("SPECIES_CD"))


Turtle_2002_grouper <- merge(Turtle_2002, grouper, by = c("SPECIES_CD"))


Turtle_2003 <- import("Turtle/data/Turtle_2003.xls")

Turtle_2003_snapper <- merge(Turtle_2003, snapper, by = c("SPECIES_CD"))


Turtle_2003_grouper <- merge(Turtle_2003, grouper, by = c("SPECIES_CD"))


Turtle_2004 <- import("Turtle/data/Turtle_2004.xls")

Turtle_2004_snapper <- merge(Turtle_2004, snapper, by = c("SPECIES_CD"))


Turtle_2004_grouper <- merge(Turtle_2004, grouper, by = c("SPECIES_CD"))

Turtle_2005 <- import("Turtle/data/Turtle_2005.xls")

Turtle_2005_snapper <- merge(Turtle_2005, snapper, by = c("SPECIES_CD"))


Turtle_2005_grouper <- merge(Turtle_2005, grouper, by = c("SPECIES_CD"))


Turtle_2006 <- import("Turtle/data/Turtle_2006.xls")

Turtle_2006_snapper <- merge(Turtle_2006, snapper, by = c("SPECIES_CD"))


Turtle_2006_grouper <- merge(Turtle_2006, grouper, by = c("SPECIES_CD"))

Turtle_2007 <- import("Turtle/data/Turtle_2007.xls")

Turtle_2007_snapper <- merge(Turtle_2007, snapper, by = c("SPECIES_CD"))


Turtle_2007_grouper <- merge(Turtle_2007, grouper, by = c("SPECIES_CD"))


Turtle_2008 <- import("Turtle/data/Turtle_2008.xls")

Turtle_2008_snapper <- merge(Turtle_2008, snapper, by = c("SPECIES_CD"))


Turtle_2008_grouper <- merge(Turtle_2008, grouper, by = c("SPECIES_CD"))


Turtle_2009 <- import("Turtle/data/Turtle_2009.xls")

Turtle_2009_snapper <- merge(Turtle_2009, snapper, by = c("SPECIES_CD"))


Turtle_2009_grouper <- merge(Turtle_2009, grouper, by = c("SPECIES_CD"))


Turtle_2010 <- import("Turtle/data/Turtle_2010.xls")

Turtle_2010_snapper <- merge(Turtle_2010, snapper, by = c("SPECIES_CD"))


Turtle_2010_grouper <- merge(Turtle_2010, grouper, by = c("SPECIES_CD"))

Turtle_2011 <- import("Turtle/data/Turtle_2011.xls")

Turtle_2011_snapper <- merge(Turtle_2011, snapper, by = c("SPECIES_CD"))


Turtle_2011_grouper <- merge(Turtle_2011, grouper, by = c("SPECIES_CD"))



Turtle_2012 <- import("Turtle/data/Turtle_2012.xls")

Turtle_2012_snapper <- merge(Turtle_2012, snapper, by = c("SPECIES_CD"))


Turtle_2012_grouper <- merge(Turtle_2012, grouper, by = c("SPECIES_CD"))


Turtle_2014 <- import("Turtle/data/Turtle_2014.xls")

Turtle_2014_snapper <- merge(Turtle_2014, snapper, by = c("SPECIES_CD"))


Turtle_2014_grouper <- merge(Turtle_2014, grouper, by = c("SPECIES_CD"))


Turtle_2016 <- import("Turtle/data/Turtle_2016.xls")

Turtle_2016_snapper <- merge(Turtle_2016, snapper, by = c("SPECIES_CD"))


Turtle_2016_grouper <- merge(Turtle_2016, grouper, by = c("SPECIES_CD"))


Turtle_2018 <- import("Turtle/data/Turtle_2018.xls")

Turtle_2018_snapper <- merge(Turtle_2018, snapper, by = c("SPECIES_CD"))


Turtle_2018_grouper <- merge(Turtle_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Turtle_snapper_1 <- rbind(Turtle_1999_snapper,Turtle_2000_snapper)
Turtle_snapper_2 <- rbind(Turtle_snapper_1,Turtle_2001_snapper)
Turtle_snapper_3 <- rbind(Turtle_snapper_2,Turtle_2002_snapper)
Turtle_snapper_4 <- rbind(Turtle_snapper_3,Turtle_2003_snapper)
Turtle_snapper_5 <- rbind(Turtle_snapper_4,Turtle_2004_snapper)
Turtle_snapper_6 <- rbind(Turtle_snapper_5,Turtle_2005_snapper)
Turtle_snapper_7 <- rbind(Turtle_snapper_6,Turtle_2006_snapper)
Turtle_snapper_8 <- rbind(Turtle_snapper_7,Turtle_2007_snapper)
Turtle_snapper_9 <- rbind(Turtle_snapper_8,Turtle_2008_snapper)
Turtle_snapper_10 <- rbind(Turtle_snapper_9,Turtle_2009_snapper)
Turtle_snapper_11<- rbind(Turtle_snapper_10,Turtle_2010_snapper)
Turtle_snapper_12 <- rbind(Turtle_snapper_11,Turtle_2011_snapper)
Turtle_snapper_13 <- rbind(Turtle_snapper_12,Turtle_2012_snapper)
Turtle_snapper_14 <- rbind(Turtle_snapper_13,Turtle_2014_snapper)
Turtle_snapper_15 <- rbind(Turtle_snapper_14,Turtle_2016_snapper)
Turtle_snapper_data_combined <- rbind(Turtle_snapper_15,Turtle_2018_snapper)



Turtle_grouper_1 <- rbind(Turtle_1999_grouper,Turtle_2000_grouper)
Turtle_grouper_2 <- rbind(Turtle_grouper_1,Turtle_2001_grouper)
Turtle_grouper_3 <- rbind(Turtle_grouper_2,Turtle_2002_grouper)
Turtle_grouper_4 <- rbind(Turtle_grouper_3,Turtle_2003_grouper)
Turtle_grouper_5 <- rbind(Turtle_grouper_4,Turtle_2004_grouper)
Turtle_grouper_6 <- rbind(Turtle_grouper_5,Turtle_2005_grouper)
Turtle_grouper_7 <- rbind(Turtle_grouper_6,Turtle_2006_grouper)
Turtle_grouper_8 <- rbind(Turtle_grouper_7,Turtle_2007_grouper)
Turtle_grouper_9 <- rbind(Turtle_grouper_8,Turtle_2008_grouper)
Turtle_grouper_10 <- rbind(Turtle_grouper_9,Turtle_2009_grouper)
Turtle_grouper_11<- rbind(Turtle_grouper_10,Turtle_2010_grouper)
Turtle_grouper_12 <- rbind(Turtle_grouper_11,Turtle_2011_grouper)
Turtle_grouper_13 <- rbind(Turtle_grouper_12,Turtle_2012_grouper)
Turtle_grouper_14 <- rbind(Turtle_grouper_13,Turtle_2014_grouper)
Turtle_grouper_15 <- rbind(Turtle_grouper_14,Turtle_2016_grouper)
Turtle_grouper_data_combined <- rbind(Turtle_grouper_15,Turtle_2018_grouper)



Turtle_all <- rbind(Turtle_snapper_data_combined,Turtle_grouper_data_combined)
Turtle_all$sitename <- "Turtle"
#export(Turtle_all, "Turtle/data/Turtle_snapper_grouper_type.csv")



#Two Patches


Two_Patches_1999 <- import("Two_Patches/data/Two_Patches_1999.xls")


Two_Patches_1999_snapper <- merge(Two_Patches_1999, snapper, by = c("SPECIES_CD"))


Two_Patches_1999_grouper <- merge(Two_Patches_1999, grouper, by = c("SPECIES_CD"))


Two_Patches_2000 <- import("Two_Patches/data/Two_Patches_2000.xls")

Two_Patches_2000_snapper <- merge(Two_Patches_2000, snapper, by = c("SPECIES_CD"))


Two_Patches_2000_grouper <- merge(Two_Patches_2000, grouper, by = c("SPECIES_CD"))

Two_Patches_2001 <- import("Two_Patches/data/Two_Patches_2001.xls")

Two_Patches_2001_snapper <- merge(Two_Patches_2001, snapper, by = c("SPECIES_CD"))


Two_Patches_2001_grouper <- merge(Two_Patches_2001, grouper, by = c("SPECIES_CD"))


Two_Patches_2002 <- import("Two_Patches/data/Two_Patches_2002.xls")

Two_Patches_2002_snapper <- merge(Two_Patches_2002, snapper, by = c("SPECIES_CD"))


Two_Patches_2002_grouper <- merge(Two_Patches_2002, grouper, by = c("SPECIES_CD"))


Two_Patches_2003 <- import("Two_Patches/data/Two_Patches_2003.xls")

Two_Patches_2003_snapper <- merge(Two_Patches_2003, snapper, by = c("SPECIES_CD"))


Two_Patches_2003_grouper <- merge(Two_Patches_2003, grouper, by = c("SPECIES_CD"))


Two_Patches_2004 <- import("Two_Patches/data/Two_Patches_2004.xls")

Two_Patches_2004_snapper <- merge(Two_Patches_2004, snapper, by = c("SPECIES_CD"))


Two_Patches_2004_grouper <- merge(Two_Patches_2004, grouper, by = c("SPECIES_CD"))

Two_Patches_2005 <- import("Two_Patches/data/Two_Patches_2005.xls")

Two_Patches_2005_snapper <- merge(Two_Patches_2005, snapper, by = c("SPECIES_CD"))


Two_Patches_2005_grouper <- merge(Two_Patches_2005, grouper, by = c("SPECIES_CD"))


Two_Patches_2006 <- import("Two_Patches/data/Two_Patches_2006.xls")

Two_Patches_2006_snapper <- merge(Two_Patches_2006, snapper, by = c("SPECIES_CD"))


Two_Patches_2006_grouper <- merge(Two_Patches_2006, grouper, by = c("SPECIES_CD"))

Two_Patches_2007 <- import("Two_Patches/data/Two_Patches_2007.xls")

Two_Patches_2007_snapper <- merge(Two_Patches_2007, snapper, by = c("SPECIES_CD"))


Two_Patches_2007_grouper <- merge(Two_Patches_2007, grouper, by = c("SPECIES_CD"))


Two_Patches_2008 <- import("Two_Patches/data/Two_Patches_2008.xls")

Two_Patches_2008_snapper <- merge(Two_Patches_2008, snapper, by = c("SPECIES_CD"))


Two_Patches_2008_grouper <- merge(Two_Patches_2008, grouper, by = c("SPECIES_CD"))


Two_Patches_2009 <- import("Two_Patches/data/Two_Patches_2009.xls")

Two_Patches_2009_snapper <- merge(Two_Patches_2009, snapper, by = c("SPECIES_CD"))


Two_Patches_2009_grouper <- merge(Two_Patches_2009, grouper, by = c("SPECIES_CD"))


Two_Patches_2010 <- import("Two_Patches/data/Two_Patches_2010.xls")

Two_Patches_2010_snapper <- merge(Two_Patches_2010, snapper, by = c("SPECIES_CD"))


Two_Patches_2010_grouper <- merge(Two_Patches_2010, grouper, by = c("SPECIES_CD"))

Two_Patches_2011 <- import("Two_Patches/data/Two_Patches_2011.xls")

Two_Patches_2011_snapper <- merge(Two_Patches_2011, snapper, by = c("SPECIES_CD"))


Two_Patches_2011_grouper <- merge(Two_Patches_2011, grouper, by = c("SPECIES_CD"))



Two_Patches_2012 <- import("Two_Patches/data/Two_Patches_2012.xls")

Two_Patches_2012_snapper <- merge(Two_Patches_2012, snapper, by = c("SPECIES_CD"))


Two_Patches_2012_grouper <- merge(Two_Patches_2012, grouper, by = c("SPECIES_CD"))


Two_Patches_2014 <- import("Two_Patches/data/Two_Patches_2014.xls")

Two_Patches_2014_snapper <- merge(Two_Patches_2014, snapper, by = c("SPECIES_CD"))


Two_Patches_2014_grouper <- merge(Two_Patches_2014, grouper, by = c("SPECIES_CD"))


Two_Patches_2016 <- import("Two_Patches/data/Two_Patches_2016.xls")

Two_Patches_2016_snapper <- merge(Two_Patches_2016, snapper, by = c("SPECIES_CD"))


Two_Patches_2016_grouper <- merge(Two_Patches_2016, grouper, by = c("SPECIES_CD"))


Two_Patches_2018 <- import("Two_Patches/data/Two_Patches_2018.xls")

Two_Patches_2018_snapper <- merge(Two_Patches_2018, snapper, by = c("SPECIES_CD"))


Two_Patches_2018_grouper <- merge(Two_Patches_2018, grouper, by = c("SPECIES_CD"))



### Combine all years together for snapper_ and grouper_ seperately



Two_Patches_snapper_1 <- rbind(Two_Patches_1999_snapper,Two_Patches_2000_snapper)
Two_Patches_snapper_2 <- rbind(Two_Patches_snapper_1,Two_Patches_2001_snapper)
Two_Patches_snapper_3 <- rbind(Two_Patches_snapper_2,Two_Patches_2002_snapper)
Two_Patches_snapper_4 <- rbind(Two_Patches_snapper_3,Two_Patches_2003_snapper)
Two_Patches_snapper_5 <- rbind(Two_Patches_snapper_4,Two_Patches_2004_snapper)
Two_Patches_snapper_6 <- rbind(Two_Patches_snapper_5,Two_Patches_2005_snapper)
Two_Patches_snapper_7 <- rbind(Two_Patches_snapper_6,Two_Patches_2006_snapper)
Two_Patches_snapper_8 <- rbind(Two_Patches_snapper_7,Two_Patches_2007_snapper)
Two_Patches_snapper_9 <- rbind(Two_Patches_snapper_8,Two_Patches_2008_snapper)
Two_Patches_snapper_10 <- rbind(Two_Patches_snapper_9,Two_Patches_2009_snapper)
Two_Patches_snapper_11<- rbind(Two_Patches_snapper_10,Two_Patches_2010_snapper)
Two_Patches_snapper_12 <- rbind(Two_Patches_snapper_11,Two_Patches_2011_snapper)
Two_Patches_snapper_13 <- rbind(Two_Patches_snapper_12,Two_Patches_2012_snapper)
Two_Patches_snapper_14 <- rbind(Two_Patches_snapper_13,Two_Patches_2014_snapper)
Two_Patches_snapper_15 <- rbind(Two_Patches_snapper_14,Two_Patches_2016_snapper)
Two_Patches_snapper_data_combined <- rbind(Two_Patches_snapper_15,Two_Patches_2018_snapper)



Two_Patches_grouper_1 <- rbind(Two_Patches_1999_grouper,Two_Patches_2000_grouper)
Two_Patches_grouper_2 <- rbind(Two_Patches_grouper_1,Two_Patches_2001_grouper)
Two_Patches_grouper_3 <- rbind(Two_Patches_grouper_2,Two_Patches_2002_grouper)
Two_Patches_grouper_4 <- rbind(Two_Patches_grouper_3,Two_Patches_2003_grouper)
Two_Patches_grouper_5 <- rbind(Two_Patches_grouper_4,Two_Patches_2004_grouper)
Two_Patches_grouper_6 <- rbind(Two_Patches_grouper_5,Two_Patches_2005_grouper)
Two_Patches_grouper_7 <- rbind(Two_Patches_grouper_6,Two_Patches_2006_grouper)
Two_Patches_grouper_8 <- rbind(Two_Patches_grouper_7,Two_Patches_2007_grouper)
Two_Patches_grouper_9 <- rbind(Two_Patches_grouper_8,Two_Patches_2008_grouper)
Two_Patches_grouper_10 <- rbind(Two_Patches_grouper_9,Two_Patches_2009_grouper)
Two_Patches_grouper_11<- rbind(Two_Patches_grouper_10,Two_Patches_2010_grouper)
Two_Patches_grouper_12 <- rbind(Two_Patches_grouper_11,Two_Patches_2011_grouper)
Two_Patches_grouper_13 <- rbind(Two_Patches_grouper_12,Two_Patches_2012_grouper)
Two_Patches_grouper_14 <- rbind(Two_Patches_grouper_13,Two_Patches_2014_grouper)
Two_Patches_grouper_15 <- rbind(Two_Patches_grouper_14,Two_Patches_2016_grouper)
Two_Patches_grouper_data_combined <- rbind(Two_Patches_grouper_15,Two_Patches_2018_grouper)



Two_Patches_all <- rbind(Two_Patches_snapper_data_combined,Two_Patches_grouper_data_combined)
Two_Patches_all$sitename <- "Two Patches"
#export(Two_Patches_all, "Two_Patches/data/Two_Patches_snapper_grouper_type.csv")



## Combine all UK

UK_reef_snapper_combined <- rbind(Admiral_all, Burr_Fish_all, Carysfort_Deep_all, Carysfort_Shallow_all, Conch_Deep_all, Conch_Shallow_all, Grecian_Rocks_all, Molasses_Deep_all, Molasses_Shallow_all, Porter_Patch_all, Turtle_all, Two_Patches_all)
#export(UK_reef_snapper_combined, "UK_snapper_grouper_type.csv")




### COMBINE ALL SUBREGIONS TOGETHER

library(data.table)
setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF")

#DT_type <- read_csv("DT/DK_snapper_grouper_type.csv")
LK_snapper_grouper <- read_csv("LK/LK_snapper_grouper_type.csv")
MK_snapper_grouper <- read_csv("MK/MK_snapper_grouper_type.csv")
UK_snapper_grouper <- read_csv("UK/UK_snapper_grouper_type.csv")

All_regions_snapper_grouper_type <- rbind(LK_snapper_grouper,MK_snapper_grouper,UK_snapper_grouper)

#setnames(All_regions_snapper_data, old = c('Reef'), new = c('sitename'))
##export(All_regions_snapper_grouper_type, "All_regions_snapper_grouper_type.csv")




### Plots for each snapper and grouper type for each subregion


LK_snapper <- merge(LK_snapper_grouper, snapper, by = c("SPECIES_CD"))

## get different type of snappers 
unique(LK_snapper$SPECIES_CD)

## lut anal, lut apod, lut bucc, lut cyan, lut gris, lut jocu, lut maho, lut spe., lut syna, ocy chry

## get the years for all the data to sum by 
LK_lut_anal <- filter(LK_snapper, SPECIES_CD == "LUT ANAL")
unique(LK_lut_anal$YEAR_)

# 2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2014,2016,2018

LK_lut_anal_2000 <- filter(LK_lut_anal, YEAR_ == '2000')
LK_lut_anal_2000_biomass <- summarise_at(LK_lut_anal_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_anal_2000_biomass$Year <- ('2000')
LK_lut_anal_2000_biomass$subregion <- ('LK')
LK_lut_anal_2000_biomass$SPECIES_CD <- ('LUT ANAL')

LK_lut_anal_2000_count <- count(LK_lut_anal_2000, vars = "SPECIES_CD")

LK_lut_anal_2000_biomass_count <- cbind(LK_lut_anal_2000_biomass,LK_lut_anal_2000_count)

LK_lut_anal_2001 <- filter(LK_lut_anal, YEAR_ == '2001')
LK_lut_anal_2001_biomass <- summarise_at(LK_lut_anal_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_anal_2001_biomass$Year <- ('2001')
LK_lut_anal_2001_biomass$subregion <- ('LK')
LK_lut_anal_2001_biomass$SPECIES_CD <- ('LUT ANAL')

LK_lut_anal_2001_count <- count(LK_lut_anal_2001, vars = "SPECIES_CD")

LK_lut_anal_2001_biomass_count <- cbind(LK_lut_anal_2001_biomass,LK_lut_anal_2001_count)


LK_lut_anal_2002 <- filter(LK_lut_anal, YEAR_ == '2002')
LK_lut_anal_2002_biomass <- summarise_at(LK_lut_anal_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_anal_2002_biomass$Year <- ('2002')
LK_lut_anal_2002_biomass$subregion <- ('LK')
LK_lut_anal_2002_biomass$SPECIES_CD <- ('LUT ANAL')

LK_lut_anal_2002_count <- count(LK_lut_anal_2002, vars = "SPECIES_CD")

LK_lut_anal_2002_biomass_count <- cbind(LK_lut_anal_2002_biomass,LK_lut_anal_2002_count)


LK_lut_anal_2003 <- filter(LK_lut_anal, YEAR_ == '2003')
LK_lut_anal_2003_biomass <- summarise_at(LK_lut_anal_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_anal_2003_biomass$Year <- ('2003')
LK_lut_anal_2003_biomass$subregion <- ('LK')
LK_lut_anal_2003_biomass$SPECIES_CD <- ('LUT ANAL')

LK_lut_anal_2003_count <- count(LK_lut_anal_2003, vars = "SPECIES_CD")

LK_lut_anal_2003_biomass_count <- cbind(LK_lut_anal_2003_biomass,LK_lut_anal_2003_count)


LK_lut_anal_2004 <- filter(LK_lut_anal, YEAR_ == '2004')
LK_lut_anal_2004_biomass <- summarise_at(LK_lut_anal_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_anal_2004_biomass$Year <- ('2004')
LK_lut_anal_2004_biomass$subregion <- ('LK')
LK_lut_anal_2004_biomass$SPECIES_CD <- ('LUT ANAL')

LK_lut_anal_2004_count <- count(LK_lut_anal_2004, vars = "SPECIES_CD")

LK_lut_anal_2004_biomass_count <- cbind(LK_lut_anal_2004_biomass,LK_lut_anal_2004_count)


LK_lut_anal_2005 <- filter(LK_lut_anal, YEAR_ == '2005')
LK_lut_anal_2005_biomass <- summarise_at(LK_lut_anal_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_anal_2005_biomass$Year <- ('2005')
LK_lut_anal_2005_biomass$subregion <- ('LK')
LK_lut_anal_2005_biomass$SPECIES_CD <- ('LUT ANAL')

LK_lut_anal_2005_count <- count(LK_lut_anal_2005, vars = "SPECIES_CD")

LK_lut_anal_2005_biomass_count <- cbind(LK_lut_anal_2005_biomass,LK_lut_anal_2005_count)


LK_lut_anal_2006 <- filter(LK_lut_anal, YEAR_ == '2006')
LK_lut_anal_2006_biomass <- summarise_at(LK_lut_anal_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_anal_2006_biomass$Year <- ('2006')
LK_lut_anal_2006_biomass$subregion <- ('LK')
LK_lut_anal_2006_biomass$SPECIES_CD <- ('LUT ANAL')


LK_lut_anal_2006_count <- count(LK_lut_anal_2006, vars = "SPECIES_CD")

LK_lut_anal_2006_biomass_count <- cbind(LK_lut_anal_2006_biomass,LK_lut_anal_2006_count)


LK_lut_anal_2007 <- filter(LK_lut_anal, YEAR_ == '2007')
LK_lut_anal_2007_biomass <- summarise_at(LK_lut_anal_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_anal_2007_biomass$Year <- ('2007')
LK_lut_anal_2007_biomass$subregion <- ('LK')
LK_lut_anal_2007_biomass$SPECIES_CD <- ('LUT ANAL')

LK_lut_anal_2007_count <- count(LK_lut_anal_2007, vars = "SPECIES_CD")

LK_lut_anal_2007_biomass_count <- cbind(LK_lut_anal_2007_biomass,LK_lut_anal_2007_count)


LK_lut_anal_2008 <- filter(LK_lut_anal, YEAR_ == '2008')
LK_lut_anal_2008_biomass <- summarise_at(LK_lut_anal_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_anal_2008_biomass$Year <- ('2008')
LK_lut_anal_2008_biomass$subregion <- ('LK')
LK_lut_anal_2008_biomass$SPECIES_CD <- ('LUT ANAL')

LK_lut_anal_2008_count <- count(LK_lut_anal_2008, vars = "SPECIES_CD")

LK_lut_anal_2008_biomass_count <- cbind(LK_lut_anal_2008_biomass,LK_lut_anal_2008_count)


LK_lut_anal_2009 <- filter(LK_lut_anal, YEAR_ == '2009')
LK_lut_anal_2009_biomass <- summarise_at(LK_lut_anal_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_anal_2009_biomass$Year <- ('2009')
LK_lut_anal_2009_biomass$subregion <- ('LK')
LK_lut_anal_2009_biomass$SPECIES_CD <- ('LUT ANAL')

LK_lut_anal_2009_count <- count(LK_lut_anal_2009, vars = "SPECIES_CD")

LK_lut_anal_2009_biomass_count <- cbind(LK_lut_anal_2009_biomass,LK_lut_anal_2009_count)


LK_lut_anal_2010 <- filter(LK_lut_anal, YEAR_ == '2010')
LK_lut_anal_2010_biomass <- summarise_at(LK_lut_anal_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_anal_2010_biomass$Year <- ('2010')
LK_lut_anal_2010_biomass$subregion <- ('LK')
LK_lut_anal_2010_biomass$SPECIES_CD <- ('LUT ANAL')

LK_lut_anal_2010_count <- count(LK_lut_anal_2010, vars = "SPECIES_CD")

LK_lut_anal_2010_biomass_count <- cbind(LK_lut_anal_2010_biomass,LK_lut_anal_2010_count)


LK_lut_anal_2011 <- filter(LK_lut_anal, YEAR_ == '2011')
LK_lut_anal_2011_biomass <- summarise_at(LK_lut_anal_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_anal_2011_biomass$Year <- ('2011')
LK_lut_anal_2011_biomass$subregion <- ('LK')
LK_lut_anal_2011_biomass$SPECIES_CD <- ('LUT ANAL')

LK_lut_anal_2011_count <- count(LK_lut_anal_2011, vars = "SPECIES_CD")

LK_lut_anal_2011_biomass_count <- cbind(LK_lut_anal_2011_biomass,LK_lut_anal_2011_count)


LK_lut_anal_2012 <- filter(LK_lut_anal, YEAR_ == '2012')
LK_lut_anal_2012_biomass <- summarise_at(LK_lut_anal_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_anal_2012_biomass$Year <- ('2012')
LK_lut_anal_2012_biomass$subregion <- ('LK')
LK_lut_anal_2012_biomass$SPECIES_CD <- ('LUT ANAL')

LK_lut_anal_2012_count <- count(LK_lut_anal_2012, vars = "SPECIES_CD")

LK_lut_anal_2012_biomass_count <- cbind(LK_lut_anal_2012_biomass,LK_lut_anal_2012_count)


LK_lut_anal_2014 <- filter(LK_lut_anal, YEAR_ == '2014')
LK_lut_anal_2014_biomass <- summarise_at(LK_lut_anal_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_anal_2014_biomass$Year <- ('2014')
LK_lut_anal_2014_biomass$subregion <- ('LK')
LK_lut_anal_2014_biomass$SPECIES_CD <- ('LUT ANAL')

LK_lut_anal_2014_count <- count(LK_lut_anal_2014, vars = "SPECIES_CD")

LK_lut_anal_2014_biomass_count <- cbind(LK_lut_anal_2014_biomass,LK_lut_anal_2014_count)


LK_lut_anal_2016 <- filter(LK_lut_anal, YEAR_ == '2016')
LK_lut_anal_2016_biomass <- summarise_at(LK_lut_anal_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_anal_2016_biomass$Year <- ('2016')
LK_lut_anal_2016_biomass$subregion <- ('LK')
LK_lut_anal_2016_biomass$SPECIES_CD <- ('LUT ANAL')

LK_lut_anal_2016_count <- count(LK_lut_anal_2016, vars = "SPECIES_CD")

LK_lut_anal_2016_biomass_count <- cbind(LK_lut_anal_2016_biomass,LK_lut_anal_2016_count)


LK_lut_anal_2018 <- filter(LK_lut_anal, YEAR_ == '2018')
LK_lut_anal_2018_biomass <- summarise_at(LK_lut_anal_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_anal_2018_biomass$Year <- ('2018')
LK_lut_anal_2018_biomass$subregion <- ('LK')
LK_lut_anal_2018_biomass$SPECIES_CD <- ('LUT ANAL')

LK_lut_anal_2018_count <- count(LK_lut_anal_2018, vars = "SPECIES_CD")

LK_lut_anal_2018_biomass_count <- cbind(LK_lut_anal_2018_biomass,LK_lut_anal_2018_count)


LK_lut_anal_all <- rbind(LK_lut_anal_2000_biomass_count,LK_lut_anal_2001_biomass_count,LK_lut_anal_2002_biomass_count,LK_lut_anal_2003_biomass_count,
                         LK_lut_anal_2004_biomass_count,LK_lut_anal_2005_biomass_count,LK_lut_anal_2006_biomass_count,LK_lut_anal_2007_biomass_count,
                         LK_lut_anal_2008_biomass_count,LK_lut_anal_2009_biomass_count,LK_lut_anal_2010_biomass_count,LK_lut_anal_2011_biomass_count,
                         LK_lut_anal_2012_biomass_count,LK_lut_anal_2014_biomass_count,LK_lut_anal_2016_biomass_count,LK_lut_anal_2018_biomass_count)

LK_lut_anal_all$vars <- NULL



LK_lut_apod <- filter(LK_snapper, SPECIES_CD == "LUT APOD")
unique(LK_lut_apod$YEAR_)

LK_lut_apod_1999 <- filter(LK_lut_apod, YEAR_ == '1999')
LK_lut_apod_1999_biomass <- summarise_at(LK_lut_apod_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_1999_biomass$Year <- ('1999')
LK_lut_apod_1999_biomass$subregion <- ('LK')
LK_lut_apod_1999_biomass$SPECIES_CD <- ('LUT APOD')

LK_lut_apod_1999_count <- count(LK_lut_apod_1999, vars = "SPECIES_CD")

LK_lut_apod_1999_biomass_count <- cbind(LK_lut_apod_1999_biomass,LK_lut_apod_1999_count)



LK_lut_apod_2000 <- filter(LK_lut_apod, YEAR_ == '2000')
LK_lut_apod_2000_biomass <- summarise_at(LK_lut_apod_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_2000_biomass$Year <- ('2000')
LK_lut_apod_2000_biomass$subregion <- ('LK')
LK_lut_apod_2000_biomass$SPECIES_CD <- ('LUT APOD')

LK_lut_apod_2000_count <- count(LK_lut_apod_2000, vars = "SPECIES_CD")

LK_lut_apod_2000_biomass_count <- cbind(LK_lut_apod_2000_biomass,LK_lut_apod_2000_count)

LK_lut_apod_2001 <- filter(LK_lut_apod, YEAR_ == '2001')
LK_lut_apod_2001_biomass <- summarise_at(LK_lut_apod_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_2001_biomass$Year <- ('2001')
LK_lut_apod_2001_biomass$subregion <- ('LK')
LK_lut_apod_2001_biomass$SPECIES_CD <- ('LUT APOD')

LK_lut_apod_2001_count <- count(LK_lut_apod_2001, vars = "SPECIES_CD")

LK_lut_apod_2001_biomass_count <- cbind(LK_lut_apod_2001_biomass,LK_lut_apod_2001_count)


LK_lut_apod_2002 <- filter(LK_lut_apod, YEAR_ == '2002')
LK_lut_apod_2002_biomass <- summarise_at(LK_lut_apod_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_2002_biomass$Year <- ('2002')
LK_lut_apod_2002_biomass$subregion <- ('LK')
LK_lut_apod_2002_biomass$SPECIES_CD <- ('LUT APOD')

LK_lut_apod_2002_count <- count(LK_lut_apod_2002, vars = "SPECIES_CD")

LK_lut_apod_2002_biomass_count <- cbind(LK_lut_apod_2002_biomass,LK_lut_apod_2002_count)


LK_lut_apod_2003 <- filter(LK_lut_apod, YEAR_ == '2003')
LK_lut_apod_2003_biomass <- summarise_at(LK_lut_apod_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_2003_biomass$Year <- ('2003')
LK_lut_apod_2003_biomass$subregion <- ('LK')
LK_lut_apod_2003_biomass$SPECIES_CD <- ('LUT APOD')

LK_lut_apod_2003_count <- count(LK_lut_apod_2003, vars = "SPECIES_CD")

LK_lut_apod_2003_biomass_count <- cbind(LK_lut_apod_2003_biomass,LK_lut_apod_2003_count)


LK_lut_apod_2004 <- filter(LK_lut_apod, YEAR_ == '2004')
LK_lut_apod_2004_biomass <- summarise_at(LK_lut_apod_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_2004_biomass$Year <- ('2004')
LK_lut_apod_2004_biomass$subregion <- ('LK')
LK_lut_apod_2004_biomass$SPECIES_CD <- ('LUT APOD')

LK_lut_apod_2004_count <- count(LK_lut_apod_2004, vars = "SPECIES_CD")

LK_lut_apod_2004_biomass_count <- cbind(LK_lut_apod_2004_biomass,LK_lut_apod_2004_count)


LK_lut_apod_2005 <- filter(LK_lut_apod, YEAR_ == '2005')
LK_lut_apod_2005_biomass <- summarise_at(LK_lut_apod_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_2005_biomass$Year <- ('2005')
LK_lut_apod_2005_biomass$subregion <- ('LK')
LK_lut_apod_2005_biomass$SPECIES_CD <- ('LUT APOD')

LK_lut_apod_2005_count <- count(LK_lut_apod_2005, vars = "SPECIES_CD")

LK_lut_apod_2005_biomass_count <- cbind(LK_lut_apod_2005_biomass,LK_lut_apod_2005_count)


LK_lut_apod_2006 <- filter(LK_lut_apod, YEAR_ == '2006')
LK_lut_apod_2006_biomass <- summarise_at(LK_lut_apod_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_2006_biomass$Year <- ('2006')
LK_lut_apod_2006_biomass$subregion <- ('LK')
LK_lut_apod_2006_biomass$SPECIES_CD <- ('LUT APOD')


LK_lut_apod_2006_count <- count(LK_lut_apod_2006, vars = "SPECIES_CD")

LK_lut_apod_2006_biomass_count <- cbind(LK_lut_apod_2006_biomass,LK_lut_apod_2006_count)


LK_lut_apod_2007 <- filter(LK_lut_apod, YEAR_ == '2007')
LK_lut_apod_2007_biomass <- summarise_at(LK_lut_apod_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_2007_biomass$Year <- ('2007')
LK_lut_apod_2007_biomass$subregion <- ('LK')
LK_lut_apod_2007_biomass$SPECIES_CD <- ('LUT APOD')

LK_lut_apod_2007_count <- count(LK_lut_apod_2007, vars = "SPECIES_CD")

LK_lut_apod_2007_biomass_count <- cbind(LK_lut_apod_2007_biomass,LK_lut_apod_2007_count)


LK_lut_apod_2008 <- filter(LK_lut_apod, YEAR_ == '2008')
LK_lut_apod_2008_biomass <- summarise_at(LK_lut_apod_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_2008_biomass$Year <- ('2008')
LK_lut_apod_2008_biomass$subregion <- ('LK')
LK_lut_apod_2008_biomass$SPECIES_CD <- ('LUT APOD')

LK_lut_apod_2008_count <- count(LK_lut_apod_2008, vars = "SPECIES_CD")

LK_lut_apod_2008_biomass_count <- cbind(LK_lut_apod_2008_biomass,LK_lut_apod_2008_count)


LK_lut_apod_2009 <- filter(LK_lut_apod, YEAR_ == '2009')
LK_lut_apod_2009_biomass <- summarise_at(LK_lut_apod_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_2009_biomass$Year <- ('2009')
LK_lut_apod_2009_biomass$subregion <- ('LK')
LK_lut_apod_2009_biomass$SPECIES_CD <- ('LUT APOD')

LK_lut_apod_2009_count <- count(LK_lut_apod_2009, vars = "SPECIES_CD")

LK_lut_apod_2009_biomass_count <- cbind(LK_lut_apod_2009_biomass,LK_lut_apod_2009_count)


LK_lut_apod_2010 <- filter(LK_lut_apod, YEAR_ == '2010')
LK_lut_apod_2010_biomass <- summarise_at(LK_lut_apod_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_2010_biomass$Year <- ('2010')
LK_lut_apod_2010_biomass$subregion <- ('LK')
LK_lut_apod_2010_biomass$SPECIES_CD <- ('LUT APOD')

LK_lut_apod_2010_count <- count(LK_lut_apod_2010, vars = "SPECIES_CD")

LK_lut_apod_2010_biomass_count <- cbind(LK_lut_apod_2010_biomass,LK_lut_apod_2010_count)


LK_lut_apod_2011 <- filter(LK_lut_apod, YEAR_ == '2011')
LK_lut_apod_2011_biomass <- summarise_at(LK_lut_apod_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_2011_biomass$Year <- ('2011')
LK_lut_apod_2011_biomass$subregion <- ('LK')
LK_lut_apod_2011_biomass$SPECIES_CD <- ('LUT APOD')

LK_lut_apod_2011_count <- count(LK_lut_apod_2011, vars = "SPECIES_CD")

LK_lut_apod_2011_biomass_count <- cbind(LK_lut_apod_2011_biomass,LK_lut_apod_2011_count)


LK_lut_apod_2012 <- filter(LK_lut_apod, YEAR_ == '2012')
LK_lut_apod_2012_biomass <- summarise_at(LK_lut_apod_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_2012_biomass$Year <- ('2012')
LK_lut_apod_2012_biomass$subregion <- ('LK')
LK_lut_apod_2012_biomass$SPECIES_CD <- ('LUT APOD')

LK_lut_apod_2012_count <- count(LK_lut_apod_2012, vars = "SPECIES_CD")

LK_lut_apod_2012_biomass_count <- cbind(LK_lut_apod_2012_biomass,LK_lut_apod_2012_count)


LK_lut_apod_2014 <- filter(LK_lut_apod, YEAR_ == '2014')
LK_lut_apod_2014_biomass <- summarise_at(LK_lut_apod_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_2014_biomass$Year <- ('2014')
LK_lut_apod_2014_biomass$subregion <- ('LK')
LK_lut_apod_2014_biomass$SPECIES_CD <- ('LUT APOD')

LK_lut_apod_2014_count <- count(LK_lut_apod_2014, vars = "SPECIES_CD")

LK_lut_apod_2014_biomass_count <- cbind(LK_lut_apod_2014_biomass,LK_lut_apod_2014_count)


LK_lut_apod_2016 <- filter(LK_lut_apod, YEAR_ == '2016')
LK_lut_apod_2016_biomass <- summarise_at(LK_lut_apod_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_2016_biomass$Year <- ('2016')
LK_lut_apod_2016_biomass$subregion <- ('LK')
LK_lut_apod_2016_biomass$SPECIES_CD <- ('LUT APOD')

LK_lut_apod_2016_count <- count(LK_lut_apod_2016, vars = "SPECIES_CD")

LK_lut_apod_2016_biomass_count <- cbind(LK_lut_apod_2016_biomass,LK_lut_apod_2016_count)


LK_lut_apod_2018 <- filter(LK_lut_apod, YEAR_ == '2018')
LK_lut_apod_2018_biomass <- summarise_at(LK_lut_apod_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_apod_2018_biomass$Year <- ('2018')
LK_lut_apod_2018_biomass$subregion <- ('LK')
LK_lut_apod_2018_biomass$SPECIES_CD <- ('LUT APOD')

LK_lut_apod_2018_count <- count(LK_lut_apod_2018, vars = "SPECIES_CD")

LK_lut_apod_2018_biomass_count <- cbind(LK_lut_apod_2018_biomass,LK_lut_apod_2018_count)


LK_lut_apod_all <- rbind(LK_lut_apod_1999_biomass_count,LK_lut_apod_2000_biomass_count,LK_lut_apod_2001_biomass_count,LK_lut_apod_2002_biomass_count,LK_lut_apod_2003_biomass_count,
                         LK_lut_apod_2004_biomass_count,LK_lut_apod_2005_biomass_count,LK_lut_apod_2006_biomass_count,LK_lut_apod_2007_biomass_count,
                         LK_lut_apod_2008_biomass_count,LK_lut_apod_2009_biomass_count,LK_lut_apod_2010_biomass_count,LK_lut_apod_2011_biomass_count,
                         LK_lut_apod_2012_biomass_count,LK_lut_apod_2014_biomass_count,LK_lut_apod_2016_biomass_count,LK_lut_apod_2018_biomass_count)

LK_lut_apod_all$vars <- NULL





LK_lut_bucc <- filter(LK_snapper, SPECIES_CD == "LUT BUCC")
unique(LK_lut_bucc$YEAR_)


LK_lut_bucc_2011 <- filter(LK_lut_bucc, YEAR_ == '2011')
LK_lut_bucc_2011_biomass <- summarise_at(LK_lut_bucc_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_bucc_2011_biomass$Year <- ('2011')
LK_lut_bucc_2011_biomass$subregion <- ('LK')
LK_lut_bucc_2011_biomass$SPECIES_CD <- ('LUT BUCC')

LK_lut_bucc_2011_count <- count(LK_lut_bucc_2011, vars = "SPECIES_CD")

LK_lut_bucc_2011_biomass_count <- cbind(LK_lut_bucc_2011_biomass,LK_lut_bucc_2011_count)


LK_lut_bucc_2014 <- filter(LK_lut_bucc, YEAR_ == '2014')
LK_lut_bucc_2014_biomass <- summarise_at(LK_lut_bucc_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_bucc_2014_biomass$Year <- ('2014')
LK_lut_bucc_2014_biomass$subregion <- ('LK')
LK_lut_bucc_2014_biomass$SPECIES_CD <- ('LUT BUCC')

LK_lut_bucc_2014_count <- count(LK_lut_bucc_2014, vars = "SPECIES_CD")

LK_lut_bucc_2014_biomass_count <- cbind(LK_lut_bucc_2014_biomass,LK_lut_bucc_2014_count)


LK_lut_bucc_2016 <- filter(LK_lut_bucc, YEAR_ == '2016')
LK_lut_bucc_2016_biomass <- summarise_at(LK_lut_bucc_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_bucc_2016_biomass$Year <- ('2016')
LK_lut_bucc_2016_biomass$subregion <- ('LK')
LK_lut_bucc_2016_biomass$SPECIES_CD <- ('LUT BUCC')

LK_lut_bucc_2016_count <- count(LK_lut_bucc_2016, vars = "SPECIES_CD")

LK_lut_bucc_2016_biomass_count <- cbind(LK_lut_bucc_2016_biomass,LK_lut_bucc_2016_count)


LK_lut_bucc_2018 <- filter(LK_lut_bucc, YEAR_ == '2018')
LK_lut_bucc_2018_biomass <- summarise_at(LK_lut_bucc_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_bucc_2018_biomass$Year <- ('2018')
LK_lut_bucc_2018_biomass$subregion <- ('LK')
LK_lut_bucc_2018_biomass$SPECIES_CD <- ('LUT BUCC')

LK_lut_bucc_2018_count <- count(LK_lut_bucc_2018, vars = "SPECIES_CD")

LK_lut_bucc_2018_biomass_count <- cbind(LK_lut_bucc_2018_biomass,LK_lut_bucc_2018_count)


LK_lut_bucc_all <- rbind(LK_lut_bucc_2011_biomass_count,LK_lut_bucc_2014_biomass_count,LK_lut_bucc_2016_biomass_count,LK_lut_bucc_2018_biomass_count)

LK_lut_bucc_all$vars <- NULL




LK_lut_cyan <- filter(LK_snapper, SPECIES_CD == "LUT CYAN")
unique(LK_lut_cyan$YEAR_)


LK_lut_cyan_2001 <- filter(LK_lut_cyan, YEAR_ == '2001')
LK_lut_cyan_2001_biomass <- summarise_at(LK_lut_cyan_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_cyan_2001_biomass$Year <- ('2001')
LK_lut_cyan_2001_biomass$subregion <- ('LK')
LK_lut_cyan_2001_biomass$SPECIES_CD <- ('LUT CYAN')

LK_lut_cyan_2001_count <- count(LK_lut_cyan_2001, vars = "SPECIES_CD")

LK_lut_cyan_2001_biomass_count <- cbind(LK_lut_cyan_2001_biomass,LK_lut_cyan_2001_count)



LK_lut_cyan_2009 <- filter(LK_lut_cyan, YEAR_ == '2009')
LK_lut_cyan_2009_biomass <- summarise_at(LK_lut_cyan_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_cyan_2009_biomass$Year <- ('2009')
LK_lut_cyan_2009_biomass$subregion <- ('LK')
LK_lut_cyan_2009_biomass$SPECIES_CD <- ('LUT CYAN')

LK_lut_cyan_2009_count <- count(LK_lut_cyan_2009, vars = "SPECIES_CD")

LK_lut_cyan_2009_biomass_count <- cbind(LK_lut_cyan_2009_biomass,LK_lut_cyan_2009_count)



LK_lut_cyan_2018 <- filter(LK_lut_cyan, YEAR_ == '2018')
LK_lut_cyan_2018_biomass <- summarise_at(LK_lut_cyan_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_cyan_2018_biomass$Year <- ('2018')
LK_lut_cyan_2018_biomass$subregion <- ('LK')
LK_lut_cyan_2018_biomass$SPECIES_CD <- ('LUT CYAN')

LK_lut_cyan_2018_count <- count(LK_lut_cyan_2018, vars = "SPECIES_CD")

LK_lut_cyan_2018_biomass_count <- cbind(LK_lut_cyan_2018_biomass,LK_lut_cyan_2018_count)


LK_lut_cyan_all <- rbind(LK_lut_cyan_2001_biomass_count,LK_lut_cyan_2009_biomass_count,LK_lut_cyan_2018_biomass_count)

LK_lut_cyan_all$vars <- NULL





LK_lut_gris <- filter(LK_snapper, SPECIES_CD == "LUT GRIS")
unique(LK_lut_gris$YEAR_)

LK_lut_gris_1999 <- filter(LK_lut_gris, YEAR_ == '1999')
LK_lut_gris_1999_biomass <- summarise_at(LK_lut_gris_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_1999_biomass$Year <- ('1999')
LK_lut_gris_1999_biomass$subregion <- ('LK')
LK_lut_gris_1999_biomass$SPECIES_CD <- ('LUT GRIS')

LK_lut_gris_1999_count <- count(LK_lut_gris_1999, vars = "SPECIES_CD")

LK_lut_gris_1999_biomass_count <- cbind(LK_lut_gris_1999_biomass,LK_lut_gris_1999_count)



LK_lut_gris_2000 <- filter(LK_lut_gris, YEAR_ == '2000')
LK_lut_gris_2000_biomass <- summarise_at(LK_lut_gris_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_2000_biomass$Year <- ('2000')
LK_lut_gris_2000_biomass$subregion <- ('LK')
LK_lut_gris_2000_biomass$SPECIES_CD <- ('LUT GRIS')

LK_lut_gris_2000_count <- count(LK_lut_gris_2000, vars = "SPECIES_CD")

LK_lut_gris_2000_biomass_count <- cbind(LK_lut_gris_2000_biomass,LK_lut_gris_2000_count)

LK_lut_gris_2001 <- filter(LK_lut_gris, YEAR_ == '2001')
LK_lut_gris_2001_biomass <- summarise_at(LK_lut_gris_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_2001_biomass$Year <- ('2001')
LK_lut_gris_2001_biomass$subregion <- ('LK')
LK_lut_gris_2001_biomass$SPECIES_CD <- ('LUT GRIS')

LK_lut_gris_2001_count <- count(LK_lut_gris_2001, vars = "SPECIES_CD")

LK_lut_gris_2001_biomass_count <- cbind(LK_lut_gris_2001_biomass,LK_lut_gris_2001_count)


LK_lut_gris_2002 <- filter(LK_lut_gris, YEAR_ == '2002')
LK_lut_gris_2002_biomass <- summarise_at(LK_lut_gris_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_2002_biomass$Year <- ('2002')
LK_lut_gris_2002_biomass$subregion <- ('LK')
LK_lut_gris_2002_biomass$SPECIES_CD <- ('LUT GRIS')

LK_lut_gris_2002_count <- count(LK_lut_gris_2002, vars = "SPECIES_CD")

LK_lut_gris_2002_biomass_count <- cbind(LK_lut_gris_2002_biomass,LK_lut_gris_2002_count)


LK_lut_gris_2003 <- filter(LK_lut_gris, YEAR_ == '2003')
LK_lut_gris_2003_biomass <- summarise_at(LK_lut_gris_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_2003_biomass$Year <- ('2003')
LK_lut_gris_2003_biomass$subregion <- ('LK')
LK_lut_gris_2003_biomass$SPECIES_CD <- ('LUT GRIS')

LK_lut_gris_2003_count <- count(LK_lut_gris_2003, vars = "SPECIES_CD")

LK_lut_gris_2003_biomass_count <- cbind(LK_lut_gris_2003_biomass,LK_lut_gris_2003_count)


LK_lut_gris_2004 <- filter(LK_lut_gris, YEAR_ == '2004')
LK_lut_gris_2004_biomass <- summarise_at(LK_lut_gris_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_2004_biomass$Year <- ('2004')
LK_lut_gris_2004_biomass$subregion <- ('LK')
LK_lut_gris_2004_biomass$SPECIES_CD <- ('LUT GRIS')

LK_lut_gris_2004_count <- count(LK_lut_gris_2004, vars = "SPECIES_CD")

LK_lut_gris_2004_biomass_count <- cbind(LK_lut_gris_2004_biomass,LK_lut_gris_2004_count)


LK_lut_gris_2005 <- filter(LK_lut_gris, YEAR_ == '2005')
LK_lut_gris_2005_biomass <- summarise_at(LK_lut_gris_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_2005_biomass$Year <- ('2005')
LK_lut_gris_2005_biomass$subregion <- ('LK')
LK_lut_gris_2005_biomass$SPECIES_CD <- ('LUT GRIS')

LK_lut_gris_2005_count <- count(LK_lut_gris_2005, vars = "SPECIES_CD")

LK_lut_gris_2005_biomass_count <- cbind(LK_lut_gris_2005_biomass,LK_lut_gris_2005_count)


LK_lut_gris_2006 <- filter(LK_lut_gris, YEAR_ == '2006')
LK_lut_gris_2006_biomass <- summarise_at(LK_lut_gris_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_2006_biomass$Year <- ('2006')
LK_lut_gris_2006_biomass$subregion <- ('LK')
LK_lut_gris_2006_biomass$SPECIES_CD <- ('LUT GRIS')


LK_lut_gris_2006_count <- count(LK_lut_gris_2006, vars = "SPECIES_CD")

LK_lut_gris_2006_biomass_count <- cbind(LK_lut_gris_2006_biomass,LK_lut_gris_2006_count)


LK_lut_gris_2007 <- filter(LK_lut_gris, YEAR_ == '2007')
LK_lut_gris_2007_biomass <- summarise_at(LK_lut_gris_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_2007_biomass$Year <- ('2007')
LK_lut_gris_2007_biomass$subregion <- ('LK')
LK_lut_gris_2007_biomass$SPECIES_CD <- ('LUT GRIS')

LK_lut_gris_2007_count <- count(LK_lut_gris_2007, vars = "SPECIES_CD")

LK_lut_gris_2007_biomass_count <- cbind(LK_lut_gris_2007_biomass,LK_lut_gris_2007_count)


LK_lut_gris_2008 <- filter(LK_lut_gris, YEAR_ == '2008')
LK_lut_gris_2008_biomass <- summarise_at(LK_lut_gris_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_2008_biomass$Year <- ('2008')
LK_lut_gris_2008_biomass$subregion <- ('LK')
LK_lut_gris_2008_biomass$SPECIES_CD <- ('LUT GRIS')

LK_lut_gris_2008_count <- count(LK_lut_gris_2008, vars = "SPECIES_CD")

LK_lut_gris_2008_biomass_count <- cbind(LK_lut_gris_2008_biomass,LK_lut_gris_2008_count)


LK_lut_gris_2009 <- filter(LK_lut_gris, YEAR_ == '2009')
LK_lut_gris_2009_biomass <- summarise_at(LK_lut_gris_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_2009_biomass$Year <- ('2009')
LK_lut_gris_2009_biomass$subregion <- ('LK')
LK_lut_gris_2009_biomass$SPECIES_CD <- ('LUT GRIS')

LK_lut_gris_2009_count <- count(LK_lut_gris_2009, vars = "SPECIES_CD")

LK_lut_gris_2009_biomass_count <- cbind(LK_lut_gris_2009_biomass,LK_lut_gris_2009_count)


LK_lut_gris_2010 <- filter(LK_lut_gris, YEAR_ == '2010')
LK_lut_gris_2010_biomass <- summarise_at(LK_lut_gris_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_2010_biomass$Year <- ('2010')
LK_lut_gris_2010_biomass$subregion <- ('LK')
LK_lut_gris_2010_biomass$SPECIES_CD <- ('LUT GRIS')

LK_lut_gris_2010_count <- count(LK_lut_gris_2010, vars = "SPECIES_CD")

LK_lut_gris_2010_biomass_count <- cbind(LK_lut_gris_2010_biomass,LK_lut_gris_2010_count)


LK_lut_gris_2011 <- filter(LK_lut_gris, YEAR_ == '2011')
LK_lut_gris_2011_biomass <- summarise_at(LK_lut_gris_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_2011_biomass$Year <- ('2011')
LK_lut_gris_2011_biomass$subregion <- ('LK')
LK_lut_gris_2011_biomass$SPECIES_CD <- ('LUT GRIS')

LK_lut_gris_2011_count <- count(LK_lut_gris_2011, vars = "SPECIES_CD")

LK_lut_gris_2011_biomass_count <- cbind(LK_lut_gris_2011_biomass,LK_lut_gris_2011_count)


LK_lut_gris_2012 <- filter(LK_lut_gris, YEAR_ == '2012')
LK_lut_gris_2012_biomass <- summarise_at(LK_lut_gris_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_2012_biomass$Year <- ('2012')
LK_lut_gris_2012_biomass$subregion <- ('LK')
LK_lut_gris_2012_biomass$SPECIES_CD <- ('LUT GRIS')

LK_lut_gris_2012_count <- count(LK_lut_gris_2012, vars = "SPECIES_CD")

LK_lut_gris_2012_biomass_count <- cbind(LK_lut_gris_2012_biomass,LK_lut_gris_2012_count)


LK_lut_gris_2014 <- filter(LK_lut_gris, YEAR_ == '2014')
LK_lut_gris_2014_biomass <- summarise_at(LK_lut_gris_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_2014_biomass$Year <- ('2014')
LK_lut_gris_2014_biomass$subregion <- ('LK')
LK_lut_gris_2014_biomass$SPECIES_CD <- ('LUT GRIS')

LK_lut_gris_2014_count <- count(LK_lut_gris_2014, vars = "SPECIES_CD")

LK_lut_gris_2014_biomass_count <- cbind(LK_lut_gris_2014_biomass,LK_lut_gris_2014_count)


LK_lut_gris_2016 <- filter(LK_lut_gris, YEAR_ == '2016')
LK_lut_gris_2016_biomass <- summarise_at(LK_lut_gris_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_2016_biomass$Year <- ('2016')
LK_lut_gris_2016_biomass$subregion <- ('LK')
LK_lut_gris_2016_biomass$SPECIES_CD <- ('LUT GRIS')

LK_lut_gris_2016_count <- count(LK_lut_gris_2016, vars = "SPECIES_CD")

LK_lut_gris_2016_biomass_count <- cbind(LK_lut_gris_2016_biomass,LK_lut_gris_2016_count)


LK_lut_gris_2018 <- filter(LK_lut_gris, YEAR_ == '2018')
LK_lut_gris_2018_biomass <- summarise_at(LK_lut_gris_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_gris_2018_biomass$Year <- ('2018')
LK_lut_gris_2018_biomass$subregion <- ('LK')
LK_lut_gris_2018_biomass$SPECIES_CD <- ('LUT GRIS')

LK_lut_gris_2018_count <- count(LK_lut_gris_2018, vars = "SPECIES_CD")

LK_lut_gris_2018_biomass_count <- cbind(LK_lut_gris_2018_biomass,LK_lut_gris_2018_count)


LK_lut_gris_all <- rbind(LK_lut_gris_1999_biomass_count,LK_lut_gris_2000_biomass_count,LK_lut_gris_2001_biomass_count,LK_lut_gris_2002_biomass_count,LK_lut_gris_2003_biomass_count,
                         LK_lut_gris_2004_biomass_count,LK_lut_gris_2005_biomass_count,LK_lut_gris_2006_biomass_count,LK_lut_gris_2007_biomass_count,
                         LK_lut_gris_2008_biomass_count,LK_lut_gris_2009_biomass_count,LK_lut_gris_2010_biomass_count,LK_lut_gris_2011_biomass_count,
                         LK_lut_gris_2012_biomass_count,LK_lut_gris_2014_biomass_count,LK_lut_gris_2016_biomass_count,LK_lut_gris_2018_biomass_count)

LK_lut_gris_all$vars <- NULL




LK_lut_jocu <- filter(LK_snapper, SPECIES_CD == "LUT JOCU")
unique(LK_lut_jocu$YEAR_)

LK_lut_jocu_1999 <- filter(LK_lut_jocu, YEAR_ == '1999')
LK_lut_jocu_1999_biomass <- summarise_at(LK_lut_jocu_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_1999_biomass$Year <- ('1999')
LK_lut_jocu_1999_biomass$subregion <- ('LK')
LK_lut_jocu_1999_biomass$SPECIES_CD <- ('LUT JOCU')

LK_lut_jocu_1999_count <- count(LK_lut_jocu_1999, vars = "SPECIES_CD")

LK_lut_jocu_1999_biomass_count <- cbind(LK_lut_jocu_1999_biomass,LK_lut_jocu_1999_count)



LK_lut_jocu_2000 <- filter(LK_lut_jocu, YEAR_ == '2000')
LK_lut_jocu_2000_biomass <- summarise_at(LK_lut_jocu_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_2000_biomass$Year <- ('2000')
LK_lut_jocu_2000_biomass$subregion <- ('LK')
LK_lut_jocu_2000_biomass$SPECIES_CD <- ('LUT JOCU')

LK_lut_jocu_2000_count <- count(LK_lut_jocu_2000, vars = "SPECIES_CD")

LK_lut_jocu_2000_biomass_count <- cbind(LK_lut_jocu_2000_biomass,LK_lut_jocu_2000_count)

LK_lut_jocu_2001 <- filter(LK_lut_jocu, YEAR_ == '2001')
LK_lut_jocu_2001_biomass <- summarise_at(LK_lut_jocu_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_2001_biomass$Year <- ('2001')
LK_lut_jocu_2001_biomass$subregion <- ('LK')
LK_lut_jocu_2001_biomass$SPECIES_CD <- ('LUT JOCU')

LK_lut_jocu_2001_count <- count(LK_lut_jocu_2001, vars = "SPECIES_CD")

LK_lut_jocu_2001_biomass_count <- cbind(LK_lut_jocu_2001_biomass,LK_lut_jocu_2001_count)


LK_lut_jocu_2002 <- filter(LK_lut_jocu, YEAR_ == '2002')
LK_lut_jocu_2002_biomass <- summarise_at(LK_lut_jocu_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_2002_biomass$Year <- ('2002')
LK_lut_jocu_2002_biomass$subregion <- ('LK')
LK_lut_jocu_2002_biomass$SPECIES_CD <- ('LUT JOCU')

LK_lut_jocu_2002_count <- count(LK_lut_jocu_2002, vars = "SPECIES_CD")

LK_lut_jocu_2002_biomass_count <- cbind(LK_lut_jocu_2002_biomass,LK_lut_jocu_2002_count)


LK_lut_jocu_2003 <- filter(LK_lut_jocu, YEAR_ == '2003')
LK_lut_jocu_2003_biomass <- summarise_at(LK_lut_jocu_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_2003_biomass$Year <- ('2003')
LK_lut_jocu_2003_biomass$subregion <- ('LK')
LK_lut_jocu_2003_biomass$SPECIES_CD <- ('LUT JOCU')

LK_lut_jocu_2003_count <- count(LK_lut_jocu_2003, vars = "SPECIES_CD")

LK_lut_jocu_2003_biomass_count <- cbind(LK_lut_jocu_2003_biomass,LK_lut_jocu_2003_count)


LK_lut_jocu_2004 <- filter(LK_lut_jocu, YEAR_ == '2004')
LK_lut_jocu_2004_biomass <- summarise_at(LK_lut_jocu_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_2004_biomass$Year <- ('2004')
LK_lut_jocu_2004_biomass$subregion <- ('LK')
LK_lut_jocu_2004_biomass$SPECIES_CD <- ('LUT JOCU')

LK_lut_jocu_2004_count <- count(LK_lut_jocu_2004, vars = "SPECIES_CD")

LK_lut_jocu_2004_biomass_count <- cbind(LK_lut_jocu_2004_biomass,LK_lut_jocu_2004_count)


LK_lut_jocu_2005 <- filter(LK_lut_jocu, YEAR_ == '2005')
LK_lut_jocu_2005_biomass <- summarise_at(LK_lut_jocu_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_2005_biomass$Year <- ('2005')
LK_lut_jocu_2005_biomass$subregion <- ('LK')
LK_lut_jocu_2005_biomass$SPECIES_CD <- ('LUT JOCU')

LK_lut_jocu_2005_count <- count(LK_lut_jocu_2005, vars = "SPECIES_CD")

LK_lut_jocu_2005_biomass_count <- cbind(LK_lut_jocu_2005_biomass,LK_lut_jocu_2005_count)


LK_lut_jocu_2006 <- filter(LK_lut_jocu, YEAR_ == '2006')
LK_lut_jocu_2006_biomass <- summarise_at(LK_lut_jocu_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_2006_biomass$Year <- ('2006')
LK_lut_jocu_2006_biomass$subregion <- ('LK')
LK_lut_jocu_2006_biomass$SPECIES_CD <- ('LUT JOCU')


LK_lut_jocu_2006_count <- count(LK_lut_jocu_2006, vars = "SPECIES_CD")

LK_lut_jocu_2006_biomass_count <- cbind(LK_lut_jocu_2006_biomass,LK_lut_jocu_2006_count)


LK_lut_jocu_2007 <- filter(LK_lut_jocu, YEAR_ == '2007')
LK_lut_jocu_2007_biomass <- summarise_at(LK_lut_jocu_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_2007_biomass$Year <- ('2007')
LK_lut_jocu_2007_biomass$subregion <- ('LK')
LK_lut_jocu_2007_biomass$SPECIES_CD <- ('LUT JOCU')

LK_lut_jocu_2007_count <- count(LK_lut_jocu_2007, vars = "SPECIES_CD")

LK_lut_jocu_2007_biomass_count <- cbind(LK_lut_jocu_2007_biomass,LK_lut_jocu_2007_count)


LK_lut_jocu_2008 <- filter(LK_lut_jocu, YEAR_ == '2008')
LK_lut_jocu_2008_biomass <- summarise_at(LK_lut_jocu_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_2008_biomass$Year <- ('2008')
LK_lut_jocu_2008_biomass$subregion <- ('LK')
LK_lut_jocu_2008_biomass$SPECIES_CD <- ('LUT JOCU')

LK_lut_jocu_2008_count <- count(LK_lut_jocu_2008, vars = "SPECIES_CD")

LK_lut_jocu_2008_biomass_count <- cbind(LK_lut_jocu_2008_biomass,LK_lut_jocu_2008_count)


LK_lut_jocu_2009 <- filter(LK_lut_jocu, YEAR_ == '2009')
LK_lut_jocu_2009_biomass <- summarise_at(LK_lut_jocu_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_2009_biomass$Year <- ('2009')
LK_lut_jocu_2009_biomass$subregion <- ('LK')
LK_lut_jocu_2009_biomass$SPECIES_CD <- ('LUT JOCU')

LK_lut_jocu_2009_count <- count(LK_lut_jocu_2009, vars = "SPECIES_CD")

LK_lut_jocu_2009_biomass_count <- cbind(LK_lut_jocu_2009_biomass,LK_lut_jocu_2009_count)


LK_lut_jocu_2010 <- filter(LK_lut_jocu, YEAR_ == '2010')
LK_lut_jocu_2010_biomass <- summarise_at(LK_lut_jocu_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_2010_biomass$Year <- ('2010')
LK_lut_jocu_2010_biomass$subregion <- ('LK')
LK_lut_jocu_2010_biomass$SPECIES_CD <- ('LUT JOCU')

LK_lut_jocu_2010_count <- count(LK_lut_jocu_2010, vars = "SPECIES_CD")

LK_lut_jocu_2010_biomass_count <- cbind(LK_lut_jocu_2010_biomass,LK_lut_jocu_2010_count)


LK_lut_jocu_2011 <- filter(LK_lut_jocu, YEAR_ == '2011')
LK_lut_jocu_2011_biomass <- summarise_at(LK_lut_jocu_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_2011_biomass$Year <- ('2011')
LK_lut_jocu_2011_biomass$subregion <- ('LK')
LK_lut_jocu_2011_biomass$SPECIES_CD <- ('LUT JOCU')

LK_lut_jocu_2011_count <- count(LK_lut_jocu_2011, vars = "SPECIES_CD")

LK_lut_jocu_2011_biomass_count <- cbind(LK_lut_jocu_2011_biomass,LK_lut_jocu_2011_count)


LK_lut_jocu_2012 <- filter(LK_lut_jocu, YEAR_ == '2012')
LK_lut_jocu_2012_biomass <- summarise_at(LK_lut_jocu_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_2012_biomass$Year <- ('2012')
LK_lut_jocu_2012_biomass$subregion <- ('LK')
LK_lut_jocu_2012_biomass$SPECIES_CD <- ('LUT JOCU')

LK_lut_jocu_2012_count <- count(LK_lut_jocu_2012, vars = "SPECIES_CD")

LK_lut_jocu_2012_biomass_count <- cbind(LK_lut_jocu_2012_biomass,LK_lut_jocu_2012_count)


LK_lut_jocu_2014 <- filter(LK_lut_jocu, YEAR_ == '2014')
LK_lut_jocu_2014_biomass <- summarise_at(LK_lut_jocu_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_2014_biomass$Year <- ('2014')
LK_lut_jocu_2014_biomass$subregion <- ('LK')
LK_lut_jocu_2014_biomass$SPECIES_CD <- ('LUT JOCU')

LK_lut_jocu_2014_count <- count(LK_lut_jocu_2014, vars = "SPECIES_CD")

LK_lut_jocu_2014_biomass_count <- cbind(LK_lut_jocu_2014_biomass,LK_lut_jocu_2014_count)


LK_lut_jocu_2016 <- filter(LK_lut_jocu, YEAR_ == '2016')
LK_lut_jocu_2016_biomass <- summarise_at(LK_lut_jocu_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_2016_biomass$Year <- ('2016')
LK_lut_jocu_2016_biomass$subregion <- ('LK')
LK_lut_jocu_2016_biomass$SPECIES_CD <- ('LUT JOCU')

LK_lut_jocu_2016_count <- count(LK_lut_jocu_2016, vars = "SPECIES_CD")

LK_lut_jocu_2016_biomass_count <- cbind(LK_lut_jocu_2016_biomass,LK_lut_jocu_2016_count)


LK_lut_jocu_2018 <- filter(LK_lut_jocu, YEAR_ == '2018')
LK_lut_jocu_2018_biomass <- summarise_at(LK_lut_jocu_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_jocu_2018_biomass$Year <- ('2018')
LK_lut_jocu_2018_biomass$subregion <- ('LK')
LK_lut_jocu_2018_biomass$SPECIES_CD <- ('LUT JOCU')

LK_lut_jocu_2018_count <- count(LK_lut_jocu_2018, vars = "SPECIES_CD")

LK_lut_jocu_2018_biomass_count <- cbind(LK_lut_jocu_2018_biomass,LK_lut_jocu_2018_count)


LK_lut_jocu_all <- rbind(LK_lut_jocu_1999_biomass_count,LK_lut_jocu_2000_biomass_count,LK_lut_jocu_2001_biomass_count,LK_lut_jocu_2002_biomass_count,LK_lut_jocu_2003_biomass_count,
                         LK_lut_jocu_2004_biomass_count,LK_lut_jocu_2005_biomass_count,LK_lut_jocu_2006_biomass_count,LK_lut_jocu_2007_biomass_count,
                         LK_lut_jocu_2008_biomass_count,LK_lut_jocu_2009_biomass_count,LK_lut_jocu_2011_biomass_count,
                        LK_lut_jocu_2014_biomass_count,LK_lut_jocu_2016_biomass_count,LK_lut_jocu_2018_biomass_count)

LK_lut_jocu_all$vars <- NULL





LK_lut_maho <- filter(LK_snapper, SPECIES_CD == "LUT MAHO")
unique(LK_lut_maho$YEAR_)

LK_lut_maho_1999 <- filter(LK_lut_maho, YEAR_ == '1999')
LK_lut_maho_1999_biomass <- summarise_at(LK_lut_maho_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_1999_biomass$Year <- ('1999')
LK_lut_maho_1999_biomass$subregion <- ('LK')
LK_lut_maho_1999_biomass$SPECIES_CD <- ('LUT MAHO')

LK_lut_maho_1999_count <- count(LK_lut_maho_1999, vars = "SPECIES_CD")

LK_lut_maho_1999_biomass_count <- cbind(LK_lut_maho_1999_biomass,LK_lut_maho_1999_count)



LK_lut_maho_2000 <- filter(LK_lut_maho, YEAR_ == '2000')
LK_lut_maho_2000_biomass <- summarise_at(LK_lut_maho_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_2000_biomass$Year <- ('2000')
LK_lut_maho_2000_biomass$subregion <- ('LK')
LK_lut_maho_2000_biomass$SPECIES_CD <- ('LUT MAHO')

LK_lut_maho_2000_count <- count(LK_lut_maho_2000, vars = "SPECIES_CD")

LK_lut_maho_2000_biomass_count <- cbind(LK_lut_maho_2000_biomass,LK_lut_maho_2000_count)

LK_lut_maho_2001 <- filter(LK_lut_maho, YEAR_ == '2001')
LK_lut_maho_2001_biomass <- summarise_at(LK_lut_maho_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_2001_biomass$Year <- ('2001')
LK_lut_maho_2001_biomass$subregion <- ('LK')
LK_lut_maho_2001_biomass$SPECIES_CD <- ('LUT MAHO')

LK_lut_maho_2001_count <- count(LK_lut_maho_2001, vars = "SPECIES_CD")

LK_lut_maho_2001_biomass_count <- cbind(LK_lut_maho_2001_biomass,LK_lut_maho_2001_count)


LK_lut_maho_2002 <- filter(LK_lut_maho, YEAR_ == '2002')
LK_lut_maho_2002_biomass <- summarise_at(LK_lut_maho_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_2002_biomass$Year <- ('2002')
LK_lut_maho_2002_biomass$subregion <- ('LK')
LK_lut_maho_2002_biomass$SPECIES_CD <- ('LUT MAHO')

LK_lut_maho_2002_count <- count(LK_lut_maho_2002, vars = "SPECIES_CD")

LK_lut_maho_2002_biomass_count <- cbind(LK_lut_maho_2002_biomass,LK_lut_maho_2002_count)


LK_lut_maho_2003 <- filter(LK_lut_maho, YEAR_ == '2003')
LK_lut_maho_2003_biomass <- summarise_at(LK_lut_maho_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_2003_biomass$Year <- ('2003')
LK_lut_maho_2003_biomass$subregion <- ('LK')
LK_lut_maho_2003_biomass$SPECIES_CD <- ('LUT MAHO')

LK_lut_maho_2003_count <- count(LK_lut_maho_2003, vars = "SPECIES_CD")

LK_lut_maho_2003_biomass_count <- cbind(LK_lut_maho_2003_biomass,LK_lut_maho_2003_count)


LK_lut_maho_2004 <- filter(LK_lut_maho, YEAR_ == '2004')
LK_lut_maho_2004_biomass <- summarise_at(LK_lut_maho_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_2004_biomass$Year <- ('2004')
LK_lut_maho_2004_biomass$subregion <- ('LK')
LK_lut_maho_2004_biomass$SPECIES_CD <- ('LUT MAHO')

LK_lut_maho_2004_count <- count(LK_lut_maho_2004, vars = "SPECIES_CD")

LK_lut_maho_2004_biomass_count <- cbind(LK_lut_maho_2004_biomass,LK_lut_maho_2004_count)


LK_lut_maho_2005 <- filter(LK_lut_maho, YEAR_ == '2005')
LK_lut_maho_2005_biomass <- summarise_at(LK_lut_maho_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_2005_biomass$Year <- ('2005')
LK_lut_maho_2005_biomass$subregion <- ('LK')
LK_lut_maho_2005_biomass$SPECIES_CD <- ('LUT MAHO')

LK_lut_maho_2005_count <- count(LK_lut_maho_2005, vars = "SPECIES_CD")

LK_lut_maho_2005_biomass_count <- cbind(LK_lut_maho_2005_biomass,LK_lut_maho_2005_count)


LK_lut_maho_2006 <- filter(LK_lut_maho, YEAR_ == '2006')
LK_lut_maho_2006_biomass <- summarise_at(LK_lut_maho_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_2006_biomass$Year <- ('2006')
LK_lut_maho_2006_biomass$subregion <- ('LK')
LK_lut_maho_2006_biomass$SPECIES_CD <- ('LUT MAHO')


LK_lut_maho_2006_count <- count(LK_lut_maho_2006, vars = "SPECIES_CD")

LK_lut_maho_2006_biomass_count <- cbind(LK_lut_maho_2006_biomass,LK_lut_maho_2006_count)


LK_lut_maho_2007 <- filter(LK_lut_maho, YEAR_ == '2007')
LK_lut_maho_2007_biomass <- summarise_at(LK_lut_maho_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_2007_biomass$Year <- ('2007')
LK_lut_maho_2007_biomass$subregion <- ('LK')
LK_lut_maho_2007_biomass$SPECIES_CD <- ('LUT MAHO')

LK_lut_maho_2007_count <- count(LK_lut_maho_2007, vars = "SPECIES_CD")

LK_lut_maho_2007_biomass_count <- cbind(LK_lut_maho_2007_biomass,LK_lut_maho_2007_count)


LK_lut_maho_2008 <- filter(LK_lut_maho, YEAR_ == '2008')
LK_lut_maho_2008_biomass <- summarise_at(LK_lut_maho_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_2008_biomass$Year <- ('2008')
LK_lut_maho_2008_biomass$subregion <- ('LK')
LK_lut_maho_2008_biomass$SPECIES_CD <- ('LUT MAHO')

LK_lut_maho_2008_count <- count(LK_lut_maho_2008, vars = "SPECIES_CD")

LK_lut_maho_2008_biomass_count <- cbind(LK_lut_maho_2008_biomass,LK_lut_maho_2008_count)


LK_lut_maho_2009 <- filter(LK_lut_maho, YEAR_ == '2009')
LK_lut_maho_2009_biomass <- summarise_at(LK_lut_maho_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_2009_biomass$Year <- ('2009')
LK_lut_maho_2009_biomass$subregion <- ('LK')
LK_lut_maho_2009_biomass$SPECIES_CD <- ('LUT MAHO')

LK_lut_maho_2009_count <- count(LK_lut_maho_2009, vars = "SPECIES_CD")

LK_lut_maho_2009_biomass_count <- cbind(LK_lut_maho_2009_biomass,LK_lut_maho_2009_count)


LK_lut_maho_2010 <- filter(LK_lut_maho, YEAR_ == '2010')
LK_lut_maho_2010_biomass <- summarise_at(LK_lut_maho_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_2010_biomass$Year <- ('2010')
LK_lut_maho_2010_biomass$subregion <- ('LK')
LK_lut_maho_2010_biomass$SPECIES_CD <- ('LUT MAHO')

LK_lut_maho_2010_count <- count(LK_lut_maho_2010, vars = "SPECIES_CD")

LK_lut_maho_2010_biomass_count <- cbind(LK_lut_maho_2010_biomass,LK_lut_maho_2010_count)


LK_lut_maho_2011 <- filter(LK_lut_maho, YEAR_ == '2011')
LK_lut_maho_2011_biomass <- summarise_at(LK_lut_maho_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_2011_biomass$Year <- ('2011')
LK_lut_maho_2011_biomass$subregion <- ('LK')
LK_lut_maho_2011_biomass$SPECIES_CD <- ('LUT MAHO')

LK_lut_maho_2011_count <- count(LK_lut_maho_2011, vars = "SPECIES_CD")

LK_lut_maho_2011_biomass_count <- cbind(LK_lut_maho_2011_biomass,LK_lut_maho_2011_count)


LK_lut_maho_2012 <- filter(LK_lut_maho, YEAR_ == '2012')
LK_lut_maho_2012_biomass <- summarise_at(LK_lut_maho_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_2012_biomass$Year <- ('2012')
LK_lut_maho_2012_biomass$subregion <- ('LK')
LK_lut_maho_2012_biomass$SPECIES_CD <- ('LUT MAHO')

LK_lut_maho_2012_count <- count(LK_lut_maho_2012, vars = "SPECIES_CD")

LK_lut_maho_2012_biomass_count <- cbind(LK_lut_maho_2012_biomass,LK_lut_maho_2012_count)


LK_lut_maho_2014 <- filter(LK_lut_maho, YEAR_ == '2014')
LK_lut_maho_2014_biomass <- summarise_at(LK_lut_maho_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_2014_biomass$Year <- ('2014')
LK_lut_maho_2014_biomass$subregion <- ('LK')
LK_lut_maho_2014_biomass$SPECIES_CD <- ('LUT MAHO')

LK_lut_maho_2014_count <- count(LK_lut_maho_2014, vars = "SPECIES_CD")

LK_lut_maho_2014_biomass_count <- cbind(LK_lut_maho_2014_biomass,LK_lut_maho_2014_count)


LK_lut_maho_2016 <- filter(LK_lut_maho, YEAR_ == '2016')
LK_lut_maho_2016_biomass <- summarise_at(LK_lut_maho_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_2016_biomass$Year <- ('2016')
LK_lut_maho_2016_biomass$subregion <- ('LK')
LK_lut_maho_2016_biomass$SPECIES_CD <- ('LUT MAHO')

LK_lut_maho_2016_count <- count(LK_lut_maho_2016, vars = "SPECIES_CD")

LK_lut_maho_2016_biomass_count <- cbind(LK_lut_maho_2016_biomass,LK_lut_maho_2016_count)


LK_lut_maho_2018 <- filter(LK_lut_maho, YEAR_ == '2018')
LK_lut_maho_2018_biomass <- summarise_at(LK_lut_maho_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_maho_2018_biomass$Year <- ('2018')
LK_lut_maho_2018_biomass$subregion <- ('LK')
LK_lut_maho_2018_biomass$SPECIES_CD <- ('LUT MAHO')

LK_lut_maho_2018_count <- count(LK_lut_maho_2018, vars = "SPECIES_CD")

LK_lut_maho_2018_biomass_count <- cbind(LK_lut_maho_2018_biomass,LK_lut_maho_2018_count)


LK_lut_maho_all <- rbind(LK_lut_maho_1999_biomass_count,LK_lut_maho_2000_biomass_count,LK_lut_maho_2001_biomass_count,LK_lut_maho_2002_biomass_count,LK_lut_maho_2003_biomass_count,
                         LK_lut_maho_2004_biomass_count,LK_lut_maho_2005_biomass_count,LK_lut_maho_2006_biomass_count,LK_lut_maho_2007_biomass_count,
                         LK_lut_maho_2008_biomass_count,LK_lut_maho_2009_biomass_count,LK_lut_maho_2011_biomass_count,
                         LK_lut_maho_2014_biomass_count,LK_lut_maho_2016_biomass_count,LK_lut_maho_2018_biomass_count)

LK_lut_maho_all$vars <- NULL





LK_lut_spe <- filter(LK_snapper, SPECIES_CD == "LUT SPE.")
unique(LK_lut_spe$YEAR_)


LK_lut_spe_2010 <- filter(LK_lut_spe, YEAR_ == '2010')
LK_lut_spe_2010_biomass <- summarise_at(LK_lut_spe_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_spe_2010_biomass$Year <- ('2010')
LK_lut_spe_2010_biomass$subregion <- ('LK')
LK_lut_spe_2010_biomass$SPECIES_CD <- ('LUT SPE.')

LK_lut_spe_2010_count <- count(LK_lut_spe_2010, vars = "SPECIES_CD")

LK_lut_spe_2010_biomass_count <- cbind(LK_lut_spe_2010_biomass,LK_lut_spe_2010_count)




LK_lut_spe_2018 <- filter(LK_lut_spe, YEAR_ == '2018')
LK_lut_spe_2018_biomass <- summarise_at(LK_lut_spe_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_spe_2018_biomass$Year <- ('2018')
LK_lut_spe_2018_biomass$subregion <- ('LK')
LK_lut_spe_2018_biomass$SPECIES_CD <- ('LUT SPE.')

LK_lut_spe_2018_count <- count(LK_lut_spe_2018, vars = "SPECIES_CD")

LK_lut_spe_2018_biomass_count <- cbind(LK_lut_spe_2018_biomass,LK_lut_spe_2018_count)


LK_lut_spe_all <- rbind(LK_lut_spe_2010_biomass_count,LK_lut_spe_2018_biomass_count)
                        
LK_lut_spe_all$vars <- NULL




LK_lut_syna <- filter(LK_snapper, SPECIES_CD == "LUT SYNA")
unique(LK_lut_syna$YEAR_)

LK_lut_syna_1999 <- filter(LK_lut_syna, YEAR_ == '1999')
LK_lut_syna_1999_biomass <- summarise_at(LK_lut_syna_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_1999_biomass$Year <- ('1999')
LK_lut_syna_1999_biomass$subregion <- ('LK')
LK_lut_syna_1999_biomass$SPECIES_CD <- ('LUT SYNA')

LK_lut_syna_1999_count <- count(LK_lut_syna_1999, vars = "SPECIES_CD")

LK_lut_syna_1999_biomass_count <- cbind(LK_lut_syna_1999_biomass,LK_lut_syna_1999_count)



LK_lut_syna_2000 <- filter(LK_lut_syna, YEAR_ == '2000')
LK_lut_syna_2000_biomass <- summarise_at(LK_lut_syna_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_2000_biomass$Year <- ('2000')
LK_lut_syna_2000_biomass$subregion <- ('LK')
LK_lut_syna_2000_biomass$SPECIES_CD <- ('LUT SYNA')

LK_lut_syna_2000_count <- count(LK_lut_syna_2000, vars = "SPECIES_CD")

LK_lut_syna_2000_biomass_count <- cbind(LK_lut_syna_2000_biomass,LK_lut_syna_2000_count)

LK_lut_syna_2001 <- filter(LK_lut_syna, YEAR_ == '2001')
LK_lut_syna_2001_biomass <- summarise_at(LK_lut_syna_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_2001_biomass$Year <- ('2001')
LK_lut_syna_2001_biomass$subregion <- ('LK')
LK_lut_syna_2001_biomass$SPECIES_CD <- ('LUT SYNA')

LK_lut_syna_2001_count <- count(LK_lut_syna_2001, vars = "SPECIES_CD")

LK_lut_syna_2001_biomass_count <- cbind(LK_lut_syna_2001_biomass,LK_lut_syna_2001_count)


LK_lut_syna_2002 <- filter(LK_lut_syna, YEAR_ == '2002')
LK_lut_syna_2002_biomass <- summarise_at(LK_lut_syna_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_2002_biomass$Year <- ('2002')
LK_lut_syna_2002_biomass$subregion <- ('LK')
LK_lut_syna_2002_biomass$SPECIES_CD <- ('LUT SYNA')

LK_lut_syna_2002_count <- count(LK_lut_syna_2002, vars = "SPECIES_CD")

LK_lut_syna_2002_biomass_count <- cbind(LK_lut_syna_2002_biomass,LK_lut_syna_2002_count)


LK_lut_syna_2003 <- filter(LK_lut_syna, YEAR_ == '2003')
LK_lut_syna_2003_biomass <- summarise_at(LK_lut_syna_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_2003_biomass$Year <- ('2003')
LK_lut_syna_2003_biomass$subregion <- ('LK')
LK_lut_syna_2003_biomass$SPECIES_CD <- ('LUT SYNA')

LK_lut_syna_2003_count <- count(LK_lut_syna_2003, vars = "SPECIES_CD")

LK_lut_syna_2003_biomass_count <- cbind(LK_lut_syna_2003_biomass,LK_lut_syna_2003_count)


LK_lut_syna_2004 <- filter(LK_lut_syna, YEAR_ == '2004')
LK_lut_syna_2004_biomass <- summarise_at(LK_lut_syna_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_2004_biomass$Year <- ('2004')
LK_lut_syna_2004_biomass$subregion <- ('LK')
LK_lut_syna_2004_biomass$SPECIES_CD <- ('LUT SYNA')

LK_lut_syna_2004_count <- count(LK_lut_syna_2004, vars = "SPECIES_CD")

LK_lut_syna_2004_biomass_count <- cbind(LK_lut_syna_2004_biomass,LK_lut_syna_2004_count)


LK_lut_syna_2005 <- filter(LK_lut_syna, YEAR_ == '2005')
LK_lut_syna_2005_biomass <- summarise_at(LK_lut_syna_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_2005_biomass$Year <- ('2005')
LK_lut_syna_2005_biomass$subregion <- ('LK')
LK_lut_syna_2005_biomass$SPECIES_CD <- ('LUT SYNA')

LK_lut_syna_2005_count <- count(LK_lut_syna_2005, vars = "SPECIES_CD")

LK_lut_syna_2005_biomass_count <- cbind(LK_lut_syna_2005_biomass,LK_lut_syna_2005_count)


LK_lut_syna_2006 <- filter(LK_lut_syna, YEAR_ == '2006')
LK_lut_syna_2006_biomass <- summarise_at(LK_lut_syna_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_2006_biomass$Year <- ('2006')
LK_lut_syna_2006_biomass$subregion <- ('LK')
LK_lut_syna_2006_biomass$SPECIES_CD <- ('LUT SYNA')


LK_lut_syna_2006_count <- count(LK_lut_syna_2006, vars = "SPECIES_CD")

LK_lut_syna_2006_biomass_count <- cbind(LK_lut_syna_2006_biomass,LK_lut_syna_2006_count)


LK_lut_syna_2007 <- filter(LK_lut_syna, YEAR_ == '2007')
LK_lut_syna_2007_biomass <- summarise_at(LK_lut_syna_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_2007_biomass$Year <- ('2007')
LK_lut_syna_2007_biomass$subregion <- ('LK')
LK_lut_syna_2007_biomass$SPECIES_CD <- ('LUT SYNA')

LK_lut_syna_2007_count <- count(LK_lut_syna_2007, vars = "SPECIES_CD")

LK_lut_syna_2007_biomass_count <- cbind(LK_lut_syna_2007_biomass,LK_lut_syna_2007_count)


LK_lut_syna_2008 <- filter(LK_lut_syna, YEAR_ == '2008')
LK_lut_syna_2008_biomass <- summarise_at(LK_lut_syna_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_2008_biomass$Year <- ('2008')
LK_lut_syna_2008_biomass$subregion <- ('LK')
LK_lut_syna_2008_biomass$SPECIES_CD <- ('LUT SYNA')

LK_lut_syna_2008_count <- count(LK_lut_syna_2008, vars = "SPECIES_CD")

LK_lut_syna_2008_biomass_count <- cbind(LK_lut_syna_2008_biomass,LK_lut_syna_2008_count)


LK_lut_syna_2009 <- filter(LK_lut_syna, YEAR_ == '2009')
LK_lut_syna_2009_biomass <- summarise_at(LK_lut_syna_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_2009_biomass$Year <- ('2009')
LK_lut_syna_2009_biomass$subregion <- ('LK')
LK_lut_syna_2009_biomass$SPECIES_CD <- ('LUT SYNA')

LK_lut_syna_2009_count <- count(LK_lut_syna_2009, vars = "SPECIES_CD")

LK_lut_syna_2009_biomass_count <- cbind(LK_lut_syna_2009_biomass,LK_lut_syna_2009_count)


LK_lut_syna_2010 <- filter(LK_lut_syna, YEAR_ == '2010')
LK_lut_syna_2010_biomass <- summarise_at(LK_lut_syna_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_2010_biomass$Year <- ('2010')
LK_lut_syna_2010_biomass$subregion <- ('LK')
LK_lut_syna_2010_biomass$SPECIES_CD <- ('LUT SYNA')

LK_lut_syna_2010_count <- count(LK_lut_syna_2010, vars = "SPECIES_CD")

LK_lut_syna_2010_biomass_count <- cbind(LK_lut_syna_2010_biomass,LK_lut_syna_2010_count)


LK_lut_syna_2011 <- filter(LK_lut_syna, YEAR_ == '2011')
LK_lut_syna_2011_biomass <- summarise_at(LK_lut_syna_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_2011_biomass$Year <- ('2011')
LK_lut_syna_2011_biomass$subregion <- ('LK')
LK_lut_syna_2011_biomass$SPECIES_CD <- ('LUT SYNA')

LK_lut_syna_2011_count <- count(LK_lut_syna_2011, vars = "SPECIES_CD")

LK_lut_syna_2011_biomass_count <- cbind(LK_lut_syna_2011_biomass,LK_lut_syna_2011_count)


LK_lut_syna_2012 <- filter(LK_lut_syna, YEAR_ == '2012')
LK_lut_syna_2012_biomass <- summarise_at(LK_lut_syna_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_2012_biomass$Year <- ('2012')
LK_lut_syna_2012_biomass$subregion <- ('LK')
LK_lut_syna_2012_biomass$SPECIES_CD <- ('LUT SYNA')

LK_lut_syna_2012_count <- count(LK_lut_syna_2012, vars = "SPECIES_CD")

LK_lut_syna_2012_biomass_count <- cbind(LK_lut_syna_2012_biomass,LK_lut_syna_2012_count)


LK_lut_syna_2014 <- filter(LK_lut_syna, YEAR_ == '2014')
LK_lut_syna_2014_biomass <- summarise_at(LK_lut_syna_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_2014_biomass$Year <- ('2014')
LK_lut_syna_2014_biomass$subregion <- ('LK')
LK_lut_syna_2014_biomass$SPECIES_CD <- ('LUT SYNA')

LK_lut_syna_2014_count <- count(LK_lut_syna_2014, vars = "SPECIES_CD")

LK_lut_syna_2014_biomass_count <- cbind(LK_lut_syna_2014_biomass,LK_lut_syna_2014_count)


LK_lut_syna_2016 <- filter(LK_lut_syna, YEAR_ == '2016')
LK_lut_syna_2016_biomass <- summarise_at(LK_lut_syna_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_2016_biomass$Year <- ('2016')
LK_lut_syna_2016_biomass$subregion <- ('LK')
LK_lut_syna_2016_biomass$SPECIES_CD <- ('LUT SYNA')

LK_lut_syna_2016_count <- count(LK_lut_syna_2016, vars = "SPECIES_CD")

LK_lut_syna_2016_biomass_count <- cbind(LK_lut_syna_2016_biomass,LK_lut_syna_2016_count)


LK_lut_syna_2018 <- filter(LK_lut_syna, YEAR_ == '2018')
LK_lut_syna_2018_biomass <- summarise_at(LK_lut_syna_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_lut_syna_2018_biomass$Year <- ('2018')
LK_lut_syna_2018_biomass$subregion <- ('LK')
LK_lut_syna_2018_biomass$SPECIES_CD <- ('LUT SYNA')

LK_lut_syna_2018_count <- count(LK_lut_syna_2018, vars = "SPECIES_CD")

LK_lut_syna_2018_biomass_count <- cbind(LK_lut_syna_2018_biomass,LK_lut_syna_2018_count)


LK_lut_syna_all <- rbind(LK_lut_syna_1999_biomass_count,LK_lut_syna_2000_biomass_count,LK_lut_syna_2001_biomass_count,LK_lut_syna_2002_biomass_count,LK_lut_syna_2003_biomass_count,
                         LK_lut_syna_2005_biomass_count,LK_lut_syna_2006_biomass_count,LK_lut_syna_2007_biomass_count,
                         LK_lut_syna_2008_biomass_count,LK_lut_syna_2009_biomass_count,LK_lut_syna_2010_biomass_count,LK_lut_syna_2011_biomass_count,
                         LK_lut_syna_2012_biomass_count,LK_lut_syna_2014_biomass_count,LK_lut_syna_2016_biomass_count,LK_lut_syna_2018_biomass_count)

LK_lut_syna_all$vars <- NULL





LK_ocy_chry <- filter(LK_snapper, SPECIES_CD == "OCY CHRY")
unique(LK_ocy_chry$YEAR_)

LK_ocy_chry_1999 <- filter(LK_ocy_chry, YEAR_ == '1999')
LK_ocy_chry_1999_biomass <- summarise_at(LK_ocy_chry_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_1999_biomass$Year <- ('1999')
LK_ocy_chry_1999_biomass$subregion <- ('LK')
LK_ocy_chry_1999_biomass$SPECIES_CD <- ('OCY CHRY')

LK_ocy_chry_1999_count <- count(LK_ocy_chry_1999, vars = "SPECIES_CD")

LK_ocy_chry_1999_biomass_count <- cbind(LK_ocy_chry_1999_biomass,LK_ocy_chry_1999_count)



LK_ocy_chry_2000 <- filter(LK_ocy_chry, YEAR_ == '2000')
LK_ocy_chry_2000_biomass <- summarise_at(LK_ocy_chry_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_2000_biomass$Year <- ('2000')
LK_ocy_chry_2000_biomass$subregion <- ('LK')
LK_ocy_chry_2000_biomass$SPECIES_CD <- ('OCY CHRY')

LK_ocy_chry_2000_count <- count(LK_ocy_chry_2000, vars = "SPECIES_CD")

LK_ocy_chry_2000_biomass_count <- cbind(LK_ocy_chry_2000_biomass,LK_ocy_chry_2000_count)

LK_ocy_chry_2001 <- filter(LK_ocy_chry, YEAR_ == '2001')
LK_ocy_chry_2001_biomass <- summarise_at(LK_ocy_chry_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_2001_biomass$Year <- ('2001')
LK_ocy_chry_2001_biomass$subregion <- ('LK')
LK_ocy_chry_2001_biomass$SPECIES_CD <- ('OCY CHRY')

LK_ocy_chry_2001_count <- count(LK_ocy_chry_2001, vars = "SPECIES_CD")

LK_ocy_chry_2001_biomass_count <- cbind(LK_ocy_chry_2001_biomass,LK_ocy_chry_2001_count)


LK_ocy_chry_2002 <- filter(LK_ocy_chry, YEAR_ == '2002')
LK_ocy_chry_2002_biomass <- summarise_at(LK_ocy_chry_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_2002_biomass$Year <- ('2002')
LK_ocy_chry_2002_biomass$subregion <- ('LK')
LK_ocy_chry_2002_biomass$SPECIES_CD <- ('OCY CHRY')

LK_ocy_chry_2002_count <- count(LK_ocy_chry_2002, vars = "SPECIES_CD")

LK_ocy_chry_2002_biomass_count <- cbind(LK_ocy_chry_2002_biomass,LK_ocy_chry_2002_count)


LK_ocy_chry_2003 <- filter(LK_ocy_chry, YEAR_ == '2003')
LK_ocy_chry_2003_biomass <- summarise_at(LK_ocy_chry_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_2003_biomass$Year <- ('2003')
LK_ocy_chry_2003_biomass$subregion <- ('LK')
LK_ocy_chry_2003_biomass$SPECIES_CD <- ('OCY CHRY')

LK_ocy_chry_2003_count <- count(LK_ocy_chry_2003, vars = "SPECIES_CD")

LK_ocy_chry_2003_biomass_count <- cbind(LK_ocy_chry_2003_biomass,LK_ocy_chry_2003_count)


LK_ocy_chry_2004 <- filter(LK_ocy_chry, YEAR_ == '2004')
LK_ocy_chry_2004_biomass <- summarise_at(LK_ocy_chry_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_2004_biomass$Year <- ('2004')
LK_ocy_chry_2004_biomass$subregion <- ('LK')
LK_ocy_chry_2004_biomass$SPECIES_CD <- ('OCY CHRY')

LK_ocy_chry_2004_count <- count(LK_ocy_chry_2004, vars = "SPECIES_CD")

LK_ocy_chry_2004_biomass_count <- cbind(LK_ocy_chry_2004_biomass,LK_ocy_chry_2004_count)


LK_ocy_chry_2005 <- filter(LK_ocy_chry, YEAR_ == '2005')
LK_ocy_chry_2005_biomass <- summarise_at(LK_ocy_chry_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_2005_biomass$Year <- ('2005')
LK_ocy_chry_2005_biomass$subregion <- ('LK')
LK_ocy_chry_2005_biomass$SPECIES_CD <- ('OCY CHRY')

LK_ocy_chry_2005_count <- count(LK_ocy_chry_2005, vars = "SPECIES_CD")

LK_ocy_chry_2005_biomass_count <- cbind(LK_ocy_chry_2005_biomass,LK_ocy_chry_2005_count)


LK_ocy_chry_2006 <- filter(LK_ocy_chry, YEAR_ == '2006')
LK_ocy_chry_2006_biomass <- summarise_at(LK_ocy_chry_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_2006_biomass$Year <- ('2006')
LK_ocy_chry_2006_biomass$subregion <- ('LK')
LK_ocy_chry_2006_biomass$SPECIES_CD <- ('OCY CHRY')


LK_ocy_chry_2006_count <- count(LK_ocy_chry_2006, vars = "SPECIES_CD")

LK_ocy_chry_2006_biomass_count <- cbind(LK_ocy_chry_2006_biomass,LK_ocy_chry_2006_count)


LK_ocy_chry_2007 <- filter(LK_ocy_chry, YEAR_ == '2007')
LK_ocy_chry_2007_biomass <- summarise_at(LK_ocy_chry_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_2007_biomass$Year <- ('2007')
LK_ocy_chry_2007_biomass$subregion <- ('LK')
LK_ocy_chry_2007_biomass$SPECIES_CD <- ('OCY CHRY')

LK_ocy_chry_2007_count <- count(LK_ocy_chry_2007, vars = "SPECIES_CD")

LK_ocy_chry_2007_biomass_count <- cbind(LK_ocy_chry_2007_biomass,LK_ocy_chry_2007_count)


LK_ocy_chry_2008 <- filter(LK_ocy_chry, YEAR_ == '2008')
LK_ocy_chry_2008_biomass <- summarise_at(LK_ocy_chry_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_2008_biomass$Year <- ('2008')
LK_ocy_chry_2008_biomass$subregion <- ('LK')
LK_ocy_chry_2008_biomass$SPECIES_CD <- ('OCY CHRY')

LK_ocy_chry_2008_count <- count(LK_ocy_chry_2008, vars = "SPECIES_CD")

LK_ocy_chry_2008_biomass_count <- cbind(LK_ocy_chry_2008_biomass,LK_ocy_chry_2008_count)


LK_ocy_chry_2009 <- filter(LK_ocy_chry, YEAR_ == '2009')
LK_ocy_chry_2009_biomass <- summarise_at(LK_ocy_chry_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_2009_biomass$Year <- ('2009')
LK_ocy_chry_2009_biomass$subregion <- ('LK')
LK_ocy_chry_2009_biomass$SPECIES_CD <- ('OCY CHRY')

LK_ocy_chry_2009_count <- count(LK_ocy_chry_2009, vars = "SPECIES_CD")

LK_ocy_chry_2009_biomass_count <- cbind(LK_ocy_chry_2009_biomass,LK_ocy_chry_2009_count)


LK_ocy_chry_2010 <- filter(LK_ocy_chry, YEAR_ == '2010')
LK_ocy_chry_2010_biomass <- summarise_at(LK_ocy_chry_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_2010_biomass$Year <- ('2010')
LK_ocy_chry_2010_biomass$subregion <- ('LK')
LK_ocy_chry_2010_biomass$SPECIES_CD <- ('OCY CHRY')

LK_ocy_chry_2010_count <- count(LK_ocy_chry_2010, vars = "SPECIES_CD")

LK_ocy_chry_2010_biomass_count <- cbind(LK_ocy_chry_2010_biomass,LK_ocy_chry_2010_count)


LK_ocy_chry_2011 <- filter(LK_ocy_chry, YEAR_ == '2011')
LK_ocy_chry_2011_biomass <- summarise_at(LK_ocy_chry_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_2011_biomass$Year <- ('2011')
LK_ocy_chry_2011_biomass$subregion <- ('LK')
LK_ocy_chry_2011_biomass$SPECIES_CD <- ('OCY CHRY')

LK_ocy_chry_2011_count <- count(LK_ocy_chry_2011, vars = "SPECIES_CD")

LK_ocy_chry_2011_biomass_count <- cbind(LK_ocy_chry_2011_biomass,LK_ocy_chry_2011_count)


LK_ocy_chry_2012 <- filter(LK_ocy_chry, YEAR_ == '2012')
LK_ocy_chry_2012_biomass <- summarise_at(LK_ocy_chry_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_2012_biomass$Year <- ('2012')
LK_ocy_chry_2012_biomass$subregion <- ('LK')
LK_ocy_chry_2012_biomass$SPECIES_CD <- ('OCY CHRY')

LK_ocy_chry_2012_count <- count(LK_ocy_chry_2012, vars = "SPECIES_CD")

LK_ocy_chry_2012_biomass_count <- cbind(LK_ocy_chry_2012_biomass,LK_ocy_chry_2012_count)


LK_ocy_chry_2014 <- filter(LK_ocy_chry, YEAR_ == '2014')
LK_ocy_chry_2014_biomass <- summarise_at(LK_ocy_chry_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_2014_biomass$Year <- ('2014')
LK_ocy_chry_2014_biomass$subregion <- ('LK')
LK_ocy_chry_2014_biomass$SPECIES_CD <- ('OCY CHRY')

LK_ocy_chry_2014_count <- count(LK_ocy_chry_2014, vars = "SPECIES_CD")

LK_ocy_chry_2014_biomass_count <- cbind(LK_ocy_chry_2014_biomass,LK_ocy_chry_2014_count)


LK_ocy_chry_2016 <- filter(LK_ocy_chry, YEAR_ == '2016')
LK_ocy_chry_2016_biomass <- summarise_at(LK_ocy_chry_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_2016_biomass$Year <- ('2016')
LK_ocy_chry_2016_biomass$subregion <- ('LK')
LK_ocy_chry_2016_biomass$SPECIES_CD <- ('OCY CHRY')

LK_ocy_chry_2016_count <- count(LK_ocy_chry_2016, vars = "SPECIES_CD")

LK_ocy_chry_2016_biomass_count <- cbind(LK_ocy_chry_2016_biomass,LK_ocy_chry_2016_count)


LK_ocy_chry_2018 <- filter(LK_ocy_chry, YEAR_ == '2018')
LK_ocy_chry_2018_biomass <- summarise_at(LK_ocy_chry_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_ocy_chry_2018_biomass$Year <- ('2018')
LK_ocy_chry_2018_biomass$subregion <- ('LK')
LK_ocy_chry_2018_biomass$SPECIES_CD <- ('OCY CHRY')

LK_ocy_chry_2018_count <- count(LK_ocy_chry_2018, vars = "SPECIES_CD")

LK_ocy_chry_2018_biomass_count <- cbind(LK_ocy_chry_2018_biomass,LK_ocy_chry_2018_count)


LK_ocy_chry_all <- rbind(LK_ocy_chry_1999_biomass_count,LK_ocy_chry_2000_biomass_count,LK_ocy_chry_2001_biomass_count,LK_ocy_chry_2002_biomass_count,LK_ocy_chry_2003_biomass_count,
                         LK_ocy_chry_2004_biomass_count,LK_ocy_chry_2005_biomass_count,LK_ocy_chry_2006_biomass_count,LK_ocy_chry_2007_biomass_count,
                         LK_ocy_chry_2008_biomass_count,LK_ocy_chry_2009_biomass_count,LK_ocy_chry_2010_biomass_count,LK_ocy_chry_2011_biomass_count,
                         LK_ocy_chry_2012_biomass_count,LK_ocy_chry_2014_biomass_count,LK_ocy_chry_2016_biomass_count,LK_ocy_chry_2018_biomass_count)

LK_ocy_chry_all$vars <- NULL


# LK_snappers_combined <- rbind(LK_lut_anal_all,LK_lut_apod_all,LK_lut_bucc_all,LK_lut_cyan_all,LK_lut_gris_all,LK_lut_jocu_all,LK_lut_maho_all,LK_lut_spe_all,LK_lut_syna_all,LK_ocy_chry_all)
# 
# #export(LK_snappers_combined,"C:/Users/cara.estes/Documents/EwE_data/LK_snappers.csv")


### MIDDLE KEYS snapper


MK_snapper <- merge(MK_snapper_grouper,snapper, by = c("SPECIES_CD"))
unique(MK_snapper$SPECIES_CD)

## "LUT ANAL" "LUT APOD" "LUT BUCC" "LUT GRIS" "LUT JOCU" "LUT MAHO" "LUT SYNA" "OCY CHRY" "RHO AURO"


MK_lut_anal <- filter(MK_snapper,SPECIES_CD == "LUT ANAL" )
unique(MK_lut_anal$YEAR_)

MK_lut_anal_1999 <- filter(MK_lut_anal, YEAR_ == '1999')
MK_lut_anal_1999_biomass <- summarise_at(MK_lut_anal_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_1999_biomass$Year <- ('1999')
MK_lut_anal_1999_biomass$subregion <- ('MK')
MK_lut_anal_1999_biomass$SPECIES_CD <- ('LUT ANAL')

MK_lut_anal_1999_count <- count(MK_lut_anal_1999, vars = "SPECIES_CD")

MK_lut_anal_1999_biomass_count <- cbind(MK_lut_anal_1999_biomass,MK_lut_anal_1999_count)


MK_lut_anal_2000 <- filter(MK_lut_anal, YEAR_ == '2000')
MK_lut_anal_2000_biomass <- summarise_at(MK_lut_anal_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_2000_biomass$Year <- ('2000')
MK_lut_anal_2000_biomass$subregion <- ('MK')
MK_lut_anal_2000_biomass$SPECIES_CD <- ('LUT ANAL')

MK_lut_anal_2000_count <- count(MK_lut_anal_2000, vars = "SPECIES_CD")

MK_lut_anal_2000_biomass_count <- cbind(MK_lut_anal_2000_biomass,MK_lut_anal_2000_count)

MK_lut_anal_2001 <- filter(MK_lut_anal, YEAR_ == '2001')
MK_lut_anal_2001_biomass <- summarise_at(MK_lut_anal_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_2001_biomass$Year <- ('2001')
MK_lut_anal_2001_biomass$subregion <- ('MK')
MK_lut_anal_2001_biomass$SPECIES_CD <- ('LUT ANAL')

MK_lut_anal_2001_count <- count(MK_lut_anal_2001, vars = "SPECIES_CD")

MK_lut_anal_2001_biomass_count <- cbind(MK_lut_anal_2001_biomass,MK_lut_anal_2001_count)


MK_lut_anal_2002 <- filter(MK_lut_anal, YEAR_ == '2002')
MK_lut_anal_2002_biomass <- summarise_at(MK_lut_anal_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_2002_biomass$Year <- ('2002')
MK_lut_anal_2002_biomass$subregion <- ('MK')
MK_lut_anal_2002_biomass$SPECIES_CD <- ('LUT ANAL')

MK_lut_anal_2002_count <- count(MK_lut_anal_2002, vars = "SPECIES_CD")

MK_lut_anal_2002_biomass_count <- cbind(MK_lut_anal_2002_biomass,MK_lut_anal_2002_count)


MK_lut_anal_2003 <- filter(MK_lut_anal, YEAR_ == '2003')
MK_lut_anal_2003_biomass <- summarise_at(MK_lut_anal_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_2003_biomass$Year <- ('2003')
MK_lut_anal_2003_biomass$subregion <- ('MK')
MK_lut_anal_2003_biomass$SPECIES_CD <- ('LUT ANAL')

MK_lut_anal_2003_count <- count(MK_lut_anal_2003, vars = "SPECIES_CD")

MK_lut_anal_2003_biomass_count <- cbind(MK_lut_anal_2003_biomass,MK_lut_anal_2003_count)


MK_lut_anal_2004 <- filter(MK_lut_anal, YEAR_ == '2004')
MK_lut_anal_2004_biomass <- summarise_at(MK_lut_anal_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_2004_biomass$Year <- ('2004')
MK_lut_anal_2004_biomass$subregion <- ('MK')
MK_lut_anal_2004_biomass$SPECIES_CD <- ('LUT ANAL')

MK_lut_anal_2004_count <- count(MK_lut_anal_2004, vars = "SPECIES_CD")

MK_lut_anal_2004_biomass_count <- cbind(MK_lut_anal_2004_biomass,MK_lut_anal_2004_count)


MK_lut_anal_2005 <- filter(MK_lut_anal, YEAR_ == '2005')
MK_lut_anal_2005_biomass <- summarise_at(MK_lut_anal_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_2005_biomass$Year <- ('2005')
MK_lut_anal_2005_biomass$subregion <- ('MK')
MK_lut_anal_2005_biomass$SPECIES_CD <- ('LUT ANAL')

MK_lut_anal_2005_count <- count(MK_lut_anal_2005, vars = "SPECIES_CD")

MK_lut_anal_2005_biomass_count <- cbind(MK_lut_anal_2005_biomass,MK_lut_anal_2005_count)


MK_lut_anal_2006 <- filter(MK_lut_anal, YEAR_ == '2006')
MK_lut_anal_2006_biomass <- summarise_at(MK_lut_anal_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_2006_biomass$Year <- ('2006')
MK_lut_anal_2006_biomass$subregion <- ('MK')
MK_lut_anal_2006_biomass$SPECIES_CD <- ('LUT ANAL')


MK_lut_anal_2006_count <- count(MK_lut_anal_2006, vars = "SPECIES_CD")

MK_lut_anal_2006_biomass_count <- cbind(MK_lut_anal_2006_biomass,MK_lut_anal_2006_count)


MK_lut_anal_2007 <- filter(MK_lut_anal, YEAR_ == '2007')
MK_lut_anal_2007_biomass <- summarise_at(MK_lut_anal_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_2007_biomass$Year <- ('2007')
MK_lut_anal_2007_biomass$subregion <- ('MK')
MK_lut_anal_2007_biomass$SPECIES_CD <- ('LUT ANAL')

MK_lut_anal_2007_count <- count(MK_lut_anal_2007, vars = "SPECIES_CD")

MK_lut_anal_2007_biomass_count <- cbind(MK_lut_anal_2007_biomass,MK_lut_anal_2007_count)


MK_lut_anal_2008 <- filter(MK_lut_anal, YEAR_ == '2008')
MK_lut_anal_2008_biomass <- summarise_at(MK_lut_anal_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_2008_biomass$Year <- ('2008')
MK_lut_anal_2008_biomass$subregion <- ('MK')
MK_lut_anal_2008_biomass$SPECIES_CD <- ('LUT ANAL')

MK_lut_anal_2008_count <- count(MK_lut_anal_2008, vars = "SPECIES_CD")

MK_lut_anal_2008_biomass_count <- cbind(MK_lut_anal_2008_biomass,MK_lut_anal_2008_count)


MK_lut_anal_2009 <- filter(MK_lut_anal, YEAR_ == '2009')
MK_lut_anal_2009_biomass <- summarise_at(MK_lut_anal_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_2009_biomass$Year <- ('2009')
MK_lut_anal_2009_biomass$subregion <- ('MK')
MK_lut_anal_2009_biomass$SPECIES_CD <- ('LUT ANAL')

MK_lut_anal_2009_count <- count(MK_lut_anal_2009, vars = "SPECIES_CD")

MK_lut_anal_2009_biomass_count <- cbind(MK_lut_anal_2009_biomass,MK_lut_anal_2009_count)


MK_lut_anal_2010 <- filter(MK_lut_anal, YEAR_ == '2010')
MK_lut_anal_2010_biomass <- summarise_at(MK_lut_anal_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_2010_biomass$Year <- ('2010')
MK_lut_anal_2010_biomass$subregion <- ('MK')
MK_lut_anal_2010_biomass$SPECIES_CD <- ('LUT ANAL')

MK_lut_anal_2010_count <- count(MK_lut_anal_2010, vars = "SPECIES_CD")

MK_lut_anal_2010_biomass_count <- cbind(MK_lut_anal_2010_biomass,MK_lut_anal_2010_count)


MK_lut_anal_2011 <- filter(MK_lut_anal, YEAR_ == '2011')
MK_lut_anal_2011_biomass <- summarise_at(MK_lut_anal_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_2011_biomass$Year <- ('2011')
MK_lut_anal_2011_biomass$subregion <- ('MK')
MK_lut_anal_2011_biomass$SPECIES_CD <- ('LUT ANAL')

MK_lut_anal_2011_count <- count(MK_lut_anal_2011, vars = "SPECIES_CD")

MK_lut_anal_2011_biomass_count <- cbind(MK_lut_anal_2011_biomass,MK_lut_anal_2011_count)


MK_lut_anal_2012 <- filter(MK_lut_anal, YEAR_ == '2012')
MK_lut_anal_2012_biomass <- summarise_at(MK_lut_anal_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_2012_biomass$Year <- ('2012')
MK_lut_anal_2012_biomass$subregion <- ('MK')
MK_lut_anal_2012_biomass$SPECIES_CD <- ('LUT ANAL')

MK_lut_anal_2012_count <- count(MK_lut_anal_2012, vars = "SPECIES_CD")

MK_lut_anal_2012_biomass_count <- cbind(MK_lut_anal_2012_biomass,MK_lut_anal_2012_count)


MK_lut_anal_2014 <- filter(MK_lut_anal, YEAR_ == '2014')
MK_lut_anal_2014_biomass <- summarise_at(MK_lut_anal_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_2014_biomass$Year <- ('2014')
MK_lut_anal_2014_biomass$subregion <- ('MK')
MK_lut_anal_2014_biomass$SPECIES_CD <- ('LUT ANAL')

MK_lut_anal_2014_count <- count(MK_lut_anal_2014, vars = "SPECIES_CD")

MK_lut_anal_2014_biomass_count <- cbind(MK_lut_anal_2014_biomass,MK_lut_anal_2014_count)


MK_lut_anal_2016 <- filter(MK_lut_anal, YEAR_ == '2016')
MK_lut_anal_2016_biomass <- summarise_at(MK_lut_anal_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_2016_biomass$Year <- ('2016')
MK_lut_anal_2016_biomass$subregion <- ('MK')
MK_lut_anal_2016_biomass$SPECIES_CD <- ('LUT ANAL')

MK_lut_anal_2016_count <- count(MK_lut_anal_2016, vars = "SPECIES_CD")

MK_lut_anal_2016_biomass_count <- cbind(MK_lut_anal_2016_biomass,MK_lut_anal_2016_count)


MK_lut_anal_2018 <- filter(MK_lut_anal, YEAR_ == '2018')
MK_lut_anal_2018_biomass <- summarise_at(MK_lut_anal_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_anal_2018_biomass$Year <- ('2018')
MK_lut_anal_2018_biomass$subregion <- ('MK')
MK_lut_anal_2018_biomass$SPECIES_CD <- ('LUT ANAL')

MK_lut_anal_2018_count <- count(MK_lut_anal_2018, vars = "SPECIES_CD")

MK_lut_anal_2018_biomass_count <- cbind(MK_lut_anal_2018_biomass,MK_lut_anal_2018_count)


MK_lut_anal_all <- rbind(MK_lut_anal_2000_biomass_count,MK_lut_anal_2001_biomass_count,MK_lut_anal_2002_biomass_count,MK_lut_anal_2003_biomass_count,
                         MK_lut_anal_2005_biomass_count,MK_lut_anal_2006_biomass_count,MK_lut_anal_2007_biomass_count,
                         MK_lut_anal_2008_biomass_count,MK_lut_anal_2009_biomass_count,MK_lut_anal_2010_biomass_count,MK_lut_anal_2011_biomass_count,
                         MK_lut_anal_2012_biomass_count,MK_lut_anal_2014_biomass_count,MK_lut_anal_2016_biomass_count,MK_lut_anal_2018_biomass_count)

MK_lut_anal_all$vars <- NULL



MK_lut_apod <- filter(MK_snapper, SPECIES_CD == "LUT APOD")
unique(MK_lut_apod$YEAR_)

# MK_lut_apod_1999 <- filter(MK_lut_apod, YEAR_ == '1999')
# MK_lut_apod_1999_biomass <- summarise_at(MK_lut_apod_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_apod_1999_biomass$Year <- ('1999')
# MK_lut_apod_1999_biomass$subregion <- ('MK')
# MK_lut_apod_1999_biomass$SPECIES_CD <- ('LUT APOD')
# 
# MK_lut_apod_1999_count <- count(MK_lut_apod_1999, vars = "SPECIES_CD")
# 
# MK_lut_apod_1999_biomass_count <- cbind(MK_lut_apod_1999_biomass,MK_lut_apod_1999_count)
# 
# 
# 
# MK_lut_apod_2000 <- filter(MK_lut_apod, YEAR_ == '2000')
# MK_lut_apod_2000_biomass <- summarise_at(MK_lut_apod_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_apod_2000_biomass$Year <- ('2000')
# MK_lut_apod_2000_biomass$subregion <- ('MK')
# MK_lut_apod_2000_biomass$SPECIES_CD <- ('LUT APOD')
# 
# MK_lut_apod_2000_count <- count(MK_lut_apod_2000, vars = "SPECIES_CD")
# 
# MK_lut_apod_2000_biomass_count <- cbind(MK_lut_apod_2000_biomass,MK_lut_apod_2000_count)
# 
# MK_lut_apod_2001 <- filter(MK_lut_apod, YEAR_ == '2001')
# MK_lut_apod_2001_biomass <- summarise_at(MK_lut_apod_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_apod_2001_biomass$Year <- ('2001')
# MK_lut_apod_2001_biomass$subregion <- ('MK')
# MK_lut_apod_2001_biomass$SPECIES_CD <- ('LUT APOD')
# 
# MK_lut_apod_2001_count <- count(MK_lut_apod_2001, vars = "SPECIES_CD")
# 
# MK_lut_apod_2001_biomass_count <- cbind(MK_lut_apod_2001_biomass,MK_lut_apod_2001_count)
# 
# 
# MK_lut_apod_2002 <- filter(MK_lut_apod, YEAR_ == '2002')
# MK_lut_apod_2002_biomass <- summarise_at(MK_lut_apod_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_apod_2002_biomass$Year <- ('2002')
# MK_lut_apod_2002_biomass$subregion <- ('MK')
# MK_lut_apod_2002_biomass$SPECIES_CD <- ('LUT APOD')
# 
# MK_lut_apod_2002_count <- count(MK_lut_apod_2002, vars = "SPECIES_CD")
# 
# MK_lut_apod_2002_biomass_count <- cbind(MK_lut_apod_2002_biomass,MK_lut_apod_2002_count)
# 
# 
# MK_lut_apod_2003 <- filter(MK_lut_apod, YEAR_ == '2003')
# MK_lut_apod_2003_biomass <- summarise_at(MK_lut_apod_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_apod_2003_biomass$Year <- ('2003')
# MK_lut_apod_2003_biomass$subregion <- ('MK')
# MK_lut_apod_2003_biomass$SPECIES_CD <- ('LUT APOD')
# 
# MK_lut_apod_2003_count <- count(MK_lut_apod_2003, vars = "SPECIES_CD")
# 
# MK_lut_apod_2003_biomass_count <- cbind(MK_lut_apod_2003_biomass,MK_lut_apod_2003_count)
# 
# 
# MK_lut_apod_2004 <- filter(MK_lut_apod, YEAR_ == '2004')
# MK_lut_apod_2004_biomass <- summarise_at(MK_lut_apod_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_apod_2004_biomass$Year <- ('2004')
# MK_lut_apod_2004_biomass$subregion <- ('MK')
# MK_lut_apod_2004_biomass$SPECIES_CD <- ('LUT APOD')
# 
# MK_lut_apod_2004_count <- count(MK_lut_apod_2004, vars = "SPECIES_CD")
# 
# MK_lut_apod_2004_biomass_count <- cbind(MK_lut_apod_2004_biomass,MK_lut_apod_2004_count)
# 
# 
# MK_lut_apod_2005 <- filter(MK_lut_apod, YEAR_ == '2005')
# MK_lut_apod_2005_biomass <- summarise_at(MK_lut_apod_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_apod_2005_biomass$Year <- ('2005')
# MK_lut_apod_2005_biomass$subregion <- ('MK')
# MK_lut_apod_2005_biomass$SPECIES_CD <- ('LUT APOD')
# 
# MK_lut_apod_2005_count <- count(MK_lut_apod_2005, vars = "SPECIES_CD")
# 
# MK_lut_apod_2005_biomass_count <- cbind(MK_lut_apod_2005_biomass,MK_lut_apod_2005_count)


MK_lut_apod_2006 <- filter(MK_lut_apod, YEAR_ == '2006')
MK_lut_apod_2006_biomass <- summarise_at(MK_lut_apod_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_apod_2006_biomass$Year <- ('2006')
MK_lut_apod_2006_biomass$subregion <- ('MK')
MK_lut_apod_2006_biomass$SPECIES_CD <- ('LUT APOD')


MK_lut_apod_2006_count <- count(MK_lut_apod_2006, vars = "SPECIES_CD")

MK_lut_apod_2006_biomass_count <- cbind(MK_lut_apod_2006_biomass,MK_lut_apod_2006_count)


MK_lut_apod_2007 <- filter(MK_lut_apod, YEAR_ == '2007')
MK_lut_apod_2007_biomass <- summarise_at(MK_lut_apod_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_apod_2007_biomass$Year <- ('2007')
MK_lut_apod_2007_biomass$subregion <- ('MK')
MK_lut_apod_2007_biomass$SPECIES_CD <- ('LUT APOD')

MK_lut_apod_2007_count <- count(MK_lut_apod_2007, vars = "SPECIES_CD")

MK_lut_apod_2007_biomass_count <- cbind(MK_lut_apod_2007_biomass,MK_lut_apod_2007_count)


MK_lut_apod_2008 <- filter(MK_lut_apod, YEAR_ == '2008')
MK_lut_apod_2008_biomass <- summarise_at(MK_lut_apod_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_apod_2008_biomass$Year <- ('2008')
MK_lut_apod_2008_biomass$subregion <- ('MK')
MK_lut_apod_2008_biomass$SPECIES_CD <- ('LUT APOD')

MK_lut_apod_2008_count <- count(MK_lut_apod_2008, vars = "SPECIES_CD")

MK_lut_apod_2008_biomass_count <- cbind(MK_lut_apod_2008_biomass,MK_lut_apod_2008_count)


MK_lut_apod_2009 <- filter(MK_lut_apod, YEAR_ == '2009')
MK_lut_apod_2009_biomass <- summarise_at(MK_lut_apod_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_apod_2009_biomass$Year <- ('2009')
MK_lut_apod_2009_biomass$subregion <- ('MK')
MK_lut_apod_2009_biomass$SPECIES_CD <- ('LUT APOD')

MK_lut_apod_2009_count <- count(MK_lut_apod_2009, vars = "SPECIES_CD")

MK_lut_apod_2009_biomass_count <- cbind(MK_lut_apod_2009_biomass,MK_lut_apod_2009_count)


# MK_lut_apod_2010 <- filter(MK_lut_apod, YEAR_ == '2010')
# MK_lut_apod_2010_biomass <- summarise_at(MK_lut_apod_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_apod_2010_biomass$Year <- ('2010')
# MK_lut_apod_2010_biomass$subregion <- ('MK')
# MK_lut_apod_2010_biomass$SPECIES_CD <- ('LUT APOD')
# 
# MK_lut_apod_2010_count <- count(MK_lut_apod_2010, vars = "SPECIES_CD")
# 
# MK_lut_apod_2010_biomass_count <- cbind(MK_lut_apod_2010_biomass,MK_lut_apod_2010_count)


MK_lut_apod_2011 <- filter(MK_lut_apod, YEAR_ == '2011')
MK_lut_apod_2011_biomass <- summarise_at(MK_lut_apod_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_apod_2011_biomass$Year <- ('2011')
MK_lut_apod_2011_biomass$subregion <- ('MK')
MK_lut_apod_2011_biomass$SPECIES_CD <- ('LUT APOD')

MK_lut_apod_2011_count <- count(MK_lut_apod_2011, vars = "SPECIES_CD")

MK_lut_apod_2011_biomass_count <- cbind(MK_lut_apod_2011_biomass,MK_lut_apod_2011_count)


# MK_lut_apod_2012 <- filter(MK_lut_apod, YEAR_ == '2012')
# MK_lut_apod_2012_biomass <- summarise_at(MK_lut_apod_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_apod_2012_biomass$Year <- ('2012')
# MK_lut_apod_2012_biomass$subregion <- ('MK')
# MK_lut_apod_2012_biomass$SPECIES_CD <- ('LUT APOD')
# 
# MK_lut_apod_2012_count <- count(MK_lut_apod_2012, vars = "SPECIES_CD")
# 
# MK_lut_apod_2012_biomass_count <- cbind(MK_lut_apod_2012_biomass,MK_lut_apod_2012_count)


MK_lut_apod_2014 <- filter(MK_lut_apod, YEAR_ == '2014')
MK_lut_apod_2014_biomass <- summarise_at(MK_lut_apod_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_apod_2014_biomass$Year <- ('2014')
MK_lut_apod_2014_biomass$subregion <- ('MK')
MK_lut_apod_2014_biomass$SPECIES_CD <- ('LUT APOD')

MK_lut_apod_2014_count <- count(MK_lut_apod_2014, vars = "SPECIES_CD")

MK_lut_apod_2014_biomass_count <- cbind(MK_lut_apod_2014_biomass,MK_lut_apod_2014_count)


MK_lut_apod_2016 <- filter(MK_lut_apod, YEAR_ == '2016')
MK_lut_apod_2016_biomass <- summarise_at(MK_lut_apod_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_apod_2016_biomass$Year <- ('2016')
MK_lut_apod_2016_biomass$subregion <- ('MK')
MK_lut_apod_2016_biomass$SPECIES_CD <- ('LUT APOD')

MK_lut_apod_2016_count <- count(MK_lut_apod_2016, vars = "SPECIES_CD")

MK_lut_apod_2016_biomass_count <- cbind(MK_lut_apod_2016_biomass,MK_lut_apod_2016_count)


MK_lut_apod_2018 <- filter(MK_lut_apod, YEAR_ == '2018')
MK_lut_apod_2018_biomass <- summarise_at(MK_lut_apod_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_apod_2018_biomass$Year <- ('2018')
MK_lut_apod_2018_biomass$subregion <- ('MK')
MK_lut_apod_2018_biomass$SPECIES_CD <- ('LUT APOD')

MK_lut_apod_2018_count <- count(MK_lut_apod_2018, vars = "SPECIES_CD")

MK_lut_apod_2018_biomass_count <- cbind(MK_lut_apod_2018_biomass,MK_lut_apod_2018_count)


MK_lut_apod_all <- rbind(MK_lut_apod_2006_biomass_count,MK_lut_apod_2007_biomass_count,
                         MK_lut_apod_2008_biomass_count,MK_lut_apod_2009_biomass_count,MK_lut_apod_2011_biomass_count,
                         MK_lut_apod_2014_biomass_count,MK_lut_apod_2016_biomass_count,MK_lut_apod_2018_biomass_count)

MK_lut_apod_all$vars <- NULL





MK_lut_bucc <- filter(MK_snapper, SPECIES_CD == "LUT BUCC")
unique(MK_lut_bucc$YEAR_)


MK_lut_bucc_2010 <- filter(MK_lut_bucc, YEAR_ == '2010')
MK_lut_bucc_2010_biomass <- summarise_at(MK_lut_bucc_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_bucc_2010_biomass$Year <- ('2010')
MK_lut_bucc_2010_biomass$subregion <- ('MK')
MK_lut_bucc_2010_biomass$SPECIES_CD <- ('LUT BUCC')

MK_lut_bucc_2010_count <- count(MK_lut_bucc_2010, vars = "SPECIES_CD")

MK_lut_bucc_2010_biomass_count <- cbind(MK_lut_bucc_2010_biomass,MK_lut_bucc_2010_count)


MK_lut_bucc_2016 <- filter(MK_lut_bucc, YEAR_ == '2016')
MK_lut_bucc_2016_biomass <- summarise_at(MK_lut_bucc_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_bucc_2016_biomass$Year <- ('2016')
MK_lut_bucc_2016_biomass$subregion <- ('MK')
MK_lut_bucc_2016_biomass$SPECIES_CD <- ('LUT BUCC')

MK_lut_bucc_2016_count <- count(MK_lut_bucc_2016, vars = "SPECIES_CD")

MK_lut_bucc_2016_biomass_count <- cbind(MK_lut_bucc_2016_biomass,MK_lut_bucc_2016_count)



MK_lut_bucc_all <- rbind(MK_lut_bucc_2010_biomass_count,MK_lut_bucc_2016_biomass_count)

MK_lut_bucc_all$vars <- NULL




# MK_lut_cyan <- filter(MK_snapper, SPECIES_CD == "LUT CYAN")
# unique(MK_lut_cyan$YEAR_)
# 
# 
# MK_lut_cyan_2001 <- filter(MK_lut_cyan, YEAR_ == '2001')
# MK_lut_cyan_2001_biomass <- summarise_at(MK_lut_cyan_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_cyan_2001_biomass$Year <- ('2001')
# MK_lut_cyan_2001_biomass$subregion <- ('MK')
# MK_lut_cyan_2001_biomass$SPECIES_CD <- ('LUT CYAN')
# 
# MK_lut_cyan_2001_count <- count(MK_lut_cyan_2001, vars = "SPECIES_CD")
# 
# MK_lut_cyan_2001_biomass_count <- cbind(MK_lut_cyan_2001_biomass,MK_lut_cyan_2001_count)
# 
# 
# 
# MK_lut_cyan_2009 <- filter(MK_lut_cyan, YEAR_ == '2009')
# MK_lut_cyan_2009_biomass <- summarise_at(MK_lut_cyan_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_cyan_2009_biomass$Year <- ('2009')
# MK_lut_cyan_2009_biomass$subregion <- ('MK')
# MK_lut_cyan_2009_biomass$SPECIES_CD <- ('LUT CYAN')
# 
# MK_lut_cyan_2009_count <- count(MK_lut_cyan_2009, vars = "SPECIES_CD")
# 
# MK_lut_cyan_2009_biomass_count <- cbind(MK_lut_cyan_2009_biomass,MK_lut_cyan_2009_count)
# 
# 
# 
# MK_lut_cyan_2018 <- filter(MK_lut_cyan, YEAR_ == '2018')
# MK_lut_cyan_2018_biomass <- summarise_at(MK_lut_cyan_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_cyan_2018_biomass$Year <- ('2018')
# MK_lut_cyan_2018_biomass$subregion <- ('MK')
# MK_lut_cyan_2018_biomass$SPECIES_CD <- ('LUT CYAN')
# 
# MK_lut_cyan_2018_count <- count(MK_lut_cyan_2018, vars = "SPECIES_CD")
# 
# MK_lut_cyan_2018_biomass_count <- cbind(MK_lut_cyan_2018_biomass,MK_lut_cyan_2018_count)
# 
# 
# MK_lut_cyan_all <- rbind(MK_lut_cyan_2001_biomass_count,MK_lut_cyan_2009_biomass_count,MK_lut_cyan_2018_biomass_count)
# 
# MK_lut_cyan_all$vars <- NULL





MK_lut_gris <- filter(MK_snapper, SPECIES_CD == "LUT GRIS")
unique(MK_lut_gris$YEAR_)

MK_lut_gris_1999 <- filter(MK_lut_gris, YEAR_ == '1999')
MK_lut_gris_1999_biomass <- summarise_at(MK_lut_gris_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_gris_1999_biomass$Year <- ('1999')
MK_lut_gris_1999_biomass$subregion <- ('MK')
MK_lut_gris_1999_biomass$SPECIES_CD <- ('LUT GRIS')

MK_lut_gris_1999_count <- count(MK_lut_gris_1999, vars = "SPECIES_CD")

MK_lut_gris_1999_biomass_count <- cbind(MK_lut_gris_1999_biomass,MK_lut_gris_1999_count)



MK_lut_gris_2000 <- filter(MK_lut_gris, YEAR_ == '2000')
MK_lut_gris_2000_biomass <- summarise_at(MK_lut_gris_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_gris_2000_biomass$Year <- ('2000')
MK_lut_gris_2000_biomass$subregion <- ('MK')
MK_lut_gris_2000_biomass$SPECIES_CD <- ('LUT GRIS')

MK_lut_gris_2000_count <- count(MK_lut_gris_2000, vars = "SPECIES_CD")

MK_lut_gris_2000_biomass_count <- cbind(MK_lut_gris_2000_biomass,MK_lut_gris_2000_count)

MK_lut_gris_2001 <- filter(MK_lut_gris, YEAR_ == '2001')
MK_lut_gris_2001_biomass <- summarise_at(MK_lut_gris_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_gris_2001_biomass$Year <- ('2001')
MK_lut_gris_2001_biomass$subregion <- ('MK')
MK_lut_gris_2001_biomass$SPECIES_CD <- ('LUT GRIS')

MK_lut_gris_2001_count <- count(MK_lut_gris_2001, vars = "SPECIES_CD")

MK_lut_gris_2001_biomass_count <- cbind(MK_lut_gris_2001_biomass,MK_lut_gris_2001_count)


MK_lut_gris_2002 <- filter(MK_lut_gris, YEAR_ == '2002')
MK_lut_gris_2002_biomass <- summarise_at(MK_lut_gris_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_gris_2002_biomass$Year <- ('2002')
MK_lut_gris_2002_biomass$subregion <- ('MK')
MK_lut_gris_2002_biomass$SPECIES_CD <- ('LUT GRIS')

MK_lut_gris_2002_count <- count(MK_lut_gris_2002, vars = "SPECIES_CD")

MK_lut_gris_2002_biomass_count <- cbind(MK_lut_gris_2002_biomass,MK_lut_gris_2002_count)


MK_lut_gris_2003 <- filter(MK_lut_gris, YEAR_ == '2003')
MK_lut_gris_2003_biomass <- summarise_at(MK_lut_gris_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_gris_2003_biomass$Year <- ('2003')
MK_lut_gris_2003_biomass$subregion <- ('MK')
MK_lut_gris_2003_biomass$SPECIES_CD <- ('LUT GRIS')

MK_lut_gris_2003_count <- count(MK_lut_gris_2003, vars = "SPECIES_CD")

MK_lut_gris_2003_biomass_count <- cbind(MK_lut_gris_2003_biomass,MK_lut_gris_2003_count)


# MK_lut_gris_2004 <- filter(MK_lut_gris, YEAR_ == '2004')
# MK_lut_gris_2004_biomass <- summarise_at(MK_lut_gris_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_gris_2004_biomass$Year <- ('2004')
# MK_lut_gris_2004_biomass$subregion <- ('MK')
# MK_lut_gris_2004_biomass$SPECIES_CD <- ('LUT GRIS')
# 
# MK_lut_gris_2004_count <- count(MK_lut_gris_2004, vars = "SPECIES_CD")
# 
# MK_lut_gris_2004_biomass_count <- cbind(MK_lut_gris_2004_biomass,MK_lut_gris_2004_count)


MK_lut_gris_2005 <- filter(MK_lut_gris, YEAR_ == '2005')
MK_lut_gris_2005_biomass <- summarise_at(MK_lut_gris_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_gris_2005_biomass$Year <- ('2005')
MK_lut_gris_2005_biomass$subregion <- ('MK')
MK_lut_gris_2005_biomass$SPECIES_CD <- ('LUT GRIS')

MK_lut_gris_2005_count <- count(MK_lut_gris_2005, vars = "SPECIES_CD")

MK_lut_gris_2005_biomass_count <- cbind(MK_lut_gris_2005_biomass,MK_lut_gris_2005_count)


MK_lut_gris_2006 <- filter(MK_lut_gris, YEAR_ == '2006')
MK_lut_gris_2006_biomass <- summarise_at(MK_lut_gris_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_gris_2006_biomass$Year <- ('2006')
MK_lut_gris_2006_biomass$subregion <- ('MK')
MK_lut_gris_2006_biomass$SPECIES_CD <- ('LUT GRIS')


MK_lut_gris_2006_count <- count(MK_lut_gris_2006, vars = "SPECIES_CD")

MK_lut_gris_2006_biomass_count <- cbind(MK_lut_gris_2006_biomass,MK_lut_gris_2006_count)


MK_lut_gris_2007 <- filter(MK_lut_gris, YEAR_ == '2007')
MK_lut_gris_2007_biomass <- summarise_at(MK_lut_gris_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_gris_2007_biomass$Year <- ('2007')
MK_lut_gris_2007_biomass$subregion <- ('MK')
MK_lut_gris_2007_biomass$SPECIES_CD <- ('LUT GRIS')

MK_lut_gris_2007_count <- count(MK_lut_gris_2007, vars = "SPECIES_CD")

MK_lut_gris_2007_biomass_count <- cbind(MK_lut_gris_2007_biomass,MK_lut_gris_2007_count)


MK_lut_gris_2008 <- filter(MK_lut_gris, YEAR_ == '2008')
MK_lut_gris_2008_biomass <- summarise_at(MK_lut_gris_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_gris_2008_biomass$Year <- ('2008')
MK_lut_gris_2008_biomass$subregion <- ('MK')
MK_lut_gris_2008_biomass$SPECIES_CD <- ('LUT GRIS')

MK_lut_gris_2008_count <- count(MK_lut_gris_2008, vars = "SPECIES_CD")

MK_lut_gris_2008_biomass_count <- cbind(MK_lut_gris_2008_biomass,MK_lut_gris_2008_count)


MK_lut_gris_2009 <- filter(MK_lut_gris, YEAR_ == '2009')
MK_lut_gris_2009_biomass <- summarise_at(MK_lut_gris_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_gris_2009_biomass$Year <- ('2009')
MK_lut_gris_2009_biomass$subregion <- ('MK')
MK_lut_gris_2009_biomass$SPECIES_CD <- ('LUT GRIS')

MK_lut_gris_2009_count <- count(MK_lut_gris_2009, vars = "SPECIES_CD")

MK_lut_gris_2009_biomass_count <- cbind(MK_lut_gris_2009_biomass,MK_lut_gris_2009_count)


MK_lut_gris_2010 <- filter(MK_lut_gris, YEAR_ == '2010')
MK_lut_gris_2010_biomass <- summarise_at(MK_lut_gris_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_gris_2010_biomass$Year <- ('2010')
MK_lut_gris_2010_biomass$subregion <- ('MK')
MK_lut_gris_2010_biomass$SPECIES_CD <- ('LUT GRIS')

MK_lut_gris_2010_count <- count(MK_lut_gris_2010, vars = "SPECIES_CD")

MK_lut_gris_2010_biomass_count <- cbind(MK_lut_gris_2010_biomass,MK_lut_gris_2010_count)


MK_lut_gris_2011 <- filter(MK_lut_gris, YEAR_ == '2011')
MK_lut_gris_2011_biomass <- summarise_at(MK_lut_gris_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_gris_2011_biomass$Year <- ('2011')
MK_lut_gris_2011_biomass$subregion <- ('MK')
MK_lut_gris_2011_biomass$SPECIES_CD <- ('LUT GRIS')

MK_lut_gris_2011_count <- count(MK_lut_gris_2011, vars = "SPECIES_CD")

MK_lut_gris_2011_biomass_count <- cbind(MK_lut_gris_2011_biomass,MK_lut_gris_2011_count)


MK_lut_gris_2012 <- filter(MK_lut_gris, YEAR_ == '2012')
MK_lut_gris_2012_biomass <- summarise_at(MK_lut_gris_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_gris_2012_biomass$Year <- ('2012')
MK_lut_gris_2012_biomass$subregion <- ('MK')
MK_lut_gris_2012_biomass$SPECIES_CD <- ('LUT GRIS')

MK_lut_gris_2012_count <- count(MK_lut_gris_2012, vars = "SPECIES_CD")

MK_lut_gris_2012_biomass_count <- cbind(MK_lut_gris_2012_biomass,MK_lut_gris_2012_count)


MK_lut_gris_2014 <- filter(MK_lut_gris, YEAR_ == '2014')
MK_lut_gris_2014_biomass <- summarise_at(MK_lut_gris_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_gris_2014_biomass$Year <- ('2014')
MK_lut_gris_2014_biomass$subregion <- ('MK')
MK_lut_gris_2014_biomass$SPECIES_CD <- ('LUT GRIS')

MK_lut_gris_2014_count <- count(MK_lut_gris_2014, vars = "SPECIES_CD")

MK_lut_gris_2014_biomass_count <- cbind(MK_lut_gris_2014_biomass,MK_lut_gris_2014_count)


MK_lut_gris_2016 <- filter(MK_lut_gris, YEAR_ == '2016')
MK_lut_gris_2016_biomass <- summarise_at(MK_lut_gris_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_gris_2016_biomass$Year <- ('2016')
MK_lut_gris_2016_biomass$subregion <- ('MK')
MK_lut_gris_2016_biomass$SPECIES_CD <- ('LUT GRIS')

MK_lut_gris_2016_count <- count(MK_lut_gris_2016, vars = "SPECIES_CD")

MK_lut_gris_2016_biomass_count <- cbind(MK_lut_gris_2016_biomass,MK_lut_gris_2016_count)


MK_lut_gris_2018 <- filter(MK_lut_gris, YEAR_ == '2018')
MK_lut_gris_2018_biomass <- summarise_at(MK_lut_gris_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_gris_2018_biomass$Year <- ('2018')
MK_lut_gris_2018_biomass$subregion <- ('MK')
MK_lut_gris_2018_biomass$SPECIES_CD <- ('LUT GRIS')

MK_lut_gris_2018_count <- count(MK_lut_gris_2018, vars = "SPECIES_CD")

MK_lut_gris_2018_biomass_count <- cbind(MK_lut_gris_2018_biomass,MK_lut_gris_2018_count)


MK_lut_gris_all <- rbind(MK_lut_gris_1999_biomass_count,MK_lut_gris_2000_biomass_count,MK_lut_gris_2001_biomass_count,MK_lut_gris_2002_biomass_count,MK_lut_gris_2003_biomass_count,
                         MK_lut_gris_2005_biomass_count,MK_lut_gris_2006_biomass_count,MK_lut_gris_2007_biomass_count,
                         MK_lut_gris_2008_biomass_count,MK_lut_gris_2009_biomass_count,MK_lut_gris_2010_biomass_count,MK_lut_gris_2011_biomass_count,
                         MK_lut_gris_2012_biomass_count,MK_lut_gris_2014_biomass_count,MK_lut_gris_2016_biomass_count,MK_lut_gris_2018_biomass_count)

MK_lut_gris_all$vars <- NULL




MK_lut_jocu <- filter(MK_snapper, SPECIES_CD == "LUT JOCU")
unique(MK_lut_jocu$YEAR_)

# MK_lut_jocu_1999 <- filter(MK_lut_jocu, YEAR_ == '1999')
# MK_lut_jocu_1999_biomass <- summarise_at(MK_lut_jocu_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_jocu_1999_biomass$Year <- ('1999')
# MK_lut_jocu_1999_biomass$subregion <- ('MK')
# MK_lut_jocu_1999_biomass$SPECIES_CD <- ('LUT JOCU')
# 
# MK_lut_jocu_1999_count <- count(MK_lut_jocu_1999, vars = "SPECIES_CD")
# 
# MK_lut_jocu_1999_biomass_count <- cbind(MK_lut_jocu_1999_biomass,MK_lut_jocu_1999_count)
# 


MK_lut_jocu_2000 <- filter(MK_lut_jocu, YEAR_ == '2000')
MK_lut_jocu_2000_biomass <- summarise_at(MK_lut_jocu_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_jocu_2000_biomass$Year <- ('2000')
MK_lut_jocu_2000_biomass$subregion <- ('MK')
MK_lut_jocu_2000_biomass$SPECIES_CD <- ('LUT JOCU')

MK_lut_jocu_2000_count <- count(MK_lut_jocu_2000, vars = "SPECIES_CD")

MK_lut_jocu_2000_biomass_count <- cbind(MK_lut_jocu_2000_biomass,MK_lut_jocu_2000_count)

# MK_lut_jocu_2001 <- filter(MK_lut_jocu, YEAR_ == '2001')
# MK_lut_jocu_2001_biomass <- summarise_at(MK_lut_jocu_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_jocu_2001_biomass$Year <- ('2001')
# MK_lut_jocu_2001_biomass$subregion <- ('MK')
# MK_lut_jocu_2001_biomass$SPECIES_CD <- ('LUT JOCU')
# 
# MK_lut_jocu_2001_count <- count(MK_lut_jocu_2001, vars = "SPECIES_CD")
# 
# MK_lut_jocu_2001_biomass_count <- cbind(MK_lut_jocu_2001_biomass,MK_lut_jocu_2001_count)
# 
# 
# MK_lut_jocu_2002 <- filter(MK_lut_jocu, YEAR_ == '2002')
# MK_lut_jocu_2002_biomass <- summarise_at(MK_lut_jocu_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_jocu_2002_biomass$Year <- ('2002')
# MK_lut_jocu_2002_biomass$subregion <- ('MK')
# MK_lut_jocu_2002_biomass$SPECIES_CD <- ('LUT JOCU')
# 
# MK_lut_jocu_2002_count <- count(MK_lut_jocu_2002, vars = "SPECIES_CD")
# 
# MK_lut_jocu_2002_biomass_count <- cbind(MK_lut_jocu_2002_biomass,MK_lut_jocu_2002_count)


MK_lut_jocu_2003 <- filter(MK_lut_jocu, YEAR_ == '2003')
MK_lut_jocu_2003_biomass <- summarise_at(MK_lut_jocu_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_jocu_2003_biomass$Year <- ('2003')
MK_lut_jocu_2003_biomass$subregion <- ('MK')
MK_lut_jocu_2003_biomass$SPECIES_CD <- ('LUT JOCU')

MK_lut_jocu_2003_count <- count(MK_lut_jocu_2003, vars = "SPECIES_CD")

MK_lut_jocu_2003_biomass_count <- cbind(MK_lut_jocu_2003_biomass,MK_lut_jocu_2003_count)


# MK_lut_jocu_2004 <- filter(MK_lut_jocu, YEAR_ == '2004')
# MK_lut_jocu_2004_biomass <- summarise_at(MK_lut_jocu_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_jocu_2004_biomass$Year <- ('2004')
# MK_lut_jocu_2004_biomass$subregion <- ('MK')
# MK_lut_jocu_2004_biomass$SPECIES_CD <- ('LUT JOCU')
# 
# MK_lut_jocu_2004_count <- count(MK_lut_jocu_2004, vars = "SPECIES_CD")
# 
# MK_lut_jocu_2004_biomass_count <- cbind(MK_lut_jocu_2004_biomass,MK_lut_jocu_2004_count)
# 
# 
# MK_lut_jocu_2005 <- filter(MK_lut_jocu, YEAR_ == '2005')
# MK_lut_jocu_2005_biomass <- summarise_at(MK_lut_jocu_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_jocu_2005_biomass$Year <- ('2005')
# MK_lut_jocu_2005_biomass$subregion <- ('MK')
# MK_lut_jocu_2005_biomass$SPECIES_CD <- ('LUT JOCU')
# 
# MK_lut_jocu_2005_count <- count(MK_lut_jocu_2005, vars = "SPECIES_CD")
# 
# MK_lut_jocu_2005_biomass_count <- cbind(MK_lut_jocu_2005_biomass,MK_lut_jocu_2005_count)
# 
# 
# MK_lut_jocu_2006 <- filter(MK_lut_jocu, YEAR_ == '2006')
# MK_lut_jocu_2006_biomass <- summarise_at(MK_lut_jocu_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_jocu_2006_biomass$Year <- ('2006')
# MK_lut_jocu_2006_biomass$subregion <- ('MK')
# MK_lut_jocu_2006_biomass$SPECIES_CD <- ('LUT JOCU')
# 
# 
# MK_lut_jocu_2006_count <- count(MK_lut_jocu_2006, vars = "SPECIES_CD")
# 
# MK_lut_jocu_2006_biomass_count <- cbind(MK_lut_jocu_2006_biomass,MK_lut_jocu_2006_count)


MK_lut_jocu_2007 <- filter(MK_lut_jocu, YEAR_ == '2007')
MK_lut_jocu_2007_biomass <- summarise_at(MK_lut_jocu_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_jocu_2007_biomass$Year <- ('2007')
MK_lut_jocu_2007_biomass$subregion <- ('MK')
MK_lut_jocu_2007_biomass$SPECIES_CD <- ('LUT JOCU')

MK_lut_jocu_2007_count <- count(MK_lut_jocu_2007, vars = "SPECIES_CD")

MK_lut_jocu_2007_biomass_count <- cbind(MK_lut_jocu_2007_biomass,MK_lut_jocu_2007_count)


# MK_lut_jocu_2008 <- filter(MK_lut_jocu, YEAR_ == '2008')
# MK_lut_jocu_2008_biomass <- summarise_at(MK_lut_jocu_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_jocu_2008_biomass$Year <- ('2008')
# MK_lut_jocu_2008_biomass$subregion <- ('MK')
# MK_lut_jocu_2008_biomass$SPECIES_CD <- ('LUT JOCU')
# 
# MK_lut_jocu_2008_count <- count(MK_lut_jocu_2008, vars = "SPECIES_CD")
# 
# MK_lut_jocu_2008_biomass_count <- cbind(MK_lut_jocu_2008_biomass,MK_lut_jocu_2008_count)
# 
# 
# MK_lut_jocu_2009 <- filter(MK_lut_jocu, YEAR_ == '2009')
# MK_lut_jocu_2009_biomass <- summarise_at(MK_lut_jocu_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_jocu_2009_biomass$Year <- ('2009')
# MK_lut_jocu_2009_biomass$subregion <- ('MK')
# MK_lut_jocu_2009_biomass$SPECIES_CD <- ('LUT JOCU')
# 
# MK_lut_jocu_2009_count <- count(MK_lut_jocu_2009, vars = "SPECIES_CD")
# 
# MK_lut_jocu_2009_biomass_count <- cbind(MK_lut_jocu_2009_biomass,MK_lut_jocu_2009_count)
# 
# 
# MK_lut_jocu_2010 <- filter(MK_lut_jocu, YEAR_ == '2010')
# MK_lut_jocu_2010_biomass <- summarise_at(MK_lut_jocu_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_jocu_2010_biomass$Year <- ('2010')
# MK_lut_jocu_2010_biomass$subregion <- ('MK')
# MK_lut_jocu_2010_biomass$SPECIES_CD <- ('LUT JOCU')
# 
# MK_lut_jocu_2010_count <- count(MK_lut_jocu_2010, vars = "SPECIES_CD")
# 
# MK_lut_jocu_2010_biomass_count <- cbind(MK_lut_jocu_2010_biomass,MK_lut_jocu_2010_count)
# 
# 
# MK_lut_jocu_2011 <- filter(MK_lut_jocu, YEAR_ == '2011')
# MK_lut_jocu_2011_biomass <- summarise_at(MK_lut_jocu_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_jocu_2011_biomass$Year <- ('2011')
# MK_lut_jocu_2011_biomass$subregion <- ('MK')
# MK_lut_jocu_2011_biomass$SPECIES_CD <- ('LUT JOCU')
# 
# MK_lut_jocu_2011_count <- count(MK_lut_jocu_2011, vars = "SPECIES_CD")
# 
# MK_lut_jocu_2011_biomass_count <- cbind(MK_lut_jocu_2011_biomass,MK_lut_jocu_2011_count)
# 
# 
# MK_lut_jocu_2012 <- filter(MK_lut_jocu, YEAR_ == '2012')
# MK_lut_jocu_2012_biomass <- summarise_at(MK_lut_jocu_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_jocu_2012_biomass$Year <- ('2012')
# MK_lut_jocu_2012_biomass$subregion <- ('MK')
# MK_lut_jocu_2012_biomass$SPECIES_CD <- ('LUT JOCU')
# 
# MK_lut_jocu_2012_count <- count(MK_lut_jocu_2012, vars = "SPECIES_CD")
# 
# MK_lut_jocu_2012_biomass_count <- cbind(MK_lut_jocu_2012_biomass,MK_lut_jocu_2012_count)


MK_lut_jocu_2014 <- filter(MK_lut_jocu, YEAR_ == '2014')
MK_lut_jocu_2014_biomass <- summarise_at(MK_lut_jocu_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_jocu_2014_biomass$Year <- ('2014')
MK_lut_jocu_2014_biomass$subregion <- ('MK')
MK_lut_jocu_2014_biomass$SPECIES_CD <- ('LUT JOCU')

MK_lut_jocu_2014_count <- count(MK_lut_jocu_2014, vars = "SPECIES_CD")

MK_lut_jocu_2014_biomass_count <- cbind(MK_lut_jocu_2014_biomass,MK_lut_jocu_2014_count)


MK_lut_jocu_2016 <- filter(MK_lut_jocu, YEAR_ == '2016')
MK_lut_jocu_2016_biomass <- summarise_at(MK_lut_jocu_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_jocu_2016_biomass$Year <- ('2016')
MK_lut_jocu_2016_biomass$subregion <- ('MK')
MK_lut_jocu_2016_biomass$SPECIES_CD <- ('LUT JOCU')

MK_lut_jocu_2016_count <- count(MK_lut_jocu_2016, vars = "SPECIES_CD")

MK_lut_jocu_2016_biomass_count <- cbind(MK_lut_jocu_2016_biomass,MK_lut_jocu_2016_count)


MK_lut_jocu_2018 <- filter(MK_lut_jocu, YEAR_ == '2018')
MK_lut_jocu_2018_biomass <- summarise_at(MK_lut_jocu_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_jocu_2018_biomass$Year <- ('2018')
MK_lut_jocu_2018_biomass$subregion <- ('MK')
MK_lut_jocu_2018_biomass$SPECIES_CD <- ('LUT JOCU')

MK_lut_jocu_2018_count <- count(MK_lut_jocu_2018, vars = "SPECIES_CD")

MK_lut_jocu_2018_biomass_count <- cbind(MK_lut_jocu_2018_biomass,MK_lut_jocu_2018_count)


MK_lut_jocu_all <- rbind(MK_lut_jocu_2000_biomass_count,MK_lut_jocu_2003_biomass_count,MK_lut_jocu_2007_biomass_count,
                         MK_lut_jocu_2014_biomass_count,MK_lut_jocu_2016_biomass_count,MK_lut_jocu_2018_biomass_count)

MK_lut_jocu_all$vars <- NULL





MK_lut_maho <- filter(MK_snapper, SPECIES_CD == "LUT MAHO")
unique(MK_lut_maho$YEAR_)

MK_lut_maho_1999 <- filter(MK_lut_maho, YEAR_ == '1999')
MK_lut_maho_1999_biomass <- summarise_at(MK_lut_maho_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_maho_1999_biomass$Year <- ('1999')
MK_lut_maho_1999_biomass$subregion <- ('MK')
MK_lut_maho_1999_biomass$SPECIES_CD <- ('LUT MAHO')

MK_lut_maho_1999_count <- count(MK_lut_maho_1999, vars = "SPECIES_CD")

MK_lut_maho_1999_biomass_count <- cbind(MK_lut_maho_1999_biomass,MK_lut_maho_1999_count)



MK_lut_maho_2000 <- filter(MK_lut_maho, YEAR_ == '2000')
MK_lut_maho_2000_biomass <- summarise_at(MK_lut_maho_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_maho_2000_biomass$Year <- ('2000')
MK_lut_maho_2000_biomass$subregion <- ('MK')
MK_lut_maho_2000_biomass$SPECIES_CD <- ('LUT MAHO')

MK_lut_maho_2000_count <- count(MK_lut_maho_2000, vars = "SPECIES_CD")

MK_lut_maho_2000_biomass_count <- cbind(MK_lut_maho_2000_biomass,MK_lut_maho_2000_count)

MK_lut_maho_2001 <- filter(MK_lut_maho, YEAR_ == '2001')
MK_lut_maho_2001_biomass <- summarise_at(MK_lut_maho_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_maho_2001_biomass$Year <- ('2001')
MK_lut_maho_2001_biomass$subregion <- ('MK')
MK_lut_maho_2001_biomass$SPECIES_CD <- ('LUT MAHO')

MK_lut_maho_2001_count <- count(MK_lut_maho_2001, vars = "SPECIES_CD")

MK_lut_maho_2001_biomass_count <- cbind(MK_lut_maho_2001_biomass,MK_lut_maho_2001_count)


MK_lut_maho_2002 <- filter(MK_lut_maho, YEAR_ == '2002')
MK_lut_maho_2002_biomass <- summarise_at(MK_lut_maho_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_maho_2002_biomass$Year <- ('2002')
MK_lut_maho_2002_biomass$subregion <- ('MK')
MK_lut_maho_2002_biomass$SPECIES_CD <- ('LUT MAHO')

MK_lut_maho_2002_count <- count(MK_lut_maho_2002, vars = "SPECIES_CD")

MK_lut_maho_2002_biomass_count <- cbind(MK_lut_maho_2002_biomass,MK_lut_maho_2002_count)


MK_lut_maho_2003 <- filter(MK_lut_maho, YEAR_ == '2003')
MK_lut_maho_2003_biomass <- summarise_at(MK_lut_maho_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_maho_2003_biomass$Year <- ('2003')
MK_lut_maho_2003_biomass$subregion <- ('MK')
MK_lut_maho_2003_biomass$SPECIES_CD <- ('LUT MAHO')

MK_lut_maho_2003_count <- count(MK_lut_maho_2003, vars = "SPECIES_CD")

MK_lut_maho_2003_biomass_count <- cbind(MK_lut_maho_2003_biomass,MK_lut_maho_2003_count)


# MK_lut_maho_2004 <- filter(MK_lut_maho, YEAR_ == '2004')
# MK_lut_maho_2004_biomass <- summarise_at(MK_lut_maho_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_maho_2004_biomass$Year <- ('2004')
# MK_lut_maho_2004_biomass$subregion <- ('MK')
# MK_lut_maho_2004_biomass$SPECIES_CD <- ('LUT MAHO')
# 
# MK_lut_maho_2004_count <- count(MK_lut_maho_2004, vars = "SPECIES_CD")
# 
# MK_lut_maho_2004_biomass_count <- cbind(MK_lut_maho_2004_biomass,MK_lut_maho_2004_count)


MK_lut_maho_2005 <- filter(MK_lut_maho, YEAR_ == '2005')
MK_lut_maho_2005_biomass <- summarise_at(MK_lut_maho_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_maho_2005_biomass$Year <- ('2005')
MK_lut_maho_2005_biomass$subregion <- ('MK')
MK_lut_maho_2005_biomass$SPECIES_CD <- ('LUT MAHO')

MK_lut_maho_2005_count <- count(MK_lut_maho_2005, vars = "SPECIES_CD")

MK_lut_maho_2005_biomass_count <- cbind(MK_lut_maho_2005_biomass,MK_lut_maho_2005_count)


MK_lut_maho_2006 <- filter(MK_lut_maho, YEAR_ == '2006')
MK_lut_maho_2006_biomass <- summarise_at(MK_lut_maho_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_maho_2006_biomass$Year <- ('2006')
MK_lut_maho_2006_biomass$subregion <- ('MK')
MK_lut_maho_2006_biomass$SPECIES_CD <- ('LUT MAHO')


MK_lut_maho_2006_count <- count(MK_lut_maho_2006, vars = "SPECIES_CD")

MK_lut_maho_2006_biomass_count <- cbind(MK_lut_maho_2006_biomass,MK_lut_maho_2006_count)


# MK_lut_maho_2007 <- filter(MK_lut_maho, YEAR_ == '2007')
# MK_lut_maho_2007_biomass <- summarise_at(MK_lut_maho_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_maho_2007_biomass$Year <- ('2007')
# MK_lut_maho_2007_biomass$subregion <- ('MK')
# MK_lut_maho_2007_biomass$SPECIES_CD <- ('LUT MAHO')
# 
# MK_lut_maho_2007_count <- count(MK_lut_maho_2007, vars = "SPECIES_CD")
# 
# MK_lut_maho_2007_biomass_count <- cbind(MK_lut_maho_2007_biomass,MK_lut_maho_2007_count)


MK_lut_maho_2008 <- filter(MK_lut_maho, YEAR_ == '2008')
MK_lut_maho_2008_biomass <- summarise_at(MK_lut_maho_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_maho_2008_biomass$Year <- ('2008')
MK_lut_maho_2008_biomass$subregion <- ('MK')
MK_lut_maho_2008_biomass$SPECIES_CD <- ('LUT MAHO')

MK_lut_maho_2008_count <- count(MK_lut_maho_2008, vars = "SPECIES_CD")

MK_lut_maho_2008_biomass_count <- cbind(MK_lut_maho_2008_biomass,MK_lut_maho_2008_count)


MK_lut_maho_2009 <- filter(MK_lut_maho, YEAR_ == '2009')
MK_lut_maho_2009_biomass <- summarise_at(MK_lut_maho_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_maho_2009_biomass$Year <- ('2009')
MK_lut_maho_2009_biomass$subregion <- ('MK')
MK_lut_maho_2009_biomass$SPECIES_CD <- ('LUT MAHO')

MK_lut_maho_2009_count <- count(MK_lut_maho_2009, vars = "SPECIES_CD")

MK_lut_maho_2009_biomass_count <- cbind(MK_lut_maho_2009_biomass,MK_lut_maho_2009_count)


MK_lut_maho_2010 <- filter(MK_lut_maho, YEAR_ == '2010')
MK_lut_maho_2010_biomass <- summarise_at(MK_lut_maho_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_maho_2010_biomass$Year <- ('2010')
MK_lut_maho_2010_biomass$subregion <- ('MK')
MK_lut_maho_2010_biomass$SPECIES_CD <- ('LUT MAHO')

MK_lut_maho_2010_count <- count(MK_lut_maho_2010, vars = "SPECIES_CD")

MK_lut_maho_2010_biomass_count <- cbind(MK_lut_maho_2010_biomass,MK_lut_maho_2010_count)


MK_lut_maho_2011 <- filter(MK_lut_maho, YEAR_ == '2011')
MK_lut_maho_2011_biomass <- summarise_at(MK_lut_maho_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_maho_2011_biomass$Year <- ('2011')
MK_lut_maho_2011_biomass$subregion <- ('MK')
MK_lut_maho_2011_biomass$SPECIES_CD <- ('LUT MAHO')

MK_lut_maho_2011_count <- count(MK_lut_maho_2011, vars = "SPECIES_CD")

MK_lut_maho_2011_biomass_count <- cbind(MK_lut_maho_2011_biomass,MK_lut_maho_2011_count)


MK_lut_maho_2012 <- filter(MK_lut_maho, YEAR_ == '2012')
MK_lut_maho_2012_biomass <- summarise_at(MK_lut_maho_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_maho_2012_biomass$Year <- ('2012')
MK_lut_maho_2012_biomass$subregion <- ('MK')
MK_lut_maho_2012_biomass$SPECIES_CD <- ('LUT MAHO')

MK_lut_maho_2012_count <- count(MK_lut_maho_2012, vars = "SPECIES_CD")

MK_lut_maho_2012_biomass_count <- cbind(MK_lut_maho_2012_biomass,MK_lut_maho_2012_count)


MK_lut_maho_2014 <- filter(MK_lut_maho, YEAR_ == '2014')
MK_lut_maho_2014_biomass <- summarise_at(MK_lut_maho_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_maho_2014_biomass$Year <- ('2014')
MK_lut_maho_2014_biomass$subregion <- ('MK')
MK_lut_maho_2014_biomass$SPECIES_CD <- ('LUT MAHO')

MK_lut_maho_2014_count <- count(MK_lut_maho_2014, vars = "SPECIES_CD")

MK_lut_maho_2014_biomass_count <- cbind(MK_lut_maho_2014_biomass,MK_lut_maho_2014_count)


MK_lut_maho_2016 <- filter(MK_lut_maho, YEAR_ == '2016')
MK_lut_maho_2016_biomass <- summarise_at(MK_lut_maho_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_maho_2016_biomass$Year <- ('2016')
MK_lut_maho_2016_biomass$subregion <- ('MK')
MK_lut_maho_2016_biomass$SPECIES_CD <- ('LUT MAHO')

MK_lut_maho_2016_count <- count(MK_lut_maho_2016, vars = "SPECIES_CD")

MK_lut_maho_2016_biomass_count <- cbind(MK_lut_maho_2016_biomass,MK_lut_maho_2016_count)


MK_lut_maho_2018 <- filter(MK_lut_maho, YEAR_ == '2018')
MK_lut_maho_2018_biomass <- summarise_at(MK_lut_maho_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_maho_2018_biomass$Year <- ('2018')
MK_lut_maho_2018_biomass$subregion <- ('MK')
MK_lut_maho_2018_biomass$SPECIES_CD <- ('LUT MAHO')

MK_lut_maho_2018_count <- count(MK_lut_maho_2018, vars = "SPECIES_CD")

MK_lut_maho_2018_biomass_count <- cbind(MK_lut_maho_2018_biomass,MK_lut_maho_2018_count)


MK_lut_maho_all <- rbind(MK_lut_maho_1999_biomass_count,MK_lut_maho_2000_biomass_count,MK_lut_maho_2001_biomass_count,MK_lut_maho_2002_biomass_count,MK_lut_maho_2003_biomass_count,
                         MK_lut_maho_2005_biomass_count,MK_lut_maho_2006_biomass_count,
                         MK_lut_maho_2008_biomass_count,MK_lut_maho_2009_biomass_count,MK_lut_maho_2011_biomass_count,
                         MK_lut_maho_2014_biomass_count,MK_lut_maho_2016_biomass_count,MK_lut_maho_2018_biomass_count)

MK_lut_maho_all$vars <- NULL





# MK_lut_spe <- filter(MK_snapper, SPECIES_CD == "LUT SPE.")
# unique(MK_lut_spe$YEAR_)
# 
# 
# MK_lut_spe_2010 <- filter(MK_lut_spe, YEAR_ == '2010')
# MK_lut_spe_2010_biomass <- summarise_at(MK_lut_spe_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_spe_2010_biomass$Year <- ('2010')
# MK_lut_spe_2010_biomass$subregion <- ('MK')
# MK_lut_spe_2010_biomass$SPECIES_CD <- ('LUT SPE.')
# 
# MK_lut_spe_2010_count <- count(MK_lut_spe_2010, vars = "SPECIES_CD")
# 
# MK_lut_spe_2010_biomass_count <- cbind(MK_lut_spe_2010_biomass,MK_lut_spe_2010_count)
# 
# 
# 
# 
# MK_lut_spe_2018 <- filter(MK_lut_spe, YEAR_ == '2018')
# MK_lut_spe_2018_biomass <- summarise_at(MK_lut_spe_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_spe_2018_biomass$Year <- ('2018')
# MK_lut_spe_2018_biomass$subregion <- ('MK')
# MK_lut_spe_2018_biomass$SPECIES_CD <- ('LUT SPE.')
# 
# MK_lut_spe_2018_count <- count(MK_lut_spe_2018, vars = "SPECIES_CD")
# 
# MK_lut_spe_2018_biomass_count <- cbind(MK_lut_spe_2018_biomass,MK_lut_spe_2018_count)
# 
# 
# MK_lut_spe_all <- rbind(MK_lut_spe_2010_biomass_count,MK_lut_spe_2018_biomass_count)
# 
# MK_lut_spe_all$vars <- NULL
# 



MK_lut_syna <- filter(MK_snapper, SPECIES_CD == "LUT SYNA")
unique(MK_lut_syna$YEAR_)

MK_lut_syna_1999 <- filter(MK_lut_syna, YEAR_ == '1999')
MK_lut_syna_1999_biomass <- summarise_at(MK_lut_syna_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_syna_1999_biomass$Year <- ('1999')
MK_lut_syna_1999_biomass$subregion <- ('MK')
MK_lut_syna_1999_biomass$SPECIES_CD <- ('LUT SYNA')

MK_lut_syna_1999_count <- count(MK_lut_syna_1999, vars = "SPECIES_CD")

MK_lut_syna_1999_biomass_count <- cbind(MK_lut_syna_1999_biomass,MK_lut_syna_1999_count)



MK_lut_syna_2000 <- filter(MK_lut_syna, YEAR_ == '2000')
MK_lut_syna_2000_biomass <- summarise_at(MK_lut_syna_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_syna_2000_biomass$Year <- ('2000')
MK_lut_syna_2000_biomass$subregion <- ('MK')
MK_lut_syna_2000_biomass$SPECIES_CD <- ('LUT SYNA')

MK_lut_syna_2000_count <- count(MK_lut_syna_2000, vars = "SPECIES_CD")

MK_lut_syna_2000_biomass_count <- cbind(MK_lut_syna_2000_biomass,MK_lut_syna_2000_count)

MK_lut_syna_2001 <- filter(MK_lut_syna, YEAR_ == '2001')
MK_lut_syna_2001_biomass <- summarise_at(MK_lut_syna_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_syna_2001_biomass$Year <- ('2001')
MK_lut_syna_2001_biomass$subregion <- ('MK')
MK_lut_syna_2001_biomass$SPECIES_CD <- ('LUT SYNA')

MK_lut_syna_2001_count <- count(MK_lut_syna_2001, vars = "SPECIES_CD")

MK_lut_syna_2001_biomass_count <- cbind(MK_lut_syna_2001_biomass,MK_lut_syna_2001_count)


MK_lut_syna_2002 <- filter(MK_lut_syna, YEAR_ == '2002')
MK_lut_syna_2002_biomass <- summarise_at(MK_lut_syna_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_syna_2002_biomass$Year <- ('2002')
MK_lut_syna_2002_biomass$subregion <- ('MK')
MK_lut_syna_2002_biomass$SPECIES_CD <- ('LUT SYNA')

MK_lut_syna_2002_count <- count(MK_lut_syna_2002, vars = "SPECIES_CD")

MK_lut_syna_2002_biomass_count <- cbind(MK_lut_syna_2002_biomass,MK_lut_syna_2002_count)


# MK_lut_syna_2003 <- filter(MK_lut_syna, YEAR_ == '2003')
# MK_lut_syna_2003_biomass <- summarise_at(MK_lut_syna_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_syna_2003_biomass$Year <- ('2003')
# MK_lut_syna_2003_biomass$subregion <- ('MK')
# MK_lut_syna_2003_biomass$SPECIES_CD <- ('LUT SYNA')
# 
# MK_lut_syna_2003_count <- count(MK_lut_syna_2003, vars = "SPECIES_CD")
# 
# MK_lut_syna_2003_biomass_count <- cbind(MK_lut_syna_2003_biomass,MK_lut_syna_2003_count)
# 
# 
# MK_lut_syna_2004 <- filter(MK_lut_syna, YEAR_ == '2004')
# MK_lut_syna_2004_biomass <- summarise_at(MK_lut_syna_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_syna_2004_biomass$Year <- ('2004')
# MK_lut_syna_2004_biomass$subregion <- ('MK')
# MK_lut_syna_2004_biomass$SPECIES_CD <- ('LUT SYNA')
# 
# MK_lut_syna_2004_count <- count(MK_lut_syna_2004, vars = "SPECIES_CD")
# 
# MK_lut_syna_2004_biomass_count <- cbind(MK_lut_syna_2004_biomass,MK_lut_syna_2004_count)


MK_lut_syna_2005 <- filter(MK_lut_syna, YEAR_ == '2005')
MK_lut_syna_2005_biomass <- summarise_at(MK_lut_syna_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_syna_2005_biomass$Year <- ('2005')
MK_lut_syna_2005_biomass$subregion <- ('MK')
MK_lut_syna_2005_biomass$SPECIES_CD <- ('LUT SYNA')

MK_lut_syna_2005_count <- count(MK_lut_syna_2005, vars = "SPECIES_CD")

MK_lut_syna_2005_biomass_count <- cbind(MK_lut_syna_2005_biomass,MK_lut_syna_2005_count)


MK_lut_syna_2006 <- filter(MK_lut_syna, YEAR_ == '2006')
MK_lut_syna_2006_biomass <- summarise_at(MK_lut_syna_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_syna_2006_biomass$Year <- ('2006')
MK_lut_syna_2006_biomass$subregion <- ('MK')
MK_lut_syna_2006_biomass$SPECIES_CD <- ('LUT SYNA')


MK_lut_syna_2006_count <- count(MK_lut_syna_2006, vars = "SPECIES_CD")

MK_lut_syna_2006_biomass_count <- cbind(MK_lut_syna_2006_biomass,MK_lut_syna_2006_count)


MK_lut_syna_2007 <- filter(MK_lut_syna, YEAR_ == '2007')
MK_lut_syna_2007_biomass <- summarise_at(MK_lut_syna_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_syna_2007_biomass$Year <- ('2007')
MK_lut_syna_2007_biomass$subregion <- ('MK')
MK_lut_syna_2007_biomass$SPECIES_CD <- ('LUT SYNA')

MK_lut_syna_2007_count <- count(MK_lut_syna_2007, vars = "SPECIES_CD")

MK_lut_syna_2007_biomass_count <- cbind(MK_lut_syna_2007_biomass,MK_lut_syna_2007_count)


# MK_lut_syna_2008 <- filter(MK_lut_syna, YEAR_ == '2008')
# MK_lut_syna_2008_biomass <- summarise_at(MK_lut_syna_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_syna_2008_biomass$Year <- ('2008')
# MK_lut_syna_2008_biomass$subregion <- ('MK')
# MK_lut_syna_2008_biomass$SPECIES_CD <- ('LUT SYNA')
# 
# MK_lut_syna_2008_count <- count(MK_lut_syna_2008, vars = "SPECIES_CD")
# 
# MK_lut_syna_2008_biomass_count <- cbind(MK_lut_syna_2008_biomass,MK_lut_syna_2008_count)


MK_lut_syna_2009 <- filter(MK_lut_syna, YEAR_ == '2009')
MK_lut_syna_2009_biomass <- summarise_at(MK_lut_syna_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_syna_2009_biomass$Year <- ('2009')
MK_lut_syna_2009_biomass$subregion <- ('MK')
MK_lut_syna_2009_biomass$SPECIES_CD <- ('LUT SYNA')

MK_lut_syna_2009_count <- count(MK_lut_syna_2009, vars = "SPECIES_CD")

MK_lut_syna_2009_biomass_count <- cbind(MK_lut_syna_2009_biomass,MK_lut_syna_2009_count)


# MK_lut_syna_2010 <- filter(MK_lut_syna, YEAR_ == '2010')
# MK_lut_syna_2010_biomass <- summarise_at(MK_lut_syna_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_syna_2010_biomass$Year <- ('2010')
# MK_lut_syna_2010_biomass$subregion <- ('MK')
# MK_lut_syna_2010_biomass$SPECIES_CD <- ('LUT SYNA')
# 
# MK_lut_syna_2010_count <- count(MK_lut_syna_2010, vars = "SPECIES_CD")
# 
# MK_lut_syna_2010_biomass_count <- cbind(MK_lut_syna_2010_biomass,MK_lut_syna_2010_count)
# 
# 
# MK_lut_syna_2011 <- filter(MK_lut_syna, YEAR_ == '2011')
# MK_lut_syna_2011_biomass <- summarise_at(MK_lut_syna_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_syna_2011_biomass$Year <- ('2011')
# MK_lut_syna_2011_biomass$subregion <- ('MK')
# MK_lut_syna_2011_biomass$SPECIES_CD <- ('LUT SYNA')
# 
# MK_lut_syna_2011_count <- count(MK_lut_syna_2011, vars = "SPECIES_CD")
# 
# MK_lut_syna_2011_biomass_count <- cbind(MK_lut_syna_2011_biomass,MK_lut_syna_2011_count)


MK_lut_syna_2012 <- filter(MK_lut_syna, YEAR_ == '2012')
MK_lut_syna_2012_biomass <- summarise_at(MK_lut_syna_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_syna_2012_biomass$Year <- ('2012')
MK_lut_syna_2012_biomass$subregion <- ('MK')
MK_lut_syna_2012_biomass$SPECIES_CD <- ('LUT SYNA')

MK_lut_syna_2012_count <- count(MK_lut_syna_2012, vars = "SPECIES_CD")

MK_lut_syna_2012_biomass_count <- cbind(MK_lut_syna_2012_biomass,MK_lut_syna_2012_count)


# MK_lut_syna_2014 <- filter(MK_lut_syna, YEAR_ == '2014')
# MK_lut_syna_2014_biomass <- summarise_at(MK_lut_syna_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_lut_syna_2014_biomass$Year <- ('2014')
# MK_lut_syna_2014_biomass$subregion <- ('MK')
# MK_lut_syna_2014_biomass$SPECIES_CD <- ('LUT SYNA')
# 
# MK_lut_syna_2014_count <- count(MK_lut_syna_2014, vars = "SPECIES_CD")
# 
# MK_lut_syna_2014_biomass_count <- cbind(MK_lut_syna_2014_biomass,MK_lut_syna_2014_count)


MK_lut_syna_2016 <- filter(MK_lut_syna, YEAR_ == '2016')
MK_lut_syna_2016_biomass <- summarise_at(MK_lut_syna_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_syna_2016_biomass$Year <- ('2016')
MK_lut_syna_2016_biomass$subregion <- ('MK')
MK_lut_syna_2016_biomass$SPECIES_CD <- ('LUT SYNA')

MK_lut_syna_2016_count <- count(MK_lut_syna_2016, vars = "SPECIES_CD")

MK_lut_syna_2016_biomass_count <- cbind(MK_lut_syna_2016_biomass,MK_lut_syna_2016_count)


MK_lut_syna_2018 <- filter(MK_lut_syna, YEAR_ == '2018')
MK_lut_syna_2018_biomass <- summarise_at(MK_lut_syna_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_lut_syna_2018_biomass$Year <- ('2018')
MK_lut_syna_2018_biomass$subregion <- ('MK')
MK_lut_syna_2018_biomass$SPECIES_CD <- ('LUT SYNA')

MK_lut_syna_2018_count <- count(MK_lut_syna_2018, vars = "SPECIES_CD")

MK_lut_syna_2018_biomass_count <- cbind(MK_lut_syna_2018_biomass,MK_lut_syna_2018_count)


MK_lut_syna_all <- rbind(MK_lut_syna_1999_biomass_count,MK_lut_syna_2000_biomass_count,MK_lut_syna_2001_biomass_count,MK_lut_syna_2002_biomass_count,
                         MK_lut_syna_2005_biomass_count,MK_lut_syna_2006_biomass_count,MK_lut_syna_2007_biomass_count,
                         MK_lut_syna_2009_biomass_count,MK_lut_syna_2012_biomass_count,
                         MK_lut_syna_2016_biomass_count,MK_lut_syna_2018_biomass_count)

MK_lut_syna_all$vars <- NULL





MK_ocy_chry <- filter(MK_snapper, SPECIES_CD == "OCY CHRY")
unique(MK_ocy_chry$YEAR_)

MK_ocy_chry_1999 <- filter(MK_ocy_chry, YEAR_ == '1999')
MK_ocy_chry_1999_biomass <- summarise_at(MK_ocy_chry_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_1999_biomass$Year <- ('1999')
MK_ocy_chry_1999_biomass$subregion <- ('MK')
MK_ocy_chry_1999_biomass$SPECIES_CD <- ('OCY CHRY')

MK_ocy_chry_1999_count <- count(MK_ocy_chry_1999, vars = "SPECIES_CD")

MK_ocy_chry_1999_biomass_count <- cbind(MK_ocy_chry_1999_biomass,MK_ocy_chry_1999_count)



MK_ocy_chry_2000 <- filter(MK_ocy_chry, YEAR_ == '2000')
MK_ocy_chry_2000_biomass <- summarise_at(MK_ocy_chry_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_2000_biomass$Year <- ('2000')
MK_ocy_chry_2000_biomass$subregion <- ('MK')
MK_ocy_chry_2000_biomass$SPECIES_CD <- ('OCY CHRY')

MK_ocy_chry_2000_count <- count(MK_ocy_chry_2000, vars = "SPECIES_CD")

MK_ocy_chry_2000_biomass_count <- cbind(MK_ocy_chry_2000_biomass,MK_ocy_chry_2000_count)

MK_ocy_chry_2001 <- filter(MK_ocy_chry, YEAR_ == '2001')
MK_ocy_chry_2001_biomass <- summarise_at(MK_ocy_chry_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_2001_biomass$Year <- ('2001')
MK_ocy_chry_2001_biomass$subregion <- ('MK')
MK_ocy_chry_2001_biomass$SPECIES_CD <- ('OCY CHRY')

MK_ocy_chry_2001_count <- count(MK_ocy_chry_2001, vars = "SPECIES_CD")

MK_ocy_chry_2001_biomass_count <- cbind(MK_ocy_chry_2001_biomass,MK_ocy_chry_2001_count)


MK_ocy_chry_2002 <- filter(MK_ocy_chry, YEAR_ == '2002')
MK_ocy_chry_2002_biomass <- summarise_at(MK_ocy_chry_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_2002_biomass$Year <- ('2002')
MK_ocy_chry_2002_biomass$subregion <- ('MK')
MK_ocy_chry_2002_biomass$SPECIES_CD <- ('OCY CHRY')

MK_ocy_chry_2002_count <- count(MK_ocy_chry_2002, vars = "SPECIES_CD")

MK_ocy_chry_2002_biomass_count <- cbind(MK_ocy_chry_2002_biomass,MK_ocy_chry_2002_count)


MK_ocy_chry_2003 <- filter(MK_ocy_chry, YEAR_ == '2003')
MK_ocy_chry_2003_biomass <- summarise_at(MK_ocy_chry_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_2003_biomass$Year <- ('2003')
MK_ocy_chry_2003_biomass$subregion <- ('MK')
MK_ocy_chry_2003_biomass$SPECIES_CD <- ('OCY CHRY')

MK_ocy_chry_2003_count <- count(MK_ocy_chry_2003, vars = "SPECIES_CD")

MK_ocy_chry_2003_biomass_count <- cbind(MK_ocy_chry_2003_biomass,MK_ocy_chry_2003_count)


MK_ocy_chry_2004 <- filter(MK_ocy_chry, YEAR_ == '2004')
MK_ocy_chry_2004_biomass <- summarise_at(MK_ocy_chry_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_2004_biomass$Year <- ('2004')
MK_ocy_chry_2004_biomass$subregion <- ('MK')
MK_ocy_chry_2004_biomass$SPECIES_CD <- ('OCY CHRY')

MK_ocy_chry_2004_count <- count(MK_ocy_chry_2004, vars = "SPECIES_CD")

MK_ocy_chry_2004_biomass_count <- cbind(MK_ocy_chry_2004_biomass,MK_ocy_chry_2004_count)


MK_ocy_chry_2005 <- filter(MK_ocy_chry, YEAR_ == '2005')
MK_ocy_chry_2005_biomass <- summarise_at(MK_ocy_chry_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_2005_biomass$Year <- ('2005')
MK_ocy_chry_2005_biomass$subregion <- ('MK')
MK_ocy_chry_2005_biomass$SPECIES_CD <- ('OCY CHRY')

MK_ocy_chry_2005_count <- count(MK_ocy_chry_2005, vars = "SPECIES_CD")

MK_ocy_chry_2005_biomass_count <- cbind(MK_ocy_chry_2005_biomass,MK_ocy_chry_2005_count)


MK_ocy_chry_2006 <- filter(MK_ocy_chry, YEAR_ == '2006')
MK_ocy_chry_2006_biomass <- summarise_at(MK_ocy_chry_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_2006_biomass$Year <- ('2006')
MK_ocy_chry_2006_biomass$subregion <- ('MK')
MK_ocy_chry_2006_biomass$SPECIES_CD <- ('OCY CHRY')


MK_ocy_chry_2006_count <- count(MK_ocy_chry_2006, vars = "SPECIES_CD")

MK_ocy_chry_2006_biomass_count <- cbind(MK_ocy_chry_2006_biomass,MK_ocy_chry_2006_count)


MK_ocy_chry_2007 <- filter(MK_ocy_chry, YEAR_ == '2007')
MK_ocy_chry_2007_biomass <- summarise_at(MK_ocy_chry_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_2007_biomass$Year <- ('2007')
MK_ocy_chry_2007_biomass$subregion <- ('MK')
MK_ocy_chry_2007_biomass$SPECIES_CD <- ('OCY CHRY')

MK_ocy_chry_2007_count <- count(MK_ocy_chry_2007, vars = "SPECIES_CD")

MK_ocy_chry_2007_biomass_count <- cbind(MK_ocy_chry_2007_biomass,MK_ocy_chry_2007_count)


MK_ocy_chry_2008 <- filter(MK_ocy_chry, YEAR_ == '2008')
MK_ocy_chry_2008_biomass <- summarise_at(MK_ocy_chry_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_2008_biomass$Year <- ('2008')
MK_ocy_chry_2008_biomass$subregion <- ('MK')
MK_ocy_chry_2008_biomass$SPECIES_CD <- ('OCY CHRY')

MK_ocy_chry_2008_count <- count(MK_ocy_chry_2008, vars = "SPECIES_CD")

MK_ocy_chry_2008_biomass_count <- cbind(MK_ocy_chry_2008_biomass,MK_ocy_chry_2008_count)


MK_ocy_chry_2009 <- filter(MK_ocy_chry, YEAR_ == '2009')
MK_ocy_chry_2009_biomass <- summarise_at(MK_ocy_chry_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_2009_biomass$Year <- ('2009')
MK_ocy_chry_2009_biomass$subregion <- ('MK')
MK_ocy_chry_2009_biomass$SPECIES_CD <- ('OCY CHRY')

MK_ocy_chry_2009_count <- count(MK_ocy_chry_2009, vars = "SPECIES_CD")

MK_ocy_chry_2009_biomass_count <- cbind(MK_ocy_chry_2009_biomass,MK_ocy_chry_2009_count)


MK_ocy_chry_2010 <- filter(MK_ocy_chry, YEAR_ == '2010')
MK_ocy_chry_2010_biomass <- summarise_at(MK_ocy_chry_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_2010_biomass$Year <- ('2010')
MK_ocy_chry_2010_biomass$subregion <- ('MK')
MK_ocy_chry_2010_biomass$SPECIES_CD <- ('OCY CHRY')

MK_ocy_chry_2010_count <- count(MK_ocy_chry_2010, vars = "SPECIES_CD")

MK_ocy_chry_2010_biomass_count <- cbind(MK_ocy_chry_2010_biomass,MK_ocy_chry_2010_count)


MK_ocy_chry_2011 <- filter(MK_ocy_chry, YEAR_ == '2011')
MK_ocy_chry_2011_biomass <- summarise_at(MK_ocy_chry_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_2011_biomass$Year <- ('2011')
MK_ocy_chry_2011_biomass$subregion <- ('MK')
MK_ocy_chry_2011_biomass$SPECIES_CD <- ('OCY CHRY')

MK_ocy_chry_2011_count <- count(MK_ocy_chry_2011, vars = "SPECIES_CD")

MK_ocy_chry_2011_biomass_count <- cbind(MK_ocy_chry_2011_biomass,MK_ocy_chry_2011_count)


MK_ocy_chry_2012 <- filter(MK_ocy_chry, YEAR_ == '2012')
MK_ocy_chry_2012_biomass <- summarise_at(MK_ocy_chry_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_2012_biomass$Year <- ('2012')
MK_ocy_chry_2012_biomass$subregion <- ('MK')
MK_ocy_chry_2012_biomass$SPECIES_CD <- ('OCY CHRY')

MK_ocy_chry_2012_count <- count(MK_ocy_chry_2012, vars = "SPECIES_CD")

MK_ocy_chry_2012_biomass_count <- cbind(MK_ocy_chry_2012_biomass,MK_ocy_chry_2012_count)


MK_ocy_chry_2014 <- filter(MK_ocy_chry, YEAR_ == '2014')
MK_ocy_chry_2014_biomass <- summarise_at(MK_ocy_chry_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_2014_biomass$Year <- ('2014')
MK_ocy_chry_2014_biomass$subregion <- ('MK')
MK_ocy_chry_2014_biomass$SPECIES_CD <- ('OCY CHRY')

MK_ocy_chry_2014_count <- count(MK_ocy_chry_2014, vars = "SPECIES_CD")

MK_ocy_chry_2014_biomass_count <- cbind(MK_ocy_chry_2014_biomass,MK_ocy_chry_2014_count)


MK_ocy_chry_2016 <- filter(MK_ocy_chry, YEAR_ == '2016')
MK_ocy_chry_2016_biomass <- summarise_at(MK_ocy_chry_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_2016_biomass$Year <- ('2016')
MK_ocy_chry_2016_biomass$subregion <- ('MK')
MK_ocy_chry_2016_biomass$SPECIES_CD <- ('OCY CHRY')

MK_ocy_chry_2016_count <- count(MK_ocy_chry_2016, vars = "SPECIES_CD")

MK_ocy_chry_2016_biomass_count <- cbind(MK_ocy_chry_2016_biomass,MK_ocy_chry_2016_count)


MK_ocy_chry_2018 <- filter(MK_ocy_chry, YEAR_ == '2018')
MK_ocy_chry_2018_biomass <- summarise_at(MK_ocy_chry_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_ocy_chry_2018_biomass$Year <- ('2018')
MK_ocy_chry_2018_biomass$subregion <- ('MK')
MK_ocy_chry_2018_biomass$SPECIES_CD <- ('OCY CHRY')

MK_ocy_chry_2018_count <- count(MK_ocy_chry_2018, vars = "SPECIES_CD")

MK_ocy_chry_2018_biomass_count <- cbind(MK_ocy_chry_2018_biomass,MK_ocy_chry_2018_count)


MK_ocy_chry_all <- rbind(MK_ocy_chry_1999_biomass_count,MK_ocy_chry_2000_biomass_count,MK_ocy_chry_2001_biomass_count,MK_ocy_chry_2002_biomass_count,MK_ocy_chry_2003_biomass_count,
                         MK_ocy_chry_2005_biomass_count,MK_ocy_chry_2006_biomass_count,MK_ocy_chry_2007_biomass_count,
                         MK_ocy_chry_2008_biomass_count,MK_ocy_chry_2009_biomass_count,MK_ocy_chry_2010_biomass_count,MK_ocy_chry_2011_biomass_count,
                         MK_ocy_chry_2012_biomass_count,MK_ocy_chry_2014_biomass_count,MK_ocy_chry_2016_biomass_count,MK_ocy_chry_2018_biomass_count)

MK_ocy_chry_all$vars <- NULL





MK_rho_auro <- filter(MK_snapper, SPECIES_CD == "RHO AURO")
unique(MK_rho_auro$YEAR_)

# MK_rho_auro_1999 <- filter(MK_rho_auro, YEAR_ == '1999')
# MK_rho_auro_1999_biomass <- summarise_at(MK_rho_auro_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_rho_auro_1999_biomass$Year <- ('1999')
# MK_rho_auro_1999_biomass$subregion <- ('MK')
# MK_rho_auro_1999_biomass$SPECIES_CD <- ('RHO AURO')
# 
# MK_rho_auro_1999_count <- count(MK_rho_auro_1999, vars = "SPECIES_CD")
# 
# MK_rho_auro_1999_biomass_count <- cbind(MK_rho_auro_1999_biomass,MK_rho_auro_1999_count)
# 
# 
# 
# MK_rho_auro_2000 <- filter(MK_rho_auro, YEAR_ == '2000')
# MK_rho_auro_2000_biomass <- summarise_at(MK_rho_auro_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_rho_auro_2000_biomass$Year <- ('2000')
# MK_rho_auro_2000_biomass$subregion <- ('MK')
# MK_rho_auro_2000_biomass$SPECIES_CD <- ('RHO AURO')
# 
# MK_rho_auro_2000_count <- count(MK_rho_auro_2000, vars = "SPECIES_CD")
# 
# MK_rho_auro_2000_biomass_count <- cbind(MK_rho_auro_2000_biomass,MK_rho_auro_2000_count)
# 
# MK_rho_auro_2001 <- filter(MK_rho_auro, YEAR_ == '2001')
# MK_rho_auro_2001_biomass <- summarise_at(MK_rho_auro_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_rho_auro_2001_biomass$Year <- ('2001')
# MK_rho_auro_2001_biomass$subregion <- ('MK')
# MK_rho_auro_2001_biomass$SPECIES_CD <- ('RHO AURO')
# 
# MK_rho_auro_2001_count <- count(MK_rho_auro_2001, vars = "SPECIES_CD")
# 
# MK_rho_auro_2001_biomass_count <- cbind(MK_rho_auro_2001_biomass,MK_rho_auro_2001_count)
# 
# 
# MK_rho_auro_2002 <- filter(MK_rho_auro, YEAR_ == '2002')
# MK_rho_auro_2002_biomass <- summarise_at(MK_rho_auro_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_rho_auro_2002_biomass$Year <- ('2002')
# MK_rho_auro_2002_biomass$subregion <- ('MK')
# MK_rho_auro_2002_biomass$SPECIES_CD <- ('RHO AURO')
# 
# MK_rho_auro_2002_count <- count(MK_rho_auro_2002, vars = "SPECIES_CD")
# 
# MK_rho_auro_2002_biomass_count <- cbind(MK_rho_auro_2002_biomass,MK_rho_auro_2002_count)
# 
# 
# MK_rho_auro_2003 <- filter(MK_rho_auro, YEAR_ == '2003')
# MK_rho_auro_2003_biomass <- summarise_at(MK_rho_auro_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_rho_auro_2003_biomass$Year <- ('2003')
# MK_rho_auro_2003_biomass$subregion <- ('MK')
# MK_rho_auro_2003_biomass$SPECIES_CD <- ('RHO AURO')
# 
# MK_rho_auro_2003_count <- count(MK_rho_auro_2003, vars = "SPECIES_CD")
# 
# MK_rho_auro_2003_biomass_count <- cbind(MK_rho_auro_2003_biomass,MK_rho_auro_2003_count)
# 
# 
# MK_rho_auro_2004 <- filter(MK_rho_auro, YEAR_ == '2004')
# MK_rho_auro_2004_biomass <- summarise_at(MK_rho_auro_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_rho_auro_2004_biomass$Year <- ('2004')
# MK_rho_auro_2004_biomass$subregion <- ('MK')
# MK_rho_auro_2004_biomass$SPECIES_CD <- ('RHO AURO')
# 
# MK_rho_auro_2004_count <- count(MK_rho_auro_2004, vars = "SPECIES_CD")
# 
# MK_rho_auro_2004_biomass_count <- cbind(MK_rho_auro_2004_biomass,MK_rho_auro_2004_count)
# 
# 
# MK_rho_auro_2005 <- filter(MK_rho_auro, YEAR_ == '2005')
# MK_rho_auro_2005_biomass <- summarise_at(MK_rho_auro_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_rho_auro_2005_biomass$Year <- ('2005')
# MK_rho_auro_2005_biomass$subregion <- ('MK')
# MK_rho_auro_2005_biomass$SPECIES_CD <- ('RHO AURO')
# 
# MK_rho_auro_2005_count <- count(MK_rho_auro_2005, vars = "SPECIES_CD")
# 
# MK_rho_auro_2005_biomass_count <- cbind(MK_rho_auro_2005_biomass,MK_rho_auro_2005_count)
# 
# 
# MK_rho_auro_2006 <- filter(MK_rho_auro, YEAR_ == '2006')
# MK_rho_auro_2006_biomass <- summarise_at(MK_rho_auro_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_rho_auro_2006_biomass$Year <- ('2006')
# MK_rho_auro_2006_biomass$subregion <- ('MK')
# MK_rho_auro_2006_biomass$SPECIES_CD <- ('RHO AURO')
# 
# 
# MK_rho_auro_2006_count <- count(MK_rho_auro_2006, vars = "SPECIES_CD")
# 
# MK_rho_auro_2006_biomass_count <- cbind(MK_rho_auro_2006_biomass,MK_rho_auro_2006_count)
# 
# 
# MK_rho_auro_2007 <- filter(MK_rho_auro, YEAR_ == '2007')
# MK_rho_auro_2007_biomass <- summarise_at(MK_rho_auro_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_rho_auro_2007_biomass$Year <- ('2007')
# MK_rho_auro_2007_biomass$subregion <- ('MK')
# MK_rho_auro_2007_biomass$SPECIES_CD <- ('RHO AURO')
# 
# MK_rho_auro_2007_count <- count(MK_rho_auro_2007, vars = "SPECIES_CD")
# 
# MK_rho_auro_2007_biomass_count <- cbind(MK_rho_auro_2007_biomass,MK_rho_auro_2007_count)
# 
# 
# MK_rho_auro_2008 <- filter(MK_rho_auro, YEAR_ == '2008')
# MK_rho_auro_2008_biomass <- summarise_at(MK_rho_auro_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_rho_auro_2008_biomass$Year <- ('2008')
# MK_rho_auro_2008_biomass$subregion <- ('MK')
# MK_rho_auro_2008_biomass$SPECIES_CD <- ('RHO AURO')
# 
# MK_rho_auro_2008_count <- count(MK_rho_auro_2008, vars = "SPECIES_CD")
# 
# MK_rho_auro_2008_biomass_count <- cbind(MK_rho_auro_2008_biomass,MK_rho_auro_2008_count)


MK_rho_auro_2009 <- filter(MK_rho_auro, YEAR_ == '2009')
MK_rho_auro_2009_biomass <- summarise_at(MK_rho_auro_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_rho_auro_2009_biomass$Year <- ('2009')
MK_rho_auro_2009_biomass$subregion <- ('MK')
MK_rho_auro_2009_biomass$SPECIES_CD <- ('RHO AURO')

MK_rho_auro_2009_count <- count(MK_rho_auro_2009, vars = "SPECIES_CD")

MK_rho_auro_2009_biomass_count <- cbind(MK_rho_auro_2009_biomass,MK_rho_auro_2009_count)


# MK_rho_auro_2010 <- filter(MK_rho_auro, YEAR_ == '2010')
# MK_rho_auro_2010_biomass <- summarise_at(MK_rho_auro_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_rho_auro_2010_biomass$Year <- ('2010')
# MK_rho_auro_2010_biomass$subregion <- ('MK')
# MK_rho_auro_2010_biomass$SPECIES_CD <- ('RHO AURO')
# 
# MK_rho_auro_2010_count <- count(MK_rho_auro_2010, vars = "SPECIES_CD")
# 
# MK_rho_auro_2010_biomass_count <- cbind(MK_rho_auro_2010_biomass,MK_rho_auro_2010_count)
# 
# 
# MK_rho_auro_2011 <- filter(MK_rho_auro, YEAR_ == '2011')
# MK_rho_auro_2011_biomass <- summarise_at(MK_rho_auro_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_rho_auro_2011_biomass$Year <- ('2011')
# MK_rho_auro_2011_biomass$subregion <- ('MK')
# MK_rho_auro_2011_biomass$SPECIES_CD <- ('RHO AURO')
# 
# MK_rho_auro_2011_count <- count(MK_rho_auro_2011, vars = "SPECIES_CD")
# 
# MK_rho_auro_2011_biomass_count <- cbind(MK_rho_auro_2011_biomass,MK_rho_auro_2011_count)
# 
# 
# MK_rho_auro_2012 <- filter(MK_rho_auro, YEAR_ == '2012')
# MK_rho_auro_2012_biomass <- summarise_at(MK_rho_auro_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_rho_auro_2012_biomass$Year <- ('2012')
# MK_rho_auro_2012_biomass$subregion <- ('MK')
# MK_rho_auro_2012_biomass$SPECIES_CD <- ('RHO AURO')
# 
# MK_rho_auro_2012_count <- count(MK_rho_auro_2012, vars = "SPECIES_CD")
# 
# MK_rho_auro_2012_biomass_count <- cbind(MK_rho_auro_2012_biomass,MK_rho_auro_2012_count)
# 
# 
# MK_rho_auro_2014 <- filter(MK_rho_auro, YEAR_ == '2014')
# MK_rho_auro_2014_biomass <- summarise_at(MK_rho_auro_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_rho_auro_2014_biomass$Year <- ('2014')
# MK_rho_auro_2014_biomass$subregion <- ('MK')
# MK_rho_auro_2014_biomass$SPECIES_CD <- ('RHO AURO')
# 
# MK_rho_auro_2014_count <- count(MK_rho_auro_2014, vars = "SPECIES_CD")
# 
# MK_rho_auro_2014_biomass_count <- cbind(MK_rho_auro_2014_biomass,MK_rho_auro_2014_count)
# 
# 
# MK_rho_auro_2016 <- filter(MK_rho_auro, YEAR_ == '2016')
# MK_rho_auro_2016_biomass <- summarise_at(MK_rho_auro_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_rho_auro_2016_biomass$Year <- ('2016')
# MK_rho_auro_2016_biomass$subregion <- ('MK')
# MK_rho_auro_2016_biomass$SPECIES_CD <- ('RHO AURO')
# 
# MK_rho_auro_2016_count <- count(MK_rho_auro_2016, vars = "SPECIES_CD")
# 
# MK_rho_auro_2016_biomass_count <- cbind(MK_rho_auro_2016_biomass,MK_rho_auro_2016_count)
# 
# 
# MK_rho_auro_2018 <- filter(MK_rho_auro, YEAR_ == '2018')
# MK_rho_auro_2018_biomass <- summarise_at(MK_rho_auro_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_rho_auro_2018_biomass$Year <- ('2018')
# MK_rho_auro_2018_biomass$subregion <- ('MK')
# MK_rho_auro_2018_biomass$SPECIES_CD <- ('RHO AURO')
# 
# MK_rho_auro_2018_count <- count(MK_rho_auro_2018, vars = "SPECIES_CD")
# 
# MK_rho_auro_2018_biomass_count <- cbind(MK_rho_auro_2018_biomass,MK_rho_auro_2018_count)
# 

# MK_rho_auro_all <- rbind(MK_rho_auro_1999_biomass_count,MK_rho_auro_2000_biomass_count,MK_rho_auro_2001_biomass_count,MK_rho_auro_2002_biomass_count,MK_rho_auro_2003_biomass_count,
#                          MK_rho_auro_2004_biomass_count,MK_rho_auro_2005_biomass_count,MK_rho_auro_2006_biomass_count,MK_rho_auro_2007_biomass_count,
#                          MK_rho_auro_2008_biomass_count,MK_rho_auro_2009_biomass_count,MK_rho_auro_2010_biomass_count,MK_rho_auro_2011_biomass_count,
#                          MK_rho_auro_2012_biomass_count,MK_rho_auro_2014_biomass_count,MK_rho_auro_2016_biomass_count,MK_rho_auro_2018_biomass_count)

MK_rho_auro_all <- MK_rho_auro_2009_biomass_count

MK_rho_auro_all$vars <- NULL




# MK_snappers_combined <- rbind(MK_rho_auro_all,MK_lut_anal_all,
#                               MK_lut_apod_all,MK_lut_bucc_all,MK_lut_jocu_all,
#                               MK_lut_maho_all,MK_lut_syna_all,MK_ocy_chry_all)
# 
# #export(MK_snappers_combined,"C:/Users/cara.estes/Documents/EwE_data/MK_snappers.csv")




### UPPER KEYS SNAPPERS


UK_snapper <- merge(UK_snapper_grouper, snapper, by = c("SPECIES_CD"))

## get different type of snappers 
unique(UK_snapper$SPECIES_CD)

##"LUT ANAL" "LUT APOD" "LUT CYAN" "LUT GRIS" "LUT JOCU" "LUT MAHO" "LUT SYNA" "OCY CHRY"

## get the years for all the data to sum by 
UK_lut_anal <- filter(UK_snapper, SPECIES_CD == "LUT ANAL")
unique(UK_lut_anal$YEAR_)

# 2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2014,2016,2018

UK_lut_anal_2000 <- filter(UK_lut_anal, YEAR_ == '2000')
UK_lut_anal_2000_biomass <- summarise_at(UK_lut_anal_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_anal_2000_biomass$Year <- ('2000')
UK_lut_anal_2000_biomass$subregion <- ('UK')
UK_lut_anal_2000_biomass$SPECIES_CD <- ('LUT ANAL')

UK_lut_anal_2000_count <- count(UK_lut_anal_2000, vars = "SPECIES_CD")

UK_lut_anal_2000_biomass_count <- cbind(UK_lut_anal_2000_biomass,UK_lut_anal_2000_count)

UK_lut_anal_2001 <- filter(UK_lut_anal, YEAR_ == '2001')
UK_lut_anal_2001_biomass <- summarise_at(UK_lut_anal_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_anal_2001_biomass$Year <- ('2001')
UK_lut_anal_2001_biomass$subregion <- ('UK')
UK_lut_anal_2001_biomass$SPECIES_CD <- ('LUT ANAL')

UK_lut_anal_2001_count <- count(UK_lut_anal_2001, vars = "SPECIES_CD")

UK_lut_anal_2001_biomass_count <- cbind(UK_lut_anal_2001_biomass,UK_lut_anal_2001_count)


UK_lut_anal_2002 <- filter(UK_lut_anal, YEAR_ == '2002')
UK_lut_anal_2002_biomass <- summarise_at(UK_lut_anal_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_anal_2002_biomass$Year <- ('2002')
UK_lut_anal_2002_biomass$subregion <- ('UK')
UK_lut_anal_2002_biomass$SPECIES_CD <- ('LUT ANAL')

UK_lut_anal_2002_count <- count(UK_lut_anal_2002, vars = "SPECIES_CD")

UK_lut_anal_2002_biomass_count <- cbind(UK_lut_anal_2002_biomass,UK_lut_anal_2002_count)


UK_lut_anal_2003 <- filter(UK_lut_anal, YEAR_ == '2003')
UK_lut_anal_2003_biomass <- summarise_at(UK_lut_anal_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_anal_2003_biomass$Year <- ('2003')
UK_lut_anal_2003_biomass$subregion <- ('UK')
UK_lut_anal_2003_biomass$SPECIES_CD <- ('LUT ANAL')

UK_lut_anal_2003_count <- count(UK_lut_anal_2003, vars = "SPECIES_CD")

UK_lut_anal_2003_biomass_count <- cbind(UK_lut_anal_2003_biomass,UK_lut_anal_2003_count)


UK_lut_anal_2004 <- filter(UK_lut_anal, YEAR_ == '2004')
UK_lut_anal_2004_biomass <- summarise_at(UK_lut_anal_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_anal_2004_biomass$Year <- ('2004')
UK_lut_anal_2004_biomass$subregion <- ('UK')
UK_lut_anal_2004_biomass$SPECIES_CD <- ('LUT ANAL')

UK_lut_anal_2004_count <- count(UK_lut_anal_2004, vars = "SPECIES_CD")

UK_lut_anal_2004_biomass_count <- cbind(UK_lut_anal_2004_biomass,UK_lut_anal_2004_count)


UK_lut_anal_2005 <- filter(UK_lut_anal, YEAR_ == '2005')
UK_lut_anal_2005_biomass <- summarise_at(UK_lut_anal_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_anal_2005_biomass$Year <- ('2005')
UK_lut_anal_2005_biomass$subregion <- ('UK')
UK_lut_anal_2005_biomass$SPECIES_CD <- ('LUT ANAL')

UK_lut_anal_2005_count <- count(UK_lut_anal_2005, vars = "SPECIES_CD")

UK_lut_anal_2005_biomass_count <- cbind(UK_lut_anal_2005_biomass,UK_lut_anal_2005_count)


UK_lut_anal_2006 <- filter(UK_lut_anal, YEAR_ == '2006')
UK_lut_anal_2006_biomass <- summarise_at(UK_lut_anal_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_anal_2006_biomass$Year <- ('2006')
UK_lut_anal_2006_biomass$subregion <- ('UK')
UK_lut_anal_2006_biomass$SPECIES_CD <- ('LUT ANAL')


UK_lut_anal_2006_count <- count(UK_lut_anal_2006, vars = "SPECIES_CD")

UK_lut_anal_2006_biomass_count <- cbind(UK_lut_anal_2006_biomass,UK_lut_anal_2006_count)


UK_lut_anal_2007 <- filter(UK_lut_anal, YEAR_ == '2007')
UK_lut_anal_2007_biomass <- summarise_at(UK_lut_anal_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_anal_2007_biomass$Year <- ('2007')
UK_lut_anal_2007_biomass$subregion <- ('UK')
UK_lut_anal_2007_biomass$SPECIES_CD <- ('LUT ANAL')

UK_lut_anal_2007_count <- count(UK_lut_anal_2007, vars = "SPECIES_CD")

UK_lut_anal_2007_biomass_count <- cbind(UK_lut_anal_2007_biomass,UK_lut_anal_2007_count)


UK_lut_anal_2008 <- filter(UK_lut_anal, YEAR_ == '2008')
UK_lut_anal_2008_biomass <- summarise_at(UK_lut_anal_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_anal_2008_biomass$Year <- ('2008')
UK_lut_anal_2008_biomass$subregion <- ('UK')
UK_lut_anal_2008_biomass$SPECIES_CD <- ('LUT ANAL')

UK_lut_anal_2008_count <- count(UK_lut_anal_2008, vars = "SPECIES_CD")

UK_lut_anal_2008_biomass_count <- cbind(UK_lut_anal_2008_biomass,UK_lut_anal_2008_count)


UK_lut_anal_2009 <- filter(UK_lut_anal, YEAR_ == '2009')
UK_lut_anal_2009_biomass <- summarise_at(UK_lut_anal_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_anal_2009_biomass$Year <- ('2009')
UK_lut_anal_2009_biomass$subregion <- ('UK')
UK_lut_anal_2009_biomass$SPECIES_CD <- ('LUT ANAL')

UK_lut_anal_2009_count <- count(UK_lut_anal_2009, vars = "SPECIES_CD")

UK_lut_anal_2009_biomass_count <- cbind(UK_lut_anal_2009_biomass,UK_lut_anal_2009_count)


UK_lut_anal_2010 <- filter(UK_lut_anal, YEAR_ == '2010')
UK_lut_anal_2010_biomass <- summarise_at(UK_lut_anal_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_anal_2010_biomass$Year <- ('2010')
UK_lut_anal_2010_biomass$subregion <- ('UK')
UK_lut_anal_2010_biomass$SPECIES_CD <- ('LUT ANAL')

UK_lut_anal_2010_count <- count(UK_lut_anal_2010, vars = "SPECIES_CD")

UK_lut_anal_2010_biomass_count <- cbind(UK_lut_anal_2010_biomass,UK_lut_anal_2010_count)


UK_lut_anal_2011 <- filter(UK_lut_anal, YEAR_ == '2011')
UK_lut_anal_2011_biomass <- summarise_at(UK_lut_anal_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_anal_2011_biomass$Year <- ('2011')
UK_lut_anal_2011_biomass$subregion <- ('UK')
UK_lut_anal_2011_biomass$SPECIES_CD <- ('LUT ANAL')

UK_lut_anal_2011_count <- count(UK_lut_anal_2011, vars = "SPECIES_CD")

UK_lut_anal_2011_biomass_count <- cbind(UK_lut_anal_2011_biomass,UK_lut_anal_2011_count)


UK_lut_anal_2012 <- filter(UK_lut_anal, YEAR_ == '2012')
UK_lut_anal_2012_biomass <- summarise_at(UK_lut_anal_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_anal_2012_biomass$Year <- ('2012')
UK_lut_anal_2012_biomass$subregion <- ('UK')
UK_lut_anal_2012_biomass$SPECIES_CD <- ('LUT ANAL')

UK_lut_anal_2012_count <- count(UK_lut_anal_2012, vars = "SPECIES_CD")

UK_lut_anal_2012_biomass_count <- cbind(UK_lut_anal_2012_biomass,UK_lut_anal_2012_count)


UK_lut_anal_2014 <- filter(UK_lut_anal, YEAR_ == '2014')
UK_lut_anal_2014_biomass <- summarise_at(UK_lut_anal_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_anal_2014_biomass$Year <- ('2014')
UK_lut_anal_2014_biomass$subregion <- ('UK')
UK_lut_anal_2014_biomass$SPECIES_CD <- ('LUT ANAL')

UK_lut_anal_2014_count <- count(UK_lut_anal_2014, vars = "SPECIES_CD")

UK_lut_anal_2014_biomass_count <- cbind(UK_lut_anal_2014_biomass,UK_lut_anal_2014_count)


UK_lut_anal_2016 <- filter(UK_lut_anal, YEAR_ == '2016')
UK_lut_anal_2016_biomass <- summarise_at(UK_lut_anal_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_anal_2016_biomass$Year <- ('2016')
UK_lut_anal_2016_biomass$subregion <- ('UK')
UK_lut_anal_2016_biomass$SPECIES_CD <- ('LUT ANAL')

UK_lut_anal_2016_count <- count(UK_lut_anal_2016, vars = "SPECIES_CD")

UK_lut_anal_2016_biomass_count <- cbind(UK_lut_anal_2016_biomass,UK_lut_anal_2016_count)


UK_lut_anal_2018 <- filter(UK_lut_anal, YEAR_ == '2018')
UK_lut_anal_2018_biomass <- summarise_at(UK_lut_anal_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_anal_2018_biomass$Year <- ('2018')
UK_lut_anal_2018_biomass$subregion <- ('UK')
UK_lut_anal_2018_biomass$SPECIES_CD <- ('LUT ANAL')

UK_lut_anal_2018_count <- count(UK_lut_anal_2018, vars = "SPECIES_CD")

UK_lut_anal_2018_biomass_count <- cbind(UK_lut_anal_2018_biomass,UK_lut_anal_2018_count)


UK_lut_anal_all <- rbind(UK_lut_anal_2000_biomass_count,UK_lut_anal_2001_biomass_count,UK_lut_anal_2002_biomass_count,UK_lut_anal_2003_biomass_count,
                         UK_lut_anal_2004_biomass_count,UK_lut_anal_2005_biomass_count,UK_lut_anal_2006_biomass_count,UK_lut_anal_2007_biomass_count,
                         UK_lut_anal_2008_biomass_count,UK_lut_anal_2009_biomass_count,UK_lut_anal_2010_biomass_count,UK_lut_anal_2011_biomass_count,
                         UK_lut_anal_2012_biomass_count,UK_lut_anal_2014_biomass_count,UK_lut_anal_2016_biomass_count,UK_lut_anal_2018_biomass_count)

UK_lut_anal_all$vars <- NULL



UK_lut_apod <- filter(UK_snapper, SPECIES_CD == "LUT APOD")
unique(UK_lut_apod$YEAR_)

UK_lut_apod_1999 <- filter(UK_lut_apod, YEAR_ == '1999')
UK_lut_apod_1999_biomass <- summarise_at(UK_lut_apod_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_1999_biomass$Year <- ('1999')
UK_lut_apod_1999_biomass$subregion <- ('UK')
UK_lut_apod_1999_biomass$SPECIES_CD <- ('LUT APOD')

UK_lut_apod_1999_count <- count(UK_lut_apod_1999, vars = "SPECIES_CD")

UK_lut_apod_1999_biomass_count <- cbind(UK_lut_apod_1999_biomass,UK_lut_apod_1999_count)



UK_lut_apod_2000 <- filter(UK_lut_apod, YEAR_ == '2000')
UK_lut_apod_2000_biomass <- summarise_at(UK_lut_apod_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_2000_biomass$Year <- ('2000')
UK_lut_apod_2000_biomass$subregion <- ('UK')
UK_lut_apod_2000_biomass$SPECIES_CD <- ('LUT APOD')

UK_lut_apod_2000_count <- count(UK_lut_apod_2000, vars = "SPECIES_CD")

UK_lut_apod_2000_biomass_count <- cbind(UK_lut_apod_2000_biomass,UK_lut_apod_2000_count)

UK_lut_apod_2001 <- filter(UK_lut_apod, YEAR_ == '2001')
UK_lut_apod_2001_biomass <- summarise_at(UK_lut_apod_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_2001_biomass$Year <- ('2001')
UK_lut_apod_2001_biomass$subregion <- ('UK')
UK_lut_apod_2001_biomass$SPECIES_CD <- ('LUT APOD')

UK_lut_apod_2001_count <- count(UK_lut_apod_2001, vars = "SPECIES_CD")

UK_lut_apod_2001_biomass_count <- cbind(UK_lut_apod_2001_biomass,UK_lut_apod_2001_count)


UK_lut_apod_2002 <- filter(UK_lut_apod, YEAR_ == '2002')
UK_lut_apod_2002_biomass <- summarise_at(UK_lut_apod_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_2002_biomass$Year <- ('2002')
UK_lut_apod_2002_biomass$subregion <- ('UK')
UK_lut_apod_2002_biomass$SPECIES_CD <- ('LUT APOD')

UK_lut_apod_2002_count <- count(UK_lut_apod_2002, vars = "SPECIES_CD")

UK_lut_apod_2002_biomass_count <- cbind(UK_lut_apod_2002_biomass,UK_lut_apod_2002_count)


UK_lut_apod_2003 <- filter(UK_lut_apod, YEAR_ == '2003')
UK_lut_apod_2003_biomass <- summarise_at(UK_lut_apod_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_2003_biomass$Year <- ('2003')
UK_lut_apod_2003_biomass$subregion <- ('UK')
UK_lut_apod_2003_biomass$SPECIES_CD <- ('LUT APOD')

UK_lut_apod_2003_count <- count(UK_lut_apod_2003, vars = "SPECIES_CD")

UK_lut_apod_2003_biomass_count <- cbind(UK_lut_apod_2003_biomass,UK_lut_apod_2003_count)


UK_lut_apod_2004 <- filter(UK_lut_apod, YEAR_ == '2004')
UK_lut_apod_2004_biomass <- summarise_at(UK_lut_apod_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_2004_biomass$Year <- ('2004')
UK_lut_apod_2004_biomass$subregion <- ('UK')
UK_lut_apod_2004_biomass$SPECIES_CD <- ('LUT APOD')

UK_lut_apod_2004_count <- count(UK_lut_apod_2004, vars = "SPECIES_CD")

UK_lut_apod_2004_biomass_count <- cbind(UK_lut_apod_2004_biomass,UK_lut_apod_2004_count)


UK_lut_apod_2005 <- filter(UK_lut_apod, YEAR_ == '2005')
UK_lut_apod_2005_biomass <- summarise_at(UK_lut_apod_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_2005_biomass$Year <- ('2005')
UK_lut_apod_2005_biomass$subregion <- ('UK')
UK_lut_apod_2005_biomass$SPECIES_CD <- ('LUT APOD')

UK_lut_apod_2005_count <- count(UK_lut_apod_2005, vars = "SPECIES_CD")

UK_lut_apod_2005_biomass_count <- cbind(UK_lut_apod_2005_biomass,UK_lut_apod_2005_count)


UK_lut_apod_2006 <- filter(UK_lut_apod, YEAR_ == '2006')
UK_lut_apod_2006_biomass <- summarise_at(UK_lut_apod_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_2006_biomass$Year <- ('2006')
UK_lut_apod_2006_biomass$subregion <- ('UK')
UK_lut_apod_2006_biomass$SPECIES_CD <- ('LUT APOD')


UK_lut_apod_2006_count <- count(UK_lut_apod_2006, vars = "SPECIES_CD")

UK_lut_apod_2006_biomass_count <- cbind(UK_lut_apod_2006_biomass,UK_lut_apod_2006_count)


UK_lut_apod_2007 <- filter(UK_lut_apod, YEAR_ == '2007')
UK_lut_apod_2007_biomass <- summarise_at(UK_lut_apod_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_2007_biomass$Year <- ('2007')
UK_lut_apod_2007_biomass$subregion <- ('UK')
UK_lut_apod_2007_biomass$SPECIES_CD <- ('LUT APOD')

UK_lut_apod_2007_count <- count(UK_lut_apod_2007, vars = "SPECIES_CD")

UK_lut_apod_2007_biomass_count <- cbind(UK_lut_apod_2007_biomass,UK_lut_apod_2007_count)


UK_lut_apod_2008 <- filter(UK_lut_apod, YEAR_ == '2008')
UK_lut_apod_2008_biomass <- summarise_at(UK_lut_apod_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_2008_biomass$Year <- ('2008')
UK_lut_apod_2008_biomass$subregion <- ('UK')
UK_lut_apod_2008_biomass$SPECIES_CD <- ('LUT APOD')

UK_lut_apod_2008_count <- count(UK_lut_apod_2008, vars = "SPECIES_CD")

UK_lut_apod_2008_biomass_count <- cbind(UK_lut_apod_2008_biomass,UK_lut_apod_2008_count)


UK_lut_apod_2009 <- filter(UK_lut_apod, YEAR_ == '2009')
UK_lut_apod_2009_biomass <- summarise_at(UK_lut_apod_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_2009_biomass$Year <- ('2009')
UK_lut_apod_2009_biomass$subregion <- ('UK')
UK_lut_apod_2009_biomass$SPECIES_CD <- ('LUT APOD')

UK_lut_apod_2009_count <- count(UK_lut_apod_2009, vars = "SPECIES_CD")

UK_lut_apod_2009_biomass_count <- cbind(UK_lut_apod_2009_biomass,UK_lut_apod_2009_count)


UK_lut_apod_2010 <- filter(UK_lut_apod, YEAR_ == '2010')
UK_lut_apod_2010_biomass <- summarise_at(UK_lut_apod_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_2010_biomass$Year <- ('2010')
UK_lut_apod_2010_biomass$subregion <- ('UK')
UK_lut_apod_2010_biomass$SPECIES_CD <- ('LUT APOD')

UK_lut_apod_2010_count <- count(UK_lut_apod_2010, vars = "SPECIES_CD")

UK_lut_apod_2010_biomass_count <- cbind(UK_lut_apod_2010_biomass,UK_lut_apod_2010_count)


UK_lut_apod_2011 <- filter(UK_lut_apod, YEAR_ == '2011')
UK_lut_apod_2011_biomass <- summarise_at(UK_lut_apod_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_2011_biomass$Year <- ('2011')
UK_lut_apod_2011_biomass$subregion <- ('UK')
UK_lut_apod_2011_biomass$SPECIES_CD <- ('LUT APOD')

UK_lut_apod_2011_count <- count(UK_lut_apod_2011, vars = "SPECIES_CD")

UK_lut_apod_2011_biomass_count <- cbind(UK_lut_apod_2011_biomass,UK_lut_apod_2011_count)


UK_lut_apod_2012 <- filter(UK_lut_apod, YEAR_ == '2012')
UK_lut_apod_2012_biomass <- summarise_at(UK_lut_apod_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_2012_biomass$Year <- ('2012')
UK_lut_apod_2012_biomass$subregion <- ('UK')
UK_lut_apod_2012_biomass$SPECIES_CD <- ('LUT APOD')

UK_lut_apod_2012_count <- count(UK_lut_apod_2012, vars = "SPECIES_CD")

UK_lut_apod_2012_biomass_count <- cbind(UK_lut_apod_2012_biomass,UK_lut_apod_2012_count)


UK_lut_apod_2014 <- filter(UK_lut_apod, YEAR_ == '2014')
UK_lut_apod_2014_biomass <- summarise_at(UK_lut_apod_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_2014_biomass$Year <- ('2014')
UK_lut_apod_2014_biomass$subregion <- ('UK')
UK_lut_apod_2014_biomass$SPECIES_CD <- ('LUT APOD')

UK_lut_apod_2014_count <- count(UK_lut_apod_2014, vars = "SPECIES_CD")

UK_lut_apod_2014_biomass_count <- cbind(UK_lut_apod_2014_biomass,UK_lut_apod_2014_count)


UK_lut_apod_2016 <- filter(UK_lut_apod, YEAR_ == '2016')
UK_lut_apod_2016_biomass <- summarise_at(UK_lut_apod_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_2016_biomass$Year <- ('2016')
UK_lut_apod_2016_biomass$subregion <- ('UK')
UK_lut_apod_2016_biomass$SPECIES_CD <- ('LUT APOD')

UK_lut_apod_2016_count <- count(UK_lut_apod_2016, vars = "SPECIES_CD")

UK_lut_apod_2016_biomass_count <- cbind(UK_lut_apod_2016_biomass,UK_lut_apod_2016_count)


UK_lut_apod_2018 <- filter(UK_lut_apod, YEAR_ == '2018')
UK_lut_apod_2018_biomass <- summarise_at(UK_lut_apod_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_apod_2018_biomass$Year <- ('2018')
UK_lut_apod_2018_biomass$subregion <- ('UK')
UK_lut_apod_2018_biomass$SPECIES_CD <- ('LUT APOD')

UK_lut_apod_2018_count <- count(UK_lut_apod_2018, vars = "SPECIES_CD")

UK_lut_apod_2018_biomass_count <- cbind(UK_lut_apod_2018_biomass,UK_lut_apod_2018_count)


UK_lut_apod_all <- rbind(UK_lut_apod_1999_biomass_count,UK_lut_apod_2000_biomass_count,UK_lut_apod_2001_biomass_count,UK_lut_apod_2002_biomass_count,UK_lut_apod_2003_biomass_count,
                         UK_lut_apod_2004_biomass_count,UK_lut_apod_2005_biomass_count,UK_lut_apod_2006_biomass_count,UK_lut_apod_2007_biomass_count,
                         UK_lut_apod_2008_biomass_count,UK_lut_apod_2009_biomass_count,UK_lut_apod_2010_biomass_count,UK_lut_apod_2011_biomass_count,
                         UK_lut_apod_2012_biomass_count,UK_lut_apod_2014_biomass_count,UK_lut_apod_2016_biomass_count,UK_lut_apod_2018_biomass_count)

UK_lut_apod_all$vars <- NULL





# UK_lut_bucc <- filter(UK_snapper, SPECIES_CD == "LUT BUCC")
# unique(UK_lut_bucc$YEAR_)
# 
# 
# UK_lut_bucc_2011 <- filter(UK_lut_bucc, YEAR_ == '2011')
# UK_lut_bucc_2011_biomass <- summarise_at(UK_lut_bucc_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_bucc_2011_biomass$Year <- ('2011')
# UK_lut_bucc_2011_biomass$subregion <- ('UK')
# UK_lut_bucc_2011_biomass$SPECIES_CD <- ('LUT BUCC')
# 
# UK_lut_bucc_2011_count <- count(UK_lut_bucc_2011, vars = "SPECIES_CD")
# 
# UK_lut_bucc_2011_biomass_count <- cbind(UK_lut_bucc_2011_biomass,UK_lut_bucc_2011_count)
# 
# 
# UK_lut_bucc_2014 <- filter(UK_lut_bucc, YEAR_ == '2014')
# UK_lut_bucc_2014_biomass <- summarise_at(UK_lut_bucc_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_bucc_2014_biomass$Year <- ('2014')
# UK_lut_bucc_2014_biomass$subregion <- ('UK')
# UK_lut_bucc_2014_biomass$SPECIES_CD <- ('LUT BUCC')
# 
# UK_lut_bucc_2014_count <- count(UK_lut_bucc_2014, vars = "SPECIES_CD")
# 
# UK_lut_bucc_2014_biomass_count <- cbind(UK_lut_bucc_2014_biomass,UK_lut_bucc_2014_count)
# 
# 
# UK_lut_bucc_2016 <- filter(UK_lut_bucc, YEAR_ == '2016')
# UK_lut_bucc_2016_biomass <- summarise_at(UK_lut_bucc_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_bucc_2016_biomass$Year <- ('2016')
# UK_lut_bucc_2016_biomass$subregion <- ('UK')
# UK_lut_bucc_2016_biomass$SPECIES_CD <- ('LUT BUCC')
# 
# UK_lut_bucc_2016_count <- count(UK_lut_bucc_2016, vars = "SPECIES_CD")
# 
# UK_lut_bucc_2016_biomass_count <- cbind(UK_lut_bucc_2016_biomass,UK_lut_bucc_2016_count)
# 
# 
# UK_lut_bucc_2018 <- filter(UK_lut_bucc, YEAR_ == '2018')
# UK_lut_bucc_2018_biomass <- summarise_at(UK_lut_bucc_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_bucc_2018_biomass$Year <- ('2018')
# UK_lut_bucc_2018_biomass$subregion <- ('UK')
# UK_lut_bucc_2018_biomass$SPECIES_CD <- ('LUT BUCC')
# 
# UK_lut_bucc_2018_count <- count(UK_lut_bucc_2018, vars = "SPECIES_CD")
# 
# UK_lut_bucc_2018_biomass_count <- cbind(UK_lut_bucc_2018_biomass,UK_lut_bucc_2018_count)
# 
# 
# UK_lut_bucc_all <- rbind(UK_lut_bucc_2011_biomass_count,UK_lut_bucc_2014_biomass_count,UK_lut_bucc_2016_biomass_count,UK_lut_bucc_2018_biomass_count)
# 
# UK_lut_bucc_all$vars <- NULL
# 



UK_lut_cyan <- filter(UK_snapper, SPECIES_CD == "LUT CYAN")
unique(UK_lut_cyan$YEAR_)

UK_lut_cyan_2000 <- filter(UK_lut_cyan, YEAR_ == '2000')
UK_lut_cyan_2000_biomass <- summarise_at(UK_lut_cyan_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_cyan_2000_biomass$Year <- ('2000')
UK_lut_cyan_2000_biomass$subregion <- ('UK')
UK_lut_cyan_2000_biomass$SPECIES_CD <- ('LUT CYAN')

UK_lut_cyan_2000_count <- count(UK_lut_cyan_2000, vars = "SPECIES_CD")

UK_lut_cyan_2000_biomass_count <- cbind(UK_lut_cyan_2000_biomass,UK_lut_cyan_2000_count)


UK_lut_cyan_2002 <- filter(UK_lut_cyan, YEAR_ == '2002')
UK_lut_cyan_2002_biomass <- summarise_at(UK_lut_cyan_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_cyan_2002_biomass$Year <- ('2002')
UK_lut_cyan_2002_biomass$subregion <- ('UK')
UK_lut_cyan_2002_biomass$SPECIES_CD <- ('LUT CYAN')

UK_lut_cyan_2002_count <- count(UK_lut_cyan_2002, vars = "SPECIES_CD")

UK_lut_cyan_2002_biomass_count <- cbind(UK_lut_cyan_2002_biomass,UK_lut_cyan_2002_count)



UK_lut_cyan_2004 <- filter(UK_lut_cyan, YEAR_ == '2004')
UK_lut_cyan_2004_biomass <- summarise_at(UK_lut_cyan_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_cyan_2004_biomass$Year <- ('2004')
UK_lut_cyan_2004_biomass$subregion <- ('UK')
UK_lut_cyan_2004_biomass$SPECIES_CD <- ('LUT CYAN')

UK_lut_cyan_2004_count <- count(UK_lut_cyan_2004, vars = "SPECIES_CD")

UK_lut_cyan_2004_biomass_count <- cbind(UK_lut_cyan_2004_biomass,UK_lut_cyan_2004_count)



UK_lut_cyan_2008 <- filter(UK_lut_cyan, YEAR_ == '2008')
UK_lut_cyan_2008_biomass <- summarise_at(UK_lut_cyan_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_cyan_2008_biomass$Year <- ('2008')
UK_lut_cyan_2008_biomass$subregion <- ('UK')
UK_lut_cyan_2008_biomass$SPECIES_CD <- ('LUT CYAN')

UK_lut_cyan_2008_count <- count(UK_lut_cyan_2008, vars = "SPECIES_CD")

UK_lut_cyan_2008_biomass_count <- cbind(UK_lut_cyan_2008_biomass,UK_lut_cyan_2008_count)


UK_lut_cyan_all <- rbind(UK_lut_cyan_2000_biomass_count,UK_lut_cyan_2002_biomass_count,UK_lut_cyan_2004_biomass_count,UK_lut_cyan_2008_biomass_count)

UK_lut_cyan_all$vars <- NULL





UK_lut_gris <- filter(UK_snapper, SPECIES_CD == "LUT GRIS")
unique(UK_lut_gris$YEAR_)

UK_lut_gris_1999 <- filter(UK_lut_gris, YEAR_ == '1999')
UK_lut_gris_1999_biomass <- summarise_at(UK_lut_gris_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_1999_biomass$Year <- ('1999')
UK_lut_gris_1999_biomass$subregion <- ('UK')
UK_lut_gris_1999_biomass$SPECIES_CD <- ('LUT GRIS')

UK_lut_gris_1999_count <- count(UK_lut_gris_1999, vars = "SPECIES_CD")

UK_lut_gris_1999_biomass_count <- cbind(UK_lut_gris_1999_biomass,UK_lut_gris_1999_count)



UK_lut_gris_2000 <- filter(UK_lut_gris, YEAR_ == '2000')
UK_lut_gris_2000_biomass <- summarise_at(UK_lut_gris_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_2000_biomass$Year <- ('2000')
UK_lut_gris_2000_biomass$subregion <- ('UK')
UK_lut_gris_2000_biomass$SPECIES_CD <- ('LUT GRIS')

UK_lut_gris_2000_count <- count(UK_lut_gris_2000, vars = "SPECIES_CD")

UK_lut_gris_2000_biomass_count <- cbind(UK_lut_gris_2000_biomass,UK_lut_gris_2000_count)

UK_lut_gris_2001 <- filter(UK_lut_gris, YEAR_ == '2001')
UK_lut_gris_2001_biomass <- summarise_at(UK_lut_gris_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_2001_biomass$Year <- ('2001')
UK_lut_gris_2001_biomass$subregion <- ('UK')
UK_lut_gris_2001_biomass$SPECIES_CD <- ('LUT GRIS')

UK_lut_gris_2001_count <- count(UK_lut_gris_2001, vars = "SPECIES_CD")

UK_lut_gris_2001_biomass_count <- cbind(UK_lut_gris_2001_biomass,UK_lut_gris_2001_count)


UK_lut_gris_2002 <- filter(UK_lut_gris, YEAR_ == '2002')
UK_lut_gris_2002_biomass <- summarise_at(UK_lut_gris_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_2002_biomass$Year <- ('2002')
UK_lut_gris_2002_biomass$subregion <- ('UK')
UK_lut_gris_2002_biomass$SPECIES_CD <- ('LUT GRIS')

UK_lut_gris_2002_count <- count(UK_lut_gris_2002, vars = "SPECIES_CD")

UK_lut_gris_2002_biomass_count <- cbind(UK_lut_gris_2002_biomass,UK_lut_gris_2002_count)


UK_lut_gris_2003 <- filter(UK_lut_gris, YEAR_ == '2003')
UK_lut_gris_2003_biomass <- summarise_at(UK_lut_gris_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_2003_biomass$Year <- ('2003')
UK_lut_gris_2003_biomass$subregion <- ('UK')
UK_lut_gris_2003_biomass$SPECIES_CD <- ('LUT GRIS')

UK_lut_gris_2003_count <- count(UK_lut_gris_2003, vars = "SPECIES_CD")

UK_lut_gris_2003_biomass_count <- cbind(UK_lut_gris_2003_biomass,UK_lut_gris_2003_count)


UK_lut_gris_2004 <- filter(UK_lut_gris, YEAR_ == '2004')
UK_lut_gris_2004_biomass <- summarise_at(UK_lut_gris_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_2004_biomass$Year <- ('2004')
UK_lut_gris_2004_biomass$subregion <- ('UK')
UK_lut_gris_2004_biomass$SPECIES_CD <- ('LUT GRIS')

UK_lut_gris_2004_count <- count(UK_lut_gris_2004, vars = "SPECIES_CD")

UK_lut_gris_2004_biomass_count <- cbind(UK_lut_gris_2004_biomass,UK_lut_gris_2004_count)


UK_lut_gris_2005 <- filter(UK_lut_gris, YEAR_ == '2005')
UK_lut_gris_2005_biomass <- summarise_at(UK_lut_gris_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_2005_biomass$Year <- ('2005')
UK_lut_gris_2005_biomass$subregion <- ('UK')
UK_lut_gris_2005_biomass$SPECIES_CD <- ('LUT GRIS')

UK_lut_gris_2005_count <- count(UK_lut_gris_2005, vars = "SPECIES_CD")

UK_lut_gris_2005_biomass_count <- cbind(UK_lut_gris_2005_biomass,UK_lut_gris_2005_count)


UK_lut_gris_2006 <- filter(UK_lut_gris, YEAR_ == '2006')
UK_lut_gris_2006_biomass <- summarise_at(UK_lut_gris_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_2006_biomass$Year <- ('2006')
UK_lut_gris_2006_biomass$subregion <- ('UK')
UK_lut_gris_2006_biomass$SPECIES_CD <- ('LUT GRIS')


UK_lut_gris_2006_count <- count(UK_lut_gris_2006, vars = "SPECIES_CD")

UK_lut_gris_2006_biomass_count <- cbind(UK_lut_gris_2006_biomass,UK_lut_gris_2006_count)


UK_lut_gris_2007 <- filter(UK_lut_gris, YEAR_ == '2007')
UK_lut_gris_2007_biomass <- summarise_at(UK_lut_gris_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_2007_biomass$Year <- ('2007')
UK_lut_gris_2007_biomass$subregion <- ('UK')
UK_lut_gris_2007_biomass$SPECIES_CD <- ('LUT GRIS')

UK_lut_gris_2007_count <- count(UK_lut_gris_2007, vars = "SPECIES_CD")

UK_lut_gris_2007_biomass_count <- cbind(UK_lut_gris_2007_biomass,UK_lut_gris_2007_count)


UK_lut_gris_2008 <- filter(UK_lut_gris, YEAR_ == '2008')
UK_lut_gris_2008_biomass <- summarise_at(UK_lut_gris_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_2008_biomass$Year <- ('2008')
UK_lut_gris_2008_biomass$subregion <- ('UK')
UK_lut_gris_2008_biomass$SPECIES_CD <- ('LUT GRIS')

UK_lut_gris_2008_count <- count(UK_lut_gris_2008, vars = "SPECIES_CD")

UK_lut_gris_2008_biomass_count <- cbind(UK_lut_gris_2008_biomass,UK_lut_gris_2008_count)


UK_lut_gris_2009 <- filter(UK_lut_gris, YEAR_ == '2009')
UK_lut_gris_2009_biomass <- summarise_at(UK_lut_gris_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_2009_biomass$Year <- ('2009')
UK_lut_gris_2009_biomass$subregion <- ('UK')
UK_lut_gris_2009_biomass$SPECIES_CD <- ('LUT GRIS')

UK_lut_gris_2009_count <- count(UK_lut_gris_2009, vars = "SPECIES_CD")

UK_lut_gris_2009_biomass_count <- cbind(UK_lut_gris_2009_biomass,UK_lut_gris_2009_count)


UK_lut_gris_2010 <- filter(UK_lut_gris, YEAR_ == '2010')
UK_lut_gris_2010_biomass <- summarise_at(UK_lut_gris_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_2010_biomass$Year <- ('2010')
UK_lut_gris_2010_biomass$subregion <- ('UK')
UK_lut_gris_2010_biomass$SPECIES_CD <- ('LUT GRIS')

UK_lut_gris_2010_count <- count(UK_lut_gris_2010, vars = "SPECIES_CD")

UK_lut_gris_2010_biomass_count <- cbind(UK_lut_gris_2010_biomass,UK_lut_gris_2010_count)


UK_lut_gris_2011 <- filter(UK_lut_gris, YEAR_ == '2011')
UK_lut_gris_2011_biomass <- summarise_at(UK_lut_gris_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_2011_biomass$Year <- ('2011')
UK_lut_gris_2011_biomass$subregion <- ('UK')
UK_lut_gris_2011_biomass$SPECIES_CD <- ('LUT GRIS')

UK_lut_gris_2011_count <- count(UK_lut_gris_2011, vars = "SPECIES_CD")

UK_lut_gris_2011_biomass_count <- cbind(UK_lut_gris_2011_biomass,UK_lut_gris_2011_count)


UK_lut_gris_2012 <- filter(UK_lut_gris, YEAR_ == '2012')
UK_lut_gris_2012_biomass <- summarise_at(UK_lut_gris_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_2012_biomass$Year <- ('2012')
UK_lut_gris_2012_biomass$subregion <- ('UK')
UK_lut_gris_2012_biomass$SPECIES_CD <- ('LUT GRIS')

UK_lut_gris_2012_count <- count(UK_lut_gris_2012, vars = "SPECIES_CD")

UK_lut_gris_2012_biomass_count <- cbind(UK_lut_gris_2012_biomass,UK_lut_gris_2012_count)


UK_lut_gris_2014 <- filter(UK_lut_gris, YEAR_ == '2014')
UK_lut_gris_2014_biomass <- summarise_at(UK_lut_gris_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_2014_biomass$Year <- ('2014')
UK_lut_gris_2014_biomass$subregion <- ('UK')
UK_lut_gris_2014_biomass$SPECIES_CD <- ('LUT GRIS')

UK_lut_gris_2014_count <- count(UK_lut_gris_2014, vars = "SPECIES_CD")

UK_lut_gris_2014_biomass_count <- cbind(UK_lut_gris_2014_biomass,UK_lut_gris_2014_count)


UK_lut_gris_2016 <- filter(UK_lut_gris, YEAR_ == '2016')
UK_lut_gris_2016_biomass <- summarise_at(UK_lut_gris_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_2016_biomass$Year <- ('2016')
UK_lut_gris_2016_biomass$subregion <- ('UK')
UK_lut_gris_2016_biomass$SPECIES_CD <- ('LUT GRIS')

UK_lut_gris_2016_count <- count(UK_lut_gris_2016, vars = "SPECIES_CD")

UK_lut_gris_2016_biomass_count <- cbind(UK_lut_gris_2016_biomass,UK_lut_gris_2016_count)


UK_lut_gris_2018 <- filter(UK_lut_gris, YEAR_ == '2018')
UK_lut_gris_2018_biomass <- summarise_at(UK_lut_gris_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_gris_2018_biomass$Year <- ('2018')
UK_lut_gris_2018_biomass$subregion <- ('UK')
UK_lut_gris_2018_biomass$SPECIES_CD <- ('LUT GRIS')

UK_lut_gris_2018_count <- count(UK_lut_gris_2018, vars = "SPECIES_CD")

UK_lut_gris_2018_biomass_count <- cbind(UK_lut_gris_2018_biomass,UK_lut_gris_2018_count)


UK_lut_gris_all <- rbind(UK_lut_gris_1999_biomass_count,UK_lut_gris_2000_biomass_count,UK_lut_gris_2001_biomass_count,UK_lut_gris_2002_biomass_count,UK_lut_gris_2003_biomass_count,
                         UK_lut_gris_2004_biomass_count,UK_lut_gris_2005_biomass_count,UK_lut_gris_2006_biomass_count,UK_lut_gris_2007_biomass_count,
                         UK_lut_gris_2008_biomass_count,UK_lut_gris_2009_biomass_count,UK_lut_gris_2010_biomass_count,UK_lut_gris_2011_biomass_count,
                         UK_lut_gris_2012_biomass_count,UK_lut_gris_2014_biomass_count,UK_lut_gris_2016_biomass_count,UK_lut_gris_2018_biomass_count)

UK_lut_gris_all$vars <- NULL




UK_lut_jocu <- filter(UK_snapper, SPECIES_CD == "LUT JOCU")
unique(UK_lut_jocu$YEAR_)

# UK_lut_jocu_1999 <- filter(UK_lut_jocu, YEAR_ == '1999')
# UK_lut_jocu_1999_biomass <- summarise_at(UK_lut_jocu_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_jocu_1999_biomass$Year <- ('1999')
# UK_lut_jocu_1999_biomass$subregion <- ('UK')
# UK_lut_jocu_1999_biomass$SPECIES_CD <- ('LUT JOCU')
# 
# UK_lut_jocu_1999_count <- count(UK_lut_jocu_1999, vars = "SPECIES_CD")
# 
# UK_lut_jocu_1999_biomass_count <- cbind(UK_lut_jocu_1999_biomass,UK_lut_jocu_1999_count)



UK_lut_jocu_2000 <- filter(UK_lut_jocu, YEAR_ == '2000')
UK_lut_jocu_2000_biomass <- summarise_at(UK_lut_jocu_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_jocu_2000_biomass$Year <- ('2000')
UK_lut_jocu_2000_biomass$subregion <- ('UK')
UK_lut_jocu_2000_biomass$SPECIES_CD <- ('LUT JOCU')

UK_lut_jocu_2000_count <- count(UK_lut_jocu_2000, vars = "SPECIES_CD")

UK_lut_jocu_2000_biomass_count <- cbind(UK_lut_jocu_2000_biomass,UK_lut_jocu_2000_count)

UK_lut_jocu_2001 <- filter(UK_lut_jocu, YEAR_ == '2001')
UK_lut_jocu_2001_biomass <- summarise_at(UK_lut_jocu_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_jocu_2001_biomass$Year <- ('2001')
UK_lut_jocu_2001_biomass$subregion <- ('UK')
UK_lut_jocu_2001_biomass$SPECIES_CD <- ('LUT JOCU')

UK_lut_jocu_2001_count <- count(UK_lut_jocu_2001, vars = "SPECIES_CD")

UK_lut_jocu_2001_biomass_count <- cbind(UK_lut_jocu_2001_biomass,UK_lut_jocu_2001_count)


UK_lut_jocu_2002 <- filter(UK_lut_jocu, YEAR_ == '2002')
UK_lut_jocu_2002_biomass <- summarise_at(UK_lut_jocu_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_jocu_2002_biomass$Year <- ('2002')
UK_lut_jocu_2002_biomass$subregion <- ('UK')
UK_lut_jocu_2002_biomass$SPECIES_CD <- ('LUT JOCU')

UK_lut_jocu_2002_count <- count(UK_lut_jocu_2002, vars = "SPECIES_CD")

UK_lut_jocu_2002_biomass_count <- cbind(UK_lut_jocu_2002_biomass,UK_lut_jocu_2002_count)


UK_lut_jocu_2003 <- filter(UK_lut_jocu, YEAR_ == '2003')
UK_lut_jocu_2003_biomass <- summarise_at(UK_lut_jocu_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_jocu_2003_biomass$Year <- ('2003')
UK_lut_jocu_2003_biomass$subregion <- ('UK')
UK_lut_jocu_2003_biomass$SPECIES_CD <- ('LUT JOCU')

UK_lut_jocu_2003_count <- count(UK_lut_jocu_2003, vars = "SPECIES_CD")

UK_lut_jocu_2003_biomass_count <- cbind(UK_lut_jocu_2003_biomass,UK_lut_jocu_2003_count)


UK_lut_jocu_2004 <- filter(UK_lut_jocu, YEAR_ == '2004')
UK_lut_jocu_2004_biomass <- summarise_at(UK_lut_jocu_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_jocu_2004_biomass$Year <- ('2004')
UK_lut_jocu_2004_biomass$subregion <- ('UK')
UK_lut_jocu_2004_biomass$SPECIES_CD <- ('LUT JOCU')

UK_lut_jocu_2004_count <- count(UK_lut_jocu_2004, vars = "SPECIES_CD")

UK_lut_jocu_2004_biomass_count <- cbind(UK_lut_jocu_2004_biomass,UK_lut_jocu_2004_count)


UK_lut_jocu_2005 <- filter(UK_lut_jocu, YEAR_ == '2005')
UK_lut_jocu_2005_biomass <- summarise_at(UK_lut_jocu_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_jocu_2005_biomass$Year <- ('2005')
UK_lut_jocu_2005_biomass$subregion <- ('UK')
UK_lut_jocu_2005_biomass$SPECIES_CD <- ('LUT JOCU')

UK_lut_jocu_2005_count <- count(UK_lut_jocu_2005, vars = "SPECIES_CD")

UK_lut_jocu_2005_biomass_count <- cbind(UK_lut_jocu_2005_biomass,UK_lut_jocu_2005_count)


UK_lut_jocu_2006 <- filter(UK_lut_jocu, YEAR_ == '2006')
UK_lut_jocu_2006_biomass <- summarise_at(UK_lut_jocu_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_jocu_2006_biomass$Year <- ('2006')
UK_lut_jocu_2006_biomass$subregion <- ('UK')
UK_lut_jocu_2006_biomass$SPECIES_CD <- ('LUT JOCU')


UK_lut_jocu_2006_count <- count(UK_lut_jocu_2006, vars = "SPECIES_CD")

UK_lut_jocu_2006_biomass_count <- cbind(UK_lut_jocu_2006_biomass,UK_lut_jocu_2006_count)


# UK_lut_jocu_2007 <- filter(UK_lut_jocu, YEAR_ == '2007')
# UK_lut_jocu_2007_biomass <- summarise_at(UK_lut_jocu_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_jocu_2007_biomass$Year <- ('2007')
# UK_lut_jocu_2007_biomass$subregion <- ('UK')
# UK_lut_jocu_2007_biomass$SPECIES_CD <- ('LUT JOCU')
# 
# UK_lut_jocu_2007_count <- count(UK_lut_jocu_2007, vars = "SPECIES_CD")
# 
# UK_lut_jocu_2007_biomass_count <- cbind(UK_lut_jocu_2007_biomass,UK_lut_jocu_2007_count)


UK_lut_jocu_2008 <- filter(UK_lut_jocu, YEAR_ == '2008')
UK_lut_jocu_2008_biomass <- summarise_at(UK_lut_jocu_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_jocu_2008_biomass$Year <- ('2008')
UK_lut_jocu_2008_biomass$subregion <- ('UK')
UK_lut_jocu_2008_biomass$SPECIES_CD <- ('LUT JOCU')

UK_lut_jocu_2008_count <- count(UK_lut_jocu_2008, vars = "SPECIES_CD")

UK_lut_jocu_2008_biomass_count <- cbind(UK_lut_jocu_2008_biomass,UK_lut_jocu_2008_count)


UK_lut_jocu_2009 <- filter(UK_lut_jocu, YEAR_ == '2009')
UK_lut_jocu_2009_biomass <- summarise_at(UK_lut_jocu_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_jocu_2009_biomass$Year <- ('2009')
UK_lut_jocu_2009_biomass$subregion <- ('UK')
UK_lut_jocu_2009_biomass$SPECIES_CD <- ('LUT JOCU')

UK_lut_jocu_2009_count <- count(UK_lut_jocu_2009, vars = "SPECIES_CD")

UK_lut_jocu_2009_biomass_count <- cbind(UK_lut_jocu_2009_biomass,UK_lut_jocu_2009_count)


# UK_lut_jocu_2010 <- filter(UK_lut_jocu, YEAR_ == '2010')
# UK_lut_jocu_2010_biomass <- summarise_at(UK_lut_jocu_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_jocu_2010_biomass$Year <- ('2010')
# UK_lut_jocu_2010_biomass$subregion <- ('UK')
# UK_lut_jocu_2010_biomass$SPECIES_CD <- ('LUT JOCU')
# 
# UK_lut_jocu_2010_count <- count(UK_lut_jocu_2010, vars = "SPECIES_CD")
# 
# UK_lut_jocu_2010_biomass_count <- cbind(UK_lut_jocu_2010_biomass,UK_lut_jocu_2010_count)


UK_lut_jocu_2011 <- filter(UK_lut_jocu, YEAR_ == '2011')
UK_lut_jocu_2011_biomass <- summarise_at(UK_lut_jocu_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_jocu_2011_biomass$Year <- ('2011')
UK_lut_jocu_2011_biomass$subregion <- ('UK')
UK_lut_jocu_2011_biomass$SPECIES_CD <- ('LUT JOCU')

UK_lut_jocu_2011_count <- count(UK_lut_jocu_2011, vars = "SPECIES_CD")

UK_lut_jocu_2011_biomass_count <- cbind(UK_lut_jocu_2011_biomass,UK_lut_jocu_2011_count)


UK_lut_jocu_2012 <- filter(UK_lut_jocu, YEAR_ == '2012')
UK_lut_jocu_2012_biomass <- summarise_at(UK_lut_jocu_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_jocu_2012_biomass$Year <- ('2012')
UK_lut_jocu_2012_biomass$subregion <- ('UK')
UK_lut_jocu_2012_biomass$SPECIES_CD <- ('LUT JOCU')

UK_lut_jocu_2012_count <- count(UK_lut_jocu_2012, vars = "SPECIES_CD")

UK_lut_jocu_2012_biomass_count <- cbind(UK_lut_jocu_2012_biomass,UK_lut_jocu_2012_count)


# UK_lut_jocu_2014 <- filter(UK_lut_jocu, YEAR_ == '2014')
# UK_lut_jocu_2014_biomass <- summarise_at(UK_lut_jocu_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_jocu_2014_biomass$Year <- ('2014')
# UK_lut_jocu_2014_biomass$subregion <- ('UK')
# UK_lut_jocu_2014_biomass$SPECIES_CD <- ('LUT JOCU')
# 
# UK_lut_jocu_2014_count <- count(UK_lut_jocu_2014, vars = "SPECIES_CD")
# 
# UK_lut_jocu_2014_biomass_count <- cbind(UK_lut_jocu_2014_biomass,UK_lut_jocu_2014_count)


UK_lut_jocu_2016 <- filter(UK_lut_jocu, YEAR_ == '2016')
UK_lut_jocu_2016_biomass <- summarise_at(UK_lut_jocu_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_jocu_2016_biomass$Year <- ('2016')
UK_lut_jocu_2016_biomass$subregion <- ('UK')
UK_lut_jocu_2016_biomass$SPECIES_CD <- ('LUT JOCU')

UK_lut_jocu_2016_count <- count(UK_lut_jocu_2016, vars = "SPECIES_CD")

UK_lut_jocu_2016_biomass_count <- cbind(UK_lut_jocu_2016_biomass,UK_lut_jocu_2016_count)


UK_lut_jocu_2018 <- filter(UK_lut_jocu, YEAR_ == '2018')
UK_lut_jocu_2018_biomass <- summarise_at(UK_lut_jocu_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_jocu_2018_biomass$Year <- ('2018')
UK_lut_jocu_2018_biomass$subregion <- ('UK')
UK_lut_jocu_2018_biomass$SPECIES_CD <- ('LUT JOCU')

UK_lut_jocu_2018_count <- count(UK_lut_jocu_2018, vars = "SPECIES_CD")

UK_lut_jocu_2018_biomass_count <- cbind(UK_lut_jocu_2018_biomass,UK_lut_jocu_2018_count)


UK_lut_jocu_all <- rbind(UK_lut_jocu_2000_biomass_count,UK_lut_jocu_2001_biomass_count,UK_lut_jocu_2002_biomass_count,UK_lut_jocu_2003_biomass_count,
                         UK_lut_jocu_2004_biomass_count,UK_lut_jocu_2005_biomass_count,UK_lut_jocu_2006_biomass_count,
                         UK_lut_jocu_2008_biomass_count,UK_lut_jocu_2009_biomass_count,UK_lut_jocu_2011_biomass_count,
                         UK_lut_jocu_2016_biomass_count,UK_lut_jocu_2018_biomass_count)

UK_lut_jocu_all$vars <- NULL





UK_lut_maho <- filter(UK_snapper, SPECIES_CD == "LUT MAHO")
unique(UK_lut_maho$YEAR_)

UK_lut_maho_1999 <- filter(UK_lut_maho, YEAR_ == '1999')
UK_lut_maho_1999_biomass <- summarise_at(UK_lut_maho_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_1999_biomass$Year <- ('1999')
UK_lut_maho_1999_biomass$subregion <- ('UK')
UK_lut_maho_1999_biomass$SPECIES_CD <- ('LUT MAHO')

UK_lut_maho_1999_count <- count(UK_lut_maho_1999, vars = "SPECIES_CD")

UK_lut_maho_1999_biomass_count <- cbind(UK_lut_maho_1999_biomass,UK_lut_maho_1999_count)



UK_lut_maho_2000 <- filter(UK_lut_maho, YEAR_ == '2000')
UK_lut_maho_2000_biomass <- summarise_at(UK_lut_maho_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_2000_biomass$Year <- ('2000')
UK_lut_maho_2000_biomass$subregion <- ('UK')
UK_lut_maho_2000_biomass$SPECIES_CD <- ('LUT MAHO')

UK_lut_maho_2000_count <- count(UK_lut_maho_2000, vars = "SPECIES_CD")

UK_lut_maho_2000_biomass_count <- cbind(UK_lut_maho_2000_biomass,UK_lut_maho_2000_count)

UK_lut_maho_2001 <- filter(UK_lut_maho, YEAR_ == '2001')
UK_lut_maho_2001_biomass <- summarise_at(UK_lut_maho_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_2001_biomass$Year <- ('2001')
UK_lut_maho_2001_biomass$subregion <- ('UK')
UK_lut_maho_2001_biomass$SPECIES_CD <- ('LUT MAHO')

UK_lut_maho_2001_count <- count(UK_lut_maho_2001, vars = "SPECIES_CD")

UK_lut_maho_2001_biomass_count <- cbind(UK_lut_maho_2001_biomass,UK_lut_maho_2001_count)


UK_lut_maho_2002 <- filter(UK_lut_maho, YEAR_ == '2002')
UK_lut_maho_2002_biomass <- summarise_at(UK_lut_maho_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_2002_biomass$Year <- ('2002')
UK_lut_maho_2002_biomass$subregion <- ('UK')
UK_lut_maho_2002_biomass$SPECIES_CD <- ('LUT MAHO')

UK_lut_maho_2002_count <- count(UK_lut_maho_2002, vars = "SPECIES_CD")

UK_lut_maho_2002_biomass_count <- cbind(UK_lut_maho_2002_biomass,UK_lut_maho_2002_count)


UK_lut_maho_2003 <- filter(UK_lut_maho, YEAR_ == '2003')
UK_lut_maho_2003_biomass <- summarise_at(UK_lut_maho_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_2003_biomass$Year <- ('2003')
UK_lut_maho_2003_biomass$subregion <- ('UK')
UK_lut_maho_2003_biomass$SPECIES_CD <- ('LUT MAHO')

UK_lut_maho_2003_count <- count(UK_lut_maho_2003, vars = "SPECIES_CD")

UK_lut_maho_2003_biomass_count <- cbind(UK_lut_maho_2003_biomass,UK_lut_maho_2003_count)


UK_lut_maho_2004 <- filter(UK_lut_maho, YEAR_ == '2004')
UK_lut_maho_2004_biomass <- summarise_at(UK_lut_maho_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_2004_biomass$Year <- ('2004')
UK_lut_maho_2004_biomass$subregion <- ('UK')
UK_lut_maho_2004_biomass$SPECIES_CD <- ('LUT MAHO')

UK_lut_maho_2004_count <- count(UK_lut_maho_2004, vars = "SPECIES_CD")

UK_lut_maho_2004_biomass_count <- cbind(UK_lut_maho_2004_biomass,UK_lut_maho_2004_count)


UK_lut_maho_2005 <- filter(UK_lut_maho, YEAR_ == '2005')
UK_lut_maho_2005_biomass <- summarise_at(UK_lut_maho_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_2005_biomass$Year <- ('2005')
UK_lut_maho_2005_biomass$subregion <- ('UK')
UK_lut_maho_2005_biomass$SPECIES_CD <- ('LUT MAHO')

UK_lut_maho_2005_count <- count(UK_lut_maho_2005, vars = "SPECIES_CD")

UK_lut_maho_2005_biomass_count <- cbind(UK_lut_maho_2005_biomass,UK_lut_maho_2005_count)


UK_lut_maho_2006 <- filter(UK_lut_maho, YEAR_ == '2006')
UK_lut_maho_2006_biomass <- summarise_at(UK_lut_maho_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_2006_biomass$Year <- ('2006')
UK_lut_maho_2006_biomass$subregion <- ('UK')
UK_lut_maho_2006_biomass$SPECIES_CD <- ('LUT MAHO')


UK_lut_maho_2006_count <- count(UK_lut_maho_2006, vars = "SPECIES_CD")

UK_lut_maho_2006_biomass_count <- cbind(UK_lut_maho_2006_biomass,UK_lut_maho_2006_count)


UK_lut_maho_2007 <- filter(UK_lut_maho, YEAR_ == '2007')
UK_lut_maho_2007_biomass <- summarise_at(UK_lut_maho_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_2007_biomass$Year <- ('2007')
UK_lut_maho_2007_biomass$subregion <- ('UK')
UK_lut_maho_2007_biomass$SPECIES_CD <- ('LUT MAHO')

UK_lut_maho_2007_count <- count(UK_lut_maho_2007, vars = "SPECIES_CD")

UK_lut_maho_2007_biomass_count <- cbind(UK_lut_maho_2007_biomass,UK_lut_maho_2007_count)


UK_lut_maho_2008 <- filter(UK_lut_maho, YEAR_ == '2008')
UK_lut_maho_2008_biomass <- summarise_at(UK_lut_maho_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_2008_biomass$Year <- ('2008')
UK_lut_maho_2008_biomass$subregion <- ('UK')
UK_lut_maho_2008_biomass$SPECIES_CD <- ('LUT MAHO')

UK_lut_maho_2008_count <- count(UK_lut_maho_2008, vars = "SPECIES_CD")

UK_lut_maho_2008_biomass_count <- cbind(UK_lut_maho_2008_biomass,UK_lut_maho_2008_count)


UK_lut_maho_2009 <- filter(UK_lut_maho, YEAR_ == '2009')
UK_lut_maho_2009_biomass <- summarise_at(UK_lut_maho_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_2009_biomass$Year <- ('2009')
UK_lut_maho_2009_biomass$subregion <- ('UK')
UK_lut_maho_2009_biomass$SPECIES_CD <- ('LUT MAHO')

UK_lut_maho_2009_count <- count(UK_lut_maho_2009, vars = "SPECIES_CD")

UK_lut_maho_2009_biomass_count <- cbind(UK_lut_maho_2009_biomass,UK_lut_maho_2009_count)


UK_lut_maho_2010 <- filter(UK_lut_maho, YEAR_ == '2010')
UK_lut_maho_2010_biomass <- summarise_at(UK_lut_maho_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_2010_biomass$Year <- ('2010')
UK_lut_maho_2010_biomass$subregion <- ('UK')
UK_lut_maho_2010_biomass$SPECIES_CD <- ('LUT MAHO')

UK_lut_maho_2010_count <- count(UK_lut_maho_2010, vars = "SPECIES_CD")

UK_lut_maho_2010_biomass_count <- cbind(UK_lut_maho_2010_biomass,UK_lut_maho_2010_count)


UK_lut_maho_2011 <- filter(UK_lut_maho, YEAR_ == '2011')
UK_lut_maho_2011_biomass <- summarise_at(UK_lut_maho_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_2011_biomass$Year <- ('2011')
UK_lut_maho_2011_biomass$subregion <- ('UK')
UK_lut_maho_2011_biomass$SPECIES_CD <- ('LUT MAHO')

UK_lut_maho_2011_count <- count(UK_lut_maho_2011, vars = "SPECIES_CD")

UK_lut_maho_2011_biomass_count <- cbind(UK_lut_maho_2011_biomass,UK_lut_maho_2011_count)


UK_lut_maho_2012 <- filter(UK_lut_maho, YEAR_ == '2012')
UK_lut_maho_2012_biomass <- summarise_at(UK_lut_maho_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_2012_biomass$Year <- ('2012')
UK_lut_maho_2012_biomass$subregion <- ('UK')
UK_lut_maho_2012_biomass$SPECIES_CD <- ('LUT MAHO')

UK_lut_maho_2012_count <- count(UK_lut_maho_2012, vars = "SPECIES_CD")

UK_lut_maho_2012_biomass_count <- cbind(UK_lut_maho_2012_biomass,UK_lut_maho_2012_count)


UK_lut_maho_2014 <- filter(UK_lut_maho, YEAR_ == '2014')
UK_lut_maho_2014_biomass <- summarise_at(UK_lut_maho_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_2014_biomass$Year <- ('2014')
UK_lut_maho_2014_biomass$subregion <- ('UK')
UK_lut_maho_2014_biomass$SPECIES_CD <- ('LUT MAHO')

UK_lut_maho_2014_count <- count(UK_lut_maho_2014, vars = "SPECIES_CD")

UK_lut_maho_2014_biomass_count <- cbind(UK_lut_maho_2014_biomass,UK_lut_maho_2014_count)


UK_lut_maho_2016 <- filter(UK_lut_maho, YEAR_ == '2016')
UK_lut_maho_2016_biomass <- summarise_at(UK_lut_maho_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_2016_biomass$Year <- ('2016')
UK_lut_maho_2016_biomass$subregion <- ('UK')
UK_lut_maho_2016_biomass$SPECIES_CD <- ('LUT MAHO')

UK_lut_maho_2016_count <- count(UK_lut_maho_2016, vars = "SPECIES_CD")

UK_lut_maho_2016_biomass_count <- cbind(UK_lut_maho_2016_biomass,UK_lut_maho_2016_count)


UK_lut_maho_2018 <- filter(UK_lut_maho, YEAR_ == '2018')
UK_lut_maho_2018_biomass <- summarise_at(UK_lut_maho_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_maho_2018_biomass$Year <- ('2018')
UK_lut_maho_2018_biomass$subregion <- ('UK')
UK_lut_maho_2018_biomass$SPECIES_CD <- ('LUT MAHO')

UK_lut_maho_2018_count <- count(UK_lut_maho_2018, vars = "SPECIES_CD")

UK_lut_maho_2018_biomass_count <- cbind(UK_lut_maho_2018_biomass,UK_lut_maho_2018_count)


UK_lut_maho_all <- rbind(UK_lut_maho_1999_biomass_count,UK_lut_maho_2000_biomass_count,UK_lut_maho_2001_biomass_count,UK_lut_maho_2002_biomass_count,UK_lut_maho_2003_biomass_count,
                         UK_lut_maho_2004_biomass_count,UK_lut_maho_2005_biomass_count,UK_lut_maho_2006_biomass_count,UK_lut_maho_2007_biomass_count,
                         UK_lut_maho_2008_biomass_count,UK_lut_maho_2009_biomass_count,UK_lut_maho_2011_biomass_count,UK_lut_maho_2012_biomass_count,
                         UK_lut_maho_2014_biomass_count,UK_lut_maho_2016_biomass_count,UK_lut_maho_2018_biomass_count)

UK_lut_maho_all$vars <- NULL





# UK_lut_spe <- filter(UK_snapper, SPECIES_CD == "LUT SPE.")
# unique(UK_lut_spe$YEAR_)
# 
# 
# UK_lut_spe_2010 <- filter(UK_lut_spe, YEAR_ == '2010')
# UK_lut_spe_2010_biomass <- summarise_at(UK_lut_spe_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_spe_2010_biomass$Year <- ('2010')
# UK_lut_spe_2010_biomass$subregion <- ('UK')
# UK_lut_spe_2010_biomass$SPECIES_CD <- ('LUT SPE.')
# 
# UK_lut_spe_2010_count <- count(UK_lut_spe_2010, vars = "SPECIES_CD")
# 
# UK_lut_spe_2010_biomass_count <- cbind(UK_lut_spe_2010_biomass,UK_lut_spe_2010_count)
# 
# 
# 
# 
# UK_lut_spe_2018 <- filter(UK_lut_spe, YEAR_ == '2018')
# UK_lut_spe_2018_biomass <- summarise_at(UK_lut_spe_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_spe_2018_biomass$Year <- ('2018')
# UK_lut_spe_2018_biomass$subregion <- ('UK')
# UK_lut_spe_2018_biomass$SPECIES_CD <- ('LUT SPE.')
# 
# UK_lut_spe_2018_count <- count(UK_lut_spe_2018, vars = "SPECIES_CD")
# 
# UK_lut_spe_2018_biomass_count <- cbind(UK_lut_spe_2018_biomass,UK_lut_spe_2018_count)
# 
# 
# UK_lut_spe_all <- rbind(UK_lut_spe_2010_biomass_count,UK_lut_spe_2018_biomass_count)
# 
# UK_lut_spe_all$vars <- NULL
# 



UK_lut_syna <- filter(UK_snapper, SPECIES_CD == "LUT SYNA")
unique(UK_lut_syna$YEAR_)

# UK_lut_syna_1999 <- filter(UK_lut_syna, YEAR_ == '1999')
# UK_lut_syna_1999_biomass <- summarise_at(UK_lut_syna_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_syna_1999_biomass$Year <- ('1999')
# UK_lut_syna_1999_biomass$subregion <- ('UK')
# UK_lut_syna_1999_biomass$SPECIES_CD <- ('LUT SYNA')
# 
# UK_lut_syna_1999_count <- count(UK_lut_syna_1999, vars = "SPECIES_CD")
# 
# UK_lut_syna_1999_biomass_count <- cbind(UK_lut_syna_1999_biomass,UK_lut_syna_1999_count)
# 
# 
# 
# UK_lut_syna_2000 <- filter(UK_lut_syna, YEAR_ == '2000')
# UK_lut_syna_2000_biomass <- summarise_at(UK_lut_syna_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_syna_2000_biomass$Year <- ('2000')
# UK_lut_syna_2000_biomass$subregion <- ('UK')
# UK_lut_syna_2000_biomass$SPECIES_CD <- ('LUT SYNA')
# 
# UK_lut_syna_2000_count <- count(UK_lut_syna_2000, vars = "SPECIES_CD")
# 
# UK_lut_syna_2000_biomass_count <- cbind(UK_lut_syna_2000_biomass,UK_lut_syna_2000_count)

UK_lut_syna_2001 <- filter(UK_lut_syna, YEAR_ == '2001')
UK_lut_syna_2001_biomass <- summarise_at(UK_lut_syna_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_syna_2001_biomass$Year <- ('2001')
UK_lut_syna_2001_biomass$subregion <- ('UK')
UK_lut_syna_2001_biomass$SPECIES_CD <- ('LUT SYNA')

UK_lut_syna_2001_count <- count(UK_lut_syna_2001, vars = "SPECIES_CD")

UK_lut_syna_2001_biomass_count <- cbind(UK_lut_syna_2001_biomass,UK_lut_syna_2001_count)


UK_lut_syna_2002 <- filter(UK_lut_syna, YEAR_ == '2002')
UK_lut_syna_2002_biomass <- summarise_at(UK_lut_syna_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_syna_2002_biomass$Year <- ('2002')
UK_lut_syna_2002_biomass$subregion <- ('UK')
UK_lut_syna_2002_biomass$SPECIES_CD <- ('LUT SYNA')

UK_lut_syna_2002_count <- count(UK_lut_syna_2002, vars = "SPECIES_CD")

UK_lut_syna_2002_biomass_count <- cbind(UK_lut_syna_2002_biomass,UK_lut_syna_2002_count)


# UK_lut_syna_2003 <- filter(UK_lut_syna, YEAR_ == '2003')
# UK_lut_syna_2003_biomass <- summarise_at(UK_lut_syna_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_syna_2003_biomass$Year <- ('2003')
# UK_lut_syna_2003_biomass$subregion <- ('UK')
# UK_lut_syna_2003_biomass$SPECIES_CD <- ('LUT SYNA')
# 
# UK_lut_syna_2003_count <- count(UK_lut_syna_2003, vars = "SPECIES_CD")
# 
# UK_lut_syna_2003_biomass_count <- cbind(UK_lut_syna_2003_biomass,UK_lut_syna_2003_count)
# 
# 
# UK_lut_syna_2004 <- filter(UK_lut_syna, YEAR_ == '2004')
# UK_lut_syna_2004_biomass <- summarise_at(UK_lut_syna_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_syna_2004_biomass$Year <- ('2004')
# UK_lut_syna_2004_biomass$subregion <- ('UK')
# UK_lut_syna_2004_biomass$SPECIES_CD <- ('LUT SYNA')
# 
# UK_lut_syna_2004_count <- count(UK_lut_syna_2004, vars = "SPECIES_CD")
# 
# UK_lut_syna_2004_biomass_count <- cbind(UK_lut_syna_2004_biomass,UK_lut_syna_2004_count)


UK_lut_syna_2005 <- filter(UK_lut_syna, YEAR_ == '2005')
UK_lut_syna_2005_biomass <- summarise_at(UK_lut_syna_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_syna_2005_biomass$Year <- ('2005')
UK_lut_syna_2005_biomass$subregion <- ('UK')
UK_lut_syna_2005_biomass$SPECIES_CD <- ('LUT SYNA')

UK_lut_syna_2005_count <- count(UK_lut_syna_2005, vars = "SPECIES_CD")

UK_lut_syna_2005_biomass_count <- cbind(UK_lut_syna_2005_biomass,UK_lut_syna_2005_count)


UK_lut_syna_2006 <- filter(UK_lut_syna, YEAR_ == '2006')
UK_lut_syna_2006_biomass <- summarise_at(UK_lut_syna_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_syna_2006_biomass$Year <- ('2006')
UK_lut_syna_2006_biomass$subregion <- ('UK')
UK_lut_syna_2006_biomass$SPECIES_CD <- ('LUT SYNA')


UK_lut_syna_2006_count <- count(UK_lut_syna_2006, vars = "SPECIES_CD")

UK_lut_syna_2006_biomass_count <- cbind(UK_lut_syna_2006_biomass,UK_lut_syna_2006_count)


# UK_lut_syna_2007 <- filter(UK_lut_syna, YEAR_ == '2007')
# UK_lut_syna_2007_biomass <- summarise_at(UK_lut_syna_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_syna_2007_biomass$Year <- ('2007')
# UK_lut_syna_2007_biomass$subregion <- ('UK')
# UK_lut_syna_2007_biomass$SPECIES_CD <- ('LUT SYNA')
# 
# UK_lut_syna_2007_count <- count(UK_lut_syna_2007, vars = "SPECIES_CD")
# 
# UK_lut_syna_2007_biomass_count <- cbind(UK_lut_syna_2007_biomass,UK_lut_syna_2007_count)
# 
# 
# UK_lut_syna_2008 <- filter(UK_lut_syna, YEAR_ == '2008')
# UK_lut_syna_2008_biomass <- summarise_at(UK_lut_syna_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_syna_2008_biomass$Year <- ('2008')
# UK_lut_syna_2008_biomass$subregion <- ('UK')
# UK_lut_syna_2008_biomass$SPECIES_CD <- ('LUT SYNA')
# 
# UK_lut_syna_2008_count <- count(UK_lut_syna_2008, vars = "SPECIES_CD")
# 
# UK_lut_syna_2008_biomass_count <- cbind(UK_lut_syna_2008_biomass,UK_lut_syna_2008_count)
# 

UK_lut_syna_2009 <- filter(UK_lut_syna, YEAR_ == '2009')
UK_lut_syna_2009_biomass <- summarise_at(UK_lut_syna_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_syna_2009_biomass$Year <- ('2009')
UK_lut_syna_2009_biomass$subregion <- ('UK')
UK_lut_syna_2009_biomass$SPECIES_CD <- ('LUT SYNA')

UK_lut_syna_2009_count <- count(UK_lut_syna_2009, vars = "SPECIES_CD")

UK_lut_syna_2009_biomass_count <- cbind(UK_lut_syna_2009_biomass,UK_lut_syna_2009_count)


# UK_lut_syna_2010 <- filter(UK_lut_syna, YEAR_ == '2010')
# UK_lut_syna_2010_biomass <- summarise_at(UK_lut_syna_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_syna_2010_biomass$Year <- ('2010')
# UK_lut_syna_2010_biomass$subregion <- ('UK')
# UK_lut_syna_2010_biomass$SPECIES_CD <- ('LUT SYNA')
# 
# UK_lut_syna_2010_count <- count(UK_lut_syna_2010, vars = "SPECIES_CD")
# 
# UK_lut_syna_2010_biomass_count <- cbind(UK_lut_syna_2010_biomass,UK_lut_syna_2010_count)
# 
# 
# UK_lut_syna_2011 <- filter(UK_lut_syna, YEAR_ == '2011')
# UK_lut_syna_2011_biomass <- summarise_at(UK_lut_syna_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_syna_2011_biomass$Year <- ('2011')
# UK_lut_syna_2011_biomass$subregion <- ('UK')
# UK_lut_syna_2011_biomass$SPECIES_CD <- ('LUT SYNA')
# 
# UK_lut_syna_2011_count <- count(UK_lut_syna_2011, vars = "SPECIES_CD")
# 
# UK_lut_syna_2011_biomass_count <- cbind(UK_lut_syna_2011_biomass,UK_lut_syna_2011_count)


UK_lut_syna_2012 <- filter(UK_lut_syna, YEAR_ == '2012')
UK_lut_syna_2012_biomass <- summarise_at(UK_lut_syna_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_syna_2012_biomass$Year <- ('2012')
UK_lut_syna_2012_biomass$subregion <- ('UK')
UK_lut_syna_2012_biomass$SPECIES_CD <- ('LUT SYNA')

UK_lut_syna_2012_count <- count(UK_lut_syna_2012, vars = "SPECIES_CD")

UK_lut_syna_2012_biomass_count <- cbind(UK_lut_syna_2012_biomass,UK_lut_syna_2012_count)


# UK_lut_syna_2014 <- filter(UK_lut_syna, YEAR_ == '2014')
# UK_lut_syna_2014_biomass <- summarise_at(UK_lut_syna_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_lut_syna_2014_biomass$Year <- ('2014')
# UK_lut_syna_2014_biomass$subregion <- ('UK')
# UK_lut_syna_2014_biomass$SPECIES_CD <- ('LUT SYNA')
# 
# UK_lut_syna_2014_count <- count(UK_lut_syna_2014, vars = "SPECIES_CD")
# 
# UK_lut_syna_2014_biomass_count <- cbind(UK_lut_syna_2014_biomass,UK_lut_syna_2014_count)
# 
# 
UK_lut_syna_2016 <- filter(UK_lut_syna, YEAR_ == '2016')
UK_lut_syna_2016_biomass <- summarise_at(UK_lut_syna_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_syna_2016_biomass$Year <- ('2016')
UK_lut_syna_2016_biomass$subregion <- ('UK')
UK_lut_syna_2016_biomass$SPECIES_CD <- ('LUT SYNA')

UK_lut_syna_2016_count <- count(UK_lut_syna_2016, vars = "SPECIES_CD")

UK_lut_syna_2016_biomass_count <- cbind(UK_lut_syna_2016_biomass,UK_lut_syna_2016_count)


UK_lut_syna_2018 <- filter(UK_lut_syna, YEAR_ == '2018')
UK_lut_syna_2018_biomass <- summarise_at(UK_lut_syna_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_lut_syna_2018_biomass$Year <- ('2018')
UK_lut_syna_2018_biomass$subregion <- ('UK')
UK_lut_syna_2018_biomass$SPECIES_CD <- ('LUT SYNA')

UK_lut_syna_2018_count <- count(UK_lut_syna_2018, vars = "SPECIES_CD")

UK_lut_syna_2018_biomass_count <- cbind(UK_lut_syna_2018_biomass,UK_lut_syna_2018_count)


UK_lut_syna_all <- rbind(UK_lut_syna_2001_biomass_count,UK_lut_syna_2002_biomass_count,UK_lut_syna_2005_biomass_count,UK_lut_syna_2006_biomass_count,
                         UK_lut_syna_2009_biomass_count,UK_lut_syna_2012_biomass_count,UK_lut_syna_2016_biomass_count,UK_lut_syna_2018_biomass_count)

UK_lut_syna_all$vars <- NULL





UK_ocy_chry <- filter(UK_snapper, SPECIES_CD == "OCY CHRY")
unique(UK_ocy_chry$YEAR_)

UK_ocy_chry_1999 <- filter(UK_ocy_chry, YEAR_ == '1999')
UK_ocy_chry_1999_biomass <- summarise_at(UK_ocy_chry_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_1999_biomass$Year <- ('1999')
UK_ocy_chry_1999_biomass$subregion <- ('UK')
UK_ocy_chry_1999_biomass$SPECIES_CD <- ('OCY CHRY')

UK_ocy_chry_1999_count <- count(UK_ocy_chry_1999, vars = "SPECIES_CD")

UK_ocy_chry_1999_biomass_count <- cbind(UK_ocy_chry_1999_biomass,UK_ocy_chry_1999_count)



UK_ocy_chry_2000 <- filter(UK_ocy_chry, YEAR_ == '2000')
UK_ocy_chry_2000_biomass <- summarise_at(UK_ocy_chry_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_2000_biomass$Year <- ('2000')
UK_ocy_chry_2000_biomass$subregion <- ('UK')
UK_ocy_chry_2000_biomass$SPECIES_CD <- ('OCY CHRY')

UK_ocy_chry_2000_count <- count(UK_ocy_chry_2000, vars = "SPECIES_CD")

UK_ocy_chry_2000_biomass_count <- cbind(UK_ocy_chry_2000_biomass,UK_ocy_chry_2000_count)

UK_ocy_chry_2001 <- filter(UK_ocy_chry, YEAR_ == '2001')
UK_ocy_chry_2001_biomass <- summarise_at(UK_ocy_chry_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_2001_biomass$Year <- ('2001')
UK_ocy_chry_2001_biomass$subregion <- ('UK')
UK_ocy_chry_2001_biomass$SPECIES_CD <- ('OCY CHRY')

UK_ocy_chry_2001_count <- count(UK_ocy_chry_2001, vars = "SPECIES_CD")

UK_ocy_chry_2001_biomass_count <- cbind(UK_ocy_chry_2001_biomass,UK_ocy_chry_2001_count)


UK_ocy_chry_2002 <- filter(UK_ocy_chry, YEAR_ == '2002')
UK_ocy_chry_2002_biomass <- summarise_at(UK_ocy_chry_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_2002_biomass$Year <- ('2002')
UK_ocy_chry_2002_biomass$subregion <- ('UK')
UK_ocy_chry_2002_biomass$SPECIES_CD <- ('OCY CHRY')

UK_ocy_chry_2002_count <- count(UK_ocy_chry_2002, vars = "SPECIES_CD")

UK_ocy_chry_2002_biomass_count <- cbind(UK_ocy_chry_2002_biomass,UK_ocy_chry_2002_count)


UK_ocy_chry_2003 <- filter(UK_ocy_chry, YEAR_ == '2003')
UK_ocy_chry_2003_biomass <- summarise_at(UK_ocy_chry_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_2003_biomass$Year <- ('2003')
UK_ocy_chry_2003_biomass$subregion <- ('UK')
UK_ocy_chry_2003_biomass$SPECIES_CD <- ('OCY CHRY')

UK_ocy_chry_2003_count <- count(UK_ocy_chry_2003, vars = "SPECIES_CD")

UK_ocy_chry_2003_biomass_count <- cbind(UK_ocy_chry_2003_biomass,UK_ocy_chry_2003_count)


UK_ocy_chry_2004 <- filter(UK_ocy_chry, YEAR_ == '2004')
UK_ocy_chry_2004_biomass <- summarise_at(UK_ocy_chry_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_2004_biomass$Year <- ('2004')
UK_ocy_chry_2004_biomass$subregion <- ('UK')
UK_ocy_chry_2004_biomass$SPECIES_CD <- ('OCY CHRY')

UK_ocy_chry_2004_count <- count(UK_ocy_chry_2004, vars = "SPECIES_CD")

UK_ocy_chry_2004_biomass_count <- cbind(UK_ocy_chry_2004_biomass,UK_ocy_chry_2004_count)


UK_ocy_chry_2005 <- filter(UK_ocy_chry, YEAR_ == '2005')
UK_ocy_chry_2005_biomass <- summarise_at(UK_ocy_chry_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_2005_biomass$Year <- ('2005')
UK_ocy_chry_2005_biomass$subregion <- ('UK')
UK_ocy_chry_2005_biomass$SPECIES_CD <- ('OCY CHRY')

UK_ocy_chry_2005_count <- count(UK_ocy_chry_2005, vars = "SPECIES_CD")

UK_ocy_chry_2005_biomass_count <- cbind(UK_ocy_chry_2005_biomass,UK_ocy_chry_2005_count)


UK_ocy_chry_2006 <- filter(UK_ocy_chry, YEAR_ == '2006')
UK_ocy_chry_2006_biomass <- summarise_at(UK_ocy_chry_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_2006_biomass$Year <- ('2006')
UK_ocy_chry_2006_biomass$subregion <- ('UK')
UK_ocy_chry_2006_biomass$SPECIES_CD <- ('OCY CHRY')


UK_ocy_chry_2006_count <- count(UK_ocy_chry_2006, vars = "SPECIES_CD")

UK_ocy_chry_2006_biomass_count <- cbind(UK_ocy_chry_2006_biomass,UK_ocy_chry_2006_count)


UK_ocy_chry_2007 <- filter(UK_ocy_chry, YEAR_ == '2007')
UK_ocy_chry_2007_biomass <- summarise_at(UK_ocy_chry_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_2007_biomass$Year <- ('2007')
UK_ocy_chry_2007_biomass$subregion <- ('UK')
UK_ocy_chry_2007_biomass$SPECIES_CD <- ('OCY CHRY')

UK_ocy_chry_2007_count <- count(UK_ocy_chry_2007, vars = "SPECIES_CD")

UK_ocy_chry_2007_biomass_count <- cbind(UK_ocy_chry_2007_biomass,UK_ocy_chry_2007_count)


UK_ocy_chry_2008 <- filter(UK_ocy_chry, YEAR_ == '2008')
UK_ocy_chry_2008_biomass <- summarise_at(UK_ocy_chry_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_2008_biomass$Year <- ('2008')
UK_ocy_chry_2008_biomass$subregion <- ('UK')
UK_ocy_chry_2008_biomass$SPECIES_CD <- ('OCY CHRY')

UK_ocy_chry_2008_count <- count(UK_ocy_chry_2008, vars = "SPECIES_CD")

UK_ocy_chry_2008_biomass_count <- cbind(UK_ocy_chry_2008_biomass,UK_ocy_chry_2008_count)


UK_ocy_chry_2009 <- filter(UK_ocy_chry, YEAR_ == '2009')
UK_ocy_chry_2009_biomass <- summarise_at(UK_ocy_chry_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_2009_biomass$Year <- ('2009')
UK_ocy_chry_2009_biomass$subregion <- ('UK')
UK_ocy_chry_2009_biomass$SPECIES_CD <- ('OCY CHRY')

UK_ocy_chry_2009_count <- count(UK_ocy_chry_2009, vars = "SPECIES_CD")

UK_ocy_chry_2009_biomass_count <- cbind(UK_ocy_chry_2009_biomass,UK_ocy_chry_2009_count)


UK_ocy_chry_2010 <- filter(UK_ocy_chry, YEAR_ == '2010')
UK_ocy_chry_2010_biomass <- summarise_at(UK_ocy_chry_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_2010_biomass$Year <- ('2010')
UK_ocy_chry_2010_biomass$subregion <- ('UK')
UK_ocy_chry_2010_biomass$SPECIES_CD <- ('OCY CHRY')

UK_ocy_chry_2010_count <- count(UK_ocy_chry_2010, vars = "SPECIES_CD")

UK_ocy_chry_2010_biomass_count <- cbind(UK_ocy_chry_2010_biomass,UK_ocy_chry_2010_count)


UK_ocy_chry_2011 <- filter(UK_ocy_chry, YEAR_ == '2011')
UK_ocy_chry_2011_biomass <- summarise_at(UK_ocy_chry_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_2011_biomass$Year <- ('2011')
UK_ocy_chry_2011_biomass$subregion <- ('UK')
UK_ocy_chry_2011_biomass$SPECIES_CD <- ('OCY CHRY')

UK_ocy_chry_2011_count <- count(UK_ocy_chry_2011, vars = "SPECIES_CD")

UK_ocy_chry_2011_biomass_count <- cbind(UK_ocy_chry_2011_biomass,UK_ocy_chry_2011_count)


UK_ocy_chry_2012 <- filter(UK_ocy_chry, YEAR_ == '2012')
UK_ocy_chry_2012_biomass <- summarise_at(UK_ocy_chry_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_2012_biomass$Year <- ('2012')
UK_ocy_chry_2012_biomass$subregion <- ('UK')
UK_ocy_chry_2012_biomass$SPECIES_CD <- ('OCY CHRY')

UK_ocy_chry_2012_count <- count(UK_ocy_chry_2012, vars = "SPECIES_CD")

UK_ocy_chry_2012_biomass_count <- cbind(UK_ocy_chry_2012_biomass,UK_ocy_chry_2012_count)


UK_ocy_chry_2014 <- filter(UK_ocy_chry, YEAR_ == '2014')
UK_ocy_chry_2014_biomass <- summarise_at(UK_ocy_chry_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_2014_biomass$Year <- ('2014')
UK_ocy_chry_2014_biomass$subregion <- ('UK')
UK_ocy_chry_2014_biomass$SPECIES_CD <- ('OCY CHRY')

UK_ocy_chry_2014_count <- count(UK_ocy_chry_2014, vars = "SPECIES_CD")

UK_ocy_chry_2014_biomass_count <- cbind(UK_ocy_chry_2014_biomass,UK_ocy_chry_2014_count)


UK_ocy_chry_2016 <- filter(UK_ocy_chry, YEAR_ == '2016')
UK_ocy_chry_2016_biomass <- summarise_at(UK_ocy_chry_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_2016_biomass$Year <- ('2016')
UK_ocy_chry_2016_biomass$subregion <- ('UK')
UK_ocy_chry_2016_biomass$SPECIES_CD <- ('OCY CHRY')

UK_ocy_chry_2016_count <- count(UK_ocy_chry_2016, vars = "SPECIES_CD")

UK_ocy_chry_2016_biomass_count <- cbind(UK_ocy_chry_2016_biomass,UK_ocy_chry_2016_count)


UK_ocy_chry_2018 <- filter(UK_ocy_chry, YEAR_ == '2018')
UK_ocy_chry_2018_biomass <- summarise_at(UK_ocy_chry_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_ocy_chry_2018_biomass$Year <- ('2018')
UK_ocy_chry_2018_biomass$subregion <- ('UK')
UK_ocy_chry_2018_biomass$SPECIES_CD <- ('OCY CHRY')

UK_ocy_chry_2018_count <- count(UK_ocy_chry_2018, vars = "SPECIES_CD")

UK_ocy_chry_2018_biomass_count <- cbind(UK_ocy_chry_2018_biomass,UK_ocy_chry_2018_count)


UK_ocy_chry_all <- rbind(UK_ocy_chry_1999_biomass_count,UK_ocy_chry_2000_biomass_count,UK_ocy_chry_2001_biomass_count,UK_ocy_chry_2002_biomass_count,UK_ocy_chry_2003_biomass_count,
                         UK_ocy_chry_2004_biomass_count,UK_ocy_chry_2005_biomass_count,UK_ocy_chry_2006_biomass_count,UK_ocy_chry_2007_biomass_count,
                         UK_ocy_chry_2008_biomass_count,UK_ocy_chry_2009_biomass_count,UK_ocy_chry_2010_biomass_count,UK_ocy_chry_2011_biomass_count,
                         UK_ocy_chry_2012_biomass_count,UK_ocy_chry_2014_biomass_count,UK_ocy_chry_2016_biomass_count,UK_ocy_chry_2018_biomass_count)

UK_ocy_chry_all$vars <- NULL


# UK_snappers_combined <- rbind(UK_lut_anal_all,UK_lut_apod_all,UK_lut_cyan_all,UK_lut_gris_all,UK_lut_jocu_all,UK_lut_maho_all,UK_lut_syna_all,UK_ocy_chry_all)
# 
# #export(UK_snappers_combined,"C:/Users/cara.estes/Documents/EwE_data/UK_snappers.csv")







###### GROUPERS PER SUBREGION

LK_grouper <- merge(LK_snapper_grouper, grouper, by = c("SPECIES_CD"))
unique(LK_grouper$SPECIES_CD)

###CEP CRUE" "CEP FULV" "EPI ITAJ" "EPI MORI" "EPI STRI" "MYC BONA" "MYC INTE" "MYC MICR""MYC PHEN" "MYC TIGR" "MYC VENE" "SRR SPE."


LK_cep_crue <- filter(LK_grouper, SPECIES_CD == "CEP CRUE")
unique(LK_cep_crue$YEAR_)

LK_cep_crue_1999 <- filter(LK_cep_crue, YEAR_ == '1999')
LK_cep_crue_1999_biomass <- summarise_at(LK_cep_crue_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_1999_biomass$Year <- ('1999')
LK_cep_crue_1999_biomass$subregion <- ('LK')
LK_cep_crue_1999_biomass$SPECIES_CD <- ('CEP CRUE')

LK_cep_crue_1999_count <- count(LK_cep_crue_1999, vars = "SPECIES_CD")

LK_cep_crue_1999_biomass_count <- cbind(LK_cep_crue_1999_biomass,LK_cep_crue_1999_count)



LK_cep_crue_2000 <- filter(LK_cep_crue, YEAR_ == '2000')
LK_cep_crue_2000_biomass <- summarise_at(LK_cep_crue_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_2000_biomass$Year <- ('2000')
LK_cep_crue_2000_biomass$subregion <- ('LK')
LK_cep_crue_2000_biomass$SPECIES_CD <- ('CEP CRUE')

LK_cep_crue_2000_count <- count(LK_cep_crue_2000, vars = "SPECIES_CD")

LK_cep_crue_2000_biomass_count <- cbind(LK_cep_crue_2000_biomass,LK_cep_crue_2000_count)

LK_cep_crue_2001 <- filter(LK_cep_crue, YEAR_ == '2001')
LK_cep_crue_2001_biomass <- summarise_at(LK_cep_crue_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_2001_biomass$Year <- ('2001')
LK_cep_crue_2001_biomass$subregion <- ('LK')
LK_cep_crue_2001_biomass$SPECIES_CD <- ('CEP CRUE')

LK_cep_crue_2001_count <- count(LK_cep_crue_2001, vars = "SPECIES_CD")

LK_cep_crue_2001_biomass_count <- cbind(LK_cep_crue_2001_biomass,LK_cep_crue_2001_count)


LK_cep_crue_2002 <- filter(LK_cep_crue, YEAR_ == '2002')
LK_cep_crue_2002_biomass <- summarise_at(LK_cep_crue_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_2002_biomass$Year <- ('2002')
LK_cep_crue_2002_biomass$subregion <- ('LK')
LK_cep_crue_2002_biomass$SPECIES_CD <- ('CEP CRUE')

LK_cep_crue_2002_count <- count(LK_cep_crue_2002, vars = "SPECIES_CD")

LK_cep_crue_2002_biomass_count <- cbind(LK_cep_crue_2002_biomass,LK_cep_crue_2002_count)


LK_cep_crue_2003 <- filter(LK_cep_crue, YEAR_ == '2003')
LK_cep_crue_2003_biomass <- summarise_at(LK_cep_crue_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_2003_biomass$Year <- ('2003')
LK_cep_crue_2003_biomass$subregion <- ('LK')
LK_cep_crue_2003_biomass$SPECIES_CD <- ('CEP CRUE')

LK_cep_crue_2003_count <- count(LK_cep_crue_2003, vars = "SPECIES_CD")

LK_cep_crue_2003_biomass_count <- cbind(LK_cep_crue_2003_biomass,LK_cep_crue_2003_count)


LK_cep_crue_2004 <- filter(LK_cep_crue, YEAR_ == '2004')
LK_cep_crue_2004_biomass <- summarise_at(LK_cep_crue_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_2004_biomass$Year <- ('2004')
LK_cep_crue_2004_biomass$subregion <- ('LK')
LK_cep_crue_2004_biomass$SPECIES_CD <- ('CEP CRUE')

LK_cep_crue_2004_count <- count(LK_cep_crue_2004, vars = "SPECIES_CD")

LK_cep_crue_2004_biomass_count <- cbind(LK_cep_crue_2004_biomass,LK_cep_crue_2004_count)


LK_cep_crue_2005 <- filter(LK_cep_crue, YEAR_ == '2005')
LK_cep_crue_2005_biomass <- summarise_at(LK_cep_crue_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_2005_biomass$Year <- ('2005')
LK_cep_crue_2005_biomass$subregion <- ('LK')
LK_cep_crue_2005_biomass$SPECIES_CD <- ('CEP CRUE')

LK_cep_crue_2005_count <- count(LK_cep_crue_2005, vars = "SPECIES_CD")

LK_cep_crue_2005_biomass_count <- cbind(LK_cep_crue_2005_biomass,LK_cep_crue_2005_count)


LK_cep_crue_2006 <- filter(LK_cep_crue, YEAR_ == '2006')
LK_cep_crue_2006_biomass <- summarise_at(LK_cep_crue_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_2006_biomass$Year <- ('2006')
LK_cep_crue_2006_biomass$subregion <- ('LK')
LK_cep_crue_2006_biomass$SPECIES_CD <- ('CEP CRUE')


LK_cep_crue_2006_count <- count(LK_cep_crue_2006, vars = "SPECIES_CD")

LK_cep_crue_2006_biomass_count <- cbind(LK_cep_crue_2006_biomass,LK_cep_crue_2006_count)


LK_cep_crue_2007 <- filter(LK_cep_crue, YEAR_ == '2007')
LK_cep_crue_2007_biomass <- summarise_at(LK_cep_crue_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_2007_biomass$Year <- ('2007')
LK_cep_crue_2007_biomass$subregion <- ('LK')
LK_cep_crue_2007_biomass$SPECIES_CD <- ('CEP CRUE')

LK_cep_crue_2007_count <- count(LK_cep_crue_2007, vars = "SPECIES_CD")

LK_cep_crue_2007_biomass_count <- cbind(LK_cep_crue_2007_biomass,LK_cep_crue_2007_count)


LK_cep_crue_2008 <- filter(LK_cep_crue, YEAR_ == '2008')
LK_cep_crue_2008_biomass <- summarise_at(LK_cep_crue_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_2008_biomass$Year <- ('2008')
LK_cep_crue_2008_biomass$subregion <- ('LK')
LK_cep_crue_2008_biomass$SPECIES_CD <- ('CEP CRUE')

LK_cep_crue_2008_count <- count(LK_cep_crue_2008, vars = "SPECIES_CD")

LK_cep_crue_2008_biomass_count <- cbind(LK_cep_crue_2008_biomass,LK_cep_crue_2008_count)


LK_cep_crue_2009 <- filter(LK_cep_crue, YEAR_ == '2009')
LK_cep_crue_2009_biomass <- summarise_at(LK_cep_crue_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_2009_biomass$Year <- ('2009')
LK_cep_crue_2009_biomass$subregion <- ('LK')
LK_cep_crue_2009_biomass$SPECIES_CD <- ('CEP CRUE')

LK_cep_crue_2009_count <- count(LK_cep_crue_2009, vars = "SPECIES_CD")

LK_cep_crue_2009_biomass_count <- cbind(LK_cep_crue_2009_biomass,LK_cep_crue_2009_count)


LK_cep_crue_2010 <- filter(LK_cep_crue, YEAR_ == '2010')
LK_cep_crue_2010_biomass <- summarise_at(LK_cep_crue_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_2010_biomass$Year <- ('2010')
LK_cep_crue_2010_biomass$subregion <- ('LK')
LK_cep_crue_2010_biomass$SPECIES_CD <- ('CEP CRUE')

LK_cep_crue_2010_count <- count(LK_cep_crue_2010, vars = "SPECIES_CD")

LK_cep_crue_2010_biomass_count <- cbind(LK_cep_crue_2010_biomass,LK_cep_crue_2010_count)


LK_cep_crue_2011 <- filter(LK_cep_crue, YEAR_ == '2011')
LK_cep_crue_2011_biomass <- summarise_at(LK_cep_crue_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_2011_biomass$Year <- ('2011')
LK_cep_crue_2011_biomass$subregion <- ('LK')
LK_cep_crue_2011_biomass$SPECIES_CD <- ('CEP CRUE')

LK_cep_crue_2011_count <- count(LK_cep_crue_2011, vars = "SPECIES_CD")

LK_cep_crue_2011_biomass_count <- cbind(LK_cep_crue_2011_biomass,LK_cep_crue_2011_count)


LK_cep_crue_2012 <- filter(LK_cep_crue, YEAR_ == '2012')
LK_cep_crue_2012_biomass <- summarise_at(LK_cep_crue_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_2012_biomass$Year <- ('2012')
LK_cep_crue_2012_biomass$subregion <- ('LK')
LK_cep_crue_2012_biomass$SPECIES_CD <- ('CEP CRUE')

LK_cep_crue_2012_count <- count(LK_cep_crue_2012, vars = "SPECIES_CD")

LK_cep_crue_2012_biomass_count <- cbind(LK_cep_crue_2012_biomass,LK_cep_crue_2012_count)


LK_cep_crue_2014 <- filter(LK_cep_crue, YEAR_ == '2014')
LK_cep_crue_2014_biomass <- summarise_at(LK_cep_crue_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_2014_biomass$Year <- ('2014')
LK_cep_crue_2014_biomass$subregion <- ('LK')
LK_cep_crue_2014_biomass$SPECIES_CD <- ('CEP CRUE')

LK_cep_crue_2014_count <- count(LK_cep_crue_2014, vars = "SPECIES_CD")

LK_cep_crue_2014_biomass_count <- cbind(LK_cep_crue_2014_biomass,LK_cep_crue_2014_count)


LK_cep_crue_2016 <- filter(LK_cep_crue, YEAR_ == '2016')
LK_cep_crue_2016_biomass <- summarise_at(LK_cep_crue_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_2016_biomass$Year <- ('2016')
LK_cep_crue_2016_biomass$subregion <- ('LK')
LK_cep_crue_2016_biomass$SPECIES_CD <- ('CEP CRUE')

LK_cep_crue_2016_count <- count(LK_cep_crue_2016, vars = "SPECIES_CD")

LK_cep_crue_2016_biomass_count <- cbind(LK_cep_crue_2016_biomass,LK_cep_crue_2016_count)


LK_cep_crue_2018 <- filter(LK_cep_crue, YEAR_ == '2018')
LK_cep_crue_2018_biomass <- summarise_at(LK_cep_crue_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_crue_2018_biomass$Year <- ('2018')
LK_cep_crue_2018_biomass$subregion <- ('LK')
LK_cep_crue_2018_biomass$SPECIES_CD <- ('CEP CRUE')

LK_cep_crue_2018_count <- count(LK_cep_crue_2018, vars = "SPECIES_CD")

LK_cep_crue_2018_biomass_count <- cbind(LK_cep_crue_2018_biomass,LK_cep_crue_2018_count)


LK_cep_crue_all <- rbind(LK_cep_crue_1999_biomass_count,LK_cep_crue_2000_biomass_count,LK_cep_crue_2001_biomass_count,LK_cep_crue_2002_biomass_count,LK_cep_crue_2003_biomass_count,
                         LK_cep_crue_2004_biomass_count,LK_cep_crue_2005_biomass_count,LK_cep_crue_2006_biomass_count,LK_cep_crue_2007_biomass_count,
                         LK_cep_crue_2008_biomass_count,LK_cep_crue_2009_biomass_count,LK_cep_crue_2010_biomass_count,LK_cep_crue_2011_biomass_count,
                         LK_cep_crue_2012_biomass_count,LK_cep_crue_2014_biomass_count,LK_cep_crue_2016_biomass_count,LK_cep_crue_2018_biomass_count)

LK_cep_crue_all$vars <- NULL





LK_cep_fulv <- filter(LK_grouper, SPECIES_CD == "CEP FULV")
unique(LK_cep_fulv$YEAR_)

LK_cep_fulv_1999 <- filter(LK_cep_fulv, YEAR_ == '1999')
LK_cep_fulv_1999_biomass <- summarise_at(LK_cep_fulv_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_1999_biomass$Year <- ('1999')
LK_cep_fulv_1999_biomass$subregion <- ('LK')
LK_cep_fulv_1999_biomass$SPECIES_CD <- ('CEP FULV')

LK_cep_fulv_1999_count <- count(LK_cep_fulv_1999, vars = "SPECIES_CD")

LK_cep_fulv_1999_biomass_count <- cbind(LK_cep_fulv_1999_biomass,LK_cep_fulv_1999_count)



LK_cep_fulv_2000 <- filter(LK_cep_fulv, YEAR_ == '2000')
LK_cep_fulv_2000_biomass <- summarise_at(LK_cep_fulv_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_2000_biomass$Year <- ('2000')
LK_cep_fulv_2000_biomass$subregion <- ('LK')
LK_cep_fulv_2000_biomass$SPECIES_CD <- ('CEP FULV')

LK_cep_fulv_2000_count <- count(LK_cep_fulv_2000, vars = "SPECIES_CD")

LK_cep_fulv_2000_biomass_count <- cbind(LK_cep_fulv_2000_biomass,LK_cep_fulv_2000_count)

LK_cep_fulv_2001 <- filter(LK_cep_fulv, YEAR_ == '2001')
LK_cep_fulv_2001_biomass <- summarise_at(LK_cep_fulv_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_2001_biomass$Year <- ('2001')
LK_cep_fulv_2001_biomass$subregion <- ('LK')
LK_cep_fulv_2001_biomass$SPECIES_CD <- ('CEP FULV')

LK_cep_fulv_2001_count <- count(LK_cep_fulv_2001, vars = "SPECIES_CD")

LK_cep_fulv_2001_biomass_count <- cbind(LK_cep_fulv_2001_biomass,LK_cep_fulv_2001_count)


LK_cep_fulv_2002 <- filter(LK_cep_fulv, YEAR_ == '2002')
LK_cep_fulv_2002_biomass <- summarise_at(LK_cep_fulv_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_2002_biomass$Year <- ('2002')
LK_cep_fulv_2002_biomass$subregion <- ('LK')
LK_cep_fulv_2002_biomass$SPECIES_CD <- ('CEP FULV')

LK_cep_fulv_2002_count <- count(LK_cep_fulv_2002, vars = "SPECIES_CD")

LK_cep_fulv_2002_biomass_count <- cbind(LK_cep_fulv_2002_biomass,LK_cep_fulv_2002_count)


LK_cep_fulv_2003 <- filter(LK_cep_fulv, YEAR_ == '2003')
LK_cep_fulv_2003_biomass <- summarise_at(LK_cep_fulv_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_2003_biomass$Year <- ('2003')
LK_cep_fulv_2003_biomass$subregion <- ('LK')
LK_cep_fulv_2003_biomass$SPECIES_CD <- ('CEP FULV')

LK_cep_fulv_2003_count <- count(LK_cep_fulv_2003, vars = "SPECIES_CD")

LK_cep_fulv_2003_biomass_count <- cbind(LK_cep_fulv_2003_biomass,LK_cep_fulv_2003_count)


LK_cep_fulv_2004 <- filter(LK_cep_fulv, YEAR_ == '2004')
LK_cep_fulv_2004_biomass <- summarise_at(LK_cep_fulv_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_2004_biomass$Year <- ('2004')
LK_cep_fulv_2004_biomass$subregion <- ('LK')
LK_cep_fulv_2004_biomass$SPECIES_CD <- ('CEP FULV')

LK_cep_fulv_2004_count <- count(LK_cep_fulv_2004, vars = "SPECIES_CD")

LK_cep_fulv_2004_biomass_count <- cbind(LK_cep_fulv_2004_biomass,LK_cep_fulv_2004_count)


LK_cep_fulv_2005 <- filter(LK_cep_fulv, YEAR_ == '2005')
LK_cep_fulv_2005_biomass <- summarise_at(LK_cep_fulv_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_2005_biomass$Year <- ('2005')
LK_cep_fulv_2005_biomass$subregion <- ('LK')
LK_cep_fulv_2005_biomass$SPECIES_CD <- ('CEP FULV')

LK_cep_fulv_2005_count <- count(LK_cep_fulv_2005, vars = "SPECIES_CD")

LK_cep_fulv_2005_biomass_count <- cbind(LK_cep_fulv_2005_biomass,LK_cep_fulv_2005_count)


LK_cep_fulv_2006 <- filter(LK_cep_fulv, YEAR_ == '2006')
LK_cep_fulv_2006_biomass <- summarise_at(LK_cep_fulv_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_2006_biomass$Year <- ('2006')
LK_cep_fulv_2006_biomass$subregion <- ('LK')
LK_cep_fulv_2006_biomass$SPECIES_CD <- ('CEP FULV')


LK_cep_fulv_2006_count <- count(LK_cep_fulv_2006, vars = "SPECIES_CD")

LK_cep_fulv_2006_biomass_count <- cbind(LK_cep_fulv_2006_biomass,LK_cep_fulv_2006_count)


LK_cep_fulv_2007 <- filter(LK_cep_fulv, YEAR_ == '2007')
LK_cep_fulv_2007_biomass <- summarise_at(LK_cep_fulv_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_2007_biomass$Year <- ('2007')
LK_cep_fulv_2007_biomass$subregion <- ('LK')
LK_cep_fulv_2007_biomass$SPECIES_CD <- ('CEP FULV')

LK_cep_fulv_2007_count <- count(LK_cep_fulv_2007, vars = "SPECIES_CD")

LK_cep_fulv_2007_biomass_count <- cbind(LK_cep_fulv_2007_biomass,LK_cep_fulv_2007_count)


LK_cep_fulv_2008 <- filter(LK_cep_fulv, YEAR_ == '2008')
LK_cep_fulv_2008_biomass <- summarise_at(LK_cep_fulv_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_2008_biomass$Year <- ('2008')
LK_cep_fulv_2008_biomass$subregion <- ('LK')
LK_cep_fulv_2008_biomass$SPECIES_CD <- ('CEP FULV')

LK_cep_fulv_2008_count <- count(LK_cep_fulv_2008, vars = "SPECIES_CD")

LK_cep_fulv_2008_biomass_count <- cbind(LK_cep_fulv_2008_biomass,LK_cep_fulv_2008_count)


LK_cep_fulv_2009 <- filter(LK_cep_fulv, YEAR_ == '2009')
LK_cep_fulv_2009_biomass <- summarise_at(LK_cep_fulv_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_2009_biomass$Year <- ('2009')
LK_cep_fulv_2009_biomass$subregion <- ('LK')
LK_cep_fulv_2009_biomass$SPECIES_CD <- ('CEP FULV')

LK_cep_fulv_2009_count <- count(LK_cep_fulv_2009, vars = "SPECIES_CD")

LK_cep_fulv_2009_biomass_count <- cbind(LK_cep_fulv_2009_biomass,LK_cep_fulv_2009_count)


LK_cep_fulv_2010 <- filter(LK_cep_fulv, YEAR_ == '2010')
LK_cep_fulv_2010_biomass <- summarise_at(LK_cep_fulv_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_2010_biomass$Year <- ('2010')
LK_cep_fulv_2010_biomass$subregion <- ('LK')
LK_cep_fulv_2010_biomass$SPECIES_CD <- ('CEP FULV')

LK_cep_fulv_2010_count <- count(LK_cep_fulv_2010, vars = "SPECIES_CD")

LK_cep_fulv_2010_biomass_count <- cbind(LK_cep_fulv_2010_biomass,LK_cep_fulv_2010_count)


LK_cep_fulv_2011 <- filter(LK_cep_fulv, YEAR_ == '2011')
LK_cep_fulv_2011_biomass <- summarise_at(LK_cep_fulv_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_2011_biomass$Year <- ('2011')
LK_cep_fulv_2011_biomass$subregion <- ('LK')
LK_cep_fulv_2011_biomass$SPECIES_CD <- ('CEP FULV')

LK_cep_fulv_2011_count <- count(LK_cep_fulv_2011, vars = "SPECIES_CD")

LK_cep_fulv_2011_biomass_count <- cbind(LK_cep_fulv_2011_biomass,LK_cep_fulv_2011_count)


LK_cep_fulv_2012 <- filter(LK_cep_fulv, YEAR_ == '2012')
LK_cep_fulv_2012_biomass <- summarise_at(LK_cep_fulv_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_2012_biomass$Year <- ('2012')
LK_cep_fulv_2012_biomass$subregion <- ('LK')
LK_cep_fulv_2012_biomass$SPECIES_CD <- ('CEP FULV')

LK_cep_fulv_2012_count <- count(LK_cep_fulv_2012, vars = "SPECIES_CD")

LK_cep_fulv_2012_biomass_count <- cbind(LK_cep_fulv_2012_biomass,LK_cep_fulv_2012_count)


LK_cep_fulv_2014 <- filter(LK_cep_fulv, YEAR_ == '2014')
LK_cep_fulv_2014_biomass <- summarise_at(LK_cep_fulv_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_2014_biomass$Year <- ('2014')
LK_cep_fulv_2014_biomass$subregion <- ('LK')
LK_cep_fulv_2014_biomass$SPECIES_CD <- ('CEP FULV')

LK_cep_fulv_2014_count <- count(LK_cep_fulv_2014, vars = "SPECIES_CD")

LK_cep_fulv_2014_biomass_count <- cbind(LK_cep_fulv_2014_biomass,LK_cep_fulv_2014_count)


LK_cep_fulv_2016 <- filter(LK_cep_fulv, YEAR_ == '2016')
LK_cep_fulv_2016_biomass <- summarise_at(LK_cep_fulv_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_2016_biomass$Year <- ('2016')
LK_cep_fulv_2016_biomass$subregion <- ('LK')
LK_cep_fulv_2016_biomass$SPECIES_CD <- ('CEP FULV')

LK_cep_fulv_2016_count <- count(LK_cep_fulv_2016, vars = "SPECIES_CD")

LK_cep_fulv_2016_biomass_count <- cbind(LK_cep_fulv_2016_biomass,LK_cep_fulv_2016_count)


LK_cep_fulv_2018 <- filter(LK_cep_fulv, YEAR_ == '2018')
LK_cep_fulv_2018_biomass <- summarise_at(LK_cep_fulv_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_cep_fulv_2018_biomass$Year <- ('2018')
LK_cep_fulv_2018_biomass$subregion <- ('LK')
LK_cep_fulv_2018_biomass$SPECIES_CD <- ('CEP FULV')

LK_cep_fulv_2018_count <- count(LK_cep_fulv_2018, vars = "SPECIES_CD")

LK_cep_fulv_2018_biomass_count <- cbind(LK_cep_fulv_2018_biomass,LK_cep_fulv_2018_count)


LK_cep_fulv_all <- rbind(LK_cep_fulv_1999_biomass_count,LK_cep_fulv_2001_biomass_count,LK_cep_fulv_2002_biomass_count,LK_cep_fulv_2003_biomass_count,
                         LK_cep_fulv_2004_biomass_count,LK_cep_fulv_2005_biomass_count,LK_cep_fulv_2006_biomass_count,LK_cep_fulv_2007_biomass_count,
                         LK_cep_fulv_2008_biomass_count,LK_cep_fulv_2009_biomass_count,LK_cep_fulv_2010_biomass_count,LK_cep_fulv_2011_biomass_count,
                         LK_cep_fulv_2014_biomass_count)

LK_cep_fulv_all$vars <- NULL






LK_epi_itaj <- filter(LK_grouper, SPECIES_CD == "EPI ITAJ")
unique(LK_epi_itaj$YEAR_)

# LK_epi_itaj_1999 <- filter(LK_epi_itaj, YEAR_ == '1999')
# LK_epi_itaj_1999_biomass <- summarise_at(LK_epi_itaj_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_itaj_1999_biomass$Year <- ('1999')
# LK_epi_itaj_1999_biomass$subregion <- ('LK')
# LK_epi_itaj_1999_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# LK_epi_itaj_1999_count <- count(LK_epi_itaj_1999, vars = "SPECIES_CD")
# 
# LK_epi_itaj_1999_biomass_count <- cbind(LK_epi_itaj_1999_biomass,LK_epi_itaj_1999_count)
# 
# 
# 
# LK_epi_itaj_2000 <- filter(LK_epi_itaj, YEAR_ == '2000')
# LK_epi_itaj_2000_biomass <- summarise_at(LK_epi_itaj_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_itaj_2000_biomass$Year <- ('2000')
# LK_epi_itaj_2000_biomass$subregion <- ('LK')
# LK_epi_itaj_2000_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# LK_epi_itaj_2000_count <- count(LK_epi_itaj_2000, vars = "SPECIES_CD")
# 
# LK_epi_itaj_2000_biomass_count <- cbind(LK_epi_itaj_2000_biomass,LK_epi_itaj_2000_count)

LK_epi_itaj_2001 <- filter(LK_epi_itaj, YEAR_ == '2001')
LK_epi_itaj_2001_biomass <- summarise_at(LK_epi_itaj_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_itaj_2001_biomass$Year <- ('2001')
LK_epi_itaj_2001_biomass$subregion <- ('LK')
LK_epi_itaj_2001_biomass$SPECIES_CD <- ('EPI ITAJ')

LK_epi_itaj_2001_count <- count(LK_epi_itaj_2001, vars = "SPECIES_CD")

LK_epi_itaj_2001_biomass_count <- cbind(LK_epi_itaj_2001_biomass,LK_epi_itaj_2001_count)


# LK_epi_itaj_2002 <- filter(LK_epi_itaj, YEAR_ == '2002')
# LK_epi_itaj_2002_biomass <- summarise_at(LK_epi_itaj_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_itaj_2002_biomass$Year <- ('2002')
# LK_epi_itaj_2002_biomass$subregion <- ('LK')
# LK_epi_itaj_2002_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# LK_epi_itaj_2002_count <- count(LK_epi_itaj_2002, vars = "SPECIES_CD")
# 
# LK_epi_itaj_2002_biomass_count <- cbind(LK_epi_itaj_2002_biomass,LK_epi_itaj_2002_count)
# 
# 
# LK_epi_itaj_2003 <- filter(LK_epi_itaj, YEAR_ == '2003')
# LK_epi_itaj_2003_biomass <- summarise_at(LK_epi_itaj_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_itaj_2003_biomass$Year <- ('2003')
# LK_epi_itaj_2003_biomass$subregion <- ('LK')
# LK_epi_itaj_2003_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# LK_epi_itaj_2003_count <- count(LK_epi_itaj_2003, vars = "SPECIES_CD")
# 
# LK_epi_itaj_2003_biomass_count <- cbind(LK_epi_itaj_2003_biomass,LK_epi_itaj_2003_count)
# 
# 
# LK_epi_itaj_2004 <- filter(LK_epi_itaj, YEAR_ == '2004')
# LK_epi_itaj_2004_biomass <- summarise_at(LK_epi_itaj_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_itaj_2004_biomass$Year <- ('2004')
# LK_epi_itaj_2004_biomass$subregion <- ('LK')
# LK_epi_itaj_2004_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# LK_epi_itaj_2004_count <- count(LK_epi_itaj_2004, vars = "SPECIES_CD")
# 
# LK_epi_itaj_2004_biomass_count <- cbind(LK_epi_itaj_2004_biomass,LK_epi_itaj_2004_count)
# 
# 
# LK_epi_itaj_2005 <- filter(LK_epi_itaj, YEAR_ == '2005')
# LK_epi_itaj_2005_biomass <- summarise_at(LK_epi_itaj_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_itaj_2005_biomass$Year <- ('2005')
# LK_epi_itaj_2005_biomass$subregion <- ('LK')
# LK_epi_itaj_2005_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# LK_epi_itaj_2005_count <- count(LK_epi_itaj_2005, vars = "SPECIES_CD")
# 
# LK_epi_itaj_2005_biomass_count <- cbind(LK_epi_itaj_2005_biomass,LK_epi_itaj_2005_count)


LK_epi_itaj_2006 <- filter(LK_epi_itaj, YEAR_ == '2006')
LK_epi_itaj_2006_biomass <- summarise_at(LK_epi_itaj_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_itaj_2006_biomass$Year <- ('2006')
LK_epi_itaj_2006_biomass$subregion <- ('LK')
LK_epi_itaj_2006_biomass$SPECIES_CD <- ('EPI ITAJ')


LK_epi_itaj_2006_count <- count(LK_epi_itaj_2006, vars = "SPECIES_CD")

LK_epi_itaj_2006_biomass_count <- cbind(LK_epi_itaj_2006_biomass,LK_epi_itaj_2006_count)


LK_epi_itaj_2007 <- filter(LK_epi_itaj, YEAR_ == '2007')
LK_epi_itaj_2007_biomass <- summarise_at(LK_epi_itaj_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_itaj_2007_biomass$Year <- ('2007')
LK_epi_itaj_2007_biomass$subregion <- ('LK')
LK_epi_itaj_2007_biomass$SPECIES_CD <- ('EPI ITAJ')

LK_epi_itaj_2007_count <- count(LK_epi_itaj_2007, vars = "SPECIES_CD")

LK_epi_itaj_2007_biomass_count <- cbind(LK_epi_itaj_2007_biomass,LK_epi_itaj_2007_count)


LK_epi_itaj_2008 <- filter(LK_epi_itaj, YEAR_ == '2008')
LK_epi_itaj_2008_biomass <- summarise_at(LK_epi_itaj_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_itaj_2008_biomass$Year <- ('2008')
LK_epi_itaj_2008_biomass$subregion <- ('LK')
LK_epi_itaj_2008_biomass$SPECIES_CD <- ('EPI ITAJ')

LK_epi_itaj_2008_count <- count(LK_epi_itaj_2008, vars = "SPECIES_CD")

LK_epi_itaj_2008_biomass_count <- cbind(LK_epi_itaj_2008_biomass,LK_epi_itaj_2008_count)


LK_epi_itaj_2009 <- filter(LK_epi_itaj, YEAR_ == '2009')
LK_epi_itaj_2009_biomass <- summarise_at(LK_epi_itaj_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_itaj_2009_biomass$Year <- ('2009')
LK_epi_itaj_2009_biomass$subregion <- ('LK')
LK_epi_itaj_2009_biomass$SPECIES_CD <- ('EPI ITAJ')

LK_epi_itaj_2009_count <- count(LK_epi_itaj_2009, vars = "SPECIES_CD")

LK_epi_itaj_2009_biomass_count <- cbind(LK_epi_itaj_2009_biomass,LK_epi_itaj_2009_count)


# LK_epi_itaj_2010 <- filter(LK_epi_itaj, YEAR_ == '2010')
# LK_epi_itaj_2010_biomass <- summarise_at(LK_epi_itaj_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_itaj_2010_biomass$Year <- ('2010')
# LK_epi_itaj_2010_biomass$subregion <- ('LK')
# LK_epi_itaj_2010_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# LK_epi_itaj_2010_count <- count(LK_epi_itaj_2010, vars = "SPECIES_CD")
# 
# LK_epi_itaj_2010_biomass_count <- cbind(LK_epi_itaj_2010_biomass,LK_epi_itaj_2010_count)


LK_epi_itaj_2011 <- filter(LK_epi_itaj, YEAR_ == '2011')
LK_epi_itaj_2011_biomass <- summarise_at(LK_epi_itaj_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_itaj_2011_biomass$Year <- ('2011')
LK_epi_itaj_2011_biomass$subregion <- ('LK')
LK_epi_itaj_2011_biomass$SPECIES_CD <- ('EPI ITAJ')

LK_epi_itaj_2011_count <- count(LK_epi_itaj_2011, vars = "SPECIES_CD")

LK_epi_itaj_2011_biomass_count <- cbind(LK_epi_itaj_2011_biomass,LK_epi_itaj_2011_count)


# LK_epi_itaj_2012 <- filter(LK_epi_itaj, YEAR_ == '2012')
# LK_epi_itaj_2012_biomass <- summarise_at(LK_epi_itaj_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_itaj_2012_biomass$Year <- ('2012')
# LK_epi_itaj_2012_biomass$subregion <- ('LK')
# LK_epi_itaj_2012_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# LK_epi_itaj_2012_count <- count(LK_epi_itaj_2012, vars = "SPECIES_CD")
# 
# LK_epi_itaj_2012_biomass_count <- cbind(LK_epi_itaj_2012_biomass,LK_epi_itaj_2012_count)
# 
# 
# LK_epi_itaj_2014 <- filter(LK_epi_itaj, YEAR_ == '2014')
# LK_epi_itaj_2014_biomass <- summarise_at(LK_epi_itaj_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_itaj_2014_biomass$Year <- ('2014')
# LK_epi_itaj_2014_biomass$subregion <- ('LK')
# LK_epi_itaj_2014_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# LK_epi_itaj_2014_count <- count(LK_epi_itaj_2014, vars = "SPECIES_CD")
# 
# LK_epi_itaj_2014_biomass_count <- cbind(LK_epi_itaj_2014_biomass,LK_epi_itaj_2014_count)
# 
# 
# LK_epi_itaj_2016 <- filter(LK_epi_itaj, YEAR_ == '2016')
# LK_epi_itaj_2016_biomass <- summarise_at(LK_epi_itaj_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_itaj_2016_biomass$Year <- ('2016')
# LK_epi_itaj_2016_biomass$subregion <- ('LK')
# LK_epi_itaj_2016_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# LK_epi_itaj_2016_count <- count(LK_epi_itaj_2016, vars = "SPECIES_CD")
# 
# LK_epi_itaj_2016_biomass_count <- cbind(LK_epi_itaj_2016_biomass,LK_epi_itaj_2016_count)
# 
# 
# LK_epi_itaj_2018 <- filter(LK_epi_itaj, YEAR_ == '2018')
# LK_epi_itaj_2018_biomass <- summarise_at(LK_epi_itaj_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_itaj_2018_biomass$Year <- ('2018')
# LK_epi_itaj_2018_biomass$subregion <- ('LK')
# LK_epi_itaj_2018_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# LK_epi_itaj_2018_count <- count(LK_epi_itaj_2018, vars = "SPECIES_CD")
# 
# LK_epi_itaj_2018_biomass_count <- cbind(LK_epi_itaj_2018_biomass,LK_epi_itaj_2018_count)
# 

LK_epi_itaj_all <- rbind(LK_epi_itaj_2001_biomass_count,LK_epi_itaj_2006_biomass_count,LK_epi_itaj_2007_biomass_count,
                         LK_epi_itaj_2008_biomass_count,LK_epi_itaj_2009_biomass_count,LK_epi_itaj_2011_biomass_count)
                        
                         
LK_epi_itaj_all$vars <- NULL






LK_epi_mori <- filter(LK_grouper, SPECIES_CD == "EPI MORI")
unique(LK_epi_mori$YEAR_)

LK_epi_mori_1999 <- filter(LK_epi_mori, YEAR_ == '1999')
LK_epi_mori_1999_biomass <- summarise_at(LK_epi_mori_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_1999_biomass$Year <- ('1999')
LK_epi_mori_1999_biomass$subregion <- ('LK')
LK_epi_mori_1999_biomass$SPECIES_CD <- ('EPI MORI')

LK_epi_mori_1999_count <- count(LK_epi_mori_1999, vars = "SPECIES_CD")

LK_epi_mori_1999_biomass_count <- cbind(LK_epi_mori_1999_biomass,LK_epi_mori_1999_count)



LK_epi_mori_2000 <- filter(LK_epi_mori, YEAR_ == '2000')
LK_epi_mori_2000_biomass <- summarise_at(LK_epi_mori_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_2000_biomass$Year <- ('2000')
LK_epi_mori_2000_biomass$subregion <- ('LK')
LK_epi_mori_2000_biomass$SPECIES_CD <- ('EPI MORI')

LK_epi_mori_2000_count <- count(LK_epi_mori_2000, vars = "SPECIES_CD")

LK_epi_mori_2000_biomass_count <- cbind(LK_epi_mori_2000_biomass,LK_epi_mori_2000_count)

LK_epi_mori_2001 <- filter(LK_epi_mori, YEAR_ == '2001')
LK_epi_mori_2001_biomass <- summarise_at(LK_epi_mori_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_2001_biomass$Year <- ('2001')
LK_epi_mori_2001_biomass$subregion <- ('LK')
LK_epi_mori_2001_biomass$SPECIES_CD <- ('EPI MORI')

LK_epi_mori_2001_count <- count(LK_epi_mori_2001, vars = "SPECIES_CD")

LK_epi_mori_2001_biomass_count <- cbind(LK_epi_mori_2001_biomass,LK_epi_mori_2001_count)


LK_epi_mori_2002 <- filter(LK_epi_mori, YEAR_ == '2002')
LK_epi_mori_2002_biomass <- summarise_at(LK_epi_mori_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_2002_biomass$Year <- ('2002')
LK_epi_mori_2002_biomass$subregion <- ('LK')
LK_epi_mori_2002_biomass$SPECIES_CD <- ('EPI MORI')

LK_epi_mori_2002_count <- count(LK_epi_mori_2002, vars = "SPECIES_CD")

LK_epi_mori_2002_biomass_count <- cbind(LK_epi_mori_2002_biomass,LK_epi_mori_2002_count)


LK_epi_mori_2003 <- filter(LK_epi_mori, YEAR_ == '2003')
LK_epi_mori_2003_biomass <- summarise_at(LK_epi_mori_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_2003_biomass$Year <- ('2003')
LK_epi_mori_2003_biomass$subregion <- ('LK')
LK_epi_mori_2003_biomass$SPECIES_CD <- ('EPI MORI')

LK_epi_mori_2003_count <- count(LK_epi_mori_2003, vars = "SPECIES_CD")

LK_epi_mori_2003_biomass_count <- cbind(LK_epi_mori_2003_biomass,LK_epi_mori_2003_count)


LK_epi_mori_2004 <- filter(LK_epi_mori, YEAR_ == '2004')
LK_epi_mori_2004_biomass <- summarise_at(LK_epi_mori_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_2004_biomass$Year <- ('2004')
LK_epi_mori_2004_biomass$subregion <- ('LK')
LK_epi_mori_2004_biomass$SPECIES_CD <- ('EPI MORI')

LK_epi_mori_2004_count <- count(LK_epi_mori_2004, vars = "SPECIES_CD")

LK_epi_mori_2004_biomass_count <- cbind(LK_epi_mori_2004_biomass,LK_epi_mori_2004_count)


LK_epi_mori_2005 <- filter(LK_epi_mori, YEAR_ == '2005')
LK_epi_mori_2005_biomass <- summarise_at(LK_epi_mori_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_2005_biomass$Year <- ('2005')
LK_epi_mori_2005_biomass$subregion <- ('LK')
LK_epi_mori_2005_biomass$SPECIES_CD <- ('EPI MORI')

LK_epi_mori_2005_count <- count(LK_epi_mori_2005, vars = "SPECIES_CD")

LK_epi_mori_2005_biomass_count <- cbind(LK_epi_mori_2005_biomass,LK_epi_mori_2005_count)


LK_epi_mori_2006 <- filter(LK_epi_mori, YEAR_ == '2006')
LK_epi_mori_2006_biomass <- summarise_at(LK_epi_mori_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_2006_biomass$Year <- ('2006')
LK_epi_mori_2006_biomass$subregion <- ('LK')
LK_epi_mori_2006_biomass$SPECIES_CD <- ('EPI MORI')


LK_epi_mori_2006_count <- count(LK_epi_mori_2006, vars = "SPECIES_CD")

LK_epi_mori_2006_biomass_count <- cbind(LK_epi_mori_2006_biomass,LK_epi_mori_2006_count)


LK_epi_mori_2007 <- filter(LK_epi_mori, YEAR_ == '2007')
LK_epi_mori_2007_biomass <- summarise_at(LK_epi_mori_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_2007_biomass$Year <- ('2007')
LK_epi_mori_2007_biomass$subregion <- ('LK')
LK_epi_mori_2007_biomass$SPECIES_CD <- ('EPI MORI')

LK_epi_mori_2007_count <- count(LK_epi_mori_2007, vars = "SPECIES_CD")

LK_epi_mori_2007_biomass_count <- cbind(LK_epi_mori_2007_biomass,LK_epi_mori_2007_count)


LK_epi_mori_2008 <- filter(LK_epi_mori, YEAR_ == '2008')
LK_epi_mori_2008_biomass <- summarise_at(LK_epi_mori_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_2008_biomass$Year <- ('2008')
LK_epi_mori_2008_biomass$subregion <- ('LK')
LK_epi_mori_2008_biomass$SPECIES_CD <- ('EPI MORI')

LK_epi_mori_2008_count <- count(LK_epi_mori_2008, vars = "SPECIES_CD")

LK_epi_mori_2008_biomass_count <- cbind(LK_epi_mori_2008_biomass,LK_epi_mori_2008_count)


LK_epi_mori_2009 <- filter(LK_epi_mori, YEAR_ == '2009')
LK_epi_mori_2009_biomass <- summarise_at(LK_epi_mori_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_2009_biomass$Year <- ('2009')
LK_epi_mori_2009_biomass$subregion <- ('LK')
LK_epi_mori_2009_biomass$SPECIES_CD <- ('EPI MORI')

LK_epi_mori_2009_count <- count(LK_epi_mori_2009, vars = "SPECIES_CD")

LK_epi_mori_2009_biomass_count <- cbind(LK_epi_mori_2009_biomass,LK_epi_mori_2009_count)


LK_epi_mori_2010 <- filter(LK_epi_mori, YEAR_ == '2010')
LK_epi_mori_2010_biomass <- summarise_at(LK_epi_mori_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_2010_biomass$Year <- ('2010')
LK_epi_mori_2010_biomass$subregion <- ('LK')
LK_epi_mori_2010_biomass$SPECIES_CD <- ('EPI MORI')

LK_epi_mori_2010_count <- count(LK_epi_mori_2010, vars = "SPECIES_CD")

LK_epi_mori_2010_biomass_count <- cbind(LK_epi_mori_2010_biomass,LK_epi_mori_2010_count)


LK_epi_mori_2011 <- filter(LK_epi_mori, YEAR_ == '2011')
LK_epi_mori_2011_biomass <- summarise_at(LK_epi_mori_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_2011_biomass$Year <- ('2011')
LK_epi_mori_2011_biomass$subregion <- ('LK')
LK_epi_mori_2011_biomass$SPECIES_CD <- ('EPI MORI')

LK_epi_mori_2011_count <- count(LK_epi_mori_2011, vars = "SPECIES_CD")

LK_epi_mori_2011_biomass_count <- cbind(LK_epi_mori_2011_biomass,LK_epi_mori_2011_count)


LK_epi_mori_2012 <- filter(LK_epi_mori, YEAR_ == '2012')
LK_epi_mori_2012_biomass <- summarise_at(LK_epi_mori_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_2012_biomass$Year <- ('2012')
LK_epi_mori_2012_biomass$subregion <- ('LK')
LK_epi_mori_2012_biomass$SPECIES_CD <- ('EPI MORI')

LK_epi_mori_2012_count <- count(LK_epi_mori_2012, vars = "SPECIES_CD")

LK_epi_mori_2012_biomass_count <- cbind(LK_epi_mori_2012_biomass,LK_epi_mori_2012_count)


LK_epi_mori_2014 <- filter(LK_epi_mori, YEAR_ == '2014')
LK_epi_mori_2014_biomass <- summarise_at(LK_epi_mori_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_2014_biomass$Year <- ('2014')
LK_epi_mori_2014_biomass$subregion <- ('LK')
LK_epi_mori_2014_biomass$SPECIES_CD <- ('EPI MORI')

LK_epi_mori_2014_count <- count(LK_epi_mori_2014, vars = "SPECIES_CD")

LK_epi_mori_2014_biomass_count <- cbind(LK_epi_mori_2014_biomass,LK_epi_mori_2014_count)


LK_epi_mori_2016 <- filter(LK_epi_mori, YEAR_ == '2016')
LK_epi_mori_2016_biomass <- summarise_at(LK_epi_mori_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_2016_biomass$Year <- ('2016')
LK_epi_mori_2016_biomass$subregion <- ('LK')
LK_epi_mori_2016_biomass$SPECIES_CD <- ('EPI MORI')

LK_epi_mori_2016_count <- count(LK_epi_mori_2016, vars = "SPECIES_CD")

LK_epi_mori_2016_biomass_count <- cbind(LK_epi_mori_2016_biomass,LK_epi_mori_2016_count)


LK_epi_mori_2018 <- filter(LK_epi_mori, YEAR_ == '2018')
LK_epi_mori_2018_biomass <- summarise_at(LK_epi_mori_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_mori_2018_biomass$Year <- ('2018')
LK_epi_mori_2018_biomass$subregion <- ('LK')
LK_epi_mori_2018_biomass$SPECIES_CD <- ('EPI MORI')

LK_epi_mori_2018_count <- count(LK_epi_mori_2018, vars = "SPECIES_CD")

LK_epi_mori_2018_biomass_count <- cbind(LK_epi_mori_2018_biomass,LK_epi_mori_2018_count)


LK_epi_mori_all <- rbind(LK_epi_mori_1999_biomass_count,LK_epi_mori_2000_biomass_count,LK_epi_mori_2001_biomass_count,LK_epi_mori_2002_biomass_count,LK_epi_mori_2003_biomass_count,
                         LK_epi_mori_2005_biomass_count,LK_epi_mori_2006_biomass_count,LK_epi_mori_2007_biomass_count,
                         LK_epi_mori_2008_biomass_count,LK_epi_mori_2009_biomass_count,LK_epi_mori_2010_biomass_count,LK_epi_mori_2011_biomass_count,
                         LK_epi_mori_2012_biomass_count,LK_epi_mori_2014_biomass_count,LK_epi_mori_2016_biomass_count,LK_epi_mori_2018_biomass_count)

LK_epi_mori_all$vars <- NULL




LK_epi_stri <- filter(LK_grouper, SPECIES_CD == "EPI STRI")
unique(LK_epi_stri$YEAR_)

LK_epi_stri_1999 <- filter(LK_epi_stri, YEAR_ == '1999')
LK_epi_stri_1999_biomass <- summarise_at(LK_epi_stri_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_stri_1999_biomass$Year <- ('1999')
LK_epi_stri_1999_biomass$subregion <- ('LK')
LK_epi_stri_1999_biomass$SPECIES_CD <- ('EPI STRI')

LK_epi_stri_1999_count <- count(LK_epi_stri_1999, vars = "SPECIES_CD")

LK_epi_stri_1999_biomass_count <- cbind(LK_epi_stri_1999_biomass,LK_epi_stri_1999_count)



# LK_epi_stri_2000 <- filter(LK_epi_stri, YEAR_ == '2000')
# LK_epi_stri_2000_biomass <- summarise_at(LK_epi_stri_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_stri_2000_biomass$Year <- ('2000')
# LK_epi_stri_2000_biomass$subregion <- ('LK')
# LK_epi_stri_2000_biomass$SPECIES_CD <- ('EPI STRI')
# 
# LK_epi_stri_2000_count <- count(LK_epi_stri_2000, vars = "SPECIES_CD")
# 
# LK_epi_stri_2000_biomass_count <- cbind(LK_epi_stri_2000_biomass,LK_epi_stri_2000_count)

LK_epi_stri_2001 <- filter(LK_epi_stri, YEAR_ == '2001')
LK_epi_stri_2001_biomass <- summarise_at(LK_epi_stri_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_stri_2001_biomass$Year <- ('2001')
LK_epi_stri_2001_biomass$subregion <- ('LK')
LK_epi_stri_2001_biomass$SPECIES_CD <- ('EPI STRI')

LK_epi_stri_2001_count <- count(LK_epi_stri_2001, vars = "SPECIES_CD")

LK_epi_stri_2001_biomass_count <- cbind(LK_epi_stri_2001_biomass,LK_epi_stri_2001_count)


LK_epi_stri_2002 <- filter(LK_epi_stri, YEAR_ == '2002')
LK_epi_stri_2002_biomass <- summarise_at(LK_epi_stri_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_stri_2002_biomass$Year <- ('2002')
LK_epi_stri_2002_biomass$subregion <- ('LK')
LK_epi_stri_2002_biomass$SPECIES_CD <- ('EPI STRI')

LK_epi_stri_2002_count <- count(LK_epi_stri_2002, vars = "SPECIES_CD")

LK_epi_stri_2002_biomass_count <- cbind(LK_epi_stri_2002_biomass,LK_epi_stri_2002_count)


# LK_epi_stri_2003 <- filter(LK_epi_stri, YEAR_ == '2003')
# LK_epi_stri_2003_biomass <- summarise_at(LK_epi_stri_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_stri_2003_biomass$Year <- ('2003')
# LK_epi_stri_2003_biomass$subregion <- ('LK')
# LK_epi_stri_2003_biomass$SPECIES_CD <- ('EPI STRI')
# 
# LK_epi_stri_2003_count <- count(LK_epi_stri_2003, vars = "SPECIES_CD")
# 
# LK_epi_stri_2003_biomass_count <- cbind(LK_epi_stri_2003_biomass,LK_epi_stri_2003_count)
# 
# 
# LK_epi_stri_2004 <- filter(LK_epi_stri, YEAR_ == '2004')
# LK_epi_stri_2004_biomass <- summarise_at(LK_epi_stri_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_stri_2004_biomass$Year <- ('2004')
# LK_epi_stri_2004_biomass$subregion <- ('LK')
# LK_epi_stri_2004_biomass$SPECIES_CD <- ('EPI STRI')
# 
# LK_epi_stri_2004_count <- count(LK_epi_stri_2004, vars = "SPECIES_CD")
# 
# LK_epi_stri_2004_biomass_count <- cbind(LK_epi_stri_2004_biomass,LK_epi_stri_2004_count)
# 

LK_epi_stri_2005 <- filter(LK_epi_stri, YEAR_ == '2005')
LK_epi_stri_2005_biomass <- summarise_at(LK_epi_stri_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_stri_2005_biomass$Year <- ('2005')
LK_epi_stri_2005_biomass$subregion <- ('LK')
LK_epi_stri_2005_biomass$SPECIES_CD <- ('EPI STRI')

LK_epi_stri_2005_count <- count(LK_epi_stri_2005, vars = "SPECIES_CD")

LK_epi_stri_2005_biomass_count <- cbind(LK_epi_stri_2005_biomass,LK_epi_stri_2005_count)


LK_epi_stri_2006 <- filter(LK_epi_stri, YEAR_ == '2006')
LK_epi_stri_2006_biomass <- summarise_at(LK_epi_stri_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_stri_2006_biomass$Year <- ('2006')
LK_epi_stri_2006_biomass$subregion <- ('LK')
LK_epi_stri_2006_biomass$SPECIES_CD <- ('EPI STRI')


LK_epi_stri_2006_count <- count(LK_epi_stri_2006, vars = "SPECIES_CD")

LK_epi_stri_2006_biomass_count <- cbind(LK_epi_stri_2006_biomass,LK_epi_stri_2006_count)


LK_epi_stri_2007 <- filter(LK_epi_stri, YEAR_ == '2007')
LK_epi_stri_2007_biomass <- summarise_at(LK_epi_stri_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_stri_2007_biomass$Year <- ('2007')
LK_epi_stri_2007_biomass$subregion <- ('LK')
LK_epi_stri_2007_biomass$SPECIES_CD <- ('EPI STRI')

LK_epi_stri_2007_count <- count(LK_epi_stri_2007, vars = "SPECIES_CD")

LK_epi_stri_2007_biomass_count <- cbind(LK_epi_stri_2007_biomass,LK_epi_stri_2007_count)


# LK_epi_stri_2008 <- filter(LK_epi_stri, YEAR_ == '2008')
# LK_epi_stri_2008_biomass <- summarise_at(LK_epi_stri_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_stri_2008_biomass$Year <- ('2008')
# LK_epi_stri_2008_biomass$subregion <- ('LK')
# LK_epi_stri_2008_biomass$SPECIES_CD <- ('EPI STRI')
# 
# LK_epi_stri_2008_count <- count(LK_epi_stri_2008, vars = "SPECIES_CD")
# 
# LK_epi_stri_2008_biomass_count <- cbind(LK_epi_stri_2008_biomass,LK_epi_stri_2008_count)
# 
# 
# LK_epi_stri_2009 <- filter(LK_epi_stri, YEAR_ == '2009')
# LK_epi_stri_2009_biomass <- summarise_at(LK_epi_stri_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_stri_2009_biomass$Year <- ('2009')
# LK_epi_stri_2009_biomass$subregion <- ('LK')
# LK_epi_stri_2009_biomass$SPECIES_CD <- ('EPI STRI')
# 
# LK_epi_stri_2009_count <- count(LK_epi_stri_2009, vars = "SPECIES_CD")
# 
# LK_epi_stri_2009_biomass_count <- cbind(LK_epi_stri_2009_biomass,LK_epi_stri_2009_count)
# 
# 
# LK_epi_stri_2010 <- filter(LK_epi_stri, YEAR_ == '2010')
# LK_epi_stri_2010_biomass <- summarise_at(LK_epi_stri_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_stri_2010_biomass$Year <- ('2010')
# LK_epi_stri_2010_biomass$subregion <- ('LK')
# LK_epi_stri_2010_biomass$SPECIES_CD <- ('EPI STRI')
# 
# LK_epi_stri_2010_count <- count(LK_epi_stri_2010, vars = "SPECIES_CD")
# 
# LK_epi_stri_2010_biomass_count <- cbind(LK_epi_stri_2010_biomass,LK_epi_stri_2010_count)


LK_epi_stri_2011 <- filter(LK_epi_stri, YEAR_ == '2011')
LK_epi_stri_2011_biomass <- summarise_at(LK_epi_stri_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_stri_2011_biomass$Year <- ('2011')
LK_epi_stri_2011_biomass$subregion <- ('LK')
LK_epi_stri_2011_biomass$SPECIES_CD <- ('EPI STRI')

LK_epi_stri_2011_count <- count(LK_epi_stri_2011, vars = "SPECIES_CD")

LK_epi_stri_2011_biomass_count <- cbind(LK_epi_stri_2011_biomass,LK_epi_stri_2011_count)


# LK_epi_stri_2012 <- filter(LK_epi_stri, YEAR_ == '2012')
# LK_epi_stri_2012_biomass <- summarise_at(LK_epi_stri_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_stri_2012_biomass$Year <- ('2012')
# LK_epi_stri_2012_biomass$subregion <- ('LK')
# LK_epi_stri_2012_biomass$SPECIES_CD <- ('EPI STRI')
# 
# LK_epi_stri_2012_count <- count(LK_epi_stri_2012, vars = "SPECIES_CD")
# 
# LK_epi_stri_2012_biomass_count <- cbind(LK_epi_stri_2012_biomass,LK_epi_stri_2012_count)


# LK_epi_stri_2014 <- filter(LK_epi_stri, YEAR_ == '2014')
# LK_epi_stri_2014_biomass <- summarise_at(LK_epi_stri_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_stri_2014_biomass$Year <- ('2014')
# LK_epi_stri_2014_biomass$subregion <- ('LK')
# LK_epi_stri_2014_biomass$SPECIES_CD <- ('EPI STRI')
# 
# LK_epi_stri_2014_count <- count(LK_epi_stri_2014, vars = "SPECIES_CD")
# 
# LK_epi_stri_2014_biomass_count <- cbind(LK_epi_stri_2014_biomass,LK_epi_stri_2014_count)


LK_epi_stri_2016 <- filter(LK_epi_stri, YEAR_ == '2016')
LK_epi_stri_2016_biomass <- summarise_at(LK_epi_stri_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_epi_stri_2016_biomass$Year <- ('2016')
LK_epi_stri_2016_biomass$subregion <- ('LK')
LK_epi_stri_2016_biomass$SPECIES_CD <- ('EPI STRI')

LK_epi_stri_2016_count <- count(LK_epi_stri_2016, vars = "SPECIES_CD")

LK_epi_stri_2016_biomass_count <- cbind(LK_epi_stri_2016_biomass,LK_epi_stri_2016_count)


# LK_epi_stri_2018 <- filter(LK_epi_stri, YEAR_ == '2018')
# LK_epi_stri_2018_biomass <- summarise_at(LK_epi_stri_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_epi_stri_2018_biomass$Year <- ('2018')
# LK_epi_stri_2018_biomass$subregion <- ('LK')
# LK_epi_stri_2018_biomass$SPECIES_CD <- ('EPI STRI')
# 
# LK_epi_stri_2018_count <- count(LK_epi_stri_2018, vars = "SPECIES_CD")
# 
# LK_epi_stri_2018_biomass_count <- cbind(LK_epi_stri_2018_biomass,LK_epi_stri_2018_count)


LK_epi_stri_all <- rbind(LK_epi_stri_1999_biomass_count,LK_epi_stri_2001_biomass_count,LK_epi_stri_2002_biomass_count,LK_epi_stri_2005_biomass_count,LK_epi_stri_2006_biomass_count,LK_epi_stri_2007_biomass_count,
                         LK_epi_stri_2011_biomass_count,LK_epi_stri_2016_biomass_count)

LK_epi_stri_all$vars <- NULL






LK_myc_bona <- filter(LK_grouper, SPECIES_CD == "MYC BONA")
unique(LK_myc_bona$YEAR_)

LK_myc_bona_1999 <- filter(LK_myc_bona, YEAR_ == '1999')
LK_myc_bona_1999_biomass <- summarise_at(LK_myc_bona_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_1999_biomass$Year <- ('1999')
LK_myc_bona_1999_biomass$subregion <- ('LK')
LK_myc_bona_1999_biomass$SPECIES_CD <- ('MYC BONA')

LK_myc_bona_1999_count <- count(LK_myc_bona_1999, vars = "SPECIES_CD")

LK_myc_bona_1999_biomass_count <- cbind(LK_myc_bona_1999_biomass,LK_myc_bona_1999_count)



LK_myc_bona_2000 <- filter(LK_myc_bona, YEAR_ == '2000')
LK_myc_bona_2000_biomass <- summarise_at(LK_myc_bona_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_2000_biomass$Year <- ('2000')
LK_myc_bona_2000_biomass$subregion <- ('LK')
LK_myc_bona_2000_biomass$SPECIES_CD <- ('MYC BONA')

LK_myc_bona_2000_count <- count(LK_myc_bona_2000, vars = "SPECIES_CD")

LK_myc_bona_2000_biomass_count <- cbind(LK_myc_bona_2000_biomass,LK_myc_bona_2000_count)

LK_myc_bona_2001 <- filter(LK_myc_bona, YEAR_ == '2001')
LK_myc_bona_2001_biomass <- summarise_at(LK_myc_bona_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_2001_biomass$Year <- ('2001')
LK_myc_bona_2001_biomass$subregion <- ('LK')
LK_myc_bona_2001_biomass$SPECIES_CD <- ('MYC BONA')

LK_myc_bona_2001_count <- count(LK_myc_bona_2001, vars = "SPECIES_CD")

LK_myc_bona_2001_biomass_count <- cbind(LK_myc_bona_2001_biomass,LK_myc_bona_2001_count)


LK_myc_bona_2002 <- filter(LK_myc_bona, YEAR_ == '2002')
LK_myc_bona_2002_biomass <- summarise_at(LK_myc_bona_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_2002_biomass$Year <- ('2002')
LK_myc_bona_2002_biomass$subregion <- ('LK')
LK_myc_bona_2002_biomass$SPECIES_CD <- ('MYC BONA')

LK_myc_bona_2002_count <- count(LK_myc_bona_2002, vars = "SPECIES_CD")

LK_myc_bona_2002_biomass_count <- cbind(LK_myc_bona_2002_biomass,LK_myc_bona_2002_count)


LK_myc_bona_2003 <- filter(LK_myc_bona, YEAR_ == '2003')
LK_myc_bona_2003_biomass <- summarise_at(LK_myc_bona_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_2003_biomass$Year <- ('2003')
LK_myc_bona_2003_biomass$subregion <- ('LK')
LK_myc_bona_2003_biomass$SPECIES_CD <- ('MYC BONA')

LK_myc_bona_2003_count <- count(LK_myc_bona_2003, vars = "SPECIES_CD")

LK_myc_bona_2003_biomass_count <- cbind(LK_myc_bona_2003_biomass,LK_myc_bona_2003_count)


LK_myc_bona_2004 <- filter(LK_myc_bona, YEAR_ == '2004')
LK_myc_bona_2004_biomass <- summarise_at(LK_myc_bona_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_2004_biomass$Year <- ('2004')
LK_myc_bona_2004_biomass$subregion <- ('LK')
LK_myc_bona_2004_biomass$SPECIES_CD <- ('MYC BONA')

LK_myc_bona_2004_count <- count(LK_myc_bona_2004, vars = "SPECIES_CD")

LK_myc_bona_2004_biomass_count <- cbind(LK_myc_bona_2004_biomass,LK_myc_bona_2004_count)


LK_myc_bona_2005 <- filter(LK_myc_bona, YEAR_ == '2005')
LK_myc_bona_2005_biomass <- summarise_at(LK_myc_bona_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_2005_biomass$Year <- ('2005')
LK_myc_bona_2005_biomass$subregion <- ('LK')
LK_myc_bona_2005_biomass$SPECIES_CD <- ('MYC BONA')

LK_myc_bona_2005_count <- count(LK_myc_bona_2005, vars = "SPECIES_CD")

LK_myc_bona_2005_biomass_count <- cbind(LK_myc_bona_2005_biomass,LK_myc_bona_2005_count)


LK_myc_bona_2006 <- filter(LK_myc_bona, YEAR_ == '2006')
LK_myc_bona_2006_biomass <- summarise_at(LK_myc_bona_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_2006_biomass$Year <- ('2006')
LK_myc_bona_2006_biomass$subregion <- ('LK')
LK_myc_bona_2006_biomass$SPECIES_CD <- ('MYC BONA')


LK_myc_bona_2006_count <- count(LK_myc_bona_2006, vars = "SPECIES_CD")

LK_myc_bona_2006_biomass_count <- cbind(LK_myc_bona_2006_biomass,LK_myc_bona_2006_count)


LK_myc_bona_2007 <- filter(LK_myc_bona, YEAR_ == '2007')
LK_myc_bona_2007_biomass <- summarise_at(LK_myc_bona_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_2007_biomass$Year <- ('2007')
LK_myc_bona_2007_biomass$subregion <- ('LK')
LK_myc_bona_2007_biomass$SPECIES_CD <- ('MYC BONA')

LK_myc_bona_2007_count <- count(LK_myc_bona_2007, vars = "SPECIES_CD")

LK_myc_bona_2007_biomass_count <- cbind(LK_myc_bona_2007_biomass,LK_myc_bona_2007_count)


LK_myc_bona_2008 <- filter(LK_myc_bona, YEAR_ == '2008')
LK_myc_bona_2008_biomass <- summarise_at(LK_myc_bona_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_2008_biomass$Year <- ('2008')
LK_myc_bona_2008_biomass$subregion <- ('LK')
LK_myc_bona_2008_biomass$SPECIES_CD <- ('MYC BONA')

LK_myc_bona_2008_count <- count(LK_myc_bona_2008, vars = "SPECIES_CD")

LK_myc_bona_2008_biomass_count <- cbind(LK_myc_bona_2008_biomass,LK_myc_bona_2008_count)


LK_myc_bona_2009 <- filter(LK_myc_bona, YEAR_ == '2009')
LK_myc_bona_2009_biomass <- summarise_at(LK_myc_bona_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_2009_biomass$Year <- ('2009')
LK_myc_bona_2009_biomass$subregion <- ('LK')
LK_myc_bona_2009_biomass$SPECIES_CD <- ('MYC BONA')

LK_myc_bona_2009_count <- count(LK_myc_bona_2009, vars = "SPECIES_CD")

LK_myc_bona_2009_biomass_count <- cbind(LK_myc_bona_2009_biomass,LK_myc_bona_2009_count)


LK_myc_bona_2010 <- filter(LK_myc_bona, YEAR_ == '2010')
LK_myc_bona_2010_biomass <- summarise_at(LK_myc_bona_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_2010_biomass$Year <- ('2010')
LK_myc_bona_2010_biomass$subregion <- ('LK')
LK_myc_bona_2010_biomass$SPECIES_CD <- ('MYC BONA')

LK_myc_bona_2010_count <- count(LK_myc_bona_2010, vars = "SPECIES_CD")

LK_myc_bona_2010_biomass_count <- cbind(LK_myc_bona_2010_biomass,LK_myc_bona_2010_count)


LK_myc_bona_2011 <- filter(LK_myc_bona, YEAR_ == '2011')
LK_myc_bona_2011_biomass <- summarise_at(LK_myc_bona_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_2011_biomass$Year <- ('2011')
LK_myc_bona_2011_biomass$subregion <- ('LK')
LK_myc_bona_2011_biomass$SPECIES_CD <- ('MYC BONA')

LK_myc_bona_2011_count <- count(LK_myc_bona_2011, vars = "SPECIES_CD")

LK_myc_bona_2011_biomass_count <- cbind(LK_myc_bona_2011_biomass,LK_myc_bona_2011_count)


LK_myc_bona_2012 <- filter(LK_myc_bona, YEAR_ == '2012')
LK_myc_bona_2012_biomass <- summarise_at(LK_myc_bona_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_2012_biomass$Year <- ('2012')
LK_myc_bona_2012_biomass$subregion <- ('LK')
LK_myc_bona_2012_biomass$SPECIES_CD <- ('MYC BONA')

LK_myc_bona_2012_count <- count(LK_myc_bona_2012, vars = "SPECIES_CD")

LK_myc_bona_2012_biomass_count <- cbind(LK_myc_bona_2012_biomass,LK_myc_bona_2012_count)


LK_myc_bona_2014 <- filter(LK_myc_bona, YEAR_ == '2014')
LK_myc_bona_2014_biomass <- summarise_at(LK_myc_bona_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_2014_biomass$Year <- ('2014')
LK_myc_bona_2014_biomass$subregion <- ('LK')
LK_myc_bona_2014_biomass$SPECIES_CD <- ('MYC BONA')

LK_myc_bona_2014_count <- count(LK_myc_bona_2014, vars = "SPECIES_CD")

LK_myc_bona_2014_biomass_count <- cbind(LK_myc_bona_2014_biomass,LK_myc_bona_2014_count)


LK_myc_bona_2016 <- filter(LK_myc_bona, YEAR_ == '2016')
LK_myc_bona_2016_biomass <- summarise_at(LK_myc_bona_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_2016_biomass$Year <- ('2016')
LK_myc_bona_2016_biomass$subregion <- ('LK')
LK_myc_bona_2016_biomass$SPECIES_CD <- ('MYC BONA')

LK_myc_bona_2016_count <- count(LK_myc_bona_2016, vars = "SPECIES_CD")

LK_myc_bona_2016_biomass_count <- cbind(LK_myc_bona_2016_biomass,LK_myc_bona_2016_count)


LK_myc_bona_2018 <- filter(LK_myc_bona, YEAR_ == '2018')
LK_myc_bona_2018_biomass <- summarise_at(LK_myc_bona_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_bona_2018_biomass$Year <- ('2018')
LK_myc_bona_2018_biomass$subregion <- ('LK')
LK_myc_bona_2018_biomass$SPECIES_CD <- ('MYC BONA')

LK_myc_bona_2018_count <- count(LK_myc_bona_2018, vars = "SPECIES_CD")

LK_myc_bona_2018_biomass_count <- cbind(LK_myc_bona_2018_biomass,LK_myc_bona_2018_count)


LK_myc_bona_all <- rbind(LK_myc_bona_1999_biomass_count,LK_myc_bona_2000_biomass_count,LK_myc_bona_2001_biomass_count,LK_myc_bona_2002_biomass_count,LK_myc_bona_2003_biomass_count,
                         LK_myc_bona_2004_biomass_count,LK_myc_bona_2005_biomass_count,LK_myc_bona_2006_biomass_count,LK_myc_bona_2007_biomass_count,
                         LK_myc_bona_2008_biomass_count,LK_myc_bona_2009_biomass_count,LK_myc_bona_2010_biomass_count,LK_myc_bona_2011_biomass_count,
                         LK_myc_bona_2012_biomass_count,LK_myc_bona_2014_biomass_count,LK_myc_bona_2016_biomass_count,LK_myc_bona_2018_biomass_count)

LK_myc_bona_all$vars <- NULL




LK_myc_inte <- filter(LK_grouper, SPECIES_CD == "MYC INTE")
unique(LK_myc_inte$YEAR_)

# LK_myc_inte_1999 <- filter(LK_myc_inte, YEAR_ == '1999')
# LK_myc_inte_1999_biomass <- summarise_at(LK_myc_inte_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_inte_1999_biomass$Year <- ('1999')
# LK_myc_inte_1999_biomass$subregion <- ('LK')
# LK_myc_inte_1999_biomass$SPECIES_CD <- ('MYC INTE')
# 
# LK_myc_inte_1999_count <- count(LK_myc_inte_1999, vars = "SPECIES_CD")
# 
# LK_myc_inte_1999_biomass_count <- cbind(LK_myc_inte_1999_biomass,LK_myc_inte_1999_count)
# 


LK_myc_inte_2000 <- filter(LK_myc_inte, YEAR_ == '2000')
LK_myc_inte_2000_biomass <- summarise_at(LK_myc_inte_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_inte_2000_biomass$Year <- ('2000')
LK_myc_inte_2000_biomass$subregion <- ('LK')
LK_myc_inte_2000_biomass$SPECIES_CD <- ('MYC INTE')

LK_myc_inte_2000_count <- count(LK_myc_inte_2000, vars = "SPECIES_CD")

LK_myc_inte_2000_biomass_count <- cbind(LK_myc_inte_2000_biomass,LK_myc_inte_2000_count)

LK_myc_inte_2001 <- filter(LK_myc_inte, YEAR_ == '2001')
LK_myc_inte_2001_biomass <- summarise_at(LK_myc_inte_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_inte_2001_biomass$Year <- ('2001')
LK_myc_inte_2001_biomass$subregion <- ('LK')
LK_myc_inte_2001_biomass$SPECIES_CD <- ('MYC INTE')

LK_myc_inte_2001_count <- count(LK_myc_inte_2001, vars = "SPECIES_CD")

LK_myc_inte_2001_biomass_count <- cbind(LK_myc_inte_2001_biomass,LK_myc_inte_2001_count)


LK_myc_inte_2002 <- filter(LK_myc_inte, YEAR_ == '2002')
LK_myc_inte_2002_biomass <- summarise_at(LK_myc_inte_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_inte_2002_biomass$Year <- ('2002')
LK_myc_inte_2002_biomass$subregion <- ('LK')
LK_myc_inte_2002_biomass$SPECIES_CD <- ('MYC INTE')

LK_myc_inte_2002_count <- count(LK_myc_inte_2002, vars = "SPECIES_CD")

LK_myc_inte_2002_biomass_count <- cbind(LK_myc_inte_2002_biomass,LK_myc_inte_2002_count)


# LK_myc_inte_2003 <- filter(LK_myc_inte, YEAR_ == '2003')
# LK_myc_inte_2003_biomass <- summarise_at(LK_myc_inte_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_inte_2003_biomass$Year <- ('2003')
# LK_myc_inte_2003_biomass$subregion <- ('LK')
# LK_myc_inte_2003_biomass$SPECIES_CD <- ('MYC INTE')
# 
# LK_myc_inte_2003_count <- count(LK_myc_inte_2003, vars = "SPECIES_CD")
# 
# LK_myc_inte_2003_biomass_count <- cbind(LK_myc_inte_2003_biomass,LK_myc_inte_2003_count)
# 
# 
# LK_myc_inte_2004 <- filter(LK_myc_inte, YEAR_ == '2004')
# LK_myc_inte_2004_biomass <- summarise_at(LK_myc_inte_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_inte_2004_biomass$Year <- ('2004')
# LK_myc_inte_2004_biomass$subregion <- ('LK')
# LK_myc_inte_2004_biomass$SPECIES_CD <- ('MYC INTE')
# 
# LK_myc_inte_2004_count <- count(LK_myc_inte_2004, vars = "SPECIES_CD")
# 
# LK_myc_inte_2004_biomass_count <- cbind(LK_myc_inte_2004_biomass,LK_myc_inte_2004_count)


LK_myc_inte_2005 <- filter(LK_myc_inte, YEAR_ == '2005')
LK_myc_inte_2005_biomass <- summarise_at(LK_myc_inte_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_inte_2005_biomass$Year <- ('2005')
LK_myc_inte_2005_biomass$subregion <- ('LK')
LK_myc_inte_2005_biomass$SPECIES_CD <- ('MYC INTE')

LK_myc_inte_2005_count <- count(LK_myc_inte_2005, vars = "SPECIES_CD")

LK_myc_inte_2005_biomass_count <- cbind(LK_myc_inte_2005_biomass,LK_myc_inte_2005_count)


# LK_myc_inte_2006 <- filter(LK_myc_inte, YEAR_ == '2006')
# LK_myc_inte_2006_biomass <- summarise_at(LK_myc_inte_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_inte_2006_biomass$Year <- ('2006')
# LK_myc_inte_2006_biomass$subregion <- ('LK')
# LK_myc_inte_2006_biomass$SPECIES_CD <- ('MYC INTE')
# 
# 
# LK_myc_inte_2006_count <- count(LK_myc_inte_2006, vars = "SPECIES_CD")
# 
# LK_myc_inte_2006_biomass_count <- cbind(LK_myc_inte_2006_biomass,LK_myc_inte_2006_count)
# 
# 
# LK_myc_inte_2007 <- filter(LK_myc_inte, YEAR_ == '2007')
# LK_myc_inte_2007_biomass <- summarise_at(LK_myc_inte_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_inte_2007_biomass$Year <- ('2007')
# LK_myc_inte_2007_biomass$subregion <- ('LK')
# LK_myc_inte_2007_biomass$SPECIES_CD <- ('MYC INTE')
# 
# LK_myc_inte_2007_count <- count(LK_myc_inte_2007, vars = "SPECIES_CD")
# 
# LK_myc_inte_2007_biomass_count <- cbind(LK_myc_inte_2007_biomass,LK_myc_inte_2007_count)
# 
# 
# LK_myc_inte_2008 <- filter(LK_myc_inte, YEAR_ == '2008')
# LK_myc_inte_2008_biomass <- summarise_at(LK_myc_inte_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_inte_2008_biomass$Year <- ('2008')
# LK_myc_inte_2008_biomass$subregion <- ('LK')
# LK_myc_inte_2008_biomass$SPECIES_CD <- ('MYC INTE')
# 
# LK_myc_inte_2008_count <- count(LK_myc_inte_2008, vars = "SPECIES_CD")
# 
# LK_myc_inte_2008_biomass_count <- cbind(LK_myc_inte_2008_biomass,LK_myc_inte_2008_count)


LK_myc_inte_2009 <- filter(LK_myc_inte, YEAR_ == '2009')
LK_myc_inte_2009_biomass <- summarise_at(LK_myc_inte_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_inte_2009_biomass$Year <- ('2009')
LK_myc_inte_2009_biomass$subregion <- ('LK')
LK_myc_inte_2009_biomass$SPECIES_CD <- ('MYC INTE')

LK_myc_inte_2009_count <- count(LK_myc_inte_2009, vars = "SPECIES_CD")

LK_myc_inte_2009_biomass_count <- cbind(LK_myc_inte_2009_biomass,LK_myc_inte_2009_count)


# LK_myc_inte_2010 <- filter(LK_myc_inte, YEAR_ == '2010')
# LK_myc_inte_2010_biomass <- summarise_at(LK_myc_inte_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_inte_2010_biomass$Year <- ('2010')
# LK_myc_inte_2010_biomass$subregion <- ('LK')
# LK_myc_inte_2010_biomass$SPECIES_CD <- ('MYC INTE')
# 
# LK_myc_inte_2010_count <- count(LK_myc_inte_2010, vars = "SPECIES_CD")
# 
# LK_myc_inte_2010_biomass_count <- cbind(LK_myc_inte_2010_biomass,LK_myc_inte_2010_count)
# 
# 
# LK_myc_inte_2011 <- filter(LK_myc_inte, YEAR_ == '2011')
# LK_myc_inte_2011_biomass <- summarise_at(LK_myc_inte_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_inte_2011_biomass$Year <- ('2011')
# LK_myc_inte_2011_biomass$subregion <- ('LK')
# LK_myc_inte_2011_biomass$SPECIES_CD <- ('MYC INTE')
# 
# LK_myc_inte_2011_count <- count(LK_myc_inte_2011, vars = "SPECIES_CD")
# 
# LK_myc_inte_2011_biomass_count <- cbind(LK_myc_inte_2011_biomass,LK_myc_inte_2011_count)
# 
# 
# LK_myc_inte_2012 <- filter(LK_myc_inte, YEAR_ == '2012')
# LK_myc_inte_2012_biomass <- summarise_at(LK_myc_inte_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_inte_2012_biomass$Year <- ('2012')
# LK_myc_inte_2012_biomass$subregion <- ('LK')
# LK_myc_inte_2012_biomass$SPECIES_CD <- ('MYC INTE')
# 
# LK_myc_inte_2012_count <- count(LK_myc_inte_2012, vars = "SPECIES_CD")
# 
# LK_myc_inte_2012_biomass_count <- cbind(LK_myc_inte_2012_biomass,LK_myc_inte_2012_count)
# 
# 
# LK_myc_inte_2014 <- filter(LK_myc_inte, YEAR_ == '2014')
# LK_myc_inte_2014_biomass <- summarise_at(LK_myc_inte_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_inte_2014_biomass$Year <- ('2014')
# LK_myc_inte_2014_biomass$subregion <- ('LK')
# LK_myc_inte_2014_biomass$SPECIES_CD <- ('MYC INTE')
# 
# LK_myc_inte_2014_count <- count(LK_myc_inte_2014, vars = "SPECIES_CD")
# 
# LK_myc_inte_2014_biomass_count <- cbind(LK_myc_inte_2014_biomass,LK_myc_inte_2014_count)
# 
# 
# LK_myc_inte_2016 <- filter(LK_myc_inte, YEAR_ == '2016')
# LK_myc_inte_2016_biomass <- summarise_at(LK_myc_inte_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_inte_2016_biomass$Year <- ('2016')
# LK_myc_inte_2016_biomass$subregion <- ('LK')
# LK_myc_inte_2016_biomass$SPECIES_CD <- ('MYC INTE')
# 
# LK_myc_inte_2016_count <- count(LK_myc_inte_2016, vars = "SPECIES_CD")
# 
# LK_myc_inte_2016_biomass_count <- cbind(LK_myc_inte_2016_biomass,LK_myc_inte_2016_count)
# 
# 
# LK_myc_inte_2018 <- filter(LK_myc_inte, YEAR_ == '2018')
# LK_myc_inte_2018_biomass <- summarise_at(LK_myc_inte_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_inte_2018_biomass$Year <- ('2018')
# LK_myc_inte_2018_biomass$subregion <- ('LK')
# LK_myc_inte_2018_biomass$SPECIES_CD <- ('MYC INTE')
# 
# LK_myc_inte_2018_count <- count(LK_myc_inte_2018, vars = "SPECIES_CD")
# 
# LK_myc_inte_2018_biomass_count <- cbind(LK_myc_inte_2018_biomass,LK_myc_inte_2018_count)


LK_myc_inte_all <- rbind(LK_myc_inte_2000_biomass_count,LK_myc_inte_2001_biomass_count,LK_myc_inte_2002_biomass_count,
                         LK_myc_inte_2005_biomass_count,LK_myc_inte_2009_biomass_count)

LK_myc_inte_all$vars <- NULL




LK_myc_micr <- filter(LK_grouper, SPECIES_CD == "MYC MICR")
unique(LK_myc_micr$YEAR_)

# LK_myc_micr_1999 <- filter(LK_myc_micr, YEAR_ == '1999')
# LK_myc_micr_1999_biomass <- summarise_at(LK_myc_micr_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_micr_1999_biomass$Year <- ('1999')
# LK_myc_micr_1999_biomass$subregion <- ('LK')
# LK_myc_micr_1999_biomass$SPECIES_CD <- ('MYC MICR')
# 
# LK_myc_micr_1999_count <- count(LK_myc_micr_1999, vars = "SPECIES_CD")
# 
# LK_myc_micr_1999_biomass_count <- cbind(LK_myc_micr_1999_biomass,LK_myc_micr_1999_count)



LK_myc_micr_2000 <- filter(LK_myc_micr, YEAR_ == '2000')
LK_myc_micr_2000_biomass <- summarise_at(LK_myc_micr_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_micr_2000_biomass$Year <- ('2000')
LK_myc_micr_2000_biomass$subregion <- ('LK')
LK_myc_micr_2000_biomass$SPECIES_CD <- ('MYC MICR')

LK_myc_micr_2000_count <- count(LK_myc_micr_2000, vars = "SPECIES_CD")

LK_myc_micr_2000_biomass_count <- cbind(LK_myc_micr_2000_biomass,LK_myc_micr_2000_count)

# LK_myc_micr_2001 <- filter(LK_myc_micr, YEAR_ == '2001')
# LK_myc_micr_2001_biomass <- summarise_at(LK_myc_micr_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_micr_2001_biomass$Year <- ('2001')
# LK_myc_micr_2001_biomass$subregion <- ('LK')
# LK_myc_micr_2001_biomass$SPECIES_CD <- ('MYC MICR')
# 
# LK_myc_micr_2001_count <- count(LK_myc_micr_2001, vars = "SPECIES_CD")
# 
# LK_myc_micr_2001_biomass_count <- cbind(LK_myc_micr_2001_biomass,LK_myc_micr_2001_count)


LK_myc_micr_2002 <- filter(LK_myc_micr, YEAR_ == '2002')
LK_myc_micr_2002_biomass <- summarise_at(LK_myc_micr_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_micr_2002_biomass$Year <- ('2002')
LK_myc_micr_2002_biomass$subregion <- ('LK')
LK_myc_micr_2002_biomass$SPECIES_CD <- ('MYC MICR')

LK_myc_micr_2002_count <- count(LK_myc_micr_2002, vars = "SPECIES_CD")

LK_myc_micr_2002_biomass_count <- cbind(LK_myc_micr_2002_biomass,LK_myc_micr_2002_count)


LK_myc_micr_2003 <- filter(LK_myc_micr, YEAR_ == '2003')
LK_myc_micr_2003_biomass <- summarise_at(LK_myc_micr_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_micr_2003_biomass$Year <- ('2003')
LK_myc_micr_2003_biomass$subregion <- ('LK')
LK_myc_micr_2003_biomass$SPECIES_CD <- ('MYC MICR')

LK_myc_micr_2003_count <- count(LK_myc_micr_2003, vars = "SPECIES_CD")

LK_myc_micr_2003_biomass_count <- cbind(LK_myc_micr_2003_biomass,LK_myc_micr_2003_count)


LK_myc_micr_2004 <- filter(LK_myc_micr, YEAR_ == '2004')
LK_myc_micr_2004_biomass <- summarise_at(LK_myc_micr_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_micr_2004_biomass$Year <- ('2004')
LK_myc_micr_2004_biomass$subregion <- ('LK')
LK_myc_micr_2004_biomass$SPECIES_CD <- ('MYC MICR')

LK_myc_micr_2004_count <- count(LK_myc_micr_2004, vars = "SPECIES_CD")

LK_myc_micr_2004_biomass_count <- cbind(LK_myc_micr_2004_biomass,LK_myc_micr_2004_count)


# LK_myc_micr_2005 <- filter(LK_myc_micr, YEAR_ == '2005')
# LK_myc_micr_2005_biomass <- summarise_at(LK_myc_micr_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_micr_2005_biomass$Year <- ('2005')
# LK_myc_micr_2005_biomass$subregion <- ('LK')
# LK_myc_micr_2005_biomass$SPECIES_CD <- ('MYC MICR')
# 
# LK_myc_micr_2005_count <- count(LK_myc_micr_2005, vars = "SPECIES_CD")
# 
# LK_myc_micr_2005_biomass_count <- cbind(LK_myc_micr_2005_biomass,LK_myc_micr_2005_count)
# 
# 
# LK_myc_micr_2006 <- filter(LK_myc_micr, YEAR_ == '2006')
# LK_myc_micr_2006_biomass <- summarise_at(LK_myc_micr_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_micr_2006_biomass$Year <- ('2006')
# LK_myc_micr_2006_biomass$subregion <- ('LK')
# LK_myc_micr_2006_biomass$SPECIES_CD <- ('MYC MICR')
# 
# 
# LK_myc_micr_2006_count <- count(LK_myc_micr_2006, vars = "SPECIES_CD")
# 
# LK_myc_micr_2006_biomass_count <- cbind(LK_myc_micr_2006_biomass,LK_myc_micr_2006_count)
# 
# 
# LK_myc_micr_2007 <- filter(LK_myc_micr, YEAR_ == '2007')
# LK_myc_micr_2007_biomass <- summarise_at(LK_myc_micr_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_micr_2007_biomass$Year <- ('2007')
# LK_myc_micr_2007_biomass$subregion <- ('LK')
# LK_myc_micr_2007_biomass$SPECIES_CD <- ('MYC MICR')
# 
# LK_myc_micr_2007_count <- count(LK_myc_micr_2007, vars = "SPECIES_CD")
# 
# LK_myc_micr_2007_biomass_count <- cbind(LK_myc_micr_2007_biomass,LK_myc_micr_2007_count)
# 
# 
# LK_myc_micr_2008 <- filter(LK_myc_micr, YEAR_ == '2008')
# LK_myc_micr_2008_biomass <- summarise_at(LK_myc_micr_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_micr_2008_biomass$Year <- ('2008')
# LK_myc_micr_2008_biomass$subregion <- ('LK')
# LK_myc_micr_2008_biomass$SPECIES_CD <- ('MYC MICR')
# 
# LK_myc_micr_2008_count <- count(LK_myc_micr_2008, vars = "SPECIES_CD")
# 
# LK_myc_micr_2008_biomass_count <- cbind(LK_myc_micr_2008_biomass,LK_myc_micr_2008_count)
# 
# 
# LK_myc_micr_2009 <- filter(LK_myc_micr, YEAR_ == '2009')
# LK_myc_micr_2009_biomass <- summarise_at(LK_myc_micr_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_micr_2009_biomass$Year <- ('2009')
# LK_myc_micr_2009_biomass$subregion <- ('LK')
# LK_myc_micr_2009_biomass$SPECIES_CD <- ('MYC MICR')
# 
# LK_myc_micr_2009_count <- count(LK_myc_micr_2009, vars = "SPECIES_CD")
# 
# LK_myc_micr_2009_biomass_count <- cbind(LK_myc_micr_2009_biomass,LK_myc_micr_2009_count)
# 
# 
# LK_myc_micr_2010 <- filter(LK_myc_micr, YEAR_ == '2010')
# LK_myc_micr_2010_biomass <- summarise_at(LK_myc_micr_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_micr_2010_biomass$Year <- ('2010')
# LK_myc_micr_2010_biomass$subregion <- ('LK')
# LK_myc_micr_2010_biomass$SPECIES_CD <- ('MYC MICR')
# 
# LK_myc_micr_2010_count <- count(LK_myc_micr_2010, vars = "SPECIES_CD")
# 
# LK_myc_micr_2010_biomass_count <- cbind(LK_myc_micr_2010_biomass,LK_myc_micr_2010_count)


LK_myc_micr_2011 <- filter(LK_myc_micr, YEAR_ == '2011')
LK_myc_micr_2011_biomass <- summarise_at(LK_myc_micr_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_micr_2011_biomass$Year <- ('2011')
LK_myc_micr_2011_biomass$subregion <- ('LK')
LK_myc_micr_2011_biomass$SPECIES_CD <- ('MYC MICR')

LK_myc_micr_2011_count <- count(LK_myc_micr_2011, vars = "SPECIES_CD")

LK_myc_micr_2011_biomass_count <- cbind(LK_myc_micr_2011_biomass,LK_myc_micr_2011_count)


# LK_myc_micr_2012 <- filter(LK_myc_micr, YEAR_ == '2012')
# LK_myc_micr_2012_biomass <- summarise_at(LK_myc_micr_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_micr_2012_biomass$Year <- ('2012')
# LK_myc_micr_2012_biomass$subregion <- ('LK')
# LK_myc_micr_2012_biomass$SPECIES_CD <- ('MYC MICR')
# 
# LK_myc_micr_2012_count <- count(LK_myc_micr_2012, vars = "SPECIES_CD")
# 
# LK_myc_micr_2012_biomass_count <- cbind(LK_myc_micr_2012_biomass,LK_myc_micr_2012_count)


LK_myc_micr_2014 <- filter(LK_myc_micr, YEAR_ == '2014')
LK_myc_micr_2014_biomass <- summarise_at(LK_myc_micr_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_micr_2014_biomass$Year <- ('2014')
LK_myc_micr_2014_biomass$subregion <- ('LK')
LK_myc_micr_2014_biomass$SPECIES_CD <- ('MYC MICR')

LK_myc_micr_2014_count <- count(LK_myc_micr_2014, vars = "SPECIES_CD")

LK_myc_micr_2014_biomass_count <- cbind(LK_myc_micr_2014_biomass,LK_myc_micr_2014_count)


# LK_myc_micr_2016 <- filter(LK_myc_micr, YEAR_ == '2016')
# LK_myc_micr_2016_biomass <- summarise_at(LK_myc_micr_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_micr_2016_biomass$Year <- ('2016')
# LK_myc_micr_2016_biomass$subregion <- ('LK')
# LK_myc_micr_2016_biomass$SPECIES_CD <- ('MYC MICR')
# 
# LK_myc_micr_2016_count <- count(LK_myc_micr_2016, vars = "SPECIES_CD")
# 
# LK_myc_micr_2016_biomass_count <- cbind(LK_myc_micr_2016_biomass,LK_myc_micr_2016_count)
# 
# 
# LK_myc_micr_2018 <- filter(LK_myc_micr, YEAR_ == '2018')
# LK_myc_micr_2018_biomass <- summarise_at(LK_myc_micr_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_micr_2018_biomass$Year <- ('2018')
# LK_myc_micr_2018_biomass$subregion <- ('LK')
# LK_myc_micr_2018_biomass$SPECIES_CD <- ('MYC MICR')
# 
# LK_myc_micr_2018_count <- count(LK_myc_micr_2018, vars = "SPECIES_CD")
# 
# LK_myc_micr_2018_biomass_count <- cbind(LK_myc_micr_2018_biomass,LK_myc_micr_2018_count)



LK_myc_micr_all <- rbind(LK_myc_micr_2000_biomass_count,LK_myc_micr_2002_biomass_count,LK_myc_micr_2003_biomass_count,
                        LK_myc_micr_2011_biomass_count,LK_myc_micr_2014_biomass_count)

LK_myc_micr_all$vars <- NULL




LK_myc_phen <- filter(LK_grouper, SPECIES_CD == "MYC PHEN")
unique(LK_myc_phen$YEAR_)

LK_myc_phen_1999 <- filter(LK_myc_phen, YEAR_ == '1999')
LK_myc_phen_1999_biomass <- summarise_at(LK_myc_phen_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_1999_biomass$Year <- ('1999')
LK_myc_phen_1999_biomass$subregion <- ('LK')
LK_myc_phen_1999_biomass$SPECIES_CD <- ('MYC PHEN')

LK_myc_phen_1999_count <- count(LK_myc_phen_1999, vars = "SPECIES_CD")

LK_myc_phen_1999_biomass_count <- cbind(LK_myc_phen_1999_biomass,LK_myc_phen_1999_count)



LK_myc_phen_2000 <- filter(LK_myc_phen, YEAR_ == '2000')
LK_myc_phen_2000_biomass <- summarise_at(LK_myc_phen_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_2000_biomass$Year <- ('2000')
LK_myc_phen_2000_biomass$subregion <- ('LK')
LK_myc_phen_2000_biomass$SPECIES_CD <- ('MYC PHEN')

LK_myc_phen_2000_count <- count(LK_myc_phen_2000, vars = "SPECIES_CD")

LK_myc_phen_2000_biomass_count <- cbind(LK_myc_phen_2000_biomass,LK_myc_phen_2000_count)

LK_myc_phen_2001 <- filter(LK_myc_phen, YEAR_ == '2001')
LK_myc_phen_2001_biomass <- summarise_at(LK_myc_phen_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_2001_biomass$Year <- ('2001')
LK_myc_phen_2001_biomass$subregion <- ('LK')
LK_myc_phen_2001_biomass$SPECIES_CD <- ('MYC PHEN')

LK_myc_phen_2001_count <- count(LK_myc_phen_2001, vars = "SPECIES_CD")

LK_myc_phen_2001_biomass_count <- cbind(LK_myc_phen_2001_biomass,LK_myc_phen_2001_count)


LK_myc_phen_2002 <- filter(LK_myc_phen, YEAR_ == '2002')
LK_myc_phen_2002_biomass <- summarise_at(LK_myc_phen_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_2002_biomass$Year <- ('2002')
LK_myc_phen_2002_biomass$subregion <- ('LK')
LK_myc_phen_2002_biomass$SPECIES_CD <- ('MYC PHEN')

LK_myc_phen_2002_count <- count(LK_myc_phen_2002, vars = "SPECIES_CD")

LK_myc_phen_2002_biomass_count <- cbind(LK_myc_phen_2002_biomass,LK_myc_phen_2002_count)


LK_myc_phen_2003 <- filter(LK_myc_phen, YEAR_ == '2003')
LK_myc_phen_2003_biomass <- summarise_at(LK_myc_phen_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_2003_biomass$Year <- ('2003')
LK_myc_phen_2003_biomass$subregion <- ('LK')
LK_myc_phen_2003_biomass$SPECIES_CD <- ('MYC PHEN')

LK_myc_phen_2003_count <- count(LK_myc_phen_2003, vars = "SPECIES_CD")

LK_myc_phen_2003_biomass_count <- cbind(LK_myc_phen_2003_biomass,LK_myc_phen_2003_count)


LK_myc_phen_2004 <- filter(LK_myc_phen, YEAR_ == '2004')
LK_myc_phen_2004_biomass <- summarise_at(LK_myc_phen_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_2004_biomass$Year <- ('2004')
LK_myc_phen_2004_biomass$subregion <- ('LK')
LK_myc_phen_2004_biomass$SPECIES_CD <- ('MYC PHEN')

LK_myc_phen_2004_count <- count(LK_myc_phen_2004, vars = "SPECIES_CD")

LK_myc_phen_2004_biomass_count <- cbind(LK_myc_phen_2004_biomass,LK_myc_phen_2004_count)


LK_myc_phen_2005 <- filter(LK_myc_phen, YEAR_ == '2005')
LK_myc_phen_2005_biomass <- summarise_at(LK_myc_phen_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_2005_biomass$Year <- ('2005')
LK_myc_phen_2005_biomass$subregion <- ('LK')
LK_myc_phen_2005_biomass$SPECIES_CD <- ('MYC PHEN')

LK_myc_phen_2005_count <- count(LK_myc_phen_2005, vars = "SPECIES_CD")

LK_myc_phen_2005_biomass_count <- cbind(LK_myc_phen_2005_biomass,LK_myc_phen_2005_count)


LK_myc_phen_2006 <- filter(LK_myc_phen, YEAR_ == '2006')
LK_myc_phen_2006_biomass <- summarise_at(LK_myc_phen_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_2006_biomass$Year <- ('2006')
LK_myc_phen_2006_biomass$subregion <- ('LK')
LK_myc_phen_2006_biomass$SPECIES_CD <- ('MYC PHEN')


LK_myc_phen_2006_count <- count(LK_myc_phen_2006, vars = "SPECIES_CD")

LK_myc_phen_2006_biomass_count <- cbind(LK_myc_phen_2006_biomass,LK_myc_phen_2006_count)


LK_myc_phen_2007 <- filter(LK_myc_phen, YEAR_ == '2007')
LK_myc_phen_2007_biomass <- summarise_at(LK_myc_phen_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_2007_biomass$Year <- ('2007')
LK_myc_phen_2007_biomass$subregion <- ('LK')
LK_myc_phen_2007_biomass$SPECIES_CD <- ('MYC PHEN')

LK_myc_phen_2007_count <- count(LK_myc_phen_2007, vars = "SPECIES_CD")

LK_myc_phen_2007_biomass_count <- cbind(LK_myc_phen_2007_biomass,LK_myc_phen_2007_count)


LK_myc_phen_2008 <- filter(LK_myc_phen, YEAR_ == '2008')
LK_myc_phen_2008_biomass <- summarise_at(LK_myc_phen_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_2008_biomass$Year <- ('2008')
LK_myc_phen_2008_biomass$subregion <- ('LK')
LK_myc_phen_2008_biomass$SPECIES_CD <- ('MYC PHEN')

LK_myc_phen_2008_count <- count(LK_myc_phen_2008, vars = "SPECIES_CD")

LK_myc_phen_2008_biomass_count <- cbind(LK_myc_phen_2008_biomass,LK_myc_phen_2008_count)


LK_myc_phen_2009 <- filter(LK_myc_phen, YEAR_ == '2009')
LK_myc_phen_2009_biomass <- summarise_at(LK_myc_phen_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_2009_biomass$Year <- ('2009')
LK_myc_phen_2009_biomass$subregion <- ('LK')
LK_myc_phen_2009_biomass$SPECIES_CD <- ('MYC PHEN')

LK_myc_phen_2009_count <- count(LK_myc_phen_2009, vars = "SPECIES_CD")

LK_myc_phen_2009_biomass_count <- cbind(LK_myc_phen_2009_biomass,LK_myc_phen_2009_count)


LK_myc_phen_2010 <- filter(LK_myc_phen, YEAR_ == '2010')
LK_myc_phen_2010_biomass <- summarise_at(LK_myc_phen_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_2010_biomass$Year <- ('2010')
LK_myc_phen_2010_biomass$subregion <- ('LK')
LK_myc_phen_2010_biomass$SPECIES_CD <- ('MYC PHEN')

LK_myc_phen_2010_count <- count(LK_myc_phen_2010, vars = "SPECIES_CD")

LK_myc_phen_2010_biomass_count <- cbind(LK_myc_phen_2010_biomass,LK_myc_phen_2010_count)


LK_myc_phen_2011 <- filter(LK_myc_phen, YEAR_ == '2011')
LK_myc_phen_2011_biomass <- summarise_at(LK_myc_phen_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_2011_biomass$Year <- ('2011')
LK_myc_phen_2011_biomass$subregion <- ('LK')
LK_myc_phen_2011_biomass$SPECIES_CD <- ('MYC PHEN')

LK_myc_phen_2011_count <- count(LK_myc_phen_2011, vars = "SPECIES_CD")

LK_myc_phen_2011_biomass_count <- cbind(LK_myc_phen_2011_biomass,LK_myc_phen_2011_count)


LK_myc_phen_2012 <- filter(LK_myc_phen, YEAR_ == '2012')
LK_myc_phen_2012_biomass <- summarise_at(LK_myc_phen_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_2012_biomass$Year <- ('2012')
LK_myc_phen_2012_biomass$subregion <- ('LK')
LK_myc_phen_2012_biomass$SPECIES_CD <- ('MYC PHEN')

LK_myc_phen_2012_count <- count(LK_myc_phen_2012, vars = "SPECIES_CD")

LK_myc_phen_2012_biomass_count <- cbind(LK_myc_phen_2012_biomass,LK_myc_phen_2012_count)


LK_myc_phen_2014 <- filter(LK_myc_phen, YEAR_ == '2014')
LK_myc_phen_2014_biomass <- summarise_at(LK_myc_phen_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_2014_biomass$Year <- ('2014')
LK_myc_phen_2014_biomass$subregion <- ('LK')
LK_myc_phen_2014_biomass$SPECIES_CD <- ('MYC PHEN')

LK_myc_phen_2014_count <- count(LK_myc_phen_2014, vars = "SPECIES_CD")

LK_myc_phen_2014_biomass_count <- cbind(LK_myc_phen_2014_biomass,LK_myc_phen_2014_count)


LK_myc_phen_2016 <- filter(LK_myc_phen, YEAR_ == '2016')
LK_myc_phen_2016_biomass <- summarise_at(LK_myc_phen_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_2016_biomass$Year <- ('2016')
LK_myc_phen_2016_biomass$subregion <- ('LK')
LK_myc_phen_2016_biomass$SPECIES_CD <- ('MYC PHEN')

LK_myc_phen_2016_count <- count(LK_myc_phen_2016, vars = "SPECIES_CD")

LK_myc_phen_2016_biomass_count <- cbind(LK_myc_phen_2016_biomass,LK_myc_phen_2016_count)


LK_myc_phen_2018 <- filter(LK_myc_phen, YEAR_ == '2018')
LK_myc_phen_2018_biomass <- summarise_at(LK_myc_phen_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_phen_2018_biomass$Year <- ('2018')
LK_myc_phen_2018_biomass$subregion <- ('LK')
LK_myc_phen_2018_biomass$SPECIES_CD <- ('MYC PHEN')

LK_myc_phen_2018_count <- count(LK_myc_phen_2018, vars = "SPECIES_CD")

LK_myc_phen_2018_biomass_count <- cbind(LK_myc_phen_2018_biomass,LK_myc_phen_2018_count)


LK_myc_phen_all <- rbind(LK_myc_phen_1999_biomass_count,LK_myc_phen_2000_biomass_count,LK_myc_phen_2001_biomass_count,LK_myc_phen_2002_biomass_count,LK_myc_phen_2003_biomass_count,
                         LK_myc_phen_2004_biomass_count,LK_myc_phen_2005_biomass_count,LK_myc_phen_2006_biomass_count,LK_myc_phen_2007_biomass_count,
                         LK_myc_phen_2008_biomass_count,LK_myc_phen_2009_biomass_count,LK_myc_phen_2010_biomass_count,LK_myc_phen_2011_biomass_count,
                         LK_myc_phen_2012_biomass_count,LK_myc_phen_2014_biomass_count,LK_myc_phen_2016_biomass_count,LK_myc_phen_2018_biomass_count)

LK_myc_phen_all$vars <- NULL



LK_myc_tigr <- filter(LK_grouper, SPECIES_CD == "MYC TIGR")
unique(LK_myc_tigr$YEAR_)

# LK_myc_tigr_1999 <- filter(LK_myc_tigr, YEAR_ == '1999')
# LK_myc_tigr_1999_biomass <- summarise_at(LK_myc_tigr_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_tigr_1999_biomass$Year <- ('1999')
# LK_myc_tigr_1999_biomass$subregion <- ('LK')
# LK_myc_tigr_1999_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# LK_myc_tigr_1999_count <- count(LK_myc_tigr_1999, vars = "SPECIES_CD")
# 
# LK_myc_tigr_1999_biomass_count <- cbind(LK_myc_tigr_1999_biomass,LK_myc_tigr_1999_count)





LK_myc_tigr_2000 <- filter(LK_myc_tigr, YEAR_ == '2000')
LK_myc_tigr_2000_biomass <- summarise_at(LK_myc_tigr_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_tigr_2000_biomass$Year <- ('2000')
LK_myc_tigr_2000_biomass$subregion <- ('LK')
LK_myc_tigr_2000_biomass$SPECIES_CD <- ('MYC TIGR')

LK_myc_tigr_2000_count <- count(LK_myc_tigr_2000, vars = "SPECIES_CD")

LK_myc_tigr_2000_biomass_count <- cbind(LK_myc_tigr_2000_biomass,LK_myc_tigr_2000_count)

LK_myc_tigr_2001 <- filter(LK_myc_tigr, YEAR_ == '2001')
LK_myc_tigr_2001_biomass <- summarise_at(LK_myc_tigr_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_tigr_2001_biomass$Year <- ('2001')
LK_myc_tigr_2001_biomass$subregion <- ('LK')
LK_myc_tigr_2001_biomass$SPECIES_CD <- ('MYC TIGR')

LK_myc_tigr_2001_count <- count(LK_myc_tigr_2001, vars = "SPECIES_CD")

LK_myc_tigr_2001_biomass_count <- cbind(LK_myc_tigr_2001_biomass,LK_myc_tigr_2001_count)


LK_myc_tigr_2002 <- filter(LK_myc_tigr, YEAR_ == '2002')
LK_myc_tigr_2002_biomass <- summarise_at(LK_myc_tigr_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_tigr_2002_biomass$Year <- ('2002')
LK_myc_tigr_2002_biomass$subregion <- ('LK')
LK_myc_tigr_2002_biomass$SPECIES_CD <- ('MYC TIGR')

LK_myc_tigr_2002_count <- count(LK_myc_tigr_2002, vars = "SPECIES_CD")

LK_myc_tigr_2002_biomass_count <- cbind(LK_myc_tigr_2002_biomass,LK_myc_tigr_2002_count)


# LK_myc_tigr_2003 <- filter(LK_myc_tigr, YEAR_ == '2003')
# LK_myc_tigr_2003_biomass <- summarise_at(LK_myc_tigr_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_tigr_2003_biomass$Year <- ('2003')
# LK_myc_tigr_2003_biomass$subregion <- ('LK')
# LK_myc_tigr_2003_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# LK_myc_tigr_2003_count <- count(LK_myc_tigr_2003, vars = "SPECIES_CD")
# 
# LK_myc_tigr_2003_biomass_count <- cbind(LK_myc_tigr_2003_biomass,LK_myc_tigr_2003_count)
# 
# 
# LK_myc_tigr_2004 <- filter(LK_myc_tigr, YEAR_ == '2004')
# LK_myc_tigr_2004_biomass <- summarise_at(LK_myc_tigr_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_tigr_2004_biomass$Year <- ('2004')
# LK_myc_tigr_2004_biomass$subregion <- ('LK')
# LK_myc_tigr_2004_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# LK_myc_tigr_2004_count <- count(LK_myc_tigr_2004, vars = "SPECIES_CD")
# 
# LK_myc_tigr_2004_biomass_count <- cbind(LK_myc_tigr_2004_biomass,LK_myc_tigr_2004_count)
# 
# 
# LK_myc_tigr_2005 <- filter(LK_myc_tigr, YEAR_ == '2005')
# LK_myc_tigr_2005_biomass <- summarise_at(LK_myc_tigr_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_tigr_2005_biomass$Year <- ('2005')
# LK_myc_tigr_2005_biomass$subregion <- ('LK')
# LK_myc_tigr_2005_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# LK_myc_tigr_2005_count <- count(LK_myc_tigr_2005, vars = "SPECIES_CD")
# 
# LK_myc_tigr_2005_biomass_count <- cbind(LK_myc_tigr_2005_biomass,LK_myc_tigr_2005_count)
# 
# 
# LK_myc_tigr_2006 <- filter(LK_myc_tigr, YEAR_ == '2006')
# LK_myc_tigr_2006_biomass <- summarise_at(LK_myc_tigr_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_tigr_2006_biomass$Year <- ('2006')
# LK_myc_tigr_2006_biomass$subregion <- ('LK')
# LK_myc_tigr_2006_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# 
# LK_myc_tigr_2006_count <- count(LK_myc_tigr_2006, vars = "SPECIES_CD")
# 
# LK_myc_tigr_2006_biomass_count <- cbind(LK_myc_tigr_2006_biomass,LK_myc_tigr_2006_count)
# 
# 
# LK_myc_tigr_2007 <- filter(LK_myc_tigr, YEAR_ == '2007')
# LK_myc_tigr_2007_biomass <- summarise_at(LK_myc_tigr_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_tigr_2007_biomass$Year <- ('2007')
# LK_myc_tigr_2007_biomass$subregion <- ('LK')
# LK_myc_tigr_2007_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# LK_myc_tigr_2007_count <- count(LK_myc_tigr_2007, vars = "SPECIES_CD")
# 
# LK_myc_tigr_2007_biomass_count <- cbind(LK_myc_tigr_2007_biomass,LK_myc_tigr_2007_count)
# 
# 
# LK_myc_tigr_2008 <- filter(LK_myc_tigr, YEAR_ == '2008')
# LK_myc_tigr_2008_biomass <- summarise_at(LK_myc_tigr_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_tigr_2008_biomass$Year <- ('2008')
# LK_myc_tigr_2008_biomass$subregion <- ('LK')
# LK_myc_tigr_2008_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# LK_myc_tigr_2008_count <- count(LK_myc_tigr_2008, vars = "SPECIES_CD")
# 
# LK_myc_tigr_2008_biomass_count <- cbind(LK_myc_tigr_2008_biomass,LK_myc_tigr_2008_count)
# 
# 
# LK_myc_tigr_2009 <- filter(LK_myc_tigr, YEAR_ == '2009')
# LK_myc_tigr_2009_biomass <- summarise_at(LK_myc_tigr_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_tigr_2009_biomass$Year <- ('2009')
# LK_myc_tigr_2009_biomass$subregion <- ('LK')
# LK_myc_tigr_2009_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# LK_myc_tigr_2009_count <- count(LK_myc_tigr_2009, vars = "SPECIES_CD")
# 
# LK_myc_tigr_2009_biomass_count <- cbind(LK_myc_tigr_2009_biomass,LK_myc_tigr_2009_count)
# 
# 
# LK_myc_tigr_2010 <- filter(LK_myc_tigr, YEAR_ == '2010')
# LK_myc_tigr_2010_biomass <- summarise_at(LK_myc_tigr_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_tigr_2010_biomass$Year <- ('2010')
# LK_myc_tigr_2010_biomass$subregion <- ('LK')
# LK_myc_tigr_2010_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# LK_myc_tigr_2010_count <- count(LK_myc_tigr_2010, vars = "SPECIES_CD")
# 
# LK_myc_tigr_2010_biomass_count <- cbind(LK_myc_tigr_2010_biomass,LK_myc_tigr_2010_count)
# 
# 
# LK_myc_tigr_2011 <- filter(LK_myc_tigr, YEAR_ == '2011')
# LK_myc_tigr_2011_biomass <- summarise_at(LK_myc_tigr_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_tigr_2011_biomass$Year <- ('2011')
# LK_myc_tigr_2011_biomass$subregion <- ('LK')
# LK_myc_tigr_2011_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# LK_myc_tigr_2011_count <- count(LK_myc_tigr_2011, vars = "SPECIES_CD")
# 
# LK_myc_tigr_2011_biomass_count <- cbind(LK_myc_tigr_2011_biomass,LK_myc_tigr_2011_count)
# 
# 
# LK_myc_tigr_2012 <- filter(LK_myc_tigr, YEAR_ == '2012')
# LK_myc_tigr_2012_biomass <- summarise_at(LK_myc_tigr_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_tigr_2012_biomass$Year <- ('2012')
# LK_myc_tigr_2012_biomass$subregion <- ('LK')
# LK_myc_tigr_2012_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# LK_myc_tigr_2012_count <- count(LK_myc_tigr_2012, vars = "SPECIES_CD")
# 
# LK_myc_tigr_2012_biomass_count <- cbind(LK_myc_tigr_2012_biomass,LK_myc_tigr_2012_count)
# 
# 
# LK_myc_tigr_2014 <- filter(LK_myc_tigr, YEAR_ == '2014')
# LK_myc_tigr_2014_biomass <- summarise_at(LK_myc_tigr_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_tigr_2014_biomass$Year <- ('2014')
# LK_myc_tigr_2014_biomass$subregion <- ('LK')
# LK_myc_tigr_2014_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# LK_myc_tigr_2014_count <- count(LK_myc_tigr_2014, vars = "SPECIES_CD")
# 
# LK_myc_tigr_2014_biomass_count <- cbind(LK_myc_tigr_2014_biomass,LK_myc_tigr_2014_count)
# 
# 
# LK_myc_tigr_2016 <- filter(LK_myc_tigr, YEAR_ == '2016')
# LK_myc_tigr_2016_biomass <- summarise_at(LK_myc_tigr_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_tigr_2016_biomass$Year <- ('2016')
# LK_myc_tigr_2016_biomass$subregion <- ('LK')
# LK_myc_tigr_2016_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# LK_myc_tigr_2016_count <- count(LK_myc_tigr_2016, vars = "SPECIES_CD")
# 
# LK_myc_tigr_2016_biomass_count <- cbind(LK_myc_tigr_2016_biomass,LK_myc_tigr_2016_count)
# 
# 
# LK_myc_tigr_2018 <- filter(LK_myc_tigr, YEAR_ == '2018')
# LK_myc_tigr_2018_biomass <- summarise_at(LK_myc_tigr_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_tigr_2018_biomass$Year <- ('2018')
# LK_myc_tigr_2018_biomass$subregion <- ('LK')
# LK_myc_tigr_2018_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# LK_myc_tigr_2018_count <- count(LK_myc_tigr_2018, vars = "SPECIES_CD")
# 
# LK_myc_tigr_2018_biomass_count <- cbind(LK_myc_tigr_2018_biomass,LK_myc_tigr_2018_count)


LK_myc_tigr_all <- rbind(LK_myc_tigr_2000_biomass_count,LK_myc_tigr_2001_biomass_count,LK_myc_tigr_2002_biomass_count)

                    
                         
                         
LK_myc_tigr_all$vars <- NULL





LK_myc_vene <- filter(LK_grouper, SPECIES_CD == "MYC VENE")
unique(LK_myc_vene$YEAR_)
# 
# LK_myc_vene_1999 <- filter(LK_myc_vene, YEAR_ == '1999')
# LK_myc_vene_1999_biomass <- summarise_at(LK_myc_vene_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_vene_1999_biomass$Year <- ('1999')
# LK_myc_vene_1999_biomass$subregion <- ('LK')
# LK_myc_vene_1999_biomass$SPECIES_CD <- ('MYC VENE')
# 
# LK_myc_vene_1999_count <- count(LK_myc_vene_1999, vars = "SPECIES_CD")
# 
# LK_myc_vene_1999_biomass_count <- cbind(LK_myc_vene_1999_biomass,LK_myc_vene_1999_count)



LK_myc_vene_2000 <- filter(LK_myc_vene, YEAR_ == '2000')
LK_myc_vene_2000_biomass <- summarise_at(LK_myc_vene_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_vene_2000_biomass$Year <- ('2000')
LK_myc_vene_2000_biomass$subregion <- ('LK')
LK_myc_vene_2000_biomass$SPECIES_CD <- ('MYC VENE')

LK_myc_vene_2000_count <- count(LK_myc_vene_2000, vars = "SPECIES_CD")

LK_myc_vene_2000_biomass_count <- cbind(LK_myc_vene_2000_biomass,LK_myc_vene_2000_count)

LK_myc_vene_2001 <- filter(LK_myc_vene, YEAR_ == '2001')
LK_myc_vene_2001_biomass <- summarise_at(LK_myc_vene_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_vene_2001_biomass$Year <- ('2001')
LK_myc_vene_2001_biomass$subregion <- ('LK')
LK_myc_vene_2001_biomass$SPECIES_CD <- ('MYC VENE')

LK_myc_vene_2001_count <- count(LK_myc_vene_2001, vars = "SPECIES_CD")

LK_myc_vene_2001_biomass_count <- cbind(LK_myc_vene_2001_biomass,LK_myc_vene_2001_count)


LK_myc_vene_2002 <- filter(LK_myc_vene, YEAR_ == '2002')
LK_myc_vene_2002_biomass <- summarise_at(LK_myc_vene_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_vene_2002_biomass$Year <- ('2002')
LK_myc_vene_2002_biomass$subregion <- ('LK')
LK_myc_vene_2002_biomass$SPECIES_CD <- ('MYC VENE')

LK_myc_vene_2002_count <- count(LK_myc_vene_2002, vars = "SPECIES_CD")

LK_myc_vene_2002_biomass_count <- cbind(LK_myc_vene_2002_biomass,LK_myc_vene_2002_count)


LK_myc_vene_2003 <- filter(LK_myc_vene, YEAR_ == '2003')
LK_myc_vene_2003_biomass <- summarise_at(LK_myc_vene_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_vene_2003_biomass$Year <- ('2003')
LK_myc_vene_2003_biomass$subregion <- ('LK')
LK_myc_vene_2003_biomass$SPECIES_CD <- ('MYC VENE')

LK_myc_vene_2003_count <- count(LK_myc_vene_2003, vars = "SPECIES_CD")

LK_myc_vene_2003_biomass_count <- cbind(LK_myc_vene_2003_biomass,LK_myc_vene_2003_count)


LK_myc_vene_2004 <- filter(LK_myc_vene, YEAR_ == '2004')
LK_myc_vene_2004_biomass <- summarise_at(LK_myc_vene_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_vene_2004_biomass$Year <- ('2004')
LK_myc_vene_2004_biomass$subregion <- ('LK')
LK_myc_vene_2004_biomass$SPECIES_CD <- ('MYC VENE')

LK_myc_vene_2004_count <- count(LK_myc_vene_2004, vars = "SPECIES_CD")

LK_myc_vene_2004_biomass_count <- cbind(LK_myc_vene_2004_biomass,LK_myc_vene_2004_count)


# LK_myc_vene_2005 <- filter(LK_myc_vene, YEAR_ == '2005')
# LK_myc_vene_2005_biomass <- summarise_at(LK_myc_vene_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_vene_2005_biomass$Year <- ('2005')
# LK_myc_vene_2005_biomass$subregion <- ('LK')
# LK_myc_vene_2005_biomass$SPECIES_CD <- ('MYC VENE')
# 
# LK_myc_vene_2005_count <- count(LK_myc_vene_2005, vars = "SPECIES_CD")
# 
# LK_myc_vene_2005_biomass_count <- cbind(LK_myc_vene_2005_biomass,LK_myc_vene_2005_count)
# 
# 
# LK_myc_vene_2006 <- filter(LK_myc_vene, YEAR_ == '2006')
# LK_myc_vene_2006_biomass <- summarise_at(LK_myc_vene_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_vene_2006_biomass$Year <- ('2006')
# LK_myc_vene_2006_biomass$subregion <- ('LK')
# LK_myc_vene_2006_biomass$SPECIES_CD <- ('MYC VENE')
# 
# 
# LK_myc_vene_2006_count <- count(LK_myc_vene_2006, vars = "SPECIES_CD")

# LK_myc_vene_2006_biomass_count <- cbind(LK_myc_vene_2006_biomass,LK_myc_vene_2006_count)
# 
# 
# LK_myc_vene_2007 <- filter(LK_myc_vene, YEAR_ == '2007')
# LK_myc_vene_2007_biomass <- summarise_at(LK_myc_vene_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_vene_2007_biomass$Year <- ('2007')
# LK_myc_vene_2007_biomass$subregion <- ('LK')
# LK_myc_vene_2007_biomass$SPECIES_CD <- ('MYC VENE')
# 
# LK_myc_vene_2007_count <- count(LK_myc_vene_2007, vars = "SPECIES_CD")
# 
# LK_myc_vene_2007_biomass_count <- cbind(LK_myc_vene_2007_biomass,LK_myc_vene_2007_count)


LK_myc_vene_2008 <- filter(LK_myc_vene, YEAR_ == '2008')
LK_myc_vene_2008_biomass <- summarise_at(LK_myc_vene_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_vene_2008_biomass$Year <- ('2008')
LK_myc_vene_2008_biomass$subregion <- ('LK')
LK_myc_vene_2008_biomass$SPECIES_CD <- ('MYC VENE')

LK_myc_vene_2008_count <- count(LK_myc_vene_2008, vars = "SPECIES_CD")

LK_myc_vene_2008_biomass_count <- cbind(LK_myc_vene_2008_biomass,LK_myc_vene_2008_count)


LK_myc_vene_2009 <- filter(LK_myc_vene, YEAR_ == '2009')
LK_myc_vene_2009_biomass <- summarise_at(LK_myc_vene_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_myc_vene_2009_biomass$Year <- ('2009')
LK_myc_vene_2009_biomass$subregion <- ('LK')
LK_myc_vene_2009_biomass$SPECIES_CD <- ('MYC VENE')

LK_myc_vene_2009_count <- count(LK_myc_vene_2009, vars = "SPECIES_CD")

LK_myc_vene_2009_biomass_count <- cbind(LK_myc_vene_2009_biomass,LK_myc_vene_2009_count)


# LK_myc_vene_2010 <- filter(LK_myc_vene, YEAR_ == '2010')
# LK_myc_vene_2010_biomass <- summarise_at(LK_myc_vene_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_vene_2010_biomass$Year <- ('2010')
# LK_myc_vene_2010_biomass$subregion <- ('LK')
# LK_myc_vene_2010_biomass$SPECIES_CD <- ('MYC VENE')
# 
# LK_myc_vene_2010_count <- count(LK_myc_vene_2010, vars = "SPECIES_CD")
# 
# LK_myc_vene_2010_biomass_count <- cbind(LK_myc_vene_2010_biomass,LK_myc_vene_2010_count)
# 
# 
# LK_myc_vene_2011 <- filter(LK_myc_vene, YEAR_ == '2011')
# LK_myc_vene_2011_biomass <- summarise_at(LK_myc_vene_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_vene_2011_biomass$Year <- ('2011')
# LK_myc_vene_2011_biomass$subregion <- ('LK')
# LK_myc_vene_2011_biomass$SPECIES_CD <- ('MYC VENE')
# 
# LK_myc_vene_2011_count <- count(LK_myc_vene_2011, vars = "SPECIES_CD")
# 
# LK_myc_vene_2011_biomass_count <- cbind(LK_myc_vene_2011_biomass,LK_myc_vene_2011_count)
# 
# 
# LK_myc_vene_2012 <- filter(LK_myc_vene, YEAR_ == '2012')
# LK_myc_vene_2012_biomass <- summarise_at(LK_myc_vene_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_vene_2012_biomass$Year <- ('2012')
# LK_myc_vene_2012_biomass$subregion <- ('LK')
# LK_myc_vene_2012_biomass$SPECIES_CD <- ('MYC VENE')
# 
# LK_myc_vene_2012_count <- count(LK_myc_vene_2012, vars = "SPECIES_CD")
# 
# LK_myc_vene_2012_biomass_count <- cbind(LK_myc_vene_2012_biomass,LK_myc_vene_2012_count)
# 
# 
# LK_myc_vene_2014 <- filter(LK_myc_vene, YEAR_ == '2014')
# LK_myc_vene_2014_biomass <- summarise_at(LK_myc_vene_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_vene_2014_biomass$Year <- ('2014')
# LK_myc_vene_2014_biomass$subregion <- ('LK')
# LK_myc_vene_2014_biomass$SPECIES_CD <- ('MYC VENE')
# 
# LK_myc_vene_2014_count <- count(LK_myc_vene_2014, vars = "SPECIES_CD")
# 
# LK_myc_vene_2014_biomass_count <- cbind(LK_myc_vene_2014_biomass,LK_myc_vene_2014_count)
# 
# 
# LK_myc_vene_2016 <- filter(LK_myc_vene, YEAR_ == '2016')
# LK_myc_vene_2016_biomass <- summarise_at(LK_myc_vene_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_vene_2016_biomass$Year <- ('2016')
# LK_myc_vene_2016_biomass$subregion <- ('LK')
# LK_myc_vene_2016_biomass$SPECIES_CD <- ('MYC VENE')
# 
# LK_myc_vene_2016_count <- count(LK_myc_vene_2016, vars = "SPECIES_CD")
# 
# LK_myc_vene_2016_biomass_count <- cbind(LK_myc_vene_2016_biomass,LK_myc_vene_2016_count)
# 
# 
# LK_myc_vene_2018 <- filter(LK_myc_vene, YEAR_ == '2018')
# LK_myc_vene_2018_biomass <- summarise_at(LK_myc_vene_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_myc_vene_2018_biomass$Year <- ('2018')
# LK_myc_vene_2018_biomass$subregion <- ('LK')
# LK_myc_vene_2018_biomass$SPECIES_CD <- ('MYC VENE')
# 
# LK_myc_vene_2018_count <- count(LK_myc_vene_2018, vars = "SPECIES_CD")
# 
# LK_myc_vene_2018_biomass_count <- cbind(LK_myc_vene_2018_biomass,LK_myc_vene_2018_count)


LK_myc_vene_all <- rbind(LK_myc_vene_2000_biomass_count,LK_myc_vene_2001_biomass_count,LK_myc_vene_2002_biomass_count,LK_myc_vene_2003_biomass_count,
                         LK_myc_vene_2004_biomass_count,
                         LK_myc_vene_2008_biomass_count,LK_myc_vene_2009_biomass_count)
                         
                         
LK_myc_vene_all$vars <- NULL




LK_srr_spe <- filter(LK_grouper, SPECIES_CD == "SRR SPE.")
unique(LK_srr_spe$YEAR_)

# LK_srr_spe_1999 <- filter(LK_srr_spe, YEAR_ == '1999')
# LK_srr_spe_1999_biomass <- summarise_at(LK_srr_spe_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_srr_spe_1999_biomass$Year <- ('1999')
# LK_srr_spe_1999_biomass$subregion <- ('LK')
# LK_srr_spe_1999_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# LK_srr_spe_1999_count <- count(LK_srr_spe_1999, vars = "SPECIES_CD")
# 
# LK_srr_spe_1999_biomass_count <- cbind(LK_srr_spe_1999_biomass,LK_srr_spe_1999_count)
# 
# 
# 
# LK_srr_spe_2000 <- filter(LK_srr_spe, YEAR_ == '2000')
# LK_srr_spe_2000_biomass <- summarise_at(LK_srr_spe_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_srr_spe_2000_biomass$Year <- ('2000')
# LK_srr_spe_2000_biomass$subregion <- ('LK')
# LK_srr_spe_2000_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# LK_srr_spe_2000_count <- count(LK_srr_spe_2000, vars = "SPECIES_CD")
# 
# LK_srr_spe_2000_biomass_count <- cbind(LK_srr_spe_2000_biomass,LK_srr_spe_2000_count)
# 
# LK_srr_spe_2001 <- filter(LK_srr_spe, YEAR_ == '2001')
# LK_srr_spe_2001_biomass <- summarise_at(LK_srr_spe_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_srr_spe_2001_biomass$Year <- ('2001')
# LK_srr_spe_2001_biomass$subregion <- ('LK')
# LK_srr_spe_2001_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# LK_srr_spe_2001_count <- count(LK_srr_spe_2001, vars = "SPECIES_CD")
# 
# LK_srr_spe_2001_biomass_count <- cbind(LK_srr_spe_2001_biomass,LK_srr_spe_2001_count)
# 
# 
# LK_srr_spe_2002 <- filter(LK_srr_spe, YEAR_ == '2002')
# LK_srr_spe_2002_biomass <- summarise_at(LK_srr_spe_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_srr_spe_2002_biomass$Year <- ('2002')
# LK_srr_spe_2002_biomass$subregion <- ('LK')
# LK_srr_spe_2002_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# LK_srr_spe_2002_count <- count(LK_srr_spe_2002, vars = "SPECIES_CD")
# 
# LK_srr_spe_2002_biomass_count <- cbind(LK_srr_spe_2002_biomass,LK_srr_spe_2002_count)
# 
# 
# LK_srr_spe_2003 <- filter(LK_srr_spe, YEAR_ == '2003')
# LK_srr_spe_2003_biomass <- summarise_at(LK_srr_spe_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_srr_spe_2003_biomass$Year <- ('2003')
# LK_srr_spe_2003_biomass$subregion <- ('LK')
# LK_srr_spe_2003_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# LK_srr_spe_2003_count <- count(LK_srr_spe_2003, vars = "SPECIES_CD")
# 
# LK_srr_spe_2003_biomass_count <- cbind(LK_srr_spe_2003_biomass,LK_srr_spe_2003_count)
# 
# 
# LK_srr_spe_2004 <- filter(LK_srr_spe, YEAR_ == '2004')
# LK_srr_spe_2004_biomass <- summarise_at(LK_srr_spe_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_srr_spe_2004_biomass$Year <- ('2004')
# LK_srr_spe_2004_biomass$subregion <- ('LK')
# LK_srr_spe_2004_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# LK_srr_spe_2004_count <- count(LK_srr_spe_2004, vars = "SPECIES_CD")
# 
# LK_srr_spe_2004_biomass_count <- cbind(LK_srr_spe_2004_biomass,LK_srr_spe_2004_count)
# 
# 
# LK_srr_spe_2005 <- filter(LK_srr_spe, YEAR_ == '2005')
# LK_srr_spe_2005_biomass <- summarise_at(LK_srr_spe_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_srr_spe_2005_biomass$Year <- ('2005')
# LK_srr_spe_2005_biomass$subregion <- ('LK')
# LK_srr_spe_2005_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# LK_srr_spe_2005_count <- count(LK_srr_spe_2005, vars = "SPECIES_CD")
# 
# LK_srr_spe_2005_biomass_count <- cbind(LK_srr_spe_2005_biomass,LK_srr_spe_2005_count)
# 
# 
# LK_srr_spe_2006 <- filter(LK_srr_spe, YEAR_ == '2006')
# LK_srr_spe_2006_biomass <- summarise_at(LK_srr_spe_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_srr_spe_2006_biomass$Year <- ('2006')
# LK_srr_spe_2006_biomass$subregion <- ('LK')
# LK_srr_spe_2006_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# 
# LK_srr_spe_2006_count <- count(LK_srr_spe_2006, vars = "SPECIES_CD")
# 
# LK_srr_spe_2006_biomass_count <- cbind(LK_srr_spe_2006_biomass,LK_srr_spe_2006_count)
# 
# 
# LK_srr_spe_2007 <- filter(LK_srr_spe, YEAR_ == '2007')
# LK_srr_spe_2007_biomass <- summarise_at(LK_srr_spe_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_srr_spe_2007_biomass$Year <- ('2007')
# LK_srr_spe_2007_biomass$subregion <- ('LK')
# LK_srr_spe_2007_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# LK_srr_spe_2007_count <- count(LK_srr_spe_2007, vars = "SPECIES_CD")
# 
# LK_srr_spe_2007_biomass_count <- cbind(LK_srr_spe_2007_biomass,LK_srr_spe_2007_count)
# 
# 
# LK_srr_spe_2008 <- filter(LK_srr_spe, YEAR_ == '2008')
# LK_srr_spe_2008_biomass <- summarise_at(LK_srr_spe_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_srr_spe_2008_biomass$Year <- ('2008')
# LK_srr_spe_2008_biomass$subregion <- ('LK')
# LK_srr_spe_2008_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# LK_srr_spe_2008_count <- count(LK_srr_spe_2008, vars = "SPECIES_CD")
# 
# LK_srr_spe_2008_biomass_count <- cbind(LK_srr_spe_2008_biomass,LK_srr_spe_2008_count)
# 
# 
# LK_srr_spe_2009 <- filter(LK_srr_spe, YEAR_ == '2009')
# LK_srr_spe_2009_biomass <- summarise_at(LK_srr_spe_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_srr_spe_2009_biomass$Year <- ('2009')
# LK_srr_spe_2009_biomass$subregion <- ('LK')
# LK_srr_spe_2009_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# LK_srr_spe_2009_count <- count(LK_srr_spe_2009, vars = "SPECIES_CD")
# 
# LK_srr_spe_2009_biomass_count <- cbind(LK_srr_spe_2009_biomass,LK_srr_spe_2009_count)
# 
# 
# LK_srr_spe_2010 <- filter(LK_srr_spe, YEAR_ == '2010')
# LK_srr_spe_2010_biomass <- summarise_at(LK_srr_spe_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_srr_spe_2010_biomass$Year <- ('2010')
# LK_srr_spe_2010_biomass$subregion <- ('LK')
# LK_srr_spe_2010_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# LK_srr_spe_2010_count <- count(LK_srr_spe_2010, vars = "SPECIES_CD")
# 
# LK_srr_spe_2010_biomass_count <- cbind(LK_srr_spe_2010_biomass,LK_srr_spe_2010_count)
# 
# 
# LK_srr_spe_2011 <- filter(LK_srr_spe, YEAR_ == '2011')
# LK_srr_spe_2011_biomass <- summarise_at(LK_srr_spe_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_srr_spe_2011_biomass$Year <- ('2011')
# LK_srr_spe_2011_biomass$subregion <- ('LK')
# LK_srr_spe_2011_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# LK_srr_spe_2011_count <- count(LK_srr_spe_2011, vars = "SPECIES_CD")
# 
# LK_srr_spe_2011_biomass_count <- cbind(LK_srr_spe_2011_biomass,LK_srr_spe_2011_count)
# 
# 
# LK_srr_spe_2012 <- filter(LK_srr_spe, YEAR_ == '2012')
# LK_srr_spe_2012_biomass <- summarise_at(LK_srr_spe_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_srr_spe_2012_biomass$Year <- ('2012')
# LK_srr_spe_2012_biomass$subregion <- ('LK')
# LK_srr_spe_2012_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# LK_srr_spe_2012_count <- count(LK_srr_spe_2012, vars = "SPECIES_CD")
# 
# LK_srr_spe_2012_biomass_count <- cbind(LK_srr_spe_2012_biomass,LK_srr_spe_2012_count)
# 
# 
LK_srr_spe_2014 <- filter(LK_srr_spe, YEAR_ == '2014')
LK_srr_spe_2014_biomass <- summarise_at(LK_srr_spe_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
LK_srr_spe_2014_biomass$Year <- ('2014')
LK_srr_spe_2014_biomass$subregion <- ('LK')
LK_srr_spe_2014_biomass$SPECIES_CD <- ('SRR SPE.')

LK_srr_spe_2014_count <- count(LK_srr_spe_2014, vars = "SPECIES_CD")

LK_srr_spe_2014_biomass_count <- cbind(LK_srr_spe_2014_biomass,LK_srr_spe_2014_count)
# 
# 
# LK_srr_spe_2016 <- filter(LK_srr_spe, YEAR_ == '2016')
# LK_srr_spe_2016_biomass <- summarise_at(LK_srr_spe_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_srr_spe_2016_biomass$Year <- ('2016')
# LK_srr_spe_2016_biomass$subregion <- ('LK')
# LK_srr_spe_2016_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# LK_srr_spe_2016_count <- count(LK_srr_spe_2016, vars = "SPECIES_CD")
# 
# LK_srr_spe_2016_biomass_count <- cbind(LK_srr_spe_2016_biomass,LK_srr_spe_2016_count)
# 
# 
# LK_srr_spe_2018 <- filter(LK_srr_spe, YEAR_ == '2018')
# LK_srr_spe_2018_biomass <- summarise_at(LK_srr_spe_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# LK_srr_spe_2018_biomass$Year <- ('2018')
# LK_srr_spe_2018_biomass$subregion <- ('LK')
# LK_srr_spe_2018_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# LK_srr_spe_2018_count <- count(LK_srr_spe_2018, vars = "SPECIES_CD")
# 
# LK_srr_spe_2018_biomass_count <- cbind(LK_srr_spe_2018_biomass,LK_srr_spe_2018_count)


LK_srr_spe_all <- LK_srr_spe_2014_biomass_count

LK_srr_spe_all$vars <- NULL


# LK_grouper_combined <- rbind(LK_cep_crue_all,LK_cep_fulv_all,LK_epi_itaj_all,LK_epi_mori_all,LK_epi_stri_all,LK_myc_bona_all,
#                              LK_myc_inte_all,LK_myc_micr_all,LK_myc_phen_all,LK_myc_tigr_all,LK_myc_vene_all,LK_srr_spe_all)
# 
# 
# #export(LK_grouper_combined,"C:/Users/cara.estes/Documents/EwE_data/LK_groupers.csv")




MK_grouper <- merge(MK_snapper_grouper, grouper, by = c("SPECIES_CD"))
unique(MK_grouper$SPECIES_CD)

### "CEP CRUE" "CEP FULV" "EPI ITAJ" "EPI MORI" "EPI STRI" "MYC BONA" "MYC INTE" "MYC MICR""MYC PHEN" "MYC VENE" "SRR SPE."

MK_cep_crue <- filter(MK_grouper, SPECIES_CD == "CEP CRUE")
unique(MK_cep_crue$YEAR_)

MK_cep_crue_1999 <- filter(MK_cep_crue, YEAR_ == '1999')
MK_cep_crue_1999_biomass <- summarise_at(MK_cep_crue_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_1999_biomass$Year <- ('1999')
MK_cep_crue_1999_biomass$subregion <- ('MK')
MK_cep_crue_1999_biomass$SPECIES_CD <- ('CEP CRUE')

MK_cep_crue_1999_count <- count(MK_cep_crue_1999, vars = "SPECIES_CD")

MK_cep_crue_1999_biomass_count <- cbind(MK_cep_crue_1999_biomass,MK_cep_crue_1999_count)



MK_cep_crue_2000 <- filter(MK_cep_crue, YEAR_ == '2000')
MK_cep_crue_2000_biomass <- summarise_at(MK_cep_crue_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_2000_biomass$Year <- ('2000')
MK_cep_crue_2000_biomass$subregion <- ('MK')
MK_cep_crue_2000_biomass$SPECIES_CD <- ('CEP CRUE')

MK_cep_crue_2000_count <- count(MK_cep_crue_2000, vars = "SPECIES_CD")

MK_cep_crue_2000_biomass_count <- cbind(MK_cep_crue_2000_biomass,MK_cep_crue_2000_count)

MK_cep_crue_2001 <- filter(MK_cep_crue, YEAR_ == '2001')
MK_cep_crue_2001_biomass <- summarise_at(MK_cep_crue_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_2001_biomass$Year <- ('2001')
MK_cep_crue_2001_biomass$subregion <- ('MK')
MK_cep_crue_2001_biomass$SPECIES_CD <- ('CEP CRUE')

MK_cep_crue_2001_count <- count(MK_cep_crue_2001, vars = "SPECIES_CD")

MK_cep_crue_2001_biomass_count <- cbind(MK_cep_crue_2001_biomass,MK_cep_crue_2001_count)


MK_cep_crue_2002 <- filter(MK_cep_crue, YEAR_ == '2002')
MK_cep_crue_2002_biomass <- summarise_at(MK_cep_crue_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_2002_biomass$Year <- ('2002')
MK_cep_crue_2002_biomass$subregion <- ('MK')
MK_cep_crue_2002_biomass$SPECIES_CD <- ('CEP CRUE')

MK_cep_crue_2002_count <- count(MK_cep_crue_2002, vars = "SPECIES_CD")

MK_cep_crue_2002_biomass_count <- cbind(MK_cep_crue_2002_biomass,MK_cep_crue_2002_count)


MK_cep_crue_2003 <- filter(MK_cep_crue, YEAR_ == '2003')
MK_cep_crue_2003_biomass <- summarise_at(MK_cep_crue_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_2003_biomass$Year <- ('2003')
MK_cep_crue_2003_biomass$subregion <- ('MK')
MK_cep_crue_2003_biomass$SPECIES_CD <- ('CEP CRUE')

MK_cep_crue_2003_count <- count(MK_cep_crue_2003, vars = "SPECIES_CD")

MK_cep_crue_2003_biomass_count <- cbind(MK_cep_crue_2003_biomass,MK_cep_crue_2003_count)


MK_cep_crue_2004 <- filter(MK_cep_crue, YEAR_ == '2004')
MK_cep_crue_2004_biomass <- summarise_at(MK_cep_crue_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_2004_biomass$Year <- ('2004')
MK_cep_crue_2004_biomass$subregion <- ('MK')
MK_cep_crue_2004_biomass$SPECIES_CD <- ('CEP CRUE')

MK_cep_crue_2004_count <- count(MK_cep_crue_2004, vars = "SPECIES_CD")

MK_cep_crue_2004_biomass_count <- cbind(MK_cep_crue_2004_biomass,MK_cep_crue_2004_count)


MK_cep_crue_2005 <- filter(MK_cep_crue, YEAR_ == '2005')
MK_cep_crue_2005_biomass <- summarise_at(MK_cep_crue_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_2005_biomass$Year <- ('2005')
MK_cep_crue_2005_biomass$subregion <- ('MK')
MK_cep_crue_2005_biomass$SPECIES_CD <- ('CEP CRUE')

MK_cep_crue_2005_count <- count(MK_cep_crue_2005, vars = "SPECIES_CD")

MK_cep_crue_2005_biomass_count <- cbind(MK_cep_crue_2005_biomass,MK_cep_crue_2005_count)


MK_cep_crue_2006 <- filter(MK_cep_crue, YEAR_ == '2006')
MK_cep_crue_2006_biomass <- summarise_at(MK_cep_crue_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_2006_biomass$Year <- ('2006')
MK_cep_crue_2006_biomass$subregion <- ('MK')
MK_cep_crue_2006_biomass$SPECIES_CD <- ('CEP CRUE')


MK_cep_crue_2006_count <- count(MK_cep_crue_2006, vars = "SPECIES_CD")

MK_cep_crue_2006_biomass_count <- cbind(MK_cep_crue_2006_biomass,MK_cep_crue_2006_count)


MK_cep_crue_2007 <- filter(MK_cep_crue, YEAR_ == '2007')
MK_cep_crue_2007_biomass <- summarise_at(MK_cep_crue_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_2007_biomass$Year <- ('2007')
MK_cep_crue_2007_biomass$subregion <- ('MK')
MK_cep_crue_2007_biomass$SPECIES_CD <- ('CEP CRUE')

MK_cep_crue_2007_count <- count(MK_cep_crue_2007, vars = "SPECIES_CD")

MK_cep_crue_2007_biomass_count <- cbind(MK_cep_crue_2007_biomass,MK_cep_crue_2007_count)


MK_cep_crue_2008 <- filter(MK_cep_crue, YEAR_ == '2008')
MK_cep_crue_2008_biomass <- summarise_at(MK_cep_crue_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_2008_biomass$Year <- ('2008')
MK_cep_crue_2008_biomass$subregion <- ('MK')
MK_cep_crue_2008_biomass$SPECIES_CD <- ('CEP CRUE')

MK_cep_crue_2008_count <- count(MK_cep_crue_2008, vars = "SPECIES_CD")

MK_cep_crue_2008_biomass_count <- cbind(MK_cep_crue_2008_biomass,MK_cep_crue_2008_count)


MK_cep_crue_2009 <- filter(MK_cep_crue, YEAR_ == '2009')
MK_cep_crue_2009_biomass <- summarise_at(MK_cep_crue_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_2009_biomass$Year <- ('2009')
MK_cep_crue_2009_biomass$subregion <- ('MK')
MK_cep_crue_2009_biomass$SPECIES_CD <- ('CEP CRUE')

MK_cep_crue_2009_count <- count(MK_cep_crue_2009, vars = "SPECIES_CD")

MK_cep_crue_2009_biomass_count <- cbind(MK_cep_crue_2009_biomass,MK_cep_crue_2009_count)


MK_cep_crue_2010 <- filter(MK_cep_crue, YEAR_ == '2010')
MK_cep_crue_2010_biomass <- summarise_at(MK_cep_crue_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_2010_biomass$Year <- ('2010')
MK_cep_crue_2010_biomass$subregion <- ('MK')
MK_cep_crue_2010_biomass$SPECIES_CD <- ('CEP CRUE')

MK_cep_crue_2010_count <- count(MK_cep_crue_2010, vars = "SPECIES_CD")

MK_cep_crue_2010_biomass_count <- cbind(MK_cep_crue_2010_biomass,MK_cep_crue_2010_count)


MK_cep_crue_2011 <- filter(MK_cep_crue, YEAR_ == '2011')
MK_cep_crue_2011_biomass <- summarise_at(MK_cep_crue_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_2011_biomass$Year <- ('2011')
MK_cep_crue_2011_biomass$subregion <- ('MK')
MK_cep_crue_2011_biomass$SPECIES_CD <- ('CEP CRUE')

MK_cep_crue_2011_count <- count(MK_cep_crue_2011, vars = "SPECIES_CD")

MK_cep_crue_2011_biomass_count <- cbind(MK_cep_crue_2011_biomass,MK_cep_crue_2011_count)


MK_cep_crue_2012 <- filter(MK_cep_crue, YEAR_ == '2012')
MK_cep_crue_2012_biomass <- summarise_at(MK_cep_crue_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_2012_biomass$Year <- ('2012')
MK_cep_crue_2012_biomass$subregion <- ('MK')
MK_cep_crue_2012_biomass$SPECIES_CD <- ('CEP CRUE')

MK_cep_crue_2012_count <- count(MK_cep_crue_2012, vars = "SPECIES_CD")

MK_cep_crue_2012_biomass_count <- cbind(MK_cep_crue_2012_biomass,MK_cep_crue_2012_count)


MK_cep_crue_2014 <- filter(MK_cep_crue, YEAR_ == '2014')
MK_cep_crue_2014_biomass <- summarise_at(MK_cep_crue_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_2014_biomass$Year <- ('2014')
MK_cep_crue_2014_biomass$subregion <- ('MK')
MK_cep_crue_2014_biomass$SPECIES_CD <- ('CEP CRUE')

MK_cep_crue_2014_count <- count(MK_cep_crue_2014, vars = "SPECIES_CD")

MK_cep_crue_2014_biomass_count <- cbind(MK_cep_crue_2014_biomass,MK_cep_crue_2014_count)


MK_cep_crue_2016 <- filter(MK_cep_crue, YEAR_ == '2016')
MK_cep_crue_2016_biomass <- summarise_at(MK_cep_crue_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_2016_biomass$Year <- ('2016')
MK_cep_crue_2016_biomass$subregion <- ('MK')
MK_cep_crue_2016_biomass$SPECIES_CD <- ('CEP CRUE')

MK_cep_crue_2016_count <- count(MK_cep_crue_2016, vars = "SPECIES_CD")

MK_cep_crue_2016_biomass_count <- cbind(MK_cep_crue_2016_biomass,MK_cep_crue_2016_count)


MK_cep_crue_2018 <- filter(MK_cep_crue, YEAR_ == '2018')
MK_cep_crue_2018_biomass <- summarise_at(MK_cep_crue_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_crue_2018_biomass$Year <- ('2018')
MK_cep_crue_2018_biomass$subregion <- ('MK')
MK_cep_crue_2018_biomass$SPECIES_CD <- ('CEP CRUE')

MK_cep_crue_2018_count <- count(MK_cep_crue_2018, vars = "SPECIES_CD")

MK_cep_crue_2018_biomass_count <- cbind(MK_cep_crue_2018_biomass,MK_cep_crue_2018_count)


MK_cep_crue_all <- rbind(MK_cep_crue_1999_biomass_count,MK_cep_crue_2000_biomass_count,MK_cep_crue_2001_biomass_count,MK_cep_crue_2002_biomass_count,MK_cep_crue_2003_biomass_count,
                         MK_cep_crue_2005_biomass_count,MK_cep_crue_2006_biomass_count,MK_cep_crue_2007_biomass_count,
                         MK_cep_crue_2008_biomass_count,MK_cep_crue_2009_biomass_count,MK_cep_crue_2010_biomass_count,MK_cep_crue_2011_biomass_count,
                         MK_cep_crue_2012_biomass_count,MK_cep_crue_2014_biomass_count,MK_cep_crue_2016_biomass_count,MK_cep_crue_2018_biomass_count)

MK_cep_crue_all$vars <- NULL





MK_cep_fulv <- filter(MK_grouper, SPECIES_CD == "CEP FULV")
unique(MK_cep_fulv$YEAR_)

MK_cep_fulv_1999 <- filter(MK_cep_fulv, YEAR_ == '1999')
MK_cep_fulv_1999_biomass <- summarise_at(MK_cep_fulv_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_fulv_1999_biomass$Year <- ('1999')
MK_cep_fulv_1999_biomass$subregion <- ('MK')
MK_cep_fulv_1999_biomass$SPECIES_CD <- ('CEP FULV')

MK_cep_fulv_1999_count <- count(MK_cep_fulv_1999, vars = "SPECIES_CD")

MK_cep_fulv_1999_biomass_count <- cbind(MK_cep_fulv_1999_biomass,MK_cep_fulv_1999_count)



# MK_cep_fulv_2000 <- filter(MK_cep_fulv, YEAR_ == '2000')
# MK_cep_fulv_2000_biomass <- summarise_at(MK_cep_fulv_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_cep_fulv_2000_biomass$Year <- ('2000')
# MK_cep_fulv_2000_biomass$subregion <- ('MK')
# MK_cep_fulv_2000_biomass$SPECIES_CD <- ('CEP FULV')
# 
# MK_cep_fulv_2000_count <- count(MK_cep_fulv_2000, vars = "SPECIES_CD")
# 
# MK_cep_fulv_2000_biomass_count <- cbind(MK_cep_fulv_2000_biomass,MK_cep_fulv_2000_count)
# 
# MK_cep_fulv_2001 <- filter(MK_cep_fulv, YEAR_ == '2001')
# MK_cep_fulv_2001_biomass <- summarise_at(MK_cep_fulv_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_cep_fulv_2001_biomass$Year <- ('2001')
# MK_cep_fulv_2001_biomass$subregion <- ('MK')
# MK_cep_fulv_2001_biomass$SPECIES_CD <- ('CEP FULV')
# 
# MK_cep_fulv_2001_count <- count(MK_cep_fulv_2001, vars = "SPECIES_CD")
# 
# MK_cep_fulv_2001_biomass_count <- cbind(MK_cep_fulv_2001_biomass,MK_cep_fulv_2001_count)


MK_cep_fulv_2002 <- filter(MK_cep_fulv, YEAR_ == '2002')
MK_cep_fulv_2002_biomass <- summarise_at(MK_cep_fulv_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_fulv_2002_biomass$Year <- ('2002')
MK_cep_fulv_2002_biomass$subregion <- ('MK')
MK_cep_fulv_2002_biomass$SPECIES_CD <- ('CEP FULV')

MK_cep_fulv_2002_count <- count(MK_cep_fulv_2002, vars = "SPECIES_CD")

MK_cep_fulv_2002_biomass_count <- cbind(MK_cep_fulv_2002_biomass,MK_cep_fulv_2002_count)


MK_cep_fulv_2003 <- filter(MK_cep_fulv, YEAR_ == '2003')
MK_cep_fulv_2003_biomass <- summarise_at(MK_cep_fulv_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_fulv_2003_biomass$Year <- ('2003')
MK_cep_fulv_2003_biomass$subregion <- ('MK')
MK_cep_fulv_2003_biomass$SPECIES_CD <- ('CEP FULV')

MK_cep_fulv_2003_count <- count(MK_cep_fulv_2003, vars = "SPECIES_CD")

MK_cep_fulv_2003_biomass_count <- cbind(MK_cep_fulv_2003_biomass,MK_cep_fulv_2003_count)


# MK_cep_fulv_2004 <- filter(MK_cep_fulv, YEAR_ == '2004')
# MK_cep_fulv_2004_biomass <- summarise_at(MK_cep_fulv_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_cep_fulv_2004_biomass$Year <- ('2004')
# MK_cep_fulv_2004_biomass$subregion <- ('MK')
# MK_cep_fulv_2004_biomass$SPECIES_CD <- ('CEP FULV')
# 
# MK_cep_fulv_2004_count <- count(MK_cep_fulv_2004, vars = "SPECIES_CD")
# 
# MK_cep_fulv_2004_biomass_count <- cbind(MK_cep_fulv_2004_biomass,MK_cep_fulv_2004_count)
# 
# 
# MK_cep_fulv_2005 <- filter(MK_cep_fulv, YEAR_ == '2005')
# MK_cep_fulv_2005_biomass <- summarise_at(MK_cep_fulv_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_cep_fulv_2005_biomass$Year <- ('2005')
# MK_cep_fulv_2005_biomass$subregion <- ('MK')
# MK_cep_fulv_2005_biomass$SPECIES_CD <- ('CEP FULV')
# 
# MK_cep_fulv_2005_count <- count(MK_cep_fulv_2005, vars = "SPECIES_CD")
# 
# MK_cep_fulv_2005_biomass_count <- cbind(MK_cep_fulv_2005_biomass,MK_cep_fulv_2005_count)
# 
# 
# MK_cep_fulv_2006 <- filter(MK_cep_fulv, YEAR_ == '2006')
# MK_cep_fulv_2006_biomass <- summarise_at(MK_cep_fulv_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_cep_fulv_2006_biomass$Year <- ('2006')
# MK_cep_fulv_2006_biomass$subregion <- ('MK')
# MK_cep_fulv_2006_biomass$SPECIES_CD <- ('CEP FULV')
# 
# 
# MK_cep_fulv_2006_count <- count(MK_cep_fulv_2006, vars = "SPECIES_CD")
# 
# MK_cep_fulv_2006_biomass_count <- cbind(MK_cep_fulv_2006_biomass,MK_cep_fulv_2006_count)
# 
# 
# MK_cep_fulv_2007 <- filter(MK_cep_fulv, YEAR_ == '2007')
# MK_cep_fulv_2007_biomass <- summarise_at(MK_cep_fulv_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_cep_fulv_2007_biomass$Year <- ('2007')
# MK_cep_fulv_2007_biomass$subregion <- ('MK')
# MK_cep_fulv_2007_biomass$SPECIES_CD <- ('CEP FULV')
# 
# MK_cep_fulv_2007_count <- count(MK_cep_fulv_2007, vars = "SPECIES_CD")
# 
# MK_cep_fulv_2007_biomass_count <- cbind(MK_cep_fulv_2007_biomass,MK_cep_fulv_2007_count)
# 
# 
# MK_cep_fulv_2008 <- filter(MK_cep_fulv, YEAR_ == '2008')
# MK_cep_fulv_2008_biomass <- summarise_at(MK_cep_fulv_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_cep_fulv_2008_biomass$Year <- ('2008')
# MK_cep_fulv_2008_biomass$subregion <- ('MK')
# MK_cep_fulv_2008_biomass$SPECIES_CD <- ('CEP FULV')
# 
# MK_cep_fulv_2008_count <- count(MK_cep_fulv_2008, vars = "SPECIES_CD")
# 
# MK_cep_fulv_2008_biomass_count <- cbind(MK_cep_fulv_2008_biomass,MK_cep_fulv_2008_count)
# 
# 
# MK_cep_fulv_2009 <- filter(MK_cep_fulv, YEAR_ == '2009')
# MK_cep_fulv_2009_biomass <- summarise_at(MK_cep_fulv_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_cep_fulv_2009_biomass$Year <- ('2009')
# MK_cep_fulv_2009_biomass$subregion <- ('MK')
# MK_cep_fulv_2009_biomass$SPECIES_CD <- ('CEP FULV')
# 
# MK_cep_fulv_2009_count <- count(MK_cep_fulv_2009, vars = "SPECIES_CD")
# 
# MK_cep_fulv_2009_biomass_count <- cbind(MK_cep_fulv_2009_biomass,MK_cep_fulv_2009_count)


MK_cep_fulv_2010 <- filter(MK_cep_fulv, YEAR_ == '2010')
MK_cep_fulv_2010_biomass <- summarise_at(MK_cep_fulv_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_fulv_2010_biomass$Year <- ('2010')
MK_cep_fulv_2010_biomass$subregion <- ('MK')
MK_cep_fulv_2010_biomass$SPECIES_CD <- ('CEP FULV')

MK_cep_fulv_2010_count <- count(MK_cep_fulv_2010, vars = "SPECIES_CD")

MK_cep_fulv_2010_biomass_count <- cbind(MK_cep_fulv_2010_biomass,MK_cep_fulv_2010_count)


# MK_cep_fulv_2011 <- filter(MK_cep_fulv, YEAR_ == '2011')
# MK_cep_fulv_2011_biomass <- summarise_at(MK_cep_fulv_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_cep_fulv_2011_biomass$Year <- ('2011')
# MK_cep_fulv_2011_biomass$subregion <- ('MK')
# MK_cep_fulv_2011_biomass$SPECIES_CD <- ('CEP FULV')
# 
# MK_cep_fulv_2011_count <- count(MK_cep_fulv_2011, vars = "SPECIES_CD")
# 
# MK_cep_fulv_2011_biomass_count <- cbind(MK_cep_fulv_2011_biomass,MK_cep_fulv_2011_count)


MK_cep_fulv_2012 <- filter(MK_cep_fulv, YEAR_ == '2012')
MK_cep_fulv_2012_biomass <- summarise_at(MK_cep_fulv_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_fulv_2012_biomass$Year <- ('2012')
MK_cep_fulv_2012_biomass$subregion <- ('MK')
MK_cep_fulv_2012_biomass$SPECIES_CD <- ('CEP FULV')

MK_cep_fulv_2012_count <- count(MK_cep_fulv_2012, vars = "SPECIES_CD")

MK_cep_fulv_2012_biomass_count <- cbind(MK_cep_fulv_2012_biomass,MK_cep_fulv_2012_count)


# MK_cep_fulv_2014 <- filter(MK_cep_fulv, YEAR_ == '2014')
# MK_cep_fulv_2014_biomass <- summarise_at(MK_cep_fulv_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_cep_fulv_2014_biomass$Year <- ('2014')
# MK_cep_fulv_2014_biomass$subregion <- ('MK')
# MK_cep_fulv_2014_biomass$SPECIES_CD <- ('CEP FULV')
# 
# MK_cep_fulv_2014_count <- count(MK_cep_fulv_2014, vars = "SPECIES_CD")
# 
# MK_cep_fulv_2014_biomass_count <- cbind(MK_cep_fulv_2014_biomass,MK_cep_fulv_2014_count)


MK_cep_fulv_2016 <- filter(MK_cep_fulv, YEAR_ == '2016')
MK_cep_fulv_2016_biomass <- summarise_at(MK_cep_fulv_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_cep_fulv_2016_biomass$Year <- ('2016')
MK_cep_fulv_2016_biomass$subregion <- ('MK')
MK_cep_fulv_2016_biomass$SPECIES_CD <- ('CEP FULV')

MK_cep_fulv_2016_count <- count(MK_cep_fulv_2016, vars = "SPECIES_CD")

MK_cep_fulv_2016_biomass_count <- cbind(MK_cep_fulv_2016_biomass,MK_cep_fulv_2016_count)


# MK_cep_fulv_2018 <- filter(MK_cep_fulv, YEAR_ == '2018')
# MK_cep_fulv_2018_biomass <- summarise_at(MK_cep_fulv_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_cep_fulv_2018_biomass$Year <- ('2018')
# MK_cep_fulv_2018_biomass$subregion <- ('MK')
# MK_cep_fulv_2018_biomass$SPECIES_CD <- ('CEP FULV')
# 
# MK_cep_fulv_2018_count <- count(MK_cep_fulv_2018, vars = "SPECIES_CD")
# 
MK_cep_fulv_2018_biomass_count <- cbind(MK_cep_fulv_2018_biomass,MK_cep_fulv_2018_count)


MK_cep_fulv_all <- rbind(MK_cep_fulv_1999_biomass_count,MK_cep_fulv_2002_biomass_count,MK_cep_fulv_2003_biomass_count,
                         MK_cep_fulv_2010_biomass_count,MK_cep_fulv_2012_biomass_count,
                         MK_cep_fulv_2016_biomass_count)

MK_cep_fulv_all$vars <- NULL






MK_epi_itaj <- filter(MK_grouper, SPECIES_CD == "EPI ITAJ")
unique(MK_epi_itaj$YEAR_)

# MK_epi_itaj_1999 <- filter(MK_epi_itaj, YEAR_ == '1999')
# MK_epi_itaj_1999_biomass <- summarise_at(MK_epi_itaj_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_itaj_1999_biomass$Year <- ('1999')
# MK_epi_itaj_1999_biomass$subregion <- ('MK')
# MK_epi_itaj_1999_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# MK_epi_itaj_1999_count <- count(MK_epi_itaj_1999, vars = "SPECIES_CD")
# 
# MK_epi_itaj_1999_biomass_count <- cbind(MK_epi_itaj_1999_biomass,MK_epi_itaj_1999_count)
# 
# 
# 
# MK_epi_itaj_2000 <- filter(MK_epi_itaj, YEAR_ == '2000')
# MK_epi_itaj_2000_biomass <- summarise_at(MK_epi_itaj_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_itaj_2000_biomass$Year <- ('2000')
# MK_epi_itaj_2000_biomass$subregion <- ('MK')
# MK_epi_itaj_2000_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# MK_epi_itaj_2000_count <- count(MK_epi_itaj_2000, vars = "SPECIES_CD")
# 
# MK_epi_itaj_2000_biomass_count <- cbind(MK_epi_itaj_2000_biomass,MK_epi_itaj_2000_count)

MK_epi_itaj_2001 <- filter(MK_epi_itaj, YEAR_ == '2001')
MK_epi_itaj_2001_biomass <- summarise_at(MK_epi_itaj_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_itaj_2001_biomass$Year <- ('2001')
MK_epi_itaj_2001_biomass$subregion <- ('MK')
MK_epi_itaj_2001_biomass$SPECIES_CD <- ('EPI ITAJ')

MK_epi_itaj_2001_count <- count(MK_epi_itaj_2001, vars = "SPECIES_CD")

MK_epi_itaj_2001_biomass_count <- cbind(MK_epi_itaj_2001_biomass,MK_epi_itaj_2001_count)


# MK_epi_itaj_2002 <- filter(MK_epi_itaj, YEAR_ == '2002')
# MK_epi_itaj_2002_biomass <- summarise_at(MK_epi_itaj_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_itaj_2002_biomass$Year <- ('2002')
# MK_epi_itaj_2002_biomass$subregion <- ('MK')
# MK_epi_itaj_2002_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# MK_epi_itaj_2002_count <- count(MK_epi_itaj_2002, vars = "SPECIES_CD")
# 
# MK_epi_itaj_2002_biomass_count <- cbind(MK_epi_itaj_2002_biomass,MK_epi_itaj_2002_count)
# 
# 
# MK_epi_itaj_2003 <- filter(MK_epi_itaj, YEAR_ == '2003')
# MK_epi_itaj_2003_biomass <- summarise_at(MK_epi_itaj_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_itaj_2003_biomass$Year <- ('2003')
# MK_epi_itaj_2003_biomass$subregion <- ('MK')
# MK_epi_itaj_2003_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# MK_epi_itaj_2003_count <- count(MK_epi_itaj_2003, vars = "SPECIES_CD")
# 
# MK_epi_itaj_2003_biomass_count <- cbind(MK_epi_itaj_2003_biomass,MK_epi_itaj_2003_count)
# 
# 
# MK_epi_itaj_2004 <- filter(MK_epi_itaj, YEAR_ == '2004')
# MK_epi_itaj_2004_biomass <- summarise_at(MK_epi_itaj_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_itaj_2004_biomass$Year <- ('2004')
# MK_epi_itaj_2004_biomass$subregion <- ('MK')
# MK_epi_itaj_2004_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# MK_epi_itaj_2004_count <- count(MK_epi_itaj_2004, vars = "SPECIES_CD")
# 
# MK_epi_itaj_2004_biomass_count <- cbind(MK_epi_itaj_2004_biomass,MK_epi_itaj_2004_count)
# 
# 
# MK_epi_itaj_2005 <- filter(MK_epi_itaj, YEAR_ == '2005')
# MK_epi_itaj_2005_biomass <- summarise_at(MK_epi_itaj_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_itaj_2005_biomass$Year <- ('2005')
# MK_epi_itaj_2005_biomass$subregion <- ('MK')
# MK_epi_itaj_2005_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# MK_epi_itaj_2005_count <- count(MK_epi_itaj_2005, vars = "SPECIES_CD")
# 
# MK_epi_itaj_2005_biomass_count <- cbind(MK_epi_itaj_2005_biomass,MK_epi_itaj_2005_count)


# MK_epi_itaj_2006 <- filter(MK_epi_itaj, YEAR_ == '2006')
# MK_epi_itaj_2006_biomass <- summarise_at(MK_epi_itaj_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_itaj_2006_biomass$Year <- ('2006')
# MK_epi_itaj_2006_biomass$subregion <- ('MK')
# MK_epi_itaj_2006_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# 
# MK_epi_itaj_2006_count <- count(MK_epi_itaj_2006, vars = "SPECIES_CD")
# 
# MK_epi_itaj_2006_biomass_count <- cbind(MK_epi_itaj_2006_biomass,MK_epi_itaj_2006_count)
# 
# 
# MK_epi_itaj_2007 <- filter(MK_epi_itaj, YEAR_ == '2007')
# MK_epi_itaj_2007_biomass <- summarise_at(MK_epi_itaj_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_itaj_2007_biomass$Year <- ('2007')
# MK_epi_itaj_2007_biomass$subregion <- ('MK')
# MK_epi_itaj_2007_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# MK_epi_itaj_2007_count <- count(MK_epi_itaj_2007, vars = "SPECIES_CD")
# 
# MK_epi_itaj_2007_biomass_count <- cbind(MK_epi_itaj_2007_biomass,MK_epi_itaj_2007_count)
# 
# 
# MK_epi_itaj_2008 <- filter(MK_epi_itaj, YEAR_ == '2008')
# MK_epi_itaj_2008_biomass <- summarise_at(MK_epi_itaj_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_itaj_2008_biomass$Year <- ('2008')
# MK_epi_itaj_2008_biomass$subregion <- ('MK')
# MK_epi_itaj_2008_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# MK_epi_itaj_2008_count <- count(MK_epi_itaj_2008, vars = "SPECIES_CD")
# 
# MK_epi_itaj_2008_biomass_count <- cbind(MK_epi_itaj_2008_biomass,MK_epi_itaj_2008_count)
# 
# 
# MK_epi_itaj_2009 <- filter(MK_epi_itaj, YEAR_ == '2009')
# MK_epi_itaj_2009_biomass <- summarise_at(MK_epi_itaj_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_itaj_2009_biomass$Year <- ('2009')
# MK_epi_itaj_2009_biomass$subregion <- ('MK')
# MK_epi_itaj_2009_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# MK_epi_itaj_2009_count <- count(MK_epi_itaj_2009, vars = "SPECIES_CD")
# 
# MK_epi_itaj_2009_biomass_count <- cbind(MK_epi_itaj_2009_biomass,MK_epi_itaj_2009_count)


MK_epi_itaj_2010 <- filter(MK_epi_itaj, YEAR_ == '2010')
MK_epi_itaj_2010_biomass <- summarise_at(MK_epi_itaj_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_itaj_2010_biomass$Year <- ('2010')
MK_epi_itaj_2010_biomass$subregion <- ('MK')
MK_epi_itaj_2010_biomass$SPECIES_CD <- ('EPI ITAJ')

MK_epi_itaj_2010_count <- count(MK_epi_itaj_2010, vars = "SPECIES_CD")

MK_epi_itaj_2010_biomass_count <- cbind(MK_epi_itaj_2010_biomass,MK_epi_itaj_2010_count)


# MK_epi_itaj_2011 <- filter(MK_epi_itaj, YEAR_ == '2011')
# MK_epi_itaj_2011_biomass <- summarise_at(MK_epi_itaj_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_itaj_2011_biomass$Year <- ('2011')
# MK_epi_itaj_2011_biomass$subregion <- ('MK')
# MK_epi_itaj_2011_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# MK_epi_itaj_2011_count <- count(MK_epi_itaj_2011, vars = "SPECIES_CD")
# 
# MK_epi_itaj_2011_biomass_count <- cbind(MK_epi_itaj_2011_biomass,MK_epi_itaj_2011_count)


# MK_epi_itaj_2012 <- filter(MK_epi_itaj, YEAR_ == '2012')
# MK_epi_itaj_2012_biomass <- summarise_at(MK_epi_itaj_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_itaj_2012_biomass$Year <- ('2012')
# MK_epi_itaj_2012_biomass$subregion <- ('MK')
# MK_epi_itaj_2012_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# MK_epi_itaj_2012_count <- count(MK_epi_itaj_2012, vars = "SPECIES_CD")
# 
# MK_epi_itaj_2012_biomass_count <- cbind(MK_epi_itaj_2012_biomass,MK_epi_itaj_2012_count)
# 
# 
# MK_epi_itaj_2014 <- filter(MK_epi_itaj, YEAR_ == '2014')
# MK_epi_itaj_2014_biomass <- summarise_at(MK_epi_itaj_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_itaj_2014_biomass$Year <- ('2014')
# MK_epi_itaj_2014_biomass$subregion <- ('MK')
# MK_epi_itaj_2014_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# MK_epi_itaj_2014_count <- count(MK_epi_itaj_2014, vars = "SPECIES_CD")
# 
# MK_epi_itaj_2014_biomass_count <- cbind(MK_epi_itaj_2014_biomass,MK_epi_itaj_2014_count)
# 
# 
# MK_epi_itaj_2016 <- filter(MK_epi_itaj, YEAR_ == '2016')
# MK_epi_itaj_2016_biomass <- summarise_at(MK_epi_itaj_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_itaj_2016_biomass$Year <- ('2016')
# MK_epi_itaj_2016_biomass$subregion <- ('MK')
# MK_epi_itaj_2016_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# MK_epi_itaj_2016_count <- count(MK_epi_itaj_2016, vars = "SPECIES_CD")
# 
# MK_epi_itaj_2016_biomass_count <- cbind(MK_epi_itaj_2016_biomass,MK_epi_itaj_2016_count)
# 
# 
# MK_epi_itaj_2018 <- filter(MK_epi_itaj, YEAR_ == '2018')
# MK_epi_itaj_2018_biomass <- summarise_at(MK_epi_itaj_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_itaj_2018_biomass$Year <- ('2018')
# MK_epi_itaj_2018_biomass$subregion <- ('MK')
# MK_epi_itaj_2018_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# MK_epi_itaj_2018_count <- count(MK_epi_itaj_2018, vars = "SPECIES_CD")
# 
# MK_epi_itaj_2018_biomass_count <- cbind(MK_epi_itaj_2018_biomass,MK_epi_itaj_2018_count)
# 

MK_epi_itaj_all <- rbind(MK_epi_itaj_2001_biomass_count,MK_epi_itaj_2010_biomass_count)


MK_epi_itaj_all$vars <- NULL






MK_epi_mori <- filter(MK_grouper, SPECIES_CD == "EPI MORI")
unique(MK_epi_mori$YEAR_)

MK_epi_mori_1999 <- filter(MK_epi_mori, YEAR_ == '1999')
MK_epi_mori_1999_biomass <- summarise_at(MK_epi_mori_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_1999_biomass$Year <- ('1999')
MK_epi_mori_1999_biomass$subregion <- ('MK')
MK_epi_mori_1999_biomass$SPECIES_CD <- ('EPI MORI')

MK_epi_mori_1999_count <- count(MK_epi_mori_1999, vars = "SPECIES_CD")

MK_epi_mori_1999_biomass_count <- cbind(MK_epi_mori_1999_biomass,MK_epi_mori_1999_count)



MK_epi_mori_2000 <- filter(MK_epi_mori, YEAR_ == '2000')
MK_epi_mori_2000_biomass <- summarise_at(MK_epi_mori_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_2000_biomass$Year <- ('2000')
MK_epi_mori_2000_biomass$subregion <- ('MK')
MK_epi_mori_2000_biomass$SPECIES_CD <- ('EPI MORI')

MK_epi_mori_2000_count <- count(MK_epi_mori_2000, vars = "SPECIES_CD")

MK_epi_mori_2000_biomass_count <- cbind(MK_epi_mori_2000_biomass,MK_epi_mori_2000_count)

MK_epi_mori_2001 <- filter(MK_epi_mori, YEAR_ == '2001')
MK_epi_mori_2001_biomass <- summarise_at(MK_epi_mori_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_2001_biomass$Year <- ('2001')
MK_epi_mori_2001_biomass$subregion <- ('MK')
MK_epi_mori_2001_biomass$SPECIES_CD <- ('EPI MORI')

MK_epi_mori_2001_count <- count(MK_epi_mori_2001, vars = "SPECIES_CD")

MK_epi_mori_2001_biomass_count <- cbind(MK_epi_mori_2001_biomass,MK_epi_mori_2001_count)


MK_epi_mori_2002 <- filter(MK_epi_mori, YEAR_ == '2002')
MK_epi_mori_2002_biomass <- summarise_at(MK_epi_mori_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_2002_biomass$Year <- ('2002')
MK_epi_mori_2002_biomass$subregion <- ('MK')
MK_epi_mori_2002_biomass$SPECIES_CD <- ('EPI MORI')

MK_epi_mori_2002_count <- count(MK_epi_mori_2002, vars = "SPECIES_CD")

MK_epi_mori_2002_biomass_count <- cbind(MK_epi_mori_2002_biomass,MK_epi_mori_2002_count)


MK_epi_mori_2003 <- filter(MK_epi_mori, YEAR_ == '2003')
MK_epi_mori_2003_biomass <- summarise_at(MK_epi_mori_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_2003_biomass$Year <- ('2003')
MK_epi_mori_2003_biomass$subregion <- ('MK')
MK_epi_mori_2003_biomass$SPECIES_CD <- ('EPI MORI')

MK_epi_mori_2003_count <- count(MK_epi_mori_2003, vars = "SPECIES_CD")

MK_epi_mori_2003_biomass_count <- cbind(MK_epi_mori_2003_biomass,MK_epi_mori_2003_count)


MK_epi_mori_2004 <- filter(MK_epi_mori, YEAR_ == '2004')
MK_epi_mori_2004_biomass <- summarise_at(MK_epi_mori_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_2004_biomass$Year <- ('2004')
MK_epi_mori_2004_biomass$subregion <- ('MK')
MK_epi_mori_2004_biomass$SPECIES_CD <- ('EPI MORI')

MK_epi_mori_2004_count <- count(MK_epi_mori_2004, vars = "SPECIES_CD")

MK_epi_mori_2004_biomass_count <- cbind(MK_epi_mori_2004_biomass,MK_epi_mori_2004_count)


MK_epi_mori_2005 <- filter(MK_epi_mori, YEAR_ == '2005')
MK_epi_mori_2005_biomass <- summarise_at(MK_epi_mori_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_2005_biomass$Year <- ('2005')
MK_epi_mori_2005_biomass$subregion <- ('MK')
MK_epi_mori_2005_biomass$SPECIES_CD <- ('EPI MORI')

MK_epi_mori_2005_count <- count(MK_epi_mori_2005, vars = "SPECIES_CD")

MK_epi_mori_2005_biomass_count <- cbind(MK_epi_mori_2005_biomass,MK_epi_mori_2005_count)


MK_epi_mori_2006 <- filter(MK_epi_mori, YEAR_ == '2006')
MK_epi_mori_2006_biomass <- summarise_at(MK_epi_mori_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_2006_biomass$Year <- ('2006')
MK_epi_mori_2006_biomass$subregion <- ('MK')
MK_epi_mori_2006_biomass$SPECIES_CD <- ('EPI MORI')


MK_epi_mori_2006_count <- count(MK_epi_mori_2006, vars = "SPECIES_CD")

MK_epi_mori_2006_biomass_count <- cbind(MK_epi_mori_2006_biomass,MK_epi_mori_2006_count)


MK_epi_mori_2007 <- filter(MK_epi_mori, YEAR_ == '2007')
MK_epi_mori_2007_biomass <- summarise_at(MK_epi_mori_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_2007_biomass$Year <- ('2007')
MK_epi_mori_2007_biomass$subregion <- ('MK')
MK_epi_mori_2007_biomass$SPECIES_CD <- ('EPI MORI')

MK_epi_mori_2007_count <- count(MK_epi_mori_2007, vars = "SPECIES_CD")

MK_epi_mori_2007_biomass_count <- cbind(MK_epi_mori_2007_biomass,MK_epi_mori_2007_count)


MK_epi_mori_2008 <- filter(MK_epi_mori, YEAR_ == '2008')
MK_epi_mori_2008_biomass <- summarise_at(MK_epi_mori_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_2008_biomass$Year <- ('2008')
MK_epi_mori_2008_biomass$subregion <- ('MK')
MK_epi_mori_2008_biomass$SPECIES_CD <- ('EPI MORI')

MK_epi_mori_2008_count <- count(MK_epi_mori_2008, vars = "SPECIES_CD")

MK_epi_mori_2008_biomass_count <- cbind(MK_epi_mori_2008_biomass,MK_epi_mori_2008_count)


MK_epi_mori_2009 <- filter(MK_epi_mori, YEAR_ == '2009')
MK_epi_mori_2009_biomass <- summarise_at(MK_epi_mori_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_2009_biomass$Year <- ('2009')
MK_epi_mori_2009_biomass$subregion <- ('MK')
MK_epi_mori_2009_biomass$SPECIES_CD <- ('EPI MORI')

MK_epi_mori_2009_count <- count(MK_epi_mori_2009, vars = "SPECIES_CD")

MK_epi_mori_2009_biomass_count <- cbind(MK_epi_mori_2009_biomass,MK_epi_mori_2009_count)


MK_epi_mori_2010 <- filter(MK_epi_mori, YEAR_ == '2010')
MK_epi_mori_2010_biomass <- summarise_at(MK_epi_mori_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_2010_biomass$Year <- ('2010')
MK_epi_mori_2010_biomass$subregion <- ('MK')
MK_epi_mori_2010_biomass$SPECIES_CD <- ('EPI MORI')

MK_epi_mori_2010_count <- count(MK_epi_mori_2010, vars = "SPECIES_CD")

MK_epi_mori_2010_biomass_count <- cbind(MK_epi_mori_2010_biomass,MK_epi_mori_2010_count)


MK_epi_mori_2011 <- filter(MK_epi_mori, YEAR_ == '2011')
MK_epi_mori_2011_biomass <- summarise_at(MK_epi_mori_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_2011_biomass$Year <- ('2011')
MK_epi_mori_2011_biomass$subregion <- ('MK')
MK_epi_mori_2011_biomass$SPECIES_CD <- ('EPI MORI')

MK_epi_mori_2011_count <- count(MK_epi_mori_2011, vars = "SPECIES_CD")

MK_epi_mori_2011_biomass_count <- cbind(MK_epi_mori_2011_biomass,MK_epi_mori_2011_count)


MK_epi_mori_2012 <- filter(MK_epi_mori, YEAR_ == '2012')
MK_epi_mori_2012_biomass <- summarise_at(MK_epi_mori_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_2012_biomass$Year <- ('2012')
MK_epi_mori_2012_biomass$subregion <- ('MK')
MK_epi_mori_2012_biomass$SPECIES_CD <- ('EPI MORI')

MK_epi_mori_2012_count <- count(MK_epi_mori_2012, vars = "SPECIES_CD")

MK_epi_mori_2012_biomass_count <- cbind(MK_epi_mori_2012_biomass,MK_epi_mori_2012_count)


MK_epi_mori_2014 <- filter(MK_epi_mori, YEAR_ == '2014')
MK_epi_mori_2014_biomass <- summarise_at(MK_epi_mori_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_2014_biomass$Year <- ('2014')
MK_epi_mori_2014_biomass$subregion <- ('MK')
MK_epi_mori_2014_biomass$SPECIES_CD <- ('EPI MORI')

MK_epi_mori_2014_count <- count(MK_epi_mori_2014, vars = "SPECIES_CD")

MK_epi_mori_2014_biomass_count <- cbind(MK_epi_mori_2014_biomass,MK_epi_mori_2014_count)


MK_epi_mori_2016 <- filter(MK_epi_mori, YEAR_ == '2016')
MK_epi_mori_2016_biomass <- summarise_at(MK_epi_mori_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_2016_biomass$Year <- ('2016')
MK_epi_mori_2016_biomass$subregion <- ('MK')
MK_epi_mori_2016_biomass$SPECIES_CD <- ('EPI MORI')

MK_epi_mori_2016_count <- count(MK_epi_mori_2016, vars = "SPECIES_CD")

MK_epi_mori_2016_biomass_count <- cbind(MK_epi_mori_2016_biomass,MK_epi_mori_2016_count)


MK_epi_mori_2018 <- filter(MK_epi_mori, YEAR_ == '2018')
MK_epi_mori_2018_biomass <- summarise_at(MK_epi_mori_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_mori_2018_biomass$Year <- ('2018')
MK_epi_mori_2018_biomass$subregion <- ('MK')
MK_epi_mori_2018_biomass$SPECIES_CD <- ('EPI MORI')

MK_epi_mori_2018_count <- count(MK_epi_mori_2018, vars = "SPECIES_CD")

MK_epi_mori_2018_biomass_count <- cbind(MK_epi_mori_2018_biomass,MK_epi_mori_2018_count)


MK_epi_mori_all <- rbind(MK_epi_mori_2000_biomass_count,MK_epi_mori_2001_biomass_count,MK_epi_mori_2002_biomass_count,MK_epi_mori_2003_biomass_count,
                         MK_epi_mori_2005_biomass_count,MK_epi_mori_2006_biomass_count,MK_epi_mori_2007_biomass_count,
                         MK_epi_mori_2008_biomass_count,MK_epi_mori_2009_biomass_count,MK_epi_mori_2010_biomass_count,MK_epi_mori_2011_biomass_count,
                         MK_epi_mori_2012_biomass_count,MK_epi_mori_2014_biomass_count,MK_epi_mori_2016_biomass_count,MK_epi_mori_2018_biomass_count)

MK_epi_mori_all$vars <- NULL




MK_epi_stri <- filter(MK_grouper, SPECIES_CD == "EPI STRI")
unique(MK_epi_stri$YEAR_)

# MK_epi_stri_1999 <- filter(MK_epi_stri, YEAR_ == '1999')
# MK_epi_stri_1999_biomass <- summarise_at(MK_epi_stri_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_stri_1999_biomass$Year <- ('1999')
# MK_epi_stri_1999_biomass$subregion <- ('MK')
# MK_epi_stri_1999_biomass$SPECIES_CD <- ('EPI STRI')
# 
# MK_epi_stri_1999_count <- count(MK_epi_stri_1999, vars = "SPECIES_CD")
# 
# MK_epi_stri_1999_biomass_count <- cbind(MK_epi_stri_1999_biomass,MK_epi_stri_1999_count)



# MK_epi_stri_2000 <- filter(MK_epi_stri, YEAR_ == '2000')
# MK_epi_stri_2000_biomass <- summarise_at(MK_epi_stri_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_stri_2000_biomass$Year <- ('2000')
# MK_epi_stri_2000_biomass$subregion <- ('MK')
# MK_epi_stri_2000_biomass$SPECIES_CD <- ('EPI STRI')
# 
# MK_epi_stri_2000_count <- count(MK_epi_stri_2000, vars = "SPECIES_CD")
# 
# MK_epi_stri_2000_biomass_count <- cbind(MK_epi_stri_2000_biomass,MK_epi_stri_2000_count)

MK_epi_stri_2001 <- filter(MK_epi_stri, YEAR_ == '2001')
MK_epi_stri_2001_biomass <- summarise_at(MK_epi_stri_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_stri_2001_biomass$Year <- ('2001')
MK_epi_stri_2001_biomass$subregion <- ('MK')
MK_epi_stri_2001_biomass$SPECIES_CD <- ('EPI STRI')

MK_epi_stri_2001_count <- count(MK_epi_stri_2001, vars = "SPECIES_CD")

MK_epi_stri_2001_biomass_count <- cbind(MK_epi_stri_2001_biomass,MK_epi_stri_2001_count)


MK_epi_stri_2002 <- filter(MK_epi_stri, YEAR_ == '2002')
MK_epi_stri_2002_biomass <- summarise_at(MK_epi_stri_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_stri_2002_biomass$Year <- ('2002')
MK_epi_stri_2002_biomass$subregion <- ('MK')
MK_epi_stri_2002_biomass$SPECIES_CD <- ('EPI STRI')

MK_epi_stri_2002_count <- count(MK_epi_stri_2002, vars = "SPECIES_CD")

MK_epi_stri_2002_biomass_count <- cbind(MK_epi_stri_2002_biomass,MK_epi_stri_2002_count)


MK_epi_stri_2003 <- filter(MK_epi_stri, YEAR_ == '2003')
MK_epi_stri_2003_biomass <- summarise_at(MK_epi_stri_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_stri_2003_biomass$Year <- ('2003')
MK_epi_stri_2003_biomass$subregion <- ('MK')
MK_epi_stri_2003_biomass$SPECIES_CD <- ('EPI STRI')

MK_epi_stri_2003_count <- count(MK_epi_stri_2003, vars = "SPECIES_CD")

MK_epi_stri_2003_biomass_count <- cbind(MK_epi_stri_2003_biomass,MK_epi_stri_2003_count)
# 
# 
# MK_epi_stri_2004 <- filter(MK_epi_stri, YEAR_ == '2004')
# MK_epi_stri_2004_biomass <- summarise_at(MK_epi_stri_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_stri_2004_biomass$Year <- ('2004')
# MK_epi_stri_2004_biomass$subregion <- ('MK')
# MK_epi_stri_2004_biomass$SPECIES_CD <- ('EPI STRI')
# 
# MK_epi_stri_2004_count <- count(MK_epi_stri_2004, vars = "SPECIES_CD")
# 
# MK_epi_stri_2004_biomass_count <- cbind(MK_epi_stri_2004_biomass,MK_epi_stri_2004_count)
# 

MK_epi_stri_2005 <- filter(MK_epi_stri, YEAR_ == '2005')
MK_epi_stri_2005_biomass <- summarise_at(MK_epi_stri_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_stri_2005_biomass$Year <- ('2005')
MK_epi_stri_2005_biomass$subregion <- ('MK')
MK_epi_stri_2005_biomass$SPECIES_CD <- ('EPI STRI')

MK_epi_stri_2005_count <- count(MK_epi_stri_2005, vars = "SPECIES_CD")

MK_epi_stri_2005_biomass_count <- cbind(MK_epi_stri_2005_biomass,MK_epi_stri_2005_count)


# MK_epi_stri_2006 <- filter(MK_epi_stri, YEAR_ == '2006')
# MK_epi_stri_2006_biomass <- summarise_at(MK_epi_stri_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_stri_2006_biomass$Year <- ('2006')
# MK_epi_stri_2006_biomass$subregion <- ('MK')
# MK_epi_stri_2006_biomass$SPECIES_CD <- ('EPI STRI')
# 
# 
# MK_epi_stri_2006_count <- count(MK_epi_stri_2006, vars = "SPECIES_CD")
# 
# MK_epi_stri_2006_biomass_count <- cbind(MK_epi_stri_2006_biomass,MK_epi_stri_2006_count)
# 
# 
# MK_epi_stri_2007 <- filter(MK_epi_stri, YEAR_ == '2007')
# MK_epi_stri_2007_biomass <- summarise_at(MK_epi_stri_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_stri_2007_biomass$Year <- ('2007')
# MK_epi_stri_2007_biomass$subregion <- ('MK')
# MK_epi_stri_2007_biomass$SPECIES_CD <- ('EPI STRI')
# 
# MK_epi_stri_2007_count <- count(MK_epi_stri_2007, vars = "SPECIES_CD")
# 
# MK_epi_stri_2007_biomass_count <- cbind(MK_epi_stri_2007_biomass,MK_epi_stri_2007_count)


# MK_epi_stri_2008 <- filter(MK_epi_stri, YEAR_ == '2008')
# MK_epi_stri_2008_biomass <- summarise_at(MK_epi_stri_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_stri_2008_biomass$Year <- ('2008')
# MK_epi_stri_2008_biomass$subregion <- ('MK')
# MK_epi_stri_2008_biomass$SPECIES_CD <- ('EPI STRI')
# 
# MK_epi_stri_2008_count <- count(MK_epi_stri_2008, vars = "SPECIES_CD")
# 
# MK_epi_stri_2008_biomass_count <- cbind(MK_epi_stri_2008_biomass,MK_epi_stri_2008_count)
# 
# 
# MK_epi_stri_2009 <- filter(MK_epi_stri, YEAR_ == '2009')
# MK_epi_stri_2009_biomass <- summarise_at(MK_epi_stri_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_stri_2009_biomass$Year <- ('2009')
# MK_epi_stri_2009_biomass$subregion <- ('MK')
# MK_epi_stri_2009_biomass$SPECIES_CD <- ('EPI STRI')
# 
# MK_epi_stri_2009_count <- count(MK_epi_stri_2009, vars = "SPECIES_CD")
# 
# MK_epi_stri_2009_biomass_count <- cbind(MK_epi_stri_2009_biomass,MK_epi_stri_2009_count)
# 
# 
# MK_epi_stri_2010 <- filter(MK_epi_stri, YEAR_ == '2010')
# MK_epi_stri_2010_biomass <- summarise_at(MK_epi_stri_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_stri_2010_biomass$Year <- ('2010')
# MK_epi_stri_2010_biomass$subregion <- ('MK')
# MK_epi_stri_2010_biomass$SPECIES_CD <- ('EPI STRI')
# 
# MK_epi_stri_2010_count <- count(MK_epi_stri_2010, vars = "SPECIES_CD")
# 
# MK_epi_stri_2010_biomass_count <- cbind(MK_epi_stri_2010_biomass,MK_epi_stri_2010_count)

# 
# MK_epi_stri_2011 <- filter(MK_epi_stri, YEAR_ == '2011')
# MK_epi_stri_2011_biomass <- summarise_at(MK_epi_stri_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_stri_2011_biomass$Year <- ('2011')
# MK_epi_stri_2011_biomass$subregion <- ('MK')
# MK_epi_stri_2011_biomass$SPECIES_CD <- ('EPI STRI')
# 
# MK_epi_stri_2011_count <- count(MK_epi_stri_2011, vars = "SPECIES_CD")
# 
# MK_epi_stri_2011_biomass_count <- cbind(MK_epi_stri_2011_biomass,MK_epi_stri_2011_count)


# MK_epi_stri_2012 <- filter(MK_epi_stri, YEAR_ == '2012')
# MK_epi_stri_2012_biomass <- summarise_at(MK_epi_stri_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_stri_2012_biomass$Year <- ('2012')
# MK_epi_stri_2012_biomass$subregion <- ('MK')
# MK_epi_stri_2012_biomass$SPECIES_CD <- ('EPI STRI')
# 
# MK_epi_stri_2012_count <- count(MK_epi_stri_2012, vars = "SPECIES_CD")
# 
# MK_epi_stri_2012_biomass_count <- cbind(MK_epi_stri_2012_biomass,MK_epi_stri_2012_count)


MK_epi_stri_2014 <- filter(MK_epi_stri, YEAR_ == '2014')
MK_epi_stri_2014_biomass <- summarise_at(MK_epi_stri_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_epi_stri_2014_biomass$Year <- ('2014')
MK_epi_stri_2014_biomass$subregion <- ('MK')
MK_epi_stri_2014_biomass$SPECIES_CD <- ('EPI STRI')

MK_epi_stri_2014_count <- count(MK_epi_stri_2014, vars = "SPECIES_CD")

MK_epi_stri_2014_biomass_count <- cbind(MK_epi_stri_2014_biomass,MK_epi_stri_2014_count)


# MK_epi_stri_2016 <- filter(MK_epi_stri, YEAR_ == '2016')
# MK_epi_stri_2016_biomass <- summarise_at(MK_epi_stri_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_stri_2016_biomass$Year <- ('2016')
# MK_epi_stri_2016_biomass$subregion <- ('MK')
# MK_epi_stri_2016_biomass$SPECIES_CD <- ('EPI STRI')
# 
# MK_epi_stri_2016_count <- count(MK_epi_stri_2016, vars = "SPECIES_CD")
# 
# MK_epi_stri_2016_biomass_count <- cbind(MK_epi_stri_2016_biomass,MK_epi_stri_2016_count)


# MK_epi_stri_2018 <- filter(MK_epi_stri, YEAR_ == '2018')
# MK_epi_stri_2018_biomass <- summarise_at(MK_epi_stri_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_epi_stri_2018_biomass$Year <- ('2018')
# MK_epi_stri_2018_biomass$subregion <- ('MK')
# MK_epi_stri_2018_biomass$SPECIES_CD <- ('EPI STRI')
# 
# MK_epi_stri_2018_count <- count(MK_epi_stri_2018, vars = "SPECIES_CD")
# 
# MK_epi_stri_2018_biomass_count <- cbind(MK_epi_stri_2018_biomass,MK_epi_stri_2018_count)


MK_epi_stri_all <- rbind(MK_epi_stri_2001_biomass_count,MK_epi_stri_2002_biomass_count,MK_epi_stri_2003_biomass_count,
                         MK_epi_stri_2005_biomass_count,MK_epi_stri_2014_biomass_count)

MK_epi_stri_all$vars <- NULL






MK_myc_bona <- filter(MK_grouper, SPECIES_CD == "MYC BONA")
unique(MK_myc_bona$YEAR_)

MK_myc_bona_1999 <- filter(MK_myc_bona, YEAR_ == '1999')
MK_myc_bona_1999_biomass <- summarise_at(MK_myc_bona_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_1999_biomass$Year <- ('1999')
MK_myc_bona_1999_biomass$subregion <- ('MK')
MK_myc_bona_1999_biomass$SPECIES_CD <- ('MYC BONA')

MK_myc_bona_1999_count <- count(MK_myc_bona_1999, vars = "SPECIES_CD")

MK_myc_bona_1999_biomass_count <- cbind(MK_myc_bona_1999_biomass,MK_myc_bona_1999_count)



MK_myc_bona_2000 <- filter(MK_myc_bona, YEAR_ == '2000')
MK_myc_bona_2000_biomass <- summarise_at(MK_myc_bona_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_2000_biomass$Year <- ('2000')
MK_myc_bona_2000_biomass$subregion <- ('MK')
MK_myc_bona_2000_biomass$SPECIES_CD <- ('MYC BONA')

MK_myc_bona_2000_count <- count(MK_myc_bona_2000, vars = "SPECIES_CD")

MK_myc_bona_2000_biomass_count <- cbind(MK_myc_bona_2000_biomass,MK_myc_bona_2000_count)

MK_myc_bona_2001 <- filter(MK_myc_bona, YEAR_ == '2001')
MK_myc_bona_2001_biomass <- summarise_at(MK_myc_bona_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_2001_biomass$Year <- ('2001')
MK_myc_bona_2001_biomass$subregion <- ('MK')
MK_myc_bona_2001_biomass$SPECIES_CD <- ('MYC BONA')

MK_myc_bona_2001_count <- count(MK_myc_bona_2001, vars = "SPECIES_CD")

MK_myc_bona_2001_biomass_count <- cbind(MK_myc_bona_2001_biomass,MK_myc_bona_2001_count)


MK_myc_bona_2002 <- filter(MK_myc_bona, YEAR_ == '2002')
MK_myc_bona_2002_biomass <- summarise_at(MK_myc_bona_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_2002_biomass$Year <- ('2002')
MK_myc_bona_2002_biomass$subregion <- ('MK')
MK_myc_bona_2002_biomass$SPECIES_CD <- ('MYC BONA')

MK_myc_bona_2002_count <- count(MK_myc_bona_2002, vars = "SPECIES_CD")

MK_myc_bona_2002_biomass_count <- cbind(MK_myc_bona_2002_biomass,MK_myc_bona_2002_count)


MK_myc_bona_2003 <- filter(MK_myc_bona, YEAR_ == '2003')
MK_myc_bona_2003_biomass <- summarise_at(MK_myc_bona_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_2003_biomass$Year <- ('2003')
MK_myc_bona_2003_biomass$subregion <- ('MK')
MK_myc_bona_2003_biomass$SPECIES_CD <- ('MYC BONA')

MK_myc_bona_2003_count <- count(MK_myc_bona_2003, vars = "SPECIES_CD")

MK_myc_bona_2003_biomass_count <- cbind(MK_myc_bona_2003_biomass,MK_myc_bona_2003_count)


MK_myc_bona_2004 <- filter(MK_myc_bona, YEAR_ == '2004')
MK_myc_bona_2004_biomass <- summarise_at(MK_myc_bona_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_2004_biomass$Year <- ('2004')
MK_myc_bona_2004_biomass$subregion <- ('MK')
MK_myc_bona_2004_biomass$SPECIES_CD <- ('MYC BONA')

MK_myc_bona_2004_count <- count(MK_myc_bona_2004, vars = "SPECIES_CD")

MK_myc_bona_2004_biomass_count <- cbind(MK_myc_bona_2004_biomass,MK_myc_bona_2004_count)


MK_myc_bona_2005 <- filter(MK_myc_bona, YEAR_ == '2005')
MK_myc_bona_2005_biomass <- summarise_at(MK_myc_bona_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_2005_biomass$Year <- ('2005')
MK_myc_bona_2005_biomass$subregion <- ('MK')
MK_myc_bona_2005_biomass$SPECIES_CD <- ('MYC BONA')

MK_myc_bona_2005_count <- count(MK_myc_bona_2005, vars = "SPECIES_CD")

MK_myc_bona_2005_biomass_count <- cbind(MK_myc_bona_2005_biomass,MK_myc_bona_2005_count)


MK_myc_bona_2006 <- filter(MK_myc_bona, YEAR_ == '2006')
MK_myc_bona_2006_biomass <- summarise_at(MK_myc_bona_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_2006_biomass$Year <- ('2006')
MK_myc_bona_2006_biomass$subregion <- ('MK')
MK_myc_bona_2006_biomass$SPECIES_CD <- ('MYC BONA')


MK_myc_bona_2006_count <- count(MK_myc_bona_2006, vars = "SPECIES_CD")

MK_myc_bona_2006_biomass_count <- cbind(MK_myc_bona_2006_biomass,MK_myc_bona_2006_count)


MK_myc_bona_2007 <- filter(MK_myc_bona, YEAR_ == '2007')
MK_myc_bona_2007_biomass <- summarise_at(MK_myc_bona_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_2007_biomass$Year <- ('2007')
MK_myc_bona_2007_biomass$subregion <- ('MK')
MK_myc_bona_2007_biomass$SPECIES_CD <- ('MYC BONA')

MK_myc_bona_2007_count <- count(MK_myc_bona_2007, vars = "SPECIES_CD")

MK_myc_bona_2007_biomass_count <- cbind(MK_myc_bona_2007_biomass,MK_myc_bona_2007_count)


MK_myc_bona_2008 <- filter(MK_myc_bona, YEAR_ == '2008')
MK_myc_bona_2008_biomass <- summarise_at(MK_myc_bona_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_2008_biomass$Year <- ('2008')
MK_myc_bona_2008_biomass$subregion <- ('MK')
MK_myc_bona_2008_biomass$SPECIES_CD <- ('MYC BONA')

MK_myc_bona_2008_count <- count(MK_myc_bona_2008, vars = "SPECIES_CD")

MK_myc_bona_2008_biomass_count <- cbind(MK_myc_bona_2008_biomass,MK_myc_bona_2008_count)


MK_myc_bona_2009 <- filter(MK_myc_bona, YEAR_ == '2009')
MK_myc_bona_2009_biomass <- summarise_at(MK_myc_bona_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_2009_biomass$Year <- ('2009')
MK_myc_bona_2009_biomass$subregion <- ('MK')
MK_myc_bona_2009_biomass$SPECIES_CD <- ('MYC BONA')

MK_myc_bona_2009_count <- count(MK_myc_bona_2009, vars = "SPECIES_CD")

MK_myc_bona_2009_biomass_count <- cbind(MK_myc_bona_2009_biomass,MK_myc_bona_2009_count)


MK_myc_bona_2010 <- filter(MK_myc_bona, YEAR_ == '2010')
MK_myc_bona_2010_biomass <- summarise_at(MK_myc_bona_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_2010_biomass$Year <- ('2010')
MK_myc_bona_2010_biomass$subregion <- ('MK')
MK_myc_bona_2010_biomass$SPECIES_CD <- ('MYC BONA')

MK_myc_bona_2010_count <- count(MK_myc_bona_2010, vars = "SPECIES_CD")

MK_myc_bona_2010_biomass_count <- cbind(MK_myc_bona_2010_biomass,MK_myc_bona_2010_count)


MK_myc_bona_2011 <- filter(MK_myc_bona, YEAR_ == '2011')
MK_myc_bona_2011_biomass <- summarise_at(MK_myc_bona_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_2011_biomass$Year <- ('2011')
MK_myc_bona_2011_biomass$subregion <- ('MK')
MK_myc_bona_2011_biomass$SPECIES_CD <- ('MYC BONA')

MK_myc_bona_2011_count <- count(MK_myc_bona_2011, vars = "SPECIES_CD")

MK_myc_bona_2011_biomass_count <- cbind(MK_myc_bona_2011_biomass,MK_myc_bona_2011_count)


MK_myc_bona_2012 <- filter(MK_myc_bona, YEAR_ == '2012')
MK_myc_bona_2012_biomass <- summarise_at(MK_myc_bona_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_2012_biomass$Year <- ('2012')
MK_myc_bona_2012_biomass$subregion <- ('MK')
MK_myc_bona_2012_biomass$SPECIES_CD <- ('MYC BONA')

MK_myc_bona_2012_count <- count(MK_myc_bona_2012, vars = "SPECIES_CD")

MK_myc_bona_2012_biomass_count <- cbind(MK_myc_bona_2012_biomass,MK_myc_bona_2012_count)


MK_myc_bona_2014 <- filter(MK_myc_bona, YEAR_ == '2014')
MK_myc_bona_2014_biomass <- summarise_at(MK_myc_bona_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_2014_biomass$Year <- ('2014')
MK_myc_bona_2014_biomass$subregion <- ('MK')
MK_myc_bona_2014_biomass$SPECIES_CD <- ('MYC BONA')

MK_myc_bona_2014_count <- count(MK_myc_bona_2014, vars = "SPECIES_CD")

MK_myc_bona_2014_biomass_count <- cbind(MK_myc_bona_2014_biomass,MK_myc_bona_2014_count)


MK_myc_bona_2016 <- filter(MK_myc_bona, YEAR_ == '2016')
MK_myc_bona_2016_biomass <- summarise_at(MK_myc_bona_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_2016_biomass$Year <- ('2016')
MK_myc_bona_2016_biomass$subregion <- ('MK')
MK_myc_bona_2016_biomass$SPECIES_CD <- ('MYC BONA')

MK_myc_bona_2016_count <- count(MK_myc_bona_2016, vars = "SPECIES_CD")

MK_myc_bona_2016_biomass_count <- cbind(MK_myc_bona_2016_biomass,MK_myc_bona_2016_count)


MK_myc_bona_2018 <- filter(MK_myc_bona, YEAR_ == '2018')
MK_myc_bona_2018_biomass <- summarise_at(MK_myc_bona_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_bona_2018_biomass$Year <- ('2018')
MK_myc_bona_2018_biomass$subregion <- ('MK')
MK_myc_bona_2018_biomass$SPECIES_CD <- ('MYC BONA')

MK_myc_bona_2018_count <- count(MK_myc_bona_2018, vars = "SPECIES_CD")

MK_myc_bona_2018_biomass_count <- cbind(MK_myc_bona_2018_biomass,MK_myc_bona_2018_count)


MK_myc_bona_all <- rbind(MK_myc_bona_1999_biomass_count,MK_myc_bona_2000_biomass_count,MK_myc_bona_2001_biomass_count,MK_myc_bona_2002_biomass_count,MK_myc_bona_2003_biomass_count,
                         MK_myc_bona_2005_biomass_count,MK_myc_bona_2006_biomass_count,MK_myc_bona_2007_biomass_count,
                         MK_myc_bona_2008_biomass_count,MK_myc_bona_2009_biomass_count,MK_myc_bona_2010_biomass_count,MK_myc_bona_2011_biomass_count,
                         MK_myc_bona_2012_biomass_count,MK_myc_bona_2014_biomass_count,MK_myc_bona_2016_biomass_count,MK_myc_bona_2018_biomass_count)

MK_myc_bona_all$vars <- NULL




MK_myc_inte <- filter(MK_grouper, SPECIES_CD == "MYC INTE")
unique(MK_myc_inte$YEAR_)

# MK_myc_inte_1999 <- filter(MK_myc_inte, YEAR_ == '1999')
# MK_myc_inte_1999_biomass <- summarise_at(MK_myc_inte_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_inte_1999_biomass$Year <- ('1999')
# MK_myc_inte_1999_biomass$subregion <- ('MK')
# MK_myc_inte_1999_biomass$SPECIES_CD <- ('MYC INTE')
# 
# MK_myc_inte_1999_count <- count(MK_myc_inte_1999, vars = "SPECIES_CD")
# 
# MK_myc_inte_1999_biomass_count <- cbind(MK_myc_inte_1999_biomass,MK_myc_inte_1999_count)
# 


# MK_myc_inte_2000 <- filter(MK_myc_inte, YEAR_ == '2000')
# MK_myc_inte_2000_biomass <- summarise_at(MK_myc_inte_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_inte_2000_biomass$Year <- ('2000')
# MK_myc_inte_2000_biomass$subregion <- ('MK')
# MK_myc_inte_2000_biomass$SPECIES_CD <- ('MYC INTE')
# 
# MK_myc_inte_2000_count <- count(MK_myc_inte_2000, vars = "SPECIES_CD")
# 
# MK_myc_inte_2000_biomass_count <- cbind(MK_myc_inte_2000_biomass,MK_myc_inte_2000_count)
# 
# MK_myc_inte_2001 <- filter(MK_myc_inte, YEAR_ == '2001')
# MK_myc_inte_2001_biomass <- summarise_at(MK_myc_inte_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_inte_2001_biomass$Year <- ('2001')
# MK_myc_inte_2001_biomass$subregion <- ('MK')
# MK_myc_inte_2001_biomass$SPECIES_CD <- ('MYC INTE')
# 
# MK_myc_inte_2001_count <- count(MK_myc_inte_2001, vars = "SPECIES_CD")
# 
# MK_myc_inte_2001_biomass_count <- cbind(MK_myc_inte_2001_biomass,MK_myc_inte_2001_count)
# 
# 
# MK_myc_inte_2002 <- filter(MK_myc_inte, YEAR_ == '2002')
# MK_myc_inte_2002_biomass <- summarise_at(MK_myc_inte_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_inte_2002_biomass$Year <- ('2002')
# MK_myc_inte_2002_biomass$subregion <- ('MK')
# MK_myc_inte_2002_biomass$SPECIES_CD <- ('MYC INTE')
# 
# MK_myc_inte_2002_count <- count(MK_myc_inte_2002, vars = "SPECIES_CD")
# 
# MK_myc_inte_2002_biomass_count <- cbind(MK_myc_inte_2002_biomass,MK_myc_inte_2002_count)


# MK_myc_inte_2003 <- filter(MK_myc_inte, YEAR_ == '2003')
# MK_myc_inte_2003_biomass <- summarise_at(MK_myc_inte_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_inte_2003_biomass$Year <- ('2003')
# MK_myc_inte_2003_biomass$subregion <- ('MK')
# MK_myc_inte_2003_biomass$SPECIES_CD <- ('MYC INTE')
# 
# MK_myc_inte_2003_count <- count(MK_myc_inte_2003, vars = "SPECIES_CD")
# 
# MK_myc_inte_2003_biomass_count <- cbind(MK_myc_inte_2003_biomass,MK_myc_inte_2003_count)
# 
# 
# MK_myc_inte_2004 <- filter(MK_myc_inte, YEAR_ == '2004')
# MK_myc_inte_2004_biomass <- summarise_at(MK_myc_inte_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_inte_2004_biomass$Year <- ('2004')
# MK_myc_inte_2004_biomass$subregion <- ('MK')
# MK_myc_inte_2004_biomass$SPECIES_CD <- ('MYC INTE')
# 
# MK_myc_inte_2004_count <- count(MK_myc_inte_2004, vars = "SPECIES_CD")
# 
# MK_myc_inte_2004_biomass_count <- cbind(MK_myc_inte_2004_biomass,MK_myc_inte_2004_count)


# MK_myc_inte_2005 <- filter(MK_myc_inte, YEAR_ == '2005')
# MK_myc_inte_2005_biomass <- summarise_at(MK_myc_inte_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_inte_2005_biomass$Year <- ('2005')
# MK_myc_inte_2005_biomass$subregion <- ('MK')
# MK_myc_inte_2005_biomass$SPECIES_CD <- ('MYC INTE')
# 
# MK_myc_inte_2005_count <- count(MK_myc_inte_2005, vars = "SPECIES_CD")
# 
# MK_myc_inte_2005_biomass_count <- cbind(MK_myc_inte_2005_biomass,MK_myc_inte_2005_count)


# MK_myc_inte_2006 <- filter(MK_myc_inte, YEAR_ == '2006')
# MK_myc_inte_2006_biomass <- summarise_at(MK_myc_inte_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_inte_2006_biomass$Year <- ('2006')
# MK_myc_inte_2006_biomass$subregion <- ('MK')
# MK_myc_inte_2006_biomass$SPECIES_CD <- ('MYC INTE')
# 
# 
# MK_myc_inte_2006_count <- count(MK_myc_inte_2006, vars = "SPECIES_CD")
# 
# MK_myc_inte_2006_biomass_count <- cbind(MK_myc_inte_2006_biomass,MK_myc_inte_2006_count)
# 
# 
# MK_myc_inte_2007 <- filter(MK_myc_inte, YEAR_ == '2007')
# MK_myc_inte_2007_biomass <- summarise_at(MK_myc_inte_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_inte_2007_biomass$Year <- ('2007')
# MK_myc_inte_2007_biomass$subregion <- ('MK')
# MK_myc_inte_2007_biomass$SPECIES_CD <- ('MYC INTE')
# 
# MK_myc_inte_2007_count <- count(MK_myc_inte_2007, vars = "SPECIES_CD")
# 
# MK_myc_inte_2007_biomass_count <- cbind(MK_myc_inte_2007_biomass,MK_myc_inte_2007_count)
# 
# 
MK_myc_inte_2008 <- filter(MK_myc_inte, YEAR_ == '2008')
MK_myc_inte_2008_biomass <- summarise_at(MK_myc_inte_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_inte_2008_biomass$Year <- ('2008')
MK_myc_inte_2008_biomass$subregion <- ('MK')
MK_myc_inte_2008_biomass$SPECIES_CD <- ('MYC INTE')

MK_myc_inte_2008_count <- count(MK_myc_inte_2008, vars = "SPECIES_CD")

MK_myc_inte_2008_biomass_count <- cbind(MK_myc_inte_2008_biomass,MK_myc_inte_2008_count)


# MK_myc_inte_2009 <- filter(MK_myc_inte, YEAR_ == '2009')
# MK_myc_inte_2009_biomass <- summarise_at(MK_myc_inte_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_inte_2009_biomass$Year <- ('2009')
# MK_myc_inte_2009_biomass$subregion <- ('MK')
# MK_myc_inte_2009_biomass$SPECIES_CD <- ('MYC INTE')
# 
# MK_myc_inte_2009_count <- count(MK_myc_inte_2009, vars = "SPECIES_CD")
# 
# MK_myc_inte_2009_biomass_count <- cbind(MK_myc_inte_2009_biomass,MK_myc_inte_2009_count)


# MK_myc_inte_2010 <- filter(MK_myc_inte, YEAR_ == '2010')
# MK_myc_inte_2010_biomass <- summarise_at(MK_myc_inte_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_inte_2010_biomass$Year <- ('2010')
# MK_myc_inte_2010_biomass$subregion <- ('MK')
# MK_myc_inte_2010_biomass$SPECIES_CD <- ('MYC INTE')
# 
# MK_myc_inte_2010_count <- count(MK_myc_inte_2010, vars = "SPECIES_CD")
# 
# MK_myc_inte_2010_biomass_count <- cbind(MK_myc_inte_2010_biomass,MK_myc_inte_2010_count)
# 
# 
# MK_myc_inte_2011 <- filter(MK_myc_inte, YEAR_ == '2011')
# MK_myc_inte_2011_biomass <- summarise_at(MK_myc_inte_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_inte_2011_biomass$Year <- ('2011')
# MK_myc_inte_2011_biomass$subregion <- ('MK')
# MK_myc_inte_2011_biomass$SPECIES_CD <- ('MYC INTE')
# 
# MK_myc_inte_2011_count <- count(MK_myc_inte_2011, vars = "SPECIES_CD")
# 
# MK_myc_inte_2011_biomass_count <- cbind(MK_myc_inte_2011_biomass,MK_myc_inte_2011_count)
# 
# 
# MK_myc_inte_2012 <- filter(MK_myc_inte, YEAR_ == '2012')
# MK_myc_inte_2012_biomass <- summarise_at(MK_myc_inte_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_inte_2012_biomass$Year <- ('2012')
# MK_myc_inte_2012_biomass$subregion <- ('MK')
# MK_myc_inte_2012_biomass$SPECIES_CD <- ('MYC INTE')
# 
# MK_myc_inte_2012_count <- count(MK_myc_inte_2012, vars = "SPECIES_CD")
# 
# MK_myc_inte_2012_biomass_count <- cbind(MK_myc_inte_2012_biomass,MK_myc_inte_2012_count)
# 
# 
# MK_myc_inte_2014 <- filter(MK_myc_inte, YEAR_ == '2014')
# MK_myc_inte_2014_biomass <- summarise_at(MK_myc_inte_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_inte_2014_biomass$Year <- ('2014')
# MK_myc_inte_2014_biomass$subregion <- ('MK')
# MK_myc_inte_2014_biomass$SPECIES_CD <- ('MYC INTE')
# 
# MK_myc_inte_2014_count <- count(MK_myc_inte_2014, vars = "SPECIES_CD")
# 
# MK_myc_inte_2014_biomass_count <- cbind(MK_myc_inte_2014_biomass,MK_myc_inte_2014_count)
# 
# 
# MK_myc_inte_2016 <- filter(MK_myc_inte, YEAR_ == '2016')
# MK_myc_inte_2016_biomass <- summarise_at(MK_myc_inte_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_inte_2016_biomass$Year <- ('2016')
# MK_myc_inte_2016_biomass$subregion <- ('MK')
# MK_myc_inte_2016_biomass$SPECIES_CD <- ('MYC INTE')
# 
# MK_myc_inte_2016_count <- count(MK_myc_inte_2016, vars = "SPECIES_CD")
# 
# MK_myc_inte_2016_biomass_count <- cbind(MK_myc_inte_2016_biomass,MK_myc_inte_2016_count)
# 
# 
# MK_myc_inte_2018 <- filter(MK_myc_inte, YEAR_ == '2018')
# MK_myc_inte_2018_biomass <- summarise_at(MK_myc_inte_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_inte_2018_biomass$Year <- ('2018')
# MK_myc_inte_2018_biomass$subregion <- ('MK')
# MK_myc_inte_2018_biomass$SPECIES_CD <- ('MYC INTE')
# 
# MK_myc_inte_2018_count <- count(MK_myc_inte_2018, vars = "SPECIES_CD")
# 
# MK_myc_inte_2018_biomass_count <- cbind(MK_myc_inte_2018_biomass,MK_myc_inte_2018_count)


MK_myc_inte_all <- MK_myc_inte_2008_biomass_count


MK_myc_inte_all$vars <- NULL




MK_myc_micr <- filter(MK_grouper, SPECIES_CD == "MYC MICR")
unique(MK_myc_micr$YEAR_)

# MK_myc_micr_1999 <- filter(MK_myc_micr, YEAR_ == '1999')
# MK_myc_micr_1999_biomass <- summarise_at(MK_myc_micr_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_micr_1999_biomass$Year <- ('1999')
# MK_myc_micr_1999_biomass$subregion <- ('MK')
# MK_myc_micr_1999_biomass$SPECIES_CD <- ('MYC MICR')
# 
# MK_myc_micr_1999_count <- count(MK_myc_micr_1999, vars = "SPECIES_CD")
# 
# MK_myc_micr_1999_biomass_count <- cbind(MK_myc_micr_1999_biomass,MK_myc_micr_1999_count)



# MK_myc_micr_2000 <- filter(MK_myc_micr, YEAR_ == '2000')
# MK_myc_micr_2000_biomass <- summarise_at(MK_myc_micr_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_micr_2000_biomass$Year <- ('2000')
# MK_myc_micr_2000_biomass$subregion <- ('MK')
# MK_myc_micr_2000_biomass$SPECIES_CD <- ('MYC MICR')
# 
# MK_myc_micr_2000_count <- count(MK_myc_micr_2000, vars = "SPECIES_CD")
# 
# MK_myc_micr_2000_biomass_count <- cbind(MK_myc_micr_2000_biomass,MK_myc_micr_2000_count)

MK_myc_micr_2001 <- filter(MK_myc_micr, YEAR_ == '2001')
MK_myc_micr_2001_biomass <- summarise_at(MK_myc_micr_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_micr_2001_biomass$Year <- ('2001')
MK_myc_micr_2001_biomass$subregion <- ('MK')
MK_myc_micr_2001_biomass$SPECIES_CD <- ('MYC MICR')

MK_myc_micr_2001_count <- count(MK_myc_micr_2001, vars = "SPECIES_CD")

MK_myc_micr_2001_biomass_count <- cbind(MK_myc_micr_2001_biomass,MK_myc_micr_2001_count)


MK_myc_micr_2002 <- filter(MK_myc_micr, YEAR_ == '2002')
MK_myc_micr_2002_biomass <- summarise_at(MK_myc_micr_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_micr_2002_biomass$Year <- ('2002')
MK_myc_micr_2002_biomass$subregion <- ('MK')
MK_myc_micr_2002_biomass$SPECIES_CD <- ('MYC MICR')

MK_myc_micr_2002_count <- count(MK_myc_micr_2002, vars = "SPECIES_CD")

MK_myc_micr_2002_biomass_count <- cbind(MK_myc_micr_2002_biomass,MK_myc_micr_2002_count)


# MK_myc_micr_2003 <- filter(MK_myc_micr, YEAR_ == '2003')
# MK_myc_micr_2003_biomass <- summarise_at(MK_myc_micr_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_micr_2003_biomass$Year <- ('2003')
# MK_myc_micr_2003_biomass$subregion <- ('MK')
# MK_myc_micr_2003_biomass$SPECIES_CD <- ('MYC MICR')
# 
# MK_myc_micr_2003_count <- count(MK_myc_micr_2003, vars = "SPECIES_CD")
# 
# MK_myc_micr_2003_biomass_count <- cbind(MK_myc_micr_2003_biomass,MK_myc_micr_2003_count)


# MK_myc_micr_2004 <- filter(MK_myc_micr, YEAR_ == '2004')
# MK_myc_micr_2004_biomass <- summarise_at(MK_myc_micr_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_micr_2004_biomass$Year <- ('2004')
# MK_myc_micr_2004_biomass$subregion <- ('MK')
# MK_myc_micr_2004_biomass$SPECIES_CD <- ('MYC MICR')
# 
# MK_myc_micr_2004_count <- count(MK_myc_micr_2004, vars = "SPECIES_CD")
# 
# MK_myc_micr_2004_biomass_count <- cbind(MK_myc_micr_2004_biomass,MK_myc_micr_2004_count)


# MK_myc_micr_2005 <- filter(MK_myc_micr, YEAR_ == '2005')
# MK_myc_micr_2005_biomass <- summarise_at(MK_myc_micr_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_micr_2005_biomass$Year <- ('2005')
# MK_myc_micr_2005_biomass$subregion <- ('MK')
# MK_myc_micr_2005_biomass$SPECIES_CD <- ('MYC MICR')
# 
# MK_myc_micr_2005_count <- count(MK_myc_micr_2005, vars = "SPECIES_CD")
# 
# MK_myc_micr_2005_biomass_count <- cbind(MK_myc_micr_2005_biomass,MK_myc_micr_2005_count)
# 
# 
# MK_myc_micr_2006 <- filter(MK_myc_micr, YEAR_ == '2006')
# MK_myc_micr_2006_biomass <- summarise_at(MK_myc_micr_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_micr_2006_biomass$Year <- ('2006')
# MK_myc_micr_2006_biomass$subregion <- ('MK')
# MK_myc_micr_2006_biomass$SPECIES_CD <- ('MYC MICR')
# 
# 
# MK_myc_micr_2006_count <- count(MK_myc_micr_2006, vars = "SPECIES_CD")
# 
# MK_myc_micr_2006_biomass_count <- cbind(MK_myc_micr_2006_biomass,MK_myc_micr_2006_count)
# 
# 
# MK_myc_micr_2007 <- filter(MK_myc_micr, YEAR_ == '2007')
# MK_myc_micr_2007_biomass <- summarise_at(MK_myc_micr_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_micr_2007_biomass$Year <- ('2007')
# MK_myc_micr_2007_biomass$subregion <- ('MK')
# MK_myc_micr_2007_biomass$SPECIES_CD <- ('MYC MICR')
# 
# MK_myc_micr_2007_count <- count(MK_myc_micr_2007, vars = "SPECIES_CD")
# 
# MK_myc_micr_2007_biomass_count <- cbind(MK_myc_micr_2007_biomass,MK_myc_micr_2007_count)
# 
# 
# MK_myc_micr_2008 <- filter(MK_myc_micr, YEAR_ == '2008')
# MK_myc_micr_2008_biomass <- summarise_at(MK_myc_micr_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_micr_2008_biomass$Year <- ('2008')
# MK_myc_micr_2008_biomass$subregion <- ('MK')
# MK_myc_micr_2008_biomass$SPECIES_CD <- ('MYC MICR')
# 
# MK_myc_micr_2008_count <- count(MK_myc_micr_2008, vars = "SPECIES_CD")
# 
# MK_myc_micr_2008_biomass_count <- cbind(MK_myc_micr_2008_biomass,MK_myc_micr_2008_count)
# 
# 
# MK_myc_micr_2009 <- filter(MK_myc_micr, YEAR_ == '2009')
# MK_myc_micr_2009_biomass <- summarise_at(MK_myc_micr_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_micr_2009_biomass$Year <- ('2009')
# MK_myc_micr_2009_biomass$subregion <- ('MK')
# MK_myc_micr_2009_biomass$SPECIES_CD <- ('MYC MICR')
# 
# MK_myc_micr_2009_count <- count(MK_myc_micr_2009, vars = "SPECIES_CD")
# 
# MK_myc_micr_2009_biomass_count <- cbind(MK_myc_micr_2009_biomass,MK_myc_micr_2009_count)
# 
# 
# MK_myc_micr_2010 <- filter(MK_myc_micr, YEAR_ == '2010')
# MK_myc_micr_2010_biomass <- summarise_at(MK_myc_micr_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_micr_2010_biomass$Year <- ('2010')
# MK_myc_micr_2010_biomass$subregion <- ('MK')
# MK_myc_micr_2010_biomass$SPECIES_CD <- ('MYC MICR')
# 
# MK_myc_micr_2010_count <- count(MK_myc_micr_2010, vars = "SPECIES_CD")
# 
# MK_myc_micr_2010_biomass_count <- cbind(MK_myc_micr_2010_biomass,MK_myc_micr_2010_count)


# MK_myc_micr_2011 <- filter(MK_myc_micr, YEAR_ == '2011')
# MK_myc_micr_2011_biomass <- summarise_at(MK_myc_micr_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_micr_2011_biomass$Year <- ('2011')
# MK_myc_micr_2011_biomass$subregion <- ('MK')
# MK_myc_micr_2011_biomass$SPECIES_CD <- ('MYC MICR')
# 
# MK_myc_micr_2011_count <- count(MK_myc_micr_2011, vars = "SPECIES_CD")
# 
# MK_myc_micr_2011_biomass_count <- cbind(MK_myc_micr_2011_biomass,MK_myc_micr_2011_count)


MK_myc_micr_2012 <- filter(MK_myc_micr, YEAR_ == '2012')
MK_myc_micr_2012_biomass <- summarise_at(MK_myc_micr_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_micr_2012_biomass$Year <- ('2012')
MK_myc_micr_2012_biomass$subregion <- ('MK')
MK_myc_micr_2012_biomass$SPECIES_CD <- ('MYC MICR')

MK_myc_micr_2012_count <- count(MK_myc_micr_2012, vars = "SPECIES_CD")

MK_myc_micr_2012_biomass_count <- cbind(MK_myc_micr_2012_biomass,MK_myc_micr_2012_count)


# MK_myc_micr_2014 <- filter(MK_myc_micr, YEAR_ == '2014')
# MK_myc_micr_2014_biomass <- summarise_at(MK_myc_micr_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_micr_2014_biomass$Year <- ('2014')
# MK_myc_micr_2014_biomass$subregion <- ('MK')
# MK_myc_micr_2014_biomass$SPECIES_CD <- ('MYC MICR')
# 
# MK_myc_micr_2014_count <- count(MK_myc_micr_2014, vars = "SPECIES_CD")
# 
# MK_myc_micr_2014_biomass_count <- cbind(MK_myc_micr_2014_biomass,MK_myc_micr_2014_count)


# MK_myc_micr_2016 <- filter(MK_myc_micr, YEAR_ == '2016')
# MK_myc_micr_2016_biomass <- summarise_at(MK_myc_micr_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_micr_2016_biomass$Year <- ('2016')
# MK_myc_micr_2016_biomass$subregion <- ('MK')
# MK_myc_micr_2016_biomass$SPECIES_CD <- ('MYC MICR')
# 
# MK_myc_micr_2016_count <- count(MK_myc_micr_2016, vars = "SPECIES_CD")
# 
# MK_myc_micr_2016_biomass_count <- cbind(MK_myc_micr_2016_biomass,MK_myc_micr_2016_count)
# 
# 
# MK_myc_micr_2018 <- filter(MK_myc_micr, YEAR_ == '2018')
# MK_myc_micr_2018_biomass <- summarise_at(MK_myc_micr_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_micr_2018_biomass$Year <- ('2018')
# MK_myc_micr_2018_biomass$subregion <- ('MK')
# MK_myc_micr_2018_biomass$SPECIES_CD <- ('MYC MICR')
# 
# MK_myc_micr_2018_count <- count(MK_myc_micr_2018, vars = "SPECIES_CD")
# 
# MK_myc_micr_2018_biomass_count <- cbind(MK_myc_micr_2018_biomass,MK_myc_micr_2018_count)



MK_myc_micr_all <- rbind(MK_myc_micr_2001_biomass_count,MK_myc_micr_2002_biomass_count,MK_myc_micr_2012_biomass_count)

MK_myc_micr_all$vars <- NULL




MK_myc_phen <- filter(MK_grouper, SPECIES_CD == "MYC PHEN")
unique(MK_myc_phen$YEAR_)

# MK_myc_phen_1999 <- filter(MK_myc_phen, YEAR_ == '1999')
# MK_myc_phen_1999_biomass <- summarise_at(MK_myc_phen_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_phen_1999_biomass$Year <- ('1999')
# MK_myc_phen_1999_biomass$subregion <- ('MK')
# MK_myc_phen_1999_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# MK_myc_phen_1999_count <- count(MK_myc_phen_1999, vars = "SPECIES_CD")
# 
# MK_myc_phen_1999_biomass_count <- cbind(MK_myc_phen_1999_biomass,MK_myc_phen_1999_count)



MK_myc_phen_2000 <- filter(MK_myc_phen, YEAR_ == '2000')
MK_myc_phen_2000_biomass <- summarise_at(MK_myc_phen_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_phen_2000_biomass$Year <- ('2000')
MK_myc_phen_2000_biomass$subregion <- ('MK')
MK_myc_phen_2000_biomass$SPECIES_CD <- ('MYC PHEN')

MK_myc_phen_2000_count <- count(MK_myc_phen_2000, vars = "SPECIES_CD")

MK_myc_phen_2000_biomass_count <- cbind(MK_myc_phen_2000_biomass,MK_myc_phen_2000_count)

# MK_myc_phen_2001 <- filter(MK_myc_phen, YEAR_ == '2001')
# MK_myc_phen_2001_biomass <- summarise_at(MK_myc_phen_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_phen_2001_biomass$Year <- ('2001')
# MK_myc_phen_2001_biomass$subregion <- ('MK')
# MK_myc_phen_2001_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# MK_myc_phen_2001_count <- count(MK_myc_phen_2001, vars = "SPECIES_CD")
# 
# MK_myc_phen_2001_biomass_count <- cbind(MK_myc_phen_2001_biomass,MK_myc_phen_2001_count)


MK_myc_phen_2002 <- filter(MK_myc_phen, YEAR_ == '2002')
MK_myc_phen_2002_biomass <- summarise_at(MK_myc_phen_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_phen_2002_biomass$Year <- ('2002')
MK_myc_phen_2002_biomass$subregion <- ('MK')
MK_myc_phen_2002_biomass$SPECIES_CD <- ('MYC PHEN')

MK_myc_phen_2002_count <- count(MK_myc_phen_2002, vars = "SPECIES_CD")

MK_myc_phen_2002_biomass_count <- cbind(MK_myc_phen_2002_biomass,MK_myc_phen_2002_count)


# MK_myc_phen_2003 <- filter(MK_myc_phen, YEAR_ == '2003')
# MK_myc_phen_2003_biomass <- summarise_at(MK_myc_phen_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_phen_2003_biomass$Year <- ('2003')
# MK_myc_phen_2003_biomass$subregion <- ('MK')
# MK_myc_phen_2003_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# MK_myc_phen_2003_count <- count(MK_myc_phen_2003, vars = "SPECIES_CD")
# 
# MK_myc_phen_2003_biomass_count <- cbind(MK_myc_phen_2003_biomass,MK_myc_phen_2003_count)


# MK_myc_phen_2004 <- filter(MK_myc_phen, YEAR_ == '2004')
# MK_myc_phen_2004_biomass <- summarise_at(MK_myc_phen_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_phen_2004_biomass$Year <- ('2004')
# MK_myc_phen_2004_biomass$subregion <- ('MK')
# MK_myc_phen_2004_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# MK_myc_phen_2004_count <- count(MK_myc_phen_2004, vars = "SPECIES_CD")
# 
# MK_myc_phen_2004_biomass_count <- cbind(MK_myc_phen_2004_biomass,MK_myc_phen_2004_count)


MK_myc_phen_2005 <- filter(MK_myc_phen, YEAR_ == '2005')
MK_myc_phen_2005_biomass <- summarise_at(MK_myc_phen_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_phen_2005_biomass$Year <- ('2005')
MK_myc_phen_2005_biomass$subregion <- ('MK')
MK_myc_phen_2005_biomass$SPECIES_CD <- ('MYC PHEN')

MK_myc_phen_2005_count <- count(MK_myc_phen_2005, vars = "SPECIES_CD")

MK_myc_phen_2005_biomass_count <- cbind(MK_myc_phen_2005_biomass,MK_myc_phen_2005_count)


MK_myc_phen_2006 <- filter(MK_myc_phen, YEAR_ == '2006')
MK_myc_phen_2006_biomass <- summarise_at(MK_myc_phen_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_phen_2006_biomass$Year <- ('2006')
MK_myc_phen_2006_biomass$subregion <- ('MK')
MK_myc_phen_2006_biomass$SPECIES_CD <- ('MYC PHEN')


MK_myc_phen_2006_count <- count(MK_myc_phen_2006, vars = "SPECIES_CD")

MK_myc_phen_2006_biomass_count <- cbind(MK_myc_phen_2006_biomass,MK_myc_phen_2006_count)


# MK_myc_phen_2007 <- filter(MK_myc_phen, YEAR_ == '2007')
# MK_myc_phen_2007_biomass <- summarise_at(MK_myc_phen_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_phen_2007_biomass$Year <- ('2007')
# MK_myc_phen_2007_biomass$subregion <- ('MK')
# MK_myc_phen_2007_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# MK_myc_phen_2007_count <- count(MK_myc_phen_2007, vars = "SPECIES_CD")
# 
# MK_myc_phen_2007_biomass_count <- cbind(MK_myc_phen_2007_biomass,MK_myc_phen_2007_count)


MK_myc_phen_2008 <- filter(MK_myc_phen, YEAR_ == '2008')
MK_myc_phen_2008_biomass <- summarise_at(MK_myc_phen_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_phen_2008_biomass$Year <- ('2008')
MK_myc_phen_2008_biomass$subregion <- ('MK')
MK_myc_phen_2008_biomass$SPECIES_CD <- ('MYC PHEN')

MK_myc_phen_2008_count <- count(MK_myc_phen_2008, vars = "SPECIES_CD")

MK_myc_phen_2008_biomass_count <- cbind(MK_myc_phen_2008_biomass,MK_myc_phen_2008_count)


# MK_myc_phen_2009 <- filter(MK_myc_phen, YEAR_ == '2009')
# MK_myc_phen_2009_biomass <- summarise_at(MK_myc_phen_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_phen_2009_biomass$Year <- ('2009')
# MK_myc_phen_2009_biomass$subregion <- ('MK')
# MK_myc_phen_2009_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# MK_myc_phen_2009_count <- count(MK_myc_phen_2009, vars = "SPECIES_CD")
# 
# MK_myc_phen_2009_biomass_count <- cbind(MK_myc_phen_2009_biomass,MK_myc_phen_2009_count)
# 
# 
# MK_myc_phen_2010 <- filter(MK_myc_phen, YEAR_ == '2010')
# MK_myc_phen_2010_biomass <- summarise_at(MK_myc_phen_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_phen_2010_biomass$Year <- ('2010')
# MK_myc_phen_2010_biomass$subregion <- ('MK')
# MK_myc_phen_2010_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# MK_myc_phen_2010_count <- count(MK_myc_phen_2010, vars = "SPECIES_CD")
# 
# MK_myc_phen_2010_biomass_count <- cbind(MK_myc_phen_2010_biomass,MK_myc_phen_2010_count)


MK_myc_phen_2011 <- filter(MK_myc_phen, YEAR_ == '2011')
MK_myc_phen_2011_biomass <- summarise_at(MK_myc_phen_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_phen_2011_biomass$Year <- ('2011')
MK_myc_phen_2011_biomass$subregion <- ('MK')
MK_myc_phen_2011_biomass$SPECIES_CD <- ('MYC PHEN')

MK_myc_phen_2011_count <- count(MK_myc_phen_2011, vars = "SPECIES_CD")

MK_myc_phen_2011_biomass_count <- cbind(MK_myc_phen_2011_biomass,MK_myc_phen_2011_count)


MK_myc_phen_2012 <- filter(MK_myc_phen, YEAR_ == '2012')
MK_myc_phen_2012_biomass <- summarise_at(MK_myc_phen_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_phen_2012_biomass$Year <- ('2012')
MK_myc_phen_2012_biomass$subregion <- ('MK')
MK_myc_phen_2012_biomass$SPECIES_CD <- ('MYC PHEN')

MK_myc_phen_2012_count <- count(MK_myc_phen_2012, vars = "SPECIES_CD")

MK_myc_phen_2012_biomass_count <- cbind(MK_myc_phen_2012_biomass,MK_myc_phen_2012_count)
# 
# 
# MK_myc_phen_2014 <- filter(MK_myc_phen, YEAR_ == '2014')
# MK_myc_phen_2014_biomass <- summarise_at(MK_myc_phen_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_phen_2014_biomass$Year <- ('2014')
# MK_myc_phen_2014_biomass$subregion <- ('MK')
# MK_myc_phen_2014_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# MK_myc_phen_2014_count <- count(MK_myc_phen_2014, vars = "SPECIES_CD")
# 
# MK_myc_phen_2014_biomass_count <- cbind(MK_myc_phen_2014_biomass,MK_myc_phen_2014_count)
# 
# 
# MK_myc_phen_2016 <- filter(MK_myc_phen, YEAR_ == '2016')
# MK_myc_phen_2016_biomass <- summarise_at(MK_myc_phen_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_phen_2016_biomass$Year <- ('2016')
# MK_myc_phen_2016_biomass$subregion <- ('MK')
# MK_myc_phen_2016_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# MK_myc_phen_2016_count <- count(MK_myc_phen_2016, vars = "SPECIES_CD")
# 
# MK_myc_phen_2016_biomass_count <- cbind(MK_myc_phen_2016_biomass,MK_myc_phen_2016_count)
# 
# 
# MK_myc_phen_2018 <- filter(MK_myc_phen, YEAR_ == '2018')
# MK_myc_phen_2018_biomass <- summarise_at(MK_myc_phen_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_phen_2018_biomass$Year <- ('2018')
# MK_myc_phen_2018_biomass$subregion <- ('MK')
# MK_myc_phen_2018_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# MK_myc_phen_2018_count <- count(MK_myc_phen_2018, vars = "SPECIES_CD")
# 
# MK_myc_phen_2018_biomass_count <- cbind(MK_myc_phen_2018_biomass,MK_myc_phen_2018_count)


MK_myc_phen_all <- rbind(MK_myc_phen_2000_biomass_count,MK_myc_phen_2002_biomass_count,MK_myc_phen_2005_biomass_count,
                         MK_myc_phen_2006_biomass_count,MK_myc_phen_2008_biomass_count,MK_myc_phen_2011_biomass_count,MK_myc_phen_2012_biomass_count)

MK_myc_phen_all$vars <- NULL



MK_myc_tigr <- filter(MK_grouper, SPECIES_CD == "MYC TIGR")
unique(MK_myc_tigr$YEAR_)

# MK_myc_tigr_1999 <- filter(MK_myc_tigr, YEAR_ == '1999')
# MK_myc_tigr_1999_biomass <- summarise_at(MK_myc_tigr_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_tigr_1999_biomass$Year <- ('1999')
# MK_myc_tigr_1999_biomass$subregion <- ('MK')
# MK_myc_tigr_1999_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# MK_myc_tigr_1999_count <- count(MK_myc_tigr_1999, vars = "SPECIES_CD")
# 
# MK_myc_tigr_1999_biomass_count <- cbind(MK_myc_tigr_1999_biomass,MK_myc_tigr_1999_count)





MK_myc_tigr_2000 <- filter(MK_myc_tigr, YEAR_ == '2000')
MK_myc_tigr_2000_biomass <- summarise_at(MK_myc_tigr_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_tigr_2000_biomass$Year <- ('2000')
MK_myc_tigr_2000_biomass$subregion <- ('MK')
MK_myc_tigr_2000_biomass$SPECIES_CD <- ('MYC TIGR')

MK_myc_tigr_2000_count <- count(MK_myc_tigr_2000, vars = "SPECIES_CD")

MK_myc_tigr_2000_biomass_count <- cbind(MK_myc_tigr_2000_biomass,MK_myc_tigr_2000_count)

MK_myc_tigr_2001 <- filter(MK_myc_tigr, YEAR_ == '2001')
MK_myc_tigr_2001_biomass <- summarise_at(MK_myc_tigr_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_tigr_2001_biomass$Year <- ('2001')
MK_myc_tigr_2001_biomass$subregion <- ('MK')
MK_myc_tigr_2001_biomass$SPECIES_CD <- ('MYC TIGR')

MK_myc_tigr_2001_count <- count(MK_myc_tigr_2001, vars = "SPECIES_CD")

MK_myc_tigr_2001_biomass_count <- cbind(MK_myc_tigr_2001_biomass,MK_myc_tigr_2001_count)


MK_myc_tigr_2002 <- filter(MK_myc_tigr, YEAR_ == '2002')
MK_myc_tigr_2002_biomass <- summarise_at(MK_myc_tigr_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_tigr_2002_biomass$Year <- ('2002')
MK_myc_tigr_2002_biomass$subregion <- ('MK')
MK_myc_tigr_2002_biomass$SPECIES_CD <- ('MYC TIGR')

MK_myc_tigr_2002_count <- count(MK_myc_tigr_2002, vars = "SPECIES_CD")

MK_myc_tigr_2002_biomass_count <- cbind(MK_myc_tigr_2002_biomass,MK_myc_tigr_2002_count)


# MK_myc_tigr_2003 <- filter(MK_myc_tigr, YEAR_ == '2003')
# MK_myc_tigr_2003_biomass <- summarise_at(MK_myc_tigr_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_tigr_2003_biomass$Year <- ('2003')
# MK_myc_tigr_2003_biomass$subregion <- ('MK')
# MK_myc_tigr_2003_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# MK_myc_tigr_2003_count <- count(MK_myc_tigr_2003, vars = "SPECIES_CD")
# 
# MK_myc_tigr_2003_biomass_count <- cbind(MK_myc_tigr_2003_biomass,MK_myc_tigr_2003_count)
# 
# 
# MK_myc_tigr_2004 <- filter(MK_myc_tigr, YEAR_ == '2004')
# MK_myc_tigr_2004_biomass <- summarise_at(MK_myc_tigr_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_tigr_2004_biomass$Year <- ('2004')
# MK_myc_tigr_2004_biomass$subregion <- ('MK')
# MK_myc_tigr_2004_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# MK_myc_tigr_2004_count <- count(MK_myc_tigr_2004, vars = "SPECIES_CD")
# 
# MK_myc_tigr_2004_biomass_count <- cbind(MK_myc_tigr_2004_biomass,MK_myc_tigr_2004_count)
# 
# 
# MK_myc_tigr_2005 <- filter(MK_myc_tigr, YEAR_ == '2005')
# MK_myc_tigr_2005_biomass <- summarise_at(MK_myc_tigr_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_tigr_2005_biomass$Year <- ('2005')
# MK_myc_tigr_2005_biomass$subregion <- ('MK')
# MK_myc_tigr_2005_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# MK_myc_tigr_2005_count <- count(MK_myc_tigr_2005, vars = "SPECIES_CD")
# 
# MK_myc_tigr_2005_biomass_count <- cbind(MK_myc_tigr_2005_biomass,MK_myc_tigr_2005_count)
# 
# 
# MK_myc_tigr_2006 <- filter(MK_myc_tigr, YEAR_ == '2006')
# MK_myc_tigr_2006_biomass <- summarise_at(MK_myc_tigr_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_tigr_2006_biomass$Year <- ('2006')
# MK_myc_tigr_2006_biomass$subregion <- ('MK')
# MK_myc_tigr_2006_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# 
# MK_myc_tigr_2006_count <- count(MK_myc_tigr_2006, vars = "SPECIES_CD")
# 
# MK_myc_tigr_2006_biomass_count <- cbind(MK_myc_tigr_2006_biomass,MK_myc_tigr_2006_count)
# 
# 
# MK_myc_tigr_2007 <- filter(MK_myc_tigr, YEAR_ == '2007')
# MK_myc_tigr_2007_biomass <- summarise_at(MK_myc_tigr_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_tigr_2007_biomass$Year <- ('2007')
# MK_myc_tigr_2007_biomass$subregion <- ('MK')
# MK_myc_tigr_2007_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# MK_myc_tigr_2007_count <- count(MK_myc_tigr_2007, vars = "SPECIES_CD")
# 
# MK_myc_tigr_2007_biomass_count <- cbind(MK_myc_tigr_2007_biomass,MK_myc_tigr_2007_count)
# 
# 
# MK_myc_tigr_2008 <- filter(MK_myc_tigr, YEAR_ == '2008')
# MK_myc_tigr_2008_biomass <- summarise_at(MK_myc_tigr_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_tigr_2008_biomass$Year <- ('2008')
# MK_myc_tigr_2008_biomass$subregion <- ('MK')
# MK_myc_tigr_2008_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# MK_myc_tigr_2008_count <- count(MK_myc_tigr_2008, vars = "SPECIES_CD")
# 
# MK_myc_tigr_2008_biomass_count <- cbind(MK_myc_tigr_2008_biomass,MK_myc_tigr_2008_count)
# 
# 
# MK_myc_tigr_2009 <- filter(MK_myc_tigr, YEAR_ == '2009')
# MK_myc_tigr_2009_biomass <- summarise_at(MK_myc_tigr_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_tigr_2009_biomass$Year <- ('2009')
# MK_myc_tigr_2009_biomass$subregion <- ('MK')
# MK_myc_tigr_2009_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# MK_myc_tigr_2009_count <- count(MK_myc_tigr_2009, vars = "SPECIES_CD")
# 
# MK_myc_tigr_2009_biomass_count <- cbind(MK_myc_tigr_2009_biomass,MK_myc_tigr_2009_count)
# 
# 
# MK_myc_tigr_2010 <- filter(MK_myc_tigr, YEAR_ == '2010')
# MK_myc_tigr_2010_biomass <- summarise_at(MK_myc_tigr_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_tigr_2010_biomass$Year <- ('2010')
# MK_myc_tigr_2010_biomass$subregion <- ('MK')
# MK_myc_tigr_2010_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# MK_myc_tigr_2010_count <- count(MK_myc_tigr_2010, vars = "SPECIES_CD")
# 
# MK_myc_tigr_2010_biomass_count <- cbind(MK_myc_tigr_2010_biomass,MK_myc_tigr_2010_count)
# 
# 
# MK_myc_tigr_2011 <- filter(MK_myc_tigr, YEAR_ == '2011')
# MK_myc_tigr_2011_biomass <- summarise_at(MK_myc_tigr_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_tigr_2011_biomass$Year <- ('2011')
# MK_myc_tigr_2011_biomass$subregion <- ('MK')
# MK_myc_tigr_2011_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# MK_myc_tigr_2011_count <- count(MK_myc_tigr_2011, vars = "SPECIES_CD")
# 
# MK_myc_tigr_2011_biomass_count <- cbind(MK_myc_tigr_2011_biomass,MK_myc_tigr_2011_count)
# 
# 
# MK_myc_tigr_2012 <- filter(MK_myc_tigr, YEAR_ == '2012')
# MK_myc_tigr_2012_biomass <- summarise_at(MK_myc_tigr_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_tigr_2012_biomass$Year <- ('2012')
# MK_myc_tigr_2012_biomass$subregion <- ('MK')
# MK_myc_tigr_2012_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# MK_myc_tigr_2012_count <- count(MK_myc_tigr_2012, vars = "SPECIES_CD")
# 
# MK_myc_tigr_2012_biomass_count <- cbind(MK_myc_tigr_2012_biomass,MK_myc_tigr_2012_count)
# 
# 
# MK_myc_tigr_2014 <- filter(MK_myc_tigr, YEAR_ == '2014')
# MK_myc_tigr_2014_biomass <- summarise_at(MK_myc_tigr_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_tigr_2014_biomass$Year <- ('2014')
# MK_myc_tigr_2014_biomass$subregion <- ('MK')
# MK_myc_tigr_2014_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# MK_myc_tigr_2014_count <- count(MK_myc_tigr_2014, vars = "SPECIES_CD")
# 
# MK_myc_tigr_2014_biomass_count <- cbind(MK_myc_tigr_2014_biomass,MK_myc_tigr_2014_count)
# 
# 
# MK_myc_tigr_2016 <- filter(MK_myc_tigr, YEAR_ == '2016')
# MK_myc_tigr_2016_biomass <- summarise_at(MK_myc_tigr_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_tigr_2016_biomass$Year <- ('2016')
# MK_myc_tigr_2016_biomass$subregion <- ('MK')
# MK_myc_tigr_2016_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# MK_myc_tigr_2016_count <- count(MK_myc_tigr_2016, vars = "SPECIES_CD")
# 
# MK_myc_tigr_2016_biomass_count <- cbind(MK_myc_tigr_2016_biomass,MK_myc_tigr_2016_count)
# 
# 
# MK_myc_tigr_2018 <- filter(MK_myc_tigr, YEAR_ == '2018')
# MK_myc_tigr_2018_biomass <- summarise_at(MK_myc_tigr_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_tigr_2018_biomass$Year <- ('2018')
# MK_myc_tigr_2018_biomass$subregion <- ('MK')
# MK_myc_tigr_2018_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# MK_myc_tigr_2018_count <- count(MK_myc_tigr_2018, vars = "SPECIES_CD")
# 
# MK_myc_tigr_2018_biomass_count <- cbind(MK_myc_tigr_2018_biomass,MK_myc_tigr_2018_count)


# MK_myc_tigr_all <- rbind(MK_myc_tigr_2000_biomass_count,MK_myc_tigr_2001_biomass_count,MK_myc_tigr_2002_biomass_count)
# 
# 
# 
# 
# MK_myc_tigr_all$vars <- NULL





MK_myc_vene <- filter(MK_grouper, SPECIES_CD == "MYC VENE")
unique(MK_myc_vene$YEAR_)
# 
# MK_myc_vene_1999 <- filter(MK_myc_vene, YEAR_ == '1999')
# MK_myc_vene_1999_biomass <- summarise_at(MK_myc_vene_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_vene_1999_biomass$Year <- ('1999')
# MK_myc_vene_1999_biomass$subregion <- ('MK')
# MK_myc_vene_1999_biomass$SPECIES_CD <- ('MYC VENE')
# 
# MK_myc_vene_1999_count <- count(MK_myc_vene_1999, vars = "SPECIES_CD")
# 
# MK_myc_vene_1999_biomass_count <- cbind(MK_myc_vene_1999_biomass,MK_myc_vene_1999_count)



MK_myc_vene_2000 <- filter(MK_myc_vene, YEAR_ == '2000')
MK_myc_vene_2000_biomass <- summarise_at(MK_myc_vene_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_vene_2000_biomass$Year <- ('2000')
MK_myc_vene_2000_biomass$subregion <- ('MK')
MK_myc_vene_2000_biomass$SPECIES_CD <- ('MYC VENE')

MK_myc_vene_2000_count <- count(MK_myc_vene_2000, vars = "SPECIES_CD")

MK_myc_vene_2000_biomass_count <- cbind(MK_myc_vene_2000_biomass,MK_myc_vene_2000_count)

# MK_myc_vene_2001 <- filter(MK_myc_vene, YEAR_ == '2001')
# MK_myc_vene_2001_biomass <- summarise_at(MK_myc_vene_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_vene_2001_biomass$Year <- ('2001')
# MK_myc_vene_2001_biomass$subregion <- ('MK')
# MK_myc_vene_2001_biomass$SPECIES_CD <- ('MYC VENE')
# 
# MK_myc_vene_2001_count <- count(MK_myc_vene_2001, vars = "SPECIES_CD")
# 
# MK_myc_vene_2001_biomass_count <- cbind(MK_myc_vene_2001_biomass,MK_myc_vene_2001_count)
# 
# 
# MK_myc_vene_2002 <- filter(MK_myc_vene, YEAR_ == '2002')
# MK_myc_vene_2002_biomass <- summarise_at(MK_myc_vene_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_vene_2002_biomass$Year <- ('2002')
# MK_myc_vene_2002_biomass$subregion <- ('MK')
# MK_myc_vene_2002_biomass$SPECIES_CD <- ('MYC VENE')
# 
# MK_myc_vene_2002_count <- count(MK_myc_vene_2002, vars = "SPECIES_CD")
# 
# MK_myc_vene_2002_biomass_count <- cbind(MK_myc_vene_2002_biomass,MK_myc_vene_2002_count)
# 
# 
# MK_myc_vene_2003 <- filter(MK_myc_vene, YEAR_ == '2003')
# MK_myc_vene_2003_biomass <- summarise_at(MK_myc_vene_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_vene_2003_biomass$Year <- ('2003')
# MK_myc_vene_2003_biomass$subregion <- ('MK')
# MK_myc_vene_2003_biomass$SPECIES_CD <- ('MYC VENE')
# 
# MK_myc_vene_2003_count <- count(MK_myc_vene_2003, vars = "SPECIES_CD")
# 
# MK_myc_vene_2003_biomass_count <- cbind(MK_myc_vene_2003_biomass,MK_myc_vene_2003_count)
# 
# 
# MK_myc_vene_2004 <- filter(MK_myc_vene, YEAR_ == '2004')
# MK_myc_vene_2004_biomass <- summarise_at(MK_myc_vene_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_vene_2004_biomass$Year <- ('2004')
# MK_myc_vene_2004_biomass$subregion <- ('MK')
# MK_myc_vene_2004_biomass$SPECIES_CD <- ('MYC VENE')
# 
# MK_myc_vene_2004_count <- count(MK_myc_vene_2004, vars = "SPECIES_CD")
# 
# MK_myc_vene_2004_biomass_count <- cbind(MK_myc_vene_2004_biomass,MK_myc_vene_2004_count)


MK_myc_vene_2005 <- filter(MK_myc_vene, YEAR_ == '2005')
MK_myc_vene_2005_biomass <- summarise_at(MK_myc_vene_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_myc_vene_2005_biomass$Year <- ('2005')
MK_myc_vene_2005_biomass$subregion <- ('MK')
MK_myc_vene_2005_biomass$SPECIES_CD <- ('MYC VENE')

MK_myc_vene_2005_count <- count(MK_myc_vene_2005, vars = "SPECIES_CD")

MK_myc_vene_2005_biomass_count <- cbind(MK_myc_vene_2005_biomass,MK_myc_vene_2005_count)
# 
# 
# MK_myc_vene_2006 <- filter(MK_myc_vene, YEAR_ == '2006')
# MK_myc_vene_2006_biomass <- summarise_at(MK_myc_vene_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_vene_2006_biomass$Year <- ('2006')
# MK_myc_vene_2006_biomass$subregion <- ('MK')
# MK_myc_vene_2006_biomass$SPECIES_CD <- ('MYC VENE')
# 
# 
# MK_myc_vene_2006_count <- count(MK_myc_vene_2006, vars = "SPECIES_CD")

# MK_myc_vene_2006_biomass_count <- cbind(MK_myc_vene_2006_biomass,MK_myc_vene_2006_count)
# 
# 
# MK_myc_vene_2007 <- filter(MK_myc_vene, YEAR_ == '2007')
# MK_myc_vene_2007_biomass <- summarise_at(MK_myc_vene_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_vene_2007_biomass$Year <- ('2007')
# MK_myc_vene_2007_biomass$subregion <- ('MK')
# MK_myc_vene_2007_biomass$SPECIES_CD <- ('MYC VENE')
# 
# MK_myc_vene_2007_count <- count(MK_myc_vene_2007, vars = "SPECIES_CD")
# 
# MK_myc_vene_2007_biomass_count <- cbind(MK_myc_vene_2007_biomass,MK_myc_vene_2007_count)


# MK_myc_vene_2008 <- filter(MK_myc_vene, YEAR_ == '2008')
# MK_myc_vene_2008_biomass <- summarise_at(MK_myc_vene_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_vene_2008_biomass$Year <- ('2008')
# MK_myc_vene_2008_biomass$subregion <- ('MK')
# MK_myc_vene_2008_biomass$SPECIES_CD <- ('MYC VENE')
# 
# MK_myc_vene_2008_count <- count(MK_myc_vene_2008, vars = "SPECIES_CD")
# 
# MK_myc_vene_2008_biomass_count <- cbind(MK_myc_vene_2008_biomass,MK_myc_vene_2008_count)
# 
# 
# MK_myc_vene_2009 <- filter(MK_myc_vene, YEAR_ == '2009')
# MK_myc_vene_2009_biomass <- summarise_at(MK_myc_vene_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_vene_2009_biomass$Year <- ('2009')
# MK_myc_vene_2009_biomass$subregion <- ('MK')
# MK_myc_vene_2009_biomass$SPECIES_CD <- ('MYC VENE')
# 
# MK_myc_vene_2009_count <- count(MK_myc_vene_2009, vars = "SPECIES_CD")
# 
# MK_myc_vene_2009_biomass_count <- cbind(MK_myc_vene_2009_biomass,MK_myc_vene_2009_count)


# MK_myc_vene_2010 <- filter(MK_myc_vene, YEAR_ == '2010')
# MK_myc_vene_2010_biomass <- summarise_at(MK_myc_vene_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_vene_2010_biomass$Year <- ('2010')
# MK_myc_vene_2010_biomass$subregion <- ('MK')
# MK_myc_vene_2010_biomass$SPECIES_CD <- ('MYC VENE')
# 
# MK_myc_vene_2010_count <- count(MK_myc_vene_2010, vars = "SPECIES_CD")
# 
# MK_myc_vene_2010_biomass_count <- cbind(MK_myc_vene_2010_biomass,MK_myc_vene_2010_count)
# 
# 
# MK_myc_vene_2011 <- filter(MK_myc_vene, YEAR_ == '2011')
# MK_myc_vene_2011_biomass <- summarise_at(MK_myc_vene_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_vene_2011_biomass$Year <- ('2011')
# MK_myc_vene_2011_biomass$subregion <- ('MK')
# MK_myc_vene_2011_biomass$SPECIES_CD <- ('MYC VENE')
# 
# MK_myc_vene_2011_count <- count(MK_myc_vene_2011, vars = "SPECIES_CD")
# 
# MK_myc_vene_2011_biomass_count <- cbind(MK_myc_vene_2011_biomass,MK_myc_vene_2011_count)
# 
# 
# MK_myc_vene_2012 <- filter(MK_myc_vene, YEAR_ == '2012')
# MK_myc_vene_2012_biomass <- summarise_at(MK_myc_vene_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_vene_2012_biomass$Year <- ('2012')
# MK_myc_vene_2012_biomass$subregion <- ('MK')
# MK_myc_vene_2012_biomass$SPECIES_CD <- ('MYC VENE')
# 
# MK_myc_vene_2012_count <- count(MK_myc_vene_2012, vars = "SPECIES_CD")
# 
# MK_myc_vene_2012_biomass_count <- cbind(MK_myc_vene_2012_biomass,MK_myc_vene_2012_count)
# 
# 
# MK_myc_vene_2014 <- filter(MK_myc_vene, YEAR_ == '2014')
# MK_myc_vene_2014_biomass <- summarise_at(MK_myc_vene_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_vene_2014_biomass$Year <- ('2014')
# MK_myc_vene_2014_biomass$subregion <- ('MK')
# MK_myc_vene_2014_biomass$SPECIES_CD <- ('MYC VENE')
# 
# MK_myc_vene_2014_count <- count(MK_myc_vene_2014, vars = "SPECIES_CD")
# 
# MK_myc_vene_2014_biomass_count <- cbind(MK_myc_vene_2014_biomass,MK_myc_vene_2014_count)
# 
# 
# MK_myc_vene_2016 <- filter(MK_myc_vene, YEAR_ == '2016')
# MK_myc_vene_2016_biomass <- summarise_at(MK_myc_vene_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_vene_2016_biomass$Year <- ('2016')
# MK_myc_vene_2016_biomass$subregion <- ('MK')
# MK_myc_vene_2016_biomass$SPECIES_CD <- ('MYC VENE')
# 
# MK_myc_vene_2016_count <- count(MK_myc_vene_2016, vars = "SPECIES_CD")
# 
# MK_myc_vene_2016_biomass_count <- cbind(MK_myc_vene_2016_biomass,MK_myc_vene_2016_count)
# 
# 
# MK_myc_vene_2018 <- filter(MK_myc_vene, YEAR_ == '2018')
# MK_myc_vene_2018_biomass <- summarise_at(MK_myc_vene_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_myc_vene_2018_biomass$Year <- ('2018')
# MK_myc_vene_2018_biomass$subregion <- ('MK')
# MK_myc_vene_2018_biomass$SPECIES_CD <- ('MYC VENE')
# 
# MK_myc_vene_2018_count <- count(MK_myc_vene_2018, vars = "SPECIES_CD")
# 
# MK_myc_vene_2018_biomass_count <- cbind(MK_myc_vene_2018_biomass,MK_myc_vene_2018_count)


MK_myc_vene_all <- rbind(MK_myc_vene_2000_biomass_count,MK_myc_vene_2005_biomass_count)


MK_myc_vene_all$vars <- NULL




MK_srr_spe <- filter(MK_grouper, SPECIES_CD == "SRR SPE.")
unique(MK_srr_spe$YEAR_)

# MK_srr_spe_1999 <- filter(MK_srr_spe, YEAR_ == '1999')
# MK_srr_spe_1999_biomass <- summarise_at(MK_srr_spe_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_srr_spe_1999_biomass$Year <- ('1999')
# MK_srr_spe_1999_biomass$subregion <- ('MK')
# MK_srr_spe_1999_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# MK_srr_spe_1999_count <- count(MK_srr_spe_1999, vars = "SPECIES_CD")
# 
# MK_srr_spe_1999_biomass_count <- cbind(MK_srr_spe_1999_biomass,MK_srr_spe_1999_count)
# 
# 
# 
# MK_srr_spe_2000 <- filter(MK_srr_spe, YEAR_ == '2000')
# MK_srr_spe_2000_biomass <- summarise_at(MK_srr_spe_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_srr_spe_2000_biomass$Year <- ('2000')
# MK_srr_spe_2000_biomass$subregion <- ('MK')
# MK_srr_spe_2000_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# MK_srr_spe_2000_count <- count(MK_srr_spe_2000, vars = "SPECIES_CD")
# 
# MK_srr_spe_2000_biomass_count <- cbind(MK_srr_spe_2000_biomass,MK_srr_spe_2000_count)
# 
# MK_srr_spe_2001 <- filter(MK_srr_spe, YEAR_ == '2001')
# MK_srr_spe_2001_biomass <- summarise_at(MK_srr_spe_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_srr_spe_2001_biomass$Year <- ('2001')
# MK_srr_spe_2001_biomass$subregion <- ('MK')
# MK_srr_spe_2001_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# MK_srr_spe_2001_count <- count(MK_srr_spe_2001, vars = "SPECIES_CD")
# 
# MK_srr_spe_2001_biomass_count <- cbind(MK_srr_spe_2001_biomass,MK_srr_spe_2001_count)
# 
# 
# MK_srr_spe_2002 <- filter(MK_srr_spe, YEAR_ == '2002')
# MK_srr_spe_2002_biomass <- summarise_at(MK_srr_spe_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_srr_spe_2002_biomass$Year <- ('2002')
# MK_srr_spe_2002_biomass$subregion <- ('MK')
# MK_srr_spe_2002_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# MK_srr_spe_2002_count <- count(MK_srr_spe_2002, vars = "SPECIES_CD")
# 
# MK_srr_spe_2002_biomass_count <- cbind(MK_srr_spe_2002_biomass,MK_srr_spe_2002_count)
# 
# 
# MK_srr_spe_2003 <- filter(MK_srr_spe, YEAR_ == '2003')
# MK_srr_spe_2003_biomass <- summarise_at(MK_srr_spe_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_srr_spe_2003_biomass$Year <- ('2003')
# MK_srr_spe_2003_biomass$subregion <- ('MK')
# MK_srr_spe_2003_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# MK_srr_spe_2003_count <- count(MK_srr_spe_2003, vars = "SPECIES_CD")
# 
# MK_srr_spe_2003_biomass_count <- cbind(MK_srr_spe_2003_biomass,MK_srr_spe_2003_count)
# 
# 
# MK_srr_spe_2004 <- filter(MK_srr_spe, YEAR_ == '2004')
# MK_srr_spe_2004_biomass <- summarise_at(MK_srr_spe_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_srr_spe_2004_biomass$Year <- ('2004')
# MK_srr_spe_2004_biomass$subregion <- ('MK')
# MK_srr_spe_2004_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# MK_srr_spe_2004_count <- count(MK_srr_spe_2004, vars = "SPECIES_CD")
# 
# MK_srr_spe_2004_biomass_count <- cbind(MK_srr_spe_2004_biomass,MK_srr_spe_2004_count)
# 
# 
# MK_srr_spe_2005 <- filter(MK_srr_spe, YEAR_ == '2005')
# MK_srr_spe_2005_biomass <- summarise_at(MK_srr_spe_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_srr_spe_2005_biomass$Year <- ('2005')
# MK_srr_spe_2005_biomass$subregion <- ('MK')
# MK_srr_spe_2005_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# MK_srr_spe_2005_count <- count(MK_srr_spe_2005, vars = "SPECIES_CD")
# 
# MK_srr_spe_2005_biomass_count <- cbind(MK_srr_spe_2005_biomass,MK_srr_spe_2005_count)
# 
# 
# MK_srr_spe_2006 <- filter(MK_srr_spe, YEAR_ == '2006')
# MK_srr_spe_2006_biomass <- summarise_at(MK_srr_spe_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_srr_spe_2006_biomass$Year <- ('2006')
# MK_srr_spe_2006_biomass$subregion <- ('MK')
# MK_srr_spe_2006_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# 
# MK_srr_spe_2006_count <- count(MK_srr_spe_2006, vars = "SPECIES_CD")
# 
# MK_srr_spe_2006_biomass_count <- cbind(MK_srr_spe_2006_biomass,MK_srr_spe_2006_count)
# 
# 
# MK_srr_spe_2007 <- filter(MK_srr_spe, YEAR_ == '2007')
# MK_srr_spe_2007_biomass <- summarise_at(MK_srr_spe_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_srr_spe_2007_biomass$Year <- ('2007')
# MK_srr_spe_2007_biomass$subregion <- ('MK')
# MK_srr_spe_2007_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# MK_srr_spe_2007_count <- count(MK_srr_spe_2007, vars = "SPECIES_CD")
# 
# MK_srr_spe_2007_biomass_count <- cbind(MK_srr_spe_2007_biomass,MK_srr_spe_2007_count)
# 
# 
# MK_srr_spe_2008 <- filter(MK_srr_spe, YEAR_ == '2008')
# MK_srr_spe_2008_biomass <- summarise_at(MK_srr_spe_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_srr_spe_2008_biomass$Year <- ('2008')
# MK_srr_spe_2008_biomass$subregion <- ('MK')
# MK_srr_spe_2008_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# MK_srr_spe_2008_count <- count(MK_srr_spe_2008, vars = "SPECIES_CD")
# 
# MK_srr_spe_2008_biomass_count <- cbind(MK_srr_spe_2008_biomass,MK_srr_spe_2008_count)
# 
# 
# MK_srr_spe_2009 <- filter(MK_srr_spe, YEAR_ == '2009')
# MK_srr_spe_2009_biomass <- summarise_at(MK_srr_spe_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_srr_spe_2009_biomass$Year <- ('2009')
# MK_srr_spe_2009_biomass$subregion <- ('MK')
# MK_srr_spe_2009_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# MK_srr_spe_2009_count <- count(MK_srr_spe_2009, vars = "SPECIES_CD")
# 
# MK_srr_spe_2009_biomass_count <- cbind(MK_srr_spe_2009_biomass,MK_srr_spe_2009_count)
# 
# 
MK_srr_spe_2010 <- filter(MK_srr_spe, YEAR_ == '2010')
MK_srr_spe_2010_biomass <- summarise_at(MK_srr_spe_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
MK_srr_spe_2010_biomass$Year <- ('2010')
MK_srr_spe_2010_biomass$subregion <- ('MK')
MK_srr_spe_2010_biomass$SPECIES_CD <- ('SRR SPE.')

MK_srr_spe_2010_count <- count(MK_srr_spe_2010, vars = "SPECIES_CD")

MK_srr_spe_2010_biomass_count <- cbind(MK_srr_spe_2010_biomass,MK_srr_spe_2010_count)
# 
# 
# MK_srr_spe_2011 <- filter(MK_srr_spe, YEAR_ == '2011')
# MK_srr_spe_2011_biomass <- summarise_at(MK_srr_spe_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_srr_spe_2011_biomass$Year <- ('2011')
# MK_srr_spe_2011_biomass$subregion <- ('MK')
# MK_srr_spe_2011_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# MK_srr_spe_2011_count <- count(MK_srr_spe_2011, vars = "SPECIES_CD")
# 
# MK_srr_spe_2011_biomass_count <- cbind(MK_srr_spe_2011_biomass,MK_srr_spe_2011_count)
# 
# 
# MK_srr_spe_2012 <- filter(MK_srr_spe, YEAR_ == '2012')
# MK_srr_spe_2012_biomass <- summarise_at(MK_srr_spe_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_srr_spe_2012_biomass$Year <- ('2012')
# MK_srr_spe_2012_biomass$subregion <- ('MK')
# MK_srr_spe_2012_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# MK_srr_spe_2012_count <- count(MK_srr_spe_2012, vars = "SPECIES_CD")
# 
# MK_srr_spe_2012_biomass_count <- cbind(MK_srr_spe_2012_biomass,MK_srr_spe_2012_count)
# 
# 
# MK_srr_spe_2014 <- filter(MK_srr_spe, YEAR_ == '2014')
# MK_srr_spe_2014_biomass <- summarise_at(MK_srr_spe_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_srr_spe_2014_biomass$Year <- ('2014')
# MK_srr_spe_2014_biomass$subregion <- ('MK')
# MK_srr_spe_2014_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# MK_srr_spe_2014_count <- count(MK_srr_spe_2014, vars = "SPECIES_CD")
# 
# MK_srr_spe_2014_biomass_count <- cbind(MK_srr_spe_2014_biomass,MK_srr_spe_2014_count)
# 
# 
# MK_srr_spe_2016 <- filter(MK_srr_spe, YEAR_ == '2016')
# MK_srr_spe_2016_biomass <- summarise_at(MK_srr_spe_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_srr_spe_2016_biomass$Year <- ('2016')
# MK_srr_spe_2016_biomass$subregion <- ('MK')
# MK_srr_spe_2016_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# MK_srr_spe_2016_count <- count(MK_srr_spe_2016, vars = "SPECIES_CD")
# 
# MK_srr_spe_2016_biomass_count <- cbind(MK_srr_spe_2016_biomass,MK_srr_spe_2016_count)
# 
# 
# MK_srr_spe_2018 <- filter(MK_srr_spe, YEAR_ == '2018')
# MK_srr_spe_2018_biomass <- summarise_at(MK_srr_spe_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# MK_srr_spe_2018_biomass$Year <- ('2018')
# MK_srr_spe_2018_biomass$subregion <- ('MK')
# MK_srr_spe_2018_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# MK_srr_spe_2018_count <- count(MK_srr_spe_2018, vars = "SPECIES_CD")
# 
# MK_srr_spe_2018_biomass_count <- cbind(MK_srr_spe_2018_biomass,MK_srr_spe_2018_count)


MK_srr_spe_all <- MK_srr_spe_2010_biomass_count

MK_srr_spe_all$vars <- NULL


# MK_grouper_combined <- rbind(MK_cep_crue_all,MK_cep_fulv_all,MK_epi_itaj_all,MK_epi_mori_all,MK_epi_stri_all,MK_myc_bona_all,
#                              MK_myc_inte_all,MK_myc_micr_all,MK_myc_phen_all,MK_myc_vene_all,MK_srr_spe_all)


##export(MK_grouper_combined,"C:/Users/cara.estes/Documents/EwE_data/MK_groupers.csv")




###Upper Keys


UK_grouper <- merge(UK_snapper_grouper, grouper, by = c("SPECIES_CD"))
unique(UK_grouper$SPECIES_CD)

###  "CEP CRUE" "CEP FULV" "EPI ITAJ" "EPI MORI" "EPI STRI" "MYC BONA" "MYC INTE" "MYC MICR" "MYC PHEN" "MYC TIGR" "SRR SPE."


UK_cep_crue <- filter(UK_grouper, SPECIES_CD == "CEP CRUE")
unique(UK_cep_crue$YEAR_)

UK_cep_crue_1999 <- filter(UK_cep_crue, YEAR_ == '1999')
UK_cep_crue_1999_biomass <- summarise_at(UK_cep_crue_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_1999_biomass$Year <- ('1999')
UK_cep_crue_1999_biomass$subregion <- ('UK')
UK_cep_crue_1999_biomass$SPECIES_CD <- ('CEP CRUE')

UK_cep_crue_1999_count <- count(UK_cep_crue_1999, vars = "SPECIES_CD")

UK_cep_crue_1999_biomass_count <- cbind(UK_cep_crue_1999_biomass,UK_cep_crue_1999_count)



UK_cep_crue_2000 <- filter(UK_cep_crue, YEAR_ == '2000')
UK_cep_crue_2000_biomass <- summarise_at(UK_cep_crue_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_2000_biomass$Year <- ('2000')
UK_cep_crue_2000_biomass$subregion <- ('UK')
UK_cep_crue_2000_biomass$SPECIES_CD <- ('CEP CRUE')

UK_cep_crue_2000_count <- count(UK_cep_crue_2000, vars = "SPECIES_CD")

UK_cep_crue_2000_biomass_count <- cbind(UK_cep_crue_2000_biomass,UK_cep_crue_2000_count)

UK_cep_crue_2001 <- filter(UK_cep_crue, YEAR_ == '2001')
UK_cep_crue_2001_biomass <- summarise_at(UK_cep_crue_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_2001_biomass$Year <- ('2001')
UK_cep_crue_2001_biomass$subregion <- ('UK')
UK_cep_crue_2001_biomass$SPECIES_CD <- ('CEP CRUE')

UK_cep_crue_2001_count <- count(UK_cep_crue_2001, vars = "SPECIES_CD")

UK_cep_crue_2001_biomass_count <- cbind(UK_cep_crue_2001_biomass,UK_cep_crue_2001_count)


UK_cep_crue_2002 <- filter(UK_cep_crue, YEAR_ == '2002')
UK_cep_crue_2002_biomass <- summarise_at(UK_cep_crue_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_2002_biomass$Year <- ('2002')
UK_cep_crue_2002_biomass$subregion <- ('UK')
UK_cep_crue_2002_biomass$SPECIES_CD <- ('CEP CRUE')

UK_cep_crue_2002_count <- count(UK_cep_crue_2002, vars = "SPECIES_CD")

UK_cep_crue_2002_biomass_count <- cbind(UK_cep_crue_2002_biomass,UK_cep_crue_2002_count)


UK_cep_crue_2003 <- filter(UK_cep_crue, YEAR_ == '2003')
UK_cep_crue_2003_biomass <- summarise_at(UK_cep_crue_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_2003_biomass$Year <- ('2003')
UK_cep_crue_2003_biomass$subregion <- ('UK')
UK_cep_crue_2003_biomass$SPECIES_CD <- ('CEP CRUE')

UK_cep_crue_2003_count <- count(UK_cep_crue_2003, vars = "SPECIES_CD")

UK_cep_crue_2003_biomass_count <- cbind(UK_cep_crue_2003_biomass,UK_cep_crue_2003_count)


UK_cep_crue_2004 <- filter(UK_cep_crue, YEAR_ == '2004')
UK_cep_crue_2004_biomass <- summarise_at(UK_cep_crue_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_2004_biomass$Year <- ('2004')
UK_cep_crue_2004_biomass$subregion <- ('UK')
UK_cep_crue_2004_biomass$SPECIES_CD <- ('CEP CRUE')

UK_cep_crue_2004_count <- count(UK_cep_crue_2004, vars = "SPECIES_CD")

UK_cep_crue_2004_biomass_count <- cbind(UK_cep_crue_2004_biomass,UK_cep_crue_2004_count)


UK_cep_crue_2005 <- filter(UK_cep_crue, YEAR_ == '2005')
UK_cep_crue_2005_biomass <- summarise_at(UK_cep_crue_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_2005_biomass$Year <- ('2005')
UK_cep_crue_2005_biomass$subregion <- ('UK')
UK_cep_crue_2005_biomass$SPECIES_CD <- ('CEP CRUE')

UK_cep_crue_2005_count <- count(UK_cep_crue_2005, vars = "SPECIES_CD")

UK_cep_crue_2005_biomass_count <- cbind(UK_cep_crue_2005_biomass,UK_cep_crue_2005_count)


UK_cep_crue_2006 <- filter(UK_cep_crue, YEAR_ == '2006')
UK_cep_crue_2006_biomass <- summarise_at(UK_cep_crue_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_2006_biomass$Year <- ('2006')
UK_cep_crue_2006_biomass$subregion <- ('UK')
UK_cep_crue_2006_biomass$SPECIES_CD <- ('CEP CRUE')


UK_cep_crue_2006_count <- count(UK_cep_crue_2006, vars = "SPECIES_CD")

UK_cep_crue_2006_biomass_count <- cbind(UK_cep_crue_2006_biomass,UK_cep_crue_2006_count)


UK_cep_crue_2007 <- filter(UK_cep_crue, YEAR_ == '2007')
UK_cep_crue_2007_biomass <- summarise_at(UK_cep_crue_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_2007_biomass$Year <- ('2007')
UK_cep_crue_2007_biomass$subregion <- ('UK')
UK_cep_crue_2007_biomass$SPECIES_CD <- ('CEP CRUE')

UK_cep_crue_2007_count <- count(UK_cep_crue_2007, vars = "SPECIES_CD")

UK_cep_crue_2007_biomass_count <- cbind(UK_cep_crue_2007_biomass,UK_cep_crue_2007_count)


UK_cep_crue_2008 <- filter(UK_cep_crue, YEAR_ == '2008')
UK_cep_crue_2008_biomass <- summarise_at(UK_cep_crue_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_2008_biomass$Year <- ('2008')
UK_cep_crue_2008_biomass$subregion <- ('UK')
UK_cep_crue_2008_biomass$SPECIES_CD <- ('CEP CRUE')

UK_cep_crue_2008_count <- count(UK_cep_crue_2008, vars = "SPECIES_CD")

UK_cep_crue_2008_biomass_count <- cbind(UK_cep_crue_2008_biomass,UK_cep_crue_2008_count)


UK_cep_crue_2009 <- filter(UK_cep_crue, YEAR_ == '2009')
UK_cep_crue_2009_biomass <- summarise_at(UK_cep_crue_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_2009_biomass$Year <- ('2009')
UK_cep_crue_2009_biomass$subregion <- ('UK')
UK_cep_crue_2009_biomass$SPECIES_CD <- ('CEP CRUE')

UK_cep_crue_2009_count <- count(UK_cep_crue_2009, vars = "SPECIES_CD")

UK_cep_crue_2009_biomass_count <- cbind(UK_cep_crue_2009_biomass,UK_cep_crue_2009_count)


UK_cep_crue_2010 <- filter(UK_cep_crue, YEAR_ == '2010')
UK_cep_crue_2010_biomass <- summarise_at(UK_cep_crue_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_2010_biomass$Year <- ('2010')
UK_cep_crue_2010_biomass$subregion <- ('UK')
UK_cep_crue_2010_biomass$SPECIES_CD <- ('CEP CRUE')

UK_cep_crue_2010_count <- count(UK_cep_crue_2010, vars = "SPECIES_CD")

UK_cep_crue_2010_biomass_count <- cbind(UK_cep_crue_2010_biomass,UK_cep_crue_2010_count)


UK_cep_crue_2011 <- filter(UK_cep_crue, YEAR_ == '2011')
UK_cep_crue_2011_biomass <- summarise_at(UK_cep_crue_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_2011_biomass$Year <- ('2011')
UK_cep_crue_2011_biomass$subregion <- ('UK')
UK_cep_crue_2011_biomass$SPECIES_CD <- ('CEP CRUE')

UK_cep_crue_2011_count <- count(UK_cep_crue_2011, vars = "SPECIES_CD")

UK_cep_crue_2011_biomass_count <- cbind(UK_cep_crue_2011_biomass,UK_cep_crue_2011_count)


UK_cep_crue_2012 <- filter(UK_cep_crue, YEAR_ == '2012')
UK_cep_crue_2012_biomass <- summarise_at(UK_cep_crue_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_2012_biomass$Year <- ('2012')
UK_cep_crue_2012_biomass$subregion <- ('UK')
UK_cep_crue_2012_biomass$SPECIES_CD <- ('CEP CRUE')

UK_cep_crue_2012_count <- count(UK_cep_crue_2012, vars = "SPECIES_CD")

UK_cep_crue_2012_biomass_count <- cbind(UK_cep_crue_2012_biomass,UK_cep_crue_2012_count)


UK_cep_crue_2014 <- filter(UK_cep_crue, YEAR_ == '2014')
UK_cep_crue_2014_biomass <- summarise_at(UK_cep_crue_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_2014_biomass$Year <- ('2014')
UK_cep_crue_2014_biomass$subregion <- ('UK')
UK_cep_crue_2014_biomass$SPECIES_CD <- ('CEP CRUE')

UK_cep_crue_2014_count <- count(UK_cep_crue_2014, vars = "SPECIES_CD")

UK_cep_crue_2014_biomass_count <- cbind(UK_cep_crue_2014_biomass,UK_cep_crue_2014_count)


UK_cep_crue_2016 <- filter(UK_cep_crue, YEAR_ == '2016')
UK_cep_crue_2016_biomass <- summarise_at(UK_cep_crue_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_2016_biomass$Year <- ('2016')
UK_cep_crue_2016_biomass$subregion <- ('UK')
UK_cep_crue_2016_biomass$SPECIES_CD <- ('CEP CRUE')

UK_cep_crue_2016_count <- count(UK_cep_crue_2016, vars = "SPECIES_CD")

UK_cep_crue_2016_biomass_count <- cbind(UK_cep_crue_2016_biomass,UK_cep_crue_2016_count)


UK_cep_crue_2018 <- filter(UK_cep_crue, YEAR_ == '2018')
UK_cep_crue_2018_biomass <- summarise_at(UK_cep_crue_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_crue_2018_biomass$Year <- ('2018')
UK_cep_crue_2018_biomass$subregion <- ('UK')
UK_cep_crue_2018_biomass$SPECIES_CD <- ('CEP CRUE')

UK_cep_crue_2018_count <- count(UK_cep_crue_2018, vars = "SPECIES_CD")

UK_cep_crue_2018_biomass_count <- cbind(UK_cep_crue_2018_biomass,UK_cep_crue_2018_count)


UK_cep_crue_all <- rbind(UK_cep_crue_1999_biomass_count,UK_cep_crue_2000_biomass_count,UK_cep_crue_2001_biomass_count,UK_cep_crue_2002_biomass_count,UK_cep_crue_2003_biomass_count,
                         UK_cep_crue_2004_biomass_count,UK_cep_crue_2005_biomass_count,UK_cep_crue_2006_biomass_count,UK_cep_crue_2007_biomass_count,
                         UK_cep_crue_2008_biomass_count,UK_cep_crue_2009_biomass_count,UK_cep_crue_2010_biomass_count,UK_cep_crue_2011_biomass_count,
                         UK_cep_crue_2012_biomass_count,UK_cep_crue_2014_biomass_count,UK_cep_crue_2016_biomass_count,UK_cep_crue_2018_biomass_count)

UK_cep_crue_all$vars <- NULL





UK_cep_fulv <- filter(UK_grouper, SPECIES_CD == "CEP FULV")
unique(UK_cep_fulv$YEAR_)

UK_cep_fulv_1999 <- filter(UK_cep_fulv, YEAR_ == '1999')
UK_cep_fulv_1999_biomass <- summarise_at(UK_cep_fulv_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_1999_biomass$Year <- ('1999')
UK_cep_fulv_1999_biomass$subregion <- ('UK')
UK_cep_fulv_1999_biomass$SPECIES_CD <- ('CEP FULV')

UK_cep_fulv_1999_count <- count(UK_cep_fulv_1999, vars = "SPECIES_CD")

UK_cep_fulv_1999_biomass_count <- cbind(UK_cep_fulv_1999_biomass,UK_cep_fulv_1999_count)



UK_cep_fulv_2000 <- filter(UK_cep_fulv, YEAR_ == '2000')
UK_cep_fulv_2000_biomass <- summarise_at(UK_cep_fulv_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_2000_biomass$Year <- ('2000')
UK_cep_fulv_2000_biomass$subregion <- ('UK')
UK_cep_fulv_2000_biomass$SPECIES_CD <- ('CEP FULV')

UK_cep_fulv_2000_count <- count(UK_cep_fulv_2000, vars = "SPECIES_CD")

UK_cep_fulv_2000_biomass_count <- cbind(UK_cep_fulv_2000_biomass,UK_cep_fulv_2000_count)

UK_cep_fulv_2001 <- filter(UK_cep_fulv, YEAR_ == '2001')
UK_cep_fulv_2001_biomass <- summarise_at(UK_cep_fulv_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_2001_biomass$Year <- ('2001')
UK_cep_fulv_2001_biomass$subregion <- ('UK')
UK_cep_fulv_2001_biomass$SPECIES_CD <- ('CEP FULV')

UK_cep_fulv_2001_count <- count(UK_cep_fulv_2001, vars = "SPECIES_CD")

UK_cep_fulv_2001_biomass_count <- cbind(UK_cep_fulv_2001_biomass,UK_cep_fulv_2001_count)


UK_cep_fulv_2002 <- filter(UK_cep_fulv, YEAR_ == '2002')
UK_cep_fulv_2002_biomass <- summarise_at(UK_cep_fulv_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_2002_biomass$Year <- ('2002')
UK_cep_fulv_2002_biomass$subregion <- ('UK')
UK_cep_fulv_2002_biomass$SPECIES_CD <- ('CEP FULV')

UK_cep_fulv_2002_count <- count(UK_cep_fulv_2002, vars = "SPECIES_CD")

UK_cep_fulv_2002_biomass_count <- cbind(UK_cep_fulv_2002_biomass,UK_cep_fulv_2002_count)


UK_cep_fulv_2003 <- filter(UK_cep_fulv, YEAR_ == '2003')
UK_cep_fulv_2003_biomass <- summarise_at(UK_cep_fulv_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_2003_biomass$Year <- ('2003')
UK_cep_fulv_2003_biomass$subregion <- ('UK')
UK_cep_fulv_2003_biomass$SPECIES_CD <- ('CEP FULV')

UK_cep_fulv_2003_count <- count(UK_cep_fulv_2003, vars = "SPECIES_CD")

UK_cep_fulv_2003_biomass_count <- cbind(UK_cep_fulv_2003_biomass,UK_cep_fulv_2003_count)


UK_cep_fulv_2004 <- filter(UK_cep_fulv, YEAR_ == '2004')
UK_cep_fulv_2004_biomass <- summarise_at(UK_cep_fulv_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_2004_biomass$Year <- ('2004')
UK_cep_fulv_2004_biomass$subregion <- ('UK')
UK_cep_fulv_2004_biomass$SPECIES_CD <- ('CEP FULV')

UK_cep_fulv_2004_count <- count(UK_cep_fulv_2004, vars = "SPECIES_CD")

UK_cep_fulv_2004_biomass_count <- cbind(UK_cep_fulv_2004_biomass,UK_cep_fulv_2004_count)


UK_cep_fulv_2005 <- filter(UK_cep_fulv, YEAR_ == '2005')
UK_cep_fulv_2005_biomass <- summarise_at(UK_cep_fulv_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_2005_biomass$Year <- ('2005')
UK_cep_fulv_2005_biomass$subregion <- ('UK')
UK_cep_fulv_2005_biomass$SPECIES_CD <- ('CEP FULV')

UK_cep_fulv_2005_count <- count(UK_cep_fulv_2005, vars = "SPECIES_CD")

UK_cep_fulv_2005_biomass_count <- cbind(UK_cep_fulv_2005_biomass,UK_cep_fulv_2005_count)


UK_cep_fulv_2006 <- filter(UK_cep_fulv, YEAR_ == '2006')
UK_cep_fulv_2006_biomass <- summarise_at(UK_cep_fulv_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_2006_biomass$Year <- ('2006')
UK_cep_fulv_2006_biomass$subregion <- ('UK')
UK_cep_fulv_2006_biomass$SPECIES_CD <- ('CEP FULV')


UK_cep_fulv_2006_count <- count(UK_cep_fulv_2006, vars = "SPECIES_CD")

UK_cep_fulv_2006_biomass_count <- cbind(UK_cep_fulv_2006_biomass,UK_cep_fulv_2006_count)


UK_cep_fulv_2007 <- filter(UK_cep_fulv, YEAR_ == '2007')
UK_cep_fulv_2007_biomass <- summarise_at(UK_cep_fulv_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_2007_biomass$Year <- ('2007')
UK_cep_fulv_2007_biomass$subregion <- ('UK')
UK_cep_fulv_2007_biomass$SPECIES_CD <- ('CEP FULV')

UK_cep_fulv_2007_count <- count(UK_cep_fulv_2007, vars = "SPECIES_CD")

UK_cep_fulv_2007_biomass_count <- cbind(UK_cep_fulv_2007_biomass,UK_cep_fulv_2007_count)


UK_cep_fulv_2008 <- filter(UK_cep_fulv, YEAR_ == '2008')
UK_cep_fulv_2008_biomass <- summarise_at(UK_cep_fulv_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_2008_biomass$Year <- ('2008')
UK_cep_fulv_2008_biomass$subregion <- ('UK')
UK_cep_fulv_2008_biomass$SPECIES_CD <- ('CEP FULV')

UK_cep_fulv_2008_count <- count(UK_cep_fulv_2008, vars = "SPECIES_CD")

UK_cep_fulv_2008_biomass_count <- cbind(UK_cep_fulv_2008_biomass,UK_cep_fulv_2008_count)


UK_cep_fulv_2009 <- filter(UK_cep_fulv, YEAR_ == '2009')
UK_cep_fulv_2009_biomass <- summarise_at(UK_cep_fulv_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_2009_biomass$Year <- ('2009')
UK_cep_fulv_2009_biomass$subregion <- ('UK')
UK_cep_fulv_2009_biomass$SPECIES_CD <- ('CEP FULV')

UK_cep_fulv_2009_count <- count(UK_cep_fulv_2009, vars = "SPECIES_CD")

UK_cep_fulv_2009_biomass_count <- cbind(UK_cep_fulv_2009_biomass,UK_cep_fulv_2009_count)


UK_cep_fulv_2010 <- filter(UK_cep_fulv, YEAR_ == '2010')
UK_cep_fulv_2010_biomass <- summarise_at(UK_cep_fulv_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_2010_biomass$Year <- ('2010')
UK_cep_fulv_2010_biomass$subregion <- ('UK')
UK_cep_fulv_2010_biomass$SPECIES_CD <- ('CEP FULV')

UK_cep_fulv_2010_count <- count(UK_cep_fulv_2010, vars = "SPECIES_CD")

UK_cep_fulv_2010_biomass_count <- cbind(UK_cep_fulv_2010_biomass,UK_cep_fulv_2010_count)


UK_cep_fulv_2011 <- filter(UK_cep_fulv, YEAR_ == '2011')
UK_cep_fulv_2011_biomass <- summarise_at(UK_cep_fulv_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_2011_biomass$Year <- ('2011')
UK_cep_fulv_2011_biomass$subregion <- ('UK')
UK_cep_fulv_2011_biomass$SPECIES_CD <- ('CEP FULV')

UK_cep_fulv_2011_count <- count(UK_cep_fulv_2011, vars = "SPECIES_CD")

UK_cep_fulv_2011_biomass_count <- cbind(UK_cep_fulv_2011_biomass,UK_cep_fulv_2011_count)


UK_cep_fulv_2012 <- filter(UK_cep_fulv, YEAR_ == '2012')
UK_cep_fulv_2012_biomass <- summarise_at(UK_cep_fulv_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_2012_biomass$Year <- ('2012')
UK_cep_fulv_2012_biomass$subregion <- ('UK')
UK_cep_fulv_2012_biomass$SPECIES_CD <- ('CEP FULV')

UK_cep_fulv_2012_count <- count(UK_cep_fulv_2012, vars = "SPECIES_CD")

UK_cep_fulv_2012_biomass_count <- cbind(UK_cep_fulv_2012_biomass,UK_cep_fulv_2012_count)


UK_cep_fulv_2014 <- filter(UK_cep_fulv, YEAR_ == '2014')
UK_cep_fulv_2014_biomass <- summarise_at(UK_cep_fulv_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_2014_biomass$Year <- ('2014')
UK_cep_fulv_2014_biomass$subregion <- ('UK')
UK_cep_fulv_2014_biomass$SPECIES_CD <- ('CEP FULV')

UK_cep_fulv_2014_count <- count(UK_cep_fulv_2014, vars = "SPECIES_CD")

UK_cep_fulv_2014_biomass_count <- cbind(UK_cep_fulv_2014_biomass,UK_cep_fulv_2014_count)


UK_cep_fulv_2016 <- filter(UK_cep_fulv, YEAR_ == '2016')
UK_cep_fulv_2016_biomass <- summarise_at(UK_cep_fulv_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_2016_biomass$Year <- ('2016')
UK_cep_fulv_2016_biomass$subregion <- ('UK')
UK_cep_fulv_2016_biomass$SPECIES_CD <- ('CEP FULV')

UK_cep_fulv_2016_count <- count(UK_cep_fulv_2016, vars = "SPECIES_CD")

UK_cep_fulv_2016_biomass_count <- cbind(UK_cep_fulv_2016_biomass,UK_cep_fulv_2016_count)


UK_cep_fulv_2018 <- filter(UK_cep_fulv, YEAR_ == '2018')
UK_cep_fulv_2018_biomass <- summarise_at(UK_cep_fulv_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_cep_fulv_2018_biomass$Year <- ('2018')
UK_cep_fulv_2018_biomass$subregion <- ('UK')
UK_cep_fulv_2018_biomass$SPECIES_CD <- ('CEP FULV')

UK_cep_fulv_2018_count <- count(UK_cep_fulv_2018, vars = "SPECIES_CD")

UK_cep_fulv_2018_biomass_count <- cbind(UK_cep_fulv_2018_biomass,UK_cep_fulv_2018_count)


UK_cep_fulv_all <- rbind(UK_cep_fulv_2001_biomass_count,UK_cep_fulv_2002_biomass_count,UK_cep_fulv_2003_biomass_count,
                         UK_cep_fulv_2005_biomass_count,UK_cep_fulv_2007_biomass_count,
                         UK_cep_fulv_2008_biomass_count,UK_cep_fulv_2009_biomass_count,UK_cep_fulv_2010_biomass_count,UK_cep_fulv_2011_biomass_count,
                         UK_cep_fulv_2014_biomass_count)

UK_cep_fulv_all$vars <- NULL






UK_epi_itaj <- filter(UK_grouper, SPECIES_CD == "EPI ITAJ")
unique(UK_epi_itaj$YEAR_)

# UK_epi_itaj_1999 <- filter(UK_epi_itaj, YEAR_ == '1999')
# UK_epi_itaj_1999_biomass <- summarise_at(UK_epi_itaj_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_itaj_1999_biomass$Year <- ('1999')
# UK_epi_itaj_1999_biomass$subregion <- ('UK')
# UK_epi_itaj_1999_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# UK_epi_itaj_1999_count <- count(UK_epi_itaj_1999, vars = "SPECIES_CD")
# 
# UK_epi_itaj_1999_biomass_count <- cbind(UK_epi_itaj_1999_biomass,UK_epi_itaj_1999_count)
# 
# 
# 
# UK_epi_itaj_2000 <- filter(UK_epi_itaj, YEAR_ == '2000')
# UK_epi_itaj_2000_biomass <- summarise_at(UK_epi_itaj_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_itaj_2000_biomass$Year <- ('2000')
# UK_epi_itaj_2000_biomass$subregion <- ('UK')
# UK_epi_itaj_2000_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# UK_epi_itaj_2000_count <- count(UK_epi_itaj_2000, vars = "SPECIES_CD")
# 
# UK_epi_itaj_2000_biomass_count <- cbind(UK_epi_itaj_2000_biomass,UK_epi_itaj_2000_count)

UK_epi_itaj_2001 <- filter(UK_epi_itaj, YEAR_ == '2001')
UK_epi_itaj_2001_biomass <- summarise_at(UK_epi_itaj_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_itaj_2001_biomass$Year <- ('2001')
UK_epi_itaj_2001_biomass$subregion <- ('UK')
UK_epi_itaj_2001_biomass$SPECIES_CD <- ('EPI ITAJ')

UK_epi_itaj_2001_count <- count(UK_epi_itaj_2001, vars = "SPECIES_CD")

UK_epi_itaj_2001_biomass_count <- cbind(UK_epi_itaj_2001_biomass,UK_epi_itaj_2001_count)


# UK_epi_itaj_2002 <- filter(UK_epi_itaj, YEAR_ == '2002')
# UK_epi_itaj_2002_biomass <- summarise_at(UK_epi_itaj_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_itaj_2002_biomass$Year <- ('2002')
# UK_epi_itaj_2002_biomass$subregion <- ('UK')
# UK_epi_itaj_2002_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# UK_epi_itaj_2002_count <- count(UK_epi_itaj_2002, vars = "SPECIES_CD")
# 
# UK_epi_itaj_2002_biomass_count <- cbind(UK_epi_itaj_2002_biomass,UK_epi_itaj_2002_count)
# 
# 
# UK_epi_itaj_2003 <- filter(UK_epi_itaj, YEAR_ == '2003')
# UK_epi_itaj_2003_biomass <- summarise_at(UK_epi_itaj_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_itaj_2003_biomass$Year <- ('2003')
# UK_epi_itaj_2003_biomass$subregion <- ('UK')
# UK_epi_itaj_2003_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# UK_epi_itaj_2003_count <- count(UK_epi_itaj_2003, vars = "SPECIES_CD")
# 
# UK_epi_itaj_2003_biomass_count <- cbind(UK_epi_itaj_2003_biomass,UK_epi_itaj_2003_count)
# 
# 
# UK_epi_itaj_2004 <- filter(UK_epi_itaj, YEAR_ == '2004')
# UK_epi_itaj_2004_biomass <- summarise_at(UK_epi_itaj_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_itaj_2004_biomass$Year <- ('2004')
# UK_epi_itaj_2004_biomass$subregion <- ('UK')
# UK_epi_itaj_2004_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# UK_epi_itaj_2004_count <- count(UK_epi_itaj_2004, vars = "SPECIES_CD")
# 
# UK_epi_itaj_2004_biomass_count <- cbind(UK_epi_itaj_2004_biomass,UK_epi_itaj_2004_count)
# 
# 
# UK_epi_itaj_2005 <- filter(UK_epi_itaj, YEAR_ == '2005')
# UK_epi_itaj_2005_biomass <- summarise_at(UK_epi_itaj_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_itaj_2005_biomass$Year <- ('2005')
# UK_epi_itaj_2005_biomass$subregion <- ('UK')
# UK_epi_itaj_2005_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# UK_epi_itaj_2005_count <- count(UK_epi_itaj_2005, vars = "SPECIES_CD")
# 
# UK_epi_itaj_2005_biomass_count <- cbind(UK_epi_itaj_2005_biomass,UK_epi_itaj_2005_count)


# UK_epi_itaj_2006 <- filter(UK_epi_itaj, YEAR_ == '2006')
# UK_epi_itaj_2006_biomass <- summarise_at(UK_epi_itaj_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_itaj_2006_biomass$Year <- ('2006')
# UK_epi_itaj_2006_biomass$subregion <- ('UK')
# UK_epi_itaj_2006_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# 
# UK_epi_itaj_2006_count <- count(UK_epi_itaj_2006, vars = "SPECIES_CD")
# 
# UK_epi_itaj_2006_biomass_count <- cbind(UK_epi_itaj_2006_biomass,UK_epi_itaj_2006_count)
# 
# 
# UK_epi_itaj_2007 <- filter(UK_epi_itaj, YEAR_ == '2007')
# UK_epi_itaj_2007_biomass <- summarise_at(UK_epi_itaj_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_itaj_2007_biomass$Year <- ('2007')
# UK_epi_itaj_2007_biomass$subregion <- ('UK')
# UK_epi_itaj_2007_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# UK_epi_itaj_2007_count <- count(UK_epi_itaj_2007, vars = "SPECIES_CD")
# 
# UK_epi_itaj_2007_biomass_count <- cbind(UK_epi_itaj_2007_biomass,UK_epi_itaj_2007_count)
# 
# 
# UK_epi_itaj_2008 <- filter(UK_epi_itaj, YEAR_ == '2008')
# UK_epi_itaj_2008_biomass <- summarise_at(UK_epi_itaj_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_itaj_2008_biomass$Year <- ('2008')
# UK_epi_itaj_2008_biomass$subregion <- ('UK')
# UK_epi_itaj_2008_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# UK_epi_itaj_2008_count <- count(UK_epi_itaj_2008, vars = "SPECIES_CD")
# 
# UK_epi_itaj_2008_biomass_count <- cbind(UK_epi_itaj_2008_biomass,UK_epi_itaj_2008_count)
# 
# 
# UK_epi_itaj_2009 <- filter(UK_epi_itaj, YEAR_ == '2009')
# UK_epi_itaj_2009_biomass <- summarise_at(UK_epi_itaj_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_itaj_2009_biomass$Year <- ('2009')
# UK_epi_itaj_2009_biomass$subregion <- ('UK')
# UK_epi_itaj_2009_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# UK_epi_itaj_2009_count <- count(UK_epi_itaj_2009, vars = "SPECIES_CD")
# 
# UK_epi_itaj_2009_biomass_count <- cbind(UK_epi_itaj_2009_biomass,UK_epi_itaj_2009_count)


# UK_epi_itaj_2010 <- filter(UK_epi_itaj, YEAR_ == '2010')
# UK_epi_itaj_2010_biomass <- summarise_at(UK_epi_itaj_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_itaj_2010_biomass$Year <- ('2010')
# UK_epi_itaj_2010_biomass$subregion <- ('UK')
# UK_epi_itaj_2010_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# UK_epi_itaj_2010_count <- count(UK_epi_itaj_2010, vars = "SPECIES_CD")
# 
# UK_epi_itaj_2010_biomass_count <- cbind(UK_epi_itaj_2010_biomass,UK_epi_itaj_2010_count)


# UK_epi_itaj_2011 <- filter(UK_epi_itaj, YEAR_ == '2011')
# UK_epi_itaj_2011_biomass <- summarise_at(UK_epi_itaj_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_itaj_2011_biomass$Year <- ('2011')
# UK_epi_itaj_2011_biomass$subregion <- ('UK')
# UK_epi_itaj_2011_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# UK_epi_itaj_2011_count <- count(UK_epi_itaj_2011, vars = "SPECIES_CD")
# 
# UK_epi_itaj_2011_biomass_count <- cbind(UK_epi_itaj_2011_biomass,UK_epi_itaj_2011_count)


UK_epi_itaj_2012 <- filter(UK_epi_itaj, YEAR_ == '2012')
UK_epi_itaj_2012_biomass <- summarise_at(UK_epi_itaj_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_itaj_2012_biomass$Year <- ('2012')
UK_epi_itaj_2012_biomass$subregion <- ('UK')
UK_epi_itaj_2012_biomass$SPECIES_CD <- ('EPI ITAJ')

UK_epi_itaj_2012_count <- count(UK_epi_itaj_2012, vars = "SPECIES_CD")

UK_epi_itaj_2012_biomass_count <- cbind(UK_epi_itaj_2012_biomass,UK_epi_itaj_2012_count)


UK_epi_itaj_2014 <- filter(UK_epi_itaj, YEAR_ == '2014')
UK_epi_itaj_2014_biomass <- summarise_at(UK_epi_itaj_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_itaj_2014_biomass$Year <- ('2014')
UK_epi_itaj_2014_biomass$subregion <- ('UK')
UK_epi_itaj_2014_biomass$SPECIES_CD <- ('EPI ITAJ')

UK_epi_itaj_2014_count <- count(UK_epi_itaj_2014, vars = "SPECIES_CD")

UK_epi_itaj_2014_biomass_count <- cbind(UK_epi_itaj_2014_biomass,UK_epi_itaj_2014_count)

# 
# UK_epi_itaj_2016 <- filter(UK_epi_itaj, YEAR_ == '2016')
# UK_epi_itaj_2016_biomass <- summarise_at(UK_epi_itaj_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_itaj_2016_biomass$Year <- ('2016')
# UK_epi_itaj_2016_biomass$subregion <- ('UK')
# UK_epi_itaj_2016_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# UK_epi_itaj_2016_count <- count(UK_epi_itaj_2016, vars = "SPECIES_CD")
# 
# UK_epi_itaj_2016_biomass_count <- cbind(UK_epi_itaj_2016_biomass,UK_epi_itaj_2016_count)
# 
# 
# UK_epi_itaj_2018 <- filter(UK_epi_itaj, YEAR_ == '2018')
# UK_epi_itaj_2018_biomass <- summarise_at(UK_epi_itaj_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_itaj_2018_biomass$Year <- ('2018')
# UK_epi_itaj_2018_biomass$subregion <- ('UK')
# UK_epi_itaj_2018_biomass$SPECIES_CD <- ('EPI ITAJ')
# 
# UK_epi_itaj_2018_count <- count(UK_epi_itaj_2018, vars = "SPECIES_CD")
# 
# UK_epi_itaj_2018_biomass_count <- cbind(UK_epi_itaj_2018_biomass,UK_epi_itaj_2018_count)
# 

UK_epi_itaj_all <- rbind(UK_epi_itaj_2012_biomass_count,UK_epi_itaj_2014_biomass_count)


UK_epi_itaj_all$vars <- NULL






UK_epi_mori <- filter(UK_grouper, SPECIES_CD == "EPI MORI")
unique(UK_epi_mori$YEAR_)

UK_epi_mori_1999 <- filter(UK_epi_mori, YEAR_ == '1999')
UK_epi_mori_1999_biomass <- summarise_at(UK_epi_mori_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_1999_biomass$Year <- ('1999')
UK_epi_mori_1999_biomass$subregion <- ('UK')
UK_epi_mori_1999_biomass$SPECIES_CD <- ('EPI MORI')

UK_epi_mori_1999_count <- count(UK_epi_mori_1999, vars = "SPECIES_CD")

UK_epi_mori_1999_biomass_count <- cbind(UK_epi_mori_1999_biomass,UK_epi_mori_1999_count)



UK_epi_mori_2000 <- filter(UK_epi_mori, YEAR_ == '2000')
UK_epi_mori_2000_biomass <- summarise_at(UK_epi_mori_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_2000_biomass$Year <- ('2000')
UK_epi_mori_2000_biomass$subregion <- ('UK')
UK_epi_mori_2000_biomass$SPECIES_CD <- ('EPI MORI')

UK_epi_mori_2000_count <- count(UK_epi_mori_2000, vars = "SPECIES_CD")

UK_epi_mori_2000_biomass_count <- cbind(UK_epi_mori_2000_biomass,UK_epi_mori_2000_count)

UK_epi_mori_2001 <- filter(UK_epi_mori, YEAR_ == '2001')
UK_epi_mori_2001_biomass <- summarise_at(UK_epi_mori_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_2001_biomass$Year <- ('2001')
UK_epi_mori_2001_biomass$subregion <- ('UK')
UK_epi_mori_2001_biomass$SPECIES_CD <- ('EPI MORI')

UK_epi_mori_2001_count <- count(UK_epi_mori_2001, vars = "SPECIES_CD")

UK_epi_mori_2001_biomass_count <- cbind(UK_epi_mori_2001_biomass,UK_epi_mori_2001_count)


UK_epi_mori_2002 <- filter(UK_epi_mori, YEAR_ == '2002')
UK_epi_mori_2002_biomass <- summarise_at(UK_epi_mori_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_2002_biomass$Year <- ('2002')
UK_epi_mori_2002_biomass$subregion <- ('UK')
UK_epi_mori_2002_biomass$SPECIES_CD <- ('EPI MORI')

UK_epi_mori_2002_count <- count(UK_epi_mori_2002, vars = "SPECIES_CD")

UK_epi_mori_2002_biomass_count <- cbind(UK_epi_mori_2002_biomass,UK_epi_mori_2002_count)


UK_epi_mori_2003 <- filter(UK_epi_mori, YEAR_ == '2003')
UK_epi_mori_2003_biomass <- summarise_at(UK_epi_mori_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_2003_biomass$Year <- ('2003')
UK_epi_mori_2003_biomass$subregion <- ('UK')
UK_epi_mori_2003_biomass$SPECIES_CD <- ('EPI MORI')

UK_epi_mori_2003_count <- count(UK_epi_mori_2003, vars = "SPECIES_CD")

UK_epi_mori_2003_biomass_count <- cbind(UK_epi_mori_2003_biomass,UK_epi_mori_2003_count)


UK_epi_mori_2004 <- filter(UK_epi_mori, YEAR_ == '2004')
UK_epi_mori_2004_biomass <- summarise_at(UK_epi_mori_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_2004_biomass$Year <- ('2004')
UK_epi_mori_2004_biomass$subregion <- ('UK')
UK_epi_mori_2004_biomass$SPECIES_CD <- ('EPI MORI')

UK_epi_mori_2004_count <- count(UK_epi_mori_2004, vars = "SPECIES_CD")

UK_epi_mori_2004_biomass_count <- cbind(UK_epi_mori_2004_biomass,UK_epi_mori_2004_count)


UK_epi_mori_2005 <- filter(UK_epi_mori, YEAR_ == '2005')
UK_epi_mori_2005_biomass <- summarise_at(UK_epi_mori_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_2005_biomass$Year <- ('2005')
UK_epi_mori_2005_biomass$subregion <- ('UK')
UK_epi_mori_2005_biomass$SPECIES_CD <- ('EPI MORI')

UK_epi_mori_2005_count <- count(UK_epi_mori_2005, vars = "SPECIES_CD")

UK_epi_mori_2005_biomass_count <- cbind(UK_epi_mori_2005_biomass,UK_epi_mori_2005_count)


UK_epi_mori_2006 <- filter(UK_epi_mori, YEAR_ == '2006')
UK_epi_mori_2006_biomass <- summarise_at(UK_epi_mori_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_2006_biomass$Year <- ('2006')
UK_epi_mori_2006_biomass$subregion <- ('UK')
UK_epi_mori_2006_biomass$SPECIES_CD <- ('EPI MORI')


UK_epi_mori_2006_count <- count(UK_epi_mori_2006, vars = "SPECIES_CD")

UK_epi_mori_2006_biomass_count <- cbind(UK_epi_mori_2006_biomass,UK_epi_mori_2006_count)


UK_epi_mori_2007 <- filter(UK_epi_mori, YEAR_ == '2007')
UK_epi_mori_2007_biomass <- summarise_at(UK_epi_mori_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_2007_biomass$Year <- ('2007')
UK_epi_mori_2007_biomass$subregion <- ('UK')
UK_epi_mori_2007_biomass$SPECIES_CD <- ('EPI MORI')

UK_epi_mori_2007_count <- count(UK_epi_mori_2007, vars = "SPECIES_CD")

UK_epi_mori_2007_biomass_count <- cbind(UK_epi_mori_2007_biomass,UK_epi_mori_2007_count)


UK_epi_mori_2008 <- filter(UK_epi_mori, YEAR_ == '2008')
UK_epi_mori_2008_biomass <- summarise_at(UK_epi_mori_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_2008_biomass$Year <- ('2008')
UK_epi_mori_2008_biomass$subregion <- ('UK')
UK_epi_mori_2008_biomass$SPECIES_CD <- ('EPI MORI')

UK_epi_mori_2008_count <- count(UK_epi_mori_2008, vars = "SPECIES_CD")

UK_epi_mori_2008_biomass_count <- cbind(UK_epi_mori_2008_biomass,UK_epi_mori_2008_count)


UK_epi_mori_2009 <- filter(UK_epi_mori, YEAR_ == '2009')
UK_epi_mori_2009_biomass <- summarise_at(UK_epi_mori_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_2009_biomass$Year <- ('2009')
UK_epi_mori_2009_biomass$subregion <- ('UK')
UK_epi_mori_2009_biomass$SPECIES_CD <- ('EPI MORI')

UK_epi_mori_2009_count <- count(UK_epi_mori_2009, vars = "SPECIES_CD")

UK_epi_mori_2009_biomass_count <- cbind(UK_epi_mori_2009_biomass,UK_epi_mori_2009_count)


UK_epi_mori_2010 <- filter(UK_epi_mori, YEAR_ == '2010')
UK_epi_mori_2010_biomass <- summarise_at(UK_epi_mori_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_2010_biomass$Year <- ('2010')
UK_epi_mori_2010_biomass$subregion <- ('UK')
UK_epi_mori_2010_biomass$SPECIES_CD <- ('EPI MORI')

UK_epi_mori_2010_count <- count(UK_epi_mori_2010, vars = "SPECIES_CD")

UK_epi_mori_2010_biomass_count <- cbind(UK_epi_mori_2010_biomass,UK_epi_mori_2010_count)


UK_epi_mori_2011 <- filter(UK_epi_mori, YEAR_ == '2011')
UK_epi_mori_2011_biomass <- summarise_at(UK_epi_mori_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_2011_biomass$Year <- ('2011')
UK_epi_mori_2011_biomass$subregion <- ('UK')
UK_epi_mori_2011_biomass$SPECIES_CD <- ('EPI MORI')

UK_epi_mori_2011_count <- count(UK_epi_mori_2011, vars = "SPECIES_CD")

UK_epi_mori_2011_biomass_count <- cbind(UK_epi_mori_2011_biomass,UK_epi_mori_2011_count)


UK_epi_mori_2012 <- filter(UK_epi_mori, YEAR_ == '2012')
UK_epi_mori_2012_biomass <- summarise_at(UK_epi_mori_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_2012_biomass$Year <- ('2012')
UK_epi_mori_2012_biomass$subregion <- ('UK')
UK_epi_mori_2012_biomass$SPECIES_CD <- ('EPI MORI')

UK_epi_mori_2012_count <- count(UK_epi_mori_2012, vars = "SPECIES_CD")

UK_epi_mori_2012_biomass_count <- cbind(UK_epi_mori_2012_biomass,UK_epi_mori_2012_count)


UK_epi_mori_2014 <- filter(UK_epi_mori, YEAR_ == '2014')
UK_epi_mori_2014_biomass <- summarise_at(UK_epi_mori_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_2014_biomass$Year <- ('2014')
UK_epi_mori_2014_biomass$subregion <- ('UK')
UK_epi_mori_2014_biomass$SPECIES_CD <- ('EPI MORI')

UK_epi_mori_2014_count <- count(UK_epi_mori_2014, vars = "SPECIES_CD")

UK_epi_mori_2014_biomass_count <- cbind(UK_epi_mori_2014_biomass,UK_epi_mori_2014_count)


UK_epi_mori_2016 <- filter(UK_epi_mori, YEAR_ == '2016')
UK_epi_mori_2016_biomass <- summarise_at(UK_epi_mori_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_2016_biomass$Year <- ('2016')
UK_epi_mori_2016_biomass$subregion <- ('UK')
UK_epi_mori_2016_biomass$SPECIES_CD <- ('EPI MORI')

UK_epi_mori_2016_count <- count(UK_epi_mori_2016, vars = "SPECIES_CD")

UK_epi_mori_2016_biomass_count <- cbind(UK_epi_mori_2016_biomass,UK_epi_mori_2016_count)


UK_epi_mori_2018 <- filter(UK_epi_mori, YEAR_ == '2018')
UK_epi_mori_2018_biomass <- summarise_at(UK_epi_mori_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_mori_2018_biomass$Year <- ('2018')
UK_epi_mori_2018_biomass$subregion <- ('UK')
UK_epi_mori_2018_biomass$SPECIES_CD <- ('EPI MORI')

UK_epi_mori_2018_count <- count(UK_epi_mori_2018, vars = "SPECIES_CD")

UK_epi_mori_2018_biomass_count <- cbind(UK_epi_mori_2018_biomass,UK_epi_mori_2018_count)


UK_epi_mori_all <- rbind(UK_epi_mori_1999_biomass_count,UK_epi_mori_2000_biomass_count,UK_epi_mori_2001_biomass_count,UK_epi_mori_2002_biomass_count,UK_epi_mori_2003_biomass_count,
                         UK_epi_mori_2005_biomass_count,UK_epi_mori_2006_biomass_count,UK_epi_mori_2007_biomass_count,
                         UK_epi_mori_2008_biomass_count,UK_epi_mori_2009_biomass_count,UK_epi_mori_2010_biomass_count,UK_epi_mori_2011_biomass_count,
                         UK_epi_mori_2012_biomass_count,UK_epi_mori_2014_biomass_count,UK_epi_mori_2016_biomass_count,UK_epi_mori_2018_biomass_count)

UK_epi_mori_all$vars <- NULL




UK_epi_stri <- filter(UK_grouper, SPECIES_CD == "EPI STRI")
unique(UK_epi_stri$YEAR_)

# UK_epi_stri_1999 <- filter(UK_epi_stri, YEAR_ == '1999')
# UK_epi_stri_1999_biomass <- summarise_at(UK_epi_stri_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_stri_1999_biomass$Year <- ('1999')
# UK_epi_stri_1999_biomass$subregion <- ('UK')
# UK_epi_stri_1999_biomass$SPECIES_CD <- ('EPI STRI')
# 
# UK_epi_stri_1999_count <- count(UK_epi_stri_1999, vars = "SPECIES_CD")
# 
# UK_epi_stri_1999_biomass_count <- cbind(UK_epi_stri_1999_biomass,UK_epi_stri_1999_count)



# UK_epi_stri_2000 <- filter(UK_epi_stri, YEAR_ == '2000')
# UK_epi_stri_2000_biomass <- summarise_at(UK_epi_stri_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_stri_2000_biomass$Year <- ('2000')
# UK_epi_stri_2000_biomass$subregion <- ('UK')
# UK_epi_stri_2000_biomass$SPECIES_CD <- ('EPI STRI')
# 
# UK_epi_stri_2000_count <- count(UK_epi_stri_2000, vars = "SPECIES_CD")
# 
# UK_epi_stri_2000_biomass_count <- cbind(UK_epi_stri_2000_biomass,UK_epi_stri_2000_count)

UK_epi_stri_2001 <- filter(UK_epi_stri, YEAR_ == '2001')
UK_epi_stri_2001_biomass <- summarise_at(UK_epi_stri_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_stri_2001_biomass$Year <- ('2001')
UK_epi_stri_2001_biomass$subregion <- ('UK')
UK_epi_stri_2001_biomass$SPECIES_CD <- ('EPI STRI')

UK_epi_stri_2001_count <- count(UK_epi_stri_2001, vars = "SPECIES_CD")

UK_epi_stri_2001_biomass_count <- cbind(UK_epi_stri_2001_biomass,UK_epi_stri_2001_count)


UK_epi_stri_2002 <- filter(UK_epi_stri, YEAR_ == '2002')
UK_epi_stri_2002_biomass <- summarise_at(UK_epi_stri_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_stri_2002_biomass$Year <- ('2002')
UK_epi_stri_2002_biomass$subregion <- ('UK')
UK_epi_stri_2002_biomass$SPECIES_CD <- ('EPI STRI')

UK_epi_stri_2002_count <- count(UK_epi_stri_2002, vars = "SPECIES_CD")

UK_epi_stri_2002_biomass_count <- cbind(UK_epi_stri_2002_biomass,UK_epi_stri_2002_count)


# UK_epi_stri_2003 <- filter(UK_epi_stri, YEAR_ == '2003')
# UK_epi_stri_2003_biomass <- summarise_at(UK_epi_stri_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_stri_2003_biomass$Year <- ('2003')
# UK_epi_stri_2003_biomass$subregion <- ('UK')
# UK_epi_stri_2003_biomass$SPECIES_CD <- ('EPI STRI')
# 
# UK_epi_stri_2003_count <- count(UK_epi_stri_2003, vars = "SPECIES_CD")
# 
# UK_epi_stri_2003_biomass_count <- cbind(UK_epi_stri_2003_biomass,UK_epi_stri_2003_count)
# 
# 
UK_epi_stri_2004 <- filter(UK_epi_stri, YEAR_ == '2004')
UK_epi_stri_2004_biomass <- summarise_at(UK_epi_stri_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_stri_2004_biomass$Year <- ('2004')
UK_epi_stri_2004_biomass$subregion <- ('UK')
UK_epi_stri_2004_biomass$SPECIES_CD <- ('EPI STRI')

UK_epi_stri_2004_count <- count(UK_epi_stri_2004, vars = "SPECIES_CD")

UK_epi_stri_2004_biomass_count <- cbind(UK_epi_stri_2004_biomass,UK_epi_stri_2004_count)
# 

UK_epi_stri_2005 <- filter(UK_epi_stri, YEAR_ == '2005')
UK_epi_stri_2005_biomass <- summarise_at(UK_epi_stri_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_stri_2005_biomass$Year <- ('2005')
UK_epi_stri_2005_biomass$subregion <- ('UK')
UK_epi_stri_2005_biomass$SPECIES_CD <- ('EPI STRI')

UK_epi_stri_2005_count <- count(UK_epi_stri_2005, vars = "SPECIES_CD")

UK_epi_stri_2005_biomass_count <- cbind(UK_epi_stri_2005_biomass,UK_epi_stri_2005_count)


UK_epi_stri_2006 <- filter(UK_epi_stri, YEAR_ == '2006')
UK_epi_stri_2006_biomass <- summarise_at(UK_epi_stri_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_stri_2006_biomass$Year <- ('2006')
UK_epi_stri_2006_biomass$subregion <- ('UK')
UK_epi_stri_2006_biomass$SPECIES_CD <- ('EPI STRI')


UK_epi_stri_2006_count <- count(UK_epi_stri_2006, vars = "SPECIES_CD")

UK_epi_stri_2006_biomass_count <- cbind(UK_epi_stri_2006_biomass,UK_epi_stri_2006_count)


UK_epi_stri_2007 <- filter(UK_epi_stri, YEAR_ == '2007')
UK_epi_stri_2007_biomass <- summarise_at(UK_epi_stri_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_stri_2007_biomass$Year <- ('2007')
UK_epi_stri_2007_biomass$subregion <- ('UK')
UK_epi_stri_2007_biomass$SPECIES_CD <- ('EPI STRI')

UK_epi_stri_2007_count <- count(UK_epi_stri_2007, vars = "SPECIES_CD")

UK_epi_stri_2007_biomass_count <- cbind(UK_epi_stri_2007_biomass,UK_epi_stri_2007_count)


# UK_epi_stri_2008 <- filter(UK_epi_stri, YEAR_ == '2008')
# UK_epi_stri_2008_biomass <- summarise_at(UK_epi_stri_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_stri_2008_biomass$Year <- ('2008')
# UK_epi_stri_2008_biomass$subregion <- ('UK')
# UK_epi_stri_2008_biomass$SPECIES_CD <- ('EPI STRI')
# 
# UK_epi_stri_2008_count <- count(UK_epi_stri_2008, vars = "SPECIES_CD")
# 
# UK_epi_stri_2008_biomass_count <- cbind(UK_epi_stri_2008_biomass,UK_epi_stri_2008_count)
# 
# 
# UK_epi_stri_2009 <- filter(UK_epi_stri, YEAR_ == '2009')
# UK_epi_stri_2009_biomass <- summarise_at(UK_epi_stri_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_stri_2009_biomass$Year <- ('2009')
# UK_epi_stri_2009_biomass$subregion <- ('UK')
# UK_epi_stri_2009_biomass$SPECIES_CD <- ('EPI STRI')
# 
# UK_epi_stri_2009_count <- count(UK_epi_stri_2009, vars = "SPECIES_CD")
# 
# UK_epi_stri_2009_biomass_count <- cbind(UK_epi_stri_2009_biomass,UK_epi_stri_2009_count)
# 
# 
# UK_epi_stri_2010 <- filter(UK_epi_stri, YEAR_ == '2010')
# UK_epi_stri_2010_biomass <- summarise_at(UK_epi_stri_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_stri_2010_biomass$Year <- ('2010')
# UK_epi_stri_2010_biomass$subregion <- ('UK')
# UK_epi_stri_2010_biomass$SPECIES_CD <- ('EPI STRI')
# 
# UK_epi_stri_2010_count <- count(UK_epi_stri_2010, vars = "SPECIES_CD")
# 
# UK_epi_stri_2010_biomass_count <- cbind(UK_epi_stri_2010_biomass,UK_epi_stri_2010_count)


# UK_epi_stri_2011 <- filter(UK_epi_stri, YEAR_ == '2011')
# UK_epi_stri_2011_biomass <- summarise_at(UK_epi_stri_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_stri_2011_biomass$Year <- ('2011')
# UK_epi_stri_2011_biomass$subregion <- ('UK')
# UK_epi_stri_2011_biomass$SPECIES_CD <- ('EPI STRI')
# 
# UK_epi_stri_2011_count <- count(UK_epi_stri_2011, vars = "SPECIES_CD")
# 
# UK_epi_stri_2011_biomass_count <- cbind(UK_epi_stri_2011_biomass,UK_epi_stri_2011_count)


# UK_epi_stri_2012 <- filter(UK_epi_stri, YEAR_ == '2012')
# UK_epi_stri_2012_biomass <- summarise_at(UK_epi_stri_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_epi_stri_2012_biomass$Year <- ('2012')
# UK_epi_stri_2012_biomass$subregion <- ('UK')
# UK_epi_stri_2012_biomass$SPECIES_CD <- ('EPI STRI')
# 
# UK_epi_stri_2012_count <- count(UK_epi_stri_2012, vars = "SPECIES_CD")
# 
# UK_epi_stri_2012_biomass_count <- cbind(UK_epi_stri_2012_biomass,UK_epi_stri_2012_count)


UK_epi_stri_2014 <- filter(UK_epi_stri, YEAR_ == '2014')
UK_epi_stri_2014_biomass <- summarise_at(UK_epi_stri_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_stri_2014_biomass$Year <- ('2014')
UK_epi_stri_2014_biomass$subregion <- ('UK')
UK_epi_stri_2014_biomass$SPECIES_CD <- ('EPI STRI')

UK_epi_stri_2014_count <- count(UK_epi_stri_2014, vars = "SPECIES_CD")

UK_epi_stri_2014_biomass_count <- cbind(UK_epi_stri_2014_biomass,UK_epi_stri_2014_count)


UK_epi_stri_2016 <- filter(UK_epi_stri, YEAR_ == '2016')
UK_epi_stri_2016_biomass <- summarise_at(UK_epi_stri_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_stri_2016_biomass$Year <- ('2016')
UK_epi_stri_2016_biomass$subregion <- ('UK')
UK_epi_stri_2016_biomass$SPECIES_CD <- ('EPI STRI')

UK_epi_stri_2016_count <- count(UK_epi_stri_2016, vars = "SPECIES_CD")

UK_epi_stri_2016_biomass_count <- cbind(UK_epi_stri_2016_biomass,UK_epi_stri_2016_count)


UK_epi_stri_2018 <- filter(UK_epi_stri, YEAR_ == '2018')
UK_epi_stri_2018_biomass <- summarise_at(UK_epi_stri_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_epi_stri_2018_biomass$Year <- ('2018')
UK_epi_stri_2018_biomass$subregion <- ('UK')
UK_epi_stri_2018_biomass$SPECIES_CD <- ('EPI STRI')

UK_epi_stri_2018_count <- count(UK_epi_stri_2018, vars = "SPECIES_CD")

UK_epi_stri_2018_biomass_count <- cbind(UK_epi_stri_2018_biomass,UK_epi_stri_2018_count)


UK_epi_stri_all <- rbind(UK_epi_stri_2001_biomass_count,UK_epi_stri_2002_biomass_count,UK_epi_stri_2004_biomass_count,UK_epi_stri_2005_biomass_count,UK_epi_stri_2006_biomass_count,
                         UK_epi_stri_2007_biomass_count,UK_epi_stri_2014_biomass_count,UK_epi_stri_2016_biomass_count,UK_epi_stri_2018_biomass_count)


UK_epi_stri_all$vars <- NULL






UK_myc_bona <- filter(UK_grouper, SPECIES_CD == "MYC BONA")
unique(UK_myc_bona$YEAR_)

UK_myc_bona_1999 <- filter(UK_myc_bona, YEAR_ == '1999')
UK_myc_bona_1999_biomass <- summarise_at(UK_myc_bona_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_1999_biomass$Year <- ('1999')
UK_myc_bona_1999_biomass$subregion <- ('UK')
UK_myc_bona_1999_biomass$SPECIES_CD <- ('MYC BONA')

UK_myc_bona_1999_count <- count(UK_myc_bona_1999, vars = "SPECIES_CD")

UK_myc_bona_1999_biomass_count <- cbind(UK_myc_bona_1999_biomass,UK_myc_bona_1999_count)



UK_myc_bona_2000 <- filter(UK_myc_bona, YEAR_ == '2000')
UK_myc_bona_2000_biomass <- summarise_at(UK_myc_bona_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_2000_biomass$Year <- ('2000')
UK_myc_bona_2000_biomass$subregion <- ('UK')
UK_myc_bona_2000_biomass$SPECIES_CD <- ('MYC BONA')

UK_myc_bona_2000_count <- count(UK_myc_bona_2000, vars = "SPECIES_CD")

UK_myc_bona_2000_biomass_count <- cbind(UK_myc_bona_2000_biomass,UK_myc_bona_2000_count)

UK_myc_bona_2001 <- filter(UK_myc_bona, YEAR_ == '2001')
UK_myc_bona_2001_biomass <- summarise_at(UK_myc_bona_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_2001_biomass$Year <- ('2001')
UK_myc_bona_2001_biomass$subregion <- ('UK')
UK_myc_bona_2001_biomass$SPECIES_CD <- ('MYC BONA')

UK_myc_bona_2001_count <- count(UK_myc_bona_2001, vars = "SPECIES_CD")

UK_myc_bona_2001_biomass_count <- cbind(UK_myc_bona_2001_biomass,UK_myc_bona_2001_count)


UK_myc_bona_2002 <- filter(UK_myc_bona, YEAR_ == '2002')
UK_myc_bona_2002_biomass <- summarise_at(UK_myc_bona_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_2002_biomass$Year <- ('2002')
UK_myc_bona_2002_biomass$subregion <- ('UK')
UK_myc_bona_2002_biomass$SPECIES_CD <- ('MYC BONA')

UK_myc_bona_2002_count <- count(UK_myc_bona_2002, vars = "SPECIES_CD")

UK_myc_bona_2002_biomass_count <- cbind(UK_myc_bona_2002_biomass,UK_myc_bona_2002_count)


UK_myc_bona_2003 <- filter(UK_myc_bona, YEAR_ == '2003')
UK_myc_bona_2003_biomass <- summarise_at(UK_myc_bona_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_2003_biomass$Year <- ('2003')
UK_myc_bona_2003_biomass$subregion <- ('UK')
UK_myc_bona_2003_biomass$SPECIES_CD <- ('MYC BONA')

UK_myc_bona_2003_count <- count(UK_myc_bona_2003, vars = "SPECIES_CD")

UK_myc_bona_2003_biomass_count <- cbind(UK_myc_bona_2003_biomass,UK_myc_bona_2003_count)


UK_myc_bona_2004 <- filter(UK_myc_bona, YEAR_ == '2004')
UK_myc_bona_2004_biomass <- summarise_at(UK_myc_bona_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_2004_biomass$Year <- ('2004')
UK_myc_bona_2004_biomass$subregion <- ('UK')
UK_myc_bona_2004_biomass$SPECIES_CD <- ('MYC BONA')

UK_myc_bona_2004_count <- count(UK_myc_bona_2004, vars = "SPECIES_CD")

UK_myc_bona_2004_biomass_count <- cbind(UK_myc_bona_2004_biomass,UK_myc_bona_2004_count)


UK_myc_bona_2005 <- filter(UK_myc_bona, YEAR_ == '2005')
UK_myc_bona_2005_biomass <- summarise_at(UK_myc_bona_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_2005_biomass$Year <- ('2005')
UK_myc_bona_2005_biomass$subregion <- ('UK')
UK_myc_bona_2005_biomass$SPECIES_CD <- ('MYC BONA')

UK_myc_bona_2005_count <- count(UK_myc_bona_2005, vars = "SPECIES_CD")

UK_myc_bona_2005_biomass_count <- cbind(UK_myc_bona_2005_biomass,UK_myc_bona_2005_count)


UK_myc_bona_2006 <- filter(UK_myc_bona, YEAR_ == '2006')
UK_myc_bona_2006_biomass <- summarise_at(UK_myc_bona_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_2006_biomass$Year <- ('2006')
UK_myc_bona_2006_biomass$subregion <- ('UK')
UK_myc_bona_2006_biomass$SPECIES_CD <- ('MYC BONA')


UK_myc_bona_2006_count <- count(UK_myc_bona_2006, vars = "SPECIES_CD")

UK_myc_bona_2006_biomass_count <- cbind(UK_myc_bona_2006_biomass,UK_myc_bona_2006_count)


UK_myc_bona_2007 <- filter(UK_myc_bona, YEAR_ == '2007')
UK_myc_bona_2007_biomass <- summarise_at(UK_myc_bona_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_2007_biomass$Year <- ('2007')
UK_myc_bona_2007_biomass$subregion <- ('UK')
UK_myc_bona_2007_biomass$SPECIES_CD <- ('MYC BONA')

UK_myc_bona_2007_count <- count(UK_myc_bona_2007, vars = "SPECIES_CD")

UK_myc_bona_2007_biomass_count <- cbind(UK_myc_bona_2007_biomass,UK_myc_bona_2007_count)


UK_myc_bona_2008 <- filter(UK_myc_bona, YEAR_ == '2008')
UK_myc_bona_2008_biomass <- summarise_at(UK_myc_bona_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_2008_biomass$Year <- ('2008')
UK_myc_bona_2008_biomass$subregion <- ('UK')
UK_myc_bona_2008_biomass$SPECIES_CD <- ('MYC BONA')

UK_myc_bona_2008_count <- count(UK_myc_bona_2008, vars = "SPECIES_CD")

UK_myc_bona_2008_biomass_count <- cbind(UK_myc_bona_2008_biomass,UK_myc_bona_2008_count)


UK_myc_bona_2009 <- filter(UK_myc_bona, YEAR_ == '2009')
UK_myc_bona_2009_biomass <- summarise_at(UK_myc_bona_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_2009_biomass$Year <- ('2009')
UK_myc_bona_2009_biomass$subregion <- ('UK')
UK_myc_bona_2009_biomass$SPECIES_CD <- ('MYC BONA')

UK_myc_bona_2009_count <- count(UK_myc_bona_2009, vars = "SPECIES_CD")

UK_myc_bona_2009_biomass_count <- cbind(UK_myc_bona_2009_biomass,UK_myc_bona_2009_count)


UK_myc_bona_2010 <- filter(UK_myc_bona, YEAR_ == '2010')
UK_myc_bona_2010_biomass <- summarise_at(UK_myc_bona_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_2010_biomass$Year <- ('2010')
UK_myc_bona_2010_biomass$subregion <- ('UK')
UK_myc_bona_2010_biomass$SPECIES_CD <- ('MYC BONA')

UK_myc_bona_2010_count <- count(UK_myc_bona_2010, vars = "SPECIES_CD")

UK_myc_bona_2010_biomass_count <- cbind(UK_myc_bona_2010_biomass,UK_myc_bona_2010_count)


UK_myc_bona_2011 <- filter(UK_myc_bona, YEAR_ == '2011')
UK_myc_bona_2011_biomass <- summarise_at(UK_myc_bona_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_2011_biomass$Year <- ('2011')
UK_myc_bona_2011_biomass$subregion <- ('UK')
UK_myc_bona_2011_biomass$SPECIES_CD <- ('MYC BONA')

UK_myc_bona_2011_count <- count(UK_myc_bona_2011, vars = "SPECIES_CD")

UK_myc_bona_2011_biomass_count <- cbind(UK_myc_bona_2011_biomass,UK_myc_bona_2011_count)


UK_myc_bona_2012 <- filter(UK_myc_bona, YEAR_ == '2012')
UK_myc_bona_2012_biomass <- summarise_at(UK_myc_bona_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_2012_biomass$Year <- ('2012')
UK_myc_bona_2012_biomass$subregion <- ('UK')
UK_myc_bona_2012_biomass$SPECIES_CD <- ('MYC BONA')

UK_myc_bona_2012_count <- count(UK_myc_bona_2012, vars = "SPECIES_CD")

UK_myc_bona_2012_biomass_count <- cbind(UK_myc_bona_2012_biomass,UK_myc_bona_2012_count)


UK_myc_bona_2014 <- filter(UK_myc_bona, YEAR_ == '2014')
UK_myc_bona_2014_biomass <- summarise_at(UK_myc_bona_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_2014_biomass$Year <- ('2014')
UK_myc_bona_2014_biomass$subregion <- ('UK')
UK_myc_bona_2014_biomass$SPECIES_CD <- ('MYC BONA')

UK_myc_bona_2014_count <- count(UK_myc_bona_2014, vars = "SPECIES_CD")

UK_myc_bona_2014_biomass_count <- cbind(UK_myc_bona_2014_biomass,UK_myc_bona_2014_count)


UK_myc_bona_2016 <- filter(UK_myc_bona, YEAR_ == '2016')
UK_myc_bona_2016_biomass <- summarise_at(UK_myc_bona_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_2016_biomass$Year <- ('2016')
UK_myc_bona_2016_biomass$subregion <- ('UK')
UK_myc_bona_2016_biomass$SPECIES_CD <- ('MYC BONA')

UK_myc_bona_2016_count <- count(UK_myc_bona_2016, vars = "SPECIES_CD")

UK_myc_bona_2016_biomass_count <- cbind(UK_myc_bona_2016_biomass,UK_myc_bona_2016_count)


UK_myc_bona_2018 <- filter(UK_myc_bona, YEAR_ == '2018')
UK_myc_bona_2018_biomass <- summarise_at(UK_myc_bona_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_bona_2018_biomass$Year <- ('2018')
UK_myc_bona_2018_biomass$subregion <- ('UK')
UK_myc_bona_2018_biomass$SPECIES_CD <- ('MYC BONA')

UK_myc_bona_2018_count <- count(UK_myc_bona_2018, vars = "SPECIES_CD")

UK_myc_bona_2018_biomass_count <- cbind(UK_myc_bona_2018_biomass,UK_myc_bona_2018_count)


UK_myc_bona_all <- rbind(UK_myc_bona_1999_biomass_count,UK_myc_bona_2000_biomass_count,UK_myc_bona_2001_biomass_count,UK_myc_bona_2002_biomass_count,UK_myc_bona_2003_biomass_count,
                         UK_myc_bona_2004_biomass_count,UK_myc_bona_2005_biomass_count,UK_myc_bona_2006_biomass_count,UK_myc_bona_2007_biomass_count,
                         UK_myc_bona_2008_biomass_count,UK_myc_bona_2009_biomass_count,UK_myc_bona_2010_biomass_count,UK_myc_bona_2011_biomass_count,
                         UK_myc_bona_2012_biomass_count,UK_myc_bona_2014_biomass_count,UK_myc_bona_2016_biomass_count,UK_myc_bona_2018_biomass_count)

UK_myc_bona_all$vars <- NULL




UK_myc_inte <- filter(UK_grouper, SPECIES_CD == "MYC INTE")
unique(UK_myc_inte$YEAR_)

# UK_myc_inte_1999 <- filter(UK_myc_inte, YEAR_ == '1999')
# UK_myc_inte_1999_biomass <- summarise_at(UK_myc_inte_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_inte_1999_biomass$Year <- ('1999')
# UK_myc_inte_1999_biomass$subregion <- ('UK')
# UK_myc_inte_1999_biomass$SPECIES_CD <- ('MYC INTE')
# 
# UK_myc_inte_1999_count <- count(UK_myc_inte_1999, vars = "SPECIES_CD")
# 
# UK_myc_inte_1999_biomass_count <- cbind(UK_myc_inte_1999_biomass,UK_myc_inte_1999_count)
# 


# UK_myc_inte_2000 <- filter(UK_myc_inte, YEAR_ == '2000')
# UK_myc_inte_2000_biomass <- summarise_at(UK_myc_inte_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_inte_2000_biomass$Year <- ('2000')
# UK_myc_inte_2000_biomass$subregion <- ('UK')
# UK_myc_inte_2000_biomass$SPECIES_CD <- ('MYC INTE')
# 
# UK_myc_inte_2000_count <- count(UK_myc_inte_2000, vars = "SPECIES_CD")
# 
# UK_myc_inte_2000_biomass_count <- cbind(UK_myc_inte_2000_biomass,UK_myc_inte_2000_count)
# 
# UK_myc_inte_2001 <- filter(UK_myc_inte, YEAR_ == '2001')
# UK_myc_inte_2001_biomass <- summarise_at(UK_myc_inte_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_inte_2001_biomass$Year <- ('2001')
# UK_myc_inte_2001_biomass$subregion <- ('UK')
# UK_myc_inte_2001_biomass$SPECIES_CD <- ('MYC INTE')
# 
# UK_myc_inte_2001_count <- count(UK_myc_inte_2001, vars = "SPECIES_CD")
# 
# UK_myc_inte_2001_biomass_count <- cbind(UK_myc_inte_2001_biomass,UK_myc_inte_2001_count)
# 

UK_myc_inte_2002 <- filter(UK_myc_inte, YEAR_ == '2002')
UK_myc_inte_2002_biomass <- summarise_at(UK_myc_inte_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_inte_2002_biomass$Year <- ('2002')
UK_myc_inte_2002_biomass$subregion <- ('UK')
UK_myc_inte_2002_biomass$SPECIES_CD <- ('MYC INTE')

UK_myc_inte_2002_count <- count(UK_myc_inte_2002, vars = "SPECIES_CD")

UK_myc_inte_2002_biomass_count <- cbind(UK_myc_inte_2002_biomass,UK_myc_inte_2002_count)


# UK_myc_inte_2003 <- filter(UK_myc_inte, YEAR_ == '2003')
# UK_myc_inte_2003_biomass <- summarise_at(UK_myc_inte_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_inte_2003_biomass$Year <- ('2003')
# UK_myc_inte_2003_biomass$subregion <- ('UK')
# UK_myc_inte_2003_biomass$SPECIES_CD <- ('MYC INTE')
# 
# UK_myc_inte_2003_count <- count(UK_myc_inte_2003, vars = "SPECIES_CD")
# 
# UK_myc_inte_2003_biomass_count <- cbind(UK_myc_inte_2003_biomass,UK_myc_inte_2003_count)
# 
# 
UK_myc_inte_2004 <- filter(UK_myc_inte, YEAR_ == '2004')
UK_myc_inte_2004_biomass <- summarise_at(UK_myc_inte_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_inte_2004_biomass$Year <- ('2004')
UK_myc_inte_2004_biomass$subregion <- ('UK')
UK_myc_inte_2004_biomass$SPECIES_CD <- ('MYC INTE')

UK_myc_inte_2004_count <- count(UK_myc_inte_2004, vars = "SPECIES_CD")

UK_myc_inte_2004_biomass_count <- cbind(UK_myc_inte_2004_biomass,UK_myc_inte_2004_count)


# UK_myc_inte_2005 <- filter(UK_myc_inte, YEAR_ == '2005')
# UK_myc_inte_2005_biomass <- summarise_at(UK_myc_inte_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_inte_2005_biomass$Year <- ('2005')
# UK_myc_inte_2005_biomass$subregion <- ('UK')
# UK_myc_inte_2005_biomass$SPECIES_CD <- ('MYC INTE')
# 
# UK_myc_inte_2005_count <- count(UK_myc_inte_2005, vars = "SPECIES_CD")
# 
# UK_myc_inte_2005_biomass_count <- cbind(UK_myc_inte_2005_biomass,UK_myc_inte_2005_count)


# UK_myc_inte_2006 <- filter(UK_myc_inte, YEAR_ == '2006')
# UK_myc_inte_2006_biomass <- summarise_at(UK_myc_inte_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_inte_2006_biomass$Year <- ('2006')
# UK_myc_inte_2006_biomass$subregion <- ('UK')
# UK_myc_inte_2006_biomass$SPECIES_CD <- ('MYC INTE')
# 
# 
# UK_myc_inte_2006_count <- count(UK_myc_inte_2006, vars = "SPECIES_CD")
# 
# UK_myc_inte_2006_biomass_count <- cbind(UK_myc_inte_2006_biomass,UK_myc_inte_2006_count)
# 
# 
# UK_myc_inte_2007 <- filter(UK_myc_inte, YEAR_ == '2007')
# UK_myc_inte_2007_biomass <- summarise_at(UK_myc_inte_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_inte_2007_biomass$Year <- ('2007')
# UK_myc_inte_2007_biomass$subregion <- ('UK')
# UK_myc_inte_2007_biomass$SPECIES_CD <- ('MYC INTE')
# 
# UK_myc_inte_2007_count <- count(UK_myc_inte_2007, vars = "SPECIES_CD")
# 
# UK_myc_inte_2007_biomass_count <- cbind(UK_myc_inte_2007_biomass,UK_myc_inte_2007_count)
# 
# 
# UK_myc_inte_2008 <- filter(UK_myc_inte, YEAR_ == '2008')
# UK_myc_inte_2008_biomass <- summarise_at(UK_myc_inte_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_inte_2008_biomass$Year <- ('2008')
# UK_myc_inte_2008_biomass$subregion <- ('UK')
# UK_myc_inte_2008_biomass$SPECIES_CD <- ('MYC INTE')
# 
# UK_myc_inte_2008_count <- count(UK_myc_inte_2008, vars = "SPECIES_CD")
# 
# UK_myc_inte_2008_biomass_count <- cbind(UK_myc_inte_2008_biomass,UK_myc_inte_2008_count)

# 
# UK_myc_inte_2009 <- filter(UK_myc_inte, YEAR_ == '2009')
# UK_myc_inte_2009_biomass <- summarise_at(UK_myc_inte_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_inte_2009_biomass$Year <- ('2009')
# UK_myc_inte_2009_biomass$subregion <- ('UK')
# UK_myc_inte_2009_biomass$SPECIES_CD <- ('MYC INTE')
# 
# UK_myc_inte_2009_count <- count(UK_myc_inte_2009, vars = "SPECIES_CD")
# 
# UK_myc_inte_2009_biomass_count <- cbind(UK_myc_inte_2009_biomass,UK_myc_inte_2009_count)


# UK_myc_inte_2010 <- filter(UK_myc_inte, YEAR_ == '2010')
# UK_myc_inte_2010_biomass <- summarise_at(UK_myc_inte_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_inte_2010_biomass$Year <- ('2010')
# UK_myc_inte_2010_biomass$subregion <- ('UK')
# UK_myc_inte_2010_biomass$SPECIES_CD <- ('MYC INTE')
# 
# UK_myc_inte_2010_count <- count(UK_myc_inte_2010, vars = "SPECIES_CD")
# 
# UK_myc_inte_2010_biomass_count <- cbind(UK_myc_inte_2010_biomass,UK_myc_inte_2010_count)
# 
# 
# UK_myc_inte_2011 <- filter(UK_myc_inte, YEAR_ == '2011')
# UK_myc_inte_2011_biomass <- summarise_at(UK_myc_inte_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_inte_2011_biomass$Year <- ('2011')
# UK_myc_inte_2011_biomass$subregion <- ('UK')
# UK_myc_inte_2011_biomass$SPECIES_CD <- ('MYC INTE')
# 
# UK_myc_inte_2011_count <- count(UK_myc_inte_2011, vars = "SPECIES_CD")
# 
# UK_myc_inte_2011_biomass_count <- cbind(UK_myc_inte_2011_biomass,UK_myc_inte_2011_count)
# 
# 
# UK_myc_inte_2012 <- filter(UK_myc_inte, YEAR_ == '2012')
# UK_myc_inte_2012_biomass <- summarise_at(UK_myc_inte_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_inte_2012_biomass$Year <- ('2012')
# UK_myc_inte_2012_biomass$subregion <- ('UK')
# UK_myc_inte_2012_biomass$SPECIES_CD <- ('MYC INTE')
# 
# UK_myc_inte_2012_count <- count(UK_myc_inte_2012, vars = "SPECIES_CD")
# 
# UK_myc_inte_2012_biomass_count <- cbind(UK_myc_inte_2012_biomass,UK_myc_inte_2012_count)
# 
# 
# UK_myc_inte_2014 <- filter(UK_myc_inte, YEAR_ == '2014')
# UK_myc_inte_2014_biomass <- summarise_at(UK_myc_inte_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_inte_2014_biomass$Year <- ('2014')
# UK_myc_inte_2014_biomass$subregion <- ('UK')
# UK_myc_inte_2014_biomass$SPECIES_CD <- ('MYC INTE')
# 
# UK_myc_inte_2014_count <- count(UK_myc_inte_2014, vars = "SPECIES_CD")
# 
# UK_myc_inte_2014_biomass_count <- cbind(UK_myc_inte_2014_biomass,UK_myc_inte_2014_count)
# 
# 
# UK_myc_inte_2016 <- filter(UK_myc_inte, YEAR_ == '2016')
# UK_myc_inte_2016_biomass <- summarise_at(UK_myc_inte_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_inte_2016_biomass$Year <- ('2016')
# UK_myc_inte_2016_biomass$subregion <- ('UK')
# UK_myc_inte_2016_biomass$SPECIES_CD <- ('MYC INTE')
# 
# UK_myc_inte_2016_count <- count(UK_myc_inte_2016, vars = "SPECIES_CD")
# 
# UK_myc_inte_2016_biomass_count <- cbind(UK_myc_inte_2016_biomass,UK_myc_inte_2016_count)
# 
# 
# UK_myc_inte_2018 <- filter(UK_myc_inte, YEAR_ == '2018')
# UK_myc_inte_2018_biomass <- summarise_at(UK_myc_inte_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_inte_2018_biomass$Year <- ('2018')
# UK_myc_inte_2018_biomass$subregion <- ('UK')
# UK_myc_inte_2018_biomass$SPECIES_CD <- ('MYC INTE')
# 
# UK_myc_inte_2018_count <- count(UK_myc_inte_2018, vars = "SPECIES_CD")
# 
# UK_myc_inte_2018_biomass_count <- cbind(UK_myc_inte_2018_biomass,UK_myc_inte_2018_count)


UK_myc_inte_all <- rbind(UK_myc_inte_2002_biomass_count,UK_myc_inte_2004_biomass_count)

UK_myc_inte_all$vars <- NULL




UK_myc_micr <- filter(UK_grouper, SPECIES_CD == "MYC MICR")
unique(UK_myc_micr$YEAR_)

# UK_myc_micr_1999 <- filter(UK_myc_micr, YEAR_ == '1999')
# UK_myc_micr_1999_biomass <- summarise_at(UK_myc_micr_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_micr_1999_biomass$Year <- ('1999')
# UK_myc_micr_1999_biomass$subregion <- ('UK')
# UK_myc_micr_1999_biomass$SPECIES_CD <- ('MYC MICR')
# 
# UK_myc_micr_1999_count <- count(UK_myc_micr_1999, vars = "SPECIES_CD")
# 
# UK_myc_micr_1999_biomass_count <- cbind(UK_myc_micr_1999_biomass,UK_myc_micr_1999_count)



UK_myc_micr_2000 <- filter(UK_myc_micr, YEAR_ == '2000')
UK_myc_micr_2000_biomass <- summarise_at(UK_myc_micr_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_micr_2000_biomass$Year <- ('2000')
UK_myc_micr_2000_biomass$subregion <- ('UK')
UK_myc_micr_2000_biomass$SPECIES_CD <- ('MYC MICR')

UK_myc_micr_2000_count <- count(UK_myc_micr_2000, vars = "SPECIES_CD")

UK_myc_micr_2000_biomass_count <- cbind(UK_myc_micr_2000_biomass,UK_myc_micr_2000_count)

# UK_myc_micr_2001 <- filter(UK_myc_micr, YEAR_ == '2001')
# UK_myc_micr_2001_biomass <- summarise_at(UK_myc_micr_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_micr_2001_biomass$Year <- ('2001')
# UK_myc_micr_2001_biomass$subregion <- ('UK')
# UK_myc_micr_2001_biomass$SPECIES_CD <- ('MYC MICR')
# 
# UK_myc_micr_2001_count <- count(UK_myc_micr_2001, vars = "SPECIES_CD")
# 
# UK_myc_micr_2001_biomass_count <- cbind(UK_myc_micr_2001_biomass,UK_myc_micr_2001_count)


# UK_myc_micr_2002 <- filter(UK_myc_micr, YEAR_ == '2002')
# UK_myc_micr_2002_biomass <- summarise_at(UK_myc_micr_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_micr_2002_biomass$Year <- ('2002')
# UK_myc_micr_2002_biomass$subregion <- ('UK')
# UK_myc_micr_2002_biomass$SPECIES_CD <- ('MYC MICR')
# 
# UK_myc_micr_2002_count <- count(UK_myc_micr_2002, vars = "SPECIES_CD")
# 
# UK_myc_micr_2002_biomass_count <- cbind(UK_myc_micr_2002_biomass,UK_myc_micr_2002_count)
# 
# 
# UK_myc_micr_2003 <- filter(UK_myc_micr, YEAR_ == '2003')
# UK_myc_micr_2003_biomass <- summarise_at(UK_myc_micr_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_micr_2003_biomass$Year <- ('2003')
# UK_myc_micr_2003_biomass$subregion <- ('UK')
# UK_myc_micr_2003_biomass$SPECIES_CD <- ('MYC MICR')
# 
# UK_myc_micr_2003_count <- count(UK_myc_micr_2003, vars = "SPECIES_CD")
# 
# UK_myc_micr_2003_biomass_count <- cbind(UK_myc_micr_2003_biomass,UK_myc_micr_2003_count)
# 
# 
# UK_myc_micr_2004 <- filter(UK_myc_micr, YEAR_ == '2004')
# UK_myc_micr_2004_biomass <- summarise_at(UK_myc_micr_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_micr_2004_biomass$Year <- ('2004')
# UK_myc_micr_2004_biomass$subregion <- ('UK')
# UK_myc_micr_2004_biomass$SPECIES_CD <- ('MYC MICR')
# 
# UK_myc_micr_2004_count <- count(UK_myc_micr_2004, vars = "SPECIES_CD")
# 
# UK_myc_micr_2004_biomass_count <- cbind(UK_myc_micr_2004_biomass,UK_myc_micr_2004_count)
# 

UK_myc_micr_2005 <- filter(UK_myc_micr, YEAR_ == '2005')
UK_myc_micr_2005_biomass <- summarise_at(UK_myc_micr_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_micr_2005_biomass$Year <- ('2005')
UK_myc_micr_2005_biomass$subregion <- ('UK')
UK_myc_micr_2005_biomass$SPECIES_CD <- ('MYC MICR')

UK_myc_micr_2005_count <- count(UK_myc_micr_2005, vars = "SPECIES_CD")

UK_myc_micr_2005_biomass_count <- cbind(UK_myc_micr_2005_biomass,UK_myc_micr_2005_count)
# 
# 
# UK_myc_micr_2006 <- filter(UK_myc_micr, YEAR_ == '2006')
# UK_myc_micr_2006_biomass <- summarise_at(UK_myc_micr_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_micr_2006_biomass$Year <- ('2006')
# UK_myc_micr_2006_biomass$subregion <- ('UK')
# UK_myc_micr_2006_biomass$SPECIES_CD <- ('MYC MICR')
# 
# 
# UK_myc_micr_2006_count <- count(UK_myc_micr_2006, vars = "SPECIES_CD")
# 
# UK_myc_micr_2006_biomass_count <- cbind(UK_myc_micr_2006_biomass,UK_myc_micr_2006_count)
# 
# 
# UK_myc_micr_2007 <- filter(UK_myc_micr, YEAR_ == '2007')
# UK_myc_micr_2007_biomass <- summarise_at(UK_myc_micr_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_micr_2007_biomass$Year <- ('2007')
# UK_myc_micr_2007_biomass$subregion <- ('UK')
# UK_myc_micr_2007_biomass$SPECIES_CD <- ('MYC MICR')
# 
# UK_myc_micr_2007_count <- count(UK_myc_micr_2007, vars = "SPECIES_CD")
# 
# UK_myc_micr_2007_biomass_count <- cbind(UK_myc_micr_2007_biomass,UK_myc_micr_2007_count)
# 
# 
# UK_myc_micr_2008 <- filter(UK_myc_micr, YEAR_ == '2008')
# UK_myc_micr_2008_biomass <- summarise_at(UK_myc_micr_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_micr_2008_biomass$Year <- ('2008')
# UK_myc_micr_2008_biomass$subregion <- ('UK')
# UK_myc_micr_2008_biomass$SPECIES_CD <- ('MYC MICR')
# 
# UK_myc_micr_2008_count <- count(UK_myc_micr_2008, vars = "SPECIES_CD")
# 
# UK_myc_micr_2008_biomass_count <- cbind(UK_myc_micr_2008_biomass,UK_myc_micr_2008_count)
# 
# 
# UK_myc_micr_2009 <- filter(UK_myc_micr, YEAR_ == '2009')
# UK_myc_micr_2009_biomass <- summarise_at(UK_myc_micr_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_micr_2009_biomass$Year <- ('2009')
# UK_myc_micr_2009_biomass$subregion <- ('UK')
# UK_myc_micr_2009_biomass$SPECIES_CD <- ('MYC MICR')
# 
# UK_myc_micr_2009_count <- count(UK_myc_micr_2009, vars = "SPECIES_CD")
# 
# UK_myc_micr_2009_biomass_count <- cbind(UK_myc_micr_2009_biomass,UK_myc_micr_2009_count)
# 
# 
# UK_myc_micr_2010 <- filter(UK_myc_micr, YEAR_ == '2010')
# UK_myc_micr_2010_biomass <- summarise_at(UK_myc_micr_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_micr_2010_biomass$Year <- ('2010')
# UK_myc_micr_2010_biomass$subregion <- ('UK')
# UK_myc_micr_2010_biomass$SPECIES_CD <- ('MYC MICR')
# 
# UK_myc_micr_2010_count <- count(UK_myc_micr_2010, vars = "SPECIES_CD")
# 
# UK_myc_micr_2010_biomass_count <- cbind(UK_myc_micr_2010_biomass,UK_myc_micr_2010_count)


# UK_myc_micr_2011 <- filter(UK_myc_micr, YEAR_ == '2011')
# UK_myc_micr_2011_biomass <- summarise_at(UK_myc_micr_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_micr_2011_biomass$Year <- ('2011')
# UK_myc_micr_2011_biomass$subregion <- ('UK')
# UK_myc_micr_2011_biomass$SPECIES_CD <- ('MYC MICR')
# 
# UK_myc_micr_2011_count <- count(UK_myc_micr_2011, vars = "SPECIES_CD")
# 
# UK_myc_micr_2011_biomass_count <- cbind(UK_myc_micr_2011_biomass,UK_myc_micr_2011_count)


# UK_myc_micr_2012 <- filter(UK_myc_micr, YEAR_ == '2012')
# UK_myc_micr_2012_biomass <- summarise_at(UK_myc_micr_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_micr_2012_biomass$Year <- ('2012')
# UK_myc_micr_2012_biomass$subregion <- ('UK')
# UK_myc_micr_2012_biomass$SPECIES_CD <- ('MYC MICR')
# 
# UK_myc_micr_2012_count <- count(UK_myc_micr_2012, vars = "SPECIES_CD")
# 
# UK_myc_micr_2012_biomass_count <- cbind(UK_myc_micr_2012_biomass,UK_myc_micr_2012_count)


# UK_myc_micr_2014 <- filter(UK_myc_micr, YEAR_ == '2014')
# UK_myc_micr_2014_biomass <- summarise_at(UK_myc_micr_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_micr_2014_biomass$Year <- ('2014')
# UK_myc_micr_2014_biomass$subregion <- ('UK')
# UK_myc_micr_2014_biomass$SPECIES_CD <- ('MYC MICR')
# 
# UK_myc_micr_2014_count <- count(UK_myc_micr_2014, vars = "SPECIES_CD")
# 
# UK_myc_micr_2014_biomass_count <- cbind(UK_myc_micr_2014_biomass,UK_myc_micr_2014_count)
# 

# UK_myc_micr_2016 <- filter(UK_myc_micr, YEAR_ == '2016')
# UK_myc_micr_2016_biomass <- summarise_at(UK_myc_micr_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_micr_2016_biomass$Year <- ('2016')
# UK_myc_micr_2016_biomass$subregion <- ('UK')
# UK_myc_micr_2016_biomass$SPECIES_CD <- ('MYC MICR')
# 
# UK_myc_micr_2016_count <- count(UK_myc_micr_2016, vars = "SPECIES_CD")
# 
# UK_myc_micr_2016_biomass_count <- cbind(UK_myc_micr_2016_biomass,UK_myc_micr_2016_count)
# 
# 
# UK_myc_micr_2018 <- filter(UK_myc_micr, YEAR_ == '2018')
# UK_myc_micr_2018_biomass <- summarise_at(UK_myc_micr_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_micr_2018_biomass$Year <- ('2018')
# UK_myc_micr_2018_biomass$subregion <- ('UK')
# UK_myc_micr_2018_biomass$SPECIES_CD <- ('MYC MICR')
# 
# UK_myc_micr_2018_count <- count(UK_myc_micr_2018, vars = "SPECIES_CD")
# 
# UK_myc_micr_2018_biomass_count <- cbind(UK_myc_micr_2018_biomass,UK_myc_micr_2018_count)



UK_myc_micr_all <- rbind(UK_myc_micr_2000_biomass_count,UK_myc_micr_2005_biomass_count)

UK_myc_micr_all$vars <- NULL




UK_myc_phen <- filter(UK_grouper, SPECIES_CD == "MYC PHEN")
unique(UK_myc_phen$YEAR_)

# UK_myc_phen_1999 <- filter(UK_myc_phen, YEAR_ == '1999')
# UK_myc_phen_1999_biomass <- summarise_at(UK_myc_phen_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_phen_1999_biomass$Year <- ('1999')
# UK_myc_phen_1999_biomass$subregion <- ('UK')
# UK_myc_phen_1999_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# UK_myc_phen_1999_count <- count(UK_myc_phen_1999, vars = "SPECIES_CD")
# 
# UK_myc_phen_1999_biomass_count <- cbind(UK_myc_phen_1999_biomass,UK_myc_phen_1999_count)
# 
# 
# 
# UK_myc_phen_2000 <- filter(UK_myc_phen, YEAR_ == '2000')
# UK_myc_phen_2000_biomass <- summarise_at(UK_myc_phen_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_phen_2000_biomass$Year <- ('2000')
# UK_myc_phen_2000_biomass$subregion <- ('UK')
# UK_myc_phen_2000_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# UK_myc_phen_2000_count <- count(UK_myc_phen_2000, vars = "SPECIES_CD")
# 
# UK_myc_phen_2000_biomass_count <- cbind(UK_myc_phen_2000_biomass,UK_myc_phen_2000_count)
# 
# UK_myc_phen_2001 <- filter(UK_myc_phen, YEAR_ == '2001')
# UK_myc_phen_2001_biomass <- summarise_at(UK_myc_phen_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_phen_2001_biomass$Year <- ('2001')
# UK_myc_phen_2001_biomass$subregion <- ('UK')
# UK_myc_phen_2001_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# UK_myc_phen_2001_count <- count(UK_myc_phen_2001, vars = "SPECIES_CD")
# 
# UK_myc_phen_2001_biomass_count <- cbind(UK_myc_phen_2001_biomass,UK_myc_phen_2001_count)


UK_myc_phen_2002 <- filter(UK_myc_phen, YEAR_ == '2002')
UK_myc_phen_2002_biomass <- summarise_at(UK_myc_phen_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_phen_2002_biomass$Year <- ('2002')
UK_myc_phen_2002_biomass$subregion <- ('UK')
UK_myc_phen_2002_biomass$SPECIES_CD <- ('MYC PHEN')

UK_myc_phen_2002_count <- count(UK_myc_phen_2002, vars = "SPECIES_CD")

UK_myc_phen_2002_biomass_count <- cbind(UK_myc_phen_2002_biomass,UK_myc_phen_2002_count)


# UK_myc_phen_2003 <- filter(UK_myc_phen, YEAR_ == '2003')
# UK_myc_phen_2003_biomass <- summarise_at(UK_myc_phen_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_phen_2003_biomass$Year <- ('2003')
# UK_myc_phen_2003_biomass$subregion <- ('UK')
# UK_myc_phen_2003_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# UK_myc_phen_2003_count <- count(UK_myc_phen_2003, vars = "SPECIES_CD")
# 
# UK_myc_phen_2003_biomass_count <- cbind(UK_myc_phen_2003_biomass,UK_myc_phen_2003_count)
# 
# 
# UK_myc_phen_2004 <- filter(UK_myc_phen, YEAR_ == '2004')
# UK_myc_phen_2004_biomass <- summarise_at(UK_myc_phen_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_phen_2004_biomass$Year <- ('2004')
# UK_myc_phen_2004_biomass$subregion <- ('UK')
# UK_myc_phen_2004_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# UK_myc_phen_2004_count <- count(UK_myc_phen_2004, vars = "SPECIES_CD")
# 
# UK_myc_phen_2004_biomass_count <- cbind(UK_myc_phen_2004_biomass,UK_myc_phen_2004_count)
# 
# 
# UK_myc_phen_2005 <- filter(UK_myc_phen, YEAR_ == '2005')
# UK_myc_phen_2005_biomass <- summarise_at(UK_myc_phen_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_phen_2005_biomass$Year <- ('2005')
# UK_myc_phen_2005_biomass$subregion <- ('UK')
# UK_myc_phen_2005_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# UK_myc_phen_2005_count <- count(UK_myc_phen_2005, vars = "SPECIES_CD")
# 
# UK_myc_phen_2005_biomass_count <- cbind(UK_myc_phen_2005_biomass,UK_myc_phen_2005_count)
# 
# 
# UK_myc_phen_2006 <- filter(UK_myc_phen, YEAR_ == '2006')
# UK_myc_phen_2006_biomass <- summarise_at(UK_myc_phen_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_phen_2006_biomass$Year <- ('2006')
# UK_myc_phen_2006_biomass$subregion <- ('UK')
# UK_myc_phen_2006_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# 
# UK_myc_phen_2006_count <- count(UK_myc_phen_2006, vars = "SPECIES_CD")
# 
# UK_myc_phen_2006_biomass_count <- cbind(UK_myc_phen_2006_biomass,UK_myc_phen_2006_count)


UK_myc_phen_2007 <- filter(UK_myc_phen, YEAR_ == '2007')
UK_myc_phen_2007_biomass <- summarise_at(UK_myc_phen_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_phen_2007_biomass$Year <- ('2007')
UK_myc_phen_2007_biomass$subregion <- ('UK')
UK_myc_phen_2007_biomass$SPECIES_CD <- ('MYC PHEN')

UK_myc_phen_2007_count <- count(UK_myc_phen_2007, vars = "SPECIES_CD")

UK_myc_phen_2007_biomass_count <- cbind(UK_myc_phen_2007_biomass,UK_myc_phen_2007_count)


# UK_myc_phen_2008 <- filter(UK_myc_phen, YEAR_ == '2008')
# UK_myc_phen_2008_biomass <- summarise_at(UK_myc_phen_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_phen_2008_biomass$Year <- ('2008')
# UK_myc_phen_2008_biomass$subregion <- ('UK')
# UK_myc_phen_2008_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# UK_myc_phen_2008_count <- count(UK_myc_phen_2008, vars = "SPECIES_CD")
# 
# UK_myc_phen_2008_biomass_count <- cbind(UK_myc_phen_2008_biomass,UK_myc_phen_2008_count)
# 
# 
# UK_myc_phen_2009 <- filter(UK_myc_phen, YEAR_ == '2009')
# UK_myc_phen_2009_biomass <- summarise_at(UK_myc_phen_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_phen_2009_biomass$Year <- ('2009')
# UK_myc_phen_2009_biomass$subregion <- ('UK')
# UK_myc_phen_2009_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# UK_myc_phen_2009_count <- count(UK_myc_phen_2009, vars = "SPECIES_CD")
# 
# UK_myc_phen_2009_biomass_count <- cbind(UK_myc_phen_2009_biomass,UK_myc_phen_2009_count)
# 
# 
# UK_myc_phen_2010 <- filter(UK_myc_phen, YEAR_ == '2010')
# UK_myc_phen_2010_biomass <- summarise_at(UK_myc_phen_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_phen_2010_biomass$Year <- ('2010')
# UK_myc_phen_2010_biomass$subregion <- ('UK')
# UK_myc_phen_2010_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# UK_myc_phen_2010_count <- count(UK_myc_phen_2010, vars = "SPECIES_CD")
# 
# UK_myc_phen_2010_biomass_count <- cbind(UK_myc_phen_2010_biomass,UK_myc_phen_2010_count)
# 

UK_myc_phen_2011 <- filter(UK_myc_phen, YEAR_ == '2011')
UK_myc_phen_2011_biomass <- summarise_at(UK_myc_phen_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_phen_2011_biomass$Year <- ('2011')
UK_myc_phen_2011_biomass$subregion <- ('UK')
UK_myc_phen_2011_biomass$SPECIES_CD <- ('MYC PHEN')

UK_myc_phen_2011_count <- count(UK_myc_phen_2011, vars = "SPECIES_CD")

UK_myc_phen_2011_biomass_count <- cbind(UK_myc_phen_2011_biomass,UK_myc_phen_2011_count)


UK_myc_phen_2012 <- filter(UK_myc_phen, YEAR_ == '2012')
UK_myc_phen_2012_biomass <- summarise_at(UK_myc_phen_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_phen_2012_biomass$Year <- ('2012')
UK_myc_phen_2012_biomass$subregion <- ('UK')
UK_myc_phen_2012_biomass$SPECIES_CD <- ('MYC PHEN')

UK_myc_phen_2012_count <- count(UK_myc_phen_2012, vars = "SPECIES_CD")

UK_myc_phen_2012_biomass_count <- cbind(UK_myc_phen_2012_biomass,UK_myc_phen_2012_count)


# UK_myc_phen_2014 <- filter(UK_myc_phen, YEAR_ == '2014')
# UK_myc_phen_2014_biomass <- summarise_at(UK_myc_phen_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_phen_2014_biomass$Year <- ('2014')
# UK_myc_phen_2014_biomass$subregion <- ('UK')
# UK_myc_phen_2014_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# UK_myc_phen_2014_count <- count(UK_myc_phen_2014, vars = "SPECIES_CD")
# 
# UK_myc_phen_2014_biomass_count <- cbind(UK_myc_phen_2014_biomass,UK_myc_phen_2014_count)
# 
# 
# UK_myc_phen_2016 <- filter(UK_myc_phen, YEAR_ == '2016')
# UK_myc_phen_2016_biomass <- summarise_at(UK_myc_phen_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_phen_2016_biomass$Year <- ('2016')
# UK_myc_phen_2016_biomass$subregion <- ('UK')
# UK_myc_phen_2016_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# UK_myc_phen_2016_count <- count(UK_myc_phen_2016, vars = "SPECIES_CD")
# 
# UK_myc_phen_2016_biomass_count <- cbind(UK_myc_phen_2016_biomass,UK_myc_phen_2016_count)
# 
# 
# UK_myc_phen_2018 <- filter(UK_myc_phen, YEAR_ == '2018')
# UK_myc_phen_2018_biomass <- summarise_at(UK_myc_phen_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_phen_2018_biomass$Year <- ('2018')
# UK_myc_phen_2018_biomass$subregion <- ('UK')
# UK_myc_phen_2018_biomass$SPECIES_CD <- ('MYC PHEN')
# 
# UK_myc_phen_2018_count <- count(UK_myc_phen_2018, vars = "SPECIES_CD")
# 
# UK_myc_phen_2018_biomass_count <- cbind(UK_myc_phen_2018_biomass,UK_myc_phen_2018_count)
# 

UK_myc_phen_all <- rbind(UK_myc_phen_2002_biomass_count,UK_myc_phen_2007_biomass_count,UK_myc_phen_2011_biomass_count,UK_myc_phen_2012_biomass_count)
                         
UK_myc_phen_all$vars <- NULL



UK_myc_tigr <- filter(UK_grouper, SPECIES_CD == "MYC TIGR")
unique(UK_myc_tigr$YEAR_)

# UK_myc_tigr_1999 <- filter(UK_myc_tigr, YEAR_ == '1999')
# UK_myc_tigr_1999_biomass <- summarise_at(UK_myc_tigr_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_tigr_1999_biomass$Year <- ('1999')
# UK_myc_tigr_1999_biomass$subregion <- ('UK')
# UK_myc_tigr_1999_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# UK_myc_tigr_1999_count <- count(UK_myc_tigr_1999, vars = "SPECIES_CD")
# 
# UK_myc_tigr_1999_biomass_count <- cbind(UK_myc_tigr_1999_biomass,UK_myc_tigr_1999_count)





UK_myc_tigr_2000 <- filter(UK_myc_tigr, YEAR_ == '2000')
UK_myc_tigr_2000_biomass <- summarise_at(UK_myc_tigr_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_tigr_2000_biomass$Year <- ('2000')
UK_myc_tigr_2000_biomass$subregion <- ('UK')
UK_myc_tigr_2000_biomass$SPECIES_CD <- ('MYC TIGR')

UK_myc_tigr_2000_count <- count(UK_myc_tigr_2000, vars = "SPECIES_CD")

UK_myc_tigr_2000_biomass_count <- cbind(UK_myc_tigr_2000_biomass,UK_myc_tigr_2000_count)

# UK_myc_tigr_2001 <- filter(UK_myc_tigr, YEAR_ == '2001')
# UK_myc_tigr_2001_biomass <- summarise_at(UK_myc_tigr_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_tigr_2001_biomass$Year <- ('2001')
# UK_myc_tigr_2001_biomass$subregion <- ('UK')
# UK_myc_tigr_2001_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# UK_myc_tigr_2001_count <- count(UK_myc_tigr_2001, vars = "SPECIES_CD")
# 
# UK_myc_tigr_2001_biomass_count <- cbind(UK_myc_tigr_2001_biomass,UK_myc_tigr_2001_count)
# 
# 
# UK_myc_tigr_2002 <- filter(UK_myc_tigr, YEAR_ == '2002')
# UK_myc_tigr_2002_biomass <- summarise_at(UK_myc_tigr_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_tigr_2002_biomass$Year <- ('2002')
# UK_myc_tigr_2002_biomass$subregion <- ('UK')
# UK_myc_tigr_2002_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# UK_myc_tigr_2002_count <- count(UK_myc_tigr_2002, vars = "SPECIES_CD")
# 
# UK_myc_tigr_2002_biomass_count <- cbind(UK_myc_tigr_2002_biomass,UK_myc_tigr_2002_count)


# UK_myc_tigr_2003 <- filter(UK_myc_tigr, YEAR_ == '2003')
# UK_myc_tigr_2003_biomass <- summarise_at(UK_myc_tigr_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_tigr_2003_biomass$Year <- ('2003')
# UK_myc_tigr_2003_biomass$subregion <- ('UK')
# UK_myc_tigr_2003_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# UK_myc_tigr_2003_count <- count(UK_myc_tigr_2003, vars = "SPECIES_CD")
# 
# UK_myc_tigr_2003_biomass_count <- cbind(UK_myc_tigr_2003_biomass,UK_myc_tigr_2003_count)
# 
# 
# UK_myc_tigr_2004 <- filter(UK_myc_tigr, YEAR_ == '2004')
# UK_myc_tigr_2004_biomass <- summarise_at(UK_myc_tigr_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_tigr_2004_biomass$Year <- ('2004')
# UK_myc_tigr_2004_biomass$subregion <- ('UK')
# UK_myc_tigr_2004_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# UK_myc_tigr_2004_count <- count(UK_myc_tigr_2004, vars = "SPECIES_CD")
# 
# UK_myc_tigr_2004_biomass_count <- cbind(UK_myc_tigr_2004_biomass,UK_myc_tigr_2004_count)
# 
# 
# UK_myc_tigr_2005 <- filter(UK_myc_tigr, YEAR_ == '2005')
# UK_myc_tigr_2005_biomass <- summarise_at(UK_myc_tigr_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_tigr_2005_biomass$Year <- ('2005')
# UK_myc_tigr_2005_biomass$subregion <- ('UK')
# UK_myc_tigr_2005_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# UK_myc_tigr_2005_count <- count(UK_myc_tigr_2005, vars = "SPECIES_CD")
# 
# UK_myc_tigr_2005_biomass_count <- cbind(UK_myc_tigr_2005_biomass,UK_myc_tigr_2005_count)
# 
# 
# UK_myc_tigr_2006 <- filter(UK_myc_tigr, YEAR_ == '2006')
# UK_myc_tigr_2006_biomass <- summarise_at(UK_myc_tigr_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_tigr_2006_biomass$Year <- ('2006')
# UK_myc_tigr_2006_biomass$subregion <- ('UK')
# UK_myc_tigr_2006_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# 
# UK_myc_tigr_2006_count <- count(UK_myc_tigr_2006, vars = "SPECIES_CD")
# 
# UK_myc_tigr_2006_biomass_count <- cbind(UK_myc_tigr_2006_biomass,UK_myc_tigr_2006_count)
# 
# 
# UK_myc_tigr_2007 <- filter(UK_myc_tigr, YEAR_ == '2007')
# UK_myc_tigr_2007_biomass <- summarise_at(UK_myc_tigr_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_tigr_2007_biomass$Year <- ('2007')
# UK_myc_tigr_2007_biomass$subregion <- ('UK')
# UK_myc_tigr_2007_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# UK_myc_tigr_2007_count <- count(UK_myc_tigr_2007, vars = "SPECIES_CD")
# 
# UK_myc_tigr_2007_biomass_count <- cbind(UK_myc_tigr_2007_biomass,UK_myc_tigr_2007_count)
# 
# 
# UK_myc_tigr_2008 <- filter(UK_myc_tigr, YEAR_ == '2008')
# UK_myc_tigr_2008_biomass <- summarise_at(UK_myc_tigr_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_tigr_2008_biomass$Year <- ('2008')
# UK_myc_tigr_2008_biomass$subregion <- ('UK')
# UK_myc_tigr_2008_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# UK_myc_tigr_2008_count <- count(UK_myc_tigr_2008, vars = "SPECIES_CD")
# 
# UK_myc_tigr_2008_biomass_count <- cbind(UK_myc_tigr_2008_biomass,UK_myc_tigr_2008_count)
# 
# 
# UK_myc_tigr_2009 <- filter(UK_myc_tigr, YEAR_ == '2009')
# UK_myc_tigr_2009_biomass <- summarise_at(UK_myc_tigr_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_tigr_2009_biomass$Year <- ('2009')
# UK_myc_tigr_2009_biomass$subregion <- ('UK')
# UK_myc_tigr_2009_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# UK_myc_tigr_2009_count <- count(UK_myc_tigr_2009, vars = "SPECIES_CD")
# 
# UK_myc_tigr_2009_biomass_count <- cbind(UK_myc_tigr_2009_biomass,UK_myc_tigr_2009_count)
# 
# 
# UK_myc_tigr_2010 <- filter(UK_myc_tigr, YEAR_ == '2010')
# UK_myc_tigr_2010_biomass <- summarise_at(UK_myc_tigr_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_tigr_2010_biomass$Year <- ('2010')
# UK_myc_tigr_2010_biomass$subregion <- ('UK')
# UK_myc_tigr_2010_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# UK_myc_tigr_2010_count <- count(UK_myc_tigr_2010, vars = "SPECIES_CD")
# 
# UK_myc_tigr_2010_biomass_count <- cbind(UK_myc_tigr_2010_biomass,UK_myc_tigr_2010_count)
# 
# 
# UK_myc_tigr_2011 <- filter(UK_myc_tigr, YEAR_ == '2011')
# UK_myc_tigr_2011_biomass <- summarise_at(UK_myc_tigr_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_tigr_2011_biomass$Year <- ('2011')
# UK_myc_tigr_2011_biomass$subregion <- ('UK')
# UK_myc_tigr_2011_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# UK_myc_tigr_2011_count <- count(UK_myc_tigr_2011, vars = "SPECIES_CD")
# 
# UK_myc_tigr_2011_biomass_count <- cbind(UK_myc_tigr_2011_biomass,UK_myc_tigr_2011_count)
# 
# 
# UK_myc_tigr_2012 <- filter(UK_myc_tigr, YEAR_ == '2012')
# UK_myc_tigr_2012_biomass <- summarise_at(UK_myc_tigr_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_tigr_2012_biomass$Year <- ('2012')
# UK_myc_tigr_2012_biomass$subregion <- ('UK')
# UK_myc_tigr_2012_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# UK_myc_tigr_2012_count <- count(UK_myc_tigr_2012, vars = "SPECIES_CD")
# 
# UK_myc_tigr_2012_biomass_count <- cbind(UK_myc_tigr_2012_biomass,UK_myc_tigr_2012_count)
# 
# 
# UK_myc_tigr_2014 <- filter(UK_myc_tigr, YEAR_ == '2014')
# UK_myc_tigr_2014_biomass <- summarise_at(UK_myc_tigr_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_tigr_2014_biomass$Year <- ('2014')
# UK_myc_tigr_2014_biomass$subregion <- ('UK')
# UK_myc_tigr_2014_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# UK_myc_tigr_2014_count <- count(UK_myc_tigr_2014, vars = "SPECIES_CD")
# 
# UK_myc_tigr_2014_biomass_count <- cbind(UK_myc_tigr_2014_biomass,UK_myc_tigr_2014_count)
# 
# 
# UK_myc_tigr_2016 <- filter(UK_myc_tigr, YEAR_ == '2016')
# UK_myc_tigr_2016_biomass <- summarise_at(UK_myc_tigr_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_tigr_2016_biomass$Year <- ('2016')
# UK_myc_tigr_2016_biomass$subregion <- ('UK')
# UK_myc_tigr_2016_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# UK_myc_tigr_2016_count <- count(UK_myc_tigr_2016, vars = "SPECIES_CD")
# 
# UK_myc_tigr_2016_biomass_count <- cbind(UK_myc_tigr_2016_biomass,UK_myc_tigr_2016_count)
# 
# 
# UK_myc_tigr_2018 <- filter(UK_myc_tigr, YEAR_ == '2018')
# UK_myc_tigr_2018_biomass <- summarise_at(UK_myc_tigr_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_tigr_2018_biomass$Year <- ('2018')
# UK_myc_tigr_2018_biomass$subregion <- ('UK')
# UK_myc_tigr_2018_biomass$SPECIES_CD <- ('MYC TIGR')
# 
# UK_myc_tigr_2018_count <- count(UK_myc_tigr_2018, vars = "SPECIES_CD")
# 
# UK_myc_tigr_2018_biomass_count <- cbind(UK_myc_tigr_2018_biomass,UK_myc_tigr_2018_count)


UK_myc_tigr_all <- rbind(UK_myc_tigr_2000_biomass_count)




UK_myc_tigr_all$vars <- NULL





 UK_myc_vene <- filter(UK_grouper, SPECIES_CD == "MYC VENE")
#  unique(UK_myc_vene$YEAR_)
# 
# UK_myc_vene_1999 <- filter(UK_myc_vene, YEAR_ == '1999')
# UK_myc_vene_1999_biomass <- summarise_at(UK_myc_vene_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_vene_1999_biomass$Year <- ('1999')
# UK_myc_vene_1999_biomass$subregion <- ('UK')
# UK_myc_vene_1999_biomass$SPECIES_CD <- ('MYC VENE')
# 
# UK_myc_vene_1999_count <- count(UK_myc_vene_1999, vars = "SPECIES_CD")
# 
# UK_myc_vene_1999_biomass_count <- cbind(UK_myc_vene_1999_biomass,UK_myc_vene_1999_count)



UK_myc_vene_2000 <- filter(UK_myc_vene, YEAR_ == '2000')
UK_myc_vene_2000_biomass <- summarise_at(UK_myc_vene_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_vene_2000_biomass$Year <- ('2000')
UK_myc_vene_2000_biomass$subregion <- ('UK')
UK_myc_vene_2000_biomass$SPECIES_CD <- ('MYC VENE')

UK_myc_vene_2000_count <- count(UK_myc_vene_2000, vars = "SPECIES_CD")

UK_myc_vene_2000_biomass_count <- cbind(UK_myc_vene_2000_biomass,UK_myc_vene_2000_count)

UK_myc_vene_2001 <- filter(UK_myc_vene, YEAR_ == '2001')
UK_myc_vene_2001_biomass <- summarise_at(UK_myc_vene_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_vene_2001_biomass$Year <- ('2001')
UK_myc_vene_2001_biomass$subregion <- ('UK')
UK_myc_vene_2001_biomass$SPECIES_CD <- ('MYC VENE')

UK_myc_vene_2001_count <- count(UK_myc_vene_2001, vars = "SPECIES_CD")

UK_myc_vene_2001_biomass_count <- cbind(UK_myc_vene_2001_biomass,UK_myc_vene_2001_count)


UK_myc_vene_2002 <- filter(UK_myc_vene, YEAR_ == '2002')
UK_myc_vene_2002_biomass <- summarise_at(UK_myc_vene_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_vene_2002_biomass$Year <- ('2002')
UK_myc_vene_2002_biomass$subregion <- ('UK')
UK_myc_vene_2002_biomass$SPECIES_CD <- ('MYC VENE')

UK_myc_vene_2002_count <- count(UK_myc_vene_2002, vars = "SPECIES_CD")

UK_myc_vene_2002_biomass_count <- cbind(UK_myc_vene_2002_biomass,UK_myc_vene_2002_count)


UK_myc_vene_2003 <- filter(UK_myc_vene, YEAR_ == '2003')
UK_myc_vene_2003_biomass <- summarise_at(UK_myc_vene_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_vene_2003_biomass$Year <- ('2003')
UK_myc_vene_2003_biomass$subregion <- ('UK')
UK_myc_vene_2003_biomass$SPECIES_CD <- ('MYC VENE')

UK_myc_vene_2003_count <- count(UK_myc_vene_2003, vars = "SPECIES_CD")

UK_myc_vene_2003_biomass_count <- cbind(UK_myc_vene_2003_biomass,UK_myc_vene_2003_count)


UK_myc_vene_2004 <- filter(UK_myc_vene, YEAR_ == '2004')
UK_myc_vene_2004_biomass <- summarise_at(UK_myc_vene_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_vene_2004_biomass$Year <- ('2004')
UK_myc_vene_2004_biomass$subregion <- ('UK')
UK_myc_vene_2004_biomass$SPECIES_CD <- ('MYC VENE')

UK_myc_vene_2004_count <- count(UK_myc_vene_2004, vars = "SPECIES_CD")

UK_myc_vene_2004_biomass_count <- cbind(UK_myc_vene_2004_biomass,UK_myc_vene_2004_count)


# UK_myc_vene_2005 <- filter(UK_myc_vene, YEAR_ == '2005')
# UK_myc_vene_2005_biomass <- summarise_at(UK_myc_vene_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_vene_2005_biomass$Year <- ('2005')
# UK_myc_vene_2005_biomass$subregion <- ('UK')
# UK_myc_vene_2005_biomass$SPECIES_CD <- ('MYC VENE')
# 
# UK_myc_vene_2005_count <- count(UK_myc_vene_2005, vars = "SPECIES_CD")
# 
# UK_myc_vene_2005_biomass_count <- cbind(UK_myc_vene_2005_biomass,UK_myc_vene_2005_count)
# 
# 
# UK_myc_vene_2006 <- filter(UK_myc_vene, YEAR_ == '2006')
# UK_myc_vene_2006_biomass <- summarise_at(UK_myc_vene_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_vene_2006_biomass$Year <- ('2006')
# UK_myc_vene_2006_biomass$subregion <- ('UK')
# UK_myc_vene_2006_biomass$SPECIES_CD <- ('MYC VENE')
# 
# 
# UK_myc_vene_2006_count <- count(UK_myc_vene_2006, vars = "SPECIES_CD")

# UK_myc_vene_2006_biomass_count <- cbind(UK_myc_vene_2006_biomass,UK_myc_vene_2006_count)
# 
# 
# UK_myc_vene_2007 <- filter(UK_myc_vene, YEAR_ == '2007')
# UK_myc_vene_2007_biomass <- summarise_at(UK_myc_vene_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_vene_2007_biomass$Year <- ('2007')
# UK_myc_vene_2007_biomass$subregion <- ('UK')
# UK_myc_vene_2007_biomass$SPECIES_CD <- ('MYC VENE')
# 
# UK_myc_vene_2007_count <- count(UK_myc_vene_2007, vars = "SPECIES_CD")
# 
# UK_myc_vene_2007_biomass_count <- cbind(UK_myc_vene_2007_biomass,UK_myc_vene_2007_count)


UK_myc_vene_2008 <- filter(UK_myc_vene, YEAR_ == '2008')
UK_myc_vene_2008_biomass <- summarise_at(UK_myc_vene_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_vene_2008_biomass$Year <- ('2008')
UK_myc_vene_2008_biomass$subregion <- ('UK')
UK_myc_vene_2008_biomass$SPECIES_CD <- ('MYC VENE')

UK_myc_vene_2008_count <- count(UK_myc_vene_2008, vars = "SPECIES_CD")

UK_myc_vene_2008_biomass_count <- cbind(UK_myc_vene_2008_biomass,UK_myc_vene_2008_count)


UK_myc_vene_2009 <- filter(UK_myc_vene, YEAR_ == '2009')
UK_myc_vene_2009_biomass <- summarise_at(UK_myc_vene_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_myc_vene_2009_biomass$Year <- ('2009')
UK_myc_vene_2009_biomass$subregion <- ('UK')
UK_myc_vene_2009_biomass$SPECIES_CD <- ('MYC VENE')

UK_myc_vene_2009_count <- count(UK_myc_vene_2009, vars = "SPECIES_CD")

UK_myc_vene_2009_biomass_count <- cbind(UK_myc_vene_2009_biomass,UK_myc_vene_2009_count)


# UK_myc_vene_2010 <- filter(UK_myc_vene, YEAR_ == '2010')
# UK_myc_vene_2010_biomass <- summarise_at(UK_myc_vene_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_vene_2010_biomass$Year <- ('2010')
# UK_myc_vene_2010_biomass$subregion <- ('UK')
# UK_myc_vene_2010_biomass$SPECIES_CD <- ('MYC VENE')
# 
# UK_myc_vene_2010_count <- count(UK_myc_vene_2010, vars = "SPECIES_CD")
# 
# UK_myc_vene_2010_biomass_count <- cbind(UK_myc_vene_2010_biomass,UK_myc_vene_2010_count)
# 
# 
# UK_myc_vene_2011 <- filter(UK_myc_vene, YEAR_ == '2011')
# UK_myc_vene_2011_biomass <- summarise_at(UK_myc_vene_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_vene_2011_biomass$Year <- ('2011')
# UK_myc_vene_2011_biomass$subregion <- ('UK')
# UK_myc_vene_2011_biomass$SPECIES_CD <- ('MYC VENE')
# 
# UK_myc_vene_2011_count <- count(UK_myc_vene_2011, vars = "SPECIES_CD")
# 
# UK_myc_vene_2011_biomass_count <- cbind(UK_myc_vene_2011_biomass,UK_myc_vene_2011_count)
# 
# 
# UK_myc_vene_2012 <- filter(UK_myc_vene, YEAR_ == '2012')
# UK_myc_vene_2012_biomass <- summarise_at(UK_myc_vene_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_vene_2012_biomass$Year <- ('2012')
# UK_myc_vene_2012_biomass$subregion <- ('UK')
# UK_myc_vene_2012_biomass$SPECIES_CD <- ('MYC VENE')
# 
# UK_myc_vene_2012_count <- count(UK_myc_vene_2012, vars = "SPECIES_CD")
# 
# UK_myc_vene_2012_biomass_count <- cbind(UK_myc_vene_2012_biomass,UK_myc_vene_2012_count)
# 
# 
# UK_myc_vene_2014 <- filter(UK_myc_vene, YEAR_ == '2014')
# UK_myc_vene_2014_biomass <- summarise_at(UK_myc_vene_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_vene_2014_biomass$Year <- ('2014')
# UK_myc_vene_2014_biomass$subregion <- ('UK')
# UK_myc_vene_2014_biomass$SPECIES_CD <- ('MYC VENE')
# 
# UK_myc_vene_2014_count <- count(UK_myc_vene_2014, vars = "SPECIES_CD")
# 
# UK_myc_vene_2014_biomass_count <- cbind(UK_myc_vene_2014_biomass,UK_myc_vene_2014_count)
# 
# 
# UK_myc_vene_2016 <- filter(UK_myc_vene, YEAR_ == '2016')
# UK_myc_vene_2016_biomass <- summarise_at(UK_myc_vene_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_vene_2016_biomass$Year <- ('2016')
# UK_myc_vene_2016_biomass$subregion <- ('UK')
# UK_myc_vene_2016_biomass$SPECIES_CD <- ('MYC VENE')
# 
# UK_myc_vene_2016_count <- count(UK_myc_vene_2016, vars = "SPECIES_CD")
# 
# UK_myc_vene_2016_biomass_count <- cbind(UK_myc_vene_2016_biomass,UK_myc_vene_2016_count)
# 
# 
# UK_myc_vene_2018 <- filter(UK_myc_vene, YEAR_ == '2018')
# UK_myc_vene_2018_biomass <- summarise_at(UK_myc_vene_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_myc_vene_2018_biomass$Year <- ('2018')
# UK_myc_vene_2018_biomass$subregion <- ('UK')
# UK_myc_vene_2018_biomass$SPECIES_CD <- ('MYC VENE')
# 
# UK_myc_vene_2018_count <- count(UK_myc_vene_2018, vars = "SPECIES_CD")
# 
# UK_myc_vene_2018_biomass_count <- cbind(UK_myc_vene_2018_biomass,UK_myc_vene_2018_count)


# UK_myc_vene_all <- rbind(UK_myc_vene_2000_biomass_count,UK_myc_vene_2001_biomass_count,UK_myc_vene_2002_biomass_count,UK_myc_vene_2003_biomass_count,
#                          UK_myc_vene_2004_biomass_count,
#                          UK_myc_vene_2008_biomass_count,UK_myc_vene_2009_biomass_count)
# 
# 
# UK_myc_vene_all$vars <- NULL
# 



UK_srr_spe <- filter(UK_grouper, SPECIES_CD == "SRR SPE.")
unique(UK_srr_spe$YEAR_)

# UK_srr_spe_1999 <- filter(UK_srr_spe, YEAR_ == '1999')
# UK_srr_spe_1999_biomass <- summarise_at(UK_srr_spe_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_srr_spe_1999_biomass$Year <- ('1999')
# UK_srr_spe_1999_biomass$subregion <- ('UK')
# UK_srr_spe_1999_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# UK_srr_spe_1999_count <- count(UK_srr_spe_1999, vars = "SPECIES_CD")
# 
# UK_srr_spe_1999_biomass_count <- cbind(UK_srr_spe_1999_biomass,UK_srr_spe_1999_count)
# 
# 
# 
# UK_srr_spe_2000 <- filter(UK_srr_spe, YEAR_ == '2000')
# UK_srr_spe_2000_biomass <- summarise_at(UK_srr_spe_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_srr_spe_2000_biomass$Year <- ('2000')
# UK_srr_spe_2000_biomass$subregion <- ('UK')
# UK_srr_spe_2000_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# UK_srr_spe_2000_count <- count(UK_srr_spe_2000, vars = "SPECIES_CD")
# 
# UK_srr_spe_2000_biomass_count <- cbind(UK_srr_spe_2000_biomass,UK_srr_spe_2000_count)
# 
# UK_srr_spe_2001 <- filter(UK_srr_spe, YEAR_ == '2001')
# UK_srr_spe_2001_biomass <- summarise_at(UK_srr_spe_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_srr_spe_2001_biomass$Year <- ('2001')
# UK_srr_spe_2001_biomass$subregion <- ('UK')
# UK_srr_spe_2001_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# UK_srr_spe_2001_count <- count(UK_srr_spe_2001, vars = "SPECIES_CD")
# 
# UK_srr_spe_2001_biomass_count <- cbind(UK_srr_spe_2001_biomass,UK_srr_spe_2001_count)
# 
# 
# UK_srr_spe_2002 <- filter(UK_srr_spe, YEAR_ == '2002')
# UK_srr_spe_2002_biomass <- summarise_at(UK_srr_spe_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_srr_spe_2002_biomass$Year <- ('2002')
# UK_srr_spe_2002_biomass$subregion <- ('UK')
# UK_srr_spe_2002_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# UK_srr_spe_2002_count <- count(UK_srr_spe_2002, vars = "SPECIES_CD")
# 
# UK_srr_spe_2002_biomass_count <- cbind(UK_srr_spe_2002_biomass,UK_srr_spe_2002_count)
# 
# 
# UK_srr_spe_2003 <- filter(UK_srr_spe, YEAR_ == '2003')
# UK_srr_spe_2003_biomass <- summarise_at(UK_srr_spe_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_srr_spe_2003_biomass$Year <- ('2003')
# UK_srr_spe_2003_biomass$subregion <- ('UK')
# UK_srr_spe_2003_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# UK_srr_spe_2003_count <- count(UK_srr_spe_2003, vars = "SPECIES_CD")
# 
# UK_srr_spe_2003_biomass_count <- cbind(UK_srr_spe_2003_biomass,UK_srr_spe_2003_count)
# 
# 
# UK_srr_spe_2004 <- filter(UK_srr_spe, YEAR_ == '2004')
# UK_srr_spe_2004_biomass <- summarise_at(UK_srr_spe_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_srr_spe_2004_biomass$Year <- ('2004')
# UK_srr_spe_2004_biomass$subregion <- ('UK')
# UK_srr_spe_2004_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# UK_srr_spe_2004_count <- count(UK_srr_spe_2004, vars = "SPECIES_CD")
# 
# UK_srr_spe_2004_biomass_count <- cbind(UK_srr_spe_2004_biomass,UK_srr_spe_2004_count)
# 
# 
# UK_srr_spe_2005 <- filter(UK_srr_spe, YEAR_ == '2005')
# UK_srr_spe_2005_biomass <- summarise_at(UK_srr_spe_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_srr_spe_2005_biomass$Year <- ('2005')
# UK_srr_spe_2005_biomass$subregion <- ('UK')
# UK_srr_spe_2005_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# UK_srr_spe_2005_count <- count(UK_srr_spe_2005, vars = "SPECIES_CD")
# 
# UK_srr_spe_2005_biomass_count <- cbind(UK_srr_spe_2005_biomass,UK_srr_spe_2005_count)
# 
# 
# UK_srr_spe_2006 <- filter(UK_srr_spe, YEAR_ == '2006')
# UK_srr_spe_2006_biomass <- summarise_at(UK_srr_spe_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_srr_spe_2006_biomass$Year <- ('2006')
# UK_srr_spe_2006_biomass$subregion <- ('UK')
# UK_srr_spe_2006_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# 
# UK_srr_spe_2006_count <- count(UK_srr_spe_2006, vars = "SPECIES_CD")
# 
# UK_srr_spe_2006_biomass_count <- cbind(UK_srr_spe_2006_biomass,UK_srr_spe_2006_count)
# 
# 
# UK_srr_spe_2007 <- filter(UK_srr_spe, YEAR_ == '2007')
# UK_srr_spe_2007_biomass <- summarise_at(UK_srr_spe_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_srr_spe_2007_biomass$Year <- ('2007')
# UK_srr_spe_2007_biomass$subregion <- ('UK')
# UK_srr_spe_2007_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# UK_srr_spe_2007_count <- count(UK_srr_spe_2007, vars = "SPECIES_CD")
# 
# UK_srr_spe_2007_biomass_count <- cbind(UK_srr_spe_2007_biomass,UK_srr_spe_2007_count)
# 
# 
# UK_srr_spe_2008 <- filter(UK_srr_spe, YEAR_ == '2008')
# UK_srr_spe_2008_biomass <- summarise_at(UK_srr_spe_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_srr_spe_2008_biomass$Year <- ('2008')
# UK_srr_spe_2008_biomass$subregion <- ('UK')
# UK_srr_spe_2008_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# UK_srr_spe_2008_count <- count(UK_srr_spe_2008, vars = "SPECIES_CD")
# 
# UK_srr_spe_2008_biomass_count <- cbind(UK_srr_spe_2008_biomass,UK_srr_spe_2008_count)
# 
# 
# UK_srr_spe_2009 <- filter(UK_srr_spe, YEAR_ == '2009')
# UK_srr_spe_2009_biomass <- summarise_at(UK_srr_spe_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_srr_spe_2009_biomass$Year <- ('2009')
# UK_srr_spe_2009_biomass$subregion <- ('UK')
# UK_srr_spe_2009_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# UK_srr_spe_2009_count <- count(UK_srr_spe_2009, vars = "SPECIES_CD")
# 
# UK_srr_spe_2009_biomass_count <- cbind(UK_srr_spe_2009_biomass,UK_srr_spe_2009_count)
# 
# 
# UK_srr_spe_2010 <- filter(UK_srr_spe, YEAR_ == '2010')
# UK_srr_spe_2010_biomass <- summarise_at(UK_srr_spe_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_srr_spe_2010_biomass$Year <- ('2010')
# UK_srr_spe_2010_biomass$subregion <- ('UK')
# UK_srr_spe_2010_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# UK_srr_spe_2010_count <- count(UK_srr_spe_2010, vars = "SPECIES_CD")
# 
# UK_srr_spe_2010_biomass_count <- cbind(UK_srr_spe_2010_biomass,UK_srr_spe_2010_count)
# 
# 
# UK_srr_spe_2011 <- filter(UK_srr_spe, YEAR_ == '2011')
# UK_srr_spe_2011_biomass <- summarise_at(UK_srr_spe_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_srr_spe_2011_biomass$Year <- ('2011')
# UK_srr_spe_2011_biomass$subregion <- ('UK')
# UK_srr_spe_2011_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# UK_srr_spe_2011_count <- count(UK_srr_spe_2011, vars = "SPECIES_CD")
# 
# UK_srr_spe_2011_biomass_count <- cbind(UK_srr_spe_2011_biomass,UK_srr_spe_2011_count)
# 
# 
# UK_srr_spe_2012 <- filter(UK_srr_spe, YEAR_ == '2012')
# UK_srr_spe_2012_biomass <- summarise_at(UK_srr_spe_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_srr_spe_2012_biomass$Year <- ('2012')
# UK_srr_spe_2012_biomass$subregion <- ('UK')
# UK_srr_spe_2012_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# UK_srr_spe_2012_count <- count(UK_srr_spe_2012, vars = "SPECIES_CD")
# 
# UK_srr_spe_2012_biomass_count <- cbind(UK_srr_spe_2012_biomass,UK_srr_spe_2012_count)
# 
# 
UK_srr_spe_2014 <- filter(UK_srr_spe, YEAR_ == '2014')
UK_srr_spe_2014_biomass <- summarise_at(UK_srr_spe_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_srr_spe_2014_biomass$Year <- ('2014')
UK_srr_spe_2014_biomass$subregion <- ('UK')
UK_srr_spe_2014_biomass$SPECIES_CD <- ('SRR SPE.')

UK_srr_spe_2014_count <- count(UK_srr_spe_2014, vars = "SPECIES_CD")

UK_srr_spe_2014_biomass_count <- cbind(UK_srr_spe_2014_biomass,UK_srr_spe_2014_count)
# 
# 
# UK_srr_spe_2016 <- filter(UK_srr_spe, YEAR_ == '2016')
# UK_srr_spe_2016_biomass <- summarise_at(UK_srr_spe_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# UK_srr_spe_2016_biomass$Year <- ('2016')
# UK_srr_spe_2016_biomass$subregion <- ('UK')
# UK_srr_spe_2016_biomass$SPECIES_CD <- ('SRR SPE.')
# 
# UK_srr_spe_2016_count <- count(UK_srr_spe_2016, vars = "SPECIES_CD")
# 
# UK_srr_spe_2016_biomass_count <- cbind(UK_srr_spe_2016_biomass,UK_srr_spe_2016_count)
# 
# 
UK_srr_spe_2018 <- filter(UK_srr_spe, YEAR_ == '2018')
UK_srr_spe_2018_biomass <- summarise_at(UK_srr_spe_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
UK_srr_spe_2018_biomass$Year <- ('2018')
UK_srr_spe_2018_biomass$subregion <- ('UK')
UK_srr_spe_2018_biomass$SPECIES_CD <- ('SRR SPE.')

UK_srr_spe_2018_count <- count(UK_srr_spe_2018, vars = "SPECIES_CD")

UK_srr_spe_2018_biomass_count <- cbind(UK_srr_spe_2018_biomass,UK_srr_spe_2018_count)


UK_srr_spe_all <- UK_srr_spe_2018_biomass_count

UK_srr_spe_all$vars <- NULL


# UK_grouper_combined <- rbind(UK_cep_crue_all,UK_cep_fulv_all,UK_epi_itaj_all,UK_epi_mori_all,UK_epi_stri_all,UK_myc_bona_all,
#                              UK_myc_inte_all,UK_myc_micr_all,UK_myc_phen_all,UK_myc_tigr_all,UK_srr_spe_all)


##export(UK_grouper_combined,"C:/Users/cara.estes/Documents/EwE_data/UK_groupers.csv")


### Graph each section 
library(reshape)

setwd("C:/Users/cara.estes/Documents/EwE_data")

## Snappers

#LK_lut_anal_all,LK_lut_apod_all,LK_lut_bucc_all,LK_lut_cyan_all,LK_lut_gris_all,LK_lut_jocu_all,LK_lut_maho_all,LK_lut_spe_all,LK_lut_syna_all,LK_ocy_chry_all


ggplot(LK_lut_anal_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Mutton Snapper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
    ylab("Biomass Sum")

ggsave("LK/plots/Mutton_Snapper_biomass.png", width = 8, height = 4)

ggplot(LK_lut_anal_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Mutton Snapper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Mutton_Snapper_count.png", width = 8, height = 4)



ggplot(LK_lut_apod_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Schoolmaster", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Schoolmaster_biomass.png", width = 8, height = 4)

ggplot(LK_lut_apod_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Schoolmaster", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Schoolmaster_count.png", width = 8, height = 4)


ggplot(LK_lut_bucc_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Blackfin Snapper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Blackfin_Snapper_biomass.png", width = 8, height = 4)

ggplot(LK_lut_bucc_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Blackfin Snapper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Blackfin_Snapper_count.png", width = 8, height = 4)


ggplot(LK_lut_cyan_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Cubera Snapper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Cubera_Snapper_biomass.png", width = 8, height = 4)

ggplot(LK_lut_cyan_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Cubera Snapper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Cubera_Snapper_count.png", width = 8, height = 4)


ggplot(LK_lut_gris_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Gray Snapper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Gray_Snapper_biomass.png", width = 8, height = 4)

ggplot(LK_lut_gris_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Gray Snapper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Gray_Snapper_count.png", width = 8, height = 4)


ggplot(LK_lut_jocu_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Dog Snapper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Dog_Snapper_biomass.png", width = 8, height = 4)

ggplot(LK_lut_jocu_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Dog Snapper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Dog_Snapper_count.png", width = 8, height = 4)



ggplot(LK_lut_maho_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Mahogany Snapper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Mahogany_Snapper_biomass.png", width = 8, height = 4)

ggplot(LK_lut_maho_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Mahogany Snapper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Mahogany_Snapper_count.png", width = 8, height = 4)



ggplot(LK_lut_spe_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Snapper Species", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Snapper_Species_biomass.png", width = 8, height = 4)

ggplot(LK_lut_spe_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Snapper Species", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Snapper_Species_count.png", width = 8, height = 4)


ggplot(LK_lut_syna_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Lane Snapper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Lane_Snapper_biomass.png", width = 8, height = 4)



ggplot(LK_lut_syna_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Lane Snapper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Lane_Snapper_count.png", width = 8, height = 4)



ggplot(LK_ocy_chry_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Yellowtail Snapper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Yellowtail_Snapper_biomass.png", width = 8, height = 4)

ggplot(LK_ocy_chry_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Yellowtail Snapper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Yellowtail_Snapper_count.png", width = 8, height = 4)






#MK_rho_auro_all,MK_lut_anal_all,
# MK_lut_apod_all,MK_lut_bucc_all,MK_lut_jocu_all,
# MK_lut_maho_all,MK_lut_syna_all,MK_ocy_chry_all



ggplot(MK_lut_anal_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Mutton Snapper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Mutton_Snapper_biomass.png", width = 8, height = 4)

ggplot(MK_lut_anal_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Mutton Snapper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Mutton_Snapper_count.png", width = 8, height = 4)


ggplot(MK_lut_apod_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Schoolmaster", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Schoolmaster_biomass.png", width = 8, height = 4)

ggplot(MK_lut_apod_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Schoolmaster", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Schoolmaster_count.png", width = 8, height = 4)


ggplot(MK_lut_bucc_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Blackfin Snapper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Blackfin_Snapper_biomass.png", width = 8, height = 4)

ggplot(MK_lut_bucc_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Blackfin Snapper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Blackfin_Snapper_count.png", width = 8, height = 4)



ggplot(MK_lut_gris_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Gray Snapper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Gray_Snapper_biomass.png", width = 8, height = 4)

ggplot(MK_lut_gris_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Gray Snapper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Gray_Snapper_count.png", width = 8, height = 4)



ggplot(MK_lut_jocu_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Dog Snapper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Dog_Snapper_biomass.png", width = 8, height = 4)

ggplot(MK_lut_jocu_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Dog Snapper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Dog_Snapper_count.png", width = 8, height = 4)



ggplot(MK_lut_maho_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Mahogany Snapper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Mahogany_Snapper_biomass.png", width = 8, height = 4)

ggplot(MK_lut_maho_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Mahogany Snapper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Mahogany_Snapper_count.png", width = 8, height = 4)


ggplot(MK_lut_syna_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Lane Snapper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Lane_Snapper_biomass.png", width = 8, height = 4)



ggplot(MK_lut_syna_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Lane Snapper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Lane_Snapper_count.png", width = 8, height = 4)


ggplot(MK_ocy_chry_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Yellowtail Snapper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Yellowtail_Snapper_biomass.png", width = 8, height = 4)

ggplot(MK_ocy_chry_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Yellowtail Snapper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Yellowtail_Snapper_count.png", width = 8, height = 4)





#UK_lut_anal_all,UK_lut_apod_all,UK_lut_cyan_all,UK_lut_gris_all,UK_lut_jocu_all,UK_lut_maho_all,UK_lut_syna_all,UK_ocy_chry_all)







ggplot(UK_lut_anal_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Mutton Snapper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Mutton_Snapper_biomass.png", width = 8, height = 4)

ggplot(UK_lut_anal_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Mutton Snapper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Mutton_Snapper_count.png", width = 8, height = 4)


ggplot(UK_lut_apod_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Schoolmaster", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Schoolmaster_biomass.png", width = 8, height = 4)

ggplot(UK_lut_apod_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Schoolmaster", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Schoolmaster_count.png", width = 8, height = 4)


ggplot(UK_lut_cyan_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Cubera Snapper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Cubera_Snapper_biomass.png", width = 8, height = 4)

ggplot(UK_lut_cyan_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Cubera Snapper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Cubera_Snapper_count.png", width = 8, height = 4)



ggplot(UK_lut_gris_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Gray Snapper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Gray_Snapper_biomass.png", width = 8, height = 4)

ggplot(UK_lut_gris_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Gray Snapper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Gray_Snapper_count.png", width = 8, height = 4)



ggplot(UK_lut_jocu_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Dog Snapper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Dog_Snapper_biomass.png", width = 8, height = 4)

ggplot(UK_lut_jocu_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Dog Snapper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Dog_Snapper_count.png", width = 8, height = 4)



ggplot(UK_lut_maho_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Mahogany Snapper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Mahogany_Snapper_biomass.png", width = 8, height = 4)

ggplot(UK_lut_maho_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Mahogany Snapper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Mahogany_Snapper_count.png", width = 8, height = 4)


ggplot(UK_lut_syna_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Lane Snapper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Lane_Snapper_biomass.png", width = 8, height = 4)



ggplot(UK_lut_syna_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Lane Snapper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Lane_Snapper_count.png", width = 8, height = 4)


ggplot(UK_ocy_chry_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Yellowtail Snapper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Yellowtail_Snapper_biomass.png", width = 8, height = 4)

ggplot(UK_ocy_chry_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Yellowtail Snapper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Yellowtail_Snapper_count.png", width = 8, height = 4)



## Groupers

## Lower Keys

#LK_cep_crue_all,LK_cep_fulv_all,LK_epi_itaj_all,LK_epi_mori_all,LK_epi_stri_all,LK_myc_bona_all,
#LK_myc_inte_all,LK_myc_micr_all,LK_myc_phen_all,LK_myc_tigr_all,LK_myc_vene_all,LK_srr_spe_all)


ggplot(LK_cep_crue_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Graysby", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Graysby_biomass.png", width = 8, height = 4)

ggplot(LK_cep_crue_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Graysby", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Graysby_count.png", width = 8, height = 4)



ggplot(LK_cep_fulv_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Coney", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Coney_biomass.png", width = 8, height = 4)

ggplot(LK_cep_fulv_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Coney", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Coney_count.png", width = 8, height = 4)



ggplot(LK_epi_itaj_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Goliath Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Goliath_Grouper_biomass.png", width = 8, height = 4)

ggplot(LK_epi_itaj_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Goliath Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Goliath_Grouper_count.png", width = 8, height = 4)




ggplot(LK_epi_mori_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Red Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Red_Grouper_biomass.png", width = 8, height = 4)

ggplot(LK_epi_mori_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Red Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Red_Grouper_count.png", width = 8, height = 4)





ggplot(LK_epi_stri_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Nassau Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Nassau_Grouper_biomass.png", width = 8, height = 4)

ggplot(LK_epi_stri_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Nassau Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Nassau_Grouper_count.png", width = 8, height = 4)




ggplot(LK_myc_bona_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Black Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Black_Grouper_biomass.png", width = 8, height = 4)

ggplot(LK_myc_bona_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Black Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Black_Grouper_count.png", width = 8, height = 4)




ggplot(LK_myc_inte_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Yellowmouth Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Yellowmouth_Grouper_biomass.png", width = 8, height = 4)

ggplot(LK_myc_inte_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Yellowmouth Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Yellowmouth_Grouper_count.png", width = 8, height = 4)





ggplot(LK_myc_micr_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Gag Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Gag_Grouper_biomass.png", width = 8, height = 4)

ggplot(LK_myc_micr_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Gag Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Gag_Grouper_count.png", width = 8, height = 4)




ggplot(LK_myc_phen_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Scamp Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Scamp_Grouper_biomass.png", width = 8, height = 4)

ggplot(LK_myc_phen_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Scamp Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Scamp_Grouper_count.png", width = 8, height = 4)




ggplot(LK_myc_tigr_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Tiger Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Tiger_Grouper_biomass.png", width = 8, height = 4)

ggplot(LK_myc_tigr_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Tiger Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Tiger_Grouper_count.png", width = 8, height = 4)




ggplot(LK_myc_vene_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Yellowfin Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Yellowfin_Grouper_biomass.png", width = 8, height = 4)

ggplot(LK_myc_vene_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Yellowfin Grouper", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Yellowfin_Grouper_count.png", width = 8, height = 4)




ggplot(LK_srr_spe_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Grouper Seabass Sp.", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("LK/plots/Grouper_seabass_sp_biomass.png", width = 8, height = 4)

ggplot(LK_srr_spe_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Grouper Seabass Sp.", subtitle = "Lower Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("LK/plots/Grouper_seabass_sp_count.png", width = 8, height = 4)




### MIddle Keys 

#MK_cep_crue_all,MK_cep_fulv_all,MK_epi_itaj_all,MK_epi_mori_all,MK_epi_stri_all,MK_myc_bona_all,
#MK_myc_inte_all,MK_myc_micr_all,MK_myc_phen_all,MK_myc_vene_all,MK_srr_spe_all)


ggplot(MK_cep_crue_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Graysby", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Graysby_biomass.png", width = 8, height = 4)

ggplot(MK_cep_crue_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Graysby", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Graysby_count.png", width = 8, height = 4)



ggplot(MK_cep_fulv_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Coney", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Coney_biomass.png", width = 8, height = 4)

ggplot(MK_cep_fulv_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Coney", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Coney_count.png", width = 8, height = 4)



ggplot(MK_epi_itaj_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Goliath Grouper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Goliath_Grouper_biomass.png", width = 8, height = 4)

ggplot(MK_epi_itaj_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Goliath Grouper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Goliath_Grouper_count.png", width = 8, height = 4)




ggplot(MK_epi_mori_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Red Grouper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Red_Grouper_biomass.png", width = 8, height = 4)

ggplot(MK_epi_mori_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Red Grouper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Red_Grouper_count.png", width = 8, height = 4)





ggplot(MK_epi_stri_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Nassau Grouper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Nassau_Grouper_biomass.png", width = 8, height = 4)

ggplot(MK_epi_stri_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Nassau Grouper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Nassau_Grouper_count.png", width = 8, height = 4)




ggplot(MK_myc_bona_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Black Grouper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Black_Grouper_biomass.png", width = 8, height = 4)

ggplot(MK_myc_bona_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Black Grouper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Black_Grouper_count.png", width = 8, height = 4)




ggplot(MK_myc_inte_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Yellowmouth Grouper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Yellowmouth_Grouper_biomass.png", width = 8, height = 4)

ggplot(MK_myc_inte_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Yellowmouth Grouper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Yellowmouth_Grouper_count.png", width = 8, height = 4)





ggplot(MK_myc_micr_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Gag Grouper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Gag_Grouper_biomass.png", width = 8, height = 4)

ggplot(MK_myc_micr_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Gag Grouper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Gag_Grouper_count.png", width = 8, height = 4)




ggplot(MK_myc_phen_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Scamp Grouper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Scamp_Grouper_biomass.png", width = 8, height = 4)

ggplot(MK_myc_phen_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Scamp Grouper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Scamp_Grouper_count.png", width = 8, height = 4)




# ggplot(MK_myc_tigr_all, aes(Year,sum, group = 1))+
#   geom_line(color = "red")+
#   geom_point(size = 2)+
#   ggtitle("Tiger Grouper", subtitle = "Middle Keys")+
#   theme_minimal()+
#   theme(
#     plot.title = element_text(hjust = 0.5),
#     plot.subtitle = element_text(hjust = 0.5),
#     legend.background = element_blank(),
#     legend.title = element_blank(),
#     legend.box.background = element_rect(colour = "black"))+
#   ylab("Biomass Sum")
# 
# ggsave("MK/plots/Tiger_Grouper_biomass.png", width = 8, height = 4)
# 
# ggplot(MK_myc_tigr_all, aes(Year,n, group = 1))+
#   geom_line(color = "red")+
#   geom_point(size = 2)+
#   ggtitle("Tiger Grouper", subtitle = "Middle Keys")+
#   theme_minimal()+
#   theme(
#     plot.title = element_text(hjust = 0.5),
#     plot.subtitle = element_text(hjust = 0.5),
#     legend.background = element_blank(),
#     legend.title = element_blank(),
#     legend.box.background = element_rect(colour = "black"))+
#   ylab("Number of Data Points")
# 
# ggsave("MK/plots/Tiger_Grouper_count.png", width = 8, height = 4)
# 
# 


ggplot(MK_myc_vene_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Yellowfin Grouper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Yellowfin_Grouper_biomass.png", width = 8, height = 4)

ggplot(MK_myc_vene_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Yellowfin Grouper", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Yellowfin_Grouper_count.png", width = 8, height = 4)




ggplot(MK_srr_spe_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Grouper Seabass Sp.", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("MK/plots/Grouper_seabass_sp_biomass.png", width = 8, height = 4)

ggplot(MK_srr_spe_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Grouper Seabass Sp.", subtitle = "Middle Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("MK/plots/Grouper_seabass_sp_count.png", width = 8, height = 4)




### Upper Keys

#UK_cep_crue_all,UK_cep_fulv_all,UK_epi_itaj_all,UK_epi_mori_all,UK_epi_stri_all,UK_myc_bona_all,
#UK_myc_inte_all,UK_myc_micr_all,UK_myc_phen_all,UK_myc_tigr_all,UK_srr_spe_all



ggplot(UK_cep_crue_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Graysby", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Graysby_biomass.png", width = 8, height = 4)

ggplot(UK_cep_crue_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Graysby", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Graysby_count.png", width = 8, height = 4)



ggplot(UK_cep_fulv_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Coney", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Coney_biomass.png", width = 8, height = 4)

ggplot(UK_cep_fulv_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Coney", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Coney_count.png", width = 8, height = 4)



ggplot(UK_epi_itaj_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Goliath Grouper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Goliath_Grouper_biomass.png", width = 8, height = 4)

ggplot(UK_epi_itaj_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Goliath Grouper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Goliath_Grouper_count.png", width = 8, height = 4)




ggplot(UK_epi_mori_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Red Grouper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Red_Grouper_biomass.png", width = 8, height = 4)

ggplot(UK_epi_mori_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Red Grouper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Red_Grouper_count.png", width = 8, height = 4)





ggplot(UK_epi_stri_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Nassau Grouper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Nassau_Grouper_biomass.png", width = 8, height = 4)

ggplot(UK_epi_stri_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Nassau Grouper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Nassau_Grouper_count.png", width = 8, height = 4)




ggplot(UK_myc_bona_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Black Grouper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Black_Grouper_biomass.png", width = 8, height = 4)

ggplot(UK_myc_bona_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Black Grouper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Black_Grouper_count.png", width = 8, height = 4)




ggplot(UK_myc_inte_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Yellowmouth Grouper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Yellowmouth_Grouper_biomass.png", width = 8, height = 4)

ggplot(UK_myc_inte_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Yellowmouth Grouper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Yellowmouth_Grouper_count.png", width = 8, height = 4)





ggplot(UK_myc_micr_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Gag Grouper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Gag_Grouper_biomass.png", width = 8, height = 4)

ggplot(UK_myc_micr_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Gag Grouper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Gag_Grouper_count.png", width = 8, height = 4)




ggplot(UK_myc_phen_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Scamp Grouper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Scamp_Grouper_biomass.png", width = 8, height = 4)

ggplot(UK_myc_phen_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Scamp Grouper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Scamp_Grouper_count.png", width = 8, height = 4)




ggplot(UK_myc_tigr_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Tiger Grouper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Tiger_Grouper_biomass.png", width = 8, height = 4)

ggplot(UK_myc_tigr_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Tiger Grouper", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Tiger_Grouper_count.png", width = 8, height = 4)




# ggplot(UK_myc_vene_all, aes(Year,sum, group = 1))+
#   geom_line(color = "red")+
#   geom_point(size = 2)+
#   ggtitle("Yellowfin Grouper", subtitle = "Upper Keys")+
#   theme_minimal()+
#   theme(
#     plot.title = element_text(hjust = 0.5),
#     plot.subtitle = element_text(hjust = 0.5),
#     legend.background = element_blank(),
#     legend.title = element_blank(),
#     legend.box.background = element_rect(colour = "black"))+
#   ylab("Biomass Sum")
# 
# ggsave("UK/plots/Yellowfin_Grouper_biomass.png", width = 8, height = 4)
# 
# ggplot(UK_myc_vene_all, aes(Year,n, group = 1))+
#   geom_line(color = "red")+
#   geom_point(size = 2)+
#   ggtitle("Yellowfin Grouper", subtitle = "Upper Keys")+
#   theme_minimal()+
#   theme(
#     plot.title = element_text(hjust = 0.5),
#     plot.subtitle = element_text(hjust = 0.5),
#     legend.background = element_blank(),
#     legend.title = element_blank(),
#     legend.box.background = element_rect(colour = "black"))+
#   ylab("Number of Data Points")
# 
# ggsave("UK/plots/Yellowfin_Grouper_count.png", width = 8, height = 4)




ggplot(UK_srr_spe_all, aes(Year,sum, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Grouper Seabass Sp.", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Biomass Sum")

ggsave("UK/plots/Grouper_seabass_sp_biomass.png", width = 8, height = 4)

ggplot(UK_srr_spe_all, aes(Year,n, group = 1))+
  geom_line(color = "red")+
  geom_point(size = 2)+
  ggtitle("Grouper Seabass Sp.", subtitle = "Upper Keys")+
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    legend.background = element_blank(),
    legend.title = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("Number of Data Points")

ggsave("UK/plots/Grouper_seabass_sp_count.png", width = 8, height = 4)














## Unneccessary Code (possibly)



# LK_lut_anal_all$max <- NULL
# LK_lut_anal_all$min <- NULL
# LK_lut_anal_all$subregion <- NULL
# LK_lut_anal_all$sd <- NULL
# LK_lut_anal_all$SPECIES_CD <- NULL
# LK_lut_anal_all$n <- NULL
# 
# 
# 
# 
# LK_lut_anal_melt <- melt(LK_lut_anal_all, id.vars = "Year")
#
## This line lets geom_line work 
# LK_lut_anal_melt$Year <- as.numeric(as.character(LK_lut_anal_melt$Year))
# 
# 
# ### plot
# ggplot(LK_lut_anal_melt, aes(Year, value, fill=variable,))+
#   ggtitle("Mutton Snapper", subtitle = "Lower Keys")+
#   geom_line(aes(color = variable), size = 2)+
#   geom_point()+
#   scale_color_manual(values=c("forestgreen", "dodgerblue"))+
#   #scale_y_continuous(sec.axis = sec_axis(~.*.10,name = "Biomass"))+
#   theme_light()+
#   theme(
#     plot.title = element_text(hjust = 0.5),
#     plot.subtitle = element_text(hjust = 0.5),
#     legend.title = element_blank(),
#     legend.background = element_blank(),
#     legend.box.background = element_rect(colour = "black"))+
#   ylab("Biomass")
# 


