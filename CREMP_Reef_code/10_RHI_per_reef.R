

### RHI (herbivorous and commercial fish species)

## This input data is an ouput of (4_Biomass_per_reef)

library(rio)
library("magrittr")
library("tidyverse")

setwd("C:/Users/cestes/Documents/Spring_2020/RVC_CREMP_by_REEF/DT")


## Get SPECIES_CD of each fish and group by herbivorous and commercial 


# Herbivorous
forage_fish_spp_list= c("HYP HARR", "ATH STIP", "JEN SPE.", "HAR JAGU", "ANC LYOL", "INE VITT", "HEM BRAS", "SAR AURI", "HAR HUME", "CHR ATHE")
forage <- data.frame(forage_fish_spp_list)
colnames(forage)<- ("SPECIES_CD")

parrotfish_spp_list = c('SCA ISER', "SCA COEL", "SPA AURO", "SPA VIRI", "SPA ATOM", "SCA TAEN", 'SPA RUBR', "SPA CHRY", "SCA VETU", "SCA COER", "SCA GUAC", "CRY ROSE", "SPA RADI", "SCA SPE.", "NIC USTA", "SPA SPE.")
parrot <- data.frame(parrotfish_spp_list)
colnames(parrot)<- ("SPECIES_CD")

small_reef_fish_spp_list = c("COR PERS","ACA COER","KYP SECT","ACA BAHI","ACA CHIR","COR GLAU","ELA OCEA","GNA THOM","PTE CALL","ACA SPE.","MAL TRIA","COR DICR","PAR MARM","MAL MACR","OPH MACC","CTE SAEP","MIC CARR","PTE HELE","HEM SIMU","SCA CRIS","COR EIDO","GOB SPE.","TYL CROC","MIC MICR","ACA ASPE","COR SPE.","BLE SPE.","STR NOTA","MEL NIGE","HYP BERM","EMB PAND","ELA EVEL","ACA CHAP","EMB BAHA","COR LIPE","NES LONG","ENN BOEH","ACA MARI","LAB NUCH","MAL VERS","MAL GILL","ELA MACR","PRI HIPO","GOB DILE","ELA SAUC","ELA XANT","STR TIMU","MAL AURO","PAR MARN","CHA LIMB","OXY STIG","ELA HORS","PAR NIGR","COR PUNC","ACA SPIN","BOL BOQU","ElA RAND","LAB KALI","LAB NIGR","ENN ALTI")
small_reef <- data.frame(small_reef_fish_spp_list)
colnames(small_reef)<- ("SPECIES_CD")



Herb <- rbind(forage, parrot, small_reef)




# Commercial 
grouper_spp_list= c("CEP CRUE", "MYC BONA", "EPI MORI", "EPI STRI", "EPI ITAJ", "CEP FULV", "MYC MICR", "MYC PHEN", "MYC VENE", "MYC INTE", "MYC TIGR", "EPI FLAV", "DER INER", "SRR SPE.", "Epi nive", "Myc acut")
grouper <- data.frame(grouper_spp_list)
colnames(grouper)<- ("SPECIES_CD")

grunt_spp_list = c("HAE SCIU", "HAE AURO", "HAE PLUM", "HAE SPE.", "HAE FLAV", "HAE CHRY", "ANI VIRG","HAE MELA", "HAE CARB", "HAE PARR", "HAE STRI", "HAE MACR", "ANI SURI", "HAE ALBU")
grunt <- data.frame(grunt_spp_list)
colnames(grunt)<- ("SPECIES_CD")

higher_reef_spp_list = c("THA BIFA","STE PART","GYM MORI","PRI AREN","ABU SAXA","HAL BIVI","HAL GARN","HAL MACU","CHR MULT","CLE PARR","STE PLAN","CHR CYAN","MUL MART","MIC CHRY","STE ADUS","CHA CAPI","STE VARI","PEM SCHO","POM ARCU","CAN ROST","CHA OCEL","PSE MACU","HOL TRIC","CHR SCOT","HAL RADI","CAL CALA","CHA SEDE","XYR SPLE","STE LEUC","HOL CILI","POM PARU","AUL MACU","CHA STRI","OPI AURI","HAL POEY","CHR INSO","HOL ADSC","ODO DENT","STE DIEN","HOL BERM","CHA FABE","XYR MART","GER CINE","HOL RUFU","LAC TRIQ","PAR ACUM","ALU SCRI","BAL CAPR","MAL PLUM","CAN SUFF","CAN PULL","HET CRUE","OGC SPE.","XYR SPE.","ACA QUAD","CAL BAJO","MON TUCK","SPH SPEN","ARC RHOM","DIO HOLO","LAC BICA","XYR NOVA","BAL VETU","DIO HYST","HAL CYAN","GYM FUNE","DIP HOLB","APO PSEU","HOL TOWN","EQU PUNC","LAC TRIG","HAL PICT","MYR JACO","SAR VEXI","SYN INTE","HAL CAUD","AMB PINO","GYM MILI","ALU SCHO","ACA POLY","CAL PROR","CHI SCHO","HET LONG","SCO PLUM","CHR ENCH","CAL SPE.","APO MACU","CAN MACR","PAR UMBR","LAG RHOM","EQU LANC","CAL PENN","STE HISP","APO BINO","NEO MARI","ARC PROB","CHI ANTE","APO TOWN","DOR MEGA","REM REMO","OPI WHIT","CEN ARGI","SYN FOET","AST SPE.","CAR HIPP","SAR CORU","OPI MACR","GYM VICI","DIP ARGE","PAG PAGR","PAR BAIR","BOT LUNA","EUC ARGE","PRO ACUL","LAB GOBI","FIS TABA","ALU SPE.","GRA LORE","MON CILI","ECH NEUC","ALU MONO","BOT OCEL","BAL SPE.","PAR ALBI","STE SPE.","APO QUAD","ENC NIGR","GYM SAXI","OPI SPE.","ELO SAUR","MAN BIRO","APO AURO","SPH TEST","CAL NODO","DIO SPE.","SCO CARI","LAB FILA","AHL EGMO","ANT OCEL","AST GUTT","LAB SPE.","LAB SPE.","MUR RETI","AST STEL","EUC GULA","HOL SPE.","ORT CHRY","PRI OPHR","LAB BUCC","ACA SOLA","CAL LEUC","ENC CARY","GYM NIGR","MYR BREV","SAR BULL","TRA GOOD","TRA LATH","UMB CORO","EUC JONE","EUCLEFR","STY LATE","SYA MICR","SYN SCOV","APO PHEN","HIP REID","PHA XENU","AST PUNC","CHI ATIN","CHL CHRY","HIP EREC","OGC NASU","SER PHOE","SPH NEPH","MYR OCEL","PRI RUBI","RHI LENT","ALB VULP","DAC VOLI","RYP BIST","BRO BARB","HYP GUMM","OPS TAU_","EMM ATLA","UPE PARV","SYN SYNO")
higher <- data.frame(higher_reef_spp_list)
colnames(higher)<- ("SPECIES_CD")

hogfish_spp_list = c("LAC MAXI", "BOD RUFU", "BOD PULC")
hogfish <- data.frame(hogfish_spp_list)
colnames(hogfish)<- ("SPECIES_CD")

opportunists_spp_list = c("CAR RUBE", "SPH BARR", "ALE CILI","DEC PUNC", "DEC MACA", "CAR CRYS", "CAR BART", "SCO REGA","SPH PICU", "CAR LATU", "SEL VOME", "ELA BIPI", "CAR SPE.", "TRA FALC", "EUT ALLE", "SER RIVO", "SCO MACU", "SER DUME", "SCO CAVA", "SPH GUAC", "CAR LUGU", "OLI SAUR", "SER SPE.", "Rac cana", "Ser zona")
opportunists <- data.frame(opportunists_spp_list)
colnames(opportunists)<- ("SPECIES_CD")

sea_bass_hamlet_spp_list = c("SER TIGR","HYP GEMM","HYP UNIC","SER TABA","SER BALD","HYP PUEL","EPI ADSC","SER TORT","EPI GUTT","HYP NIGR","DIP FORM","HYP SPE.","SCH BETA","HYP TANN", "RYP SAPO","PAR FURC","HYP INDI","HYP GUTT","ALP AFER","LIO EUKR","SER ANNU","LIO RUBE","HYP HYBR","HYP CHLO","PRI AQUI","RYP MACU","SER SUBL","CEN OCYU","CEN STRI","Epi drum","Lio mowb")
seabass <- data.frame(sea_bass_hamlet_spp_list)
colnames(seabass)<- ("SPECIES_CD")

snapper_spp_list = c("OCY CHRY", "LUT GRIS", "LUT ANAL", "LUT APOD", "LUT SYNA", "LUT MAHO", "LUT JOCU", "LUT BUCC", 'LUT SPE.', "LUT CYAN", "RHO AURO", "Lut camp")
snapper <- data.frame(snapper_spp_list)
colnames(snapper)<- ("SPECIES_CD")




Comm <- rbind(grouper, grunt, higher, hogfish, opportunists, seabass, snapper)



## Subset data from each reef per year to sum biomass of herb and comm fish

# Bird Key Reef 

Bird_Key_1999 <- import("Bird_Key_Reef/data/Bird_Key_Reef_1999.xls")


Bird_Key_1999_herb <- merge(Bird_Key_1999, Herb, by = c("SPECIES_CD"))
Bird_Key_1999_herb_biomass <- summarise_at(Bird_Key_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_1999_herb_biomass$Year <- ('1999')
Bird_Key_1999_herb_biomass$Reef <- ('Bird Key Reef')


Bird_Key_1999_comm <- merge(Bird_Key_1999, Comm, by = c("SPECIES_CD"))
Bird_Key_1999_comm_biomass <- summarise_at(Bird_Key_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_1999_comm_biomass$Year <- ('1999')
Bird_Key_1999_comm_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2000 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2000.xls")

Bird_Key_2000_herb <- merge(Bird_Key_2000, Herb, by = c("SPECIES_CD"))
Bird_Key_2000_herb_biomass <- summarise_at(Bird_Key_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2000_herb_biomass$Year <- ('2000')
Bird_Key_2000_herb_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2000_comm <- merge(Bird_Key_2000, Comm, by = c("SPECIES_CD"))
Bird_Key_2000_comm_biomass <- summarise_at(Bird_Key_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2000_comm_biomass$Year <- ('2000')
Bird_Key_2000_comm_biomass$Reef <- ('Bird Key Reef')

Bird_Key_2004 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2004.xls")

Bird_Key_2004_herb <- merge(Bird_Key_2004, Herb, by = c("SPECIES_CD"))
Bird_Key_2004_herb_biomass <- summarise_at(Bird_Key_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2004_herb_biomass$Year <- ('2004')
Bird_Key_2004_herb_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2004_comm <- merge(Bird_Key_2004, Comm, by = c("SPECIES_CD"))
Bird_Key_2004_comm_biomass <- summarise_at(Bird_Key_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2004_comm_biomass$Year <- ('2004')
Bird_Key_2004_comm_biomass$Reef <- ('Bird Key Reef')

Bird_Key_2006 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2006.xls")

Bird_Key_2006_herb <- merge(Bird_Key_2006, Herb, by = c("SPECIES_CD"))
Bird_Key_2006_herb_biomass <- summarise_at(Bird_Key_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2006_herb_biomass$Year <- ('2006')
Bird_Key_2006_herb_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2006_comm <- merge(Bird_Key_2006, Comm, by = c("SPECIES_CD"))
Bird_Key_2006_comm_biomass <- summarise_at(Bird_Key_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2006_comm_biomass$Year <- ('2006')
Bird_Key_2006_comm_biomass$Reef <- ('Bird Key Reef')

Bird_Key_2008 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2008.xls")

Bird_Key_2008_herb <- merge(Bird_Key_2008, Herb, by = c("SPECIES_CD"))
Bird_Key_2008_herb_biomass <- summarise_at(Bird_Key_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2008_herb_biomass$Year <- ('2008')
Bird_Key_2008_herb_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2008_comm <- merge(Bird_Key_2008, Comm, by = c("SPECIES_CD"))
Bird_Key_2008_comm_biomass <- summarise_at(Bird_Key_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2008_comm_biomass$Year <- ('2008')
Bird_Key_2008_comm_biomass$Reef <- ('Bird Key Reef')

Bird_Key_2010 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2010.xls")

Bird_Key_2010_herb <- merge(Bird_Key_2010, Herb, by = c("SPECIES_CD"))
Bird_Key_2010_herb_biomass <- summarise_at(Bird_Key_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2010_herb_biomass$Year <- ('2010')
Bird_Key_2010_herb_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2010_comm <- merge(Bird_Key_2010, Comm, by = c("SPECIES_CD"))
Bird_Key_2010_comm_biomass <- summarise_at(Bird_Key_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2010_comm_biomass$Year <- ('2010')
Bird_Key_2010_comm_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2012 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2012.xls")

Bird_Key_2012_herb <- merge(Bird_Key_2012, Herb, by = c("SPECIES_CD"))
Bird_Key_2012_herb_biomass <- summarise_at(Bird_Key_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2012_herb_biomass$Year <- ('2012')
Bird_Key_2012_herb_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2012_comm <- merge(Bird_Key_2012, Comm, by = c("SPECIES_CD"))
Bird_Key_2012_comm_biomass <- summarise_at(Bird_Key_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2012_comm_biomass$Year <- ('2012')
Bird_Key_2012_comm_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2014 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2014.xls")

Bird_Key_2014_herb <- merge(Bird_Key_2014, Herb, by = c("SPECIES_CD"))
Bird_Key_2014_herb_biomass <- summarise_at(Bird_Key_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2014_herb_biomass$Year <- ('2014')
Bird_Key_2014_herb_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2014_comm <- merge(Bird_Key_2014, Comm, by = c("SPECIES_CD"))
Bird_Key_2014_comm_biomass <- summarise_at(Bird_Key_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2014_comm_biomass$Year <- ('2014')
Bird_Key_2014_comm_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2016 <- import("Bird_Key_Reef/data/Bird_Key_Reef_2016.xls")

Bird_Key_2016_herb <- merge(Bird_Key_2016, Herb, by = c("SPECIES_CD"))
Bird_Key_2016_herb_biomass <- summarise_at(Bird_Key_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2016_herb_biomass$Year <- ('2016')
Bird_Key_2016_herb_biomass$Reef <- ('Bird Key Reef')


Bird_Key_2016_comm <- merge(Bird_Key_2016, Comm, by = c("SPECIES_CD"))
Bird_Key_2016_comm_biomass <- summarise_at(Bird_Key_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Bird_Key_2016_comm_biomass$Year <- ('2016')
Bird_Key_2016_comm_biomass$Reef <- ('Bird Key Reef')


### Combine all years together for herbivorous and commercial seperately 

Bird_key_herb_1 <- rbind(Bird_Key_1999_herb_biomass,Bird_Key_2000_herb_biomass)
Bird_key_herb_2 <- rbind(Bird_key_herb_1,Bird_Key_2004_herb_biomass)
Bird_key_herb_3 <- rbind(Bird_key_herb_2,Bird_Key_2006_herb_biomass)
Bird_key_herb_4 <- rbind(Bird_key_herb_3,Bird_Key_2008_herb_biomass)
Bird_key_herb_5 <- rbind(Bird_key_herb_4,Bird_Key_2010_herb_biomass)
Bird_key_herb_6 <- rbind(Bird_key_herb_5,Bird_Key_2012_herb_biomass)
Bird_key_herb_7 <- rbind(Bird_key_herb_6,Bird_Key_2014_herb_biomass)
Bird_Key_herb_biomass <- rbind(Bird_key_herb_7,Bird_Key_2016_herb_biomass)


Bird_key_comm_1 <- rbind(Bird_Key_1999_comm_biomass,Bird_Key_2000_comm_biomass)
Bird_key_comm_2 <- rbind(Bird_key_comm_1,Bird_Key_2004_comm_biomass)
Bird_key_comm_3 <- rbind(Bird_key_comm_2,Bird_Key_2006_comm_biomass)
Bird_key_comm_4 <- rbind(Bird_key_comm_3,Bird_Key_2008_comm_biomass)
Bird_key_comm_5 <- rbind(Bird_key_comm_4,Bird_Key_2010_comm_biomass)
Bird_key_comm_6 <- rbind(Bird_key_comm_5,Bird_Key_2012_comm_biomass)
Bird_key_comm_7 <- rbind(Bird_key_comm_6,Bird_Key_2014_comm_biomass)
Bird_Key_comm_biomass <- rbind(Bird_key_comm_7,Bird_Key_2016_comm_biomass)


export(Bird_Key_herb_biomass, "Bird_Key_Reef/data/Bird_Key_herbivorous_biomass.csv")
export(Bird_Key_comm_biomass, "Bird_Key_Reef/data/Bird_Key_commercial_biomass.csv")





## Black Coral 



# Black_Coral_Rock_1999 <- import("Black_Coral_Rock/data/Black_Coral_Rock_1999.xls")
# 
# 
# Black_Coral_Rock_1999_herb <- merge(Black_Coral_Rock_1999, Herb, by = c("SPECIES_CD"))
# Black_Coral_Rock_1999_herb_biomass <- summarise_at(Black_Coral_Rock_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Black_Coral_Rock_1999_herb_biomass$Year <- ('1999')
# Black_Coral_Rock_1999_herb_biomass$Reef <- ('Black Coral Rock')
# 
# 
# Black_Coral_Rock_1999_comm <- merge(Black_Coral_Rock_1999, Comm, by = c("SPECIES_CD"))
# Black_Coral_Rock_1999_comm_biomass <- summarise_at(Black_Coral_Rock_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Black_Coral_Rock_1999_comm_biomass$Year <- ('1999')
# Black_Coral_Rock_1999_comm_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2000 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2000.xls")

Black_Coral_Rock_2000_herb <- merge(Black_Coral_Rock_2000, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_2000_herb_biomass <- summarise_at(Black_Coral_Rock_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2000_herb_biomass$Year <- ('2000')
Black_Coral_Rock_2000_herb_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2000_comm <- merge(Black_Coral_Rock_2000, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_2000_comm_biomass <- summarise_at(Black_Coral_Rock_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2000_comm_biomass$Year <- ('2000')
Black_Coral_Rock_2000_comm_biomass$Reef <- ('Black Coral Rock')

Black_Coral_Rock_2004 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2004.xls")

Black_Coral_Rock_2004_herb <- merge(Black_Coral_Rock_2004, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_2004_herb_biomass <- summarise_at(Black_Coral_Rock_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2004_herb_biomass$Year <- ('2004')
Black_Coral_Rock_2004_herb_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2004_comm <- merge(Black_Coral_Rock_2004, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_2004_comm_biomass <- summarise_at(Black_Coral_Rock_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2004_comm_biomass$Year <- ('2004')
Black_Coral_Rock_2004_comm_biomass$Reef <- ('Black Coral Rock')

Black_Coral_Rock_2006 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2006.xls")

Black_Coral_Rock_2006_herb <- merge(Black_Coral_Rock_2006, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_2006_herb_biomass <- summarise_at(Black_Coral_Rock_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2006_herb_biomass$Year <- ('2006')
Black_Coral_Rock_2006_herb_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2006_comm <- merge(Black_Coral_Rock_2006, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_2006_comm_biomass <- summarise_at(Black_Coral_Rock_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2006_comm_biomass$Year <- ('2006')
Black_Coral_Rock_2006_comm_biomass$Reef <- ('Black Coral Rock')

Black_Coral_Rock_2008 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2008.xls")

Black_Coral_Rock_2008_herb <- merge(Black_Coral_Rock_2008, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_2008_herb_biomass <- summarise_at(Black_Coral_Rock_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2008_herb_biomass$Year <- ('2008')
Black_Coral_Rock_2008_herb_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2008_comm <- merge(Black_Coral_Rock_2008, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_2008_comm_biomass <- summarise_at(Black_Coral_Rock_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2008_comm_biomass$Year <- ('2008')
Black_Coral_Rock_2008_comm_biomass$Reef <- ('Black Coral Rock')

Black_Coral_Rock_2010 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2010.xls")

Black_Coral_Rock_2010_herb <- merge(Black_Coral_Rock_2010, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_2010_herb_biomass <- summarise_at(Black_Coral_Rock_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2010_herb_biomass$Year <- ('2010')
Black_Coral_Rock_2010_herb_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2010_comm <- merge(Black_Coral_Rock_2010, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_2010_comm_biomass <- summarise_at(Black_Coral_Rock_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2010_comm_biomass$Year <- ('2010')
Black_Coral_Rock_2010_comm_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2012 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2012.xls")

Black_Coral_Rock_2012_herb <- merge(Black_Coral_Rock_2012, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_2012_herb_biomass <- summarise_at(Black_Coral_Rock_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2012_herb_biomass$Year <- ('2012')
Black_Coral_Rock_2012_herb_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2012_comm <- merge(Black_Coral_Rock_2012, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_2012_comm_biomass <- summarise_at(Black_Coral_Rock_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2012_comm_biomass$Year <- ('2012')
Black_Coral_Rock_2012_comm_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2014 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2014.xls")

Black_Coral_Rock_2014_herb <- merge(Black_Coral_Rock_2014, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_2014_herb_biomass <- summarise_at(Black_Coral_Rock_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2014_herb_biomass$Year <- ('2014')
Black_Coral_Rock_2014_herb_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2014_comm <- merge(Black_Coral_Rock_2014, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_2014_comm_biomass <- summarise_at(Black_Coral_Rock_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2014_comm_biomass$Year <- ('2014')
Black_Coral_Rock_2014_comm_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2016 <- import("Black_Coral_Rock/data/Black_Coral_Rock_2016.xls")

Black_Coral_Rock_2016_herb <- merge(Black_Coral_Rock_2016, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_2016_herb_biomass <- summarise_at(Black_Coral_Rock_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2016_herb_biomass$Year <- ('2016')
Black_Coral_Rock_2016_herb_biomass$Reef <- ('Black Coral Rock')


Black_Coral_Rock_2016_comm <- merge(Black_Coral_Rock_2016, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_2016_comm_biomass <- summarise_at(Black_Coral_Rock_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Black_Coral_Rock_2016_comm_biomass$Year <- ('2016')
Black_Coral_Rock_2016_comm_biomass$Reef <- ('Black Coral Rock')


### Combine all years together for herbivorous and commercial seperately 

#Black_Coral_Rock_herb_1 <- rbind(Black_Coral_Rock_1999_herb_biomass,Black_Coral_Rock_2000_herb_biomass)
Black_Coral_Rock_herb_2 <- rbind(Black_Coral_Rock_2000_herb_biomass,Black_Coral_Rock_2004_herb_biomass)
Black_Coral_Rock_herb_3 <- rbind(Black_Coral_Rock_herb_2,Black_Coral_Rock_2006_herb_biomass)
Black_Coral_Rock_herb_4 <- rbind(Black_Coral_Rock_herb_3,Black_Coral_Rock_2008_herb_biomass)
Black_Coral_Rock_herb_5 <- rbind(Black_Coral_Rock_herb_4,Black_Coral_Rock_2010_herb_biomass)
Black_Coral_Rock_herb_6 <- rbind(Black_Coral_Rock_herb_5,Black_Coral_Rock_2012_herb_biomass)
Black_Coral_Rock_herb_7 <- rbind(Black_Coral_Rock_herb_6,Black_Coral_Rock_2014_herb_biomass)
Black_Coral_Rock_herb_biomass <- rbind(Black_Coral_Rock_herb_7,Black_Coral_Rock_2016_herb_biomass)


#Black_Coral_Rock_comm_1 <- rbind(Black_Coral_Rock_1999_comm_biomass,Black_Coral_Rock_2000_comm_biomass)
Black_Coral_Rock_comm_2 <- rbind(Black_Coral_Rock_2000_comm_biomass,Black_Coral_Rock_2004_comm_biomass)
Black_Coral_Rock_comm_3 <- rbind(Black_Coral_Rock_comm_2,Black_Coral_Rock_2006_comm_biomass)
Black_Coral_Rock_comm_4 <- rbind(Black_Coral_Rock_comm_3,Black_Coral_Rock_2008_comm_biomass)
Black_Coral_Rock_comm_5 <- rbind(Black_Coral_Rock_comm_4,Black_Coral_Rock_2010_comm_biomass)
Black_Coral_Rock_comm_6 <- rbind(Black_Coral_Rock_comm_5,Black_Coral_Rock_2012_comm_biomass)
Black_Coral_Rock_comm_7 <- rbind(Black_Coral_Rock_comm_6,Black_Coral_Rock_2014_comm_biomass)
Black_Coral_Rock_comm_biomass <- rbind(Black_Coral_Rock_comm_7,Black_Coral_Rock_2016_comm_biomass)


export(Black_Coral_Rock_herb_biomass, "Black_Coral_Rock/data/Black_Coral_Rock_herbivorous_biomass.csv")
export(Black_Coral_Rock_comm_biomass, "Black_Coral_Rock/data/Black_Coral_Rock_commercial_biomass.csv")



## Davis Rock 



# Davis_Rock_1999 <- import("Davis_Rock/data/Davis_Rock_1999.xls")
# 
# 
# Davis_Rock_1999_herb <- merge(Davis_Rock_1999, Herb, by = c("SPECIES_CD"))
# Davis_Rock_1999_herb_biomass <- summarise_at(Davis_Rock_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Davis_Rock_1999_herb_biomass$Year <- ('1999')
# Davis_Rock_1999_herb_biomass$Reef <- ('Davis Rock')
# 
# 
# Davis_Rock_1999_comm <- merge(Davis_Rock_1999, Comm, by = c("SPECIES_CD"))
# Davis_Rock_1999_comm_biomass <- summarise_at(Davis_Rock_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Davis_Rock_1999_comm_biomass$Year <- ('1999')
# Davis_Rock_1999_comm_biomass$Reef <- ('Davis Rock')


Davis_Rock_2000 <- import("Davis_Rock/data/Davis_Rock_2000.xls")

Davis_Rock_2000_herb <- merge(Davis_Rock_2000, Herb, by = c("SPECIES_CD"))
Davis_Rock_2000_herb_biomass <- summarise_at(Davis_Rock_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2000_herb_biomass$Year <- ('2000')
Davis_Rock_2000_herb_biomass$Reef <- ('Davis Rock')


Davis_Rock_2000_comm <- merge(Davis_Rock_2000, Comm, by = c("SPECIES_CD"))
Davis_Rock_2000_comm_biomass <- summarise_at(Davis_Rock_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2000_comm_biomass$Year <- ('2000')
Davis_Rock_2000_comm_biomass$Reef <- ('Davis Rock')

Davis_Rock_2004 <- import("Davis_Rock/data/Davis_Rock_2004.xls")

Davis_Rock_2004_herb <- merge(Davis_Rock_2004, Herb, by = c("SPECIES_CD"))
Davis_Rock_2004_herb_biomass <- summarise_at(Davis_Rock_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2004_herb_biomass$Year <- ('2004')
Davis_Rock_2004_herb_biomass$Reef <- ('Davis Rock')


Davis_Rock_2004_comm <- merge(Davis_Rock_2004, Comm, by = c("SPECIES_CD"))
Davis_Rock_2004_comm_biomass <- summarise_at(Davis_Rock_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2004_comm_biomass$Year <- ('2004')
Davis_Rock_2004_comm_biomass$Reef <- ('Davis Rock')

Davis_Rock_2006 <- import("Davis_Rock/data/Davis_Rock_2006.xls")

Davis_Rock_2006_herb <- merge(Davis_Rock_2006, Herb, by = c("SPECIES_CD"))
Davis_Rock_2006_herb_biomass <- summarise_at(Davis_Rock_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2006_herb_biomass$Year <- ('2006')
Davis_Rock_2006_herb_biomass$Reef <- ('Davis Rock')


Davis_Rock_2006_comm <- merge(Davis_Rock_2006, Comm, by = c("SPECIES_CD"))
Davis_Rock_2006_comm_biomass <- summarise_at(Davis_Rock_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2006_comm_biomass$Year <- ('2006')
Davis_Rock_2006_comm_biomass$Reef <- ('Davis Rock')

Davis_Rock_2008 <- import("Davis_Rock/data/Davis_Rock_2008.xls")

Davis_Rock_2008_herb <- merge(Davis_Rock_2008, Herb, by = c("SPECIES_CD"))
Davis_Rock_2008_herb_biomass <- summarise_at(Davis_Rock_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2008_herb_biomass$Year <- ('2008')
Davis_Rock_2008_herb_biomass$Reef <- ('Davis Rock')


Davis_Rock_2008_comm <- merge(Davis_Rock_2008, Comm, by = c("SPECIES_CD"))
Davis_Rock_2008_comm_biomass <- summarise_at(Davis_Rock_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2008_comm_biomass$Year <- ('2008')
Davis_Rock_2008_comm_biomass$Reef <- ('Davis Rock')

Davis_Rock_2010 <- import("Davis_Rock/data/Davis_Rock_2010.xls")

Davis_Rock_2010_herb <- merge(Davis_Rock_2010, Herb, by = c("SPECIES_CD"))
Davis_Rock_2010_herb_biomass <- summarise_at(Davis_Rock_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2010_herb_biomass$Year <- ('2010')
Davis_Rock_2010_herb_biomass$Reef <- ('Davis Rock')


Davis_Rock_2010_comm <- merge(Davis_Rock_2010, Comm, by = c("SPECIES_CD"))
Davis_Rock_2010_comm_biomass <- summarise_at(Davis_Rock_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2010_comm_biomass$Year <- ('2010')
Davis_Rock_2010_comm_biomass$Reef <- ('Davis Rock')


Davis_Rock_2012 <- import("Davis_Rock/data/Davis_Rock_2012.xls")

Davis_Rock_2012_herb <- merge(Davis_Rock_2012, Herb, by = c("SPECIES_CD"))
Davis_Rock_2012_herb_biomass <- summarise_at(Davis_Rock_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2012_herb_biomass$Year <- ('2012')
Davis_Rock_2012_herb_biomass$Reef <- ('Davis Rock')


Davis_Rock_2012_comm <- merge(Davis_Rock_2012, Comm, by = c("SPECIES_CD"))
Davis_Rock_2012_comm_biomass <- summarise_at(Davis_Rock_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2012_comm_biomass$Year <- ('2012')
Davis_Rock_2012_comm_biomass$Reef <- ('Davis Rock')


Davis_Rock_2014 <- import("Davis_Rock/data/Davis_Rock_2014.xls")

Davis_Rock_2014_herb <- merge(Davis_Rock_2014, Herb, by = c("SPECIES_CD"))
Davis_Rock_2014_herb_biomass <- summarise_at(Davis_Rock_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2014_herb_biomass$Year <- ('2014')
Davis_Rock_2014_herb_biomass$Reef <- ('Davis Rock')


Davis_Rock_2014_comm <- merge(Davis_Rock_2014, Comm, by = c("SPECIES_CD"))
Davis_Rock_2014_comm_biomass <- summarise_at(Davis_Rock_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2014_comm_biomass$Year <- ('2014')
Davis_Rock_2014_comm_biomass$Reef <- ('Davis Rock')


Davis_Rock_2016 <- import("Davis_Rock/data/Davis_Rock_2016.xls")

Davis_Rock_2016_herb <- merge(Davis_Rock_2016, Herb, by = c("SPECIES_CD"))
Davis_Rock_2016_herb_biomass <- summarise_at(Davis_Rock_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2016_herb_biomass$Year <- ('2016')
Davis_Rock_2016_herb_biomass$Reef <- ('Davis Rock')


Davis_Rock_2016_comm <- merge(Davis_Rock_2016, Comm, by = c("SPECIES_CD"))
Davis_Rock_2016_comm_biomass <- summarise_at(Davis_Rock_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Davis_Rock_2016_comm_biomass$Year <- ('2016')
Davis_Rock_2016_comm_biomass$Reef <- ('Davis Rock')


### Combine all years together for herbivorous and commercial seperately 

#Davis_Rock_herb_1 <- rbind(Davis_Rock_1999_herb_biomass,Davis_Rock_2000_herb_biomass)
Davis_Rock_herb_2 <- rbind(Davis_Rock_2000_herb_biomass,Davis_Rock_2004_herb_biomass)
Davis_Rock_herb_3 <- rbind(Davis_Rock_herb_2,Davis_Rock_2006_herb_biomass)
Davis_Rock_herb_4 <- rbind(Davis_Rock_herb_3,Davis_Rock_2008_herb_biomass)
Davis_Rock_herb_5 <- rbind(Davis_Rock_herb_4,Davis_Rock_2010_herb_biomass)
Davis_Rock_herb_6 <- rbind(Davis_Rock_herb_5,Davis_Rock_2012_herb_biomass)
Davis_Rock_herb_7 <- rbind(Davis_Rock_herb_6,Davis_Rock_2014_herb_biomass)
Davis_Rock_herb_biomass <- rbind(Davis_Rock_herb_7,Davis_Rock_2016_herb_biomass)


#Davis_Rock_comm_1 <- rbind(Davis_Rock_1999_comm_biomass,Davis_Rock_2000_comm_biomass)
Davis_Rock_comm_2 <- rbind(Davis_Rock_2000_comm_biomass,Davis_Rock_2004_comm_biomass)
Davis_Rock_comm_3 <- rbind(Davis_Rock_comm_2,Davis_Rock_2006_comm_biomass)
Davis_Rock_comm_4 <- rbind(Davis_Rock_comm_3,Davis_Rock_2008_comm_biomass)
Davis_Rock_comm_5 <- rbind(Davis_Rock_comm_4,Davis_Rock_2010_comm_biomass)
Davis_Rock_comm_6 <- rbind(Davis_Rock_comm_5,Davis_Rock_2012_comm_biomass)
Davis_Rock_comm_7 <- rbind(Davis_Rock_comm_6,Davis_Rock_2014_comm_biomass)
Davis_Rock_comm_biomass <- rbind(Davis_Rock_comm_7,Davis_Rock_2016_comm_biomass)


export(Davis_Rock_herb_biomass, "Davis_Rock/data/Davis_Rock_herbivorous_biomass.csv")
export(Davis_Rock_comm_biomass, "Davis_Rock/data/Davis_Rock_commercial_biomass.csv")



## Loggerhead Patch 



 Loggerhead_Patch_1999 <- import("Loggerhead_Patch/data/Loggerhead_Patch_1999.xls")


 Loggerhead_Patch_1999_herb <- merge(Loggerhead_Patch_1999, Herb, by = c("SPECIES_CD"))
 Loggerhead_Patch_1999_herb_biomass <- summarise_at(Loggerhead_Patch_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
 Loggerhead_Patch_1999_herb_biomass$Year <- ('1999')
 Loggerhead_Patch_1999_herb_biomass$Reef <- ('Loggerhead Patch')


 Loggerhead_Patch_1999_comm <- merge(Loggerhead_Patch_1999, Comm, by = c("SPECIES_CD"))
 Loggerhead_Patch_1999_comm_biomass <- summarise_at(Loggerhead_Patch_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
 Loggerhead_Patch_1999_comm_biomass$Year <- ('1999')
 Loggerhead_Patch_1999_comm_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2000 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2000.xls")

Loggerhead_Patch_2000_herb <- merge(Loggerhead_Patch_2000, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_2000_herb_biomass <- summarise_at(Loggerhead_Patch_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2000_herb_biomass$Year <- ('2000')
Loggerhead_Patch_2000_herb_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2000_comm <- merge(Loggerhead_Patch_2000, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_2000_comm_biomass <- summarise_at(Loggerhead_Patch_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2000_comm_biomass$Year <- ('2000')
Loggerhead_Patch_2000_comm_biomass$Reef <- ('Loggerhead Patch')

Loggerhead_Patch_2004 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2004.xls")

Loggerhead_Patch_2004_herb <- merge(Loggerhead_Patch_2004, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_2004_herb_biomass <- summarise_at(Loggerhead_Patch_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2004_herb_biomass$Year <- ('2004')
Loggerhead_Patch_2004_herb_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2004_comm <- merge(Loggerhead_Patch_2004, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_2004_comm_biomass <- summarise_at(Loggerhead_Patch_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2004_comm_biomass$Year <- ('2004')
Loggerhead_Patch_2004_comm_biomass$Reef <- ('Loggerhead Patch')

Loggerhead_Patch_2006 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2006.xls")

Loggerhead_Patch_2006_herb <- merge(Loggerhead_Patch_2006, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_2006_herb_biomass <- summarise_at(Loggerhead_Patch_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2006_herb_biomass$Year <- ('2006')
Loggerhead_Patch_2006_herb_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2006_comm <- merge(Loggerhead_Patch_2006, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_2006_comm_biomass <- summarise_at(Loggerhead_Patch_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2006_comm_biomass$Year <- ('2006')
Loggerhead_Patch_2006_comm_biomass$Reef <- ('Loggerhead Patch')

Loggerhead_Patch_2008 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2008.xls")

Loggerhead_Patch_2008_herb <- merge(Loggerhead_Patch_2008, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_2008_herb_biomass <- summarise_at(Loggerhead_Patch_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2008_herb_biomass$Year <- ('2008')
Loggerhead_Patch_2008_herb_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2008_comm <- merge(Loggerhead_Patch_2008, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_2008_comm_biomass <- summarise_at(Loggerhead_Patch_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2008_comm_biomass$Year <- ('2008')
Loggerhead_Patch_2008_comm_biomass$Reef <- ('Loggerhead Patch')

Loggerhead_Patch_2010 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2010.xls")

Loggerhead_Patch_2010_herb <- merge(Loggerhead_Patch_2010, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_2010_herb_biomass <- summarise_at(Loggerhead_Patch_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2010_herb_biomass$Year <- ('2010')
Loggerhead_Patch_2010_herb_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2010_comm <- merge(Loggerhead_Patch_2010, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_2010_comm_biomass <- summarise_at(Loggerhead_Patch_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2010_comm_biomass$Year <- ('2010')
Loggerhead_Patch_2010_comm_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2012 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2012.xls")

Loggerhead_Patch_2012_herb <- merge(Loggerhead_Patch_2012, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_2012_herb_biomass <- summarise_at(Loggerhead_Patch_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2012_herb_biomass$Year <- ('2012')
Loggerhead_Patch_2012_herb_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2012_comm <- merge(Loggerhead_Patch_2012, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_2012_comm_biomass <- summarise_at(Loggerhead_Patch_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2012_comm_biomass$Year <- ('2012')
Loggerhead_Patch_2012_comm_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2014 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2014.xls")

Loggerhead_Patch_2014_herb <- merge(Loggerhead_Patch_2014, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_2014_herb_biomass <- summarise_at(Loggerhead_Patch_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2014_herb_biomass$Year <- ('2014')
Loggerhead_Patch_2014_herb_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2014_comm <- merge(Loggerhead_Patch_2014, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_2014_comm_biomass <- summarise_at(Loggerhead_Patch_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2014_comm_biomass$Year <- ('2014')
Loggerhead_Patch_2014_comm_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2016 <- import("Loggerhead_Patch/data/Loggerhead_Patch_2016.xls")

Loggerhead_Patch_2016_herb <- merge(Loggerhead_Patch_2016, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_2016_herb_biomass <- summarise_at(Loggerhead_Patch_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2016_herb_biomass$Year <- ('2016')
Loggerhead_Patch_2016_herb_biomass$Reef <- ('Loggerhead Patch')


Loggerhead_Patch_2016_comm <- merge(Loggerhead_Patch_2016, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_2016_comm_biomass <- summarise_at(Loggerhead_Patch_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Loggerhead_Patch_2016_comm_biomass$Year <- ('2016')
Loggerhead_Patch_2016_comm_biomass$Reef <- ('Loggerhead Patch')


### Combine all years together for herbivorous and commercial seperately 

Loggerhead_Patch_herb_1 <- rbind(Loggerhead_Patch_1999_herb_biomass,Loggerhead_Patch_2000_herb_biomass)
Loggerhead_Patch_herb_2 <- rbind(Loggerhead_Patch_herb_1,Loggerhead_Patch_2004_herb_biomass)
Loggerhead_Patch_herb_3 <- rbind(Loggerhead_Patch_herb_2,Loggerhead_Patch_2006_herb_biomass)
Loggerhead_Patch_herb_4 <- rbind(Loggerhead_Patch_herb_3,Loggerhead_Patch_2008_herb_biomass)
Loggerhead_Patch_herb_5 <- rbind(Loggerhead_Patch_herb_4,Loggerhead_Patch_2010_herb_biomass)
Loggerhead_Patch_herb_6 <- rbind(Loggerhead_Patch_herb_5,Loggerhead_Patch_2012_herb_biomass)
Loggerhead_Patch_herb_7 <- rbind(Loggerhead_Patch_herb_6,Loggerhead_Patch_2014_herb_biomass)
Loggerhead_Patch_herb_biomass <- rbind(Loggerhead_Patch_herb_7,Loggerhead_Patch_2016_herb_biomass)


Loggerhead_Patch_comm_1 <- rbind(Loggerhead_Patch_1999_comm_biomass,Loggerhead_Patch_2000_comm_biomass)
Loggerhead_Patch_comm_2 <- rbind(Loggerhead_Patch_comm_1,Loggerhead_Patch_2004_comm_biomass)
Loggerhead_Patch_comm_3 <- rbind(Loggerhead_Patch_comm_2,Loggerhead_Patch_2006_comm_biomass)
Loggerhead_Patch_comm_4 <- rbind(Loggerhead_Patch_comm_3,Loggerhead_Patch_2008_comm_biomass)
Loggerhead_Patch_comm_5 <- rbind(Loggerhead_Patch_comm_4,Loggerhead_Patch_2010_comm_biomass)
Loggerhead_Patch_comm_6 <- rbind(Loggerhead_Patch_comm_5,Loggerhead_Patch_2012_comm_biomass)
Loggerhead_Patch_comm_7 <- rbind(Loggerhead_Patch_comm_6,Loggerhead_Patch_2014_comm_biomass)
Loggerhead_Patch_comm_biomass <- rbind(Loggerhead_Patch_comm_7,Loggerhead_Patch_2016_comm_biomass)


export(Loggerhead_Patch_herb_biomass, "Loggerhead_Patch/data/Loggerhead_Patch_herbivorous_biomass.csv")
export(Loggerhead_Patch_comm_biomass, "Loggerhead_Patch/data/Loggerhead_Patch_commercial_biomass.csv")


## Mayers Peak 



Mayers_Peak_1999 <- import("Mayers_Peak/data/Mayers_Peak_1999.xls")


Mayers_Peak_1999_herb <- merge(Mayers_Peak_1999, Herb, by = c("SPECIES_CD"))
Mayers_Peak_1999_herb_biomass <- summarise_at(Mayers_Peak_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_1999_herb_biomass$Year <- ('1999')
Mayers_Peak_1999_herb_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_1999_comm <- merge(Mayers_Peak_1999, Comm, by = c("SPECIES_CD"))
Mayers_Peak_1999_comm_biomass <- summarise_at(Mayers_Peak_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_1999_comm_biomass$Year <- ('1999')
Mayers_Peak_1999_comm_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2000 <- import("Mayers_Peak/data/Mayers_Peak_2000.xls")

Mayers_Peak_2000_herb <- merge(Mayers_Peak_2000, Herb, by = c("SPECIES_CD"))
Mayers_Peak_2000_herb_biomass <- summarise_at(Mayers_Peak_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2000_herb_biomass$Year <- ('2000')
Mayers_Peak_2000_herb_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2000_comm <- merge(Mayers_Peak_2000, Comm, by = c("SPECIES_CD"))
Mayers_Peak_2000_comm_biomass <- summarise_at(Mayers_Peak_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2000_comm_biomass$Year <- ('2000')
Mayers_Peak_2000_comm_biomass$Reef <- ('Mayers Peak')

Mayers_Peak_2004 <- import("Mayers_Peak/data/Mayers_Peak_2004.xls")

Mayers_Peak_2004_herb <- merge(Mayers_Peak_2004, Herb, by = c("SPECIES_CD"))
Mayers_Peak_2004_herb_biomass <- summarise_at(Mayers_Peak_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2004_herb_biomass$Year <- ('2004')
Mayers_Peak_2004_herb_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2004_comm <- merge(Mayers_Peak_2004, Comm, by = c("SPECIES_CD"))
Mayers_Peak_2004_comm_biomass <- summarise_at(Mayers_Peak_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2004_comm_biomass$Year <- ('2004')
Mayers_Peak_2004_comm_biomass$Reef <- ('Mayers Peak')

Mayers_Peak_2006 <- import("Mayers_Peak/data/Mayers_Peak_2006.xls")

Mayers_Peak_2006_herb <- merge(Mayers_Peak_2006, Herb, by = c("SPECIES_CD"))
Mayers_Peak_2006_herb_biomass <- summarise_at(Mayers_Peak_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2006_herb_biomass$Year <- ('2006')
Mayers_Peak_2006_herb_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2006_comm <- merge(Mayers_Peak_2006, Comm, by = c("SPECIES_CD"))
Mayers_Peak_2006_comm_biomass <- summarise_at(Mayers_Peak_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2006_comm_biomass$Year <- ('2006')
Mayers_Peak_2006_comm_biomass$Reef <- ('Mayers Peak')

Mayers_Peak_2008 <- import("Mayers_Peak/data/Mayers_Peak_2008.xls")

Mayers_Peak_2008_herb <- merge(Mayers_Peak_2008, Herb, by = c("SPECIES_CD"))
Mayers_Peak_2008_herb_biomass <- summarise_at(Mayers_Peak_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2008_herb_biomass$Year <- ('2008')
Mayers_Peak_2008_herb_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2008_comm <- merge(Mayers_Peak_2008, Comm, by = c("SPECIES_CD"))
Mayers_Peak_2008_comm_biomass <- summarise_at(Mayers_Peak_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2008_comm_biomass$Year <- ('2008')
Mayers_Peak_2008_comm_biomass$Reef <- ('Mayers Peak')

Mayers_Peak_2010 <- import("Mayers_Peak/data/Mayers_Peak_2010.xls")

Mayers_Peak_2010_herb <- merge(Mayers_Peak_2010, Herb, by = c("SPECIES_CD"))
Mayers_Peak_2010_herb_biomass <- summarise_at(Mayers_Peak_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2010_herb_biomass$Year <- ('2010')
Mayers_Peak_2010_herb_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2010_comm <- merge(Mayers_Peak_2010, Comm, by = c("SPECIES_CD"))
Mayers_Peak_2010_comm_biomass <- summarise_at(Mayers_Peak_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2010_comm_biomass$Year <- ('2010')
Mayers_Peak_2010_comm_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2012 <- import("Mayers_Peak/data/Mayers_Peak_2012.xls")

Mayers_Peak_2012_herb <- merge(Mayers_Peak_2012, Herb, by = c("SPECIES_CD"))
Mayers_Peak_2012_herb_biomass <- summarise_at(Mayers_Peak_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2012_herb_biomass$Year <- ('2012')
Mayers_Peak_2012_herb_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2012_comm <- merge(Mayers_Peak_2012, Comm, by = c("SPECIES_CD"))
Mayers_Peak_2012_comm_biomass <- summarise_at(Mayers_Peak_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2012_comm_biomass$Year <- ('2012')
Mayers_Peak_2012_comm_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2014 <- import("Mayers_Peak/data/Mayers_Peak_2014.xls")

Mayers_Peak_2014_herb <- merge(Mayers_Peak_2014, Herb, by = c("SPECIES_CD"))
Mayers_Peak_2014_herb_biomass <- summarise_at(Mayers_Peak_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2014_herb_biomass$Year <- ('2014')
Mayers_Peak_2014_herb_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2014_comm <- merge(Mayers_Peak_2014, Comm, by = c("SPECIES_CD"))
Mayers_Peak_2014_comm_biomass <- summarise_at(Mayers_Peak_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2014_comm_biomass$Year <- ('2014')
Mayers_Peak_2014_comm_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2016 <- import("Mayers_Peak/data/Mayers_Peak_2016.xls")

Mayers_Peak_2016_herb <- merge(Mayers_Peak_2016, Herb, by = c("SPECIES_CD"))
Mayers_Peak_2016_herb_biomass <- summarise_at(Mayers_Peak_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2016_herb_biomass$Year <- ('2016')
Mayers_Peak_2016_herb_biomass$Reef <- ('Mayers Peak')


Mayers_Peak_2016_comm <- merge(Mayers_Peak_2016, Comm, by = c("SPECIES_CD"))
Mayers_Peak_2016_comm_biomass <- summarise_at(Mayers_Peak_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Mayers_Peak_2016_comm_biomass$Year <- ('2016')
Mayers_Peak_2016_comm_biomass$Reef <- ('Mayers Peak')


### Combine all years together for herbivorous and commercial seperately 

Mayers_Peak_herb_1 <- rbind(Mayers_Peak_1999_herb_biomass,Mayers_Peak_2000_herb_biomass)
Mayers_Peak_herb_2 <- rbind(Mayers_Peak_herb_1,Mayers_Peak_2004_herb_biomass)
Mayers_Peak_herb_3 <- rbind(Mayers_Peak_herb_2,Mayers_Peak_2006_herb_biomass)
Mayers_Peak_herb_4 <- rbind(Mayers_Peak_herb_3,Mayers_Peak_2008_herb_biomass)
Mayers_Peak_herb_5 <- rbind(Mayers_Peak_herb_4,Mayers_Peak_2010_herb_biomass)
Mayers_Peak_herb_6 <- rbind(Mayers_Peak_herb_5,Mayers_Peak_2012_herb_biomass)
Mayers_Peak_herb_7 <- rbind(Mayers_Peak_herb_6,Mayers_Peak_2014_herb_biomass)
Mayers_Peak_herb_biomass <- rbind(Mayers_Peak_herb_7,Mayers_Peak_2016_herb_biomass)


Mayers_Peak_comm_1 <- rbind(Mayers_Peak_1999_comm_biomass,Mayers_Peak_2000_comm_biomass)
Mayers_Peak_comm_2 <- rbind(Mayers_Peak_comm_1,Mayers_Peak_2004_comm_biomass)
Mayers_Peak_comm_3 <- rbind(Mayers_Peak_comm_2,Mayers_Peak_2006_comm_biomass)
Mayers_Peak_comm_4 <- rbind(Mayers_Peak_comm_3,Mayers_Peak_2008_comm_biomass)
Mayers_Peak_comm_5 <- rbind(Mayers_Peak_comm_4,Mayers_Peak_2010_comm_biomass)
Mayers_Peak_comm_6 <- rbind(Mayers_Peak_comm_5,Mayers_Peak_2012_comm_biomass)
Mayers_Peak_comm_7 <- rbind(Mayers_Peak_comm_6,Mayers_Peak_2014_comm_biomass)
Mayers_Peak_comm_biomass <- rbind(Mayers_Peak_comm_7,Mayers_Peak_2016_comm_biomass)


export(Mayers_Peak_herb_biomass, "Mayers_Peak/data/Mayers_Peak_herbivorous_biomass.csv")
export(Mayers_Peak_comm_biomass, "Mayers_Peak/data/Mayers_Peak_commercial_biomass.csv")



# Palmata Patch

Palmata_Patch_1999 <- import("Palmata_Patch/data/Palmata_Patch_1999.xls")


Palmata_Patch_1999_herb <- merge(Palmata_Patch_1999, Herb, by = c("SPECIES_CD"))
Palmata_Patch_1999_herb_biomass <- summarise_at(Palmata_Patch_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_1999_herb_biomass$Year <- ('1999')
Palmata_Patch_1999_herb_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_1999_comm <- merge(Palmata_Patch_1999, Comm, by = c("SPECIES_CD"))
Palmata_Patch_1999_comm_biomass <- summarise_at(Palmata_Patch_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_1999_comm_biomass$Year <- ('1999')
Palmata_Patch_1999_comm_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2000 <- import("Palmata_Patch/data/Palmata_Patch_2000.xls")

Palmata_Patch_2000_herb <- merge(Palmata_Patch_2000, Herb, by = c("SPECIES_CD"))
Palmata_Patch_2000_herb_biomass <- summarise_at(Palmata_Patch_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2000_herb_biomass$Year <- ('2000')
Palmata_Patch_2000_herb_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2000_comm <- merge(Palmata_Patch_2000, Comm, by = c("SPECIES_CD"))
Palmata_Patch_2000_comm_biomass <- summarise_at(Palmata_Patch_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2000_comm_biomass$Year <- ('2000')
Palmata_Patch_2000_comm_biomass$Reef <- ('Palmata Patch')

Palmata_Patch_2004 <- import("Palmata_Patch/data/Palmata_Patch_2004.xls")

Palmata_Patch_2004_herb <- merge(Palmata_Patch_2004, Herb, by = c("SPECIES_CD"))
Palmata_Patch_2004_herb_biomass <- summarise_at(Palmata_Patch_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2004_herb_biomass$Year <- ('2004')
Palmata_Patch_2004_herb_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2004_comm <- merge(Palmata_Patch_2004, Comm, by = c("SPECIES_CD"))
Palmata_Patch_2004_comm_biomass <- summarise_at(Palmata_Patch_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2004_comm_biomass$Year <- ('2004')
Palmata_Patch_2004_comm_biomass$Reef <- ('Palmata Patch')

Palmata_Patch_2006 <- import("Palmata_Patch/data/Palmata_Patch_2006.xls")

Palmata_Patch_2006_herb <- merge(Palmata_Patch_2006, Herb, by = c("SPECIES_CD"))
Palmata_Patch_2006_herb_biomass <- summarise_at(Palmata_Patch_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2006_herb_biomass$Year <- ('2006')
Palmata_Patch_2006_herb_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2006_comm <- merge(Palmata_Patch_2006, Comm, by = c("SPECIES_CD"))
Palmata_Patch_2006_comm_biomass <- summarise_at(Palmata_Patch_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2006_comm_biomass$Year <- ('2006')
Palmata_Patch_2006_comm_biomass$Reef <- ('Palmata Patch')

Palmata_Patch_2008 <- import("Palmata_Patch/data/Palmata_Patch_2008.xls")

Palmata_Patch_2008_herb <- merge(Palmata_Patch_2008, Herb, by = c("SPECIES_CD"))
Palmata_Patch_2008_herb_biomass <- summarise_at(Palmata_Patch_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2008_herb_biomass$Year <- ('2008')
Palmata_Patch_2008_herb_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2008_comm <- merge(Palmata_Patch_2008, Comm, by = c("SPECIES_CD"))
Palmata_Patch_2008_comm_biomass <- summarise_at(Palmata_Patch_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2008_comm_biomass$Year <- ('2008')
Palmata_Patch_2008_comm_biomass$Reef <- ('Palmata Patch')

Palmata_Patch_2010 <- import("Palmata_Patch/data/Palmata_Patch_2010.xls")

Palmata_Patch_2010_herb <- merge(Palmata_Patch_2010, Herb, by = c("SPECIES_CD"))
Palmata_Patch_2010_herb_biomass <- summarise_at(Palmata_Patch_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2010_herb_biomass$Year <- ('2010')
Palmata_Patch_2010_herb_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2010_comm <- merge(Palmata_Patch_2010, Comm, by = c("SPECIES_CD"))
Palmata_Patch_2010_comm_biomass <- summarise_at(Palmata_Patch_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2010_comm_biomass$Year <- ('2010')
Palmata_Patch_2010_comm_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2012 <- import("Palmata_Patch/data/Palmata_Patch_2012.xls")

Palmata_Patch_2012_herb <- merge(Palmata_Patch_2012, Herb, by = c("SPECIES_CD"))
Palmata_Patch_2012_herb_biomass <- summarise_at(Palmata_Patch_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2012_herb_biomass$Year <- ('2012')
Palmata_Patch_2012_herb_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2012_comm <- merge(Palmata_Patch_2012, Comm, by = c("SPECIES_CD"))
Palmata_Patch_2012_comm_biomass <- summarise_at(Palmata_Patch_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2012_comm_biomass$Year <- ('2012')
Palmata_Patch_2012_comm_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2014 <- import("Palmata_Patch/data/Palmata_Patch_2014.xls")

Palmata_Patch_2014_herb <- merge(Palmata_Patch_2014, Herb, by = c("SPECIES_CD"))
Palmata_Patch_2014_herb_biomass <- summarise_at(Palmata_Patch_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2014_herb_biomass$Year <- ('2014')
Palmata_Patch_2014_herb_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2014_comm <- merge(Palmata_Patch_2014, Comm, by = c("SPECIES_CD"))
Palmata_Patch_2014_comm_biomass <- summarise_at(Palmata_Patch_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2014_comm_biomass$Year <- ('2014')
Palmata_Patch_2014_comm_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2016 <- import("Palmata_Patch/data/Palmata_Patch_2016.xls")

Palmata_Patch_2016_herb <- merge(Palmata_Patch_2016, Herb, by = c("SPECIES_CD"))
Palmata_Patch_2016_herb_biomass <- summarise_at(Palmata_Patch_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2016_herb_biomass$Year <- ('2016')
Palmata_Patch_2016_herb_biomass$Reef <- ('Palmata Patch')


Palmata_Patch_2016_comm <- merge(Palmata_Patch_2016, Comm, by = c("SPECIES_CD"))
Palmata_Patch_2016_comm_biomass <- summarise_at(Palmata_Patch_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palmata_Patch_2016_comm_biomass$Year <- ('2016')
Palmata_Patch_2016_comm_biomass$Reef <- ('Palmata Patch')


### Combine all years together for herbivorous and commercial seperately 

Palmata_Patch_herb_1 <- rbind(Palmata_Patch_1999_herb_biomass,Palmata_Patch_2000_herb_biomass)
Palmata_Patch_herb_2 <- rbind(Palmata_Patch_herb_1,Palmata_Patch_2004_herb_biomass)
Palmata_Patch_herb_3 <- rbind(Palmata_Patch_herb_2,Palmata_Patch_2006_herb_biomass)
Palmata_Patch_herb_4 <- rbind(Palmata_Patch_herb_3,Palmata_Patch_2008_herb_biomass)
Palmata_Patch_herb_5 <- rbind(Palmata_Patch_herb_4,Palmata_Patch_2010_herb_biomass)
Palmata_Patch_herb_6 <- rbind(Palmata_Patch_herb_5,Palmata_Patch_2012_herb_biomass)
Palmata_Patch_herb_7 <- rbind(Palmata_Patch_herb_6,Palmata_Patch_2014_herb_biomass)
Palmata_Patch_herb_biomass <- rbind(Palmata_Patch_herb_7,Palmata_Patch_2016_herb_biomass)


Palmata_Patch_comm_1 <- rbind(Palmata_Patch_1999_comm_biomass,Palmata_Patch_2000_comm_biomass)
Palmata_Patch_comm_2 <- rbind(Palmata_Patch_comm_1,Palmata_Patch_2004_comm_biomass)
Palmata_Patch_comm_3 <- rbind(Palmata_Patch_comm_2,Palmata_Patch_2006_comm_biomass)
Palmata_Patch_comm_4 <- rbind(Palmata_Patch_comm_3,Palmata_Patch_2008_comm_biomass)
Palmata_Patch_comm_5 <- rbind(Palmata_Patch_comm_4,Palmata_Patch_2010_comm_biomass)
Palmata_Patch_comm_6 <- rbind(Palmata_Patch_comm_5,Palmata_Patch_2012_comm_biomass)
Palmata_Patch_comm_7 <- rbind(Palmata_Patch_comm_6,Palmata_Patch_2014_comm_biomass)
Palmata_Patch_comm_biomass <- rbind(Palmata_Patch_comm_7,Palmata_Patch_2016_comm_biomass)


export(Palmata_Patch_herb_biomass, "Palmata_Patch/data/Palmata_Patch_herbivorous_biomass.csv")
export(Palmata_Patch_comm_biomass, "Palmata_Patch/data/Palmata_Patch_commercial_biomass.csv")




# Prolifera Patch

Prolifera_Patch_1999 <- import("Prolifera_Patch/data/Prolifera_Patch_1999.xls")


Prolifera_Patch_1999_herb <- merge(Prolifera_Patch_1999, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_1999_herb_biomass <- summarise_at(Prolifera_Patch_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_1999_herb_biomass$Year <- ('1999')
Prolifera_Patch_1999_herb_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_1999_comm <- merge(Prolifera_Patch_1999, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_1999_comm_biomass <- summarise_at(Prolifera_Patch_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_1999_comm_biomass$Year <- ('1999')
Prolifera_Patch_1999_comm_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2000 <- import("Prolifera_Patch/data/Prolifera_Patch_2000.xls")

Prolifera_Patch_2000_herb <- merge(Prolifera_Patch_2000, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_2000_herb_biomass <- summarise_at(Prolifera_Patch_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2000_herb_biomass$Year <- ('2000')
Prolifera_Patch_2000_herb_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2000_comm <- merge(Prolifera_Patch_2000, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_2000_comm_biomass <- summarise_at(Prolifera_Patch_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2000_comm_biomass$Year <- ('2000')
Prolifera_Patch_2000_comm_biomass$Reef <- ('Prolifera Patch')

Prolifera_Patch_2004 <- import("Prolifera_Patch/data/Prolifera_Patch_2004.xls")

Prolifera_Patch_2004_herb <- merge(Prolifera_Patch_2004, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_2004_herb_biomass <- summarise_at(Prolifera_Patch_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2004_herb_biomass$Year <- ('2004')
Prolifera_Patch_2004_herb_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2004_comm <- merge(Prolifera_Patch_2004, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_2004_comm_biomass <- summarise_at(Prolifera_Patch_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2004_comm_biomass$Year <- ('2004')
Prolifera_Patch_2004_comm_biomass$Reef <- ('Prolifera Patch')

Prolifera_Patch_2006 <- import("Prolifera_Patch/data/Prolifera_Patch_2006.xls")

Prolifera_Patch_2006_herb <- merge(Prolifera_Patch_2006, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_2006_herb_biomass <- summarise_at(Prolifera_Patch_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2006_herb_biomass$Year <- ('2006')
Prolifera_Patch_2006_herb_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2006_comm <- merge(Prolifera_Patch_2006, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_2006_comm_biomass <- summarise_at(Prolifera_Patch_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2006_comm_biomass$Year <- ('2006')
Prolifera_Patch_2006_comm_biomass$Reef <- ('Prolifera Patch')

Prolifera_Patch_2008 <- import("Prolifera_Patch/data/Prolifera_Patch_2008.xls")

Prolifera_Patch_2008_herb <- merge(Prolifera_Patch_2008, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_2008_herb_biomass <- summarise_at(Prolifera_Patch_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2008_herb_biomass$Year <- ('2008')
Prolifera_Patch_2008_herb_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2008_comm <- merge(Prolifera_Patch_2008, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_2008_comm_biomass <- summarise_at(Prolifera_Patch_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2008_comm_biomass$Year <- ('2008')
Prolifera_Patch_2008_comm_biomass$Reef <- ('Prolifera Patch')

Prolifera_Patch_2010 <- import("Prolifera_Patch/data/Prolifera_Patch_2010.xls")

Prolifera_Patch_2010_herb <- merge(Prolifera_Patch_2010, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_2010_herb_biomass <- summarise_at(Prolifera_Patch_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2010_herb_biomass$Year <- ('2010')
Prolifera_Patch_2010_herb_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2010_comm <- merge(Prolifera_Patch_2010, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_2010_comm_biomass <- summarise_at(Prolifera_Patch_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2010_comm_biomass$Year <- ('2010')
Prolifera_Patch_2010_comm_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2012 <- import("Prolifera_Patch/data/Prolifera_Patch_2012.xls")

Prolifera_Patch_2012_herb <- merge(Prolifera_Patch_2012, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_2012_herb_biomass <- summarise_at(Prolifera_Patch_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2012_herb_biomass$Year <- ('2012')
Prolifera_Patch_2012_herb_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2012_comm <- merge(Prolifera_Patch_2012, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_2012_comm_biomass <- summarise_at(Prolifera_Patch_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2012_comm_biomass$Year <- ('2012')
Prolifera_Patch_2012_comm_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2014 <- import("Prolifera_Patch/data/Prolifera_Patch_2014.xls")

Prolifera_Patch_2014_herb <- merge(Prolifera_Patch_2014, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_2014_herb_biomass <- summarise_at(Prolifera_Patch_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2014_herb_biomass$Year <- ('2014')
Prolifera_Patch_2014_herb_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2014_comm <- merge(Prolifera_Patch_2014, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_2014_comm_biomass <- summarise_at(Prolifera_Patch_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2014_comm_biomass$Year <- ('2014')
Prolifera_Patch_2014_comm_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2016 <- import("Prolifera_Patch/data/Prolifera_Patch_2016.xls")

Prolifera_Patch_2016_herb <- merge(Prolifera_Patch_2016, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_2016_herb_biomass <- summarise_at(Prolifera_Patch_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2016_herb_biomass$Year <- ('2016')
Prolifera_Patch_2016_herb_biomass$Reef <- ('Prolifera Patch')


Prolifera_Patch_2016_comm <- merge(Prolifera_Patch_2016, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_2016_comm_biomass <- summarise_at(Prolifera_Patch_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Prolifera_Patch_2016_comm_biomass$Year <- ('2016')
Prolifera_Patch_2016_comm_biomass$Reef <- ('Prolifera Patch')


### Combine all years together for herbivorous and commercial seperately 

Prolifera_Patch_herb_1 <- rbind(Prolifera_Patch_1999_herb_biomass,Prolifera_Patch_2000_herb_biomass)
Prolifera_Patch_herb_2 <- rbind(Prolifera_Patch_herb_1,Prolifera_Patch_2004_herb_biomass)
Prolifera_Patch_herb_3 <- rbind(Prolifera_Patch_herb_2,Prolifera_Patch_2006_herb_biomass)
Prolifera_Patch_herb_4 <- rbind(Prolifera_Patch_herb_3,Prolifera_Patch_2008_herb_biomass)
Prolifera_Patch_herb_5 <- rbind(Prolifera_Patch_herb_4,Prolifera_Patch_2010_herb_biomass)
Prolifera_Patch_herb_6 <- rbind(Prolifera_Patch_herb_5,Prolifera_Patch_2012_herb_biomass)
Prolifera_Patch_herb_7 <- rbind(Prolifera_Patch_herb_6,Prolifera_Patch_2014_herb_biomass)
Prolifera_Patch_herb_biomass <- rbind(Prolifera_Patch_herb_7,Prolifera_Patch_2016_herb_biomass)


Prolifera_Patch_comm_1 <- rbind(Prolifera_Patch_1999_comm_biomass,Prolifera_Patch_2000_comm_biomass)
Prolifera_Patch_comm_2 <- rbind(Prolifera_Patch_comm_1,Prolifera_Patch_2004_comm_biomass)
Prolifera_Patch_comm_3 <- rbind(Prolifera_Patch_comm_2,Prolifera_Patch_2006_comm_biomass)
Prolifera_Patch_comm_4 <- rbind(Prolifera_Patch_comm_3,Prolifera_Patch_2008_comm_biomass)
Prolifera_Patch_comm_5 <- rbind(Prolifera_Patch_comm_4,Prolifera_Patch_2010_comm_biomass)
Prolifera_Patch_comm_6 <- rbind(Prolifera_Patch_comm_5,Prolifera_Patch_2012_comm_biomass)
Prolifera_Patch_comm_7 <- rbind(Prolifera_Patch_comm_6,Prolifera_Patch_2014_comm_biomass)
Prolifera_Patch_comm_biomass <- rbind(Prolifera_Patch_comm_7,Prolifera_Patch_2016_comm_biomass)


export(Prolifera_Patch_herb_biomass, "Prolifera_Patch/data/Prolifera_Patch_herbivorous_biomass.csv")
export(Prolifera_Patch_comm_biomass, "Prolifera_Patch/data/Prolifera_Patch_commercial_biomass.csv")



# Temptation Rock

Temptation_Rock_1999 <- import("Temptation_Rock/data/Temptation_Rock_1999.xls")


Temptation_Rock_1999_herb <- merge(Temptation_Rock_1999, Herb, by = c("SPECIES_CD"))
Temptation_Rock_1999_herb_biomass <- summarise_at(Temptation_Rock_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_1999_herb_biomass$Year <- ('1999')
Temptation_Rock_1999_herb_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_1999_comm <- merge(Temptation_Rock_1999, Comm, by = c("SPECIES_CD"))
Temptation_Rock_1999_comm_biomass <- summarise_at(Temptation_Rock_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_1999_comm_biomass$Year <- ('1999')
Temptation_Rock_1999_comm_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2000 <- import("Temptation_Rock/data/Temptation_Rock_2000.xls")

Temptation_Rock_2000_herb <- merge(Temptation_Rock_2000, Herb, by = c("SPECIES_CD"))
Temptation_Rock_2000_herb_biomass <- summarise_at(Temptation_Rock_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2000_herb_biomass$Year <- ('2000')
Temptation_Rock_2000_herb_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2000_comm <- merge(Temptation_Rock_2000, Comm, by = c("SPECIES_CD"))
Temptation_Rock_2000_comm_biomass <- summarise_at(Temptation_Rock_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2000_comm_biomass$Year <- ('2000')
Temptation_Rock_2000_comm_biomass$Reef <- ('Temptation Rock')

Temptation_Rock_2004 <- import("Temptation_Rock/data/Temptation_Rock_2004.xls")

Temptation_Rock_2004_herb <- merge(Temptation_Rock_2004, Herb, by = c("SPECIES_CD"))
Temptation_Rock_2004_herb_biomass <- summarise_at(Temptation_Rock_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2004_herb_biomass$Year <- ('2004')
Temptation_Rock_2004_herb_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2004_comm <- merge(Temptation_Rock_2004, Comm, by = c("SPECIES_CD"))
Temptation_Rock_2004_comm_biomass <- summarise_at(Temptation_Rock_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2004_comm_biomass$Year <- ('2004')
Temptation_Rock_2004_comm_biomass$Reef <- ('Temptation Rock')

Temptation_Rock_2006 <- import("Temptation_Rock/data/Temptation_Rock_2006.xls")

Temptation_Rock_2006_herb <- merge(Temptation_Rock_2006, Herb, by = c("SPECIES_CD"))
Temptation_Rock_2006_herb_biomass <- summarise_at(Temptation_Rock_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2006_herb_biomass$Year <- ('2006')
Temptation_Rock_2006_herb_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2006_comm <- merge(Temptation_Rock_2006, Comm, by = c("SPECIES_CD"))
Temptation_Rock_2006_comm_biomass <- summarise_at(Temptation_Rock_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2006_comm_biomass$Year <- ('2006')
Temptation_Rock_2006_comm_biomass$Reef <- ('Temptation Rock')

Temptation_Rock_2008 <- import("Temptation_Rock/data/Temptation_Rock_2008.xls")

Temptation_Rock_2008_herb <- merge(Temptation_Rock_2008, Herb, by = c("SPECIES_CD"))
Temptation_Rock_2008_herb_biomass <- summarise_at(Temptation_Rock_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2008_herb_biomass$Year <- ('2008')
Temptation_Rock_2008_herb_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2008_comm <- merge(Temptation_Rock_2008, Comm, by = c("SPECIES_CD"))
Temptation_Rock_2008_comm_biomass <- summarise_at(Temptation_Rock_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2008_comm_biomass$Year <- ('2008')
Temptation_Rock_2008_comm_biomass$Reef <- ('Temptation Rock')

Temptation_Rock_2010 <- import("Temptation_Rock/data/Temptation_Rock_2010.xls")

Temptation_Rock_2010_herb <- merge(Temptation_Rock_2010, Herb, by = c("SPECIES_CD"))
Temptation_Rock_2010_herb_biomass <- summarise_at(Temptation_Rock_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2010_herb_biomass$Year <- ('2010')
Temptation_Rock_2010_herb_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2010_comm <- merge(Temptation_Rock_2010, Comm, by = c("SPECIES_CD"))
Temptation_Rock_2010_comm_biomass <- summarise_at(Temptation_Rock_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2010_comm_biomass$Year <- ('2010')
Temptation_Rock_2010_comm_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2012 <- import("Temptation_Rock/data/Temptation_Rock_2012.xls")

Temptation_Rock_2012_herb <- merge(Temptation_Rock_2012, Herb, by = c("SPECIES_CD"))
Temptation_Rock_2012_herb_biomass <- summarise_at(Temptation_Rock_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2012_herb_biomass$Year <- ('2012')
Temptation_Rock_2012_herb_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2012_comm <- merge(Temptation_Rock_2012, Comm, by = c("SPECIES_CD"))
Temptation_Rock_2012_comm_biomass <- summarise_at(Temptation_Rock_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2012_comm_biomass$Year <- ('2012')
Temptation_Rock_2012_comm_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2014 <- import("Temptation_Rock/data/Temptation_Rock_2014.xls")

Temptation_Rock_2014_herb <- merge(Temptation_Rock_2014, Herb, by = c("SPECIES_CD"))
Temptation_Rock_2014_herb_biomass <- summarise_at(Temptation_Rock_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2014_herb_biomass$Year <- ('2014')
Temptation_Rock_2014_herb_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2014_comm <- merge(Temptation_Rock_2014, Comm, by = c("SPECIES_CD"))
Temptation_Rock_2014_comm_biomass <- summarise_at(Temptation_Rock_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2014_comm_biomass$Year <- ('2014')
Temptation_Rock_2014_comm_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2016 <- import("Temptation_Rock/data/Temptation_Rock_2016.xls")

Temptation_Rock_2016_herb <- merge(Temptation_Rock_2016, Herb, by = c("SPECIES_CD"))
Temptation_Rock_2016_herb_biomass <- summarise_at(Temptation_Rock_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2016_herb_biomass$Year <- ('2016')
Temptation_Rock_2016_herb_biomass$Reef <- ('Temptation Rock')


Temptation_Rock_2016_comm <- merge(Temptation_Rock_2016, Comm, by = c("SPECIES_CD"))
Temptation_Rock_2016_comm_biomass <- summarise_at(Temptation_Rock_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Temptation_Rock_2016_comm_biomass$Year <- ('2016')
Temptation_Rock_2016_comm_biomass$Reef <- ('Temptation Rock')


### Combine all years together for herbivorous and commercial seperately 

Temptation_Rock_herb_1 <- rbind(Temptation_Rock_1999_herb_biomass,Temptation_Rock_2000_herb_biomass)
Temptation_Rock_herb_2 <- rbind(Temptation_Rock_herb_1,Temptation_Rock_2004_herb_biomass)
Temptation_Rock_herb_3 <- rbind(Temptation_Rock_herb_2,Temptation_Rock_2006_herb_biomass)
Temptation_Rock_herb_4 <- rbind(Temptation_Rock_herb_3,Temptation_Rock_2008_herb_biomass)
Temptation_Rock_herb_5 <- rbind(Temptation_Rock_herb_4,Temptation_Rock_2010_herb_biomass)
Temptation_Rock_herb_6 <- rbind(Temptation_Rock_herb_5,Temptation_Rock_2012_herb_biomass)
Temptation_Rock_herb_7 <- rbind(Temptation_Rock_herb_6,Temptation_Rock_2014_herb_biomass)
Temptation_Rock_herb_biomass <- rbind(Temptation_Rock_herb_7,Temptation_Rock_2016_herb_biomass)


Temptation_Rock_comm_1 <- rbind(Temptation_Rock_1999_comm_biomass,Temptation_Rock_2000_comm_biomass)
Temptation_Rock_comm_2 <- rbind(Temptation_Rock_comm_1,Temptation_Rock_2004_comm_biomass)
Temptation_Rock_comm_3 <- rbind(Temptation_Rock_comm_2,Temptation_Rock_2006_comm_biomass)
Temptation_Rock_comm_4 <- rbind(Temptation_Rock_comm_3,Temptation_Rock_2008_comm_biomass)
Temptation_Rock_comm_5 <- rbind(Temptation_Rock_comm_4,Temptation_Rock_2010_comm_biomass)
Temptation_Rock_comm_6 <- rbind(Temptation_Rock_comm_5,Temptation_Rock_2012_comm_biomass)
Temptation_Rock_comm_7 <- rbind(Temptation_Rock_comm_6,Temptation_Rock_2014_comm_biomass)
Temptation_Rock_comm_biomass <- rbind(Temptation_Rock_comm_7,Temptation_Rock_2016_comm_biomass)


export(Temptation_Rock_herb_biomass, "Temptation_Rock/data/Temptation_Rock_herbivorous_biomass.csv")
export(Temptation_Rock_comm_biomass, "Temptation_Rock/data/Temptation_Rock_commercial_biomass.csv")




# Texas Rock

Texas_Rock_1999 <- import("Texas_Rock/data/Texas_Rock_1999.xls")


Texas_Rock_1999_herb <- merge(Texas_Rock_1999, Herb, by = c("SPECIES_CD"))
Texas_Rock_1999_herb_biomass <- summarise_at(Texas_Rock_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_1999_herb_biomass$Year <- ('1999')
Texas_Rock_1999_herb_biomass$Reef <- ('Texas Rock')


Texas_Rock_1999_comm <- merge(Texas_Rock_1999, Comm, by = c("SPECIES_CD"))
Texas_Rock_1999_comm_biomass <- summarise_at(Texas_Rock_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_1999_comm_biomass$Year <- ('1999')
Texas_Rock_1999_comm_biomass$Reef <- ('Texas Rock')


Texas_Rock_2000 <- import("Texas_Rock/data/Texas_Rock_2000.xls")

Texas_Rock_2000_herb <- merge(Texas_Rock_2000, Herb, by = c("SPECIES_CD"))
Texas_Rock_2000_herb_biomass <- summarise_at(Texas_Rock_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2000_herb_biomass$Year <- ('2000')
Texas_Rock_2000_herb_biomass$Reef <- ('Texas Rock')


Texas_Rock_2000_comm <- merge(Texas_Rock_2000, Comm, by = c("SPECIES_CD"))
Texas_Rock_2000_comm_biomass <- summarise_at(Texas_Rock_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2000_comm_biomass$Year <- ('2000')
Texas_Rock_2000_comm_biomass$Reef <- ('Texas Rock')

Texas_Rock_2004 <- import("Texas_Rock/data/Texas_Rock_2004.xls")

Texas_Rock_2004_herb <- merge(Texas_Rock_2004, Herb, by = c("SPECIES_CD"))
Texas_Rock_2004_herb_biomass <- summarise_at(Texas_Rock_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2004_herb_biomass$Year <- ('2004')
Texas_Rock_2004_herb_biomass$Reef <- ('Texas Rock')


Texas_Rock_2004_comm <- merge(Texas_Rock_2004, Comm, by = c("SPECIES_CD"))
Texas_Rock_2004_comm_biomass <- summarise_at(Texas_Rock_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2004_comm_biomass$Year <- ('2004')
Texas_Rock_2004_comm_biomass$Reef <- ('Texas Rock')

Texas_Rock_2006 <- import("Texas_Rock/data/Texas_Rock_2006.xls")

Texas_Rock_2006_herb <- merge(Texas_Rock_2006, Herb, by = c("SPECIES_CD"))
Texas_Rock_2006_herb_biomass <- summarise_at(Texas_Rock_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2006_herb_biomass$Year <- ('2006')
Texas_Rock_2006_herb_biomass$Reef <- ('Texas Rock')


Texas_Rock_2006_comm <- merge(Texas_Rock_2006, Comm, by = c("SPECIES_CD"))
Texas_Rock_2006_comm_biomass <- summarise_at(Texas_Rock_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2006_comm_biomass$Year <- ('2006')
Texas_Rock_2006_comm_biomass$Reef <- ('Texas Rock')

Texas_Rock_2008 <- import("Texas_Rock/data/Texas_Rock_2008.xls")

Texas_Rock_2008_herb <- merge(Texas_Rock_2008, Herb, by = c("SPECIES_CD"))
Texas_Rock_2008_herb_biomass <- summarise_at(Texas_Rock_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2008_herb_biomass$Year <- ('2008')
Texas_Rock_2008_herb_biomass$Reef <- ('Texas Rock')


Texas_Rock_2008_comm <- merge(Texas_Rock_2008, Comm, by = c("SPECIES_CD"))
Texas_Rock_2008_comm_biomass <- summarise_at(Texas_Rock_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2008_comm_biomass$Year <- ('2008')
Texas_Rock_2008_comm_biomass$Reef <- ('Texas Rock')

Texas_Rock_2010 <- import("Texas_Rock/data/Texas_Rock_2010.xls")

Texas_Rock_2010_herb <- merge(Texas_Rock_2010, Herb, by = c("SPECIES_CD"))
Texas_Rock_2010_herb_biomass <- summarise_at(Texas_Rock_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2010_herb_biomass$Year <- ('2010')
Texas_Rock_2010_herb_biomass$Reef <- ('Texas Rock')


Texas_Rock_2010_comm <- merge(Texas_Rock_2010, Comm, by = c("SPECIES_CD"))
Texas_Rock_2010_comm_biomass <- summarise_at(Texas_Rock_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2010_comm_biomass$Year <- ('2010')
Texas_Rock_2010_comm_biomass$Reef <- ('Texas Rock')


Texas_Rock_2012 <- import("Texas_Rock/data/Texas_Rock_2012.xls")

Texas_Rock_2012_herb <- merge(Texas_Rock_2012, Herb, by = c("SPECIES_CD"))
Texas_Rock_2012_herb_biomass <- summarise_at(Texas_Rock_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2012_herb_biomass$Year <- ('2012')
Texas_Rock_2012_herb_biomass$Reef <- ('Texas Rock')


Texas_Rock_2012_comm <- merge(Texas_Rock_2012, Comm, by = c("SPECIES_CD"))
Texas_Rock_2012_comm_biomass <- summarise_at(Texas_Rock_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2012_comm_biomass$Year <- ('2012')
Texas_Rock_2012_comm_biomass$Reef <- ('Texas Rock')


Texas_Rock_2014 <- import("Texas_Rock/data/Texas_Rock_2014.xls")

Texas_Rock_2014_herb <- merge(Texas_Rock_2014, Herb, by = c("SPECIES_CD"))
Texas_Rock_2014_herb_biomass <- summarise_at(Texas_Rock_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2014_herb_biomass$Year <- ('2014')
Texas_Rock_2014_herb_biomass$Reef <- ('Texas Rock')


Texas_Rock_2014_comm <- merge(Texas_Rock_2014, Comm, by = c("SPECIES_CD"))
Texas_Rock_2014_comm_biomass <- summarise_at(Texas_Rock_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2014_comm_biomass$Year <- ('2014')
Texas_Rock_2014_comm_biomass$Reef <- ('Texas Rock')


Texas_Rock_2016 <- import("Texas_Rock/data/Texas_Rock_2016.xls")

Texas_Rock_2016_herb <- merge(Texas_Rock_2016, Herb, by = c("SPECIES_CD"))
Texas_Rock_2016_herb_biomass <- summarise_at(Texas_Rock_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2016_herb_biomass$Year <- ('2016')
Texas_Rock_2016_herb_biomass$Reef <- ('Texas Rock')


Texas_Rock_2016_comm <- merge(Texas_Rock_2016, Comm, by = c("SPECIES_CD"))
Texas_Rock_2016_comm_biomass <- summarise_at(Texas_Rock_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Texas_Rock_2016_comm_biomass$Year <- ('2016')
Texas_Rock_2016_comm_biomass$Reef <- ('Texas Rock')


### Combine all years together for herbivorous and commercial seperately 

Texas_Rock_herb_1 <- rbind(Texas_Rock_1999_herb_biomass,Texas_Rock_2000_herb_biomass)
Texas_Rock_herb_2 <- rbind(Texas_Rock_herb_1,Texas_Rock_2004_herb_biomass)
Texas_Rock_herb_3 <- rbind(Texas_Rock_herb_2,Texas_Rock_2006_herb_biomass)
Texas_Rock_herb_4 <- rbind(Texas_Rock_herb_3,Texas_Rock_2008_herb_biomass)
Texas_Rock_herb_5 <- rbind(Texas_Rock_herb_4,Texas_Rock_2010_herb_biomass)
Texas_Rock_herb_6 <- rbind(Texas_Rock_herb_5,Texas_Rock_2012_herb_biomass)
Texas_Rock_herb_7 <- rbind(Texas_Rock_herb_6,Texas_Rock_2014_herb_biomass)
Texas_Rock_herb_biomass <- rbind(Texas_Rock_herb_7,Texas_Rock_2016_herb_biomass)


Texas_Rock_comm_1 <- rbind(Texas_Rock_1999_comm_biomass,Texas_Rock_2000_comm_biomass)
Texas_Rock_comm_2 <- rbind(Texas_Rock_comm_1,Texas_Rock_2004_comm_biomass)
Texas_Rock_comm_3 <- rbind(Texas_Rock_comm_2,Texas_Rock_2006_comm_biomass)
Texas_Rock_comm_4 <- rbind(Texas_Rock_comm_3,Texas_Rock_2008_comm_biomass)
Texas_Rock_comm_5 <- rbind(Texas_Rock_comm_4,Texas_Rock_2010_comm_biomass)
Texas_Rock_comm_6 <- rbind(Texas_Rock_comm_5,Texas_Rock_2012_comm_biomass)
Texas_Rock_comm_7 <- rbind(Texas_Rock_comm_6,Texas_Rock_2014_comm_biomass)
Texas_Rock_comm_biomass <- rbind(Texas_Rock_comm_7,Texas_Rock_2016_comm_biomass)


export(Texas_Rock_herb_biomass, "Texas_Rock/data/Texas_Rock_herbivorous_biomass.csv")
export(Texas_Rock_comm_biomass, "Texas_Rock/data/Texas_Rock_commercial_biomass.csv")


# Maze

# Maze_1999 <- import("The_Maze/data/Maze_1999.xls")
# 
# 
# Maze_1999_herb <- merge(Maze_1999, Herb, by = c("SPECIES_CD"))
# Maze_1999_herb_biomass <- summarise_at(Maze_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Maze_1999_herb_biomass$Year <- ('1999')
# Maze_1999_herb_biomass$Reef <- ('Maze')


Maze_1999_comm <- merge(Maze_1999, Comm, by = c("SPECIES_CD"))
Maze_1999_comm_biomass <- summarise_at(Maze_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_1999_comm_biomass$Year <- ('1999')
Maze_1999_comm_biomass$Reef <- ('Maze')


Maze_2000 <- import("The_Maze/data/Maze_2000.xls")

Maze_2000_herb <- merge(Maze_2000, Herb, by = c("SPECIES_CD"))
Maze_2000_herb_biomass <- summarise_at(Maze_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2000_herb_biomass$Year <- ('2000')
Maze_2000_herb_biomass$Reef <- ('Maze')


Maze_2000_comm <- merge(Maze_2000, Comm, by = c("SPECIES_CD"))
Maze_2000_comm_biomass <- summarise_at(Maze_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2000_comm_biomass$Year <- ('2000')
Maze_2000_comm_biomass$Reef <- ('Maze')

Maze_2004 <- import("The_Maze/data/Maze_2004.xls")

Maze_2004_herb <- merge(Maze_2004, Herb, by = c("SPECIES_CD"))
Maze_2004_herb_biomass <- summarise_at(Maze_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2004_herb_biomass$Year <- ('2004')
Maze_2004_herb_biomass$Reef <- ('Maze')


Maze_2004_comm <- merge(Maze_2004, Comm, by = c("SPECIES_CD"))
Maze_2004_comm_biomass <- summarise_at(Maze_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2004_comm_biomass$Year <- ('2004')
Maze_2004_comm_biomass$Reef <- ('Maze')

Maze_2006 <- import("The_Maze/data/Maze_2006.xls")

Maze_2006_herb <- merge(Maze_2006, Herb, by = c("SPECIES_CD"))
Maze_2006_herb_biomass <- summarise_at(Maze_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2006_herb_biomass$Year <- ('2006')
Maze_2006_herb_biomass$Reef <- ('Maze')


Maze_2006_comm <- merge(Maze_2006, Comm, by = c("SPECIES_CD"))
Maze_2006_comm_biomass <- summarise_at(Maze_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2006_comm_biomass$Year <- ('2006')
Maze_2006_comm_biomass$Reef <- ('Maze')

Maze_2008 <- import("The_Maze/data/Maze_2008.xls")

Maze_2008_herb <- merge(Maze_2008, Herb, by = c("SPECIES_CD"))
Maze_2008_herb_biomass <- summarise_at(Maze_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2008_herb_biomass$Year <- ('2008')
Maze_2008_herb_biomass$Reef <- ('Maze')


Maze_2008_comm <- merge(Maze_2008, Comm, by = c("SPECIES_CD"))
Maze_2008_comm_biomass <- summarise_at(Maze_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2008_comm_biomass$Year <- ('2008')
Maze_2008_comm_biomass$Reef <- ('Maze')

Maze_2010 <- import("The_Maze/data/Maze_2010.xls")

Maze_2010_herb <- merge(Maze_2010, Herb, by = c("SPECIES_CD"))
Maze_2010_herb_biomass <- summarise_at(Maze_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2010_herb_biomass$Year <- ('2010')
Maze_2010_herb_biomass$Reef <- ('Maze')


Maze_2010_comm <- merge(Maze_2010, Comm, by = c("SPECIES_CD"))
Maze_2010_comm_biomass <- summarise_at(Maze_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2010_comm_biomass$Year <- ('2010')
Maze_2010_comm_biomass$Reef <- ('Maze')


Maze_2012 <- import("The_Maze/data/Maze_2012.xls")

Maze_2012_herb <- merge(Maze_2012, Herb, by = c("SPECIES_CD"))
Maze_2012_herb_biomass <- summarise_at(Maze_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2012_herb_biomass$Year <- ('2012')
Maze_2012_herb_biomass$Reef <- ('Maze')


Maze_2012_comm <- merge(Maze_2012, Comm, by = c("SPECIES_CD"))
Maze_2012_comm_biomass <- summarise_at(Maze_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2012_comm_biomass$Year <- ('2012')
Maze_2012_comm_biomass$Reef <- ('Maze')


Maze_2014 <- import("The_Maze/data/Maze_2014.xls")

Maze_2014_herb <- merge(Maze_2014, Herb, by = c("SPECIES_CD"))
Maze_2014_herb_biomass <- summarise_at(Maze_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2014_herb_biomass$Year <- ('2014')
Maze_2014_herb_biomass$Reef <- ('Maze')


Maze_2014_comm <- merge(Maze_2014, Comm, by = c("SPECIES_CD"))
Maze_2014_comm_biomass <- summarise_at(Maze_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2014_comm_biomass$Year <- ('2014')
Maze_2014_comm_biomass$Reef <- ('Maze')


Maze_2016 <- import("The_Maze/data/Maze_2016.xls")

Maze_2016_herb <- merge(Maze_2016, Herb, by = c("SPECIES_CD"))
Maze_2016_herb_biomass <- summarise_at(Maze_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2016_herb_biomass$Year <- ('2016')
Maze_2016_herb_biomass$Reef <- ('Maze')


Maze_2016_comm <- merge(Maze_2016, Comm, by = c("SPECIES_CD"))
Maze_2016_comm_biomass <- summarise_at(Maze_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Maze_2016_comm_biomass$Year <- ('2016')
Maze_2016_comm_biomass$Reef <- ('Maze')


### Combine all years together for herbivorous and commercial seperately 

#Maze_herb_1 <- rbind(Maze_1999_herb_biomass,Maze_2000_herb_biomass)
Maze_herb_2 <- rbind(Maze_2000_herb_biomass,Maze_2004_herb_biomass)
Maze_herb_3 <- rbind(Maze_herb_2,Maze_2006_herb_biomass)
Maze_herb_4 <- rbind(Maze_herb_3,Maze_2008_herb_biomass)
Maze_herb_5 <- rbind(Maze_herb_4,Maze_2010_herb_biomass)
Maze_herb_6 <- rbind(Maze_herb_5,Maze_2012_herb_biomass)
Maze_herb_7 <- rbind(Maze_herb_6,Maze_2014_herb_biomass)
Maze_herb_biomass <- rbind(Maze_herb_7,Maze_2016_herb_biomass)


#Maze_comm_1 <- rbind(Maze_1999_comm_biomass,Maze_2000_comm_biomass)
Maze_comm_2 <- rbind(Maze_2000_comm_biomass,Maze_2004_comm_biomass)
Maze_comm_3 <- rbind(Maze_comm_2,Maze_2006_comm_biomass)
Maze_comm_4 <- rbind(Maze_comm_3,Maze_2008_comm_biomass)
Maze_comm_5 <- rbind(Maze_comm_4,Maze_2010_comm_biomass)
Maze_comm_6 <- rbind(Maze_comm_5,Maze_2012_comm_biomass)
Maze_comm_7 <- rbind(Maze_comm_6,Maze_2014_comm_biomass)
Maze_comm_biomass <- rbind(Maze_comm_7,Maze_2016_comm_biomass)


export(Maze_herb_biomass, "The_Maze/data/Maze_herbivorous_biomass.csv")
export(Maze_comm_biomass, "The_Maze/data/Maze_commercial_biomass.csv")


# White Shoal

White_Shoal_1999 <- import("White_Shoal/data/White_Shoal_1999.xls")


White_Shoal_1999_herb <- merge(White_Shoal_1999, Herb, by = c("SPECIES_CD"))
White_Shoal_1999_herb_biomass <- summarise_at(White_Shoal_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_1999_herb_biomass$Year <- ('1999')
White_Shoal_1999_herb_biomass$Reef <- ('White Shoal')


White_Shoal_1999_comm <- merge(White_Shoal_1999, Comm, by = c("SPECIES_CD"))
White_Shoal_1999_comm_biomass <- summarise_at(White_Shoal_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_1999_comm_biomass$Year <- ('1999')
White_Shoal_1999_comm_biomass$Reef <- ('White Shoal')


White_Shoal_2000 <- import("White_Shoal/data/White_Shoal_2000.xls")

White_Shoal_2000_herb <- merge(White_Shoal_2000, Herb, by = c("SPECIES_CD"))
White_Shoal_2000_herb_biomass <- summarise_at(White_Shoal_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2000_herb_biomass$Year <- ('2000')
White_Shoal_2000_herb_biomass$Reef <- ('White Shoal')


White_Shoal_2000_comm <- merge(White_Shoal_2000, Comm, by = c("SPECIES_CD"))
White_Shoal_2000_comm_biomass <- summarise_at(White_Shoal_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2000_comm_biomass$Year <- ('2000')
White_Shoal_2000_comm_biomass$Reef <- ('White Shoal')

White_Shoal_2004 <- import("White_Shoal/data/White_Shoal_2004.xls")

White_Shoal_2004_herb <- merge(White_Shoal_2004, Herb, by = c("SPECIES_CD"))
White_Shoal_2004_herb_biomass <- summarise_at(White_Shoal_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2004_herb_biomass$Year <- ('2004')
White_Shoal_2004_herb_biomass$Reef <- ('White Shoal')


White_Shoal_2004_comm <- merge(White_Shoal_2004, Comm, by = c("SPECIES_CD"))
White_Shoal_2004_comm_biomass <- summarise_at(White_Shoal_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2004_comm_biomass$Year <- ('2004')
White_Shoal_2004_comm_biomass$Reef <- ('White Shoal')

White_Shoal_2006 <- import("White_Shoal/data/White_Shoal_2006.xls")

White_Shoal_2006_herb <- merge(White_Shoal_2006, Herb, by = c("SPECIES_CD"))
White_Shoal_2006_herb_biomass <- summarise_at(White_Shoal_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2006_herb_biomass$Year <- ('2006')
White_Shoal_2006_herb_biomass$Reef <- ('White Shoal')


White_Shoal_2006_comm <- merge(White_Shoal_2006, Comm, by = c("SPECIES_CD"))
White_Shoal_2006_comm_biomass <- summarise_at(White_Shoal_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2006_comm_biomass$Year <- ('2006')
White_Shoal_2006_comm_biomass$Reef <- ('White Shoal')

White_Shoal_2008 <- import("White_Shoal/data/White_Shoal_2008.xls")

White_Shoal_2008_herb <- merge(White_Shoal_2008, Herb, by = c("SPECIES_CD"))
White_Shoal_2008_herb_biomass <- summarise_at(White_Shoal_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2008_herb_biomass$Year <- ('2008')
White_Shoal_2008_herb_biomass$Reef <- ('White Shoal')


White_Shoal_2008_comm <- merge(White_Shoal_2008, Comm, by = c("SPECIES_CD"))
White_Shoal_2008_comm_biomass <- summarise_at(White_Shoal_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2008_comm_biomass$Year <- ('2008')
White_Shoal_2008_comm_biomass$Reef <- ('White Shoal')

White_Shoal_2010 <- import("White_Shoal/data/White_Shoal_2010.xls")

White_Shoal_2010_herb <- merge(White_Shoal_2010, Herb, by = c("SPECIES_CD"))
White_Shoal_2010_herb_biomass <- summarise_at(White_Shoal_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2010_herb_biomass$Year <- ('2010')
White_Shoal_2010_herb_biomass$Reef <- ('White Shoal')


White_Shoal_2010_comm <- merge(White_Shoal_2010, Comm, by = c("SPECIES_CD"))
White_Shoal_2010_comm_biomass <- summarise_at(White_Shoal_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2010_comm_biomass$Year <- ('2010')
White_Shoal_2010_comm_biomass$Reef <- ('White Shoal')


White_Shoal_2012 <- import("White_Shoal/data/White_Shoal_2012.xls")

White_Shoal_2012_herb <- merge(White_Shoal_2012, Herb, by = c("SPECIES_CD"))
White_Shoal_2012_herb_biomass <- summarise_at(White_Shoal_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2012_herb_biomass$Year <- ('2012')
White_Shoal_2012_herb_biomass$Reef <- ('White Shoal')


White_Shoal_2012_comm <- merge(White_Shoal_2012, Comm, by = c("SPECIES_CD"))
White_Shoal_2012_comm_biomass <- summarise_at(White_Shoal_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2012_comm_biomass$Year <- ('2012')
White_Shoal_2012_comm_biomass$Reef <- ('White Shoal')


White_Shoal_2014 <- import("White_Shoal/data/White_Shoal_2014.xls")

White_Shoal_2014_herb <- merge(White_Shoal_2014, Herb, by = c("SPECIES_CD"))
White_Shoal_2014_herb_biomass <- summarise_at(White_Shoal_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2014_herb_biomass$Year <- ('2014')
White_Shoal_2014_herb_biomass$Reef <- ('White Shoal')


White_Shoal_2014_comm <- merge(White_Shoal_2014, Comm, by = c("SPECIES_CD"))
White_Shoal_2014_comm_biomass <- summarise_at(White_Shoal_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2014_comm_biomass$Year <- ('2014')
White_Shoal_2014_comm_biomass$Reef <- ('White Shoal')


White_Shoal_2016 <- import("White_Shoal/data/White_Shoal_2016.xls")

White_Shoal_2016_herb <- merge(White_Shoal_2016, Herb, by = c("SPECIES_CD"))
White_Shoal_2016_herb_biomass <- summarise_at(White_Shoal_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2016_herb_biomass$Year <- ('2016')
White_Shoal_2016_herb_biomass$Reef <- ('White Shoal')


White_Shoal_2016_comm <- merge(White_Shoal_2016, Comm, by = c("SPECIES_CD"))
White_Shoal_2016_comm_biomass <- summarise_at(White_Shoal_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
White_Shoal_2016_comm_biomass$Year <- ('2016')
White_Shoal_2016_comm_biomass$Reef <- ('White Shoal')


### Combine all years together for herbivorous and commercial seperately 

White_Shoal_herb_1 <- rbind(White_Shoal_1999_herb_biomass,White_Shoal_2000_herb_biomass)
White_Shoal_herb_2 <- rbind(White_Shoal_herb_1,White_Shoal_2004_herb_biomass)
White_Shoal_herb_3 <- rbind(White_Shoal_herb_2,White_Shoal_2006_herb_biomass)
White_Shoal_herb_4 <- rbind(White_Shoal_herb_3,White_Shoal_2008_herb_biomass)
White_Shoal_herb_5 <- rbind(White_Shoal_herb_4,White_Shoal_2010_herb_biomass)
White_Shoal_herb_6 <- rbind(White_Shoal_herb_5,White_Shoal_2012_herb_biomass)
White_Shoal_herb_7 <- rbind(White_Shoal_herb_6,White_Shoal_2014_herb_biomass)
White_Shoal_herb_biomass <- rbind(White_Shoal_herb_7,White_Shoal_2016_herb_biomass)


White_Shoal_comm_1 <- rbind(White_Shoal_1999_comm_biomass,White_Shoal_2000_comm_biomass)
White_Shoal_comm_2 <- rbind(White_Shoal_comm_1,White_Shoal_2004_comm_biomass)
White_Shoal_comm_3 <- rbind(White_Shoal_comm_2,White_Shoal_2006_comm_biomass)
White_Shoal_comm_4 <- rbind(White_Shoal_comm_3,White_Shoal_2008_comm_biomass)
White_Shoal_comm_5 <- rbind(White_Shoal_comm_4,White_Shoal_2010_comm_biomass)
White_Shoal_comm_6 <- rbind(White_Shoal_comm_5,White_Shoal_2012_comm_biomass)
White_Shoal_comm_7 <- rbind(White_Shoal_comm_6,White_Shoal_2014_comm_biomass)
White_Shoal_comm_biomass <- rbind(White_Shoal_comm_7,White_Shoal_2016_comm_biomass)


export(White_Shoal_herb_biomass, "White_Shoal/data/White_Shoal_herbivorous_biomass.csv")
export(White_Shoal_comm_biomass, "White_Shoal/data/White_Shoal_commercial_biomass.csv")



### Combine data for all DT for herb and comm

DT_reef_herb_biomass_combined <- rbind(Bird_Key_herb_biomass,Black_Coral_Rock_herb_biomass, Davis_Rock_herb_biomass, Loggerhead_Patch_herb_biomass, Mayers_Peak_herb_biomass, Palmata_Patch_herb_biomass,Prolifera_Patch_herb_biomass, Maze_herb_biomass, Temptation_Rock_herb_biomass, Texas_Rock_herb_biomass, White_Shoal_herb_biomass)
DT_reef_herb_biomass_data <- arrange(DT_reef_herb_biomass_combined, Year,Reef, sum, max, min, mean, sd )
DT_reef_herb_biomass_data$REGION <- ("DT")
export(DT_reef_herb_biomass_data, "DT_herbivorous_biomass_data.csv")



DT_reef_comm_biomass_combined <- rbind(Bird_Key_comm_biomass,Black_Coral_Rock_comm_biomass, Davis_Rock_comm_biomass, Loggerhead_Patch_comm_biomass, Mayers_Peak_comm_biomass, Palmata_Patch_comm_biomass,Prolifera_Patch_comm_biomass, Maze_comm_biomass, Temptation_Rock_comm_biomass, Texas_Rock_comm_biomass, White_Shoal_comm_biomass)
DT_reef_comm_biomass_data <- arrange(DT_reef_comm_biomass_combined, Year,Reef, sum, max, min, mean, sd )
DT_reef_comm_biomass_data$REGION <- ("DT")
export(DT_reef_comm_biomass_data, "DT_commercial_biomass_data.csv")



### Rank by region for RHI values (1-5)


## Herbivrous first and repeat code for commercial 

## remove max, min, mean, sd
DT_reef_herb_biomass_data$max <- NULL
DT_reef_herb_biomass_data$min <- NULL
DT_reef_herb_biomass_data$sd <- NULL
DT_reef_herb_biomass_data$REGION <- NULL
DT_reef_herb_biomass_data$mean <- NULL


DT_herb_graph <- DT_reef_herb_biomass_data[order(DT_reef_herb_biomass_data$sum),]

## sort data into 5 different bins using binr 

DT_herb_bins <- bins(DT_herb_graph$sum,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
view(DT_herb_bins$binct)

#### MANUALLY ADD IN THE VALUES OF EACH BIN. 1-5 WILL BE ADDED TO EACH BIN SUBSET

## from binct make the value of the bins and apply number 1-5 for each bin

DT_herb_1 <- subset(DT_herb_graph, sum < 0.0056032901376835)
DT_herb_2 <- subset(DT_herb_graph, sum >= 0.0056032901376835  & sum < 0.0221995480842845 )
DT_herb_3 <- subset(DT_herb_graph, sum >= 0.0221995480842845  & sum < 0.0410235754113624 )
DT_herb_4 <- subset(DT_herb_graph, sum >= 0.0410235754113624  & sum < 0.101480385743905 )
DT_herb_5 <- subset(DT_herb_graph, sum >= 0.101480385743905  & sum < 0.402358481642115 )


DT_herb_1$RHI_Fish <- "1"
DT_herb_2$RHI_Fish <- "2"
DT_herb_3$RHI_Fish <- "3"
DT_herb_4$RHI_Fish <- "4"
DT_herb_5$RHI_Fish <- "5"

DT_herb_RHI <- rbind(DT_herb_1,DT_herb_2,DT_herb_3,DT_herb_4,DT_herb_5)  

DT_herb_RHI$SUBREGION <- "DT"

## Commercial 

## remove max, min, mean, sd
DT_reef_comm_biomass_data$max <- NULL
DT_reef_comm_biomass_data$min <- NULL
DT_reef_comm_biomass_data$sd <- NULL
DT_reef_comm_biomass_data$REGION <- NULL
DT_reef_comm_biomass_data$mean <- NULL


DT_comm_graph <- DT_reef_comm_biomass_data[order(DT_reef_comm_biomass_data$sum),]

## sort data into 5 different bins using binr 

DT_comm_bins <- bins(DT_comm_graph$sum,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)

view(DT_comm_bins$binct)

#### MANUALLY ADD IN THE VALUES OF EACH BIN. 1-5 WILL BE ADDED TO EACH BIN SUBSET

## from binct make the value of the bins and apply number 1-5 for each bin

DT_comm_1 <- subset(DT_comm_graph, sum < 0.0359017935408148)
DT_comm_2 <- subset(DT_comm_graph, sum >= 0.0359017935408148  & sum < 0.0815088984015452 )
DT_comm_3 <- subset(DT_comm_graph, sum >= 0.0815088984015452  & sum <  0.184596796992808 )
DT_comm_4 <- subset(DT_comm_graph, sum >= 0.184596796992808   & sum < 0.420954554064919 )
DT_comm_5 <- subset(DT_comm_graph, sum >= 0.420954554064919  & sum < 1.64067833758724 )


DT_comm_1$RHI_Fish <- "1"
DT_comm_2$RHI_Fish <- "2"
DT_comm_3$RHI_Fish <- "3"
DT_comm_4$RHI_Fish <- "4"
DT_comm_5$RHI_Fish <- "5"

DT_comm_RHI <- rbind(DT_comm_1,DT_comm_2,DT_comm_3,DT_comm_4,DT_comm_5)  

DT_comm_RHI$SUBREGION <- "DT"



export(DT_herb_RHI, "DT_herbivorous_RHI.csv")
export(DT_comm_RHI, "DT_commercial_RHI.csv")











 
### Lower Keys
setwd("C:/Users/cestes/Documents/Spring_2020/RVC_CREMP_by_REEF/LK")


# Eastern Sambo Deep

Eastern_Sambo_Deep_1999 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_1999.xls")


Eastern_Sambo_Deep_1999_herb <- merge(Eastern_Sambo_Deep_1999, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_1999_herb_biomass <- summarise_at(Eastern_Sambo_Deep_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_1999_herb_biomass$Year <- ('1999')
Eastern_Sambo_Deep_1999_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_1999_comm <- merge(Eastern_Sambo_Deep_1999, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_1999_comm_biomass <- summarise_at(Eastern_Sambo_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_1999_comm_biomass$Year <- ('1999')
Eastern_Sambo_Deep_1999_comm_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2000 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2000.xls")

Eastern_Sambo_Deep_2000_herb <- merge(Eastern_Sambo_Deep_2000, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2000_herb_biomass <- summarise_at(Eastern_Sambo_Deep_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2000_herb_biomass$Year <- ('2000')
Eastern_Sambo_Deep_2000_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2000_comm <- merge(Eastern_Sambo_Deep_2000, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2000_comm_biomass <- summarise_at(Eastern_Sambo_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2000_comm_biomass$Year <- ('2000')
Eastern_Sambo_Deep_2000_comm_biomass$Reef <- ('Eastern Sambo Deep')

Eastern_Sambo_Deep_2001 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2001.xls")

Eastern_Sambo_Deep_2001_herb <- merge(Eastern_Sambo_Deep_2001, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2001_herb_biomass <- summarise_at(Eastern_Sambo_Deep_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2001_herb_biomass$Year <- ('2001')
Eastern_Sambo_Deep_2001_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2001_comm <- merge(Eastern_Sambo_Deep_2001, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2001_comm_biomass <- summarise_at(Eastern_Sambo_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2001_comm_biomass$Year <- ('2001')
Eastern_Sambo_Deep_2001_comm_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2002 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2002.xls")

Eastern_Sambo_Deep_2002_herb <- merge(Eastern_Sambo_Deep_2002, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2002_herb_biomass <- summarise_at(Eastern_Sambo_Deep_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2002_herb_biomass$Year <- ('2002')
Eastern_Sambo_Deep_2002_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2002_comm <- merge(Eastern_Sambo_Deep_2002, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2002_comm_biomass <- summarise_at(Eastern_Sambo_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2002_comm_biomass$Year <- ('2002')
Eastern_Sambo_Deep_2002_comm_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2003 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2003.xls")

Eastern_Sambo_Deep_2003_herb <- merge(Eastern_Sambo_Deep_2003, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2003_herb_biomass <- summarise_at(Eastern_Sambo_Deep_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2003_herb_biomass$Year <- ('2003')
Eastern_Sambo_Deep_2003_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2003_comm <- merge(Eastern_Sambo_Deep_2003, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2003_comm_biomass <- summarise_at(Eastern_Sambo_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2003_comm_biomass$Year <- ('2003')
Eastern_Sambo_Deep_2003_comm_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2004 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2004.xls")

Eastern_Sambo_Deep_2004_herb <- merge(Eastern_Sambo_Deep_2004, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2004_herb_biomass <- summarise_at(Eastern_Sambo_Deep_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2004_herb_biomass$Year <- ('2004')
Eastern_Sambo_Deep_2004_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2004_comm <- merge(Eastern_Sambo_Deep_2004, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2004_comm_biomass <- summarise_at(Eastern_Sambo_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2004_comm_biomass$Year <- ('2004')
Eastern_Sambo_Deep_2004_comm_biomass$Reef <- ('Eastern Sambo Deep')

Eastern_Sambo_Deep_2005 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2005.xls")

Eastern_Sambo_Deep_2005_herb <- merge(Eastern_Sambo_Deep_2005, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2005_herb_biomass <- summarise_at(Eastern_Sambo_Deep_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2005_herb_biomass$Year <- ('2005')
Eastern_Sambo_Deep_2005_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2005_comm <- merge(Eastern_Sambo_Deep_2005, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2005_comm_biomass <- summarise_at(Eastern_Sambo_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2005_comm_biomass$Year <- ('2005')
Eastern_Sambo_Deep_2005_comm_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2006 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2006.xls")

Eastern_Sambo_Deep_2006_herb <- merge(Eastern_Sambo_Deep_2006, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2006_herb_biomass <- summarise_at(Eastern_Sambo_Deep_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2006_herb_biomass$Year <- ('2006')
Eastern_Sambo_Deep_2006_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2006_comm <- merge(Eastern_Sambo_Deep_2006, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2006_comm_biomass <- summarise_at(Eastern_Sambo_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2006_comm_biomass$Year <- ('2006')
Eastern_Sambo_Deep_2006_comm_biomass$Reef <- ('Eastern Sambo Deep')

Eastern_Sambo_Deep_2007 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2007.xls")

Eastern_Sambo_Deep_2007_herb <- merge(Eastern_Sambo_Deep_2007, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2007_herb_biomass <- summarise_at(Eastern_Sambo_Deep_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2007_herb_biomass$Year <- ('2007')
Eastern_Sambo_Deep_2007_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2007_comm <- merge(Eastern_Sambo_Deep_2007, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2007_comm_biomass <- summarise_at(Eastern_Sambo_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2007_comm_biomass$Year <- ('2007')
Eastern_Sambo_Deep_2007_comm_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2008 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2008.xls")

Eastern_Sambo_Deep_2008_herb <- merge(Eastern_Sambo_Deep_2008, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2008_herb_biomass <- summarise_at(Eastern_Sambo_Deep_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2008_herb_biomass$Year <- ('2008')
Eastern_Sambo_Deep_2008_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2008_comm <- merge(Eastern_Sambo_Deep_2008, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2008_comm_biomass <- summarise_at(Eastern_Sambo_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2008_comm_biomass$Year <- ('2008')
Eastern_Sambo_Deep_2008_comm_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2009 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2009.xls")

Eastern_Sambo_Deep_2009_herb <- merge(Eastern_Sambo_Deep_2009, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2009_herb_biomass <- summarise_at(Eastern_Sambo_Deep_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2009_herb_biomass$Year <- ('2009')
Eastern_Sambo_Deep_2009_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2009_comm <- merge(Eastern_Sambo_Deep_2009, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2009_comm_biomass <- summarise_at(Eastern_Sambo_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2009_comm_biomass$Year <- ('2009')
Eastern_Sambo_Deep_2009_comm_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2010 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2010.xls")

Eastern_Sambo_Deep_2010_herb <- merge(Eastern_Sambo_Deep_2010, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2010_herb_biomass <- summarise_at(Eastern_Sambo_Deep_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2010_herb_biomass$Year <- ('2010')
Eastern_Sambo_Deep_2010_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2010_comm <- merge(Eastern_Sambo_Deep_2010, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2010_comm_biomass <- summarise_at(Eastern_Sambo_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2010_comm_biomass$Year <- ('2010')
Eastern_Sambo_Deep_2010_comm_biomass$Reef <- ('Eastern Sambo Deep')

Eastern_Sambo_Deep_2011 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2011.xls")

Eastern_Sambo_Deep_2011_herb <- merge(Eastern_Sambo_Deep_2011, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2011_herb_biomass <- summarise_at(Eastern_Sambo_Deep_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2011_herb_biomass$Year <- ('2011')
Eastern_Sambo_Deep_2011_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2011_comm <- merge(Eastern_Sambo_Deep_2011, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2011_comm_biomass <- summarise_at(Eastern_Sambo_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2011_comm_biomass$Year <- ('2011')
Eastern_Sambo_Deep_2011_comm_biomass$Reef <- ('Eastern Sambo Deep')



Eastern_Sambo_Deep_2012 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2012.xls")

Eastern_Sambo_Deep_2012_herb <- merge(Eastern_Sambo_Deep_2012, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2012_herb_biomass <- summarise_at(Eastern_Sambo_Deep_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2012_herb_biomass$Year <- ('2012')
Eastern_Sambo_Deep_2012_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2012_comm <- merge(Eastern_Sambo_Deep_2012, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2012_comm_biomass <- summarise_at(Eastern_Sambo_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2012_comm_biomass$Year <- ('2012')
Eastern_Sambo_Deep_2012_comm_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2014 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2014.xls")

Eastern_Sambo_Deep_2014_herb <- merge(Eastern_Sambo_Deep_2014, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2014_herb_biomass <- summarise_at(Eastern_Sambo_Deep_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2014_herb_biomass$Year <- ('2014')
Eastern_Sambo_Deep_2014_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2014_comm <- merge(Eastern_Sambo_Deep_2014, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2014_comm_biomass <- summarise_at(Eastern_Sambo_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2014_comm_biomass$Year <- ('2014')
Eastern_Sambo_Deep_2014_comm_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2016 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2016.xls")

Eastern_Sambo_Deep_2016_herb <- merge(Eastern_Sambo_Deep_2016, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2016_herb_biomass <- summarise_at(Eastern_Sambo_Deep_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2016_herb_biomass$Year <- ('2016')
Eastern_Sambo_Deep_2016_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2016_comm <- merge(Eastern_Sambo_Deep_2016, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2016_comm_biomass <- summarise_at(Eastern_Sambo_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2016_comm_biomass$Year <- ('2016')
Eastern_Sambo_Deep_2016_comm_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2018 <- import("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2018.xls")

Eastern_Sambo_Deep_2018_herb <- merge(Eastern_Sambo_Deep_2018, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2018_herb_biomass <- summarise_at(Eastern_Sambo_Deep_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2018_herb_biomass$Year <- ('2018')
Eastern_Sambo_Deep_2018_herb_biomass$Reef <- ('Eastern Sambo Deep')


Eastern_Sambo_Deep_2018_comm <- merge(Eastern_Sambo_Deep_2018, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2018_comm_biomass <- summarise_at(Eastern_Sambo_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Deep_2018_comm_biomass$Year <- ('2018')
Eastern_Sambo_Deep_2018_comm_biomass$Reef <- ('Eastern Sambo Deep')



### Combine all years together for herbivorous and commercial seperately



Eastern_Sambo_Deep_herb_1 <- rbind(Eastern_Sambo_Deep_1999_herb_biomass,Eastern_Sambo_Deep_2000_herb_biomass)
Eastern_Sambo_Deep_herb_2 <- rbind(Eastern_Sambo_Deep_herb_1,Eastern_Sambo_Deep_2001_herb_biomass)
Eastern_Sambo_Deep_herb_3 <- rbind(Eastern_Sambo_Deep_herb_2,Eastern_Sambo_Deep_2002_herb_biomass)
Eastern_Sambo_Deep_herb_4 <- rbind(Eastern_Sambo_Deep_herb_3,Eastern_Sambo_Deep_2003_herb_biomass)
Eastern_Sambo_Deep_herb_5 <- rbind(Eastern_Sambo_Deep_herb_4,Eastern_Sambo_Deep_2004_herb_biomass)
Eastern_Sambo_Deep_herb_6 <- rbind(Eastern_Sambo_Deep_herb_5,Eastern_Sambo_Deep_2005_herb_biomass)
Eastern_Sambo_Deep_herb_7 <- rbind(Eastern_Sambo_Deep_herb_6,Eastern_Sambo_Deep_2006_herb_biomass)
Eastern_Sambo_Deep_herb_8 <- rbind(Eastern_Sambo_Deep_herb_7,Eastern_Sambo_Deep_2007_herb_biomass)
Eastern_Sambo_Deep_herb_9 <- rbind(Eastern_Sambo_Deep_herb_8,Eastern_Sambo_Deep_2008_herb_biomass)
Eastern_Sambo_Deep_herb_10 <- rbind(Eastern_Sambo_Deep_herb_9,Eastern_Sambo_Deep_2009_herb_biomass)
Eastern_Sambo_Deep_herb_11<- rbind(Eastern_Sambo_Deep_herb_10,Eastern_Sambo_Deep_2010_herb_biomass)
Eastern_Sambo_Deep_herb_12 <- rbind(Eastern_Sambo_Deep_herb_11,Eastern_Sambo_Deep_2011_herb_biomass)
Eastern_Sambo_Deep_herb_13 <- rbind(Eastern_Sambo_Deep_herb_12,Eastern_Sambo_Deep_2012_herb_biomass)
Eastern_Sambo_Deep_herb_14 <- rbind(Eastern_Sambo_Deep_herb_13,Eastern_Sambo_Deep_2014_herb_biomass)
Eastern_Sambo_Deep_herb_15 <- rbind(Eastern_Sambo_Deep_herb_14,Eastern_Sambo_Deep_2016_herb_biomass)
Eastern_Sambo_Deep_herb_biomass_data_combined <- rbind(Eastern_Sambo_Deep_herb_15,Eastern_Sambo_Deep_2018_herb_biomass)



Eastern_Sambo_Deep_comm_1 <- rbind(Eastern_Sambo_Deep_1999_comm_biomass,Eastern_Sambo_Deep_2000_comm_biomass)
Eastern_Sambo_Deep_comm_2 <- rbind(Eastern_Sambo_Deep_comm_1,Eastern_Sambo_Deep_2001_comm_biomass)
Eastern_Sambo_Deep_comm_3 <- rbind(Eastern_Sambo_Deep_comm_2,Eastern_Sambo_Deep_2002_comm_biomass)
Eastern_Sambo_Deep_comm_4 <- rbind(Eastern_Sambo_Deep_comm_3,Eastern_Sambo_Deep_2003_comm_biomass)
Eastern_Sambo_Deep_comm_5 <- rbind(Eastern_Sambo_Deep_comm_4,Eastern_Sambo_Deep_2004_comm_biomass)
Eastern_Sambo_Deep_comm_6 <- rbind(Eastern_Sambo_Deep_comm_5,Eastern_Sambo_Deep_2005_comm_biomass)
Eastern_Sambo_Deep_comm_7 <- rbind(Eastern_Sambo_Deep_comm_6,Eastern_Sambo_Deep_2006_comm_biomass)
Eastern_Sambo_Deep_comm_8 <- rbind(Eastern_Sambo_Deep_comm_7,Eastern_Sambo_Deep_2007_comm_biomass)
Eastern_Sambo_Deep_comm_9 <- rbind(Eastern_Sambo_Deep_comm_8,Eastern_Sambo_Deep_2008_comm_biomass)
Eastern_Sambo_Deep_comm_10 <- rbind(Eastern_Sambo_Deep_comm_9,Eastern_Sambo_Deep_2009_comm_biomass)
Eastern_Sambo_Deep_comm_11<- rbind(Eastern_Sambo_Deep_comm_10,Eastern_Sambo_Deep_2010_comm_biomass)
Eastern_Sambo_Deep_comm_12 <- rbind(Eastern_Sambo_Deep_comm_11,Eastern_Sambo_Deep_2011_comm_biomass)
Eastern_Sambo_Deep_comm_13 <- rbind(Eastern_Sambo_Deep_comm_12,Eastern_Sambo_Deep_2012_comm_biomass)
Eastern_Sambo_Deep_comm_14 <- rbind(Eastern_Sambo_Deep_comm_13,Eastern_Sambo_Deep_2014_comm_biomass)
Eastern_Sambo_Deep_comm_15 <- rbind(Eastern_Sambo_Deep_comm_14,Eastern_Sambo_Deep_2016_comm_biomass)
Eastern_Sambo_Deep_comm_biomass_data_combined <- rbind(Eastern_Sambo_Deep_comm_15,Eastern_Sambo_Deep_2018_comm_biomass)



export(Eastern_Sambo_Deep_herb_biomass_data_combined, "Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_herbivorous_biomass.csv")
export(Eastern_Sambo_Deep_comm_biomass_data_combined, "Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_commercial_biomass.csv")




# Eastern Sambo Shallow

Eastern_Sambo_Shallow_1999 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_1999.xls")


Eastern_Sambo_Shallow_1999_herb <- merge(Eastern_Sambo_Shallow_1999, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_1999_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_1999_herb_biomass$Year <- ('1999')
Eastern_Sambo_Shallow_1999_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_1999_comm <- merge(Eastern_Sambo_Shallow_1999, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_1999_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_1999_comm_biomass$Year <- ('1999')
Eastern_Sambo_Shallow_1999_comm_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2000 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2000.xls")

Eastern_Sambo_Shallow_2000_herb <- merge(Eastern_Sambo_Shallow_2000, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2000_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2000_herb_biomass$Year <- ('2000')
Eastern_Sambo_Shallow_2000_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2000_comm <- merge(Eastern_Sambo_Shallow_2000, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2000_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2000_comm_biomass$Year <- ('2000')
Eastern_Sambo_Shallow_2000_comm_biomass$Reef <- ('Eastern Sambo Shallow')

Eastern_Sambo_Shallow_2001 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2001.xls")

Eastern_Sambo_Shallow_2001_herb <- merge(Eastern_Sambo_Shallow_2001, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2001_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2001_herb_biomass$Year <- ('2001')
Eastern_Sambo_Shallow_2001_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2001_comm <- merge(Eastern_Sambo_Shallow_2001, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2001_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2001_comm_biomass$Year <- ('2001')
Eastern_Sambo_Shallow_2001_comm_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2002 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2002.xls")

Eastern_Sambo_Shallow_2002_herb <- merge(Eastern_Sambo_Shallow_2002, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2002_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2002_herb_biomass$Year <- ('2002')
Eastern_Sambo_Shallow_2002_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2002_comm <- merge(Eastern_Sambo_Shallow_2002, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2002_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2002_comm_biomass$Year <- ('2002')
Eastern_Sambo_Shallow_2002_comm_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2003 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2003.xls")

Eastern_Sambo_Shallow_2003_herb <- merge(Eastern_Sambo_Shallow_2003, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2003_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2003_herb_biomass$Year <- ('2003')
Eastern_Sambo_Shallow_2003_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2003_comm <- merge(Eastern_Sambo_Shallow_2003, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2003_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2003_comm_biomass$Year <- ('2003')
Eastern_Sambo_Shallow_2003_comm_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2004 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2004.xls")

Eastern_Sambo_Shallow_2004_herb <- merge(Eastern_Sambo_Shallow_2004, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2004_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2004_herb_biomass$Year <- ('2004')
Eastern_Sambo_Shallow_2004_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2004_comm <- merge(Eastern_Sambo_Shallow_2004, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2004_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2004_comm_biomass$Year <- ('2004')
Eastern_Sambo_Shallow_2004_comm_biomass$Reef <- ('Eastern Sambo Shallow')

Eastern_Sambo_Shallow_2005 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2005.xls")

Eastern_Sambo_Shallow_2005_herb <- merge(Eastern_Sambo_Shallow_2005, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2005_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2005_herb_biomass$Year <- ('2005')
Eastern_Sambo_Shallow_2005_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2005_comm <- merge(Eastern_Sambo_Shallow_2005, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2005_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2005_comm_biomass$Year <- ('2005')
Eastern_Sambo_Shallow_2005_comm_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2006 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2006.xls")

Eastern_Sambo_Shallow_2006_herb <- merge(Eastern_Sambo_Shallow_2006, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2006_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2006_herb_biomass$Year <- ('2006')
Eastern_Sambo_Shallow_2006_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2006_comm <- merge(Eastern_Sambo_Shallow_2006, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2006_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2006_comm_biomass$Year <- ('2006')
Eastern_Sambo_Shallow_2006_comm_biomass$Reef <- ('Eastern Sambo Shallow')

Eastern_Sambo_Shallow_2007 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2007.xls")

Eastern_Sambo_Shallow_2007_herb <- merge(Eastern_Sambo_Shallow_2007, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2007_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2007_herb_biomass$Year <- ('2007')
Eastern_Sambo_Shallow_2007_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2007_comm <- merge(Eastern_Sambo_Shallow_2007, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2007_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2007_comm_biomass$Year <- ('2007')
Eastern_Sambo_Shallow_2007_comm_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2008 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2008.xls")

Eastern_Sambo_Shallow_2008_herb <- merge(Eastern_Sambo_Shallow_2008, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2008_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2008_herb_biomass$Year <- ('2008')
Eastern_Sambo_Shallow_2008_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2008_comm <- merge(Eastern_Sambo_Shallow_2008, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2008_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2008_comm_biomass$Year <- ('2008')
Eastern_Sambo_Shallow_2008_comm_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2009 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2009.xls")

Eastern_Sambo_Shallow_2009_herb <- merge(Eastern_Sambo_Shallow_2009, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2009_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2009_herb_biomass$Year <- ('2009')
Eastern_Sambo_Shallow_2009_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2009_comm <- merge(Eastern_Sambo_Shallow_2009, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2009_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2009_comm_biomass$Year <- ('2009')
Eastern_Sambo_Shallow_2009_comm_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2010 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2010.xls")

Eastern_Sambo_Shallow_2010_herb <- merge(Eastern_Sambo_Shallow_2010, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2010_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2010_herb_biomass$Year <- ('2010')
Eastern_Sambo_Shallow_2010_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2010_comm <- merge(Eastern_Sambo_Shallow_2010, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2010_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2010_comm_biomass$Year <- ('2010')
Eastern_Sambo_Shallow_2010_comm_biomass$Reef <- ('Eastern Sambo Shallow')

Eastern_Sambo_Shallow_2011 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2011.xls")

Eastern_Sambo_Shallow_2011_herb <- merge(Eastern_Sambo_Shallow_2011, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2011_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2011_herb_biomass$Year <- ('2011')
Eastern_Sambo_Shallow_2011_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2011_comm <- merge(Eastern_Sambo_Shallow_2011, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2011_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2011_comm_biomass$Year <- ('2011')
Eastern_Sambo_Shallow_2011_comm_biomass$Reef <- ('Eastern Sambo Shallow')



Eastern_Sambo_Shallow_2012 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2012.xls")

Eastern_Sambo_Shallow_2012_herb <- merge(Eastern_Sambo_Shallow_2012, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2012_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2012_herb_biomass$Year <- ('2012')
Eastern_Sambo_Shallow_2012_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2012_comm <- merge(Eastern_Sambo_Shallow_2012, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2012_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2012_comm_biomass$Year <- ('2012')
Eastern_Sambo_Shallow_2012_comm_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2014 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2014.xls")

Eastern_Sambo_Shallow_2014_herb <- merge(Eastern_Sambo_Shallow_2014, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2014_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2014_herb_biomass$Year <- ('2014')
Eastern_Sambo_Shallow_2014_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2014_comm <- merge(Eastern_Sambo_Shallow_2014, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2014_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2014_comm_biomass$Year <- ('2014')
Eastern_Sambo_Shallow_2014_comm_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2016 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2016.xls")

Eastern_Sambo_Shallow_2016_herb <- merge(Eastern_Sambo_Shallow_2016, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2016_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2016_herb_biomass$Year <- ('2016')
Eastern_Sambo_Shallow_2016_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2016_comm <- merge(Eastern_Sambo_Shallow_2016, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2016_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2016_comm_biomass$Year <- ('2016')
Eastern_Sambo_Shallow_2016_comm_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2018 <- import("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2018.xls")

Eastern_Sambo_Shallow_2018_herb <- merge(Eastern_Sambo_Shallow_2018, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2018_herb_biomass <- summarise_at(Eastern_Sambo_Shallow_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2018_herb_biomass$Year <- ('2018')
Eastern_Sambo_Shallow_2018_herb_biomass$Reef <- ('Eastern Sambo Shallow')


Eastern_Sambo_Shallow_2018_comm <- merge(Eastern_Sambo_Shallow_2018, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2018_comm_biomass <- summarise_at(Eastern_Sambo_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Eastern_Sambo_Shallow_2018_comm_biomass$Year <- ('2018')
Eastern_Sambo_Shallow_2018_comm_biomass$Reef <- ('Eastern Sambo Shallow')



### Combine all years together for herbivorous and commercial seperately



Eastern_Sambo_Shallow_herb_1 <- rbind(Eastern_Sambo_Shallow_1999_herb_biomass,Eastern_Sambo_Shallow_2000_herb_biomass)
Eastern_Sambo_Shallow_herb_2 <- rbind(Eastern_Sambo_Shallow_herb_1,Eastern_Sambo_Shallow_2001_herb_biomass)
Eastern_Sambo_Shallow_herb_3 <- rbind(Eastern_Sambo_Shallow_herb_2,Eastern_Sambo_Shallow_2002_herb_biomass)
Eastern_Sambo_Shallow_herb_4 <- rbind(Eastern_Sambo_Shallow_herb_3,Eastern_Sambo_Shallow_2003_herb_biomass)
Eastern_Sambo_Shallow_herb_5 <- rbind(Eastern_Sambo_Shallow_herb_4,Eastern_Sambo_Shallow_2004_herb_biomass)
Eastern_Sambo_Shallow_herb_6 <- rbind(Eastern_Sambo_Shallow_herb_5,Eastern_Sambo_Shallow_2005_herb_biomass)
Eastern_Sambo_Shallow_herb_7 <- rbind(Eastern_Sambo_Shallow_herb_6,Eastern_Sambo_Shallow_2006_herb_biomass)
Eastern_Sambo_Shallow_herb_8 <- rbind(Eastern_Sambo_Shallow_herb_7,Eastern_Sambo_Shallow_2007_herb_biomass)
Eastern_Sambo_Shallow_herb_9 <- rbind(Eastern_Sambo_Shallow_herb_8,Eastern_Sambo_Shallow_2008_herb_biomass)
Eastern_Sambo_Shallow_herb_10 <- rbind(Eastern_Sambo_Shallow_herb_9,Eastern_Sambo_Shallow_2009_herb_biomass)
Eastern_Sambo_Shallow_herb_11<- rbind(Eastern_Sambo_Shallow_herb_10,Eastern_Sambo_Shallow_2010_herb_biomass)
Eastern_Sambo_Shallow_herb_12 <- rbind(Eastern_Sambo_Shallow_herb_11,Eastern_Sambo_Shallow_2011_herb_biomass)
Eastern_Sambo_Shallow_herb_13 <- rbind(Eastern_Sambo_Shallow_herb_12,Eastern_Sambo_Shallow_2012_herb_biomass)
Eastern_Sambo_Shallow_herb_14 <- rbind(Eastern_Sambo_Shallow_herb_13,Eastern_Sambo_Shallow_2014_herb_biomass)
Eastern_Sambo_Shallow_herb_15 <- rbind(Eastern_Sambo_Shallow_herb_14,Eastern_Sambo_Shallow_2016_herb_biomass)
Eastern_Sambo_Shallow_herb_biomass_data_combined <- rbind(Eastern_Sambo_Shallow_herb_15,Eastern_Sambo_Shallow_2018_herb_biomass)



Eastern_Sambo_Shallow_comm_1 <- rbind(Eastern_Sambo_Shallow_1999_comm_biomass,Eastern_Sambo_Shallow_2000_comm_biomass)
Eastern_Sambo_Shallow_comm_2 <- rbind(Eastern_Sambo_Shallow_comm_1,Eastern_Sambo_Shallow_2001_comm_biomass)
Eastern_Sambo_Shallow_comm_3 <- rbind(Eastern_Sambo_Shallow_comm_2,Eastern_Sambo_Shallow_2002_comm_biomass)
Eastern_Sambo_Shallow_comm_4 <- rbind(Eastern_Sambo_Shallow_comm_3,Eastern_Sambo_Shallow_2003_comm_biomass)
Eastern_Sambo_Shallow_comm_5 <- rbind(Eastern_Sambo_Shallow_comm_4,Eastern_Sambo_Shallow_2004_comm_biomass)
Eastern_Sambo_Shallow_comm_6 <- rbind(Eastern_Sambo_Shallow_comm_5,Eastern_Sambo_Shallow_2005_comm_biomass)
Eastern_Sambo_Shallow_comm_7 <- rbind(Eastern_Sambo_Shallow_comm_6,Eastern_Sambo_Shallow_2006_comm_biomass)
Eastern_Sambo_Shallow_comm_8 <- rbind(Eastern_Sambo_Shallow_comm_7,Eastern_Sambo_Shallow_2007_comm_biomass)
Eastern_Sambo_Shallow_comm_9 <- rbind(Eastern_Sambo_Shallow_comm_8,Eastern_Sambo_Shallow_2008_comm_biomass)
Eastern_Sambo_Shallow_comm_10 <- rbind(Eastern_Sambo_Shallow_comm_9,Eastern_Sambo_Shallow_2009_comm_biomass)
Eastern_Sambo_Shallow_comm_11<- rbind(Eastern_Sambo_Shallow_comm_10,Eastern_Sambo_Shallow_2010_comm_biomass)
Eastern_Sambo_Shallow_comm_12 <- rbind(Eastern_Sambo_Shallow_comm_11,Eastern_Sambo_Shallow_2011_comm_biomass)
Eastern_Sambo_Shallow_comm_13 <- rbind(Eastern_Sambo_Shallow_comm_12,Eastern_Sambo_Shallow_2012_comm_biomass)
Eastern_Sambo_Shallow_comm_14 <- rbind(Eastern_Sambo_Shallow_comm_13,Eastern_Sambo_Shallow_2014_comm_biomass)
Eastern_Sambo_Shallow_comm_15 <- rbind(Eastern_Sambo_Shallow_comm_14,Eastern_Sambo_Shallow_2016_comm_biomass)
Eastern_Sambo_Shallow_comm_biomass_data_combined <- rbind(Eastern_Sambo_Shallow_comm_15,Eastern_Sambo_Shallow_2018_comm_biomass)



export(Eastern_Sambo_Shallow_herb_biomass_data_combined, "Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_herbivorous_biomass.csv")
export(Eastern_Sambo_Shallow_comm_biomass_data_combined, "Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_commercial_biomass.csv")



# Jaap Reef

Jaap_Reef_1999 <- import("Jaap_Reef/data/Jaap_Reef_1999.xls")


Jaap_Reef_1999_herb <- merge(Jaap_Reef_1999, Herb, by = c("SPECIES_CD"))
Jaap_Reef_1999_herb_biomass <- summarise_at(Jaap_Reef_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_1999_herb_biomass$Year <- ('1999')
Jaap_Reef_1999_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_1999_comm <- merge(Jaap_Reef_1999, Comm, by = c("SPECIES_CD"))
Jaap_Reef_1999_comm_biomass <- summarise_at(Jaap_Reef_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_1999_comm_biomass$Year <- ('1999')
Jaap_Reef_1999_comm_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2000 <- import("Jaap_Reef/data/Jaap_Reef_2000.xls")

Jaap_Reef_2000_herb <- merge(Jaap_Reef_2000, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2000_herb_biomass <- summarise_at(Jaap_Reef_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2000_herb_biomass$Year <- ('2000')
Jaap_Reef_2000_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2000_comm <- merge(Jaap_Reef_2000, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2000_comm_biomass <- summarise_at(Jaap_Reef_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2000_comm_biomass$Year <- ('2000')
Jaap_Reef_2000_comm_biomass$Reef <- ('Jaap Reef')

Jaap_Reef_2001 <- import("Jaap_Reef/data/Jaap_Reef_2001.xls")

Jaap_Reef_2001_herb <- merge(Jaap_Reef_2001, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2001_herb_biomass <- summarise_at(Jaap_Reef_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2001_herb_biomass$Year <- ('2001')
Jaap_Reef_2001_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2001_comm <- merge(Jaap_Reef_2001, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2001_comm_biomass <- summarise_at(Jaap_Reef_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2001_comm_biomass$Year <- ('2001')
Jaap_Reef_2001_comm_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2002 <- import("Jaap_Reef/data/Jaap_Reef_2002.xls")

Jaap_Reef_2002_herb <- merge(Jaap_Reef_2002, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2002_herb_biomass <- summarise_at(Jaap_Reef_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2002_herb_biomass$Year <- ('2002')
Jaap_Reef_2002_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2002_comm <- merge(Jaap_Reef_2002, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2002_comm_biomass <- summarise_at(Jaap_Reef_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2002_comm_biomass$Year <- ('2002')
Jaap_Reef_2002_comm_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2003 <- import("Jaap_Reef/data/Jaap_Reef_2003.xls")

Jaap_Reef_2003_herb <- merge(Jaap_Reef_2003, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2003_herb_biomass <- summarise_at(Jaap_Reef_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2003_herb_biomass$Year <- ('2003')
Jaap_Reef_2003_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2003_comm <- merge(Jaap_Reef_2003, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2003_comm_biomass <- summarise_at(Jaap_Reef_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2003_comm_biomass$Year <- ('2003')
Jaap_Reef_2003_comm_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2004 <- import("Jaap_Reef/data/Jaap_Reef_2004.xls")

Jaap_Reef_2004_herb <- merge(Jaap_Reef_2004, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2004_herb_biomass <- summarise_at(Jaap_Reef_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2004_herb_biomass$Year <- ('2004')
Jaap_Reef_2004_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2004_comm <- merge(Jaap_Reef_2004, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2004_comm_biomass <- summarise_at(Jaap_Reef_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2004_comm_biomass$Year <- ('2004')
Jaap_Reef_2004_comm_biomass$Reef <- ('Jaap Reef')

Jaap_Reef_2005 <- import("Jaap_Reef/data/Jaap_Reef_2005.xls")

Jaap_Reef_2005_herb <- merge(Jaap_Reef_2005, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2005_herb_biomass <- summarise_at(Jaap_Reef_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2005_herb_biomass$Year <- ('2005')
Jaap_Reef_2005_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2005_comm <- merge(Jaap_Reef_2005, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2005_comm_biomass <- summarise_at(Jaap_Reef_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2005_comm_biomass$Year <- ('2005')
Jaap_Reef_2005_comm_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2006 <- import("Jaap_Reef/data/Jaap_Reef_2006.xls")

Jaap_Reef_2006_herb <- merge(Jaap_Reef_2006, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2006_herb_biomass <- summarise_at(Jaap_Reef_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2006_herb_biomass$Year <- ('2006')
Jaap_Reef_2006_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2006_comm <- merge(Jaap_Reef_2006, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2006_comm_biomass <- summarise_at(Jaap_Reef_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2006_comm_biomass$Year <- ('2006')
Jaap_Reef_2006_comm_biomass$Reef <- ('Jaap Reef')

Jaap_Reef_2007 <- import("Jaap_Reef/data/Jaap_Reef_2007.xls")

Jaap_Reef_2007_herb <- merge(Jaap_Reef_2007, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2007_herb_biomass <- summarise_at(Jaap_Reef_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2007_herb_biomass$Year <- ('2007')
Jaap_Reef_2007_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2007_comm <- merge(Jaap_Reef_2007, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2007_comm_biomass <- summarise_at(Jaap_Reef_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2007_comm_biomass$Year <- ('2007')
Jaap_Reef_2007_comm_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2008 <- import("Jaap_Reef/data/Jaap_Reef_2008.xls")

Jaap_Reef_2008_herb <- merge(Jaap_Reef_2008, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2008_herb_biomass <- summarise_at(Jaap_Reef_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2008_herb_biomass$Year <- ('2008')
Jaap_Reef_2008_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2008_comm <- merge(Jaap_Reef_2008, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2008_comm_biomass <- summarise_at(Jaap_Reef_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2008_comm_biomass$Year <- ('2008')
Jaap_Reef_2008_comm_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2009 <- import("Jaap_Reef/data/Jaap_Reef_2009.xls")

Jaap_Reef_2009_herb <- merge(Jaap_Reef_2009, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2009_herb_biomass <- summarise_at(Jaap_Reef_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2009_herb_biomass$Year <- ('2009')
Jaap_Reef_2009_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2009_comm <- merge(Jaap_Reef_2009, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2009_comm_biomass <- summarise_at(Jaap_Reef_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2009_comm_biomass$Year <- ('2009')
Jaap_Reef_2009_comm_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2010 <- import("Jaap_Reef/data/Jaap_Reef_2010.xls")

Jaap_Reef_2010_herb <- merge(Jaap_Reef_2010, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2010_herb_biomass <- summarise_at(Jaap_Reef_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2010_herb_biomass$Year <- ('2010')
Jaap_Reef_2010_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2010_comm <- merge(Jaap_Reef_2010, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2010_comm_biomass <- summarise_at(Jaap_Reef_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2010_comm_biomass$Year <- ('2010')
Jaap_Reef_2010_comm_biomass$Reef <- ('Jaap Reef')

Jaap_Reef_2011 <- import("Jaap_Reef/data/Jaap_Reef_2011.xls")

Jaap_Reef_2011_herb <- merge(Jaap_Reef_2011, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2011_herb_biomass <- summarise_at(Jaap_Reef_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2011_herb_biomass$Year <- ('2011')
Jaap_Reef_2011_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2011_comm <- merge(Jaap_Reef_2011, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2011_comm_biomass <- summarise_at(Jaap_Reef_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2011_comm_biomass$Year <- ('2011')
Jaap_Reef_2011_comm_biomass$Reef <- ('Jaap Reef')



Jaap_Reef_2012 <- import("Jaap_Reef/data/Jaap_Reef_2012.xls")

Jaap_Reef_2012_herb <- merge(Jaap_Reef_2012, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2012_herb_biomass <- summarise_at(Jaap_Reef_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2012_herb_biomass$Year <- ('2012')
Jaap_Reef_2012_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2012_comm <- merge(Jaap_Reef_2012, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2012_comm_biomass <- summarise_at(Jaap_Reef_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2012_comm_biomass$Year <- ('2012')
Jaap_Reef_2012_comm_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2014 <- import("Jaap_Reef/data/Jaap_Reef_2014.xls")

Jaap_Reef_2014_herb <- merge(Jaap_Reef_2014, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2014_herb_biomass <- summarise_at(Jaap_Reef_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2014_herb_biomass$Year <- ('2014')
Jaap_Reef_2014_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2014_comm <- merge(Jaap_Reef_2014, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2014_comm_biomass <- summarise_at(Jaap_Reef_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2014_comm_biomass$Year <- ('2014')
Jaap_Reef_2014_comm_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2016 <- import("Jaap_Reef/data/Jaap_Reef_2016.xls")

Jaap_Reef_2016_herb <- merge(Jaap_Reef_2016, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2016_herb_biomass <- summarise_at(Jaap_Reef_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2016_herb_biomass$Year <- ('2016')
Jaap_Reef_2016_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2016_comm <- merge(Jaap_Reef_2016, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2016_comm_biomass <- summarise_at(Jaap_Reef_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2016_comm_biomass$Year <- ('2016')
Jaap_Reef_2016_comm_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2018 <- import("Jaap_Reef/data/Jaap_Reef_2018.xls")

Jaap_Reef_2018_herb <- merge(Jaap_Reef_2018, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2018_herb_biomass <- summarise_at(Jaap_Reef_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2018_herb_biomass$Year <- ('2018')
Jaap_Reef_2018_herb_biomass$Reef <- ('Jaap Reef')


Jaap_Reef_2018_comm <- merge(Jaap_Reef_2018, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2018_comm_biomass <- summarise_at(Jaap_Reef_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Jaap_Reef_2018_comm_biomass$Year <- ('2018')
Jaap_Reef_2018_comm_biomass$Reef <- ('Jaap Reef')



### Combine all years together for herbivorous and commercial seperately



Jaap_Reef_herb_1 <- rbind(Jaap_Reef_1999_herb_biomass,Jaap_Reef_2000_herb_biomass)
Jaap_Reef_herb_2 <- rbind(Jaap_Reef_herb_1,Jaap_Reef_2001_herb_biomass)
Jaap_Reef_herb_3 <- rbind(Jaap_Reef_herb_2,Jaap_Reef_2002_herb_biomass)
Jaap_Reef_herb_4 <- rbind(Jaap_Reef_herb_3,Jaap_Reef_2003_herb_biomass)
Jaap_Reef_herb_5 <- rbind(Jaap_Reef_herb_4,Jaap_Reef_2004_herb_biomass)
Jaap_Reef_herb_6 <- rbind(Jaap_Reef_herb_5,Jaap_Reef_2005_herb_biomass)
Jaap_Reef_herb_7 <- rbind(Jaap_Reef_herb_6,Jaap_Reef_2006_herb_biomass)
Jaap_Reef_herb_8 <- rbind(Jaap_Reef_herb_7,Jaap_Reef_2007_herb_biomass)
Jaap_Reef_herb_9 <- rbind(Jaap_Reef_herb_8,Jaap_Reef_2008_herb_biomass)
Jaap_Reef_herb_10 <- rbind(Jaap_Reef_herb_9,Jaap_Reef_2009_herb_biomass)
Jaap_Reef_herb_11<- rbind(Jaap_Reef_herb_10,Jaap_Reef_2010_herb_biomass)
Jaap_Reef_herb_12 <- rbind(Jaap_Reef_herb_11,Jaap_Reef_2011_herb_biomass)
Jaap_Reef_herb_13 <- rbind(Jaap_Reef_herb_12,Jaap_Reef_2012_herb_biomass)
Jaap_Reef_herb_14 <- rbind(Jaap_Reef_herb_13,Jaap_Reef_2014_herb_biomass)
Jaap_Reef_herb_15 <- rbind(Jaap_Reef_herb_14,Jaap_Reef_2016_herb_biomass)
Jaap_Reef_herb_biomass_data_combined <- rbind(Jaap_Reef_herb_15,Jaap_Reef_2018_herb_biomass)



Jaap_Reef_comm_1 <- rbind(Jaap_Reef_1999_comm_biomass,Jaap_Reef_2000_comm_biomass)
Jaap_Reef_comm_2 <- rbind(Jaap_Reef_comm_1,Jaap_Reef_2001_comm_biomass)
Jaap_Reef_comm_3 <- rbind(Jaap_Reef_comm_2,Jaap_Reef_2002_comm_biomass)
Jaap_Reef_comm_4 <- rbind(Jaap_Reef_comm_3,Jaap_Reef_2003_comm_biomass)
Jaap_Reef_comm_5 <- rbind(Jaap_Reef_comm_4,Jaap_Reef_2004_comm_biomass)
Jaap_Reef_comm_6 <- rbind(Jaap_Reef_comm_5,Jaap_Reef_2005_comm_biomass)
Jaap_Reef_comm_7 <- rbind(Jaap_Reef_comm_6,Jaap_Reef_2006_comm_biomass)
Jaap_Reef_comm_8 <- rbind(Jaap_Reef_comm_7,Jaap_Reef_2007_comm_biomass)
Jaap_Reef_comm_9 <- rbind(Jaap_Reef_comm_8,Jaap_Reef_2008_comm_biomass)
Jaap_Reef_comm_10 <- rbind(Jaap_Reef_comm_9,Jaap_Reef_2009_comm_biomass)
Jaap_Reef_comm_11<- rbind(Jaap_Reef_comm_10,Jaap_Reef_2010_comm_biomass)
Jaap_Reef_comm_12 <- rbind(Jaap_Reef_comm_11,Jaap_Reef_2011_comm_biomass)
Jaap_Reef_comm_13 <- rbind(Jaap_Reef_comm_12,Jaap_Reef_2012_comm_biomass)
Jaap_Reef_comm_14 <- rbind(Jaap_Reef_comm_13,Jaap_Reef_2014_comm_biomass)
Jaap_Reef_comm_15 <- rbind(Jaap_Reef_comm_14,Jaap_Reef_2016_comm_biomass)
Jaap_Reef_comm_biomass_data_combined <- rbind(Jaap_Reef_comm_15,Jaap_Reef_2018_comm_biomass)



export(Jaap_Reef_herb_biomass_data_combined, "Jaap_Reef/data/Jaap_Reef_herbivorous_biomass.csv")
export(Jaap_Reef_comm_biomass_data_combined, "Jaap_Reef/data/Jaap_Reef_commercial_biomass.csv")




#Looe Key Deep

Looe_Key_Deep_1999 <- import("Looe_Key_Deep/data/Looe_Key_Deep_1999.xls")


Looe_Key_Deep_1999_herb <- merge(Looe_Key_Deep_1999, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_1999_herb_biomass <- summarise_at(Looe_Key_Deep_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_1999_herb_biomass$Year <- ('1999')
Looe_Key_Deep_1999_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_1999_comm <- merge(Looe_Key_Deep_1999, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_1999_comm_biomass <- summarise_at(Looe_Key_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_1999_comm_biomass$Year <- ('1999')
Looe_Key_Deep_1999_comm_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2000 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2000.xls")

Looe_Key_Deep_2000_herb <- merge(Looe_Key_Deep_2000, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2000_herb_biomass <- summarise_at(Looe_Key_Deep_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2000_herb_biomass$Year <- ('2000')
Looe_Key_Deep_2000_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2000_comm <- merge(Looe_Key_Deep_2000, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2000_comm_biomass <- summarise_at(Looe_Key_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2000_comm_biomass$Year <- ('2000')
Looe_Key_Deep_2000_comm_biomass$Reef <- ('Looe Key Deep')

Looe_Key_Deep_2001 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2001.xls")

Looe_Key_Deep_2001_herb <- merge(Looe_Key_Deep_2001, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2001_herb_biomass <- summarise_at(Looe_Key_Deep_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2001_herb_biomass$Year <- ('2001')
Looe_Key_Deep_2001_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2001_comm <- merge(Looe_Key_Deep_2001, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2001_comm_biomass <- summarise_at(Looe_Key_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2001_comm_biomass$Year <- ('2001')
Looe_Key_Deep_2001_comm_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2002 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2002.xls")

Looe_Key_Deep_2002_herb <- merge(Looe_Key_Deep_2002, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2002_herb_biomass <- summarise_at(Looe_Key_Deep_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2002_herb_biomass$Year <- ('2002')
Looe_Key_Deep_2002_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2002_comm <- merge(Looe_Key_Deep_2002, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2002_comm_biomass <- summarise_at(Looe_Key_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2002_comm_biomass$Year <- ('2002')
Looe_Key_Deep_2002_comm_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2003 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2003.xls")

Looe_Key_Deep_2003_herb <- merge(Looe_Key_Deep_2003, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2003_herb_biomass <- summarise_at(Looe_Key_Deep_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2003_herb_biomass$Year <- ('2003')
Looe_Key_Deep_2003_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2003_comm <- merge(Looe_Key_Deep_2003, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2003_comm_biomass <- summarise_at(Looe_Key_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2003_comm_biomass$Year <- ('2003')
Looe_Key_Deep_2003_comm_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2004 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2004.xls")

Looe_Key_Deep_2004_herb <- merge(Looe_Key_Deep_2004, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2004_herb_biomass <- summarise_at(Looe_Key_Deep_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2004_herb_biomass$Year <- ('2004')
Looe_Key_Deep_2004_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2004_comm <- merge(Looe_Key_Deep_2004, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2004_comm_biomass <- summarise_at(Looe_Key_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2004_comm_biomass$Year <- ('2004')
Looe_Key_Deep_2004_comm_biomass$Reef <- ('Looe Key Deep')

Looe_Key_Deep_2005 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2005.xls")

Looe_Key_Deep_2005_herb <- merge(Looe_Key_Deep_2005, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2005_herb_biomass <- summarise_at(Looe_Key_Deep_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2005_herb_biomass$Year <- ('2005')
Looe_Key_Deep_2005_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2005_comm <- merge(Looe_Key_Deep_2005, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2005_comm_biomass <- summarise_at(Looe_Key_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2005_comm_biomass$Year <- ('2005')
Looe_Key_Deep_2005_comm_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2006 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2006.xls")

Looe_Key_Deep_2006_herb <- merge(Looe_Key_Deep_2006, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2006_herb_biomass <- summarise_at(Looe_Key_Deep_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2006_herb_biomass$Year <- ('2006')
Looe_Key_Deep_2006_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2006_comm <- merge(Looe_Key_Deep_2006, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2006_comm_biomass <- summarise_at(Looe_Key_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2006_comm_biomass$Year <- ('2006')
Looe_Key_Deep_2006_comm_biomass$Reef <- ('Looe Key Deep')

Looe_Key_Deep_2007 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2007.xls")

Looe_Key_Deep_2007_herb <- merge(Looe_Key_Deep_2007, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2007_herb_biomass <- summarise_at(Looe_Key_Deep_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2007_herb_biomass$Year <- ('2007')
Looe_Key_Deep_2007_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2007_comm <- merge(Looe_Key_Deep_2007, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2007_comm_biomass <- summarise_at(Looe_Key_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2007_comm_biomass$Year <- ('2007')
Looe_Key_Deep_2007_comm_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2008 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2008.xls")

Looe_Key_Deep_2008_herb <- merge(Looe_Key_Deep_2008, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2008_herb_biomass <- summarise_at(Looe_Key_Deep_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2008_herb_biomass$Year <- ('2008')
Looe_Key_Deep_2008_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2008_comm <- merge(Looe_Key_Deep_2008, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2008_comm_biomass <- summarise_at(Looe_Key_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2008_comm_biomass$Year <- ('2008')
Looe_Key_Deep_2008_comm_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2009 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2009.xls")

Looe_Key_Deep_2009_herb <- merge(Looe_Key_Deep_2009, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2009_herb_biomass <- summarise_at(Looe_Key_Deep_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2009_herb_biomass$Year <- ('2009')
Looe_Key_Deep_2009_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2009_comm <- merge(Looe_Key_Deep_2009, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2009_comm_biomass <- summarise_at(Looe_Key_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2009_comm_biomass$Year <- ('2009')
Looe_Key_Deep_2009_comm_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2010 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2010.xls")

Looe_Key_Deep_2010_herb <- merge(Looe_Key_Deep_2010, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2010_herb_biomass <- summarise_at(Looe_Key_Deep_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2010_herb_biomass$Year <- ('2010')
Looe_Key_Deep_2010_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2010_comm <- merge(Looe_Key_Deep_2010, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2010_comm_biomass <- summarise_at(Looe_Key_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2010_comm_biomass$Year <- ('2010')
Looe_Key_Deep_2010_comm_biomass$Reef <- ('Looe Key Deep')

Looe_Key_Deep_2011 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2011.xls")

Looe_Key_Deep_2011_herb <- merge(Looe_Key_Deep_2011, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2011_herb_biomass <- summarise_at(Looe_Key_Deep_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2011_herb_biomass$Year <- ('2011')
Looe_Key_Deep_2011_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2011_comm <- merge(Looe_Key_Deep_2011, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2011_comm_biomass <- summarise_at(Looe_Key_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2011_comm_biomass$Year <- ('2011')
Looe_Key_Deep_2011_comm_biomass$Reef <- ('Looe Key Deep')



Looe_Key_Deep_2012 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2012.xls")

Looe_Key_Deep_2012_herb <- merge(Looe_Key_Deep_2012, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2012_herb_biomass <- summarise_at(Looe_Key_Deep_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2012_herb_biomass$Year <- ('2012')
Looe_Key_Deep_2012_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2012_comm <- merge(Looe_Key_Deep_2012, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2012_comm_biomass <- summarise_at(Looe_Key_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2012_comm_biomass$Year <- ('2012')
Looe_Key_Deep_2012_comm_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2014 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2014.xls")

Looe_Key_Deep_2014_herb <- merge(Looe_Key_Deep_2014, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2014_herb_biomass <- summarise_at(Looe_Key_Deep_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2014_herb_biomass$Year <- ('2014')
Looe_Key_Deep_2014_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2014_comm <- merge(Looe_Key_Deep_2014, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2014_comm_biomass <- summarise_at(Looe_Key_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2014_comm_biomass$Year <- ('2014')
Looe_Key_Deep_2014_comm_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2016 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2016.xls")

Looe_Key_Deep_2016_herb <- merge(Looe_Key_Deep_2016, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2016_herb_biomass <- summarise_at(Looe_Key_Deep_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2016_herb_biomass$Year <- ('2016')
Looe_Key_Deep_2016_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2016_comm <- merge(Looe_Key_Deep_2016, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2016_comm_biomass <- summarise_at(Looe_Key_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2016_comm_biomass$Year <- ('2016')
Looe_Key_Deep_2016_comm_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2018 <- import("Looe_Key_Deep/data/Looe_Key_Deep_2018.xls")

Looe_Key_Deep_2018_herb <- merge(Looe_Key_Deep_2018, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2018_herb_biomass <- summarise_at(Looe_Key_Deep_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2018_herb_biomass$Year <- ('2018')
Looe_Key_Deep_2018_herb_biomass$Reef <- ('Looe Key Deep')


Looe_Key_Deep_2018_comm <- merge(Looe_Key_Deep_2018, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2018_comm_biomass <- summarise_at(Looe_Key_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Deep_2018_comm_biomass$Year <- ('2018')
Looe_Key_Deep_2018_comm_biomass$Reef <- ('Looe Key Deep')



### Combine all years together for herbivorous and commercial seperately



Looe_Key_Deep_herb_1 <- rbind(Looe_Key_Deep_1999_herb_biomass,Looe_Key_Deep_2000_herb_biomass)
Looe_Key_Deep_herb_2 <- rbind(Looe_Key_Deep_herb_1,Looe_Key_Deep_2001_herb_biomass)
Looe_Key_Deep_herb_3 <- rbind(Looe_Key_Deep_herb_2,Looe_Key_Deep_2002_herb_biomass)
Looe_Key_Deep_herb_4 <- rbind(Looe_Key_Deep_herb_3,Looe_Key_Deep_2003_herb_biomass)
Looe_Key_Deep_herb_5 <- rbind(Looe_Key_Deep_herb_4,Looe_Key_Deep_2004_herb_biomass)
Looe_Key_Deep_herb_6 <- rbind(Looe_Key_Deep_herb_5,Looe_Key_Deep_2005_herb_biomass)
Looe_Key_Deep_herb_7 <- rbind(Looe_Key_Deep_herb_6,Looe_Key_Deep_2006_herb_biomass)
Looe_Key_Deep_herb_8 <- rbind(Looe_Key_Deep_herb_7,Looe_Key_Deep_2007_herb_biomass)
Looe_Key_Deep_herb_9 <- rbind(Looe_Key_Deep_herb_8,Looe_Key_Deep_2008_herb_biomass)
Looe_Key_Deep_herb_10 <- rbind(Looe_Key_Deep_herb_9,Looe_Key_Deep_2009_herb_biomass)
Looe_Key_Deep_herb_11<- rbind(Looe_Key_Deep_herb_10,Looe_Key_Deep_2010_herb_biomass)
Looe_Key_Deep_herb_12 <- rbind(Looe_Key_Deep_herb_11,Looe_Key_Deep_2011_herb_biomass)
Looe_Key_Deep_herb_13 <- rbind(Looe_Key_Deep_herb_12,Looe_Key_Deep_2012_herb_biomass)
Looe_Key_Deep_herb_14 <- rbind(Looe_Key_Deep_herb_13,Looe_Key_Deep_2014_herb_biomass)
Looe_Key_Deep_herb_15 <- rbind(Looe_Key_Deep_herb_14,Looe_Key_Deep_2016_herb_biomass)
Looe_Key_Deep_herb_biomass_data_combined <- rbind(Looe_Key_Deep_herb_15,Looe_Key_Deep_2018_herb_biomass)



Looe_Key_Deep_comm_1 <- rbind(Looe_Key_Deep_1999_comm_biomass,Looe_Key_Deep_2000_comm_biomass)
Looe_Key_Deep_comm_2 <- rbind(Looe_Key_Deep_comm_1,Looe_Key_Deep_2001_comm_biomass)
Looe_Key_Deep_comm_3 <- rbind(Looe_Key_Deep_comm_2,Looe_Key_Deep_2002_comm_biomass)
Looe_Key_Deep_comm_4 <- rbind(Looe_Key_Deep_comm_3,Looe_Key_Deep_2003_comm_biomass)
Looe_Key_Deep_comm_5 <- rbind(Looe_Key_Deep_comm_4,Looe_Key_Deep_2004_comm_biomass)
Looe_Key_Deep_comm_6 <- rbind(Looe_Key_Deep_comm_5,Looe_Key_Deep_2005_comm_biomass)
Looe_Key_Deep_comm_7 <- rbind(Looe_Key_Deep_comm_6,Looe_Key_Deep_2006_comm_biomass)
Looe_Key_Deep_comm_8 <- rbind(Looe_Key_Deep_comm_7,Looe_Key_Deep_2007_comm_biomass)
Looe_Key_Deep_comm_9 <- rbind(Looe_Key_Deep_comm_8,Looe_Key_Deep_2008_comm_biomass)
Looe_Key_Deep_comm_10 <- rbind(Looe_Key_Deep_comm_9,Looe_Key_Deep_2009_comm_biomass)
Looe_Key_Deep_comm_11<- rbind(Looe_Key_Deep_comm_10,Looe_Key_Deep_2010_comm_biomass)
Looe_Key_Deep_comm_12 <- rbind(Looe_Key_Deep_comm_11,Looe_Key_Deep_2011_comm_biomass)
Looe_Key_Deep_comm_13 <- rbind(Looe_Key_Deep_comm_12,Looe_Key_Deep_2012_comm_biomass)
Looe_Key_Deep_comm_14 <- rbind(Looe_Key_Deep_comm_13,Looe_Key_Deep_2014_comm_biomass)
Looe_Key_Deep_comm_15 <- rbind(Looe_Key_Deep_comm_14,Looe_Key_Deep_2016_comm_biomass)
Looe_Key_Deep_comm_biomass_data_combined <- rbind(Looe_Key_Deep_comm_15,Looe_Key_Deep_2018_comm_biomass)



export(Looe_Key_Deep_herb_biomass_data_combined, "Looe_Key_Deep/data/Looe_Key_Deep_herbivorous_biomass.csv")
export(Looe_Key_Deep_comm_biomass_data_combined, "Looe_Key_Deep/data/Looe_Key_Deep_commercial_biomass.csv")



#Looe Key Shallow

Looe_Key_Shallow_1999 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_1999.xls")


Looe_Key_Shallow_1999_herb <- merge(Looe_Key_Shallow_1999, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_1999_herb_biomass <- summarise_at(Looe_Key_Shallow_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_1999_herb_biomass$Year <- ('1999')
Looe_Key_Shallow_1999_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_1999_comm <- merge(Looe_Key_Shallow_1999, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_1999_comm_biomass <- summarise_at(Looe_Key_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_1999_comm_biomass$Year <- ('1999')
Looe_Key_Shallow_1999_comm_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2000 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2000.xls")

Looe_Key_Shallow_2000_herb <- merge(Looe_Key_Shallow_2000, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2000_herb_biomass <- summarise_at(Looe_Key_Shallow_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2000_herb_biomass$Year <- ('2000')
Looe_Key_Shallow_2000_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2000_comm <- merge(Looe_Key_Shallow_2000, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2000_comm_biomass <- summarise_at(Looe_Key_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2000_comm_biomass$Year <- ('2000')
Looe_Key_Shallow_2000_comm_biomass$Reef <- ('Looe Key Shallow')

Looe_Key_Shallow_2001 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2001.xls")

Looe_Key_Shallow_2001_herb <- merge(Looe_Key_Shallow_2001, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2001_herb_biomass <- summarise_at(Looe_Key_Shallow_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2001_herb_biomass$Year <- ('2001')
Looe_Key_Shallow_2001_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2001_comm <- merge(Looe_Key_Shallow_2001, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2001_comm_biomass <- summarise_at(Looe_Key_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2001_comm_biomass$Year <- ('2001')
Looe_Key_Shallow_2001_comm_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2002 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2002.xls")

Looe_Key_Shallow_2002_herb <- merge(Looe_Key_Shallow_2002, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2002_herb_biomass <- summarise_at(Looe_Key_Shallow_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2002_herb_biomass$Year <- ('2002')
Looe_Key_Shallow_2002_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2002_comm <- merge(Looe_Key_Shallow_2002, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2002_comm_biomass <- summarise_at(Looe_Key_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2002_comm_biomass$Year <- ('2002')
Looe_Key_Shallow_2002_comm_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2003 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2003.xls")

Looe_Key_Shallow_2003_herb <- merge(Looe_Key_Shallow_2003, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2003_herb_biomass <- summarise_at(Looe_Key_Shallow_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2003_herb_biomass$Year <- ('2003')
Looe_Key_Shallow_2003_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2003_comm <- merge(Looe_Key_Shallow_2003, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2003_comm_biomass <- summarise_at(Looe_Key_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2003_comm_biomass$Year <- ('2003')
Looe_Key_Shallow_2003_comm_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2004 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2004.xls")

Looe_Key_Shallow_2004_herb <- merge(Looe_Key_Shallow_2004, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2004_herb_biomass <- summarise_at(Looe_Key_Shallow_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2004_herb_biomass$Year <- ('2004')
Looe_Key_Shallow_2004_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2004_comm <- merge(Looe_Key_Shallow_2004, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2004_comm_biomass <- summarise_at(Looe_Key_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2004_comm_biomass$Year <- ('2004')
Looe_Key_Shallow_2004_comm_biomass$Reef <- ('Looe Key Shallow')

Looe_Key_Shallow_2005 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2005.xls")

Looe_Key_Shallow_2005_herb <- merge(Looe_Key_Shallow_2005, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2005_herb_biomass <- summarise_at(Looe_Key_Shallow_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2005_herb_biomass$Year <- ('2005')
Looe_Key_Shallow_2005_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2005_comm <- merge(Looe_Key_Shallow_2005, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2005_comm_biomass <- summarise_at(Looe_Key_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2005_comm_biomass$Year <- ('2005')
Looe_Key_Shallow_2005_comm_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2006 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2006.xls")

Looe_Key_Shallow_2006_herb <- merge(Looe_Key_Shallow_2006, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2006_herb_biomass <- summarise_at(Looe_Key_Shallow_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2006_herb_biomass$Year <- ('2006')
Looe_Key_Shallow_2006_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2006_comm <- merge(Looe_Key_Shallow_2006, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2006_comm_biomass <- summarise_at(Looe_Key_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2006_comm_biomass$Year <- ('2006')
Looe_Key_Shallow_2006_comm_biomass$Reef <- ('Looe Key Shallow')

Looe_Key_Shallow_2007 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2007.xls")

Looe_Key_Shallow_2007_herb <- merge(Looe_Key_Shallow_2007, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2007_herb_biomass <- summarise_at(Looe_Key_Shallow_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2007_herb_biomass$Year <- ('2007')
Looe_Key_Shallow_2007_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2007_comm <- merge(Looe_Key_Shallow_2007, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2007_comm_biomass <- summarise_at(Looe_Key_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2007_comm_biomass$Year <- ('2007')
Looe_Key_Shallow_2007_comm_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2008 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2008.xls")

Looe_Key_Shallow_2008_herb <- merge(Looe_Key_Shallow_2008, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2008_herb_biomass <- summarise_at(Looe_Key_Shallow_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2008_herb_biomass$Year <- ('2008')
Looe_Key_Shallow_2008_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2008_comm <- merge(Looe_Key_Shallow_2008, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2008_comm_biomass <- summarise_at(Looe_Key_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2008_comm_biomass$Year <- ('2008')
Looe_Key_Shallow_2008_comm_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2009 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2009.xls")

Looe_Key_Shallow_2009_herb <- merge(Looe_Key_Shallow_2009, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2009_herb_biomass <- summarise_at(Looe_Key_Shallow_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2009_herb_biomass$Year <- ('2009')
Looe_Key_Shallow_2009_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2009_comm <- merge(Looe_Key_Shallow_2009, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2009_comm_biomass <- summarise_at(Looe_Key_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2009_comm_biomass$Year <- ('2009')
Looe_Key_Shallow_2009_comm_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2010 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2010.xls")

Looe_Key_Shallow_2010_herb <- merge(Looe_Key_Shallow_2010, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2010_herb_biomass <- summarise_at(Looe_Key_Shallow_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2010_herb_biomass$Year <- ('2010')
Looe_Key_Shallow_2010_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2010_comm <- merge(Looe_Key_Shallow_2010, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2010_comm_biomass <- summarise_at(Looe_Key_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2010_comm_biomass$Year <- ('2010')
Looe_Key_Shallow_2010_comm_biomass$Reef <- ('Looe Key Shallow')

Looe_Key_Shallow_2011 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2011.xls")

Looe_Key_Shallow_2011_herb <- merge(Looe_Key_Shallow_2011, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2011_herb_biomass <- summarise_at(Looe_Key_Shallow_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2011_herb_biomass$Year <- ('2011')
Looe_Key_Shallow_2011_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2011_comm <- merge(Looe_Key_Shallow_2011, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2011_comm_biomass <- summarise_at(Looe_Key_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2011_comm_biomass$Year <- ('2011')
Looe_Key_Shallow_2011_comm_biomass$Reef <- ('Looe Key Shallow')



Looe_Key_Shallow_2012 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2012.xls")

Looe_Key_Shallow_2012_herb <- merge(Looe_Key_Shallow_2012, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2012_herb_biomass <- summarise_at(Looe_Key_Shallow_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2012_herb_biomass$Year <- ('2012')
Looe_Key_Shallow_2012_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2012_comm <- merge(Looe_Key_Shallow_2012, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2012_comm_biomass <- summarise_at(Looe_Key_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2012_comm_biomass$Year <- ('2012')
Looe_Key_Shallow_2012_comm_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2014 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2014.xls")

Looe_Key_Shallow_2014_herb <- merge(Looe_Key_Shallow_2014, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2014_herb_biomass <- summarise_at(Looe_Key_Shallow_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2014_herb_biomass$Year <- ('2014')
Looe_Key_Shallow_2014_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2014_comm <- merge(Looe_Key_Shallow_2014, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2014_comm_biomass <- summarise_at(Looe_Key_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2014_comm_biomass$Year <- ('2014')
Looe_Key_Shallow_2014_comm_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2016 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2016.xls")

Looe_Key_Shallow_2016_herb <- merge(Looe_Key_Shallow_2016, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2016_herb_biomass <- summarise_at(Looe_Key_Shallow_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2016_herb_biomass$Year <- ('2016')
Looe_Key_Shallow_2016_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2016_comm <- merge(Looe_Key_Shallow_2016, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2016_comm_biomass <- summarise_at(Looe_Key_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2016_comm_biomass$Year <- ('2016')
Looe_Key_Shallow_2016_comm_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2018 <- import("Looe_Key_Shallow/data/Looe_Key_Shallow_2018.xls")

Looe_Key_Shallow_2018_herb <- merge(Looe_Key_Shallow_2018, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2018_herb_biomass <- summarise_at(Looe_Key_Shallow_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2018_herb_biomass$Year <- ('2018')
Looe_Key_Shallow_2018_herb_biomass$Reef <- ('Looe Key Shallow')


Looe_Key_Shallow_2018_comm <- merge(Looe_Key_Shallow_2018, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2018_comm_biomass <- summarise_at(Looe_Key_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Looe_Key_Shallow_2018_comm_biomass$Year <- ('2018')
Looe_Key_Shallow_2018_comm_biomass$Reef <- ('Looe Key Shallow')



### Combine all years together for herbivorous and commercial seperately



Looe_Key_Shallow_herb_1 <- rbind(Looe_Key_Shallow_1999_herb_biomass,Looe_Key_Shallow_2000_herb_biomass)
Looe_Key_Shallow_herb_2 <- rbind(Looe_Key_Shallow_herb_1,Looe_Key_Shallow_2001_herb_biomass)
Looe_Key_Shallow_herb_3 <- rbind(Looe_Key_Shallow_herb_2,Looe_Key_Shallow_2002_herb_biomass)
Looe_Key_Shallow_herb_4 <- rbind(Looe_Key_Shallow_herb_3,Looe_Key_Shallow_2003_herb_biomass)
Looe_Key_Shallow_herb_5 <- rbind(Looe_Key_Shallow_herb_4,Looe_Key_Shallow_2004_herb_biomass)
Looe_Key_Shallow_herb_6 <- rbind(Looe_Key_Shallow_herb_5,Looe_Key_Shallow_2005_herb_biomass)
Looe_Key_Shallow_herb_7 <- rbind(Looe_Key_Shallow_herb_6,Looe_Key_Shallow_2006_herb_biomass)
Looe_Key_Shallow_herb_8 <- rbind(Looe_Key_Shallow_herb_7,Looe_Key_Shallow_2007_herb_biomass)
Looe_Key_Shallow_herb_9 <- rbind(Looe_Key_Shallow_herb_8,Looe_Key_Shallow_2008_herb_biomass)
Looe_Key_Shallow_herb_10 <- rbind(Looe_Key_Shallow_herb_9,Looe_Key_Shallow_2009_herb_biomass)
Looe_Key_Shallow_herb_11<- rbind(Looe_Key_Shallow_herb_10,Looe_Key_Shallow_2010_herb_biomass)
Looe_Key_Shallow_herb_12 <- rbind(Looe_Key_Shallow_herb_11,Looe_Key_Shallow_2011_herb_biomass)
Looe_Key_Shallow_herb_13 <- rbind(Looe_Key_Shallow_herb_12,Looe_Key_Shallow_2012_herb_biomass)
Looe_Key_Shallow_herb_14 <- rbind(Looe_Key_Shallow_herb_13,Looe_Key_Shallow_2014_herb_biomass)
Looe_Key_Shallow_herb_15 <- rbind(Looe_Key_Shallow_herb_14,Looe_Key_Shallow_2016_herb_biomass)
Looe_Key_Shallow_herb_biomass_data_combined <- rbind(Looe_Key_Shallow_herb_15,Looe_Key_Shallow_2018_herb_biomass)



Looe_Key_Shallow_comm_1 <- rbind(Looe_Key_Shallow_1999_comm_biomass,Looe_Key_Shallow_2000_comm_biomass)
Looe_Key_Shallow_comm_2 <- rbind(Looe_Key_Shallow_comm_1,Looe_Key_Shallow_2001_comm_biomass)
Looe_Key_Shallow_comm_3 <- rbind(Looe_Key_Shallow_comm_2,Looe_Key_Shallow_2002_comm_biomass)
Looe_Key_Shallow_comm_4 <- rbind(Looe_Key_Shallow_comm_3,Looe_Key_Shallow_2003_comm_biomass)
Looe_Key_Shallow_comm_5 <- rbind(Looe_Key_Shallow_comm_4,Looe_Key_Shallow_2004_comm_biomass)
Looe_Key_Shallow_comm_6 <- rbind(Looe_Key_Shallow_comm_5,Looe_Key_Shallow_2005_comm_biomass)
Looe_Key_Shallow_comm_7 <- rbind(Looe_Key_Shallow_comm_6,Looe_Key_Shallow_2006_comm_biomass)
Looe_Key_Shallow_comm_8 <- rbind(Looe_Key_Shallow_comm_7,Looe_Key_Shallow_2007_comm_biomass)
Looe_Key_Shallow_comm_9 <- rbind(Looe_Key_Shallow_comm_8,Looe_Key_Shallow_2008_comm_biomass)
Looe_Key_Shallow_comm_10 <- rbind(Looe_Key_Shallow_comm_9,Looe_Key_Shallow_2009_comm_biomass)
Looe_Key_Shallow_comm_11<- rbind(Looe_Key_Shallow_comm_10,Looe_Key_Shallow_2010_comm_biomass)
Looe_Key_Shallow_comm_12 <- rbind(Looe_Key_Shallow_comm_11,Looe_Key_Shallow_2011_comm_biomass)
Looe_Key_Shallow_comm_13 <- rbind(Looe_Key_Shallow_comm_12,Looe_Key_Shallow_2012_comm_biomass)
Looe_Key_Shallow_comm_14 <- rbind(Looe_Key_Shallow_comm_13,Looe_Key_Shallow_2014_comm_biomass)
Looe_Key_Shallow_comm_15 <- rbind(Looe_Key_Shallow_comm_14,Looe_Key_Shallow_2016_comm_biomass)
Looe_Key_Shallow_comm_biomass_data_combined <- rbind(Looe_Key_Shallow_comm_15,Looe_Key_Shallow_2018_comm_biomass)



export(Looe_Key_Shallow_herb_biomass_data_combined, "Looe_Key_Shallow/data/Looe_Key_Shallow_herbivorous_biomass.csv")
export(Looe_Key_Shallow_comm_biomass_data_combined, "Looe_Key_Shallow/data/Looe_Key_Shallow_commercial_biomass.csv")



#Red Dun Reef

Red_Dun_Reef_1999 <- import("Red_Dun_Reef/data/Red_Dun_Reef_1999.xls")


Red_Dun_Reef_1999_herb <- merge(Red_Dun_Reef_1999, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_1999_herb_biomass <- summarise_at(Red_Dun_Reef_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_1999_herb_biomass$Year <- ('1999')
Red_Dun_Reef_1999_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_1999_comm <- merge(Red_Dun_Reef_1999, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_1999_comm_biomass <- summarise_at(Red_Dun_Reef_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_1999_comm_biomass$Year <- ('1999')
Red_Dun_Reef_1999_comm_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2000 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2000.xls")

Red_Dun_Reef_2000_herb <- merge(Red_Dun_Reef_2000, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2000_herb_biomass <- summarise_at(Red_Dun_Reef_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2000_herb_biomass$Year <- ('2000')
Red_Dun_Reef_2000_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2000_comm <- merge(Red_Dun_Reef_2000, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2000_comm_biomass <- summarise_at(Red_Dun_Reef_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2000_comm_biomass$Year <- ('2000')
Red_Dun_Reef_2000_comm_biomass$Reef <- ('Red Dun Reef')

Red_Dun_Reef_2001 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2001.xls")

Red_Dun_Reef_2001_herb <- merge(Red_Dun_Reef_2001, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2001_herb_biomass <- summarise_at(Red_Dun_Reef_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2001_herb_biomass$Year <- ('2001')
Red_Dun_Reef_2001_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2001_comm <- merge(Red_Dun_Reef_2001, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2001_comm_biomass <- summarise_at(Red_Dun_Reef_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2001_comm_biomass$Year <- ('2001')
Red_Dun_Reef_2001_comm_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2002 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2002.xls")

Red_Dun_Reef_2002_herb <- merge(Red_Dun_Reef_2002, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2002_herb_biomass <- summarise_at(Red_Dun_Reef_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2002_herb_biomass$Year <- ('2002')
Red_Dun_Reef_2002_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2002_comm <- merge(Red_Dun_Reef_2002, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2002_comm_biomass <- summarise_at(Red_Dun_Reef_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2002_comm_biomass$Year <- ('2002')
Red_Dun_Reef_2002_comm_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2003 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2003.xls")

Red_Dun_Reef_2003_herb <- merge(Red_Dun_Reef_2003, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2003_herb_biomass <- summarise_at(Red_Dun_Reef_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2003_herb_biomass$Year <- ('2003')
Red_Dun_Reef_2003_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2003_comm <- merge(Red_Dun_Reef_2003, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2003_comm_biomass <- summarise_at(Red_Dun_Reef_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2003_comm_biomass$Year <- ('2003')
Red_Dun_Reef_2003_comm_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2004 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2004.xls")

Red_Dun_Reef_2004_herb <- merge(Red_Dun_Reef_2004, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2004_herb_biomass <- summarise_at(Red_Dun_Reef_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2004_herb_biomass$Year <- ('2004')
Red_Dun_Reef_2004_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2004_comm <- merge(Red_Dun_Reef_2004, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2004_comm_biomass <- summarise_at(Red_Dun_Reef_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2004_comm_biomass$Year <- ('2004')
Red_Dun_Reef_2004_comm_biomass$Reef <- ('Red Dun Reef')

Red_Dun_Reef_2005 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2005.xls")

Red_Dun_Reef_2005_herb <- merge(Red_Dun_Reef_2005, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2005_herb_biomass <- summarise_at(Red_Dun_Reef_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2005_herb_biomass$Year <- ('2005')
Red_Dun_Reef_2005_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2005_comm <- merge(Red_Dun_Reef_2005, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2005_comm_biomass <- summarise_at(Red_Dun_Reef_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2005_comm_biomass$Year <- ('2005')
Red_Dun_Reef_2005_comm_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2006 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2006.xls")

Red_Dun_Reef_2006_herb <- merge(Red_Dun_Reef_2006, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2006_herb_biomass <- summarise_at(Red_Dun_Reef_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2006_herb_biomass$Year <- ('2006')
Red_Dun_Reef_2006_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2006_comm <- merge(Red_Dun_Reef_2006, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2006_comm_biomass <- summarise_at(Red_Dun_Reef_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2006_comm_biomass$Year <- ('2006')
Red_Dun_Reef_2006_comm_biomass$Reef <- ('Red Dun Reef')

Red_Dun_Reef_2007 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2007.xls")

Red_Dun_Reef_2007_herb <- merge(Red_Dun_Reef_2007, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2007_herb_biomass <- summarise_at(Red_Dun_Reef_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2007_herb_biomass$Year <- ('2007')
Red_Dun_Reef_2007_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2007_comm <- merge(Red_Dun_Reef_2007, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2007_comm_biomass <- summarise_at(Red_Dun_Reef_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2007_comm_biomass$Year <- ('2007')
Red_Dun_Reef_2007_comm_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2008 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2008.xls")

Red_Dun_Reef_2008_herb <- merge(Red_Dun_Reef_2008, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2008_herb_biomass <- summarise_at(Red_Dun_Reef_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2008_herb_biomass$Year <- ('2008')
Red_Dun_Reef_2008_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2008_comm <- merge(Red_Dun_Reef_2008, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2008_comm_biomass <- summarise_at(Red_Dun_Reef_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2008_comm_biomass$Year <- ('2008')
Red_Dun_Reef_2008_comm_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2009 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2009.xls")

Red_Dun_Reef_2009_herb <- merge(Red_Dun_Reef_2009, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2009_herb_biomass <- summarise_at(Red_Dun_Reef_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2009_herb_biomass$Year <- ('2009')
Red_Dun_Reef_2009_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2009_comm <- merge(Red_Dun_Reef_2009, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2009_comm_biomass <- summarise_at(Red_Dun_Reef_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2009_comm_biomass$Year <- ('2009')
Red_Dun_Reef_2009_comm_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2010 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2010.xls")

Red_Dun_Reef_2010_herb <- merge(Red_Dun_Reef_2010, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2010_herb_biomass <- summarise_at(Red_Dun_Reef_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2010_herb_biomass$Year <- ('2010')
Red_Dun_Reef_2010_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2010_comm <- merge(Red_Dun_Reef_2010, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2010_comm_biomass <- summarise_at(Red_Dun_Reef_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2010_comm_biomass$Year <- ('2010')
Red_Dun_Reef_2010_comm_biomass$Reef <- ('Red Dun Reef')

Red_Dun_Reef_2011 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2011.xls")

Red_Dun_Reef_2011_herb <- merge(Red_Dun_Reef_2011, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2011_herb_biomass <- summarise_at(Red_Dun_Reef_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2011_herb_biomass$Year <- ('2011')
Red_Dun_Reef_2011_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2011_comm <- merge(Red_Dun_Reef_2011, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2011_comm_biomass <- summarise_at(Red_Dun_Reef_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2011_comm_biomass$Year <- ('2011')
Red_Dun_Reef_2011_comm_biomass$Reef <- ('Red Dun Reef')



Red_Dun_Reef_2012 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2012.xls")

Red_Dun_Reef_2012_herb <- merge(Red_Dun_Reef_2012, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2012_herb_biomass <- summarise_at(Red_Dun_Reef_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2012_herb_biomass$Year <- ('2012')
Red_Dun_Reef_2012_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2012_comm <- merge(Red_Dun_Reef_2012, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2012_comm_biomass <- summarise_at(Red_Dun_Reef_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2012_comm_biomass$Year <- ('2012')
Red_Dun_Reef_2012_comm_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2014 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2014.xls")

Red_Dun_Reef_2014_herb <- merge(Red_Dun_Reef_2014, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2014_herb_biomass <- summarise_at(Red_Dun_Reef_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2014_herb_biomass$Year <- ('2014')
Red_Dun_Reef_2014_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2014_comm <- merge(Red_Dun_Reef_2014, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2014_comm_biomass <- summarise_at(Red_Dun_Reef_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2014_comm_biomass$Year <- ('2014')
Red_Dun_Reef_2014_comm_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2016 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2016.xls")

Red_Dun_Reef_2016_herb <- merge(Red_Dun_Reef_2016, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2016_herb_biomass <- summarise_at(Red_Dun_Reef_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2016_herb_biomass$Year <- ('2016')
Red_Dun_Reef_2016_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2016_comm <- merge(Red_Dun_Reef_2016, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2016_comm_biomass <- summarise_at(Red_Dun_Reef_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2016_comm_biomass$Year <- ('2016')
Red_Dun_Reef_2016_comm_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2018 <- import("Red_Dun_Reef/data/Red_Dun_Reef_2018.xls")

Red_Dun_Reef_2018_herb <- merge(Red_Dun_Reef_2018, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2018_herb_biomass <- summarise_at(Red_Dun_Reef_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2018_herb_biomass$Year <- ('2018')
Red_Dun_Reef_2018_herb_biomass$Reef <- ('Red Dun Reef')


Red_Dun_Reef_2018_comm <- merge(Red_Dun_Reef_2018, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2018_comm_biomass <- summarise_at(Red_Dun_Reef_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Red_Dun_Reef_2018_comm_biomass$Year <- ('2018')
Red_Dun_Reef_2018_comm_biomass$Reef <- ('Red Dun Reef')



### Combine all years together for herbivorous and commercial seperately



Red_Dun_Reef_herb_1 <- rbind(Red_Dun_Reef_1999_herb_biomass,Red_Dun_Reef_2000_herb_biomass)
Red_Dun_Reef_herb_2 <- rbind(Red_Dun_Reef_herb_1,Red_Dun_Reef_2001_herb_biomass)
Red_Dun_Reef_herb_3 <- rbind(Red_Dun_Reef_herb_2,Red_Dun_Reef_2002_herb_biomass)
Red_Dun_Reef_herb_4 <- rbind(Red_Dun_Reef_herb_3,Red_Dun_Reef_2003_herb_biomass)
Red_Dun_Reef_herb_5 <- rbind(Red_Dun_Reef_herb_4,Red_Dun_Reef_2004_herb_biomass)
Red_Dun_Reef_herb_6 <- rbind(Red_Dun_Reef_herb_5,Red_Dun_Reef_2005_herb_biomass)
Red_Dun_Reef_herb_7 <- rbind(Red_Dun_Reef_herb_6,Red_Dun_Reef_2006_herb_biomass)
Red_Dun_Reef_herb_8 <- rbind(Red_Dun_Reef_herb_7,Red_Dun_Reef_2007_herb_biomass)
Red_Dun_Reef_herb_9 <- rbind(Red_Dun_Reef_herb_8,Red_Dun_Reef_2008_herb_biomass)
Red_Dun_Reef_herb_10 <- rbind(Red_Dun_Reef_herb_9,Red_Dun_Reef_2009_herb_biomass)
Red_Dun_Reef_herb_11<- rbind(Red_Dun_Reef_herb_10,Red_Dun_Reef_2010_herb_biomass)
Red_Dun_Reef_herb_12 <- rbind(Red_Dun_Reef_herb_11,Red_Dun_Reef_2011_herb_biomass)
Red_Dun_Reef_herb_13 <- rbind(Red_Dun_Reef_herb_12,Red_Dun_Reef_2012_herb_biomass)
Red_Dun_Reef_herb_14 <- rbind(Red_Dun_Reef_herb_13,Red_Dun_Reef_2014_herb_biomass)
Red_Dun_Reef_herb_15 <- rbind(Red_Dun_Reef_herb_14,Red_Dun_Reef_2016_herb_biomass)
Red_Dun_Reef_herb_biomass_data_combined <- rbind(Red_Dun_Reef_herb_15,Red_Dun_Reef_2018_herb_biomass)



Red_Dun_Reef_comm_1 <- rbind(Red_Dun_Reef_1999_comm_biomass,Red_Dun_Reef_2000_comm_biomass)
Red_Dun_Reef_comm_2 <- rbind(Red_Dun_Reef_comm_1,Red_Dun_Reef_2001_comm_biomass)
Red_Dun_Reef_comm_3 <- rbind(Red_Dun_Reef_comm_2,Red_Dun_Reef_2002_comm_biomass)
Red_Dun_Reef_comm_4 <- rbind(Red_Dun_Reef_comm_3,Red_Dun_Reef_2003_comm_biomass)
Red_Dun_Reef_comm_5 <- rbind(Red_Dun_Reef_comm_4,Red_Dun_Reef_2004_comm_biomass)
Red_Dun_Reef_comm_6 <- rbind(Red_Dun_Reef_comm_5,Red_Dun_Reef_2005_comm_biomass)
Red_Dun_Reef_comm_7 <- rbind(Red_Dun_Reef_comm_6,Red_Dun_Reef_2006_comm_biomass)
Red_Dun_Reef_comm_8 <- rbind(Red_Dun_Reef_comm_7,Red_Dun_Reef_2007_comm_biomass)
Red_Dun_Reef_comm_9 <- rbind(Red_Dun_Reef_comm_8,Red_Dun_Reef_2008_comm_biomass)
Red_Dun_Reef_comm_10 <- rbind(Red_Dun_Reef_comm_9,Red_Dun_Reef_2009_comm_biomass)
Red_Dun_Reef_comm_11<- rbind(Red_Dun_Reef_comm_10,Red_Dun_Reef_2010_comm_biomass)
Red_Dun_Reef_comm_12 <- rbind(Red_Dun_Reef_comm_11,Red_Dun_Reef_2011_comm_biomass)
Red_Dun_Reef_comm_13 <- rbind(Red_Dun_Reef_comm_12,Red_Dun_Reef_2012_comm_biomass)
Red_Dun_Reef_comm_14 <- rbind(Red_Dun_Reef_comm_13,Red_Dun_Reef_2014_comm_biomass)
Red_Dun_Reef_comm_15 <- rbind(Red_Dun_Reef_comm_14,Red_Dun_Reef_2016_comm_biomass)
Red_Dun_Reef_comm_biomass_data_combined <- rbind(Red_Dun_Reef_comm_15,Red_Dun_Reef_2018_comm_biomass)



export(Red_Dun_Reef_herb_biomass_data_combined, "Red_Dun_Reef/data/Red_Dun_Reef_herbivorous_biomass.csv")
export(Red_Dun_Reef_comm_biomass_data_combined, "Red_Dun_Reef/data/Red_Dun_Reef_commercial_biomass.csv")



#Rock Key Deep


Rock_Key_Deep_1999 <- import("Rock_Key_Deep/data/Rock_Key_Deep_1999.xls")


Rock_Key_Deep_1999_herb <- merge(Rock_Key_Deep_1999, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_1999_herb_biomass <- summarise_at(Rock_Key_Deep_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_1999_herb_biomass$Year <- ('1999')
Rock_Key_Deep_1999_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_1999_comm <- merge(Rock_Key_Deep_1999, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_1999_comm_biomass <- summarise_at(Rock_Key_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_1999_comm_biomass$Year <- ('1999')
Rock_Key_Deep_1999_comm_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2000 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2000.xls")

Rock_Key_Deep_2000_herb <- merge(Rock_Key_Deep_2000, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2000_herb_biomass <- summarise_at(Rock_Key_Deep_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2000_herb_biomass$Year <- ('2000')
Rock_Key_Deep_2000_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2000_comm <- merge(Rock_Key_Deep_2000, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2000_comm_biomass <- summarise_at(Rock_Key_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2000_comm_biomass$Year <- ('2000')
Rock_Key_Deep_2000_comm_biomass$Reef <- ('Rock Key Deep')

Rock_Key_Deep_2001 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2001.xls")

Rock_Key_Deep_2001_herb <- merge(Rock_Key_Deep_2001, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2001_herb_biomass <- summarise_at(Rock_Key_Deep_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2001_herb_biomass$Year <- ('2001')
Rock_Key_Deep_2001_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2001_comm <- merge(Rock_Key_Deep_2001, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2001_comm_biomass <- summarise_at(Rock_Key_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2001_comm_biomass$Year <- ('2001')
Rock_Key_Deep_2001_comm_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2002 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2002.xls")

Rock_Key_Deep_2002_herb <- merge(Rock_Key_Deep_2002, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2002_herb_biomass <- summarise_at(Rock_Key_Deep_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2002_herb_biomass$Year <- ('2002')
Rock_Key_Deep_2002_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2002_comm <- merge(Rock_Key_Deep_2002, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2002_comm_biomass <- summarise_at(Rock_Key_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2002_comm_biomass$Year <- ('2002')
Rock_Key_Deep_2002_comm_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2003 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2003.xls")

Rock_Key_Deep_2003_herb <- merge(Rock_Key_Deep_2003, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2003_herb_biomass <- summarise_at(Rock_Key_Deep_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2003_herb_biomass$Year <- ('2003')
Rock_Key_Deep_2003_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2003_comm <- merge(Rock_Key_Deep_2003, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2003_comm_biomass <- summarise_at(Rock_Key_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2003_comm_biomass$Year <- ('2003')
Rock_Key_Deep_2003_comm_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2004 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2004.xls")

Rock_Key_Deep_2004_herb <- merge(Rock_Key_Deep_2004, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2004_herb_biomass <- summarise_at(Rock_Key_Deep_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2004_herb_biomass$Year <- ('2004')
Rock_Key_Deep_2004_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2004_comm <- merge(Rock_Key_Deep_2004, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2004_comm_biomass <- summarise_at(Rock_Key_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2004_comm_biomass$Year <- ('2004')
Rock_Key_Deep_2004_comm_biomass$Reef <- ('Rock Key Deep')

Rock_Key_Deep_2005 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2005.xls")

Rock_Key_Deep_2005_herb <- merge(Rock_Key_Deep_2005, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2005_herb_biomass <- summarise_at(Rock_Key_Deep_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2005_herb_biomass$Year <- ('2005')
Rock_Key_Deep_2005_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2005_comm <- merge(Rock_Key_Deep_2005, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2005_comm_biomass <- summarise_at(Rock_Key_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2005_comm_biomass$Year <- ('2005')
Rock_Key_Deep_2005_comm_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2006 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2006.xls")

Rock_Key_Deep_2006_herb <- merge(Rock_Key_Deep_2006, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2006_herb_biomass <- summarise_at(Rock_Key_Deep_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2006_herb_biomass$Year <- ('2006')
Rock_Key_Deep_2006_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2006_comm <- merge(Rock_Key_Deep_2006, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2006_comm_biomass <- summarise_at(Rock_Key_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2006_comm_biomass$Year <- ('2006')
Rock_Key_Deep_2006_comm_biomass$Reef <- ('Rock Key Deep')

Rock_Key_Deep_2007 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2007.xls")

Rock_Key_Deep_2007_herb <- merge(Rock_Key_Deep_2007, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2007_herb_biomass <- summarise_at(Rock_Key_Deep_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2007_herb_biomass$Year <- ('2007')
Rock_Key_Deep_2007_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2007_comm <- merge(Rock_Key_Deep_2007, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2007_comm_biomass <- summarise_at(Rock_Key_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2007_comm_biomass$Year <- ('2007')
Rock_Key_Deep_2007_comm_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2008 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2008.xls")

Rock_Key_Deep_2008_herb <- merge(Rock_Key_Deep_2008, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2008_herb_biomass <- summarise_at(Rock_Key_Deep_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2008_herb_biomass$Year <- ('2008')
Rock_Key_Deep_2008_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2008_comm <- merge(Rock_Key_Deep_2008, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2008_comm_biomass <- summarise_at(Rock_Key_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2008_comm_biomass$Year <- ('2008')
Rock_Key_Deep_2008_comm_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2009 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2009.xls")

Rock_Key_Deep_2009_herb <- merge(Rock_Key_Deep_2009, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2009_herb_biomass <- summarise_at(Rock_Key_Deep_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2009_herb_biomass$Year <- ('2009')
Rock_Key_Deep_2009_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2009_comm <- merge(Rock_Key_Deep_2009, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2009_comm_biomass <- summarise_at(Rock_Key_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2009_comm_biomass$Year <- ('2009')
Rock_Key_Deep_2009_comm_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2010 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2010.xls")

Rock_Key_Deep_2010_herb <- merge(Rock_Key_Deep_2010, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2010_herb_biomass <- summarise_at(Rock_Key_Deep_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2010_herb_biomass$Year <- ('2010')
Rock_Key_Deep_2010_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2010_comm <- merge(Rock_Key_Deep_2010, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2010_comm_biomass <- summarise_at(Rock_Key_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2010_comm_biomass$Year <- ('2010')
Rock_Key_Deep_2010_comm_biomass$Reef <- ('Rock Key Deep')

Rock_Key_Deep_2011 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2011.xls")

Rock_Key_Deep_2011_herb <- merge(Rock_Key_Deep_2011, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2011_herb_biomass <- summarise_at(Rock_Key_Deep_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2011_herb_biomass$Year <- ('2011')
Rock_Key_Deep_2011_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2011_comm <- merge(Rock_Key_Deep_2011, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2011_comm_biomass <- summarise_at(Rock_Key_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2011_comm_biomass$Year <- ('2011')
Rock_Key_Deep_2011_comm_biomass$Reef <- ('Rock Key Deep')



Rock_Key_Deep_2012 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2012.xls")

Rock_Key_Deep_2012_herb <- merge(Rock_Key_Deep_2012, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2012_herb_biomass <- summarise_at(Rock_Key_Deep_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2012_herb_biomass$Year <- ('2012')
Rock_Key_Deep_2012_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2012_comm <- merge(Rock_Key_Deep_2012, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2012_comm_biomass <- summarise_at(Rock_Key_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2012_comm_biomass$Year <- ('2012')
Rock_Key_Deep_2012_comm_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2014 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2014.xls")

Rock_Key_Deep_2014_herb <- merge(Rock_Key_Deep_2014, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2014_herb_biomass <- summarise_at(Rock_Key_Deep_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2014_herb_biomass$Year <- ('2014')
Rock_Key_Deep_2014_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2014_comm <- merge(Rock_Key_Deep_2014, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2014_comm_biomass <- summarise_at(Rock_Key_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2014_comm_biomass$Year <- ('2014')
Rock_Key_Deep_2014_comm_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2016 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2016.xls")

Rock_Key_Deep_2016_herb <- merge(Rock_Key_Deep_2016, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2016_herb_biomass <- summarise_at(Rock_Key_Deep_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2016_herb_biomass$Year <- ('2016')
Rock_Key_Deep_2016_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2016_comm <- merge(Rock_Key_Deep_2016, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2016_comm_biomass <- summarise_at(Rock_Key_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2016_comm_biomass$Year <- ('2016')
Rock_Key_Deep_2016_comm_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2018 <- import("Rock_Key_Deep/data/Rock_Key_Deep_2018.xls")

Rock_Key_Deep_2018_herb <- merge(Rock_Key_Deep_2018, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2018_herb_biomass <- summarise_at(Rock_Key_Deep_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2018_herb_biomass$Year <- ('2018')
Rock_Key_Deep_2018_herb_biomass$Reef <- ('Rock Key Deep')


Rock_Key_Deep_2018_comm <- merge(Rock_Key_Deep_2018, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2018_comm_biomass <- summarise_at(Rock_Key_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Deep_2018_comm_biomass$Year <- ('2018')
Rock_Key_Deep_2018_comm_biomass$Reef <- ('Rock Key Deep')



### Combine all years together for herbivorous and commercial seperately



Rock_Key_Deep_herb_1 <- rbind(Rock_Key_Deep_1999_herb_biomass,Rock_Key_Deep_2000_herb_biomass)
Rock_Key_Deep_herb_2 <- rbind(Rock_Key_Deep_herb_1,Rock_Key_Deep_2001_herb_biomass)
Rock_Key_Deep_herb_3 <- rbind(Rock_Key_Deep_herb_2,Rock_Key_Deep_2002_herb_biomass)
Rock_Key_Deep_herb_4 <- rbind(Rock_Key_Deep_herb_3,Rock_Key_Deep_2003_herb_biomass)
Rock_Key_Deep_herb_5 <- rbind(Rock_Key_Deep_herb_4,Rock_Key_Deep_2004_herb_biomass)
Rock_Key_Deep_herb_6 <- rbind(Rock_Key_Deep_herb_5,Rock_Key_Deep_2005_herb_biomass)
Rock_Key_Deep_herb_7 <- rbind(Rock_Key_Deep_herb_6,Rock_Key_Deep_2006_herb_biomass)
Rock_Key_Deep_herb_8 <- rbind(Rock_Key_Deep_herb_7,Rock_Key_Deep_2007_herb_biomass)
Rock_Key_Deep_herb_9 <- rbind(Rock_Key_Deep_herb_8,Rock_Key_Deep_2008_herb_biomass)
Rock_Key_Deep_herb_10 <- rbind(Rock_Key_Deep_herb_9,Rock_Key_Deep_2009_herb_biomass)
Rock_Key_Deep_herb_11<- rbind(Rock_Key_Deep_herb_10,Rock_Key_Deep_2010_herb_biomass)
Rock_Key_Deep_herb_12 <- rbind(Rock_Key_Deep_herb_11,Rock_Key_Deep_2011_herb_biomass)
Rock_Key_Deep_herb_13 <- rbind(Rock_Key_Deep_herb_12,Rock_Key_Deep_2012_herb_biomass)
Rock_Key_Deep_herb_14 <- rbind(Rock_Key_Deep_herb_13,Rock_Key_Deep_2014_herb_biomass)
Rock_Key_Deep_herb_15 <- rbind(Rock_Key_Deep_herb_14,Rock_Key_Deep_2016_herb_biomass)
Rock_Key_Deep_herb_biomass_data_combined <- rbind(Rock_Key_Deep_herb_15,Rock_Key_Deep_2018_herb_biomass)



Rock_Key_Deep_comm_1 <- rbind(Rock_Key_Deep_1999_comm_biomass,Rock_Key_Deep_2000_comm_biomass)
Rock_Key_Deep_comm_2 <- rbind(Rock_Key_Deep_comm_1,Rock_Key_Deep_2001_comm_biomass)
Rock_Key_Deep_comm_3 <- rbind(Rock_Key_Deep_comm_2,Rock_Key_Deep_2002_comm_biomass)
Rock_Key_Deep_comm_4 <- rbind(Rock_Key_Deep_comm_3,Rock_Key_Deep_2003_comm_biomass)
Rock_Key_Deep_comm_5 <- rbind(Rock_Key_Deep_comm_4,Rock_Key_Deep_2004_comm_biomass)
Rock_Key_Deep_comm_6 <- rbind(Rock_Key_Deep_comm_5,Rock_Key_Deep_2005_comm_biomass)
Rock_Key_Deep_comm_7 <- rbind(Rock_Key_Deep_comm_6,Rock_Key_Deep_2006_comm_biomass)
Rock_Key_Deep_comm_8 <- rbind(Rock_Key_Deep_comm_7,Rock_Key_Deep_2007_comm_biomass)
Rock_Key_Deep_comm_9 <- rbind(Rock_Key_Deep_comm_8,Rock_Key_Deep_2008_comm_biomass)
Rock_Key_Deep_comm_10 <- rbind(Rock_Key_Deep_comm_9,Rock_Key_Deep_2009_comm_biomass)
Rock_Key_Deep_comm_11<- rbind(Rock_Key_Deep_comm_10,Rock_Key_Deep_2010_comm_biomass)
Rock_Key_Deep_comm_12 <- rbind(Rock_Key_Deep_comm_11,Rock_Key_Deep_2011_comm_biomass)
Rock_Key_Deep_comm_13 <- rbind(Rock_Key_Deep_comm_12,Rock_Key_Deep_2012_comm_biomass)
Rock_Key_Deep_comm_14 <- rbind(Rock_Key_Deep_comm_13,Rock_Key_Deep_2014_comm_biomass)
Rock_Key_Deep_comm_15 <- rbind(Rock_Key_Deep_comm_14,Rock_Key_Deep_2016_comm_biomass)
Rock_Key_Deep_comm_biomass_data_combined <- rbind(Rock_Key_Deep_comm_15,Rock_Key_Deep_2018_comm_biomass)



export(Rock_Key_Deep_herb_biomass_data_combined, "Rock_Key_Deep/data/Rock_Key_Deep_herbivorous_biomass.csv")
export(Rock_Key_Deep_comm_biomass_data_combined, "Rock_Key_Deep/data/Rock_Key_Deep_commercial_biomass.csv")



#Rock Key Shallow


Rock_Key_Shallow_1999 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_1999.xls")


Rock_Key_Shallow_1999_herb <- merge(Rock_Key_Shallow_1999, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_1999_herb_biomass <- summarise_at(Rock_Key_Shallow_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_1999_herb_biomass$Year <- ('1999')
Rock_Key_Shallow_1999_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_1999_comm <- merge(Rock_Key_Shallow_1999, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_1999_comm_biomass <- summarise_at(Rock_Key_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_1999_comm_biomass$Year <- ('1999')
Rock_Key_Shallow_1999_comm_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2000 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2000.xls")

Rock_Key_Shallow_2000_herb <- merge(Rock_Key_Shallow_2000, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2000_herb_biomass <- summarise_at(Rock_Key_Shallow_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2000_herb_biomass$Year <- ('2000')
Rock_Key_Shallow_2000_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2000_comm <- merge(Rock_Key_Shallow_2000, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2000_comm_biomass <- summarise_at(Rock_Key_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2000_comm_biomass$Year <- ('2000')
Rock_Key_Shallow_2000_comm_biomass$Reef <- ('Rock Key Shallow')

Rock_Key_Shallow_2001 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2001.xls")

Rock_Key_Shallow_2001_herb <- merge(Rock_Key_Shallow_2001, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2001_herb_biomass <- summarise_at(Rock_Key_Shallow_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2001_herb_biomass$Year <- ('2001')
Rock_Key_Shallow_2001_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2001_comm <- merge(Rock_Key_Shallow_2001, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2001_comm_biomass <- summarise_at(Rock_Key_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2001_comm_biomass$Year <- ('2001')
Rock_Key_Shallow_2001_comm_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2002 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2002.xls")

Rock_Key_Shallow_2002_herb <- merge(Rock_Key_Shallow_2002, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2002_herb_biomass <- summarise_at(Rock_Key_Shallow_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2002_herb_biomass$Year <- ('2002')
Rock_Key_Shallow_2002_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2002_comm <- merge(Rock_Key_Shallow_2002, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2002_comm_biomass <- summarise_at(Rock_Key_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2002_comm_biomass$Year <- ('2002')
Rock_Key_Shallow_2002_comm_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2003 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2003.xls")

Rock_Key_Shallow_2003_herb <- merge(Rock_Key_Shallow_2003, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2003_herb_biomass <- summarise_at(Rock_Key_Shallow_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2003_herb_biomass$Year <- ('2003')
Rock_Key_Shallow_2003_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2003_comm <- merge(Rock_Key_Shallow_2003, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2003_comm_biomass <- summarise_at(Rock_Key_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2003_comm_biomass$Year <- ('2003')
Rock_Key_Shallow_2003_comm_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2004 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2004.xls")

Rock_Key_Shallow_2004_herb <- merge(Rock_Key_Shallow_2004, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2004_herb_biomass <- summarise_at(Rock_Key_Shallow_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2004_herb_biomass$Year <- ('2004')
Rock_Key_Shallow_2004_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2004_comm <- merge(Rock_Key_Shallow_2004, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2004_comm_biomass <- summarise_at(Rock_Key_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2004_comm_biomass$Year <- ('2004')
Rock_Key_Shallow_2004_comm_biomass$Reef <- ('Rock Key Shallow')

Rock_Key_Shallow_2005 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2005.xls")

Rock_Key_Shallow_2005_herb <- merge(Rock_Key_Shallow_2005, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2005_herb_biomass <- summarise_at(Rock_Key_Shallow_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2005_herb_biomass$Year <- ('2005')
Rock_Key_Shallow_2005_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2005_comm <- merge(Rock_Key_Shallow_2005, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2005_comm_biomass <- summarise_at(Rock_Key_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2005_comm_biomass$Year <- ('2005')
Rock_Key_Shallow_2005_comm_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2006 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2006.xls")

Rock_Key_Shallow_2006_herb <- merge(Rock_Key_Shallow_2006, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2006_herb_biomass <- summarise_at(Rock_Key_Shallow_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2006_herb_biomass$Year <- ('2006')
Rock_Key_Shallow_2006_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2006_comm <- merge(Rock_Key_Shallow_2006, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2006_comm_biomass <- summarise_at(Rock_Key_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2006_comm_biomass$Year <- ('2006')
Rock_Key_Shallow_2006_comm_biomass$Reef <- ('Rock Key Shallow')

Rock_Key_Shallow_2007 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2007.xls")

Rock_Key_Shallow_2007_herb <- merge(Rock_Key_Shallow_2007, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2007_herb_biomass <- summarise_at(Rock_Key_Shallow_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2007_herb_biomass$Year <- ('2007')
Rock_Key_Shallow_2007_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2007_comm <- merge(Rock_Key_Shallow_2007, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2007_comm_biomass <- summarise_at(Rock_Key_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2007_comm_biomass$Year <- ('2007')
Rock_Key_Shallow_2007_comm_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2008 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2008.xls")

Rock_Key_Shallow_2008_herb <- merge(Rock_Key_Shallow_2008, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2008_herb_biomass <- summarise_at(Rock_Key_Shallow_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2008_herb_biomass$Year <- ('2008')
Rock_Key_Shallow_2008_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2008_comm <- merge(Rock_Key_Shallow_2008, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2008_comm_biomass <- summarise_at(Rock_Key_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2008_comm_biomass$Year <- ('2008')
Rock_Key_Shallow_2008_comm_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2009 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2009.xls")

Rock_Key_Shallow_2009_herb <- merge(Rock_Key_Shallow_2009, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2009_herb_biomass <- summarise_at(Rock_Key_Shallow_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2009_herb_biomass$Year <- ('2009')
Rock_Key_Shallow_2009_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2009_comm <- merge(Rock_Key_Shallow_2009, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2009_comm_biomass <- summarise_at(Rock_Key_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2009_comm_biomass$Year <- ('2009')
Rock_Key_Shallow_2009_comm_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2010 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2010.xls")

Rock_Key_Shallow_2010_herb <- merge(Rock_Key_Shallow_2010, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2010_herb_biomass <- summarise_at(Rock_Key_Shallow_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2010_herb_biomass$Year <- ('2010')
Rock_Key_Shallow_2010_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2010_comm <- merge(Rock_Key_Shallow_2010, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2010_comm_biomass <- summarise_at(Rock_Key_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2010_comm_biomass$Year <- ('2010')
Rock_Key_Shallow_2010_comm_biomass$Reef <- ('Rock Key Shallow')

Rock_Key_Shallow_2011 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2011.xls")

Rock_Key_Shallow_2011_herb <- merge(Rock_Key_Shallow_2011, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2011_herb_biomass <- summarise_at(Rock_Key_Shallow_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2011_herb_biomass$Year <- ('2011')
Rock_Key_Shallow_2011_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2011_comm <- merge(Rock_Key_Shallow_2011, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2011_comm_biomass <- summarise_at(Rock_Key_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2011_comm_biomass$Year <- ('2011')
Rock_Key_Shallow_2011_comm_biomass$Reef <- ('Rock Key Shallow')



Rock_Key_Shallow_2012 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2012.xls")

Rock_Key_Shallow_2012_herb <- merge(Rock_Key_Shallow_2012, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2012_herb_biomass <- summarise_at(Rock_Key_Shallow_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2012_herb_biomass$Year <- ('2012')
Rock_Key_Shallow_2012_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2012_comm <- merge(Rock_Key_Shallow_2012, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2012_comm_biomass <- summarise_at(Rock_Key_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2012_comm_biomass$Year <- ('2012')
Rock_Key_Shallow_2012_comm_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2014 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2014.xls")

Rock_Key_Shallow_2014_herb <- merge(Rock_Key_Shallow_2014, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2014_herb_biomass <- summarise_at(Rock_Key_Shallow_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2014_herb_biomass$Year <- ('2014')
Rock_Key_Shallow_2014_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2014_comm <- merge(Rock_Key_Shallow_2014, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2014_comm_biomass <- summarise_at(Rock_Key_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2014_comm_biomass$Year <- ('2014')
Rock_Key_Shallow_2014_comm_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2016 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2016.xls")

Rock_Key_Shallow_2016_herb <- merge(Rock_Key_Shallow_2016, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2016_herb_biomass <- summarise_at(Rock_Key_Shallow_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2016_herb_biomass$Year <- ('2016')
Rock_Key_Shallow_2016_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2016_comm <- merge(Rock_Key_Shallow_2016, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2016_comm_biomass <- summarise_at(Rock_Key_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2016_comm_biomass$Year <- ('2016')
Rock_Key_Shallow_2016_comm_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2018 <- import("Rock_Key_Shallow/data/Rock_Key_Shallow_2018.xls")

Rock_Key_Shallow_2018_herb <- merge(Rock_Key_Shallow_2018, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2018_herb_biomass <- summarise_at(Rock_Key_Shallow_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2018_herb_biomass$Year <- ('2018')
Rock_Key_Shallow_2018_herb_biomass$Reef <- ('Rock Key Shallow')


Rock_Key_Shallow_2018_comm <- merge(Rock_Key_Shallow_2018, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2018_comm_biomass <- summarise_at(Rock_Key_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rock_Key_Shallow_2018_comm_biomass$Year <- ('2018')
Rock_Key_Shallow_2018_comm_biomass$Reef <- ('Rock Key Shallow')



### Combine all years together for herbivorous and commercial seperately



Rock_Key_Shallow_herb_1 <- rbind(Rock_Key_Shallow_1999_herb_biomass,Rock_Key_Shallow_2000_herb_biomass)
Rock_Key_Shallow_herb_2 <- rbind(Rock_Key_Shallow_herb_1,Rock_Key_Shallow_2001_herb_biomass)
Rock_Key_Shallow_herb_3 <- rbind(Rock_Key_Shallow_herb_2,Rock_Key_Shallow_2002_herb_biomass)
Rock_Key_Shallow_herb_4 <- rbind(Rock_Key_Shallow_herb_3,Rock_Key_Shallow_2003_herb_biomass)
Rock_Key_Shallow_herb_5 <- rbind(Rock_Key_Shallow_herb_4,Rock_Key_Shallow_2004_herb_biomass)
Rock_Key_Shallow_herb_6 <- rbind(Rock_Key_Shallow_herb_5,Rock_Key_Shallow_2005_herb_biomass)
Rock_Key_Shallow_herb_7 <- rbind(Rock_Key_Shallow_herb_6,Rock_Key_Shallow_2006_herb_biomass)
Rock_Key_Shallow_herb_8 <- rbind(Rock_Key_Shallow_herb_7,Rock_Key_Shallow_2007_herb_biomass)
Rock_Key_Shallow_herb_9 <- rbind(Rock_Key_Shallow_herb_8,Rock_Key_Shallow_2008_herb_biomass)
Rock_Key_Shallow_herb_10 <- rbind(Rock_Key_Shallow_herb_9,Rock_Key_Shallow_2009_herb_biomass)
Rock_Key_Shallow_herb_11<- rbind(Rock_Key_Shallow_herb_10,Rock_Key_Shallow_2010_herb_biomass)
Rock_Key_Shallow_herb_12 <- rbind(Rock_Key_Shallow_herb_11,Rock_Key_Shallow_2011_herb_biomass)
Rock_Key_Shallow_herb_13 <- rbind(Rock_Key_Shallow_herb_12,Rock_Key_Shallow_2012_herb_biomass)
Rock_Key_Shallow_herb_14 <- rbind(Rock_Key_Shallow_herb_13,Rock_Key_Shallow_2014_herb_biomass)
Rock_Key_Shallow_herb_15 <- rbind(Rock_Key_Shallow_herb_14,Rock_Key_Shallow_2016_herb_biomass)
Rock_Key_Shallow_herb_biomass_data_combined <- rbind(Rock_Key_Shallow_herb_15,Rock_Key_Shallow_2018_herb_biomass)



Rock_Key_Shallow_comm_1 <- rbind(Rock_Key_Shallow_1999_comm_biomass,Rock_Key_Shallow_2000_comm_biomass)
Rock_Key_Shallow_comm_2 <- rbind(Rock_Key_Shallow_comm_1,Rock_Key_Shallow_2001_comm_biomass)
Rock_Key_Shallow_comm_3 <- rbind(Rock_Key_Shallow_comm_2,Rock_Key_Shallow_2002_comm_biomass)
Rock_Key_Shallow_comm_4 <- rbind(Rock_Key_Shallow_comm_3,Rock_Key_Shallow_2003_comm_biomass)
Rock_Key_Shallow_comm_5 <- rbind(Rock_Key_Shallow_comm_4,Rock_Key_Shallow_2004_comm_biomass)
Rock_Key_Shallow_comm_6 <- rbind(Rock_Key_Shallow_comm_5,Rock_Key_Shallow_2005_comm_biomass)
Rock_Key_Shallow_comm_7 <- rbind(Rock_Key_Shallow_comm_6,Rock_Key_Shallow_2006_comm_biomass)
Rock_Key_Shallow_comm_8 <- rbind(Rock_Key_Shallow_comm_7,Rock_Key_Shallow_2007_comm_biomass)
Rock_Key_Shallow_comm_9 <- rbind(Rock_Key_Shallow_comm_8,Rock_Key_Shallow_2008_comm_biomass)
Rock_Key_Shallow_comm_10 <- rbind(Rock_Key_Shallow_comm_9,Rock_Key_Shallow_2009_comm_biomass)
Rock_Key_Shallow_comm_11<- rbind(Rock_Key_Shallow_comm_10,Rock_Key_Shallow_2010_comm_biomass)
Rock_Key_Shallow_comm_12 <- rbind(Rock_Key_Shallow_comm_11,Rock_Key_Shallow_2011_comm_biomass)
Rock_Key_Shallow_comm_13 <- rbind(Rock_Key_Shallow_comm_12,Rock_Key_Shallow_2012_comm_biomass)
Rock_Key_Shallow_comm_14 <- rbind(Rock_Key_Shallow_comm_13,Rock_Key_Shallow_2014_comm_biomass)
Rock_Key_Shallow_comm_15 <- rbind(Rock_Key_Shallow_comm_14,Rock_Key_Shallow_2016_comm_biomass)
Rock_Key_Shallow_comm_biomass_data_combined <- rbind(Rock_Key_Shallow_comm_15,Rock_Key_Shallow_2018_comm_biomass)



export(Rock_Key_Shallow_herb_biomass_data_combined, "Rock_Key_Shallow/data/Rock_Key_Shallow_herbivorous_biomass.csv")
export(Rock_Key_Shallow_comm_biomass_data_combined, "Rock_Key_Shallow/data/Rock_Key_Shallow_commercial_biomass.csv")



# Sand Key Deep

Sand_Key_Deep_1999 <- import("Sand_Key_Deep/data/Sand_Key_Deep_1999.xls")


Sand_Key_Deep_1999_herb <- merge(Sand_Key_Deep_1999, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_1999_herb_biomass <- summarise_at(Sand_Key_Deep_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_1999_herb_biomass$Year <- ('1999')
Sand_Key_Deep_1999_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_1999_comm <- merge(Sand_Key_Deep_1999, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_1999_comm_biomass <- summarise_at(Sand_Key_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_1999_comm_biomass$Year <- ('1999')
Sand_Key_Deep_1999_comm_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2000 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2000.xls")

Sand_Key_Deep_2000_herb <- merge(Sand_Key_Deep_2000, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2000_herb_biomass <- summarise_at(Sand_Key_Deep_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2000_herb_biomass$Year <- ('2000')
Sand_Key_Deep_2000_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2000_comm <- merge(Sand_Key_Deep_2000, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2000_comm_biomass <- summarise_at(Sand_Key_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2000_comm_biomass$Year <- ('2000')
Sand_Key_Deep_2000_comm_biomass$Reef <- ('Sand Key Deep')

Sand_Key_Deep_2001 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2001.xls")

Sand_Key_Deep_2001_herb <- merge(Sand_Key_Deep_2001, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2001_herb_biomass <- summarise_at(Sand_Key_Deep_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2001_herb_biomass$Year <- ('2001')
Sand_Key_Deep_2001_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2001_comm <- merge(Sand_Key_Deep_2001, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2001_comm_biomass <- summarise_at(Sand_Key_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2001_comm_biomass$Year <- ('2001')
Sand_Key_Deep_2001_comm_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2002 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2002.xls")

Sand_Key_Deep_2002_herb <- merge(Sand_Key_Deep_2002, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2002_herb_biomass <- summarise_at(Sand_Key_Deep_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2002_herb_biomass$Year <- ('2002')
Sand_Key_Deep_2002_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2002_comm <- merge(Sand_Key_Deep_2002, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2002_comm_biomass <- summarise_at(Sand_Key_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2002_comm_biomass$Year <- ('2002')
Sand_Key_Deep_2002_comm_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2003 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2003.xls")

Sand_Key_Deep_2003_herb <- merge(Sand_Key_Deep_2003, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2003_herb_biomass <- summarise_at(Sand_Key_Deep_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2003_herb_biomass$Year <- ('2003')
Sand_Key_Deep_2003_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2003_comm <- merge(Sand_Key_Deep_2003, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2003_comm_biomass <- summarise_at(Sand_Key_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2003_comm_biomass$Year <- ('2003')
Sand_Key_Deep_2003_comm_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2004 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2004.xls")

Sand_Key_Deep_2004_herb <- merge(Sand_Key_Deep_2004, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2004_herb_biomass <- summarise_at(Sand_Key_Deep_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2004_herb_biomass$Year <- ('2004')
Sand_Key_Deep_2004_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2004_comm <- merge(Sand_Key_Deep_2004, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2004_comm_biomass <- summarise_at(Sand_Key_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2004_comm_biomass$Year <- ('2004')
Sand_Key_Deep_2004_comm_biomass$Reef <- ('Sand Key Deep')

Sand_Key_Deep_2005 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2005.xls")

Sand_Key_Deep_2005_herb <- merge(Sand_Key_Deep_2005, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2005_herb_biomass <- summarise_at(Sand_Key_Deep_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2005_herb_biomass$Year <- ('2005')
Sand_Key_Deep_2005_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2005_comm <- merge(Sand_Key_Deep_2005, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2005_comm_biomass <- summarise_at(Sand_Key_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2005_comm_biomass$Year <- ('2005')
Sand_Key_Deep_2005_comm_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2006 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2006.xls")

Sand_Key_Deep_2006_herb <- merge(Sand_Key_Deep_2006, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2006_herb_biomass <- summarise_at(Sand_Key_Deep_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2006_herb_biomass$Year <- ('2006')
Sand_Key_Deep_2006_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2006_comm <- merge(Sand_Key_Deep_2006, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2006_comm_biomass <- summarise_at(Sand_Key_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2006_comm_biomass$Year <- ('2006')
Sand_Key_Deep_2006_comm_biomass$Reef <- ('Sand Key Deep')

Sand_Key_Deep_2007 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2007.xls")

Sand_Key_Deep_2007_herb <- merge(Sand_Key_Deep_2007, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2007_herb_biomass <- summarise_at(Sand_Key_Deep_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2007_herb_biomass$Year <- ('2007')
Sand_Key_Deep_2007_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2007_comm <- merge(Sand_Key_Deep_2007, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2007_comm_biomass <- summarise_at(Sand_Key_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2007_comm_biomass$Year <- ('2007')
Sand_Key_Deep_2007_comm_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2008 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2008.xls")

Sand_Key_Deep_2008_herb <- merge(Sand_Key_Deep_2008, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2008_herb_biomass <- summarise_at(Sand_Key_Deep_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2008_herb_biomass$Year <- ('2008')
Sand_Key_Deep_2008_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2008_comm <- merge(Sand_Key_Deep_2008, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2008_comm_biomass <- summarise_at(Sand_Key_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2008_comm_biomass$Year <- ('2008')
Sand_Key_Deep_2008_comm_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2009 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2009.xls")

Sand_Key_Deep_2009_herb <- merge(Sand_Key_Deep_2009, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2009_herb_biomass <- summarise_at(Sand_Key_Deep_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2009_herb_biomass$Year <- ('2009')
Sand_Key_Deep_2009_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2009_comm <- merge(Sand_Key_Deep_2009, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2009_comm_biomass <- summarise_at(Sand_Key_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2009_comm_biomass$Year <- ('2009')
Sand_Key_Deep_2009_comm_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2010 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2010.xls")

Sand_Key_Deep_2010_herb <- merge(Sand_Key_Deep_2010, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2010_herb_biomass <- summarise_at(Sand_Key_Deep_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2010_herb_biomass$Year <- ('2010')
Sand_Key_Deep_2010_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2010_comm <- merge(Sand_Key_Deep_2010, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2010_comm_biomass <- summarise_at(Sand_Key_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2010_comm_biomass$Year <- ('2010')
Sand_Key_Deep_2010_comm_biomass$Reef <- ('Sand Key Deep')

Sand_Key_Deep_2011 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2011.xls")

Sand_Key_Deep_2011_herb <- merge(Sand_Key_Deep_2011, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2011_herb_biomass <- summarise_at(Sand_Key_Deep_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2011_herb_biomass$Year <- ('2011')
Sand_Key_Deep_2011_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2011_comm <- merge(Sand_Key_Deep_2011, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2011_comm_biomass <- summarise_at(Sand_Key_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2011_comm_biomass$Year <- ('2011')
Sand_Key_Deep_2011_comm_biomass$Reef <- ('Sand Key Deep')



Sand_Key_Deep_2012 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2012.xls")

Sand_Key_Deep_2012_herb <- merge(Sand_Key_Deep_2012, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2012_herb_biomass <- summarise_at(Sand_Key_Deep_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2012_herb_biomass$Year <- ('2012')
Sand_Key_Deep_2012_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2012_comm <- merge(Sand_Key_Deep_2012, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2012_comm_biomass <- summarise_at(Sand_Key_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2012_comm_biomass$Year <- ('2012')
Sand_Key_Deep_2012_comm_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2014 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2014.xls")

Sand_Key_Deep_2014_herb <- merge(Sand_Key_Deep_2014, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2014_herb_biomass <- summarise_at(Sand_Key_Deep_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2014_herb_biomass$Year <- ('2014')
Sand_Key_Deep_2014_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2014_comm <- merge(Sand_Key_Deep_2014, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2014_comm_biomass <- summarise_at(Sand_Key_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2014_comm_biomass$Year <- ('2014')
Sand_Key_Deep_2014_comm_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2016 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2016.xls")

Sand_Key_Deep_2016_herb <- merge(Sand_Key_Deep_2016, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2016_herb_biomass <- summarise_at(Sand_Key_Deep_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2016_herb_biomass$Year <- ('2016')
Sand_Key_Deep_2016_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2016_comm <- merge(Sand_Key_Deep_2016, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2016_comm_biomass <- summarise_at(Sand_Key_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2016_comm_biomass$Year <- ('2016')
Sand_Key_Deep_2016_comm_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2018 <- import("Sand_Key_Deep/data/Sand_Key_Deep_2018.xls")

Sand_Key_Deep_2018_herb <- merge(Sand_Key_Deep_2018, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2018_herb_biomass <- summarise_at(Sand_Key_Deep_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2018_herb_biomass$Year <- ('2018')
Sand_Key_Deep_2018_herb_biomass$Reef <- ('Sand Key Deep')


Sand_Key_Deep_2018_comm <- merge(Sand_Key_Deep_2018, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2018_comm_biomass <- summarise_at(Sand_Key_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Deep_2018_comm_biomass$Year <- ('2018')
Sand_Key_Deep_2018_comm_biomass$Reef <- ('Sand Key Deep')



### Combine all years together for herbivorous and commercial seperately



Sand_Key_Deep_herb_1 <- rbind(Sand_Key_Deep_1999_herb_biomass,Sand_Key_Deep_2000_herb_biomass)
Sand_Key_Deep_herb_2 <- rbind(Sand_Key_Deep_herb_1,Sand_Key_Deep_2001_herb_biomass)
Sand_Key_Deep_herb_3 <- rbind(Sand_Key_Deep_herb_2,Sand_Key_Deep_2002_herb_biomass)
Sand_Key_Deep_herb_4 <- rbind(Sand_Key_Deep_herb_3,Sand_Key_Deep_2003_herb_biomass)
Sand_Key_Deep_herb_5 <- rbind(Sand_Key_Deep_herb_4,Sand_Key_Deep_2004_herb_biomass)
Sand_Key_Deep_herb_6 <- rbind(Sand_Key_Deep_herb_5,Sand_Key_Deep_2005_herb_biomass)
Sand_Key_Deep_herb_7 <- rbind(Sand_Key_Deep_herb_6,Sand_Key_Deep_2006_herb_biomass)
Sand_Key_Deep_herb_8 <- rbind(Sand_Key_Deep_herb_7,Sand_Key_Deep_2007_herb_biomass)
Sand_Key_Deep_herb_9 <- rbind(Sand_Key_Deep_herb_8,Sand_Key_Deep_2008_herb_biomass)
Sand_Key_Deep_herb_10 <- rbind(Sand_Key_Deep_herb_9,Sand_Key_Deep_2009_herb_biomass)
Sand_Key_Deep_herb_11<- rbind(Sand_Key_Deep_herb_10,Sand_Key_Deep_2010_herb_biomass)
Sand_Key_Deep_herb_12 <- rbind(Sand_Key_Deep_herb_11,Sand_Key_Deep_2011_herb_biomass)
Sand_Key_Deep_herb_13 <- rbind(Sand_Key_Deep_herb_12,Sand_Key_Deep_2012_herb_biomass)
Sand_Key_Deep_herb_14 <- rbind(Sand_Key_Deep_herb_13,Sand_Key_Deep_2014_herb_biomass)
Sand_Key_Deep_herb_15 <- rbind(Sand_Key_Deep_herb_14,Sand_Key_Deep_2016_herb_biomass)
Sand_Key_Deep_herb_biomass_data_combined <- rbind(Sand_Key_Deep_herb_15,Sand_Key_Deep_2018_herb_biomass)



Sand_Key_Deep_comm_1 <- rbind(Sand_Key_Deep_1999_comm_biomass,Sand_Key_Deep_2000_comm_biomass)
Sand_Key_Deep_comm_2 <- rbind(Sand_Key_Deep_comm_1,Sand_Key_Deep_2001_comm_biomass)
Sand_Key_Deep_comm_3 <- rbind(Sand_Key_Deep_comm_2,Sand_Key_Deep_2002_comm_biomass)
Sand_Key_Deep_comm_4 <- rbind(Sand_Key_Deep_comm_3,Sand_Key_Deep_2003_comm_biomass)
Sand_Key_Deep_comm_5 <- rbind(Sand_Key_Deep_comm_4,Sand_Key_Deep_2004_comm_biomass)
Sand_Key_Deep_comm_6 <- rbind(Sand_Key_Deep_comm_5,Sand_Key_Deep_2005_comm_biomass)
Sand_Key_Deep_comm_7 <- rbind(Sand_Key_Deep_comm_6,Sand_Key_Deep_2006_comm_biomass)
Sand_Key_Deep_comm_8 <- rbind(Sand_Key_Deep_comm_7,Sand_Key_Deep_2007_comm_biomass)
Sand_Key_Deep_comm_9 <- rbind(Sand_Key_Deep_comm_8,Sand_Key_Deep_2008_comm_biomass)
Sand_Key_Deep_comm_10 <- rbind(Sand_Key_Deep_comm_9,Sand_Key_Deep_2009_comm_biomass)
Sand_Key_Deep_comm_11<- rbind(Sand_Key_Deep_comm_10,Sand_Key_Deep_2010_comm_biomass)
Sand_Key_Deep_comm_12 <- rbind(Sand_Key_Deep_comm_11,Sand_Key_Deep_2011_comm_biomass)
Sand_Key_Deep_comm_13 <- rbind(Sand_Key_Deep_comm_12,Sand_Key_Deep_2012_comm_biomass)
Sand_Key_Deep_comm_14 <- rbind(Sand_Key_Deep_comm_13,Sand_Key_Deep_2014_comm_biomass)
Sand_Key_Deep_comm_15 <- rbind(Sand_Key_Deep_comm_14,Sand_Key_Deep_2016_comm_biomass)
Sand_Key_Deep_comm_biomass_data_combined <- rbind(Sand_Key_Deep_comm_15,Sand_Key_Deep_2018_comm_biomass)



export(Sand_Key_Deep_herb_biomass_data_combined, "Sand_Key_Deep/data/Sand_Key_Deep_herbivorous_biomass.csv")
export(Sand_Key_Deep_comm_biomass_data_combined, "Sand_Key_Deep/data/Sand_Key_Deep_commercial_biomass.csv")





# Sand Key Shallow

Sand_Key_Shallow_1999 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_1999.xls")


Sand_Key_Shallow_1999_herb <- merge(Sand_Key_Shallow_1999, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_1999_herb_biomass <- summarise_at(Sand_Key_Shallow_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_1999_herb_biomass$Year <- ('1999')
Sand_Key_Shallow_1999_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_1999_comm <- merge(Sand_Key_Shallow_1999, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_1999_comm_biomass <- summarise_at(Sand_Key_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_1999_comm_biomass$Year <- ('1999')
Sand_Key_Shallow_1999_comm_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2000 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2000.xls")

Sand_Key_Shallow_2000_herb <- merge(Sand_Key_Shallow_2000, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2000_herb_biomass <- summarise_at(Sand_Key_Shallow_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2000_herb_biomass$Year <- ('2000')
Sand_Key_Shallow_2000_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2000_comm <- merge(Sand_Key_Shallow_2000, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2000_comm_biomass <- summarise_at(Sand_Key_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2000_comm_biomass$Year <- ('2000')
Sand_Key_Shallow_2000_comm_biomass$Reef <- ('Sand Key Shallow')

Sand_Key_Shallow_2001 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2001.xls")

Sand_Key_Shallow_2001_herb <- merge(Sand_Key_Shallow_2001, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2001_herb_biomass <- summarise_at(Sand_Key_Shallow_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2001_herb_biomass$Year <- ('2001')
Sand_Key_Shallow_2001_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2001_comm <- merge(Sand_Key_Shallow_2001, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2001_comm_biomass <- summarise_at(Sand_Key_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2001_comm_biomass$Year <- ('2001')
Sand_Key_Shallow_2001_comm_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2002 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2002.xls")

Sand_Key_Shallow_2002_herb <- merge(Sand_Key_Shallow_2002, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2002_herb_biomass <- summarise_at(Sand_Key_Shallow_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2002_herb_biomass$Year <- ('2002')
Sand_Key_Shallow_2002_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2002_comm <- merge(Sand_Key_Shallow_2002, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2002_comm_biomass <- summarise_at(Sand_Key_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2002_comm_biomass$Year <- ('2002')
Sand_Key_Shallow_2002_comm_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2003 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2003.xls")

Sand_Key_Shallow_2003_herb <- merge(Sand_Key_Shallow_2003, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2003_herb_biomass <- summarise_at(Sand_Key_Shallow_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2003_herb_biomass$Year <- ('2003')
Sand_Key_Shallow_2003_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2003_comm <- merge(Sand_Key_Shallow_2003, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2003_comm_biomass <- summarise_at(Sand_Key_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2003_comm_biomass$Year <- ('2003')
Sand_Key_Shallow_2003_comm_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2004 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2004.xls")

Sand_Key_Shallow_2004_herb <- merge(Sand_Key_Shallow_2004, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2004_herb_biomass <- summarise_at(Sand_Key_Shallow_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2004_herb_biomass$Year <- ('2004')
Sand_Key_Shallow_2004_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2004_comm <- merge(Sand_Key_Shallow_2004, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2004_comm_biomass <- summarise_at(Sand_Key_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2004_comm_biomass$Year <- ('2004')
Sand_Key_Shallow_2004_comm_biomass$Reef <- ('Sand Key Shallow')

Sand_Key_Shallow_2005 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2005.xls")

Sand_Key_Shallow_2005_herb <- merge(Sand_Key_Shallow_2005, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2005_herb_biomass <- summarise_at(Sand_Key_Shallow_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2005_herb_biomass$Year <- ('2005')
Sand_Key_Shallow_2005_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2005_comm <- merge(Sand_Key_Shallow_2005, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2005_comm_biomass <- summarise_at(Sand_Key_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2005_comm_biomass$Year <- ('2005')
Sand_Key_Shallow_2005_comm_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2006 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2006.xls")

Sand_Key_Shallow_2006_herb <- merge(Sand_Key_Shallow_2006, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2006_herb_biomass <- summarise_at(Sand_Key_Shallow_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2006_herb_biomass$Year <- ('2006')
Sand_Key_Shallow_2006_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2006_comm <- merge(Sand_Key_Shallow_2006, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2006_comm_biomass <- summarise_at(Sand_Key_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2006_comm_biomass$Year <- ('2006')
Sand_Key_Shallow_2006_comm_biomass$Reef <- ('Sand Key Shallow')

Sand_Key_Shallow_2007 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2007.xls")

Sand_Key_Shallow_2007_herb <- merge(Sand_Key_Shallow_2007, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2007_herb_biomass <- summarise_at(Sand_Key_Shallow_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2007_herb_biomass$Year <- ('2007')
Sand_Key_Shallow_2007_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2007_comm <- merge(Sand_Key_Shallow_2007, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2007_comm_biomass <- summarise_at(Sand_Key_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2007_comm_biomass$Year <- ('2007')
Sand_Key_Shallow_2007_comm_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2008 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2008.xls")

Sand_Key_Shallow_2008_herb <- merge(Sand_Key_Shallow_2008, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2008_herb_biomass <- summarise_at(Sand_Key_Shallow_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2008_herb_biomass$Year <- ('2008')
Sand_Key_Shallow_2008_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2008_comm <- merge(Sand_Key_Shallow_2008, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2008_comm_biomass <- summarise_at(Sand_Key_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2008_comm_biomass$Year <- ('2008')
Sand_Key_Shallow_2008_comm_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2009 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2009.xls")

Sand_Key_Shallow_2009_herb <- merge(Sand_Key_Shallow_2009, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2009_herb_biomass <- summarise_at(Sand_Key_Shallow_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2009_herb_biomass$Year <- ('2009')
Sand_Key_Shallow_2009_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2009_comm <- merge(Sand_Key_Shallow_2009, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2009_comm_biomass <- summarise_at(Sand_Key_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2009_comm_biomass$Year <- ('2009')
Sand_Key_Shallow_2009_comm_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2010 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2010.xls")

Sand_Key_Shallow_2010_herb <- merge(Sand_Key_Shallow_2010, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2010_herb_biomass <- summarise_at(Sand_Key_Shallow_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2010_herb_biomass$Year <- ('2010')
Sand_Key_Shallow_2010_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2010_comm <- merge(Sand_Key_Shallow_2010, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2010_comm_biomass <- summarise_at(Sand_Key_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2010_comm_biomass$Year <- ('2010')
Sand_Key_Shallow_2010_comm_biomass$Reef <- ('Sand Key Shallow')

Sand_Key_Shallow_2011 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2011.xls")

Sand_Key_Shallow_2011_herb <- merge(Sand_Key_Shallow_2011, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2011_herb_biomass <- summarise_at(Sand_Key_Shallow_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2011_herb_biomass$Year <- ('2011')
Sand_Key_Shallow_2011_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2011_comm <- merge(Sand_Key_Shallow_2011, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2011_comm_biomass <- summarise_at(Sand_Key_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2011_comm_biomass$Year <- ('2011')
Sand_Key_Shallow_2011_comm_biomass$Reef <- ('Sand Key Shallow')



Sand_Key_Shallow_2012 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2012.xls")

Sand_Key_Shallow_2012_herb <- merge(Sand_Key_Shallow_2012, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2012_herb_biomass <- summarise_at(Sand_Key_Shallow_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2012_herb_biomass$Year <- ('2012')
Sand_Key_Shallow_2012_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2012_comm <- merge(Sand_Key_Shallow_2012, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2012_comm_biomass <- summarise_at(Sand_Key_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2012_comm_biomass$Year <- ('2012')
Sand_Key_Shallow_2012_comm_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2014 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2014.xls")

Sand_Key_Shallow_2014_herb <- merge(Sand_Key_Shallow_2014, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2014_herb_biomass <- summarise_at(Sand_Key_Shallow_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2014_herb_biomass$Year <- ('2014')
Sand_Key_Shallow_2014_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2014_comm <- merge(Sand_Key_Shallow_2014, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2014_comm_biomass <- summarise_at(Sand_Key_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2014_comm_biomass$Year <- ('2014')
Sand_Key_Shallow_2014_comm_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2016 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2016.xls")

Sand_Key_Shallow_2016_herb <- merge(Sand_Key_Shallow_2016, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2016_herb_biomass <- summarise_at(Sand_Key_Shallow_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2016_herb_biomass$Year <- ('2016')
Sand_Key_Shallow_2016_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2016_comm <- merge(Sand_Key_Shallow_2016, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2016_comm_biomass <- summarise_at(Sand_Key_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2016_comm_biomass$Year <- ('2016')
Sand_Key_Shallow_2016_comm_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2018 <- import("Sand_Key_Shallow/data/Sand_Key_Shallow_2018.xls")

Sand_Key_Shallow_2018_herb <- merge(Sand_Key_Shallow_2018, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2018_herb_biomass <- summarise_at(Sand_Key_Shallow_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2018_herb_biomass$Year <- ('2018')
Sand_Key_Shallow_2018_herb_biomass$Reef <- ('Sand Key Shallow')


Sand_Key_Shallow_2018_comm <- merge(Sand_Key_Shallow_2018, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2018_comm_biomass <- summarise_at(Sand_Key_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sand_Key_Shallow_2018_comm_biomass$Year <- ('2018')
Sand_Key_Shallow_2018_comm_biomass$Reef <- ('Sand Key Shallow')



### Combine all years together for herbivorous and commercial seperately



Sand_Key_Shallow_herb_1 <- rbind(Sand_Key_Shallow_1999_herb_biomass,Sand_Key_Shallow_2000_herb_biomass)
Sand_Key_Shallow_herb_2 <- rbind(Sand_Key_Shallow_herb_1,Sand_Key_Shallow_2001_herb_biomass)
Sand_Key_Shallow_herb_3 <- rbind(Sand_Key_Shallow_herb_2,Sand_Key_Shallow_2002_herb_biomass)
Sand_Key_Shallow_herb_4 <- rbind(Sand_Key_Shallow_herb_3,Sand_Key_Shallow_2003_herb_biomass)
Sand_Key_Shallow_herb_5 <- rbind(Sand_Key_Shallow_herb_4,Sand_Key_Shallow_2004_herb_biomass)
Sand_Key_Shallow_herb_6 <- rbind(Sand_Key_Shallow_herb_5,Sand_Key_Shallow_2005_herb_biomass)
Sand_Key_Shallow_herb_7 <- rbind(Sand_Key_Shallow_herb_6,Sand_Key_Shallow_2006_herb_biomass)
Sand_Key_Shallow_herb_8 <- rbind(Sand_Key_Shallow_herb_7,Sand_Key_Shallow_2007_herb_biomass)
Sand_Key_Shallow_herb_9 <- rbind(Sand_Key_Shallow_herb_8,Sand_Key_Shallow_2008_herb_biomass)
Sand_Key_Shallow_herb_10 <- rbind(Sand_Key_Shallow_herb_9,Sand_Key_Shallow_2009_herb_biomass)
Sand_Key_Shallow_herb_11<- rbind(Sand_Key_Shallow_herb_10,Sand_Key_Shallow_2010_herb_biomass)
Sand_Key_Shallow_herb_12 <- rbind(Sand_Key_Shallow_herb_11,Sand_Key_Shallow_2011_herb_biomass)
Sand_Key_Shallow_herb_13 <- rbind(Sand_Key_Shallow_herb_12,Sand_Key_Shallow_2012_herb_biomass)
Sand_Key_Shallow_herb_14 <- rbind(Sand_Key_Shallow_herb_13,Sand_Key_Shallow_2014_herb_biomass)
Sand_Key_Shallow_herb_15 <- rbind(Sand_Key_Shallow_herb_14,Sand_Key_Shallow_2016_herb_biomass)
Sand_Key_Shallow_herb_biomass_data_combined <- rbind(Sand_Key_Shallow_herb_15,Sand_Key_Shallow_2018_herb_biomass)



Sand_Key_Shallow_comm_1 <- rbind(Sand_Key_Shallow_1999_comm_biomass,Sand_Key_Shallow_2000_comm_biomass)
Sand_Key_Shallow_comm_2 <- rbind(Sand_Key_Shallow_comm_1,Sand_Key_Shallow_2001_comm_biomass)
Sand_Key_Shallow_comm_3 <- rbind(Sand_Key_Shallow_comm_2,Sand_Key_Shallow_2002_comm_biomass)
Sand_Key_Shallow_comm_4 <- rbind(Sand_Key_Shallow_comm_3,Sand_Key_Shallow_2003_comm_biomass)
Sand_Key_Shallow_comm_5 <- rbind(Sand_Key_Shallow_comm_4,Sand_Key_Shallow_2004_comm_biomass)
Sand_Key_Shallow_comm_6 <- rbind(Sand_Key_Shallow_comm_5,Sand_Key_Shallow_2005_comm_biomass)
Sand_Key_Shallow_comm_7 <- rbind(Sand_Key_Shallow_comm_6,Sand_Key_Shallow_2006_comm_biomass)
Sand_Key_Shallow_comm_8 <- rbind(Sand_Key_Shallow_comm_7,Sand_Key_Shallow_2007_comm_biomass)
Sand_Key_Shallow_comm_9 <- rbind(Sand_Key_Shallow_comm_8,Sand_Key_Shallow_2008_comm_biomass)
Sand_Key_Shallow_comm_10 <- rbind(Sand_Key_Shallow_comm_9,Sand_Key_Shallow_2009_comm_biomass)
Sand_Key_Shallow_comm_11<- rbind(Sand_Key_Shallow_comm_10,Sand_Key_Shallow_2010_comm_biomass)
Sand_Key_Shallow_comm_12 <- rbind(Sand_Key_Shallow_comm_11,Sand_Key_Shallow_2011_comm_biomass)
Sand_Key_Shallow_comm_13 <- rbind(Sand_Key_Shallow_comm_12,Sand_Key_Shallow_2012_comm_biomass)
Sand_Key_Shallow_comm_14 <- rbind(Sand_Key_Shallow_comm_13,Sand_Key_Shallow_2014_comm_biomass)
Sand_Key_Shallow_comm_15 <- rbind(Sand_Key_Shallow_comm_14,Sand_Key_Shallow_2016_comm_biomass)
Sand_Key_Shallow_comm_biomass_data_combined <- rbind(Sand_Key_Shallow_comm_15,Sand_Key_Shallow_2018_comm_biomass)



export(Sand_Key_Shallow_herb_biomass_data_combined, "Sand_Key_Shallow/data/Sand_Key_Shallow_herbivorous_biomass.csv")
export(Sand_Key_Shallow_comm_biomass_data_combined, "Sand_Key_Shallow/data/Sand_Key_Shallow_commercial_biomass.csv")



# West Washer Woman

West_Washer_Woman_1999 <- import("West_Washer_Woman/data/West_Washer_1999.xls")


West_Washer_Woman_1999_herb <- merge(West_Washer_Woman_1999, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_1999_herb_biomass <- summarise_at(West_Washer_Woman_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_1999_herb_biomass$Year <- ('1999')
West_Washer_Woman_1999_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_1999_comm <- merge(West_Washer_Woman_1999, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_1999_comm_biomass <- summarise_at(West_Washer_Woman_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_1999_comm_biomass$Year <- ('1999')
West_Washer_Woman_1999_comm_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2000 <- import("West_Washer_Woman/data/West_Washer_2000.xls")

West_Washer_Woman_2000_herb <- merge(West_Washer_Woman_2000, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2000_herb_biomass <- summarise_at(West_Washer_Woman_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2000_herb_biomass$Year <- ('2000')
West_Washer_Woman_2000_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2000_comm <- merge(West_Washer_Woman_2000, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2000_comm_biomass <- summarise_at(West_Washer_Woman_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2000_comm_biomass$Year <- ('2000')
West_Washer_Woman_2000_comm_biomass$Reef <- ('West Washer Woman')

West_Washer_Woman_2001 <- import("West_Washer_Woman/data/West_Washer_2001.xls")

West_Washer_Woman_2001_herb <- merge(West_Washer_Woman_2001, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2001_herb_biomass <- summarise_at(West_Washer_Woman_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2001_herb_biomass$Year <- ('2001')
West_Washer_Woman_2001_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2001_comm <- merge(West_Washer_Woman_2001, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2001_comm_biomass <- summarise_at(West_Washer_Woman_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2001_comm_biomass$Year <- ('2001')
West_Washer_Woman_2001_comm_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2002 <- import("West_Washer_Woman/data/West_Washer_2002.xls")

West_Washer_Woman_2002_herb <- merge(West_Washer_Woman_2002, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2002_herb_biomass <- summarise_at(West_Washer_Woman_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2002_herb_biomass$Year <- ('2002')
West_Washer_Woman_2002_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2002_comm <- merge(West_Washer_Woman_2002, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2002_comm_biomass <- summarise_at(West_Washer_Woman_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2002_comm_biomass$Year <- ('2002')
West_Washer_Woman_2002_comm_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2003 <- import("West_Washer_Woman/data/West_Washer_2003.xls")

West_Washer_Woman_2003_herb <- merge(West_Washer_Woman_2003, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2003_herb_biomass <- summarise_at(West_Washer_Woman_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2003_herb_biomass$Year <- ('2003')
West_Washer_Woman_2003_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2003_comm <- merge(West_Washer_Woman_2003, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2003_comm_biomass <- summarise_at(West_Washer_Woman_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2003_comm_biomass$Year <- ('2003')
West_Washer_Woman_2003_comm_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2004 <- import("West_Washer_Woman/data/West_Washer_2004.xls")

West_Washer_Woman_2004_herb <- merge(West_Washer_Woman_2004, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2004_herb_biomass <- summarise_at(West_Washer_Woman_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2004_herb_biomass$Year <- ('2004')
West_Washer_Woman_2004_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2004_comm <- merge(West_Washer_Woman_2004, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2004_comm_biomass <- summarise_at(West_Washer_Woman_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2004_comm_biomass$Year <- ('2004')
West_Washer_Woman_2004_comm_biomass$Reef <- ('West Washer Woman')

West_Washer_Woman_2005 <- import("West_Washer_Woman/data/West_Washer_2005.xls")

West_Washer_Woman_2005_herb <- merge(West_Washer_Woman_2005, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2005_herb_biomass <- summarise_at(West_Washer_Woman_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2005_herb_biomass$Year <- ('2005')
West_Washer_Woman_2005_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2005_comm <- merge(West_Washer_Woman_2005, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2005_comm_biomass <- summarise_at(West_Washer_Woman_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2005_comm_biomass$Year <- ('2005')
West_Washer_Woman_2005_comm_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2006 <- import("West_Washer_Woman/data/West_Washer_2006.xls")

West_Washer_Woman_2006_herb <- merge(West_Washer_Woman_2006, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2006_herb_biomass <- summarise_at(West_Washer_Woman_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2006_herb_biomass$Year <- ('2006')
West_Washer_Woman_2006_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2006_comm <- merge(West_Washer_Woman_2006, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2006_comm_biomass <- summarise_at(West_Washer_Woman_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2006_comm_biomass$Year <- ('2006')
West_Washer_Woman_2006_comm_biomass$Reef <- ('West Washer Woman')

West_Washer_Woman_2007 <- import("West_Washer_Woman/data/West_Washer_2007.xls")

West_Washer_Woman_2007_herb <- merge(West_Washer_Woman_2007, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2007_herb_biomass <- summarise_at(West_Washer_Woman_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2007_herb_biomass$Year <- ('2007')
West_Washer_Woman_2007_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2007_comm <- merge(West_Washer_Woman_2007, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2007_comm_biomass <- summarise_at(West_Washer_Woman_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2007_comm_biomass$Year <- ('2007')
West_Washer_Woman_2007_comm_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2008 <- import("West_Washer_Woman/data/West_Washer_2008.xls")

West_Washer_Woman_2008_herb <- merge(West_Washer_Woman_2008, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2008_herb_biomass <- summarise_at(West_Washer_Woman_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2008_herb_biomass$Year <- ('2008')
West_Washer_Woman_2008_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2008_comm <- merge(West_Washer_Woman_2008, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2008_comm_biomass <- summarise_at(West_Washer_Woman_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2008_comm_biomass$Year <- ('2008')
West_Washer_Woman_2008_comm_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2009 <- import("West_Washer_Woman/data/West_Washer_2009.xls")

West_Washer_Woman_2009_herb <- merge(West_Washer_Woman_2009, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2009_herb_biomass <- summarise_at(West_Washer_Woman_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2009_herb_biomass$Year <- ('2009')
West_Washer_Woman_2009_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2009_comm <- merge(West_Washer_Woman_2009, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2009_comm_biomass <- summarise_at(West_Washer_Woman_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2009_comm_biomass$Year <- ('2009')
West_Washer_Woman_2009_comm_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2010 <- import("West_Washer_Woman/data/West_Washer_2010.xls")

West_Washer_Woman_2010_herb <- merge(West_Washer_Woman_2010, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2010_herb_biomass <- summarise_at(West_Washer_Woman_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2010_herb_biomass$Year <- ('2010')
West_Washer_Woman_2010_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2010_comm <- merge(West_Washer_Woman_2010, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2010_comm_biomass <- summarise_at(West_Washer_Woman_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2010_comm_biomass$Year <- ('2010')
West_Washer_Woman_2010_comm_biomass$Reef <- ('West Washer Woman')

West_Washer_Woman_2011 <- import("West_Washer_Woman/data/West_Washer_2011.xls")

West_Washer_Woman_2011_herb <- merge(West_Washer_Woman_2011, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2011_herb_biomass <- summarise_at(West_Washer_Woman_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2011_herb_biomass$Year <- ('2011')
West_Washer_Woman_2011_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2011_comm <- merge(West_Washer_Woman_2011, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2011_comm_biomass <- summarise_at(West_Washer_Woman_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2011_comm_biomass$Year <- ('2011')
West_Washer_Woman_2011_comm_biomass$Reef <- ('West Washer Woman')



West_Washer_Woman_2012 <- import("West_Washer_Woman/data/West_Washer_2012.xls")

West_Washer_Woman_2012_herb <- merge(West_Washer_Woman_2012, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2012_herb_biomass <- summarise_at(West_Washer_Woman_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2012_herb_biomass$Year <- ('2012')
West_Washer_Woman_2012_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2012_comm <- merge(West_Washer_Woman_2012, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2012_comm_biomass <- summarise_at(West_Washer_Woman_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2012_comm_biomass$Year <- ('2012')
West_Washer_Woman_2012_comm_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2014 <- import("West_Washer_Woman/data/West_Washer_2014.xls")

West_Washer_Woman_2014_herb <- merge(West_Washer_Woman_2014, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2014_herb_biomass <- summarise_at(West_Washer_Woman_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2014_herb_biomass$Year <- ('2014')
West_Washer_Woman_2014_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2014_comm <- merge(West_Washer_Woman_2014, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2014_comm_biomass <- summarise_at(West_Washer_Woman_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2014_comm_biomass$Year <- ('2014')
West_Washer_Woman_2014_comm_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2016 <- import("West_Washer_Woman/data/West_Washer_2016.xls")

West_Washer_Woman_2016_herb <- merge(West_Washer_Woman_2016, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2016_herb_biomass <- summarise_at(West_Washer_Woman_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2016_herb_biomass$Year <- ('2016')
West_Washer_Woman_2016_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2016_comm <- merge(West_Washer_Woman_2016, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2016_comm_biomass <- summarise_at(West_Washer_Woman_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2016_comm_biomass$Year <- ('2016')
West_Washer_Woman_2016_comm_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2018 <- import("West_Washer_Woman/data/West_Washer_2018.xls")

West_Washer_Woman_2018_herb <- merge(West_Washer_Woman_2018, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2018_herb_biomass <- summarise_at(West_Washer_Woman_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2018_herb_biomass$Year <- ('2018')
West_Washer_Woman_2018_herb_biomass$Reef <- ('West Washer Woman')


West_Washer_Woman_2018_comm <- merge(West_Washer_Woman_2018, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2018_comm_biomass <- summarise_at(West_Washer_Woman_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Washer_Woman_2018_comm_biomass$Year <- ('2018')
West_Washer_Woman_2018_comm_biomass$Reef <- ('West Washer Woman')



### Combine all years together for herbivorous and commercial seperately



West_Washer_Woman_herb_1 <- rbind(West_Washer_Woman_1999_herb_biomass,West_Washer_Woman_2000_herb_biomass)
West_Washer_Woman_herb_2 <- rbind(West_Washer_Woman_herb_1,West_Washer_Woman_2001_herb_biomass)
West_Washer_Woman_herb_3 <- rbind(West_Washer_Woman_herb_2,West_Washer_Woman_2002_herb_biomass)
West_Washer_Woman_herb_4 <- rbind(West_Washer_Woman_herb_3,West_Washer_Woman_2003_herb_biomass)
West_Washer_Woman_herb_5 <- rbind(West_Washer_Woman_herb_4,West_Washer_Woman_2004_herb_biomass)
West_Washer_Woman_herb_6 <- rbind(West_Washer_Woman_herb_5,West_Washer_Woman_2005_herb_biomass)
West_Washer_Woman_herb_7 <- rbind(West_Washer_Woman_herb_6,West_Washer_Woman_2006_herb_biomass)
West_Washer_Woman_herb_8 <- rbind(West_Washer_Woman_herb_7,West_Washer_Woman_2007_herb_biomass)
West_Washer_Woman_herb_9 <- rbind(West_Washer_Woman_herb_8,West_Washer_Woman_2008_herb_biomass)
West_Washer_Woman_herb_10 <- rbind(West_Washer_Woman_herb_9,West_Washer_Woman_2009_herb_biomass)
West_Washer_Woman_herb_11<- rbind(West_Washer_Woman_herb_10,West_Washer_Woman_2010_herb_biomass)
West_Washer_Woman_herb_12 <- rbind(West_Washer_Woman_herb_11,West_Washer_Woman_2011_herb_biomass)
West_Washer_Woman_herb_13 <- rbind(West_Washer_Woman_herb_12,West_Washer_Woman_2012_herb_biomass)
West_Washer_Woman_herb_14 <- rbind(West_Washer_Woman_herb_13,West_Washer_Woman_2014_herb_biomass)
West_Washer_Woman_herb_15 <- rbind(West_Washer_Woman_herb_14,West_Washer_Woman_2016_herb_biomass)
West_Washer_Woman_herb_biomass_data_combined <- rbind(West_Washer_Woman_herb_15,West_Washer_Woman_2018_herb_biomass)



West_Washer_Woman_comm_1 <- rbind(West_Washer_Woman_1999_comm_biomass,West_Washer_Woman_2000_comm_biomass)
West_Washer_Woman_comm_2 <- rbind(West_Washer_Woman_comm_1,West_Washer_Woman_2001_comm_biomass)
West_Washer_Woman_comm_3 <- rbind(West_Washer_Woman_comm_2,West_Washer_Woman_2002_comm_biomass)
West_Washer_Woman_comm_4 <- rbind(West_Washer_Woman_comm_3,West_Washer_Woman_2003_comm_biomass)
West_Washer_Woman_comm_5 <- rbind(West_Washer_Woman_comm_4,West_Washer_Woman_2004_comm_biomass)
West_Washer_Woman_comm_6 <- rbind(West_Washer_Woman_comm_5,West_Washer_Woman_2005_comm_biomass)
West_Washer_Woman_comm_7 <- rbind(West_Washer_Woman_comm_6,West_Washer_Woman_2006_comm_biomass)
West_Washer_Woman_comm_8 <- rbind(West_Washer_Woman_comm_7,West_Washer_Woman_2007_comm_biomass)
West_Washer_Woman_comm_9 <- rbind(West_Washer_Woman_comm_8,West_Washer_Woman_2008_comm_biomass)
West_Washer_Woman_comm_10 <- rbind(West_Washer_Woman_comm_9,West_Washer_Woman_2009_comm_biomass)
West_Washer_Woman_comm_11<- rbind(West_Washer_Woman_comm_10,West_Washer_Woman_2010_comm_biomass)
West_Washer_Woman_comm_12 <- rbind(West_Washer_Woman_comm_11,West_Washer_Woman_2011_comm_biomass)
West_Washer_Woman_comm_13 <- rbind(West_Washer_Woman_comm_12,West_Washer_Woman_2012_comm_biomass)
West_Washer_Woman_comm_14 <- rbind(West_Washer_Woman_comm_13,West_Washer_Woman_2014_comm_biomass)
West_Washer_Woman_comm_15 <- rbind(West_Washer_Woman_comm_14,West_Washer_Woman_2016_comm_biomass)
West_Washer_Woman_comm_biomass_data_combined <- rbind(West_Washer_Woman_comm_15,West_Washer_Woman_2018_comm_biomass)



export(West_Washer_Woman_herb_biomass_data_combined, "West_Washer_Woman/data/West_Washer_Woman_herbivorous_biomass.csv")
export(West_Washer_Woman_comm_biomass_data_combined, "West_Washer_Woman/data/West_Washer_Woman_commercial_biomass.csv")



# Western Sambo Deep

Western_Sambo_Deep_1999 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_1999.xls")


Western_Sambo_Deep_1999_herb <- merge(Western_Sambo_Deep_1999, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_1999_herb_biomass <- summarise_at(Western_Sambo_Deep_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_1999_herb_biomass$Year <- ('1999')
Western_Sambo_Deep_1999_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_1999_comm <- merge(Western_Sambo_Deep_1999, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_1999_comm_biomass <- summarise_at(Western_Sambo_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_1999_comm_biomass$Year <- ('1999')
Western_Sambo_Deep_1999_comm_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2000 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2000.xls")

Western_Sambo_Deep_2000_herb <- merge(Western_Sambo_Deep_2000, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2000_herb_biomass <- summarise_at(Western_Sambo_Deep_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2000_herb_biomass$Year <- ('2000')
Western_Sambo_Deep_2000_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2000_comm <- merge(Western_Sambo_Deep_2000, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2000_comm_biomass <- summarise_at(Western_Sambo_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2000_comm_biomass$Year <- ('2000')
Western_Sambo_Deep_2000_comm_biomass$Reef <- ('Western Sambo Deep')

Western_Sambo_Deep_2001 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2001.xls")

Western_Sambo_Deep_2001_herb <- merge(Western_Sambo_Deep_2001, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2001_herb_biomass <- summarise_at(Western_Sambo_Deep_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2001_herb_biomass$Year <- ('2001')
Western_Sambo_Deep_2001_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2001_comm <- merge(Western_Sambo_Deep_2001, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2001_comm_biomass <- summarise_at(Western_Sambo_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2001_comm_biomass$Year <- ('2001')
Western_Sambo_Deep_2001_comm_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2002 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2002.xls")

Western_Sambo_Deep_2002_herb <- merge(Western_Sambo_Deep_2002, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2002_herb_biomass <- summarise_at(Western_Sambo_Deep_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2002_herb_biomass$Year <- ('2002')
Western_Sambo_Deep_2002_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2002_comm <- merge(Western_Sambo_Deep_2002, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2002_comm_biomass <- summarise_at(Western_Sambo_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2002_comm_biomass$Year <- ('2002')
Western_Sambo_Deep_2002_comm_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2003 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2003.xls")

Western_Sambo_Deep_2003_herb <- merge(Western_Sambo_Deep_2003, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2003_herb_biomass <- summarise_at(Western_Sambo_Deep_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2003_herb_biomass$Year <- ('2003')
Western_Sambo_Deep_2003_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2003_comm <- merge(Western_Sambo_Deep_2003, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2003_comm_biomass <- summarise_at(Western_Sambo_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2003_comm_biomass$Year <- ('2003')
Western_Sambo_Deep_2003_comm_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2004 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2004.xls")

Western_Sambo_Deep_2004_herb <- merge(Western_Sambo_Deep_2004, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2004_herb_biomass <- summarise_at(Western_Sambo_Deep_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2004_herb_biomass$Year <- ('2004')
Western_Sambo_Deep_2004_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2004_comm <- merge(Western_Sambo_Deep_2004, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2004_comm_biomass <- summarise_at(Western_Sambo_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2004_comm_biomass$Year <- ('2004')
Western_Sambo_Deep_2004_comm_biomass$Reef <- ('Western Sambo Deep')

Western_Sambo_Deep_2005 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2005.xls")

Western_Sambo_Deep_2005_herb <- merge(Western_Sambo_Deep_2005, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2005_herb_biomass <- summarise_at(Western_Sambo_Deep_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2005_herb_biomass$Year <- ('2005')
Western_Sambo_Deep_2005_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2005_comm <- merge(Western_Sambo_Deep_2005, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2005_comm_biomass <- summarise_at(Western_Sambo_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2005_comm_biomass$Year <- ('2005')
Western_Sambo_Deep_2005_comm_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2006 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2006.xls")

Western_Sambo_Deep_2006_herb <- merge(Western_Sambo_Deep_2006, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2006_herb_biomass <- summarise_at(Western_Sambo_Deep_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2006_herb_biomass$Year <- ('2006')
Western_Sambo_Deep_2006_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2006_comm <- merge(Western_Sambo_Deep_2006, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2006_comm_biomass <- summarise_at(Western_Sambo_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2006_comm_biomass$Year <- ('2006')
Western_Sambo_Deep_2006_comm_biomass$Reef <- ('Western Sambo Deep')

Western_Sambo_Deep_2007 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2007.xls")

Western_Sambo_Deep_2007_herb <- merge(Western_Sambo_Deep_2007, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2007_herb_biomass <- summarise_at(Western_Sambo_Deep_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2007_herb_biomass$Year <- ('2007')
Western_Sambo_Deep_2007_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2007_comm <- merge(Western_Sambo_Deep_2007, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2007_comm_biomass <- summarise_at(Western_Sambo_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2007_comm_biomass$Year <- ('2007')
Western_Sambo_Deep_2007_comm_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2008 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2008.xls")

Western_Sambo_Deep_2008_herb <- merge(Western_Sambo_Deep_2008, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2008_herb_biomass <- summarise_at(Western_Sambo_Deep_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2008_herb_biomass$Year <- ('2008')
Western_Sambo_Deep_2008_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2008_comm <- merge(Western_Sambo_Deep_2008, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2008_comm_biomass <- summarise_at(Western_Sambo_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2008_comm_biomass$Year <- ('2008')
Western_Sambo_Deep_2008_comm_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2009 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2009.xls")

Western_Sambo_Deep_2009_herb <- merge(Western_Sambo_Deep_2009, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2009_herb_biomass <- summarise_at(Western_Sambo_Deep_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2009_herb_biomass$Year <- ('2009')
Western_Sambo_Deep_2009_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2009_comm <- merge(Western_Sambo_Deep_2009, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2009_comm_biomass <- summarise_at(Western_Sambo_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2009_comm_biomass$Year <- ('2009')
Western_Sambo_Deep_2009_comm_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2010 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2010.xls")

Western_Sambo_Deep_2010_herb <- merge(Western_Sambo_Deep_2010, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2010_herb_biomass <- summarise_at(Western_Sambo_Deep_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2010_herb_biomass$Year <- ('2010')
Western_Sambo_Deep_2010_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2010_comm <- merge(Western_Sambo_Deep_2010, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2010_comm_biomass <- summarise_at(Western_Sambo_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2010_comm_biomass$Year <- ('2010')
Western_Sambo_Deep_2010_comm_biomass$Reef <- ('Western Sambo Deep')

Western_Sambo_Deep_2011 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2011.xls")

Western_Sambo_Deep_2011_herb <- merge(Western_Sambo_Deep_2011, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2011_herb_biomass <- summarise_at(Western_Sambo_Deep_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2011_herb_biomass$Year <- ('2011')
Western_Sambo_Deep_2011_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2011_comm <- merge(Western_Sambo_Deep_2011, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2011_comm_biomass <- summarise_at(Western_Sambo_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2011_comm_biomass$Year <- ('2011')
Western_Sambo_Deep_2011_comm_biomass$Reef <- ('Western Sambo Deep')



Western_Sambo_Deep_2012 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2012.xls")

Western_Sambo_Deep_2012_herb <- merge(Western_Sambo_Deep_2012, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2012_herb_biomass <- summarise_at(Western_Sambo_Deep_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2012_herb_biomass$Year <- ('2012')
Western_Sambo_Deep_2012_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2012_comm <- merge(Western_Sambo_Deep_2012, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2012_comm_biomass <- summarise_at(Western_Sambo_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2012_comm_biomass$Year <- ('2012')
Western_Sambo_Deep_2012_comm_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2014 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2014.xls")

Western_Sambo_Deep_2014_herb <- merge(Western_Sambo_Deep_2014, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2014_herb_biomass <- summarise_at(Western_Sambo_Deep_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2014_herb_biomass$Year <- ('2014')
Western_Sambo_Deep_2014_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2014_comm <- merge(Western_Sambo_Deep_2014, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2014_comm_biomass <- summarise_at(Western_Sambo_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2014_comm_biomass$Year <- ('2014')
Western_Sambo_Deep_2014_comm_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2016 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2016.xls")

Western_Sambo_Deep_2016_herb <- merge(Western_Sambo_Deep_2016, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2016_herb_biomass <- summarise_at(Western_Sambo_Deep_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2016_herb_biomass$Year <- ('2016')
Western_Sambo_Deep_2016_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2016_comm <- merge(Western_Sambo_Deep_2016, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2016_comm_biomass <- summarise_at(Western_Sambo_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2016_comm_biomass$Year <- ('2016')
Western_Sambo_Deep_2016_comm_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2018 <- import("Western_Sambo_Deep/data/Western_Sambo_Deep_2018.xls")

Western_Sambo_Deep_2018_herb <- merge(Western_Sambo_Deep_2018, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2018_herb_biomass <- summarise_at(Western_Sambo_Deep_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2018_herb_biomass$Year <- ('2018')
Western_Sambo_Deep_2018_herb_biomass$Reef <- ('Western Sambo Deep')


Western_Sambo_Deep_2018_comm <- merge(Western_Sambo_Deep_2018, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2018_comm_biomass <- summarise_at(Western_Sambo_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Deep_2018_comm_biomass$Year <- ('2018')
Western_Sambo_Deep_2018_comm_biomass$Reef <- ('Western Sambo Deep')



### Combine all years together for herbivorous and commercial seperately



Western_Sambo_Deep_herb_1 <- rbind(Western_Sambo_Deep_1999_herb_biomass,Western_Sambo_Deep_2000_herb_biomass)
Western_Sambo_Deep_herb_2 <- rbind(Western_Sambo_Deep_herb_1,Western_Sambo_Deep_2001_herb_biomass)
Western_Sambo_Deep_herb_3 <- rbind(Western_Sambo_Deep_herb_2,Western_Sambo_Deep_2002_herb_biomass)
Western_Sambo_Deep_herb_4 <- rbind(Western_Sambo_Deep_herb_3,Western_Sambo_Deep_2003_herb_biomass)
Western_Sambo_Deep_herb_5 <- rbind(Western_Sambo_Deep_herb_4,Western_Sambo_Deep_2004_herb_biomass)
Western_Sambo_Deep_herb_6 <- rbind(Western_Sambo_Deep_herb_5,Western_Sambo_Deep_2005_herb_biomass)
Western_Sambo_Deep_herb_7 <- rbind(Western_Sambo_Deep_herb_6,Western_Sambo_Deep_2006_herb_biomass)
Western_Sambo_Deep_herb_8 <- rbind(Western_Sambo_Deep_herb_7,Western_Sambo_Deep_2007_herb_biomass)
Western_Sambo_Deep_herb_9 <- rbind(Western_Sambo_Deep_herb_8,Western_Sambo_Deep_2008_herb_biomass)
Western_Sambo_Deep_herb_10 <- rbind(Western_Sambo_Deep_herb_9,Western_Sambo_Deep_2009_herb_biomass)
Western_Sambo_Deep_herb_11<- rbind(Western_Sambo_Deep_herb_10,Western_Sambo_Deep_2010_herb_biomass)
Western_Sambo_Deep_herb_12 <- rbind(Western_Sambo_Deep_herb_11,Western_Sambo_Deep_2011_herb_biomass)
Western_Sambo_Deep_herb_13 <- rbind(Western_Sambo_Deep_herb_12,Western_Sambo_Deep_2012_herb_biomass)
Western_Sambo_Deep_herb_14 <- rbind(Western_Sambo_Deep_herb_13,Western_Sambo_Deep_2014_herb_biomass)
Western_Sambo_Deep_herb_15 <- rbind(Western_Sambo_Deep_herb_14,Western_Sambo_Deep_2016_herb_biomass)
Western_Sambo_Deep_herb_biomass_data_combined <- rbind(Western_Sambo_Deep_herb_15,Western_Sambo_Deep_2018_herb_biomass)



Western_Sambo_Deep_comm_1 <- rbind(Western_Sambo_Deep_1999_comm_biomass,Western_Sambo_Deep_2000_comm_biomass)
Western_Sambo_Deep_comm_2 <- rbind(Western_Sambo_Deep_comm_1,Western_Sambo_Deep_2001_comm_biomass)
Western_Sambo_Deep_comm_3 <- rbind(Western_Sambo_Deep_comm_2,Western_Sambo_Deep_2002_comm_biomass)
Western_Sambo_Deep_comm_4 <- rbind(Western_Sambo_Deep_comm_3,Western_Sambo_Deep_2003_comm_biomass)
Western_Sambo_Deep_comm_5 <- rbind(Western_Sambo_Deep_comm_4,Western_Sambo_Deep_2004_comm_biomass)
Western_Sambo_Deep_comm_6 <- rbind(Western_Sambo_Deep_comm_5,Western_Sambo_Deep_2005_comm_biomass)
Western_Sambo_Deep_comm_7 <- rbind(Western_Sambo_Deep_comm_6,Western_Sambo_Deep_2006_comm_biomass)
Western_Sambo_Deep_comm_8 <- rbind(Western_Sambo_Deep_comm_7,Western_Sambo_Deep_2007_comm_biomass)
Western_Sambo_Deep_comm_9 <- rbind(Western_Sambo_Deep_comm_8,Western_Sambo_Deep_2008_comm_biomass)
Western_Sambo_Deep_comm_10 <- rbind(Western_Sambo_Deep_comm_9,Western_Sambo_Deep_2009_comm_biomass)
Western_Sambo_Deep_comm_11<- rbind(Western_Sambo_Deep_comm_10,Western_Sambo_Deep_2010_comm_biomass)
Western_Sambo_Deep_comm_12 <- rbind(Western_Sambo_Deep_comm_11,Western_Sambo_Deep_2011_comm_biomass)
Western_Sambo_Deep_comm_13 <- rbind(Western_Sambo_Deep_comm_12,Western_Sambo_Deep_2012_comm_biomass)
Western_Sambo_Deep_comm_14 <- rbind(Western_Sambo_Deep_comm_13,Western_Sambo_Deep_2014_comm_biomass)
Western_Sambo_Deep_comm_15 <- rbind(Western_Sambo_Deep_comm_14,Western_Sambo_Deep_2016_comm_biomass)
Western_Sambo_Deep_comm_biomass_data_combined <- rbind(Western_Sambo_Deep_comm_15,Western_Sambo_Deep_2018_comm_biomass)



export(Western_Sambo_Deep_herb_biomass_data_combined, "Western_Sambo_Deep/data/Western_Sambo_Deep_herbivorous_biomass.csv")
export(Western_Sambo_Deep_comm_biomass_data_combined, "Western_Sambo_Deep/data/Western_Sambo_Deep_commercial_biomass.csv")



# Western Sambo Shallow


Western_Sambo_Shallow_1999 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_1999.xls")


Western_Sambo_Shallow_1999_herb <- merge(Western_Sambo_Shallow_1999, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_1999_herb_biomass <- summarise_at(Western_Sambo_Shallow_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_1999_herb_biomass$Year <- ('1999')
Western_Sambo_Shallow_1999_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_1999_comm <- merge(Western_Sambo_Shallow_1999, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_1999_comm_biomass <- summarise_at(Western_Sambo_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_1999_comm_biomass$Year <- ('1999')
Western_Sambo_Shallow_1999_comm_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2000 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2000.xls")

Western_Sambo_Shallow_2000_herb <- merge(Western_Sambo_Shallow_2000, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2000_herb_biomass <- summarise_at(Western_Sambo_Shallow_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2000_herb_biomass$Year <- ('2000')
Western_Sambo_Shallow_2000_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2000_comm <- merge(Western_Sambo_Shallow_2000, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2000_comm_biomass <- summarise_at(Western_Sambo_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2000_comm_biomass$Year <- ('2000')
Western_Sambo_Shallow_2000_comm_biomass$Reef <- ('Western Sambo Shallow')

Western_Sambo_Shallow_2001 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2001.xls")

Western_Sambo_Shallow_2001_herb <- merge(Western_Sambo_Shallow_2001, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2001_herb_biomass <- summarise_at(Western_Sambo_Shallow_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2001_herb_biomass$Year <- ('2001')
Western_Sambo_Shallow_2001_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2001_comm <- merge(Western_Sambo_Shallow_2001, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2001_comm_biomass <- summarise_at(Western_Sambo_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2001_comm_biomass$Year <- ('2001')
Western_Sambo_Shallow_2001_comm_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2002 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2002.xls")

Western_Sambo_Shallow_2002_herb <- merge(Western_Sambo_Shallow_2002, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2002_herb_biomass <- summarise_at(Western_Sambo_Shallow_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2002_herb_biomass$Year <- ('2002')
Western_Sambo_Shallow_2002_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2002_comm <- merge(Western_Sambo_Shallow_2002, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2002_comm_biomass <- summarise_at(Western_Sambo_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2002_comm_biomass$Year <- ('2002')
Western_Sambo_Shallow_2002_comm_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2003 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2003.xls")

Western_Sambo_Shallow_2003_herb <- merge(Western_Sambo_Shallow_2003, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2003_herb_biomass <- summarise_at(Western_Sambo_Shallow_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2003_herb_biomass$Year <- ('2003')
Western_Sambo_Shallow_2003_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2003_comm <- merge(Western_Sambo_Shallow_2003, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2003_comm_biomass <- summarise_at(Western_Sambo_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2003_comm_biomass$Year <- ('2003')
Western_Sambo_Shallow_2003_comm_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2004 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2004.xls")

Western_Sambo_Shallow_2004_herb <- merge(Western_Sambo_Shallow_2004, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2004_herb_biomass <- summarise_at(Western_Sambo_Shallow_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2004_herb_biomass$Year <- ('2004')
Western_Sambo_Shallow_2004_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2004_comm <- merge(Western_Sambo_Shallow_2004, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2004_comm_biomass <- summarise_at(Western_Sambo_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2004_comm_biomass$Year <- ('2004')
Western_Sambo_Shallow_2004_comm_biomass$Reef <- ('Western Sambo Shallow')

Western_Sambo_Shallow_2005 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2005.xls")

Western_Sambo_Shallow_2005_herb <- merge(Western_Sambo_Shallow_2005, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2005_herb_biomass <- summarise_at(Western_Sambo_Shallow_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2005_herb_biomass$Year <- ('2005')
Western_Sambo_Shallow_2005_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2005_comm <- merge(Western_Sambo_Shallow_2005, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2005_comm_biomass <- summarise_at(Western_Sambo_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2005_comm_biomass$Year <- ('2005')
Western_Sambo_Shallow_2005_comm_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2006 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2006.xls")

Western_Sambo_Shallow_2006_herb <- merge(Western_Sambo_Shallow_2006, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2006_herb_biomass <- summarise_at(Western_Sambo_Shallow_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2006_herb_biomass$Year <- ('2006')
Western_Sambo_Shallow_2006_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2006_comm <- merge(Western_Sambo_Shallow_2006, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2006_comm_biomass <- summarise_at(Western_Sambo_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2006_comm_biomass$Year <- ('2006')
Western_Sambo_Shallow_2006_comm_biomass$Reef <- ('Western Sambo Shallow')

Western_Sambo_Shallow_2007 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2007.xls")

Western_Sambo_Shallow_2007_herb <- merge(Western_Sambo_Shallow_2007, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2007_herb_biomass <- summarise_at(Western_Sambo_Shallow_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2007_herb_biomass$Year <- ('2007')
Western_Sambo_Shallow_2007_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2007_comm <- merge(Western_Sambo_Shallow_2007, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2007_comm_biomass <- summarise_at(Western_Sambo_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2007_comm_biomass$Year <- ('2007')
Western_Sambo_Shallow_2007_comm_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2008 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2008.xls")

Western_Sambo_Shallow_2008_herb <- merge(Western_Sambo_Shallow_2008, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2008_herb_biomass <- summarise_at(Western_Sambo_Shallow_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2008_herb_biomass$Year <- ('2008')
Western_Sambo_Shallow_2008_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2008_comm <- merge(Western_Sambo_Shallow_2008, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2008_comm_biomass <- summarise_at(Western_Sambo_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2008_comm_biomass$Year <- ('2008')
Western_Sambo_Shallow_2008_comm_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2009 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2009.xls")

Western_Sambo_Shallow_2009_herb <- merge(Western_Sambo_Shallow_2009, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2009_herb_biomass <- summarise_at(Western_Sambo_Shallow_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2009_herb_biomass$Year <- ('2009')
Western_Sambo_Shallow_2009_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2009_comm <- merge(Western_Sambo_Shallow_2009, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2009_comm_biomass <- summarise_at(Western_Sambo_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2009_comm_biomass$Year <- ('2009')
Western_Sambo_Shallow_2009_comm_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2010 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2010.xls")

Western_Sambo_Shallow_2010_herb <- merge(Western_Sambo_Shallow_2010, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2010_herb_biomass <- summarise_at(Western_Sambo_Shallow_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2010_herb_biomass$Year <- ('2010')
Western_Sambo_Shallow_2010_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2010_comm <- merge(Western_Sambo_Shallow_2010, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2010_comm_biomass <- summarise_at(Western_Sambo_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2010_comm_biomass$Year <- ('2010')
Western_Sambo_Shallow_2010_comm_biomass$Reef <- ('Western Sambo Shallow')

Western_Sambo_Shallow_2011 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2011.xls")

Western_Sambo_Shallow_2011_herb <- merge(Western_Sambo_Shallow_2011, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2011_herb_biomass <- summarise_at(Western_Sambo_Shallow_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2011_herb_biomass$Year <- ('2011')
Western_Sambo_Shallow_2011_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2011_comm <- merge(Western_Sambo_Shallow_2011, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2011_comm_biomass <- summarise_at(Western_Sambo_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2011_comm_biomass$Year <- ('2011')
Western_Sambo_Shallow_2011_comm_biomass$Reef <- ('Western Sambo Shallow')



Western_Sambo_Shallow_2012 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2012.xls")

Western_Sambo_Shallow_2012_herb <- merge(Western_Sambo_Shallow_2012, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2012_herb_biomass <- summarise_at(Western_Sambo_Shallow_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2012_herb_biomass$Year <- ('2012')
Western_Sambo_Shallow_2012_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2012_comm <- merge(Western_Sambo_Shallow_2012, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2012_comm_biomass <- summarise_at(Western_Sambo_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2012_comm_biomass$Year <- ('2012')
Western_Sambo_Shallow_2012_comm_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2014 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2014.xls")

Western_Sambo_Shallow_2014_herb <- merge(Western_Sambo_Shallow_2014, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2014_herb_biomass <- summarise_at(Western_Sambo_Shallow_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2014_herb_biomass$Year <- ('2014')
Western_Sambo_Shallow_2014_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2014_comm <- merge(Western_Sambo_Shallow_2014, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2014_comm_biomass <- summarise_at(Western_Sambo_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2014_comm_biomass$Year <- ('2014')
Western_Sambo_Shallow_2014_comm_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2016 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2016.xls")

Western_Sambo_Shallow_2016_herb <- merge(Western_Sambo_Shallow_2016, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2016_herb_biomass <- summarise_at(Western_Sambo_Shallow_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2016_herb_biomass$Year <- ('2016')
Western_Sambo_Shallow_2016_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2016_comm <- merge(Western_Sambo_Shallow_2016, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2016_comm_biomass <- summarise_at(Western_Sambo_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2016_comm_biomass$Year <- ('2016')
Western_Sambo_Shallow_2016_comm_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2018 <- import("Western_Sambo_Shallow/data/Western_Sambo_Shallow_2018.xls")

Western_Sambo_Shallow_2018_herb <- merge(Western_Sambo_Shallow_2018, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2018_herb_biomass <- summarise_at(Western_Sambo_Shallow_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2018_herb_biomass$Year <- ('2018')
Western_Sambo_Shallow_2018_herb_biomass$Reef <- ('Western Sambo Shallow')


Western_Sambo_Shallow_2018_comm <- merge(Western_Sambo_Shallow_2018, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2018_comm_biomass <- summarise_at(Western_Sambo_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Western_Sambo_Shallow_2018_comm_biomass$Year <- ('2018')
Western_Sambo_Shallow_2018_comm_biomass$Reef <- ('Western Sambo Shallow')



### Combine all years together for herbivorous and commercial seperately



Western_Sambo_Shallow_herb_1 <- rbind(Western_Sambo_Shallow_1999_herb_biomass,Western_Sambo_Shallow_2000_herb_biomass)
Western_Sambo_Shallow_herb_2 <- rbind(Western_Sambo_Shallow_herb_1,Western_Sambo_Shallow_2001_herb_biomass)
Western_Sambo_Shallow_herb_3 <- rbind(Western_Sambo_Shallow_herb_2,Western_Sambo_Shallow_2002_herb_biomass)
Western_Sambo_Shallow_herb_4 <- rbind(Western_Sambo_Shallow_herb_3,Western_Sambo_Shallow_2003_herb_biomass)
Western_Sambo_Shallow_herb_5 <- rbind(Western_Sambo_Shallow_herb_4,Western_Sambo_Shallow_2004_herb_biomass)
Western_Sambo_Shallow_herb_6 <- rbind(Western_Sambo_Shallow_herb_5,Western_Sambo_Shallow_2005_herb_biomass)
Western_Sambo_Shallow_herb_7 <- rbind(Western_Sambo_Shallow_herb_6,Western_Sambo_Shallow_2006_herb_biomass)
Western_Sambo_Shallow_herb_8 <- rbind(Western_Sambo_Shallow_herb_7,Western_Sambo_Shallow_2007_herb_biomass)
Western_Sambo_Shallow_herb_9 <- rbind(Western_Sambo_Shallow_herb_8,Western_Sambo_Shallow_2008_herb_biomass)
Western_Sambo_Shallow_herb_10 <- rbind(Western_Sambo_Shallow_herb_9,Western_Sambo_Shallow_2009_herb_biomass)
Western_Sambo_Shallow_herb_11<- rbind(Western_Sambo_Shallow_herb_10,Western_Sambo_Shallow_2010_herb_biomass)
Western_Sambo_Shallow_herb_12 <- rbind(Western_Sambo_Shallow_herb_11,Western_Sambo_Shallow_2011_herb_biomass)
Western_Sambo_Shallow_herb_13 <- rbind(Western_Sambo_Shallow_herb_12,Western_Sambo_Shallow_2012_herb_biomass)
Western_Sambo_Shallow_herb_14 <- rbind(Western_Sambo_Shallow_herb_13,Western_Sambo_Shallow_2014_herb_biomass)
Western_Sambo_Shallow_herb_15 <- rbind(Western_Sambo_Shallow_herb_14,Western_Sambo_Shallow_2016_herb_biomass)
Western_Sambo_Shallow_herb_biomass_data_combined <- rbind(Western_Sambo_Shallow_herb_15,Western_Sambo_Shallow_2018_herb_biomass)



Western_Sambo_Shallow_comm_1 <- rbind(Western_Sambo_Shallow_1999_comm_biomass,Western_Sambo_Shallow_2000_comm_biomass)
Western_Sambo_Shallow_comm_2 <- rbind(Western_Sambo_Shallow_comm_1,Western_Sambo_Shallow_2001_comm_biomass)
Western_Sambo_Shallow_comm_3 <- rbind(Western_Sambo_Shallow_comm_2,Western_Sambo_Shallow_2002_comm_biomass)
Western_Sambo_Shallow_comm_4 <- rbind(Western_Sambo_Shallow_comm_3,Western_Sambo_Shallow_2003_comm_biomass)
Western_Sambo_Shallow_comm_5 <- rbind(Western_Sambo_Shallow_comm_4,Western_Sambo_Shallow_2004_comm_biomass)
Western_Sambo_Shallow_comm_6 <- rbind(Western_Sambo_Shallow_comm_5,Western_Sambo_Shallow_2005_comm_biomass)
Western_Sambo_Shallow_comm_7 <- rbind(Western_Sambo_Shallow_comm_6,Western_Sambo_Shallow_2006_comm_biomass)
Western_Sambo_Shallow_comm_8 <- rbind(Western_Sambo_Shallow_comm_7,Western_Sambo_Shallow_2007_comm_biomass)
Western_Sambo_Shallow_comm_9 <- rbind(Western_Sambo_Shallow_comm_8,Western_Sambo_Shallow_2008_comm_biomass)
Western_Sambo_Shallow_comm_10 <- rbind(Western_Sambo_Shallow_comm_9,Western_Sambo_Shallow_2009_comm_biomass)
Western_Sambo_Shallow_comm_11<- rbind(Western_Sambo_Shallow_comm_10,Western_Sambo_Shallow_2010_comm_biomass)
Western_Sambo_Shallow_comm_12 <- rbind(Western_Sambo_Shallow_comm_11,Western_Sambo_Shallow_2011_comm_biomass)
Western_Sambo_Shallow_comm_13 <- rbind(Western_Sambo_Shallow_comm_12,Western_Sambo_Shallow_2012_comm_biomass)
Western_Sambo_Shallow_comm_14 <- rbind(Western_Sambo_Shallow_comm_13,Western_Sambo_Shallow_2014_comm_biomass)
Western_Sambo_Shallow_comm_15 <- rbind(Western_Sambo_Shallow_comm_14,Western_Sambo_Shallow_2016_comm_biomass)
Western_Sambo_Shallow_comm_biomass_data_combined <- rbind(Western_Sambo_Shallow_comm_15,Western_Sambo_Shallow_2018_comm_biomass)



export(Western_Sambo_Shallow_herb_biomass_data_combined, "Western_Sambo_Shallow/data/Western_Sambo_Shallow_herbivorous_biomass.csv")
export(Western_Sambo_Shallow_comm_biomass_data_combined, "Western_Sambo_Shallow/data/Western_Sambo_Shallow_commercial_biomass.csv")


### LK combo

LK_reef_herb_biomass_combined <- rbind(Eastern_Sambo_Deep_herb_biomass_data_combined,Eastern_Sambo_Shallow_herb_biomass_data_combined,Jaap_Reef_herb_biomass_data_combined,Looe_Key_Deep_herb_biomass_data_combined,Looe_Key_Shallow_herb_biomass_data_combined,Red_Dun_Reef_herb_biomass_data_combined,Rock_Key_Deep_herb_biomass_data_combined,Rock_Key_Shallow_herb_biomass_data_combined,Sand_Key_Deep_herb_biomass_data_combined,Sand_Key_Shallow_herb_biomass_data_combined,West_Washer_Woman_herb_biomass_data_combined,Western_Sambo_Deep_herb_biomass_data_combined,Western_Sambo_Shallow_herb_biomass_data_combined)
LK_reef_herb_biomass_data <- arrange(LK_reef_herb_biomass_combined, Year,Reef, sum, max, min, mean, sd )
LK_reef_herb_biomass_data$REGION <- ("LK")
export(LK_reef_herb_biomass_data, "LK_herbivorous_biomass_data.csv")



LK_reef_comm_biomass_combined <- rbind(Eastern_Sambo_Deep_comm_biomass_data_combined,Eastern_Sambo_Shallow_comm_biomass_data_combined,Jaap_Reef_comm_biomass_data_combined,Looe_Key_Deep_comm_biomass_data_combined,Looe_Key_Shallow_comm_biomass_data_combined,Red_Dun_Reef_comm_biomass_data_combined,Rock_Key_Deep_comm_biomass_data_combined,Rock_Key_Shallow_comm_biomass_data_combined,Sand_Key_Deep_comm_biomass_data_combined,Sand_Key_Shallow_comm_biomass_data_combined,West_Washer_Woman_comm_biomass_data_combined,Western_Sambo_Deep_comm_biomass_data_combined,Western_Sambo_Shallow_comm_biomass_data_combined)
LK_reef_comm_biomass_data <- arrange(LK_reef_comm_biomass_combined, Year,Reef, sum, max, min, mean, sd )
LK_reef_comm_biomass_data$REGION <- ("LK")
export(LK_reef_comm_biomass_data, "LK_commercial_biomass_data.csv")



## Herbivrous first and repeat code for commercial 

## remove max, min, mean, sd
LK_reef_herb_biomass_data$max <- NULL
LK_reef_herb_biomass_data$min <- NULL
LK_reef_herb_biomass_data$sd <- NULL
LK_reef_herb_biomass_data$REGION <- NULL
LK_reef_herb_biomass_data$mean <- NULL


LK_herb_graph <- LK_reef_herb_biomass_data[order(LK_reef_herb_biomass_data$sum),]

## sort data into 5 different bins using binr 

LK_herb_bins <- bins(LK_herb_graph$sum,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)

view(LK_herb_bins$binct)
#### MANUALLY ADD IN THE VALUES OF EACH BIN. 1-5 WILL BE ADDED TO EACH BIN SUBSET

## from binct make the value of the bins and apply number 1-5 for each bin

LK_herb_1 <- subset(LK_herb_graph, sum < 0.0056629373881087)
LK_herb_2 <- subset(LK_herb_graph, sum >= 0.0056629373881087  & sum <  0.0363535140563045 )
LK_herb_3 <- subset(LK_herb_graph, sum >=  0.0363535140563045  & sum < 0.0500209322725625 )
LK_herb_4 <- subset(LK_herb_graph, sum >= 0.0500209322725625  & sum < 0.0783675310729793 )
LK_herb_5 <- subset(LK_herb_graph, sum >= 0.0783675310729793  & sum < 0.241610789753565 )


LK_herb_1$RHI_Fish <- "1"
LK_herb_2$RHI_Fish <- "2"
LK_herb_3$RHI_Fish <- "3"
LK_herb_4$RHI_Fish <- "4"
LK_herb_5$RHI_Fish <- "5"

LK_herb_RHI <- rbind(LK_herb_1,LK_herb_2,LK_herb_3,LK_herb_4,LK_herb_5)  

LK_herb_RHI$SUBREGION <- "LK"



## Commercial 

## remove max, min, mean, sd
LK_reef_comm_biomass_data$max <- NULL
LK_reef_comm_biomass_data$min <- NULL
LK_reef_comm_biomass_data$sd <- NULL
LK_reef_comm_biomass_data$REGION <- NULL
LK_reef_comm_biomass_data$mean <- NULL


LK_comm_graph <- LK_reef_comm_biomass_data[order(LK_reef_comm_biomass_data$sum),]

## sort data into 5 different bins using binr 

LK_comm_bins <- bins(LK_comm_graph$sum,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)

view(LK_comm_bins$binct)

#### MANUALLY ADD IN THE VALUES OF EACH BIN. 1-5 WILL BE ADDED TO EACH BIN SUBSET

## from binct make the value of the bins and apply number 1-5 for each bin

LK_comm_1 <- subset(LK_comm_graph, sum < 0.0277977364242418)
LK_comm_2 <- subset(LK_comm_graph, sum >= 0.0277977364242418  & sum < 0.135288929696232 )
LK_comm_3 <- subset(LK_comm_graph, sum >= 0.135288929696232  & sum <  0.192955206003565 )
LK_comm_4 <- subset(LK_comm_graph, sum >= 0.192955206003565   & sum < 0.257303978583748 )
LK_comm_5 <- subset(LK_comm_graph, sum >= 0.257303978583748  & sum <  0.706146336133836 )


LK_comm_1$RHI_Fish <- "1"
LK_comm_2$RHI_Fish <- "2"
LK_comm_3$RHI_Fish <- "3"
LK_comm_4$RHI_Fish <- "4"
LK_comm_5$RHI_Fish <- "5"

LK_comm_RHI <- rbind(LK_comm_1,LK_comm_2,LK_comm_3,LK_comm_4,LK_comm_5)  
LK_comm_RHI$SUBREGION <- "LK"


export(LK_herb_RHI, "LK_herbivorous_RHI.csv")
export(LK_comm_RHI, "LK_commercial_RHI.csv")







### Middle Keys (missing 2004)


setwd("C:/Users/cestes/Documents/Spring_2020/RVC_CREMP_by_REEF/MK")


# Alligator Deep


Alligator_Deep_1999 <- import("Alligator_Deep/data/Alligator_Deep_1999.xls")


Alligator_Deep_1999_herb <- merge(Alligator_Deep_1999, Herb, by = c("SPECIES_CD"))
Alligator_Deep_1999_herb_biomass <- summarise_at(Alligator_Deep_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_1999_herb_biomass$Year <- ('1999')
Alligator_Deep_1999_herb_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_1999_comm <- merge(Alligator_Deep_1999, Comm, by = c("SPECIES_CD"))
Alligator_Deep_1999_comm_biomass <- summarise_at(Alligator_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_1999_comm_biomass$Year <- ('1999')
Alligator_Deep_1999_comm_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2000 <- import("Alligator_Deep/data/Alligator_Deep_2000.xls")

Alligator_Deep_2000_herb <- merge(Alligator_Deep_2000, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2000_herb_biomass <- summarise_at(Alligator_Deep_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2000_herb_biomass$Year <- ('2000')
Alligator_Deep_2000_herb_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2000_comm <- merge(Alligator_Deep_2000, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2000_comm_biomass <- summarise_at(Alligator_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2000_comm_biomass$Year <- ('2000')
Alligator_Deep_2000_comm_biomass$Reef <- ('Alligator Deep')

Alligator_Deep_2001 <- import("Alligator_Deep/data/Alligator_Deep_2001.xls")

Alligator_Deep_2001_herb <- merge(Alligator_Deep_2001, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2001_herb_biomass <- summarise_at(Alligator_Deep_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2001_herb_biomass$Year <- ('2001')
Alligator_Deep_2001_herb_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2001_comm <- merge(Alligator_Deep_2001, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2001_comm_biomass <- summarise_at(Alligator_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2001_comm_biomass$Year <- ('2001')
Alligator_Deep_2001_comm_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2002 <- import("Alligator_Deep/data/Alligator_Deep_2002.xls")

Alligator_Deep_2002_herb <- merge(Alligator_Deep_2002, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2002_herb_biomass <- summarise_at(Alligator_Deep_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2002_herb_biomass$Year <- ('2002')
Alligator_Deep_2002_herb_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2002_comm <- merge(Alligator_Deep_2002, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2002_comm_biomass <- summarise_at(Alligator_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2002_comm_biomass$Year <- ('2002')
Alligator_Deep_2002_comm_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2003 <- import("Alligator_Deep/data/Alligator_Deep_2003.xls")

Alligator_Deep_2003_herb <- merge(Alligator_Deep_2003, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2003_herb_biomass <- summarise_at(Alligator_Deep_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2003_herb_biomass$Year <- ('2003')
Alligator_Deep_2003_herb_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2003_comm <- merge(Alligator_Deep_2003, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2003_comm_biomass <- summarise_at(Alligator_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2003_comm_biomass$Year <- ('2003')
Alligator_Deep_2003_comm_biomass$Reef <- ('Alligator Deep')


# Alligator_Deep_2004 <- import("Alligator_Deep/data/Alligator_Deep_2004.xls")
# 
# Alligator_Deep_2004_herb <- merge(Alligator_Deep_2004, Herb, by = c("SPECIES_CD"))
# Alligator_Deep_2004_herb_biomass <- summarise_at(Alligator_Deep_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Alligator_Deep_2004_herb_biomass$Year <- ('2004')
# Alligator_Deep_2004_herb_biomass$Reef <- ('Alligator Deep')
# 
# 
# Alligator_Deep_2004_comm <- merge(Alligator_Deep_2004, Comm, by = c("SPECIES_CD"))
# Alligator_Deep_2004_comm_biomass <- summarise_at(Alligator_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Alligator_Deep_2004_comm_biomass$Year <- ('2004')
# Alligator_Deep_2004_comm_biomass$Reef <- ('Alligator Deep')

Alligator_Deep_2005 <- import("Alligator_Deep/data/Alligator_Deep_2005.xls")

Alligator_Deep_2005_herb <- merge(Alligator_Deep_2005, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2005_herb_biomass <- summarise_at(Alligator_Deep_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2005_herb_biomass$Year <- ('2005')
Alligator_Deep_2005_herb_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2005_comm <- merge(Alligator_Deep_2005, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2005_comm_biomass <- summarise_at(Alligator_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2005_comm_biomass$Year <- ('2005')
Alligator_Deep_2005_comm_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2006 <- import("Alligator_Deep/data/Alligator_Deep_2006.xls")

Alligator_Deep_2006_herb <- merge(Alligator_Deep_2006, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2006_herb_biomass <- summarise_at(Alligator_Deep_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2006_herb_biomass$Year <- ('2006')
Alligator_Deep_2006_herb_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2006_comm <- merge(Alligator_Deep_2006, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2006_comm_biomass <- summarise_at(Alligator_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2006_comm_biomass$Year <- ('2006')
Alligator_Deep_2006_comm_biomass$Reef <- ('Alligator Deep')

Alligator_Deep_2007 <- import("Alligator_Deep/data/Alligator_Deep_2007.xls")

Alligator_Deep_2007_herb <- merge(Alligator_Deep_2007, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2007_herb_biomass <- summarise_at(Alligator_Deep_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2007_herb_biomass$Year <- ('2007')
Alligator_Deep_2007_herb_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2007_comm <- merge(Alligator_Deep_2007, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2007_comm_biomass <- summarise_at(Alligator_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2007_comm_biomass$Year <- ('2007')
Alligator_Deep_2007_comm_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2008 <- import("Alligator_Deep/data/Alligator_Deep_2008.xls")

Alligator_Deep_2008_herb <- merge(Alligator_Deep_2008, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2008_herb_biomass <- summarise_at(Alligator_Deep_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2008_herb_biomass$Year <- ('2008')
Alligator_Deep_2008_herb_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2008_comm <- merge(Alligator_Deep_2008, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2008_comm_biomass <- summarise_at(Alligator_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2008_comm_biomass$Year <- ('2008')
Alligator_Deep_2008_comm_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2009 <- import("Alligator_Deep/data/Alligator_Deep_2009.xls")

Alligator_Deep_2009_herb <- merge(Alligator_Deep_2009, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2009_herb_biomass <- summarise_at(Alligator_Deep_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2009_herb_biomass$Year <- ('2009')
Alligator_Deep_2009_herb_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2009_comm <- merge(Alligator_Deep_2009, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2009_comm_biomass <- summarise_at(Alligator_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2009_comm_biomass$Year <- ('2009')
Alligator_Deep_2009_comm_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2010 <- import("Alligator_Deep/data/Alligator_Deep_2010.xls")

Alligator_Deep_2010_herb <- merge(Alligator_Deep_2010, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2010_herb_biomass <- summarise_at(Alligator_Deep_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2010_herb_biomass$Year <- ('2010')
Alligator_Deep_2010_herb_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2010_comm <- merge(Alligator_Deep_2010, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2010_comm_biomass <- summarise_at(Alligator_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2010_comm_biomass$Year <- ('2010')
Alligator_Deep_2010_comm_biomass$Reef <- ('Alligator Deep')

Alligator_Deep_2011 <- import("Alligator_Deep/data/Alligator_Deep_2011.xls")

Alligator_Deep_2011_herb <- merge(Alligator_Deep_2011, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2011_herb_biomass <- summarise_at(Alligator_Deep_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2011_herb_biomass$Year <- ('2011')
Alligator_Deep_2011_herb_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2011_comm <- merge(Alligator_Deep_2011, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2011_comm_biomass <- summarise_at(Alligator_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2011_comm_biomass$Year <- ('2011')
Alligator_Deep_2011_comm_biomass$Reef <- ('Alligator Deep')



Alligator_Deep_2012 <- import("Alligator_Deep/data/Alligator_Deep_2012.xls")

Alligator_Deep_2012_herb <- merge(Alligator_Deep_2012, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2012_herb_biomass <- summarise_at(Alligator_Deep_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2012_herb_biomass$Year <- ('2012')
Alligator_Deep_2012_herb_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2012_comm <- merge(Alligator_Deep_2012, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2012_comm_biomass <- summarise_at(Alligator_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2012_comm_biomass$Year <- ('2012')
Alligator_Deep_2012_comm_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2014 <- import("Alligator_Deep/data/Alligator_Deep_2014.xls")

Alligator_Deep_2014_herb <- merge(Alligator_Deep_2014, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2014_herb_biomass <- summarise_at(Alligator_Deep_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2014_herb_biomass$Year <- ('2014')
Alligator_Deep_2014_herb_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2014_comm <- merge(Alligator_Deep_2014, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2014_comm_biomass <- summarise_at(Alligator_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2014_comm_biomass$Year <- ('2014')
Alligator_Deep_2014_comm_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2016 <- import("Alligator_Deep/data/Alligator_Deep_2016.xls")

Alligator_Deep_2016_herb <- merge(Alligator_Deep_2016, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2016_herb_biomass <- summarise_at(Alligator_Deep_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2016_herb_biomass$Year <- ('2016')
Alligator_Deep_2016_herb_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2016_comm <- merge(Alligator_Deep_2016, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2016_comm_biomass <- summarise_at(Alligator_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2016_comm_biomass$Year <- ('2016')
Alligator_Deep_2016_comm_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2018 <- import("Alligator_Deep/data/Alligator_Deep_2018.xls")

Alligator_Deep_2018_herb <- merge(Alligator_Deep_2018, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2018_herb_biomass <- summarise_at(Alligator_Deep_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2018_herb_biomass$Year <- ('2018')
Alligator_Deep_2018_herb_biomass$Reef <- ('Alligator Deep')


Alligator_Deep_2018_comm <- merge(Alligator_Deep_2018, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2018_comm_biomass <- summarise_at(Alligator_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Deep_2018_comm_biomass$Year <- ('2018')
Alligator_Deep_2018_comm_biomass$Reef <- ('Alligator Deep')



### Combine all years together for herbivorous and commercial seperately



Alligator_Deep_herb_1 <- rbind(Alligator_Deep_1999_herb_biomass,Alligator_Deep_2000_herb_biomass)
Alligator_Deep_herb_2 <- rbind(Alligator_Deep_herb_1,Alligator_Deep_2001_herb_biomass)
Alligator_Deep_herb_3 <- rbind(Alligator_Deep_herb_2,Alligator_Deep_2002_herb_biomass)
Alligator_Deep_herb_4 <- rbind(Alligator_Deep_herb_3,Alligator_Deep_2003_herb_biomass)
#Alligator_Deep_herb_5 <- rbind(Alligator_Deep_herb_4,Alligator_Deep_2004_herb_biomass)
Alligator_Deep_herb_6 <- rbind(Alligator_Deep_herb_4,Alligator_Deep_2005_herb_biomass)
Alligator_Deep_herb_7 <- rbind(Alligator_Deep_herb_6,Alligator_Deep_2006_herb_biomass)
Alligator_Deep_herb_8 <- rbind(Alligator_Deep_herb_7,Alligator_Deep_2007_herb_biomass)
Alligator_Deep_herb_9 <- rbind(Alligator_Deep_herb_8,Alligator_Deep_2008_herb_biomass)
Alligator_Deep_herb_10 <- rbind(Alligator_Deep_herb_9,Alligator_Deep_2009_herb_biomass)
Alligator_Deep_herb_11<- rbind(Alligator_Deep_herb_10,Alligator_Deep_2010_herb_biomass)
Alligator_Deep_herb_12 <- rbind(Alligator_Deep_herb_11,Alligator_Deep_2011_herb_biomass)
Alligator_Deep_herb_13 <- rbind(Alligator_Deep_herb_12,Alligator_Deep_2012_herb_biomass)
Alligator_Deep_herb_14 <- rbind(Alligator_Deep_herb_13,Alligator_Deep_2014_herb_biomass)
Alligator_Deep_herb_15 <- rbind(Alligator_Deep_herb_14,Alligator_Deep_2016_herb_biomass)
Alligator_Deep_herb_biomass_data_combined <- rbind(Alligator_Deep_herb_15,Alligator_Deep_2018_herb_biomass)



Alligator_Deep_comm_1 <- rbind(Alligator_Deep_1999_comm_biomass,Alligator_Deep_2000_comm_biomass)
Alligator_Deep_comm_2 <- rbind(Alligator_Deep_comm_1,Alligator_Deep_2001_comm_biomass)
Alligator_Deep_comm_3 <- rbind(Alligator_Deep_comm_2,Alligator_Deep_2002_comm_biomass)
Alligator_Deep_comm_4 <- rbind(Alligator_Deep_comm_3,Alligator_Deep_2003_comm_biomass)
#Alligator_Deep_comm_5 <- rbind(Alligator_Deep_comm_4,Alligator_Deep_2004_comm_biomass)
Alligator_Deep_comm_6 <- rbind(Alligator_Deep_comm_4,Alligator_Deep_2005_comm_biomass)
Alligator_Deep_comm_7 <- rbind(Alligator_Deep_comm_6,Alligator_Deep_2006_comm_biomass)
Alligator_Deep_comm_8 <- rbind(Alligator_Deep_comm_7,Alligator_Deep_2007_comm_biomass)
Alligator_Deep_comm_9 <- rbind(Alligator_Deep_comm_8,Alligator_Deep_2008_comm_biomass)
Alligator_Deep_comm_10 <- rbind(Alligator_Deep_comm_9,Alligator_Deep_2009_comm_biomass)
Alligator_Deep_comm_11<- rbind(Alligator_Deep_comm_10,Alligator_Deep_2010_comm_biomass)
Alligator_Deep_comm_12 <- rbind(Alligator_Deep_comm_11,Alligator_Deep_2011_comm_biomass)
Alligator_Deep_comm_13 <- rbind(Alligator_Deep_comm_12,Alligator_Deep_2012_comm_biomass)
Alligator_Deep_comm_14 <- rbind(Alligator_Deep_comm_13,Alligator_Deep_2014_comm_biomass)
Alligator_Deep_comm_15 <- rbind(Alligator_Deep_comm_14,Alligator_Deep_2016_comm_biomass)
Alligator_Deep_comm_biomass_data_combined <- rbind(Alligator_Deep_comm_15,Alligator_Deep_2018_comm_biomass)



export(Alligator_Deep_herb_biomass_data_combined, "Alligator_Deep/data/Alligator_Deep_herbivorous_biomass.csv")
export(Alligator_Deep_comm_biomass_data_combined, "Alligator_Deep/data/Alligator_Deep_commercial_biomass.csv")



# Alligator Shallow


Alligator_Shallow_1999 <- import("Alligator_Shallow/data/Alligator_Shallow_1999.xls")


Alligator_Shallow_1999_herb <- merge(Alligator_Shallow_1999, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_1999_herb_biomass <- summarise_at(Alligator_Shallow_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_1999_herb_biomass$Year <- ('1999')
Alligator_Shallow_1999_herb_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_1999_comm <- merge(Alligator_Shallow_1999, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_1999_comm_biomass <- summarise_at(Alligator_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_1999_comm_biomass$Year <- ('1999')
Alligator_Shallow_1999_comm_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2000 <- import("Alligator_Shallow/data/Alligator_Shallow_2000.xls")

Alligator_Shallow_2000_herb <- merge(Alligator_Shallow_2000, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2000_herb_biomass <- summarise_at(Alligator_Shallow_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2000_herb_biomass$Year <- ('2000')
Alligator_Shallow_2000_herb_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2000_comm <- merge(Alligator_Shallow_2000, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2000_comm_biomass <- summarise_at(Alligator_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2000_comm_biomass$Year <- ('2000')
Alligator_Shallow_2000_comm_biomass$Reef <- ('Alligator Shallow')

Alligator_Shallow_2001 <- import("Alligator_Shallow/data/Alligator_Shallow_2001.xls")

Alligator_Shallow_2001_herb <- merge(Alligator_Shallow_2001, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2001_herb_biomass <- summarise_at(Alligator_Shallow_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2001_herb_biomass$Year <- ('2001')
Alligator_Shallow_2001_herb_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2001_comm <- merge(Alligator_Shallow_2001, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2001_comm_biomass <- summarise_at(Alligator_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2001_comm_biomass$Year <- ('2001')
Alligator_Shallow_2001_comm_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2002 <- import("Alligator_Shallow/data/Alligator_Shallow_2002.xls")

Alligator_Shallow_2002_herb <- merge(Alligator_Shallow_2002, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2002_herb_biomass <- summarise_at(Alligator_Shallow_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2002_herb_biomass$Year <- ('2002')
Alligator_Shallow_2002_herb_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2002_comm <- merge(Alligator_Shallow_2002, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2002_comm_biomass <- summarise_at(Alligator_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2002_comm_biomass$Year <- ('2002')
Alligator_Shallow_2002_comm_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2003 <- import("Alligator_Shallow/data/Alligator_Shallow_2003.xls")

Alligator_Shallow_2003_herb <- merge(Alligator_Shallow_2003, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2003_herb_biomass <- summarise_at(Alligator_Shallow_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2003_herb_biomass$Year <- ('2003')
Alligator_Shallow_2003_herb_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2003_comm <- merge(Alligator_Shallow_2003, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2003_comm_biomass <- summarise_at(Alligator_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2003_comm_biomass$Year <- ('2003')
Alligator_Shallow_2003_comm_biomass$Reef <- ('Alligator Shallow')


# Alligator_Shallow_2004 <- import("Alligator_Shallow/data/Alligator_Shallow_2004.xls")
# 
# Alligator_Shallow_2004_herb <- merge(Alligator_Shallow_2004, Herb, by = c("SPECIES_CD"))
# Alligator_Shallow_2004_herb_biomass <- summarise_at(Alligator_Shallow_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Alligator_Shallow_2004_herb_biomass$Year <- ('2004')
# Alligator_Shallow_2004_herb_biomass$Reef <- ('Alligator Shallow')
# 
# 
# Alligator_Shallow_2004_comm <- merge(Alligator_Shallow_2004, Comm, by = c("SPECIES_CD"))
# Alligator_Shallow_2004_comm_biomass <- summarise_at(Alligator_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Alligator_Shallow_2004_comm_biomass$Year <- ('2004')
# Alligator_Shallow_2004_comm_biomass$Reef <- ('Alligator Shallow')

Alligator_Shallow_2005 <- import("Alligator_Shallow/data/Alligator_Shallow_2005.xls")

Alligator_Shallow_2005_herb <- merge(Alligator_Shallow_2005, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2005_herb_biomass <- summarise_at(Alligator_Shallow_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2005_herb_biomass$Year <- ('2005')
Alligator_Shallow_2005_herb_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2005_comm <- merge(Alligator_Shallow_2005, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2005_comm_biomass <- summarise_at(Alligator_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2005_comm_biomass$Year <- ('2005')
Alligator_Shallow_2005_comm_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2006 <- import("Alligator_Shallow/data/Alligator_Shallow_2006.xls")

Alligator_Shallow_2006_herb <- merge(Alligator_Shallow_2006, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2006_herb_biomass <- summarise_at(Alligator_Shallow_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2006_herb_biomass$Year <- ('2006')
Alligator_Shallow_2006_herb_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2006_comm <- merge(Alligator_Shallow_2006, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2006_comm_biomass <- summarise_at(Alligator_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2006_comm_biomass$Year <- ('2006')
Alligator_Shallow_2006_comm_biomass$Reef <- ('Alligator Shallow')

Alligator_Shallow_2007 <- import("Alligator_Shallow/data/Alligator_Shallow_2007.xls")

Alligator_Shallow_2007_herb <- merge(Alligator_Shallow_2007, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2007_herb_biomass <- summarise_at(Alligator_Shallow_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2007_herb_biomass$Year <- ('2007')
Alligator_Shallow_2007_herb_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2007_comm <- merge(Alligator_Shallow_2007, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2007_comm_biomass <- summarise_at(Alligator_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2007_comm_biomass$Year <- ('2007')
Alligator_Shallow_2007_comm_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2008 <- import("Alligator_Shallow/data/Alligator_Shallow_2008.xls")

Alligator_Shallow_2008_herb <- merge(Alligator_Shallow_2008, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2008_herb_biomass <- summarise_at(Alligator_Shallow_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2008_herb_biomass$Year <- ('2008')
Alligator_Shallow_2008_herb_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2008_comm <- merge(Alligator_Shallow_2008, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2008_comm_biomass <- summarise_at(Alligator_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2008_comm_biomass$Year <- ('2008')
Alligator_Shallow_2008_comm_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2009 <- import("Alligator_Shallow/data/Alligator_Shallow_2009.xls")

Alligator_Shallow_2009_herb <- merge(Alligator_Shallow_2009, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2009_herb_biomass <- summarise_at(Alligator_Shallow_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2009_herb_biomass$Year <- ('2009')
Alligator_Shallow_2009_herb_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2009_comm <- merge(Alligator_Shallow_2009, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2009_comm_biomass <- summarise_at(Alligator_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2009_comm_biomass$Year <- ('2009')
Alligator_Shallow_2009_comm_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2010 <- import("Alligator_Shallow/data/Alligator_Shallow_2010.xls")

Alligator_Shallow_2010_herb <- merge(Alligator_Shallow_2010, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2010_herb_biomass <- summarise_at(Alligator_Shallow_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2010_herb_biomass$Year <- ('2010')
Alligator_Shallow_2010_herb_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2010_comm <- merge(Alligator_Shallow_2010, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2010_comm_biomass <- summarise_at(Alligator_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2010_comm_biomass$Year <- ('2010')
Alligator_Shallow_2010_comm_biomass$Reef <- ('Alligator Shallow')

Alligator_Shallow_2011 <- import("Alligator_Shallow/data/Alligator_Shallow_2011.xls")

Alligator_Shallow_2011_herb <- merge(Alligator_Shallow_2011, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2011_herb_biomass <- summarise_at(Alligator_Shallow_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2011_herb_biomass$Year <- ('2011')
Alligator_Shallow_2011_herb_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2011_comm <- merge(Alligator_Shallow_2011, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2011_comm_biomass <- summarise_at(Alligator_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2011_comm_biomass$Year <- ('2011')
Alligator_Shallow_2011_comm_biomass$Reef <- ('Alligator Shallow')



Alligator_Shallow_2012 <- import("Alligator_Shallow/data/Alligator_Shallow_2012.xls")

Alligator_Shallow_2012_herb <- merge(Alligator_Shallow_2012, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2012_herb_biomass <- summarise_at(Alligator_Shallow_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2012_herb_biomass$Year <- ('2012')
Alligator_Shallow_2012_herb_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2012_comm <- merge(Alligator_Shallow_2012, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2012_comm_biomass <- summarise_at(Alligator_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2012_comm_biomass$Year <- ('2012')
Alligator_Shallow_2012_comm_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2014 <- import("Alligator_Shallow/data/Alligator_Shallow_2014.xls")

Alligator_Shallow_2014_herb <- merge(Alligator_Shallow_2014, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2014_herb_biomass <- summarise_at(Alligator_Shallow_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2014_herb_biomass$Year <- ('2014')
Alligator_Shallow_2014_herb_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2014_comm <- merge(Alligator_Shallow_2014, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2014_comm_biomass <- summarise_at(Alligator_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2014_comm_biomass$Year <- ('2014')
Alligator_Shallow_2014_comm_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2016 <- import("Alligator_Shallow/data/Alligator_Shallow_2016.xls")

Alligator_Shallow_2016_herb <- merge(Alligator_Shallow_2016, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2016_herb_biomass <- summarise_at(Alligator_Shallow_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2016_herb_biomass$Year <- ('2016')
Alligator_Shallow_2016_herb_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2016_comm <- merge(Alligator_Shallow_2016, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2016_comm_biomass <- summarise_at(Alligator_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2016_comm_biomass$Year <- ('2016')
Alligator_Shallow_2016_comm_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2018 <- import("Alligator_Shallow/data/Alligator_Shallow_2018.xls")

Alligator_Shallow_2018_herb <- merge(Alligator_Shallow_2018, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2018_herb_biomass <- summarise_at(Alligator_Shallow_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2018_herb_biomass$Year <- ('2018')
Alligator_Shallow_2018_herb_biomass$Reef <- ('Alligator Shallow')


Alligator_Shallow_2018_comm <- merge(Alligator_Shallow_2018, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2018_comm_biomass <- summarise_at(Alligator_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Alligator_Shallow_2018_comm_biomass$Year <- ('2018')
Alligator_Shallow_2018_comm_biomass$Reef <- ('Alligator Shallow')



### Combine all years together for herbivorous and commercial seperately



Alligator_Shallow_herb_1 <- rbind(Alligator_Shallow_1999_herb_biomass,Alligator_Shallow_2000_herb_biomass)
Alligator_Shallow_herb_2 <- rbind(Alligator_Shallow_herb_1,Alligator_Shallow_2001_herb_biomass)
Alligator_Shallow_herb_3 <- rbind(Alligator_Shallow_herb_2,Alligator_Shallow_2002_herb_biomass)
Alligator_Shallow_herb_4 <- rbind(Alligator_Shallow_herb_3,Alligator_Shallow_2003_herb_biomass)
#Alligator_Shallow_herb_5 <- rbind(Alligator_Shallow_herb_4,Alligator_Shallow_2004_herb_biomass)
Alligator_Shallow_herb_6 <- rbind(Alligator_Shallow_herb_4,Alligator_Shallow_2005_herb_biomass)
Alligator_Shallow_herb_7 <- rbind(Alligator_Shallow_herb_6,Alligator_Shallow_2006_herb_biomass)
Alligator_Shallow_herb_8 <- rbind(Alligator_Shallow_herb_7,Alligator_Shallow_2007_herb_biomass)
Alligator_Shallow_herb_9 <- rbind(Alligator_Shallow_herb_8,Alligator_Shallow_2008_herb_biomass)
Alligator_Shallow_herb_10 <- rbind(Alligator_Shallow_herb_9,Alligator_Shallow_2009_herb_biomass)
Alligator_Shallow_herb_11<- rbind(Alligator_Shallow_herb_10,Alligator_Shallow_2010_herb_biomass)
Alligator_Shallow_herb_12 <- rbind(Alligator_Shallow_herb_11,Alligator_Shallow_2011_herb_biomass)
Alligator_Shallow_herb_13 <- rbind(Alligator_Shallow_herb_12,Alligator_Shallow_2012_herb_biomass)
Alligator_Shallow_herb_14 <- rbind(Alligator_Shallow_herb_13,Alligator_Shallow_2014_herb_biomass)
Alligator_Shallow_herb_15 <- rbind(Alligator_Shallow_herb_14,Alligator_Shallow_2016_herb_biomass)
Alligator_Shallow_herb_biomass_data_combined <- rbind(Alligator_Shallow_herb_15,Alligator_Shallow_2018_herb_biomass)



Alligator_Shallow_comm_1 <- rbind(Alligator_Shallow_1999_comm_biomass,Alligator_Shallow_2000_comm_biomass)
Alligator_Shallow_comm_2 <- rbind(Alligator_Shallow_comm_1,Alligator_Shallow_2001_comm_biomass)
Alligator_Shallow_comm_3 <- rbind(Alligator_Shallow_comm_2,Alligator_Shallow_2002_comm_biomass)
Alligator_Shallow_comm_4 <- rbind(Alligator_Shallow_comm_3,Alligator_Shallow_2003_comm_biomass)
#Alligator_Shallow_comm_5 <- rbind(Alligator_Shallow_comm_4,Alligator_Shallow_2004_comm_biomass)
Alligator_Shallow_comm_6 <- rbind(Alligator_Shallow_comm_4,Alligator_Shallow_2005_comm_biomass)
Alligator_Shallow_comm_7 <- rbind(Alligator_Shallow_comm_6,Alligator_Shallow_2006_comm_biomass)
Alligator_Shallow_comm_8 <- rbind(Alligator_Shallow_comm_7,Alligator_Shallow_2007_comm_biomass)
Alligator_Shallow_comm_9 <- rbind(Alligator_Shallow_comm_8,Alligator_Shallow_2008_comm_biomass)
Alligator_Shallow_comm_10 <- rbind(Alligator_Shallow_comm_9,Alligator_Shallow_2009_comm_biomass)
Alligator_Shallow_comm_11<- rbind(Alligator_Shallow_comm_10,Alligator_Shallow_2010_comm_biomass)
Alligator_Shallow_comm_12 <- rbind(Alligator_Shallow_comm_11,Alligator_Shallow_2011_comm_biomass)
Alligator_Shallow_comm_13 <- rbind(Alligator_Shallow_comm_12,Alligator_Shallow_2012_comm_biomass)
Alligator_Shallow_comm_14 <- rbind(Alligator_Shallow_comm_13,Alligator_Shallow_2014_comm_biomass)
Alligator_Shallow_comm_15 <- rbind(Alligator_Shallow_comm_14,Alligator_Shallow_2016_comm_biomass)
Alligator_Shallow_comm_biomass_data_combined <- rbind(Alligator_Shallow_comm_15,Alligator_Shallow_2018_comm_biomass)



export(Alligator_Shallow_herb_biomass_data_combined, "Alligator_Shallow/data/Alligator_Shallow_herbivorous_biomass.csv")
export(Alligator_Shallow_comm_biomass_data_combined, "Alligator_Shallow/data/Alligator_Shallow_commercial_biomass.csv")


# Dustan Rocks 

Dustan_Rocks_1999 <- import("Dustan_Rocks/data/Dustan_Rocks_1999.xls")


Dustan_Rocks_1999_herb <- merge(Dustan_Rocks_1999, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_1999_herb_biomass <- summarise_at(Dustan_Rocks_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_1999_herb_biomass$Year <- ('1999')
Dustan_Rocks_1999_herb_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_1999_comm <- merge(Dustan_Rocks_1999, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_1999_comm_biomass <- summarise_at(Dustan_Rocks_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_1999_comm_biomass$Year <- ('1999')
Dustan_Rocks_1999_comm_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2000 <- import("Dustan_Rocks/data/Dustan_Rocks_2000.xls")

Dustan_Rocks_2000_herb <- merge(Dustan_Rocks_2000, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2000_herb_biomass <- summarise_at(Dustan_Rocks_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2000_herb_biomass$Year <- ('2000')
Dustan_Rocks_2000_herb_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2000_comm <- merge(Dustan_Rocks_2000, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2000_comm_biomass <- summarise_at(Dustan_Rocks_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2000_comm_biomass$Year <- ('2000')
Dustan_Rocks_2000_comm_biomass$Reef <- ('Dustan Rocks')

Dustan_Rocks_2001 <- import("Dustan_Rocks/data/Dustan_Rocks_2001.xls")

Dustan_Rocks_2001_herb <- merge(Dustan_Rocks_2001, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2001_herb_biomass <- summarise_at(Dustan_Rocks_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2001_herb_biomass$Year <- ('2001')
Dustan_Rocks_2001_herb_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2001_comm <- merge(Dustan_Rocks_2001, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2001_comm_biomass <- summarise_at(Dustan_Rocks_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2001_comm_biomass$Year <- ('2001')
Dustan_Rocks_2001_comm_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2002 <- import("Dustan_Rocks/data/Dustan_Rocks_2002.xls")

Dustan_Rocks_2002_herb <- merge(Dustan_Rocks_2002, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2002_herb_biomass <- summarise_at(Dustan_Rocks_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2002_herb_biomass$Year <- ('2002')
Dustan_Rocks_2002_herb_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2002_comm <- merge(Dustan_Rocks_2002, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2002_comm_biomass <- summarise_at(Dustan_Rocks_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2002_comm_biomass$Year <- ('2002')
Dustan_Rocks_2002_comm_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2003 <- import("Dustan_Rocks/data/Dustan_Rocks_2003.xls")

Dustan_Rocks_2003_herb <- merge(Dustan_Rocks_2003, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2003_herb_biomass <- summarise_at(Dustan_Rocks_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2003_herb_biomass$Year <- ('2003')
Dustan_Rocks_2003_herb_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2003_comm <- merge(Dustan_Rocks_2003, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2003_comm_biomass <- summarise_at(Dustan_Rocks_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2003_comm_biomass$Year <- ('2003')
Dustan_Rocks_2003_comm_biomass$Reef <- ('Dustan Rocks')


# Dustan_Rocks_2004 <- import("Dustan_Rocks/data/Dustan_Rocks_2004.xls")
# 
# Dustan_Rocks_2004_herb <- merge(Dustan_Rocks_2004, Herb, by = c("SPECIES_CD"))
# Dustan_Rocks_2004_herb_biomass <- summarise_at(Dustan_Rocks_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Dustan_Rocks_2004_herb_biomass$Year <- ('2004')
# Dustan_Rocks_2004_herb_biomass$Reef <- ('Dustan Rocks')
# 
# 
# Dustan_Rocks_2004_comm <- merge(Dustan_Rocks_2004, Comm, by = c("SPECIES_CD"))
# Dustan_Rocks_2004_comm_biomass <- summarise_at(Dustan_Rocks_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Dustan_Rocks_2004_comm_biomass$Year <- ('2004')
# Dustan_Rocks_2004_comm_biomass$Reef <- ('Dustan Rocks')

Dustan_Rocks_2005 <- import("Dustan_Rocks/data/Dustan_Rocks_2005.xls")

Dustan_Rocks_2005_herb <- merge(Dustan_Rocks_2005, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2005_herb_biomass <- summarise_at(Dustan_Rocks_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2005_herb_biomass$Year <- ('2005')
Dustan_Rocks_2005_herb_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2005_comm <- merge(Dustan_Rocks_2005, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2005_comm_biomass <- summarise_at(Dustan_Rocks_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2005_comm_biomass$Year <- ('2005')
Dustan_Rocks_2005_comm_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2006 <- import("Dustan_Rocks/data/Dustan_Rocks_2006.xls")

Dustan_Rocks_2006_herb <- merge(Dustan_Rocks_2006, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2006_herb_biomass <- summarise_at(Dustan_Rocks_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2006_herb_biomass$Year <- ('2006')
Dustan_Rocks_2006_herb_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2006_comm <- merge(Dustan_Rocks_2006, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2006_comm_biomass <- summarise_at(Dustan_Rocks_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2006_comm_biomass$Year <- ('2006')
Dustan_Rocks_2006_comm_biomass$Reef <- ('Dustan Rocks')

Dustan_Rocks_2007 <- import("Dustan_Rocks/data/Dustan_Rocks_2007.xls")

Dustan_Rocks_2007_herb <- merge(Dustan_Rocks_2007, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2007_herb_biomass <- summarise_at(Dustan_Rocks_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2007_herb_biomass$Year <- ('2007')
Dustan_Rocks_2007_herb_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2007_comm <- merge(Dustan_Rocks_2007, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2007_comm_biomass <- summarise_at(Dustan_Rocks_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2007_comm_biomass$Year <- ('2007')
Dustan_Rocks_2007_comm_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2008 <- import("Dustan_Rocks/data/Dustan_Rocks_2008.xls")

Dustan_Rocks_2008_herb <- merge(Dustan_Rocks_2008, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2008_herb_biomass <- summarise_at(Dustan_Rocks_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2008_herb_biomass$Year <- ('2008')
Dustan_Rocks_2008_herb_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2008_comm <- merge(Dustan_Rocks_2008, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2008_comm_biomass <- summarise_at(Dustan_Rocks_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2008_comm_biomass$Year <- ('2008')
Dustan_Rocks_2008_comm_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2009 <- import("Dustan_Rocks/data/Dustan_Rocks_2009.xls")

Dustan_Rocks_2009_herb <- merge(Dustan_Rocks_2009, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2009_herb_biomass <- summarise_at(Dustan_Rocks_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2009_herb_biomass$Year <- ('2009')
Dustan_Rocks_2009_herb_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2009_comm <- merge(Dustan_Rocks_2009, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2009_comm_biomass <- summarise_at(Dustan_Rocks_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2009_comm_biomass$Year <- ('2009')
Dustan_Rocks_2009_comm_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2010 <- import("Dustan_Rocks/data/Dustan_Rocks_2010.xls")

Dustan_Rocks_2010_herb <- merge(Dustan_Rocks_2010, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2010_herb_biomass <- summarise_at(Dustan_Rocks_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2010_herb_biomass$Year <- ('2010')
Dustan_Rocks_2010_herb_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2010_comm <- merge(Dustan_Rocks_2010, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2010_comm_biomass <- summarise_at(Dustan_Rocks_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2010_comm_biomass$Year <- ('2010')
Dustan_Rocks_2010_comm_biomass$Reef <- ('Dustan Rocks')

Dustan_Rocks_2011 <- import("Dustan_Rocks/data/Dustan_Rocks_2011.xls")

Dustan_Rocks_2011_herb <- merge(Dustan_Rocks_2011, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2011_herb_biomass <- summarise_at(Dustan_Rocks_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2011_herb_biomass$Year <- ('2011')
Dustan_Rocks_2011_herb_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2011_comm <- merge(Dustan_Rocks_2011, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2011_comm_biomass <- summarise_at(Dustan_Rocks_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2011_comm_biomass$Year <- ('2011')
Dustan_Rocks_2011_comm_biomass$Reef <- ('Dustan Rocks')



Dustan_Rocks_2012 <- import("Dustan_Rocks/data/Dustan_Rocks_2012.xls")

Dustan_Rocks_2012_herb <- merge(Dustan_Rocks_2012, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2012_herb_biomass <- summarise_at(Dustan_Rocks_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2012_herb_biomass$Year <- ('2012')
Dustan_Rocks_2012_herb_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2012_comm <- merge(Dustan_Rocks_2012, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2012_comm_biomass <- summarise_at(Dustan_Rocks_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2012_comm_biomass$Year <- ('2012')
Dustan_Rocks_2012_comm_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2014 <- import("Dustan_Rocks/data/Dustan_Rocks_2014.xls")

Dustan_Rocks_2014_herb <- merge(Dustan_Rocks_2014, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2014_herb_biomass <- summarise_at(Dustan_Rocks_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2014_herb_biomass$Year <- ('2014')
Dustan_Rocks_2014_herb_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2014_comm <- merge(Dustan_Rocks_2014, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2014_comm_biomass <- summarise_at(Dustan_Rocks_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2014_comm_biomass$Year <- ('2014')
Dustan_Rocks_2014_comm_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2016 <- import("Dustan_Rocks/data/Dustan_Rocks_2016.xls")

Dustan_Rocks_2016_herb <- merge(Dustan_Rocks_2016, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2016_herb_biomass <- summarise_at(Dustan_Rocks_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2016_herb_biomass$Year <- ('2016')
Dustan_Rocks_2016_herb_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2016_comm <- merge(Dustan_Rocks_2016, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2016_comm_biomass <- summarise_at(Dustan_Rocks_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2016_comm_biomass$Year <- ('2016')
Dustan_Rocks_2016_comm_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2018 <- import("Dustan_Rocks/data/Dustan_Rocks_2018.xls")

Dustan_Rocks_2018_herb <- merge(Dustan_Rocks_2018, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2018_herb_biomass <- summarise_at(Dustan_Rocks_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2018_herb_biomass$Year <- ('2018')
Dustan_Rocks_2018_herb_biomass$Reef <- ('Dustan Rocks')


Dustan_Rocks_2018_comm <- merge(Dustan_Rocks_2018, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2018_comm_biomass <- summarise_at(Dustan_Rocks_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dustan_Rocks_2018_comm_biomass$Year <- ('2018')
Dustan_Rocks_2018_comm_biomass$Reef <- ('Dustan Rocks')



### Combine all years together for herbivorous and commercial seperately



Dustan_Rocks_herb_1 <- rbind(Dustan_Rocks_1999_herb_biomass,Dustan_Rocks_2000_herb_biomass)
Dustan_Rocks_herb_2 <- rbind(Dustan_Rocks_herb_1,Dustan_Rocks_2001_herb_biomass)
Dustan_Rocks_herb_3 <- rbind(Dustan_Rocks_herb_2,Dustan_Rocks_2002_herb_biomass)
Dustan_Rocks_herb_4 <- rbind(Dustan_Rocks_herb_3,Dustan_Rocks_2003_herb_biomass)
#Dustan_Rocks_herb_5 <- rbind(Dustan_Rocks_herb_4,Dustan_Rocks_2004_herb_biomass)
Dustan_Rocks_herb_6 <- rbind(Dustan_Rocks_herb_4,Dustan_Rocks_2005_herb_biomass)
Dustan_Rocks_herb_7 <- rbind(Dustan_Rocks_herb_6,Dustan_Rocks_2006_herb_biomass)
Dustan_Rocks_herb_8 <- rbind(Dustan_Rocks_herb_7,Dustan_Rocks_2007_herb_biomass)
Dustan_Rocks_herb_9 <- rbind(Dustan_Rocks_herb_8,Dustan_Rocks_2008_herb_biomass)
Dustan_Rocks_herb_10 <- rbind(Dustan_Rocks_herb_9,Dustan_Rocks_2009_herb_biomass)
Dustan_Rocks_herb_11<- rbind(Dustan_Rocks_herb_10,Dustan_Rocks_2010_herb_biomass)
Dustan_Rocks_herb_12 <- rbind(Dustan_Rocks_herb_11,Dustan_Rocks_2011_herb_biomass)
Dustan_Rocks_herb_13 <- rbind(Dustan_Rocks_herb_12,Dustan_Rocks_2012_herb_biomass)
Dustan_Rocks_herb_14 <- rbind(Dustan_Rocks_herb_13,Dustan_Rocks_2014_herb_biomass)
Dustan_Rocks_herb_15 <- rbind(Dustan_Rocks_herb_14,Dustan_Rocks_2016_herb_biomass)
Dustan_Rocks_herb_biomass_data_combined <- rbind(Dustan_Rocks_herb_15,Dustan_Rocks_2018_herb_biomass)



Dustan_Rocks_comm_1 <- rbind(Dustan_Rocks_1999_comm_biomass,Dustan_Rocks_2000_comm_biomass)
Dustan_Rocks_comm_2 <- rbind(Dustan_Rocks_comm_1,Dustan_Rocks_2001_comm_biomass)
Dustan_Rocks_comm_3 <- rbind(Dustan_Rocks_comm_2,Dustan_Rocks_2002_comm_biomass)
Dustan_Rocks_comm_4 <- rbind(Dustan_Rocks_comm_3,Dustan_Rocks_2003_comm_biomass)
#Dustan_Rocks_comm_5 <- rbind(Dustan_Rocks_comm_4,Dustan_Rocks_2004_comm_biomass)
Dustan_Rocks_comm_6 <- rbind(Dustan_Rocks_comm_4,Dustan_Rocks_2005_comm_biomass)
Dustan_Rocks_comm_7 <- rbind(Dustan_Rocks_comm_6,Dustan_Rocks_2006_comm_biomass)
Dustan_Rocks_comm_8 <- rbind(Dustan_Rocks_comm_7,Dustan_Rocks_2007_comm_biomass)
Dustan_Rocks_comm_9 <- rbind(Dustan_Rocks_comm_8,Dustan_Rocks_2008_comm_biomass)
Dustan_Rocks_comm_10 <- rbind(Dustan_Rocks_comm_9,Dustan_Rocks_2009_comm_biomass)
Dustan_Rocks_comm_11<- rbind(Dustan_Rocks_comm_10,Dustan_Rocks_2010_comm_biomass)
Dustan_Rocks_comm_12 <- rbind(Dustan_Rocks_comm_11,Dustan_Rocks_2011_comm_biomass)
Dustan_Rocks_comm_13 <- rbind(Dustan_Rocks_comm_12,Dustan_Rocks_2012_comm_biomass)
Dustan_Rocks_comm_14 <- rbind(Dustan_Rocks_comm_13,Dustan_Rocks_2014_comm_biomass)
Dustan_Rocks_comm_15 <- rbind(Dustan_Rocks_comm_14,Dustan_Rocks_2016_comm_biomass)
Dustan_Rocks_comm_biomass_data_combined <- rbind(Dustan_Rocks_comm_15,Dustan_Rocks_2018_comm_biomass)



export(Dustan_Rocks_herb_biomass_data_combined, "Dustan_Rocks/data/Dustan_Rocks_herbivorous_biomass.csv")
export(Dustan_Rocks_comm_biomass_data_combined, "Dustan_Rocks/data/Dustan_Rocks_commercial_biomass.csv")



# Long Key 

Long_Key_1999 <- import("Long_Key/data/Long_Key_1999.xls")


Long_Key_1999_herb <- merge(Long_Key_1999, Herb, by = c("SPECIES_CD"))
Long_Key_1999_herb_biomass <- summarise_at(Long_Key_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_1999_herb_biomass$Year <- ('1999')
Long_Key_1999_herb_biomass$Reef <- ('Long Key')


Long_Key_1999_comm <- merge(Long_Key_1999, Comm, by = c("SPECIES_CD"))
Long_Key_1999_comm_biomass <- summarise_at(Long_Key_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_1999_comm_biomass$Year <- ('1999')
Long_Key_1999_comm_biomass$Reef <- ('Long Key')


Long_Key_2000 <- import("Long_Key/data/Long_Key_2000.xls")

Long_Key_2000_herb <- merge(Long_Key_2000, Herb, by = c("SPECIES_CD"))
Long_Key_2000_herb_biomass <- summarise_at(Long_Key_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2000_herb_biomass$Year <- ('2000')
Long_Key_2000_herb_biomass$Reef <- ('Long Key')


Long_Key_2000_comm <- merge(Long_Key_2000, Comm, by = c("SPECIES_CD"))
Long_Key_2000_comm_biomass <- summarise_at(Long_Key_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2000_comm_biomass$Year <- ('2000')
Long_Key_2000_comm_biomass$Reef <- ('Long Key')

Long_Key_2001 <- import("Long_Key/data/Long_Key_2001.xls")

Long_Key_2001_herb <- merge(Long_Key_2001, Herb, by = c("SPECIES_CD"))
Long_Key_2001_herb_biomass <- summarise_at(Long_Key_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2001_herb_biomass$Year <- ('2001')
Long_Key_2001_herb_biomass$Reef <- ('Long Key')


Long_Key_2001_comm <- merge(Long_Key_2001, Comm, by = c("SPECIES_CD"))
Long_Key_2001_comm_biomass <- summarise_at(Long_Key_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2001_comm_biomass$Year <- ('2001')
Long_Key_2001_comm_biomass$Reef <- ('Long Key')


Long_Key_2002 <- import("Long_Key/data/Long_Key_2002.xls")

Long_Key_2002_herb <- merge(Long_Key_2002, Herb, by = c("SPECIES_CD"))
Long_Key_2002_herb_biomass <- summarise_at(Long_Key_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2002_herb_biomass$Year <- ('2002')
Long_Key_2002_herb_biomass$Reef <- ('Long Key')


Long_Key_2002_comm <- merge(Long_Key_2002, Comm, by = c("SPECIES_CD"))
Long_Key_2002_comm_biomass <- summarise_at(Long_Key_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2002_comm_biomass$Year <- ('2002')
Long_Key_2002_comm_biomass$Reef <- ('Long Key')


Long_Key_2003 <- import("Long_Key/data/Long_Key_2003.xls")

Long_Key_2003_herb <- merge(Long_Key_2003, Herb, by = c("SPECIES_CD"))
Long_Key_2003_herb_biomass <- summarise_at(Long_Key_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2003_herb_biomass$Year <- ('2003')
Long_Key_2003_herb_biomass$Reef <- ('Long Key')


Long_Key_2003_comm <- merge(Long_Key_2003, Comm, by = c("SPECIES_CD"))
Long_Key_2003_comm_biomass <- summarise_at(Long_Key_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2003_comm_biomass$Year <- ('2003')
Long_Key_2003_comm_biomass$Reef <- ('Long Key')


# Long_Key_2004 <- import("Long_Key/data/Long_Key_2004.xls")
# 
# Long_Key_2004_herb <- merge(Long_Key_2004, Herb, by = c("SPECIES_CD"))
# Long_Key_2004_herb_biomass <- summarise_at(Long_Key_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Long_Key_2004_herb_biomass$Year <- ('2004')
# Long_Key_2004_herb_biomass$Reef <- ('Long Key')
# 
# 
# Long_Key_2004_comm <- merge(Long_Key_2004, Comm, by = c("SPECIES_CD"))
# Long_Key_2004_comm_biomass <- summarise_at(Long_Key_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Long_Key_2004_comm_biomass$Year <- ('2004')
# Long_Key_2004_comm_biomass$Reef <- ('Long Key')

Long_Key_2005 <- import("Long_Key/data/Long_Key_2005.xls")

Long_Key_2005_herb <- merge(Long_Key_2005, Herb, by = c("SPECIES_CD"))
Long_Key_2005_herb_biomass <- summarise_at(Long_Key_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2005_herb_biomass$Year <- ('2005')
Long_Key_2005_herb_biomass$Reef <- ('Long Key')


Long_Key_2005_comm <- merge(Long_Key_2005, Comm, by = c("SPECIES_CD"))
Long_Key_2005_comm_biomass <- summarise_at(Long_Key_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2005_comm_biomass$Year <- ('2005')
Long_Key_2005_comm_biomass$Reef <- ('Long Key')


Long_Key_2006 <- import("Long_Key/data/Long_Key_2006.xls")

Long_Key_2006_herb <- merge(Long_Key_2006, Herb, by = c("SPECIES_CD"))
Long_Key_2006_herb_biomass <- summarise_at(Long_Key_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2006_herb_biomass$Year <- ('2006')
Long_Key_2006_herb_biomass$Reef <- ('Long Key')


Long_Key_2006_comm <- merge(Long_Key_2006, Comm, by = c("SPECIES_CD"))
Long_Key_2006_comm_biomass <- summarise_at(Long_Key_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2006_comm_biomass$Year <- ('2006')
Long_Key_2006_comm_biomass$Reef <- ('Long Key')

Long_Key_2007 <- import("Long_Key/data/Long_Key_2007.xls")

Long_Key_2007_herb <- merge(Long_Key_2007, Herb, by = c("SPECIES_CD"))
Long_Key_2007_herb_biomass <- summarise_at(Long_Key_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2007_herb_biomass$Year <- ('2007')
Long_Key_2007_herb_biomass$Reef <- ('Long Key')


Long_Key_2007_comm <- merge(Long_Key_2007, Comm, by = c("SPECIES_CD"))
Long_Key_2007_comm_biomass <- summarise_at(Long_Key_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2007_comm_biomass$Year <- ('2007')
Long_Key_2007_comm_biomass$Reef <- ('Long Key')


Long_Key_2008 <- import("Long_Key/data/Long_Key_2008.xls")

Long_Key_2008_herb <- merge(Long_Key_2008, Herb, by = c("SPECIES_CD"))
Long_Key_2008_herb_biomass <- summarise_at(Long_Key_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2008_herb_biomass$Year <- ('2008')
Long_Key_2008_herb_biomass$Reef <- ('Long Key')


Long_Key_2008_comm <- merge(Long_Key_2008, Comm, by = c("SPECIES_CD"))
Long_Key_2008_comm_biomass <- summarise_at(Long_Key_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2008_comm_biomass$Year <- ('2008')
Long_Key_2008_comm_biomass$Reef <- ('Long Key')


Long_Key_2009 <- import("Long_Key/data/Long_Key_2009.xls")

Long_Key_2009_herb <- merge(Long_Key_2009, Herb, by = c("SPECIES_CD"))
Long_Key_2009_herb_biomass <- summarise_at(Long_Key_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2009_herb_biomass$Year <- ('2009')
Long_Key_2009_herb_biomass$Reef <- ('Long Key')


Long_Key_2009_comm <- merge(Long_Key_2009, Comm, by = c("SPECIES_CD"))
Long_Key_2009_comm_biomass <- summarise_at(Long_Key_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2009_comm_biomass$Year <- ('2009')
Long_Key_2009_comm_biomass$Reef <- ('Long Key')


Long_Key_2010 <- import("Long_Key/data/Long_Key_2010.xls")

Long_Key_2010_herb <- merge(Long_Key_2010, Herb, by = c("SPECIES_CD"))
Long_Key_2010_herb_biomass <- summarise_at(Long_Key_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2010_herb_biomass$Year <- ('2010')
Long_Key_2010_herb_biomass$Reef <- ('Long Key')


Long_Key_2010_comm <- merge(Long_Key_2010, Comm, by = c("SPECIES_CD"))
Long_Key_2010_comm_biomass <- summarise_at(Long_Key_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2010_comm_biomass$Year <- ('2010')
Long_Key_2010_comm_biomass$Reef <- ('Long Key')

Long_Key_2011 <- import("Long_Key/data/Long_Key_2011.xls")

Long_Key_2011_herb <- merge(Long_Key_2011, Herb, by = c("SPECIES_CD"))
Long_Key_2011_herb_biomass <- summarise_at(Long_Key_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2011_herb_biomass$Year <- ('2011')
Long_Key_2011_herb_biomass$Reef <- ('Long Key')


Long_Key_2011_comm <- merge(Long_Key_2011, Comm, by = c("SPECIES_CD"))
Long_Key_2011_comm_biomass <- summarise_at(Long_Key_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2011_comm_biomass$Year <- ('2011')
Long_Key_2011_comm_biomass$Reef <- ('Long Key')



Long_Key_2012 <- import("Long_Key/data/Long_Key_2012.xls")

Long_Key_2012_herb <- merge(Long_Key_2012, Herb, by = c("SPECIES_CD"))
Long_Key_2012_herb_biomass <- summarise_at(Long_Key_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2012_herb_biomass$Year <- ('2012')
Long_Key_2012_herb_biomass$Reef <- ('Long Key')


Long_Key_2012_comm <- merge(Long_Key_2012, Comm, by = c("SPECIES_CD"))
Long_Key_2012_comm_biomass <- summarise_at(Long_Key_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2012_comm_biomass$Year <- ('2012')
Long_Key_2012_comm_biomass$Reef <- ('Long Key')


Long_Key_2014 <- import("Long_Key/data/Long_Key_2014.xls")

Long_Key_2014_herb <- merge(Long_Key_2014, Herb, by = c("SPECIES_CD"))
Long_Key_2014_herb_biomass <- summarise_at(Long_Key_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2014_herb_biomass$Year <- ('2014')
Long_Key_2014_herb_biomass$Reef <- ('Long Key')


Long_Key_2014_comm <- merge(Long_Key_2014, Comm, by = c("SPECIES_CD"))
Long_Key_2014_comm_biomass <- summarise_at(Long_Key_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2014_comm_biomass$Year <- ('2014')
Long_Key_2014_comm_biomass$Reef <- ('Long Key')


Long_Key_2016 <- import("Long_Key/data/Long_Key_2016.xls")

Long_Key_2016_herb <- merge(Long_Key_2016, Herb, by = c("SPECIES_CD"))
Long_Key_2016_herb_biomass <- summarise_at(Long_Key_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2016_herb_biomass$Year <- ('2016')
Long_Key_2016_herb_biomass$Reef <- ('Long Key')


Long_Key_2016_comm <- merge(Long_Key_2016, Comm, by = c("SPECIES_CD"))
Long_Key_2016_comm_biomass <- summarise_at(Long_Key_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2016_comm_biomass$Year <- ('2016')
Long_Key_2016_comm_biomass$Reef <- ('Long Key')


Long_Key_2018 <- import("Long_Key/data/Long_Key_2018.xls")

Long_Key_2018_herb <- merge(Long_Key_2018, Herb, by = c("SPECIES_CD"))
Long_Key_2018_herb_biomass <- summarise_at(Long_Key_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2018_herb_biomass$Year <- ('2018')
Long_Key_2018_herb_biomass$Reef <- ('Long Key')


Long_Key_2018_comm <- merge(Long_Key_2018, Comm, by = c("SPECIES_CD"))
Long_Key_2018_comm_biomass <- summarise_at(Long_Key_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Long_Key_2018_comm_biomass$Year <- ('2018')
Long_Key_2018_comm_biomass$Reef <- ('Long Key')



### Combine all years together for herbivorous and commercial seperately



Long_Key_herb_1 <- rbind(Long_Key_1999_herb_biomass,Long_Key_2000_herb_biomass)
Long_Key_herb_2 <- rbind(Long_Key_herb_1,Long_Key_2001_herb_biomass)
Long_Key_herb_3 <- rbind(Long_Key_herb_2,Long_Key_2002_herb_biomass)
Long_Key_herb_4 <- rbind(Long_Key_herb_3,Long_Key_2003_herb_biomass)
#Long_Key_herb_5 <- rbind(Long_Key_herb_4,Long_Key_2004_herb_biomass)
Long_Key_herb_6 <- rbind(Long_Key_herb_4,Long_Key_2005_herb_biomass)
Long_Key_herb_7 <- rbind(Long_Key_herb_6,Long_Key_2006_herb_biomass)
Long_Key_herb_8 <- rbind(Long_Key_herb_7,Long_Key_2007_herb_biomass)
Long_Key_herb_9 <- rbind(Long_Key_herb_8,Long_Key_2008_herb_biomass)
Long_Key_herb_10 <- rbind(Long_Key_herb_9,Long_Key_2009_herb_biomass)
Long_Key_herb_11<- rbind(Long_Key_herb_10,Long_Key_2010_herb_biomass)
Long_Key_herb_12 <- rbind(Long_Key_herb_11,Long_Key_2011_herb_biomass)
Long_Key_herb_13 <- rbind(Long_Key_herb_12,Long_Key_2012_herb_biomass)
Long_Key_herb_14 <- rbind(Long_Key_herb_13,Long_Key_2014_herb_biomass)
Long_Key_herb_15 <- rbind(Long_Key_herb_14,Long_Key_2016_herb_biomass)
Long_Key_herb_biomass_data_combined <- rbind(Long_Key_herb_15,Long_Key_2018_herb_biomass)



Long_Key_comm_1 <- rbind(Long_Key_1999_comm_biomass,Long_Key_2000_comm_biomass)
Long_Key_comm_2 <- rbind(Long_Key_comm_1,Long_Key_2001_comm_biomass)
Long_Key_comm_3 <- rbind(Long_Key_comm_2,Long_Key_2002_comm_biomass)
Long_Key_comm_4 <- rbind(Long_Key_comm_3,Long_Key_2003_comm_biomass)
#Long_Key_comm_5 <- rbind(Long_Key_comm_4,Long_Key_2004_comm_biomass)
Long_Key_comm_6 <- rbind(Long_Key_comm_4,Long_Key_2005_comm_biomass)
Long_Key_comm_7 <- rbind(Long_Key_comm_6,Long_Key_2006_comm_biomass)
Long_Key_comm_8 <- rbind(Long_Key_comm_7,Long_Key_2007_comm_biomass)
Long_Key_comm_9 <- rbind(Long_Key_comm_8,Long_Key_2008_comm_biomass)
Long_Key_comm_10 <- rbind(Long_Key_comm_9,Long_Key_2009_comm_biomass)
Long_Key_comm_11<- rbind(Long_Key_comm_10,Long_Key_2010_comm_biomass)
Long_Key_comm_12 <- rbind(Long_Key_comm_11,Long_Key_2011_comm_biomass)
Long_Key_comm_13 <- rbind(Long_Key_comm_12,Long_Key_2012_comm_biomass)
Long_Key_comm_14 <- rbind(Long_Key_comm_13,Long_Key_2014_comm_biomass)
Long_Key_comm_15 <- rbind(Long_Key_comm_14,Long_Key_2016_comm_biomass)
Long_Key_comm_biomass_data_combined <- rbind(Long_Key_comm_15,Long_Key_2018_comm_biomass)



export(Long_Key_herb_biomass_data_combined, "Long_Key/data/Long_Key_herbivorous_biomass.csv")
export(Long_Key_comm_biomass_data_combined, "Long_Key/data/Long_Key_commercial_biomass.csv")



# Molasses_Keys (no data)

Molasses_Keys_1999 <- import("Molasses_Keys/data/Molasses_Keys_1999.xls")


Molasses_Keys_1999_herb <- merge(Molasses_Keys_1999, Herb, by = c("SPECIES_CD"))
Molasses_Keys_1999_herb_biomass <- summarise_at(Molasses_Keys_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_1999_herb_biomass$Year <- ('1999')
Molasses_Keys_1999_herb_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_1999_comm <- merge(Molasses_Keys_1999, Comm, by = c("SPECIES_CD"))
Molasses_Keys_1999_comm_biomass <- summarise_at(Molasses_Keys_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_1999_comm_biomass$Year <- ('1999')
Molasses_Keys_1999_comm_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2000 <- import("Molasses_Keys/data/Molasses_Keys_2000.xls")

Molasses_Keys_2000_herb <- merge(Molasses_Keys_2000, Herb, by = c("SPECIES_CD"))
Molasses_Keys_2000_herb_biomass <- summarise_at(Molasses_Keys_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2000_herb_biomass$Year <- ('2000')
Molasses_Keys_2000_herb_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2000_comm <- merge(Molasses_Keys_2000, Comm, by = c("SPECIES_CD"))
Molasses_Keys_2000_comm_biomass <- summarise_at(Molasses_Keys_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2000_comm_biomass$Year <- ('2000')
Molasses_Keys_2000_comm_biomass$Reef <- ('Molasses Keys')

Molasses_Keys_2001 <- import("Molasses_Keys/data/Molasses_Keys_2001.xls")

Molasses_Keys_2001_herb <- merge(Molasses_Keys_2001, Herb, by = c("SPECIES_CD"))
Molasses_Keys_2001_herb_biomass <- summarise_at(Molasses_Keys_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2001_herb_biomass$Year <- ('2001')
Molasses_Keys_2001_herb_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2001_comm <- merge(Molasses_Keys_2001, Comm, by = c("SPECIES_CD"))
Molasses_Keys_2001_comm_biomass <- summarise_at(Molasses_Keys_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2001_comm_biomass$Year <- ('2001')
Molasses_Keys_2001_comm_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2002 <- import("Molasses_Keys/data/Molasses_Keys_2002.xls")

Molasses_Keys_2002_herb <- merge(Molasses_Keys_2002, Herb, by = c("SPECIES_CD"))
Molasses_Keys_2002_herb_biomass <- summarise_at(Molasses_Keys_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2002_herb_biomass$Year <- ('2002')
Molasses_Keys_2002_herb_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2002_comm <- merge(Molasses_Keys_2002, Comm, by = c("SPECIES_CD"))
Molasses_Keys_2002_comm_biomass <- summarise_at(Molasses_Keys_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2002_comm_biomass$Year <- ('2002')
Molasses_Keys_2002_comm_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2003 <- import("Molasses_Keys/data/Molasses_Keys_2003.xls")

Molasses_Keys_2003_herb <- merge(Molasses_Keys_2003, Herb, by = c("SPECIES_CD"))
Molasses_Keys_2003_herb_biomass <- summarise_at(Molasses_Keys_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2003_herb_biomass$Year <- ('2003')
Molasses_Keys_2003_herb_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2003_comm <- merge(Molasses_Keys_2003, Comm, by = c("SPECIES_CD"))
Molasses_Keys_2003_comm_biomass <- summarise_at(Molasses_Keys_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2003_comm_biomass$Year <- ('2003')
Molasses_Keys_2003_comm_biomass$Reef <- ('Molasses Keys')


# Molasses_Keys_2004 <- import("Molasses_Keys/data/Molasses_Keys_2004.xls")
# 
# Molasses_Keys_2004_herb <- merge(Molasses_Keys_2004, Herb, by = c("SPECIES_CD"))
# Molasses_Keys_2004_herb_biomass <- summarise_at(Molasses_Keys_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Molasses_Keys_2004_herb_biomass$Year <- ('2004')
# Molasses_Keys_2004_herb_biomass$Reef <- ('Molasses Keys')
# 
# 
# Molasses_Keys_2004_comm <- merge(Molasses_Keys_2004, Comm, by = c("SPECIES_CD"))
# Molasses_Keys_2004_comm_biomass <- summarise_at(Molasses_Keys_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Molasses_Keys_2004_comm_biomass$Year <- ('2004')
# Molasses_Keys_2004_comm_biomass$Reef <- ('Molasses Keys')

Molasses_Keys_2005 <- import("Molasses_Keys/data/Molasses_Keys_2005.xls")

Molasses_Keys_2005_herb <- merge(Molasses_Keys_2005, Herb, by = c("SPECIES_CD"))
Molasses_Keys_2005_herb_biomass <- summarise_at(Molasses_Keys_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2005_herb_biomass$Year <- ('2005')
Molasses_Keys_2005_herb_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2005_comm <- merge(Molasses_Keys_2005, Comm, by = c("SPECIES_CD"))
Molasses_Keys_2005_comm_biomass <- summarise_at(Molasses_Keys_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2005_comm_biomass$Year <- ('2005')
Molasses_Keys_2005_comm_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2006 <- import("Molasses_Keys/data/Molasses_Keys_2006.xls")

Molasses_Keys_2006_herb <- merge(Molasses_Keys_2006, Herb, by = c("SPECIES_CD"))
Molasses_Keys_2006_herb_biomass <- summarise_at(Molasses_Keys_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2006_herb_biomass$Year <- ('2006')
Molasses_Keys_2006_herb_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2006_comm <- merge(Molasses_Keys_2006, Comm, by = c("SPECIES_CD"))
Molasses_Keys_2006_comm_biomass <- summarise_at(Molasses_Keys_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2006_comm_biomass$Year <- ('2006')
Molasses_Keys_2006_comm_biomass$Reef <- ('Molasses Keys')

Molasses_Keys_2007 <- import("Molasses_Keys/data/Molasses_Keys_2007.xls")

Molasses_Keys_2007_herb <- merge(Molasses_Keys_2007, Herb, by = c("SPECIES_CD"))
Molasses_Keys_2007_herb_biomass <- summarise_at(Molasses_Keys_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2007_herb_biomass$Year <- ('2007')
Molasses_Keys_2007_herb_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2007_comm <- merge(Molasses_Keys_2007, Comm, by = c("SPECIES_CD"))
Molasses_Keys_2007_comm_biomass <- summarise_at(Molasses_Keys_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2007_comm_biomass$Year <- ('2007')
Molasses_Keys_2007_comm_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2008 <- import("Molasses_Keys/data/Molasses_Keys_2008.xls")

Molasses_Keys_2008_herb <- merge(Molasses_Keys_2008, Herb, by = c("SPECIES_CD"))
Molasses_Keys_2008_herb_biomass <- summarise_at(Molasses_Keys_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2008_herb_biomass$Year <- ('2008')
Molasses_Keys_2008_herb_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2008_comm <- merge(Molasses_Keys_2008, Comm, by = c("SPECIES_CD"))
Molasses_Keys_2008_comm_biomass <- summarise_at(Molasses_Keys_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2008_comm_biomass$Year <- ('2008')
Molasses_Keys_2008_comm_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2009 <- import("Molasses_Keys/data/Molasses_Keys_2009.xls")

Molasses_Keys_2009_herb <- merge(Molasses_Keys_2009, Herb, by = c("SPECIES_CD"))
Molasses_Keys_2009_herb_biomass <- summarise_at(Molasses_Keys_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2009_herb_biomass$Year <- ('2009')
Molasses_Keys_2009_herb_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2009_comm <- merge(Molasses_Keys_2009, Comm, by = c("SPECIES_CD"))
Molasses_Keys_2009_comm_biomass <- summarise_at(Molasses_Keys_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2009_comm_biomass$Year <- ('2009')
Molasses_Keys_2009_comm_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2010 <- import("Molasses_Keys/data/Molasses_Keys_2010.xls")

Molasses_Keys_2010_herb <- merge(Molasses_Keys_2010, Herb, by = c("SPECIES_CD"))
Molasses_Keys_2010_herb_biomass <- summarise_at(Molasses_Keys_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2010_herb_biomass$Year <- ('2010')
Molasses_Keys_2010_herb_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2010_comm <- merge(Molasses_Keys_2010, Comm, by = c("SPECIES_CD"))
Molasses_Keys_2010_comm_biomass <- summarise_at(Molasses_Keys_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2010_comm_biomass$Year <- ('2010')
Molasses_Keys_2010_comm_biomass$Reef <- ('Molasses Keys')

Molasses_Keys_2011 <- import("Molasses_Keys/data/Molasses_Keys_2011.xls")

Molasses_Keys_2011_herb <- merge(Molasses_Keys_2011, Herb, by = c("SPECIES_CD"))
Molasses_Keys_2011_herb_biomass <- summarise_at(Molasses_Keys_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2011_herb_biomass$Year <- ('2011')
Molasses_Keys_2011_herb_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2011_comm <- merge(Molasses_Keys_2011, Comm, by = c("SPECIES_CD"))
Molasses_Keys_2011_comm_biomass <- summarise_at(Molasses_Keys_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2011_comm_biomass$Year <- ('2011')
Molasses_Keys_2011_comm_biomass$Reef <- ('Molasses Keys')



Molasses_Keys_2012 <- import("Molasses_Keys/data/Molasses_Keys_2012.xls")

Molasses_Keys_2012_herb <- merge(Molasses_Keys_2012, Herb, by = c("SPECIES_CD"))
Molasses_Keys_2012_herb_biomass <- summarise_at(Molasses_Keys_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2012_herb_biomass$Year <- ('2012')
Molasses_Keys_2012_herb_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2012_comm <- merge(Molasses_Keys_2012, Comm, by = c("SPECIES_CD"))
Molasses_Keys_2012_comm_biomass <- summarise_at(Molasses_Keys_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2012_comm_biomass$Year <- ('2012')
Molasses_Keys_2012_comm_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2014 <- import("Molasses_Keys/data/Molasses_Keys_2014.xls")

Molasses_Keys_2014_herb <- merge(Molasses_Keys_2014, Herb, by = c("SPECIES_CD"))
Molasses_Keys_2014_herb_biomass <- summarise_at(Molasses_Keys_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2014_herb_biomass$Year <- ('2014')
Molasses_Keys_2014_herb_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2014_comm <- merge(Molasses_Keys_2014, Comm, by = c("SPECIES_CD"))
Molasses_Keys_2014_comm_biomass <- summarise_at(Molasses_Keys_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2014_comm_biomass$Year <- ('2014')
Molasses_Keys_2014_comm_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2016 <- import("Molasses_Keys/data/Molasses_Keys_2016.xls")

Molasses_Keys_2016_herb <- merge(Molasses_Keys_2016, Herb, by = c("SPECIES_CD"))
Molasses_Keys_2016_herb_biomass <- summarise_at(Molasses_Keys_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2016_herb_biomass$Year <- ('2016')
Molasses_Keys_2016_herb_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2016_comm <- merge(Molasses_Keys_2016, Comm, by = c("SPECIES_CD"))
Molasses_Keys_2016_comm_biomass <- summarise_at(Molasses_Keys_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2016_comm_biomass$Year <- ('2016')
Molasses_Keys_2016_comm_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2018 <- import("Molasses_Keys/data/Molasses_Keys_2018.xls")

Molasses_Keys_2018_herb <- merge(Molasses_Keys_2018, Herb, by = c("SPECIES_CD"))
Molasses_Keys_2018_herb_biomass <- summarise_at(Molasses_Keys_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2018_herb_biomass$Year <- ('2018')
Molasses_Keys_2018_herb_biomass$Reef <- ('Molasses Keys')


Molasses_Keys_2018_comm <- merge(Molasses_Keys_2018, Comm, by = c("SPECIES_CD"))
Molasses_Keys_2018_comm_biomass <- summarise_at(Molasses_Keys_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Keys_2018_comm_biomass$Year <- ('2018')
Molasses_Keys_2018_comm_biomass$Reef <- ('Molasses Keys')



### Combine all years together for herbivorous and commercial seperately



Molasses_Keys_herb_1 <- rbind(Molasses_Keys_1999_herb_biomass,Molasses_Keys_2000_herb_biomass)
Molasses_Keys_herb_2 <- rbind(Molasses_Keys_herb_1,Molasses_Keys_2001_herb_biomass)
Molasses_Keys_herb_3 <- rbind(Molasses_Keys_herb_2,Molasses_Keys_2002_herb_biomass)
Molasses_Keys_herb_4 <- rbind(Molasses_Keys_herb_3,Molasses_Keys_2003_herb_biomass)
#Molasses_Keys_herb_5 <- rbind(Molasses_Keys_herb_4,Molasses_Keys_2004_herb_biomass)
Molasses_Keys_herb_6 <- rbind(Molasses_Keys_herb_4,Molasses_Keys_2005_herb_biomass)
Molasses_Keys_herb_7 <- rbind(Molasses_Keys_herb_6,Molasses_Keys_2006_herb_biomass)
Molasses_Keys_herb_8 <- rbind(Molasses_Keys_herb_7,Molasses_Keys_2007_herb_biomass)
Molasses_Keys_herb_9 <- rbind(Molasses_Keys_herb_8,Molasses_Keys_2008_herb_biomass)
Molasses_Keys_herb_10 <- rbind(Molasses_Keys_herb_9,Molasses_Keys_2009_herb_biomass)
Molasses_Keys_herb_11<- rbind(Molasses_Keys_herb_10,Molasses_Keys_2010_herb_biomass)
Molasses_Keys_herb_12 <- rbind(Molasses_Keys_herb_11,Molasses_Keys_2011_herb_biomass)
Molasses_Keys_herb_13 <- rbind(Molasses_Keys_herb_12,Molasses_Keys_2012_herb_biomass)
Molasses_Keys_herb_14 <- rbind(Molasses_Keys_herb_13,Molasses_Keys_2014_herb_biomass)
Molasses_Keys_herb_15 <- rbind(Molasses_Keys_herb_14,Molasses_Keys_2016_herb_biomass)
Molasses_Keys_herb_biomass_data_combined <- rbind(Molasses_Keys_herb_15,Molasses_Keys_2018_herb_biomass)



Molasses_Keys_comm_1 <- rbind(Molasses_Keys_1999_comm_biomass,Molasses_Keys_2000_comm_biomass)
Molasses_Keys_comm_2 <- rbind(Molasses_Keys_comm_1,Molasses_Keys_2001_comm_biomass)
Molasses_Keys_comm_3 <- rbind(Molasses_Keys_comm_2,Molasses_Keys_2002_comm_biomass)
Molasses_Keys_comm_4 <- rbind(Molasses_Keys_comm_3,Molasses_Keys_2003_comm_biomass)
#Molasses_Keys_comm_5 <- rbind(Molasses_Keys_comm_4,Molasses_Keys_2004_comm_biomass)
Molasses_Keys_comm_6 <- rbind(Molasses_Keys_comm_4,Molasses_Keys_2005_comm_biomass)
Molasses_Keys_comm_7 <- rbind(Molasses_Keys_comm_6,Molasses_Keys_2006_comm_biomass)
Molasses_Keys_comm_8 <- rbind(Molasses_Keys_comm_7,Molasses_Keys_2007_comm_biomass)
Molasses_Keys_comm_9 <- rbind(Molasses_Keys_comm_8,Molasses_Keys_2008_comm_biomass)
Molasses_Keys_comm_10 <- rbind(Molasses_Keys_comm_9,Molasses_Keys_2009_comm_biomass)
Molasses_Keys_comm_11<- rbind(Molasses_Keys_comm_10,Molasses_Keys_2010_comm_biomass)
Molasses_Keys_comm_12 <- rbind(Molasses_Keys_comm_11,Molasses_Keys_2011_comm_biomass)
Molasses_Keys_comm_13 <- rbind(Molasses_Keys_comm_12,Molasses_Keys_2012_comm_biomass)
Molasses_Keys_comm_14 <- rbind(Molasses_Keys_comm_13,Molasses_Keys_2014_comm_biomass)
Molasses_Keys_comm_15 <- rbind(Molasses_Keys_comm_14,Molasses_Keys_2016_comm_biomass)
Molasses_Keys_comm_biomass_data_combined <- rbind(Molasses_Keys_comm_15,Molasses_Keys_2018_comm_biomass)



export(Molasses_Keys_herb_biomass_data_combined, "Molasses_Keys/data/Molasses_Keys_herbivorous_biomass.csv")
export(Molasses_Keys_comm_biomass_data_combined, "Molasses_Keys/data/Molasses_Keys_commercial_biomass.csv")



# Moser Channel (no data)

Moser_Channel_1999 <- import("Moser_Channel/data/Moser_Channel_1999.xls")


Moser_Channel_1999_herb <- merge(Moser_Channel_1999, Herb, by = c("SPECIES_CD"))
Moser_Channel_1999_herb_biomass <- summarise_at(Moser_Channel_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_1999_herb_biomass$Year <- ('1999')
Moser_Channel_1999_herb_biomass$Reef <- ('Moser Channel')


Moser_Channel_1999_comm <- merge(Moser_Channel_1999, Comm, by = c("SPECIES_CD"))
Moser_Channel_1999_comm_biomass <- summarise_at(Moser_Channel_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_1999_comm_biomass$Year <- ('1999')
Moser_Channel_1999_comm_biomass$Reef <- ('Moser Channel')


Moser_Channel_2000 <- import("Moser_Channel/data/Moser_Channel_2000.xls")

Moser_Channel_2000_herb <- merge(Moser_Channel_2000, Herb, by = c("SPECIES_CD"))
Moser_Channel_2000_herb_biomass <- summarise_at(Moser_Channel_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2000_herb_biomass$Year <- ('2000')
Moser_Channel_2000_herb_biomass$Reef <- ('Moser Channel')


Moser_Channel_2000_comm <- merge(Moser_Channel_2000, Comm, by = c("SPECIES_CD"))
Moser_Channel_2000_comm_biomass <- summarise_at(Moser_Channel_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2000_comm_biomass$Year <- ('2000')
Moser_Channel_2000_comm_biomass$Reef <- ('Moser Channel')

Moser_Channel_2001 <- import("Moser_Channel/data/Moser_Channel_2001.xls")

Moser_Channel_2001_herb <- merge(Moser_Channel_2001, Herb, by = c("SPECIES_CD"))
Moser_Channel_2001_herb_biomass <- summarise_at(Moser_Channel_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2001_herb_biomass$Year <- ('2001')
Moser_Channel_2001_herb_biomass$Reef <- ('Moser Channel')


Moser_Channel_2001_comm <- merge(Moser_Channel_2001, Comm, by = c("SPECIES_CD"))
Moser_Channel_2001_comm_biomass <- summarise_at(Moser_Channel_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2001_comm_biomass$Year <- ('2001')
Moser_Channel_2001_comm_biomass$Reef <- ('Moser Channel')


Moser_Channel_2002 <- import("Moser_Channel/data/Moser_Channel_2002.xls")

Moser_Channel_2002_herb <- merge(Moser_Channel_2002, Herb, by = c("SPECIES_CD"))
Moser_Channel_2002_herb_biomass <- summarise_at(Moser_Channel_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2002_herb_biomass$Year <- ('2002')
Moser_Channel_2002_herb_biomass$Reef <- ('Moser Channel')


Moser_Channel_2002_comm <- merge(Moser_Channel_2002, Comm, by = c("SPECIES_CD"))
Moser_Channel_2002_comm_biomass <- summarise_at(Moser_Channel_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2002_comm_biomass$Year <- ('2002')
Moser_Channel_2002_comm_biomass$Reef <- ('Moser Channel')


Moser_Channel_2003 <- import("Moser_Channel/data/Moser_Channel_2003.xls")

Moser_Channel_2003_herb <- merge(Moser_Channel_2003, Herb, by = c("SPECIES_CD"))
Moser_Channel_2003_herb_biomass <- summarise_at(Moser_Channel_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2003_herb_biomass$Year <- ('2003')
Moser_Channel_2003_herb_biomass$Reef <- ('Moser Channel')


Moser_Channel_2003_comm <- merge(Moser_Channel_2003, Comm, by = c("SPECIES_CD"))
Moser_Channel_2003_comm_biomass <- summarise_at(Moser_Channel_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2003_comm_biomass$Year <- ('2003')
Moser_Channel_2003_comm_biomass$Reef <- ('Moser Channel')


# Moser_Channel_2004 <- import("Moser_Channel/data/Moser_Channel_2004.xls")
# 
# Moser_Channel_2004_herb <- merge(Moser_Channel_2004, Herb, by = c("SPECIES_CD"))
# Moser_Channel_2004_herb_biomass <- summarise_at(Moser_Channel_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Moser_Channel_2004_herb_biomass$Year <- ('2004')
# Moser_Channel_2004_herb_biomass$Reef <- ('Moser Channel')
# 
# 
# Moser_Channel_2004_comm <- merge(Moser_Channel_2004, Comm, by = c("SPECIES_CD"))
# Moser_Channel_2004_comm_biomass <- summarise_at(Moser_Channel_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Moser_Channel_2004_comm_biomass$Year <- ('2004')
# Moser_Channel_2004_comm_biomass$Reef <- ('Moser Channel')

Moser_Channel_2005 <- import("Moser_Channel/data/Moser_Channel_2005.xls")

Moser_Channel_2005_herb <- merge(Moser_Channel_2005, Herb, by = c("SPECIES_CD"))
Moser_Channel_2005_herb_biomass <- summarise_at(Moser_Channel_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2005_herb_biomass$Year <- ('2005')
Moser_Channel_2005_herb_biomass$Reef <- ('Moser Channel')


Moser_Channel_2005_comm <- merge(Moser_Channel_2005, Comm, by = c("SPECIES_CD"))
Moser_Channel_2005_comm_biomass <- summarise_at(Moser_Channel_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2005_comm_biomass$Year <- ('2005')
Moser_Channel_2005_comm_biomass$Reef <- ('Moser Channel')


Moser_Channel_2006 <- import("Moser_Channel/data/Moser_Channel_2006.xls")

Moser_Channel_2006_herb <- merge(Moser_Channel_2006, Herb, by = c("SPECIES_CD"))
Moser_Channel_2006_herb_biomass <- summarise_at(Moser_Channel_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2006_herb_biomass$Year <- ('2006')
Moser_Channel_2006_herb_biomass$Reef <- ('Moser Channel')


Moser_Channel_2006_comm <- merge(Moser_Channel_2006, Comm, by = c("SPECIES_CD"))
Moser_Channel_2006_comm_biomass <- summarise_at(Moser_Channel_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2006_comm_biomass$Year <- ('2006')
Moser_Channel_2006_comm_biomass$Reef <- ('Moser Channel')

Moser_Channel_2007 <- import("Moser_Channel/data/Moser_Channel_2007.xls")

Moser_Channel_2007_herb <- merge(Moser_Channel_2007, Herb, by = c("SPECIES_CD"))
Moser_Channel_2007_herb_biomass <- summarise_at(Moser_Channel_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2007_herb_biomass$Year <- ('2007')
Moser_Channel_2007_herb_biomass$Reef <- ('Moser Channel')


Moser_Channel_2007_comm <- merge(Moser_Channel_2007, Comm, by = c("SPECIES_CD"))
Moser_Channel_2007_comm_biomass <- summarise_at(Moser_Channel_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2007_comm_biomass$Year <- ('2007')
Moser_Channel_2007_comm_biomass$Reef <- ('Moser Channel')


Moser_Channel_2008 <- import("Moser_Channel/data/Moser_Channel_2008.xls")

Moser_Channel_2008_herb <- merge(Moser_Channel_2008, Herb, by = c("SPECIES_CD"))
Moser_Channel_2008_herb_biomass <- summarise_at(Moser_Channel_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2008_herb_biomass$Year <- ('2008')
Moser_Channel_2008_herb_biomass$Reef <- ('Moser Channel')


Moser_Channel_2008_comm <- merge(Moser_Channel_2008, Comm, by = c("SPECIES_CD"))
Moser_Channel_2008_comm_biomass <- summarise_at(Moser_Channel_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2008_comm_biomass$Year <- ('2008')
Moser_Channel_2008_comm_biomass$Reef <- ('Moser Channel')


Moser_Channel_2009 <- import("Moser_Channel/data/Moser_Channel_2009.xls")

Moser_Channel_2009_herb <- merge(Moser_Channel_2009, Herb, by = c("SPECIES_CD"))
Moser_Channel_2009_herb_biomass <- summarise_at(Moser_Channel_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2009_herb_biomass$Year <- ('2009')
Moser_Channel_2009_herb_biomass$Reef <- ('Moser Channel')


Moser_Channel_2009_comm <- merge(Moser_Channel_2009, Comm, by = c("SPECIES_CD"))
Moser_Channel_2009_comm_biomass <- summarise_at(Moser_Channel_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2009_comm_biomass$Year <- ('2009')
Moser_Channel_2009_comm_biomass$Reef <- ('Moser Channel')


Moser_Channel_2010 <- import("Moser_Channel/data/Moser_Channel_2010.xls")

Moser_Channel_2010_herb <- merge(Moser_Channel_2010, Herb, by = c("SPECIES_CD"))
Moser_Channel_2010_herb_biomass <- summarise_at(Moser_Channel_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2010_herb_biomass$Year <- ('2010')
Moser_Channel_2010_herb_biomass$Reef <- ('Moser Channel')


Moser_Channel_2010_comm <- merge(Moser_Channel_2010, Comm, by = c("SPECIES_CD"))
Moser_Channel_2010_comm_biomass <- summarise_at(Moser_Channel_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2010_comm_biomass$Year <- ('2010')
Moser_Channel_2010_comm_biomass$Reef <- ('Moser Channel')

Moser_Channel_2011 <- import("Moser_Channel/data/Moser_Channel_2011.xls")

Moser_Channel_2011_herb <- merge(Moser_Channel_2011, Herb, by = c("SPECIES_CD"))
Moser_Channel_2011_herb_biomass <- summarise_at(Moser_Channel_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2011_herb_biomass$Year <- ('2011')
Moser_Channel_2011_herb_biomass$Reef <- ('Moser Channel')


Moser_Channel_2011_comm <- merge(Moser_Channel_2011, Comm, by = c("SPECIES_CD"))
Moser_Channel_2011_comm_biomass <- summarise_at(Moser_Channel_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2011_comm_biomass$Year <- ('2011')
Moser_Channel_2011_comm_biomass$Reef <- ('Moser Channel')



Moser_Channel_2012 <- import("Moser_Channel/data/Moser_Channel_2012.xls")

Moser_Channel_2012_herb <- merge(Moser_Channel_2012, Herb, by = c("SPECIES_CD"))
Moser_Channel_2012_herb_biomass <- summarise_at(Moser_Channel_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2012_herb_biomass$Year <- ('2012')
Moser_Channel_2012_herb_biomass$Reef <- ('Moser Channel')


Moser_Channel_2012_comm <- merge(Moser_Channel_2012, Comm, by = c("SPECIES_CD"))
Moser_Channel_2012_comm_biomass <- summarise_at(Moser_Channel_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2012_comm_biomass$Year <- ('2012')
Moser_Channel_2012_comm_biomass$Reef <- ('Moser Channel')


Moser_Channel_2014 <- import("Moser_Channel/data/Moser_Channel_2014.xls")

Moser_Channel_2014_herb <- merge(Moser_Channel_2014, Herb, by = c("SPECIES_CD"))
Moser_Channel_2014_herb_biomass <- summarise_at(Moser_Channel_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2014_herb_biomass$Year <- ('2014')
Moser_Channel_2014_herb_biomass$Reef <- ('Moser Channel')


Moser_Channel_2014_comm <- merge(Moser_Channel_2014, Comm, by = c("SPECIES_CD"))
Moser_Channel_2014_comm_biomass <- summarise_at(Moser_Channel_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2014_comm_biomass$Year <- ('2014')
Moser_Channel_2014_comm_biomass$Reef <- ('Moser Channel')


Moser_Channel_2016 <- import("Moser_Channel/data/Moser_Channel_2016.xls")

Moser_Channel_2016_herb <- merge(Moser_Channel_2016, Herb, by = c("SPECIES_CD"))
Moser_Channel_2016_herb_biomass <- summarise_at(Moser_Channel_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2016_herb_biomass$Year <- ('2016')
Moser_Channel_2016_herb_biomass$Reef <- ('Moser Channel')


Moser_Channel_2016_comm <- merge(Moser_Channel_2016, Comm, by = c("SPECIES_CD"))
Moser_Channel_2016_comm_biomass <- summarise_at(Moser_Channel_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2016_comm_biomass$Year <- ('2016')
Moser_Channel_2016_comm_biomass$Reef <- ('Moser Channel')


Moser_Channel_2018 <- import("Moser_Channel/data/Moser_Channel_2018.xls")

Moser_Channel_2018_herb <- merge(Moser_Channel_2018, Herb, by = c("SPECIES_CD"))
Moser_Channel_2018_herb_biomass <- summarise_at(Moser_Channel_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2018_herb_biomass$Year <- ('2018')
Moser_Channel_2018_herb_biomass$Reef <- ('Moser Channel')


Moser_Channel_2018_comm <- merge(Moser_Channel_2018, Comm, by = c("SPECIES_CD"))
Moser_Channel_2018_comm_biomass <- summarise_at(Moser_Channel_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Moser_Channel_2018_comm_biomass$Year <- ('2018')
Moser_Channel_2018_comm_biomass$Reef <- ('Moser Channel')



### Combine all years together for herbivorous and commercial seperately



Moser_Channel_herb_1 <- rbind(Moser_Channel_1999_herb_biomass,Moser_Channel_2000_herb_biomass)
Moser_Channel_herb_2 <- rbind(Moser_Channel_herb_1,Moser_Channel_2001_herb_biomass)
Moser_Channel_herb_3 <- rbind(Moser_Channel_herb_2,Moser_Channel_2002_herb_biomass)
Moser_Channel_herb_4 <- rbind(Moser_Channel_herb_3,Moser_Channel_2003_herb_biomass)
#Moser_Channel_herb_5 <- rbind(Moser_Channel_herb_4,Moser_Channel_2004_herb_biomass)
Moser_Channel_herb_6 <- rbind(Moser_Channel_herb_4,Moser_Channel_2005_herb_biomass)
Moser_Channel_herb_7 <- rbind(Moser_Channel_herb_6,Moser_Channel_2006_herb_biomass)
Moser_Channel_herb_8 <- rbind(Moser_Channel_herb_7,Moser_Channel_2007_herb_biomass)
Moser_Channel_herb_9 <- rbind(Moser_Channel_herb_8,Moser_Channel_2008_herb_biomass)
Moser_Channel_herb_10 <- rbind(Moser_Channel_herb_9,Moser_Channel_2009_herb_biomass)
Moser_Channel_herb_11<- rbind(Moser_Channel_herb_10,Moser_Channel_2010_herb_biomass)
Moser_Channel_herb_12 <- rbind(Moser_Channel_herb_11,Moser_Channel_2011_herb_biomass)
Moser_Channel_herb_13 <- rbind(Moser_Channel_herb_12,Moser_Channel_2012_herb_biomass)
Moser_Channel_herb_14 <- rbind(Moser_Channel_herb_13,Moser_Channel_2014_herb_biomass)
Moser_Channel_herb_15 <- rbind(Moser_Channel_herb_14,Moser_Channel_2016_herb_biomass)
Moser_Channel_herb_biomass_data_combined <- rbind(Moser_Channel_herb_15,Moser_Channel_2018_herb_biomass)



Moser_Channel_comm_1 <- rbind(Moser_Channel_1999_comm_biomass,Moser_Channel_2000_comm_biomass)
Moser_Channel_comm_2 <- rbind(Moser_Channel_comm_1,Moser_Channel_2001_comm_biomass)
Moser_Channel_comm_3 <- rbind(Moser_Channel_comm_2,Moser_Channel_2002_comm_biomass)
Moser_Channel_comm_4 <- rbind(Moser_Channel_comm_3,Moser_Channel_2003_comm_biomass)
#Moser_Channel_comm_5 <- rbind(Moser_Channel_comm_4,Moser_Channel_2004_comm_biomass)
Moser_Channel_comm_6 <- rbind(Moser_Channel_comm_4,Moser_Channel_2005_comm_biomass)
Moser_Channel_comm_7 <- rbind(Moser_Channel_comm_6,Moser_Channel_2006_comm_biomass)
Moser_Channel_comm_8 <- rbind(Moser_Channel_comm_7,Moser_Channel_2007_comm_biomass)
Moser_Channel_comm_9 <- rbind(Moser_Channel_comm_8,Moser_Channel_2008_comm_biomass)
Moser_Channel_comm_10 <- rbind(Moser_Channel_comm_9,Moser_Channel_2009_comm_biomass)
Moser_Channel_comm_11<- rbind(Moser_Channel_comm_10,Moser_Channel_2010_comm_biomass)
Moser_Channel_comm_12 <- rbind(Moser_Channel_comm_11,Moser_Channel_2011_comm_biomass)
Moser_Channel_comm_13 <- rbind(Moser_Channel_comm_12,Moser_Channel_2012_comm_biomass)
Moser_Channel_comm_14 <- rbind(Moser_Channel_comm_13,Moser_Channel_2014_comm_biomass)
Moser_Channel_comm_15 <- rbind(Moser_Channel_comm_14,Moser_Channel_2016_comm_biomass)
Moser_Channel_comm_biomass_data_combined <- rbind(Moser_Channel_comm_15,Moser_Channel_2018_comm_biomass)



export(Moser_Channel_herb_biomass_data_combined, "Moser_Channel/data/Moser_Channel_herbivorous_biomass.csv")
export(Moser_Channel_comm_biomass_data_combined, "Moser_Channel/data/Moser_Channel_commercial_biomass.csv")





# Rawa Reef 

Rawa_Reef_1999 <- import("Rawa_Reef/data/Rawa_Reef_1999.xls")


Rawa_Reef_1999_herb <- merge(Rawa_Reef_1999, Herb, by = c("SPECIES_CD"))
Rawa_Reef_1999_herb_biomass <- summarise_at(Rawa_Reef_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_1999_herb_biomass$Year <- ('1999')
Rawa_Reef_1999_herb_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_1999_comm <- merge(Rawa_Reef_1999, Comm, by = c("SPECIES_CD"))
Rawa_Reef_1999_comm_biomass <- summarise_at(Rawa_Reef_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_1999_comm_biomass$Year <- ('1999')
Rawa_Reef_1999_comm_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2000 <- import("Rawa_Reef/data/Rawa_Reef_2000.xls")

Rawa_Reef_2000_herb <- merge(Rawa_Reef_2000, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2000_herb_biomass <- summarise_at(Rawa_Reef_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2000_herb_biomass$Year <- ('2000')
Rawa_Reef_2000_herb_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2000_comm <- merge(Rawa_Reef_2000, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2000_comm_biomass <- summarise_at(Rawa_Reef_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2000_comm_biomass$Year <- ('2000')
Rawa_Reef_2000_comm_biomass$Reef <- ('Rawa Reef')

Rawa_Reef_2001 <- import("Rawa_Reef/data/Rawa_Reef_2001.xls")

Rawa_Reef_2001_herb <- merge(Rawa_Reef_2001, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2001_herb_biomass <- summarise_at(Rawa_Reef_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2001_herb_biomass$Year <- ('2001')
Rawa_Reef_2001_herb_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2001_comm <- merge(Rawa_Reef_2001, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2001_comm_biomass <- summarise_at(Rawa_Reef_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2001_comm_biomass$Year <- ('2001')
Rawa_Reef_2001_comm_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2002 <- import("Rawa_Reef/data/Rawa_Reef_2002.xls")

Rawa_Reef_2002_herb <- merge(Rawa_Reef_2002, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2002_herb_biomass <- summarise_at(Rawa_Reef_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2002_herb_biomass$Year <- ('2002')
Rawa_Reef_2002_herb_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2002_comm <- merge(Rawa_Reef_2002, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2002_comm_biomass <- summarise_at(Rawa_Reef_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2002_comm_biomass$Year <- ('2002')
Rawa_Reef_2002_comm_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2003 <- import("Rawa_Reef/data/Rawa_Reef_2003.xls")

Rawa_Reef_2003_herb <- merge(Rawa_Reef_2003, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2003_herb_biomass <- summarise_at(Rawa_Reef_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2003_herb_biomass$Year <- ('2003')
Rawa_Reef_2003_herb_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2003_comm <- merge(Rawa_Reef_2003, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2003_comm_biomass <- summarise_at(Rawa_Reef_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2003_comm_biomass$Year <- ('2003')
Rawa_Reef_2003_comm_biomass$Reef <- ('Rawa Reef')


# Rawa_Reef_2004 <- import("Rawa_Reef/data/Rawa_Reef_2004.xls")
# 
# Rawa_Reef_2004_herb <- merge(Rawa_Reef_2004, Herb, by = c("SPECIES_CD"))
# Rawa_Reef_2004_herb_biomass <- summarise_at(Rawa_Reef_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Rawa_Reef_2004_herb_biomass$Year <- ('2004')
# Rawa_Reef_2004_herb_biomass$Reef <- ('Rawa Reef')
# 
# 
# Rawa_Reef_2004_comm <- merge(Rawa_Reef_2004, Comm, by = c("SPECIES_CD"))
# Rawa_Reef_2004_comm_biomass <- summarise_at(Rawa_Reef_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Rawa_Reef_2004_comm_biomass$Year <- ('2004')
# Rawa_Reef_2004_comm_biomass$Reef <- ('Rawa Reef')

Rawa_Reef_2005 <- import("Rawa_Reef/data/Rawa_Reef_2005.xls")

Rawa_Reef_2005_herb <- merge(Rawa_Reef_2005, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2005_herb_biomass <- summarise_at(Rawa_Reef_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2005_herb_biomass$Year <- ('2005')
Rawa_Reef_2005_herb_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2005_comm <- merge(Rawa_Reef_2005, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2005_comm_biomass <- summarise_at(Rawa_Reef_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2005_comm_biomass$Year <- ('2005')
Rawa_Reef_2005_comm_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2006 <- import("Rawa_Reef/data/Rawa_Reef_2006.xls")

Rawa_Reef_2006_herb <- merge(Rawa_Reef_2006, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2006_herb_biomass <- summarise_at(Rawa_Reef_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2006_herb_biomass$Year <- ('2006')
Rawa_Reef_2006_herb_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2006_comm <- merge(Rawa_Reef_2006, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2006_comm_biomass <- summarise_at(Rawa_Reef_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2006_comm_biomass$Year <- ('2006')
Rawa_Reef_2006_comm_biomass$Reef <- ('Rawa Reef')

Rawa_Reef_2007 <- import("Rawa_Reef/data/Rawa_Reef_2007.xls")

Rawa_Reef_2007_herb <- merge(Rawa_Reef_2007, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2007_herb_biomass <- summarise_at(Rawa_Reef_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2007_herb_biomass$Year <- ('2007')
Rawa_Reef_2007_herb_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2007_comm <- merge(Rawa_Reef_2007, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2007_comm_biomass <- summarise_at(Rawa_Reef_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2007_comm_biomass$Year <- ('2007')
Rawa_Reef_2007_comm_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2008 <- import("Rawa_Reef/data/Rawa_Reef_2008.xls")

Rawa_Reef_2008_herb <- merge(Rawa_Reef_2008, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2008_herb_biomass <- summarise_at(Rawa_Reef_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2008_herb_biomass$Year <- ('2008')
Rawa_Reef_2008_herb_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2008_comm <- merge(Rawa_Reef_2008, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2008_comm_biomass <- summarise_at(Rawa_Reef_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2008_comm_biomass$Year <- ('2008')
Rawa_Reef_2008_comm_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2009 <- import("Rawa_Reef/data/Rawa_Reef_2009.xls")

Rawa_Reef_2009_herb <- merge(Rawa_Reef_2009, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2009_herb_biomass <- summarise_at(Rawa_Reef_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2009_herb_biomass$Year <- ('2009')
Rawa_Reef_2009_herb_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2009_comm <- merge(Rawa_Reef_2009, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2009_comm_biomass <- summarise_at(Rawa_Reef_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2009_comm_biomass$Year <- ('2009')
Rawa_Reef_2009_comm_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2010 <- import("Rawa_Reef/data/Rawa_Reef_2010.xls")

Rawa_Reef_2010_herb <- merge(Rawa_Reef_2010, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2010_herb_biomass <- summarise_at(Rawa_Reef_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2010_herb_biomass$Year <- ('2010')
Rawa_Reef_2010_herb_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2010_comm <- merge(Rawa_Reef_2010, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2010_comm_biomass <- summarise_at(Rawa_Reef_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2010_comm_biomass$Year <- ('2010')
Rawa_Reef_2010_comm_biomass$Reef <- ('Rawa Reef')

Rawa_Reef_2011 <- import("Rawa_Reef/data/Rawa_Reef_2011.xls")

Rawa_Reef_2011_herb <- merge(Rawa_Reef_2011, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2011_herb_biomass <- summarise_at(Rawa_Reef_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2011_herb_biomass$Year <- ('2011')
Rawa_Reef_2011_herb_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2011_comm <- merge(Rawa_Reef_2011, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2011_comm_biomass <- summarise_at(Rawa_Reef_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2011_comm_biomass$Year <- ('2011')
Rawa_Reef_2011_comm_biomass$Reef <- ('Rawa Reef')



Rawa_Reef_2012 <- import("Rawa_Reef/data/Rawa_Reef_2012.xls")

Rawa_Reef_2012_herb <- merge(Rawa_Reef_2012, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2012_herb_biomass <- summarise_at(Rawa_Reef_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2012_herb_biomass$Year <- ('2012')
Rawa_Reef_2012_herb_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2012_comm <- merge(Rawa_Reef_2012, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2012_comm_biomass <- summarise_at(Rawa_Reef_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2012_comm_biomass$Year <- ('2012')
Rawa_Reef_2012_comm_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2014 <- import("Rawa_Reef/data/Rawa_Reef_2014.xls")

Rawa_Reef_2014_herb <- merge(Rawa_Reef_2014, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2014_herb_biomass <- summarise_at(Rawa_Reef_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2014_herb_biomass$Year <- ('2014')
Rawa_Reef_2014_herb_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2014_comm <- merge(Rawa_Reef_2014, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2014_comm_biomass <- summarise_at(Rawa_Reef_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2014_comm_biomass$Year <- ('2014')
Rawa_Reef_2014_comm_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2016 <- import("Rawa_Reef/data/Rawa_Reef_2016.xls")

Rawa_Reef_2016_herb <- merge(Rawa_Reef_2016, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2016_herb_biomass <- summarise_at(Rawa_Reef_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2016_herb_biomass$Year <- ('2016')
Rawa_Reef_2016_herb_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2016_comm <- merge(Rawa_Reef_2016, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2016_comm_biomass <- summarise_at(Rawa_Reef_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2016_comm_biomass$Year <- ('2016')
Rawa_Reef_2016_comm_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2018 <- import("Rawa_Reef/data/Rawa_Reef_2018.xls")

Rawa_Reef_2018_herb <- merge(Rawa_Reef_2018, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2018_herb_biomass <- summarise_at(Rawa_Reef_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2018_herb_biomass$Year <- ('2018')
Rawa_Reef_2018_herb_biomass$Reef <- ('Rawa Reef')


Rawa_Reef_2018_comm <- merge(Rawa_Reef_2018, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2018_comm_biomass <- summarise_at(Rawa_Reef_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Rawa_Reef_2018_comm_biomass$Year <- ('2018')
Rawa_Reef_2018_comm_biomass$Reef <- ('Rawa Reef')



### Combine all years together for herbivorous and commercial seperately



Rawa_Reef_herb_1 <- rbind(Rawa_Reef_1999_herb_biomass,Rawa_Reef_2000_herb_biomass)
Rawa_Reef_herb_2 <- rbind(Rawa_Reef_herb_1,Rawa_Reef_2001_herb_biomass)
Rawa_Reef_herb_3 <- rbind(Rawa_Reef_herb_2,Rawa_Reef_2002_herb_biomass)
Rawa_Reef_herb_4 <- rbind(Rawa_Reef_herb_3,Rawa_Reef_2003_herb_biomass)
#Rawa_Reef_herb_5 <- rbind(Rawa_Reef_herb_4,Rawa_Reef_2004_herb_biomass)
Rawa_Reef_herb_6 <- rbind(Rawa_Reef_herb_4,Rawa_Reef_2005_herb_biomass)
Rawa_Reef_herb_7 <- rbind(Rawa_Reef_herb_6,Rawa_Reef_2006_herb_biomass)
Rawa_Reef_herb_8 <- rbind(Rawa_Reef_herb_7,Rawa_Reef_2007_herb_biomass)
Rawa_Reef_herb_9 <- rbind(Rawa_Reef_herb_8,Rawa_Reef_2008_herb_biomass)
Rawa_Reef_herb_10 <- rbind(Rawa_Reef_herb_9,Rawa_Reef_2009_herb_biomass)
Rawa_Reef_herb_11<- rbind(Rawa_Reef_herb_10,Rawa_Reef_2010_herb_biomass)
Rawa_Reef_herb_12 <- rbind(Rawa_Reef_herb_11,Rawa_Reef_2011_herb_biomass)
Rawa_Reef_herb_13 <- rbind(Rawa_Reef_herb_12,Rawa_Reef_2012_herb_biomass)
Rawa_Reef_herb_14 <- rbind(Rawa_Reef_herb_13,Rawa_Reef_2014_herb_biomass)
Rawa_Reef_herb_15 <- rbind(Rawa_Reef_herb_14,Rawa_Reef_2016_herb_biomass)
Rawa_Reef_herb_biomass_data_combined <- rbind(Rawa_Reef_herb_15,Rawa_Reef_2018_herb_biomass)



Rawa_Reef_comm_1 <- rbind(Rawa_Reef_1999_comm_biomass,Rawa_Reef_2000_comm_biomass)
Rawa_Reef_comm_2 <- rbind(Rawa_Reef_comm_1,Rawa_Reef_2001_comm_biomass)
Rawa_Reef_comm_3 <- rbind(Rawa_Reef_comm_2,Rawa_Reef_2002_comm_biomass)
Rawa_Reef_comm_4 <- rbind(Rawa_Reef_comm_3,Rawa_Reef_2003_comm_biomass)
#Rawa_Reef_comm_5 <- rbind(Rawa_Reef_comm_4,Rawa_Reef_2004_comm_biomass)
Rawa_Reef_comm_6 <- rbind(Rawa_Reef_comm_4,Rawa_Reef_2005_comm_biomass)
Rawa_Reef_comm_7 <- rbind(Rawa_Reef_comm_6,Rawa_Reef_2006_comm_biomass)
Rawa_Reef_comm_8 <- rbind(Rawa_Reef_comm_7,Rawa_Reef_2007_comm_biomass)
Rawa_Reef_comm_9 <- rbind(Rawa_Reef_comm_8,Rawa_Reef_2008_comm_biomass)
Rawa_Reef_comm_10 <- rbind(Rawa_Reef_comm_9,Rawa_Reef_2009_comm_biomass)
Rawa_Reef_comm_11<- rbind(Rawa_Reef_comm_10,Rawa_Reef_2010_comm_biomass)
Rawa_Reef_comm_12 <- rbind(Rawa_Reef_comm_11,Rawa_Reef_2011_comm_biomass)
Rawa_Reef_comm_13 <- rbind(Rawa_Reef_comm_12,Rawa_Reef_2012_comm_biomass)
Rawa_Reef_comm_14 <- rbind(Rawa_Reef_comm_13,Rawa_Reef_2014_comm_biomass)
Rawa_Reef_comm_15 <- rbind(Rawa_Reef_comm_14,Rawa_Reef_2016_comm_biomass)
Rawa_Reef_comm_biomass_data_combined <- rbind(Rawa_Reef_comm_15,Rawa_Reef_2018_comm_biomass)



export(Rawa_Reef_herb_biomass_data_combined, "Rawa_Reef/data/Rawa_Reef_herbivorous_biomass.csv")
export(Rawa_Reef_comm_biomass_data_combined, "Rawa_Reef/data/Rawa_Reef_commercial_biomass.csv")



# Sombrero Deep 

Sombrero_Deep_1999 <- import("Sombrero_Deep/data/Sombrero_Deep_1999.xls")


Sombrero_Deep_1999_herb <- merge(Sombrero_Deep_1999, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_1999_herb_biomass <- summarise_at(Sombrero_Deep_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_1999_herb_biomass$Year <- ('1999')
Sombrero_Deep_1999_herb_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_1999_comm <- merge(Sombrero_Deep_1999, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_1999_comm_biomass <- summarise_at(Sombrero_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_1999_comm_biomass$Year <- ('1999')
Sombrero_Deep_1999_comm_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2000 <- import("Sombrero_Deep/data/Sombrero_Deep_2000.xls")

Sombrero_Deep_2000_herb <- merge(Sombrero_Deep_2000, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2000_herb_biomass <- summarise_at(Sombrero_Deep_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2000_herb_biomass$Year <- ('2000')
Sombrero_Deep_2000_herb_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2000_comm <- merge(Sombrero_Deep_2000, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2000_comm_biomass <- summarise_at(Sombrero_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2000_comm_biomass$Year <- ('2000')
Sombrero_Deep_2000_comm_biomass$Reef <- ('Sombrero Deep')

Sombrero_Deep_2001 <- import("Sombrero_Deep/data/Sombrero_Deep_2001.xls")

Sombrero_Deep_2001_herb <- merge(Sombrero_Deep_2001, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2001_herb_biomass <- summarise_at(Sombrero_Deep_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2001_herb_biomass$Year <- ('2001')
Sombrero_Deep_2001_herb_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2001_comm <- merge(Sombrero_Deep_2001, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2001_comm_biomass <- summarise_at(Sombrero_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2001_comm_biomass$Year <- ('2001')
Sombrero_Deep_2001_comm_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2002 <- import("Sombrero_Deep/data/Sombrero_Deep_2002.xls")

Sombrero_Deep_2002_herb <- merge(Sombrero_Deep_2002, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2002_herb_biomass <- summarise_at(Sombrero_Deep_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2002_herb_biomass$Year <- ('2002')
Sombrero_Deep_2002_herb_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2002_comm <- merge(Sombrero_Deep_2002, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2002_comm_biomass <- summarise_at(Sombrero_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2002_comm_biomass$Year <- ('2002')
Sombrero_Deep_2002_comm_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2003 <- import("Sombrero_Deep/data/Sombrero_Deep_2003.xls")

Sombrero_Deep_2003_herb <- merge(Sombrero_Deep_2003, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2003_herb_biomass <- summarise_at(Sombrero_Deep_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2003_herb_biomass$Year <- ('2003')
Sombrero_Deep_2003_herb_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2003_comm <- merge(Sombrero_Deep_2003, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2003_comm_biomass <- summarise_at(Sombrero_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2003_comm_biomass$Year <- ('2003')
Sombrero_Deep_2003_comm_biomass$Reef <- ('Sombrero Deep')


# Sombrero_Deep_2004 <- import("Sombrero_Deep/data/Sombrero_Deep_2004.xls")
# 
# Sombrero_Deep_2004_herb <- merge(Sombrero_Deep_2004, Herb, by = c("SPECIES_CD"))
# Sombrero_Deep_2004_herb_biomass <- summarise_at(Sombrero_Deep_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Sombrero_Deep_2004_herb_biomass$Year <- ('2004')
# Sombrero_Deep_2004_herb_biomass$Reef <- ('Sombrero Deep')
# 
# 
# Sombrero_Deep_2004_comm <- merge(Sombrero_Deep_2004, Comm, by = c("SPECIES_CD"))
# Sombrero_Deep_2004_comm_biomass <- summarise_at(Sombrero_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Sombrero_Deep_2004_comm_biomass$Year <- ('2004')
# Sombrero_Deep_2004_comm_biomass$Reef <- ('Sombrero Deep')

Sombrero_Deep_2005 <- import("Sombrero_Deep/data/Sombrero_Deep_2005.xls")

Sombrero_Deep_2005_herb <- merge(Sombrero_Deep_2005, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2005_herb_biomass <- summarise_at(Sombrero_Deep_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2005_herb_biomass$Year <- ('2005')
Sombrero_Deep_2005_herb_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2005_comm <- merge(Sombrero_Deep_2005, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2005_comm_biomass <- summarise_at(Sombrero_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2005_comm_biomass$Year <- ('2005')
Sombrero_Deep_2005_comm_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2006 <- import("Sombrero_Deep/data/Sombrero_Deep_2006.xls")

Sombrero_Deep_2006_herb <- merge(Sombrero_Deep_2006, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2006_herb_biomass <- summarise_at(Sombrero_Deep_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2006_herb_biomass$Year <- ('2006')
Sombrero_Deep_2006_herb_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2006_comm <- merge(Sombrero_Deep_2006, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2006_comm_biomass <- summarise_at(Sombrero_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2006_comm_biomass$Year <- ('2006')
Sombrero_Deep_2006_comm_biomass$Reef <- ('Sombrero Deep')

Sombrero_Deep_2007 <- import("Sombrero_Deep/data/Sombrero_Deep_2007.xls")

Sombrero_Deep_2007_herb <- merge(Sombrero_Deep_2007, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2007_herb_biomass <- summarise_at(Sombrero_Deep_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2007_herb_biomass$Year <- ('2007')
Sombrero_Deep_2007_herb_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2007_comm <- merge(Sombrero_Deep_2007, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2007_comm_biomass <- summarise_at(Sombrero_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2007_comm_biomass$Year <- ('2007')
Sombrero_Deep_2007_comm_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2008 <- import("Sombrero_Deep/data/Sombrero_Deep_2008.xls")

Sombrero_Deep_2008_herb <- merge(Sombrero_Deep_2008, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2008_herb_biomass <- summarise_at(Sombrero_Deep_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2008_herb_biomass$Year <- ('2008')
Sombrero_Deep_2008_herb_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2008_comm <- merge(Sombrero_Deep_2008, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2008_comm_biomass <- summarise_at(Sombrero_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2008_comm_biomass$Year <- ('2008')
Sombrero_Deep_2008_comm_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2009 <- import("Sombrero_Deep/data/Sombrero_Deep_2009.xls")

Sombrero_Deep_2009_herb <- merge(Sombrero_Deep_2009, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2009_herb_biomass <- summarise_at(Sombrero_Deep_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2009_herb_biomass$Year <- ('2009')
Sombrero_Deep_2009_herb_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2009_comm <- merge(Sombrero_Deep_2009, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2009_comm_biomass <- summarise_at(Sombrero_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2009_comm_biomass$Year <- ('2009')
Sombrero_Deep_2009_comm_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2010 <- import("Sombrero_Deep/data/Sombrero_Deep_2010.xls")

Sombrero_Deep_2010_herb <- merge(Sombrero_Deep_2010, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2010_herb_biomass <- summarise_at(Sombrero_Deep_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2010_herb_biomass$Year <- ('2010')
Sombrero_Deep_2010_herb_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2010_comm <- merge(Sombrero_Deep_2010, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2010_comm_biomass <- summarise_at(Sombrero_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2010_comm_biomass$Year <- ('2010')
Sombrero_Deep_2010_comm_biomass$Reef <- ('Sombrero Deep')

Sombrero_Deep_2011 <- import("Sombrero_Deep/data/Sombrero_Deep_2011.xls")

Sombrero_Deep_2011_herb <- merge(Sombrero_Deep_2011, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2011_herb_biomass <- summarise_at(Sombrero_Deep_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2011_herb_biomass$Year <- ('2011')
Sombrero_Deep_2011_herb_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2011_comm <- merge(Sombrero_Deep_2011, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2011_comm_biomass <- summarise_at(Sombrero_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2011_comm_biomass$Year <- ('2011')
Sombrero_Deep_2011_comm_biomass$Reef <- ('Sombrero Deep')



Sombrero_Deep_2012 <- import("Sombrero_Deep/data/Sombrero_Deep_2012.xls")

Sombrero_Deep_2012_herb <- merge(Sombrero_Deep_2012, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2012_herb_biomass <- summarise_at(Sombrero_Deep_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2012_herb_biomass$Year <- ('2012')
Sombrero_Deep_2012_herb_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2012_comm <- merge(Sombrero_Deep_2012, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2012_comm_biomass <- summarise_at(Sombrero_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2012_comm_biomass$Year <- ('2012')
Sombrero_Deep_2012_comm_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2014 <- import("Sombrero_Deep/data/Sombrero_Deep_2014.xls")

Sombrero_Deep_2014_herb <- merge(Sombrero_Deep_2014, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2014_herb_biomass <- summarise_at(Sombrero_Deep_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2014_herb_biomass$Year <- ('2014')
Sombrero_Deep_2014_herb_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2014_comm <- merge(Sombrero_Deep_2014, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2014_comm_biomass <- summarise_at(Sombrero_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2014_comm_biomass$Year <- ('2014')
Sombrero_Deep_2014_comm_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2016 <- import("Sombrero_Deep/data/Sombrero_Deep_2016.xls")

Sombrero_Deep_2016_herb <- merge(Sombrero_Deep_2016, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2016_herb_biomass <- summarise_at(Sombrero_Deep_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2016_herb_biomass$Year <- ('2016')
Sombrero_Deep_2016_herb_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2016_comm <- merge(Sombrero_Deep_2016, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2016_comm_biomass <- summarise_at(Sombrero_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2016_comm_biomass$Year <- ('2016')
Sombrero_Deep_2016_comm_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2018 <- import("Sombrero_Deep/data/Sombrero_Deep_2018.xls")

Sombrero_Deep_2018_herb <- merge(Sombrero_Deep_2018, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2018_herb_biomass <- summarise_at(Sombrero_Deep_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2018_herb_biomass$Year <- ('2018')
Sombrero_Deep_2018_herb_biomass$Reef <- ('Sombrero Deep')


Sombrero_Deep_2018_comm <- merge(Sombrero_Deep_2018, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2018_comm_biomass <- summarise_at(Sombrero_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Deep_2018_comm_biomass$Year <- ('2018')
Sombrero_Deep_2018_comm_biomass$Reef <- ('Sombrero Deep')



### Combine all years together for herbivorous and commercial seperately



Sombrero_Deep_herb_1 <- rbind(Sombrero_Deep_1999_herb_biomass,Sombrero_Deep_2000_herb_biomass)
Sombrero_Deep_herb_2 <- rbind(Sombrero_Deep_herb_1,Sombrero_Deep_2001_herb_biomass)
Sombrero_Deep_herb_3 <- rbind(Sombrero_Deep_herb_2,Sombrero_Deep_2002_herb_biomass)
Sombrero_Deep_herb_4 <- rbind(Sombrero_Deep_herb_3,Sombrero_Deep_2003_herb_biomass)
#Sombrero_Deep_herb_5 <- rbind(Sombrero_Deep_herb_4,Sombrero_Deep_2004_herb_biomass)
Sombrero_Deep_herb_6 <- rbind(Sombrero_Deep_herb_4,Sombrero_Deep_2005_herb_biomass)
Sombrero_Deep_herb_7 <- rbind(Sombrero_Deep_herb_6,Sombrero_Deep_2006_herb_biomass)
Sombrero_Deep_herb_8 <- rbind(Sombrero_Deep_herb_7,Sombrero_Deep_2007_herb_biomass)
Sombrero_Deep_herb_9 <- rbind(Sombrero_Deep_herb_8,Sombrero_Deep_2008_herb_biomass)
Sombrero_Deep_herb_10 <- rbind(Sombrero_Deep_herb_9,Sombrero_Deep_2009_herb_biomass)
Sombrero_Deep_herb_11<- rbind(Sombrero_Deep_herb_10,Sombrero_Deep_2010_herb_biomass)
Sombrero_Deep_herb_12 <- rbind(Sombrero_Deep_herb_11,Sombrero_Deep_2011_herb_biomass)
Sombrero_Deep_herb_13 <- rbind(Sombrero_Deep_herb_12,Sombrero_Deep_2012_herb_biomass)
Sombrero_Deep_herb_14 <- rbind(Sombrero_Deep_herb_13,Sombrero_Deep_2014_herb_biomass)
Sombrero_Deep_herb_15 <- rbind(Sombrero_Deep_herb_14,Sombrero_Deep_2016_herb_biomass)
Sombrero_Deep_herb_biomass_data_combined <- rbind(Sombrero_Deep_herb_15,Sombrero_Deep_2018_herb_biomass)



Sombrero_Deep_comm_1 <- rbind(Sombrero_Deep_1999_comm_biomass,Sombrero_Deep_2000_comm_biomass)
Sombrero_Deep_comm_2 <- rbind(Sombrero_Deep_comm_1,Sombrero_Deep_2001_comm_biomass)
Sombrero_Deep_comm_3 <- rbind(Sombrero_Deep_comm_2,Sombrero_Deep_2002_comm_biomass)
Sombrero_Deep_comm_4 <- rbind(Sombrero_Deep_comm_3,Sombrero_Deep_2003_comm_biomass)
#Sombrero_Deep_comm_5 <- rbind(Sombrero_Deep_comm_4,Sombrero_Deep_2004_comm_biomass)
Sombrero_Deep_comm_6 <- rbind(Sombrero_Deep_comm_4,Sombrero_Deep_2005_comm_biomass)
Sombrero_Deep_comm_7 <- rbind(Sombrero_Deep_comm_6,Sombrero_Deep_2006_comm_biomass)
Sombrero_Deep_comm_8 <- rbind(Sombrero_Deep_comm_7,Sombrero_Deep_2007_comm_biomass)
Sombrero_Deep_comm_9 <- rbind(Sombrero_Deep_comm_8,Sombrero_Deep_2008_comm_biomass)
Sombrero_Deep_comm_10 <- rbind(Sombrero_Deep_comm_9,Sombrero_Deep_2009_comm_biomass)
Sombrero_Deep_comm_11<- rbind(Sombrero_Deep_comm_10,Sombrero_Deep_2010_comm_biomass)
Sombrero_Deep_comm_12 <- rbind(Sombrero_Deep_comm_11,Sombrero_Deep_2011_comm_biomass)
Sombrero_Deep_comm_13 <- rbind(Sombrero_Deep_comm_12,Sombrero_Deep_2012_comm_biomass)
Sombrero_Deep_comm_14 <- rbind(Sombrero_Deep_comm_13,Sombrero_Deep_2014_comm_biomass)
Sombrero_Deep_comm_15 <- rbind(Sombrero_Deep_comm_14,Sombrero_Deep_2016_comm_biomass)
Sombrero_Deep_comm_biomass_data_combined <- rbind(Sombrero_Deep_comm_15,Sombrero_Deep_2018_comm_biomass)



export(Sombrero_Deep_herb_biomass_data_combined, "Sombrero_Deep/data/Sombrero_Deep_herbivorous_biomass.csv")
export(Sombrero_Deep_comm_biomass_data_combined, "Sombrero_Deep/data/Sombrero_Deep_commercial_biomass.csv")



# Sombrero Shallow 

Sombrero_Shallow_1999 <- import("Sombrero_Shallow/data/Sombrero_Shallow_1999.xls")


Sombrero_Shallow_1999_herb <- merge(Sombrero_Shallow_1999, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_1999_herb_biomass <- summarise_at(Sombrero_Shallow_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_1999_herb_biomass$Year <- ('1999')
Sombrero_Shallow_1999_herb_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_1999_comm <- merge(Sombrero_Shallow_1999, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_1999_comm_biomass <- summarise_at(Sombrero_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_1999_comm_biomass$Year <- ('1999')
Sombrero_Shallow_1999_comm_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2000 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2000.xls")

Sombrero_Shallow_2000_herb <- merge(Sombrero_Shallow_2000, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2000_herb_biomass <- summarise_at(Sombrero_Shallow_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2000_herb_biomass$Year <- ('2000')
Sombrero_Shallow_2000_herb_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2000_comm <- merge(Sombrero_Shallow_2000, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2000_comm_biomass <- summarise_at(Sombrero_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2000_comm_biomass$Year <- ('2000')
Sombrero_Shallow_2000_comm_biomass$Reef <- ('Sombrero Shallow')

Sombrero_Shallow_2001 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2001.xls")

Sombrero_Shallow_2001_herb <- merge(Sombrero_Shallow_2001, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2001_herb_biomass <- summarise_at(Sombrero_Shallow_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2001_herb_biomass$Year <- ('2001')
Sombrero_Shallow_2001_herb_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2001_comm <- merge(Sombrero_Shallow_2001, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2001_comm_biomass <- summarise_at(Sombrero_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2001_comm_biomass$Year <- ('2001')
Sombrero_Shallow_2001_comm_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2002 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2002.xls")

Sombrero_Shallow_2002_herb <- merge(Sombrero_Shallow_2002, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2002_herb_biomass <- summarise_at(Sombrero_Shallow_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2002_herb_biomass$Year <- ('2002')
Sombrero_Shallow_2002_herb_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2002_comm <- merge(Sombrero_Shallow_2002, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2002_comm_biomass <- summarise_at(Sombrero_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2002_comm_biomass$Year <- ('2002')
Sombrero_Shallow_2002_comm_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2003 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2003.xls")

Sombrero_Shallow_2003_herb <- merge(Sombrero_Shallow_2003, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2003_herb_biomass <- summarise_at(Sombrero_Shallow_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2003_herb_biomass$Year <- ('2003')
Sombrero_Shallow_2003_herb_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2003_comm <- merge(Sombrero_Shallow_2003, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2003_comm_biomass <- summarise_at(Sombrero_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2003_comm_biomass$Year <- ('2003')
Sombrero_Shallow_2003_comm_biomass$Reef <- ('Sombrero Shallow')


# Sombrero_Shallow_2004 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2004.xls")
# 
# Sombrero_Shallow_2004_herb <- merge(Sombrero_Shallow_2004, Herb, by = c("SPECIES_CD"))
# Sombrero_Shallow_2004_herb_biomass <- summarise_at(Sombrero_Shallow_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Sombrero_Shallow_2004_herb_biomass$Year <- ('2004')
# Sombrero_Shallow_2004_herb_biomass$Reef <- ('Sombrero Shallow')
# 
# 
# Sombrero_Shallow_2004_comm <- merge(Sombrero_Shallow_2004, Comm, by = c("SPECIES_CD"))
# Sombrero_Shallow_2004_comm_biomass <- summarise_at(Sombrero_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Sombrero_Shallow_2004_comm_biomass$Year <- ('2004')
# Sombrero_Shallow_2004_comm_biomass$Reef <- ('Sombrero Shallow')

Sombrero_Shallow_2005 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2005.xls")

Sombrero_Shallow_2005_herb <- merge(Sombrero_Shallow_2005, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2005_herb_biomass <- summarise_at(Sombrero_Shallow_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2005_herb_biomass$Year <- ('2005')
Sombrero_Shallow_2005_herb_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2005_comm <- merge(Sombrero_Shallow_2005, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2005_comm_biomass <- summarise_at(Sombrero_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2005_comm_biomass$Year <- ('2005')
Sombrero_Shallow_2005_comm_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2006 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2006.xls")

Sombrero_Shallow_2006_herb <- merge(Sombrero_Shallow_2006, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2006_herb_biomass <- summarise_at(Sombrero_Shallow_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2006_herb_biomass$Year <- ('2006')
Sombrero_Shallow_2006_herb_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2006_comm <- merge(Sombrero_Shallow_2006, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2006_comm_biomass <- summarise_at(Sombrero_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2006_comm_biomass$Year <- ('2006')
Sombrero_Shallow_2006_comm_biomass$Reef <- ('Sombrero Shallow')

Sombrero_Shallow_2007 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2007.xls")

Sombrero_Shallow_2007_herb <- merge(Sombrero_Shallow_2007, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2007_herb_biomass <- summarise_at(Sombrero_Shallow_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2007_herb_biomass$Year <- ('2007')
Sombrero_Shallow_2007_herb_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2007_comm <- merge(Sombrero_Shallow_2007, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2007_comm_biomass <- summarise_at(Sombrero_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2007_comm_biomass$Year <- ('2007')
Sombrero_Shallow_2007_comm_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2008 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2008.xls")

Sombrero_Shallow_2008_herb <- merge(Sombrero_Shallow_2008, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2008_herb_biomass <- summarise_at(Sombrero_Shallow_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2008_herb_biomass$Year <- ('2008')
Sombrero_Shallow_2008_herb_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2008_comm <- merge(Sombrero_Shallow_2008, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2008_comm_biomass <- summarise_at(Sombrero_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2008_comm_biomass$Year <- ('2008')
Sombrero_Shallow_2008_comm_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2009 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2009.xls")

Sombrero_Shallow_2009_herb <- merge(Sombrero_Shallow_2009, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2009_herb_biomass <- summarise_at(Sombrero_Shallow_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2009_herb_biomass$Year <- ('2009')
Sombrero_Shallow_2009_herb_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2009_comm <- merge(Sombrero_Shallow_2009, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2009_comm_biomass <- summarise_at(Sombrero_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2009_comm_biomass$Year <- ('2009')
Sombrero_Shallow_2009_comm_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2010 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2010.xls")

Sombrero_Shallow_2010_herb <- merge(Sombrero_Shallow_2010, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2010_herb_biomass <- summarise_at(Sombrero_Shallow_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2010_herb_biomass$Year <- ('2010')
Sombrero_Shallow_2010_herb_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2010_comm <- merge(Sombrero_Shallow_2010, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2010_comm_biomass <- summarise_at(Sombrero_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2010_comm_biomass$Year <- ('2010')
Sombrero_Shallow_2010_comm_biomass$Reef <- ('Sombrero Shallow')

Sombrero_Shallow_2011 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2011.xls")

Sombrero_Shallow_2011_herb <- merge(Sombrero_Shallow_2011, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2011_herb_biomass <- summarise_at(Sombrero_Shallow_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2011_herb_biomass$Year <- ('2011')
Sombrero_Shallow_2011_herb_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2011_comm <- merge(Sombrero_Shallow_2011, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2011_comm_biomass <- summarise_at(Sombrero_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2011_comm_biomass$Year <- ('2011')
Sombrero_Shallow_2011_comm_biomass$Reef <- ('Sombrero Shallow')



Sombrero_Shallow_2012 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2012.xls")

Sombrero_Shallow_2012_herb <- merge(Sombrero_Shallow_2012, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2012_herb_biomass <- summarise_at(Sombrero_Shallow_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2012_herb_biomass$Year <- ('2012')
Sombrero_Shallow_2012_herb_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2012_comm <- merge(Sombrero_Shallow_2012, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2012_comm_biomass <- summarise_at(Sombrero_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2012_comm_biomass$Year <- ('2012')
Sombrero_Shallow_2012_comm_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2014 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2014.xls")

Sombrero_Shallow_2014_herb <- merge(Sombrero_Shallow_2014, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2014_herb_biomass <- summarise_at(Sombrero_Shallow_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2014_herb_biomass$Year <- ('2014')
Sombrero_Shallow_2014_herb_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2014_comm <- merge(Sombrero_Shallow_2014, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2014_comm_biomass <- summarise_at(Sombrero_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2014_comm_biomass$Year <- ('2014')
Sombrero_Shallow_2014_comm_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2016 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2016.xls")

Sombrero_Shallow_2016_herb <- merge(Sombrero_Shallow_2016, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2016_herb_biomass <- summarise_at(Sombrero_Shallow_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2016_herb_biomass$Year <- ('2016')
Sombrero_Shallow_2016_herb_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2016_comm <- merge(Sombrero_Shallow_2016, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2016_comm_biomass <- summarise_at(Sombrero_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2016_comm_biomass$Year <- ('2016')
Sombrero_Shallow_2016_comm_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2018 <- import("Sombrero_Shallow/data/Sombrero_Shallow_2018.xls")

Sombrero_Shallow_2018_herb <- merge(Sombrero_Shallow_2018, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2018_herb_biomass <- summarise_at(Sombrero_Shallow_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2018_herb_biomass$Year <- ('2018')
Sombrero_Shallow_2018_herb_biomass$Reef <- ('Sombrero Shallow')


Sombrero_Shallow_2018_comm <- merge(Sombrero_Shallow_2018, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2018_comm_biomass <- summarise_at(Sombrero_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Sombrero_Shallow_2018_comm_biomass$Year <- ('2018')
Sombrero_Shallow_2018_comm_biomass$Reef <- ('Sombrero Shallow')



### Combine all years together for herbivorous and commercial seperately



Sombrero_Shallow_herb_1 <- rbind(Sombrero_Shallow_1999_herb_biomass,Sombrero_Shallow_2000_herb_biomass)
Sombrero_Shallow_herb_2 <- rbind(Sombrero_Shallow_herb_1,Sombrero_Shallow_2001_herb_biomass)
Sombrero_Shallow_herb_3 <- rbind(Sombrero_Shallow_herb_2,Sombrero_Shallow_2002_herb_biomass)
Sombrero_Shallow_herb_4 <- rbind(Sombrero_Shallow_herb_3,Sombrero_Shallow_2003_herb_biomass)
#Sombrero_Shallow_herb_5 <- rbind(Sombrero_Shallow_herb_4,Sombrero_Shallow_2004_herb_biomass)
Sombrero_Shallow_herb_6 <- rbind(Sombrero_Shallow_herb_4,Sombrero_Shallow_2005_herb_biomass)
Sombrero_Shallow_herb_7 <- rbind(Sombrero_Shallow_herb_6,Sombrero_Shallow_2006_herb_biomass)
Sombrero_Shallow_herb_8 <- rbind(Sombrero_Shallow_herb_7,Sombrero_Shallow_2007_herb_biomass)
Sombrero_Shallow_herb_9 <- rbind(Sombrero_Shallow_herb_8,Sombrero_Shallow_2008_herb_biomass)
Sombrero_Shallow_herb_10 <- rbind(Sombrero_Shallow_herb_9,Sombrero_Shallow_2009_herb_biomass)
Sombrero_Shallow_herb_11<- rbind(Sombrero_Shallow_herb_10,Sombrero_Shallow_2010_herb_biomass)
Sombrero_Shallow_herb_12 <- rbind(Sombrero_Shallow_herb_11,Sombrero_Shallow_2011_herb_biomass)
Sombrero_Shallow_herb_13 <- rbind(Sombrero_Shallow_herb_12,Sombrero_Shallow_2012_herb_biomass)
Sombrero_Shallow_herb_14 <- rbind(Sombrero_Shallow_herb_13,Sombrero_Shallow_2014_herb_biomass)
Sombrero_Shallow_herb_15 <- rbind(Sombrero_Shallow_herb_14,Sombrero_Shallow_2016_herb_biomass)
Sombrero_Shallow_herb_biomass_data_combined <- rbind(Sombrero_Shallow_herb_15,Sombrero_Shallow_2018_herb_biomass)



Sombrero_Shallow_comm_1 <- rbind(Sombrero_Shallow_1999_comm_biomass,Sombrero_Shallow_2000_comm_biomass)
Sombrero_Shallow_comm_2 <- rbind(Sombrero_Shallow_comm_1,Sombrero_Shallow_2001_comm_biomass)
Sombrero_Shallow_comm_3 <- rbind(Sombrero_Shallow_comm_2,Sombrero_Shallow_2002_comm_biomass)
Sombrero_Shallow_comm_4 <- rbind(Sombrero_Shallow_comm_3,Sombrero_Shallow_2003_comm_biomass)
#Sombrero_Shallow_comm_5 <- rbind(Sombrero_Shallow_comm_4,Sombrero_Shallow_2004_comm_biomass)
Sombrero_Shallow_comm_6 <- rbind(Sombrero_Shallow_comm_4,Sombrero_Shallow_2005_comm_biomass)
Sombrero_Shallow_comm_7 <- rbind(Sombrero_Shallow_comm_6,Sombrero_Shallow_2006_comm_biomass)
Sombrero_Shallow_comm_8 <- rbind(Sombrero_Shallow_comm_7,Sombrero_Shallow_2007_comm_biomass)
Sombrero_Shallow_comm_9 <- rbind(Sombrero_Shallow_comm_8,Sombrero_Shallow_2008_comm_biomass)
Sombrero_Shallow_comm_10 <- rbind(Sombrero_Shallow_comm_9,Sombrero_Shallow_2009_comm_biomass)
Sombrero_Shallow_comm_11<- rbind(Sombrero_Shallow_comm_10,Sombrero_Shallow_2010_comm_biomass)
Sombrero_Shallow_comm_12 <- rbind(Sombrero_Shallow_comm_11,Sombrero_Shallow_2011_comm_biomass)
Sombrero_Shallow_comm_13 <- rbind(Sombrero_Shallow_comm_12,Sombrero_Shallow_2012_comm_biomass)
Sombrero_Shallow_comm_14 <- rbind(Sombrero_Shallow_comm_13,Sombrero_Shallow_2014_comm_biomass)
Sombrero_Shallow_comm_15 <- rbind(Sombrero_Shallow_comm_14,Sombrero_Shallow_2016_comm_biomass)
Sombrero_Shallow_comm_biomass_data_combined <- rbind(Sombrero_Shallow_comm_15,Sombrero_Shallow_2018_comm_biomass)



export(Sombrero_Shallow_herb_biomass_data_combined, "Sombrero_Shallow/data/Sombrero_Shallow_herbivorous_biomass.csv")
export(Sombrero_Shallow_comm_biomass_data_combined, "Sombrero_Shallow/data/Sombrero_Shallow_commercial_biomass.csv")




# Tennessee Deep 

Tennessee_Deep_1999 <- import("Tennessee_Deep/data/Tennessee_Deep_1999.xls")


Tennessee_Deep_1999_herb <- merge(Tennessee_Deep_1999, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_1999_herb_biomass <- summarise_at(Tennessee_Deep_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_1999_herb_biomass$Year <- ('1999')
Tennessee_Deep_1999_herb_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_1999_comm <- merge(Tennessee_Deep_1999, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_1999_comm_biomass <- summarise_at(Tennessee_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_1999_comm_biomass$Year <- ('1999')
Tennessee_Deep_1999_comm_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2000 <- import("Tennessee_Deep/data/Tennessee_Deep_2000.xls")

Tennessee_Deep_2000_herb <- merge(Tennessee_Deep_2000, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2000_herb_biomass <- summarise_at(Tennessee_Deep_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2000_herb_biomass$Year <- ('2000')
Tennessee_Deep_2000_herb_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2000_comm <- merge(Tennessee_Deep_2000, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2000_comm_biomass <- summarise_at(Tennessee_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2000_comm_biomass$Year <- ('2000')
Tennessee_Deep_2000_comm_biomass$Reef <- ('Tennessee Deep')

Tennessee_Deep_2001 <- import("Tennessee_Deep/data/Tennessee_Deep_2001.xls")

Tennessee_Deep_2001_herb <- merge(Tennessee_Deep_2001, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2001_herb_biomass <- summarise_at(Tennessee_Deep_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2001_herb_biomass$Year <- ('2001')
Tennessee_Deep_2001_herb_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2001_comm <- merge(Tennessee_Deep_2001, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2001_comm_biomass <- summarise_at(Tennessee_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2001_comm_biomass$Year <- ('2001')
Tennessee_Deep_2001_comm_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2002 <- import("Tennessee_Deep/data/Tennessee_Deep_2002.xls")

Tennessee_Deep_2002_herb <- merge(Tennessee_Deep_2002, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2002_herb_biomass <- summarise_at(Tennessee_Deep_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2002_herb_biomass$Year <- ('2002')
Tennessee_Deep_2002_herb_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2002_comm <- merge(Tennessee_Deep_2002, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2002_comm_biomass <- summarise_at(Tennessee_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2002_comm_biomass$Year <- ('2002')
Tennessee_Deep_2002_comm_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2003 <- import("Tennessee_Deep/data/Tennessee_Deep_2003.xls")

Tennessee_Deep_2003_herb <- merge(Tennessee_Deep_2003, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2003_herb_biomass <- summarise_at(Tennessee_Deep_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2003_herb_biomass$Year <- ('2003')
Tennessee_Deep_2003_herb_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2003_comm <- merge(Tennessee_Deep_2003, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2003_comm_biomass <- summarise_at(Tennessee_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2003_comm_biomass$Year <- ('2003')
Tennessee_Deep_2003_comm_biomass$Reef <- ('Tennessee Deep')


# Tennessee_Deep_2004 <- import("Tennessee_Deep/data/Tennessee_Deep_2004.xls")
# 
# Tennessee_Deep_2004_herb <- merge(Tennessee_Deep_2004, Herb, by = c("SPECIES_CD"))
# Tennessee_Deep_2004_herb_biomass <- summarise_at(Tennessee_Deep_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Tennessee_Deep_2004_herb_biomass$Year <- ('2004')
# Tennessee_Deep_2004_herb_biomass$Reef <- ('Tennessee Deep')
# 
# 
# Tennessee_Deep_2004_comm <- merge(Tennessee_Deep_2004, Comm, by = c("SPECIES_CD"))
# Tennessee_Deep_2004_comm_biomass <- summarise_at(Tennessee_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Tennessee_Deep_2004_comm_biomass$Year <- ('2004')
# Tennessee_Deep_2004_comm_biomass$Reef <- ('Tennessee Deep')

Tennessee_Deep_2005 <- import("Tennessee_Deep/data/Tennessee_Deep_2005.xls")

Tennessee_Deep_2005_herb <- merge(Tennessee_Deep_2005, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2005_herb_biomass <- summarise_at(Tennessee_Deep_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2005_herb_biomass$Year <- ('2005')
Tennessee_Deep_2005_herb_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2005_comm <- merge(Tennessee_Deep_2005, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2005_comm_biomass <- summarise_at(Tennessee_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2005_comm_biomass$Year <- ('2005')
Tennessee_Deep_2005_comm_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2006 <- import("Tennessee_Deep/data/Tennessee_Deep_2006.xls")

Tennessee_Deep_2006_herb <- merge(Tennessee_Deep_2006, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2006_herb_biomass <- summarise_at(Tennessee_Deep_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2006_herb_biomass$Year <- ('2006')
Tennessee_Deep_2006_herb_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2006_comm <- merge(Tennessee_Deep_2006, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2006_comm_biomass <- summarise_at(Tennessee_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2006_comm_biomass$Year <- ('2006')
Tennessee_Deep_2006_comm_biomass$Reef <- ('Tennessee Deep')

Tennessee_Deep_2007 <- import("Tennessee_Deep/data/Tennessee_Deep_2007.xls")

Tennessee_Deep_2007_herb <- merge(Tennessee_Deep_2007, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2007_herb_biomass <- summarise_at(Tennessee_Deep_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2007_herb_biomass$Year <- ('2007')
Tennessee_Deep_2007_herb_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2007_comm <- merge(Tennessee_Deep_2007, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2007_comm_biomass <- summarise_at(Tennessee_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2007_comm_biomass$Year <- ('2007')
Tennessee_Deep_2007_comm_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2008 <- import("Tennessee_Deep/data/Tennessee_Deep_2008.xls")

Tennessee_Deep_2008_herb <- merge(Tennessee_Deep_2008, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2008_herb_biomass <- summarise_at(Tennessee_Deep_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2008_herb_biomass$Year <- ('2008')
Tennessee_Deep_2008_herb_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2008_comm <- merge(Tennessee_Deep_2008, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2008_comm_biomass <- summarise_at(Tennessee_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2008_comm_biomass$Year <- ('2008')
Tennessee_Deep_2008_comm_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2009 <- import("Tennessee_Deep/data/Tennessee_Deep_2009.xls")

Tennessee_Deep_2009_herb <- merge(Tennessee_Deep_2009, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2009_herb_biomass <- summarise_at(Tennessee_Deep_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2009_herb_biomass$Year <- ('2009')
Tennessee_Deep_2009_herb_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2009_comm <- merge(Tennessee_Deep_2009, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2009_comm_biomass <- summarise_at(Tennessee_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2009_comm_biomass$Year <- ('2009')
Tennessee_Deep_2009_comm_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2010 <- import("Tennessee_Deep/data/Tennessee_Deep_2010.xls")

Tennessee_Deep_2010_herb <- merge(Tennessee_Deep_2010, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2010_herb_biomass <- summarise_at(Tennessee_Deep_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2010_herb_biomass$Year <- ('2010')
Tennessee_Deep_2010_herb_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2010_comm <- merge(Tennessee_Deep_2010, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2010_comm_biomass <- summarise_at(Tennessee_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2010_comm_biomass$Year <- ('2010')
Tennessee_Deep_2010_comm_biomass$Reef <- ('Tennessee Deep')

Tennessee_Deep_2011 <- import("Tennessee_Deep/data/Tennessee_Deep_2011.xls")

Tennessee_Deep_2011_herb <- merge(Tennessee_Deep_2011, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2011_herb_biomass <- summarise_at(Tennessee_Deep_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2011_herb_biomass$Year <- ('2011')
Tennessee_Deep_2011_herb_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2011_comm <- merge(Tennessee_Deep_2011, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2011_comm_biomass <- summarise_at(Tennessee_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2011_comm_biomass$Year <- ('2011')
Tennessee_Deep_2011_comm_biomass$Reef <- ('Tennessee Deep')



Tennessee_Deep_2012 <- import("Tennessee_Deep/data/Tennessee_Deep_2012.xls")

Tennessee_Deep_2012_herb <- merge(Tennessee_Deep_2012, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2012_herb_biomass <- summarise_at(Tennessee_Deep_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2012_herb_biomass$Year <- ('2012')
Tennessee_Deep_2012_herb_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2012_comm <- merge(Tennessee_Deep_2012, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2012_comm_biomass <- summarise_at(Tennessee_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2012_comm_biomass$Year <- ('2012')
Tennessee_Deep_2012_comm_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2014 <- import("Tennessee_Deep/data/Tennessee_Deep_2014.xls")

Tennessee_Deep_2014_herb <- merge(Tennessee_Deep_2014, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2014_herb_biomass <- summarise_at(Tennessee_Deep_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2014_herb_biomass$Year <- ('2014')
Tennessee_Deep_2014_herb_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2014_comm <- merge(Tennessee_Deep_2014, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2014_comm_biomass <- summarise_at(Tennessee_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2014_comm_biomass$Year <- ('2014')
Tennessee_Deep_2014_comm_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2016 <- import("Tennessee_Deep/data/Tennessee_Deep_2016.xls")

Tennessee_Deep_2016_herb <- merge(Tennessee_Deep_2016, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2016_herb_biomass <- summarise_at(Tennessee_Deep_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2016_herb_biomass$Year <- ('2016')
Tennessee_Deep_2016_herb_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2016_comm <- merge(Tennessee_Deep_2016, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2016_comm_biomass <- summarise_at(Tennessee_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2016_comm_biomass$Year <- ('2016')
Tennessee_Deep_2016_comm_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2018 <- import("Tennessee_Deep/data/Tennessee_Deep_2018.xls")

Tennessee_Deep_2018_herb <- merge(Tennessee_Deep_2018, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2018_herb_biomass <- summarise_at(Tennessee_Deep_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2018_herb_biomass$Year <- ('2018')
Tennessee_Deep_2018_herb_biomass$Reef <- ('Tennessee Deep')


Tennessee_Deep_2018_comm <- merge(Tennessee_Deep_2018, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2018_comm_biomass <- summarise_at(Tennessee_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Deep_2018_comm_biomass$Year <- ('2018')
Tennessee_Deep_2018_comm_biomass$Reef <- ('Tennessee Deep')



### Combine all years together for herbivorous and commercial seperately



Tennessee_Deep_herb_1 <- rbind(Tennessee_Deep_1999_herb_biomass,Tennessee_Deep_2000_herb_biomass)
Tennessee_Deep_herb_2 <- rbind(Tennessee_Deep_herb_1,Tennessee_Deep_2001_herb_biomass)
Tennessee_Deep_herb_3 <- rbind(Tennessee_Deep_herb_2,Tennessee_Deep_2002_herb_biomass)
Tennessee_Deep_herb_4 <- rbind(Tennessee_Deep_herb_3,Tennessee_Deep_2003_herb_biomass)
#Tennessee_Deep_herb_5 <- rbind(Tennessee_Deep_herb_4,Tennessee_Deep_2004_herb_biomass)
Tennessee_Deep_herb_6 <- rbind(Tennessee_Deep_herb_4,Tennessee_Deep_2005_herb_biomass)
Tennessee_Deep_herb_7 <- rbind(Tennessee_Deep_herb_6,Tennessee_Deep_2006_herb_biomass)
Tennessee_Deep_herb_8 <- rbind(Tennessee_Deep_herb_7,Tennessee_Deep_2007_herb_biomass)
Tennessee_Deep_herb_9 <- rbind(Tennessee_Deep_herb_8,Tennessee_Deep_2008_herb_biomass)
Tennessee_Deep_herb_10 <- rbind(Tennessee_Deep_herb_9,Tennessee_Deep_2009_herb_biomass)
Tennessee_Deep_herb_11<- rbind(Tennessee_Deep_herb_10,Tennessee_Deep_2010_herb_biomass)
Tennessee_Deep_herb_12 <- rbind(Tennessee_Deep_herb_11,Tennessee_Deep_2011_herb_biomass)
Tennessee_Deep_herb_13 <- rbind(Tennessee_Deep_herb_12,Tennessee_Deep_2012_herb_biomass)
Tennessee_Deep_herb_14 <- rbind(Tennessee_Deep_herb_13,Tennessee_Deep_2014_herb_biomass)
Tennessee_Deep_herb_15 <- rbind(Tennessee_Deep_herb_14,Tennessee_Deep_2016_herb_biomass)
Tennessee_Deep_herb_biomass_data_combined <- rbind(Tennessee_Deep_herb_15,Tennessee_Deep_2018_herb_biomass)



Tennessee_Deep_comm_1 <- rbind(Tennessee_Deep_1999_comm_biomass,Tennessee_Deep_2000_comm_biomass)
Tennessee_Deep_comm_2 <- rbind(Tennessee_Deep_comm_1,Tennessee_Deep_2001_comm_biomass)
Tennessee_Deep_comm_3 <- rbind(Tennessee_Deep_comm_2,Tennessee_Deep_2002_comm_biomass)
Tennessee_Deep_comm_4 <- rbind(Tennessee_Deep_comm_3,Tennessee_Deep_2003_comm_biomass)
#Tennessee_Deep_comm_5 <- rbind(Tennessee_Deep_comm_4,Tennessee_Deep_2004_comm_biomass)
Tennessee_Deep_comm_6 <- rbind(Tennessee_Deep_comm_4,Tennessee_Deep_2005_comm_biomass)
Tennessee_Deep_comm_7 <- rbind(Tennessee_Deep_comm_6,Tennessee_Deep_2006_comm_biomass)
Tennessee_Deep_comm_8 <- rbind(Tennessee_Deep_comm_7,Tennessee_Deep_2007_comm_biomass)
Tennessee_Deep_comm_9 <- rbind(Tennessee_Deep_comm_8,Tennessee_Deep_2008_comm_biomass)
Tennessee_Deep_comm_10 <- rbind(Tennessee_Deep_comm_9,Tennessee_Deep_2009_comm_biomass)
Tennessee_Deep_comm_11<- rbind(Tennessee_Deep_comm_10,Tennessee_Deep_2010_comm_biomass)
Tennessee_Deep_comm_12 <- rbind(Tennessee_Deep_comm_11,Tennessee_Deep_2011_comm_biomass)
Tennessee_Deep_comm_13 <- rbind(Tennessee_Deep_comm_12,Tennessee_Deep_2012_comm_biomass)
Tennessee_Deep_comm_14 <- rbind(Tennessee_Deep_comm_13,Tennessee_Deep_2014_comm_biomass)
Tennessee_Deep_comm_15 <- rbind(Tennessee_Deep_comm_14,Tennessee_Deep_2016_comm_biomass)
Tennessee_Deep_comm_biomass_data_combined <- rbind(Tennessee_Deep_comm_15,Tennessee_Deep_2018_comm_biomass)



export(Tennessee_Deep_herb_biomass_data_combined, "Tennessee_Deep/data/Tennessee_Deep_herbivorous_biomass.csv")
export(Tennessee_Deep_comm_biomass_data_combined, "Tennessee_Deep/data/Tennessee_Deep_commercial_biomass.csv")



# Tennessee Shallow 

Tennessee_Shallow_1999 <- import("Tennessee_Shallow/data/Tennessee_Shallow_1999.xls")


Tennessee_Shallow_1999_herb <- merge(Tennessee_Shallow_1999, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_1999_herb_biomass <- summarise_at(Tennessee_Shallow_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_1999_herb_biomass$Year <- ('1999')
Tennessee_Shallow_1999_herb_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_1999_comm <- merge(Tennessee_Shallow_1999, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_1999_comm_biomass <- summarise_at(Tennessee_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_1999_comm_biomass$Year <- ('1999')
Tennessee_Shallow_1999_comm_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2000 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2000.xls")

Tennessee_Shallow_2000_herb <- merge(Tennessee_Shallow_2000, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2000_herb_biomass <- summarise_at(Tennessee_Shallow_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2000_herb_biomass$Year <- ('2000')
Tennessee_Shallow_2000_herb_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2000_comm <- merge(Tennessee_Shallow_2000, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2000_comm_biomass <- summarise_at(Tennessee_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2000_comm_biomass$Year <- ('2000')
Tennessee_Shallow_2000_comm_biomass$Reef <- ('Tennessee Shallow')

Tennessee_Shallow_2001 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2001.xls")

Tennessee_Shallow_2001_herb <- merge(Tennessee_Shallow_2001, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2001_herb_biomass <- summarise_at(Tennessee_Shallow_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2001_herb_biomass$Year <- ('2001')
Tennessee_Shallow_2001_herb_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2001_comm <- merge(Tennessee_Shallow_2001, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2001_comm_biomass <- summarise_at(Tennessee_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2001_comm_biomass$Year <- ('2001')
Tennessee_Shallow_2001_comm_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2002 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2002.xls")

Tennessee_Shallow_2002_herb <- merge(Tennessee_Shallow_2002, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2002_herb_biomass <- summarise_at(Tennessee_Shallow_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2002_herb_biomass$Year <- ('2002')
Tennessee_Shallow_2002_herb_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2002_comm <- merge(Tennessee_Shallow_2002, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2002_comm_biomass <- summarise_at(Tennessee_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2002_comm_biomass$Year <- ('2002')
Tennessee_Shallow_2002_comm_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2003 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2003.xls")

Tennessee_Shallow_2003_herb <- merge(Tennessee_Shallow_2003, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2003_herb_biomass <- summarise_at(Tennessee_Shallow_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2003_herb_biomass$Year <- ('2003')
Tennessee_Shallow_2003_herb_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2003_comm <- merge(Tennessee_Shallow_2003, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2003_comm_biomass <- summarise_at(Tennessee_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2003_comm_biomass$Year <- ('2003')
Tennessee_Shallow_2003_comm_biomass$Reef <- ('Tennessee Shallow')


# Tennessee_Shallow_2004 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2004.xls")
# 
# Tennessee_Shallow_2004_herb <- merge(Tennessee_Shallow_2004, Herb, by = c("SPECIES_CD"))
# Tennessee_Shallow_2004_herb_biomass <- summarise_at(Tennessee_Shallow_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Tennessee_Shallow_2004_herb_biomass$Year <- ('2004')
# Tennessee_Shallow_2004_herb_biomass$Reef <- ('Tennessee Shallow')
# 
# 
# Tennessee_Shallow_2004_comm <- merge(Tennessee_Shallow_2004, Comm, by = c("SPECIES_CD"))
# Tennessee_Shallow_2004_comm_biomass <- summarise_at(Tennessee_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Tennessee_Shallow_2004_comm_biomass$Year <- ('2004')
# Tennessee_Shallow_2004_comm_biomass$Reef <- ('Tennessee Shallow')

Tennessee_Shallow_2005 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2005.xls")

Tennessee_Shallow_2005_herb <- merge(Tennessee_Shallow_2005, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2005_herb_biomass <- summarise_at(Tennessee_Shallow_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2005_herb_biomass$Year <- ('2005')
Tennessee_Shallow_2005_herb_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2005_comm <- merge(Tennessee_Shallow_2005, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2005_comm_biomass <- summarise_at(Tennessee_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2005_comm_biomass$Year <- ('2005')
Tennessee_Shallow_2005_comm_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2006 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2006.xls")

Tennessee_Shallow_2006_herb <- merge(Tennessee_Shallow_2006, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2006_herb_biomass <- summarise_at(Tennessee_Shallow_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2006_herb_biomass$Year <- ('2006')
Tennessee_Shallow_2006_herb_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2006_comm <- merge(Tennessee_Shallow_2006, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2006_comm_biomass <- summarise_at(Tennessee_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2006_comm_biomass$Year <- ('2006')
Tennessee_Shallow_2006_comm_biomass$Reef <- ('Tennessee Shallow')

Tennessee_Shallow_2007 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2007.xls")

Tennessee_Shallow_2007_herb <- merge(Tennessee_Shallow_2007, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2007_herb_biomass <- summarise_at(Tennessee_Shallow_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2007_herb_biomass$Year <- ('2007')
Tennessee_Shallow_2007_herb_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2007_comm <- merge(Tennessee_Shallow_2007, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2007_comm_biomass <- summarise_at(Tennessee_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2007_comm_biomass$Year <- ('2007')
Tennessee_Shallow_2007_comm_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2008 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2008.xls")

Tennessee_Shallow_2008_herb <- merge(Tennessee_Shallow_2008, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2008_herb_biomass <- summarise_at(Tennessee_Shallow_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2008_herb_biomass$Year <- ('2008')
Tennessee_Shallow_2008_herb_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2008_comm <- merge(Tennessee_Shallow_2008, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2008_comm_biomass <- summarise_at(Tennessee_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2008_comm_biomass$Year <- ('2008')
Tennessee_Shallow_2008_comm_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2009 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2009.xls")

Tennessee_Shallow_2009_herb <- merge(Tennessee_Shallow_2009, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2009_herb_biomass <- summarise_at(Tennessee_Shallow_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2009_herb_biomass$Year <- ('2009')
Tennessee_Shallow_2009_herb_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2009_comm <- merge(Tennessee_Shallow_2009, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2009_comm_biomass <- summarise_at(Tennessee_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2009_comm_biomass$Year <- ('2009')
Tennessee_Shallow_2009_comm_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2010 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2010.xls")

Tennessee_Shallow_2010_herb <- merge(Tennessee_Shallow_2010, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2010_herb_biomass <- summarise_at(Tennessee_Shallow_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2010_herb_biomass$Year <- ('2010')
Tennessee_Shallow_2010_herb_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2010_comm <- merge(Tennessee_Shallow_2010, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2010_comm_biomass <- summarise_at(Tennessee_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2010_comm_biomass$Year <- ('2010')
Tennessee_Shallow_2010_comm_biomass$Reef <- ('Tennessee Shallow')

Tennessee_Shallow_2011 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2011.xls")

Tennessee_Shallow_2011_herb <- merge(Tennessee_Shallow_2011, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2011_herb_biomass <- summarise_at(Tennessee_Shallow_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2011_herb_biomass$Year <- ('2011')
Tennessee_Shallow_2011_herb_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2011_comm <- merge(Tennessee_Shallow_2011, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2011_comm_biomass <- summarise_at(Tennessee_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2011_comm_biomass$Year <- ('2011')
Tennessee_Shallow_2011_comm_biomass$Reef <- ('Tennessee Shallow')



Tennessee_Shallow_2012 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2012.xls")

Tennessee_Shallow_2012_herb <- merge(Tennessee_Shallow_2012, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2012_herb_biomass <- summarise_at(Tennessee_Shallow_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2012_herb_biomass$Year <- ('2012')
Tennessee_Shallow_2012_herb_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2012_comm <- merge(Tennessee_Shallow_2012, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2012_comm_biomass <- summarise_at(Tennessee_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2012_comm_biomass$Year <- ('2012')
Tennessee_Shallow_2012_comm_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2014 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2014.xls")

Tennessee_Shallow_2014_herb <- merge(Tennessee_Shallow_2014, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2014_herb_biomass <- summarise_at(Tennessee_Shallow_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2014_herb_biomass$Year <- ('2014')
Tennessee_Shallow_2014_herb_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2014_comm <- merge(Tennessee_Shallow_2014, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2014_comm_biomass <- summarise_at(Tennessee_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2014_comm_biomass$Year <- ('2014')
Tennessee_Shallow_2014_comm_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2016 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2016.xls")

Tennessee_Shallow_2016_herb <- merge(Tennessee_Shallow_2016, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2016_herb_biomass <- summarise_at(Tennessee_Shallow_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2016_herb_biomass$Year <- ('2016')
Tennessee_Shallow_2016_herb_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2016_comm <- merge(Tennessee_Shallow_2016, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2016_comm_biomass <- summarise_at(Tennessee_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2016_comm_biomass$Year <- ('2016')
Tennessee_Shallow_2016_comm_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2018 <- import("Tennessee_Shallow/data/Tennessee_Shallow_2018.xls")

Tennessee_Shallow_2018_herb <- merge(Tennessee_Shallow_2018, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2018_herb_biomass <- summarise_at(Tennessee_Shallow_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2018_herb_biomass$Year <- ('2018')
Tennessee_Shallow_2018_herb_biomass$Reef <- ('Tennessee Shallow')


Tennessee_Shallow_2018_comm <- merge(Tennessee_Shallow_2018, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2018_comm_biomass <- summarise_at(Tennessee_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Tennessee_Shallow_2018_comm_biomass$Year <- ('2018')
Tennessee_Shallow_2018_comm_biomass$Reef <- ('Tennessee Shallow')



### Combine all years together for herbivorous and commercial seperately



Tennessee_Shallow_herb_1 <- rbind(Tennessee_Shallow_1999_herb_biomass,Tennessee_Shallow_2000_herb_biomass)
Tennessee_Shallow_herb_2 <- rbind(Tennessee_Shallow_herb_1,Tennessee_Shallow_2001_herb_biomass)
Tennessee_Shallow_herb_3 <- rbind(Tennessee_Shallow_herb_2,Tennessee_Shallow_2002_herb_biomass)
Tennessee_Shallow_herb_4 <- rbind(Tennessee_Shallow_herb_3,Tennessee_Shallow_2003_herb_biomass)
#Tennessee_Shallow_herb_5 <- rbind(Tennessee_Shallow_herb_4,Tennessee_Shallow_2004_herb_biomass)
Tennessee_Shallow_herb_6 <- rbind(Tennessee_Shallow_herb_4,Tennessee_Shallow_2005_herb_biomass)
Tennessee_Shallow_herb_7 <- rbind(Tennessee_Shallow_herb_6,Tennessee_Shallow_2006_herb_biomass)
Tennessee_Shallow_herb_8 <- rbind(Tennessee_Shallow_herb_7,Tennessee_Shallow_2007_herb_biomass)
Tennessee_Shallow_herb_9 <- rbind(Tennessee_Shallow_herb_8,Tennessee_Shallow_2008_herb_biomass)
Tennessee_Shallow_herb_10 <- rbind(Tennessee_Shallow_herb_9,Tennessee_Shallow_2009_herb_biomass)
Tennessee_Shallow_herb_11<- rbind(Tennessee_Shallow_herb_10,Tennessee_Shallow_2010_herb_biomass)
Tennessee_Shallow_herb_12 <- rbind(Tennessee_Shallow_herb_11,Tennessee_Shallow_2011_herb_biomass)
Tennessee_Shallow_herb_13 <- rbind(Tennessee_Shallow_herb_12,Tennessee_Shallow_2012_herb_biomass)
Tennessee_Shallow_herb_14 <- rbind(Tennessee_Shallow_herb_13,Tennessee_Shallow_2014_herb_biomass)
Tennessee_Shallow_herb_15 <- rbind(Tennessee_Shallow_herb_14,Tennessee_Shallow_2016_herb_biomass)
Tennessee_Shallow_herb_biomass_data_combined <- rbind(Tennessee_Shallow_herb_15,Tennessee_Shallow_2018_herb_biomass)



Tennessee_Shallow_comm_1 <- rbind(Tennessee_Shallow_1999_comm_biomass,Tennessee_Shallow_2000_comm_biomass)
Tennessee_Shallow_comm_2 <- rbind(Tennessee_Shallow_comm_1,Tennessee_Shallow_2001_comm_biomass)
Tennessee_Shallow_comm_3 <- rbind(Tennessee_Shallow_comm_2,Tennessee_Shallow_2002_comm_biomass)
Tennessee_Shallow_comm_4 <- rbind(Tennessee_Shallow_comm_3,Tennessee_Shallow_2003_comm_biomass)
#Tennessee_Shallow_comm_5 <- rbind(Tennessee_Shallow_comm_4,Tennessee_Shallow_2004_comm_biomass)
Tennessee_Shallow_comm_6 <- rbind(Tennessee_Shallow_comm_4,Tennessee_Shallow_2005_comm_biomass)
Tennessee_Shallow_comm_7 <- rbind(Tennessee_Shallow_comm_6,Tennessee_Shallow_2006_comm_biomass)
Tennessee_Shallow_comm_8 <- rbind(Tennessee_Shallow_comm_7,Tennessee_Shallow_2007_comm_biomass)
Tennessee_Shallow_comm_9 <- rbind(Tennessee_Shallow_comm_8,Tennessee_Shallow_2008_comm_biomass)
Tennessee_Shallow_comm_10 <- rbind(Tennessee_Shallow_comm_9,Tennessee_Shallow_2009_comm_biomass)
Tennessee_Shallow_comm_11<- rbind(Tennessee_Shallow_comm_10,Tennessee_Shallow_2010_comm_biomass)
Tennessee_Shallow_comm_12 <- rbind(Tennessee_Shallow_comm_11,Tennessee_Shallow_2011_comm_biomass)
Tennessee_Shallow_comm_13 <- rbind(Tennessee_Shallow_comm_12,Tennessee_Shallow_2012_comm_biomass)
Tennessee_Shallow_comm_14 <- rbind(Tennessee_Shallow_comm_13,Tennessee_Shallow_2014_comm_biomass)
Tennessee_Shallow_comm_15 <- rbind(Tennessee_Shallow_comm_14,Tennessee_Shallow_2016_comm_biomass)
Tennessee_Shallow_comm_biomass_data_combined <- rbind(Tennessee_Shallow_comm_15,Tennessee_Shallow_2018_comm_biomass)



export(Tennessee_Shallow_herb_biomass_data_combined, "Tennessee_Shallow/data/Tennessee_Shallow_herbivorous_biomass.csv")
export(Tennessee_Shallow_comm_biomass_data_combined, "Tennessee_Shallow/data/Tennessee_Shallow_commercial_biomass.csv")




# Thor 

Thor_1999 <- import("Thor/data/Thor_1999.xls")


Thor_1999_herb <- merge(Thor_1999, Herb, by = c("SPECIES_CD"))
Thor_1999_herb_biomass <- summarise_at(Thor_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_1999_herb_biomass$Year <- ('1999')
Thor_1999_herb_biomass$Reef <- ('Thor')


Thor_1999_comm <- merge(Thor_1999, Comm, by = c("SPECIES_CD"))
Thor_1999_comm_biomass <- summarise_at(Thor_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_1999_comm_biomass$Year <- ('1999')
Thor_1999_comm_biomass$Reef <- ('Thor')


Thor_2000 <- import("Thor/data/Thor_2000.xls")

Thor_2000_herb <- merge(Thor_2000, Herb, by = c("SPECIES_CD"))
Thor_2000_herb_biomass <- summarise_at(Thor_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2000_herb_biomass$Year <- ('2000')
Thor_2000_herb_biomass$Reef <- ('Thor')


Thor_2000_comm <- merge(Thor_2000, Comm, by = c("SPECIES_CD"))
Thor_2000_comm_biomass <- summarise_at(Thor_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2000_comm_biomass$Year <- ('2000')
Thor_2000_comm_biomass$Reef <- ('Thor')

Thor_2001 <- import("Thor/data/Thor_2001.xls")

Thor_2001_herb <- merge(Thor_2001, Herb, by = c("SPECIES_CD"))
Thor_2001_herb_biomass <- summarise_at(Thor_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2001_herb_biomass$Year <- ('2001')
Thor_2001_herb_biomass$Reef <- ('Thor')


Thor_2001_comm <- merge(Thor_2001, Comm, by = c("SPECIES_CD"))
Thor_2001_comm_biomass <- summarise_at(Thor_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2001_comm_biomass$Year <- ('2001')
Thor_2001_comm_biomass$Reef <- ('Thor')


Thor_2002 <- import("Thor/data/Thor_2002.xls")

Thor_2002_herb <- merge(Thor_2002, Herb, by = c("SPECIES_CD"))
Thor_2002_herb_biomass <- summarise_at(Thor_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2002_herb_biomass$Year <- ('2002')
Thor_2002_herb_biomass$Reef <- ('Thor')


Thor_2002_comm <- merge(Thor_2002, Comm, by = c("SPECIES_CD"))
Thor_2002_comm_biomass <- summarise_at(Thor_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2002_comm_biomass$Year <- ('2002')
Thor_2002_comm_biomass$Reef <- ('Thor')


Thor_2003 <- import("Thor/data/Thor_2003.xls")

Thor_2003_herb <- merge(Thor_2003, Herb, by = c("SPECIES_CD"))
Thor_2003_herb_biomass <- summarise_at(Thor_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2003_herb_biomass$Year <- ('2003')
Thor_2003_herb_biomass$Reef <- ('Thor')


Thor_2003_comm <- merge(Thor_2003, Comm, by = c("SPECIES_CD"))
Thor_2003_comm_biomass <- summarise_at(Thor_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2003_comm_biomass$Year <- ('2003')
Thor_2003_comm_biomass$Reef <- ('Thor')


# Thor_2004 <- import("Thor/data/Thor_2004.xls")
# 
# Thor_2004_herb <- merge(Thor_2004, Herb, by = c("SPECIES_CD"))
# Thor_2004_herb_biomass <- summarise_at(Thor_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Thor_2004_herb_biomass$Year <- ('2004')
# Thor_2004_herb_biomass$Reef <- ('Thor')
# 
# 
# Thor_2004_comm <- merge(Thor_2004, Comm, by = c("SPECIES_CD"))
# Thor_2004_comm_biomass <- summarise_at(Thor_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# Thor_2004_comm_biomass$Year <- ('2004')
# Thor_2004_comm_biomass$Reef <- ('Thor')

Thor_2005 <- import("Thor/data/Thor_2005.xls")

Thor_2005_herb <- merge(Thor_2005, Herb, by = c("SPECIES_CD"))
Thor_2005_herb_biomass <- summarise_at(Thor_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2005_herb_biomass$Year <- ('2005')
Thor_2005_herb_biomass$Reef <- ('Thor')


Thor_2005_comm <- merge(Thor_2005, Comm, by = c("SPECIES_CD"))
Thor_2005_comm_biomass <- summarise_at(Thor_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2005_comm_biomass$Year <- ('2005')
Thor_2005_comm_biomass$Reef <- ('Thor')


Thor_2006 <- import("Thor/data/Thor_2006.xls")

Thor_2006_herb <- merge(Thor_2006, Herb, by = c("SPECIES_CD"))
Thor_2006_herb_biomass <- summarise_at(Thor_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2006_herb_biomass$Year <- ('2006')
Thor_2006_herb_biomass$Reef <- ('Thor')


Thor_2006_comm <- merge(Thor_2006, Comm, by = c("SPECIES_CD"))
Thor_2006_comm_biomass <- summarise_at(Thor_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2006_comm_biomass$Year <- ('2006')
Thor_2006_comm_biomass$Reef <- ('Thor')

Thor_2007 <- import("Thor/data/Thor_2007.xls")

Thor_2007_herb <- merge(Thor_2007, Herb, by = c("SPECIES_CD"))
Thor_2007_herb_biomass <- summarise_at(Thor_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2007_herb_biomass$Year <- ('2007')
Thor_2007_herb_biomass$Reef <- ('Thor')


Thor_2007_comm <- merge(Thor_2007, Comm, by = c("SPECIES_CD"))
Thor_2007_comm_biomass <- summarise_at(Thor_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2007_comm_biomass$Year <- ('2007')
Thor_2007_comm_biomass$Reef <- ('Thor')


Thor_2008 <- import("Thor/data/Thor_2008.xls")

Thor_2008_herb <- merge(Thor_2008, Herb, by = c("SPECIES_CD"))
Thor_2008_herb_biomass <- summarise_at(Thor_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2008_herb_biomass$Year <- ('2008')
Thor_2008_herb_biomass$Reef <- ('Thor')


Thor_2008_comm <- merge(Thor_2008, Comm, by = c("SPECIES_CD"))
Thor_2008_comm_biomass <- summarise_at(Thor_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2008_comm_biomass$Year <- ('2008')
Thor_2008_comm_biomass$Reef <- ('Thor')


Thor_2009 <- import("Thor/data/Thor_2009.xls")

Thor_2009_herb <- merge(Thor_2009, Herb, by = c("SPECIES_CD"))
Thor_2009_herb_biomass <- summarise_at(Thor_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2009_herb_biomass$Year <- ('2009')
Thor_2009_herb_biomass$Reef <- ('Thor')


Thor_2009_comm <- merge(Thor_2009, Comm, by = c("SPECIES_CD"))
Thor_2009_comm_biomass <- summarise_at(Thor_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2009_comm_biomass$Year <- ('2009')
Thor_2009_comm_biomass$Reef <- ('Thor')


Thor_2010 <- import("Thor/data/Thor_2010.xls")

Thor_2010_herb <- merge(Thor_2010, Herb, by = c("SPECIES_CD"))
Thor_2010_herb_biomass <- summarise_at(Thor_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2010_herb_biomass$Year <- ('2010')
Thor_2010_herb_biomass$Reef <- ('Thor')


Thor_2010_comm <- merge(Thor_2010, Comm, by = c("SPECIES_CD"))
Thor_2010_comm_biomass <- summarise_at(Thor_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2010_comm_biomass$Year <- ('2010')
Thor_2010_comm_biomass$Reef <- ('Thor')

Thor_2011 <- import("Thor/data/Thor_2011.xls")

Thor_2011_herb <- merge(Thor_2011, Herb, by = c("SPECIES_CD"))
Thor_2011_herb_biomass <- summarise_at(Thor_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2011_herb_biomass$Year <- ('2011')
Thor_2011_herb_biomass$Reef <- ('Thor')


Thor_2011_comm <- merge(Thor_2011, Comm, by = c("SPECIES_CD"))
Thor_2011_comm_biomass <- summarise_at(Thor_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2011_comm_biomass$Year <- ('2011')
Thor_2011_comm_biomass$Reef <- ('Thor')



Thor_2012 <- import("Thor/data/Thor_2012.xls")

Thor_2012_herb <- merge(Thor_2012, Herb, by = c("SPECIES_CD"))
Thor_2012_herb_biomass <- summarise_at(Thor_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2012_herb_biomass$Year <- ('2012')
Thor_2012_herb_biomass$Reef <- ('Thor')


Thor_2012_comm <- merge(Thor_2012, Comm, by = c("SPECIES_CD"))
Thor_2012_comm_biomass <- summarise_at(Thor_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2012_comm_biomass$Year <- ('2012')
Thor_2012_comm_biomass$Reef <- ('Thor')


Thor_2014 <- import("Thor/data/Thor_2014.xls")

Thor_2014_herb <- merge(Thor_2014, Herb, by = c("SPECIES_CD"))
Thor_2014_herb_biomass <- summarise_at(Thor_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2014_herb_biomass$Year <- ('2014')
Thor_2014_herb_biomass$Reef <- ('Thor')


Thor_2014_comm <- merge(Thor_2014, Comm, by = c("SPECIES_CD"))
Thor_2014_comm_biomass <- summarise_at(Thor_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2014_comm_biomass$Year <- ('2014')
Thor_2014_comm_biomass$Reef <- ('Thor')


Thor_2016 <- import("Thor/data/Thor_2016.xls")

Thor_2016_herb <- merge(Thor_2016, Herb, by = c("SPECIES_CD"))
Thor_2016_herb_biomass <- summarise_at(Thor_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2016_herb_biomass$Year <- ('2016')
Thor_2016_herb_biomass$Reef <- ('Thor')


Thor_2016_comm <- merge(Thor_2016, Comm, by = c("SPECIES_CD"))
Thor_2016_comm_biomass <- summarise_at(Thor_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2016_comm_biomass$Year <- ('2016')
Thor_2016_comm_biomass$Reef <- ('Thor')


Thor_2018 <- import("Thor/data/Thor_2018.xls")

Thor_2018_herb <- merge(Thor_2018, Herb, by = c("SPECIES_CD"))
Thor_2018_herb_biomass <- summarise_at(Thor_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2018_herb_biomass$Year <- ('2018')
Thor_2018_herb_biomass$Reef <- ('Thor')


Thor_2018_comm <- merge(Thor_2018, Comm, by = c("SPECIES_CD"))
Thor_2018_comm_biomass <- summarise_at(Thor_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Thor_2018_comm_biomass$Year <- ('2018')
Thor_2018_comm_biomass$Reef <- ('Thor')



### Combine all years together for herbivorous and commercial seperately



Thor_herb_1 <- rbind(Thor_1999_herb_biomass,Thor_2000_herb_biomass)
Thor_herb_2 <- rbind(Thor_herb_1,Thor_2001_herb_biomass)
Thor_herb_3 <- rbind(Thor_herb_2,Thor_2002_herb_biomass)
Thor_herb_4 <- rbind(Thor_herb_3,Thor_2003_herb_biomass)
#Thor_herb_5 <- rbind(Thor_herb_4,Thor_2004_herb_biomass)
Thor_herb_6 <- rbind(Thor_herb_4,Thor_2005_herb_biomass)
Thor_herb_7 <- rbind(Thor_herb_6,Thor_2006_herb_biomass)
Thor_herb_8 <- rbind(Thor_herb_7,Thor_2007_herb_biomass)
Thor_herb_9 <- rbind(Thor_herb_8,Thor_2008_herb_biomass)
Thor_herb_10 <- rbind(Thor_herb_9,Thor_2009_herb_biomass)
Thor_herb_11<- rbind(Thor_herb_10,Thor_2010_herb_biomass)
Thor_herb_12 <- rbind(Thor_herb_11,Thor_2011_herb_biomass)
Thor_herb_13 <- rbind(Thor_herb_12,Thor_2012_herb_biomass)
Thor_herb_14 <- rbind(Thor_herb_13,Thor_2014_herb_biomass)
Thor_herb_15 <- rbind(Thor_herb_14,Thor_2016_herb_biomass)
Thor_herb_biomass_data_combined <- rbind(Thor_herb_15,Thor_2018_herb_biomass)



Thor_comm_1 <- rbind(Thor_1999_comm_biomass,Thor_2000_comm_biomass)
Thor_comm_2 <- rbind(Thor_comm_1,Thor_2001_comm_biomass)
Thor_comm_3 <- rbind(Thor_comm_2,Thor_2002_comm_biomass)
Thor_comm_4 <- rbind(Thor_comm_3,Thor_2003_comm_biomass)
#Thor_comm_5 <- rbind(Thor_comm_4,Thor_2004_comm_biomass)
Thor_comm_6 <- rbind(Thor_comm_4,Thor_2005_comm_biomass)
Thor_comm_7 <- rbind(Thor_comm_6,Thor_2006_comm_biomass)
Thor_comm_8 <- rbind(Thor_comm_7,Thor_2007_comm_biomass)
Thor_comm_9 <- rbind(Thor_comm_8,Thor_2008_comm_biomass)
Thor_comm_10 <- rbind(Thor_comm_9,Thor_2009_comm_biomass)
Thor_comm_11<- rbind(Thor_comm_10,Thor_2010_comm_biomass)
Thor_comm_12 <- rbind(Thor_comm_11,Thor_2011_comm_biomass)
Thor_comm_13 <- rbind(Thor_comm_12,Thor_2012_comm_biomass)
Thor_comm_14 <- rbind(Thor_comm_13,Thor_2014_comm_biomass)
Thor_comm_15 <- rbind(Thor_comm_14,Thor_2016_comm_biomass)
Thor_comm_biomass_data_combined <- rbind(Thor_comm_15,Thor_2018_comm_biomass)



export(Thor_herb_biomass_data_combined, "Thor/data/Thor_herbivorous_biomass.csv")
export(Thor_comm_biomass_data_combined, "Thor/data/Thor_commercial_biomass.csv")




# West Turtle Shoal 

West_Turtle_Shoal_1999 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_1999.xls")


West_Turtle_Shoal_1999_herb <- merge(West_Turtle_Shoal_1999, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_1999_herb_biomass <- summarise_at(West_Turtle_Shoal_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_1999_herb_biomass$Year <- ('1999')
West_Turtle_Shoal_1999_herb_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_1999_comm <- merge(West_Turtle_Shoal_1999, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_1999_comm_biomass <- summarise_at(West_Turtle_Shoal_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_1999_comm_biomass$Year <- ('1999')
West_Turtle_Shoal_1999_comm_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2000 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2000.xls")

West_Turtle_Shoal_2000_herb <- merge(West_Turtle_Shoal_2000, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2000_herb_biomass <- summarise_at(West_Turtle_Shoal_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2000_herb_biomass$Year <- ('2000')
West_Turtle_Shoal_2000_herb_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2000_comm <- merge(West_Turtle_Shoal_2000, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2000_comm_biomass <- summarise_at(West_Turtle_Shoal_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2000_comm_biomass$Year <- ('2000')
West_Turtle_Shoal_2000_comm_biomass$Reef <- ('West Turtle Shoal')

West_Turtle_Shoal_2001 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2001.xls")

West_Turtle_Shoal_2001_herb <- merge(West_Turtle_Shoal_2001, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2001_herb_biomass <- summarise_at(West_Turtle_Shoal_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2001_herb_biomass$Year <- ('2001')
West_Turtle_Shoal_2001_herb_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2001_comm <- merge(West_Turtle_Shoal_2001, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2001_comm_biomass <- summarise_at(West_Turtle_Shoal_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2001_comm_biomass$Year <- ('2001')
West_Turtle_Shoal_2001_comm_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2002 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2002.xls")

West_Turtle_Shoal_2002_herb <- merge(West_Turtle_Shoal_2002, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2002_herb_biomass <- summarise_at(West_Turtle_Shoal_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2002_herb_biomass$Year <- ('2002')
West_Turtle_Shoal_2002_herb_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2002_comm <- merge(West_Turtle_Shoal_2002, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2002_comm_biomass <- summarise_at(West_Turtle_Shoal_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2002_comm_biomass$Year <- ('2002')
West_Turtle_Shoal_2002_comm_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2003 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2003.xls")

West_Turtle_Shoal_2003_herb <- merge(West_Turtle_Shoal_2003, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2003_herb_biomass <- summarise_at(West_Turtle_Shoal_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2003_herb_biomass$Year <- ('2003')
West_Turtle_Shoal_2003_herb_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2003_comm <- merge(West_Turtle_Shoal_2003, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2003_comm_biomass <- summarise_at(West_Turtle_Shoal_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2003_comm_biomass$Year <- ('2003')
West_Turtle_Shoal_2003_comm_biomass$Reef <- ('West Turtle Shoal')


# West_Turtle_Shoal_2004 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2004.xls")
# 
# West_Turtle_Shoal_2004_herb <- merge(West_Turtle_Shoal_2004, Herb, by = c("SPECIES_CD"))
# West_Turtle_Shoal_2004_herb_biomass <- summarise_at(West_Turtle_Shoal_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# West_Turtle_Shoal_2004_herb_biomass$Year <- ('2004')
# West_Turtle_Shoal_2004_herb_biomass$Reef <- ('West Turtle Shoal')
# 
# 
# West_Turtle_Shoal_2004_comm <- merge(West_Turtle_Shoal_2004, Comm, by = c("SPECIES_CD"))
# West_Turtle_Shoal_2004_comm_biomass <- summarise_at(West_Turtle_Shoal_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
# West_Turtle_Shoal_2004_comm_biomass$Year <- ('2004')
# West_Turtle_Shoal_2004_comm_biomass$Reef <- ('West Turtle Shoal')

West_Turtle_Shoal_2005 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2005.xls")

West_Turtle_Shoal_2005_herb <- merge(West_Turtle_Shoal_2005, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2005_herb_biomass <- summarise_at(West_Turtle_Shoal_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2005_herb_biomass$Year <- ('2005')
West_Turtle_Shoal_2005_herb_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2005_comm <- merge(West_Turtle_Shoal_2005, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2005_comm_biomass <- summarise_at(West_Turtle_Shoal_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2005_comm_biomass$Year <- ('2005')
West_Turtle_Shoal_2005_comm_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2006 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2006.xls")

West_Turtle_Shoal_2006_herb <- merge(West_Turtle_Shoal_2006, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2006_herb_biomass <- summarise_at(West_Turtle_Shoal_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2006_herb_biomass$Year <- ('2006')
West_Turtle_Shoal_2006_herb_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2006_comm <- merge(West_Turtle_Shoal_2006, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2006_comm_biomass <- summarise_at(West_Turtle_Shoal_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2006_comm_biomass$Year <- ('2006')
West_Turtle_Shoal_2006_comm_biomass$Reef <- ('West Turtle Shoal')

West_Turtle_Shoal_2007 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2007.xls")

West_Turtle_Shoal_2007_herb <- merge(West_Turtle_Shoal_2007, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2007_herb_biomass <- summarise_at(West_Turtle_Shoal_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2007_herb_biomass$Year <- ('2007')
West_Turtle_Shoal_2007_herb_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2007_comm <- merge(West_Turtle_Shoal_2007, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2007_comm_biomass <- summarise_at(West_Turtle_Shoal_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2007_comm_biomass$Year <- ('2007')
West_Turtle_Shoal_2007_comm_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2008 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2008.xls")

West_Turtle_Shoal_2008_herb <- merge(West_Turtle_Shoal_2008, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2008_herb_biomass <- summarise_at(West_Turtle_Shoal_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2008_herb_biomass$Year <- ('2008')
West_Turtle_Shoal_2008_herb_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2008_comm <- merge(West_Turtle_Shoal_2008, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2008_comm_biomass <- summarise_at(West_Turtle_Shoal_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2008_comm_biomass$Year <- ('2008')
West_Turtle_Shoal_2008_comm_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2009 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2009.xls")

West_Turtle_Shoal_2009_herb <- merge(West_Turtle_Shoal_2009, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2009_herb_biomass <- summarise_at(West_Turtle_Shoal_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2009_herb_biomass$Year <- ('2009')
West_Turtle_Shoal_2009_herb_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2009_comm <- merge(West_Turtle_Shoal_2009, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2009_comm_biomass <- summarise_at(West_Turtle_Shoal_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2009_comm_biomass$Year <- ('2009')
West_Turtle_Shoal_2009_comm_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2010 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2010.xls")

West_Turtle_Shoal_2010_herb <- merge(West_Turtle_Shoal_2010, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2010_herb_biomass <- summarise_at(West_Turtle_Shoal_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2010_herb_biomass$Year <- ('2010')
West_Turtle_Shoal_2010_herb_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2010_comm <- merge(West_Turtle_Shoal_2010, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2010_comm_biomass <- summarise_at(West_Turtle_Shoal_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2010_comm_biomass$Year <- ('2010')
West_Turtle_Shoal_2010_comm_biomass$Reef <- ('West Turtle Shoal')

West_Turtle_Shoal_2011 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2011.xls")

West_Turtle_Shoal_2011_herb <- merge(West_Turtle_Shoal_2011, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2011_herb_biomass <- summarise_at(West_Turtle_Shoal_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2011_herb_biomass$Year <- ('2011')
West_Turtle_Shoal_2011_herb_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2011_comm <- merge(West_Turtle_Shoal_2011, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2011_comm_biomass <- summarise_at(West_Turtle_Shoal_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2011_comm_biomass$Year <- ('2011')
West_Turtle_Shoal_2011_comm_biomass$Reef <- ('West Turtle Shoal')



West_Turtle_Shoal_2012 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2012.xls")

West_Turtle_Shoal_2012_herb <- merge(West_Turtle_Shoal_2012, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2012_herb_biomass <- summarise_at(West_Turtle_Shoal_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2012_herb_biomass$Year <- ('2012')
West_Turtle_Shoal_2012_herb_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2012_comm <- merge(West_Turtle_Shoal_2012, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2012_comm_biomass <- summarise_at(West_Turtle_Shoal_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2012_comm_biomass$Year <- ('2012')
West_Turtle_Shoal_2012_comm_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2014 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2014.xls")

West_Turtle_Shoal_2014_herb <- merge(West_Turtle_Shoal_2014, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2014_herb_biomass <- summarise_at(West_Turtle_Shoal_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2014_herb_biomass$Year <- ('2014')
West_Turtle_Shoal_2014_herb_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2014_comm <- merge(West_Turtle_Shoal_2014, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2014_comm_biomass <- summarise_at(West_Turtle_Shoal_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2014_comm_biomass$Year <- ('2014')
West_Turtle_Shoal_2014_comm_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2016 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2016.xls")

West_Turtle_Shoal_2016_herb <- merge(West_Turtle_Shoal_2016, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2016_herb_biomass <- summarise_at(West_Turtle_Shoal_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2016_herb_biomass$Year <- ('2016')
West_Turtle_Shoal_2016_herb_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2016_comm <- merge(West_Turtle_Shoal_2016, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2016_comm_biomass <- summarise_at(West_Turtle_Shoal_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2016_comm_biomass$Year <- ('2016')
West_Turtle_Shoal_2016_comm_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2018 <- import("West_Turtle_Shoal/data/West_Turtle_Shoal_2018.xls")

West_Turtle_Shoal_2018_herb <- merge(West_Turtle_Shoal_2018, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2018_herb_biomass <- summarise_at(West_Turtle_Shoal_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2018_herb_biomass$Year <- ('2018')
West_Turtle_Shoal_2018_herb_biomass$Reef <- ('West Turtle Shoal')


West_Turtle_Shoal_2018_comm <- merge(West_Turtle_Shoal_2018, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2018_comm_biomass <- summarise_at(West_Turtle_Shoal_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
West_Turtle_Shoal_2018_comm_biomass$Year <- ('2018')
West_Turtle_Shoal_2018_comm_biomass$Reef <- ('West Turtle Shoal')



### Combine all years together for herbivorous and commercial seperately



West_Turtle_Shoal_herb_1 <- rbind(West_Turtle_Shoal_1999_herb_biomass,West_Turtle_Shoal_2000_herb_biomass)
West_Turtle_Shoal_herb_2 <- rbind(West_Turtle_Shoal_herb_1,West_Turtle_Shoal_2001_herb_biomass)
West_Turtle_Shoal_herb_3 <- rbind(West_Turtle_Shoal_herb_2,West_Turtle_Shoal_2002_herb_biomass)
West_Turtle_Shoal_herb_4 <- rbind(West_Turtle_Shoal_herb_3,West_Turtle_Shoal_2003_herb_biomass)
#West_Turtle_Shoal_herb_5 <- rbind(West_Turtle_Shoal_herb_4,West_Turtle_Shoal_2004_herb_biomass)
West_Turtle_Shoal_herb_6 <- rbind(West_Turtle_Shoal_herb_4,West_Turtle_Shoal_2005_herb_biomass)
West_Turtle_Shoal_herb_7 <- rbind(West_Turtle_Shoal_herb_6,West_Turtle_Shoal_2006_herb_biomass)
West_Turtle_Shoal_herb_8 <- rbind(West_Turtle_Shoal_herb_7,West_Turtle_Shoal_2007_herb_biomass)
West_Turtle_Shoal_herb_9 <- rbind(West_Turtle_Shoal_herb_8,West_Turtle_Shoal_2008_herb_biomass)
West_Turtle_Shoal_herb_10 <- rbind(West_Turtle_Shoal_herb_9,West_Turtle_Shoal_2009_herb_biomass)
West_Turtle_Shoal_herb_11<- rbind(West_Turtle_Shoal_herb_10,West_Turtle_Shoal_2010_herb_biomass)
West_Turtle_Shoal_herb_12 <- rbind(West_Turtle_Shoal_herb_11,West_Turtle_Shoal_2011_herb_biomass)
West_Turtle_Shoal_herb_13 <- rbind(West_Turtle_Shoal_herb_12,West_Turtle_Shoal_2012_herb_biomass)
West_Turtle_Shoal_herb_14 <- rbind(West_Turtle_Shoal_herb_13,West_Turtle_Shoal_2014_herb_biomass)
West_Turtle_Shoal_herb_15 <- rbind(West_Turtle_Shoal_herb_14,West_Turtle_Shoal_2016_herb_biomass)
West_Turtle_Shoal_herb_biomass_data_combined <- rbind(West_Turtle_Shoal_herb_15,West_Turtle_Shoal_2018_herb_biomass)



West_Turtle_Shoal_comm_1 <- rbind(West_Turtle_Shoal_1999_comm_biomass,West_Turtle_Shoal_2000_comm_biomass)
West_Turtle_Shoal_comm_2 <- rbind(West_Turtle_Shoal_comm_1,West_Turtle_Shoal_2001_comm_biomass)
West_Turtle_Shoal_comm_3 <- rbind(West_Turtle_Shoal_comm_2,West_Turtle_Shoal_2002_comm_biomass)
West_Turtle_Shoal_comm_4 <- rbind(West_Turtle_Shoal_comm_3,West_Turtle_Shoal_2003_comm_biomass)
#West_Turtle_Shoal_comm_5 <- rbind(West_Turtle_Shoal_comm_4,West_Turtle_Shoal_2004_comm_biomass)
West_Turtle_Shoal_comm_6 <- rbind(West_Turtle_Shoal_comm_4,West_Turtle_Shoal_2005_comm_biomass)
West_Turtle_Shoal_comm_7 <- rbind(West_Turtle_Shoal_comm_6,West_Turtle_Shoal_2006_comm_biomass)
West_Turtle_Shoal_comm_8 <- rbind(West_Turtle_Shoal_comm_7,West_Turtle_Shoal_2007_comm_biomass)
West_Turtle_Shoal_comm_9 <- rbind(West_Turtle_Shoal_comm_8,West_Turtle_Shoal_2008_comm_biomass)
West_Turtle_Shoal_comm_10 <- rbind(West_Turtle_Shoal_comm_9,West_Turtle_Shoal_2009_comm_biomass)
West_Turtle_Shoal_comm_11<- rbind(West_Turtle_Shoal_comm_10,West_Turtle_Shoal_2010_comm_biomass)
West_Turtle_Shoal_comm_12 <- rbind(West_Turtle_Shoal_comm_11,West_Turtle_Shoal_2011_comm_biomass)
West_Turtle_Shoal_comm_13 <- rbind(West_Turtle_Shoal_comm_12,West_Turtle_Shoal_2012_comm_biomass)
West_Turtle_Shoal_comm_14 <- rbind(West_Turtle_Shoal_comm_13,West_Turtle_Shoal_2014_comm_biomass)
West_Turtle_Shoal_comm_15 <- rbind(West_Turtle_Shoal_comm_14,West_Turtle_Shoal_2016_comm_biomass)
West_Turtle_Shoal_comm_biomass_data_combined <- rbind(West_Turtle_Shoal_comm_15,West_Turtle_Shoal_2018_comm_biomass)



export(West_Turtle_Shoal_herb_biomass_data_combined, "West_Turtle_Shoal/data/West_Turtle_Shoal_herbivorous_biomass.csv")
export(West_Turtle_Shoal_comm_biomass_data_combined, "West_Turtle_Shoal/data/West_Turtle_Shoal_commercial_biomass.csv")



## Combine all MK 

MK_reef_herb_biomass_combined <- rbind(Alligator_Deep_herb_biomass_data_combined,Alligator_Shallow_herb_biomass_data_combined,Dustan_Rocks_herb_biomass_data_combined,Long_Key_herb_biomass_data_combined,Rawa_Reef_herb_biomass_data_combined,Sombrero_Deep_herb_biomass_data_combined,Sombrero_Shallow_herb_biomass_data_combined,Tennessee_Deep_herb_biomass_data_combined,Tennessee_Shallow_herb_biomass_data_combined,Thor_herb_biomass_data_combined,West_Turtle_Shoal_herb_biomass_data_combined)
MK_reef_herb_biomass_data <- arrange(MK_reef_herb_biomass_combined, Year,Reef, sum, max, min, mean, sd )
MK_reef_herb_biomass_data$REGION <- ("MK")
export(MK_reef_herb_biomass_data, "MK_herbivorous_biomass_data.csv")



MK_reef_comm_biomass_combined <- rbind(Alligator_Deep_comm_biomass_data_combined,Alligator_Shallow_comm_biomass_data_combined,Dustan_Rocks_comm_biomass_data_combined,Long_Key_comm_biomass_data_combined,Rawa_Reef_comm_biomass_data_combined,Sombrero_Deep_comm_biomass_data_combined,Sombrero_Shallow_comm_biomass_data_combined,Tennessee_Deep_comm_biomass_data_combined,Tennessee_Shallow_comm_biomass_data_combined,Thor_comm_biomass_data_combined,West_Turtle_Shoal_comm_biomass_data_combined)
MK_reef_comm_biomass_data <- arrange(MK_reef_comm_biomass_combined, Year,Reef, sum, max, min, mean, sd )
MK_reef_comm_biomass_data$REGION <- ("MK")
export(MK_reef_comm_biomass_data, "MK_commercial_biomass_data.csv")

## Herbivrous first and repeat code for commercial 

## remove max, min, mean, sd
MK_reef_herb_biomass_data$max <- NULL
MK_reef_herb_biomass_data$min <- NULL
MK_reef_herb_biomass_data$sd <- NULL
MK_reef_herb_biomass_data$REGION <- NULL
MK_reef_herb_biomass_data$mean <- NULL


MK_herb_graph <- MK_reef_herb_biomass_data[order(MK_reef_herb_biomass_data$sum),]

## sort data into 5 different bins using binr 

MK_herb_bins <- bins(MK_herb_graph$sum,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)

view(MK_herb_bins$binct)
#### MANUALLY ADD IN THE VALUES OF EACH BIN. 1-5 WILL BE ADDED TO EACH BIN SUBSET

## from binct make the value of the bins and apply number 1-5 for each bin

MK_herb_1 <- subset(MK_herb_graph, sum == 0)
MK_herb_2 <- subset(MK_herb_graph, sum >= 0.0035743943621699  & sum <  0.0172257720076149 )
MK_herb_3 <- subset(MK_herb_graph, sum >= 0.0172257720076149  & sum < 0.037302886333091 )
MK_herb_4 <- subset(MK_herb_graph, sum >= 0.037302886333091  & sum < 0.0605819972182435 )
MK_herb_5 <- subset(MK_herb_graph, sum >= 0.0605819972182435  & sum < 0.157081779454653 )


MK_herb_1$RHI_Fish <- "1"
MK_herb_2$RHI_Fish <- "2"
MK_herb_3$RHI_Fish <- "3"
MK_herb_4$RHI_Fish <- "4"
MK_herb_5$RHI_Fish <- "5"

MK_herb_RHI <- rbind(MK_herb_1,MK_herb_2,MK_herb_3,MK_herb_4,MK_herb_5)  

MK_herb_RHI$SUBREGION <- "MK"


## Commercial 

## remove max, min, mean, sd
MK_reef_comm_biomass_data$max <- NULL
MK_reef_comm_biomass_data$min <- NULL
MK_reef_comm_biomass_data$sd <- NULL
MK_reef_comm_biomass_data$REGION <- NULL
MK_reef_comm_biomass_data$mean <- NULL


MK_comm_graph <- MK_reef_comm_biomass_data[order(MK_reef_comm_biomass_data$sum),]

## sort data into 5 different bins using binr 

MK_comm_bins <- bins(MK_comm_graph$sum,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)

view(MK_comm_bins$binct)

#### MANUALLY ADD IN THE VALUES OF EACH BIN. 1-5 WILL BE ADDED TO EACH BIN SUBSET

## from binct make the value of the bins and apply number 1-5 for each bin

MK_comm_1 <- subset(MK_comm_graph, sum == 0)
MK_comm_2 <- subset(MK_comm_graph, sum >= 0.0093236502326533  & sum < 0.072877590958306 )
MK_comm_3 <- subset(MK_comm_graph, sum >= 0.072877590958306  & sum <  0.14241754363211 )
MK_comm_4 <- subset(MK_comm_graph, sum >= 0.14241754363211   & sum < 0.234013981539776 )
MK_comm_5 <- subset(MK_comm_graph, sum >= 0.234013981539776  & sum <  0.512292234546501 )


MK_comm_1$RHI_Fish <- "1"
MK_comm_2$RHI_Fish <- "2"
MK_comm_3$RHI_Fish <- "3"
MK_comm_4$RHI_Fish <- "4"
MK_comm_5$RHI_Fish <- "5"

MK_comm_RHI <- rbind(MK_comm_1,MK_comm_2,MK_comm_3,MK_comm_4,MK_comm_5)  
MK_comm_RHI$SUBREGION <- "MK"


export(MK_herb_RHI, "MK_herbivorous_RHI.csv")
export(MK_comm_RHI, "MK_commercial_RHI.csv")









#Upper Keys

setwd("C:/Users/cestes/Documents/Spring_2020/RVC_CREMP_by_REEF/UK")


# Admiral 

Admiral_1999 <- import("Admiral/data/Admiral_1999.xls")


Admiral_1999_herb <- merge(Admiral_1999, Herb, by = c("SPECIES_CD"))
Admiral_1999_herb_biomass <- summarise_at(Admiral_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_1999_herb_biomass$Year <- ('1999')
Admiral_1999_herb_biomass$Reef <- ('Admiral')


Admiral_1999_comm <- merge(Admiral_1999, Comm, by = c("SPECIES_CD"))
Admiral_1999_comm_biomass <- summarise_at(Admiral_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_1999_comm_biomass$Year <- ('1999')
Admiral_1999_comm_biomass$Reef <- ('Admiral')


Admiral_2000 <- import("Admiral/data/Admiral_2000.xls")

Admiral_2000_herb <- merge(Admiral_2000, Herb, by = c("SPECIES_CD"))
Admiral_2000_herb_biomass <- summarise_at(Admiral_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2000_herb_biomass$Year <- ('2000')
Admiral_2000_herb_biomass$Reef <- ('Admiral')


Admiral_2000_comm <- merge(Admiral_2000, Comm, by = c("SPECIES_CD"))
Admiral_2000_comm_biomass <- summarise_at(Admiral_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2000_comm_biomass$Year <- ('2000')
Admiral_2000_comm_biomass$Reef <- ('Admiral')

Admiral_2001 <- import("Admiral/data/Admiral_2001.xls")

Admiral_2001_herb <- merge(Admiral_2001, Herb, by = c("SPECIES_CD"))
Admiral_2001_herb_biomass <- summarise_at(Admiral_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2001_herb_biomass$Year <- ('2001')
Admiral_2001_herb_biomass$Reef <- ('Admiral')


Admiral_2001_comm <- merge(Admiral_2001, Comm, by = c("SPECIES_CD"))
Admiral_2001_comm_biomass <- summarise_at(Admiral_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2001_comm_biomass$Year <- ('2001')
Admiral_2001_comm_biomass$Reef <- ('Admiral')


Admiral_2002 <- import("Admiral/data/Admiral_2002.xls")

Admiral_2002_herb <- merge(Admiral_2002, Herb, by = c("SPECIES_CD"))
Admiral_2002_herb_biomass <- summarise_at(Admiral_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2002_herb_biomass$Year <- ('2002')
Admiral_2002_herb_biomass$Reef <- ('Admiral')


Admiral_2002_comm <- merge(Admiral_2002, Comm, by = c("SPECIES_CD"))
Admiral_2002_comm_biomass <- summarise_at(Admiral_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2002_comm_biomass$Year <- ('2002')
Admiral_2002_comm_biomass$Reef <- ('Admiral')


Admiral_2003 <- import("Admiral/data/Admiral_2003.xls")

Admiral_2003_herb <- merge(Admiral_2003, Herb, by = c("SPECIES_CD"))
Admiral_2003_herb_biomass <- summarise_at(Admiral_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2003_herb_biomass$Year <- ('2003')
Admiral_2003_herb_biomass$Reef <- ('Admiral')


Admiral_2003_comm <- merge(Admiral_2003, Comm, by = c("SPECIES_CD"))
Admiral_2003_comm_biomass <- summarise_at(Admiral_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2003_comm_biomass$Year <- ('2003')
Admiral_2003_comm_biomass$Reef <- ('Admiral')


Admiral_2004 <- import("Admiral/data/Admiral_2004.xls")

Admiral_2004_herb <- merge(Admiral_2004, Herb, by = c("SPECIES_CD"))
Admiral_2004_herb_biomass <- summarise_at(Admiral_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2004_herb_biomass$Year <- ('2004')
Admiral_2004_herb_biomass$Reef <- ('Admiral')


Admiral_2004_comm <- merge(Admiral_2004, Comm, by = c("SPECIES_CD"))
Admiral_2004_comm_biomass <- summarise_at(Admiral_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2004_comm_biomass$Year <- ('2004')
Admiral_2004_comm_biomass$Reef <- ('Admiral')

Admiral_2005 <- import("Admiral/data/Admiral_2005.xls")

Admiral_2005_herb <- merge(Admiral_2005, Herb, by = c("SPECIES_CD"))
Admiral_2005_herb_biomass <- summarise_at(Admiral_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2005_herb_biomass$Year <- ('2005')
Admiral_2005_herb_biomass$Reef <- ('Admiral')


Admiral_2005_comm <- merge(Admiral_2005, Comm, by = c("SPECIES_CD"))
Admiral_2005_comm_biomass <- summarise_at(Admiral_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2005_comm_biomass$Year <- ('2005')
Admiral_2005_comm_biomass$Reef <- ('Admiral')


Admiral_2006 <- import("Admiral/data/Admiral_2006.xls")

Admiral_2006_herb <- merge(Admiral_2006, Herb, by = c("SPECIES_CD"))
Admiral_2006_herb_biomass <- summarise_at(Admiral_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2006_herb_biomass$Year <- ('2006')
Admiral_2006_herb_biomass$Reef <- ('Admiral')


Admiral_2006_comm <- merge(Admiral_2006, Comm, by = c("SPECIES_CD"))
Admiral_2006_comm_biomass <- summarise_at(Admiral_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2006_comm_biomass$Year <- ('2006')
Admiral_2006_comm_biomass$Reef <- ('Admiral')

Admiral_2007 <- import("Admiral/data/Admiral_2007.xls")

Admiral_2007_herb <- merge(Admiral_2007, Herb, by = c("SPECIES_CD"))
Admiral_2007_herb_biomass <- summarise_at(Admiral_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2007_herb_biomass$Year <- ('2007')
Admiral_2007_herb_biomass$Reef <- ('Admiral')


Admiral_2007_comm <- merge(Admiral_2007, Comm, by = c("SPECIES_CD"))
Admiral_2007_comm_biomass <- summarise_at(Admiral_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2007_comm_biomass$Year <- ('2007')
Admiral_2007_comm_biomass$Reef <- ('Admiral')


Admiral_2008 <- import("Admiral/data/Admiral_2008.xls")

Admiral_2008_herb <- merge(Admiral_2008, Herb, by = c("SPECIES_CD"))
Admiral_2008_herb_biomass <- summarise_at(Admiral_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2008_herb_biomass$Year <- ('2008')
Admiral_2008_herb_biomass$Reef <- ('Admiral')


Admiral_2008_comm <- merge(Admiral_2008, Comm, by = c("SPECIES_CD"))
Admiral_2008_comm_biomass <- summarise_at(Admiral_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2008_comm_biomass$Year <- ('2008')
Admiral_2008_comm_biomass$Reef <- ('Admiral')


Admiral_2009 <- import("Admiral/data/Admiral_2009.xls")

Admiral_2009_herb <- merge(Admiral_2009, Herb, by = c("SPECIES_CD"))
Admiral_2009_herb_biomass <- summarise_at(Admiral_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2009_herb_biomass$Year <- ('2009')
Admiral_2009_herb_biomass$Reef <- ('Admiral')


Admiral_2009_comm <- merge(Admiral_2009, Comm, by = c("SPECIES_CD"))
Admiral_2009_comm_biomass <- summarise_at(Admiral_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2009_comm_biomass$Year <- ('2009')
Admiral_2009_comm_biomass$Reef <- ('Admiral')


Admiral_2010 <- import("Admiral/data/Admiral_2010.xls")

Admiral_2010_herb <- merge(Admiral_2010, Herb, by = c("SPECIES_CD"))
Admiral_2010_herb_biomass <- summarise_at(Admiral_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2010_herb_biomass$Year <- ('2010')
Admiral_2010_herb_biomass$Reef <- ('Admiral')


Admiral_2010_comm <- merge(Admiral_2010, Comm, by = c("SPECIES_CD"))
Admiral_2010_comm_biomass <- summarise_at(Admiral_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2010_comm_biomass$Year <- ('2010')
Admiral_2010_comm_biomass$Reef <- ('Admiral')

Admiral_2011 <- import("Admiral/data/Admiral_2011.xls")

Admiral_2011_herb <- merge(Admiral_2011, Herb, by = c("SPECIES_CD"))
Admiral_2011_herb_biomass <- summarise_at(Admiral_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2011_herb_biomass$Year <- ('2011')
Admiral_2011_herb_biomass$Reef <- ('Admiral')


Admiral_2011_comm <- merge(Admiral_2011, Comm, by = c("SPECIES_CD"))
Admiral_2011_comm_biomass <- summarise_at(Admiral_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2011_comm_biomass$Year <- ('2011')
Admiral_2011_comm_biomass$Reef <- ('Admiral')



Admiral_2012 <- import("Admiral/data/Admiral_2012.xls")

Admiral_2012_herb <- merge(Admiral_2012, Herb, by = c("SPECIES_CD"))
Admiral_2012_herb_biomass <- summarise_at(Admiral_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2012_herb_biomass$Year <- ('2012')
Admiral_2012_herb_biomass$Reef <- ('Admiral')


Admiral_2012_comm <- merge(Admiral_2012, Comm, by = c("SPECIES_CD"))
Admiral_2012_comm_biomass <- summarise_at(Admiral_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2012_comm_biomass$Year <- ('2012')
Admiral_2012_comm_biomass$Reef <- ('Admiral')


Admiral_2014 <- import("Admiral/data/Admiral_2014.xls")

Admiral_2014_herb <- merge(Admiral_2014, Herb, by = c("SPECIES_CD"))
Admiral_2014_herb_biomass <- summarise_at(Admiral_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2014_herb_biomass$Year <- ('2014')
Admiral_2014_herb_biomass$Reef <- ('Admiral')


Admiral_2014_comm <- merge(Admiral_2014, Comm, by = c("SPECIES_CD"))
Admiral_2014_comm_biomass <- summarise_at(Admiral_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2014_comm_biomass$Year <- ('2014')
Admiral_2014_comm_biomass$Reef <- ('Admiral')


Admiral_2016 <- import("Admiral/data/Admiral_2016.xls")

Admiral_2016_herb <- merge(Admiral_2016, Herb, by = c("SPECIES_CD"))
Admiral_2016_herb_biomass <- summarise_at(Admiral_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2016_herb_biomass$Year <- ('2016')
Admiral_2016_herb_biomass$Reef <- ('Admiral')


Admiral_2016_comm <- merge(Admiral_2016, Comm, by = c("SPECIES_CD"))
Admiral_2016_comm_biomass <- summarise_at(Admiral_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2016_comm_biomass$Year <- ('2016')
Admiral_2016_comm_biomass$Reef <- ('Admiral')


Admiral_2018 <- import("Admiral/data/Admiral_2018.xls")

Admiral_2018_herb <- merge(Admiral_2018, Herb, by = c("SPECIES_CD"))
Admiral_2018_herb_biomass <- summarise_at(Admiral_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2018_herb_biomass$Year <- ('2018')
Admiral_2018_herb_biomass$Reef <- ('Admiral')


Admiral_2018_comm <- merge(Admiral_2018, Comm, by = c("SPECIES_CD"))
Admiral_2018_comm_biomass <- summarise_at(Admiral_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Admiral_2018_comm_biomass$Year <- ('2018')
Admiral_2018_comm_biomass$Reef <- ('Admiral')



### Combine all years together for herbivorous and commercial seperately



Admiral_herb_1 <- rbind(Admiral_1999_herb_biomass,Admiral_2000_herb_biomass)
Admiral_herb_2 <- rbind(Admiral_herb_1,Admiral_2001_herb_biomass)
Admiral_herb_3 <- rbind(Admiral_herb_2,Admiral_2002_herb_biomass)
Admiral_herb_4 <- rbind(Admiral_herb_3,Admiral_2003_herb_biomass)
Admiral_herb_5 <- rbind(Admiral_herb_4,Admiral_2004_herb_biomass)
Admiral_herb_6 <- rbind(Admiral_herb_5,Admiral_2005_herb_biomass)
Admiral_herb_7 <- rbind(Admiral_herb_6,Admiral_2006_herb_biomass)
Admiral_herb_8 <- rbind(Admiral_herb_7,Admiral_2007_herb_biomass)
Admiral_herb_9 <- rbind(Admiral_herb_8,Admiral_2008_herb_biomass)
Admiral_herb_10 <- rbind(Admiral_herb_9,Admiral_2009_herb_biomass)
Admiral_herb_11<- rbind(Admiral_herb_10,Admiral_2010_herb_biomass)
Admiral_herb_12 <- rbind(Admiral_herb_11,Admiral_2011_herb_biomass)
Admiral_herb_13 <- rbind(Admiral_herb_12,Admiral_2012_herb_biomass)
Admiral_herb_14 <- rbind(Admiral_herb_13,Admiral_2014_herb_biomass)
Admiral_herb_15 <- rbind(Admiral_herb_14,Admiral_2016_herb_biomass)
Admiral_herb_biomass_data_combined <- rbind(Admiral_herb_15,Admiral_2018_herb_biomass)



Admiral_comm_1 <- rbind(Admiral_1999_comm_biomass,Admiral_2000_comm_biomass)
Admiral_comm_2 <- rbind(Admiral_comm_1,Admiral_2001_comm_biomass)
Admiral_comm_3 <- rbind(Admiral_comm_2,Admiral_2002_comm_biomass)
Admiral_comm_4 <- rbind(Admiral_comm_3,Admiral_2003_comm_biomass)
Admiral_comm_5 <- rbind(Admiral_comm_4,Admiral_2004_comm_biomass)
Admiral_comm_6 <- rbind(Admiral_comm_5,Admiral_2005_comm_biomass)
Admiral_comm_7 <- rbind(Admiral_comm_6,Admiral_2006_comm_biomass)
Admiral_comm_8 <- rbind(Admiral_comm_7,Admiral_2007_comm_biomass)
Admiral_comm_9 <- rbind(Admiral_comm_8,Admiral_2008_comm_biomass)
Admiral_comm_10 <- rbind(Admiral_comm_9,Admiral_2009_comm_biomass)
Admiral_comm_11<- rbind(Admiral_comm_10,Admiral_2010_comm_biomass)
Admiral_comm_12 <- rbind(Admiral_comm_11,Admiral_2011_comm_biomass)
Admiral_comm_13 <- rbind(Admiral_comm_12,Admiral_2012_comm_biomass)
Admiral_comm_14 <- rbind(Admiral_comm_13,Admiral_2014_comm_biomass)
Admiral_comm_15 <- rbind(Admiral_comm_14,Admiral_2016_comm_biomass)
Admiral_comm_biomass_data_combined <- rbind(Admiral_comm_15,Admiral_2018_comm_biomass)



export(Admiral_herb_biomass_data_combined, "Admiral/data/Admiral_herbivorous_biomass.csv")
export(Admiral_comm_biomass_data_combined, "Admiral/data/Admiral_commercial_biomass.csv")



#Burr Fish


Burr_Fish_1999 <- import("Burr_Fish/data/Burr_Fish_1999.xls")


Burr_Fish_1999_herb <- merge(Burr_Fish_1999, Herb, by = c("SPECIES_CD"))
Burr_Fish_1999_herb_biomass <- summarise_at(Burr_Fish_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_1999_herb_biomass$Year <- ('1999')
Burr_Fish_1999_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_1999_comm <- merge(Burr_Fish_1999, Comm, by = c("SPECIES_CD"))
Burr_Fish_1999_comm_biomass <- summarise_at(Burr_Fish_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_1999_comm_biomass$Year <- ('1999')
Burr_Fish_1999_comm_biomass$Reef <- ('Burr Fish')


Burr_Fish_2000 <- import("Burr_Fish/data/Burr_Fish_2000.xls")

Burr_Fish_2000_herb <- merge(Burr_Fish_2000, Herb, by = c("SPECIES_CD"))
Burr_Fish_2000_herb_biomass <- summarise_at(Burr_Fish_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2000_herb_biomass$Year <- ('2000')
Burr_Fish_2000_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_2000_comm <- merge(Burr_Fish_2000, Comm, by = c("SPECIES_CD"))
Burr_Fish_2000_comm_biomass <- summarise_at(Burr_Fish_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2000_comm_biomass$Year <- ('2000')
Burr_Fish_2000_comm_biomass$Reef <- ('Burr Fish')

Burr_Fish_2001 <- import("Burr_Fish/data/Burr_Fish_2001.xls")

Burr_Fish_2001_herb <- merge(Burr_Fish_2001, Herb, by = c("SPECIES_CD"))
Burr_Fish_2001_herb_biomass <- summarise_at(Burr_Fish_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2001_herb_biomass$Year <- ('2001')
Burr_Fish_2001_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_2001_comm <- merge(Burr_Fish_2001, Comm, by = c("SPECIES_CD"))
Burr_Fish_2001_comm_biomass <- summarise_at(Burr_Fish_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2001_comm_biomass$Year <- ('2001')
Burr_Fish_2001_comm_biomass$Reef <- ('Burr Fish')


Burr_Fish_2002 <- import("Burr_Fish/data/Burr_Fish_2002.xls")

Burr_Fish_2002_herb <- merge(Burr_Fish_2002, Herb, by = c("SPECIES_CD"))
Burr_Fish_2002_herb_biomass <- summarise_at(Burr_Fish_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2002_herb_biomass$Year <- ('2002')
Burr_Fish_2002_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_2002_comm <- merge(Burr_Fish_2002, Comm, by = c("SPECIES_CD"))
Burr_Fish_2002_comm_biomass <- summarise_at(Burr_Fish_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2002_comm_biomass$Year <- ('2002')
Burr_Fish_2002_comm_biomass$Reef <- ('Burr Fish')


Burr_Fish_2003 <- import("Burr_Fish/data/Burr_Fish_2003.xls")

Burr_Fish_2003_herb <- merge(Burr_Fish_2003, Herb, by = c("SPECIES_CD"))
Burr_Fish_2003_herb_biomass <- summarise_at(Burr_Fish_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2003_herb_biomass$Year <- ('2003')
Burr_Fish_2003_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_2003_comm <- merge(Burr_Fish_2003, Comm, by = c("SPECIES_CD"))
Burr_Fish_2003_comm_biomass <- summarise_at(Burr_Fish_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2003_comm_biomass$Year <- ('2003')
Burr_Fish_2003_comm_biomass$Reef <- ('Burr Fish')


Burr_Fish_2004 <- import("Burr_Fish/data/Burr_Fish_2004.xls")

Burr_Fish_2004_herb <- merge(Burr_Fish_2004, Herb, by = c("SPECIES_CD"))
Burr_Fish_2004_herb_biomass <- summarise_at(Burr_Fish_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2004_herb_biomass$Year <- ('2004')
Burr_Fish_2004_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_2004_comm <- merge(Burr_Fish_2004, Comm, by = c("SPECIES_CD"))
Burr_Fish_2004_comm_biomass <- summarise_at(Burr_Fish_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2004_comm_biomass$Year <- ('2004')
Burr_Fish_2004_comm_biomass$Reef <- ('Burr Fish')

Burr_Fish_2005 <- import("Burr_Fish/data/Burr_Fish_2005.xls")

Burr_Fish_2005_herb <- merge(Burr_Fish_2005, Herb, by = c("SPECIES_CD"))
Burr_Fish_2005_herb_biomass <- summarise_at(Burr_Fish_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2005_herb_biomass$Year <- ('2005')
Burr_Fish_2005_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_2005_comm <- merge(Burr_Fish_2005, Comm, by = c("SPECIES_CD"))
Burr_Fish_2005_comm_biomass <- summarise_at(Burr_Fish_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2005_comm_biomass$Year <- ('2005')
Burr_Fish_2005_comm_biomass$Reef <- ('Burr Fish')


Burr_Fish_2006 <- import("Burr_Fish/data/Burr_Fish_2006.xls")

Burr_Fish_2006_herb <- merge(Burr_Fish_2006, Herb, by = c("SPECIES_CD"))
Burr_Fish_2006_herb_biomass <- summarise_at(Burr_Fish_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2006_herb_biomass$Year <- ('2006')
Burr_Fish_2006_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_2006_comm <- merge(Burr_Fish_2006, Comm, by = c("SPECIES_CD"))
Burr_Fish_2006_comm_biomass <- summarise_at(Burr_Fish_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2006_comm_biomass$Year <- ('2006')
Burr_Fish_2006_comm_biomass$Reef <- ('Burr Fish')

Burr_Fish_2007 <- import("Burr_Fish/data/Burr_Fish_2007.xls")

Burr_Fish_2007_herb <- merge(Burr_Fish_2007, Herb, by = c("SPECIES_CD"))
Burr_Fish_2007_herb_biomass <- summarise_at(Burr_Fish_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2007_herb_biomass$Year <- ('2007')
Burr_Fish_2007_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_2007_comm <- merge(Burr_Fish_2007, Comm, by = c("SPECIES_CD"))
Burr_Fish_2007_comm_biomass <- summarise_at(Burr_Fish_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2007_comm_biomass$Year <- ('2007')
Burr_Fish_2007_comm_biomass$Reef <- ('Burr Fish')


Burr_Fish_2008 <- import("Burr_Fish/data/Burr_Fish_2008.xls")

Burr_Fish_2008_herb <- merge(Burr_Fish_2008, Herb, by = c("SPECIES_CD"))
Burr_Fish_2008_herb_biomass <- summarise_at(Burr_Fish_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2008_herb_biomass$Year <- ('2008')
Burr_Fish_2008_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_2008_comm <- merge(Burr_Fish_2008, Comm, by = c("SPECIES_CD"))
Burr_Fish_2008_comm_biomass <- summarise_at(Burr_Fish_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2008_comm_biomass$Year <- ('2008')
Burr_Fish_2008_comm_biomass$Reef <- ('Burr Fish')


Burr_Fish_2009 <- import("Burr_Fish/data/Burr_Fish_2009.xls")

Burr_Fish_2009_herb <- merge(Burr_Fish_2009, Herb, by = c("SPECIES_CD"))
Burr_Fish_2009_herb_biomass <- summarise_at(Burr_Fish_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2009_herb_biomass$Year <- ('2009')
Burr_Fish_2009_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_2009_comm <- merge(Burr_Fish_2009, Comm, by = c("SPECIES_CD"))
Burr_Fish_2009_comm_biomass <- summarise_at(Burr_Fish_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2009_comm_biomass$Year <- ('2009')
Burr_Fish_2009_comm_biomass$Reef <- ('Burr Fish')


Burr_Fish_2010 <- import("Burr_Fish/data/Burr_Fish_2010.xls")

Burr_Fish_2010_herb <- merge(Burr_Fish_2010, Herb, by = c("SPECIES_CD"))
Burr_Fish_2010_herb_biomass <- summarise_at(Burr_Fish_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2010_herb_biomass$Year <- ('2010')
Burr_Fish_2010_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_2010_comm <- merge(Burr_Fish_2010, Comm, by = c("SPECIES_CD"))
Burr_Fish_2010_comm_biomass <- summarise_at(Burr_Fish_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2010_comm_biomass$Year <- ('2010')
Burr_Fish_2010_comm_biomass$Reef <- ('Burr Fish')

Burr_Fish_2011 <- import("Burr_Fish/data/Burr_Fish_2011.xls")

Burr_Fish_2011_herb <- merge(Burr_Fish_2011, Herb, by = c("SPECIES_CD"))
Burr_Fish_2011_herb_biomass <- summarise_at(Burr_Fish_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2011_herb_biomass$Year <- ('2011')
Burr_Fish_2011_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_2011_comm <- merge(Burr_Fish_2011, Comm, by = c("SPECIES_CD"))
Burr_Fish_2011_comm_biomass <- summarise_at(Burr_Fish_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2011_comm_biomass$Year <- ('2011')
Burr_Fish_2011_comm_biomass$Reef <- ('Burr Fish')



Burr_Fish_2012 <- import("Burr_Fish/data/Burr_Fish_2012.xls")

Burr_Fish_2012_herb <- merge(Burr_Fish_2012, Herb, by = c("SPECIES_CD"))
Burr_Fish_2012_herb_biomass <- summarise_at(Burr_Fish_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2012_herb_biomass$Year <- ('2012')
Burr_Fish_2012_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_2012_comm <- merge(Burr_Fish_2012, Comm, by = c("SPECIES_CD"))
Burr_Fish_2012_comm_biomass <- summarise_at(Burr_Fish_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2012_comm_biomass$Year <- ('2012')
Burr_Fish_2012_comm_biomass$Reef <- ('Burr Fish')


Burr_Fish_2014 <- import("Burr_Fish/data/Burr_Fish_2014.xls")

Burr_Fish_2014_herb <- merge(Burr_Fish_2014, Herb, by = c("SPECIES_CD"))
Burr_Fish_2014_herb_biomass <- summarise_at(Burr_Fish_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2014_herb_biomass$Year <- ('2014')
Burr_Fish_2014_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_2014_comm <- merge(Burr_Fish_2014, Comm, by = c("SPECIES_CD"))
Burr_Fish_2014_comm_biomass <- summarise_at(Burr_Fish_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2014_comm_biomass$Year <- ('2014')
Burr_Fish_2014_comm_biomass$Reef <- ('Burr Fish')


Burr_Fish_2016 <- import("Burr_Fish/data/Burr_Fish_2016.xls")

Burr_Fish_2016_herb <- merge(Burr_Fish_2016, Herb, by = c("SPECIES_CD"))
Burr_Fish_2016_herb_biomass <- summarise_at(Burr_Fish_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2016_herb_biomass$Year <- ('2016')
Burr_Fish_2016_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_2016_comm <- merge(Burr_Fish_2016, Comm, by = c("SPECIES_CD"))
Burr_Fish_2016_comm_biomass <- summarise_at(Burr_Fish_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2016_comm_biomass$Year <- ('2016')
Burr_Fish_2016_comm_biomass$Reef <- ('Burr Fish')


Burr_Fish_2018 <- import("Burr_Fish/data/Burr_Fish_2018.xls")

Burr_Fish_2018_herb <- merge(Burr_Fish_2018, Herb, by = c("SPECIES_CD"))
Burr_Fish_2018_herb_biomass <- summarise_at(Burr_Fish_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2018_herb_biomass$Year <- ('2018')
Burr_Fish_2018_herb_biomass$Reef <- ('Burr Fish')


Burr_Fish_2018_comm <- merge(Burr_Fish_2018, Comm, by = c("SPECIES_CD"))
Burr_Fish_2018_comm_biomass <- summarise_at(Burr_Fish_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Burr_Fish_2018_comm_biomass$Year <- ('2018')
Burr_Fish_2018_comm_biomass$Reef <- ('Burr Fish')



### Combine all years together for herbivorous and commercial seperately



Burr_Fish_herb_1 <- rbind(Burr_Fish_1999_herb_biomass,Burr_Fish_2000_herb_biomass)
Burr_Fish_herb_2 <- rbind(Burr_Fish_herb_1,Burr_Fish_2001_herb_biomass)
Burr_Fish_herb_3 <- rbind(Burr_Fish_herb_2,Burr_Fish_2002_herb_biomass)
Burr_Fish_herb_4 <- rbind(Burr_Fish_herb_3,Burr_Fish_2003_herb_biomass)
Burr_Fish_herb_5 <- rbind(Burr_Fish_herb_4,Burr_Fish_2004_herb_biomass)
Burr_Fish_herb_6 <- rbind(Burr_Fish_herb_5,Burr_Fish_2005_herb_biomass)
Burr_Fish_herb_7 <- rbind(Burr_Fish_herb_6,Burr_Fish_2006_herb_biomass)
Burr_Fish_herb_8 <- rbind(Burr_Fish_herb_7,Burr_Fish_2007_herb_biomass)
Burr_Fish_herb_9 <- rbind(Burr_Fish_herb_8,Burr_Fish_2008_herb_biomass)
Burr_Fish_herb_10 <- rbind(Burr_Fish_herb_9,Burr_Fish_2009_herb_biomass)
Burr_Fish_herb_11<- rbind(Burr_Fish_herb_10,Burr_Fish_2010_herb_biomass)
Burr_Fish_herb_12 <- rbind(Burr_Fish_herb_11,Burr_Fish_2011_herb_biomass)
Burr_Fish_herb_13 <- rbind(Burr_Fish_herb_12,Burr_Fish_2012_herb_biomass)
Burr_Fish_herb_14 <- rbind(Burr_Fish_herb_13,Burr_Fish_2014_herb_biomass)
Burr_Fish_herb_15 <- rbind(Burr_Fish_herb_14,Burr_Fish_2016_herb_biomass)
Burr_Fish_herb_biomass_data_combined <- rbind(Burr_Fish_herb_15,Burr_Fish_2018_herb_biomass)



Burr_Fish_comm_1 <- rbind(Burr_Fish_1999_comm_biomass,Burr_Fish_2000_comm_biomass)
Burr_Fish_comm_2 <- rbind(Burr_Fish_comm_1,Burr_Fish_2001_comm_biomass)
Burr_Fish_comm_3 <- rbind(Burr_Fish_comm_2,Burr_Fish_2002_comm_biomass)
Burr_Fish_comm_4 <- rbind(Burr_Fish_comm_3,Burr_Fish_2003_comm_biomass)
Burr_Fish_comm_5 <- rbind(Burr_Fish_comm_4,Burr_Fish_2004_comm_biomass)
Burr_Fish_comm_6 <- rbind(Burr_Fish_comm_5,Burr_Fish_2005_comm_biomass)
Burr_Fish_comm_7 <- rbind(Burr_Fish_comm_6,Burr_Fish_2006_comm_biomass)
Burr_Fish_comm_8 <- rbind(Burr_Fish_comm_7,Burr_Fish_2007_comm_biomass)
Burr_Fish_comm_9 <- rbind(Burr_Fish_comm_8,Burr_Fish_2008_comm_biomass)
Burr_Fish_comm_10 <- rbind(Burr_Fish_comm_9,Burr_Fish_2009_comm_biomass)
Burr_Fish_comm_11<- rbind(Burr_Fish_comm_10,Burr_Fish_2010_comm_biomass)
Burr_Fish_comm_12 <- rbind(Burr_Fish_comm_11,Burr_Fish_2011_comm_biomass)
Burr_Fish_comm_13 <- rbind(Burr_Fish_comm_12,Burr_Fish_2012_comm_biomass)
Burr_Fish_comm_14 <- rbind(Burr_Fish_comm_13,Burr_Fish_2014_comm_biomass)
Burr_Fish_comm_15 <- rbind(Burr_Fish_comm_14,Burr_Fish_2016_comm_biomass)
Burr_Fish_comm_biomass_data_combined <- rbind(Burr_Fish_comm_15,Burr_Fish_2018_comm_biomass)



export(Burr_Fish_herb_biomass_data_combined, "Burr_Fish/data/Burr_Fish_herbivorous_biomass.csv")
export(Burr_Fish_comm_biomass_data_combined, "Burr_Fish/data/Burr_Fish_commercial_biomass.csv")



#Carysfort Deep


Carysfort_Deep_1999 <- import("Carysfort_Deep/data/Carysfort_Deep_1999.xls")


Carysfort_Deep_1999_herb <- merge(Carysfort_Deep_1999, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_1999_herb_biomass <- summarise_at(Carysfort_Deep_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_1999_herb_biomass$Year <- ('1999')
Carysfort_Deep_1999_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_1999_comm <- merge(Carysfort_Deep_1999, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_1999_comm_biomass <- summarise_at(Carysfort_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_1999_comm_biomass$Year <- ('1999')
Carysfort_Deep_1999_comm_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2000 <- import("Carysfort_Deep/data/Carysfort_Deep_2000.xls")

Carysfort_Deep_2000_herb <- merge(Carysfort_Deep_2000, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2000_herb_biomass <- summarise_at(Carysfort_Deep_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2000_herb_biomass$Year <- ('2000')
Carysfort_Deep_2000_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2000_comm <- merge(Carysfort_Deep_2000, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2000_comm_biomass <- summarise_at(Carysfort_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2000_comm_biomass$Year <- ('2000')
Carysfort_Deep_2000_comm_biomass$Reef <- ('Carysfort Deep')

Carysfort_Deep_2001 <- import("Carysfort_Deep/data/Carysfort_Deep_2001.xls")

Carysfort_Deep_2001_herb <- merge(Carysfort_Deep_2001, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2001_herb_biomass <- summarise_at(Carysfort_Deep_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2001_herb_biomass$Year <- ('2001')
Carysfort_Deep_2001_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2001_comm <- merge(Carysfort_Deep_2001, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2001_comm_biomass <- summarise_at(Carysfort_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2001_comm_biomass$Year <- ('2001')
Carysfort_Deep_2001_comm_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2002 <- import("Carysfort_Deep/data/Carysfort_Deep_2002.xls")

Carysfort_Deep_2002_herb <- merge(Carysfort_Deep_2002, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2002_herb_biomass <- summarise_at(Carysfort_Deep_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2002_herb_biomass$Year <- ('2002')
Carysfort_Deep_2002_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2002_comm <- merge(Carysfort_Deep_2002, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2002_comm_biomass <- summarise_at(Carysfort_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2002_comm_biomass$Year <- ('2002')
Carysfort_Deep_2002_comm_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2003 <- import("Carysfort_Deep/data/Carysfort_Deep_2003.xls")

Carysfort_Deep_2003_herb <- merge(Carysfort_Deep_2003, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2003_herb_biomass <- summarise_at(Carysfort_Deep_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2003_herb_biomass$Year <- ('2003')
Carysfort_Deep_2003_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2003_comm <- merge(Carysfort_Deep_2003, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2003_comm_biomass <- summarise_at(Carysfort_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2003_comm_biomass$Year <- ('2003')
Carysfort_Deep_2003_comm_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2004 <- import("Carysfort_Deep/data/Carysfort_Deep_2004.xls")

Carysfort_Deep_2004_herb <- merge(Carysfort_Deep_2004, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2004_herb_biomass <- summarise_at(Carysfort_Deep_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2004_herb_biomass$Year <- ('2004')
Carysfort_Deep_2004_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2004_comm <- merge(Carysfort_Deep_2004, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2004_comm_biomass <- summarise_at(Carysfort_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2004_comm_biomass$Year <- ('2004')
Carysfort_Deep_2004_comm_biomass$Reef <- ('Carysfort Deep')

Carysfort_Deep_2005 <- import("Carysfort_Deep/data/Carysfort_Deep_2005.xls")

Carysfort_Deep_2005_herb <- merge(Carysfort_Deep_2005, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2005_herb_biomass <- summarise_at(Carysfort_Deep_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2005_herb_biomass$Year <- ('2005')
Carysfort_Deep_2005_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2005_comm <- merge(Carysfort_Deep_2005, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2005_comm_biomass <- summarise_at(Carysfort_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2005_comm_biomass$Year <- ('2005')
Carysfort_Deep_2005_comm_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2006 <- import("Carysfort_Deep/data/Carysfort_Deep_2006.xls")

Carysfort_Deep_2006_herb <- merge(Carysfort_Deep_2006, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2006_herb_biomass <- summarise_at(Carysfort_Deep_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2006_herb_biomass$Year <- ('2006')
Carysfort_Deep_2006_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2006_comm <- merge(Carysfort_Deep_2006, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2006_comm_biomass <- summarise_at(Carysfort_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2006_comm_biomass$Year <- ('2006')
Carysfort_Deep_2006_comm_biomass$Reef <- ('Carysfort Deep')

Carysfort_Deep_2007 <- import("Carysfort_Deep/data/Carysfort_Deep_2007.xls")

Carysfort_Deep_2007_herb <- merge(Carysfort_Deep_2007, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2007_herb_biomass <- summarise_at(Carysfort_Deep_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2007_herb_biomass$Year <- ('2007')
Carysfort_Deep_2007_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2007_comm <- merge(Carysfort_Deep_2007, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2007_comm_biomass <- summarise_at(Carysfort_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2007_comm_biomass$Year <- ('2007')
Carysfort_Deep_2007_comm_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2008 <- import("Carysfort_Deep/data/Carysfort_Deep_2008.xls")

Carysfort_Deep_2008_herb <- merge(Carysfort_Deep_2008, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2008_herb_biomass <- summarise_at(Carysfort_Deep_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2008_herb_biomass$Year <- ('2008')
Carysfort_Deep_2008_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2008_comm <- merge(Carysfort_Deep_2008, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2008_comm_biomass <- summarise_at(Carysfort_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2008_comm_biomass$Year <- ('2008')
Carysfort_Deep_2008_comm_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2009 <- import("Carysfort_Deep/data/Carysfort_Deep_2009.xls")

Carysfort_Deep_2009_herb <- merge(Carysfort_Deep_2009, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2009_herb_biomass <- summarise_at(Carysfort_Deep_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2009_herb_biomass$Year <- ('2009')
Carysfort_Deep_2009_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2009_comm <- merge(Carysfort_Deep_2009, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2009_comm_biomass <- summarise_at(Carysfort_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2009_comm_biomass$Year <- ('2009')
Carysfort_Deep_2009_comm_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2010 <- import("Carysfort_Deep/data/Carysfort_Deep_2010.xls")

Carysfort_Deep_2010_herb <- merge(Carysfort_Deep_2010, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2010_herb_biomass <- summarise_at(Carysfort_Deep_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2010_herb_biomass$Year <- ('2010')
Carysfort_Deep_2010_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2010_comm <- merge(Carysfort_Deep_2010, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2010_comm_biomass <- summarise_at(Carysfort_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2010_comm_biomass$Year <- ('2010')
Carysfort_Deep_2010_comm_biomass$Reef <- ('Carysfort Deep')

Carysfort_Deep_2011 <- import("Carysfort_Deep/data/Carysfort_Deep_2011.xls")

Carysfort_Deep_2011_herb <- merge(Carysfort_Deep_2011, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2011_herb_biomass <- summarise_at(Carysfort_Deep_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2011_herb_biomass$Year <- ('2011')
Carysfort_Deep_2011_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2011_comm <- merge(Carysfort_Deep_2011, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2011_comm_biomass <- summarise_at(Carysfort_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2011_comm_biomass$Year <- ('2011')
Carysfort_Deep_2011_comm_biomass$Reef <- ('Carysfort Deep')



Carysfort_Deep_2012 <- import("Carysfort_Deep/data/Carysfort_Deep_2012.xls")

Carysfort_Deep_2012_herb <- merge(Carysfort_Deep_2012, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2012_herb_biomass <- summarise_at(Carysfort_Deep_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2012_herb_biomass$Year <- ('2012')
Carysfort_Deep_2012_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2012_comm <- merge(Carysfort_Deep_2012, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2012_comm_biomass <- summarise_at(Carysfort_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2012_comm_biomass$Year <- ('2012')
Carysfort_Deep_2012_comm_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2014 <- import("Carysfort_Deep/data/Carysfort_Deep_2014.xls")

Carysfort_Deep_2014_herb <- merge(Carysfort_Deep_2014, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2014_herb_biomass <- summarise_at(Carysfort_Deep_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2014_herb_biomass$Year <- ('2014')
Carysfort_Deep_2014_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2014_comm <- merge(Carysfort_Deep_2014, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2014_comm_biomass <- summarise_at(Carysfort_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2014_comm_biomass$Year <- ('2014')
Carysfort_Deep_2014_comm_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2016 <- import("Carysfort_Deep/data/Carysfort_Deep_2016.xls")

Carysfort_Deep_2016_herb <- merge(Carysfort_Deep_2016, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2016_herb_biomass <- summarise_at(Carysfort_Deep_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2016_herb_biomass$Year <- ('2016')
Carysfort_Deep_2016_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2016_comm <- merge(Carysfort_Deep_2016, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2016_comm_biomass <- summarise_at(Carysfort_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2016_comm_biomass$Year <- ('2016')
Carysfort_Deep_2016_comm_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2018 <- import("Carysfort_Deep/data/Carysfort_Deep_2018.xls")

Carysfort_Deep_2018_herb <- merge(Carysfort_Deep_2018, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2018_herb_biomass <- summarise_at(Carysfort_Deep_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2018_herb_biomass$Year <- ('2018')
Carysfort_Deep_2018_herb_biomass$Reef <- ('Carysfort Deep')


Carysfort_Deep_2018_comm <- merge(Carysfort_Deep_2018, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2018_comm_biomass <- summarise_at(Carysfort_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Deep_2018_comm_biomass$Year <- ('2018')
Carysfort_Deep_2018_comm_biomass$Reef <- ('Carysfort Deep')



### Combine all years together for herbivorous and commercial seperately



Carysfort_Deep_herb_1 <- rbind(Carysfort_Deep_1999_herb_biomass,Carysfort_Deep_2000_herb_biomass)
Carysfort_Deep_herb_2 <- rbind(Carysfort_Deep_herb_1,Carysfort_Deep_2001_herb_biomass)
Carysfort_Deep_herb_3 <- rbind(Carysfort_Deep_herb_2,Carysfort_Deep_2002_herb_biomass)
Carysfort_Deep_herb_4 <- rbind(Carysfort_Deep_herb_3,Carysfort_Deep_2003_herb_biomass)
Carysfort_Deep_herb_5 <- rbind(Carysfort_Deep_herb_4,Carysfort_Deep_2004_herb_biomass)
Carysfort_Deep_herb_6 <- rbind(Carysfort_Deep_herb_5,Carysfort_Deep_2005_herb_biomass)
Carysfort_Deep_herb_7 <- rbind(Carysfort_Deep_herb_6,Carysfort_Deep_2006_herb_biomass)
Carysfort_Deep_herb_8 <- rbind(Carysfort_Deep_herb_7,Carysfort_Deep_2007_herb_biomass)
Carysfort_Deep_herb_9 <- rbind(Carysfort_Deep_herb_8,Carysfort_Deep_2008_herb_biomass)
Carysfort_Deep_herb_10 <- rbind(Carysfort_Deep_herb_9,Carysfort_Deep_2009_herb_biomass)
Carysfort_Deep_herb_11<- rbind(Carysfort_Deep_herb_10,Carysfort_Deep_2010_herb_biomass)
Carysfort_Deep_herb_12 <- rbind(Carysfort_Deep_herb_11,Carysfort_Deep_2011_herb_biomass)
Carysfort_Deep_herb_13 <- rbind(Carysfort_Deep_herb_12,Carysfort_Deep_2012_herb_biomass)
Carysfort_Deep_herb_14 <- rbind(Carysfort_Deep_herb_13,Carysfort_Deep_2014_herb_biomass)
Carysfort_Deep_herb_15 <- rbind(Carysfort_Deep_herb_14,Carysfort_Deep_2016_herb_biomass)
Carysfort_Deep_herb_biomass_data_combined <- rbind(Carysfort_Deep_herb_15,Carysfort_Deep_2018_herb_biomass)



Carysfort_Deep_comm_1 <- rbind(Carysfort_Deep_1999_comm_biomass,Carysfort_Deep_2000_comm_biomass)
Carysfort_Deep_comm_2 <- rbind(Carysfort_Deep_comm_1,Carysfort_Deep_2001_comm_biomass)
Carysfort_Deep_comm_3 <- rbind(Carysfort_Deep_comm_2,Carysfort_Deep_2002_comm_biomass)
Carysfort_Deep_comm_4 <- rbind(Carysfort_Deep_comm_3,Carysfort_Deep_2003_comm_biomass)
Carysfort_Deep_comm_5 <- rbind(Carysfort_Deep_comm_4,Carysfort_Deep_2004_comm_biomass)
Carysfort_Deep_comm_6 <- rbind(Carysfort_Deep_comm_5,Carysfort_Deep_2005_comm_biomass)
Carysfort_Deep_comm_7 <- rbind(Carysfort_Deep_comm_6,Carysfort_Deep_2006_comm_biomass)
Carysfort_Deep_comm_8 <- rbind(Carysfort_Deep_comm_7,Carysfort_Deep_2007_comm_biomass)
Carysfort_Deep_comm_9 <- rbind(Carysfort_Deep_comm_8,Carysfort_Deep_2008_comm_biomass)
Carysfort_Deep_comm_10 <- rbind(Carysfort_Deep_comm_9,Carysfort_Deep_2009_comm_biomass)
Carysfort_Deep_comm_11<- rbind(Carysfort_Deep_comm_10,Carysfort_Deep_2010_comm_biomass)
Carysfort_Deep_comm_12 <- rbind(Carysfort_Deep_comm_11,Carysfort_Deep_2011_comm_biomass)
Carysfort_Deep_comm_13 <- rbind(Carysfort_Deep_comm_12,Carysfort_Deep_2012_comm_biomass)
Carysfort_Deep_comm_14 <- rbind(Carysfort_Deep_comm_13,Carysfort_Deep_2014_comm_biomass)
Carysfort_Deep_comm_15 <- rbind(Carysfort_Deep_comm_14,Carysfort_Deep_2016_comm_biomass)
Carysfort_Deep_comm_biomass_data_combined <- rbind(Carysfort_Deep_comm_15,Carysfort_Deep_2018_comm_biomass)



export(Carysfort_Deep_herb_biomass_data_combined, "Carysfort_Deep/data/Carysfort_Deep_herbivorous_biomass.csv")
export(Carysfort_Deep_comm_biomass_data_combined, "Carysfort_Deep/data/Carysfort_Deep_commercial_biomass.csv")




#Carysfort Shallow


Carysfort_Shallow_1999 <- import("Carysfort_Shallow/data/Carysfort_Shallow_1999.xls")


Carysfort_Shallow_1999_herb <- merge(Carysfort_Shallow_1999, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_1999_herb_biomass <- summarise_at(Carysfort_Shallow_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_1999_herb_biomass$Year <- ('1999')
Carysfort_Shallow_1999_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_1999_comm <- merge(Carysfort_Shallow_1999, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_1999_comm_biomass <- summarise_at(Carysfort_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_1999_comm_biomass$Year <- ('1999')
Carysfort_Shallow_1999_comm_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2000 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2000.xls")

Carysfort_Shallow_2000_herb <- merge(Carysfort_Shallow_2000, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2000_herb_biomass <- summarise_at(Carysfort_Shallow_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2000_herb_biomass$Year <- ('2000')
Carysfort_Shallow_2000_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2000_comm <- merge(Carysfort_Shallow_2000, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2000_comm_biomass <- summarise_at(Carysfort_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2000_comm_biomass$Year <- ('2000')
Carysfort_Shallow_2000_comm_biomass$Reef <- ('Carysfort Shallow')

Carysfort_Shallow_2001 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2001.xls")

Carysfort_Shallow_2001_herb <- merge(Carysfort_Shallow_2001, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2001_herb_biomass <- summarise_at(Carysfort_Shallow_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2001_herb_biomass$Year <- ('2001')
Carysfort_Shallow_2001_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2001_comm <- merge(Carysfort_Shallow_2001, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2001_comm_biomass <- summarise_at(Carysfort_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2001_comm_biomass$Year <- ('2001')
Carysfort_Shallow_2001_comm_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2002 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2002.xls")

Carysfort_Shallow_2002_herb <- merge(Carysfort_Shallow_2002, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2002_herb_biomass <- summarise_at(Carysfort_Shallow_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2002_herb_biomass$Year <- ('2002')
Carysfort_Shallow_2002_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2002_comm <- merge(Carysfort_Shallow_2002, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2002_comm_biomass <- summarise_at(Carysfort_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2002_comm_biomass$Year <- ('2002')
Carysfort_Shallow_2002_comm_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2003 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2003.xls")

Carysfort_Shallow_2003_herb <- merge(Carysfort_Shallow_2003, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2003_herb_biomass <- summarise_at(Carysfort_Shallow_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2003_herb_biomass$Year <- ('2003')
Carysfort_Shallow_2003_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2003_comm <- merge(Carysfort_Shallow_2003, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2003_comm_biomass <- summarise_at(Carysfort_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2003_comm_biomass$Year <- ('2003')
Carysfort_Shallow_2003_comm_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2004 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2004.xls")

Carysfort_Shallow_2004_herb <- merge(Carysfort_Shallow_2004, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2004_herb_biomass <- summarise_at(Carysfort_Shallow_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2004_herb_biomass$Year <- ('2004')
Carysfort_Shallow_2004_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2004_comm <- merge(Carysfort_Shallow_2004, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2004_comm_biomass <- summarise_at(Carysfort_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2004_comm_biomass$Year <- ('2004')
Carysfort_Shallow_2004_comm_biomass$Reef <- ('Carysfort Shallow')

Carysfort_Shallow_2005 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2005.xls")

Carysfort_Shallow_2005_herb <- merge(Carysfort_Shallow_2005, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2005_herb_biomass <- summarise_at(Carysfort_Shallow_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2005_herb_biomass$Year <- ('2005')
Carysfort_Shallow_2005_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2005_comm <- merge(Carysfort_Shallow_2005, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2005_comm_biomass <- summarise_at(Carysfort_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2005_comm_biomass$Year <- ('2005')
Carysfort_Shallow_2005_comm_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2006 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2006.xls")

Carysfort_Shallow_2006_herb <- merge(Carysfort_Shallow_2006, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2006_herb_biomass <- summarise_at(Carysfort_Shallow_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2006_herb_biomass$Year <- ('2006')
Carysfort_Shallow_2006_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2006_comm <- merge(Carysfort_Shallow_2006, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2006_comm_biomass <- summarise_at(Carysfort_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2006_comm_biomass$Year <- ('2006')
Carysfort_Shallow_2006_comm_biomass$Reef <- ('Carysfort Shallow')

Carysfort_Shallow_2007 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2007.xls")

Carysfort_Shallow_2007_herb <- merge(Carysfort_Shallow_2007, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2007_herb_biomass <- summarise_at(Carysfort_Shallow_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2007_herb_biomass$Year <- ('2007')
Carysfort_Shallow_2007_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2007_comm <- merge(Carysfort_Shallow_2007, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2007_comm_biomass <- summarise_at(Carysfort_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2007_comm_biomass$Year <- ('2007')
Carysfort_Shallow_2007_comm_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2008 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2008.xls")

Carysfort_Shallow_2008_herb <- merge(Carysfort_Shallow_2008, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2008_herb_biomass <- summarise_at(Carysfort_Shallow_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2008_herb_biomass$Year <- ('2008')
Carysfort_Shallow_2008_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2008_comm <- merge(Carysfort_Shallow_2008, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2008_comm_biomass <- summarise_at(Carysfort_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2008_comm_biomass$Year <- ('2008')
Carysfort_Shallow_2008_comm_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2009 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2009.xls")

Carysfort_Shallow_2009_herb <- merge(Carysfort_Shallow_2009, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2009_herb_biomass <- summarise_at(Carysfort_Shallow_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2009_herb_biomass$Year <- ('2009')
Carysfort_Shallow_2009_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2009_comm <- merge(Carysfort_Shallow_2009, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2009_comm_biomass <- summarise_at(Carysfort_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2009_comm_biomass$Year <- ('2009')
Carysfort_Shallow_2009_comm_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2010 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2010.xls")

Carysfort_Shallow_2010_herb <- merge(Carysfort_Shallow_2010, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2010_herb_biomass <- summarise_at(Carysfort_Shallow_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2010_herb_biomass$Year <- ('2010')
Carysfort_Shallow_2010_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2010_comm <- merge(Carysfort_Shallow_2010, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2010_comm_biomass <- summarise_at(Carysfort_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2010_comm_biomass$Year <- ('2010')
Carysfort_Shallow_2010_comm_biomass$Reef <- ('Carysfort Shallow')

Carysfort_Shallow_2011 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2011.xls")

Carysfort_Shallow_2011_herb <- merge(Carysfort_Shallow_2011, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2011_herb_biomass <- summarise_at(Carysfort_Shallow_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2011_herb_biomass$Year <- ('2011')
Carysfort_Shallow_2011_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2011_comm <- merge(Carysfort_Shallow_2011, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2011_comm_biomass <- summarise_at(Carysfort_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2011_comm_biomass$Year <- ('2011')
Carysfort_Shallow_2011_comm_biomass$Reef <- ('Carysfort Shallow')



Carysfort_Shallow_2012 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2012.xls")

Carysfort_Shallow_2012_herb <- merge(Carysfort_Shallow_2012, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2012_herb_biomass <- summarise_at(Carysfort_Shallow_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2012_herb_biomass$Year <- ('2012')
Carysfort_Shallow_2012_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2012_comm <- merge(Carysfort_Shallow_2012, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2012_comm_biomass <- summarise_at(Carysfort_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2012_comm_biomass$Year <- ('2012')
Carysfort_Shallow_2012_comm_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2014 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2014.xls")

Carysfort_Shallow_2014_herb <- merge(Carysfort_Shallow_2014, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2014_herb_biomass <- summarise_at(Carysfort_Shallow_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2014_herb_biomass$Year <- ('2014')
Carysfort_Shallow_2014_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2014_comm <- merge(Carysfort_Shallow_2014, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2014_comm_biomass <- summarise_at(Carysfort_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2014_comm_biomass$Year <- ('2014')
Carysfort_Shallow_2014_comm_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2016 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2016.xls")

Carysfort_Shallow_2016_herb <- merge(Carysfort_Shallow_2016, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2016_herb_biomass <- summarise_at(Carysfort_Shallow_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2016_herb_biomass$Year <- ('2016')
Carysfort_Shallow_2016_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2016_comm <- merge(Carysfort_Shallow_2016, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2016_comm_biomass <- summarise_at(Carysfort_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2016_comm_biomass$Year <- ('2016')
Carysfort_Shallow_2016_comm_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2018 <- import("Carysfort_Shallow/data/Carysfort_Shallow_2018.xls")

Carysfort_Shallow_2018_herb <- merge(Carysfort_Shallow_2018, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2018_herb_biomass <- summarise_at(Carysfort_Shallow_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2018_herb_biomass$Year <- ('2018')
Carysfort_Shallow_2018_herb_biomass$Reef <- ('Carysfort Shallow')


Carysfort_Shallow_2018_comm <- merge(Carysfort_Shallow_2018, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2018_comm_biomass <- summarise_at(Carysfort_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Carysfort_Shallow_2018_comm_biomass$Year <- ('2018')
Carysfort_Shallow_2018_comm_biomass$Reef <- ('Carysfort Shallow')



### Combine all years together for herbivorous and commercial seperately



Carysfort_Shallow_herb_1 <- rbind(Carysfort_Shallow_1999_herb_biomass,Carysfort_Shallow_2000_herb_biomass)
Carysfort_Shallow_herb_2 <- rbind(Carysfort_Shallow_herb_1,Carysfort_Shallow_2001_herb_biomass)
Carysfort_Shallow_herb_3 <- rbind(Carysfort_Shallow_herb_2,Carysfort_Shallow_2002_herb_biomass)
Carysfort_Shallow_herb_4 <- rbind(Carysfort_Shallow_herb_3,Carysfort_Shallow_2003_herb_biomass)
Carysfort_Shallow_herb_5 <- rbind(Carysfort_Shallow_herb_4,Carysfort_Shallow_2004_herb_biomass)
Carysfort_Shallow_herb_6 <- rbind(Carysfort_Shallow_herb_5,Carysfort_Shallow_2005_herb_biomass)
Carysfort_Shallow_herb_7 <- rbind(Carysfort_Shallow_herb_6,Carysfort_Shallow_2006_herb_biomass)
Carysfort_Shallow_herb_8 <- rbind(Carysfort_Shallow_herb_7,Carysfort_Shallow_2007_herb_biomass)
Carysfort_Shallow_herb_9 <- rbind(Carysfort_Shallow_herb_8,Carysfort_Shallow_2008_herb_biomass)
Carysfort_Shallow_herb_10 <- rbind(Carysfort_Shallow_herb_9,Carysfort_Shallow_2009_herb_biomass)
Carysfort_Shallow_herb_11<- rbind(Carysfort_Shallow_herb_10,Carysfort_Shallow_2010_herb_biomass)
Carysfort_Shallow_herb_12 <- rbind(Carysfort_Shallow_herb_11,Carysfort_Shallow_2011_herb_biomass)
Carysfort_Shallow_herb_13 <- rbind(Carysfort_Shallow_herb_12,Carysfort_Shallow_2012_herb_biomass)
Carysfort_Shallow_herb_14 <- rbind(Carysfort_Shallow_herb_13,Carysfort_Shallow_2014_herb_biomass)
Carysfort_Shallow_herb_15 <- rbind(Carysfort_Shallow_herb_14,Carysfort_Shallow_2016_herb_biomass)
Carysfort_Shallow_herb_biomass_data_combined <- rbind(Carysfort_Shallow_herb_15,Carysfort_Shallow_2018_herb_biomass)



Carysfort_Shallow_comm_1 <- rbind(Carysfort_Shallow_1999_comm_biomass,Carysfort_Shallow_2000_comm_biomass)
Carysfort_Shallow_comm_2 <- rbind(Carysfort_Shallow_comm_1,Carysfort_Shallow_2001_comm_biomass)
Carysfort_Shallow_comm_3 <- rbind(Carysfort_Shallow_comm_2,Carysfort_Shallow_2002_comm_biomass)
Carysfort_Shallow_comm_4 <- rbind(Carysfort_Shallow_comm_3,Carysfort_Shallow_2003_comm_biomass)
Carysfort_Shallow_comm_5 <- rbind(Carysfort_Shallow_comm_4,Carysfort_Shallow_2004_comm_biomass)
Carysfort_Shallow_comm_6 <- rbind(Carysfort_Shallow_comm_5,Carysfort_Shallow_2005_comm_biomass)
Carysfort_Shallow_comm_7 <- rbind(Carysfort_Shallow_comm_6,Carysfort_Shallow_2006_comm_biomass)
Carysfort_Shallow_comm_8 <- rbind(Carysfort_Shallow_comm_7,Carysfort_Shallow_2007_comm_biomass)
Carysfort_Shallow_comm_9 <- rbind(Carysfort_Shallow_comm_8,Carysfort_Shallow_2008_comm_biomass)
Carysfort_Shallow_comm_10 <- rbind(Carysfort_Shallow_comm_9,Carysfort_Shallow_2009_comm_biomass)
Carysfort_Shallow_comm_11<- rbind(Carysfort_Shallow_comm_10,Carysfort_Shallow_2010_comm_biomass)
Carysfort_Shallow_comm_12 <- rbind(Carysfort_Shallow_comm_11,Carysfort_Shallow_2011_comm_biomass)
Carysfort_Shallow_comm_13 <- rbind(Carysfort_Shallow_comm_12,Carysfort_Shallow_2012_comm_biomass)
Carysfort_Shallow_comm_14 <- rbind(Carysfort_Shallow_comm_13,Carysfort_Shallow_2014_comm_biomass)
Carysfort_Shallow_comm_15 <- rbind(Carysfort_Shallow_comm_14,Carysfort_Shallow_2016_comm_biomass)
Carysfort_Shallow_comm_biomass_data_combined <- rbind(Carysfort_Shallow_comm_15,Carysfort_Shallow_2018_comm_biomass)



export(Carysfort_Shallow_herb_biomass_data_combined, "Carysfort_Shallow/data/Carysfort_Shallow_herbivorous_biomass.csv")
export(Carysfort_Shallow_comm_biomass_data_combined, "Carysfort_Shallow/data/Carysfort_Shallow_commercial_biomass.csv")



#Conch Deep


Conch_Deep_1999 <- import("Conch_Deep/data/Conch_Deep_1999.xls")


Conch_Deep_1999_herb <- merge(Conch_Deep_1999, Herb, by = c("SPECIES_CD"))
Conch_Deep_1999_herb_biomass <- summarise_at(Conch_Deep_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_1999_herb_biomass$Year <- ('1999')
Conch_Deep_1999_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_1999_comm <- merge(Conch_Deep_1999, Comm, by = c("SPECIES_CD"))
Conch_Deep_1999_comm_biomass <- summarise_at(Conch_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_1999_comm_biomass$Year <- ('1999')
Conch_Deep_1999_comm_biomass$Reef <- ('Conch Deep')


Conch_Deep_2000 <- import("Conch_Deep/data/Conch_Deep_2000.xls")

Conch_Deep_2000_herb <- merge(Conch_Deep_2000, Herb, by = c("SPECIES_CD"))
Conch_Deep_2000_herb_biomass <- summarise_at(Conch_Deep_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2000_herb_biomass$Year <- ('2000')
Conch_Deep_2000_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_2000_comm <- merge(Conch_Deep_2000, Comm, by = c("SPECIES_CD"))
Conch_Deep_2000_comm_biomass <- summarise_at(Conch_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2000_comm_biomass$Year <- ('2000')
Conch_Deep_2000_comm_biomass$Reef <- ('Conch Deep')

Conch_Deep_2001 <- import("Conch_Deep/data/Conch_Deep_2001.xls")

Conch_Deep_2001_herb <- merge(Conch_Deep_2001, Herb, by = c("SPECIES_CD"))
Conch_Deep_2001_herb_biomass <- summarise_at(Conch_Deep_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2001_herb_biomass$Year <- ('2001')
Conch_Deep_2001_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_2001_comm <- merge(Conch_Deep_2001, Comm, by = c("SPECIES_CD"))
Conch_Deep_2001_comm_biomass <- summarise_at(Conch_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2001_comm_biomass$Year <- ('2001')
Conch_Deep_2001_comm_biomass$Reef <- ('Conch Deep')


Conch_Deep_2002 <- import("Conch_Deep/data/Conch_Deep_2002.xls")

Conch_Deep_2002_herb <- merge(Conch_Deep_2002, Herb, by = c("SPECIES_CD"))
Conch_Deep_2002_herb_biomass <- summarise_at(Conch_Deep_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2002_herb_biomass$Year <- ('2002')
Conch_Deep_2002_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_2002_comm <- merge(Conch_Deep_2002, Comm, by = c("SPECIES_CD"))
Conch_Deep_2002_comm_biomass <- summarise_at(Conch_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2002_comm_biomass$Year <- ('2002')
Conch_Deep_2002_comm_biomass$Reef <- ('Conch Deep')


Conch_Deep_2003 <- import("Conch_Deep/data/Conch_Deep_2003.xls")

Conch_Deep_2003_herb <- merge(Conch_Deep_2003, Herb, by = c("SPECIES_CD"))
Conch_Deep_2003_herb_biomass <- summarise_at(Conch_Deep_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2003_herb_biomass$Year <- ('2003')
Conch_Deep_2003_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_2003_comm <- merge(Conch_Deep_2003, Comm, by = c("SPECIES_CD"))
Conch_Deep_2003_comm_biomass <- summarise_at(Conch_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2003_comm_biomass$Year <- ('2003')
Conch_Deep_2003_comm_biomass$Reef <- ('Conch Deep')


Conch_Deep_2004 <- import("Conch_Deep/data/Conch_Deep_2004.xls")

Conch_Deep_2004_herb <- merge(Conch_Deep_2004, Herb, by = c("SPECIES_CD"))
Conch_Deep_2004_herb_biomass <- summarise_at(Conch_Deep_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2004_herb_biomass$Year <- ('2004')
Conch_Deep_2004_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_2004_comm <- merge(Conch_Deep_2004, Comm, by = c("SPECIES_CD"))
Conch_Deep_2004_comm_biomass <- summarise_at(Conch_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2004_comm_biomass$Year <- ('2004')
Conch_Deep_2004_comm_biomass$Reef <- ('Conch Deep')

Conch_Deep_2005 <- import("Conch_Deep/data/Conch_Deep_2005.xls")

Conch_Deep_2005_herb <- merge(Conch_Deep_2005, Herb, by = c("SPECIES_CD"))
Conch_Deep_2005_herb_biomass <- summarise_at(Conch_Deep_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2005_herb_biomass$Year <- ('2005')
Conch_Deep_2005_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_2005_comm <- merge(Conch_Deep_2005, Comm, by = c("SPECIES_CD"))
Conch_Deep_2005_comm_biomass <- summarise_at(Conch_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2005_comm_biomass$Year <- ('2005')
Conch_Deep_2005_comm_biomass$Reef <- ('Conch Deep')


Conch_Deep_2006 <- import("Conch_Deep/data/Conch_Deep_2006.xls")

Conch_Deep_2006_herb <- merge(Conch_Deep_2006, Herb, by = c("SPECIES_CD"))
Conch_Deep_2006_herb_biomass <- summarise_at(Conch_Deep_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2006_herb_biomass$Year <- ('2006')
Conch_Deep_2006_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_2006_comm <- merge(Conch_Deep_2006, Comm, by = c("SPECIES_CD"))
Conch_Deep_2006_comm_biomass <- summarise_at(Conch_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2006_comm_biomass$Year <- ('2006')
Conch_Deep_2006_comm_biomass$Reef <- ('Conch Deep')

Conch_Deep_2007 <- import("Conch_Deep/data/Conch_Deep_2007.xls")

Conch_Deep_2007_herb <- merge(Conch_Deep_2007, Herb, by = c("SPECIES_CD"))
Conch_Deep_2007_herb_biomass <- summarise_at(Conch_Deep_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2007_herb_biomass$Year <- ('2007')
Conch_Deep_2007_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_2007_comm <- merge(Conch_Deep_2007, Comm, by = c("SPECIES_CD"))
Conch_Deep_2007_comm_biomass <- summarise_at(Conch_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2007_comm_biomass$Year <- ('2007')
Conch_Deep_2007_comm_biomass$Reef <- ('Conch Deep')


Conch_Deep_2008 <- import("Conch_Deep/data/Conch_Deep_2008.xls")

Conch_Deep_2008_herb <- merge(Conch_Deep_2008, Herb, by = c("SPECIES_CD"))
Conch_Deep_2008_herb_biomass <- summarise_at(Conch_Deep_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2008_herb_biomass$Year <- ('2008')
Conch_Deep_2008_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_2008_comm <- merge(Conch_Deep_2008, Comm, by = c("SPECIES_CD"))
Conch_Deep_2008_comm_biomass <- summarise_at(Conch_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2008_comm_biomass$Year <- ('2008')
Conch_Deep_2008_comm_biomass$Reef <- ('Conch Deep')


Conch_Deep_2009 <- import("Conch_Deep/data/Conch_Deep_2009.xls")

Conch_Deep_2009_herb <- merge(Conch_Deep_2009, Herb, by = c("SPECIES_CD"))
Conch_Deep_2009_herb_biomass <- summarise_at(Conch_Deep_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2009_herb_biomass$Year <- ('2009')
Conch_Deep_2009_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_2009_comm <- merge(Conch_Deep_2009, Comm, by = c("SPECIES_CD"))
Conch_Deep_2009_comm_biomass <- summarise_at(Conch_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2009_comm_biomass$Year <- ('2009')
Conch_Deep_2009_comm_biomass$Reef <- ('Conch Deep')


Conch_Deep_2010 <- import("Conch_Deep/data/Conch_Deep_2010.xls")

Conch_Deep_2010_herb <- merge(Conch_Deep_2010, Herb, by = c("SPECIES_CD"))
Conch_Deep_2010_herb_biomass <- summarise_at(Conch_Deep_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2010_herb_biomass$Year <- ('2010')
Conch_Deep_2010_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_2010_comm <- merge(Conch_Deep_2010, Comm, by = c("SPECIES_CD"))
Conch_Deep_2010_comm_biomass <- summarise_at(Conch_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2010_comm_biomass$Year <- ('2010')
Conch_Deep_2010_comm_biomass$Reef <- ('Conch Deep')

Conch_Deep_2011 <- import("Conch_Deep/data/Conch_Deep_2011.xls")

Conch_Deep_2011_herb <- merge(Conch_Deep_2011, Herb, by = c("SPECIES_CD"))
Conch_Deep_2011_herb_biomass <- summarise_at(Conch_Deep_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2011_herb_biomass$Year <- ('2011')
Conch_Deep_2011_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_2011_comm <- merge(Conch_Deep_2011, Comm, by = c("SPECIES_CD"))
Conch_Deep_2011_comm_biomass <- summarise_at(Conch_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2011_comm_biomass$Year <- ('2011')
Conch_Deep_2011_comm_biomass$Reef <- ('Conch Deep')



Conch_Deep_2012 <- import("Conch_Deep/data/Conch_Deep_2012.xls")

Conch_Deep_2012_herb <- merge(Conch_Deep_2012, Herb, by = c("SPECIES_CD"))
Conch_Deep_2012_herb_biomass <- summarise_at(Conch_Deep_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2012_herb_biomass$Year <- ('2012')
Conch_Deep_2012_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_2012_comm <- merge(Conch_Deep_2012, Comm, by = c("SPECIES_CD"))
Conch_Deep_2012_comm_biomass <- summarise_at(Conch_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2012_comm_biomass$Year <- ('2012')
Conch_Deep_2012_comm_biomass$Reef <- ('Conch Deep')


Conch_Deep_2014 <- import("Conch_Deep/data/Conch_Deep_2014.xls")

Conch_Deep_2014_herb <- merge(Conch_Deep_2014, Herb, by = c("SPECIES_CD"))
Conch_Deep_2014_herb_biomass <- summarise_at(Conch_Deep_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2014_herb_biomass$Year <- ('2014')
Conch_Deep_2014_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_2014_comm <- merge(Conch_Deep_2014, Comm, by = c("SPECIES_CD"))
Conch_Deep_2014_comm_biomass <- summarise_at(Conch_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2014_comm_biomass$Year <- ('2014')
Conch_Deep_2014_comm_biomass$Reef <- ('Conch Deep')


Conch_Deep_2016 <- import("Conch_Deep/data/Conch_Deep_2016.xls")

Conch_Deep_2016_herb <- merge(Conch_Deep_2016, Herb, by = c("SPECIES_CD"))
Conch_Deep_2016_herb_biomass <- summarise_at(Conch_Deep_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2016_herb_biomass$Year <- ('2016')
Conch_Deep_2016_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_2016_comm <- merge(Conch_Deep_2016, Comm, by = c("SPECIES_CD"))
Conch_Deep_2016_comm_biomass <- summarise_at(Conch_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2016_comm_biomass$Year <- ('2016')
Conch_Deep_2016_comm_biomass$Reef <- ('Conch Deep')


Conch_Deep_2018 <- import("Conch_Deep/data/Conch_Deep_2018.xls")

Conch_Deep_2018_herb <- merge(Conch_Deep_2018, Herb, by = c("SPECIES_CD"))
Conch_Deep_2018_herb_biomass <- summarise_at(Conch_Deep_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2018_herb_biomass$Year <- ('2018')
Conch_Deep_2018_herb_biomass$Reef <- ('Conch Deep')


Conch_Deep_2018_comm <- merge(Conch_Deep_2018, Comm, by = c("SPECIES_CD"))
Conch_Deep_2018_comm_biomass <- summarise_at(Conch_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Deep_2018_comm_biomass$Year <- ('2018')
Conch_Deep_2018_comm_biomass$Reef <- ('Conch Deep')



### Combine all years together for herbivorous and commercial seperately



Conch_Deep_herb_1 <- rbind(Conch_Deep_1999_herb_biomass,Conch_Deep_2000_herb_biomass)
Conch_Deep_herb_2 <- rbind(Conch_Deep_herb_1,Conch_Deep_2001_herb_biomass)
Conch_Deep_herb_3 <- rbind(Conch_Deep_herb_2,Conch_Deep_2002_herb_biomass)
Conch_Deep_herb_4 <- rbind(Conch_Deep_herb_3,Conch_Deep_2003_herb_biomass)
Conch_Deep_herb_5 <- rbind(Conch_Deep_herb_4,Conch_Deep_2004_herb_biomass)
Conch_Deep_herb_6 <- rbind(Conch_Deep_herb_5,Conch_Deep_2005_herb_biomass)
Conch_Deep_herb_7 <- rbind(Conch_Deep_herb_6,Conch_Deep_2006_herb_biomass)
Conch_Deep_herb_8 <- rbind(Conch_Deep_herb_7,Conch_Deep_2007_herb_biomass)
Conch_Deep_herb_9 <- rbind(Conch_Deep_herb_8,Conch_Deep_2008_herb_biomass)
Conch_Deep_herb_10 <- rbind(Conch_Deep_herb_9,Conch_Deep_2009_herb_biomass)
Conch_Deep_herb_11<- rbind(Conch_Deep_herb_10,Conch_Deep_2010_herb_biomass)
Conch_Deep_herb_12 <- rbind(Conch_Deep_herb_11,Conch_Deep_2011_herb_biomass)
Conch_Deep_herb_13 <- rbind(Conch_Deep_herb_12,Conch_Deep_2012_herb_biomass)
Conch_Deep_herb_14 <- rbind(Conch_Deep_herb_13,Conch_Deep_2014_herb_biomass)
Conch_Deep_herb_15 <- rbind(Conch_Deep_herb_14,Conch_Deep_2016_herb_biomass)
Conch_Deep_herb_biomass_data_combined <- rbind(Conch_Deep_herb_15,Conch_Deep_2018_herb_biomass)



Conch_Deep_comm_1 <- rbind(Conch_Deep_1999_comm_biomass,Conch_Deep_2000_comm_biomass)
Conch_Deep_comm_2 <- rbind(Conch_Deep_comm_1,Conch_Deep_2001_comm_biomass)
Conch_Deep_comm_3 <- rbind(Conch_Deep_comm_2,Conch_Deep_2002_comm_biomass)
Conch_Deep_comm_4 <- rbind(Conch_Deep_comm_3,Conch_Deep_2003_comm_biomass)
Conch_Deep_comm_5 <- rbind(Conch_Deep_comm_4,Conch_Deep_2004_comm_biomass)
Conch_Deep_comm_6 <- rbind(Conch_Deep_comm_5,Conch_Deep_2005_comm_biomass)
Conch_Deep_comm_7 <- rbind(Conch_Deep_comm_6,Conch_Deep_2006_comm_biomass)
Conch_Deep_comm_8 <- rbind(Conch_Deep_comm_7,Conch_Deep_2007_comm_biomass)
Conch_Deep_comm_9 <- rbind(Conch_Deep_comm_8,Conch_Deep_2008_comm_biomass)
Conch_Deep_comm_10 <- rbind(Conch_Deep_comm_9,Conch_Deep_2009_comm_biomass)
Conch_Deep_comm_11<- rbind(Conch_Deep_comm_10,Conch_Deep_2010_comm_biomass)
Conch_Deep_comm_12 <- rbind(Conch_Deep_comm_11,Conch_Deep_2011_comm_biomass)
Conch_Deep_comm_13 <- rbind(Conch_Deep_comm_12,Conch_Deep_2012_comm_biomass)
Conch_Deep_comm_14 <- rbind(Conch_Deep_comm_13,Conch_Deep_2014_comm_biomass)
Conch_Deep_comm_15 <- rbind(Conch_Deep_comm_14,Conch_Deep_2016_comm_biomass)
Conch_Deep_comm_biomass_data_combined <- rbind(Conch_Deep_comm_15,Conch_Deep_2018_comm_biomass)



export(Conch_Deep_herb_biomass_data_combined, "Conch_Deep/data/Conch_Deep_herbivorous_biomass.csv")
export(Conch_Deep_comm_biomass_data_combined, "Conch_Deep/data/Conch_Deep_commercial_biomass.csv")



#Conch Shallow


Conch_Shallow_1999 <- import("Conch_Shallow/data/Conch_Shallow_1999.xls")


Conch_Shallow_1999_herb <- merge(Conch_Shallow_1999, Herb, by = c("SPECIES_CD"))
Conch_Shallow_1999_herb_biomass <- summarise_at(Conch_Shallow_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_1999_herb_biomass$Year <- ('1999')
Conch_Shallow_1999_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_1999_comm <- merge(Conch_Shallow_1999, Comm, by = c("SPECIES_CD"))
Conch_Shallow_1999_comm_biomass <- summarise_at(Conch_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_1999_comm_biomass$Year <- ('1999')
Conch_Shallow_1999_comm_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2000 <- import("Conch_Shallow/data/Conch_Shallow_2000.xls")

Conch_Shallow_2000_herb <- merge(Conch_Shallow_2000, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2000_herb_biomass <- summarise_at(Conch_Shallow_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2000_herb_biomass$Year <- ('2000')
Conch_Shallow_2000_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2000_comm <- merge(Conch_Shallow_2000, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2000_comm_biomass <- summarise_at(Conch_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2000_comm_biomass$Year <- ('2000')
Conch_Shallow_2000_comm_biomass$Reef <- ('Conch Shallow')

Conch_Shallow_2001 <- import("Conch_Shallow/data/Conch_Shallow_2001.xls")

Conch_Shallow_2001_herb <- merge(Conch_Shallow_2001, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2001_herb_biomass <- summarise_at(Conch_Shallow_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2001_herb_biomass$Year <- ('2001')
Conch_Shallow_2001_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2001_comm <- merge(Conch_Shallow_2001, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2001_comm_biomass <- summarise_at(Conch_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2001_comm_biomass$Year <- ('2001')
Conch_Shallow_2001_comm_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2002 <- import("Conch_Shallow/data/Conch_Shallow_2002.xls")

Conch_Shallow_2002_herb <- merge(Conch_Shallow_2002, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2002_herb_biomass <- summarise_at(Conch_Shallow_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2002_herb_biomass$Year <- ('2002')
Conch_Shallow_2002_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2002_comm <- merge(Conch_Shallow_2002, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2002_comm_biomass <- summarise_at(Conch_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2002_comm_biomass$Year <- ('2002')
Conch_Shallow_2002_comm_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2003 <- import("Conch_Shallow/data/Conch_Shallow_2003.xls")

Conch_Shallow_2003_herb <- merge(Conch_Shallow_2003, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2003_herb_biomass <- summarise_at(Conch_Shallow_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2003_herb_biomass$Year <- ('2003')
Conch_Shallow_2003_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2003_comm <- merge(Conch_Shallow_2003, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2003_comm_biomass <- summarise_at(Conch_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2003_comm_biomass$Year <- ('2003')
Conch_Shallow_2003_comm_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2004 <- import("Conch_Shallow/data/Conch_Shallow_2004.xls")

Conch_Shallow_2004_herb <- merge(Conch_Shallow_2004, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2004_herb_biomass <- summarise_at(Conch_Shallow_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2004_herb_biomass$Year <- ('2004')
Conch_Shallow_2004_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2004_comm <- merge(Conch_Shallow_2004, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2004_comm_biomass <- summarise_at(Conch_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2004_comm_biomass$Year <- ('2004')
Conch_Shallow_2004_comm_biomass$Reef <- ('Conch Shallow')

Conch_Shallow_2005 <- import("Conch_Shallow/data/Conch_Shallow_2005.xls")

Conch_Shallow_2005_herb <- merge(Conch_Shallow_2005, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2005_herb_biomass <- summarise_at(Conch_Shallow_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2005_herb_biomass$Year <- ('2005')
Conch_Shallow_2005_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2005_comm <- merge(Conch_Shallow_2005, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2005_comm_biomass <- summarise_at(Conch_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2005_comm_biomass$Year <- ('2005')
Conch_Shallow_2005_comm_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2006 <- import("Conch_Shallow/data/Conch_Shallow_2006.xls")

Conch_Shallow_2006_herb <- merge(Conch_Shallow_2006, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2006_herb_biomass <- summarise_at(Conch_Shallow_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2006_herb_biomass$Year <- ('2006')
Conch_Shallow_2006_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2006_comm <- merge(Conch_Shallow_2006, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2006_comm_biomass <- summarise_at(Conch_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2006_comm_biomass$Year <- ('2006')
Conch_Shallow_2006_comm_biomass$Reef <- ('Conch Shallow')

Conch_Shallow_2007 <- import("Conch_Shallow/data/Conch_Shallow_2007.xls")

Conch_Shallow_2007_herb <- merge(Conch_Shallow_2007, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2007_herb_biomass <- summarise_at(Conch_Shallow_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2007_herb_biomass$Year <- ('2007')
Conch_Shallow_2007_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2007_comm <- merge(Conch_Shallow_2007, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2007_comm_biomass <- summarise_at(Conch_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2007_comm_biomass$Year <- ('2007')
Conch_Shallow_2007_comm_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2008 <- import("Conch_Shallow/data/Conch_Shallow_2008.xls")

Conch_Shallow_2008_herb <- merge(Conch_Shallow_2008, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2008_herb_biomass <- summarise_at(Conch_Shallow_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2008_herb_biomass$Year <- ('2008')
Conch_Shallow_2008_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2008_comm <- merge(Conch_Shallow_2008, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2008_comm_biomass <- summarise_at(Conch_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2008_comm_biomass$Year <- ('2008')
Conch_Shallow_2008_comm_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2009 <- import("Conch_Shallow/data/Conch_Shallow_2009.xls")

Conch_Shallow_2009_herb <- merge(Conch_Shallow_2009, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2009_herb_biomass <- summarise_at(Conch_Shallow_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2009_herb_biomass$Year <- ('2009')
Conch_Shallow_2009_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2009_comm <- merge(Conch_Shallow_2009, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2009_comm_biomass <- summarise_at(Conch_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2009_comm_biomass$Year <- ('2009')
Conch_Shallow_2009_comm_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2010 <- import("Conch_Shallow/data/Conch_Shallow_2010.xls")

Conch_Shallow_2010_herb <- merge(Conch_Shallow_2010, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2010_herb_biomass <- summarise_at(Conch_Shallow_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2010_herb_biomass$Year <- ('2010')
Conch_Shallow_2010_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2010_comm <- merge(Conch_Shallow_2010, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2010_comm_biomass <- summarise_at(Conch_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2010_comm_biomass$Year <- ('2010')
Conch_Shallow_2010_comm_biomass$Reef <- ('Conch Shallow')

Conch_Shallow_2011 <- import("Conch_Shallow/data/Conch_Shallow_2011.xls")

Conch_Shallow_2011_herb <- merge(Conch_Shallow_2011, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2011_herb_biomass <- summarise_at(Conch_Shallow_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2011_herb_biomass$Year <- ('2011')
Conch_Shallow_2011_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2011_comm <- merge(Conch_Shallow_2011, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2011_comm_biomass <- summarise_at(Conch_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2011_comm_biomass$Year <- ('2011')
Conch_Shallow_2011_comm_biomass$Reef <- ('Conch Shallow')



Conch_Shallow_2012 <- import("Conch_Shallow/data/Conch_Shallow_2012.xls")

Conch_Shallow_2012_herb <- merge(Conch_Shallow_2012, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2012_herb_biomass <- summarise_at(Conch_Shallow_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2012_herb_biomass$Year <- ('2012')
Conch_Shallow_2012_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2012_comm <- merge(Conch_Shallow_2012, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2012_comm_biomass <- summarise_at(Conch_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2012_comm_biomass$Year <- ('2012')
Conch_Shallow_2012_comm_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2014 <- import("Conch_Shallow/data/Conch_Shallow_2014.xls")

Conch_Shallow_2014_herb <- merge(Conch_Shallow_2014, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2014_herb_biomass <- summarise_at(Conch_Shallow_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2014_herb_biomass$Year <- ('2014')
Conch_Shallow_2014_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2014_comm <- merge(Conch_Shallow_2014, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2014_comm_biomass <- summarise_at(Conch_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2014_comm_biomass$Year <- ('2014')
Conch_Shallow_2014_comm_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2016 <- import("Conch_Shallow/data/Conch_Shallow_2016.xls")

Conch_Shallow_2016_herb <- merge(Conch_Shallow_2016, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2016_herb_biomass <- summarise_at(Conch_Shallow_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2016_herb_biomass$Year <- ('2016')
Conch_Shallow_2016_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2016_comm <- merge(Conch_Shallow_2016, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2016_comm_biomass <- summarise_at(Conch_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2016_comm_biomass$Year <- ('2016')
Conch_Shallow_2016_comm_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2018 <- import("Conch_Shallow/data/Conch_Shallow_2018.xls")

Conch_Shallow_2018_herb <- merge(Conch_Shallow_2018, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2018_herb_biomass <- summarise_at(Conch_Shallow_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2018_herb_biomass$Year <- ('2018')
Conch_Shallow_2018_herb_biomass$Reef <- ('Conch Shallow')


Conch_Shallow_2018_comm <- merge(Conch_Shallow_2018, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2018_comm_biomass <- summarise_at(Conch_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Conch_Shallow_2018_comm_biomass$Year <- ('2018')
Conch_Shallow_2018_comm_biomass$Reef <- ('Conch Shallow')



### Combine all years together for herbivorous and commercial seperately



Conch_Shallow_herb_1 <- rbind(Conch_Shallow_1999_herb_biomass,Conch_Shallow_2000_herb_biomass)
Conch_Shallow_herb_2 <- rbind(Conch_Shallow_herb_1,Conch_Shallow_2001_herb_biomass)
Conch_Shallow_herb_3 <- rbind(Conch_Shallow_herb_2,Conch_Shallow_2002_herb_biomass)
Conch_Shallow_herb_4 <- rbind(Conch_Shallow_herb_3,Conch_Shallow_2003_herb_biomass)
Conch_Shallow_herb_5 <- rbind(Conch_Shallow_herb_4,Conch_Shallow_2004_herb_biomass)
Conch_Shallow_herb_6 <- rbind(Conch_Shallow_herb_5,Conch_Shallow_2005_herb_biomass)
Conch_Shallow_herb_7 <- rbind(Conch_Shallow_herb_6,Conch_Shallow_2006_herb_biomass)
Conch_Shallow_herb_8 <- rbind(Conch_Shallow_herb_7,Conch_Shallow_2007_herb_biomass)
Conch_Shallow_herb_9 <- rbind(Conch_Shallow_herb_8,Conch_Shallow_2008_herb_biomass)
Conch_Shallow_herb_10 <- rbind(Conch_Shallow_herb_9,Conch_Shallow_2009_herb_biomass)
Conch_Shallow_herb_11<- rbind(Conch_Shallow_herb_10,Conch_Shallow_2010_herb_biomass)
Conch_Shallow_herb_12 <- rbind(Conch_Shallow_herb_11,Conch_Shallow_2011_herb_biomass)
Conch_Shallow_herb_13 <- rbind(Conch_Shallow_herb_12,Conch_Shallow_2012_herb_biomass)
Conch_Shallow_herb_14 <- rbind(Conch_Shallow_herb_13,Conch_Shallow_2014_herb_biomass)
Conch_Shallow_herb_15 <- rbind(Conch_Shallow_herb_14,Conch_Shallow_2016_herb_biomass)
Conch_Shallow_herb_biomass_data_combined <- rbind(Conch_Shallow_herb_15,Conch_Shallow_2018_herb_biomass)



Conch_Shallow_comm_1 <- rbind(Conch_Shallow_1999_comm_biomass,Conch_Shallow_2000_comm_biomass)
Conch_Shallow_comm_2 <- rbind(Conch_Shallow_comm_1,Conch_Shallow_2001_comm_biomass)
Conch_Shallow_comm_3 <- rbind(Conch_Shallow_comm_2,Conch_Shallow_2002_comm_biomass)
Conch_Shallow_comm_4 <- rbind(Conch_Shallow_comm_3,Conch_Shallow_2003_comm_biomass)
Conch_Shallow_comm_5 <- rbind(Conch_Shallow_comm_4,Conch_Shallow_2004_comm_biomass)
Conch_Shallow_comm_6 <- rbind(Conch_Shallow_comm_5,Conch_Shallow_2005_comm_biomass)
Conch_Shallow_comm_7 <- rbind(Conch_Shallow_comm_6,Conch_Shallow_2006_comm_biomass)
Conch_Shallow_comm_8 <- rbind(Conch_Shallow_comm_7,Conch_Shallow_2007_comm_biomass)
Conch_Shallow_comm_9 <- rbind(Conch_Shallow_comm_8,Conch_Shallow_2008_comm_biomass)
Conch_Shallow_comm_10 <- rbind(Conch_Shallow_comm_9,Conch_Shallow_2009_comm_biomass)
Conch_Shallow_comm_11<- rbind(Conch_Shallow_comm_10,Conch_Shallow_2010_comm_biomass)
Conch_Shallow_comm_12 <- rbind(Conch_Shallow_comm_11,Conch_Shallow_2011_comm_biomass)
Conch_Shallow_comm_13 <- rbind(Conch_Shallow_comm_12,Conch_Shallow_2012_comm_biomass)
Conch_Shallow_comm_14 <- rbind(Conch_Shallow_comm_13,Conch_Shallow_2014_comm_biomass)
Conch_Shallow_comm_15 <- rbind(Conch_Shallow_comm_14,Conch_Shallow_2016_comm_biomass)
Conch_Shallow_comm_biomass_data_combined <- rbind(Conch_Shallow_comm_15,Conch_Shallow_2018_comm_biomass)



export(Conch_Shallow_herb_biomass_data_combined, "Conch_Shallow/data/Conch_Shallow_herbivorous_biomass.csv")
export(Conch_Shallow_comm_biomass_data_combined, "Conch_Shallow/data/Conch_Shallow_commercial_biomass.csv")



#Grecian Rocks


Grecian_Rocks_1999 <- import("Grecian_Rocks/data/Grecian_Rocks_1999.xls")


Grecian_Rocks_1999_herb <- merge(Grecian_Rocks_1999, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_1999_herb_biomass <- summarise_at(Grecian_Rocks_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_1999_herb_biomass$Year <- ('1999')
Grecian_Rocks_1999_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_1999_comm <- merge(Grecian_Rocks_1999, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_1999_comm_biomass <- summarise_at(Grecian_Rocks_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_1999_comm_biomass$Year <- ('1999')
Grecian_Rocks_1999_comm_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2000 <- import("Grecian_Rocks/data/Grecian_Rocks_2000.xls")

Grecian_Rocks_2000_herb <- merge(Grecian_Rocks_2000, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2000_herb_biomass <- summarise_at(Grecian_Rocks_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2000_herb_biomass$Year <- ('2000')
Grecian_Rocks_2000_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2000_comm <- merge(Grecian_Rocks_2000, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2000_comm_biomass <- summarise_at(Grecian_Rocks_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2000_comm_biomass$Year <- ('2000')
Grecian_Rocks_2000_comm_biomass$Reef <- ('Grecian Rocks')

Grecian_Rocks_2001 <- import("Grecian_Rocks/data/Grecian_Rocks_2001.xls")

Grecian_Rocks_2001_herb <- merge(Grecian_Rocks_2001, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2001_herb_biomass <- summarise_at(Grecian_Rocks_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2001_herb_biomass$Year <- ('2001')
Grecian_Rocks_2001_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2001_comm <- merge(Grecian_Rocks_2001, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2001_comm_biomass <- summarise_at(Grecian_Rocks_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2001_comm_biomass$Year <- ('2001')
Grecian_Rocks_2001_comm_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2002 <- import("Grecian_Rocks/data/Grecian_Rocks_2002.xls")

Grecian_Rocks_2002_herb <- merge(Grecian_Rocks_2002, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2002_herb_biomass <- summarise_at(Grecian_Rocks_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2002_herb_biomass$Year <- ('2002')
Grecian_Rocks_2002_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2002_comm <- merge(Grecian_Rocks_2002, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2002_comm_biomass <- summarise_at(Grecian_Rocks_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2002_comm_biomass$Year <- ('2002')
Grecian_Rocks_2002_comm_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2003 <- import("Grecian_Rocks/data/Grecian_Rocks_2003.xls")

Grecian_Rocks_2003_herb <- merge(Grecian_Rocks_2003, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2003_herb_biomass <- summarise_at(Grecian_Rocks_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2003_herb_biomass$Year <- ('2003')
Grecian_Rocks_2003_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2003_comm <- merge(Grecian_Rocks_2003, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2003_comm_biomass <- summarise_at(Grecian_Rocks_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2003_comm_biomass$Year <- ('2003')
Grecian_Rocks_2003_comm_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2004 <- import("Grecian_Rocks/data/Grecian_Rocks_2004.xls")

Grecian_Rocks_2004_herb <- merge(Grecian_Rocks_2004, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2004_herb_biomass <- summarise_at(Grecian_Rocks_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2004_herb_biomass$Year <- ('2004')
Grecian_Rocks_2004_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2004_comm <- merge(Grecian_Rocks_2004, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2004_comm_biomass <- summarise_at(Grecian_Rocks_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2004_comm_biomass$Year <- ('2004')
Grecian_Rocks_2004_comm_biomass$Reef <- ('Grecian Rocks')

Grecian_Rocks_2005 <- import("Grecian_Rocks/data/Grecian_Rocks_2005.xls")

Grecian_Rocks_2005_herb <- merge(Grecian_Rocks_2005, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2005_herb_biomass <- summarise_at(Grecian_Rocks_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2005_herb_biomass$Year <- ('2005')
Grecian_Rocks_2005_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2005_comm <- merge(Grecian_Rocks_2005, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2005_comm_biomass <- summarise_at(Grecian_Rocks_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2005_comm_biomass$Year <- ('2005')
Grecian_Rocks_2005_comm_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2006 <- import("Grecian_Rocks/data/Grecian_Rocks_2006.xls")

Grecian_Rocks_2006_herb <- merge(Grecian_Rocks_2006, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2006_herb_biomass <- summarise_at(Grecian_Rocks_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2006_herb_biomass$Year <- ('2006')
Grecian_Rocks_2006_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2006_comm <- merge(Grecian_Rocks_2006, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2006_comm_biomass <- summarise_at(Grecian_Rocks_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2006_comm_biomass$Year <- ('2006')
Grecian_Rocks_2006_comm_biomass$Reef <- ('Grecian Rocks')

Grecian_Rocks_2007 <- import("Grecian_Rocks/data/Grecian_Rocks_2007.xls")

Grecian_Rocks_2007_herb <- merge(Grecian_Rocks_2007, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2007_herb_biomass <- summarise_at(Grecian_Rocks_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2007_herb_biomass$Year <- ('2007')
Grecian_Rocks_2007_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2007_comm <- merge(Grecian_Rocks_2007, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2007_comm_biomass <- summarise_at(Grecian_Rocks_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2007_comm_biomass$Year <- ('2007')
Grecian_Rocks_2007_comm_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2008 <- import("Grecian_Rocks/data/Grecian_Rocks_2008.xls")

Grecian_Rocks_2008_herb <- merge(Grecian_Rocks_2008, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2008_herb_biomass <- summarise_at(Grecian_Rocks_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2008_herb_biomass$Year <- ('2008')
Grecian_Rocks_2008_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2008_comm <- merge(Grecian_Rocks_2008, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2008_comm_biomass <- summarise_at(Grecian_Rocks_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2008_comm_biomass$Year <- ('2008')
Grecian_Rocks_2008_comm_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2009 <- import("Grecian_Rocks/data/Grecian_Rocks_2009.xls")

Grecian_Rocks_2009_herb <- merge(Grecian_Rocks_2009, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2009_herb_biomass <- summarise_at(Grecian_Rocks_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2009_herb_biomass$Year <- ('2009')
Grecian_Rocks_2009_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2009_comm <- merge(Grecian_Rocks_2009, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2009_comm_biomass <- summarise_at(Grecian_Rocks_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2009_comm_biomass$Year <- ('2009')
Grecian_Rocks_2009_comm_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2010 <- import("Grecian_Rocks/data/Grecian_Rocks_2010.xls")

Grecian_Rocks_2010_herb <- merge(Grecian_Rocks_2010, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2010_herb_biomass <- summarise_at(Grecian_Rocks_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2010_herb_biomass$Year <- ('2010')
Grecian_Rocks_2010_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2010_comm <- merge(Grecian_Rocks_2010, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2010_comm_biomass <- summarise_at(Grecian_Rocks_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2010_comm_biomass$Year <- ('2010')
Grecian_Rocks_2010_comm_biomass$Reef <- ('Grecian Rocks')

Grecian_Rocks_2011 <- import("Grecian_Rocks/data/Grecian_Rocks_2011.xls")

Grecian_Rocks_2011_herb <- merge(Grecian_Rocks_2011, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2011_herb_biomass <- summarise_at(Grecian_Rocks_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2011_herb_biomass$Year <- ('2011')
Grecian_Rocks_2011_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2011_comm <- merge(Grecian_Rocks_2011, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2011_comm_biomass <- summarise_at(Grecian_Rocks_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2011_comm_biomass$Year <- ('2011')
Grecian_Rocks_2011_comm_biomass$Reef <- ('Grecian Rocks')



Grecian_Rocks_2012 <- import("Grecian_Rocks/data/Grecian_Rocks_2012.xls")

Grecian_Rocks_2012_herb <- merge(Grecian_Rocks_2012, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2012_herb_biomass <- summarise_at(Grecian_Rocks_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2012_herb_biomass$Year <- ('2012')
Grecian_Rocks_2012_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2012_comm <- merge(Grecian_Rocks_2012, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2012_comm_biomass <- summarise_at(Grecian_Rocks_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2012_comm_biomass$Year <- ('2012')
Grecian_Rocks_2012_comm_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2014 <- import("Grecian_Rocks/data/Grecian_Rocks_2014.xls")

Grecian_Rocks_2014_herb <- merge(Grecian_Rocks_2014, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2014_herb_biomass <- summarise_at(Grecian_Rocks_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2014_herb_biomass$Year <- ('2014')
Grecian_Rocks_2014_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2014_comm <- merge(Grecian_Rocks_2014, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2014_comm_biomass <- summarise_at(Grecian_Rocks_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2014_comm_biomass$Year <- ('2014')
Grecian_Rocks_2014_comm_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2016 <- import("Grecian_Rocks/data/Grecian_Rocks_2016.xls")

Grecian_Rocks_2016_herb <- merge(Grecian_Rocks_2016, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2016_herb_biomass <- summarise_at(Grecian_Rocks_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2016_herb_biomass$Year <- ('2016')
Grecian_Rocks_2016_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2016_comm <- merge(Grecian_Rocks_2016, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2016_comm_biomass <- summarise_at(Grecian_Rocks_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2016_comm_biomass$Year <- ('2016')
Grecian_Rocks_2016_comm_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2018 <- import("Grecian_Rocks/data/Grecian_Rocks_2018.xls")

Grecian_Rocks_2018_herb <- merge(Grecian_Rocks_2018, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2018_herb_biomass <- summarise_at(Grecian_Rocks_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2018_herb_biomass$Year <- ('2018')
Grecian_Rocks_2018_herb_biomass$Reef <- ('Grecian Rocks')


Grecian_Rocks_2018_comm <- merge(Grecian_Rocks_2018, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2018_comm_biomass <- summarise_at(Grecian_Rocks_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Grecian_Rocks_2018_comm_biomass$Year <- ('2018')
Grecian_Rocks_2018_comm_biomass$Reef <- ('Grecian Rocks')



### Combine all years together for herbivorous and commercial seperately



Grecian_Rocks_herb_1 <- rbind(Grecian_Rocks_1999_herb_biomass,Grecian_Rocks_2000_herb_biomass)
Grecian_Rocks_herb_2 <- rbind(Grecian_Rocks_herb_1,Grecian_Rocks_2001_herb_biomass)
Grecian_Rocks_herb_3 <- rbind(Grecian_Rocks_herb_2,Grecian_Rocks_2002_herb_biomass)
Grecian_Rocks_herb_4 <- rbind(Grecian_Rocks_herb_3,Grecian_Rocks_2003_herb_biomass)
Grecian_Rocks_herb_5 <- rbind(Grecian_Rocks_herb_4,Grecian_Rocks_2004_herb_biomass)
Grecian_Rocks_herb_6 <- rbind(Grecian_Rocks_herb_5,Grecian_Rocks_2005_herb_biomass)
Grecian_Rocks_herb_7 <- rbind(Grecian_Rocks_herb_6,Grecian_Rocks_2006_herb_biomass)
Grecian_Rocks_herb_8 <- rbind(Grecian_Rocks_herb_7,Grecian_Rocks_2007_herb_biomass)
Grecian_Rocks_herb_9 <- rbind(Grecian_Rocks_herb_8,Grecian_Rocks_2008_herb_biomass)
Grecian_Rocks_herb_10 <- rbind(Grecian_Rocks_herb_9,Grecian_Rocks_2009_herb_biomass)
Grecian_Rocks_herb_11<- rbind(Grecian_Rocks_herb_10,Grecian_Rocks_2010_herb_biomass)
Grecian_Rocks_herb_12 <- rbind(Grecian_Rocks_herb_11,Grecian_Rocks_2011_herb_biomass)
Grecian_Rocks_herb_13 <- rbind(Grecian_Rocks_herb_12,Grecian_Rocks_2012_herb_biomass)
Grecian_Rocks_herb_14 <- rbind(Grecian_Rocks_herb_13,Grecian_Rocks_2014_herb_biomass)
Grecian_Rocks_herb_15 <- rbind(Grecian_Rocks_herb_14,Grecian_Rocks_2016_herb_biomass)
Grecian_Rocks_herb_biomass_data_combined <- rbind(Grecian_Rocks_herb_15,Grecian_Rocks_2018_herb_biomass)



Grecian_Rocks_comm_1 <- rbind(Grecian_Rocks_1999_comm_biomass,Grecian_Rocks_2000_comm_biomass)
Grecian_Rocks_comm_2 <- rbind(Grecian_Rocks_comm_1,Grecian_Rocks_2001_comm_biomass)
Grecian_Rocks_comm_3 <- rbind(Grecian_Rocks_comm_2,Grecian_Rocks_2002_comm_biomass)
Grecian_Rocks_comm_4 <- rbind(Grecian_Rocks_comm_3,Grecian_Rocks_2003_comm_biomass)
Grecian_Rocks_comm_5 <- rbind(Grecian_Rocks_comm_4,Grecian_Rocks_2004_comm_biomass)
Grecian_Rocks_comm_6 <- rbind(Grecian_Rocks_comm_5,Grecian_Rocks_2005_comm_biomass)
Grecian_Rocks_comm_7 <- rbind(Grecian_Rocks_comm_6,Grecian_Rocks_2006_comm_biomass)
Grecian_Rocks_comm_8 <- rbind(Grecian_Rocks_comm_7,Grecian_Rocks_2007_comm_biomass)
Grecian_Rocks_comm_9 <- rbind(Grecian_Rocks_comm_8,Grecian_Rocks_2008_comm_biomass)
Grecian_Rocks_comm_10 <- rbind(Grecian_Rocks_comm_9,Grecian_Rocks_2009_comm_biomass)
Grecian_Rocks_comm_11<- rbind(Grecian_Rocks_comm_10,Grecian_Rocks_2010_comm_biomass)
Grecian_Rocks_comm_12 <- rbind(Grecian_Rocks_comm_11,Grecian_Rocks_2011_comm_biomass)
Grecian_Rocks_comm_13 <- rbind(Grecian_Rocks_comm_12,Grecian_Rocks_2012_comm_biomass)
Grecian_Rocks_comm_14 <- rbind(Grecian_Rocks_comm_13,Grecian_Rocks_2014_comm_biomass)
Grecian_Rocks_comm_15 <- rbind(Grecian_Rocks_comm_14,Grecian_Rocks_2016_comm_biomass)
Grecian_Rocks_comm_biomass_data_combined <- rbind(Grecian_Rocks_comm_15,Grecian_Rocks_2018_comm_biomass)



export(Grecian_Rocks_herb_biomass_data_combined, "Grecian_Rocks/data/Grecian_Rocks_herbivorous_biomass.csv")
export(Grecian_Rocks_comm_biomass_data_combined, "Grecian_Rocks/data/Grecian_Rocks_commercial_biomass.csv")



#Molasses Deep


Molasses_Deep_1999 <- import("Molasses_Deep/data/Molasses_Deep_1999.xls")


Molasses_Deep_1999_herb <- merge(Molasses_Deep_1999, Herb, by = c("SPECIES_CD"))
Molasses_Deep_1999_herb_biomass <- summarise_at(Molasses_Deep_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_1999_herb_biomass$Year <- ('1999')
Molasses_Deep_1999_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_1999_comm <- merge(Molasses_Deep_1999, Comm, by = c("SPECIES_CD"))
Molasses_Deep_1999_comm_biomass <- summarise_at(Molasses_Deep_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_1999_comm_biomass$Year <- ('1999')
Molasses_Deep_1999_comm_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2000 <- import("Molasses_Deep/data/Molasses_Deep_2000.xls")

Molasses_Deep_2000_herb <- merge(Molasses_Deep_2000, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2000_herb_biomass <- summarise_at(Molasses_Deep_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2000_herb_biomass$Year <- ('2000')
Molasses_Deep_2000_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2000_comm <- merge(Molasses_Deep_2000, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2000_comm_biomass <- summarise_at(Molasses_Deep_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2000_comm_biomass$Year <- ('2000')
Molasses_Deep_2000_comm_biomass$Reef <- ('Molasses Deep')

Molasses_Deep_2001 <- import("Molasses_Deep/data/Molasses_Deep_2001.xls")

Molasses_Deep_2001_herb <- merge(Molasses_Deep_2001, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2001_herb_biomass <- summarise_at(Molasses_Deep_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2001_herb_biomass$Year <- ('2001')
Molasses_Deep_2001_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2001_comm <- merge(Molasses_Deep_2001, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2001_comm_biomass <- summarise_at(Molasses_Deep_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2001_comm_biomass$Year <- ('2001')
Molasses_Deep_2001_comm_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2002 <- import("Molasses_Deep/data/Molasses_Deep_2002.xls")

Molasses_Deep_2002_herb <- merge(Molasses_Deep_2002, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2002_herb_biomass <- summarise_at(Molasses_Deep_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2002_herb_biomass$Year <- ('2002')
Molasses_Deep_2002_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2002_comm <- merge(Molasses_Deep_2002, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2002_comm_biomass <- summarise_at(Molasses_Deep_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2002_comm_biomass$Year <- ('2002')
Molasses_Deep_2002_comm_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2003 <- import("Molasses_Deep/data/Molasses_Deep_2003.xls")

Molasses_Deep_2003_herb <- merge(Molasses_Deep_2003, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2003_herb_biomass <- summarise_at(Molasses_Deep_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2003_herb_biomass$Year <- ('2003')
Molasses_Deep_2003_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2003_comm <- merge(Molasses_Deep_2003, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2003_comm_biomass <- summarise_at(Molasses_Deep_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2003_comm_biomass$Year <- ('2003')
Molasses_Deep_2003_comm_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2004 <- import("Molasses_Deep/data/Molasses_Deep_2004.xls")

Molasses_Deep_2004_herb <- merge(Molasses_Deep_2004, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2004_herb_biomass <- summarise_at(Molasses_Deep_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2004_herb_biomass$Year <- ('2004')
Molasses_Deep_2004_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2004_comm <- merge(Molasses_Deep_2004, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2004_comm_biomass <- summarise_at(Molasses_Deep_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2004_comm_biomass$Year <- ('2004')
Molasses_Deep_2004_comm_biomass$Reef <- ('Molasses Deep')

Molasses_Deep_2005 <- import("Molasses_Deep/data/Molasses_Deep_2005.xls")

Molasses_Deep_2005_herb <- merge(Molasses_Deep_2005, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2005_herb_biomass <- summarise_at(Molasses_Deep_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2005_herb_biomass$Year <- ('2005')
Molasses_Deep_2005_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2005_comm <- merge(Molasses_Deep_2005, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2005_comm_biomass <- summarise_at(Molasses_Deep_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2005_comm_biomass$Year <- ('2005')
Molasses_Deep_2005_comm_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2006 <- import("Molasses_Deep/data/Molasses_Deep_2006.xls")

Molasses_Deep_2006_herb <- merge(Molasses_Deep_2006, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2006_herb_biomass <- summarise_at(Molasses_Deep_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2006_herb_biomass$Year <- ('2006')
Molasses_Deep_2006_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2006_comm <- merge(Molasses_Deep_2006, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2006_comm_biomass <- summarise_at(Molasses_Deep_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2006_comm_biomass$Year <- ('2006')
Molasses_Deep_2006_comm_biomass$Reef <- ('Molasses Deep')

Molasses_Deep_2007 <- import("Molasses_Deep/data/Molasses_Deep_2007.xls")

Molasses_Deep_2007_herb <- merge(Molasses_Deep_2007, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2007_herb_biomass <- summarise_at(Molasses_Deep_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2007_herb_biomass$Year <- ('2007')
Molasses_Deep_2007_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2007_comm <- merge(Molasses_Deep_2007, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2007_comm_biomass <- summarise_at(Molasses_Deep_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2007_comm_biomass$Year <- ('2007')
Molasses_Deep_2007_comm_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2008 <- import("Molasses_Deep/data/Molasses_Deep_2008.xls")

Molasses_Deep_2008_herb <- merge(Molasses_Deep_2008, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2008_herb_biomass <- summarise_at(Molasses_Deep_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2008_herb_biomass$Year <- ('2008')
Molasses_Deep_2008_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2008_comm <- merge(Molasses_Deep_2008, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2008_comm_biomass <- summarise_at(Molasses_Deep_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2008_comm_biomass$Year <- ('2008')
Molasses_Deep_2008_comm_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2009 <- import("Molasses_Deep/data/Molasses_Deep_2009.xls")

Molasses_Deep_2009_herb <- merge(Molasses_Deep_2009, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2009_herb_biomass <- summarise_at(Molasses_Deep_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2009_herb_biomass$Year <- ('2009')
Molasses_Deep_2009_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2009_comm <- merge(Molasses_Deep_2009, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2009_comm_biomass <- summarise_at(Molasses_Deep_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2009_comm_biomass$Year <- ('2009')
Molasses_Deep_2009_comm_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2010 <- import("Molasses_Deep/data/Molasses_Deep_2010.xls")

Molasses_Deep_2010_herb <- merge(Molasses_Deep_2010, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2010_herb_biomass <- summarise_at(Molasses_Deep_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2010_herb_biomass$Year <- ('2010')
Molasses_Deep_2010_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2010_comm <- merge(Molasses_Deep_2010, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2010_comm_biomass <- summarise_at(Molasses_Deep_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2010_comm_biomass$Year <- ('2010')
Molasses_Deep_2010_comm_biomass$Reef <- ('Molasses Deep')

Molasses_Deep_2011 <- import("Molasses_Deep/data/Molasses_Deep_2011.xls")

Molasses_Deep_2011_herb <- merge(Molasses_Deep_2011, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2011_herb_biomass <- summarise_at(Molasses_Deep_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2011_herb_biomass$Year <- ('2011')
Molasses_Deep_2011_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2011_comm <- merge(Molasses_Deep_2011, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2011_comm_biomass <- summarise_at(Molasses_Deep_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2011_comm_biomass$Year <- ('2011')
Molasses_Deep_2011_comm_biomass$Reef <- ('Molasses Deep')



Molasses_Deep_2012 <- import("Molasses_Deep/data/Molasses_Deep_2012.xls")

Molasses_Deep_2012_herb <- merge(Molasses_Deep_2012, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2012_herb_biomass <- summarise_at(Molasses_Deep_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2012_herb_biomass$Year <- ('2012')
Molasses_Deep_2012_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2012_comm <- merge(Molasses_Deep_2012, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2012_comm_biomass <- summarise_at(Molasses_Deep_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2012_comm_biomass$Year <- ('2012')
Molasses_Deep_2012_comm_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2014 <- import("Molasses_Deep/data/Molasses_Deep_2014.xls")

Molasses_Deep_2014_herb <- merge(Molasses_Deep_2014, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2014_herb_biomass <- summarise_at(Molasses_Deep_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2014_herb_biomass$Year <- ('2014')
Molasses_Deep_2014_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2014_comm <- merge(Molasses_Deep_2014, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2014_comm_biomass <- summarise_at(Molasses_Deep_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2014_comm_biomass$Year <- ('2014')
Molasses_Deep_2014_comm_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2016 <- import("Molasses_Deep/data/Molasses_Deep_2016.xls")

Molasses_Deep_2016_herb <- merge(Molasses_Deep_2016, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2016_herb_biomass <- summarise_at(Molasses_Deep_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2016_herb_biomass$Year <- ('2016')
Molasses_Deep_2016_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2016_comm <- merge(Molasses_Deep_2016, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2016_comm_biomass <- summarise_at(Molasses_Deep_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2016_comm_biomass$Year <- ('2016')
Molasses_Deep_2016_comm_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2018 <- import("Molasses_Deep/data/Molasses_Deep_2018.xls")

Molasses_Deep_2018_herb <- merge(Molasses_Deep_2018, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2018_herb_biomass <- summarise_at(Molasses_Deep_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2018_herb_biomass$Year <- ('2018')
Molasses_Deep_2018_herb_biomass$Reef <- ('Molasses Deep')


Molasses_Deep_2018_comm <- merge(Molasses_Deep_2018, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2018_comm_biomass <- summarise_at(Molasses_Deep_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Deep_2018_comm_biomass$Year <- ('2018')
Molasses_Deep_2018_comm_biomass$Reef <- ('Molasses Deep')



### Combine all years together for herbivorous and commercial seperately



Molasses_Deep_herb_1 <- rbind(Molasses_Deep_1999_herb_biomass,Molasses_Deep_2000_herb_biomass)
Molasses_Deep_herb_2 <- rbind(Molasses_Deep_herb_1,Molasses_Deep_2001_herb_biomass)
Molasses_Deep_herb_3 <- rbind(Molasses_Deep_herb_2,Molasses_Deep_2002_herb_biomass)
Molasses_Deep_herb_4 <- rbind(Molasses_Deep_herb_3,Molasses_Deep_2003_herb_biomass)
Molasses_Deep_herb_5 <- rbind(Molasses_Deep_herb_4,Molasses_Deep_2004_herb_biomass)
Molasses_Deep_herb_6 <- rbind(Molasses_Deep_herb_5,Molasses_Deep_2005_herb_biomass)
Molasses_Deep_herb_7 <- rbind(Molasses_Deep_herb_6,Molasses_Deep_2006_herb_biomass)
Molasses_Deep_herb_8 <- rbind(Molasses_Deep_herb_7,Molasses_Deep_2007_herb_biomass)
Molasses_Deep_herb_9 <- rbind(Molasses_Deep_herb_8,Molasses_Deep_2008_herb_biomass)
Molasses_Deep_herb_10 <- rbind(Molasses_Deep_herb_9,Molasses_Deep_2009_herb_biomass)
Molasses_Deep_herb_11<- rbind(Molasses_Deep_herb_10,Molasses_Deep_2010_herb_biomass)
Molasses_Deep_herb_12 <- rbind(Molasses_Deep_herb_11,Molasses_Deep_2011_herb_biomass)
Molasses_Deep_herb_13 <- rbind(Molasses_Deep_herb_12,Molasses_Deep_2012_herb_biomass)
Molasses_Deep_herb_14 <- rbind(Molasses_Deep_herb_13,Molasses_Deep_2014_herb_biomass)
Molasses_Deep_herb_15 <- rbind(Molasses_Deep_herb_14,Molasses_Deep_2016_herb_biomass)
Molasses_Deep_herb_biomass_data_combined <- rbind(Molasses_Deep_herb_15,Molasses_Deep_2018_herb_biomass)



Molasses_Deep_comm_1 <- rbind(Molasses_Deep_1999_comm_biomass,Molasses_Deep_2000_comm_biomass)
Molasses_Deep_comm_2 <- rbind(Molasses_Deep_comm_1,Molasses_Deep_2001_comm_biomass)
Molasses_Deep_comm_3 <- rbind(Molasses_Deep_comm_2,Molasses_Deep_2002_comm_biomass)
Molasses_Deep_comm_4 <- rbind(Molasses_Deep_comm_3,Molasses_Deep_2003_comm_biomass)
Molasses_Deep_comm_5 <- rbind(Molasses_Deep_comm_4,Molasses_Deep_2004_comm_biomass)
Molasses_Deep_comm_6 <- rbind(Molasses_Deep_comm_5,Molasses_Deep_2005_comm_biomass)
Molasses_Deep_comm_7 <- rbind(Molasses_Deep_comm_6,Molasses_Deep_2006_comm_biomass)
Molasses_Deep_comm_8 <- rbind(Molasses_Deep_comm_7,Molasses_Deep_2007_comm_biomass)
Molasses_Deep_comm_9 <- rbind(Molasses_Deep_comm_8,Molasses_Deep_2008_comm_biomass)
Molasses_Deep_comm_10 <- rbind(Molasses_Deep_comm_9,Molasses_Deep_2009_comm_biomass)
Molasses_Deep_comm_11<- rbind(Molasses_Deep_comm_10,Molasses_Deep_2010_comm_biomass)
Molasses_Deep_comm_12 <- rbind(Molasses_Deep_comm_11,Molasses_Deep_2011_comm_biomass)
Molasses_Deep_comm_13 <- rbind(Molasses_Deep_comm_12,Molasses_Deep_2012_comm_biomass)
Molasses_Deep_comm_14 <- rbind(Molasses_Deep_comm_13,Molasses_Deep_2014_comm_biomass)
Molasses_Deep_comm_15 <- rbind(Molasses_Deep_comm_14,Molasses_Deep_2016_comm_biomass)
Molasses_Deep_comm_biomass_data_combined <- rbind(Molasses_Deep_comm_15,Molasses_Deep_2018_comm_biomass)



export(Molasses_Deep_herb_biomass_data_combined, "Molasses_Deep/data/Molasses_Deep_herbivorous_biomass.csv")
export(Molasses_Deep_comm_biomass_data_combined, "Molasses_Deep/data/Molasses_Deep_commercial_biomass.csv")



#Molasses Shallow


Molasses_Shallow_1999 <- import("Molasses_Shallow/data/Molasses_Shallow_1999.xls")


Molasses_Shallow_1999_herb <- merge(Molasses_Shallow_1999, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_1999_herb_biomass <- summarise_at(Molasses_Shallow_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_1999_herb_biomass$Year <- ('1999')
Molasses_Shallow_1999_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_1999_comm <- merge(Molasses_Shallow_1999, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_1999_comm_biomass <- summarise_at(Molasses_Shallow_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_1999_comm_biomass$Year <- ('1999')
Molasses_Shallow_1999_comm_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2000 <- import("Molasses_Shallow/data/Molasses_Shallow_2000.xls")

Molasses_Shallow_2000_herb <- merge(Molasses_Shallow_2000, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2000_herb_biomass <- summarise_at(Molasses_Shallow_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2000_herb_biomass$Year <- ('2000')
Molasses_Shallow_2000_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2000_comm <- merge(Molasses_Shallow_2000, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2000_comm_biomass <- summarise_at(Molasses_Shallow_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2000_comm_biomass$Year <- ('2000')
Molasses_Shallow_2000_comm_biomass$Reef <- ('Molasses Shallow')

Molasses_Shallow_2001 <- import("Molasses_Shallow/data/Molasses_Shallow_2001.xls")

Molasses_Shallow_2001_herb <- merge(Molasses_Shallow_2001, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2001_herb_biomass <- summarise_at(Molasses_Shallow_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2001_herb_biomass$Year <- ('2001')
Molasses_Shallow_2001_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2001_comm <- merge(Molasses_Shallow_2001, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2001_comm_biomass <- summarise_at(Molasses_Shallow_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2001_comm_biomass$Year <- ('2001')
Molasses_Shallow_2001_comm_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2002 <- import("Molasses_Shallow/data/Molasses_Shallow_2002.xls")

Molasses_Shallow_2002_herb <- merge(Molasses_Shallow_2002, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2002_herb_biomass <- summarise_at(Molasses_Shallow_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2002_herb_biomass$Year <- ('2002')
Molasses_Shallow_2002_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2002_comm <- merge(Molasses_Shallow_2002, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2002_comm_biomass <- summarise_at(Molasses_Shallow_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2002_comm_biomass$Year <- ('2002')
Molasses_Shallow_2002_comm_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2003 <- import("Molasses_Shallow/data/Molasses_Shallow_2003.xls")

Molasses_Shallow_2003_herb <- merge(Molasses_Shallow_2003, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2003_herb_biomass <- summarise_at(Molasses_Shallow_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2003_herb_biomass$Year <- ('2003')
Molasses_Shallow_2003_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2003_comm <- merge(Molasses_Shallow_2003, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2003_comm_biomass <- summarise_at(Molasses_Shallow_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2003_comm_biomass$Year <- ('2003')
Molasses_Shallow_2003_comm_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2004 <- import("Molasses_Shallow/data/Molasses_Shallow_2004.xls")

Molasses_Shallow_2004_herb <- merge(Molasses_Shallow_2004, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2004_herb_biomass <- summarise_at(Molasses_Shallow_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2004_herb_biomass$Year <- ('2004')
Molasses_Shallow_2004_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2004_comm <- merge(Molasses_Shallow_2004, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2004_comm_biomass <- summarise_at(Molasses_Shallow_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2004_comm_biomass$Year <- ('2004')
Molasses_Shallow_2004_comm_biomass$Reef <- ('Molasses Shallow')

Molasses_Shallow_2005 <- import("Molasses_Shallow/data/Molasses_Shallow_2005.xls")

Molasses_Shallow_2005_herb <- merge(Molasses_Shallow_2005, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2005_herb_biomass <- summarise_at(Molasses_Shallow_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2005_herb_biomass$Year <- ('2005')
Molasses_Shallow_2005_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2005_comm <- merge(Molasses_Shallow_2005, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2005_comm_biomass <- summarise_at(Molasses_Shallow_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2005_comm_biomass$Year <- ('2005')
Molasses_Shallow_2005_comm_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2006 <- import("Molasses_Shallow/data/Molasses_Shallow_2006.xls")

Molasses_Shallow_2006_herb <- merge(Molasses_Shallow_2006, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2006_herb_biomass <- summarise_at(Molasses_Shallow_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2006_herb_biomass$Year <- ('2006')
Molasses_Shallow_2006_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2006_comm <- merge(Molasses_Shallow_2006, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2006_comm_biomass <- summarise_at(Molasses_Shallow_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2006_comm_biomass$Year <- ('2006')
Molasses_Shallow_2006_comm_biomass$Reef <- ('Molasses Shallow')

Molasses_Shallow_2007 <- import("Molasses_Shallow/data/Molasses_Shallow_2007.xls")

Molasses_Shallow_2007_herb <- merge(Molasses_Shallow_2007, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2007_herb_biomass <- summarise_at(Molasses_Shallow_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2007_herb_biomass$Year <- ('2007')
Molasses_Shallow_2007_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2007_comm <- merge(Molasses_Shallow_2007, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2007_comm_biomass <- summarise_at(Molasses_Shallow_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2007_comm_biomass$Year <- ('2007')
Molasses_Shallow_2007_comm_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2008 <- import("Molasses_Shallow/data/Molasses_Shallow_2008.xls")

Molasses_Shallow_2008_herb <- merge(Molasses_Shallow_2008, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2008_herb_biomass <- summarise_at(Molasses_Shallow_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2008_herb_biomass$Year <- ('2008')
Molasses_Shallow_2008_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2008_comm <- merge(Molasses_Shallow_2008, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2008_comm_biomass <- summarise_at(Molasses_Shallow_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2008_comm_biomass$Year <- ('2008')
Molasses_Shallow_2008_comm_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2009 <- import("Molasses_Shallow/data/Molasses_Shallow_2009.xls")

Molasses_Shallow_2009_herb <- merge(Molasses_Shallow_2009, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2009_herb_biomass <- summarise_at(Molasses_Shallow_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2009_herb_biomass$Year <- ('2009')
Molasses_Shallow_2009_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2009_comm <- merge(Molasses_Shallow_2009, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2009_comm_biomass <- summarise_at(Molasses_Shallow_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2009_comm_biomass$Year <- ('2009')
Molasses_Shallow_2009_comm_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2010 <- import("Molasses_Shallow/data/Molasses_Shallow_2010.xls")

Molasses_Shallow_2010_herb <- merge(Molasses_Shallow_2010, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2010_herb_biomass <- summarise_at(Molasses_Shallow_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2010_herb_biomass$Year <- ('2010')
Molasses_Shallow_2010_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2010_comm <- merge(Molasses_Shallow_2010, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2010_comm_biomass <- summarise_at(Molasses_Shallow_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2010_comm_biomass$Year <- ('2010')
Molasses_Shallow_2010_comm_biomass$Reef <- ('Molasses Shallow')

Molasses_Shallow_2011 <- import("Molasses_Shallow/data/Molasses_Shallow_2011.xls")

Molasses_Shallow_2011_herb <- merge(Molasses_Shallow_2011, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2011_herb_biomass <- summarise_at(Molasses_Shallow_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2011_herb_biomass$Year <- ('2011')
Molasses_Shallow_2011_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2011_comm <- merge(Molasses_Shallow_2011, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2011_comm_biomass <- summarise_at(Molasses_Shallow_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2011_comm_biomass$Year <- ('2011')
Molasses_Shallow_2011_comm_biomass$Reef <- ('Molasses Shallow')



Molasses_Shallow_2012 <- import("Molasses_Shallow/data/Molasses_Shallow_2012.xls")

Molasses_Shallow_2012_herb <- merge(Molasses_Shallow_2012, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2012_herb_biomass <- summarise_at(Molasses_Shallow_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2012_herb_biomass$Year <- ('2012')
Molasses_Shallow_2012_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2012_comm <- merge(Molasses_Shallow_2012, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2012_comm_biomass <- summarise_at(Molasses_Shallow_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2012_comm_biomass$Year <- ('2012')
Molasses_Shallow_2012_comm_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2014 <- import("Molasses_Shallow/data/Molasses_Shallow_2014.xls")

Molasses_Shallow_2014_herb <- merge(Molasses_Shallow_2014, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2014_herb_biomass <- summarise_at(Molasses_Shallow_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2014_herb_biomass$Year <- ('2014')
Molasses_Shallow_2014_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2014_comm <- merge(Molasses_Shallow_2014, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2014_comm_biomass <- summarise_at(Molasses_Shallow_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2014_comm_biomass$Year <- ('2014')
Molasses_Shallow_2014_comm_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2016 <- import("Molasses_Shallow/data/Molasses_Shallow_2016.xls")

Molasses_Shallow_2016_herb <- merge(Molasses_Shallow_2016, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2016_herb_biomass <- summarise_at(Molasses_Shallow_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2016_herb_biomass$Year <- ('2016')
Molasses_Shallow_2016_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2016_comm <- merge(Molasses_Shallow_2016, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2016_comm_biomass <- summarise_at(Molasses_Shallow_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2016_comm_biomass$Year <- ('2016')
Molasses_Shallow_2016_comm_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2018 <- import("Molasses_Shallow/data/Molasses_Shallow_2018.xls")

Molasses_Shallow_2018_herb <- merge(Molasses_Shallow_2018, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2018_herb_biomass <- summarise_at(Molasses_Shallow_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2018_herb_biomass$Year <- ('2018')
Molasses_Shallow_2018_herb_biomass$Reef <- ('Molasses Shallow')


Molasses_Shallow_2018_comm <- merge(Molasses_Shallow_2018, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2018_comm_biomass <- summarise_at(Molasses_Shallow_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Molasses_Shallow_2018_comm_biomass$Year <- ('2018')
Molasses_Shallow_2018_comm_biomass$Reef <- ('Molasses Shallow')



### Combine all years together for herbivorous and commercial seperately



Molasses_Shallow_herb_1 <- rbind(Molasses_Shallow_1999_herb_biomass,Molasses_Shallow_2000_herb_biomass)
Molasses_Shallow_herb_2 <- rbind(Molasses_Shallow_herb_1,Molasses_Shallow_2001_herb_biomass)
Molasses_Shallow_herb_3 <- rbind(Molasses_Shallow_herb_2,Molasses_Shallow_2002_herb_biomass)
Molasses_Shallow_herb_4 <- rbind(Molasses_Shallow_herb_3,Molasses_Shallow_2003_herb_biomass)
Molasses_Shallow_herb_5 <- rbind(Molasses_Shallow_herb_4,Molasses_Shallow_2004_herb_biomass)
Molasses_Shallow_herb_6 <- rbind(Molasses_Shallow_herb_5,Molasses_Shallow_2005_herb_biomass)
Molasses_Shallow_herb_7 <- rbind(Molasses_Shallow_herb_6,Molasses_Shallow_2006_herb_biomass)
Molasses_Shallow_herb_8 <- rbind(Molasses_Shallow_herb_7,Molasses_Shallow_2007_herb_biomass)
Molasses_Shallow_herb_9 <- rbind(Molasses_Shallow_herb_8,Molasses_Shallow_2008_herb_biomass)
Molasses_Shallow_herb_10 <- rbind(Molasses_Shallow_herb_9,Molasses_Shallow_2009_herb_biomass)
Molasses_Shallow_herb_11<- rbind(Molasses_Shallow_herb_10,Molasses_Shallow_2010_herb_biomass)
Molasses_Shallow_herb_12 <- rbind(Molasses_Shallow_herb_11,Molasses_Shallow_2011_herb_biomass)
Molasses_Shallow_herb_13 <- rbind(Molasses_Shallow_herb_12,Molasses_Shallow_2012_herb_biomass)
Molasses_Shallow_herb_14 <- rbind(Molasses_Shallow_herb_13,Molasses_Shallow_2014_herb_biomass)
Molasses_Shallow_herb_15 <- rbind(Molasses_Shallow_herb_14,Molasses_Shallow_2016_herb_biomass)
Molasses_Shallow_herb_biomass_data_combined <- rbind(Molasses_Shallow_herb_15,Molasses_Shallow_2018_herb_biomass)



Molasses_Shallow_comm_1 <- rbind(Molasses_Shallow_1999_comm_biomass,Molasses_Shallow_2000_comm_biomass)
Molasses_Shallow_comm_2 <- rbind(Molasses_Shallow_comm_1,Molasses_Shallow_2001_comm_biomass)
Molasses_Shallow_comm_3 <- rbind(Molasses_Shallow_comm_2,Molasses_Shallow_2002_comm_biomass)
Molasses_Shallow_comm_4 <- rbind(Molasses_Shallow_comm_3,Molasses_Shallow_2003_comm_biomass)
Molasses_Shallow_comm_5 <- rbind(Molasses_Shallow_comm_4,Molasses_Shallow_2004_comm_biomass)
Molasses_Shallow_comm_6 <- rbind(Molasses_Shallow_comm_5,Molasses_Shallow_2005_comm_biomass)
Molasses_Shallow_comm_7 <- rbind(Molasses_Shallow_comm_6,Molasses_Shallow_2006_comm_biomass)
Molasses_Shallow_comm_8 <- rbind(Molasses_Shallow_comm_7,Molasses_Shallow_2007_comm_biomass)
Molasses_Shallow_comm_9 <- rbind(Molasses_Shallow_comm_8,Molasses_Shallow_2008_comm_biomass)
Molasses_Shallow_comm_10 <- rbind(Molasses_Shallow_comm_9,Molasses_Shallow_2009_comm_biomass)
Molasses_Shallow_comm_11<- rbind(Molasses_Shallow_comm_10,Molasses_Shallow_2010_comm_biomass)
Molasses_Shallow_comm_12 <- rbind(Molasses_Shallow_comm_11,Molasses_Shallow_2011_comm_biomass)
Molasses_Shallow_comm_13 <- rbind(Molasses_Shallow_comm_12,Molasses_Shallow_2012_comm_biomass)
Molasses_Shallow_comm_14 <- rbind(Molasses_Shallow_comm_13,Molasses_Shallow_2014_comm_biomass)
Molasses_Shallow_comm_15 <- rbind(Molasses_Shallow_comm_14,Molasses_Shallow_2016_comm_biomass)
Molasses_Shallow_comm_biomass_data_combined <- rbind(Molasses_Shallow_comm_15,Molasses_Shallow_2018_comm_biomass)



export(Molasses_Shallow_herb_biomass_data_combined, "Molasses_Shallow/data/Molasses_Shallow_herbivorous_biomass.csv")
export(Molasses_Shallow_comm_biomass_data_combined, "Molasses_Shallow/data/Molasses_Shallow_commercial_biomass.csv")




#Porter Patch


Porter_Patch_1999 <- import("Porter_Patch/data/Porter_Patch_1999.xls")


Porter_Patch_1999_herb <- merge(Porter_Patch_1999, Herb, by = c("SPECIES_CD"))
Porter_Patch_1999_herb_biomass <- summarise_at(Porter_Patch_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_1999_herb_biomass$Year <- ('1999')
Porter_Patch_1999_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_1999_comm <- merge(Porter_Patch_1999, Comm, by = c("SPECIES_CD"))
Porter_Patch_1999_comm_biomass <- summarise_at(Porter_Patch_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_1999_comm_biomass$Year <- ('1999')
Porter_Patch_1999_comm_biomass$Reef <- ('Porter Patch')


Porter_Patch_2000 <- import("Porter_Patch/data/Porter_Patch_2000.xls")

Porter_Patch_2000_herb <- merge(Porter_Patch_2000, Herb, by = c("SPECIES_CD"))
Porter_Patch_2000_herb_biomass <- summarise_at(Porter_Patch_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2000_herb_biomass$Year <- ('2000')
Porter_Patch_2000_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_2000_comm <- merge(Porter_Patch_2000, Comm, by = c("SPECIES_CD"))
Porter_Patch_2000_comm_biomass <- summarise_at(Porter_Patch_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2000_comm_biomass$Year <- ('2000')
Porter_Patch_2000_comm_biomass$Reef <- ('Porter Patch')

Porter_Patch_2001 <- import("Porter_Patch/data/Porter_Patch_2001.xls")

Porter_Patch_2001_herb <- merge(Porter_Patch_2001, Herb, by = c("SPECIES_CD"))
Porter_Patch_2001_herb_biomass <- summarise_at(Porter_Patch_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2001_herb_biomass$Year <- ('2001')
Porter_Patch_2001_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_2001_comm <- merge(Porter_Patch_2001, Comm, by = c("SPECIES_CD"))
Porter_Patch_2001_comm_biomass <- summarise_at(Porter_Patch_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2001_comm_biomass$Year <- ('2001')
Porter_Patch_2001_comm_biomass$Reef <- ('Porter Patch')


Porter_Patch_2002 <- import("Porter_Patch/data/Porter_Patch_2002.xls")

Porter_Patch_2002_herb <- merge(Porter_Patch_2002, Herb, by = c("SPECIES_CD"))
Porter_Patch_2002_herb_biomass <- summarise_at(Porter_Patch_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2002_herb_biomass$Year <- ('2002')
Porter_Patch_2002_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_2002_comm <- merge(Porter_Patch_2002, Comm, by = c("SPECIES_CD"))
Porter_Patch_2002_comm_biomass <- summarise_at(Porter_Patch_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2002_comm_biomass$Year <- ('2002')
Porter_Patch_2002_comm_biomass$Reef <- ('Porter Patch')


Porter_Patch_2003 <- import("Porter_Patch/data/Porter_Patch_2003.xls")

Porter_Patch_2003_herb <- merge(Porter_Patch_2003, Herb, by = c("SPECIES_CD"))
Porter_Patch_2003_herb_biomass <- summarise_at(Porter_Patch_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2003_herb_biomass$Year <- ('2003')
Porter_Patch_2003_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_2003_comm <- merge(Porter_Patch_2003, Comm, by = c("SPECIES_CD"))
Porter_Patch_2003_comm_biomass <- summarise_at(Porter_Patch_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2003_comm_biomass$Year <- ('2003')
Porter_Patch_2003_comm_biomass$Reef <- ('Porter Patch')


Porter_Patch_2004 <- import("Porter_Patch/data/Porter_Patch_2004.xls")

Porter_Patch_2004_herb <- merge(Porter_Patch_2004, Herb, by = c("SPECIES_CD"))
Porter_Patch_2004_herb_biomass <- summarise_at(Porter_Patch_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2004_herb_biomass$Year <- ('2004')
Porter_Patch_2004_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_2004_comm <- merge(Porter_Patch_2004, Comm, by = c("SPECIES_CD"))
Porter_Patch_2004_comm_biomass <- summarise_at(Porter_Patch_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2004_comm_biomass$Year <- ('2004')
Porter_Patch_2004_comm_biomass$Reef <- ('Porter Patch')

Porter_Patch_2005 <- import("Porter_Patch/data/Porter_Patch_2005.xls")

Porter_Patch_2005_herb <- merge(Porter_Patch_2005, Herb, by = c("SPECIES_CD"))
Porter_Patch_2005_herb_biomass <- summarise_at(Porter_Patch_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2005_herb_biomass$Year <- ('2005')
Porter_Patch_2005_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_2005_comm <- merge(Porter_Patch_2005, Comm, by = c("SPECIES_CD"))
Porter_Patch_2005_comm_biomass <- summarise_at(Porter_Patch_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2005_comm_biomass$Year <- ('2005')
Porter_Patch_2005_comm_biomass$Reef <- ('Porter Patch')


Porter_Patch_2006 <- import("Porter_Patch/data/Porter_Patch_2006.xls")

Porter_Patch_2006_herb <- merge(Porter_Patch_2006, Herb, by = c("SPECIES_CD"))
Porter_Patch_2006_herb_biomass <- summarise_at(Porter_Patch_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2006_herb_biomass$Year <- ('2006')
Porter_Patch_2006_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_2006_comm <- merge(Porter_Patch_2006, Comm, by = c("SPECIES_CD"))
Porter_Patch_2006_comm_biomass <- summarise_at(Porter_Patch_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2006_comm_biomass$Year <- ('2006')
Porter_Patch_2006_comm_biomass$Reef <- ('Porter Patch')

Porter_Patch_2007 <- import("Porter_Patch/data/Porter_Patch_2007.xls")

Porter_Patch_2007_herb <- merge(Porter_Patch_2007, Herb, by = c("SPECIES_CD"))
Porter_Patch_2007_herb_biomass <- summarise_at(Porter_Patch_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2007_herb_biomass$Year <- ('2007')
Porter_Patch_2007_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_2007_comm <- merge(Porter_Patch_2007, Comm, by = c("SPECIES_CD"))
Porter_Patch_2007_comm_biomass <- summarise_at(Porter_Patch_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2007_comm_biomass$Year <- ('2007')
Porter_Patch_2007_comm_biomass$Reef <- ('Porter Patch')


Porter_Patch_2008 <- import("Porter_Patch/data/Porter_Patch_2008.xls")

Porter_Patch_2008_herb <- merge(Porter_Patch_2008, Herb, by = c("SPECIES_CD"))
Porter_Patch_2008_herb_biomass <- summarise_at(Porter_Patch_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2008_herb_biomass$Year <- ('2008')
Porter_Patch_2008_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_2008_comm <- merge(Porter_Patch_2008, Comm, by = c("SPECIES_CD"))
Porter_Patch_2008_comm_biomass <- summarise_at(Porter_Patch_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2008_comm_biomass$Year <- ('2008')
Porter_Patch_2008_comm_biomass$Reef <- ('Porter Patch')


Porter_Patch_2009 <- import("Porter_Patch/data/Porter_Patch_2009.xls")

Porter_Patch_2009_herb <- merge(Porter_Patch_2009, Herb, by = c("SPECIES_CD"))
Porter_Patch_2009_herb_biomass <- summarise_at(Porter_Patch_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2009_herb_biomass$Year <- ('2009')
Porter_Patch_2009_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_2009_comm <- merge(Porter_Patch_2009, Comm, by = c("SPECIES_CD"))
Porter_Patch_2009_comm_biomass <- summarise_at(Porter_Patch_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2009_comm_biomass$Year <- ('2009')
Porter_Patch_2009_comm_biomass$Reef <- ('Porter Patch')


Porter_Patch_2010 <- import("Porter_Patch/data/Porter_Patch_2010.xls")

Porter_Patch_2010_herb <- merge(Porter_Patch_2010, Herb, by = c("SPECIES_CD"))
Porter_Patch_2010_herb_biomass <- summarise_at(Porter_Patch_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2010_herb_biomass$Year <- ('2010')
Porter_Patch_2010_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_2010_comm <- merge(Porter_Patch_2010, Comm, by = c("SPECIES_CD"))
Porter_Patch_2010_comm_biomass <- summarise_at(Porter_Patch_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2010_comm_biomass$Year <- ('2010')
Porter_Patch_2010_comm_biomass$Reef <- ('Porter Patch')

Porter_Patch_2011 <- import("Porter_Patch/data/Porter_Patch_2011.xls")

Porter_Patch_2011_herb <- merge(Porter_Patch_2011, Herb, by = c("SPECIES_CD"))
Porter_Patch_2011_herb_biomass <- summarise_at(Porter_Patch_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2011_herb_biomass$Year <- ('2011')
Porter_Patch_2011_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_2011_comm <- merge(Porter_Patch_2011, Comm, by = c("SPECIES_CD"))
Porter_Patch_2011_comm_biomass <- summarise_at(Porter_Patch_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2011_comm_biomass$Year <- ('2011')
Porter_Patch_2011_comm_biomass$Reef <- ('Porter Patch')



Porter_Patch_2012 <- import("Porter_Patch/data/Porter_Patch_2012.xls")

Porter_Patch_2012_herb <- merge(Porter_Patch_2012, Herb, by = c("SPECIES_CD"))
Porter_Patch_2012_herb_biomass <- summarise_at(Porter_Patch_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2012_herb_biomass$Year <- ('2012')
Porter_Patch_2012_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_2012_comm <- merge(Porter_Patch_2012, Comm, by = c("SPECIES_CD"))
Porter_Patch_2012_comm_biomass <- summarise_at(Porter_Patch_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2012_comm_biomass$Year <- ('2012')
Porter_Patch_2012_comm_biomass$Reef <- ('Porter Patch')


Porter_Patch_2014 <- import("Porter_Patch/data/Porter_Patch_2014.xls")

Porter_Patch_2014_herb <- merge(Porter_Patch_2014, Herb, by = c("SPECIES_CD"))
Porter_Patch_2014_herb_biomass <- summarise_at(Porter_Patch_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2014_herb_biomass$Year <- ('2014')
Porter_Patch_2014_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_2014_comm <- merge(Porter_Patch_2014, Comm, by = c("SPECIES_CD"))
Porter_Patch_2014_comm_biomass <- summarise_at(Porter_Patch_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2014_comm_biomass$Year <- ('2014')
Porter_Patch_2014_comm_biomass$Reef <- ('Porter Patch')


Porter_Patch_2016 <- import("Porter_Patch/data/Porter_Patch_2016.xls")

Porter_Patch_2016_herb <- merge(Porter_Patch_2016, Herb, by = c("SPECIES_CD"))
Porter_Patch_2016_herb_biomass <- summarise_at(Porter_Patch_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2016_herb_biomass$Year <- ('2016')
Porter_Patch_2016_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_2016_comm <- merge(Porter_Patch_2016, Comm, by = c("SPECIES_CD"))
Porter_Patch_2016_comm_biomass <- summarise_at(Porter_Patch_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2016_comm_biomass$Year <- ('2016')
Porter_Patch_2016_comm_biomass$Reef <- ('Porter Patch')


Porter_Patch_2018 <- import("Porter_Patch/data/Porter_Patch_2018.xls")

Porter_Patch_2018_herb <- merge(Porter_Patch_2018, Herb, by = c("SPECIES_CD"))
Porter_Patch_2018_herb_biomass <- summarise_at(Porter_Patch_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2018_herb_biomass$Year <- ('2018')
Porter_Patch_2018_herb_biomass$Reef <- ('Porter Patch')


Porter_Patch_2018_comm <- merge(Porter_Patch_2018, Comm, by = c("SPECIES_CD"))
Porter_Patch_2018_comm_biomass <- summarise_at(Porter_Patch_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Porter_Patch_2018_comm_biomass$Year <- ('2018')
Porter_Patch_2018_comm_biomass$Reef <- ('Porter Patch')



### Combine all years together for herbivorous and commercial seperately



Porter_Patch_herb_1 <- rbind(Porter_Patch_1999_herb_biomass,Porter_Patch_2000_herb_biomass)
Porter_Patch_herb_2 <- rbind(Porter_Patch_herb_1,Porter_Patch_2001_herb_biomass)
Porter_Patch_herb_3 <- rbind(Porter_Patch_herb_2,Porter_Patch_2002_herb_biomass)
Porter_Patch_herb_4 <- rbind(Porter_Patch_herb_3,Porter_Patch_2003_herb_biomass)
Porter_Patch_herb_5 <- rbind(Porter_Patch_herb_4,Porter_Patch_2004_herb_biomass)
Porter_Patch_herb_6 <- rbind(Porter_Patch_herb_5,Porter_Patch_2005_herb_biomass)
Porter_Patch_herb_7 <- rbind(Porter_Patch_herb_6,Porter_Patch_2006_herb_biomass)
Porter_Patch_herb_8 <- rbind(Porter_Patch_herb_7,Porter_Patch_2007_herb_biomass)
Porter_Patch_herb_9 <- rbind(Porter_Patch_herb_8,Porter_Patch_2008_herb_biomass)
Porter_Patch_herb_10 <- rbind(Porter_Patch_herb_9,Porter_Patch_2009_herb_biomass)
Porter_Patch_herb_11<- rbind(Porter_Patch_herb_10,Porter_Patch_2010_herb_biomass)
Porter_Patch_herb_12 <- rbind(Porter_Patch_herb_11,Porter_Patch_2011_herb_biomass)
Porter_Patch_herb_13 <- rbind(Porter_Patch_herb_12,Porter_Patch_2012_herb_biomass)
Porter_Patch_herb_14 <- rbind(Porter_Patch_herb_13,Porter_Patch_2014_herb_biomass)
Porter_Patch_herb_15 <- rbind(Porter_Patch_herb_14,Porter_Patch_2016_herb_biomass)
Porter_Patch_herb_biomass_data_combined <- rbind(Porter_Patch_herb_15,Porter_Patch_2018_herb_biomass)



Porter_Patch_comm_1 <- rbind(Porter_Patch_1999_comm_biomass,Porter_Patch_2000_comm_biomass)
Porter_Patch_comm_2 <- rbind(Porter_Patch_comm_1,Porter_Patch_2001_comm_biomass)
Porter_Patch_comm_3 <- rbind(Porter_Patch_comm_2,Porter_Patch_2002_comm_biomass)
Porter_Patch_comm_4 <- rbind(Porter_Patch_comm_3,Porter_Patch_2003_comm_biomass)
Porter_Patch_comm_5 <- rbind(Porter_Patch_comm_4,Porter_Patch_2004_comm_biomass)
Porter_Patch_comm_6 <- rbind(Porter_Patch_comm_5,Porter_Patch_2005_comm_biomass)
Porter_Patch_comm_7 <- rbind(Porter_Patch_comm_6,Porter_Patch_2006_comm_biomass)
Porter_Patch_comm_8 <- rbind(Porter_Patch_comm_7,Porter_Patch_2007_comm_biomass)
Porter_Patch_comm_9 <- rbind(Porter_Patch_comm_8,Porter_Patch_2008_comm_biomass)
Porter_Patch_comm_10 <- rbind(Porter_Patch_comm_9,Porter_Patch_2009_comm_biomass)
Porter_Patch_comm_11<- rbind(Porter_Patch_comm_10,Porter_Patch_2010_comm_biomass)
Porter_Patch_comm_12 <- rbind(Porter_Patch_comm_11,Porter_Patch_2011_comm_biomass)
Porter_Patch_comm_13 <- rbind(Porter_Patch_comm_12,Porter_Patch_2012_comm_biomass)
Porter_Patch_comm_14 <- rbind(Porter_Patch_comm_13,Porter_Patch_2014_comm_biomass)
Porter_Patch_comm_15 <- rbind(Porter_Patch_comm_14,Porter_Patch_2016_comm_biomass)
Porter_Patch_comm_biomass_data_combined <- rbind(Porter_Patch_comm_15,Porter_Patch_2018_comm_biomass)



export(Porter_Patch_herb_biomass_data_combined, "Porter_Patch/data/Porter_Patch_herbivorous_biomass.csv")
export(Porter_Patch_comm_biomass_data_combined, "Porter_Patch/data/Porter_Patch_commercial_biomass.csv")




#Turtle


Turtle_1999 <- import("Turtle/data/Turtle_1999.xls")


Turtle_1999_herb <- merge(Turtle_1999, Herb, by = c("SPECIES_CD"))
Turtle_1999_herb_biomass <- summarise_at(Turtle_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_1999_herb_biomass$Year <- ('1999')
Turtle_1999_herb_biomass$Reef <- ('Turtle')


Turtle_1999_comm <- merge(Turtle_1999, Comm, by = c("SPECIES_CD"))
Turtle_1999_comm_biomass <- summarise_at(Turtle_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_1999_comm_biomass$Year <- ('1999')
Turtle_1999_comm_biomass$Reef <- ('Turtle')


Turtle_2000 <- import("Turtle/data/Turtle_2000.xls")

Turtle_2000_herb <- merge(Turtle_2000, Herb, by = c("SPECIES_CD"))
Turtle_2000_herb_biomass <- summarise_at(Turtle_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2000_herb_biomass$Year <- ('2000')
Turtle_2000_herb_biomass$Reef <- ('Turtle')


Turtle_2000_comm <- merge(Turtle_2000, Comm, by = c("SPECIES_CD"))
Turtle_2000_comm_biomass <- summarise_at(Turtle_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2000_comm_biomass$Year <- ('2000')
Turtle_2000_comm_biomass$Reef <- ('Turtle')

Turtle_2001 <- import("Turtle/data/Turtle_2001.xls")

Turtle_2001_herb <- merge(Turtle_2001, Herb, by = c("SPECIES_CD"))
Turtle_2001_herb_biomass <- summarise_at(Turtle_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2001_herb_biomass$Year <- ('2001')
Turtle_2001_herb_biomass$Reef <- ('Turtle')


Turtle_2001_comm <- merge(Turtle_2001, Comm, by = c("SPECIES_CD"))
Turtle_2001_comm_biomass <- summarise_at(Turtle_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2001_comm_biomass$Year <- ('2001')
Turtle_2001_comm_biomass$Reef <- ('Turtle')


Turtle_2002 <- import("Turtle/data/Turtle_2002.xls")

Turtle_2002_herb <- merge(Turtle_2002, Herb, by = c("SPECIES_CD"))
Turtle_2002_herb_biomass <- summarise_at(Turtle_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2002_herb_biomass$Year <- ('2002')
Turtle_2002_herb_biomass$Reef <- ('Turtle')


Turtle_2002_comm <- merge(Turtle_2002, Comm, by = c("SPECIES_CD"))
Turtle_2002_comm_biomass <- summarise_at(Turtle_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2002_comm_biomass$Year <- ('2002')
Turtle_2002_comm_biomass$Reef <- ('Turtle')


Turtle_2003 <- import("Turtle/data/Turtle_2003.xls")

Turtle_2003_herb <- merge(Turtle_2003, Herb, by = c("SPECIES_CD"))
Turtle_2003_herb_biomass <- summarise_at(Turtle_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2003_herb_biomass$Year <- ('2003')
Turtle_2003_herb_biomass$Reef <- ('Turtle')


Turtle_2003_comm <- merge(Turtle_2003, Comm, by = c("SPECIES_CD"))
Turtle_2003_comm_biomass <- summarise_at(Turtle_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2003_comm_biomass$Year <- ('2003')
Turtle_2003_comm_biomass$Reef <- ('Turtle')


Turtle_2004 <- import("Turtle/data/Turtle_2004.xls")

Turtle_2004_herb <- merge(Turtle_2004, Herb, by = c("SPECIES_CD"))
Turtle_2004_herb_biomass <- summarise_at(Turtle_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2004_herb_biomass$Year <- ('2004')
Turtle_2004_herb_biomass$Reef <- ('Turtle')


Turtle_2004_comm <- merge(Turtle_2004, Comm, by = c("SPECIES_CD"))
Turtle_2004_comm_biomass <- summarise_at(Turtle_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2004_comm_biomass$Year <- ('2004')
Turtle_2004_comm_biomass$Reef <- ('Turtle')

Turtle_2005 <- import("Turtle/data/Turtle_2005.xls")

Turtle_2005_herb <- merge(Turtle_2005, Herb, by = c("SPECIES_CD"))
Turtle_2005_herb_biomass <- summarise_at(Turtle_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2005_herb_biomass$Year <- ('2005')
Turtle_2005_herb_biomass$Reef <- ('Turtle')


Turtle_2005_comm <- merge(Turtle_2005, Comm, by = c("SPECIES_CD"))
Turtle_2005_comm_biomass <- summarise_at(Turtle_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2005_comm_biomass$Year <- ('2005')
Turtle_2005_comm_biomass$Reef <- ('Turtle')


Turtle_2006 <- import("Turtle/data/Turtle_2006.xls")

Turtle_2006_herb <- merge(Turtle_2006, Herb, by = c("SPECIES_CD"))
Turtle_2006_herb_biomass <- summarise_at(Turtle_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2006_herb_biomass$Year <- ('2006')
Turtle_2006_herb_biomass$Reef <- ('Turtle')


Turtle_2006_comm <- merge(Turtle_2006, Comm, by = c("SPECIES_CD"))
Turtle_2006_comm_biomass <- summarise_at(Turtle_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2006_comm_biomass$Year <- ('2006')
Turtle_2006_comm_biomass$Reef <- ('Turtle')

Turtle_2007 <- import("Turtle/data/Turtle_2007.xls")

Turtle_2007_herb <- merge(Turtle_2007, Herb, by = c("SPECIES_CD"))
Turtle_2007_herb_biomass <- summarise_at(Turtle_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2007_herb_biomass$Year <- ('2007')
Turtle_2007_herb_biomass$Reef <- ('Turtle')


Turtle_2007_comm <- merge(Turtle_2007, Comm, by = c("SPECIES_CD"))
Turtle_2007_comm_biomass <- summarise_at(Turtle_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2007_comm_biomass$Year <- ('2007')
Turtle_2007_comm_biomass$Reef <- ('Turtle')


Turtle_2008 <- import("Turtle/data/Turtle_2008.xls")

Turtle_2008_herb <- merge(Turtle_2008, Herb, by = c("SPECIES_CD"))
Turtle_2008_herb_biomass <- summarise_at(Turtle_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2008_herb_biomass$Year <- ('2008')
Turtle_2008_herb_biomass$Reef <- ('Turtle')


Turtle_2008_comm <- merge(Turtle_2008, Comm, by = c("SPECIES_CD"))
Turtle_2008_comm_biomass <- summarise_at(Turtle_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2008_comm_biomass$Year <- ('2008')
Turtle_2008_comm_biomass$Reef <- ('Turtle')


Turtle_2009 <- import("Turtle/data/Turtle_2009.xls")

Turtle_2009_herb <- merge(Turtle_2009, Herb, by = c("SPECIES_CD"))
Turtle_2009_herb_biomass <- summarise_at(Turtle_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2009_herb_biomass$Year <- ('2009')
Turtle_2009_herb_biomass$Reef <- ('Turtle')


Turtle_2009_comm <- merge(Turtle_2009, Comm, by = c("SPECIES_CD"))
Turtle_2009_comm_biomass <- summarise_at(Turtle_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2009_comm_biomass$Year <- ('2009')
Turtle_2009_comm_biomass$Reef <- ('Turtle')


Turtle_2010 <- import("Turtle/data/Turtle_2010.xls")

Turtle_2010_herb <- merge(Turtle_2010, Herb, by = c("SPECIES_CD"))
Turtle_2010_herb_biomass <- summarise_at(Turtle_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2010_herb_biomass$Year <- ('2010')
Turtle_2010_herb_biomass$Reef <- ('Turtle')


Turtle_2010_comm <- merge(Turtle_2010, Comm, by = c("SPECIES_CD"))
Turtle_2010_comm_biomass <- summarise_at(Turtle_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2010_comm_biomass$Year <- ('2010')
Turtle_2010_comm_biomass$Reef <- ('Turtle')

Turtle_2011 <- import("Turtle/data/Turtle_2011.xls")

Turtle_2011_herb <- merge(Turtle_2011, Herb, by = c("SPECIES_CD"))
Turtle_2011_herb_biomass <- summarise_at(Turtle_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2011_herb_biomass$Year <- ('2011')
Turtle_2011_herb_biomass$Reef <- ('Turtle')


Turtle_2011_comm <- merge(Turtle_2011, Comm, by = c("SPECIES_CD"))
Turtle_2011_comm_biomass <- summarise_at(Turtle_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2011_comm_biomass$Year <- ('2011')
Turtle_2011_comm_biomass$Reef <- ('Turtle')



Turtle_2012 <- import("Turtle/data/Turtle_2012.xls")

Turtle_2012_herb <- merge(Turtle_2012, Herb, by = c("SPECIES_CD"))
Turtle_2012_herb_biomass <- summarise_at(Turtle_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2012_herb_biomass$Year <- ('2012')
Turtle_2012_herb_biomass$Reef <- ('Turtle')


Turtle_2012_comm <- merge(Turtle_2012, Comm, by = c("SPECIES_CD"))
Turtle_2012_comm_biomass <- summarise_at(Turtle_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2012_comm_biomass$Year <- ('2012')
Turtle_2012_comm_biomass$Reef <- ('Turtle')


Turtle_2014 <- import("Turtle/data/Turtle_2014.xls")

Turtle_2014_herb <- merge(Turtle_2014, Herb, by = c("SPECIES_CD"))
Turtle_2014_herb_biomass <- summarise_at(Turtle_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2014_herb_biomass$Year <- ('2014')
Turtle_2014_herb_biomass$Reef <- ('Turtle')


Turtle_2014_comm <- merge(Turtle_2014, Comm, by = c("SPECIES_CD"))
Turtle_2014_comm_biomass <- summarise_at(Turtle_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2014_comm_biomass$Year <- ('2014')
Turtle_2014_comm_biomass$Reef <- ('Turtle')


Turtle_2016 <- import("Turtle/data/Turtle_2016.xls")

Turtle_2016_herb <- merge(Turtle_2016, Herb, by = c("SPECIES_CD"))
Turtle_2016_herb_biomass <- summarise_at(Turtle_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2016_herb_biomass$Year <- ('2016')
Turtle_2016_herb_biomass$Reef <- ('Turtle')


Turtle_2016_comm <- merge(Turtle_2016, Comm, by = c("SPECIES_CD"))
Turtle_2016_comm_biomass <- summarise_at(Turtle_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2016_comm_biomass$Year <- ('2016')
Turtle_2016_comm_biomass$Reef <- ('Turtle')


Turtle_2018 <- import("Turtle/data/Turtle_2018.xls")

Turtle_2018_herb <- merge(Turtle_2018, Herb, by = c("SPECIES_CD"))
Turtle_2018_herb_biomass <- summarise_at(Turtle_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2018_herb_biomass$Year <- ('2018')
Turtle_2018_herb_biomass$Reef <- ('Turtle')


Turtle_2018_comm <- merge(Turtle_2018, Comm, by = c("SPECIES_CD"))
Turtle_2018_comm_biomass <- summarise_at(Turtle_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Turtle_2018_comm_biomass$Year <- ('2018')
Turtle_2018_comm_biomass$Reef <- ('Turtle')



### Combine all years together for herbivorous and commercial seperately



Turtle_herb_1 <- rbind(Turtle_1999_herb_biomass,Turtle_2000_herb_biomass)
Turtle_herb_2 <- rbind(Turtle_herb_1,Turtle_2001_herb_biomass)
Turtle_herb_3 <- rbind(Turtle_herb_2,Turtle_2002_herb_biomass)
Turtle_herb_4 <- rbind(Turtle_herb_3,Turtle_2003_herb_biomass)
Turtle_herb_5 <- rbind(Turtle_herb_4,Turtle_2004_herb_biomass)
Turtle_herb_6 <- rbind(Turtle_herb_5,Turtle_2005_herb_biomass)
Turtle_herb_7 <- rbind(Turtle_herb_6,Turtle_2006_herb_biomass)
Turtle_herb_8 <- rbind(Turtle_herb_7,Turtle_2007_herb_biomass)
Turtle_herb_9 <- rbind(Turtle_herb_8,Turtle_2008_herb_biomass)
Turtle_herb_10 <- rbind(Turtle_herb_9,Turtle_2009_herb_biomass)
Turtle_herb_11<- rbind(Turtle_herb_10,Turtle_2010_herb_biomass)
Turtle_herb_12 <- rbind(Turtle_herb_11,Turtle_2011_herb_biomass)
Turtle_herb_13 <- rbind(Turtle_herb_12,Turtle_2012_herb_biomass)
Turtle_herb_14 <- rbind(Turtle_herb_13,Turtle_2014_herb_biomass)
Turtle_herb_15 <- rbind(Turtle_herb_14,Turtle_2016_herb_biomass)
Turtle_herb_biomass_data_combined <- rbind(Turtle_herb_15,Turtle_2018_herb_biomass)



Turtle_comm_1 <- rbind(Turtle_1999_comm_biomass,Turtle_2000_comm_biomass)
Turtle_comm_2 <- rbind(Turtle_comm_1,Turtle_2001_comm_biomass)
Turtle_comm_3 <- rbind(Turtle_comm_2,Turtle_2002_comm_biomass)
Turtle_comm_4 <- rbind(Turtle_comm_3,Turtle_2003_comm_biomass)
Turtle_comm_5 <- rbind(Turtle_comm_4,Turtle_2004_comm_biomass)
Turtle_comm_6 <- rbind(Turtle_comm_5,Turtle_2005_comm_biomass)
Turtle_comm_7 <- rbind(Turtle_comm_6,Turtle_2006_comm_biomass)
Turtle_comm_8 <- rbind(Turtle_comm_7,Turtle_2007_comm_biomass)
Turtle_comm_9 <- rbind(Turtle_comm_8,Turtle_2008_comm_biomass)
Turtle_comm_10 <- rbind(Turtle_comm_9,Turtle_2009_comm_biomass)
Turtle_comm_11<- rbind(Turtle_comm_10,Turtle_2010_comm_biomass)
Turtle_comm_12 <- rbind(Turtle_comm_11,Turtle_2011_comm_biomass)
Turtle_comm_13 <- rbind(Turtle_comm_12,Turtle_2012_comm_biomass)
Turtle_comm_14 <- rbind(Turtle_comm_13,Turtle_2014_comm_biomass)
Turtle_comm_15 <- rbind(Turtle_comm_14,Turtle_2016_comm_biomass)
Turtle_comm_biomass_data_combined <- rbind(Turtle_comm_15,Turtle_2018_comm_biomass)



export(Turtle_herb_biomass_data_combined, "Turtle/data/Turtle_herbivorous_biomass.csv")
export(Turtle_comm_biomass_data_combined, "Turtle/data/Turtle_commercial_biomass.csv")


#Two Patches


Two_Patches_1999 <- import("Two_Patches/data/Two_Patches_1999.xls")


Two_Patches_1999_herb <- merge(Two_Patches_1999, Herb, by = c("SPECIES_CD"))
Two_Patches_1999_herb_biomass <- summarise_at(Two_Patches_1999_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_1999_herb_biomass$Year <- ('1999')
Two_Patches_1999_herb_biomass$Reef <- ('Two Patches')


Two_Patches_1999_comm <- merge(Two_Patches_1999, Comm, by = c("SPECIES_CD"))
Two_Patches_1999_comm_biomass <- summarise_at(Two_Patches_1999, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_1999_comm_biomass$Year <- ('1999')
Two_Patches_1999_comm_biomass$Reef <- ('Two Patches')


Two_Patches_2000 <- import("Two_Patches/data/Two_Patches_2000.xls")

Two_Patches_2000_herb <- merge(Two_Patches_2000, Herb, by = c("SPECIES_CD"))
Two_Patches_2000_herb_biomass <- summarise_at(Two_Patches_2000_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2000_herb_biomass$Year <- ('2000')
Two_Patches_2000_herb_biomass$Reef <- ('Two Patches')


Two_Patches_2000_comm <- merge(Two_Patches_2000, Comm, by = c("SPECIES_CD"))
Two_Patches_2000_comm_biomass <- summarise_at(Two_Patches_2000, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2000_comm_biomass$Year <- ('2000')
Two_Patches_2000_comm_biomass$Reef <- ('Two Patches')

Two_Patches_2001 <- import("Two_Patches/data/Two_Patches_2001.xls")

Two_Patches_2001_herb <- merge(Two_Patches_2001, Herb, by = c("SPECIES_CD"))
Two_Patches_2001_herb_biomass <- summarise_at(Two_Patches_2001_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2001_herb_biomass$Year <- ('2001')
Two_Patches_2001_herb_biomass$Reef <- ('Two Patches')


Two_Patches_2001_comm <- merge(Two_Patches_2001, Comm, by = c("SPECIES_CD"))
Two_Patches_2001_comm_biomass <- summarise_at(Two_Patches_2001, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2001_comm_biomass$Year <- ('2001')
Two_Patches_2001_comm_biomass$Reef <- ('Two Patches')


Two_Patches_2002 <- import("Two_Patches/data/Two_Patches_2002.xls")

Two_Patches_2002_herb <- merge(Two_Patches_2002, Herb, by = c("SPECIES_CD"))
Two_Patches_2002_herb_biomass <- summarise_at(Two_Patches_2002_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2002_herb_biomass$Year <- ('2002')
Two_Patches_2002_herb_biomass$Reef <- ('Two Patches')


Two_Patches_2002_comm <- merge(Two_Patches_2002, Comm, by = c("SPECIES_CD"))
Two_Patches_2002_comm_biomass <- summarise_at(Two_Patches_2002, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2002_comm_biomass$Year <- ('2002')
Two_Patches_2002_comm_biomass$Reef <- ('Two Patches')


Two_Patches_2003 <- import("Two_Patches/data/Two_Patches_2003.xls")

Two_Patches_2003_herb <- merge(Two_Patches_2003, Herb, by = c("SPECIES_CD"))
Two_Patches_2003_herb_biomass <- summarise_at(Two_Patches_2003_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2003_herb_biomass$Year <- ('2003')
Two_Patches_2003_herb_biomass$Reef <- ('Two Patches')


Two_Patches_2003_comm <- merge(Two_Patches_2003, Comm, by = c("SPECIES_CD"))
Two_Patches_2003_comm_biomass <- summarise_at(Two_Patches_2003, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2003_comm_biomass$Year <- ('2003')
Two_Patches_2003_comm_biomass$Reef <- ('Two Patches')


Two_Patches_2004 <- import("Two_Patches/data/Two_Patches_2004.xls")

Two_Patches_2004_herb <- merge(Two_Patches_2004, Herb, by = c("SPECIES_CD"))
Two_Patches_2004_herb_biomass <- summarise_at(Two_Patches_2004_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2004_herb_biomass$Year <- ('2004')
Two_Patches_2004_herb_biomass$Reef <- ('Two Patches')


Two_Patches_2004_comm <- merge(Two_Patches_2004, Comm, by = c("SPECIES_CD"))
Two_Patches_2004_comm_biomass <- summarise_at(Two_Patches_2004, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2004_comm_biomass$Year <- ('2004')
Two_Patches_2004_comm_biomass$Reef <- ('Two Patches')

Two_Patches_2005 <- import("Two_Patches/data/Two_Patches_2005.xls")

Two_Patches_2005_herb <- merge(Two_Patches_2005, Herb, by = c("SPECIES_CD"))
Two_Patches_2005_herb_biomass <- summarise_at(Two_Patches_2005_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2005_herb_biomass$Year <- ('2005')
Two_Patches_2005_herb_biomass$Reef <- ('Two Patches')


Two_Patches_2005_comm <- merge(Two_Patches_2005, Comm, by = c("SPECIES_CD"))
Two_Patches_2005_comm_biomass <- summarise_at(Two_Patches_2005, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2005_comm_biomass$Year <- ('2005')
Two_Patches_2005_comm_biomass$Reef <- ('Two Patches')


Two_Patches_2006 <- import("Two_Patches/data/Two_Patches_2006.xls")

Two_Patches_2006_herb <- merge(Two_Patches_2006, Herb, by = c("SPECIES_CD"))
Two_Patches_2006_herb_biomass <- summarise_at(Two_Patches_2006_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2006_herb_biomass$Year <- ('2006')
Two_Patches_2006_herb_biomass$Reef <- ('Two Patches')


Two_Patches_2006_comm <- merge(Two_Patches_2006, Comm, by = c("SPECIES_CD"))
Two_Patches_2006_comm_biomass <- summarise_at(Two_Patches_2006, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2006_comm_biomass$Year <- ('2006')
Two_Patches_2006_comm_biomass$Reef <- ('Two Patches')

Two_Patches_2007 <- import("Two_Patches/data/Two_Patches_2007.xls")

Two_Patches_2007_herb <- merge(Two_Patches_2007, Herb, by = c("SPECIES_CD"))
Two_Patches_2007_herb_biomass <- summarise_at(Two_Patches_2007_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2007_herb_biomass$Year <- ('2007')
Two_Patches_2007_herb_biomass$Reef <- ('Two Patches')


Two_Patches_2007_comm <- merge(Two_Patches_2007, Comm, by = c("SPECIES_CD"))
Two_Patches_2007_comm_biomass <- summarise_at(Two_Patches_2007, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2007_comm_biomass$Year <- ('2007')
Two_Patches_2007_comm_biomass$Reef <- ('Two Patches')


Two_Patches_2008 <- import("Two_Patches/data/Two_Patches_2008.xls")

Two_Patches_2008_herb <- merge(Two_Patches_2008, Herb, by = c("SPECIES_CD"))
Two_Patches_2008_herb_biomass <- summarise_at(Two_Patches_2008_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2008_herb_biomass$Year <- ('2008')
Two_Patches_2008_herb_biomass$Reef <- ('Two Patches')


Two_Patches_2008_comm <- merge(Two_Patches_2008, Comm, by = c("SPECIES_CD"))
Two_Patches_2008_comm_biomass <- summarise_at(Two_Patches_2008, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2008_comm_biomass$Year <- ('2008')
Two_Patches_2008_comm_biomass$Reef <- ('Two Patches')


Two_Patches_2009 <- import("Two_Patches/data/Two_Patches_2009.xls")

Two_Patches_2009_herb <- merge(Two_Patches_2009, Herb, by = c("SPECIES_CD"))
Two_Patches_2009_herb_biomass <- summarise_at(Two_Patches_2009_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2009_herb_biomass$Year <- ('2009')
Two_Patches_2009_herb_biomass$Reef <- ('Two Patches')


Two_Patches_2009_comm <- merge(Two_Patches_2009, Comm, by = c("SPECIES_CD"))
Two_Patches_2009_comm_biomass <- summarise_at(Two_Patches_2009, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2009_comm_biomass$Year <- ('2009')
Two_Patches_2009_comm_biomass$Reef <- ('Two Patches')


Two_Patches_2010 <- import("Two_Patches/data/Two_Patches_2010.xls")

Two_Patches_2010_herb <- merge(Two_Patches_2010, Herb, by = c("SPECIES_CD"))
Two_Patches_2010_herb_biomass <- summarise_at(Two_Patches_2010_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2010_herb_biomass$Year <- ('2010')
Two_Patches_2010_herb_biomass$Reef <- ('Two Patches')


Two_Patches_2010_comm <- merge(Two_Patches_2010, Comm, by = c("SPECIES_CD"))
Two_Patches_2010_comm_biomass <- summarise_at(Two_Patches_2010, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2010_comm_biomass$Year <- ('2010')
Two_Patches_2010_comm_biomass$Reef <- ('Two Patches')

Two_Patches_2011 <- import("Two_Patches/data/Two_Patches_2011.xls")

Two_Patches_2011_herb <- merge(Two_Patches_2011, Herb, by = c("SPECIES_CD"))
Two_Patches_2011_herb_biomass <- summarise_at(Two_Patches_2011_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2011_herb_biomass$Year <- ('2011')
Two_Patches_2011_herb_biomass$Reef <- ('Two Patches')


Two_Patches_2011_comm <- merge(Two_Patches_2011, Comm, by = c("SPECIES_CD"))
Two_Patches_2011_comm_biomass <- summarise_at(Two_Patches_2011, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2011_comm_biomass$Year <- ('2011')
Two_Patches_2011_comm_biomass$Reef <- ('Two Patches')



Two_Patches_2012 <- import("Two_Patches/data/Two_Patches_2012.xls")

Two_Patches_2012_herb <- merge(Two_Patches_2012, Herb, by = c("SPECIES_CD"))
Two_Patches_2012_herb_biomass <- summarise_at(Two_Patches_2012_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2012_herb_biomass$Year <- ('2012')
Two_Patches_2012_herb_biomass$Reef <- ('Two Patches')


Two_Patches_2012_comm <- merge(Two_Patches_2012, Comm, by = c("SPECIES_CD"))
Two_Patches_2012_comm_biomass <- summarise_at(Two_Patches_2012, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2012_comm_biomass$Year <- ('2012')
Two_Patches_2012_comm_biomass$Reef <- ('Two Patches')


Two_Patches_2014 <- import("Two_Patches/data/Two_Patches_2014.xls")

Two_Patches_2014_herb <- merge(Two_Patches_2014, Herb, by = c("SPECIES_CD"))
Two_Patches_2014_herb_biomass <- summarise_at(Two_Patches_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2014_herb_biomass$Year <- ('2014')
Two_Patches_2014_herb_biomass$Reef <- ('Two Patches')


Two_Patches_2014_comm <- merge(Two_Patches_2014, Comm, by = c("SPECIES_CD"))
Two_Patches_2014_comm_biomass <- summarise_at(Two_Patches_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2014_comm_biomass$Year <- ('2014')
Two_Patches_2014_comm_biomass$Reef <- ('Two Patches')


Two_Patches_2016 <- import("Two_Patches/data/Two_Patches_2016.xls")

Two_Patches_2016_herb <- merge(Two_Patches_2016, Herb, by = c("SPECIES_CD"))
Two_Patches_2016_herb_biomass <- summarise_at(Two_Patches_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2016_herb_biomass$Year <- ('2016')
Two_Patches_2016_herb_biomass$Reef <- ('Two Patches')


Two_Patches_2016_comm <- merge(Two_Patches_2016, Comm, by = c("SPECIES_CD"))
Two_Patches_2016_comm_biomass <- summarise_at(Two_Patches_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2016_comm_biomass$Year <- ('2016')
Two_Patches_2016_comm_biomass$Reef <- ('Two Patches')


Two_Patches_2018 <- import("Two_Patches/data/Two_Patches_2018.xls")

Two_Patches_2018_herb <- merge(Two_Patches_2018, Herb, by = c("SPECIES_CD"))
Two_Patches_2018_herb_biomass <- summarise_at(Two_Patches_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2018_herb_biomass$Year <- ('2018')
Two_Patches_2018_herb_biomass$Reef <- ('Two Patches')


Two_Patches_2018_comm <- merge(Two_Patches_2018, Comm, by = c("SPECIES_CD"))
Two_Patches_2018_comm_biomass <- summarise_at(Two_Patches_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Two_Patches_2018_comm_biomass$Year <- ('2018')
Two_Patches_2018_comm_biomass$Reef <- ('Two Patches')



### Combine all years together for herbivorous and commercial seperately



Two_Patches_herb_1 <- rbind(Two_Patches_1999_herb_biomass,Two_Patches_2000_herb_biomass)
Two_Patches_herb_2 <- rbind(Two_Patches_herb_1,Two_Patches_2001_herb_biomass)
Two_Patches_herb_3 <- rbind(Two_Patches_herb_2,Two_Patches_2002_herb_biomass)
Two_Patches_herb_4 <- rbind(Two_Patches_herb_3,Two_Patches_2003_herb_biomass)
Two_Patches_herb_5 <- rbind(Two_Patches_herb_4,Two_Patches_2004_herb_biomass)
Two_Patches_herb_6 <- rbind(Two_Patches_herb_5,Two_Patches_2005_herb_biomass)
Two_Patches_herb_7 <- rbind(Two_Patches_herb_6,Two_Patches_2006_herb_biomass)
Two_Patches_herb_8 <- rbind(Two_Patches_herb_7,Two_Patches_2007_herb_biomass)
Two_Patches_herb_9 <- rbind(Two_Patches_herb_8,Two_Patches_2008_herb_biomass)
Two_Patches_herb_10 <- rbind(Two_Patches_herb_9,Two_Patches_2009_herb_biomass)
Two_Patches_herb_11<- rbind(Two_Patches_herb_10,Two_Patches_2010_herb_biomass)
Two_Patches_herb_12 <- rbind(Two_Patches_herb_11,Two_Patches_2011_herb_biomass)
Two_Patches_herb_13 <- rbind(Two_Patches_herb_12,Two_Patches_2012_herb_biomass)
Two_Patches_herb_14 <- rbind(Two_Patches_herb_13,Two_Patches_2014_herb_biomass)
Two_Patches_herb_15 <- rbind(Two_Patches_herb_14,Two_Patches_2016_herb_biomass)
Two_Patches_herb_biomass_data_combined <- rbind(Two_Patches_herb_15,Two_Patches_2018_herb_biomass)



Two_Patches_comm_1 <- rbind(Two_Patches_1999_comm_biomass,Two_Patches_2000_comm_biomass)
Two_Patches_comm_2 <- rbind(Two_Patches_comm_1,Two_Patches_2001_comm_biomass)
Two_Patches_comm_3 <- rbind(Two_Patches_comm_2,Two_Patches_2002_comm_biomass)
Two_Patches_comm_4 <- rbind(Two_Patches_comm_3,Two_Patches_2003_comm_biomass)
Two_Patches_comm_5 <- rbind(Two_Patches_comm_4,Two_Patches_2004_comm_biomass)
Two_Patches_comm_6 <- rbind(Two_Patches_comm_5,Two_Patches_2005_comm_biomass)
Two_Patches_comm_7 <- rbind(Two_Patches_comm_6,Two_Patches_2006_comm_biomass)
Two_Patches_comm_8 <- rbind(Two_Patches_comm_7,Two_Patches_2007_comm_biomass)
Two_Patches_comm_9 <- rbind(Two_Patches_comm_8,Two_Patches_2008_comm_biomass)
Two_Patches_comm_10 <- rbind(Two_Patches_comm_9,Two_Patches_2009_comm_biomass)
Two_Patches_comm_11<- rbind(Two_Patches_comm_10,Two_Patches_2010_comm_biomass)
Two_Patches_comm_12 <- rbind(Two_Patches_comm_11,Two_Patches_2011_comm_biomass)
Two_Patches_comm_13 <- rbind(Two_Patches_comm_12,Two_Patches_2012_comm_biomass)
Two_Patches_comm_14 <- rbind(Two_Patches_comm_13,Two_Patches_2014_comm_biomass)
Two_Patches_comm_15 <- rbind(Two_Patches_comm_14,Two_Patches_2016_comm_biomass)
Two_Patches_comm_biomass_data_combined <- rbind(Two_Patches_comm_15,Two_Patches_2018_comm_biomass)



export(Two_Patches_herb_biomass_data_combined, "Two_Patches/data/Two_Patches_herbivorous_biomass.csv")
export(Two_Patches_comm_biomass_data_combined, "Two_Patches/data/Two_Patches_commercial_biomass.csv")


## Combine all UK

UK_reef_herb_biomass_combined <- rbind(Admiral_herb_biomass_data_combined, Burr_Fish_herb_biomass_data_combined, Carysfort_Deep_herb_biomass_data_combined, Carysfort_Shallow_herb_biomass_data_combined, Conch_Deep_herb_biomass_data_combined, Conch_Shallow_herb_biomass_data_combined, Grecian_Rocks_herb_biomass_data_combined, Molasses_Deep_herb_biomass_data_combined, Molasses_Shallow_herb_biomass_data_combined, Porter_Patch_herb_biomass_data_combined, Turtle_herb_biomass_data_combined, Two_Patches_herb_biomass_data_combined)
UK_reef_herb_biomass_data <- arrange(UK_reef_herb_biomass_combined, Year,Reef, sum, max, min, mean, sd )
UK_reef_herb_biomass_data$REGION <- ("UK")
export(UK_reef_herb_biomass_data, "UK_herbivorous_biomass_data.csv")



UK_reef_comm_biomass_combined <- rbind(Admiral_comm_biomass_data_combined, Burr_Fish_comm_biomass_data_combined, Carysfort_Deep_comm_biomass_data_combined, Carysfort_Shallow_comm_biomass_data_combined, Conch_Deep_comm_biomass_data_combined, Conch_Shallow_comm_biomass_data_combined, Grecian_Rocks_comm_biomass_data_combined, Molasses_Deep_comm_biomass_data_combined, Molasses_Shallow_comm_biomass_data_combined, Porter_Patch_comm_biomass_data_combined, Turtle_comm_biomass_data_combined, Two_Patches_comm_biomass_data_combined)
UK_reef_comm_biomass_data <- arrange(UK_reef_comm_biomass_combined, Year,Reef, sum, max, min, mean, sd )
UK_reef_comm_biomass_data$REGION <- ("UK")
export(UK_reef_comm_biomass_data, "UK_commercial_biomass_data.csv")


## Herbivrous first and repeat code for commercial 

## remove max, min, mean, sd
UK_reef_herb_biomass_data$max <- NULL
UK_reef_herb_biomass_data$min <- NULL
UK_reef_herb_biomass_data$sd <- NULL
UK_reef_herb_biomass_data$REGION <- NULL
UK_reef_herb_biomass_data$mean <- NULL


UK_herb_graph <- UK_reef_herb_biomass_data[order(UK_reef_herb_biomass_data$sum),]

## sort data into 5 different bins using binr 

UK_herb_bins <- bins(UK_herb_graph$sum,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)

view(UK_herb_bins$binct)
#### MANUALLY ADD IN THE VALUES OF EACH BIN. 1-5 WILL BE ADDED TO EACH BIN SUBSET

## from binct make the value of the bins and apply number 1-5 for each bin

UK_herb_1 <- subset(UK_herb_graph, sum == 0)
UK_herb_2 <- subset(UK_herb_graph, sum >= 0.0014643612286758  & sum < 0.0358794031811074 )
UK_herb_3 <- subset(UK_herb_graph, sum >= 0.0358794031811074  & sum < 0.0619726528158242 )
UK_herb_4 <- subset(UK_herb_graph, sum >= 0.0619726528158242  & sum < 0.0885447098399118 )
UK_herb_5 <- subset(UK_herb_graph, sum >= 0.0885447098399118  & sum < 0.186256093285804 )


UK_herb_1$RHI_Fish <- "1"
UK_herb_2$RHI_Fish <- "2"
UK_herb_3$RHI_Fish <- "3"
UK_herb_4$RHI_Fish <- "4"
UK_herb_5$RHI_Fish <- "5"

UK_herb_RHI <- rbind(UK_herb_1,UK_herb_2,UK_herb_3,UK_herb_4,UK_herb_5)  
UK_herb_RHI$SUBREGION <- "UK"



## Commercial 

## remove max, min, mean, sd
UK_reef_comm_biomass_data$max <- NULL
UK_reef_comm_biomass_data$min <- NULL
UK_reef_comm_biomass_data$sd <- NULL
UK_reef_comm_biomass_data$REGION <- NULL
UK_reef_comm_biomass_data$mean <- NULL


UK_comm_graph <- UK_reef_comm_biomass_data[order(UK_reef_comm_biomass_data$sum),]

## sort data into 5 different bins using binr 

UK_comm_bins <- bins(UK_comm_graph$sum,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)

view(UK_comm_bins$binct)

#### MANUALLY ADD IN THE VALUES OF EACH BIN. 1-5 WILL BE ADDED TO EACH BIN SUBSET

## from binct make the value of the bins and apply number 1-5 for each bin

UK_comm_1 <- subset(UK_comm_graph, sum == 0)
UK_comm_2 <- subset(UK_comm_graph, sum >= 0.0110060923447543  & sum <  0.101816602035964 )
UK_comm_3 <- subset(UK_comm_graph, sum >=  0.101816602035964  & sum <  0.206701309604427 )
UK_comm_4 <- subset(UK_comm_graph, sum >= 0.206701309604427   & sum < 0.300343244684643 )
UK_comm_5 <- subset(UK_comm_graph, sum >= 0.300343244684643  & sum <  0.644855087783647 )


UK_comm_1$RHI_Fish <- "1"
UK_comm_2$RHI_Fish <- "2"
UK_comm_3$RHI_Fish <- "3"
UK_comm_4$RHI_Fish <- "4"
UK_comm_5$RHI_Fish <- "5"

UK_comm_RHI <- rbind(UK_comm_1,UK_comm_2,UK_comm_3,UK_comm_4,UK_comm_5)  
UK_comm_RHI$SUBREGION <- "UK"


export(UK_herb_RHI, "UK_herbivorous_RHI.csv")
export(UK_comm_RHI, "UK_commercial_RHI.csv")

















### SE Florida 


setwd("C:/Users/cestes/Documents/Spring_2020/RVC_CREMP_by_REEF/SEF")



#Broward County 1

Broward_County_1_2013 <- import("Broward_County_1/data/Broward_County_1_2013.xls")

Broward_County_1_2013_herb <- merge(Broward_County_1_2013, Herb, by = c("SPECIES_CD"))
Broward_County_1_2013_herb_biomass <- summarise_at(Broward_County_1_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2013_herb_biomass$Year <- ('2013')
Broward_County_1_2013_herb_biomass$Reef <- ('Broward County 2')


Broward_County_1_2013_comm <- merge(Broward_County_1_2013, Comm, by = c("SPECIES_CD"))
Broward_County_1_2013_comm_biomass <- summarise_at(Broward_County_1_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2013_comm_biomass$Year <- ('2013')
Broward_County_1_2013_comm_biomass$Reef <- ('Broward County 2')


Broward_County_1_2014 <- import("Broward_County_1/data/Broward_County_1_2014.xls")

Broward_County_1_2014_herb <- merge(Broward_County_1_2014, Herb, by = c("SPECIES_CD"))
Broward_County_1_2014_herb_biomass <- summarise_at(Broward_County_1_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2014_herb_biomass$Year <- ('2014')
Broward_County_1_2014_herb_biomass$Reef <- ('Broward County 2')


Broward_County_1_2014_comm <- merge(Broward_County_1_2014, Comm, by = c("SPECIES_CD"))
Broward_County_1_2014_comm_biomass <- summarise_at(Broward_County_1_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2014_comm_biomass$Year <- ('2014')
Broward_County_1_2014_comm_biomass$Reef <- ('Broward County 2')


Broward_County_1_2015 <- import("Broward_County_1/data/Broward_County_1_2015.xls")

Broward_County_1_2015_herb <- merge(Broward_County_1_2015, Herb, by = c("SPECIES_CD"))
Broward_County_1_2015_herb_biomass <- summarise_at(Broward_County_1_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2015_herb_biomass$Year <- ('2015')
Broward_County_1_2015_herb_biomass$Reef <- ('Broward County 2')


Broward_County_1_2015_comm <- merge(Broward_County_1_2015, Comm, by = c("SPECIES_CD"))
Broward_County_1_2015_comm_biomass <- summarise_at(Broward_County_1_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2015_comm_biomass$Year <- ('2015')
Broward_County_1_2015_comm_biomass$Reef <- ('Broward County 2')

Broward_County_1_2016 <- import("Broward_County_1/data/Broward_County_1_2016.xls")

Broward_County_1_2016_herb <- merge(Broward_County_1_2016, Herb, by = c("SPECIES_CD"))
Broward_County_1_2016_herb_biomass <- summarise_at(Broward_County_1_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2016_herb_biomass$Year <- ('2016')
Broward_County_1_2016_herb_biomass$Reef <- ('Broward County 2')


Broward_County_1_2016_comm <- merge(Broward_County_1_2016, Comm, by = c("SPECIES_CD"))
Broward_County_1_2016_comm_biomass <- summarise_at(Broward_County_1_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2016_comm_biomass$Year <- ('2016')
Broward_County_1_2016_comm_biomass$Reef <- ('Broward County 2')


Broward_County_1_2018 <- import("Broward_County_1/data/Broward_County_1_2018.xls")

Broward_County_1_2018_herb <- merge(Broward_County_1_2018, Herb, by = c("SPECIES_CD"))
Broward_County_1_2018_herb_biomass <- summarise_at(Broward_County_1_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2018_herb_biomass$Year <- ('2018')
Broward_County_1_2018_herb_biomass$Reef <- ('Broward County 2')


Broward_County_1_2018_comm <- merge(Broward_County_1_2018, Comm, by = c("SPECIES_CD"))
Broward_County_1_2018_comm_biomass <- summarise_at(Broward_County_1_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_1_2018_comm_biomass$Year <- ('2018')
Broward_County_1_2018_comm_biomass$Reef <- ('Broward County 2')



### Combine all years together for herbivorous and commercial seperately



# Broward_County_1_herb_1 <- rbind(Broward_County_1_1999_herb_biomass,Broward_County_1_2000_herb_biomass)
# Broward_County_1_herb_2 <- rbind(Broward_County_1_herb_1,Broward_County_1_2001_herb_biomass)
# Broward_County_1_herb_3 <- rbind(Broward_County_1_herb_2,Broward_County_1_2002_herb_biomass)
# Broward_County_1_herb_4 <- rbind(Broward_County_1_herb_3,Broward_County_1_2003_herb_biomass)
# Broward_County_1_herb_5 <- rbind(Broward_County_1_herb_4,Broward_County_1_2004_herb_biomass)
# Broward_County_1_herb_6 <- rbind(Broward_County_1_herb_5,Broward_County_1_2005_herb_biomass)
# Broward_County_1_herb_7 <- rbind(Broward_County_1_herb_6,Broward_County_1_2006_herb_biomass)
# Broward_County_1_herb_8 <- rbind(Broward_County_1_herb_7,Broward_County_1_2007_herb_biomass)
# Broward_County_1_herb_9 <- rbind(Broward_County_1_herb_8,Broward_County_1_2008_herb_biomass)
# Broward_County_1_herb_10 <- rbind(Broward_County_1_herb_9,Broward_County_1_2009_herb_biomass)
# Broward_County_1_herb_11<- rbind(Broward_County_1_herb_10,Broward_County_1_2010_herb_biomass)
# Broward_County_1_herb_12 <- rbind(Broward_County_1_herb_11,Broward_County_1_2011_herb_biomass)
Broward_County_1_herb_13 <- rbind(Broward_County_1_2013_herb_biomass,Broward_County_1_2014_herb_biomass)
Broward_County_1_herb_14 <- rbind(Broward_County_1_herb_13,Broward_County_1_2015_herb_biomass)
Broward_County_1_herb_15 <- rbind(Broward_County_1_herb_14,Broward_County_1_2016_herb_biomass)
Broward_County_1_herb_biomass_data_combined <- rbind(Broward_County_1_herb_15,Broward_County_1_2018_herb_biomass)



# Broward_County_1_comm_1 <- rbind(Broward_County_1_1999_comm_biomass,Broward_County_1_2000_comm_biomass)
# Broward_County_1_comm_2 <- rbind(Broward_County_1_comm_1,Broward_County_1_2001_comm_biomass)
# Broward_County_1_comm_3 <- rbind(Broward_County_1_comm_2,Broward_County_1_2002_comm_biomass)
# Broward_County_1_comm_4 <- rbind(Broward_County_1_comm_3,Broward_County_1_2003_comm_biomass)
# Broward_County_1_comm_5 <- rbind(Broward_County_1_comm_4,Broward_County_1_2004_comm_biomass)
# Broward_County_1_comm_6 <- rbind(Broward_County_1_comm_5,Broward_County_1_2005_comm_biomass)
# Broward_County_1_comm_7 <- rbind(Broward_County_1_comm_6,Broward_County_1_2006_comm_biomass)
# Broward_County_1_comm_8 <- rbind(Broward_County_1_comm_7,Broward_County_1_2007_comm_biomass)
# Broward_County_1_comm_9 <- rbind(Broward_County_1_comm_8,Broward_County_1_2008_comm_biomass)
# Broward_County_1_comm_10 <- rbind(Broward_County_1_comm_9,Broward_County_1_2009_comm_biomass)
# Broward_County_1_comm_11<- rbind(Broward_County_1_comm_10,Broward_County_1_2010_comm_biomass)
# Broward_County_1_comm_12 <- rbind(Broward_County_1_comm_11,Broward_County_1_2011_comm_biomass)
Broward_County_1_comm_13 <- rbind(Broward_County_1_2013_comm_biomass,Broward_County_1_2014_comm_biomass)
Broward_County_1_comm_14 <- rbind(Broward_County_1_comm_13,Broward_County_1_2015_comm_biomass)
Broward_County_1_comm_15 <- rbind(Broward_County_1_comm_14,Broward_County_1_2016_comm_biomass)
Broward_County_1_comm_biomass_data_combined <- rbind(Broward_County_1_comm_15,Broward_County_1_2018_comm_biomass)



export(Broward_County_1_herb_biomass_data_combined, "Broward_County_1/data/Broward_County_1_herbivorous_biomass.csv")
export(Broward_County_1_comm_biomass_data_combined, "Broward_County_1/data/Broward_County_1_commercial_biomass.csv")





#Broward County 2

Broward_County_2_2013 <- import("Broward_County_2/data/Broward_County_2_2013.xls")

Broward_County_2_2013_herb <- merge(Broward_County_2_2013, Herb, by = c("SPECIES_CD"))
Broward_County_2_2013_herb_biomass <- summarise_at(Broward_County_2_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2013_herb_biomass$Year <- ('2013')
Broward_County_2_2013_herb_biomass$Reef <- ('Broward County 2')


Broward_County_2_2013_comm <- merge(Broward_County_2_2013, Comm, by = c("SPECIES_CD"))
Broward_County_2_2013_comm_biomass <- summarise_at(Broward_County_2_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2013_comm_biomass$Year <- ('2013')
Broward_County_2_2013_comm_biomass$Reef <- ('Broward County 2')


Broward_County_2_2014 <- import("Broward_County_2/data/Broward_County_2_2014.xls")

Broward_County_2_2014_herb <- merge(Broward_County_2_2014, Herb, by = c("SPECIES_CD"))
Broward_County_2_2014_herb_biomass <- summarise_at(Broward_County_2_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2014_herb_biomass$Year <- ('2014')
Broward_County_2_2014_herb_biomass$Reef <- ('Broward County 2')


Broward_County_2_2014_comm <- merge(Broward_County_2_2014, Comm, by = c("SPECIES_CD"))
Broward_County_2_2014_comm_biomass <- summarise_at(Broward_County_2_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2014_comm_biomass$Year <- ('2014')
Broward_County_2_2014_comm_biomass$Reef <- ('Broward County 2')


Broward_County_2_2015 <- import("Broward_County_2/data/Broward_County_2_2015.xls")

Broward_County_2_2015_herb <- merge(Broward_County_2_2015, Herb, by = c("SPECIES_CD"))
Broward_County_2_2015_herb_biomass <- summarise_at(Broward_County_2_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2015_herb_biomass$Year <- ('2015')
Broward_County_2_2015_herb_biomass$Reef <- ('Broward County 2')


Broward_County_2_2015_comm <- merge(Broward_County_2_2015, Comm, by = c("SPECIES_CD"))
Broward_County_2_2015_comm_biomass <- summarise_at(Broward_County_2_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2015_comm_biomass$Year <- ('2015')
Broward_County_2_2015_comm_biomass$Reef <- ('Broward County 2')

Broward_County_2_2016 <- import("Broward_County_2/data/Broward_County_2_2016.xls")

Broward_County_2_2016_herb <- merge(Broward_County_2_2016, Herb, by = c("SPECIES_CD"))
Broward_County_2_2016_herb_biomass <- summarise_at(Broward_County_2_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2016_herb_biomass$Year <- ('2016')
Broward_County_2_2016_herb_biomass$Reef <- ('Broward County 2')


Broward_County_2_2016_comm <- merge(Broward_County_2_2016, Comm, by = c("SPECIES_CD"))
Broward_County_2_2016_comm_biomass <- summarise_at(Broward_County_2_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2016_comm_biomass$Year <- ('2016')
Broward_County_2_2016_comm_biomass$Reef <- ('Broward County 2')


Broward_County_2_2018 <- import("Broward_County_2/data/Broward_County_2_2018.xls")

Broward_County_2_2018_herb <- merge(Broward_County_2_2018, Herb, by = c("SPECIES_CD"))
Broward_County_2_2018_herb_biomass <- summarise_at(Broward_County_2_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2018_herb_biomass$Year <- ('2018')
Broward_County_2_2018_herb_biomass$Reef <- ('Broward County 2')


Broward_County_2_2018_comm <- merge(Broward_County_2_2018, Comm, by = c("SPECIES_CD"))
Broward_County_2_2018_comm_biomass <- summarise_at(Broward_County_2_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_2_2018_comm_biomass$Year <- ('2018')
Broward_County_2_2018_comm_biomass$Reef <- ('Broward County 2')



### Combine all years together for herbivorous and commercial seperately



# Broward_County_2_herb_1 <- rbind(Broward_County_2_1999_herb_biomass,Broward_County_2_2000_herb_biomass)
# Broward_County_2_herb_2 <- rbind(Broward_County_2_herb_1,Broward_County_2_2001_herb_biomass)
# Broward_County_2_herb_3 <- rbind(Broward_County_2_herb_2,Broward_County_2_2002_herb_biomass)
# Broward_County_2_herb_4 <- rbind(Broward_County_2_herb_3,Broward_County_2_2003_herb_biomass)
# Broward_County_2_herb_5 <- rbind(Broward_County_2_herb_4,Broward_County_2_2004_herb_biomass)
# Broward_County_2_herb_6 <- rbind(Broward_County_2_herb_5,Broward_County_2_2005_herb_biomass)
# Broward_County_2_herb_7 <- rbind(Broward_County_2_herb_6,Broward_County_2_2006_herb_biomass)
# Broward_County_2_herb_8 <- rbind(Broward_County_2_herb_7,Broward_County_2_2007_herb_biomass)
# Broward_County_2_herb_9 <- rbind(Broward_County_2_herb_8,Broward_County_2_2008_herb_biomass)
# Broward_County_2_herb_10 <- rbind(Broward_County_2_herb_9,Broward_County_2_2009_herb_biomass)
# Broward_County_2_herb_11<- rbind(Broward_County_2_herb_10,Broward_County_2_2010_herb_biomass)
# Broward_County_2_herb_12 <- rbind(Broward_County_2_herb_11,Broward_County_2_2011_herb_biomass)
Broward_County_2_herb_13 <- rbind(Broward_County_2_2013_herb_biomass,Broward_County_2_2014_herb_biomass)
Broward_County_2_herb_14 <- rbind(Broward_County_2_herb_13,Broward_County_2_2015_herb_biomass)
Broward_County_2_herb_15 <- rbind(Broward_County_2_herb_14,Broward_County_2_2016_herb_biomass)
Broward_County_2_herb_biomass_data_combined <- rbind(Broward_County_2_herb_15,Broward_County_2_2018_herb_biomass)



# Broward_County_2_comm_1 <- rbind(Broward_County_2_1999_comm_biomass,Broward_County_2_2000_comm_biomass)
# Broward_County_2_comm_2 <- rbind(Broward_County_2_comm_1,Broward_County_2_2001_comm_biomass)
# Broward_County_2_comm_3 <- rbind(Broward_County_2_comm_2,Broward_County_2_2002_comm_biomass)
# Broward_County_2_comm_4 <- rbind(Broward_County_2_comm_3,Broward_County_2_2003_comm_biomass)
# Broward_County_2_comm_5 <- rbind(Broward_County_2_comm_4,Broward_County_2_2004_comm_biomass)
# Broward_County_2_comm_6 <- rbind(Broward_County_2_comm_5,Broward_County_2_2005_comm_biomass)
# Broward_County_2_comm_7 <- rbind(Broward_County_2_comm_6,Broward_County_2_2006_comm_biomass)
# Broward_County_2_comm_8 <- rbind(Broward_County_2_comm_7,Broward_County_2_2007_comm_biomass)
# Broward_County_2_comm_9 <- rbind(Broward_County_2_comm_8,Broward_County_2_2008_comm_biomass)
# Broward_County_2_comm_10 <- rbind(Broward_County_2_comm_9,Broward_County_2_2009_comm_biomass)
# Broward_County_2_comm_11<- rbind(Broward_County_2_comm_10,Broward_County_2_2010_comm_biomass)
# Broward_County_2_comm_12 <- rbind(Broward_County_2_comm_11,Broward_County_2_2011_comm_biomass)
Broward_County_2_comm_13 <- rbind(Broward_County_2_2013_comm_biomass,Broward_County_2_2014_comm_biomass)
Broward_County_2_comm_14 <- rbind(Broward_County_2_comm_13,Broward_County_2_2015_comm_biomass)
Broward_County_2_comm_15 <- rbind(Broward_County_2_comm_14,Broward_County_2_2016_comm_biomass)
Broward_County_2_comm_biomass_data_combined <- rbind(Broward_County_2_comm_15,Broward_County_2_2018_comm_biomass)



export(Broward_County_2_herb_biomass_data_combined, "Broward_County_2/data/Broward_County_2_herbivorous_biomass.csv")
export(Broward_County_2_comm_biomass_data_combined, "Broward_County_2/data/Broward_County_2_commercial_biomass.csv")




#Broward County 3

Broward_County_3_2013 <- import("Broward_County_3/data/Broward_County_3_2013.xls")

Broward_County_3_2013_herb <- merge(Broward_County_3_2013, Herb, by = c("SPECIES_CD"))
Broward_County_3_2013_herb_biomass <- summarise_at(Broward_County_3_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2013_herb_biomass$Year <- ('2013')
Broward_County_3_2013_herb_biomass$Reef <- ('Broward County 3')


Broward_County_3_2013_comm <- merge(Broward_County_3_2013, Comm, by = c("SPECIES_CD"))
Broward_County_3_2013_comm_biomass <- summarise_at(Broward_County_3_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2013_comm_biomass$Year <- ('2013')
Broward_County_3_2013_comm_biomass$Reef <- ('Broward County 3')


Broward_County_3_2014 <- import("Broward_County_3/data/Broward_County_3_2014.xls")

Broward_County_3_2014_herb <- merge(Broward_County_3_2014, Herb, by = c("SPECIES_CD"))
Broward_County_3_2014_herb_biomass <- summarise_at(Broward_County_3_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2014_herb_biomass$Year <- ('2014')
Broward_County_3_2014_herb_biomass$Reef <- ('Broward County 3')


Broward_County_3_2014_comm <- merge(Broward_County_3_2014, Comm, by = c("SPECIES_CD"))
Broward_County_3_2014_comm_biomass <- summarise_at(Broward_County_3_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2014_comm_biomass$Year <- ('2014')
Broward_County_3_2014_comm_biomass$Reef <- ('Broward County 3')


Broward_County_3_2015 <- import("Broward_County_3/data/Broward_County_3_2015.xls")

Broward_County_3_2015_herb <- merge(Broward_County_3_2015, Herb, by = c("SPECIES_CD"))
Broward_County_3_2015_herb_biomass <- summarise_at(Broward_County_3_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2015_herb_biomass$Year <- ('2015')
Broward_County_3_2015_herb_biomass$Reef <- ('Broward County 3')


Broward_County_3_2015_comm <- merge(Broward_County_3_2015, Comm, by = c("SPECIES_CD"))
Broward_County_3_2015_comm_biomass <- summarise_at(Broward_County_3_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2015_comm_biomass$Year <- ('2015')
Broward_County_3_2015_comm_biomass$Reef <- ('Broward County 3')

Broward_County_3_2016 <- import("Broward_County_3/data/Broward_County_3_2016.xls")

Broward_County_3_2016_herb <- merge(Broward_County_3_2016, Herb, by = c("SPECIES_CD"))
Broward_County_3_2016_herb_biomass <- summarise_at(Broward_County_3_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2016_herb_biomass$Year <- ('2016')
Broward_County_3_2016_herb_biomass$Reef <- ('Broward County 3')


Broward_County_3_2016_comm <- merge(Broward_County_3_2016, Comm, by = c("SPECIES_CD"))
Broward_County_3_2016_comm_biomass <- summarise_at(Broward_County_3_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2016_comm_biomass$Year <- ('2016')
Broward_County_3_2016_comm_biomass$Reef <- ('Broward County 3')


Broward_County_3_2018 <- import("Broward_County_3/data/Broward_County_3_2018.xls")

Broward_County_3_2018_herb <- merge(Broward_County_3_2018, Herb, by = c("SPECIES_CD"))
Broward_County_3_2018_herb_biomass <- summarise_at(Broward_County_3_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2018_herb_biomass$Year <- ('2018')
Broward_County_3_2018_herb_biomass$Reef <- ('Broward County 3')


Broward_County_3_2018_comm <- merge(Broward_County_3_2018, Comm, by = c("SPECIES_CD"))
Broward_County_3_2018_comm_biomass <- summarise_at(Broward_County_3_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_3_2018_comm_biomass$Year <- ('2018')
Broward_County_3_2018_comm_biomass$Reef <- ('Broward County 3')



### Combine all years together for herbivorous and commercial seperately



# Broward_County_3_herb_1 <- rbind(Broward_County_3_1999_herb_biomass,Broward_County_3_2000_herb_biomass)
# Broward_County_3_herb_2 <- rbind(Broward_County_3_herb_1,Broward_County_3_2001_herb_biomass)
# Broward_County_3_herb_3 <- rbind(Broward_County_3_herb_2,Broward_County_3_2002_herb_biomass)
# Broward_County_3_herb_4 <- rbind(Broward_County_3_herb_3,Broward_County_3_2003_herb_biomass)
# Broward_County_3_herb_5 <- rbind(Broward_County_3_herb_4,Broward_County_3_2004_herb_biomass)
# Broward_County_3_herb_6 <- rbind(Broward_County_3_herb_5,Broward_County_3_2005_herb_biomass)
# Broward_County_3_herb_7 <- rbind(Broward_County_3_herb_6,Broward_County_3_2006_herb_biomass)
# Broward_County_3_herb_8 <- rbind(Broward_County_3_herb_7,Broward_County_3_2007_herb_biomass)
# Broward_County_3_herb_9 <- rbind(Broward_County_3_herb_8,Broward_County_3_2008_herb_biomass)
# Broward_County_3_herb_10 <- rbind(Broward_County_3_herb_9,Broward_County_3_2009_herb_biomass)
# Broward_County_3_herb_11<- rbind(Broward_County_3_herb_10,Broward_County_3_2010_herb_biomass)
# Broward_County_3_herb_12 <- rbind(Broward_County_3_herb_11,Broward_County_3_2011_herb_biomass)
Broward_County_3_herb_13 <- rbind(Broward_County_3_2013_herb_biomass,Broward_County_3_2014_herb_biomass)
Broward_County_3_herb_14 <- rbind(Broward_County_3_herb_13,Broward_County_3_2015_herb_biomass)
Broward_County_3_herb_15 <- rbind(Broward_County_3_herb_14,Broward_County_3_2016_herb_biomass)
Broward_County_3_herb_biomass_data_combined <- rbind(Broward_County_3_herb_15,Broward_County_3_2018_herb_biomass)



# Broward_County_3_comm_1 <- rbind(Broward_County_3_1999_comm_biomass,Broward_County_3_2000_comm_biomass)
# Broward_County_3_comm_2 <- rbind(Broward_County_3_comm_1,Broward_County_3_2001_comm_biomass)
# Broward_County_3_comm_3 <- rbind(Broward_County_3_comm_2,Broward_County_3_2002_comm_biomass)
# Broward_County_3_comm_4 <- rbind(Broward_County_3_comm_3,Broward_County_3_2003_comm_biomass)
# Broward_County_3_comm_5 <- rbind(Broward_County_3_comm_4,Broward_County_3_2004_comm_biomass)
# Broward_County_3_comm_6 <- rbind(Broward_County_3_comm_5,Broward_County_3_2005_comm_biomass)
# Broward_County_3_comm_7 <- rbind(Broward_County_3_comm_6,Broward_County_3_2006_comm_biomass)
# Broward_County_3_comm_8 <- rbind(Broward_County_3_comm_7,Broward_County_3_2007_comm_biomass)
# Broward_County_3_comm_9 <- rbind(Broward_County_3_comm_8,Broward_County_3_2008_comm_biomass)
# Broward_County_3_comm_10 <- rbind(Broward_County_3_comm_9,Broward_County_3_2009_comm_biomass)
# Broward_County_3_comm_11<- rbind(Broward_County_3_comm_10,Broward_County_3_2010_comm_biomass)
# Broward_County_3_comm_12 <- rbind(Broward_County_3_comm_11,Broward_County_3_2011_comm_biomass)
Broward_County_3_comm_13 <- rbind(Broward_County_3_2013_comm_biomass,Broward_County_3_2014_comm_biomass)
Broward_County_3_comm_14 <- rbind(Broward_County_3_comm_13,Broward_County_3_2015_comm_biomass)
Broward_County_3_comm_15 <- rbind(Broward_County_3_comm_14,Broward_County_3_2016_comm_biomass)
Broward_County_3_comm_biomass_data_combined <- rbind(Broward_County_3_comm_15,Broward_County_3_2018_comm_biomass)



export(Broward_County_3_herb_biomass_data_combined, "Broward_County_3/data/Broward_County_3_herbivorous_biomass.csv")
export(Broward_County_3_comm_biomass_data_combined, "Broward_County_3/data/Broward_County_3_commercial_biomass.csv")



#Broward County 4

Broward_County_4_2013 <- import("Broward_County_4/data/Broward_County_4_2013.xls")

Broward_County_4_2013_herb <- merge(Broward_County_4_2013, Herb, by = c("SPECIES_CD"))
Broward_County_4_2013_herb_biomass <- summarise_at(Broward_County_4_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2013_herb_biomass$Year <- ('2013')
Broward_County_4_2013_herb_biomass$Reef <- ('Broward County 4')


Broward_County_4_2013_comm <- merge(Broward_County_4_2013, Comm, by = c("SPECIES_CD"))
Broward_County_4_2013_comm_biomass <- summarise_at(Broward_County_4_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2013_comm_biomass$Year <- ('2013')
Broward_County_4_2013_comm_biomass$Reef <- ('Broward County 4')


Broward_County_4_2014 <- import("Broward_County_4/data/Broward_County_4_2014.xls")

Broward_County_4_2014_herb <- merge(Broward_County_4_2014, Herb, by = c("SPECIES_CD"))
Broward_County_4_2014_herb_biomass <- summarise_at(Broward_County_4_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2014_herb_biomass$Year <- ('2014')
Broward_County_4_2014_herb_biomass$Reef <- ('Broward County 4')


Broward_County_4_2014_comm <- merge(Broward_County_4_2014, Comm, by = c("SPECIES_CD"))
Broward_County_4_2014_comm_biomass <- summarise_at(Broward_County_4_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2014_comm_biomass$Year <- ('2014')
Broward_County_4_2014_comm_biomass$Reef <- ('Broward County 4')


Broward_County_4_2015 <- import("Broward_County_4/data/Broward_County_4_2015.xls")

Broward_County_4_2015_herb <- merge(Broward_County_4_2015, Herb, by = c("SPECIES_CD"))
Broward_County_4_2015_herb_biomass <- summarise_at(Broward_County_4_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2015_herb_biomass$Year <- ('2015')
Broward_County_4_2015_herb_biomass$Reef <- ('Broward County 4')


Broward_County_4_2015_comm <- merge(Broward_County_4_2015, Comm, by = c("SPECIES_CD"))
Broward_County_4_2015_comm_biomass <- summarise_at(Broward_County_4_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2015_comm_biomass$Year <- ('2015')
Broward_County_4_2015_comm_biomass$Reef <- ('Broward County 4')

Broward_County_4_2016 <- import("Broward_County_4/data/Broward_County_4_2016.xls")

Broward_County_4_2016_herb <- merge(Broward_County_4_2016, Herb, by = c("SPECIES_CD"))
Broward_County_4_2016_herb_biomass <- summarise_at(Broward_County_4_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2016_herb_biomass$Year <- ('2016')
Broward_County_4_2016_herb_biomass$Reef <- ('Broward County 4')


Broward_County_4_2016_comm <- merge(Broward_County_4_2016, Comm, by = c("SPECIES_CD"))
Broward_County_4_2016_comm_biomass <- summarise_at(Broward_County_4_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2016_comm_biomass$Year <- ('2016')
Broward_County_4_2016_comm_biomass$Reef <- ('Broward County 4')


Broward_County_4_2018 <- import("Broward_County_4/data/Broward_County_4_2018.xls")

Broward_County_4_2018_herb <- merge(Broward_County_4_2018, Herb, by = c("SPECIES_CD"))
Broward_County_4_2018_herb_biomass <- summarise_at(Broward_County_4_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2018_herb_biomass$Year <- ('2018')
Broward_County_4_2018_herb_biomass$Reef <- ('Broward County 4')


Broward_County_4_2018_comm <- merge(Broward_County_4_2018, Comm, by = c("SPECIES_CD"))
Broward_County_4_2018_comm_biomass <- summarise_at(Broward_County_4_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_4_2018_comm_biomass$Year <- ('2018')
Broward_County_4_2018_comm_biomass$Reef <- ('Broward County 4')



### Combine all years together for herbivorous and commercial seperately



# Broward_County_4_herb_1 <- rbind(Broward_County_4_1999_herb_biomass,Broward_County_4_2000_herb_biomass)
# Broward_County_4_herb_2 <- rbind(Broward_County_4_herb_1,Broward_County_4_2001_herb_biomass)
# Broward_County_4_herb_3 <- rbind(Broward_County_4_herb_2,Broward_County_4_2002_herb_biomass)
# Broward_County_4_herb_4 <- rbind(Broward_County_4_herb_3,Broward_County_4_2003_herb_biomass)
# Broward_County_4_herb_5 <- rbind(Broward_County_4_herb_4,Broward_County_4_2004_herb_biomass)
# Broward_County_4_herb_6 <- rbind(Broward_County_4_herb_5,Broward_County_4_2005_herb_biomass)
# Broward_County_4_herb_7 <- rbind(Broward_County_4_herb_6,Broward_County_4_2006_herb_biomass)
# Broward_County_4_herb_8 <- rbind(Broward_County_4_herb_7,Broward_County_4_2007_herb_biomass)
# Broward_County_4_herb_9 <- rbind(Broward_County_4_herb_8,Broward_County_4_2008_herb_biomass)
# Broward_County_4_herb_10 <- rbind(Broward_County_4_herb_9,Broward_County_4_2009_herb_biomass)
# Broward_County_4_herb_11<- rbind(Broward_County_4_herb_10,Broward_County_4_2010_herb_biomass)
# Broward_County_4_herb_12 <- rbind(Broward_County_4_herb_11,Broward_County_4_2011_herb_biomass)
Broward_County_4_herb_13 <- rbind(Broward_County_4_2013_herb_biomass,Broward_County_4_2014_herb_biomass)
Broward_County_4_herb_14 <- rbind(Broward_County_4_herb_13,Broward_County_4_2015_herb_biomass)
Broward_County_4_herb_15 <- rbind(Broward_County_4_herb_14,Broward_County_4_2016_herb_biomass)
Broward_County_4_herb_biomass_data_combined <- rbind(Broward_County_4_herb_15,Broward_County_4_2018_herb_biomass)



# Broward_County_4_comm_1 <- rbind(Broward_County_4_1999_comm_biomass,Broward_County_4_2000_comm_biomass)
# Broward_County_4_comm_2 <- rbind(Broward_County_4_comm_1,Broward_County_4_2001_comm_biomass)
# Broward_County_4_comm_3 <- rbind(Broward_County_4_comm_2,Broward_County_4_2002_comm_biomass)
# Broward_County_4_comm_4 <- rbind(Broward_County_4_comm_3,Broward_County_4_2003_comm_biomass)
# Broward_County_4_comm_5 <- rbind(Broward_County_4_comm_4,Broward_County_4_2004_comm_biomass)
# Broward_County_4_comm_6 <- rbind(Broward_County_4_comm_5,Broward_County_4_2005_comm_biomass)
# Broward_County_4_comm_7 <- rbind(Broward_County_4_comm_6,Broward_County_4_2006_comm_biomass)
# Broward_County_4_comm_8 <- rbind(Broward_County_4_comm_7,Broward_County_4_2007_comm_biomass)
# Broward_County_4_comm_9 <- rbind(Broward_County_4_comm_8,Broward_County_4_2008_comm_biomass)
# Broward_County_4_comm_10 <- rbind(Broward_County_4_comm_9,Broward_County_4_2009_comm_biomass)
# Broward_County_4_comm_11<- rbind(Broward_County_4_comm_10,Broward_County_4_2010_comm_biomass)
# Broward_County_4_comm_12 <- rbind(Broward_County_4_comm_11,Broward_County_4_2011_comm_biomass)
Broward_County_4_comm_13 <- rbind(Broward_County_4_2013_comm_biomass,Broward_County_4_2014_comm_biomass)
Broward_County_4_comm_14 <- rbind(Broward_County_4_comm_13,Broward_County_4_2015_comm_biomass)
Broward_County_4_comm_15 <- rbind(Broward_County_4_comm_14,Broward_County_4_2016_comm_biomass)
Broward_County_4_comm_biomass_data_combined <- rbind(Broward_County_4_comm_15,Broward_County_4_2018_comm_biomass)



export(Broward_County_4_herb_biomass_data_combined, "Broward_County_4/data/Broward_County_4_herbivorous_biomass.csv")
export(Broward_County_4_comm_biomass_data_combined, "Broward_County_4/data/Broward_County_4_commercial_biomass.csv")



#Broward County 5

Broward_County_5_2013 <- import("Broward_County_5/data/Broward_County_5_2013.xls")

Broward_County_5_2013_herb <- merge(Broward_County_5_2013, Herb, by = c("SPECIES_CD"))
Broward_County_5_2013_herb_biomass <- summarise_at(Broward_County_5_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2013_herb_biomass$Year <- ('2013')
Broward_County_5_2013_herb_biomass$Reef <- ('Broward County 5')


Broward_County_5_2013_comm <- merge(Broward_County_5_2013, Comm, by = c("SPECIES_CD"))
Broward_County_5_2013_comm_biomass <- summarise_at(Broward_County_5_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2013_comm_biomass$Year <- ('2013')
Broward_County_5_2013_comm_biomass$Reef <- ('Broward County 5')


Broward_County_5_2014 <- import("Broward_County_5/data/Broward_County_5_2014.xls")

Broward_County_5_2014_herb <- merge(Broward_County_5_2014, Herb, by = c("SPECIES_CD"))
Broward_County_5_2014_herb_biomass <- summarise_at(Broward_County_5_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2014_herb_biomass$Year <- ('2014')
Broward_County_5_2014_herb_biomass$Reef <- ('Broward County 5')


Broward_County_5_2014_comm <- merge(Broward_County_5_2014, Comm, by = c("SPECIES_CD"))
Broward_County_5_2014_comm_biomass <- summarise_at(Broward_County_5_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2014_comm_biomass$Year <- ('2014')
Broward_County_5_2014_comm_biomass$Reef <- ('Broward County 5')


Broward_County_5_2015 <- import("Broward_County_5/data/Broward_County_5_2015.xls")

Broward_County_5_2015_herb <- merge(Broward_County_5_2015, Herb, by = c("SPECIES_CD"))
Broward_County_5_2015_herb_biomass <- summarise_at(Broward_County_5_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2015_herb_biomass$Year <- ('2015')
Broward_County_5_2015_herb_biomass$Reef <- ('Broward County 5')


Broward_County_5_2015_comm <- merge(Broward_County_5_2015, Comm, by = c("SPECIES_CD"))
Broward_County_5_2015_comm_biomass <- summarise_at(Broward_County_5_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2015_comm_biomass$Year <- ('2015')
Broward_County_5_2015_comm_biomass$Reef <- ('Broward County 5')

Broward_County_5_2016 <- import("Broward_County_5/data/Broward_County_5_2016.xls")

Broward_County_5_2016_herb <- merge(Broward_County_5_2016, Herb, by = c("SPECIES_CD"))
Broward_County_5_2016_herb_biomass <- summarise_at(Broward_County_5_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2016_herb_biomass$Year <- ('2016')
Broward_County_5_2016_herb_biomass$Reef <- ('Broward County 5')


Broward_County_5_2016_comm <- merge(Broward_County_5_2016, Comm, by = c("SPECIES_CD"))
Broward_County_5_2016_comm_biomass <- summarise_at(Broward_County_5_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2016_comm_biomass$Year <- ('2016')
Broward_County_5_2016_comm_biomass$Reef <- ('Broward County 5')


Broward_County_5_2018 <- import("Broward_County_5/data/Broward_County_5_2018.xls")

Broward_County_5_2018_herb <- merge(Broward_County_5_2018, Herb, by = c("SPECIES_CD"))
Broward_County_5_2018_herb_biomass <- summarise_at(Broward_County_5_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2018_herb_biomass$Year <- ('2018')
Broward_County_5_2018_herb_biomass$Reef <- ('Broward County 5')


Broward_County_5_2018_comm <- merge(Broward_County_5_2018, Comm, by = c("SPECIES_CD"))
Broward_County_5_2018_comm_biomass <- summarise_at(Broward_County_5_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_5_2018_comm_biomass$Year <- ('2018')
Broward_County_5_2018_comm_biomass$Reef <- ('Broward County 5')



### Combine all years together for herbivorous and commercial seperately



# Broward_County_5_herb_1 <- rbind(Broward_County_5_1999_herb_biomass,Broward_County_5_2000_herb_biomass)
# Broward_County_5_herb_2 <- rbind(Broward_County_5_herb_1,Broward_County_5_2001_herb_biomass)
# Broward_County_5_herb_3 <- rbind(Broward_County_5_herb_2,Broward_County_5_2002_herb_biomass)
# Broward_County_5_herb_4 <- rbind(Broward_County_5_herb_3,Broward_County_5_2003_herb_biomass)
# Broward_County_5_herb_5 <- rbind(Broward_County_5_herb_4,Broward_County_5_2004_herb_biomass)
# Broward_County_5_herb_6 <- rbind(Broward_County_5_herb_5,Broward_County_5_2005_herb_biomass)
# Broward_County_5_herb_7 <- rbind(Broward_County_5_herb_6,Broward_County_5_2006_herb_biomass)
# Broward_County_5_herb_8 <- rbind(Broward_County_5_herb_7,Broward_County_5_2007_herb_biomass)
# Broward_County_5_herb_9 <- rbind(Broward_County_5_herb_8,Broward_County_5_2008_herb_biomass)
# Broward_County_5_herb_10 <- rbind(Broward_County_5_herb_9,Broward_County_5_2009_herb_biomass)
# Broward_County_5_herb_11<- rbind(Broward_County_5_herb_10,Broward_County_5_2010_herb_biomass)
# Broward_County_5_herb_12 <- rbind(Broward_County_5_herb_11,Broward_County_5_2011_herb_biomass)
Broward_County_5_herb_13 <- rbind(Broward_County_5_2013_herb_biomass,Broward_County_5_2014_herb_biomass)
Broward_County_5_herb_14 <- rbind(Broward_County_5_herb_13,Broward_County_5_2015_herb_biomass)
Broward_County_5_herb_15 <- rbind(Broward_County_5_herb_14,Broward_County_5_2016_herb_biomass)
Broward_County_5_herb_biomass_data_combined <- rbind(Broward_County_5_herb_15,Broward_County_5_2018_herb_biomass)



# Broward_County_5_comm_1 <- rbind(Broward_County_5_1999_comm_biomass,Broward_County_5_2000_comm_biomass)
# Broward_County_5_comm_2 <- rbind(Broward_County_5_comm_1,Broward_County_5_2001_comm_biomass)
# Broward_County_5_comm_3 <- rbind(Broward_County_5_comm_2,Broward_County_5_2002_comm_biomass)
# Broward_County_5_comm_4 <- rbind(Broward_County_5_comm_3,Broward_County_5_2003_comm_biomass)
# Broward_County_5_comm_5 <- rbind(Broward_County_5_comm_4,Broward_County_5_2004_comm_biomass)
# Broward_County_5_comm_6 <- rbind(Broward_County_5_comm_5,Broward_County_5_2005_comm_biomass)
# Broward_County_5_comm_7 <- rbind(Broward_County_5_comm_6,Broward_County_5_2006_comm_biomass)
# Broward_County_5_comm_8 <- rbind(Broward_County_5_comm_7,Broward_County_5_2007_comm_biomass)
# Broward_County_5_comm_9 <- rbind(Broward_County_5_comm_8,Broward_County_5_2008_comm_biomass)
# Broward_County_5_comm_10 <- rbind(Broward_County_5_comm_9,Broward_County_5_2009_comm_biomass)
# Broward_County_5_comm_11<- rbind(Broward_County_5_comm_10,Broward_County_5_2010_comm_biomass)
# Broward_County_5_comm_12 <- rbind(Broward_County_5_comm_11,Broward_County_5_2011_comm_biomass)
Broward_County_5_comm_13 <- rbind(Broward_County_5_2013_comm_biomass,Broward_County_5_2014_comm_biomass)
Broward_County_5_comm_14 <- rbind(Broward_County_5_comm_13,Broward_County_5_2015_comm_biomass)
Broward_County_5_comm_15 <- rbind(Broward_County_5_comm_14,Broward_County_5_2016_comm_biomass)
Broward_County_5_comm_biomass_data_combined <- rbind(Broward_County_5_comm_15,Broward_County_5_2018_comm_biomass)



export(Broward_County_5_herb_biomass_data_combined, "Broward_County_5/data/Broward_County_5_herbivorous_biomass.csv")
export(Broward_County_5_comm_biomass_data_combined, "Broward_County_5/data/Broward_County_5_commercial_biomass.csv")




#Broward County 6

Broward_County_6_2013 <- import("Broward_County_6/data/Broward_County_6_2013.xls")

Broward_County_6_2013_herb <- merge(Broward_County_6_2013, Herb, by = c("SPECIES_CD"))
Broward_County_6_2013_herb_biomass <- summarise_at(Broward_County_6_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2013_herb_biomass$Year <- ('2013')
Broward_County_6_2013_herb_biomass$Reef <- ('Broward County 6')


Broward_County_6_2013_comm <- merge(Broward_County_6_2013, Comm, by = c("SPECIES_CD"))
Broward_County_6_2013_comm_biomass <- summarise_at(Broward_County_6_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2013_comm_biomass$Year <- ('2013')
Broward_County_6_2013_comm_biomass$Reef <- ('Broward County 6')


Broward_County_6_2014 <- import("Broward_County_6/data/Broward_County_6_2014.xls")

Broward_County_6_2014_herb <- merge(Broward_County_6_2014, Herb, by = c("SPECIES_CD"))
Broward_County_6_2014_herb_biomass <- summarise_at(Broward_County_6_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2014_herb_biomass$Year <- ('2014')
Broward_County_6_2014_herb_biomass$Reef <- ('Broward County 6')


Broward_County_6_2014_comm <- merge(Broward_County_6_2014, Comm, by = c("SPECIES_CD"))
Broward_County_6_2014_comm_biomass <- summarise_at(Broward_County_6_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2014_comm_biomass$Year <- ('2014')
Broward_County_6_2014_comm_biomass$Reef <- ('Broward County 6')


Broward_County_6_2015 <- import("Broward_County_6/data/Broward_County_6_2015.xls")

Broward_County_6_2015_herb <- merge(Broward_County_6_2015, Herb, by = c("SPECIES_CD"))
Broward_County_6_2015_herb_biomass <- summarise_at(Broward_County_6_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2015_herb_biomass$Year <- ('2015')
Broward_County_6_2015_herb_biomass$Reef <- ('Broward County 6')


Broward_County_6_2015_comm <- merge(Broward_County_6_2015, Comm, by = c("SPECIES_CD"))
Broward_County_6_2015_comm_biomass <- summarise_at(Broward_County_6_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2015_comm_biomass$Year <- ('2015')
Broward_County_6_2015_comm_biomass$Reef <- ('Broward County 6')

Broward_County_6_2016 <- import("Broward_County_6/data/Broward_County_6_2016.xls")

Broward_County_6_2016_herb <- merge(Broward_County_6_2016, Herb, by = c("SPECIES_CD"))
Broward_County_6_2016_herb_biomass <- summarise_at(Broward_County_6_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2016_herb_biomass$Year <- ('2016')
Broward_County_6_2016_herb_biomass$Reef <- ('Broward County 6')


Broward_County_6_2016_comm <- merge(Broward_County_6_2016, Comm, by = c("SPECIES_CD"))
Broward_County_6_2016_comm_biomass <- summarise_at(Broward_County_6_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2016_comm_biomass$Year <- ('2016')
Broward_County_6_2016_comm_biomass$Reef <- ('Broward County 6')


Broward_County_6_2018 <- import("Broward_County_6/data/Broward_County_6_2018.xls")

Broward_County_6_2018_herb <- merge(Broward_County_6_2018, Herb, by = c("SPECIES_CD"))
Broward_County_6_2018_herb_biomass <- summarise_at(Broward_County_6_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2018_herb_biomass$Year <- ('2018')
Broward_County_6_2018_herb_biomass$Reef <- ('Broward County 6')


Broward_County_6_2018_comm <- merge(Broward_County_6_2018, Comm, by = c("SPECIES_CD"))
Broward_County_6_2018_comm_biomass <- summarise_at(Broward_County_6_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_6_2018_comm_biomass$Year <- ('2018')
Broward_County_6_2018_comm_biomass$Reef <- ('Broward County 6')



### Combine all years together for herbivorous and commercial seperately



# Broward_County_6_herb_1 <- rbind(Broward_County_6_1999_herb_biomass,Broward_County_6_2000_herb_biomass)
# Broward_County_6_herb_2 <- rbind(Broward_County_6_herb_1,Broward_County_6_2001_herb_biomass)
# Broward_County_6_herb_3 <- rbind(Broward_County_6_herb_2,Broward_County_6_2002_herb_biomass)
# Broward_County_6_herb_4 <- rbind(Broward_County_6_herb_3,Broward_County_6_2003_herb_biomass)
# Broward_County_6_herb_5 <- rbind(Broward_County_6_herb_4,Broward_County_6_2004_herb_biomass)
# Broward_County_6_herb_6 <- rbind(Broward_County_6_herb_5,Broward_County_6_2005_herb_biomass)
# Broward_County_6_herb_7 <- rbind(Broward_County_6_herb_6,Broward_County_6_2006_herb_biomass)
# Broward_County_6_herb_8 <- rbind(Broward_County_6_herb_7,Broward_County_6_2007_herb_biomass)
# Broward_County_6_herb_9 <- rbind(Broward_County_6_herb_8,Broward_County_6_2008_herb_biomass)
# Broward_County_6_herb_10 <- rbind(Broward_County_6_herb_9,Broward_County_6_2009_herb_biomass)
# Broward_County_6_herb_11<- rbind(Broward_County_6_herb_10,Broward_County_6_2010_herb_biomass)
# Broward_County_6_herb_12 <- rbind(Broward_County_6_herb_11,Broward_County_6_2011_herb_biomass)
Broward_County_6_herb_13 <- rbind(Broward_County_6_2013_herb_biomass,Broward_County_6_2014_herb_biomass)
Broward_County_6_herb_14 <- rbind(Broward_County_6_herb_13,Broward_County_6_2015_herb_biomass)
Broward_County_6_herb_15 <- rbind(Broward_County_6_herb_14,Broward_County_6_2016_herb_biomass)
Broward_County_6_herb_biomass_data_combined <- rbind(Broward_County_6_herb_15,Broward_County_6_2018_herb_biomass)



# Broward_County_6_comm_1 <- rbind(Broward_County_6_1999_comm_biomass,Broward_County_6_2000_comm_biomass)
# Broward_County_6_comm_2 <- rbind(Broward_County_6_comm_1,Broward_County_6_2001_comm_biomass)
# Broward_County_6_comm_3 <- rbind(Broward_County_6_comm_2,Broward_County_6_2002_comm_biomass)
# Broward_County_6_comm_4 <- rbind(Broward_County_6_comm_3,Broward_County_6_2003_comm_biomass)
# Broward_County_6_comm_5 <- rbind(Broward_County_6_comm_4,Broward_County_6_2004_comm_biomass)
# Broward_County_6_comm_6 <- rbind(Broward_County_6_comm_5,Broward_County_6_2005_comm_biomass)
# Broward_County_6_comm_7 <- rbind(Broward_County_6_comm_6,Broward_County_6_2006_comm_biomass)
# Broward_County_6_comm_8 <- rbind(Broward_County_6_comm_7,Broward_County_6_2007_comm_biomass)
# Broward_County_6_comm_9 <- rbind(Broward_County_6_comm_8,Broward_County_6_2008_comm_biomass)
# Broward_County_6_comm_10 <- rbind(Broward_County_6_comm_9,Broward_County_6_2009_comm_biomass)
# Broward_County_6_comm_11<- rbind(Broward_County_6_comm_10,Broward_County_6_2010_comm_biomass)
# Broward_County_6_comm_12 <- rbind(Broward_County_6_comm_11,Broward_County_6_2011_comm_biomass)
Broward_County_6_comm_13 <- rbind(Broward_County_6_2013_comm_biomass,Broward_County_6_2014_comm_biomass)
Broward_County_6_comm_14 <- rbind(Broward_County_6_comm_13,Broward_County_6_2015_comm_biomass)
Broward_County_6_comm_15 <- rbind(Broward_County_6_comm_14,Broward_County_6_2016_comm_biomass)
Broward_County_6_comm_biomass_data_combined <- rbind(Broward_County_6_comm_15,Broward_County_6_2018_comm_biomass)



export(Broward_County_6_herb_biomass_data_combined, "Broward_County_6/data/Broward_County_6_herbivorous_biomass.csv")
export(Broward_County_6_comm_biomass_data_combined, "Broward_County_6/data/Broward_County_6_commercial_biomass.csv")




#Broward County A

Broward_County_A_2013 <- import("Broward_County_A/data/Broward_County_A_2013.xls")

Broward_County_A_2013_herb <- merge(Broward_County_A_2013, Herb, by = c("SPECIES_CD"))
Broward_County_A_2013_herb_biomass <- summarise_at(Broward_County_A_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2013_herb_biomass$Year <- ('2013')
Broward_County_A_2013_herb_biomass$Reef <- ('Broward County A')


Broward_County_A_2013_comm <- merge(Broward_County_A_2013, Comm, by = c("SPECIES_CD"))
Broward_County_A_2013_comm_biomass <- summarise_at(Broward_County_A_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2013_comm_biomass$Year <- ('2013')
Broward_County_A_2013_comm_biomass$Reef <- ('Broward County A')


Broward_County_A_2014 <- import("Broward_County_A/data/Broward_County_A_2014.xls")

Broward_County_A_2014_herb <- merge(Broward_County_A_2014, Herb, by = c("SPECIES_CD"))
Broward_County_A_2014_herb_biomass <- summarise_at(Broward_County_A_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2014_herb_biomass$Year <- ('2014')
Broward_County_A_2014_herb_biomass$Reef <- ('Broward County A')


Broward_County_A_2014_comm <- merge(Broward_County_A_2014, Comm, by = c("SPECIES_CD"))
Broward_County_A_2014_comm_biomass <- summarise_at(Broward_County_A_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2014_comm_biomass$Year <- ('2014')
Broward_County_A_2014_comm_biomass$Reef <- ('Broward County A')


Broward_County_A_2015 <- import("Broward_County_A/data/Broward_County_A_2015.xls")

Broward_County_A_2015_herb <- merge(Broward_County_A_2015, Herb, by = c("SPECIES_CD"))
Broward_County_A_2015_herb_biomass <- summarise_at(Broward_County_A_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2015_herb_biomass$Year <- ('2015')
Broward_County_A_2015_herb_biomass$Reef <- ('Broward County A')


Broward_County_A_2015_comm <- merge(Broward_County_A_2015, Comm, by = c("SPECIES_CD"))
Broward_County_A_2015_comm_biomass <- summarise_at(Broward_County_A_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2015_comm_biomass$Year <- ('2015')
Broward_County_A_2015_comm_biomass$Reef <- ('Broward County A')

Broward_County_A_2016 <- import("Broward_County_A/data/Broward_County_A_2016.xls")

Broward_County_A_2016_herb <- merge(Broward_County_A_2016, Herb, by = c("SPECIES_CD"))
Broward_County_A_2016_herb_biomass <- summarise_at(Broward_County_A_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2016_herb_biomass$Year <- ('2016')
Broward_County_A_2016_herb_biomass$Reef <- ('Broward County A')


Broward_County_A_2016_comm <- merge(Broward_County_A_2016, Comm, by = c("SPECIES_CD"))
Broward_County_A_2016_comm_biomass <- summarise_at(Broward_County_A_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2016_comm_biomass$Year <- ('2016')
Broward_County_A_2016_comm_biomass$Reef <- ('Broward County A')


Broward_County_A_2018 <- import("Broward_County_A/data/Broward_County_A_2018.xls")

Broward_County_A_2018_herb <- merge(Broward_County_A_2018, Herb, by = c("SPECIES_CD"))
Broward_County_A_2018_herb_biomass <- summarise_at(Broward_County_A_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2018_herb_biomass$Year <- ('2018')
Broward_County_A_2018_herb_biomass$Reef <- ('Broward County A')


Broward_County_A_2018_comm <- merge(Broward_County_A_2018, Comm, by = c("SPECIES_CD"))
Broward_County_A_2018_comm_biomass <- summarise_at(Broward_County_A_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Broward_County_A_2018_comm_biomass$Year <- ('2018')
Broward_County_A_2018_comm_biomass$Reef <- ('Broward County A')



### Combine all years together for herbivorous and commercial seperately



# Broward_County_A_herb_1 <- rbind(Broward_County_A_1999_herb_biomass,Broward_County_A_2000_herb_biomass)
# Broward_County_A_herb_2 <- rbind(Broward_County_A_herb_1,Broward_County_A_2001_herb_biomass)
# Broward_County_A_herb_3 <- rbind(Broward_County_A_herb_2,Broward_County_A_2002_herb_biomass)
# Broward_County_A_herb_4 <- rbind(Broward_County_A_herb_3,Broward_County_A_2003_herb_biomass)
# Broward_County_A_herb_5 <- rbind(Broward_County_A_herb_4,Broward_County_A_2004_herb_biomass)
# Broward_County_A_herb_6 <- rbind(Broward_County_A_herb_5,Broward_County_A_2005_herb_biomass)
# Broward_County_A_herb_7 <- rbind(Broward_County_A_herb_6,Broward_County_A_2006_herb_biomass)
# Broward_County_A_herb_8 <- rbind(Broward_County_A_herb_7,Broward_County_A_2007_herb_biomass)
# Broward_County_A_herb_9 <- rbind(Broward_County_A_herb_8,Broward_County_A_2008_herb_biomass)
# Broward_County_A_herb_10 <- rbind(Broward_County_A_herb_9,Broward_County_A_2009_herb_biomass)
# Broward_County_A_herb_11<- rbind(Broward_County_A_herb_10,Broward_County_A_2010_herb_biomass)
# Broward_County_A_herb_12 <- rbind(Broward_County_A_herb_11,Broward_County_A_2011_herb_biomass)
Broward_County_A_herb_13 <- rbind(Broward_County_A_2013_herb_biomass,Broward_County_A_2014_herb_biomass)
Broward_County_A_herb_14 <- rbind(Broward_County_A_herb_13,Broward_County_A_2015_herb_biomass)
Broward_County_A_herb_15 <- rbind(Broward_County_A_herb_14,Broward_County_A_2016_herb_biomass)
Broward_County_A_herb_biomass_data_combined <- rbind(Broward_County_A_herb_15,Broward_County_A_2018_herb_biomass)



# Broward_County_A_comm_1 <- rbind(Broward_County_A_1999_comm_biomass,Broward_County_A_2000_comm_biomass)
# Broward_County_A_comm_2 <- rbind(Broward_County_A_comm_1,Broward_County_A_2001_comm_biomass)
# Broward_County_A_comm_3 <- rbind(Broward_County_A_comm_2,Broward_County_A_2002_comm_biomass)
# Broward_County_A_comm_4 <- rbind(Broward_County_A_comm_3,Broward_County_A_2003_comm_biomass)
# Broward_County_A_comm_5 <- rbind(Broward_County_A_comm_4,Broward_County_A_2004_comm_biomass)
# Broward_County_A_comm_6 <- rbind(Broward_County_A_comm_5,Broward_County_A_2005_comm_biomass)
# Broward_County_A_comm_7 <- rbind(Broward_County_A_comm_6,Broward_County_A_2006_comm_biomass)
# Broward_County_A_comm_8 <- rbind(Broward_County_A_comm_7,Broward_County_A_2007_comm_biomass)
# Broward_County_A_comm_9 <- rbind(Broward_County_A_comm_8,Broward_County_A_2008_comm_biomass)
# Broward_County_A_comm_10 <- rbind(Broward_County_A_comm_9,Broward_County_A_2009_comm_biomass)
# Broward_County_A_comm_11<- rbind(Broward_County_A_comm_10,Broward_County_A_2010_comm_biomass)
# Broward_County_A_comm_12 <- rbind(Broward_County_A_comm_11,Broward_County_A_2011_comm_biomass)
Broward_County_A_comm_13 <- rbind(Broward_County_A_2013_comm_biomass,Broward_County_A_2014_comm_biomass)
Broward_County_A_comm_14 <- rbind(Broward_County_A_comm_13,Broward_County_A_2015_comm_biomass)
Broward_County_A_comm_15 <- rbind(Broward_County_A_comm_14,Broward_County_A_2016_comm_biomass)
Broward_County_A_comm_biomass_data_combined <- rbind(Broward_County_A_comm_15,Broward_County_A_2018_comm_biomass)



export(Broward_County_A_herb_biomass_data_combined, "Broward_County_A/data/Broward_County_A_herbivorous_biomass.csv")
export(Broward_County_A_comm_biomass_data_combined, "Broward_County_A/data/Broward_County_A_commercial_biomass.csv")




#Dade County 1

Dade_County_1_2013 <- import("Dade_County_1/data/Dade_County_1_2013.xls")

Dade_County_1_2013_herb <- merge(Dade_County_1_2013, Herb, by = c("SPECIES_CD"))
Dade_County_1_2013_herb_biomass <- summarise_at(Dade_County_1_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2013_herb_biomass$Year <- ('2013')
Dade_County_1_2013_herb_biomass$Reef <- ('Dade County 1')


Dade_County_1_2013_comm <- merge(Dade_County_1_2013, Comm, by = c("SPECIES_CD"))
Dade_County_1_2013_comm_biomass <- summarise_at(Dade_County_1_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2013_comm_biomass$Year <- ('2013')
Dade_County_1_2013_comm_biomass$Reef <- ('Dade County 1')


Dade_County_1_2014 <- import("Dade_County_1/data/Dade_County_1_2014.xls")

Dade_County_1_2014_herb <- merge(Dade_County_1_2014, Herb, by = c("SPECIES_CD"))
Dade_County_1_2014_herb_biomass <- summarise_at(Dade_County_1_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2014_herb_biomass$Year <- ('2014')
Dade_County_1_2014_herb_biomass$Reef <- ('Dade County 1')


Dade_County_1_2014_comm <- merge(Dade_County_1_2014, Comm, by = c("SPECIES_CD"))
Dade_County_1_2014_comm_biomass <- summarise_at(Dade_County_1_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2014_comm_biomass$Year <- ('2014')
Dade_County_1_2014_comm_biomass$Reef <- ('Dade County 1')


Dade_County_1_2015 <- import("Dade_County_1/data/Dade_County_1_2015.xls")

Dade_County_1_2015_herb <- merge(Dade_County_1_2015, Herb, by = c("SPECIES_CD"))
Dade_County_1_2015_herb_biomass <- summarise_at(Dade_County_1_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2015_herb_biomass$Year <- ('2015')
Dade_County_1_2015_herb_biomass$Reef <- ('Dade County 1')


Dade_County_1_2015_comm <- merge(Dade_County_1_2015, Comm, by = c("SPECIES_CD"))
Dade_County_1_2015_comm_biomass <- summarise_at(Dade_County_1_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2015_comm_biomass$Year <- ('2015')
Dade_County_1_2015_comm_biomass$Reef <- ('Dade County 1')

Dade_County_1_2016 <- import("Dade_County_1/data/Dade_County_1_2016.xls")

Dade_County_1_2016_herb <- merge(Dade_County_1_2016, Herb, by = c("SPECIES_CD"))
Dade_County_1_2016_herb_biomass <- summarise_at(Dade_County_1_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2016_herb_biomass$Year <- ('2016')
Dade_County_1_2016_herb_biomass$Reef <- ('Dade County 1')


Dade_County_1_2016_comm <- merge(Dade_County_1_2016, Comm, by = c("SPECIES_CD"))
Dade_County_1_2016_comm_biomass <- summarise_at(Dade_County_1_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2016_comm_biomass$Year <- ('2016')
Dade_County_1_2016_comm_biomass$Reef <- ('Dade County 1')


Dade_County_1_2018 <- import("Dade_County_1/data/Dade_County_1_2018.xls")

Dade_County_1_2018_herb <- merge(Dade_County_1_2018, Herb, by = c("SPECIES_CD"))
Dade_County_1_2018_herb_biomass <- summarise_at(Dade_County_1_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2018_herb_biomass$Year <- ('2018')
Dade_County_1_2018_herb_biomass$Reef <- ('Dade County 1')


Dade_County_1_2018_comm <- merge(Dade_County_1_2018, Comm, by = c("SPECIES_CD"))
Dade_County_1_2018_comm_biomass <- summarise_at(Dade_County_1_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_1_2018_comm_biomass$Year <- ('2018')
Dade_County_1_2018_comm_biomass$Reef <- ('Dade County 1')



### Combine all years together for herbivorous and commercial seperately



# Dade_County_1_herb_1 <- rbind(Dade_County_1_1999_herb_biomass,Dade_County_1_2000_herb_biomass)
# Dade_County_1_herb_2 <- rbind(Dade_County_1_herb_1,Dade_County_1_2001_herb_biomass)
# Dade_County_1_herb_3 <- rbind(Dade_County_1_herb_2,Dade_County_1_2002_herb_biomass)
# Dade_County_1_herb_4 <- rbind(Dade_County_1_herb_3,Dade_County_1_2003_herb_biomass)
# Dade_County_1_herb_5 <- rbind(Dade_County_1_herb_4,Dade_County_1_2004_herb_biomass)
# Dade_County_1_herb_6 <- rbind(Dade_County_1_herb_5,Dade_County_1_2005_herb_biomass)
# Dade_County_1_herb_7 <- rbind(Dade_County_1_herb_6,Dade_County_1_2006_herb_biomass)
# Dade_County_1_herb_8 <- rbind(Dade_County_1_herb_7,Dade_County_1_2007_herb_biomass)
# Dade_County_1_herb_9 <- rbind(Dade_County_1_herb_8,Dade_County_1_2008_herb_biomass)
# Dade_County_1_herb_10 <- rbind(Dade_County_1_herb_9,Dade_County_1_2009_herb_biomass)
# Dade_County_1_herb_11<- rbind(Dade_County_1_herb_10,Dade_County_1_2010_herb_biomass)
# Dade_County_1_herb_12 <- rbind(Dade_County_1_herb_11,Dade_County_1_2011_herb_biomass)
Dade_County_1_herb_13 <- rbind(Dade_County_1_2013_herb_biomass,Dade_County_1_2014_herb_biomass)
Dade_County_1_herb_14 <- rbind(Dade_County_1_herb_13,Dade_County_1_2015_herb_biomass)
Dade_County_1_herb_15 <- rbind(Dade_County_1_herb_14,Dade_County_1_2016_herb_biomass)
Dade_County_1_herb_biomass_data_combined <- rbind(Dade_County_1_herb_15,Dade_County_1_2018_herb_biomass)



# Dade_County_1_comm_1 <- rbind(Dade_County_1_1999_comm_biomass,Dade_County_1_2000_comm_biomass)
# Dade_County_1_comm_2 <- rbind(Dade_County_1_comm_1,Dade_County_1_2001_comm_biomass)
# Dade_County_1_comm_3 <- rbind(Dade_County_1_comm_2,Dade_County_1_2002_comm_biomass)
# Dade_County_1_comm_4 <- rbind(Dade_County_1_comm_3,Dade_County_1_2003_comm_biomass)
# Dade_County_1_comm_5 <- rbind(Dade_County_1_comm_4,Dade_County_1_2004_comm_biomass)
# Dade_County_1_comm_6 <- rbind(Dade_County_1_comm_5,Dade_County_1_2005_comm_biomass)
# Dade_County_1_comm_7 <- rbind(Dade_County_1_comm_6,Dade_County_1_2006_comm_biomass)
# Dade_County_1_comm_8 <- rbind(Dade_County_1_comm_7,Dade_County_1_2007_comm_biomass)
# Dade_County_1_comm_9 <- rbind(Dade_County_1_comm_8,Dade_County_1_2008_comm_biomass)
# Dade_County_1_comm_10 <- rbind(Dade_County_1_comm_9,Dade_County_1_2009_comm_biomass)
# Dade_County_1_comm_11<- rbind(Dade_County_1_comm_10,Dade_County_1_2010_comm_biomass)
# Dade_County_1_comm_12 <- rbind(Dade_County_1_comm_11,Dade_County_1_2011_comm_biomass)
Dade_County_1_comm_13 <- rbind(Dade_County_1_2013_comm_biomass,Dade_County_1_2014_comm_biomass)
Dade_County_1_comm_14 <- rbind(Dade_County_1_comm_13,Dade_County_1_2015_comm_biomass)
Dade_County_1_comm_15 <- rbind(Dade_County_1_comm_14,Dade_County_1_2016_comm_biomass)
Dade_County_1_comm_biomass_data_combined <- rbind(Dade_County_1_comm_15,Dade_County_1_2018_comm_biomass)



export(Dade_County_1_herb_biomass_data_combined, "Dade_County_1/data/Dade_County_1_herbivorous_biomass.csv")
export(Dade_County_1_comm_biomass_data_combined, "Dade_County_1/data/Dade_County_1_commercial_biomass.csv")



#Dade County 2

Dade_County_2_2013 <- import("Dade_County_2/data/Dade_County_2_2013.xls")

Dade_County_2_2013_herb <- merge(Dade_County_2_2013, Herb, by = c("SPECIES_CD"))
Dade_County_2_2013_herb_biomass <- summarise_at(Dade_County_2_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2013_herb_biomass$Year <- ('2013')
Dade_County_2_2013_herb_biomass$Reef <- ('Dade County 2')


Dade_County_2_2013_comm <- merge(Dade_County_2_2013, Comm, by = c("SPECIES_CD"))
Dade_County_2_2013_comm_biomass <- summarise_at(Dade_County_2_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2013_comm_biomass$Year <- ('2013')
Dade_County_2_2013_comm_biomass$Reef <- ('Dade County 2')


Dade_County_2_2014 <- import("Dade_County_2/data/Dade_County_2_2014.xls")

Dade_County_2_2014_herb <- merge(Dade_County_2_2014, Herb, by = c("SPECIES_CD"))
Dade_County_2_2014_herb_biomass <- summarise_at(Dade_County_2_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2014_herb_biomass$Year <- ('2014')
Dade_County_2_2014_herb_biomass$Reef <- ('Dade County 2')


Dade_County_2_2014_comm <- merge(Dade_County_2_2014, Comm, by = c("SPECIES_CD"))
Dade_County_2_2014_comm_biomass <- summarise_at(Dade_County_2_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2014_comm_biomass$Year <- ('2014')
Dade_County_2_2014_comm_biomass$Reef <- ('Dade County 2')


Dade_County_2_2015 <- import("Dade_County_2/data/Dade_County_2_2015.xls")

Dade_County_2_2015_herb <- merge(Dade_County_2_2015, Herb, by = c("SPECIES_CD"))
Dade_County_2_2015_herb_biomass <- summarise_at(Dade_County_2_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2015_herb_biomass$Year <- ('2015')
Dade_County_2_2015_herb_biomass$Reef <- ('Dade County 2')


Dade_County_2_2015_comm <- merge(Dade_County_2_2015, Comm, by = c("SPECIES_CD"))
Dade_County_2_2015_comm_biomass <- summarise_at(Dade_County_2_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2015_comm_biomass$Year <- ('2015')
Dade_County_2_2015_comm_biomass$Reef <- ('Dade County 2')

Dade_County_2_2016 <- import("Dade_County_2/data/Dade_County_2_2016.xls")

Dade_County_2_2016_herb <- merge(Dade_County_2_2016, Herb, by = c("SPECIES_CD"))
Dade_County_2_2016_herb_biomass <- summarise_at(Dade_County_2_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2016_herb_biomass$Year <- ('2016')
Dade_County_2_2016_herb_biomass$Reef <- ('Dade County 2')


Dade_County_2_2016_comm <- merge(Dade_County_2_2016, Comm, by = c("SPECIES_CD"))
Dade_County_2_2016_comm_biomass <- summarise_at(Dade_County_2_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2016_comm_biomass$Year <- ('2016')
Dade_County_2_2016_comm_biomass$Reef <- ('Dade County 2')


Dade_County_2_2018 <- import("Dade_County_2/data/Dade_County_2_2018.xls")

Dade_County_2_2018_herb <- merge(Dade_County_2_2018, Herb, by = c("SPECIES_CD"))
Dade_County_2_2018_herb_biomass <- summarise_at(Dade_County_2_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2018_herb_biomass$Year <- ('2018')
Dade_County_2_2018_herb_biomass$Reef <- ('Dade County 2')


Dade_County_2_2018_comm <- merge(Dade_County_2_2018, Comm, by = c("SPECIES_CD"))
Dade_County_2_2018_comm_biomass <- summarise_at(Dade_County_2_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_2_2018_comm_biomass$Year <- ('2018')
Dade_County_2_2018_comm_biomass$Reef <- ('Dade County 2')



### Combine all years together for herbivorous and commercial seperately



# Dade_County_2_herb_1 <- rbind(Dade_County_2_1999_herb_biomass,Dade_County_2_2000_herb_biomass)
# Dade_County_2_herb_2 <- rbind(Dade_County_2_herb_1,Dade_County_2_2001_herb_biomass)
# Dade_County_2_herb_3 <- rbind(Dade_County_2_herb_2,Dade_County_2_2002_herb_biomass)
# Dade_County_2_herb_4 <- rbind(Dade_County_2_herb_3,Dade_County_2_2003_herb_biomass)
# Dade_County_2_herb_5 <- rbind(Dade_County_2_herb_4,Dade_County_2_2004_herb_biomass)
# Dade_County_2_herb_6 <- rbind(Dade_County_2_herb_5,Dade_County_2_2005_herb_biomass)
# Dade_County_2_herb_7 <- rbind(Dade_County_2_herb_6,Dade_County_2_2006_herb_biomass)
# Dade_County_2_herb_8 <- rbind(Dade_County_2_herb_7,Dade_County_2_2007_herb_biomass)
# Dade_County_2_herb_9 <- rbind(Dade_County_2_herb_8,Dade_County_2_2008_herb_biomass)
# Dade_County_2_herb_10 <- rbind(Dade_County_2_herb_9,Dade_County_2_2009_herb_biomass)
# Dade_County_2_herb_11<- rbind(Dade_County_2_herb_10,Dade_County_2_2010_herb_biomass)
# Dade_County_2_herb_12 <- rbind(Dade_County_2_herb_11,Dade_County_2_2011_herb_biomass)
Dade_County_2_herb_13 <- rbind(Dade_County_2_2013_herb_biomass,Dade_County_2_2014_herb_biomass)
Dade_County_2_herb_14 <- rbind(Dade_County_2_herb_13,Dade_County_2_2015_herb_biomass)
Dade_County_2_herb_15 <- rbind(Dade_County_2_herb_14,Dade_County_2_2016_herb_biomass)
Dade_County_2_herb_biomass_data_combined <- rbind(Dade_County_2_herb_15,Dade_County_2_2018_herb_biomass)



# Dade_County_2_comm_1 <- rbind(Dade_County_2_1999_comm_biomass,Dade_County_2_2000_comm_biomass)
# Dade_County_2_comm_2 <- rbind(Dade_County_2_comm_1,Dade_County_2_2001_comm_biomass)
# Dade_County_2_comm_3 <- rbind(Dade_County_2_comm_2,Dade_County_2_2002_comm_biomass)
# Dade_County_2_comm_4 <- rbind(Dade_County_2_comm_3,Dade_County_2_2003_comm_biomass)
# Dade_County_2_comm_5 <- rbind(Dade_County_2_comm_4,Dade_County_2_2004_comm_biomass)
# Dade_County_2_comm_6 <- rbind(Dade_County_2_comm_5,Dade_County_2_2005_comm_biomass)
# Dade_County_2_comm_7 <- rbind(Dade_County_2_comm_6,Dade_County_2_2006_comm_biomass)
# Dade_County_2_comm_8 <- rbind(Dade_County_2_comm_7,Dade_County_2_2007_comm_biomass)
# Dade_County_2_comm_9 <- rbind(Dade_County_2_comm_8,Dade_County_2_2008_comm_biomass)
# Dade_County_2_comm_10 <- rbind(Dade_County_2_comm_9,Dade_County_2_2009_comm_biomass)
# Dade_County_2_comm_11<- rbind(Dade_County_2_comm_10,Dade_County_2_2010_comm_biomass)
# Dade_County_2_comm_12 <- rbind(Dade_County_2_comm_11,Dade_County_2_2011_comm_biomass)
Dade_County_2_comm_13 <- rbind(Dade_County_2_2013_comm_biomass,Dade_County_2_2014_comm_biomass)
Dade_County_2_comm_14 <- rbind(Dade_County_2_comm_13,Dade_County_2_2015_comm_biomass)
Dade_County_2_comm_15 <- rbind(Dade_County_2_comm_14,Dade_County_2_2016_comm_biomass)
Dade_County_2_comm_biomass_data_combined <- rbind(Dade_County_2_comm_15,Dade_County_2_2018_comm_biomass)



export(Dade_County_2_herb_biomass_data_combined, "Dade_County_2/data/Dade_County_2_herbivorous_biomass.csv")
export(Dade_County_2_comm_biomass_data_combined, "Dade_County_2/data/Dade_County_2_commercial_biomass.csv")



#Dade County 3

Dade_County_3_2013 <- import("Dade_County_3/data/Dade_County_3_2013.xls")

Dade_County_3_2013_herb <- merge(Dade_County_3_2013, Herb, by = c("SPECIES_CD"))
Dade_County_3_2013_herb_biomass <- summarise_at(Dade_County_3_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2013_herb_biomass$Year <- ('2013')
Dade_County_3_2013_herb_biomass$Reef <- ('Dade County 3')


Dade_County_3_2013_comm <- merge(Dade_County_3_2013, Comm, by = c("SPECIES_CD"))
Dade_County_3_2013_comm_biomass <- summarise_at(Dade_County_3_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2013_comm_biomass$Year <- ('2013')
Dade_County_3_2013_comm_biomass$Reef <- ('Dade County 3')


Dade_County_3_2014 <- import("Dade_County_3/data/Dade_County_3_2014.xls")

Dade_County_3_2014_herb <- merge(Dade_County_3_2014, Herb, by = c("SPECIES_CD"))
Dade_County_3_2014_herb_biomass <- summarise_at(Dade_County_3_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2014_herb_biomass$Year <- ('2014')
Dade_County_3_2014_herb_biomass$Reef <- ('Dade County 3')


Dade_County_3_2014_comm <- merge(Dade_County_3_2014, Comm, by = c("SPECIES_CD"))
Dade_County_3_2014_comm_biomass <- summarise_at(Dade_County_3_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2014_comm_biomass$Year <- ('2014')
Dade_County_3_2014_comm_biomass$Reef <- ('Dade County 3')


Dade_County_3_2015 <- import("Dade_County_3/data/Dade_County_3_2015.xls")

Dade_County_3_2015_herb <- merge(Dade_County_3_2015, Herb, by = c("SPECIES_CD"))
Dade_County_3_2015_herb_biomass <- summarise_at(Dade_County_3_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2015_herb_biomass$Year <- ('2015')
Dade_County_3_2015_herb_biomass$Reef <- ('Dade County 3')


Dade_County_3_2015_comm <- merge(Dade_County_3_2015, Comm, by = c("SPECIES_CD"))
Dade_County_3_2015_comm_biomass <- summarise_at(Dade_County_3_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2015_comm_biomass$Year <- ('2015')
Dade_County_3_2015_comm_biomass$Reef <- ('Dade County 3')

Dade_County_3_2016 <- import("Dade_County_3/data/Dade_County_3_2016.xls")

Dade_County_3_2016_herb <- merge(Dade_County_3_2016, Herb, by = c("SPECIES_CD"))
Dade_County_3_2016_herb_biomass <- summarise_at(Dade_County_3_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2016_herb_biomass$Year <- ('2016')
Dade_County_3_2016_herb_biomass$Reef <- ('Dade County 3')


Dade_County_3_2016_comm <- merge(Dade_County_3_2016, Comm, by = c("SPECIES_CD"))
Dade_County_3_2016_comm_biomass <- summarise_at(Dade_County_3_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2016_comm_biomass$Year <- ('2016')
Dade_County_3_2016_comm_biomass$Reef <- ('Dade County 3')


Dade_County_3_2018 <- import("Dade_County_3/data/Dade_County_3_2018.xls")

Dade_County_3_2018_herb <- merge(Dade_County_3_2018, Herb, by = c("SPECIES_CD"))
Dade_County_3_2018_herb_biomass <- summarise_at(Dade_County_3_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2018_herb_biomass$Year <- ('2018')
Dade_County_3_2018_herb_biomass$Reef <- ('Dade County 3')


Dade_County_3_2018_comm <- merge(Dade_County_3_2018, Comm, by = c("SPECIES_CD"))
Dade_County_3_2018_comm_biomass <- summarise_at(Dade_County_3_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_3_2018_comm_biomass$Year <- ('2018')
Dade_County_3_2018_comm_biomass$Reef <- ('Dade County 3')



### Combine all years together for herbivorous and commercial seperately



# Dade_County_3_herb_1 <- rbind(Dade_County_3_1999_herb_biomass,Dade_County_3_2000_herb_biomass)
# Dade_County_3_herb_2 <- rbind(Dade_County_3_herb_1,Dade_County_3_2001_herb_biomass)
# Dade_County_3_herb_3 <- rbind(Dade_County_3_herb_2,Dade_County_3_2002_herb_biomass)
# Dade_County_3_herb_4 <- rbind(Dade_County_3_herb_3,Dade_County_3_2003_herb_biomass)
# Dade_County_3_herb_5 <- rbind(Dade_County_3_herb_4,Dade_County_3_2004_herb_biomass)
# Dade_County_3_herb_6 <- rbind(Dade_County_3_herb_5,Dade_County_3_2005_herb_biomass)
# Dade_County_3_herb_7 <- rbind(Dade_County_3_herb_6,Dade_County_3_2006_herb_biomass)
# Dade_County_3_herb_8 <- rbind(Dade_County_3_herb_7,Dade_County_3_2007_herb_biomass)
# Dade_County_3_herb_9 <- rbind(Dade_County_3_herb_8,Dade_County_3_2008_herb_biomass)
# Dade_County_3_herb_10 <- rbind(Dade_County_3_herb_9,Dade_County_3_2009_herb_biomass)
# Dade_County_3_herb_11<- rbind(Dade_County_3_herb_10,Dade_County_3_2010_herb_biomass)
# Dade_County_3_herb_12 <- rbind(Dade_County_3_herb_11,Dade_County_3_2011_herb_biomass)
Dade_County_3_herb_13 <- rbind(Dade_County_3_2013_herb_biomass,Dade_County_3_2014_herb_biomass)
Dade_County_3_herb_14 <- rbind(Dade_County_3_herb_13,Dade_County_3_2015_herb_biomass)
Dade_County_3_herb_15 <- rbind(Dade_County_3_herb_14,Dade_County_3_2016_herb_biomass)
Dade_County_3_herb_biomass_data_combined <- rbind(Dade_County_3_herb_15,Dade_County_3_2018_herb_biomass)



# Dade_County_3_comm_1 <- rbind(Dade_County_3_1999_comm_biomass,Dade_County_3_2000_comm_biomass)
# Dade_County_3_comm_2 <- rbind(Dade_County_3_comm_1,Dade_County_3_2001_comm_biomass)
# Dade_County_3_comm_3 <- rbind(Dade_County_3_comm_2,Dade_County_3_2002_comm_biomass)
# Dade_County_3_comm_4 <- rbind(Dade_County_3_comm_3,Dade_County_3_2003_comm_biomass)
# Dade_County_3_comm_5 <- rbind(Dade_County_3_comm_4,Dade_County_3_2004_comm_biomass)
# Dade_County_3_comm_6 <- rbind(Dade_County_3_comm_5,Dade_County_3_2005_comm_biomass)
# Dade_County_3_comm_7 <- rbind(Dade_County_3_comm_6,Dade_County_3_2006_comm_biomass)
# Dade_County_3_comm_8 <- rbind(Dade_County_3_comm_7,Dade_County_3_2007_comm_biomass)
# Dade_County_3_comm_9 <- rbind(Dade_County_3_comm_8,Dade_County_3_2008_comm_biomass)
# Dade_County_3_comm_10 <- rbind(Dade_County_3_comm_9,Dade_County_3_2009_comm_biomass)
# Dade_County_3_comm_11<- rbind(Dade_County_3_comm_10,Dade_County_3_2010_comm_biomass)
# Dade_County_3_comm_12 <- rbind(Dade_County_3_comm_11,Dade_County_3_2011_comm_biomass)
Dade_County_3_comm_13 <- rbind(Dade_County_3_2013_comm_biomass,Dade_County_3_2014_comm_biomass)
Dade_County_3_comm_14 <- rbind(Dade_County_3_comm_13,Dade_County_3_2015_comm_biomass)
Dade_County_3_comm_15 <- rbind(Dade_County_3_comm_14,Dade_County_3_2016_comm_biomass)
Dade_County_3_comm_biomass_data_combined <- rbind(Dade_County_3_comm_15,Dade_County_3_2018_comm_biomass)



export(Dade_County_3_herb_biomass_data_combined, "Dade_County_3/data/Dade_County_3_herbivorous_biomass.csv")
export(Dade_County_3_comm_biomass_data_combined, "Dade_County_3/data/Dade_County_3_commercial_biomass.csv")



#Dade County 4

Dade_County_4_2013 <- import("Dade_County_4/data/Dade_County_4_2013.xls")

Dade_County_4_2013_herb <- merge(Dade_County_4_2013, Herb, by = c("SPECIES_CD"))
Dade_County_4_2013_herb_biomass <- summarise_at(Dade_County_4_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2013_herb_biomass$Year <- ('2013')
Dade_County_4_2013_herb_biomass$Reef <- ('Dade County 4')


Dade_County_4_2013_comm <- merge(Dade_County_4_2013, Comm, by = c("SPECIES_CD"))
Dade_County_4_2013_comm_biomass <- summarise_at(Dade_County_4_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2013_comm_biomass$Year <- ('2013')
Dade_County_4_2013_comm_biomass$Reef <- ('Dade County 4')


Dade_County_4_2014 <- import("Dade_County_4/data/Dade_County_4_2014.xls")

Dade_County_4_2014_herb <- merge(Dade_County_4_2014, Herb, by = c("SPECIES_CD"))
Dade_County_4_2014_herb_biomass <- summarise_at(Dade_County_4_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2014_herb_biomass$Year <- ('2014')
Dade_County_4_2014_herb_biomass$Reef <- ('Dade County 4')


Dade_County_4_2014_comm <- merge(Dade_County_4_2014, Comm, by = c("SPECIES_CD"))
Dade_County_4_2014_comm_biomass <- summarise_at(Dade_County_4_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2014_comm_biomass$Year <- ('2014')
Dade_County_4_2014_comm_biomass$Reef <- ('Dade County 4')


Dade_County_4_2015 <- import("Dade_County_4/data/Dade_County_4_2015.xls")

Dade_County_4_2015_herb <- merge(Dade_County_4_2015, Herb, by = c("SPECIES_CD"))
Dade_County_4_2015_herb_biomass <- summarise_at(Dade_County_4_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2015_herb_biomass$Year <- ('2015')
Dade_County_4_2015_herb_biomass$Reef <- ('Dade County 4')


Dade_County_4_2015_comm <- merge(Dade_County_4_2015, Comm, by = c("SPECIES_CD"))
Dade_County_4_2015_comm_biomass <- summarise_at(Dade_County_4_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2015_comm_biomass$Year <- ('2015')
Dade_County_4_2015_comm_biomass$Reef <- ('Dade County 4')

Dade_County_4_2016 <- import("Dade_County_4/data/Dade_County_4_2016.xls")

Dade_County_4_2016_herb <- merge(Dade_County_4_2016, Herb, by = c("SPECIES_CD"))
Dade_County_4_2016_herb_biomass <- summarise_at(Dade_County_4_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2016_herb_biomass$Year <- ('2016')
Dade_County_4_2016_herb_biomass$Reef <- ('Dade County 4')


Dade_County_4_2016_comm <- merge(Dade_County_4_2016, Comm, by = c("SPECIES_CD"))
Dade_County_4_2016_comm_biomass <- summarise_at(Dade_County_4_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2016_comm_biomass$Year <- ('2016')
Dade_County_4_2016_comm_biomass$Reef <- ('Dade County 4')


Dade_County_4_2018 <- import("Dade_County_4/data/Dade_County_4_2018.xls")

Dade_County_4_2018_herb <- merge(Dade_County_4_2018, Herb, by = c("SPECIES_CD"))
Dade_County_4_2018_herb_biomass <- summarise_at(Dade_County_4_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2018_herb_biomass$Year <- ('2018')
Dade_County_4_2018_herb_biomass$Reef <- ('Dade County 4')


Dade_County_4_2018_comm <- merge(Dade_County_4_2018, Comm, by = c("SPECIES_CD"))
Dade_County_4_2018_comm_biomass <- summarise_at(Dade_County_4_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_4_2018_comm_biomass$Year <- ('2018')
Dade_County_4_2018_comm_biomass$Reef <- ('Dade County 4')



### Combine all years together for herbivorous and commercial seperately



# Dade_County_4_herb_1 <- rbind(Dade_County_4_1999_herb_biomass,Dade_County_4_2000_herb_biomass)
# Dade_County_4_herb_2 <- rbind(Dade_County_4_herb_1,Dade_County_4_2001_herb_biomass)
# Dade_County_4_herb_3 <- rbind(Dade_County_4_herb_2,Dade_County_4_2002_herb_biomass)
# Dade_County_4_herb_4 <- rbind(Dade_County_4_herb_3,Dade_County_4_2003_herb_biomass)
# Dade_County_4_herb_5 <- rbind(Dade_County_4_herb_4,Dade_County_4_2004_herb_biomass)
# Dade_County_4_herb_6 <- rbind(Dade_County_4_herb_5,Dade_County_4_2005_herb_biomass)
# Dade_County_4_herb_7 <- rbind(Dade_County_4_herb_6,Dade_County_4_2006_herb_biomass)
# Dade_County_4_herb_8 <- rbind(Dade_County_4_herb_7,Dade_County_4_2007_herb_biomass)
# Dade_County_4_herb_9 <- rbind(Dade_County_4_herb_8,Dade_County_4_2008_herb_biomass)
# Dade_County_4_herb_10 <- rbind(Dade_County_4_herb_9,Dade_County_4_2009_herb_biomass)
# Dade_County_4_herb_11<- rbind(Dade_County_4_herb_10,Dade_County_4_2010_herb_biomass)
# Dade_County_4_herb_12 <- rbind(Dade_County_4_herb_11,Dade_County_4_2011_herb_biomass)
Dade_County_4_herb_13 <- rbind(Dade_County_4_2013_herb_biomass,Dade_County_4_2014_herb_biomass)
Dade_County_4_herb_14 <- rbind(Dade_County_4_herb_13,Dade_County_4_2015_herb_biomass)
Dade_County_4_herb_15 <- rbind(Dade_County_4_herb_14,Dade_County_4_2016_herb_biomass)
Dade_County_4_herb_biomass_data_combined <- rbind(Dade_County_4_herb_15,Dade_County_4_2018_herb_biomass)



# Dade_County_4_comm_1 <- rbind(Dade_County_4_1999_comm_biomass,Dade_County_4_2000_comm_biomass)
# Dade_County_4_comm_2 <- rbind(Dade_County_4_comm_1,Dade_County_4_2001_comm_biomass)
# Dade_County_4_comm_3 <- rbind(Dade_County_4_comm_2,Dade_County_4_2002_comm_biomass)
# Dade_County_4_comm_4 <- rbind(Dade_County_4_comm_3,Dade_County_4_2003_comm_biomass)
# Dade_County_4_comm_5 <- rbind(Dade_County_4_comm_4,Dade_County_4_2004_comm_biomass)
# Dade_County_4_comm_6 <- rbind(Dade_County_4_comm_5,Dade_County_4_2005_comm_biomass)
# Dade_County_4_comm_7 <- rbind(Dade_County_4_comm_6,Dade_County_4_2006_comm_biomass)
# Dade_County_4_comm_8 <- rbind(Dade_County_4_comm_7,Dade_County_4_2007_comm_biomass)
# Dade_County_4_comm_9 <- rbind(Dade_County_4_comm_8,Dade_County_4_2008_comm_biomass)
# Dade_County_4_comm_10 <- rbind(Dade_County_4_comm_9,Dade_County_4_2009_comm_biomass)
# Dade_County_4_comm_11<- rbind(Dade_County_4_comm_10,Dade_County_4_2010_comm_biomass)
# Dade_County_4_comm_12 <- rbind(Dade_County_4_comm_11,Dade_County_4_2011_comm_biomass)
Dade_County_4_comm_13 <- rbind(Dade_County_4_2013_comm_biomass,Dade_County_4_2014_comm_biomass)
Dade_County_4_comm_14 <- rbind(Dade_County_4_comm_13,Dade_County_4_2015_comm_biomass)
Dade_County_4_comm_15 <- rbind(Dade_County_4_comm_14,Dade_County_4_2016_comm_biomass)
Dade_County_4_comm_biomass_data_combined <- rbind(Dade_County_4_comm_15,Dade_County_4_2018_comm_biomass)



export(Dade_County_4_herb_biomass_data_combined, "Dade_County_4/data/Dade_County_4_herbivorous_biomass.csv")
export(Dade_County_4_comm_biomass_data_combined, "Dade_County_4/data/Dade_County_4_commercial_biomass.csv")



#Dade County 5

Dade_County_5_2013 <- import("Dade_County_5/data/Dade_County_5_2013.xls")

Dade_County_5_2013_herb <- merge(Dade_County_5_2013, Herb, by = c("SPECIES_CD"))
Dade_County_5_2013_herb_biomass <- summarise_at(Dade_County_5_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2013_herb_biomass$Year <- ('2013')
Dade_County_5_2013_herb_biomass$Reef <- ('Dade County 5')


Dade_County_5_2013_comm <- merge(Dade_County_5_2013, Comm, by = c("SPECIES_CD"))
Dade_County_5_2013_comm_biomass <- summarise_at(Dade_County_5_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2013_comm_biomass$Year <- ('2013')
Dade_County_5_2013_comm_biomass$Reef <- ('Dade County 5')


Dade_County_5_2014 <- import("Dade_County_5/data/Dade_County_5_2014.xls")

Dade_County_5_2014_herb <- merge(Dade_County_5_2014, Herb, by = c("SPECIES_CD"))
Dade_County_5_2014_herb_biomass <- summarise_at(Dade_County_5_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2014_herb_biomass$Year <- ('2014')
Dade_County_5_2014_herb_biomass$Reef <- ('Dade County 5')


Dade_County_5_2014_comm <- merge(Dade_County_5_2014, Comm, by = c("SPECIES_CD"))
Dade_County_5_2014_comm_biomass <- summarise_at(Dade_County_5_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2014_comm_biomass$Year <- ('2014')
Dade_County_5_2014_comm_biomass$Reef <- ('Dade County 5')


Dade_County_5_2015 <- import("Dade_County_5/data/Dade_County_5_2015.xls")

Dade_County_5_2015_herb <- merge(Dade_County_5_2015, Herb, by = c("SPECIES_CD"))
Dade_County_5_2015_herb_biomass <- summarise_at(Dade_County_5_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2015_herb_biomass$Year <- ('2015')
Dade_County_5_2015_herb_biomass$Reef <- ('Dade County 5')


Dade_County_5_2015_comm <- merge(Dade_County_5_2015, Comm, by = c("SPECIES_CD"))
Dade_County_5_2015_comm_biomass <- summarise_at(Dade_County_5_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2015_comm_biomass$Year <- ('2015')
Dade_County_5_2015_comm_biomass$Reef <- ('Dade County 5')

Dade_County_5_2016 <- import("Dade_County_5/data/Dade_County_5_2016.xls")

Dade_County_5_2016_herb <- merge(Dade_County_5_2016, Herb, by = c("SPECIES_CD"))
Dade_County_5_2016_herb_biomass <- summarise_at(Dade_County_5_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2016_herb_biomass$Year <- ('2016')
Dade_County_5_2016_herb_biomass$Reef <- ('Dade County 5')


Dade_County_5_2016_comm <- merge(Dade_County_5_2016, Comm, by = c("SPECIES_CD"))
Dade_County_5_2016_comm_biomass <- summarise_at(Dade_County_5_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2016_comm_biomass$Year <- ('2016')
Dade_County_5_2016_comm_biomass$Reef <- ('Dade County 5')


Dade_County_5_2018 <- import("Dade_County_5/data/Dade_County_5_2018.xls")

Dade_County_5_2018_herb <- merge(Dade_County_5_2018, Herb, by = c("SPECIES_CD"))
Dade_County_5_2018_herb_biomass <- summarise_at(Dade_County_5_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2018_herb_biomass$Year <- ('2018')
Dade_County_5_2018_herb_biomass$Reef <- ('Dade County 5')


Dade_County_5_2018_comm <- merge(Dade_County_5_2018, Comm, by = c("SPECIES_CD"))
Dade_County_5_2018_comm_biomass <- summarise_at(Dade_County_5_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_5_2018_comm_biomass$Year <- ('2018')
Dade_County_5_2018_comm_biomass$Reef <- ('Dade County 5')



### Combine all years together for herbivorous and commercial seperately



# Dade_County_5_herb_1 <- rbind(Dade_County_5_1999_herb_biomass,Dade_County_5_2000_herb_biomass)
# Dade_County_5_herb_2 <- rbind(Dade_County_5_herb_1,Dade_County_5_2001_herb_biomass)
# Dade_County_5_herb_3 <- rbind(Dade_County_5_herb_2,Dade_County_5_2002_herb_biomass)
# Dade_County_5_herb_4 <- rbind(Dade_County_5_herb_3,Dade_County_5_2003_herb_biomass)
# Dade_County_5_herb_5 <- rbind(Dade_County_5_herb_4,Dade_County_5_2004_herb_biomass)
# Dade_County_5_herb_6 <- rbind(Dade_County_5_herb_5,Dade_County_5_2005_herb_biomass)
# Dade_County_5_herb_7 <- rbind(Dade_County_5_herb_6,Dade_County_5_2006_herb_biomass)
# Dade_County_5_herb_8 <- rbind(Dade_County_5_herb_7,Dade_County_5_2007_herb_biomass)
# Dade_County_5_herb_9 <- rbind(Dade_County_5_herb_8,Dade_County_5_2008_herb_biomass)
# Dade_County_5_herb_10 <- rbind(Dade_County_5_herb_9,Dade_County_5_2009_herb_biomass)
# Dade_County_5_herb_11<- rbind(Dade_County_5_herb_10,Dade_County_5_2010_herb_biomass)
# Dade_County_5_herb_12 <- rbind(Dade_County_5_herb_11,Dade_County_5_2011_herb_biomass)
Dade_County_5_herb_13 <- rbind(Dade_County_5_2013_herb_biomass,Dade_County_5_2014_herb_biomass)
Dade_County_5_herb_14 <- rbind(Dade_County_5_herb_13,Dade_County_5_2015_herb_biomass)
Dade_County_5_herb_15 <- rbind(Dade_County_5_herb_14,Dade_County_5_2016_herb_biomass)
Dade_County_5_herb_biomass_data_combined <- rbind(Dade_County_5_herb_15,Dade_County_5_2018_herb_biomass)



# Dade_County_5_comm_1 <- rbind(Dade_County_5_1999_comm_biomass,Dade_County_5_2000_comm_biomass)
# Dade_County_5_comm_2 <- rbind(Dade_County_5_comm_1,Dade_County_5_2001_comm_biomass)
# Dade_County_5_comm_3 <- rbind(Dade_County_5_comm_2,Dade_County_5_2002_comm_biomass)
# Dade_County_5_comm_4 <- rbind(Dade_County_5_comm_3,Dade_County_5_2003_comm_biomass)
# Dade_County_5_comm_5 <- rbind(Dade_County_5_comm_4,Dade_County_5_2004_comm_biomass)
# Dade_County_5_comm_6 <- rbind(Dade_County_5_comm_5,Dade_County_5_2005_comm_biomass)
# Dade_County_5_comm_7 <- rbind(Dade_County_5_comm_6,Dade_County_5_2006_comm_biomass)
# Dade_County_5_comm_8 <- rbind(Dade_County_5_comm_7,Dade_County_5_2007_comm_biomass)
# Dade_County_5_comm_9 <- rbind(Dade_County_5_comm_8,Dade_County_5_2008_comm_biomass)
# Dade_County_5_comm_10 <- rbind(Dade_County_5_comm_9,Dade_County_5_2009_comm_biomass)
# Dade_County_5_comm_11<- rbind(Dade_County_5_comm_10,Dade_County_5_2010_comm_biomass)
# Dade_County_5_comm_12 <- rbind(Dade_County_5_comm_11,Dade_County_5_2011_comm_biomass)
Dade_County_5_comm_13 <- rbind(Dade_County_5_2013_comm_biomass,Dade_County_5_2014_comm_biomass)
Dade_County_5_comm_14 <- rbind(Dade_County_5_comm_13,Dade_County_5_2015_comm_biomass)
Dade_County_5_comm_15 <- rbind(Dade_County_5_comm_14,Dade_County_5_2016_comm_biomass)
Dade_County_5_comm_biomass_data_combined <- rbind(Dade_County_5_comm_15,Dade_County_5_2018_comm_biomass)



export(Dade_County_5_herb_biomass_data_combined, "Dade_County_5/data/Dade_County_5_herbivorous_biomass.csv")
export(Dade_County_5_comm_biomass_data_combined, "Dade_County_5/data/Dade_County_5_commercial_biomass.csv")




#Dade County 6

Dade_County_6_2013 <- import("Dade_County_6/data/Dade_County_6_2013.xls")

Dade_County_6_2013_herb <- merge(Dade_County_6_2013, Herb, by = c("SPECIES_CD"))
Dade_County_6_2013_herb_biomass <- summarise_at(Dade_County_6_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2013_herb_biomass$Year <- ('2013')
Dade_County_6_2013_herb_biomass$Reef <- ('Dade County 6')


Dade_County_6_2013_comm <- merge(Dade_County_6_2013, Comm, by = c("SPECIES_CD"))
Dade_County_6_2013_comm_biomass <- summarise_at(Dade_County_6_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2013_comm_biomass$Year <- ('2013')
Dade_County_6_2013_comm_biomass$Reef <- ('Dade County 6')


Dade_County_6_2014 <- import("Dade_County_6/data/Dade_County_6_2014.xls")

Dade_County_6_2014_herb <- merge(Dade_County_6_2014, Herb, by = c("SPECIES_CD"))
Dade_County_6_2014_herb_biomass <- summarise_at(Dade_County_6_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2014_herb_biomass$Year <- ('2014')
Dade_County_6_2014_herb_biomass$Reef <- ('Dade County 6')


Dade_County_6_2014_comm <- merge(Dade_County_6_2014, Comm, by = c("SPECIES_CD"))
Dade_County_6_2014_comm_biomass <- summarise_at(Dade_County_6_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2014_comm_biomass$Year <- ('2014')
Dade_County_6_2014_comm_biomass$Reef <- ('Dade County 6')


Dade_County_6_2015 <- import("Dade_County_6/data/Dade_County_6_2015.xls")

Dade_County_6_2015_herb <- merge(Dade_County_6_2015, Herb, by = c("SPECIES_CD"))
Dade_County_6_2015_herb_biomass <- summarise_at(Dade_County_6_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2015_herb_biomass$Year <- ('2015')
Dade_County_6_2015_herb_biomass$Reef <- ('Dade County 6')


Dade_County_6_2015_comm <- merge(Dade_County_6_2015, Comm, by = c("SPECIES_CD"))
Dade_County_6_2015_comm_biomass <- summarise_at(Dade_County_6_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2015_comm_biomass$Year <- ('2015')
Dade_County_6_2015_comm_biomass$Reef <- ('Dade County 6')

Dade_County_6_2016 <- import("Dade_County_6/data/Dade_County_6_2016.xls")

Dade_County_6_2016_herb <- merge(Dade_County_6_2016, Herb, by = c("SPECIES_CD"))
Dade_County_6_2016_herb_biomass <- summarise_at(Dade_County_6_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2016_herb_biomass$Year <- ('2016')
Dade_County_6_2016_herb_biomass$Reef <- ('Dade County 6')


Dade_County_6_2016_comm <- merge(Dade_County_6_2016, Comm, by = c("SPECIES_CD"))
Dade_County_6_2016_comm_biomass <- summarise_at(Dade_County_6_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2016_comm_biomass$Year <- ('2016')
Dade_County_6_2016_comm_biomass$Reef <- ('Dade County 6')


Dade_County_6_2018 <- import("Dade_County_6/data/Dade_County_6_2018.xls")

Dade_County_6_2018_herb <- merge(Dade_County_6_2018, Herb, by = c("SPECIES_CD"))
Dade_County_6_2018_herb_biomass <- summarise_at(Dade_County_6_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2018_herb_biomass$Year <- ('2018')
Dade_County_6_2018_herb_biomass$Reef <- ('Dade County 6')


Dade_County_6_2018_comm <- merge(Dade_County_6_2018, Comm, by = c("SPECIES_CD"))
Dade_County_6_2018_comm_biomass <- summarise_at(Dade_County_6_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_6_2018_comm_biomass$Year <- ('2018')
Dade_County_6_2018_comm_biomass$Reef <- ('Dade County 6')



### Combine all years together for herbivorous and commercial seperately



# Dade_County_6_herb_1 <- rbind(Dade_County_6_1999_herb_biomass,Dade_County_6_2000_herb_biomass)
# Dade_County_6_herb_2 <- rbind(Dade_County_6_herb_1,Dade_County_6_2001_herb_biomass)
# Dade_County_6_herb_3 <- rbind(Dade_County_6_herb_2,Dade_County_6_2002_herb_biomass)
# Dade_County_6_herb_4 <- rbind(Dade_County_6_herb_3,Dade_County_6_2003_herb_biomass)
# Dade_County_6_herb_5 <- rbind(Dade_County_6_herb_4,Dade_County_6_2004_herb_biomass)
# Dade_County_6_herb_6 <- rbind(Dade_County_6_herb_5,Dade_County_6_2005_herb_biomass)
# Dade_County_6_herb_7 <- rbind(Dade_County_6_herb_6,Dade_County_6_2006_herb_biomass)
# Dade_County_6_herb_8 <- rbind(Dade_County_6_herb_7,Dade_County_6_2007_herb_biomass)
# Dade_County_6_herb_9 <- rbind(Dade_County_6_herb_8,Dade_County_6_2008_herb_biomass)
# Dade_County_6_herb_10 <- rbind(Dade_County_6_herb_9,Dade_County_6_2009_herb_biomass)
# Dade_County_6_herb_11<- rbind(Dade_County_6_herb_10,Dade_County_6_2010_herb_biomass)
# Dade_County_6_herb_12 <- rbind(Dade_County_6_herb_11,Dade_County_6_2011_herb_biomass)
Dade_County_6_herb_13 <- rbind(Dade_County_6_2013_herb_biomass,Dade_County_6_2014_herb_biomass)
Dade_County_6_herb_14 <- rbind(Dade_County_6_herb_13,Dade_County_6_2015_herb_biomass)
Dade_County_6_herb_15 <- rbind(Dade_County_6_herb_14,Dade_County_6_2016_herb_biomass)
Dade_County_6_herb_biomass_data_combined <- rbind(Dade_County_6_herb_15,Dade_County_6_2018_herb_biomass)



# Dade_County_6_comm_1 <- rbind(Dade_County_6_1999_comm_biomass,Dade_County_6_2000_comm_biomass)
# Dade_County_6_comm_2 <- rbind(Dade_County_6_comm_1,Dade_County_6_2001_comm_biomass)
# Dade_County_6_comm_3 <- rbind(Dade_County_6_comm_2,Dade_County_6_2002_comm_biomass)
# Dade_County_6_comm_4 <- rbind(Dade_County_6_comm_3,Dade_County_6_2003_comm_biomass)
# Dade_County_6_comm_5 <- rbind(Dade_County_6_comm_4,Dade_County_6_2004_comm_biomass)
# Dade_County_6_comm_6 <- rbind(Dade_County_6_comm_5,Dade_County_6_2005_comm_biomass)
# Dade_County_6_comm_7 <- rbind(Dade_County_6_comm_6,Dade_County_6_2006_comm_biomass)
# Dade_County_6_comm_8 <- rbind(Dade_County_6_comm_7,Dade_County_6_2007_comm_biomass)
# Dade_County_6_comm_9 <- rbind(Dade_County_6_comm_8,Dade_County_6_2008_comm_biomass)
# Dade_County_6_comm_10 <- rbind(Dade_County_6_comm_9,Dade_County_6_2009_comm_biomass)
# Dade_County_6_comm_11<- rbind(Dade_County_6_comm_10,Dade_County_6_2010_comm_biomass)
# Dade_County_6_comm_12 <- rbind(Dade_County_6_comm_11,Dade_County_6_2011_comm_biomass)
Dade_County_6_comm_13 <- rbind(Dade_County_6_2013_comm_biomass,Dade_County_6_2014_comm_biomass)
Dade_County_6_comm_14 <- rbind(Dade_County_6_comm_13,Dade_County_6_2015_comm_biomass)
Dade_County_6_comm_15 <- rbind(Dade_County_6_comm_14,Dade_County_6_2016_comm_biomass)
Dade_County_6_comm_biomass_data_combined <- rbind(Dade_County_6_comm_15,Dade_County_6_2018_comm_biomass)



export(Dade_County_6_herb_biomass_data_combined, "Dade_County_6/data/Dade_County_6_herbivorous_biomass.csv")
export(Dade_County_6_comm_biomass_data_combined, "Dade_County_6/data/Dade_County_6_commercial_biomass.csv")



#Dade County 7

Dade_County_7_2013 <- import("Dade_County_7/data/Dade_County_7_2013.xls")

Dade_County_7_2013_herb <- merge(Dade_County_7_2013, Herb, by = c("SPECIES_CD"))
Dade_County_7_2013_herb_biomass <- summarise_at(Dade_County_7_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2013_herb_biomass$Year <- ('2013')
Dade_County_7_2013_herb_biomass$Reef <- ('Dade County 7')


Dade_County_7_2013_comm <- merge(Dade_County_7_2013, Comm, by = c("SPECIES_CD"))
Dade_County_7_2013_comm_biomass <- summarise_at(Dade_County_7_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2013_comm_biomass$Year <- ('2013')
Dade_County_7_2013_comm_biomass$Reef <- ('Dade County 7')


Dade_County_7_2014 <- import("Dade_County_7/data/Dade_County_7_2014.xls")

Dade_County_7_2014_herb <- merge(Dade_County_7_2014, Herb, by = c("SPECIES_CD"))
Dade_County_7_2014_herb_biomass <- summarise_at(Dade_County_7_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2014_herb_biomass$Year <- ('2014')
Dade_County_7_2014_herb_biomass$Reef <- ('Dade County 7')


Dade_County_7_2014_comm <- merge(Dade_County_7_2014, Comm, by = c("SPECIES_CD"))
Dade_County_7_2014_comm_biomass <- summarise_at(Dade_County_7_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2014_comm_biomass$Year <- ('2014')
Dade_County_7_2014_comm_biomass$Reef <- ('Dade County 7')


Dade_County_7_2015 <- import("Dade_County_7/data/Dade_County_7_2015.xls")

Dade_County_7_2015_herb <- merge(Dade_County_7_2015, Herb, by = c("SPECIES_CD"))
Dade_County_7_2015_herb_biomass <- summarise_at(Dade_County_7_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2015_herb_biomass$Year <- ('2015')
Dade_County_7_2015_herb_biomass$Reef <- ('Dade County 7')


Dade_County_7_2015_comm <- merge(Dade_County_7_2015, Comm, by = c("SPECIES_CD"))
Dade_County_7_2015_comm_biomass <- summarise_at(Dade_County_7_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2015_comm_biomass$Year <- ('2015')
Dade_County_7_2015_comm_biomass$Reef <- ('Dade County 7')

Dade_County_7_2016 <- import("Dade_County_7/data/Dade_County_7_2016.xls")

Dade_County_7_2016_herb <- merge(Dade_County_7_2016, Herb, by = c("SPECIES_CD"))
Dade_County_7_2016_herb_biomass <- summarise_at(Dade_County_7_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2016_herb_biomass$Year <- ('2016')
Dade_County_7_2016_herb_biomass$Reef <- ('Dade County 7')


Dade_County_7_2016_comm <- merge(Dade_County_7_2016, Comm, by = c("SPECIES_CD"))
Dade_County_7_2016_comm_biomass <- summarise_at(Dade_County_7_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2016_comm_biomass$Year <- ('2016')
Dade_County_7_2016_comm_biomass$Reef <- ('Dade County 7')


Dade_County_7_2018 <- import("Dade_County_7/data/Dade_County_7_2018.xls")

Dade_County_7_2018_herb <- merge(Dade_County_7_2018, Herb, by = c("SPECIES_CD"))
Dade_County_7_2018_herb_biomass <- summarise_at(Dade_County_7_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2018_herb_biomass$Year <- ('2018')
Dade_County_7_2018_herb_biomass$Reef <- ('Dade County 7')


Dade_County_7_2018_comm <- merge(Dade_County_7_2018, Comm, by = c("SPECIES_CD"))
Dade_County_7_2018_comm_biomass <- summarise_at(Dade_County_7_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_7_2018_comm_biomass$Year <- ('2018')
Dade_County_7_2018_comm_biomass$Reef <- ('Dade County 7')



### Combine all years together for herbivorous and commercial seperately



# Dade_County_7_herb_1 <- rbind(Dade_County_7_1999_herb_biomass,Dade_County_7_2000_herb_biomass)
# Dade_County_7_herb_2 <- rbind(Dade_County_7_herb_1,Dade_County_7_2001_herb_biomass)
# Dade_County_7_herb_3 <- rbind(Dade_County_7_herb_2,Dade_County_7_2002_herb_biomass)
# Dade_County_7_herb_4 <- rbind(Dade_County_7_herb_3,Dade_County_7_2003_herb_biomass)
# Dade_County_7_herb_5 <- rbind(Dade_County_7_herb_4,Dade_County_7_2004_herb_biomass)
# Dade_County_7_herb_6 <- rbind(Dade_County_7_herb_5,Dade_County_7_2005_herb_biomass)
# Dade_County_7_herb_7 <- rbind(Dade_County_7_herb_6,Dade_County_7_2006_herb_biomass)
# Dade_County_7_herb_8 <- rbind(Dade_County_7_herb_7,Dade_County_7_2007_herb_biomass)
# Dade_County_7_herb_9 <- rbind(Dade_County_7_herb_8,Dade_County_7_2008_herb_biomass)
# Dade_County_7_herb_10 <- rbind(Dade_County_7_herb_9,Dade_County_7_2009_herb_biomass)
# Dade_County_7_herb_11<- rbind(Dade_County_7_herb_10,Dade_County_7_2010_herb_biomass)
# Dade_County_7_herb_12 <- rbind(Dade_County_7_herb_11,Dade_County_7_2011_herb_biomass)
Dade_County_7_herb_13 <- rbind(Dade_County_7_2013_herb_biomass,Dade_County_7_2014_herb_biomass)
Dade_County_7_herb_14 <- rbind(Dade_County_7_herb_13,Dade_County_7_2015_herb_biomass)
Dade_County_7_herb_15 <- rbind(Dade_County_7_herb_14,Dade_County_7_2016_herb_biomass)
Dade_County_7_herb_biomass_data_combined <- rbind(Dade_County_7_herb_15,Dade_County_7_2018_herb_biomass)



# Dade_County_7_comm_1 <- rbind(Dade_County_7_1999_comm_biomass,Dade_County_7_2000_comm_biomass)
# Dade_County_7_comm_2 <- rbind(Dade_County_7_comm_1,Dade_County_7_2001_comm_biomass)
# Dade_County_7_comm_3 <- rbind(Dade_County_7_comm_2,Dade_County_7_2002_comm_biomass)
# Dade_County_7_comm_4 <- rbind(Dade_County_7_comm_3,Dade_County_7_2003_comm_biomass)
# Dade_County_7_comm_5 <- rbind(Dade_County_7_comm_4,Dade_County_7_2004_comm_biomass)
# Dade_County_7_comm_6 <- rbind(Dade_County_7_comm_5,Dade_County_7_2005_comm_biomass)
# Dade_County_7_comm_7 <- rbind(Dade_County_7_comm_6,Dade_County_7_2006_comm_biomass)
# Dade_County_7_comm_8 <- rbind(Dade_County_7_comm_7,Dade_County_7_2007_comm_biomass)
# Dade_County_7_comm_9 <- rbind(Dade_County_7_comm_8,Dade_County_7_2008_comm_biomass)
# Dade_County_7_comm_10 <- rbind(Dade_County_7_comm_9,Dade_County_7_2009_comm_biomass)
# Dade_County_7_comm_11<- rbind(Dade_County_7_comm_10,Dade_County_7_2010_comm_biomass)
# Dade_County_7_comm_12 <- rbind(Dade_County_7_comm_11,Dade_County_7_2011_comm_biomass)
Dade_County_7_comm_13 <- rbind(Dade_County_7_2013_comm_biomass,Dade_County_7_2014_comm_biomass)
Dade_County_7_comm_14 <- rbind(Dade_County_7_comm_13,Dade_County_7_2015_comm_biomass)
Dade_County_7_comm_15 <- rbind(Dade_County_7_comm_14,Dade_County_7_2016_comm_biomass)
Dade_County_7_comm_biomass_data_combined <- rbind(Dade_County_7_comm_15,Dade_County_7_2018_comm_biomass)



export(Dade_County_7_herb_biomass_data_combined, "Dade_County_7/data/Dade_County_7_herbivorous_biomass.csv")
export(Dade_County_7_comm_biomass_data_combined, "Dade_County_7/data/Dade_County_7_commercial_biomass.csv")




#Dade County 8

Dade_County_8_2013 <- import("Dade_County_8/data/Dade_County_8_2013.xls")

Dade_County_8_2013_herb <- merge(Dade_County_8_2013, Herb, by = c("SPECIES_CD"))
Dade_County_8_2013_herb_biomass <- summarise_at(Dade_County_8_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2013_herb_biomass$Year <- ('2013')
Dade_County_8_2013_herb_biomass$Reef <- ('Dade County 8')


Dade_County_8_2013_comm <- merge(Dade_County_8_2013, Comm, by = c("SPECIES_CD"))
Dade_County_8_2013_comm_biomass <- summarise_at(Dade_County_8_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2013_comm_biomass$Year <- ('2013')
Dade_County_8_2013_comm_biomass$Reef <- ('Dade County 8')


Dade_County_8_2014 <- import("Dade_County_8/data/Dade_County_8_2014.xls")

Dade_County_8_2014_herb <- merge(Dade_County_8_2014, Herb, by = c("SPECIES_CD"))
Dade_County_8_2014_herb_biomass <- summarise_at(Dade_County_8_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2014_herb_biomass$Year <- ('2014')
Dade_County_8_2014_herb_biomass$Reef <- ('Dade County 8')


Dade_County_8_2014_comm <- merge(Dade_County_8_2014, Comm, by = c("SPECIES_CD"))
Dade_County_8_2014_comm_biomass <- summarise_at(Dade_County_8_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2014_comm_biomass$Year <- ('2014')
Dade_County_8_2014_comm_biomass$Reef <- ('Dade County 8')


Dade_County_8_2015 <- import("Dade_County_8/data/Dade_County_8_2015.xls")

Dade_County_8_2015_herb <- merge(Dade_County_8_2015, Herb, by = c("SPECIES_CD"))
Dade_County_8_2015_herb_biomass <- summarise_at(Dade_County_8_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2015_herb_biomass$Year <- ('2015')
Dade_County_8_2015_herb_biomass$Reef <- ('Dade County 8')


Dade_County_8_2015_comm <- merge(Dade_County_8_2015, Comm, by = c("SPECIES_CD"))
Dade_County_8_2015_comm_biomass <- summarise_at(Dade_County_8_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2015_comm_biomass$Year <- ('2015')
Dade_County_8_2015_comm_biomass$Reef <- ('Dade County 8')

Dade_County_8_2016 <- import("Dade_County_8/data/Dade_County_8_2016.xls")

Dade_County_8_2016_herb <- merge(Dade_County_8_2016, Herb, by = c("SPECIES_CD"))
Dade_County_8_2016_herb_biomass <- summarise_at(Dade_County_8_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2016_herb_biomass$Year <- ('2016')
Dade_County_8_2016_herb_biomass$Reef <- ('Dade County 8')


Dade_County_8_2016_comm <- merge(Dade_County_8_2016, Comm, by = c("SPECIES_CD"))
Dade_County_8_2016_comm_biomass <- summarise_at(Dade_County_8_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2016_comm_biomass$Year <- ('2016')
Dade_County_8_2016_comm_biomass$Reef <- ('Dade County 8')


Dade_County_8_2018 <- import("Dade_County_8/data/Dade_County_8_2018.xls")

Dade_County_8_2018_herb <- merge(Dade_County_8_2018, Herb, by = c("SPECIES_CD"))
Dade_County_8_2018_herb_biomass <- summarise_at(Dade_County_8_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2018_herb_biomass$Year <- ('2018')
Dade_County_8_2018_herb_biomass$Reef <- ('Dade County 8')


Dade_County_8_2018_comm <- merge(Dade_County_8_2018, Comm, by = c("SPECIES_CD"))
Dade_County_8_2018_comm_biomass <- summarise_at(Dade_County_8_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Dade_County_8_2018_comm_biomass$Year <- ('2018')
Dade_County_8_2018_comm_biomass$Reef <- ('Dade County 8')



### Combine all years together for herbivorous and commercial seperately



# Dade_County_8_herb_1 <- rbind(Dade_County_8_1999_herb_biomass,Dade_County_8_2000_herb_biomass)
# Dade_County_8_herb_2 <- rbind(Dade_County_8_herb_1,Dade_County_8_2001_herb_biomass)
# Dade_County_8_herb_3 <- rbind(Dade_County_8_herb_2,Dade_County_8_2002_herb_biomass)
# Dade_County_8_herb_4 <- rbind(Dade_County_8_herb_3,Dade_County_8_2003_herb_biomass)
# Dade_County_8_herb_5 <- rbind(Dade_County_8_herb_4,Dade_County_8_2004_herb_biomass)
# Dade_County_8_herb_6 <- rbind(Dade_County_8_herb_5,Dade_County_8_2005_herb_biomass)
# Dade_County_8_herb_7 <- rbind(Dade_County_8_herb_6,Dade_County_8_2006_herb_biomass)
# Dade_County_8_herb_8 <- rbind(Dade_County_8_herb_7,Dade_County_8_2007_herb_biomass)
# Dade_County_8_herb_9 <- rbind(Dade_County_8_herb_8,Dade_County_8_2008_herb_biomass)
# Dade_County_8_herb_10 <- rbind(Dade_County_8_herb_9,Dade_County_8_2009_herb_biomass)
# Dade_County_8_herb_11<- rbind(Dade_County_8_herb_10,Dade_County_8_2010_herb_biomass)
# Dade_County_8_herb_12 <- rbind(Dade_County_8_herb_11,Dade_County_8_2011_herb_biomass)
Dade_County_8_herb_13 <- rbind(Dade_County_8_2013_herb_biomass,Dade_County_8_2014_herb_biomass)
Dade_County_8_herb_14 <- rbind(Dade_County_8_herb_13,Dade_County_8_2015_herb_biomass)
Dade_County_8_herb_15 <- rbind(Dade_County_8_herb_14,Dade_County_8_2016_herb_biomass)
Dade_County_8_herb_biomass_data_combined <- rbind(Dade_County_8_herb_15,Dade_County_8_2018_herb_biomass)



# Dade_County_8_comm_1 <- rbind(Dade_County_8_1999_comm_biomass,Dade_County_8_2000_comm_biomass)
# Dade_County_8_comm_2 <- rbind(Dade_County_8_comm_1,Dade_County_8_2001_comm_biomass)
# Dade_County_8_comm_3 <- rbind(Dade_County_8_comm_2,Dade_County_8_2002_comm_biomass)
# Dade_County_8_comm_4 <- rbind(Dade_County_8_comm_3,Dade_County_8_2003_comm_biomass)
# Dade_County_8_comm_5 <- rbind(Dade_County_8_comm_4,Dade_County_8_2004_comm_biomass)
# Dade_County_8_comm_6 <- rbind(Dade_County_8_comm_5,Dade_County_8_2005_comm_biomass)
# Dade_County_8_comm_7 <- rbind(Dade_County_8_comm_6,Dade_County_8_2006_comm_biomass)
# Dade_County_8_comm_8 <- rbind(Dade_County_8_comm_7,Dade_County_8_2007_comm_biomass)
# Dade_County_8_comm_9 <- rbind(Dade_County_8_comm_8,Dade_County_8_2008_comm_biomass)
# Dade_County_8_comm_10 <- rbind(Dade_County_8_comm_9,Dade_County_8_2009_comm_biomass)
# Dade_County_8_comm_11<- rbind(Dade_County_8_comm_10,Dade_County_8_2010_comm_biomass)
# Dade_County_8_comm_12 <- rbind(Dade_County_8_comm_11,Dade_County_8_2011_comm_biomass)
Dade_County_8_comm_13 <- rbind(Dade_County_8_2013_comm_biomass,Dade_County_8_2014_comm_biomass)
Dade_County_8_comm_14 <- rbind(Dade_County_8_comm_13,Dade_County_8_2015_comm_biomass)
Dade_County_8_comm_15 <- rbind(Dade_County_8_comm_14,Dade_County_8_2016_comm_biomass)
Dade_County_8_comm_biomass_data_combined <- rbind(Dade_County_8_comm_15,Dade_County_8_2018_comm_biomass)



export(Dade_County_8_herb_biomass_data_combined, "Dade_County_8/data/Dade_County_8_herbivorous_biomass.csv")
export(Dade_County_8_comm_biomass_data_combined, "Dade_County_8/data/Dade_County_8_commercial_biomass.csv")




#Martin County 1

Martin_County_1_2013 <- import("Martin_County_1/data/Martin_County_1_2013.xls")

Martin_County_1_2013_herb <- merge(Martin_County_1_2013, Herb, by = c("SPECIES_CD"))
Martin_County_1_2013_herb_biomass <- summarise_at(Martin_County_1_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2013_herb_biomass$Year <- ('2013')
Martin_County_1_2013_herb_biomass$Reef <- ('Martin County 1')


Martin_County_1_2013_comm <- merge(Martin_County_1_2013, Comm, by = c("SPECIES_CD"))
Martin_County_1_2013_comm_biomass <- summarise_at(Martin_County_1_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2013_comm_biomass$Year <- ('2013')
Martin_County_1_2013_comm_biomass$Reef <- ('Martin County 1')


Martin_County_1_2014 <- import("Martin_County_1/data/Martin_County_1_2014.xls")

Martin_County_1_2014_herb <- merge(Martin_County_1_2014, Herb, by = c("SPECIES_CD"))
Martin_County_1_2014_herb_biomass <- summarise_at(Martin_County_1_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2014_herb_biomass$Year <- ('2014')
Martin_County_1_2014_herb_biomass$Reef <- ('Martin County 1')


Martin_County_1_2014_comm <- merge(Martin_County_1_2014, Comm, by = c("SPECIES_CD"))
Martin_County_1_2014_comm_biomass <- summarise_at(Martin_County_1_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2014_comm_biomass$Year <- ('2014')
Martin_County_1_2014_comm_biomass$Reef <- ('Martin County 1')


Martin_County_1_2015 <- import("Martin_County_1/data/Martin_County_1_2015.xls")

Martin_County_1_2015_herb <- merge(Martin_County_1_2015, Herb, by = c("SPECIES_CD"))
Martin_County_1_2015_herb_biomass <- summarise_at(Martin_County_1_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2015_herb_biomass$Year <- ('2015')
Martin_County_1_2015_herb_biomass$Reef <- ('Martin County 1')


Martin_County_1_2015_comm <- merge(Martin_County_1_2015, Comm, by = c("SPECIES_CD"))
Martin_County_1_2015_comm_biomass <- summarise_at(Martin_County_1_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2015_comm_biomass$Year <- ('2015')
Martin_County_1_2015_comm_biomass$Reef <- ('Martin County 1')

Martin_County_1_2016 <- import("Martin_County_1/data/Martin_County_1_2016.xls")

Martin_County_1_2016_herb <- merge(Martin_County_1_2016, Herb, by = c("SPECIES_CD"))
Martin_County_1_2016_herb_biomass <- summarise_at(Martin_County_1_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2016_herb_biomass$Year <- ('2016')
Martin_County_1_2016_herb_biomass$Reef <- ('Martin County 1')


Martin_County_1_2016_comm <- merge(Martin_County_1_2016, Comm, by = c("SPECIES_CD"))
Martin_County_1_2016_comm_biomass <- summarise_at(Martin_County_1_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2016_comm_biomass$Year <- ('2016')
Martin_County_1_2016_comm_biomass$Reef <- ('Martin County 1')


Martin_County_1_2018 <- import("Martin_County_1/data/Martin_County_1_2018.xls")

Martin_County_1_2018_herb <- merge(Martin_County_1_2018, Herb, by = c("SPECIES_CD"))
Martin_County_1_2018_herb_biomass <- summarise_at(Martin_County_1_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2018_herb_biomass$Year <- ('2018')
Martin_County_1_2018_herb_biomass$Reef <- ('Martin County 1')


Martin_County_1_2018_comm <- merge(Martin_County_1_2018, Comm, by = c("SPECIES_CD"))
Martin_County_1_2018_comm_biomass <- summarise_at(Martin_County_1_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_1_2018_comm_biomass$Year <- ('2018')
Martin_County_1_2018_comm_biomass$Reef <- ('Martin County 1')



### Combine all years together for herbivorous and commercial seperately



# Martin_County_1_herb_1 <- rbind(Martin_County_1_1999_herb_biomass,Martin_County_1_2000_herb_biomass)
# Martin_County_1_herb_2 <- rbind(Martin_County_1_herb_1,Martin_County_1_2001_herb_biomass)
# Martin_County_1_herb_3 <- rbind(Martin_County_1_herb_2,Martin_County_1_2002_herb_biomass)
# Martin_County_1_herb_4 <- rbind(Martin_County_1_herb_3,Martin_County_1_2003_herb_biomass)
# Martin_County_1_herb_5 <- rbind(Martin_County_1_herb_4,Martin_County_1_2004_herb_biomass)
# Martin_County_1_herb_6 <- rbind(Martin_County_1_herb_5,Martin_County_1_2005_herb_biomass)
# Martin_County_1_herb_7 <- rbind(Martin_County_1_herb_6,Martin_County_1_2006_herb_biomass)
# Martin_County_1_herb_8 <- rbind(Martin_County_1_herb_7,Martin_County_1_2007_herb_biomass)
# Martin_County_1_herb_9 <- rbind(Martin_County_1_herb_8,Martin_County_1_2008_herb_biomass)
# Martin_County_1_herb_10 <- rbind(Martin_County_1_herb_9,Martin_County_1_2009_herb_biomass)
# Martin_County_1_herb_11<- rbind(Martin_County_1_herb_10,Martin_County_1_2010_herb_biomass)
# Martin_County_1_herb_12 <- rbind(Martin_County_1_herb_11,Martin_County_1_2011_herb_biomass)
Martin_County_1_herb_13 <- rbind(Martin_County_1_2013_herb_biomass,Martin_County_1_2014_herb_biomass)
Martin_County_1_herb_14 <- rbind(Martin_County_1_herb_13,Martin_County_1_2015_herb_biomass)
Martin_County_1_herb_15 <- rbind(Martin_County_1_herb_14,Martin_County_1_2016_herb_biomass)
Martin_County_1_herb_biomass_data_combined <- rbind(Martin_County_1_herb_15,Martin_County_1_2018_herb_biomass)



# Martin_County_1_comm_1 <- rbind(Martin_County_1_1999_comm_biomass,Martin_County_1_2000_comm_biomass)
# Martin_County_1_comm_2 <- rbind(Martin_County_1_comm_1,Martin_County_1_2001_comm_biomass)
# Martin_County_1_comm_3 <- rbind(Martin_County_1_comm_2,Martin_County_1_2002_comm_biomass)
# Martin_County_1_comm_4 <- rbind(Martin_County_1_comm_3,Martin_County_1_2003_comm_biomass)
# Martin_County_1_comm_5 <- rbind(Martin_County_1_comm_4,Martin_County_1_2004_comm_biomass)
# Martin_County_1_comm_6 <- rbind(Martin_County_1_comm_5,Martin_County_1_2005_comm_biomass)
# Martin_County_1_comm_7 <- rbind(Martin_County_1_comm_6,Martin_County_1_2006_comm_biomass)
# Martin_County_1_comm_8 <- rbind(Martin_County_1_comm_7,Martin_County_1_2007_comm_biomass)
# Martin_County_1_comm_9 <- rbind(Martin_County_1_comm_8,Martin_County_1_2008_comm_biomass)
# Martin_County_1_comm_10 <- rbind(Martin_County_1_comm_9,Martin_County_1_2009_comm_biomass)
# Martin_County_1_comm_11<- rbind(Martin_County_1_comm_10,Martin_County_1_2010_comm_biomass)
# Martin_County_1_comm_12 <- rbind(Martin_County_1_comm_11,Martin_County_1_2011_comm_biomass)
Martin_County_1_comm_13 <- rbind(Martin_County_1_2013_comm_biomass,Martin_County_1_2014_comm_biomass)
Martin_County_1_comm_14 <- rbind(Martin_County_1_comm_13,Martin_County_1_2015_comm_biomass)
Martin_County_1_comm_15 <- rbind(Martin_County_1_comm_14,Martin_County_1_2016_comm_biomass)
Martin_County_1_comm_biomass_data_combined <- rbind(Martin_County_1_comm_15,Martin_County_1_2018_comm_biomass)



export(Martin_County_1_herb_biomass_data_combined, "Martin_County_1/data/Martin_County_1_herbivorous_biomass.csv")
export(Martin_County_1_comm_biomass_data_combined, "Martin_County_1/data/Martin_County_1_commercial_biomass.csv")



#Martin County 2

Martin_County_2_2013 <- import("Martin_County_2/data/Martin_County_2_2013.xls")

Martin_County_2_2013_herb <- merge(Martin_County_2_2013, Herb, by = c("SPECIES_CD"))
Martin_County_2_2013_herb_biomass <- summarise_at(Martin_County_2_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2013_herb_biomass$Year <- ('2013')
Martin_County_2_2013_herb_biomass$Reef <- ('Martin County 2')


Martin_County_2_2013_comm <- merge(Martin_County_2_2013, Comm, by = c("SPECIES_CD"))
Martin_County_2_2013_comm_biomass <- summarise_at(Martin_County_2_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2013_comm_biomass$Year <- ('2013')
Martin_County_2_2013_comm_biomass$Reef <- ('Martin County 2')


Martin_County_2_2014 <- import("Martin_County_2/data/Martin_County_2_2014.xls")

Martin_County_2_2014_herb <- merge(Martin_County_2_2014, Herb, by = c("SPECIES_CD"))
Martin_County_2_2014_herb_biomass <- summarise_at(Martin_County_2_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2014_herb_biomass$Year <- ('2014')
Martin_County_2_2014_herb_biomass$Reef <- ('Martin County 2')


Martin_County_2_2014_comm <- merge(Martin_County_2_2014, Comm, by = c("SPECIES_CD"))
Martin_County_2_2014_comm_biomass <- summarise_at(Martin_County_2_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2014_comm_biomass$Year <- ('2014')
Martin_County_2_2014_comm_biomass$Reef <- ('Martin County 2')


Martin_County_2_2015 <- import("Martin_County_2/data/Martin_County_2_2015.xls")

Martin_County_2_2015_herb <- merge(Martin_County_2_2015, Herb, by = c("SPECIES_CD"))
Martin_County_2_2015_herb_biomass <- summarise_at(Martin_County_2_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2015_herb_biomass$Year <- ('2015')
Martin_County_2_2015_herb_biomass$Reef <- ('Martin County 2')


Martin_County_2_2015_comm <- merge(Martin_County_2_2015, Comm, by = c("SPECIES_CD"))
Martin_County_2_2015_comm_biomass <- summarise_at(Martin_County_2_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2015_comm_biomass$Year <- ('2015')
Martin_County_2_2015_comm_biomass$Reef <- ('Martin County 2')

Martin_County_2_2016 <- import("Martin_County_2/data/Martin_County_2_2016.xls")

Martin_County_2_2016_herb <- merge(Martin_County_2_2016, Herb, by = c("SPECIES_CD"))
Martin_County_2_2016_herb_biomass <- summarise_at(Martin_County_2_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2016_herb_biomass$Year <- ('2016')
Martin_County_2_2016_herb_biomass$Reef <- ('Martin County 2')


Martin_County_2_2016_comm <- merge(Martin_County_2_2016, Comm, by = c("SPECIES_CD"))
Martin_County_2_2016_comm_biomass <- summarise_at(Martin_County_2_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2016_comm_biomass$Year <- ('2016')
Martin_County_2_2016_comm_biomass$Reef <- ('Martin County 2')


Martin_County_2_2018 <- import("Martin_County_2/data/Martin_County_2_2018.xls")

Martin_County_2_2018_herb <- merge(Martin_County_2_2018, Herb, by = c("SPECIES_CD"))
Martin_County_2_2018_herb_biomass <- summarise_at(Martin_County_2_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2018_herb_biomass$Year <- ('2018')
Martin_County_2_2018_herb_biomass$Reef <- ('Martin County 2')


Martin_County_2_2018_comm <- merge(Martin_County_2_2018, Comm, by = c("SPECIES_CD"))
Martin_County_2_2018_comm_biomass <- summarise_at(Martin_County_2_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Martin_County_2_2018_comm_biomass$Year <- ('2018')
Martin_County_2_2018_comm_biomass$Reef <- ('Martin County 2')



### Combine all years together for herbivorous and commercial seperately



# Martin_County_2_herb_1 <- rbind(Martin_County_2_1999_herb_biomass,Martin_County_2_2000_herb_biomass)
# Martin_County_2_herb_2 <- rbind(Martin_County_2_herb_1,Martin_County_2_2001_herb_biomass)
# Martin_County_2_herb_3 <- rbind(Martin_County_2_herb_2,Martin_County_2_2002_herb_biomass)
# Martin_County_2_herb_4 <- rbind(Martin_County_2_herb_3,Martin_County_2_2003_herb_biomass)
# Martin_County_2_herb_5 <- rbind(Martin_County_2_herb_4,Martin_County_2_2004_herb_biomass)
# Martin_County_2_herb_6 <- rbind(Martin_County_2_herb_5,Martin_County_2_2005_herb_biomass)
# Martin_County_2_herb_7 <- rbind(Martin_County_2_herb_6,Martin_County_2_2006_herb_biomass)
# Martin_County_2_herb_8 <- rbind(Martin_County_2_herb_7,Martin_County_2_2007_herb_biomass)
# Martin_County_2_herb_9 <- rbind(Martin_County_2_herb_8,Martin_County_2_2008_herb_biomass)
# Martin_County_2_herb_10 <- rbind(Martin_County_2_herb_9,Martin_County_2_2009_herb_biomass)
# Martin_County_2_herb_11<- rbind(Martin_County_2_herb_10,Martin_County_2_2010_herb_biomass)
# Martin_County_2_herb_12 <- rbind(Martin_County_2_herb_11,Martin_County_2_2011_herb_biomass)
Martin_County_2_herb_13 <- rbind(Martin_County_2_2013_herb_biomass,Martin_County_2_2014_herb_biomass)
Martin_County_2_herb_14 <- rbind(Martin_County_2_herb_13,Martin_County_2_2015_herb_biomass)
Martin_County_2_herb_15 <- rbind(Martin_County_2_herb_14,Martin_County_2_2016_herb_biomass)
Martin_County_2_herb_biomass_data_combined <- rbind(Martin_County_2_herb_15,Martin_County_2_2018_herb_biomass)



# Martin_County_2_comm_1 <- rbind(Martin_County_2_1999_comm_biomass,Martin_County_2_2000_comm_biomass)
# Martin_County_2_comm_2 <- rbind(Martin_County_2_comm_1,Martin_County_2_2001_comm_biomass)
# Martin_County_2_comm_3 <- rbind(Martin_County_2_comm_2,Martin_County_2_2002_comm_biomass)
# Martin_County_2_comm_4 <- rbind(Martin_County_2_comm_3,Martin_County_2_2003_comm_biomass)
# Martin_County_2_comm_5 <- rbind(Martin_County_2_comm_4,Martin_County_2_2004_comm_biomass)
# Martin_County_2_comm_6 <- rbind(Martin_County_2_comm_5,Martin_County_2_2005_comm_biomass)
# Martin_County_2_comm_7 <- rbind(Martin_County_2_comm_6,Martin_County_2_2006_comm_biomass)
# Martin_County_2_comm_8 <- rbind(Martin_County_2_comm_7,Martin_County_2_2007_comm_biomass)
# Martin_County_2_comm_9 <- rbind(Martin_County_2_comm_8,Martin_County_2_2008_comm_biomass)
# Martin_County_2_comm_10 <- rbind(Martin_County_2_comm_9,Martin_County_2_2009_comm_biomass)
# Martin_County_2_comm_11<- rbind(Martin_County_2_comm_10,Martin_County_2_2010_comm_biomass)
# Martin_County_2_comm_12 <- rbind(Martin_County_2_comm_11,Martin_County_2_2011_comm_biomass)
Martin_County_2_comm_13 <- rbind(Martin_County_2_2013_comm_biomass,Martin_County_2_2014_comm_biomass)
Martin_County_2_comm_14 <- rbind(Martin_County_2_comm_13,Martin_County_2_2015_comm_biomass)
Martin_County_2_comm_15 <- rbind(Martin_County_2_comm_14,Martin_County_2_2016_comm_biomass)
Martin_County_2_comm_biomass_data_combined <- rbind(Martin_County_2_comm_15,Martin_County_2_2018_comm_biomass)



export(Martin_County_2_herb_biomass_data_combined, "Martin_County_2/data/Martin_County_2_herbivorous_biomass.csv")
export(Martin_County_2_comm_biomass_data_combined, "Martin_County_2/data/Martin_County_2_commercial_biomass.csv")




#Palm Beach 1

Palm_Beach_1_2013 <- import("Palm_Beach_1/data/Palm_Beach_1_2013.xls")

Palm_Beach_1_2013_herb <- merge(Palm_Beach_1_2013, Herb, by = c("SPECIES_CD"))
Palm_Beach_1_2013_herb_biomass <- summarise_at(Palm_Beach_1_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2013_herb_biomass$Year <- ('2013')
Palm_Beach_1_2013_herb_biomass$Reef <- ('Palm Beach 1')


Palm_Beach_1_2013_comm <- merge(Palm_Beach_1_2013, Comm, by = c("SPECIES_CD"))
Palm_Beach_1_2013_comm_biomass <- summarise_at(Palm_Beach_1_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2013_comm_biomass$Year <- ('2013')
Palm_Beach_1_2013_comm_biomass$Reef <- ('Palm Beach 1')


Palm_Beach_1_2014 <- import("Palm_Beach_1/data/Palm_Beach_1_2014.xls")

Palm_Beach_1_2014_herb <- merge(Palm_Beach_1_2014, Herb, by = c("SPECIES_CD"))
Palm_Beach_1_2014_herb_biomass <- summarise_at(Palm_Beach_1_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2014_herb_biomass$Year <- ('2014')
Palm_Beach_1_2014_herb_biomass$Reef <- ('Palm Beach 1')


Palm_Beach_1_2014_comm <- merge(Palm_Beach_1_2014, Comm, by = c("SPECIES_CD"))
Palm_Beach_1_2014_comm_biomass <- summarise_at(Palm_Beach_1_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2014_comm_biomass$Year <- ('2014')
Palm_Beach_1_2014_comm_biomass$Reef <- ('Palm Beach 1')


Palm_Beach_1_2015 <- import("Palm_Beach_1/data/Palm_Beach_1_2015.xls")

Palm_Beach_1_2015_herb <- merge(Palm_Beach_1_2015, Herb, by = c("SPECIES_CD"))
Palm_Beach_1_2015_herb_biomass <- summarise_at(Palm_Beach_1_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2015_herb_biomass$Year <- ('2015')
Palm_Beach_1_2015_herb_biomass$Reef <- ('Palm Beach 1')


Palm_Beach_1_2015_comm <- merge(Palm_Beach_1_2015, Comm, by = c("SPECIES_CD"))
Palm_Beach_1_2015_comm_biomass <- summarise_at(Palm_Beach_1_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2015_comm_biomass$Year <- ('2015')
Palm_Beach_1_2015_comm_biomass$Reef <- ('Palm Beach 1')

Palm_Beach_1_2016 <- import("Palm_Beach_1/data/Palm_Beach_1_2016.xls")

Palm_Beach_1_2016_herb <- merge(Palm_Beach_1_2016, Herb, by = c("SPECIES_CD"))
Palm_Beach_1_2016_herb_biomass <- summarise_at(Palm_Beach_1_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2016_herb_biomass$Year <- ('2016')
Palm_Beach_1_2016_herb_biomass$Reef <- ('Palm Beach 1')


Palm_Beach_1_2016_comm <- merge(Palm_Beach_1_2016, Comm, by = c("SPECIES_CD"))
Palm_Beach_1_2016_comm_biomass <- summarise_at(Palm_Beach_1_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2016_comm_biomass$Year <- ('2016')
Palm_Beach_1_2016_comm_biomass$Reef <- ('Palm Beach 1')


Palm_Beach_1_2018 <- import("Palm_Beach_1/data/Palm_Beach_1_2018.xls")

Palm_Beach_1_2018_herb <- merge(Palm_Beach_1_2018, Herb, by = c("SPECIES_CD"))
Palm_Beach_1_2018_herb_biomass <- summarise_at(Palm_Beach_1_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2018_herb_biomass$Year <- ('2018')
Palm_Beach_1_2018_herb_biomass$Reef <- ('Palm Beach 1')


Palm_Beach_1_2018_comm <- merge(Palm_Beach_1_2018, Comm, by = c("SPECIES_CD"))
Palm_Beach_1_2018_comm_biomass <- summarise_at(Palm_Beach_1_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_1_2018_comm_biomass$Year <- ('2018')
Palm_Beach_1_2018_comm_biomass$Reef <- ('Palm Beach 1')



### Combine all years together for herbivorous and commercial seperately



# Palm_Beach_1_herb_1 <- rbind(Palm_Beach_1_1999_herb_biomass,Palm_Beach_1_2000_herb_biomass)
# Palm_Beach_1_herb_2 <- rbind(Palm_Beach_1_herb_1,Palm_Beach_1_2001_herb_biomass)
# Palm_Beach_1_herb_3 <- rbind(Palm_Beach_1_herb_2,Palm_Beach_1_2002_herb_biomass)
# Palm_Beach_1_herb_4 <- rbind(Palm_Beach_1_herb_3,Palm_Beach_1_2003_herb_biomass)
# Palm_Beach_1_herb_5 <- rbind(Palm_Beach_1_herb_4,Palm_Beach_1_2004_herb_biomass)
# Palm_Beach_1_herb_6 <- rbind(Palm_Beach_1_herb_5,Palm_Beach_1_2005_herb_biomass)
# Palm_Beach_1_herb_7 <- rbind(Palm_Beach_1_herb_6,Palm_Beach_1_2006_herb_biomass)
# Palm_Beach_1_herb_8 <- rbind(Palm_Beach_1_herb_7,Palm_Beach_1_2007_herb_biomass)
# Palm_Beach_1_herb_9 <- rbind(Palm_Beach_1_herb_8,Palm_Beach_1_2008_herb_biomass)
# Palm_Beach_1_herb_10 <- rbind(Palm_Beach_1_herb_9,Palm_Beach_1_2009_herb_biomass)
# Palm_Beach_1_herb_11<- rbind(Palm_Beach_1_herb_10,Palm_Beach_1_2010_herb_biomass)
# Palm_Beach_1_herb_12 <- rbind(Palm_Beach_1_herb_11,Palm_Beach_1_2011_herb_biomass)
Palm_Beach_1_herb_13 <- rbind(Palm_Beach_1_2013_herb_biomass,Palm_Beach_1_2014_herb_biomass)
Palm_Beach_1_herb_14 <- rbind(Palm_Beach_1_herb_13,Palm_Beach_1_2015_herb_biomass)
Palm_Beach_1_herb_15 <- rbind(Palm_Beach_1_herb_14,Palm_Beach_1_2016_herb_biomass)
Palm_Beach_1_herb_biomass_data_combined <- rbind(Palm_Beach_1_herb_15,Palm_Beach_1_2018_herb_biomass)



# Palm_Beach_1_comm_1 <- rbind(Palm_Beach_1_1999_comm_biomass,Palm_Beach_1_2000_comm_biomass)
# Palm_Beach_1_comm_2 <- rbind(Palm_Beach_1_comm_1,Palm_Beach_1_2001_comm_biomass)
# Palm_Beach_1_comm_3 <- rbind(Palm_Beach_1_comm_2,Palm_Beach_1_2002_comm_biomass)
# Palm_Beach_1_comm_4 <- rbind(Palm_Beach_1_comm_3,Palm_Beach_1_2003_comm_biomass)
# Palm_Beach_1_comm_5 <- rbind(Palm_Beach_1_comm_4,Palm_Beach_1_2004_comm_biomass)
# Palm_Beach_1_comm_6 <- rbind(Palm_Beach_1_comm_5,Palm_Beach_1_2005_comm_biomass)
# Palm_Beach_1_comm_7 <- rbind(Palm_Beach_1_comm_6,Palm_Beach_1_2006_comm_biomass)
# Palm_Beach_1_comm_8 <- rbind(Palm_Beach_1_comm_7,Palm_Beach_1_2007_comm_biomass)
# Palm_Beach_1_comm_9 <- rbind(Palm_Beach_1_comm_8,Palm_Beach_1_2008_comm_biomass)
# Palm_Beach_1_comm_10 <- rbind(Palm_Beach_1_comm_9,Palm_Beach_1_2009_comm_biomass)
# Palm_Beach_1_comm_11<- rbind(Palm_Beach_1_comm_10,Palm_Beach_1_2010_comm_biomass)
# Palm_Beach_1_comm_12 <- rbind(Palm_Beach_1_comm_11,Palm_Beach_1_2011_comm_biomass)
Palm_Beach_1_comm_13 <- rbind(Palm_Beach_1_2013_comm_biomass,Palm_Beach_1_2014_comm_biomass)
Palm_Beach_1_comm_14 <- rbind(Palm_Beach_1_comm_13,Palm_Beach_1_2015_comm_biomass)
Palm_Beach_1_comm_15 <- rbind(Palm_Beach_1_comm_14,Palm_Beach_1_2016_comm_biomass)
Palm_Beach_1_comm_biomass_data_combined <- rbind(Palm_Beach_1_comm_15,Palm_Beach_1_2018_comm_biomass)



export(Palm_Beach_1_herb_biomass_data_combined, "Palm_Beach_1/data/Palm_Beach_1_herbivorous_biomass.csv")
export(Palm_Beach_1_comm_biomass_data_combined, "Palm_Beach_1/data/Palm_Beach_1_commercial_biomass.csv")




#Palm Beach 2

Palm_Beach_2_2013 <- import("Palm_Beach_2/data/Palm_Beach_2_2013.xls")

Palm_Beach_2_2013_herb <- merge(Palm_Beach_2_2013, Herb, by = c("SPECIES_CD"))
Palm_Beach_2_2013_herb_biomass <- summarise_at(Palm_Beach_2_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2013_herb_biomass$Year <- ('2013')
Palm_Beach_2_2013_herb_biomass$Reef <- ('Palm Beach 2')


Palm_Beach_2_2013_comm <- merge(Palm_Beach_2_2013, Comm, by = c("SPECIES_CD"))
Palm_Beach_2_2013_comm_biomass <- summarise_at(Palm_Beach_2_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2013_comm_biomass$Year <- ('2013')
Palm_Beach_2_2013_comm_biomass$Reef <- ('Palm Beach 2')


Palm_Beach_2_2014 <- import("Palm_Beach_2/data/Palm_Beach_2_2014.xls")

Palm_Beach_2_2014_herb <- merge(Palm_Beach_2_2014, Herb, by = c("SPECIES_CD"))
Palm_Beach_2_2014_herb_biomass <- summarise_at(Palm_Beach_2_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2014_herb_biomass$Year <- ('2014')
Palm_Beach_2_2014_herb_biomass$Reef <- ('Palm Beach 2')


Palm_Beach_2_2014_comm <- merge(Palm_Beach_2_2014, Comm, by = c("SPECIES_CD"))
Palm_Beach_2_2014_comm_biomass <- summarise_at(Palm_Beach_2_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2014_comm_biomass$Year <- ('2014')
Palm_Beach_2_2014_comm_biomass$Reef <- ('Palm Beach 2')


Palm_Beach_2_2015 <- import("Palm_Beach_2/data/Palm_Beach_2_2015.xls")

Palm_Beach_2_2015_herb <- merge(Palm_Beach_2_2015, Herb, by = c("SPECIES_CD"))
Palm_Beach_2_2015_herb_biomass <- summarise_at(Palm_Beach_2_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2015_herb_biomass$Year <- ('2015')
Palm_Beach_2_2015_herb_biomass$Reef <- ('Palm Beach 2')


Palm_Beach_2_2015_comm <- merge(Palm_Beach_2_2015, Comm, by = c("SPECIES_CD"))
Palm_Beach_2_2015_comm_biomass <- summarise_at(Palm_Beach_2_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2015_comm_biomass$Year <- ('2015')
Palm_Beach_2_2015_comm_biomass$Reef <- ('Palm Beach 2')

Palm_Beach_2_2016 <- import("Palm_Beach_2/data/Palm_Beach_2_2016.xls")

Palm_Beach_2_2016_herb <- merge(Palm_Beach_2_2016, Herb, by = c("SPECIES_CD"))
Palm_Beach_2_2016_herb_biomass <- summarise_at(Palm_Beach_2_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2016_herb_biomass$Year <- ('2016')
Palm_Beach_2_2016_herb_biomass$Reef <- ('Palm Beach 2')


Palm_Beach_2_2016_comm <- merge(Palm_Beach_2_2016, Comm, by = c("SPECIES_CD"))
Palm_Beach_2_2016_comm_biomass <- summarise_at(Palm_Beach_2_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2016_comm_biomass$Year <- ('2016')
Palm_Beach_2_2016_comm_biomass$Reef <- ('Palm Beach 2')


Palm_Beach_2_2018 <- import("Palm_Beach_2/data/Palm_Beach_2_2018.xls")

Palm_Beach_2_2018_herb <- merge(Palm_Beach_2_2018, Herb, by = c("SPECIES_CD"))
Palm_Beach_2_2018_herb_biomass <- summarise_at(Palm_Beach_2_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2018_herb_biomass$Year <- ('2018')
Palm_Beach_2_2018_herb_biomass$Reef <- ('Palm Beach 2')


Palm_Beach_2_2018_comm <- merge(Palm_Beach_2_2018, Comm, by = c("SPECIES_CD"))
Palm_Beach_2_2018_comm_biomass <- summarise_at(Palm_Beach_2_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_2_2018_comm_biomass$Year <- ('2018')
Palm_Beach_2_2018_comm_biomass$Reef <- ('Palm Beach 2')



### Combine all years together for herbivorous and commercial seperately



# Palm_Beach_2_herb_1 <- rbind(Palm_Beach_2_1999_herb_biomass,Palm_Beach_2_2000_herb_biomass)
# Palm_Beach_2_herb_2 <- rbind(Palm_Beach_2_herb_1,Palm_Beach_2_2001_herb_biomass)
# Palm_Beach_2_herb_3 <- rbind(Palm_Beach_2_herb_2,Palm_Beach_2_2002_herb_biomass)
# Palm_Beach_2_herb_4 <- rbind(Palm_Beach_2_herb_3,Palm_Beach_2_2003_herb_biomass)
# Palm_Beach_2_herb_5 <- rbind(Palm_Beach_2_herb_4,Palm_Beach_2_2004_herb_biomass)
# Palm_Beach_2_herb_6 <- rbind(Palm_Beach_2_herb_5,Palm_Beach_2_2005_herb_biomass)
# Palm_Beach_2_herb_7 <- rbind(Palm_Beach_2_herb_6,Palm_Beach_2_2006_herb_biomass)
# Palm_Beach_2_herb_8 <- rbind(Palm_Beach_2_herb_7,Palm_Beach_2_2007_herb_biomass)
# Palm_Beach_2_herb_9 <- rbind(Palm_Beach_2_herb_8,Palm_Beach_2_2008_herb_biomass)
# Palm_Beach_2_herb_10 <- rbind(Palm_Beach_2_herb_9,Palm_Beach_2_2009_herb_biomass)
# Palm_Beach_2_herb_11<- rbind(Palm_Beach_2_herb_10,Palm_Beach_2_2010_herb_biomass)
# Palm_Beach_2_herb_12 <- rbind(Palm_Beach_2_herb_11,Palm_Beach_2_2011_herb_biomass)
Palm_Beach_2_herb_13 <- rbind(Palm_Beach_2_2013_herb_biomass,Palm_Beach_2_2014_herb_biomass)
Palm_Beach_2_herb_14 <- rbind(Palm_Beach_2_herb_13,Palm_Beach_2_2015_herb_biomass)
Palm_Beach_2_herb_15 <- rbind(Palm_Beach_2_herb_14,Palm_Beach_2_2016_herb_biomass)
Palm_Beach_2_herb_biomass_data_combined <- rbind(Palm_Beach_2_herb_15,Palm_Beach_2_2018_herb_biomass)



# Palm_Beach_2_comm_1 <- rbind(Palm_Beach_2_1999_comm_biomass,Palm_Beach_2_2000_comm_biomass)
# Palm_Beach_2_comm_2 <- rbind(Palm_Beach_2_comm_1,Palm_Beach_2_2001_comm_biomass)
# Palm_Beach_2_comm_3 <- rbind(Palm_Beach_2_comm_2,Palm_Beach_2_2002_comm_biomass)
# Palm_Beach_2_comm_4 <- rbind(Palm_Beach_2_comm_3,Palm_Beach_2_2003_comm_biomass)
# Palm_Beach_2_comm_5 <- rbind(Palm_Beach_2_comm_4,Palm_Beach_2_2004_comm_biomass)
# Palm_Beach_2_comm_6 <- rbind(Palm_Beach_2_comm_5,Palm_Beach_2_2005_comm_biomass)
# Palm_Beach_2_comm_7 <- rbind(Palm_Beach_2_comm_6,Palm_Beach_2_2006_comm_biomass)
# Palm_Beach_2_comm_8 <- rbind(Palm_Beach_2_comm_7,Palm_Beach_2_2007_comm_biomass)
# Palm_Beach_2_comm_9 <- rbind(Palm_Beach_2_comm_8,Palm_Beach_2_2008_comm_biomass)
# Palm_Beach_2_comm_10 <- rbind(Palm_Beach_2_comm_9,Palm_Beach_2_2009_comm_biomass)
# Palm_Beach_2_comm_11<- rbind(Palm_Beach_2_comm_10,Palm_Beach_2_2010_comm_biomass)
# Palm_Beach_2_comm_12 <- rbind(Palm_Beach_2_comm_11,Palm_Beach_2_2011_comm_biomass)
Palm_Beach_2_comm_13 <- rbind(Palm_Beach_2_2013_comm_biomass,Palm_Beach_2_2014_comm_biomass)
Palm_Beach_2_comm_14 <- rbind(Palm_Beach_2_comm_13,Palm_Beach_2_2015_comm_biomass)
Palm_Beach_2_comm_15 <- rbind(Palm_Beach_2_comm_14,Palm_Beach_2_2016_comm_biomass)
Palm_Beach_2_comm_biomass_data_combined <- rbind(Palm_Beach_2_comm_15,Palm_Beach_2_2018_comm_biomass)



export(Palm_Beach_2_herb_biomass_data_combined, "Palm_Beach_2/data/Palm_Beach_2_herbivorous_biomass.csv")
export(Palm_Beach_2_comm_biomass_data_combined, "Palm_Beach_2/data/Palm_Beach_2_commercial_biomass.csv")



#Palm Beach 3

Palm_Beach_3_2013 <- import("Palm_Beach_3/data/Palm_Beach_3_2013.xls")

Palm_Beach_3_2013_herb <- merge(Palm_Beach_3_2013, Herb, by = c("SPECIES_CD"))
Palm_Beach_3_2013_herb_biomass <- summarise_at(Palm_Beach_3_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2013_herb_biomass$Year <- ('2013')
Palm_Beach_3_2013_herb_biomass$Reef <- ('Palm Beach 3')


Palm_Beach_3_2013_comm <- merge(Palm_Beach_3_2013, Comm, by = c("SPECIES_CD"))
Palm_Beach_3_2013_comm_biomass <- summarise_at(Palm_Beach_3_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2013_comm_biomass$Year <- ('2013')
Palm_Beach_3_2013_comm_biomass$Reef <- ('Palm Beach 3')


Palm_Beach_3_2014 <- import("Palm_Beach_3/data/Palm_Beach_3_2014.xls")

Palm_Beach_3_2014_herb <- merge(Palm_Beach_3_2014, Herb, by = c("SPECIES_CD"))
Palm_Beach_3_2014_herb_biomass <- summarise_at(Palm_Beach_3_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2014_herb_biomass$Year <- ('2014')
Palm_Beach_3_2014_herb_biomass$Reef <- ('Palm Beach 3')


Palm_Beach_3_2014_comm <- merge(Palm_Beach_3_2014, Comm, by = c("SPECIES_CD"))
Palm_Beach_3_2014_comm_biomass <- summarise_at(Palm_Beach_3_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2014_comm_biomass$Year <- ('2014')
Palm_Beach_3_2014_comm_biomass$Reef <- ('Palm Beach 3')


Palm_Beach_3_2015 <- import("Palm_Beach_3/data/Palm_Beach_3_2015.xls")

Palm_Beach_3_2015_herb <- merge(Palm_Beach_3_2015, Herb, by = c("SPECIES_CD"))
Palm_Beach_3_2015_herb_biomass <- summarise_at(Palm_Beach_3_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2015_herb_biomass$Year <- ('2015')
Palm_Beach_3_2015_herb_biomass$Reef <- ('Palm Beach 3')


Palm_Beach_3_2015_comm <- merge(Palm_Beach_3_2015, Comm, by = c("SPECIES_CD"))
Palm_Beach_3_2015_comm_biomass <- summarise_at(Palm_Beach_3_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2015_comm_biomass$Year <- ('2015')
Palm_Beach_3_2015_comm_biomass$Reef <- ('Palm Beach 3')

Palm_Beach_3_2016 <- import("Palm_Beach_3/data/Palm_Beach_3_2016.xls")

Palm_Beach_3_2016_herb <- merge(Palm_Beach_3_2016, Herb, by = c("SPECIES_CD"))
Palm_Beach_3_2016_herb_biomass <- summarise_at(Palm_Beach_3_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2016_herb_biomass$Year <- ('2016')
Palm_Beach_3_2016_herb_biomass$Reef <- ('Palm Beach 3')


Palm_Beach_3_2016_comm <- merge(Palm_Beach_3_2016, Comm, by = c("SPECIES_CD"))
Palm_Beach_3_2016_comm_biomass <- summarise_at(Palm_Beach_3_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2016_comm_biomass$Year <- ('2016')
Palm_Beach_3_2016_comm_biomass$Reef <- ('Palm Beach 3')


Palm_Beach_3_2018 <- import("Palm_Beach_3/data/Palm_Beach_3_2018.xls")

Palm_Beach_3_2018_herb <- merge(Palm_Beach_3_2018, Herb, by = c("SPECIES_CD"))
Palm_Beach_3_2018_herb_biomass <- summarise_at(Palm_Beach_3_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2018_herb_biomass$Year <- ('2018')
Palm_Beach_3_2018_herb_biomass$Reef <- ('Palm Beach 3')


Palm_Beach_3_2018_comm <- merge(Palm_Beach_3_2018, Comm, by = c("SPECIES_CD"))
Palm_Beach_3_2018_comm_biomass <- summarise_at(Palm_Beach_3_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_3_2018_comm_biomass$Year <- ('2018')
Palm_Beach_3_2018_comm_biomass$Reef <- ('Palm Beach 3')



### Combine all years together for herbivorous and commercial seperately



# Palm_Beach_3_herb_1 <- rbind(Palm_Beach_3_1999_herb_biomass,Palm_Beach_3_2000_herb_biomass)
# Palm_Beach_3_herb_2 <- rbind(Palm_Beach_3_herb_1,Palm_Beach_3_2001_herb_biomass)
# Palm_Beach_3_herb_3 <- rbind(Palm_Beach_3_herb_2,Palm_Beach_3_2002_herb_biomass)
# Palm_Beach_3_herb_4 <- rbind(Palm_Beach_3_herb_3,Palm_Beach_3_2003_herb_biomass)
# Palm_Beach_3_herb_5 <- rbind(Palm_Beach_3_herb_4,Palm_Beach_3_2004_herb_biomass)
# Palm_Beach_3_herb_6 <- rbind(Palm_Beach_3_herb_5,Palm_Beach_3_2005_herb_biomass)
# Palm_Beach_3_herb_7 <- rbind(Palm_Beach_3_herb_6,Palm_Beach_3_2006_herb_biomass)
# Palm_Beach_3_herb_8 <- rbind(Palm_Beach_3_herb_7,Palm_Beach_3_2007_herb_biomass)
# Palm_Beach_3_herb_9 <- rbind(Palm_Beach_3_herb_8,Palm_Beach_3_2008_herb_biomass)
# Palm_Beach_3_herb_10 <- rbind(Palm_Beach_3_herb_9,Palm_Beach_3_2009_herb_biomass)
# Palm_Beach_3_herb_11<- rbind(Palm_Beach_3_herb_10,Palm_Beach_3_2010_herb_biomass)
# Palm_Beach_3_herb_12 <- rbind(Palm_Beach_3_herb_11,Palm_Beach_3_2011_herb_biomass)
Palm_Beach_3_herb_13 <- rbind(Palm_Beach_3_2013_herb_biomass,Palm_Beach_3_2014_herb_biomass)
Palm_Beach_3_herb_14 <- rbind(Palm_Beach_3_herb_13,Palm_Beach_3_2015_herb_biomass)
Palm_Beach_3_herb_15 <- rbind(Palm_Beach_3_herb_14,Palm_Beach_3_2016_herb_biomass)
Palm_Beach_3_herb_biomass_data_combined <- rbind(Palm_Beach_3_herb_15,Palm_Beach_3_2018_herb_biomass)



# Palm_Beach_3_comm_1 <- rbind(Palm_Beach_3_1999_comm_biomass,Palm_Beach_3_2000_comm_biomass)
# Palm_Beach_3_comm_2 <- rbind(Palm_Beach_3_comm_1,Palm_Beach_3_2001_comm_biomass)
# Palm_Beach_3_comm_3 <- rbind(Palm_Beach_3_comm_2,Palm_Beach_3_2002_comm_biomass)
# Palm_Beach_3_comm_4 <- rbind(Palm_Beach_3_comm_3,Palm_Beach_3_2003_comm_biomass)
# Palm_Beach_3_comm_5 <- rbind(Palm_Beach_3_comm_4,Palm_Beach_3_2004_comm_biomass)
# Palm_Beach_3_comm_6 <- rbind(Palm_Beach_3_comm_5,Palm_Beach_3_2005_comm_biomass)
# Palm_Beach_3_comm_7 <- rbind(Palm_Beach_3_comm_6,Palm_Beach_3_2006_comm_biomass)
# Palm_Beach_3_comm_8 <- rbind(Palm_Beach_3_comm_7,Palm_Beach_3_2007_comm_biomass)
# Palm_Beach_3_comm_9 <- rbind(Palm_Beach_3_comm_8,Palm_Beach_3_2008_comm_biomass)
# Palm_Beach_3_comm_10 <- rbind(Palm_Beach_3_comm_9,Palm_Beach_3_2009_comm_biomass)
# Palm_Beach_3_comm_11<- rbind(Palm_Beach_3_comm_10,Palm_Beach_3_2010_comm_biomass)
# Palm_Beach_3_comm_12 <- rbind(Palm_Beach_3_comm_11,Palm_Beach_3_2011_comm_biomass)
Palm_Beach_3_comm_13 <- rbind(Palm_Beach_3_2013_comm_biomass,Palm_Beach_3_2014_comm_biomass)
Palm_Beach_3_comm_14 <- rbind(Palm_Beach_3_comm_13,Palm_Beach_3_2015_comm_biomass)
Palm_Beach_3_comm_15 <- rbind(Palm_Beach_3_comm_14,Palm_Beach_3_2016_comm_biomass)
Palm_Beach_3_comm_biomass_data_combined <- rbind(Palm_Beach_3_comm_15,Palm_Beach_3_2018_comm_biomass)



export(Palm_Beach_3_herb_biomass_data_combined, "Palm_Beach_3/data/Palm_Beach_3_herbivorous_biomass.csv")
export(Palm_Beach_3_comm_biomass_data_combined, "Palm_Beach_3/data/Palm_Beach_3_commercial_biomass.csv")



#Palm Beach 4

Palm_Beach_4_2013 <- import("Palm_Beach_4/data/Palm_Beach_4_2013.xls")

Palm_Beach_4_2013_herb <- merge(Palm_Beach_4_2013, Herb, by = c("SPECIES_CD"))
Palm_Beach_4_2013_herb_biomass <- summarise_at(Palm_Beach_4_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2013_herb_biomass$Year <- ('2013')
Palm_Beach_4_2013_herb_biomass$Reef <- ('Palm Beach 4')


Palm_Beach_4_2013_comm <- merge(Palm_Beach_4_2013, Comm, by = c("SPECIES_CD"))
Palm_Beach_4_2013_comm_biomass <- summarise_at(Palm_Beach_4_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2013_comm_biomass$Year <- ('2013')
Palm_Beach_4_2013_comm_biomass$Reef <- ('Palm Beach 4')


Palm_Beach_4_2014 <- import("Palm_Beach_4/data/Palm_Beach_4_2014.xls")

Palm_Beach_4_2014_herb <- merge(Palm_Beach_4_2014, Herb, by = c("SPECIES_CD"))
Palm_Beach_4_2014_herb_biomass <- summarise_at(Palm_Beach_4_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2014_herb_biomass$Year <- ('2014')
Palm_Beach_4_2014_herb_biomass$Reef <- ('Palm Beach 4')


Palm_Beach_4_2014_comm <- merge(Palm_Beach_4_2014, Comm, by = c("SPECIES_CD"))
Palm_Beach_4_2014_comm_biomass <- summarise_at(Palm_Beach_4_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2014_comm_biomass$Year <- ('2014')
Palm_Beach_4_2014_comm_biomass$Reef <- ('Palm Beach 4')


Palm_Beach_4_2015 <- import("Palm_Beach_4/data/Palm_Beach_4_2015.xls")

Palm_Beach_4_2015_herb <- merge(Palm_Beach_4_2015, Herb, by = c("SPECIES_CD"))
Palm_Beach_4_2015_herb_biomass <- summarise_at(Palm_Beach_4_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2015_herb_biomass$Year <- ('2015')
Palm_Beach_4_2015_herb_biomass$Reef <- ('Palm Beach 4')


Palm_Beach_4_2015_comm <- merge(Palm_Beach_4_2015, Comm, by = c("SPECIES_CD"))
Palm_Beach_4_2015_comm_biomass <- summarise_at(Palm_Beach_4_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2015_comm_biomass$Year <- ('2015')
Palm_Beach_4_2015_comm_biomass$Reef <- ('Palm Beach 4')

Palm_Beach_4_2016 <- import("Palm_Beach_4/data/Palm_Beach_4_2016.xls")

Palm_Beach_4_2016_herb <- merge(Palm_Beach_4_2016, Herb, by = c("SPECIES_CD"))
Palm_Beach_4_2016_herb_biomass <- summarise_at(Palm_Beach_4_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2016_herb_biomass$Year <- ('2016')
Palm_Beach_4_2016_herb_biomass$Reef <- ('Palm Beach 4')


Palm_Beach_4_2016_comm <- merge(Palm_Beach_4_2016, Comm, by = c("SPECIES_CD"))
Palm_Beach_4_2016_comm_biomass <- summarise_at(Palm_Beach_4_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2016_comm_biomass$Year <- ('2016')
Palm_Beach_4_2016_comm_biomass$Reef <- ('Palm Beach 4')


Palm_Beach_4_2018 <- import("Palm_Beach_4/data/Palm_Beach_4_2018.xls")

Palm_Beach_4_2018_herb <- merge(Palm_Beach_4_2018, Herb, by = c("SPECIES_CD"))
Palm_Beach_4_2018_herb_biomass <- summarise_at(Palm_Beach_4_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2018_herb_biomass$Year <- ('2018')
Palm_Beach_4_2018_herb_biomass$Reef <- ('Palm Beach 4')


Palm_Beach_4_2018_comm <- merge(Palm_Beach_4_2018, Comm, by = c("SPECIES_CD"))
Palm_Beach_4_2018_comm_biomass <- summarise_at(Palm_Beach_4_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_4_2018_comm_biomass$Year <- ('2018')
Palm_Beach_4_2018_comm_biomass$Reef <- ('Palm Beach 4')



### Combine all years together for herbivorous and commercial seperately



# Palm_Beach_4_herb_1 <- rbind(Palm_Beach_4_1999_herb_biomass,Palm_Beach_4_2000_herb_biomass)
# Palm_Beach_4_herb_2 <- rbind(Palm_Beach_4_herb_1,Palm_Beach_4_2001_herb_biomass)
# Palm_Beach_4_herb_3 <- rbind(Palm_Beach_4_herb_2,Palm_Beach_4_2002_herb_biomass)
# Palm_Beach_4_herb_4 <- rbind(Palm_Beach_4_herb_3,Palm_Beach_4_2003_herb_biomass)
# Palm_Beach_4_herb_5 <- rbind(Palm_Beach_4_herb_4,Palm_Beach_4_2004_herb_biomass)
# Palm_Beach_4_herb_6 <- rbind(Palm_Beach_4_herb_5,Palm_Beach_4_2005_herb_biomass)
# Palm_Beach_4_herb_7 <- rbind(Palm_Beach_4_herb_6,Palm_Beach_4_2006_herb_biomass)
# Palm_Beach_4_herb_8 <- rbind(Palm_Beach_4_herb_7,Palm_Beach_4_2007_herb_biomass)
# Palm_Beach_4_herb_9 <- rbind(Palm_Beach_4_herb_8,Palm_Beach_4_2008_herb_biomass)
# Palm_Beach_4_herb_10 <- rbind(Palm_Beach_4_herb_9,Palm_Beach_4_2009_herb_biomass)
# Palm_Beach_4_herb_11<- rbind(Palm_Beach_4_herb_10,Palm_Beach_4_2010_herb_biomass)
# Palm_Beach_4_herb_12 <- rbind(Palm_Beach_4_herb_11,Palm_Beach_4_2011_herb_biomass)
Palm_Beach_4_herb_13 <- rbind(Palm_Beach_4_2013_herb_biomass,Palm_Beach_4_2014_herb_biomass)
Palm_Beach_4_herb_14 <- rbind(Palm_Beach_4_herb_13,Palm_Beach_4_2015_herb_biomass)
Palm_Beach_4_herb_15 <- rbind(Palm_Beach_4_herb_14,Palm_Beach_4_2016_herb_biomass)
Palm_Beach_4_herb_biomass_data_combined <- rbind(Palm_Beach_4_herb_15,Palm_Beach_4_2018_herb_biomass)



# Palm_Beach_4_comm_1 <- rbind(Palm_Beach_4_1999_comm_biomass,Palm_Beach_4_2000_comm_biomass)
# Palm_Beach_4_comm_2 <- rbind(Palm_Beach_4_comm_1,Palm_Beach_4_2001_comm_biomass)
# Palm_Beach_4_comm_3 <- rbind(Palm_Beach_4_comm_2,Palm_Beach_4_2002_comm_biomass)
# Palm_Beach_4_comm_4 <- rbind(Palm_Beach_4_comm_3,Palm_Beach_4_2003_comm_biomass)
# Palm_Beach_4_comm_5 <- rbind(Palm_Beach_4_comm_4,Palm_Beach_4_2004_comm_biomass)
# Palm_Beach_4_comm_6 <- rbind(Palm_Beach_4_comm_5,Palm_Beach_4_2005_comm_biomass)
# Palm_Beach_4_comm_7 <- rbind(Palm_Beach_4_comm_6,Palm_Beach_4_2006_comm_biomass)
# Palm_Beach_4_comm_8 <- rbind(Palm_Beach_4_comm_7,Palm_Beach_4_2007_comm_biomass)
# Palm_Beach_4_comm_9 <- rbind(Palm_Beach_4_comm_8,Palm_Beach_4_2008_comm_biomass)
# Palm_Beach_4_comm_10 <- rbind(Palm_Beach_4_comm_9,Palm_Beach_4_2009_comm_biomass)
# Palm_Beach_4_comm_11<- rbind(Palm_Beach_4_comm_10,Palm_Beach_4_2010_comm_biomass)
# Palm_Beach_4_comm_12 <- rbind(Palm_Beach_4_comm_11,Palm_Beach_4_2011_comm_biomass)
Palm_Beach_4_comm_13 <- rbind(Palm_Beach_4_2013_comm_biomass,Palm_Beach_4_2014_comm_biomass)
Palm_Beach_4_comm_14 <- rbind(Palm_Beach_4_comm_13,Palm_Beach_4_2015_comm_biomass)
Palm_Beach_4_comm_15 <- rbind(Palm_Beach_4_comm_14,Palm_Beach_4_2016_comm_biomass)
Palm_Beach_4_comm_biomass_data_combined <- rbind(Palm_Beach_4_comm_15,Palm_Beach_4_2018_comm_biomass)



export(Palm_Beach_4_herb_biomass_data_combined, "Palm_Beach_4/data/Palm_Beach_4_herbivorous_biomass.csv")
export(Palm_Beach_4_comm_biomass_data_combined, "Palm_Beach_4/data/Palm_Beach_4_commercial_biomass.csv")


#Palm Beach 5

Palm_Beach_5_2013 <- import("Palm_Beach_5/data/Palm_Beach_5_2013.xls")

Palm_Beach_5_2013_herb <- merge(Palm_Beach_5_2013, Herb, by = c("SPECIES_CD"))
Palm_Beach_5_2013_herb_biomass <- summarise_at(Palm_Beach_5_2013_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2013_herb_biomass$Year <- ('2013')
Palm_Beach_5_2013_herb_biomass$Reef <- ('Palm Beach 5')


Palm_Beach_5_2013_comm <- merge(Palm_Beach_5_2013, Comm, by = c("SPECIES_CD"))
Palm_Beach_5_2013_comm_biomass <- summarise_at(Palm_Beach_5_2013, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2013_comm_biomass$Year <- ('2013')
Palm_Beach_5_2013_comm_biomass$Reef <- ('Palm Beach 5')


Palm_Beach_5_2014 <- import("Palm_Beach_5/data/Palm_Beach_5_2014.xls")

Palm_Beach_5_2014_herb <- merge(Palm_Beach_5_2014, Herb, by = c("SPECIES_CD"))
Palm_Beach_5_2014_herb_biomass <- summarise_at(Palm_Beach_5_2014_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2014_herb_biomass$Year <- ('2014')
Palm_Beach_5_2014_herb_biomass$Reef <- ('Palm Beach 5')


Palm_Beach_5_2014_comm <- merge(Palm_Beach_5_2014, Comm, by = c("SPECIES_CD"))
Palm_Beach_5_2014_comm_biomass <- summarise_at(Palm_Beach_5_2014, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2014_comm_biomass$Year <- ('2014')
Palm_Beach_5_2014_comm_biomass$Reef <- ('Palm Beach 5')


Palm_Beach_5_2015 <- import("Palm_Beach_5/data/Palm_Beach_5_2015.xls")

Palm_Beach_5_2015_herb <- merge(Palm_Beach_5_2015, Herb, by = c("SPECIES_CD"))
Palm_Beach_5_2015_herb_biomass <- summarise_at(Palm_Beach_5_2015_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2015_herb_biomass$Year <- ('2015')
Palm_Beach_5_2015_herb_biomass$Reef <- ('Palm Beach 5')


Palm_Beach_5_2015_comm <- merge(Palm_Beach_5_2015, Comm, by = c("SPECIES_CD"))
Palm_Beach_5_2015_comm_biomass <- summarise_at(Palm_Beach_5_2015, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2015_comm_biomass$Year <- ('2015')
Palm_Beach_5_2015_comm_biomass$Reef <- ('Palm Beach 5')

Palm_Beach_5_2016 <- import("Palm_Beach_5/data/Palm_Beach_5_2016.xls")

Palm_Beach_5_2016_herb <- merge(Palm_Beach_5_2016, Herb, by = c("SPECIES_CD"))
Palm_Beach_5_2016_herb_biomass <- summarise_at(Palm_Beach_5_2016_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2016_herb_biomass$Year <- ('2016')
Palm_Beach_5_2016_herb_biomass$Reef <- ('Palm Beach 5')


Palm_Beach_5_2016_comm <- merge(Palm_Beach_5_2016, Comm, by = c("SPECIES_CD"))
Palm_Beach_5_2016_comm_biomass <- summarise_at(Palm_Beach_5_2016, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2016_comm_biomass$Year <- ('2016')
Palm_Beach_5_2016_comm_biomass$Reef <- ('Palm Beach 5')


Palm_Beach_5_2018 <- import("Palm_Beach_5/data/Palm_Beach_5_2018.xls")

Palm_Beach_5_2018_herb <- merge(Palm_Beach_5_2018, Herb, by = c("SPECIES_CD"))
Palm_Beach_5_2018_herb_biomass <- summarise_at(Palm_Beach_5_2018_herb, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2018_herb_biomass$Year <- ('2018')
Palm_Beach_5_2018_herb_biomass$Reef <- ('Palm Beach 5')


Palm_Beach_5_2018_comm <- merge(Palm_Beach_5_2018, Comm, by = c("SPECIES_CD"))
Palm_Beach_5_2018_comm_biomass <- summarise_at(Palm_Beach_5_2018, vars('biomass'), funs(sum,max,min,mean,sd), na.rm = TRUE)
Palm_Beach_5_2018_comm_biomass$Year <- ('2018')
Palm_Beach_5_2018_comm_biomass$Reef <- ('Palm Beach 5')



### Combine all years together for herbivorous and commercial seperately



# Palm_Beach_5_herb_1 <- rbind(Palm_Beach_5_1999_herb_biomass,Palm_Beach_5_2000_herb_biomass)
# Palm_Beach_5_herb_2 <- rbind(Palm_Beach_5_herb_1,Palm_Beach_5_2001_herb_biomass)
# Palm_Beach_5_herb_3 <- rbind(Palm_Beach_5_herb_2,Palm_Beach_5_2002_herb_biomass)
# Palm_Beach_5_herb_4 <- rbind(Palm_Beach_5_herb_3,Palm_Beach_5_2003_herb_biomass)
# Palm_Beach_5_herb_5 <- rbind(Palm_Beach_5_herb_4,Palm_Beach_5_2004_herb_biomass)
# Palm_Beach_5_herb_6 <- rbind(Palm_Beach_5_herb_5,Palm_Beach_5_2005_herb_biomass)
# Palm_Beach_5_herb_7 <- rbind(Palm_Beach_5_herb_6,Palm_Beach_5_2006_herb_biomass)
# Palm_Beach_5_herb_8 <- rbind(Palm_Beach_5_herb_7,Palm_Beach_5_2007_herb_biomass)
# Palm_Beach_5_herb_9 <- rbind(Palm_Beach_5_herb_8,Palm_Beach_5_2008_herb_biomass)
# Palm_Beach_5_herb_10 <- rbind(Palm_Beach_5_herb_9,Palm_Beach_5_2009_herb_biomass)
# Palm_Beach_5_herb_11<- rbind(Palm_Beach_5_herb_10,Palm_Beach_5_2010_herb_biomass)
# Palm_Beach_5_herb_12 <- rbind(Palm_Beach_5_herb_11,Palm_Beach_5_2011_herb_biomass)
Palm_Beach_5_herb_13 <- rbind(Palm_Beach_5_2013_herb_biomass,Palm_Beach_5_2014_herb_biomass)
Palm_Beach_5_herb_14 <- rbind(Palm_Beach_5_herb_13,Palm_Beach_5_2015_herb_biomass)
Palm_Beach_5_herb_15 <- rbind(Palm_Beach_5_herb_14,Palm_Beach_5_2016_herb_biomass)
Palm_Beach_5_herb_biomass_data_combined <- rbind(Palm_Beach_5_herb_15,Palm_Beach_5_2018_herb_biomass)



# Palm_Beach_5_comm_1 <- rbind(Palm_Beach_5_1999_comm_biomass,Palm_Beach_5_2000_comm_biomass)
# Palm_Beach_5_comm_2 <- rbind(Palm_Beach_5_comm_1,Palm_Beach_5_2001_comm_biomass)
# Palm_Beach_5_comm_3 <- rbind(Palm_Beach_5_comm_2,Palm_Beach_5_2002_comm_biomass)
# Palm_Beach_5_comm_4 <- rbind(Palm_Beach_5_comm_3,Palm_Beach_5_2003_comm_biomass)
# Palm_Beach_5_comm_5 <- rbind(Palm_Beach_5_comm_4,Palm_Beach_5_2004_comm_biomass)
# Palm_Beach_5_comm_6 <- rbind(Palm_Beach_5_comm_5,Palm_Beach_5_2005_comm_biomass)
# Palm_Beach_5_comm_7 <- rbind(Palm_Beach_5_comm_6,Palm_Beach_5_2006_comm_biomass)
# Palm_Beach_5_comm_8 <- rbind(Palm_Beach_5_comm_7,Palm_Beach_5_2007_comm_biomass)
# Palm_Beach_5_comm_9 <- rbind(Palm_Beach_5_comm_8,Palm_Beach_5_2008_comm_biomass)
# Palm_Beach_5_comm_10 <- rbind(Palm_Beach_5_comm_9,Palm_Beach_5_2009_comm_biomass)
# Palm_Beach_5_comm_11<- rbind(Palm_Beach_5_comm_10,Palm_Beach_5_2010_comm_biomass)
# Palm_Beach_5_comm_12 <- rbind(Palm_Beach_5_comm_11,Palm_Beach_5_2011_comm_biomass)
Palm_Beach_5_comm_13 <- rbind(Palm_Beach_5_2013_comm_biomass,Palm_Beach_5_2014_comm_biomass)
Palm_Beach_5_comm_14 <- rbind(Palm_Beach_5_comm_13,Palm_Beach_5_2015_comm_biomass)
Palm_Beach_5_comm_15 <- rbind(Palm_Beach_5_comm_14,Palm_Beach_5_2016_comm_biomass)
Palm_Beach_5_comm_biomass_data_combined <- rbind(Palm_Beach_5_comm_15,Palm_Beach_5_2018_comm_biomass)



export(Palm_Beach_5_herb_biomass_data_combined, "Palm_Beach_5/data/Palm_Beach_5_herbivorous_biomass.csv")
export(Palm_Beach_5_comm_biomass_data_combined, "Palm_Beach_5/data/Palm_Beach_5_commercial_biomass.csv")


## Combine all SEF


SEF_reef_herb_biomass_combined <- rbind(Broward_County_1_herb_biomass_data_combined,Broward_County_2_herb_biomass_data_combined,Broward_County_3_herb_biomass_data_combined,Broward_County_4_herb_biomass_data_combined,Broward_County_5_herb_biomass_data_combined,Broward_County_6_herb_biomass_data_combined,Broward_County_A_herb_biomass_data_combined, Dade_County_1_herb_biomass_data_combined, Dade_County_2_herb_biomass_data_combined,Dade_County_3_herb_biomass_data_combined,Dade_County_4_herb_biomass_data_combined,Dade_County_5_herb_biomass_data_combined,Dade_County_6_herb_biomass_data_combined,Dade_County_7_herb_biomass_data_combined,Dade_County_8_herb_biomass_data_combined,Martin_County_1_herb_biomass_data_combined,Martin_County_2_herb_biomass_data_combined,Palm_Beach_1_herb_biomass_data_combined,Palm_Beach_2_herb_biomass_data_combined,Palm_Beach_3_herb_biomass_data_combined,Palm_Beach_4_herb_biomass_data_combined, Palm_Beach_5_herb_biomass_data_combined)
SEF_reef_herb_biomass_data <- arrange(SEF_reef_herb_biomass_combined, Year,Reef, sum, max, min, mean, sd )
SEF_reef_herb_biomass_data$REGION <- ("SEF")
export(SEF_reef_herb_biomass_data, "SEF_herbivorous_biomass_data.csv")



SEF_reef_comm_biomass_combined <- rbind(Broward_County_1_comm_biomass_data_combined,Broward_County_2_comm_biomass_data_combined,Broward_County_3_comm_biomass_data_combined,Broward_County_4_comm_biomass_data_combined,Broward_County_5_comm_biomass_data_combined,Broward_County_6_comm_biomass_data_combined,Broward_County_A_comm_biomass_data_combined, Dade_County_1_comm_biomass_data_combined, Dade_County_2_comm_biomass_data_combined,Dade_County_3_comm_biomass_data_combined,Dade_County_4_comm_biomass_data_combined,Dade_County_5_comm_biomass_data_combined,Dade_County_6_comm_biomass_data_combined,Dade_County_7_comm_biomass_data_combined,Dade_County_8_comm_biomass_data_combined,Martin_County_1_comm_biomass_data_combined,Martin_County_2_comm_biomass_data_combined,Palm_Beach_1_comm_biomass_data_combined,Palm_Beach_2_comm_biomass_data_combined,Palm_Beach_3_comm_biomass_data_combined,Palm_Beach_4_comm_biomass_data_combined, Palm_Beach_5_comm_biomass_data_combined)
SEF_reef_comm_biomass_data <- arrange(SEF_reef_comm_biomass_combined, Year,Reef, sum, max, min, mean, sd )
SEF_reef_comm_biomass_data$REGION <- ("SEF")
export(SEF_reef_comm_biomass_data, "SEF_commercial_biomass_data.csv")



## Herbivrous first and repeat code for commercial 

## remove max, min, mean, sd
SEF_reef_herb_biomass_data$max <- NULL
SEF_reef_herb_biomass_data$min <- NULL
SEF_reef_herb_biomass_data$sd <- NULL
SEF_reef_herb_biomass_data$REGION <- NULL
SEF_reef_herb_biomass_data$mean <- NULL


SEF_herb_graph <- SEF_reef_herb_biomass_data[order(SEF_reef_herb_biomass_data$sum),]

## sort data into 5 different bins using binr 

SEF_herb_bins <- bins(SEF_herb_graph$sum,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)

view(SEF_herb_bins$binct)
#### MANUALLY ADD IN THE VALUES OF EACH BIN. 1-5 WILL BE ADDED TO EACH BIN SUBSET

## from binct make the value of the bins and apply number 1-5 for each bin

SEF_herb_1 <- subset(SEF_herb_graph, sum == 0)
SEF_herb_2 <- subset(SEF_herb_graph, sum >= 0.0025070807120065  & sum < 0.0127665914401812 )
SEF_herb_3 <- subset(SEF_herb_graph, sum >= 0.0127665914401812  & sum < 0.0288397341137309 )
SEF_herb_4 <- subset(SEF_herb_graph, sum >= 0.0288397341137309  & sum < 0.0440605378173069 )
SEF_herb_5 <- subset(SEF_herb_graph, sum >= 0.0440605378173069  & sum < 0.110681625977084 )


SEF_herb_1$RHI_Fish <- "1"
SEF_herb_2$RHI_Fish <- "2"
SEF_herb_3$RHI_Fish <- "3"
SEF_herb_4$RHI_Fish <- "4"
SEF_herb_5$RHI_Fish <- "5"

SEF_herb_RHI <- rbind(SEF_herb_1,SEF_herb_2,SEF_herb_3,SEF_herb_4,SEF_herb_5)  
SEF_herb_RHI$SUBREGION <- "SEF"


## Commercial 

## remove max, min, mean, sd
SEF_reef_comm_biomass_data$max <- NULL
SEF_reef_comm_biomass_data$min <- NULL
SEF_reef_comm_biomass_data$sd <- NULL
SEF_reef_comm_biomass_data$REGION <- NULL
SEF_reef_comm_biomass_data$mean <- NULL


SEF_comm_graph <- SEF_reef_comm_biomass_data[order(SEF_reef_comm_biomass_data$sum),]

## sort data into 5 different bins using binr 

SEF_comm_bins <- bins(SEF_comm_graph$sum,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)

view(SEF_comm_bins$binct)

#### MANUALLY ADD IN THE VALUES OF EACH BIN. 1-5 WILL BE ADDED TO EACH BIN SUBSET

## from binct make the value of the bins and apply number 1-5 for each bin

SEF_comm_1 <- subset(SEF_comm_graph, sum == 0)
SEF_comm_2 <- subset(SEF_comm_graph, sum >= 0.017035825031166  & sum < 0.0508615526402642 )
SEF_comm_3 <- subset(SEF_comm_graph, sum >= 0.0508615526402642  & sum < 0.0973626776710686 )
SEF_comm_4 <- subset(SEF_comm_graph, sum >= 0.0973626776710686  & sum < 0.155983370517576 )
SEF_comm_5 <- subset(SEF_comm_graph, sum >= 0.155983370517576  & sum < 0.360454342235304 )


SEF_comm_1$RHI_Fish <- "1"
SEF_comm_2$RHI_Fish <- "2"
SEF_comm_3$RHI_Fish <- "3"
SEF_comm_4$RHI_Fish <- "4"
SEF_comm_5$RHI_Fish <- "5"

SEF_comm_RHI <- rbind(SEF_comm_1,SEF_comm_2,SEF_comm_3,SEF_comm_4,SEF_comm_5)  
SEF_comm_RHI$SUBREGION <- "SEF"


export(SEF_herb_RHI, "SEF_herbivorous_RHI.csv")
export(SEF_comm_RHI, "SEF_commercial_RHI.csv")









### COMBINE ALL SUBREGIONS TOGETHER

library(data.table)
setwd("C:/Users/cestes/Documents/Spring_2020/RVC_CREMP_by_REEF")

DT_herb <- read_csv("DT/DT_herbivorous_biomass_data.csv")
LK_herb <- read_csv("LK/LK_herbivorous_biomass_data.csv")
MK_herb <- read_csv("MK/MK_herbivorous_biomass_data.csv")
UK_herb <- read_csv("UK/UK_herbivorous_biomass_data.csv")
SEF_herb <- read_csv("SEF/SEF_herbivorous_biomass_data.csv")

All_regions_herb_data_combined <- rbind(DT_herb,LK_herb,MK_herb,UK_herb,SEF_herb)
All_regions_herb_data <- arrange(All_regions_herb_data_combined, Year, Reef, sum, max, min, mean, sd)

setnames(All_regions_herb_data, old = c('Reef'), new = c('sitename'))
export(All_regions_herb_data, "All_regions_RVC_herbivorous_biomass.csv")

DT_comm <- read_csv("DT/DT_commercial_biomass_data.csv")
LK_comm <- read_csv("LK/LK_commercial_biomass_data.csv")
MK_comm <- read_csv("MK/MK_commercial_biomass_data.csv")
UK_comm <- read_csv("UK/UK_commercial_biomass_data.csv")
SEF_comm <- read_csv("SEF/SEF_commercial_biomass_data.csv")

All_regions_comm_data_combined <- rbind(DT_comm,LK_comm,MK_comm,UK_comm,SEF_comm)
All_regions_comm_data <- arrange(All_regions_comm_data_combined, Year, Reef, sum, max, min, mean, sd)

setnames(All_regions_comm_data, old = c('Reef'), new = c('sitename'))
export(All_regions_comm_data, "All_regions_RVC_commercial_biomass.csv")




### RHI combined

DT_RHI_herbb <- read_csv("DT/DT_herbivorous_RHI.csv")
LK_RHI_herbb <- read_csv("LK/LK_herbivorous_RHI.csv")
MK_RHI_herbb <- read_csv("MK/MK_herbivorous_RHI.csv")
UK_RHI_herbb <- read_csv("UK/UK_herbivorous_RHI.csv")
SEF_RHI_herbb <- read_csv("SEF/SEF_herbivorous_RHI.csv")

All_regions_herb_RHI_combined <- rbind(DT_RHI_herbb,LK_RHI_herbb,MK_RHI_herbb,UK_RHI_herbb,SEF_RHI_herbb)
#All_regions_herb_RHI <- arrange(All_regions_herb_RHI_combined, Year, Reef, sum, max, min, mean, sd)

setnames(All_regions_herb_RHI_combined, old = c('Reef'), new = c('sitename'))
export(All_regions_herb_RHI_combined, "All_regions_RVC_herbivorous_RHI.csv")

DT_RHI_commm <- read_csv("DT/DT_commercial_RHI.csv")
LK_RHI_commm <- read_csv("LK/LK_commercial_RHI.csv")
MK_RHI_commm <- read_csv("MK/MK_commercial_RHI.csv")
UK_RHI_commm <- read_csv("UK/UK_commercial_RHI.csv")
SEF_RHI_commm <- read_csv("SEF/SEF_commercial_RHI.csv")

All_regions_comm_RHI_combined <- rbind(DT_RHI_commm,LK_RHI_commm,MK_RHI_commm,UK_RHI_commm,SEF_RHI_commm)
#All_regions_comm_RHI <- arrange(All_regions_comm_RHI_combined, Year, Reef, sum, max, min, mean, sd)

setnames(All_regions_comm_RHI_combined, old = c('Reef'), new = c('sitename'))
export(All_regions_comm_RHI_combined, "All_regions_RVC_commercial_RHI.csv")

