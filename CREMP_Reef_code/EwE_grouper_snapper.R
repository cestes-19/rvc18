
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

Bird_Key_1999 <- import("Bird_Key_Reef/data/Bird_Key_Reef_1999.xls")


Bird_Key_1999_snapper <- merge(Bird_Key_1999, snapper, by = c("SPECIES_CD"))
Bird_Key_1999_snapper_biomass <- summarise_at(Bird_Key_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_1999_snapper_biomass$Year <- ('1999')
Bird_Key_1999_snapper_biomass$Reef <- ('Bird Key Reef')


Bird_Key_1999_grouper <- merge(Bird_Key_1999, grouper, by = c("SPECIES_CD"))
Bird_Key_1999_grouper_biomass <- summarise_at(Bird_Key_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_1999_grouper_biomass$Year <- ('1999')
Bird_Key_1999_grouper_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2000 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2000.xls")

Bird_Key_2000_snapper <- merge(Bird_Key_2000, snapper, by = c("SPECIES_CD"))
Bird_Key_2000_snapper_biomass <- summarise_at(Bird_Key_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2000_snapper_biomass$Year <- ('2000')
Bird_Key_2000_snapper_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2000_grouper <- merge(Bird_Key_2000, grouper, by = c("SPECIES_CD"))
Bird_Key_2000_grouper_biomass <- summarise_at(Bird_Key_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2000_grouper_biomass$Year <- ('2000')
Bird_Key_2000_grouper_biomass$Reef <- ('Bird Key Reef')

Bird_Key_2004 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2004.xls")

Bird_Key_2004_snapper <- merge(Bird_Key_2004, snapper, by = c("SPECIES_CD"))
Bird_Key_2004_snapper_biomass <- summarise_at(Bird_Key_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2004_snapper_biomass$Year <- ('2004')
Bird_Key_2004_snapper_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2004_grouper <- merge(Bird_Key_2004, grouper, by = c("SPECIES_CD"))
Bird_Key_2004_grouper_biomass <- summarise_at(Bird_Key_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2004_grouper_biomass$Year <- ('2004')
Bird_Key_2004_grouper_biomass$Reef <- ('Bird Key Reef')

Bird_Key_2006 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2006.xls")

Bird_Key_2006_snapper <- merge(Bird_Key_2006, snapper, by = c("SPECIES_CD"))
Bird_Key_2006_snapper_biomass <- summarise_at(Bird_Key_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2006_snapper_biomass$Year <- ('2006')
Bird_Key_2006_snapper_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2006_grouper <- merge(Bird_Key_2006, grouper, by = c("SPECIES_CD"))
Bird_Key_2006_grouper_biomass <- summarise_at(Bird_Key_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2006_grouper_biomass$Year <- ('2006')
Bird_Key_2006_grouper_biomass$Reef <- ('Bird Key Reef')

Bird_Key_2008 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2008.xls")

Bird_Key_2008_snapper <- merge(Bird_Key_2008, snapper, by = c("SPECIES_CD"))
Bird_Key_2008_snapper_biomass <- summarise_at(Bird_Key_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2008_snapper_biomass$Year <- ('2008')
Bird_Key_2008_snapper_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2008_grouper <- merge(Bird_Key_2008, grouper, by = c("SPECIES_CD"))
Bird_Key_2008_grouper_biomass <- summarise_at(Bird_Key_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2008_grouper_biomass$Year <- ('2008')
Bird_Key_2008_grouper_biomass$Reef <- ('Bird Key Reef')

Bird_Key_2010 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2010.xls")

Bird_Key_2010_snapper <- merge(Bird_Key_2010, snapper, by = c("SPECIES_CD"))
Bird_Key_2010_snapper_biomass <- summarise_at(Bird_Key_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2010_snapper_biomass$Year <- ('2010')
Bird_Key_2010_snapper_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2010_grouper <- merge(Bird_Key_2010, grouper, by = c("SPECIES_CD"))
Bird_Key_2010_grouper_biomass <- summarise_at(Bird_Key_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2010_grouper_biomass$Year <- ('2010')
Bird_Key_2010_grouper_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2012 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2012.xls")

Bird_Key_2012_snapper <- merge(Bird_Key_2012, snapper, by = c("SPECIES_CD"))
Bird_Key_2012_snapper_biomass <- summarise_at(Bird_Key_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2012_snapper_biomass$Year <- ('2012')
Bird_Key_2012_snapper_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2012_grouper <- merge(Bird_Key_2012, grouper, by = c("SPECIES_CD"))
Bird_Key_2012_grouper_biomass <- summarise_at(Bird_Key_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2012_grouper_biomass$Year <- ('2012')
Bird_Key_2012_grouper_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2014 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2014.xls")

Bird_Key_2014_snapper <- merge(Bird_Key_2014, snapper, by = c("SPECIES_CD"))
Bird_Key_2014_snapper_biomass <- summarise_at(Bird_Key_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2014_snapper_biomass$Year <- ('2014')
Bird_Key_2014_snapper_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2014_grouper <- merge(Bird_Key_2014, grouper, by = c("SPECIES_CD"))
Bird_Key_2014_grouper_biomass <- summarise_at(Bird_Key_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2014_grouper_biomass$Year <- ('2014')
Bird_Key_2014_grouper_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2016 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2016.xls")

Bird_Key_2016_snapper <- merge(Bird_Key_2016, snapper, by = c("SPECIES_CD"))
Bird_Key_2016_snapper_biomass <- summarise_at(Bird_Key_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2016_snapper_biomass$Year <- ('2016')
Bird_Key_2016_snapper_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2016_grouper <- merge(Bird_Key_2016, grouper, by = c("SPECIES_CD"))
Bird_Key_2016_grouper_biomass <- summarise_at(Bird_Key_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2016_grouper_biomass$Year <- ('2016')
Bird_Key_2016_grouper_biomass$Reef <- ('Bird Key Reef')


### Combine all years together for snapper_ and grouper_ seperately 

Bird_key_snapper_1 <- rbind(Bird_Key_1999_snapper_biomass,Bird_Key_2000_snapper_biomass)
Bird_key_snapper_2 <- rbind(Bird_key_snapper_1,Bird_Key_2004_snapper_biomass)
Bird_key_snapper_3 <- rbind(Bird_key_snapper_2,Bird_Key_2006_snapper_biomass)
Bird_key_snapper_4 <- rbind(Bird_key_snapper_3,Bird_Key_2008_snapper_biomass)
Bird_key_snapper_5 <- rbind(Bird_key_snapper_4,Bird_Key_2010_snapper_biomass)
Bird_key_snapper_6 <- rbind(Bird_key_snapper_5,Bird_Key_2012_snapper_biomass)
Bird_key_snapper_7 <- rbind(Bird_key_snapper_6,Bird_Key_2014_snapper_biomass)
Bird_Key_snapper_biomass <- rbind(Bird_key_snapper_7,Bird_Key_2016_snapper_biomass)


Bird_key_grouper_1 <- rbind(Bird_Key_1999_grouper_biomass,Bird_Key_2000_grouper_biomass)
Bird_key_grouper_2 <- rbind(Bird_key_grouper_1,Bird_Key_2004_grouper_biomass)
Bird_key_grouper_3 <- rbind(Bird_key_grouper_2,Bird_Key_2006_grouper_biomass)
Bird_key_grouper_4 <- rbind(Bird_key_grouper_3,Bird_Key_2008_grouper_biomass)
Bird_key_grouper_5 <- rbind(Bird_key_grouper_4,Bird_Key_2010_grouper_biomass)
Bird_key_grouper_6 <- rbind(Bird_key_grouper_5,Bird_Key_2012_grouper_biomass)
Bird_key_grouper_7 <- rbind(Bird_key_grouper_6,Bird_Key_2014_grouper_biomass)
Bird_Key_grouper_biomass <- rbind(Bird_key_grouper_7,Bird_Key_2016_grouper_biomass)


export(Bird_Key_snapper_biomass, "Bird_Key_Reef/data/Bird_Key_snapper__biomass.csv")
export(Bird_Key_grouper_biomass, "Bird_Key_Reef/data/Bird_Key_grouper__biomass.csv")





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
Black_Coral_Rock_2000_snapper_biomass <- summarise_at(Black_Coral_Rock_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2000_snapper_biomass$Year <- ('2000')
Black_Coral_Rock_2000_snapper_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2000_grouper <- merge(Black_Coral_Rock_2000, grouper, by = c("SPECIES_CD"))
Black_Coral_Rock_2000_grouper_biomass <- summarise_at(Black_Coral_Rock_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2000_grouper_biomass$Year <- ('2000')
Black_Coral_Rock_2000_grouper_biomass$Reef <- ('Black Coral Rock')

Black_Coral_Rock_2004 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2004.xls")

Black_Coral_Rock_2004_snapper <- merge(Black_Coral_Rock_2004, snapper, by = c("SPECIES_CD"))
Black_Coral_Rock_2004_snapper_biomass <- summarise_at(Black_Coral_Rock_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2004_snapper_biomass$Year <- ('2004')
Black_Coral_Rock_2004_snapper_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2004_grouper <- merge(Black_Coral_Rock_2004, grouper, by = c("SPECIES_CD"))
Black_Coral_Rock_2004_grouper_biomass <- summarise_at(Black_Coral_Rock_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2004_grouper_biomass$Year <- ('2004')
Black_Coral_Rock_2004_grouper_biomass$Reef <- ('Black Coral Rock')

Black_Coral_Rock_2006 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2006.xls")

Black_Coral_Rock_2006_snapper <- merge(Black_Coral_Rock_2006, snapper, by = c("SPECIES_CD"))
Black_Coral_Rock_2006_snapper_biomass <- summarise_at(Black_Coral_Rock_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2006_snapper_biomass$Year <- ('2006')
Black_Coral_Rock_2006_snapper_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2006_grouper <- merge(Black_Coral_Rock_2006, grouper, by = c("SPECIES_CD"))
Black_Coral_Rock_2006_grouper_biomass <- summarise_at(Black_Coral_Rock_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2006_grouper_biomass$Year <- ('2006')
Black_Coral_Rock_2006_grouper_biomass$Reef <- ('Black Coral Rock')

Black_Coral_Rock_2008 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2008.xls")

Black_Coral_Rock_2008_snapper <- merge(Black_Coral_Rock_2008, snapper, by = c("SPECIES_CD"))
Black_Coral_Rock_2008_snapper_biomass <- summarise_at(Black_Coral_Rock_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2008_snapper_biomass$Year <- ('2008')
Black_Coral_Rock_2008_snapper_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2008_grouper <- merge(Black_Coral_Rock_2008, grouper, by = c("SPECIES_CD"))
Black_Coral_Rock_2008_grouper_biomass <- summarise_at(Black_Coral_Rock_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2008_grouper_biomass$Year <- ('2008')
Black_Coral_Rock_2008_grouper_biomass$Reef <- ('Black Coral Rock')

Black_Coral_Rock_2010 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2010.xls")

Black_Coral_Rock_2010_snapper <- merge(Black_Coral_Rock_2010, snapper, by = c("SPECIES_CD"))
Black_Coral_Rock_2010_snapper_biomass <- summarise_at(Black_Coral_Rock_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2010_snapper_biomass$Year <- ('2010')
Black_Coral_Rock_2010_snapper_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2010_grouper <- merge(Black_Coral_Rock_2010, grouper, by = c("SPECIES_CD"))
Black_Coral_Rock_2010_grouper_biomass <- summarise_at(Black_Coral_Rock_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2010_grouper_biomass$Year <- ('2010')
Black_Coral_Rock_2010_grouper_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2012 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2012.xls")

Black_Coral_Rock_2012_snapper <- merge(Black_Coral_Rock_2012, snapper, by = c("SPECIES_CD"))
Black_Coral_Rock_2012_snapper_biomass <- summarise_at(Black_Coral_Rock_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2012_snapper_biomass$Year <- ('2012')
Black_Coral_Rock_2012_snapper_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2012_grouper <- merge(Black_Coral_Rock_2012, grouper, by = c("SPECIES_CD"))
Black_Coral_Rock_2012_grouper_biomass <- summarise_at(Black_Coral_Rock_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2012_grouper_biomass$Year <- ('2012')
Black_Coral_Rock_2012_grouper_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2014 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2014.xls")

Black_Coral_Rock_2014_snapper <- merge(Black_Coral_Rock_2014, snapper, by = c("SPECIES_CD"))
Black_Coral_Rock_2014_snapper_biomass <- summarise_at(Black_Coral_Rock_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2014_snapper_biomass$Year <- ('2014')
Black_Coral_Rock_2014_snapper_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2014_grouper <- merge(Black_Coral_Rock_2014, grouper, by = c("SPECIES_CD"))
Black_Coral_Rock_2014_grouper_biomass <- summarise_at(Black_Coral_Rock_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2014_grouper_biomass$Year <- ('2014')
Black_Coral_Rock_2014_grouper_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2016 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2016.xls")

Black_Coral_Rock_2016_snapper <- merge(Black_Coral_Rock_2016, snapper, by = c("SPECIES_CD"))
Black_Coral_Rock_2016_snapper_biomass <- summarise_at(Black_Coral_Rock_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2016_snapper_biomass$Year <- ('2016')
Black_Coral_Rock_2016_snapper_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2016_grouper <- merge(Black_Coral_Rock_2016, grouper, by = c("SPECIES_CD"))
Black_Coral_Rock_2016_grouper_biomass <- summarise_at(Black_Coral_Rock_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2016_grouper_biomass$Year <- ('2016')
Black_Coral_Rock_2016_grouper_biomass$Reef <- ('Black Coral Rock')


### Combine all years together for snapper_ and grouper_ seperately 

#Black_Coral_Rock_snapper_1 <- rbind(Black_Coral_Rock_1999_snapper_biomass,Black_Coral_Rock_2000_snapper_biomass)
Black_Coral_Rock_snapper_2 <- rbind(Black_Coral_Rock_2000_snapper_biomass,Black_Coral_Rock_2004_snapper_biomass)
Black_Coral_Rock_snapper_3 <- rbind(Black_Coral_Rock_snapper_2,Black_Coral_Rock_2006_snapper_biomass)
Black_Coral_Rock_snapper_4 <- rbind(Black_Coral_Rock_snapper_3,Black_Coral_Rock_2008_snapper_biomass)
Black_Coral_Rock_snapper_5 <- rbind(Black_Coral_Rock_snapper_4,Black_Coral_Rock_2010_snapper_biomass)
Black_Coral_Rock_snapper_6 <- rbind(Black_Coral_Rock_snapper_5,Black_Coral_Rock_2012_snapper_biomass)
Black_Coral_Rock_snapper_7 <- rbind(Black_Coral_Rock_snapper_6,Black_Coral_Rock_2014_snapper_biomass)
Black_Coral_Rock_snapper_biomass <- rbind(Black_Coral_Rock_snapper_7,Black_Coral_Rock_2016_snapper_biomass)


#Black_Coral_Rock_grouper_1 <- rbind(Black_Coral_Rock_1999_grouper_biomass,Black_Coral_Rock_2000_grouper_biomass)
Black_Coral_Rock_grouper_2 <- rbind(Black_Coral_Rock_2000_grouper_biomass,Black_Coral_Rock_2004_grouper_biomass)
Black_Coral_Rock_grouper_3 <- rbind(Black_Coral_Rock_grouper_2,Black_Coral_Rock_2006_grouper_biomass)
Black_Coral_Rock_grouper_4 <- rbind(Black_Coral_Rock_grouper_3,Black_Coral_Rock_2008_grouper_biomass)
Black_Coral_Rock_grouper_5 <- rbind(Black_Coral_Rock_grouper_4,Black_Coral_Rock_2010_grouper_biomass)
Black_Coral_Rock_grouper_6 <- rbind(Black_Coral_Rock_grouper_5,Black_Coral_Rock_2012_grouper_biomass)
Black_Coral_Rock_grouper_7 <- rbind(Black_Coral_Rock_grouper_6,Black_Coral_Rock_2014_grouper_biomass)
Black_Coral_Rock_grouper_biomass <- rbind(Black_Coral_Rock_grouper_7,Black_Coral_Rock_2016_grouper_biomass)


export(Black_Coral_Rock_snapper_biomass, "Black_Coral_Rock/data/Black_Coral_Rock_snapper__biomass.csv")
export(Black_Coral_Rock_grouper_biomass, "Black_Coral_Rock/data/Black_Coral_Rock_grouper__biomass.csv")



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

Davis_Rock_2000_snapper <- merge(Davis_Rock_2000, snapper, by = c("SPECIES_CD"))
Davis_Rock_2000_snapper_biomass <- summarise_at(Davis_Rock_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2000_snapper_biomass$Year <- ('2000')
Davis_Rock_2000_snapper_biomass$Reef <- ('Davis Rock')


Davis_Rock_2000_grouper <- merge(Davis_Rock_2000, grouper, by = c("SPECIES_CD"))
Davis_Rock_2000_grouper_biomass <- summarise_at(Davis_Rock_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2000_grouper_biomass$Year <- ('2000')
Davis_Rock_2000_grouper_biomass$Reef <- ('Davis Rock')

Davis_Rock_2004 <- import("Davis_Rock/data/Davis_Rock_2004.xls")

Davis_Rock_2004_snapper <- merge(Davis_Rock_2004, snapper, by = c("SPECIES_CD"))
Davis_Rock_2004_snapper_biomass <- summarise_at(Davis_Rock_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2004_snapper_biomass$Year <- ('2004')
Davis_Rock_2004_snapper_biomass$Reef <- ('Davis Rock')


Davis_Rock_2004_grouper <- merge(Davis_Rock_2004, grouper, by = c("SPECIES_CD"))
Davis_Rock_2004_grouper_biomass <- summarise_at(Davis_Rock_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2004_grouper_biomass$Year <- ('2004')
Davis_Rock_2004_grouper_biomass$Reef <- ('Davis Rock')

Davis_Rock_2006 <- import("Davis_Rock/data/Davis_Rock_2006.xls")

Davis_Rock_2006_snapper <- merge(Davis_Rock_2006, snapper, by = c("SPECIES_CD"))
Davis_Rock_2006_snapper_biomass <- summarise_at(Davis_Rock_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2006_snapper_biomass$Year <- ('2006')
Davis_Rock_2006_snapper_biomass$Reef <- ('Davis Rock')


Davis_Rock_2006_grouper <- merge(Davis_Rock_2006, grouper, by = c("SPECIES_CD"))
Davis_Rock_2006_grouper_biomass <- summarise_at(Davis_Rock_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2006_grouper_biomass$Year <- ('2006')
Davis_Rock_2006_grouper_biomass$Reef <- ('Davis Rock')

Davis_Rock_2008 <- import("Davis_Rock/data/Davis_Rock_2008.xls")

Davis_Rock_2008_snapper <- merge(Davis_Rock_2008, snapper, by = c("SPECIES_CD"))
Davis_Rock_2008_snapper_biomass <- summarise_at(Davis_Rock_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2008_snapper_biomass$Year <- ('2008')
Davis_Rock_2008_snapper_biomass$Reef <- ('Davis Rock')


Davis_Rock_2008_grouper <- merge(Davis_Rock_2008, grouper, by = c("SPECIES_CD"))
Davis_Rock_2008_grouper_biomass <- summarise_at(Davis_Rock_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2008_grouper_biomass$Year <- ('2008')
Davis_Rock_2008_grouper_biomass$Reef <- ('Davis Rock')

Davis_Rock_2010 <- import("Davis_Rock/data/Davis_Rock_2010.xls")

Davis_Rock_2010_snapper <- merge(Davis_Rock_2010, snapper, by = c("SPECIES_CD"))
Davis_Rock_2010_snapper_biomass <- summarise_at(Davis_Rock_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2010_snapper_biomass$Year <- ('2010')
Davis_Rock_2010_snapper_biomass$Reef <- ('Davis Rock')


Davis_Rock_2010_grouper <- merge(Davis_Rock_2010, grouper, by = c("SPECIES_CD"))
Davis_Rock_2010_grouper_biomass <- summarise_at(Davis_Rock_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2010_grouper_biomass$Year <- ('2010')
Davis_Rock_2010_grouper_biomass$Reef <- ('Davis Rock')


Davis_Rock_2012 <- import("Davis_Rock/data/Davis_Rock_2012.xls")

Davis_Rock_2012_snapper <- merge(Davis_Rock_2012, snapper, by = c("SPECIES_CD"))
Davis_Rock_2012_snapper_biomass <- summarise_at(Davis_Rock_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2012_snapper_biomass$Year <- ('2012')
Davis_Rock_2012_snapper_biomass$Reef <- ('Davis Rock')


Davis_Rock_2012_grouper <- merge(Davis_Rock_2012, grouper, by = c("SPECIES_CD"))
Davis_Rock_2012_grouper_biomass <- summarise_at(Davis_Rock_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2012_grouper_biomass$Year <- ('2012')
Davis_Rock_2012_grouper_biomass$Reef <- ('Davis Rock')


Davis_Rock_2014 <- import("Davis_Rock/data/Davis_Rock_2014.xls")

Davis_Rock_2014_snapper <- merge(Davis_Rock_2014, snapper, by = c("SPECIES_CD"))
Davis_Rock_2014_snapper_biomass <- summarise_at(Davis_Rock_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2014_snapper_biomass$Year <- ('2014')
Davis_Rock_2014_snapper_biomass$Reef <- ('Davis Rock')


Davis_Rock_2014_grouper <- merge(Davis_Rock_2014, grouper, by = c("SPECIES_CD"))
Davis_Rock_2014_grouper_biomass <- summarise_at(Davis_Rock_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2014_grouper_biomass$Year <- ('2014')
Davis_Rock_2014_grouper_biomass$Reef <- ('Davis Rock')


Davis_Rock_2016 <- import("Davis_Rock/data/Davis_Rock_2016.xls")

Davis_Rock_2016_snapper <- merge(Davis_Rock_2016, snapper, by = c("SPECIES_CD"))
Davis_Rock_2016_snapper_biomass <- summarise_at(Davis_Rock_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2016_snapper_biomass$Year <- ('2016')
Davis_Rock_2016_snapper_biomass$Reef <- ('Davis Rock')


Davis_Rock_2016_grouper <- merge(Davis_Rock_2016, grouper, by = c("SPECIES_CD"))
Davis_Rock_2016_grouper_biomass <- summarise_at(Davis_Rock_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2016_grouper_biomass$Year <- ('2016')
Davis_Rock_2016_grouper_biomass$Reef <- ('Davis Rock')


### Combine all years together for snapper_ and grouper_ seperately 

#Davis_Rock_snapper_1 <- rbind(Davis_Rock_1999_snapper_biomass,Davis_Rock_2000_snapper_biomass)
Davis_Rock_snapper_2 <- rbind(Davis_Rock_2000_snapper_biomass,Davis_Rock_2004_snapper_biomass)
Davis_Rock_snapper_3 <- rbind(Davis_Rock_snapper_2,Davis_Rock_2006_snapper_biomass)
Davis_Rock_snapper_4 <- rbind(Davis_Rock_snapper_3,Davis_Rock_2008_snapper_biomass)
Davis_Rock_snapper_5 <- rbind(Davis_Rock_snapper_4,Davis_Rock_2010_snapper_biomass)
Davis_Rock_snapper_6 <- rbind(Davis_Rock_snapper_5,Davis_Rock_2012_snapper_biomass)
Davis_Rock_snapper_7 <- rbind(Davis_Rock_snapper_6,Davis_Rock_2014_snapper_biomass)
Davis_Rock_snapper_biomass <- rbind(Davis_Rock_snapper_7,Davis_Rock_2016_snapper_biomass)


#Davis_Rock_grouper_1 <- rbind(Davis_Rock_1999_grouper_biomass,Davis_Rock_2000_grouper_biomass)
Davis_Rock_grouper_2 <- rbind(Davis_Rock_2000_grouper_biomass,Davis_Rock_2004_grouper_biomass)
Davis_Rock_grouper_3 <- rbind(Davis_Rock_grouper_2,Davis_Rock_2006_grouper_biomass)
Davis_Rock_grouper_4 <- rbind(Davis_Rock_grouper_3,Davis_Rock_2008_grouper_biomass)
Davis_Rock_grouper_5 <- rbind(Davis_Rock_grouper_4,Davis_Rock_2010_grouper_biomass)
Davis_Rock_grouper_6 <- rbind(Davis_Rock_grouper_5,Davis_Rock_2012_grouper_biomass)
Davis_Rock_grouper_7 <- rbind(Davis_Rock_grouper_6,Davis_Rock_2014_grouper_biomass)
Davis_Rock_grouper_biomass <- rbind(Davis_Rock_grouper_7,Davis_Rock_2016_grouper_biomass)


export(Davis_Rock_snapper_biomass, "Davis_Rock/data/Davis_Rock_snapper__biomass.csv")
export(Davis_Rock_grouper_biomass, "Davis_Rock/data/Davis_Rock_grouper__biomass.csv")



## Loggerhead Patch 



Loggerhead_Patch_1999 <- import("Loggerhead_Patch/data/Loggerhead_Patch_1999.xls")


Loggerhead_Patch_1999_snapper <- merge(Loggerhead_Patch_1999, snapper, by = c("SPECIES_CD"))
Loggerhead_Patch_1999_snapper_biomass <- summarise_at(Loggerhead_Patch_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_1999_snapper_biomass$Year <- ('1999')
Loggerhead_Patch_1999_snapper_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_1999_grouper <- merge(Loggerhead_Patch_1999, grouper, by = c("SPECIES_CD"))
Loggerhead_Patch_1999_grouper_biomass <- summarise_at(Loggerhead_Patch_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_1999_grouper_biomass$Year <- ('1999')
Loggerhead_Patch_1999_grouper_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2000 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2000.xls")

Loggerhead_Patch_2000_snapper <- merge(Loggerhead_Patch_2000, snapper, by = c("SPECIES_CD"))
Loggerhead_Patch_2000_snapper_biomass <- summarise_at(Loggerhead_Patch_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2000_snapper_biomass$Year <- ('2000')
Loggerhead_Patch_2000_snapper_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2000_grouper <- merge(Loggerhead_Patch_2000, grouper, by = c("SPECIES_CD"))
Loggerhead_Patch_2000_grouper_biomass <- summarise_at(Loggerhead_Patch_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2000_grouper_biomass$Year <- ('2000')
Loggerhead_Patch_2000_grouper_biomass$Reef <- ('Loggerhead Patch')

Loggerhead_Patch_2004 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2004.xls")

Loggerhead_Patch_2004_snapper <- merge(Loggerhead_Patch_2004, snapper, by = c("SPECIES_CD"))
Loggerhead_Patch_2004_snapper_biomass <- summarise_at(Loggerhead_Patch_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2004_snapper_biomass$Year <- ('2004')
Loggerhead_Patch_2004_snapper_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2004_grouper <- merge(Loggerhead_Patch_2004, grouper, by = c("SPECIES_CD"))
Loggerhead_Patch_2004_grouper_biomass <- summarise_at(Loggerhead_Patch_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2004_grouper_biomass$Year <- ('2004')
Loggerhead_Patch_2004_grouper_biomass$Reef <- ('Loggerhead Patch')

Loggerhead_Patch_2006 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2006.xls")

Loggerhead_Patch_2006_snapper <- merge(Loggerhead_Patch_2006, snapper, by = c("SPECIES_CD"))
Loggerhead_Patch_2006_snapper_biomass <- summarise_at(Loggerhead_Patch_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2006_snapper_biomass$Year <- ('2006')
Loggerhead_Patch_2006_snapper_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2006_grouper <- merge(Loggerhead_Patch_2006, grouper, by = c("SPECIES_CD"))
Loggerhead_Patch_2006_grouper_biomass <- summarise_at(Loggerhead_Patch_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2006_grouper_biomass$Year <- ('2006')
Loggerhead_Patch_2006_grouper_biomass$Reef <- ('Loggerhead Patch')

Loggerhead_Patch_2008 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2008.xls")

Loggerhead_Patch_2008_snapper <- merge(Loggerhead_Patch_2008, snapper, by = c("SPECIES_CD"))
Loggerhead_Patch_2008_snapper_biomass <- summarise_at(Loggerhead_Patch_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2008_snapper_biomass$Year <- ('2008')
Loggerhead_Patch_2008_snapper_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2008_grouper <- merge(Loggerhead_Patch_2008, grouper, by = c("SPECIES_CD"))
Loggerhead_Patch_2008_grouper_biomass <- summarise_at(Loggerhead_Patch_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2008_grouper_biomass$Year <- ('2008')
Loggerhead_Patch_2008_grouper_biomass$Reef <- ('Loggerhead Patch')

Loggerhead_Patch_2010 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2010.xls")

Loggerhead_Patch_2010_snapper <- merge(Loggerhead_Patch_2010, snapper, by = c("SPECIES_CD"))
Loggerhead_Patch_2010_snapper_biomass <- summarise_at(Loggerhead_Patch_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2010_snapper_biomass$Year <- ('2010')
Loggerhead_Patch_2010_snapper_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2010_grouper <- merge(Loggerhead_Patch_2010, grouper, by = c("SPECIES_CD"))
Loggerhead_Patch_2010_grouper_biomass <- summarise_at(Loggerhead_Patch_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2010_grouper_biomass$Year <- ('2010')
Loggerhead_Patch_2010_grouper_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2012 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2012.xls")

Loggerhead_Patch_2012_snapper <- merge(Loggerhead_Patch_2012, snapper, by = c("SPECIES_CD"))
Loggerhead_Patch_2012_snapper_biomass <- summarise_at(Loggerhead_Patch_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2012_snapper_biomass$Year <- ('2012')
Loggerhead_Patch_2012_snapper_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2012_grouper <- merge(Loggerhead_Patch_2012, grouper, by = c("SPECIES_CD"))
Loggerhead_Patch_2012_grouper_biomass <- summarise_at(Loggerhead_Patch_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2012_grouper_biomass$Year <- ('2012')
Loggerhead_Patch_2012_grouper_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2014 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2014.xls")

Loggerhead_Patch_2014_snapper <- merge(Loggerhead_Patch_2014, snapper, by = c("SPECIES_CD"))
Loggerhead_Patch_2014_snapper_biomass <- summarise_at(Loggerhead_Patch_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2014_snapper_biomass$Year <- ('2014')
Loggerhead_Patch_2014_snapper_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2014_grouper <- merge(Loggerhead_Patch_2014, grouper, by = c("SPECIES_CD"))
Loggerhead_Patch_2014_grouper_biomass <- summarise_at(Loggerhead_Patch_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2014_grouper_biomass$Year <- ('2014')
Loggerhead_Patch_2014_grouper_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2016 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2016.xls")

Loggerhead_Patch_2016_snapper <- merge(Loggerhead_Patch_2016, snapper, by = c("SPECIES_CD"))
Loggerhead_Patch_2016_snapper_biomass <- summarise_at(Loggerhead_Patch_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2016_snapper_biomass$Year <- ('2016')
Loggerhead_Patch_2016_snapper_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2016_grouper <- merge(Loggerhead_Patch_2016, grouper, by = c("SPECIES_CD"))
Loggerhead_Patch_2016_grouper_biomass <- summarise_at(Loggerhead_Patch_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2016_grouper_biomass$Year <- ('2016')
Loggerhead_Patch_2016_grouper_biomass$Reef <- ('Loggerhead Patch')


### Combine all years together for snapper_ and grouper_ seperately 

Loggerhead_Patch_snapper_1 <- rbind(Loggerhead_Patch_1999_snapper_biomass,Loggerhead_Patch_2000_snapper_biomass)
Loggerhead_Patch_snapper_2 <- rbind(Loggerhead_Patch_snapper_1,Loggerhead_Patch_2004_snapper_biomass)
Loggerhead_Patch_snapper_3 <- rbind(Loggerhead_Patch_snapper_2,Loggerhead_Patch_2006_snapper_biomass)
Loggerhead_Patch_snapper_4 <- rbind(Loggerhead_Patch_snapper_3,Loggerhead_Patch_2008_snapper_biomass)
Loggerhead_Patch_snapper_5 <- rbind(Loggerhead_Patch_snapper_4,Loggerhead_Patch_2010_snapper_biomass)
Loggerhead_Patch_snapper_6 <- rbind(Loggerhead_Patch_snapper_5,Loggerhead_Patch_2012_snapper_biomass)
Loggerhead_Patch_snapper_7 <- rbind(Loggerhead_Patch_snapper_6,Loggerhead_Patch_2014_snapper_biomass)
Loggerhead_Patch_snapper_biomass <- rbind(Loggerhead_Patch_snapper_7,Loggerhead_Patch_2016_snapper_biomass)


Loggerhead_Patch_grouper_1 <- rbind(Loggerhead_Patch_1999_grouper_biomass,Loggerhead_Patch_2000_grouper_biomass)
Loggerhead_Patch_grouper_2 <- rbind(Loggerhead_Patch_grouper_1,Loggerhead_Patch_2004_grouper_biomass)
Loggerhead_Patch_grouper_3 <- rbind(Loggerhead_Patch_grouper_2,Loggerhead_Patch_2006_grouper_biomass)
Loggerhead_Patch_grouper_4 <- rbind(Loggerhead_Patch_grouper_3,Loggerhead_Patch_2008_grouper_biomass)
Loggerhead_Patch_grouper_5 <- rbind(Loggerhead_Patch_grouper_4,Loggerhead_Patch_2010_grouper_biomass)
Loggerhead_Patch_grouper_6 <- rbind(Loggerhead_Patch_grouper_5,Loggerhead_Patch_2012_grouper_biomass)
Loggerhead_Patch_grouper_7 <- rbind(Loggerhead_Patch_grouper_6,Loggerhead_Patch_2014_grouper_biomass)
Loggerhead_Patch_grouper_biomass <- rbind(Loggerhead_Patch_grouper_7,Loggerhead_Patch_2016_grouper_biomass)


export(Loggerhead_Patch_snapper_biomass, "Loggerhead_Patch/data/Loggerhead_Patch_snapper__biomass.csv")
export(Loggerhead_Patch_grouper_biomass, "Loggerhead_Patch/data/Loggerhead_Patch_grouper__biomass.csv")


## Mayers Peak 



Mayers_Peak_1999 <- import("Mayers_Peak/data/Mayers_Peak_1999.xls")


Mayers_Peak_1999_snapper <- merge(Mayers_Peak_1999, snapper, by = c("SPECIES_CD"))
Mayers_Peak_1999_snapper_biomass <- summarise_at(Mayers_Peak_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_1999_snapper_biomass$Year <- ('1999')
Mayers_Peak_1999_snapper_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_1999_grouper <- merge(Mayers_Peak_1999, grouper, by = c("SPECIES_CD"))
Mayers_Peak_1999_grouper_biomass <- summarise_at(Mayers_Peak_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_1999_grouper_biomass$Year <- ('1999')
Mayers_Peak_1999_grouper_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2000 <- import("Mayers_Peak/data/Mayers_Peak_2000.xls")

Mayers_Peak_2000_snapper <- merge(Mayers_Peak_2000, snapper, by = c("SPECIES_CD"))
Mayers_Peak_2000_snapper_biomass <- summarise_at(Mayers_Peak_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2000_snapper_biomass$Year <- ('2000')
Mayers_Peak_2000_snapper_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2000_grouper <- merge(Mayers_Peak_2000, grouper, by = c("SPECIES_CD"))
Mayers_Peak_2000_grouper_biomass <- summarise_at(Mayers_Peak_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2000_grouper_biomass$Year <- ('2000')
Mayers_Peak_2000_grouper_biomass$Reef <- ('Mayers Peak')

Mayers_Peak_2004 <- import("Mayers_Peak/data/Mayers_Peak_2004.xls")

Mayers_Peak_2004_snapper <- merge(Mayers_Peak_2004, snapper, by = c("SPECIES_CD"))
Mayers_Peak_2004_snapper_biomass <- summarise_at(Mayers_Peak_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2004_snapper_biomass$Year <- ('2004')
Mayers_Peak_2004_snapper_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2004_grouper <- merge(Mayers_Peak_2004, grouper, by = c("SPECIES_CD"))
Mayers_Peak_2004_grouper_biomass <- summarise_at(Mayers_Peak_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2004_grouper_biomass$Year <- ('2004')
Mayers_Peak_2004_grouper_biomass$Reef <- ('Mayers Peak')

Mayers_Peak_2006 <- import("Mayers_Peak/data/Mayers_Peak_2006.xls")

Mayers_Peak_2006_snapper <- merge(Mayers_Peak_2006, snapper, by = c("SPECIES_CD"))
Mayers_Peak_2006_snapper_biomass <- summarise_at(Mayers_Peak_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2006_snapper_biomass$Year <- ('2006')
Mayers_Peak_2006_snapper_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2006_grouper <- merge(Mayers_Peak_2006, grouper, by = c("SPECIES_CD"))
Mayers_Peak_2006_grouper_biomass <- summarise_at(Mayers_Peak_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2006_grouper_biomass$Year <- ('2006')
Mayers_Peak_2006_grouper_biomass$Reef <- ('Mayers Peak')

Mayers_Peak_2008 <- import("Mayers_Peak/data/Mayers_Peak_2008.xls")

Mayers_Peak_2008_snapper <- merge(Mayers_Peak_2008, snapper, by = c("SPECIES_CD"))
Mayers_Peak_2008_snapper_biomass <- summarise_at(Mayers_Peak_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2008_snapper_biomass$Year <- ('2008')
Mayers_Peak_2008_snapper_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2008_grouper <- merge(Mayers_Peak_2008, grouper, by = c("SPECIES_CD"))
Mayers_Peak_2008_grouper_biomass <- summarise_at(Mayers_Peak_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2008_grouper_biomass$Year <- ('2008')
Mayers_Peak_2008_grouper_biomass$Reef <- ('Mayers Peak')

Mayers_Peak_2010 <- import("Mayers_Peak/data/Mayers_Peak_2010.xls")

Mayers_Peak_2010_snapper <- merge(Mayers_Peak_2010, snapper, by = c("SPECIES_CD"))
Mayers_Peak_2010_snapper_biomass <- summarise_at(Mayers_Peak_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2010_snapper_biomass$Year <- ('2010')
Mayers_Peak_2010_snapper_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2010_grouper <- merge(Mayers_Peak_2010, grouper, by = c("SPECIES_CD"))
Mayers_Peak_2010_grouper_biomass <- summarise_at(Mayers_Peak_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2010_grouper_biomass$Year <- ('2010')
Mayers_Peak_2010_grouper_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2012 <- import("Mayers_Peak/data/Mayers_Peak_2012.xls")

Mayers_Peak_2012_snapper <- merge(Mayers_Peak_2012, snapper, by = c("SPECIES_CD"))
Mayers_Peak_2012_snapper_biomass <- summarise_at(Mayers_Peak_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2012_snapper_biomass$Year <- ('2012')
Mayers_Peak_2012_snapper_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2012_grouper <- merge(Mayers_Peak_2012, grouper, by = c("SPECIES_CD"))
Mayers_Peak_2012_grouper_biomass <- summarise_at(Mayers_Peak_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2012_grouper_biomass$Year <- ('2012')
Mayers_Peak_2012_grouper_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2014 <- import("Mayers_Peak/data/Mayers_Peak_2014.xls")

Mayers_Peak_2014_snapper <- merge(Mayers_Peak_2014, snapper, by = c("SPECIES_CD"))
Mayers_Peak_2014_snapper_biomass <- summarise_at(Mayers_Peak_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2014_snapper_biomass$Year <- ('2014')
Mayers_Peak_2014_snapper_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2014_grouper <- merge(Mayers_Peak_2014, grouper, by = c("SPECIES_CD"))
Mayers_Peak_2014_grouper_biomass <- summarise_at(Mayers_Peak_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2014_grouper_biomass$Year <- ('2014')
Mayers_Peak_2014_grouper_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2016 <- import("Mayers_Peak/data/Mayers_Peak_2016.xls")

Mayers_Peak_2016_snapper <- merge(Mayers_Peak_2016, snapper, by = c("SPECIES_CD"))
Mayers_Peak_2016_snapper_biomass <- summarise_at(Mayers_Peak_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2016_snapper_biomass$Year <- ('2016')
Mayers_Peak_2016_snapper_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2016_grouper <- merge(Mayers_Peak_2016, grouper, by = c("SPECIES_CD"))
Mayers_Peak_2016_grouper_biomass <- summarise_at(Mayers_Peak_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2016_grouper_biomass$Year <- ('2016')
Mayers_Peak_2016_grouper_biomass$Reef <- ('Mayers Peak')


### Combine all years together for snapper_ and grouper_ seperately 

Mayers_Peak_snapper_1 <- rbind(Mayers_Peak_1999_snapper_biomass,Mayers_Peak_2000_snapper_biomass)
Mayers_Peak_snapper_2 <- rbind(Mayers_Peak_snapper_1,Mayers_Peak_2004_snapper_biomass)
Mayers_Peak_snapper_3 <- rbind(Mayers_Peak_snapper_2,Mayers_Peak_2006_snapper_biomass)
Mayers_Peak_snapper_4 <- rbind(Mayers_Peak_snapper_3,Mayers_Peak_2008_snapper_biomass)
Mayers_Peak_snapper_5 <- rbind(Mayers_Peak_snapper_4,Mayers_Peak_2010_snapper_biomass)
Mayers_Peak_snapper_6 <- rbind(Mayers_Peak_snapper_5,Mayers_Peak_2012_snapper_biomass)
Mayers_Peak_snapper_7 <- rbind(Mayers_Peak_snapper_6,Mayers_Peak_2014_snapper_biomass)
Mayers_Peak_snapper_biomass <- rbind(Mayers_Peak_snapper_7,Mayers_Peak_2016_snapper_biomass)


Mayers_Peak_grouper_1 <- rbind(Mayers_Peak_1999_grouper_biomass,Mayers_Peak_2000_grouper_biomass)
Mayers_Peak_grouper_2 <- rbind(Mayers_Peak_grouper_1,Mayers_Peak_2004_grouper_biomass)
Mayers_Peak_grouper_3 <- rbind(Mayers_Peak_grouper_2,Mayers_Peak_2006_grouper_biomass)
Mayers_Peak_grouper_4 <- rbind(Mayers_Peak_grouper_3,Mayers_Peak_2008_grouper_biomass)
Mayers_Peak_grouper_5 <- rbind(Mayers_Peak_grouper_4,Mayers_Peak_2010_grouper_biomass)
Mayers_Peak_grouper_6 <- rbind(Mayers_Peak_grouper_5,Mayers_Peak_2012_grouper_biomass)
Mayers_Peak_grouper_7 <- rbind(Mayers_Peak_grouper_6,Mayers_Peak_2014_grouper_biomass)
Mayers_Peak_grouper_biomass <- rbind(Mayers_Peak_grouper_7,Mayers_Peak_2016_grouper_biomass)


export(Mayers_Peak_snapper_biomass, "Mayers_Peak/data/Mayers_Peak_snapper__biomass.csv")
export(Mayers_Peak_grouper_biomass, "Mayers_Peak/data/Mayers_Peak_grouper__biomass.csv")



# Palmata Patch

Palmata_Patch_1999 <- import("Palmata_Patch/data/Palmata_Patch_1999.xls")


Palmata_Patch_1999_snapper <- merge(Palmata_Patch_1999, snapper, by = c("SPECIES_CD"))
Palmata_Patch_1999_snapper_biomass <- summarise_at(Palmata_Patch_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_1999_snapper_biomass$Year <- ('1999')
Palmata_Patch_1999_snapper_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_1999_grouper <- merge(Palmata_Patch_1999, grouper, by = c("SPECIES_CD"))
Palmata_Patch_1999_grouper_biomass <- summarise_at(Palmata_Patch_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_1999_grouper_biomass$Year <- ('1999')
Palmata_Patch_1999_grouper_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2000 <- import("Palmata_Patch/data/Palmata_Patch_2000.xls")

Palmata_Patch_2000_snapper <- merge(Palmata_Patch_2000, snapper, by = c("SPECIES_CD"))
Palmata_Patch_2000_snapper_biomass <- summarise_at(Palmata_Patch_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2000_snapper_biomass$Year <- ('2000')
Palmata_Patch_2000_snapper_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2000_grouper <- merge(Palmata_Patch_2000, grouper, by = c("SPECIES_CD"))
Palmata_Patch_2000_grouper_biomass <- summarise_at(Palmata_Patch_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2000_grouper_biomass$Year <- ('2000')
Palmata_Patch_2000_grouper_biomass$Reef <- ('Palmata Patch')

Palmata_Patch_2004 <- import("Palmata_Patch/data/Palmata_Patch_2004.xls")

Palmata_Patch_2004_snapper <- merge(Palmata_Patch_2004, snapper, by = c("SPECIES_CD"))
Palmata_Patch_2004_snapper_biomass <- summarise_at(Palmata_Patch_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2004_snapper_biomass$Year <- ('2004')
Palmata_Patch_2004_snapper_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2004_grouper <- merge(Palmata_Patch_2004, grouper, by = c("SPECIES_CD"))
Palmata_Patch_2004_grouper_biomass <- summarise_at(Palmata_Patch_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2004_grouper_biomass$Year <- ('2004')
Palmata_Patch_2004_grouper_biomass$Reef <- ('Palmata Patch')

Palmata_Patch_2006 <- import("Palmata_Patch/data/Palmata_Patch_2006.xls")

Palmata_Patch_2006_snapper <- merge(Palmata_Patch_2006, snapper, by = c("SPECIES_CD"))
Palmata_Patch_2006_snapper_biomass <- summarise_at(Palmata_Patch_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2006_snapper_biomass$Year <- ('2006')
Palmata_Patch_2006_snapper_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2006_grouper <- merge(Palmata_Patch_2006, grouper, by = c("SPECIES_CD"))
Palmata_Patch_2006_grouper_biomass <- summarise_at(Palmata_Patch_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2006_grouper_biomass$Year <- ('2006')
Palmata_Patch_2006_grouper_biomass$Reef <- ('Palmata Patch')

Palmata_Patch_2008 <- import("Palmata_Patch/data/Palmata_Patch_2008.xls")

Palmata_Patch_2008_snapper <- merge(Palmata_Patch_2008, snapper, by = c("SPECIES_CD"))
Palmata_Patch_2008_snapper_biomass <- summarise_at(Palmata_Patch_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2008_snapper_biomass$Year <- ('2008')
Palmata_Patch_2008_snapper_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2008_grouper <- merge(Palmata_Patch_2008, grouper, by = c("SPECIES_CD"))
Palmata_Patch_2008_grouper_biomass <- summarise_at(Palmata_Patch_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2008_grouper_biomass$Year <- ('2008')
Palmata_Patch_2008_grouper_biomass$Reef <- ('Palmata Patch')

Palmata_Patch_2010 <- import("Palmata_Patch/data/Palmata_Patch_2010.xls")

Palmata_Patch_2010_snapper <- merge(Palmata_Patch_2010, snapper, by = c("SPECIES_CD"))
Palmata_Patch_2010_snapper_biomass <- summarise_at(Palmata_Patch_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2010_snapper_biomass$Year <- ('2010')
Palmata_Patch_2010_snapper_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2010_grouper <- merge(Palmata_Patch_2010, grouper, by = c("SPECIES_CD"))
Palmata_Patch_2010_grouper_biomass <- summarise_at(Palmata_Patch_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2010_grouper_biomass$Year <- ('2010')
Palmata_Patch_2010_grouper_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2012 <- import("Palmata_Patch/data/Palmata_Patch_2012.xls")

Palmata_Patch_2012_snapper <- merge(Palmata_Patch_2012, snapper, by = c("SPECIES_CD"))
Palmata_Patch_2012_snapper_biomass <- summarise_at(Palmata_Patch_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2012_snapper_biomass$Year <- ('2012')
Palmata_Patch_2012_snapper_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2012_grouper <- merge(Palmata_Patch_2012, grouper, by = c("SPECIES_CD"))
Palmata_Patch_2012_grouper_biomass <- summarise_at(Palmata_Patch_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2012_grouper_biomass$Year <- ('2012')
Palmata_Patch_2012_grouper_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2014 <- import("Palmata_Patch/data/Palmata_Patch_2014.xls")

Palmata_Patch_2014_snapper <- merge(Palmata_Patch_2014, snapper, by = c("SPECIES_CD"))
Palmata_Patch_2014_snapper_biomass <- summarise_at(Palmata_Patch_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2014_snapper_biomass$Year <- ('2014')
Palmata_Patch_2014_snapper_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2014_grouper <- merge(Palmata_Patch_2014, grouper, by = c("SPECIES_CD"))
Palmata_Patch_2014_grouper_biomass <- summarise_at(Palmata_Patch_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2014_grouper_biomass$Year <- ('2014')
Palmata_Patch_2014_grouper_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2016 <- import("Palmata_Patch/data/Palmata_Patch_2016.xls")

Palmata_Patch_2016_snapper <- merge(Palmata_Patch_2016, snapper, by = c("SPECIES_CD"))
Palmata_Patch_2016_snapper_biomass <- summarise_at(Palmata_Patch_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2016_snapper_biomass$Year <- ('2016')
Palmata_Patch_2016_snapper_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2016_grouper <- merge(Palmata_Patch_2016, grouper, by = c("SPECIES_CD"))
Palmata_Patch_2016_grouper_biomass <- summarise_at(Palmata_Patch_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2016_grouper_biomass$Year <- ('2016')
Palmata_Patch_2016_grouper_biomass$Reef <- ('Palmata Patch')


### Combine all years together for snapper_ and grouper_ seperately 

Palmata_Patch_snapper_1 <- rbind(Palmata_Patch_1999_snapper_biomass,Palmata_Patch_2000_snapper_biomass)
Palmata_Patch_snapper_2 <- rbind(Palmata_Patch_snapper_1,Palmata_Patch_2004_snapper_biomass)
Palmata_Patch_snapper_3 <- rbind(Palmata_Patch_snapper_2,Palmata_Patch_2006_snapper_biomass)
Palmata_Patch_snapper_4 <- rbind(Palmata_Patch_snapper_3,Palmata_Patch_2008_snapper_biomass)
Palmata_Patch_snapper_5 <- rbind(Palmata_Patch_snapper_4,Palmata_Patch_2010_snapper_biomass)
Palmata_Patch_snapper_6 <- rbind(Palmata_Patch_snapper_5,Palmata_Patch_2012_snapper_biomass)
Palmata_Patch_snapper_7 <- rbind(Palmata_Patch_snapper_6,Palmata_Patch_2014_snapper_biomass)
Palmata_Patch_snapper_biomass <- rbind(Palmata_Patch_snapper_7,Palmata_Patch_2016_snapper_biomass)


Palmata_Patch_grouper_1 <- rbind(Palmata_Patch_1999_grouper_biomass,Palmata_Patch_2000_grouper_biomass)
Palmata_Patch_grouper_2 <- rbind(Palmata_Patch_grouper_1,Palmata_Patch_2004_grouper_biomass)
Palmata_Patch_grouper_3 <- rbind(Palmata_Patch_grouper_2,Palmata_Patch_2006_grouper_biomass)
Palmata_Patch_grouper_4 <- rbind(Palmata_Patch_grouper_3,Palmata_Patch_2008_grouper_biomass)
Palmata_Patch_grouper_5 <- rbind(Palmata_Patch_grouper_4,Palmata_Patch_2010_grouper_biomass)
Palmata_Patch_grouper_6 <- rbind(Palmata_Patch_grouper_5,Palmata_Patch_2012_grouper_biomass)
Palmata_Patch_grouper_7 <- rbind(Palmata_Patch_grouper_6,Palmata_Patch_2014_grouper_biomass)
Palmata_Patch_grouper_biomass <- rbind(Palmata_Patch_grouper_7,Palmata_Patch_2016_grouper_biomass)


export(Palmata_Patch_snapper_biomass, "Palmata_Patch/data/Palmata_Patch_snapper__biomass.csv")
export(Palmata_Patch_grouper_biomass, "Palmata_Patch/data/Palmata_Patch_grouper__biomass.csv")




# Prolifera Patch

Prolifera_Patch_1999 <- import("Prolifera_Patch/data/Prolifera_Patch_1999.xls")


Prolifera_Patch_1999_snapper <- merge(Prolifera_Patch_1999, snapper, by = c("SPECIES_CD"))
Prolifera_Patch_1999_snapper_biomass <- summarise_at(Prolifera_Patch_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_1999_snapper_biomass$Year <- ('1999')
Prolifera_Patch_1999_snapper_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_1999_grouper <- merge(Prolifera_Patch_1999, grouper, by = c("SPECIES_CD"))
Prolifera_Patch_1999_grouper_biomass <- summarise_at(Prolifera_Patch_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_1999_grouper_biomass$Year <- ('1999')
Prolifera_Patch_1999_grouper_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2000 <- import("Prolifera_Patch/data/Prolifera_Patch_2000.xls")

Prolifera_Patch_2000_snapper <- merge(Prolifera_Patch_2000, snapper, by = c("SPECIES_CD"))
Prolifera_Patch_2000_snapper_biomass <- summarise_at(Prolifera_Patch_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2000_snapper_biomass$Year <- ('2000')
Prolifera_Patch_2000_snapper_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2000_grouper <- merge(Prolifera_Patch_2000, grouper, by = c("SPECIES_CD"))
Prolifera_Patch_2000_grouper_biomass <- summarise_at(Prolifera_Patch_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2000_grouper_biomass$Year <- ('2000')
Prolifera_Patch_2000_grouper_biomass$Reef <- ('Prolifera Patch')

Prolifera_Patch_2004 <- import("Prolifera_Patch/data/Prolifera_Patch_2004.xls")

Prolifera_Patch_2004_snapper <- merge(Prolifera_Patch_2004, snapper, by = c("SPECIES_CD"))
Prolifera_Patch_2004_snapper_biomass <- summarise_at(Prolifera_Patch_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2004_snapper_biomass$Year <- ('2004')
Prolifera_Patch_2004_snapper_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2004_grouper <- merge(Prolifera_Patch_2004, grouper, by = c("SPECIES_CD"))
Prolifera_Patch_2004_grouper_biomass <- summarise_at(Prolifera_Patch_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2004_grouper_biomass$Year <- ('2004')
Prolifera_Patch_2004_grouper_biomass$Reef <- ('Prolifera Patch')

Prolifera_Patch_2006 <- import("Prolifera_Patch/data/Prolifera_Patch_2006.xls")

Prolifera_Patch_2006_snapper <- merge(Prolifera_Patch_2006, snapper, by = c("SPECIES_CD"))
Prolifera_Patch_2006_snapper_biomass <- summarise_at(Prolifera_Patch_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2006_snapper_biomass$Year <- ('2006')
Prolifera_Patch_2006_snapper_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2006_grouper <- merge(Prolifera_Patch_2006, grouper, by = c("SPECIES_CD"))
Prolifera_Patch_2006_grouper_biomass <- summarise_at(Prolifera_Patch_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2006_grouper_biomass$Year <- ('2006')
Prolifera_Patch_2006_grouper_biomass$Reef <- ('Prolifera Patch')

Prolifera_Patch_2008 <- import("Prolifera_Patch/data/Prolifera_Patch_2008.xls")

Prolifera_Patch_2008_snapper <- merge(Prolifera_Patch_2008, snapper, by = c("SPECIES_CD"))
Prolifera_Patch_2008_snapper_biomass <- summarise_at(Prolifera_Patch_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2008_snapper_biomass$Year <- ('2008')
Prolifera_Patch_2008_snapper_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2008_grouper <- merge(Prolifera_Patch_2008, grouper, by = c("SPECIES_CD"))
Prolifera_Patch_2008_grouper_biomass <- summarise_at(Prolifera_Patch_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2008_grouper_biomass$Year <- ('2008')
Prolifera_Patch_2008_grouper_biomass$Reef <- ('Prolifera Patch')

Prolifera_Patch_2010 <- import("Prolifera_Patch/data/Prolifera_Patch_2010.xls")

Prolifera_Patch_2010_snapper <- merge(Prolifera_Patch_2010, snapper, by = c("SPECIES_CD"))
Prolifera_Patch_2010_snapper_biomass <- summarise_at(Prolifera_Patch_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2010_snapper_biomass$Year <- ('2010')
Prolifera_Patch_2010_snapper_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2010_grouper <- merge(Prolifera_Patch_2010, grouper, by = c("SPECIES_CD"))
Prolifera_Patch_2010_grouper_biomass <- summarise_at(Prolifera_Patch_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2010_grouper_biomass$Year <- ('2010')
Prolifera_Patch_2010_grouper_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2012 <- import("Prolifera_Patch/data/Prolifera_Patch_2012.xls")

Prolifera_Patch_2012_snapper <- merge(Prolifera_Patch_2012, snapper, by = c("SPECIES_CD"))
Prolifera_Patch_2012_snapper_biomass <- summarise_at(Prolifera_Patch_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2012_snapper_biomass$Year <- ('2012')
Prolifera_Patch_2012_snapper_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2012_grouper <- merge(Prolifera_Patch_2012, grouper, by = c("SPECIES_CD"))
Prolifera_Patch_2012_grouper_biomass <- summarise_at(Prolifera_Patch_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2012_grouper_biomass$Year <- ('2012')
Prolifera_Patch_2012_grouper_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2014 <- import("Prolifera_Patch/data/Prolifera_Patch_2014.xls")

Prolifera_Patch_2014_snapper <- merge(Prolifera_Patch_2014, snapper, by = c("SPECIES_CD"))
Prolifera_Patch_2014_snapper_biomass <- summarise_at(Prolifera_Patch_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2014_snapper_biomass$Year <- ('2014')
Prolifera_Patch_2014_snapper_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2014_grouper <- merge(Prolifera_Patch_2014, grouper, by = c("SPECIES_CD"))
Prolifera_Patch_2014_grouper_biomass <- summarise_at(Prolifera_Patch_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2014_grouper_biomass$Year <- ('2014')
Prolifera_Patch_2014_grouper_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2016 <- import("Prolifera_Patch/data/Prolifera_Patch_2016.xls")

Prolifera_Patch_2016_snapper <- merge(Prolifera_Patch_2016, snapper, by = c("SPECIES_CD"))
Prolifera_Patch_2016_snapper_biomass <- summarise_at(Prolifera_Patch_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2016_snapper_biomass$Year <- ('2016')
Prolifera_Patch_2016_snapper_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2016_grouper <- merge(Prolifera_Patch_2016, grouper, by = c("SPECIES_CD"))
Prolifera_Patch_2016_grouper_biomass <- summarise_at(Prolifera_Patch_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2016_grouper_biomass$Year <- ('2016')
Prolifera_Patch_2016_grouper_biomass$Reef <- ('Prolifera Patch')


### Combine all years together for snapper_ and grouper_ seperately 

Prolifera_Patch_snapper_1 <- rbind(Prolifera_Patch_1999_snapper_biomass,Prolifera_Patch_2000_snapper_biomass)
Prolifera_Patch_snapper_2 <- rbind(Prolifera_Patch_snapper_1,Prolifera_Patch_2004_snapper_biomass)
Prolifera_Patch_snapper_3 <- rbind(Prolifera_Patch_snapper_2,Prolifera_Patch_2006_snapper_biomass)
Prolifera_Patch_snapper_4 <- rbind(Prolifera_Patch_snapper_3,Prolifera_Patch_2008_snapper_biomass)
Prolifera_Patch_snapper_5 <- rbind(Prolifera_Patch_snapper_4,Prolifera_Patch_2010_snapper_biomass)
Prolifera_Patch_snapper_6 <- rbind(Prolifera_Patch_snapper_5,Prolifera_Patch_2012_snapper_biomass)
Prolifera_Patch_snapper_7 <- rbind(Prolifera_Patch_snapper_6,Prolifera_Patch_2014_snapper_biomass)
Prolifera_Patch_snapper_biomass <- rbind(Prolifera_Patch_snapper_7,Prolifera_Patch_2016_snapper_biomass)


Prolifera_Patch_grouper_1 <- rbind(Prolifera_Patch_1999_grouper_biomass,Prolifera_Patch_2000_grouper_biomass)
Prolifera_Patch_grouper_2 <- rbind(Prolifera_Patch_grouper_1,Prolifera_Patch_2004_grouper_biomass)
Prolifera_Patch_grouper_3 <- rbind(Prolifera_Patch_grouper_2,Prolifera_Patch_2006_grouper_biomass)
Prolifera_Patch_grouper_4 <- rbind(Prolifera_Patch_grouper_3,Prolifera_Patch_2008_grouper_biomass)
Prolifera_Patch_grouper_5 <- rbind(Prolifera_Patch_grouper_4,Prolifera_Patch_2010_grouper_biomass)
Prolifera_Patch_grouper_6 <- rbind(Prolifera_Patch_grouper_5,Prolifera_Patch_2012_grouper_biomass)
Prolifera_Patch_grouper_7 <- rbind(Prolifera_Patch_grouper_6,Prolifera_Patch_2014_grouper_biomass)
Prolifera_Patch_grouper_biomass <- rbind(Prolifera_Patch_grouper_7,Prolifera_Patch_2016_grouper_biomass)


export(Prolifera_Patch_snapper_biomass, "Prolifera_Patch/data/Prolifera_Patch_snapper__biomass.csv")
export(Prolifera_Patch_grouper_biomass, "Prolifera_Patch/data/Prolifera_Patch_grouper__biomass.csv")



# Temptation Rock

Temptation_Rock_1999 <- import("Temptation_Rock/data/Temptation_Rock_1999.xls")


Temptation_Rock_1999_snapper <- merge(Temptation_Rock_1999, snapper, by = c("SPECIES_CD"))
Temptation_Rock_1999_snapper_biomass <- summarise_at(Temptation_Rock_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_1999_snapper_biomass$Year <- ('1999')
Temptation_Rock_1999_snapper_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_1999_grouper <- merge(Temptation_Rock_1999, grouper, by = c("SPECIES_CD"))
Temptation_Rock_1999_grouper_biomass <- summarise_at(Temptation_Rock_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_1999_grouper_biomass$Year <- ('1999')
Temptation_Rock_1999_grouper_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2000 <- import("Temptation_Rock/data/Temptation_Rock_2000.xls")

Temptation_Rock_2000_snapper <- merge(Temptation_Rock_2000, snapper, by = c("SPECIES_CD"))
Temptation_Rock_2000_snapper_biomass <- summarise_at(Temptation_Rock_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2000_snapper_biomass$Year <- ('2000')
Temptation_Rock_2000_snapper_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2000_grouper <- merge(Temptation_Rock_2000, grouper, by = c("SPECIES_CD"))
Temptation_Rock_2000_grouper_biomass <- summarise_at(Temptation_Rock_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2000_grouper_biomass$Year <- ('2000')
Temptation_Rock_2000_grouper_biomass$Reef <- ('Temptation Rock')

Temptation_Rock_2004 <- import("Temptation_Rock/data/Temptation_Rock_2004.xls")

Temptation_Rock_2004_snapper <- merge(Temptation_Rock_2004, snapper, by = c("SPECIES_CD"))
Temptation_Rock_2004_snapper_biomass <- summarise_at(Temptation_Rock_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2004_snapper_biomass$Year <- ('2004')
Temptation_Rock_2004_snapper_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2004_grouper <- merge(Temptation_Rock_2004, grouper, by = c("SPECIES_CD"))
Temptation_Rock_2004_grouper_biomass <- summarise_at(Temptation_Rock_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2004_grouper_biomass$Year <- ('2004')
Temptation_Rock_2004_grouper_biomass$Reef <- ('Temptation Rock')

Temptation_Rock_2006 <- import("Temptation_Rock/data/Temptation_Rock_2006.xls")

Temptation_Rock_2006_snapper <- merge(Temptation_Rock_2006, snapper, by = c("SPECIES_CD"))
Temptation_Rock_2006_snapper_biomass <- summarise_at(Temptation_Rock_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2006_snapper_biomass$Year <- ('2006')
Temptation_Rock_2006_snapper_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2006_grouper <- merge(Temptation_Rock_2006, grouper, by = c("SPECIES_CD"))
Temptation_Rock_2006_grouper_biomass <- summarise_at(Temptation_Rock_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2006_grouper_biomass$Year <- ('2006')
Temptation_Rock_2006_grouper_biomass$Reef <- ('Temptation Rock')

Temptation_Rock_2008 <- import("Temptation_Rock/data/Temptation_Rock_2008.xls")

Temptation_Rock_2008_snapper <- merge(Temptation_Rock_2008, snapper, by = c("SPECIES_CD"))
Temptation_Rock_2008_snapper_biomass <- summarise_at(Temptation_Rock_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2008_snapper_biomass$Year <- ('2008')
Temptation_Rock_2008_snapper_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2008_grouper <- merge(Temptation_Rock_2008, grouper, by = c("SPECIES_CD"))
Temptation_Rock_2008_grouper_biomass <- summarise_at(Temptation_Rock_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2008_grouper_biomass$Year <- ('2008')
Temptation_Rock_2008_grouper_biomass$Reef <- ('Temptation Rock')

Temptation_Rock_2010 <- import("Temptation_Rock/data/Temptation_Rock_2010.xls")

Temptation_Rock_2010_snapper <- merge(Temptation_Rock_2010, snapper, by = c("SPECIES_CD"))
Temptation_Rock_2010_snapper_biomass <- summarise_at(Temptation_Rock_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2010_snapper_biomass$Year <- ('2010')
Temptation_Rock_2010_snapper_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2010_grouper <- merge(Temptation_Rock_2010, grouper, by = c("SPECIES_CD"))
Temptation_Rock_2010_grouper_biomass <- summarise_at(Temptation_Rock_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2010_grouper_biomass$Year <- ('2010')
Temptation_Rock_2010_grouper_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2012 <- import("Temptation_Rock/data/Temptation_Rock_2012.xls")

Temptation_Rock_2012_snapper <- merge(Temptation_Rock_2012, snapper, by = c("SPECIES_CD"))
Temptation_Rock_2012_snapper_biomass <- summarise_at(Temptation_Rock_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2012_snapper_biomass$Year <- ('2012')
Temptation_Rock_2012_snapper_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2012_grouper <- merge(Temptation_Rock_2012, grouper, by = c("SPECIES_CD"))
Temptation_Rock_2012_grouper_biomass <- summarise_at(Temptation_Rock_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2012_grouper_biomass$Year <- ('2012')
Temptation_Rock_2012_grouper_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2014 <- import("Temptation_Rock/data/Temptation_Rock_2014.xls")

Temptation_Rock_2014_snapper <- merge(Temptation_Rock_2014, snapper, by = c("SPECIES_CD"))
Temptation_Rock_2014_snapper_biomass <- summarise_at(Temptation_Rock_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2014_snapper_biomass$Year <- ('2014')
Temptation_Rock_2014_snapper_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2014_grouper <- merge(Temptation_Rock_2014, grouper, by = c("SPECIES_CD"))
Temptation_Rock_2014_grouper_biomass <- summarise_at(Temptation_Rock_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2014_grouper_biomass$Year <- ('2014')
Temptation_Rock_2014_grouper_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2016 <- import("Temptation_Rock/data/Temptation_Rock_2016.xls")

Temptation_Rock_2016_snapper <- merge(Temptation_Rock_2016, snapper, by = c("SPECIES_CD"))
Temptation_Rock_2016_snapper_biomass <- summarise_at(Temptation_Rock_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2016_snapper_biomass$Year <- ('2016')
Temptation_Rock_2016_snapper_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2016_grouper <- merge(Temptation_Rock_2016, grouper, by = c("SPECIES_CD"))
Temptation_Rock_2016_grouper_biomass <- summarise_at(Temptation_Rock_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2016_grouper_biomass$Year <- ('2016')
Temptation_Rock_2016_grouper_biomass$Reef <- ('Temptation Rock')


### Combine all years together for snapper_ and grouper_ seperately 

Temptation_Rock_snapper_1 <- rbind(Temptation_Rock_1999_snapper_biomass,Temptation_Rock_2000_snapper_biomass)
Temptation_Rock_snapper_2 <- rbind(Temptation_Rock_snapper_1,Temptation_Rock_2004_snapper_biomass)
Temptation_Rock_snapper_3 <- rbind(Temptation_Rock_snapper_2,Temptation_Rock_2006_snapper_biomass)
Temptation_Rock_snapper_4 <- rbind(Temptation_Rock_snapper_3,Temptation_Rock_2008_snapper_biomass)
Temptation_Rock_snapper_5 <- rbind(Temptation_Rock_snapper_4,Temptation_Rock_2010_snapper_biomass)
Temptation_Rock_snapper_6 <- rbind(Temptation_Rock_snapper_5,Temptation_Rock_2012_snapper_biomass)
Temptation_Rock_snapper_7 <- rbind(Temptation_Rock_snapper_6,Temptation_Rock_2014_snapper_biomass)
Temptation_Rock_snapper_biomass <- rbind(Temptation_Rock_snapper_7,Temptation_Rock_2016_snapper_biomass)


Temptation_Rock_grouper_1 <- rbind(Temptation_Rock_1999_grouper_biomass,Temptation_Rock_2000_grouper_biomass)
Temptation_Rock_grouper_2 <- rbind(Temptation_Rock_grouper_1,Temptation_Rock_2004_grouper_biomass)
Temptation_Rock_grouper_3 <- rbind(Temptation_Rock_grouper_2,Temptation_Rock_2006_grouper_biomass)
Temptation_Rock_grouper_4 <- rbind(Temptation_Rock_grouper_3,Temptation_Rock_2008_grouper_biomass)
Temptation_Rock_grouper_5 <- rbind(Temptation_Rock_grouper_4,Temptation_Rock_2010_grouper_biomass)
Temptation_Rock_grouper_6 <- rbind(Temptation_Rock_grouper_5,Temptation_Rock_2012_grouper_biomass)
Temptation_Rock_grouper_7 <- rbind(Temptation_Rock_grouper_6,Temptation_Rock_2014_grouper_biomass)
Temptation_Rock_grouper_biomass <- rbind(Temptation_Rock_grouper_7,Temptation_Rock_2016_grouper_biomass)


export(Temptation_Rock_snapper_biomass, "Temptation_Rock/data/Temptation_Rock_snapper__biomass.csv")
export(Temptation_Rock_grouper_biomass, "Temptation_Rock/data/Temptation_Rock_grouper__biomass.csv")




# Texas Rock

Texas_Rock_1999 <- import("Texas_Rock/data/Texas_Rock_1999.xls")


Texas_Rock_1999_snapper <- merge(Texas_Rock_1999, snapper, by = c("SPECIES_CD"))
Texas_Rock_1999_snapper_biomass <- summarise_at(Texas_Rock_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_1999_snapper_biomass$Year <- ('1999')
Texas_Rock_1999_snapper_biomass$Reef <- ('Texas Rock')


Texas_Rock_1999_grouper <- merge(Texas_Rock_1999, grouper, by = c("SPECIES_CD"))
Texas_Rock_1999_grouper_biomass <- summarise_at(Texas_Rock_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_1999_grouper_biomass$Year <- ('1999')
Texas_Rock_1999_grouper_biomass$Reef <- ('Texas Rock')


Texas_Rock_2000 <- import("Texas_Rock/data/Texas_Rock_2000.xls")

Texas_Rock_2000_snapper <- merge(Texas_Rock_2000, snapper, by = c("SPECIES_CD"))
Texas_Rock_2000_snapper_biomass <- summarise_at(Texas_Rock_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2000_snapper_biomass$Year <- ('2000')
Texas_Rock_2000_snapper_biomass$Reef <- ('Texas Rock')


Texas_Rock_2000_grouper <- merge(Texas_Rock_2000, grouper, by = c("SPECIES_CD"))
Texas_Rock_2000_grouper_biomass <- summarise_at(Texas_Rock_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2000_grouper_biomass$Year <- ('2000')
Texas_Rock_2000_grouper_biomass$Reef <- ('Texas Rock')

Texas_Rock_2004 <- import("Texas_Rock/data/Texas_Rock_2004.xls")

Texas_Rock_2004_snapper <- merge(Texas_Rock_2004, snapper, by = c("SPECIES_CD"))
Texas_Rock_2004_snapper_biomass <- summarise_at(Texas_Rock_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2004_snapper_biomass$Year <- ('2004')
Texas_Rock_2004_snapper_biomass$Reef <- ('Texas Rock')


Texas_Rock_2004_grouper <- merge(Texas_Rock_2004, grouper, by = c("SPECIES_CD"))
Texas_Rock_2004_grouper_biomass <- summarise_at(Texas_Rock_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2004_grouper_biomass$Year <- ('2004')
Texas_Rock_2004_grouper_biomass$Reef <- ('Texas Rock')

Texas_Rock_2006 <- import("Texas_Rock/data/Texas_Rock_2006.xls")

Texas_Rock_2006_snapper <- merge(Texas_Rock_2006, snapper, by = c("SPECIES_CD"))
Texas_Rock_2006_snapper_biomass <- summarise_at(Texas_Rock_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2006_snapper_biomass$Year <- ('2006')
Texas_Rock_2006_snapper_biomass$Reef <- ('Texas Rock')


Texas_Rock_2006_grouper <- merge(Texas_Rock_2006, grouper, by = c("SPECIES_CD"))
Texas_Rock_2006_grouper_biomass <- summarise_at(Texas_Rock_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2006_grouper_biomass$Year <- ('2006')
Texas_Rock_2006_grouper_biomass$Reef <- ('Texas Rock')

Texas_Rock_2008 <- import("Texas_Rock/data/Texas_Rock_2008.xls")

Texas_Rock_2008_snapper <- merge(Texas_Rock_2008, snapper, by = c("SPECIES_CD"))
Texas_Rock_2008_snapper_biomass <- summarise_at(Texas_Rock_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2008_snapper_biomass$Year <- ('2008')
Texas_Rock_2008_snapper_biomass$Reef <- ('Texas Rock')


Texas_Rock_2008_grouper <- merge(Texas_Rock_2008, grouper, by = c("SPECIES_CD"))
Texas_Rock_2008_grouper_biomass <- summarise_at(Texas_Rock_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2008_grouper_biomass$Year <- ('2008')
Texas_Rock_2008_grouper_biomass$Reef <- ('Texas Rock')

Texas_Rock_2010 <- import("Texas_Rock/data/Texas_Rock_2010.xls")

Texas_Rock_2010_snapper <- merge(Texas_Rock_2010, snapper, by = c("SPECIES_CD"))
Texas_Rock_2010_snapper_biomass <- summarise_at(Texas_Rock_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2010_snapper_biomass$Year <- ('2010')
Texas_Rock_2010_snapper_biomass$Reef <- ('Texas Rock')


Texas_Rock_2010_grouper <- merge(Texas_Rock_2010, grouper, by = c("SPECIES_CD"))
Texas_Rock_2010_grouper_biomass <- summarise_at(Texas_Rock_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2010_grouper_biomass$Year <- ('2010')
Texas_Rock_2010_grouper_biomass$Reef <- ('Texas Rock')


Texas_Rock_2012 <- import("Texas_Rock/data/Texas_Rock_2012.xls")

Texas_Rock_2012_snapper <- merge(Texas_Rock_2012, snapper, by = c("SPECIES_CD"))
Texas_Rock_2012_snapper_biomass <- summarise_at(Texas_Rock_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2012_snapper_biomass$Year <- ('2012')
Texas_Rock_2012_snapper_biomass$Reef <- ('Texas Rock')


Texas_Rock_2012_grouper <- merge(Texas_Rock_2012, grouper, by = c("SPECIES_CD"))
Texas_Rock_2012_grouper_biomass <- summarise_at(Texas_Rock_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2012_grouper_biomass$Year <- ('2012')
Texas_Rock_2012_grouper_biomass$Reef <- ('Texas Rock')


Texas_Rock_2014 <- import("Texas_Rock/data/Texas_Rock_2014.xls")

Texas_Rock_2014_snapper <- merge(Texas_Rock_2014, snapper, by = c("SPECIES_CD"))
Texas_Rock_2014_snapper_biomass <- summarise_at(Texas_Rock_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2014_snapper_biomass$Year <- ('2014')
Texas_Rock_2014_snapper_biomass$Reef <- ('Texas Rock')


Texas_Rock_2014_grouper <- merge(Texas_Rock_2014, grouper, by = c("SPECIES_CD"))
Texas_Rock_2014_grouper_biomass <- summarise_at(Texas_Rock_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2014_grouper_biomass$Year <- ('2014')
Texas_Rock_2014_grouper_biomass$Reef <- ('Texas Rock')


Texas_Rock_2016 <- import("Texas_Rock/data/Texas_Rock_2016.xls")

Texas_Rock_2016_snapper <- merge(Texas_Rock_2016, snapper, by = c("SPECIES_CD"))
Texas_Rock_2016_snapper_biomass <- summarise_at(Texas_Rock_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2016_snapper_biomass$Year <- ('2016')
Texas_Rock_2016_snapper_biomass$Reef <- ('Texas Rock')


Texas_Rock_2016_grouper <- merge(Texas_Rock_2016, grouper, by = c("SPECIES_CD"))
Texas_Rock_2016_grouper_biomass <- summarise_at(Texas_Rock_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2016_grouper_biomass$Year <- ('2016')
Texas_Rock_2016_grouper_biomass$Reef <- ('Texas Rock')


### Combine all years together for snapper_ and grouper_ seperately 

Texas_Rock_snapper_1 <- rbind(Texas_Rock_1999_snapper_biomass,Texas_Rock_2000_snapper_biomass)
Texas_Rock_snapper_2 <- rbind(Texas_Rock_snapper_1,Texas_Rock_2004_snapper_biomass)
Texas_Rock_snapper_3 <- rbind(Texas_Rock_snapper_2,Texas_Rock_2006_snapper_biomass)
Texas_Rock_snapper_4 <- rbind(Texas_Rock_snapper_3,Texas_Rock_2008_snapper_biomass)
Texas_Rock_snapper_5 <- rbind(Texas_Rock_snapper_4,Texas_Rock_2010_snapper_biomass)
Texas_Rock_snapper_6 <- rbind(Texas_Rock_snapper_5,Texas_Rock_2012_snapper_biomass)
Texas_Rock_snapper_7 <- rbind(Texas_Rock_snapper_6,Texas_Rock_2014_snapper_biomass)
Texas_Rock_snapper_biomass <- rbind(Texas_Rock_snapper_7,Texas_Rock_2016_snapper_biomass)


Texas_Rock_grouper_1 <- rbind(Texas_Rock_1999_grouper_biomass,Texas_Rock_2000_grouper_biomass)
Texas_Rock_grouper_2 <- rbind(Texas_Rock_grouper_1,Texas_Rock_2004_grouper_biomass)
Texas_Rock_grouper_3 <- rbind(Texas_Rock_grouper_2,Texas_Rock_2006_grouper_biomass)
Texas_Rock_grouper_4 <- rbind(Texas_Rock_grouper_3,Texas_Rock_2008_grouper_biomass)
Texas_Rock_grouper_5 <- rbind(Texas_Rock_grouper_4,Texas_Rock_2010_grouper_biomass)
Texas_Rock_grouper_6 <- rbind(Texas_Rock_grouper_5,Texas_Rock_2012_grouper_biomass)
Texas_Rock_grouper_7 <- rbind(Texas_Rock_grouper_6,Texas_Rock_2014_grouper_biomass)
Texas_Rock_grouper_biomass <- rbind(Texas_Rock_grouper_7,Texas_Rock_2016_grouper_biomass)


export(Texas_Rock_snapper_biomass, "Texas_Rock/data/Texas_Rock_snapper__biomass.csv")
export(Texas_Rock_grouper_biomass, "Texas_Rock/data/Texas_Rock_grouper__biomass.csv")


# Maze

# Maze_1999 <- import("The_Maze/data/Maze_1999.xls")
# 
# 
# Maze_1999_snapper <- merge(Maze_1999, snapper, by = c("SPECIES_CD"))
# Maze_1999_snapper_biomass <- summarise_at(Maze_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Maze_1999_snapper_biomass$Year <- ('1999')
# Maze_1999_snapper_biomass$Reef <- ('Maze')


Maze_1999_grouper <- merge(Maze_1999, grouper, by = c("SPECIES_CD"))
Maze_1999_grouper_biomass <- summarise_at(Maze_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_1999_grouper_biomass$Year <- ('1999')
Maze_1999_grouper_biomass$Reef <- ('Maze')


Maze_2000 <- import("The_Maze/data/Maze_2000.xls")

Maze_2000_snapper <- merge(Maze_2000, snapper, by = c("SPECIES_CD"))
Maze_2000_snapper_biomass <- summarise_at(Maze_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2000_snapper_biomass$Year <- ('2000')
Maze_2000_snapper_biomass$Reef <- ('Maze')


Maze_2000_grouper <- merge(Maze_2000, grouper, by = c("SPECIES_CD"))
Maze_2000_grouper_biomass <- summarise_at(Maze_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2000_grouper_biomass$Year <- ('2000')
Maze_2000_grouper_biomass$Reef <- ('Maze')

Maze_2004 <- import("The_Maze/data/Maze_2004.xls")

Maze_2004_snapper <- merge(Maze_2004, snapper, by = c("SPECIES_CD"))
Maze_2004_snapper_biomass <- summarise_at(Maze_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2004_snapper_biomass$Year <- ('2004')
Maze_2004_snapper_biomass$Reef <- ('Maze')


Maze_2004_grouper <- merge(Maze_2004, grouper, by = c("SPECIES_CD"))
Maze_2004_grouper_biomass <- summarise_at(Maze_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2004_grouper_biomass$Year <- ('2004')
Maze_2004_grouper_biomass$Reef <- ('Maze')

Maze_2006 <- import("The_Maze/data/Maze_2006.xls")

Maze_2006_snapper <- merge(Maze_2006, snapper, by = c("SPECIES_CD"))
Maze_2006_snapper_biomass <- summarise_at(Maze_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2006_snapper_biomass$Year <- ('2006')
Maze_2006_snapper_biomass$Reef <- ('Maze')


Maze_2006_grouper <- merge(Maze_2006, grouper, by = c("SPECIES_CD"))
Maze_2006_grouper_biomass <- summarise_at(Maze_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2006_grouper_biomass$Year <- ('2006')
Maze_2006_grouper_biomass$Reef <- ('Maze')

Maze_2008 <- import("The_Maze/data/Maze_2008.xls")

Maze_2008_snapper <- merge(Maze_2008, snapper, by = c("SPECIES_CD"))
Maze_2008_snapper_biomass <- summarise_at(Maze_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2008_snapper_biomass$Year <- ('2008')
Maze_2008_snapper_biomass$Reef <- ('Maze')


Maze_2008_grouper <- merge(Maze_2008, grouper, by = c("SPECIES_CD"))
Maze_2008_grouper_biomass <- summarise_at(Maze_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2008_grouper_biomass$Year <- ('2008')
Maze_2008_grouper_biomass$Reef <- ('Maze')

Maze_2010 <- import("The_Maze/data/Maze_2010.xls")

Maze_2010_snapper <- merge(Maze_2010, snapper, by = c("SPECIES_CD"))
Maze_2010_snapper_biomass <- summarise_at(Maze_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2010_snapper_biomass$Year <- ('2010')
Maze_2010_snapper_biomass$Reef <- ('Maze')


Maze_2010_grouper <- merge(Maze_2010, grouper, by = c("SPECIES_CD"))
Maze_2010_grouper_biomass <- summarise_at(Maze_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2010_grouper_biomass$Year <- ('2010')
Maze_2010_grouper_biomass$Reef <- ('Maze')


Maze_2012 <- import("The_Maze/data/Maze_2012.xls")

Maze_2012_snapper <- merge(Maze_2012, snapper, by = c("SPECIES_CD"))
Maze_2012_snapper_biomass <- summarise_at(Maze_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2012_snapper_biomass$Year <- ('2012')
Maze_2012_snapper_biomass$Reef <- ('Maze')


Maze_2012_grouper <- merge(Maze_2012, grouper, by = c("SPECIES_CD"))
Maze_2012_grouper_biomass <- summarise_at(Maze_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2012_grouper_biomass$Year <- ('2012')
Maze_2012_grouper_biomass$Reef <- ('Maze')


Maze_2014 <- import("The_Maze/data/Maze_2014.xls")

Maze_2014_snapper <- merge(Maze_2014, snapper, by = c("SPECIES_CD"))
Maze_2014_snapper_biomass <- summarise_at(Maze_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2014_snapper_biomass$Year <- ('2014')
Maze_2014_snapper_biomass$Reef <- ('Maze')


Maze_2014_grouper <- merge(Maze_2014, grouper, by = c("SPECIES_CD"))
Maze_2014_grouper_biomass <- summarise_at(Maze_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2014_grouper_biomass$Year <- ('2014')
Maze_2014_grouper_biomass$Reef <- ('Maze')


Maze_2016 <- import("The_Maze/data/Maze_2016.xls")

Maze_2016_snapper <- merge(Maze_2016, snapper, by = c("SPECIES_CD"))
Maze_2016_snapper_biomass <- summarise_at(Maze_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2016_snapper_biomass$Year <- ('2016')
Maze_2016_snapper_biomass$Reef <- ('Maze')


Maze_2016_grouper <- merge(Maze_2016, grouper, by = c("SPECIES_CD"))
Maze_2016_grouper_biomass <- summarise_at(Maze_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2016_grouper_biomass$Year <- ('2016')
Maze_2016_grouper_biomass$Reef <- ('Maze')


### Combine all years together for snapper_ and grouper_ seperately 

#Maze_snapper_1 <- rbind(Maze_1999_snapper_biomass,Maze_2000_snapper_biomass)
Maze_snapper_2 <- rbind(Maze_2000_snapper_biomass,Maze_2004_snapper_biomass)
Maze_snapper_3 <- rbind(Maze_snapper_2,Maze_2006_snapper_biomass)
Maze_snapper_4 <- rbind(Maze_snapper_3,Maze_2008_snapper_biomass)
Maze_snapper_5 <- rbind(Maze_snapper_4,Maze_2010_snapper_biomass)
Maze_snapper_6 <- rbind(Maze_snapper_5,Maze_2012_snapper_biomass)
Maze_snapper_7 <- rbind(Maze_snapper_6,Maze_2014_snapper_biomass)
Maze_snapper_biomass <- rbind(Maze_snapper_7,Maze_2016_snapper_biomass)


#Maze_grouper_1 <- rbind(Maze_1999_grouper_biomass,Maze_2000_grouper_biomass)
Maze_grouper_2 <- rbind(Maze_2000_grouper_biomass,Maze_2004_grouper_biomass)
Maze_grouper_3 <- rbind(Maze_grouper_2,Maze_2006_grouper_biomass)
Maze_grouper_4 <- rbind(Maze_grouper_3,Maze_2008_grouper_biomass)
Maze_grouper_5 <- rbind(Maze_grouper_4,Maze_2010_grouper_biomass)
Maze_grouper_6 <- rbind(Maze_grouper_5,Maze_2012_grouper_biomass)
Maze_grouper_7 <- rbind(Maze_grouper_6,Maze_2014_grouper_biomass)
Maze_grouper_biomass <- rbind(Maze_grouper_7,Maze_2016_grouper_biomass)


export(Maze_snapper_biomass, "The_Maze/data/Maze_snapper__biomass.csv")
export(Maze_grouper_biomass, "The_Maze/data/Maze_grouper__biomass.csv")


# White Shoal

White_Shoal_1999 <- import("White_Shoal/data/White_Shoal_1999.xls")


White_Shoal_1999_snapper <- merge(White_Shoal_1999, snapper, by = c("SPECIES_CD"))
White_Shoal_1999_snapper_biomass <- summarise_at(White_Shoal_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_1999_snapper_biomass$Year <- ('1999')
White_Shoal_1999_snapper_biomass$Reef <- ('White Shoal')


White_Shoal_1999_grouper <- merge(White_Shoal_1999, grouper, by = c("SPECIES_CD"))
White_Shoal_1999_grouper_biomass <- summarise_at(White_Shoal_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_1999_grouper_biomass$Year <- ('1999')
White_Shoal_1999_grouper_biomass$Reef <- ('White Shoal')


White_Shoal_2000 <- import("White_Shoal/data/White_Shoal_2000.xls")

White_Shoal_2000_snapper <- merge(White_Shoal_2000, snapper, by = c("SPECIES_CD"))
White_Shoal_2000_snapper_biomass <- summarise_at(White_Shoal_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2000_snapper_biomass$Year <- ('2000')
White_Shoal_2000_snapper_biomass$Reef <- ('White Shoal')


White_Shoal_2000_grouper <- merge(White_Shoal_2000, grouper, by = c("SPECIES_CD"))
White_Shoal_2000_grouper_biomass <- summarise_at(White_Shoal_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2000_grouper_biomass$Year <- ('2000')
White_Shoal_2000_grouper_biomass$Reef <- ('White Shoal')

White_Shoal_2004 <- import("White_Shoal/data/White_Shoal_2004.xls")

White_Shoal_2004_snapper <- merge(White_Shoal_2004, snapper, by = c("SPECIES_CD"))
White_Shoal_2004_snapper_biomass <- summarise_at(White_Shoal_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2004_snapper_biomass$Year <- ('2004')
White_Shoal_2004_snapper_biomass$Reef <- ('White Shoal')


White_Shoal_2004_grouper <- merge(White_Shoal_2004, grouper, by = c("SPECIES_CD"))
White_Shoal_2004_grouper_biomass <- summarise_at(White_Shoal_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2004_grouper_biomass$Year <- ('2004')
White_Shoal_2004_grouper_biomass$Reef <- ('White Shoal')

White_Shoal_2006 <- import("White_Shoal/data/White_Shoal_2006.xls")

White_Shoal_2006_snapper <- merge(White_Shoal_2006, snapper, by = c("SPECIES_CD"))
White_Shoal_2006_snapper_biomass <- summarise_at(White_Shoal_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2006_snapper_biomass$Year <- ('2006')
White_Shoal_2006_snapper_biomass$Reef <- ('White Shoal')


White_Shoal_2006_grouper <- merge(White_Shoal_2006, grouper, by = c("SPECIES_CD"))
White_Shoal_2006_grouper_biomass <- summarise_at(White_Shoal_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2006_grouper_biomass$Year <- ('2006')
White_Shoal_2006_grouper_biomass$Reef <- ('White Shoal')

White_Shoal_2008 <- import("White_Shoal/data/White_Shoal_2008.xls")

White_Shoal_2008_snapper <- merge(White_Shoal_2008, snapper, by = c("SPECIES_CD"))
White_Shoal_2008_snapper_biomass <- summarise_at(White_Shoal_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2008_snapper_biomass$Year <- ('2008')
White_Shoal_2008_snapper_biomass$Reef <- ('White Shoal')


White_Shoal_2008_grouper <- merge(White_Shoal_2008, grouper, by = c("SPECIES_CD"))
White_Shoal_2008_grouper_biomass <- summarise_at(White_Shoal_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2008_grouper_biomass$Year <- ('2008')
White_Shoal_2008_grouper_biomass$Reef <- ('White Shoal')

White_Shoal_2010 <- import("White_Shoal/data/White_Shoal_2010.xls")

White_Shoal_2010_snapper <- merge(White_Shoal_2010, snapper, by = c("SPECIES_CD"))
White_Shoal_2010_snapper_biomass <- summarise_at(White_Shoal_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2010_snapper_biomass$Year <- ('2010')
White_Shoal_2010_snapper_biomass$Reef <- ('White Shoal')


White_Shoal_2010_grouper <- merge(White_Shoal_2010, grouper, by = c("SPECIES_CD"))
White_Shoal_2010_grouper_biomass <- summarise_at(White_Shoal_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2010_grouper_biomass$Year <- ('2010')
White_Shoal_2010_grouper_biomass$Reef <- ('White Shoal')


White_Shoal_2012 <- import("White_Shoal/data/White_Shoal_2012.xls")

White_Shoal_2012_snapper <- merge(White_Shoal_2012, snapper, by = c("SPECIES_CD"))
White_Shoal_2012_snapper_biomass <- summarise_at(White_Shoal_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2012_snapper_biomass$Year <- ('2012')
White_Shoal_2012_snapper_biomass$Reef <- ('White Shoal')


White_Shoal_2012_grouper <- merge(White_Shoal_2012, grouper, by = c("SPECIES_CD"))
White_Shoal_2012_grouper_biomass <- summarise_at(White_Shoal_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2012_grouper_biomass$Year <- ('2012')
White_Shoal_2012_grouper_biomass$Reef <- ('White Shoal')


White_Shoal_2014 <- import("White_Shoal/data/White_Shoal_2014.xls")

White_Shoal_2014_snapper <- merge(White_Shoal_2014, snapper, by = c("SPECIES_CD"))
White_Shoal_2014_snapper_biomass <- summarise_at(White_Shoal_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2014_snapper_biomass$Year <- ('2014')
White_Shoal_2014_snapper_biomass$Reef <- ('White Shoal')


White_Shoal_2014_grouper <- merge(White_Shoal_2014, grouper, by = c("SPECIES_CD"))
White_Shoal_2014_grouper_biomass <- summarise_at(White_Shoal_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2014_grouper_biomass$Year <- ('2014')
White_Shoal_2014_grouper_biomass$Reef <- ('White Shoal')


White_Shoal_2016 <- import("White_Shoal/data/White_Shoal_2016.xls")

White_Shoal_2016_snapper <- merge(White_Shoal_2016, snapper, by = c("SPECIES_CD"))
White_Shoal_2016_snapper_biomass <- summarise_at(White_Shoal_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2016_snapper_biomass$Year <- ('2016')
White_Shoal_2016_snapper_biomass$Reef <- ('White Shoal')


White_Shoal_2016_grouper <- merge(White_Shoal_2016, grouper, by = c("SPECIES_CD"))
White_Shoal_2016_grouper_biomass <- summarise_at(White_Shoal_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2016_grouper_biomass$Year <- ('2016')
White_Shoal_2016_grouper_biomass$Reef <- ('White Shoal')


### Combine all years together for snapper_ and grouper_ seperately 

White_Shoal_snapper_1 <- rbind(White_Shoal_1999_snapper_biomass,White_Shoal_2000_snapper_biomass)
White_Shoal_snapper_2 <- rbind(White_Shoal_snapper_1,White_Shoal_2004_snapper_biomass)
White_Shoal_snapper_3 <- rbind(White_Shoal_snapper_2,White_Shoal_2006_snapper_biomass)
White_Shoal_snapper_4 <- rbind(White_Shoal_snapper_3,White_Shoal_2008_snapper_biomass)
White_Shoal_snapper_5 <- rbind(White_Shoal_snapper_4,White_Shoal_2010_snapper_biomass)
White_Shoal_snapper_6 <- rbind(White_Shoal_snapper_5,White_Shoal_2012_snapper_biomass)
White_Shoal_snapper_7 <- rbind(White_Shoal_snapper_6,White_Shoal_2014_snapper_biomass)
White_Shoal_snapper_biomass <- rbind(White_Shoal_snapper_7,White_Shoal_2016_snapper_biomass)


White_Shoal_grouper_1 <- rbind(White_Shoal_1999_grouper_biomass,White_Shoal_2000_grouper_biomass)
White_Shoal_grouper_2 <- rbind(White_Shoal_grouper_1,White_Shoal_2004_grouper_biomass)
White_Shoal_grouper_3 <- rbind(White_Shoal_grouper_2,White_Shoal_2006_grouper_biomass)
White_Shoal_grouper_4 <- rbind(White_Shoal_grouper_3,White_Shoal_2008_grouper_biomass)
White_Shoal_grouper_5 <- rbind(White_Shoal_grouper_4,White_Shoal_2010_grouper_biomass)
White_Shoal_grouper_6 <- rbind(White_Shoal_grouper_5,White_Shoal_2012_grouper_biomass)
White_Shoal_grouper_7 <- rbind(White_Shoal_grouper_6,White_Shoal_2014_grouper_biomass)
White_Shoal_grouper_biomass <- rbind(White_Shoal_grouper_7,White_Shoal_2016_grouper_biomass)


export(White_Shoal_snapper_biomass, "White_Shoal/data/White_Shoal_snapper__biomass.csv")
export(White_Shoal_grouper_biomass, "White_Shoal/data/White_Shoal_grouper__biomass.csv")



### Combine data for all DT for snapper and grouper

DT_reef_snapper_biomass_combined <- rbind(Bird_Key_snapper_biomass,Black_Coral_Rock_snapper_biomass, Davis_Rock_snapper_biomass, Loggerhead_Patch_snapper_biomass, Mayers_Peak_snapper_biomass, Palmata_Patch_snapper_biomass,Prolifera_Patch_snapper_biomass, Maze_snapper_biomass, Temptation_Rock_snapper_biomass, Texas_Rock_snapper_biomass, White_Shoal_snapper_biomass)
DT_reef_snapper_biomass_data <- arrange(DT_reef_snapper_biomass_combined, Year,Reef, sum, max, min, mean, sd )
DT_reef_snapper_biomass_data$REGION <- ("DT")
export(DT_reef_snapper_biomass_data, "DT_snapper__biomass_data.csv")



DT_reef_grouper_biomass_combined <- rbind(Bird_Key_grouper_biomass,Black_Coral_Rock_grouper_biomass, Davis_Rock_grouper_biomass, Loggerhead_Patch_grouper_biomass, Mayers_Peak_grouper_biomass, Palmata_Patch_grouper_biomass,Prolifera_Patch_grouper_biomass, Maze_grouper_biomass, Temptation_Rock_grouper_biomass, Texas_Rock_grouper_biomass, White_Shoal_grouper_biomass)
DT_reef_grouper_biomass_data <- arrange(DT_reef_grouper_biomass_combined, Year,Reef, sum, max, min, mean, sd )
DT_reef_grouper_biomass_data$REGION <- ("DT")
export(DT_reef_grouper_biomass_data, "DT_grouper__biomass_data.csv")










### Lower Keys
setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/LK")


# Eastern Sambo Deep

Eastern_Sambo_Deep_1999 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_1999.xls")


Eastern_Sambo_Deep_1999_snapper <- merge(Eastern_Sambo_Deep_1999, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_1999_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_1999_snapper_biomass$Year <- ('1999')
Eastern_Sambo_Deep_1999_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_1999_grouper <- merge(Eastern_Sambo_Deep_1999, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_1999_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_1999_grouper_biomass$Year <- ('1999')
Eastern_Sambo_Deep_1999_grouper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2000 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2000.xls")

Eastern_Sambo_Deep_2000_snapper <- merge(Eastern_Sambo_Deep_2000, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2000_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2000_snapper_biomass$Year <- ('2000')
Eastern_Sambo_Deep_2000_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2000_grouper <- merge(Eastern_Sambo_Deep_2000, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2000_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2000_grouper_biomass$Year <- ('2000')
Eastern_Sambo_Deep_2000_grouper_biomass$Reef <- ('Eastern Sambo Deep')

Eastern_Sambo_Deep_2001 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2001.xls")

Eastern_Sambo_Deep_2001_snapper <- merge(Eastern_Sambo_Deep_2001, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2001_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2001_snapper_biomass$Year <- ('2001')
Eastern_Sambo_Deep_2001_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2001_grouper <- merge(Eastern_Sambo_Deep_2001, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2001_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2001_grouper_biomass$Year <- ('2001')
Eastern_Sambo_Deep_2001_grouper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2002 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2002.xls")

Eastern_Sambo_Deep_2002_snapper <- merge(Eastern_Sambo_Deep_2002, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2002_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2002_snapper_biomass$Year <- ('2002')
Eastern_Sambo_Deep_2002_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2002_grouper <- merge(Eastern_Sambo_Deep_2002, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2002_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2002_grouper_biomass$Year <- ('2002')
Eastern_Sambo_Deep_2002_grouper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2003 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2003.xls")

Eastern_Sambo_Deep_2003_snapper <- merge(Eastern_Sambo_Deep_2003, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2003_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2003_snapper_biomass$Year <- ('2003')
Eastern_Sambo_Deep_2003_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2003_grouper <- merge(Eastern_Sambo_Deep_2003, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2003_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2003_grouper_biomass$Year <- ('2003')
Eastern_Sambo_Deep_2003_grouper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2004 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2004.xls")

Eastern_Sambo_Deep_2004_snapper <- merge(Eastern_Sambo_Deep_2004, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2004_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2004_snapper_biomass$Year <- ('2004')
Eastern_Sambo_Deep_2004_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2004_grouper <- merge(Eastern_Sambo_Deep_2004, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2004_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2004_grouper_biomass$Year <- ('2004')
Eastern_Sambo_Deep_2004_grouper_biomass$Reef <- ('Eastern Sambo Deep')

Eastern_Sambo_Deep_2005 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2005.xls")

Eastern_Sambo_Deep_2005_snapper <- merge(Eastern_Sambo_Deep_2005, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2005_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2005_snapper_biomass$Year <- ('2005')
Eastern_Sambo_Deep_2005_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2005_grouper <- merge(Eastern_Sambo_Deep_2005, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2005_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2005_grouper_biomass$Year <- ('2005')
Eastern_Sambo_Deep_2005_grouper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2006 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2006.xls")

Eastern_Sambo_Deep_2006_snapper <- merge(Eastern_Sambo_Deep_2006, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2006_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2006_snapper_biomass$Year <- ('2006')
Eastern_Sambo_Deep_2006_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2006_grouper <- merge(Eastern_Sambo_Deep_2006, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2006_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2006_grouper_biomass$Year <- ('2006')
Eastern_Sambo_Deep_2006_grouper_biomass$Reef <- ('Eastern Sambo Deep')

Eastern_Sambo_Deep_2007 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2007.xls")

Eastern_Sambo_Deep_2007_snapper <- merge(Eastern_Sambo_Deep_2007, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2007_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2007_snapper_biomass$Year <- ('2007')
Eastern_Sambo_Deep_2007_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2007_grouper <- merge(Eastern_Sambo_Deep_2007, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2007_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2007_grouper_biomass$Year <- ('2007')
Eastern_Sambo_Deep_2007_grouper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2008 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2008.xls")

Eastern_Sambo_Deep_2008_snapper <- merge(Eastern_Sambo_Deep_2008, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2008_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2008_snapper_biomass$Year <- ('2008')
Eastern_Sambo_Deep_2008_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2008_grouper <- merge(Eastern_Sambo_Deep_2008, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2008_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2008_grouper_biomass$Year <- ('2008')
Eastern_Sambo_Deep_2008_grouper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2009 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2009.xls")

Eastern_Sambo_Deep_2009_snapper <- merge(Eastern_Sambo_Deep_2009, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2009_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2009_snapper_biomass$Year <- ('2009')
Eastern_Sambo_Deep_2009_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2009_grouper <- merge(Eastern_Sambo_Deep_2009, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2009_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2009_grouper_biomass$Year <- ('2009')
Eastern_Sambo_Deep_2009_grouper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2010 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2010.xls")

Eastern_Sambo_Deep_2010_snapper <- merge(Eastern_Sambo_Deep_2010, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2010_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2010_snapper_biomass$Year <- ('2010')
Eastern_Sambo_Deep_2010_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2010_grouper <- merge(Eastern_Sambo_Deep_2010, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2010_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2010_grouper_biomass$Year <- ('2010')
Eastern_Sambo_Deep_2010_grouper_biomass$Reef <- ('Eastern Sambo Deep')

Eastern_Sambo_Deep_2011 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2011.xls")

Eastern_Sambo_Deep_2011_snapper <- merge(Eastern_Sambo_Deep_2011, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2011_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2011_snapper_biomass$Year <- ('2011')
Eastern_Sambo_Deep_2011_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2011_grouper <- merge(Eastern_Sambo_Deep_2011, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2011_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2011_grouper_biomass$Year <- ('2011')
Eastern_Sambo_Deep_2011_grouper_biomass$Reef <- ('Eastern Sambo Deep')



Eastern_Sambo_Deep_2012 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2012.xls")

Eastern_Sambo_Deep_2012_snapper <- merge(Eastern_Sambo_Deep_2012, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2012_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2012_snapper_biomass$Year <- ('2012')
Eastern_Sambo_Deep_2012_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2012_grouper <- merge(Eastern_Sambo_Deep_2012, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2012_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2012_grouper_biomass$Year <- ('2012')
Eastern_Sambo_Deep_2012_grouper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2014 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2014.xls")

Eastern_Sambo_Deep_2014_snapper <- merge(Eastern_Sambo_Deep_2014, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2014_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2014_snapper_biomass$Year <- ('2014')
Eastern_Sambo_Deep_2014_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2014_grouper <- merge(Eastern_Sambo_Deep_2014, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2014_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2014_grouper_biomass$Year <- ('2014')
Eastern_Sambo_Deep_2014_grouper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2016 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2016.xls")

Eastern_Sambo_Deep_2016_snapper <- merge(Eastern_Sambo_Deep_2016, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2016_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2016_snapper_biomass$Year <- ('2016')
Eastern_Sambo_Deep_2016_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2016_grouper <- merge(Eastern_Sambo_Deep_2016, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2016_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2016_grouper_biomass$Year <- ('2016')
Eastern_Sambo_Deep_2016_grouper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2018 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2018.xls")

Eastern_Sambo_Deep_2018_snapper <- merge(Eastern_Sambo_Deep_2018, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2018_snapper_biomass <- summarise_at(Eastern_Sambo_Deep_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2018_snapper_biomass$Year <- ('2018')
Eastern_Sambo_Deep_2018_snapper_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2018_grouper <- merge(Eastern_Sambo_Deep_2018, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2018_grouper_biomass <- summarise_at(Eastern_Sambo_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2018_grouper_biomass$Year <- ('2018')
Eastern_Sambo_Deep_2018_grouper_biomass$Reef <- ('Eastern Sambo Deep')



### Combine all years together for snapper_ and grouper_ seperately



Eastern_Sambo_Deep_snapper_1 <- rbind(Eastern_Sambo_Deep_1999_snapper_biomass,Eastern_Sambo_Deep_2000_snapper_biomass)
Eastern_Sambo_Deep_snapper_2 <- rbind(Eastern_Sambo_Deep_snapper_1,Eastern_Sambo_Deep_2001_snapper_biomass)
Eastern_Sambo_Deep_snapper_3 <- rbind(Eastern_Sambo_Deep_snapper_2,Eastern_Sambo_Deep_2002_snapper_biomass)
Eastern_Sambo_Deep_snapper_4 <- rbind(Eastern_Sambo_Deep_snapper_3,Eastern_Sambo_Deep_2003_snapper_biomass)
Eastern_Sambo_Deep_snapper_5 <- rbind(Eastern_Sambo_Deep_snapper_4,Eastern_Sambo_Deep_2004_snapper_biomass)
Eastern_Sambo_Deep_snapper_6 <- rbind(Eastern_Sambo_Deep_snapper_5,Eastern_Sambo_Deep_2005_snapper_biomass)
Eastern_Sambo_Deep_snapper_7 <- rbind(Eastern_Sambo_Deep_snapper_6,Eastern_Sambo_Deep_2006_snapper_biomass)
Eastern_Sambo_Deep_snapper_8 <- rbind(Eastern_Sambo_Deep_snapper_7,Eastern_Sambo_Deep_2007_snapper_biomass)
Eastern_Sambo_Deep_snapper_9 <- rbind(Eastern_Sambo_Deep_snapper_8,Eastern_Sambo_Deep_2008_snapper_biomass)
Eastern_Sambo_Deep_snapper_10 <- rbind(Eastern_Sambo_Deep_snapper_9,Eastern_Sambo_Deep_2009_snapper_biomass)
Eastern_Sambo_Deep_snapper_11<- rbind(Eastern_Sambo_Deep_snapper_10,Eastern_Sambo_Deep_2010_snapper_biomass)
Eastern_Sambo_Deep_snapper_12 <- rbind(Eastern_Sambo_Deep_snapper_11,Eastern_Sambo_Deep_2011_snapper_biomass)
Eastern_Sambo_Deep_snapper_13 <- rbind(Eastern_Sambo_Deep_snapper_12,Eastern_Sambo_Deep_2012_snapper_biomass)
Eastern_Sambo_Deep_snapper_14 <- rbind(Eastern_Sambo_Deep_snapper_13,Eastern_Sambo_Deep_2014_snapper_biomass)
Eastern_Sambo_Deep_snapper_15 <- rbind(Eastern_Sambo_Deep_snapper_14,Eastern_Sambo_Deep_2016_snapper_biomass)
Eastern_Sambo_Deep_snapper_biomass_data_combined <- rbind(Eastern_Sambo_Deep_snapper_15,Eastern_Sambo_Deep_2018_snapper_biomass)



Eastern_Sambo_Deep_grouper_1 <- rbind(Eastern_Sambo_Deep_1999_grouper_biomass,Eastern_Sambo_Deep_2000_grouper_biomass)
Eastern_Sambo_Deep_grouper_2 <- rbind(Eastern_Sambo_Deep_grouper_1,Eastern_Sambo_Deep_2001_grouper_biomass)
Eastern_Sambo_Deep_grouper_3 <- rbind(Eastern_Sambo_Deep_grouper_2,Eastern_Sambo_Deep_2002_grouper_biomass)
Eastern_Sambo_Deep_grouper_4 <- rbind(Eastern_Sambo_Deep_grouper_3,Eastern_Sambo_Deep_2003_grouper_biomass)
Eastern_Sambo_Deep_grouper_5 <- rbind(Eastern_Sambo_Deep_grouper_4,Eastern_Sambo_Deep_2004_grouper_biomass)
Eastern_Sambo_Deep_grouper_6 <- rbind(Eastern_Sambo_Deep_grouper_5,Eastern_Sambo_Deep_2005_grouper_biomass)
Eastern_Sambo_Deep_grouper_7 <- rbind(Eastern_Sambo_Deep_grouper_6,Eastern_Sambo_Deep_2006_grouper_biomass)
Eastern_Sambo_Deep_grouper_8 <- rbind(Eastern_Sambo_Deep_grouper_7,Eastern_Sambo_Deep_2007_grouper_biomass)
Eastern_Sambo_Deep_grouper_9 <- rbind(Eastern_Sambo_Deep_grouper_8,Eastern_Sambo_Deep_2008_grouper_biomass)
Eastern_Sambo_Deep_grouper_10 <- rbind(Eastern_Sambo_Deep_grouper_9,Eastern_Sambo_Deep_2009_grouper_biomass)
Eastern_Sambo_Deep_grouper_11<- rbind(Eastern_Sambo_Deep_grouper_10,Eastern_Sambo_Deep_2010_grouper_biomass)
Eastern_Sambo_Deep_grouper_12 <- rbind(Eastern_Sambo_Deep_grouper_11,Eastern_Sambo_Deep_2011_grouper_biomass)
Eastern_Sambo_Deep_grouper_13 <- rbind(Eastern_Sambo_Deep_grouper_12,Eastern_Sambo_Deep_2012_grouper_biomass)
Eastern_Sambo_Deep_grouper_14 <- rbind(Eastern_Sambo_Deep_grouper_13,Eastern_Sambo_Deep_2014_grouper_biomass)
Eastern_Sambo_Deep_grouper_15 <- rbind(Eastern_Sambo_Deep_grouper_14,Eastern_Sambo_Deep_2016_grouper_biomass)
Eastern_Sambo_Deep_grouper_biomass_data_combined <- rbind(Eastern_Sambo_Deep_grouper_15,Eastern_Sambo_Deep_2018_grouper_biomass)



export(Eastern_Sambo_Deep_snapper_biomass_data_combined, "Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_snapper__biomass.csv")
export(Eastern_Sambo_Deep_grouper_biomass_data_combined, "Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_grouper__biomass.csv")




# Eastern Sambo Shallow

Eastern_Sambo_Shallow_1999 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_1999.xls")


Eastern_Sambo_Shallow_1999_snapper <- merge(Eastern_Sambo_Shallow_1999, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_1999_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_1999_snapper_biomass$Year <- ('1999')
Eastern_Sambo_Shallow_1999_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_1999_grouper <- merge(Eastern_Sambo_Shallow_1999, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_1999_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_1999_grouper_biomass$Year <- ('1999')
Eastern_Sambo_Shallow_1999_grouper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2000 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2000.xls")

Eastern_Sambo_Shallow_2000_snapper <- merge(Eastern_Sambo_Shallow_2000, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2000_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2000_snapper_biomass$Year <- ('2000')
Eastern_Sambo_Shallow_2000_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2000_grouper <- merge(Eastern_Sambo_Shallow_2000, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2000_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2000_grouper_biomass$Year <- ('2000')
Eastern_Sambo_Shallow_2000_grouper_biomass$Reef <- ('Eastern Sambo Shallow')

Eastern_Sambo_Shallow_2001 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2001.xls")

Eastern_Sambo_Shallow_2001_snapper <- merge(Eastern_Sambo_Shallow_2001, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2001_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2001_snapper_biomass$Year <- ('2001')
Eastern_Sambo_Shallow_2001_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2001_grouper <- merge(Eastern_Sambo_Shallow_2001, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2001_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2001_grouper_biomass$Year <- ('2001')
Eastern_Sambo_Shallow_2001_grouper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2002 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2002.xls")

Eastern_Sambo_Shallow_2002_snapper <- merge(Eastern_Sambo_Shallow_2002, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2002_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2002_snapper_biomass$Year <- ('2002')
Eastern_Sambo_Shallow_2002_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2002_grouper <- merge(Eastern_Sambo_Shallow_2002, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2002_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2002_grouper_biomass$Year <- ('2002')
Eastern_Sambo_Shallow_2002_grouper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2003 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2003.xls")

Eastern_Sambo_Shallow_2003_snapper <- merge(Eastern_Sambo_Shallow_2003, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2003_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2003_snapper_biomass$Year <- ('2003')
Eastern_Sambo_Shallow_2003_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2003_grouper <- merge(Eastern_Sambo_Shallow_2003, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2003_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2003_grouper_biomass$Year <- ('2003')
Eastern_Sambo_Shallow_2003_grouper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2004 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2004.xls")

Eastern_Sambo_Shallow_2004_snapper <- merge(Eastern_Sambo_Shallow_2004, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2004_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2004_snapper_biomass$Year <- ('2004')
Eastern_Sambo_Shallow_2004_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2004_grouper <- merge(Eastern_Sambo_Shallow_2004, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2004_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2004_grouper_biomass$Year <- ('2004')
Eastern_Sambo_Shallow_2004_grouper_biomass$Reef <- ('Eastern Sambo Shallow')

Eastern_Sambo_Shallow_2005 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2005.xls")

Eastern_Sambo_Shallow_2005_snapper <- merge(Eastern_Sambo_Shallow_2005, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2005_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2005_snapper_biomass$Year <- ('2005')
Eastern_Sambo_Shallow_2005_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2005_grouper <- merge(Eastern_Sambo_Shallow_2005, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2005_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2005_grouper_biomass$Year <- ('2005')
Eastern_Sambo_Shallow_2005_grouper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2006 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2006.xls")

Eastern_Sambo_Shallow_2006_snapper <- merge(Eastern_Sambo_Shallow_2006, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2006_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2006_snapper_biomass$Year <- ('2006')
Eastern_Sambo_Shallow_2006_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2006_grouper <- merge(Eastern_Sambo_Shallow_2006, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2006_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2006_grouper_biomass$Year <- ('2006')
Eastern_Sambo_Shallow_2006_grouper_biomass$Reef <- ('Eastern Sambo Shallow')

Eastern_Sambo_Shallow_2007 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2007.xls")

Eastern_Sambo_Shallow_2007_snapper <- merge(Eastern_Sambo_Shallow_2007, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2007_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2007_snapper_biomass$Year <- ('2007')
Eastern_Sambo_Shallow_2007_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2007_grouper <- merge(Eastern_Sambo_Shallow_2007, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2007_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2007_grouper_biomass$Year <- ('2007')
Eastern_Sambo_Shallow_2007_grouper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2008 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2008.xls")

Eastern_Sambo_Shallow_2008_snapper <- merge(Eastern_Sambo_Shallow_2008, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2008_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2008_snapper_biomass$Year <- ('2008')
Eastern_Sambo_Shallow_2008_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2008_grouper <- merge(Eastern_Sambo_Shallow_2008, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2008_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2008_grouper_biomass$Year <- ('2008')
Eastern_Sambo_Shallow_2008_grouper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2009 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2009.xls")

Eastern_Sambo_Shallow_2009_snapper <- merge(Eastern_Sambo_Shallow_2009, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2009_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2009_snapper_biomass$Year <- ('2009')
Eastern_Sambo_Shallow_2009_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2009_grouper <- merge(Eastern_Sambo_Shallow_2009, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2009_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2009_grouper_biomass$Year <- ('2009')
Eastern_Sambo_Shallow_2009_grouper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2010 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2010.xls")

Eastern_Sambo_Shallow_2010_snapper <- merge(Eastern_Sambo_Shallow_2010, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2010_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2010_snapper_biomass$Year <- ('2010')
Eastern_Sambo_Shallow_2010_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2010_grouper <- merge(Eastern_Sambo_Shallow_2010, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2010_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2010_grouper_biomass$Year <- ('2010')
Eastern_Sambo_Shallow_2010_grouper_biomass$Reef <- ('Eastern Sambo Shallow')

Eastern_Sambo_Shallow_2011 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2011.xls")

Eastern_Sambo_Shallow_2011_snapper <- merge(Eastern_Sambo_Shallow_2011, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2011_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2011_snapper_biomass$Year <- ('2011')
Eastern_Sambo_Shallow_2011_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2011_grouper <- merge(Eastern_Sambo_Shallow_2011, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2011_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2011_grouper_biomass$Year <- ('2011')
Eastern_Sambo_Shallow_2011_grouper_biomass$Reef <- ('Eastern Sambo Shallow')



Eastern_Sambo_Shallow_2012 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2012.xls")

Eastern_Sambo_Shallow_2012_snapper <- merge(Eastern_Sambo_Shallow_2012, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2012_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2012_snapper_biomass$Year <- ('2012')
Eastern_Sambo_Shallow_2012_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2012_grouper <- merge(Eastern_Sambo_Shallow_2012, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2012_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2012_grouper_biomass$Year <- ('2012')
Eastern_Sambo_Shallow_2012_grouper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2014 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2014.xls")

Eastern_Sambo_Shallow_2014_snapper <- merge(Eastern_Sambo_Shallow_2014, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2014_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2014_snapper_biomass$Year <- ('2014')
Eastern_Sambo_Shallow_2014_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2014_grouper <- merge(Eastern_Sambo_Shallow_2014, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2014_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2014_grouper_biomass$Year <- ('2014')
Eastern_Sambo_Shallow_2014_grouper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2016 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2016.xls")

Eastern_Sambo_Shallow_2016_snapper <- merge(Eastern_Sambo_Shallow_2016, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2016_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2016_snapper_biomass$Year <- ('2016')
Eastern_Sambo_Shallow_2016_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2016_grouper <- merge(Eastern_Sambo_Shallow_2016, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2016_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2016_grouper_biomass$Year <- ('2016')
Eastern_Sambo_Shallow_2016_grouper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2018 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2018.xls")

Eastern_Sambo_Shallow_2018_snapper <- merge(Eastern_Sambo_Shallow_2018, snapper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2018_snapper_biomass <- summarise_at(Eastern_Sambo_Shallow_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2018_snapper_biomass$Year <- ('2018')
Eastern_Sambo_Shallow_2018_snapper_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2018_grouper <- merge(Eastern_Sambo_Shallow_2018, grouper, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2018_grouper_biomass <- summarise_at(Eastern_Sambo_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2018_grouper_biomass$Year <- ('2018')
Eastern_Sambo_Shallow_2018_grouper_biomass$Reef <- ('Eastern Sambo Shallow')



### Combine all years together for snapper_ and grouper_ seperately



Eastern_Sambo_Shallow_snapper_1 <- rbind(Eastern_Sambo_Shallow_1999_snapper_biomass,Eastern_Sambo_Shallow_2000_snapper_biomass)
Eastern_Sambo_Shallow_snapper_2 <- rbind(Eastern_Sambo_Shallow_snapper_1,Eastern_Sambo_Shallow_2001_snapper_biomass)
Eastern_Sambo_Shallow_snapper_3 <- rbind(Eastern_Sambo_Shallow_snapper_2,Eastern_Sambo_Shallow_2002_snapper_biomass)
Eastern_Sambo_Shallow_snapper_4 <- rbind(Eastern_Sambo_Shallow_snapper_3,Eastern_Sambo_Shallow_2003_snapper_biomass)
Eastern_Sambo_Shallow_snapper_5 <- rbind(Eastern_Sambo_Shallow_snapper_4,Eastern_Sambo_Shallow_2004_snapper_biomass)
Eastern_Sambo_Shallow_snapper_6 <- rbind(Eastern_Sambo_Shallow_snapper_5,Eastern_Sambo_Shallow_2005_snapper_biomass)
Eastern_Sambo_Shallow_snapper_7 <- rbind(Eastern_Sambo_Shallow_snapper_6,Eastern_Sambo_Shallow_2006_snapper_biomass)
Eastern_Sambo_Shallow_snapper_8 <- rbind(Eastern_Sambo_Shallow_snapper_7,Eastern_Sambo_Shallow_2007_snapper_biomass)
Eastern_Sambo_Shallow_snapper_9 <- rbind(Eastern_Sambo_Shallow_snapper_8,Eastern_Sambo_Shallow_2008_snapper_biomass)
Eastern_Sambo_Shallow_snapper_10 <- rbind(Eastern_Sambo_Shallow_snapper_9,Eastern_Sambo_Shallow_2009_snapper_biomass)
Eastern_Sambo_Shallow_snapper_11<- rbind(Eastern_Sambo_Shallow_snapper_10,Eastern_Sambo_Shallow_2010_snapper_biomass)
Eastern_Sambo_Shallow_snapper_12 <- rbind(Eastern_Sambo_Shallow_snapper_11,Eastern_Sambo_Shallow_2011_snapper_biomass)
Eastern_Sambo_Shallow_snapper_13 <- rbind(Eastern_Sambo_Shallow_snapper_12,Eastern_Sambo_Shallow_2012_snapper_biomass)
Eastern_Sambo_Shallow_snapper_14 <- rbind(Eastern_Sambo_Shallow_snapper_13,Eastern_Sambo_Shallow_2014_snapper_biomass)
Eastern_Sambo_Shallow_snapper_15 <- rbind(Eastern_Sambo_Shallow_snapper_14,Eastern_Sambo_Shallow_2016_snapper_biomass)
Eastern_Sambo_Shallow_snapper_biomass_data_combined <- rbind(Eastern_Sambo_Shallow_snapper_15,Eastern_Sambo_Shallow_2018_snapper_biomass)



Eastern_Sambo_Shallow_grouper_1 <- rbind(Eastern_Sambo_Shallow_1999_grouper_biomass,Eastern_Sambo_Shallow_2000_grouper_biomass)
Eastern_Sambo_Shallow_grouper_2 <- rbind(Eastern_Sambo_Shallow_grouper_1,Eastern_Sambo_Shallow_2001_grouper_biomass)
Eastern_Sambo_Shallow_grouper_3 <- rbind(Eastern_Sambo_Shallow_grouper_2,Eastern_Sambo_Shallow_2002_grouper_biomass)
Eastern_Sambo_Shallow_grouper_4 <- rbind(Eastern_Sambo_Shallow_grouper_3,Eastern_Sambo_Shallow_2003_grouper_biomass)
Eastern_Sambo_Shallow_grouper_5 <- rbind(Eastern_Sambo_Shallow_grouper_4,Eastern_Sambo_Shallow_2004_grouper_biomass)
Eastern_Sambo_Shallow_grouper_6 <- rbind(Eastern_Sambo_Shallow_grouper_5,Eastern_Sambo_Shallow_2005_grouper_biomass)
Eastern_Sambo_Shallow_grouper_7 <- rbind(Eastern_Sambo_Shallow_grouper_6,Eastern_Sambo_Shallow_2006_grouper_biomass)
Eastern_Sambo_Shallow_grouper_8 <- rbind(Eastern_Sambo_Shallow_grouper_7,Eastern_Sambo_Shallow_2007_grouper_biomass)
Eastern_Sambo_Shallow_grouper_9 <- rbind(Eastern_Sambo_Shallow_grouper_8,Eastern_Sambo_Shallow_2008_grouper_biomass)
Eastern_Sambo_Shallow_grouper_10 <- rbind(Eastern_Sambo_Shallow_grouper_9,Eastern_Sambo_Shallow_2009_grouper_biomass)
Eastern_Sambo_Shallow_grouper_11<- rbind(Eastern_Sambo_Shallow_grouper_10,Eastern_Sambo_Shallow_2010_grouper_biomass)
Eastern_Sambo_Shallow_grouper_12 <- rbind(Eastern_Sambo_Shallow_grouper_11,Eastern_Sambo_Shallow_2011_grouper_biomass)
Eastern_Sambo_Shallow_grouper_13 <- rbind(Eastern_Sambo_Shallow_grouper_12,Eastern_Sambo_Shallow_2012_grouper_biomass)
Eastern_Sambo_Shallow_grouper_14 <- rbind(Eastern_Sambo_Shallow_grouper_13,Eastern_Sambo_Shallow_2014_grouper_biomass)
Eastern_Sambo_Shallow_grouper_15 <- rbind(Eastern_Sambo_Shallow_grouper_14,Eastern_Sambo_Shallow_2016_grouper_biomass)
Eastern_Sambo_Shallow_grouper_biomass_data_combined <- rbind(Eastern_Sambo_Shallow_grouper_15,Eastern_Sambo_Shallow_2018_grouper_biomass)



export(Eastern_Sambo_Shallow_snapper_biomass_data_combined, "Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_snapper__biomass.csv")
export(Eastern_Sambo_Shallow_grouper_biomass_data_combined, "Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_grouper__biomass.csv")



# Jaap Reef

Jaap_Reef_1999 <- import("Jaap_Reef/data/Jaap_Reef_1999.xls")


Jaap_Reef_1999_snapper <- merge(Jaap_Reef_1999, snapper, by = c("SPECIES_CD"))
Jaap_Reef_1999_snapper_biomass <- summarise_at(Jaap_Reef_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_1999_snapper_biomass$Year <- ('1999')
Jaap_Reef_1999_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_1999_grouper <- merge(Jaap_Reef_1999, grouper, by = c("SPECIES_CD"))
Jaap_Reef_1999_grouper_biomass <- summarise_at(Jaap_Reef_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_1999_grouper_biomass$Year <- ('1999')
Jaap_Reef_1999_grouper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2000 <- import("Jaap_Reef/data/Jaap_Reef_2000.xls")

Jaap_Reef_2000_snapper <- merge(Jaap_Reef_2000, snapper, by = c("SPECIES_CD"))
Jaap_Reef_2000_snapper_biomass <- summarise_at(Jaap_Reef_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2000_snapper_biomass$Year <- ('2000')
Jaap_Reef_2000_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2000_grouper <- merge(Jaap_Reef_2000, grouper, by = c("SPECIES_CD"))
Jaap_Reef_2000_grouper_biomass <- summarise_at(Jaap_Reef_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2000_grouper_biomass$Year <- ('2000')
Jaap_Reef_2000_grouper_biomass$Reef <- ('Jaap Reef')

Jaap_Reef_2001 <- import("Jaap_Reef/data/Jaap_Reef_2001.xls")

Jaap_Reef_2001_snapper <- merge(Jaap_Reef_2001, snapper, by = c("SPECIES_CD"))
Jaap_Reef_2001_snapper_biomass <- summarise_at(Jaap_Reef_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2001_snapper_biomass$Year <- ('2001')
Jaap_Reef_2001_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2001_grouper <- merge(Jaap_Reef_2001, grouper, by = c("SPECIES_CD"))
Jaap_Reef_2001_grouper_biomass <- summarise_at(Jaap_Reef_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2001_grouper_biomass$Year <- ('2001')
Jaap_Reef_2001_grouper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2002 <- import("Jaap_Reef/data/Jaap_Reef_2002.xls")

Jaap_Reef_2002_snapper <- merge(Jaap_Reef_2002, snapper, by = c("SPECIES_CD"))
Jaap_Reef_2002_snapper_biomass <- summarise_at(Jaap_Reef_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2002_snapper_biomass$Year <- ('2002')
Jaap_Reef_2002_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2002_grouper <- merge(Jaap_Reef_2002, grouper, by = c("SPECIES_CD"))
Jaap_Reef_2002_grouper_biomass <- summarise_at(Jaap_Reef_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2002_grouper_biomass$Year <- ('2002')
Jaap_Reef_2002_grouper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2003 <- import("Jaap_Reef/data/Jaap_Reef_2003.xls")

Jaap_Reef_2003_snapper <- merge(Jaap_Reef_2003, snapper, by = c("SPECIES_CD"))
Jaap_Reef_2003_snapper_biomass <- summarise_at(Jaap_Reef_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2003_snapper_biomass$Year <- ('2003')
Jaap_Reef_2003_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2003_grouper <- merge(Jaap_Reef_2003, grouper, by = c("SPECIES_CD"))
Jaap_Reef_2003_grouper_biomass <- summarise_at(Jaap_Reef_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2003_grouper_biomass$Year <- ('2003')
Jaap_Reef_2003_grouper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2004 <- import("Jaap_Reef/data/Jaap_Reef_2004.xls")

Jaap_Reef_2004_snapper <- merge(Jaap_Reef_2004, snapper, by = c("SPECIES_CD"))
Jaap_Reef_2004_snapper_biomass <- summarise_at(Jaap_Reef_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2004_snapper_biomass$Year <- ('2004')
Jaap_Reef_2004_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2004_grouper <- merge(Jaap_Reef_2004, grouper, by = c("SPECIES_CD"))
Jaap_Reef_2004_grouper_biomass <- summarise_at(Jaap_Reef_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2004_grouper_biomass$Year <- ('2004')
Jaap_Reef_2004_grouper_biomass$Reef <- ('Jaap Reef')

Jaap_Reef_2005 <- import("Jaap_Reef/data/Jaap_Reef_2005.xls")

Jaap_Reef_2005_snapper <- merge(Jaap_Reef_2005, snapper, by = c("SPECIES_CD"))
Jaap_Reef_2005_snapper_biomass <- summarise_at(Jaap_Reef_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2005_snapper_biomass$Year <- ('2005')
Jaap_Reef_2005_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2005_grouper <- merge(Jaap_Reef_2005, grouper, by = c("SPECIES_CD"))
Jaap_Reef_2005_grouper_biomass <- summarise_at(Jaap_Reef_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2005_grouper_biomass$Year <- ('2005')
Jaap_Reef_2005_grouper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2006 <- import("Jaap_Reef/data/Jaap_Reef_2006.xls")

Jaap_Reef_2006_snapper <- merge(Jaap_Reef_2006, snapper, by = c("SPECIES_CD"))
Jaap_Reef_2006_snapper_biomass <- summarise_at(Jaap_Reef_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2006_snapper_biomass$Year <- ('2006')
Jaap_Reef_2006_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2006_grouper <- merge(Jaap_Reef_2006, grouper, by = c("SPECIES_CD"))
Jaap_Reef_2006_grouper_biomass <- summarise_at(Jaap_Reef_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2006_grouper_biomass$Year <- ('2006')
Jaap_Reef_2006_grouper_biomass$Reef <- ('Jaap Reef')

Jaap_Reef_2007 <- import("Jaap_Reef/data/Jaap_Reef_2007.xls")

Jaap_Reef_2007_snapper <- merge(Jaap_Reef_2007, snapper, by = c("SPECIES_CD"))
Jaap_Reef_2007_snapper_biomass <- summarise_at(Jaap_Reef_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2007_snapper_biomass$Year <- ('2007')
Jaap_Reef_2007_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2007_grouper <- merge(Jaap_Reef_2007, grouper, by = c("SPECIES_CD"))
Jaap_Reef_2007_grouper_biomass <- summarise_at(Jaap_Reef_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2007_grouper_biomass$Year <- ('2007')
Jaap_Reef_2007_grouper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2008 <- import("Jaap_Reef/data/Jaap_Reef_2008.xls")

Jaap_Reef_2008_snapper <- merge(Jaap_Reef_2008, snapper, by = c("SPECIES_CD"))
Jaap_Reef_2008_snapper_biomass <- summarise_at(Jaap_Reef_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2008_snapper_biomass$Year <- ('2008')
Jaap_Reef_2008_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2008_grouper <- merge(Jaap_Reef_2008, grouper, by = c("SPECIES_CD"))
Jaap_Reef_2008_grouper_biomass <- summarise_at(Jaap_Reef_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2008_grouper_biomass$Year <- ('2008')
Jaap_Reef_2008_grouper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2009 <- import("Jaap_Reef/data/Jaap_Reef_2009.xls")

Jaap_Reef_2009_snapper <- merge(Jaap_Reef_2009, snapper, by = c("SPECIES_CD"))
Jaap_Reef_2009_snapper_biomass <- summarise_at(Jaap_Reef_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2009_snapper_biomass$Year <- ('2009')
Jaap_Reef_2009_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2009_grouper <- merge(Jaap_Reef_2009, grouper, by = c("SPECIES_CD"))
Jaap_Reef_2009_grouper_biomass <- summarise_at(Jaap_Reef_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2009_grouper_biomass$Year <- ('2009')
Jaap_Reef_2009_grouper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2010 <- import("Jaap_Reef/data/Jaap_Reef_2010.xls")

Jaap_Reef_2010_snapper <- merge(Jaap_Reef_2010, snapper, by = c("SPECIES_CD"))
Jaap_Reef_2010_snapper_biomass <- summarise_at(Jaap_Reef_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2010_snapper_biomass$Year <- ('2010')
Jaap_Reef_2010_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2010_grouper <- merge(Jaap_Reef_2010, grouper, by = c("SPECIES_CD"))
Jaap_Reef_2010_grouper_biomass <- summarise_at(Jaap_Reef_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2010_grouper_biomass$Year <- ('2010')
Jaap_Reef_2010_grouper_biomass$Reef <- ('Jaap Reef')

Jaap_Reef_2011 <- import("Jaap_Reef/data/Jaap_Reef_2011.xls")

Jaap_Reef_2011_snapper <- merge(Jaap_Reef_2011, snapper, by = c("SPECIES_CD"))
Jaap_Reef_2011_snapper_biomass <- summarise_at(Jaap_Reef_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2011_snapper_biomass$Year <- ('2011')
Jaap_Reef_2011_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2011_grouper <- merge(Jaap_Reef_2011, grouper, by = c("SPECIES_CD"))
Jaap_Reef_2011_grouper_biomass <- summarise_at(Jaap_Reef_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2011_grouper_biomass$Year <- ('2011')
Jaap_Reef_2011_grouper_biomass$Reef <- ('Jaap Reef')



Jaap_Reef_2012 <- import("Jaap_Reef/data/Jaap_Reef_2012.xls")

Jaap_Reef_2012_snapper <- merge(Jaap_Reef_2012, snapper, by = c("SPECIES_CD"))
Jaap_Reef_2012_snapper_biomass <- summarise_at(Jaap_Reef_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2012_snapper_biomass$Year <- ('2012')
Jaap_Reef_2012_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2012_grouper <- merge(Jaap_Reef_2012, grouper, by = c("SPECIES_CD"))
Jaap_Reef_2012_grouper_biomass <- summarise_at(Jaap_Reef_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2012_grouper_biomass$Year <- ('2012')
Jaap_Reef_2012_grouper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2014 <- import("Jaap_Reef/data/Jaap_Reef_2014.xls")

Jaap_Reef_2014_snapper <- merge(Jaap_Reef_2014, snapper, by = c("SPECIES_CD"))
Jaap_Reef_2014_snapper_biomass <- summarise_at(Jaap_Reef_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2014_snapper_biomass$Year <- ('2014')
Jaap_Reef_2014_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2014_grouper <- merge(Jaap_Reef_2014, grouper, by = c("SPECIES_CD"))
Jaap_Reef_2014_grouper_biomass <- summarise_at(Jaap_Reef_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2014_grouper_biomass$Year <- ('2014')
Jaap_Reef_2014_grouper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2016 <- import("Jaap_Reef/data/Jaap_Reef_2016.xls")

Jaap_Reef_2016_snapper <- merge(Jaap_Reef_2016, snapper, by = c("SPECIES_CD"))
Jaap_Reef_2016_snapper_biomass <- summarise_at(Jaap_Reef_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2016_snapper_biomass$Year <- ('2016')
Jaap_Reef_2016_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2016_grouper <- merge(Jaap_Reef_2016, grouper, by = c("SPECIES_CD"))
Jaap_Reef_2016_grouper_biomass <- summarise_at(Jaap_Reef_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2016_grouper_biomass$Year <- ('2016')
Jaap_Reef_2016_grouper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2018 <- import("Jaap_Reef/data/Jaap_Reef_2018.xls")

Jaap_Reef_2018_snapper <- merge(Jaap_Reef_2018, snapper, by = c("SPECIES_CD"))
Jaap_Reef_2018_snapper_biomass <- summarise_at(Jaap_Reef_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2018_snapper_biomass$Year <- ('2018')
Jaap_Reef_2018_snapper_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2018_grouper <- merge(Jaap_Reef_2018, grouper, by = c("SPECIES_CD"))
Jaap_Reef_2018_grouper_biomass <- summarise_at(Jaap_Reef_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2018_grouper_biomass$Year <- ('2018')
Jaap_Reef_2018_grouper_biomass$Reef <- ('Jaap Reef')



### Combine all years together for snapper_ and grouper_ seperately



Jaap_Reef_snapper_1 <- rbind(Jaap_Reef_1999_snapper_biomass,Jaap_Reef_2000_snapper_biomass)
Jaap_Reef_snapper_2 <- rbind(Jaap_Reef_snapper_1,Jaap_Reef_2001_snapper_biomass)
Jaap_Reef_snapper_3 <- rbind(Jaap_Reef_snapper_2,Jaap_Reef_2002_snapper_biomass)
Jaap_Reef_snapper_4 <- rbind(Jaap_Reef_snapper_3,Jaap_Reef_2003_snapper_biomass)
Jaap_Reef_snapper_5 <- rbind(Jaap_Reef_snapper_4,Jaap_Reef_2004_snapper_biomass)
Jaap_Reef_snapper_6 <- rbind(Jaap_Reef_snapper_5,Jaap_Reef_2005_snapper_biomass)
Jaap_Reef_snapper_7 <- rbind(Jaap_Reef_snapper_6,Jaap_Reef_2006_snapper_biomass)
Jaap_Reef_snapper_8 <- rbind(Jaap_Reef_snapper_7,Jaap_Reef_2007_snapper_biomass)
Jaap_Reef_snapper_9 <- rbind(Jaap_Reef_snapper_8,Jaap_Reef_2008_snapper_biomass)
Jaap_Reef_snapper_10 <- rbind(Jaap_Reef_snapper_9,Jaap_Reef_2009_snapper_biomass)
Jaap_Reef_snapper_11<- rbind(Jaap_Reef_snapper_10,Jaap_Reef_2010_snapper_biomass)
Jaap_Reef_snapper_12 <- rbind(Jaap_Reef_snapper_11,Jaap_Reef_2011_snapper_biomass)
Jaap_Reef_snapper_13 <- rbind(Jaap_Reef_snapper_12,Jaap_Reef_2012_snapper_biomass)
Jaap_Reef_snapper_14 <- rbind(Jaap_Reef_snapper_13,Jaap_Reef_2014_snapper_biomass)
Jaap_Reef_snapper_15 <- rbind(Jaap_Reef_snapper_14,Jaap_Reef_2016_snapper_biomass)
Jaap_Reef_snapper_biomass_data_combined <- rbind(Jaap_Reef_snapper_15,Jaap_Reef_2018_snapper_biomass)



Jaap_Reef_grouper_1 <- rbind(Jaap_Reef_1999_grouper_biomass,Jaap_Reef_2000_grouper_biomass)
Jaap_Reef_grouper_2 <- rbind(Jaap_Reef_grouper_1,Jaap_Reef_2001_grouper_biomass)
Jaap_Reef_grouper_3 <- rbind(Jaap_Reef_grouper_2,Jaap_Reef_2002_grouper_biomass)
Jaap_Reef_grouper_4 <- rbind(Jaap_Reef_grouper_3,Jaap_Reef_2003_grouper_biomass)
Jaap_Reef_grouper_5 <- rbind(Jaap_Reef_grouper_4,Jaap_Reef_2004_grouper_biomass)
Jaap_Reef_grouper_6 <- rbind(Jaap_Reef_grouper_5,Jaap_Reef_2005_grouper_biomass)
Jaap_Reef_grouper_7 <- rbind(Jaap_Reef_grouper_6,Jaap_Reef_2006_grouper_biomass)
Jaap_Reef_grouper_8 <- rbind(Jaap_Reef_grouper_7,Jaap_Reef_2007_grouper_biomass)
Jaap_Reef_grouper_9 <- rbind(Jaap_Reef_grouper_8,Jaap_Reef_2008_grouper_biomass)
Jaap_Reef_grouper_10 <- rbind(Jaap_Reef_grouper_9,Jaap_Reef_2009_grouper_biomass)
Jaap_Reef_grouper_11<- rbind(Jaap_Reef_grouper_10,Jaap_Reef_2010_grouper_biomass)
Jaap_Reef_grouper_12 <- rbind(Jaap_Reef_grouper_11,Jaap_Reef_2011_grouper_biomass)
Jaap_Reef_grouper_13 <- rbind(Jaap_Reef_grouper_12,Jaap_Reef_2012_grouper_biomass)
Jaap_Reef_grouper_14 <- rbind(Jaap_Reef_grouper_13,Jaap_Reef_2014_grouper_biomass)
Jaap_Reef_grouper_15 <- rbind(Jaap_Reef_grouper_14,Jaap_Reef_2016_grouper_biomass)
Jaap_Reef_grouper_biomass_data_combined <- rbind(Jaap_Reef_grouper_15,Jaap_Reef_2018_grouper_biomass)



export(Jaap_Reef_snapper_biomass_data_combined, "Jaap_Reef/data/Jaap_Reef_snapper__biomass.csv")
export(Jaap_Reef_grouper_biomass_data_combined, "Jaap_Reef/data/Jaap_Reef_grouper__biomass.csv")




#Looe Key Deep

Looe_Key_Deep_1999 <- import("Looe_Key_Deep/data/Looe_Key_Deep_1999.xls")


Looe_Key_Deep_1999_snapper <- merge(Looe_Key_Deep_1999, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_1999_snapper_biomass <- summarise_at(Looe_Key_Deep_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_1999_snapper_biomass$Year <- ('1999')
Looe_Key_Deep_1999_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_1999_grouper <- merge(Looe_Key_Deep_1999, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_1999_grouper_biomass <- summarise_at(Looe_Key_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_1999_grouper_biomass$Year <- ('1999')
Looe_Key_Deep_1999_grouper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2000 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2000.xls")

Looe_Key_Deep_2000_snapper <- merge(Looe_Key_Deep_2000, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_2000_snapper_biomass <- summarise_at(Looe_Key_Deep_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2000_snapper_biomass$Year <- ('2000')
Looe_Key_Deep_2000_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2000_grouper <- merge(Looe_Key_Deep_2000, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_2000_grouper_biomass <- summarise_at(Looe_Key_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2000_grouper_biomass$Year <- ('2000')
Looe_Key_Deep_2000_grouper_biomass$Reef <- ('Looe Key Deep')

Looe_Key_Deep_2001 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2001.xls")

Looe_Key_Deep_2001_snapper <- merge(Looe_Key_Deep_2001, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_2001_snapper_biomass <- summarise_at(Looe_Key_Deep_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2001_snapper_biomass$Year <- ('2001')
Looe_Key_Deep_2001_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2001_grouper <- merge(Looe_Key_Deep_2001, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_2001_grouper_biomass <- summarise_at(Looe_Key_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2001_grouper_biomass$Year <- ('2001')
Looe_Key_Deep_2001_grouper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2002 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2002.xls")

Looe_Key_Deep_2002_snapper <- merge(Looe_Key_Deep_2002, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_2002_snapper_biomass <- summarise_at(Looe_Key_Deep_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2002_snapper_biomass$Year <- ('2002')
Looe_Key_Deep_2002_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2002_grouper <- merge(Looe_Key_Deep_2002, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_2002_grouper_biomass <- summarise_at(Looe_Key_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2002_grouper_biomass$Year <- ('2002')
Looe_Key_Deep_2002_grouper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2003 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2003.xls")

Looe_Key_Deep_2003_snapper <- merge(Looe_Key_Deep_2003, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_2003_snapper_biomass <- summarise_at(Looe_Key_Deep_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2003_snapper_biomass$Year <- ('2003')
Looe_Key_Deep_2003_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2003_grouper <- merge(Looe_Key_Deep_2003, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_2003_grouper_biomass <- summarise_at(Looe_Key_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2003_grouper_biomass$Year <- ('2003')
Looe_Key_Deep_2003_grouper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2004 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2004.xls")

Looe_Key_Deep_2004_snapper <- merge(Looe_Key_Deep_2004, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_2004_snapper_biomass <- summarise_at(Looe_Key_Deep_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2004_snapper_biomass$Year <- ('2004')
Looe_Key_Deep_2004_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2004_grouper <- merge(Looe_Key_Deep_2004, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_2004_grouper_biomass <- summarise_at(Looe_Key_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2004_grouper_biomass$Year <- ('2004')
Looe_Key_Deep_2004_grouper_biomass$Reef <- ('Looe Key Deep')

Looe_Key_Deep_2005 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2005.xls")

Looe_Key_Deep_2005_snapper <- merge(Looe_Key_Deep_2005, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_2005_snapper_biomass <- summarise_at(Looe_Key_Deep_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2005_snapper_biomass$Year <- ('2005')
Looe_Key_Deep_2005_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2005_grouper <- merge(Looe_Key_Deep_2005, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_2005_grouper_biomass <- summarise_at(Looe_Key_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2005_grouper_biomass$Year <- ('2005')
Looe_Key_Deep_2005_grouper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2006 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2006.xls")

Looe_Key_Deep_2006_snapper <- merge(Looe_Key_Deep_2006, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_2006_snapper_biomass <- summarise_at(Looe_Key_Deep_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2006_snapper_biomass$Year <- ('2006')
Looe_Key_Deep_2006_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2006_grouper <- merge(Looe_Key_Deep_2006, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_2006_grouper_biomass <- summarise_at(Looe_Key_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2006_grouper_biomass$Year <- ('2006')
Looe_Key_Deep_2006_grouper_biomass$Reef <- ('Looe Key Deep')

Looe_Key_Deep_2007 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2007.xls")

Looe_Key_Deep_2007_snapper <- merge(Looe_Key_Deep_2007, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_2007_snapper_biomass <- summarise_at(Looe_Key_Deep_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2007_snapper_biomass$Year <- ('2007')
Looe_Key_Deep_2007_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2007_grouper <- merge(Looe_Key_Deep_2007, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_2007_grouper_biomass <- summarise_at(Looe_Key_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2007_grouper_biomass$Year <- ('2007')
Looe_Key_Deep_2007_grouper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2008 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2008.xls")

Looe_Key_Deep_2008_snapper <- merge(Looe_Key_Deep_2008, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_2008_snapper_biomass <- summarise_at(Looe_Key_Deep_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2008_snapper_biomass$Year <- ('2008')
Looe_Key_Deep_2008_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2008_grouper <- merge(Looe_Key_Deep_2008, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_2008_grouper_biomass <- summarise_at(Looe_Key_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2008_grouper_biomass$Year <- ('2008')
Looe_Key_Deep_2008_grouper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2009 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2009.xls")

Looe_Key_Deep_2009_snapper <- merge(Looe_Key_Deep_2009, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_2009_snapper_biomass <- summarise_at(Looe_Key_Deep_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2009_snapper_biomass$Year <- ('2009')
Looe_Key_Deep_2009_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2009_grouper <- merge(Looe_Key_Deep_2009, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_2009_grouper_biomass <- summarise_at(Looe_Key_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2009_grouper_biomass$Year <- ('2009')
Looe_Key_Deep_2009_grouper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2010 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2010.xls")

Looe_Key_Deep_2010_snapper <- merge(Looe_Key_Deep_2010, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_2010_snapper_biomass <- summarise_at(Looe_Key_Deep_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2010_snapper_biomass$Year <- ('2010')
Looe_Key_Deep_2010_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2010_grouper <- merge(Looe_Key_Deep_2010, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_2010_grouper_biomass <- summarise_at(Looe_Key_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2010_grouper_biomass$Year <- ('2010')
Looe_Key_Deep_2010_grouper_biomass$Reef <- ('Looe Key Deep')

Looe_Key_Deep_2011 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2011.xls")

Looe_Key_Deep_2011_snapper <- merge(Looe_Key_Deep_2011, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_2011_snapper_biomass <- summarise_at(Looe_Key_Deep_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2011_snapper_biomass$Year <- ('2011')
Looe_Key_Deep_2011_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2011_grouper <- merge(Looe_Key_Deep_2011, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_2011_grouper_biomass <- summarise_at(Looe_Key_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2011_grouper_biomass$Year <- ('2011')
Looe_Key_Deep_2011_grouper_biomass$Reef <- ('Looe Key Deep')



Looe_Key_Deep_2012 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2012.xls")

Looe_Key_Deep_2012_snapper <- merge(Looe_Key_Deep_2012, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_2012_snapper_biomass <- summarise_at(Looe_Key_Deep_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2012_snapper_biomass$Year <- ('2012')
Looe_Key_Deep_2012_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2012_grouper <- merge(Looe_Key_Deep_2012, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_2012_grouper_biomass <- summarise_at(Looe_Key_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2012_grouper_biomass$Year <- ('2012')
Looe_Key_Deep_2012_grouper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2014 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2014.xls")

Looe_Key_Deep_2014_snapper <- merge(Looe_Key_Deep_2014, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_2014_snapper_biomass <- summarise_at(Looe_Key_Deep_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2014_snapper_biomass$Year <- ('2014')
Looe_Key_Deep_2014_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2014_grouper <- merge(Looe_Key_Deep_2014, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_2014_grouper_biomass <- summarise_at(Looe_Key_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2014_grouper_biomass$Year <- ('2014')
Looe_Key_Deep_2014_grouper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2016 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2016.xls")

Looe_Key_Deep_2016_snapper <- merge(Looe_Key_Deep_2016, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_2016_snapper_biomass <- summarise_at(Looe_Key_Deep_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2016_snapper_biomass$Year <- ('2016')
Looe_Key_Deep_2016_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2016_grouper <- merge(Looe_Key_Deep_2016, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_2016_grouper_biomass <- summarise_at(Looe_Key_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2016_grouper_biomass$Year <- ('2016')
Looe_Key_Deep_2016_grouper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2018 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2018.xls")

Looe_Key_Deep_2018_snapper <- merge(Looe_Key_Deep_2018, snapper, by = c("SPECIES_CD"))
Looe_Key_Deep_2018_snapper_biomass <- summarise_at(Looe_Key_Deep_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2018_snapper_biomass$Year <- ('2018')
Looe_Key_Deep_2018_snapper_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2018_grouper <- merge(Looe_Key_Deep_2018, grouper, by = c("SPECIES_CD"))
Looe_Key_Deep_2018_grouper_biomass <- summarise_at(Looe_Key_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2018_grouper_biomass$Year <- ('2018')
Looe_Key_Deep_2018_grouper_biomass$Reef <- ('Looe Key Deep')



### Combine all years together for snapper_ and grouper_ seperately



Looe_Key_Deep_snapper_1 <- rbind(Looe_Key_Deep_1999_snapper_biomass,Looe_Key_Deep_2000_snapper_biomass)
Looe_Key_Deep_snapper_2 <- rbind(Looe_Key_Deep_snapper_1,Looe_Key_Deep_2001_snapper_biomass)
Looe_Key_Deep_snapper_3 <- rbind(Looe_Key_Deep_snapper_2,Looe_Key_Deep_2002_snapper_biomass)
Looe_Key_Deep_snapper_4 <- rbind(Looe_Key_Deep_snapper_3,Looe_Key_Deep_2003_snapper_biomass)
Looe_Key_Deep_snapper_5 <- rbind(Looe_Key_Deep_snapper_4,Looe_Key_Deep_2004_snapper_biomass)
Looe_Key_Deep_snapper_6 <- rbind(Looe_Key_Deep_snapper_5,Looe_Key_Deep_2005_snapper_biomass)
Looe_Key_Deep_snapper_7 <- rbind(Looe_Key_Deep_snapper_6,Looe_Key_Deep_2006_snapper_biomass)
Looe_Key_Deep_snapper_8 <- rbind(Looe_Key_Deep_snapper_7,Looe_Key_Deep_2007_snapper_biomass)
Looe_Key_Deep_snapper_9 <- rbind(Looe_Key_Deep_snapper_8,Looe_Key_Deep_2008_snapper_biomass)
Looe_Key_Deep_snapper_10 <- rbind(Looe_Key_Deep_snapper_9,Looe_Key_Deep_2009_snapper_biomass)
Looe_Key_Deep_snapper_11<- rbind(Looe_Key_Deep_snapper_10,Looe_Key_Deep_2010_snapper_biomass)
Looe_Key_Deep_snapper_12 <- rbind(Looe_Key_Deep_snapper_11,Looe_Key_Deep_2011_snapper_biomass)
Looe_Key_Deep_snapper_13 <- rbind(Looe_Key_Deep_snapper_12,Looe_Key_Deep_2012_snapper_biomass)
Looe_Key_Deep_snapper_14 <- rbind(Looe_Key_Deep_snapper_13,Looe_Key_Deep_2014_snapper_biomass)
Looe_Key_Deep_snapper_15 <- rbind(Looe_Key_Deep_snapper_14,Looe_Key_Deep_2016_snapper_biomass)
Looe_Key_Deep_snapper_biomass_data_combined <- rbind(Looe_Key_Deep_snapper_15,Looe_Key_Deep_2018_snapper_biomass)



Looe_Key_Deep_grouper_1 <- rbind(Looe_Key_Deep_1999_grouper_biomass,Looe_Key_Deep_2000_grouper_biomass)
Looe_Key_Deep_grouper_2 <- rbind(Looe_Key_Deep_grouper_1,Looe_Key_Deep_2001_grouper_biomass)
Looe_Key_Deep_grouper_3 <- rbind(Looe_Key_Deep_grouper_2,Looe_Key_Deep_2002_grouper_biomass)
Looe_Key_Deep_grouper_4 <- rbind(Looe_Key_Deep_grouper_3,Looe_Key_Deep_2003_grouper_biomass)
Looe_Key_Deep_grouper_5 <- rbind(Looe_Key_Deep_grouper_4,Looe_Key_Deep_2004_grouper_biomass)
Looe_Key_Deep_grouper_6 <- rbind(Looe_Key_Deep_grouper_5,Looe_Key_Deep_2005_grouper_biomass)
Looe_Key_Deep_grouper_7 <- rbind(Looe_Key_Deep_grouper_6,Looe_Key_Deep_2006_grouper_biomass)
Looe_Key_Deep_grouper_8 <- rbind(Looe_Key_Deep_grouper_7,Looe_Key_Deep_2007_grouper_biomass)
Looe_Key_Deep_grouper_9 <- rbind(Looe_Key_Deep_grouper_8,Looe_Key_Deep_2008_grouper_biomass)
Looe_Key_Deep_grouper_10 <- rbind(Looe_Key_Deep_grouper_9,Looe_Key_Deep_2009_grouper_biomass)
Looe_Key_Deep_grouper_11<- rbind(Looe_Key_Deep_grouper_10,Looe_Key_Deep_2010_grouper_biomass)
Looe_Key_Deep_grouper_12 <- rbind(Looe_Key_Deep_grouper_11,Looe_Key_Deep_2011_grouper_biomass)
Looe_Key_Deep_grouper_13 <- rbind(Looe_Key_Deep_grouper_12,Looe_Key_Deep_2012_grouper_biomass)
Looe_Key_Deep_grouper_14 <- rbind(Looe_Key_Deep_grouper_13,Looe_Key_Deep_2014_grouper_biomass)
Looe_Key_Deep_grouper_15 <- rbind(Looe_Key_Deep_grouper_14,Looe_Key_Deep_2016_grouper_biomass)
Looe_Key_Deep_grouper_biomass_data_combined <- rbind(Looe_Key_Deep_grouper_15,Looe_Key_Deep_2018_grouper_biomass)



export(Looe_Key_Deep_snapper_biomass_data_combined, "Looe_Key_Deep/data/Looe_Key_Deep_snapper__biomass.csv")
export(Looe_Key_Deep_grouper_biomass_data_combined, "Looe_Key_Deep/data/Looe_Key_Deep_grouper__biomass.csv")



#Looe Key Shallow

Looe_Key_Shallow_1999 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_1999.xls")


Looe_Key_Shallow_1999_snapper <- merge(Looe_Key_Shallow_1999, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_1999_snapper_biomass <- summarise_at(Looe_Key_Shallow_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_1999_snapper_biomass$Year <- ('1999')
Looe_Key_Shallow_1999_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_1999_grouper <- merge(Looe_Key_Shallow_1999, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_1999_grouper_biomass <- summarise_at(Looe_Key_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_1999_grouper_biomass$Year <- ('1999')
Looe_Key_Shallow_1999_grouper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2000 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2000.xls")

Looe_Key_Shallow_2000_snapper <- merge(Looe_Key_Shallow_2000, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2000_snapper_biomass <- summarise_at(Looe_Key_Shallow_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2000_snapper_biomass$Year <- ('2000')
Looe_Key_Shallow_2000_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2000_grouper <- merge(Looe_Key_Shallow_2000, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2000_grouper_biomass <- summarise_at(Looe_Key_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2000_grouper_biomass$Year <- ('2000')
Looe_Key_Shallow_2000_grouper_biomass$Reef <- ('Looe Key Shallow')

Looe_Key_Shallow_2001 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2001.xls")

Looe_Key_Shallow_2001_snapper <- merge(Looe_Key_Shallow_2001, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2001_snapper_biomass <- summarise_at(Looe_Key_Shallow_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2001_snapper_biomass$Year <- ('2001')
Looe_Key_Shallow_2001_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2001_grouper <- merge(Looe_Key_Shallow_2001, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2001_grouper_biomass <- summarise_at(Looe_Key_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2001_grouper_biomass$Year <- ('2001')
Looe_Key_Shallow_2001_grouper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2002 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2002.xls")

Looe_Key_Shallow_2002_snapper <- merge(Looe_Key_Shallow_2002, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2002_snapper_biomass <- summarise_at(Looe_Key_Shallow_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2002_snapper_biomass$Year <- ('2002')
Looe_Key_Shallow_2002_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2002_grouper <- merge(Looe_Key_Shallow_2002, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2002_grouper_biomass <- summarise_at(Looe_Key_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2002_grouper_biomass$Year <- ('2002')
Looe_Key_Shallow_2002_grouper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2003 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2003.xls")

Looe_Key_Shallow_2003_snapper <- merge(Looe_Key_Shallow_2003, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2003_snapper_biomass <- summarise_at(Looe_Key_Shallow_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2003_snapper_biomass$Year <- ('2003')
Looe_Key_Shallow_2003_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2003_grouper <- merge(Looe_Key_Shallow_2003, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2003_grouper_biomass <- summarise_at(Looe_Key_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2003_grouper_biomass$Year <- ('2003')
Looe_Key_Shallow_2003_grouper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2004 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2004.xls")

Looe_Key_Shallow_2004_snapper <- merge(Looe_Key_Shallow_2004, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2004_snapper_biomass <- summarise_at(Looe_Key_Shallow_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2004_snapper_biomass$Year <- ('2004')
Looe_Key_Shallow_2004_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2004_grouper <- merge(Looe_Key_Shallow_2004, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2004_grouper_biomass <- summarise_at(Looe_Key_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2004_grouper_biomass$Year <- ('2004')
Looe_Key_Shallow_2004_grouper_biomass$Reef <- ('Looe Key Shallow')

Looe_Key_Shallow_2005 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2005.xls")

Looe_Key_Shallow_2005_snapper <- merge(Looe_Key_Shallow_2005, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2005_snapper_biomass <- summarise_at(Looe_Key_Shallow_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2005_snapper_biomass$Year <- ('2005')
Looe_Key_Shallow_2005_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2005_grouper <- merge(Looe_Key_Shallow_2005, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2005_grouper_biomass <- summarise_at(Looe_Key_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2005_grouper_biomass$Year <- ('2005')
Looe_Key_Shallow_2005_grouper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2006 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2006.xls")

Looe_Key_Shallow_2006_snapper <- merge(Looe_Key_Shallow_2006, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2006_snapper_biomass <- summarise_at(Looe_Key_Shallow_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2006_snapper_biomass$Year <- ('2006')
Looe_Key_Shallow_2006_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2006_grouper <- merge(Looe_Key_Shallow_2006, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2006_grouper_biomass <- summarise_at(Looe_Key_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2006_grouper_biomass$Year <- ('2006')
Looe_Key_Shallow_2006_grouper_biomass$Reef <- ('Looe Key Shallow')

Looe_Key_Shallow_2007 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2007.xls")

Looe_Key_Shallow_2007_snapper <- merge(Looe_Key_Shallow_2007, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2007_snapper_biomass <- summarise_at(Looe_Key_Shallow_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2007_snapper_biomass$Year <- ('2007')
Looe_Key_Shallow_2007_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2007_grouper <- merge(Looe_Key_Shallow_2007, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2007_grouper_biomass <- summarise_at(Looe_Key_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2007_grouper_biomass$Year <- ('2007')
Looe_Key_Shallow_2007_grouper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2008 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2008.xls")

Looe_Key_Shallow_2008_snapper <- merge(Looe_Key_Shallow_2008, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2008_snapper_biomass <- summarise_at(Looe_Key_Shallow_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2008_snapper_biomass$Year <- ('2008')
Looe_Key_Shallow_2008_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2008_grouper <- merge(Looe_Key_Shallow_2008, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2008_grouper_biomass <- summarise_at(Looe_Key_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2008_grouper_biomass$Year <- ('2008')
Looe_Key_Shallow_2008_grouper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2009 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2009.xls")

Looe_Key_Shallow_2009_snapper <- merge(Looe_Key_Shallow_2009, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2009_snapper_biomass <- summarise_at(Looe_Key_Shallow_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2009_snapper_biomass$Year <- ('2009')
Looe_Key_Shallow_2009_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2009_grouper <- merge(Looe_Key_Shallow_2009, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2009_grouper_biomass <- summarise_at(Looe_Key_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2009_grouper_biomass$Year <- ('2009')
Looe_Key_Shallow_2009_grouper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2010 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2010.xls")

Looe_Key_Shallow_2010_snapper <- merge(Looe_Key_Shallow_2010, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2010_snapper_biomass <- summarise_at(Looe_Key_Shallow_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2010_snapper_biomass$Year <- ('2010')
Looe_Key_Shallow_2010_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2010_grouper <- merge(Looe_Key_Shallow_2010, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2010_grouper_biomass <- summarise_at(Looe_Key_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2010_grouper_biomass$Year <- ('2010')
Looe_Key_Shallow_2010_grouper_biomass$Reef <- ('Looe Key Shallow')

Looe_Key_Shallow_2011 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2011.xls")

Looe_Key_Shallow_2011_snapper <- merge(Looe_Key_Shallow_2011, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2011_snapper_biomass <- summarise_at(Looe_Key_Shallow_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2011_snapper_biomass$Year <- ('2011')
Looe_Key_Shallow_2011_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2011_grouper <- merge(Looe_Key_Shallow_2011, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2011_grouper_biomass <- summarise_at(Looe_Key_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2011_grouper_biomass$Year <- ('2011')
Looe_Key_Shallow_2011_grouper_biomass$Reef <- ('Looe Key Shallow')



Looe_Key_Shallow_2012 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2012.xls")

Looe_Key_Shallow_2012_snapper <- merge(Looe_Key_Shallow_2012, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2012_snapper_biomass <- summarise_at(Looe_Key_Shallow_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2012_snapper_biomass$Year <- ('2012')
Looe_Key_Shallow_2012_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2012_grouper <- merge(Looe_Key_Shallow_2012, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2012_grouper_biomass <- summarise_at(Looe_Key_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2012_grouper_biomass$Year <- ('2012')
Looe_Key_Shallow_2012_grouper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2014 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2014.xls")

Looe_Key_Shallow_2014_snapper <- merge(Looe_Key_Shallow_2014, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2014_snapper_biomass <- summarise_at(Looe_Key_Shallow_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2014_snapper_biomass$Year <- ('2014')
Looe_Key_Shallow_2014_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2014_grouper <- merge(Looe_Key_Shallow_2014, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2014_grouper_biomass <- summarise_at(Looe_Key_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2014_grouper_biomass$Year <- ('2014')
Looe_Key_Shallow_2014_grouper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2016 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2016.xls")

Looe_Key_Shallow_2016_snapper <- merge(Looe_Key_Shallow_2016, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2016_snapper_biomass <- summarise_at(Looe_Key_Shallow_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2016_snapper_biomass$Year <- ('2016')
Looe_Key_Shallow_2016_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2016_grouper <- merge(Looe_Key_Shallow_2016, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2016_grouper_biomass <- summarise_at(Looe_Key_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2016_grouper_biomass$Year <- ('2016')
Looe_Key_Shallow_2016_grouper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2018 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2018.xls")

Looe_Key_Shallow_2018_snapper <- merge(Looe_Key_Shallow_2018, snapper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2018_snapper_biomass <- summarise_at(Looe_Key_Shallow_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2018_snapper_biomass$Year <- ('2018')
Looe_Key_Shallow_2018_snapper_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2018_grouper <- merge(Looe_Key_Shallow_2018, grouper, by = c("SPECIES_CD"))
Looe_Key_Shallow_2018_grouper_biomass <- summarise_at(Looe_Key_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2018_grouper_biomass$Year <- ('2018')
Looe_Key_Shallow_2018_grouper_biomass$Reef <- ('Looe Key Shallow')



### Combine all years together for snapper_ and grouper_ seperately



Looe_Key_Shallow_snapper_1 <- rbind(Looe_Key_Shallow_1999_snapper_biomass,Looe_Key_Shallow_2000_snapper_biomass)
Looe_Key_Shallow_snapper_2 <- rbind(Looe_Key_Shallow_snapper_1,Looe_Key_Shallow_2001_snapper_biomass)
Looe_Key_Shallow_snapper_3 <- rbind(Looe_Key_Shallow_snapper_2,Looe_Key_Shallow_2002_snapper_biomass)
Looe_Key_Shallow_snapper_4 <- rbind(Looe_Key_Shallow_snapper_3,Looe_Key_Shallow_2003_snapper_biomass)
Looe_Key_Shallow_snapper_5 <- rbind(Looe_Key_Shallow_snapper_4,Looe_Key_Shallow_2004_snapper_biomass)
Looe_Key_Shallow_snapper_6 <- rbind(Looe_Key_Shallow_snapper_5,Looe_Key_Shallow_2005_snapper_biomass)
Looe_Key_Shallow_snapper_7 <- rbind(Looe_Key_Shallow_snapper_6,Looe_Key_Shallow_2006_snapper_biomass)
Looe_Key_Shallow_snapper_8 <- rbind(Looe_Key_Shallow_snapper_7,Looe_Key_Shallow_2007_snapper_biomass)
Looe_Key_Shallow_snapper_9 <- rbind(Looe_Key_Shallow_snapper_8,Looe_Key_Shallow_2008_snapper_biomass)
Looe_Key_Shallow_snapper_10 <- rbind(Looe_Key_Shallow_snapper_9,Looe_Key_Shallow_2009_snapper_biomass)
Looe_Key_Shallow_snapper_11<- rbind(Looe_Key_Shallow_snapper_10,Looe_Key_Shallow_2010_snapper_biomass)
Looe_Key_Shallow_snapper_12 <- rbind(Looe_Key_Shallow_snapper_11,Looe_Key_Shallow_2011_snapper_biomass)
Looe_Key_Shallow_snapper_13 <- rbind(Looe_Key_Shallow_snapper_12,Looe_Key_Shallow_2012_snapper_biomass)
Looe_Key_Shallow_snapper_14 <- rbind(Looe_Key_Shallow_snapper_13,Looe_Key_Shallow_2014_snapper_biomass)
Looe_Key_Shallow_snapper_15 <- rbind(Looe_Key_Shallow_snapper_14,Looe_Key_Shallow_2016_snapper_biomass)
Looe_Key_Shallow_snapper_biomass_data_combined <- rbind(Looe_Key_Shallow_snapper_15,Looe_Key_Shallow_2018_snapper_biomass)



Looe_Key_Shallow_grouper_1 <- rbind(Looe_Key_Shallow_1999_grouper_biomass,Looe_Key_Shallow_2000_grouper_biomass)
Looe_Key_Shallow_grouper_2 <- rbind(Looe_Key_Shallow_grouper_1,Looe_Key_Shallow_2001_grouper_biomass)
Looe_Key_Shallow_grouper_3 <- rbind(Looe_Key_Shallow_grouper_2,Looe_Key_Shallow_2002_grouper_biomass)
Looe_Key_Shallow_grouper_4 <- rbind(Looe_Key_Shallow_grouper_3,Looe_Key_Shallow_2003_grouper_biomass)
Looe_Key_Shallow_grouper_5 <- rbind(Looe_Key_Shallow_grouper_4,Looe_Key_Shallow_2004_grouper_biomass)
Looe_Key_Shallow_grouper_6 <- rbind(Looe_Key_Shallow_grouper_5,Looe_Key_Shallow_2005_grouper_biomass)
Looe_Key_Shallow_grouper_7 <- rbind(Looe_Key_Shallow_grouper_6,Looe_Key_Shallow_2006_grouper_biomass)
Looe_Key_Shallow_grouper_8 <- rbind(Looe_Key_Shallow_grouper_7,Looe_Key_Shallow_2007_grouper_biomass)
Looe_Key_Shallow_grouper_9 <- rbind(Looe_Key_Shallow_grouper_8,Looe_Key_Shallow_2008_grouper_biomass)
Looe_Key_Shallow_grouper_10 <- rbind(Looe_Key_Shallow_grouper_9,Looe_Key_Shallow_2009_grouper_biomass)
Looe_Key_Shallow_grouper_11<- rbind(Looe_Key_Shallow_grouper_10,Looe_Key_Shallow_2010_grouper_biomass)
Looe_Key_Shallow_grouper_12 <- rbind(Looe_Key_Shallow_grouper_11,Looe_Key_Shallow_2011_grouper_biomass)
Looe_Key_Shallow_grouper_13 <- rbind(Looe_Key_Shallow_grouper_12,Looe_Key_Shallow_2012_grouper_biomass)
Looe_Key_Shallow_grouper_14 <- rbind(Looe_Key_Shallow_grouper_13,Looe_Key_Shallow_2014_grouper_biomass)
Looe_Key_Shallow_grouper_15 <- rbind(Looe_Key_Shallow_grouper_14,Looe_Key_Shallow_2016_grouper_biomass)
Looe_Key_Shallow_grouper_biomass_data_combined <- rbind(Looe_Key_Shallow_grouper_15,Looe_Key_Shallow_2018_grouper_biomass)



export(Looe_Key_Shallow_snapper_biomass_data_combined, "Looe_Key_Shallow/data/Looe_Key_Shallow_snapper__biomass.csv")
export(Looe_Key_Shallow_grouper_biomass_data_combined, "Looe_Key_Shallow/data/Looe_Key_Shallow_grouper__biomass.csv")



#Red Dun Reef

Red_Dun_Reef_1999 <- import("Red_Dun_Reef/data/Red_Dun_Reef_1999.xls")


Red_Dun_Reef_1999_snapper <- merge(Red_Dun_Reef_1999, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_1999_snapper_biomass <- summarise_at(Red_Dun_Reef_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_1999_snapper_biomass$Year <- ('1999')
Red_Dun_Reef_1999_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_1999_grouper <- merge(Red_Dun_Reef_1999, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_1999_grouper_biomass <- summarise_at(Red_Dun_Reef_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_1999_grouper_biomass$Year <- ('1999')
Red_Dun_Reef_1999_grouper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2000 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2000.xls")

Red_Dun_Reef_2000_snapper <- merge(Red_Dun_Reef_2000, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_2000_snapper_biomass <- summarise_at(Red_Dun_Reef_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2000_snapper_biomass$Year <- ('2000')
Red_Dun_Reef_2000_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2000_grouper <- merge(Red_Dun_Reef_2000, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_2000_grouper_biomass <- summarise_at(Red_Dun_Reef_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2000_grouper_biomass$Year <- ('2000')
Red_Dun_Reef_2000_grouper_biomass$Reef <- ('Red Dun Reef')

Red_Dun_Reef_2001 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2001.xls")

Red_Dun_Reef_2001_snapper <- merge(Red_Dun_Reef_2001, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_2001_snapper_biomass <- summarise_at(Red_Dun_Reef_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2001_snapper_biomass$Year <- ('2001')
Red_Dun_Reef_2001_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2001_grouper <- merge(Red_Dun_Reef_2001, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_2001_grouper_biomass <- summarise_at(Red_Dun_Reef_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2001_grouper_biomass$Year <- ('2001')
Red_Dun_Reef_2001_grouper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2002 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2002.xls")

Red_Dun_Reef_2002_snapper <- merge(Red_Dun_Reef_2002, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_2002_snapper_biomass <- summarise_at(Red_Dun_Reef_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2002_snapper_biomass$Year <- ('2002')
Red_Dun_Reef_2002_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2002_grouper <- merge(Red_Dun_Reef_2002, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_2002_grouper_biomass <- summarise_at(Red_Dun_Reef_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2002_grouper_biomass$Year <- ('2002')
Red_Dun_Reef_2002_grouper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2003 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2003.xls")

Red_Dun_Reef_2003_snapper <- merge(Red_Dun_Reef_2003, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_2003_snapper_biomass <- summarise_at(Red_Dun_Reef_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2003_snapper_biomass$Year <- ('2003')
Red_Dun_Reef_2003_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2003_grouper <- merge(Red_Dun_Reef_2003, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_2003_grouper_biomass <- summarise_at(Red_Dun_Reef_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2003_grouper_biomass$Year <- ('2003')
Red_Dun_Reef_2003_grouper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2004 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2004.xls")

Red_Dun_Reef_2004_snapper <- merge(Red_Dun_Reef_2004, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_2004_snapper_biomass <- summarise_at(Red_Dun_Reef_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2004_snapper_biomass$Year <- ('2004')
Red_Dun_Reef_2004_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2004_grouper <- merge(Red_Dun_Reef_2004, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_2004_grouper_biomass <- summarise_at(Red_Dun_Reef_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2004_grouper_biomass$Year <- ('2004')
Red_Dun_Reef_2004_grouper_biomass$Reef <- ('Red Dun Reef')

Red_Dun_Reef_2005 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2005.xls")

Red_Dun_Reef_2005_snapper <- merge(Red_Dun_Reef_2005, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_2005_snapper_biomass <- summarise_at(Red_Dun_Reef_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2005_snapper_biomass$Year <- ('2005')
Red_Dun_Reef_2005_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2005_grouper <- merge(Red_Dun_Reef_2005, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_2005_grouper_biomass <- summarise_at(Red_Dun_Reef_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2005_grouper_biomass$Year <- ('2005')
Red_Dun_Reef_2005_grouper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2006 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2006.xls")

Red_Dun_Reef_2006_snapper <- merge(Red_Dun_Reef_2006, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_2006_snapper_biomass <- summarise_at(Red_Dun_Reef_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2006_snapper_biomass$Year <- ('2006')
Red_Dun_Reef_2006_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2006_grouper <- merge(Red_Dun_Reef_2006, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_2006_grouper_biomass <- summarise_at(Red_Dun_Reef_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2006_grouper_biomass$Year <- ('2006')
Red_Dun_Reef_2006_grouper_biomass$Reef <- ('Red Dun Reef')

Red_Dun_Reef_2007 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2007.xls")

Red_Dun_Reef_2007_snapper <- merge(Red_Dun_Reef_2007, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_2007_snapper_biomass <- summarise_at(Red_Dun_Reef_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2007_snapper_biomass$Year <- ('2007')
Red_Dun_Reef_2007_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2007_grouper <- merge(Red_Dun_Reef_2007, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_2007_grouper_biomass <- summarise_at(Red_Dun_Reef_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2007_grouper_biomass$Year <- ('2007')
Red_Dun_Reef_2007_grouper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2008 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2008.xls")

Red_Dun_Reef_2008_snapper <- merge(Red_Dun_Reef_2008, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_2008_snapper_biomass <- summarise_at(Red_Dun_Reef_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2008_snapper_biomass$Year <- ('2008')
Red_Dun_Reef_2008_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2008_grouper <- merge(Red_Dun_Reef_2008, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_2008_grouper_biomass <- summarise_at(Red_Dun_Reef_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2008_grouper_biomass$Year <- ('2008')
Red_Dun_Reef_2008_grouper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2009 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2009.xls")

Red_Dun_Reef_2009_snapper <- merge(Red_Dun_Reef_2009, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_2009_snapper_biomass <- summarise_at(Red_Dun_Reef_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2009_snapper_biomass$Year <- ('2009')
Red_Dun_Reef_2009_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2009_grouper <- merge(Red_Dun_Reef_2009, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_2009_grouper_biomass <- summarise_at(Red_Dun_Reef_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2009_grouper_biomass$Year <- ('2009')
Red_Dun_Reef_2009_grouper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2010 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2010.xls")

Red_Dun_Reef_2010_snapper <- merge(Red_Dun_Reef_2010, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_2010_snapper_biomass <- summarise_at(Red_Dun_Reef_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2010_snapper_biomass$Year <- ('2010')
Red_Dun_Reef_2010_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2010_grouper <- merge(Red_Dun_Reef_2010, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_2010_grouper_biomass <- summarise_at(Red_Dun_Reef_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2010_grouper_biomass$Year <- ('2010')
Red_Dun_Reef_2010_grouper_biomass$Reef <- ('Red Dun Reef')

Red_Dun_Reef_2011 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2011.xls")

Red_Dun_Reef_2011_snapper <- merge(Red_Dun_Reef_2011, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_2011_snapper_biomass <- summarise_at(Red_Dun_Reef_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2011_snapper_biomass$Year <- ('2011')
Red_Dun_Reef_2011_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2011_grouper <- merge(Red_Dun_Reef_2011, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_2011_grouper_biomass <- summarise_at(Red_Dun_Reef_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2011_grouper_biomass$Year <- ('2011')
Red_Dun_Reef_2011_grouper_biomass$Reef <- ('Red Dun Reef')



Red_Dun_Reef_2012 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2012.xls")

Red_Dun_Reef_2012_snapper <- merge(Red_Dun_Reef_2012, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_2012_snapper_biomass <- summarise_at(Red_Dun_Reef_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2012_snapper_biomass$Year <- ('2012')
Red_Dun_Reef_2012_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2012_grouper <- merge(Red_Dun_Reef_2012, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_2012_grouper_biomass <- summarise_at(Red_Dun_Reef_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2012_grouper_biomass$Year <- ('2012')
Red_Dun_Reef_2012_grouper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2014 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2014.xls")

Red_Dun_Reef_2014_snapper <- merge(Red_Dun_Reef_2014, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_2014_snapper_biomass <- summarise_at(Red_Dun_Reef_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2014_snapper_biomass$Year <- ('2014')
Red_Dun_Reef_2014_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2014_grouper <- merge(Red_Dun_Reef_2014, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_2014_grouper_biomass <- summarise_at(Red_Dun_Reef_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2014_grouper_biomass$Year <- ('2014')
Red_Dun_Reef_2014_grouper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2016 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2016.xls")

Red_Dun_Reef_2016_snapper <- merge(Red_Dun_Reef_2016, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_2016_snapper_biomass <- summarise_at(Red_Dun_Reef_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2016_snapper_biomass$Year <- ('2016')
Red_Dun_Reef_2016_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2016_grouper <- merge(Red_Dun_Reef_2016, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_2016_grouper_biomass <- summarise_at(Red_Dun_Reef_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2016_grouper_biomass$Year <- ('2016')
Red_Dun_Reef_2016_grouper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2018 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2018.xls")

Red_Dun_Reef_2018_snapper <- merge(Red_Dun_Reef_2018, snapper, by = c("SPECIES_CD"))
Red_Dun_Reef_2018_snapper_biomass <- summarise_at(Red_Dun_Reef_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2018_snapper_biomass$Year <- ('2018')
Red_Dun_Reef_2018_snapper_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2018_grouper <- merge(Red_Dun_Reef_2018, grouper, by = c("SPECIES_CD"))
Red_Dun_Reef_2018_grouper_biomass <- summarise_at(Red_Dun_Reef_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2018_grouper_biomass$Year <- ('2018')
Red_Dun_Reef_2018_grouper_biomass$Reef <- ('Red Dun Reef')



### Combine all years together for snapper_ and grouper_ seperately



Red_Dun_Reef_snapper_1 <- rbind(Red_Dun_Reef_1999_snapper_biomass,Red_Dun_Reef_2000_snapper_biomass)
Red_Dun_Reef_snapper_2 <- rbind(Red_Dun_Reef_snapper_1,Red_Dun_Reef_2001_snapper_biomass)
Red_Dun_Reef_snapper_3 <- rbind(Red_Dun_Reef_snapper_2,Red_Dun_Reef_2002_snapper_biomass)
Red_Dun_Reef_snapper_4 <- rbind(Red_Dun_Reef_snapper_3,Red_Dun_Reef_2003_snapper_biomass)
Red_Dun_Reef_snapper_5 <- rbind(Red_Dun_Reef_snapper_4,Red_Dun_Reef_2004_snapper_biomass)
Red_Dun_Reef_snapper_6 <- rbind(Red_Dun_Reef_snapper_5,Red_Dun_Reef_2005_snapper_biomass)
Red_Dun_Reef_snapper_7 <- rbind(Red_Dun_Reef_snapper_6,Red_Dun_Reef_2006_snapper_biomass)
Red_Dun_Reef_snapper_8 <- rbind(Red_Dun_Reef_snapper_7,Red_Dun_Reef_2007_snapper_biomass)
Red_Dun_Reef_snapper_9 <- rbind(Red_Dun_Reef_snapper_8,Red_Dun_Reef_2008_snapper_biomass)
Red_Dun_Reef_snapper_10 <- rbind(Red_Dun_Reef_snapper_9,Red_Dun_Reef_2009_snapper_biomass)
Red_Dun_Reef_snapper_11<- rbind(Red_Dun_Reef_snapper_10,Red_Dun_Reef_2010_snapper_biomass)
Red_Dun_Reef_snapper_12 <- rbind(Red_Dun_Reef_snapper_11,Red_Dun_Reef_2011_snapper_biomass)
Red_Dun_Reef_snapper_13 <- rbind(Red_Dun_Reef_snapper_12,Red_Dun_Reef_2012_snapper_biomass)
Red_Dun_Reef_snapper_14 <- rbind(Red_Dun_Reef_snapper_13,Red_Dun_Reef_2014_snapper_biomass)
Red_Dun_Reef_snapper_15 <- rbind(Red_Dun_Reef_snapper_14,Red_Dun_Reef_2016_snapper_biomass)
Red_Dun_Reef_snapper_biomass_data_combined <- rbind(Red_Dun_Reef_snapper_15,Red_Dun_Reef_2018_snapper_biomass)



Red_Dun_Reef_grouper_1 <- rbind(Red_Dun_Reef_1999_grouper_biomass,Red_Dun_Reef_2000_grouper_biomass)
Red_Dun_Reef_grouper_2 <- rbind(Red_Dun_Reef_grouper_1,Red_Dun_Reef_2001_grouper_biomass)
Red_Dun_Reef_grouper_3 <- rbind(Red_Dun_Reef_grouper_2,Red_Dun_Reef_2002_grouper_biomass)
Red_Dun_Reef_grouper_4 <- rbind(Red_Dun_Reef_grouper_3,Red_Dun_Reef_2003_grouper_biomass)
Red_Dun_Reef_grouper_5 <- rbind(Red_Dun_Reef_grouper_4,Red_Dun_Reef_2004_grouper_biomass)
Red_Dun_Reef_grouper_6 <- rbind(Red_Dun_Reef_grouper_5,Red_Dun_Reef_2005_grouper_biomass)
Red_Dun_Reef_grouper_7 <- rbind(Red_Dun_Reef_grouper_6,Red_Dun_Reef_2006_grouper_biomass)
Red_Dun_Reef_grouper_8 <- rbind(Red_Dun_Reef_grouper_7,Red_Dun_Reef_2007_grouper_biomass)
Red_Dun_Reef_grouper_9 <- rbind(Red_Dun_Reef_grouper_8,Red_Dun_Reef_2008_grouper_biomass)
Red_Dun_Reef_grouper_10 <- rbind(Red_Dun_Reef_grouper_9,Red_Dun_Reef_2009_grouper_biomass)
Red_Dun_Reef_grouper_11<- rbind(Red_Dun_Reef_grouper_10,Red_Dun_Reef_2010_grouper_biomass)
Red_Dun_Reef_grouper_12 <- rbind(Red_Dun_Reef_grouper_11,Red_Dun_Reef_2011_grouper_biomass)
Red_Dun_Reef_grouper_13 <- rbind(Red_Dun_Reef_grouper_12,Red_Dun_Reef_2012_grouper_biomass)
Red_Dun_Reef_grouper_14 <- rbind(Red_Dun_Reef_grouper_13,Red_Dun_Reef_2014_grouper_biomass)
Red_Dun_Reef_grouper_15 <- rbind(Red_Dun_Reef_grouper_14,Red_Dun_Reef_2016_grouper_biomass)
Red_Dun_Reef_grouper_biomass_data_combined <- rbind(Red_Dun_Reef_grouper_15,Red_Dun_Reef_2018_grouper_biomass)



export(Red_Dun_Reef_snapper_biomass_data_combined, "Red_Dun_Reef/data/Red_Dun_Reef_snapper__biomass.csv")
export(Red_Dun_Reef_grouper_biomass_data_combined, "Red_Dun_Reef/data/Red_Dun_Reef_grouper__biomass.csv")



#Rock Key Deep


Rock_Key_Deep_1999 <- import("Rock_Key_Deep/data/Rock_Key_Deep_1999.xls")


Rock_Key_Deep_1999_snapper <- merge(Rock_Key_Deep_1999, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_1999_snapper_biomass <- summarise_at(Rock_Key_Deep_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_1999_snapper_biomass$Year <- ('1999')
Rock_Key_Deep_1999_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_1999_grouper <- merge(Rock_Key_Deep_1999, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_1999_grouper_biomass <- summarise_at(Rock_Key_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_1999_grouper_biomass$Year <- ('1999')
Rock_Key_Deep_1999_grouper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2000 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2000.xls")

Rock_Key_Deep_2000_snapper <- merge(Rock_Key_Deep_2000, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_2000_snapper_biomass <- summarise_at(Rock_Key_Deep_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2000_snapper_biomass$Year <- ('2000')
Rock_Key_Deep_2000_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2000_grouper <- merge(Rock_Key_Deep_2000, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_2000_grouper_biomass <- summarise_at(Rock_Key_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2000_grouper_biomass$Year <- ('2000')
Rock_Key_Deep_2000_grouper_biomass$Reef <- ('Rock Key Deep')

Rock_Key_Deep_2001 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2001.xls")

Rock_Key_Deep_2001_snapper <- merge(Rock_Key_Deep_2001, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_2001_snapper_biomass <- summarise_at(Rock_Key_Deep_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2001_snapper_biomass$Year <- ('2001')
Rock_Key_Deep_2001_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2001_grouper <- merge(Rock_Key_Deep_2001, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_2001_grouper_biomass <- summarise_at(Rock_Key_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2001_grouper_biomass$Year <- ('2001')
Rock_Key_Deep_2001_grouper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2002 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2002.xls")

Rock_Key_Deep_2002_snapper <- merge(Rock_Key_Deep_2002, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_2002_snapper_biomass <- summarise_at(Rock_Key_Deep_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2002_snapper_biomass$Year <- ('2002')
Rock_Key_Deep_2002_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2002_grouper <- merge(Rock_Key_Deep_2002, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_2002_grouper_biomass <- summarise_at(Rock_Key_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2002_grouper_biomass$Year <- ('2002')
Rock_Key_Deep_2002_grouper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2003 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2003.xls")

Rock_Key_Deep_2003_snapper <- merge(Rock_Key_Deep_2003, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_2003_snapper_biomass <- summarise_at(Rock_Key_Deep_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2003_snapper_biomass$Year <- ('2003')
Rock_Key_Deep_2003_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2003_grouper <- merge(Rock_Key_Deep_2003, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_2003_grouper_biomass <- summarise_at(Rock_Key_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2003_grouper_biomass$Year <- ('2003')
Rock_Key_Deep_2003_grouper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2004 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2004.xls")

Rock_Key_Deep_2004_snapper <- merge(Rock_Key_Deep_2004, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_2004_snapper_biomass <- summarise_at(Rock_Key_Deep_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2004_snapper_biomass$Year <- ('2004')
Rock_Key_Deep_2004_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2004_grouper <- merge(Rock_Key_Deep_2004, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_2004_grouper_biomass <- summarise_at(Rock_Key_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2004_grouper_biomass$Year <- ('2004')
Rock_Key_Deep_2004_grouper_biomass$Reef <- ('Rock Key Deep')

Rock_Key_Deep_2005 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2005.xls")

Rock_Key_Deep_2005_snapper <- merge(Rock_Key_Deep_2005, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_2005_snapper_biomass <- summarise_at(Rock_Key_Deep_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2005_snapper_biomass$Year <- ('2005')
Rock_Key_Deep_2005_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2005_grouper <- merge(Rock_Key_Deep_2005, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_2005_grouper_biomass <- summarise_at(Rock_Key_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2005_grouper_biomass$Year <- ('2005')
Rock_Key_Deep_2005_grouper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2006 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2006.xls")

Rock_Key_Deep_2006_snapper <- merge(Rock_Key_Deep_2006, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_2006_snapper_biomass <- summarise_at(Rock_Key_Deep_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2006_snapper_biomass$Year <- ('2006')
Rock_Key_Deep_2006_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2006_grouper <- merge(Rock_Key_Deep_2006, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_2006_grouper_biomass <- summarise_at(Rock_Key_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2006_grouper_biomass$Year <- ('2006')
Rock_Key_Deep_2006_grouper_biomass$Reef <- ('Rock Key Deep')

Rock_Key_Deep_2007 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2007.xls")

Rock_Key_Deep_2007_snapper <- merge(Rock_Key_Deep_2007, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_2007_snapper_biomass <- summarise_at(Rock_Key_Deep_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2007_snapper_biomass$Year <- ('2007')
Rock_Key_Deep_2007_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2007_grouper <- merge(Rock_Key_Deep_2007, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_2007_grouper_biomass <- summarise_at(Rock_Key_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2007_grouper_biomass$Year <- ('2007')
Rock_Key_Deep_2007_grouper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2008 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2008.xls")

Rock_Key_Deep_2008_snapper <- merge(Rock_Key_Deep_2008, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_2008_snapper_biomass <- summarise_at(Rock_Key_Deep_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2008_snapper_biomass$Year <- ('2008')
Rock_Key_Deep_2008_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2008_grouper <- merge(Rock_Key_Deep_2008, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_2008_grouper_biomass <- summarise_at(Rock_Key_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2008_grouper_biomass$Year <- ('2008')
Rock_Key_Deep_2008_grouper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2009 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2009.xls")

Rock_Key_Deep_2009_snapper <- merge(Rock_Key_Deep_2009, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_2009_snapper_biomass <- summarise_at(Rock_Key_Deep_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2009_snapper_biomass$Year <- ('2009')
Rock_Key_Deep_2009_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2009_grouper <- merge(Rock_Key_Deep_2009, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_2009_grouper_biomass <- summarise_at(Rock_Key_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2009_grouper_biomass$Year <- ('2009')
Rock_Key_Deep_2009_grouper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2010 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2010.xls")

Rock_Key_Deep_2010_snapper <- merge(Rock_Key_Deep_2010, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_2010_snapper_biomass <- summarise_at(Rock_Key_Deep_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2010_snapper_biomass$Year <- ('2010')
Rock_Key_Deep_2010_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2010_grouper <- merge(Rock_Key_Deep_2010, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_2010_grouper_biomass <- summarise_at(Rock_Key_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2010_grouper_biomass$Year <- ('2010')
Rock_Key_Deep_2010_grouper_biomass$Reef <- ('Rock Key Deep')

Rock_Key_Deep_2011 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2011.xls")

Rock_Key_Deep_2011_snapper <- merge(Rock_Key_Deep_2011, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_2011_snapper_biomass <- summarise_at(Rock_Key_Deep_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2011_snapper_biomass$Year <- ('2011')
Rock_Key_Deep_2011_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2011_grouper <- merge(Rock_Key_Deep_2011, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_2011_grouper_biomass <- summarise_at(Rock_Key_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2011_grouper_biomass$Year <- ('2011')
Rock_Key_Deep_2011_grouper_biomass$Reef <- ('Rock Key Deep')



Rock_Key_Deep_2012 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2012.xls")

Rock_Key_Deep_2012_snapper <- merge(Rock_Key_Deep_2012, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_2012_snapper_biomass <- summarise_at(Rock_Key_Deep_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2012_snapper_biomass$Year <- ('2012')
Rock_Key_Deep_2012_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2012_grouper <- merge(Rock_Key_Deep_2012, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_2012_grouper_biomass <- summarise_at(Rock_Key_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2012_grouper_biomass$Year <- ('2012')
Rock_Key_Deep_2012_grouper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2014 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2014.xls")

Rock_Key_Deep_2014_snapper <- merge(Rock_Key_Deep_2014, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_2014_snapper_biomass <- summarise_at(Rock_Key_Deep_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2014_snapper_biomass$Year <- ('2014')
Rock_Key_Deep_2014_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2014_grouper <- merge(Rock_Key_Deep_2014, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_2014_grouper_biomass <- summarise_at(Rock_Key_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2014_grouper_biomass$Year <- ('2014')
Rock_Key_Deep_2014_grouper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2016 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2016.xls")

Rock_Key_Deep_2016_snapper <- merge(Rock_Key_Deep_2016, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_2016_snapper_biomass <- summarise_at(Rock_Key_Deep_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2016_snapper_biomass$Year <- ('2016')
Rock_Key_Deep_2016_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2016_grouper <- merge(Rock_Key_Deep_2016, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_2016_grouper_biomass <- summarise_at(Rock_Key_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2016_grouper_biomass$Year <- ('2016')
Rock_Key_Deep_2016_grouper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2018 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2018.xls")

Rock_Key_Deep_2018_snapper <- merge(Rock_Key_Deep_2018, snapper, by = c("SPECIES_CD"))
Rock_Key_Deep_2018_snapper_biomass <- summarise_at(Rock_Key_Deep_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2018_snapper_biomass$Year <- ('2018')
Rock_Key_Deep_2018_snapper_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2018_grouper <- merge(Rock_Key_Deep_2018, grouper, by = c("SPECIES_CD"))
Rock_Key_Deep_2018_grouper_biomass <- summarise_at(Rock_Key_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2018_grouper_biomass$Year <- ('2018')
Rock_Key_Deep_2018_grouper_biomass$Reef <- ('Rock Key Deep')



### Combine all years together for snapper_ and grouper_ seperately



Rock_Key_Deep_snapper_1 <- rbind(Rock_Key_Deep_1999_snapper_biomass,Rock_Key_Deep_2000_snapper_biomass)
Rock_Key_Deep_snapper_2 <- rbind(Rock_Key_Deep_snapper_1,Rock_Key_Deep_2001_snapper_biomass)
Rock_Key_Deep_snapper_3 <- rbind(Rock_Key_Deep_snapper_2,Rock_Key_Deep_2002_snapper_biomass)
Rock_Key_Deep_snapper_4 <- rbind(Rock_Key_Deep_snapper_3,Rock_Key_Deep_2003_snapper_biomass)
Rock_Key_Deep_snapper_5 <- rbind(Rock_Key_Deep_snapper_4,Rock_Key_Deep_2004_snapper_biomass)
Rock_Key_Deep_snapper_6 <- rbind(Rock_Key_Deep_snapper_5,Rock_Key_Deep_2005_snapper_biomass)
Rock_Key_Deep_snapper_7 <- rbind(Rock_Key_Deep_snapper_6,Rock_Key_Deep_2006_snapper_biomass)
Rock_Key_Deep_snapper_8 <- rbind(Rock_Key_Deep_snapper_7,Rock_Key_Deep_2007_snapper_biomass)
Rock_Key_Deep_snapper_9 <- rbind(Rock_Key_Deep_snapper_8,Rock_Key_Deep_2008_snapper_biomass)
Rock_Key_Deep_snapper_10 <- rbind(Rock_Key_Deep_snapper_9,Rock_Key_Deep_2009_snapper_biomass)
Rock_Key_Deep_snapper_11<- rbind(Rock_Key_Deep_snapper_10,Rock_Key_Deep_2010_snapper_biomass)
Rock_Key_Deep_snapper_12 <- rbind(Rock_Key_Deep_snapper_11,Rock_Key_Deep_2011_snapper_biomass)
Rock_Key_Deep_snapper_13 <- rbind(Rock_Key_Deep_snapper_12,Rock_Key_Deep_2012_snapper_biomass)
Rock_Key_Deep_snapper_14 <- rbind(Rock_Key_Deep_snapper_13,Rock_Key_Deep_2014_snapper_biomass)
Rock_Key_Deep_snapper_15 <- rbind(Rock_Key_Deep_snapper_14,Rock_Key_Deep_2016_snapper_biomass)
Rock_Key_Deep_snapper_biomass_data_combined <- rbind(Rock_Key_Deep_snapper_15,Rock_Key_Deep_2018_snapper_biomass)



Rock_Key_Deep_grouper_1 <- rbind(Rock_Key_Deep_1999_grouper_biomass,Rock_Key_Deep_2000_grouper_biomass)
Rock_Key_Deep_grouper_2 <- rbind(Rock_Key_Deep_grouper_1,Rock_Key_Deep_2001_grouper_biomass)
Rock_Key_Deep_grouper_3 <- rbind(Rock_Key_Deep_grouper_2,Rock_Key_Deep_2002_grouper_biomass)
Rock_Key_Deep_grouper_4 <- rbind(Rock_Key_Deep_grouper_3,Rock_Key_Deep_2003_grouper_biomass)
Rock_Key_Deep_grouper_5 <- rbind(Rock_Key_Deep_grouper_4,Rock_Key_Deep_2004_grouper_biomass)
Rock_Key_Deep_grouper_6 <- rbind(Rock_Key_Deep_grouper_5,Rock_Key_Deep_2005_grouper_biomass)
Rock_Key_Deep_grouper_7 <- rbind(Rock_Key_Deep_grouper_6,Rock_Key_Deep_2006_grouper_biomass)
Rock_Key_Deep_grouper_8 <- rbind(Rock_Key_Deep_grouper_7,Rock_Key_Deep_2007_grouper_biomass)
Rock_Key_Deep_grouper_9 <- rbind(Rock_Key_Deep_grouper_8,Rock_Key_Deep_2008_grouper_biomass)
Rock_Key_Deep_grouper_10 <- rbind(Rock_Key_Deep_grouper_9,Rock_Key_Deep_2009_grouper_biomass)
Rock_Key_Deep_grouper_11<- rbind(Rock_Key_Deep_grouper_10,Rock_Key_Deep_2010_grouper_biomass)
Rock_Key_Deep_grouper_12 <- rbind(Rock_Key_Deep_grouper_11,Rock_Key_Deep_2011_grouper_biomass)
Rock_Key_Deep_grouper_13 <- rbind(Rock_Key_Deep_grouper_12,Rock_Key_Deep_2012_grouper_biomass)
Rock_Key_Deep_grouper_14 <- rbind(Rock_Key_Deep_grouper_13,Rock_Key_Deep_2014_grouper_biomass)
Rock_Key_Deep_grouper_15 <- rbind(Rock_Key_Deep_grouper_14,Rock_Key_Deep_2016_grouper_biomass)
Rock_Key_Deep_grouper_biomass_data_combined <- rbind(Rock_Key_Deep_grouper_15,Rock_Key_Deep_2018_grouper_biomass)



export(Rock_Key_Deep_snapper_biomass_data_combined, "Rock_Key_Deep/data/Rock_Key_Deep_snapper__biomass.csv")
export(Rock_Key_Deep_grouper_biomass_data_combined, "Rock_Key_Deep/data/Rock_Key_Deep_grouper__biomass.csv")



#Rock Key Shallow


Rock_Key_Shallow_1999 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_1999.xls")


Rock_Key_Shallow_1999_snapper <- merge(Rock_Key_Shallow_1999, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_1999_snapper_biomass <- summarise_at(Rock_Key_Shallow_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_1999_snapper_biomass$Year <- ('1999')
Rock_Key_Shallow_1999_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_1999_grouper <- merge(Rock_Key_Shallow_1999, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_1999_grouper_biomass <- summarise_at(Rock_Key_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_1999_grouper_biomass$Year <- ('1999')
Rock_Key_Shallow_1999_grouper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2000 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2000.xls")

Rock_Key_Shallow_2000_snapper <- merge(Rock_Key_Shallow_2000, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2000_snapper_biomass <- summarise_at(Rock_Key_Shallow_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2000_snapper_biomass$Year <- ('2000')
Rock_Key_Shallow_2000_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2000_grouper <- merge(Rock_Key_Shallow_2000, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2000_grouper_biomass <- summarise_at(Rock_Key_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2000_grouper_biomass$Year <- ('2000')
Rock_Key_Shallow_2000_grouper_biomass$Reef <- ('Rock Key Shallow')

Rock_Key_Shallow_2001 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2001.xls")

Rock_Key_Shallow_2001_snapper <- merge(Rock_Key_Shallow_2001, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2001_snapper_biomass <- summarise_at(Rock_Key_Shallow_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2001_snapper_biomass$Year <- ('2001')
Rock_Key_Shallow_2001_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2001_grouper <- merge(Rock_Key_Shallow_2001, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2001_grouper_biomass <- summarise_at(Rock_Key_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2001_grouper_biomass$Year <- ('2001')
Rock_Key_Shallow_2001_grouper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2002 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2002.xls")

Rock_Key_Shallow_2002_snapper <- merge(Rock_Key_Shallow_2002, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2002_snapper_biomass <- summarise_at(Rock_Key_Shallow_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2002_snapper_biomass$Year <- ('2002')
Rock_Key_Shallow_2002_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2002_grouper <- merge(Rock_Key_Shallow_2002, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2002_grouper_biomass <- summarise_at(Rock_Key_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2002_grouper_biomass$Year <- ('2002')
Rock_Key_Shallow_2002_grouper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2003 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2003.xls")

Rock_Key_Shallow_2003_snapper <- merge(Rock_Key_Shallow_2003, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2003_snapper_biomass <- summarise_at(Rock_Key_Shallow_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2003_snapper_biomass$Year <- ('2003')
Rock_Key_Shallow_2003_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2003_grouper <- merge(Rock_Key_Shallow_2003, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2003_grouper_biomass <- summarise_at(Rock_Key_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2003_grouper_biomass$Year <- ('2003')
Rock_Key_Shallow_2003_grouper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2004 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2004.xls")

Rock_Key_Shallow_2004_snapper <- merge(Rock_Key_Shallow_2004, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2004_snapper_biomass <- summarise_at(Rock_Key_Shallow_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2004_snapper_biomass$Year <- ('2004')
Rock_Key_Shallow_2004_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2004_grouper <- merge(Rock_Key_Shallow_2004, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2004_grouper_biomass <- summarise_at(Rock_Key_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2004_grouper_biomass$Year <- ('2004')
Rock_Key_Shallow_2004_grouper_biomass$Reef <- ('Rock Key Shallow')

Rock_Key_Shallow_2005 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2005.xls")

Rock_Key_Shallow_2005_snapper <- merge(Rock_Key_Shallow_2005, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2005_snapper_biomass <- summarise_at(Rock_Key_Shallow_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2005_snapper_biomass$Year <- ('2005')
Rock_Key_Shallow_2005_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2005_grouper <- merge(Rock_Key_Shallow_2005, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2005_grouper_biomass <- summarise_at(Rock_Key_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2005_grouper_biomass$Year <- ('2005')
Rock_Key_Shallow_2005_grouper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2006 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2006.xls")

Rock_Key_Shallow_2006_snapper <- merge(Rock_Key_Shallow_2006, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2006_snapper_biomass <- summarise_at(Rock_Key_Shallow_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2006_snapper_biomass$Year <- ('2006')
Rock_Key_Shallow_2006_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2006_grouper <- merge(Rock_Key_Shallow_2006, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2006_grouper_biomass <- summarise_at(Rock_Key_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2006_grouper_biomass$Year <- ('2006')
Rock_Key_Shallow_2006_grouper_biomass$Reef <- ('Rock Key Shallow')

Rock_Key_Shallow_2007 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2007.xls")

Rock_Key_Shallow_2007_snapper <- merge(Rock_Key_Shallow_2007, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2007_snapper_biomass <- summarise_at(Rock_Key_Shallow_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2007_snapper_biomass$Year <- ('2007')
Rock_Key_Shallow_2007_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2007_grouper <- merge(Rock_Key_Shallow_2007, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2007_grouper_biomass <- summarise_at(Rock_Key_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2007_grouper_biomass$Year <- ('2007')
Rock_Key_Shallow_2007_grouper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2008 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2008.xls")

Rock_Key_Shallow_2008_snapper <- merge(Rock_Key_Shallow_2008, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2008_snapper_biomass <- summarise_at(Rock_Key_Shallow_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2008_snapper_biomass$Year <- ('2008')
Rock_Key_Shallow_2008_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2008_grouper <- merge(Rock_Key_Shallow_2008, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2008_grouper_biomass <- summarise_at(Rock_Key_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2008_grouper_biomass$Year <- ('2008')
Rock_Key_Shallow_2008_grouper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2009 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2009.xls")

Rock_Key_Shallow_2009_snapper <- merge(Rock_Key_Shallow_2009, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2009_snapper_biomass <- summarise_at(Rock_Key_Shallow_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2009_snapper_biomass$Year <- ('2009')
Rock_Key_Shallow_2009_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2009_grouper <- merge(Rock_Key_Shallow_2009, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2009_grouper_biomass <- summarise_at(Rock_Key_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2009_grouper_biomass$Year <- ('2009')
Rock_Key_Shallow_2009_grouper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2010 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2010.xls")

Rock_Key_Shallow_2010_snapper <- merge(Rock_Key_Shallow_2010, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2010_snapper_biomass <- summarise_at(Rock_Key_Shallow_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2010_snapper_biomass$Year <- ('2010')
Rock_Key_Shallow_2010_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2010_grouper <- merge(Rock_Key_Shallow_2010, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2010_grouper_biomass <- summarise_at(Rock_Key_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2010_grouper_biomass$Year <- ('2010')
Rock_Key_Shallow_2010_grouper_biomass$Reef <- ('Rock Key Shallow')

Rock_Key_Shallow_2011 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2011.xls")

Rock_Key_Shallow_2011_snapper <- merge(Rock_Key_Shallow_2011, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2011_snapper_biomass <- summarise_at(Rock_Key_Shallow_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2011_snapper_biomass$Year <- ('2011')
Rock_Key_Shallow_2011_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2011_grouper <- merge(Rock_Key_Shallow_2011, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2011_grouper_biomass <- summarise_at(Rock_Key_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2011_grouper_biomass$Year <- ('2011')
Rock_Key_Shallow_2011_grouper_biomass$Reef <- ('Rock Key Shallow')



Rock_Key_Shallow_2012 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2012.xls")

Rock_Key_Shallow_2012_snapper <- merge(Rock_Key_Shallow_2012, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2012_snapper_biomass <- summarise_at(Rock_Key_Shallow_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2012_snapper_biomass$Year <- ('2012')
Rock_Key_Shallow_2012_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2012_grouper <- merge(Rock_Key_Shallow_2012, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2012_grouper_biomass <- summarise_at(Rock_Key_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2012_grouper_biomass$Year <- ('2012')
Rock_Key_Shallow_2012_grouper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2014 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2014.xls")

Rock_Key_Shallow_2014_snapper <- merge(Rock_Key_Shallow_2014, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2014_snapper_biomass <- summarise_at(Rock_Key_Shallow_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2014_snapper_biomass$Year <- ('2014')
Rock_Key_Shallow_2014_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2014_grouper <- merge(Rock_Key_Shallow_2014, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2014_grouper_biomass <- summarise_at(Rock_Key_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2014_grouper_biomass$Year <- ('2014')
Rock_Key_Shallow_2014_grouper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2016 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2016.xls")

Rock_Key_Shallow_2016_snapper <- merge(Rock_Key_Shallow_2016, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2016_snapper_biomass <- summarise_at(Rock_Key_Shallow_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2016_snapper_biomass$Year <- ('2016')
Rock_Key_Shallow_2016_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2016_grouper <- merge(Rock_Key_Shallow_2016, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2016_grouper_biomass <- summarise_at(Rock_Key_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2016_grouper_biomass$Year <- ('2016')
Rock_Key_Shallow_2016_grouper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2018 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2018.xls")

Rock_Key_Shallow_2018_snapper <- merge(Rock_Key_Shallow_2018, snapper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2018_snapper_biomass <- summarise_at(Rock_Key_Shallow_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2018_snapper_biomass$Year <- ('2018')
Rock_Key_Shallow_2018_snapper_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2018_grouper <- merge(Rock_Key_Shallow_2018, grouper, by = c("SPECIES_CD"))
Rock_Key_Shallow_2018_grouper_biomass <- summarise_at(Rock_Key_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2018_grouper_biomass$Year <- ('2018')
Rock_Key_Shallow_2018_grouper_biomass$Reef <- ('Rock Key Shallow')



### Combine all years together for snapper_ and grouper_ seperately



Rock_Key_Shallow_snapper_1 <- rbind(Rock_Key_Shallow_1999_snapper_biomass,Rock_Key_Shallow_2000_snapper_biomass)
Rock_Key_Shallow_snapper_2 <- rbind(Rock_Key_Shallow_snapper_1,Rock_Key_Shallow_2001_snapper_biomass)
Rock_Key_Shallow_snapper_3 <- rbind(Rock_Key_Shallow_snapper_2,Rock_Key_Shallow_2002_snapper_biomass)
Rock_Key_Shallow_snapper_4 <- rbind(Rock_Key_Shallow_snapper_3,Rock_Key_Shallow_2003_snapper_biomass)
Rock_Key_Shallow_snapper_5 <- rbind(Rock_Key_Shallow_snapper_4,Rock_Key_Shallow_2004_snapper_biomass)
Rock_Key_Shallow_snapper_6 <- rbind(Rock_Key_Shallow_snapper_5,Rock_Key_Shallow_2005_snapper_biomass)
Rock_Key_Shallow_snapper_7 <- rbind(Rock_Key_Shallow_snapper_6,Rock_Key_Shallow_2006_snapper_biomass)
Rock_Key_Shallow_snapper_8 <- rbind(Rock_Key_Shallow_snapper_7,Rock_Key_Shallow_2007_snapper_biomass)
Rock_Key_Shallow_snapper_9 <- rbind(Rock_Key_Shallow_snapper_8,Rock_Key_Shallow_2008_snapper_biomass)
Rock_Key_Shallow_snapper_10 <- rbind(Rock_Key_Shallow_snapper_9,Rock_Key_Shallow_2009_snapper_biomass)
Rock_Key_Shallow_snapper_11<- rbind(Rock_Key_Shallow_snapper_10,Rock_Key_Shallow_2010_snapper_biomass)
Rock_Key_Shallow_snapper_12 <- rbind(Rock_Key_Shallow_snapper_11,Rock_Key_Shallow_2011_snapper_biomass)
Rock_Key_Shallow_snapper_13 <- rbind(Rock_Key_Shallow_snapper_12,Rock_Key_Shallow_2012_snapper_biomass)
Rock_Key_Shallow_snapper_14 <- rbind(Rock_Key_Shallow_snapper_13,Rock_Key_Shallow_2014_snapper_biomass)
Rock_Key_Shallow_snapper_15 <- rbind(Rock_Key_Shallow_snapper_14,Rock_Key_Shallow_2016_snapper_biomass)
Rock_Key_Shallow_snapper_biomass_data_combined <- rbind(Rock_Key_Shallow_snapper_15,Rock_Key_Shallow_2018_snapper_biomass)



Rock_Key_Shallow_grouper_1 <- rbind(Rock_Key_Shallow_1999_grouper_biomass,Rock_Key_Shallow_2000_grouper_biomass)
Rock_Key_Shallow_grouper_2 <- rbind(Rock_Key_Shallow_grouper_1,Rock_Key_Shallow_2001_grouper_biomass)
Rock_Key_Shallow_grouper_3 <- rbind(Rock_Key_Shallow_grouper_2,Rock_Key_Shallow_2002_grouper_biomass)
Rock_Key_Shallow_grouper_4 <- rbind(Rock_Key_Shallow_grouper_3,Rock_Key_Shallow_2003_grouper_biomass)
Rock_Key_Shallow_grouper_5 <- rbind(Rock_Key_Shallow_grouper_4,Rock_Key_Shallow_2004_grouper_biomass)
Rock_Key_Shallow_grouper_6 <- rbind(Rock_Key_Shallow_grouper_5,Rock_Key_Shallow_2005_grouper_biomass)
Rock_Key_Shallow_grouper_7 <- rbind(Rock_Key_Shallow_grouper_6,Rock_Key_Shallow_2006_grouper_biomass)
Rock_Key_Shallow_grouper_8 <- rbind(Rock_Key_Shallow_grouper_7,Rock_Key_Shallow_2007_grouper_biomass)
Rock_Key_Shallow_grouper_9 <- rbind(Rock_Key_Shallow_grouper_8,Rock_Key_Shallow_2008_grouper_biomass)
Rock_Key_Shallow_grouper_10 <- rbind(Rock_Key_Shallow_grouper_9,Rock_Key_Shallow_2009_grouper_biomass)
Rock_Key_Shallow_grouper_11<- rbind(Rock_Key_Shallow_grouper_10,Rock_Key_Shallow_2010_grouper_biomass)
Rock_Key_Shallow_grouper_12 <- rbind(Rock_Key_Shallow_grouper_11,Rock_Key_Shallow_2011_grouper_biomass)
Rock_Key_Shallow_grouper_13 <- rbind(Rock_Key_Shallow_grouper_12,Rock_Key_Shallow_2012_grouper_biomass)
Rock_Key_Shallow_grouper_14 <- rbind(Rock_Key_Shallow_grouper_13,Rock_Key_Shallow_2014_grouper_biomass)
Rock_Key_Shallow_grouper_15 <- rbind(Rock_Key_Shallow_grouper_14,Rock_Key_Shallow_2016_grouper_biomass)
Rock_Key_Shallow_grouper_biomass_data_combined <- rbind(Rock_Key_Shallow_grouper_15,Rock_Key_Shallow_2018_grouper_biomass)



export(Rock_Key_Shallow_snapper_biomass_data_combined, "Rock_Key_Shallow/data/Rock_Key_Shallow_snapper__biomass.csv")
export(Rock_Key_Shallow_grouper_biomass_data_combined, "Rock_Key_Shallow/data/Rock_Key_Shallow_grouper__biomass.csv")



# Sand Key Deep

Sand_Key_Deep_1999 <- import("Sand_Key_Deep/data/Sand_Key_Deep_1999.xls")


Sand_Key_Deep_1999_snapper <- merge(Sand_Key_Deep_1999, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_1999_snapper_biomass <- summarise_at(Sand_Key_Deep_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_1999_snapper_biomass$Year <- ('1999')
Sand_Key_Deep_1999_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_1999_grouper <- merge(Sand_Key_Deep_1999, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_1999_grouper_biomass <- summarise_at(Sand_Key_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_1999_grouper_biomass$Year <- ('1999')
Sand_Key_Deep_1999_grouper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2000 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2000.xls")

Sand_Key_Deep_2000_snapper <- merge(Sand_Key_Deep_2000, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_2000_snapper_biomass <- summarise_at(Sand_Key_Deep_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2000_snapper_biomass$Year <- ('2000')
Sand_Key_Deep_2000_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2000_grouper <- merge(Sand_Key_Deep_2000, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_2000_grouper_biomass <- summarise_at(Sand_Key_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2000_grouper_biomass$Year <- ('2000')
Sand_Key_Deep_2000_grouper_biomass$Reef <- ('Sand Key Deep')

Sand_Key_Deep_2001 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2001.xls")

Sand_Key_Deep_2001_snapper <- merge(Sand_Key_Deep_2001, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_2001_snapper_biomass <- summarise_at(Sand_Key_Deep_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2001_snapper_biomass$Year <- ('2001')
Sand_Key_Deep_2001_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2001_grouper <- merge(Sand_Key_Deep_2001, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_2001_grouper_biomass <- summarise_at(Sand_Key_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2001_grouper_biomass$Year <- ('2001')
Sand_Key_Deep_2001_grouper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2002 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2002.xls")

Sand_Key_Deep_2002_snapper <- merge(Sand_Key_Deep_2002, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_2002_snapper_biomass <- summarise_at(Sand_Key_Deep_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2002_snapper_biomass$Year <- ('2002')
Sand_Key_Deep_2002_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2002_grouper <- merge(Sand_Key_Deep_2002, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_2002_grouper_biomass <- summarise_at(Sand_Key_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2002_grouper_biomass$Year <- ('2002')
Sand_Key_Deep_2002_grouper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2003 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2003.xls")

Sand_Key_Deep_2003_snapper <- merge(Sand_Key_Deep_2003, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_2003_snapper_biomass <- summarise_at(Sand_Key_Deep_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2003_snapper_biomass$Year <- ('2003')
Sand_Key_Deep_2003_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2003_grouper <- merge(Sand_Key_Deep_2003, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_2003_grouper_biomass <- summarise_at(Sand_Key_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2003_grouper_biomass$Year <- ('2003')
Sand_Key_Deep_2003_grouper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2004 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2004.xls")

Sand_Key_Deep_2004_snapper <- merge(Sand_Key_Deep_2004, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_2004_snapper_biomass <- summarise_at(Sand_Key_Deep_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2004_snapper_biomass$Year <- ('2004')
Sand_Key_Deep_2004_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2004_grouper <- merge(Sand_Key_Deep_2004, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_2004_grouper_biomass <- summarise_at(Sand_Key_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2004_grouper_biomass$Year <- ('2004')
Sand_Key_Deep_2004_grouper_biomass$Reef <- ('Sand Key Deep')

Sand_Key_Deep_2005 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2005.xls")

Sand_Key_Deep_2005_snapper <- merge(Sand_Key_Deep_2005, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_2005_snapper_biomass <- summarise_at(Sand_Key_Deep_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2005_snapper_biomass$Year <- ('2005')
Sand_Key_Deep_2005_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2005_grouper <- merge(Sand_Key_Deep_2005, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_2005_grouper_biomass <- summarise_at(Sand_Key_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2005_grouper_biomass$Year <- ('2005')
Sand_Key_Deep_2005_grouper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2006 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2006.xls")

Sand_Key_Deep_2006_snapper <- merge(Sand_Key_Deep_2006, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_2006_snapper_biomass <- summarise_at(Sand_Key_Deep_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2006_snapper_biomass$Year <- ('2006')
Sand_Key_Deep_2006_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2006_grouper <- merge(Sand_Key_Deep_2006, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_2006_grouper_biomass <- summarise_at(Sand_Key_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2006_grouper_biomass$Year <- ('2006')
Sand_Key_Deep_2006_grouper_biomass$Reef <- ('Sand Key Deep')

Sand_Key_Deep_2007 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2007.xls")

Sand_Key_Deep_2007_snapper <- merge(Sand_Key_Deep_2007, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_2007_snapper_biomass <- summarise_at(Sand_Key_Deep_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2007_snapper_biomass$Year <- ('2007')
Sand_Key_Deep_2007_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2007_grouper <- merge(Sand_Key_Deep_2007, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_2007_grouper_biomass <- summarise_at(Sand_Key_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2007_grouper_biomass$Year <- ('2007')
Sand_Key_Deep_2007_grouper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2008 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2008.xls")

Sand_Key_Deep_2008_snapper <- merge(Sand_Key_Deep_2008, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_2008_snapper_biomass <- summarise_at(Sand_Key_Deep_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2008_snapper_biomass$Year <- ('2008')
Sand_Key_Deep_2008_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2008_grouper <- merge(Sand_Key_Deep_2008, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_2008_grouper_biomass <- summarise_at(Sand_Key_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2008_grouper_biomass$Year <- ('2008')
Sand_Key_Deep_2008_grouper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2009 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2009.xls")

Sand_Key_Deep_2009_snapper <- merge(Sand_Key_Deep_2009, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_2009_snapper_biomass <- summarise_at(Sand_Key_Deep_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2009_snapper_biomass$Year <- ('2009')
Sand_Key_Deep_2009_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2009_grouper <- merge(Sand_Key_Deep_2009, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_2009_grouper_biomass <- summarise_at(Sand_Key_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2009_grouper_biomass$Year <- ('2009')
Sand_Key_Deep_2009_grouper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2010 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2010.xls")

Sand_Key_Deep_2010_snapper <- merge(Sand_Key_Deep_2010, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_2010_snapper_biomass <- summarise_at(Sand_Key_Deep_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2010_snapper_biomass$Year <- ('2010')
Sand_Key_Deep_2010_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2010_grouper <- merge(Sand_Key_Deep_2010, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_2010_grouper_biomass <- summarise_at(Sand_Key_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2010_grouper_biomass$Year <- ('2010')
Sand_Key_Deep_2010_grouper_biomass$Reef <- ('Sand Key Deep')

Sand_Key_Deep_2011 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2011.xls")

Sand_Key_Deep_2011_snapper <- merge(Sand_Key_Deep_2011, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_2011_snapper_biomass <- summarise_at(Sand_Key_Deep_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2011_snapper_biomass$Year <- ('2011')
Sand_Key_Deep_2011_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2011_grouper <- merge(Sand_Key_Deep_2011, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_2011_grouper_biomass <- summarise_at(Sand_Key_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2011_grouper_biomass$Year <- ('2011')
Sand_Key_Deep_2011_grouper_biomass$Reef <- ('Sand Key Deep')



Sand_Key_Deep_2012 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2012.xls")

Sand_Key_Deep_2012_snapper <- merge(Sand_Key_Deep_2012, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_2012_snapper_biomass <- summarise_at(Sand_Key_Deep_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2012_snapper_biomass$Year <- ('2012')
Sand_Key_Deep_2012_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2012_grouper <- merge(Sand_Key_Deep_2012, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_2012_grouper_biomass <- summarise_at(Sand_Key_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2012_grouper_biomass$Year <- ('2012')
Sand_Key_Deep_2012_grouper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2014 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2014.xls")

Sand_Key_Deep_2014_snapper <- merge(Sand_Key_Deep_2014, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_2014_snapper_biomass <- summarise_at(Sand_Key_Deep_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2014_snapper_biomass$Year <- ('2014')
Sand_Key_Deep_2014_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2014_grouper <- merge(Sand_Key_Deep_2014, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_2014_grouper_biomass <- summarise_at(Sand_Key_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2014_grouper_biomass$Year <- ('2014')
Sand_Key_Deep_2014_grouper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2016 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2016.xls")

Sand_Key_Deep_2016_snapper <- merge(Sand_Key_Deep_2016, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_2016_snapper_biomass <- summarise_at(Sand_Key_Deep_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2016_snapper_biomass$Year <- ('2016')
Sand_Key_Deep_2016_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2016_grouper <- merge(Sand_Key_Deep_2016, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_2016_grouper_biomass <- summarise_at(Sand_Key_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2016_grouper_biomass$Year <- ('2016')
Sand_Key_Deep_2016_grouper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2018 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2018.xls")

Sand_Key_Deep_2018_snapper <- merge(Sand_Key_Deep_2018, snapper, by = c("SPECIES_CD"))
Sand_Key_Deep_2018_snapper_biomass <- summarise_at(Sand_Key_Deep_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2018_snapper_biomass$Year <- ('2018')
Sand_Key_Deep_2018_snapper_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2018_grouper <- merge(Sand_Key_Deep_2018, grouper, by = c("SPECIES_CD"))
Sand_Key_Deep_2018_grouper_biomass <- summarise_at(Sand_Key_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2018_grouper_biomass$Year <- ('2018')
Sand_Key_Deep_2018_grouper_biomass$Reef <- ('Sand Key Deep')



### Combine all years together for snapper_ and grouper_ seperately



Sand_Key_Deep_snapper_1 <- rbind(Sand_Key_Deep_1999_snapper_biomass,Sand_Key_Deep_2000_snapper_biomass)
Sand_Key_Deep_snapper_2 <- rbind(Sand_Key_Deep_snapper_1,Sand_Key_Deep_2001_snapper_biomass)
Sand_Key_Deep_snapper_3 <- rbind(Sand_Key_Deep_snapper_2,Sand_Key_Deep_2002_snapper_biomass)
Sand_Key_Deep_snapper_4 <- rbind(Sand_Key_Deep_snapper_3,Sand_Key_Deep_2003_snapper_biomass)
Sand_Key_Deep_snapper_5 <- rbind(Sand_Key_Deep_snapper_4,Sand_Key_Deep_2004_snapper_biomass)
Sand_Key_Deep_snapper_6 <- rbind(Sand_Key_Deep_snapper_5,Sand_Key_Deep_2005_snapper_biomass)
Sand_Key_Deep_snapper_7 <- rbind(Sand_Key_Deep_snapper_6,Sand_Key_Deep_2006_snapper_biomass)
Sand_Key_Deep_snapper_8 <- rbind(Sand_Key_Deep_snapper_7,Sand_Key_Deep_2007_snapper_biomass)
Sand_Key_Deep_snapper_9 <- rbind(Sand_Key_Deep_snapper_8,Sand_Key_Deep_2008_snapper_biomass)
Sand_Key_Deep_snapper_10 <- rbind(Sand_Key_Deep_snapper_9,Sand_Key_Deep_2009_snapper_biomass)
Sand_Key_Deep_snapper_11<- rbind(Sand_Key_Deep_snapper_10,Sand_Key_Deep_2010_snapper_biomass)
Sand_Key_Deep_snapper_12 <- rbind(Sand_Key_Deep_snapper_11,Sand_Key_Deep_2011_snapper_biomass)
Sand_Key_Deep_snapper_13 <- rbind(Sand_Key_Deep_snapper_12,Sand_Key_Deep_2012_snapper_biomass)
Sand_Key_Deep_snapper_14 <- rbind(Sand_Key_Deep_snapper_13,Sand_Key_Deep_2014_snapper_biomass)
Sand_Key_Deep_snapper_15 <- rbind(Sand_Key_Deep_snapper_14,Sand_Key_Deep_2016_snapper_biomass)
Sand_Key_Deep_snapper_biomass_data_combined <- rbind(Sand_Key_Deep_snapper_15,Sand_Key_Deep_2018_snapper_biomass)



Sand_Key_Deep_grouper_1 <- rbind(Sand_Key_Deep_1999_grouper_biomass,Sand_Key_Deep_2000_grouper_biomass)
Sand_Key_Deep_grouper_2 <- rbind(Sand_Key_Deep_grouper_1,Sand_Key_Deep_2001_grouper_biomass)
Sand_Key_Deep_grouper_3 <- rbind(Sand_Key_Deep_grouper_2,Sand_Key_Deep_2002_grouper_biomass)
Sand_Key_Deep_grouper_4 <- rbind(Sand_Key_Deep_grouper_3,Sand_Key_Deep_2003_grouper_biomass)
Sand_Key_Deep_grouper_5 <- rbind(Sand_Key_Deep_grouper_4,Sand_Key_Deep_2004_grouper_biomass)
Sand_Key_Deep_grouper_6 <- rbind(Sand_Key_Deep_grouper_5,Sand_Key_Deep_2005_grouper_biomass)
Sand_Key_Deep_grouper_7 <- rbind(Sand_Key_Deep_grouper_6,Sand_Key_Deep_2006_grouper_biomass)
Sand_Key_Deep_grouper_8 <- rbind(Sand_Key_Deep_grouper_7,Sand_Key_Deep_2007_grouper_biomass)
Sand_Key_Deep_grouper_9 <- rbind(Sand_Key_Deep_grouper_8,Sand_Key_Deep_2008_grouper_biomass)
Sand_Key_Deep_grouper_10 <- rbind(Sand_Key_Deep_grouper_9,Sand_Key_Deep_2009_grouper_biomass)
Sand_Key_Deep_grouper_11<- rbind(Sand_Key_Deep_grouper_10,Sand_Key_Deep_2010_grouper_biomass)
Sand_Key_Deep_grouper_12 <- rbind(Sand_Key_Deep_grouper_11,Sand_Key_Deep_2011_grouper_biomass)
Sand_Key_Deep_grouper_13 <- rbind(Sand_Key_Deep_grouper_12,Sand_Key_Deep_2012_grouper_biomass)
Sand_Key_Deep_grouper_14 <- rbind(Sand_Key_Deep_grouper_13,Sand_Key_Deep_2014_grouper_biomass)
Sand_Key_Deep_grouper_15 <- rbind(Sand_Key_Deep_grouper_14,Sand_Key_Deep_2016_grouper_biomass)
Sand_Key_Deep_grouper_biomass_data_combined <- rbind(Sand_Key_Deep_grouper_15,Sand_Key_Deep_2018_grouper_biomass)



export(Sand_Key_Deep_snapper_biomass_data_combined, "Sand_Key_Deep/data/Sand_Key_Deep_snapper__biomass.csv")
export(Sand_Key_Deep_grouper_biomass_data_combined, "Sand_Key_Deep/data/Sand_Key_Deep_grouper__biomass.csv")





# Sand Key Shallow

Sand_Key_Shallow_1999 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_1999.xls")


Sand_Key_Shallow_1999_snapper <- merge(Sand_Key_Shallow_1999, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_1999_snapper_biomass <- summarise_at(Sand_Key_Shallow_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_1999_snapper_biomass$Year <- ('1999')
Sand_Key_Shallow_1999_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_1999_grouper <- merge(Sand_Key_Shallow_1999, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_1999_grouper_biomass <- summarise_at(Sand_Key_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_1999_grouper_biomass$Year <- ('1999')
Sand_Key_Shallow_1999_grouper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2000 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2000.xls")

Sand_Key_Shallow_2000_snapper <- merge(Sand_Key_Shallow_2000, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2000_snapper_biomass <- summarise_at(Sand_Key_Shallow_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2000_snapper_biomass$Year <- ('2000')
Sand_Key_Shallow_2000_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2000_grouper <- merge(Sand_Key_Shallow_2000, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2000_grouper_biomass <- summarise_at(Sand_Key_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2000_grouper_biomass$Year <- ('2000')
Sand_Key_Shallow_2000_grouper_biomass$Reef <- ('Sand Key Shallow')

Sand_Key_Shallow_2001 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2001.xls")

Sand_Key_Shallow_2001_snapper <- merge(Sand_Key_Shallow_2001, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2001_snapper_biomass <- summarise_at(Sand_Key_Shallow_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2001_snapper_biomass$Year <- ('2001')
Sand_Key_Shallow_2001_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2001_grouper <- merge(Sand_Key_Shallow_2001, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2001_grouper_biomass <- summarise_at(Sand_Key_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2001_grouper_biomass$Year <- ('2001')
Sand_Key_Shallow_2001_grouper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2002 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2002.xls")

Sand_Key_Shallow_2002_snapper <- merge(Sand_Key_Shallow_2002, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2002_snapper_biomass <- summarise_at(Sand_Key_Shallow_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2002_snapper_biomass$Year <- ('2002')
Sand_Key_Shallow_2002_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2002_grouper <- merge(Sand_Key_Shallow_2002, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2002_grouper_biomass <- summarise_at(Sand_Key_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2002_grouper_biomass$Year <- ('2002')
Sand_Key_Shallow_2002_grouper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2003 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2003.xls")

Sand_Key_Shallow_2003_snapper <- merge(Sand_Key_Shallow_2003, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2003_snapper_biomass <- summarise_at(Sand_Key_Shallow_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2003_snapper_biomass$Year <- ('2003')
Sand_Key_Shallow_2003_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2003_grouper <- merge(Sand_Key_Shallow_2003, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2003_grouper_biomass <- summarise_at(Sand_Key_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2003_grouper_biomass$Year <- ('2003')
Sand_Key_Shallow_2003_grouper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2004 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2004.xls")

Sand_Key_Shallow_2004_snapper <- merge(Sand_Key_Shallow_2004, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2004_snapper_biomass <- summarise_at(Sand_Key_Shallow_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2004_snapper_biomass$Year <- ('2004')
Sand_Key_Shallow_2004_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2004_grouper <- merge(Sand_Key_Shallow_2004, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2004_grouper_biomass <- summarise_at(Sand_Key_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2004_grouper_biomass$Year <- ('2004')
Sand_Key_Shallow_2004_grouper_biomass$Reef <- ('Sand Key Shallow')

Sand_Key_Shallow_2005 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2005.xls")

Sand_Key_Shallow_2005_snapper <- merge(Sand_Key_Shallow_2005, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2005_snapper_biomass <- summarise_at(Sand_Key_Shallow_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2005_snapper_biomass$Year <- ('2005')
Sand_Key_Shallow_2005_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2005_grouper <- merge(Sand_Key_Shallow_2005, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2005_grouper_biomass <- summarise_at(Sand_Key_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2005_grouper_biomass$Year <- ('2005')
Sand_Key_Shallow_2005_grouper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2006 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2006.xls")

Sand_Key_Shallow_2006_snapper <- merge(Sand_Key_Shallow_2006, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2006_snapper_biomass <- summarise_at(Sand_Key_Shallow_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2006_snapper_biomass$Year <- ('2006')
Sand_Key_Shallow_2006_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2006_grouper <- merge(Sand_Key_Shallow_2006, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2006_grouper_biomass <- summarise_at(Sand_Key_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2006_grouper_biomass$Year <- ('2006')
Sand_Key_Shallow_2006_grouper_biomass$Reef <- ('Sand Key Shallow')

Sand_Key_Shallow_2007 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2007.xls")

Sand_Key_Shallow_2007_snapper <- merge(Sand_Key_Shallow_2007, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2007_snapper_biomass <- summarise_at(Sand_Key_Shallow_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2007_snapper_biomass$Year <- ('2007')
Sand_Key_Shallow_2007_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2007_grouper <- merge(Sand_Key_Shallow_2007, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2007_grouper_biomass <- summarise_at(Sand_Key_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2007_grouper_biomass$Year <- ('2007')
Sand_Key_Shallow_2007_grouper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2008 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2008.xls")

Sand_Key_Shallow_2008_snapper <- merge(Sand_Key_Shallow_2008, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2008_snapper_biomass <- summarise_at(Sand_Key_Shallow_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2008_snapper_biomass$Year <- ('2008')
Sand_Key_Shallow_2008_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2008_grouper <- merge(Sand_Key_Shallow_2008, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2008_grouper_biomass <- summarise_at(Sand_Key_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2008_grouper_biomass$Year <- ('2008')
Sand_Key_Shallow_2008_grouper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2009 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2009.xls")

Sand_Key_Shallow_2009_snapper <- merge(Sand_Key_Shallow_2009, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2009_snapper_biomass <- summarise_at(Sand_Key_Shallow_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2009_snapper_biomass$Year <- ('2009')
Sand_Key_Shallow_2009_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2009_grouper <- merge(Sand_Key_Shallow_2009, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2009_grouper_biomass <- summarise_at(Sand_Key_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2009_grouper_biomass$Year <- ('2009')
Sand_Key_Shallow_2009_grouper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2010 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2010.xls")

Sand_Key_Shallow_2010_snapper <- merge(Sand_Key_Shallow_2010, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2010_snapper_biomass <- summarise_at(Sand_Key_Shallow_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2010_snapper_biomass$Year <- ('2010')
Sand_Key_Shallow_2010_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2010_grouper <- merge(Sand_Key_Shallow_2010, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2010_grouper_biomass <- summarise_at(Sand_Key_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2010_grouper_biomass$Year <- ('2010')
Sand_Key_Shallow_2010_grouper_biomass$Reef <- ('Sand Key Shallow')

Sand_Key_Shallow_2011 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2011.xls")

Sand_Key_Shallow_2011_snapper <- merge(Sand_Key_Shallow_2011, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2011_snapper_biomass <- summarise_at(Sand_Key_Shallow_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2011_snapper_biomass$Year <- ('2011')
Sand_Key_Shallow_2011_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2011_grouper <- merge(Sand_Key_Shallow_2011, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2011_grouper_biomass <- summarise_at(Sand_Key_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2011_grouper_biomass$Year <- ('2011')
Sand_Key_Shallow_2011_grouper_biomass$Reef <- ('Sand Key Shallow')



Sand_Key_Shallow_2012 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2012.xls")

Sand_Key_Shallow_2012_snapper <- merge(Sand_Key_Shallow_2012, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2012_snapper_biomass <- summarise_at(Sand_Key_Shallow_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2012_snapper_biomass$Year <- ('2012')
Sand_Key_Shallow_2012_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2012_grouper <- merge(Sand_Key_Shallow_2012, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2012_grouper_biomass <- summarise_at(Sand_Key_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2012_grouper_biomass$Year <- ('2012')
Sand_Key_Shallow_2012_grouper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2014 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2014.xls")

Sand_Key_Shallow_2014_snapper <- merge(Sand_Key_Shallow_2014, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2014_snapper_biomass <- summarise_at(Sand_Key_Shallow_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2014_snapper_biomass$Year <- ('2014')
Sand_Key_Shallow_2014_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2014_grouper <- merge(Sand_Key_Shallow_2014, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2014_grouper_biomass <- summarise_at(Sand_Key_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2014_grouper_biomass$Year <- ('2014')
Sand_Key_Shallow_2014_grouper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2016 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2016.xls")

Sand_Key_Shallow_2016_snapper <- merge(Sand_Key_Shallow_2016, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2016_snapper_biomass <- summarise_at(Sand_Key_Shallow_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2016_snapper_biomass$Year <- ('2016')
Sand_Key_Shallow_2016_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2016_grouper <- merge(Sand_Key_Shallow_2016, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2016_grouper_biomass <- summarise_at(Sand_Key_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2016_grouper_biomass$Year <- ('2016')
Sand_Key_Shallow_2016_grouper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2018 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2018.xls")

Sand_Key_Shallow_2018_snapper <- merge(Sand_Key_Shallow_2018, snapper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2018_snapper_biomass <- summarise_at(Sand_Key_Shallow_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2018_snapper_biomass$Year <- ('2018')
Sand_Key_Shallow_2018_snapper_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2018_grouper <- merge(Sand_Key_Shallow_2018, grouper, by = c("SPECIES_CD"))
Sand_Key_Shallow_2018_grouper_biomass <- summarise_at(Sand_Key_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2018_grouper_biomass$Year <- ('2018')
Sand_Key_Shallow_2018_grouper_biomass$Reef <- ('Sand Key Shallow')



### Combine all years together for snapper_ and grouper_ seperately



Sand_Key_Shallow_snapper_1 <- rbind(Sand_Key_Shallow_1999_snapper_biomass,Sand_Key_Shallow_2000_snapper_biomass)
Sand_Key_Shallow_snapper_2 <- rbind(Sand_Key_Shallow_snapper_1,Sand_Key_Shallow_2001_snapper_biomass)
Sand_Key_Shallow_snapper_3 <- rbind(Sand_Key_Shallow_snapper_2,Sand_Key_Shallow_2002_snapper_biomass)
Sand_Key_Shallow_snapper_4 <- rbind(Sand_Key_Shallow_snapper_3,Sand_Key_Shallow_2003_snapper_biomass)
Sand_Key_Shallow_snapper_5 <- rbind(Sand_Key_Shallow_snapper_4,Sand_Key_Shallow_2004_snapper_biomass)
Sand_Key_Shallow_snapper_6 <- rbind(Sand_Key_Shallow_snapper_5,Sand_Key_Shallow_2005_snapper_biomass)
Sand_Key_Shallow_snapper_7 <- rbind(Sand_Key_Shallow_snapper_6,Sand_Key_Shallow_2006_snapper_biomass)
Sand_Key_Shallow_snapper_8 <- rbind(Sand_Key_Shallow_snapper_7,Sand_Key_Shallow_2007_snapper_biomass)
Sand_Key_Shallow_snapper_9 <- rbind(Sand_Key_Shallow_snapper_8,Sand_Key_Shallow_2008_snapper_biomass)
Sand_Key_Shallow_snapper_10 <- rbind(Sand_Key_Shallow_snapper_9,Sand_Key_Shallow_2009_snapper_biomass)
Sand_Key_Shallow_snapper_11<- rbind(Sand_Key_Shallow_snapper_10,Sand_Key_Shallow_2010_snapper_biomass)
Sand_Key_Shallow_snapper_12 <- rbind(Sand_Key_Shallow_snapper_11,Sand_Key_Shallow_2011_snapper_biomass)
Sand_Key_Shallow_snapper_13 <- rbind(Sand_Key_Shallow_snapper_12,Sand_Key_Shallow_2012_snapper_biomass)
Sand_Key_Shallow_snapper_14 <- rbind(Sand_Key_Shallow_snapper_13,Sand_Key_Shallow_2014_snapper_biomass)
Sand_Key_Shallow_snapper_15 <- rbind(Sand_Key_Shallow_snapper_14,Sand_Key_Shallow_2016_snapper_biomass)
Sand_Key_Shallow_snapper_biomass_data_combined <- rbind(Sand_Key_Shallow_snapper_15,Sand_Key_Shallow_2018_snapper_biomass)



Sand_Key_Shallow_grouper_1 <- rbind(Sand_Key_Shallow_1999_grouper_biomass,Sand_Key_Shallow_2000_grouper_biomass)
Sand_Key_Shallow_grouper_2 <- rbind(Sand_Key_Shallow_grouper_1,Sand_Key_Shallow_2001_grouper_biomass)
Sand_Key_Shallow_grouper_3 <- rbind(Sand_Key_Shallow_grouper_2,Sand_Key_Shallow_2002_grouper_biomass)
Sand_Key_Shallow_grouper_4 <- rbind(Sand_Key_Shallow_grouper_3,Sand_Key_Shallow_2003_grouper_biomass)
Sand_Key_Shallow_grouper_5 <- rbind(Sand_Key_Shallow_grouper_4,Sand_Key_Shallow_2004_grouper_biomass)
Sand_Key_Shallow_grouper_6 <- rbind(Sand_Key_Shallow_grouper_5,Sand_Key_Shallow_2005_grouper_biomass)
Sand_Key_Shallow_grouper_7 <- rbind(Sand_Key_Shallow_grouper_6,Sand_Key_Shallow_2006_grouper_biomass)
Sand_Key_Shallow_grouper_8 <- rbind(Sand_Key_Shallow_grouper_7,Sand_Key_Shallow_2007_grouper_biomass)
Sand_Key_Shallow_grouper_9 <- rbind(Sand_Key_Shallow_grouper_8,Sand_Key_Shallow_2008_grouper_biomass)
Sand_Key_Shallow_grouper_10 <- rbind(Sand_Key_Shallow_grouper_9,Sand_Key_Shallow_2009_grouper_biomass)
Sand_Key_Shallow_grouper_11<- rbind(Sand_Key_Shallow_grouper_10,Sand_Key_Shallow_2010_grouper_biomass)
Sand_Key_Shallow_grouper_12 <- rbind(Sand_Key_Shallow_grouper_11,Sand_Key_Shallow_2011_grouper_biomass)
Sand_Key_Shallow_grouper_13 <- rbind(Sand_Key_Shallow_grouper_12,Sand_Key_Shallow_2012_grouper_biomass)
Sand_Key_Shallow_grouper_14 <- rbind(Sand_Key_Shallow_grouper_13,Sand_Key_Shallow_2014_grouper_biomass)
Sand_Key_Shallow_grouper_15 <- rbind(Sand_Key_Shallow_grouper_14,Sand_Key_Shallow_2016_grouper_biomass)
Sand_Key_Shallow_grouper_biomass_data_combined <- rbind(Sand_Key_Shallow_grouper_15,Sand_Key_Shallow_2018_grouper_biomass)



export(Sand_Key_Shallow_snapper_biomass_data_combined, "Sand_Key_Shallow/data/Sand_Key_Shallow_snapper__biomass.csv")
export(Sand_Key_Shallow_grouper_biomass_data_combined, "Sand_Key_Shallow/data/Sand_Key_Shallow_grouper__biomass.csv")



# West Washer Woman

West_Washer_Woman_1999 <- import("West_Washer_Woman/data/West_Washer_1999.xls")


West_Washer_Woman_1999_snapper <- merge(West_Washer_Woman_1999, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_1999_snapper_biomass <- summarise_at(West_Washer_Woman_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_1999_snapper_biomass$Year <- ('1999')
West_Washer_Woman_1999_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_1999_grouper <- merge(West_Washer_Woman_1999, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_1999_grouper_biomass <- summarise_at(West_Washer_Woman_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_1999_grouper_biomass$Year <- ('1999')
West_Washer_Woman_1999_grouper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2000 <- import("West_Washer_Woman/data/West_Washer_2000.xls")

West_Washer_Woman_2000_snapper <- merge(West_Washer_Woman_2000, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_2000_snapper_biomass <- summarise_at(West_Washer_Woman_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2000_snapper_biomass$Year <- ('2000')
West_Washer_Woman_2000_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2000_grouper <- merge(West_Washer_Woman_2000, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_2000_grouper_biomass <- summarise_at(West_Washer_Woman_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2000_grouper_biomass$Year <- ('2000')
West_Washer_Woman_2000_grouper_biomass$Reef <- ('West Washer Woman')

West_Washer_Woman_2001 <- import("West_Washer_Woman/data/West_Washer_2001.xls")

West_Washer_Woman_2001_snapper <- merge(West_Washer_Woman_2001, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_2001_snapper_biomass <- summarise_at(West_Washer_Woman_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2001_snapper_biomass$Year <- ('2001')
West_Washer_Woman_2001_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2001_grouper <- merge(West_Washer_Woman_2001, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_2001_grouper_biomass <- summarise_at(West_Washer_Woman_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2001_grouper_biomass$Year <- ('2001')
West_Washer_Woman_2001_grouper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2002 <- import("West_Washer_Woman/data/West_Washer_2002.xls")

West_Washer_Woman_2002_snapper <- merge(West_Washer_Woman_2002, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_2002_snapper_biomass <- summarise_at(West_Washer_Woman_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2002_snapper_biomass$Year <- ('2002')
West_Washer_Woman_2002_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2002_grouper <- merge(West_Washer_Woman_2002, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_2002_grouper_biomass <- summarise_at(West_Washer_Woman_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2002_grouper_biomass$Year <- ('2002')
West_Washer_Woman_2002_grouper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2003 <- import("West_Washer_Woman/data/West_Washer_2003.xls")

West_Washer_Woman_2003_snapper <- merge(West_Washer_Woman_2003, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_2003_snapper_biomass <- summarise_at(West_Washer_Woman_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2003_snapper_biomass$Year <- ('2003')
West_Washer_Woman_2003_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2003_grouper <- merge(West_Washer_Woman_2003, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_2003_grouper_biomass <- summarise_at(West_Washer_Woman_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2003_grouper_biomass$Year <- ('2003')
West_Washer_Woman_2003_grouper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2004 <- import("West_Washer_Woman/data/West_Washer_2004.xls")

West_Washer_Woman_2004_snapper <- merge(West_Washer_Woman_2004, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_2004_snapper_biomass <- summarise_at(West_Washer_Woman_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2004_snapper_biomass$Year <- ('2004')
West_Washer_Woman_2004_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2004_grouper <- merge(West_Washer_Woman_2004, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_2004_grouper_biomass <- summarise_at(West_Washer_Woman_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2004_grouper_biomass$Year <- ('2004')
West_Washer_Woman_2004_grouper_biomass$Reef <- ('West Washer Woman')

West_Washer_Woman_2005 <- import("West_Washer_Woman/data/West_Washer_2005.xls")

West_Washer_Woman_2005_snapper <- merge(West_Washer_Woman_2005, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_2005_snapper_biomass <- summarise_at(West_Washer_Woman_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2005_snapper_biomass$Year <- ('2005')
West_Washer_Woman_2005_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2005_grouper <- merge(West_Washer_Woman_2005, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_2005_grouper_biomass <- summarise_at(West_Washer_Woman_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2005_grouper_biomass$Year <- ('2005')
West_Washer_Woman_2005_grouper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2006 <- import("West_Washer_Woman/data/West_Washer_2006.xls")

West_Washer_Woman_2006_snapper <- merge(West_Washer_Woman_2006, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_2006_snapper_biomass <- summarise_at(West_Washer_Woman_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2006_snapper_biomass$Year <- ('2006')
West_Washer_Woman_2006_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2006_grouper <- merge(West_Washer_Woman_2006, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_2006_grouper_biomass <- summarise_at(West_Washer_Woman_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2006_grouper_biomass$Year <- ('2006')
West_Washer_Woman_2006_grouper_biomass$Reef <- ('West Washer Woman')

West_Washer_Woman_2007 <- import("West_Washer_Woman/data/West_Washer_2007.xls")

West_Washer_Woman_2007_snapper <- merge(West_Washer_Woman_2007, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_2007_snapper_biomass <- summarise_at(West_Washer_Woman_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2007_snapper_biomass$Year <- ('2007')
West_Washer_Woman_2007_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2007_grouper <- merge(West_Washer_Woman_2007, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_2007_grouper_biomass <- summarise_at(West_Washer_Woman_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2007_grouper_biomass$Year <- ('2007')
West_Washer_Woman_2007_grouper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2008 <- import("West_Washer_Woman/data/West_Washer_2008.xls")

West_Washer_Woman_2008_snapper <- merge(West_Washer_Woman_2008, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_2008_snapper_biomass <- summarise_at(West_Washer_Woman_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2008_snapper_biomass$Year <- ('2008')
West_Washer_Woman_2008_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2008_grouper <- merge(West_Washer_Woman_2008, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_2008_grouper_biomass <- summarise_at(West_Washer_Woman_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2008_grouper_biomass$Year <- ('2008')
West_Washer_Woman_2008_grouper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2009 <- import("West_Washer_Woman/data/West_Washer_2009.xls")

West_Washer_Woman_2009_snapper <- merge(West_Washer_Woman_2009, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_2009_snapper_biomass <- summarise_at(West_Washer_Woman_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2009_snapper_biomass$Year <- ('2009')
West_Washer_Woman_2009_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2009_grouper <- merge(West_Washer_Woman_2009, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_2009_grouper_biomass <- summarise_at(West_Washer_Woman_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2009_grouper_biomass$Year <- ('2009')
West_Washer_Woman_2009_grouper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2010 <- import("West_Washer_Woman/data/West_Washer_2010.xls")

West_Washer_Woman_2010_snapper <- merge(West_Washer_Woman_2010, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_2010_snapper_biomass <- summarise_at(West_Washer_Woman_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2010_snapper_biomass$Year <- ('2010')
West_Washer_Woman_2010_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2010_grouper <- merge(West_Washer_Woman_2010, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_2010_grouper_biomass <- summarise_at(West_Washer_Woman_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2010_grouper_biomass$Year <- ('2010')
West_Washer_Woman_2010_grouper_biomass$Reef <- ('West Washer Woman')

West_Washer_Woman_2011 <- import("West_Washer_Woman/data/West_Washer_2011.xls")

West_Washer_Woman_2011_snapper <- merge(West_Washer_Woman_2011, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_2011_snapper_biomass <- summarise_at(West_Washer_Woman_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2011_snapper_biomass$Year <- ('2011')
West_Washer_Woman_2011_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2011_grouper <- merge(West_Washer_Woman_2011, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_2011_grouper_biomass <- summarise_at(West_Washer_Woman_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2011_grouper_biomass$Year <- ('2011')
West_Washer_Woman_2011_grouper_biomass$Reef <- ('West Washer Woman')



West_Washer_Woman_2012 <- import("West_Washer_Woman/data/West_Washer_2012.xls")

West_Washer_Woman_2012_snapper <- merge(West_Washer_Woman_2012, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_2012_snapper_biomass <- summarise_at(West_Washer_Woman_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2012_snapper_biomass$Year <- ('2012')
West_Washer_Woman_2012_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2012_grouper <- merge(West_Washer_Woman_2012, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_2012_grouper_biomass <- summarise_at(West_Washer_Woman_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2012_grouper_biomass$Year <- ('2012')
West_Washer_Woman_2012_grouper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2014 <- import("West_Washer_Woman/data/West_Washer_2014.xls")

West_Washer_Woman_2014_snapper <- merge(West_Washer_Woman_2014, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_2014_snapper_biomass <- summarise_at(West_Washer_Woman_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2014_snapper_biomass$Year <- ('2014')
West_Washer_Woman_2014_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2014_grouper <- merge(West_Washer_Woman_2014, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_2014_grouper_biomass <- summarise_at(West_Washer_Woman_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2014_grouper_biomass$Year <- ('2014')
West_Washer_Woman_2014_grouper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2016 <- import("West_Washer_Woman/data/West_Washer_2016.xls")

West_Washer_Woman_2016_snapper <- merge(West_Washer_Woman_2016, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_2016_snapper_biomass <- summarise_at(West_Washer_Woman_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2016_snapper_biomass$Year <- ('2016')
West_Washer_Woman_2016_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2016_grouper <- merge(West_Washer_Woman_2016, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_2016_grouper_biomass <- summarise_at(West_Washer_Woman_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2016_grouper_biomass$Year <- ('2016')
West_Washer_Woman_2016_grouper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2018 <- import("West_Washer_Woman/data/West_Washer_2018.xls")

West_Washer_Woman_2018_snapper <- merge(West_Washer_Woman_2018, snapper, by = c("SPECIES_CD"))
West_Washer_Woman_2018_snapper_biomass <- summarise_at(West_Washer_Woman_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2018_snapper_biomass$Year <- ('2018')
West_Washer_Woman_2018_snapper_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2018_grouper <- merge(West_Washer_Woman_2018, grouper, by = c("SPECIES_CD"))
West_Washer_Woman_2018_grouper_biomass <- summarise_at(West_Washer_Woman_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2018_grouper_biomass$Year <- ('2018')
West_Washer_Woman_2018_grouper_biomass$Reef <- ('West Washer Woman')



### Combine all years together for snapper_ and grouper_ seperately



West_Washer_Woman_snapper_1 <- rbind(West_Washer_Woman_1999_snapper_biomass,West_Washer_Woman_2000_snapper_biomass)
West_Washer_Woman_snapper_2 <- rbind(West_Washer_Woman_snapper_1,West_Washer_Woman_2001_snapper_biomass)
West_Washer_Woman_snapper_3 <- rbind(West_Washer_Woman_snapper_2,West_Washer_Woman_2002_snapper_biomass)
West_Washer_Woman_snapper_4 <- rbind(West_Washer_Woman_snapper_3,West_Washer_Woman_2003_snapper_biomass)
West_Washer_Woman_snapper_5 <- rbind(West_Washer_Woman_snapper_4,West_Washer_Woman_2004_snapper_biomass)
West_Washer_Woman_snapper_6 <- rbind(West_Washer_Woman_snapper_5,West_Washer_Woman_2005_snapper_biomass)
West_Washer_Woman_snapper_7 <- rbind(West_Washer_Woman_snapper_6,West_Washer_Woman_2006_snapper_biomass)
West_Washer_Woman_snapper_8 <- rbind(West_Washer_Woman_snapper_7,West_Washer_Woman_2007_snapper_biomass)
West_Washer_Woman_snapper_9 <- rbind(West_Washer_Woman_snapper_8,West_Washer_Woman_2008_snapper_biomass)
West_Washer_Woman_snapper_10 <- rbind(West_Washer_Woman_snapper_9,West_Washer_Woman_2009_snapper_biomass)
West_Washer_Woman_snapper_11<- rbind(West_Washer_Woman_snapper_10,West_Washer_Woman_2010_snapper_biomass)
West_Washer_Woman_snapper_12 <- rbind(West_Washer_Woman_snapper_11,West_Washer_Woman_2011_snapper_biomass)
West_Washer_Woman_snapper_13 <- rbind(West_Washer_Woman_snapper_12,West_Washer_Woman_2012_snapper_biomass)
West_Washer_Woman_snapper_14 <- rbind(West_Washer_Woman_snapper_13,West_Washer_Woman_2014_snapper_biomass)
West_Washer_Woman_snapper_15 <- rbind(West_Washer_Woman_snapper_14,West_Washer_Woman_2016_snapper_biomass)
West_Washer_Woman_snapper_biomass_data_combined <- rbind(West_Washer_Woman_snapper_15,West_Washer_Woman_2018_snapper_biomass)



West_Washer_Woman_grouper_1 <- rbind(West_Washer_Woman_1999_grouper_biomass,West_Washer_Woman_2000_grouper_biomass)
West_Washer_Woman_grouper_2 <- rbind(West_Washer_Woman_grouper_1,West_Washer_Woman_2001_grouper_biomass)
West_Washer_Woman_grouper_3 <- rbind(West_Washer_Woman_grouper_2,West_Washer_Woman_2002_grouper_biomass)
West_Washer_Woman_grouper_4 <- rbind(West_Washer_Woman_grouper_3,West_Washer_Woman_2003_grouper_biomass)
West_Washer_Woman_grouper_5 <- rbind(West_Washer_Woman_grouper_4,West_Washer_Woman_2004_grouper_biomass)
West_Washer_Woman_grouper_6 <- rbind(West_Washer_Woman_grouper_5,West_Washer_Woman_2005_grouper_biomass)
West_Washer_Woman_grouper_7 <- rbind(West_Washer_Woman_grouper_6,West_Washer_Woman_2006_grouper_biomass)
West_Washer_Woman_grouper_8 <- rbind(West_Washer_Woman_grouper_7,West_Washer_Woman_2007_grouper_biomass)
West_Washer_Woman_grouper_9 <- rbind(West_Washer_Woman_grouper_8,West_Washer_Woman_2008_grouper_biomass)
West_Washer_Woman_grouper_10 <- rbind(West_Washer_Woman_grouper_9,West_Washer_Woman_2009_grouper_biomass)
West_Washer_Woman_grouper_11<- rbind(West_Washer_Woman_grouper_10,West_Washer_Woman_2010_grouper_biomass)
West_Washer_Woman_grouper_12 <- rbind(West_Washer_Woman_grouper_11,West_Washer_Woman_2011_grouper_biomass)
West_Washer_Woman_grouper_13 <- rbind(West_Washer_Woman_grouper_12,West_Washer_Woman_2012_grouper_biomass)
West_Washer_Woman_grouper_14 <- rbind(West_Washer_Woman_grouper_13,West_Washer_Woman_2014_grouper_biomass)
West_Washer_Woman_grouper_15 <- rbind(West_Washer_Woman_grouper_14,West_Washer_Woman_2016_grouper_biomass)
West_Washer_Woman_grouper_biomass_data_combined <- rbind(West_Washer_Woman_grouper_15,West_Washer_Woman_2018_grouper_biomass)



export(West_Washer_Woman_snapper_biomass_data_combined, "West_Washer_Woman/data/West_Washer_Woman_snapper__biomass.csv")
export(West_Washer_Woman_grouper_biomass_data_combined, "West_Washer_Woman/data/West_Washer_Woman_grouper__biomass.csv")



# Western Sambo Deep

Western_Sambo_Deep_1999 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_1999.xls")


Western_Sambo_Deep_1999_snapper <- merge(Western_Sambo_Deep_1999, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_1999_snapper_biomass <- summarise_at(Western_Sambo_Deep_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_1999_snapper_biomass$Year <- ('1999')
Western_Sambo_Deep_1999_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_1999_grouper <- merge(Western_Sambo_Deep_1999, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_1999_grouper_biomass <- summarise_at(Western_Sambo_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_1999_grouper_biomass$Year <- ('1999')
Western_Sambo_Deep_1999_grouper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2000 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2000.xls")

Western_Sambo_Deep_2000_snapper <- merge(Western_Sambo_Deep_2000, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2000_snapper_biomass <- summarise_at(Western_Sambo_Deep_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2000_snapper_biomass$Year <- ('2000')
Western_Sambo_Deep_2000_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2000_grouper <- merge(Western_Sambo_Deep_2000, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2000_grouper_biomass <- summarise_at(Western_Sambo_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2000_grouper_biomass$Year <- ('2000')
Western_Sambo_Deep_2000_grouper_biomass$Reef <- ('Western Sambo Deep')

Western_Sambo_Deep_2001 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2001.xls")

Western_Sambo_Deep_2001_snapper <- merge(Western_Sambo_Deep_2001, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2001_snapper_biomass <- summarise_at(Western_Sambo_Deep_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2001_snapper_biomass$Year <- ('2001')
Western_Sambo_Deep_2001_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2001_grouper <- merge(Western_Sambo_Deep_2001, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2001_grouper_biomass <- summarise_at(Western_Sambo_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2001_grouper_biomass$Year <- ('2001')
Western_Sambo_Deep_2001_grouper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2002 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2002.xls")

Western_Sambo_Deep_2002_snapper <- merge(Western_Sambo_Deep_2002, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2002_snapper_biomass <- summarise_at(Western_Sambo_Deep_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2002_snapper_biomass$Year <- ('2002')
Western_Sambo_Deep_2002_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2002_grouper <- merge(Western_Sambo_Deep_2002, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2002_grouper_biomass <- summarise_at(Western_Sambo_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2002_grouper_biomass$Year <- ('2002')
Western_Sambo_Deep_2002_grouper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2003 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2003.xls")

Western_Sambo_Deep_2003_snapper <- merge(Western_Sambo_Deep_2003, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2003_snapper_biomass <- summarise_at(Western_Sambo_Deep_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2003_snapper_biomass$Year <- ('2003')
Western_Sambo_Deep_2003_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2003_grouper <- merge(Western_Sambo_Deep_2003, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2003_grouper_biomass <- summarise_at(Western_Sambo_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2003_grouper_biomass$Year <- ('2003')
Western_Sambo_Deep_2003_grouper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2004 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2004.xls")

Western_Sambo_Deep_2004_snapper <- merge(Western_Sambo_Deep_2004, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2004_snapper_biomass <- summarise_at(Western_Sambo_Deep_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2004_snapper_biomass$Year <- ('2004')
Western_Sambo_Deep_2004_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2004_grouper <- merge(Western_Sambo_Deep_2004, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2004_grouper_biomass <- summarise_at(Western_Sambo_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2004_grouper_biomass$Year <- ('2004')
Western_Sambo_Deep_2004_grouper_biomass$Reef <- ('Western Sambo Deep')

Western_Sambo_Deep_2005 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2005.xls")

Western_Sambo_Deep_2005_snapper <- merge(Western_Sambo_Deep_2005, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2005_snapper_biomass <- summarise_at(Western_Sambo_Deep_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2005_snapper_biomass$Year <- ('2005')
Western_Sambo_Deep_2005_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2005_grouper <- merge(Western_Sambo_Deep_2005, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2005_grouper_biomass <- summarise_at(Western_Sambo_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2005_grouper_biomass$Year <- ('2005')
Western_Sambo_Deep_2005_grouper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2006 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2006.xls")

Western_Sambo_Deep_2006_snapper <- merge(Western_Sambo_Deep_2006, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2006_snapper_biomass <- summarise_at(Western_Sambo_Deep_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2006_snapper_biomass$Year <- ('2006')
Western_Sambo_Deep_2006_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2006_grouper <- merge(Western_Sambo_Deep_2006, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2006_grouper_biomass <- summarise_at(Western_Sambo_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2006_grouper_biomass$Year <- ('2006')
Western_Sambo_Deep_2006_grouper_biomass$Reef <- ('Western Sambo Deep')

Western_Sambo_Deep_2007 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2007.xls")

Western_Sambo_Deep_2007_snapper <- merge(Western_Sambo_Deep_2007, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2007_snapper_biomass <- summarise_at(Western_Sambo_Deep_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2007_snapper_biomass$Year <- ('2007')
Western_Sambo_Deep_2007_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2007_grouper <- merge(Western_Sambo_Deep_2007, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2007_grouper_biomass <- summarise_at(Western_Sambo_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2007_grouper_biomass$Year <- ('2007')
Western_Sambo_Deep_2007_grouper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2008 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2008.xls")

Western_Sambo_Deep_2008_snapper <- merge(Western_Sambo_Deep_2008, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2008_snapper_biomass <- summarise_at(Western_Sambo_Deep_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2008_snapper_biomass$Year <- ('2008')
Western_Sambo_Deep_2008_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2008_grouper <- merge(Western_Sambo_Deep_2008, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2008_grouper_biomass <- summarise_at(Western_Sambo_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2008_grouper_biomass$Year <- ('2008')
Western_Sambo_Deep_2008_grouper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2009 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2009.xls")

Western_Sambo_Deep_2009_snapper <- merge(Western_Sambo_Deep_2009, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2009_snapper_biomass <- summarise_at(Western_Sambo_Deep_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2009_snapper_biomass$Year <- ('2009')
Western_Sambo_Deep_2009_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2009_grouper <- merge(Western_Sambo_Deep_2009, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2009_grouper_biomass <- summarise_at(Western_Sambo_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2009_grouper_biomass$Year <- ('2009')
Western_Sambo_Deep_2009_grouper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2010 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2010.xls")

Western_Sambo_Deep_2010_snapper <- merge(Western_Sambo_Deep_2010, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2010_snapper_biomass <- summarise_at(Western_Sambo_Deep_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2010_snapper_biomass$Year <- ('2010')
Western_Sambo_Deep_2010_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2010_grouper <- merge(Western_Sambo_Deep_2010, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2010_grouper_biomass <- summarise_at(Western_Sambo_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2010_grouper_biomass$Year <- ('2010')
Western_Sambo_Deep_2010_grouper_biomass$Reef <- ('Western Sambo Deep')

Western_Sambo_Deep_2011 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2011.xls")

Western_Sambo_Deep_2011_snapper <- merge(Western_Sambo_Deep_2011, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2011_snapper_biomass <- summarise_at(Western_Sambo_Deep_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2011_snapper_biomass$Year <- ('2011')
Western_Sambo_Deep_2011_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2011_grouper <- merge(Western_Sambo_Deep_2011, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2011_grouper_biomass <- summarise_at(Western_Sambo_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2011_grouper_biomass$Year <- ('2011')
Western_Sambo_Deep_2011_grouper_biomass$Reef <- ('Western Sambo Deep')



Western_Sambo_Deep_2012 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2012.xls")

Western_Sambo_Deep_2012_snapper <- merge(Western_Sambo_Deep_2012, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2012_snapper_biomass <- summarise_at(Western_Sambo_Deep_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2012_snapper_biomass$Year <- ('2012')
Western_Sambo_Deep_2012_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2012_grouper <- merge(Western_Sambo_Deep_2012, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2012_grouper_biomass <- summarise_at(Western_Sambo_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2012_grouper_biomass$Year <- ('2012')
Western_Sambo_Deep_2012_grouper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2014 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2014.xls")

Western_Sambo_Deep_2014_snapper <- merge(Western_Sambo_Deep_2014, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2014_snapper_biomass <- summarise_at(Western_Sambo_Deep_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2014_snapper_biomass$Year <- ('2014')
Western_Sambo_Deep_2014_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2014_grouper <- merge(Western_Sambo_Deep_2014, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2014_grouper_biomass <- summarise_at(Western_Sambo_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2014_grouper_biomass$Year <- ('2014')
Western_Sambo_Deep_2014_grouper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2016 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2016.xls")

Western_Sambo_Deep_2016_snapper <- merge(Western_Sambo_Deep_2016, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2016_snapper_biomass <- summarise_at(Western_Sambo_Deep_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2016_snapper_biomass$Year <- ('2016')
Western_Sambo_Deep_2016_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2016_grouper <- merge(Western_Sambo_Deep_2016, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2016_grouper_biomass <- summarise_at(Western_Sambo_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2016_grouper_biomass$Year <- ('2016')
Western_Sambo_Deep_2016_grouper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2018 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2018.xls")

Western_Sambo_Deep_2018_snapper <- merge(Western_Sambo_Deep_2018, snapper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2018_snapper_biomass <- summarise_at(Western_Sambo_Deep_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2018_snapper_biomass$Year <- ('2018')
Western_Sambo_Deep_2018_snapper_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2018_grouper <- merge(Western_Sambo_Deep_2018, grouper, by = c("SPECIES_CD"))
Western_Sambo_Deep_2018_grouper_biomass <- summarise_at(Western_Sambo_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2018_grouper_biomass$Year <- ('2018')
Western_Sambo_Deep_2018_grouper_biomass$Reef <- ('Western Sambo Deep')



### Combine all years together for snapper_ and grouper_ seperately



Western_Sambo_Deep_snapper_1 <- rbind(Western_Sambo_Deep_1999_snapper_biomass,Western_Sambo_Deep_2000_snapper_biomass)
Western_Sambo_Deep_snapper_2 <- rbind(Western_Sambo_Deep_snapper_1,Western_Sambo_Deep_2001_snapper_biomass)
Western_Sambo_Deep_snapper_3 <- rbind(Western_Sambo_Deep_snapper_2,Western_Sambo_Deep_2002_snapper_biomass)
Western_Sambo_Deep_snapper_4 <- rbind(Western_Sambo_Deep_snapper_3,Western_Sambo_Deep_2003_snapper_biomass)
Western_Sambo_Deep_snapper_5 <- rbind(Western_Sambo_Deep_snapper_4,Western_Sambo_Deep_2004_snapper_biomass)
Western_Sambo_Deep_snapper_6 <- rbind(Western_Sambo_Deep_snapper_5,Western_Sambo_Deep_2005_snapper_biomass)
Western_Sambo_Deep_snapper_7 <- rbind(Western_Sambo_Deep_snapper_6,Western_Sambo_Deep_2006_snapper_biomass)
Western_Sambo_Deep_snapper_8 <- rbind(Western_Sambo_Deep_snapper_7,Western_Sambo_Deep_2007_snapper_biomass)
Western_Sambo_Deep_snapper_9 <- rbind(Western_Sambo_Deep_snapper_8,Western_Sambo_Deep_2008_snapper_biomass)
Western_Sambo_Deep_snapper_10 <- rbind(Western_Sambo_Deep_snapper_9,Western_Sambo_Deep_2009_snapper_biomass)
Western_Sambo_Deep_snapper_11<- rbind(Western_Sambo_Deep_snapper_10,Western_Sambo_Deep_2010_snapper_biomass)
Western_Sambo_Deep_snapper_12 <- rbind(Western_Sambo_Deep_snapper_11,Western_Sambo_Deep_2011_snapper_biomass)
Western_Sambo_Deep_snapper_13 <- rbind(Western_Sambo_Deep_snapper_12,Western_Sambo_Deep_2012_snapper_biomass)
Western_Sambo_Deep_snapper_14 <- rbind(Western_Sambo_Deep_snapper_13,Western_Sambo_Deep_2014_snapper_biomass)
Western_Sambo_Deep_snapper_15 <- rbind(Western_Sambo_Deep_snapper_14,Western_Sambo_Deep_2016_snapper_biomass)
Western_Sambo_Deep_snapper_biomass_data_combined <- rbind(Western_Sambo_Deep_snapper_15,Western_Sambo_Deep_2018_snapper_biomass)



Western_Sambo_Deep_grouper_1 <- rbind(Western_Sambo_Deep_1999_grouper_biomass,Western_Sambo_Deep_2000_grouper_biomass)
Western_Sambo_Deep_grouper_2 <- rbind(Western_Sambo_Deep_grouper_1,Western_Sambo_Deep_2001_grouper_biomass)
Western_Sambo_Deep_grouper_3 <- rbind(Western_Sambo_Deep_grouper_2,Western_Sambo_Deep_2002_grouper_biomass)
Western_Sambo_Deep_grouper_4 <- rbind(Western_Sambo_Deep_grouper_3,Western_Sambo_Deep_2003_grouper_biomass)
Western_Sambo_Deep_grouper_5 <- rbind(Western_Sambo_Deep_grouper_4,Western_Sambo_Deep_2004_grouper_biomass)
Western_Sambo_Deep_grouper_6 <- rbind(Western_Sambo_Deep_grouper_5,Western_Sambo_Deep_2005_grouper_biomass)
Western_Sambo_Deep_grouper_7 <- rbind(Western_Sambo_Deep_grouper_6,Western_Sambo_Deep_2006_grouper_biomass)
Western_Sambo_Deep_grouper_8 <- rbind(Western_Sambo_Deep_grouper_7,Western_Sambo_Deep_2007_grouper_biomass)
Western_Sambo_Deep_grouper_9 <- rbind(Western_Sambo_Deep_grouper_8,Western_Sambo_Deep_2008_grouper_biomass)
Western_Sambo_Deep_grouper_10 <- rbind(Western_Sambo_Deep_grouper_9,Western_Sambo_Deep_2009_grouper_biomass)
Western_Sambo_Deep_grouper_11<- rbind(Western_Sambo_Deep_grouper_10,Western_Sambo_Deep_2010_grouper_biomass)
Western_Sambo_Deep_grouper_12 <- rbind(Western_Sambo_Deep_grouper_11,Western_Sambo_Deep_2011_grouper_biomass)
Western_Sambo_Deep_grouper_13 <- rbind(Western_Sambo_Deep_grouper_12,Western_Sambo_Deep_2012_grouper_biomass)
Western_Sambo_Deep_grouper_14 <- rbind(Western_Sambo_Deep_grouper_13,Western_Sambo_Deep_2014_grouper_biomass)
Western_Sambo_Deep_grouper_15 <- rbind(Western_Sambo_Deep_grouper_14,Western_Sambo_Deep_2016_grouper_biomass)
Western_Sambo_Deep_grouper_biomass_data_combined <- rbind(Western_Sambo_Deep_grouper_15,Western_Sambo_Deep_2018_grouper_biomass)



export(Western_Sambo_Deep_snapper_biomass_data_combined, "Western_Sambo_Deep/data/Western_Sambo_Deep_snapper__biomass.csv")
export(Western_Sambo_Deep_grouper_biomass_data_combined, "Western_Sambo_Deep/data/Western_Sambo_Deep_grouper__biomass.csv")



# Western Sambo Shallow


Western_Sambo_Shallow_1999 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_1999.xls")


Western_Sambo_Shallow_1999_snapper <- merge(Western_Sambo_Shallow_1999, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_1999_snapper_biomass <- summarise_at(Western_Sambo_Shallow_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_1999_snapper_biomass$Year <- ('1999')
Western_Sambo_Shallow_1999_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_1999_grouper <- merge(Western_Sambo_Shallow_1999, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_1999_grouper_biomass <- summarise_at(Western_Sambo_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_1999_grouper_biomass$Year <- ('1999')
Western_Sambo_Shallow_1999_grouper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2000 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2000.xls")

Western_Sambo_Shallow_2000_snapper <- merge(Western_Sambo_Shallow_2000, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2000_snapper_biomass <- summarise_at(Western_Sambo_Shallow_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2000_snapper_biomass$Year <- ('2000')
Western_Sambo_Shallow_2000_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2000_grouper <- merge(Western_Sambo_Shallow_2000, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2000_grouper_biomass <- summarise_at(Western_Sambo_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2000_grouper_biomass$Year <- ('2000')
Western_Sambo_Shallow_2000_grouper_biomass$Reef <- ('Western Sambo Shallow')

Western_Sambo_Shallow_2001 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2001.xls")

Western_Sambo_Shallow_2001_snapper <- merge(Western_Sambo_Shallow_2001, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2001_snapper_biomass <- summarise_at(Western_Sambo_Shallow_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2001_snapper_biomass$Year <- ('2001')
Western_Sambo_Shallow_2001_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2001_grouper <- merge(Western_Sambo_Shallow_2001, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2001_grouper_biomass <- summarise_at(Western_Sambo_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2001_grouper_biomass$Year <- ('2001')
Western_Sambo_Shallow_2001_grouper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2002 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2002.xls")

Western_Sambo_Shallow_2002_snapper <- merge(Western_Sambo_Shallow_2002, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2002_snapper_biomass <- summarise_at(Western_Sambo_Shallow_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2002_snapper_biomass$Year <- ('2002')
Western_Sambo_Shallow_2002_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2002_grouper <- merge(Western_Sambo_Shallow_2002, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2002_grouper_biomass <- summarise_at(Western_Sambo_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2002_grouper_biomass$Year <- ('2002')
Western_Sambo_Shallow_2002_grouper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2003 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2003.xls")

Western_Sambo_Shallow_2003_snapper <- merge(Western_Sambo_Shallow_2003, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2003_snapper_biomass <- summarise_at(Western_Sambo_Shallow_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2003_snapper_biomass$Year <- ('2003')
Western_Sambo_Shallow_2003_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2003_grouper <- merge(Western_Sambo_Shallow_2003, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2003_grouper_biomass <- summarise_at(Western_Sambo_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2003_grouper_biomass$Year <- ('2003')
Western_Sambo_Shallow_2003_grouper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2004 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2004.xls")

Western_Sambo_Shallow_2004_snapper <- merge(Western_Sambo_Shallow_2004, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2004_snapper_biomass <- summarise_at(Western_Sambo_Shallow_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2004_snapper_biomass$Year <- ('2004')
Western_Sambo_Shallow_2004_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2004_grouper <- merge(Western_Sambo_Shallow_2004, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2004_grouper_biomass <- summarise_at(Western_Sambo_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2004_grouper_biomass$Year <- ('2004')
Western_Sambo_Shallow_2004_grouper_biomass$Reef <- ('Western Sambo Shallow')

Western_Sambo_Shallow_2005 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2005.xls")

Western_Sambo_Shallow_2005_snapper <- merge(Western_Sambo_Shallow_2005, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2005_snapper_biomass <- summarise_at(Western_Sambo_Shallow_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2005_snapper_biomass$Year <- ('2005')
Western_Sambo_Shallow_2005_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2005_grouper <- merge(Western_Sambo_Shallow_2005, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2005_grouper_biomass <- summarise_at(Western_Sambo_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2005_grouper_biomass$Year <- ('2005')
Western_Sambo_Shallow_2005_grouper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2006 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2006.xls")

Western_Sambo_Shallow_2006_snapper <- merge(Western_Sambo_Shallow_2006, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2006_snapper_biomass <- summarise_at(Western_Sambo_Shallow_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2006_snapper_biomass$Year <- ('2006')
Western_Sambo_Shallow_2006_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2006_grouper <- merge(Western_Sambo_Shallow_2006, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2006_grouper_biomass <- summarise_at(Western_Sambo_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2006_grouper_biomass$Year <- ('2006')
Western_Sambo_Shallow_2006_grouper_biomass$Reef <- ('Western Sambo Shallow')

Western_Sambo_Shallow_2007 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2007.xls")

Western_Sambo_Shallow_2007_snapper <- merge(Western_Sambo_Shallow_2007, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2007_snapper_biomass <- summarise_at(Western_Sambo_Shallow_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2007_snapper_biomass$Year <- ('2007')
Western_Sambo_Shallow_2007_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2007_grouper <- merge(Western_Sambo_Shallow_2007, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2007_grouper_biomass <- summarise_at(Western_Sambo_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2007_grouper_biomass$Year <- ('2007')
Western_Sambo_Shallow_2007_grouper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2008 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2008.xls")

Western_Sambo_Shallow_2008_snapper <- merge(Western_Sambo_Shallow_2008, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2008_snapper_biomass <- summarise_at(Western_Sambo_Shallow_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2008_snapper_biomass$Year <- ('2008')
Western_Sambo_Shallow_2008_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2008_grouper <- merge(Western_Sambo_Shallow_2008, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2008_grouper_biomass <- summarise_at(Western_Sambo_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2008_grouper_biomass$Year <- ('2008')
Western_Sambo_Shallow_2008_grouper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2009 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2009.xls")

Western_Sambo_Shallow_2009_snapper <- merge(Western_Sambo_Shallow_2009, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2009_snapper_biomass <- summarise_at(Western_Sambo_Shallow_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2009_snapper_biomass$Year <- ('2009')
Western_Sambo_Shallow_2009_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2009_grouper <- merge(Western_Sambo_Shallow_2009, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2009_grouper_biomass <- summarise_at(Western_Sambo_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2009_grouper_biomass$Year <- ('2009')
Western_Sambo_Shallow_2009_grouper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2010 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2010.xls")

Western_Sambo_Shallow_2010_snapper <- merge(Western_Sambo_Shallow_2010, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2010_snapper_biomass <- summarise_at(Western_Sambo_Shallow_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2010_snapper_biomass$Year <- ('2010')
Western_Sambo_Shallow_2010_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2010_grouper <- merge(Western_Sambo_Shallow_2010, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2010_grouper_biomass <- summarise_at(Western_Sambo_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2010_grouper_biomass$Year <- ('2010')
Western_Sambo_Shallow_2010_grouper_biomass$Reef <- ('Western Sambo Shallow')

Western_Sambo_Shallow_2011 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2011.xls")

Western_Sambo_Shallow_2011_snapper <- merge(Western_Sambo_Shallow_2011, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2011_snapper_biomass <- summarise_at(Western_Sambo_Shallow_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2011_snapper_biomass$Year <- ('2011')
Western_Sambo_Shallow_2011_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2011_grouper <- merge(Western_Sambo_Shallow_2011, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2011_grouper_biomass <- summarise_at(Western_Sambo_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2011_grouper_biomass$Year <- ('2011')
Western_Sambo_Shallow_2011_grouper_biomass$Reef <- ('Western Sambo Shallow')



Western_Sambo_Shallow_2012 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2012.xls")

Western_Sambo_Shallow_2012_snapper <- merge(Western_Sambo_Shallow_2012, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2012_snapper_biomass <- summarise_at(Western_Sambo_Shallow_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2012_snapper_biomass$Year <- ('2012')
Western_Sambo_Shallow_2012_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2012_grouper <- merge(Western_Sambo_Shallow_2012, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2012_grouper_biomass <- summarise_at(Western_Sambo_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2012_grouper_biomass$Year <- ('2012')
Western_Sambo_Shallow_2012_grouper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2014 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2014.xls")

Western_Sambo_Shallow_2014_snapper <- merge(Western_Sambo_Shallow_2014, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2014_snapper_biomass <- summarise_at(Western_Sambo_Shallow_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2014_snapper_biomass$Year <- ('2014')
Western_Sambo_Shallow_2014_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2014_grouper <- merge(Western_Sambo_Shallow_2014, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2014_grouper_biomass <- summarise_at(Western_Sambo_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2014_grouper_biomass$Year <- ('2014')
Western_Sambo_Shallow_2014_grouper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2016 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2016.xls")

Western_Sambo_Shallow_2016_snapper <- merge(Western_Sambo_Shallow_2016, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2016_snapper_biomass <- summarise_at(Western_Sambo_Shallow_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2016_snapper_biomass$Year <- ('2016')
Western_Sambo_Shallow_2016_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2016_grouper <- merge(Western_Sambo_Shallow_2016, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2016_grouper_biomass <- summarise_at(Western_Sambo_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2016_grouper_biomass$Year <- ('2016')
Western_Sambo_Shallow_2016_grouper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2018 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2018.xls")

Western_Sambo_Shallow_2018_snapper <- merge(Western_Sambo_Shallow_2018, snapper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2018_snapper_biomass <- summarise_at(Western_Sambo_Shallow_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2018_snapper_biomass$Year <- ('2018')
Western_Sambo_Shallow_2018_snapper_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2018_grouper <- merge(Western_Sambo_Shallow_2018, grouper, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2018_grouper_biomass <- summarise_at(Western_Sambo_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2018_grouper_biomass$Year <- ('2018')
Western_Sambo_Shallow_2018_grouper_biomass$Reef <- ('Western Sambo Shallow')



### Combine all years together for snapper_ and grouper_ seperately



Western_Sambo_Shallow_snapper_1 <- rbind(Western_Sambo_Shallow_1999_snapper_biomass,Western_Sambo_Shallow_2000_snapper_biomass)
Western_Sambo_Shallow_snapper_2 <- rbind(Western_Sambo_Shallow_snapper_1,Western_Sambo_Shallow_2001_snapper_biomass)
Western_Sambo_Shallow_snapper_3 <- rbind(Western_Sambo_Shallow_snapper_2,Western_Sambo_Shallow_2002_snapper_biomass)
Western_Sambo_Shallow_snapper_4 <- rbind(Western_Sambo_Shallow_snapper_3,Western_Sambo_Shallow_2003_snapper_biomass)
Western_Sambo_Shallow_snapper_5 <- rbind(Western_Sambo_Shallow_snapper_4,Western_Sambo_Shallow_2004_snapper_biomass)
Western_Sambo_Shallow_snapper_6 <- rbind(Western_Sambo_Shallow_snapper_5,Western_Sambo_Shallow_2005_snapper_biomass)
Western_Sambo_Shallow_snapper_7 <- rbind(Western_Sambo_Shallow_snapper_6,Western_Sambo_Shallow_2006_snapper_biomass)
Western_Sambo_Shallow_snapper_8 <- rbind(Western_Sambo_Shallow_snapper_7,Western_Sambo_Shallow_2007_snapper_biomass)
Western_Sambo_Shallow_snapper_9 <- rbind(Western_Sambo_Shallow_snapper_8,Western_Sambo_Shallow_2008_snapper_biomass)
Western_Sambo_Shallow_snapper_10 <- rbind(Western_Sambo_Shallow_snapper_9,Western_Sambo_Shallow_2009_snapper_biomass)
Western_Sambo_Shallow_snapper_11<- rbind(Western_Sambo_Shallow_snapper_10,Western_Sambo_Shallow_2010_snapper_biomass)
Western_Sambo_Shallow_snapper_12 <- rbind(Western_Sambo_Shallow_snapper_11,Western_Sambo_Shallow_2011_snapper_biomass)
Western_Sambo_Shallow_snapper_13 <- rbind(Western_Sambo_Shallow_snapper_12,Western_Sambo_Shallow_2012_snapper_biomass)
Western_Sambo_Shallow_snapper_14 <- rbind(Western_Sambo_Shallow_snapper_13,Western_Sambo_Shallow_2014_snapper_biomass)
Western_Sambo_Shallow_snapper_15 <- rbind(Western_Sambo_Shallow_snapper_14,Western_Sambo_Shallow_2016_snapper_biomass)
Western_Sambo_Shallow_snapper_biomass_data_combined <- rbind(Western_Sambo_Shallow_snapper_15,Western_Sambo_Shallow_2018_snapper_biomass)



Western_Sambo_Shallow_grouper_1 <- rbind(Western_Sambo_Shallow_1999_grouper_biomass,Western_Sambo_Shallow_2000_grouper_biomass)
Western_Sambo_Shallow_grouper_2 <- rbind(Western_Sambo_Shallow_grouper_1,Western_Sambo_Shallow_2001_grouper_biomass)
Western_Sambo_Shallow_grouper_3 <- rbind(Western_Sambo_Shallow_grouper_2,Western_Sambo_Shallow_2002_grouper_biomass)
Western_Sambo_Shallow_grouper_4 <- rbind(Western_Sambo_Shallow_grouper_3,Western_Sambo_Shallow_2003_grouper_biomass)
Western_Sambo_Shallow_grouper_5 <- rbind(Western_Sambo_Shallow_grouper_4,Western_Sambo_Shallow_2004_grouper_biomass)
Western_Sambo_Shallow_grouper_6 <- rbind(Western_Sambo_Shallow_grouper_5,Western_Sambo_Shallow_2005_grouper_biomass)
Western_Sambo_Shallow_grouper_7 <- rbind(Western_Sambo_Shallow_grouper_6,Western_Sambo_Shallow_2006_grouper_biomass)
Western_Sambo_Shallow_grouper_8 <- rbind(Western_Sambo_Shallow_grouper_7,Western_Sambo_Shallow_2007_grouper_biomass)
Western_Sambo_Shallow_grouper_9 <- rbind(Western_Sambo_Shallow_grouper_8,Western_Sambo_Shallow_2008_grouper_biomass)
Western_Sambo_Shallow_grouper_10 <- rbind(Western_Sambo_Shallow_grouper_9,Western_Sambo_Shallow_2009_grouper_biomass)
Western_Sambo_Shallow_grouper_11<- rbind(Western_Sambo_Shallow_grouper_10,Western_Sambo_Shallow_2010_grouper_biomass)
Western_Sambo_Shallow_grouper_12 <- rbind(Western_Sambo_Shallow_grouper_11,Western_Sambo_Shallow_2011_grouper_biomass)
Western_Sambo_Shallow_grouper_13 <- rbind(Western_Sambo_Shallow_grouper_12,Western_Sambo_Shallow_2012_grouper_biomass)
Western_Sambo_Shallow_grouper_14 <- rbind(Western_Sambo_Shallow_grouper_13,Western_Sambo_Shallow_2014_grouper_biomass)
Western_Sambo_Shallow_grouper_15 <- rbind(Western_Sambo_Shallow_grouper_14,Western_Sambo_Shallow_2016_grouper_biomass)
Western_Sambo_Shallow_grouper_biomass_data_combined <- rbind(Western_Sambo_Shallow_grouper_15,Western_Sambo_Shallow_2018_grouper_biomass)



export(Western_Sambo_Shallow_snapper_biomass_data_combined, "Western_Sambo_Shallow/data/Western_Sambo_Shallow_snapper__biomass.csv")
export(Western_Sambo_Shallow_grouper_biomass_data_combined, "Western_Sambo_Shallow/data/Western_Sambo_Shallow_grouper__biomass.csv")


### LK combo

LK_reef_snapper_biomass_combined <- rbind(Eastern_Sambo_Deep_snapper_biomass_data_combined,Eastern_Sambo_Shallow_snapper_biomass_data_combined,Jaap_Reef_snapper_biomass_data_combined,Looe_Key_Deep_snapper_biomass_data_combined,Looe_Key_Shallow_snapper_biomass_data_combined,Red_Dun_Reef_snapper_biomass_data_combined,Rock_Key_Deep_snapper_biomass_data_combined,Rock_Key_Shallow_snapper_biomass_data_combined,Sand_Key_Deep_snapper_biomass_data_combined,Sand_Key_Shallow_snapper_biomass_data_combined,West_Washer_Woman_snapper_biomass_data_combined,Western_Sambo_Deep_snapper_biomass_data_combined,Western_Sambo_Shallow_snapper_biomass_data_combined)
LK_reef_snapper_biomass_data <- arrange(LK_reef_snapper_biomass_combined, Year,Reef, sum, max, min, mean, sd )
LK_reef_snapper_biomass_data$REGION <- ("LK")
export(LK_reef_snapper_biomass_data, "LK_snapper__biomass_data.csv")



LK_reef_grouper_biomass_combined <- rbind(Eastern_Sambo_Deep_grouper_biomass_data_combined,Eastern_Sambo_Shallow_grouper_biomass_data_combined,Jaap_Reef_grouper_biomass_data_combined,Looe_Key_Deep_grouper_biomass_data_combined,Looe_Key_Shallow_grouper_biomass_data_combined,Red_Dun_Reef_grouper_biomass_data_combined,Rock_Key_Deep_grouper_biomass_data_combined,Rock_Key_Shallow_grouper_biomass_data_combined,Sand_Key_Deep_grouper_biomass_data_combined,Sand_Key_Shallow_grouper_biomass_data_combined,West_Washer_Woman_grouper_biomass_data_combined,Western_Sambo_Deep_grouper_biomass_data_combined,Western_Sambo_Shallow_grouper_biomass_data_combined)
LK_reef_grouper_biomass_data <- arrange(LK_reef_grouper_biomass_combined, Year,Reef, sum, max, min, mean, sd )
LK_reef_grouper_biomass_data$REGION <- ("LK")
export(LK_reef_grouper_biomass_data, "LK_grouper__biomass_data.csv")








### Middle Keys (missing 2004)


setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/MK")


# Alligator Deep


Alligator_Deep_1999 <- import("Alligator_Deep/data/Alligator_Deep_1999.xls")


Alligator_Deep_1999_snapper <- merge(Alligator_Deep_1999, snapper, by = c("SPECIES_CD"))
Alligator_Deep_1999_snapper_biomass <- summarise_at(Alligator_Deep_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_1999_snapper_biomass$Year <- ('1999')
Alligator_Deep_1999_snapper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_1999_grouper <- merge(Alligator_Deep_1999, grouper, by = c("SPECIES_CD"))
Alligator_Deep_1999_grouper_biomass <- summarise_at(Alligator_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_1999_grouper_biomass$Year <- ('1999')
Alligator_Deep_1999_grouper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2000 <- import("Alligator_Deep/data/Alligator_Deep_2000.xls")

Alligator_Deep_2000_snapper <- merge(Alligator_Deep_2000, snapper, by = c("SPECIES_CD"))
Alligator_Deep_2000_snapper_biomass <- summarise_at(Alligator_Deep_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2000_snapper_biomass$Year <- ('2000')
Alligator_Deep_2000_snapper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2000_grouper <- merge(Alligator_Deep_2000, grouper, by = c("SPECIES_CD"))
Alligator_Deep_2000_grouper_biomass <- summarise_at(Alligator_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2000_grouper_biomass$Year <- ('2000')
Alligator_Deep_2000_grouper_biomass$Reef <- ('Alligator Deep')

Alligator_Deep_2001 <- import("Alligator_Deep/data/Alligator_Deep_2001.xls")

Alligator_Deep_2001_snapper <- merge(Alligator_Deep_2001, snapper, by = c("SPECIES_CD"))
Alligator_Deep_2001_snapper_biomass <- summarise_at(Alligator_Deep_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2001_snapper_biomass$Year <- ('2001')
Alligator_Deep_2001_snapper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2001_grouper <- merge(Alligator_Deep_2001, grouper, by = c("SPECIES_CD"))
Alligator_Deep_2001_grouper_biomass <- summarise_at(Alligator_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2001_grouper_biomass$Year <- ('2001')
Alligator_Deep_2001_grouper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2002 <- import("Alligator_Deep/data/Alligator_Deep_2002.xls")

Alligator_Deep_2002_snapper <- merge(Alligator_Deep_2002, snapper, by = c("SPECIES_CD"))
Alligator_Deep_2002_snapper_biomass <- summarise_at(Alligator_Deep_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2002_snapper_biomass$Year <- ('2002')
Alligator_Deep_2002_snapper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2002_grouper <- merge(Alligator_Deep_2002, grouper, by = c("SPECIES_CD"))
Alligator_Deep_2002_grouper_biomass <- summarise_at(Alligator_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2002_grouper_biomass$Year <- ('2002')
Alligator_Deep_2002_grouper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2003 <- import("Alligator_Deep/data/Alligator_Deep_2003.xls")

Alligator_Deep_2003_snapper <- merge(Alligator_Deep_2003, snapper, by = c("SPECIES_CD"))
Alligator_Deep_2003_snapper_biomass <- summarise_at(Alligator_Deep_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2003_snapper_biomass$Year <- ('2003')
Alligator_Deep_2003_snapper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2003_grouper <- merge(Alligator_Deep_2003, grouper, by = c("SPECIES_CD"))
Alligator_Deep_2003_grouper_biomass <- summarise_at(Alligator_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2003_grouper_biomass$Year <- ('2003')
Alligator_Deep_2003_grouper_biomass$Reef <- ('Alligator Deep')


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
Alligator_Deep_2005_snapper_biomass <- summarise_at(Alligator_Deep_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2005_snapper_biomass$Year <- ('2005')
Alligator_Deep_2005_snapper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2005_grouper <- merge(Alligator_Deep_2005, grouper, by = c("SPECIES_CD"))
Alligator_Deep_2005_grouper_biomass <- summarise_at(Alligator_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2005_grouper_biomass$Year <- ('2005')
Alligator_Deep_2005_grouper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2006 <- import("Alligator_Deep/data/Alligator_Deep_2006.xls")

Alligator_Deep_2006_snapper <- merge(Alligator_Deep_2006, snapper, by = c("SPECIES_CD"))
Alligator_Deep_2006_snapper_biomass <- summarise_at(Alligator_Deep_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2006_snapper_biomass$Year <- ('2006')
Alligator_Deep_2006_snapper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2006_grouper <- merge(Alligator_Deep_2006, grouper, by = c("SPECIES_CD"))
Alligator_Deep_2006_grouper_biomass <- summarise_at(Alligator_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2006_grouper_biomass$Year <- ('2006')
Alligator_Deep_2006_grouper_biomass$Reef <- ('Alligator Deep')

Alligator_Deep_2007 <- import("Alligator_Deep/data/Alligator_Deep_2007.xls")

Alligator_Deep_2007_snapper <- merge(Alligator_Deep_2007, snapper, by = c("SPECIES_CD"))
Alligator_Deep_2007_snapper_biomass <- summarise_at(Alligator_Deep_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2007_snapper_biomass$Year <- ('2007')
Alligator_Deep_2007_snapper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2007_grouper <- merge(Alligator_Deep_2007, grouper, by = c("SPECIES_CD"))
Alligator_Deep_2007_grouper_biomass <- summarise_at(Alligator_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2007_grouper_biomass$Year <- ('2007')
Alligator_Deep_2007_grouper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2008 <- import("Alligator_Deep/data/Alligator_Deep_2008.xls")

Alligator_Deep_2008_snapper <- merge(Alligator_Deep_2008, snapper, by = c("SPECIES_CD"))
Alligator_Deep_2008_snapper_biomass <- summarise_at(Alligator_Deep_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2008_snapper_biomass$Year <- ('2008')
Alligator_Deep_2008_snapper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2008_grouper <- merge(Alligator_Deep_2008, grouper, by = c("SPECIES_CD"))
Alligator_Deep_2008_grouper_biomass <- summarise_at(Alligator_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2008_grouper_biomass$Year <- ('2008')
Alligator_Deep_2008_grouper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2009 <- import("Alligator_Deep/data/Alligator_Deep_2009.xls")

Alligator_Deep_2009_snapper <- merge(Alligator_Deep_2009, snapper, by = c("SPECIES_CD"))
Alligator_Deep_2009_snapper_biomass <- summarise_at(Alligator_Deep_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2009_snapper_biomass$Year <- ('2009')
Alligator_Deep_2009_snapper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2009_grouper <- merge(Alligator_Deep_2009, grouper, by = c("SPECIES_CD"))
Alligator_Deep_2009_grouper_biomass <- summarise_at(Alligator_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2009_grouper_biomass$Year <- ('2009')
Alligator_Deep_2009_grouper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2010 <- import("Alligator_Deep/data/Alligator_Deep_2010.xls")

Alligator_Deep_2010_snapper <- merge(Alligator_Deep_2010, snapper, by = c("SPECIES_CD"))
Alligator_Deep_2010_snapper_biomass <- summarise_at(Alligator_Deep_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2010_snapper_biomass$Year <- ('2010')
Alligator_Deep_2010_snapper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2010_grouper <- merge(Alligator_Deep_2010, grouper, by = c("SPECIES_CD"))
Alligator_Deep_2010_grouper_biomass <- summarise_at(Alligator_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2010_grouper_biomass$Year <- ('2010')
Alligator_Deep_2010_grouper_biomass$Reef <- ('Alligator Deep')

Alligator_Deep_2011 <- import("Alligator_Deep/data/Alligator_Deep_2011.xls")

Alligator_Deep_2011_snapper <- merge(Alligator_Deep_2011, snapper, by = c("SPECIES_CD"))
Alligator_Deep_2011_snapper_biomass <- summarise_at(Alligator_Deep_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2011_snapper_biomass$Year <- ('2011')
Alligator_Deep_2011_snapper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2011_grouper <- merge(Alligator_Deep_2011, grouper, by = c("SPECIES_CD"))
Alligator_Deep_2011_grouper_biomass <- summarise_at(Alligator_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2011_grouper_biomass$Year <- ('2011')
Alligator_Deep_2011_grouper_biomass$Reef <- ('Alligator Deep')



Alligator_Deep_2012 <- import("Alligator_Deep/data/Alligator_Deep_2012.xls")

Alligator_Deep_2012_snapper <- merge(Alligator_Deep_2012, snapper, by = c("SPECIES_CD"))
Alligator_Deep_2012_snapper_biomass <- summarise_at(Alligator_Deep_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2012_snapper_biomass$Year <- ('2012')
Alligator_Deep_2012_snapper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2012_grouper <- merge(Alligator_Deep_2012, grouper, by = c("SPECIES_CD"))
Alligator_Deep_2012_grouper_biomass <- summarise_at(Alligator_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2012_grouper_biomass$Year <- ('2012')
Alligator_Deep_2012_grouper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2014 <- import("Alligator_Deep/data/Alligator_Deep_2014.xls")

Alligator_Deep_2014_snapper <- merge(Alligator_Deep_2014, snapper, by = c("SPECIES_CD"))
Alligator_Deep_2014_snapper_biomass <- summarise_at(Alligator_Deep_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2014_snapper_biomass$Year <- ('2014')
Alligator_Deep_2014_snapper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2014_grouper <- merge(Alligator_Deep_2014, grouper, by = c("SPECIES_CD"))
Alligator_Deep_2014_grouper_biomass <- summarise_at(Alligator_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2014_grouper_biomass$Year <- ('2014')
Alligator_Deep_2014_grouper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2016 <- import("Alligator_Deep/data/Alligator_Deep_2016.xls")

Alligator_Deep_2016_snapper <- merge(Alligator_Deep_2016, snapper, by = c("SPECIES_CD"))
Alligator_Deep_2016_snapper_biomass <- summarise_at(Alligator_Deep_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2016_snapper_biomass$Year <- ('2016')
Alligator_Deep_2016_snapper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2016_grouper <- merge(Alligator_Deep_2016, grouper, by = c("SPECIES_CD"))
Alligator_Deep_2016_grouper_biomass <- summarise_at(Alligator_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2016_grouper_biomass$Year <- ('2016')
Alligator_Deep_2016_grouper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2018 <- import("Alligator_Deep/data/Alligator_Deep_2018.xls")

Alligator_Deep_2018_snapper <- merge(Alligator_Deep_2018, snapper, by = c("SPECIES_CD"))
Alligator_Deep_2018_snapper_biomass <- summarise_at(Alligator_Deep_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2018_snapper_biomass$Year <- ('2018')
Alligator_Deep_2018_snapper_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2018_grouper <- merge(Alligator_Deep_2018, grouper, by = c("SPECIES_CD"))
Alligator_Deep_2018_grouper_biomass <- summarise_at(Alligator_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2018_grouper_biomass$Year <- ('2018')
Alligator_Deep_2018_grouper_biomass$Reef <- ('Alligator Deep')



### Combine all years together for snapper_ and grouper_ seperately



Alligator_Deep_snapper_1 <- rbind(Alligator_Deep_1999_snapper_biomass,Alligator_Deep_2000_snapper_biomass)
Alligator_Deep_snapper_2 <- rbind(Alligator_Deep_snapper_1,Alligator_Deep_2001_snapper_biomass)
Alligator_Deep_snapper_3 <- rbind(Alligator_Deep_snapper_2,Alligator_Deep_2002_snapper_biomass)
Alligator_Deep_snapper_4 <- rbind(Alligator_Deep_snapper_3,Alligator_Deep_2003_snapper_biomass)
#Alligator_Deep_snapper_5 <- rbind(Alligator_Deep_snapper_4,Alligator_Deep_2004_snapper_biomass)
Alligator_Deep_snapper_6 <- rbind(Alligator_Deep_snapper_4,Alligator_Deep_2005_snapper_biomass)
Alligator_Deep_snapper_7 <- rbind(Alligator_Deep_snapper_6,Alligator_Deep_2006_snapper_biomass)
Alligator_Deep_snapper_8 <- rbind(Alligator_Deep_snapper_7,Alligator_Deep_2007_snapper_biomass)
Alligator_Deep_snapper_9 <- rbind(Alligator_Deep_snapper_8,Alligator_Deep_2008_snapper_biomass)
Alligator_Deep_snapper_10 <- rbind(Alligator_Deep_snapper_9,Alligator_Deep_2009_snapper_biomass)
Alligator_Deep_snapper_11<- rbind(Alligator_Deep_snapper_10,Alligator_Deep_2010_snapper_biomass)
Alligator_Deep_snapper_12 <- rbind(Alligator_Deep_snapper_11,Alligator_Deep_2011_snapper_biomass)
Alligator_Deep_snapper_13 <- rbind(Alligator_Deep_snapper_12,Alligator_Deep_2012_snapper_biomass)
Alligator_Deep_snapper_14 <- rbind(Alligator_Deep_snapper_13,Alligator_Deep_2014_snapper_biomass)
Alligator_Deep_snapper_15 <- rbind(Alligator_Deep_snapper_14,Alligator_Deep_2016_snapper_biomass)
Alligator_Deep_snapper_biomass_data_combined <- rbind(Alligator_Deep_snapper_15,Alligator_Deep_2018_snapper_biomass)



Alligator_Deep_grouper_1 <- rbind(Alligator_Deep_1999_grouper_biomass,Alligator_Deep_2000_grouper_biomass)
Alligator_Deep_grouper_2 <- rbind(Alligator_Deep_grouper_1,Alligator_Deep_2001_grouper_biomass)
Alligator_Deep_grouper_3 <- rbind(Alligator_Deep_grouper_2,Alligator_Deep_2002_grouper_biomass)
Alligator_Deep_grouper_4 <- rbind(Alligator_Deep_grouper_3,Alligator_Deep_2003_grouper_biomass)
#Alligator_Deep_grouper_5 <- rbind(Alligator_Deep_grouper_4,Alligator_Deep_2004_grouper_biomass)
Alligator_Deep_grouper_6 <- rbind(Alligator_Deep_grouper_4,Alligator_Deep_2005_grouper_biomass)
Alligator_Deep_grouper_7 <- rbind(Alligator_Deep_grouper_6,Alligator_Deep_2006_grouper_biomass)
Alligator_Deep_grouper_8 <- rbind(Alligator_Deep_grouper_7,Alligator_Deep_2007_grouper_biomass)
Alligator_Deep_grouper_9 <- rbind(Alligator_Deep_grouper_8,Alligator_Deep_2008_grouper_biomass)
Alligator_Deep_grouper_10 <- rbind(Alligator_Deep_grouper_9,Alligator_Deep_2009_grouper_biomass)
Alligator_Deep_grouper_11<- rbind(Alligator_Deep_grouper_10,Alligator_Deep_2010_grouper_biomass)
Alligator_Deep_grouper_12 <- rbind(Alligator_Deep_grouper_11,Alligator_Deep_2011_grouper_biomass)
Alligator_Deep_grouper_13 <- rbind(Alligator_Deep_grouper_12,Alligator_Deep_2012_grouper_biomass)
Alligator_Deep_grouper_14 <- rbind(Alligator_Deep_grouper_13,Alligator_Deep_2014_grouper_biomass)
Alligator_Deep_grouper_15 <- rbind(Alligator_Deep_grouper_14,Alligator_Deep_2016_grouper_biomass)
Alligator_Deep_grouper_biomass_data_combined <- rbind(Alligator_Deep_grouper_15,Alligator_Deep_2018_grouper_biomass)



export(Alligator_Deep_snapper_biomass_data_combined, "Alligator_Deep/data/Alligator_Deep_snapper__biomass.csv")
export(Alligator_Deep_grouper_biomass_data_combined, "Alligator_Deep/data/Alligator_Deep_grouper__biomass.csv")



# Alligator Shallow


Alligator_Shallow_1999 <- import("Alligator_Shallow/data/Alligator_Shallow_1999.xls")


Alligator_Shallow_1999_snapper <- merge(Alligator_Shallow_1999, snapper, by = c("SPECIES_CD"))
Alligator_Shallow_1999_snapper_biomass <- summarise_at(Alligator_Shallow_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_1999_snapper_biomass$Year <- ('1999')
Alligator_Shallow_1999_snapper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_1999_grouper <- merge(Alligator_Shallow_1999, grouper, by = c("SPECIES_CD"))
Alligator_Shallow_1999_grouper_biomass <- summarise_at(Alligator_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_1999_grouper_biomass$Year <- ('1999')
Alligator_Shallow_1999_grouper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2000 <- import("Alligator_Shallow/data/Alligator_Shallow_2000.xls")

Alligator_Shallow_2000_snapper <- merge(Alligator_Shallow_2000, snapper, by = c("SPECIES_CD"))
Alligator_Shallow_2000_snapper_biomass <- summarise_at(Alligator_Shallow_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2000_snapper_biomass$Year <- ('2000')
Alligator_Shallow_2000_snapper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2000_grouper <- merge(Alligator_Shallow_2000, grouper, by = c("SPECIES_CD"))
Alligator_Shallow_2000_grouper_biomass <- summarise_at(Alligator_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2000_grouper_biomass$Year <- ('2000')
Alligator_Shallow_2000_grouper_biomass$Reef <- ('Alligator Shallow')

Alligator_Shallow_2001 <- import("Alligator_Shallow/data/Alligator_Shallow_2001.xls")

Alligator_Shallow_2001_snapper <- merge(Alligator_Shallow_2001, snapper, by = c("SPECIES_CD"))
Alligator_Shallow_2001_snapper_biomass <- summarise_at(Alligator_Shallow_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2001_snapper_biomass$Year <- ('2001')
Alligator_Shallow_2001_snapper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2001_grouper <- merge(Alligator_Shallow_2001, grouper, by = c("SPECIES_CD"))
Alligator_Shallow_2001_grouper_biomass <- summarise_at(Alligator_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2001_grouper_biomass$Year <- ('2001')
Alligator_Shallow_2001_grouper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2002 <- import("Alligator_Shallow/data/Alligator_Shallow_2002.xls")

Alligator_Shallow_2002_snapper <- merge(Alligator_Shallow_2002, snapper, by = c("SPECIES_CD"))
Alligator_Shallow_2002_snapper_biomass <- summarise_at(Alligator_Shallow_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2002_snapper_biomass$Year <- ('2002')
Alligator_Shallow_2002_snapper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2002_grouper <- merge(Alligator_Shallow_2002, grouper, by = c("SPECIES_CD"))
Alligator_Shallow_2002_grouper_biomass <- summarise_at(Alligator_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2002_grouper_biomass$Year <- ('2002')
Alligator_Shallow_2002_grouper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2003 <- import("Alligator_Shallow/data/Alligator_Shallow_2003.xls")

Alligator_Shallow_2003_snapper <- merge(Alligator_Shallow_2003, snapper, by = c("SPECIES_CD"))
Alligator_Shallow_2003_snapper_biomass <- summarise_at(Alligator_Shallow_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2003_snapper_biomass$Year <- ('2003')
Alligator_Shallow_2003_snapper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2003_grouper <- merge(Alligator_Shallow_2003, grouper, by = c("SPECIES_CD"))
Alligator_Shallow_2003_grouper_biomass <- summarise_at(Alligator_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2003_grouper_biomass$Year <- ('2003')
Alligator_Shallow_2003_grouper_biomass$Reef <- ('Alligator Shallow')


# Alligator_Shallow_2004 <- import("Alligator_Shallow/data/Alligator_Shallow_2004.xls")
# 
# Alligator_Shallow_2004_snapper <- merge(Alligator_Shallow_2004, snapper, by = c("SPECIES_CD"))
# Alligator_Shallow_2004_snapper_biomass <- summarise_at(Alligator_Shallow_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Alligator_Shallow_2004_snapper_biomass$Year <- ('2004')
# Alligator_Shallow_2004_snapper_biomass$Reef <- ('Alligator Shallow')
# 
# 
# Alligator_Shallow_2004_grouper <- merge(Alligator_Shallow_2004, grouper, by = c("SPECIES_CD"))
# Alligator_Shallow_2004_grouper_biomass <- summarise_at(Alligator_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Alligator_Shallow_2004_grouper_biomass$Year <- ('2004')
# Alligator_Shallow_2004_grouper_biomass$Reef <- ('Alligator Shallow')

Alligator_Shallow_2005 <- import("Alligator_Shallow/data/Alligator_Shallow_2005.xls")

Alligator_Shallow_2005_snapper <- merge(Alligator_Shallow_2005, snapper, by = c("SPECIES_CD"))
Alligator_Shallow_2005_snapper_biomass <- summarise_at(Alligator_Shallow_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2005_snapper_biomass$Year <- ('2005')
Alligator_Shallow_2005_snapper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2005_grouper <- merge(Alligator_Shallow_2005, grouper, by = c("SPECIES_CD"))
Alligator_Shallow_2005_grouper_biomass <- summarise_at(Alligator_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2005_grouper_biomass$Year <- ('2005')
Alligator_Shallow_2005_grouper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2006 <- import("Alligator_Shallow/data/Alligator_Shallow_2006.xls")

Alligator_Shallow_2006_snapper <- merge(Alligator_Shallow_2006, snapper, by = c("SPECIES_CD"))
Alligator_Shallow_2006_snapper_biomass <- summarise_at(Alligator_Shallow_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2006_snapper_biomass$Year <- ('2006')
Alligator_Shallow_2006_snapper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2006_grouper <- merge(Alligator_Shallow_2006, grouper, by = c("SPECIES_CD"))
Alligator_Shallow_2006_grouper_biomass <- summarise_at(Alligator_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2006_grouper_biomass$Year <- ('2006')
Alligator_Shallow_2006_grouper_biomass$Reef <- ('Alligator Shallow')

Alligator_Shallow_2007 <- import("Alligator_Shallow/data/Alligator_Shallow_2007.xls")

Alligator_Shallow_2007_snapper <- merge(Alligator_Shallow_2007, snapper, by = c("SPECIES_CD"))
Alligator_Shallow_2007_snapper_biomass <- summarise_at(Alligator_Shallow_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2007_snapper_biomass$Year <- ('2007')
Alligator_Shallow_2007_snapper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2007_grouper <- merge(Alligator_Shallow_2007, grouper, by = c("SPECIES_CD"))
Alligator_Shallow_2007_grouper_biomass <- summarise_at(Alligator_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2007_grouper_biomass$Year <- ('2007')
Alligator_Shallow_2007_grouper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2008 <- import("Alligator_Shallow/data/Alligator_Shallow_2008.xls")

Alligator_Shallow_2008_snapper <- merge(Alligator_Shallow_2008, snapper, by = c("SPECIES_CD"))
Alligator_Shallow_2008_snapper_biomass <- summarise_at(Alligator_Shallow_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2008_snapper_biomass$Year <- ('2008')
Alligator_Shallow_2008_snapper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2008_grouper <- merge(Alligator_Shallow_2008, grouper, by = c("SPECIES_CD"))
Alligator_Shallow_2008_grouper_biomass <- summarise_at(Alligator_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2008_grouper_biomass$Year <- ('2008')
Alligator_Shallow_2008_grouper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2009 <- import("Alligator_Shallow/data/Alligator_Shallow_2009.xls")

Alligator_Shallow_2009_snapper <- merge(Alligator_Shallow_2009, snapper, by = c("SPECIES_CD"))
Alligator_Shallow_2009_snapper_biomass <- summarise_at(Alligator_Shallow_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2009_snapper_biomass$Year <- ('2009')
Alligator_Shallow_2009_snapper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2009_grouper <- merge(Alligator_Shallow_2009, grouper, by = c("SPECIES_CD"))
Alligator_Shallow_2009_grouper_biomass <- summarise_at(Alligator_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2009_grouper_biomass$Year <- ('2009')
Alligator_Shallow_2009_grouper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2010 <- import("Alligator_Shallow/data/Alligator_Shallow_2010.xls")

Alligator_Shallow_2010_snapper <- merge(Alligator_Shallow_2010, snapper, by = c("SPECIES_CD"))
Alligator_Shallow_2010_snapper_biomass <- summarise_at(Alligator_Shallow_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2010_snapper_biomass$Year <- ('2010')
Alligator_Shallow_2010_snapper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2010_grouper <- merge(Alligator_Shallow_2010, grouper, by = c("SPECIES_CD"))
Alligator_Shallow_2010_grouper_biomass <- summarise_at(Alligator_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2010_grouper_biomass$Year <- ('2010')
Alligator_Shallow_2010_grouper_biomass$Reef <- ('Alligator Shallow')

Alligator_Shallow_2011 <- import("Alligator_Shallow/data/Alligator_Shallow_2011.xls")

Alligator_Shallow_2011_snapper <- merge(Alligator_Shallow_2011, snapper, by = c("SPECIES_CD"))
Alligator_Shallow_2011_snapper_biomass <- summarise_at(Alligator_Shallow_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2011_snapper_biomass$Year <- ('2011')
Alligator_Shallow_2011_snapper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2011_grouper <- merge(Alligator_Shallow_2011, grouper, by = c("SPECIES_CD"))
Alligator_Shallow_2011_grouper_biomass <- summarise_at(Alligator_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2011_grouper_biomass$Year <- ('2011')
Alligator_Shallow_2011_grouper_biomass$Reef <- ('Alligator Shallow')



Alligator_Shallow_2012 <- import("Alligator_Shallow/data/Alligator_Shallow_2012.xls")

Alligator_Shallow_2012_snapper <- merge(Alligator_Shallow_2012, snapper, by = c("SPECIES_CD"))
Alligator_Shallow_2012_snapper_biomass <- summarise_at(Alligator_Shallow_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2012_snapper_biomass$Year <- ('2012')
Alligator_Shallow_2012_snapper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2012_grouper <- merge(Alligator_Shallow_2012, grouper, by = c("SPECIES_CD"))
Alligator_Shallow_2012_grouper_biomass <- summarise_at(Alligator_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2012_grouper_biomass$Year <- ('2012')
Alligator_Shallow_2012_grouper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2014 <- import("Alligator_Shallow/data/Alligator_Shallow_2014.xls")

Alligator_Shallow_2014_snapper <- merge(Alligator_Shallow_2014, snapper, by = c("SPECIES_CD"))
Alligator_Shallow_2014_snapper_biomass <- summarise_at(Alligator_Shallow_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2014_snapper_biomass$Year <- ('2014')
Alligator_Shallow_2014_snapper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2014_grouper <- merge(Alligator_Shallow_2014, grouper, by = c("SPECIES_CD"))
Alligator_Shallow_2014_grouper_biomass <- summarise_at(Alligator_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2014_grouper_biomass$Year <- ('2014')
Alligator_Shallow_2014_grouper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2016 <- import("Alligator_Shallow/data/Alligator_Shallow_2016.xls")

Alligator_Shallow_2016_snapper <- merge(Alligator_Shallow_2016, snapper, by = c("SPECIES_CD"))
Alligator_Shallow_2016_snapper_biomass <- summarise_at(Alligator_Shallow_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2016_snapper_biomass$Year <- ('2016')
Alligator_Shallow_2016_snapper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2016_grouper <- merge(Alligator_Shallow_2016, grouper, by = c("SPECIES_CD"))
Alligator_Shallow_2016_grouper_biomass <- summarise_at(Alligator_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2016_grouper_biomass$Year <- ('2016')
Alligator_Shallow_2016_grouper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2018 <- import("Alligator_Shallow/data/Alligator_Shallow_2018.xls")

Alligator_Shallow_2018_snapper <- merge(Alligator_Shallow_2018, snapper, by = c("SPECIES_CD"))
Alligator_Shallow_2018_snapper_biomass <- summarise_at(Alligator_Shallow_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2018_snapper_biomass$Year <- ('2018')
Alligator_Shallow_2018_snapper_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2018_grouper <- merge(Alligator_Shallow_2018, grouper, by = c("SPECIES_CD"))
Alligator_Shallow_2018_grouper_biomass <- summarise_at(Alligator_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2018_grouper_biomass$Year <- ('2018')
Alligator_Shallow_2018_grouper_biomass$Reef <- ('Alligator Shallow')



### Combine all years together for snapper_ and grouper_ seperately



Alligator_Shallow_snapper_1 <- rbind(Alligator_Shallow_1999_snapper_biomass,Alligator_Shallow_2000_snapper_biomass)
Alligator_Shallow_snapper_2 <- rbind(Alligator_Shallow_snapper_1,Alligator_Shallow_2001_snapper_biomass)
Alligator_Shallow_snapper_3 <- rbind(Alligator_Shallow_snapper_2,Alligator_Shallow_2002_snapper_biomass)
Alligator_Shallow_snapper_4 <- rbind(Alligator_Shallow_snapper_3,Alligator_Shallow_2003_snapper_biomass)
#Alligator_Shallow_snapper_5 <- rbind(Alligator_Shallow_snapper_4,Alligator_Shallow_2004_snapper_biomass)
Alligator_Shallow_snapper_6 <- rbind(Alligator_Shallow_snapper_4,Alligator_Shallow_2005_snapper_biomass)
Alligator_Shallow_snapper_7 <- rbind(Alligator_Shallow_snapper_6,Alligator_Shallow_2006_snapper_biomass)
Alligator_Shallow_snapper_8 <- rbind(Alligator_Shallow_snapper_7,Alligator_Shallow_2007_snapper_biomass)
Alligator_Shallow_snapper_9 <- rbind(Alligator_Shallow_snapper_8,Alligator_Shallow_2008_snapper_biomass)
Alligator_Shallow_snapper_10 <- rbind(Alligator_Shallow_snapper_9,Alligator_Shallow_2009_snapper_biomass)
Alligator_Shallow_snapper_11<- rbind(Alligator_Shallow_snapper_10,Alligator_Shallow_2010_snapper_biomass)
Alligator_Shallow_snapper_12 <- rbind(Alligator_Shallow_snapper_11,Alligator_Shallow_2011_snapper_biomass)
Alligator_Shallow_snapper_13 <- rbind(Alligator_Shallow_snapper_12,Alligator_Shallow_2012_snapper_biomass)
Alligator_Shallow_snapper_14 <- rbind(Alligator_Shallow_snapper_13,Alligator_Shallow_2014_snapper_biomass)
Alligator_Shallow_snapper_15 <- rbind(Alligator_Shallow_snapper_14,Alligator_Shallow_2016_snapper_biomass)
Alligator_Shallow_snapper_biomass_data_combined <- rbind(Alligator_Shallow_snapper_15,Alligator_Shallow_2018_snapper_biomass)



Alligator_Shallow_grouper_1 <- rbind(Alligator_Shallow_1999_grouper_biomass,Alligator_Shallow_2000_grouper_biomass)
Alligator_Shallow_grouper_2 <- rbind(Alligator_Shallow_grouper_1,Alligator_Shallow_2001_grouper_biomass)
Alligator_Shallow_grouper_3 <- rbind(Alligator_Shallow_grouper_2,Alligator_Shallow_2002_grouper_biomass)
Alligator_Shallow_grouper_4 <- rbind(Alligator_Shallow_grouper_3,Alligator_Shallow_2003_grouper_biomass)
#Alligator_Shallow_grouper_5 <- rbind(Alligator_Shallow_grouper_4,Alligator_Shallow_2004_grouper_biomass)
Alligator_Shallow_grouper_6 <- rbind(Alligator_Shallow_grouper_4,Alligator_Shallow_2005_grouper_biomass)
Alligator_Shallow_grouper_7 <- rbind(Alligator_Shallow_grouper_6,Alligator_Shallow_2006_grouper_biomass)
Alligator_Shallow_grouper_8 <- rbind(Alligator_Shallow_grouper_7,Alligator_Shallow_2007_grouper_biomass)
Alligator_Shallow_grouper_9 <- rbind(Alligator_Shallow_grouper_8,Alligator_Shallow_2008_grouper_biomass)
Alligator_Shallow_grouper_10 <- rbind(Alligator_Shallow_grouper_9,Alligator_Shallow_2009_grouper_biomass)
Alligator_Shallow_grouper_11<- rbind(Alligator_Shallow_grouper_10,Alligator_Shallow_2010_grouper_biomass)
Alligator_Shallow_grouper_12 <- rbind(Alligator_Shallow_grouper_11,Alligator_Shallow_2011_grouper_biomass)
Alligator_Shallow_grouper_13 <- rbind(Alligator_Shallow_grouper_12,Alligator_Shallow_2012_grouper_biomass)
Alligator_Shallow_grouper_14 <- rbind(Alligator_Shallow_grouper_13,Alligator_Shallow_2014_grouper_biomass)
Alligator_Shallow_grouper_15 <- rbind(Alligator_Shallow_grouper_14,Alligator_Shallow_2016_grouper_biomass)
Alligator_Shallow_grouper_biomass_data_combined <- rbind(Alligator_Shallow_grouper_15,Alligator_Shallow_2018_grouper_biomass)



export(Alligator_Shallow_snapper_biomass_data_combined, "Alligator_Shallow/data/Alligator_Shallow_snapper__biomass.csv")
export(Alligator_Shallow_grouper_biomass_data_combined, "Alligator_Shallow/data/Alligator_Shallow_grouper__biomass.csv")


# Dustan Rocks 

Dustan_Rocks_1999 <- import("Dustan_Rocks/data/Dustan_Rocks_1999.xls")


Dustan_Rocks_1999_snapper <- merge(Dustan_Rocks_1999, snapper, by = c("SPECIES_CD"))
Dustan_Rocks_1999_snapper_biomass <- summarise_at(Dustan_Rocks_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_1999_snapper_biomass$Year <- ('1999')
Dustan_Rocks_1999_snapper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_1999_grouper <- merge(Dustan_Rocks_1999, grouper, by = c("SPECIES_CD"))
Dustan_Rocks_1999_grouper_biomass <- summarise_at(Dustan_Rocks_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_1999_grouper_biomass$Year <- ('1999')
Dustan_Rocks_1999_grouper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2000 <- import("Dustan_Rocks/data/Dustan_Rocks_2000.xls")

Dustan_Rocks_2000_snapper <- merge(Dustan_Rocks_2000, snapper, by = c("SPECIES_CD"))
Dustan_Rocks_2000_snapper_biomass <- summarise_at(Dustan_Rocks_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2000_snapper_biomass$Year <- ('2000')
Dustan_Rocks_2000_snapper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2000_grouper <- merge(Dustan_Rocks_2000, grouper, by = c("SPECIES_CD"))
Dustan_Rocks_2000_grouper_biomass <- summarise_at(Dustan_Rocks_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2000_grouper_biomass$Year <- ('2000')
Dustan_Rocks_2000_grouper_biomass$Reef <- ('Dustan Rocks')

Dustan_Rocks_2001 <- import("Dustan_Rocks/data/Dustan_Rocks_2001.xls")

Dustan_Rocks_2001_snapper <- merge(Dustan_Rocks_2001, snapper, by = c("SPECIES_CD"))
Dustan_Rocks_2001_snapper_biomass <- summarise_at(Dustan_Rocks_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2001_snapper_biomass$Year <- ('2001')
Dustan_Rocks_2001_snapper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2001_grouper <- merge(Dustan_Rocks_2001, grouper, by = c("SPECIES_CD"))
Dustan_Rocks_2001_grouper_biomass <- summarise_at(Dustan_Rocks_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2001_grouper_biomass$Year <- ('2001')
Dustan_Rocks_2001_grouper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2002 <- import("Dustan_Rocks/data/Dustan_Rocks_2002.xls")

Dustan_Rocks_2002_snapper <- merge(Dustan_Rocks_2002, snapper, by = c("SPECIES_CD"))
Dustan_Rocks_2002_snapper_biomass <- summarise_at(Dustan_Rocks_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2002_snapper_biomass$Year <- ('2002')
Dustan_Rocks_2002_snapper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2002_grouper <- merge(Dustan_Rocks_2002, grouper, by = c("SPECIES_CD"))
Dustan_Rocks_2002_grouper_biomass <- summarise_at(Dustan_Rocks_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2002_grouper_biomass$Year <- ('2002')
Dustan_Rocks_2002_grouper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2003 <- import("Dustan_Rocks/data/Dustan_Rocks_2003.xls")

Dustan_Rocks_2003_snapper <- merge(Dustan_Rocks_2003, snapper, by = c("SPECIES_CD"))
Dustan_Rocks_2003_snapper_biomass <- summarise_at(Dustan_Rocks_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2003_snapper_biomass$Year <- ('2003')
Dustan_Rocks_2003_snapper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2003_grouper <- merge(Dustan_Rocks_2003, grouper, by = c("SPECIES_CD"))
Dustan_Rocks_2003_grouper_biomass <- summarise_at(Dustan_Rocks_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2003_grouper_biomass$Year <- ('2003')
Dustan_Rocks_2003_grouper_biomass$Reef <- ('Dustan Rocks')


# Dustan_Rocks_2004 <- import("Dustan_Rocks/data/Dustan_Rocks_2004.xls")
# 
# Dustan_Rocks_2004_snapper <- merge(Dustan_Rocks_2004, snapper, by = c("SPECIES_CD"))
# Dustan_Rocks_2004_snapper_biomass <- summarise_at(Dustan_Rocks_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Dustan_Rocks_2004_snapper_biomass$Year <- ('2004')
# Dustan_Rocks_2004_snapper_biomass$Reef <- ('Dustan Rocks')
# 
# 
# Dustan_Rocks_2004_grouper <- merge(Dustan_Rocks_2004, grouper, by = c("SPECIES_CD"))
# Dustan_Rocks_2004_grouper_biomass <- summarise_at(Dustan_Rocks_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Dustan_Rocks_2004_grouper_biomass$Year <- ('2004')
# Dustan_Rocks_2004_grouper_biomass$Reef <- ('Dustan Rocks')

Dustan_Rocks_2005 <- import("Dustan_Rocks/data/Dustan_Rocks_2005.xls")

Dustan_Rocks_2005_snapper <- merge(Dustan_Rocks_2005, snapper, by = c("SPECIES_CD"))
Dustan_Rocks_2005_snapper_biomass <- summarise_at(Dustan_Rocks_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2005_snapper_biomass$Year <- ('2005')
Dustan_Rocks_2005_snapper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2005_grouper <- merge(Dustan_Rocks_2005, grouper, by = c("SPECIES_CD"))
Dustan_Rocks_2005_grouper_biomass <- summarise_at(Dustan_Rocks_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2005_grouper_biomass$Year <- ('2005')
Dustan_Rocks_2005_grouper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2006 <- import("Dustan_Rocks/data/Dustan_Rocks_2006.xls")

Dustan_Rocks_2006_snapper <- merge(Dustan_Rocks_2006, snapper, by = c("SPECIES_CD"))
Dustan_Rocks_2006_snapper_biomass <- summarise_at(Dustan_Rocks_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2006_snapper_biomass$Year <- ('2006')
Dustan_Rocks_2006_snapper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2006_grouper <- merge(Dustan_Rocks_2006, grouper, by = c("SPECIES_CD"))
Dustan_Rocks_2006_grouper_biomass <- summarise_at(Dustan_Rocks_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2006_grouper_biomass$Year <- ('2006')
Dustan_Rocks_2006_grouper_biomass$Reef <- ('Dustan Rocks')

Dustan_Rocks_2007 <- import("Dustan_Rocks/data/Dustan_Rocks_2007.xls")

Dustan_Rocks_2007_snapper <- merge(Dustan_Rocks_2007, snapper, by = c("SPECIES_CD"))
Dustan_Rocks_2007_snapper_biomass <- summarise_at(Dustan_Rocks_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2007_snapper_biomass$Year <- ('2007')
Dustan_Rocks_2007_snapper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2007_grouper <- merge(Dustan_Rocks_2007, grouper, by = c("SPECIES_CD"))
Dustan_Rocks_2007_grouper_biomass <- summarise_at(Dustan_Rocks_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2007_grouper_biomass$Year <- ('2007')
Dustan_Rocks_2007_grouper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2008 <- import("Dustan_Rocks/data/Dustan_Rocks_2008.xls")

Dustan_Rocks_2008_snapper <- merge(Dustan_Rocks_2008, snapper, by = c("SPECIES_CD"))
Dustan_Rocks_2008_snapper_biomass <- summarise_at(Dustan_Rocks_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2008_snapper_biomass$Year <- ('2008')
Dustan_Rocks_2008_snapper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2008_grouper <- merge(Dustan_Rocks_2008, grouper, by = c("SPECIES_CD"))
Dustan_Rocks_2008_grouper_biomass <- summarise_at(Dustan_Rocks_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2008_grouper_biomass$Year <- ('2008')
Dustan_Rocks_2008_grouper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2009 <- import("Dustan_Rocks/data/Dustan_Rocks_2009.xls")

Dustan_Rocks_2009_snapper <- merge(Dustan_Rocks_2009, snapper, by = c("SPECIES_CD"))
Dustan_Rocks_2009_snapper_biomass <- summarise_at(Dustan_Rocks_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2009_snapper_biomass$Year <- ('2009')
Dustan_Rocks_2009_snapper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2009_grouper <- merge(Dustan_Rocks_2009, grouper, by = c("SPECIES_CD"))
Dustan_Rocks_2009_grouper_biomass <- summarise_at(Dustan_Rocks_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2009_grouper_biomass$Year <- ('2009')
Dustan_Rocks_2009_grouper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2010 <- import("Dustan_Rocks/data/Dustan_Rocks_2010.xls")

Dustan_Rocks_2010_snapper <- merge(Dustan_Rocks_2010, snapper, by = c("SPECIES_CD"))
Dustan_Rocks_2010_snapper_biomass <- summarise_at(Dustan_Rocks_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2010_snapper_biomass$Year <- ('2010')
Dustan_Rocks_2010_snapper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2010_grouper <- merge(Dustan_Rocks_2010, grouper, by = c("SPECIES_CD"))
Dustan_Rocks_2010_grouper_biomass <- summarise_at(Dustan_Rocks_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2010_grouper_biomass$Year <- ('2010')
Dustan_Rocks_2010_grouper_biomass$Reef <- ('Dustan Rocks')

Dustan_Rocks_2011 <- import("Dustan_Rocks/data/Dustan_Rocks_2011.xls")

Dustan_Rocks_2011_snapper <- merge(Dustan_Rocks_2011, snapper, by = c("SPECIES_CD"))
Dustan_Rocks_2011_snapper_biomass <- summarise_at(Dustan_Rocks_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2011_snapper_biomass$Year <- ('2011')
Dustan_Rocks_2011_snapper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2011_grouper <- merge(Dustan_Rocks_2011, grouper, by = c("SPECIES_CD"))
Dustan_Rocks_2011_grouper_biomass <- summarise_at(Dustan_Rocks_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2011_grouper_biomass$Year <- ('2011')
Dustan_Rocks_2011_grouper_biomass$Reef <- ('Dustan Rocks')



Dustan_Rocks_2012 <- import("Dustan_Rocks/data/Dustan_Rocks_2012.xls")

Dustan_Rocks_2012_snapper <- merge(Dustan_Rocks_2012, snapper, by = c("SPECIES_CD"))
Dustan_Rocks_2012_snapper_biomass <- summarise_at(Dustan_Rocks_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2012_snapper_biomass$Year <- ('2012')
Dustan_Rocks_2012_snapper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2012_grouper <- merge(Dustan_Rocks_2012, grouper, by = c("SPECIES_CD"))
Dustan_Rocks_2012_grouper_biomass <- summarise_at(Dustan_Rocks_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2012_grouper_biomass$Year <- ('2012')
Dustan_Rocks_2012_grouper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2014 <- import("Dustan_Rocks/data/Dustan_Rocks_2014.xls")

Dustan_Rocks_2014_snapper <- merge(Dustan_Rocks_2014, snapper, by = c("SPECIES_CD"))
Dustan_Rocks_2014_snapper_biomass <- summarise_at(Dustan_Rocks_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2014_snapper_biomass$Year <- ('2014')
Dustan_Rocks_2014_snapper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2014_grouper <- merge(Dustan_Rocks_2014, grouper, by = c("SPECIES_CD"))
Dustan_Rocks_2014_grouper_biomass <- summarise_at(Dustan_Rocks_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2014_grouper_biomass$Year <- ('2014')
Dustan_Rocks_2014_grouper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2016 <- import("Dustan_Rocks/data/Dustan_Rocks_2016.xls")

Dustan_Rocks_2016_snapper <- merge(Dustan_Rocks_2016, snapper, by = c("SPECIES_CD"))
Dustan_Rocks_2016_snapper_biomass <- summarise_at(Dustan_Rocks_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2016_snapper_biomass$Year <- ('2016')
Dustan_Rocks_2016_snapper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2016_grouper <- merge(Dustan_Rocks_2016, grouper, by = c("SPECIES_CD"))
Dustan_Rocks_2016_grouper_biomass <- summarise_at(Dustan_Rocks_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2016_grouper_biomass$Year <- ('2016')
Dustan_Rocks_2016_grouper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2018 <- import("Dustan_Rocks/data/Dustan_Rocks_2018.xls")

Dustan_Rocks_2018_snapper <- merge(Dustan_Rocks_2018, snapper, by = c("SPECIES_CD"))
Dustan_Rocks_2018_snapper_biomass <- summarise_at(Dustan_Rocks_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2018_snapper_biomass$Year <- ('2018')
Dustan_Rocks_2018_snapper_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2018_grouper <- merge(Dustan_Rocks_2018, grouper, by = c("SPECIES_CD"))
Dustan_Rocks_2018_grouper_biomass <- summarise_at(Dustan_Rocks_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2018_grouper_biomass$Year <- ('2018')
Dustan_Rocks_2018_grouper_biomass$Reef <- ('Dustan Rocks')



### Combine all years together for snapper_ and grouper_ seperately



Dustan_Rocks_snapper_1 <- rbind(Dustan_Rocks_1999_snapper_biomass,Dustan_Rocks_2000_snapper_biomass)
Dustan_Rocks_snapper_2 <- rbind(Dustan_Rocks_snapper_1,Dustan_Rocks_2001_snapper_biomass)
Dustan_Rocks_snapper_3 <- rbind(Dustan_Rocks_snapper_2,Dustan_Rocks_2002_snapper_biomass)
Dustan_Rocks_snapper_4 <- rbind(Dustan_Rocks_snapper_3,Dustan_Rocks_2003_snapper_biomass)
#Dustan_Rocks_snapper_5 <- rbind(Dustan_Rocks_snapper_4,Dustan_Rocks_2004_snapper_biomass)
Dustan_Rocks_snapper_6 <- rbind(Dustan_Rocks_snapper_4,Dustan_Rocks_2005_snapper_biomass)
Dustan_Rocks_snapper_7 <- rbind(Dustan_Rocks_snapper_6,Dustan_Rocks_2006_snapper_biomass)
Dustan_Rocks_snapper_8 <- rbind(Dustan_Rocks_snapper_7,Dustan_Rocks_2007_snapper_biomass)
Dustan_Rocks_snapper_9 <- rbind(Dustan_Rocks_snapper_8,Dustan_Rocks_2008_snapper_biomass)
Dustan_Rocks_snapper_10 <- rbind(Dustan_Rocks_snapper_9,Dustan_Rocks_2009_snapper_biomass)
Dustan_Rocks_snapper_11<- rbind(Dustan_Rocks_snapper_10,Dustan_Rocks_2010_snapper_biomass)
Dustan_Rocks_snapper_12 <- rbind(Dustan_Rocks_snapper_11,Dustan_Rocks_2011_snapper_biomass)
Dustan_Rocks_snapper_13 <- rbind(Dustan_Rocks_snapper_12,Dustan_Rocks_2012_snapper_biomass)
Dustan_Rocks_snapper_14 <- rbind(Dustan_Rocks_snapper_13,Dustan_Rocks_2014_snapper_biomass)
Dustan_Rocks_snapper_15 <- rbind(Dustan_Rocks_snapper_14,Dustan_Rocks_2016_snapper_biomass)
Dustan_Rocks_snapper_biomass_data_combined <- rbind(Dustan_Rocks_snapper_15,Dustan_Rocks_2018_snapper_biomass)



Dustan_Rocks_grouper_1 <- rbind(Dustan_Rocks_1999_grouper_biomass,Dustan_Rocks_2000_grouper_biomass)
Dustan_Rocks_grouper_2 <- rbind(Dustan_Rocks_grouper_1,Dustan_Rocks_2001_grouper_biomass)
Dustan_Rocks_grouper_3 <- rbind(Dustan_Rocks_grouper_2,Dustan_Rocks_2002_grouper_biomass)
Dustan_Rocks_grouper_4 <- rbind(Dustan_Rocks_grouper_3,Dustan_Rocks_2003_grouper_biomass)
#Dustan_Rocks_grouper_5 <- rbind(Dustan_Rocks_grouper_4,Dustan_Rocks_2004_grouper_biomass)
Dustan_Rocks_grouper_6 <- rbind(Dustan_Rocks_grouper_4,Dustan_Rocks_2005_grouper_biomass)
Dustan_Rocks_grouper_7 <- rbind(Dustan_Rocks_grouper_6,Dustan_Rocks_2006_grouper_biomass)
Dustan_Rocks_grouper_8 <- rbind(Dustan_Rocks_grouper_7,Dustan_Rocks_2007_grouper_biomass)
Dustan_Rocks_grouper_9 <- rbind(Dustan_Rocks_grouper_8,Dustan_Rocks_2008_grouper_biomass)
Dustan_Rocks_grouper_10 <- rbind(Dustan_Rocks_grouper_9,Dustan_Rocks_2009_grouper_biomass)
Dustan_Rocks_grouper_11<- rbind(Dustan_Rocks_grouper_10,Dustan_Rocks_2010_grouper_biomass)
Dustan_Rocks_grouper_12 <- rbind(Dustan_Rocks_grouper_11,Dustan_Rocks_2011_grouper_biomass)
Dustan_Rocks_grouper_13 <- rbind(Dustan_Rocks_grouper_12,Dustan_Rocks_2012_grouper_biomass)
Dustan_Rocks_grouper_14 <- rbind(Dustan_Rocks_grouper_13,Dustan_Rocks_2014_grouper_biomass)
Dustan_Rocks_grouper_15 <- rbind(Dustan_Rocks_grouper_14,Dustan_Rocks_2016_grouper_biomass)
Dustan_Rocks_grouper_biomass_data_combined <- rbind(Dustan_Rocks_grouper_15,Dustan_Rocks_2018_grouper_biomass)



export(Dustan_Rocks_snapper_biomass_data_combined, "Dustan_Rocks/data/Dustan_Rocks_snapper__biomass.csv")
export(Dustan_Rocks_grouper_biomass_data_combined, "Dustan_Rocks/data/Dustan_Rocks_grouper__biomass.csv")



# Long Key 

Long_Key_1999 <- import("Long_Key/data/Long_Key_1999.xls")


Long_Key_1999_snapper <- merge(Long_Key_1999, snapper, by = c("SPECIES_CD"))
Long_Key_1999_snapper_biomass <- summarise_at(Long_Key_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_1999_snapper_biomass$Year <- ('1999')
Long_Key_1999_snapper_biomass$Reef <- ('Long Key')


Long_Key_1999_grouper <- merge(Long_Key_1999, grouper, by = c("SPECIES_CD"))
Long_Key_1999_grouper_biomass <- summarise_at(Long_Key_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_1999_grouper_biomass$Year <- ('1999')
Long_Key_1999_grouper_biomass$Reef <- ('Long Key')


Long_Key_2000 <- import("Long_Key/data/Long_Key_2000.xls")

Long_Key_2000_snapper <- merge(Long_Key_2000, snapper, by = c("SPECIES_CD"))
Long_Key_2000_snapper_biomass <- summarise_at(Long_Key_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2000_snapper_biomass$Year <- ('2000')
Long_Key_2000_snapper_biomass$Reef <- ('Long Key')


Long_Key_2000_grouper <- merge(Long_Key_2000, grouper, by = c("SPECIES_CD"))
Long_Key_2000_grouper_biomass <- summarise_at(Long_Key_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2000_grouper_biomass$Year <- ('2000')
Long_Key_2000_grouper_biomass$Reef <- ('Long Key')

Long_Key_2001 <- import("Long_Key/data/Long_Key_2001.xls")

Long_Key_2001_snapper <- merge(Long_Key_2001, snapper, by = c("SPECIES_CD"))
Long_Key_2001_snapper_biomass <- summarise_at(Long_Key_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2001_snapper_biomass$Year <- ('2001')
Long_Key_2001_snapper_biomass$Reef <- ('Long Key')


Long_Key_2001_grouper <- merge(Long_Key_2001, grouper, by = c("SPECIES_CD"))
Long_Key_2001_grouper_biomass <- summarise_at(Long_Key_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2001_grouper_biomass$Year <- ('2001')
Long_Key_2001_grouper_biomass$Reef <- ('Long Key')


Long_Key_2002 <- import("Long_Key/data/Long_Key_2002.xls")

Long_Key_2002_snapper <- merge(Long_Key_2002, snapper, by = c("SPECIES_CD"))
Long_Key_2002_snapper_biomass <- summarise_at(Long_Key_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2002_snapper_biomass$Year <- ('2002')
Long_Key_2002_snapper_biomass$Reef <- ('Long Key')


Long_Key_2002_grouper <- merge(Long_Key_2002, grouper, by = c("SPECIES_CD"))
Long_Key_2002_grouper_biomass <- summarise_at(Long_Key_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2002_grouper_biomass$Year <- ('2002')
Long_Key_2002_grouper_biomass$Reef <- ('Long Key')


Long_Key_2003 <- import("Long_Key/data/Long_Key_2003.xls")

Long_Key_2003_snapper <- merge(Long_Key_2003, snapper, by = c("SPECIES_CD"))
Long_Key_2003_snapper_biomass <- summarise_at(Long_Key_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2003_snapper_biomass$Year <- ('2003')
Long_Key_2003_snapper_biomass$Reef <- ('Long Key')


Long_Key_2003_grouper <- merge(Long_Key_2003, grouper, by = c("SPECIES_CD"))
Long_Key_2003_grouper_biomass <- summarise_at(Long_Key_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2003_grouper_biomass$Year <- ('2003')
Long_Key_2003_grouper_biomass$Reef <- ('Long Key')


# Long_Key_2004 <- import("Long_Key/data/Long_Key_2004.xls")
# 
# Long_Key_2004_snapper <- merge(Long_Key_2004, snapper, by = c("SPECIES_CD"))
# Long_Key_2004_snapper_biomass <- summarise_at(Long_Key_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Long_Key_2004_snapper_biomass$Year <- ('2004')
# Long_Key_2004_snapper_biomass$Reef <- ('Long Key')
# 
# 
# Long_Key_2004_grouper <- merge(Long_Key_2004, grouper, by = c("SPECIES_CD"))
# Long_Key_2004_grouper_biomass <- summarise_at(Long_Key_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Long_Key_2004_grouper_biomass$Year <- ('2004')
# Long_Key_2004_grouper_biomass$Reef <- ('Long Key')

Long_Key_2005 <- import("Long_Key/data/Long_Key_2005.xls")

Long_Key_2005_snapper <- merge(Long_Key_2005, snapper, by = c("SPECIES_CD"))
Long_Key_2005_snapper_biomass <- summarise_at(Long_Key_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2005_snapper_biomass$Year <- ('2005')
Long_Key_2005_snapper_biomass$Reef <- ('Long Key')


Long_Key_2005_grouper <- merge(Long_Key_2005, grouper, by = c("SPECIES_CD"))
Long_Key_2005_grouper_biomass <- summarise_at(Long_Key_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2005_grouper_biomass$Year <- ('2005')
Long_Key_2005_grouper_biomass$Reef <- ('Long Key')


Long_Key_2006 <- import("Long_Key/data/Long_Key_2006.xls")

Long_Key_2006_snapper <- merge(Long_Key_2006, snapper, by = c("SPECIES_CD"))
Long_Key_2006_snapper_biomass <- summarise_at(Long_Key_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2006_snapper_biomass$Year <- ('2006')
Long_Key_2006_snapper_biomass$Reef <- ('Long Key')


Long_Key_2006_grouper <- merge(Long_Key_2006, grouper, by = c("SPECIES_CD"))
Long_Key_2006_grouper_biomass <- summarise_at(Long_Key_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2006_grouper_biomass$Year <- ('2006')
Long_Key_2006_grouper_biomass$Reef <- ('Long Key')

Long_Key_2007 <- import("Long_Key/data/Long_Key_2007.xls")

Long_Key_2007_snapper <- merge(Long_Key_2007, snapper, by = c("SPECIES_CD"))
Long_Key_2007_snapper_biomass <- summarise_at(Long_Key_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2007_snapper_biomass$Year <- ('2007')
Long_Key_2007_snapper_biomass$Reef <- ('Long Key')


Long_Key_2007_grouper <- merge(Long_Key_2007, grouper, by = c("SPECIES_CD"))
Long_Key_2007_grouper_biomass <- summarise_at(Long_Key_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2007_grouper_biomass$Year <- ('2007')
Long_Key_2007_grouper_biomass$Reef <- ('Long Key')


Long_Key_2008 <- import("Long_Key/data/Long_Key_2008.xls")

Long_Key_2008_snapper <- merge(Long_Key_2008, snapper, by = c("SPECIES_CD"))
Long_Key_2008_snapper_biomass <- summarise_at(Long_Key_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2008_snapper_biomass$Year <- ('2008')
Long_Key_2008_snapper_biomass$Reef <- ('Long Key')


Long_Key_2008_grouper <- merge(Long_Key_2008, grouper, by = c("SPECIES_CD"))
Long_Key_2008_grouper_biomass <- summarise_at(Long_Key_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2008_grouper_biomass$Year <- ('2008')
Long_Key_2008_grouper_biomass$Reef <- ('Long Key')


Long_Key_2009 <- import("Long_Key/data/Long_Key_2009.xls")

Long_Key_2009_snapper <- merge(Long_Key_2009, snapper, by = c("SPECIES_CD"))
Long_Key_2009_snapper_biomass <- summarise_at(Long_Key_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2009_snapper_biomass$Year <- ('2009')
Long_Key_2009_snapper_biomass$Reef <- ('Long Key')


Long_Key_2009_grouper <- merge(Long_Key_2009, grouper, by = c("SPECIES_CD"))
Long_Key_2009_grouper_biomass <- summarise_at(Long_Key_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2009_grouper_biomass$Year <- ('2009')
Long_Key_2009_grouper_biomass$Reef <- ('Long Key')


Long_Key_2010 <- import("Long_Key/data/Long_Key_2010.xls")

Long_Key_2010_snapper <- merge(Long_Key_2010, snapper, by = c("SPECIES_CD"))
Long_Key_2010_snapper_biomass <- summarise_at(Long_Key_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2010_snapper_biomass$Year <- ('2010')
Long_Key_2010_snapper_biomass$Reef <- ('Long Key')


Long_Key_2010_grouper <- merge(Long_Key_2010, grouper, by = c("SPECIES_CD"))
Long_Key_2010_grouper_biomass <- summarise_at(Long_Key_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2010_grouper_biomass$Year <- ('2010')
Long_Key_2010_grouper_biomass$Reef <- ('Long Key')

Long_Key_2011 <- import("Long_Key/data/Long_Key_2011.xls")

Long_Key_2011_snapper <- merge(Long_Key_2011, snapper, by = c("SPECIES_CD"))
Long_Key_2011_snapper_biomass <- summarise_at(Long_Key_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2011_snapper_biomass$Year <- ('2011')
Long_Key_2011_snapper_biomass$Reef <- ('Long Key')


Long_Key_2011_grouper <- merge(Long_Key_2011, grouper, by = c("SPECIES_CD"))
Long_Key_2011_grouper_biomass <- summarise_at(Long_Key_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2011_grouper_biomass$Year <- ('2011')
Long_Key_2011_grouper_biomass$Reef <- ('Long Key')



Long_Key_2012 <- import("Long_Key/data/Long_Key_2012.xls")

Long_Key_2012_snapper <- merge(Long_Key_2012, snapper, by = c("SPECIES_CD"))
Long_Key_2012_snapper_biomass <- summarise_at(Long_Key_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2012_snapper_biomass$Year <- ('2012')
Long_Key_2012_snapper_biomass$Reef <- ('Long Key')


Long_Key_2012_grouper <- merge(Long_Key_2012, grouper, by = c("SPECIES_CD"))
Long_Key_2012_grouper_biomass <- summarise_at(Long_Key_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2012_grouper_biomass$Year <- ('2012')
Long_Key_2012_grouper_biomass$Reef <- ('Long Key')


Long_Key_2014 <- import("Long_Key/data/Long_Key_2014.xls")

Long_Key_2014_snapper <- merge(Long_Key_2014, snapper, by = c("SPECIES_CD"))
Long_Key_2014_snapper_biomass <- summarise_at(Long_Key_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2014_snapper_biomass$Year <- ('2014')
Long_Key_2014_snapper_biomass$Reef <- ('Long Key')


Long_Key_2014_grouper <- merge(Long_Key_2014, grouper, by = c("SPECIES_CD"))
Long_Key_2014_grouper_biomass <- summarise_at(Long_Key_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2014_grouper_biomass$Year <- ('2014')
Long_Key_2014_grouper_biomass$Reef <- ('Long Key')


Long_Key_2016 <- import("Long_Key/data/Long_Key_2016.xls")

Long_Key_2016_snapper <- merge(Long_Key_2016, snapper, by = c("SPECIES_CD"))
Long_Key_2016_snapper_biomass <- summarise_at(Long_Key_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2016_snapper_biomass$Year <- ('2016')
Long_Key_2016_snapper_biomass$Reef <- ('Long Key')


Long_Key_2016_grouper <- merge(Long_Key_2016, grouper, by = c("SPECIES_CD"))
Long_Key_2016_grouper_biomass <- summarise_at(Long_Key_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2016_grouper_biomass$Year <- ('2016')
Long_Key_2016_grouper_biomass$Reef <- ('Long Key')


Long_Key_2018 <- import("Long_Key/data/Long_Key_2018.xls")

Long_Key_2018_snapper <- merge(Long_Key_2018, snapper, by = c("SPECIES_CD"))
Long_Key_2018_snapper_biomass <- summarise_at(Long_Key_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2018_snapper_biomass$Year <- ('2018')
Long_Key_2018_snapper_biomass$Reef <- ('Long Key')


Long_Key_2018_grouper <- merge(Long_Key_2018, grouper, by = c("SPECIES_CD"))
Long_Key_2018_grouper_biomass <- summarise_at(Long_Key_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2018_grouper_biomass$Year <- ('2018')
Long_Key_2018_grouper_biomass$Reef <- ('Long Key')



### Combine all years together for snapper_ and grouper_ seperately



Long_Key_snapper_1 <- rbind(Long_Key_1999_snapper_biomass,Long_Key_2000_snapper_biomass)
Long_Key_snapper_2 <- rbind(Long_Key_snapper_1,Long_Key_2001_snapper_biomass)
Long_Key_snapper_3 <- rbind(Long_Key_snapper_2,Long_Key_2002_snapper_biomass)
Long_Key_snapper_4 <- rbind(Long_Key_snapper_3,Long_Key_2003_snapper_biomass)
#Long_Key_snapper_5 <- rbind(Long_Key_snapper_4,Long_Key_2004_snapper_biomass)
Long_Key_snapper_6 <- rbind(Long_Key_snapper_4,Long_Key_2005_snapper_biomass)
Long_Key_snapper_7 <- rbind(Long_Key_snapper_6,Long_Key_2006_snapper_biomass)
Long_Key_snapper_8 <- rbind(Long_Key_snapper_7,Long_Key_2007_snapper_biomass)
Long_Key_snapper_9 <- rbind(Long_Key_snapper_8,Long_Key_2008_snapper_biomass)
Long_Key_snapper_10 <- rbind(Long_Key_snapper_9,Long_Key_2009_snapper_biomass)
Long_Key_snapper_11<- rbind(Long_Key_snapper_10,Long_Key_2010_snapper_biomass)
Long_Key_snapper_12 <- rbind(Long_Key_snapper_11,Long_Key_2011_snapper_biomass)
Long_Key_snapper_13 <- rbind(Long_Key_snapper_12,Long_Key_2012_snapper_biomass)
Long_Key_snapper_14 <- rbind(Long_Key_snapper_13,Long_Key_2014_snapper_biomass)
Long_Key_snapper_15 <- rbind(Long_Key_snapper_14,Long_Key_2016_snapper_biomass)
Long_Key_snapper_biomass_data_combined <- rbind(Long_Key_snapper_15,Long_Key_2018_snapper_biomass)



Long_Key_grouper_1 <- rbind(Long_Key_1999_grouper_biomass,Long_Key_2000_grouper_biomass)
Long_Key_grouper_2 <- rbind(Long_Key_grouper_1,Long_Key_2001_grouper_biomass)
Long_Key_grouper_3 <- rbind(Long_Key_grouper_2,Long_Key_2002_grouper_biomass)
Long_Key_grouper_4 <- rbind(Long_Key_grouper_3,Long_Key_2003_grouper_biomass)
#Long_Key_grouper_5 <- rbind(Long_Key_grouper_4,Long_Key_2004_grouper_biomass)
Long_Key_grouper_6 <- rbind(Long_Key_grouper_4,Long_Key_2005_grouper_biomass)
Long_Key_grouper_7 <- rbind(Long_Key_grouper_6,Long_Key_2006_grouper_biomass)
Long_Key_grouper_8 <- rbind(Long_Key_grouper_7,Long_Key_2007_grouper_biomass)
Long_Key_grouper_9 <- rbind(Long_Key_grouper_8,Long_Key_2008_grouper_biomass)
Long_Key_grouper_10 <- rbind(Long_Key_grouper_9,Long_Key_2009_grouper_biomass)
Long_Key_grouper_11<- rbind(Long_Key_grouper_10,Long_Key_2010_grouper_biomass)
Long_Key_grouper_12 <- rbind(Long_Key_grouper_11,Long_Key_2011_grouper_biomass)
Long_Key_grouper_13 <- rbind(Long_Key_grouper_12,Long_Key_2012_grouper_biomass)
Long_Key_grouper_14 <- rbind(Long_Key_grouper_13,Long_Key_2014_grouper_biomass)
Long_Key_grouper_15 <- rbind(Long_Key_grouper_14,Long_Key_2016_grouper_biomass)
Long_Key_grouper_biomass_data_combined <- rbind(Long_Key_grouper_15,Long_Key_2018_grouper_biomass)



export(Long_Key_snapper_biomass_data_combined, "Long_Key/data/Long_Key_snapper__biomass.csv")
export(Long_Key_grouper_biomass_data_combined, "Long_Key/data/Long_Key_grouper__biomass.csv")



# Molasses_Keys (no data)

Molasses_Keys_1999 <- import("Molasses_Keys/data/Molasses_Keys_1999.xls")


Molasses_Keys_1999_snapper <- merge(Molasses_Keys_1999, snapper, by = c("SPECIES_CD"))
Molasses_Keys_1999_snapper_biomass <- summarise_at(Molasses_Keys_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_1999_snapper_biomass$Year <- ('1999')
Molasses_Keys_1999_snapper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_1999_grouper <- merge(Molasses_Keys_1999, grouper, by = c("SPECIES_CD"))
Molasses_Keys_1999_grouper_biomass <- summarise_at(Molasses_Keys_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_1999_grouper_biomass$Year <- ('1999')
Molasses_Keys_1999_grouper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2000 <- import("Molasses_Keys/data/Molasses_Keys_2000.xls")

Molasses_Keys_2000_snapper <- merge(Molasses_Keys_2000, snapper, by = c("SPECIES_CD"))
Molasses_Keys_2000_snapper_biomass <- summarise_at(Molasses_Keys_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2000_snapper_biomass$Year <- ('2000')
Molasses_Keys_2000_snapper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2000_grouper <- merge(Molasses_Keys_2000, grouper, by = c("SPECIES_CD"))
Molasses_Keys_2000_grouper_biomass <- summarise_at(Molasses_Keys_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2000_grouper_biomass$Year <- ('2000')
Molasses_Keys_2000_grouper_biomass$Reef <- ('Molasses Keys')

Molasses_Keys_2001 <- import("Molasses_Keys/data/Molasses_Keys_2001.xls")

Molasses_Keys_2001_snapper <- merge(Molasses_Keys_2001, snapper, by = c("SPECIES_CD"))
Molasses_Keys_2001_snapper_biomass <- summarise_at(Molasses_Keys_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2001_snapper_biomass$Year <- ('2001')
Molasses_Keys_2001_snapper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2001_grouper <- merge(Molasses_Keys_2001, grouper, by = c("SPECIES_CD"))
Molasses_Keys_2001_grouper_biomass <- summarise_at(Molasses_Keys_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2001_grouper_biomass$Year <- ('2001')
Molasses_Keys_2001_grouper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2002 <- import("Molasses_Keys/data/Molasses_Keys_2002.xls")

Molasses_Keys_2002_snapper <- merge(Molasses_Keys_2002, snapper, by = c("SPECIES_CD"))
Molasses_Keys_2002_snapper_biomass <- summarise_at(Molasses_Keys_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2002_snapper_biomass$Year <- ('2002')
Molasses_Keys_2002_snapper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2002_grouper <- merge(Molasses_Keys_2002, grouper, by = c("SPECIES_CD"))
Molasses_Keys_2002_grouper_biomass <- summarise_at(Molasses_Keys_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2002_grouper_biomass$Year <- ('2002')
Molasses_Keys_2002_grouper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2003 <- import("Molasses_Keys/data/Molasses_Keys_2003.xls")

Molasses_Keys_2003_snapper <- merge(Molasses_Keys_2003, snapper, by = c("SPECIES_CD"))
Molasses_Keys_2003_snapper_biomass <- summarise_at(Molasses_Keys_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2003_snapper_biomass$Year <- ('2003')
Molasses_Keys_2003_snapper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2003_grouper <- merge(Molasses_Keys_2003, grouper, by = c("SPECIES_CD"))
Molasses_Keys_2003_grouper_biomass <- summarise_at(Molasses_Keys_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2003_grouper_biomass$Year <- ('2003')
Molasses_Keys_2003_grouper_biomass$Reef <- ('Molasses Keys')


# Molasses_Keys_2004 <- import("Molasses_Keys/data/Molasses_Keys_2004.xls")
# 
# Molasses_Keys_2004_snapper <- merge(Molasses_Keys_2004, snapper, by = c("SPECIES_CD"))
# Molasses_Keys_2004_snapper_biomass <- summarise_at(Molasses_Keys_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Molasses_Keys_2004_snapper_biomass$Year <- ('2004')
# Molasses_Keys_2004_snapper_biomass$Reef <- ('Molasses Keys')
# 
# 
# Molasses_Keys_2004_grouper <- merge(Molasses_Keys_2004, grouper, by = c("SPECIES_CD"))
# Molasses_Keys_2004_grouper_biomass <- summarise_at(Molasses_Keys_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Molasses_Keys_2004_grouper_biomass$Year <- ('2004')
# Molasses_Keys_2004_grouper_biomass$Reef <- ('Molasses Keys')

Molasses_Keys_2005 <- import("Molasses_Keys/data/Molasses_Keys_2005.xls")

Molasses_Keys_2005_snapper <- merge(Molasses_Keys_2005, snapper, by = c("SPECIES_CD"))
Molasses_Keys_2005_snapper_biomass <- summarise_at(Molasses_Keys_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2005_snapper_biomass$Year <- ('2005')
Molasses_Keys_2005_snapper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2005_grouper <- merge(Molasses_Keys_2005, grouper, by = c("SPECIES_CD"))
Molasses_Keys_2005_grouper_biomass <- summarise_at(Molasses_Keys_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2005_grouper_biomass$Year <- ('2005')
Molasses_Keys_2005_grouper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2006 <- import("Molasses_Keys/data/Molasses_Keys_2006.xls")

Molasses_Keys_2006_snapper <- merge(Molasses_Keys_2006, snapper, by = c("SPECIES_CD"))
Molasses_Keys_2006_snapper_biomass <- summarise_at(Molasses_Keys_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2006_snapper_biomass$Year <- ('2006')
Molasses_Keys_2006_snapper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2006_grouper <- merge(Molasses_Keys_2006, grouper, by = c("SPECIES_CD"))
Molasses_Keys_2006_grouper_biomass <- summarise_at(Molasses_Keys_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2006_grouper_biomass$Year <- ('2006')
Molasses_Keys_2006_grouper_biomass$Reef <- ('Molasses Keys')

Molasses_Keys_2007 <- import("Molasses_Keys/data/Molasses_Keys_2007.xls")

Molasses_Keys_2007_snapper <- merge(Molasses_Keys_2007, snapper, by = c("SPECIES_CD"))
Molasses_Keys_2007_snapper_biomass <- summarise_at(Molasses_Keys_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2007_snapper_biomass$Year <- ('2007')
Molasses_Keys_2007_snapper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2007_grouper <- merge(Molasses_Keys_2007, grouper, by = c("SPECIES_CD"))
Molasses_Keys_2007_grouper_biomass <- summarise_at(Molasses_Keys_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2007_grouper_biomass$Year <- ('2007')
Molasses_Keys_2007_grouper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2008 <- import("Molasses_Keys/data/Molasses_Keys_2008.xls")

Molasses_Keys_2008_snapper <- merge(Molasses_Keys_2008, snapper, by = c("SPECIES_CD"))
Molasses_Keys_2008_snapper_biomass <- summarise_at(Molasses_Keys_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2008_snapper_biomass$Year <- ('2008')
Molasses_Keys_2008_snapper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2008_grouper <- merge(Molasses_Keys_2008, grouper, by = c("SPECIES_CD"))
Molasses_Keys_2008_grouper_biomass <- summarise_at(Molasses_Keys_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2008_grouper_biomass$Year <- ('2008')
Molasses_Keys_2008_grouper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2009 <- import("Molasses_Keys/data/Molasses_Keys_2009.xls")

Molasses_Keys_2009_snapper <- merge(Molasses_Keys_2009, snapper, by = c("SPECIES_CD"))
Molasses_Keys_2009_snapper_biomass <- summarise_at(Molasses_Keys_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2009_snapper_biomass$Year <- ('2009')
Molasses_Keys_2009_snapper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2009_grouper <- merge(Molasses_Keys_2009, grouper, by = c("SPECIES_CD"))
Molasses_Keys_2009_grouper_biomass <- summarise_at(Molasses_Keys_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2009_grouper_biomass$Year <- ('2009')
Molasses_Keys_2009_grouper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2010 <- import("Molasses_Keys/data/Molasses_Keys_2010.xls")

Molasses_Keys_2010_snapper <- merge(Molasses_Keys_2010, snapper, by = c("SPECIES_CD"))
Molasses_Keys_2010_snapper_biomass <- summarise_at(Molasses_Keys_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2010_snapper_biomass$Year <- ('2010')
Molasses_Keys_2010_snapper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2010_grouper <- merge(Molasses_Keys_2010, grouper, by = c("SPECIES_CD"))
Molasses_Keys_2010_grouper_biomass <- summarise_at(Molasses_Keys_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2010_grouper_biomass$Year <- ('2010')
Molasses_Keys_2010_grouper_biomass$Reef <- ('Molasses Keys')

Molasses_Keys_2011 <- import("Molasses_Keys/data/Molasses_Keys_2011.xls")

Molasses_Keys_2011_snapper <- merge(Molasses_Keys_2011, snapper, by = c("SPECIES_CD"))
Molasses_Keys_2011_snapper_biomass <- summarise_at(Molasses_Keys_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2011_snapper_biomass$Year <- ('2011')
Molasses_Keys_2011_snapper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2011_grouper <- merge(Molasses_Keys_2011, grouper, by = c("SPECIES_CD"))
Molasses_Keys_2011_grouper_biomass <- summarise_at(Molasses_Keys_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2011_grouper_biomass$Year <- ('2011')
Molasses_Keys_2011_grouper_biomass$Reef <- ('Molasses Keys')



Molasses_Keys_2012 <- import("Molasses_Keys/data/Molasses_Keys_2012.xls")

Molasses_Keys_2012_snapper <- merge(Molasses_Keys_2012, snapper, by = c("SPECIES_CD"))
Molasses_Keys_2012_snapper_biomass <- summarise_at(Molasses_Keys_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2012_snapper_biomass$Year <- ('2012')
Molasses_Keys_2012_snapper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2012_grouper <- merge(Molasses_Keys_2012, grouper, by = c("SPECIES_CD"))
Molasses_Keys_2012_grouper_biomass <- summarise_at(Molasses_Keys_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2012_grouper_biomass$Year <- ('2012')
Molasses_Keys_2012_grouper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2014 <- import("Molasses_Keys/data/Molasses_Keys_2014.xls")

Molasses_Keys_2014_snapper <- merge(Molasses_Keys_2014, snapper, by = c("SPECIES_CD"))
Molasses_Keys_2014_snapper_biomass <- summarise_at(Molasses_Keys_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2014_snapper_biomass$Year <- ('2014')
Molasses_Keys_2014_snapper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2014_grouper <- merge(Molasses_Keys_2014, grouper, by = c("SPECIES_CD"))
Molasses_Keys_2014_grouper_biomass <- summarise_at(Molasses_Keys_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2014_grouper_biomass$Year <- ('2014')
Molasses_Keys_2014_grouper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2016 <- import("Molasses_Keys/data/Molasses_Keys_2016.xls")

Molasses_Keys_2016_snapper <- merge(Molasses_Keys_2016, snapper, by = c("SPECIES_CD"))
Molasses_Keys_2016_snapper_biomass <- summarise_at(Molasses_Keys_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2016_snapper_biomass$Year <- ('2016')
Molasses_Keys_2016_snapper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2016_grouper <- merge(Molasses_Keys_2016, grouper, by = c("SPECIES_CD"))
Molasses_Keys_2016_grouper_biomass <- summarise_at(Molasses_Keys_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2016_grouper_biomass$Year <- ('2016')
Molasses_Keys_2016_grouper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2018 <- import("Molasses_Keys/data/Molasses_Keys_2018.xls")

Molasses_Keys_2018_snapper <- merge(Molasses_Keys_2018, snapper, by = c("SPECIES_CD"))
Molasses_Keys_2018_snapper_biomass <- summarise_at(Molasses_Keys_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2018_snapper_biomass$Year <- ('2018')
Molasses_Keys_2018_snapper_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2018_grouper <- merge(Molasses_Keys_2018, grouper, by = c("SPECIES_CD"))
Molasses_Keys_2018_grouper_biomass <- summarise_at(Molasses_Keys_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2018_grouper_biomass$Year <- ('2018')
Molasses_Keys_2018_grouper_biomass$Reef <- ('Molasses Keys')



### Combine all years together for snapper_ and grouper_ seperately



Molasses_Keys_snapper_1 <- rbind(Molasses_Keys_1999_snapper_biomass,Molasses_Keys_2000_snapper_biomass)
Molasses_Keys_snapper_2 <- rbind(Molasses_Keys_snapper_1,Molasses_Keys_2001_snapper_biomass)
Molasses_Keys_snapper_3 <- rbind(Molasses_Keys_snapper_2,Molasses_Keys_2002_snapper_biomass)
Molasses_Keys_snapper_4 <- rbind(Molasses_Keys_snapper_3,Molasses_Keys_2003_snapper_biomass)
#Molasses_Keys_snapper_5 <- rbind(Molasses_Keys_snapper_4,Molasses_Keys_2004_snapper_biomass)
Molasses_Keys_snapper_6 <- rbind(Molasses_Keys_snapper_4,Molasses_Keys_2005_snapper_biomass)
Molasses_Keys_snapper_7 <- rbind(Molasses_Keys_snapper_6,Molasses_Keys_2006_snapper_biomass)
Molasses_Keys_snapper_8 <- rbind(Molasses_Keys_snapper_7,Molasses_Keys_2007_snapper_biomass)
Molasses_Keys_snapper_9 <- rbind(Molasses_Keys_snapper_8,Molasses_Keys_2008_snapper_biomass)
Molasses_Keys_snapper_10 <- rbind(Molasses_Keys_snapper_9,Molasses_Keys_2009_snapper_biomass)
Molasses_Keys_snapper_11<- rbind(Molasses_Keys_snapper_10,Molasses_Keys_2010_snapper_biomass)
Molasses_Keys_snapper_12 <- rbind(Molasses_Keys_snapper_11,Molasses_Keys_2011_snapper_biomass)
Molasses_Keys_snapper_13 <- rbind(Molasses_Keys_snapper_12,Molasses_Keys_2012_snapper_biomass)
Molasses_Keys_snapper_14 <- rbind(Molasses_Keys_snapper_13,Molasses_Keys_2014_snapper_biomass)
Molasses_Keys_snapper_15 <- rbind(Molasses_Keys_snapper_14,Molasses_Keys_2016_snapper_biomass)
Molasses_Keys_snapper_biomass_data_combined <- rbind(Molasses_Keys_snapper_15,Molasses_Keys_2018_snapper_biomass)



Molasses_Keys_grouper_1 <- rbind(Molasses_Keys_1999_grouper_biomass,Molasses_Keys_2000_grouper_biomass)
Molasses_Keys_grouper_2 <- rbind(Molasses_Keys_grouper_1,Molasses_Keys_2001_grouper_biomass)
Molasses_Keys_grouper_3 <- rbind(Molasses_Keys_grouper_2,Molasses_Keys_2002_grouper_biomass)
Molasses_Keys_grouper_4 <- rbind(Molasses_Keys_grouper_3,Molasses_Keys_2003_grouper_biomass)
#Molasses_Keys_grouper_5 <- rbind(Molasses_Keys_grouper_4,Molasses_Keys_2004_grouper_biomass)
Molasses_Keys_grouper_6 <- rbind(Molasses_Keys_grouper_4,Molasses_Keys_2005_grouper_biomass)
Molasses_Keys_grouper_7 <- rbind(Molasses_Keys_grouper_6,Molasses_Keys_2006_grouper_biomass)
Molasses_Keys_grouper_8 <- rbind(Molasses_Keys_grouper_7,Molasses_Keys_2007_grouper_biomass)
Molasses_Keys_grouper_9 <- rbind(Molasses_Keys_grouper_8,Molasses_Keys_2008_grouper_biomass)
Molasses_Keys_grouper_10 <- rbind(Molasses_Keys_grouper_9,Molasses_Keys_2009_grouper_biomass)
Molasses_Keys_grouper_11<- rbind(Molasses_Keys_grouper_10,Molasses_Keys_2010_grouper_biomass)
Molasses_Keys_grouper_12 <- rbind(Molasses_Keys_grouper_11,Molasses_Keys_2011_grouper_biomass)
Molasses_Keys_grouper_13 <- rbind(Molasses_Keys_grouper_12,Molasses_Keys_2012_grouper_biomass)
Molasses_Keys_grouper_14 <- rbind(Molasses_Keys_grouper_13,Molasses_Keys_2014_grouper_biomass)
Molasses_Keys_grouper_15 <- rbind(Molasses_Keys_grouper_14,Molasses_Keys_2016_grouper_biomass)
Molasses_Keys_grouper_biomass_data_combined <- rbind(Molasses_Keys_grouper_15,Molasses_Keys_2018_grouper_biomass)



export(Molasses_Keys_snapper_biomass_data_combined, "Molasses_Keys/data/Molasses_Keys_snapper__biomass.csv")
export(Molasses_Keys_grouper_biomass_data_combined, "Molasses_Keys/data/Molasses_Keys_grouper__biomass.csv")



# Moser Channel (no data)

Moser_Channel_1999 <- import("Moser_Channel/data/Moser_Channel_1999.xls")


Moser_Channel_1999_snapper <- merge(Moser_Channel_1999, snapper, by = c("SPECIES_CD"))
Moser_Channel_1999_snapper_biomass <- summarise_at(Moser_Channel_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_1999_snapper_biomass$Year <- ('1999')
Moser_Channel_1999_snapper_biomass$Reef <- ('Moser Channel')


Moser_Channel_1999_grouper <- merge(Moser_Channel_1999, grouper, by = c("SPECIES_CD"))
Moser_Channel_1999_grouper_biomass <- summarise_at(Moser_Channel_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_1999_grouper_biomass$Year <- ('1999')
Moser_Channel_1999_grouper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2000 <- import("Moser_Channel/data/Moser_Channel_2000.xls")

Moser_Channel_2000_snapper <- merge(Moser_Channel_2000, snapper, by = c("SPECIES_CD"))
Moser_Channel_2000_snapper_biomass <- summarise_at(Moser_Channel_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2000_snapper_biomass$Year <- ('2000')
Moser_Channel_2000_snapper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2000_grouper <- merge(Moser_Channel_2000, grouper, by = c("SPECIES_CD"))
Moser_Channel_2000_grouper_biomass <- summarise_at(Moser_Channel_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2000_grouper_biomass$Year <- ('2000')
Moser_Channel_2000_grouper_biomass$Reef <- ('Moser Channel')

Moser_Channel_2001 <- import("Moser_Channel/data/Moser_Channel_2001.xls")

Moser_Channel_2001_snapper <- merge(Moser_Channel_2001, snapper, by = c("SPECIES_CD"))
Moser_Channel_2001_snapper_biomass <- summarise_at(Moser_Channel_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2001_snapper_biomass$Year <- ('2001')
Moser_Channel_2001_snapper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2001_grouper <- merge(Moser_Channel_2001, grouper, by = c("SPECIES_CD"))
Moser_Channel_2001_grouper_biomass <- summarise_at(Moser_Channel_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2001_grouper_biomass$Year <- ('2001')
Moser_Channel_2001_grouper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2002 <- import("Moser_Channel/data/Moser_Channel_2002.xls")

Moser_Channel_2002_snapper <- merge(Moser_Channel_2002, snapper, by = c("SPECIES_CD"))
Moser_Channel_2002_snapper_biomass <- summarise_at(Moser_Channel_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2002_snapper_biomass$Year <- ('2002')
Moser_Channel_2002_snapper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2002_grouper <- merge(Moser_Channel_2002, grouper, by = c("SPECIES_CD"))
Moser_Channel_2002_grouper_biomass <- summarise_at(Moser_Channel_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2002_grouper_biomass$Year <- ('2002')
Moser_Channel_2002_grouper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2003 <- import("Moser_Channel/data/Moser_Channel_2003.xls")

Moser_Channel_2003_snapper <- merge(Moser_Channel_2003, snapper, by = c("SPECIES_CD"))
Moser_Channel_2003_snapper_biomass <- summarise_at(Moser_Channel_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2003_snapper_biomass$Year <- ('2003')
Moser_Channel_2003_snapper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2003_grouper <- merge(Moser_Channel_2003, grouper, by = c("SPECIES_CD"))
Moser_Channel_2003_grouper_biomass <- summarise_at(Moser_Channel_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2003_grouper_biomass$Year <- ('2003')
Moser_Channel_2003_grouper_biomass$Reef <- ('Moser Channel')


# Moser_Channel_2004 <- import("Moser_Channel/data/Moser_Channel_2004.xls")
# 
# Moser_Channel_2004_snapper <- merge(Moser_Channel_2004, snapper, by = c("SPECIES_CD"))
# Moser_Channel_2004_snapper_biomass <- summarise_at(Moser_Channel_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Moser_Channel_2004_snapper_biomass$Year <- ('2004')
# Moser_Channel_2004_snapper_biomass$Reef <- ('Moser Channel')
# 
# 
# Moser_Channel_2004_grouper <- merge(Moser_Channel_2004, grouper, by = c("SPECIES_CD"))
# Moser_Channel_2004_grouper_biomass <- summarise_at(Moser_Channel_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Moser_Channel_2004_grouper_biomass$Year <- ('2004')
# Moser_Channel_2004_grouper_biomass$Reef <- ('Moser Channel')

Moser_Channel_2005 <- import("Moser_Channel/data/Moser_Channel_2005.xls")

Moser_Channel_2005_snapper <- merge(Moser_Channel_2005, snapper, by = c("SPECIES_CD"))
Moser_Channel_2005_snapper_biomass <- summarise_at(Moser_Channel_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2005_snapper_biomass$Year <- ('2005')
Moser_Channel_2005_snapper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2005_grouper <- merge(Moser_Channel_2005, grouper, by = c("SPECIES_CD"))
Moser_Channel_2005_grouper_biomass <- summarise_at(Moser_Channel_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2005_grouper_biomass$Year <- ('2005')
Moser_Channel_2005_grouper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2006 <- import("Moser_Channel/data/Moser_Channel_2006.xls")

Moser_Channel_2006_snapper <- merge(Moser_Channel_2006, snapper, by = c("SPECIES_CD"))
Moser_Channel_2006_snapper_biomass <- summarise_at(Moser_Channel_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2006_snapper_biomass$Year <- ('2006')
Moser_Channel_2006_snapper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2006_grouper <- merge(Moser_Channel_2006, grouper, by = c("SPECIES_CD"))
Moser_Channel_2006_grouper_biomass <- summarise_at(Moser_Channel_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2006_grouper_biomass$Year <- ('2006')
Moser_Channel_2006_grouper_biomass$Reef <- ('Moser Channel')

Moser_Channel_2007 <- import("Moser_Channel/data/Moser_Channel_2007.xls")

Moser_Channel_2007_snapper <- merge(Moser_Channel_2007, snapper, by = c("SPECIES_CD"))
Moser_Channel_2007_snapper_biomass <- summarise_at(Moser_Channel_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2007_snapper_biomass$Year <- ('2007')
Moser_Channel_2007_snapper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2007_grouper <- merge(Moser_Channel_2007, grouper, by = c("SPECIES_CD"))
Moser_Channel_2007_grouper_biomass <- summarise_at(Moser_Channel_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2007_grouper_biomass$Year <- ('2007')
Moser_Channel_2007_grouper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2008 <- import("Moser_Channel/data/Moser_Channel_2008.xls")

Moser_Channel_2008_snapper <- merge(Moser_Channel_2008, snapper, by = c("SPECIES_CD"))
Moser_Channel_2008_snapper_biomass <- summarise_at(Moser_Channel_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2008_snapper_biomass$Year <- ('2008')
Moser_Channel_2008_snapper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2008_grouper <- merge(Moser_Channel_2008, grouper, by = c("SPECIES_CD"))
Moser_Channel_2008_grouper_biomass <- summarise_at(Moser_Channel_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2008_grouper_biomass$Year <- ('2008')
Moser_Channel_2008_grouper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2009 <- import("Moser_Channel/data/Moser_Channel_2009.xls")

Moser_Channel_2009_snapper <- merge(Moser_Channel_2009, snapper, by = c("SPECIES_CD"))
Moser_Channel_2009_snapper_biomass <- summarise_at(Moser_Channel_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2009_snapper_biomass$Year <- ('2009')
Moser_Channel_2009_snapper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2009_grouper <- merge(Moser_Channel_2009, grouper, by = c("SPECIES_CD"))
Moser_Channel_2009_grouper_biomass <- summarise_at(Moser_Channel_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2009_grouper_biomass$Year <- ('2009')
Moser_Channel_2009_grouper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2010 <- import("Moser_Channel/data/Moser_Channel_2010.xls")

Moser_Channel_2010_snapper <- merge(Moser_Channel_2010, snapper, by = c("SPECIES_CD"))
Moser_Channel_2010_snapper_biomass <- summarise_at(Moser_Channel_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2010_snapper_biomass$Year <- ('2010')
Moser_Channel_2010_snapper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2010_grouper <- merge(Moser_Channel_2010, grouper, by = c("SPECIES_CD"))
Moser_Channel_2010_grouper_biomass <- summarise_at(Moser_Channel_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2010_grouper_biomass$Year <- ('2010')
Moser_Channel_2010_grouper_biomass$Reef <- ('Moser Channel')

Moser_Channel_2011 <- import("Moser_Channel/data/Moser_Channel_2011.xls")

Moser_Channel_2011_snapper <- merge(Moser_Channel_2011, snapper, by = c("SPECIES_CD"))
Moser_Channel_2011_snapper_biomass <- summarise_at(Moser_Channel_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2011_snapper_biomass$Year <- ('2011')
Moser_Channel_2011_snapper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2011_grouper <- merge(Moser_Channel_2011, grouper, by = c("SPECIES_CD"))
Moser_Channel_2011_grouper_biomass <- summarise_at(Moser_Channel_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2011_grouper_biomass$Year <- ('2011')
Moser_Channel_2011_grouper_biomass$Reef <- ('Moser Channel')



Moser_Channel_2012 <- import("Moser_Channel/data/Moser_Channel_2012.xls")

Moser_Channel_2012_snapper <- merge(Moser_Channel_2012, snapper, by = c("SPECIES_CD"))
Moser_Channel_2012_snapper_biomass <- summarise_at(Moser_Channel_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2012_snapper_biomass$Year <- ('2012')
Moser_Channel_2012_snapper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2012_grouper <- merge(Moser_Channel_2012, grouper, by = c("SPECIES_CD"))
Moser_Channel_2012_grouper_biomass <- summarise_at(Moser_Channel_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2012_grouper_biomass$Year <- ('2012')
Moser_Channel_2012_grouper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2014 <- import("Moser_Channel/data/Moser_Channel_2014.xls")

Moser_Channel_2014_snapper <- merge(Moser_Channel_2014, snapper, by = c("SPECIES_CD"))
Moser_Channel_2014_snapper_biomass <- summarise_at(Moser_Channel_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2014_snapper_biomass$Year <- ('2014')
Moser_Channel_2014_snapper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2014_grouper <- merge(Moser_Channel_2014, grouper, by = c("SPECIES_CD"))
Moser_Channel_2014_grouper_biomass <- summarise_at(Moser_Channel_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2014_grouper_biomass$Year <- ('2014')
Moser_Channel_2014_grouper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2016 <- import("Moser_Channel/data/Moser_Channel_2016.xls")

Moser_Channel_2016_snapper <- merge(Moser_Channel_2016, snapper, by = c("SPECIES_CD"))
Moser_Channel_2016_snapper_biomass <- summarise_at(Moser_Channel_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2016_snapper_biomass$Year <- ('2016')
Moser_Channel_2016_snapper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2016_grouper <- merge(Moser_Channel_2016, grouper, by = c("SPECIES_CD"))
Moser_Channel_2016_grouper_biomass <- summarise_at(Moser_Channel_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2016_grouper_biomass$Year <- ('2016')
Moser_Channel_2016_grouper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2018 <- import("Moser_Channel/data/Moser_Channel_2018.xls")

Moser_Channel_2018_snapper <- merge(Moser_Channel_2018, snapper, by = c("SPECIES_CD"))
Moser_Channel_2018_snapper_biomass <- summarise_at(Moser_Channel_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2018_snapper_biomass$Year <- ('2018')
Moser_Channel_2018_snapper_biomass$Reef <- ('Moser Channel')


Moser_Channel_2018_grouper <- merge(Moser_Channel_2018, grouper, by = c("SPECIES_CD"))
Moser_Channel_2018_grouper_biomass <- summarise_at(Moser_Channel_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2018_grouper_biomass$Year <- ('2018')
Moser_Channel_2018_grouper_biomass$Reef <- ('Moser Channel')



### Combine all years together for snapper_ and grouper_ seperately



Moser_Channel_snapper_1 <- rbind(Moser_Channel_1999_snapper_biomass,Moser_Channel_2000_snapper_biomass)
Moser_Channel_snapper_2 <- rbind(Moser_Channel_snapper_1,Moser_Channel_2001_snapper_biomass)
Moser_Channel_snapper_3 <- rbind(Moser_Channel_snapper_2,Moser_Channel_2002_snapper_biomass)
Moser_Channel_snapper_4 <- rbind(Moser_Channel_snapper_3,Moser_Channel_2003_snapper_biomass)
#Moser_Channel_snapper_5 <- rbind(Moser_Channel_snapper_4,Moser_Channel_2004_snapper_biomass)
Moser_Channel_snapper_6 <- rbind(Moser_Channel_snapper_4,Moser_Channel_2005_snapper_biomass)
Moser_Channel_snapper_7 <- rbind(Moser_Channel_snapper_6,Moser_Channel_2006_snapper_biomass)
Moser_Channel_snapper_8 <- rbind(Moser_Channel_snapper_7,Moser_Channel_2007_snapper_biomass)
Moser_Channel_snapper_9 <- rbind(Moser_Channel_snapper_8,Moser_Channel_2008_snapper_biomass)
Moser_Channel_snapper_10 <- rbind(Moser_Channel_snapper_9,Moser_Channel_2009_snapper_biomass)
Moser_Channel_snapper_11<- rbind(Moser_Channel_snapper_10,Moser_Channel_2010_snapper_biomass)
Moser_Channel_snapper_12 <- rbind(Moser_Channel_snapper_11,Moser_Channel_2011_snapper_biomass)
Moser_Channel_snapper_13 <- rbind(Moser_Channel_snapper_12,Moser_Channel_2012_snapper_biomass)
Moser_Channel_snapper_14 <- rbind(Moser_Channel_snapper_13,Moser_Channel_2014_snapper_biomass)
Moser_Channel_snapper_15 <- rbind(Moser_Channel_snapper_14,Moser_Channel_2016_snapper_biomass)
Moser_Channel_snapper_biomass_data_combined <- rbind(Moser_Channel_snapper_15,Moser_Channel_2018_snapper_biomass)



Moser_Channel_grouper_1 <- rbind(Moser_Channel_1999_grouper_biomass,Moser_Channel_2000_grouper_biomass)
Moser_Channel_grouper_2 <- rbind(Moser_Channel_grouper_1,Moser_Channel_2001_grouper_biomass)
Moser_Channel_grouper_3 <- rbind(Moser_Channel_grouper_2,Moser_Channel_2002_grouper_biomass)
Moser_Channel_grouper_4 <- rbind(Moser_Channel_grouper_3,Moser_Channel_2003_grouper_biomass)
#Moser_Channel_grouper_5 <- rbind(Moser_Channel_grouper_4,Moser_Channel_2004_grouper_biomass)
Moser_Channel_grouper_6 <- rbind(Moser_Channel_grouper_4,Moser_Channel_2005_grouper_biomass)
Moser_Channel_grouper_7 <- rbind(Moser_Channel_grouper_6,Moser_Channel_2006_grouper_biomass)
Moser_Channel_grouper_8 <- rbind(Moser_Channel_grouper_7,Moser_Channel_2007_grouper_biomass)
Moser_Channel_grouper_9 <- rbind(Moser_Channel_grouper_8,Moser_Channel_2008_grouper_biomass)
Moser_Channel_grouper_10 <- rbind(Moser_Channel_grouper_9,Moser_Channel_2009_grouper_biomass)
Moser_Channel_grouper_11<- rbind(Moser_Channel_grouper_10,Moser_Channel_2010_grouper_biomass)
Moser_Channel_grouper_12 <- rbind(Moser_Channel_grouper_11,Moser_Channel_2011_grouper_biomass)
Moser_Channel_grouper_13 <- rbind(Moser_Channel_grouper_12,Moser_Channel_2012_grouper_biomass)
Moser_Channel_grouper_14 <- rbind(Moser_Channel_grouper_13,Moser_Channel_2014_grouper_biomass)
Moser_Channel_grouper_15 <- rbind(Moser_Channel_grouper_14,Moser_Channel_2016_grouper_biomass)
Moser_Channel_grouper_biomass_data_combined <- rbind(Moser_Channel_grouper_15,Moser_Channel_2018_grouper_biomass)



export(Moser_Channel_snapper_biomass_data_combined, "Moser_Channel/data/Moser_Channel_snapper__biomass.csv")
export(Moser_Channel_grouper_biomass_data_combined, "Moser_Channel/data/Moser_Channel_grouper__biomass.csv")





# Rawa Reef 

Rawa_Reef_1999 <- import("Rawa_Reef/data/Rawa_Reef_1999.xls")


Rawa_Reef_1999_snapper <- merge(Rawa_Reef_1999, snapper, by = c("SPECIES_CD"))
Rawa_Reef_1999_snapper_biomass <- summarise_at(Rawa_Reef_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_1999_snapper_biomass$Year <- ('1999')
Rawa_Reef_1999_snapper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_1999_grouper <- merge(Rawa_Reef_1999, grouper, by = c("SPECIES_CD"))
Rawa_Reef_1999_grouper_biomass <- summarise_at(Rawa_Reef_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_1999_grouper_biomass$Year <- ('1999')
Rawa_Reef_1999_grouper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2000 <- import("Rawa_Reef/data/Rawa_Reef_2000.xls")

Rawa_Reef_2000_snapper <- merge(Rawa_Reef_2000, snapper, by = c("SPECIES_CD"))
Rawa_Reef_2000_snapper_biomass <- summarise_at(Rawa_Reef_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2000_snapper_biomass$Year <- ('2000')
Rawa_Reef_2000_snapper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2000_grouper <- merge(Rawa_Reef_2000, grouper, by = c("SPECIES_CD"))
Rawa_Reef_2000_grouper_biomass <- summarise_at(Rawa_Reef_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2000_grouper_biomass$Year <- ('2000')
Rawa_Reef_2000_grouper_biomass$Reef <- ('Rawa Reef')

Rawa_Reef_2001 <- import("Rawa_Reef/data/Rawa_Reef_2001.xls")

Rawa_Reef_2001_snapper <- merge(Rawa_Reef_2001, snapper, by = c("SPECIES_CD"))
Rawa_Reef_2001_snapper_biomass <- summarise_at(Rawa_Reef_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2001_snapper_biomass$Year <- ('2001')
Rawa_Reef_2001_snapper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2001_grouper <- merge(Rawa_Reef_2001, grouper, by = c("SPECIES_CD"))
Rawa_Reef_2001_grouper_biomass <- summarise_at(Rawa_Reef_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2001_grouper_biomass$Year <- ('2001')
Rawa_Reef_2001_grouper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2002 <- import("Rawa_Reef/data/Rawa_Reef_2002.xls")

Rawa_Reef_2002_snapper <- merge(Rawa_Reef_2002, snapper, by = c("SPECIES_CD"))
Rawa_Reef_2002_snapper_biomass <- summarise_at(Rawa_Reef_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2002_snapper_biomass$Year <- ('2002')
Rawa_Reef_2002_snapper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2002_grouper <- merge(Rawa_Reef_2002, grouper, by = c("SPECIES_CD"))
Rawa_Reef_2002_grouper_biomass <- summarise_at(Rawa_Reef_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2002_grouper_biomass$Year <- ('2002')
Rawa_Reef_2002_grouper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2003 <- import("Rawa_Reef/data/Rawa_Reef_2003.xls")

Rawa_Reef_2003_snapper <- merge(Rawa_Reef_2003, snapper, by = c("SPECIES_CD"))
Rawa_Reef_2003_snapper_biomass <- summarise_at(Rawa_Reef_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2003_snapper_biomass$Year <- ('2003')
Rawa_Reef_2003_snapper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2003_grouper <- merge(Rawa_Reef_2003, grouper, by = c("SPECIES_CD"))
Rawa_Reef_2003_grouper_biomass <- summarise_at(Rawa_Reef_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2003_grouper_biomass$Year <- ('2003')
Rawa_Reef_2003_grouper_biomass$Reef <- ('Rawa Reef')


# Rawa_Reef_2004 <- import("Rawa_Reef/data/Rawa_Reef_2004.xls")
# 
# Rawa_Reef_2004_snapper <- merge(Rawa_Reef_2004, snapper, by = c("SPECIES_CD"))
# Rawa_Reef_2004_snapper_biomass <- summarise_at(Rawa_Reef_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Rawa_Reef_2004_snapper_biomass$Year <- ('2004')
# Rawa_Reef_2004_snapper_biomass$Reef <- ('Rawa Reef')
# 
# 
# Rawa_Reef_2004_grouper <- merge(Rawa_Reef_2004, grouper, by = c("SPECIES_CD"))
# Rawa_Reef_2004_grouper_biomass <- summarise_at(Rawa_Reef_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Rawa_Reef_2004_grouper_biomass$Year <- ('2004')
# Rawa_Reef_2004_grouper_biomass$Reef <- ('Rawa Reef')

Rawa_Reef_2005 <- import("Rawa_Reef/data/Rawa_Reef_2005.xls")

Rawa_Reef_2005_snapper <- merge(Rawa_Reef_2005, snapper, by = c("SPECIES_CD"))
Rawa_Reef_2005_snapper_biomass <- summarise_at(Rawa_Reef_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2005_snapper_biomass$Year <- ('2005')
Rawa_Reef_2005_snapper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2005_grouper <- merge(Rawa_Reef_2005, grouper, by = c("SPECIES_CD"))
Rawa_Reef_2005_grouper_biomass <- summarise_at(Rawa_Reef_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2005_grouper_biomass$Year <- ('2005')
Rawa_Reef_2005_grouper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2006 <- import("Rawa_Reef/data/Rawa_Reef_2006.xls")

Rawa_Reef_2006_snapper <- merge(Rawa_Reef_2006, snapper, by = c("SPECIES_CD"))
Rawa_Reef_2006_snapper_biomass <- summarise_at(Rawa_Reef_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2006_snapper_biomass$Year <- ('2006')
Rawa_Reef_2006_snapper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2006_grouper <- merge(Rawa_Reef_2006, grouper, by = c("SPECIES_CD"))
Rawa_Reef_2006_grouper_biomass <- summarise_at(Rawa_Reef_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2006_grouper_biomass$Year <- ('2006')
Rawa_Reef_2006_grouper_biomass$Reef <- ('Rawa Reef')

Rawa_Reef_2007 <- import("Rawa_Reef/data/Rawa_Reef_2007.xls")

Rawa_Reef_2007_snapper <- merge(Rawa_Reef_2007, snapper, by = c("SPECIES_CD"))
Rawa_Reef_2007_snapper_biomass <- summarise_at(Rawa_Reef_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2007_snapper_biomass$Year <- ('2007')
Rawa_Reef_2007_snapper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2007_grouper <- merge(Rawa_Reef_2007, grouper, by = c("SPECIES_CD"))
Rawa_Reef_2007_grouper_biomass <- summarise_at(Rawa_Reef_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2007_grouper_biomass$Year <- ('2007')
Rawa_Reef_2007_grouper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2008 <- import("Rawa_Reef/data/Rawa_Reef_2008.xls")

Rawa_Reef_2008_snapper <- merge(Rawa_Reef_2008, snapper, by = c("SPECIES_CD"))
Rawa_Reef_2008_snapper_biomass <- summarise_at(Rawa_Reef_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2008_snapper_biomass$Year <- ('2008')
Rawa_Reef_2008_snapper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2008_grouper <- merge(Rawa_Reef_2008, grouper, by = c("SPECIES_CD"))
Rawa_Reef_2008_grouper_biomass <- summarise_at(Rawa_Reef_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2008_grouper_biomass$Year <- ('2008')
Rawa_Reef_2008_grouper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2009 <- import("Rawa_Reef/data/Rawa_Reef_2009.xls")

Rawa_Reef_2009_snapper <- merge(Rawa_Reef_2009, snapper, by = c("SPECIES_CD"))
Rawa_Reef_2009_snapper_biomass <- summarise_at(Rawa_Reef_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2009_snapper_biomass$Year <- ('2009')
Rawa_Reef_2009_snapper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2009_grouper <- merge(Rawa_Reef_2009, grouper, by = c("SPECIES_CD"))
Rawa_Reef_2009_grouper_biomass <- summarise_at(Rawa_Reef_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2009_grouper_biomass$Year <- ('2009')
Rawa_Reef_2009_grouper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2010 <- import("Rawa_Reef/data/Rawa_Reef_2010.xls")

Rawa_Reef_2010_snapper <- merge(Rawa_Reef_2010, snapper, by = c("SPECIES_CD"))
Rawa_Reef_2010_snapper_biomass <- summarise_at(Rawa_Reef_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2010_snapper_biomass$Year <- ('2010')
Rawa_Reef_2010_snapper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2010_grouper <- merge(Rawa_Reef_2010, grouper, by = c("SPECIES_CD"))
Rawa_Reef_2010_grouper_biomass <- summarise_at(Rawa_Reef_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2010_grouper_biomass$Year <- ('2010')
Rawa_Reef_2010_grouper_biomass$Reef <- ('Rawa Reef')

Rawa_Reef_2011 <- import("Rawa_Reef/data/Rawa_Reef_2011.xls")

Rawa_Reef_2011_snapper <- merge(Rawa_Reef_2011, snapper, by = c("SPECIES_CD"))
Rawa_Reef_2011_snapper_biomass <- summarise_at(Rawa_Reef_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2011_snapper_biomass$Year <- ('2011')
Rawa_Reef_2011_snapper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2011_grouper <- merge(Rawa_Reef_2011, grouper, by = c("SPECIES_CD"))
Rawa_Reef_2011_grouper_biomass <- summarise_at(Rawa_Reef_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2011_grouper_biomass$Year <- ('2011')
Rawa_Reef_2011_grouper_biomass$Reef <- ('Rawa Reef')



Rawa_Reef_2012 <- import("Rawa_Reef/data/Rawa_Reef_2012.xls")

Rawa_Reef_2012_snapper <- merge(Rawa_Reef_2012, snapper, by = c("SPECIES_CD"))
Rawa_Reef_2012_snapper_biomass <- summarise_at(Rawa_Reef_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2012_snapper_biomass$Year <- ('2012')
Rawa_Reef_2012_snapper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2012_grouper <- merge(Rawa_Reef_2012, grouper, by = c("SPECIES_CD"))
Rawa_Reef_2012_grouper_biomass <- summarise_at(Rawa_Reef_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2012_grouper_biomass$Year <- ('2012')
Rawa_Reef_2012_grouper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2014 <- import("Rawa_Reef/data/Rawa_Reef_2014.xls")

Rawa_Reef_2014_snapper <- merge(Rawa_Reef_2014, snapper, by = c("SPECIES_CD"))
Rawa_Reef_2014_snapper_biomass <- summarise_at(Rawa_Reef_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2014_snapper_biomass$Year <- ('2014')
Rawa_Reef_2014_snapper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2014_grouper <- merge(Rawa_Reef_2014, grouper, by = c("SPECIES_CD"))
Rawa_Reef_2014_grouper_biomass <- summarise_at(Rawa_Reef_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2014_grouper_biomass$Year <- ('2014')
Rawa_Reef_2014_grouper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2016 <- import("Rawa_Reef/data/Rawa_Reef_2016.xls")

Rawa_Reef_2016_snapper <- merge(Rawa_Reef_2016, snapper, by = c("SPECIES_CD"))
Rawa_Reef_2016_snapper_biomass <- summarise_at(Rawa_Reef_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2016_snapper_biomass$Year <- ('2016')
Rawa_Reef_2016_snapper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2016_grouper <- merge(Rawa_Reef_2016, grouper, by = c("SPECIES_CD"))
Rawa_Reef_2016_grouper_biomass <- summarise_at(Rawa_Reef_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2016_grouper_biomass$Year <- ('2016')
Rawa_Reef_2016_grouper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2018 <- import("Rawa_Reef/data/Rawa_Reef_2018.xls")

Rawa_Reef_2018_snapper <- merge(Rawa_Reef_2018, snapper, by = c("SPECIES_CD"))
Rawa_Reef_2018_snapper_biomass <- summarise_at(Rawa_Reef_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2018_snapper_biomass$Year <- ('2018')
Rawa_Reef_2018_snapper_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2018_grouper <- merge(Rawa_Reef_2018, grouper, by = c("SPECIES_CD"))
Rawa_Reef_2018_grouper_biomass <- summarise_at(Rawa_Reef_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2018_grouper_biomass$Year <- ('2018')
Rawa_Reef_2018_grouper_biomass$Reef <- ('Rawa Reef')



### Combine all years together for snapper_ and grouper_ seperately



Rawa_Reef_snapper_1 <- rbind(Rawa_Reef_1999_snapper_biomass,Rawa_Reef_2000_snapper_biomass)
Rawa_Reef_snapper_2 <- rbind(Rawa_Reef_snapper_1,Rawa_Reef_2001_snapper_biomass)
Rawa_Reef_snapper_3 <- rbind(Rawa_Reef_snapper_2,Rawa_Reef_2002_snapper_biomass)
Rawa_Reef_snapper_4 <- rbind(Rawa_Reef_snapper_3,Rawa_Reef_2003_snapper_biomass)
#Rawa_Reef_snapper_5 <- rbind(Rawa_Reef_snapper_4,Rawa_Reef_2004_snapper_biomass)
Rawa_Reef_snapper_6 <- rbind(Rawa_Reef_snapper_4,Rawa_Reef_2005_snapper_biomass)
Rawa_Reef_snapper_7 <- rbind(Rawa_Reef_snapper_6,Rawa_Reef_2006_snapper_biomass)
Rawa_Reef_snapper_8 <- rbind(Rawa_Reef_snapper_7,Rawa_Reef_2007_snapper_biomass)
Rawa_Reef_snapper_9 <- rbind(Rawa_Reef_snapper_8,Rawa_Reef_2008_snapper_biomass)
Rawa_Reef_snapper_10 <- rbind(Rawa_Reef_snapper_9,Rawa_Reef_2009_snapper_biomass)
Rawa_Reef_snapper_11<- rbind(Rawa_Reef_snapper_10,Rawa_Reef_2010_snapper_biomass)
Rawa_Reef_snapper_12 <- rbind(Rawa_Reef_snapper_11,Rawa_Reef_2011_snapper_biomass)
Rawa_Reef_snapper_13 <- rbind(Rawa_Reef_snapper_12,Rawa_Reef_2012_snapper_biomass)
Rawa_Reef_snapper_14 <- rbind(Rawa_Reef_snapper_13,Rawa_Reef_2014_snapper_biomass)
Rawa_Reef_snapper_15 <- rbind(Rawa_Reef_snapper_14,Rawa_Reef_2016_snapper_biomass)
Rawa_Reef_snapper_biomass_data_combined <- rbind(Rawa_Reef_snapper_15,Rawa_Reef_2018_snapper_biomass)



Rawa_Reef_grouper_1 <- rbind(Rawa_Reef_1999_grouper_biomass,Rawa_Reef_2000_grouper_biomass)
Rawa_Reef_grouper_2 <- rbind(Rawa_Reef_grouper_1,Rawa_Reef_2001_grouper_biomass)
Rawa_Reef_grouper_3 <- rbind(Rawa_Reef_grouper_2,Rawa_Reef_2002_grouper_biomass)
Rawa_Reef_grouper_4 <- rbind(Rawa_Reef_grouper_3,Rawa_Reef_2003_grouper_biomass)
#Rawa_Reef_grouper_5 <- rbind(Rawa_Reef_grouper_4,Rawa_Reef_2004_grouper_biomass)
Rawa_Reef_grouper_6 <- rbind(Rawa_Reef_grouper_4,Rawa_Reef_2005_grouper_biomass)
Rawa_Reef_grouper_7 <- rbind(Rawa_Reef_grouper_6,Rawa_Reef_2006_grouper_biomass)
Rawa_Reef_grouper_8 <- rbind(Rawa_Reef_grouper_7,Rawa_Reef_2007_grouper_biomass)
Rawa_Reef_grouper_9 <- rbind(Rawa_Reef_grouper_8,Rawa_Reef_2008_grouper_biomass)
Rawa_Reef_grouper_10 <- rbind(Rawa_Reef_grouper_9,Rawa_Reef_2009_grouper_biomass)
Rawa_Reef_grouper_11<- rbind(Rawa_Reef_grouper_10,Rawa_Reef_2010_grouper_biomass)
Rawa_Reef_grouper_12 <- rbind(Rawa_Reef_grouper_11,Rawa_Reef_2011_grouper_biomass)
Rawa_Reef_grouper_13 <- rbind(Rawa_Reef_grouper_12,Rawa_Reef_2012_grouper_biomass)
Rawa_Reef_grouper_14 <- rbind(Rawa_Reef_grouper_13,Rawa_Reef_2014_grouper_biomass)
Rawa_Reef_grouper_15 <- rbind(Rawa_Reef_grouper_14,Rawa_Reef_2016_grouper_biomass)
Rawa_Reef_grouper_biomass_data_combined <- rbind(Rawa_Reef_grouper_15,Rawa_Reef_2018_grouper_biomass)



export(Rawa_Reef_snapper_biomass_data_combined, "Rawa_Reef/data/Rawa_Reef_snapper__biomass.csv")
export(Rawa_Reef_grouper_biomass_data_combined, "Rawa_Reef/data/Rawa_Reef_grouper__biomass.csv")



# Sombrero Deep 

Sombrero_Deep_1999 <- import("Sombrero_Deep/data/Sombrero_Deep_1999.xls")


Sombrero_Deep_1999_snapper <- merge(Sombrero_Deep_1999, snapper, by = c("SPECIES_CD"))
Sombrero_Deep_1999_snapper_biomass <- summarise_at(Sombrero_Deep_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_1999_snapper_biomass$Year <- ('1999')
Sombrero_Deep_1999_snapper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_1999_grouper <- merge(Sombrero_Deep_1999, grouper, by = c("SPECIES_CD"))
Sombrero_Deep_1999_grouper_biomass <- summarise_at(Sombrero_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_1999_grouper_biomass$Year <- ('1999')
Sombrero_Deep_1999_grouper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2000 <- import("Sombrero_Deep/data/Sombrero_Deep_2000.xls")

Sombrero_Deep_2000_snapper <- merge(Sombrero_Deep_2000, snapper, by = c("SPECIES_CD"))
Sombrero_Deep_2000_snapper_biomass <- summarise_at(Sombrero_Deep_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2000_snapper_biomass$Year <- ('2000')
Sombrero_Deep_2000_snapper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2000_grouper <- merge(Sombrero_Deep_2000, grouper, by = c("SPECIES_CD"))
Sombrero_Deep_2000_grouper_biomass <- summarise_at(Sombrero_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2000_grouper_biomass$Year <- ('2000')
Sombrero_Deep_2000_grouper_biomass$Reef <- ('Sombrero Deep')

Sombrero_Deep_2001 <- import("Sombrero_Deep/data/Sombrero_Deep_2001.xls")

Sombrero_Deep_2001_snapper <- merge(Sombrero_Deep_2001, snapper, by = c("SPECIES_CD"))
Sombrero_Deep_2001_snapper_biomass <- summarise_at(Sombrero_Deep_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2001_snapper_biomass$Year <- ('2001')
Sombrero_Deep_2001_snapper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2001_grouper <- merge(Sombrero_Deep_2001, grouper, by = c("SPECIES_CD"))
Sombrero_Deep_2001_grouper_biomass <- summarise_at(Sombrero_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2001_grouper_biomass$Year <- ('2001')
Sombrero_Deep_2001_grouper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2002 <- import("Sombrero_Deep/data/Sombrero_Deep_2002.xls")

Sombrero_Deep_2002_snapper <- merge(Sombrero_Deep_2002, snapper, by = c("SPECIES_CD"))
Sombrero_Deep_2002_snapper_biomass <- summarise_at(Sombrero_Deep_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2002_snapper_biomass$Year <- ('2002')
Sombrero_Deep_2002_snapper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2002_grouper <- merge(Sombrero_Deep_2002, grouper, by = c("SPECIES_CD"))
Sombrero_Deep_2002_grouper_biomass <- summarise_at(Sombrero_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2002_grouper_biomass$Year <- ('2002')
Sombrero_Deep_2002_grouper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2003 <- import("Sombrero_Deep/data/Sombrero_Deep_2003.xls")

Sombrero_Deep_2003_snapper <- merge(Sombrero_Deep_2003, snapper, by = c("SPECIES_CD"))
Sombrero_Deep_2003_snapper_biomass <- summarise_at(Sombrero_Deep_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2003_snapper_biomass$Year <- ('2003')
Sombrero_Deep_2003_snapper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2003_grouper <- merge(Sombrero_Deep_2003, grouper, by = c("SPECIES_CD"))
Sombrero_Deep_2003_grouper_biomass <- summarise_at(Sombrero_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2003_grouper_biomass$Year <- ('2003')
Sombrero_Deep_2003_grouper_biomass$Reef <- ('Sombrero Deep')


# Sombrero_Deep_2004 <- import("Sombrero_Deep/data/Sombrero_Deep_2004.xls")
# 
# Sombrero_Deep_2004_snapper <- merge(Sombrero_Deep_2004, snapper, by = c("SPECIES_CD"))
# Sombrero_Deep_2004_snapper_biomass <- summarise_at(Sombrero_Deep_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Sombrero_Deep_2004_snapper_biomass$Year <- ('2004')
# Sombrero_Deep_2004_snapper_biomass$Reef <- ('Sombrero Deep')
# 
# 
# Sombrero_Deep_2004_grouper <- merge(Sombrero_Deep_2004, grouper, by = c("SPECIES_CD"))
# Sombrero_Deep_2004_grouper_biomass <- summarise_at(Sombrero_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Sombrero_Deep_2004_grouper_biomass$Year <- ('2004')
# Sombrero_Deep_2004_grouper_biomass$Reef <- ('Sombrero Deep')

Sombrero_Deep_2005 <- import("Sombrero_Deep/data/Sombrero_Deep_2005.xls")

Sombrero_Deep_2005_snapper <- merge(Sombrero_Deep_2005, snapper, by = c("SPECIES_CD"))
Sombrero_Deep_2005_snapper_biomass <- summarise_at(Sombrero_Deep_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2005_snapper_biomass$Year <- ('2005')
Sombrero_Deep_2005_snapper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2005_grouper <- merge(Sombrero_Deep_2005, grouper, by = c("SPECIES_CD"))
Sombrero_Deep_2005_grouper_biomass <- summarise_at(Sombrero_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2005_grouper_biomass$Year <- ('2005')
Sombrero_Deep_2005_grouper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2006 <- import("Sombrero_Deep/data/Sombrero_Deep_2006.xls")

Sombrero_Deep_2006_snapper <- merge(Sombrero_Deep_2006, snapper, by = c("SPECIES_CD"))
Sombrero_Deep_2006_snapper_biomass <- summarise_at(Sombrero_Deep_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2006_snapper_biomass$Year <- ('2006')
Sombrero_Deep_2006_snapper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2006_grouper <- merge(Sombrero_Deep_2006, grouper, by = c("SPECIES_CD"))
Sombrero_Deep_2006_grouper_biomass <- summarise_at(Sombrero_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2006_grouper_biomass$Year <- ('2006')
Sombrero_Deep_2006_grouper_biomass$Reef <- ('Sombrero Deep')

Sombrero_Deep_2007 <- import("Sombrero_Deep/data/Sombrero_Deep_2007.xls")

Sombrero_Deep_2007_snapper <- merge(Sombrero_Deep_2007, snapper, by = c("SPECIES_CD"))
Sombrero_Deep_2007_snapper_biomass <- summarise_at(Sombrero_Deep_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2007_snapper_biomass$Year <- ('2007')
Sombrero_Deep_2007_snapper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2007_grouper <- merge(Sombrero_Deep_2007, grouper, by = c("SPECIES_CD"))
Sombrero_Deep_2007_grouper_biomass <- summarise_at(Sombrero_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2007_grouper_biomass$Year <- ('2007')
Sombrero_Deep_2007_grouper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2008 <- import("Sombrero_Deep/data/Sombrero_Deep_2008.xls")

Sombrero_Deep_2008_snapper <- merge(Sombrero_Deep_2008, snapper, by = c("SPECIES_CD"))
Sombrero_Deep_2008_snapper_biomass <- summarise_at(Sombrero_Deep_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2008_snapper_biomass$Year <- ('2008')
Sombrero_Deep_2008_snapper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2008_grouper <- merge(Sombrero_Deep_2008, grouper, by = c("SPECIES_CD"))
Sombrero_Deep_2008_grouper_biomass <- summarise_at(Sombrero_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2008_grouper_biomass$Year <- ('2008')
Sombrero_Deep_2008_grouper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2009 <- import("Sombrero_Deep/data/Sombrero_Deep_2009.xls")

Sombrero_Deep_2009_snapper <- merge(Sombrero_Deep_2009, snapper, by = c("SPECIES_CD"))
Sombrero_Deep_2009_snapper_biomass <- summarise_at(Sombrero_Deep_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2009_snapper_biomass$Year <- ('2009')
Sombrero_Deep_2009_snapper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2009_grouper <- merge(Sombrero_Deep_2009, grouper, by = c("SPECIES_CD"))
Sombrero_Deep_2009_grouper_biomass <- summarise_at(Sombrero_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2009_grouper_biomass$Year <- ('2009')
Sombrero_Deep_2009_grouper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2010 <- import("Sombrero_Deep/data/Sombrero_Deep_2010.xls")

Sombrero_Deep_2010_snapper <- merge(Sombrero_Deep_2010, snapper, by = c("SPECIES_CD"))
Sombrero_Deep_2010_snapper_biomass <- summarise_at(Sombrero_Deep_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2010_snapper_biomass$Year <- ('2010')
Sombrero_Deep_2010_snapper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2010_grouper <- merge(Sombrero_Deep_2010, grouper, by = c("SPECIES_CD"))
Sombrero_Deep_2010_grouper_biomass <- summarise_at(Sombrero_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2010_grouper_biomass$Year <- ('2010')
Sombrero_Deep_2010_grouper_biomass$Reef <- ('Sombrero Deep')

Sombrero_Deep_2011 <- import("Sombrero_Deep/data/Sombrero_Deep_2011.xls")

Sombrero_Deep_2011_snapper <- merge(Sombrero_Deep_2011, snapper, by = c("SPECIES_CD"))
Sombrero_Deep_2011_snapper_biomass <- summarise_at(Sombrero_Deep_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2011_snapper_biomass$Year <- ('2011')
Sombrero_Deep_2011_snapper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2011_grouper <- merge(Sombrero_Deep_2011, grouper, by = c("SPECIES_CD"))
Sombrero_Deep_2011_grouper_biomass <- summarise_at(Sombrero_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2011_grouper_biomass$Year <- ('2011')
Sombrero_Deep_2011_grouper_biomass$Reef <- ('Sombrero Deep')



Sombrero_Deep_2012 <- import("Sombrero_Deep/data/Sombrero_Deep_2012.xls")

Sombrero_Deep_2012_snapper <- merge(Sombrero_Deep_2012, snapper, by = c("SPECIES_CD"))
Sombrero_Deep_2012_snapper_biomass <- summarise_at(Sombrero_Deep_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2012_snapper_biomass$Year <- ('2012')
Sombrero_Deep_2012_snapper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2012_grouper <- merge(Sombrero_Deep_2012, grouper, by = c("SPECIES_CD"))
Sombrero_Deep_2012_grouper_biomass <- summarise_at(Sombrero_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2012_grouper_biomass$Year <- ('2012')
Sombrero_Deep_2012_grouper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2014 <- import("Sombrero_Deep/data/Sombrero_Deep_2014.xls")

Sombrero_Deep_2014_snapper <- merge(Sombrero_Deep_2014, snapper, by = c("SPECIES_CD"))
Sombrero_Deep_2014_snapper_biomass <- summarise_at(Sombrero_Deep_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2014_snapper_biomass$Year <- ('2014')
Sombrero_Deep_2014_snapper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2014_grouper <- merge(Sombrero_Deep_2014, grouper, by = c("SPECIES_CD"))
Sombrero_Deep_2014_grouper_biomass <- summarise_at(Sombrero_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2014_grouper_biomass$Year <- ('2014')
Sombrero_Deep_2014_grouper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2016 <- import("Sombrero_Deep/data/Sombrero_Deep_2016.xls")

Sombrero_Deep_2016_snapper <- merge(Sombrero_Deep_2016, snapper, by = c("SPECIES_CD"))
Sombrero_Deep_2016_snapper_biomass <- summarise_at(Sombrero_Deep_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2016_snapper_biomass$Year <- ('2016')
Sombrero_Deep_2016_snapper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2016_grouper <- merge(Sombrero_Deep_2016, grouper, by = c("SPECIES_CD"))
Sombrero_Deep_2016_grouper_biomass <- summarise_at(Sombrero_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2016_grouper_biomass$Year <- ('2016')
Sombrero_Deep_2016_grouper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2018 <- import("Sombrero_Deep/data/Sombrero_Deep_2018.xls")

Sombrero_Deep_2018_snapper <- merge(Sombrero_Deep_2018, snapper, by = c("SPECIES_CD"))
Sombrero_Deep_2018_snapper_biomass <- summarise_at(Sombrero_Deep_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2018_snapper_biomass$Year <- ('2018')
Sombrero_Deep_2018_snapper_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2018_grouper <- merge(Sombrero_Deep_2018, grouper, by = c("SPECIES_CD"))
Sombrero_Deep_2018_grouper_biomass <- summarise_at(Sombrero_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2018_grouper_biomass$Year <- ('2018')
Sombrero_Deep_2018_grouper_biomass$Reef <- ('Sombrero Deep')



### Combine all years together for snapper_ and grouper_ seperately



Sombrero_Deep_snapper_1 <- rbind(Sombrero_Deep_1999_snapper_biomass,Sombrero_Deep_2000_snapper_biomass)
Sombrero_Deep_snapper_2 <- rbind(Sombrero_Deep_snapper_1,Sombrero_Deep_2001_snapper_biomass)
Sombrero_Deep_snapper_3 <- rbind(Sombrero_Deep_snapper_2,Sombrero_Deep_2002_snapper_biomass)
Sombrero_Deep_snapper_4 <- rbind(Sombrero_Deep_snapper_3,Sombrero_Deep_2003_snapper_biomass)
#Sombrero_Deep_snapper_5 <- rbind(Sombrero_Deep_snapper_4,Sombrero_Deep_2004_snapper_biomass)
Sombrero_Deep_snapper_6 <- rbind(Sombrero_Deep_snapper_4,Sombrero_Deep_2005_snapper_biomass)
Sombrero_Deep_snapper_7 <- rbind(Sombrero_Deep_snapper_6,Sombrero_Deep_2006_snapper_biomass)
Sombrero_Deep_snapper_8 <- rbind(Sombrero_Deep_snapper_7,Sombrero_Deep_2007_snapper_biomass)
Sombrero_Deep_snapper_9 <- rbind(Sombrero_Deep_snapper_8,Sombrero_Deep_2008_snapper_biomass)
Sombrero_Deep_snapper_10 <- rbind(Sombrero_Deep_snapper_9,Sombrero_Deep_2009_snapper_biomass)
Sombrero_Deep_snapper_11<- rbind(Sombrero_Deep_snapper_10,Sombrero_Deep_2010_snapper_biomass)
Sombrero_Deep_snapper_12 <- rbind(Sombrero_Deep_snapper_11,Sombrero_Deep_2011_snapper_biomass)
Sombrero_Deep_snapper_13 <- rbind(Sombrero_Deep_snapper_12,Sombrero_Deep_2012_snapper_biomass)
Sombrero_Deep_snapper_14 <- rbind(Sombrero_Deep_snapper_13,Sombrero_Deep_2014_snapper_biomass)
Sombrero_Deep_snapper_15 <- rbind(Sombrero_Deep_snapper_14,Sombrero_Deep_2016_snapper_biomass)
Sombrero_Deep_snapper_biomass_data_combined <- rbind(Sombrero_Deep_snapper_15,Sombrero_Deep_2018_snapper_biomass)



Sombrero_Deep_grouper_1 <- rbind(Sombrero_Deep_1999_grouper_biomass,Sombrero_Deep_2000_grouper_biomass)
Sombrero_Deep_grouper_2 <- rbind(Sombrero_Deep_grouper_1,Sombrero_Deep_2001_grouper_biomass)
Sombrero_Deep_grouper_3 <- rbind(Sombrero_Deep_grouper_2,Sombrero_Deep_2002_grouper_biomass)
Sombrero_Deep_grouper_4 <- rbind(Sombrero_Deep_grouper_3,Sombrero_Deep_2003_grouper_biomass)
#Sombrero_Deep_grouper_5 <- rbind(Sombrero_Deep_grouper_4,Sombrero_Deep_2004_grouper_biomass)
Sombrero_Deep_grouper_6 <- rbind(Sombrero_Deep_grouper_4,Sombrero_Deep_2005_grouper_biomass)
Sombrero_Deep_grouper_7 <- rbind(Sombrero_Deep_grouper_6,Sombrero_Deep_2006_grouper_biomass)
Sombrero_Deep_grouper_8 <- rbind(Sombrero_Deep_grouper_7,Sombrero_Deep_2007_grouper_biomass)
Sombrero_Deep_grouper_9 <- rbind(Sombrero_Deep_grouper_8,Sombrero_Deep_2008_grouper_biomass)
Sombrero_Deep_grouper_10 <- rbind(Sombrero_Deep_grouper_9,Sombrero_Deep_2009_grouper_biomass)
Sombrero_Deep_grouper_11<- rbind(Sombrero_Deep_grouper_10,Sombrero_Deep_2010_grouper_biomass)
Sombrero_Deep_grouper_12 <- rbind(Sombrero_Deep_grouper_11,Sombrero_Deep_2011_grouper_biomass)
Sombrero_Deep_grouper_13 <- rbind(Sombrero_Deep_grouper_12,Sombrero_Deep_2012_grouper_biomass)
Sombrero_Deep_grouper_14 <- rbind(Sombrero_Deep_grouper_13,Sombrero_Deep_2014_grouper_biomass)
Sombrero_Deep_grouper_15 <- rbind(Sombrero_Deep_grouper_14,Sombrero_Deep_2016_grouper_biomass)
Sombrero_Deep_grouper_biomass_data_combined <- rbind(Sombrero_Deep_grouper_15,Sombrero_Deep_2018_grouper_biomass)



export(Sombrero_Deep_snapper_biomass_data_combined, "Sombrero_Deep/data/Sombrero_Deep_snapper__biomass.csv")
export(Sombrero_Deep_grouper_biomass_data_combined, "Sombrero_Deep/data/Sombrero_Deep_grouper__biomass.csv")



# Sombrero Shallow 

Sombrero_Shallow_1999 <- import("Sombrero_Shallow/data/Sombrero_Shallow_1999.xls")


Sombrero_Shallow_1999_snapper <- merge(Sombrero_Shallow_1999, snapper, by = c("SPECIES_CD"))
Sombrero_Shallow_1999_snapper_biomass <- summarise_at(Sombrero_Shallow_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_1999_snapper_biomass$Year <- ('1999')
Sombrero_Shallow_1999_snapper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_1999_grouper <- merge(Sombrero_Shallow_1999, grouper, by = c("SPECIES_CD"))
Sombrero_Shallow_1999_grouper_biomass <- summarise_at(Sombrero_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_1999_grouper_biomass$Year <- ('1999')
Sombrero_Shallow_1999_grouper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2000 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2000.xls")

Sombrero_Shallow_2000_snapper <- merge(Sombrero_Shallow_2000, snapper, by = c("SPECIES_CD"))
Sombrero_Shallow_2000_snapper_biomass <- summarise_at(Sombrero_Shallow_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2000_snapper_biomass$Year <- ('2000')
Sombrero_Shallow_2000_snapper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2000_grouper <- merge(Sombrero_Shallow_2000, grouper, by = c("SPECIES_CD"))
Sombrero_Shallow_2000_grouper_biomass <- summarise_at(Sombrero_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2000_grouper_biomass$Year <- ('2000')
Sombrero_Shallow_2000_grouper_biomass$Reef <- ('Sombrero Shallow')

Sombrero_Shallow_2001 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2001.xls")

Sombrero_Shallow_2001_snapper <- merge(Sombrero_Shallow_2001, snapper, by = c("SPECIES_CD"))
Sombrero_Shallow_2001_snapper_biomass <- summarise_at(Sombrero_Shallow_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2001_snapper_biomass$Year <- ('2001')
Sombrero_Shallow_2001_snapper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2001_grouper <- merge(Sombrero_Shallow_2001, grouper, by = c("SPECIES_CD"))
Sombrero_Shallow_2001_grouper_biomass <- summarise_at(Sombrero_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2001_grouper_biomass$Year <- ('2001')
Sombrero_Shallow_2001_grouper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2002 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2002.xls")

Sombrero_Shallow_2002_snapper <- merge(Sombrero_Shallow_2002, snapper, by = c("SPECIES_CD"))
Sombrero_Shallow_2002_snapper_biomass <- summarise_at(Sombrero_Shallow_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2002_snapper_biomass$Year <- ('2002')
Sombrero_Shallow_2002_snapper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2002_grouper <- merge(Sombrero_Shallow_2002, grouper, by = c("SPECIES_CD"))
Sombrero_Shallow_2002_grouper_biomass <- summarise_at(Sombrero_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2002_grouper_biomass$Year <- ('2002')
Sombrero_Shallow_2002_grouper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2003 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2003.xls")

Sombrero_Shallow_2003_snapper <- merge(Sombrero_Shallow_2003, snapper, by = c("SPECIES_CD"))
Sombrero_Shallow_2003_snapper_biomass <- summarise_at(Sombrero_Shallow_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2003_snapper_biomass$Year <- ('2003')
Sombrero_Shallow_2003_snapper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2003_grouper <- merge(Sombrero_Shallow_2003, grouper, by = c("SPECIES_CD"))
Sombrero_Shallow_2003_grouper_biomass <- summarise_at(Sombrero_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2003_grouper_biomass$Year <- ('2003')
Sombrero_Shallow_2003_grouper_biomass$Reef <- ('Sombrero Shallow')


# Sombrero_Shallow_2004 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2004.xls")
# 
# Sombrero_Shallow_2004_snapper <- merge(Sombrero_Shallow_2004, snapper, by = c("SPECIES_CD"))
# Sombrero_Shallow_2004_snapper_biomass <- summarise_at(Sombrero_Shallow_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Sombrero_Shallow_2004_snapper_biomass$Year <- ('2004')
# Sombrero_Shallow_2004_snapper_biomass$Reef <- ('Sombrero Shallow')
# 
# 
# Sombrero_Shallow_2004_grouper <- merge(Sombrero_Shallow_2004, grouper, by = c("SPECIES_CD"))
# Sombrero_Shallow_2004_grouper_biomass <- summarise_at(Sombrero_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Sombrero_Shallow_2004_grouper_biomass$Year <- ('2004')
# Sombrero_Shallow_2004_grouper_biomass$Reef <- ('Sombrero Shallow')

Sombrero_Shallow_2005 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2005.xls")

Sombrero_Shallow_2005_snapper <- merge(Sombrero_Shallow_2005, snapper, by = c("SPECIES_CD"))
Sombrero_Shallow_2005_snapper_biomass <- summarise_at(Sombrero_Shallow_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2005_snapper_biomass$Year <- ('2005')
Sombrero_Shallow_2005_snapper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2005_grouper <- merge(Sombrero_Shallow_2005, grouper, by = c("SPECIES_CD"))
Sombrero_Shallow_2005_grouper_biomass <- summarise_at(Sombrero_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2005_grouper_biomass$Year <- ('2005')
Sombrero_Shallow_2005_grouper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2006 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2006.xls")

Sombrero_Shallow_2006_snapper <- merge(Sombrero_Shallow_2006, snapper, by = c("SPECIES_CD"))
Sombrero_Shallow_2006_snapper_biomass <- summarise_at(Sombrero_Shallow_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2006_snapper_biomass$Year <- ('2006')
Sombrero_Shallow_2006_snapper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2006_grouper <- merge(Sombrero_Shallow_2006, grouper, by = c("SPECIES_CD"))
Sombrero_Shallow_2006_grouper_biomass <- summarise_at(Sombrero_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2006_grouper_biomass$Year <- ('2006')
Sombrero_Shallow_2006_grouper_biomass$Reef <- ('Sombrero Shallow')

Sombrero_Shallow_2007 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2007.xls")

Sombrero_Shallow_2007_snapper <- merge(Sombrero_Shallow_2007, snapper, by = c("SPECIES_CD"))
Sombrero_Shallow_2007_snapper_biomass <- summarise_at(Sombrero_Shallow_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2007_snapper_biomass$Year <- ('2007')
Sombrero_Shallow_2007_snapper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2007_grouper <- merge(Sombrero_Shallow_2007, grouper, by = c("SPECIES_CD"))
Sombrero_Shallow_2007_grouper_biomass <- summarise_at(Sombrero_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2007_grouper_biomass$Year <- ('2007')
Sombrero_Shallow_2007_grouper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2008 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2008.xls")

Sombrero_Shallow_2008_snapper <- merge(Sombrero_Shallow_2008, snapper, by = c("SPECIES_CD"))
Sombrero_Shallow_2008_snapper_biomass <- summarise_at(Sombrero_Shallow_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2008_snapper_biomass$Year <- ('2008')
Sombrero_Shallow_2008_snapper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2008_grouper <- merge(Sombrero_Shallow_2008, grouper, by = c("SPECIES_CD"))
Sombrero_Shallow_2008_grouper_biomass <- summarise_at(Sombrero_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2008_grouper_biomass$Year <- ('2008')
Sombrero_Shallow_2008_grouper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2009 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2009.xls")

Sombrero_Shallow_2009_snapper <- merge(Sombrero_Shallow_2009, snapper, by = c("SPECIES_CD"))
Sombrero_Shallow_2009_snapper_biomass <- summarise_at(Sombrero_Shallow_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2009_snapper_biomass$Year <- ('2009')
Sombrero_Shallow_2009_snapper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2009_grouper <- merge(Sombrero_Shallow_2009, grouper, by = c("SPECIES_CD"))
Sombrero_Shallow_2009_grouper_biomass <- summarise_at(Sombrero_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2009_grouper_biomass$Year <- ('2009')
Sombrero_Shallow_2009_grouper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2010 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2010.xls")

Sombrero_Shallow_2010_snapper <- merge(Sombrero_Shallow_2010, snapper, by = c("SPECIES_CD"))
Sombrero_Shallow_2010_snapper_biomass <- summarise_at(Sombrero_Shallow_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2010_snapper_biomass$Year <- ('2010')
Sombrero_Shallow_2010_snapper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2010_grouper <- merge(Sombrero_Shallow_2010, grouper, by = c("SPECIES_CD"))
Sombrero_Shallow_2010_grouper_biomass <- summarise_at(Sombrero_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2010_grouper_biomass$Year <- ('2010')
Sombrero_Shallow_2010_grouper_biomass$Reef <- ('Sombrero Shallow')

Sombrero_Shallow_2011 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2011.xls")

Sombrero_Shallow_2011_snapper <- merge(Sombrero_Shallow_2011, snapper, by = c("SPECIES_CD"))
Sombrero_Shallow_2011_snapper_biomass <- summarise_at(Sombrero_Shallow_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2011_snapper_biomass$Year <- ('2011')
Sombrero_Shallow_2011_snapper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2011_grouper <- merge(Sombrero_Shallow_2011, grouper, by = c("SPECIES_CD"))
Sombrero_Shallow_2011_grouper_biomass <- summarise_at(Sombrero_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2011_grouper_biomass$Year <- ('2011')
Sombrero_Shallow_2011_grouper_biomass$Reef <- ('Sombrero Shallow')



Sombrero_Shallow_2012 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2012.xls")

Sombrero_Shallow_2012_snapper <- merge(Sombrero_Shallow_2012, snapper, by = c("SPECIES_CD"))
Sombrero_Shallow_2012_snapper_biomass <- summarise_at(Sombrero_Shallow_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2012_snapper_biomass$Year <- ('2012')
Sombrero_Shallow_2012_snapper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2012_grouper <- merge(Sombrero_Shallow_2012, grouper, by = c("SPECIES_CD"))
Sombrero_Shallow_2012_grouper_biomass <- summarise_at(Sombrero_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2012_grouper_biomass$Year <- ('2012')
Sombrero_Shallow_2012_grouper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2014 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2014.xls")

Sombrero_Shallow_2014_snapper <- merge(Sombrero_Shallow_2014, snapper, by = c("SPECIES_CD"))
Sombrero_Shallow_2014_snapper_biomass <- summarise_at(Sombrero_Shallow_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2014_snapper_biomass$Year <- ('2014')
Sombrero_Shallow_2014_snapper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2014_grouper <- merge(Sombrero_Shallow_2014, grouper, by = c("SPECIES_CD"))
Sombrero_Shallow_2014_grouper_biomass <- summarise_at(Sombrero_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2014_grouper_biomass$Year <- ('2014')
Sombrero_Shallow_2014_grouper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2016 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2016.xls")

Sombrero_Shallow_2016_snapper <- merge(Sombrero_Shallow_2016, snapper, by = c("SPECIES_CD"))
Sombrero_Shallow_2016_snapper_biomass <- summarise_at(Sombrero_Shallow_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2016_snapper_biomass$Year <- ('2016')
Sombrero_Shallow_2016_snapper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2016_grouper <- merge(Sombrero_Shallow_2016, grouper, by = c("SPECIES_CD"))
Sombrero_Shallow_2016_grouper_biomass <- summarise_at(Sombrero_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2016_grouper_biomass$Year <- ('2016')
Sombrero_Shallow_2016_grouper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2018 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2018.xls")

Sombrero_Shallow_2018_snapper <- merge(Sombrero_Shallow_2018, snapper, by = c("SPECIES_CD"))
Sombrero_Shallow_2018_snapper_biomass <- summarise_at(Sombrero_Shallow_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2018_snapper_biomass$Year <- ('2018')
Sombrero_Shallow_2018_snapper_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2018_grouper <- merge(Sombrero_Shallow_2018, grouper, by = c("SPECIES_CD"))
Sombrero_Shallow_2018_grouper_biomass <- summarise_at(Sombrero_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2018_grouper_biomass$Year <- ('2018')
Sombrero_Shallow_2018_grouper_biomass$Reef <- ('Sombrero Shallow')



### Combine all years together for snapper_ and grouper_ seperately



Sombrero_Shallow_snapper_1 <- rbind(Sombrero_Shallow_1999_snapper_biomass,Sombrero_Shallow_2000_snapper_biomass)
Sombrero_Shallow_snapper_2 <- rbind(Sombrero_Shallow_snapper_1,Sombrero_Shallow_2001_snapper_biomass)
Sombrero_Shallow_snapper_3 <- rbind(Sombrero_Shallow_snapper_2,Sombrero_Shallow_2002_snapper_biomass)
Sombrero_Shallow_snapper_4 <- rbind(Sombrero_Shallow_snapper_3,Sombrero_Shallow_2003_snapper_biomass)
#Sombrero_Shallow_snapper_5 <- rbind(Sombrero_Shallow_snapper_4,Sombrero_Shallow_2004_snapper_biomass)
Sombrero_Shallow_snapper_6 <- rbind(Sombrero_Shallow_snapper_4,Sombrero_Shallow_2005_snapper_biomass)
Sombrero_Shallow_snapper_7 <- rbind(Sombrero_Shallow_snapper_6,Sombrero_Shallow_2006_snapper_biomass)
Sombrero_Shallow_snapper_8 <- rbind(Sombrero_Shallow_snapper_7,Sombrero_Shallow_2007_snapper_biomass)
Sombrero_Shallow_snapper_9 <- rbind(Sombrero_Shallow_snapper_8,Sombrero_Shallow_2008_snapper_biomass)
Sombrero_Shallow_snapper_10 <- rbind(Sombrero_Shallow_snapper_9,Sombrero_Shallow_2009_snapper_biomass)
Sombrero_Shallow_snapper_11<- rbind(Sombrero_Shallow_snapper_10,Sombrero_Shallow_2010_snapper_biomass)
Sombrero_Shallow_snapper_12 <- rbind(Sombrero_Shallow_snapper_11,Sombrero_Shallow_2011_snapper_biomass)
Sombrero_Shallow_snapper_13 <- rbind(Sombrero_Shallow_snapper_12,Sombrero_Shallow_2012_snapper_biomass)
Sombrero_Shallow_snapper_14 <- rbind(Sombrero_Shallow_snapper_13,Sombrero_Shallow_2014_snapper_biomass)
Sombrero_Shallow_snapper_15 <- rbind(Sombrero_Shallow_snapper_14,Sombrero_Shallow_2016_snapper_biomass)
Sombrero_Shallow_snapper_biomass_data_combined <- rbind(Sombrero_Shallow_snapper_15,Sombrero_Shallow_2018_snapper_biomass)



Sombrero_Shallow_grouper_1 <- rbind(Sombrero_Shallow_1999_grouper_biomass,Sombrero_Shallow_2000_grouper_biomass)
Sombrero_Shallow_grouper_2 <- rbind(Sombrero_Shallow_grouper_1,Sombrero_Shallow_2001_grouper_biomass)
Sombrero_Shallow_grouper_3 <- rbind(Sombrero_Shallow_grouper_2,Sombrero_Shallow_2002_grouper_biomass)
Sombrero_Shallow_grouper_4 <- rbind(Sombrero_Shallow_grouper_3,Sombrero_Shallow_2003_grouper_biomass)
#Sombrero_Shallow_grouper_5 <- rbind(Sombrero_Shallow_grouper_4,Sombrero_Shallow_2004_grouper_biomass)
Sombrero_Shallow_grouper_6 <- rbind(Sombrero_Shallow_grouper_4,Sombrero_Shallow_2005_grouper_biomass)
Sombrero_Shallow_grouper_7 <- rbind(Sombrero_Shallow_grouper_6,Sombrero_Shallow_2006_grouper_biomass)
Sombrero_Shallow_grouper_8 <- rbind(Sombrero_Shallow_grouper_7,Sombrero_Shallow_2007_grouper_biomass)
Sombrero_Shallow_grouper_9 <- rbind(Sombrero_Shallow_grouper_8,Sombrero_Shallow_2008_grouper_biomass)
Sombrero_Shallow_grouper_10 <- rbind(Sombrero_Shallow_grouper_9,Sombrero_Shallow_2009_grouper_biomass)
Sombrero_Shallow_grouper_11<- rbind(Sombrero_Shallow_grouper_10,Sombrero_Shallow_2010_grouper_biomass)
Sombrero_Shallow_grouper_12 <- rbind(Sombrero_Shallow_grouper_11,Sombrero_Shallow_2011_grouper_biomass)
Sombrero_Shallow_grouper_13 <- rbind(Sombrero_Shallow_grouper_12,Sombrero_Shallow_2012_grouper_biomass)
Sombrero_Shallow_grouper_14 <- rbind(Sombrero_Shallow_grouper_13,Sombrero_Shallow_2014_grouper_biomass)
Sombrero_Shallow_grouper_15 <- rbind(Sombrero_Shallow_grouper_14,Sombrero_Shallow_2016_grouper_biomass)
Sombrero_Shallow_grouper_biomass_data_combined <- rbind(Sombrero_Shallow_grouper_15,Sombrero_Shallow_2018_grouper_biomass)



export(Sombrero_Shallow_snapper_biomass_data_combined, "Sombrero_Shallow/data/Sombrero_Shallow_snapper__biomass.csv")
export(Sombrero_Shallow_grouper_biomass_data_combined, "Sombrero_Shallow/data/Sombrero_Shallow_grouper__biomass.csv")




# Tennessee Deep 

Tennessee_Deep_1999 <- import("Tennessee_Deep/data/Tennessee_Deep_1999.xls")


Tennessee_Deep_1999_snapper <- merge(Tennessee_Deep_1999, snapper, by = c("SPECIES_CD"))
Tennessee_Deep_1999_snapper_biomass <- summarise_at(Tennessee_Deep_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_1999_snapper_biomass$Year <- ('1999')
Tennessee_Deep_1999_snapper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_1999_grouper <- merge(Tennessee_Deep_1999, grouper, by = c("SPECIES_CD"))
Tennessee_Deep_1999_grouper_biomass <- summarise_at(Tennessee_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_1999_grouper_biomass$Year <- ('1999')
Tennessee_Deep_1999_grouper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2000 <- import("Tennessee_Deep/data/Tennessee_Deep_2000.xls")

Tennessee_Deep_2000_snapper <- merge(Tennessee_Deep_2000, snapper, by = c("SPECIES_CD"))
Tennessee_Deep_2000_snapper_biomass <- summarise_at(Tennessee_Deep_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2000_snapper_biomass$Year <- ('2000')
Tennessee_Deep_2000_snapper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2000_grouper <- merge(Tennessee_Deep_2000, grouper, by = c("SPECIES_CD"))
Tennessee_Deep_2000_grouper_biomass <- summarise_at(Tennessee_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2000_grouper_biomass$Year <- ('2000')
Tennessee_Deep_2000_grouper_biomass$Reef <- ('Tennessee Deep')

Tennessee_Deep_2001 <- import("Tennessee_Deep/data/Tennessee_Deep_2001.xls")

Tennessee_Deep_2001_snapper <- merge(Tennessee_Deep_2001, snapper, by = c("SPECIES_CD"))
Tennessee_Deep_2001_snapper_biomass <- summarise_at(Tennessee_Deep_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2001_snapper_biomass$Year <- ('2001')
Tennessee_Deep_2001_snapper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2001_grouper <- merge(Tennessee_Deep_2001, grouper, by = c("SPECIES_CD"))
Tennessee_Deep_2001_grouper_biomass <- summarise_at(Tennessee_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2001_grouper_biomass$Year <- ('2001')
Tennessee_Deep_2001_grouper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2002 <- import("Tennessee_Deep/data/Tennessee_Deep_2002.xls")

Tennessee_Deep_2002_snapper <- merge(Tennessee_Deep_2002, snapper, by = c("SPECIES_CD"))
Tennessee_Deep_2002_snapper_biomass <- summarise_at(Tennessee_Deep_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2002_snapper_biomass$Year <- ('2002')
Tennessee_Deep_2002_snapper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2002_grouper <- merge(Tennessee_Deep_2002, grouper, by = c("SPECIES_CD"))
Tennessee_Deep_2002_grouper_biomass <- summarise_at(Tennessee_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2002_grouper_biomass$Year <- ('2002')
Tennessee_Deep_2002_grouper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2003 <- import("Tennessee_Deep/data/Tennessee_Deep_2003.xls")

Tennessee_Deep_2003_snapper <- merge(Tennessee_Deep_2003, snapper, by = c("SPECIES_CD"))
Tennessee_Deep_2003_snapper_biomass <- summarise_at(Tennessee_Deep_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2003_snapper_biomass$Year <- ('2003')
Tennessee_Deep_2003_snapper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2003_grouper <- merge(Tennessee_Deep_2003, grouper, by = c("SPECIES_CD"))
Tennessee_Deep_2003_grouper_biomass <- summarise_at(Tennessee_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2003_grouper_biomass$Year <- ('2003')
Tennessee_Deep_2003_grouper_biomass$Reef <- ('Tennessee Deep')


# Tennessee_Deep_2004 <- import("Tennessee_Deep/data/Tennessee_Deep_2004.xls")
# 
# Tennessee_Deep_2004_snapper <- merge(Tennessee_Deep_2004, snapper, by = c("SPECIES_CD"))
# Tennessee_Deep_2004_snapper_biomass <- summarise_at(Tennessee_Deep_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Tennessee_Deep_2004_snapper_biomass$Year <- ('2004')
# Tennessee_Deep_2004_snapper_biomass$Reef <- ('Tennessee Deep')
# 
# 
# Tennessee_Deep_2004_grouper <- merge(Tennessee_Deep_2004, grouper, by = c("SPECIES_CD"))
# Tennessee_Deep_2004_grouper_biomass <- summarise_at(Tennessee_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Tennessee_Deep_2004_grouper_biomass$Year <- ('2004')
# Tennessee_Deep_2004_grouper_biomass$Reef <- ('Tennessee Deep')

Tennessee_Deep_2005 <- import("Tennessee_Deep/data/Tennessee_Deep_2005.xls")

Tennessee_Deep_2005_snapper <- merge(Tennessee_Deep_2005, snapper, by = c("SPECIES_CD"))
Tennessee_Deep_2005_snapper_biomass <- summarise_at(Tennessee_Deep_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2005_snapper_biomass$Year <- ('2005')
Tennessee_Deep_2005_snapper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2005_grouper <- merge(Tennessee_Deep_2005, grouper, by = c("SPECIES_CD"))
Tennessee_Deep_2005_grouper_biomass <- summarise_at(Tennessee_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2005_grouper_biomass$Year <- ('2005')
Tennessee_Deep_2005_grouper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2006 <- import("Tennessee_Deep/data/Tennessee_Deep_2006.xls")

Tennessee_Deep_2006_snapper <- merge(Tennessee_Deep_2006, snapper, by = c("SPECIES_CD"))
Tennessee_Deep_2006_snapper_biomass <- summarise_at(Tennessee_Deep_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2006_snapper_biomass$Year <- ('2006')
Tennessee_Deep_2006_snapper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2006_grouper <- merge(Tennessee_Deep_2006, grouper, by = c("SPECIES_CD"))
Tennessee_Deep_2006_grouper_biomass <- summarise_at(Tennessee_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2006_grouper_biomass$Year <- ('2006')
Tennessee_Deep_2006_grouper_biomass$Reef <- ('Tennessee Deep')

Tennessee_Deep_2007 <- import("Tennessee_Deep/data/Tennessee_Deep_2007.xls")

Tennessee_Deep_2007_snapper <- merge(Tennessee_Deep_2007, snapper, by = c("SPECIES_CD"))
Tennessee_Deep_2007_snapper_biomass <- summarise_at(Tennessee_Deep_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2007_snapper_biomass$Year <- ('2007')
Tennessee_Deep_2007_snapper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2007_grouper <- merge(Tennessee_Deep_2007, grouper, by = c("SPECIES_CD"))
Tennessee_Deep_2007_grouper_biomass <- summarise_at(Tennessee_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2007_grouper_biomass$Year <- ('2007')
Tennessee_Deep_2007_grouper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2008 <- import("Tennessee_Deep/data/Tennessee_Deep_2008.xls")

Tennessee_Deep_2008_snapper <- merge(Tennessee_Deep_2008, snapper, by = c("SPECIES_CD"))
Tennessee_Deep_2008_snapper_biomass <- summarise_at(Tennessee_Deep_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2008_snapper_biomass$Year <- ('2008')
Tennessee_Deep_2008_snapper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2008_grouper <- merge(Tennessee_Deep_2008, grouper, by = c("SPECIES_CD"))
Tennessee_Deep_2008_grouper_biomass <- summarise_at(Tennessee_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2008_grouper_biomass$Year <- ('2008')
Tennessee_Deep_2008_grouper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2009 <- import("Tennessee_Deep/data/Tennessee_Deep_2009.xls")

Tennessee_Deep_2009_snapper <- merge(Tennessee_Deep_2009, snapper, by = c("SPECIES_CD"))
Tennessee_Deep_2009_snapper_biomass <- summarise_at(Tennessee_Deep_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2009_snapper_biomass$Year <- ('2009')
Tennessee_Deep_2009_snapper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2009_grouper <- merge(Tennessee_Deep_2009, grouper, by = c("SPECIES_CD"))
Tennessee_Deep_2009_grouper_biomass <- summarise_at(Tennessee_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2009_grouper_biomass$Year <- ('2009')
Tennessee_Deep_2009_grouper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2010 <- import("Tennessee_Deep/data/Tennessee_Deep_2010.xls")

Tennessee_Deep_2010_snapper <- merge(Tennessee_Deep_2010, snapper, by = c("SPECIES_CD"))
Tennessee_Deep_2010_snapper_biomass <- summarise_at(Tennessee_Deep_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2010_snapper_biomass$Year <- ('2010')
Tennessee_Deep_2010_snapper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2010_grouper <- merge(Tennessee_Deep_2010, grouper, by = c("SPECIES_CD"))
Tennessee_Deep_2010_grouper_biomass <- summarise_at(Tennessee_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2010_grouper_biomass$Year <- ('2010')
Tennessee_Deep_2010_grouper_biomass$Reef <- ('Tennessee Deep')

Tennessee_Deep_2011 <- import("Tennessee_Deep/data/Tennessee_Deep_2011.xls")

Tennessee_Deep_2011_snapper <- merge(Tennessee_Deep_2011, snapper, by = c("SPECIES_CD"))
Tennessee_Deep_2011_snapper_biomass <- summarise_at(Tennessee_Deep_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2011_snapper_biomass$Year <- ('2011')
Tennessee_Deep_2011_snapper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2011_grouper <- merge(Tennessee_Deep_2011, grouper, by = c("SPECIES_CD"))
Tennessee_Deep_2011_grouper_biomass <- summarise_at(Tennessee_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2011_grouper_biomass$Year <- ('2011')
Tennessee_Deep_2011_grouper_biomass$Reef <- ('Tennessee Deep')



Tennessee_Deep_2012 <- import("Tennessee_Deep/data/Tennessee_Deep_2012.xls")

Tennessee_Deep_2012_snapper <- merge(Tennessee_Deep_2012, snapper, by = c("SPECIES_CD"))
Tennessee_Deep_2012_snapper_biomass <- summarise_at(Tennessee_Deep_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2012_snapper_biomass$Year <- ('2012')
Tennessee_Deep_2012_snapper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2012_grouper <- merge(Tennessee_Deep_2012, grouper, by = c("SPECIES_CD"))
Tennessee_Deep_2012_grouper_biomass <- summarise_at(Tennessee_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2012_grouper_biomass$Year <- ('2012')
Tennessee_Deep_2012_grouper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2014 <- import("Tennessee_Deep/data/Tennessee_Deep_2014.xls")

Tennessee_Deep_2014_snapper <- merge(Tennessee_Deep_2014, snapper, by = c("SPECIES_CD"))
Tennessee_Deep_2014_snapper_biomass <- summarise_at(Tennessee_Deep_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2014_snapper_biomass$Year <- ('2014')
Tennessee_Deep_2014_snapper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2014_grouper <- merge(Tennessee_Deep_2014, grouper, by = c("SPECIES_CD"))
Tennessee_Deep_2014_grouper_biomass <- summarise_at(Tennessee_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2014_grouper_biomass$Year <- ('2014')
Tennessee_Deep_2014_grouper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2016 <- import("Tennessee_Deep/data/Tennessee_Deep_2016.xls")

Tennessee_Deep_2016_snapper <- merge(Tennessee_Deep_2016, snapper, by = c("SPECIES_CD"))
Tennessee_Deep_2016_snapper_biomass <- summarise_at(Tennessee_Deep_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2016_snapper_biomass$Year <- ('2016')
Tennessee_Deep_2016_snapper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2016_grouper <- merge(Tennessee_Deep_2016, grouper, by = c("SPECIES_CD"))
Tennessee_Deep_2016_grouper_biomass <- summarise_at(Tennessee_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2016_grouper_biomass$Year <- ('2016')
Tennessee_Deep_2016_grouper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2018 <- import("Tennessee_Deep/data/Tennessee_Deep_2018.xls")

Tennessee_Deep_2018_snapper <- merge(Tennessee_Deep_2018, snapper, by = c("SPECIES_CD"))
Tennessee_Deep_2018_snapper_biomass <- summarise_at(Tennessee_Deep_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2018_snapper_biomass$Year <- ('2018')
Tennessee_Deep_2018_snapper_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2018_grouper <- merge(Tennessee_Deep_2018, grouper, by = c("SPECIES_CD"))
Tennessee_Deep_2018_grouper_biomass <- summarise_at(Tennessee_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2018_grouper_biomass$Year <- ('2018')
Tennessee_Deep_2018_grouper_biomass$Reef <- ('Tennessee Deep')



### Combine all years together for snapper_ and grouper_ seperately



Tennessee_Deep_snapper_1 <- rbind(Tennessee_Deep_1999_snapper_biomass,Tennessee_Deep_2000_snapper_biomass)
Tennessee_Deep_snapper_2 <- rbind(Tennessee_Deep_snapper_1,Tennessee_Deep_2001_snapper_biomass)
Tennessee_Deep_snapper_3 <- rbind(Tennessee_Deep_snapper_2,Tennessee_Deep_2002_snapper_biomass)
Tennessee_Deep_snapper_4 <- rbind(Tennessee_Deep_snapper_3,Tennessee_Deep_2003_snapper_biomass)
#Tennessee_Deep_snapper_5 <- rbind(Tennessee_Deep_snapper_4,Tennessee_Deep_2004_snapper_biomass)
Tennessee_Deep_snapper_6 <- rbind(Tennessee_Deep_snapper_4,Tennessee_Deep_2005_snapper_biomass)
Tennessee_Deep_snapper_7 <- rbind(Tennessee_Deep_snapper_6,Tennessee_Deep_2006_snapper_biomass)
Tennessee_Deep_snapper_8 <- rbind(Tennessee_Deep_snapper_7,Tennessee_Deep_2007_snapper_biomass)
Tennessee_Deep_snapper_9 <- rbind(Tennessee_Deep_snapper_8,Tennessee_Deep_2008_snapper_biomass)
Tennessee_Deep_snapper_10 <- rbind(Tennessee_Deep_snapper_9,Tennessee_Deep_2009_snapper_biomass)
Tennessee_Deep_snapper_11<- rbind(Tennessee_Deep_snapper_10,Tennessee_Deep_2010_snapper_biomass)
Tennessee_Deep_snapper_12 <- rbind(Tennessee_Deep_snapper_11,Tennessee_Deep_2011_snapper_biomass)
Tennessee_Deep_snapper_13 <- rbind(Tennessee_Deep_snapper_12,Tennessee_Deep_2012_snapper_biomass)
Tennessee_Deep_snapper_14 <- rbind(Tennessee_Deep_snapper_13,Tennessee_Deep_2014_snapper_biomass)
Tennessee_Deep_snapper_15 <- rbind(Tennessee_Deep_snapper_14,Tennessee_Deep_2016_snapper_biomass)
Tennessee_Deep_snapper_biomass_data_combined <- rbind(Tennessee_Deep_snapper_15,Tennessee_Deep_2018_snapper_biomass)



Tennessee_Deep_grouper_1 <- rbind(Tennessee_Deep_1999_grouper_biomass,Tennessee_Deep_2000_grouper_biomass)
Tennessee_Deep_grouper_2 <- rbind(Tennessee_Deep_grouper_1,Tennessee_Deep_2001_grouper_biomass)
Tennessee_Deep_grouper_3 <- rbind(Tennessee_Deep_grouper_2,Tennessee_Deep_2002_grouper_biomass)
Tennessee_Deep_grouper_4 <- rbind(Tennessee_Deep_grouper_3,Tennessee_Deep_2003_grouper_biomass)
#Tennessee_Deep_grouper_5 <- rbind(Tennessee_Deep_grouper_4,Tennessee_Deep_2004_grouper_biomass)
Tennessee_Deep_grouper_6 <- rbind(Tennessee_Deep_grouper_4,Tennessee_Deep_2005_grouper_biomass)
Tennessee_Deep_grouper_7 <- rbind(Tennessee_Deep_grouper_6,Tennessee_Deep_2006_grouper_biomass)
Tennessee_Deep_grouper_8 <- rbind(Tennessee_Deep_grouper_7,Tennessee_Deep_2007_grouper_biomass)
Tennessee_Deep_grouper_9 <- rbind(Tennessee_Deep_grouper_8,Tennessee_Deep_2008_grouper_biomass)
Tennessee_Deep_grouper_10 <- rbind(Tennessee_Deep_grouper_9,Tennessee_Deep_2009_grouper_biomass)
Tennessee_Deep_grouper_11<- rbind(Tennessee_Deep_grouper_10,Tennessee_Deep_2010_grouper_biomass)
Tennessee_Deep_grouper_12 <- rbind(Tennessee_Deep_grouper_11,Tennessee_Deep_2011_grouper_biomass)
Tennessee_Deep_grouper_13 <- rbind(Tennessee_Deep_grouper_12,Tennessee_Deep_2012_grouper_biomass)
Tennessee_Deep_grouper_14 <- rbind(Tennessee_Deep_grouper_13,Tennessee_Deep_2014_grouper_biomass)
Tennessee_Deep_grouper_15 <- rbind(Tennessee_Deep_grouper_14,Tennessee_Deep_2016_grouper_biomass)
Tennessee_Deep_grouper_biomass_data_combined <- rbind(Tennessee_Deep_grouper_15,Tennessee_Deep_2018_grouper_biomass)



export(Tennessee_Deep_snapper_biomass_data_combined, "Tennessee_Deep/data/Tennessee_Deep_snapper__biomass.csv")
export(Tennessee_Deep_grouper_biomass_data_combined, "Tennessee_Deep/data/Tennessee_Deep_grouper__biomass.csv")



# Tennessee Shallow 

Tennessee_Shallow_1999 <- import("Tennessee_Shallow/data/Tennessee_Shallow_1999.xls")


Tennessee_Shallow_1999_snapper <- merge(Tennessee_Shallow_1999, snapper, by = c("SPECIES_CD"))
Tennessee_Shallow_1999_snapper_biomass <- summarise_at(Tennessee_Shallow_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_1999_snapper_biomass$Year <- ('1999')
Tennessee_Shallow_1999_snapper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_1999_grouper <- merge(Tennessee_Shallow_1999, grouper, by = c("SPECIES_CD"))
Tennessee_Shallow_1999_grouper_biomass <- summarise_at(Tennessee_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_1999_grouper_biomass$Year <- ('1999')
Tennessee_Shallow_1999_grouper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2000 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2000.xls")

Tennessee_Shallow_2000_snapper <- merge(Tennessee_Shallow_2000, snapper, by = c("SPECIES_CD"))
Tennessee_Shallow_2000_snapper_biomass <- summarise_at(Tennessee_Shallow_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2000_snapper_biomass$Year <- ('2000')
Tennessee_Shallow_2000_snapper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2000_grouper <- merge(Tennessee_Shallow_2000, grouper, by = c("SPECIES_CD"))
Tennessee_Shallow_2000_grouper_biomass <- summarise_at(Tennessee_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2000_grouper_biomass$Year <- ('2000')
Tennessee_Shallow_2000_grouper_biomass$Reef <- ('Tennessee Shallow')

Tennessee_Shallow_2001 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2001.xls")

Tennessee_Shallow_2001_snapper <- merge(Tennessee_Shallow_2001, snapper, by = c("SPECIES_CD"))
Tennessee_Shallow_2001_snapper_biomass <- summarise_at(Tennessee_Shallow_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2001_snapper_biomass$Year <- ('2001')
Tennessee_Shallow_2001_snapper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2001_grouper <- merge(Tennessee_Shallow_2001, grouper, by = c("SPECIES_CD"))
Tennessee_Shallow_2001_grouper_biomass <- summarise_at(Tennessee_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2001_grouper_biomass$Year <- ('2001')
Tennessee_Shallow_2001_grouper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2002 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2002.xls")

Tennessee_Shallow_2002_snapper <- merge(Tennessee_Shallow_2002, snapper, by = c("SPECIES_CD"))
Tennessee_Shallow_2002_snapper_biomass <- summarise_at(Tennessee_Shallow_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2002_snapper_biomass$Year <- ('2002')
Tennessee_Shallow_2002_snapper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2002_grouper <- merge(Tennessee_Shallow_2002, grouper, by = c("SPECIES_CD"))
Tennessee_Shallow_2002_grouper_biomass <- summarise_at(Tennessee_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2002_grouper_biomass$Year <- ('2002')
Tennessee_Shallow_2002_grouper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2003 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2003.xls")

Tennessee_Shallow_2003_snapper <- merge(Tennessee_Shallow_2003, snapper, by = c("SPECIES_CD"))
Tennessee_Shallow_2003_snapper_biomass <- summarise_at(Tennessee_Shallow_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2003_snapper_biomass$Year <- ('2003')
Tennessee_Shallow_2003_snapper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2003_grouper <- merge(Tennessee_Shallow_2003, grouper, by = c("SPECIES_CD"))
Tennessee_Shallow_2003_grouper_biomass <- summarise_at(Tennessee_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2003_grouper_biomass$Year <- ('2003')
Tennessee_Shallow_2003_grouper_biomass$Reef <- ('Tennessee Shallow')


# Tennessee_Shallow_2004 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2004.xls")
# 
# Tennessee_Shallow_2004_snapper <- merge(Tennessee_Shallow_2004, snapper, by = c("SPECIES_CD"))
# Tennessee_Shallow_2004_snapper_biomass <- summarise_at(Tennessee_Shallow_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Tennessee_Shallow_2004_snapper_biomass$Year <- ('2004')
# Tennessee_Shallow_2004_snapper_biomass$Reef <- ('Tennessee Shallow')
# 
# 
# Tennessee_Shallow_2004_grouper <- merge(Tennessee_Shallow_2004, grouper, by = c("SPECIES_CD"))
# Tennessee_Shallow_2004_grouper_biomass <- summarise_at(Tennessee_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Tennessee_Shallow_2004_grouper_biomass$Year <- ('2004')
# Tennessee_Shallow_2004_grouper_biomass$Reef <- ('Tennessee Shallow')

Tennessee_Shallow_2005 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2005.xls")

Tennessee_Shallow_2005_snapper <- merge(Tennessee_Shallow_2005, snapper, by = c("SPECIES_CD"))
Tennessee_Shallow_2005_snapper_biomass <- summarise_at(Tennessee_Shallow_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2005_snapper_biomass$Year <- ('2005')
Tennessee_Shallow_2005_snapper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2005_grouper <- merge(Tennessee_Shallow_2005, grouper, by = c("SPECIES_CD"))
Tennessee_Shallow_2005_grouper_biomass <- summarise_at(Tennessee_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2005_grouper_biomass$Year <- ('2005')
Tennessee_Shallow_2005_grouper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2006 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2006.xls")

Tennessee_Shallow_2006_snapper <- merge(Tennessee_Shallow_2006, snapper, by = c("SPECIES_CD"))
Tennessee_Shallow_2006_snapper_biomass <- summarise_at(Tennessee_Shallow_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2006_snapper_biomass$Year <- ('2006')
Tennessee_Shallow_2006_snapper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2006_grouper <- merge(Tennessee_Shallow_2006, grouper, by = c("SPECIES_CD"))
Tennessee_Shallow_2006_grouper_biomass <- summarise_at(Tennessee_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2006_grouper_biomass$Year <- ('2006')
Tennessee_Shallow_2006_grouper_biomass$Reef <- ('Tennessee Shallow')

Tennessee_Shallow_2007 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2007.xls")

Tennessee_Shallow_2007_snapper <- merge(Tennessee_Shallow_2007, snapper, by = c("SPECIES_CD"))
Tennessee_Shallow_2007_snapper_biomass <- summarise_at(Tennessee_Shallow_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2007_snapper_biomass$Year <- ('2007')
Tennessee_Shallow_2007_snapper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2007_grouper <- merge(Tennessee_Shallow_2007, grouper, by = c("SPECIES_CD"))
Tennessee_Shallow_2007_grouper_biomass <- summarise_at(Tennessee_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2007_grouper_biomass$Year <- ('2007')
Tennessee_Shallow_2007_grouper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2008 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2008.xls")

Tennessee_Shallow_2008_snapper <- merge(Tennessee_Shallow_2008, snapper, by = c("SPECIES_CD"))
Tennessee_Shallow_2008_snapper_biomass <- summarise_at(Tennessee_Shallow_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2008_snapper_biomass$Year <- ('2008')
Tennessee_Shallow_2008_snapper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2008_grouper <- merge(Tennessee_Shallow_2008, grouper, by = c("SPECIES_CD"))
Tennessee_Shallow_2008_grouper_biomass <- summarise_at(Tennessee_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2008_grouper_biomass$Year <- ('2008')
Tennessee_Shallow_2008_grouper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2009 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2009.xls")

Tennessee_Shallow_2009_snapper <- merge(Tennessee_Shallow_2009, snapper, by = c("SPECIES_CD"))
Tennessee_Shallow_2009_snapper_biomass <- summarise_at(Tennessee_Shallow_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2009_snapper_biomass$Year <- ('2009')
Tennessee_Shallow_2009_snapper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2009_grouper <- merge(Tennessee_Shallow_2009, grouper, by = c("SPECIES_CD"))
Tennessee_Shallow_2009_grouper_biomass <- summarise_at(Tennessee_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2009_grouper_biomass$Year <- ('2009')
Tennessee_Shallow_2009_grouper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2010 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2010.xls")

Tennessee_Shallow_2010_snapper <- merge(Tennessee_Shallow_2010, snapper, by = c("SPECIES_CD"))
Tennessee_Shallow_2010_snapper_biomass <- summarise_at(Tennessee_Shallow_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2010_snapper_biomass$Year <- ('2010')
Tennessee_Shallow_2010_snapper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2010_grouper <- merge(Tennessee_Shallow_2010, grouper, by = c("SPECIES_CD"))
Tennessee_Shallow_2010_grouper_biomass <- summarise_at(Tennessee_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2010_grouper_biomass$Year <- ('2010')
Tennessee_Shallow_2010_grouper_biomass$Reef <- ('Tennessee Shallow')

Tennessee_Shallow_2011 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2011.xls")

Tennessee_Shallow_2011_snapper <- merge(Tennessee_Shallow_2011, snapper, by = c("SPECIES_CD"))
Tennessee_Shallow_2011_snapper_biomass <- summarise_at(Tennessee_Shallow_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2011_snapper_biomass$Year <- ('2011')
Tennessee_Shallow_2011_snapper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2011_grouper <- merge(Tennessee_Shallow_2011, grouper, by = c("SPECIES_CD"))
Tennessee_Shallow_2011_grouper_biomass <- summarise_at(Tennessee_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2011_grouper_biomass$Year <- ('2011')
Tennessee_Shallow_2011_grouper_biomass$Reef <- ('Tennessee Shallow')



Tennessee_Shallow_2012 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2012.xls")

Tennessee_Shallow_2012_snapper <- merge(Tennessee_Shallow_2012, snapper, by = c("SPECIES_CD"))
Tennessee_Shallow_2012_snapper_biomass <- summarise_at(Tennessee_Shallow_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2012_snapper_biomass$Year <- ('2012')
Tennessee_Shallow_2012_snapper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2012_grouper <- merge(Tennessee_Shallow_2012, grouper, by = c("SPECIES_CD"))
Tennessee_Shallow_2012_grouper_biomass <- summarise_at(Tennessee_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2012_grouper_biomass$Year <- ('2012')
Tennessee_Shallow_2012_grouper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2014 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2014.xls")

Tennessee_Shallow_2014_snapper <- merge(Tennessee_Shallow_2014, snapper, by = c("SPECIES_CD"))
Tennessee_Shallow_2014_snapper_biomass <- summarise_at(Tennessee_Shallow_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2014_snapper_biomass$Year <- ('2014')
Tennessee_Shallow_2014_snapper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2014_grouper <- merge(Tennessee_Shallow_2014, grouper, by = c("SPECIES_CD"))
Tennessee_Shallow_2014_grouper_biomass <- summarise_at(Tennessee_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2014_grouper_biomass$Year <- ('2014')
Tennessee_Shallow_2014_grouper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2016 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2016.xls")

Tennessee_Shallow_2016_snapper <- merge(Tennessee_Shallow_2016, snapper, by = c("SPECIES_CD"))
Tennessee_Shallow_2016_snapper_biomass <- summarise_at(Tennessee_Shallow_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2016_snapper_biomass$Year <- ('2016')
Tennessee_Shallow_2016_snapper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2016_grouper <- merge(Tennessee_Shallow_2016, grouper, by = c("SPECIES_CD"))
Tennessee_Shallow_2016_grouper_biomass <- summarise_at(Tennessee_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2016_grouper_biomass$Year <- ('2016')
Tennessee_Shallow_2016_grouper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2018 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2018.xls")

Tennessee_Shallow_2018_snapper <- merge(Tennessee_Shallow_2018, snapper, by = c("SPECIES_CD"))
Tennessee_Shallow_2018_snapper_biomass <- summarise_at(Tennessee_Shallow_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2018_snapper_biomass$Year <- ('2018')
Tennessee_Shallow_2018_snapper_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2018_grouper <- merge(Tennessee_Shallow_2018, grouper, by = c("SPECIES_CD"))
Tennessee_Shallow_2018_grouper_biomass <- summarise_at(Tennessee_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2018_grouper_biomass$Year <- ('2018')
Tennessee_Shallow_2018_grouper_biomass$Reef <- ('Tennessee Shallow')



### Combine all years together for snapper_ and grouper_ seperately



Tennessee_Shallow_snapper_1 <- rbind(Tennessee_Shallow_1999_snapper_biomass,Tennessee_Shallow_2000_snapper_biomass)
Tennessee_Shallow_snapper_2 <- rbind(Tennessee_Shallow_snapper_1,Tennessee_Shallow_2001_snapper_biomass)
Tennessee_Shallow_snapper_3 <- rbind(Tennessee_Shallow_snapper_2,Tennessee_Shallow_2002_snapper_biomass)
Tennessee_Shallow_snapper_4 <- rbind(Tennessee_Shallow_snapper_3,Tennessee_Shallow_2003_snapper_biomass)
#Tennessee_Shallow_snapper_5 <- rbind(Tennessee_Shallow_snapper_4,Tennessee_Shallow_2004_snapper_biomass)
Tennessee_Shallow_snapper_6 <- rbind(Tennessee_Shallow_snapper_4,Tennessee_Shallow_2005_snapper_biomass)
Tennessee_Shallow_snapper_7 <- rbind(Tennessee_Shallow_snapper_6,Tennessee_Shallow_2006_snapper_biomass)
Tennessee_Shallow_snapper_8 <- rbind(Tennessee_Shallow_snapper_7,Tennessee_Shallow_2007_snapper_biomass)
Tennessee_Shallow_snapper_9 <- rbind(Tennessee_Shallow_snapper_8,Tennessee_Shallow_2008_snapper_biomass)
Tennessee_Shallow_snapper_10 <- rbind(Tennessee_Shallow_snapper_9,Tennessee_Shallow_2009_snapper_biomass)
Tennessee_Shallow_snapper_11<- rbind(Tennessee_Shallow_snapper_10,Tennessee_Shallow_2010_snapper_biomass)
Tennessee_Shallow_snapper_12 <- rbind(Tennessee_Shallow_snapper_11,Tennessee_Shallow_2011_snapper_biomass)
Tennessee_Shallow_snapper_13 <- rbind(Tennessee_Shallow_snapper_12,Tennessee_Shallow_2012_snapper_biomass)
Tennessee_Shallow_snapper_14 <- rbind(Tennessee_Shallow_snapper_13,Tennessee_Shallow_2014_snapper_biomass)
Tennessee_Shallow_snapper_15 <- rbind(Tennessee_Shallow_snapper_14,Tennessee_Shallow_2016_snapper_biomass)
Tennessee_Shallow_snapper_biomass_data_combined <- rbind(Tennessee_Shallow_snapper_15,Tennessee_Shallow_2018_snapper_biomass)



Tennessee_Shallow_grouper_1 <- rbind(Tennessee_Shallow_1999_grouper_biomass,Tennessee_Shallow_2000_grouper_biomass)
Tennessee_Shallow_grouper_2 <- rbind(Tennessee_Shallow_grouper_1,Tennessee_Shallow_2001_grouper_biomass)
Tennessee_Shallow_grouper_3 <- rbind(Tennessee_Shallow_grouper_2,Tennessee_Shallow_2002_grouper_biomass)
Tennessee_Shallow_grouper_4 <- rbind(Tennessee_Shallow_grouper_3,Tennessee_Shallow_2003_grouper_biomass)
#Tennessee_Shallow_grouper_5 <- rbind(Tennessee_Shallow_grouper_4,Tennessee_Shallow_2004_grouper_biomass)
Tennessee_Shallow_grouper_6 <- rbind(Tennessee_Shallow_grouper_4,Tennessee_Shallow_2005_grouper_biomass)
Tennessee_Shallow_grouper_7 <- rbind(Tennessee_Shallow_grouper_6,Tennessee_Shallow_2006_grouper_biomass)
Tennessee_Shallow_grouper_8 <- rbind(Tennessee_Shallow_grouper_7,Tennessee_Shallow_2007_grouper_biomass)
Tennessee_Shallow_grouper_9 <- rbind(Tennessee_Shallow_grouper_8,Tennessee_Shallow_2008_grouper_biomass)
Tennessee_Shallow_grouper_10 <- rbind(Tennessee_Shallow_grouper_9,Tennessee_Shallow_2009_grouper_biomass)
Tennessee_Shallow_grouper_11<- rbind(Tennessee_Shallow_grouper_10,Tennessee_Shallow_2010_grouper_biomass)
Tennessee_Shallow_grouper_12 <- rbind(Tennessee_Shallow_grouper_11,Tennessee_Shallow_2011_grouper_biomass)
Tennessee_Shallow_grouper_13 <- rbind(Tennessee_Shallow_grouper_12,Tennessee_Shallow_2012_grouper_biomass)
Tennessee_Shallow_grouper_14 <- rbind(Tennessee_Shallow_grouper_13,Tennessee_Shallow_2014_grouper_biomass)
Tennessee_Shallow_grouper_15 <- rbind(Tennessee_Shallow_grouper_14,Tennessee_Shallow_2016_grouper_biomass)
Tennessee_Shallow_grouper_biomass_data_combined <- rbind(Tennessee_Shallow_grouper_15,Tennessee_Shallow_2018_grouper_biomass)



export(Tennessee_Shallow_snapper_biomass_data_combined, "Tennessee_Shallow/data/Tennessee_Shallow_snapper__biomass.csv")
export(Tennessee_Shallow_grouper_biomass_data_combined, "Tennessee_Shallow/data/Tennessee_Shallow_grouper__biomass.csv")




# Thor 

Thor_1999 <- import("Thor/data/Thor_1999.xls")


Thor_1999_snapper <- merge(Thor_1999, snapper, by = c("SPECIES_CD"))
Thor_1999_snapper_biomass <- summarise_at(Thor_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_1999_snapper_biomass$Year <- ('1999')
Thor_1999_snapper_biomass$Reef <- ('Thor')


Thor_1999_grouper <- merge(Thor_1999, grouper, by = c("SPECIES_CD"))
Thor_1999_grouper_biomass <- summarise_at(Thor_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_1999_grouper_biomass$Year <- ('1999')
Thor_1999_grouper_biomass$Reef <- ('Thor')


Thor_2000 <- import("Thor/data/Thor_2000.xls")

Thor_2000_snapper <- merge(Thor_2000, snapper, by = c("SPECIES_CD"))
Thor_2000_snapper_biomass <- summarise_at(Thor_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2000_snapper_biomass$Year <- ('2000')
Thor_2000_snapper_biomass$Reef <- ('Thor')


Thor_2000_grouper <- merge(Thor_2000, grouper, by = c("SPECIES_CD"))
Thor_2000_grouper_biomass <- summarise_at(Thor_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2000_grouper_biomass$Year <- ('2000')
Thor_2000_grouper_biomass$Reef <- ('Thor')

Thor_2001 <- import("Thor/data/Thor_2001.xls")

Thor_2001_snapper <- merge(Thor_2001, snapper, by = c("SPECIES_CD"))
Thor_2001_snapper_biomass <- summarise_at(Thor_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2001_snapper_biomass$Year <- ('2001')
Thor_2001_snapper_biomass$Reef <- ('Thor')


Thor_2001_grouper <- merge(Thor_2001, grouper, by = c("SPECIES_CD"))
Thor_2001_grouper_biomass <- summarise_at(Thor_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2001_grouper_biomass$Year <- ('2001')
Thor_2001_grouper_biomass$Reef <- ('Thor')


Thor_2002 <- import("Thor/data/Thor_2002.xls")

Thor_2002_snapper <- merge(Thor_2002, snapper, by = c("SPECIES_CD"))
Thor_2002_snapper_biomass <- summarise_at(Thor_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2002_snapper_biomass$Year <- ('2002')
Thor_2002_snapper_biomass$Reef <- ('Thor')


Thor_2002_grouper <- merge(Thor_2002, grouper, by = c("SPECIES_CD"))
Thor_2002_grouper_biomass <- summarise_at(Thor_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2002_grouper_biomass$Year <- ('2002')
Thor_2002_grouper_biomass$Reef <- ('Thor')


Thor_2003 <- import("Thor/data/Thor_2003.xls")

Thor_2003_snapper <- merge(Thor_2003, snapper, by = c("SPECIES_CD"))
Thor_2003_snapper_biomass <- summarise_at(Thor_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2003_snapper_biomass$Year <- ('2003')
Thor_2003_snapper_biomass$Reef <- ('Thor')


Thor_2003_grouper <- merge(Thor_2003, grouper, by = c("SPECIES_CD"))
Thor_2003_grouper_biomass <- summarise_at(Thor_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2003_grouper_biomass$Year <- ('2003')
Thor_2003_grouper_biomass$Reef <- ('Thor')


# Thor_2004 <- import("Thor/data/Thor_2004.xls")
# 
# Thor_2004_snapper <- merge(Thor_2004, snapper, by = c("SPECIES_CD"))
# Thor_2004_snapper_biomass <- summarise_at(Thor_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Thor_2004_snapper_biomass$Year <- ('2004')
# Thor_2004_snapper_biomass$Reef <- ('Thor')
# 
# 
# Thor_2004_grouper <- merge(Thor_2004, grouper, by = c("SPECIES_CD"))
# Thor_2004_grouper_biomass <- summarise_at(Thor_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Thor_2004_grouper_biomass$Year <- ('2004')
# Thor_2004_grouper_biomass$Reef <- ('Thor')

Thor_2005 <- import("Thor/data/Thor_2005.xls")

Thor_2005_snapper <- merge(Thor_2005, snapper, by = c("SPECIES_CD"))
Thor_2005_snapper_biomass <- summarise_at(Thor_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2005_snapper_biomass$Year <- ('2005')
Thor_2005_snapper_biomass$Reef <- ('Thor')


Thor_2005_grouper <- merge(Thor_2005, grouper, by = c("SPECIES_CD"))
Thor_2005_grouper_biomass <- summarise_at(Thor_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2005_grouper_biomass$Year <- ('2005')
Thor_2005_grouper_biomass$Reef <- ('Thor')


Thor_2006 <- import("Thor/data/Thor_2006.xls")

Thor_2006_snapper <- merge(Thor_2006, snapper, by = c("SPECIES_CD"))
Thor_2006_snapper_biomass <- summarise_at(Thor_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2006_snapper_biomass$Year <- ('2006')
Thor_2006_snapper_biomass$Reef <- ('Thor')


Thor_2006_grouper <- merge(Thor_2006, grouper, by = c("SPECIES_CD"))
Thor_2006_grouper_biomass <- summarise_at(Thor_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2006_grouper_biomass$Year <- ('2006')
Thor_2006_grouper_biomass$Reef <- ('Thor')

Thor_2007 <- import("Thor/data/Thor_2007.xls")

Thor_2007_snapper <- merge(Thor_2007, snapper, by = c("SPECIES_CD"))
Thor_2007_snapper_biomass <- summarise_at(Thor_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2007_snapper_biomass$Year <- ('2007')
Thor_2007_snapper_biomass$Reef <- ('Thor')


Thor_2007_grouper <- merge(Thor_2007, grouper, by = c("SPECIES_CD"))
Thor_2007_grouper_biomass <- summarise_at(Thor_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2007_grouper_biomass$Year <- ('2007')
Thor_2007_grouper_biomass$Reef <- ('Thor')


Thor_2008 <- import("Thor/data/Thor_2008.xls")

Thor_2008_snapper <- merge(Thor_2008, snapper, by = c("SPECIES_CD"))
Thor_2008_snapper_biomass <- summarise_at(Thor_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2008_snapper_biomass$Year <- ('2008')
Thor_2008_snapper_biomass$Reef <- ('Thor')


Thor_2008_grouper <- merge(Thor_2008, grouper, by = c("SPECIES_CD"))
Thor_2008_grouper_biomass <- summarise_at(Thor_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2008_grouper_biomass$Year <- ('2008')
Thor_2008_grouper_biomass$Reef <- ('Thor')


Thor_2009 <- import("Thor/data/Thor_2009.xls")

Thor_2009_snapper <- merge(Thor_2009, snapper, by = c("SPECIES_CD"))
Thor_2009_snapper_biomass <- summarise_at(Thor_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2009_snapper_biomass$Year <- ('2009')
Thor_2009_snapper_biomass$Reef <- ('Thor')


Thor_2009_grouper <- merge(Thor_2009, grouper, by = c("SPECIES_CD"))
Thor_2009_grouper_biomass <- summarise_at(Thor_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2009_grouper_biomass$Year <- ('2009')
Thor_2009_grouper_biomass$Reef <- ('Thor')


Thor_2010 <- import("Thor/data/Thor_2010.xls")

Thor_2010_snapper <- merge(Thor_2010, snapper, by = c("SPECIES_CD"))
Thor_2010_snapper_biomass <- summarise_at(Thor_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2010_snapper_biomass$Year <- ('2010')
Thor_2010_snapper_biomass$Reef <- ('Thor')


Thor_2010_grouper <- merge(Thor_2010, grouper, by = c("SPECIES_CD"))
Thor_2010_grouper_biomass <- summarise_at(Thor_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2010_grouper_biomass$Year <- ('2010')
Thor_2010_grouper_biomass$Reef <- ('Thor')

Thor_2011 <- import("Thor/data/Thor_2011.xls")

Thor_2011_snapper <- merge(Thor_2011, snapper, by = c("SPECIES_CD"))
Thor_2011_snapper_biomass <- summarise_at(Thor_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2011_snapper_biomass$Year <- ('2011')
Thor_2011_snapper_biomass$Reef <- ('Thor')


Thor_2011_grouper <- merge(Thor_2011, grouper, by = c("SPECIES_CD"))
Thor_2011_grouper_biomass <- summarise_at(Thor_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2011_grouper_biomass$Year <- ('2011')
Thor_2011_grouper_biomass$Reef <- ('Thor')



Thor_2012 <- import("Thor/data/Thor_2012.xls")

Thor_2012_snapper <- merge(Thor_2012, snapper, by = c("SPECIES_CD"))
Thor_2012_snapper_biomass <- summarise_at(Thor_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2012_snapper_biomass$Year <- ('2012')
Thor_2012_snapper_biomass$Reef <- ('Thor')


Thor_2012_grouper <- merge(Thor_2012, grouper, by = c("SPECIES_CD"))
Thor_2012_grouper_biomass <- summarise_at(Thor_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2012_grouper_biomass$Year <- ('2012')
Thor_2012_grouper_biomass$Reef <- ('Thor')


Thor_2014 <- import("Thor/data/Thor_2014.xls")

Thor_2014_snapper <- merge(Thor_2014, snapper, by = c("SPECIES_CD"))
Thor_2014_snapper_biomass <- summarise_at(Thor_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2014_snapper_biomass$Year <- ('2014')
Thor_2014_snapper_biomass$Reef <- ('Thor')


Thor_2014_grouper <- merge(Thor_2014, grouper, by = c("SPECIES_CD"))
Thor_2014_grouper_biomass <- summarise_at(Thor_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2014_grouper_biomass$Year <- ('2014')
Thor_2014_grouper_biomass$Reef <- ('Thor')


Thor_2016 <- import("Thor/data/Thor_2016.xls")

Thor_2016_snapper <- merge(Thor_2016, snapper, by = c("SPECIES_CD"))
Thor_2016_snapper_biomass <- summarise_at(Thor_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2016_snapper_biomass$Year <- ('2016')
Thor_2016_snapper_biomass$Reef <- ('Thor')


Thor_2016_grouper <- merge(Thor_2016, grouper, by = c("SPECIES_CD"))
Thor_2016_grouper_biomass <- summarise_at(Thor_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2016_grouper_biomass$Year <- ('2016')
Thor_2016_grouper_biomass$Reef <- ('Thor')


Thor_2018 <- import("Thor/data/Thor_2018.xls")

Thor_2018_snapper <- merge(Thor_2018, snapper, by = c("SPECIES_CD"))
Thor_2018_snapper_biomass <- summarise_at(Thor_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2018_snapper_biomass$Year <- ('2018')
Thor_2018_snapper_biomass$Reef <- ('Thor')


Thor_2018_grouper <- merge(Thor_2018, grouper, by = c("SPECIES_CD"))
Thor_2018_grouper_biomass <- summarise_at(Thor_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2018_grouper_biomass$Year <- ('2018')
Thor_2018_grouper_biomass$Reef <- ('Thor')



### Combine all years together for snapper_ and grouper_ seperately



Thor_snapper_1 <- rbind(Thor_1999_snapper_biomass,Thor_2000_snapper_biomass)
Thor_snapper_2 <- rbind(Thor_snapper_1,Thor_2001_snapper_biomass)
Thor_snapper_3 <- rbind(Thor_snapper_2,Thor_2002_snapper_biomass)
Thor_snapper_4 <- rbind(Thor_snapper_3,Thor_2003_snapper_biomass)
#Thor_snapper_5 <- rbind(Thor_snapper_4,Thor_2004_snapper_biomass)
Thor_snapper_6 <- rbind(Thor_snapper_4,Thor_2005_snapper_biomass)
Thor_snapper_7 <- rbind(Thor_snapper_6,Thor_2006_snapper_biomass)
Thor_snapper_8 <- rbind(Thor_snapper_7,Thor_2007_snapper_biomass)
Thor_snapper_9 <- rbind(Thor_snapper_8,Thor_2008_snapper_biomass)
Thor_snapper_10 <- rbind(Thor_snapper_9,Thor_2009_snapper_biomass)
Thor_snapper_11<- rbind(Thor_snapper_10,Thor_2010_snapper_biomass)
Thor_snapper_12 <- rbind(Thor_snapper_11,Thor_2011_snapper_biomass)
Thor_snapper_13 <- rbind(Thor_snapper_12,Thor_2012_snapper_biomass)
Thor_snapper_14 <- rbind(Thor_snapper_13,Thor_2014_snapper_biomass)
Thor_snapper_15 <- rbind(Thor_snapper_14,Thor_2016_snapper_biomass)
Thor_snapper_biomass_data_combined <- rbind(Thor_snapper_15,Thor_2018_snapper_biomass)



Thor_grouper_1 <- rbind(Thor_1999_grouper_biomass,Thor_2000_grouper_biomass)
Thor_grouper_2 <- rbind(Thor_grouper_1,Thor_2001_grouper_biomass)
Thor_grouper_3 <- rbind(Thor_grouper_2,Thor_2002_grouper_biomass)
Thor_grouper_4 <- rbind(Thor_grouper_3,Thor_2003_grouper_biomass)
#Thor_grouper_5 <- rbind(Thor_grouper_4,Thor_2004_grouper_biomass)
Thor_grouper_6 <- rbind(Thor_grouper_4,Thor_2005_grouper_biomass)
Thor_grouper_7 <- rbind(Thor_grouper_6,Thor_2006_grouper_biomass)
Thor_grouper_8 <- rbind(Thor_grouper_7,Thor_2007_grouper_biomass)
Thor_grouper_9 <- rbind(Thor_grouper_8,Thor_2008_grouper_biomass)
Thor_grouper_10 <- rbind(Thor_grouper_9,Thor_2009_grouper_biomass)
Thor_grouper_11<- rbind(Thor_grouper_10,Thor_2010_grouper_biomass)
Thor_grouper_12 <- rbind(Thor_grouper_11,Thor_2011_grouper_biomass)
Thor_grouper_13 <- rbind(Thor_grouper_12,Thor_2012_grouper_biomass)
Thor_grouper_14 <- rbind(Thor_grouper_13,Thor_2014_grouper_biomass)
Thor_grouper_15 <- rbind(Thor_grouper_14,Thor_2016_grouper_biomass)
Thor_grouper_biomass_data_combined <- rbind(Thor_grouper_15,Thor_2018_grouper_biomass)



export(Thor_snapper_biomass_data_combined, "Thor/data/Thor_snapper__biomass.csv")
export(Thor_grouper_biomass_data_combined, "Thor/data/Thor_grouper__biomass.csv")




# West Turtle Shoal 

West_Turtle_Shoal_1999 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_1999.xls")


West_Turtle_Shoal_1999_snapper <- merge(West_Turtle_Shoal_1999, snapper, by = c("SPECIES_CD"))
West_Turtle_Shoal_1999_snapper_biomass <- summarise_at(West_Turtle_Shoal_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_1999_snapper_biomass$Year <- ('1999')
West_Turtle_Shoal_1999_snapper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_1999_grouper <- merge(West_Turtle_Shoal_1999, grouper, by = c("SPECIES_CD"))
West_Turtle_Shoal_1999_grouper_biomass <- summarise_at(West_Turtle_Shoal_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_1999_grouper_biomass$Year <- ('1999')
West_Turtle_Shoal_1999_grouper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2000 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2000.xls")

West_Turtle_Shoal_2000_snapper <- merge(West_Turtle_Shoal_2000, snapper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2000_snapper_biomass <- summarise_at(West_Turtle_Shoal_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2000_snapper_biomass$Year <- ('2000')
West_Turtle_Shoal_2000_snapper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2000_grouper <- merge(West_Turtle_Shoal_2000, grouper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2000_grouper_biomass <- summarise_at(West_Turtle_Shoal_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2000_grouper_biomass$Year <- ('2000')
West_Turtle_Shoal_2000_grouper_biomass$Reef <- ('West Turtle Shoal')

West_Turtle_Shoal_2001 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2001.xls")

West_Turtle_Shoal_2001_snapper <- merge(West_Turtle_Shoal_2001, snapper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2001_snapper_biomass <- summarise_at(West_Turtle_Shoal_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2001_snapper_biomass$Year <- ('2001')
West_Turtle_Shoal_2001_snapper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2001_grouper <- merge(West_Turtle_Shoal_2001, grouper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2001_grouper_biomass <- summarise_at(West_Turtle_Shoal_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2001_grouper_biomass$Year <- ('2001')
West_Turtle_Shoal_2001_grouper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2002 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2002.xls")

West_Turtle_Shoal_2002_snapper <- merge(West_Turtle_Shoal_2002, snapper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2002_snapper_biomass <- summarise_at(West_Turtle_Shoal_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2002_snapper_biomass$Year <- ('2002')
West_Turtle_Shoal_2002_snapper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2002_grouper <- merge(West_Turtle_Shoal_2002, grouper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2002_grouper_biomass <- summarise_at(West_Turtle_Shoal_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2002_grouper_biomass$Year <- ('2002')
West_Turtle_Shoal_2002_grouper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2003 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2003.xls")

West_Turtle_Shoal_2003_snapper <- merge(West_Turtle_Shoal_2003, snapper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2003_snapper_biomass <- summarise_at(West_Turtle_Shoal_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2003_snapper_biomass$Year <- ('2003')
West_Turtle_Shoal_2003_snapper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2003_grouper <- merge(West_Turtle_Shoal_2003, grouper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2003_grouper_biomass <- summarise_at(West_Turtle_Shoal_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2003_grouper_biomass$Year <- ('2003')
West_Turtle_Shoal_2003_grouper_biomass$Reef <- ('West Turtle Shoal')


# West_Turtle_Shoal_2004 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2004.xls")
# 
# West_Turtle_Shoal_2004_snapper <- merge(West_Turtle_Shoal_2004, snapper, by = c("SPECIES_CD"))
# West_Turtle_Shoal_2004_snapper_biomass <- summarise_at(West_Turtle_Shoal_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# West_Turtle_Shoal_2004_snapper_biomass$Year <- ('2004')
# West_Turtle_Shoal_2004_snapper_biomass$Reef <- ('West Turtle Shoal')
# 
# 
# West_Turtle_Shoal_2004_grouper <- merge(West_Turtle_Shoal_2004, grouper, by = c("SPECIES_CD"))
# West_Turtle_Shoal_2004_grouper_biomass <- summarise_at(West_Turtle_Shoal_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# West_Turtle_Shoal_2004_grouper_biomass$Year <- ('2004')
# West_Turtle_Shoal_2004_grouper_biomass$Reef <- ('West Turtle Shoal')

West_Turtle_Shoal_2005 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2005.xls")

West_Turtle_Shoal_2005_snapper <- merge(West_Turtle_Shoal_2005, snapper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2005_snapper_biomass <- summarise_at(West_Turtle_Shoal_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2005_snapper_biomass$Year <- ('2005')
West_Turtle_Shoal_2005_snapper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2005_grouper <- merge(West_Turtle_Shoal_2005, grouper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2005_grouper_biomass <- summarise_at(West_Turtle_Shoal_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2005_grouper_biomass$Year <- ('2005')
West_Turtle_Shoal_2005_grouper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2006 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2006.xls")

West_Turtle_Shoal_2006_snapper <- merge(West_Turtle_Shoal_2006, snapper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2006_snapper_biomass <- summarise_at(West_Turtle_Shoal_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2006_snapper_biomass$Year <- ('2006')
West_Turtle_Shoal_2006_snapper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2006_grouper <- merge(West_Turtle_Shoal_2006, grouper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2006_grouper_biomass <- summarise_at(West_Turtle_Shoal_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2006_grouper_biomass$Year <- ('2006')
West_Turtle_Shoal_2006_grouper_biomass$Reef <- ('West Turtle Shoal')

West_Turtle_Shoal_2007 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2007.xls")

West_Turtle_Shoal_2007_snapper <- merge(West_Turtle_Shoal_2007, snapper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2007_snapper_biomass <- summarise_at(West_Turtle_Shoal_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2007_snapper_biomass$Year <- ('2007')
West_Turtle_Shoal_2007_snapper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2007_grouper <- merge(West_Turtle_Shoal_2007, grouper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2007_grouper_biomass <- summarise_at(West_Turtle_Shoal_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2007_grouper_biomass$Year <- ('2007')
West_Turtle_Shoal_2007_grouper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2008 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2008.xls")

West_Turtle_Shoal_2008_snapper <- merge(West_Turtle_Shoal_2008, snapper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2008_snapper_biomass <- summarise_at(West_Turtle_Shoal_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2008_snapper_biomass$Year <- ('2008')
West_Turtle_Shoal_2008_snapper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2008_grouper <- merge(West_Turtle_Shoal_2008, grouper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2008_grouper_biomass <- summarise_at(West_Turtle_Shoal_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2008_grouper_biomass$Year <- ('2008')
West_Turtle_Shoal_2008_grouper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2009 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2009.xls")

West_Turtle_Shoal_2009_snapper <- merge(West_Turtle_Shoal_2009, snapper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2009_snapper_biomass <- summarise_at(West_Turtle_Shoal_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2009_snapper_biomass$Year <- ('2009')
West_Turtle_Shoal_2009_snapper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2009_grouper <- merge(West_Turtle_Shoal_2009, grouper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2009_grouper_biomass <- summarise_at(West_Turtle_Shoal_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2009_grouper_biomass$Year <- ('2009')
West_Turtle_Shoal_2009_grouper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2010 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2010.xls")

West_Turtle_Shoal_2010_snapper <- merge(West_Turtle_Shoal_2010, snapper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2010_snapper_biomass <- summarise_at(West_Turtle_Shoal_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2010_snapper_biomass$Year <- ('2010')
West_Turtle_Shoal_2010_snapper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2010_grouper <- merge(West_Turtle_Shoal_2010, grouper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2010_grouper_biomass <- summarise_at(West_Turtle_Shoal_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2010_grouper_biomass$Year <- ('2010')
West_Turtle_Shoal_2010_grouper_biomass$Reef <- ('West Turtle Shoal')

West_Turtle_Shoal_2011 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2011.xls")

West_Turtle_Shoal_2011_snapper <- merge(West_Turtle_Shoal_2011, snapper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2011_snapper_biomass <- summarise_at(West_Turtle_Shoal_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2011_snapper_biomass$Year <- ('2011')
West_Turtle_Shoal_2011_snapper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2011_grouper <- merge(West_Turtle_Shoal_2011, grouper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2011_grouper_biomass <- summarise_at(West_Turtle_Shoal_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2011_grouper_biomass$Year <- ('2011')
West_Turtle_Shoal_2011_grouper_biomass$Reef <- ('West Turtle Shoal')



West_Turtle_Shoal_2012 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2012.xls")

West_Turtle_Shoal_2012_snapper <- merge(West_Turtle_Shoal_2012, snapper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2012_snapper_biomass <- summarise_at(West_Turtle_Shoal_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2012_snapper_biomass$Year <- ('2012')
West_Turtle_Shoal_2012_snapper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2012_grouper <- merge(West_Turtle_Shoal_2012, grouper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2012_grouper_biomass <- summarise_at(West_Turtle_Shoal_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2012_grouper_biomass$Year <- ('2012')
West_Turtle_Shoal_2012_grouper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2014 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2014.xls")

West_Turtle_Shoal_2014_snapper <- merge(West_Turtle_Shoal_2014, snapper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2014_snapper_biomass <- summarise_at(West_Turtle_Shoal_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2014_snapper_biomass$Year <- ('2014')
West_Turtle_Shoal_2014_snapper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2014_grouper <- merge(West_Turtle_Shoal_2014, grouper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2014_grouper_biomass <- summarise_at(West_Turtle_Shoal_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2014_grouper_biomass$Year <- ('2014')
West_Turtle_Shoal_2014_grouper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2016 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2016.xls")

West_Turtle_Shoal_2016_snapper <- merge(West_Turtle_Shoal_2016, snapper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2016_snapper_biomass <- summarise_at(West_Turtle_Shoal_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2016_snapper_biomass$Year <- ('2016')
West_Turtle_Shoal_2016_snapper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2016_grouper <- merge(West_Turtle_Shoal_2016, grouper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2016_grouper_biomass <- summarise_at(West_Turtle_Shoal_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2016_grouper_biomass$Year <- ('2016')
West_Turtle_Shoal_2016_grouper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2018 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2018.xls")

West_Turtle_Shoal_2018_snapper <- merge(West_Turtle_Shoal_2018, snapper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2018_snapper_biomass <- summarise_at(West_Turtle_Shoal_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2018_snapper_biomass$Year <- ('2018')
West_Turtle_Shoal_2018_snapper_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2018_grouper <- merge(West_Turtle_Shoal_2018, grouper, by = c("SPECIES_CD"))
West_Turtle_Shoal_2018_grouper_biomass <- summarise_at(West_Turtle_Shoal_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2018_grouper_biomass$Year <- ('2018')
West_Turtle_Shoal_2018_grouper_biomass$Reef <- ('West Turtle Shoal')



### Combine all years together for snapper_ and grouper_ seperately



West_Turtle_Shoal_snapper_1 <- rbind(West_Turtle_Shoal_1999_snapper_biomass,West_Turtle_Shoal_2000_snapper_biomass)
West_Turtle_Shoal_snapper_2 <- rbind(West_Turtle_Shoal_snapper_1,West_Turtle_Shoal_2001_snapper_biomass)
West_Turtle_Shoal_snapper_3 <- rbind(West_Turtle_Shoal_snapper_2,West_Turtle_Shoal_2002_snapper_biomass)
West_Turtle_Shoal_snapper_4 <- rbind(West_Turtle_Shoal_snapper_3,West_Turtle_Shoal_2003_snapper_biomass)
#West_Turtle_Shoal_snapper_5 <- rbind(West_Turtle_Shoal_snapper_4,West_Turtle_Shoal_2004_snapper_biomass)
West_Turtle_Shoal_snapper_6 <- rbind(West_Turtle_Shoal_snapper_4,West_Turtle_Shoal_2005_snapper_biomass)
West_Turtle_Shoal_snapper_7 <- rbind(West_Turtle_Shoal_snapper_6,West_Turtle_Shoal_2006_snapper_biomass)
West_Turtle_Shoal_snapper_8 <- rbind(West_Turtle_Shoal_snapper_7,West_Turtle_Shoal_2007_snapper_biomass)
West_Turtle_Shoal_snapper_9 <- rbind(West_Turtle_Shoal_snapper_8,West_Turtle_Shoal_2008_snapper_biomass)
West_Turtle_Shoal_snapper_10 <- rbind(West_Turtle_Shoal_snapper_9,West_Turtle_Shoal_2009_snapper_biomass)
West_Turtle_Shoal_snapper_11<- rbind(West_Turtle_Shoal_snapper_10,West_Turtle_Shoal_2010_snapper_biomass)
West_Turtle_Shoal_snapper_12 <- rbind(West_Turtle_Shoal_snapper_11,West_Turtle_Shoal_2011_snapper_biomass)
West_Turtle_Shoal_snapper_13 <- rbind(West_Turtle_Shoal_snapper_12,West_Turtle_Shoal_2012_snapper_biomass)
West_Turtle_Shoal_snapper_14 <- rbind(West_Turtle_Shoal_snapper_13,West_Turtle_Shoal_2014_snapper_biomass)
West_Turtle_Shoal_snapper_15 <- rbind(West_Turtle_Shoal_snapper_14,West_Turtle_Shoal_2016_snapper_biomass)
West_Turtle_Shoal_snapper_biomass_data_combined <- rbind(West_Turtle_Shoal_snapper_15,West_Turtle_Shoal_2018_snapper_biomass)



West_Turtle_Shoal_grouper_1 <- rbind(West_Turtle_Shoal_1999_grouper_biomass,West_Turtle_Shoal_2000_grouper_biomass)
West_Turtle_Shoal_grouper_2 <- rbind(West_Turtle_Shoal_grouper_1,West_Turtle_Shoal_2001_grouper_biomass)
West_Turtle_Shoal_grouper_3 <- rbind(West_Turtle_Shoal_grouper_2,West_Turtle_Shoal_2002_grouper_biomass)
West_Turtle_Shoal_grouper_4 <- rbind(West_Turtle_Shoal_grouper_3,West_Turtle_Shoal_2003_grouper_biomass)
#West_Turtle_Shoal_grouper_5 <- rbind(West_Turtle_Shoal_grouper_4,West_Turtle_Shoal_2004_grouper_biomass)
West_Turtle_Shoal_grouper_6 <- rbind(West_Turtle_Shoal_grouper_4,West_Turtle_Shoal_2005_grouper_biomass)
West_Turtle_Shoal_grouper_7 <- rbind(West_Turtle_Shoal_grouper_6,West_Turtle_Shoal_2006_grouper_biomass)
West_Turtle_Shoal_grouper_8 <- rbind(West_Turtle_Shoal_grouper_7,West_Turtle_Shoal_2007_grouper_biomass)
West_Turtle_Shoal_grouper_9 <- rbind(West_Turtle_Shoal_grouper_8,West_Turtle_Shoal_2008_grouper_biomass)
West_Turtle_Shoal_grouper_10 <- rbind(West_Turtle_Shoal_grouper_9,West_Turtle_Shoal_2009_grouper_biomass)
West_Turtle_Shoal_grouper_11<- rbind(West_Turtle_Shoal_grouper_10,West_Turtle_Shoal_2010_grouper_biomass)
West_Turtle_Shoal_grouper_12 <- rbind(West_Turtle_Shoal_grouper_11,West_Turtle_Shoal_2011_grouper_biomass)
West_Turtle_Shoal_grouper_13 <- rbind(West_Turtle_Shoal_grouper_12,West_Turtle_Shoal_2012_grouper_biomass)
West_Turtle_Shoal_grouper_14 <- rbind(West_Turtle_Shoal_grouper_13,West_Turtle_Shoal_2014_grouper_biomass)
West_Turtle_Shoal_grouper_15 <- rbind(West_Turtle_Shoal_grouper_14,West_Turtle_Shoal_2016_grouper_biomass)
West_Turtle_Shoal_grouper_biomass_data_combined <- rbind(West_Turtle_Shoal_grouper_15,West_Turtle_Shoal_2018_grouper_biomass)



export(West_Turtle_Shoal_snapper_biomass_data_combined, "West_Turtle_Shoal/data/West_Turtle_Shoal_snapper__biomass.csv")
export(West_Turtle_Shoal_grouper_biomass_data_combined, "West_Turtle_Shoal/data/West_Turtle_Shoal_grouper__biomass.csv")



## Combine all MK 

MK_reef_snapper_biomass_combined <- rbind(Alligator_Deep_snapper_biomass_data_combined,Alligator_Shallow_snapper_biomass_data_combined,Dustan_Rocks_snapper_biomass_data_combined,Long_Key_snapper_biomass_data_combined,Rawa_Reef_snapper_biomass_data_combined,Sombrero_Deep_snapper_biomass_data_combined,Sombrero_Shallow_snapper_biomass_data_combined,Tennessee_Deep_snapper_biomass_data_combined,Tennessee_Shallow_snapper_biomass_data_combined,Thor_snapper_biomass_data_combined,West_Turtle_Shoal_snapper_biomass_data_combined)
MK_reef_snapper_biomass_data <- arrange(MK_reef_snapper_biomass_combined, Year,Reef, sum, max, min, mean, sd )
MK_reef_snapper_biomass_data$REGION <- ("MK")
export(MK_reef_snapper_biomass_data, "MK_snapper__biomass_data.csv")



MK_reef_grouper_biomass_combined <- rbind(Alligator_Deep_grouper_biomass_data_combined,Alligator_Shallow_grouper_biomass_data_combined,Dustan_Rocks_grouper_biomass_data_combined,Long_Key_grouper_biomass_data_combined,Rawa_Reef_grouper_biomass_data_combined,Sombrero_Deep_grouper_biomass_data_combined,Sombrero_Shallow_grouper_biomass_data_combined,Tennessee_Deep_grouper_biomass_data_combined,Tennessee_Shallow_grouper_biomass_data_combined,Thor_grouper_biomass_data_combined,West_Turtle_Shoal_grouper_biomass_data_combined)
MK_reef_grouper_biomass_data <- arrange(MK_reef_grouper_biomass_combined, Year,Reef, sum, max, min, mean, sd )
MK_reef_grouper_biomass_data$REGION <- ("MK")
export(MK_reef_grouper_biomass_data, "MK_grouper__biomass_data.csv")







#Upper Keys

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/UK")


# Admiral 

Admiral_1999 <- import("Admiral/data/Admiral_1999.xls")


Admiral_1999_snapper <- merge(Admiral_1999, snapper, by = c("SPECIES_CD"))
Admiral_1999_snapper_biomass <- summarise_at(Admiral_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_1999_snapper_biomass$Year <- ('1999')
Admiral_1999_snapper_biomass$Reef <- ('Admiral')


Admiral_1999_grouper <- merge(Admiral_1999, grouper, by = c("SPECIES_CD"))
Admiral_1999_grouper_biomass <- summarise_at(Admiral_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_1999_grouper_biomass$Year <- ('1999')
Admiral_1999_grouper_biomass$Reef <- ('Admiral')


Admiral_2000 <- import("Admiral/data/Admiral_2000.xls")

Admiral_2000_snapper <- merge(Admiral_2000, snapper, by = c("SPECIES_CD"))
Admiral_2000_snapper_biomass <- summarise_at(Admiral_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2000_snapper_biomass$Year <- ('2000')
Admiral_2000_snapper_biomass$Reef <- ('Admiral')


Admiral_2000_grouper <- merge(Admiral_2000, grouper, by = c("SPECIES_CD"))
Admiral_2000_grouper_biomass <- summarise_at(Admiral_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2000_grouper_biomass$Year <- ('2000')
Admiral_2000_grouper_biomass$Reef <- ('Admiral')

Admiral_2001 <- import("Admiral/data/Admiral_2001.xls")

Admiral_2001_snapper <- merge(Admiral_2001, snapper, by = c("SPECIES_CD"))
Admiral_2001_snapper_biomass <- summarise_at(Admiral_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2001_snapper_biomass$Year <- ('2001')
Admiral_2001_snapper_biomass$Reef <- ('Admiral')


Admiral_2001_grouper <- merge(Admiral_2001, grouper, by = c("SPECIES_CD"))
Admiral_2001_grouper_biomass <- summarise_at(Admiral_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2001_grouper_biomass$Year <- ('2001')
Admiral_2001_grouper_biomass$Reef <- ('Admiral')


Admiral_2002 <- import("Admiral/data/Admiral_2002.xls")

Admiral_2002_snapper <- merge(Admiral_2002, snapper, by = c("SPECIES_CD"))
Admiral_2002_snapper_biomass <- summarise_at(Admiral_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2002_snapper_biomass$Year <- ('2002')
Admiral_2002_snapper_biomass$Reef <- ('Admiral')


Admiral_2002_grouper <- merge(Admiral_2002, grouper, by = c("SPECIES_CD"))
Admiral_2002_grouper_biomass <- summarise_at(Admiral_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2002_grouper_biomass$Year <- ('2002')
Admiral_2002_grouper_biomass$Reef <- ('Admiral')


Admiral_2003 <- import("Admiral/data/Admiral_2003.xls")

Admiral_2003_snapper <- merge(Admiral_2003, snapper, by = c("SPECIES_CD"))
Admiral_2003_snapper_biomass <- summarise_at(Admiral_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2003_snapper_biomass$Year <- ('2003')
Admiral_2003_snapper_biomass$Reef <- ('Admiral')


Admiral_2003_grouper <- merge(Admiral_2003, grouper, by = c("SPECIES_CD"))
Admiral_2003_grouper_biomass <- summarise_at(Admiral_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2003_grouper_biomass$Year <- ('2003')
Admiral_2003_grouper_biomass$Reef <- ('Admiral')


Admiral_2004 <- import("Admiral/data/Admiral_2004.xls")

Admiral_2004_snapper <- merge(Admiral_2004, snapper, by = c("SPECIES_CD"))
Admiral_2004_snapper_biomass <- summarise_at(Admiral_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2004_snapper_biomass$Year <- ('2004')
Admiral_2004_snapper_biomass$Reef <- ('Admiral')


Admiral_2004_grouper <- merge(Admiral_2004, grouper, by = c("SPECIES_CD"))
Admiral_2004_grouper_biomass <- summarise_at(Admiral_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2004_grouper_biomass$Year <- ('2004')
Admiral_2004_grouper_biomass$Reef <- ('Admiral')

Admiral_2005 <- import("Admiral/data/Admiral_2005.xls")

Admiral_2005_snapper <- merge(Admiral_2005, snapper, by = c("SPECIES_CD"))
Admiral_2005_snapper_biomass <- summarise_at(Admiral_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2005_snapper_biomass$Year <- ('2005')
Admiral_2005_snapper_biomass$Reef <- ('Admiral')


Admiral_2005_grouper <- merge(Admiral_2005, grouper, by = c("SPECIES_CD"))
Admiral_2005_grouper_biomass <- summarise_at(Admiral_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2005_grouper_biomass$Year <- ('2005')
Admiral_2005_grouper_biomass$Reef <- ('Admiral')


Admiral_2006 <- import("Admiral/data/Admiral_2006.xls")

Admiral_2006_snapper <- merge(Admiral_2006, snapper, by = c("SPECIES_CD"))
Admiral_2006_snapper_biomass <- summarise_at(Admiral_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2006_snapper_biomass$Year <- ('2006')
Admiral_2006_snapper_biomass$Reef <- ('Admiral')


Admiral_2006_grouper <- merge(Admiral_2006, grouper, by = c("SPECIES_CD"))
Admiral_2006_grouper_biomass <- summarise_at(Admiral_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2006_grouper_biomass$Year <- ('2006')
Admiral_2006_grouper_biomass$Reef <- ('Admiral')

Admiral_2007 <- import("Admiral/data/Admiral_2007.xls")

Admiral_2007_snapper <- merge(Admiral_2007, snapper, by = c("SPECIES_CD"))
Admiral_2007_snapper_biomass <- summarise_at(Admiral_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2007_snapper_biomass$Year <- ('2007')
Admiral_2007_snapper_biomass$Reef <- ('Admiral')


Admiral_2007_grouper <- merge(Admiral_2007, grouper, by = c("SPECIES_CD"))
Admiral_2007_grouper_biomass <- summarise_at(Admiral_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2007_grouper_biomass$Year <- ('2007')
Admiral_2007_grouper_biomass$Reef <- ('Admiral')


Admiral_2008 <- import("Admiral/data/Admiral_2008.xls")

Admiral_2008_snapper <- merge(Admiral_2008, snapper, by = c("SPECIES_CD"))
Admiral_2008_snapper_biomass <- summarise_at(Admiral_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2008_snapper_biomass$Year <- ('2008')
Admiral_2008_snapper_biomass$Reef <- ('Admiral')


Admiral_2008_grouper <- merge(Admiral_2008, grouper, by = c("SPECIES_CD"))
Admiral_2008_grouper_biomass <- summarise_at(Admiral_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2008_grouper_biomass$Year <- ('2008')
Admiral_2008_grouper_biomass$Reef <- ('Admiral')


Admiral_2009 <- import("Admiral/data/Admiral_2009.xls")

Admiral_2009_snapper <- merge(Admiral_2009, snapper, by = c("SPECIES_CD"))
Admiral_2009_snapper_biomass <- summarise_at(Admiral_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2009_snapper_biomass$Year <- ('2009')
Admiral_2009_snapper_biomass$Reef <- ('Admiral')


Admiral_2009_grouper <- merge(Admiral_2009, grouper, by = c("SPECIES_CD"))
Admiral_2009_grouper_biomass <- summarise_at(Admiral_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2009_grouper_biomass$Year <- ('2009')
Admiral_2009_grouper_biomass$Reef <- ('Admiral')


Admiral_2010 <- import("Admiral/data/Admiral_2010.xls")

Admiral_2010_snapper <- merge(Admiral_2010, snapper, by = c("SPECIES_CD"))
Admiral_2010_snapper_biomass <- summarise_at(Admiral_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2010_snapper_biomass$Year <- ('2010')
Admiral_2010_snapper_biomass$Reef <- ('Admiral')


Admiral_2010_grouper <- merge(Admiral_2010, grouper, by = c("SPECIES_CD"))
Admiral_2010_grouper_biomass <- summarise_at(Admiral_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2010_grouper_biomass$Year <- ('2010')
Admiral_2010_grouper_biomass$Reef <- ('Admiral')

Admiral_2011 <- import("Admiral/data/Admiral_2011.xls")

Admiral_2011_snapper <- merge(Admiral_2011, snapper, by = c("SPECIES_CD"))
Admiral_2011_snapper_biomass <- summarise_at(Admiral_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2011_snapper_biomass$Year <- ('2011')
Admiral_2011_snapper_biomass$Reef <- ('Admiral')


Admiral_2011_grouper <- merge(Admiral_2011, grouper, by = c("SPECIES_CD"))
Admiral_2011_grouper_biomass <- summarise_at(Admiral_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2011_grouper_biomass$Year <- ('2011')
Admiral_2011_grouper_biomass$Reef <- ('Admiral')



Admiral_2012 <- import("Admiral/data/Admiral_2012.xls")

Admiral_2012_snapper <- merge(Admiral_2012, snapper, by = c("SPECIES_CD"))
Admiral_2012_snapper_biomass <- summarise_at(Admiral_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2012_snapper_biomass$Year <- ('2012')
Admiral_2012_snapper_biomass$Reef <- ('Admiral')


Admiral_2012_grouper <- merge(Admiral_2012, grouper, by = c("SPECIES_CD"))
Admiral_2012_grouper_biomass <- summarise_at(Admiral_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2012_grouper_biomass$Year <- ('2012')
Admiral_2012_grouper_biomass$Reef <- ('Admiral')


Admiral_2014 <- import("Admiral/data/Admiral_2014.xls")

Admiral_2014_snapper <- merge(Admiral_2014, snapper, by = c("SPECIES_CD"))
Admiral_2014_snapper_biomass <- summarise_at(Admiral_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2014_snapper_biomass$Year <- ('2014')
Admiral_2014_snapper_biomass$Reef <- ('Admiral')


Admiral_2014_grouper <- merge(Admiral_2014, grouper, by = c("SPECIES_CD"))
Admiral_2014_grouper_biomass <- summarise_at(Admiral_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2014_grouper_biomass$Year <- ('2014')
Admiral_2014_grouper_biomass$Reef <- ('Admiral')


Admiral_2016 <- import("Admiral/data/Admiral_2016.xls")

Admiral_2016_snapper <- merge(Admiral_2016, snapper, by = c("SPECIES_CD"))
Admiral_2016_snapper_biomass <- summarise_at(Admiral_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2016_snapper_biomass$Year <- ('2016')
Admiral_2016_snapper_biomass$Reef <- ('Admiral')


Admiral_2016_grouper <- merge(Admiral_2016, grouper, by = c("SPECIES_CD"))
Admiral_2016_grouper_biomass <- summarise_at(Admiral_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2016_grouper_biomass$Year <- ('2016')
Admiral_2016_grouper_biomass$Reef <- ('Admiral')


Admiral_2018 <- import("Admiral/data/Admiral_2018.xls")

Admiral_2018_snapper <- merge(Admiral_2018, snapper, by = c("SPECIES_CD"))
Admiral_2018_snapper_biomass <- summarise_at(Admiral_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2018_snapper_biomass$Year <- ('2018')
Admiral_2018_snapper_biomass$Reef <- ('Admiral')


Admiral_2018_grouper <- merge(Admiral_2018, grouper, by = c("SPECIES_CD"))
Admiral_2018_grouper_biomass <- summarise_at(Admiral_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2018_grouper_biomass$Year <- ('2018')
Admiral_2018_grouper_biomass$Reef <- ('Admiral')



### Combine all years together for snapper_ and grouper_ seperately



Admiral_snapper_1 <- rbind(Admiral_1999_snapper_biomass,Admiral_2000_snapper_biomass)
Admiral_snapper_2 <- rbind(Admiral_snapper_1,Admiral_2001_snapper_biomass)
Admiral_snapper_3 <- rbind(Admiral_snapper_2,Admiral_2002_snapper_biomass)
Admiral_snapper_4 <- rbind(Admiral_snapper_3,Admiral_2003_snapper_biomass)
Admiral_snapper_5 <- rbind(Admiral_snapper_4,Admiral_2004_snapper_biomass)
Admiral_snapper_6 <- rbind(Admiral_snapper_5,Admiral_2005_snapper_biomass)
Admiral_snapper_7 <- rbind(Admiral_snapper_6,Admiral_2006_snapper_biomass)
Admiral_snapper_8 <- rbind(Admiral_snapper_7,Admiral_2007_snapper_biomass)
Admiral_snapper_9 <- rbind(Admiral_snapper_8,Admiral_2008_snapper_biomass)
Admiral_snapper_10 <- rbind(Admiral_snapper_9,Admiral_2009_snapper_biomass)
Admiral_snapper_11<- rbind(Admiral_snapper_10,Admiral_2010_snapper_biomass)
Admiral_snapper_12 <- rbind(Admiral_snapper_11,Admiral_2011_snapper_biomass)
Admiral_snapper_13 <- rbind(Admiral_snapper_12,Admiral_2012_snapper_biomass)
Admiral_snapper_14 <- rbind(Admiral_snapper_13,Admiral_2014_snapper_biomass)
Admiral_snapper_15 <- rbind(Admiral_snapper_14,Admiral_2016_snapper_biomass)
Admiral_snapper_biomass_data_combined <- rbind(Admiral_snapper_15,Admiral_2018_snapper_biomass)



Admiral_grouper_1 <- rbind(Admiral_1999_grouper_biomass,Admiral_2000_grouper_biomass)
Admiral_grouper_2 <- rbind(Admiral_grouper_1,Admiral_2001_grouper_biomass)
Admiral_grouper_3 <- rbind(Admiral_grouper_2,Admiral_2002_grouper_biomass)
Admiral_grouper_4 <- rbind(Admiral_grouper_3,Admiral_2003_grouper_biomass)
Admiral_grouper_5 <- rbind(Admiral_grouper_4,Admiral_2004_grouper_biomass)
Admiral_grouper_6 <- rbind(Admiral_grouper_5,Admiral_2005_grouper_biomass)
Admiral_grouper_7 <- rbind(Admiral_grouper_6,Admiral_2006_grouper_biomass)
Admiral_grouper_8 <- rbind(Admiral_grouper_7,Admiral_2007_grouper_biomass)
Admiral_grouper_9 <- rbind(Admiral_grouper_8,Admiral_2008_grouper_biomass)
Admiral_grouper_10 <- rbind(Admiral_grouper_9,Admiral_2009_grouper_biomass)
Admiral_grouper_11<- rbind(Admiral_grouper_10,Admiral_2010_grouper_biomass)
Admiral_grouper_12 <- rbind(Admiral_grouper_11,Admiral_2011_grouper_biomass)
Admiral_grouper_13 <- rbind(Admiral_grouper_12,Admiral_2012_grouper_biomass)
Admiral_grouper_14 <- rbind(Admiral_grouper_13,Admiral_2014_grouper_biomass)
Admiral_grouper_15 <- rbind(Admiral_grouper_14,Admiral_2016_grouper_biomass)
Admiral_grouper_biomass_data_combined <- rbind(Admiral_grouper_15,Admiral_2018_grouper_biomass)



export(Admiral_snapper_biomass_data_combined, "Admiral/data/Admiral_snapper__biomass.csv")
export(Admiral_grouper_biomass_data_combined, "Admiral/data/Admiral_grouper__biomass.csv")



#Burr Fish


Burr_Fish_1999 <- import("Burr_Fish/data/Burr_Fish_1999.xls")


Burr_Fish_1999_snapper <- merge(Burr_Fish_1999, snapper, by = c("SPECIES_CD"))
Burr_Fish_1999_snapper_biomass <- summarise_at(Burr_Fish_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_1999_snapper_biomass$Year <- ('1999')
Burr_Fish_1999_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_1999_grouper <- merge(Burr_Fish_1999, grouper, by = c("SPECIES_CD"))
Burr_Fish_1999_grouper_biomass <- summarise_at(Burr_Fish_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_1999_grouper_biomass$Year <- ('1999')
Burr_Fish_1999_grouper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2000 <- import("Burr_Fish/data/Burr_Fish_2000.xls")

Burr_Fish_2000_snapper <- merge(Burr_Fish_2000, snapper, by = c("SPECIES_CD"))
Burr_Fish_2000_snapper_biomass <- summarise_at(Burr_Fish_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2000_snapper_biomass$Year <- ('2000')
Burr_Fish_2000_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2000_grouper <- merge(Burr_Fish_2000, grouper, by = c("SPECIES_CD"))
Burr_Fish_2000_grouper_biomass <- summarise_at(Burr_Fish_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2000_grouper_biomass$Year <- ('2000')
Burr_Fish_2000_grouper_biomass$Reef <- ('Burr Fish')

Burr_Fish_2001 <- import("Burr_Fish/data/Burr_Fish_2001.xls")

Burr_Fish_2001_snapper <- merge(Burr_Fish_2001, snapper, by = c("SPECIES_CD"))
Burr_Fish_2001_snapper_biomass <- summarise_at(Burr_Fish_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2001_snapper_biomass$Year <- ('2001')
Burr_Fish_2001_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2001_grouper <- merge(Burr_Fish_2001, grouper, by = c("SPECIES_CD"))
Burr_Fish_2001_grouper_biomass <- summarise_at(Burr_Fish_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2001_grouper_biomass$Year <- ('2001')
Burr_Fish_2001_grouper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2002 <- import("Burr_Fish/data/Burr_Fish_2002.xls")

Burr_Fish_2002_snapper <- merge(Burr_Fish_2002, snapper, by = c("SPECIES_CD"))
Burr_Fish_2002_snapper_biomass <- summarise_at(Burr_Fish_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2002_snapper_biomass$Year <- ('2002')
Burr_Fish_2002_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2002_grouper <- merge(Burr_Fish_2002, grouper, by = c("SPECIES_CD"))
Burr_Fish_2002_grouper_biomass <- summarise_at(Burr_Fish_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2002_grouper_biomass$Year <- ('2002')
Burr_Fish_2002_grouper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2003 <- import("Burr_Fish/data/Burr_Fish_2003.xls")

Burr_Fish_2003_snapper <- merge(Burr_Fish_2003, snapper, by = c("SPECIES_CD"))
Burr_Fish_2003_snapper_biomass <- summarise_at(Burr_Fish_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2003_snapper_biomass$Year <- ('2003')
Burr_Fish_2003_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2003_grouper <- merge(Burr_Fish_2003, grouper, by = c("SPECIES_CD"))
Burr_Fish_2003_grouper_biomass <- summarise_at(Burr_Fish_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2003_grouper_biomass$Year <- ('2003')
Burr_Fish_2003_grouper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2004 <- import("Burr_Fish/data/Burr_Fish_2004.xls")

Burr_Fish_2004_snapper <- merge(Burr_Fish_2004, snapper, by = c("SPECIES_CD"))
Burr_Fish_2004_snapper_biomass <- summarise_at(Burr_Fish_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2004_snapper_biomass$Year <- ('2004')
Burr_Fish_2004_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2004_grouper <- merge(Burr_Fish_2004, grouper, by = c("SPECIES_CD"))
Burr_Fish_2004_grouper_biomass <- summarise_at(Burr_Fish_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2004_grouper_biomass$Year <- ('2004')
Burr_Fish_2004_grouper_biomass$Reef <- ('Burr Fish')

Burr_Fish_2005 <- import("Burr_Fish/data/Burr_Fish_2005.xls")

Burr_Fish_2005_snapper <- merge(Burr_Fish_2005, snapper, by = c("SPECIES_CD"))
Burr_Fish_2005_snapper_biomass <- summarise_at(Burr_Fish_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2005_snapper_biomass$Year <- ('2005')
Burr_Fish_2005_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2005_grouper <- merge(Burr_Fish_2005, grouper, by = c("SPECIES_CD"))
Burr_Fish_2005_grouper_biomass <- summarise_at(Burr_Fish_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2005_grouper_biomass$Year <- ('2005')
Burr_Fish_2005_grouper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2006 <- import("Burr_Fish/data/Burr_Fish_2006.xls")

Burr_Fish_2006_snapper <- merge(Burr_Fish_2006, snapper, by = c("SPECIES_CD"))
Burr_Fish_2006_snapper_biomass <- summarise_at(Burr_Fish_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2006_snapper_biomass$Year <- ('2006')
Burr_Fish_2006_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2006_grouper <- merge(Burr_Fish_2006, grouper, by = c("SPECIES_CD"))
Burr_Fish_2006_grouper_biomass <- summarise_at(Burr_Fish_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2006_grouper_biomass$Year <- ('2006')
Burr_Fish_2006_grouper_biomass$Reef <- ('Burr Fish')

Burr_Fish_2007 <- import("Burr_Fish/data/Burr_Fish_2007.xls")

Burr_Fish_2007_snapper <- merge(Burr_Fish_2007, snapper, by = c("SPECIES_CD"))
Burr_Fish_2007_snapper_biomass <- summarise_at(Burr_Fish_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2007_snapper_biomass$Year <- ('2007')
Burr_Fish_2007_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2007_grouper <- merge(Burr_Fish_2007, grouper, by = c("SPECIES_CD"))
Burr_Fish_2007_grouper_biomass <- summarise_at(Burr_Fish_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2007_grouper_biomass$Year <- ('2007')
Burr_Fish_2007_grouper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2008 <- import("Burr_Fish/data/Burr_Fish_2008.xls")

Burr_Fish_2008_snapper <- merge(Burr_Fish_2008, snapper, by = c("SPECIES_CD"))
Burr_Fish_2008_snapper_biomass <- summarise_at(Burr_Fish_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2008_snapper_biomass$Year <- ('2008')
Burr_Fish_2008_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2008_grouper <- merge(Burr_Fish_2008, grouper, by = c("SPECIES_CD"))
Burr_Fish_2008_grouper_biomass <- summarise_at(Burr_Fish_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2008_grouper_biomass$Year <- ('2008')
Burr_Fish_2008_grouper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2009 <- import("Burr_Fish/data/Burr_Fish_2009.xls")

Burr_Fish_2009_snapper <- merge(Burr_Fish_2009, snapper, by = c("SPECIES_CD"))
Burr_Fish_2009_snapper_biomass <- summarise_at(Burr_Fish_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2009_snapper_biomass$Year <- ('2009')
Burr_Fish_2009_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2009_grouper <- merge(Burr_Fish_2009, grouper, by = c("SPECIES_CD"))
Burr_Fish_2009_grouper_biomass <- summarise_at(Burr_Fish_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2009_grouper_biomass$Year <- ('2009')
Burr_Fish_2009_grouper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2010 <- import("Burr_Fish/data/Burr_Fish_2010.xls")

Burr_Fish_2010_snapper <- merge(Burr_Fish_2010, snapper, by = c("SPECIES_CD"))
Burr_Fish_2010_snapper_biomass <- summarise_at(Burr_Fish_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2010_snapper_biomass$Year <- ('2010')
Burr_Fish_2010_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2010_grouper <- merge(Burr_Fish_2010, grouper, by = c("SPECIES_CD"))
Burr_Fish_2010_grouper_biomass <- summarise_at(Burr_Fish_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2010_grouper_biomass$Year <- ('2010')
Burr_Fish_2010_grouper_biomass$Reef <- ('Burr Fish')

Burr_Fish_2011 <- import("Burr_Fish/data/Burr_Fish_2011.xls")

Burr_Fish_2011_snapper <- merge(Burr_Fish_2011, snapper, by = c("SPECIES_CD"))
Burr_Fish_2011_snapper_biomass <- summarise_at(Burr_Fish_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2011_snapper_biomass$Year <- ('2011')
Burr_Fish_2011_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2011_grouper <- merge(Burr_Fish_2011, grouper, by = c("SPECIES_CD"))
Burr_Fish_2011_grouper_biomass <- summarise_at(Burr_Fish_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2011_grouper_biomass$Year <- ('2011')
Burr_Fish_2011_grouper_biomass$Reef <- ('Burr Fish')



Burr_Fish_2012 <- import("Burr_Fish/data/Burr_Fish_2012.xls")

Burr_Fish_2012_snapper <- merge(Burr_Fish_2012, snapper, by = c("SPECIES_CD"))
Burr_Fish_2012_snapper_biomass <- summarise_at(Burr_Fish_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2012_snapper_biomass$Year <- ('2012')
Burr_Fish_2012_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2012_grouper <- merge(Burr_Fish_2012, grouper, by = c("SPECIES_CD"))
Burr_Fish_2012_grouper_biomass <- summarise_at(Burr_Fish_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2012_grouper_biomass$Year <- ('2012')
Burr_Fish_2012_grouper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2014 <- import("Burr_Fish/data/Burr_Fish_2014.xls")

Burr_Fish_2014_snapper <- merge(Burr_Fish_2014, snapper, by = c("SPECIES_CD"))
Burr_Fish_2014_snapper_biomass <- summarise_at(Burr_Fish_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2014_snapper_biomass$Year <- ('2014')
Burr_Fish_2014_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2014_grouper <- merge(Burr_Fish_2014, grouper, by = c("SPECIES_CD"))
Burr_Fish_2014_grouper_biomass <- summarise_at(Burr_Fish_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2014_grouper_biomass$Year <- ('2014')
Burr_Fish_2014_grouper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2016 <- import("Burr_Fish/data/Burr_Fish_2016.xls")

Burr_Fish_2016_snapper <- merge(Burr_Fish_2016, snapper, by = c("SPECIES_CD"))
Burr_Fish_2016_snapper_biomass <- summarise_at(Burr_Fish_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2016_snapper_biomass$Year <- ('2016')
Burr_Fish_2016_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2016_grouper <- merge(Burr_Fish_2016, grouper, by = c("SPECIES_CD"))
Burr_Fish_2016_grouper_biomass <- summarise_at(Burr_Fish_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2016_grouper_biomass$Year <- ('2016')
Burr_Fish_2016_grouper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2018 <- import("Burr_Fish/data/Burr_Fish_2018.xls")

Burr_Fish_2018_snapper <- merge(Burr_Fish_2018, snapper, by = c("SPECIES_CD"))
Burr_Fish_2018_snapper_biomass <- summarise_at(Burr_Fish_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2018_snapper_biomass$Year <- ('2018')
Burr_Fish_2018_snapper_biomass$Reef <- ('Burr Fish')


Burr_Fish_2018_grouper <- merge(Burr_Fish_2018, grouper, by = c("SPECIES_CD"))
Burr_Fish_2018_grouper_biomass <- summarise_at(Burr_Fish_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2018_grouper_biomass$Year <- ('2018')
Burr_Fish_2018_grouper_biomass$Reef <- ('Burr Fish')



### Combine all years together for snapper_ and grouper_ seperately



Burr_Fish_snapper_1 <- rbind(Burr_Fish_1999_snapper_biomass,Burr_Fish_2000_snapper_biomass)
Burr_Fish_snapper_2 <- rbind(Burr_Fish_snapper_1,Burr_Fish_2001_snapper_biomass)
Burr_Fish_snapper_3 <- rbind(Burr_Fish_snapper_2,Burr_Fish_2002_snapper_biomass)
Burr_Fish_snapper_4 <- rbind(Burr_Fish_snapper_3,Burr_Fish_2003_snapper_biomass)
Burr_Fish_snapper_5 <- rbind(Burr_Fish_snapper_4,Burr_Fish_2004_snapper_biomass)
Burr_Fish_snapper_6 <- rbind(Burr_Fish_snapper_5,Burr_Fish_2005_snapper_biomass)
Burr_Fish_snapper_7 <- rbind(Burr_Fish_snapper_6,Burr_Fish_2006_snapper_biomass)
Burr_Fish_snapper_8 <- rbind(Burr_Fish_snapper_7,Burr_Fish_2007_snapper_biomass)
Burr_Fish_snapper_9 <- rbind(Burr_Fish_snapper_8,Burr_Fish_2008_snapper_biomass)
Burr_Fish_snapper_10 <- rbind(Burr_Fish_snapper_9,Burr_Fish_2009_snapper_biomass)
Burr_Fish_snapper_11<- rbind(Burr_Fish_snapper_10,Burr_Fish_2010_snapper_biomass)
Burr_Fish_snapper_12 <- rbind(Burr_Fish_snapper_11,Burr_Fish_2011_snapper_biomass)
Burr_Fish_snapper_13 <- rbind(Burr_Fish_snapper_12,Burr_Fish_2012_snapper_biomass)
Burr_Fish_snapper_14 <- rbind(Burr_Fish_snapper_13,Burr_Fish_2014_snapper_biomass)
Burr_Fish_snapper_15 <- rbind(Burr_Fish_snapper_14,Burr_Fish_2016_snapper_biomass)
Burr_Fish_snapper_biomass_data_combined <- rbind(Burr_Fish_snapper_15,Burr_Fish_2018_snapper_biomass)



Burr_Fish_grouper_1 <- rbind(Burr_Fish_1999_grouper_biomass,Burr_Fish_2000_grouper_biomass)
Burr_Fish_grouper_2 <- rbind(Burr_Fish_grouper_1,Burr_Fish_2001_grouper_biomass)
Burr_Fish_grouper_3 <- rbind(Burr_Fish_grouper_2,Burr_Fish_2002_grouper_biomass)
Burr_Fish_grouper_4 <- rbind(Burr_Fish_grouper_3,Burr_Fish_2003_grouper_biomass)
Burr_Fish_grouper_5 <- rbind(Burr_Fish_grouper_4,Burr_Fish_2004_grouper_biomass)
Burr_Fish_grouper_6 <- rbind(Burr_Fish_grouper_5,Burr_Fish_2005_grouper_biomass)
Burr_Fish_grouper_7 <- rbind(Burr_Fish_grouper_6,Burr_Fish_2006_grouper_biomass)
Burr_Fish_grouper_8 <- rbind(Burr_Fish_grouper_7,Burr_Fish_2007_grouper_biomass)
Burr_Fish_grouper_9 <- rbind(Burr_Fish_grouper_8,Burr_Fish_2008_grouper_biomass)
Burr_Fish_grouper_10 <- rbind(Burr_Fish_grouper_9,Burr_Fish_2009_grouper_biomass)
Burr_Fish_grouper_11<- rbind(Burr_Fish_grouper_10,Burr_Fish_2010_grouper_biomass)
Burr_Fish_grouper_12 <- rbind(Burr_Fish_grouper_11,Burr_Fish_2011_grouper_biomass)
Burr_Fish_grouper_13 <- rbind(Burr_Fish_grouper_12,Burr_Fish_2012_grouper_biomass)
Burr_Fish_grouper_14 <- rbind(Burr_Fish_grouper_13,Burr_Fish_2014_grouper_biomass)
Burr_Fish_grouper_15 <- rbind(Burr_Fish_grouper_14,Burr_Fish_2016_grouper_biomass)
Burr_Fish_grouper_biomass_data_combined <- rbind(Burr_Fish_grouper_15,Burr_Fish_2018_grouper_biomass)



export(Burr_Fish_snapper_biomass_data_combined, "Burr_Fish/data/Burr_Fish_snapper__biomass.csv")
export(Burr_Fish_grouper_biomass_data_combined, "Burr_Fish/data/Burr_Fish_grouper__biomass.csv")



#Carysfort Deep


Carysfort_Deep_1999 <- import("Carysfort_Deep/data/Carysfort_Deep_1999.xls")


Carysfort_Deep_1999_snapper <- merge(Carysfort_Deep_1999, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_1999_snapper_biomass <- summarise_at(Carysfort_Deep_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_1999_snapper_biomass$Year <- ('1999')
Carysfort_Deep_1999_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_1999_grouper <- merge(Carysfort_Deep_1999, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_1999_grouper_biomass <- summarise_at(Carysfort_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_1999_grouper_biomass$Year <- ('1999')
Carysfort_Deep_1999_grouper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2000 <- import("Carysfort_Deep/data/Carysfort_Deep_2000.xls")

Carysfort_Deep_2000_snapper <- merge(Carysfort_Deep_2000, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_2000_snapper_biomass <- summarise_at(Carysfort_Deep_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2000_snapper_biomass$Year <- ('2000')
Carysfort_Deep_2000_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2000_grouper <- merge(Carysfort_Deep_2000, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_2000_grouper_biomass <- summarise_at(Carysfort_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2000_grouper_biomass$Year <- ('2000')
Carysfort_Deep_2000_grouper_biomass$Reef <- ('Carysfort Deep')

Carysfort_Deep_2001 <- import("Carysfort_Deep/data/Carysfort_Deep_2001.xls")

Carysfort_Deep_2001_snapper <- merge(Carysfort_Deep_2001, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_2001_snapper_biomass <- summarise_at(Carysfort_Deep_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2001_snapper_biomass$Year <- ('2001')
Carysfort_Deep_2001_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2001_grouper <- merge(Carysfort_Deep_2001, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_2001_grouper_biomass <- summarise_at(Carysfort_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2001_grouper_biomass$Year <- ('2001')
Carysfort_Deep_2001_grouper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2002 <- import("Carysfort_Deep/data/Carysfort_Deep_2002.xls")

Carysfort_Deep_2002_snapper <- merge(Carysfort_Deep_2002, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_2002_snapper_biomass <- summarise_at(Carysfort_Deep_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2002_snapper_biomass$Year <- ('2002')
Carysfort_Deep_2002_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2002_grouper <- merge(Carysfort_Deep_2002, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_2002_grouper_biomass <- summarise_at(Carysfort_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2002_grouper_biomass$Year <- ('2002')
Carysfort_Deep_2002_grouper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2003 <- import("Carysfort_Deep/data/Carysfort_Deep_2003.xls")

Carysfort_Deep_2003_snapper <- merge(Carysfort_Deep_2003, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_2003_snapper_biomass <- summarise_at(Carysfort_Deep_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2003_snapper_biomass$Year <- ('2003')
Carysfort_Deep_2003_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2003_grouper <- merge(Carysfort_Deep_2003, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_2003_grouper_biomass <- summarise_at(Carysfort_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2003_grouper_biomass$Year <- ('2003')
Carysfort_Deep_2003_grouper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2004 <- import("Carysfort_Deep/data/Carysfort_Deep_2004.xls")

Carysfort_Deep_2004_snapper <- merge(Carysfort_Deep_2004, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_2004_snapper_biomass <- summarise_at(Carysfort_Deep_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2004_snapper_biomass$Year <- ('2004')
Carysfort_Deep_2004_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2004_grouper <- merge(Carysfort_Deep_2004, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_2004_grouper_biomass <- summarise_at(Carysfort_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2004_grouper_biomass$Year <- ('2004')
Carysfort_Deep_2004_grouper_biomass$Reef <- ('Carysfort Deep')

Carysfort_Deep_2005 <- import("Carysfort_Deep/data/Carysfort_Deep_2005.xls")

Carysfort_Deep_2005_snapper <- merge(Carysfort_Deep_2005, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_2005_snapper_biomass <- summarise_at(Carysfort_Deep_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2005_snapper_biomass$Year <- ('2005')
Carysfort_Deep_2005_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2005_grouper <- merge(Carysfort_Deep_2005, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_2005_grouper_biomass <- summarise_at(Carysfort_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2005_grouper_biomass$Year <- ('2005')
Carysfort_Deep_2005_grouper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2006 <- import("Carysfort_Deep/data/Carysfort_Deep_2006.xls")

Carysfort_Deep_2006_snapper <- merge(Carysfort_Deep_2006, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_2006_snapper_biomass <- summarise_at(Carysfort_Deep_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2006_snapper_biomass$Year <- ('2006')
Carysfort_Deep_2006_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2006_grouper <- merge(Carysfort_Deep_2006, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_2006_grouper_biomass <- summarise_at(Carysfort_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2006_grouper_biomass$Year <- ('2006')
Carysfort_Deep_2006_grouper_biomass$Reef <- ('Carysfort Deep')

Carysfort_Deep_2007 <- import("Carysfort_Deep/data/Carysfort_Deep_2007.xls")

Carysfort_Deep_2007_snapper <- merge(Carysfort_Deep_2007, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_2007_snapper_biomass <- summarise_at(Carysfort_Deep_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2007_snapper_biomass$Year <- ('2007')
Carysfort_Deep_2007_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2007_grouper <- merge(Carysfort_Deep_2007, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_2007_grouper_biomass <- summarise_at(Carysfort_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2007_grouper_biomass$Year <- ('2007')
Carysfort_Deep_2007_grouper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2008 <- import("Carysfort_Deep/data/Carysfort_Deep_2008.xls")

Carysfort_Deep_2008_snapper <- merge(Carysfort_Deep_2008, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_2008_snapper_biomass <- summarise_at(Carysfort_Deep_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2008_snapper_biomass$Year <- ('2008')
Carysfort_Deep_2008_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2008_grouper <- merge(Carysfort_Deep_2008, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_2008_grouper_biomass <- summarise_at(Carysfort_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2008_grouper_biomass$Year <- ('2008')
Carysfort_Deep_2008_grouper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2009 <- import("Carysfort_Deep/data/Carysfort_Deep_2009.xls")

Carysfort_Deep_2009_snapper <- merge(Carysfort_Deep_2009, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_2009_snapper_biomass <- summarise_at(Carysfort_Deep_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2009_snapper_biomass$Year <- ('2009')
Carysfort_Deep_2009_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2009_grouper <- merge(Carysfort_Deep_2009, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_2009_grouper_biomass <- summarise_at(Carysfort_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2009_grouper_biomass$Year <- ('2009')
Carysfort_Deep_2009_grouper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2010 <- import("Carysfort_Deep/data/Carysfort_Deep_2010.xls")

Carysfort_Deep_2010_snapper <- merge(Carysfort_Deep_2010, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_2010_snapper_biomass <- summarise_at(Carysfort_Deep_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2010_snapper_biomass$Year <- ('2010')
Carysfort_Deep_2010_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2010_grouper <- merge(Carysfort_Deep_2010, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_2010_grouper_biomass <- summarise_at(Carysfort_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2010_grouper_biomass$Year <- ('2010')
Carysfort_Deep_2010_grouper_biomass$Reef <- ('Carysfort Deep')

Carysfort_Deep_2011 <- import("Carysfort_Deep/data/Carysfort_Deep_2011.xls")

Carysfort_Deep_2011_snapper <- merge(Carysfort_Deep_2011, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_2011_snapper_biomass <- summarise_at(Carysfort_Deep_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2011_snapper_biomass$Year <- ('2011')
Carysfort_Deep_2011_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2011_grouper <- merge(Carysfort_Deep_2011, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_2011_grouper_biomass <- summarise_at(Carysfort_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2011_grouper_biomass$Year <- ('2011')
Carysfort_Deep_2011_grouper_biomass$Reef <- ('Carysfort Deep')



Carysfort_Deep_2012 <- import("Carysfort_Deep/data/Carysfort_Deep_2012.xls")

Carysfort_Deep_2012_snapper <- merge(Carysfort_Deep_2012, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_2012_snapper_biomass <- summarise_at(Carysfort_Deep_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2012_snapper_biomass$Year <- ('2012')
Carysfort_Deep_2012_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2012_grouper <- merge(Carysfort_Deep_2012, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_2012_grouper_biomass <- summarise_at(Carysfort_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2012_grouper_biomass$Year <- ('2012')
Carysfort_Deep_2012_grouper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2014 <- import("Carysfort_Deep/data/Carysfort_Deep_2014.xls")

Carysfort_Deep_2014_snapper <- merge(Carysfort_Deep_2014, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_2014_snapper_biomass <- summarise_at(Carysfort_Deep_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2014_snapper_biomass$Year <- ('2014')
Carysfort_Deep_2014_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2014_grouper <- merge(Carysfort_Deep_2014, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_2014_grouper_biomass <- summarise_at(Carysfort_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2014_grouper_biomass$Year <- ('2014')
Carysfort_Deep_2014_grouper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2016 <- import("Carysfort_Deep/data/Carysfort_Deep_2016.xls")

Carysfort_Deep_2016_snapper <- merge(Carysfort_Deep_2016, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_2016_snapper_biomass <- summarise_at(Carysfort_Deep_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2016_snapper_biomass$Year <- ('2016')
Carysfort_Deep_2016_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2016_grouper <- merge(Carysfort_Deep_2016, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_2016_grouper_biomass <- summarise_at(Carysfort_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2016_grouper_biomass$Year <- ('2016')
Carysfort_Deep_2016_grouper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2018 <- import("Carysfort_Deep/data/Carysfort_Deep_2018.xls")

Carysfort_Deep_2018_snapper <- merge(Carysfort_Deep_2018, snapper, by = c("SPECIES_CD"))
Carysfort_Deep_2018_snapper_biomass <- summarise_at(Carysfort_Deep_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2018_snapper_biomass$Year <- ('2018')
Carysfort_Deep_2018_snapper_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2018_grouper <- merge(Carysfort_Deep_2018, grouper, by = c("SPECIES_CD"))
Carysfort_Deep_2018_grouper_biomass <- summarise_at(Carysfort_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2018_grouper_biomass$Year <- ('2018')
Carysfort_Deep_2018_grouper_biomass$Reef <- ('Carysfort Deep')



### Combine all years together for snapper_ and grouper_ seperately



Carysfort_Deep_snapper_1 <- rbind(Carysfort_Deep_1999_snapper_biomass,Carysfort_Deep_2000_snapper_biomass)
Carysfort_Deep_snapper_2 <- rbind(Carysfort_Deep_snapper_1,Carysfort_Deep_2001_snapper_biomass)
Carysfort_Deep_snapper_3 <- rbind(Carysfort_Deep_snapper_2,Carysfort_Deep_2002_snapper_biomass)
Carysfort_Deep_snapper_4 <- rbind(Carysfort_Deep_snapper_3,Carysfort_Deep_2003_snapper_biomass)
Carysfort_Deep_snapper_5 <- rbind(Carysfort_Deep_snapper_4,Carysfort_Deep_2004_snapper_biomass)
Carysfort_Deep_snapper_6 <- rbind(Carysfort_Deep_snapper_5,Carysfort_Deep_2005_snapper_biomass)
Carysfort_Deep_snapper_7 <- rbind(Carysfort_Deep_snapper_6,Carysfort_Deep_2006_snapper_biomass)
Carysfort_Deep_snapper_8 <- rbind(Carysfort_Deep_snapper_7,Carysfort_Deep_2007_snapper_biomass)
Carysfort_Deep_snapper_9 <- rbind(Carysfort_Deep_snapper_8,Carysfort_Deep_2008_snapper_biomass)
Carysfort_Deep_snapper_10 <- rbind(Carysfort_Deep_snapper_9,Carysfort_Deep_2009_snapper_biomass)
Carysfort_Deep_snapper_11<- rbind(Carysfort_Deep_snapper_10,Carysfort_Deep_2010_snapper_biomass)
Carysfort_Deep_snapper_12 <- rbind(Carysfort_Deep_snapper_11,Carysfort_Deep_2011_snapper_biomass)
Carysfort_Deep_snapper_13 <- rbind(Carysfort_Deep_snapper_12,Carysfort_Deep_2012_snapper_biomass)
Carysfort_Deep_snapper_14 <- rbind(Carysfort_Deep_snapper_13,Carysfort_Deep_2014_snapper_biomass)
Carysfort_Deep_snapper_15 <- rbind(Carysfort_Deep_snapper_14,Carysfort_Deep_2016_snapper_biomass)
Carysfort_Deep_snapper_biomass_data_combined <- rbind(Carysfort_Deep_snapper_15,Carysfort_Deep_2018_snapper_biomass)



Carysfort_Deep_grouper_1 <- rbind(Carysfort_Deep_1999_grouper_biomass,Carysfort_Deep_2000_grouper_biomass)
Carysfort_Deep_grouper_2 <- rbind(Carysfort_Deep_grouper_1,Carysfort_Deep_2001_grouper_biomass)
Carysfort_Deep_grouper_3 <- rbind(Carysfort_Deep_grouper_2,Carysfort_Deep_2002_grouper_biomass)
Carysfort_Deep_grouper_4 <- rbind(Carysfort_Deep_grouper_3,Carysfort_Deep_2003_grouper_biomass)
Carysfort_Deep_grouper_5 <- rbind(Carysfort_Deep_grouper_4,Carysfort_Deep_2004_grouper_biomass)
Carysfort_Deep_grouper_6 <- rbind(Carysfort_Deep_grouper_5,Carysfort_Deep_2005_grouper_biomass)
Carysfort_Deep_grouper_7 <- rbind(Carysfort_Deep_grouper_6,Carysfort_Deep_2006_grouper_biomass)
Carysfort_Deep_grouper_8 <- rbind(Carysfort_Deep_grouper_7,Carysfort_Deep_2007_grouper_biomass)
Carysfort_Deep_grouper_9 <- rbind(Carysfort_Deep_grouper_8,Carysfort_Deep_2008_grouper_biomass)
Carysfort_Deep_grouper_10 <- rbind(Carysfort_Deep_grouper_9,Carysfort_Deep_2009_grouper_biomass)
Carysfort_Deep_grouper_11<- rbind(Carysfort_Deep_grouper_10,Carysfort_Deep_2010_grouper_biomass)
Carysfort_Deep_grouper_12 <- rbind(Carysfort_Deep_grouper_11,Carysfort_Deep_2011_grouper_biomass)
Carysfort_Deep_grouper_13 <- rbind(Carysfort_Deep_grouper_12,Carysfort_Deep_2012_grouper_biomass)
Carysfort_Deep_grouper_14 <- rbind(Carysfort_Deep_grouper_13,Carysfort_Deep_2014_grouper_biomass)
Carysfort_Deep_grouper_15 <- rbind(Carysfort_Deep_grouper_14,Carysfort_Deep_2016_grouper_biomass)
Carysfort_Deep_grouper_biomass_data_combined <- rbind(Carysfort_Deep_grouper_15,Carysfort_Deep_2018_grouper_biomass)



export(Carysfort_Deep_snapper_biomass_data_combined, "Carysfort_Deep/data/Carysfort_Deep_snapper__biomass.csv")
export(Carysfort_Deep_grouper_biomass_data_combined, "Carysfort_Deep/data/Carysfort_Deep_grouper__biomass.csv")




#Carysfort Shallow


Carysfort_Shallow_1999 <- import("Carysfort_Shallow/data/Carysfort_Shallow_1999.xls")


Carysfort_Shallow_1999_snapper <- merge(Carysfort_Shallow_1999, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_1999_snapper_biomass <- summarise_at(Carysfort_Shallow_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_1999_snapper_biomass$Year <- ('1999')
Carysfort_Shallow_1999_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_1999_grouper <- merge(Carysfort_Shallow_1999, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_1999_grouper_biomass <- summarise_at(Carysfort_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_1999_grouper_biomass$Year <- ('1999')
Carysfort_Shallow_1999_grouper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2000 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2000.xls")

Carysfort_Shallow_2000_snapper <- merge(Carysfort_Shallow_2000, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_2000_snapper_biomass <- summarise_at(Carysfort_Shallow_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2000_snapper_biomass$Year <- ('2000')
Carysfort_Shallow_2000_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2000_grouper <- merge(Carysfort_Shallow_2000, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_2000_grouper_biomass <- summarise_at(Carysfort_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2000_grouper_biomass$Year <- ('2000')
Carysfort_Shallow_2000_grouper_biomass$Reef <- ('Carysfort Shallow')

Carysfort_Shallow_2001 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2001.xls")

Carysfort_Shallow_2001_snapper <- merge(Carysfort_Shallow_2001, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_2001_snapper_biomass <- summarise_at(Carysfort_Shallow_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2001_snapper_biomass$Year <- ('2001')
Carysfort_Shallow_2001_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2001_grouper <- merge(Carysfort_Shallow_2001, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_2001_grouper_biomass <- summarise_at(Carysfort_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2001_grouper_biomass$Year <- ('2001')
Carysfort_Shallow_2001_grouper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2002 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2002.xls")

Carysfort_Shallow_2002_snapper <- merge(Carysfort_Shallow_2002, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_2002_snapper_biomass <- summarise_at(Carysfort_Shallow_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2002_snapper_biomass$Year <- ('2002')
Carysfort_Shallow_2002_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2002_grouper <- merge(Carysfort_Shallow_2002, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_2002_grouper_biomass <- summarise_at(Carysfort_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2002_grouper_biomass$Year <- ('2002')
Carysfort_Shallow_2002_grouper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2003 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2003.xls")

Carysfort_Shallow_2003_snapper <- merge(Carysfort_Shallow_2003, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_2003_snapper_biomass <- summarise_at(Carysfort_Shallow_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2003_snapper_biomass$Year <- ('2003')
Carysfort_Shallow_2003_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2003_grouper <- merge(Carysfort_Shallow_2003, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_2003_grouper_biomass <- summarise_at(Carysfort_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2003_grouper_biomass$Year <- ('2003')
Carysfort_Shallow_2003_grouper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2004 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2004.xls")

Carysfort_Shallow_2004_snapper <- merge(Carysfort_Shallow_2004, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_2004_snapper_biomass <- summarise_at(Carysfort_Shallow_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2004_snapper_biomass$Year <- ('2004')
Carysfort_Shallow_2004_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2004_grouper <- merge(Carysfort_Shallow_2004, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_2004_grouper_biomass <- summarise_at(Carysfort_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2004_grouper_biomass$Year <- ('2004')
Carysfort_Shallow_2004_grouper_biomass$Reef <- ('Carysfort Shallow')

Carysfort_Shallow_2005 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2005.xls")

Carysfort_Shallow_2005_snapper <- merge(Carysfort_Shallow_2005, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_2005_snapper_biomass <- summarise_at(Carysfort_Shallow_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2005_snapper_biomass$Year <- ('2005')
Carysfort_Shallow_2005_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2005_grouper <- merge(Carysfort_Shallow_2005, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_2005_grouper_biomass <- summarise_at(Carysfort_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2005_grouper_biomass$Year <- ('2005')
Carysfort_Shallow_2005_grouper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2006 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2006.xls")

Carysfort_Shallow_2006_snapper <- merge(Carysfort_Shallow_2006, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_2006_snapper_biomass <- summarise_at(Carysfort_Shallow_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2006_snapper_biomass$Year <- ('2006')
Carysfort_Shallow_2006_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2006_grouper <- merge(Carysfort_Shallow_2006, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_2006_grouper_biomass <- summarise_at(Carysfort_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2006_grouper_biomass$Year <- ('2006')
Carysfort_Shallow_2006_grouper_biomass$Reef <- ('Carysfort Shallow')

Carysfort_Shallow_2007 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2007.xls")

Carysfort_Shallow_2007_snapper <- merge(Carysfort_Shallow_2007, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_2007_snapper_biomass <- summarise_at(Carysfort_Shallow_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2007_snapper_biomass$Year <- ('2007')
Carysfort_Shallow_2007_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2007_grouper <- merge(Carysfort_Shallow_2007, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_2007_grouper_biomass <- summarise_at(Carysfort_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2007_grouper_biomass$Year <- ('2007')
Carysfort_Shallow_2007_grouper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2008 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2008.xls")

Carysfort_Shallow_2008_snapper <- merge(Carysfort_Shallow_2008, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_2008_snapper_biomass <- summarise_at(Carysfort_Shallow_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2008_snapper_biomass$Year <- ('2008')
Carysfort_Shallow_2008_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2008_grouper <- merge(Carysfort_Shallow_2008, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_2008_grouper_biomass <- summarise_at(Carysfort_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2008_grouper_biomass$Year <- ('2008')
Carysfort_Shallow_2008_grouper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2009 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2009.xls")

Carysfort_Shallow_2009_snapper <- merge(Carysfort_Shallow_2009, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_2009_snapper_biomass <- summarise_at(Carysfort_Shallow_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2009_snapper_biomass$Year <- ('2009')
Carysfort_Shallow_2009_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2009_grouper <- merge(Carysfort_Shallow_2009, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_2009_grouper_biomass <- summarise_at(Carysfort_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2009_grouper_biomass$Year <- ('2009')
Carysfort_Shallow_2009_grouper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2010 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2010.xls")

Carysfort_Shallow_2010_snapper <- merge(Carysfort_Shallow_2010, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_2010_snapper_biomass <- summarise_at(Carysfort_Shallow_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2010_snapper_biomass$Year <- ('2010')
Carysfort_Shallow_2010_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2010_grouper <- merge(Carysfort_Shallow_2010, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_2010_grouper_biomass <- summarise_at(Carysfort_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2010_grouper_biomass$Year <- ('2010')
Carysfort_Shallow_2010_grouper_biomass$Reef <- ('Carysfort Shallow')

Carysfort_Shallow_2011 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2011.xls")

Carysfort_Shallow_2011_snapper <- merge(Carysfort_Shallow_2011, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_2011_snapper_biomass <- summarise_at(Carysfort_Shallow_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2011_snapper_biomass$Year <- ('2011')
Carysfort_Shallow_2011_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2011_grouper <- merge(Carysfort_Shallow_2011, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_2011_grouper_biomass <- summarise_at(Carysfort_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2011_grouper_biomass$Year <- ('2011')
Carysfort_Shallow_2011_grouper_biomass$Reef <- ('Carysfort Shallow')



Carysfort_Shallow_2012 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2012.xls")

Carysfort_Shallow_2012_snapper <- merge(Carysfort_Shallow_2012, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_2012_snapper_biomass <- summarise_at(Carysfort_Shallow_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2012_snapper_biomass$Year <- ('2012')
Carysfort_Shallow_2012_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2012_grouper <- merge(Carysfort_Shallow_2012, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_2012_grouper_biomass <- summarise_at(Carysfort_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2012_grouper_biomass$Year <- ('2012')
Carysfort_Shallow_2012_grouper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2014 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2014.xls")

Carysfort_Shallow_2014_snapper <- merge(Carysfort_Shallow_2014, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_2014_snapper_biomass <- summarise_at(Carysfort_Shallow_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2014_snapper_biomass$Year <- ('2014')
Carysfort_Shallow_2014_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2014_grouper <- merge(Carysfort_Shallow_2014, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_2014_grouper_biomass <- summarise_at(Carysfort_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2014_grouper_biomass$Year <- ('2014')
Carysfort_Shallow_2014_grouper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2016 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2016.xls")

Carysfort_Shallow_2016_snapper <- merge(Carysfort_Shallow_2016, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_2016_snapper_biomass <- summarise_at(Carysfort_Shallow_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2016_snapper_biomass$Year <- ('2016')
Carysfort_Shallow_2016_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2016_grouper <- merge(Carysfort_Shallow_2016, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_2016_grouper_biomass <- summarise_at(Carysfort_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2016_grouper_biomass$Year <- ('2016')
Carysfort_Shallow_2016_grouper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2018 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2018.xls")

Carysfort_Shallow_2018_snapper <- merge(Carysfort_Shallow_2018, snapper, by = c("SPECIES_CD"))
Carysfort_Shallow_2018_snapper_biomass <- summarise_at(Carysfort_Shallow_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2018_snapper_biomass$Year <- ('2018')
Carysfort_Shallow_2018_snapper_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2018_grouper <- merge(Carysfort_Shallow_2018, grouper, by = c("SPECIES_CD"))
Carysfort_Shallow_2018_grouper_biomass <- summarise_at(Carysfort_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2018_grouper_biomass$Year <- ('2018')
Carysfort_Shallow_2018_grouper_biomass$Reef <- ('Carysfort Shallow')



### Combine all years together for snapper_ and grouper_ seperately



Carysfort_Shallow_snapper_1 <- rbind(Carysfort_Shallow_1999_snapper_biomass,Carysfort_Shallow_2000_snapper_biomass)
Carysfort_Shallow_snapper_2 <- rbind(Carysfort_Shallow_snapper_1,Carysfort_Shallow_2001_snapper_biomass)
Carysfort_Shallow_snapper_3 <- rbind(Carysfort_Shallow_snapper_2,Carysfort_Shallow_2002_snapper_biomass)
Carysfort_Shallow_snapper_4 <- rbind(Carysfort_Shallow_snapper_3,Carysfort_Shallow_2003_snapper_biomass)
Carysfort_Shallow_snapper_5 <- rbind(Carysfort_Shallow_snapper_4,Carysfort_Shallow_2004_snapper_biomass)
Carysfort_Shallow_snapper_6 <- rbind(Carysfort_Shallow_snapper_5,Carysfort_Shallow_2005_snapper_biomass)
Carysfort_Shallow_snapper_7 <- rbind(Carysfort_Shallow_snapper_6,Carysfort_Shallow_2006_snapper_biomass)
Carysfort_Shallow_snapper_8 <- rbind(Carysfort_Shallow_snapper_7,Carysfort_Shallow_2007_snapper_biomass)
Carysfort_Shallow_snapper_9 <- rbind(Carysfort_Shallow_snapper_8,Carysfort_Shallow_2008_snapper_biomass)
Carysfort_Shallow_snapper_10 <- rbind(Carysfort_Shallow_snapper_9,Carysfort_Shallow_2009_snapper_biomass)
Carysfort_Shallow_snapper_11<- rbind(Carysfort_Shallow_snapper_10,Carysfort_Shallow_2010_snapper_biomass)
Carysfort_Shallow_snapper_12 <- rbind(Carysfort_Shallow_snapper_11,Carysfort_Shallow_2011_snapper_biomass)
Carysfort_Shallow_snapper_13 <- rbind(Carysfort_Shallow_snapper_12,Carysfort_Shallow_2012_snapper_biomass)
Carysfort_Shallow_snapper_14 <- rbind(Carysfort_Shallow_snapper_13,Carysfort_Shallow_2014_snapper_biomass)
Carysfort_Shallow_snapper_15 <- rbind(Carysfort_Shallow_snapper_14,Carysfort_Shallow_2016_snapper_biomass)
Carysfort_Shallow_snapper_biomass_data_combined <- rbind(Carysfort_Shallow_snapper_15,Carysfort_Shallow_2018_snapper_biomass)



Carysfort_Shallow_grouper_1 <- rbind(Carysfort_Shallow_1999_grouper_biomass,Carysfort_Shallow_2000_grouper_biomass)
Carysfort_Shallow_grouper_2 <- rbind(Carysfort_Shallow_grouper_1,Carysfort_Shallow_2001_grouper_biomass)
Carysfort_Shallow_grouper_3 <- rbind(Carysfort_Shallow_grouper_2,Carysfort_Shallow_2002_grouper_biomass)
Carysfort_Shallow_grouper_4 <- rbind(Carysfort_Shallow_grouper_3,Carysfort_Shallow_2003_grouper_biomass)
Carysfort_Shallow_grouper_5 <- rbind(Carysfort_Shallow_grouper_4,Carysfort_Shallow_2004_grouper_biomass)
Carysfort_Shallow_grouper_6 <- rbind(Carysfort_Shallow_grouper_5,Carysfort_Shallow_2005_grouper_biomass)
Carysfort_Shallow_grouper_7 <- rbind(Carysfort_Shallow_grouper_6,Carysfort_Shallow_2006_grouper_biomass)
Carysfort_Shallow_grouper_8 <- rbind(Carysfort_Shallow_grouper_7,Carysfort_Shallow_2007_grouper_biomass)
Carysfort_Shallow_grouper_9 <- rbind(Carysfort_Shallow_grouper_8,Carysfort_Shallow_2008_grouper_biomass)
Carysfort_Shallow_grouper_10 <- rbind(Carysfort_Shallow_grouper_9,Carysfort_Shallow_2009_grouper_biomass)
Carysfort_Shallow_grouper_11<- rbind(Carysfort_Shallow_grouper_10,Carysfort_Shallow_2010_grouper_biomass)
Carysfort_Shallow_grouper_12 <- rbind(Carysfort_Shallow_grouper_11,Carysfort_Shallow_2011_grouper_biomass)
Carysfort_Shallow_grouper_13 <- rbind(Carysfort_Shallow_grouper_12,Carysfort_Shallow_2012_grouper_biomass)
Carysfort_Shallow_grouper_14 <- rbind(Carysfort_Shallow_grouper_13,Carysfort_Shallow_2014_grouper_biomass)
Carysfort_Shallow_grouper_15 <- rbind(Carysfort_Shallow_grouper_14,Carysfort_Shallow_2016_grouper_biomass)
Carysfort_Shallow_grouper_biomass_data_combined <- rbind(Carysfort_Shallow_grouper_15,Carysfort_Shallow_2018_grouper_biomass)



export(Carysfort_Shallow_snapper_biomass_data_combined, "Carysfort_Shallow/data/Carysfort_Shallow_snapper__biomass.csv")
export(Carysfort_Shallow_grouper_biomass_data_combined, "Carysfort_Shallow/data/Carysfort_Shallow_grouper__biomass.csv")



#Conch Deep


Conch_Deep_1999 <- import("Conch_Deep/data/Conch_Deep_1999.xls")


Conch_Deep_1999_snapper <- merge(Conch_Deep_1999, snapper, by = c("SPECIES_CD"))
Conch_Deep_1999_snapper_biomass <- summarise_at(Conch_Deep_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_1999_snapper_biomass$Year <- ('1999')
Conch_Deep_1999_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_1999_grouper <- merge(Conch_Deep_1999, grouper, by = c("SPECIES_CD"))
Conch_Deep_1999_grouper_biomass <- summarise_at(Conch_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_1999_grouper_biomass$Year <- ('1999')
Conch_Deep_1999_grouper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2000 <- import("Conch_Deep/data/Conch_Deep_2000.xls")

Conch_Deep_2000_snapper <- merge(Conch_Deep_2000, snapper, by = c("SPECIES_CD"))
Conch_Deep_2000_snapper_biomass <- summarise_at(Conch_Deep_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2000_snapper_biomass$Year <- ('2000')
Conch_Deep_2000_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2000_grouper <- merge(Conch_Deep_2000, grouper, by = c("SPECIES_CD"))
Conch_Deep_2000_grouper_biomass <- summarise_at(Conch_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2000_grouper_biomass$Year <- ('2000')
Conch_Deep_2000_grouper_biomass$Reef <- ('Conch Deep')

Conch_Deep_2001 <- import("Conch_Deep/data/Conch_Deep_2001.xls")

Conch_Deep_2001_snapper <- merge(Conch_Deep_2001, snapper, by = c("SPECIES_CD"))
Conch_Deep_2001_snapper_biomass <- summarise_at(Conch_Deep_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2001_snapper_biomass$Year <- ('2001')
Conch_Deep_2001_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2001_grouper <- merge(Conch_Deep_2001, grouper, by = c("SPECIES_CD"))
Conch_Deep_2001_grouper_biomass <- summarise_at(Conch_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2001_grouper_biomass$Year <- ('2001')
Conch_Deep_2001_grouper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2002 <- import("Conch_Deep/data/Conch_Deep_2002.xls")

Conch_Deep_2002_snapper <- merge(Conch_Deep_2002, snapper, by = c("SPECIES_CD"))
Conch_Deep_2002_snapper_biomass <- summarise_at(Conch_Deep_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2002_snapper_biomass$Year <- ('2002')
Conch_Deep_2002_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2002_grouper <- merge(Conch_Deep_2002, grouper, by = c("SPECIES_CD"))
Conch_Deep_2002_grouper_biomass <- summarise_at(Conch_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2002_grouper_biomass$Year <- ('2002')
Conch_Deep_2002_grouper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2003 <- import("Conch_Deep/data/Conch_Deep_2003.xls")

Conch_Deep_2003_snapper <- merge(Conch_Deep_2003, snapper, by = c("SPECIES_CD"))
Conch_Deep_2003_snapper_biomass <- summarise_at(Conch_Deep_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2003_snapper_biomass$Year <- ('2003')
Conch_Deep_2003_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2003_grouper <- merge(Conch_Deep_2003, grouper, by = c("SPECIES_CD"))
Conch_Deep_2003_grouper_biomass <- summarise_at(Conch_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2003_grouper_biomass$Year <- ('2003')
Conch_Deep_2003_grouper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2004 <- import("Conch_Deep/data/Conch_Deep_2004.xls")

Conch_Deep_2004_snapper <- merge(Conch_Deep_2004, snapper, by = c("SPECIES_CD"))
Conch_Deep_2004_snapper_biomass <- summarise_at(Conch_Deep_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2004_snapper_biomass$Year <- ('2004')
Conch_Deep_2004_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2004_grouper <- merge(Conch_Deep_2004, grouper, by = c("SPECIES_CD"))
Conch_Deep_2004_grouper_biomass <- summarise_at(Conch_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2004_grouper_biomass$Year <- ('2004')
Conch_Deep_2004_grouper_biomass$Reef <- ('Conch Deep')

Conch_Deep_2005 <- import("Conch_Deep/data/Conch_Deep_2005.xls")

Conch_Deep_2005_snapper <- merge(Conch_Deep_2005, snapper, by = c("SPECIES_CD"))
Conch_Deep_2005_snapper_biomass <- summarise_at(Conch_Deep_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2005_snapper_biomass$Year <- ('2005')
Conch_Deep_2005_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2005_grouper <- merge(Conch_Deep_2005, grouper, by = c("SPECIES_CD"))
Conch_Deep_2005_grouper_biomass <- summarise_at(Conch_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2005_grouper_biomass$Year <- ('2005')
Conch_Deep_2005_grouper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2006 <- import("Conch_Deep/data/Conch_Deep_2006.xls")

Conch_Deep_2006_snapper <- merge(Conch_Deep_2006, snapper, by = c("SPECIES_CD"))
Conch_Deep_2006_snapper_biomass <- summarise_at(Conch_Deep_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2006_snapper_biomass$Year <- ('2006')
Conch_Deep_2006_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2006_grouper <- merge(Conch_Deep_2006, grouper, by = c("SPECIES_CD"))
Conch_Deep_2006_grouper_biomass <- summarise_at(Conch_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2006_grouper_biomass$Year <- ('2006')
Conch_Deep_2006_grouper_biomass$Reef <- ('Conch Deep')

Conch_Deep_2007 <- import("Conch_Deep/data/Conch_Deep_2007.xls")

Conch_Deep_2007_snapper <- merge(Conch_Deep_2007, snapper, by = c("SPECIES_CD"))
Conch_Deep_2007_snapper_biomass <- summarise_at(Conch_Deep_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2007_snapper_biomass$Year <- ('2007')
Conch_Deep_2007_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2007_grouper <- merge(Conch_Deep_2007, grouper, by = c("SPECIES_CD"))
Conch_Deep_2007_grouper_biomass <- summarise_at(Conch_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2007_grouper_biomass$Year <- ('2007')
Conch_Deep_2007_grouper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2008 <- import("Conch_Deep/data/Conch_Deep_2008.xls")

Conch_Deep_2008_snapper <- merge(Conch_Deep_2008, snapper, by = c("SPECIES_CD"))
Conch_Deep_2008_snapper_biomass <- summarise_at(Conch_Deep_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2008_snapper_biomass$Year <- ('2008')
Conch_Deep_2008_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2008_grouper <- merge(Conch_Deep_2008, grouper, by = c("SPECIES_CD"))
Conch_Deep_2008_grouper_biomass <- summarise_at(Conch_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2008_grouper_biomass$Year <- ('2008')
Conch_Deep_2008_grouper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2009 <- import("Conch_Deep/data/Conch_Deep_2009.xls")

Conch_Deep_2009_snapper <- merge(Conch_Deep_2009, snapper, by = c("SPECIES_CD"))
Conch_Deep_2009_snapper_biomass <- summarise_at(Conch_Deep_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2009_snapper_biomass$Year <- ('2009')
Conch_Deep_2009_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2009_grouper <- merge(Conch_Deep_2009, grouper, by = c("SPECIES_CD"))
Conch_Deep_2009_grouper_biomass <- summarise_at(Conch_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2009_grouper_biomass$Year <- ('2009')
Conch_Deep_2009_grouper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2010 <- import("Conch_Deep/data/Conch_Deep_2010.xls")

Conch_Deep_2010_snapper <- merge(Conch_Deep_2010, snapper, by = c("SPECIES_CD"))
Conch_Deep_2010_snapper_biomass <- summarise_at(Conch_Deep_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2010_snapper_biomass$Year <- ('2010')
Conch_Deep_2010_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2010_grouper <- merge(Conch_Deep_2010, grouper, by = c("SPECIES_CD"))
Conch_Deep_2010_grouper_biomass <- summarise_at(Conch_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2010_grouper_biomass$Year <- ('2010')
Conch_Deep_2010_grouper_biomass$Reef <- ('Conch Deep')

Conch_Deep_2011 <- import("Conch_Deep/data/Conch_Deep_2011.xls")

Conch_Deep_2011_snapper <- merge(Conch_Deep_2011, snapper, by = c("SPECIES_CD"))
Conch_Deep_2011_snapper_biomass <- summarise_at(Conch_Deep_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2011_snapper_biomass$Year <- ('2011')
Conch_Deep_2011_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2011_grouper <- merge(Conch_Deep_2011, grouper, by = c("SPECIES_CD"))
Conch_Deep_2011_grouper_biomass <- summarise_at(Conch_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2011_grouper_biomass$Year <- ('2011')
Conch_Deep_2011_grouper_biomass$Reef <- ('Conch Deep')



Conch_Deep_2012 <- import("Conch_Deep/data/Conch_Deep_2012.xls")

Conch_Deep_2012_snapper <- merge(Conch_Deep_2012, snapper, by = c("SPECIES_CD"))
Conch_Deep_2012_snapper_biomass <- summarise_at(Conch_Deep_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2012_snapper_biomass$Year <- ('2012')
Conch_Deep_2012_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2012_grouper <- merge(Conch_Deep_2012, grouper, by = c("SPECIES_CD"))
Conch_Deep_2012_grouper_biomass <- summarise_at(Conch_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2012_grouper_biomass$Year <- ('2012')
Conch_Deep_2012_grouper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2014 <- import("Conch_Deep/data/Conch_Deep_2014.xls")

Conch_Deep_2014_snapper <- merge(Conch_Deep_2014, snapper, by = c("SPECIES_CD"))
Conch_Deep_2014_snapper_biomass <- summarise_at(Conch_Deep_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2014_snapper_biomass$Year <- ('2014')
Conch_Deep_2014_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2014_grouper <- merge(Conch_Deep_2014, grouper, by = c("SPECIES_CD"))
Conch_Deep_2014_grouper_biomass <- summarise_at(Conch_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2014_grouper_biomass$Year <- ('2014')
Conch_Deep_2014_grouper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2016 <- import("Conch_Deep/data/Conch_Deep_2016.xls")

Conch_Deep_2016_snapper <- merge(Conch_Deep_2016, snapper, by = c("SPECIES_CD"))
Conch_Deep_2016_snapper_biomass <- summarise_at(Conch_Deep_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2016_snapper_biomass$Year <- ('2016')
Conch_Deep_2016_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2016_grouper <- merge(Conch_Deep_2016, grouper, by = c("SPECIES_CD"))
Conch_Deep_2016_grouper_biomass <- summarise_at(Conch_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2016_grouper_biomass$Year <- ('2016')
Conch_Deep_2016_grouper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2018 <- import("Conch_Deep/data/Conch_Deep_2018.xls")

Conch_Deep_2018_snapper <- merge(Conch_Deep_2018, snapper, by = c("SPECIES_CD"))
Conch_Deep_2018_snapper_biomass <- summarise_at(Conch_Deep_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2018_snapper_biomass$Year <- ('2018')
Conch_Deep_2018_snapper_biomass$Reef <- ('Conch Deep')


Conch_Deep_2018_grouper <- merge(Conch_Deep_2018, grouper, by = c("SPECIES_CD"))
Conch_Deep_2018_grouper_biomass <- summarise_at(Conch_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2018_grouper_biomass$Year <- ('2018')
Conch_Deep_2018_grouper_biomass$Reef <- ('Conch Deep')



### Combine all years together for snapper_ and grouper_ seperately



Conch_Deep_snapper_1 <- rbind(Conch_Deep_1999_snapper_biomass,Conch_Deep_2000_snapper_biomass)
Conch_Deep_snapper_2 <- rbind(Conch_Deep_snapper_1,Conch_Deep_2001_snapper_biomass)
Conch_Deep_snapper_3 <- rbind(Conch_Deep_snapper_2,Conch_Deep_2002_snapper_biomass)
Conch_Deep_snapper_4 <- rbind(Conch_Deep_snapper_3,Conch_Deep_2003_snapper_biomass)
Conch_Deep_snapper_5 <- rbind(Conch_Deep_snapper_4,Conch_Deep_2004_snapper_biomass)
Conch_Deep_snapper_6 <- rbind(Conch_Deep_snapper_5,Conch_Deep_2005_snapper_biomass)
Conch_Deep_snapper_7 <- rbind(Conch_Deep_snapper_6,Conch_Deep_2006_snapper_biomass)
Conch_Deep_snapper_8 <- rbind(Conch_Deep_snapper_7,Conch_Deep_2007_snapper_biomass)
Conch_Deep_snapper_9 <- rbind(Conch_Deep_snapper_8,Conch_Deep_2008_snapper_biomass)
Conch_Deep_snapper_10 <- rbind(Conch_Deep_snapper_9,Conch_Deep_2009_snapper_biomass)
Conch_Deep_snapper_11<- rbind(Conch_Deep_snapper_10,Conch_Deep_2010_snapper_biomass)
Conch_Deep_snapper_12 <- rbind(Conch_Deep_snapper_11,Conch_Deep_2011_snapper_biomass)
Conch_Deep_snapper_13 <- rbind(Conch_Deep_snapper_12,Conch_Deep_2012_snapper_biomass)
Conch_Deep_snapper_14 <- rbind(Conch_Deep_snapper_13,Conch_Deep_2014_snapper_biomass)
Conch_Deep_snapper_15 <- rbind(Conch_Deep_snapper_14,Conch_Deep_2016_snapper_biomass)
Conch_Deep_snapper_biomass_data_combined <- rbind(Conch_Deep_snapper_15,Conch_Deep_2018_snapper_biomass)



Conch_Deep_grouper_1 <- rbind(Conch_Deep_1999_grouper_biomass,Conch_Deep_2000_grouper_biomass)
Conch_Deep_grouper_2 <- rbind(Conch_Deep_grouper_1,Conch_Deep_2001_grouper_biomass)
Conch_Deep_grouper_3 <- rbind(Conch_Deep_grouper_2,Conch_Deep_2002_grouper_biomass)
Conch_Deep_grouper_4 <- rbind(Conch_Deep_grouper_3,Conch_Deep_2003_grouper_biomass)
Conch_Deep_grouper_5 <- rbind(Conch_Deep_grouper_4,Conch_Deep_2004_grouper_biomass)
Conch_Deep_grouper_6 <- rbind(Conch_Deep_grouper_5,Conch_Deep_2005_grouper_biomass)
Conch_Deep_grouper_7 <- rbind(Conch_Deep_grouper_6,Conch_Deep_2006_grouper_biomass)
Conch_Deep_grouper_8 <- rbind(Conch_Deep_grouper_7,Conch_Deep_2007_grouper_biomass)
Conch_Deep_grouper_9 <- rbind(Conch_Deep_grouper_8,Conch_Deep_2008_grouper_biomass)
Conch_Deep_grouper_10 <- rbind(Conch_Deep_grouper_9,Conch_Deep_2009_grouper_biomass)
Conch_Deep_grouper_11<- rbind(Conch_Deep_grouper_10,Conch_Deep_2010_grouper_biomass)
Conch_Deep_grouper_12 <- rbind(Conch_Deep_grouper_11,Conch_Deep_2011_grouper_biomass)
Conch_Deep_grouper_13 <- rbind(Conch_Deep_grouper_12,Conch_Deep_2012_grouper_biomass)
Conch_Deep_grouper_14 <- rbind(Conch_Deep_grouper_13,Conch_Deep_2014_grouper_biomass)
Conch_Deep_grouper_15 <- rbind(Conch_Deep_grouper_14,Conch_Deep_2016_grouper_biomass)
Conch_Deep_grouper_biomass_data_combined <- rbind(Conch_Deep_grouper_15,Conch_Deep_2018_grouper_biomass)



export(Conch_Deep_snapper_biomass_data_combined, "Conch_Deep/data/Conch_Deep_snapper__biomass.csv")
export(Conch_Deep_grouper_biomass_data_combined, "Conch_Deep/data/Conch_Deep_grouper__biomass.csv")



#Conch Shallow


Conch_Shallow_1999 <- import("Conch_Shallow/data/Conch_Shallow_1999.xls")


Conch_Shallow_1999_snapper <- merge(Conch_Shallow_1999, snapper, by = c("SPECIES_CD"))
Conch_Shallow_1999_snapper_biomass <- summarise_at(Conch_Shallow_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_1999_snapper_biomass$Year <- ('1999')
Conch_Shallow_1999_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_1999_grouper <- merge(Conch_Shallow_1999, grouper, by = c("SPECIES_CD"))
Conch_Shallow_1999_grouper_biomass <- summarise_at(Conch_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_1999_grouper_biomass$Year <- ('1999')
Conch_Shallow_1999_grouper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2000 <- import("Conch_Shallow/data/Conch_Shallow_2000.xls")

Conch_Shallow_2000_snapper <- merge(Conch_Shallow_2000, snapper, by = c("SPECIES_CD"))
Conch_Shallow_2000_snapper_biomass <- summarise_at(Conch_Shallow_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2000_snapper_biomass$Year <- ('2000')
Conch_Shallow_2000_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2000_grouper <- merge(Conch_Shallow_2000, grouper, by = c("SPECIES_CD"))
Conch_Shallow_2000_grouper_biomass <- summarise_at(Conch_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2000_grouper_biomass$Year <- ('2000')
Conch_Shallow_2000_grouper_biomass$Reef <- ('Conch Shallow')

Conch_Shallow_2001 <- import("Conch_Shallow/data/Conch_Shallow_2001.xls")

Conch_Shallow_2001_snapper <- merge(Conch_Shallow_2001, snapper, by = c("SPECIES_CD"))
Conch_Shallow_2001_snapper_biomass <- summarise_at(Conch_Shallow_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2001_snapper_biomass$Year <- ('2001')
Conch_Shallow_2001_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2001_grouper <- merge(Conch_Shallow_2001, grouper, by = c("SPECIES_CD"))
Conch_Shallow_2001_grouper_biomass <- summarise_at(Conch_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2001_grouper_biomass$Year <- ('2001')
Conch_Shallow_2001_grouper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2002 <- import("Conch_Shallow/data/Conch_Shallow_2002.xls")

Conch_Shallow_2002_snapper <- merge(Conch_Shallow_2002, snapper, by = c("SPECIES_CD"))
Conch_Shallow_2002_snapper_biomass <- summarise_at(Conch_Shallow_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2002_snapper_biomass$Year <- ('2002')
Conch_Shallow_2002_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2002_grouper <- merge(Conch_Shallow_2002, grouper, by = c("SPECIES_CD"))
Conch_Shallow_2002_grouper_biomass <- summarise_at(Conch_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2002_grouper_biomass$Year <- ('2002')
Conch_Shallow_2002_grouper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2003 <- import("Conch_Shallow/data/Conch_Shallow_2003.xls")

Conch_Shallow_2003_snapper <- merge(Conch_Shallow_2003, snapper, by = c("SPECIES_CD"))
Conch_Shallow_2003_snapper_biomass <- summarise_at(Conch_Shallow_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2003_snapper_biomass$Year <- ('2003')
Conch_Shallow_2003_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2003_grouper <- merge(Conch_Shallow_2003, grouper, by = c("SPECIES_CD"))
Conch_Shallow_2003_grouper_biomass <- summarise_at(Conch_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2003_grouper_biomass$Year <- ('2003')
Conch_Shallow_2003_grouper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2004 <- import("Conch_Shallow/data/Conch_Shallow_2004.xls")

Conch_Shallow_2004_snapper <- merge(Conch_Shallow_2004, snapper, by = c("SPECIES_CD"))
Conch_Shallow_2004_snapper_biomass <- summarise_at(Conch_Shallow_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2004_snapper_biomass$Year <- ('2004')
Conch_Shallow_2004_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2004_grouper <- merge(Conch_Shallow_2004, grouper, by = c("SPECIES_CD"))
Conch_Shallow_2004_grouper_biomass <- summarise_at(Conch_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2004_grouper_biomass$Year <- ('2004')
Conch_Shallow_2004_grouper_biomass$Reef <- ('Conch Shallow')

Conch_Shallow_2005 <- import("Conch_Shallow/data/Conch_Shallow_2005.xls")

Conch_Shallow_2005_snapper <- merge(Conch_Shallow_2005, snapper, by = c("SPECIES_CD"))
Conch_Shallow_2005_snapper_biomass <- summarise_at(Conch_Shallow_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2005_snapper_biomass$Year <- ('2005')
Conch_Shallow_2005_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2005_grouper <- merge(Conch_Shallow_2005, grouper, by = c("SPECIES_CD"))
Conch_Shallow_2005_grouper_biomass <- summarise_at(Conch_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2005_grouper_biomass$Year <- ('2005')
Conch_Shallow_2005_grouper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2006 <- import("Conch_Shallow/data/Conch_Shallow_2006.xls")

Conch_Shallow_2006_snapper <- merge(Conch_Shallow_2006, snapper, by = c("SPECIES_CD"))
Conch_Shallow_2006_snapper_biomass <- summarise_at(Conch_Shallow_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2006_snapper_biomass$Year <- ('2006')
Conch_Shallow_2006_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2006_grouper <- merge(Conch_Shallow_2006, grouper, by = c("SPECIES_CD"))
Conch_Shallow_2006_grouper_biomass <- summarise_at(Conch_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2006_grouper_biomass$Year <- ('2006')
Conch_Shallow_2006_grouper_biomass$Reef <- ('Conch Shallow')

Conch_Shallow_2007 <- import("Conch_Shallow/data/Conch_Shallow_2007.xls")

Conch_Shallow_2007_snapper <- merge(Conch_Shallow_2007, snapper, by = c("SPECIES_CD"))
Conch_Shallow_2007_snapper_biomass <- summarise_at(Conch_Shallow_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2007_snapper_biomass$Year <- ('2007')
Conch_Shallow_2007_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2007_grouper <- merge(Conch_Shallow_2007, grouper, by = c("SPECIES_CD"))
Conch_Shallow_2007_grouper_biomass <- summarise_at(Conch_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2007_grouper_biomass$Year <- ('2007')
Conch_Shallow_2007_grouper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2008 <- import("Conch_Shallow/data/Conch_Shallow_2008.xls")

Conch_Shallow_2008_snapper <- merge(Conch_Shallow_2008, snapper, by = c("SPECIES_CD"))
Conch_Shallow_2008_snapper_biomass <- summarise_at(Conch_Shallow_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2008_snapper_biomass$Year <- ('2008')
Conch_Shallow_2008_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2008_grouper <- merge(Conch_Shallow_2008, grouper, by = c("SPECIES_CD"))
Conch_Shallow_2008_grouper_biomass <- summarise_at(Conch_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2008_grouper_biomass$Year <- ('2008')
Conch_Shallow_2008_grouper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2009 <- import("Conch_Shallow/data/Conch_Shallow_2009.xls")

Conch_Shallow_2009_snapper <- merge(Conch_Shallow_2009, snapper, by = c("SPECIES_CD"))
Conch_Shallow_2009_snapper_biomass <- summarise_at(Conch_Shallow_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2009_snapper_biomass$Year <- ('2009')
Conch_Shallow_2009_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2009_grouper <- merge(Conch_Shallow_2009, grouper, by = c("SPECIES_CD"))
Conch_Shallow_2009_grouper_biomass <- summarise_at(Conch_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2009_grouper_biomass$Year <- ('2009')
Conch_Shallow_2009_grouper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2010 <- import("Conch_Shallow/data/Conch_Shallow_2010.xls")

Conch_Shallow_2010_snapper <- merge(Conch_Shallow_2010, snapper, by = c("SPECIES_CD"))
Conch_Shallow_2010_snapper_biomass <- summarise_at(Conch_Shallow_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2010_snapper_biomass$Year <- ('2010')
Conch_Shallow_2010_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2010_grouper <- merge(Conch_Shallow_2010, grouper, by = c("SPECIES_CD"))
Conch_Shallow_2010_grouper_biomass <- summarise_at(Conch_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2010_grouper_biomass$Year <- ('2010')
Conch_Shallow_2010_grouper_biomass$Reef <- ('Conch Shallow')

Conch_Shallow_2011 <- import("Conch_Shallow/data/Conch_Shallow_2011.xls")

Conch_Shallow_2011_snapper <- merge(Conch_Shallow_2011, snapper, by = c("SPECIES_CD"))
Conch_Shallow_2011_snapper_biomass <- summarise_at(Conch_Shallow_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2011_snapper_biomass$Year <- ('2011')
Conch_Shallow_2011_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2011_grouper <- merge(Conch_Shallow_2011, grouper, by = c("SPECIES_CD"))
Conch_Shallow_2011_grouper_biomass <- summarise_at(Conch_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2011_grouper_biomass$Year <- ('2011')
Conch_Shallow_2011_grouper_biomass$Reef <- ('Conch Shallow')



Conch_Shallow_2012 <- import("Conch_Shallow/data/Conch_Shallow_2012.xls")

Conch_Shallow_2012_snapper <- merge(Conch_Shallow_2012, snapper, by = c("SPECIES_CD"))
Conch_Shallow_2012_snapper_biomass <- summarise_at(Conch_Shallow_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2012_snapper_biomass$Year <- ('2012')
Conch_Shallow_2012_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2012_grouper <- merge(Conch_Shallow_2012, grouper, by = c("SPECIES_CD"))
Conch_Shallow_2012_grouper_biomass <- summarise_at(Conch_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2012_grouper_biomass$Year <- ('2012')
Conch_Shallow_2012_grouper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2014 <- import("Conch_Shallow/data/Conch_Shallow_2014.xls")

Conch_Shallow_2014_snapper <- merge(Conch_Shallow_2014, snapper, by = c("SPECIES_CD"))
Conch_Shallow_2014_snapper_biomass <- summarise_at(Conch_Shallow_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2014_snapper_biomass$Year <- ('2014')
Conch_Shallow_2014_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2014_grouper <- merge(Conch_Shallow_2014, grouper, by = c("SPECIES_CD"))
Conch_Shallow_2014_grouper_biomass <- summarise_at(Conch_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2014_grouper_biomass$Year <- ('2014')
Conch_Shallow_2014_grouper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2016 <- import("Conch_Shallow/data/Conch_Shallow_2016.xls")

Conch_Shallow_2016_snapper <- merge(Conch_Shallow_2016, snapper, by = c("SPECIES_CD"))
Conch_Shallow_2016_snapper_biomass <- summarise_at(Conch_Shallow_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2016_snapper_biomass$Year <- ('2016')
Conch_Shallow_2016_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2016_grouper <- merge(Conch_Shallow_2016, grouper, by = c("SPECIES_CD"))
Conch_Shallow_2016_grouper_biomass <- summarise_at(Conch_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2016_grouper_biomass$Year <- ('2016')
Conch_Shallow_2016_grouper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2018 <- import("Conch_Shallow/data/Conch_Shallow_2018.xls")

Conch_Shallow_2018_snapper <- merge(Conch_Shallow_2018, snapper, by = c("SPECIES_CD"))
Conch_Shallow_2018_snapper_biomass <- summarise_at(Conch_Shallow_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2018_snapper_biomass$Year <- ('2018')
Conch_Shallow_2018_snapper_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2018_grouper <- merge(Conch_Shallow_2018, grouper, by = c("SPECIES_CD"))
Conch_Shallow_2018_grouper_biomass <- summarise_at(Conch_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2018_grouper_biomass$Year <- ('2018')
Conch_Shallow_2018_grouper_biomass$Reef <- ('Conch Shallow')



### Combine all years together for snapper_ and grouper_ seperately



Conch_Shallow_snapper_1 <- rbind(Conch_Shallow_1999_snapper_biomass,Conch_Shallow_2000_snapper_biomass)
Conch_Shallow_snapper_2 <- rbind(Conch_Shallow_snapper_1,Conch_Shallow_2001_snapper_biomass)
Conch_Shallow_snapper_3 <- rbind(Conch_Shallow_snapper_2,Conch_Shallow_2002_snapper_biomass)
Conch_Shallow_snapper_4 <- rbind(Conch_Shallow_snapper_3,Conch_Shallow_2003_snapper_biomass)
Conch_Shallow_snapper_5 <- rbind(Conch_Shallow_snapper_4,Conch_Shallow_2004_snapper_biomass)
Conch_Shallow_snapper_6 <- rbind(Conch_Shallow_snapper_5,Conch_Shallow_2005_snapper_biomass)
Conch_Shallow_snapper_7 <- rbind(Conch_Shallow_snapper_6,Conch_Shallow_2006_snapper_biomass)
Conch_Shallow_snapper_8 <- rbind(Conch_Shallow_snapper_7,Conch_Shallow_2007_snapper_biomass)
Conch_Shallow_snapper_9 <- rbind(Conch_Shallow_snapper_8,Conch_Shallow_2008_snapper_biomass)
Conch_Shallow_snapper_10 <- rbind(Conch_Shallow_snapper_9,Conch_Shallow_2009_snapper_biomass)
Conch_Shallow_snapper_11<- rbind(Conch_Shallow_snapper_10,Conch_Shallow_2010_snapper_biomass)
Conch_Shallow_snapper_12 <- rbind(Conch_Shallow_snapper_11,Conch_Shallow_2011_snapper_biomass)
Conch_Shallow_snapper_13 <- rbind(Conch_Shallow_snapper_12,Conch_Shallow_2012_snapper_biomass)
Conch_Shallow_snapper_14 <- rbind(Conch_Shallow_snapper_13,Conch_Shallow_2014_snapper_biomass)
Conch_Shallow_snapper_15 <- rbind(Conch_Shallow_snapper_14,Conch_Shallow_2016_snapper_biomass)
Conch_Shallow_snapper_biomass_data_combined <- rbind(Conch_Shallow_snapper_15,Conch_Shallow_2018_snapper_biomass)



Conch_Shallow_grouper_1 <- rbind(Conch_Shallow_1999_grouper_biomass,Conch_Shallow_2000_grouper_biomass)
Conch_Shallow_grouper_2 <- rbind(Conch_Shallow_grouper_1,Conch_Shallow_2001_grouper_biomass)
Conch_Shallow_grouper_3 <- rbind(Conch_Shallow_grouper_2,Conch_Shallow_2002_grouper_biomass)
Conch_Shallow_grouper_4 <- rbind(Conch_Shallow_grouper_3,Conch_Shallow_2003_grouper_biomass)
Conch_Shallow_grouper_5 <- rbind(Conch_Shallow_grouper_4,Conch_Shallow_2004_grouper_biomass)
Conch_Shallow_grouper_6 <- rbind(Conch_Shallow_grouper_5,Conch_Shallow_2005_grouper_biomass)
Conch_Shallow_grouper_7 <- rbind(Conch_Shallow_grouper_6,Conch_Shallow_2006_grouper_biomass)
Conch_Shallow_grouper_8 <- rbind(Conch_Shallow_grouper_7,Conch_Shallow_2007_grouper_biomass)
Conch_Shallow_grouper_9 <- rbind(Conch_Shallow_grouper_8,Conch_Shallow_2008_grouper_biomass)
Conch_Shallow_grouper_10 <- rbind(Conch_Shallow_grouper_9,Conch_Shallow_2009_grouper_biomass)
Conch_Shallow_grouper_11<- rbind(Conch_Shallow_grouper_10,Conch_Shallow_2010_grouper_biomass)
Conch_Shallow_grouper_12 <- rbind(Conch_Shallow_grouper_11,Conch_Shallow_2011_grouper_biomass)
Conch_Shallow_grouper_13 <- rbind(Conch_Shallow_grouper_12,Conch_Shallow_2012_grouper_biomass)
Conch_Shallow_grouper_14 <- rbind(Conch_Shallow_grouper_13,Conch_Shallow_2014_grouper_biomass)
Conch_Shallow_grouper_15 <- rbind(Conch_Shallow_grouper_14,Conch_Shallow_2016_grouper_biomass)
Conch_Shallow_grouper_biomass_data_combined <- rbind(Conch_Shallow_grouper_15,Conch_Shallow_2018_grouper_biomass)



export(Conch_Shallow_snapper_biomass_data_combined, "Conch_Shallow/data/Conch_Shallow_snapper__biomass.csv")
export(Conch_Shallow_grouper_biomass_data_combined, "Conch_Shallow/data/Conch_Shallow_grouper__biomass.csv")



#Grecian Rocks


Grecian_Rocks_1999 <- import("Grecian_Rocks/data/Grecian_Rocks_1999.xls")


Grecian_Rocks_1999_snapper <- merge(Grecian_Rocks_1999, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_1999_snapper_biomass <- summarise_at(Grecian_Rocks_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_1999_snapper_biomass$Year <- ('1999')
Grecian_Rocks_1999_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_1999_grouper <- merge(Grecian_Rocks_1999, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_1999_grouper_biomass <- summarise_at(Grecian_Rocks_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_1999_grouper_biomass$Year <- ('1999')
Grecian_Rocks_1999_grouper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2000 <- import("Grecian_Rocks/data/Grecian_Rocks_2000.xls")

Grecian_Rocks_2000_snapper <- merge(Grecian_Rocks_2000, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_2000_snapper_biomass <- summarise_at(Grecian_Rocks_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2000_snapper_biomass$Year <- ('2000')
Grecian_Rocks_2000_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2000_grouper <- merge(Grecian_Rocks_2000, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_2000_grouper_biomass <- summarise_at(Grecian_Rocks_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2000_grouper_biomass$Year <- ('2000')
Grecian_Rocks_2000_grouper_biomass$Reef <- ('Grecian Rocks')

Grecian_Rocks_2001 <- import("Grecian_Rocks/data/Grecian_Rocks_2001.xls")

Grecian_Rocks_2001_snapper <- merge(Grecian_Rocks_2001, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_2001_snapper_biomass <- summarise_at(Grecian_Rocks_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2001_snapper_biomass$Year <- ('2001')
Grecian_Rocks_2001_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2001_grouper <- merge(Grecian_Rocks_2001, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_2001_grouper_biomass <- summarise_at(Grecian_Rocks_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2001_grouper_biomass$Year <- ('2001')
Grecian_Rocks_2001_grouper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2002 <- import("Grecian_Rocks/data/Grecian_Rocks_2002.xls")

Grecian_Rocks_2002_snapper <- merge(Grecian_Rocks_2002, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_2002_snapper_biomass <- summarise_at(Grecian_Rocks_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2002_snapper_biomass$Year <- ('2002')
Grecian_Rocks_2002_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2002_grouper <- merge(Grecian_Rocks_2002, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_2002_grouper_biomass <- summarise_at(Grecian_Rocks_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2002_grouper_biomass$Year <- ('2002')
Grecian_Rocks_2002_grouper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2003 <- import("Grecian_Rocks/data/Grecian_Rocks_2003.xls")

Grecian_Rocks_2003_snapper <- merge(Grecian_Rocks_2003, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_2003_snapper_biomass <- summarise_at(Grecian_Rocks_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2003_snapper_biomass$Year <- ('2003')
Grecian_Rocks_2003_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2003_grouper <- merge(Grecian_Rocks_2003, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_2003_grouper_biomass <- summarise_at(Grecian_Rocks_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2003_grouper_biomass$Year <- ('2003')
Grecian_Rocks_2003_grouper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2004 <- import("Grecian_Rocks/data/Grecian_Rocks_2004.xls")

Grecian_Rocks_2004_snapper <- merge(Grecian_Rocks_2004, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_2004_snapper_biomass <- summarise_at(Grecian_Rocks_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2004_snapper_biomass$Year <- ('2004')
Grecian_Rocks_2004_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2004_grouper <- merge(Grecian_Rocks_2004, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_2004_grouper_biomass <- summarise_at(Grecian_Rocks_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2004_grouper_biomass$Year <- ('2004')
Grecian_Rocks_2004_grouper_biomass$Reef <- ('Grecian Rocks')

Grecian_Rocks_2005 <- import("Grecian_Rocks/data/Grecian_Rocks_2005.xls")

Grecian_Rocks_2005_snapper <- merge(Grecian_Rocks_2005, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_2005_snapper_biomass <- summarise_at(Grecian_Rocks_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2005_snapper_biomass$Year <- ('2005')
Grecian_Rocks_2005_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2005_grouper <- merge(Grecian_Rocks_2005, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_2005_grouper_biomass <- summarise_at(Grecian_Rocks_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2005_grouper_biomass$Year <- ('2005')
Grecian_Rocks_2005_grouper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2006 <- import("Grecian_Rocks/data/Grecian_Rocks_2006.xls")

Grecian_Rocks_2006_snapper <- merge(Grecian_Rocks_2006, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_2006_snapper_biomass <- summarise_at(Grecian_Rocks_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2006_snapper_biomass$Year <- ('2006')
Grecian_Rocks_2006_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2006_grouper <- merge(Grecian_Rocks_2006, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_2006_grouper_biomass <- summarise_at(Grecian_Rocks_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2006_grouper_biomass$Year <- ('2006')
Grecian_Rocks_2006_grouper_biomass$Reef <- ('Grecian Rocks')

Grecian_Rocks_2007 <- import("Grecian_Rocks/data/Grecian_Rocks_2007.xls")

Grecian_Rocks_2007_snapper <- merge(Grecian_Rocks_2007, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_2007_snapper_biomass <- summarise_at(Grecian_Rocks_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2007_snapper_biomass$Year <- ('2007')
Grecian_Rocks_2007_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2007_grouper <- merge(Grecian_Rocks_2007, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_2007_grouper_biomass <- summarise_at(Grecian_Rocks_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2007_grouper_biomass$Year <- ('2007')
Grecian_Rocks_2007_grouper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2008 <- import("Grecian_Rocks/data/Grecian_Rocks_2008.xls")

Grecian_Rocks_2008_snapper <- merge(Grecian_Rocks_2008, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_2008_snapper_biomass <- summarise_at(Grecian_Rocks_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2008_snapper_biomass$Year <- ('2008')
Grecian_Rocks_2008_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2008_grouper <- merge(Grecian_Rocks_2008, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_2008_grouper_biomass <- summarise_at(Grecian_Rocks_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2008_grouper_biomass$Year <- ('2008')
Grecian_Rocks_2008_grouper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2009 <- import("Grecian_Rocks/data/Grecian_Rocks_2009.xls")

Grecian_Rocks_2009_snapper <- merge(Grecian_Rocks_2009, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_2009_snapper_biomass <- summarise_at(Grecian_Rocks_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2009_snapper_biomass$Year <- ('2009')
Grecian_Rocks_2009_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2009_grouper <- merge(Grecian_Rocks_2009, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_2009_grouper_biomass <- summarise_at(Grecian_Rocks_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2009_grouper_biomass$Year <- ('2009')
Grecian_Rocks_2009_grouper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2010 <- import("Grecian_Rocks/data/Grecian_Rocks_2010.xls")

Grecian_Rocks_2010_snapper <- merge(Grecian_Rocks_2010, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_2010_snapper_biomass <- summarise_at(Grecian_Rocks_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2010_snapper_biomass$Year <- ('2010')
Grecian_Rocks_2010_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2010_grouper <- merge(Grecian_Rocks_2010, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_2010_grouper_biomass <- summarise_at(Grecian_Rocks_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2010_grouper_biomass$Year <- ('2010')
Grecian_Rocks_2010_grouper_biomass$Reef <- ('Grecian Rocks')

Grecian_Rocks_2011 <- import("Grecian_Rocks/data/Grecian_Rocks_2011.xls")

Grecian_Rocks_2011_snapper <- merge(Grecian_Rocks_2011, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_2011_snapper_biomass <- summarise_at(Grecian_Rocks_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2011_snapper_biomass$Year <- ('2011')
Grecian_Rocks_2011_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2011_grouper <- merge(Grecian_Rocks_2011, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_2011_grouper_biomass <- summarise_at(Grecian_Rocks_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2011_grouper_biomass$Year <- ('2011')
Grecian_Rocks_2011_grouper_biomass$Reef <- ('Grecian Rocks')



Grecian_Rocks_2012 <- import("Grecian_Rocks/data/Grecian_Rocks_2012.xls")

Grecian_Rocks_2012_snapper <- merge(Grecian_Rocks_2012, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_2012_snapper_biomass <- summarise_at(Grecian_Rocks_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2012_snapper_biomass$Year <- ('2012')
Grecian_Rocks_2012_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2012_grouper <- merge(Grecian_Rocks_2012, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_2012_grouper_biomass <- summarise_at(Grecian_Rocks_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2012_grouper_biomass$Year <- ('2012')
Grecian_Rocks_2012_grouper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2014 <- import("Grecian_Rocks/data/Grecian_Rocks_2014.xls")

Grecian_Rocks_2014_snapper <- merge(Grecian_Rocks_2014, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_2014_snapper_biomass <- summarise_at(Grecian_Rocks_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2014_snapper_biomass$Year <- ('2014')
Grecian_Rocks_2014_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2014_grouper <- merge(Grecian_Rocks_2014, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_2014_grouper_biomass <- summarise_at(Grecian_Rocks_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2014_grouper_biomass$Year <- ('2014')
Grecian_Rocks_2014_grouper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2016 <- import("Grecian_Rocks/data/Grecian_Rocks_2016.xls")

Grecian_Rocks_2016_snapper <- merge(Grecian_Rocks_2016, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_2016_snapper_biomass <- summarise_at(Grecian_Rocks_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2016_snapper_biomass$Year <- ('2016')
Grecian_Rocks_2016_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2016_grouper <- merge(Grecian_Rocks_2016, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_2016_grouper_biomass <- summarise_at(Grecian_Rocks_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2016_grouper_biomass$Year <- ('2016')
Grecian_Rocks_2016_grouper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2018 <- import("Grecian_Rocks/data/Grecian_Rocks_2018.xls")

Grecian_Rocks_2018_snapper <- merge(Grecian_Rocks_2018, snapper, by = c("SPECIES_CD"))
Grecian_Rocks_2018_snapper_biomass <- summarise_at(Grecian_Rocks_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2018_snapper_biomass$Year <- ('2018')
Grecian_Rocks_2018_snapper_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2018_grouper <- merge(Grecian_Rocks_2018, grouper, by = c("SPECIES_CD"))
Grecian_Rocks_2018_grouper_biomass <- summarise_at(Grecian_Rocks_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2018_grouper_biomass$Year <- ('2018')
Grecian_Rocks_2018_grouper_biomass$Reef <- ('Grecian Rocks')



### Combine all years together for snapper_ and grouper_ seperately



Grecian_Rocks_snapper_1 <- rbind(Grecian_Rocks_1999_snapper_biomass,Grecian_Rocks_2000_snapper_biomass)
Grecian_Rocks_snapper_2 <- rbind(Grecian_Rocks_snapper_1,Grecian_Rocks_2001_snapper_biomass)
Grecian_Rocks_snapper_3 <- rbind(Grecian_Rocks_snapper_2,Grecian_Rocks_2002_snapper_biomass)
Grecian_Rocks_snapper_4 <- rbind(Grecian_Rocks_snapper_3,Grecian_Rocks_2003_snapper_biomass)
Grecian_Rocks_snapper_5 <- rbind(Grecian_Rocks_snapper_4,Grecian_Rocks_2004_snapper_biomass)
Grecian_Rocks_snapper_6 <- rbind(Grecian_Rocks_snapper_5,Grecian_Rocks_2005_snapper_biomass)
Grecian_Rocks_snapper_7 <- rbind(Grecian_Rocks_snapper_6,Grecian_Rocks_2006_snapper_biomass)
Grecian_Rocks_snapper_8 <- rbind(Grecian_Rocks_snapper_7,Grecian_Rocks_2007_snapper_biomass)
Grecian_Rocks_snapper_9 <- rbind(Grecian_Rocks_snapper_8,Grecian_Rocks_2008_snapper_biomass)
Grecian_Rocks_snapper_10 <- rbind(Grecian_Rocks_snapper_9,Grecian_Rocks_2009_snapper_biomass)
Grecian_Rocks_snapper_11<- rbind(Grecian_Rocks_snapper_10,Grecian_Rocks_2010_snapper_biomass)
Grecian_Rocks_snapper_12 <- rbind(Grecian_Rocks_snapper_11,Grecian_Rocks_2011_snapper_biomass)
Grecian_Rocks_snapper_13 <- rbind(Grecian_Rocks_snapper_12,Grecian_Rocks_2012_snapper_biomass)
Grecian_Rocks_snapper_14 <- rbind(Grecian_Rocks_snapper_13,Grecian_Rocks_2014_snapper_biomass)
Grecian_Rocks_snapper_15 <- rbind(Grecian_Rocks_snapper_14,Grecian_Rocks_2016_snapper_biomass)
Grecian_Rocks_snapper_biomass_data_combined <- rbind(Grecian_Rocks_snapper_15,Grecian_Rocks_2018_snapper_biomass)



Grecian_Rocks_grouper_1 <- rbind(Grecian_Rocks_1999_grouper_biomass,Grecian_Rocks_2000_grouper_biomass)
Grecian_Rocks_grouper_2 <- rbind(Grecian_Rocks_grouper_1,Grecian_Rocks_2001_grouper_biomass)
Grecian_Rocks_grouper_3 <- rbind(Grecian_Rocks_grouper_2,Grecian_Rocks_2002_grouper_biomass)
Grecian_Rocks_grouper_4 <- rbind(Grecian_Rocks_grouper_3,Grecian_Rocks_2003_grouper_biomass)
Grecian_Rocks_grouper_5 <- rbind(Grecian_Rocks_grouper_4,Grecian_Rocks_2004_grouper_biomass)
Grecian_Rocks_grouper_6 <- rbind(Grecian_Rocks_grouper_5,Grecian_Rocks_2005_grouper_biomass)
Grecian_Rocks_grouper_7 <- rbind(Grecian_Rocks_grouper_6,Grecian_Rocks_2006_grouper_biomass)
Grecian_Rocks_grouper_8 <- rbind(Grecian_Rocks_grouper_7,Grecian_Rocks_2007_grouper_biomass)
Grecian_Rocks_grouper_9 <- rbind(Grecian_Rocks_grouper_8,Grecian_Rocks_2008_grouper_biomass)
Grecian_Rocks_grouper_10 <- rbind(Grecian_Rocks_grouper_9,Grecian_Rocks_2009_grouper_biomass)
Grecian_Rocks_grouper_11<- rbind(Grecian_Rocks_grouper_10,Grecian_Rocks_2010_grouper_biomass)
Grecian_Rocks_grouper_12 <- rbind(Grecian_Rocks_grouper_11,Grecian_Rocks_2011_grouper_biomass)
Grecian_Rocks_grouper_13 <- rbind(Grecian_Rocks_grouper_12,Grecian_Rocks_2012_grouper_biomass)
Grecian_Rocks_grouper_14 <- rbind(Grecian_Rocks_grouper_13,Grecian_Rocks_2014_grouper_biomass)
Grecian_Rocks_grouper_15 <- rbind(Grecian_Rocks_grouper_14,Grecian_Rocks_2016_grouper_biomass)
Grecian_Rocks_grouper_biomass_data_combined <- rbind(Grecian_Rocks_grouper_15,Grecian_Rocks_2018_grouper_biomass)



export(Grecian_Rocks_snapper_biomass_data_combined, "Grecian_Rocks/data/Grecian_Rocks_snapper__biomass.csv")
export(Grecian_Rocks_grouper_biomass_data_combined, "Grecian_Rocks/data/Grecian_Rocks_grouper__biomass.csv")



#Molasses Deep


Molasses_Deep_1999 <- import("Molasses_Deep/data/Molasses_Deep_1999.xls")


Molasses_Deep_1999_snapper <- merge(Molasses_Deep_1999, snapper, by = c("SPECIES_CD"))
Molasses_Deep_1999_snapper_biomass <- summarise_at(Molasses_Deep_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_1999_snapper_biomass$Year <- ('1999')
Molasses_Deep_1999_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_1999_grouper <- merge(Molasses_Deep_1999, grouper, by = c("SPECIES_CD"))
Molasses_Deep_1999_grouper_biomass <- summarise_at(Molasses_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_1999_grouper_biomass$Year <- ('1999')
Molasses_Deep_1999_grouper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2000 <- import("Molasses_Deep/data/Molasses_Deep_2000.xls")

Molasses_Deep_2000_snapper <- merge(Molasses_Deep_2000, snapper, by = c("SPECIES_CD"))
Molasses_Deep_2000_snapper_biomass <- summarise_at(Molasses_Deep_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2000_snapper_biomass$Year <- ('2000')
Molasses_Deep_2000_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2000_grouper <- merge(Molasses_Deep_2000, grouper, by = c("SPECIES_CD"))
Molasses_Deep_2000_grouper_biomass <- summarise_at(Molasses_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2000_grouper_biomass$Year <- ('2000')
Molasses_Deep_2000_grouper_biomass$Reef <- ('Molasses Deep')

Molasses_Deep_2001 <- import("Molasses_Deep/data/Molasses_Deep_2001.xls")

Molasses_Deep_2001_snapper <- merge(Molasses_Deep_2001, snapper, by = c("SPECIES_CD"))
Molasses_Deep_2001_snapper_biomass <- summarise_at(Molasses_Deep_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2001_snapper_biomass$Year <- ('2001')
Molasses_Deep_2001_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2001_grouper <- merge(Molasses_Deep_2001, grouper, by = c("SPECIES_CD"))
Molasses_Deep_2001_grouper_biomass <- summarise_at(Molasses_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2001_grouper_biomass$Year <- ('2001')
Molasses_Deep_2001_grouper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2002 <- import("Molasses_Deep/data/Molasses_Deep_2002.xls")

Molasses_Deep_2002_snapper <- merge(Molasses_Deep_2002, snapper, by = c("SPECIES_CD"))
Molasses_Deep_2002_snapper_biomass <- summarise_at(Molasses_Deep_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2002_snapper_biomass$Year <- ('2002')
Molasses_Deep_2002_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2002_grouper <- merge(Molasses_Deep_2002, grouper, by = c("SPECIES_CD"))
Molasses_Deep_2002_grouper_biomass <- summarise_at(Molasses_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2002_grouper_biomass$Year <- ('2002')
Molasses_Deep_2002_grouper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2003 <- import("Molasses_Deep/data/Molasses_Deep_2003.xls")

Molasses_Deep_2003_snapper <- merge(Molasses_Deep_2003, snapper, by = c("SPECIES_CD"))
Molasses_Deep_2003_snapper_biomass <- summarise_at(Molasses_Deep_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2003_snapper_biomass$Year <- ('2003')
Molasses_Deep_2003_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2003_grouper <- merge(Molasses_Deep_2003, grouper, by = c("SPECIES_CD"))
Molasses_Deep_2003_grouper_biomass <- summarise_at(Molasses_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2003_grouper_biomass$Year <- ('2003')
Molasses_Deep_2003_grouper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2004 <- import("Molasses_Deep/data/Molasses_Deep_2004.xls")

Molasses_Deep_2004_snapper <- merge(Molasses_Deep_2004, snapper, by = c("SPECIES_CD"))
Molasses_Deep_2004_snapper_biomass <- summarise_at(Molasses_Deep_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2004_snapper_biomass$Year <- ('2004')
Molasses_Deep_2004_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2004_grouper <- merge(Molasses_Deep_2004, grouper, by = c("SPECIES_CD"))
Molasses_Deep_2004_grouper_biomass <- summarise_at(Molasses_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2004_grouper_biomass$Year <- ('2004')
Molasses_Deep_2004_grouper_biomass$Reef <- ('Molasses Deep')

Molasses_Deep_2005 <- import("Molasses_Deep/data/Molasses_Deep_2005.xls")

Molasses_Deep_2005_snapper <- merge(Molasses_Deep_2005, snapper, by = c("SPECIES_CD"))
Molasses_Deep_2005_snapper_biomass <- summarise_at(Molasses_Deep_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2005_snapper_biomass$Year <- ('2005')
Molasses_Deep_2005_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2005_grouper <- merge(Molasses_Deep_2005, grouper, by = c("SPECIES_CD"))
Molasses_Deep_2005_grouper_biomass <- summarise_at(Molasses_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2005_grouper_biomass$Year <- ('2005')
Molasses_Deep_2005_grouper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2006 <- import("Molasses_Deep/data/Molasses_Deep_2006.xls")

Molasses_Deep_2006_snapper <- merge(Molasses_Deep_2006, snapper, by = c("SPECIES_CD"))
Molasses_Deep_2006_snapper_biomass <- summarise_at(Molasses_Deep_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2006_snapper_biomass$Year <- ('2006')
Molasses_Deep_2006_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2006_grouper <- merge(Molasses_Deep_2006, grouper, by = c("SPECIES_CD"))
Molasses_Deep_2006_grouper_biomass <- summarise_at(Molasses_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2006_grouper_biomass$Year <- ('2006')
Molasses_Deep_2006_grouper_biomass$Reef <- ('Molasses Deep')

Molasses_Deep_2007 <- import("Molasses_Deep/data/Molasses_Deep_2007.xls")

Molasses_Deep_2007_snapper <- merge(Molasses_Deep_2007, snapper, by = c("SPECIES_CD"))
Molasses_Deep_2007_snapper_biomass <- summarise_at(Molasses_Deep_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2007_snapper_biomass$Year <- ('2007')
Molasses_Deep_2007_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2007_grouper <- merge(Molasses_Deep_2007, grouper, by = c("SPECIES_CD"))
Molasses_Deep_2007_grouper_biomass <- summarise_at(Molasses_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2007_grouper_biomass$Year <- ('2007')
Molasses_Deep_2007_grouper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2008 <- import("Molasses_Deep/data/Molasses_Deep_2008.xls")

Molasses_Deep_2008_snapper <- merge(Molasses_Deep_2008, snapper, by = c("SPECIES_CD"))
Molasses_Deep_2008_snapper_biomass <- summarise_at(Molasses_Deep_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2008_snapper_biomass$Year <- ('2008')
Molasses_Deep_2008_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2008_grouper <- merge(Molasses_Deep_2008, grouper, by = c("SPECIES_CD"))
Molasses_Deep_2008_grouper_biomass <- summarise_at(Molasses_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2008_grouper_biomass$Year <- ('2008')
Molasses_Deep_2008_grouper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2009 <- import("Molasses_Deep/data/Molasses_Deep_2009.xls")

Molasses_Deep_2009_snapper <- merge(Molasses_Deep_2009, snapper, by = c("SPECIES_CD"))
Molasses_Deep_2009_snapper_biomass <- summarise_at(Molasses_Deep_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2009_snapper_biomass$Year <- ('2009')
Molasses_Deep_2009_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2009_grouper <- merge(Molasses_Deep_2009, grouper, by = c("SPECIES_CD"))
Molasses_Deep_2009_grouper_biomass <- summarise_at(Molasses_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2009_grouper_biomass$Year <- ('2009')
Molasses_Deep_2009_grouper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2010 <- import("Molasses_Deep/data/Molasses_Deep_2010.xls")

Molasses_Deep_2010_snapper <- merge(Molasses_Deep_2010, snapper, by = c("SPECIES_CD"))
Molasses_Deep_2010_snapper_biomass <- summarise_at(Molasses_Deep_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2010_snapper_biomass$Year <- ('2010')
Molasses_Deep_2010_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2010_grouper <- merge(Molasses_Deep_2010, grouper, by = c("SPECIES_CD"))
Molasses_Deep_2010_grouper_biomass <- summarise_at(Molasses_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2010_grouper_biomass$Year <- ('2010')
Molasses_Deep_2010_grouper_biomass$Reef <- ('Molasses Deep')

Molasses_Deep_2011 <- import("Molasses_Deep/data/Molasses_Deep_2011.xls")

Molasses_Deep_2011_snapper <- merge(Molasses_Deep_2011, snapper, by = c("SPECIES_CD"))
Molasses_Deep_2011_snapper_biomass <- summarise_at(Molasses_Deep_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2011_snapper_biomass$Year <- ('2011')
Molasses_Deep_2011_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2011_grouper <- merge(Molasses_Deep_2011, grouper, by = c("SPECIES_CD"))
Molasses_Deep_2011_grouper_biomass <- summarise_at(Molasses_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2011_grouper_biomass$Year <- ('2011')
Molasses_Deep_2011_grouper_biomass$Reef <- ('Molasses Deep')



Molasses_Deep_2012 <- import("Molasses_Deep/data/Molasses_Deep_2012.xls")

Molasses_Deep_2012_snapper <- merge(Molasses_Deep_2012, snapper, by = c("SPECIES_CD"))
Molasses_Deep_2012_snapper_biomass <- summarise_at(Molasses_Deep_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2012_snapper_biomass$Year <- ('2012')
Molasses_Deep_2012_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2012_grouper <- merge(Molasses_Deep_2012, grouper, by = c("SPECIES_CD"))
Molasses_Deep_2012_grouper_biomass <- summarise_at(Molasses_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2012_grouper_biomass$Year <- ('2012')
Molasses_Deep_2012_grouper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2014 <- import("Molasses_Deep/data/Molasses_Deep_2014.xls")

Molasses_Deep_2014_snapper <- merge(Molasses_Deep_2014, snapper, by = c("SPECIES_CD"))
Molasses_Deep_2014_snapper_biomass <- summarise_at(Molasses_Deep_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2014_snapper_biomass$Year <- ('2014')
Molasses_Deep_2014_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2014_grouper <- merge(Molasses_Deep_2014, grouper, by = c("SPECIES_CD"))
Molasses_Deep_2014_grouper_biomass <- summarise_at(Molasses_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2014_grouper_biomass$Year <- ('2014')
Molasses_Deep_2014_grouper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2016 <- import("Molasses_Deep/data/Molasses_Deep_2016.xls")

Molasses_Deep_2016_snapper <- merge(Molasses_Deep_2016, snapper, by = c("SPECIES_CD"))
Molasses_Deep_2016_snapper_biomass <- summarise_at(Molasses_Deep_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2016_snapper_biomass$Year <- ('2016')
Molasses_Deep_2016_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2016_grouper <- merge(Molasses_Deep_2016, grouper, by = c("SPECIES_CD"))
Molasses_Deep_2016_grouper_biomass <- summarise_at(Molasses_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2016_grouper_biomass$Year <- ('2016')
Molasses_Deep_2016_grouper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2018 <- import("Molasses_Deep/data/Molasses_Deep_2018.xls")

Molasses_Deep_2018_snapper <- merge(Molasses_Deep_2018, snapper, by = c("SPECIES_CD"))
Molasses_Deep_2018_snapper_biomass <- summarise_at(Molasses_Deep_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2018_snapper_biomass$Year <- ('2018')
Molasses_Deep_2018_snapper_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2018_grouper <- merge(Molasses_Deep_2018, grouper, by = c("SPECIES_CD"))
Molasses_Deep_2018_grouper_biomass <- summarise_at(Molasses_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2018_grouper_biomass$Year <- ('2018')
Molasses_Deep_2018_grouper_biomass$Reef <- ('Molasses Deep')



### Combine all years together for snapper_ and grouper_ seperately



Molasses_Deep_snapper_1 <- rbind(Molasses_Deep_1999_snapper_biomass,Molasses_Deep_2000_snapper_biomass)
Molasses_Deep_snapper_2 <- rbind(Molasses_Deep_snapper_1,Molasses_Deep_2001_snapper_biomass)
Molasses_Deep_snapper_3 <- rbind(Molasses_Deep_snapper_2,Molasses_Deep_2002_snapper_biomass)
Molasses_Deep_snapper_4 <- rbind(Molasses_Deep_snapper_3,Molasses_Deep_2003_snapper_biomass)
Molasses_Deep_snapper_5 <- rbind(Molasses_Deep_snapper_4,Molasses_Deep_2004_snapper_biomass)
Molasses_Deep_snapper_6 <- rbind(Molasses_Deep_snapper_5,Molasses_Deep_2005_snapper_biomass)
Molasses_Deep_snapper_7 <- rbind(Molasses_Deep_snapper_6,Molasses_Deep_2006_snapper_biomass)
Molasses_Deep_snapper_8 <- rbind(Molasses_Deep_snapper_7,Molasses_Deep_2007_snapper_biomass)
Molasses_Deep_snapper_9 <- rbind(Molasses_Deep_snapper_8,Molasses_Deep_2008_snapper_biomass)
Molasses_Deep_snapper_10 <- rbind(Molasses_Deep_snapper_9,Molasses_Deep_2009_snapper_biomass)
Molasses_Deep_snapper_11<- rbind(Molasses_Deep_snapper_10,Molasses_Deep_2010_snapper_biomass)
Molasses_Deep_snapper_12 <- rbind(Molasses_Deep_snapper_11,Molasses_Deep_2011_snapper_biomass)
Molasses_Deep_snapper_13 <- rbind(Molasses_Deep_snapper_12,Molasses_Deep_2012_snapper_biomass)
Molasses_Deep_snapper_14 <- rbind(Molasses_Deep_snapper_13,Molasses_Deep_2014_snapper_biomass)
Molasses_Deep_snapper_15 <- rbind(Molasses_Deep_snapper_14,Molasses_Deep_2016_snapper_biomass)
Molasses_Deep_snapper_biomass_data_combined <- rbind(Molasses_Deep_snapper_15,Molasses_Deep_2018_snapper_biomass)



Molasses_Deep_grouper_1 <- rbind(Molasses_Deep_1999_grouper_biomass,Molasses_Deep_2000_grouper_biomass)
Molasses_Deep_grouper_2 <- rbind(Molasses_Deep_grouper_1,Molasses_Deep_2001_grouper_biomass)
Molasses_Deep_grouper_3 <- rbind(Molasses_Deep_grouper_2,Molasses_Deep_2002_grouper_biomass)
Molasses_Deep_grouper_4 <- rbind(Molasses_Deep_grouper_3,Molasses_Deep_2003_grouper_biomass)
Molasses_Deep_grouper_5 <- rbind(Molasses_Deep_grouper_4,Molasses_Deep_2004_grouper_biomass)
Molasses_Deep_grouper_6 <- rbind(Molasses_Deep_grouper_5,Molasses_Deep_2005_grouper_biomass)
Molasses_Deep_grouper_7 <- rbind(Molasses_Deep_grouper_6,Molasses_Deep_2006_grouper_biomass)
Molasses_Deep_grouper_8 <- rbind(Molasses_Deep_grouper_7,Molasses_Deep_2007_grouper_biomass)
Molasses_Deep_grouper_9 <- rbind(Molasses_Deep_grouper_8,Molasses_Deep_2008_grouper_biomass)
Molasses_Deep_grouper_10 <- rbind(Molasses_Deep_grouper_9,Molasses_Deep_2009_grouper_biomass)
Molasses_Deep_grouper_11<- rbind(Molasses_Deep_grouper_10,Molasses_Deep_2010_grouper_biomass)
Molasses_Deep_grouper_12 <- rbind(Molasses_Deep_grouper_11,Molasses_Deep_2011_grouper_biomass)
Molasses_Deep_grouper_13 <- rbind(Molasses_Deep_grouper_12,Molasses_Deep_2012_grouper_biomass)
Molasses_Deep_grouper_14 <- rbind(Molasses_Deep_grouper_13,Molasses_Deep_2014_grouper_biomass)
Molasses_Deep_grouper_15 <- rbind(Molasses_Deep_grouper_14,Molasses_Deep_2016_grouper_biomass)
Molasses_Deep_grouper_biomass_data_combined <- rbind(Molasses_Deep_grouper_15,Molasses_Deep_2018_grouper_biomass)



export(Molasses_Deep_snapper_biomass_data_combined, "Molasses_Deep/data/Molasses_Deep_snapper__biomass.csv")
export(Molasses_Deep_grouper_biomass_data_combined, "Molasses_Deep/data/Molasses_Deep_grouper__biomass.csv")



#Molasses Shallow


Molasses_Shallow_1999 <- import("Molasses_Shallow/data/Molasses_Shallow_1999.xls")


Molasses_Shallow_1999_snapper <- merge(Molasses_Shallow_1999, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_1999_snapper_biomass <- summarise_at(Molasses_Shallow_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_1999_snapper_biomass$Year <- ('1999')
Molasses_Shallow_1999_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_1999_grouper <- merge(Molasses_Shallow_1999, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_1999_grouper_biomass <- summarise_at(Molasses_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_1999_grouper_biomass$Year <- ('1999')
Molasses_Shallow_1999_grouper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2000 <- import("Molasses_Shallow/data/Molasses_Shallow_2000.xls")

Molasses_Shallow_2000_snapper <- merge(Molasses_Shallow_2000, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_2000_snapper_biomass <- summarise_at(Molasses_Shallow_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2000_snapper_biomass$Year <- ('2000')
Molasses_Shallow_2000_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2000_grouper <- merge(Molasses_Shallow_2000, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_2000_grouper_biomass <- summarise_at(Molasses_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2000_grouper_biomass$Year <- ('2000')
Molasses_Shallow_2000_grouper_biomass$Reef <- ('Molasses Shallow')

Molasses_Shallow_2001 <- import("Molasses_Shallow/data/Molasses_Shallow_2001.xls")

Molasses_Shallow_2001_snapper <- merge(Molasses_Shallow_2001, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_2001_snapper_biomass <- summarise_at(Molasses_Shallow_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2001_snapper_biomass$Year <- ('2001')
Molasses_Shallow_2001_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2001_grouper <- merge(Molasses_Shallow_2001, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_2001_grouper_biomass <- summarise_at(Molasses_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2001_grouper_biomass$Year <- ('2001')
Molasses_Shallow_2001_grouper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2002 <- import("Molasses_Shallow/data/Molasses_Shallow_2002.xls")

Molasses_Shallow_2002_snapper <- merge(Molasses_Shallow_2002, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_2002_snapper_biomass <- summarise_at(Molasses_Shallow_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2002_snapper_biomass$Year <- ('2002')
Molasses_Shallow_2002_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2002_grouper <- merge(Molasses_Shallow_2002, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_2002_grouper_biomass <- summarise_at(Molasses_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2002_grouper_biomass$Year <- ('2002')
Molasses_Shallow_2002_grouper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2003 <- import("Molasses_Shallow/data/Molasses_Shallow_2003.xls")

Molasses_Shallow_2003_snapper <- merge(Molasses_Shallow_2003, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_2003_snapper_biomass <- summarise_at(Molasses_Shallow_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2003_snapper_biomass$Year <- ('2003')
Molasses_Shallow_2003_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2003_grouper <- merge(Molasses_Shallow_2003, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_2003_grouper_biomass <- summarise_at(Molasses_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2003_grouper_biomass$Year <- ('2003')
Molasses_Shallow_2003_grouper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2004 <- import("Molasses_Shallow/data/Molasses_Shallow_2004.xls")

Molasses_Shallow_2004_snapper <- merge(Molasses_Shallow_2004, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_2004_snapper_biomass <- summarise_at(Molasses_Shallow_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2004_snapper_biomass$Year <- ('2004')
Molasses_Shallow_2004_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2004_grouper <- merge(Molasses_Shallow_2004, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_2004_grouper_biomass <- summarise_at(Molasses_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2004_grouper_biomass$Year <- ('2004')
Molasses_Shallow_2004_grouper_biomass$Reef <- ('Molasses Shallow')

Molasses_Shallow_2005 <- import("Molasses_Shallow/data/Molasses_Shallow_2005.xls")

Molasses_Shallow_2005_snapper <- merge(Molasses_Shallow_2005, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_2005_snapper_biomass <- summarise_at(Molasses_Shallow_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2005_snapper_biomass$Year <- ('2005')
Molasses_Shallow_2005_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2005_grouper <- merge(Molasses_Shallow_2005, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_2005_grouper_biomass <- summarise_at(Molasses_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2005_grouper_biomass$Year <- ('2005')
Molasses_Shallow_2005_grouper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2006 <- import("Molasses_Shallow/data/Molasses_Shallow_2006.xls")

Molasses_Shallow_2006_snapper <- merge(Molasses_Shallow_2006, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_2006_snapper_biomass <- summarise_at(Molasses_Shallow_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2006_snapper_biomass$Year <- ('2006')
Molasses_Shallow_2006_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2006_grouper <- merge(Molasses_Shallow_2006, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_2006_grouper_biomass <- summarise_at(Molasses_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2006_grouper_biomass$Year <- ('2006')
Molasses_Shallow_2006_grouper_biomass$Reef <- ('Molasses Shallow')

Molasses_Shallow_2007 <- import("Molasses_Shallow/data/Molasses_Shallow_2007.xls")

Molasses_Shallow_2007_snapper <- merge(Molasses_Shallow_2007, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_2007_snapper_biomass <- summarise_at(Molasses_Shallow_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2007_snapper_biomass$Year <- ('2007')
Molasses_Shallow_2007_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2007_grouper <- merge(Molasses_Shallow_2007, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_2007_grouper_biomass <- summarise_at(Molasses_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2007_grouper_biomass$Year <- ('2007')
Molasses_Shallow_2007_grouper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2008 <- import("Molasses_Shallow/data/Molasses_Shallow_2008.xls")

Molasses_Shallow_2008_snapper <- merge(Molasses_Shallow_2008, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_2008_snapper_biomass <- summarise_at(Molasses_Shallow_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2008_snapper_biomass$Year <- ('2008')
Molasses_Shallow_2008_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2008_grouper <- merge(Molasses_Shallow_2008, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_2008_grouper_biomass <- summarise_at(Molasses_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2008_grouper_biomass$Year <- ('2008')
Molasses_Shallow_2008_grouper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2009 <- import("Molasses_Shallow/data/Molasses_Shallow_2009.xls")

Molasses_Shallow_2009_snapper <- merge(Molasses_Shallow_2009, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_2009_snapper_biomass <- summarise_at(Molasses_Shallow_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2009_snapper_biomass$Year <- ('2009')
Molasses_Shallow_2009_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2009_grouper <- merge(Molasses_Shallow_2009, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_2009_grouper_biomass <- summarise_at(Molasses_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2009_grouper_biomass$Year <- ('2009')
Molasses_Shallow_2009_grouper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2010 <- import("Molasses_Shallow/data/Molasses_Shallow_2010.xls")

Molasses_Shallow_2010_snapper <- merge(Molasses_Shallow_2010, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_2010_snapper_biomass <- summarise_at(Molasses_Shallow_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2010_snapper_biomass$Year <- ('2010')
Molasses_Shallow_2010_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2010_grouper <- merge(Molasses_Shallow_2010, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_2010_grouper_biomass <- summarise_at(Molasses_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2010_grouper_biomass$Year <- ('2010')
Molasses_Shallow_2010_grouper_biomass$Reef <- ('Molasses Shallow')

Molasses_Shallow_2011 <- import("Molasses_Shallow/data/Molasses_Shallow_2011.xls")

Molasses_Shallow_2011_snapper <- merge(Molasses_Shallow_2011, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_2011_snapper_biomass <- summarise_at(Molasses_Shallow_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2011_snapper_biomass$Year <- ('2011')
Molasses_Shallow_2011_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2011_grouper <- merge(Molasses_Shallow_2011, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_2011_grouper_biomass <- summarise_at(Molasses_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2011_grouper_biomass$Year <- ('2011')
Molasses_Shallow_2011_grouper_biomass$Reef <- ('Molasses Shallow')



Molasses_Shallow_2012 <- import("Molasses_Shallow/data/Molasses_Shallow_2012.xls")

Molasses_Shallow_2012_snapper <- merge(Molasses_Shallow_2012, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_2012_snapper_biomass <- summarise_at(Molasses_Shallow_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2012_snapper_biomass$Year <- ('2012')
Molasses_Shallow_2012_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2012_grouper <- merge(Molasses_Shallow_2012, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_2012_grouper_biomass <- summarise_at(Molasses_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2012_grouper_biomass$Year <- ('2012')
Molasses_Shallow_2012_grouper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2014 <- import("Molasses_Shallow/data/Molasses_Shallow_2014.xls")

Molasses_Shallow_2014_snapper <- merge(Molasses_Shallow_2014, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_2014_snapper_biomass <- summarise_at(Molasses_Shallow_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2014_snapper_biomass$Year <- ('2014')
Molasses_Shallow_2014_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2014_grouper <- merge(Molasses_Shallow_2014, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_2014_grouper_biomass <- summarise_at(Molasses_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2014_grouper_biomass$Year <- ('2014')
Molasses_Shallow_2014_grouper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2016 <- import("Molasses_Shallow/data/Molasses_Shallow_2016.xls")

Molasses_Shallow_2016_snapper <- merge(Molasses_Shallow_2016, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_2016_snapper_biomass <- summarise_at(Molasses_Shallow_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2016_snapper_biomass$Year <- ('2016')
Molasses_Shallow_2016_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2016_grouper <- merge(Molasses_Shallow_2016, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_2016_grouper_biomass <- summarise_at(Molasses_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2016_grouper_biomass$Year <- ('2016')
Molasses_Shallow_2016_grouper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2018 <- import("Molasses_Shallow/data/Molasses_Shallow_2018.xls")

Molasses_Shallow_2018_snapper <- merge(Molasses_Shallow_2018, snapper, by = c("SPECIES_CD"))
Molasses_Shallow_2018_snapper_biomass <- summarise_at(Molasses_Shallow_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2018_snapper_biomass$Year <- ('2018')
Molasses_Shallow_2018_snapper_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2018_grouper <- merge(Molasses_Shallow_2018, grouper, by = c("SPECIES_CD"))
Molasses_Shallow_2018_grouper_biomass <- summarise_at(Molasses_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2018_grouper_biomass$Year <- ('2018')
Molasses_Shallow_2018_grouper_biomass$Reef <- ('Molasses Shallow')



### Combine all years together for snapper_ and grouper_ seperately



Molasses_Shallow_snapper_1 <- rbind(Molasses_Shallow_1999_snapper_biomass,Molasses_Shallow_2000_snapper_biomass)
Molasses_Shallow_snapper_2 <- rbind(Molasses_Shallow_snapper_1,Molasses_Shallow_2001_snapper_biomass)
Molasses_Shallow_snapper_3 <- rbind(Molasses_Shallow_snapper_2,Molasses_Shallow_2002_snapper_biomass)
Molasses_Shallow_snapper_4 <- rbind(Molasses_Shallow_snapper_3,Molasses_Shallow_2003_snapper_biomass)
Molasses_Shallow_snapper_5 <- rbind(Molasses_Shallow_snapper_4,Molasses_Shallow_2004_snapper_biomass)
Molasses_Shallow_snapper_6 <- rbind(Molasses_Shallow_snapper_5,Molasses_Shallow_2005_snapper_biomass)
Molasses_Shallow_snapper_7 <- rbind(Molasses_Shallow_snapper_6,Molasses_Shallow_2006_snapper_biomass)
Molasses_Shallow_snapper_8 <- rbind(Molasses_Shallow_snapper_7,Molasses_Shallow_2007_snapper_biomass)
Molasses_Shallow_snapper_9 <- rbind(Molasses_Shallow_snapper_8,Molasses_Shallow_2008_snapper_biomass)
Molasses_Shallow_snapper_10 <- rbind(Molasses_Shallow_snapper_9,Molasses_Shallow_2009_snapper_biomass)
Molasses_Shallow_snapper_11<- rbind(Molasses_Shallow_snapper_10,Molasses_Shallow_2010_snapper_biomass)
Molasses_Shallow_snapper_12 <- rbind(Molasses_Shallow_snapper_11,Molasses_Shallow_2011_snapper_biomass)
Molasses_Shallow_snapper_13 <- rbind(Molasses_Shallow_snapper_12,Molasses_Shallow_2012_snapper_biomass)
Molasses_Shallow_snapper_14 <- rbind(Molasses_Shallow_snapper_13,Molasses_Shallow_2014_snapper_biomass)
Molasses_Shallow_snapper_15 <- rbind(Molasses_Shallow_snapper_14,Molasses_Shallow_2016_snapper_biomass)
Molasses_Shallow_snapper_biomass_data_combined <- rbind(Molasses_Shallow_snapper_15,Molasses_Shallow_2018_snapper_biomass)



Molasses_Shallow_grouper_1 <- rbind(Molasses_Shallow_1999_grouper_biomass,Molasses_Shallow_2000_grouper_biomass)
Molasses_Shallow_grouper_2 <- rbind(Molasses_Shallow_grouper_1,Molasses_Shallow_2001_grouper_biomass)
Molasses_Shallow_grouper_3 <- rbind(Molasses_Shallow_grouper_2,Molasses_Shallow_2002_grouper_biomass)
Molasses_Shallow_grouper_4 <- rbind(Molasses_Shallow_grouper_3,Molasses_Shallow_2003_grouper_biomass)
Molasses_Shallow_grouper_5 <- rbind(Molasses_Shallow_grouper_4,Molasses_Shallow_2004_grouper_biomass)
Molasses_Shallow_grouper_6 <- rbind(Molasses_Shallow_grouper_5,Molasses_Shallow_2005_grouper_biomass)
Molasses_Shallow_grouper_7 <- rbind(Molasses_Shallow_grouper_6,Molasses_Shallow_2006_grouper_biomass)
Molasses_Shallow_grouper_8 <- rbind(Molasses_Shallow_grouper_7,Molasses_Shallow_2007_grouper_biomass)
Molasses_Shallow_grouper_9 <- rbind(Molasses_Shallow_grouper_8,Molasses_Shallow_2008_grouper_biomass)
Molasses_Shallow_grouper_10 <- rbind(Molasses_Shallow_grouper_9,Molasses_Shallow_2009_grouper_biomass)
Molasses_Shallow_grouper_11<- rbind(Molasses_Shallow_grouper_10,Molasses_Shallow_2010_grouper_biomass)
Molasses_Shallow_grouper_12 <- rbind(Molasses_Shallow_grouper_11,Molasses_Shallow_2011_grouper_biomass)
Molasses_Shallow_grouper_13 <- rbind(Molasses_Shallow_grouper_12,Molasses_Shallow_2012_grouper_biomass)
Molasses_Shallow_grouper_14 <- rbind(Molasses_Shallow_grouper_13,Molasses_Shallow_2014_grouper_biomass)
Molasses_Shallow_grouper_15 <- rbind(Molasses_Shallow_grouper_14,Molasses_Shallow_2016_grouper_biomass)
Molasses_Shallow_grouper_biomass_data_combined <- rbind(Molasses_Shallow_grouper_15,Molasses_Shallow_2018_grouper_biomass)



export(Molasses_Shallow_snapper_biomass_data_combined, "Molasses_Shallow/data/Molasses_Shallow_snapper__biomass.csv")
export(Molasses_Shallow_grouper_biomass_data_combined, "Molasses_Shallow/data/Molasses_Shallow_grouper__biomass.csv")




#Porter Patch


Porter_Patch_1999 <- import("Porter_Patch/data/Porter_Patch_1999.xls")


Porter_Patch_1999_snapper <- merge(Porter_Patch_1999, snapper, by = c("SPECIES_CD"))
Porter_Patch_1999_snapper_biomass <- summarise_at(Porter_Patch_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_1999_snapper_biomass$Year <- ('1999')
Porter_Patch_1999_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_1999_grouper <- merge(Porter_Patch_1999, grouper, by = c("SPECIES_CD"))
Porter_Patch_1999_grouper_biomass <- summarise_at(Porter_Patch_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_1999_grouper_biomass$Year <- ('1999')
Porter_Patch_1999_grouper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2000 <- import("Porter_Patch/data/Porter_Patch_2000.xls")

Porter_Patch_2000_snapper <- merge(Porter_Patch_2000, snapper, by = c("SPECIES_CD"))
Porter_Patch_2000_snapper_biomass <- summarise_at(Porter_Patch_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2000_snapper_biomass$Year <- ('2000')
Porter_Patch_2000_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2000_grouper <- merge(Porter_Patch_2000, grouper, by = c("SPECIES_CD"))
Porter_Patch_2000_grouper_biomass <- summarise_at(Porter_Patch_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2000_grouper_biomass$Year <- ('2000')
Porter_Patch_2000_grouper_biomass$Reef <- ('Porter Patch')

Porter_Patch_2001 <- import("Porter_Patch/data/Porter_Patch_2001.xls")

Porter_Patch_2001_snapper <- merge(Porter_Patch_2001, snapper, by = c("SPECIES_CD"))
Porter_Patch_2001_snapper_biomass <- summarise_at(Porter_Patch_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2001_snapper_biomass$Year <- ('2001')
Porter_Patch_2001_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2001_grouper <- merge(Porter_Patch_2001, grouper, by = c("SPECIES_CD"))
Porter_Patch_2001_grouper_biomass <- summarise_at(Porter_Patch_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2001_grouper_biomass$Year <- ('2001')
Porter_Patch_2001_grouper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2002 <- import("Porter_Patch/data/Porter_Patch_2002.xls")

Porter_Patch_2002_snapper <- merge(Porter_Patch_2002, snapper, by = c("SPECIES_CD"))
Porter_Patch_2002_snapper_biomass <- summarise_at(Porter_Patch_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2002_snapper_biomass$Year <- ('2002')
Porter_Patch_2002_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2002_grouper <- merge(Porter_Patch_2002, grouper, by = c("SPECIES_CD"))
Porter_Patch_2002_grouper_biomass <- summarise_at(Porter_Patch_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2002_grouper_biomass$Year <- ('2002')
Porter_Patch_2002_grouper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2003 <- import("Porter_Patch/data/Porter_Patch_2003.xls")

Porter_Patch_2003_snapper <- merge(Porter_Patch_2003, snapper, by = c("SPECIES_CD"))
Porter_Patch_2003_snapper_biomass <- summarise_at(Porter_Patch_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2003_snapper_biomass$Year <- ('2003')
Porter_Patch_2003_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2003_grouper <- merge(Porter_Patch_2003, grouper, by = c("SPECIES_CD"))
Porter_Patch_2003_grouper_biomass <- summarise_at(Porter_Patch_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2003_grouper_biomass$Year <- ('2003')
Porter_Patch_2003_grouper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2004 <- import("Porter_Patch/data/Porter_Patch_2004.xls")

Porter_Patch_2004_snapper <- merge(Porter_Patch_2004, snapper, by = c("SPECIES_CD"))
Porter_Patch_2004_snapper_biomass <- summarise_at(Porter_Patch_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2004_snapper_biomass$Year <- ('2004')
Porter_Patch_2004_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2004_grouper <- merge(Porter_Patch_2004, grouper, by = c("SPECIES_CD"))
Porter_Patch_2004_grouper_biomass <- summarise_at(Porter_Patch_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2004_grouper_biomass$Year <- ('2004')
Porter_Patch_2004_grouper_biomass$Reef <- ('Porter Patch')

Porter_Patch_2005 <- import("Porter_Patch/data/Porter_Patch_2005.xls")

Porter_Patch_2005_snapper <- merge(Porter_Patch_2005, snapper, by = c("SPECIES_CD"))
Porter_Patch_2005_snapper_biomass <- summarise_at(Porter_Patch_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2005_snapper_biomass$Year <- ('2005')
Porter_Patch_2005_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2005_grouper <- merge(Porter_Patch_2005, grouper, by = c("SPECIES_CD"))
Porter_Patch_2005_grouper_biomass <- summarise_at(Porter_Patch_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2005_grouper_biomass$Year <- ('2005')
Porter_Patch_2005_grouper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2006 <- import("Porter_Patch/data/Porter_Patch_2006.xls")

Porter_Patch_2006_snapper <- merge(Porter_Patch_2006, snapper, by = c("SPECIES_CD"))
Porter_Patch_2006_snapper_biomass <- summarise_at(Porter_Patch_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2006_snapper_biomass$Year <- ('2006')
Porter_Patch_2006_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2006_grouper <- merge(Porter_Patch_2006, grouper, by = c("SPECIES_CD"))
Porter_Patch_2006_grouper_biomass <- summarise_at(Porter_Patch_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2006_grouper_biomass$Year <- ('2006')
Porter_Patch_2006_grouper_biomass$Reef <- ('Porter Patch')

Porter_Patch_2007 <- import("Porter_Patch/data/Porter_Patch_2007.xls")

Porter_Patch_2007_snapper <- merge(Porter_Patch_2007, snapper, by = c("SPECIES_CD"))
Porter_Patch_2007_snapper_biomass <- summarise_at(Porter_Patch_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2007_snapper_biomass$Year <- ('2007')
Porter_Patch_2007_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2007_grouper <- merge(Porter_Patch_2007, grouper, by = c("SPECIES_CD"))
Porter_Patch_2007_grouper_biomass <- summarise_at(Porter_Patch_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2007_grouper_biomass$Year <- ('2007')
Porter_Patch_2007_grouper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2008 <- import("Porter_Patch/data/Porter_Patch_2008.xls")

Porter_Patch_2008_snapper <- merge(Porter_Patch_2008, snapper, by = c("SPECIES_CD"))
Porter_Patch_2008_snapper_biomass <- summarise_at(Porter_Patch_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2008_snapper_biomass$Year <- ('2008')
Porter_Patch_2008_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2008_grouper <- merge(Porter_Patch_2008, grouper, by = c("SPECIES_CD"))
Porter_Patch_2008_grouper_biomass <- summarise_at(Porter_Patch_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2008_grouper_biomass$Year <- ('2008')
Porter_Patch_2008_grouper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2009 <- import("Porter_Patch/data/Porter_Patch_2009.xls")

Porter_Patch_2009_snapper <- merge(Porter_Patch_2009, snapper, by = c("SPECIES_CD"))
Porter_Patch_2009_snapper_biomass <- summarise_at(Porter_Patch_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2009_snapper_biomass$Year <- ('2009')
Porter_Patch_2009_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2009_grouper <- merge(Porter_Patch_2009, grouper, by = c("SPECIES_CD"))
Porter_Patch_2009_grouper_biomass <- summarise_at(Porter_Patch_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2009_grouper_biomass$Year <- ('2009')
Porter_Patch_2009_grouper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2010 <- import("Porter_Patch/data/Porter_Patch_2010.xls")

Porter_Patch_2010_snapper <- merge(Porter_Patch_2010, snapper, by = c("SPECIES_CD"))
Porter_Patch_2010_snapper_biomass <- summarise_at(Porter_Patch_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2010_snapper_biomass$Year <- ('2010')
Porter_Patch_2010_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2010_grouper <- merge(Porter_Patch_2010, grouper, by = c("SPECIES_CD"))
Porter_Patch_2010_grouper_biomass <- summarise_at(Porter_Patch_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2010_grouper_biomass$Year <- ('2010')
Porter_Patch_2010_grouper_biomass$Reef <- ('Porter Patch')

Porter_Patch_2011 <- import("Porter_Patch/data/Porter_Patch_2011.xls")

Porter_Patch_2011_snapper <- merge(Porter_Patch_2011, snapper, by = c("SPECIES_CD"))
Porter_Patch_2011_snapper_biomass <- summarise_at(Porter_Patch_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2011_snapper_biomass$Year <- ('2011')
Porter_Patch_2011_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2011_grouper <- merge(Porter_Patch_2011, grouper, by = c("SPECIES_CD"))
Porter_Patch_2011_grouper_biomass <- summarise_at(Porter_Patch_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2011_grouper_biomass$Year <- ('2011')
Porter_Patch_2011_grouper_biomass$Reef <- ('Porter Patch')



Porter_Patch_2012 <- import("Porter_Patch/data/Porter_Patch_2012.xls")

Porter_Patch_2012_snapper <- merge(Porter_Patch_2012, snapper, by = c("SPECIES_CD"))
Porter_Patch_2012_snapper_biomass <- summarise_at(Porter_Patch_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2012_snapper_biomass$Year <- ('2012')
Porter_Patch_2012_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2012_grouper <- merge(Porter_Patch_2012, grouper, by = c("SPECIES_CD"))
Porter_Patch_2012_grouper_biomass <- summarise_at(Porter_Patch_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2012_grouper_biomass$Year <- ('2012')
Porter_Patch_2012_grouper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2014 <- import("Porter_Patch/data/Porter_Patch_2014.xls")

Porter_Patch_2014_snapper <- merge(Porter_Patch_2014, snapper, by = c("SPECIES_CD"))
Porter_Patch_2014_snapper_biomass <- summarise_at(Porter_Patch_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2014_snapper_biomass$Year <- ('2014')
Porter_Patch_2014_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2014_grouper <- merge(Porter_Patch_2014, grouper, by = c("SPECIES_CD"))
Porter_Patch_2014_grouper_biomass <- summarise_at(Porter_Patch_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2014_grouper_biomass$Year <- ('2014')
Porter_Patch_2014_grouper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2016 <- import("Porter_Patch/data/Porter_Patch_2016.xls")

Porter_Patch_2016_snapper <- merge(Porter_Patch_2016, snapper, by = c("SPECIES_CD"))
Porter_Patch_2016_snapper_biomass <- summarise_at(Porter_Patch_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2016_snapper_biomass$Year <- ('2016')
Porter_Patch_2016_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2016_grouper <- merge(Porter_Patch_2016, grouper, by = c("SPECIES_CD"))
Porter_Patch_2016_grouper_biomass <- summarise_at(Porter_Patch_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2016_grouper_biomass$Year <- ('2016')
Porter_Patch_2016_grouper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2018 <- import("Porter_Patch/data/Porter_Patch_2018.xls")

Porter_Patch_2018_snapper <- merge(Porter_Patch_2018, snapper, by = c("SPECIES_CD"))
Porter_Patch_2018_snapper_biomass <- summarise_at(Porter_Patch_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2018_snapper_biomass$Year <- ('2018')
Porter_Patch_2018_snapper_biomass$Reef <- ('Porter Patch')


Porter_Patch_2018_grouper <- merge(Porter_Patch_2018, grouper, by = c("SPECIES_CD"))
Porter_Patch_2018_grouper_biomass <- summarise_at(Porter_Patch_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2018_grouper_biomass$Year <- ('2018')
Porter_Patch_2018_grouper_biomass$Reef <- ('Porter Patch')



### Combine all years together for snapper_ and grouper_ seperately



Porter_Patch_snapper_1 <- rbind(Porter_Patch_1999_snapper_biomass,Porter_Patch_2000_snapper_biomass)
Porter_Patch_snapper_2 <- rbind(Porter_Patch_snapper_1,Porter_Patch_2001_snapper_biomass)
Porter_Patch_snapper_3 <- rbind(Porter_Patch_snapper_2,Porter_Patch_2002_snapper_biomass)
Porter_Patch_snapper_4 <- rbind(Porter_Patch_snapper_3,Porter_Patch_2003_snapper_biomass)
Porter_Patch_snapper_5 <- rbind(Porter_Patch_snapper_4,Porter_Patch_2004_snapper_biomass)
Porter_Patch_snapper_6 <- rbind(Porter_Patch_snapper_5,Porter_Patch_2005_snapper_biomass)
Porter_Patch_snapper_7 <- rbind(Porter_Patch_snapper_6,Porter_Patch_2006_snapper_biomass)
Porter_Patch_snapper_8 <- rbind(Porter_Patch_snapper_7,Porter_Patch_2007_snapper_biomass)
Porter_Patch_snapper_9 <- rbind(Porter_Patch_snapper_8,Porter_Patch_2008_snapper_biomass)
Porter_Patch_snapper_10 <- rbind(Porter_Patch_snapper_9,Porter_Patch_2009_snapper_biomass)
Porter_Patch_snapper_11<- rbind(Porter_Patch_snapper_10,Porter_Patch_2010_snapper_biomass)
Porter_Patch_snapper_12 <- rbind(Porter_Patch_snapper_11,Porter_Patch_2011_snapper_biomass)
Porter_Patch_snapper_13 <- rbind(Porter_Patch_snapper_12,Porter_Patch_2012_snapper_biomass)
Porter_Patch_snapper_14 <- rbind(Porter_Patch_snapper_13,Porter_Patch_2014_snapper_biomass)
Porter_Patch_snapper_15 <- rbind(Porter_Patch_snapper_14,Porter_Patch_2016_snapper_biomass)
Porter_Patch_snapper_biomass_data_combined <- rbind(Porter_Patch_snapper_15,Porter_Patch_2018_snapper_biomass)



Porter_Patch_grouper_1 <- rbind(Porter_Patch_1999_grouper_biomass,Porter_Patch_2000_grouper_biomass)
Porter_Patch_grouper_2 <- rbind(Porter_Patch_grouper_1,Porter_Patch_2001_grouper_biomass)
Porter_Patch_grouper_3 <- rbind(Porter_Patch_grouper_2,Porter_Patch_2002_grouper_biomass)
Porter_Patch_grouper_4 <- rbind(Porter_Patch_grouper_3,Porter_Patch_2003_grouper_biomass)
Porter_Patch_grouper_5 <- rbind(Porter_Patch_grouper_4,Porter_Patch_2004_grouper_biomass)
Porter_Patch_grouper_6 <- rbind(Porter_Patch_grouper_5,Porter_Patch_2005_grouper_biomass)
Porter_Patch_grouper_7 <- rbind(Porter_Patch_grouper_6,Porter_Patch_2006_grouper_biomass)
Porter_Patch_grouper_8 <- rbind(Porter_Patch_grouper_7,Porter_Patch_2007_grouper_biomass)
Porter_Patch_grouper_9 <- rbind(Porter_Patch_grouper_8,Porter_Patch_2008_grouper_biomass)
Porter_Patch_grouper_10 <- rbind(Porter_Patch_grouper_9,Porter_Patch_2009_grouper_biomass)
Porter_Patch_grouper_11<- rbind(Porter_Patch_grouper_10,Porter_Patch_2010_grouper_biomass)
Porter_Patch_grouper_12 <- rbind(Porter_Patch_grouper_11,Porter_Patch_2011_grouper_biomass)
Porter_Patch_grouper_13 <- rbind(Porter_Patch_grouper_12,Porter_Patch_2012_grouper_biomass)
Porter_Patch_grouper_14 <- rbind(Porter_Patch_grouper_13,Porter_Patch_2014_grouper_biomass)
Porter_Patch_grouper_15 <- rbind(Porter_Patch_grouper_14,Porter_Patch_2016_grouper_biomass)
Porter_Patch_grouper_biomass_data_combined <- rbind(Porter_Patch_grouper_15,Porter_Patch_2018_grouper_biomass)



export(Porter_Patch_snapper_biomass_data_combined, "Porter_Patch/data/Porter_Patch_snapper__biomass.csv")
export(Porter_Patch_grouper_biomass_data_combined, "Porter_Patch/data/Porter_Patch_grouper__biomass.csv")




#Turtle


Turtle_1999 <- import("Turtle/data/Turtle_1999.xls")


Turtle_1999_snapper <- merge(Turtle_1999, snapper, by = c("SPECIES_CD"))
Turtle_1999_snapper_biomass <- summarise_at(Turtle_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_1999_snapper_biomass$Year <- ('1999')
Turtle_1999_snapper_biomass$Reef <- ('Turtle')


Turtle_1999_grouper <- merge(Turtle_1999, grouper, by = c("SPECIES_CD"))
Turtle_1999_grouper_biomass <- summarise_at(Turtle_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_1999_grouper_biomass$Year <- ('1999')
Turtle_1999_grouper_biomass$Reef <- ('Turtle')


Turtle_2000 <- import("Turtle/data/Turtle_2000.xls")

Turtle_2000_snapper <- merge(Turtle_2000, snapper, by = c("SPECIES_CD"))
Turtle_2000_snapper_biomass <- summarise_at(Turtle_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2000_snapper_biomass$Year <- ('2000')
Turtle_2000_snapper_biomass$Reef <- ('Turtle')


Turtle_2000_grouper <- merge(Turtle_2000, grouper, by = c("SPECIES_CD"))
Turtle_2000_grouper_biomass <- summarise_at(Turtle_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2000_grouper_biomass$Year <- ('2000')
Turtle_2000_grouper_biomass$Reef <- ('Turtle')

Turtle_2001 <- import("Turtle/data/Turtle_2001.xls")

Turtle_2001_snapper <- merge(Turtle_2001, snapper, by = c("SPECIES_CD"))
Turtle_2001_snapper_biomass <- summarise_at(Turtle_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2001_snapper_biomass$Year <- ('2001')
Turtle_2001_snapper_biomass$Reef <- ('Turtle')


Turtle_2001_grouper <- merge(Turtle_2001, grouper, by = c("SPECIES_CD"))
Turtle_2001_grouper_biomass <- summarise_at(Turtle_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2001_grouper_biomass$Year <- ('2001')
Turtle_2001_grouper_biomass$Reef <- ('Turtle')


Turtle_2002 <- import("Turtle/data/Turtle_2002.xls")

Turtle_2002_snapper <- merge(Turtle_2002, snapper, by = c("SPECIES_CD"))
Turtle_2002_snapper_biomass <- summarise_at(Turtle_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2002_snapper_biomass$Year <- ('2002')
Turtle_2002_snapper_biomass$Reef <- ('Turtle')


Turtle_2002_grouper <- merge(Turtle_2002, grouper, by = c("SPECIES_CD"))
Turtle_2002_grouper_biomass <- summarise_at(Turtle_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2002_grouper_biomass$Year <- ('2002')
Turtle_2002_grouper_biomass$Reef <- ('Turtle')


Turtle_2003 <- import("Turtle/data/Turtle_2003.xls")

Turtle_2003_snapper <- merge(Turtle_2003, snapper, by = c("SPECIES_CD"))
Turtle_2003_snapper_biomass <- summarise_at(Turtle_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2003_snapper_biomass$Year <- ('2003')
Turtle_2003_snapper_biomass$Reef <- ('Turtle')


Turtle_2003_grouper <- merge(Turtle_2003, grouper, by = c("SPECIES_CD"))
Turtle_2003_grouper_biomass <- summarise_at(Turtle_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2003_grouper_biomass$Year <- ('2003')
Turtle_2003_grouper_biomass$Reef <- ('Turtle')


Turtle_2004 <- import("Turtle/data/Turtle_2004.xls")

Turtle_2004_snapper <- merge(Turtle_2004, snapper, by = c("SPECIES_CD"))
Turtle_2004_snapper_biomass <- summarise_at(Turtle_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2004_snapper_biomass$Year <- ('2004')
Turtle_2004_snapper_biomass$Reef <- ('Turtle')


Turtle_2004_grouper <- merge(Turtle_2004, grouper, by = c("SPECIES_CD"))
Turtle_2004_grouper_biomass <- summarise_at(Turtle_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2004_grouper_biomass$Year <- ('2004')
Turtle_2004_grouper_biomass$Reef <- ('Turtle')

Turtle_2005 <- import("Turtle/data/Turtle_2005.xls")

Turtle_2005_snapper <- merge(Turtle_2005, snapper, by = c("SPECIES_CD"))
Turtle_2005_snapper_biomass <- summarise_at(Turtle_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2005_snapper_biomass$Year <- ('2005')
Turtle_2005_snapper_biomass$Reef <- ('Turtle')


Turtle_2005_grouper <- merge(Turtle_2005, grouper, by = c("SPECIES_CD"))
Turtle_2005_grouper_biomass <- summarise_at(Turtle_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2005_grouper_biomass$Year <- ('2005')
Turtle_2005_grouper_biomass$Reef <- ('Turtle')


Turtle_2006 <- import("Turtle/data/Turtle_2006.xls")

Turtle_2006_snapper <- merge(Turtle_2006, snapper, by = c("SPECIES_CD"))
Turtle_2006_snapper_biomass <- summarise_at(Turtle_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2006_snapper_biomass$Year <- ('2006')
Turtle_2006_snapper_biomass$Reef <- ('Turtle')


Turtle_2006_grouper <- merge(Turtle_2006, grouper, by = c("SPECIES_CD"))
Turtle_2006_grouper_biomass <- summarise_at(Turtle_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2006_grouper_biomass$Year <- ('2006')
Turtle_2006_grouper_biomass$Reef <- ('Turtle')

Turtle_2007 <- import("Turtle/data/Turtle_2007.xls")

Turtle_2007_snapper <- merge(Turtle_2007, snapper, by = c("SPECIES_CD"))
Turtle_2007_snapper_biomass <- summarise_at(Turtle_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2007_snapper_biomass$Year <- ('2007')
Turtle_2007_snapper_biomass$Reef <- ('Turtle')


Turtle_2007_grouper <- merge(Turtle_2007, grouper, by = c("SPECIES_CD"))
Turtle_2007_grouper_biomass <- summarise_at(Turtle_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2007_grouper_biomass$Year <- ('2007')
Turtle_2007_grouper_biomass$Reef <- ('Turtle')


Turtle_2008 <- import("Turtle/data/Turtle_2008.xls")

Turtle_2008_snapper <- merge(Turtle_2008, snapper, by = c("SPECIES_CD"))
Turtle_2008_snapper_biomass <- summarise_at(Turtle_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2008_snapper_biomass$Year <- ('2008')
Turtle_2008_snapper_biomass$Reef <- ('Turtle')


Turtle_2008_grouper <- merge(Turtle_2008, grouper, by = c("SPECIES_CD"))
Turtle_2008_grouper_biomass <- summarise_at(Turtle_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2008_grouper_biomass$Year <- ('2008')
Turtle_2008_grouper_biomass$Reef <- ('Turtle')


Turtle_2009 <- import("Turtle/data/Turtle_2009.xls")

Turtle_2009_snapper <- merge(Turtle_2009, snapper, by = c("SPECIES_CD"))
Turtle_2009_snapper_biomass <- summarise_at(Turtle_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2009_snapper_biomass$Year <- ('2009')
Turtle_2009_snapper_biomass$Reef <- ('Turtle')


Turtle_2009_grouper <- merge(Turtle_2009, grouper, by = c("SPECIES_CD"))
Turtle_2009_grouper_biomass <- summarise_at(Turtle_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2009_grouper_biomass$Year <- ('2009')
Turtle_2009_grouper_biomass$Reef <- ('Turtle')


Turtle_2010 <- import("Turtle/data/Turtle_2010.xls")

Turtle_2010_snapper <- merge(Turtle_2010, snapper, by = c("SPECIES_CD"))
Turtle_2010_snapper_biomass <- summarise_at(Turtle_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2010_snapper_biomass$Year <- ('2010')
Turtle_2010_snapper_biomass$Reef <- ('Turtle')


Turtle_2010_grouper <- merge(Turtle_2010, grouper, by = c("SPECIES_CD"))
Turtle_2010_grouper_biomass <- summarise_at(Turtle_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2010_grouper_biomass$Year <- ('2010')
Turtle_2010_grouper_biomass$Reef <- ('Turtle')

Turtle_2011 <- import("Turtle/data/Turtle_2011.xls")

Turtle_2011_snapper <- merge(Turtle_2011, snapper, by = c("SPECIES_CD"))
Turtle_2011_snapper_biomass <- summarise_at(Turtle_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2011_snapper_biomass$Year <- ('2011')
Turtle_2011_snapper_biomass$Reef <- ('Turtle')


Turtle_2011_grouper <- merge(Turtle_2011, grouper, by = c("SPECIES_CD"))
Turtle_2011_grouper_biomass <- summarise_at(Turtle_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2011_grouper_biomass$Year <- ('2011')
Turtle_2011_grouper_biomass$Reef <- ('Turtle')



Turtle_2012 <- import("Turtle/data/Turtle_2012.xls")

Turtle_2012_snapper <- merge(Turtle_2012, snapper, by = c("SPECIES_CD"))
Turtle_2012_snapper_biomass <- summarise_at(Turtle_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2012_snapper_biomass$Year <- ('2012')
Turtle_2012_snapper_biomass$Reef <- ('Turtle')


Turtle_2012_grouper <- merge(Turtle_2012, grouper, by = c("SPECIES_CD"))
Turtle_2012_grouper_biomass <- summarise_at(Turtle_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2012_grouper_biomass$Year <- ('2012')
Turtle_2012_grouper_biomass$Reef <- ('Turtle')


Turtle_2014 <- import("Turtle/data/Turtle_2014.xls")

Turtle_2014_snapper <- merge(Turtle_2014, snapper, by = c("SPECIES_CD"))
Turtle_2014_snapper_biomass <- summarise_at(Turtle_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2014_snapper_biomass$Year <- ('2014')
Turtle_2014_snapper_biomass$Reef <- ('Turtle')


Turtle_2014_grouper <- merge(Turtle_2014, grouper, by = c("SPECIES_CD"))
Turtle_2014_grouper_biomass <- summarise_at(Turtle_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2014_grouper_biomass$Year <- ('2014')
Turtle_2014_grouper_biomass$Reef <- ('Turtle')


Turtle_2016 <- import("Turtle/data/Turtle_2016.xls")

Turtle_2016_snapper <- merge(Turtle_2016, snapper, by = c("SPECIES_CD"))
Turtle_2016_snapper_biomass <- summarise_at(Turtle_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2016_snapper_biomass$Year <- ('2016')
Turtle_2016_snapper_biomass$Reef <- ('Turtle')


Turtle_2016_grouper <- merge(Turtle_2016, grouper, by = c("SPECIES_CD"))
Turtle_2016_grouper_biomass <- summarise_at(Turtle_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2016_grouper_biomass$Year <- ('2016')
Turtle_2016_grouper_biomass$Reef <- ('Turtle')


Turtle_2018 <- import("Turtle/data/Turtle_2018.xls")

Turtle_2018_snapper <- merge(Turtle_2018, snapper, by = c("SPECIES_CD"))
Turtle_2018_snapper_biomass <- summarise_at(Turtle_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2018_snapper_biomass$Year <- ('2018')
Turtle_2018_snapper_biomass$Reef <- ('Turtle')


Turtle_2018_grouper <- merge(Turtle_2018, grouper, by = c("SPECIES_CD"))
Turtle_2018_grouper_biomass <- summarise_at(Turtle_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2018_grouper_biomass$Year <- ('2018')
Turtle_2018_grouper_biomass$Reef <- ('Turtle')



### Combine all years together for snapper_ and grouper_ seperately



Turtle_snapper_1 <- rbind(Turtle_1999_snapper_biomass,Turtle_2000_snapper_biomass)
Turtle_snapper_2 <- rbind(Turtle_snapper_1,Turtle_2001_snapper_biomass)
Turtle_snapper_3 <- rbind(Turtle_snapper_2,Turtle_2002_snapper_biomass)
Turtle_snapper_4 <- rbind(Turtle_snapper_3,Turtle_2003_snapper_biomass)
Turtle_snapper_5 <- rbind(Turtle_snapper_4,Turtle_2004_snapper_biomass)
Turtle_snapper_6 <- rbind(Turtle_snapper_5,Turtle_2005_snapper_biomass)
Turtle_snapper_7 <- rbind(Turtle_snapper_6,Turtle_2006_snapper_biomass)
Turtle_snapper_8 <- rbind(Turtle_snapper_7,Turtle_2007_snapper_biomass)
Turtle_snapper_9 <- rbind(Turtle_snapper_8,Turtle_2008_snapper_biomass)
Turtle_snapper_10 <- rbind(Turtle_snapper_9,Turtle_2009_snapper_biomass)
Turtle_snapper_11<- rbind(Turtle_snapper_10,Turtle_2010_snapper_biomass)
Turtle_snapper_12 <- rbind(Turtle_snapper_11,Turtle_2011_snapper_biomass)
Turtle_snapper_13 <- rbind(Turtle_snapper_12,Turtle_2012_snapper_biomass)
Turtle_snapper_14 <- rbind(Turtle_snapper_13,Turtle_2014_snapper_biomass)
Turtle_snapper_15 <- rbind(Turtle_snapper_14,Turtle_2016_snapper_biomass)
Turtle_snapper_biomass_data_combined <- rbind(Turtle_snapper_15,Turtle_2018_snapper_biomass)



Turtle_grouper_1 <- rbind(Turtle_1999_grouper_biomass,Turtle_2000_grouper_biomass)
Turtle_grouper_2 <- rbind(Turtle_grouper_1,Turtle_2001_grouper_biomass)
Turtle_grouper_3 <- rbind(Turtle_grouper_2,Turtle_2002_grouper_biomass)
Turtle_grouper_4 <- rbind(Turtle_grouper_3,Turtle_2003_grouper_biomass)
Turtle_grouper_5 <- rbind(Turtle_grouper_4,Turtle_2004_grouper_biomass)
Turtle_grouper_6 <- rbind(Turtle_grouper_5,Turtle_2005_grouper_biomass)
Turtle_grouper_7 <- rbind(Turtle_grouper_6,Turtle_2006_grouper_biomass)
Turtle_grouper_8 <- rbind(Turtle_grouper_7,Turtle_2007_grouper_biomass)
Turtle_grouper_9 <- rbind(Turtle_grouper_8,Turtle_2008_grouper_biomass)
Turtle_grouper_10 <- rbind(Turtle_grouper_9,Turtle_2009_grouper_biomass)
Turtle_grouper_11<- rbind(Turtle_grouper_10,Turtle_2010_grouper_biomass)
Turtle_grouper_12 <- rbind(Turtle_grouper_11,Turtle_2011_grouper_biomass)
Turtle_grouper_13 <- rbind(Turtle_grouper_12,Turtle_2012_grouper_biomass)
Turtle_grouper_14 <- rbind(Turtle_grouper_13,Turtle_2014_grouper_biomass)
Turtle_grouper_15 <- rbind(Turtle_grouper_14,Turtle_2016_grouper_biomass)
Turtle_grouper_biomass_data_combined <- rbind(Turtle_grouper_15,Turtle_2018_grouper_biomass)



export(Turtle_snapper_biomass_data_combined, "Turtle/data/Turtle_snapper__biomass.csv")
export(Turtle_grouper_biomass_data_combined, "Turtle/data/Turtle_grouper__biomass.csv")


#Two Patches


Two_Patches_1999 <- import("Two_Patches/data/Two_Patches_1999.xls")


Two_Patches_1999_snapper <- merge(Two_Patches_1999, snapper, by = c("SPECIES_CD"))
Two_Patches_1999_snapper_biomass <- summarise_at(Two_Patches_1999_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_1999_snapper_biomass$Year <- ('1999')
Two_Patches_1999_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_1999_grouper <- merge(Two_Patches_1999, grouper, by = c("SPECIES_CD"))
Two_Patches_1999_grouper_biomass <- summarise_at(Two_Patches_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_1999_grouper_biomass$Year <- ('1999')
Two_Patches_1999_grouper_biomass$Reef <- ('Two Patches')


Two_Patches_2000 <- import("Two_Patches/data/Two_Patches_2000.xls")

Two_Patches_2000_snapper <- merge(Two_Patches_2000, snapper, by = c("SPECIES_CD"))
Two_Patches_2000_snapper_biomass <- summarise_at(Two_Patches_2000_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2000_snapper_biomass$Year <- ('2000')
Two_Patches_2000_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_2000_grouper <- merge(Two_Patches_2000, grouper, by = c("SPECIES_CD"))
Two_Patches_2000_grouper_biomass <- summarise_at(Two_Patches_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2000_grouper_biomass$Year <- ('2000')
Two_Patches_2000_grouper_biomass$Reef <- ('Two Patches')

Two_Patches_2001 <- import("Two_Patches/data/Two_Patches_2001.xls")

Two_Patches_2001_snapper <- merge(Two_Patches_2001, snapper, by = c("SPECIES_CD"))
Two_Patches_2001_snapper_biomass <- summarise_at(Two_Patches_2001_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2001_snapper_biomass$Year <- ('2001')
Two_Patches_2001_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_2001_grouper <- merge(Two_Patches_2001, grouper, by = c("SPECIES_CD"))
Two_Patches_2001_grouper_biomass <- summarise_at(Two_Patches_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2001_grouper_biomass$Year <- ('2001')
Two_Patches_2001_grouper_biomass$Reef <- ('Two Patches')


Two_Patches_2002 <- import("Two_Patches/data/Two_Patches_2002.xls")

Two_Patches_2002_snapper <- merge(Two_Patches_2002, snapper, by = c("SPECIES_CD"))
Two_Patches_2002_snapper_biomass <- summarise_at(Two_Patches_2002_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2002_snapper_biomass$Year <- ('2002')
Two_Patches_2002_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_2002_grouper <- merge(Two_Patches_2002, grouper, by = c("SPECIES_CD"))
Two_Patches_2002_grouper_biomass <- summarise_at(Two_Patches_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2002_grouper_biomass$Year <- ('2002')
Two_Patches_2002_grouper_biomass$Reef <- ('Two Patches')


Two_Patches_2003 <- import("Two_Patches/data/Two_Patches_2003.xls")

Two_Patches_2003_snapper <- merge(Two_Patches_2003, snapper, by = c("SPECIES_CD"))
Two_Patches_2003_snapper_biomass <- summarise_at(Two_Patches_2003_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2003_snapper_biomass$Year <- ('2003')
Two_Patches_2003_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_2003_grouper <- merge(Two_Patches_2003, grouper, by = c("SPECIES_CD"))
Two_Patches_2003_grouper_biomass <- summarise_at(Two_Patches_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2003_grouper_biomass$Year <- ('2003')
Two_Patches_2003_grouper_biomass$Reef <- ('Two Patches')


Two_Patches_2004 <- import("Two_Patches/data/Two_Patches_2004.xls")

Two_Patches_2004_snapper <- merge(Two_Patches_2004, snapper, by = c("SPECIES_CD"))
Two_Patches_2004_snapper_biomass <- summarise_at(Two_Patches_2004_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2004_snapper_biomass$Year <- ('2004')
Two_Patches_2004_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_2004_grouper <- merge(Two_Patches_2004, grouper, by = c("SPECIES_CD"))
Two_Patches_2004_grouper_biomass <- summarise_at(Two_Patches_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2004_grouper_biomass$Year <- ('2004')
Two_Patches_2004_grouper_biomass$Reef <- ('Two Patches')

Two_Patches_2005 <- import("Two_Patches/data/Two_Patches_2005.xls")

Two_Patches_2005_snapper <- merge(Two_Patches_2005, snapper, by = c("SPECIES_CD"))
Two_Patches_2005_snapper_biomass <- summarise_at(Two_Patches_2005_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2005_snapper_biomass$Year <- ('2005')
Two_Patches_2005_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_2005_grouper <- merge(Two_Patches_2005, grouper, by = c("SPECIES_CD"))
Two_Patches_2005_grouper_biomass <- summarise_at(Two_Patches_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2005_grouper_biomass$Year <- ('2005')
Two_Patches_2005_grouper_biomass$Reef <- ('Two Patches')


Two_Patches_2006 <- import("Two_Patches/data/Two_Patches_2006.xls")

Two_Patches_2006_snapper <- merge(Two_Patches_2006, snapper, by = c("SPECIES_CD"))
Two_Patches_2006_snapper_biomass <- summarise_at(Two_Patches_2006_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2006_snapper_biomass$Year <- ('2006')
Two_Patches_2006_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_2006_grouper <- merge(Two_Patches_2006, grouper, by = c("SPECIES_CD"))
Two_Patches_2006_grouper_biomass <- summarise_at(Two_Patches_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2006_grouper_biomass$Year <- ('2006')
Two_Patches_2006_grouper_biomass$Reef <- ('Two Patches')

Two_Patches_2007 <- import("Two_Patches/data/Two_Patches_2007.xls")

Two_Patches_2007_snapper <- merge(Two_Patches_2007, snapper, by = c("SPECIES_CD"))
Two_Patches_2007_snapper_biomass <- summarise_at(Two_Patches_2007_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2007_snapper_biomass$Year <- ('2007')
Two_Patches_2007_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_2007_grouper <- merge(Two_Patches_2007, grouper, by = c("SPECIES_CD"))
Two_Patches_2007_grouper_biomass <- summarise_at(Two_Patches_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2007_grouper_biomass$Year <- ('2007')
Two_Patches_2007_grouper_biomass$Reef <- ('Two Patches')


Two_Patches_2008 <- import("Two_Patches/data/Two_Patches_2008.xls")

Two_Patches_2008_snapper <- merge(Two_Patches_2008, snapper, by = c("SPECIES_CD"))
Two_Patches_2008_snapper_biomass <- summarise_at(Two_Patches_2008_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2008_snapper_biomass$Year <- ('2008')
Two_Patches_2008_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_2008_grouper <- merge(Two_Patches_2008, grouper, by = c("SPECIES_CD"))
Two_Patches_2008_grouper_biomass <- summarise_at(Two_Patches_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2008_grouper_biomass$Year <- ('2008')
Two_Patches_2008_grouper_biomass$Reef <- ('Two Patches')


Two_Patches_2009 <- import("Two_Patches/data/Two_Patches_2009.xls")

Two_Patches_2009_snapper <- merge(Two_Patches_2009, snapper, by = c("SPECIES_CD"))
Two_Patches_2009_snapper_biomass <- summarise_at(Two_Patches_2009_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2009_snapper_biomass$Year <- ('2009')
Two_Patches_2009_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_2009_grouper <- merge(Two_Patches_2009, grouper, by = c("SPECIES_CD"))
Two_Patches_2009_grouper_biomass <- summarise_at(Two_Patches_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2009_grouper_biomass$Year <- ('2009')
Two_Patches_2009_grouper_biomass$Reef <- ('Two Patches')


Two_Patches_2010 <- import("Two_Patches/data/Two_Patches_2010.xls")

Two_Patches_2010_snapper <- merge(Two_Patches_2010, snapper, by = c("SPECIES_CD"))
Two_Patches_2010_snapper_biomass <- summarise_at(Two_Patches_2010_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2010_snapper_biomass$Year <- ('2010')
Two_Patches_2010_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_2010_grouper <- merge(Two_Patches_2010, grouper, by = c("SPECIES_CD"))
Two_Patches_2010_grouper_biomass <- summarise_at(Two_Patches_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2010_grouper_biomass$Year <- ('2010')
Two_Patches_2010_grouper_biomass$Reef <- ('Two Patches')

Two_Patches_2011 <- import("Two_Patches/data/Two_Patches_2011.xls")

Two_Patches_2011_snapper <- merge(Two_Patches_2011, snapper, by = c("SPECIES_CD"))
Two_Patches_2011_snapper_biomass <- summarise_at(Two_Patches_2011_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2011_snapper_biomass$Year <- ('2011')
Two_Patches_2011_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_2011_grouper <- merge(Two_Patches_2011, grouper, by = c("SPECIES_CD"))
Two_Patches_2011_grouper_biomass <- summarise_at(Two_Patches_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2011_grouper_biomass$Year <- ('2011')
Two_Patches_2011_grouper_biomass$Reef <- ('Two Patches')



Two_Patches_2012 <- import("Two_Patches/data/Two_Patches_2012.xls")

Two_Patches_2012_snapper <- merge(Two_Patches_2012, snapper, by = c("SPECIES_CD"))
Two_Patches_2012_snapper_biomass <- summarise_at(Two_Patches_2012_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2012_snapper_biomass$Year <- ('2012')
Two_Patches_2012_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_2012_grouper <- merge(Two_Patches_2012, grouper, by = c("SPECIES_CD"))
Two_Patches_2012_grouper_biomass <- summarise_at(Two_Patches_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2012_grouper_biomass$Year <- ('2012')
Two_Patches_2012_grouper_biomass$Reef <- ('Two Patches')


Two_Patches_2014 <- import("Two_Patches/data/Two_Patches_2014.xls")

Two_Patches_2014_snapper <- merge(Two_Patches_2014, snapper, by = c("SPECIES_CD"))
Two_Patches_2014_snapper_biomass <- summarise_at(Two_Patches_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2014_snapper_biomass$Year <- ('2014')
Two_Patches_2014_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_2014_grouper <- merge(Two_Patches_2014, grouper, by = c("SPECIES_CD"))
Two_Patches_2014_grouper_biomass <- summarise_at(Two_Patches_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2014_grouper_biomass$Year <- ('2014')
Two_Patches_2014_grouper_biomass$Reef <- ('Two Patches')


Two_Patches_2016 <- import("Two_Patches/data/Two_Patches_2016.xls")

Two_Patches_2016_snapper <- merge(Two_Patches_2016, snapper, by = c("SPECIES_CD"))
Two_Patches_2016_snapper_biomass <- summarise_at(Two_Patches_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2016_snapper_biomass$Year <- ('2016')
Two_Patches_2016_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_2016_grouper <- merge(Two_Patches_2016, grouper, by = c("SPECIES_CD"))
Two_Patches_2016_grouper_biomass <- summarise_at(Two_Patches_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2016_grouper_biomass$Year <- ('2016')
Two_Patches_2016_grouper_biomass$Reef <- ('Two Patches')


Two_Patches_2018 <- import("Two_Patches/data/Two_Patches_2018.xls")

Two_Patches_2018_snapper <- merge(Two_Patches_2018, snapper, by = c("SPECIES_CD"))
Two_Patches_2018_snapper_biomass <- summarise_at(Two_Patches_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2018_snapper_biomass$Year <- ('2018')
Two_Patches_2018_snapper_biomass$Reef <- ('Two Patches')


Two_Patches_2018_grouper <- merge(Two_Patches_2018, grouper, by = c("SPECIES_CD"))
Two_Patches_2018_grouper_biomass <- summarise_at(Two_Patches_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2018_grouper_biomass$Year <- ('2018')
Two_Patches_2018_grouper_biomass$Reef <- ('Two Patches')



### Combine all years together for snapper_ and grouper_ seperately



Two_Patches_snapper_1 <- rbind(Two_Patches_1999_snapper_biomass,Two_Patches_2000_snapper_biomass)
Two_Patches_snapper_2 <- rbind(Two_Patches_snapper_1,Two_Patches_2001_snapper_biomass)
Two_Patches_snapper_3 <- rbind(Two_Patches_snapper_2,Two_Patches_2002_snapper_biomass)
Two_Patches_snapper_4 <- rbind(Two_Patches_snapper_3,Two_Patches_2003_snapper_biomass)
Two_Patches_snapper_5 <- rbind(Two_Patches_snapper_4,Two_Patches_2004_snapper_biomass)
Two_Patches_snapper_6 <- rbind(Two_Patches_snapper_5,Two_Patches_2005_snapper_biomass)
Two_Patches_snapper_7 <- rbind(Two_Patches_snapper_6,Two_Patches_2006_snapper_biomass)
Two_Patches_snapper_8 <- rbind(Two_Patches_snapper_7,Two_Patches_2007_snapper_biomass)
Two_Patches_snapper_9 <- rbind(Two_Patches_snapper_8,Two_Patches_2008_snapper_biomass)
Two_Patches_snapper_10 <- rbind(Two_Patches_snapper_9,Two_Patches_2009_snapper_biomass)
Two_Patches_snapper_11<- rbind(Two_Patches_snapper_10,Two_Patches_2010_snapper_biomass)
Two_Patches_snapper_12 <- rbind(Two_Patches_snapper_11,Two_Patches_2011_snapper_biomass)
Two_Patches_snapper_13 <- rbind(Two_Patches_snapper_12,Two_Patches_2012_snapper_biomass)
Two_Patches_snapper_14 <- rbind(Two_Patches_snapper_13,Two_Patches_2014_snapper_biomass)
Two_Patches_snapper_15 <- rbind(Two_Patches_snapper_14,Two_Patches_2016_snapper_biomass)
Two_Patches_snapper_biomass_data_combined <- rbind(Two_Patches_snapper_15,Two_Patches_2018_snapper_biomass)



Two_Patches_grouper_1 <- rbind(Two_Patches_1999_grouper_biomass,Two_Patches_2000_grouper_biomass)
Two_Patches_grouper_2 <- rbind(Two_Patches_grouper_1,Two_Patches_2001_grouper_biomass)
Two_Patches_grouper_3 <- rbind(Two_Patches_grouper_2,Two_Patches_2002_grouper_biomass)
Two_Patches_grouper_4 <- rbind(Two_Patches_grouper_3,Two_Patches_2003_grouper_biomass)
Two_Patches_grouper_5 <- rbind(Two_Patches_grouper_4,Two_Patches_2004_grouper_biomass)
Two_Patches_grouper_6 <- rbind(Two_Patches_grouper_5,Two_Patches_2005_grouper_biomass)
Two_Patches_grouper_7 <- rbind(Two_Patches_grouper_6,Two_Patches_2006_grouper_biomass)
Two_Patches_grouper_8 <- rbind(Two_Patches_grouper_7,Two_Patches_2007_grouper_biomass)
Two_Patches_grouper_9 <- rbind(Two_Patches_grouper_8,Two_Patches_2008_grouper_biomass)
Two_Patches_grouper_10 <- rbind(Two_Patches_grouper_9,Two_Patches_2009_grouper_biomass)
Two_Patches_grouper_11<- rbind(Two_Patches_grouper_10,Two_Patches_2010_grouper_biomass)
Two_Patches_grouper_12 <- rbind(Two_Patches_grouper_11,Two_Patches_2011_grouper_biomass)
Two_Patches_grouper_13 <- rbind(Two_Patches_grouper_12,Two_Patches_2012_grouper_biomass)
Two_Patches_grouper_14 <- rbind(Two_Patches_grouper_13,Two_Patches_2014_grouper_biomass)
Two_Patches_grouper_15 <- rbind(Two_Patches_grouper_14,Two_Patches_2016_grouper_biomass)
Two_Patches_grouper_biomass_data_combined <- rbind(Two_Patches_grouper_15,Two_Patches_2018_grouper_biomass)



export(Two_Patches_snapper_biomass_data_combined, "Two_Patches/data/Two_Patches_snapper__biomass.csv")
export(Two_Patches_grouper_biomass_data_combined, "Two_Patches/data/Two_Patches_grouper__biomass.csv")


## Combine all UK

UK_reef_snapper_biomass_combined <- rbind(Admiral_snapper_biomass_data_combined, Burr_Fish_snapper_biomass_data_combined, Carysfort_Deep_snapper_biomass_data_combined, Carysfort_Shallow_snapper_biomass_data_combined, Conch_Deep_snapper_biomass_data_combined, Conch_Shallow_snapper_biomass_data_combined, Grecian_Rocks_snapper_biomass_data_combined, Molasses_Deep_snapper_biomass_data_combined, Molasses_Shallow_snapper_biomass_data_combined, Porter_Patch_snapper_biomass_data_combined, Turtle_snapper_biomass_data_combined, Two_Patches_snapper_biomass_data_combined)
UK_reef_snapper_biomass_data <- arrange(UK_reef_snapper_biomass_combined, Year,Reef, sum, max, min, mean, sd )
UK_reef_snapper_biomass_data$REGION <- ("UK")
export(UK_reef_snapper_biomass_data, "UK_snapper__biomass_data.csv")



UK_reef_grouper_biomass_combined <- rbind(Admiral_grouper_biomass_data_combined, Burr_Fish_grouper_biomass_data_combined, Carysfort_Deep_grouper_biomass_data_combined, Carysfort_Shallow_grouper_biomass_data_combined, Conch_Deep_grouper_biomass_data_combined, Conch_Shallow_grouper_biomass_data_combined, Grecian_Rocks_grouper_biomass_data_combined, Molasses_Deep_grouper_biomass_data_combined, Molasses_Shallow_grouper_biomass_data_combined, Porter_Patch_grouper_biomass_data_combined, Turtle_grouper_biomass_data_combined, Two_Patches_grouper_biomass_data_combined)
UK_reef_grouper_biomass_data <- arrange(UK_reef_grouper_biomass_combined, Year,Reef, sum, max, min, mean, sd )
UK_reef_grouper_biomass_data$REGION <- ("UK")
export(UK_reef_grouper_biomass_data, "UK_grouper__biomass_data.csv")


















### SE Florida 


setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/SEF")



#Broward County 1

Broward_County_1_2013 <- import("Broward_County_1/data/Broward_County_1_2013.xls")

Broward_County_1_2013_snapper <- merge(Broward_County_1_2013, snapper, by = c("SPECIES_CD"))
Broward_County_1_2013_snapper_biomass <- summarise_at(Broward_County_1_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2013_snapper_biomass$Year <- ('2013')
Broward_County_1_2013_snapper_biomass$Reef <- ('Broward County 2')


Broward_County_1_2013_grouper <- merge(Broward_County_1_2013, grouper, by = c("SPECIES_CD"))
Broward_County_1_2013_grouper_biomass <- summarise_at(Broward_County_1_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2013_grouper_biomass$Year <- ('2013')
Broward_County_1_2013_grouper_biomass$Reef <- ('Broward County 2')


Broward_County_1_2014 <- import("Broward_County_1/data/Broward_County_1_2014.xls")

Broward_County_1_2014_snapper <- merge(Broward_County_1_2014, snapper, by = c("SPECIES_CD"))
Broward_County_1_2014_snapper_biomass <- summarise_at(Broward_County_1_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2014_snapper_biomass$Year <- ('2014')
Broward_County_1_2014_snapper_biomass$Reef <- ('Broward County 2')


Broward_County_1_2014_grouper <- merge(Broward_County_1_2014, grouper, by = c("SPECIES_CD"))
Broward_County_1_2014_grouper_biomass <- summarise_at(Broward_County_1_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2014_grouper_biomass$Year <- ('2014')
Broward_County_1_2014_grouper_biomass$Reef <- ('Broward County 2')


Broward_County_1_2015 <- import("Broward_County_1/data/Broward_County_1_2015.xls")

Broward_County_1_2015_snapper <- merge(Broward_County_1_2015, snapper, by = c("SPECIES_CD"))
Broward_County_1_2015_snapper_biomass <- summarise_at(Broward_County_1_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2015_snapper_biomass$Year <- ('2015')
Broward_County_1_2015_snapper_biomass$Reef <- ('Broward County 2')


Broward_County_1_2015_grouper <- merge(Broward_County_1_2015, grouper, by = c("SPECIES_CD"))
Broward_County_1_2015_grouper_biomass <- summarise_at(Broward_County_1_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2015_grouper_biomass$Year <- ('2015')
Broward_County_1_2015_grouper_biomass$Reef <- ('Broward County 2')

Broward_County_1_2016 <- import("Broward_County_1/data/Broward_County_1_2016.xls")

Broward_County_1_2016_snapper <- merge(Broward_County_1_2016, snapper, by = c("SPECIES_CD"))
Broward_County_1_2016_snapper_biomass <- summarise_at(Broward_County_1_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2016_snapper_biomass$Year <- ('2016')
Broward_County_1_2016_snapper_biomass$Reef <- ('Broward County 2')


Broward_County_1_2016_grouper <- merge(Broward_County_1_2016, grouper, by = c("SPECIES_CD"))
Broward_County_1_2016_grouper_biomass <- summarise_at(Broward_County_1_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2016_grouper_biomass$Year <- ('2016')
Broward_County_1_2016_grouper_biomass$Reef <- ('Broward County 2')


Broward_County_1_2018 <- import("Broward_County_1/data/Broward_County_1_2018.xls")

Broward_County_1_2018_snapper <- merge(Broward_County_1_2018, snapper, by = c("SPECIES_CD"))
Broward_County_1_2018_snapper_biomass <- summarise_at(Broward_County_1_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2018_snapper_biomass$Year <- ('2018')
Broward_County_1_2018_snapper_biomass$Reef <- ('Broward County 2')


Broward_County_1_2018_grouper <- merge(Broward_County_1_2018, grouper, by = c("SPECIES_CD"))
Broward_County_1_2018_grouper_biomass <- summarise_at(Broward_County_1_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2018_grouper_biomass$Year <- ('2018')
Broward_County_1_2018_grouper_biomass$Reef <- ('Broward County 2')



### Combine all years together for snapper_ and grouper_ seperately



# Broward_County_1_snapper_1 <- rbind(Broward_County_1_1999_snapper_biomass,Broward_County_1_2000_snapper_biomass)
# Broward_County_1_snapper_2 <- rbind(Broward_County_1_snapper_1,Broward_County_1_2001_snapper_biomass)
# Broward_County_1_snapper_3 <- rbind(Broward_County_1_snapper_2,Broward_County_1_2002_snapper_biomass)
# Broward_County_1_snapper_4 <- rbind(Broward_County_1_snapper_3,Broward_County_1_2003_snapper_biomass)
# Broward_County_1_snapper_5 <- rbind(Broward_County_1_snapper_4,Broward_County_1_2004_snapper_biomass)
# Broward_County_1_snapper_6 <- rbind(Broward_County_1_snapper_5,Broward_County_1_2005_snapper_biomass)
# Broward_County_1_snapper_7 <- rbind(Broward_County_1_snapper_6,Broward_County_1_2006_snapper_biomass)
# Broward_County_1_snapper_8 <- rbind(Broward_County_1_snapper_7,Broward_County_1_2007_snapper_biomass)
# Broward_County_1_snapper_9 <- rbind(Broward_County_1_snapper_8,Broward_County_1_2008_snapper_biomass)
# Broward_County_1_snapper_10 <- rbind(Broward_County_1_snapper_9,Broward_County_1_2009_snapper_biomass)
# Broward_County_1_snapper_11<- rbind(Broward_County_1_snapper_10,Broward_County_1_2010_snapper_biomass)
# Broward_County_1_snapper_12 <- rbind(Broward_County_1_snapper_11,Broward_County_1_2011_snapper_biomass)
Broward_County_1_snapper_13 <- rbind(Broward_County_1_2013_snapper_biomass,Broward_County_1_2014_snapper_biomass)
Broward_County_1_snapper_14 <- rbind(Broward_County_1_snapper_13,Broward_County_1_2015_snapper_biomass)
Broward_County_1_snapper_15 <- rbind(Broward_County_1_snapper_14,Broward_County_1_2016_snapper_biomass)
Broward_County_1_snapper_biomass_data_combined <- rbind(Broward_County_1_snapper_15,Broward_County_1_2018_snapper_biomass)



# Broward_County_1_grouper_1 <- rbind(Broward_County_1_1999_grouper_biomass,Broward_County_1_2000_grouper_biomass)
# Broward_County_1_grouper_2 <- rbind(Broward_County_1_grouper_1,Broward_County_1_2001_grouper_biomass)
# Broward_County_1_grouper_3 <- rbind(Broward_County_1_grouper_2,Broward_County_1_2002_grouper_biomass)
# Broward_County_1_grouper_4 <- rbind(Broward_County_1_grouper_3,Broward_County_1_2003_grouper_biomass)
# Broward_County_1_grouper_5 <- rbind(Broward_County_1_grouper_4,Broward_County_1_2004_grouper_biomass)
# Broward_County_1_grouper_6 <- rbind(Broward_County_1_grouper_5,Broward_County_1_2005_grouper_biomass)
# Broward_County_1_grouper_7 <- rbind(Broward_County_1_grouper_6,Broward_County_1_2006_grouper_biomass)
# Broward_County_1_grouper_8 <- rbind(Broward_County_1_grouper_7,Broward_County_1_2007_grouper_biomass)
# Broward_County_1_grouper_9 <- rbind(Broward_County_1_grouper_8,Broward_County_1_2008_grouper_biomass)
# Broward_County_1_grouper_10 <- rbind(Broward_County_1_grouper_9,Broward_County_1_2009_grouper_biomass)
# Broward_County_1_grouper_11<- rbind(Broward_County_1_grouper_10,Broward_County_1_2010_grouper_biomass)
# Broward_County_1_grouper_12 <- rbind(Broward_County_1_grouper_11,Broward_County_1_2011_grouper_biomass)
Broward_County_1_grouper_13 <- rbind(Broward_County_1_2013_grouper_biomass,Broward_County_1_2014_grouper_biomass)
Broward_County_1_grouper_14 <- rbind(Broward_County_1_grouper_13,Broward_County_1_2015_grouper_biomass)
Broward_County_1_grouper_15 <- rbind(Broward_County_1_grouper_14,Broward_County_1_2016_grouper_biomass)
Broward_County_1_grouper_biomass_data_combined <- rbind(Broward_County_1_grouper_15,Broward_County_1_2018_grouper_biomass)



export(Broward_County_1_snapper_biomass_data_combined, "Broward_County_1/data/Broward_County_1_snapper__biomass.csv")
export(Broward_County_1_grouper_biomass_data_combined, "Broward_County_1/data/Broward_County_1_grouper__biomass.csv")





#Broward County 2

Broward_County_2_2013 <- import("Broward_County_2/data/Broward_County_2_2013.xls")

Broward_County_2_2013_snapper <- merge(Broward_County_2_2013, snapper, by = c("SPECIES_CD"))
Broward_County_2_2013_snapper_biomass <- summarise_at(Broward_County_2_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2013_snapper_biomass$Year <- ('2013')
Broward_County_2_2013_snapper_biomass$Reef <- ('Broward County 2')


Broward_County_2_2013_grouper <- merge(Broward_County_2_2013, grouper, by = c("SPECIES_CD"))
Broward_County_2_2013_grouper_biomass <- summarise_at(Broward_County_2_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2013_grouper_biomass$Year <- ('2013')
Broward_County_2_2013_grouper_biomass$Reef <- ('Broward County 2')


Broward_County_2_2014 <- import("Broward_County_2/data/Broward_County_2_2014.xls")

Broward_County_2_2014_snapper <- merge(Broward_County_2_2014, snapper, by = c("SPECIES_CD"))
Broward_County_2_2014_snapper_biomass <- summarise_at(Broward_County_2_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2014_snapper_biomass$Year <- ('2014')
Broward_County_2_2014_snapper_biomass$Reef <- ('Broward County 2')


Broward_County_2_2014_grouper <- merge(Broward_County_2_2014, grouper, by = c("SPECIES_CD"))
Broward_County_2_2014_grouper_biomass <- summarise_at(Broward_County_2_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2014_grouper_biomass$Year <- ('2014')
Broward_County_2_2014_grouper_biomass$Reef <- ('Broward County 2')


Broward_County_2_2015 <- import("Broward_County_2/data/Broward_County_2_2015.xls")

Broward_County_2_2015_snapper <- merge(Broward_County_2_2015, snapper, by = c("SPECIES_CD"))
Broward_County_2_2015_snapper_biomass <- summarise_at(Broward_County_2_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2015_snapper_biomass$Year <- ('2015')
Broward_County_2_2015_snapper_biomass$Reef <- ('Broward County 2')


Broward_County_2_2015_grouper <- merge(Broward_County_2_2015, grouper, by = c("SPECIES_CD"))
Broward_County_2_2015_grouper_biomass <- summarise_at(Broward_County_2_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2015_grouper_biomass$Year <- ('2015')
Broward_County_2_2015_grouper_biomass$Reef <- ('Broward County 2')

Broward_County_2_2016 <- import("Broward_County_2/data/Broward_County_2_2016.xls")

Broward_County_2_2016_snapper <- merge(Broward_County_2_2016, snapper, by = c("SPECIES_CD"))
Broward_County_2_2016_snapper_biomass <- summarise_at(Broward_County_2_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2016_snapper_biomass$Year <- ('2016')
Broward_County_2_2016_snapper_biomass$Reef <- ('Broward County 2')


Broward_County_2_2016_grouper <- merge(Broward_County_2_2016, grouper, by = c("SPECIES_CD"))
Broward_County_2_2016_grouper_biomass <- summarise_at(Broward_County_2_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2016_grouper_biomass$Year <- ('2016')
Broward_County_2_2016_grouper_biomass$Reef <- ('Broward County 2')


Broward_County_2_2018 <- import("Broward_County_2/data/Broward_County_2_2018.xls")

Broward_County_2_2018_snapper <- merge(Broward_County_2_2018, snapper, by = c("SPECIES_CD"))
Broward_County_2_2018_snapper_biomass <- summarise_at(Broward_County_2_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2018_snapper_biomass$Year <- ('2018')
Broward_County_2_2018_snapper_biomass$Reef <- ('Broward County 2')


Broward_County_2_2018_grouper <- merge(Broward_County_2_2018, grouper, by = c("SPECIES_CD"))
Broward_County_2_2018_grouper_biomass <- summarise_at(Broward_County_2_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2018_grouper_biomass$Year <- ('2018')
Broward_County_2_2018_grouper_biomass$Reef <- ('Broward County 2')



### Combine all years together for snapper_ and grouper_ seperately



# Broward_County_2_snapper_1 <- rbind(Broward_County_2_1999_snapper_biomass,Broward_County_2_2000_snapper_biomass)
# Broward_County_2_snapper_2 <- rbind(Broward_County_2_snapper_1,Broward_County_2_2001_snapper_biomass)
# Broward_County_2_snapper_3 <- rbind(Broward_County_2_snapper_2,Broward_County_2_2002_snapper_biomass)
# Broward_County_2_snapper_4 <- rbind(Broward_County_2_snapper_3,Broward_County_2_2003_snapper_biomass)
# Broward_County_2_snapper_5 <- rbind(Broward_County_2_snapper_4,Broward_County_2_2004_snapper_biomass)
# Broward_County_2_snapper_6 <- rbind(Broward_County_2_snapper_5,Broward_County_2_2005_snapper_biomass)
# Broward_County_2_snapper_7 <- rbind(Broward_County_2_snapper_6,Broward_County_2_2006_snapper_biomass)
# Broward_County_2_snapper_8 <- rbind(Broward_County_2_snapper_7,Broward_County_2_2007_snapper_biomass)
# Broward_County_2_snapper_9 <- rbind(Broward_County_2_snapper_8,Broward_County_2_2008_snapper_biomass)
# Broward_County_2_snapper_10 <- rbind(Broward_County_2_snapper_9,Broward_County_2_2009_snapper_biomass)
# Broward_County_2_snapper_11<- rbind(Broward_County_2_snapper_10,Broward_County_2_2010_snapper_biomass)
# Broward_County_2_snapper_12 <- rbind(Broward_County_2_snapper_11,Broward_County_2_2011_snapper_biomass)
Broward_County_2_snapper_13 <- rbind(Broward_County_2_2013_snapper_biomass,Broward_County_2_2014_snapper_biomass)
Broward_County_2_snapper_14 <- rbind(Broward_County_2_snapper_13,Broward_County_2_2015_snapper_biomass)
Broward_County_2_snapper_15 <- rbind(Broward_County_2_snapper_14,Broward_County_2_2016_snapper_biomass)
Broward_County_2_snapper_biomass_data_combined <- rbind(Broward_County_2_snapper_15,Broward_County_2_2018_snapper_biomass)



# Broward_County_2_grouper_1 <- rbind(Broward_County_2_1999_grouper_biomass,Broward_County_2_2000_grouper_biomass)
# Broward_County_2_grouper_2 <- rbind(Broward_County_2_grouper_1,Broward_County_2_2001_grouper_biomass)
# Broward_County_2_grouper_3 <- rbind(Broward_County_2_grouper_2,Broward_County_2_2002_grouper_biomass)
# Broward_County_2_grouper_4 <- rbind(Broward_County_2_grouper_3,Broward_County_2_2003_grouper_biomass)
# Broward_County_2_grouper_5 <- rbind(Broward_County_2_grouper_4,Broward_County_2_2004_grouper_biomass)
# Broward_County_2_grouper_6 <- rbind(Broward_County_2_grouper_5,Broward_County_2_2005_grouper_biomass)
# Broward_County_2_grouper_7 <- rbind(Broward_County_2_grouper_6,Broward_County_2_2006_grouper_biomass)
# Broward_County_2_grouper_8 <- rbind(Broward_County_2_grouper_7,Broward_County_2_2007_grouper_biomass)
# Broward_County_2_grouper_9 <- rbind(Broward_County_2_grouper_8,Broward_County_2_2008_grouper_biomass)
# Broward_County_2_grouper_10 <- rbind(Broward_County_2_grouper_9,Broward_County_2_2009_grouper_biomass)
# Broward_County_2_grouper_11<- rbind(Broward_County_2_grouper_10,Broward_County_2_2010_grouper_biomass)
# Broward_County_2_grouper_12 <- rbind(Broward_County_2_grouper_11,Broward_County_2_2011_grouper_biomass)
Broward_County_2_grouper_13 <- rbind(Broward_County_2_2013_grouper_biomass,Broward_County_2_2014_grouper_biomass)
Broward_County_2_grouper_14 <- rbind(Broward_County_2_grouper_13,Broward_County_2_2015_grouper_biomass)
Broward_County_2_grouper_15 <- rbind(Broward_County_2_grouper_14,Broward_County_2_2016_grouper_biomass)
Broward_County_2_grouper_biomass_data_combined <- rbind(Broward_County_2_grouper_15,Broward_County_2_2018_grouper_biomass)



export(Broward_County_2_snapper_biomass_data_combined, "Broward_County_2/data/Broward_County_2_snapper__biomass.csv")
export(Broward_County_2_grouper_biomass_data_combined, "Broward_County_2/data/Broward_County_2_grouper__biomass.csv")




#Broward County 3

Broward_County_3_2013 <- import("Broward_County_3/data/Broward_County_3_2013.xls")

Broward_County_3_2013_snapper <- merge(Broward_County_3_2013, snapper, by = c("SPECIES_CD"))
Broward_County_3_2013_snapper_biomass <- summarise_at(Broward_County_3_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2013_snapper_biomass$Year <- ('2013')
Broward_County_3_2013_snapper_biomass$Reef <- ('Broward County 3')


Broward_County_3_2013_grouper <- merge(Broward_County_3_2013, grouper, by = c("SPECIES_CD"))
Broward_County_3_2013_grouper_biomass <- summarise_at(Broward_County_3_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2013_grouper_biomass$Year <- ('2013')
Broward_County_3_2013_grouper_biomass$Reef <- ('Broward County 3')


Broward_County_3_2014 <- import("Broward_County_3/data/Broward_County_3_2014.xls")

Broward_County_3_2014_snapper <- merge(Broward_County_3_2014, snapper, by = c("SPECIES_CD"))
Broward_County_3_2014_snapper_biomass <- summarise_at(Broward_County_3_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2014_snapper_biomass$Year <- ('2014')
Broward_County_3_2014_snapper_biomass$Reef <- ('Broward County 3')


Broward_County_3_2014_grouper <- merge(Broward_County_3_2014, grouper, by = c("SPECIES_CD"))
Broward_County_3_2014_grouper_biomass <- summarise_at(Broward_County_3_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2014_grouper_biomass$Year <- ('2014')
Broward_County_3_2014_grouper_biomass$Reef <- ('Broward County 3')


Broward_County_3_2015 <- import("Broward_County_3/data/Broward_County_3_2015.xls")

Broward_County_3_2015_snapper <- merge(Broward_County_3_2015, snapper, by = c("SPECIES_CD"))
Broward_County_3_2015_snapper_biomass <- summarise_at(Broward_County_3_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2015_snapper_biomass$Year <- ('2015')
Broward_County_3_2015_snapper_biomass$Reef <- ('Broward County 3')


Broward_County_3_2015_grouper <- merge(Broward_County_3_2015, grouper, by = c("SPECIES_CD"))
Broward_County_3_2015_grouper_biomass <- summarise_at(Broward_County_3_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2015_grouper_biomass$Year <- ('2015')
Broward_County_3_2015_grouper_biomass$Reef <- ('Broward County 3')

Broward_County_3_2016 <- import("Broward_County_3/data/Broward_County_3_2016.xls")

Broward_County_3_2016_snapper <- merge(Broward_County_3_2016, snapper, by = c("SPECIES_CD"))
Broward_County_3_2016_snapper_biomass <- summarise_at(Broward_County_3_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2016_snapper_biomass$Year <- ('2016')
Broward_County_3_2016_snapper_biomass$Reef <- ('Broward County 3')


Broward_County_3_2016_grouper <- merge(Broward_County_3_2016, grouper, by = c("SPECIES_CD"))
Broward_County_3_2016_grouper_biomass <- summarise_at(Broward_County_3_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2016_grouper_biomass$Year <- ('2016')
Broward_County_3_2016_grouper_biomass$Reef <- ('Broward County 3')


Broward_County_3_2018 <- import("Broward_County_3/data/Broward_County_3_2018.xls")

Broward_County_3_2018_snapper <- merge(Broward_County_3_2018, snapper, by = c("SPECIES_CD"))
Broward_County_3_2018_snapper_biomass <- summarise_at(Broward_County_3_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2018_snapper_biomass$Year <- ('2018')
Broward_County_3_2018_snapper_biomass$Reef <- ('Broward County 3')


Broward_County_3_2018_grouper <- merge(Broward_County_3_2018, grouper, by = c("SPECIES_CD"))
Broward_County_3_2018_grouper_biomass <- summarise_at(Broward_County_3_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2018_grouper_biomass$Year <- ('2018')
Broward_County_3_2018_grouper_biomass$Reef <- ('Broward County 3')



### Combine all years together for snapper_ and grouper_ seperately



# Broward_County_3_snapper_1 <- rbind(Broward_County_3_1999_snapper_biomass,Broward_County_3_2000_snapper_biomass)
# Broward_County_3_snapper_2 <- rbind(Broward_County_3_snapper_1,Broward_County_3_2001_snapper_biomass)
# Broward_County_3_snapper_3 <- rbind(Broward_County_3_snapper_2,Broward_County_3_2002_snapper_biomass)
# Broward_County_3_snapper_4 <- rbind(Broward_County_3_snapper_3,Broward_County_3_2003_snapper_biomass)
# Broward_County_3_snapper_5 <- rbind(Broward_County_3_snapper_4,Broward_County_3_2004_snapper_biomass)
# Broward_County_3_snapper_6 <- rbind(Broward_County_3_snapper_5,Broward_County_3_2005_snapper_biomass)
# Broward_County_3_snapper_7 <- rbind(Broward_County_3_snapper_6,Broward_County_3_2006_snapper_biomass)
# Broward_County_3_snapper_8 <- rbind(Broward_County_3_snapper_7,Broward_County_3_2007_snapper_biomass)
# Broward_County_3_snapper_9 <- rbind(Broward_County_3_snapper_8,Broward_County_3_2008_snapper_biomass)
# Broward_County_3_snapper_10 <- rbind(Broward_County_3_snapper_9,Broward_County_3_2009_snapper_biomass)
# Broward_County_3_snapper_11<- rbind(Broward_County_3_snapper_10,Broward_County_3_2010_snapper_biomass)
# Broward_County_3_snapper_12 <- rbind(Broward_County_3_snapper_11,Broward_County_3_2011_snapper_biomass)
Broward_County_3_snapper_13 <- rbind(Broward_County_3_2013_snapper_biomass,Broward_County_3_2014_snapper_biomass)
Broward_County_3_snapper_14 <- rbind(Broward_County_3_snapper_13,Broward_County_3_2015_snapper_biomass)
Broward_County_3_snapper_15 <- rbind(Broward_County_3_snapper_14,Broward_County_3_2016_snapper_biomass)
Broward_County_3_snapper_biomass_data_combined <- rbind(Broward_County_3_snapper_15,Broward_County_3_2018_snapper_biomass)



# Broward_County_3_grouper_1 <- rbind(Broward_County_3_1999_grouper_biomass,Broward_County_3_2000_grouper_biomass)
# Broward_County_3_grouper_2 <- rbind(Broward_County_3_grouper_1,Broward_County_3_2001_grouper_biomass)
# Broward_County_3_grouper_3 <- rbind(Broward_County_3_grouper_2,Broward_County_3_2002_grouper_biomass)
# Broward_County_3_grouper_4 <- rbind(Broward_County_3_grouper_3,Broward_County_3_2003_grouper_biomass)
# Broward_County_3_grouper_5 <- rbind(Broward_County_3_grouper_4,Broward_County_3_2004_grouper_biomass)
# Broward_County_3_grouper_6 <- rbind(Broward_County_3_grouper_5,Broward_County_3_2005_grouper_biomass)
# Broward_County_3_grouper_7 <- rbind(Broward_County_3_grouper_6,Broward_County_3_2006_grouper_biomass)
# Broward_County_3_grouper_8 <- rbind(Broward_County_3_grouper_7,Broward_County_3_2007_grouper_biomass)
# Broward_County_3_grouper_9 <- rbind(Broward_County_3_grouper_8,Broward_County_3_2008_grouper_biomass)
# Broward_County_3_grouper_10 <- rbind(Broward_County_3_grouper_9,Broward_County_3_2009_grouper_biomass)
# Broward_County_3_grouper_11<- rbind(Broward_County_3_grouper_10,Broward_County_3_2010_grouper_biomass)
# Broward_County_3_grouper_12 <- rbind(Broward_County_3_grouper_11,Broward_County_3_2011_grouper_biomass)
Broward_County_3_grouper_13 <- rbind(Broward_County_3_2013_grouper_biomass,Broward_County_3_2014_grouper_biomass)
Broward_County_3_grouper_14 <- rbind(Broward_County_3_grouper_13,Broward_County_3_2015_grouper_biomass)
Broward_County_3_grouper_15 <- rbind(Broward_County_3_grouper_14,Broward_County_3_2016_grouper_biomass)
Broward_County_3_grouper_biomass_data_combined <- rbind(Broward_County_3_grouper_15,Broward_County_3_2018_grouper_biomass)



export(Broward_County_3_snapper_biomass_data_combined, "Broward_County_3/data/Broward_County_3_snapper__biomass.csv")
export(Broward_County_3_grouper_biomass_data_combined, "Broward_County_3/data/Broward_County_3_grouper__biomass.csv")



#Broward County 4

Broward_County_4_2013 <- import("Broward_County_4/data/Broward_County_4_2013.xls")

Broward_County_4_2013_snapper <- merge(Broward_County_4_2013, snapper, by = c("SPECIES_CD"))
Broward_County_4_2013_snapper_biomass <- summarise_at(Broward_County_4_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2013_snapper_biomass$Year <- ('2013')
Broward_County_4_2013_snapper_biomass$Reef <- ('Broward County 4')


Broward_County_4_2013_grouper <- merge(Broward_County_4_2013, grouper, by = c("SPECIES_CD"))
Broward_County_4_2013_grouper_biomass <- summarise_at(Broward_County_4_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2013_grouper_biomass$Year <- ('2013')
Broward_County_4_2013_grouper_biomass$Reef <- ('Broward County 4')


Broward_County_4_2014 <- import("Broward_County_4/data/Broward_County_4_2014.xls")

Broward_County_4_2014_snapper <- merge(Broward_County_4_2014, snapper, by = c("SPECIES_CD"))
Broward_County_4_2014_snapper_biomass <- summarise_at(Broward_County_4_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2014_snapper_biomass$Year <- ('2014')
Broward_County_4_2014_snapper_biomass$Reef <- ('Broward County 4')


Broward_County_4_2014_grouper <- merge(Broward_County_4_2014, grouper, by = c("SPECIES_CD"))
Broward_County_4_2014_grouper_biomass <- summarise_at(Broward_County_4_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2014_grouper_biomass$Year <- ('2014')
Broward_County_4_2014_grouper_biomass$Reef <- ('Broward County 4')


Broward_County_4_2015 <- import("Broward_County_4/data/Broward_County_4_2015.xls")

Broward_County_4_2015_snapper <- merge(Broward_County_4_2015, snapper, by = c("SPECIES_CD"))
Broward_County_4_2015_snapper_biomass <- summarise_at(Broward_County_4_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2015_snapper_biomass$Year <- ('2015')
Broward_County_4_2015_snapper_biomass$Reef <- ('Broward County 4')


Broward_County_4_2015_grouper <- merge(Broward_County_4_2015, grouper, by = c("SPECIES_CD"))
Broward_County_4_2015_grouper_biomass <- summarise_at(Broward_County_4_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2015_grouper_biomass$Year <- ('2015')
Broward_County_4_2015_grouper_biomass$Reef <- ('Broward County 4')

Broward_County_4_2016 <- import("Broward_County_4/data/Broward_County_4_2016.xls")

Broward_County_4_2016_snapper <- merge(Broward_County_4_2016, snapper, by = c("SPECIES_CD"))
Broward_County_4_2016_snapper_biomass <- summarise_at(Broward_County_4_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2016_snapper_biomass$Year <- ('2016')
Broward_County_4_2016_snapper_biomass$Reef <- ('Broward County 4')


Broward_County_4_2016_grouper <- merge(Broward_County_4_2016, grouper, by = c("SPECIES_CD"))
Broward_County_4_2016_grouper_biomass <- summarise_at(Broward_County_4_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2016_grouper_biomass$Year <- ('2016')
Broward_County_4_2016_grouper_biomass$Reef <- ('Broward County 4')


Broward_County_4_2018 <- import("Broward_County_4/data/Broward_County_4_2018.xls")

Broward_County_4_2018_snapper <- merge(Broward_County_4_2018, snapper, by = c("SPECIES_CD"))
Broward_County_4_2018_snapper_biomass <- summarise_at(Broward_County_4_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2018_snapper_biomass$Year <- ('2018')
Broward_County_4_2018_snapper_biomass$Reef <- ('Broward County 4')


Broward_County_4_2018_grouper <- merge(Broward_County_4_2018, grouper, by = c("SPECIES_CD"))
Broward_County_4_2018_grouper_biomass <- summarise_at(Broward_County_4_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2018_grouper_biomass$Year <- ('2018')
Broward_County_4_2018_grouper_biomass$Reef <- ('Broward County 4')



### Combine all years together for snapper_ and grouper_ seperately



# Broward_County_4_snapper_1 <- rbind(Broward_County_4_1999_snapper_biomass,Broward_County_4_2000_snapper_biomass)
# Broward_County_4_snapper_2 <- rbind(Broward_County_4_snapper_1,Broward_County_4_2001_snapper_biomass)
# Broward_County_4_snapper_3 <- rbind(Broward_County_4_snapper_2,Broward_County_4_2002_snapper_biomass)
# Broward_County_4_snapper_4 <- rbind(Broward_County_4_snapper_3,Broward_County_4_2003_snapper_biomass)
# Broward_County_4_snapper_5 <- rbind(Broward_County_4_snapper_4,Broward_County_4_2004_snapper_biomass)
# Broward_County_4_snapper_6 <- rbind(Broward_County_4_snapper_5,Broward_County_4_2005_snapper_biomass)
# Broward_County_4_snapper_7 <- rbind(Broward_County_4_snapper_6,Broward_County_4_2006_snapper_biomass)
# Broward_County_4_snapper_8 <- rbind(Broward_County_4_snapper_7,Broward_County_4_2007_snapper_biomass)
# Broward_County_4_snapper_9 <- rbind(Broward_County_4_snapper_8,Broward_County_4_2008_snapper_biomass)
# Broward_County_4_snapper_10 <- rbind(Broward_County_4_snapper_9,Broward_County_4_2009_snapper_biomass)
# Broward_County_4_snapper_11<- rbind(Broward_County_4_snapper_10,Broward_County_4_2010_snapper_biomass)
# Broward_County_4_snapper_12 <- rbind(Broward_County_4_snapper_11,Broward_County_4_2011_snapper_biomass)
Broward_County_4_snapper_13 <- rbind(Broward_County_4_2013_snapper_biomass,Broward_County_4_2014_snapper_biomass)
Broward_County_4_snapper_14 <- rbind(Broward_County_4_snapper_13,Broward_County_4_2015_snapper_biomass)
Broward_County_4_snapper_15 <- rbind(Broward_County_4_snapper_14,Broward_County_4_2016_snapper_biomass)
Broward_County_4_snapper_biomass_data_combined <- rbind(Broward_County_4_snapper_15,Broward_County_4_2018_snapper_biomass)



# Broward_County_4_grouper_1 <- rbind(Broward_County_4_1999_grouper_biomass,Broward_County_4_2000_grouper_biomass)
# Broward_County_4_grouper_2 <- rbind(Broward_County_4_grouper_1,Broward_County_4_2001_grouper_biomass)
# Broward_County_4_grouper_3 <- rbind(Broward_County_4_grouper_2,Broward_County_4_2002_grouper_biomass)
# Broward_County_4_grouper_4 <- rbind(Broward_County_4_grouper_3,Broward_County_4_2003_grouper_biomass)
# Broward_County_4_grouper_5 <- rbind(Broward_County_4_grouper_4,Broward_County_4_2004_grouper_biomass)
# Broward_County_4_grouper_6 <- rbind(Broward_County_4_grouper_5,Broward_County_4_2005_grouper_biomass)
# Broward_County_4_grouper_7 <- rbind(Broward_County_4_grouper_6,Broward_County_4_2006_grouper_biomass)
# Broward_County_4_grouper_8 <- rbind(Broward_County_4_grouper_7,Broward_County_4_2007_grouper_biomass)
# Broward_County_4_grouper_9 <- rbind(Broward_County_4_grouper_8,Broward_County_4_2008_grouper_biomass)
# Broward_County_4_grouper_10 <- rbind(Broward_County_4_grouper_9,Broward_County_4_2009_grouper_biomass)
# Broward_County_4_grouper_11<- rbind(Broward_County_4_grouper_10,Broward_County_4_2010_grouper_biomass)
# Broward_County_4_grouper_12 <- rbind(Broward_County_4_grouper_11,Broward_County_4_2011_grouper_biomass)
Broward_County_4_grouper_13 <- rbind(Broward_County_4_2013_grouper_biomass,Broward_County_4_2014_grouper_biomass)
Broward_County_4_grouper_14 <- rbind(Broward_County_4_grouper_13,Broward_County_4_2015_grouper_biomass)
Broward_County_4_grouper_15 <- rbind(Broward_County_4_grouper_14,Broward_County_4_2016_grouper_biomass)
Broward_County_4_grouper_biomass_data_combined <- rbind(Broward_County_4_grouper_15,Broward_County_4_2018_grouper_biomass)



export(Broward_County_4_snapper_biomass_data_combined, "Broward_County_4/data/Broward_County_4_snapper__biomass.csv")
export(Broward_County_4_grouper_biomass_data_combined, "Broward_County_4/data/Broward_County_4_grouper__biomass.csv")



#Broward County 5

Broward_County_5_2013 <- import("Broward_County_5/data/Broward_County_5_2013.xls")

Broward_County_5_2013_snapper <- merge(Broward_County_5_2013, snapper, by = c("SPECIES_CD"))
Broward_County_5_2013_snapper_biomass <- summarise_at(Broward_County_5_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2013_snapper_biomass$Year <- ('2013')
Broward_County_5_2013_snapper_biomass$Reef <- ('Broward County 5')


Broward_County_5_2013_grouper <- merge(Broward_County_5_2013, grouper, by = c("SPECIES_CD"))
Broward_County_5_2013_grouper_biomass <- summarise_at(Broward_County_5_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2013_grouper_biomass$Year <- ('2013')
Broward_County_5_2013_grouper_biomass$Reef <- ('Broward County 5')


Broward_County_5_2014 <- import("Broward_County_5/data/Broward_County_5_2014.xls")

Broward_County_5_2014_snapper <- merge(Broward_County_5_2014, snapper, by = c("SPECIES_CD"))
Broward_County_5_2014_snapper_biomass <- summarise_at(Broward_County_5_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2014_snapper_biomass$Year <- ('2014')
Broward_County_5_2014_snapper_biomass$Reef <- ('Broward County 5')


Broward_County_5_2014_grouper <- merge(Broward_County_5_2014, grouper, by = c("SPECIES_CD"))
Broward_County_5_2014_grouper_biomass <- summarise_at(Broward_County_5_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2014_grouper_biomass$Year <- ('2014')
Broward_County_5_2014_grouper_biomass$Reef <- ('Broward County 5')


Broward_County_5_2015 <- import("Broward_County_5/data/Broward_County_5_2015.xls")

Broward_County_5_2015_snapper <- merge(Broward_County_5_2015, snapper, by = c("SPECIES_CD"))
Broward_County_5_2015_snapper_biomass <- summarise_at(Broward_County_5_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2015_snapper_biomass$Year <- ('2015')
Broward_County_5_2015_snapper_biomass$Reef <- ('Broward County 5')


Broward_County_5_2015_grouper <- merge(Broward_County_5_2015, grouper, by = c("SPECIES_CD"))
Broward_County_5_2015_grouper_biomass <- summarise_at(Broward_County_5_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2015_grouper_biomass$Year <- ('2015')
Broward_County_5_2015_grouper_biomass$Reef <- ('Broward County 5')

Broward_County_5_2016 <- import("Broward_County_5/data/Broward_County_5_2016.xls")

Broward_County_5_2016_snapper <- merge(Broward_County_5_2016, snapper, by = c("SPECIES_CD"))
Broward_County_5_2016_snapper_biomass <- summarise_at(Broward_County_5_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2016_snapper_biomass$Year <- ('2016')
Broward_County_5_2016_snapper_biomass$Reef <- ('Broward County 5')


Broward_County_5_2016_grouper <- merge(Broward_County_5_2016, grouper, by = c("SPECIES_CD"))
Broward_County_5_2016_grouper_biomass <- summarise_at(Broward_County_5_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2016_grouper_biomass$Year <- ('2016')
Broward_County_5_2016_grouper_biomass$Reef <- ('Broward County 5')


Broward_County_5_2018 <- import("Broward_County_5/data/Broward_County_5_2018.xls")

Broward_County_5_2018_snapper <- merge(Broward_County_5_2018, snapper, by = c("SPECIES_CD"))
Broward_County_5_2018_snapper_biomass <- summarise_at(Broward_County_5_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2018_snapper_biomass$Year <- ('2018')
Broward_County_5_2018_snapper_biomass$Reef <- ('Broward County 5')


Broward_County_5_2018_grouper <- merge(Broward_County_5_2018, grouper, by = c("SPECIES_CD"))
Broward_County_5_2018_grouper_biomass <- summarise_at(Broward_County_5_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2018_grouper_biomass$Year <- ('2018')
Broward_County_5_2018_grouper_biomass$Reef <- ('Broward County 5')



### Combine all years together for snapper_ and grouper_ seperately



# Broward_County_5_snapper_1 <- rbind(Broward_County_5_1999_snapper_biomass,Broward_County_5_2000_snapper_biomass)
# Broward_County_5_snapper_2 <- rbind(Broward_County_5_snapper_1,Broward_County_5_2001_snapper_biomass)
# Broward_County_5_snapper_3 <- rbind(Broward_County_5_snapper_2,Broward_County_5_2002_snapper_biomass)
# Broward_County_5_snapper_4 <- rbind(Broward_County_5_snapper_3,Broward_County_5_2003_snapper_biomass)
# Broward_County_5_snapper_5 <- rbind(Broward_County_5_snapper_4,Broward_County_5_2004_snapper_biomass)
# Broward_County_5_snapper_6 <- rbind(Broward_County_5_snapper_5,Broward_County_5_2005_snapper_biomass)
# Broward_County_5_snapper_7 <- rbind(Broward_County_5_snapper_6,Broward_County_5_2006_snapper_biomass)
# Broward_County_5_snapper_8 <- rbind(Broward_County_5_snapper_7,Broward_County_5_2007_snapper_biomass)
# Broward_County_5_snapper_9 <- rbind(Broward_County_5_snapper_8,Broward_County_5_2008_snapper_biomass)
# Broward_County_5_snapper_10 <- rbind(Broward_County_5_snapper_9,Broward_County_5_2009_snapper_biomass)
# Broward_County_5_snapper_11<- rbind(Broward_County_5_snapper_10,Broward_County_5_2010_snapper_biomass)
# Broward_County_5_snapper_12 <- rbind(Broward_County_5_snapper_11,Broward_County_5_2011_snapper_biomass)
Broward_County_5_snapper_13 <- rbind(Broward_County_5_2013_snapper_biomass,Broward_County_5_2014_snapper_biomass)
Broward_County_5_snapper_14 <- rbind(Broward_County_5_snapper_13,Broward_County_5_2015_snapper_biomass)
Broward_County_5_snapper_15 <- rbind(Broward_County_5_snapper_14,Broward_County_5_2016_snapper_biomass)
Broward_County_5_snapper_biomass_data_combined <- rbind(Broward_County_5_snapper_15,Broward_County_5_2018_snapper_biomass)



# Broward_County_5_grouper_1 <- rbind(Broward_County_5_1999_grouper_biomass,Broward_County_5_2000_grouper_biomass)
# Broward_County_5_grouper_2 <- rbind(Broward_County_5_grouper_1,Broward_County_5_2001_grouper_biomass)
# Broward_County_5_grouper_3 <- rbind(Broward_County_5_grouper_2,Broward_County_5_2002_grouper_biomass)
# Broward_County_5_grouper_4 <- rbind(Broward_County_5_grouper_3,Broward_County_5_2003_grouper_biomass)
# Broward_County_5_grouper_5 <- rbind(Broward_County_5_grouper_4,Broward_County_5_2004_grouper_biomass)
# Broward_County_5_grouper_6 <- rbind(Broward_County_5_grouper_5,Broward_County_5_2005_grouper_biomass)
# Broward_County_5_grouper_7 <- rbind(Broward_County_5_grouper_6,Broward_County_5_2006_grouper_biomass)
# Broward_County_5_grouper_8 <- rbind(Broward_County_5_grouper_7,Broward_County_5_2007_grouper_biomass)
# Broward_County_5_grouper_9 <- rbind(Broward_County_5_grouper_8,Broward_County_5_2008_grouper_biomass)
# Broward_County_5_grouper_10 <- rbind(Broward_County_5_grouper_9,Broward_County_5_2009_grouper_biomass)
# Broward_County_5_grouper_11<- rbind(Broward_County_5_grouper_10,Broward_County_5_2010_grouper_biomass)
# Broward_County_5_grouper_12 <- rbind(Broward_County_5_grouper_11,Broward_County_5_2011_grouper_biomass)
Broward_County_5_grouper_13 <- rbind(Broward_County_5_2013_grouper_biomass,Broward_County_5_2014_grouper_biomass)
Broward_County_5_grouper_14 <- rbind(Broward_County_5_grouper_13,Broward_County_5_2015_grouper_biomass)
Broward_County_5_grouper_15 <- rbind(Broward_County_5_grouper_14,Broward_County_5_2016_grouper_biomass)
Broward_County_5_grouper_biomass_data_combined <- rbind(Broward_County_5_grouper_15,Broward_County_5_2018_grouper_biomass)



export(Broward_County_5_snapper_biomass_data_combined, "Broward_County_5/data/Broward_County_5_snapper__biomass.csv")
export(Broward_County_5_grouper_biomass_data_combined, "Broward_County_5/data/Broward_County_5_grouper__biomass.csv")




#Broward County 6

Broward_County_6_2013 <- import("Broward_County_6/data/Broward_County_6_2013.xls")

Broward_County_6_2013_snapper <- merge(Broward_County_6_2013, snapper, by = c("SPECIES_CD"))
Broward_County_6_2013_snapper_biomass <- summarise_at(Broward_County_6_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2013_snapper_biomass$Year <- ('2013')
Broward_County_6_2013_snapper_biomass$Reef <- ('Broward County 6')


Broward_County_6_2013_grouper <- merge(Broward_County_6_2013, grouper, by = c("SPECIES_CD"))
Broward_County_6_2013_grouper_biomass <- summarise_at(Broward_County_6_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2013_grouper_biomass$Year <- ('2013')
Broward_County_6_2013_grouper_biomass$Reef <- ('Broward County 6')


Broward_County_6_2014 <- import("Broward_County_6/data/Broward_County_6_2014.xls")

Broward_County_6_2014_snapper <- merge(Broward_County_6_2014, snapper, by = c("SPECIES_CD"))
Broward_County_6_2014_snapper_biomass <- summarise_at(Broward_County_6_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2014_snapper_biomass$Year <- ('2014')
Broward_County_6_2014_snapper_biomass$Reef <- ('Broward County 6')


Broward_County_6_2014_grouper <- merge(Broward_County_6_2014, grouper, by = c("SPECIES_CD"))
Broward_County_6_2014_grouper_biomass <- summarise_at(Broward_County_6_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2014_grouper_biomass$Year <- ('2014')
Broward_County_6_2014_grouper_biomass$Reef <- ('Broward County 6')


Broward_County_6_2015 <- import("Broward_County_6/data/Broward_County_6_2015.xls")

Broward_County_6_2015_snapper <- merge(Broward_County_6_2015, snapper, by = c("SPECIES_CD"))
Broward_County_6_2015_snapper_biomass <- summarise_at(Broward_County_6_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2015_snapper_biomass$Year <- ('2015')
Broward_County_6_2015_snapper_biomass$Reef <- ('Broward County 6')


Broward_County_6_2015_grouper <- merge(Broward_County_6_2015, grouper, by = c("SPECIES_CD"))
Broward_County_6_2015_grouper_biomass <- summarise_at(Broward_County_6_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2015_grouper_biomass$Year <- ('2015')
Broward_County_6_2015_grouper_biomass$Reef <- ('Broward County 6')

Broward_County_6_2016 <- import("Broward_County_6/data/Broward_County_6_2016.xls")

Broward_County_6_2016_snapper <- merge(Broward_County_6_2016, snapper, by = c("SPECIES_CD"))
Broward_County_6_2016_snapper_biomass <- summarise_at(Broward_County_6_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2016_snapper_biomass$Year <- ('2016')
Broward_County_6_2016_snapper_biomass$Reef <- ('Broward County 6')


Broward_County_6_2016_grouper <- merge(Broward_County_6_2016, grouper, by = c("SPECIES_CD"))
Broward_County_6_2016_grouper_biomass <- summarise_at(Broward_County_6_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2016_grouper_biomass$Year <- ('2016')
Broward_County_6_2016_grouper_biomass$Reef <- ('Broward County 6')


Broward_County_6_2018 <- import("Broward_County_6/data/Broward_County_6_2018.xls")

Broward_County_6_2018_snapper <- merge(Broward_County_6_2018, snapper, by = c("SPECIES_CD"))
Broward_County_6_2018_snapper_biomass <- summarise_at(Broward_County_6_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2018_snapper_biomass$Year <- ('2018')
Broward_County_6_2018_snapper_biomass$Reef <- ('Broward County 6')


Broward_County_6_2018_grouper <- merge(Broward_County_6_2018, grouper, by = c("SPECIES_CD"))
Broward_County_6_2018_grouper_biomass <- summarise_at(Broward_County_6_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2018_grouper_biomass$Year <- ('2018')
Broward_County_6_2018_grouper_biomass$Reef <- ('Broward County 6')



### Combine all years together for snapper_ and grouper_ seperately



# Broward_County_6_snapper_1 <- rbind(Broward_County_6_1999_snapper_biomass,Broward_County_6_2000_snapper_biomass)
# Broward_County_6_snapper_2 <- rbind(Broward_County_6_snapper_1,Broward_County_6_2001_snapper_biomass)
# Broward_County_6_snapper_3 <- rbind(Broward_County_6_snapper_2,Broward_County_6_2002_snapper_biomass)
# Broward_County_6_snapper_4 <- rbind(Broward_County_6_snapper_3,Broward_County_6_2003_snapper_biomass)
# Broward_County_6_snapper_5 <- rbind(Broward_County_6_snapper_4,Broward_County_6_2004_snapper_biomass)
# Broward_County_6_snapper_6 <- rbind(Broward_County_6_snapper_5,Broward_County_6_2005_snapper_biomass)
# Broward_County_6_snapper_7 <- rbind(Broward_County_6_snapper_6,Broward_County_6_2006_snapper_biomass)
# Broward_County_6_snapper_8 <- rbind(Broward_County_6_snapper_7,Broward_County_6_2007_snapper_biomass)
# Broward_County_6_snapper_9 <- rbind(Broward_County_6_snapper_8,Broward_County_6_2008_snapper_biomass)
# Broward_County_6_snapper_10 <- rbind(Broward_County_6_snapper_9,Broward_County_6_2009_snapper_biomass)
# Broward_County_6_snapper_11<- rbind(Broward_County_6_snapper_10,Broward_County_6_2010_snapper_biomass)
# Broward_County_6_snapper_12 <- rbind(Broward_County_6_snapper_11,Broward_County_6_2011_snapper_biomass)
Broward_County_6_snapper_13 <- rbind(Broward_County_6_2013_snapper_biomass,Broward_County_6_2014_snapper_biomass)
Broward_County_6_snapper_14 <- rbind(Broward_County_6_snapper_13,Broward_County_6_2015_snapper_biomass)
Broward_County_6_snapper_15 <- rbind(Broward_County_6_snapper_14,Broward_County_6_2016_snapper_biomass)
Broward_County_6_snapper_biomass_data_combined <- rbind(Broward_County_6_snapper_15,Broward_County_6_2018_snapper_biomass)



# Broward_County_6_grouper_1 <- rbind(Broward_County_6_1999_grouper_biomass,Broward_County_6_2000_grouper_biomass)
# Broward_County_6_grouper_2 <- rbind(Broward_County_6_grouper_1,Broward_County_6_2001_grouper_biomass)
# Broward_County_6_grouper_3 <- rbind(Broward_County_6_grouper_2,Broward_County_6_2002_grouper_biomass)
# Broward_County_6_grouper_4 <- rbind(Broward_County_6_grouper_3,Broward_County_6_2003_grouper_biomass)
# Broward_County_6_grouper_5 <- rbind(Broward_County_6_grouper_4,Broward_County_6_2004_grouper_biomass)
# Broward_County_6_grouper_6 <- rbind(Broward_County_6_grouper_5,Broward_County_6_2005_grouper_biomass)
# Broward_County_6_grouper_7 <- rbind(Broward_County_6_grouper_6,Broward_County_6_2006_grouper_biomass)
# Broward_County_6_grouper_8 <- rbind(Broward_County_6_grouper_7,Broward_County_6_2007_grouper_biomass)
# Broward_County_6_grouper_9 <- rbind(Broward_County_6_grouper_8,Broward_County_6_2008_grouper_biomass)
# Broward_County_6_grouper_10 <- rbind(Broward_County_6_grouper_9,Broward_County_6_2009_grouper_biomass)
# Broward_County_6_grouper_11<- rbind(Broward_County_6_grouper_10,Broward_County_6_2010_grouper_biomass)
# Broward_County_6_grouper_12 <- rbind(Broward_County_6_grouper_11,Broward_County_6_2011_grouper_biomass)
Broward_County_6_grouper_13 <- rbind(Broward_County_6_2013_grouper_biomass,Broward_County_6_2014_grouper_biomass)
Broward_County_6_grouper_14 <- rbind(Broward_County_6_grouper_13,Broward_County_6_2015_grouper_biomass)
Broward_County_6_grouper_15 <- rbind(Broward_County_6_grouper_14,Broward_County_6_2016_grouper_biomass)
Broward_County_6_grouper_biomass_data_combined <- rbind(Broward_County_6_grouper_15,Broward_County_6_2018_grouper_biomass)



export(Broward_County_6_snapper_biomass_data_combined, "Broward_County_6/data/Broward_County_6_snapper__biomass.csv")
export(Broward_County_6_grouper_biomass_data_combined, "Broward_County_6/data/Broward_County_6_grouper__biomass.csv")




#Broward County A

Broward_County_A_2013 <- import("Broward_County_A/data/Broward_County_A_2013.xls")

Broward_County_A_2013_snapper <- merge(Broward_County_A_2013, snapper, by = c("SPECIES_CD"))
Broward_County_A_2013_snapper_biomass <- summarise_at(Broward_County_A_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2013_snapper_biomass$Year <- ('2013')
Broward_County_A_2013_snapper_biomass$Reef <- ('Broward County A')


Broward_County_A_2013_grouper <- merge(Broward_County_A_2013, grouper, by = c("SPECIES_CD"))
Broward_County_A_2013_grouper_biomass <- summarise_at(Broward_County_A_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2013_grouper_biomass$Year <- ('2013')
Broward_County_A_2013_grouper_biomass$Reef <- ('Broward County A')


Broward_County_A_2014 <- import("Broward_County_A/data/Broward_County_A_2014.xls")

Broward_County_A_2014_snapper <- merge(Broward_County_A_2014, snapper, by = c("SPECIES_CD"))
Broward_County_A_2014_snapper_biomass <- summarise_at(Broward_County_A_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2014_snapper_biomass$Year <- ('2014')
Broward_County_A_2014_snapper_biomass$Reef <- ('Broward County A')


Broward_County_A_2014_grouper <- merge(Broward_County_A_2014, grouper, by = c("SPECIES_CD"))
Broward_County_A_2014_grouper_biomass <- summarise_at(Broward_County_A_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2014_grouper_biomass$Year <- ('2014')
Broward_County_A_2014_grouper_biomass$Reef <- ('Broward County A')


Broward_County_A_2015 <- import("Broward_County_A/data/Broward_County_A_2015.xls")

Broward_County_A_2015_snapper <- merge(Broward_County_A_2015, snapper, by = c("SPECIES_CD"))
Broward_County_A_2015_snapper_biomass <- summarise_at(Broward_County_A_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2015_snapper_biomass$Year <- ('2015')
Broward_County_A_2015_snapper_biomass$Reef <- ('Broward County A')


Broward_County_A_2015_grouper <- merge(Broward_County_A_2015, grouper, by = c("SPECIES_CD"))
Broward_County_A_2015_grouper_biomass <- summarise_at(Broward_County_A_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2015_grouper_biomass$Year <- ('2015')
Broward_County_A_2015_grouper_biomass$Reef <- ('Broward County A')

Broward_County_A_2016 <- import("Broward_County_A/data/Broward_County_A_2016.xls")

Broward_County_A_2016_snapper <- merge(Broward_County_A_2016, snapper, by = c("SPECIES_CD"))
Broward_County_A_2016_snapper_biomass <- summarise_at(Broward_County_A_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2016_snapper_biomass$Year <- ('2016')
Broward_County_A_2016_snapper_biomass$Reef <- ('Broward County A')


Broward_County_A_2016_grouper <- merge(Broward_County_A_2016, grouper, by = c("SPECIES_CD"))
Broward_County_A_2016_grouper_biomass <- summarise_at(Broward_County_A_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2016_grouper_biomass$Year <- ('2016')
Broward_County_A_2016_grouper_biomass$Reef <- ('Broward County A')


Broward_County_A_2018 <- import("Broward_County_A/data/Broward_County_A_2018.xls")

Broward_County_A_2018_snapper <- merge(Broward_County_A_2018, snapper, by = c("SPECIES_CD"))
Broward_County_A_2018_snapper_biomass <- summarise_at(Broward_County_A_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2018_snapper_biomass$Year <- ('2018')
Broward_County_A_2018_snapper_biomass$Reef <- ('Broward County A')


Broward_County_A_2018_grouper <- merge(Broward_County_A_2018, grouper, by = c("SPECIES_CD"))
Broward_County_A_2018_grouper_biomass <- summarise_at(Broward_County_A_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2018_grouper_biomass$Year <- ('2018')
Broward_County_A_2018_grouper_biomass$Reef <- ('Broward County A')



### Combine all years together for snapper_ and grouper_ seperately



# Broward_County_A_snapper_1 <- rbind(Broward_County_A_1999_snapper_biomass,Broward_County_A_2000_snapper_biomass)
# Broward_County_A_snapper_2 <- rbind(Broward_County_A_snapper_1,Broward_County_A_2001_snapper_biomass)
# Broward_County_A_snapper_3 <- rbind(Broward_County_A_snapper_2,Broward_County_A_2002_snapper_biomass)
# Broward_County_A_snapper_4 <- rbind(Broward_County_A_snapper_3,Broward_County_A_2003_snapper_biomass)
# Broward_County_A_snapper_5 <- rbind(Broward_County_A_snapper_4,Broward_County_A_2004_snapper_biomass)
# Broward_County_A_snapper_6 <- rbind(Broward_County_A_snapper_5,Broward_County_A_2005_snapper_biomass)
# Broward_County_A_snapper_7 <- rbind(Broward_County_A_snapper_6,Broward_County_A_2006_snapper_biomass)
# Broward_County_A_snapper_8 <- rbind(Broward_County_A_snapper_7,Broward_County_A_2007_snapper_biomass)
# Broward_County_A_snapper_9 <- rbind(Broward_County_A_snapper_8,Broward_County_A_2008_snapper_biomass)
# Broward_County_A_snapper_10 <- rbind(Broward_County_A_snapper_9,Broward_County_A_2009_snapper_biomass)
# Broward_County_A_snapper_11<- rbind(Broward_County_A_snapper_10,Broward_County_A_2010_snapper_biomass)
# Broward_County_A_snapper_12 <- rbind(Broward_County_A_snapper_11,Broward_County_A_2011_snapper_biomass)
Broward_County_A_snapper_13 <- rbind(Broward_County_A_2013_snapper_biomass,Broward_County_A_2014_snapper_biomass)
Broward_County_A_snapper_14 <- rbind(Broward_County_A_snapper_13,Broward_County_A_2015_snapper_biomass)
Broward_County_A_snapper_15 <- rbind(Broward_County_A_snapper_14,Broward_County_A_2016_snapper_biomass)
Broward_County_A_snapper_biomass_data_combined <- rbind(Broward_County_A_snapper_15,Broward_County_A_2018_snapper_biomass)



# Broward_County_A_grouper_1 <- rbind(Broward_County_A_1999_grouper_biomass,Broward_County_A_2000_grouper_biomass)
# Broward_County_A_grouper_2 <- rbind(Broward_County_A_grouper_1,Broward_County_A_2001_grouper_biomass)
# Broward_County_A_grouper_3 <- rbind(Broward_County_A_grouper_2,Broward_County_A_2002_grouper_biomass)
# Broward_County_A_grouper_4 <- rbind(Broward_County_A_grouper_3,Broward_County_A_2003_grouper_biomass)
# Broward_County_A_grouper_5 <- rbind(Broward_County_A_grouper_4,Broward_County_A_2004_grouper_biomass)
# Broward_County_A_grouper_6 <- rbind(Broward_County_A_grouper_5,Broward_County_A_2005_grouper_biomass)
# Broward_County_A_grouper_7 <- rbind(Broward_County_A_grouper_6,Broward_County_A_2006_grouper_biomass)
# Broward_County_A_grouper_8 <- rbind(Broward_County_A_grouper_7,Broward_County_A_2007_grouper_biomass)
# Broward_County_A_grouper_9 <- rbind(Broward_County_A_grouper_8,Broward_County_A_2008_grouper_biomass)
# Broward_County_A_grouper_10 <- rbind(Broward_County_A_grouper_9,Broward_County_A_2009_grouper_biomass)
# Broward_County_A_grouper_11<- rbind(Broward_County_A_grouper_10,Broward_County_A_2010_grouper_biomass)
# Broward_County_A_grouper_12 <- rbind(Broward_County_A_grouper_11,Broward_County_A_2011_grouper_biomass)
Broward_County_A_grouper_13 <- rbind(Broward_County_A_2013_grouper_biomass,Broward_County_A_2014_grouper_biomass)
Broward_County_A_grouper_14 <- rbind(Broward_County_A_grouper_13,Broward_County_A_2015_grouper_biomass)
Broward_County_A_grouper_15 <- rbind(Broward_County_A_grouper_14,Broward_County_A_2016_grouper_biomass)
Broward_County_A_grouper_biomass_data_combined <- rbind(Broward_County_A_grouper_15,Broward_County_A_2018_grouper_biomass)



export(Broward_County_A_snapper_biomass_data_combined, "Broward_County_A/data/Broward_County_A_snapper__biomass.csv")
export(Broward_County_A_grouper_biomass_data_combined, "Broward_County_A/data/Broward_County_A_grouper__biomass.csv")




#Dade County 1

Dade_County_1_2013 <- import("Dade_County_1/data/Dade_County_1_2013.xls")

Dade_County_1_2013_snapper <- merge(Dade_County_1_2013, snapper, by = c("SPECIES_CD"))
Dade_County_1_2013_snapper_biomass <- summarise_at(Dade_County_1_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2013_snapper_biomass$Year <- ('2013')
Dade_County_1_2013_snapper_biomass$Reef <- ('Dade County 1')


Dade_County_1_2013_grouper <- merge(Dade_County_1_2013, grouper, by = c("SPECIES_CD"))
Dade_County_1_2013_grouper_biomass <- summarise_at(Dade_County_1_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2013_grouper_biomass$Year <- ('2013')
Dade_County_1_2013_grouper_biomass$Reef <- ('Dade County 1')


Dade_County_1_2014 <- import("Dade_County_1/data/Dade_County_1_2014.xls")

Dade_County_1_2014_snapper <- merge(Dade_County_1_2014, snapper, by = c("SPECIES_CD"))
Dade_County_1_2014_snapper_biomass <- summarise_at(Dade_County_1_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2014_snapper_biomass$Year <- ('2014')
Dade_County_1_2014_snapper_biomass$Reef <- ('Dade County 1')


Dade_County_1_2014_grouper <- merge(Dade_County_1_2014, grouper, by = c("SPECIES_CD"))
Dade_County_1_2014_grouper_biomass <- summarise_at(Dade_County_1_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2014_grouper_biomass$Year <- ('2014')
Dade_County_1_2014_grouper_biomass$Reef <- ('Dade County 1')


Dade_County_1_2015 <- import("Dade_County_1/data/Dade_County_1_2015.xls")

Dade_County_1_2015_snapper <- merge(Dade_County_1_2015, snapper, by = c("SPECIES_CD"))
Dade_County_1_2015_snapper_biomass <- summarise_at(Dade_County_1_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2015_snapper_biomass$Year <- ('2015')
Dade_County_1_2015_snapper_biomass$Reef <- ('Dade County 1')


Dade_County_1_2015_grouper <- merge(Dade_County_1_2015, grouper, by = c("SPECIES_CD"))
Dade_County_1_2015_grouper_biomass <- summarise_at(Dade_County_1_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2015_grouper_biomass$Year <- ('2015')
Dade_County_1_2015_grouper_biomass$Reef <- ('Dade County 1')

Dade_County_1_2016 <- import("Dade_County_1/data/Dade_County_1_2016.xls")

Dade_County_1_2016_snapper <- merge(Dade_County_1_2016, snapper, by = c("SPECIES_CD"))
Dade_County_1_2016_snapper_biomass <- summarise_at(Dade_County_1_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2016_snapper_biomass$Year <- ('2016')
Dade_County_1_2016_snapper_biomass$Reef <- ('Dade County 1')


Dade_County_1_2016_grouper <- merge(Dade_County_1_2016, grouper, by = c("SPECIES_CD"))
Dade_County_1_2016_grouper_biomass <- summarise_at(Dade_County_1_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2016_grouper_biomass$Year <- ('2016')
Dade_County_1_2016_grouper_biomass$Reef <- ('Dade County 1')


Dade_County_1_2018 <- import("Dade_County_1/data/Dade_County_1_2018.xls")

Dade_County_1_2018_snapper <- merge(Dade_County_1_2018, snapper, by = c("SPECIES_CD"))
Dade_County_1_2018_snapper_biomass <- summarise_at(Dade_County_1_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2018_snapper_biomass$Year <- ('2018')
Dade_County_1_2018_snapper_biomass$Reef <- ('Dade County 1')


Dade_County_1_2018_grouper <- merge(Dade_County_1_2018, grouper, by = c("SPECIES_CD"))
Dade_County_1_2018_grouper_biomass <- summarise_at(Dade_County_1_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2018_grouper_biomass$Year <- ('2018')
Dade_County_1_2018_grouper_biomass$Reef <- ('Dade County 1')



### Combine all years together for snapper_ and grouper_ seperately



# Dade_County_1_snapper_1 <- rbind(Dade_County_1_1999_snapper_biomass,Dade_County_1_2000_snapper_biomass)
# Dade_County_1_snapper_2 <- rbind(Dade_County_1_snapper_1,Dade_County_1_2001_snapper_biomass)
# Dade_County_1_snapper_3 <- rbind(Dade_County_1_snapper_2,Dade_County_1_2002_snapper_biomass)
# Dade_County_1_snapper_4 <- rbind(Dade_County_1_snapper_3,Dade_County_1_2003_snapper_biomass)
# Dade_County_1_snapper_5 <- rbind(Dade_County_1_snapper_4,Dade_County_1_2004_snapper_biomass)
# Dade_County_1_snapper_6 <- rbind(Dade_County_1_snapper_5,Dade_County_1_2005_snapper_biomass)
# Dade_County_1_snapper_7 <- rbind(Dade_County_1_snapper_6,Dade_County_1_2006_snapper_biomass)
# Dade_County_1_snapper_8 <- rbind(Dade_County_1_snapper_7,Dade_County_1_2007_snapper_biomass)
# Dade_County_1_snapper_9 <- rbind(Dade_County_1_snapper_8,Dade_County_1_2008_snapper_biomass)
# Dade_County_1_snapper_10 <- rbind(Dade_County_1_snapper_9,Dade_County_1_2009_snapper_biomass)
# Dade_County_1_snapper_11<- rbind(Dade_County_1_snapper_10,Dade_County_1_2010_snapper_biomass)
# Dade_County_1_snapper_12 <- rbind(Dade_County_1_snapper_11,Dade_County_1_2011_snapper_biomass)
Dade_County_1_snapper_13 <- rbind(Dade_County_1_2013_snapper_biomass,Dade_County_1_2014_snapper_biomass)
Dade_County_1_snapper_14 <- rbind(Dade_County_1_snapper_13,Dade_County_1_2015_snapper_biomass)
Dade_County_1_snapper_15 <- rbind(Dade_County_1_snapper_14,Dade_County_1_2016_snapper_biomass)
Dade_County_1_snapper_biomass_data_combined <- rbind(Dade_County_1_snapper_15,Dade_County_1_2018_snapper_biomass)



# Dade_County_1_grouper_1 <- rbind(Dade_County_1_1999_grouper_biomass,Dade_County_1_2000_grouper_biomass)
# Dade_County_1_grouper_2 <- rbind(Dade_County_1_grouper_1,Dade_County_1_2001_grouper_biomass)
# Dade_County_1_grouper_3 <- rbind(Dade_County_1_grouper_2,Dade_County_1_2002_grouper_biomass)
# Dade_County_1_grouper_4 <- rbind(Dade_County_1_grouper_3,Dade_County_1_2003_grouper_biomass)
# Dade_County_1_grouper_5 <- rbind(Dade_County_1_grouper_4,Dade_County_1_2004_grouper_biomass)
# Dade_County_1_grouper_6 <- rbind(Dade_County_1_grouper_5,Dade_County_1_2005_grouper_biomass)
# Dade_County_1_grouper_7 <- rbind(Dade_County_1_grouper_6,Dade_County_1_2006_grouper_biomass)
# Dade_County_1_grouper_8 <- rbind(Dade_County_1_grouper_7,Dade_County_1_2007_grouper_biomass)
# Dade_County_1_grouper_9 <- rbind(Dade_County_1_grouper_8,Dade_County_1_2008_grouper_biomass)
# Dade_County_1_grouper_10 <- rbind(Dade_County_1_grouper_9,Dade_County_1_2009_grouper_biomass)
# Dade_County_1_grouper_11<- rbind(Dade_County_1_grouper_10,Dade_County_1_2010_grouper_biomass)
# Dade_County_1_grouper_12 <- rbind(Dade_County_1_grouper_11,Dade_County_1_2011_grouper_biomass)
Dade_County_1_grouper_13 <- rbind(Dade_County_1_2013_grouper_biomass,Dade_County_1_2014_grouper_biomass)
Dade_County_1_grouper_14 <- rbind(Dade_County_1_grouper_13,Dade_County_1_2015_grouper_biomass)
Dade_County_1_grouper_15 <- rbind(Dade_County_1_grouper_14,Dade_County_1_2016_grouper_biomass)
Dade_County_1_grouper_biomass_data_combined <- rbind(Dade_County_1_grouper_15,Dade_County_1_2018_grouper_biomass)



export(Dade_County_1_snapper_biomass_data_combined, "Dade_County_1/data/Dade_County_1_snapper__biomass.csv")
export(Dade_County_1_grouper_biomass_data_combined, "Dade_County_1/data/Dade_County_1_grouper__biomass.csv")



#Dade County 2

Dade_County_2_2013 <- import("Dade_County_2/data/Dade_County_2_2013.xls")

Dade_County_2_2013_snapper <- merge(Dade_County_2_2013, snapper, by = c("SPECIES_CD"))
Dade_County_2_2013_snapper_biomass <- summarise_at(Dade_County_2_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2013_snapper_biomass$Year <- ('2013')
Dade_County_2_2013_snapper_biomass$Reef <- ('Dade County 2')


Dade_County_2_2013_grouper <- merge(Dade_County_2_2013, grouper, by = c("SPECIES_CD"))
Dade_County_2_2013_grouper_biomass <- summarise_at(Dade_County_2_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2013_grouper_biomass$Year <- ('2013')
Dade_County_2_2013_grouper_biomass$Reef <- ('Dade County 2')


Dade_County_2_2014 <- import("Dade_County_2/data/Dade_County_2_2014.xls")

Dade_County_2_2014_snapper <- merge(Dade_County_2_2014, snapper, by = c("SPECIES_CD"))
Dade_County_2_2014_snapper_biomass <- summarise_at(Dade_County_2_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2014_snapper_biomass$Year <- ('2014')
Dade_County_2_2014_snapper_biomass$Reef <- ('Dade County 2')


Dade_County_2_2014_grouper <- merge(Dade_County_2_2014, grouper, by = c("SPECIES_CD"))
Dade_County_2_2014_grouper_biomass <- summarise_at(Dade_County_2_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2014_grouper_biomass$Year <- ('2014')
Dade_County_2_2014_grouper_biomass$Reef <- ('Dade County 2')


Dade_County_2_2015 <- import("Dade_County_2/data/Dade_County_2_2015.xls")

Dade_County_2_2015_snapper <- merge(Dade_County_2_2015, snapper, by = c("SPECIES_CD"))
Dade_County_2_2015_snapper_biomass <- summarise_at(Dade_County_2_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2015_snapper_biomass$Year <- ('2015')
Dade_County_2_2015_snapper_biomass$Reef <- ('Dade County 2')


Dade_County_2_2015_grouper <- merge(Dade_County_2_2015, grouper, by = c("SPECIES_CD"))
Dade_County_2_2015_grouper_biomass <- summarise_at(Dade_County_2_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2015_grouper_biomass$Year <- ('2015')
Dade_County_2_2015_grouper_biomass$Reef <- ('Dade County 2')

Dade_County_2_2016 <- import("Dade_County_2/data/Dade_County_2_2016.xls")

Dade_County_2_2016_snapper <- merge(Dade_County_2_2016, snapper, by = c("SPECIES_CD"))
Dade_County_2_2016_snapper_biomass <- summarise_at(Dade_County_2_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2016_snapper_biomass$Year <- ('2016')
Dade_County_2_2016_snapper_biomass$Reef <- ('Dade County 2')


Dade_County_2_2016_grouper <- merge(Dade_County_2_2016, grouper, by = c("SPECIES_CD"))
Dade_County_2_2016_grouper_biomass <- summarise_at(Dade_County_2_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2016_grouper_biomass$Year <- ('2016')
Dade_County_2_2016_grouper_biomass$Reef <- ('Dade County 2')


Dade_County_2_2018 <- import("Dade_County_2/data/Dade_County_2_2018.xls")

Dade_County_2_2018_snapper <- merge(Dade_County_2_2018, snapper, by = c("SPECIES_CD"))
Dade_County_2_2018_snapper_biomass <- summarise_at(Dade_County_2_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2018_snapper_biomass$Year <- ('2018')
Dade_County_2_2018_snapper_biomass$Reef <- ('Dade County 2')


Dade_County_2_2018_grouper <- merge(Dade_County_2_2018, grouper, by = c("SPECIES_CD"))
Dade_County_2_2018_grouper_biomass <- summarise_at(Dade_County_2_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2018_grouper_biomass$Year <- ('2018')
Dade_County_2_2018_grouper_biomass$Reef <- ('Dade County 2')



### Combine all years together for snapper_ and grouper_ seperately



# Dade_County_2_snapper_1 <- rbind(Dade_County_2_1999_snapper_biomass,Dade_County_2_2000_snapper_biomass)
# Dade_County_2_snapper_2 <- rbind(Dade_County_2_snapper_1,Dade_County_2_2001_snapper_biomass)
# Dade_County_2_snapper_3 <- rbind(Dade_County_2_snapper_2,Dade_County_2_2002_snapper_biomass)
# Dade_County_2_snapper_4 <- rbind(Dade_County_2_snapper_3,Dade_County_2_2003_snapper_biomass)
# Dade_County_2_snapper_5 <- rbind(Dade_County_2_snapper_4,Dade_County_2_2004_snapper_biomass)
# Dade_County_2_snapper_6 <- rbind(Dade_County_2_snapper_5,Dade_County_2_2005_snapper_biomass)
# Dade_County_2_snapper_7 <- rbind(Dade_County_2_snapper_6,Dade_County_2_2006_snapper_biomass)
# Dade_County_2_snapper_8 <- rbind(Dade_County_2_snapper_7,Dade_County_2_2007_snapper_biomass)
# Dade_County_2_snapper_9 <- rbind(Dade_County_2_snapper_8,Dade_County_2_2008_snapper_biomass)
# Dade_County_2_snapper_10 <- rbind(Dade_County_2_snapper_9,Dade_County_2_2009_snapper_biomass)
# Dade_County_2_snapper_11<- rbind(Dade_County_2_snapper_10,Dade_County_2_2010_snapper_biomass)
# Dade_County_2_snapper_12 <- rbind(Dade_County_2_snapper_11,Dade_County_2_2011_snapper_biomass)
Dade_County_2_snapper_13 <- rbind(Dade_County_2_2013_snapper_biomass,Dade_County_2_2014_snapper_biomass)
Dade_County_2_snapper_14 <- rbind(Dade_County_2_snapper_13,Dade_County_2_2015_snapper_biomass)
Dade_County_2_snapper_15 <- rbind(Dade_County_2_snapper_14,Dade_County_2_2016_snapper_biomass)
Dade_County_2_snapper_biomass_data_combined <- rbind(Dade_County_2_snapper_15,Dade_County_2_2018_snapper_biomass)



# Dade_County_2_grouper_1 <- rbind(Dade_County_2_1999_grouper_biomass,Dade_County_2_2000_grouper_biomass)
# Dade_County_2_grouper_2 <- rbind(Dade_County_2_grouper_1,Dade_County_2_2001_grouper_biomass)
# Dade_County_2_grouper_3 <- rbind(Dade_County_2_grouper_2,Dade_County_2_2002_grouper_biomass)
# Dade_County_2_grouper_4 <- rbind(Dade_County_2_grouper_3,Dade_County_2_2003_grouper_biomass)
# Dade_County_2_grouper_5 <- rbind(Dade_County_2_grouper_4,Dade_County_2_2004_grouper_biomass)
# Dade_County_2_grouper_6 <- rbind(Dade_County_2_grouper_5,Dade_County_2_2005_grouper_biomass)
# Dade_County_2_grouper_7 <- rbind(Dade_County_2_grouper_6,Dade_County_2_2006_grouper_biomass)
# Dade_County_2_grouper_8 <- rbind(Dade_County_2_grouper_7,Dade_County_2_2007_grouper_biomass)
# Dade_County_2_grouper_9 <- rbind(Dade_County_2_grouper_8,Dade_County_2_2008_grouper_biomass)
# Dade_County_2_grouper_10 <- rbind(Dade_County_2_grouper_9,Dade_County_2_2009_grouper_biomass)
# Dade_County_2_grouper_11<- rbind(Dade_County_2_grouper_10,Dade_County_2_2010_grouper_biomass)
# Dade_County_2_grouper_12 <- rbind(Dade_County_2_grouper_11,Dade_County_2_2011_grouper_biomass)
Dade_County_2_grouper_13 <- rbind(Dade_County_2_2013_grouper_biomass,Dade_County_2_2014_grouper_biomass)
Dade_County_2_grouper_14 <- rbind(Dade_County_2_grouper_13,Dade_County_2_2015_grouper_biomass)
Dade_County_2_grouper_15 <- rbind(Dade_County_2_grouper_14,Dade_County_2_2016_grouper_biomass)
Dade_County_2_grouper_biomass_data_combined <- rbind(Dade_County_2_grouper_15,Dade_County_2_2018_grouper_biomass)



export(Dade_County_2_snapper_biomass_data_combined, "Dade_County_2/data/Dade_County_2_snapper__biomass.csv")
export(Dade_County_2_grouper_biomass_data_combined, "Dade_County_2/data/Dade_County_2_grouper__biomass.csv")



#Dade County 3

Dade_County_3_2013 <- import("Dade_County_3/data/Dade_County_3_2013.xls")

Dade_County_3_2013_snapper <- merge(Dade_County_3_2013, snapper, by = c("SPECIES_CD"))
Dade_County_3_2013_snapper_biomass <- summarise_at(Dade_County_3_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2013_snapper_biomass$Year <- ('2013')
Dade_County_3_2013_snapper_biomass$Reef <- ('Dade County 3')


Dade_County_3_2013_grouper <- merge(Dade_County_3_2013, grouper, by = c("SPECIES_CD"))
Dade_County_3_2013_grouper_biomass <- summarise_at(Dade_County_3_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2013_grouper_biomass$Year <- ('2013')
Dade_County_3_2013_grouper_biomass$Reef <- ('Dade County 3')


Dade_County_3_2014 <- import("Dade_County_3/data/Dade_County_3_2014.xls")

Dade_County_3_2014_snapper <- merge(Dade_County_3_2014, snapper, by = c("SPECIES_CD"))
Dade_County_3_2014_snapper_biomass <- summarise_at(Dade_County_3_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2014_snapper_biomass$Year <- ('2014')
Dade_County_3_2014_snapper_biomass$Reef <- ('Dade County 3')


Dade_County_3_2014_grouper <- merge(Dade_County_3_2014, grouper, by = c("SPECIES_CD"))
Dade_County_3_2014_grouper_biomass <- summarise_at(Dade_County_3_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2014_grouper_biomass$Year <- ('2014')
Dade_County_3_2014_grouper_biomass$Reef <- ('Dade County 3')


Dade_County_3_2015 <- import("Dade_County_3/data/Dade_County_3_2015.xls")

Dade_County_3_2015_snapper <- merge(Dade_County_3_2015, snapper, by = c("SPECIES_CD"))
Dade_County_3_2015_snapper_biomass <- summarise_at(Dade_County_3_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2015_snapper_biomass$Year <- ('2015')
Dade_County_3_2015_snapper_biomass$Reef <- ('Dade County 3')


Dade_County_3_2015_grouper <- merge(Dade_County_3_2015, grouper, by = c("SPECIES_CD"))
Dade_County_3_2015_grouper_biomass <- summarise_at(Dade_County_3_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2015_grouper_biomass$Year <- ('2015')
Dade_County_3_2015_grouper_biomass$Reef <- ('Dade County 3')

Dade_County_3_2016 <- import("Dade_County_3/data/Dade_County_3_2016.xls")

Dade_County_3_2016_snapper <- merge(Dade_County_3_2016, snapper, by = c("SPECIES_CD"))
Dade_County_3_2016_snapper_biomass <- summarise_at(Dade_County_3_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2016_snapper_biomass$Year <- ('2016')
Dade_County_3_2016_snapper_biomass$Reef <- ('Dade County 3')


Dade_County_3_2016_grouper <- merge(Dade_County_3_2016, grouper, by = c("SPECIES_CD"))
Dade_County_3_2016_grouper_biomass <- summarise_at(Dade_County_3_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2016_grouper_biomass$Year <- ('2016')
Dade_County_3_2016_grouper_biomass$Reef <- ('Dade County 3')


Dade_County_3_2018 <- import("Dade_County_3/data/Dade_County_3_2018.xls")

Dade_County_3_2018_snapper <- merge(Dade_County_3_2018, snapper, by = c("SPECIES_CD"))
Dade_County_3_2018_snapper_biomass <- summarise_at(Dade_County_3_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2018_snapper_biomass$Year <- ('2018')
Dade_County_3_2018_snapper_biomass$Reef <- ('Dade County 3')


Dade_County_3_2018_grouper <- merge(Dade_County_3_2018, grouper, by = c("SPECIES_CD"))
Dade_County_3_2018_grouper_biomass <- summarise_at(Dade_County_3_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2018_grouper_biomass$Year <- ('2018')
Dade_County_3_2018_grouper_biomass$Reef <- ('Dade County 3')



### Combine all years together for snapper_ and grouper_ seperately



# Dade_County_3_snapper_1 <- rbind(Dade_County_3_1999_snapper_biomass,Dade_County_3_2000_snapper_biomass)
# Dade_County_3_snapper_2 <- rbind(Dade_County_3_snapper_1,Dade_County_3_2001_snapper_biomass)
# Dade_County_3_snapper_3 <- rbind(Dade_County_3_snapper_2,Dade_County_3_2002_snapper_biomass)
# Dade_County_3_snapper_4 <- rbind(Dade_County_3_snapper_3,Dade_County_3_2003_snapper_biomass)
# Dade_County_3_snapper_5 <- rbind(Dade_County_3_snapper_4,Dade_County_3_2004_snapper_biomass)
# Dade_County_3_snapper_6 <- rbind(Dade_County_3_snapper_5,Dade_County_3_2005_snapper_biomass)
# Dade_County_3_snapper_7 <- rbind(Dade_County_3_snapper_6,Dade_County_3_2006_snapper_biomass)
# Dade_County_3_snapper_8 <- rbind(Dade_County_3_snapper_7,Dade_County_3_2007_snapper_biomass)
# Dade_County_3_snapper_9 <- rbind(Dade_County_3_snapper_8,Dade_County_3_2008_snapper_biomass)
# Dade_County_3_snapper_10 <- rbind(Dade_County_3_snapper_9,Dade_County_3_2009_snapper_biomass)
# Dade_County_3_snapper_11<- rbind(Dade_County_3_snapper_10,Dade_County_3_2010_snapper_biomass)
# Dade_County_3_snapper_12 <- rbind(Dade_County_3_snapper_11,Dade_County_3_2011_snapper_biomass)
Dade_County_3_snapper_13 <- rbind(Dade_County_3_2013_snapper_biomass,Dade_County_3_2014_snapper_biomass)
Dade_County_3_snapper_14 <- rbind(Dade_County_3_snapper_13,Dade_County_3_2015_snapper_biomass)
Dade_County_3_snapper_15 <- rbind(Dade_County_3_snapper_14,Dade_County_3_2016_snapper_biomass)
Dade_County_3_snapper_biomass_data_combined <- rbind(Dade_County_3_snapper_15,Dade_County_3_2018_snapper_biomass)



# Dade_County_3_grouper_1 <- rbind(Dade_County_3_1999_grouper_biomass,Dade_County_3_2000_grouper_biomass)
# Dade_County_3_grouper_2 <- rbind(Dade_County_3_grouper_1,Dade_County_3_2001_grouper_biomass)
# Dade_County_3_grouper_3 <- rbind(Dade_County_3_grouper_2,Dade_County_3_2002_grouper_biomass)
# Dade_County_3_grouper_4 <- rbind(Dade_County_3_grouper_3,Dade_County_3_2003_grouper_biomass)
# Dade_County_3_grouper_5 <- rbind(Dade_County_3_grouper_4,Dade_County_3_2004_grouper_biomass)
# Dade_County_3_grouper_6 <- rbind(Dade_County_3_grouper_5,Dade_County_3_2005_grouper_biomass)
# Dade_County_3_grouper_7 <- rbind(Dade_County_3_grouper_6,Dade_County_3_2006_grouper_biomass)
# Dade_County_3_grouper_8 <- rbind(Dade_County_3_grouper_7,Dade_County_3_2007_grouper_biomass)
# Dade_County_3_grouper_9 <- rbind(Dade_County_3_grouper_8,Dade_County_3_2008_grouper_biomass)
# Dade_County_3_grouper_10 <- rbind(Dade_County_3_grouper_9,Dade_County_3_2009_grouper_biomass)
# Dade_County_3_grouper_11<- rbind(Dade_County_3_grouper_10,Dade_County_3_2010_grouper_biomass)
# Dade_County_3_grouper_12 <- rbind(Dade_County_3_grouper_11,Dade_County_3_2011_grouper_biomass)
Dade_County_3_grouper_13 <- rbind(Dade_County_3_2013_grouper_biomass,Dade_County_3_2014_grouper_biomass)
Dade_County_3_grouper_14 <- rbind(Dade_County_3_grouper_13,Dade_County_3_2015_grouper_biomass)
Dade_County_3_grouper_15 <- rbind(Dade_County_3_grouper_14,Dade_County_3_2016_grouper_biomass)
Dade_County_3_grouper_biomass_data_combined <- rbind(Dade_County_3_grouper_15,Dade_County_3_2018_grouper_biomass)



export(Dade_County_3_snapper_biomass_data_combined, "Dade_County_3/data/Dade_County_3_snapper__biomass.csv")
export(Dade_County_3_grouper_biomass_data_combined, "Dade_County_3/data/Dade_County_3_grouper__biomass.csv")



#Dade County 4

Dade_County_4_2013 <- import("Dade_County_4/data/Dade_County_4_2013.xls")

Dade_County_4_2013_snapper <- merge(Dade_County_4_2013, snapper, by = c("SPECIES_CD"))
Dade_County_4_2013_snapper_biomass <- summarise_at(Dade_County_4_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2013_snapper_biomass$Year <- ('2013')
Dade_County_4_2013_snapper_biomass$Reef <- ('Dade County 4')


Dade_County_4_2013_grouper <- merge(Dade_County_4_2013, grouper, by = c("SPECIES_CD"))
Dade_County_4_2013_grouper_biomass <- summarise_at(Dade_County_4_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2013_grouper_biomass$Year <- ('2013')
Dade_County_4_2013_grouper_biomass$Reef <- ('Dade County 4')


Dade_County_4_2014 <- import("Dade_County_4/data/Dade_County_4_2014.xls")

Dade_County_4_2014_snapper <- merge(Dade_County_4_2014, snapper, by = c("SPECIES_CD"))
Dade_County_4_2014_snapper_biomass <- summarise_at(Dade_County_4_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2014_snapper_biomass$Year <- ('2014')
Dade_County_4_2014_snapper_biomass$Reef <- ('Dade County 4')


Dade_County_4_2014_grouper <- merge(Dade_County_4_2014, grouper, by = c("SPECIES_CD"))
Dade_County_4_2014_grouper_biomass <- summarise_at(Dade_County_4_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2014_grouper_biomass$Year <- ('2014')
Dade_County_4_2014_grouper_biomass$Reef <- ('Dade County 4')


Dade_County_4_2015 <- import("Dade_County_4/data/Dade_County_4_2015.xls")

Dade_County_4_2015_snapper <- merge(Dade_County_4_2015, snapper, by = c("SPECIES_CD"))
Dade_County_4_2015_snapper_biomass <- summarise_at(Dade_County_4_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2015_snapper_biomass$Year <- ('2015')
Dade_County_4_2015_snapper_biomass$Reef <- ('Dade County 4')


Dade_County_4_2015_grouper <- merge(Dade_County_4_2015, grouper, by = c("SPECIES_CD"))
Dade_County_4_2015_grouper_biomass <- summarise_at(Dade_County_4_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2015_grouper_biomass$Year <- ('2015')
Dade_County_4_2015_grouper_biomass$Reef <- ('Dade County 4')

Dade_County_4_2016 <- import("Dade_County_4/data/Dade_County_4_2016.xls")

Dade_County_4_2016_snapper <- merge(Dade_County_4_2016, snapper, by = c("SPECIES_CD"))
Dade_County_4_2016_snapper_biomass <- summarise_at(Dade_County_4_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2016_snapper_biomass$Year <- ('2016')
Dade_County_4_2016_snapper_biomass$Reef <- ('Dade County 4')


Dade_County_4_2016_grouper <- merge(Dade_County_4_2016, grouper, by = c("SPECIES_CD"))
Dade_County_4_2016_grouper_biomass <- summarise_at(Dade_County_4_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2016_grouper_biomass$Year <- ('2016')
Dade_County_4_2016_grouper_biomass$Reef <- ('Dade County 4')


Dade_County_4_2018 <- import("Dade_County_4/data/Dade_County_4_2018.xls")

Dade_County_4_2018_snapper <- merge(Dade_County_4_2018, snapper, by = c("SPECIES_CD"))
Dade_County_4_2018_snapper_biomass <- summarise_at(Dade_County_4_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2018_snapper_biomass$Year <- ('2018')
Dade_County_4_2018_snapper_biomass$Reef <- ('Dade County 4')


Dade_County_4_2018_grouper <- merge(Dade_County_4_2018, grouper, by = c("SPECIES_CD"))
Dade_County_4_2018_grouper_biomass <- summarise_at(Dade_County_4_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2018_grouper_biomass$Year <- ('2018')
Dade_County_4_2018_grouper_biomass$Reef <- ('Dade County 4')



### Combine all years together for snapper_ and grouper_ seperately



# Dade_County_4_snapper_1 <- rbind(Dade_County_4_1999_snapper_biomass,Dade_County_4_2000_snapper_biomass)
# Dade_County_4_snapper_2 <- rbind(Dade_County_4_snapper_1,Dade_County_4_2001_snapper_biomass)
# Dade_County_4_snapper_3 <- rbind(Dade_County_4_snapper_2,Dade_County_4_2002_snapper_biomass)
# Dade_County_4_snapper_4 <- rbind(Dade_County_4_snapper_3,Dade_County_4_2003_snapper_biomass)
# Dade_County_4_snapper_5 <- rbind(Dade_County_4_snapper_4,Dade_County_4_2004_snapper_biomass)
# Dade_County_4_snapper_6 <- rbind(Dade_County_4_snapper_5,Dade_County_4_2005_snapper_biomass)
# Dade_County_4_snapper_7 <- rbind(Dade_County_4_snapper_6,Dade_County_4_2006_snapper_biomass)
# Dade_County_4_snapper_8 <- rbind(Dade_County_4_snapper_7,Dade_County_4_2007_snapper_biomass)
# Dade_County_4_snapper_9 <- rbind(Dade_County_4_snapper_8,Dade_County_4_2008_snapper_biomass)
# Dade_County_4_snapper_10 <- rbind(Dade_County_4_snapper_9,Dade_County_4_2009_snapper_biomass)
# Dade_County_4_snapper_11<- rbind(Dade_County_4_snapper_10,Dade_County_4_2010_snapper_biomass)
# Dade_County_4_snapper_12 <- rbind(Dade_County_4_snapper_11,Dade_County_4_2011_snapper_biomass)
Dade_County_4_snapper_13 <- rbind(Dade_County_4_2013_snapper_biomass,Dade_County_4_2014_snapper_biomass)
Dade_County_4_snapper_14 <- rbind(Dade_County_4_snapper_13,Dade_County_4_2015_snapper_biomass)
Dade_County_4_snapper_15 <- rbind(Dade_County_4_snapper_14,Dade_County_4_2016_snapper_biomass)
Dade_County_4_snapper_biomass_data_combined <- rbind(Dade_County_4_snapper_15,Dade_County_4_2018_snapper_biomass)



# Dade_County_4_grouper_1 <- rbind(Dade_County_4_1999_grouper_biomass,Dade_County_4_2000_grouper_biomass)
# Dade_County_4_grouper_2 <- rbind(Dade_County_4_grouper_1,Dade_County_4_2001_grouper_biomass)
# Dade_County_4_grouper_3 <- rbind(Dade_County_4_grouper_2,Dade_County_4_2002_grouper_biomass)
# Dade_County_4_grouper_4 <- rbind(Dade_County_4_grouper_3,Dade_County_4_2003_grouper_biomass)
# Dade_County_4_grouper_5 <- rbind(Dade_County_4_grouper_4,Dade_County_4_2004_grouper_biomass)
# Dade_County_4_grouper_6 <- rbind(Dade_County_4_grouper_5,Dade_County_4_2005_grouper_biomass)
# Dade_County_4_grouper_7 <- rbind(Dade_County_4_grouper_6,Dade_County_4_2006_grouper_biomass)
# Dade_County_4_grouper_8 <- rbind(Dade_County_4_grouper_7,Dade_County_4_2007_grouper_biomass)
# Dade_County_4_grouper_9 <- rbind(Dade_County_4_grouper_8,Dade_County_4_2008_grouper_biomass)
# Dade_County_4_grouper_10 <- rbind(Dade_County_4_grouper_9,Dade_County_4_2009_grouper_biomass)
# Dade_County_4_grouper_11<- rbind(Dade_County_4_grouper_10,Dade_County_4_2010_grouper_biomass)
# Dade_County_4_grouper_12 <- rbind(Dade_County_4_grouper_11,Dade_County_4_2011_grouper_biomass)
Dade_County_4_grouper_13 <- rbind(Dade_County_4_2013_grouper_biomass,Dade_County_4_2014_grouper_biomass)
Dade_County_4_grouper_14 <- rbind(Dade_County_4_grouper_13,Dade_County_4_2015_grouper_biomass)
Dade_County_4_grouper_15 <- rbind(Dade_County_4_grouper_14,Dade_County_4_2016_grouper_biomass)
Dade_County_4_grouper_biomass_data_combined <- rbind(Dade_County_4_grouper_15,Dade_County_4_2018_grouper_biomass)



export(Dade_County_4_snapper_biomass_data_combined, "Dade_County_4/data/Dade_County_4_snapper__biomass.csv")
export(Dade_County_4_grouper_biomass_data_combined, "Dade_County_4/data/Dade_County_4_grouper__biomass.csv")



#Dade County 5

Dade_County_5_2013 <- import("Dade_County_5/data/Dade_County_5_2013.xls")

Dade_County_5_2013_snapper <- merge(Dade_County_5_2013, snapper, by = c("SPECIES_CD"))
Dade_County_5_2013_snapper_biomass <- summarise_at(Dade_County_5_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2013_snapper_biomass$Year <- ('2013')
Dade_County_5_2013_snapper_biomass$Reef <- ('Dade County 5')


Dade_County_5_2013_grouper <- merge(Dade_County_5_2013, grouper, by = c("SPECIES_CD"))
Dade_County_5_2013_grouper_biomass <- summarise_at(Dade_County_5_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2013_grouper_biomass$Year <- ('2013')
Dade_County_5_2013_grouper_biomass$Reef <- ('Dade County 5')


Dade_County_5_2014 <- import("Dade_County_5/data/Dade_County_5_2014.xls")

Dade_County_5_2014_snapper <- merge(Dade_County_5_2014, snapper, by = c("SPECIES_CD"))
Dade_County_5_2014_snapper_biomass <- summarise_at(Dade_County_5_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2014_snapper_biomass$Year <- ('2014')
Dade_County_5_2014_snapper_biomass$Reef <- ('Dade County 5')


Dade_County_5_2014_grouper <- merge(Dade_County_5_2014, grouper, by = c("SPECIES_CD"))
Dade_County_5_2014_grouper_biomass <- summarise_at(Dade_County_5_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2014_grouper_biomass$Year <- ('2014')
Dade_County_5_2014_grouper_biomass$Reef <- ('Dade County 5')


Dade_County_5_2015 <- import("Dade_County_5/data/Dade_County_5_2015.xls")

Dade_County_5_2015_snapper <- merge(Dade_County_5_2015, snapper, by = c("SPECIES_CD"))
Dade_County_5_2015_snapper_biomass <- summarise_at(Dade_County_5_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2015_snapper_biomass$Year <- ('2015')
Dade_County_5_2015_snapper_biomass$Reef <- ('Dade County 5')


Dade_County_5_2015_grouper <- merge(Dade_County_5_2015, grouper, by = c("SPECIES_CD"))
Dade_County_5_2015_grouper_biomass <- summarise_at(Dade_County_5_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2015_grouper_biomass$Year <- ('2015')
Dade_County_5_2015_grouper_biomass$Reef <- ('Dade County 5')

Dade_County_5_2016 <- import("Dade_County_5/data/Dade_County_5_2016.xls")

Dade_County_5_2016_snapper <- merge(Dade_County_5_2016, snapper, by = c("SPECIES_CD"))
Dade_County_5_2016_snapper_biomass <- summarise_at(Dade_County_5_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2016_snapper_biomass$Year <- ('2016')
Dade_County_5_2016_snapper_biomass$Reef <- ('Dade County 5')


Dade_County_5_2016_grouper <- merge(Dade_County_5_2016, grouper, by = c("SPECIES_CD"))
Dade_County_5_2016_grouper_biomass <- summarise_at(Dade_County_5_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2016_grouper_biomass$Year <- ('2016')
Dade_County_5_2016_grouper_biomass$Reef <- ('Dade County 5')


Dade_County_5_2018 <- import("Dade_County_5/data/Dade_County_5_2018.xls")

Dade_County_5_2018_snapper <- merge(Dade_County_5_2018, snapper, by = c("SPECIES_CD"))
Dade_County_5_2018_snapper_biomass <- summarise_at(Dade_County_5_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2018_snapper_biomass$Year <- ('2018')
Dade_County_5_2018_snapper_biomass$Reef <- ('Dade County 5')


Dade_County_5_2018_grouper <- merge(Dade_County_5_2018, grouper, by = c("SPECIES_CD"))
Dade_County_5_2018_grouper_biomass <- summarise_at(Dade_County_5_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2018_grouper_biomass$Year <- ('2018')
Dade_County_5_2018_grouper_biomass$Reef <- ('Dade County 5')



### Combine all years together for snapper_ and grouper_ seperately



# Dade_County_5_snapper_1 <- rbind(Dade_County_5_1999_snapper_biomass,Dade_County_5_2000_snapper_biomass)
# Dade_County_5_snapper_2 <- rbind(Dade_County_5_snapper_1,Dade_County_5_2001_snapper_biomass)
# Dade_County_5_snapper_3 <- rbind(Dade_County_5_snapper_2,Dade_County_5_2002_snapper_biomass)
# Dade_County_5_snapper_4 <- rbind(Dade_County_5_snapper_3,Dade_County_5_2003_snapper_biomass)
# Dade_County_5_snapper_5 <- rbind(Dade_County_5_snapper_4,Dade_County_5_2004_snapper_biomass)
# Dade_County_5_snapper_6 <- rbind(Dade_County_5_snapper_5,Dade_County_5_2005_snapper_biomass)
# Dade_County_5_snapper_7 <- rbind(Dade_County_5_snapper_6,Dade_County_5_2006_snapper_biomass)
# Dade_County_5_snapper_8 <- rbind(Dade_County_5_snapper_7,Dade_County_5_2007_snapper_biomass)
# Dade_County_5_snapper_9 <- rbind(Dade_County_5_snapper_8,Dade_County_5_2008_snapper_biomass)
# Dade_County_5_snapper_10 <- rbind(Dade_County_5_snapper_9,Dade_County_5_2009_snapper_biomass)
# Dade_County_5_snapper_11<- rbind(Dade_County_5_snapper_10,Dade_County_5_2010_snapper_biomass)
# Dade_County_5_snapper_12 <- rbind(Dade_County_5_snapper_11,Dade_County_5_2011_snapper_biomass)
Dade_County_5_snapper_13 <- rbind(Dade_County_5_2013_snapper_biomass,Dade_County_5_2014_snapper_biomass)
Dade_County_5_snapper_14 <- rbind(Dade_County_5_snapper_13,Dade_County_5_2015_snapper_biomass)
Dade_County_5_snapper_15 <- rbind(Dade_County_5_snapper_14,Dade_County_5_2016_snapper_biomass)
Dade_County_5_snapper_biomass_data_combined <- rbind(Dade_County_5_snapper_15,Dade_County_5_2018_snapper_biomass)



# Dade_County_5_grouper_1 <- rbind(Dade_County_5_1999_grouper_biomass,Dade_County_5_2000_grouper_biomass)
# Dade_County_5_grouper_2 <- rbind(Dade_County_5_grouper_1,Dade_County_5_2001_grouper_biomass)
# Dade_County_5_grouper_3 <- rbind(Dade_County_5_grouper_2,Dade_County_5_2002_grouper_biomass)
# Dade_County_5_grouper_4 <- rbind(Dade_County_5_grouper_3,Dade_County_5_2003_grouper_biomass)
# Dade_County_5_grouper_5 <- rbind(Dade_County_5_grouper_4,Dade_County_5_2004_grouper_biomass)
# Dade_County_5_grouper_6 <- rbind(Dade_County_5_grouper_5,Dade_County_5_2005_grouper_biomass)
# Dade_County_5_grouper_7 <- rbind(Dade_County_5_grouper_6,Dade_County_5_2006_grouper_biomass)
# Dade_County_5_grouper_8 <- rbind(Dade_County_5_grouper_7,Dade_County_5_2007_grouper_biomass)
# Dade_County_5_grouper_9 <- rbind(Dade_County_5_grouper_8,Dade_County_5_2008_grouper_biomass)
# Dade_County_5_grouper_10 <- rbind(Dade_County_5_grouper_9,Dade_County_5_2009_grouper_biomass)
# Dade_County_5_grouper_11<- rbind(Dade_County_5_grouper_10,Dade_County_5_2010_grouper_biomass)
# Dade_County_5_grouper_12 <- rbind(Dade_County_5_grouper_11,Dade_County_5_2011_grouper_biomass)
Dade_County_5_grouper_13 <- rbind(Dade_County_5_2013_grouper_biomass,Dade_County_5_2014_grouper_biomass)
Dade_County_5_grouper_14 <- rbind(Dade_County_5_grouper_13,Dade_County_5_2015_grouper_biomass)
Dade_County_5_grouper_15 <- rbind(Dade_County_5_grouper_14,Dade_County_5_2016_grouper_biomass)
Dade_County_5_grouper_biomass_data_combined <- rbind(Dade_County_5_grouper_15,Dade_County_5_2018_grouper_biomass)



export(Dade_County_5_snapper_biomass_data_combined, "Dade_County_5/data/Dade_County_5_snapper__biomass.csv")
export(Dade_County_5_grouper_biomass_data_combined, "Dade_County_5/data/Dade_County_5_grouper__biomass.csv")




#Dade County 6

Dade_County_6_2013 <- import("Dade_County_6/data/Dade_County_6_2013.xls")

Dade_County_6_2013_snapper <- merge(Dade_County_6_2013, snapper, by = c("SPECIES_CD"))
Dade_County_6_2013_snapper_biomass <- summarise_at(Dade_County_6_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2013_snapper_biomass$Year <- ('2013')
Dade_County_6_2013_snapper_biomass$Reef <- ('Dade County 6')


Dade_County_6_2013_grouper <- merge(Dade_County_6_2013, grouper, by = c("SPECIES_CD"))
Dade_County_6_2013_grouper_biomass <- summarise_at(Dade_County_6_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2013_grouper_biomass$Year <- ('2013')
Dade_County_6_2013_grouper_biomass$Reef <- ('Dade County 6')


Dade_County_6_2014 <- import("Dade_County_6/data/Dade_County_6_2014.xls")

Dade_County_6_2014_snapper <- merge(Dade_County_6_2014, snapper, by = c("SPECIES_CD"))
Dade_County_6_2014_snapper_biomass <- summarise_at(Dade_County_6_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2014_snapper_biomass$Year <- ('2014')
Dade_County_6_2014_snapper_biomass$Reef <- ('Dade County 6')


Dade_County_6_2014_grouper <- merge(Dade_County_6_2014, grouper, by = c("SPECIES_CD"))
Dade_County_6_2014_grouper_biomass <- summarise_at(Dade_County_6_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2014_grouper_biomass$Year <- ('2014')
Dade_County_6_2014_grouper_biomass$Reef <- ('Dade County 6')


Dade_County_6_2015 <- import("Dade_County_6/data/Dade_County_6_2015.xls")

Dade_County_6_2015_snapper <- merge(Dade_County_6_2015, snapper, by = c("SPECIES_CD"))
Dade_County_6_2015_snapper_biomass <- summarise_at(Dade_County_6_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2015_snapper_biomass$Year <- ('2015')
Dade_County_6_2015_snapper_biomass$Reef <- ('Dade County 6')


Dade_County_6_2015_grouper <- merge(Dade_County_6_2015, grouper, by = c("SPECIES_CD"))
Dade_County_6_2015_grouper_biomass <- summarise_at(Dade_County_6_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2015_grouper_biomass$Year <- ('2015')
Dade_County_6_2015_grouper_biomass$Reef <- ('Dade County 6')

Dade_County_6_2016 <- import("Dade_County_6/data/Dade_County_6_2016.xls")

Dade_County_6_2016_snapper <- merge(Dade_County_6_2016, snapper, by = c("SPECIES_CD"))
Dade_County_6_2016_snapper_biomass <- summarise_at(Dade_County_6_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2016_snapper_biomass$Year <- ('2016')
Dade_County_6_2016_snapper_biomass$Reef <- ('Dade County 6')


Dade_County_6_2016_grouper <- merge(Dade_County_6_2016, grouper, by = c("SPECIES_CD"))
Dade_County_6_2016_grouper_biomass <- summarise_at(Dade_County_6_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2016_grouper_biomass$Year <- ('2016')
Dade_County_6_2016_grouper_biomass$Reef <- ('Dade County 6')


Dade_County_6_2018 <- import("Dade_County_6/data/Dade_County_6_2018.xls")

Dade_County_6_2018_snapper <- merge(Dade_County_6_2018, snapper, by = c("SPECIES_CD"))
Dade_County_6_2018_snapper_biomass <- summarise_at(Dade_County_6_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2018_snapper_biomass$Year <- ('2018')
Dade_County_6_2018_snapper_biomass$Reef <- ('Dade County 6')


Dade_County_6_2018_grouper <- merge(Dade_County_6_2018, grouper, by = c("SPECIES_CD"))
Dade_County_6_2018_grouper_biomass <- summarise_at(Dade_County_6_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2018_grouper_biomass$Year <- ('2018')
Dade_County_6_2018_grouper_biomass$Reef <- ('Dade County 6')



### Combine all years together for snapper_ and grouper_ seperately



# Dade_County_6_snapper_1 <- rbind(Dade_County_6_1999_snapper_biomass,Dade_County_6_2000_snapper_biomass)
# Dade_County_6_snapper_2 <- rbind(Dade_County_6_snapper_1,Dade_County_6_2001_snapper_biomass)
# Dade_County_6_snapper_3 <- rbind(Dade_County_6_snapper_2,Dade_County_6_2002_snapper_biomass)
# Dade_County_6_snapper_4 <- rbind(Dade_County_6_snapper_3,Dade_County_6_2003_snapper_biomass)
# Dade_County_6_snapper_5 <- rbind(Dade_County_6_snapper_4,Dade_County_6_2004_snapper_biomass)
# Dade_County_6_snapper_6 <- rbind(Dade_County_6_snapper_5,Dade_County_6_2005_snapper_biomass)
# Dade_County_6_snapper_7 <- rbind(Dade_County_6_snapper_6,Dade_County_6_2006_snapper_biomass)
# Dade_County_6_snapper_8 <- rbind(Dade_County_6_snapper_7,Dade_County_6_2007_snapper_biomass)
# Dade_County_6_snapper_9 <- rbind(Dade_County_6_snapper_8,Dade_County_6_2008_snapper_biomass)
# Dade_County_6_snapper_10 <- rbind(Dade_County_6_snapper_9,Dade_County_6_2009_snapper_biomass)
# Dade_County_6_snapper_11<- rbind(Dade_County_6_snapper_10,Dade_County_6_2010_snapper_biomass)
# Dade_County_6_snapper_12 <- rbind(Dade_County_6_snapper_11,Dade_County_6_2011_snapper_biomass)
Dade_County_6_snapper_13 <- rbind(Dade_County_6_2013_snapper_biomass,Dade_County_6_2014_snapper_biomass)
Dade_County_6_snapper_14 <- rbind(Dade_County_6_snapper_13,Dade_County_6_2015_snapper_biomass)
Dade_County_6_snapper_15 <- rbind(Dade_County_6_snapper_14,Dade_County_6_2016_snapper_biomass)
Dade_County_6_snapper_biomass_data_combined <- rbind(Dade_County_6_snapper_15,Dade_County_6_2018_snapper_biomass)



# Dade_County_6_grouper_1 <- rbind(Dade_County_6_1999_grouper_biomass,Dade_County_6_2000_grouper_biomass)
# Dade_County_6_grouper_2 <- rbind(Dade_County_6_grouper_1,Dade_County_6_2001_grouper_biomass)
# Dade_County_6_grouper_3 <- rbind(Dade_County_6_grouper_2,Dade_County_6_2002_grouper_biomass)
# Dade_County_6_grouper_4 <- rbind(Dade_County_6_grouper_3,Dade_County_6_2003_grouper_biomass)
# Dade_County_6_grouper_5 <- rbind(Dade_County_6_grouper_4,Dade_County_6_2004_grouper_biomass)
# Dade_County_6_grouper_6 <- rbind(Dade_County_6_grouper_5,Dade_County_6_2005_grouper_biomass)
# Dade_County_6_grouper_7 <- rbind(Dade_County_6_grouper_6,Dade_County_6_2006_grouper_biomass)
# Dade_County_6_grouper_8 <- rbind(Dade_County_6_grouper_7,Dade_County_6_2007_grouper_biomass)
# Dade_County_6_grouper_9 <- rbind(Dade_County_6_grouper_8,Dade_County_6_2008_grouper_biomass)
# Dade_County_6_grouper_10 <- rbind(Dade_County_6_grouper_9,Dade_County_6_2009_grouper_biomass)
# Dade_County_6_grouper_11<- rbind(Dade_County_6_grouper_10,Dade_County_6_2010_grouper_biomass)
# Dade_County_6_grouper_12 <- rbind(Dade_County_6_grouper_11,Dade_County_6_2011_grouper_biomass)
Dade_County_6_grouper_13 <- rbind(Dade_County_6_2013_grouper_biomass,Dade_County_6_2014_grouper_biomass)
Dade_County_6_grouper_14 <- rbind(Dade_County_6_grouper_13,Dade_County_6_2015_grouper_biomass)
Dade_County_6_grouper_15 <- rbind(Dade_County_6_grouper_14,Dade_County_6_2016_grouper_biomass)
Dade_County_6_grouper_biomass_data_combined <- rbind(Dade_County_6_grouper_15,Dade_County_6_2018_grouper_biomass)



export(Dade_County_6_snapper_biomass_data_combined, "Dade_County_6/data/Dade_County_6_snapper__biomass.csv")
export(Dade_County_6_grouper_biomass_data_combined, "Dade_County_6/data/Dade_County_6_grouper__biomass.csv")



#Dade County 7

Dade_County_7_2013 <- import("Dade_County_7/data/Dade_County_7_2013.xls")

Dade_County_7_2013_snapper <- merge(Dade_County_7_2013, snapper, by = c("SPECIES_CD"))
Dade_County_7_2013_snapper_biomass <- summarise_at(Dade_County_7_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2013_snapper_biomass$Year <- ('2013')
Dade_County_7_2013_snapper_biomass$Reef <- ('Dade County 7')


Dade_County_7_2013_grouper <- merge(Dade_County_7_2013, grouper, by = c("SPECIES_CD"))
Dade_County_7_2013_grouper_biomass <- summarise_at(Dade_County_7_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2013_grouper_biomass$Year <- ('2013')
Dade_County_7_2013_grouper_biomass$Reef <- ('Dade County 7')


Dade_County_7_2014 <- import("Dade_County_7/data/Dade_County_7_2014.xls")

Dade_County_7_2014_snapper <- merge(Dade_County_7_2014, snapper, by = c("SPECIES_CD"))
Dade_County_7_2014_snapper_biomass <- summarise_at(Dade_County_7_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2014_snapper_biomass$Year <- ('2014')
Dade_County_7_2014_snapper_biomass$Reef <- ('Dade County 7')


Dade_County_7_2014_grouper <- merge(Dade_County_7_2014, grouper, by = c("SPECIES_CD"))
Dade_County_7_2014_grouper_biomass <- summarise_at(Dade_County_7_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2014_grouper_biomass$Year <- ('2014')
Dade_County_7_2014_grouper_biomass$Reef <- ('Dade County 7')


Dade_County_7_2015 <- import("Dade_County_7/data/Dade_County_7_2015.xls")

Dade_County_7_2015_snapper <- merge(Dade_County_7_2015, snapper, by = c("SPECIES_CD"))
Dade_County_7_2015_snapper_biomass <- summarise_at(Dade_County_7_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2015_snapper_biomass$Year <- ('2015')
Dade_County_7_2015_snapper_biomass$Reef <- ('Dade County 7')


Dade_County_7_2015_grouper <- merge(Dade_County_7_2015, grouper, by = c("SPECIES_CD"))
Dade_County_7_2015_grouper_biomass <- summarise_at(Dade_County_7_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2015_grouper_biomass$Year <- ('2015')
Dade_County_7_2015_grouper_biomass$Reef <- ('Dade County 7')

Dade_County_7_2016 <- import("Dade_County_7/data/Dade_County_7_2016.xls")

Dade_County_7_2016_snapper <- merge(Dade_County_7_2016, snapper, by = c("SPECIES_CD"))
Dade_County_7_2016_snapper_biomass <- summarise_at(Dade_County_7_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2016_snapper_biomass$Year <- ('2016')
Dade_County_7_2016_snapper_biomass$Reef <- ('Dade County 7')


Dade_County_7_2016_grouper <- merge(Dade_County_7_2016, grouper, by = c("SPECIES_CD"))
Dade_County_7_2016_grouper_biomass <- summarise_at(Dade_County_7_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2016_grouper_biomass$Year <- ('2016')
Dade_County_7_2016_grouper_biomass$Reef <- ('Dade County 7')


Dade_County_7_2018 <- import("Dade_County_7/data/Dade_County_7_2018.xls")

Dade_County_7_2018_snapper <- merge(Dade_County_7_2018, snapper, by = c("SPECIES_CD"))
Dade_County_7_2018_snapper_biomass <- summarise_at(Dade_County_7_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2018_snapper_biomass$Year <- ('2018')
Dade_County_7_2018_snapper_biomass$Reef <- ('Dade County 7')


Dade_County_7_2018_grouper <- merge(Dade_County_7_2018, grouper, by = c("SPECIES_CD"))
Dade_County_7_2018_grouper_biomass <- summarise_at(Dade_County_7_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2018_grouper_biomass$Year <- ('2018')
Dade_County_7_2018_grouper_biomass$Reef <- ('Dade County 7')



### Combine all years together for snapper_ and grouper_ seperately



# Dade_County_7_snapper_1 <- rbind(Dade_County_7_1999_snapper_biomass,Dade_County_7_2000_snapper_biomass)
# Dade_County_7_snapper_2 <- rbind(Dade_County_7_snapper_1,Dade_County_7_2001_snapper_biomass)
# Dade_County_7_snapper_3 <- rbind(Dade_County_7_snapper_2,Dade_County_7_2002_snapper_biomass)
# Dade_County_7_snapper_4 <- rbind(Dade_County_7_snapper_3,Dade_County_7_2003_snapper_biomass)
# Dade_County_7_snapper_5 <- rbind(Dade_County_7_snapper_4,Dade_County_7_2004_snapper_biomass)
# Dade_County_7_snapper_6 <- rbind(Dade_County_7_snapper_5,Dade_County_7_2005_snapper_biomass)
# Dade_County_7_snapper_7 <- rbind(Dade_County_7_snapper_6,Dade_County_7_2006_snapper_biomass)
# Dade_County_7_snapper_8 <- rbind(Dade_County_7_snapper_7,Dade_County_7_2007_snapper_biomass)
# Dade_County_7_snapper_9 <- rbind(Dade_County_7_snapper_8,Dade_County_7_2008_snapper_biomass)
# Dade_County_7_snapper_10 <- rbind(Dade_County_7_snapper_9,Dade_County_7_2009_snapper_biomass)
# Dade_County_7_snapper_11<- rbind(Dade_County_7_snapper_10,Dade_County_7_2010_snapper_biomass)
# Dade_County_7_snapper_12 <- rbind(Dade_County_7_snapper_11,Dade_County_7_2011_snapper_biomass)
Dade_County_7_snapper_13 <- rbind(Dade_County_7_2013_snapper_biomass,Dade_County_7_2014_snapper_biomass)
Dade_County_7_snapper_14 <- rbind(Dade_County_7_snapper_13,Dade_County_7_2015_snapper_biomass)
Dade_County_7_snapper_15 <- rbind(Dade_County_7_snapper_14,Dade_County_7_2016_snapper_biomass)
Dade_County_7_snapper_biomass_data_combined <- rbind(Dade_County_7_snapper_15,Dade_County_7_2018_snapper_biomass)



# Dade_County_7_grouper_1 <- rbind(Dade_County_7_1999_grouper_biomass,Dade_County_7_2000_grouper_biomass)
# Dade_County_7_grouper_2 <- rbind(Dade_County_7_grouper_1,Dade_County_7_2001_grouper_biomass)
# Dade_County_7_grouper_3 <- rbind(Dade_County_7_grouper_2,Dade_County_7_2002_grouper_biomass)
# Dade_County_7_grouper_4 <- rbind(Dade_County_7_grouper_3,Dade_County_7_2003_grouper_biomass)
# Dade_County_7_grouper_5 <- rbind(Dade_County_7_grouper_4,Dade_County_7_2004_grouper_biomass)
# Dade_County_7_grouper_6 <- rbind(Dade_County_7_grouper_5,Dade_County_7_2005_grouper_biomass)
# Dade_County_7_grouper_7 <- rbind(Dade_County_7_grouper_6,Dade_County_7_2006_grouper_biomass)
# Dade_County_7_grouper_8 <- rbind(Dade_County_7_grouper_7,Dade_County_7_2007_grouper_biomass)
# Dade_County_7_grouper_9 <- rbind(Dade_County_7_grouper_8,Dade_County_7_2008_grouper_biomass)
# Dade_County_7_grouper_10 <- rbind(Dade_County_7_grouper_9,Dade_County_7_2009_grouper_biomass)
# Dade_County_7_grouper_11<- rbind(Dade_County_7_grouper_10,Dade_County_7_2010_grouper_biomass)
# Dade_County_7_grouper_12 <- rbind(Dade_County_7_grouper_11,Dade_County_7_2011_grouper_biomass)
Dade_County_7_grouper_13 <- rbind(Dade_County_7_2013_grouper_biomass,Dade_County_7_2014_grouper_biomass)
Dade_County_7_grouper_14 <- rbind(Dade_County_7_grouper_13,Dade_County_7_2015_grouper_biomass)
Dade_County_7_grouper_15 <- rbind(Dade_County_7_grouper_14,Dade_County_7_2016_grouper_biomass)
Dade_County_7_grouper_biomass_data_combined <- rbind(Dade_County_7_grouper_15,Dade_County_7_2018_grouper_biomass)



export(Dade_County_7_snapper_biomass_data_combined, "Dade_County_7/data/Dade_County_7_snapper__biomass.csv")
export(Dade_County_7_grouper_biomass_data_combined, "Dade_County_7/data/Dade_County_7_grouper__biomass.csv")




#Dade County 8

Dade_County_8_2013 <- import("Dade_County_8/data/Dade_County_8_2013.xls")

Dade_County_8_2013_snapper <- merge(Dade_County_8_2013, snapper, by = c("SPECIES_CD"))
Dade_County_8_2013_snapper_biomass <- summarise_at(Dade_County_8_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2013_snapper_biomass$Year <- ('2013')
Dade_County_8_2013_snapper_biomass$Reef <- ('Dade County 8')


Dade_County_8_2013_grouper <- merge(Dade_County_8_2013, grouper, by = c("SPECIES_CD"))
Dade_County_8_2013_grouper_biomass <- summarise_at(Dade_County_8_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2013_grouper_biomass$Year <- ('2013')
Dade_County_8_2013_grouper_biomass$Reef <- ('Dade County 8')


Dade_County_8_2014 <- import("Dade_County_8/data/Dade_County_8_2014.xls")

Dade_County_8_2014_snapper <- merge(Dade_County_8_2014, snapper, by = c("SPECIES_CD"))
Dade_County_8_2014_snapper_biomass <- summarise_at(Dade_County_8_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2014_snapper_biomass$Year <- ('2014')
Dade_County_8_2014_snapper_biomass$Reef <- ('Dade County 8')


Dade_County_8_2014_grouper <- merge(Dade_County_8_2014, grouper, by = c("SPECIES_CD"))
Dade_County_8_2014_grouper_biomass <- summarise_at(Dade_County_8_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2014_grouper_biomass$Year <- ('2014')
Dade_County_8_2014_grouper_biomass$Reef <- ('Dade County 8')


Dade_County_8_2015 <- import("Dade_County_8/data/Dade_County_8_2015.xls")

Dade_County_8_2015_snapper <- merge(Dade_County_8_2015, snapper, by = c("SPECIES_CD"))
Dade_County_8_2015_snapper_biomass <- summarise_at(Dade_County_8_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2015_snapper_biomass$Year <- ('2015')
Dade_County_8_2015_snapper_biomass$Reef <- ('Dade County 8')


Dade_County_8_2015_grouper <- merge(Dade_County_8_2015, grouper, by = c("SPECIES_CD"))
Dade_County_8_2015_grouper_biomass <- summarise_at(Dade_County_8_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2015_grouper_biomass$Year <- ('2015')
Dade_County_8_2015_grouper_biomass$Reef <- ('Dade County 8')

Dade_County_8_2016 <- import("Dade_County_8/data/Dade_County_8_2016.xls")

Dade_County_8_2016_snapper <- merge(Dade_County_8_2016, snapper, by = c("SPECIES_CD"))
Dade_County_8_2016_snapper_biomass <- summarise_at(Dade_County_8_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2016_snapper_biomass$Year <- ('2016')
Dade_County_8_2016_snapper_biomass$Reef <- ('Dade County 8')


Dade_County_8_2016_grouper <- merge(Dade_County_8_2016, grouper, by = c("SPECIES_CD"))
Dade_County_8_2016_grouper_biomass <- summarise_at(Dade_County_8_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2016_grouper_biomass$Year <- ('2016')
Dade_County_8_2016_grouper_biomass$Reef <- ('Dade County 8')


Dade_County_8_2018 <- import("Dade_County_8/data/Dade_County_8_2018.xls")

Dade_County_8_2018_snapper <- merge(Dade_County_8_2018, snapper, by = c("SPECIES_CD"))
Dade_County_8_2018_snapper_biomass <- summarise_at(Dade_County_8_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2018_snapper_biomass$Year <- ('2018')
Dade_County_8_2018_snapper_biomass$Reef <- ('Dade County 8')


Dade_County_8_2018_grouper <- merge(Dade_County_8_2018, grouper, by = c("SPECIES_CD"))
Dade_County_8_2018_grouper_biomass <- summarise_at(Dade_County_8_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2018_grouper_biomass$Year <- ('2018')
Dade_County_8_2018_grouper_biomass$Reef <- ('Dade County 8')



### Combine all years together for snapper_ and grouper_ seperately



# Dade_County_8_snapper_1 <- rbind(Dade_County_8_1999_snapper_biomass,Dade_County_8_2000_snapper_biomass)
# Dade_County_8_snapper_2 <- rbind(Dade_County_8_snapper_1,Dade_County_8_2001_snapper_biomass)
# Dade_County_8_snapper_3 <- rbind(Dade_County_8_snapper_2,Dade_County_8_2002_snapper_biomass)
# Dade_County_8_snapper_4 <- rbind(Dade_County_8_snapper_3,Dade_County_8_2003_snapper_biomass)
# Dade_County_8_snapper_5 <- rbind(Dade_County_8_snapper_4,Dade_County_8_2004_snapper_biomass)
# Dade_County_8_snapper_6 <- rbind(Dade_County_8_snapper_5,Dade_County_8_2005_snapper_biomass)
# Dade_County_8_snapper_7 <- rbind(Dade_County_8_snapper_6,Dade_County_8_2006_snapper_biomass)
# Dade_County_8_snapper_8 <- rbind(Dade_County_8_snapper_7,Dade_County_8_2007_snapper_biomass)
# Dade_County_8_snapper_9 <- rbind(Dade_County_8_snapper_8,Dade_County_8_2008_snapper_biomass)
# Dade_County_8_snapper_10 <- rbind(Dade_County_8_snapper_9,Dade_County_8_2009_snapper_biomass)
# Dade_County_8_snapper_11<- rbind(Dade_County_8_snapper_10,Dade_County_8_2010_snapper_biomass)
# Dade_County_8_snapper_12 <- rbind(Dade_County_8_snapper_11,Dade_County_8_2011_snapper_biomass)
Dade_County_8_snapper_13 <- rbind(Dade_County_8_2013_snapper_biomass,Dade_County_8_2014_snapper_biomass)
Dade_County_8_snapper_14 <- rbind(Dade_County_8_snapper_13,Dade_County_8_2015_snapper_biomass)
Dade_County_8_snapper_15 <- rbind(Dade_County_8_snapper_14,Dade_County_8_2016_snapper_biomass)
Dade_County_8_snapper_biomass_data_combined <- rbind(Dade_County_8_snapper_15,Dade_County_8_2018_snapper_biomass)



# Dade_County_8_grouper_1 <- rbind(Dade_County_8_1999_grouper_biomass,Dade_County_8_2000_grouper_biomass)
# Dade_County_8_grouper_2 <- rbind(Dade_County_8_grouper_1,Dade_County_8_2001_grouper_biomass)
# Dade_County_8_grouper_3 <- rbind(Dade_County_8_grouper_2,Dade_County_8_2002_grouper_biomass)
# Dade_County_8_grouper_4 <- rbind(Dade_County_8_grouper_3,Dade_County_8_2003_grouper_biomass)
# Dade_County_8_grouper_5 <- rbind(Dade_County_8_grouper_4,Dade_County_8_2004_grouper_biomass)
# Dade_County_8_grouper_6 <- rbind(Dade_County_8_grouper_5,Dade_County_8_2005_grouper_biomass)
# Dade_County_8_grouper_7 <- rbind(Dade_County_8_grouper_6,Dade_County_8_2006_grouper_biomass)
# Dade_County_8_grouper_8 <- rbind(Dade_County_8_grouper_7,Dade_County_8_2007_grouper_biomass)
# Dade_County_8_grouper_9 <- rbind(Dade_County_8_grouper_8,Dade_County_8_2008_grouper_biomass)
# Dade_County_8_grouper_10 <- rbind(Dade_County_8_grouper_9,Dade_County_8_2009_grouper_biomass)
# Dade_County_8_grouper_11<- rbind(Dade_County_8_grouper_10,Dade_County_8_2010_grouper_biomass)
# Dade_County_8_grouper_12 <- rbind(Dade_County_8_grouper_11,Dade_County_8_2011_grouper_biomass)
Dade_County_8_grouper_13 <- rbind(Dade_County_8_2013_grouper_biomass,Dade_County_8_2014_grouper_biomass)
Dade_County_8_grouper_14 <- rbind(Dade_County_8_grouper_13,Dade_County_8_2015_grouper_biomass)
Dade_County_8_grouper_15 <- rbind(Dade_County_8_grouper_14,Dade_County_8_2016_grouper_biomass)
Dade_County_8_grouper_biomass_data_combined <- rbind(Dade_County_8_grouper_15,Dade_County_8_2018_grouper_biomass)



export(Dade_County_8_snapper_biomass_data_combined, "Dade_County_8/data/Dade_County_8_snapper__biomass.csv")
export(Dade_County_8_grouper_biomass_data_combined, "Dade_County_8/data/Dade_County_8_grouper__biomass.csv")




#Martin County 1

Martin_County_1_2013 <- import("Martin_County_1/data/Martin_County_1_2013.xls")

Martin_County_1_2013_snapper <- merge(Martin_County_1_2013, snapper, by = c("SPECIES_CD"))
Martin_County_1_2013_snapper_biomass <- summarise_at(Martin_County_1_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2013_snapper_biomass$Year <- ('2013')
Martin_County_1_2013_snapper_biomass$Reef <- ('Martin County 1')


Martin_County_1_2013_grouper <- merge(Martin_County_1_2013, grouper, by = c("SPECIES_CD"))
Martin_County_1_2013_grouper_biomass <- summarise_at(Martin_County_1_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2013_grouper_biomass$Year <- ('2013')
Martin_County_1_2013_grouper_biomass$Reef <- ('Martin County 1')


Martin_County_1_2014 <- import("Martin_County_1/data/Martin_County_1_2014.xls")

Martin_County_1_2014_snapper <- merge(Martin_County_1_2014, snapper, by = c("SPECIES_CD"))
Martin_County_1_2014_snapper_biomass <- summarise_at(Martin_County_1_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2014_snapper_biomass$Year <- ('2014')
Martin_County_1_2014_snapper_biomass$Reef <- ('Martin County 1')


Martin_County_1_2014_grouper <- merge(Martin_County_1_2014, grouper, by = c("SPECIES_CD"))
Martin_County_1_2014_grouper_biomass <- summarise_at(Martin_County_1_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2014_grouper_biomass$Year <- ('2014')
Martin_County_1_2014_grouper_biomass$Reef <- ('Martin County 1')


Martin_County_1_2015 <- import("Martin_County_1/data/Martin_County_1_2015.xls")

Martin_County_1_2015_snapper <- merge(Martin_County_1_2015, snapper, by = c("SPECIES_CD"))
Martin_County_1_2015_snapper_biomass <- summarise_at(Martin_County_1_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2015_snapper_biomass$Year <- ('2015')
Martin_County_1_2015_snapper_biomass$Reef <- ('Martin County 1')


Martin_County_1_2015_grouper <- merge(Martin_County_1_2015, grouper, by = c("SPECIES_CD"))
Martin_County_1_2015_grouper_biomass <- summarise_at(Martin_County_1_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2015_grouper_biomass$Year <- ('2015')
Martin_County_1_2015_grouper_biomass$Reef <- ('Martin County 1')

Martin_County_1_2016 <- import("Martin_County_1/data/Martin_County_1_2016.xls")

Martin_County_1_2016_snapper <- merge(Martin_County_1_2016, snapper, by = c("SPECIES_CD"))
Martin_County_1_2016_snapper_biomass <- summarise_at(Martin_County_1_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2016_snapper_biomass$Year <- ('2016')
Martin_County_1_2016_snapper_biomass$Reef <- ('Martin County 1')


Martin_County_1_2016_grouper <- merge(Martin_County_1_2016, grouper, by = c("SPECIES_CD"))
Martin_County_1_2016_grouper_biomass <- summarise_at(Martin_County_1_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2016_grouper_biomass$Year <- ('2016')
Martin_County_1_2016_grouper_biomass$Reef <- ('Martin County 1')


Martin_County_1_2018 <- import("Martin_County_1/data/Martin_County_1_2018.xls")

Martin_County_1_2018_snapper <- merge(Martin_County_1_2018, snapper, by = c("SPECIES_CD"))
Martin_County_1_2018_snapper_biomass <- summarise_at(Martin_County_1_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2018_snapper_biomass$Year <- ('2018')
Martin_County_1_2018_snapper_biomass$Reef <- ('Martin County 1')


Martin_County_1_2018_grouper <- merge(Martin_County_1_2018, grouper, by = c("SPECIES_CD"))
Martin_County_1_2018_grouper_biomass <- summarise_at(Martin_County_1_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2018_grouper_biomass$Year <- ('2018')
Martin_County_1_2018_grouper_biomass$Reef <- ('Martin County 1')



### Combine all years together for snapper_ and grouper_ seperately



# Martin_County_1_snapper_1 <- rbind(Martin_County_1_1999_snapper_biomass,Martin_County_1_2000_snapper_biomass)
# Martin_County_1_snapper_2 <- rbind(Martin_County_1_snapper_1,Martin_County_1_2001_snapper_biomass)
# Martin_County_1_snapper_3 <- rbind(Martin_County_1_snapper_2,Martin_County_1_2002_snapper_biomass)
# Martin_County_1_snapper_4 <- rbind(Martin_County_1_snapper_3,Martin_County_1_2003_snapper_biomass)
# Martin_County_1_snapper_5 <- rbind(Martin_County_1_snapper_4,Martin_County_1_2004_snapper_biomass)
# Martin_County_1_snapper_6 <- rbind(Martin_County_1_snapper_5,Martin_County_1_2005_snapper_biomass)
# Martin_County_1_snapper_7 <- rbind(Martin_County_1_snapper_6,Martin_County_1_2006_snapper_biomass)
# Martin_County_1_snapper_8 <- rbind(Martin_County_1_snapper_7,Martin_County_1_2007_snapper_biomass)
# Martin_County_1_snapper_9 <- rbind(Martin_County_1_snapper_8,Martin_County_1_2008_snapper_biomass)
# Martin_County_1_snapper_10 <- rbind(Martin_County_1_snapper_9,Martin_County_1_2009_snapper_biomass)
# Martin_County_1_snapper_11<- rbind(Martin_County_1_snapper_10,Martin_County_1_2010_snapper_biomass)
# Martin_County_1_snapper_12 <- rbind(Martin_County_1_snapper_11,Martin_County_1_2011_snapper_biomass)
Martin_County_1_snapper_13 <- rbind(Martin_County_1_2013_snapper_biomass,Martin_County_1_2014_snapper_biomass)
Martin_County_1_snapper_14 <- rbind(Martin_County_1_snapper_13,Martin_County_1_2015_snapper_biomass)
Martin_County_1_snapper_15 <- rbind(Martin_County_1_snapper_14,Martin_County_1_2016_snapper_biomass)
Martin_County_1_snapper_biomass_data_combined <- rbind(Martin_County_1_snapper_15,Martin_County_1_2018_snapper_biomass)



# Martin_County_1_grouper_1 <- rbind(Martin_County_1_1999_grouper_biomass,Martin_County_1_2000_grouper_biomass)
# Martin_County_1_grouper_2 <- rbind(Martin_County_1_grouper_1,Martin_County_1_2001_grouper_biomass)
# Martin_County_1_grouper_3 <- rbind(Martin_County_1_grouper_2,Martin_County_1_2002_grouper_biomass)
# Martin_County_1_grouper_4 <- rbind(Martin_County_1_grouper_3,Martin_County_1_2003_grouper_biomass)
# Martin_County_1_grouper_5 <- rbind(Martin_County_1_grouper_4,Martin_County_1_2004_grouper_biomass)
# Martin_County_1_grouper_6 <- rbind(Martin_County_1_grouper_5,Martin_County_1_2005_grouper_biomass)
# Martin_County_1_grouper_7 <- rbind(Martin_County_1_grouper_6,Martin_County_1_2006_grouper_biomass)
# Martin_County_1_grouper_8 <- rbind(Martin_County_1_grouper_7,Martin_County_1_2007_grouper_biomass)
# Martin_County_1_grouper_9 <- rbind(Martin_County_1_grouper_8,Martin_County_1_2008_grouper_biomass)
# Martin_County_1_grouper_10 <- rbind(Martin_County_1_grouper_9,Martin_County_1_2009_grouper_biomass)
# Martin_County_1_grouper_11<- rbind(Martin_County_1_grouper_10,Martin_County_1_2010_grouper_biomass)
# Martin_County_1_grouper_12 <- rbind(Martin_County_1_grouper_11,Martin_County_1_2011_grouper_biomass)
Martin_County_1_grouper_13 <- rbind(Martin_County_1_2013_grouper_biomass,Martin_County_1_2014_grouper_biomass)
Martin_County_1_grouper_14 <- rbind(Martin_County_1_grouper_13,Martin_County_1_2015_grouper_biomass)
Martin_County_1_grouper_15 <- rbind(Martin_County_1_grouper_14,Martin_County_1_2016_grouper_biomass)
Martin_County_1_grouper_biomass_data_combined <- rbind(Martin_County_1_grouper_15,Martin_County_1_2018_grouper_biomass)



export(Martin_County_1_snapper_biomass_data_combined, "Martin_County_1/data/Martin_County_1_snapper__biomass.csv")
export(Martin_County_1_grouper_biomass_data_combined, "Martin_County_1/data/Martin_County_1_grouper__biomass.csv")



#Martin County 2

Martin_County_2_2013 <- import("Martin_County_2/data/Martin_County_2_2013.xls")

Martin_County_2_2013_snapper <- merge(Martin_County_2_2013, snapper, by = c("SPECIES_CD"))
Martin_County_2_2013_snapper_biomass <- summarise_at(Martin_County_2_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2013_snapper_biomass$Year <- ('2013')
Martin_County_2_2013_snapper_biomass$Reef <- ('Martin County 2')


Martin_County_2_2013_grouper <- merge(Martin_County_2_2013, grouper, by = c("SPECIES_CD"))
Martin_County_2_2013_grouper_biomass <- summarise_at(Martin_County_2_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2013_grouper_biomass$Year <- ('2013')
Martin_County_2_2013_grouper_biomass$Reef <- ('Martin County 2')


Martin_County_2_2014 <- import("Martin_County_2/data/Martin_County_2_2014.xls")

Martin_County_2_2014_snapper <- merge(Martin_County_2_2014, snapper, by = c("SPECIES_CD"))
Martin_County_2_2014_snapper_biomass <- summarise_at(Martin_County_2_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2014_snapper_biomass$Year <- ('2014')
Martin_County_2_2014_snapper_biomass$Reef <- ('Martin County 2')


Martin_County_2_2014_grouper <- merge(Martin_County_2_2014, grouper, by = c("SPECIES_CD"))
Martin_County_2_2014_grouper_biomass <- summarise_at(Martin_County_2_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2014_grouper_biomass$Year <- ('2014')
Martin_County_2_2014_grouper_biomass$Reef <- ('Martin County 2')


Martin_County_2_2015 <- import("Martin_County_2/data/Martin_County_2_2015.xls")

Martin_County_2_2015_snapper <- merge(Martin_County_2_2015, snapper, by = c("SPECIES_CD"))
Martin_County_2_2015_snapper_biomass <- summarise_at(Martin_County_2_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2015_snapper_biomass$Year <- ('2015')
Martin_County_2_2015_snapper_biomass$Reef <- ('Martin County 2')


Martin_County_2_2015_grouper <- merge(Martin_County_2_2015, grouper, by = c("SPECIES_CD"))
Martin_County_2_2015_grouper_biomass <- summarise_at(Martin_County_2_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2015_grouper_biomass$Year <- ('2015')
Martin_County_2_2015_grouper_biomass$Reef <- ('Martin County 2')

Martin_County_2_2016 <- import("Martin_County_2/data/Martin_County_2_2016.xls")

Martin_County_2_2016_snapper <- merge(Martin_County_2_2016, snapper, by = c("SPECIES_CD"))
Martin_County_2_2016_snapper_biomass <- summarise_at(Martin_County_2_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2016_snapper_biomass$Year <- ('2016')
Martin_County_2_2016_snapper_biomass$Reef <- ('Martin County 2')


Martin_County_2_2016_grouper <- merge(Martin_County_2_2016, grouper, by = c("SPECIES_CD"))
Martin_County_2_2016_grouper_biomass <- summarise_at(Martin_County_2_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2016_grouper_biomass$Year <- ('2016')
Martin_County_2_2016_grouper_biomass$Reef <- ('Martin County 2')


Martin_County_2_2018 <- import("Martin_County_2/data/Martin_County_2_2018.xls")

Martin_County_2_2018_snapper <- merge(Martin_County_2_2018, snapper, by = c("SPECIES_CD"))
Martin_County_2_2018_snapper_biomass <- summarise_at(Martin_County_2_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2018_snapper_biomass$Year <- ('2018')
Martin_County_2_2018_snapper_biomass$Reef <- ('Martin County 2')


Martin_County_2_2018_grouper <- merge(Martin_County_2_2018, grouper, by = c("SPECIES_CD"))
Martin_County_2_2018_grouper_biomass <- summarise_at(Martin_County_2_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2018_grouper_biomass$Year <- ('2018')
Martin_County_2_2018_grouper_biomass$Reef <- ('Martin County 2')



### Combine all years together for snapper_ and grouper_ seperately



# Martin_County_2_snapper_1 <- rbind(Martin_County_2_1999_snapper_biomass,Martin_County_2_2000_snapper_biomass)
# Martin_County_2_snapper_2 <- rbind(Martin_County_2_snapper_1,Martin_County_2_2001_snapper_biomass)
# Martin_County_2_snapper_3 <- rbind(Martin_County_2_snapper_2,Martin_County_2_2002_snapper_biomass)
# Martin_County_2_snapper_4 <- rbind(Martin_County_2_snapper_3,Martin_County_2_2003_snapper_biomass)
# Martin_County_2_snapper_5 <- rbind(Martin_County_2_snapper_4,Martin_County_2_2004_snapper_biomass)
# Martin_County_2_snapper_6 <- rbind(Martin_County_2_snapper_5,Martin_County_2_2005_snapper_biomass)
# Martin_County_2_snapper_7 <- rbind(Martin_County_2_snapper_6,Martin_County_2_2006_snapper_biomass)
# Martin_County_2_snapper_8 <- rbind(Martin_County_2_snapper_7,Martin_County_2_2007_snapper_biomass)
# Martin_County_2_snapper_9 <- rbind(Martin_County_2_snapper_8,Martin_County_2_2008_snapper_biomass)
# Martin_County_2_snapper_10 <- rbind(Martin_County_2_snapper_9,Martin_County_2_2009_snapper_biomass)
# Martin_County_2_snapper_11<- rbind(Martin_County_2_snapper_10,Martin_County_2_2010_snapper_biomass)
# Martin_County_2_snapper_12 <- rbind(Martin_County_2_snapper_11,Martin_County_2_2011_snapper_biomass)
Martin_County_2_snapper_13 <- rbind(Martin_County_2_2013_snapper_biomass,Martin_County_2_2014_snapper_biomass)
Martin_County_2_snapper_14 <- rbind(Martin_County_2_snapper_13,Martin_County_2_2015_snapper_biomass)
Martin_County_2_snapper_15 <- rbind(Martin_County_2_snapper_14,Martin_County_2_2016_snapper_biomass)
Martin_County_2_snapper_biomass_data_combined <- rbind(Martin_County_2_snapper_15,Martin_County_2_2018_snapper_biomass)



# Martin_County_2_grouper_1 <- rbind(Martin_County_2_1999_grouper_biomass,Martin_County_2_2000_grouper_biomass)
# Martin_County_2_grouper_2 <- rbind(Martin_County_2_grouper_1,Martin_County_2_2001_grouper_biomass)
# Martin_County_2_grouper_3 <- rbind(Martin_County_2_grouper_2,Martin_County_2_2002_grouper_biomass)
# Martin_County_2_grouper_4 <- rbind(Martin_County_2_grouper_3,Martin_County_2_2003_grouper_biomass)
# Martin_County_2_grouper_5 <- rbind(Martin_County_2_grouper_4,Martin_County_2_2004_grouper_biomass)
# Martin_County_2_grouper_6 <- rbind(Martin_County_2_grouper_5,Martin_County_2_2005_grouper_biomass)
# Martin_County_2_grouper_7 <- rbind(Martin_County_2_grouper_6,Martin_County_2_2006_grouper_biomass)
# Martin_County_2_grouper_8 <- rbind(Martin_County_2_grouper_7,Martin_County_2_2007_grouper_biomass)
# Martin_County_2_grouper_9 <- rbind(Martin_County_2_grouper_8,Martin_County_2_2008_grouper_biomass)
# Martin_County_2_grouper_10 <- rbind(Martin_County_2_grouper_9,Martin_County_2_2009_grouper_biomass)
# Martin_County_2_grouper_11<- rbind(Martin_County_2_grouper_10,Martin_County_2_2010_grouper_biomass)
# Martin_County_2_grouper_12 <- rbind(Martin_County_2_grouper_11,Martin_County_2_2011_grouper_biomass)
Martin_County_2_grouper_13 <- rbind(Martin_County_2_2013_grouper_biomass,Martin_County_2_2014_grouper_biomass)
Martin_County_2_grouper_14 <- rbind(Martin_County_2_grouper_13,Martin_County_2_2015_grouper_biomass)
Martin_County_2_grouper_15 <- rbind(Martin_County_2_grouper_14,Martin_County_2_2016_grouper_biomass)
Martin_County_2_grouper_biomass_data_combined <- rbind(Martin_County_2_grouper_15,Martin_County_2_2018_grouper_biomass)



export(Martin_County_2_snapper_biomass_data_combined, "Martin_County_2/data/Martin_County_2_snapper__biomass.csv")
export(Martin_County_2_grouper_biomass_data_combined, "Martin_County_2/data/Martin_County_2_grouper__biomass.csv")




#Palm Beach 1

Palm_Beach_1_2013 <- import("Palm_Beach_1/data/Palm_Beach_1_2013.xls")

Palm_Beach_1_2013_snapper <- merge(Palm_Beach_1_2013, snapper, by = c("SPECIES_CD"))
Palm_Beach_1_2013_snapper_biomass <- summarise_at(Palm_Beach_1_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2013_snapper_biomass$Year <- ('2013')
Palm_Beach_1_2013_snapper_biomass$Reef <- ('Palm Beach 1')


Palm_Beach_1_2013_grouper <- merge(Palm_Beach_1_2013, grouper, by = c("SPECIES_CD"))
Palm_Beach_1_2013_grouper_biomass <- summarise_at(Palm_Beach_1_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2013_grouper_biomass$Year <- ('2013')
Palm_Beach_1_2013_grouper_biomass$Reef <- ('Palm Beach 1')


Palm_Beach_1_2014 <- import("Palm_Beach_1/data/Palm_Beach_1_2014.xls")

Palm_Beach_1_2014_snapper <- merge(Palm_Beach_1_2014, snapper, by = c("SPECIES_CD"))
Palm_Beach_1_2014_snapper_biomass <- summarise_at(Palm_Beach_1_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2014_snapper_biomass$Year <- ('2014')
Palm_Beach_1_2014_snapper_biomass$Reef <- ('Palm Beach 1')


Palm_Beach_1_2014_grouper <- merge(Palm_Beach_1_2014, grouper, by = c("SPECIES_CD"))
Palm_Beach_1_2014_grouper_biomass <- summarise_at(Palm_Beach_1_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2014_grouper_biomass$Year <- ('2014')
Palm_Beach_1_2014_grouper_biomass$Reef <- ('Palm Beach 1')


Palm_Beach_1_2015 <- import("Palm_Beach_1/data/Palm_Beach_1_2015.xls")

Palm_Beach_1_2015_snapper <- merge(Palm_Beach_1_2015, snapper, by = c("SPECIES_CD"))
Palm_Beach_1_2015_snapper_biomass <- summarise_at(Palm_Beach_1_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2015_snapper_biomass$Year <- ('2015')
Palm_Beach_1_2015_snapper_biomass$Reef <- ('Palm Beach 1')


Palm_Beach_1_2015_grouper <- merge(Palm_Beach_1_2015, grouper, by = c("SPECIES_CD"))
Palm_Beach_1_2015_grouper_biomass <- summarise_at(Palm_Beach_1_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2015_grouper_biomass$Year <- ('2015')
Palm_Beach_1_2015_grouper_biomass$Reef <- ('Palm Beach 1')

Palm_Beach_1_2016 <- import("Palm_Beach_1/data/Palm_Beach_1_2016.xls")

Palm_Beach_1_2016_snapper <- merge(Palm_Beach_1_2016, snapper, by = c("SPECIES_CD"))
Palm_Beach_1_2016_snapper_biomass <- summarise_at(Palm_Beach_1_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2016_snapper_biomass$Year <- ('2016')
Palm_Beach_1_2016_snapper_biomass$Reef <- ('Palm Beach 1')


Palm_Beach_1_2016_grouper <- merge(Palm_Beach_1_2016, grouper, by = c("SPECIES_CD"))
Palm_Beach_1_2016_grouper_biomass <- summarise_at(Palm_Beach_1_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2016_grouper_biomass$Year <- ('2016')
Palm_Beach_1_2016_grouper_biomass$Reef <- ('Palm Beach 1')


Palm_Beach_1_2018 <- import("Palm_Beach_1/data/Palm_Beach_1_2018.xls")

Palm_Beach_1_2018_snapper <- merge(Palm_Beach_1_2018, snapper, by = c("SPECIES_CD"))
Palm_Beach_1_2018_snapper_biomass <- summarise_at(Palm_Beach_1_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2018_snapper_biomass$Year <- ('2018')
Palm_Beach_1_2018_snapper_biomass$Reef <- ('Palm Beach 1')


Palm_Beach_1_2018_grouper <- merge(Palm_Beach_1_2018, grouper, by = c("SPECIES_CD"))
Palm_Beach_1_2018_grouper_biomass <- summarise_at(Palm_Beach_1_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2018_grouper_biomass$Year <- ('2018')
Palm_Beach_1_2018_grouper_biomass$Reef <- ('Palm Beach 1')



### Combine all years together for snapper_ and grouper_ seperately



# Palm_Beach_1_snapper_1 <- rbind(Palm_Beach_1_1999_snapper_biomass,Palm_Beach_1_2000_snapper_biomass)
# Palm_Beach_1_snapper_2 <- rbind(Palm_Beach_1_snapper_1,Palm_Beach_1_2001_snapper_biomass)
# Palm_Beach_1_snapper_3 <- rbind(Palm_Beach_1_snapper_2,Palm_Beach_1_2002_snapper_biomass)
# Palm_Beach_1_snapper_4 <- rbind(Palm_Beach_1_snapper_3,Palm_Beach_1_2003_snapper_biomass)
# Palm_Beach_1_snapper_5 <- rbind(Palm_Beach_1_snapper_4,Palm_Beach_1_2004_snapper_biomass)
# Palm_Beach_1_snapper_6 <- rbind(Palm_Beach_1_snapper_5,Palm_Beach_1_2005_snapper_biomass)
# Palm_Beach_1_snapper_7 <- rbind(Palm_Beach_1_snapper_6,Palm_Beach_1_2006_snapper_biomass)
# Palm_Beach_1_snapper_8 <- rbind(Palm_Beach_1_snapper_7,Palm_Beach_1_2007_snapper_biomass)
# Palm_Beach_1_snapper_9 <- rbind(Palm_Beach_1_snapper_8,Palm_Beach_1_2008_snapper_biomass)
# Palm_Beach_1_snapper_10 <- rbind(Palm_Beach_1_snapper_9,Palm_Beach_1_2009_snapper_biomass)
# Palm_Beach_1_snapper_11<- rbind(Palm_Beach_1_snapper_10,Palm_Beach_1_2010_snapper_biomass)
# Palm_Beach_1_snapper_12 <- rbind(Palm_Beach_1_snapper_11,Palm_Beach_1_2011_snapper_biomass)
Palm_Beach_1_snapper_13 <- rbind(Palm_Beach_1_2013_snapper_biomass,Palm_Beach_1_2014_snapper_biomass)
Palm_Beach_1_snapper_14 <- rbind(Palm_Beach_1_snapper_13,Palm_Beach_1_2015_snapper_biomass)
Palm_Beach_1_snapper_15 <- rbind(Palm_Beach_1_snapper_14,Palm_Beach_1_2016_snapper_biomass)
Palm_Beach_1_snapper_biomass_data_combined <- rbind(Palm_Beach_1_snapper_15,Palm_Beach_1_2018_snapper_biomass)



# Palm_Beach_1_grouper_1 <- rbind(Palm_Beach_1_1999_grouper_biomass,Palm_Beach_1_2000_grouper_biomass)
# Palm_Beach_1_grouper_2 <- rbind(Palm_Beach_1_grouper_1,Palm_Beach_1_2001_grouper_biomass)
# Palm_Beach_1_grouper_3 <- rbind(Palm_Beach_1_grouper_2,Palm_Beach_1_2002_grouper_biomass)
# Palm_Beach_1_grouper_4 <- rbind(Palm_Beach_1_grouper_3,Palm_Beach_1_2003_grouper_biomass)
# Palm_Beach_1_grouper_5 <- rbind(Palm_Beach_1_grouper_4,Palm_Beach_1_2004_grouper_biomass)
# Palm_Beach_1_grouper_6 <- rbind(Palm_Beach_1_grouper_5,Palm_Beach_1_2005_grouper_biomass)
# Palm_Beach_1_grouper_7 <- rbind(Palm_Beach_1_grouper_6,Palm_Beach_1_2006_grouper_biomass)
# Palm_Beach_1_grouper_8 <- rbind(Palm_Beach_1_grouper_7,Palm_Beach_1_2007_grouper_biomass)
# Palm_Beach_1_grouper_9 <- rbind(Palm_Beach_1_grouper_8,Palm_Beach_1_2008_grouper_biomass)
# Palm_Beach_1_grouper_10 <- rbind(Palm_Beach_1_grouper_9,Palm_Beach_1_2009_grouper_biomass)
# Palm_Beach_1_grouper_11<- rbind(Palm_Beach_1_grouper_10,Palm_Beach_1_2010_grouper_biomass)
# Palm_Beach_1_grouper_12 <- rbind(Palm_Beach_1_grouper_11,Palm_Beach_1_2011_grouper_biomass)
Palm_Beach_1_grouper_13 <- rbind(Palm_Beach_1_2013_grouper_biomass,Palm_Beach_1_2014_grouper_biomass)
Palm_Beach_1_grouper_14 <- rbind(Palm_Beach_1_grouper_13,Palm_Beach_1_2015_grouper_biomass)
Palm_Beach_1_grouper_15 <- rbind(Palm_Beach_1_grouper_14,Palm_Beach_1_2016_grouper_biomass)
Palm_Beach_1_grouper_biomass_data_combined <- rbind(Palm_Beach_1_grouper_15,Palm_Beach_1_2018_grouper_biomass)



export(Palm_Beach_1_snapper_biomass_data_combined, "Palm_Beach_1/data/Palm_Beach_1_snapper__biomass.csv")
export(Palm_Beach_1_grouper_biomass_data_combined, "Palm_Beach_1/data/Palm_Beach_1_grouper__biomass.csv")




#Palm Beach 2

Palm_Beach_2_2013 <- import("Palm_Beach_2/data/Palm_Beach_2_2013.xls")

Palm_Beach_2_2013_snapper <- merge(Palm_Beach_2_2013, snapper, by = c("SPECIES_CD"))
Palm_Beach_2_2013_snapper_biomass <- summarise_at(Palm_Beach_2_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2013_snapper_biomass$Year <- ('2013')
Palm_Beach_2_2013_snapper_biomass$Reef <- ('Palm Beach 2')


Palm_Beach_2_2013_grouper <- merge(Palm_Beach_2_2013, grouper, by = c("SPECIES_CD"))
Palm_Beach_2_2013_grouper_biomass <- summarise_at(Palm_Beach_2_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2013_grouper_biomass$Year <- ('2013')
Palm_Beach_2_2013_grouper_biomass$Reef <- ('Palm Beach 2')


Palm_Beach_2_2014 <- import("Palm_Beach_2/data/Palm_Beach_2_2014.xls")

Palm_Beach_2_2014_snapper <- merge(Palm_Beach_2_2014, snapper, by = c("SPECIES_CD"))
Palm_Beach_2_2014_snapper_biomass <- summarise_at(Palm_Beach_2_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2014_snapper_biomass$Year <- ('2014')
Palm_Beach_2_2014_snapper_biomass$Reef <- ('Palm Beach 2')


Palm_Beach_2_2014_grouper <- merge(Palm_Beach_2_2014, grouper, by = c("SPECIES_CD"))
Palm_Beach_2_2014_grouper_biomass <- summarise_at(Palm_Beach_2_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2014_grouper_biomass$Year <- ('2014')
Palm_Beach_2_2014_grouper_biomass$Reef <- ('Palm Beach 2')


Palm_Beach_2_2015 <- import("Palm_Beach_2/data/Palm_Beach_2_2015.xls")

Palm_Beach_2_2015_snapper <- merge(Palm_Beach_2_2015, snapper, by = c("SPECIES_CD"))
Palm_Beach_2_2015_snapper_biomass <- summarise_at(Palm_Beach_2_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2015_snapper_biomass$Year <- ('2015')
Palm_Beach_2_2015_snapper_biomass$Reef <- ('Palm Beach 2')


Palm_Beach_2_2015_grouper <- merge(Palm_Beach_2_2015, grouper, by = c("SPECIES_CD"))
Palm_Beach_2_2015_grouper_biomass <- summarise_at(Palm_Beach_2_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2015_grouper_biomass$Year <- ('2015')
Palm_Beach_2_2015_grouper_biomass$Reef <- ('Palm Beach 2')

Palm_Beach_2_2016 <- import("Palm_Beach_2/data/Palm_Beach_2_2016.xls")

Palm_Beach_2_2016_snapper <- merge(Palm_Beach_2_2016, snapper, by = c("SPECIES_CD"))
Palm_Beach_2_2016_snapper_biomass <- summarise_at(Palm_Beach_2_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2016_snapper_biomass$Year <- ('2016')
Palm_Beach_2_2016_snapper_biomass$Reef <- ('Palm Beach 2')


Palm_Beach_2_2016_grouper <- merge(Palm_Beach_2_2016, grouper, by = c("SPECIES_CD"))
Palm_Beach_2_2016_grouper_biomass <- summarise_at(Palm_Beach_2_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2016_grouper_biomass$Year <- ('2016')
Palm_Beach_2_2016_grouper_biomass$Reef <- ('Palm Beach 2')


Palm_Beach_2_2018 <- import("Palm_Beach_2/data/Palm_Beach_2_2018.xls")

Palm_Beach_2_2018_snapper <- merge(Palm_Beach_2_2018, snapper, by = c("SPECIES_CD"))
Palm_Beach_2_2018_snapper_biomass <- summarise_at(Palm_Beach_2_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2018_snapper_biomass$Year <- ('2018')
Palm_Beach_2_2018_snapper_biomass$Reef <- ('Palm Beach 2')


Palm_Beach_2_2018_grouper <- merge(Palm_Beach_2_2018, grouper, by = c("SPECIES_CD"))
Palm_Beach_2_2018_grouper_biomass <- summarise_at(Palm_Beach_2_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2018_grouper_biomass$Year <- ('2018')
Palm_Beach_2_2018_grouper_biomass$Reef <- ('Palm Beach 2')



### Combine all years together for snapper_ and grouper_ seperately



# Palm_Beach_2_snapper_1 <- rbind(Palm_Beach_2_1999_snapper_biomass,Palm_Beach_2_2000_snapper_biomass)
# Palm_Beach_2_snapper_2 <- rbind(Palm_Beach_2_snapper_1,Palm_Beach_2_2001_snapper_biomass)
# Palm_Beach_2_snapper_3 <- rbind(Palm_Beach_2_snapper_2,Palm_Beach_2_2002_snapper_biomass)
# Palm_Beach_2_snapper_4 <- rbind(Palm_Beach_2_snapper_3,Palm_Beach_2_2003_snapper_biomass)
# Palm_Beach_2_snapper_5 <- rbind(Palm_Beach_2_snapper_4,Palm_Beach_2_2004_snapper_biomass)
# Palm_Beach_2_snapper_6 <- rbind(Palm_Beach_2_snapper_5,Palm_Beach_2_2005_snapper_biomass)
# Palm_Beach_2_snapper_7 <- rbind(Palm_Beach_2_snapper_6,Palm_Beach_2_2006_snapper_biomass)
# Palm_Beach_2_snapper_8 <- rbind(Palm_Beach_2_snapper_7,Palm_Beach_2_2007_snapper_biomass)
# Palm_Beach_2_snapper_9 <- rbind(Palm_Beach_2_snapper_8,Palm_Beach_2_2008_snapper_biomass)
# Palm_Beach_2_snapper_10 <- rbind(Palm_Beach_2_snapper_9,Palm_Beach_2_2009_snapper_biomass)
# Palm_Beach_2_snapper_11<- rbind(Palm_Beach_2_snapper_10,Palm_Beach_2_2010_snapper_biomass)
# Palm_Beach_2_snapper_12 <- rbind(Palm_Beach_2_snapper_11,Palm_Beach_2_2011_snapper_biomass)
Palm_Beach_2_snapper_13 <- rbind(Palm_Beach_2_2013_snapper_biomass,Palm_Beach_2_2014_snapper_biomass)
Palm_Beach_2_snapper_14 <- rbind(Palm_Beach_2_snapper_13,Palm_Beach_2_2015_snapper_biomass)
Palm_Beach_2_snapper_15 <- rbind(Palm_Beach_2_snapper_14,Palm_Beach_2_2016_snapper_biomass)
Palm_Beach_2_snapper_biomass_data_combined <- rbind(Palm_Beach_2_snapper_15,Palm_Beach_2_2018_snapper_biomass)



# Palm_Beach_2_grouper_1 <- rbind(Palm_Beach_2_1999_grouper_biomass,Palm_Beach_2_2000_grouper_biomass)
# Palm_Beach_2_grouper_2 <- rbind(Palm_Beach_2_grouper_1,Palm_Beach_2_2001_grouper_biomass)
# Palm_Beach_2_grouper_3 <- rbind(Palm_Beach_2_grouper_2,Palm_Beach_2_2002_grouper_biomass)
# Palm_Beach_2_grouper_4 <- rbind(Palm_Beach_2_grouper_3,Palm_Beach_2_2003_grouper_biomass)
# Palm_Beach_2_grouper_5 <- rbind(Palm_Beach_2_grouper_4,Palm_Beach_2_2004_grouper_biomass)
# Palm_Beach_2_grouper_6 <- rbind(Palm_Beach_2_grouper_5,Palm_Beach_2_2005_grouper_biomass)
# Palm_Beach_2_grouper_7 <- rbind(Palm_Beach_2_grouper_6,Palm_Beach_2_2006_grouper_biomass)
# Palm_Beach_2_grouper_8 <- rbind(Palm_Beach_2_grouper_7,Palm_Beach_2_2007_grouper_biomass)
# Palm_Beach_2_grouper_9 <- rbind(Palm_Beach_2_grouper_8,Palm_Beach_2_2008_grouper_biomass)
# Palm_Beach_2_grouper_10 <- rbind(Palm_Beach_2_grouper_9,Palm_Beach_2_2009_grouper_biomass)
# Palm_Beach_2_grouper_11<- rbind(Palm_Beach_2_grouper_10,Palm_Beach_2_2010_grouper_biomass)
# Palm_Beach_2_grouper_12 <- rbind(Palm_Beach_2_grouper_11,Palm_Beach_2_2011_grouper_biomass)
Palm_Beach_2_grouper_13 <- rbind(Palm_Beach_2_2013_grouper_biomass,Palm_Beach_2_2014_grouper_biomass)
Palm_Beach_2_grouper_14 <- rbind(Palm_Beach_2_grouper_13,Palm_Beach_2_2015_grouper_biomass)
Palm_Beach_2_grouper_15 <- rbind(Palm_Beach_2_grouper_14,Palm_Beach_2_2016_grouper_biomass)
Palm_Beach_2_grouper_biomass_data_combined <- rbind(Palm_Beach_2_grouper_15,Palm_Beach_2_2018_grouper_biomass)



export(Palm_Beach_2_snapper_biomass_data_combined, "Palm_Beach_2/data/Palm_Beach_2_snapper__biomass.csv")
export(Palm_Beach_2_grouper_biomass_data_combined, "Palm_Beach_2/data/Palm_Beach_2_grouper__biomass.csv")



#Palm Beach 3

Palm_Beach_3_2013 <- import("Palm_Beach_3/data/Palm_Beach_3_2013.xls")

Palm_Beach_3_2013_snapper <- merge(Palm_Beach_3_2013, snapper, by = c("SPECIES_CD"))
Palm_Beach_3_2013_snapper_biomass <- summarise_at(Palm_Beach_3_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2013_snapper_biomass$Year <- ('2013')
Palm_Beach_3_2013_snapper_biomass$Reef <- ('Palm Beach 3')


Palm_Beach_3_2013_grouper <- merge(Palm_Beach_3_2013, grouper, by = c("SPECIES_CD"))
Palm_Beach_3_2013_grouper_biomass <- summarise_at(Palm_Beach_3_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2013_grouper_biomass$Year <- ('2013')
Palm_Beach_3_2013_grouper_biomass$Reef <- ('Palm Beach 3')


Palm_Beach_3_2014 <- import("Palm_Beach_3/data/Palm_Beach_3_2014.xls")

Palm_Beach_3_2014_snapper <- merge(Palm_Beach_3_2014, snapper, by = c("SPECIES_CD"))
Palm_Beach_3_2014_snapper_biomass <- summarise_at(Palm_Beach_3_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2014_snapper_biomass$Year <- ('2014')
Palm_Beach_3_2014_snapper_biomass$Reef <- ('Palm Beach 3')


Palm_Beach_3_2014_grouper <- merge(Palm_Beach_3_2014, grouper, by = c("SPECIES_CD"))
Palm_Beach_3_2014_grouper_biomass <- summarise_at(Palm_Beach_3_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2014_grouper_biomass$Year <- ('2014')
Palm_Beach_3_2014_grouper_biomass$Reef <- ('Palm Beach 3')


Palm_Beach_3_2015 <- import("Palm_Beach_3/data/Palm_Beach_3_2015.xls")

Palm_Beach_3_2015_snapper <- merge(Palm_Beach_3_2015, snapper, by = c("SPECIES_CD"))
Palm_Beach_3_2015_snapper_biomass <- summarise_at(Palm_Beach_3_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2015_snapper_biomass$Year <- ('2015')
Palm_Beach_3_2015_snapper_biomass$Reef <- ('Palm Beach 3')


Palm_Beach_3_2015_grouper <- merge(Palm_Beach_3_2015, grouper, by = c("SPECIES_CD"))
Palm_Beach_3_2015_grouper_biomass <- summarise_at(Palm_Beach_3_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2015_grouper_biomass$Year <- ('2015')
Palm_Beach_3_2015_grouper_biomass$Reef <- ('Palm Beach 3')

Palm_Beach_3_2016 <- import("Palm_Beach_3/data/Palm_Beach_3_2016.xls")

Palm_Beach_3_2016_snapper <- merge(Palm_Beach_3_2016, snapper, by = c("SPECIES_CD"))
Palm_Beach_3_2016_snapper_biomass <- summarise_at(Palm_Beach_3_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2016_snapper_biomass$Year <- ('2016')
Palm_Beach_3_2016_snapper_biomass$Reef <- ('Palm Beach 3')


Palm_Beach_3_2016_grouper <- merge(Palm_Beach_3_2016, grouper, by = c("SPECIES_CD"))
Palm_Beach_3_2016_grouper_biomass <- summarise_at(Palm_Beach_3_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2016_grouper_biomass$Year <- ('2016')
Palm_Beach_3_2016_grouper_biomass$Reef <- ('Palm Beach 3')


Palm_Beach_3_2018 <- import("Palm_Beach_3/data/Palm_Beach_3_2018.xls")

Palm_Beach_3_2018_snapper <- merge(Palm_Beach_3_2018, snapper, by = c("SPECIES_CD"))
Palm_Beach_3_2018_snapper_biomass <- summarise_at(Palm_Beach_3_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2018_snapper_biomass$Year <- ('2018')
Palm_Beach_3_2018_snapper_biomass$Reef <- ('Palm Beach 3')


Palm_Beach_3_2018_grouper <- merge(Palm_Beach_3_2018, grouper, by = c("SPECIES_CD"))
Palm_Beach_3_2018_grouper_biomass <- summarise_at(Palm_Beach_3_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2018_grouper_biomass$Year <- ('2018')
Palm_Beach_3_2018_grouper_biomass$Reef <- ('Palm Beach 3')



### Combine all years together for snapper_ and grouper_ seperately



# Palm_Beach_3_snapper_1 <- rbind(Palm_Beach_3_1999_snapper_biomass,Palm_Beach_3_2000_snapper_biomass)
# Palm_Beach_3_snapper_2 <- rbind(Palm_Beach_3_snapper_1,Palm_Beach_3_2001_snapper_biomass)
# Palm_Beach_3_snapper_3 <- rbind(Palm_Beach_3_snapper_2,Palm_Beach_3_2002_snapper_biomass)
# Palm_Beach_3_snapper_4 <- rbind(Palm_Beach_3_snapper_3,Palm_Beach_3_2003_snapper_biomass)
# Palm_Beach_3_snapper_5 <- rbind(Palm_Beach_3_snapper_4,Palm_Beach_3_2004_snapper_biomass)
# Palm_Beach_3_snapper_6 <- rbind(Palm_Beach_3_snapper_5,Palm_Beach_3_2005_snapper_biomass)
# Palm_Beach_3_snapper_7 <- rbind(Palm_Beach_3_snapper_6,Palm_Beach_3_2006_snapper_biomass)
# Palm_Beach_3_snapper_8 <- rbind(Palm_Beach_3_snapper_7,Palm_Beach_3_2007_snapper_biomass)
# Palm_Beach_3_snapper_9 <- rbind(Palm_Beach_3_snapper_8,Palm_Beach_3_2008_snapper_biomass)
# Palm_Beach_3_snapper_10 <- rbind(Palm_Beach_3_snapper_9,Palm_Beach_3_2009_snapper_biomass)
# Palm_Beach_3_snapper_11<- rbind(Palm_Beach_3_snapper_10,Palm_Beach_3_2010_snapper_biomass)
# Palm_Beach_3_snapper_12 <- rbind(Palm_Beach_3_snapper_11,Palm_Beach_3_2011_snapper_biomass)
Palm_Beach_3_snapper_13 <- rbind(Palm_Beach_3_2013_snapper_biomass,Palm_Beach_3_2014_snapper_biomass)
Palm_Beach_3_snapper_14 <- rbind(Palm_Beach_3_snapper_13,Palm_Beach_3_2015_snapper_biomass)
Palm_Beach_3_snapper_15 <- rbind(Palm_Beach_3_snapper_14,Palm_Beach_3_2016_snapper_biomass)
Palm_Beach_3_snapper_biomass_data_combined <- rbind(Palm_Beach_3_snapper_15,Palm_Beach_3_2018_snapper_biomass)



# Palm_Beach_3_grouper_1 <- rbind(Palm_Beach_3_1999_grouper_biomass,Palm_Beach_3_2000_grouper_biomass)
# Palm_Beach_3_grouper_2 <- rbind(Palm_Beach_3_grouper_1,Palm_Beach_3_2001_grouper_biomass)
# Palm_Beach_3_grouper_3 <- rbind(Palm_Beach_3_grouper_2,Palm_Beach_3_2002_grouper_biomass)
# Palm_Beach_3_grouper_4 <- rbind(Palm_Beach_3_grouper_3,Palm_Beach_3_2003_grouper_biomass)
# Palm_Beach_3_grouper_5 <- rbind(Palm_Beach_3_grouper_4,Palm_Beach_3_2004_grouper_biomass)
# Palm_Beach_3_grouper_6 <- rbind(Palm_Beach_3_grouper_5,Palm_Beach_3_2005_grouper_biomass)
# Palm_Beach_3_grouper_7 <- rbind(Palm_Beach_3_grouper_6,Palm_Beach_3_2006_grouper_biomass)
# Palm_Beach_3_grouper_8 <- rbind(Palm_Beach_3_grouper_7,Palm_Beach_3_2007_grouper_biomass)
# Palm_Beach_3_grouper_9 <- rbind(Palm_Beach_3_grouper_8,Palm_Beach_3_2008_grouper_biomass)
# Palm_Beach_3_grouper_10 <- rbind(Palm_Beach_3_grouper_9,Palm_Beach_3_2009_grouper_biomass)
# Palm_Beach_3_grouper_11<- rbind(Palm_Beach_3_grouper_10,Palm_Beach_3_2010_grouper_biomass)
# Palm_Beach_3_grouper_12 <- rbind(Palm_Beach_3_grouper_11,Palm_Beach_3_2011_grouper_biomass)
Palm_Beach_3_grouper_13 <- rbind(Palm_Beach_3_2013_grouper_biomass,Palm_Beach_3_2014_grouper_biomass)
Palm_Beach_3_grouper_14 <- rbind(Palm_Beach_3_grouper_13,Palm_Beach_3_2015_grouper_biomass)
Palm_Beach_3_grouper_15 <- rbind(Palm_Beach_3_grouper_14,Palm_Beach_3_2016_grouper_biomass)
Palm_Beach_3_grouper_biomass_data_combined <- rbind(Palm_Beach_3_grouper_15,Palm_Beach_3_2018_grouper_biomass)



export(Palm_Beach_3_snapper_biomass_data_combined, "Palm_Beach_3/data/Palm_Beach_3_snapper__biomass.csv")
export(Palm_Beach_3_grouper_biomass_data_combined, "Palm_Beach_3/data/Palm_Beach_3_grouper__biomass.csv")



#Palm Beach 4

Palm_Beach_4_2013 <- import("Palm_Beach_4/data/Palm_Beach_4_2013.xls")

Palm_Beach_4_2013_snapper <- merge(Palm_Beach_4_2013, snapper, by = c("SPECIES_CD"))
Palm_Beach_4_2013_snapper_biomass <- summarise_at(Palm_Beach_4_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2013_snapper_biomass$Year <- ('2013')
Palm_Beach_4_2013_snapper_biomass$Reef <- ('Palm Beach 4')


Palm_Beach_4_2013_grouper <- merge(Palm_Beach_4_2013, grouper, by = c("SPECIES_CD"))
Palm_Beach_4_2013_grouper_biomass <- summarise_at(Palm_Beach_4_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2013_grouper_biomass$Year <- ('2013')
Palm_Beach_4_2013_grouper_biomass$Reef <- ('Palm Beach 4')


Palm_Beach_4_2014 <- import("Palm_Beach_4/data/Palm_Beach_4_2014.xls")

Palm_Beach_4_2014_snapper <- merge(Palm_Beach_4_2014, snapper, by = c("SPECIES_CD"))
Palm_Beach_4_2014_snapper_biomass <- summarise_at(Palm_Beach_4_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2014_snapper_biomass$Year <- ('2014')
Palm_Beach_4_2014_snapper_biomass$Reef <- ('Palm Beach 4')


Palm_Beach_4_2014_grouper <- merge(Palm_Beach_4_2014, grouper, by = c("SPECIES_CD"))
Palm_Beach_4_2014_grouper_biomass <- summarise_at(Palm_Beach_4_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2014_grouper_biomass$Year <- ('2014')
Palm_Beach_4_2014_grouper_biomass$Reef <- ('Palm Beach 4')


Palm_Beach_4_2015 <- import("Palm_Beach_4/data/Palm_Beach_4_2015.xls")

Palm_Beach_4_2015_snapper <- merge(Palm_Beach_4_2015, snapper, by = c("SPECIES_CD"))
Palm_Beach_4_2015_snapper_biomass <- summarise_at(Palm_Beach_4_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2015_snapper_biomass$Year <- ('2015')
Palm_Beach_4_2015_snapper_biomass$Reef <- ('Palm Beach 4')


Palm_Beach_4_2015_grouper <- merge(Palm_Beach_4_2015, grouper, by = c("SPECIES_CD"))
Palm_Beach_4_2015_grouper_biomass <- summarise_at(Palm_Beach_4_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2015_grouper_biomass$Year <- ('2015')
Palm_Beach_4_2015_grouper_biomass$Reef <- ('Palm Beach 4')

Palm_Beach_4_2016 <- import("Palm_Beach_4/data/Palm_Beach_4_2016.xls")

Palm_Beach_4_2016_snapper <- merge(Palm_Beach_4_2016, snapper, by = c("SPECIES_CD"))
Palm_Beach_4_2016_snapper_biomass <- summarise_at(Palm_Beach_4_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2016_snapper_biomass$Year <- ('2016')
Palm_Beach_4_2016_snapper_biomass$Reef <- ('Palm Beach 4')


Palm_Beach_4_2016_grouper <- merge(Palm_Beach_4_2016, grouper, by = c("SPECIES_CD"))
Palm_Beach_4_2016_grouper_biomass <- summarise_at(Palm_Beach_4_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2016_grouper_biomass$Year <- ('2016')
Palm_Beach_4_2016_grouper_biomass$Reef <- ('Palm Beach 4')


Palm_Beach_4_2018 <- import("Palm_Beach_4/data/Palm_Beach_4_2018.xls")

Palm_Beach_4_2018_snapper <- merge(Palm_Beach_4_2018, snapper, by = c("SPECIES_CD"))
Palm_Beach_4_2018_snapper_biomass <- summarise_at(Palm_Beach_4_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2018_snapper_biomass$Year <- ('2018')
Palm_Beach_4_2018_snapper_biomass$Reef <- ('Palm Beach 4')


Palm_Beach_4_2018_grouper <- merge(Palm_Beach_4_2018, grouper, by = c("SPECIES_CD"))
Palm_Beach_4_2018_grouper_biomass <- summarise_at(Palm_Beach_4_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2018_grouper_biomass$Year <- ('2018')
Palm_Beach_4_2018_grouper_biomass$Reef <- ('Palm Beach 4')



### Combine all years together for snapper_ and grouper_ seperately



# Palm_Beach_4_snapper_1 <- rbind(Palm_Beach_4_1999_snapper_biomass,Palm_Beach_4_2000_snapper_biomass)
# Palm_Beach_4_snapper_2 <- rbind(Palm_Beach_4_snapper_1,Palm_Beach_4_2001_snapper_biomass)
# Palm_Beach_4_snapper_3 <- rbind(Palm_Beach_4_snapper_2,Palm_Beach_4_2002_snapper_biomass)
# Palm_Beach_4_snapper_4 <- rbind(Palm_Beach_4_snapper_3,Palm_Beach_4_2003_snapper_biomass)
# Palm_Beach_4_snapper_5 <- rbind(Palm_Beach_4_snapper_4,Palm_Beach_4_2004_snapper_biomass)
# Palm_Beach_4_snapper_6 <- rbind(Palm_Beach_4_snapper_5,Palm_Beach_4_2005_snapper_biomass)
# Palm_Beach_4_snapper_7 <- rbind(Palm_Beach_4_snapper_6,Palm_Beach_4_2006_snapper_biomass)
# Palm_Beach_4_snapper_8 <- rbind(Palm_Beach_4_snapper_7,Palm_Beach_4_2007_snapper_biomass)
# Palm_Beach_4_snapper_9 <- rbind(Palm_Beach_4_snapper_8,Palm_Beach_4_2008_snapper_biomass)
# Palm_Beach_4_snapper_10 <- rbind(Palm_Beach_4_snapper_9,Palm_Beach_4_2009_snapper_biomass)
# Palm_Beach_4_snapper_11<- rbind(Palm_Beach_4_snapper_10,Palm_Beach_4_2010_snapper_biomass)
# Palm_Beach_4_snapper_12 <- rbind(Palm_Beach_4_snapper_11,Palm_Beach_4_2011_snapper_biomass)
Palm_Beach_4_snapper_13 <- rbind(Palm_Beach_4_2013_snapper_biomass,Palm_Beach_4_2014_snapper_biomass)
Palm_Beach_4_snapper_14 <- rbind(Palm_Beach_4_snapper_13,Palm_Beach_4_2015_snapper_biomass)
Palm_Beach_4_snapper_15 <- rbind(Palm_Beach_4_snapper_14,Palm_Beach_4_2016_snapper_biomass)
Palm_Beach_4_snapper_biomass_data_combined <- rbind(Palm_Beach_4_snapper_15,Palm_Beach_4_2018_snapper_biomass)



# Palm_Beach_4_grouper_1 <- rbind(Palm_Beach_4_1999_grouper_biomass,Palm_Beach_4_2000_grouper_biomass)
# Palm_Beach_4_grouper_2 <- rbind(Palm_Beach_4_grouper_1,Palm_Beach_4_2001_grouper_biomass)
# Palm_Beach_4_grouper_3 <- rbind(Palm_Beach_4_grouper_2,Palm_Beach_4_2002_grouper_biomass)
# Palm_Beach_4_grouper_4 <- rbind(Palm_Beach_4_grouper_3,Palm_Beach_4_2003_grouper_biomass)
# Palm_Beach_4_grouper_5 <- rbind(Palm_Beach_4_grouper_4,Palm_Beach_4_2004_grouper_biomass)
# Palm_Beach_4_grouper_6 <- rbind(Palm_Beach_4_grouper_5,Palm_Beach_4_2005_grouper_biomass)
# Palm_Beach_4_grouper_7 <- rbind(Palm_Beach_4_grouper_6,Palm_Beach_4_2006_grouper_biomass)
# Palm_Beach_4_grouper_8 <- rbind(Palm_Beach_4_grouper_7,Palm_Beach_4_2007_grouper_biomass)
# Palm_Beach_4_grouper_9 <- rbind(Palm_Beach_4_grouper_8,Palm_Beach_4_2008_grouper_biomass)
# Palm_Beach_4_grouper_10 <- rbind(Palm_Beach_4_grouper_9,Palm_Beach_4_2009_grouper_biomass)
# Palm_Beach_4_grouper_11<- rbind(Palm_Beach_4_grouper_10,Palm_Beach_4_2010_grouper_biomass)
# Palm_Beach_4_grouper_12 <- rbind(Palm_Beach_4_grouper_11,Palm_Beach_4_2011_grouper_biomass)
Palm_Beach_4_grouper_13 <- rbind(Palm_Beach_4_2013_grouper_biomass,Palm_Beach_4_2014_grouper_biomass)
Palm_Beach_4_grouper_14 <- rbind(Palm_Beach_4_grouper_13,Palm_Beach_4_2015_grouper_biomass)
Palm_Beach_4_grouper_15 <- rbind(Palm_Beach_4_grouper_14,Palm_Beach_4_2016_grouper_biomass)
Palm_Beach_4_grouper_biomass_data_combined <- rbind(Palm_Beach_4_grouper_15,Palm_Beach_4_2018_grouper_biomass)



export(Palm_Beach_4_snapper_biomass_data_combined, "Palm_Beach_4/data/Palm_Beach_4_snapper__biomass.csv")
export(Palm_Beach_4_grouper_biomass_data_combined, "Palm_Beach_4/data/Palm_Beach_4_grouper__biomass.csv")


#Palm Beach 5

Palm_Beach_5_2013 <- import("Palm_Beach_5/data/Palm_Beach_5_2013.xls")

Palm_Beach_5_2013_snapper <- merge(Palm_Beach_5_2013, snapper, by = c("SPECIES_CD"))
Palm_Beach_5_2013_snapper_biomass <- summarise_at(Palm_Beach_5_2013_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2013_snapper_biomass$Year <- ('2013')
Palm_Beach_5_2013_snapper_biomass$Reef <- ('Palm Beach 5')


Palm_Beach_5_2013_grouper <- merge(Palm_Beach_5_2013, grouper, by = c("SPECIES_CD"))
Palm_Beach_5_2013_grouper_biomass <- summarise_at(Palm_Beach_5_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2013_grouper_biomass$Year <- ('2013')
Palm_Beach_5_2013_grouper_biomass$Reef <- ('Palm Beach 5')


Palm_Beach_5_2014 <- import("Palm_Beach_5/data/Palm_Beach_5_2014.xls")

Palm_Beach_5_2014_snapper <- merge(Palm_Beach_5_2014, snapper, by = c("SPECIES_CD"))
Palm_Beach_5_2014_snapper_biomass <- summarise_at(Palm_Beach_5_2014_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2014_snapper_biomass$Year <- ('2014')
Palm_Beach_5_2014_snapper_biomass$Reef <- ('Palm Beach 5')


Palm_Beach_5_2014_grouper <- merge(Palm_Beach_5_2014, grouper, by = c("SPECIES_CD"))
Palm_Beach_5_2014_grouper_biomass <- summarise_at(Palm_Beach_5_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2014_grouper_biomass$Year <- ('2014')
Palm_Beach_5_2014_grouper_biomass$Reef <- ('Palm Beach 5')


Palm_Beach_5_2015 <- import("Palm_Beach_5/data/Palm_Beach_5_2015.xls")

Palm_Beach_5_2015_snapper <- merge(Palm_Beach_5_2015, snapper, by = c("SPECIES_CD"))
Palm_Beach_5_2015_snapper_biomass <- summarise_at(Palm_Beach_5_2015_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2015_snapper_biomass$Year <- ('2015')
Palm_Beach_5_2015_snapper_biomass$Reef <- ('Palm Beach 5')


Palm_Beach_5_2015_grouper <- merge(Palm_Beach_5_2015, grouper, by = c("SPECIES_CD"))
Palm_Beach_5_2015_grouper_biomass <- summarise_at(Palm_Beach_5_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2015_grouper_biomass$Year <- ('2015')
Palm_Beach_5_2015_grouper_biomass$Reef <- ('Palm Beach 5')

Palm_Beach_5_2016 <- import("Palm_Beach_5/data/Palm_Beach_5_2016.xls")

Palm_Beach_5_2016_snapper <- merge(Palm_Beach_5_2016, snapper, by = c("SPECIES_CD"))
Palm_Beach_5_2016_snapper_biomass <- summarise_at(Palm_Beach_5_2016_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2016_snapper_biomass$Year <- ('2016')
Palm_Beach_5_2016_snapper_biomass$Reef <- ('Palm Beach 5')


Palm_Beach_5_2016_grouper <- merge(Palm_Beach_5_2016, grouper, by = c("SPECIES_CD"))
Palm_Beach_5_2016_grouper_biomass <- summarise_at(Palm_Beach_5_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2016_grouper_biomass$Year <- ('2016')
Palm_Beach_5_2016_grouper_biomass$Reef <- ('Palm Beach 5')


Palm_Beach_5_2018 <- import("Palm_Beach_5/data/Palm_Beach_5_2018.xls")

Palm_Beach_5_2018_snapper <- merge(Palm_Beach_5_2018, snapper, by = c("SPECIES_CD"))
Palm_Beach_5_2018_snapper_biomass <- summarise_at(Palm_Beach_5_2018_snapper, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2018_snapper_biomass$Year <- ('2018')
Palm_Beach_5_2018_snapper_biomass$Reef <- ('Palm Beach 5')


Palm_Beach_5_2018_grouper <- merge(Palm_Beach_5_2018, grouper, by = c("SPECIES_CD"))
Palm_Beach_5_2018_grouper_biomass <- summarise_at(Palm_Beach_5_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2018_grouper_biomass$Year <- ('2018')
Palm_Beach_5_2018_grouper_biomass$Reef <- ('Palm Beach 5')



### Combine all years together for snapper_ and grouper_ seperately



# Palm_Beach_5_snapper_1 <- rbind(Palm_Beach_5_1999_snapper_biomass,Palm_Beach_5_2000_snapper_biomass)
# Palm_Beach_5_snapper_2 <- rbind(Palm_Beach_5_snapper_1,Palm_Beach_5_2001_snapper_biomass)
# Palm_Beach_5_snapper_3 <- rbind(Palm_Beach_5_snapper_2,Palm_Beach_5_2002_snapper_biomass)
# Palm_Beach_5_snapper_4 <- rbind(Palm_Beach_5_snapper_3,Palm_Beach_5_2003_snapper_biomass)
# Palm_Beach_5_snapper_5 <- rbind(Palm_Beach_5_snapper_4,Palm_Beach_5_2004_snapper_biomass)
# Palm_Beach_5_snapper_6 <- rbind(Palm_Beach_5_snapper_5,Palm_Beach_5_2005_snapper_biomass)
# Palm_Beach_5_snapper_7 <- rbind(Palm_Beach_5_snapper_6,Palm_Beach_5_2006_snapper_biomass)
# Palm_Beach_5_snapper_8 <- rbind(Palm_Beach_5_snapper_7,Palm_Beach_5_2007_snapper_biomass)
# Palm_Beach_5_snapper_9 <- rbind(Palm_Beach_5_snapper_8,Palm_Beach_5_2008_snapper_biomass)
# Palm_Beach_5_snapper_10 <- rbind(Palm_Beach_5_snapper_9,Palm_Beach_5_2009_snapper_biomass)
# Palm_Beach_5_snapper_11<- rbind(Palm_Beach_5_snapper_10,Palm_Beach_5_2010_snapper_biomass)
# Palm_Beach_5_snapper_12 <- rbind(Palm_Beach_5_snapper_11,Palm_Beach_5_2011_snapper_biomass)
Palm_Beach_5_snapper_13 <- rbind(Palm_Beach_5_2013_snapper_biomass,Palm_Beach_5_2014_snapper_biomass)
Palm_Beach_5_snapper_14 <- rbind(Palm_Beach_5_snapper_13,Palm_Beach_5_2015_snapper_biomass)
Palm_Beach_5_snapper_15 <- rbind(Palm_Beach_5_snapper_14,Palm_Beach_5_2016_snapper_biomass)
Palm_Beach_5_snapper_biomass_data_combined <- rbind(Palm_Beach_5_snapper_15,Palm_Beach_5_2018_snapper_biomass)



# Palm_Beach_5_grouper_1 <- rbind(Palm_Beach_5_1999_grouper_biomass,Palm_Beach_5_2000_grouper_biomass)
# Palm_Beach_5_grouper_2 <- rbind(Palm_Beach_5_grouper_1,Palm_Beach_5_2001_grouper_biomass)
# Palm_Beach_5_grouper_3 <- rbind(Palm_Beach_5_grouper_2,Palm_Beach_5_2002_grouper_biomass)
# Palm_Beach_5_grouper_4 <- rbind(Palm_Beach_5_grouper_3,Palm_Beach_5_2003_grouper_biomass)
# Palm_Beach_5_grouper_5 <- rbind(Palm_Beach_5_grouper_4,Palm_Beach_5_2004_grouper_biomass)
# Palm_Beach_5_grouper_6 <- rbind(Palm_Beach_5_grouper_5,Palm_Beach_5_2005_grouper_biomass)
# Palm_Beach_5_grouper_7 <- rbind(Palm_Beach_5_grouper_6,Palm_Beach_5_2006_grouper_biomass)
# Palm_Beach_5_grouper_8 <- rbind(Palm_Beach_5_grouper_7,Palm_Beach_5_2007_grouper_biomass)
# Palm_Beach_5_grouper_9 <- rbind(Palm_Beach_5_grouper_8,Palm_Beach_5_2008_grouper_biomass)
# Palm_Beach_5_grouper_10 <- rbind(Palm_Beach_5_grouper_9,Palm_Beach_5_2009_grouper_biomass)
# Palm_Beach_5_grouper_11<- rbind(Palm_Beach_5_grouper_10,Palm_Beach_5_2010_grouper_biomass)
# Palm_Beach_5_grouper_12 <- rbind(Palm_Beach_5_grouper_11,Palm_Beach_5_2011_grouper_biomass)
Palm_Beach_5_grouper_13 <- rbind(Palm_Beach_5_2013_grouper_biomass,Palm_Beach_5_2014_grouper_biomass)
Palm_Beach_5_grouper_14 <- rbind(Palm_Beach_5_grouper_13,Palm_Beach_5_2015_grouper_biomass)
Palm_Beach_5_grouper_15 <- rbind(Palm_Beach_5_grouper_14,Palm_Beach_5_2016_grouper_biomass)
Palm_Beach_5_grouper_biomass_data_combined <- rbind(Palm_Beach_5_grouper_15,Palm_Beach_5_2018_grouper_biomass)



export(Palm_Beach_5_snapper_biomass_data_combined, "Palm_Beach_5/data/Palm_Beach_5_snapper__biomass.csv")
export(Palm_Beach_5_grouper_biomass_data_combined, "Palm_Beach_5/data/Palm_Beach_5_grouper__biomass.csv")

## Combine all SEF


SEF_reef_snapper_biomass_combined <- rbind(Broward_County_1_snapper_biomass_data_combined,Broward_County_2_snapper_biomass_data_combined,Broward_County_3_snapper_biomass_data_combined,Broward_County_4_snapper_biomass_data_combined,Broward_County_5_snapper_biomass_data_combined,Broward_County_6_snapper_biomass_data_combined,Broward_County_A_snapper_biomass_data_combined, Dade_County_1_snapper_biomass_data_combined, Dade_County_2_snapper_biomass_data_combined,Dade_County_3_snapper_biomass_data_combined,Dade_County_4_snapper_biomass_data_combined,Dade_County_5_snapper_biomass_data_combined,Dade_County_6_snapper_biomass_data_combined,Dade_County_7_snapper_biomass_data_combined,Dade_County_8_snapper_biomass_data_combined,Martin_County_1_snapper_biomass_data_combined,Martin_County_2_snapper_biomass_data_combined,Palm_Beach_1_snapper_biomass_data_combined,Palm_Beach_2_snapper_biomass_data_combined,Palm_Beach_3_snapper_biomass_data_combined,Palm_Beach_4_snapper_biomass_data_combined, Palm_Beach_5_snapper_biomass_data_combined)
SEF_reef_snapper_biomass_data <- arrange(SEF_reef_snapper_biomass_combined, Year,Reef, sum, max, min, mean, sd )
SEF_reef_snapper_biomass_data$REGION <- ("SEF")
export(SEF_reef_snapper_biomass_data, "SEF_snapper__biomass_data.csv")



SEF_reef_grouper_biomass_combined <- rbind(Broward_County_1_grouper_biomass_data_combined,Broward_County_2_grouper_biomass_data_combined,Broward_County_3_grouper_biomass_data_combined,Broward_County_4_grouper_biomass_data_combined,Broward_County_5_grouper_biomass_data_combined,Broward_County_6_grouper_biomass_data_combined,Broward_County_A_grouper_biomass_data_combined, Dade_County_1_grouper_biomass_data_combined, Dade_County_2_grouper_biomass_data_combined,Dade_County_3_grouper_biomass_data_combined,Dade_County_4_grouper_biomass_data_combined,Dade_County_5_grouper_biomass_data_combined,Dade_County_6_grouper_biomass_data_combined,Dade_County_7_grouper_biomass_data_combined,Dade_County_8_grouper_biomass_data_combined,Martin_County_1_grouper_biomass_data_combined,Martin_County_2_grouper_biomass_data_combined,Palm_Beach_1_grouper_biomass_data_combined,Palm_Beach_2_grouper_biomass_data_combined,Palm_Beach_3_grouper_biomass_data_combined,Palm_Beach_4_grouper_biomass_data_combined, Palm_Beach_5_grouper_biomass_data_combined)
SEF_reef_grouper_biomass_data <- arrange(SEF_reef_grouper_biomass_combined, Year,Reef, sum, max, min, mean, sd )
SEF_reef_grouper_biomass_data$REGION <- ("SEF")
export(SEF_reef_grouper_biomass_data, "SEF_grouper__biomass_data.csv")





### COMBINE ALL SUBREGIONS TOGETHER

library(data.table)
setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF")

DT_snapper <- read_csv("DT/DT_snapper__biomass_data.csv")
LK_snapper <- read_csv("LK/LK_snapper__biomass_data.csv")
MK_snapper <- read_csv("MK/MK_snapper__biomass_data.csv")
UK_snapper <- read_csv("UK/UK_snapper__biomass_data.csv")
SEF_snapper <- read_csv("SEF/SEF_snapper__biomass_data.csv")

All_regions_snapper_data_combined <- rbind(DT_snapper,LK_snapper,MK_snapper,UK_snapper,SEF_snapper)
All_regions_snapper_data <- arrange(All_regions_snapper_data_combined, Year, Reef, sum, max, min, mean, sd)

setnames(All_regions_snapper_data, old = c('Reef'), new = c('sitename'))
export(All_regions_snapper_data, "All_regions_RVC_snapper__biomass.csv")

DT_grouper <- read_csv("DT/DT_grouper__biomass_data.csv")
LK_grouper <- read_csv("LK/LK_grouper__biomass_data.csv")
MK_grouper <- read_csv("MK/MK_grouper__biomass_data.csv")
UK_grouper <- read_csv("UK/UK_grouper__biomass_data.csv")
SEF_grouper <- read_csv("SEF/SEF_grouper__biomass_data.csv")

All_regions_grouper_data_combined <- rbind(DT_grouper,LK_grouper,MK_grouper,UK_grouper,SEF_grouper)
All_regions_grouper_data <- arrange(All_regions_grouper_data_combined, Year, Reef, sum, max, min, mean, sd)

setnames(All_regions_grouper_data, old = c('Reef'), new = c('sitename'))
export(All_regions_grouper_data, "All_regions_RVC_grouper__biomass.csv")




