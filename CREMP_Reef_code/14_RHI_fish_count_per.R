library(rio)
library("magrittr")
library("tidyverse")


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




setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF")


Bird_Key_1999 <- import("DT/Bird_Key_Reef/data/Bird_Key_Reef_1999.xls")


Bird_Key_1999_herb <- merge(Bird_Key_1999, Herb, by = c("SPECIES_CD"))
Bird_Key_1999_herb_count <- count(Bird_Key_1999_herb, vars = "SPECIES_CD")
Bird_Key_1999_herb_count$Year <- ('1999')
Bird_Key_1999_herb_count$sitename <- ('Bird Key Reef')
Bird_Key_1999_herb_count$Type <- "Herbivorous"

Bird_Key_1999_comm <- merge(Bird_Key_1999, Comm, by = c("SPECIES_CD"))
Bird_Key_1999_comm_count <- count(Bird_Key_1999_comm, vars = "SPECIES_CD")
Bird_Key_1999_comm_count$Year <- ('1999')
Bird_Key_1999_comm_count$sitename <- ('Bird Key Reef')
Bird_Key_1999_comm_count$Type <- "Commercial"


Bird_Key_1999_total_count <- rbind(Bird_Key_1999_herb_count, Bird_Key_1999_comm_count)




Bird_Key_2000 <- import("DT/Bird_Key_Reef/data/Bird_Key_Reef_2000.xls")


Bird_Key_2000_herb <- merge(Bird_Key_2000, Herb, by = c("SPECIES_CD"))
Bird_Key_2000_herb_count <- count(Bird_Key_2000_herb, vars = "SPECIES_CD")
Bird_Key_2000_herb_count$Year <- ('2000')
Bird_Key_2000_herb_count$sitename <- ('Bird Key Reef')
Bird_Key_2000_herb_count$Type <- "Herbivorous"

Bird_Key_2000_comm <- merge(Bird_Key_2000, Comm, by = c("SPECIES_CD"))
Bird_Key_2000_comm_count <- count(Bird_Key_2000_comm, vars = "SPECIES_CD")
Bird_Key_2000_comm_count$Year <- ('2000')
Bird_Key_2000_comm_count$sitename <- ('Bird Key Reef')
Bird_Key_2000_comm_count$Type <- "Commercial"


Bird_Key_2000_total_count <- rbind(Bird_Key_2000_herb_count, Bird_Key_2000_comm_count)



Bird_Key_2004 <- import("DT/Bird_Key_Reef/data/Bird_Key_Reef_2004.xls")


Bird_Key_2004_herb <- merge(Bird_Key_2004, Herb, by = c("SPECIES_CD"))
Bird_Key_2004_herb_count <- count(Bird_Key_2004_herb, vars = "SPECIES_CD")
Bird_Key_2004_herb_count$Year <- ('2004')
Bird_Key_2004_herb_count$sitename <- ('Bird Key Reef')
Bird_Key_2004_herb_count$Type <- "Herbivorous"

Bird_Key_2004_comm <- merge(Bird_Key_2004, Comm, by = c("SPECIES_CD"))
Bird_Key_2004_comm_count <- count(Bird_Key_2004_comm, vars = "SPECIES_CD")
Bird_Key_2004_comm_count$Year <- ('2004')
Bird_Key_2004_comm_count$sitename <- ('Bird Key Reef')
Bird_Key_2004_comm_count$Type <- "Commercial"


Bird_Key_2004_total_count <- rbind(Bird_Key_2004_herb_count, Bird_Key_2004_comm_count)



Bird_Key_2006 <- import("DT/Bird_Key_Reef/data/Bird_Key_Reef_2006.xls")


Bird_Key_2006_herb <- merge(Bird_Key_2006, Herb, by = c("SPECIES_CD"))
Bird_Key_2006_herb_count <- count(Bird_Key_2006_herb, vars = "SPECIES_CD")
Bird_Key_2006_herb_count$Year <- ('2006')
Bird_Key_2006_herb_count$sitename <- ('Bird Key Reef')
Bird_Key_2006_herb_count$Type <- "Herbivorous"

Bird_Key_2006_comm <- merge(Bird_Key_2006, Comm, by = c("SPECIES_CD"))
Bird_Key_2006_comm_count <- count(Bird_Key_2006_comm, vars = "SPECIES_CD")
Bird_Key_2006_comm_count$Year <- ('2006')
Bird_Key_2006_comm_count$sitename <- ('Bird Key Reef')
Bird_Key_2006_comm_count$Type <- "Commercial"


Bird_Key_2006_total_count <- rbind(Bird_Key_2006_herb_count, Bird_Key_2006_comm_count)


Bird_Key_2008 <- import("DT/Bird_Key_Reef/data/Bird_Key_Reef_2008.xls")


Bird_Key_2008_herb <- merge(Bird_Key_2008, Herb, by = c("SPECIES_CD"))
Bird_Key_2008_herb_count <- count(Bird_Key_2008_herb, vars = "SPECIES_CD")
Bird_Key_2008_herb_count$Year <- ('2008')
Bird_Key_2008_herb_count$sitename <- ('Bird Key Reef')
Bird_Key_2008_herb_count$Type <- "Herbivorous"

Bird_Key_2008_comm <- merge(Bird_Key_2008, Comm, by = c("SPECIES_CD"))
Bird_Key_2008_comm_count <- count(Bird_Key_2008_comm, vars = "SPECIES_CD")
Bird_Key_2008_comm_count$Year <- ('2008')
Bird_Key_2008_comm_count$sitename <- ('Bird Key Reef')
Bird_Key_2008_comm_count$Type <- "Commercial"


Bird_Key_2008_total_count <- rbind(Bird_Key_2008_herb_count, Bird_Key_2008_comm_count)




Bird_Key_2010 <- import("DT/Bird_Key_Reef/data/Bird_Key_Reef_2010.xls")


Bird_Key_2010_herb <- merge(Bird_Key_2010, Herb, by = c("SPECIES_CD"))
Bird_Key_2010_herb_count <- count(Bird_Key_2010_herb, vars = "SPECIES_CD")
Bird_Key_2010_herb_count$Year <- ('2010')
Bird_Key_2010_herb_count$sitename <- ('Bird Key Reef')
Bird_Key_2010_herb_count$Type <- "Herbivorous"

Bird_Key_2010_comm <- merge(Bird_Key_2010, Comm, by = c("SPECIES_CD"))
Bird_Key_2010_comm_count <- count(Bird_Key_2010_comm, vars = "SPECIES_CD")
Bird_Key_2010_comm_count$Year <- ('2010')
Bird_Key_2010_comm_count$sitename <- ('Bird Key Reef')
Bird_Key_2010_comm_count$Type <- "Commercial"


Bird_Key_2010_total_count <- rbind(Bird_Key_2010_herb_count, Bird_Key_2010_comm_count)



Bird_Key_2012 <- import("DT/Bird_Key_Reef/data/Bird_Key_Reef_2012.xls")


Bird_Key_2012_herb <- merge(Bird_Key_2012, Herb, by = c("SPECIES_CD"))
Bird_Key_2012_herb_count <- count(Bird_Key_2012_herb, vars = "SPECIES_CD")
Bird_Key_2012_herb_count$Year <- ('2012')
Bird_Key_2012_herb_count$sitename <- ('Bird Key Reef')
Bird_Key_2012_herb_count$Type <- "Herbivorous"

Bird_Key_2012_comm <- merge(Bird_Key_2012, Comm, by = c("SPECIES_CD"))
Bird_Key_2012_comm_count <- count(Bird_Key_2012_comm, vars = "SPECIES_CD")
Bird_Key_2012_comm_count$Year <- ('2012')
Bird_Key_2012_comm_count$sitename <- ('Bird Key Reef')
Bird_Key_2012_comm_count$Type <- "Commercial"


Bird_Key_2012_total_count <- rbind(Bird_Key_2012_herb_count, Bird_Key_2012_comm_count)



Bird_Key_2014 <- import("DT/Bird_Key_Reef/data/Bird_Key_Reef_2014.xls")


Bird_Key_2014_herb <- merge(Bird_Key_2014, Herb, by = c("SPECIES_CD"))
Bird_Key_2014_herb_count <- count(Bird_Key_2014_herb, vars = "SPECIES_CD")
Bird_Key_2014_herb_count$Year <- ('2014')
Bird_Key_2014_herb_count$sitename <- ('Bird Key Reef')
Bird_Key_2014_herb_count$Type <- "Herbivorous"

Bird_Key_2014_comm <- merge(Bird_Key_2014, Comm, by = c("SPECIES_CD"))
Bird_Key_2014_comm_count <- count(Bird_Key_2014_comm, vars = "SPECIES_CD")
Bird_Key_2014_comm_count$Year <- ('2014')
Bird_Key_2014_comm_count$sitename <- ('Bird Key Reef')
Bird_Key_2014_comm_count$Type <- "Commercial"


Bird_Key_2014_total_count <- rbind(Bird_Key_2014_herb_count, Bird_Key_2014_comm_count)




Bird_Key_2016 <- import("DT/Bird_Key_Reef/data/Bird_Key_Reef_2016.xls")


Bird_Key_2016_herb <- merge(Bird_Key_2016, Herb, by = c("SPECIES_CD"))
Bird_Key_2016_herb_count <- count(Bird_Key_2016_herb, vars = "SPECIES_CD")
Bird_Key_2016_herb_count$Year <- ('2016')
Bird_Key_2016_herb_count$sitename <- ('Bird Key Reef')
Bird_Key_2016_herb_count$Type <- "Herbivorous"

Bird_Key_2016_comm <- merge(Bird_Key_2016, Comm, by = c("SPECIES_CD"))
Bird_Key_2016_comm_count <- count(Bird_Key_2016_comm, vars = "SPECIES_CD")
Bird_Key_2016_comm_count$Year <- ('2016')
Bird_Key_2016_comm_count$sitename <- ('Bird Key Reef')
Bird_Key_2016_comm_count$Type <- "Commercial"


Bird_Key_2016_total_count <- rbind(Bird_Key_2016_herb_count, Bird_Key_2016_comm_count)



Bird_Key_all <- rbind(Bird_Key_1999_total_count,Bird_Key_2000_total_count,Bird_Key_2004_total_count,Bird_Key_2006_total_count,Bird_Key_2008_total_count, Bird_Key_2010_total_count, Bird_Key_2012_total_count, Bird_Key_2014_total_count, Bird_Key_2016_total_count )


export(Bird_Key_all, "DT/Bird_Key_Reef/data/Bird_Key_count_herb_comm.csv")





Black_Coral_Rock_1999 <- import("DT/Black_Coral_Rock/data/Black_Coral_Rock_1999.xls")


Black_Coral_Rock_1999_herb <- merge(Black_Coral_Rock_1999, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_1999_herb_count <- count(Black_Coral_Rock_1999_herb, vars = "SPECIES_CD")
Black_Coral_Rock_1999_herb_count$Year <- ('1999')
Black_Coral_Rock_1999_herb_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_1999_herb_count$Type <- "Herbivorous"

Black_Coral_Rock_1999_comm <- merge(Black_Coral_Rock_1999, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_1999_comm_count <- count(Black_Coral_Rock_1999_comm, vars = "SPECIES_CD")
Black_Coral_Rock_1999_comm_count$Year <- ('1999')
Black_Coral_Rock_1999_comm_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_1999_comm_count$Type <- "Commercial"


Black_Coral_Rock_1999_total_count <- rbind(Black_Coral_Rock_1999_herb_count, Black_Coral_Rock_1999_comm_count)




Black_Coral_Rock_2000 <- import("DT/Black_Coral_Rock/data/Black_Coral_Rock_2000.xls")


Black_Coral_Rock_2000_herb <- merge(Black_Coral_Rock_2000, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_2000_herb_count <- count(Black_Coral_Rock_2000_herb, vars = "SPECIES_CD")
Black_Coral_Rock_2000_herb_count$Year <- ('2000')
Black_Coral_Rock_2000_herb_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_2000_herb_count$Type <- "Herbivorous"

Black_Coral_Rock_2000_comm <- merge(Black_Coral_Rock_2000, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_2000_comm_count <- count(Black_Coral_Rock_2000_comm, vars = "SPECIES_CD")
Black_Coral_Rock_2000_comm_count$Year <- ('2000')
Black_Coral_Rock_2000_comm_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_2000_comm_count$Type <- "Commercial"


Black_Coral_Rock_2000_total_count <- rbind(Black_Coral_Rock_2000_herb_count, Black_Coral_Rock_2000_comm_count)



Black_Coral_Rock_2004 <- import("DT/Black_Coral_Rock/data/Black_Coral_Rock_2004.xls")


Black_Coral_Rock_2004_herb <- merge(Black_Coral_Rock_2004, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_2004_herb_count <- count(Black_Coral_Rock_2004_herb, vars = "SPECIES_CD")
Black_Coral_Rock_2004_herb_count$Year <- ('2004')
Black_Coral_Rock_2004_herb_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_2004_herb_count$Type <- "Herbivorous"

Black_Coral_Rock_2004_comm <- merge(Black_Coral_Rock_2004, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_2004_comm_count <- count(Black_Coral_Rock_2004_comm, vars = "SPECIES_CD")
Black_Coral_Rock_2004_comm_count$Year <- ('2004')
Black_Coral_Rock_2004_comm_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_2004_comm_count$Type <- "Commercial"


Black_Coral_Rock_2004_total_count <- rbind(Black_Coral_Rock_2004_herb_count, Black_Coral_Rock_2004_comm_count)



Black_Coral_Rock_2006 <- import("DT/Black_Coral_Rock/data/Black_Coral_Rock_2006.xls")


Black_Coral_Rock_2006_herb <- merge(Black_Coral_Rock_2006, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_2006_herb_count <- count(Black_Coral_Rock_2006_herb, vars = "SPECIES_CD")
Black_Coral_Rock_2006_herb_count$Year <- ('2006')
Black_Coral_Rock_2006_herb_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_2006_herb_count$Type <- "Herbivorous"

Black_Coral_Rock_2006_comm <- merge(Black_Coral_Rock_2006, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_2006_comm_count <- count(Black_Coral_Rock_2006_comm, vars = "SPECIES_CD")
Black_Coral_Rock_2006_comm_count$Year <- ('2006')
Black_Coral_Rock_2006_comm_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_2006_comm_count$Type <- "Commercial"


Black_Coral_Rock_2006_total_count <- rbind(Black_Coral_Rock_2006_herb_count, Black_Coral_Rock_2006_comm_count)


Black_Coral_Rock_2008 <- import("DT/Black_Coral_Rock/data/Black_Coral_Rock_2008.xls")


Black_Coral_Rock_2008_herb <- merge(Black_Coral_Rock_2008, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_2008_herb_count <- count(Black_Coral_Rock_2008_herb, vars = "SPECIES_CD")
Black_Coral_Rock_2008_herb_count$Year <- ('2008')
Black_Coral_Rock_2008_herb_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_2008_herb_count$Type <- "Herbivorous"

Black_Coral_Rock_2008_comm <- merge(Black_Coral_Rock_2008, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_2008_comm_count <- count(Black_Coral_Rock_2008_comm, vars = "SPECIES_CD")
Black_Coral_Rock_2008_comm_count$Year <- ('2008')
Black_Coral_Rock_2008_comm_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_2008_comm_count$Type <- "Commercial"


Black_Coral_Rock_2008_total_count <- rbind(Black_Coral_Rock_2008_herb_count, Black_Coral_Rock_2008_comm_count)




Black_Coral_Rock_2010 <- import("DT/Black_Coral_Rock/data/Black_Coral_Rock_2010.xls")


Black_Coral_Rock_2010_herb <- merge(Black_Coral_Rock_2010, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_2010_herb_count <- count(Black_Coral_Rock_2010_herb, vars = "SPECIES_CD")
Black_Coral_Rock_2010_herb_count$Year <- ('2010')
Black_Coral_Rock_2010_herb_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_2010_herb_count$Type <- "Herbivorous"

Black_Coral_Rock_2010_comm <- merge(Black_Coral_Rock_2010, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_2010_comm_count <- count(Black_Coral_Rock_2010_comm, vars = "SPECIES_CD")
Black_Coral_Rock_2010_comm_count$Year <- ('2010')
Black_Coral_Rock_2010_comm_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_2010_comm_count$Type <- "Commercial"


Black_Coral_Rock_2010_total_count <- rbind(Black_Coral_Rock_2010_herb_count, Black_Coral_Rock_2010_comm_count)



Black_Coral_Rock_2012 <- import("DT/Black_Coral_Rock/data/Black_Coral_Rock_2012.xls")


Black_Coral_Rock_2012_herb <- merge(Black_Coral_Rock_2012, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_2012_herb_count <- count(Black_Coral_Rock_2012_herb, vars = "SPECIES_CD")
Black_Coral_Rock_2012_herb_count$Year <- ('2012')
Black_Coral_Rock_2012_herb_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_2012_herb_count$Type <- "Herbivorous"

Black_Coral_Rock_2012_comm <- merge(Black_Coral_Rock_2012, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_2012_comm_count <- count(Black_Coral_Rock_2012_comm, vars = "SPECIES_CD")
Black_Coral_Rock_2012_comm_count$Year <- ('2012')
Black_Coral_Rock_2012_comm_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_2012_comm_count$Type <- "Commercial"


Black_Coral_Rock_2012_total_count <- rbind(Black_Coral_Rock_2012_herb_count, Black_Coral_Rock_2012_comm_count)



Black_Coral_Rock_2014 <- import("DT/Black_Coral_Rock/data/Black_Coral_Rock_2014.xls")


Black_Coral_Rock_2014_herb <- merge(Black_Coral_Rock_2014, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_2014_herb_count <- count(Black_Coral_Rock_2014_herb, vars = "SPECIES_CD")
Black_Coral_Rock_2014_herb_count$Year <- ('2014')
Black_Coral_Rock_2014_herb_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_2014_herb_count$Type <- "Herbivorous"

Black_Coral_Rock_2014_comm <- merge(Black_Coral_Rock_2014, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_2014_comm_count <- count(Black_Coral_Rock_2014_comm, vars = "SPECIES_CD")
Black_Coral_Rock_2014_comm_count$Year <- ('2014')
Black_Coral_Rock_2014_comm_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_2014_comm_count$Type <- "Commercial"


Black_Coral_Rock_2014_total_count <- rbind(Black_Coral_Rock_2014_herb_count, Black_Coral_Rock_2014_comm_count)




Black_Coral_Rock_2016 <- import("DT/Black_Coral_Rock/data/Black_Coral_Rock_2016.xls")


Black_Coral_Rock_2016_herb <- merge(Black_Coral_Rock_2016, Herb, by = c("SPECIES_CD"))
Black_Coral_Rock_2016_herb_count <- count(Black_Coral_Rock_2016_herb, vars = "SPECIES_CD")
Black_Coral_Rock_2016_herb_count$Year <- ('2016')
Black_Coral_Rock_2016_herb_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_2016_herb_count$Type <- "Herbivorous"

Black_Coral_Rock_2016_comm <- merge(Black_Coral_Rock_2016, Comm, by = c("SPECIES_CD"))
Black_Coral_Rock_2016_comm_count <- count(Black_Coral_Rock_2016_comm, vars = "SPECIES_CD")
Black_Coral_Rock_2016_comm_count$Year <- ('2016')
Black_Coral_Rock_2016_comm_count$sitename <- ('Black Coral Rock')
Black_Coral_Rock_2016_comm_count$Type <- "Commercial"


Black_Coral_Rock_2016_total_count <- rbind(Black_Coral_Rock_2016_herb_count, Black_Coral_Rock_2016_comm_count)



Black_Coral_Rock_all <- rbind(Black_Coral_Rock_1999_total_count,Black_Coral_Rock_2000_total_count,Black_Coral_Rock_2004_total_count,Black_Coral_Rock_2006_total_count,Black_Coral_Rock_2008_total_count, Black_Coral_Rock_2010_total_count, Black_Coral_Rock_2012_total_count, Black_Coral_Rock_2014_total_count, Black_Coral_Rock_2016_total_count )


export(Black_Coral_Rock_all, "DT/Black_Coral_Rock/data/Black_Coral_Rock_count_herb_comm.csv")





Davis_Rock_1999 <- import("DT/Davis_Rock/data/Davis_Rock_1999.xls")


Davis_Rock_1999_herb <- merge(Davis_Rock_1999, Herb, by = c("SPECIES_CD"))
Davis_Rock_1999_herb_count <- count(Davis_Rock_1999_herb, vars = "SPECIES_CD")
Davis_Rock_1999_herb_count$Year <- ('1999')
Davis_Rock_1999_herb_count$sitename <- ('Davis Rock')
Davis_Rock_1999_herb_count$Type <- "Herbivorous"

Davis_Rock_1999_comm <- merge(Davis_Rock_1999, Comm, by = c("SPECIES_CD"))
Davis_Rock_1999_comm_count <- count(Davis_Rock_1999_comm, vars = "SPECIES_CD")
Davis_Rock_1999_comm_count$Year <- ('1999')
Davis_Rock_1999_comm_count$sitename <- ('Davis Rock')
Davis_Rock_1999_comm_count$Type <- "Commercial"


Davis_Rock_1999_total_count <- rbind(Davis_Rock_1999_herb_count, Davis_Rock_1999_comm_count)




Davis_Rock_2000 <- import("DT/Davis_Rock/data/Davis_Rock_2000.xls")


Davis_Rock_2000_herb <- merge(Davis_Rock_2000, Herb, by = c("SPECIES_CD"))
Davis_Rock_2000_herb_count <- count(Davis_Rock_2000_herb, vars = "SPECIES_CD")
Davis_Rock_2000_herb_count$Year <- ('2000')
Davis_Rock_2000_herb_count$sitename <- ('Davis Rock')
Davis_Rock_2000_herb_count$Type <- "Herbivorous"

Davis_Rock_2000_comm <- merge(Davis_Rock_2000, Comm, by = c("SPECIES_CD"))
Davis_Rock_2000_comm_count <- count(Davis_Rock_2000_comm, vars = "SPECIES_CD")
Davis_Rock_2000_comm_count$Year <- ('2000')
Davis_Rock_2000_comm_count$sitename <- ('Davis Rock')
Davis_Rock_2000_comm_count$Type <- "Commercial"


Davis_Rock_2000_total_count <- rbind(Davis_Rock_2000_herb_count, Davis_Rock_2000_comm_count)



Davis_Rock_2004 <- import("DT/Davis_Rock/data/Davis_Rock_2004.xls")


Davis_Rock_2004_herb <- merge(Davis_Rock_2004, Herb, by = c("SPECIES_CD"))
Davis_Rock_2004_herb_count <- count(Davis_Rock_2004_herb, vars = "SPECIES_CD")
Davis_Rock_2004_herb_count$Year <- ('2004')
Davis_Rock_2004_herb_count$sitename <- ('Davis Rock')
Davis_Rock_2004_herb_count$Type <- "Herbivorous"

Davis_Rock_2004_comm <- merge(Davis_Rock_2004, Comm, by = c("SPECIES_CD"))
Davis_Rock_2004_comm_count <- count(Davis_Rock_2004_comm, vars = "SPECIES_CD")
Davis_Rock_2004_comm_count$Year <- ('2004')
Davis_Rock_2004_comm_count$sitename <- ('Davis Rock')
Davis_Rock_2004_comm_count$Type <- "Commercial"


Davis_Rock_2004_total_count <- rbind(Davis_Rock_2004_herb_count, Davis_Rock_2004_comm_count)



Davis_Rock_2006 <- import("DT/Davis_Rock/data/Davis_Rock_2006.xls")


Davis_Rock_2006_herb <- merge(Davis_Rock_2006, Herb, by = c("SPECIES_CD"))
Davis_Rock_2006_herb_count <- count(Davis_Rock_2006_herb, vars = "SPECIES_CD")
Davis_Rock_2006_herb_count$Year <- ('2006')
Davis_Rock_2006_herb_count$sitename <- ('Davis Rock')
Davis_Rock_2006_herb_count$Type <- "Herbivorous"

Davis_Rock_2006_comm <- merge(Davis_Rock_2006, Comm, by = c("SPECIES_CD"))
Davis_Rock_2006_comm_count <- count(Davis_Rock_2006_comm, vars = "SPECIES_CD")
Davis_Rock_2006_comm_count$Year <- ('2006')
Davis_Rock_2006_comm_count$sitename <- ('Davis Rock')
Davis_Rock_2006_comm_count$Type <- "Commercial"


Davis_Rock_2006_total_count <- rbind(Davis_Rock_2006_herb_count, Davis_Rock_2006_comm_count)


Davis_Rock_2008 <- import("DT/Davis_Rock/data/Davis_Rock_2008.xls")


Davis_Rock_2008_herb <- merge(Davis_Rock_2008, Herb, by = c("SPECIES_CD"))
Davis_Rock_2008_herb_count <- count(Davis_Rock_2008_herb, vars = "SPECIES_CD")
Davis_Rock_2008_herb_count$Year <- ('2008')
Davis_Rock_2008_herb_count$sitename <- ('Davis Rock')
Davis_Rock_2008_herb_count$Type <- "Herbivorous"

Davis_Rock_2008_comm <- merge(Davis_Rock_2008, Comm, by = c("SPECIES_CD"))
Davis_Rock_2008_comm_count <- count(Davis_Rock_2008_comm, vars = "SPECIES_CD")
Davis_Rock_2008_comm_count$Year <- ('2008')
Davis_Rock_2008_comm_count$sitename <- ('Davis Rock')
Davis_Rock_2008_comm_count$Type <- "Commercial"


Davis_Rock_2008_total_count <- rbind(Davis_Rock_2008_herb_count, Davis_Rock_2008_comm_count)




Davis_Rock_2010 <- import("DT/Davis_Rock/data/Davis_Rock_2010.xls")


Davis_Rock_2010_herb <- merge(Davis_Rock_2010, Herb, by = c("SPECIES_CD"))
Davis_Rock_2010_herb_count <- count(Davis_Rock_2010_herb, vars = "SPECIES_CD")
Davis_Rock_2010_herb_count$Year <- ('2010')
Davis_Rock_2010_herb_count$sitename <- ('Davis Rock')
Davis_Rock_2010_herb_count$Type <- "Herbivorous"

Davis_Rock_2010_comm <- merge(Davis_Rock_2010, Comm, by = c("SPECIES_CD"))
Davis_Rock_2010_comm_count <- count(Davis_Rock_2010_comm, vars = "SPECIES_CD")
Davis_Rock_2010_comm_count$Year <- ('2010')
Davis_Rock_2010_comm_count$sitename <- ('Davis Rock')
Davis_Rock_2010_comm_count$Type <- "Commercial"


Davis_Rock_2010_total_count <- rbind(Davis_Rock_2010_herb_count, Davis_Rock_2010_comm_count)



Davis_Rock_2012 <- import("DT/Davis_Rock/data/Davis_Rock_2012.xls")


Davis_Rock_2012_herb <- merge(Davis_Rock_2012, Herb, by = c("SPECIES_CD"))
Davis_Rock_2012_herb_count <- count(Davis_Rock_2012_herb, vars = "SPECIES_CD")
Davis_Rock_2012_herb_count$Year <- ('2012')
Davis_Rock_2012_herb_count$sitename <- ('Davis Rock')
Davis_Rock_2012_herb_count$Type <- "Herbivorous"

Davis_Rock_2012_comm <- merge(Davis_Rock_2012, Comm, by = c("SPECIES_CD"))
Davis_Rock_2012_comm_count <- count(Davis_Rock_2012_comm, vars = "SPECIES_CD")
Davis_Rock_2012_comm_count$Year <- ('2012')
Davis_Rock_2012_comm_count$sitename <- ('Davis Rock')
Davis_Rock_2012_comm_count$Type <- "Commercial"


Davis_Rock_2012_total_count <- rbind(Davis_Rock_2012_herb_count, Davis_Rock_2012_comm_count)



Davis_Rock_2014 <- import("DT/Davis_Rock/data/Davis_Rock_2014.xls")


Davis_Rock_2014_herb <- merge(Davis_Rock_2014, Herb, by = c("SPECIES_CD"))
Davis_Rock_2014_herb_count <- count(Davis_Rock_2014_herb, vars = "SPECIES_CD")
Davis_Rock_2014_herb_count$Year <- ('2014')
Davis_Rock_2014_herb_count$sitename <- ('Davis Rock')
Davis_Rock_2014_herb_count$Type <- "Herbivorous"

Davis_Rock_2014_comm <- merge(Davis_Rock_2014, Comm, by = c("SPECIES_CD"))
Davis_Rock_2014_comm_count <- count(Davis_Rock_2014_comm, vars = "SPECIES_CD")
Davis_Rock_2014_comm_count$Year <- ('2014')
Davis_Rock_2014_comm_count$sitename <- ('Davis Rock')
Davis_Rock_2014_comm_count$Type <- "Commercial"


Davis_Rock_2014_total_count <- rbind(Davis_Rock_2014_herb_count, Davis_Rock_2014_comm_count)




Davis_Rock_2016 <- import("DT/Davis_Rock/data/Davis_Rock_2016.xls")


Davis_Rock_2016_herb <- merge(Davis_Rock_2016, Herb, by = c("SPECIES_CD"))
Davis_Rock_2016_herb_count <- count(Davis_Rock_2016_herb, vars = "SPECIES_CD")
Davis_Rock_2016_herb_count$Year <- ('2016')
Davis_Rock_2016_herb_count$sitename <- ('Davis Rock')
Davis_Rock_2016_herb_count$Type <- "Herbivorous"

Davis_Rock_2016_comm <- merge(Davis_Rock_2016, Comm, by = c("SPECIES_CD"))
Davis_Rock_2016_comm_count <- count(Davis_Rock_2016_comm, vars = "SPECIES_CD")
Davis_Rock_2016_comm_count$Year <- ('2016')
Davis_Rock_2016_comm_count$sitename <- ('Davis Rock')
Davis_Rock_2016_comm_count$Type <- "Commercial"


Davis_Rock_2016_total_count <- rbind(Davis_Rock_2016_herb_count, Davis_Rock_2016_comm_count)



Davis_Rock_all <- rbind(Davis_Rock_1999_total_count,Davis_Rock_2000_total_count,Davis_Rock_2004_total_count,Davis_Rock_2006_total_count,Davis_Rock_2008_total_count, Davis_Rock_2010_total_count, Davis_Rock_2012_total_count, Davis_Rock_2014_total_count, Davis_Rock_2016_total_count )


export(Davis_Rock_all, "DT/Davis_Rock/data/Davis_Rock_count_herb_comm.csv")







Loggerhead_Patch_1999 <- import("DT/Loggerhead_Patch/data/Loggerhead_Patch_1999.xls")


Loggerhead_Patch_1999_herb <- merge(Loggerhead_Patch_1999, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_1999_herb_count <- count(Loggerhead_Patch_1999_herb, vars = "SPECIES_CD")
Loggerhead_Patch_1999_herb_count$Year <- ('1999')
Loggerhead_Patch_1999_herb_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_1999_herb_count$Type <- "Herbivorous"

Loggerhead_Patch_1999_comm <- merge(Loggerhead_Patch_1999, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_1999_comm_count <- count(Loggerhead_Patch_1999_comm, vars = "SPECIES_CD")
Loggerhead_Patch_1999_comm_count$Year <- ('1999')
Loggerhead_Patch_1999_comm_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_1999_comm_count$Type <- "Commercial"


Loggerhead_Patch_1999_total_count <- rbind(Loggerhead_Patch_1999_herb_count, Loggerhead_Patch_1999_comm_count)




Loggerhead_Patch_2000 <- import("DT/Loggerhead_Patch/data/Loggerhead_Patch_2000.xls")


Loggerhead_Patch_2000_herb <- merge(Loggerhead_Patch_2000, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_2000_herb_count <- count(Loggerhead_Patch_2000_herb, vars = "SPECIES_CD")
Loggerhead_Patch_2000_herb_count$Year <- ('2000')
Loggerhead_Patch_2000_herb_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_2000_herb_count$Type <- "Herbivorous"

Loggerhead_Patch_2000_comm <- merge(Loggerhead_Patch_2000, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_2000_comm_count <- count(Loggerhead_Patch_2000_comm, vars = "SPECIES_CD")
Loggerhead_Patch_2000_comm_count$Year <- ('2000')
Loggerhead_Patch_2000_comm_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_2000_comm_count$Type <- "Commercial"


Loggerhead_Patch_2000_total_count <- rbind(Loggerhead_Patch_2000_herb_count, Loggerhead_Patch_2000_comm_count)



Loggerhead_Patch_2004 <- import("DT/Loggerhead_Patch/data/Loggerhead_Patch_2004.xls")


Loggerhead_Patch_2004_herb <- merge(Loggerhead_Patch_2004, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_2004_herb_count <- count(Loggerhead_Patch_2004_herb, vars = "SPECIES_CD")
Loggerhead_Patch_2004_herb_count$Year <- ('2004')
Loggerhead_Patch_2004_herb_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_2004_herb_count$Type <- "Herbivorous"

Loggerhead_Patch_2004_comm <- merge(Loggerhead_Patch_2004, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_2004_comm_count <- count(Loggerhead_Patch_2004_comm, vars = "SPECIES_CD")
Loggerhead_Patch_2004_comm_count$Year <- ('2004')
Loggerhead_Patch_2004_comm_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_2004_comm_count$Type <- "Commercial"


Loggerhead_Patch_2004_total_count <- rbind(Loggerhead_Patch_2004_herb_count, Loggerhead_Patch_2004_comm_count)



Loggerhead_Patch_2006 <- import("DT/Loggerhead_Patch/data/Loggerhead_Patch_2006.xls")


Loggerhead_Patch_2006_herb <- merge(Loggerhead_Patch_2006, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_2006_herb_count <- count(Loggerhead_Patch_2006_herb, vars = "SPECIES_CD")
Loggerhead_Patch_2006_herb_count$Year <- ('2006')
Loggerhead_Patch_2006_herb_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_2006_herb_count$Type <- "Herbivorous"

Loggerhead_Patch_2006_comm <- merge(Loggerhead_Patch_2006, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_2006_comm_count <- count(Loggerhead_Patch_2006_comm, vars = "SPECIES_CD")
Loggerhead_Patch_2006_comm_count$Year <- ('2006')
Loggerhead_Patch_2006_comm_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_2006_comm_count$Type <- "Commercial"


Loggerhead_Patch_2006_total_count <- rbind(Loggerhead_Patch_2006_herb_count, Loggerhead_Patch_2006_comm_count)


Loggerhead_Patch_2008 <- import("DT/Loggerhead_Patch/data/Loggerhead_Patch_2008.xls")


Loggerhead_Patch_2008_herb <- merge(Loggerhead_Patch_2008, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_2008_herb_count <- count(Loggerhead_Patch_2008_herb, vars = "SPECIES_CD")
Loggerhead_Patch_2008_herb_count$Year <- ('2008')
Loggerhead_Patch_2008_herb_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_2008_herb_count$Type <- "Herbivorous"

Loggerhead_Patch_2008_comm <- merge(Loggerhead_Patch_2008, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_2008_comm_count <- count(Loggerhead_Patch_2008_comm, vars = "SPECIES_CD")
Loggerhead_Patch_2008_comm_count$Year <- ('2008')
Loggerhead_Patch_2008_comm_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_2008_comm_count$Type <- "Commercial"


Loggerhead_Patch_2008_total_count <- rbind(Loggerhead_Patch_2008_herb_count, Loggerhead_Patch_2008_comm_count)




Loggerhead_Patch_2010 <- import("DT/Loggerhead_Patch/data/Loggerhead_Patch_2010.xls")


Loggerhead_Patch_2010_herb <- merge(Loggerhead_Patch_2010, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_2010_herb_count <- count(Loggerhead_Patch_2010_herb, vars = "SPECIES_CD")
Loggerhead_Patch_2010_herb_count$Year <- ('2010')
Loggerhead_Patch_2010_herb_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_2010_herb_count$Type <- "Herbivorous"

Loggerhead_Patch_2010_comm <- merge(Loggerhead_Patch_2010, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_2010_comm_count <- count(Loggerhead_Patch_2010_comm, vars = "SPECIES_CD")
Loggerhead_Patch_2010_comm_count$Year <- ('2010')
Loggerhead_Patch_2010_comm_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_2010_comm_count$Type <- "Commercial"


Loggerhead_Patch_2010_total_count <- rbind(Loggerhead_Patch_2010_herb_count, Loggerhead_Patch_2010_comm_count)



Loggerhead_Patch_2012 <- import("DT/Loggerhead_Patch/data/Loggerhead_Patch_2012.xls")


Loggerhead_Patch_2012_herb <- merge(Loggerhead_Patch_2012, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_2012_herb_count <- count(Loggerhead_Patch_2012_herb, vars = "SPECIES_CD")
Loggerhead_Patch_2012_herb_count$Year <- ('2012')
Loggerhead_Patch_2012_herb_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_2012_herb_count$Type <- "Herbivorous"

Loggerhead_Patch_2012_comm <- merge(Loggerhead_Patch_2012, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_2012_comm_count <- count(Loggerhead_Patch_2012_comm, vars = "SPECIES_CD")
Loggerhead_Patch_2012_comm_count$Year <- ('2012')
Loggerhead_Patch_2012_comm_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_2012_comm_count$Type <- "Commercial"


Loggerhead_Patch_2012_total_count <- rbind(Loggerhead_Patch_2012_herb_count, Loggerhead_Patch_2012_comm_count)



Loggerhead_Patch_2014 <- import("DT/Loggerhead_Patch/data/Loggerhead_Patch_2014.xls")


Loggerhead_Patch_2014_herb <- merge(Loggerhead_Patch_2014, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_2014_herb_count <- count(Loggerhead_Patch_2014_herb, vars = "SPECIES_CD")
Loggerhead_Patch_2014_herb_count$Year <- ('2014')
Loggerhead_Patch_2014_herb_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_2014_herb_count$Type <- "Herbivorous"

Loggerhead_Patch_2014_comm <- merge(Loggerhead_Patch_2014, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_2014_comm_count <- count(Loggerhead_Patch_2014_comm, vars = "SPECIES_CD")
Loggerhead_Patch_2014_comm_count$Year <- ('2014')
Loggerhead_Patch_2014_comm_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_2014_comm_count$Type <- "Commercial"


Loggerhead_Patch_2014_total_count <- rbind(Loggerhead_Patch_2014_herb_count, Loggerhead_Patch_2014_comm_count)




Loggerhead_Patch_2016 <- import("DT/Loggerhead_Patch/data/Loggerhead_Patch_2016.xls")


Loggerhead_Patch_2016_herb <- merge(Loggerhead_Patch_2016, Herb, by = c("SPECIES_CD"))
Loggerhead_Patch_2016_herb_count <- count(Loggerhead_Patch_2016_herb, vars = "SPECIES_CD")
Loggerhead_Patch_2016_herb_count$Year <- ('2016')
Loggerhead_Patch_2016_herb_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_2016_herb_count$Type <- "Herbivorous"

Loggerhead_Patch_2016_comm <- merge(Loggerhead_Patch_2016, Comm, by = c("SPECIES_CD"))
Loggerhead_Patch_2016_comm_count <- count(Loggerhead_Patch_2016_comm, vars = "SPECIES_CD")
Loggerhead_Patch_2016_comm_count$Year <- ('2016')
Loggerhead_Patch_2016_comm_count$sitename <- ('Loggerhead Patch')
Loggerhead_Patch_2016_comm_count$Type <- "Commercial"


Loggerhead_Patch_2016_total_count <- rbind(Loggerhead_Patch_2016_herb_count, Loggerhead_Patch_2016_comm_count)



Loggerhead_Patch_all <- rbind(Loggerhead_Patch_1999_total_count,Loggerhead_Patch_2000_total_count,Loggerhead_Patch_2004_total_count,Loggerhead_Patch_2006_total_count,Loggerhead_Patch_2008_total_count, Loggerhead_Patch_2010_total_count, Loggerhead_Patch_2012_total_count, Loggerhead_Patch_2014_total_count, Loggerhead_Patch_2016_total_count )


export(Loggerhead_Patch_all, "DT/Loggerhead_Patch/data/Loggerhead_Patch_count_herb_comm.csv")







Mayers_Peak_1999 <- import("DT/Mayers_Peak/data/Mayers_Peak_1999.xls")


Mayers_Peak_1999_herb <- merge(Mayers_Peak_1999, Herb, by = c("SPECIES_CD"))
Mayers_Peak_1999_herb_count <- count(Mayers_Peak_1999_herb, vars = "SPECIES_CD")
Mayers_Peak_1999_herb_count$Year <- ('1999')
Mayers_Peak_1999_herb_count$sitename <- ('Mayers Peak')
Mayers_Peak_1999_herb_count$Type <- "Herbivorous"

Mayers_Peak_1999_comm <- merge(Mayers_Peak_1999, Comm, by = c("SPECIES_CD"))
Mayers_Peak_1999_comm_count <- count(Mayers_Peak_1999_comm, vars = "SPECIES_CD")
Mayers_Peak_1999_comm_count$Year <- ('1999')
Mayers_Peak_1999_comm_count$sitename <- ('Mayers Peak')
Mayers_Peak_1999_comm_count$Type <- "Commercial"


Mayers_Peak_1999_total_count <- rbind(Mayers_Peak_1999_herb_count, Mayers_Peak_1999_comm_count)




Mayers_Peak_2000 <- import("DT/Mayers_Peak/data/Mayers_Peak_2000.xls")


Mayers_Peak_2000_herb <- merge(Mayers_Peak_2000, Herb, by = c("SPECIES_CD"))
Mayers_Peak_2000_herb_count <- count(Mayers_Peak_2000_herb, vars = "SPECIES_CD")
Mayers_Peak_2000_herb_count$Year <- ('2000')
Mayers_Peak_2000_herb_count$sitename <- ('Mayers Peak')
Mayers_Peak_2000_herb_count$Type <- "Herbivorous"

Mayers_Peak_2000_comm <- merge(Mayers_Peak_2000, Comm, by = c("SPECIES_CD"))
Mayers_Peak_2000_comm_count <- count(Mayers_Peak_2000_comm, vars = "SPECIES_CD")
Mayers_Peak_2000_comm_count$Year <- ('2000')
Mayers_Peak_2000_comm_count$sitename <- ('Mayers Peak')
Mayers_Peak_2000_comm_count$Type <- "Commercial"


Mayers_Peak_2000_total_count <- rbind(Mayers_Peak_2000_herb_count, Mayers_Peak_2000_comm_count)



Mayers_Peak_2004 <- import("DT/Mayers_Peak/data/Mayers_Peak_2004.xls")


Mayers_Peak_2004_herb <- merge(Mayers_Peak_2004, Herb, by = c("SPECIES_CD"))
Mayers_Peak_2004_herb_count <- count(Mayers_Peak_2004_herb, vars = "SPECIES_CD")
Mayers_Peak_2004_herb_count$Year <- ('2004')
Mayers_Peak_2004_herb_count$sitename <- ('Mayers Peak')
Mayers_Peak_2004_herb_count$Type <- "Herbivorous"

Mayers_Peak_2004_comm <- merge(Mayers_Peak_2004, Comm, by = c("SPECIES_CD"))
Mayers_Peak_2004_comm_count <- count(Mayers_Peak_2004_comm, vars = "SPECIES_CD")
Mayers_Peak_2004_comm_count$Year <- ('2004')
Mayers_Peak_2004_comm_count$sitename <- ('Mayers Peak')
Mayers_Peak_2004_comm_count$Type <- "Commercial"


Mayers_Peak_2004_total_count <- rbind(Mayers_Peak_2004_herb_count, Mayers_Peak_2004_comm_count)



Mayers_Peak_2006 <- import("DT/Mayers_Peak/data/Mayers_Peak_2006.xls")


Mayers_Peak_2006_herb <- merge(Mayers_Peak_2006, Herb, by = c("SPECIES_CD"))
Mayers_Peak_2006_herb_count <- count(Mayers_Peak_2006_herb, vars = "SPECIES_CD")
Mayers_Peak_2006_herb_count$Year <- ('2006')
Mayers_Peak_2006_herb_count$sitename <- ('Mayers Peak')
Mayers_Peak_2006_herb_count$Type <- "Herbivorous"

Mayers_Peak_2006_comm <- merge(Mayers_Peak_2006, Comm, by = c("SPECIES_CD"))
Mayers_Peak_2006_comm_count <- count(Mayers_Peak_2006_comm, vars = "SPECIES_CD")
Mayers_Peak_2006_comm_count$Year <- ('2006')
Mayers_Peak_2006_comm_count$sitename <- ('Mayers Peak')
Mayers_Peak_2006_comm_count$Type <- "Commercial"


Mayers_Peak_2006_total_count <- rbind(Mayers_Peak_2006_herb_count, Mayers_Peak_2006_comm_count)


Mayers_Peak_2008 <- import("DT/Mayers_Peak/data/Mayers_Peak_2008.xls")


Mayers_Peak_2008_herb <- merge(Mayers_Peak_2008, Herb, by = c("SPECIES_CD"))
Mayers_Peak_2008_herb_count <- count(Mayers_Peak_2008_herb, vars = "SPECIES_CD")
Mayers_Peak_2008_herb_count$Year <- ('2008')
Mayers_Peak_2008_herb_count$sitename <- ('Mayers Peak')
Mayers_Peak_2008_herb_count$Type <- "Herbivorous"

Mayers_Peak_2008_comm <- merge(Mayers_Peak_2008, Comm, by = c("SPECIES_CD"))
Mayers_Peak_2008_comm_count <- count(Mayers_Peak_2008_comm, vars = "SPECIES_CD")
Mayers_Peak_2008_comm_count$Year <- ('2008')
Mayers_Peak_2008_comm_count$sitename <- ('Mayers Peak')
Mayers_Peak_2008_comm_count$Type <- "Commercial"


Mayers_Peak_2008_total_count <- rbind(Mayers_Peak_2008_herb_count, Mayers_Peak_2008_comm_count)




Mayers_Peak_2010 <- import("DT/Mayers_Peak/data/Mayers_Peak_2010.xls")


Mayers_Peak_2010_herb <- merge(Mayers_Peak_2010, Herb, by = c("SPECIES_CD"))
Mayers_Peak_2010_herb_count <- count(Mayers_Peak_2010_herb, vars = "SPECIES_CD")
Mayers_Peak_2010_herb_count$Year <- ('2010')
Mayers_Peak_2010_herb_count$sitename <- ('Mayers Peak')
Mayers_Peak_2010_herb_count$Type <- "Herbivorous"

Mayers_Peak_2010_comm <- merge(Mayers_Peak_2010, Comm, by = c("SPECIES_CD"))
Mayers_Peak_2010_comm_count <- count(Mayers_Peak_2010_comm, vars = "SPECIES_CD")
Mayers_Peak_2010_comm_count$Year <- ('2010')
Mayers_Peak_2010_comm_count$sitename <- ('Mayers Peak')
Mayers_Peak_2010_comm_count$Type <- "Commercial"


Mayers_Peak_2010_total_count <- rbind(Mayers_Peak_2010_herb_count, Mayers_Peak_2010_comm_count)



Mayers_Peak_2012 <- import("DT/Mayers_Peak/data/Mayers_Peak_2012.xls")


Mayers_Peak_2012_herb <- merge(Mayers_Peak_2012, Herb, by = c("SPECIES_CD"))
Mayers_Peak_2012_herb_count <- count(Mayers_Peak_2012_herb, vars = "SPECIES_CD")
Mayers_Peak_2012_herb_count$Year <- ('2012')
Mayers_Peak_2012_herb_count$sitename <- ('Mayers Peak')
Mayers_Peak_2012_herb_count$Type <- "Herbivorous"

Mayers_Peak_2012_comm <- merge(Mayers_Peak_2012, Comm, by = c("SPECIES_CD"))
Mayers_Peak_2012_comm_count <- count(Mayers_Peak_2012_comm, vars = "SPECIES_CD")
Mayers_Peak_2012_comm_count$Year <- ('2012')
Mayers_Peak_2012_comm_count$sitename <- ('Mayers Peak')
Mayers_Peak_2012_comm_count$Type <- "Commercial"


Mayers_Peak_2012_total_count <- rbind(Mayers_Peak_2012_herb_count, Mayers_Peak_2012_comm_count)



Mayers_Peak_2014 <- import("DT/Mayers_Peak/data/Mayers_Peak_2014.xls")


Mayers_Peak_2014_herb <- merge(Mayers_Peak_2014, Herb, by = c("SPECIES_CD"))
Mayers_Peak_2014_herb_count <- count(Mayers_Peak_2014_herb, vars = "SPECIES_CD")
Mayers_Peak_2014_herb_count$Year <- ('2014')
Mayers_Peak_2014_herb_count$sitename <- ('Mayers Peak')
Mayers_Peak_2014_herb_count$Type <- "Herbivorous"

Mayers_Peak_2014_comm <- merge(Mayers_Peak_2014, Comm, by = c("SPECIES_CD"))
Mayers_Peak_2014_comm_count <- count(Mayers_Peak_2014_comm, vars = "SPECIES_CD")
Mayers_Peak_2014_comm_count$Year <- ('2014')
Mayers_Peak_2014_comm_count$sitename <- ('Mayers Peak')
Mayers_Peak_2014_comm_count$Type <- "Commercial"


Mayers_Peak_2014_total_count <- rbind(Mayers_Peak_2014_herb_count, Mayers_Peak_2014_comm_count)




Mayers_Peak_2016 <- import("DT/Mayers_Peak/data/Mayers_Peak_2016.xls")


Mayers_Peak_2016_herb <- merge(Mayers_Peak_2016, Herb, by = c("SPECIES_CD"))
Mayers_Peak_2016_herb_count <- count(Mayers_Peak_2016_herb, vars = "SPECIES_CD")
Mayers_Peak_2016_herb_count$Year <- ('2016')
Mayers_Peak_2016_herb_count$sitename <- ('Mayers Peak')
Mayers_Peak_2016_herb_count$Type <- "Herbivorous"

Mayers_Peak_2016_comm <- merge(Mayers_Peak_2016, Comm, by = c("SPECIES_CD"))
Mayers_Peak_2016_comm_count <- count(Mayers_Peak_2016_comm, vars = "SPECIES_CD")
Mayers_Peak_2016_comm_count$Year <- ('2016')
Mayers_Peak_2016_comm_count$sitename <- ('Mayers Peak')
Mayers_Peak_2016_comm_count$Type <- "Commercial"


Mayers_Peak_2016_total_count <- rbind(Mayers_Peak_2016_herb_count, Mayers_Peak_2016_comm_count)



Mayers_Peak_all <- rbind(Mayers_Peak_1999_total_count,Mayers_Peak_2000_total_count,Mayers_Peak_2004_total_count,Mayers_Peak_2006_total_count,Mayers_Peak_2008_total_count, Mayers_Peak_2010_total_count, Mayers_Peak_2012_total_count, Mayers_Peak_2014_total_count, Mayers_Peak_2016_total_count )


export(Mayers_Peak_all, "DT/Mayers_Peak/data/Mayers_Peak_count_herb_comm.csv")





Palmata_Patch_1999 <- import("DT/Palmata_Patch/data/Palmata_Patch_1999.xls")


Palmata_Patch_1999_herb <- merge(Palmata_Patch_1999, Herb, by = c("SPECIES_CD"))
Palmata_Patch_1999_herb_count <- count(Palmata_Patch_1999_herb, vars = "SPECIES_CD")
Palmata_Patch_1999_herb_count$Year <- ('1999')
Palmata_Patch_1999_herb_count$sitename <- ('Palmata Patch')
Palmata_Patch_1999_herb_count$Type <- "Herbivorous"

Palmata_Patch_1999_comm <- merge(Palmata_Patch_1999, Comm, by = c("SPECIES_CD"))
Palmata_Patch_1999_comm_count <- count(Palmata_Patch_1999_comm, vars = "SPECIES_CD")
Palmata_Patch_1999_comm_count$Year <- ('1999')
Palmata_Patch_1999_comm_count$sitename <- ('Palmata Patch')
Palmata_Patch_1999_comm_count$Type <- "Commercial"


Palmata_Patch_1999_total_count <- rbind(Palmata_Patch_1999_herb_count, Palmata_Patch_1999_comm_count)




Palmata_Patch_2000 <- import("DT/Palmata_Patch/data/Palmata_Patch_2000.xls")


Palmata_Patch_2000_herb <- merge(Palmata_Patch_2000, Herb, by = c("SPECIES_CD"))
Palmata_Patch_2000_herb_count <- count(Palmata_Patch_2000_herb, vars = "SPECIES_CD")
Palmata_Patch_2000_herb_count$Year <- ('2000')
Palmata_Patch_2000_herb_count$sitename <- ('Palmata Patch')
Palmata_Patch_2000_herb_count$Type <- "Herbivorous"

Palmata_Patch_2000_comm <- merge(Palmata_Patch_2000, Comm, by = c("SPECIES_CD"))
Palmata_Patch_2000_comm_count <- count(Palmata_Patch_2000_comm, vars = "SPECIES_CD")
Palmata_Patch_2000_comm_count$Year <- ('2000')
Palmata_Patch_2000_comm_count$sitename <- ('Palmata Patch')
Palmata_Patch_2000_comm_count$Type <- "Commercial"


Palmata_Patch_2000_total_count <- rbind(Palmata_Patch_2000_herb_count, Palmata_Patch_2000_comm_count)



Palmata_Patch_2004 <- import("DT/Palmata_Patch/data/Palmata_Patch_2004.xls")


Palmata_Patch_2004_herb <- merge(Palmata_Patch_2004, Herb, by = c("SPECIES_CD"))
Palmata_Patch_2004_herb_count <- count(Palmata_Patch_2004_herb, vars = "SPECIES_CD")
Palmata_Patch_2004_herb_count$Year <- ('2004')
Palmata_Patch_2004_herb_count$sitename <- ('Palmata Patch')
Palmata_Patch_2004_herb_count$Type <- "Herbivorous"

Palmata_Patch_2004_comm <- merge(Palmata_Patch_2004, Comm, by = c("SPECIES_CD"))
Palmata_Patch_2004_comm_count <- count(Palmata_Patch_2004_comm, vars = "SPECIES_CD")
Palmata_Patch_2004_comm_count$Year <- ('2004')
Palmata_Patch_2004_comm_count$sitename <- ('Palmata Patch')
Palmata_Patch_2004_comm_count$Type <- "Commercial"


Palmata_Patch_2004_total_count <- rbind(Palmata_Patch_2004_herb_count, Palmata_Patch_2004_comm_count)



Palmata_Patch_2006 <- import("DT/Palmata_Patch/data/Palmata_Patch_2006.xls")


Palmata_Patch_2006_herb <- merge(Palmata_Patch_2006, Herb, by = c("SPECIES_CD"))
Palmata_Patch_2006_herb_count <- count(Palmata_Patch_2006_herb, vars = "SPECIES_CD")
Palmata_Patch_2006_herb_count$Year <- ('2006')
Palmata_Patch_2006_herb_count$sitename <- ('Palmata Patch')
Palmata_Patch_2006_herb_count$Type <- "Herbivorous"

Palmata_Patch_2006_comm <- merge(Palmata_Patch_2006, Comm, by = c("SPECIES_CD"))
Palmata_Patch_2006_comm_count <- count(Palmata_Patch_2006_comm, vars = "SPECIES_CD")
Palmata_Patch_2006_comm_count$Year <- ('2006')
Palmata_Patch_2006_comm_count$sitename <- ('Palmata Patch')
Palmata_Patch_2006_comm_count$Type <- "Commercial"


Palmata_Patch_2006_total_count <- rbind(Palmata_Patch_2006_herb_count, Palmata_Patch_2006_comm_count)


Palmata_Patch_2008 <- import("DT/Palmata_Patch/data/Palmata_Patch_2008.xls")


Palmata_Patch_2008_herb <- merge(Palmata_Patch_2008, Herb, by = c("SPECIES_CD"))
Palmata_Patch_2008_herb_count <- count(Palmata_Patch_2008_herb, vars = "SPECIES_CD")
Palmata_Patch_2008_herb_count$Year <- ('2008')
Palmata_Patch_2008_herb_count$sitename <- ('Palmata Patch')
Palmata_Patch_2008_herb_count$Type <- "Herbivorous"

Palmata_Patch_2008_comm <- merge(Palmata_Patch_2008, Comm, by = c("SPECIES_CD"))
Palmata_Patch_2008_comm_count <- count(Palmata_Patch_2008_comm, vars = "SPECIES_CD")
Palmata_Patch_2008_comm_count$Year <- ('2008')
Palmata_Patch_2008_comm_count$sitename <- ('Palmata Patch')
Palmata_Patch_2008_comm_count$Type <- "Commercial"


Palmata_Patch_2008_total_count <- rbind(Palmata_Patch_2008_herb_count, Palmata_Patch_2008_comm_count)




Palmata_Patch_2010 <- import("DT/Palmata_Patch/data/Palmata_Patch_2010.xls")


Palmata_Patch_2010_herb <- merge(Palmata_Patch_2010, Herb, by = c("SPECIES_CD"))
Palmata_Patch_2010_herb_count <- count(Palmata_Patch_2010_herb, vars = "SPECIES_CD")
Palmata_Patch_2010_herb_count$Year <- ('2010')
Palmata_Patch_2010_herb_count$sitename <- ('Palmata Patch')
Palmata_Patch_2010_herb_count$Type <- "Herbivorous"

Palmata_Patch_2010_comm <- merge(Palmata_Patch_2010, Comm, by = c("SPECIES_CD"))
Palmata_Patch_2010_comm_count <- count(Palmata_Patch_2010_comm, vars = "SPECIES_CD")
Palmata_Patch_2010_comm_count$Year <- ('2010')
Palmata_Patch_2010_comm_count$sitename <- ('Palmata Patch')
Palmata_Patch_2010_comm_count$Type <- "Commercial"


Palmata_Patch_2010_total_count <- rbind(Palmata_Patch_2010_herb_count, Palmata_Patch_2010_comm_count)



Palmata_Patch_2012 <- import("DT/Palmata_Patch/data/Palmata_Patch_2012.xls")


Palmata_Patch_2012_herb <- merge(Palmata_Patch_2012, Herb, by = c("SPECIES_CD"))
Palmata_Patch_2012_herb_count <- count(Palmata_Patch_2012_herb, vars = "SPECIES_CD")
Palmata_Patch_2012_herb_count$Year <- ('2012')
Palmata_Patch_2012_herb_count$sitename <- ('Palmata Patch')
Palmata_Patch_2012_herb_count$Type <- "Herbivorous"

Palmata_Patch_2012_comm <- merge(Palmata_Patch_2012, Comm, by = c("SPECIES_CD"))
Palmata_Patch_2012_comm_count <- count(Palmata_Patch_2012_comm, vars = "SPECIES_CD")
Palmata_Patch_2012_comm_count$Year <- ('2012')
Palmata_Patch_2012_comm_count$sitename <- ('Palmata Patch')
Palmata_Patch_2012_comm_count$Type <- "Commercial"


Palmata_Patch_2012_total_count <- rbind(Palmata_Patch_2012_herb_count, Palmata_Patch_2012_comm_count)



Palmata_Patch_2014 <- import("DT/Palmata_Patch/data/Palmata_Patch_2014.xls")


Palmata_Patch_2014_herb <- merge(Palmata_Patch_2014, Herb, by = c("SPECIES_CD"))
Palmata_Patch_2014_herb_count <- count(Palmata_Patch_2014_herb, vars = "SPECIES_CD")
Palmata_Patch_2014_herb_count$Year <- ('2014')
Palmata_Patch_2014_herb_count$sitename <- ('Palmata Patch')
Palmata_Patch_2014_herb_count$Type <- "Herbivorous"

Palmata_Patch_2014_comm <- merge(Palmata_Patch_2014, Comm, by = c("SPECIES_CD"))
Palmata_Patch_2014_comm_count <- count(Palmata_Patch_2014_comm, vars = "SPECIES_CD")
Palmata_Patch_2014_comm_count$Year <- ('2014')
Palmata_Patch_2014_comm_count$sitename <- ('Palmata Patch')
Palmata_Patch_2014_comm_count$Type <- "Commercial"


Palmata_Patch_2014_total_count <- rbind(Palmata_Patch_2014_herb_count, Palmata_Patch_2014_comm_count)




Palmata_Patch_2016 <- import("DT/Palmata_Patch/data/Palmata_Patch_2016.xls")


Palmata_Patch_2016_herb <- merge(Palmata_Patch_2016, Herb, by = c("SPECIES_CD"))
Palmata_Patch_2016_herb_count <- count(Palmata_Patch_2016_herb, vars = "SPECIES_CD")
Palmata_Patch_2016_herb_count$Year <- ('2016')
Palmata_Patch_2016_herb_count$sitename <- ('Palmata Patch')
Palmata_Patch_2016_herb_count$Type <- "Herbivorous"

Palmata_Patch_2016_comm <- merge(Palmata_Patch_2016, Comm, by = c("SPECIES_CD"))
Palmata_Patch_2016_comm_count <- count(Palmata_Patch_2016_comm, vars = "SPECIES_CD")
Palmata_Patch_2016_comm_count$Year <- ('2016')
Palmata_Patch_2016_comm_count$sitename <- ('Palmata Patch')
Palmata_Patch_2016_comm_count$Type <- "Commercial"


Palmata_Patch_2016_total_count <- rbind(Palmata_Patch_2016_herb_count, Palmata_Patch_2016_comm_count)



Palmata_Patch_all <- rbind(Palmata_Patch_1999_total_count,Palmata_Patch_2000_total_count,Palmata_Patch_2004_total_count,Palmata_Patch_2006_total_count,Palmata_Patch_2008_total_count, Palmata_Patch_2010_total_count, Palmata_Patch_2012_total_count, Palmata_Patch_2014_total_count, Palmata_Patch_2016_total_count )


export(Palmata_Patch_all, "DT/Palmata_Patch/data/Palmata_Patch_count_herb_comm.csv")




Prolifera_Patch_1999 <- import("DT/Prolifera_Patch/data/Prolifera_Patch_1999.xls")


Prolifera_Patch_1999_herb <- merge(Prolifera_Patch_1999, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_1999_herb_count <- count(Prolifera_Patch_1999_herb, vars = "SPECIES_CD")
Prolifera_Patch_1999_herb_count$Year <- ('1999')
Prolifera_Patch_1999_herb_count$sitename <- ('Prolifera Patch')
Prolifera_Patch_1999_herb_count$Type <- "Herbivorous"

Prolifera_Patch_1999_comm <- merge(Prolifera_Patch_1999, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_1999_comm_count <- count(Prolifera_Patch_1999_comm, vars = "SPECIES_CD")
Prolifera_Patch_1999_comm_count$Year <- ('1999')
Prolifera_Patch_1999_comm_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_1999_comm_count$Type <- "Commercial"


Prolifera_Patch_1999_total_count <- rbind(Prolifera_Patch_1999_herb_count, Prolifera_Patch_1999_comm_count)




Prolifera_Patch_2000 <- import("DT/Prolifera_Patch/data/Prolifera_Patch_2000.xls")


Prolifera_Patch_2000_herb <- merge(Prolifera_Patch_2000, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_2000_herb_count <- count(Prolifera_Patch_2000_herb, vars = "SPECIES_CD")
Prolifera_Patch_2000_herb_count$Year <- ('2000')
Prolifera_Patch_2000_herb_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_2000_herb_count$Type <- "Herbivorous"

Prolifera_Patch_2000_comm <- merge(Prolifera_Patch_2000, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_2000_comm_count <- count(Prolifera_Patch_2000_comm, vars = "SPECIES_CD")
Prolifera_Patch_2000_comm_count$Year <- ('2000')
Prolifera_Patch_2000_comm_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_2000_comm_count$Type <- "Commercial"


Prolifera_Patch_2000_total_count <- rbind(Prolifera_Patch_2000_herb_count, Prolifera_Patch_2000_comm_count)



Prolifera_Patch_2004 <- import("DT/Prolifera_Patch/data/Prolifera_Patch_2004.xls")


Prolifera_Patch_2004_herb <- merge(Prolifera_Patch_2004, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_2004_herb_count <- count(Prolifera_Patch_2004_herb, vars = "SPECIES_CD")
Prolifera_Patch_2004_herb_count$Year <- ('2004')
Prolifera_Patch_2004_herb_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_2004_herb_count$Type <- "Herbivorous"

Prolifera_Patch_2004_comm <- merge(Prolifera_Patch_2004, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_2004_comm_count <- count(Prolifera_Patch_2004_comm, vars = "SPECIES_CD")
Prolifera_Patch_2004_comm_count$Year <- ('2004')
Prolifera_Patch_2004_comm_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_2004_comm_count$Type <- "Commercial"


Prolifera_Patch_2004_total_count <- rbind(Prolifera_Patch_2004_herb_count, Prolifera_Patch_2004_comm_count)



Prolifera_Patch_2006 <- import("DT/Prolifera_Patch/data/Prolifera_Patch_2006.xls")


Prolifera_Patch_2006_herb <- merge(Prolifera_Patch_2006, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_2006_herb_count <- count(Prolifera_Patch_2006_herb, vars = "SPECIES_CD")
Prolifera_Patch_2006_herb_count$Year <- ('2006')
Prolifera_Patch_2006_herb_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_2006_herb_count$Type <- "Herbivorous"

Prolifera_Patch_2006_comm <- merge(Prolifera_Patch_2006, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_2006_comm_count <- count(Prolifera_Patch_2006_comm, vars = "SPECIES_CD")
Prolifera_Patch_2006_comm_count$Year <- ('2006')
Prolifera_Patch_2006_comm_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_2006_comm_count$Type <- "Commercial"


Prolifera_Patch_2006_total_count <- rbind(Prolifera_Patch_2006_herb_count, Prolifera_Patch_2006_comm_count)


Prolifera_Patch_2008 <- import("DT/Prolifera_Patch/data/Prolifera_Patch_2008.xls")


Prolifera_Patch_2008_herb <- merge(Prolifera_Patch_2008, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_2008_herb_count <- count(Prolifera_Patch_2008_herb, vars = "SPECIES_CD")
Prolifera_Patch_2008_herb_count$Year <- ('2008')
Prolifera_Patch_2008_herb_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_2008_herb_count$Type <- "Herbivorous"

Prolifera_Patch_2008_comm <- merge(Prolifera_Patch_2008, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_2008_comm_count <- count(Prolifera_Patch_2008_comm, vars = "SPECIES_CD")
Prolifera_Patch_2008_comm_count$Year <- ('2008')
Prolifera_Patch_2008_comm_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_2008_comm_count$Type <- "Commercial"


Prolifera_Patch_2008_total_count <- rbind(Prolifera_Patch_2008_herb_count, Prolifera_Patch_2008_comm_count)




Prolifera_Patch_2010 <- import("DT/Prolifera_Patch/data/Prolifera_Patch_2010.xls")


Prolifera_Patch_2010_herb <- merge(Prolifera_Patch_2010, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_2010_herb_count <- count(Prolifera_Patch_2010_herb, vars = "SPECIES_CD")
Prolifera_Patch_2010_herb_count$Year <- ('2010')
Prolifera_Patch_2010_herb_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_2010_herb_count$Type <- "Herbivorous"

Prolifera_Patch_2010_comm <- merge(Prolifera_Patch_2010, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_2010_comm_count <- count(Prolifera_Patch_2010_comm, vars = "SPECIES_CD")
Prolifera_Patch_2010_comm_count$Year <- ('2010')
Prolifera_Patch_2010_comm_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_2010_comm_count$Type <- "Commercial"


Prolifera_Patch_2010_total_count <- rbind(Prolifera_Patch_2010_herb_count, Prolifera_Patch_2010_comm_count)



Prolifera_Patch_2012 <- import("DT/Prolifera_Patch/data/Prolifera_Patch_2012.xls")


Prolifera_Patch_2012_herb <- merge(Prolifera_Patch_2012, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_2012_herb_count <- count(Prolifera_Patch_2012_herb, vars = "SPECIES_CD")
Prolifera_Patch_2012_herb_count$Year <- ('2012')
Prolifera_Patch_2012_herb_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_2012_herb_count$Type <- "Herbivorous"

Prolifera_Patch_2012_comm <- merge(Prolifera_Patch_2012, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_2012_comm_count <- count(Prolifera_Patch_2012_comm, vars = "SPECIES_CD")
Prolifera_Patch_2012_comm_count$Year <- ('2012')
Prolifera_Patch_2012_comm_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_2012_comm_count$Type <- "Commercial"


Prolifera_Patch_2012_total_count <- rbind(Prolifera_Patch_2012_herb_count, Prolifera_Patch_2012_comm_count)



Prolifera_Patch_2014 <- import("DT/Prolifera_Patch/data/Prolifera_Patch_2014.xls")


Prolifera_Patch_2014_herb <- merge(Prolifera_Patch_2014, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_2014_herb_count <- count(Prolifera_Patch_2014_herb, vars = "SPECIES_CD")
Prolifera_Patch_2014_herb_count$Year <- ('2014')
Prolifera_Patch_2014_herb_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_2014_herb_count$Type <- "Herbivorous"

Prolifera_Patch_2014_comm <- merge(Prolifera_Patch_2014, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_2014_comm_count <- count(Prolifera_Patch_2014_comm, vars = "SPECIES_CD")
Prolifera_Patch_2014_comm_count$Year <- ('2014')
Prolifera_Patch_2014_comm_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_2014_comm_count$Type <- "Commercial"


Prolifera_Patch_2014_total_count <- rbind(Prolifera_Patch_2014_herb_count, Prolifera_Patch_2014_comm_count)




Prolifera_Patch_2016 <- import("DT/Prolifera_Patch/data/Prolifera_Patch_2016.xls")


Prolifera_Patch_2016_herb <- merge(Prolifera_Patch_2016, Herb, by = c("SPECIES_CD"))
Prolifera_Patch_2016_herb_count <- count(Prolifera_Patch_2016_herb, vars = "SPECIES_CD")
Prolifera_Patch_2016_herb_count$Year <- ('2016')
Prolifera_Patch_2016_herb_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_2016_herb_count$Type <- "Herbivorous"

Prolifera_Patch_2016_comm <- merge(Prolifera_Patch_2016, Comm, by = c("SPECIES_CD"))
Prolifera_Patch_2016_comm_count <- count(Prolifera_Patch_2016_comm, vars = "SPECIES_CD")
Prolifera_Patch_2016_comm_count$Year <- ('2016')
Prolifera_Patch_2016_comm_count$sitename <- ('Prolifera Patch ')
Prolifera_Patch_2016_comm_count$Type <- "Commercial"


Prolifera_Patch_2016_total_count <- rbind(Prolifera_Patch_2016_herb_count, Prolifera_Patch_2016_comm_count)



Prolifera_Patch_all <- rbind(Prolifera_Patch_1999_total_count,Prolifera_Patch_2000_total_count,Prolifera_Patch_2004_total_count,Prolifera_Patch_2006_total_count,Prolifera_Patch_2008_total_count, Prolifera_Patch_2010_total_count, Prolifera_Patch_2012_total_count, Prolifera_Patch_2014_total_count, Prolifera_Patch_2016_total_count )


export(Prolifera_Patch_all, "DT/Prolifera_Patch/data/Prolifera_Patch_count_herb_comm.csv")









Temptation_Rock_1999 <- import("DT/Temptation_Rock/data/Temptation_Rock_1999.xls")


Temptation_Rock_1999_herb <- merge(Temptation_Rock_1999, Herb, by = c("SPECIES_CD"))
Temptation_Rock_1999_herb_count <- count(Temptation_Rock_1999_herb, vars = "SPECIES_CD")
Temptation_Rock_1999_herb_count$Year <- ('1999')
Temptation_Rock_1999_herb_count$sitename <- ('Temptation Rock')
Temptation_Rock_1999_herb_count$Type <- "Herbivorous"

Temptation_Rock_1999_comm <- merge(Temptation_Rock_1999, Comm, by = c("SPECIES_CD"))
Temptation_Rock_1999_comm_count <- count(Temptation_Rock_1999_comm, vars = "SPECIES_CD")
Temptation_Rock_1999_comm_count$Year <- ('1999')
Temptation_Rock_1999_comm_count$sitename <- ('Temptation Rock ')
Temptation_Rock_1999_comm_count$Type <- "Commercial"


Temptation_Rock_1999_total_count <- rbind(Temptation_Rock_1999_herb_count, Temptation_Rock_1999_comm_count)




Temptation_Rock_2000 <- import("DT/Temptation_Rock/data/Temptation_Rock_2000.xls")


Temptation_Rock_2000_herb <- merge(Temptation_Rock_2000, Herb, by = c("SPECIES_CD"))
Temptation_Rock_2000_herb_count <- count(Temptation_Rock_2000_herb, vars = "SPECIES_CD")
Temptation_Rock_2000_herb_count$Year <- ('2000')
Temptation_Rock_2000_herb_count$sitename <- ('Temptation Rock ')
Temptation_Rock_2000_herb_count$Type <- "Herbivorous"

Temptation_Rock_2000_comm <- merge(Temptation_Rock_2000, Comm, by = c("SPECIES_CD"))
Temptation_Rock_2000_comm_count <- count(Temptation_Rock_2000_comm, vars = "SPECIES_CD")
Temptation_Rock_2000_comm_count$Year <- ('2000')
Temptation_Rock_2000_comm_count$sitename <- ('Temptation Rock ')
Temptation_Rock_2000_comm_count$Type <- "Commercial"


Temptation_Rock_2000_total_count <- rbind(Temptation_Rock_2000_herb_count, Temptation_Rock_2000_comm_count)



Temptation_Rock_2004 <- import("DT/Temptation_Rock/data/Temptation_Rock_2004.xls")


Temptation_Rock_2004_herb <- merge(Temptation_Rock_2004, Herb, by = c("SPECIES_CD"))
Temptation_Rock_2004_herb_count <- count(Temptation_Rock_2004_herb, vars = "SPECIES_CD")
Temptation_Rock_2004_herb_count$Year <- ('2004')
Temptation_Rock_2004_herb_count$sitename <- ('Temptation Rock ')
Temptation_Rock_2004_herb_count$Type <- "Herbivorous"

Temptation_Rock_2004_comm <- merge(Temptation_Rock_2004, Comm, by = c("SPECIES_CD"))
Temptation_Rock_2004_comm_count <- count(Temptation_Rock_2004_comm, vars = "SPECIES_CD")
Temptation_Rock_2004_comm_count$Year <- ('2004')
Temptation_Rock_2004_comm_count$sitename <- ('Temptation Rock ')
Temptation_Rock_2004_comm_count$Type <- "Commercial"


Temptation_Rock_2004_total_count <- rbind(Temptation_Rock_2004_herb_count, Temptation_Rock_2004_comm_count)



Temptation_Rock_2006 <- import("DT/Temptation_Rock/data/Temptation_Rock_2006.xls")


Temptation_Rock_2006_herb <- merge(Temptation_Rock_2006, Herb, by = c("SPECIES_CD"))
Temptation_Rock_2006_herb_count <- count(Temptation_Rock_2006_herb, vars = "SPECIES_CD")
Temptation_Rock_2006_herb_count$Year <- ('2006')
Temptation_Rock_2006_herb_count$sitename <- ('Temptation Rock ')
Temptation_Rock_2006_herb_count$Type <- "Herbivorous"

Temptation_Rock_2006_comm <- merge(Temptation_Rock_2006, Comm, by = c("SPECIES_CD"))
Temptation_Rock_2006_comm_count <- count(Temptation_Rock_2006_comm, vars = "SPECIES_CD")
Temptation_Rock_2006_comm_count$Year <- ('2006')
Temptation_Rock_2006_comm_count$sitename <- ('Temptation Rock ')
Temptation_Rock_2006_comm_count$Type <- "Commercial"


Temptation_Rock_2006_total_count <- rbind(Temptation_Rock_2006_herb_count, Temptation_Rock_2006_comm_count)


Temptation_Rock_2008 <- import("DT/Temptation_Rock/data/Temptation_Rock_2008.xls")


Temptation_Rock_2008_herb <- merge(Temptation_Rock_2008, Herb, by = c("SPECIES_CD"))
Temptation_Rock_2008_herb_count <- count(Temptation_Rock_2008_herb, vars = "SPECIES_CD")
Temptation_Rock_2008_herb_count$Year <- ('2008')
Temptation_Rock_2008_herb_count$sitename <- ('Temptation Rock ')
Temptation_Rock_2008_herb_count$Type <- "Herbivorous"

Temptation_Rock_2008_comm <- merge(Temptation_Rock_2008, Comm, by = c("SPECIES_CD"))
Temptation_Rock_2008_comm_count <- count(Temptation_Rock_2008_comm, vars = "SPECIES_CD")
Temptation_Rock_2008_comm_count$Year <- ('2008')
Temptation_Rock_2008_comm_count$sitename <- ('Temptation Rock ')
Temptation_Rock_2008_comm_count$Type <- "Commercial"


Temptation_Rock_2008_total_count <- rbind(Temptation_Rock_2008_herb_count, Temptation_Rock_2008_comm_count)




Temptation_Rock_2010 <- import("DT/Temptation_Rock/data/Temptation_Rock_2010.xls")


Temptation_Rock_2010_herb <- merge(Temptation_Rock_2010, Herb, by = c("SPECIES_CD"))
Temptation_Rock_2010_herb_count <- count(Temptation_Rock_2010_herb, vars = "SPECIES_CD")
Temptation_Rock_2010_herb_count$Year <- ('2010')
Temptation_Rock_2010_herb_count$sitename <- ('Temptation Rock ')
Temptation_Rock_2010_herb_count$Type <- "Herbivorous"

Temptation_Rock_2010_comm <- merge(Temptation_Rock_2010, Comm, by = c("SPECIES_CD"))
Temptation_Rock_2010_comm_count <- count(Temptation_Rock_2010_comm, vars = "SPECIES_CD")
Temptation_Rock_2010_comm_count$Year <- ('2010')
Temptation_Rock_2010_comm_count$sitename <- ('Temptation Rock ')
Temptation_Rock_2010_comm_count$Type <- "Commercial"


Temptation_Rock_2010_total_count <- rbind(Temptation_Rock_2010_herb_count, Temptation_Rock_2010_comm_count)



Temptation_Rock_2012 <- import("DT/Temptation_Rock/data/Temptation_Rock_2012.xls")


Temptation_Rock_2012_herb <- merge(Temptation_Rock_2012, Herb, by = c("SPECIES_CD"))
Temptation_Rock_2012_herb_count <- count(Temptation_Rock_2012_herb, vars = "SPECIES_CD")
Temptation_Rock_2012_herb_count$Year <- ('2012')
Temptation_Rock_2012_herb_count$sitename <- ('Temptation Rock ')
Temptation_Rock_2012_herb_count$Type <- "Herbivorous"

Temptation_Rock_2012_comm <- merge(Temptation_Rock_2012, Comm, by = c("SPECIES_CD"))
Temptation_Rock_2012_comm_count <- count(Temptation_Rock_2012_comm, vars = "SPECIES_CD")
Temptation_Rock_2012_comm_count$Year <- ('2012')
Temptation_Rock_2012_comm_count$sitename <- ('Temptation Rock ')
Temptation_Rock_2012_comm_count$Type <- "Commercial"


Temptation_Rock_2012_total_count <- rbind(Temptation_Rock_2012_herb_count, Temptation_Rock_2012_comm_count)



Temptation_Rock_2014 <- import("DT/Temptation_Rock/data/Temptation_Rock_2014.xls")


Temptation_Rock_2014_herb <- merge(Temptation_Rock_2014, Herb, by = c("SPECIES_CD"))
Temptation_Rock_2014_herb_count <- count(Temptation_Rock_2014_herb, vars = "SPECIES_CD")
Temptation_Rock_2014_herb_count$Year <- ('2014')
Temptation_Rock_2014_herb_count$sitename <- ('Temptation Rock ')
Temptation_Rock_2014_herb_count$Type <- "Herbivorous"

Temptation_Rock_2014_comm <- merge(Temptation_Rock_2014, Comm, by = c("SPECIES_CD"))
Temptation_Rock_2014_comm_count <- count(Temptation_Rock_2014_comm, vars = "SPECIES_CD")
Temptation_Rock_2014_comm_count$Year <- ('2014')
Temptation_Rock_2014_comm_count$sitename <- ('Temptation Rock ')
Temptation_Rock_2014_comm_count$Type <- "Commercial"


Temptation_Rock_2014_total_count <- rbind(Temptation_Rock_2014_herb_count, Temptation_Rock_2014_comm_count)




Temptation_Rock_2016 <- import("DT/Temptation_Rock/data/Temptation_Rock_2016.xls")


Temptation_Rock_2016_herb <- merge(Temptation_Rock_2016, Herb, by = c("SPECIES_CD"))
Temptation_Rock_2016_herb_count <- count(Temptation_Rock_2016_herb, vars = "SPECIES_CD")
Temptation_Rock_2016_herb_count$Year <- ('2016')
Temptation_Rock_2016_herb_count$sitename <- ('Temptation Rock ')
Temptation_Rock_2016_herb_count$Type <- "Herbivorous"

Temptation_Rock_2016_comm <- merge(Temptation_Rock_2016, Comm, by = c("SPECIES_CD"))
Temptation_Rock_2016_comm_count <- count(Temptation_Rock_2016_comm, vars = "SPECIES_CD")
Temptation_Rock_2016_comm_count$Year <- ('2016')
Temptation_Rock_2016_comm_count$sitename <- ('Temptation Rock ')
Temptation_Rock_2016_comm_count$Type <- "Commercial"


Temptation_Rock_2016_total_count <- rbind(Temptation_Rock_2016_herb_count, Temptation_Rock_2016_comm_count)



Temptation_Rock_all <- rbind(Temptation_Rock_1999_total_count,Temptation_Rock_2000_total_count,Temptation_Rock_2004_total_count,Temptation_Rock_2006_total_count,Temptation_Rock_2008_total_count, Temptation_Rock_2010_total_count, Temptation_Rock_2012_total_count, Temptation_Rock_2014_total_count, Temptation_Rock_2016_total_count )


export(Temptation_Rock_all, "DT/Temptation_Rock/data/Temptation_Rock_count_herb_comm.csv")





Texas_Rock_1999 <- import("DT/Texas_Rock/data/Texas_Rock_1999.xls")


Texas_Rock_1999_herb <- merge(Texas_Rock_1999, Herb, by = c("SPECIES_CD"))
Texas_Rock_1999_herb_count <- count(Texas_Rock_1999_herb, vars = "SPECIES_CD")
Texas_Rock_1999_herb_count$Year <- ('1999')
Texas_Rock_1999_herb_count$sitename <- ('Texas Rock')
Texas_Rock_1999_herb_count$Type <- "Herbivorous"

Texas_Rock_1999_comm <- merge(Texas_Rock_1999, Comm, by = c("SPECIES_CD"))
Texas_Rock_1999_comm_count <- count(Texas_Rock_1999_comm, vars = "SPECIES_CD")
Texas_Rock_1999_comm_count$Year <- ('1999')
Texas_Rock_1999_comm_count$sitename <- ('Texas Rock ')
Texas_Rock_1999_comm_count$Type <- "Commercial"


Texas_Rock_1999_total_count <- rbind(Texas_Rock_1999_herb_count, Texas_Rock_1999_comm_count)




Texas_Rock_2000 <- import("DT/Texas_Rock/data/Texas_Rock_2000.xls")


Texas_Rock_2000_herb <- merge(Texas_Rock_2000, Herb, by = c("SPECIES_CD"))
Texas_Rock_2000_herb_count <- count(Texas_Rock_2000_herb, vars = "SPECIES_CD")
Texas_Rock_2000_herb_count$Year <- ('2000')
Texas_Rock_2000_herb_count$sitename <- ('Texas Rock ')
Texas_Rock_2000_herb_count$Type <- "Herbivorous"

Texas_Rock_2000_comm <- merge(Texas_Rock_2000, Comm, by = c("SPECIES_CD"))
Texas_Rock_2000_comm_count <- count(Texas_Rock_2000_comm, vars = "SPECIES_CD")
Texas_Rock_2000_comm_count$Year <- ('2000')
Texas_Rock_2000_comm_count$sitename <- ('Texas Rock ')
Texas_Rock_2000_comm_count$Type <- "Commercial"


Texas_Rock_2000_total_count <- rbind(Texas_Rock_2000_herb_count, Texas_Rock_2000_comm_count)



Texas_Rock_2004 <- import("DT/Texas_Rock/data/Texas_Rock_2004.xls")


Texas_Rock_2004_herb <- merge(Texas_Rock_2004, Herb, by = c("SPECIES_CD"))
Texas_Rock_2004_herb_count <- count(Texas_Rock_2004_herb, vars = "SPECIES_CD")
Texas_Rock_2004_herb_count$Year <- ('2004')
Texas_Rock_2004_herb_count$sitename <- ('Texas Rock ')
Texas_Rock_2004_herb_count$Type <- "Herbivorous"

Texas_Rock_2004_comm <- merge(Texas_Rock_2004, Comm, by = c("SPECIES_CD"))
Texas_Rock_2004_comm_count <- count(Texas_Rock_2004_comm, vars = "SPECIES_CD")
Texas_Rock_2004_comm_count$Year <- ('2004')
Texas_Rock_2004_comm_count$sitename <- ('Texas Rock ')
Texas_Rock_2004_comm_count$Type <- "Commercial"


Texas_Rock_2004_total_count <- rbind(Texas_Rock_2004_herb_count, Texas_Rock_2004_comm_count)



Texas_Rock_2006 <- import("DT/Texas_Rock/data/Texas_Rock_2006.xls")


Texas_Rock_2006_herb <- merge(Texas_Rock_2006, Herb, by = c("SPECIES_CD"))
Texas_Rock_2006_herb_count <- count(Texas_Rock_2006_herb, vars = "SPECIES_CD")
Texas_Rock_2006_herb_count$Year <- ('2006')
Texas_Rock_2006_herb_count$sitename <- ('Texas Rock ')
Texas_Rock_2006_herb_count$Type <- "Herbivorous"

Texas_Rock_2006_comm <- merge(Texas_Rock_2006, Comm, by = c("SPECIES_CD"))
Texas_Rock_2006_comm_count <- count(Texas_Rock_2006_comm, vars = "SPECIES_CD")
Texas_Rock_2006_comm_count$Year <- ('2006')
Texas_Rock_2006_comm_count$sitename <- ('Texas Rock ')
Texas_Rock_2006_comm_count$Type <- "Commercial"


Texas_Rock_2006_total_count <- rbind(Texas_Rock_2006_herb_count, Texas_Rock_2006_comm_count)


Texas_Rock_2008 <- import("DT/Texas_Rock/data/Texas_Rock_2008.xls")


Texas_Rock_2008_herb <- merge(Texas_Rock_2008, Herb, by = c("SPECIES_CD"))
Texas_Rock_2008_herb_count <- count(Texas_Rock_2008_herb, vars = "SPECIES_CD")
Texas_Rock_2008_herb_count$Year <- ('2008')
Texas_Rock_2008_herb_count$sitename <- ('Texas Rock ')
Texas_Rock_2008_herb_count$Type <- "Herbivorous"

Texas_Rock_2008_comm <- merge(Texas_Rock_2008, Comm, by = c("SPECIES_CD"))
Texas_Rock_2008_comm_count <- count(Texas_Rock_2008_comm, vars = "SPECIES_CD")
Texas_Rock_2008_comm_count$Year <- ('2008')
Texas_Rock_2008_comm_count$sitename <- ('Texas Rock ')
Texas_Rock_2008_comm_count$Type <- "Commercial"


Texas_Rock_2008_total_count <- rbind(Texas_Rock_2008_herb_count, Texas_Rock_2008_comm_count)




Texas_Rock_2010 <- import("DT/Texas_Rock/data/Texas_Rock_2010.xls")


Texas_Rock_2010_herb <- merge(Texas_Rock_2010, Herb, by = c("SPECIES_CD"))
Texas_Rock_2010_herb_count <- count(Texas_Rock_2010_herb, vars = "SPECIES_CD")
Texas_Rock_2010_herb_count$Year <- ('2010')
Texas_Rock_2010_herb_count$sitename <- ('Texas Rock ')
Texas_Rock_2010_herb_count$Type <- "Herbivorous"

Texas_Rock_2010_comm <- merge(Texas_Rock_2010, Comm, by = c("SPECIES_CD"))
Texas_Rock_2010_comm_count <- count(Texas_Rock_2010_comm, vars = "SPECIES_CD")
Texas_Rock_2010_comm_count$Year <- ('2010')
Texas_Rock_2010_comm_count$sitename <- ('Texas Rock ')
Texas_Rock_2010_comm_count$Type <- "Commercial"


Texas_Rock_2010_total_count <- rbind(Texas_Rock_2010_herb_count, Texas_Rock_2010_comm_count)



Texas_Rock_2012 <- import("DT/Texas_Rock/data/Texas_Rock_2012.xls")


Texas_Rock_2012_herb <- merge(Texas_Rock_2012, Herb, by = c("SPECIES_CD"))
Texas_Rock_2012_herb_count <- count(Texas_Rock_2012_herb, vars = "SPECIES_CD")
Texas_Rock_2012_herb_count$Year <- ('2012')
Texas_Rock_2012_herb_count$sitename <- ('Texas Rock ')
Texas_Rock_2012_herb_count$Type <- "Herbivorous"

Texas_Rock_2012_comm <- merge(Texas_Rock_2012, Comm, by = c("SPECIES_CD"))
Texas_Rock_2012_comm_count <- count(Texas_Rock_2012_comm, vars = "SPECIES_CD")
Texas_Rock_2012_comm_count$Year <- ('2012')
Texas_Rock_2012_comm_count$sitename <- ('Texas Rock ')
Texas_Rock_2012_comm_count$Type <- "Commercial"


Texas_Rock_2012_total_count <- rbind(Texas_Rock_2012_herb_count, Texas_Rock_2012_comm_count)



Texas_Rock_2014 <- import("DT/Texas_Rock/data/Texas_Rock_2014.xls")


Texas_Rock_2014_herb <- merge(Texas_Rock_2014, Herb, by = c("SPECIES_CD"))
Texas_Rock_2014_herb_count <- count(Texas_Rock_2014_herb, vars = "SPECIES_CD")
Texas_Rock_2014_herb_count$Year <- ('2014')
Texas_Rock_2014_herb_count$sitename <- ('Texas Rock ')
Texas_Rock_2014_herb_count$Type <- "Herbivorous"

Texas_Rock_2014_comm <- merge(Texas_Rock_2014, Comm, by = c("SPECIES_CD"))
Texas_Rock_2014_comm_count <- count(Texas_Rock_2014_comm, vars = "SPECIES_CD")
Texas_Rock_2014_comm_count$Year <- ('2014')
Texas_Rock_2014_comm_count$sitename <- ('Texas Rock ')
Texas_Rock_2014_comm_count$Type <- "Commercial"


Texas_Rock_2014_total_count <- rbind(Texas_Rock_2014_herb_count, Texas_Rock_2014_comm_count)




Texas_Rock_2016 <- import("DT/Texas_Rock/data/Texas_Rock_2016.xls")


Texas_Rock_2016_herb <- merge(Texas_Rock_2016, Herb, by = c("SPECIES_CD"))
Texas_Rock_2016_herb_count <- count(Texas_Rock_2016_herb, vars = "SPECIES_CD")
Texas_Rock_2016_herb_count$Year <- ('2016')
Texas_Rock_2016_herb_count$sitename <- ('Texas Rock ')
Texas_Rock_2016_herb_count$Type <- "Herbivorous"

Texas_Rock_2016_comm <- merge(Texas_Rock_2016, Comm, by = c("SPECIES_CD"))
Texas_Rock_2016_comm_count <- count(Texas_Rock_2016_comm, vars = "SPECIES_CD")
Texas_Rock_2016_comm_count$Year <- ('2016')
Texas_Rock_2016_comm_count$sitename <- ('Texas Rock ')
Texas_Rock_2016_comm_count$Type <- "Commercial"


Texas_Rock_2016_total_count <- rbind(Texas_Rock_2016_herb_count, Texas_Rock_2016_comm_count)



Texas_Rock_all <- rbind(Texas_Rock_1999_total_count,Texas_Rock_2000_total_count,Texas_Rock_2004_total_count,Texas_Rock_2006_total_count,Texas_Rock_2008_total_count, Texas_Rock_2010_total_count, Texas_Rock_2012_total_count, Texas_Rock_2014_total_count, Texas_Rock_2016_total_count )


export(Texas_Rock_all, "DT/Texas_Rock/data/Texas_Rock_count_herb_comm.csv")




The_Maze_1999 <- import("DT/The_Maze/data/Maze_1999.xls")


The_Maze_1999_herb <- merge(The_Maze_1999, Herb, by = c("SPECIES_CD"))
The_Maze_1999_herb_count <- count(The_Maze_1999_herb, vars = "SPECIES_CD")
The_Maze_1999_herb_count$Year <- ('1999')
The_Maze_1999_herb_count$sitename <- ('Maze')
The_Maze_1999_herb_count$Type <- "Herbivorous"

The_Maze_1999_comm <- merge(The_Maze_1999, Comm, by = c("SPECIES_CD"))
The_Maze_1999_comm_count <- count(The_Maze_1999_comm, vars = "SPECIES_CD")
The_Maze_1999_comm_count$Year <- ('1999')
The_Maze_1999_comm_count$sitename <- ('Maze ')
The_Maze_1999_comm_count$Type <- "Commercial"


The_Maze_1999_total_count <- rbind(The_Maze_1999_herb_count, The_Maze_1999_comm_count)




The_Maze_2000 <- import("DT/The_Maze/data/Maze_2000.xls")


The_Maze_2000_herb <- merge(The_Maze_2000, Herb, by = c("SPECIES_CD"))
The_Maze_2000_herb_count <- count(The_Maze_2000_herb, vars = "SPECIES_CD")
The_Maze_2000_herb_count$Year <- ('2000')
The_Maze_2000_herb_count$sitename <- ('Maze ')
The_Maze_2000_herb_count$Type <- "Herbivorous"

The_Maze_2000_comm <- merge(The_Maze_2000, Comm, by = c("SPECIES_CD"))
The_Maze_2000_comm_count <- count(The_Maze_2000_comm, vars = "SPECIES_CD")
The_Maze_2000_comm_count$Year <- ('2000')
The_Maze_2000_comm_count$sitename <- ('Maze ')
The_Maze_2000_comm_count$Type <- "Commercial"


The_Maze_2000_total_count <- rbind(The_Maze_2000_herb_count, The_Maze_2000_comm_count)



The_Maze_2004 <- import("DT/The_Maze/data/Maze_2004.xls")


The_Maze_2004_herb <- merge(The_Maze_2004, Herb, by = c("SPECIES_CD"))
The_Maze_2004_herb_count <- count(The_Maze_2004_herb, vars = "SPECIES_CD")
The_Maze_2004_herb_count$Year <- ('2004')
The_Maze_2004_herb_count$sitename <- ('Maze ')
The_Maze_2004_herb_count$Type <- "Herbivorous"

The_Maze_2004_comm <- merge(The_Maze_2004, Comm, by = c("SPECIES_CD"))
The_Maze_2004_comm_count <- count(The_Maze_2004_comm, vars = "SPECIES_CD")
The_Maze_2004_comm_count$Year <- ('2004')
The_Maze_2004_comm_count$sitename <- ('Maze ')
The_Maze_2004_comm_count$Type <- "Commercial"


The_Maze_2004_total_count <- rbind(The_Maze_2004_herb_count, The_Maze_2004_comm_count)



The_Maze_2006 <- import("DT/The_Maze/data/Maze_2006.xls")


The_Maze_2006_herb <- merge(The_Maze_2006, Herb, by = c("SPECIES_CD"))
The_Maze_2006_herb_count <- count(The_Maze_2006_herb, vars = "SPECIES_CD")
The_Maze_2006_herb_count$Year <- ('2006')
The_Maze_2006_herb_count$sitename <- ('Maze ')
The_Maze_2006_herb_count$Type <- "Herbivorous"

The_Maze_2006_comm <- merge(The_Maze_2006, Comm, by = c("SPECIES_CD"))
The_Maze_2006_comm_count <- count(The_Maze_2006_comm, vars = "SPECIES_CD")
The_Maze_2006_comm_count$Year <- ('2006')
The_Maze_2006_comm_count$sitename <- ('Maze ')
The_Maze_2006_comm_count$Type <- "Commercial"


The_Maze_2006_total_count <- rbind(The_Maze_2006_herb_count, The_Maze_2006_comm_count)


The_Maze_2008 <- import("DT/The_Maze/data/Maze_2008.xls")


The_Maze_2008_herb <- merge(The_Maze_2008, Herb, by = c("SPECIES_CD"))
The_Maze_2008_herb_count <- count(The_Maze_2008_herb, vars = "SPECIES_CD")
The_Maze_2008_herb_count$Year <- ('2008')
The_Maze_2008_herb_count$sitename <- ('Maze ')
The_Maze_2008_herb_count$Type <- "Herbivorous"

The_Maze_2008_comm <- merge(The_Maze_2008, Comm, by = c("SPECIES_CD"))
The_Maze_2008_comm_count <- count(The_Maze_2008_comm, vars = "SPECIES_CD")
The_Maze_2008_comm_count$Year <- ('2008')
The_Maze_2008_comm_count$sitename <- ('Maze ')
The_Maze_2008_comm_count$Type <- "Commercial"


The_Maze_2008_total_count <- rbind(The_Maze_2008_herb_count, The_Maze_2008_comm_count)




The_Maze_2010 <- import("DT/The_Maze/data/Maze_2010.xls")


The_Maze_2010_herb <- merge(The_Maze_2010, Herb, by = c("SPECIES_CD"))
The_Maze_2010_herb_count <- count(The_Maze_2010_herb, vars = "SPECIES_CD")
The_Maze_2010_herb_count$Year <- ('2010')
The_Maze_2010_herb_count$sitename <- ('Maze ')
The_Maze_2010_herb_count$Type <- "Herbivorous"

The_Maze_2010_comm <- merge(The_Maze_2010, Comm, by = c("SPECIES_CD"))
The_Maze_2010_comm_count <- count(The_Maze_2010_comm, vars = "SPECIES_CD")
The_Maze_2010_comm_count$Year <- ('2010')
The_Maze_2010_comm_count$sitename <- ('Maze ')
The_Maze_2010_comm_count$Type <- "Commercial"


The_Maze_2010_total_count <- rbind(The_Maze_2010_herb_count, The_Maze_2010_comm_count)



The_Maze_2012 <- import("DT/The_Maze/data/Maze_2012.xls")


The_Maze_2012_herb <- merge(The_Maze_2012, Herb, by = c("SPECIES_CD"))
The_Maze_2012_herb_count <- count(The_Maze_2012_herb, vars = "SPECIES_CD")
The_Maze_2012_herb_count$Year <- ('2012')
The_Maze_2012_herb_count$sitename <- ('Maze ')
The_Maze_2012_herb_count$Type <- "Herbivorous"

The_Maze_2012_comm <- merge(The_Maze_2012, Comm, by = c("SPECIES_CD"))
The_Maze_2012_comm_count <- count(The_Maze_2012_comm, vars = "SPECIES_CD")
The_Maze_2012_comm_count$Year <- ('2012')
The_Maze_2012_comm_count$sitename <- ('Maze ')
The_Maze_2012_comm_count$Type <- "Commercial"


The_Maze_2012_total_count <- rbind(The_Maze_2012_herb_count, The_Maze_2012_comm_count)



The_Maze_2014 <- import("DT/The_Maze/data/Maze_2014.xls")


The_Maze_2014_herb <- merge(The_Maze_2014, Herb, by = c("SPECIES_CD"))
The_Maze_2014_herb_count <- count(The_Maze_2014_herb, vars = "SPECIES_CD")
The_Maze_2014_herb_count$Year <- ('2014')
The_Maze_2014_herb_count$sitename <- ('Maze ')
The_Maze_2014_herb_count$Type <- "Herbivorous"

The_Maze_2014_comm <- merge(The_Maze_2014, Comm, by = c("SPECIES_CD"))
The_Maze_2014_comm_count <- count(The_Maze_2014_comm, vars = "SPECIES_CD")
The_Maze_2014_comm_count$Year <- ('2014')
The_Maze_2014_comm_count$sitename <- ('Maze ')
The_Maze_2014_comm_count$Type <- "Commercial"


The_Maze_2014_total_count <- rbind(The_Maze_2014_herb_count, The_Maze_2014_comm_count)




The_Maze_2016 <- import("DT/The_Maze/data/Maze_2016.xls")


The_Maze_2016_herb <- merge(The_Maze_2016, Herb, by = c("SPECIES_CD"))
The_Maze_2016_herb_count <- count(The_Maze_2016_herb, vars = "SPECIES_CD")
The_Maze_2016_herb_count$Year <- ('2016')
The_Maze_2016_herb_count$sitename <- ('Maze ')
The_Maze_2016_herb_count$Type <- "Herbivorous"

The_Maze_2016_comm <- merge(The_Maze_2016, Comm, by = c("SPECIES_CD"))
The_Maze_2016_comm_count <- count(The_Maze_2016_comm, vars = "SPECIES_CD")
The_Maze_2016_comm_count$Year <- ('2016')
The_Maze_2016_comm_count$sitename <- ('Maze ')
The_Maze_2016_comm_count$Type <- "Commercial"


The_Maze_2016_total_count <- rbind(The_Maze_2016_herb_count, The_Maze_2016_comm_count)



The_Maze_all <- rbind(The_Maze_1999_total_count,The_Maze_2000_total_count,The_Maze_2004_total_count,The_Maze_2006_total_count,The_Maze_2008_total_count, The_Maze_2010_total_count, The_Maze_2012_total_count, The_Maze_2014_total_count, The_Maze_2016_total_count )


export(The_Maze_all, "DT/The_Maze/data/Maze_count_herb_comm.csv")




White_Shoal_1999 <- import("DT/White_Shoal/data/White_Shoal_1999.xls")


White_Shoal_1999_herb <- merge(White_Shoal_1999, Herb, by = c("SPECIES_CD"))
White_Shoal_1999_herb_count <- count(White_Shoal_1999_herb, vars = "SPECIES_CD")
White_Shoal_1999_herb_count$Year <- ('1999')
White_Shoal_1999_herb_count$sitename <- ('White_Shoal')
White_Shoal_1999_herb_count$Type <- "Herbivorous"

White_Shoal_1999_comm <- merge(White_Shoal_1999, Comm, by = c("SPECIES_CD"))
White_Shoal_1999_comm_count <- count(White_Shoal_1999_comm, vars = "SPECIES_CD")
White_Shoal_1999_comm_count$Year <- ('1999')
White_Shoal_1999_comm_count$sitename <- ('White Shoal')
White_Shoal_1999_comm_count$Type <- "Commercial"


White_Shoal_1999_total_count <- rbind(White_Shoal_1999_herb_count, White_Shoal_1999_comm_count)




White_Shoal_2000 <- import("DT/White_Shoal/data/White_Shoal_2000.xls")


White_Shoal_2000_herb <- merge(White_Shoal_2000, Herb, by = c("SPECIES_CD"))
White_Shoal_2000_herb_count <- count(White_Shoal_2000_herb, vars = "SPECIES_CD")
White_Shoal_2000_herb_count$Year <- ('2000')
White_Shoal_2000_herb_count$sitename <- ('White Shoal')
White_Shoal_2000_herb_count$Type <- "Herbivorous"

White_Shoal_2000_comm <- merge(White_Shoal_2000, Comm, by = c("SPECIES_CD"))
White_Shoal_2000_comm_count <- count(White_Shoal_2000_comm, vars = "SPECIES_CD")
White_Shoal_2000_comm_count$Year <- ('2000')
White_Shoal_2000_comm_count$sitename <- ('White Shoal')
White_Shoal_2000_comm_count$Type <- "Commercial"


White_Shoal_2000_total_count <- rbind(White_Shoal_2000_herb_count, White_Shoal_2000_comm_count)



White_Shoal_2004 <- import("DT/White_Shoal/data/White_Shoal_2004.xls")


White_Shoal_2004_herb <- merge(White_Shoal_2004, Herb, by = c("SPECIES_CD"))
White_Shoal_2004_herb_count <- count(White_Shoal_2004_herb, vars = "SPECIES_CD")
White_Shoal_2004_herb_count$Year <- ('2004')
White_Shoal_2004_herb_count$sitename <- ('White Shoal')
White_Shoal_2004_herb_count$Type <- "Herbivorous"

White_Shoal_2004_comm <- merge(White_Shoal_2004, Comm, by = c("SPECIES_CD"))
White_Shoal_2004_comm_count <- count(White_Shoal_2004_comm, vars = "SPECIES_CD")
White_Shoal_2004_comm_count$Year <- ('2004')
White_Shoal_2004_comm_count$sitename <- ('White Shoal')
White_Shoal_2004_comm_count$Type <- "Commercial"


White_Shoal_2004_total_count <- rbind(White_Shoal_2004_herb_count, White_Shoal_2004_comm_count)



White_Shoal_2006 <- import("DT/White_Shoal/data/White_Shoal_2006.xls")


White_Shoal_2006_herb <- merge(White_Shoal_2006, Herb, by = c("SPECIES_CD"))
White_Shoal_2006_herb_count <- count(White_Shoal_2006_herb, vars = "SPECIES_CD")
White_Shoal_2006_herb_count$Year <- ('2006')
White_Shoal_2006_herb_count$sitename <- ('White Shoal')
White_Shoal_2006_herb_count$Type <- "Herbivorous"

White_Shoal_2006_comm <- merge(White_Shoal_2006, Comm, by = c("SPECIES_CD"))
White_Shoal_2006_comm_count <- count(White_Shoal_2006_comm, vars = "SPECIES_CD")
White_Shoal_2006_comm_count$Year <- ('2006')
White_Shoal_2006_comm_count$sitename <- ('White Shoal')
White_Shoal_2006_comm_count$Type <- "Commercial"


White_Shoal_2006_total_count <- rbind(White_Shoal_2006_herb_count, White_Shoal_2006_comm_count)


White_Shoal_2008 <- import("DT/White_Shoal/data/White_Shoal_2008.xls")


White_Shoal_2008_herb <- merge(White_Shoal_2008, Herb, by = c("SPECIES_CD"))
White_Shoal_2008_herb_count <- count(White_Shoal_2008_herb, vars = "SPECIES_CD")
White_Shoal_2008_herb_count$Year <- ('2008')
White_Shoal_2008_herb_count$sitename <- ('White Shoal')
White_Shoal_2008_herb_count$Type <- "Herbivorous"

White_Shoal_2008_comm <- merge(White_Shoal_2008, Comm, by = c("SPECIES_CD"))
White_Shoal_2008_comm_count <- count(White_Shoal_2008_comm, vars = "SPECIES_CD")
White_Shoal_2008_comm_count$Year <- ('2008')
White_Shoal_2008_comm_count$sitename <- ('White Shoal')
White_Shoal_2008_comm_count$Type <- "Commercial"


White_Shoal_2008_total_count <- rbind(White_Shoal_2008_herb_count, White_Shoal_2008_comm_count)




White_Shoal_2010 <- import("DT/White_Shoal/data/White_Shoal_2010.xls")


White_Shoal_2010_herb <- merge(White_Shoal_2010, Herb, by = c("SPECIES_CD"))
White_Shoal_2010_herb_count <- count(White_Shoal_2010_herb, vars = "SPECIES_CD")
White_Shoal_2010_herb_count$Year <- ('2010')
White_Shoal_2010_herb_count$sitename <- ('White Shoal')
White_Shoal_2010_herb_count$Type <- "Herbivorous"

White_Shoal_2010_comm <- merge(White_Shoal_2010, Comm, by = c("SPECIES_CD"))
White_Shoal_2010_comm_count <- count(White_Shoal_2010_comm, vars = "SPECIES_CD")
White_Shoal_2010_comm_count$Year <- ('2010')
White_Shoal_2010_comm_count$sitename <- ('White Shoal')
White_Shoal_2010_comm_count$Type <- "Commercial"


White_Shoal_2010_total_count <- rbind(White_Shoal_2010_herb_count, White_Shoal_2010_comm_count)



White_Shoal_2012 <- import("DT/White_Shoal/data/White_Shoal_2012.xls")


White_Shoal_2012_herb <- merge(White_Shoal_2012, Herb, by = c("SPECIES_CD"))
White_Shoal_2012_herb_count <- count(White_Shoal_2012_herb, vars = "SPECIES_CD")
White_Shoal_2012_herb_count$Year <- ('2012')
White_Shoal_2012_herb_count$sitename <- ('White Shoal')
White_Shoal_2012_herb_count$Type <- "Herbivorous"

White_Shoal_2012_comm <- merge(White_Shoal_2012, Comm, by = c("SPECIES_CD"))
White_Shoal_2012_comm_count <- count(White_Shoal_2012_comm, vars = "SPECIES_CD")
White_Shoal_2012_comm_count$Year <- ('2012')
White_Shoal_2012_comm_count$sitename <- ('White Shoal')
White_Shoal_2012_comm_count$Type <- "Commercial"


White_Shoal_2012_total_count <- rbind(White_Shoal_2012_herb_count, White_Shoal_2012_comm_count)



White_Shoal_2014 <- import("DT/White_Shoal/data/White_Shoal_2014.xls")


White_Shoal_2014_herb <- merge(White_Shoal_2014, Herb, by = c("SPECIES_CD"))
White_Shoal_2014_herb_count <- count(White_Shoal_2014_herb, vars = "SPECIES_CD")
White_Shoal_2014_herb_count$Year <- ('2014')
White_Shoal_2014_herb_count$sitename <- ('White Shoal')
White_Shoal_2014_herb_count$Type <- "Herbivorous"

White_Shoal_2014_comm <- merge(White_Shoal_2014, Comm, by = c("SPECIES_CD"))
White_Shoal_2014_comm_count <- count(White_Shoal_2014_comm, vars = "SPECIES_CD")
White_Shoal_2014_comm_count$Year <- ('2014')
White_Shoal_2014_comm_count$sitename <- ('White Shoal')
White_Shoal_2014_comm_count$Type <- "Commercial"


White_Shoal_2014_total_count <- rbind(White_Shoal_2014_herb_count, White_Shoal_2014_comm_count)




White_Shoal_2016 <- import("DT/White_Shoal/data/White_Shoal_2016.xls")


White_Shoal_2016_herb <- merge(White_Shoal_2016, Herb, by = c("SPECIES_CD"))
White_Shoal_2016_herb_count <- count(White_Shoal_2016_herb, vars = "SPECIES_CD")
White_Shoal_2016_herb_count$Year <- ('2016')
White_Shoal_2016_herb_count$sitename <- ('White Shoal')
White_Shoal_2016_herb_count$Type <- "Herbivorous"

White_Shoal_2016_comm <- merge(White_Shoal_2016, Comm, by = c("SPECIES_CD"))
White_Shoal_2016_comm_count <- count(White_Shoal_2016_comm, vars = "SPECIES_CD")
White_Shoal_2016_comm_count$Year <- ('2016')
White_Shoal_2016_comm_count$sitename <- ('White Shoal')
White_Shoal_2016_comm_count$Type <- "Commercial"


White_Shoal_2016_total_count <- rbind(White_Shoal_2016_herb_count, White_Shoal_2016_comm_count)



White_Shoal_all <- rbind(White_Shoal_1999_total_count,White_Shoal_2000_total_count,White_Shoal_2004_total_count,White_Shoal_2006_total_count,White_Shoal_2008_total_count, White_Shoal_2010_total_count, White_Shoal_2012_total_count, White_Shoal_2014_total_count, White_Shoal_2016_total_count )


export(White_Shoal_all, "DT/White_Shoal/data/White_Shoal_count_herb_comm.csv")



### Combine all DT


DT_reef_count_combined <- rbind(Bird_Key_all,Black_Coral_Rock_all, Davis_Rock_all, Loggerhead_Patch_all, Mayers_Peak_all, Palmata_Patch_all,Prolifera_Patch_all, The_Maze_all, Temptation_Rock_all, Texas_Rock_all, White_Shoal_all)
DT_reef_count_combined$REGION <- ("DT")
export(DT_reef_count_combined, "DT/DT_fish_count.csv")











### Lower Keys



Eastern_Sambo_Deep_1999 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_1999.xls")


Eastern_Sambo_Deep_1999_herb <- merge(Eastern_Sambo_Deep_1999, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_1999_herb_count <- count(Eastern_Sambo_Deep_1999_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_1999_herb_count$Year <- ('1999')
Eastern_Sambo_Deep_1999_herb_count$sitename <- ('Eastern_Sambo_Deep')
Eastern_Sambo_Deep_1999_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_1999_comm <- merge(Eastern_Sambo_Deep_1999, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_1999_comm_count <- count(Eastern_Sambo_Deep_1999_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_1999_comm_count$Year <- ('1999')
Eastern_Sambo_Deep_1999_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_1999_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_1999_total_count <- rbind(Eastern_Sambo_Deep_1999_herb_count, Eastern_Sambo_Deep_1999_comm_count)




Eastern_Sambo_Deep_2000 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2000.xls")


Eastern_Sambo_Deep_2000_herb <- merge(Eastern_Sambo_Deep_2000, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2000_herb_count <- count(Eastern_Sambo_Deep_2000_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2000_herb_count$Year <- ('2000')
Eastern_Sambo_Deep_2000_herb_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2000_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_2000_comm <- merge(Eastern_Sambo_Deep_2000, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2000_comm_count <- count(Eastern_Sambo_Deep_2000_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2000_comm_count$Year <- ('2000')
Eastern_Sambo_Deep_2000_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2000_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_2000_total_count <- rbind(Eastern_Sambo_Deep_2000_herb_count, Eastern_Sambo_Deep_2000_comm_count)


Eastern_Sambo_Deep_2001 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2001.xls")


Eastern_Sambo_Deep_2001_herb <- merge(Eastern_Sambo_Deep_2001, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2001_herb_count <- count(Eastern_Sambo_Deep_2001_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2001_herb_count$Year <- ('2001')
Eastern_Sambo_Deep_2001_herb_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2001_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_2001_comm <- merge(Eastern_Sambo_Deep_2001, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2001_comm_count <- count(Eastern_Sambo_Deep_2001_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2001_comm_count$Year <- ('2001')
Eastern_Sambo_Deep_2001_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2001_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_2001_total_count <- rbind(Eastern_Sambo_Deep_2001_herb_count, Eastern_Sambo_Deep_2001_comm_count)


Eastern_Sambo_Deep_2002 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2002.xls")


Eastern_Sambo_Deep_2002_herb <- merge(Eastern_Sambo_Deep_2002, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2002_herb_count <- count(Eastern_Sambo_Deep_2002_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2002_herb_count$Year <- ('2002')
Eastern_Sambo_Deep_2002_herb_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2002_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_2002_comm <- merge(Eastern_Sambo_Deep_2002, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2002_comm_count <- count(Eastern_Sambo_Deep_2002_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2002_comm_count$Year <- ('2002')
Eastern_Sambo_Deep_2002_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2002_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_2002_total_count <- rbind(Eastern_Sambo_Deep_2002_herb_count, Eastern_Sambo_Deep_2002_comm_count)



Eastern_Sambo_Deep_2003 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2003.xls")


Eastern_Sambo_Deep_2003_herb <- merge(Eastern_Sambo_Deep_2003, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2003_herb_count <- count(Eastern_Sambo_Deep_2003_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2003_herb_count$Year <- ('2003')
Eastern_Sambo_Deep_2003_herb_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2003_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_2003_comm <- merge(Eastern_Sambo_Deep_2003, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2003_comm_count <- count(Eastern_Sambo_Deep_2003_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2003_comm_count$Year <- ('2003')
Eastern_Sambo_Deep_2003_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2003_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_2003_total_count <- rbind(Eastern_Sambo_Deep_2003_herb_count, Eastern_Sambo_Deep_2003_comm_count)




Eastern_Sambo_Deep_2004 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2004.xls")


Eastern_Sambo_Deep_2004_herb <- merge(Eastern_Sambo_Deep_2004, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2004_herb_count <- count(Eastern_Sambo_Deep_2004_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2004_herb_count$Year <- ('2004')
Eastern_Sambo_Deep_2004_herb_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2004_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_2004_comm <- merge(Eastern_Sambo_Deep_2004, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2004_comm_count <- count(Eastern_Sambo_Deep_2004_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2004_comm_count$Year <- ('2004')
Eastern_Sambo_Deep_2004_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2004_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_2004_total_count <- rbind(Eastern_Sambo_Deep_2004_herb_count, Eastern_Sambo_Deep_2004_comm_count)


Eastern_Sambo_Deep_2005 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2005.xls")


Eastern_Sambo_Deep_2005_herb <- merge(Eastern_Sambo_Deep_2005, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2005_herb_count <- count(Eastern_Sambo_Deep_2005_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2005_herb_count$Year <- ('2005')
Eastern_Sambo_Deep_2005_herb_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2005_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_2005_comm <- merge(Eastern_Sambo_Deep_2005, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2005_comm_count <- count(Eastern_Sambo_Deep_2005_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2005_comm_count$Year <- ('2005')
Eastern_Sambo_Deep_2005_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2005_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_2005_total_count <- rbind(Eastern_Sambo_Deep_2005_herb_count, Eastern_Sambo_Deep_2005_comm_count)




Eastern_Sambo_Deep_2006 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2006.xls")


Eastern_Sambo_Deep_2006_herb <- merge(Eastern_Sambo_Deep_2006, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2006_herb_count <- count(Eastern_Sambo_Deep_2006_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2006_herb_count$Year <- ('2006')
Eastern_Sambo_Deep_2006_herb_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2006_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_2006_comm <- merge(Eastern_Sambo_Deep_2006, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2006_comm_count <- count(Eastern_Sambo_Deep_2006_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2006_comm_count$Year <- ('2006')
Eastern_Sambo_Deep_2006_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2006_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_2006_total_count <- rbind(Eastern_Sambo_Deep_2006_herb_count, Eastern_Sambo_Deep_2006_comm_count)



Eastern_Sambo_Deep_2007 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2007.xls")


Eastern_Sambo_Deep_2007_herb <- merge(Eastern_Sambo_Deep_2007, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2007_herb_count <- count(Eastern_Sambo_Deep_2007_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2007_herb_count$Year <- ('2007')
Eastern_Sambo_Deep_2007_herb_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2007_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_2007_comm <- merge(Eastern_Sambo_Deep_2007, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2007_comm_count <- count(Eastern_Sambo_Deep_2007_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2007_comm_count$Year <- ('2007')
Eastern_Sambo_Deep_2007_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2007_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_2007_total_count <- rbind(Eastern_Sambo_Deep_2007_herb_count, Eastern_Sambo_Deep_2007_comm_count)




Eastern_Sambo_Deep_2008 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2008.xls")


Eastern_Sambo_Deep_2008_herb <- merge(Eastern_Sambo_Deep_2008, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2008_herb_count <- count(Eastern_Sambo_Deep_2008_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2008_herb_count$Year <- ('2008')
Eastern_Sambo_Deep_2008_herb_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2008_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_2008_comm <- merge(Eastern_Sambo_Deep_2008, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2008_comm_count <- count(Eastern_Sambo_Deep_2008_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2008_comm_count$Year <- ('2008')
Eastern_Sambo_Deep_2008_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2008_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_2008_total_count <- rbind(Eastern_Sambo_Deep_2008_herb_count, Eastern_Sambo_Deep_2008_comm_count)



Eastern_Sambo_Deep_2009 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2009.xls")


Eastern_Sambo_Deep_2009_herb <- merge(Eastern_Sambo_Deep_2009, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2009_herb_count <- count(Eastern_Sambo_Deep_2009_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2009_herb_count$Year <- ('2009')
Eastern_Sambo_Deep_2009_herb_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2009_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_2009_comm <- merge(Eastern_Sambo_Deep_2009, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2009_comm_count <- count(Eastern_Sambo_Deep_2009_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2009_comm_count$Year <- ('2009')
Eastern_Sambo_Deep_2009_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2009_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_2009_total_count <- rbind(Eastern_Sambo_Deep_2009_herb_count, Eastern_Sambo_Deep_2009_comm_count)





Eastern_Sambo_Deep_2010 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2010.xls")


Eastern_Sambo_Deep_2010_herb <- merge(Eastern_Sambo_Deep_2010, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2010_herb_count <- count(Eastern_Sambo_Deep_2010_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2010_herb_count$Year <- ('2010')
Eastern_Sambo_Deep_2010_herb_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2010_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_2010_comm <- merge(Eastern_Sambo_Deep_2010, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2010_comm_count <- count(Eastern_Sambo_Deep_2010_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2010_comm_count$Year <- ('2010')
Eastern_Sambo_Deep_2010_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2010_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_2010_total_count <- rbind(Eastern_Sambo_Deep_2010_herb_count, Eastern_Sambo_Deep_2010_comm_count)


Eastern_Sambo_Deep_2011 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2011.xls")


Eastern_Sambo_Deep_2011_herb <- merge(Eastern_Sambo_Deep_2011, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2011_herb_count <- count(Eastern_Sambo_Deep_2011_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2011_herb_count$Year <- ('2011')
Eastern_Sambo_Deep_2011_herb_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2011_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_2011_comm <- merge(Eastern_Sambo_Deep_2011, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2011_comm_count <- count(Eastern_Sambo_Deep_2011_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2011_comm_count$Year <- ('2011')
Eastern_Sambo_Deep_2011_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2011_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_2011_total_count <- rbind(Eastern_Sambo_Deep_2011_herb_count, Eastern_Sambo_Deep_2011_comm_count)





Eastern_Sambo_Deep_2012 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2012.xls")


Eastern_Sambo_Deep_2012_herb <- merge(Eastern_Sambo_Deep_2012, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2012_herb_count <- count(Eastern_Sambo_Deep_2012_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2012_herb_count$Year <- ('2012')
Eastern_Sambo_Deep_2012_herb_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2012_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_2012_comm <- merge(Eastern_Sambo_Deep_2012, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2012_comm_count <- count(Eastern_Sambo_Deep_2012_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2012_comm_count$Year <- ('2012')
Eastern_Sambo_Deep_2012_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2012_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_2012_total_count <- rbind(Eastern_Sambo_Deep_2012_herb_count, Eastern_Sambo_Deep_2012_comm_count)



Eastern_Sambo_Deep_2014 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2014.xls")


Eastern_Sambo_Deep_2014_herb <- merge(Eastern_Sambo_Deep_2014, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2014_herb_count <- count(Eastern_Sambo_Deep_2014_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2014_herb_count$Year <- ('2014')
Eastern_Sambo_Deep_2014_herb_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2014_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_2014_comm <- merge(Eastern_Sambo_Deep_2014, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2014_comm_count <- count(Eastern_Sambo_Deep_2014_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2014_comm_count$Year <- ('2014')
Eastern_Sambo_Deep_2014_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2014_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_2014_total_count <- rbind(Eastern_Sambo_Deep_2014_herb_count, Eastern_Sambo_Deep_2014_comm_count)




Eastern_Sambo_Deep_2016 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2016.xls")


Eastern_Sambo_Deep_2016_herb <- merge(Eastern_Sambo_Deep_2016, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2016_herb_count <- count(Eastern_Sambo_Deep_2016_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2016_herb_count$Year <- ('2016')
Eastern_Sambo_Deep_2016_herb_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2016_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_2016_comm <- merge(Eastern_Sambo_Deep_2016, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2016_comm_count <- count(Eastern_Sambo_Deep_2016_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2016_comm_count$Year <- ('2016')
Eastern_Sambo_Deep_2016_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2016_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_2016_total_count <- rbind(Eastern_Sambo_Deep_2016_herb_count, Eastern_Sambo_Deep_2016_comm_count)



Eastern_Sambo_Deep_2018 <- import("LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_2018.xls")


Eastern_Sambo_Deep_2018_herb <- merge(Eastern_Sambo_Deep_2018, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2018_herb_count <- count(Eastern_Sambo_Deep_2018_herb, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2018_herb_count$Year <- ('2018')
Eastern_Sambo_Deep_2018_herb_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2018_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Deep_2018_comm <- merge(Eastern_Sambo_Deep_2018, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Deep_2018_comm_count <- count(Eastern_Sambo_Deep_2018_comm, vars = "SPECIES_CD")
Eastern_Sambo_Deep_2018_comm_count$Year <- ('2018')
Eastern_Sambo_Deep_2018_comm_count$sitename <- ('Eastern Sambo Deep')
Eastern_Sambo_Deep_2018_comm_count$Type <- "Commercial"


Eastern_Sambo_Deep_2018_total_count <- rbind(Eastern_Sambo_Deep_2018_herb_count, Eastern_Sambo_Deep_2018_comm_count)





Eastern_Sambo_Deep_all <- rbind(Eastern_Sambo_Deep_1999_total_count,Eastern_Sambo_Deep_2000_total_count,Eastern_Sambo_Deep_2001_total_count,Eastern_Sambo_Deep_2002_total_count,Eastern_Sambo_Deep_2003_total_count,Eastern_Sambo_Deep_2004_total_count,Eastern_Sambo_Deep_2005_total_count,Eastern_Sambo_Deep_2006_total_count,Eastern_Sambo_Deep_2007_total_count,Eastern_Sambo_Deep_2008_total_count,Eastern_Sambo_Deep_2009_total_count, Eastern_Sambo_Deep_2010_total_count,Eastern_Sambo_Deep_2011_total_count, Eastern_Sambo_Deep_2012_total_count, Eastern_Sambo_Deep_2014_total_count, Eastern_Sambo_Deep_2016_total_count,Eastern_Sambo_Deep_2018_total_count)


export(Eastern_Sambo_Deep_all, "LK/Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_count_herb_comm.csv")







Eastern_Sambo_Shallow_1999 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_1999.xls")


Eastern_Sambo_Shallow_1999_herb <- merge(Eastern_Sambo_Shallow_1999, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_1999_herb_count <- count(Eastern_Sambo_Shallow_1999_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_1999_herb_count$Year <- ('1999')
Eastern_Sambo_Shallow_1999_herb_count$sitename <- ('Eastern_Sambo_Shallow')
Eastern_Sambo_Shallow_1999_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_1999_comm <- merge(Eastern_Sambo_Shallow_1999, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_1999_comm_count <- count(Eastern_Sambo_Shallow_1999_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_1999_comm_count$Year <- ('1999')
Eastern_Sambo_Shallow_1999_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_1999_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_1999_total_count <- rbind(Eastern_Sambo_Shallow_1999_herb_count, Eastern_Sambo_Shallow_1999_comm_count)




Eastern_Sambo_Shallow_2000 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2000.xls")


Eastern_Sambo_Shallow_2000_herb <- merge(Eastern_Sambo_Shallow_2000, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2000_herb_count <- count(Eastern_Sambo_Shallow_2000_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2000_herb_count$Year <- ('2000')
Eastern_Sambo_Shallow_2000_herb_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2000_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_2000_comm <- merge(Eastern_Sambo_Shallow_2000, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2000_comm_count <- count(Eastern_Sambo_Shallow_2000_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2000_comm_count$Year <- ('2000')
Eastern_Sambo_Shallow_2000_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2000_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_2000_total_count <- rbind(Eastern_Sambo_Shallow_2000_herb_count, Eastern_Sambo_Shallow_2000_comm_count)


Eastern_Sambo_Shallow_2001 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2001.xls")


Eastern_Sambo_Shallow_2001_herb <- merge(Eastern_Sambo_Shallow_2001, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2001_herb_count <- count(Eastern_Sambo_Shallow_2001_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2001_herb_count$Year <- ('2001')
Eastern_Sambo_Shallow_2001_herb_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2001_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_2001_comm <- merge(Eastern_Sambo_Shallow_2001, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2001_comm_count <- count(Eastern_Sambo_Shallow_2001_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2001_comm_count$Year <- ('2001')
Eastern_Sambo_Shallow_2001_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2001_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_2001_total_count <- rbind(Eastern_Sambo_Shallow_2001_herb_count, Eastern_Sambo_Shallow_2001_comm_count)


Eastern_Sambo_Shallow_2002 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2002.xls")


Eastern_Sambo_Shallow_2002_herb <- merge(Eastern_Sambo_Shallow_2002, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2002_herb_count <- count(Eastern_Sambo_Shallow_2002_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2002_herb_count$Year <- ('2002')
Eastern_Sambo_Shallow_2002_herb_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2002_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_2002_comm <- merge(Eastern_Sambo_Shallow_2002, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2002_comm_count <- count(Eastern_Sambo_Shallow_2002_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2002_comm_count$Year <- ('2002')
Eastern_Sambo_Shallow_2002_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2002_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_2002_total_count <- rbind(Eastern_Sambo_Shallow_2002_herb_count, Eastern_Sambo_Shallow_2002_comm_count)



Eastern_Sambo_Shallow_2003 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2003.xls")


Eastern_Sambo_Shallow_2003_herb <- merge(Eastern_Sambo_Shallow_2003, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2003_herb_count <- count(Eastern_Sambo_Shallow_2003_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2003_herb_count$Year <- ('2003')
Eastern_Sambo_Shallow_2003_herb_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2003_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_2003_comm <- merge(Eastern_Sambo_Shallow_2003, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2003_comm_count <- count(Eastern_Sambo_Shallow_2003_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2003_comm_count$Year <- ('2003')
Eastern_Sambo_Shallow_2003_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2003_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_2003_total_count <- rbind(Eastern_Sambo_Shallow_2003_herb_count, Eastern_Sambo_Shallow_2003_comm_count)




Eastern_Sambo_Shallow_2004 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2004.xls")


Eastern_Sambo_Shallow_2004_herb <- merge(Eastern_Sambo_Shallow_2004, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2004_herb_count <- count(Eastern_Sambo_Shallow_2004_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2004_herb_count$Year <- ('2004')
Eastern_Sambo_Shallow_2004_herb_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2004_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_2004_comm <- merge(Eastern_Sambo_Shallow_2004, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2004_comm_count <- count(Eastern_Sambo_Shallow_2004_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2004_comm_count$Year <- ('2004')
Eastern_Sambo_Shallow_2004_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2004_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_2004_total_count <- rbind(Eastern_Sambo_Shallow_2004_herb_count, Eastern_Sambo_Shallow_2004_comm_count)


Eastern_Sambo_Shallow_2005 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2005.xls")


Eastern_Sambo_Shallow_2005_herb <- merge(Eastern_Sambo_Shallow_2005, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2005_herb_count <- count(Eastern_Sambo_Shallow_2005_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2005_herb_count$Year <- ('2005')
Eastern_Sambo_Shallow_2005_herb_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2005_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_2005_comm <- merge(Eastern_Sambo_Shallow_2005, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2005_comm_count <- count(Eastern_Sambo_Shallow_2005_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2005_comm_count$Year <- ('2005')
Eastern_Sambo_Shallow_2005_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2005_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_2005_total_count <- rbind(Eastern_Sambo_Shallow_2005_herb_count, Eastern_Sambo_Shallow_2005_comm_count)




Eastern_Sambo_Shallow_2006 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2006.xls")


Eastern_Sambo_Shallow_2006_herb <- merge(Eastern_Sambo_Shallow_2006, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2006_herb_count <- count(Eastern_Sambo_Shallow_2006_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2006_herb_count$Year <- ('2006')
Eastern_Sambo_Shallow_2006_herb_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2006_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_2006_comm <- merge(Eastern_Sambo_Shallow_2006, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2006_comm_count <- count(Eastern_Sambo_Shallow_2006_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2006_comm_count$Year <- ('2006')
Eastern_Sambo_Shallow_2006_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2006_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_2006_total_count <- rbind(Eastern_Sambo_Shallow_2006_herb_count, Eastern_Sambo_Shallow_2006_comm_count)



Eastern_Sambo_Shallow_2007 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2007.xls")


Eastern_Sambo_Shallow_2007_herb <- merge(Eastern_Sambo_Shallow_2007, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2007_herb_count <- count(Eastern_Sambo_Shallow_2007_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2007_herb_count$Year <- ('2007')
Eastern_Sambo_Shallow_2007_herb_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2007_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_2007_comm <- merge(Eastern_Sambo_Shallow_2007, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2007_comm_count <- count(Eastern_Sambo_Shallow_2007_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2007_comm_count$Year <- ('2007')
Eastern_Sambo_Shallow_2007_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2007_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_2007_total_count <- rbind(Eastern_Sambo_Shallow_2007_herb_count, Eastern_Sambo_Shallow_2007_comm_count)




Eastern_Sambo_Shallow_2008 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2008.xls")


Eastern_Sambo_Shallow_2008_herb <- merge(Eastern_Sambo_Shallow_2008, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2008_herb_count <- count(Eastern_Sambo_Shallow_2008_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2008_herb_count$Year <- ('2008')
Eastern_Sambo_Shallow_2008_herb_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2008_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_2008_comm <- merge(Eastern_Sambo_Shallow_2008, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2008_comm_count <- count(Eastern_Sambo_Shallow_2008_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2008_comm_count$Year <- ('2008')
Eastern_Sambo_Shallow_2008_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2008_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_2008_total_count <- rbind(Eastern_Sambo_Shallow_2008_herb_count, Eastern_Sambo_Shallow_2008_comm_count)



Eastern_Sambo_Shallow_2009 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2009.xls")


Eastern_Sambo_Shallow_2009_herb <- merge(Eastern_Sambo_Shallow_2009, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2009_herb_count <- count(Eastern_Sambo_Shallow_2009_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2009_herb_count$Year <- ('2009')
Eastern_Sambo_Shallow_2009_herb_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2009_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_2009_comm <- merge(Eastern_Sambo_Shallow_2009, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2009_comm_count <- count(Eastern_Sambo_Shallow_2009_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2009_comm_count$Year <- ('2009')
Eastern_Sambo_Shallow_2009_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2009_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_2009_total_count <- rbind(Eastern_Sambo_Shallow_2009_herb_count, Eastern_Sambo_Shallow_2009_comm_count)





Eastern_Sambo_Shallow_2010 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2010.xls")


Eastern_Sambo_Shallow_2010_herb <- merge(Eastern_Sambo_Shallow_2010, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2010_herb_count <- count(Eastern_Sambo_Shallow_2010_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2010_herb_count$Year <- ('2010')
Eastern_Sambo_Shallow_2010_herb_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2010_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_2010_comm <- merge(Eastern_Sambo_Shallow_2010, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2010_comm_count <- count(Eastern_Sambo_Shallow_2010_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2010_comm_count$Year <- ('2010')
Eastern_Sambo_Shallow_2010_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2010_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_2010_total_count <- rbind(Eastern_Sambo_Shallow_2010_herb_count, Eastern_Sambo_Shallow_2010_comm_count)


Eastern_Sambo_Shallow_2011 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2011.xls")


Eastern_Sambo_Shallow_2011_herb <- merge(Eastern_Sambo_Shallow_2011, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2011_herb_count <- count(Eastern_Sambo_Shallow_2011_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2011_herb_count$Year <- ('2011')
Eastern_Sambo_Shallow_2011_herb_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2011_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_2011_comm <- merge(Eastern_Sambo_Shallow_2011, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2011_comm_count <- count(Eastern_Sambo_Shallow_2011_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2011_comm_count$Year <- ('2011')
Eastern_Sambo_Shallow_2011_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2011_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_2011_total_count <- rbind(Eastern_Sambo_Shallow_2011_herb_count, Eastern_Sambo_Shallow_2011_comm_count)





Eastern_Sambo_Shallow_2012 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2012.xls")


Eastern_Sambo_Shallow_2012_herb <- merge(Eastern_Sambo_Shallow_2012, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2012_herb_count <- count(Eastern_Sambo_Shallow_2012_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2012_herb_count$Year <- ('2012')
Eastern_Sambo_Shallow_2012_herb_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2012_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_2012_comm <- merge(Eastern_Sambo_Shallow_2012, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2012_comm_count <- count(Eastern_Sambo_Shallow_2012_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2012_comm_count$Year <- ('2012')
Eastern_Sambo_Shallow_2012_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2012_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_2012_total_count <- rbind(Eastern_Sambo_Shallow_2012_herb_count, Eastern_Sambo_Shallow_2012_comm_count)



Eastern_Sambo_Shallow_2014 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2014.xls")


Eastern_Sambo_Shallow_2014_herb <- merge(Eastern_Sambo_Shallow_2014, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2014_herb_count <- count(Eastern_Sambo_Shallow_2014_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2014_herb_count$Year <- ('2014')
Eastern_Sambo_Shallow_2014_herb_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2014_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_2014_comm <- merge(Eastern_Sambo_Shallow_2014, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2014_comm_count <- count(Eastern_Sambo_Shallow_2014_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2014_comm_count$Year <- ('2014')
Eastern_Sambo_Shallow_2014_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2014_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_2014_total_count <- rbind(Eastern_Sambo_Shallow_2014_herb_count, Eastern_Sambo_Shallow_2014_comm_count)




Eastern_Sambo_Shallow_2016 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2016.xls")


Eastern_Sambo_Shallow_2016_herb <- merge(Eastern_Sambo_Shallow_2016, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2016_herb_count <- count(Eastern_Sambo_Shallow_2016_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2016_herb_count$Year <- ('2016')
Eastern_Sambo_Shallow_2016_herb_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2016_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_2016_comm <- merge(Eastern_Sambo_Shallow_2016, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2016_comm_count <- count(Eastern_Sambo_Shallow_2016_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2016_comm_count$Year <- ('2016')
Eastern_Sambo_Shallow_2016_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2016_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_2016_total_count <- rbind(Eastern_Sambo_Shallow_2016_herb_count, Eastern_Sambo_Shallow_2016_comm_count)



Eastern_Sambo_Shallow_2018 <- import("LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_2018.xls")


Eastern_Sambo_Shallow_2018_herb <- merge(Eastern_Sambo_Shallow_2018, Herb, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2018_herb_count <- count(Eastern_Sambo_Shallow_2018_herb, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2018_herb_count$Year <- ('2018')
Eastern_Sambo_Shallow_2018_herb_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2018_herb_count$Type <- "Herbivorous"

Eastern_Sambo_Shallow_2018_comm <- merge(Eastern_Sambo_Shallow_2018, Comm, by = c("SPECIES_CD"))
Eastern_Sambo_Shallow_2018_comm_count <- count(Eastern_Sambo_Shallow_2018_comm, vars = "SPECIES_CD")
Eastern_Sambo_Shallow_2018_comm_count$Year <- ('2018')
Eastern_Sambo_Shallow_2018_comm_count$sitename <- ('Eastern Sambo Shallow')
Eastern_Sambo_Shallow_2018_comm_count$Type <- "Commercial"


Eastern_Sambo_Shallow_2018_total_count <- rbind(Eastern_Sambo_Shallow_2018_herb_count, Eastern_Sambo_Shallow_2018_comm_count)





Eastern_Sambo_Shallow_all <- rbind(Eastern_Sambo_Shallow_1999_total_count,Eastern_Sambo_Shallow_2000_total_count,Eastern_Sambo_Shallow_2001_total_count,Eastern_Sambo_Shallow_2002_total_count,Eastern_Sambo_Shallow_2003_total_count,Eastern_Sambo_Shallow_2004_total_count,Eastern_Sambo_Shallow_2005_total_count,Eastern_Sambo_Shallow_2006_total_count,Eastern_Sambo_Shallow_2007_total_count,Eastern_Sambo_Shallow_2008_total_count,Eastern_Sambo_Shallow_2009_total_count, Eastern_Sambo_Shallow_2010_total_count,Eastern_Sambo_Shallow_2011_total_count, Eastern_Sambo_Shallow_2012_total_count, Eastern_Sambo_Shallow_2014_total_count, Eastern_Sambo_Shallow_2016_total_count,Eastern_Sambo_Shallow_2018_total_count)


export(Eastern_Sambo_Shallow_all, "LK/Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_count_herb_comm.csv")









Jaap_Reef_1999 <- import("LK/Jaap_Reef/data/Jaap_Reef_1999.xls")


Jaap_Reef_1999_herb <- merge(Jaap_Reef_1999, Herb, by = c("SPECIES_CD"))
Jaap_Reef_1999_herb_count <- count(Jaap_Reef_1999_herb, vars = "SPECIES_CD")
Jaap_Reef_1999_herb_count$Year <- ('1999')
Jaap_Reef_1999_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_1999_herb_count$Type <- "Herbivorous"

Jaap_Reef_1999_comm <- merge(Jaap_Reef_1999, Comm, by = c("SPECIES_CD"))
Jaap_Reef_1999_comm_count <- count(Jaap_Reef_1999_comm, vars = "SPECIES_CD")
Jaap_Reef_1999_comm_count$Year <- ('1999')
Jaap_Reef_1999_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_1999_comm_count$Type <- "Commercial"


Jaap_Reef_1999_total_count <- rbind(Jaap_Reef_1999_herb_count, Jaap_Reef_1999_comm_count)




Jaap_Reef_2000 <- import("LK/Jaap_Reef/data/Jaap_Reef_2000.xls")


Jaap_Reef_2000_herb <- merge(Jaap_Reef_2000, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2000_herb_count <- count(Jaap_Reef_2000_herb, vars = "SPECIES_CD")
Jaap_Reef_2000_herb_count$Year <- ('2000')
Jaap_Reef_2000_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_2000_herb_count$Type <- "Herbivorous"

Jaap_Reef_2000_comm <- merge(Jaap_Reef_2000, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2000_comm_count <- count(Jaap_Reef_2000_comm, vars = "SPECIES_CD")
Jaap_Reef_2000_comm_count$Year <- ('2000')
Jaap_Reef_2000_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_2000_comm_count$Type <- "Commercial"


Jaap_Reef_2000_total_count <- rbind(Jaap_Reef_2000_herb_count, Jaap_Reef_2000_comm_count)


Jaap_Reef_2001 <- import("LK/Jaap_Reef/data/Jaap_Reef_2001.xls")


Jaap_Reef_2001_herb <- merge(Jaap_Reef_2001, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2001_herb_count <- count(Jaap_Reef_2001_herb, vars = "SPECIES_CD")
Jaap_Reef_2001_herb_count$Year <- ('2001')
Jaap_Reef_2001_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_2001_herb_count$Type <- "Herbivorous"

Jaap_Reef_2001_comm <- merge(Jaap_Reef_2001, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2001_comm_count <- count(Jaap_Reef_2001_comm, vars = "SPECIES_CD")
Jaap_Reef_2001_comm_count$Year <- ('2001')
Jaap_Reef_2001_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_2001_comm_count$Type <- "Commercial"


Jaap_Reef_2001_total_count <- rbind(Jaap_Reef_2001_herb_count, Jaap_Reef_2001_comm_count)


Jaap_Reef_2002 <- import("LK/Jaap_Reef/data/Jaap_Reef_2002.xls")


Jaap_Reef_2002_herb <- merge(Jaap_Reef_2002, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2002_herb_count <- count(Jaap_Reef_2002_herb, vars = "SPECIES_CD")
Jaap_Reef_2002_herb_count$Year <- ('2002')
Jaap_Reef_2002_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_2002_herb_count$Type <- "Herbivorous"

Jaap_Reef_2002_comm <- merge(Jaap_Reef_2002, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2002_comm_count <- count(Jaap_Reef_2002_comm, vars = "SPECIES_CD")
Jaap_Reef_2002_comm_count$Year <- ('2002')
Jaap_Reef_2002_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_2002_comm_count$Type <- "Commercial"


Jaap_Reef_2002_total_count <- rbind(Jaap_Reef_2002_herb_count, Jaap_Reef_2002_comm_count)



Jaap_Reef_2003 <- import("LK/Jaap_Reef/data/Jaap_Reef_2003.xls")


Jaap_Reef_2003_herb <- merge(Jaap_Reef_2003, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2003_herb_count <- count(Jaap_Reef_2003_herb, vars = "SPECIES_CD")
Jaap_Reef_2003_herb_count$Year <- ('2003')
Jaap_Reef_2003_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_2003_herb_count$Type <- "Herbivorous"

Jaap_Reef_2003_comm <- merge(Jaap_Reef_2003, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2003_comm_count <- count(Jaap_Reef_2003_comm, vars = "SPECIES_CD")
Jaap_Reef_2003_comm_count$Year <- ('2003')
Jaap_Reef_2003_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_2003_comm_count$Type <- "Commercial"


Jaap_Reef_2003_total_count <- rbind(Jaap_Reef_2003_herb_count, Jaap_Reef_2003_comm_count)




Jaap_Reef_2004 <- import("LK/Jaap_Reef/data/Jaap_Reef_2004.xls")


Jaap_Reef_2004_herb <- merge(Jaap_Reef_2004, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2004_herb_count <- count(Jaap_Reef_2004_herb, vars = "SPECIES_CD")
Jaap_Reef_2004_herb_count$Year <- ('2004')
Jaap_Reef_2004_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_2004_herb_count$Type <- "Herbivorous"

Jaap_Reef_2004_comm <- merge(Jaap_Reef_2004, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2004_comm_count <- count(Jaap_Reef_2004_comm, vars = "SPECIES_CD")
Jaap_Reef_2004_comm_count$Year <- ('2004')
Jaap_Reef_2004_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_2004_comm_count$Type <- "Commercial"


Jaap_Reef_2004_total_count <- rbind(Jaap_Reef_2004_herb_count, Jaap_Reef_2004_comm_count)


Jaap_Reef_2005 <- import("LK/Jaap_Reef/data/Jaap_Reef_2005.xls")


Jaap_Reef_2005_herb <- merge(Jaap_Reef_2005, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2005_herb_count <- count(Jaap_Reef_2005_herb, vars = "SPECIES_CD")
Jaap_Reef_2005_herb_count$Year <- ('2005')
Jaap_Reef_2005_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_2005_herb_count$Type <- "Herbivorous"

Jaap_Reef_2005_comm <- merge(Jaap_Reef_2005, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2005_comm_count <- count(Jaap_Reef_2005_comm, vars = "SPECIES_CD")
Jaap_Reef_2005_comm_count$Year <- ('2005')
Jaap_Reef_2005_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_2005_comm_count$Type <- "Commercial"


Jaap_Reef_2005_total_count <- rbind(Jaap_Reef_2005_herb_count, Jaap_Reef_2005_comm_count)




Jaap_Reef_2006 <- import("LK/Jaap_Reef/data/Jaap_Reef_2006.xls")


Jaap_Reef_2006_herb <- merge(Jaap_Reef_2006, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2006_herb_count <- count(Jaap_Reef_2006_herb, vars = "SPECIES_CD")
Jaap_Reef_2006_herb_count$Year <- ('2006')
Jaap_Reef_2006_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_2006_herb_count$Type <- "Herbivorous"

Jaap_Reef_2006_comm <- merge(Jaap_Reef_2006, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2006_comm_count <- count(Jaap_Reef_2006_comm, vars = "SPECIES_CD")
Jaap_Reef_2006_comm_count$Year <- ('2006')
Jaap_Reef_2006_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_2006_comm_count$Type <- "Commercial"


Jaap_Reef_2006_total_count <- rbind(Jaap_Reef_2006_herb_count, Jaap_Reef_2006_comm_count)



Jaap_Reef_2007 <- import("LK/Jaap_Reef/data/Jaap_Reef_2007.xls")


Jaap_Reef_2007_herb <- merge(Jaap_Reef_2007, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2007_herb_count <- count(Jaap_Reef_2007_herb, vars = "SPECIES_CD")
Jaap_Reef_2007_herb_count$Year <- ('2007')
Jaap_Reef_2007_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_2007_herb_count$Type <- "Herbivorous"

Jaap_Reef_2007_comm <- merge(Jaap_Reef_2007, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2007_comm_count <- count(Jaap_Reef_2007_comm, vars = "SPECIES_CD")
Jaap_Reef_2007_comm_count$Year <- ('2007')
Jaap_Reef_2007_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_2007_comm_count$Type <- "Commercial"


Jaap_Reef_2007_total_count <- rbind(Jaap_Reef_2007_herb_count, Jaap_Reef_2007_comm_count)




Jaap_Reef_2008 <- import("LK/Jaap_Reef/data/Jaap_Reef_2008.xls")


Jaap_Reef_2008_herb <- merge(Jaap_Reef_2008, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2008_herb_count <- count(Jaap_Reef_2008_herb, vars = "SPECIES_CD")
Jaap_Reef_2008_herb_count$Year <- ('2008')
Jaap_Reef_2008_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_2008_herb_count$Type <- "Herbivorous"

Jaap_Reef_2008_comm <- merge(Jaap_Reef_2008, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2008_comm_count <- count(Jaap_Reef_2008_comm, vars = "SPECIES_CD")
Jaap_Reef_2008_comm_count$Year <- ('2008')
Jaap_Reef_2008_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_2008_comm_count$Type <- "Commercial"


Jaap_Reef_2008_total_count <- rbind(Jaap_Reef_2008_herb_count, Jaap_Reef_2008_comm_count)



Jaap_Reef_2009 <- import("LK/Jaap_Reef/data/Jaap_Reef_2009.xls")


Jaap_Reef_2009_herb <- merge(Jaap_Reef_2009, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2009_herb_count <- count(Jaap_Reef_2009_herb, vars = "SPECIES_CD")
Jaap_Reef_2009_herb_count$Year <- ('2009')
Jaap_Reef_2009_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_2009_herb_count$Type <- "Herbivorous"

Jaap_Reef_2009_comm <- merge(Jaap_Reef_2009, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2009_comm_count <- count(Jaap_Reef_2009_comm, vars = "SPECIES_CD")
Jaap_Reef_2009_comm_count$Year <- ('2009')
Jaap_Reef_2009_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_2009_comm_count$Type <- "Commercial"


Jaap_Reef_2009_total_count <- rbind(Jaap_Reef_2009_herb_count, Jaap_Reef_2009_comm_count)





Jaap_Reef_2010 <- import("LK/Jaap_Reef/data/Jaap_Reef_2010.xls")


Jaap_Reef_2010_herb <- merge(Jaap_Reef_2010, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2010_herb_count <- count(Jaap_Reef_2010_herb, vars = "SPECIES_CD")
Jaap_Reef_2010_herb_count$Year <- ('2010')
Jaap_Reef_2010_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_2010_herb_count$Type <- "Herbivorous"

Jaap_Reef_2010_comm <- merge(Jaap_Reef_2010, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2010_comm_count <- count(Jaap_Reef_2010_comm, vars = "SPECIES_CD")
Jaap_Reef_2010_comm_count$Year <- ('2010')
Jaap_Reef_2010_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_2010_comm_count$Type <- "Commercial"


Jaap_Reef_2010_total_count <- rbind(Jaap_Reef_2010_herb_count, Jaap_Reef_2010_comm_count)


Jaap_Reef_2011 <- import("LK/Jaap_Reef/data/Jaap_Reef_2011.xls")


Jaap_Reef_2011_herb <- merge(Jaap_Reef_2011, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2011_herb_count <- count(Jaap_Reef_2011_herb, vars = "SPECIES_CD")
Jaap_Reef_2011_herb_count$Year <- ('2011')
Jaap_Reef_2011_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_2011_herb_count$Type <- "Herbivorous"

Jaap_Reef_2011_comm <- merge(Jaap_Reef_2011, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2011_comm_count <- count(Jaap_Reef_2011_comm, vars = "SPECIES_CD")
Jaap_Reef_2011_comm_count$Year <- ('2011')
Jaap_Reef_2011_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_2011_comm_count$Type <- "Commercial"


Jaap_Reef_2011_total_count <- rbind(Jaap_Reef_2011_herb_count, Jaap_Reef_2011_comm_count)





Jaap_Reef_2012 <- import("LK/Jaap_Reef/data/Jaap_Reef_2012.xls")


Jaap_Reef_2012_herb <- merge(Jaap_Reef_2012, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2012_herb_count <- count(Jaap_Reef_2012_herb, vars = "SPECIES_CD")
Jaap_Reef_2012_herb_count$Year <- ('2012')
Jaap_Reef_2012_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_2012_herb_count$Type <- "Herbivorous"

Jaap_Reef_2012_comm <- merge(Jaap_Reef_2012, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2012_comm_count <- count(Jaap_Reef_2012_comm, vars = "SPECIES_CD")
Jaap_Reef_2012_comm_count$Year <- ('2012')
Jaap_Reef_2012_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_2012_comm_count$Type <- "Commercial"


Jaap_Reef_2012_total_count <- rbind(Jaap_Reef_2012_herb_count, Jaap_Reef_2012_comm_count)



Jaap_Reef_2014 <- import("LK/Jaap_Reef/data/Jaap_Reef_2014.xls")


Jaap_Reef_2014_herb <- merge(Jaap_Reef_2014, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2014_herb_count <- count(Jaap_Reef_2014_herb, vars = "SPECIES_CD")
Jaap_Reef_2014_herb_count$Year <- ('2014')
Jaap_Reef_2014_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_2014_herb_count$Type <- "Herbivorous"

Jaap_Reef_2014_comm <- merge(Jaap_Reef_2014, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2014_comm_count <- count(Jaap_Reef_2014_comm, vars = "SPECIES_CD")
Jaap_Reef_2014_comm_count$Year <- ('2014')
Jaap_Reef_2014_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_2014_comm_count$Type <- "Commercial"


Jaap_Reef_2014_total_count <- rbind(Jaap_Reef_2014_herb_count, Jaap_Reef_2014_comm_count)




Jaap_Reef_2016 <- import("LK/Jaap_Reef/data/Jaap_Reef_2016.xls")


Jaap_Reef_2016_herb <- merge(Jaap_Reef_2016, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2016_herb_count <- count(Jaap_Reef_2016_herb, vars = "SPECIES_CD")
Jaap_Reef_2016_herb_count$Year <- ('2016')
Jaap_Reef_2016_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_2016_herb_count$Type <- "Herbivorous"

Jaap_Reef_2016_comm <- merge(Jaap_Reef_2016, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2016_comm_count <- count(Jaap_Reef_2016_comm, vars = "SPECIES_CD")
Jaap_Reef_2016_comm_count$Year <- ('2016')
Jaap_Reef_2016_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_2016_comm_count$Type <- "Commercial"


Jaap_Reef_2016_total_count <- rbind(Jaap_Reef_2016_herb_count, Jaap_Reef_2016_comm_count)



Jaap_Reef_2018 <- import("LK/Jaap_Reef/data/Jaap_Reef_2018.xls")


Jaap_Reef_2018_herb <- merge(Jaap_Reef_2018, Herb, by = c("SPECIES_CD"))
Jaap_Reef_2018_herb_count <- count(Jaap_Reef_2018_herb, vars = "SPECIES_CD")
Jaap_Reef_2018_herb_count$Year <- ('2018')
Jaap_Reef_2018_herb_count$sitename <- ('Jaap Reef')
Jaap_Reef_2018_herb_count$Type <- "Herbivorous"

Jaap_Reef_2018_comm <- merge(Jaap_Reef_2018, Comm, by = c("SPECIES_CD"))
Jaap_Reef_2018_comm_count <- count(Jaap_Reef_2018_comm, vars = "SPECIES_CD")
Jaap_Reef_2018_comm_count$Year <- ('2018')
Jaap_Reef_2018_comm_count$sitename <- ('Jaap Reef')
Jaap_Reef_2018_comm_count$Type <- "Commercial"


Jaap_Reef_2018_total_count <- rbind(Jaap_Reef_2018_herb_count, Jaap_Reef_2018_comm_count)





Jaap_Reef_all <- rbind(Jaap_Reef_1999_total_count,Jaap_Reef_2000_total_count,Jaap_Reef_2001_total_count,Jaap_Reef_2002_total_count,Jaap_Reef_2003_total_count,Jaap_Reef_2004_total_count,Jaap_Reef_2005_total_count,Jaap_Reef_2006_total_count,Jaap_Reef_2007_total_count,Jaap_Reef_2008_total_count,Jaap_Reef_2009_total_count, Jaap_Reef_2010_total_count,Jaap_Reef_2011_total_count, Jaap_Reef_2012_total_count, Jaap_Reef_2014_total_count, Jaap_Reef_2016_total_count,Jaap_Reef_2018_total_count)


export(Jaap_Reef_all, "LK/Jaap_Reef/data/Jaap_Reef_count_herb_comm.csv")




Looe_Key_Deep_1999 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_1999.xls")


Looe_Key_Deep_1999_herb <- merge(Looe_Key_Deep_1999, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_1999_herb_count <- count(Looe_Key_Deep_1999_herb, vars = "SPECIES_CD")
Looe_Key_Deep_1999_herb_count$Year <- ('1999')
Looe_Key_Deep_1999_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_1999_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_1999_comm <- merge(Looe_Key_Deep_1999, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_1999_comm_count <- count(Looe_Key_Deep_1999_comm, vars = "SPECIES_CD")
Looe_Key_Deep_1999_comm_count$Year <- ('1999')
Looe_Key_Deep_1999_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_1999_comm_count$Type <- "Commercial"


Looe_Key_Deep_1999_total_count <- rbind(Looe_Key_Deep_1999_herb_count, Looe_Key_Deep_1999_comm_count)




Looe_Key_Deep_2000 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_2000.xls")


Looe_Key_Deep_2000_herb <- merge(Looe_Key_Deep_2000, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2000_herb_count <- count(Looe_Key_Deep_2000_herb, vars = "SPECIES_CD")
Looe_Key_Deep_2000_herb_count$Year <- ('2000')
Looe_Key_Deep_2000_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2000_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_2000_comm <- merge(Looe_Key_Deep_2000, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2000_comm_count <- count(Looe_Key_Deep_2000_comm, vars = "SPECIES_CD")
Looe_Key_Deep_2000_comm_count$Year <- ('2000')
Looe_Key_Deep_2000_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2000_comm_count$Type <- "Commercial"


Looe_Key_Deep_2000_total_count <- rbind(Looe_Key_Deep_2000_herb_count, Looe_Key_Deep_2000_comm_count)


Looe_Key_Deep_2001 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_2001.xls")


Looe_Key_Deep_2001_herb <- merge(Looe_Key_Deep_2001, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2001_herb_count <- count(Looe_Key_Deep_2001_herb, vars = "SPECIES_CD")
Looe_Key_Deep_2001_herb_count$Year <- ('2001')
Looe_Key_Deep_2001_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2001_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_2001_comm <- merge(Looe_Key_Deep_2001, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2001_comm_count <- count(Looe_Key_Deep_2001_comm, vars = "SPECIES_CD")
Looe_Key_Deep_2001_comm_count$Year <- ('2001')
Looe_Key_Deep_2001_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2001_comm_count$Type <- "Commercial"


Looe_Key_Deep_2001_total_count <- rbind(Looe_Key_Deep_2001_herb_count, Looe_Key_Deep_2001_comm_count)


Looe_Key_Deep_2002 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_2002.xls")


Looe_Key_Deep_2002_herb <- merge(Looe_Key_Deep_2002, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2002_herb_count <- count(Looe_Key_Deep_2002_herb, vars = "SPECIES_CD")
Looe_Key_Deep_2002_herb_count$Year <- ('2002')
Looe_Key_Deep_2002_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2002_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_2002_comm <- merge(Looe_Key_Deep_2002, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2002_comm_count <- count(Looe_Key_Deep_2002_comm, vars = "SPECIES_CD")
Looe_Key_Deep_2002_comm_count$Year <- ('2002')
Looe_Key_Deep_2002_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2002_comm_count$Type <- "Commercial"


Looe_Key_Deep_2002_total_count <- rbind(Looe_Key_Deep_2002_herb_count, Looe_Key_Deep_2002_comm_count)



Looe_Key_Deep_2003 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_2003.xls")


Looe_Key_Deep_2003_herb <- merge(Looe_Key_Deep_2003, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2003_herb_count <- count(Looe_Key_Deep_2003_herb, vars = "SPECIES_CD")
Looe_Key_Deep_2003_herb_count$Year <- ('2003')
Looe_Key_Deep_2003_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2003_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_2003_comm <- merge(Looe_Key_Deep_2003, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2003_comm_count <- count(Looe_Key_Deep_2003_comm, vars = "SPECIES_CD")
Looe_Key_Deep_2003_comm_count$Year <- ('2003')
Looe_Key_Deep_2003_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2003_comm_count$Type <- "Commercial"


Looe_Key_Deep_2003_total_count <- rbind(Looe_Key_Deep_2003_herb_count, Looe_Key_Deep_2003_comm_count)




Looe_Key_Deep_2004 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_2004.xls")


Looe_Key_Deep_2004_herb <- merge(Looe_Key_Deep_2004, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2004_herb_count <- count(Looe_Key_Deep_2004_herb, vars = "SPECIES_CD")
Looe_Key_Deep_2004_herb_count$Year <- ('2004')
Looe_Key_Deep_2004_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2004_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_2004_comm <- merge(Looe_Key_Deep_2004, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2004_comm_count <- count(Looe_Key_Deep_2004_comm, vars = "SPECIES_CD")
Looe_Key_Deep_2004_comm_count$Year <- ('2004')
Looe_Key_Deep_2004_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2004_comm_count$Type <- "Commercial"


Looe_Key_Deep_2004_total_count <- rbind(Looe_Key_Deep_2004_herb_count, Looe_Key_Deep_2004_comm_count)


Looe_Key_Deep_2005 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_2005.xls")


Looe_Key_Deep_2005_herb <- merge(Looe_Key_Deep_2005, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2005_herb_count <- count(Looe_Key_Deep_2005_herb, vars = "SPECIES_CD")
Looe_Key_Deep_2005_herb_count$Year <- ('2005')
Looe_Key_Deep_2005_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2005_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_2005_comm <- merge(Looe_Key_Deep_2005, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2005_comm_count <- count(Looe_Key_Deep_2005_comm, vars = "SPECIES_CD")
Looe_Key_Deep_2005_comm_count$Year <- ('2005')
Looe_Key_Deep_2005_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2005_comm_count$Type <- "Commercial"


Looe_Key_Deep_2005_total_count <- rbind(Looe_Key_Deep_2005_herb_count, Looe_Key_Deep_2005_comm_count)




Looe_Key_Deep_2006 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_2006.xls")


Looe_Key_Deep_2006_herb <- merge(Looe_Key_Deep_2006, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2006_herb_count <- count(Looe_Key_Deep_2006_herb, vars = "SPECIES_CD")
Looe_Key_Deep_2006_herb_count$Year <- ('2006')
Looe_Key_Deep_2006_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2006_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_2006_comm <- merge(Looe_Key_Deep_2006, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2006_comm_count <- count(Looe_Key_Deep_2006_comm, vars = "SPECIES_CD")
Looe_Key_Deep_2006_comm_count$Year <- ('2006')
Looe_Key_Deep_2006_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2006_comm_count$Type <- "Commercial"


Looe_Key_Deep_2006_total_count <- rbind(Looe_Key_Deep_2006_herb_count, Looe_Key_Deep_2006_comm_count)



Looe_Key_Deep_2007 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_2007.xls")


Looe_Key_Deep_2007_herb <- merge(Looe_Key_Deep_2007, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2007_herb_count <- count(Looe_Key_Deep_2007_herb, vars = "SPECIES_CD")
Looe_Key_Deep_2007_herb_count$Year <- ('2007')
Looe_Key_Deep_2007_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2007_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_2007_comm <- merge(Looe_Key_Deep_2007, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2007_comm_count <- count(Looe_Key_Deep_2007_comm, vars = "SPECIES_CD")
Looe_Key_Deep_2007_comm_count$Year <- ('2007')
Looe_Key_Deep_2007_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2007_comm_count$Type <- "Commercial"


Looe_Key_Deep_2007_total_count <- rbind(Looe_Key_Deep_2007_herb_count, Looe_Key_Deep_2007_comm_count)




Looe_Key_Deep_2008 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_2008.xls")


Looe_Key_Deep_2008_herb <- merge(Looe_Key_Deep_2008, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2008_herb_count <- count(Looe_Key_Deep_2008_herb, vars = "SPECIES_CD")
Looe_Key_Deep_2008_herb_count$Year <- ('2008')
Looe_Key_Deep_2008_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2008_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_2008_comm <- merge(Looe_Key_Deep_2008, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2008_comm_count <- count(Looe_Key_Deep_2008_comm, vars = "SPECIES_CD")
Looe_Key_Deep_2008_comm_count$Year <- ('2008')
Looe_Key_Deep_2008_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2008_comm_count$Type <- "Commercial"


Looe_Key_Deep_2008_total_count <- rbind(Looe_Key_Deep_2008_herb_count, Looe_Key_Deep_2008_comm_count)



Looe_Key_Deep_2009 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_2009.xls")


Looe_Key_Deep_2009_herb <- merge(Looe_Key_Deep_2009, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2009_herb_count <- count(Looe_Key_Deep_2009_herb, vars = "SPECIES_CD")
Looe_Key_Deep_2009_herb_count$Year <- ('2009')
Looe_Key_Deep_2009_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2009_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_2009_comm <- merge(Looe_Key_Deep_2009, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2009_comm_count <- count(Looe_Key_Deep_2009_comm, vars = "SPECIES_CD")
Looe_Key_Deep_2009_comm_count$Year <- ('2009')
Looe_Key_Deep_2009_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2009_comm_count$Type <- "Commercial"


Looe_Key_Deep_2009_total_count <- rbind(Looe_Key_Deep_2009_herb_count, Looe_Key_Deep_2009_comm_count)





Looe_Key_Deep_2010 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_2010.xls")


Looe_Key_Deep_2010_herb <- merge(Looe_Key_Deep_2010, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2010_herb_count <- count(Looe_Key_Deep_2010_herb, vars = "SPECIES_CD")
Looe_Key_Deep_2010_herb_count$Year <- ('2010')
Looe_Key_Deep_2010_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2010_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_2010_comm <- merge(Looe_Key_Deep_2010, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2010_comm_count <- count(Looe_Key_Deep_2010_comm, vars = "SPECIES_CD")
Looe_Key_Deep_2010_comm_count$Year <- ('2010')
Looe_Key_Deep_2010_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2010_comm_count$Type <- "Commercial"


Looe_Key_Deep_2010_total_count <- rbind(Looe_Key_Deep_2010_herb_count, Looe_Key_Deep_2010_comm_count)


Looe_Key_Deep_2011 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_2011.xls")


Looe_Key_Deep_2011_herb <- merge(Looe_Key_Deep_2011, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2011_herb_count <- count(Looe_Key_Deep_2011_herb, vars = "SPECIES_CD")
Looe_Key_Deep_2011_herb_count$Year <- ('2011')
Looe_Key_Deep_2011_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2011_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_2011_comm <- merge(Looe_Key_Deep_2011, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2011_comm_count <- count(Looe_Key_Deep_2011_comm, vars = "SPECIES_CD")
Looe_Key_Deep_2011_comm_count$Year <- ('2011')
Looe_Key_Deep_2011_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2011_comm_count$Type <- "Commercial"


Looe_Key_Deep_2011_total_count <- rbind(Looe_Key_Deep_2011_herb_count, Looe_Key_Deep_2011_comm_count)





Looe_Key_Deep_2012 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_2012.xls")


Looe_Key_Deep_2012_herb <- merge(Looe_Key_Deep_2012, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2012_herb_count <- count(Looe_Key_Deep_2012_herb, vars = "SPECIES_CD")
Looe_Key_Deep_2012_herb_count$Year <- ('2012')
Looe_Key_Deep_2012_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2012_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_2012_comm <- merge(Looe_Key_Deep_2012, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2012_comm_count <- count(Looe_Key_Deep_2012_comm, vars = "SPECIES_CD")
Looe_Key_Deep_2012_comm_count$Year <- ('2012')
Looe_Key_Deep_2012_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2012_comm_count$Type <- "Commercial"


Looe_Key_Deep_2012_total_count <- rbind(Looe_Key_Deep_2012_herb_count, Looe_Key_Deep_2012_comm_count)



Looe_Key_Deep_2014 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_2014.xls")


Looe_Key_Deep_2014_herb <- merge(Looe_Key_Deep_2014, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2014_herb_count <- count(Looe_Key_Deep_2014_herb, vars = "SPECIES_CD")
Looe_Key_Deep_2014_herb_count$Year <- ('2014')
Looe_Key_Deep_2014_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2014_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_2014_comm <- merge(Looe_Key_Deep_2014, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2014_comm_count <- count(Looe_Key_Deep_2014_comm, vars = "SPECIES_CD")
Looe_Key_Deep_2014_comm_count$Year <- ('2014')
Looe_Key_Deep_2014_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2014_comm_count$Type <- "Commercial"


Looe_Key_Deep_2014_total_count <- rbind(Looe_Key_Deep_2014_herb_count, Looe_Key_Deep_2014_comm_count)




Looe_Key_Deep_2016 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_2016.xls")


Looe_Key_Deep_2016_herb <- merge(Looe_Key_Deep_2016, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2016_herb_count <- count(Looe_Key_Deep_2016_herb, vars = "SPECIES_CD")
Looe_Key_Deep_2016_herb_count$Year <- ('2016')
Looe_Key_Deep_2016_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2016_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_2016_comm <- merge(Looe_Key_Deep_2016, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2016_comm_count <- count(Looe_Key_Deep_2016_comm, vars = "SPECIES_CD")
Looe_Key_Deep_2016_comm_count$Year <- ('2016')
Looe_Key_Deep_2016_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2016_comm_count$Type <- "Commercial"


Looe_Key_Deep_2016_total_count <- rbind(Looe_Key_Deep_2016_herb_count, Looe_Key_Deep_2016_comm_count)



Looe_Key_Deep_2018 <- import("LK/Looe_Key_Deep/data/Looe_Key_Deep_2018.xls")


Looe_Key_Deep_2018_herb <- merge(Looe_Key_Deep_2018, Herb, by = c("SPECIES_CD"))
Looe_Key_Deep_2018_herb_count <- count(Looe_Key_Deep_2018_herb, vars = "SPECIES_CD")
Looe_Key_Deep_2018_herb_count$Year <- ('2018')
Looe_Key_Deep_2018_herb_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2018_herb_count$Type <- "Herbivorous"

Looe_Key_Deep_2018_comm <- merge(Looe_Key_Deep_2018, Comm, by = c("SPECIES_CD"))
Looe_Key_Deep_2018_comm_count <- count(Looe_Key_Deep_2018_comm, vars = "SPECIES_CD")
Looe_Key_Deep_2018_comm_count$Year <- ('2018')
Looe_Key_Deep_2018_comm_count$sitename <- ('Looe Key Deep')
Looe_Key_Deep_2018_comm_count$Type <- "Commercial"


Looe_Key_Deep_2018_total_count <- rbind(Looe_Key_Deep_2018_herb_count, Looe_Key_Deep_2018_comm_count)





Looe_Key_Deep_all <- rbind(Looe_Key_Deep_1999_total_count,Looe_Key_Deep_2000_total_count,Looe_Key_Deep_2001_total_count,Looe_Key_Deep_2002_total_count,Looe_Key_Deep_2003_total_count,Looe_Key_Deep_2004_total_count,Looe_Key_Deep_2005_total_count,Looe_Key_Deep_2006_total_count,Looe_Key_Deep_2007_total_count,Looe_Key_Deep_2008_total_count,Looe_Key_Deep_2009_total_count, Looe_Key_Deep_2010_total_count,Looe_Key_Deep_2011_total_count, Looe_Key_Deep_2012_total_count, Looe_Key_Deep_2014_total_count, Looe_Key_Deep_2016_total_count,Looe_Key_Deep_2018_total_count)


export(Looe_Key_Deep_all, "LK/Looe_Key_Deep/data/Looe_Key_Deep_count_herb_comm.csv")









Looe_Key_Shallow_1999 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_1999.xls")


Looe_Key_Shallow_1999_herb <- merge(Looe_Key_Shallow_1999, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_1999_herb_count <- count(Looe_Key_Shallow_1999_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_1999_herb_count$Year <- ('1999')
Looe_Key_Shallow_1999_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_1999_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_1999_comm <- merge(Looe_Key_Shallow_1999, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_1999_comm_count <- count(Looe_Key_Shallow_1999_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_1999_comm_count$Year <- ('1999')
Looe_Key_Shallow_1999_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_1999_comm_count$Type <- "Commercial"


Looe_Key_Shallow_1999_total_count <- rbind(Looe_Key_Shallow_1999_herb_count, Looe_Key_Shallow_1999_comm_count)




Looe_Key_Shallow_2000 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_2000.xls")


Looe_Key_Shallow_2000_herb <- merge(Looe_Key_Shallow_2000, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2000_herb_count <- count(Looe_Key_Shallow_2000_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_2000_herb_count$Year <- ('2000')
Looe_Key_Shallow_2000_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2000_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_2000_comm <- merge(Looe_Key_Shallow_2000, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2000_comm_count <- count(Looe_Key_Shallow_2000_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_2000_comm_count$Year <- ('2000')
Looe_Key_Shallow_2000_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2000_comm_count$Type <- "Commercial"


Looe_Key_Shallow_2000_total_count <- rbind(Looe_Key_Shallow_2000_herb_count, Looe_Key_Shallow_2000_comm_count)


Looe_Key_Shallow_2001 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_2001.xls")


Looe_Key_Shallow_2001_herb <- merge(Looe_Key_Shallow_2001, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2001_herb_count <- count(Looe_Key_Shallow_2001_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_2001_herb_count$Year <- ('2001')
Looe_Key_Shallow_2001_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2001_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_2001_comm <- merge(Looe_Key_Shallow_2001, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2001_comm_count <- count(Looe_Key_Shallow_2001_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_2001_comm_count$Year <- ('2001')
Looe_Key_Shallow_2001_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2001_comm_count$Type <- "Commercial"


Looe_Key_Shallow_2001_total_count <- rbind(Looe_Key_Shallow_2001_herb_count, Looe_Key_Shallow_2001_comm_count)


Looe_Key_Shallow_2002 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_2002.xls")


Looe_Key_Shallow_2002_herb <- merge(Looe_Key_Shallow_2002, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2002_herb_count <- count(Looe_Key_Shallow_2002_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_2002_herb_count$Year <- ('2002')
Looe_Key_Shallow_2002_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2002_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_2002_comm <- merge(Looe_Key_Shallow_2002, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2002_comm_count <- count(Looe_Key_Shallow_2002_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_2002_comm_count$Year <- ('2002')
Looe_Key_Shallow_2002_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2002_comm_count$Type <- "Commercial"


Looe_Key_Shallow_2002_total_count <- rbind(Looe_Key_Shallow_2002_herb_count, Looe_Key_Shallow_2002_comm_count)



Looe_Key_Shallow_2003 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_2003.xls")


Looe_Key_Shallow_2003_herb <- merge(Looe_Key_Shallow_2003, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2003_herb_count <- count(Looe_Key_Shallow_2003_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_2003_herb_count$Year <- ('2003')
Looe_Key_Shallow_2003_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2003_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_2003_comm <- merge(Looe_Key_Shallow_2003, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2003_comm_count <- count(Looe_Key_Shallow_2003_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_2003_comm_count$Year <- ('2003')
Looe_Key_Shallow_2003_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2003_comm_count$Type <- "Commercial"


Looe_Key_Shallow_2003_total_count <- rbind(Looe_Key_Shallow_2003_herb_count, Looe_Key_Shallow_2003_comm_count)




Looe_Key_Shallow_2004 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_2004.xls")


Looe_Key_Shallow_2004_herb <- merge(Looe_Key_Shallow_2004, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2004_herb_count <- count(Looe_Key_Shallow_2004_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_2004_herb_count$Year <- ('2004')
Looe_Key_Shallow_2004_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2004_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_2004_comm <- merge(Looe_Key_Shallow_2004, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2004_comm_count <- count(Looe_Key_Shallow_2004_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_2004_comm_count$Year <- ('2004')
Looe_Key_Shallow_2004_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2004_comm_count$Type <- "Commercial"


Looe_Key_Shallow_2004_total_count <- rbind(Looe_Key_Shallow_2004_herb_count, Looe_Key_Shallow_2004_comm_count)


Looe_Key_Shallow_2005 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_2005.xls")


Looe_Key_Shallow_2005_herb <- merge(Looe_Key_Shallow_2005, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2005_herb_count <- count(Looe_Key_Shallow_2005_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_2005_herb_count$Year <- ('2005')
Looe_Key_Shallow_2005_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2005_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_2005_comm <- merge(Looe_Key_Shallow_2005, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2005_comm_count <- count(Looe_Key_Shallow_2005_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_2005_comm_count$Year <- ('2005')
Looe_Key_Shallow_2005_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2005_comm_count$Type <- "Commercial"


Looe_Key_Shallow_2005_total_count <- rbind(Looe_Key_Shallow_2005_herb_count, Looe_Key_Shallow_2005_comm_count)




Looe_Key_Shallow_2006 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_2006.xls")


Looe_Key_Shallow_2006_herb <- merge(Looe_Key_Shallow_2006, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2006_herb_count <- count(Looe_Key_Shallow_2006_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_2006_herb_count$Year <- ('2006')
Looe_Key_Shallow_2006_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2006_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_2006_comm <- merge(Looe_Key_Shallow_2006, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2006_comm_count <- count(Looe_Key_Shallow_2006_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_2006_comm_count$Year <- ('2006')
Looe_Key_Shallow_2006_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2006_comm_count$Type <- "Commercial"


Looe_Key_Shallow_2006_total_count <- rbind(Looe_Key_Shallow_2006_herb_count, Looe_Key_Shallow_2006_comm_count)



Looe_Key_Shallow_2007 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_2007.xls")


Looe_Key_Shallow_2007_herb <- merge(Looe_Key_Shallow_2007, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2007_herb_count <- count(Looe_Key_Shallow_2007_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_2007_herb_count$Year <- ('2007')
Looe_Key_Shallow_2007_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2007_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_2007_comm <- merge(Looe_Key_Shallow_2007, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2007_comm_count <- count(Looe_Key_Shallow_2007_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_2007_comm_count$Year <- ('2007')
Looe_Key_Shallow_2007_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2007_comm_count$Type <- "Commercial"


Looe_Key_Shallow_2007_total_count <- rbind(Looe_Key_Shallow_2007_herb_count, Looe_Key_Shallow_2007_comm_count)




Looe_Key_Shallow_2008 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_2008.xls")


Looe_Key_Shallow_2008_herb <- merge(Looe_Key_Shallow_2008, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2008_herb_count <- count(Looe_Key_Shallow_2008_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_2008_herb_count$Year <- ('2008')
Looe_Key_Shallow_2008_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2008_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_2008_comm <- merge(Looe_Key_Shallow_2008, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2008_comm_count <- count(Looe_Key_Shallow_2008_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_2008_comm_count$Year <- ('2008')
Looe_Key_Shallow_2008_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2008_comm_count$Type <- "Commercial"


Looe_Key_Shallow_2008_total_count <- rbind(Looe_Key_Shallow_2008_herb_count, Looe_Key_Shallow_2008_comm_count)



Looe_Key_Shallow_2009 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_2009.xls")


Looe_Key_Shallow_2009_herb <- merge(Looe_Key_Shallow_2009, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2009_herb_count <- count(Looe_Key_Shallow_2009_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_2009_herb_count$Year <- ('2009')
Looe_Key_Shallow_2009_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2009_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_2009_comm <- merge(Looe_Key_Shallow_2009, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2009_comm_count <- count(Looe_Key_Shallow_2009_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_2009_comm_count$Year <- ('2009')
Looe_Key_Shallow_2009_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2009_comm_count$Type <- "Commercial"


Looe_Key_Shallow_2009_total_count <- rbind(Looe_Key_Shallow_2009_herb_count, Looe_Key_Shallow_2009_comm_count)





Looe_Key_Shallow_2010 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_2010.xls")


Looe_Key_Shallow_2010_herb <- merge(Looe_Key_Shallow_2010, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2010_herb_count <- count(Looe_Key_Shallow_2010_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_2010_herb_count$Year <- ('2010')
Looe_Key_Shallow_2010_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2010_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_2010_comm <- merge(Looe_Key_Shallow_2010, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2010_comm_count <- count(Looe_Key_Shallow_2010_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_2010_comm_count$Year <- ('2010')
Looe_Key_Shallow_2010_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2010_comm_count$Type <- "Commercial"


Looe_Key_Shallow_2010_total_count <- rbind(Looe_Key_Shallow_2010_herb_count, Looe_Key_Shallow_2010_comm_count)


Looe_Key_Shallow_2011 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_2011.xls")


Looe_Key_Shallow_2011_herb <- merge(Looe_Key_Shallow_2011, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2011_herb_count <- count(Looe_Key_Shallow_2011_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_2011_herb_count$Year <- ('2011')
Looe_Key_Shallow_2011_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2011_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_2011_comm <- merge(Looe_Key_Shallow_2011, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2011_comm_count <- count(Looe_Key_Shallow_2011_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_2011_comm_count$Year <- ('2011')
Looe_Key_Shallow_2011_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2011_comm_count$Type <- "Commercial"


Looe_Key_Shallow_2011_total_count <- rbind(Looe_Key_Shallow_2011_herb_count, Looe_Key_Shallow_2011_comm_count)





Looe_Key_Shallow_2012 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_2012.xls")


Looe_Key_Shallow_2012_herb <- merge(Looe_Key_Shallow_2012, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2012_herb_count <- count(Looe_Key_Shallow_2012_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_2012_herb_count$Year <- ('2012')
Looe_Key_Shallow_2012_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2012_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_2012_comm <- merge(Looe_Key_Shallow_2012, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2012_comm_count <- count(Looe_Key_Shallow_2012_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_2012_comm_count$Year <- ('2012')
Looe_Key_Shallow_2012_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2012_comm_count$Type <- "Commercial"


Looe_Key_Shallow_2012_total_count <- rbind(Looe_Key_Shallow_2012_herb_count, Looe_Key_Shallow_2012_comm_count)



Looe_Key_Shallow_2014 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_2014.xls")


Looe_Key_Shallow_2014_herb <- merge(Looe_Key_Shallow_2014, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2014_herb_count <- count(Looe_Key_Shallow_2014_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_2014_herb_count$Year <- ('2014')
Looe_Key_Shallow_2014_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2014_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_2014_comm <- merge(Looe_Key_Shallow_2014, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2014_comm_count <- count(Looe_Key_Shallow_2014_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_2014_comm_count$Year <- ('2014')
Looe_Key_Shallow_2014_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2014_comm_count$Type <- "Commercial"


Looe_Key_Shallow_2014_total_count <- rbind(Looe_Key_Shallow_2014_herb_count, Looe_Key_Shallow_2014_comm_count)




Looe_Key_Shallow_2016 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_2016.xls")


Looe_Key_Shallow_2016_herb <- merge(Looe_Key_Shallow_2016, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2016_herb_count <- count(Looe_Key_Shallow_2016_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_2016_herb_count$Year <- ('2016')
Looe_Key_Shallow_2016_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2016_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_2016_comm <- merge(Looe_Key_Shallow_2016, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2016_comm_count <- count(Looe_Key_Shallow_2016_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_2016_comm_count$Year <- ('2016')
Looe_Key_Shallow_2016_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2016_comm_count$Type <- "Commercial"


Looe_Key_Shallow_2016_total_count <- rbind(Looe_Key_Shallow_2016_herb_count, Looe_Key_Shallow_2016_comm_count)



Looe_Key_Shallow_2018 <- import("LK/Looe_Key_Shallow/data/Looe_Key_Shallow_2018.xls")


Looe_Key_Shallow_2018_herb <- merge(Looe_Key_Shallow_2018, Herb, by = c("SPECIES_CD"))
Looe_Key_Shallow_2018_herb_count <- count(Looe_Key_Shallow_2018_herb, vars = "SPECIES_CD")
Looe_Key_Shallow_2018_herb_count$Year <- ('2018')
Looe_Key_Shallow_2018_herb_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2018_herb_count$Type <- "Herbivorous"

Looe_Key_Shallow_2018_comm <- merge(Looe_Key_Shallow_2018, Comm, by = c("SPECIES_CD"))
Looe_Key_Shallow_2018_comm_count <- count(Looe_Key_Shallow_2018_comm, vars = "SPECIES_CD")
Looe_Key_Shallow_2018_comm_count$Year <- ('2018')
Looe_Key_Shallow_2018_comm_count$sitename <- ('Looe Key Shallow')
Looe_Key_Shallow_2018_comm_count$Type <- "Commercial"


Looe_Key_Shallow_2018_total_count <- rbind(Looe_Key_Shallow_2018_herb_count, Looe_Key_Shallow_2018_comm_count)





Looe_Key_Shallow_all <- rbind(Looe_Key_Shallow_1999_total_count,Looe_Key_Shallow_2000_total_count,Looe_Key_Shallow_2001_total_count,Looe_Key_Shallow_2002_total_count,Looe_Key_Shallow_2003_total_count,Looe_Key_Shallow_2004_total_count,Looe_Key_Shallow_2005_total_count,Looe_Key_Shallow_2006_total_count,Looe_Key_Shallow_2007_total_count,Looe_Key_Shallow_2008_total_count,Looe_Key_Shallow_2009_total_count, Looe_Key_Shallow_2010_total_count,Looe_Key_Shallow_2011_total_count, Looe_Key_Shallow_2012_total_count, Looe_Key_Shallow_2014_total_count, Looe_Key_Shallow_2016_total_count,Looe_Key_Shallow_2018_total_count)


export(Looe_Key_Shallow_all, "LK/Looe_Key_Shallow/data/Looe_Key_Shallow_count_herb_comm.csv")






Red_Dun_Reef_1999 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_1999.xls")


Red_Dun_Reef_1999_herb <- merge(Red_Dun_Reef_1999, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_1999_herb_count <- count(Red_Dun_Reef_1999_herb, vars = "SPECIES_CD")
Red_Dun_Reef_1999_herb_count$Year <- ('1999')
Red_Dun_Reef_1999_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_1999_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_1999_comm <- merge(Red_Dun_Reef_1999, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_1999_comm_count <- count(Red_Dun_Reef_1999_comm, vars = "SPECIES_CD")
Red_Dun_Reef_1999_comm_count$Year <- ('1999')
Red_Dun_Reef_1999_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_1999_comm_count$Type <- "Commercial"


Red_Dun_Reef_1999_total_count <- rbind(Red_Dun_Reef_1999_herb_count, Red_Dun_Reef_1999_comm_count)




Red_Dun_Reef_2000 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_2000.xls")


Red_Dun_Reef_2000_herb <- merge(Red_Dun_Reef_2000, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2000_herb_count <- count(Red_Dun_Reef_2000_herb, vars = "SPECIES_CD")
Red_Dun_Reef_2000_herb_count$Year <- ('2000')
Red_Dun_Reef_2000_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_2000_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_2000_comm <- merge(Red_Dun_Reef_2000, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2000_comm_count <- count(Red_Dun_Reef_2000_comm, vars = "SPECIES_CD")
Red_Dun_Reef_2000_comm_count$Year <- ('2000')
Red_Dun_Reef_2000_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_2000_comm_count$Type <- "Commercial"


Red_Dun_Reef_2000_total_count <- rbind(Red_Dun_Reef_2000_herb_count, Red_Dun_Reef_2000_comm_count)


Red_Dun_Reef_2001 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_2001.xls")


Red_Dun_Reef_2001_herb <- merge(Red_Dun_Reef_2001, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2001_herb_count <- count(Red_Dun_Reef_2001_herb, vars = "SPECIES_CD")
Red_Dun_Reef_2001_herb_count$Year <- ('2001')
Red_Dun_Reef_2001_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_2001_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_2001_comm <- merge(Red_Dun_Reef_2001, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2001_comm_count <- count(Red_Dun_Reef_2001_comm, vars = "SPECIES_CD")
Red_Dun_Reef_2001_comm_count$Year <- ('2001')
Red_Dun_Reef_2001_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_2001_comm_count$Type <- "Commercial"


Red_Dun_Reef_2001_total_count <- rbind(Red_Dun_Reef_2001_herb_count, Red_Dun_Reef_2001_comm_count)


Red_Dun_Reef_2002 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_2002.xls")


Red_Dun_Reef_2002_herb <- merge(Red_Dun_Reef_2002, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2002_herb_count <- count(Red_Dun_Reef_2002_herb, vars = "SPECIES_CD")
Red_Dun_Reef_2002_herb_count$Year <- ('2002')
Red_Dun_Reef_2002_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_2002_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_2002_comm <- merge(Red_Dun_Reef_2002, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2002_comm_count <- count(Red_Dun_Reef_2002_comm, vars = "SPECIES_CD")
Red_Dun_Reef_2002_comm_count$Year <- ('2002')
Red_Dun_Reef_2002_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_2002_comm_count$Type <- "Commercial"


Red_Dun_Reef_2002_total_count <- rbind(Red_Dun_Reef_2002_herb_count, Red_Dun_Reef_2002_comm_count)



Red_Dun_Reef_2003 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_2003.xls")


Red_Dun_Reef_2003_herb <- merge(Red_Dun_Reef_2003, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2003_herb_count <- count(Red_Dun_Reef_2003_herb, vars = "SPECIES_CD")
Red_Dun_Reef_2003_herb_count$Year <- ('2003')
Red_Dun_Reef_2003_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_2003_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_2003_comm <- merge(Red_Dun_Reef_2003, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2003_comm_count <- count(Red_Dun_Reef_2003_comm, vars = "SPECIES_CD")
Red_Dun_Reef_2003_comm_count$Year <- ('2003')
Red_Dun_Reef_2003_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_2003_comm_count$Type <- "Commercial"


Red_Dun_Reef_2003_total_count <- rbind(Red_Dun_Reef_2003_herb_count, Red_Dun_Reef_2003_comm_count)




Red_Dun_Reef_2004 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_2004.xls")


Red_Dun_Reef_2004_herb <- merge(Red_Dun_Reef_2004, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2004_herb_count <- count(Red_Dun_Reef_2004_herb, vars = "SPECIES_CD")
Red_Dun_Reef_2004_herb_count$Year <- ('2004')
Red_Dun_Reef_2004_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_2004_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_2004_comm <- merge(Red_Dun_Reef_2004, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2004_comm_count <- count(Red_Dun_Reef_2004_comm, vars = "SPECIES_CD")
Red_Dun_Reef_2004_comm_count$Year <- ('2004')
Red_Dun_Reef_2004_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_2004_comm_count$Type <- "Commercial"


Red_Dun_Reef_2004_total_count <- rbind(Red_Dun_Reef_2004_herb_count, Red_Dun_Reef_2004_comm_count)


Red_Dun_Reef_2005 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_2005.xls")


Red_Dun_Reef_2005_herb <- merge(Red_Dun_Reef_2005, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2005_herb_count <- count(Red_Dun_Reef_2005_herb, vars = "SPECIES_CD")
Red_Dun_Reef_2005_herb_count$Year <- ('2005')
Red_Dun_Reef_2005_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_2005_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_2005_comm <- merge(Red_Dun_Reef_2005, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2005_comm_count <- count(Red_Dun_Reef_2005_comm, vars = "SPECIES_CD")
Red_Dun_Reef_2005_comm_count$Year <- ('2005')
Red_Dun_Reef_2005_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_2005_comm_count$Type <- "Commercial"


Red_Dun_Reef_2005_total_count <- rbind(Red_Dun_Reef_2005_herb_count, Red_Dun_Reef_2005_comm_count)




Red_Dun_Reef_2006 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_2006.xls")


Red_Dun_Reef_2006_herb <- merge(Red_Dun_Reef_2006, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2006_herb_count <- count(Red_Dun_Reef_2006_herb, vars = "SPECIES_CD")
Red_Dun_Reef_2006_herb_count$Year <- ('2006')
Red_Dun_Reef_2006_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_2006_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_2006_comm <- merge(Red_Dun_Reef_2006, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2006_comm_count <- count(Red_Dun_Reef_2006_comm, vars = "SPECIES_CD")
Red_Dun_Reef_2006_comm_count$Year <- ('2006')
Red_Dun_Reef_2006_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_2006_comm_count$Type <- "Commercial"


Red_Dun_Reef_2006_total_count <- rbind(Red_Dun_Reef_2006_herb_count, Red_Dun_Reef_2006_comm_count)



Red_Dun_Reef_2007 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_2007.xls")


Red_Dun_Reef_2007_herb <- merge(Red_Dun_Reef_2007, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2007_herb_count <- count(Red_Dun_Reef_2007_herb, vars = "SPECIES_CD")
Red_Dun_Reef_2007_herb_count$Year <- ('2007')
Red_Dun_Reef_2007_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_2007_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_2007_comm <- merge(Red_Dun_Reef_2007, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2007_comm_count <- count(Red_Dun_Reef_2007_comm, vars = "SPECIES_CD")
Red_Dun_Reef_2007_comm_count$Year <- ('2007')
Red_Dun_Reef_2007_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_2007_comm_count$Type <- "Commercial"


Red_Dun_Reef_2007_total_count <- rbind(Red_Dun_Reef_2007_herb_count, Red_Dun_Reef_2007_comm_count)




Red_Dun_Reef_2008 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_2008.xls")


Red_Dun_Reef_2008_herb <- merge(Red_Dun_Reef_2008, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2008_herb_count <- count(Red_Dun_Reef_2008_herb, vars = "SPECIES_CD")
Red_Dun_Reef_2008_herb_count$Year <- ('2008')
Red_Dun_Reef_2008_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_2008_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_2008_comm <- merge(Red_Dun_Reef_2008, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2008_comm_count <- count(Red_Dun_Reef_2008_comm, vars = "SPECIES_CD")
Red_Dun_Reef_2008_comm_count$Year <- ('2008')
Red_Dun_Reef_2008_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_2008_comm_count$Type <- "Commercial"


Red_Dun_Reef_2008_total_count <- rbind(Red_Dun_Reef_2008_herb_count, Red_Dun_Reef_2008_comm_count)



Red_Dun_Reef_2009 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_2009.xls")


Red_Dun_Reef_2009_herb <- merge(Red_Dun_Reef_2009, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2009_herb_count <- count(Red_Dun_Reef_2009_herb, vars = "SPECIES_CD")
Red_Dun_Reef_2009_herb_count$Year <- ('2009')
Red_Dun_Reef_2009_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_2009_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_2009_comm <- merge(Red_Dun_Reef_2009, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2009_comm_count <- count(Red_Dun_Reef_2009_comm, vars = "SPECIES_CD")
Red_Dun_Reef_2009_comm_count$Year <- ('2009')
Red_Dun_Reef_2009_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_2009_comm_count$Type <- "Commercial"


Red_Dun_Reef_2009_total_count <- rbind(Red_Dun_Reef_2009_herb_count, Red_Dun_Reef_2009_comm_count)





Red_Dun_Reef_2010 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_2010.xls")


Red_Dun_Reef_2010_herb <- merge(Red_Dun_Reef_2010, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2010_herb_count <- count(Red_Dun_Reef_2010_herb, vars = "SPECIES_CD")
Red_Dun_Reef_2010_herb_count$Year <- ('2010')
Red_Dun_Reef_2010_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_2010_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_2010_comm <- merge(Red_Dun_Reef_2010, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2010_comm_count <- count(Red_Dun_Reef_2010_comm, vars = "SPECIES_CD")
Red_Dun_Reef_2010_comm_count$Year <- ('2010')
Red_Dun_Reef_2010_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_2010_comm_count$Type <- "Commercial"


Red_Dun_Reef_2010_total_count <- rbind(Red_Dun_Reef_2010_herb_count, Red_Dun_Reef_2010_comm_count)


Red_Dun_Reef_2011 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_2011.xls")


Red_Dun_Reef_2011_herb <- merge(Red_Dun_Reef_2011, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2011_herb_count <- count(Red_Dun_Reef_2011_herb, vars = "SPECIES_CD")
Red_Dun_Reef_2011_herb_count$Year <- ('2011')
Red_Dun_Reef_2011_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_2011_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_2011_comm <- merge(Red_Dun_Reef_2011, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2011_comm_count <- count(Red_Dun_Reef_2011_comm, vars = "SPECIES_CD")
Red_Dun_Reef_2011_comm_count$Year <- ('2011')
Red_Dun_Reef_2011_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_2011_comm_count$Type <- "Commercial"


Red_Dun_Reef_2011_total_count <- rbind(Red_Dun_Reef_2011_herb_count, Red_Dun_Reef_2011_comm_count)





Red_Dun_Reef_2012 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_2012.xls")


Red_Dun_Reef_2012_herb <- merge(Red_Dun_Reef_2012, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2012_herb_count <- count(Red_Dun_Reef_2012_herb, vars = "SPECIES_CD")
Red_Dun_Reef_2012_herb_count$Year <- ('2012')
Red_Dun_Reef_2012_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_2012_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_2012_comm <- merge(Red_Dun_Reef_2012, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2012_comm_count <- count(Red_Dun_Reef_2012_comm, vars = "SPECIES_CD")
Red_Dun_Reef_2012_comm_count$Year <- ('2012')
Red_Dun_Reef_2012_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_2012_comm_count$Type <- "Commercial"


Red_Dun_Reef_2012_total_count <- rbind(Red_Dun_Reef_2012_herb_count, Red_Dun_Reef_2012_comm_count)



Red_Dun_Reef_2014 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_2014.xls")


Red_Dun_Reef_2014_herb <- merge(Red_Dun_Reef_2014, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2014_herb_count <- count(Red_Dun_Reef_2014_herb, vars = "SPECIES_CD")
Red_Dun_Reef_2014_herb_count$Year <- ('2014')
Red_Dun_Reef_2014_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_2014_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_2014_comm <- merge(Red_Dun_Reef_2014, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2014_comm_count <- count(Red_Dun_Reef_2014_comm, vars = "SPECIES_CD")
Red_Dun_Reef_2014_comm_count$Year <- ('2014')
Red_Dun_Reef_2014_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_2014_comm_count$Type <- "Commercial"


Red_Dun_Reef_2014_total_count <- rbind(Red_Dun_Reef_2014_herb_count, Red_Dun_Reef_2014_comm_count)




Red_Dun_Reef_2016 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_2016.xls")


Red_Dun_Reef_2016_herb <- merge(Red_Dun_Reef_2016, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2016_herb_count <- count(Red_Dun_Reef_2016_herb, vars = "SPECIES_CD")
Red_Dun_Reef_2016_herb_count$Year <- ('2016')
Red_Dun_Reef_2016_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_2016_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_2016_comm <- merge(Red_Dun_Reef_2016, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2016_comm_count <- count(Red_Dun_Reef_2016_comm, vars = "SPECIES_CD")
Red_Dun_Reef_2016_comm_count$Year <- ('2016')
Red_Dun_Reef_2016_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_2016_comm_count$Type <- "Commercial"


Red_Dun_Reef_2016_total_count <- rbind(Red_Dun_Reef_2016_herb_count, Red_Dun_Reef_2016_comm_count)



Red_Dun_Reef_2018 <- import("LK/Red_Dun_Reef/data/Red_Dun_Reef_2018.xls")


Red_Dun_Reef_2018_herb <- merge(Red_Dun_Reef_2018, Herb, by = c("SPECIES_CD"))
Red_Dun_Reef_2018_herb_count <- count(Red_Dun_Reef_2018_herb, vars = "SPECIES_CD")
Red_Dun_Reef_2018_herb_count$Year <- ('2018')
Red_Dun_Reef_2018_herb_count$sitename <- ('Red Dun')
Red_Dun_Reef_2018_herb_count$Type <- "Herbivorous"

Red_Dun_Reef_2018_comm <- merge(Red_Dun_Reef_2018, Comm, by = c("SPECIES_CD"))
Red_Dun_Reef_2018_comm_count <- count(Red_Dun_Reef_2018_comm, vars = "SPECIES_CD")
Red_Dun_Reef_2018_comm_count$Year <- ('2018')
Red_Dun_Reef_2018_comm_count$sitename <- ('Red Dun')
Red_Dun_Reef_2018_comm_count$Type <- "Commercial"


Red_Dun_Reef_2018_total_count <- rbind(Red_Dun_Reef_2018_herb_count, Red_Dun_Reef_2018_comm_count)





Red_Dun_Reef_all <- rbind(Red_Dun_Reef_1999_total_count,Red_Dun_Reef_2000_total_count,Red_Dun_Reef_2001_total_count,Red_Dun_Reef_2002_total_count,Red_Dun_Reef_2003_total_count,Red_Dun_Reef_2004_total_count,Red_Dun_Reef_2005_total_count,Red_Dun_Reef_2006_total_count,Red_Dun_Reef_2007_total_count,Red_Dun_Reef_2008_total_count,Red_Dun_Reef_2009_total_count, Red_Dun_Reef_2010_total_count,Red_Dun_Reef_2011_total_count, Red_Dun_Reef_2012_total_count, Red_Dun_Reef_2014_total_count, Red_Dun_Reef_2016_total_count,Red_Dun_Reef_2018_total_count)


export(Red_Dun_Reef_all, "LK/Red_Dun_Reef/data/Red_Dun_Reef_count_herb_comm.csv")








Rock_Key_Deep_1999 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_1999.xls")


Rock_Key_Deep_1999_herb <- merge(Rock_Key_Deep_1999, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_1999_herb_count <- count(Rock_Key_Deep_1999_herb, vars = "SPECIES_CD")
Rock_Key_Deep_1999_herb_count$Year <- ('1999')
Rock_Key_Deep_1999_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_1999_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_1999_comm <- merge(Rock_Key_Deep_1999, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_1999_comm_count <- count(Rock_Key_Deep_1999_comm, vars = "SPECIES_CD")
Rock_Key_Deep_1999_comm_count$Year <- ('1999')
Rock_Key_Deep_1999_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_1999_comm_count$Type <- "Commercial"


Rock_Key_Deep_1999_total_count <- rbind(Rock_Key_Deep_1999_herb_count, Rock_Key_Deep_1999_comm_count)




Rock_Key_Deep_2000 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_2000.xls")


Rock_Key_Deep_2000_herb <- merge(Rock_Key_Deep_2000, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2000_herb_count <- count(Rock_Key_Deep_2000_herb, vars = "SPECIES_CD")
Rock_Key_Deep_2000_herb_count$Year <- ('2000')
Rock_Key_Deep_2000_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2000_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_2000_comm <- merge(Rock_Key_Deep_2000, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2000_comm_count <- count(Rock_Key_Deep_2000_comm, vars = "SPECIES_CD")
Rock_Key_Deep_2000_comm_count$Year <- ('2000')
Rock_Key_Deep_2000_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2000_comm_count$Type <- "Commercial"


Rock_Key_Deep_2000_total_count <- rbind(Rock_Key_Deep_2000_herb_count, Rock_Key_Deep_2000_comm_count)


Rock_Key_Deep_2001 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_2001.xls")


Rock_Key_Deep_2001_herb <- merge(Rock_Key_Deep_2001, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2001_herb_count <- count(Rock_Key_Deep_2001_herb, vars = "SPECIES_CD")
Rock_Key_Deep_2001_herb_count$Year <- ('2001')
Rock_Key_Deep_2001_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2001_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_2001_comm <- merge(Rock_Key_Deep_2001, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2001_comm_count <- count(Rock_Key_Deep_2001_comm, vars = "SPECIES_CD")
Rock_Key_Deep_2001_comm_count$Year <- ('2001')
Rock_Key_Deep_2001_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2001_comm_count$Type <- "Commercial"


Rock_Key_Deep_2001_total_count <- rbind(Rock_Key_Deep_2001_herb_count, Rock_Key_Deep_2001_comm_count)


Rock_Key_Deep_2002 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_2002.xls")


Rock_Key_Deep_2002_herb <- merge(Rock_Key_Deep_2002, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2002_herb_count <- count(Rock_Key_Deep_2002_herb, vars = "SPECIES_CD")
Rock_Key_Deep_2002_herb_count$Year <- ('2002')
Rock_Key_Deep_2002_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2002_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_2002_comm <- merge(Rock_Key_Deep_2002, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2002_comm_count <- count(Rock_Key_Deep_2002_comm, vars = "SPECIES_CD")
Rock_Key_Deep_2002_comm_count$Year <- ('2002')
Rock_Key_Deep_2002_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2002_comm_count$Type <- "Commercial"


Rock_Key_Deep_2002_total_count <- rbind(Rock_Key_Deep_2002_herb_count, Rock_Key_Deep_2002_comm_count)



Rock_Key_Deep_2003 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_2003.xls")


Rock_Key_Deep_2003_herb <- merge(Rock_Key_Deep_2003, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2003_herb_count <- count(Rock_Key_Deep_2003_herb, vars = "SPECIES_CD")
Rock_Key_Deep_2003_herb_count$Year <- ('2003')
Rock_Key_Deep_2003_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2003_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_2003_comm <- merge(Rock_Key_Deep_2003, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2003_comm_count <- count(Rock_Key_Deep_2003_comm, vars = "SPECIES_CD")
Rock_Key_Deep_2003_comm_count$Year <- ('2003')
Rock_Key_Deep_2003_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2003_comm_count$Type <- "Commercial"


Rock_Key_Deep_2003_total_count <- rbind(Rock_Key_Deep_2003_herb_count, Rock_Key_Deep_2003_comm_count)




Rock_Key_Deep_2004 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_2004.xls")


Rock_Key_Deep_2004_herb <- merge(Rock_Key_Deep_2004, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2004_herb_count <- count(Rock_Key_Deep_2004_herb, vars = "SPECIES_CD")
Rock_Key_Deep_2004_herb_count$Year <- ('2004')
Rock_Key_Deep_2004_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2004_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_2004_comm <- merge(Rock_Key_Deep_2004, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2004_comm_count <- count(Rock_Key_Deep_2004_comm, vars = "SPECIES_CD")
Rock_Key_Deep_2004_comm_count$Year <- ('2004')
Rock_Key_Deep_2004_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2004_comm_count$Type <- "Commercial"


Rock_Key_Deep_2004_total_count <- rbind(Rock_Key_Deep_2004_herb_count, Rock_Key_Deep_2004_comm_count)


Rock_Key_Deep_2005 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_2005.xls")


Rock_Key_Deep_2005_herb <- merge(Rock_Key_Deep_2005, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2005_herb_count <- count(Rock_Key_Deep_2005_herb, vars = "SPECIES_CD")
Rock_Key_Deep_2005_herb_count$Year <- ('2005')
Rock_Key_Deep_2005_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2005_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_2005_comm <- merge(Rock_Key_Deep_2005, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2005_comm_count <- count(Rock_Key_Deep_2005_comm, vars = "SPECIES_CD")
Rock_Key_Deep_2005_comm_count$Year <- ('2005')
Rock_Key_Deep_2005_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2005_comm_count$Type <- "Commercial"


Rock_Key_Deep_2005_total_count <- rbind(Rock_Key_Deep_2005_herb_count, Rock_Key_Deep_2005_comm_count)




Rock_Key_Deep_2006 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_2006.xls")


Rock_Key_Deep_2006_herb <- merge(Rock_Key_Deep_2006, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2006_herb_count <- count(Rock_Key_Deep_2006_herb, vars = "SPECIES_CD")
Rock_Key_Deep_2006_herb_count$Year <- ('2006')
Rock_Key_Deep_2006_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2006_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_2006_comm <- merge(Rock_Key_Deep_2006, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2006_comm_count <- count(Rock_Key_Deep_2006_comm, vars = "SPECIES_CD")
Rock_Key_Deep_2006_comm_count$Year <- ('2006')
Rock_Key_Deep_2006_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2006_comm_count$Type <- "Commercial"


Rock_Key_Deep_2006_total_count <- rbind(Rock_Key_Deep_2006_herb_count, Rock_Key_Deep_2006_comm_count)



Rock_Key_Deep_2007 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_2007.xls")


Rock_Key_Deep_2007_herb <- merge(Rock_Key_Deep_2007, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2007_herb_count <- count(Rock_Key_Deep_2007_herb, vars = "SPECIES_CD")
Rock_Key_Deep_2007_herb_count$Year <- ('2007')
Rock_Key_Deep_2007_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2007_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_2007_comm <- merge(Rock_Key_Deep_2007, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2007_comm_count <- count(Rock_Key_Deep_2007_comm, vars = "SPECIES_CD")
Rock_Key_Deep_2007_comm_count$Year <- ('2007')
Rock_Key_Deep_2007_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2007_comm_count$Type <- "Commercial"


Rock_Key_Deep_2007_total_count <- rbind(Rock_Key_Deep_2007_herb_count, Rock_Key_Deep_2007_comm_count)




Rock_Key_Deep_2008 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_2008.xls")


Rock_Key_Deep_2008_herb <- merge(Rock_Key_Deep_2008, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2008_herb_count <- count(Rock_Key_Deep_2008_herb, vars = "SPECIES_CD")
Rock_Key_Deep_2008_herb_count$Year <- ('2008')
Rock_Key_Deep_2008_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2008_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_2008_comm <- merge(Rock_Key_Deep_2008, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2008_comm_count <- count(Rock_Key_Deep_2008_comm, vars = "SPECIES_CD")
Rock_Key_Deep_2008_comm_count$Year <- ('2008')
Rock_Key_Deep_2008_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2008_comm_count$Type <- "Commercial"


Rock_Key_Deep_2008_total_count <- rbind(Rock_Key_Deep_2008_herb_count, Rock_Key_Deep_2008_comm_count)



Rock_Key_Deep_2009 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_2009.xls")


Rock_Key_Deep_2009_herb <- merge(Rock_Key_Deep_2009, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2009_herb_count <- count(Rock_Key_Deep_2009_herb, vars = "SPECIES_CD")
Rock_Key_Deep_2009_herb_count$Year <- ('2009')
Rock_Key_Deep_2009_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2009_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_2009_comm <- merge(Rock_Key_Deep_2009, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2009_comm_count <- count(Rock_Key_Deep_2009_comm, vars = "SPECIES_CD")
Rock_Key_Deep_2009_comm_count$Year <- ('2009')
Rock_Key_Deep_2009_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2009_comm_count$Type <- "Commercial"


Rock_Key_Deep_2009_total_count <- rbind(Rock_Key_Deep_2009_herb_count, Rock_Key_Deep_2009_comm_count)





Rock_Key_Deep_2010 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_2010.xls")


Rock_Key_Deep_2010_herb <- merge(Rock_Key_Deep_2010, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2010_herb_count <- count(Rock_Key_Deep_2010_herb, vars = "SPECIES_CD")
Rock_Key_Deep_2010_herb_count$Year <- ('2010')
Rock_Key_Deep_2010_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2010_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_2010_comm <- merge(Rock_Key_Deep_2010, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2010_comm_count <- count(Rock_Key_Deep_2010_comm, vars = "SPECIES_CD")
Rock_Key_Deep_2010_comm_count$Year <- ('2010')
Rock_Key_Deep_2010_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2010_comm_count$Type <- "Commercial"


Rock_Key_Deep_2010_total_count <- rbind(Rock_Key_Deep_2010_herb_count, Rock_Key_Deep_2010_comm_count)


Rock_Key_Deep_2011 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_2011.xls")


Rock_Key_Deep_2011_herb <- merge(Rock_Key_Deep_2011, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2011_herb_count <- count(Rock_Key_Deep_2011_herb, vars = "SPECIES_CD")
Rock_Key_Deep_2011_herb_count$Year <- ('2011')
Rock_Key_Deep_2011_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2011_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_2011_comm <- merge(Rock_Key_Deep_2011, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2011_comm_count <- count(Rock_Key_Deep_2011_comm, vars = "SPECIES_CD")
Rock_Key_Deep_2011_comm_count$Year <- ('2011')
Rock_Key_Deep_2011_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2011_comm_count$Type <- "Commercial"


Rock_Key_Deep_2011_total_count <- rbind(Rock_Key_Deep_2011_herb_count, Rock_Key_Deep_2011_comm_count)





Rock_Key_Deep_2012 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_2012.xls")


Rock_Key_Deep_2012_herb <- merge(Rock_Key_Deep_2012, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2012_herb_count <- count(Rock_Key_Deep_2012_herb, vars = "SPECIES_CD")
Rock_Key_Deep_2012_herb_count$Year <- ('2012')
Rock_Key_Deep_2012_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2012_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_2012_comm <- merge(Rock_Key_Deep_2012, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2012_comm_count <- count(Rock_Key_Deep_2012_comm, vars = "SPECIES_CD")
Rock_Key_Deep_2012_comm_count$Year <- ('2012')
Rock_Key_Deep_2012_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2012_comm_count$Type <- "Commercial"


Rock_Key_Deep_2012_total_count <- rbind(Rock_Key_Deep_2012_herb_count, Rock_Key_Deep_2012_comm_count)



Rock_Key_Deep_2014 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_2014.xls")


Rock_Key_Deep_2014_herb <- merge(Rock_Key_Deep_2014, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2014_herb_count <- count(Rock_Key_Deep_2014_herb, vars = "SPECIES_CD")
Rock_Key_Deep_2014_herb_count$Year <- ('2014')
Rock_Key_Deep_2014_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2014_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_2014_comm <- merge(Rock_Key_Deep_2014, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2014_comm_count <- count(Rock_Key_Deep_2014_comm, vars = "SPECIES_CD")
Rock_Key_Deep_2014_comm_count$Year <- ('2014')
Rock_Key_Deep_2014_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2014_comm_count$Type <- "Commercial"


Rock_Key_Deep_2014_total_count <- rbind(Rock_Key_Deep_2014_herb_count, Rock_Key_Deep_2014_comm_count)




Rock_Key_Deep_2016 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_2016.xls")


Rock_Key_Deep_2016_herb <- merge(Rock_Key_Deep_2016, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2016_herb_count <- count(Rock_Key_Deep_2016_herb, vars = "SPECIES_CD")
Rock_Key_Deep_2016_herb_count$Year <- ('2016')
Rock_Key_Deep_2016_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2016_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_2016_comm <- merge(Rock_Key_Deep_2016, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2016_comm_count <- count(Rock_Key_Deep_2016_comm, vars = "SPECIES_CD")
Rock_Key_Deep_2016_comm_count$Year <- ('2016')
Rock_Key_Deep_2016_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2016_comm_count$Type <- "Commercial"


Rock_Key_Deep_2016_total_count <- rbind(Rock_Key_Deep_2016_herb_count, Rock_Key_Deep_2016_comm_count)



Rock_Key_Deep_2018 <- import("LK/Rock_Key_Deep/data/Rock_Key_Deep_2018.xls")


Rock_Key_Deep_2018_herb <- merge(Rock_Key_Deep_2018, Herb, by = c("SPECIES_CD"))
Rock_Key_Deep_2018_herb_count <- count(Rock_Key_Deep_2018_herb, vars = "SPECIES_CD")
Rock_Key_Deep_2018_herb_count$Year <- ('2018')
Rock_Key_Deep_2018_herb_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2018_herb_count$Type <- "Herbivorous"

Rock_Key_Deep_2018_comm <- merge(Rock_Key_Deep_2018, Comm, by = c("SPECIES_CD"))
Rock_Key_Deep_2018_comm_count <- count(Rock_Key_Deep_2018_comm, vars = "SPECIES_CD")
Rock_Key_Deep_2018_comm_count$Year <- ('2018')
Rock_Key_Deep_2018_comm_count$sitename <- ('Rock Key Deep')
Rock_Key_Deep_2018_comm_count$Type <- "Commercial"


Rock_Key_Deep_2018_total_count <- rbind(Rock_Key_Deep_2018_herb_count, Rock_Key_Deep_2018_comm_count)





Rock_Key_Deep_all <- rbind(Rock_Key_Deep_1999_total_count,Rock_Key_Deep_2000_total_count,Rock_Key_Deep_2001_total_count,Rock_Key_Deep_2002_total_count,Rock_Key_Deep_2003_total_count,Rock_Key_Deep_2004_total_count,Rock_Key_Deep_2005_total_count,Rock_Key_Deep_2006_total_count,Rock_Key_Deep_2007_total_count,Rock_Key_Deep_2008_total_count,Rock_Key_Deep_2009_total_count, Rock_Key_Deep_2010_total_count,Rock_Key_Deep_2011_total_count, Rock_Key_Deep_2012_total_count, Rock_Key_Deep_2014_total_count, Rock_Key_Deep_2016_total_count,Rock_Key_Deep_2018_total_count)


export(Rock_Key_Deep_all, "LK/Rock_Key_Deep/data/Rock_Key_Deep_count_herb_comm.csv")




Rock_Key_Shallow_1999 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_1999.xls")


Rock_Key_Shallow_1999_herb <- merge(Rock_Key_Shallow_1999, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_1999_herb_count <- count(Rock_Key_Shallow_1999_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_1999_herb_count$Year <- ('1999')
Rock_Key_Shallow_1999_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_1999_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_1999_comm <- merge(Rock_Key_Shallow_1999, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_1999_comm_count <- count(Rock_Key_Shallow_1999_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_1999_comm_count$Year <- ('1999')
Rock_Key_Shallow_1999_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_1999_comm_count$Type <- "Commercial"


Rock_Key_Shallow_1999_total_count <- rbind(Rock_Key_Shallow_1999_herb_count, Rock_Key_Shallow_1999_comm_count)




Rock_Key_Shallow_2000 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_2000.xls")


Rock_Key_Shallow_2000_herb <- merge(Rock_Key_Shallow_2000, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2000_herb_count <- count(Rock_Key_Shallow_2000_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_2000_herb_count$Year <- ('2000')
Rock_Key_Shallow_2000_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2000_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_2000_comm <- merge(Rock_Key_Shallow_2000, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2000_comm_count <- count(Rock_Key_Shallow_2000_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_2000_comm_count$Year <- ('2000')
Rock_Key_Shallow_2000_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2000_comm_count$Type <- "Commercial"


Rock_Key_Shallow_2000_total_count <- rbind(Rock_Key_Shallow_2000_herb_count, Rock_Key_Shallow_2000_comm_count)


Rock_Key_Shallow_2001 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_2001.xls")


Rock_Key_Shallow_2001_herb <- merge(Rock_Key_Shallow_2001, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2001_herb_count <- count(Rock_Key_Shallow_2001_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_2001_herb_count$Year <- ('2001')
Rock_Key_Shallow_2001_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2001_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_2001_comm <- merge(Rock_Key_Shallow_2001, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2001_comm_count <- count(Rock_Key_Shallow_2001_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_2001_comm_count$Year <- ('2001')
Rock_Key_Shallow_2001_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2001_comm_count$Type <- "Commercial"


Rock_Key_Shallow_2001_total_count <- rbind(Rock_Key_Shallow_2001_herb_count, Rock_Key_Shallow_2001_comm_count)


Rock_Key_Shallow_2002 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_2002.xls")


Rock_Key_Shallow_2002_herb <- merge(Rock_Key_Shallow_2002, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2002_herb_count <- count(Rock_Key_Shallow_2002_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_2002_herb_count$Year <- ('2002')
Rock_Key_Shallow_2002_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2002_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_2002_comm <- merge(Rock_Key_Shallow_2002, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2002_comm_count <- count(Rock_Key_Shallow_2002_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_2002_comm_count$Year <- ('2002')
Rock_Key_Shallow_2002_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2002_comm_count$Type <- "Commercial"


Rock_Key_Shallow_2002_total_count <- rbind(Rock_Key_Shallow_2002_herb_count, Rock_Key_Shallow_2002_comm_count)



Rock_Key_Shallow_2003 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_2003.xls")


Rock_Key_Shallow_2003_herb <- merge(Rock_Key_Shallow_2003, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2003_herb_count <- count(Rock_Key_Shallow_2003_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_2003_herb_count$Year <- ('2003')
Rock_Key_Shallow_2003_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2003_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_2003_comm <- merge(Rock_Key_Shallow_2003, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2003_comm_count <- count(Rock_Key_Shallow_2003_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_2003_comm_count$Year <- ('2003')
Rock_Key_Shallow_2003_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2003_comm_count$Type <- "Commercial"


Rock_Key_Shallow_2003_total_count <- rbind(Rock_Key_Shallow_2003_herb_count, Rock_Key_Shallow_2003_comm_count)




Rock_Key_Shallow_2004 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_2004.xls")


Rock_Key_Shallow_2004_herb <- merge(Rock_Key_Shallow_2004, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2004_herb_count <- count(Rock_Key_Shallow_2004_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_2004_herb_count$Year <- ('2004')
Rock_Key_Shallow_2004_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2004_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_2004_comm <- merge(Rock_Key_Shallow_2004, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2004_comm_count <- count(Rock_Key_Shallow_2004_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_2004_comm_count$Year <- ('2004')
Rock_Key_Shallow_2004_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2004_comm_count$Type <- "Commercial"


Rock_Key_Shallow_2004_total_count <- rbind(Rock_Key_Shallow_2004_herb_count, Rock_Key_Shallow_2004_comm_count)


Rock_Key_Shallow_2005 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_2005.xls")


Rock_Key_Shallow_2005_herb <- merge(Rock_Key_Shallow_2005, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2005_herb_count <- count(Rock_Key_Shallow_2005_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_2005_herb_count$Year <- ('2005')
Rock_Key_Shallow_2005_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2005_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_2005_comm <- merge(Rock_Key_Shallow_2005, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2005_comm_count <- count(Rock_Key_Shallow_2005_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_2005_comm_count$Year <- ('2005')
Rock_Key_Shallow_2005_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2005_comm_count$Type <- "Commercial"


Rock_Key_Shallow_2005_total_count <- rbind(Rock_Key_Shallow_2005_herb_count, Rock_Key_Shallow_2005_comm_count)




Rock_Key_Shallow_2006 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_2006.xls")


Rock_Key_Shallow_2006_herb <- merge(Rock_Key_Shallow_2006, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2006_herb_count <- count(Rock_Key_Shallow_2006_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_2006_herb_count$Year <- ('2006')
Rock_Key_Shallow_2006_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2006_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_2006_comm <- merge(Rock_Key_Shallow_2006, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2006_comm_count <- count(Rock_Key_Shallow_2006_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_2006_comm_count$Year <- ('2006')
Rock_Key_Shallow_2006_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2006_comm_count$Type <- "Commercial"


Rock_Key_Shallow_2006_total_count <- rbind(Rock_Key_Shallow_2006_herb_count, Rock_Key_Shallow_2006_comm_count)



Rock_Key_Shallow_2007 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_2007.xls")


Rock_Key_Shallow_2007_herb <- merge(Rock_Key_Shallow_2007, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2007_herb_count <- count(Rock_Key_Shallow_2007_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_2007_herb_count$Year <- ('2007')
Rock_Key_Shallow_2007_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2007_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_2007_comm <- merge(Rock_Key_Shallow_2007, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2007_comm_count <- count(Rock_Key_Shallow_2007_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_2007_comm_count$Year <- ('2007')
Rock_Key_Shallow_2007_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2007_comm_count$Type <- "Commercial"


Rock_Key_Shallow_2007_total_count <- rbind(Rock_Key_Shallow_2007_herb_count, Rock_Key_Shallow_2007_comm_count)




Rock_Key_Shallow_2008 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_2008.xls")


Rock_Key_Shallow_2008_herb <- merge(Rock_Key_Shallow_2008, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2008_herb_count <- count(Rock_Key_Shallow_2008_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_2008_herb_count$Year <- ('2008')
Rock_Key_Shallow_2008_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2008_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_2008_comm <- merge(Rock_Key_Shallow_2008, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2008_comm_count <- count(Rock_Key_Shallow_2008_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_2008_comm_count$Year <- ('2008')
Rock_Key_Shallow_2008_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2008_comm_count$Type <- "Commercial"


Rock_Key_Shallow_2008_total_count <- rbind(Rock_Key_Shallow_2008_herb_count, Rock_Key_Shallow_2008_comm_count)



Rock_Key_Shallow_2009 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_2009.xls")


Rock_Key_Shallow_2009_herb <- merge(Rock_Key_Shallow_2009, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2009_herb_count <- count(Rock_Key_Shallow_2009_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_2009_herb_count$Year <- ('2009')
Rock_Key_Shallow_2009_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2009_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_2009_comm <- merge(Rock_Key_Shallow_2009, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2009_comm_count <- count(Rock_Key_Shallow_2009_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_2009_comm_count$Year <- ('2009')
Rock_Key_Shallow_2009_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2009_comm_count$Type <- "Commercial"


Rock_Key_Shallow_2009_total_count <- rbind(Rock_Key_Shallow_2009_herb_count, Rock_Key_Shallow_2009_comm_count)





Rock_Key_Shallow_2010 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_2010.xls")


Rock_Key_Shallow_2010_herb <- merge(Rock_Key_Shallow_2010, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2010_herb_count <- count(Rock_Key_Shallow_2010_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_2010_herb_count$Year <- ('2010')
Rock_Key_Shallow_2010_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2010_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_2010_comm <- merge(Rock_Key_Shallow_2010, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2010_comm_count <- count(Rock_Key_Shallow_2010_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_2010_comm_count$Year <- ('2010')
Rock_Key_Shallow_2010_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2010_comm_count$Type <- "Commercial"


Rock_Key_Shallow_2010_total_count <- rbind(Rock_Key_Shallow_2010_herb_count, Rock_Key_Shallow_2010_comm_count)


Rock_Key_Shallow_2011 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_2011.xls")


Rock_Key_Shallow_2011_herb <- merge(Rock_Key_Shallow_2011, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2011_herb_count <- count(Rock_Key_Shallow_2011_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_2011_herb_count$Year <- ('2011')
Rock_Key_Shallow_2011_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2011_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_2011_comm <- merge(Rock_Key_Shallow_2011, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2011_comm_count <- count(Rock_Key_Shallow_2011_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_2011_comm_count$Year <- ('2011')
Rock_Key_Shallow_2011_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2011_comm_count$Type <- "Commercial"


Rock_Key_Shallow_2011_total_count <- rbind(Rock_Key_Shallow_2011_herb_count, Rock_Key_Shallow_2011_comm_count)





Rock_Key_Shallow_2012 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_2012.xls")


Rock_Key_Shallow_2012_herb <- merge(Rock_Key_Shallow_2012, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2012_herb_count <- count(Rock_Key_Shallow_2012_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_2012_herb_count$Year <- ('2012')
Rock_Key_Shallow_2012_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2012_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_2012_comm <- merge(Rock_Key_Shallow_2012, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2012_comm_count <- count(Rock_Key_Shallow_2012_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_2012_comm_count$Year <- ('2012')
Rock_Key_Shallow_2012_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2012_comm_count$Type <- "Commercial"


Rock_Key_Shallow_2012_total_count <- rbind(Rock_Key_Shallow_2012_herb_count, Rock_Key_Shallow_2012_comm_count)



Rock_Key_Shallow_2014 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_2014.xls")


Rock_Key_Shallow_2014_herb <- merge(Rock_Key_Shallow_2014, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2014_herb_count <- count(Rock_Key_Shallow_2014_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_2014_herb_count$Year <- ('2014')
Rock_Key_Shallow_2014_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2014_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_2014_comm <- merge(Rock_Key_Shallow_2014, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2014_comm_count <- count(Rock_Key_Shallow_2014_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_2014_comm_count$Year <- ('2014')
Rock_Key_Shallow_2014_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2014_comm_count$Type <- "Commercial"


Rock_Key_Shallow_2014_total_count <- rbind(Rock_Key_Shallow_2014_herb_count, Rock_Key_Shallow_2014_comm_count)




Rock_Key_Shallow_2016 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_2016.xls")


Rock_Key_Shallow_2016_herb <- merge(Rock_Key_Shallow_2016, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2016_herb_count <- count(Rock_Key_Shallow_2016_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_2016_herb_count$Year <- ('2016')
Rock_Key_Shallow_2016_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2016_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_2016_comm <- merge(Rock_Key_Shallow_2016, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2016_comm_count <- count(Rock_Key_Shallow_2016_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_2016_comm_count$Year <- ('2016')
Rock_Key_Shallow_2016_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2016_comm_count$Type <- "Commercial"


Rock_Key_Shallow_2016_total_count <- rbind(Rock_Key_Shallow_2016_herb_count, Rock_Key_Shallow_2016_comm_count)



Rock_Key_Shallow_2018 <- import("LK/Rock_Key_Shallow/data/Rock_Key_Shallow_2018.xls")


Rock_Key_Shallow_2018_herb <- merge(Rock_Key_Shallow_2018, Herb, by = c("SPECIES_CD"))
Rock_Key_Shallow_2018_herb_count <- count(Rock_Key_Shallow_2018_herb, vars = "SPECIES_CD")
Rock_Key_Shallow_2018_herb_count$Year <- ('2018')
Rock_Key_Shallow_2018_herb_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2018_herb_count$Type <- "Herbivorous"

Rock_Key_Shallow_2018_comm <- merge(Rock_Key_Shallow_2018, Comm, by = c("SPECIES_CD"))
Rock_Key_Shallow_2018_comm_count <- count(Rock_Key_Shallow_2018_comm, vars = "SPECIES_CD")
Rock_Key_Shallow_2018_comm_count$Year <- ('2018')
Rock_Key_Shallow_2018_comm_count$sitename <- ('Rock Key Shallow')
Rock_Key_Shallow_2018_comm_count$Type <- "Commercial"


Rock_Key_Shallow_2018_total_count <- rbind(Rock_Key_Shallow_2018_herb_count, Rock_Key_Shallow_2018_comm_count)





Rock_Key_Shallow_all <- rbind(Rock_Key_Shallow_1999_total_count,Rock_Key_Shallow_2000_total_count,Rock_Key_Shallow_2001_total_count,Rock_Key_Shallow_2002_total_count,Rock_Key_Shallow_2003_total_count,Rock_Key_Shallow_2004_total_count,Rock_Key_Shallow_2005_total_count,Rock_Key_Shallow_2006_total_count,Rock_Key_Shallow_2007_total_count,Rock_Key_Shallow_2008_total_count,Rock_Key_Shallow_2009_total_count, Rock_Key_Shallow_2010_total_count,Rock_Key_Shallow_2011_total_count, Rock_Key_Shallow_2012_total_count, Rock_Key_Shallow_2014_total_count, Rock_Key_Shallow_2016_total_count,Rock_Key_Shallow_2018_total_count)


export(Rock_Key_Shallow_all, "LK/Rock_Key_Shallow/data/Rock_Key_Shallow_count_herb_comm.csv")






Sand_Key_Deep_1999 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_1999.xls")


Sand_Key_Deep_1999_herb <- merge(Sand_Key_Deep_1999, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_1999_herb_count <- count(Sand_Key_Deep_1999_herb, vars = "SPECIES_CD")
Sand_Key_Deep_1999_herb_count$Year <- ('1999')
Sand_Key_Deep_1999_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_1999_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_1999_comm <- merge(Sand_Key_Deep_1999, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_1999_comm_count <- count(Sand_Key_Deep_1999_comm, vars = "SPECIES_CD")
Sand_Key_Deep_1999_comm_count$Year <- ('1999')
Sand_Key_Deep_1999_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_1999_comm_count$Type <- "Commercial"


Sand_Key_Deep_1999_total_count <- rbind(Sand_Key_Deep_1999_herb_count, Sand_Key_Deep_1999_comm_count)




Sand_Key_Deep_2000 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_2000.xls")


Sand_Key_Deep_2000_herb <- merge(Sand_Key_Deep_2000, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2000_herb_count <- count(Sand_Key_Deep_2000_herb, vars = "SPECIES_CD")
Sand_Key_Deep_2000_herb_count$Year <- ('2000')
Sand_Key_Deep_2000_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2000_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_2000_comm <- merge(Sand_Key_Deep_2000, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2000_comm_count <- count(Sand_Key_Deep_2000_comm, vars = "SPECIES_CD")
Sand_Key_Deep_2000_comm_count$Year <- ('2000')
Sand_Key_Deep_2000_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2000_comm_count$Type <- "Commercial"


Sand_Key_Deep_2000_total_count <- rbind(Sand_Key_Deep_2000_herb_count, Sand_Key_Deep_2000_comm_count)


Sand_Key_Deep_2001 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_2001.xls")


Sand_Key_Deep_2001_herb <- merge(Sand_Key_Deep_2001, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2001_herb_count <- count(Sand_Key_Deep_2001_herb, vars = "SPECIES_CD")
Sand_Key_Deep_2001_herb_count$Year <- ('2001')
Sand_Key_Deep_2001_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2001_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_2001_comm <- merge(Sand_Key_Deep_2001, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2001_comm_count <- count(Sand_Key_Deep_2001_comm, vars = "SPECIES_CD")
Sand_Key_Deep_2001_comm_count$Year <- ('2001')
Sand_Key_Deep_2001_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2001_comm_count$Type <- "Commercial"


Sand_Key_Deep_2001_total_count <- rbind(Sand_Key_Deep_2001_herb_count, Sand_Key_Deep_2001_comm_count)


Sand_Key_Deep_2002 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_2002.xls")


Sand_Key_Deep_2002_herb <- merge(Sand_Key_Deep_2002, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2002_herb_count <- count(Sand_Key_Deep_2002_herb, vars = "SPECIES_CD")
Sand_Key_Deep_2002_herb_count$Year <- ('2002')
Sand_Key_Deep_2002_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2002_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_2002_comm <- merge(Sand_Key_Deep_2002, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2002_comm_count <- count(Sand_Key_Deep_2002_comm, vars = "SPECIES_CD")
Sand_Key_Deep_2002_comm_count$Year <- ('2002')
Sand_Key_Deep_2002_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2002_comm_count$Type <- "Commercial"


Sand_Key_Deep_2002_total_count <- rbind(Sand_Key_Deep_2002_herb_count, Sand_Key_Deep_2002_comm_count)



Sand_Key_Deep_2003 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_2003.xls")


Sand_Key_Deep_2003_herb <- merge(Sand_Key_Deep_2003, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2003_herb_count <- count(Sand_Key_Deep_2003_herb, vars = "SPECIES_CD")
Sand_Key_Deep_2003_herb_count$Year <- ('2003')
Sand_Key_Deep_2003_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2003_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_2003_comm <- merge(Sand_Key_Deep_2003, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2003_comm_count <- count(Sand_Key_Deep_2003_comm, vars = "SPECIES_CD")
Sand_Key_Deep_2003_comm_count$Year <- ('2003')
Sand_Key_Deep_2003_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2003_comm_count$Type <- "Commercial"


Sand_Key_Deep_2003_total_count <- rbind(Sand_Key_Deep_2003_herb_count, Sand_Key_Deep_2003_comm_count)




Sand_Key_Deep_2004 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_2004.xls")


Sand_Key_Deep_2004_herb <- merge(Sand_Key_Deep_2004, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2004_herb_count <- count(Sand_Key_Deep_2004_herb, vars = "SPECIES_CD")
Sand_Key_Deep_2004_herb_count$Year <- ('2004')
Sand_Key_Deep_2004_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2004_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_2004_comm <- merge(Sand_Key_Deep_2004, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2004_comm_count <- count(Sand_Key_Deep_2004_comm, vars = "SPECIES_CD")
Sand_Key_Deep_2004_comm_count$Year <- ('2004')
Sand_Key_Deep_2004_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2004_comm_count$Type <- "Commercial"


Sand_Key_Deep_2004_total_count <- rbind(Sand_Key_Deep_2004_herb_count, Sand_Key_Deep_2004_comm_count)


Sand_Key_Deep_2005 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_2005.xls")


Sand_Key_Deep_2005_herb <- merge(Sand_Key_Deep_2005, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2005_herb_count <- count(Sand_Key_Deep_2005_herb, vars = "SPECIES_CD")
Sand_Key_Deep_2005_herb_count$Year <- ('2005')
Sand_Key_Deep_2005_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2005_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_2005_comm <- merge(Sand_Key_Deep_2005, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2005_comm_count <- count(Sand_Key_Deep_2005_comm, vars = "SPECIES_CD")
Sand_Key_Deep_2005_comm_count$Year <- ('2005')
Sand_Key_Deep_2005_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2005_comm_count$Type <- "Commercial"


Sand_Key_Deep_2005_total_count <- rbind(Sand_Key_Deep_2005_herb_count, Sand_Key_Deep_2005_comm_count)




Sand_Key_Deep_2006 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_2006.xls")


Sand_Key_Deep_2006_herb <- merge(Sand_Key_Deep_2006, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2006_herb_count <- count(Sand_Key_Deep_2006_herb, vars = "SPECIES_CD")
Sand_Key_Deep_2006_herb_count$Year <- ('2006')
Sand_Key_Deep_2006_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2006_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_2006_comm <- merge(Sand_Key_Deep_2006, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2006_comm_count <- count(Sand_Key_Deep_2006_comm, vars = "SPECIES_CD")
Sand_Key_Deep_2006_comm_count$Year <- ('2006')
Sand_Key_Deep_2006_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2006_comm_count$Type <- "Commercial"


Sand_Key_Deep_2006_total_count <- rbind(Sand_Key_Deep_2006_herb_count, Sand_Key_Deep_2006_comm_count)



Sand_Key_Deep_2007 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_2007.xls")


Sand_Key_Deep_2007_herb <- merge(Sand_Key_Deep_2007, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2007_herb_count <- count(Sand_Key_Deep_2007_herb, vars = "SPECIES_CD")
Sand_Key_Deep_2007_herb_count$Year <- ('2007')
Sand_Key_Deep_2007_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2007_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_2007_comm <- merge(Sand_Key_Deep_2007, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2007_comm_count <- count(Sand_Key_Deep_2007_comm, vars = "SPECIES_CD")
Sand_Key_Deep_2007_comm_count$Year <- ('2007')
Sand_Key_Deep_2007_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2007_comm_count$Type <- "Commercial"


Sand_Key_Deep_2007_total_count <- rbind(Sand_Key_Deep_2007_herb_count, Sand_Key_Deep_2007_comm_count)




Sand_Key_Deep_2008 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_2008.xls")


Sand_Key_Deep_2008_herb <- merge(Sand_Key_Deep_2008, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2008_herb_count <- count(Sand_Key_Deep_2008_herb, vars = "SPECIES_CD")
Sand_Key_Deep_2008_herb_count$Year <- ('2008')
Sand_Key_Deep_2008_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2008_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_2008_comm <- merge(Sand_Key_Deep_2008, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2008_comm_count <- count(Sand_Key_Deep_2008_comm, vars = "SPECIES_CD")
Sand_Key_Deep_2008_comm_count$Year <- ('2008')
Sand_Key_Deep_2008_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2008_comm_count$Type <- "Commercial"


Sand_Key_Deep_2008_total_count <- rbind(Sand_Key_Deep_2008_herb_count, Sand_Key_Deep_2008_comm_count)



Sand_Key_Deep_2009 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_2009.xls")


Sand_Key_Deep_2009_herb <- merge(Sand_Key_Deep_2009, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2009_herb_count <- count(Sand_Key_Deep_2009_herb, vars = "SPECIES_CD")
Sand_Key_Deep_2009_herb_count$Year <- ('2009')
Sand_Key_Deep_2009_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2009_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_2009_comm <- merge(Sand_Key_Deep_2009, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2009_comm_count <- count(Sand_Key_Deep_2009_comm, vars = "SPECIES_CD")
Sand_Key_Deep_2009_comm_count$Year <- ('2009')
Sand_Key_Deep_2009_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2009_comm_count$Type <- "Commercial"


Sand_Key_Deep_2009_total_count <- rbind(Sand_Key_Deep_2009_herb_count, Sand_Key_Deep_2009_comm_count)





Sand_Key_Deep_2010 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_2010.xls")


Sand_Key_Deep_2010_herb <- merge(Sand_Key_Deep_2010, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2010_herb_count <- count(Sand_Key_Deep_2010_herb, vars = "SPECIES_CD")
Sand_Key_Deep_2010_herb_count$Year <- ('2010')
Sand_Key_Deep_2010_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2010_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_2010_comm <- merge(Sand_Key_Deep_2010, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2010_comm_count <- count(Sand_Key_Deep_2010_comm, vars = "SPECIES_CD")
Sand_Key_Deep_2010_comm_count$Year <- ('2010')
Sand_Key_Deep_2010_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2010_comm_count$Type <- "Commercial"


Sand_Key_Deep_2010_total_count <- rbind(Sand_Key_Deep_2010_herb_count, Sand_Key_Deep_2010_comm_count)


Sand_Key_Deep_2011 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_2011.xls")


Sand_Key_Deep_2011_herb <- merge(Sand_Key_Deep_2011, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2011_herb_count <- count(Sand_Key_Deep_2011_herb, vars = "SPECIES_CD")
Sand_Key_Deep_2011_herb_count$Year <- ('2011')
Sand_Key_Deep_2011_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2011_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_2011_comm <- merge(Sand_Key_Deep_2011, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2011_comm_count <- count(Sand_Key_Deep_2011_comm, vars = "SPECIES_CD")
Sand_Key_Deep_2011_comm_count$Year <- ('2011')
Sand_Key_Deep_2011_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2011_comm_count$Type <- "Commercial"


Sand_Key_Deep_2011_total_count <- rbind(Sand_Key_Deep_2011_herb_count, Sand_Key_Deep_2011_comm_count)





Sand_Key_Deep_2012 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_2012.xls")


Sand_Key_Deep_2012_herb <- merge(Sand_Key_Deep_2012, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2012_herb_count <- count(Sand_Key_Deep_2012_herb, vars = "SPECIES_CD")
Sand_Key_Deep_2012_herb_count$Year <- ('2012')
Sand_Key_Deep_2012_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2012_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_2012_comm <- merge(Sand_Key_Deep_2012, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2012_comm_count <- count(Sand_Key_Deep_2012_comm, vars = "SPECIES_CD")
Sand_Key_Deep_2012_comm_count$Year <- ('2012')
Sand_Key_Deep_2012_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2012_comm_count$Type <- "Commercial"


Sand_Key_Deep_2012_total_count <- rbind(Sand_Key_Deep_2012_herb_count, Sand_Key_Deep_2012_comm_count)



Sand_Key_Deep_2014 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_2014.xls")


Sand_Key_Deep_2014_herb <- merge(Sand_Key_Deep_2014, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2014_herb_count <- count(Sand_Key_Deep_2014_herb, vars = "SPECIES_CD")
Sand_Key_Deep_2014_herb_count$Year <- ('2014')
Sand_Key_Deep_2014_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2014_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_2014_comm <- merge(Sand_Key_Deep_2014, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2014_comm_count <- count(Sand_Key_Deep_2014_comm, vars = "SPECIES_CD")
Sand_Key_Deep_2014_comm_count$Year <- ('2014')
Sand_Key_Deep_2014_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2014_comm_count$Type <- "Commercial"


Sand_Key_Deep_2014_total_count <- rbind(Sand_Key_Deep_2014_herb_count, Sand_Key_Deep_2014_comm_count)




Sand_Key_Deep_2016 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_2016.xls")


Sand_Key_Deep_2016_herb <- merge(Sand_Key_Deep_2016, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2016_herb_count <- count(Sand_Key_Deep_2016_herb, vars = "SPECIES_CD")
Sand_Key_Deep_2016_herb_count$Year <- ('2016')
Sand_Key_Deep_2016_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2016_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_2016_comm <- merge(Sand_Key_Deep_2016, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2016_comm_count <- count(Sand_Key_Deep_2016_comm, vars = "SPECIES_CD")
Sand_Key_Deep_2016_comm_count$Year <- ('2016')
Sand_Key_Deep_2016_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2016_comm_count$Type <- "Commercial"


Sand_Key_Deep_2016_total_count <- rbind(Sand_Key_Deep_2016_herb_count, Sand_Key_Deep_2016_comm_count)



Sand_Key_Deep_2018 <- import("LK/Sand_Key_Deep/data/Sand_Key_Deep_2018.xls")


Sand_Key_Deep_2018_herb <- merge(Sand_Key_Deep_2018, Herb, by = c("SPECIES_CD"))
Sand_Key_Deep_2018_herb_count <- count(Sand_Key_Deep_2018_herb, vars = "SPECIES_CD")
Sand_Key_Deep_2018_herb_count$Year <- ('2018')
Sand_Key_Deep_2018_herb_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2018_herb_count$Type <- "Herbivorous"

Sand_Key_Deep_2018_comm <- merge(Sand_Key_Deep_2018, Comm, by = c("SPECIES_CD"))
Sand_Key_Deep_2018_comm_count <- count(Sand_Key_Deep_2018_comm, vars = "SPECIES_CD")
Sand_Key_Deep_2018_comm_count$Year <- ('2018')
Sand_Key_Deep_2018_comm_count$sitename <- ('Sand Key Deep')
Sand_Key_Deep_2018_comm_count$Type <- "Commercial"


Sand_Key_Deep_2018_total_count <- rbind(Sand_Key_Deep_2018_herb_count, Sand_Key_Deep_2018_comm_count)





Sand_Key_Deep_all <- rbind(Sand_Key_Deep_1999_total_count,Sand_Key_Deep_2000_total_count,Sand_Key_Deep_2001_total_count,Sand_Key_Deep_2002_total_count,Sand_Key_Deep_2003_total_count,Sand_Key_Deep_2004_total_count,Sand_Key_Deep_2005_total_count,Sand_Key_Deep_2006_total_count,Sand_Key_Deep_2007_total_count,Sand_Key_Deep_2008_total_count,Sand_Key_Deep_2009_total_count, Sand_Key_Deep_2010_total_count,Sand_Key_Deep_2011_total_count, Sand_Key_Deep_2012_total_count, Sand_Key_Deep_2014_total_count, Sand_Key_Deep_2016_total_count,Sand_Key_Deep_2018_total_count)


export(Sand_Key_Deep_all, "LK/Sand_Key_Deep/data/Sand_Key_Deep_count_herb_comm.csv")





Sand_Key_Shallow_1999 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_1999.xls")


Sand_Key_Shallow_1999_herb <- merge(Sand_Key_Shallow_1999, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_1999_herb_count <- count(Sand_Key_Shallow_1999_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_1999_herb_count$Year <- ('1999')
Sand_Key_Shallow_1999_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_1999_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_1999_comm <- merge(Sand_Key_Shallow_1999, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_1999_comm_count <- count(Sand_Key_Shallow_1999_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_1999_comm_count$Year <- ('1999')
Sand_Key_Shallow_1999_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_1999_comm_count$Type <- "Commercial"


Sand_Key_Shallow_1999_total_count <- rbind(Sand_Key_Shallow_1999_herb_count, Sand_Key_Shallow_1999_comm_count)




Sand_Key_Shallow_2000 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_2000.xls")


Sand_Key_Shallow_2000_herb <- merge(Sand_Key_Shallow_2000, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2000_herb_count <- count(Sand_Key_Shallow_2000_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_2000_herb_count$Year <- ('2000')
Sand_Key_Shallow_2000_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2000_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_2000_comm <- merge(Sand_Key_Shallow_2000, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2000_comm_count <- count(Sand_Key_Shallow_2000_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_2000_comm_count$Year <- ('2000')
Sand_Key_Shallow_2000_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2000_comm_count$Type <- "Commercial"


Sand_Key_Shallow_2000_total_count <- rbind(Sand_Key_Shallow_2000_herb_count, Sand_Key_Shallow_2000_comm_count)


Sand_Key_Shallow_2001 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_2001.xls")


Sand_Key_Shallow_2001_herb <- merge(Sand_Key_Shallow_2001, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2001_herb_count <- count(Sand_Key_Shallow_2001_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_2001_herb_count$Year <- ('2001')
Sand_Key_Shallow_2001_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2001_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_2001_comm <- merge(Sand_Key_Shallow_2001, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2001_comm_count <- count(Sand_Key_Shallow_2001_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_2001_comm_count$Year <- ('2001')
Sand_Key_Shallow_2001_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2001_comm_count$Type <- "Commercial"


Sand_Key_Shallow_2001_total_count <- rbind(Sand_Key_Shallow_2001_herb_count, Sand_Key_Shallow_2001_comm_count)


Sand_Key_Shallow_2002 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_2002.xls")


Sand_Key_Shallow_2002_herb <- merge(Sand_Key_Shallow_2002, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2002_herb_count <- count(Sand_Key_Shallow_2002_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_2002_herb_count$Year <- ('2002')
Sand_Key_Shallow_2002_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2002_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_2002_comm <- merge(Sand_Key_Shallow_2002, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2002_comm_count <- count(Sand_Key_Shallow_2002_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_2002_comm_count$Year <- ('2002')
Sand_Key_Shallow_2002_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2002_comm_count$Type <- "Commercial"


Sand_Key_Shallow_2002_total_count <- rbind(Sand_Key_Shallow_2002_herb_count, Sand_Key_Shallow_2002_comm_count)



Sand_Key_Shallow_2003 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_2003.xls")


Sand_Key_Shallow_2003_herb <- merge(Sand_Key_Shallow_2003, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2003_herb_count <- count(Sand_Key_Shallow_2003_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_2003_herb_count$Year <- ('2003')
Sand_Key_Shallow_2003_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2003_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_2003_comm <- merge(Sand_Key_Shallow_2003, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2003_comm_count <- count(Sand_Key_Shallow_2003_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_2003_comm_count$Year <- ('2003')
Sand_Key_Shallow_2003_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2003_comm_count$Type <- "Commercial"


Sand_Key_Shallow_2003_total_count <- rbind(Sand_Key_Shallow_2003_herb_count, Sand_Key_Shallow_2003_comm_count)




Sand_Key_Shallow_2004 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_2004.xls")


Sand_Key_Shallow_2004_herb <- merge(Sand_Key_Shallow_2004, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2004_herb_count <- count(Sand_Key_Shallow_2004_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_2004_herb_count$Year <- ('2004')
Sand_Key_Shallow_2004_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2004_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_2004_comm <- merge(Sand_Key_Shallow_2004, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2004_comm_count <- count(Sand_Key_Shallow_2004_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_2004_comm_count$Year <- ('2004')
Sand_Key_Shallow_2004_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2004_comm_count$Type <- "Commercial"


Sand_Key_Shallow_2004_total_count <- rbind(Sand_Key_Shallow_2004_herb_count, Sand_Key_Shallow_2004_comm_count)


Sand_Key_Shallow_2005 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_2005.xls")


Sand_Key_Shallow_2005_herb <- merge(Sand_Key_Shallow_2005, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2005_herb_count <- count(Sand_Key_Shallow_2005_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_2005_herb_count$Year <- ('2005')
Sand_Key_Shallow_2005_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2005_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_2005_comm <- merge(Sand_Key_Shallow_2005, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2005_comm_count <- count(Sand_Key_Shallow_2005_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_2005_comm_count$Year <- ('2005')
Sand_Key_Shallow_2005_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2005_comm_count$Type <- "Commercial"


Sand_Key_Shallow_2005_total_count <- rbind(Sand_Key_Shallow_2005_herb_count, Sand_Key_Shallow_2005_comm_count)




Sand_Key_Shallow_2006 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_2006.xls")


Sand_Key_Shallow_2006_herb <- merge(Sand_Key_Shallow_2006, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2006_herb_count <- count(Sand_Key_Shallow_2006_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_2006_herb_count$Year <- ('2006')
Sand_Key_Shallow_2006_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2006_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_2006_comm <- merge(Sand_Key_Shallow_2006, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2006_comm_count <- count(Sand_Key_Shallow_2006_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_2006_comm_count$Year <- ('2006')
Sand_Key_Shallow_2006_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2006_comm_count$Type <- "Commercial"


Sand_Key_Shallow_2006_total_count <- rbind(Sand_Key_Shallow_2006_herb_count, Sand_Key_Shallow_2006_comm_count)



Sand_Key_Shallow_2007 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_2007.xls")


Sand_Key_Shallow_2007_herb <- merge(Sand_Key_Shallow_2007, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2007_herb_count <- count(Sand_Key_Shallow_2007_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_2007_herb_count$Year <- ('2007')
Sand_Key_Shallow_2007_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2007_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_2007_comm <- merge(Sand_Key_Shallow_2007, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2007_comm_count <- count(Sand_Key_Shallow_2007_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_2007_comm_count$Year <- ('2007')
Sand_Key_Shallow_2007_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2007_comm_count$Type <- "Commercial"


Sand_Key_Shallow_2007_total_count <- rbind(Sand_Key_Shallow_2007_herb_count, Sand_Key_Shallow_2007_comm_count)




Sand_Key_Shallow_2008 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_2008.xls")


Sand_Key_Shallow_2008_herb <- merge(Sand_Key_Shallow_2008, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2008_herb_count <- count(Sand_Key_Shallow_2008_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_2008_herb_count$Year <- ('2008')
Sand_Key_Shallow_2008_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2008_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_2008_comm <- merge(Sand_Key_Shallow_2008, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2008_comm_count <- count(Sand_Key_Shallow_2008_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_2008_comm_count$Year <- ('2008')
Sand_Key_Shallow_2008_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2008_comm_count$Type <- "Commercial"


Sand_Key_Shallow_2008_total_count <- rbind(Sand_Key_Shallow_2008_herb_count, Sand_Key_Shallow_2008_comm_count)



Sand_Key_Shallow_2009 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_2009.xls")


Sand_Key_Shallow_2009_herb <- merge(Sand_Key_Shallow_2009, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2009_herb_count <- count(Sand_Key_Shallow_2009_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_2009_herb_count$Year <- ('2009')
Sand_Key_Shallow_2009_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2009_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_2009_comm <- merge(Sand_Key_Shallow_2009, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2009_comm_count <- count(Sand_Key_Shallow_2009_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_2009_comm_count$Year <- ('2009')
Sand_Key_Shallow_2009_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2009_comm_count$Type <- "Commercial"


Sand_Key_Shallow_2009_total_count <- rbind(Sand_Key_Shallow_2009_herb_count, Sand_Key_Shallow_2009_comm_count)





Sand_Key_Shallow_2010 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_2010.xls")


Sand_Key_Shallow_2010_herb <- merge(Sand_Key_Shallow_2010, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2010_herb_count <- count(Sand_Key_Shallow_2010_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_2010_herb_count$Year <- ('2010')
Sand_Key_Shallow_2010_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2010_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_2010_comm <- merge(Sand_Key_Shallow_2010, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2010_comm_count <- count(Sand_Key_Shallow_2010_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_2010_comm_count$Year <- ('2010')
Sand_Key_Shallow_2010_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2010_comm_count$Type <- "Commercial"


Sand_Key_Shallow_2010_total_count <- rbind(Sand_Key_Shallow_2010_herb_count, Sand_Key_Shallow_2010_comm_count)


Sand_Key_Shallow_2011 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_2011.xls")


Sand_Key_Shallow_2011_herb <- merge(Sand_Key_Shallow_2011, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2011_herb_count <- count(Sand_Key_Shallow_2011_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_2011_herb_count$Year <- ('2011')
Sand_Key_Shallow_2011_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2011_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_2011_comm <- merge(Sand_Key_Shallow_2011, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2011_comm_count <- count(Sand_Key_Shallow_2011_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_2011_comm_count$Year <- ('2011')
Sand_Key_Shallow_2011_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2011_comm_count$Type <- "Commercial"


Sand_Key_Shallow_2011_total_count <- rbind(Sand_Key_Shallow_2011_herb_count, Sand_Key_Shallow_2011_comm_count)





Sand_Key_Shallow_2012 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_2012.xls")


Sand_Key_Shallow_2012_herb <- merge(Sand_Key_Shallow_2012, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2012_herb_count <- count(Sand_Key_Shallow_2012_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_2012_herb_count$Year <- ('2012')
Sand_Key_Shallow_2012_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2012_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_2012_comm <- merge(Sand_Key_Shallow_2012, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2012_comm_count <- count(Sand_Key_Shallow_2012_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_2012_comm_count$Year <- ('2012')
Sand_Key_Shallow_2012_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2012_comm_count$Type <- "Commercial"


Sand_Key_Shallow_2012_total_count <- rbind(Sand_Key_Shallow_2012_herb_count, Sand_Key_Shallow_2012_comm_count)



Sand_Key_Shallow_2014 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_2014.xls")


Sand_Key_Shallow_2014_herb <- merge(Sand_Key_Shallow_2014, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2014_herb_count <- count(Sand_Key_Shallow_2014_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_2014_herb_count$Year <- ('2014')
Sand_Key_Shallow_2014_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2014_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_2014_comm <- merge(Sand_Key_Shallow_2014, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2014_comm_count <- count(Sand_Key_Shallow_2014_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_2014_comm_count$Year <- ('2014')
Sand_Key_Shallow_2014_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2014_comm_count$Type <- "Commercial"


Sand_Key_Shallow_2014_total_count <- rbind(Sand_Key_Shallow_2014_herb_count, Sand_Key_Shallow_2014_comm_count)




Sand_Key_Shallow_2016 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_2016.xls")


Sand_Key_Shallow_2016_herb <- merge(Sand_Key_Shallow_2016, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2016_herb_count <- count(Sand_Key_Shallow_2016_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_2016_herb_count$Year <- ('2016')
Sand_Key_Shallow_2016_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2016_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_2016_comm <- merge(Sand_Key_Shallow_2016, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2016_comm_count <- count(Sand_Key_Shallow_2016_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_2016_comm_count$Year <- ('2016')
Sand_Key_Shallow_2016_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2016_comm_count$Type <- "Commercial"


Sand_Key_Shallow_2016_total_count <- rbind(Sand_Key_Shallow_2016_herb_count, Sand_Key_Shallow_2016_comm_count)



Sand_Key_Shallow_2018 <- import("LK/Sand_Key_Shallow/data/Sand_Key_Shallow_2018.xls")


Sand_Key_Shallow_2018_herb <- merge(Sand_Key_Shallow_2018, Herb, by = c("SPECIES_CD"))
Sand_Key_Shallow_2018_herb_count <- count(Sand_Key_Shallow_2018_herb, vars = "SPECIES_CD")
Sand_Key_Shallow_2018_herb_count$Year <- ('2018')
Sand_Key_Shallow_2018_herb_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2018_herb_count$Type <- "Herbivorous"

Sand_Key_Shallow_2018_comm <- merge(Sand_Key_Shallow_2018, Comm, by = c("SPECIES_CD"))
Sand_Key_Shallow_2018_comm_count <- count(Sand_Key_Shallow_2018_comm, vars = "SPECIES_CD")
Sand_Key_Shallow_2018_comm_count$Year <- ('2018')
Sand_Key_Shallow_2018_comm_count$sitename <- ('Sand Key Shallow')
Sand_Key_Shallow_2018_comm_count$Type <- "Commercial"


Sand_Key_Shallow_2018_total_count <- rbind(Sand_Key_Shallow_2018_herb_count, Sand_Key_Shallow_2018_comm_count)





Sand_Key_Shallow_all <- rbind(Sand_Key_Shallow_1999_total_count,Sand_Key_Shallow_2000_total_count,Sand_Key_Shallow_2001_total_count,Sand_Key_Shallow_2002_total_count,Sand_Key_Shallow_2003_total_count,Sand_Key_Shallow_2004_total_count,Sand_Key_Shallow_2005_total_count,Sand_Key_Shallow_2006_total_count,Sand_Key_Shallow_2007_total_count,Sand_Key_Shallow_2008_total_count,Sand_Key_Shallow_2009_total_count, Sand_Key_Shallow_2010_total_count,Sand_Key_Shallow_2011_total_count, Sand_Key_Shallow_2012_total_count, Sand_Key_Shallow_2014_total_count, Sand_Key_Shallow_2016_total_count,Sand_Key_Shallow_2018_total_count)


export(Sand_Key_Shallow_all, "LK/Sand_Key_Shallow/data/Sand_Key_Shallow_count_herb_comm.csv")









Smith_Shoal_1999 <- import("LK/Smith_Shoal/data/Smith_Shoal_1999.xls")


Smith_Shoal_1999_herb <- merge(Smith_Shoal_1999, Herb, by = c("SPECIES_CD"))
Smith_Shoal_1999_herb_count <- count(Smith_Shoal_1999_herb, vars = "SPECIES_CD")
Smith_Shoal_1999_herb_count$Year <- ('1999')
Smith_Shoal_1999_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_1999_herb_count$Type <- "Herbivorous"

Smith_Shoal_1999_comm <- merge(Smith_Shoal_1999, Comm, by = c("SPECIES_CD"))
Smith_Shoal_1999_comm_count <- count(Smith_Shoal_1999_comm, vars = "SPECIES_CD")
Smith_Shoal_1999_comm_count$Year <- ('1999')
Smith_Shoal_1999_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_1999_comm_count$Type <- "Commercial"


Smith_Shoal_1999_total_count <- rbind(Smith_Shoal_1999_herb_count, Smith_Shoal_1999_comm_count)




Smith_Shoal_2000 <- import("LK/Smith_Shoal/data/Smith_Shoal_2000.xls")


Smith_Shoal_2000_herb <- merge(Smith_Shoal_2000, Herb, by = c("SPECIES_CD"))
Smith_Shoal_2000_herb_count <- count(Smith_Shoal_2000_herb, vars = "SPECIES_CD")
Smith_Shoal_2000_herb_count$Year <- ('2000')
Smith_Shoal_2000_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_2000_herb_count$Type <- "Herbivorous"

Smith_Shoal_2000_comm <- merge(Smith_Shoal_2000, Comm, by = c("SPECIES_CD"))
Smith_Shoal_2000_comm_count <- count(Smith_Shoal_2000_comm, vars = "SPECIES_CD")
Smith_Shoal_2000_comm_count$Year <- ('2000')
Smith_Shoal_2000_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_2000_comm_count$Type <- "Commercial"


Smith_Shoal_2000_total_count <- rbind(Smith_Shoal_2000_herb_count, Smith_Shoal_2000_comm_count)


Smith_Shoal_2001 <- import("LK/Smith_Shoal/data/Smith_Shoal_2001.xls")


Smith_Shoal_2001_herb <- merge(Smith_Shoal_2001, Herb, by = c("SPECIES_CD"))
Smith_Shoal_2001_herb_count <- count(Smith_Shoal_2001_herb, vars = "SPECIES_CD")
Smith_Shoal_2001_herb_count$Year <- ('2001')
Smith_Shoal_2001_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_2001_herb_count$Type <- "Herbivorous"

Smith_Shoal_2001_comm <- merge(Smith_Shoal_2001, Comm, by = c("SPECIES_CD"))
Smith_Shoal_2001_comm_count <- count(Smith_Shoal_2001_comm, vars = "SPECIES_CD")
Smith_Shoal_2001_comm_count$Year <- ('2001')
Smith_Shoal_2001_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_2001_comm_count$Type <- "Commercial"


Smith_Shoal_2001_total_count <- rbind(Smith_Shoal_2001_herb_count, Smith_Shoal_2001_comm_count)


Smith_Shoal_2002 <- import("LK/Smith_Shoal/data/Smith_Shoal_2002.xls")


Smith_Shoal_2002_herb <- merge(Smith_Shoal_2002, Herb, by = c("SPECIES_CD"))
Smith_Shoal_2002_herb_count <- count(Smith_Shoal_2002_herb, vars = "SPECIES_CD")
Smith_Shoal_2002_herb_count$Year <- ('2002')
Smith_Shoal_2002_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_2002_herb_count$Type <- "Herbivorous"

Smith_Shoal_2002_comm <- merge(Smith_Shoal_2002, Comm, by = c("SPECIES_CD"))
Smith_Shoal_2002_comm_count <- count(Smith_Shoal_2002_comm, vars = "SPECIES_CD")
Smith_Shoal_2002_comm_count$Year <- ('2002')
Smith_Shoal_2002_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_2002_comm_count$Type <- "Commercial"


Smith_Shoal_2002_total_count <- rbind(Smith_Shoal_2002_herb_count, Smith_Shoal_2002_comm_count)



Smith_Shoal_2003 <- import("LK/Smith_Shoal/data/Smith_Shoal_2003.xls")


Smith_Shoal_2003_herb <- merge(Smith_Shoal_2003, Herb, by = c("SPECIES_CD"))
Smith_Shoal_2003_herb_count <- count(Smith_Shoal_2003_herb, vars = "SPECIES_CD")
Smith_Shoal_2003_herb_count$Year <- ('2003')
Smith_Shoal_2003_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_2003_herb_count$Type <- "Herbivorous"

Smith_Shoal_2003_comm <- merge(Smith_Shoal_2003, Comm, by = c("SPECIES_CD"))
Smith_Shoal_2003_comm_count <- count(Smith_Shoal_2003_comm, vars = "SPECIES_CD")
Smith_Shoal_2003_comm_count$Year <- ('2003')
Smith_Shoal_2003_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_2003_comm_count$Type <- "Commercial"


Smith_Shoal_2003_total_count <- rbind(Smith_Shoal_2003_herb_count, Smith_Shoal_2003_comm_count)




Smith_Shoal_2004 <- import("LK/Smith_Shoal/data/Smith_Shoal_2004.xls")


Smith_Shoal_2004_herb <- merge(Smith_Shoal_2004, Herb, by = c("SPECIES_CD"))
Smith_Shoal_2004_herb_count <- count(Smith_Shoal_2004_herb, vars = "SPECIES_CD")
Smith_Shoal_2004_herb_count$Year <- ('2004')
Smith_Shoal_2004_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_2004_herb_count$Type <- "Herbivorous"

Smith_Shoal_2004_comm <- merge(Smith_Shoal_2004, Comm, by = c("SPECIES_CD"))
Smith_Shoal_2004_comm_count <- count(Smith_Shoal_2004_comm, vars = "SPECIES_CD")
Smith_Shoal_2004_comm_count$Year <- ('2004')
Smith_Shoal_2004_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_2004_comm_count$Type <- "Commercial"


Smith_Shoal_2004_total_count <- rbind(Smith_Shoal_2004_herb_count, Smith_Shoal_2004_comm_count)


Smith_Shoal_2005 <- import("LK/Smith_Shoal/data/Smith_Shoal_2005.xls")


Smith_Shoal_2005_herb <- merge(Smith_Shoal_2005, Herb, by = c("SPECIES_CD"))
Smith_Shoal_2005_herb_count <- count(Smith_Shoal_2005_herb, vars = "SPECIES_CD")
Smith_Shoal_2005_herb_count$Year <- ('2005')
Smith_Shoal_2005_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_2005_herb_count$Type <- "Herbivorous"

Smith_Shoal_2005_comm <- merge(Smith_Shoal_2005, Comm, by = c("SPECIES_CD"))
Smith_Shoal_2005_comm_count <- count(Smith_Shoal_2005_comm, vars = "SPECIES_CD")
Smith_Shoal_2005_comm_count$Year <- ('2005')
Smith_Shoal_2005_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_2005_comm_count$Type <- "Commercial"


Smith_Shoal_2005_total_count <- rbind(Smith_Shoal_2005_herb_count, Smith_Shoal_2005_comm_count)




Smith_Shoal_2006 <- import("LK/Smith_Shoal/data/Smith_Shoal_2006.xls")


Smith_Shoal_2006_herb <- merge(Smith_Shoal_2006, Herb, by = c("SPECIES_CD"))
Smith_Shoal_2006_herb_count <- count(Smith_Shoal_2006_herb, vars = "SPECIES_CD")
Smith_Shoal_2006_herb_count$Year <- ('2006')
Smith_Shoal_2006_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_2006_herb_count$Type <- "Herbivorous"

Smith_Shoal_2006_comm <- merge(Smith_Shoal_2006, Comm, by = c("SPECIES_CD"))
Smith_Shoal_2006_comm_count <- count(Smith_Shoal_2006_comm, vars = "SPECIES_CD")
Smith_Shoal_2006_comm_count$Year <- ('2006')
Smith_Shoal_2006_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_2006_comm_count$Type <- "Commercial"


Smith_Shoal_2006_total_count <- rbind(Smith_Shoal_2006_herb_count, Smith_Shoal_2006_comm_count)



Smith_Shoal_2007 <- import("LK/Smith_Shoal/data/Smith_Shoal_2007.xls")


Smith_Shoal_2007_herb <- merge(Smith_Shoal_2007, Herb, by = c("SPECIES_CD"))
Smith_Shoal_2007_herb_count <- count(Smith_Shoal_2007_herb, vars = "SPECIES_CD")
Smith_Shoal_2007_herb_count$Year <- ('2007')
Smith_Shoal_2007_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_2007_herb_count$Type <- "Herbivorous"

Smith_Shoal_2007_comm <- merge(Smith_Shoal_2007, Comm, by = c("SPECIES_CD"))
Smith_Shoal_2007_comm_count <- count(Smith_Shoal_2007_comm, vars = "SPECIES_CD")
Smith_Shoal_2007_comm_count$Year <- ('2007')
Smith_Shoal_2007_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_2007_comm_count$Type <- "Commercial"


Smith_Shoal_2007_total_count <- rbind(Smith_Shoal_2007_herb_count, Smith_Shoal_2007_comm_count)




Smith_Shoal_2008 <- import("LK/Smith_Shoal/data/Smith_Shoal_2008.xls")


Smith_Shoal_2008_herb <- merge(Smith_Shoal_2008, Herb, by = c("SPECIES_CD"))
Smith_Shoal_2008_herb_count <- count(Smith_Shoal_2008_herb, vars = "SPECIES_CD")
Smith_Shoal_2008_herb_count$Year <- ('2008')
Smith_Shoal_2008_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_2008_herb_count$Type <- "Herbivorous"

Smith_Shoal_2008_comm <- merge(Smith_Shoal_2008, Comm, by = c("SPECIES_CD"))
Smith_Shoal_2008_comm_count <- count(Smith_Shoal_2008_comm, vars = "SPECIES_CD")
Smith_Shoal_2008_comm_count$Year <- ('2008')
Smith_Shoal_2008_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_2008_comm_count$Type <- "Commercial"


Smith_Shoal_2008_total_count <- rbind(Smith_Shoal_2008_herb_count, Smith_Shoal_2008_comm_count)



Smith_Shoal_2009 <- import("LK/Smith_Shoal/data/Smith_Shoal_2009.xls")


Smith_Shoal_2009_herb <- merge(Smith_Shoal_2009, Herb, by = c("SPECIES_CD"))
Smith_Shoal_2009_herb_count <- count(Smith_Shoal_2009_herb, vars = "SPECIES_CD")
Smith_Shoal_2009_herb_count$Year <- ('2009')
Smith_Shoal_2009_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_2009_herb_count$Type <- "Herbivorous"

Smith_Shoal_2009_comm <- merge(Smith_Shoal_2009, Comm, by = c("SPECIES_CD"))
Smith_Shoal_2009_comm_count <- count(Smith_Shoal_2009_comm, vars = "SPECIES_CD")
Smith_Shoal_2009_comm_count$Year <- ('2009')
Smith_Shoal_2009_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_2009_comm_count$Type <- "Commercial"


Smith_Shoal_2009_total_count <- rbind(Smith_Shoal_2009_herb_count, Smith_Shoal_2009_comm_count)





Smith_Shoal_2010 <- import("LK/Smith_Shoal/data/Smith_Shoal_2010.xls")


Smith_Shoal_2010_herb <- merge(Smith_Shoal_2010, Herb, by = c("SPECIES_CD"))
Smith_Shoal_2010_herb_count <- count(Smith_Shoal_2010_herb, vars = "SPECIES_CD")
Smith_Shoal_2010_herb_count$Year <- ('2010')
Smith_Shoal_2010_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_2010_herb_count$Type <- "Herbivorous"

Smith_Shoal_2010_comm <- merge(Smith_Shoal_2010, Comm, by = c("SPECIES_CD"))
Smith_Shoal_2010_comm_count <- count(Smith_Shoal_2010_comm, vars = "SPECIES_CD")
Smith_Shoal_2010_comm_count$Year <- ('2010')
Smith_Shoal_2010_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_2010_comm_count$Type <- "Commercial"


Smith_Shoal_2010_total_count <- rbind(Smith_Shoal_2010_herb_count, Smith_Shoal_2010_comm_count)


Smith_Shoal_2011 <- import("LK/Smith_Shoal/data/Smith_Shoal_2011.xls")


Smith_Shoal_2011_herb <- merge(Smith_Shoal_2011, Herb, by = c("SPECIES_CD"))
Smith_Shoal_2011_herb_count <- count(Smith_Shoal_2011_herb, vars = "SPECIES_CD")
Smith_Shoal_2011_herb_count$Year <- ('2011')
Smith_Shoal_2011_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_2011_herb_count$Type <- "Herbivorous"

Smith_Shoal_2011_comm <- merge(Smith_Shoal_2011, Comm, by = c("SPECIES_CD"))
Smith_Shoal_2011_comm_count <- count(Smith_Shoal_2011_comm, vars = "SPECIES_CD")
Smith_Shoal_2011_comm_count$Year <- ('2011')
Smith_Shoal_2011_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_2011_comm_count$Type <- "Commercial"


Smith_Shoal_2011_total_count <- rbind(Smith_Shoal_2011_herb_count, Smith_Shoal_2011_comm_count)





Smith_Shoal_2012 <- import("LK/Smith_Shoal/data/Smith_Shoal_2012.xls")


Smith_Shoal_2012_herb <- merge(Smith_Shoal_2012, Herb, by = c("SPECIES_CD"))
Smith_Shoal_2012_herb_count <- count(Smith_Shoal_2012_herb, vars = "SPECIES_CD")
Smith_Shoal_2012_herb_count$Year <- ('2012')
Smith_Shoal_2012_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_2012_herb_count$Type <- "Herbivorous"

Smith_Shoal_2012_comm <- merge(Smith_Shoal_2012, Comm, by = c("SPECIES_CD"))
Smith_Shoal_2012_comm_count <- count(Smith_Shoal_2012_comm, vars = "SPECIES_CD")
Smith_Shoal_2012_comm_count$Year <- ('2012')
Smith_Shoal_2012_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_2012_comm_count$Type <- "Commercial"


Smith_Shoal_2012_total_count <- rbind(Smith_Shoal_2012_herb_count, Smith_Shoal_2012_comm_count)



Smith_Shoal_2014 <- import("LK/Smith_Shoal/data/Smith_Shoal_2014.xls")


Smith_Shoal_2014_herb <- merge(Smith_Shoal_2014, Herb, by = c("SPECIES_CD"))
Smith_Shoal_2014_herb_count <- count(Smith_Shoal_2014_herb, vars = "SPECIES_CD")
Smith_Shoal_2014_herb_count$Year <- ('2014')
Smith_Shoal_2014_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_2014_herb_count$Type <- "Herbivorous"

Smith_Shoal_2014_comm <- merge(Smith_Shoal_2014, Comm, by = c("SPECIES_CD"))
Smith_Shoal_2014_comm_count <- count(Smith_Shoal_2014_comm, vars = "SPECIES_CD")
Smith_Shoal_2014_comm_count$Year <- ('2014')
Smith_Shoal_2014_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_2014_comm_count$Type <- "Commercial"


Smith_Shoal_2014_total_count <- rbind(Smith_Shoal_2014_herb_count, Smith_Shoal_2014_comm_count)




Smith_Shoal_2016 <- import("LK/Smith_Shoal/data/Smith_Shoal_2016.xls")


Smith_Shoal_2016_herb <- merge(Smith_Shoal_2016, Herb, by = c("SPECIES_CD"))
Smith_Shoal_2016_herb_count <- count(Smith_Shoal_2016_herb, vars = "SPECIES_CD")
Smith_Shoal_2016_herb_count$Year <- ('2016')
Smith_Shoal_2016_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_2016_herb_count$Type <- "Herbivorous"

Smith_Shoal_2016_comm <- merge(Smith_Shoal_2016, Comm, by = c("SPECIES_CD"))
Smith_Shoal_2016_comm_count <- count(Smith_Shoal_2016_comm, vars = "SPECIES_CD")
Smith_Shoal_2016_comm_count$Year <- ('2016')
Smith_Shoal_2016_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_2016_comm_count$Type <- "Commercial"


Smith_Shoal_2016_total_count <- rbind(Smith_Shoal_2016_herb_count, Smith_Shoal_2016_comm_count)



Smith_Shoal_2018 <- import("LK/Smith_Shoal/data/Smith_Shoal_2018.xls")


Smith_Shoal_2018_herb <- merge(Smith_Shoal_2018, Herb, by = c("SPECIES_CD"))
Smith_Shoal_2018_herb_count <- count(Smith_Shoal_2018_herb, vars = "SPECIES_CD")
Smith_Shoal_2018_herb_count$Year <- ('2018')
Smith_Shoal_2018_herb_count$sitename <- ('Smith Shoal')
Smith_Shoal_2018_herb_count$Type <- "Herbivorous"

Smith_Shoal_2018_comm <- merge(Smith_Shoal_2018, Comm, by = c("SPECIES_CD"))
Smith_Shoal_2018_comm_count <- count(Smith_Shoal_2018_comm, vars = "SPECIES_CD")
Smith_Shoal_2018_comm_count$Year <- ('2018')
Smith_Shoal_2018_comm_count$sitename <- ('Smith Shoal')
Smith_Shoal_2018_comm_count$Type <- "Commercial"


Smith_Shoal_2018_total_count <- rbind(Smith_Shoal_2018_herb_count, Smith_Shoal_2018_comm_count)





Smith_Shoal_all <- rbind(Smith_Shoal_1999_total_count,Smith_Shoal_2000_total_count,Smith_Shoal_2001_total_count,Smith_Shoal_2002_total_count,Smith_Shoal_2003_total_count,Smith_Shoal_2004_total_count,Smith_Shoal_2005_total_count,Smith_Shoal_2006_total_count,Smith_Shoal_2007_total_count,Smith_Shoal_2008_total_count,Smith_Shoal_2009_total_count, Smith_Shoal_2010_total_count,Smith_Shoal_2011_total_count, Smith_Shoal_2012_total_count, Smith_Shoal_2014_total_count, Smith_Shoal_2016_total_count,Smith_Shoal_2018_total_count)


export(Smith_Shoal_all, "LK/Smith_Shoal/data/Smith_Shoal_count_herb_comm.csv")







West_Washer_Woman_1999 <- import("LK/West_Washer_Woman/data/West_Washer_1999.xls")


West_Washer_Woman_1999_herb <- merge(West_Washer_Woman_1999, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_1999_herb_count <- count(West_Washer_Woman_1999_herb, vars = "SPECIES_CD")
West_Washer_Woman_1999_herb_count$Year <- ('1999')
West_Washer_Woman_1999_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_1999_herb_count$Type <- "Herbivorous"

West_Washer_Woman_1999_comm <- merge(West_Washer_Woman_1999, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_1999_comm_count <- count(West_Washer_Woman_1999_comm, vars = "SPECIES_CD")
West_Washer_Woman_1999_comm_count$Year <- ('1999')
West_Washer_Woman_1999_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_1999_comm_count$Type <- "Commercial"


West_Washer_Woman_1999_total_count <- rbind(West_Washer_Woman_1999_herb_count, West_Washer_Woman_1999_comm_count)




West_Washer_Woman_2000 <- import("LK/West_Washer_Woman/data/West_Washer_2000.xls")


West_Washer_Woman_2000_herb <- merge(West_Washer_Woman_2000, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2000_herb_count <- count(West_Washer_Woman_2000_herb, vars = "SPECIES_CD")
West_Washer_Woman_2000_herb_count$Year <- ('2000')
West_Washer_Woman_2000_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2000_herb_count$Type <- "Herbivorous"

West_Washer_Woman_2000_comm <- merge(West_Washer_Woman_2000, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2000_comm_count <- count(West_Washer_Woman_2000_comm, vars = "SPECIES_CD")
West_Washer_Woman_2000_comm_count$Year <- ('2000')
West_Washer_Woman_2000_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2000_comm_count$Type <- "Commercial"


West_Washer_Woman_2000_total_count <- rbind(West_Washer_Woman_2000_herb_count, West_Washer_Woman_2000_comm_count)


West_Washer_Woman_2001 <- import("LK/West_Washer_Woman/data/West_Washer_2001.xls")


West_Washer_Woman_2001_herb <- merge(West_Washer_Woman_2001, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2001_herb_count <- count(West_Washer_Woman_2001_herb, vars = "SPECIES_CD")
West_Washer_Woman_2001_herb_count$Year <- ('2001')
West_Washer_Woman_2001_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2001_herb_count$Type <- "Herbivorous"

West_Washer_Woman_2001_comm <- merge(West_Washer_Woman_2001, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2001_comm_count <- count(West_Washer_Woman_2001_comm, vars = "SPECIES_CD")
West_Washer_Woman_2001_comm_count$Year <- ('2001')
West_Washer_Woman_2001_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2001_comm_count$Type <- "Commercial"


West_Washer_Woman_2001_total_count <- rbind(West_Washer_Woman_2001_herb_count, West_Washer_Woman_2001_comm_count)


West_Washer_Woman_2002 <- import("LK/West_Washer_Woman/data/West_Washer_2002.xls")


West_Washer_Woman_2002_herb <- merge(West_Washer_Woman_2002, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2002_herb_count <- count(West_Washer_Woman_2002_herb, vars = "SPECIES_CD")
West_Washer_Woman_2002_herb_count$Year <- ('2002')
West_Washer_Woman_2002_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2002_herb_count$Type <- "Herbivorous"

West_Washer_Woman_2002_comm <- merge(West_Washer_Woman_2002, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2002_comm_count <- count(West_Washer_Woman_2002_comm, vars = "SPECIES_CD")
West_Washer_Woman_2002_comm_count$Year <- ('2002')
West_Washer_Woman_2002_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2002_comm_count$Type <- "Commercial"


West_Washer_Woman_2002_total_count <- rbind(West_Washer_Woman_2002_herb_count, West_Washer_Woman_2002_comm_count)



West_Washer_Woman_2003 <- import("LK/West_Washer_Woman/data/West_Washer_2003.xls")


West_Washer_Woman_2003_herb <- merge(West_Washer_Woman_2003, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2003_herb_count <- count(West_Washer_Woman_2003_herb, vars = "SPECIES_CD")
West_Washer_Woman_2003_herb_count$Year <- ('2003')
West_Washer_Woman_2003_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2003_herb_count$Type <- "Herbivorous"

West_Washer_Woman_2003_comm <- merge(West_Washer_Woman_2003, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2003_comm_count <- count(West_Washer_Woman_2003_comm, vars = "SPECIES_CD")
West_Washer_Woman_2003_comm_count$Year <- ('2003')
West_Washer_Woman_2003_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2003_comm_count$Type <- "Commercial"


West_Washer_Woman_2003_total_count <- rbind(West_Washer_Woman_2003_herb_count, West_Washer_Woman_2003_comm_count)




West_Washer_Woman_2004 <- import("LK/West_Washer_Woman/data/West_Washer_2004.xls")


West_Washer_Woman_2004_herb <- merge(West_Washer_Woman_2004, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2004_herb_count <- count(West_Washer_Woman_2004_herb, vars = "SPECIES_CD")
West_Washer_Woman_2004_herb_count$Year <- ('2004')
West_Washer_Woman_2004_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2004_herb_count$Type <- "Herbivorous"

West_Washer_Woman_2004_comm <- merge(West_Washer_Woman_2004, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2004_comm_count <- count(West_Washer_Woman_2004_comm, vars = "SPECIES_CD")
West_Washer_Woman_2004_comm_count$Year <- ('2004')
West_Washer_Woman_2004_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2004_comm_count$Type <- "Commercial"


West_Washer_Woman_2004_total_count <- rbind(West_Washer_Woman_2004_herb_count, West_Washer_Woman_2004_comm_count)


West_Washer_Woman_2005 <- import("LK/West_Washer_Woman/data/West_Washer_2005.xls")


West_Washer_Woman_2005_herb <- merge(West_Washer_Woman_2005, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2005_herb_count <- count(West_Washer_Woman_2005_herb, vars = "SPECIES_CD")
West_Washer_Woman_2005_herb_count$Year <- ('2005')
West_Washer_Woman_2005_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2005_herb_count$Type <- "Herbivorous"

West_Washer_Woman_2005_comm <- merge(West_Washer_Woman_2005, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2005_comm_count <- count(West_Washer_Woman_2005_comm, vars = "SPECIES_CD")
West_Washer_Woman_2005_comm_count$Year <- ('2005')
West_Washer_Woman_2005_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2005_comm_count$Type <- "Commercial"


West_Washer_Woman_2005_total_count <- rbind(West_Washer_Woman_2005_herb_count, West_Washer_Woman_2005_comm_count)




West_Washer_Woman_2006 <- import("LK/West_Washer_Woman/data/West_Washer_2006.xls")


West_Washer_Woman_2006_herb <- merge(West_Washer_Woman_2006, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2006_herb_count <- count(West_Washer_Woman_2006_herb, vars = "SPECIES_CD")
West_Washer_Woman_2006_herb_count$Year <- ('2006')
West_Washer_Woman_2006_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2006_herb_count$Type <- "Herbivorous"

West_Washer_Woman_2006_comm <- merge(West_Washer_Woman_2006, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2006_comm_count <- count(West_Washer_Woman_2006_comm, vars = "SPECIES_CD")
West_Washer_Woman_2006_comm_count$Year <- ('2006')
West_Washer_Woman_2006_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2006_comm_count$Type <- "Commercial"


West_Washer_Woman_2006_total_count <- rbind(West_Washer_Woman_2006_herb_count, West_Washer_Woman_2006_comm_count)



West_Washer_Woman_2007 <- import("LK/West_Washer_Woman/data/West_Washer_2007.xls")


West_Washer_Woman_2007_herb <- merge(West_Washer_Woman_2007, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2007_herb_count <- count(West_Washer_Woman_2007_herb, vars = "SPECIES_CD")
West_Washer_Woman_2007_herb_count$Year <- ('2007')
West_Washer_Woman_2007_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2007_herb_count$Type <- "Herbivorous"

West_Washer_Woman_2007_comm <- merge(West_Washer_Woman_2007, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2007_comm_count <- count(West_Washer_Woman_2007_comm, vars = "SPECIES_CD")
West_Washer_Woman_2007_comm_count$Year <- ('2007')
West_Washer_Woman_2007_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2007_comm_count$Type <- "Commercial"


West_Washer_Woman_2007_total_count <- rbind(West_Washer_Woman_2007_herb_count, West_Washer_Woman_2007_comm_count)




West_Washer_Woman_2008 <- import("LK/West_Washer_Woman/data/West_Washer_2008.xls")


West_Washer_Woman_2008_herb <- merge(West_Washer_Woman_2008, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2008_herb_count <- count(West_Washer_Woman_2008_herb, vars = "SPECIES_CD")
West_Washer_Woman_2008_herb_count$Year <- ('2008')
West_Washer_Woman_2008_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2008_herb_count$Type <- "Herbivorous"

West_Washer_Woman_2008_comm <- merge(West_Washer_Woman_2008, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2008_comm_count <- count(West_Washer_Woman_2008_comm, vars = "SPECIES_CD")
West_Washer_Woman_2008_comm_count$Year <- ('2008')
West_Washer_Woman_2008_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2008_comm_count$Type <- "Commercial"


West_Washer_Woman_2008_total_count <- rbind(West_Washer_Woman_2008_herb_count, West_Washer_Woman_2008_comm_count)



West_Washer_Woman_2009 <- import("LK/West_Washer_Woman/data/West_Washer_2009.xls")


West_Washer_Woman_2009_herb <- merge(West_Washer_Woman_2009, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2009_herb_count <- count(West_Washer_Woman_2009_herb, vars = "SPECIES_CD")
West_Washer_Woman_2009_herb_count$Year <- ('2009')
West_Washer_Woman_2009_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2009_herb_count$Type <- "Herbivorous"

West_Washer_Woman_2009_comm <- merge(West_Washer_Woman_2009, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2009_comm_count <- count(West_Washer_Woman_2009_comm, vars = "SPECIES_CD")
West_Washer_Woman_2009_comm_count$Year <- ('2009')
West_Washer_Woman_2009_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2009_comm_count$Type <- "Commercial"


West_Washer_Woman_2009_total_count <- rbind(West_Washer_Woman_2009_herb_count, West_Washer_Woman_2009_comm_count)





West_Washer_Woman_2010 <- import("LK/West_Washer_Woman/data/West_Washer_2010.xls")


West_Washer_Woman_2010_herb <- merge(West_Washer_Woman_2010, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2010_herb_count <- count(West_Washer_Woman_2010_herb, vars = "SPECIES_CD")
West_Washer_Woman_2010_herb_count$Year <- ('2010')
West_Washer_Woman_2010_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2010_herb_count$Type <- "Herbivorous"

West_Washer_Woman_2010_comm <- merge(West_Washer_Woman_2010, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2010_comm_count <- count(West_Washer_Woman_2010_comm, vars = "SPECIES_CD")
West_Washer_Woman_2010_comm_count$Year <- ('2010')
West_Washer_Woman_2010_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2010_comm_count$Type <- "Commercial"


West_Washer_Woman_2010_total_count <- rbind(West_Washer_Woman_2010_herb_count, West_Washer_Woman_2010_comm_count)


West_Washer_Woman_2011 <- import("LK/West_Washer_Woman/data/West_Washer_2011.xls")


West_Washer_Woman_2011_herb <- merge(West_Washer_Woman_2011, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2011_herb_count <- count(West_Washer_Woman_2011_herb, vars = "SPECIES_CD")
West_Washer_Woman_2011_herb_count$Year <- ('2011')
West_Washer_Woman_2011_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2011_herb_count$Type <- "Herbivorous"

West_Washer_Woman_2011_comm <- merge(West_Washer_Woman_2011, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2011_comm_count <- count(West_Washer_Woman_2011_comm, vars = "SPECIES_CD")
West_Washer_Woman_2011_comm_count$Year <- ('2011')
West_Washer_Woman_2011_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2011_comm_count$Type <- "Commercial"


West_Washer_Woman_2011_total_count <- rbind(West_Washer_Woman_2011_herb_count, West_Washer_Woman_2011_comm_count)





West_Washer_Woman_2012 <- import("LK/West_Washer_Woman/data/West_Washer_2012.xls")


West_Washer_Woman_2012_herb <- merge(West_Washer_Woman_2012, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2012_herb_count <- count(West_Washer_Woman_2012_herb, vars = "SPECIES_CD")
West_Washer_Woman_2012_herb_count$Year <- ('2012')
West_Washer_Woman_2012_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2012_herb_count$Type <- "Herbivorous"

West_Washer_Woman_2012_comm <- merge(West_Washer_Woman_2012, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2012_comm_count <- count(West_Washer_Woman_2012_comm, vars = "SPECIES_CD")
West_Washer_Woman_2012_comm_count$Year <- ('2012')
West_Washer_Woman_2012_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2012_comm_count$Type <- "Commercial"


West_Washer_Woman_2012_total_count <- rbind(West_Washer_Woman_2012_herb_count, West_Washer_Woman_2012_comm_count)



West_Washer_Woman_2014 <- import("LK/West_Washer_Woman/data/West_Washer_2014.xls")


West_Washer_Woman_2014_herb <- merge(West_Washer_Woman_2014, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2014_herb_count <- count(West_Washer_Woman_2014_herb, vars = "SPECIES_CD")
West_Washer_Woman_2014_herb_count$Year <- ('2014')
West_Washer_Woman_2014_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2014_herb_count$Type <- "Herbivorous"

West_Washer_Woman_2014_comm <- merge(West_Washer_Woman_2014, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2014_comm_count <- count(West_Washer_Woman_2014_comm, vars = "SPECIES_CD")
West_Washer_Woman_2014_comm_count$Year <- ('2014')
West_Washer_Woman_2014_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2014_comm_count$Type <- "Commercial"


West_Washer_Woman_2014_total_count <- rbind(West_Washer_Woman_2014_herb_count, West_Washer_Woman_2014_comm_count)




West_Washer_Woman_2016 <- import("LK/West_Washer_Woman/data/West_Washer_2016.xls")


West_Washer_Woman_2016_herb <- merge(West_Washer_Woman_2016, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2016_herb_count <- count(West_Washer_Woman_2016_herb, vars = "SPECIES_CD")
West_Washer_Woman_2016_herb_count$Year <- ('2016')
West_Washer_Woman_2016_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2016_herb_count$Type <- "Herbivorous"

West_Washer_Woman_2016_comm <- merge(West_Washer_Woman_2016, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2016_comm_count <- count(West_Washer_Woman_2016_comm, vars = "SPECIES_CD")
West_Washer_Woman_2016_comm_count$Year <- ('2016')
West_Washer_Woman_2016_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2016_comm_count$Type <- "Commercial"


West_Washer_Woman_2016_total_count <- rbind(West_Washer_Woman_2016_herb_count, West_Washer_Woman_2016_comm_count)



West_Washer_Woman_2018 <- import("LK/West_Washer_Woman/data/West_Washer_2018.xls")


West_Washer_Woman_2018_herb <- merge(West_Washer_Woman_2018, Herb, by = c("SPECIES_CD"))
West_Washer_Woman_2018_herb_count <- count(West_Washer_Woman_2018_herb, vars = "SPECIES_CD")
West_Washer_Woman_2018_herb_count$Year <- ('2018')
West_Washer_Woman_2018_herb_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2018_herb_count$Type <- "Herbivorous"

West_Washer_Woman_2018_comm <- merge(West_Washer_Woman_2018, Comm, by = c("SPECIES_CD"))
West_Washer_Woman_2018_comm_count <- count(West_Washer_Woman_2018_comm, vars = "SPECIES_CD")
West_Washer_Woman_2018_comm_count$Year <- ('2018')
West_Washer_Woman_2018_comm_count$sitename <- ('West Washer Woman')
West_Washer_Woman_2018_comm_count$Type <- "Commercial"


West_Washer_Woman_2018_total_count <- rbind(West_Washer_Woman_2018_herb_count, West_Washer_Woman_2018_comm_count)





West_Washer_Woman_all <- rbind(West_Washer_Woman_1999_total_count,West_Washer_Woman_2000_total_count,West_Washer_Woman_2001_total_count,West_Washer_Woman_2002_total_count,West_Washer_Woman_2003_total_count,West_Washer_Woman_2004_total_count,West_Washer_Woman_2005_total_count,West_Washer_Woman_2006_total_count,West_Washer_Woman_2007_total_count,West_Washer_Woman_2008_total_count,West_Washer_Woman_2009_total_count, West_Washer_Woman_2010_total_count,West_Washer_Woman_2011_total_count, West_Washer_Woman_2012_total_count, West_Washer_Woman_2014_total_count, West_Washer_Woman_2016_total_count,West_Washer_Woman_2018_total_count)


export(West_Washer_Woman_all, "LK/West_Washer_Woman/data/West_Washer_Woman_count_herb_comm.csv")





Western_Sambo_Deep_1999 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_1999.xls")


Western_Sambo_Deep_1999_herb <- merge(Western_Sambo_Deep_1999, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_1999_herb_count <- count(Western_Sambo_Deep_1999_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_1999_herb_count$Year <- ('1999')
Western_Sambo_Deep_1999_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_1999_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_1999_comm <- merge(Western_Sambo_Deep_1999, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_1999_comm_count <- count(Western_Sambo_Deep_1999_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_1999_comm_count$Year <- ('1999')
Western_Sambo_Deep_1999_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_1999_comm_count$Type <- "Commercial"


Western_Sambo_Deep_1999_total_count <- rbind(Western_Sambo_Deep_1999_herb_count, Western_Sambo_Deep_1999_comm_count)




Western_Sambo_Deep_2000 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_2000.xls")


Western_Sambo_Deep_2000_herb <- merge(Western_Sambo_Deep_2000, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2000_herb_count <- count(Western_Sambo_Deep_2000_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_2000_herb_count$Year <- ('2000')
Western_Sambo_Deep_2000_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2000_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_2000_comm <- merge(Western_Sambo_Deep_2000, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2000_comm_count <- count(Western_Sambo_Deep_2000_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_2000_comm_count$Year <- ('2000')
Western_Sambo_Deep_2000_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2000_comm_count$Type <- "Commercial"


Western_Sambo_Deep_2000_total_count <- rbind(Western_Sambo_Deep_2000_herb_count, Western_Sambo_Deep_2000_comm_count)


Western_Sambo_Deep_2001 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_2001.xls")


Western_Sambo_Deep_2001_herb <- merge(Western_Sambo_Deep_2001, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2001_herb_count <- count(Western_Sambo_Deep_2001_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_2001_herb_count$Year <- ('2001')
Western_Sambo_Deep_2001_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2001_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_2001_comm <- merge(Western_Sambo_Deep_2001, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2001_comm_count <- count(Western_Sambo_Deep_2001_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_2001_comm_count$Year <- ('2001')
Western_Sambo_Deep_2001_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2001_comm_count$Type <- "Commercial"


Western_Sambo_Deep_2001_total_count <- rbind(Western_Sambo_Deep_2001_herb_count, Western_Sambo_Deep_2001_comm_count)


Western_Sambo_Deep_2002 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_2002.xls")


Western_Sambo_Deep_2002_herb <- merge(Western_Sambo_Deep_2002, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2002_herb_count <- count(Western_Sambo_Deep_2002_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_2002_herb_count$Year <- ('2002')
Western_Sambo_Deep_2002_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2002_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_2002_comm <- merge(Western_Sambo_Deep_2002, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2002_comm_count <- count(Western_Sambo_Deep_2002_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_2002_comm_count$Year <- ('2002')
Western_Sambo_Deep_2002_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2002_comm_count$Type <- "Commercial"


Western_Sambo_Deep_2002_total_count <- rbind(Western_Sambo_Deep_2002_herb_count, Western_Sambo_Deep_2002_comm_count)



Western_Sambo_Deep_2003 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_2003.xls")


Western_Sambo_Deep_2003_herb <- merge(Western_Sambo_Deep_2003, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2003_herb_count <- count(Western_Sambo_Deep_2003_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_2003_herb_count$Year <- ('2003')
Western_Sambo_Deep_2003_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2003_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_2003_comm <- merge(Western_Sambo_Deep_2003, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2003_comm_count <- count(Western_Sambo_Deep_2003_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_2003_comm_count$Year <- ('2003')
Western_Sambo_Deep_2003_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2003_comm_count$Type <- "Commercial"


Western_Sambo_Deep_2003_total_count <- rbind(Western_Sambo_Deep_2003_herb_count, Western_Sambo_Deep_2003_comm_count)




Western_Sambo_Deep_2004 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_2004.xls")


Western_Sambo_Deep_2004_herb <- merge(Western_Sambo_Deep_2004, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2004_herb_count <- count(Western_Sambo_Deep_2004_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_2004_herb_count$Year <- ('2004')
Western_Sambo_Deep_2004_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2004_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_2004_comm <- merge(Western_Sambo_Deep_2004, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2004_comm_count <- count(Western_Sambo_Deep_2004_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_2004_comm_count$Year <- ('2004')
Western_Sambo_Deep_2004_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2004_comm_count$Type <- "Commercial"


Western_Sambo_Deep_2004_total_count <- rbind(Western_Sambo_Deep_2004_herb_count, Western_Sambo_Deep_2004_comm_count)


Western_Sambo_Deep_2005 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_2005.xls")


Western_Sambo_Deep_2005_herb <- merge(Western_Sambo_Deep_2005, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2005_herb_count <- count(Western_Sambo_Deep_2005_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_2005_herb_count$Year <- ('2005')
Western_Sambo_Deep_2005_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2005_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_2005_comm <- merge(Western_Sambo_Deep_2005, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2005_comm_count <- count(Western_Sambo_Deep_2005_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_2005_comm_count$Year <- ('2005')
Western_Sambo_Deep_2005_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2005_comm_count$Type <- "Commercial"


Western_Sambo_Deep_2005_total_count <- rbind(Western_Sambo_Deep_2005_herb_count, Western_Sambo_Deep_2005_comm_count)




Western_Sambo_Deep_2006 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_2006.xls")


Western_Sambo_Deep_2006_herb <- merge(Western_Sambo_Deep_2006, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2006_herb_count <- count(Western_Sambo_Deep_2006_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_2006_herb_count$Year <- ('2006')
Western_Sambo_Deep_2006_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2006_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_2006_comm <- merge(Western_Sambo_Deep_2006, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2006_comm_count <- count(Western_Sambo_Deep_2006_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_2006_comm_count$Year <- ('2006')
Western_Sambo_Deep_2006_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2006_comm_count$Type <- "Commercial"


Western_Sambo_Deep_2006_total_count <- rbind(Western_Sambo_Deep_2006_herb_count, Western_Sambo_Deep_2006_comm_count)



Western_Sambo_Deep_2007 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_2007.xls")


Western_Sambo_Deep_2007_herb <- merge(Western_Sambo_Deep_2007, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2007_herb_count <- count(Western_Sambo_Deep_2007_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_2007_herb_count$Year <- ('2007')
Western_Sambo_Deep_2007_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2007_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_2007_comm <- merge(Western_Sambo_Deep_2007, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2007_comm_count <- count(Western_Sambo_Deep_2007_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_2007_comm_count$Year <- ('2007')
Western_Sambo_Deep_2007_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2007_comm_count$Type <- "Commercial"


Western_Sambo_Deep_2007_total_count <- rbind(Western_Sambo_Deep_2007_herb_count, Western_Sambo_Deep_2007_comm_count)




Western_Sambo_Deep_2008 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_2008.xls")


Western_Sambo_Deep_2008_herb <- merge(Western_Sambo_Deep_2008, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2008_herb_count <- count(Western_Sambo_Deep_2008_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_2008_herb_count$Year <- ('2008')
Western_Sambo_Deep_2008_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2008_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_2008_comm <- merge(Western_Sambo_Deep_2008, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2008_comm_count <- count(Western_Sambo_Deep_2008_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_2008_comm_count$Year <- ('2008')
Western_Sambo_Deep_2008_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2008_comm_count$Type <- "Commercial"


Western_Sambo_Deep_2008_total_count <- rbind(Western_Sambo_Deep_2008_herb_count, Western_Sambo_Deep_2008_comm_count)



Western_Sambo_Deep_2009 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_2009.xls")


Western_Sambo_Deep_2009_herb <- merge(Western_Sambo_Deep_2009, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2009_herb_count <- count(Western_Sambo_Deep_2009_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_2009_herb_count$Year <- ('2009')
Western_Sambo_Deep_2009_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2009_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_2009_comm <- merge(Western_Sambo_Deep_2009, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2009_comm_count <- count(Western_Sambo_Deep_2009_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_2009_comm_count$Year <- ('2009')
Western_Sambo_Deep_2009_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2009_comm_count$Type <- "Commercial"


Western_Sambo_Deep_2009_total_count <- rbind(Western_Sambo_Deep_2009_herb_count, Western_Sambo_Deep_2009_comm_count)





Western_Sambo_Deep_2010 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_2010.xls")


Western_Sambo_Deep_2010_herb <- merge(Western_Sambo_Deep_2010, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2010_herb_count <- count(Western_Sambo_Deep_2010_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_2010_herb_count$Year <- ('2010')
Western_Sambo_Deep_2010_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2010_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_2010_comm <- merge(Western_Sambo_Deep_2010, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2010_comm_count <- count(Western_Sambo_Deep_2010_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_2010_comm_count$Year <- ('2010')
Western_Sambo_Deep_2010_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2010_comm_count$Type <- "Commercial"


Western_Sambo_Deep_2010_total_count <- rbind(Western_Sambo_Deep_2010_herb_count, Western_Sambo_Deep_2010_comm_count)


Western_Sambo_Deep_2011 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_2011.xls")


Western_Sambo_Deep_2011_herb <- merge(Western_Sambo_Deep_2011, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2011_herb_count <- count(Western_Sambo_Deep_2011_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_2011_herb_count$Year <- ('2011')
Western_Sambo_Deep_2011_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2011_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_2011_comm <- merge(Western_Sambo_Deep_2011, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2011_comm_count <- count(Western_Sambo_Deep_2011_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_2011_comm_count$Year <- ('2011')
Western_Sambo_Deep_2011_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2011_comm_count$Type <- "Commercial"


Western_Sambo_Deep_2011_total_count <- rbind(Western_Sambo_Deep_2011_herb_count, Western_Sambo_Deep_2011_comm_count)





Western_Sambo_Deep_2012 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_2012.xls")


Western_Sambo_Deep_2012_herb <- merge(Western_Sambo_Deep_2012, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2012_herb_count <- count(Western_Sambo_Deep_2012_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_2012_herb_count$Year <- ('2012')
Western_Sambo_Deep_2012_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2012_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_2012_comm <- merge(Western_Sambo_Deep_2012, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2012_comm_count <- count(Western_Sambo_Deep_2012_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_2012_comm_count$Year <- ('2012')
Western_Sambo_Deep_2012_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2012_comm_count$Type <- "Commercial"


Western_Sambo_Deep_2012_total_count <- rbind(Western_Sambo_Deep_2012_herb_count, Western_Sambo_Deep_2012_comm_count)



Western_Sambo_Deep_2014 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_2014.xls")


Western_Sambo_Deep_2014_herb <- merge(Western_Sambo_Deep_2014, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2014_herb_count <- count(Western_Sambo_Deep_2014_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_2014_herb_count$Year <- ('2014')
Western_Sambo_Deep_2014_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2014_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_2014_comm <- merge(Western_Sambo_Deep_2014, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2014_comm_count <- count(Western_Sambo_Deep_2014_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_2014_comm_count$Year <- ('2014')
Western_Sambo_Deep_2014_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2014_comm_count$Type <- "Commercial"


Western_Sambo_Deep_2014_total_count <- rbind(Western_Sambo_Deep_2014_herb_count, Western_Sambo_Deep_2014_comm_count)




Western_Sambo_Deep_2016 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_2016.xls")


Western_Sambo_Deep_2016_herb <- merge(Western_Sambo_Deep_2016, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2016_herb_count <- count(Western_Sambo_Deep_2016_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_2016_herb_count$Year <- ('2016')
Western_Sambo_Deep_2016_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2016_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_2016_comm <- merge(Western_Sambo_Deep_2016, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2016_comm_count <- count(Western_Sambo_Deep_2016_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_2016_comm_count$Year <- ('2016')
Western_Sambo_Deep_2016_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2016_comm_count$Type <- "Commercial"


Western_Sambo_Deep_2016_total_count <- rbind(Western_Sambo_Deep_2016_herb_count, Western_Sambo_Deep_2016_comm_count)



Western_Sambo_Deep_2018 <- import("LK/Western_Sambo_Deep/data/Western_Sambo_Deep_2018.xls")


Western_Sambo_Deep_2018_herb <- merge(Western_Sambo_Deep_2018, Herb, by = c("SPECIES_CD"))
Western_Sambo_Deep_2018_herb_count <- count(Western_Sambo_Deep_2018_herb, vars = "SPECIES_CD")
Western_Sambo_Deep_2018_herb_count$Year <- ('2018')
Western_Sambo_Deep_2018_herb_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2018_herb_count$Type <- "Herbivorous"

Western_Sambo_Deep_2018_comm <- merge(Western_Sambo_Deep_2018, Comm, by = c("SPECIES_CD"))
Western_Sambo_Deep_2018_comm_count <- count(Western_Sambo_Deep_2018_comm, vars = "SPECIES_CD")
Western_Sambo_Deep_2018_comm_count$Year <- ('2018')
Western_Sambo_Deep_2018_comm_count$sitename <- ('Western Sambo Deep')
Western_Sambo_Deep_2018_comm_count$Type <- "Commercial"


Western_Sambo_Deep_2018_total_count <- rbind(Western_Sambo_Deep_2018_herb_count, Western_Sambo_Deep_2018_comm_count)





Western_Sambo_Deep_all <- rbind(Western_Sambo_Deep_1999_total_count,Western_Sambo_Deep_2000_total_count,Western_Sambo_Deep_2001_total_count,Western_Sambo_Deep_2002_total_count,Western_Sambo_Deep_2003_total_count,Western_Sambo_Deep_2004_total_count,Western_Sambo_Deep_2005_total_count,Western_Sambo_Deep_2006_total_count,Western_Sambo_Deep_2007_total_count,Western_Sambo_Deep_2008_total_count,Western_Sambo_Deep_2009_total_count, Western_Sambo_Deep_2010_total_count,Western_Sambo_Deep_2011_total_count, Western_Sambo_Deep_2012_total_count, Western_Sambo_Deep_2014_total_count, Western_Sambo_Deep_2016_total_count,Western_Sambo_Deep_2018_total_count)


export(Western_Sambo_Deep_all, "LK/Western_Sambo_Deep/data/Western_Sambo_Deep_count_herb_comm.csv")






Western_Sambo_Shallow_1999 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_1999.xls")


Western_Sambo_Shallow_1999_herb <- merge(Western_Sambo_Shallow_1999, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_1999_herb_count <- count(Western_Sambo_Shallow_1999_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_1999_herb_count$Year <- ('1999')
Western_Sambo_Shallow_1999_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_1999_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_1999_comm <- merge(Western_Sambo_Shallow_1999, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_1999_comm_count <- count(Western_Sambo_Shallow_1999_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_1999_comm_count$Year <- ('1999')
Western_Sambo_Shallow_1999_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_1999_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_1999_total_count <- rbind(Western_Sambo_Shallow_1999_herb_count, Western_Sambo_Shallow_1999_comm_count)




Western_Sambo_Shallow_2000 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_2000.xls")


Western_Sambo_Shallow_2000_herb <- merge(Western_Sambo_Shallow_2000, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2000_herb_count <- count(Western_Sambo_Shallow_2000_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_2000_herb_count$Year <- ('2000')
Western_Sambo_Shallow_2000_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2000_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_2000_comm <- merge(Western_Sambo_Shallow_2000, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2000_comm_count <- count(Western_Sambo_Shallow_2000_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_2000_comm_count$Year <- ('2000')
Western_Sambo_Shallow_2000_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2000_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_2000_total_count <- rbind(Western_Sambo_Shallow_2000_herb_count, Western_Sambo_Shallow_2000_comm_count)


Western_Sambo_Shallow_2001 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_2001.xls")


Western_Sambo_Shallow_2001_herb <- merge(Western_Sambo_Shallow_2001, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2001_herb_count <- count(Western_Sambo_Shallow_2001_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_2001_herb_count$Year <- ('2001')
Western_Sambo_Shallow_2001_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2001_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_2001_comm <- merge(Western_Sambo_Shallow_2001, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2001_comm_count <- count(Western_Sambo_Shallow_2001_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_2001_comm_count$Year <- ('2001')
Western_Sambo_Shallow_2001_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2001_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_2001_total_count <- rbind(Western_Sambo_Shallow_2001_herb_count, Western_Sambo_Shallow_2001_comm_count)


Western_Sambo_Shallow_2002 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_2002.xls")


Western_Sambo_Shallow_2002_herb <- merge(Western_Sambo_Shallow_2002, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2002_herb_count <- count(Western_Sambo_Shallow_2002_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_2002_herb_count$Year <- ('2002')
Western_Sambo_Shallow_2002_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2002_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_2002_comm <- merge(Western_Sambo_Shallow_2002, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2002_comm_count <- count(Western_Sambo_Shallow_2002_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_2002_comm_count$Year <- ('2002')
Western_Sambo_Shallow_2002_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2002_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_2002_total_count <- rbind(Western_Sambo_Shallow_2002_herb_count, Western_Sambo_Shallow_2002_comm_count)



Western_Sambo_Shallow_2003 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_2003.xls")


Western_Sambo_Shallow_2003_herb <- merge(Western_Sambo_Shallow_2003, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2003_herb_count <- count(Western_Sambo_Shallow_2003_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_2003_herb_count$Year <- ('2003')
Western_Sambo_Shallow_2003_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2003_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_2003_comm <- merge(Western_Sambo_Shallow_2003, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2003_comm_count <- count(Western_Sambo_Shallow_2003_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_2003_comm_count$Year <- ('2003')
Western_Sambo_Shallow_2003_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2003_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_2003_total_count <- rbind(Western_Sambo_Shallow_2003_herb_count, Western_Sambo_Shallow_2003_comm_count)




Western_Sambo_Shallow_2004 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_2004.xls")


Western_Sambo_Shallow_2004_herb <- merge(Western_Sambo_Shallow_2004, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2004_herb_count <- count(Western_Sambo_Shallow_2004_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_2004_herb_count$Year <- ('2004')
Western_Sambo_Shallow_2004_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2004_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_2004_comm <- merge(Western_Sambo_Shallow_2004, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2004_comm_count <- count(Western_Sambo_Shallow_2004_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_2004_comm_count$Year <- ('2004')
Western_Sambo_Shallow_2004_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2004_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_2004_total_count <- rbind(Western_Sambo_Shallow_2004_herb_count, Western_Sambo_Shallow_2004_comm_count)


Western_Sambo_Shallow_2005 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_2005.xls")


Western_Sambo_Shallow_2005_herb <- merge(Western_Sambo_Shallow_2005, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2005_herb_count <- count(Western_Sambo_Shallow_2005_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_2005_herb_count$Year <- ('2005')
Western_Sambo_Shallow_2005_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2005_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_2005_comm <- merge(Western_Sambo_Shallow_2005, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2005_comm_count <- count(Western_Sambo_Shallow_2005_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_2005_comm_count$Year <- ('2005')
Western_Sambo_Shallow_2005_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2005_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_2005_total_count <- rbind(Western_Sambo_Shallow_2005_herb_count, Western_Sambo_Shallow_2005_comm_count)




Western_Sambo_Shallow_2006 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_2006.xls")


Western_Sambo_Shallow_2006_herb <- merge(Western_Sambo_Shallow_2006, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2006_herb_count <- count(Western_Sambo_Shallow_2006_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_2006_herb_count$Year <- ('2006')
Western_Sambo_Shallow_2006_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2006_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_2006_comm <- merge(Western_Sambo_Shallow_2006, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2006_comm_count <- count(Western_Sambo_Shallow_2006_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_2006_comm_count$Year <- ('2006')
Western_Sambo_Shallow_2006_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2006_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_2006_total_count <- rbind(Western_Sambo_Shallow_2006_herb_count, Western_Sambo_Shallow_2006_comm_count)



Western_Sambo_Shallow_2007 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_2007.xls")


Western_Sambo_Shallow_2007_herb <- merge(Western_Sambo_Shallow_2007, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2007_herb_count <- count(Western_Sambo_Shallow_2007_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_2007_herb_count$Year <- ('2007')
Western_Sambo_Shallow_2007_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2007_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_2007_comm <- merge(Western_Sambo_Shallow_2007, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2007_comm_count <- count(Western_Sambo_Shallow_2007_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_2007_comm_count$Year <- ('2007')
Western_Sambo_Shallow_2007_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2007_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_2007_total_count <- rbind(Western_Sambo_Shallow_2007_herb_count, Western_Sambo_Shallow_2007_comm_count)




Western_Sambo_Shallow_2008 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_2008.xls")


Western_Sambo_Shallow_2008_herb <- merge(Western_Sambo_Shallow_2008, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2008_herb_count <- count(Western_Sambo_Shallow_2008_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_2008_herb_count$Year <- ('2008')
Western_Sambo_Shallow_2008_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2008_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_2008_comm <- merge(Western_Sambo_Shallow_2008, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2008_comm_count <- count(Western_Sambo_Shallow_2008_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_2008_comm_count$Year <- ('2008')
Western_Sambo_Shallow_2008_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2008_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_2008_total_count <- rbind(Western_Sambo_Shallow_2008_herb_count, Western_Sambo_Shallow_2008_comm_count)



Western_Sambo_Shallow_2009 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_2009.xls")


Western_Sambo_Shallow_2009_herb <- merge(Western_Sambo_Shallow_2009, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2009_herb_count <- count(Western_Sambo_Shallow_2009_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_2009_herb_count$Year <- ('2009')
Western_Sambo_Shallow_2009_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2009_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_2009_comm <- merge(Western_Sambo_Shallow_2009, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2009_comm_count <- count(Western_Sambo_Shallow_2009_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_2009_comm_count$Year <- ('2009')
Western_Sambo_Shallow_2009_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2009_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_2009_total_count <- rbind(Western_Sambo_Shallow_2009_herb_count, Western_Sambo_Shallow_2009_comm_count)





Western_Sambo_Shallow_2010 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_2010.xls")


Western_Sambo_Shallow_2010_herb <- merge(Western_Sambo_Shallow_2010, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2010_herb_count <- count(Western_Sambo_Shallow_2010_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_2010_herb_count$Year <- ('2010')
Western_Sambo_Shallow_2010_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2010_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_2010_comm <- merge(Western_Sambo_Shallow_2010, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2010_comm_count <- count(Western_Sambo_Shallow_2010_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_2010_comm_count$Year <- ('2010')
Western_Sambo_Shallow_2010_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2010_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_2010_total_count <- rbind(Western_Sambo_Shallow_2010_herb_count, Western_Sambo_Shallow_2010_comm_count)


Western_Sambo_Shallow_2011 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_2011.xls")


Western_Sambo_Shallow_2011_herb <- merge(Western_Sambo_Shallow_2011, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2011_herb_count <- count(Western_Sambo_Shallow_2011_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_2011_herb_count$Year <- ('2011')
Western_Sambo_Shallow_2011_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2011_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_2011_comm <- merge(Western_Sambo_Shallow_2011, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2011_comm_count <- count(Western_Sambo_Shallow_2011_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_2011_comm_count$Year <- ('2011')
Western_Sambo_Shallow_2011_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2011_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_2011_total_count <- rbind(Western_Sambo_Shallow_2011_herb_count, Western_Sambo_Shallow_2011_comm_count)





Western_Sambo_Shallow_2012 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_2012.xls")


Western_Sambo_Shallow_2012_herb <- merge(Western_Sambo_Shallow_2012, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2012_herb_count <- count(Western_Sambo_Shallow_2012_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_2012_herb_count$Year <- ('2012')
Western_Sambo_Shallow_2012_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2012_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_2012_comm <- merge(Western_Sambo_Shallow_2012, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2012_comm_count <- count(Western_Sambo_Shallow_2012_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_2012_comm_count$Year <- ('2012')
Western_Sambo_Shallow_2012_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2012_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_2012_total_count <- rbind(Western_Sambo_Shallow_2012_herb_count, Western_Sambo_Shallow_2012_comm_count)



Western_Sambo_Shallow_2014 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_2014.xls")


Western_Sambo_Shallow_2014_herb <- merge(Western_Sambo_Shallow_2014, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2014_herb_count <- count(Western_Sambo_Shallow_2014_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_2014_herb_count$Year <- ('2014')
Western_Sambo_Shallow_2014_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2014_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_2014_comm <- merge(Western_Sambo_Shallow_2014, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2014_comm_count <- count(Western_Sambo_Shallow_2014_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_2014_comm_count$Year <- ('2014')
Western_Sambo_Shallow_2014_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2014_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_2014_total_count <- rbind(Western_Sambo_Shallow_2014_herb_count, Western_Sambo_Shallow_2014_comm_count)




Western_Sambo_Shallow_2016 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_2016.xls")


Western_Sambo_Shallow_2016_herb <- merge(Western_Sambo_Shallow_2016, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2016_herb_count <- count(Western_Sambo_Shallow_2016_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_2016_herb_count$Year <- ('2016')
Western_Sambo_Shallow_2016_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2016_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_2016_comm <- merge(Western_Sambo_Shallow_2016, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2016_comm_count <- count(Western_Sambo_Shallow_2016_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_2016_comm_count$Year <- ('2016')
Western_Sambo_Shallow_2016_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2016_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_2016_total_count <- rbind(Western_Sambo_Shallow_2016_herb_count, Western_Sambo_Shallow_2016_comm_count)



Western_Sambo_Shallow_2018 <- import("LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_2018.xls")


Western_Sambo_Shallow_2018_herb <- merge(Western_Sambo_Shallow_2018, Herb, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2018_herb_count <- count(Western_Sambo_Shallow_2018_herb, vars = "SPECIES_CD")
Western_Sambo_Shallow_2018_herb_count$Year <- ('2018')
Western_Sambo_Shallow_2018_herb_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2018_herb_count$Type <- "Herbivorous"

Western_Sambo_Shallow_2018_comm <- merge(Western_Sambo_Shallow_2018, Comm, by = c("SPECIES_CD"))
Western_Sambo_Shallow_2018_comm_count <- count(Western_Sambo_Shallow_2018_comm, vars = "SPECIES_CD")
Western_Sambo_Shallow_2018_comm_count$Year <- ('2018')
Western_Sambo_Shallow_2018_comm_count$sitename <- ('Western Sambo Shallow')
Western_Sambo_Shallow_2018_comm_count$Type <- "Commercial"


Western_Sambo_Shallow_2018_total_count <- rbind(Western_Sambo_Shallow_2018_herb_count, Western_Sambo_Shallow_2018_comm_count)





Western_Sambo_Shallow_all <- rbind(Western_Sambo_Shallow_1999_total_count,Western_Sambo_Shallow_2000_total_count,Western_Sambo_Shallow_2001_total_count,Western_Sambo_Shallow_2002_total_count,Western_Sambo_Shallow_2003_total_count,Western_Sambo_Shallow_2004_total_count,Western_Sambo_Shallow_2005_total_count,Western_Sambo_Shallow_2006_total_count,Western_Sambo_Shallow_2007_total_count,Western_Sambo_Shallow_2008_total_count,Western_Sambo_Shallow_2009_total_count, Western_Sambo_Shallow_2010_total_count,Western_Sambo_Shallow_2011_total_count, Western_Sambo_Shallow_2012_total_count, Western_Sambo_Shallow_2014_total_count, Western_Sambo_Shallow_2016_total_count,Western_Sambo_Shallow_2018_total_count)


export(Western_Sambo_Shallow_all, "LK/Western_Sambo_Shallow/data/Western_Sambo_Shallow_count_herb_comm.csv")



### Combine all LK


LK_reef_count_combined <- rbind(Eastern_Sambo_Deep_all,Eastern_Sambo_Shallow_all,Jaap_Reef_all,Looe_Key_Deep_all,Looe_Key_Shallow_all,Red_Dun_Reef_all,Rock_Key_Deep_all,Rock_Key_Shallow_all,Sand_Key_Deep_all,Sand_Key_Shallow_all,West_Washer_Woman_all,Western_Sambo_Deep_all,Western_Sambo_Shallow_all)
LK_reef_count_combined$REGION <- ("LK")
export(LK_reef_count_combined, "LK/LK_fish_count.csv")




## Middle Keys 





Alligator_Deep_1999 <- import("MK/Alligator_Deep/data/Alligator_Deep_1999.xls")


Alligator_Deep_1999_herb <- merge(Alligator_Deep_1999, Herb, by = c("SPECIES_CD"))
Alligator_Deep_1999_herb_count <- count(Alligator_Deep_1999_herb, vars = "SPECIES_CD")
Alligator_Deep_1999_herb_count$Year <- ('1999')
Alligator_Deep_1999_herb_count$sitename <- ('Alligator Deep')
Alligator_Deep_1999_herb_count$Type <- "Herbivorous"

Alligator_Deep_1999_comm <- merge(Alligator_Deep_1999, Comm, by = c("SPECIES_CD"))
Alligator_Deep_1999_comm_count <- count(Alligator_Deep_1999_comm, vars = "SPECIES_CD")
Alligator_Deep_1999_comm_count$Year <- ('1999')
Alligator_Deep_1999_comm_count$sitename <- ('Alligator Deep')
Alligator_Deep_1999_comm_count$Type <- "Commercial"


Alligator_Deep_1999_total_count <- rbind(Alligator_Deep_1999_herb_count, Alligator_Deep_1999_comm_count)




Alligator_Deep_2000 <- import("MK/Alligator_Deep/data/Alligator_Deep_2000.xls")


Alligator_Deep_2000_herb <- merge(Alligator_Deep_2000, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2000_herb_count <- count(Alligator_Deep_2000_herb, vars = "SPECIES_CD")
Alligator_Deep_2000_herb_count$Year <- ('2000')
Alligator_Deep_2000_herb_count$sitename <- ('Alligator Deep')
Alligator_Deep_2000_herb_count$Type <- "Herbivorous"

Alligator_Deep_2000_comm <- merge(Alligator_Deep_2000, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2000_comm_count <- count(Alligator_Deep_2000_comm, vars = "SPECIES_CD")
Alligator_Deep_2000_comm_count$Year <- ('2000')
Alligator_Deep_2000_comm_count$sitename <- ('Alligator Deep')
Alligator_Deep_2000_comm_count$Type <- "Commercial"


Alligator_Deep_2000_total_count <- rbind(Alligator_Deep_2000_herb_count, Alligator_Deep_2000_comm_count)


Alligator_Deep_2001 <- import("MK/Alligator_Deep/data/Alligator_Deep_2001.xls")


Alligator_Deep_2001_herb <- merge(Alligator_Deep_2001, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2001_herb_count <- count(Alligator_Deep_2001_herb, vars = "SPECIES_CD")
Alligator_Deep_2001_herb_count$Year <- ('2001')
Alligator_Deep_2001_herb_count$sitename <- ('Alligator Deep')
Alligator_Deep_2001_herb_count$Type <- "Herbivorous"

Alligator_Deep_2001_comm <- merge(Alligator_Deep_2001, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2001_comm_count <- count(Alligator_Deep_2001_comm, vars = "SPECIES_CD")
Alligator_Deep_2001_comm_count$Year <- ('2001')
Alligator_Deep_2001_comm_count$sitename <- ('Alligator Deep')
Alligator_Deep_2001_comm_count$Type <- "Commercial"


Alligator_Deep_2001_total_count <- rbind(Alligator_Deep_2001_herb_count, Alligator_Deep_2001_comm_count)


Alligator_Deep_2002 <- import("MK/Alligator_Deep/data/Alligator_Deep_2002.xls")


Alligator_Deep_2002_herb <- merge(Alligator_Deep_2002, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2002_herb_count <- count(Alligator_Deep_2002_herb, vars = "SPECIES_CD")
Alligator_Deep_2002_herb_count$Year <- ('2002')
Alligator_Deep_2002_herb_count$sitename <- ('Alligator Deep')
Alligator_Deep_2002_herb_count$Type <- "Herbivorous"

Alligator_Deep_2002_comm <- merge(Alligator_Deep_2002, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2002_comm_count <- count(Alligator_Deep_2002_comm, vars = "SPECIES_CD")
Alligator_Deep_2002_comm_count$Year <- ('2002')
Alligator_Deep_2002_comm_count$sitename <- ('Alligator Deep')
Alligator_Deep_2002_comm_count$Type <- "Commercial"


Alligator_Deep_2002_total_count <- rbind(Alligator_Deep_2002_herb_count, Alligator_Deep_2002_comm_count)



Alligator_Deep_2003 <- import("MK/Alligator_Deep/data/Alligator_Deep_2003.xls")


Alligator_Deep_2003_herb <- merge(Alligator_Deep_2003, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2003_herb_count <- count(Alligator_Deep_2003_herb, vars = "SPECIES_CD")
Alligator_Deep_2003_herb_count$Year <- ('2003')
Alligator_Deep_2003_herb_count$sitename <- ('Alligator Deep')
Alligator_Deep_2003_herb_count$Type <- "Herbivorous"

Alligator_Deep_2003_comm <- merge(Alligator_Deep_2003, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2003_comm_count <- count(Alligator_Deep_2003_comm, vars = "SPECIES_CD")
Alligator_Deep_2003_comm_count$Year <- ('2003')
Alligator_Deep_2003_comm_count$sitename <- ('Alligator Deep')
Alligator_Deep_2003_comm_count$Type <- "Commercial"


Alligator_Deep_2003_total_count <- rbind(Alligator_Deep_2003_herb_count, Alligator_Deep_2003_comm_count)




# Alligator_Deep_2004 <- import("MK/Alligator_Deep/data/Alligator_Deep_2004.xls")
# 
# 
# Alligator_Deep_2004_herb <- merge(Alligator_Deep_2004, Herb, by = c("SPECIES_CD"))
# Alligator_Deep_2004_herb_count <- count(Alligator_Deep_2004_herb, vars = "SPECIES_CD")
# Alligator_Deep_2004_herb_count$Year <- ('2004')
# Alligator_Deep_2004_herb_count$sitename <- ('Alligator Deep')
# Alligator_Deep_2004_herb_count$Type <- "Herbivorous"
# 
# Alligator_Deep_2004_comm <- merge(Alligator_Deep_2004, Comm, by = c("SPECIES_CD"))
# Alligator_Deep_2004_comm_count <- count(Alligator_Deep_2004_comm, vars = "SPECIES_CD")
# Alligator_Deep_2004_comm_count$Year <- ('2004')
# Alligator_Deep_2004_comm_count$sitename <- ('Alligator Deep')
# Alligator_Deep_2004_comm_count$Type <- "Commercial"
# 
# 
# Alligator_Deep_2004_total_count <- rbind(Alligator_Deep_2004_herb_count, Alligator_Deep_2004_comm_count)
# 

Alligator_Deep_2005 <- import("MK/Alligator_Deep/data/Alligator_Deep_2005.xls")


Alligator_Deep_2005_herb <- merge(Alligator_Deep_2005, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2005_herb_count <- count(Alligator_Deep_2005_herb, vars = "SPECIES_CD")
Alligator_Deep_2005_herb_count$Year <- ('2005')
Alligator_Deep_2005_herb_count$sitename <- ('Alligator Deep')
Alligator_Deep_2005_herb_count$Type <- "Herbivorous"

Alligator_Deep_2005_comm <- merge(Alligator_Deep_2005, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2005_comm_count <- count(Alligator_Deep_2005_comm, vars = "SPECIES_CD")
Alligator_Deep_2005_comm_count$Year <- ('2005')
Alligator_Deep_2005_comm_count$sitename <- ('Alligator Deep')
Alligator_Deep_2005_comm_count$Type <- "Commercial"


Alligator_Deep_2005_total_count <- rbind(Alligator_Deep_2005_herb_count, Alligator_Deep_2005_comm_count)




Alligator_Deep_2006 <- import("MK/Alligator_Deep/data/Alligator_Deep_2006.xls")


Alligator_Deep_2006_herb <- merge(Alligator_Deep_2006, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2006_herb_count <- count(Alligator_Deep_2006_herb, vars = "SPECIES_CD")
Alligator_Deep_2006_herb_count$Year <- ('2006')
Alligator_Deep_2006_herb_count$sitename <- ('Alligator Deep')
Alligator_Deep_2006_herb_count$Type <- "Herbivorous"

Alligator_Deep_2006_comm <- merge(Alligator_Deep_2006, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2006_comm_count <- count(Alligator_Deep_2006_comm, vars = "SPECIES_CD")
Alligator_Deep_2006_comm_count$Year <- ('2006')
Alligator_Deep_2006_comm_count$sitename <- ('Alligator Deep')
Alligator_Deep_2006_comm_count$Type <- "Commercial"


Alligator_Deep_2006_total_count <- rbind(Alligator_Deep_2006_herb_count, Alligator_Deep_2006_comm_count)



Alligator_Deep_2007 <- import("MK/Alligator_Deep/data/Alligator_Deep_2007.xls")


Alligator_Deep_2007_herb <- merge(Alligator_Deep_2007, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2007_herb_count <- count(Alligator_Deep_2007_herb, vars = "SPECIES_CD")
Alligator_Deep_2007_herb_count$Year <- ('2007')
Alligator_Deep_2007_herb_count$sitename <- ('Alligator Deep')
Alligator_Deep_2007_herb_count$Type <- "Herbivorous"

Alligator_Deep_2007_comm <- merge(Alligator_Deep_2007, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2007_comm_count <- count(Alligator_Deep_2007_comm, vars = "SPECIES_CD")
Alligator_Deep_2007_comm_count$Year <- ('2007')
Alligator_Deep_2007_comm_count$sitename <- ('Alligator Deep')
Alligator_Deep_2007_comm_count$Type <- "Commercial"


Alligator_Deep_2007_total_count <- rbind(Alligator_Deep_2007_herb_count, Alligator_Deep_2007_comm_count)




Alligator_Deep_2008 <- import("MK/Alligator_Deep/data/Alligator_Deep_2008.xls")


Alligator_Deep_2008_herb <- merge(Alligator_Deep_2008, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2008_herb_count <- count(Alligator_Deep_2008_herb, vars = "SPECIES_CD")
Alligator_Deep_2008_herb_count$Year <- ('2008')
Alligator_Deep_2008_herb_count$sitename <- ('Alligator Deep')
Alligator_Deep_2008_herb_count$Type <- "Herbivorous"

Alligator_Deep_2008_comm <- merge(Alligator_Deep_2008, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2008_comm_count <- count(Alligator_Deep_2008_comm, vars = "SPECIES_CD")
Alligator_Deep_2008_comm_count$Year <- ('2008')
Alligator_Deep_2008_comm_count$sitename <- ('Alligator Deep')
Alligator_Deep_2008_comm_count$Type <- "Commercial"


Alligator_Deep_2008_total_count <- rbind(Alligator_Deep_2008_herb_count, Alligator_Deep_2008_comm_count)



Alligator_Deep_2009 <- import("MK/Alligator_Deep/data/Alligator_Deep_2009.xls")


Alligator_Deep_2009_herb <- merge(Alligator_Deep_2009, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2009_herb_count <- count(Alligator_Deep_2009_herb, vars = "SPECIES_CD")
Alligator_Deep_2009_herb_count$Year <- ('2009')
Alligator_Deep_2009_herb_count$sitename <- ('Alligator Deep')
Alligator_Deep_2009_herb_count$Type <- "Herbivorous"

Alligator_Deep_2009_comm <- merge(Alligator_Deep_2009, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2009_comm_count <- count(Alligator_Deep_2009_comm, vars = "SPECIES_CD")
Alligator_Deep_2009_comm_count$Year <- ('2009')
Alligator_Deep_2009_comm_count$sitename <- ('Alligator Deep')
Alligator_Deep_2009_comm_count$Type <- "Commercial"


Alligator_Deep_2009_total_count <- rbind(Alligator_Deep_2009_herb_count, Alligator_Deep_2009_comm_count)





Alligator_Deep_2010 <- import("MK/Alligator_Deep/data/Alligator_Deep_2010.xls")


Alligator_Deep_2010_herb <- merge(Alligator_Deep_2010, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2010_herb_count <- count(Alligator_Deep_2010_herb, vars = "SPECIES_CD")
Alligator_Deep_2010_herb_count$Year <- ('2010')
Alligator_Deep_2010_herb_count$sitename <- ('Alligator Deep')
Alligator_Deep_2010_herb_count$Type <- "Herbivorous"

Alligator_Deep_2010_comm <- merge(Alligator_Deep_2010, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2010_comm_count <- count(Alligator_Deep_2010_comm, vars = "SPECIES_CD")
Alligator_Deep_2010_comm_count$Year <- ('2010')
Alligator_Deep_2010_comm_count$sitename <- ('Alligator Deep')
Alligator_Deep_2010_comm_count$Type <- "Commercial"


Alligator_Deep_2010_total_count <- rbind(Alligator_Deep_2010_herb_count, Alligator_Deep_2010_comm_count)


Alligator_Deep_2011 <- import("MK/Alligator_Deep/data/Alligator_Deep_2011.xls")


Alligator_Deep_2011_herb <- merge(Alligator_Deep_2011, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2011_herb_count <- count(Alligator_Deep_2011_herb, vars = "SPECIES_CD")
Alligator_Deep_2011_herb_count$Year <- ('2011')
Alligator_Deep_2011_herb_count$sitename <- ('Alligator Deep')
Alligator_Deep_2011_herb_count$Type <- "Herbivorous"

Alligator_Deep_2011_comm <- merge(Alligator_Deep_2011, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2011_comm_count <- count(Alligator_Deep_2011_comm, vars = "SPECIES_CD")
Alligator_Deep_2011_comm_count$Year <- ('2011')
Alligator_Deep_2011_comm_count$sitename <- ('Alligator Deep')
Alligator_Deep_2011_comm_count$Type <- "Commercial"


Alligator_Deep_2011_total_count <- rbind(Alligator_Deep_2011_herb_count, Alligator_Deep_2011_comm_count)





Alligator_Deep_2012 <- import("MK/Alligator_Deep/data/Alligator_Deep_2012.xls")


Alligator_Deep_2012_herb <- merge(Alligator_Deep_2012, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2012_herb_count <- count(Alligator_Deep_2012_herb, vars = "SPECIES_CD")
Alligator_Deep_2012_herb_count$Year <- ('2012')
Alligator_Deep_2012_herb_count$sitename <- ('Alligator Deep')
Alligator_Deep_2012_herb_count$Type <- "Herbivorous"

Alligator_Deep_2012_comm <- merge(Alligator_Deep_2012, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2012_comm_count <- count(Alligator_Deep_2012_comm, vars = "SPECIES_CD")
Alligator_Deep_2012_comm_count$Year <- ('2012')
Alligator_Deep_2012_comm_count$sitename <- ('Alligator Deep')
Alligator_Deep_2012_comm_count$Type <- "Commercial"


Alligator_Deep_2012_total_count <- rbind(Alligator_Deep_2012_herb_count, Alligator_Deep_2012_comm_count)



Alligator_Deep_2014 <- import("MK/Alligator_Deep/data/Alligator_Deep_2014.xls")


Alligator_Deep_2014_herb <- merge(Alligator_Deep_2014, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2014_herb_count <- count(Alligator_Deep_2014_herb, vars = "SPECIES_CD")
Alligator_Deep_2014_herb_count$Year <- ('2014')
Alligator_Deep_2014_herb_count$sitename <- ('Alligator Deep')
Alligator_Deep_2014_herb_count$Type <- "Herbivorous"

Alligator_Deep_2014_comm <- merge(Alligator_Deep_2014, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2014_comm_count <- count(Alligator_Deep_2014_comm, vars = "SPECIES_CD")
Alligator_Deep_2014_comm_count$Year <- ('2014')
Alligator_Deep_2014_comm_count$sitename <- ('Alligator Deep')
Alligator_Deep_2014_comm_count$Type <- "Commercial"


Alligator_Deep_2014_total_count <- rbind(Alligator_Deep_2014_herb_count, Alligator_Deep_2014_comm_count)




Alligator_Deep_2016 <- import("MK/Alligator_Deep/data/Alligator_Deep_2016.xls")


Alligator_Deep_2016_herb <- merge(Alligator_Deep_2016, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2016_herb_count <- count(Alligator_Deep_2016_herb, vars = "SPECIES_CD")
Alligator_Deep_2016_herb_count$Year <- ('2016')
Alligator_Deep_2016_herb_count$sitename <- ('Alligator Deep')
Alligator_Deep_2016_herb_count$Type <- "Herbivorous"

Alligator_Deep_2016_comm <- merge(Alligator_Deep_2016, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2016_comm_count <- count(Alligator_Deep_2016_comm, vars = "SPECIES_CD")
Alligator_Deep_2016_comm_count$Year <- ('2016')
Alligator_Deep_2016_comm_count$sitename <- ('Alligator Deep')
Alligator_Deep_2016_comm_count$Type <- "Commercial"


Alligator_Deep_2016_total_count <- rbind(Alligator_Deep_2016_herb_count, Alligator_Deep_2016_comm_count)



Alligator_Deep_2018 <- import("MK/Alligator_Deep/data/Alligator_Deep_2018.xls")


Alligator_Deep_2018_herb <- merge(Alligator_Deep_2018, Herb, by = c("SPECIES_CD"))
Alligator_Deep_2018_herb_count <- count(Alligator_Deep_2018_herb, vars = "SPECIES_CD")
Alligator_Deep_2018_herb_count$Year <- ('2018')
Alligator_Deep_2018_herb_count$sitename <- ('Alligator Deep')
Alligator_Deep_2018_herb_count$Type <- "Herbivorous"

Alligator_Deep_2018_comm <- merge(Alligator_Deep_2018, Comm, by = c("SPECIES_CD"))
Alligator_Deep_2018_comm_count <- count(Alligator_Deep_2018_comm, vars = "SPECIES_CD")
Alligator_Deep_2018_comm_count$Year <- ('2018')
Alligator_Deep_2018_comm_count$sitename <- ('Alligator Deep')
Alligator_Deep_2018_comm_count$Type <- "Commercial"


Alligator_Deep_2018_total_count <- rbind(Alligator_Deep_2018_herb_count, Alligator_Deep_2018_comm_count)





Alligator_Deep_all <- rbind(Alligator_Deep_1999_total_count,Alligator_Deep_2000_total_count,Alligator_Deep_2001_total_count,Alligator_Deep_2002_total_count,Alligator_Deep_2003_total_count,Alligator_Deep_2005_total_count,Alligator_Deep_2006_total_count,Alligator_Deep_2007_total_count,Alligator_Deep_2008_total_count,Alligator_Deep_2009_total_count, Alligator_Deep_2010_total_count,Alligator_Deep_2011_total_count, Alligator_Deep_2012_total_count, Alligator_Deep_2014_total_count, Alligator_Deep_2016_total_count,Alligator_Deep_2018_total_count)


export(Alligator_Deep_all, "MK/Alligator_Deep/data/Alligator_Deep_count_herb_comm.csv")







Alligator_Shallow_1999 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_1999.xls")


Alligator_Shallow_1999_herb <- merge(Alligator_Shallow_1999, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_1999_herb_count <- count(Alligator_Shallow_1999_herb, vars = "SPECIES_CD")
Alligator_Shallow_1999_herb_count$Year <- ('1999')
Alligator_Shallow_1999_herb_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_1999_herb_count$Type <- "Herbivorous"

Alligator_Shallow_1999_comm <- merge(Alligator_Shallow_1999, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_1999_comm_count <- count(Alligator_Shallow_1999_comm, vars = "SPECIES_CD")
Alligator_Shallow_1999_comm_count$Year <- ('1999')
Alligator_Shallow_1999_comm_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_1999_comm_count$Type <- "Commercial"


Alligator_Shallow_1999_total_count <- rbind(Alligator_Shallow_1999_herb_count, Alligator_Shallow_1999_comm_count)




Alligator_Shallow_2000 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_2000.xls")


Alligator_Shallow_2000_herb <- merge(Alligator_Shallow_2000, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2000_herb_count <- count(Alligator_Shallow_2000_herb, vars = "SPECIES_CD")
Alligator_Shallow_2000_herb_count$Year <- ('2000')
Alligator_Shallow_2000_herb_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2000_herb_count$Type <- "Herbivorous"

Alligator_Shallow_2000_comm <- merge(Alligator_Shallow_2000, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2000_comm_count <- count(Alligator_Shallow_2000_comm, vars = "SPECIES_CD")
Alligator_Shallow_2000_comm_count$Year <- ('2000')
Alligator_Shallow_2000_comm_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2000_comm_count$Type <- "Commercial"


Alligator_Shallow_2000_total_count <- rbind(Alligator_Shallow_2000_herb_count, Alligator_Shallow_2000_comm_count)


Alligator_Shallow_2001 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_2001.xls")


Alligator_Shallow_2001_herb <- merge(Alligator_Shallow_2001, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2001_herb_count <- count(Alligator_Shallow_2001_herb, vars = "SPECIES_CD")
Alligator_Shallow_2001_herb_count$Year <- ('2001')
Alligator_Shallow_2001_herb_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2001_herb_count$Type <- "Herbivorous"

Alligator_Shallow_2001_comm <- merge(Alligator_Shallow_2001, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2001_comm_count <- count(Alligator_Shallow_2001_comm, vars = "SPECIES_CD")
Alligator_Shallow_2001_comm_count$Year <- ('2001')
Alligator_Shallow_2001_comm_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2001_comm_count$Type <- "Commercial"


Alligator_Shallow_2001_total_count <- rbind(Alligator_Shallow_2001_herb_count, Alligator_Shallow_2001_comm_count)


Alligator_Shallow_2002 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_2002.xls")


Alligator_Shallow_2002_herb <- merge(Alligator_Shallow_2002, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2002_herb_count <- count(Alligator_Shallow_2002_herb, vars = "SPECIES_CD")
Alligator_Shallow_2002_herb_count$Year <- ('2002')
Alligator_Shallow_2002_herb_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2002_herb_count$Type <- "Herbivorous"

Alligator_Shallow_2002_comm <- merge(Alligator_Shallow_2002, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2002_comm_count <- count(Alligator_Shallow_2002_comm, vars = "SPECIES_CD")
Alligator_Shallow_2002_comm_count$Year <- ('2002')
Alligator_Shallow_2002_comm_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2002_comm_count$Type <- "Commercial"


Alligator_Shallow_2002_total_count <- rbind(Alligator_Shallow_2002_herb_count, Alligator_Shallow_2002_comm_count)



Alligator_Shallow_2003 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_2003.xls")


Alligator_Shallow_2003_herb <- merge(Alligator_Shallow_2003, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2003_herb_count <- count(Alligator_Shallow_2003_herb, vars = "SPECIES_CD")
Alligator_Shallow_2003_herb_count$Year <- ('2003')
Alligator_Shallow_2003_herb_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2003_herb_count$Type <- "Herbivorous"

Alligator_Shallow_2003_comm <- merge(Alligator_Shallow_2003, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2003_comm_count <- count(Alligator_Shallow_2003_comm, vars = "SPECIES_CD")
Alligator_Shallow_2003_comm_count$Year <- ('2003')
Alligator_Shallow_2003_comm_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2003_comm_count$Type <- "Commercial"


Alligator_Shallow_2003_total_count <- rbind(Alligator_Shallow_2003_herb_count, Alligator_Shallow_2003_comm_count)




# Alligator_Shallow_2004 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_2004.xls")
# 
# 
# Alligator_Shallow_2004_herb <- merge(Alligator_Shallow_2004, Herb, by = c("SPECIES_CD"))
# Alligator_Shallow_2004_herb_count <- count(Alligator_Shallow_2004_herb, vars = "SPECIES_CD")
# Alligator_Shallow_2004_herb_count$Year <- ('2004')
# Alligator_Shallow_2004_herb_count$sitename <- ('Alligator Shallow')
# Alligator_Shallow_2004_herb_count$Type <- "Herbivorous"
# 
# Alligator_Shallow_2004_comm <- merge(Alligator_Shallow_2004, Comm, by = c("SPECIES_CD"))
# Alligator_Shallow_2004_comm_count <- count(Alligator_Shallow_2004_comm, vars = "SPECIES_CD")
# Alligator_Shallow_2004_comm_count$Year <- ('2004')
# Alligator_Shallow_2004_comm_count$sitename <- ('Alligator Shallow')
# Alligator_Shallow_2004_comm_count$Type <- "Commercial"
# 
# 
# Alligator_Shallow_2004_total_count <- rbind(Alligator_Shallow_2004_herb_count, Alligator_Shallow_2004_comm_count)
# 

Alligator_Shallow_2005 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_2005.xls")


Alligator_Shallow_2005_herb <- merge(Alligator_Shallow_2005, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2005_herb_count <- count(Alligator_Shallow_2005_herb, vars = "SPECIES_CD")
Alligator_Shallow_2005_herb_count$Year <- ('2005')
Alligator_Shallow_2005_herb_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2005_herb_count$Type <- "Herbivorous"

Alligator_Shallow_2005_comm <- merge(Alligator_Shallow_2005, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2005_comm_count <- count(Alligator_Shallow_2005_comm, vars = "SPECIES_CD")
Alligator_Shallow_2005_comm_count$Year <- ('2005')
Alligator_Shallow_2005_comm_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2005_comm_count$Type <- "Commercial"


Alligator_Shallow_2005_total_count <- rbind(Alligator_Shallow_2005_herb_count, Alligator_Shallow_2005_comm_count)




Alligator_Shallow_2006 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_2006.xls")


Alligator_Shallow_2006_herb <- merge(Alligator_Shallow_2006, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2006_herb_count <- count(Alligator_Shallow_2006_herb, vars = "SPECIES_CD")
Alligator_Shallow_2006_herb_count$Year <- ('2006')
Alligator_Shallow_2006_herb_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2006_herb_count$Type <- "Herbivorous"

Alligator_Shallow_2006_comm <- merge(Alligator_Shallow_2006, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2006_comm_count <- count(Alligator_Shallow_2006_comm, vars = "SPECIES_CD")
Alligator_Shallow_2006_comm_count$Year <- ('2006')
Alligator_Shallow_2006_comm_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2006_comm_count$Type <- "Commercial"


Alligator_Shallow_2006_total_count <- rbind(Alligator_Shallow_2006_herb_count, Alligator_Shallow_2006_comm_count)



Alligator_Shallow_2007 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_2007.xls")


Alligator_Shallow_2007_herb <- merge(Alligator_Shallow_2007, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2007_herb_count <- count(Alligator_Shallow_2007_herb, vars = "SPECIES_CD")
Alligator_Shallow_2007_herb_count$Year <- ('2007')
Alligator_Shallow_2007_herb_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2007_herb_count$Type <- "Herbivorous"

Alligator_Shallow_2007_comm <- merge(Alligator_Shallow_2007, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2007_comm_count <- count(Alligator_Shallow_2007_comm, vars = "SPECIES_CD")
Alligator_Shallow_2007_comm_count$Year <- ('2007')
Alligator_Shallow_2007_comm_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2007_comm_count$Type <- "Commercial"


Alligator_Shallow_2007_total_count <- rbind(Alligator_Shallow_2007_herb_count, Alligator_Shallow_2007_comm_count)




Alligator_Shallow_2008 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_2008.xls")


Alligator_Shallow_2008_herb <- merge(Alligator_Shallow_2008, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2008_herb_count <- count(Alligator_Shallow_2008_herb, vars = "SPECIES_CD")
Alligator_Shallow_2008_herb_count$Year <- ('2008')
Alligator_Shallow_2008_herb_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2008_herb_count$Type <- "Herbivorous"

Alligator_Shallow_2008_comm <- merge(Alligator_Shallow_2008, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2008_comm_count <- count(Alligator_Shallow_2008_comm, vars = "SPECIES_CD")
Alligator_Shallow_2008_comm_count$Year <- ('2008')
Alligator_Shallow_2008_comm_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2008_comm_count$Type <- "Commercial"


Alligator_Shallow_2008_total_count <- rbind(Alligator_Shallow_2008_herb_count, Alligator_Shallow_2008_comm_count)



Alligator_Shallow_2009 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_2009.xls")


Alligator_Shallow_2009_herb <- merge(Alligator_Shallow_2009, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2009_herb_count <- count(Alligator_Shallow_2009_herb, vars = "SPECIES_CD")
Alligator_Shallow_2009_herb_count$Year <- ('2009')
Alligator_Shallow_2009_herb_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2009_herb_count$Type <- "Herbivorous"

Alligator_Shallow_2009_comm <- merge(Alligator_Shallow_2009, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2009_comm_count <- count(Alligator_Shallow_2009_comm, vars = "SPECIES_CD")
Alligator_Shallow_2009_comm_count$Year <- ('2009')
Alligator_Shallow_2009_comm_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2009_comm_count$Type <- "Commercial"


Alligator_Shallow_2009_total_count <- rbind(Alligator_Shallow_2009_herb_count, Alligator_Shallow_2009_comm_count)





Alligator_Shallow_2010 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_2010.xls")


Alligator_Shallow_2010_herb <- merge(Alligator_Shallow_2010, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2010_herb_count <- count(Alligator_Shallow_2010_herb, vars = "SPECIES_CD")
Alligator_Shallow_2010_herb_count$Year <- ('2010')
Alligator_Shallow_2010_herb_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2010_herb_count$Type <- "Herbivorous"

Alligator_Shallow_2010_comm <- merge(Alligator_Shallow_2010, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2010_comm_count <- count(Alligator_Shallow_2010_comm, vars = "SPECIES_CD")
Alligator_Shallow_2010_comm_count$Year <- ('2010')
Alligator_Shallow_2010_comm_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2010_comm_count$Type <- "Commercial"


Alligator_Shallow_2010_total_count <- rbind(Alligator_Shallow_2010_herb_count, Alligator_Shallow_2010_comm_count)


Alligator_Shallow_2011 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_2011.xls")


Alligator_Shallow_2011_herb <- merge(Alligator_Shallow_2011, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2011_herb_count <- count(Alligator_Shallow_2011_herb, vars = "SPECIES_CD")
Alligator_Shallow_2011_herb_count$Year <- ('2011')
Alligator_Shallow_2011_herb_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2011_herb_count$Type <- "Herbivorous"

Alligator_Shallow_2011_comm <- merge(Alligator_Shallow_2011, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2011_comm_count <- count(Alligator_Shallow_2011_comm, vars = "SPECIES_CD")
Alligator_Shallow_2011_comm_count$Year <- ('2011')
Alligator_Shallow_2011_comm_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2011_comm_count$Type <- "Commercial"


Alligator_Shallow_2011_total_count <- rbind(Alligator_Shallow_2011_herb_count, Alligator_Shallow_2011_comm_count)





Alligator_Shallow_2012 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_2012.xls")


Alligator_Shallow_2012_herb <- merge(Alligator_Shallow_2012, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2012_herb_count <- count(Alligator_Shallow_2012_herb, vars = "SPECIES_CD")
Alligator_Shallow_2012_herb_count$Year <- ('2012')
Alligator_Shallow_2012_herb_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2012_herb_count$Type <- "Herbivorous"

Alligator_Shallow_2012_comm <- merge(Alligator_Shallow_2012, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2012_comm_count <- count(Alligator_Shallow_2012_comm, vars = "SPECIES_CD")
Alligator_Shallow_2012_comm_count$Year <- ('2012')
Alligator_Shallow_2012_comm_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2012_comm_count$Type <- "Commercial"


Alligator_Shallow_2012_total_count <- rbind(Alligator_Shallow_2012_herb_count, Alligator_Shallow_2012_comm_count)



Alligator_Shallow_2014 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_2014.xls")


Alligator_Shallow_2014_herb <- merge(Alligator_Shallow_2014, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2014_herb_count <- count(Alligator_Shallow_2014_herb, vars = "SPECIES_CD")
Alligator_Shallow_2014_herb_count$Year <- ('2014')
Alligator_Shallow_2014_herb_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2014_herb_count$Type <- "Herbivorous"

Alligator_Shallow_2014_comm <- merge(Alligator_Shallow_2014, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2014_comm_count <- count(Alligator_Shallow_2014_comm, vars = "SPECIES_CD")
Alligator_Shallow_2014_comm_count$Year <- ('2014')
Alligator_Shallow_2014_comm_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2014_comm_count$Type <- "Commercial"


Alligator_Shallow_2014_total_count <- rbind(Alligator_Shallow_2014_herb_count, Alligator_Shallow_2014_comm_count)




Alligator_Shallow_2016 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_2016.xls")


Alligator_Shallow_2016_herb <- merge(Alligator_Shallow_2016, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2016_herb_count <- count(Alligator_Shallow_2016_herb, vars = "SPECIES_CD")
Alligator_Shallow_2016_herb_count$Year <- ('2016')
Alligator_Shallow_2016_herb_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2016_herb_count$Type <- "Herbivorous"

Alligator_Shallow_2016_comm <- merge(Alligator_Shallow_2016, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2016_comm_count <- count(Alligator_Shallow_2016_comm, vars = "SPECIES_CD")
Alligator_Shallow_2016_comm_count$Year <- ('2016')
Alligator_Shallow_2016_comm_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2016_comm_count$Type <- "Commercial"


Alligator_Shallow_2016_total_count <- rbind(Alligator_Shallow_2016_herb_count, Alligator_Shallow_2016_comm_count)



Alligator_Shallow_2018 <- import("MK/Alligator_Shallow/data/Alligator_Shallow_2018.xls")


Alligator_Shallow_2018_herb <- merge(Alligator_Shallow_2018, Herb, by = c("SPECIES_CD"))
Alligator_Shallow_2018_herb_count <- count(Alligator_Shallow_2018_herb, vars = "SPECIES_CD")
Alligator_Shallow_2018_herb_count$Year <- ('2018')
Alligator_Shallow_2018_herb_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2018_herb_count$Type <- "Herbivorous"

Alligator_Shallow_2018_comm <- merge(Alligator_Shallow_2018, Comm, by = c("SPECIES_CD"))
Alligator_Shallow_2018_comm_count <- count(Alligator_Shallow_2018_comm, vars = "SPECIES_CD")
Alligator_Shallow_2018_comm_count$Year <- ('2018')
Alligator_Shallow_2018_comm_count$sitename <- ('Alligator Shallow')
Alligator_Shallow_2018_comm_count$Type <- "Commercial"


Alligator_Shallow_2018_total_count <- rbind(Alligator_Shallow_2018_herb_count, Alligator_Shallow_2018_comm_count)





Alligator_Shallow_all <- rbind(Alligator_Shallow_1999_total_count,Alligator_Shallow_2000_total_count,Alligator_Shallow_2001_total_count,Alligator_Shallow_2002_total_count,Alligator_Shallow_2003_total_count,Alligator_Shallow_2005_total_count,Alligator_Shallow_2006_total_count,Alligator_Shallow_2007_total_count,Alligator_Shallow_2008_total_count,Alligator_Shallow_2009_total_count, Alligator_Shallow_2010_total_count,Alligator_Shallow_2011_total_count, Alligator_Shallow_2012_total_count, Alligator_Shallow_2014_total_count, Alligator_Shallow_2016_total_count,Alligator_Shallow_2018_total_count)


export(Alligator_Shallow_all, "MK/Alligator_Shallow/data/Alligator_Shallow_count_herb_comm.csv")





Dustan_Rocks_1999 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_1999.xls")


Dustan_Rocks_1999_herb <- merge(Dustan_Rocks_1999, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_1999_herb_count <- count(Dustan_Rocks_1999_herb, vars = "SPECIES_CD")
Dustan_Rocks_1999_herb_count$Year <- ('1999')
Dustan_Rocks_1999_herb_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_1999_herb_count$Type <- "Herbivorous"

Dustan_Rocks_1999_comm <- merge(Dustan_Rocks_1999, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_1999_comm_count <- count(Dustan_Rocks_1999_comm, vars = "SPECIES_CD")
Dustan_Rocks_1999_comm_count$Year <- ('1999')
Dustan_Rocks_1999_comm_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_1999_comm_count$Type <- "Commercial"


Dustan_Rocks_1999_total_count <- rbind(Dustan_Rocks_1999_herb_count, Dustan_Rocks_1999_comm_count)




Dustan_Rocks_2000 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_2000.xls")


Dustan_Rocks_2000_herb <- merge(Dustan_Rocks_2000, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2000_herb_count <- count(Dustan_Rocks_2000_herb, vars = "SPECIES_CD")
Dustan_Rocks_2000_herb_count$Year <- ('2000')
Dustan_Rocks_2000_herb_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2000_herb_count$Type <- "Herbivorous"

Dustan_Rocks_2000_comm <- merge(Dustan_Rocks_2000, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2000_comm_count <- count(Dustan_Rocks_2000_comm, vars = "SPECIES_CD")
Dustan_Rocks_2000_comm_count$Year <- ('2000')
Dustan_Rocks_2000_comm_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2000_comm_count$Type <- "Commercial"


Dustan_Rocks_2000_total_count <- rbind(Dustan_Rocks_2000_herb_count, Dustan_Rocks_2000_comm_count)


Dustan_Rocks_2001 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_2001.xls")


Dustan_Rocks_2001_herb <- merge(Dustan_Rocks_2001, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2001_herb_count <- count(Dustan_Rocks_2001_herb, vars = "SPECIES_CD")
Dustan_Rocks_2001_herb_count$Year <- ('2001')
Dustan_Rocks_2001_herb_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2001_herb_count$Type <- "Herbivorous"

Dustan_Rocks_2001_comm <- merge(Dustan_Rocks_2001, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2001_comm_count <- count(Dustan_Rocks_2001_comm, vars = "SPECIES_CD")
Dustan_Rocks_2001_comm_count$Year <- ('2001')
Dustan_Rocks_2001_comm_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2001_comm_count$Type <- "Commercial"


Dustan_Rocks_2001_total_count <- rbind(Dustan_Rocks_2001_herb_count, Dustan_Rocks_2001_comm_count)


Dustan_Rocks_2002 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_2002.xls")


Dustan_Rocks_2002_herb <- merge(Dustan_Rocks_2002, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2002_herb_count <- count(Dustan_Rocks_2002_herb, vars = "SPECIES_CD")
Dustan_Rocks_2002_herb_count$Year <- ('2002')
Dustan_Rocks_2002_herb_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2002_herb_count$Type <- "Herbivorous"

Dustan_Rocks_2002_comm <- merge(Dustan_Rocks_2002, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2002_comm_count <- count(Dustan_Rocks_2002_comm, vars = "SPECIES_CD")
Dustan_Rocks_2002_comm_count$Year <- ('2002')
Dustan_Rocks_2002_comm_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2002_comm_count$Type <- "Commercial"


Dustan_Rocks_2002_total_count <- rbind(Dustan_Rocks_2002_herb_count, Dustan_Rocks_2002_comm_count)



Dustan_Rocks_2003 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_2003.xls")


Dustan_Rocks_2003_herb <- merge(Dustan_Rocks_2003, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2003_herb_count <- count(Dustan_Rocks_2003_herb, vars = "SPECIES_CD")
Dustan_Rocks_2003_herb_count$Year <- ('2003')
Dustan_Rocks_2003_herb_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2003_herb_count$Type <- "Herbivorous"

Dustan_Rocks_2003_comm <- merge(Dustan_Rocks_2003, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2003_comm_count <- count(Dustan_Rocks_2003_comm, vars = "SPECIES_CD")
Dustan_Rocks_2003_comm_count$Year <- ('2003')
Dustan_Rocks_2003_comm_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2003_comm_count$Type <- "Commercial"


Dustan_Rocks_2003_total_count <- rbind(Dustan_Rocks_2003_herb_count, Dustan_Rocks_2003_comm_count)




# Dustan_Rocks_2004 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_2004.xls")
# 
# 
# Dustan_Rocks_2004_herb <- merge(Dustan_Rocks_2004, Herb, by = c("SPECIES_CD"))
# Dustan_Rocks_2004_herb_count <- count(Dustan_Rocks_2004_herb, vars = "SPECIES_CD")
# Dustan_Rocks_2004_herb_count$Year <- ('2004')
# Dustan_Rocks_2004_herb_count$sitename <- ('Dustan Rocks')
# Dustan_Rocks_2004_herb_count$Type <- "Herbivorous"
# 
# Dustan_Rocks_2004_comm <- merge(Dustan_Rocks_2004, Comm, by = c("SPECIES_CD"))
# Dustan_Rocks_2004_comm_count <- count(Dustan_Rocks_2004_comm, vars = "SPECIES_CD")
# Dustan_Rocks_2004_comm_count$Year <- ('2004')
# Dustan_Rocks_2004_comm_count$sitename <- ('Dustan Rocks')
# Dustan_Rocks_2004_comm_count$Type <- "Commercial"
# 
# 
# Dustan_Rocks_2004_total_count <- rbind(Dustan_Rocks_2004_herb_count, Dustan_Rocks_2004_comm_count)
# 

Dustan_Rocks_2005 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_2005.xls")


Dustan_Rocks_2005_herb <- merge(Dustan_Rocks_2005, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2005_herb_count <- count(Dustan_Rocks_2005_herb, vars = "SPECIES_CD")
Dustan_Rocks_2005_herb_count$Year <- ('2005')
Dustan_Rocks_2005_herb_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2005_herb_count$Type <- "Herbivorous"

Dustan_Rocks_2005_comm <- merge(Dustan_Rocks_2005, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2005_comm_count <- count(Dustan_Rocks_2005_comm, vars = "SPECIES_CD")
Dustan_Rocks_2005_comm_count$Year <- ('2005')
Dustan_Rocks_2005_comm_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2005_comm_count$Type <- "Commercial"


Dustan_Rocks_2005_total_count <- rbind(Dustan_Rocks_2005_herb_count, Dustan_Rocks_2005_comm_count)




Dustan_Rocks_2006 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_2006.xls")


Dustan_Rocks_2006_herb <- merge(Dustan_Rocks_2006, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2006_herb_count <- count(Dustan_Rocks_2006_herb, vars = "SPECIES_CD")
Dustan_Rocks_2006_herb_count$Year <- ('2006')
Dustan_Rocks_2006_herb_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2006_herb_count$Type <- "Herbivorous"

Dustan_Rocks_2006_comm <- merge(Dustan_Rocks_2006, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2006_comm_count <- count(Dustan_Rocks_2006_comm, vars = "SPECIES_CD")
Dustan_Rocks_2006_comm_count$Year <- ('2006')
Dustan_Rocks_2006_comm_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2006_comm_count$Type <- "Commercial"


Dustan_Rocks_2006_total_count <- rbind(Dustan_Rocks_2006_herb_count, Dustan_Rocks_2006_comm_count)



Dustan_Rocks_2007 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_2007.xls")


Dustan_Rocks_2007_herb <- merge(Dustan_Rocks_2007, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2007_herb_count <- count(Dustan_Rocks_2007_herb, vars = "SPECIES_CD")
Dustan_Rocks_2007_herb_count$Year <- ('2007')
Dustan_Rocks_2007_herb_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2007_herb_count$Type <- "Herbivorous"

Dustan_Rocks_2007_comm <- merge(Dustan_Rocks_2007, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2007_comm_count <- count(Dustan_Rocks_2007_comm, vars = "SPECIES_CD")
Dustan_Rocks_2007_comm_count$Year <- ('2007')
Dustan_Rocks_2007_comm_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2007_comm_count$Type <- "Commercial"


Dustan_Rocks_2007_total_count <- rbind(Dustan_Rocks_2007_herb_count, Dustan_Rocks_2007_comm_count)




Dustan_Rocks_2008 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_2008.xls")


Dustan_Rocks_2008_herb <- merge(Dustan_Rocks_2008, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2008_herb_count <- count(Dustan_Rocks_2008_herb, vars = "SPECIES_CD")
Dustan_Rocks_2008_herb_count$Year <- ('2008')
Dustan_Rocks_2008_herb_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2008_herb_count$Type <- "Herbivorous"

Dustan_Rocks_2008_comm <- merge(Dustan_Rocks_2008, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2008_comm_count <- count(Dustan_Rocks_2008_comm, vars = "SPECIES_CD")
Dustan_Rocks_2008_comm_count$Year <- ('2008')
Dustan_Rocks_2008_comm_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2008_comm_count$Type <- "Commercial"


Dustan_Rocks_2008_total_count <- rbind(Dustan_Rocks_2008_herb_count, Dustan_Rocks_2008_comm_count)



Dustan_Rocks_2009 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_2009.xls")


Dustan_Rocks_2009_herb <- merge(Dustan_Rocks_2009, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2009_herb_count <- count(Dustan_Rocks_2009_herb, vars = "SPECIES_CD")
Dustan_Rocks_2009_herb_count$Year <- ('2009')
Dustan_Rocks_2009_herb_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2009_herb_count$Type <- "Herbivorous"

Dustan_Rocks_2009_comm <- merge(Dustan_Rocks_2009, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2009_comm_count <- count(Dustan_Rocks_2009_comm, vars = "SPECIES_CD")
Dustan_Rocks_2009_comm_count$Year <- ('2009')
Dustan_Rocks_2009_comm_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2009_comm_count$Type <- "Commercial"


Dustan_Rocks_2009_total_count <- rbind(Dustan_Rocks_2009_herb_count, Dustan_Rocks_2009_comm_count)





Dustan_Rocks_2010 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_2010.xls")


Dustan_Rocks_2010_herb <- merge(Dustan_Rocks_2010, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2010_herb_count <- count(Dustan_Rocks_2010_herb, vars = "SPECIES_CD")
Dustan_Rocks_2010_herb_count$Year <- ('2010')
Dustan_Rocks_2010_herb_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2010_herb_count$Type <- "Herbivorous"

Dustan_Rocks_2010_comm <- merge(Dustan_Rocks_2010, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2010_comm_count <- count(Dustan_Rocks_2010_comm, vars = "SPECIES_CD")
Dustan_Rocks_2010_comm_count$Year <- ('2010')
Dustan_Rocks_2010_comm_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2010_comm_count$Type <- "Commercial"


Dustan_Rocks_2010_total_count <- rbind(Dustan_Rocks_2010_herb_count, Dustan_Rocks_2010_comm_count)


Dustan_Rocks_2011 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_2011.xls")


Dustan_Rocks_2011_herb <- merge(Dustan_Rocks_2011, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2011_herb_count <- count(Dustan_Rocks_2011_herb, vars = "SPECIES_CD")
Dustan_Rocks_2011_herb_count$Year <- ('2011')
Dustan_Rocks_2011_herb_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2011_herb_count$Type <- "Herbivorous"

Dustan_Rocks_2011_comm <- merge(Dustan_Rocks_2011, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2011_comm_count <- count(Dustan_Rocks_2011_comm, vars = "SPECIES_CD")
Dustan_Rocks_2011_comm_count$Year <- ('2011')
Dustan_Rocks_2011_comm_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2011_comm_count$Type <- "Commercial"


Dustan_Rocks_2011_total_count <- rbind(Dustan_Rocks_2011_herb_count, Dustan_Rocks_2011_comm_count)





Dustan_Rocks_2012 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_2012.xls")


Dustan_Rocks_2012_herb <- merge(Dustan_Rocks_2012, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2012_herb_count <- count(Dustan_Rocks_2012_herb, vars = "SPECIES_CD")
Dustan_Rocks_2012_herb_count$Year <- ('2012')
Dustan_Rocks_2012_herb_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2012_herb_count$Type <- "Herbivorous"

Dustan_Rocks_2012_comm <- merge(Dustan_Rocks_2012, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2012_comm_count <- count(Dustan_Rocks_2012_comm, vars = "SPECIES_CD")
Dustan_Rocks_2012_comm_count$Year <- ('2012')
Dustan_Rocks_2012_comm_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2012_comm_count$Type <- "Commercial"


Dustan_Rocks_2012_total_count <- rbind(Dustan_Rocks_2012_herb_count, Dustan_Rocks_2012_comm_count)



Dustan_Rocks_2014 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_2014.xls")


Dustan_Rocks_2014_herb <- merge(Dustan_Rocks_2014, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2014_herb_count <- count(Dustan_Rocks_2014_herb, vars = "SPECIES_CD")
Dustan_Rocks_2014_herb_count$Year <- ('2014')
Dustan_Rocks_2014_herb_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2014_herb_count$Type <- "Herbivorous"

Dustan_Rocks_2014_comm <- merge(Dustan_Rocks_2014, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2014_comm_count <- count(Dustan_Rocks_2014_comm, vars = "SPECIES_CD")
Dustan_Rocks_2014_comm_count$Year <- ('2014')
Dustan_Rocks_2014_comm_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2014_comm_count$Type <- "Commercial"


Dustan_Rocks_2014_total_count <- rbind(Dustan_Rocks_2014_herb_count, Dustan_Rocks_2014_comm_count)




Dustan_Rocks_2016 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_2016.xls")


Dustan_Rocks_2016_herb <- merge(Dustan_Rocks_2016, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2016_herb_count <- count(Dustan_Rocks_2016_herb, vars = "SPECIES_CD")
Dustan_Rocks_2016_herb_count$Year <- ('2016')
Dustan_Rocks_2016_herb_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2016_herb_count$Type <- "Herbivorous"

Dustan_Rocks_2016_comm <- merge(Dustan_Rocks_2016, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2016_comm_count <- count(Dustan_Rocks_2016_comm, vars = "SPECIES_CD")
Dustan_Rocks_2016_comm_count$Year <- ('2016')
Dustan_Rocks_2016_comm_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2016_comm_count$Type <- "Commercial"


Dustan_Rocks_2016_total_count <- rbind(Dustan_Rocks_2016_herb_count, Dustan_Rocks_2016_comm_count)



Dustan_Rocks_2018 <- import("MK/Dustan_Rocks/data/Dustan_Rocks_2018.xls")


Dustan_Rocks_2018_herb <- merge(Dustan_Rocks_2018, Herb, by = c("SPECIES_CD"))
Dustan_Rocks_2018_herb_count <- count(Dustan_Rocks_2018_herb, vars = "SPECIES_CD")
Dustan_Rocks_2018_herb_count$Year <- ('2018')
Dustan_Rocks_2018_herb_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2018_herb_count$Type <- "Herbivorous"

Dustan_Rocks_2018_comm <- merge(Dustan_Rocks_2018, Comm, by = c("SPECIES_CD"))
Dustan_Rocks_2018_comm_count <- count(Dustan_Rocks_2018_comm, vars = "SPECIES_CD")
Dustan_Rocks_2018_comm_count$Year <- ('2018')
Dustan_Rocks_2018_comm_count$sitename <- ('Dustan Rocks')
Dustan_Rocks_2018_comm_count$Type <- "Commercial"


Dustan_Rocks_2018_total_count <- rbind(Dustan_Rocks_2018_herb_count, Dustan_Rocks_2018_comm_count)





Dustan_Rocks_all <- rbind(Dustan_Rocks_1999_total_count,Dustan_Rocks_2000_total_count,Dustan_Rocks_2001_total_count,Dustan_Rocks_2002_total_count,Dustan_Rocks_2003_total_count,Dustan_Rocks_2005_total_count,Dustan_Rocks_2006_total_count,Dustan_Rocks_2007_total_count,Dustan_Rocks_2008_total_count,Dustan_Rocks_2009_total_count, Dustan_Rocks_2010_total_count,Dustan_Rocks_2011_total_count, Dustan_Rocks_2012_total_count, Dustan_Rocks_2014_total_count, Dustan_Rocks_2016_total_count,Dustan_Rocks_2018_total_count)


export(Dustan_Rocks_all, "MK/Dustan_Rocks/data/Dustan_Rocks_count_herb_comm.csv")




Long_Key_1999 <- import("MK/Long_Key/data/Long_Key_1999.xls")


Long_Key_1999_herb <- merge(Long_Key_1999, Herb, by = c("SPECIES_CD"))
Long_Key_1999_herb_count <- count(Long_Key_1999_herb, vars = "SPECIES_CD")
Long_Key_1999_herb_count$Year <- ('1999')
Long_Key_1999_herb_count$sitename <- ('Long Key')
Long_Key_1999_herb_count$Type <- "Herbivorous"

Long_Key_1999_comm <- merge(Long_Key_1999, Comm, by = c("SPECIES_CD"))
Long_Key_1999_comm_count <- count(Long_Key_1999_comm, vars = "SPECIES_CD")
Long_Key_1999_comm_count$Year <- ('1999')
Long_Key_1999_comm_count$sitename <- ('Long Key')
Long_Key_1999_comm_count$Type <- "Commercial"


Long_Key_1999_total_count <- rbind(Long_Key_1999_herb_count, Long_Key_1999_comm_count)




Long_Key_2000 <- import("MK/Long_Key/data/Long_Key_2000.xls")


Long_Key_2000_herb <- merge(Long_Key_2000, Herb, by = c("SPECIES_CD"))
Long_Key_2000_herb_count <- count(Long_Key_2000_herb, vars = "SPECIES_CD")
Long_Key_2000_herb_count$Year <- ('2000')
Long_Key_2000_herb_count$sitename <- ('Long Key')
Long_Key_2000_herb_count$Type <- "Herbivorous"

Long_Key_2000_comm <- merge(Long_Key_2000, Comm, by = c("SPECIES_CD"))
Long_Key_2000_comm_count <- count(Long_Key_2000_comm, vars = "SPECIES_CD")
Long_Key_2000_comm_count$Year <- ('2000')
Long_Key_2000_comm_count$sitename <- ('Long Key')
Long_Key_2000_comm_count$Type <- "Commercial"


Long_Key_2000_total_count <- rbind(Long_Key_2000_herb_count, Long_Key_2000_comm_count)


Long_Key_2001 <- import("MK/Long_Key/data/Long_Key_2001.xls")


Long_Key_2001_herb <- merge(Long_Key_2001, Herb, by = c("SPECIES_CD"))
Long_Key_2001_herb_count <- count(Long_Key_2001_herb, vars = "SPECIES_CD")
Long_Key_2001_herb_count$Year <- ('2001')
Long_Key_2001_herb_count$sitename <- ('Long Key')
Long_Key_2001_herb_count$Type <- "Herbivorous"

Long_Key_2001_comm <- merge(Long_Key_2001, Comm, by = c("SPECIES_CD"))
Long_Key_2001_comm_count <- count(Long_Key_2001_comm, vars = "SPECIES_CD")
Long_Key_2001_comm_count$Year <- ('2001')
Long_Key_2001_comm_count$sitename <- ('Long Key')
Long_Key_2001_comm_count$Type <- "Commercial"


Long_Key_2001_total_count <- rbind(Long_Key_2001_herb_count, Long_Key_2001_comm_count)


Long_Key_2002 <- import("MK/Long_Key/data/Long_Key_2002.xls")


Long_Key_2002_herb <- merge(Long_Key_2002, Herb, by = c("SPECIES_CD"))
Long_Key_2002_herb_count <- count(Long_Key_2002_herb, vars = "SPECIES_CD")
Long_Key_2002_herb_count$Year <- ('2002')
Long_Key_2002_herb_count$sitename <- ('Long Key')
Long_Key_2002_herb_count$Type <- "Herbivorous"

Long_Key_2002_comm <- merge(Long_Key_2002, Comm, by = c("SPECIES_CD"))
Long_Key_2002_comm_count <- count(Long_Key_2002_comm, vars = "SPECIES_CD")
Long_Key_2002_comm_count$Year <- ('2002')
Long_Key_2002_comm_count$sitename <- ('Long Key')
Long_Key_2002_comm_count$Type <- "Commercial"


Long_Key_2002_total_count <- rbind(Long_Key_2002_herb_count, Long_Key_2002_comm_count)



Long_Key_2003 <- import("MK/Long_Key/data/Long_Key_2003.xls")


Long_Key_2003_herb <- merge(Long_Key_2003, Herb, by = c("SPECIES_CD"))
Long_Key_2003_herb_count <- count(Long_Key_2003_herb, vars = "SPECIES_CD")
Long_Key_2003_herb_count$Year <- ('2003')
Long_Key_2003_herb_count$sitename <- ('Long Key')
Long_Key_2003_herb_count$Type <- "Herbivorous"

Long_Key_2003_comm <- merge(Long_Key_2003, Comm, by = c("SPECIES_CD"))
Long_Key_2003_comm_count <- count(Long_Key_2003_comm, vars = "SPECIES_CD")
Long_Key_2003_comm_count$Year <- ('2003')
Long_Key_2003_comm_count$sitename <- ('Long Key')
Long_Key_2003_comm_count$Type <- "Commercial"


Long_Key_2003_total_count <- rbind(Long_Key_2003_herb_count, Long_Key_2003_comm_count)




# Long_Key_2004 <- import("MK/Long_Key/data/Long_Key_2004.xls")
# 
# 
# Long_Key_2004_herb <- merge(Long_Key_2004, Herb, by = c("SPECIES_CD"))
# Long_Key_2004_herb_count <- count(Long_Key_2004_herb, vars = "SPECIES_CD")
# Long_Key_2004_herb_count$Year <- ('2004')
# Long_Key_2004_herb_count$sitename <- ('Long Key')
# Long_Key_2004_herb_count$Type <- "Herbivorous"
# 
# Long_Key_2004_comm <- merge(Long_Key_2004, Comm, by = c("SPECIES_CD"))
# Long_Key_2004_comm_count <- count(Long_Key_2004_comm, vars = "SPECIES_CD")
# Long_Key_2004_comm_count$Year <- ('2004')
# Long_Key_2004_comm_count$sitename <- ('Long Key')
# Long_Key_2004_comm_count$Type <- "Commercial"
# 
# 
# Long_Key_2004_total_count <- rbind(Long_Key_2004_herb_count, Long_Key_2004_comm_count)
# 

Long_Key_2005 <- import("MK/Long_Key/data/Long_Key_2005.xls")


Long_Key_2005_herb <- merge(Long_Key_2005, Herb, by = c("SPECIES_CD"))
Long_Key_2005_herb_count <- count(Long_Key_2005_herb, vars = "SPECIES_CD")
Long_Key_2005_herb_count$Year <- ('2005')
Long_Key_2005_herb_count$sitename <- ('Long Key')
Long_Key_2005_herb_count$Type <- "Herbivorous"

Long_Key_2005_comm <- merge(Long_Key_2005, Comm, by = c("SPECIES_CD"))
Long_Key_2005_comm_count <- count(Long_Key_2005_comm, vars = "SPECIES_CD")
Long_Key_2005_comm_count$Year <- ('2005')
Long_Key_2005_comm_count$sitename <- ('Long Key')
Long_Key_2005_comm_count$Type <- "Commercial"


Long_Key_2005_total_count <- rbind(Long_Key_2005_herb_count, Long_Key_2005_comm_count)




Long_Key_2006 <- import("MK/Long_Key/data/Long_Key_2006.xls")


Long_Key_2006_herb <- merge(Long_Key_2006, Herb, by = c("SPECIES_CD"))
Long_Key_2006_herb_count <- count(Long_Key_2006_herb, vars = "SPECIES_CD")
Long_Key_2006_herb_count$Year <- ('2006')
Long_Key_2006_herb_count$sitename <- ('Long Key')
Long_Key_2006_herb_count$Type <- "Herbivorous"

Long_Key_2006_comm <- merge(Long_Key_2006, Comm, by = c("SPECIES_CD"))
Long_Key_2006_comm_count <- count(Long_Key_2006_comm, vars = "SPECIES_CD")
Long_Key_2006_comm_count$Year <- ('2006')
Long_Key_2006_comm_count$sitename <- ('Long Key')
Long_Key_2006_comm_count$Type <- "Commercial"


Long_Key_2006_total_count <- rbind(Long_Key_2006_herb_count, Long_Key_2006_comm_count)



Long_Key_2007 <- import("MK/Long_Key/data/Long_Key_2007.xls")


Long_Key_2007_herb <- merge(Long_Key_2007, Herb, by = c("SPECIES_CD"))
Long_Key_2007_herb_count <- count(Long_Key_2007_herb, vars = "SPECIES_CD")
Long_Key_2007_herb_count$Year <- ('2007')
Long_Key_2007_herb_count$sitename <- ('Long Key')
Long_Key_2007_herb_count$Type <- "Herbivorous"

Long_Key_2007_comm <- merge(Long_Key_2007, Comm, by = c("SPECIES_CD"))
Long_Key_2007_comm_count <- count(Long_Key_2007_comm, vars = "SPECIES_CD")
Long_Key_2007_comm_count$Year <- ('2007')
Long_Key_2007_comm_count$sitename <- ('Long Key')
Long_Key_2007_comm_count$Type <- "Commercial"


Long_Key_2007_total_count <- rbind(Long_Key_2007_herb_count, Long_Key_2007_comm_count)




Long_Key_2008 <- import("MK/Long_Key/data/Long_Key_2008.xls")


Long_Key_2008_herb <- merge(Long_Key_2008, Herb, by = c("SPECIES_CD"))
Long_Key_2008_herb_count <- count(Long_Key_2008_herb, vars = "SPECIES_CD")
Long_Key_2008_herb_count$Year <- ('2008')
Long_Key_2008_herb_count$sitename <- ('Long Key')
Long_Key_2008_herb_count$Type <- "Herbivorous"

Long_Key_2008_comm <- merge(Long_Key_2008, Comm, by = c("SPECIES_CD"))
Long_Key_2008_comm_count <- count(Long_Key_2008_comm, vars = "SPECIES_CD")
Long_Key_2008_comm_count$Year <- ('2008')
Long_Key_2008_comm_count$sitename <- ('Long Key')
Long_Key_2008_comm_count$Type <- "Commercial"


Long_Key_2008_total_count <- rbind(Long_Key_2008_herb_count, Long_Key_2008_comm_count)



Long_Key_2009 <- import("MK/Long_Key/data/Long_Key_2009.xls")


Long_Key_2009_herb <- merge(Long_Key_2009, Herb, by = c("SPECIES_CD"))
Long_Key_2009_herb_count <- count(Long_Key_2009_herb, vars = "SPECIES_CD")
Long_Key_2009_herb_count$Year <- ('2009')
Long_Key_2009_herb_count$sitename <- ('Long Key')
Long_Key_2009_herb_count$Type <- "Herbivorous"

Long_Key_2009_comm <- merge(Long_Key_2009, Comm, by = c("SPECIES_CD"))
Long_Key_2009_comm_count <- count(Long_Key_2009_comm, vars = "SPECIES_CD")
Long_Key_2009_comm_count$Year <- ('2009')
Long_Key_2009_comm_count$sitename <- ('Long Key')
Long_Key_2009_comm_count$Type <- "Commercial"


Long_Key_2009_total_count <- rbind(Long_Key_2009_herb_count, Long_Key_2009_comm_count)





Long_Key_2010 <- import("MK/Long_Key/data/Long_Key_2010.xls")


Long_Key_2010_herb <- merge(Long_Key_2010, Herb, by = c("SPECIES_CD"))
Long_Key_2010_herb_count <- count(Long_Key_2010_herb, vars = "SPECIES_CD")
Long_Key_2010_herb_count$Year <- ('2010')
Long_Key_2010_herb_count$sitename <- ('Long Key')
Long_Key_2010_herb_count$Type <- "Herbivorous"

Long_Key_2010_comm <- merge(Long_Key_2010, Comm, by = c("SPECIES_CD"))
Long_Key_2010_comm_count <- count(Long_Key_2010_comm, vars = "SPECIES_CD")
Long_Key_2010_comm_count$Year <- ('2010')
Long_Key_2010_comm_count$sitename <- ('Long Key')
Long_Key_2010_comm_count$Type <- "Commercial"


Long_Key_2010_total_count <- rbind(Long_Key_2010_herb_count, Long_Key_2010_comm_count)


Long_Key_2011 <- import("MK/Long_Key/data/Long_Key_2011.xls")


Long_Key_2011_herb <- merge(Long_Key_2011, Herb, by = c("SPECIES_CD"))
Long_Key_2011_herb_count <- count(Long_Key_2011_herb, vars = "SPECIES_CD")
Long_Key_2011_herb_count$Year <- ('2011')
Long_Key_2011_herb_count$sitename <- ('Long Key')
Long_Key_2011_herb_count$Type <- "Herbivorous"

Long_Key_2011_comm <- merge(Long_Key_2011, Comm, by = c("SPECIES_CD"))
Long_Key_2011_comm_count <- count(Long_Key_2011_comm, vars = "SPECIES_CD")
Long_Key_2011_comm_count$Year <- ('2011')
Long_Key_2011_comm_count$sitename <- ('Long Key')
Long_Key_2011_comm_count$Type <- "Commercial"


Long_Key_2011_total_count <- rbind(Long_Key_2011_herb_count, Long_Key_2011_comm_count)





Long_Key_2012 <- import("MK/Long_Key/data/Long_Key_2012.xls")


Long_Key_2012_herb <- merge(Long_Key_2012, Herb, by = c("SPECIES_CD"))
Long_Key_2012_herb_count <- count(Long_Key_2012_herb, vars = "SPECIES_CD")
Long_Key_2012_herb_count$Year <- ('2012')
Long_Key_2012_herb_count$sitename <- ('Long Key')
Long_Key_2012_herb_count$Type <- "Herbivorous"

Long_Key_2012_comm <- merge(Long_Key_2012, Comm, by = c("SPECIES_CD"))
Long_Key_2012_comm_count <- count(Long_Key_2012_comm, vars = "SPECIES_CD")
Long_Key_2012_comm_count$Year <- ('2012')
Long_Key_2012_comm_count$sitename <- ('Long Key')
Long_Key_2012_comm_count$Type <- "Commercial"


Long_Key_2012_total_count <- rbind(Long_Key_2012_herb_count, Long_Key_2012_comm_count)



Long_Key_2014 <- import("MK/Long_Key/data/Long_Key_2014.xls")


Long_Key_2014_herb <- merge(Long_Key_2014, Herb, by = c("SPECIES_CD"))
Long_Key_2014_herb_count <- count(Long_Key_2014_herb, vars = "SPECIES_CD")
Long_Key_2014_herb_count$Year <- ('2014')
Long_Key_2014_herb_count$sitename <- ('Long Key')
Long_Key_2014_herb_count$Type <- "Herbivorous"

Long_Key_2014_comm <- merge(Long_Key_2014, Comm, by = c("SPECIES_CD"))
Long_Key_2014_comm_count <- count(Long_Key_2014_comm, vars = "SPECIES_CD")
Long_Key_2014_comm_count$Year <- ('2014')
Long_Key_2014_comm_count$sitename <- ('Long Key')
Long_Key_2014_comm_count$Type <- "Commercial"


Long_Key_2014_total_count <- rbind(Long_Key_2014_herb_count, Long_Key_2014_comm_count)




Long_Key_2016 <- import("MK/Long_Key/data/Long_Key_2016.xls")


Long_Key_2016_herb <- merge(Long_Key_2016, Herb, by = c("SPECIES_CD"))
Long_Key_2016_herb_count <- count(Long_Key_2016_herb, vars = "SPECIES_CD")
Long_Key_2016_herb_count$Year <- ('2016')
Long_Key_2016_herb_count$sitename <- ('Long Key')
Long_Key_2016_herb_count$Type <- "Herbivorous"

Long_Key_2016_comm <- merge(Long_Key_2016, Comm, by = c("SPECIES_CD"))
Long_Key_2016_comm_count <- count(Long_Key_2016_comm, vars = "SPECIES_CD")
Long_Key_2016_comm_count$Year <- ('2016')
Long_Key_2016_comm_count$sitename <- ('Long Key')
Long_Key_2016_comm_count$Type <- "Commercial"


Long_Key_2016_total_count <- rbind(Long_Key_2016_herb_count, Long_Key_2016_comm_count)



Long_Key_2018 <- import("MK/Long_Key/data/Long_Key_2018.xls")


Long_Key_2018_herb <- merge(Long_Key_2018, Herb, by = c("SPECIES_CD"))
Long_Key_2018_herb_count <- count(Long_Key_2018_herb, vars = "SPECIES_CD")
Long_Key_2018_herb_count$Year <- ('2018')
Long_Key_2018_herb_count$sitename <- ('Long Key')
Long_Key_2018_herb_count$Type <- "Herbivorous"

Long_Key_2018_comm <- merge(Long_Key_2018, Comm, by = c("SPECIES_CD"))
Long_Key_2018_comm_count <- count(Long_Key_2018_comm, vars = "SPECIES_CD")
Long_Key_2018_comm_count$Year <- ('2018')
Long_Key_2018_comm_count$sitename <- ('Long Key')
Long_Key_2018_comm_count$Type <- "Commercial"


Long_Key_2018_total_count <- rbind(Long_Key_2018_herb_count, Long_Key_2018_comm_count)





Long_Key_all <- rbind(Long_Key_1999_total_count,Long_Key_2000_total_count,Long_Key_2001_total_count,Long_Key_2002_total_count,Long_Key_2003_total_count,Long_Key_2005_total_count,Long_Key_2006_total_count,Long_Key_2007_total_count,Long_Key_2008_total_count,Long_Key_2009_total_count, Long_Key_2010_total_count,Long_Key_2011_total_count, Long_Key_2012_total_count, Long_Key_2014_total_count, Long_Key_2016_total_count,Long_Key_2018_total_count)


export(Long_Key_all, "MK/Long_Key/data/Long_Key_count_herb_comm.csv")







Rawa_Reef_1999 <- import("MK/Rawa_Reef/data/Rawa_Reef_1999.xls")


Rawa_Reef_1999_herb <- merge(Rawa_Reef_1999, Herb, by = c("SPECIES_CD"))
Rawa_Reef_1999_herb_count <- count(Rawa_Reef_1999_herb, vars = "SPECIES_CD")
Rawa_Reef_1999_herb_count$Year <- ('1999')
Rawa_Reef_1999_herb_count$sitename <- ('Rawa Reef')
Rawa_Reef_1999_herb_count$Type <- "Herbivorous"

Rawa_Reef_1999_comm <- merge(Rawa_Reef_1999, Comm, by = c("SPECIES_CD"))
Rawa_Reef_1999_comm_count <- count(Rawa_Reef_1999_comm, vars = "SPECIES_CD")
Rawa_Reef_1999_comm_count$Year <- ('1999')
Rawa_Reef_1999_comm_count$sitename <- ('Rawa Reef')
Rawa_Reef_1999_comm_count$Type <- "Commercial"


Rawa_Reef_1999_total_count <- rbind(Rawa_Reef_1999_herb_count, Rawa_Reef_1999_comm_count)




Rawa_Reef_2000 <- import("MK/Rawa_Reef/data/Rawa_Reef_2000.xls")


Rawa_Reef_2000_herb <- merge(Rawa_Reef_2000, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2000_herb_count <- count(Rawa_Reef_2000_herb, vars = "SPECIES_CD")
Rawa_Reef_2000_herb_count$Year <- ('2000')
Rawa_Reef_2000_herb_count$sitename <- ('Rawa Reef')
Rawa_Reef_2000_herb_count$Type <- "Herbivorous"

Rawa_Reef_2000_comm <- merge(Rawa_Reef_2000, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2000_comm_count <- count(Rawa_Reef_2000_comm, vars = "SPECIES_CD")
Rawa_Reef_2000_comm_count$Year <- ('2000')
Rawa_Reef_2000_comm_count$sitename <- ('Rawa Reef')
Rawa_Reef_2000_comm_count$Type <- "Commercial"


Rawa_Reef_2000_total_count <- rbind(Rawa_Reef_2000_herb_count, Rawa_Reef_2000_comm_count)


Rawa_Reef_2001 <- import("MK/Rawa_Reef/data/Rawa_Reef_2001.xls")


Rawa_Reef_2001_herb <- merge(Rawa_Reef_2001, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2001_herb_count <- count(Rawa_Reef_2001_herb, vars = "SPECIES_CD")
Rawa_Reef_2001_herb_count$Year <- ('2001')
Rawa_Reef_2001_herb_count$sitename <- ('Rawa Reef')
Rawa_Reef_2001_herb_count$Type <- "Herbivorous"

Rawa_Reef_2001_comm <- merge(Rawa_Reef_2001, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2001_comm_count <- count(Rawa_Reef_2001_comm, vars = "SPECIES_CD")
Rawa_Reef_2001_comm_count$Year <- ('2001')
Rawa_Reef_2001_comm_count$sitename <- ('Rawa Reef')
Rawa_Reef_2001_comm_count$Type <- "Commercial"


Rawa_Reef_2001_total_count <- rbind(Rawa_Reef_2001_herb_count, Rawa_Reef_2001_comm_count)


Rawa_Reef_2002 <- import("MK/Rawa_Reef/data/Rawa_Reef_2002.xls")


Rawa_Reef_2002_herb <- merge(Rawa_Reef_2002, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2002_herb_count <- count(Rawa_Reef_2002_herb, vars = "SPECIES_CD")
Rawa_Reef_2002_herb_count$Year <- ('2002')
Rawa_Reef_2002_herb_count$sitename <- ('Rawa Reef')
Rawa_Reef_2002_herb_count$Type <- "Herbivorous"

Rawa_Reef_2002_comm <- merge(Rawa_Reef_2002, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2002_comm_count <- count(Rawa_Reef_2002_comm, vars = "SPECIES_CD")
Rawa_Reef_2002_comm_count$Year <- ('2002')
Rawa_Reef_2002_comm_count$sitename <- ('Rawa Reef')
Rawa_Reef_2002_comm_count$Type <- "Commercial"


Rawa_Reef_2002_total_count <- rbind(Rawa_Reef_2002_herb_count, Rawa_Reef_2002_comm_count)



Rawa_Reef_2003 <- import("MK/Rawa_Reef/data/Rawa_Reef_2003.xls")


Rawa_Reef_2003_herb <- merge(Rawa_Reef_2003, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2003_herb_count <- count(Rawa_Reef_2003_herb, vars = "SPECIES_CD")
Rawa_Reef_2003_herb_count$Year <- ('2003')
Rawa_Reef_2003_herb_count$sitename <- ('Rawa Reef')
Rawa_Reef_2003_herb_count$Type <- "Herbivorous"

Rawa_Reef_2003_comm <- merge(Rawa_Reef_2003, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2003_comm_count <- count(Rawa_Reef_2003_comm, vars = "SPECIES_CD")
Rawa_Reef_2003_comm_count$Year <- ('2003')
Rawa_Reef_2003_comm_count$sitename <- ('Rawa Reef')
Rawa_Reef_2003_comm_count$Type <- "Commercial"


Rawa_Reef_2003_total_count <- rbind(Rawa_Reef_2003_herb_count, Rawa_Reef_2003_comm_count)




# Rawa_Reef_2004 <- import("MK/Rawa_Reef/data/Rawa_Reef_2004.xls")
# 
# 
# Rawa_Reef_2004_herb <- merge(Rawa_Reef_2004, Herb, by = c("SPECIES_CD"))
# Rawa_Reef_2004_herb_count <- count(Rawa_Reef_2004_herb, vars = "SPECIES_CD")
# Rawa_Reef_2004_herb_count$Year <- ('2004')
# Rawa_Reef_2004_herb_count$sitename <- ('Rawa Reef')
# Rawa_Reef_2004_herb_count$Type <- "Herbivorous"
# 
# Rawa_Reef_2004_comm <- merge(Rawa_Reef_2004, Comm, by = c("SPECIES_CD"))
# Rawa_Reef_2004_comm_count <- count(Rawa_Reef_2004_comm, vars = "SPECIES_CD")
# Rawa_Reef_2004_comm_count$Year <- ('2004')
# Rawa_Reef_2004_comm_count$sitename <- ('Rawa Reef')
# Rawa_Reef_2004_comm_count$Type <- "Commercial"
# 
# 
# Rawa_Reef_2004_total_count <- rbind(Rawa_Reef_2004_herb_count, Rawa_Reef_2004_comm_count)
# 

Rawa_Reef_2005 <- import("MK/Rawa_Reef/data/Rawa_Reef_2005.xls")


Rawa_Reef_2005_herb <- merge(Rawa_Reef_2005, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2005_herb_count <- count(Rawa_Reef_2005_herb, vars = "SPECIES_CD")
Rawa_Reef_2005_herb_count$Year <- ('2005')
Rawa_Reef_2005_herb_count$sitename <- ('Rawa Reef')
Rawa_Reef_2005_herb_count$Type <- "Herbivorous"

Rawa_Reef_2005_comm <- merge(Rawa_Reef_2005, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2005_comm_count <- count(Rawa_Reef_2005_comm, vars = "SPECIES_CD")
Rawa_Reef_2005_comm_count$Year <- ('2005')
Rawa_Reef_2005_comm_count$sitename <- ('Rawa Reef')
Rawa_Reef_2005_comm_count$Type <- "Commercial"


Rawa_Reef_2005_total_count <- rbind(Rawa_Reef_2005_herb_count, Rawa_Reef_2005_comm_count)




Rawa_Reef_2006 <- import("MK/Rawa_Reef/data/Rawa_Reef_2006.xls")


Rawa_Reef_2006_herb <- merge(Rawa_Reef_2006, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2006_herb_count <- count(Rawa_Reef_2006_herb, vars = "SPECIES_CD")
Rawa_Reef_2006_herb_count$Year <- ('2006')
Rawa_Reef_2006_herb_count$sitename <- ('Rawa Reef')
Rawa_Reef_2006_herb_count$Type <- "Herbivorous"

Rawa_Reef_2006_comm <- merge(Rawa_Reef_2006, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2006_comm_count <- count(Rawa_Reef_2006_comm, vars = "SPECIES_CD")
Rawa_Reef_2006_comm_count$Year <- ('2006')
Rawa_Reef_2006_comm_count$sitename <- ('Rawa Reef')
Rawa_Reef_2006_comm_count$Type <- "Commercial"


Rawa_Reef_2006_total_count <- rbind(Rawa_Reef_2006_herb_count, Rawa_Reef_2006_comm_count)



Rawa_Reef_2007 <- import("MK/Rawa_Reef/data/Rawa_Reef_2007.xls")


Rawa_Reef_2007_herb <- merge(Rawa_Reef_2007, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2007_herb_count <- count(Rawa_Reef_2007_herb, vars = "SPECIES_CD")
Rawa_Reef_2007_herb_count$Year <- ('2007')
Rawa_Reef_2007_herb_count$sitename <- ('Rawa Reef')
Rawa_Reef_2007_herb_count$Type <- "Herbivorous"

Rawa_Reef_2007_comm <- merge(Rawa_Reef_2007, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2007_comm_count <- count(Rawa_Reef_2007_comm, vars = "SPECIES_CD")
Rawa_Reef_2007_comm_count$Year <- ('2007')
Rawa_Reef_2007_comm_count$sitename <- ('Rawa Reef')
Rawa_Reef_2007_comm_count$Type <- "Commercial"


Rawa_Reef_2007_total_count <- rbind(Rawa_Reef_2007_herb_count, Rawa_Reef_2007_comm_count)




Rawa_Reef_2008 <- import("MK/Rawa_Reef/data/Rawa_Reef_2008.xls")


Rawa_Reef_2008_herb <- merge(Rawa_Reef_2008, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2008_herb_count <- count(Rawa_Reef_2008_herb, vars = "SPECIES_CD")
Rawa_Reef_2008_herb_count$Year <- ('2008')
Rawa_Reef_2008_herb_count$sitename <- ('Rawa Reef')
Rawa_Reef_2008_herb_count$Type <- "Herbivorous"

Rawa_Reef_2008_comm <- merge(Rawa_Reef_2008, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2008_comm_count <- count(Rawa_Reef_2008_comm, vars = "SPECIES_CD")
Rawa_Reef_2008_comm_count$Year <- ('2008')
Rawa_Reef_2008_comm_count$sitename <- ('Rawa Reef')
Rawa_Reef_2008_comm_count$Type <- "Commercial"


Rawa_Reef_2008_total_count <- rbind(Rawa_Reef_2008_herb_count, Rawa_Reef_2008_comm_count)



Rawa_Reef_2009 <- import("MK/Rawa_Reef/data/Rawa_Reef_2009.xls")


Rawa_Reef_2009_herb <- merge(Rawa_Reef_2009, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2009_herb_count <- count(Rawa_Reef_2009_herb, vars = "SPECIES_CD")
Rawa_Reef_2009_herb_count$Year <- ('2009')
Rawa_Reef_2009_herb_count$sitename <- ('Rawa Reef')
Rawa_Reef_2009_herb_count$Type <- "Herbivorous"

Rawa_Reef_2009_comm <- merge(Rawa_Reef_2009, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2009_comm_count <- count(Rawa_Reef_2009_comm, vars = "SPECIES_CD")
Rawa_Reef_2009_comm_count$Year <- ('2009')
Rawa_Reef_2009_comm_count$sitename <- ('Rawa Reef')
Rawa_Reef_2009_comm_count$Type <- "Commercial"


Rawa_Reef_2009_total_count <- rbind(Rawa_Reef_2009_herb_count, Rawa_Reef_2009_comm_count)





Rawa_Reef_2010 <- import("MK/Rawa_Reef/data/Rawa_Reef_2010.xls")


Rawa_Reef_2010_herb <- merge(Rawa_Reef_2010, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2010_herb_count <- count(Rawa_Reef_2010_herb, vars = "SPECIES_CD")
Rawa_Reef_2010_herb_count$Year <- ('2010')
Rawa_Reef_2010_herb_count$sitename <- ('Rawa Reef')
Rawa_Reef_2010_herb_count$Type <- "Herbivorous"

Rawa_Reef_2010_comm <- merge(Rawa_Reef_2010, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2010_comm_count <- count(Rawa_Reef_2010_comm, vars = "SPECIES_CD")
Rawa_Reef_2010_comm_count$Year <- ('2010')
Rawa_Reef_2010_comm_count$sitename <- ('Rawa Reef')
Rawa_Reef_2010_comm_count$Type <- "Commercial"


Rawa_Reef_2010_total_count <- rbind(Rawa_Reef_2010_herb_count, Rawa_Reef_2010_comm_count)


Rawa_Reef_2011 <- import("MK/Rawa_Reef/data/Rawa_Reef_2011.xls")


Rawa_Reef_2011_herb <- merge(Rawa_Reef_2011, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2011_herb_count <- count(Rawa_Reef_2011_herb, vars = "SPECIES_CD")
Rawa_Reef_2011_herb_count$Year <- ('2011')
Rawa_Reef_2011_herb_count$sitename <- ('Rawa Reef')
Rawa_Reef_2011_herb_count$Type <- "Herbivorous"

Rawa_Reef_2011_comm <- merge(Rawa_Reef_2011, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2011_comm_count <- count(Rawa_Reef_2011_comm, vars = "SPECIES_CD")
Rawa_Reef_2011_comm_count$Year <- ('2011')
Rawa_Reef_2011_comm_count$sitename <- ('Rawa Reef')
Rawa_Reef_2011_comm_count$Type <- "Commercial"


Rawa_Reef_2011_total_count <- rbind(Rawa_Reef_2011_herb_count, Rawa_Reef_2011_comm_count)





Rawa_Reef_2012 <- import("MK/Rawa_Reef/data/Rawa_Reef_2012.xls")


Rawa_Reef_2012_herb <- merge(Rawa_Reef_2012, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2012_herb_count <- count(Rawa_Reef_2012_herb, vars = "SPECIES_CD")
Rawa_Reef_2012_herb_count$Year <- ('2012')
Rawa_Reef_2012_herb_count$sitename <- ('Rawa Reef')
Rawa_Reef_2012_herb_count$Type <- "Herbivorous"

Rawa_Reef_2012_comm <- merge(Rawa_Reef_2012, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2012_comm_count <- count(Rawa_Reef_2012_comm, vars = "SPECIES_CD")
Rawa_Reef_2012_comm_count$Year <- ('2012')
Rawa_Reef_2012_comm_count$sitename <- ('Rawa Reef')
Rawa_Reef_2012_comm_count$Type <- "Commercial"


Rawa_Reef_2012_total_count <- rbind(Rawa_Reef_2012_herb_count, Rawa_Reef_2012_comm_count)



Rawa_Reef_2014 <- import("MK/Rawa_Reef/data/Rawa_Reef_2014.xls")


Rawa_Reef_2014_herb <- merge(Rawa_Reef_2014, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2014_herb_count <- count(Rawa_Reef_2014_herb, vars = "SPECIES_CD")
Rawa_Reef_2014_herb_count$Year <- ('2014')
Rawa_Reef_2014_herb_count$sitename <- ('Rawa Reef')
Rawa_Reef_2014_herb_count$Type <- "Herbivorous"

Rawa_Reef_2014_comm <- merge(Rawa_Reef_2014, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2014_comm_count <- count(Rawa_Reef_2014_comm, vars = "SPECIES_CD")
Rawa_Reef_2014_comm_count$Year <- ('2014')
Rawa_Reef_2014_comm_count$sitename <- ('Rawa Reef')
Rawa_Reef_2014_comm_count$Type <- "Commercial"


Rawa_Reef_2014_total_count <- rbind(Rawa_Reef_2014_herb_count, Rawa_Reef_2014_comm_count)




Rawa_Reef_2016 <- import("MK/Rawa_Reef/data/Rawa_Reef_2016.xls")


Rawa_Reef_2016_herb <- merge(Rawa_Reef_2016, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2016_herb_count <- count(Rawa_Reef_2016_herb, vars = "SPECIES_CD")
Rawa_Reef_2016_herb_count$Year <- ('2016')
Rawa_Reef_2016_herb_count$sitename <- ('Rawa Reef')
Rawa_Reef_2016_herb_count$Type <- "Herbivorous"

Rawa_Reef_2016_comm <- merge(Rawa_Reef_2016, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2016_comm_count <- count(Rawa_Reef_2016_comm, vars = "SPECIES_CD")
Rawa_Reef_2016_comm_count$Year <- ('2016')
Rawa_Reef_2016_comm_count$sitename <- ('Rawa Reef')
Rawa_Reef_2016_comm_count$Type <- "Commercial"


Rawa_Reef_2016_total_count <- rbind(Rawa_Reef_2016_herb_count, Rawa_Reef_2016_comm_count)



Rawa_Reef_2018 <- import("MK/Rawa_Reef/data/Rawa_Reef_2018.xls")


Rawa_Reef_2018_herb <- merge(Rawa_Reef_2018, Herb, by = c("SPECIES_CD"))
Rawa_Reef_2018_herb_count <- count(Rawa_Reef_2018_herb, vars = "SPECIES_CD")
Rawa_Reef_2018_herb_count$Year <- ('2018')
Rawa_Reef_2018_herb_count$sitename <- ('Rawa Reef')
Rawa_Reef_2018_herb_count$Type <- "Herbivorous"

Rawa_Reef_2018_comm <- merge(Rawa_Reef_2018, Comm, by = c("SPECIES_CD"))
Rawa_Reef_2018_comm_count <- count(Rawa_Reef_2018_comm, vars = "SPECIES_CD")
Rawa_Reef_2018_comm_count$Year <- ('2018')
Rawa_Reef_2018_comm_count$sitename <- ('Rawa Reef')
Rawa_Reef_2018_comm_count$Type <- "Commercial"


Rawa_Reef_2018_total_count <- rbind(Rawa_Reef_2018_herb_count, Rawa_Reef_2018_comm_count)





Rawa_Reef_all <- rbind(Rawa_Reef_1999_total_count,Rawa_Reef_2000_total_count,Rawa_Reef_2001_total_count,Rawa_Reef_2002_total_count,Rawa_Reef_2003_total_count,Rawa_Reef_2005_total_count,Rawa_Reef_2006_total_count,Rawa_Reef_2007_total_count,Rawa_Reef_2008_total_count,Rawa_Reef_2009_total_count, Rawa_Reef_2010_total_count,Rawa_Reef_2011_total_count, Rawa_Reef_2012_total_count, Rawa_Reef_2014_total_count, Rawa_Reef_2016_total_count,Rawa_Reef_2018_total_count)


export(Rawa_Reef_all, "MK/Rawa_Reef/data/Rawa_Reef_count_herb_comm.csv")




Sombrero_Deep_1999 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_1999.xls")


Sombrero_Deep_1999_herb <- merge(Sombrero_Deep_1999, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_1999_herb_count <- count(Sombrero_Deep_1999_herb, vars = "SPECIES_CD")
Sombrero_Deep_1999_herb_count$Year <- ('1999')
Sombrero_Deep_1999_herb_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_1999_herb_count$Type <- "Herbivorous"

Sombrero_Deep_1999_comm <- merge(Sombrero_Deep_1999, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_1999_comm_count <- count(Sombrero_Deep_1999_comm, vars = "SPECIES_CD")
Sombrero_Deep_1999_comm_count$Year <- ('1999')
Sombrero_Deep_1999_comm_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_1999_comm_count$Type <- "Commercial"


Sombrero_Deep_1999_total_count <- rbind(Sombrero_Deep_1999_herb_count, Sombrero_Deep_1999_comm_count)




Sombrero_Deep_2000 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_2000.xls")


Sombrero_Deep_2000_herb <- merge(Sombrero_Deep_2000, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2000_herb_count <- count(Sombrero_Deep_2000_herb, vars = "SPECIES_CD")
Sombrero_Deep_2000_herb_count$Year <- ('2000')
Sombrero_Deep_2000_herb_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2000_herb_count$Type <- "Herbivorous"

Sombrero_Deep_2000_comm <- merge(Sombrero_Deep_2000, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2000_comm_count <- count(Sombrero_Deep_2000_comm, vars = "SPECIES_CD")
Sombrero_Deep_2000_comm_count$Year <- ('2000')
Sombrero_Deep_2000_comm_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2000_comm_count$Type <- "Commercial"


Sombrero_Deep_2000_total_count <- rbind(Sombrero_Deep_2000_herb_count, Sombrero_Deep_2000_comm_count)


Sombrero_Deep_2001 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_2001.xls")


Sombrero_Deep_2001_herb <- merge(Sombrero_Deep_2001, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2001_herb_count <- count(Sombrero_Deep_2001_herb, vars = "SPECIES_CD")
Sombrero_Deep_2001_herb_count$Year <- ('2001')
Sombrero_Deep_2001_herb_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2001_herb_count$Type <- "Herbivorous"

Sombrero_Deep_2001_comm <- merge(Sombrero_Deep_2001, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2001_comm_count <- count(Sombrero_Deep_2001_comm, vars = "SPECIES_CD")
Sombrero_Deep_2001_comm_count$Year <- ('2001')
Sombrero_Deep_2001_comm_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2001_comm_count$Type <- "Commercial"


Sombrero_Deep_2001_total_count <- rbind(Sombrero_Deep_2001_herb_count, Sombrero_Deep_2001_comm_count)


Sombrero_Deep_2002 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_2002.xls")


Sombrero_Deep_2002_herb <- merge(Sombrero_Deep_2002, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2002_herb_count <- count(Sombrero_Deep_2002_herb, vars = "SPECIES_CD")
Sombrero_Deep_2002_herb_count$Year <- ('2002')
Sombrero_Deep_2002_herb_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2002_herb_count$Type <- "Herbivorous"

Sombrero_Deep_2002_comm <- merge(Sombrero_Deep_2002, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2002_comm_count <- count(Sombrero_Deep_2002_comm, vars = "SPECIES_CD")
Sombrero_Deep_2002_comm_count$Year <- ('2002')
Sombrero_Deep_2002_comm_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2002_comm_count$Type <- "Commercial"


Sombrero_Deep_2002_total_count <- rbind(Sombrero_Deep_2002_herb_count, Sombrero_Deep_2002_comm_count)



Sombrero_Deep_2003 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_2003.xls")


Sombrero_Deep_2003_herb <- merge(Sombrero_Deep_2003, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2003_herb_count <- count(Sombrero_Deep_2003_herb, vars = "SPECIES_CD")
Sombrero_Deep_2003_herb_count$Year <- ('2003')
Sombrero_Deep_2003_herb_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2003_herb_count$Type <- "Herbivorous"

Sombrero_Deep_2003_comm <- merge(Sombrero_Deep_2003, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2003_comm_count <- count(Sombrero_Deep_2003_comm, vars = "SPECIES_CD")
Sombrero_Deep_2003_comm_count$Year <- ('2003')
Sombrero_Deep_2003_comm_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2003_comm_count$Type <- "Commercial"


Sombrero_Deep_2003_total_count <- rbind(Sombrero_Deep_2003_herb_count, Sombrero_Deep_2003_comm_count)




# Sombrero_Deep_2004 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_2004.xls")
# 
# 
# Sombrero_Deep_2004_herb <- merge(Sombrero_Deep_2004, Herb, by = c("SPECIES_CD"))
# Sombrero_Deep_2004_herb_count <- count(Sombrero_Deep_2004_herb, vars = "SPECIES_CD")
# Sombrero_Deep_2004_herb_count$Year <- ('2004')
# Sombrero_Deep_2004_herb_count$sitename <- ('Sombrero Deep')
# Sombrero_Deep_2004_herb_count$Type <- "Herbivorous"
# 
# Sombrero_Deep_2004_comm <- merge(Sombrero_Deep_2004, Comm, by = c("SPECIES_CD"))
# Sombrero_Deep_2004_comm_count <- count(Sombrero_Deep_2004_comm, vars = "SPECIES_CD")
# Sombrero_Deep_2004_comm_count$Year <- ('2004')
# Sombrero_Deep_2004_comm_count$sitename <- ('Sombrero Deep')
# Sombrero_Deep_2004_comm_count$Type <- "Commercial"
# 
# 
# Sombrero_Deep_2004_total_count <- rbind(Sombrero_Deep_2004_herb_count, Sombrero_Deep_2004_comm_count)
# 

Sombrero_Deep_2005 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_2005.xls")


Sombrero_Deep_2005_herb <- merge(Sombrero_Deep_2005, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2005_herb_count <- count(Sombrero_Deep_2005_herb, vars = "SPECIES_CD")
Sombrero_Deep_2005_herb_count$Year <- ('2005')
Sombrero_Deep_2005_herb_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2005_herb_count$Type <- "Herbivorous"

Sombrero_Deep_2005_comm <- merge(Sombrero_Deep_2005, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2005_comm_count <- count(Sombrero_Deep_2005_comm, vars = "SPECIES_CD")
Sombrero_Deep_2005_comm_count$Year <- ('2005')
Sombrero_Deep_2005_comm_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2005_comm_count$Type <- "Commercial"


Sombrero_Deep_2005_total_count <- rbind(Sombrero_Deep_2005_herb_count, Sombrero_Deep_2005_comm_count)




Sombrero_Deep_2006 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_2006.xls")


Sombrero_Deep_2006_herb <- merge(Sombrero_Deep_2006, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2006_herb_count <- count(Sombrero_Deep_2006_herb, vars = "SPECIES_CD")
Sombrero_Deep_2006_herb_count$Year <- ('2006')
Sombrero_Deep_2006_herb_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2006_herb_count$Type <- "Herbivorous"

Sombrero_Deep_2006_comm <- merge(Sombrero_Deep_2006, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2006_comm_count <- count(Sombrero_Deep_2006_comm, vars = "SPECIES_CD")
Sombrero_Deep_2006_comm_count$Year <- ('2006')
Sombrero_Deep_2006_comm_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2006_comm_count$Type <- "Commercial"


Sombrero_Deep_2006_total_count <- rbind(Sombrero_Deep_2006_herb_count, Sombrero_Deep_2006_comm_count)



Sombrero_Deep_2007 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_2007.xls")


Sombrero_Deep_2007_herb <- merge(Sombrero_Deep_2007, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2007_herb_count <- count(Sombrero_Deep_2007_herb, vars = "SPECIES_CD")
Sombrero_Deep_2007_herb_count$Year <- ('2007')
Sombrero_Deep_2007_herb_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2007_herb_count$Type <- "Herbivorous"

Sombrero_Deep_2007_comm <- merge(Sombrero_Deep_2007, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2007_comm_count <- count(Sombrero_Deep_2007_comm, vars = "SPECIES_CD")
Sombrero_Deep_2007_comm_count$Year <- ('2007')
Sombrero_Deep_2007_comm_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2007_comm_count$Type <- "Commercial"


Sombrero_Deep_2007_total_count <- rbind(Sombrero_Deep_2007_herb_count, Sombrero_Deep_2007_comm_count)




Sombrero_Deep_2008 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_2008.xls")


Sombrero_Deep_2008_herb <- merge(Sombrero_Deep_2008, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2008_herb_count <- count(Sombrero_Deep_2008_herb, vars = "SPECIES_CD")
Sombrero_Deep_2008_herb_count$Year <- ('2008')
Sombrero_Deep_2008_herb_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2008_herb_count$Type <- "Herbivorous"

Sombrero_Deep_2008_comm <- merge(Sombrero_Deep_2008, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2008_comm_count <- count(Sombrero_Deep_2008_comm, vars = "SPECIES_CD")
Sombrero_Deep_2008_comm_count$Year <- ('2008')
Sombrero_Deep_2008_comm_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2008_comm_count$Type <- "Commercial"


Sombrero_Deep_2008_total_count <- rbind(Sombrero_Deep_2008_herb_count, Sombrero_Deep_2008_comm_count)



Sombrero_Deep_2009 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_2009.xls")


Sombrero_Deep_2009_herb <- merge(Sombrero_Deep_2009, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2009_herb_count <- count(Sombrero_Deep_2009_herb, vars = "SPECIES_CD")
Sombrero_Deep_2009_herb_count$Year <- ('2009')
Sombrero_Deep_2009_herb_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2009_herb_count$Type <- "Herbivorous"

Sombrero_Deep_2009_comm <- merge(Sombrero_Deep_2009, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2009_comm_count <- count(Sombrero_Deep_2009_comm, vars = "SPECIES_CD")
Sombrero_Deep_2009_comm_count$Year <- ('2009')
Sombrero_Deep_2009_comm_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2009_comm_count$Type <- "Commercial"


Sombrero_Deep_2009_total_count <- rbind(Sombrero_Deep_2009_herb_count, Sombrero_Deep_2009_comm_count)





Sombrero_Deep_2010 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_2010.xls")


Sombrero_Deep_2010_herb <- merge(Sombrero_Deep_2010, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2010_herb_count <- count(Sombrero_Deep_2010_herb, vars = "SPECIES_CD")
Sombrero_Deep_2010_herb_count$Year <- ('2010')
Sombrero_Deep_2010_herb_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2010_herb_count$Type <- "Herbivorous"

Sombrero_Deep_2010_comm <- merge(Sombrero_Deep_2010, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2010_comm_count <- count(Sombrero_Deep_2010_comm, vars = "SPECIES_CD")
Sombrero_Deep_2010_comm_count$Year <- ('2010')
Sombrero_Deep_2010_comm_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2010_comm_count$Type <- "Commercial"


Sombrero_Deep_2010_total_count <- rbind(Sombrero_Deep_2010_herb_count, Sombrero_Deep_2010_comm_count)


Sombrero_Deep_2011 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_2011.xls")


Sombrero_Deep_2011_herb <- merge(Sombrero_Deep_2011, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2011_herb_count <- count(Sombrero_Deep_2011_herb, vars = "SPECIES_CD")
Sombrero_Deep_2011_herb_count$Year <- ('2011')
Sombrero_Deep_2011_herb_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2011_herb_count$Type <- "Herbivorous"

Sombrero_Deep_2011_comm <- merge(Sombrero_Deep_2011, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2011_comm_count <- count(Sombrero_Deep_2011_comm, vars = "SPECIES_CD")
Sombrero_Deep_2011_comm_count$Year <- ('2011')
Sombrero_Deep_2011_comm_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2011_comm_count$Type <- "Commercial"


Sombrero_Deep_2011_total_count <- rbind(Sombrero_Deep_2011_herb_count, Sombrero_Deep_2011_comm_count)





Sombrero_Deep_2012 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_2012.xls")


Sombrero_Deep_2012_herb <- merge(Sombrero_Deep_2012, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2012_herb_count <- count(Sombrero_Deep_2012_herb, vars = "SPECIES_CD")
Sombrero_Deep_2012_herb_count$Year <- ('2012')
Sombrero_Deep_2012_herb_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2012_herb_count$Type <- "Herbivorous"

Sombrero_Deep_2012_comm <- merge(Sombrero_Deep_2012, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2012_comm_count <- count(Sombrero_Deep_2012_comm, vars = "SPECIES_CD")
Sombrero_Deep_2012_comm_count$Year <- ('2012')
Sombrero_Deep_2012_comm_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2012_comm_count$Type <- "Commercial"


Sombrero_Deep_2012_total_count <- rbind(Sombrero_Deep_2012_herb_count, Sombrero_Deep_2012_comm_count)



Sombrero_Deep_2014 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_2014.xls")


Sombrero_Deep_2014_herb <- merge(Sombrero_Deep_2014, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2014_herb_count <- count(Sombrero_Deep_2014_herb, vars = "SPECIES_CD")
Sombrero_Deep_2014_herb_count$Year <- ('2014')
Sombrero_Deep_2014_herb_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2014_herb_count$Type <- "Herbivorous"

Sombrero_Deep_2014_comm <- merge(Sombrero_Deep_2014, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2014_comm_count <- count(Sombrero_Deep_2014_comm, vars = "SPECIES_CD")
Sombrero_Deep_2014_comm_count$Year <- ('2014')
Sombrero_Deep_2014_comm_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2014_comm_count$Type <- "Commercial"


Sombrero_Deep_2014_total_count <- rbind(Sombrero_Deep_2014_herb_count, Sombrero_Deep_2014_comm_count)




Sombrero_Deep_2016 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_2016.xls")


Sombrero_Deep_2016_herb <- merge(Sombrero_Deep_2016, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2016_herb_count <- count(Sombrero_Deep_2016_herb, vars = "SPECIES_CD")
Sombrero_Deep_2016_herb_count$Year <- ('2016')
Sombrero_Deep_2016_herb_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2016_herb_count$Type <- "Herbivorous"

Sombrero_Deep_2016_comm <- merge(Sombrero_Deep_2016, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2016_comm_count <- count(Sombrero_Deep_2016_comm, vars = "SPECIES_CD")
Sombrero_Deep_2016_comm_count$Year <- ('2016')
Sombrero_Deep_2016_comm_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2016_comm_count$Type <- "Commercial"


Sombrero_Deep_2016_total_count <- rbind(Sombrero_Deep_2016_herb_count, Sombrero_Deep_2016_comm_count)



Sombrero_Deep_2018 <- import("MK/Sombrero_Deep/data/Sombrero_Deep_2018.xls")


Sombrero_Deep_2018_herb <- merge(Sombrero_Deep_2018, Herb, by = c("SPECIES_CD"))
Sombrero_Deep_2018_herb_count <- count(Sombrero_Deep_2018_herb, vars = "SPECIES_CD")
Sombrero_Deep_2018_herb_count$Year <- ('2018')
Sombrero_Deep_2018_herb_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2018_herb_count$Type <- "Herbivorous"

Sombrero_Deep_2018_comm <- merge(Sombrero_Deep_2018, Comm, by = c("SPECIES_CD"))
Sombrero_Deep_2018_comm_count <- count(Sombrero_Deep_2018_comm, vars = "SPECIES_CD")
Sombrero_Deep_2018_comm_count$Year <- ('2018')
Sombrero_Deep_2018_comm_count$sitename <- ('Sombrero Deep')
Sombrero_Deep_2018_comm_count$Type <- "Commercial"


Sombrero_Deep_2018_total_count <- rbind(Sombrero_Deep_2018_herb_count, Sombrero_Deep_2018_comm_count)





Sombrero_Deep_all <- rbind(Sombrero_Deep_1999_total_count,Sombrero_Deep_2000_total_count,Sombrero_Deep_2001_total_count,Sombrero_Deep_2002_total_count,Sombrero_Deep_2003_total_count,Sombrero_Deep_2005_total_count,Sombrero_Deep_2006_total_count,Sombrero_Deep_2007_total_count,Sombrero_Deep_2008_total_count,Sombrero_Deep_2009_total_count, Sombrero_Deep_2010_total_count,Sombrero_Deep_2011_total_count, Sombrero_Deep_2012_total_count, Sombrero_Deep_2014_total_count, Sombrero_Deep_2016_total_count,Sombrero_Deep_2018_total_count)


export(Sombrero_Deep_all, "MK/Sombrero_Deep/data/Sombrero_Deep_count_herb_comm.csv")




Sombrero_Shallow_1999 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_1999.xls")


Sombrero_Shallow_1999_herb <- merge(Sombrero_Shallow_1999, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_1999_herb_count <- count(Sombrero_Shallow_1999_herb, vars = "SPECIES_CD")
Sombrero_Shallow_1999_herb_count$Year <- ('1999')
Sombrero_Shallow_1999_herb_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_1999_herb_count$Type <- "Herbivorous"

Sombrero_Shallow_1999_comm <- merge(Sombrero_Shallow_1999, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_1999_comm_count <- count(Sombrero_Shallow_1999_comm, vars = "SPECIES_CD")
Sombrero_Shallow_1999_comm_count$Year <- ('1999')
Sombrero_Shallow_1999_comm_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_1999_comm_count$Type <- "Commercial"


Sombrero_Shallow_1999_total_count <- rbind(Sombrero_Shallow_1999_herb_count, Sombrero_Shallow_1999_comm_count)




Sombrero_Shallow_2000 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_2000.xls")


Sombrero_Shallow_2000_herb <- merge(Sombrero_Shallow_2000, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2000_herb_count <- count(Sombrero_Shallow_2000_herb, vars = "SPECIES_CD")
Sombrero_Shallow_2000_herb_count$Year <- ('2000')
Sombrero_Shallow_2000_herb_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2000_herb_count$Type <- "Herbivorous"

Sombrero_Shallow_2000_comm <- merge(Sombrero_Shallow_2000, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2000_comm_count <- count(Sombrero_Shallow_2000_comm, vars = "SPECIES_CD")
Sombrero_Shallow_2000_comm_count$Year <- ('2000')
Sombrero_Shallow_2000_comm_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2000_comm_count$Type <- "Commercial"


Sombrero_Shallow_2000_total_count <- rbind(Sombrero_Shallow_2000_herb_count, Sombrero_Shallow_2000_comm_count)


Sombrero_Shallow_2001 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_2001.xls")


Sombrero_Shallow_2001_herb <- merge(Sombrero_Shallow_2001, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2001_herb_count <- count(Sombrero_Shallow_2001_herb, vars = "SPECIES_CD")
Sombrero_Shallow_2001_herb_count$Year <- ('2001')
Sombrero_Shallow_2001_herb_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2001_herb_count$Type <- "Herbivorous"

Sombrero_Shallow_2001_comm <- merge(Sombrero_Shallow_2001, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2001_comm_count <- count(Sombrero_Shallow_2001_comm, vars = "SPECIES_CD")
Sombrero_Shallow_2001_comm_count$Year <- ('2001')
Sombrero_Shallow_2001_comm_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2001_comm_count$Type <- "Commercial"


Sombrero_Shallow_2001_total_count <- rbind(Sombrero_Shallow_2001_herb_count, Sombrero_Shallow_2001_comm_count)


Sombrero_Shallow_2002 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_2002.xls")


Sombrero_Shallow_2002_herb <- merge(Sombrero_Shallow_2002, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2002_herb_count <- count(Sombrero_Shallow_2002_herb, vars = "SPECIES_CD")
Sombrero_Shallow_2002_herb_count$Year <- ('2002')
Sombrero_Shallow_2002_herb_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2002_herb_count$Type <- "Herbivorous"

Sombrero_Shallow_2002_comm <- merge(Sombrero_Shallow_2002, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2002_comm_count <- count(Sombrero_Shallow_2002_comm, vars = "SPECIES_CD")
Sombrero_Shallow_2002_comm_count$Year <- ('2002')
Sombrero_Shallow_2002_comm_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2002_comm_count$Type <- "Commercial"


Sombrero_Shallow_2002_total_count <- rbind(Sombrero_Shallow_2002_herb_count, Sombrero_Shallow_2002_comm_count)



Sombrero_Shallow_2003 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_2003.xls")


Sombrero_Shallow_2003_herb <- merge(Sombrero_Shallow_2003, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2003_herb_count <- count(Sombrero_Shallow_2003_herb, vars = "SPECIES_CD")
Sombrero_Shallow_2003_herb_count$Year <- ('2003')
Sombrero_Shallow_2003_herb_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2003_herb_count$Type <- "Herbivorous"

Sombrero_Shallow_2003_comm <- merge(Sombrero_Shallow_2003, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2003_comm_count <- count(Sombrero_Shallow_2003_comm, vars = "SPECIES_CD")
Sombrero_Shallow_2003_comm_count$Year <- ('2003')
Sombrero_Shallow_2003_comm_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2003_comm_count$Type <- "Commercial"


Sombrero_Shallow_2003_total_count <- rbind(Sombrero_Shallow_2003_herb_count, Sombrero_Shallow_2003_comm_count)




# Sombrero_Shallow_2004 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_2004.xls")
# 
# 
# Sombrero_Shallow_2004_herb <- merge(Sombrero_Shallow_2004, Herb, by = c("SPECIES_CD"))
# Sombrero_Shallow_2004_herb_count <- count(Sombrero_Shallow_2004_herb, vars = "SPECIES_CD")
# Sombrero_Shallow_2004_herb_count$Year <- ('2004')
# Sombrero_Shallow_2004_herb_count$sitename <- ('Sombrero Shallow')
# Sombrero_Shallow_2004_herb_count$Type <- "Herbivorous"
# 
# Sombrero_Shallow_2004_comm <- merge(Sombrero_Shallow_2004, Comm, by = c("SPECIES_CD"))
# Sombrero_Shallow_2004_comm_count <- count(Sombrero_Shallow_2004_comm, vars = "SPECIES_CD")
# Sombrero_Shallow_2004_comm_count$Year <- ('2004')
# Sombrero_Shallow_2004_comm_count$sitename <- ('Sombrero Shallow')
# Sombrero_Shallow_2004_comm_count$Type <- "Commercial"
# 
# 
# Sombrero_Shallow_2004_total_count <- rbind(Sombrero_Shallow_2004_herb_count, Sombrero_Shallow_2004_comm_count)
# 

Sombrero_Shallow_2005 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_2005.xls")


Sombrero_Shallow_2005_herb <- merge(Sombrero_Shallow_2005, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2005_herb_count <- count(Sombrero_Shallow_2005_herb, vars = "SPECIES_CD")
Sombrero_Shallow_2005_herb_count$Year <- ('2005')
Sombrero_Shallow_2005_herb_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2005_herb_count$Type <- "Herbivorous"

Sombrero_Shallow_2005_comm <- merge(Sombrero_Shallow_2005, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2005_comm_count <- count(Sombrero_Shallow_2005_comm, vars = "SPECIES_CD")
Sombrero_Shallow_2005_comm_count$Year <- ('2005')
Sombrero_Shallow_2005_comm_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2005_comm_count$Type <- "Commercial"


Sombrero_Shallow_2005_total_count <- rbind(Sombrero_Shallow_2005_herb_count, Sombrero_Shallow_2005_comm_count)




Sombrero_Shallow_2006 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_2006.xls")


Sombrero_Shallow_2006_herb <- merge(Sombrero_Shallow_2006, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2006_herb_count <- count(Sombrero_Shallow_2006_herb, vars = "SPECIES_CD")
Sombrero_Shallow_2006_herb_count$Year <- ('2006')
Sombrero_Shallow_2006_herb_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2006_herb_count$Type <- "Herbivorous"

Sombrero_Shallow_2006_comm <- merge(Sombrero_Shallow_2006, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2006_comm_count <- count(Sombrero_Shallow_2006_comm, vars = "SPECIES_CD")
Sombrero_Shallow_2006_comm_count$Year <- ('2006')
Sombrero_Shallow_2006_comm_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2006_comm_count$Type <- "Commercial"


Sombrero_Shallow_2006_total_count <- rbind(Sombrero_Shallow_2006_herb_count, Sombrero_Shallow_2006_comm_count)



Sombrero_Shallow_2007 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_2007.xls")


Sombrero_Shallow_2007_herb <- merge(Sombrero_Shallow_2007, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2007_herb_count <- count(Sombrero_Shallow_2007_herb, vars = "SPECIES_CD")
Sombrero_Shallow_2007_herb_count$Year <- ('2007')
Sombrero_Shallow_2007_herb_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2007_herb_count$Type <- "Herbivorous"

Sombrero_Shallow_2007_comm <- merge(Sombrero_Shallow_2007, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2007_comm_count <- count(Sombrero_Shallow_2007_comm, vars = "SPECIES_CD")
Sombrero_Shallow_2007_comm_count$Year <- ('2007')
Sombrero_Shallow_2007_comm_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2007_comm_count$Type <- "Commercial"


Sombrero_Shallow_2007_total_count <- rbind(Sombrero_Shallow_2007_herb_count, Sombrero_Shallow_2007_comm_count)




Sombrero_Shallow_2008 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_2008.xls")


Sombrero_Shallow_2008_herb <- merge(Sombrero_Shallow_2008, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2008_herb_count <- count(Sombrero_Shallow_2008_herb, vars = "SPECIES_CD")
Sombrero_Shallow_2008_herb_count$Year <- ('2008')
Sombrero_Shallow_2008_herb_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2008_herb_count$Type <- "Herbivorous"

Sombrero_Shallow_2008_comm <- merge(Sombrero_Shallow_2008, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2008_comm_count <- count(Sombrero_Shallow_2008_comm, vars = "SPECIES_CD")
Sombrero_Shallow_2008_comm_count$Year <- ('2008')
Sombrero_Shallow_2008_comm_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2008_comm_count$Type <- "Commercial"


Sombrero_Shallow_2008_total_count <- rbind(Sombrero_Shallow_2008_herb_count, Sombrero_Shallow_2008_comm_count)



Sombrero_Shallow_2009 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_2009.xls")


Sombrero_Shallow_2009_herb <- merge(Sombrero_Shallow_2009, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2009_herb_count <- count(Sombrero_Shallow_2009_herb, vars = "SPECIES_CD")
Sombrero_Shallow_2009_herb_count$Year <- ('2009')
Sombrero_Shallow_2009_herb_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2009_herb_count$Type <- "Herbivorous"

Sombrero_Shallow_2009_comm <- merge(Sombrero_Shallow_2009, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2009_comm_count <- count(Sombrero_Shallow_2009_comm, vars = "SPECIES_CD")
Sombrero_Shallow_2009_comm_count$Year <- ('2009')
Sombrero_Shallow_2009_comm_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2009_comm_count$Type <- "Commercial"


Sombrero_Shallow_2009_total_count <- rbind(Sombrero_Shallow_2009_herb_count, Sombrero_Shallow_2009_comm_count)





Sombrero_Shallow_2010 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_2010.xls")


Sombrero_Shallow_2010_herb <- merge(Sombrero_Shallow_2010, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2010_herb_count <- count(Sombrero_Shallow_2010_herb, vars = "SPECIES_CD")
Sombrero_Shallow_2010_herb_count$Year <- ('2010')
Sombrero_Shallow_2010_herb_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2010_herb_count$Type <- "Herbivorous"

Sombrero_Shallow_2010_comm <- merge(Sombrero_Shallow_2010, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2010_comm_count <- count(Sombrero_Shallow_2010_comm, vars = "SPECIES_CD")
Sombrero_Shallow_2010_comm_count$Year <- ('2010')
Sombrero_Shallow_2010_comm_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2010_comm_count$Type <- "Commercial"


Sombrero_Shallow_2010_total_count <- rbind(Sombrero_Shallow_2010_herb_count, Sombrero_Shallow_2010_comm_count)


Sombrero_Shallow_2011 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_2011.xls")


Sombrero_Shallow_2011_herb <- merge(Sombrero_Shallow_2011, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2011_herb_count <- count(Sombrero_Shallow_2011_herb, vars = "SPECIES_CD")
Sombrero_Shallow_2011_herb_count$Year <- ('2011')
Sombrero_Shallow_2011_herb_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2011_herb_count$Type <- "Herbivorous"

Sombrero_Shallow_2011_comm <- merge(Sombrero_Shallow_2011, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2011_comm_count <- count(Sombrero_Shallow_2011_comm, vars = "SPECIES_CD")
Sombrero_Shallow_2011_comm_count$Year <- ('2011')
Sombrero_Shallow_2011_comm_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2011_comm_count$Type <- "Commercial"


Sombrero_Shallow_2011_total_count <- rbind(Sombrero_Shallow_2011_herb_count, Sombrero_Shallow_2011_comm_count)





Sombrero_Shallow_2012 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_2012.xls")


Sombrero_Shallow_2012_herb <- merge(Sombrero_Shallow_2012, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2012_herb_count <- count(Sombrero_Shallow_2012_herb, vars = "SPECIES_CD")
Sombrero_Shallow_2012_herb_count$Year <- ('2012')
Sombrero_Shallow_2012_herb_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2012_herb_count$Type <- "Herbivorous"

Sombrero_Shallow_2012_comm <- merge(Sombrero_Shallow_2012, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2012_comm_count <- count(Sombrero_Shallow_2012_comm, vars = "SPECIES_CD")
Sombrero_Shallow_2012_comm_count$Year <- ('2012')
Sombrero_Shallow_2012_comm_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2012_comm_count$Type <- "Commercial"


Sombrero_Shallow_2012_total_count <- rbind(Sombrero_Shallow_2012_herb_count, Sombrero_Shallow_2012_comm_count)



Sombrero_Shallow_2014 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_2014.xls")


Sombrero_Shallow_2014_herb <- merge(Sombrero_Shallow_2014, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2014_herb_count <- count(Sombrero_Shallow_2014_herb, vars = "SPECIES_CD")
Sombrero_Shallow_2014_herb_count$Year <- ('2014')
Sombrero_Shallow_2014_herb_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2014_herb_count$Type <- "Herbivorous"

Sombrero_Shallow_2014_comm <- merge(Sombrero_Shallow_2014, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2014_comm_count <- count(Sombrero_Shallow_2014_comm, vars = "SPECIES_CD")
Sombrero_Shallow_2014_comm_count$Year <- ('2014')
Sombrero_Shallow_2014_comm_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2014_comm_count$Type <- "Commercial"


Sombrero_Shallow_2014_total_count <- rbind(Sombrero_Shallow_2014_herb_count, Sombrero_Shallow_2014_comm_count)




Sombrero_Shallow_2016 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_2016.xls")


Sombrero_Shallow_2016_herb <- merge(Sombrero_Shallow_2016, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2016_herb_count <- count(Sombrero_Shallow_2016_herb, vars = "SPECIES_CD")
Sombrero_Shallow_2016_herb_count$Year <- ('2016')
Sombrero_Shallow_2016_herb_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2016_herb_count$Type <- "Herbivorous"

Sombrero_Shallow_2016_comm <- merge(Sombrero_Shallow_2016, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2016_comm_count <- count(Sombrero_Shallow_2016_comm, vars = "SPECIES_CD")
Sombrero_Shallow_2016_comm_count$Year <- ('2016')
Sombrero_Shallow_2016_comm_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2016_comm_count$Type <- "Commercial"


Sombrero_Shallow_2016_total_count <- rbind(Sombrero_Shallow_2016_herb_count, Sombrero_Shallow_2016_comm_count)



Sombrero_Shallow_2018 <- import("MK/Sombrero_Shallow/data/Sombrero_Shallow_2018.xls")


Sombrero_Shallow_2018_herb <- merge(Sombrero_Shallow_2018, Herb, by = c("SPECIES_CD"))
Sombrero_Shallow_2018_herb_count <- count(Sombrero_Shallow_2018_herb, vars = "SPECIES_CD")
Sombrero_Shallow_2018_herb_count$Year <- ('2018')
Sombrero_Shallow_2018_herb_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2018_herb_count$Type <- "Herbivorous"

Sombrero_Shallow_2018_comm <- merge(Sombrero_Shallow_2018, Comm, by = c("SPECIES_CD"))
Sombrero_Shallow_2018_comm_count <- count(Sombrero_Shallow_2018_comm, vars = "SPECIES_CD")
Sombrero_Shallow_2018_comm_count$Year <- ('2018')
Sombrero_Shallow_2018_comm_count$sitename <- ('Sombrero Shallow')
Sombrero_Shallow_2018_comm_count$Type <- "Commercial"


Sombrero_Shallow_2018_total_count <- rbind(Sombrero_Shallow_2018_herb_count, Sombrero_Shallow_2018_comm_count)





Sombrero_Shallow_all <- rbind(Sombrero_Shallow_1999_total_count,Sombrero_Shallow_2000_total_count,Sombrero_Shallow_2001_total_count,Sombrero_Shallow_2002_total_count,Sombrero_Shallow_2003_total_count,Sombrero_Shallow_2005_total_count,Sombrero_Shallow_2006_total_count,Sombrero_Shallow_2007_total_count,Sombrero_Shallow_2008_total_count,Sombrero_Shallow_2009_total_count, Sombrero_Shallow_2010_total_count,Sombrero_Shallow_2011_total_count, Sombrero_Shallow_2012_total_count, Sombrero_Shallow_2014_total_count, Sombrero_Shallow_2016_total_count,Sombrero_Shallow_2018_total_count)


export(Sombrero_Shallow_all, "MK/Sombrero_Shallow/data/Sombrero_Shallow_count_herb_comm.csv")




Tennessee_Deep_1999 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_1999.xls")


Tennessee_Deep_1999_herb <- merge(Tennessee_Deep_1999, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_1999_herb_count <- count(Tennessee_Deep_1999_herb, vars = "SPECIES_CD")
Tennessee_Deep_1999_herb_count$Year <- ('1999')
Tennessee_Deep_1999_herb_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_1999_herb_count$Type <- "Herbivorous"

Tennessee_Deep_1999_comm <- merge(Tennessee_Deep_1999, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_1999_comm_count <- count(Tennessee_Deep_1999_comm, vars = "SPECIES_CD")
Tennessee_Deep_1999_comm_count$Year <- ('1999')
Tennessee_Deep_1999_comm_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_1999_comm_count$Type <- "Commercial"


Tennessee_Deep_1999_total_count <- rbind(Tennessee_Deep_1999_herb_count, Tennessee_Deep_1999_comm_count)




Tennessee_Deep_2000 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_2000.xls")


Tennessee_Deep_2000_herb <- merge(Tennessee_Deep_2000, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2000_herb_count <- count(Tennessee_Deep_2000_herb, vars = "SPECIES_CD")
Tennessee_Deep_2000_herb_count$Year <- ('2000')
Tennessee_Deep_2000_herb_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2000_herb_count$Type <- "Herbivorous"

Tennessee_Deep_2000_comm <- merge(Tennessee_Deep_2000, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2000_comm_count <- count(Tennessee_Deep_2000_comm, vars = "SPECIES_CD")
Tennessee_Deep_2000_comm_count$Year <- ('2000')
Tennessee_Deep_2000_comm_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2000_comm_count$Type <- "Commercial"


Tennessee_Deep_2000_total_count <- rbind(Tennessee_Deep_2000_herb_count, Tennessee_Deep_2000_comm_count)


Tennessee_Deep_2001 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_2001.xls")


Tennessee_Deep_2001_herb <- merge(Tennessee_Deep_2001, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2001_herb_count <- count(Tennessee_Deep_2001_herb, vars = "SPECIES_CD")
Tennessee_Deep_2001_herb_count$Year <- ('2001')
Tennessee_Deep_2001_herb_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2001_herb_count$Type <- "Herbivorous"

Tennessee_Deep_2001_comm <- merge(Tennessee_Deep_2001, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2001_comm_count <- count(Tennessee_Deep_2001_comm, vars = "SPECIES_CD")
Tennessee_Deep_2001_comm_count$Year <- ('2001')
Tennessee_Deep_2001_comm_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2001_comm_count$Type <- "Commercial"


Tennessee_Deep_2001_total_count <- rbind(Tennessee_Deep_2001_herb_count, Tennessee_Deep_2001_comm_count)


Tennessee_Deep_2002 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_2002.xls")


Tennessee_Deep_2002_herb <- merge(Tennessee_Deep_2002, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2002_herb_count <- count(Tennessee_Deep_2002_herb, vars = "SPECIES_CD")
Tennessee_Deep_2002_herb_count$Year <- ('2002')
Tennessee_Deep_2002_herb_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2002_herb_count$Type <- "Herbivorous"

Tennessee_Deep_2002_comm <- merge(Tennessee_Deep_2002, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2002_comm_count <- count(Tennessee_Deep_2002_comm, vars = "SPECIES_CD")
Tennessee_Deep_2002_comm_count$Year <- ('2002')
Tennessee_Deep_2002_comm_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2002_comm_count$Type <- "Commercial"


Tennessee_Deep_2002_total_count <- rbind(Tennessee_Deep_2002_herb_count, Tennessee_Deep_2002_comm_count)



Tennessee_Deep_2003 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_2003.xls")


Tennessee_Deep_2003_herb <- merge(Tennessee_Deep_2003, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2003_herb_count <- count(Tennessee_Deep_2003_herb, vars = "SPECIES_CD")
Tennessee_Deep_2003_herb_count$Year <- ('2003')
Tennessee_Deep_2003_herb_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2003_herb_count$Type <- "Herbivorous"

Tennessee_Deep_2003_comm <- merge(Tennessee_Deep_2003, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2003_comm_count <- count(Tennessee_Deep_2003_comm, vars = "SPECIES_CD")
Tennessee_Deep_2003_comm_count$Year <- ('2003')
Tennessee_Deep_2003_comm_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2003_comm_count$Type <- "Commercial"


Tennessee_Deep_2003_total_count <- rbind(Tennessee_Deep_2003_herb_count, Tennessee_Deep_2003_comm_count)




# Tennessee_Deep_2004 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_2004.xls")
# 
# 
# Tennessee_Deep_2004_herb <- merge(Tennessee_Deep_2004, Herb, by = c("SPECIES_CD"))
# Tennessee_Deep_2004_herb_count <- count(Tennessee_Deep_2004_herb, vars = "SPECIES_CD")
# Tennessee_Deep_2004_herb_count$Year <- ('2004')
# Tennessee_Deep_2004_herb_count$sitename <- ('Tennessee Deep')
# Tennessee_Deep_2004_herb_count$Type <- "Herbivorous"
# 
# Tennessee_Deep_2004_comm <- merge(Tennessee_Deep_2004, Comm, by = c("SPECIES_CD"))
# Tennessee_Deep_2004_comm_count <- count(Tennessee_Deep_2004_comm, vars = "SPECIES_CD")
# Tennessee_Deep_2004_comm_count$Year <- ('2004')
# Tennessee_Deep_2004_comm_count$sitename <- ('Tennessee Deep')
# Tennessee_Deep_2004_comm_count$Type <- "Commercial"
# 
# 
# Tennessee_Deep_2004_total_count <- rbind(Tennessee_Deep_2004_herb_count, Tennessee_Deep_2004_comm_count)
# 

Tennessee_Deep_2005 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_2005.xls")


Tennessee_Deep_2005_herb <- merge(Tennessee_Deep_2005, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2005_herb_count <- count(Tennessee_Deep_2005_herb, vars = "SPECIES_CD")
Tennessee_Deep_2005_herb_count$Year <- ('2005')
Tennessee_Deep_2005_herb_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2005_herb_count$Type <- "Herbivorous"

Tennessee_Deep_2005_comm <- merge(Tennessee_Deep_2005, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2005_comm_count <- count(Tennessee_Deep_2005_comm, vars = "SPECIES_CD")
Tennessee_Deep_2005_comm_count$Year <- ('2005')
Tennessee_Deep_2005_comm_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2005_comm_count$Type <- "Commercial"


Tennessee_Deep_2005_total_count <- rbind(Tennessee_Deep_2005_herb_count, Tennessee_Deep_2005_comm_count)




Tennessee_Deep_2006 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_2006.xls")


Tennessee_Deep_2006_herb <- merge(Tennessee_Deep_2006, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2006_herb_count <- count(Tennessee_Deep_2006_herb, vars = "SPECIES_CD")
Tennessee_Deep_2006_herb_count$Year <- ('2006')
Tennessee_Deep_2006_herb_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2006_herb_count$Type <- "Herbivorous"

Tennessee_Deep_2006_comm <- merge(Tennessee_Deep_2006, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2006_comm_count <- count(Tennessee_Deep_2006_comm, vars = "SPECIES_CD")
Tennessee_Deep_2006_comm_count$Year <- ('2006')
Tennessee_Deep_2006_comm_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2006_comm_count$Type <- "Commercial"


Tennessee_Deep_2006_total_count <- rbind(Tennessee_Deep_2006_herb_count, Tennessee_Deep_2006_comm_count)



Tennessee_Deep_2007 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_2007.xls")


Tennessee_Deep_2007_herb <- merge(Tennessee_Deep_2007, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2007_herb_count <- count(Tennessee_Deep_2007_herb, vars = "SPECIES_CD")
Tennessee_Deep_2007_herb_count$Year <- ('2007')
Tennessee_Deep_2007_herb_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2007_herb_count$Type <- "Herbivorous"

Tennessee_Deep_2007_comm <- merge(Tennessee_Deep_2007, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2007_comm_count <- count(Tennessee_Deep_2007_comm, vars = "SPECIES_CD")
Tennessee_Deep_2007_comm_count$Year <- ('2007')
Tennessee_Deep_2007_comm_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2007_comm_count$Type <- "Commercial"


Tennessee_Deep_2007_total_count <- rbind(Tennessee_Deep_2007_herb_count, Tennessee_Deep_2007_comm_count)




Tennessee_Deep_2008 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_2008.xls")


Tennessee_Deep_2008_herb <- merge(Tennessee_Deep_2008, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2008_herb_count <- count(Tennessee_Deep_2008_herb, vars = "SPECIES_CD")
Tennessee_Deep_2008_herb_count$Year <- ('2008')
Tennessee_Deep_2008_herb_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2008_herb_count$Type <- "Herbivorous"

Tennessee_Deep_2008_comm <- merge(Tennessee_Deep_2008, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2008_comm_count <- count(Tennessee_Deep_2008_comm, vars = "SPECIES_CD")
Tennessee_Deep_2008_comm_count$Year <- ('2008')
Tennessee_Deep_2008_comm_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2008_comm_count$Type <- "Commercial"


Tennessee_Deep_2008_total_count <- rbind(Tennessee_Deep_2008_herb_count, Tennessee_Deep_2008_comm_count)



Tennessee_Deep_2009 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_2009.xls")


Tennessee_Deep_2009_herb <- merge(Tennessee_Deep_2009, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2009_herb_count <- count(Tennessee_Deep_2009_herb, vars = "SPECIES_CD")
Tennessee_Deep_2009_herb_count$Year <- ('2009')
Tennessee_Deep_2009_herb_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2009_herb_count$Type <- "Herbivorous"

Tennessee_Deep_2009_comm <- merge(Tennessee_Deep_2009, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2009_comm_count <- count(Tennessee_Deep_2009_comm, vars = "SPECIES_CD")
Tennessee_Deep_2009_comm_count$Year <- ('2009')
Tennessee_Deep_2009_comm_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2009_comm_count$Type <- "Commercial"


Tennessee_Deep_2009_total_count <- rbind(Tennessee_Deep_2009_herb_count, Tennessee_Deep_2009_comm_count)





Tennessee_Deep_2010 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_2010.xls")


Tennessee_Deep_2010_herb <- merge(Tennessee_Deep_2010, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2010_herb_count <- count(Tennessee_Deep_2010_herb, vars = "SPECIES_CD")
Tennessee_Deep_2010_herb_count$Year <- ('2010')
Tennessee_Deep_2010_herb_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2010_herb_count$Type <- "Herbivorous"

Tennessee_Deep_2010_comm <- merge(Tennessee_Deep_2010, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2010_comm_count <- count(Tennessee_Deep_2010_comm, vars = "SPECIES_CD")
Tennessee_Deep_2010_comm_count$Year <- ('2010')
Tennessee_Deep_2010_comm_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2010_comm_count$Type <- "Commercial"


Tennessee_Deep_2010_total_count <- rbind(Tennessee_Deep_2010_herb_count, Tennessee_Deep_2010_comm_count)


Tennessee_Deep_2011 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_2011.xls")


Tennessee_Deep_2011_herb <- merge(Tennessee_Deep_2011, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2011_herb_count <- count(Tennessee_Deep_2011_herb, vars = "SPECIES_CD")
Tennessee_Deep_2011_herb_count$Year <- ('2011')
Tennessee_Deep_2011_herb_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2011_herb_count$Type <- "Herbivorous"

Tennessee_Deep_2011_comm <- merge(Tennessee_Deep_2011, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2011_comm_count <- count(Tennessee_Deep_2011_comm, vars = "SPECIES_CD")
Tennessee_Deep_2011_comm_count$Year <- ('2011')
Tennessee_Deep_2011_comm_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2011_comm_count$Type <- "Commercial"


Tennessee_Deep_2011_total_count <- rbind(Tennessee_Deep_2011_herb_count, Tennessee_Deep_2011_comm_count)





Tennessee_Deep_2012 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_2012.xls")


Tennessee_Deep_2012_herb <- merge(Tennessee_Deep_2012, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2012_herb_count <- count(Tennessee_Deep_2012_herb, vars = "SPECIES_CD")
Tennessee_Deep_2012_herb_count$Year <- ('2012')
Tennessee_Deep_2012_herb_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2012_herb_count$Type <- "Herbivorous"

Tennessee_Deep_2012_comm <- merge(Tennessee_Deep_2012, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2012_comm_count <- count(Tennessee_Deep_2012_comm, vars = "SPECIES_CD")
Tennessee_Deep_2012_comm_count$Year <- ('2012')
Tennessee_Deep_2012_comm_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2012_comm_count$Type <- "Commercial"


Tennessee_Deep_2012_total_count <- rbind(Tennessee_Deep_2012_herb_count, Tennessee_Deep_2012_comm_count)



Tennessee_Deep_2014 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_2014.xls")


Tennessee_Deep_2014_herb <- merge(Tennessee_Deep_2014, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2014_herb_count <- count(Tennessee_Deep_2014_herb, vars = "SPECIES_CD")
Tennessee_Deep_2014_herb_count$Year <- ('2014')
Tennessee_Deep_2014_herb_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2014_herb_count$Type <- "Herbivorous"

Tennessee_Deep_2014_comm <- merge(Tennessee_Deep_2014, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2014_comm_count <- count(Tennessee_Deep_2014_comm, vars = "SPECIES_CD")
Tennessee_Deep_2014_comm_count$Year <- ('2014')
Tennessee_Deep_2014_comm_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2014_comm_count$Type <- "Commercial"


Tennessee_Deep_2014_total_count <- rbind(Tennessee_Deep_2014_herb_count, Tennessee_Deep_2014_comm_count)




Tennessee_Deep_2016 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_2016.xls")


Tennessee_Deep_2016_herb <- merge(Tennessee_Deep_2016, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2016_herb_count <- count(Tennessee_Deep_2016_herb, vars = "SPECIES_CD")
Tennessee_Deep_2016_herb_count$Year <- ('2016')
Tennessee_Deep_2016_herb_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2016_herb_count$Type <- "Herbivorous"

Tennessee_Deep_2016_comm <- merge(Tennessee_Deep_2016, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2016_comm_count <- count(Tennessee_Deep_2016_comm, vars = "SPECIES_CD")
Tennessee_Deep_2016_comm_count$Year <- ('2016')
Tennessee_Deep_2016_comm_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2016_comm_count$Type <- "Commercial"


Tennessee_Deep_2016_total_count <- rbind(Tennessee_Deep_2016_herb_count, Tennessee_Deep_2016_comm_count)



Tennessee_Deep_2018 <- import("MK/Tennessee_Deep/data/Tennessee_Deep_2018.xls")


Tennessee_Deep_2018_herb <- merge(Tennessee_Deep_2018, Herb, by = c("SPECIES_CD"))
Tennessee_Deep_2018_herb_count <- count(Tennessee_Deep_2018_herb, vars = "SPECIES_CD")
Tennessee_Deep_2018_herb_count$Year <- ('2018')
Tennessee_Deep_2018_herb_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2018_herb_count$Type <- "Herbivorous"

Tennessee_Deep_2018_comm <- merge(Tennessee_Deep_2018, Comm, by = c("SPECIES_CD"))
Tennessee_Deep_2018_comm_count <- count(Tennessee_Deep_2018_comm, vars = "SPECIES_CD")
Tennessee_Deep_2018_comm_count$Year <- ('2018')
Tennessee_Deep_2018_comm_count$sitename <- ('Tennessee Deep')
Tennessee_Deep_2018_comm_count$Type <- "Commercial"


Tennessee_Deep_2018_total_count <- rbind(Tennessee_Deep_2018_herb_count, Tennessee_Deep_2018_comm_count)





Tennessee_Deep_all <- rbind(Tennessee_Deep_1999_total_count,Tennessee_Deep_2000_total_count,Tennessee_Deep_2001_total_count,Tennessee_Deep_2002_total_count,Tennessee_Deep_2003_total_count,Tennessee_Deep_2005_total_count,Tennessee_Deep_2006_total_count,Tennessee_Deep_2007_total_count,Tennessee_Deep_2008_total_count,Tennessee_Deep_2009_total_count, Tennessee_Deep_2010_total_count,Tennessee_Deep_2011_total_count, Tennessee_Deep_2012_total_count, Tennessee_Deep_2014_total_count, Tennessee_Deep_2016_total_count,Tennessee_Deep_2018_total_count)


export(Tennessee_Deep_all, "MK/Tennessee_Deep/data/Tennessee_Deep_count_herb_comm.csv")




Tennessee_Shallow_1999 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_1999.xls")


Tennessee_Shallow_1999_herb <- merge(Tennessee_Shallow_1999, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_1999_herb_count <- count(Tennessee_Shallow_1999_herb, vars = "SPECIES_CD")
Tennessee_Shallow_1999_herb_count$Year <- ('1999')
Tennessee_Shallow_1999_herb_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_1999_herb_count$Type <- "Herbivorous"

Tennessee_Shallow_1999_comm <- merge(Tennessee_Shallow_1999, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_1999_comm_count <- count(Tennessee_Shallow_1999_comm, vars = "SPECIES_CD")
Tennessee_Shallow_1999_comm_count$Year <- ('1999')
Tennessee_Shallow_1999_comm_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_1999_comm_count$Type <- "Commercial"


Tennessee_Shallow_1999_total_count <- rbind(Tennessee_Shallow_1999_herb_count, Tennessee_Shallow_1999_comm_count)




Tennessee_Shallow_2000 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_2000.xls")


Tennessee_Shallow_2000_herb <- merge(Tennessee_Shallow_2000, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2000_herb_count <- count(Tennessee_Shallow_2000_herb, vars = "SPECIES_CD")
Tennessee_Shallow_2000_herb_count$Year <- ('2000')
Tennessee_Shallow_2000_herb_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2000_herb_count$Type <- "Herbivorous"

Tennessee_Shallow_2000_comm <- merge(Tennessee_Shallow_2000, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2000_comm_count <- count(Tennessee_Shallow_2000_comm, vars = "SPECIES_CD")
Tennessee_Shallow_2000_comm_count$Year <- ('2000')
Tennessee_Shallow_2000_comm_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2000_comm_count$Type <- "Commercial"


Tennessee_Shallow_2000_total_count <- rbind(Tennessee_Shallow_2000_herb_count, Tennessee_Shallow_2000_comm_count)


Tennessee_Shallow_2001 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_2001.xls")


Tennessee_Shallow_2001_herb <- merge(Tennessee_Shallow_2001, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2001_herb_count <- count(Tennessee_Shallow_2001_herb, vars = "SPECIES_CD")
Tennessee_Shallow_2001_herb_count$Year <- ('2001')
Tennessee_Shallow_2001_herb_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2001_herb_count$Type <- "Herbivorous"

Tennessee_Shallow_2001_comm <- merge(Tennessee_Shallow_2001, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2001_comm_count <- count(Tennessee_Shallow_2001_comm, vars = "SPECIES_CD")
Tennessee_Shallow_2001_comm_count$Year <- ('2001')
Tennessee_Shallow_2001_comm_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2001_comm_count$Type <- "Commercial"


Tennessee_Shallow_2001_total_count <- rbind(Tennessee_Shallow_2001_herb_count, Tennessee_Shallow_2001_comm_count)


Tennessee_Shallow_2002 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_2002.xls")


Tennessee_Shallow_2002_herb <- merge(Tennessee_Shallow_2002, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2002_herb_count <- count(Tennessee_Shallow_2002_herb, vars = "SPECIES_CD")
Tennessee_Shallow_2002_herb_count$Year <- ('2002')
Tennessee_Shallow_2002_herb_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2002_herb_count$Type <- "Herbivorous"

Tennessee_Shallow_2002_comm <- merge(Tennessee_Shallow_2002, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2002_comm_count <- count(Tennessee_Shallow_2002_comm, vars = "SPECIES_CD")
Tennessee_Shallow_2002_comm_count$Year <- ('2002')
Tennessee_Shallow_2002_comm_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2002_comm_count$Type <- "Commercial"


Tennessee_Shallow_2002_total_count <- rbind(Tennessee_Shallow_2002_herb_count, Tennessee_Shallow_2002_comm_count)



Tennessee_Shallow_2003 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_2003.xls")


Tennessee_Shallow_2003_herb <- merge(Tennessee_Shallow_2003, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2003_herb_count <- count(Tennessee_Shallow_2003_herb, vars = "SPECIES_CD")
Tennessee_Shallow_2003_herb_count$Year <- ('2003')
Tennessee_Shallow_2003_herb_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2003_herb_count$Type <- "Herbivorous"

Tennessee_Shallow_2003_comm <- merge(Tennessee_Shallow_2003, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2003_comm_count <- count(Tennessee_Shallow_2003_comm, vars = "SPECIES_CD")
Tennessee_Shallow_2003_comm_count$Year <- ('2003')
Tennessee_Shallow_2003_comm_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2003_comm_count$Type <- "Commercial"


Tennessee_Shallow_2003_total_count <- rbind(Tennessee_Shallow_2003_herb_count, Tennessee_Shallow_2003_comm_count)




# Tennessee_Shallow_2004 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_2004.xls")
# 
# 
# Tennessee_Shallow_2004_herb <- merge(Tennessee_Shallow_2004, Herb, by = c("SPECIES_CD"))
# Tennessee_Shallow_2004_herb_count <- count(Tennessee_Shallow_2004_herb, vars = "SPECIES_CD")
# Tennessee_Shallow_2004_herb_count$Year <- ('2004')
# Tennessee_Shallow_2004_herb_count$sitename <- ('Tennessee Shallow')
# Tennessee_Shallow_2004_herb_count$Type <- "Herbivorous"
# 
# Tennessee_Shallow_2004_comm <- merge(Tennessee_Shallow_2004, Comm, by = c("SPECIES_CD"))
# Tennessee_Shallow_2004_comm_count <- count(Tennessee_Shallow_2004_comm, vars = "SPECIES_CD")
# Tennessee_Shallow_2004_comm_count$Year <- ('2004')
# Tennessee_Shallow_2004_comm_count$sitename <- ('Tennessee Shallow')
# Tennessee_Shallow_2004_comm_count$Type <- "Commercial"
# 
# 
# Tennessee_Shallow_2004_total_count <- rbind(Tennessee_Shallow_2004_herb_count, Tennessee_Shallow_2004_comm_count)
# 

Tennessee_Shallow_2005 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_2005.xls")


Tennessee_Shallow_2005_herb <- merge(Tennessee_Shallow_2005, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2005_herb_count <- count(Tennessee_Shallow_2005_herb, vars = "SPECIES_CD")
Tennessee_Shallow_2005_herb_count$Year <- ('2005')
Tennessee_Shallow_2005_herb_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2005_herb_count$Type <- "Herbivorous"

Tennessee_Shallow_2005_comm <- merge(Tennessee_Shallow_2005, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2005_comm_count <- count(Tennessee_Shallow_2005_comm, vars = "SPECIES_CD")
Tennessee_Shallow_2005_comm_count$Year <- ('2005')
Tennessee_Shallow_2005_comm_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2005_comm_count$Type <- "Commercial"


Tennessee_Shallow_2005_total_count <- rbind(Tennessee_Shallow_2005_herb_count, Tennessee_Shallow_2005_comm_count)




Tennessee_Shallow_2006 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_2006.xls")


Tennessee_Shallow_2006_herb <- merge(Tennessee_Shallow_2006, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2006_herb_count <- count(Tennessee_Shallow_2006_herb, vars = "SPECIES_CD")
Tennessee_Shallow_2006_herb_count$Year <- ('2006')
Tennessee_Shallow_2006_herb_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2006_herb_count$Type <- "Herbivorous"

Tennessee_Shallow_2006_comm <- merge(Tennessee_Shallow_2006, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2006_comm_count <- count(Tennessee_Shallow_2006_comm, vars = "SPECIES_CD")
Tennessee_Shallow_2006_comm_count$Year <- ('2006')
Tennessee_Shallow_2006_comm_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2006_comm_count$Type <- "Commercial"


Tennessee_Shallow_2006_total_count <- rbind(Tennessee_Shallow_2006_herb_count, Tennessee_Shallow_2006_comm_count)



Tennessee_Shallow_2007 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_2007.xls")


Tennessee_Shallow_2007_herb <- merge(Tennessee_Shallow_2007, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2007_herb_count <- count(Tennessee_Shallow_2007_herb, vars = "SPECIES_CD")
Tennessee_Shallow_2007_herb_count$Year <- ('2007')
Tennessee_Shallow_2007_herb_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2007_herb_count$Type <- "Herbivorous"

Tennessee_Shallow_2007_comm <- merge(Tennessee_Shallow_2007, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2007_comm_count <- count(Tennessee_Shallow_2007_comm, vars = "SPECIES_CD")
Tennessee_Shallow_2007_comm_count$Year <- ('2007')
Tennessee_Shallow_2007_comm_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2007_comm_count$Type <- "Commercial"


Tennessee_Shallow_2007_total_count <- rbind(Tennessee_Shallow_2007_herb_count, Tennessee_Shallow_2007_comm_count)




Tennessee_Shallow_2008 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_2008.xls")


Tennessee_Shallow_2008_herb <- merge(Tennessee_Shallow_2008, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2008_herb_count <- count(Tennessee_Shallow_2008_herb, vars = "SPECIES_CD")
Tennessee_Shallow_2008_herb_count$Year <- ('2008')
Tennessee_Shallow_2008_herb_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2008_herb_count$Type <- "Herbivorous"

Tennessee_Shallow_2008_comm <- merge(Tennessee_Shallow_2008, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2008_comm_count <- count(Tennessee_Shallow_2008_comm, vars = "SPECIES_CD")
Tennessee_Shallow_2008_comm_count$Year <- ('2008')
Tennessee_Shallow_2008_comm_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2008_comm_count$Type <- "Commercial"


Tennessee_Shallow_2008_total_count <- rbind(Tennessee_Shallow_2008_herb_count, Tennessee_Shallow_2008_comm_count)



Tennessee_Shallow_2009 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_2009.xls")


Tennessee_Shallow_2009_herb <- merge(Tennessee_Shallow_2009, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2009_herb_count <- count(Tennessee_Shallow_2009_herb, vars = "SPECIES_CD")
Tennessee_Shallow_2009_herb_count$Year <- ('2009')
Tennessee_Shallow_2009_herb_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2009_herb_count$Type <- "Herbivorous"

Tennessee_Shallow_2009_comm <- merge(Tennessee_Shallow_2009, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2009_comm_count <- count(Tennessee_Shallow_2009_comm, vars = "SPECIES_CD")
Tennessee_Shallow_2009_comm_count$Year <- ('2009')
Tennessee_Shallow_2009_comm_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2009_comm_count$Type <- "Commercial"


Tennessee_Shallow_2009_total_count <- rbind(Tennessee_Shallow_2009_herb_count, Tennessee_Shallow_2009_comm_count)





Tennessee_Shallow_2010 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_2010.xls")


Tennessee_Shallow_2010_herb <- merge(Tennessee_Shallow_2010, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2010_herb_count <- count(Tennessee_Shallow_2010_herb, vars = "SPECIES_CD")
Tennessee_Shallow_2010_herb_count$Year <- ('2010')
Tennessee_Shallow_2010_herb_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2010_herb_count$Type <- "Herbivorous"

Tennessee_Shallow_2010_comm <- merge(Tennessee_Shallow_2010, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2010_comm_count <- count(Tennessee_Shallow_2010_comm, vars = "SPECIES_CD")
Tennessee_Shallow_2010_comm_count$Year <- ('2010')
Tennessee_Shallow_2010_comm_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2010_comm_count$Type <- "Commercial"


Tennessee_Shallow_2010_total_count <- rbind(Tennessee_Shallow_2010_herb_count, Tennessee_Shallow_2010_comm_count)


Tennessee_Shallow_2011 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_2011.xls")


Tennessee_Shallow_2011_herb <- merge(Tennessee_Shallow_2011, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2011_herb_count <- count(Tennessee_Shallow_2011_herb, vars = "SPECIES_CD")
Tennessee_Shallow_2011_herb_count$Year <- ('2011')
Tennessee_Shallow_2011_herb_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2011_herb_count$Type <- "Herbivorous"

Tennessee_Shallow_2011_comm <- merge(Tennessee_Shallow_2011, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2011_comm_count <- count(Tennessee_Shallow_2011_comm, vars = "SPECIES_CD")
Tennessee_Shallow_2011_comm_count$Year <- ('2011')
Tennessee_Shallow_2011_comm_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2011_comm_count$Type <- "Commercial"


Tennessee_Shallow_2011_total_count <- rbind(Tennessee_Shallow_2011_herb_count, Tennessee_Shallow_2011_comm_count)





Tennessee_Shallow_2012 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_2012.xls")


Tennessee_Shallow_2012_herb <- merge(Tennessee_Shallow_2012, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2012_herb_count <- count(Tennessee_Shallow_2012_herb, vars = "SPECIES_CD")
Tennessee_Shallow_2012_herb_count$Year <- ('2012')
Tennessee_Shallow_2012_herb_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2012_herb_count$Type <- "Herbivorous"

Tennessee_Shallow_2012_comm <- merge(Tennessee_Shallow_2012, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2012_comm_count <- count(Tennessee_Shallow_2012_comm, vars = "SPECIES_CD")
Tennessee_Shallow_2012_comm_count$Year <- ('2012')
Tennessee_Shallow_2012_comm_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2012_comm_count$Type <- "Commercial"


Tennessee_Shallow_2012_total_count <- rbind(Tennessee_Shallow_2012_herb_count, Tennessee_Shallow_2012_comm_count)



Tennessee_Shallow_2014 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_2014.xls")


Tennessee_Shallow_2014_herb <- merge(Tennessee_Shallow_2014, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2014_herb_count <- count(Tennessee_Shallow_2014_herb, vars = "SPECIES_CD")
Tennessee_Shallow_2014_herb_count$Year <- ('2014')
Tennessee_Shallow_2014_herb_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2014_herb_count$Type <- "Herbivorous"

Tennessee_Shallow_2014_comm <- merge(Tennessee_Shallow_2014, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2014_comm_count <- count(Tennessee_Shallow_2014_comm, vars = "SPECIES_CD")
Tennessee_Shallow_2014_comm_count$Year <- ('2014')
Tennessee_Shallow_2014_comm_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2014_comm_count$Type <- "Commercial"


Tennessee_Shallow_2014_total_count <- rbind(Tennessee_Shallow_2014_herb_count, Tennessee_Shallow_2014_comm_count)




Tennessee_Shallow_2016 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_2016.xls")


Tennessee_Shallow_2016_herb <- merge(Tennessee_Shallow_2016, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2016_herb_count <- count(Tennessee_Shallow_2016_herb, vars = "SPECIES_CD")
Tennessee_Shallow_2016_herb_count$Year <- ('2016')
Tennessee_Shallow_2016_herb_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2016_herb_count$Type <- "Herbivorous"

Tennessee_Shallow_2016_comm <- merge(Tennessee_Shallow_2016, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2016_comm_count <- count(Tennessee_Shallow_2016_comm, vars = "SPECIES_CD")
Tennessee_Shallow_2016_comm_count$Year <- ('2016')
Tennessee_Shallow_2016_comm_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2016_comm_count$Type <- "Commercial"


Tennessee_Shallow_2016_total_count <- rbind(Tennessee_Shallow_2016_herb_count, Tennessee_Shallow_2016_comm_count)



Tennessee_Shallow_2018 <- import("MK/Tennessee_Shallow/data/Tennessee_Shallow_2018.xls")


Tennessee_Shallow_2018_herb <- merge(Tennessee_Shallow_2018, Herb, by = c("SPECIES_CD"))
Tennessee_Shallow_2018_herb_count <- count(Tennessee_Shallow_2018_herb, vars = "SPECIES_CD")
Tennessee_Shallow_2018_herb_count$Year <- ('2018')
Tennessee_Shallow_2018_herb_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2018_herb_count$Type <- "Herbivorous"

Tennessee_Shallow_2018_comm <- merge(Tennessee_Shallow_2018, Comm, by = c("SPECIES_CD"))
Tennessee_Shallow_2018_comm_count <- count(Tennessee_Shallow_2018_comm, vars = "SPECIES_CD")
Tennessee_Shallow_2018_comm_count$Year <- ('2018')
Tennessee_Shallow_2018_comm_count$sitename <- ('Tennessee Shallow')
Tennessee_Shallow_2018_comm_count$Type <- "Commercial"


Tennessee_Shallow_2018_total_count <- rbind(Tennessee_Shallow_2018_herb_count, Tennessee_Shallow_2018_comm_count)





Tennessee_Shallow_all <- rbind(Tennessee_Shallow_1999_total_count,Tennessee_Shallow_2000_total_count,Tennessee_Shallow_2001_total_count,Tennessee_Shallow_2002_total_count,Tennessee_Shallow_2003_total_count,Tennessee_Shallow_2005_total_count,Tennessee_Shallow_2006_total_count,Tennessee_Shallow_2007_total_count,Tennessee_Shallow_2008_total_count,Tennessee_Shallow_2009_total_count, Tennessee_Shallow_2010_total_count,Tennessee_Shallow_2011_total_count, Tennessee_Shallow_2012_total_count, Tennessee_Shallow_2014_total_count, Tennessee_Shallow_2016_total_count,Tennessee_Shallow_2018_total_count)


export(Tennessee_Shallow_all, "MK/Tennessee_Shallow/data/Tennessee_Shallow_count_herb_comm.csv")




West_Turtle_Shoal_1999 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_1999.xls")


West_Turtle_Shoal_1999_herb <- merge(West_Turtle_Shoal_1999, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_1999_herb_count <- count(West_Turtle_Shoal_1999_herb, vars = "SPECIES_CD")
West_Turtle_Shoal_1999_herb_count$Year <- ('1999')
West_Turtle_Shoal_1999_herb_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_1999_herb_count$Type <- "Herbivorous"

West_Turtle_Shoal_1999_comm <- merge(West_Turtle_Shoal_1999, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_1999_comm_count <- count(West_Turtle_Shoal_1999_comm, vars = "SPECIES_CD")
West_Turtle_Shoal_1999_comm_count$Year <- ('1999')
West_Turtle_Shoal_1999_comm_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_1999_comm_count$Type <- "Commercial"


West_Turtle_Shoal_1999_total_count <- rbind(West_Turtle_Shoal_1999_herb_count, West_Turtle_Shoal_1999_comm_count)




West_Turtle_Shoal_2000 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_2000.xls")


West_Turtle_Shoal_2000_herb <- merge(West_Turtle_Shoal_2000, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2000_herb_count <- count(West_Turtle_Shoal_2000_herb, vars = "SPECIES_CD")
West_Turtle_Shoal_2000_herb_count$Year <- ('2000')
West_Turtle_Shoal_2000_herb_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2000_herb_count$Type <- "Herbivorous"

West_Turtle_Shoal_2000_comm <- merge(West_Turtle_Shoal_2000, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2000_comm_count <- count(West_Turtle_Shoal_2000_comm, vars = "SPECIES_CD")
West_Turtle_Shoal_2000_comm_count$Year <- ('2000')
West_Turtle_Shoal_2000_comm_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2000_comm_count$Type <- "Commercial"


West_Turtle_Shoal_2000_total_count <- rbind(West_Turtle_Shoal_2000_herb_count, West_Turtle_Shoal_2000_comm_count)


West_Turtle_Shoal_2001 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_2001.xls")


West_Turtle_Shoal_2001_herb <- merge(West_Turtle_Shoal_2001, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2001_herb_count <- count(West_Turtle_Shoal_2001_herb, vars = "SPECIES_CD")
West_Turtle_Shoal_2001_herb_count$Year <- ('2001')
West_Turtle_Shoal_2001_herb_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2001_herb_count$Type <- "Herbivorous"

West_Turtle_Shoal_2001_comm <- merge(West_Turtle_Shoal_2001, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2001_comm_count <- count(West_Turtle_Shoal_2001_comm, vars = "SPECIES_CD")
West_Turtle_Shoal_2001_comm_count$Year <- ('2001')
West_Turtle_Shoal_2001_comm_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2001_comm_count$Type <- "Commercial"


West_Turtle_Shoal_2001_total_count <- rbind(West_Turtle_Shoal_2001_herb_count, West_Turtle_Shoal_2001_comm_count)


West_Turtle_Shoal_2002 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_2002.xls")


West_Turtle_Shoal_2002_herb <- merge(West_Turtle_Shoal_2002, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2002_herb_count <- count(West_Turtle_Shoal_2002_herb, vars = "SPECIES_CD")
West_Turtle_Shoal_2002_herb_count$Year <- ('2002')
West_Turtle_Shoal_2002_herb_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2002_herb_count$Type <- "Herbivorous"

West_Turtle_Shoal_2002_comm <- merge(West_Turtle_Shoal_2002, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2002_comm_count <- count(West_Turtle_Shoal_2002_comm, vars = "SPECIES_CD")
West_Turtle_Shoal_2002_comm_count$Year <- ('2002')
West_Turtle_Shoal_2002_comm_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2002_comm_count$Type <- "Commercial"


West_Turtle_Shoal_2002_total_count <- rbind(West_Turtle_Shoal_2002_herb_count, West_Turtle_Shoal_2002_comm_count)



West_Turtle_Shoal_2003 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_2003.xls")


West_Turtle_Shoal_2003_herb <- merge(West_Turtle_Shoal_2003, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2003_herb_count <- count(West_Turtle_Shoal_2003_herb, vars = "SPECIES_CD")
West_Turtle_Shoal_2003_herb_count$Year <- ('2003')
West_Turtle_Shoal_2003_herb_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2003_herb_count$Type <- "Herbivorous"

West_Turtle_Shoal_2003_comm <- merge(West_Turtle_Shoal_2003, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2003_comm_count <- count(West_Turtle_Shoal_2003_comm, vars = "SPECIES_CD")
West_Turtle_Shoal_2003_comm_count$Year <- ('2003')
West_Turtle_Shoal_2003_comm_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2003_comm_count$Type <- "Commercial"


West_Turtle_Shoal_2003_total_count <- rbind(West_Turtle_Shoal_2003_herb_count, West_Turtle_Shoal_2003_comm_count)




# West_Turtle_Shoal_2004 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_2004.xls")
# 
# 
# West_Turtle_Shoal_2004_herb <- merge(West_Turtle_Shoal_2004, Herb, by = c("SPECIES_CD"))
# West_Turtle_Shoal_2004_herb_count <- count(West_Turtle_Shoal_2004_herb, vars = "SPECIES_CD")
# West_Turtle_Shoal_2004_herb_count$Year <- ('2004')
# West_Turtle_Shoal_2004_herb_count$sitename <- ('West Turtle Shoal')
# West_Turtle_Shoal_2004_herb_count$Type <- "Herbivorous"
# 
# West_Turtle_Shoal_2004_comm <- merge(West_Turtle_Shoal_2004, Comm, by = c("SPECIES_CD"))
# West_Turtle_Shoal_2004_comm_count <- count(West_Turtle_Shoal_2004_comm, vars = "SPECIES_CD")
# West_Turtle_Shoal_2004_comm_count$Year <- ('2004')
# West_Turtle_Shoal_2004_comm_count$sitename <- ('West Turtle Shoal')
# West_Turtle_Shoal_2004_comm_count$Type <- "Commercial"
# 
# 
# West_Turtle_Shoal_2004_total_count <- rbind(West_Turtle_Shoal_2004_herb_count, West_Turtle_Shoal_2004_comm_count)
# 

West_Turtle_Shoal_2005 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_2005.xls")


West_Turtle_Shoal_2005_herb <- merge(West_Turtle_Shoal_2005, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2005_herb_count <- count(West_Turtle_Shoal_2005_herb, vars = "SPECIES_CD")
West_Turtle_Shoal_2005_herb_count$Year <- ('2005')
West_Turtle_Shoal_2005_herb_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2005_herb_count$Type <- "Herbivorous"

West_Turtle_Shoal_2005_comm <- merge(West_Turtle_Shoal_2005, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2005_comm_count <- count(West_Turtle_Shoal_2005_comm, vars = "SPECIES_CD")
West_Turtle_Shoal_2005_comm_count$Year <- ('2005')
West_Turtle_Shoal_2005_comm_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2005_comm_count$Type <- "Commercial"


West_Turtle_Shoal_2005_total_count <- rbind(West_Turtle_Shoal_2005_herb_count, West_Turtle_Shoal_2005_comm_count)




West_Turtle_Shoal_2006 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_2006.xls")


West_Turtle_Shoal_2006_herb <- merge(West_Turtle_Shoal_2006, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2006_herb_count <- count(West_Turtle_Shoal_2006_herb, vars = "SPECIES_CD")
West_Turtle_Shoal_2006_herb_count$Year <- ('2006')
West_Turtle_Shoal_2006_herb_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2006_herb_count$Type <- "Herbivorous"

West_Turtle_Shoal_2006_comm <- merge(West_Turtle_Shoal_2006, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2006_comm_count <- count(West_Turtle_Shoal_2006_comm, vars = "SPECIES_CD")
West_Turtle_Shoal_2006_comm_count$Year <- ('2006')
West_Turtle_Shoal_2006_comm_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2006_comm_count$Type <- "Commercial"


West_Turtle_Shoal_2006_total_count <- rbind(West_Turtle_Shoal_2006_herb_count, West_Turtle_Shoal_2006_comm_count)



West_Turtle_Shoal_2007 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_2007.xls")


West_Turtle_Shoal_2007_herb <- merge(West_Turtle_Shoal_2007, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2007_herb_count <- count(West_Turtle_Shoal_2007_herb, vars = "SPECIES_CD")
West_Turtle_Shoal_2007_herb_count$Year <- ('2007')
West_Turtle_Shoal_2007_herb_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2007_herb_count$Type <- "Herbivorous"

West_Turtle_Shoal_2007_comm <- merge(West_Turtle_Shoal_2007, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2007_comm_count <- count(West_Turtle_Shoal_2007_comm, vars = "SPECIES_CD")
West_Turtle_Shoal_2007_comm_count$Year <- ('2007')
West_Turtle_Shoal_2007_comm_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2007_comm_count$Type <- "Commercial"


West_Turtle_Shoal_2007_total_count <- rbind(West_Turtle_Shoal_2007_herb_count, West_Turtle_Shoal_2007_comm_count)




West_Turtle_Shoal_2008 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_2008.xls")


West_Turtle_Shoal_2008_herb <- merge(West_Turtle_Shoal_2008, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2008_herb_count <- count(West_Turtle_Shoal_2008_herb, vars = "SPECIES_CD")
West_Turtle_Shoal_2008_herb_count$Year <- ('2008')
West_Turtle_Shoal_2008_herb_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2008_herb_count$Type <- "Herbivorous"

West_Turtle_Shoal_2008_comm <- merge(West_Turtle_Shoal_2008, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2008_comm_count <- count(West_Turtle_Shoal_2008_comm, vars = "SPECIES_CD")
West_Turtle_Shoal_2008_comm_count$Year <- ('2008')
West_Turtle_Shoal_2008_comm_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2008_comm_count$Type <- "Commercial"


West_Turtle_Shoal_2008_total_count <- rbind(West_Turtle_Shoal_2008_herb_count, West_Turtle_Shoal_2008_comm_count)



West_Turtle_Shoal_2009 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_2009.xls")


West_Turtle_Shoal_2009_herb <- merge(West_Turtle_Shoal_2009, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2009_herb_count <- count(West_Turtle_Shoal_2009_herb, vars = "SPECIES_CD")
West_Turtle_Shoal_2009_herb_count$Year <- ('2009')
West_Turtle_Shoal_2009_herb_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2009_herb_count$Type <- "Herbivorous"

West_Turtle_Shoal_2009_comm <- merge(West_Turtle_Shoal_2009, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2009_comm_count <- count(West_Turtle_Shoal_2009_comm, vars = "SPECIES_CD")
West_Turtle_Shoal_2009_comm_count$Year <- ('2009')
West_Turtle_Shoal_2009_comm_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2009_comm_count$Type <- "Commercial"


West_Turtle_Shoal_2009_total_count <- rbind(West_Turtle_Shoal_2009_herb_count, West_Turtle_Shoal_2009_comm_count)





West_Turtle_Shoal_2010 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_2010.xls")


West_Turtle_Shoal_2010_herb <- merge(West_Turtle_Shoal_2010, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2010_herb_count <- count(West_Turtle_Shoal_2010_herb, vars = "SPECIES_CD")
West_Turtle_Shoal_2010_herb_count$Year <- ('2010')
West_Turtle_Shoal_2010_herb_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2010_herb_count$Type <- "Herbivorous"

West_Turtle_Shoal_2010_comm <- merge(West_Turtle_Shoal_2010, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2010_comm_count <- count(West_Turtle_Shoal_2010_comm, vars = "SPECIES_CD")
West_Turtle_Shoal_2010_comm_count$Year <- ('2010')
West_Turtle_Shoal_2010_comm_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2010_comm_count$Type <- "Commercial"


West_Turtle_Shoal_2010_total_count <- rbind(West_Turtle_Shoal_2010_herb_count, West_Turtle_Shoal_2010_comm_count)


West_Turtle_Shoal_2011 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_2011.xls")


West_Turtle_Shoal_2011_herb <- merge(West_Turtle_Shoal_2011, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2011_herb_count <- count(West_Turtle_Shoal_2011_herb, vars = "SPECIES_CD")
West_Turtle_Shoal_2011_herb_count$Year <- ('2011')
West_Turtle_Shoal_2011_herb_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2011_herb_count$Type <- "Herbivorous"

West_Turtle_Shoal_2011_comm <- merge(West_Turtle_Shoal_2011, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2011_comm_count <- count(West_Turtle_Shoal_2011_comm, vars = "SPECIES_CD")
West_Turtle_Shoal_2011_comm_count$Year <- ('2011')
West_Turtle_Shoal_2011_comm_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2011_comm_count$Type <- "Commercial"


West_Turtle_Shoal_2011_total_count <- rbind(West_Turtle_Shoal_2011_herb_count, West_Turtle_Shoal_2011_comm_count)





West_Turtle_Shoal_2012 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_2012.xls")


West_Turtle_Shoal_2012_herb <- merge(West_Turtle_Shoal_2012, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2012_herb_count <- count(West_Turtle_Shoal_2012_herb, vars = "SPECIES_CD")
West_Turtle_Shoal_2012_herb_count$Year <- ('2012')
West_Turtle_Shoal_2012_herb_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2012_herb_count$Type <- "Herbivorous"

West_Turtle_Shoal_2012_comm <- merge(West_Turtle_Shoal_2012, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2012_comm_count <- count(West_Turtle_Shoal_2012_comm, vars = "SPECIES_CD")
West_Turtle_Shoal_2012_comm_count$Year <- ('2012')
West_Turtle_Shoal_2012_comm_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2012_comm_count$Type <- "Commercial"


West_Turtle_Shoal_2012_total_count <- rbind(West_Turtle_Shoal_2012_herb_count, West_Turtle_Shoal_2012_comm_count)



West_Turtle_Shoal_2014 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_2014.xls")


West_Turtle_Shoal_2014_herb <- merge(West_Turtle_Shoal_2014, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2014_herb_count <- count(West_Turtle_Shoal_2014_herb, vars = "SPECIES_CD")
West_Turtle_Shoal_2014_herb_count$Year <- ('2014')
West_Turtle_Shoal_2014_herb_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2014_herb_count$Type <- "Herbivorous"

West_Turtle_Shoal_2014_comm <- merge(West_Turtle_Shoal_2014, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2014_comm_count <- count(West_Turtle_Shoal_2014_comm, vars = "SPECIES_CD")
West_Turtle_Shoal_2014_comm_count$Year <- ('2014')
West_Turtle_Shoal_2014_comm_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2014_comm_count$Type <- "Commercial"


West_Turtle_Shoal_2014_total_count <- rbind(West_Turtle_Shoal_2014_herb_count, West_Turtle_Shoal_2014_comm_count)




West_Turtle_Shoal_2016 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_2016.xls")


West_Turtle_Shoal_2016_herb <- merge(West_Turtle_Shoal_2016, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2016_herb_count <- count(West_Turtle_Shoal_2016_herb, vars = "SPECIES_CD")
West_Turtle_Shoal_2016_herb_count$Year <- ('2016')
West_Turtle_Shoal_2016_herb_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2016_herb_count$Type <- "Herbivorous"

West_Turtle_Shoal_2016_comm <- merge(West_Turtle_Shoal_2016, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2016_comm_count <- count(West_Turtle_Shoal_2016_comm, vars = "SPECIES_CD")
West_Turtle_Shoal_2016_comm_count$Year <- ('2016')
West_Turtle_Shoal_2016_comm_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2016_comm_count$Type <- "Commercial"


West_Turtle_Shoal_2016_total_count <- rbind(West_Turtle_Shoal_2016_herb_count, West_Turtle_Shoal_2016_comm_count)



West_Turtle_Shoal_2018 <- import("MK/West_Turtle_Shoal/data/West_Turtle_Shoal_2018.xls")


West_Turtle_Shoal_2018_herb <- merge(West_Turtle_Shoal_2018, Herb, by = c("SPECIES_CD"))
West_Turtle_Shoal_2018_herb_count <- count(West_Turtle_Shoal_2018_herb, vars = "SPECIES_CD")
West_Turtle_Shoal_2018_herb_count$Year <- ('2018')
West_Turtle_Shoal_2018_herb_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2018_herb_count$Type <- "Herbivorous"

West_Turtle_Shoal_2018_comm <- merge(West_Turtle_Shoal_2018, Comm, by = c("SPECIES_CD"))
West_Turtle_Shoal_2018_comm_count <- count(West_Turtle_Shoal_2018_comm, vars = "SPECIES_CD")
West_Turtle_Shoal_2018_comm_count$Year <- ('2018')
West_Turtle_Shoal_2018_comm_count$sitename <- ('West Turtle Shoal')
West_Turtle_Shoal_2018_comm_count$Type <- "Commercial"


West_Turtle_Shoal_2018_total_count <- rbind(West_Turtle_Shoal_2018_herb_count, West_Turtle_Shoal_2018_comm_count)





West_Turtle_Shoal_all <- rbind(West_Turtle_Shoal_1999_total_count,West_Turtle_Shoal_2000_total_count,West_Turtle_Shoal_2001_total_count,West_Turtle_Shoal_2002_total_count,West_Turtle_Shoal_2003_total_count,West_Turtle_Shoal_2005_total_count,West_Turtle_Shoal_2006_total_count,West_Turtle_Shoal_2007_total_count,West_Turtle_Shoal_2008_total_count,West_Turtle_Shoal_2009_total_count, West_Turtle_Shoal_2010_total_count,West_Turtle_Shoal_2011_total_count, West_Turtle_Shoal_2012_total_count, West_Turtle_Shoal_2014_total_count, West_Turtle_Shoal_2016_total_count,West_Turtle_Shoal_2018_total_count)


export(West_Turtle_Shoal_all, "MK/West_Turtle_Shoal/data/West_Turtle_Shoal_count_herb_comm.csv")


#### Combine all MK


MK_reef_count_combined <- rbind(Alligator_Deep_all,Alligator_Shallow_all,Dustan_Rocks_all,Long_Key_all,Rawa_Reef_all,Sombrero_Deep_all,Sombrero_Shallow_all,Tennessee_Deep_all,Tennessee_Shallow_all,West_Turtle_Shoal_all)
MK_reef_count_combined$REGION <- ("MK")
export(MK_reef_count_combined, "MK/MK_fish_count.csv")





### Upper Keys 



Admiral_1999 <- import("UK/Admiral/data/Admiral_1999.xls")


Admiral_1999_herb <- merge(Admiral_1999, Herb, by = c("SPECIES_CD"))
Admiral_1999_herb_count <- count(Admiral_1999_herb, vars = "SPECIES_CD")
Admiral_1999_herb_count$Year <- ('1999')
Admiral_1999_herb_count$sitename <- ('Admiral Reef')
Admiral_1999_herb_count$Type <- "Herbivorous"

Admiral_1999_comm <- merge(Admiral_1999, Comm, by = c("SPECIES_CD"))
Admiral_1999_comm_count <- count(Admiral_1999_comm, vars = "SPECIES_CD")
Admiral_1999_comm_count$Year <- ('1999')
Admiral_1999_comm_count$sitename <- ('Admiral Reef')
Admiral_1999_comm_count$Type <- "Commercial"


Admiral_1999_total_count <- rbind(Admiral_1999_herb_count, Admiral_1999_comm_count)




Admiral_2000 <- import("UK/Admiral/data/Admiral_2000.xls")


Admiral_2000_herb <- merge(Admiral_2000, Herb, by = c("SPECIES_CD"))
Admiral_2000_herb_count <- count(Admiral_2000_herb, vars = "SPECIES_CD")
Admiral_2000_herb_count$Year <- ('2000')
Admiral_2000_herb_count$sitename <- ('Admiral Reef')
Admiral_2000_herb_count$Type <- "Herbivorous"

Admiral_2000_comm <- merge(Admiral_2000, Comm, by = c("SPECIES_CD"))
Admiral_2000_comm_count <- count(Admiral_2000_comm, vars = "SPECIES_CD")
Admiral_2000_comm_count$Year <- ('2000')
Admiral_2000_comm_count$sitename <- ('Admiral Reef')
Admiral_2000_comm_count$Type <- "Commercial"


Admiral_2000_total_count <- rbind(Admiral_2000_herb_count, Admiral_2000_comm_count)


Admiral_2001 <- import("UK/Admiral/data/Admiral_2001.xls")


Admiral_2001_herb <- merge(Admiral_2001, Herb, by = c("SPECIES_CD"))
Admiral_2001_herb_count <- count(Admiral_2001_herb, vars = "SPECIES_CD")
Admiral_2001_herb_count$Year <- ('2001')
Admiral_2001_herb_count$sitename <- ('Admiral Reef')
Admiral_2001_herb_count$Type <- "Herbivorous"

Admiral_2001_comm <- merge(Admiral_2001, Comm, by = c("SPECIES_CD"))
Admiral_2001_comm_count <- count(Admiral_2001_comm, vars = "SPECIES_CD")
Admiral_2001_comm_count$Year <- ('2001')
Admiral_2001_comm_count$sitename <- ('Admiral Reef')
Admiral_2001_comm_count$Type <- "Commercial"


Admiral_2001_total_count <- rbind(Admiral_2001_herb_count, Admiral_2001_comm_count)


Admiral_2002 <- import("UK/Admiral/data/Admiral_2002.xls")


Admiral_2002_herb <- merge(Admiral_2002, Herb, by = c("SPECIES_CD"))
Admiral_2002_herb_count <- count(Admiral_2002_herb, vars = "SPECIES_CD")
Admiral_2002_herb_count$Year <- ('2002')
Admiral_2002_herb_count$sitename <- ('Admiral Reef')
Admiral_2002_herb_count$Type <- "Herbivorous"

Admiral_2002_comm <- merge(Admiral_2002, Comm, by = c("SPECIES_CD"))
Admiral_2002_comm_count <- count(Admiral_2002_comm, vars = "SPECIES_CD")
Admiral_2002_comm_count$Year <- ('2002')
Admiral_2002_comm_count$sitename <- ('Admiral Reef')
Admiral_2002_comm_count$Type <- "Commercial"


Admiral_2002_total_count <- rbind(Admiral_2002_herb_count, Admiral_2002_comm_count)



Admiral_2003 <- import("UK/Admiral/data/Admiral_2003.xls")


Admiral_2003_herb <- merge(Admiral_2003, Herb, by = c("SPECIES_CD"))
Admiral_2003_herb_count <- count(Admiral_2003_herb, vars = "SPECIES_CD")
Admiral_2003_herb_count$Year <- ('2003')
Admiral_2003_herb_count$sitename <- ('Admiral Reef')
Admiral_2003_herb_count$Type <- "Herbivorous"

Admiral_2003_comm <- merge(Admiral_2003, Comm, by = c("SPECIES_CD"))
Admiral_2003_comm_count <- count(Admiral_2003_comm, vars = "SPECIES_CD")
Admiral_2003_comm_count$Year <- ('2003')
Admiral_2003_comm_count$sitename <- ('Admiral Reef')
Admiral_2003_comm_count$Type <- "Commercial"


Admiral_2003_total_count <- rbind(Admiral_2003_herb_count, Admiral_2003_comm_count)




Admiral_2004 <- import("UK/Admiral/data/Admiral_2004.xls")


Admiral_2004_herb <- merge(Admiral_2004, Herb, by = c("SPECIES_CD"))
Admiral_2004_herb_count <- count(Admiral_2004_herb, vars = "SPECIES_CD")
Admiral_2004_herb_count$Year <- ('2004')
Admiral_2004_herb_count$sitename <- ('Admiral Reef')
Admiral_2004_herb_count$Type <- "Herbivorous"

Admiral_2004_comm <- merge(Admiral_2004, Comm, by = c("SPECIES_CD"))
Admiral_2004_comm_count <- count(Admiral_2004_comm, vars = "SPECIES_CD")
Admiral_2004_comm_count$Year <- ('2004')
Admiral_2004_comm_count$sitename <- ('Admiral Reef')
Admiral_2004_comm_count$Type <- "Commercial"


Admiral_2004_total_count <- rbind(Admiral_2004_herb_count, Admiral_2004_comm_count)


Admiral_2005 <- import("UK/Admiral/data/Admiral_2005.xls")


Admiral_2005_herb <- merge(Admiral_2005, Herb, by = c("SPECIES_CD"))
Admiral_2005_herb_count <- count(Admiral_2005_herb, vars = "SPECIES_CD")
Admiral_2005_herb_count$Year <- ('2005')
Admiral_2005_herb_count$sitename <- ('Admiral Reef')
Admiral_2005_herb_count$Type <- "Herbivorous"

Admiral_2005_comm <- merge(Admiral_2005, Comm, by = c("SPECIES_CD"))
Admiral_2005_comm_count <- count(Admiral_2005_comm, vars = "SPECIES_CD")
Admiral_2005_comm_count$Year <- ('2005')
Admiral_2005_comm_count$sitename <- ('Admiral Reef')
Admiral_2005_comm_count$Type <- "Commercial"


Admiral_2005_total_count <- rbind(Admiral_2005_herb_count, Admiral_2005_comm_count)




Admiral_2006 <- import("UK/Admiral/data/Admiral_2006.xls")


Admiral_2006_herb <- merge(Admiral_2006, Herb, by = c("SPECIES_CD"))
Admiral_2006_herb_count <- count(Admiral_2006_herb, vars = "SPECIES_CD")
Admiral_2006_herb_count$Year <- ('2006')
Admiral_2006_herb_count$sitename <- ('Admiral Reef')
Admiral_2006_herb_count$Type <- "Herbivorous"

Admiral_2006_comm <- merge(Admiral_2006, Comm, by = c("SPECIES_CD"))
Admiral_2006_comm_count <- count(Admiral_2006_comm, vars = "SPECIES_CD")
Admiral_2006_comm_count$Year <- ('2006')
Admiral_2006_comm_count$sitename <- ('Admiral Reef')
Admiral_2006_comm_count$Type <- "Commercial"


Admiral_2006_total_count <- rbind(Admiral_2006_herb_count, Admiral_2006_comm_count)



Admiral_2007 <- import("UK/Admiral/data/Admiral_2007.xls")


Admiral_2007_herb <- merge(Admiral_2007, Herb, by = c("SPECIES_CD"))
Admiral_2007_herb_count <- count(Admiral_2007_herb, vars = "SPECIES_CD")
Admiral_2007_herb_count$Year <- ('2007')
Admiral_2007_herb_count$sitename <- ('Admiral Reef')
Admiral_2007_herb_count$Type <- "Herbivorous"

Admiral_2007_comm <- merge(Admiral_2007, Comm, by = c("SPECIES_CD"))
Admiral_2007_comm_count <- count(Admiral_2007_comm, vars = "SPECIES_CD")
Admiral_2007_comm_count$Year <- ('2007')
Admiral_2007_comm_count$sitename <- ('Admiral Reef')
Admiral_2007_comm_count$Type <- "Commercial"


Admiral_2007_total_count <- rbind(Admiral_2007_herb_count, Admiral_2007_comm_count)




Admiral_2008 <- import("UK/Admiral/data/Admiral_2008.xls")


Admiral_2008_herb <- merge(Admiral_2008, Herb, by = c("SPECIES_CD"))
Admiral_2008_herb_count <- count(Admiral_2008_herb, vars = "SPECIES_CD")
Admiral_2008_herb_count$Year <- ('2008')
Admiral_2008_herb_count$sitename <- ('Admiral Reef')
Admiral_2008_herb_count$Type <- "Herbivorous"

Admiral_2008_comm <- merge(Admiral_2008, Comm, by = c("SPECIES_CD"))
Admiral_2008_comm_count <- count(Admiral_2008_comm, vars = "SPECIES_CD")
Admiral_2008_comm_count$Year <- ('2008')
Admiral_2008_comm_count$sitename <- ('Admiral Reef')
Admiral_2008_comm_count$Type <- "Commercial"


Admiral_2008_total_count <- rbind(Admiral_2008_herb_count, Admiral_2008_comm_count)



Admiral_2009 <- import("UK/Admiral/data/Admiral_2009.xls")


Admiral_2009_herb <- merge(Admiral_2009, Herb, by = c("SPECIES_CD"))
Admiral_2009_herb_count <- count(Admiral_2009_herb, vars = "SPECIES_CD")
Admiral_2009_herb_count$Year <- ('2009')
Admiral_2009_herb_count$sitename <- ('Admiral Reef')
Admiral_2009_herb_count$Type <- "Herbivorous"

Admiral_2009_comm <- merge(Admiral_2009, Comm, by = c("SPECIES_CD"))
Admiral_2009_comm_count <- count(Admiral_2009_comm, vars = "SPECIES_CD")
Admiral_2009_comm_count$Year <- ('2009')
Admiral_2009_comm_count$sitename <- ('Admiral Reef')
Admiral_2009_comm_count$Type <- "Commercial"


Admiral_2009_total_count <- rbind(Admiral_2009_herb_count, Admiral_2009_comm_count)





Admiral_2010 <- import("UK/Admiral/data/Admiral_2010.xls")


Admiral_2010_herb <- merge(Admiral_2010, Herb, by = c("SPECIES_CD"))
Admiral_2010_herb_count <- count(Admiral_2010_herb, vars = "SPECIES_CD")
Admiral_2010_herb_count$Year <- ('2010')
Admiral_2010_herb_count$sitename <- ('Admiral Reef')
Admiral_2010_herb_count$Type <- "Herbivorous"

Admiral_2010_comm <- merge(Admiral_2010, Comm, by = c("SPECIES_CD"))
Admiral_2010_comm_count <- count(Admiral_2010_comm, vars = "SPECIES_CD")
Admiral_2010_comm_count$Year <- ('2010')
Admiral_2010_comm_count$sitename <- ('Admiral Reef')
Admiral_2010_comm_count$Type <- "Commercial"


Admiral_2010_total_count <- rbind(Admiral_2010_herb_count, Admiral_2010_comm_count)


Admiral_2011 <- import("UK/Admiral/data/Admiral_2011.xls")


Admiral_2011_herb <- merge(Admiral_2011, Herb, by = c("SPECIES_CD"))
Admiral_2011_herb_count <- count(Admiral_2011_herb, vars = "SPECIES_CD")
Admiral_2011_herb_count$Year <- ('2011')
Admiral_2011_herb_count$sitename <- ('Admiral Reef')
Admiral_2011_herb_count$Type <- "Herbivorous"

Admiral_2011_comm <- merge(Admiral_2011, Comm, by = c("SPECIES_CD"))
Admiral_2011_comm_count <- count(Admiral_2011_comm, vars = "SPECIES_CD")
Admiral_2011_comm_count$Year <- ('2011')
Admiral_2011_comm_count$sitename <- ('Admiral Reef')
Admiral_2011_comm_count$Type <- "Commercial"


Admiral_2011_total_count <- rbind(Admiral_2011_herb_count, Admiral_2011_comm_count)





Admiral_2012 <- import("UK/Admiral/data/Admiral_2012.xls")


Admiral_2012_herb <- merge(Admiral_2012, Herb, by = c("SPECIES_CD"))
Admiral_2012_herb_count <- count(Admiral_2012_herb, vars = "SPECIES_CD")
Admiral_2012_herb_count$Year <- ('2012')
Admiral_2012_herb_count$sitename <- ('Admiral Reef')
Admiral_2012_herb_count$Type <- "Herbivorous"

Admiral_2012_comm <- merge(Admiral_2012, Comm, by = c("SPECIES_CD"))
Admiral_2012_comm_count <- count(Admiral_2012_comm, vars = "SPECIES_CD")
Admiral_2012_comm_count$Year <- ('2012')
Admiral_2012_comm_count$sitename <- ('Admiral Reef')
Admiral_2012_comm_count$Type <- "Commercial"


Admiral_2012_total_count <- rbind(Admiral_2012_herb_count, Admiral_2012_comm_count)



Admiral_2014 <- import("UK/Admiral/data/Admiral_2014.xls")


Admiral_2014_herb <- merge(Admiral_2014, Herb, by = c("SPECIES_CD"))
Admiral_2014_herb_count <- count(Admiral_2014_herb, vars = "SPECIES_CD")
Admiral_2014_herb_count$Year <- ('2014')
Admiral_2014_herb_count$sitename <- ('Admiral Reef')
Admiral_2014_herb_count$Type <- "Herbivorous"

Admiral_2014_comm <- merge(Admiral_2014, Comm, by = c("SPECIES_CD"))
Admiral_2014_comm_count <- count(Admiral_2014_comm, vars = "SPECIES_CD")
Admiral_2014_comm_count$Year <- ('2014')
Admiral_2014_comm_count$sitename <- ('Admiral Reef')
Admiral_2014_comm_count$Type <- "Commercial"


Admiral_2014_total_count <- rbind(Admiral_2014_herb_count, Admiral_2014_comm_count)




Admiral_2016 <- import("UK/Admiral/data/Admiral_2016.xls")


Admiral_2016_herb <- merge(Admiral_2016, Herb, by = c("SPECIES_CD"))
Admiral_2016_herb_count <- count(Admiral_2016_herb, vars = "SPECIES_CD")
Admiral_2016_herb_count$Year <- ('2016')
Admiral_2016_herb_count$sitename <- ('Admiral Reef')
Admiral_2016_herb_count$Type <- "Herbivorous"

Admiral_2016_comm <- merge(Admiral_2016, Comm, by = c("SPECIES_CD"))
Admiral_2016_comm_count <- count(Admiral_2016_comm, vars = "SPECIES_CD")
Admiral_2016_comm_count$Year <- ('2016')
Admiral_2016_comm_count$sitename <- ('Admiral Reef')
Admiral_2016_comm_count$Type <- "Commercial"


Admiral_2016_total_count <- rbind(Admiral_2016_herb_count, Admiral_2016_comm_count)



Admiral_2018 <- import("UK/Admiral/data/Admiral_2018.xls")


Admiral_2018_herb <- merge(Admiral_2018, Herb, by = c("SPECIES_CD"))
Admiral_2018_herb_count <- count(Admiral_2018_herb, vars = "SPECIES_CD")
Admiral_2018_herb_count$Year <- ('2018')
Admiral_2018_herb_count$sitename <- ('Admiral Reef')
Admiral_2018_herb_count$Type <- "Herbivorous"

Admiral_2018_comm <- merge(Admiral_2018, Comm, by = c("SPECIES_CD"))
Admiral_2018_comm_count <- count(Admiral_2018_comm, vars = "SPECIES_CD")
Admiral_2018_comm_count$Year <- ('2018')
Admiral_2018_comm_count$sitename <- ('Admiral Reef')
Admiral_2018_comm_count$Type <- "Commercial"


Admiral_2018_total_count <- rbind(Admiral_2018_herb_count, Admiral_2018_comm_count)





Admiral_all <- rbind(Admiral_1999_total_count,Admiral_2000_total_count,Admiral_2001_total_count,Admiral_2002_total_count,Admiral_2003_total_count,Admiral_2004_total_count,Admiral_2005_total_count,Admiral_2006_total_count,Admiral_2007_total_count,Admiral_2008_total_count,Admiral_2009_total_count, Admiral_2010_total_count,Admiral_2011_total_count, Admiral_2012_total_count, Admiral_2014_total_count, Admiral_2016_total_count,Admiral_2018_total_count)


export(Admiral_all, "UK/Admiral/data/Admiral_count_herb_comm.csv")





Burr_Fish_1999 <- import("UK/Burr_Fish/data/Burr_Fish_1999.xls")


Burr_Fish_1999_herb <- merge(Burr_Fish_1999, Herb, by = c("SPECIES_CD"))
Burr_Fish_1999_herb_count <- count(Burr_Fish_1999_herb, vars = "SPECIES_CD")
Burr_Fish_1999_herb_count$Year <- ('1999')
Burr_Fish_1999_herb_count$sitename <- ('Burr Fish')
Burr_Fish_1999_herb_count$Type <- "Herbivorous"

Burr_Fish_1999_comm <- merge(Burr_Fish_1999, Comm, by = c("SPECIES_CD"))
Burr_Fish_1999_comm_count <- count(Burr_Fish_1999_comm, vars = "SPECIES_CD")
Burr_Fish_1999_comm_count$Year <- ('1999')
Burr_Fish_1999_comm_count$sitename <- ('Burr Fish')
Burr_Fish_1999_comm_count$Type <- "Commercial"


Burr_Fish_1999_total_count <- rbind(Burr_Fish_1999_herb_count, Burr_Fish_1999_comm_count)




Burr_Fish_2000 <- import("UK/Burr_Fish/data/Burr_Fish_2000.xls")


Burr_Fish_2000_herb <- merge(Burr_Fish_2000, Herb, by = c("SPECIES_CD"))
Burr_Fish_2000_herb_count <- count(Burr_Fish_2000_herb, vars = "SPECIES_CD")
Burr_Fish_2000_herb_count$Year <- ('2000')
Burr_Fish_2000_herb_count$sitename <- ('Burr Fish')
Burr_Fish_2000_herb_count$Type <- "Herbivorous"

Burr_Fish_2000_comm <- merge(Burr_Fish_2000, Comm, by = c("SPECIES_CD"))
Burr_Fish_2000_comm_count <- count(Burr_Fish_2000_comm, vars = "SPECIES_CD")
Burr_Fish_2000_comm_count$Year <- ('2000')
Burr_Fish_2000_comm_count$sitename <- ('Burr Fish')
Burr_Fish_2000_comm_count$Type <- "Commercial"


Burr_Fish_2000_total_count <- rbind(Burr_Fish_2000_herb_count, Burr_Fish_2000_comm_count)


Burr_Fish_2001 <- import("UK/Burr_Fish/data/Burr_Fish_2001.xls")


Burr_Fish_2001_herb <- merge(Burr_Fish_2001, Herb, by = c("SPECIES_CD"))
Burr_Fish_2001_herb_count <- count(Burr_Fish_2001_herb, vars = "SPECIES_CD")
Burr_Fish_2001_herb_count$Year <- ('2001')
Burr_Fish_2001_herb_count$sitename <- ('Burr Fish')
Burr_Fish_2001_herb_count$Type <- "Herbivorous"

Burr_Fish_2001_comm <- merge(Burr_Fish_2001, Comm, by = c("SPECIES_CD"))
Burr_Fish_2001_comm_count <- count(Burr_Fish_2001_comm, vars = "SPECIES_CD")
Burr_Fish_2001_comm_count$Year <- ('2001')
Burr_Fish_2001_comm_count$sitename <- ('Burr Fish')
Burr_Fish_2001_comm_count$Type <- "Commercial"


Burr_Fish_2001_total_count <- rbind(Burr_Fish_2001_herb_count, Burr_Fish_2001_comm_count)


Burr_Fish_2002 <- import("UK/Burr_Fish/data/Burr_Fish_2002.xls")


Burr_Fish_2002_herb <- merge(Burr_Fish_2002, Herb, by = c("SPECIES_CD"))
Burr_Fish_2002_herb_count <- count(Burr_Fish_2002_herb, vars = "SPECIES_CD")
Burr_Fish_2002_herb_count$Year <- ('2002')
Burr_Fish_2002_herb_count$sitename <- ('Burr Fish')
Burr_Fish_2002_herb_count$Type <- "Herbivorous"

Burr_Fish_2002_comm <- merge(Burr_Fish_2002, Comm, by = c("SPECIES_CD"))
Burr_Fish_2002_comm_count <- count(Burr_Fish_2002_comm, vars = "SPECIES_CD")
Burr_Fish_2002_comm_count$Year <- ('2002')
Burr_Fish_2002_comm_count$sitename <- ('Burr Fish')
Burr_Fish_2002_comm_count$Type <- "Commercial"


Burr_Fish_2002_total_count <- rbind(Burr_Fish_2002_herb_count, Burr_Fish_2002_comm_count)



Burr_Fish_2003 <- import("UK/Burr_Fish/data/Burr_Fish_2003.xls")


Burr_Fish_2003_herb <- merge(Burr_Fish_2003, Herb, by = c("SPECIES_CD"))
Burr_Fish_2003_herb_count <- count(Burr_Fish_2003_herb, vars = "SPECIES_CD")
Burr_Fish_2003_herb_count$Year <- ('2003')
Burr_Fish_2003_herb_count$sitename <- ('Burr Fish')
Burr_Fish_2003_herb_count$Type <- "Herbivorous"

Burr_Fish_2003_comm <- merge(Burr_Fish_2003, Comm, by = c("SPECIES_CD"))
Burr_Fish_2003_comm_count <- count(Burr_Fish_2003_comm, vars = "SPECIES_CD")
Burr_Fish_2003_comm_count$Year <- ('2003')
Burr_Fish_2003_comm_count$sitename <- ('Burr Fish')
Burr_Fish_2003_comm_count$Type <- "Commercial"


Burr_Fish_2003_total_count <- rbind(Burr_Fish_2003_herb_count, Burr_Fish_2003_comm_count)




Burr_Fish_2004 <- import("UK/Burr_Fish/data/Burr_Fish_2004.xls")


Burr_Fish_2004_herb <- merge(Burr_Fish_2004, Herb, by = c("SPECIES_CD"))
Burr_Fish_2004_herb_count <- count(Burr_Fish_2004_herb, vars = "SPECIES_CD")
Burr_Fish_2004_herb_count$Year <- ('2004')
Burr_Fish_2004_herb_count$sitename <- ('Burr Fish')
Burr_Fish_2004_herb_count$Type <- "Herbivorous"

Burr_Fish_2004_comm <- merge(Burr_Fish_2004, Comm, by = c("SPECIES_CD"))
Burr_Fish_2004_comm_count <- count(Burr_Fish_2004_comm, vars = "SPECIES_CD")
Burr_Fish_2004_comm_count$Year <- ('2004')
Burr_Fish_2004_comm_count$sitename <- ('Burr Fish')
Burr_Fish_2004_comm_count$Type <- "Commercial"


Burr_Fish_2004_total_count <- rbind(Burr_Fish_2004_herb_count, Burr_Fish_2004_comm_count)


Burr_Fish_2005 <- import("UK/Burr_Fish/data/Burr_Fish_2005.xls")


Burr_Fish_2005_herb <- merge(Burr_Fish_2005, Herb, by = c("SPECIES_CD"))
Burr_Fish_2005_herb_count <- count(Burr_Fish_2005_herb, vars = "SPECIES_CD")
Burr_Fish_2005_herb_count$Year <- ('2005')
Burr_Fish_2005_herb_count$sitename <- ('Burr Fish')
Burr_Fish_2005_herb_count$Type <- "Herbivorous"

Burr_Fish_2005_comm <- merge(Burr_Fish_2005, Comm, by = c("SPECIES_CD"))
Burr_Fish_2005_comm_count <- count(Burr_Fish_2005_comm, vars = "SPECIES_CD")
Burr_Fish_2005_comm_count$Year <- ('2005')
Burr_Fish_2005_comm_count$sitename <- ('Burr Fish')
Burr_Fish_2005_comm_count$Type <- "Commercial"


Burr_Fish_2005_total_count <- rbind(Burr_Fish_2005_herb_count, Burr_Fish_2005_comm_count)




Burr_Fish_2006 <- import("UK/Burr_Fish/data/Burr_Fish_2006.xls")


Burr_Fish_2006_herb <- merge(Burr_Fish_2006, Herb, by = c("SPECIES_CD"))
Burr_Fish_2006_herb_count <- count(Burr_Fish_2006_herb, vars = "SPECIES_CD")
Burr_Fish_2006_herb_count$Year <- ('2006')
Burr_Fish_2006_herb_count$sitename <- ('Burr Fish')
Burr_Fish_2006_herb_count$Type <- "Herbivorous"

Burr_Fish_2006_comm <- merge(Burr_Fish_2006, Comm, by = c("SPECIES_CD"))
Burr_Fish_2006_comm_count <- count(Burr_Fish_2006_comm, vars = "SPECIES_CD")
Burr_Fish_2006_comm_count$Year <- ('2006')
Burr_Fish_2006_comm_count$sitename <- ('Burr Fish')
Burr_Fish_2006_comm_count$Type <- "Commercial"


Burr_Fish_2006_total_count <- rbind(Burr_Fish_2006_herb_count, Burr_Fish_2006_comm_count)



Burr_Fish_2007 <- import("UK/Burr_Fish/data/Burr_Fish_2007.xls")


Burr_Fish_2007_herb <- merge(Burr_Fish_2007, Herb, by = c("SPECIES_CD"))
Burr_Fish_2007_herb_count <- count(Burr_Fish_2007_herb, vars = "SPECIES_CD")
Burr_Fish_2007_herb_count$Year <- ('2007')
Burr_Fish_2007_herb_count$sitename <- ('Burr Fish')
Burr_Fish_2007_herb_count$Type <- "Herbivorous"

Burr_Fish_2007_comm <- merge(Burr_Fish_2007, Comm, by = c("SPECIES_CD"))
Burr_Fish_2007_comm_count <- count(Burr_Fish_2007_comm, vars = "SPECIES_CD")
Burr_Fish_2007_comm_count$Year <- ('2007')
Burr_Fish_2007_comm_count$sitename <- ('Burr Fish')
Burr_Fish_2007_comm_count$Type <- "Commercial"


Burr_Fish_2007_total_count <- rbind(Burr_Fish_2007_herb_count, Burr_Fish_2007_comm_count)




Burr_Fish_2008 <- import("UK/Burr_Fish/data/Burr_Fish_2008.xls")


Burr_Fish_2008_herb <- merge(Burr_Fish_2008, Herb, by = c("SPECIES_CD"))
Burr_Fish_2008_herb_count <- count(Burr_Fish_2008_herb, vars = "SPECIES_CD")
Burr_Fish_2008_herb_count$Year <- ('2008')
Burr_Fish_2008_herb_count$sitename <- ('Burr Fish')
Burr_Fish_2008_herb_count$Type <- "Herbivorous"

Burr_Fish_2008_comm <- merge(Burr_Fish_2008, Comm, by = c("SPECIES_CD"))
Burr_Fish_2008_comm_count <- count(Burr_Fish_2008_comm, vars = "SPECIES_CD")
Burr_Fish_2008_comm_count$Year <- ('2008')
Burr_Fish_2008_comm_count$sitename <- ('Burr Fish')
Burr_Fish_2008_comm_count$Type <- "Commercial"


Burr_Fish_2008_total_count <- rbind(Burr_Fish_2008_herb_count, Burr_Fish_2008_comm_count)



Burr_Fish_2009 <- import("UK/Burr_Fish/data/Burr_Fish_2009.xls")


Burr_Fish_2009_herb <- merge(Burr_Fish_2009, Herb, by = c("SPECIES_CD"))
Burr_Fish_2009_herb_count <- count(Burr_Fish_2009_herb, vars = "SPECIES_CD")
Burr_Fish_2009_herb_count$Year <- ('2009')
Burr_Fish_2009_herb_count$sitename <- ('Burr Fish')
Burr_Fish_2009_herb_count$Type <- "Herbivorous"

Burr_Fish_2009_comm <- merge(Burr_Fish_2009, Comm, by = c("SPECIES_CD"))
Burr_Fish_2009_comm_count <- count(Burr_Fish_2009_comm, vars = "SPECIES_CD")
Burr_Fish_2009_comm_count$Year <- ('2009')
Burr_Fish_2009_comm_count$sitename <- ('Burr Fish')
Burr_Fish_2009_comm_count$Type <- "Commercial"


Burr_Fish_2009_total_count <- rbind(Burr_Fish_2009_herb_count, Burr_Fish_2009_comm_count)





Burr_Fish_2010 <- import("UK/Burr_Fish/data/Burr_Fish_2010.xls")


Burr_Fish_2010_herb <- merge(Burr_Fish_2010, Herb, by = c("SPECIES_CD"))
Burr_Fish_2010_herb_count <- count(Burr_Fish_2010_herb, vars = "SPECIES_CD")
Burr_Fish_2010_herb_count$Year <- ('2010')
Burr_Fish_2010_herb_count$sitename <- ('Burr Fish')
Burr_Fish_2010_herb_count$Type <- "Herbivorous"

Burr_Fish_2010_comm <- merge(Burr_Fish_2010, Comm, by = c("SPECIES_CD"))
Burr_Fish_2010_comm_count <- count(Burr_Fish_2010_comm, vars = "SPECIES_CD")
Burr_Fish_2010_comm_count$Year <- ('2010')
Burr_Fish_2010_comm_count$sitename <- ('Burr Fish')
Burr_Fish_2010_comm_count$Type <- "Commercial"


Burr_Fish_2010_total_count <- rbind(Burr_Fish_2010_herb_count, Burr_Fish_2010_comm_count)


Burr_Fish_2011 <- import("UK/Burr_Fish/data/Burr_Fish_2011.xls")


Burr_Fish_2011_herb <- merge(Burr_Fish_2011, Herb, by = c("SPECIES_CD"))
Burr_Fish_2011_herb_count <- count(Burr_Fish_2011_herb, vars = "SPECIES_CD")
Burr_Fish_2011_herb_count$Year <- ('2011')
Burr_Fish_2011_herb_count$sitename <- ('Burr Fish')
Burr_Fish_2011_herb_count$Type <- "Herbivorous"

Burr_Fish_2011_comm <- merge(Burr_Fish_2011, Comm, by = c("SPECIES_CD"))
Burr_Fish_2011_comm_count <- count(Burr_Fish_2011_comm, vars = "SPECIES_CD")
Burr_Fish_2011_comm_count$Year <- ('2011')
Burr_Fish_2011_comm_count$sitename <- ('Burr Fish')
Burr_Fish_2011_comm_count$Type <- "Commercial"


Burr_Fish_2011_total_count <- rbind(Burr_Fish_2011_herb_count, Burr_Fish_2011_comm_count)





Burr_Fish_2012 <- import("UK/Burr_Fish/data/Burr_Fish_2012.xls")


Burr_Fish_2012_herb <- merge(Burr_Fish_2012, Herb, by = c("SPECIES_CD"))
Burr_Fish_2012_herb_count <- count(Burr_Fish_2012_herb, vars = "SPECIES_CD")
Burr_Fish_2012_herb_count$Year <- ('2012')
Burr_Fish_2012_herb_count$sitename <- ('Burr Fish')
Burr_Fish_2012_herb_count$Type <- "Herbivorous"

Burr_Fish_2012_comm <- merge(Burr_Fish_2012, Comm, by = c("SPECIES_CD"))
Burr_Fish_2012_comm_count <- count(Burr_Fish_2012_comm, vars = "SPECIES_CD")
Burr_Fish_2012_comm_count$Year <- ('2012')
Burr_Fish_2012_comm_count$sitename <- ('Burr Fish')
Burr_Fish_2012_comm_count$Type <- "Commercial"


Burr_Fish_2012_total_count <- rbind(Burr_Fish_2012_herb_count, Burr_Fish_2012_comm_count)



Burr_Fish_2014 <- import("UK/Burr_Fish/data/Burr_Fish_2014.xls")


Burr_Fish_2014_herb <- merge(Burr_Fish_2014, Herb, by = c("SPECIES_CD"))
Burr_Fish_2014_herb_count <- count(Burr_Fish_2014_herb, vars = "SPECIES_CD")
Burr_Fish_2014_herb_count$Year <- ('2014')
Burr_Fish_2014_herb_count$sitename <- ('Burr Fish')
Burr_Fish_2014_herb_count$Type <- "Herbivorous"

Burr_Fish_2014_comm <- merge(Burr_Fish_2014, Comm, by = c("SPECIES_CD"))
Burr_Fish_2014_comm_count <- count(Burr_Fish_2014_comm, vars = "SPECIES_CD")
Burr_Fish_2014_comm_count$Year <- ('2014')
Burr_Fish_2014_comm_count$sitename <- ('Burr Fish')
Burr_Fish_2014_comm_count$Type <- "Commercial"


Burr_Fish_2014_total_count <- rbind(Burr_Fish_2014_herb_count, Burr_Fish_2014_comm_count)




Burr_Fish_2016 <- import("UK/Burr_Fish/data/Burr_Fish_2016.xls")


Burr_Fish_2016_herb <- merge(Burr_Fish_2016, Herb, by = c("SPECIES_CD"))
Burr_Fish_2016_herb_count <- count(Burr_Fish_2016_herb, vars = "SPECIES_CD")
Burr_Fish_2016_herb_count$Year <- ('2016')
Burr_Fish_2016_herb_count$sitename <- ('Burr Fish')
Burr_Fish_2016_herb_count$Type <- "Herbivorous"

Burr_Fish_2016_comm <- merge(Burr_Fish_2016, Comm, by = c("SPECIES_CD"))
Burr_Fish_2016_comm_count <- count(Burr_Fish_2016_comm, vars = "SPECIES_CD")
Burr_Fish_2016_comm_count$Year <- ('2016')
Burr_Fish_2016_comm_count$sitename <- ('Burr Fish')
Burr_Fish_2016_comm_count$Type <- "Commercial"


Burr_Fish_2016_total_count <- rbind(Burr_Fish_2016_herb_count, Burr_Fish_2016_comm_count)



Burr_Fish_2018 <- import("UK/Burr_Fish/data/Burr_Fish_2018.xls")


Burr_Fish_2018_herb <- merge(Burr_Fish_2018, Herb, by = c("SPECIES_CD"))
Burr_Fish_2018_herb_count <- count(Burr_Fish_2018_herb, vars = "SPECIES_CD")
Burr_Fish_2018_herb_count$Year <- ('2018')
Burr_Fish_2018_herb_count$sitename <- ('Burr Fish')
Burr_Fish_2018_herb_count$Type <- "Herbivorous"

Burr_Fish_2018_comm <- merge(Burr_Fish_2018, Comm, by = c("SPECIES_CD"))
Burr_Fish_2018_comm_count <- count(Burr_Fish_2018_comm, vars = "SPECIES_CD")
Burr_Fish_2018_comm_count$Year <- ('2018')
Burr_Fish_2018_comm_count$sitename <- ('Burr Fish')
Burr_Fish_2018_comm_count$Type <- "Commercial"


Burr_Fish_2018_total_count <- rbind(Burr_Fish_2018_herb_count, Burr_Fish_2018_comm_count)





Burr_Fish_all <- rbind(Burr_Fish_1999_total_count,Burr_Fish_2000_total_count,Burr_Fish_2001_total_count,Burr_Fish_2002_total_count,Burr_Fish_2003_total_count,Burr_Fish_2004_total_count,Burr_Fish_2005_total_count,Burr_Fish_2006_total_count,Burr_Fish_2007_total_count,Burr_Fish_2008_total_count,Burr_Fish_2009_total_count, Burr_Fish_2010_total_count,Burr_Fish_2011_total_count, Burr_Fish_2012_total_count, Burr_Fish_2014_total_count, Burr_Fish_2016_total_count,Burr_Fish_2018_total_count)


export(Burr_Fish_all, "UK/Burr_Fish/data/Burr_Fish_count_herb_comm.csv")





Carysfort_Deep_1999 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_1999.xls")


Carysfort_Deep_1999_herb <- merge(Carysfort_Deep_1999, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_1999_herb_count <- count(Carysfort_Deep_1999_herb, vars = "SPECIES_CD")
Carysfort_Deep_1999_herb_count$Year <- ('1999')
Carysfort_Deep_1999_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_1999_herb_count$Type <- "Herbivorous"

Carysfort_Deep_1999_comm <- merge(Carysfort_Deep_1999, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_1999_comm_count <- count(Carysfort_Deep_1999_comm, vars = "SPECIES_CD")
Carysfort_Deep_1999_comm_count$Year <- ('1999')
Carysfort_Deep_1999_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_1999_comm_count$Type <- "Commercial"


Carysfort_Deep_1999_total_count <- rbind(Carysfort_Deep_1999_herb_count, Carysfort_Deep_1999_comm_count)




Carysfort_Deep_2000 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_2000.xls")


Carysfort_Deep_2000_herb <- merge(Carysfort_Deep_2000, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2000_herb_count <- count(Carysfort_Deep_2000_herb, vars = "SPECIES_CD")
Carysfort_Deep_2000_herb_count$Year <- ('2000')
Carysfort_Deep_2000_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2000_herb_count$Type <- "Herbivorous"

Carysfort_Deep_2000_comm <- merge(Carysfort_Deep_2000, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2000_comm_count <- count(Carysfort_Deep_2000_comm, vars = "SPECIES_CD")
Carysfort_Deep_2000_comm_count$Year <- ('2000')
Carysfort_Deep_2000_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2000_comm_count$Type <- "Commercial"


Carysfort_Deep_2000_total_count <- rbind(Carysfort_Deep_2000_herb_count, Carysfort_Deep_2000_comm_count)


Carysfort_Deep_2001 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_2001.xls")


Carysfort_Deep_2001_herb <- merge(Carysfort_Deep_2001, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2001_herb_count <- count(Carysfort_Deep_2001_herb, vars = "SPECIES_CD")
Carysfort_Deep_2001_herb_count$Year <- ('2001')
Carysfort_Deep_2001_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2001_herb_count$Type <- "Herbivorous"

Carysfort_Deep_2001_comm <- merge(Carysfort_Deep_2001, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2001_comm_count <- count(Carysfort_Deep_2001_comm, vars = "SPECIES_CD")
Carysfort_Deep_2001_comm_count$Year <- ('2001')
Carysfort_Deep_2001_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2001_comm_count$Type <- "Commercial"


Carysfort_Deep_2001_total_count <- rbind(Carysfort_Deep_2001_herb_count, Carysfort_Deep_2001_comm_count)


Carysfort_Deep_2002 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_2002.xls")


Carysfort_Deep_2002_herb <- merge(Carysfort_Deep_2002, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2002_herb_count <- count(Carysfort_Deep_2002_herb, vars = "SPECIES_CD")
Carysfort_Deep_2002_herb_count$Year <- ('2002')
Carysfort_Deep_2002_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2002_herb_count$Type <- "Herbivorous"

Carysfort_Deep_2002_comm <- merge(Carysfort_Deep_2002, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2002_comm_count <- count(Carysfort_Deep_2002_comm, vars = "SPECIES_CD")
Carysfort_Deep_2002_comm_count$Year <- ('2002')
Carysfort_Deep_2002_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2002_comm_count$Type <- "Commercial"


Carysfort_Deep_2002_total_count <- rbind(Carysfort_Deep_2002_herb_count, Carysfort_Deep_2002_comm_count)



Carysfort_Deep_2003 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_2003.xls")


Carysfort_Deep_2003_herb <- merge(Carysfort_Deep_2003, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2003_herb_count <- count(Carysfort_Deep_2003_herb, vars = "SPECIES_CD")
Carysfort_Deep_2003_herb_count$Year <- ('2003')
Carysfort_Deep_2003_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2003_herb_count$Type <- "Herbivorous"

Carysfort_Deep_2003_comm <- merge(Carysfort_Deep_2003, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2003_comm_count <- count(Carysfort_Deep_2003_comm, vars = "SPECIES_CD")
Carysfort_Deep_2003_comm_count$Year <- ('2003')
Carysfort_Deep_2003_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2003_comm_count$Type <- "Commercial"


Carysfort_Deep_2003_total_count <- rbind(Carysfort_Deep_2003_herb_count, Carysfort_Deep_2003_comm_count)




Carysfort_Deep_2004 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_2004.xls")


Carysfort_Deep_2004_herb <- merge(Carysfort_Deep_2004, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2004_herb_count <- count(Carysfort_Deep_2004_herb, vars = "SPECIES_CD")
Carysfort_Deep_2004_herb_count$Year <- ('2004')
Carysfort_Deep_2004_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2004_herb_count$Type <- "Herbivorous"

Carysfort_Deep_2004_comm <- merge(Carysfort_Deep_2004, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2004_comm_count <- count(Carysfort_Deep_2004_comm, vars = "SPECIES_CD")
Carysfort_Deep_2004_comm_count$Year <- ('2004')
Carysfort_Deep_2004_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2004_comm_count$Type <- "Commercial"


Carysfort_Deep_2004_total_count <- rbind(Carysfort_Deep_2004_herb_count, Carysfort_Deep_2004_comm_count)


Carysfort_Deep_2005 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_2005.xls")


Carysfort_Deep_2005_herb <- merge(Carysfort_Deep_2005, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2005_herb_count <- count(Carysfort_Deep_2005_herb, vars = "SPECIES_CD")
Carysfort_Deep_2005_herb_count$Year <- ('2005')
Carysfort_Deep_2005_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2005_herb_count$Type <- "Herbivorous"

Carysfort_Deep_2005_comm <- merge(Carysfort_Deep_2005, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2005_comm_count <- count(Carysfort_Deep_2005_comm, vars = "SPECIES_CD")
Carysfort_Deep_2005_comm_count$Year <- ('2005')
Carysfort_Deep_2005_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2005_comm_count$Type <- "Commercial"


Carysfort_Deep_2005_total_count <- rbind(Carysfort_Deep_2005_herb_count, Carysfort_Deep_2005_comm_count)




Carysfort_Deep_2006 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_2006.xls")


Carysfort_Deep_2006_herb <- merge(Carysfort_Deep_2006, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2006_herb_count <- count(Carysfort_Deep_2006_herb, vars = "SPECIES_CD")
Carysfort_Deep_2006_herb_count$Year <- ('2006')
Carysfort_Deep_2006_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2006_herb_count$Type <- "Herbivorous"

Carysfort_Deep_2006_comm <- merge(Carysfort_Deep_2006, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2006_comm_count <- count(Carysfort_Deep_2006_comm, vars = "SPECIES_CD")
Carysfort_Deep_2006_comm_count$Year <- ('2006')
Carysfort_Deep_2006_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2006_comm_count$Type <- "Commercial"


Carysfort_Deep_2006_total_count <- rbind(Carysfort_Deep_2006_herb_count, Carysfort_Deep_2006_comm_count)



Carysfort_Deep_2007 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_2007.xls")


Carysfort_Deep_2007_herb <- merge(Carysfort_Deep_2007, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2007_herb_count <- count(Carysfort_Deep_2007_herb, vars = "SPECIES_CD")
Carysfort_Deep_2007_herb_count$Year <- ('2007')
Carysfort_Deep_2007_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2007_herb_count$Type <- "Herbivorous"

Carysfort_Deep_2007_comm <- merge(Carysfort_Deep_2007, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2007_comm_count <- count(Carysfort_Deep_2007_comm, vars = "SPECIES_CD")
Carysfort_Deep_2007_comm_count$Year <- ('2007')
Carysfort_Deep_2007_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2007_comm_count$Type <- "Commercial"


Carysfort_Deep_2007_total_count <- rbind(Carysfort_Deep_2007_herb_count, Carysfort_Deep_2007_comm_count)




Carysfort_Deep_2008 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_2008.xls")


Carysfort_Deep_2008_herb <- merge(Carysfort_Deep_2008, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2008_herb_count <- count(Carysfort_Deep_2008_herb, vars = "SPECIES_CD")
Carysfort_Deep_2008_herb_count$Year <- ('2008')
Carysfort_Deep_2008_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2008_herb_count$Type <- "Herbivorous"

Carysfort_Deep_2008_comm <- merge(Carysfort_Deep_2008, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2008_comm_count <- count(Carysfort_Deep_2008_comm, vars = "SPECIES_CD")
Carysfort_Deep_2008_comm_count$Year <- ('2008')
Carysfort_Deep_2008_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2008_comm_count$Type <- "Commercial"


Carysfort_Deep_2008_total_count <- rbind(Carysfort_Deep_2008_herb_count, Carysfort_Deep_2008_comm_count)



Carysfort_Deep_2009 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_2009.xls")


Carysfort_Deep_2009_herb <- merge(Carysfort_Deep_2009, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2009_herb_count <- count(Carysfort_Deep_2009_herb, vars = "SPECIES_CD")
Carysfort_Deep_2009_herb_count$Year <- ('2009')
Carysfort_Deep_2009_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2009_herb_count$Type <- "Herbivorous"

Carysfort_Deep_2009_comm <- merge(Carysfort_Deep_2009, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2009_comm_count <- count(Carysfort_Deep_2009_comm, vars = "SPECIES_CD")
Carysfort_Deep_2009_comm_count$Year <- ('2009')
Carysfort_Deep_2009_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2009_comm_count$Type <- "Commercial"


Carysfort_Deep_2009_total_count <- rbind(Carysfort_Deep_2009_herb_count, Carysfort_Deep_2009_comm_count)





Carysfort_Deep_2010 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_2010.xls")


Carysfort_Deep_2010_herb <- merge(Carysfort_Deep_2010, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2010_herb_count <- count(Carysfort_Deep_2010_herb, vars = "SPECIES_CD")
Carysfort_Deep_2010_herb_count$Year <- ('2010')
Carysfort_Deep_2010_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2010_herb_count$Type <- "Herbivorous"

Carysfort_Deep_2010_comm <- merge(Carysfort_Deep_2010, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2010_comm_count <- count(Carysfort_Deep_2010_comm, vars = "SPECIES_CD")
Carysfort_Deep_2010_comm_count$Year <- ('2010')
Carysfort_Deep_2010_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2010_comm_count$Type <- "Commercial"


Carysfort_Deep_2010_total_count <- rbind(Carysfort_Deep_2010_herb_count, Carysfort_Deep_2010_comm_count)


Carysfort_Deep_2011 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_2011.xls")


Carysfort_Deep_2011_herb <- merge(Carysfort_Deep_2011, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2011_herb_count <- count(Carysfort_Deep_2011_herb, vars = "SPECIES_CD")
Carysfort_Deep_2011_herb_count$Year <- ('2011')
Carysfort_Deep_2011_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2011_herb_count$Type <- "Herbivorous"

Carysfort_Deep_2011_comm <- merge(Carysfort_Deep_2011, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2011_comm_count <- count(Carysfort_Deep_2011_comm, vars = "SPECIES_CD")
Carysfort_Deep_2011_comm_count$Year <- ('2011')
Carysfort_Deep_2011_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2011_comm_count$Type <- "Commercial"


Carysfort_Deep_2011_total_count <- rbind(Carysfort_Deep_2011_herb_count, Carysfort_Deep_2011_comm_count)





Carysfort_Deep_2012 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_2012.xls")


Carysfort_Deep_2012_herb <- merge(Carysfort_Deep_2012, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2012_herb_count <- count(Carysfort_Deep_2012_herb, vars = "SPECIES_CD")
Carysfort_Deep_2012_herb_count$Year <- ('2012')
Carysfort_Deep_2012_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2012_herb_count$Type <- "Herbivorous"

Carysfort_Deep_2012_comm <- merge(Carysfort_Deep_2012, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2012_comm_count <- count(Carysfort_Deep_2012_comm, vars = "SPECIES_CD")
Carysfort_Deep_2012_comm_count$Year <- ('2012')
Carysfort_Deep_2012_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2012_comm_count$Type <- "Commercial"


Carysfort_Deep_2012_total_count <- rbind(Carysfort_Deep_2012_herb_count, Carysfort_Deep_2012_comm_count)



Carysfort_Deep_2014 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_2014.xls")


Carysfort_Deep_2014_herb <- merge(Carysfort_Deep_2014, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2014_herb_count <- count(Carysfort_Deep_2014_herb, vars = "SPECIES_CD")
Carysfort_Deep_2014_herb_count$Year <- ('2014')
Carysfort_Deep_2014_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2014_herb_count$Type <- "Herbivorous"

Carysfort_Deep_2014_comm <- merge(Carysfort_Deep_2014, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2014_comm_count <- count(Carysfort_Deep_2014_comm, vars = "SPECIES_CD")
Carysfort_Deep_2014_comm_count$Year <- ('2014')
Carysfort_Deep_2014_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2014_comm_count$Type <- "Commercial"


Carysfort_Deep_2014_total_count <- rbind(Carysfort_Deep_2014_herb_count, Carysfort_Deep_2014_comm_count)




Carysfort_Deep_2016 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_2016.xls")


Carysfort_Deep_2016_herb <- merge(Carysfort_Deep_2016, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2016_herb_count <- count(Carysfort_Deep_2016_herb, vars = "SPECIES_CD")
Carysfort_Deep_2016_herb_count$Year <- ('2016')
Carysfort_Deep_2016_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2016_herb_count$Type <- "Herbivorous"

Carysfort_Deep_2016_comm <- merge(Carysfort_Deep_2016, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2016_comm_count <- count(Carysfort_Deep_2016_comm, vars = "SPECIES_CD")
Carysfort_Deep_2016_comm_count$Year <- ('2016')
Carysfort_Deep_2016_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2016_comm_count$Type <- "Commercial"


Carysfort_Deep_2016_total_count <- rbind(Carysfort_Deep_2016_herb_count, Carysfort_Deep_2016_comm_count)



Carysfort_Deep_2018 <- import("UK/Carysfort_Deep/data/Carysfort_Deep_2018.xls")


Carysfort_Deep_2018_herb <- merge(Carysfort_Deep_2018, Herb, by = c("SPECIES_CD"))
Carysfort_Deep_2018_herb_count <- count(Carysfort_Deep_2018_herb, vars = "SPECIES_CD")
Carysfort_Deep_2018_herb_count$Year <- ('2018')
Carysfort_Deep_2018_herb_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2018_herb_count$Type <- "Herbivorous"

Carysfort_Deep_2018_comm <- merge(Carysfort_Deep_2018, Comm, by = c("SPECIES_CD"))
Carysfort_Deep_2018_comm_count <- count(Carysfort_Deep_2018_comm, vars = "SPECIES_CD")
Carysfort_Deep_2018_comm_count$Year <- ('2018')
Carysfort_Deep_2018_comm_count$sitename <- ('Carysfort Deep')
Carysfort_Deep_2018_comm_count$Type <- "Commercial"


Carysfort_Deep_2018_total_count <- rbind(Carysfort_Deep_2018_herb_count, Carysfort_Deep_2018_comm_count)





Carysfort_Deep_all <- rbind(Carysfort_Deep_1999_total_count,Carysfort_Deep_2000_total_count,Carysfort_Deep_2001_total_count,Carysfort_Deep_2002_total_count,Carysfort_Deep_2003_total_count,Carysfort_Deep_2004_total_count,Carysfort_Deep_2005_total_count,Carysfort_Deep_2006_total_count,Carysfort_Deep_2007_total_count,Carysfort_Deep_2008_total_count,Carysfort_Deep_2009_total_count, Carysfort_Deep_2010_total_count,Carysfort_Deep_2011_total_count, Carysfort_Deep_2012_total_count, Carysfort_Deep_2014_total_count, Carysfort_Deep_2016_total_count,Carysfort_Deep_2018_total_count)


export(Carysfort_Deep_all, "UK/Carysfort_Deep/data/Carysfort_Deep_count_herb_comm.csv")




Carysfort_Shallow_1999 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_1999.xls")


Carysfort_Shallow_1999_herb <- merge(Carysfort_Shallow_1999, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_1999_herb_count <- count(Carysfort_Shallow_1999_herb, vars = "SPECIES_CD")
Carysfort_Shallow_1999_herb_count$Year <- ('1999')
Carysfort_Shallow_1999_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_1999_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_1999_comm <- merge(Carysfort_Shallow_1999, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_1999_comm_count <- count(Carysfort_Shallow_1999_comm, vars = "SPECIES_CD")
Carysfort_Shallow_1999_comm_count$Year <- ('1999')
Carysfort_Shallow_1999_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_1999_comm_count$Type <- "Commercial"


Carysfort_Shallow_1999_total_count <- rbind(Carysfort_Shallow_1999_herb_count, Carysfort_Shallow_1999_comm_count)




Carysfort_Shallow_2000 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_2000.xls")


Carysfort_Shallow_2000_herb <- merge(Carysfort_Shallow_2000, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2000_herb_count <- count(Carysfort_Shallow_2000_herb, vars = "SPECIES_CD")
Carysfort_Shallow_2000_herb_count$Year <- ('2000')
Carysfort_Shallow_2000_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2000_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_2000_comm <- merge(Carysfort_Shallow_2000, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2000_comm_count <- count(Carysfort_Shallow_2000_comm, vars = "SPECIES_CD")
Carysfort_Shallow_2000_comm_count$Year <- ('2000')
Carysfort_Shallow_2000_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2000_comm_count$Type <- "Commercial"


Carysfort_Shallow_2000_total_count <- rbind(Carysfort_Shallow_2000_herb_count, Carysfort_Shallow_2000_comm_count)


Carysfort_Shallow_2001 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_2001.xls")


Carysfort_Shallow_2001_herb <- merge(Carysfort_Shallow_2001, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2001_herb_count <- count(Carysfort_Shallow_2001_herb, vars = "SPECIES_CD")
Carysfort_Shallow_2001_herb_count$Year <- ('2001')
Carysfort_Shallow_2001_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2001_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_2001_comm <- merge(Carysfort_Shallow_2001, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2001_comm_count <- count(Carysfort_Shallow_2001_comm, vars = "SPECIES_CD")
Carysfort_Shallow_2001_comm_count$Year <- ('2001')
Carysfort_Shallow_2001_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2001_comm_count$Type <- "Commercial"


Carysfort_Shallow_2001_total_count <- rbind(Carysfort_Shallow_2001_herb_count, Carysfort_Shallow_2001_comm_count)


Carysfort_Shallow_2002 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_2002.xls")


Carysfort_Shallow_2002_herb <- merge(Carysfort_Shallow_2002, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2002_herb_count <- count(Carysfort_Shallow_2002_herb, vars = "SPECIES_CD")
Carysfort_Shallow_2002_herb_count$Year <- ('2002')
Carysfort_Shallow_2002_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2002_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_2002_comm <- merge(Carysfort_Shallow_2002, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2002_comm_count <- count(Carysfort_Shallow_2002_comm, vars = "SPECIES_CD")
Carysfort_Shallow_2002_comm_count$Year <- ('2002')
Carysfort_Shallow_2002_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2002_comm_count$Type <- "Commercial"


Carysfort_Shallow_2002_total_count <- rbind(Carysfort_Shallow_2002_herb_count, Carysfort_Shallow_2002_comm_count)



Carysfort_Shallow_2003 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_2003.xls")


Carysfort_Shallow_2003_herb <- merge(Carysfort_Shallow_2003, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2003_herb_count <- count(Carysfort_Shallow_2003_herb, vars = "SPECIES_CD")
Carysfort_Shallow_2003_herb_count$Year <- ('2003')
Carysfort_Shallow_2003_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2003_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_2003_comm <- merge(Carysfort_Shallow_2003, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2003_comm_count <- count(Carysfort_Shallow_2003_comm, vars = "SPECIES_CD")
Carysfort_Shallow_2003_comm_count$Year <- ('2003')
Carysfort_Shallow_2003_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2003_comm_count$Type <- "Commercial"


Carysfort_Shallow_2003_total_count <- rbind(Carysfort_Shallow_2003_herb_count, Carysfort_Shallow_2003_comm_count)




Carysfort_Shallow_2004 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_2004.xls")


Carysfort_Shallow_2004_herb <- merge(Carysfort_Shallow_2004, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2004_herb_count <- count(Carysfort_Shallow_2004_herb, vars = "SPECIES_CD")
Carysfort_Shallow_2004_herb_count$Year <- ('2004')
Carysfort_Shallow_2004_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2004_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_2004_comm <- merge(Carysfort_Shallow_2004, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2004_comm_count <- count(Carysfort_Shallow_2004_comm, vars = "SPECIES_CD")
Carysfort_Shallow_2004_comm_count$Year <- ('2004')
Carysfort_Shallow_2004_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2004_comm_count$Type <- "Commercial"


Carysfort_Shallow_2004_total_count <- rbind(Carysfort_Shallow_2004_herb_count, Carysfort_Shallow_2004_comm_count)


Carysfort_Shallow_2005 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_2005.xls")


Carysfort_Shallow_2005_herb <- merge(Carysfort_Shallow_2005, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2005_herb_count <- count(Carysfort_Shallow_2005_herb, vars = "SPECIES_CD")
Carysfort_Shallow_2005_herb_count$Year <- ('2005')
Carysfort_Shallow_2005_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2005_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_2005_comm <- merge(Carysfort_Shallow_2005, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2005_comm_count <- count(Carysfort_Shallow_2005_comm, vars = "SPECIES_CD")
Carysfort_Shallow_2005_comm_count$Year <- ('2005')
Carysfort_Shallow_2005_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2005_comm_count$Type <- "Commercial"


Carysfort_Shallow_2005_total_count <- rbind(Carysfort_Shallow_2005_herb_count, Carysfort_Shallow_2005_comm_count)




Carysfort_Shallow_2006 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_2006.xls")


Carysfort_Shallow_2006_herb <- merge(Carysfort_Shallow_2006, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2006_herb_count <- count(Carysfort_Shallow_2006_herb, vars = "SPECIES_CD")
Carysfort_Shallow_2006_herb_count$Year <- ('2006')
Carysfort_Shallow_2006_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2006_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_2006_comm <- merge(Carysfort_Shallow_2006, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2006_comm_count <- count(Carysfort_Shallow_2006_comm, vars = "SPECIES_CD")
Carysfort_Shallow_2006_comm_count$Year <- ('2006')
Carysfort_Shallow_2006_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2006_comm_count$Type <- "Commercial"


Carysfort_Shallow_2006_total_count <- rbind(Carysfort_Shallow_2006_herb_count, Carysfort_Shallow_2006_comm_count)



Carysfort_Shallow_2007 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_2007.xls")


Carysfort_Shallow_2007_herb <- merge(Carysfort_Shallow_2007, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2007_herb_count <- count(Carysfort_Shallow_2007_herb, vars = "SPECIES_CD")
Carysfort_Shallow_2007_herb_count$Year <- ('2007')
Carysfort_Shallow_2007_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2007_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_2007_comm <- merge(Carysfort_Shallow_2007, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2007_comm_count <- count(Carysfort_Shallow_2007_comm, vars = "SPECIES_CD")
Carysfort_Shallow_2007_comm_count$Year <- ('2007')
Carysfort_Shallow_2007_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2007_comm_count$Type <- "Commercial"


Carysfort_Shallow_2007_total_count <- rbind(Carysfort_Shallow_2007_herb_count, Carysfort_Shallow_2007_comm_count)




Carysfort_Shallow_2008 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_2008.xls")


Carysfort_Shallow_2008_herb <- merge(Carysfort_Shallow_2008, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2008_herb_count <- count(Carysfort_Shallow_2008_herb, vars = "SPECIES_CD")
Carysfort_Shallow_2008_herb_count$Year <- ('2008')
Carysfort_Shallow_2008_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2008_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_2008_comm <- merge(Carysfort_Shallow_2008, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2008_comm_count <- count(Carysfort_Shallow_2008_comm, vars = "SPECIES_CD")
Carysfort_Shallow_2008_comm_count$Year <- ('2008')
Carysfort_Shallow_2008_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2008_comm_count$Type <- "Commercial"


Carysfort_Shallow_2008_total_count <- rbind(Carysfort_Shallow_2008_herb_count, Carysfort_Shallow_2008_comm_count)



Carysfort_Shallow_2009 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_2009.xls")


Carysfort_Shallow_2009_herb <- merge(Carysfort_Shallow_2009, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2009_herb_count <- count(Carysfort_Shallow_2009_herb, vars = "SPECIES_CD")
Carysfort_Shallow_2009_herb_count$Year <- ('2009')
Carysfort_Shallow_2009_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2009_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_2009_comm <- merge(Carysfort_Shallow_2009, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2009_comm_count <- count(Carysfort_Shallow_2009_comm, vars = "SPECIES_CD")
Carysfort_Shallow_2009_comm_count$Year <- ('2009')
Carysfort_Shallow_2009_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2009_comm_count$Type <- "Commercial"


Carysfort_Shallow_2009_total_count <- rbind(Carysfort_Shallow_2009_herb_count, Carysfort_Shallow_2009_comm_count)





Carysfort_Shallow_2010 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_2010.xls")


Carysfort_Shallow_2010_herb <- merge(Carysfort_Shallow_2010, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2010_herb_count <- count(Carysfort_Shallow_2010_herb, vars = "SPECIES_CD")
Carysfort_Shallow_2010_herb_count$Year <- ('2010')
Carysfort_Shallow_2010_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2010_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_2010_comm <- merge(Carysfort_Shallow_2010, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2010_comm_count <- count(Carysfort_Shallow_2010_comm, vars = "SPECIES_CD")
Carysfort_Shallow_2010_comm_count$Year <- ('2010')
Carysfort_Shallow_2010_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2010_comm_count$Type <- "Commercial"


Carysfort_Shallow_2010_total_count <- rbind(Carysfort_Shallow_2010_herb_count, Carysfort_Shallow_2010_comm_count)


Carysfort_Shallow_2011 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_2011.xls")


Carysfort_Shallow_2011_herb <- merge(Carysfort_Shallow_2011, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2011_herb_count <- count(Carysfort_Shallow_2011_herb, vars = "SPECIES_CD")
Carysfort_Shallow_2011_herb_count$Year <- ('2011')
Carysfort_Shallow_2011_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2011_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_2011_comm <- merge(Carysfort_Shallow_2011, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2011_comm_count <- count(Carysfort_Shallow_2011_comm, vars = "SPECIES_CD")
Carysfort_Shallow_2011_comm_count$Year <- ('2011')
Carysfort_Shallow_2011_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2011_comm_count$Type <- "Commercial"


Carysfort_Shallow_2011_total_count <- rbind(Carysfort_Shallow_2011_herb_count, Carysfort_Shallow_2011_comm_count)





Carysfort_Shallow_2012 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_2012.xls")


Carysfort_Shallow_2012_herb <- merge(Carysfort_Shallow_2012, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2012_herb_count <- count(Carysfort_Shallow_2012_herb, vars = "SPECIES_CD")
Carysfort_Shallow_2012_herb_count$Year <- ('2012')
Carysfort_Shallow_2012_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2012_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_2012_comm <- merge(Carysfort_Shallow_2012, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2012_comm_count <- count(Carysfort_Shallow_2012_comm, vars = "SPECIES_CD")
Carysfort_Shallow_2012_comm_count$Year <- ('2012')
Carysfort_Shallow_2012_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2012_comm_count$Type <- "Commercial"


Carysfort_Shallow_2012_total_count <- rbind(Carysfort_Shallow_2012_herb_count, Carysfort_Shallow_2012_comm_count)



Carysfort_Shallow_2014 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_2014.xls")


Carysfort_Shallow_2014_herb <- merge(Carysfort_Shallow_2014, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2014_herb_count <- count(Carysfort_Shallow_2014_herb, vars = "SPECIES_CD")
Carysfort_Shallow_2014_herb_count$Year <- ('2014')
Carysfort_Shallow_2014_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2014_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_2014_comm <- merge(Carysfort_Shallow_2014, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2014_comm_count <- count(Carysfort_Shallow_2014_comm, vars = "SPECIES_CD")
Carysfort_Shallow_2014_comm_count$Year <- ('2014')
Carysfort_Shallow_2014_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2014_comm_count$Type <- "Commercial"


Carysfort_Shallow_2014_total_count <- rbind(Carysfort_Shallow_2014_herb_count, Carysfort_Shallow_2014_comm_count)




Carysfort_Shallow_2016 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_2016.xls")


Carysfort_Shallow_2016_herb <- merge(Carysfort_Shallow_2016, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2016_herb_count <- count(Carysfort_Shallow_2016_herb, vars = "SPECIES_CD")
Carysfort_Shallow_2016_herb_count$Year <- ('2016')
Carysfort_Shallow_2016_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2016_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_2016_comm <- merge(Carysfort_Shallow_2016, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2016_comm_count <- count(Carysfort_Shallow_2016_comm, vars = "SPECIES_CD")
Carysfort_Shallow_2016_comm_count$Year <- ('2016')
Carysfort_Shallow_2016_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2016_comm_count$Type <- "Commercial"


Carysfort_Shallow_2016_total_count <- rbind(Carysfort_Shallow_2016_herb_count, Carysfort_Shallow_2016_comm_count)



Carysfort_Shallow_2018 <- import("UK/Carysfort_Shallow/data/Carysfort_Shallow_2018.xls")


Carysfort_Shallow_2018_herb <- merge(Carysfort_Shallow_2018, Herb, by = c("SPECIES_CD"))
Carysfort_Shallow_2018_herb_count <- count(Carysfort_Shallow_2018_herb, vars = "SPECIES_CD")
Carysfort_Shallow_2018_herb_count$Year <- ('2018')
Carysfort_Shallow_2018_herb_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2018_herb_count$Type <- "Herbivorous"

Carysfort_Shallow_2018_comm <- merge(Carysfort_Shallow_2018, Comm, by = c("SPECIES_CD"))
Carysfort_Shallow_2018_comm_count <- count(Carysfort_Shallow_2018_comm, vars = "SPECIES_CD")
Carysfort_Shallow_2018_comm_count$Year <- ('2018')
Carysfort_Shallow_2018_comm_count$sitename <- ('Carysfort Shallow')
Carysfort_Shallow_2018_comm_count$Type <- "Commercial"


Carysfort_Shallow_2018_total_count <- rbind(Carysfort_Shallow_2018_herb_count, Carysfort_Shallow_2018_comm_count)





Carysfort_Shallow_all <- rbind(Carysfort_Shallow_1999_total_count,Carysfort_Shallow_2000_total_count,Carysfort_Shallow_2001_total_count,Carysfort_Shallow_2002_total_count,Carysfort_Shallow_2003_total_count,Carysfort_Shallow_2004_total_count,Carysfort_Shallow_2005_total_count,Carysfort_Shallow_2006_total_count,Carysfort_Shallow_2007_total_count,Carysfort_Shallow_2008_total_count,Carysfort_Shallow_2009_total_count, Carysfort_Shallow_2010_total_count,Carysfort_Shallow_2011_total_count, Carysfort_Shallow_2012_total_count, Carysfort_Shallow_2014_total_count, Carysfort_Shallow_2016_total_count,Carysfort_Shallow_2018_total_count)


export(Carysfort_Shallow_all, "UK/Carysfort_Shallow/data/Carysfort_Shallow_count_herb_comm.csv")




Conch_Deep_1999 <- import("UK/Conch_Deep/data/Conch_Deep_1999.xls")


Conch_Deep_1999_herb <- merge(Conch_Deep_1999, Herb, by = c("SPECIES_CD"))
Conch_Deep_1999_herb_count <- count(Conch_Deep_1999_herb, vars = "SPECIES_CD")
Conch_Deep_1999_herb_count$Year <- ('1999')
Conch_Deep_1999_herb_count$sitename <- ('Conch Deep')
Conch_Deep_1999_herb_count$Type <- "Herbivorous"

Conch_Deep_1999_comm <- merge(Conch_Deep_1999, Comm, by = c("SPECIES_CD"))
Conch_Deep_1999_comm_count <- count(Conch_Deep_1999_comm, vars = "SPECIES_CD")
Conch_Deep_1999_comm_count$Year <- ('1999')
Conch_Deep_1999_comm_count$sitename <- ('Conch Deep')
Conch_Deep_1999_comm_count$Type <- "Commercial"


Conch_Deep_1999_total_count <- rbind(Conch_Deep_1999_herb_count, Conch_Deep_1999_comm_count)




Conch_Deep_2000 <- import("UK/Conch_Deep/data/Conch_Deep_2000.xls")


Conch_Deep_2000_herb <- merge(Conch_Deep_2000, Herb, by = c("SPECIES_CD"))
Conch_Deep_2000_herb_count <- count(Conch_Deep_2000_herb, vars = "SPECIES_CD")
Conch_Deep_2000_herb_count$Year <- ('2000')
Conch_Deep_2000_herb_count$sitename <- ('Conch Deep')
Conch_Deep_2000_herb_count$Type <- "Herbivorous"

Conch_Deep_2000_comm <- merge(Conch_Deep_2000, Comm, by = c("SPECIES_CD"))
Conch_Deep_2000_comm_count <- count(Conch_Deep_2000_comm, vars = "SPECIES_CD")
Conch_Deep_2000_comm_count$Year <- ('2000')
Conch_Deep_2000_comm_count$sitename <- ('Conch Deep')
Conch_Deep_2000_comm_count$Type <- "Commercial"


Conch_Deep_2000_total_count <- rbind(Conch_Deep_2000_herb_count, Conch_Deep_2000_comm_count)


Conch_Deep_2001 <- import("UK/Conch_Deep/data/Conch_Deep_2001.xls")


Conch_Deep_2001_herb <- merge(Conch_Deep_2001, Herb, by = c("SPECIES_CD"))
Conch_Deep_2001_herb_count <- count(Conch_Deep_2001_herb, vars = "SPECIES_CD")
Conch_Deep_2001_herb_count$Year <- ('2001')
Conch_Deep_2001_herb_count$sitename <- ('Conch Deep')
Conch_Deep_2001_herb_count$Type <- "Herbivorous"

Conch_Deep_2001_comm <- merge(Conch_Deep_2001, Comm, by = c("SPECIES_CD"))
Conch_Deep_2001_comm_count <- count(Conch_Deep_2001_comm, vars = "SPECIES_CD")
Conch_Deep_2001_comm_count$Year <- ('2001')
Conch_Deep_2001_comm_count$sitename <- ('Conch Deep')
Conch_Deep_2001_comm_count$Type <- "Commercial"


Conch_Deep_2001_total_count <- rbind(Conch_Deep_2001_herb_count, Conch_Deep_2001_comm_count)


Conch_Deep_2002 <- import("UK/Conch_Deep/data/Conch_Deep_2002.xls")


Conch_Deep_2002_herb <- merge(Conch_Deep_2002, Herb, by = c("SPECIES_CD"))
Conch_Deep_2002_herb_count <- count(Conch_Deep_2002_herb, vars = "SPECIES_CD")
Conch_Deep_2002_herb_count$Year <- ('2002')
Conch_Deep_2002_herb_count$sitename <- ('Conch Deep')
Conch_Deep_2002_herb_count$Type <- "Herbivorous"

Conch_Deep_2002_comm <- merge(Conch_Deep_2002, Comm, by = c("SPECIES_CD"))
Conch_Deep_2002_comm_count <- count(Conch_Deep_2002_comm, vars = "SPECIES_CD")
Conch_Deep_2002_comm_count$Year <- ('2002')
Conch_Deep_2002_comm_count$sitename <- ('Conch Deep')
Conch_Deep_2002_comm_count$Type <- "Commercial"


Conch_Deep_2002_total_count <- rbind(Conch_Deep_2002_herb_count, Conch_Deep_2002_comm_count)



Conch_Deep_2003 <- import("UK/Conch_Deep/data/Conch_Deep_2003.xls")


Conch_Deep_2003_herb <- merge(Conch_Deep_2003, Herb, by = c("SPECIES_CD"))
Conch_Deep_2003_herb_count <- count(Conch_Deep_2003_herb, vars = "SPECIES_CD")
Conch_Deep_2003_herb_count$Year <- ('2003')
Conch_Deep_2003_herb_count$sitename <- ('Conch Deep')
Conch_Deep_2003_herb_count$Type <- "Herbivorous"

Conch_Deep_2003_comm <- merge(Conch_Deep_2003, Comm, by = c("SPECIES_CD"))
Conch_Deep_2003_comm_count <- count(Conch_Deep_2003_comm, vars = "SPECIES_CD")
Conch_Deep_2003_comm_count$Year <- ('2003')
Conch_Deep_2003_comm_count$sitename <- ('Conch Deep')
Conch_Deep_2003_comm_count$Type <- "Commercial"


Conch_Deep_2003_total_count <- rbind(Conch_Deep_2003_herb_count, Conch_Deep_2003_comm_count)




Conch_Deep_2004 <- import("UK/Conch_Deep/data/Conch_Deep_2004.xls")


Conch_Deep_2004_herb <- merge(Conch_Deep_2004, Herb, by = c("SPECIES_CD"))
Conch_Deep_2004_herb_count <- count(Conch_Deep_2004_herb, vars = "SPECIES_CD")
Conch_Deep_2004_herb_count$Year <- ('2004')
Conch_Deep_2004_herb_count$sitename <- ('Conch Deep')
Conch_Deep_2004_herb_count$Type <- "Herbivorous"

Conch_Deep_2004_comm <- merge(Conch_Deep_2004, Comm, by = c("SPECIES_CD"))
Conch_Deep_2004_comm_count <- count(Conch_Deep_2004_comm, vars = "SPECIES_CD")
Conch_Deep_2004_comm_count$Year <- ('2004')
Conch_Deep_2004_comm_count$sitename <- ('Conch Deep')
Conch_Deep_2004_comm_count$Type <- "Commercial"


Conch_Deep_2004_total_count <- rbind(Conch_Deep_2004_herb_count, Conch_Deep_2004_comm_count)


Conch_Deep_2005 <- import("UK/Conch_Deep/data/Conch_Deep_2005.xls")


Conch_Deep_2005_herb <- merge(Conch_Deep_2005, Herb, by = c("SPECIES_CD"))
Conch_Deep_2005_herb_count <- count(Conch_Deep_2005_herb, vars = "SPECIES_CD")
Conch_Deep_2005_herb_count$Year <- ('2005')
Conch_Deep_2005_herb_count$sitename <- ('Conch Deep')
Conch_Deep_2005_herb_count$Type <- "Herbivorous"

Conch_Deep_2005_comm <- merge(Conch_Deep_2005, Comm, by = c("SPECIES_CD"))
Conch_Deep_2005_comm_count <- count(Conch_Deep_2005_comm, vars = "SPECIES_CD")
Conch_Deep_2005_comm_count$Year <- ('2005')
Conch_Deep_2005_comm_count$sitename <- ('Conch Deep')
Conch_Deep_2005_comm_count$Type <- "Commercial"


Conch_Deep_2005_total_count <- rbind(Conch_Deep_2005_herb_count, Conch_Deep_2005_comm_count)




Conch_Deep_2006 <- import("UK/Conch_Deep/data/Conch_Deep_2006.xls")


Conch_Deep_2006_herb <- merge(Conch_Deep_2006, Herb, by = c("SPECIES_CD"))
Conch_Deep_2006_herb_count <- count(Conch_Deep_2006_herb, vars = "SPECIES_CD")
Conch_Deep_2006_herb_count$Year <- ('2006')
Conch_Deep_2006_herb_count$sitename <- ('Conch Deep')
Conch_Deep_2006_herb_count$Type <- "Herbivorous"

Conch_Deep_2006_comm <- merge(Conch_Deep_2006, Comm, by = c("SPECIES_CD"))
Conch_Deep_2006_comm_count <- count(Conch_Deep_2006_comm, vars = "SPECIES_CD")
Conch_Deep_2006_comm_count$Year <- ('2006')
Conch_Deep_2006_comm_count$sitename <- ('Conch Deep')
Conch_Deep_2006_comm_count$Type <- "Commercial"


Conch_Deep_2006_total_count <- rbind(Conch_Deep_2006_herb_count, Conch_Deep_2006_comm_count)



Conch_Deep_2007 <- import("UK/Conch_Deep/data/Conch_Deep_2007.xls")


Conch_Deep_2007_herb <- merge(Conch_Deep_2007, Herb, by = c("SPECIES_CD"))
Conch_Deep_2007_herb_count <- count(Conch_Deep_2007_herb, vars = "SPECIES_CD")
Conch_Deep_2007_herb_count$Year <- ('2007')
Conch_Deep_2007_herb_count$sitename <- ('Conch Deep')
Conch_Deep_2007_herb_count$Type <- "Herbivorous"

Conch_Deep_2007_comm <- merge(Conch_Deep_2007, Comm, by = c("SPECIES_CD"))
Conch_Deep_2007_comm_count <- count(Conch_Deep_2007_comm, vars = "SPECIES_CD")
Conch_Deep_2007_comm_count$Year <- ('2007')
Conch_Deep_2007_comm_count$sitename <- ('Conch Deep')
Conch_Deep_2007_comm_count$Type <- "Commercial"


Conch_Deep_2007_total_count <- rbind(Conch_Deep_2007_herb_count, Conch_Deep_2007_comm_count)




Conch_Deep_2008 <- import("UK/Conch_Deep/data/Conch_Deep_2008.xls")


Conch_Deep_2008_herb <- merge(Conch_Deep_2008, Herb, by = c("SPECIES_CD"))
Conch_Deep_2008_herb_count <- count(Conch_Deep_2008_herb, vars = "SPECIES_CD")
Conch_Deep_2008_herb_count$Year <- ('2008')
Conch_Deep_2008_herb_count$sitename <- ('Conch Deep')
Conch_Deep_2008_herb_count$Type <- "Herbivorous"

Conch_Deep_2008_comm <- merge(Conch_Deep_2008, Comm, by = c("SPECIES_CD"))
Conch_Deep_2008_comm_count <- count(Conch_Deep_2008_comm, vars = "SPECIES_CD")
Conch_Deep_2008_comm_count$Year <- ('2008')
Conch_Deep_2008_comm_count$sitename <- ('Conch Deep')
Conch_Deep_2008_comm_count$Type <- "Commercial"


Conch_Deep_2008_total_count <- rbind(Conch_Deep_2008_herb_count, Conch_Deep_2008_comm_count)



Conch_Deep_2009 <- import("UK/Conch_Deep/data/Conch_Deep_2009.xls")


Conch_Deep_2009_herb <- merge(Conch_Deep_2009, Herb, by = c("SPECIES_CD"))
Conch_Deep_2009_herb_count <- count(Conch_Deep_2009_herb, vars = "SPECIES_CD")
Conch_Deep_2009_herb_count$Year <- ('2009')
Conch_Deep_2009_herb_count$sitename <- ('Conch Deep')
Conch_Deep_2009_herb_count$Type <- "Herbivorous"

Conch_Deep_2009_comm <- merge(Conch_Deep_2009, Comm, by = c("SPECIES_CD"))
Conch_Deep_2009_comm_count <- count(Conch_Deep_2009_comm, vars = "SPECIES_CD")
Conch_Deep_2009_comm_count$Year <- ('2009')
Conch_Deep_2009_comm_count$sitename <- ('Conch Deep')
Conch_Deep_2009_comm_count$Type <- "Commercial"


Conch_Deep_2009_total_count <- rbind(Conch_Deep_2009_herb_count, Conch_Deep_2009_comm_count)





Conch_Deep_2010 <- import("UK/Conch_Deep/data/Conch_Deep_2010.xls")


Conch_Deep_2010_herb <- merge(Conch_Deep_2010, Herb, by = c("SPECIES_CD"))
Conch_Deep_2010_herb_count <- count(Conch_Deep_2010_herb, vars = "SPECIES_CD")
Conch_Deep_2010_herb_count$Year <- ('2010')
Conch_Deep_2010_herb_count$sitename <- ('Conch Deep')
Conch_Deep_2010_herb_count$Type <- "Herbivorous"

Conch_Deep_2010_comm <- merge(Conch_Deep_2010, Comm, by = c("SPECIES_CD"))
Conch_Deep_2010_comm_count <- count(Conch_Deep_2010_comm, vars = "SPECIES_CD")
Conch_Deep_2010_comm_count$Year <- ('2010')
Conch_Deep_2010_comm_count$sitename <- ('Conch Deep')
Conch_Deep_2010_comm_count$Type <- "Commercial"


Conch_Deep_2010_total_count <- rbind(Conch_Deep_2010_herb_count, Conch_Deep_2010_comm_count)


Conch_Deep_2011 <- import("UK/Conch_Deep/data/Conch_Deep_2011.xls")


Conch_Deep_2011_herb <- merge(Conch_Deep_2011, Herb, by = c("SPECIES_CD"))
Conch_Deep_2011_herb_count <- count(Conch_Deep_2011_herb, vars = "SPECIES_CD")
Conch_Deep_2011_herb_count$Year <- ('2011')
Conch_Deep_2011_herb_count$sitename <- ('Conch Deep')
Conch_Deep_2011_herb_count$Type <- "Herbivorous"

Conch_Deep_2011_comm <- merge(Conch_Deep_2011, Comm, by = c("SPECIES_CD"))
Conch_Deep_2011_comm_count <- count(Conch_Deep_2011_comm, vars = "SPECIES_CD")
Conch_Deep_2011_comm_count$Year <- ('2011')
Conch_Deep_2011_comm_count$sitename <- ('Conch Deep')
Conch_Deep_2011_comm_count$Type <- "Commercial"


Conch_Deep_2011_total_count <- rbind(Conch_Deep_2011_herb_count, Conch_Deep_2011_comm_count)





Conch_Deep_2012 <- import("UK/Conch_Deep/data/Conch_Deep_2012.xls")


Conch_Deep_2012_herb <- merge(Conch_Deep_2012, Herb, by = c("SPECIES_CD"))
Conch_Deep_2012_herb_count <- count(Conch_Deep_2012_herb, vars = "SPECIES_CD")
Conch_Deep_2012_herb_count$Year <- ('2012')
Conch_Deep_2012_herb_count$sitename <- ('Conch Deep')
Conch_Deep_2012_herb_count$Type <- "Herbivorous"

Conch_Deep_2012_comm <- merge(Conch_Deep_2012, Comm, by = c("SPECIES_CD"))
Conch_Deep_2012_comm_count <- count(Conch_Deep_2012_comm, vars = "SPECIES_CD")
Conch_Deep_2012_comm_count$Year <- ('2012')
Conch_Deep_2012_comm_count$sitename <- ('Conch Deep')
Conch_Deep_2012_comm_count$Type <- "Commercial"


Conch_Deep_2012_total_count <- rbind(Conch_Deep_2012_herb_count, Conch_Deep_2012_comm_count)



Conch_Deep_2014 <- import("UK/Conch_Deep/data/Conch_Deep_2014.xls")


Conch_Deep_2014_herb <- merge(Conch_Deep_2014, Herb, by = c("SPECIES_CD"))
Conch_Deep_2014_herb_count <- count(Conch_Deep_2014_herb, vars = "SPECIES_CD")
Conch_Deep_2014_herb_count$Year <- ('2014')
Conch_Deep_2014_herb_count$sitename <- ('Conch Deep')
Conch_Deep_2014_herb_count$Type <- "Herbivorous"

Conch_Deep_2014_comm <- merge(Conch_Deep_2014, Comm, by = c("SPECIES_CD"))
Conch_Deep_2014_comm_count <- count(Conch_Deep_2014_comm, vars = "SPECIES_CD")
Conch_Deep_2014_comm_count$Year <- ('2014')
Conch_Deep_2014_comm_count$sitename <- ('Conch Deep')
Conch_Deep_2014_comm_count$Type <- "Commercial"


Conch_Deep_2014_total_count <- rbind(Conch_Deep_2014_herb_count, Conch_Deep_2014_comm_count)




Conch_Deep_2016 <- import("UK/Conch_Deep/data/Conch_Deep_2016.xls")


Conch_Deep_2016_herb <- merge(Conch_Deep_2016, Herb, by = c("SPECIES_CD"))
Conch_Deep_2016_herb_count <- count(Conch_Deep_2016_herb, vars = "SPECIES_CD")
Conch_Deep_2016_herb_count$Year <- ('2016')
Conch_Deep_2016_herb_count$sitename <- ('Conch Deep')
Conch_Deep_2016_herb_count$Type <- "Herbivorous"

Conch_Deep_2016_comm <- merge(Conch_Deep_2016, Comm, by = c("SPECIES_CD"))
Conch_Deep_2016_comm_count <- count(Conch_Deep_2016_comm, vars = "SPECIES_CD")
Conch_Deep_2016_comm_count$Year <- ('2016')
Conch_Deep_2016_comm_count$sitename <- ('Conch Deep')
Conch_Deep_2016_comm_count$Type <- "Commercial"


Conch_Deep_2016_total_count <- rbind(Conch_Deep_2016_herb_count, Conch_Deep_2016_comm_count)



Conch_Deep_2018 <- import("UK/Conch_Deep/data/Conch_Deep_2018.xls")


Conch_Deep_2018_herb <- merge(Conch_Deep_2018, Herb, by = c("SPECIES_CD"))
Conch_Deep_2018_herb_count <- count(Conch_Deep_2018_herb, vars = "SPECIES_CD")
Conch_Deep_2018_herb_count$Year <- ('2018')
Conch_Deep_2018_herb_count$sitename <- ('Conch Deep')
Conch_Deep_2018_herb_count$Type <- "Herbivorous"

Conch_Deep_2018_comm <- merge(Conch_Deep_2018, Comm, by = c("SPECIES_CD"))
Conch_Deep_2018_comm_count <- count(Conch_Deep_2018_comm, vars = "SPECIES_CD")
Conch_Deep_2018_comm_count$Year <- ('2018')
Conch_Deep_2018_comm_count$sitename <- ('Conch Deep')
Conch_Deep_2018_comm_count$Type <- "Commercial"


Conch_Deep_2018_total_count <- rbind(Conch_Deep_2018_herb_count, Conch_Deep_2018_comm_count)





Conch_Deep_all <- rbind(Conch_Deep_1999_total_count,Conch_Deep_2000_total_count,Conch_Deep_2001_total_count,Conch_Deep_2002_total_count,Conch_Deep_2003_total_count,Conch_Deep_2004_total_count,Conch_Deep_2005_total_count,Conch_Deep_2006_total_count,Conch_Deep_2007_total_count,Conch_Deep_2008_total_count,Conch_Deep_2009_total_count, Conch_Deep_2010_total_count,Conch_Deep_2011_total_count, Conch_Deep_2012_total_count, Conch_Deep_2014_total_count, Conch_Deep_2016_total_count,Conch_Deep_2018_total_count)


export(Conch_Deep_all, "UK/Conch_Deep/data/Conch_Deep_count_herb_comm.csv")




Conch_Shallow_1999 <- import("UK/Conch_Shallow/data/Conch_Shallow_1999.xls")


Conch_Shallow_1999_herb <- merge(Conch_Shallow_1999, Herb, by = c("SPECIES_CD"))
Conch_Shallow_1999_herb_count <- count(Conch_Shallow_1999_herb, vars = "SPECIES_CD")
Conch_Shallow_1999_herb_count$Year <- ('1999')
Conch_Shallow_1999_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_1999_herb_count$Type <- "Herbivorous"

Conch_Shallow_1999_comm <- merge(Conch_Shallow_1999, Comm, by = c("SPECIES_CD"))
Conch_Shallow_1999_comm_count <- count(Conch_Shallow_1999_comm, vars = "SPECIES_CD")
Conch_Shallow_1999_comm_count$Year <- ('1999')
Conch_Shallow_1999_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_1999_comm_count$Type <- "Commercial"


Conch_Shallow_1999_total_count <- rbind(Conch_Shallow_1999_herb_count, Conch_Shallow_1999_comm_count)




Conch_Shallow_2000 <- import("UK/Conch_Shallow/data/Conch_Shallow_2000.xls")


Conch_Shallow_2000_herb <- merge(Conch_Shallow_2000, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2000_herb_count <- count(Conch_Shallow_2000_herb, vars = "SPECIES_CD")
Conch_Shallow_2000_herb_count$Year <- ('2000')
Conch_Shallow_2000_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_2000_herb_count$Type <- "Herbivorous"

Conch_Shallow_2000_comm <- merge(Conch_Shallow_2000, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2000_comm_count <- count(Conch_Shallow_2000_comm, vars = "SPECIES_CD")
Conch_Shallow_2000_comm_count$Year <- ('2000')
Conch_Shallow_2000_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_2000_comm_count$Type <- "Commercial"


Conch_Shallow_2000_total_count <- rbind(Conch_Shallow_2000_herb_count, Conch_Shallow_2000_comm_count)


Conch_Shallow_2001 <- import("UK/Conch_Shallow/data/Conch_Shallow_2001.xls")


Conch_Shallow_2001_herb <- merge(Conch_Shallow_2001, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2001_herb_count <- count(Conch_Shallow_2001_herb, vars = "SPECIES_CD")
Conch_Shallow_2001_herb_count$Year <- ('2001')
Conch_Shallow_2001_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_2001_herb_count$Type <- "Herbivorous"

Conch_Shallow_2001_comm <- merge(Conch_Shallow_2001, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2001_comm_count <- count(Conch_Shallow_2001_comm, vars = "SPECIES_CD")
Conch_Shallow_2001_comm_count$Year <- ('2001')
Conch_Shallow_2001_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_2001_comm_count$Type <- "Commercial"


Conch_Shallow_2001_total_count <- rbind(Conch_Shallow_2001_herb_count, Conch_Shallow_2001_comm_count)


Conch_Shallow_2002 <- import("UK/Conch_Shallow/data/Conch_Shallow_2002.xls")


Conch_Shallow_2002_herb <- merge(Conch_Shallow_2002, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2002_herb_count <- count(Conch_Shallow_2002_herb, vars = "SPECIES_CD")
Conch_Shallow_2002_herb_count$Year <- ('2002')
Conch_Shallow_2002_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_2002_herb_count$Type <- "Herbivorous"

Conch_Shallow_2002_comm <- merge(Conch_Shallow_2002, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2002_comm_count <- count(Conch_Shallow_2002_comm, vars = "SPECIES_CD")
Conch_Shallow_2002_comm_count$Year <- ('2002')
Conch_Shallow_2002_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_2002_comm_count$Type <- "Commercial"


Conch_Shallow_2002_total_count <- rbind(Conch_Shallow_2002_herb_count, Conch_Shallow_2002_comm_count)



Conch_Shallow_2003 <- import("UK/Conch_Shallow/data/Conch_Shallow_2003.xls")


Conch_Shallow_2003_herb <- merge(Conch_Shallow_2003, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2003_herb_count <- count(Conch_Shallow_2003_herb, vars = "SPECIES_CD")
Conch_Shallow_2003_herb_count$Year <- ('2003')
Conch_Shallow_2003_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_2003_herb_count$Type <- "Herbivorous"

Conch_Shallow_2003_comm <- merge(Conch_Shallow_2003, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2003_comm_count <- count(Conch_Shallow_2003_comm, vars = "SPECIES_CD")
Conch_Shallow_2003_comm_count$Year <- ('2003')
Conch_Shallow_2003_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_2003_comm_count$Type <- "Commercial"


Conch_Shallow_2003_total_count <- rbind(Conch_Shallow_2003_herb_count, Conch_Shallow_2003_comm_count)




Conch_Shallow_2004 <- import("UK/Conch_Shallow/data/Conch_Shallow_2004.xls")


Conch_Shallow_2004_herb <- merge(Conch_Shallow_2004, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2004_herb_count <- count(Conch_Shallow_2004_herb, vars = "SPECIES_CD")
Conch_Shallow_2004_herb_count$Year <- ('2004')
Conch_Shallow_2004_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_2004_herb_count$Type <- "Herbivorous"

Conch_Shallow_2004_comm <- merge(Conch_Shallow_2004, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2004_comm_count <- count(Conch_Shallow_2004_comm, vars = "SPECIES_CD")
Conch_Shallow_2004_comm_count$Year <- ('2004')
Conch_Shallow_2004_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_2004_comm_count$Type <- "Commercial"


Conch_Shallow_2004_total_count <- rbind(Conch_Shallow_2004_herb_count, Conch_Shallow_2004_comm_count)


Conch_Shallow_2005 <- import("UK/Conch_Shallow/data/Conch_Shallow_2005.xls")


Conch_Shallow_2005_herb <- merge(Conch_Shallow_2005, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2005_herb_count <- count(Conch_Shallow_2005_herb, vars = "SPECIES_CD")
Conch_Shallow_2005_herb_count$Year <- ('2005')
Conch_Shallow_2005_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_2005_herb_count$Type <- "Herbivorous"

Conch_Shallow_2005_comm <- merge(Conch_Shallow_2005, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2005_comm_count <- count(Conch_Shallow_2005_comm, vars = "SPECIES_CD")
Conch_Shallow_2005_comm_count$Year <- ('2005')
Conch_Shallow_2005_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_2005_comm_count$Type <- "Commercial"


Conch_Shallow_2005_total_count <- rbind(Conch_Shallow_2005_herb_count, Conch_Shallow_2005_comm_count)




Conch_Shallow_2006 <- import("UK/Conch_Shallow/data/Conch_Shallow_2006.xls")


Conch_Shallow_2006_herb <- merge(Conch_Shallow_2006, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2006_herb_count <- count(Conch_Shallow_2006_herb, vars = "SPECIES_CD")
Conch_Shallow_2006_herb_count$Year <- ('2006')
Conch_Shallow_2006_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_2006_herb_count$Type <- "Herbivorous"

Conch_Shallow_2006_comm <- merge(Conch_Shallow_2006, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2006_comm_count <- count(Conch_Shallow_2006_comm, vars = "SPECIES_CD")
Conch_Shallow_2006_comm_count$Year <- ('2006')
Conch_Shallow_2006_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_2006_comm_count$Type <- "Commercial"


Conch_Shallow_2006_total_count <- rbind(Conch_Shallow_2006_herb_count, Conch_Shallow_2006_comm_count)



Conch_Shallow_2007 <- import("UK/Conch_Shallow/data/Conch_Shallow_2007.xls")


Conch_Shallow_2007_herb <- merge(Conch_Shallow_2007, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2007_herb_count <- count(Conch_Shallow_2007_herb, vars = "SPECIES_CD")
Conch_Shallow_2007_herb_count$Year <- ('2007')
Conch_Shallow_2007_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_2007_herb_count$Type <- "Herbivorous"

Conch_Shallow_2007_comm <- merge(Conch_Shallow_2007, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2007_comm_count <- count(Conch_Shallow_2007_comm, vars = "SPECIES_CD")
Conch_Shallow_2007_comm_count$Year <- ('2007')
Conch_Shallow_2007_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_2007_comm_count$Type <- "Commercial"


Conch_Shallow_2007_total_count <- rbind(Conch_Shallow_2007_herb_count, Conch_Shallow_2007_comm_count)




Conch_Shallow_2008 <- import("UK/Conch_Shallow/data/Conch_Shallow_2008.xls")


Conch_Shallow_2008_herb <- merge(Conch_Shallow_2008, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2008_herb_count <- count(Conch_Shallow_2008_herb, vars = "SPECIES_CD")
Conch_Shallow_2008_herb_count$Year <- ('2008')
Conch_Shallow_2008_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_2008_herb_count$Type <- "Herbivorous"

Conch_Shallow_2008_comm <- merge(Conch_Shallow_2008, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2008_comm_count <- count(Conch_Shallow_2008_comm, vars = "SPECIES_CD")
Conch_Shallow_2008_comm_count$Year <- ('2008')
Conch_Shallow_2008_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_2008_comm_count$Type <- "Commercial"


Conch_Shallow_2008_total_count <- rbind(Conch_Shallow_2008_herb_count, Conch_Shallow_2008_comm_count)



Conch_Shallow_2009 <- import("UK/Conch_Shallow/data/Conch_Shallow_2009.xls")


Conch_Shallow_2009_herb <- merge(Conch_Shallow_2009, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2009_herb_count <- count(Conch_Shallow_2009_herb, vars = "SPECIES_CD")
Conch_Shallow_2009_herb_count$Year <- ('2009')
Conch_Shallow_2009_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_2009_herb_count$Type <- "Herbivorous"

Conch_Shallow_2009_comm <- merge(Conch_Shallow_2009, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2009_comm_count <- count(Conch_Shallow_2009_comm, vars = "SPECIES_CD")
Conch_Shallow_2009_comm_count$Year <- ('2009')
Conch_Shallow_2009_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_2009_comm_count$Type <- "Commercial"


Conch_Shallow_2009_total_count <- rbind(Conch_Shallow_2009_herb_count, Conch_Shallow_2009_comm_count)





Conch_Shallow_2010 <- import("UK/Conch_Shallow/data/Conch_Shallow_2010.xls")


Conch_Shallow_2010_herb <- merge(Conch_Shallow_2010, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2010_herb_count <- count(Conch_Shallow_2010_herb, vars = "SPECIES_CD")
Conch_Shallow_2010_herb_count$Year <- ('2010')
Conch_Shallow_2010_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_2010_herb_count$Type <- "Herbivorous"

Conch_Shallow_2010_comm <- merge(Conch_Shallow_2010, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2010_comm_count <- count(Conch_Shallow_2010_comm, vars = "SPECIES_CD")
Conch_Shallow_2010_comm_count$Year <- ('2010')
Conch_Shallow_2010_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_2010_comm_count$Type <- "Commercial"


Conch_Shallow_2010_total_count <- rbind(Conch_Shallow_2010_herb_count, Conch_Shallow_2010_comm_count)


Conch_Shallow_2011 <- import("UK/Conch_Shallow/data/Conch_Shallow_2011.xls")


Conch_Shallow_2011_herb <- merge(Conch_Shallow_2011, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2011_herb_count <- count(Conch_Shallow_2011_herb, vars = "SPECIES_CD")
Conch_Shallow_2011_herb_count$Year <- ('2011')
Conch_Shallow_2011_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_2011_herb_count$Type <- "Herbivorous"

Conch_Shallow_2011_comm <- merge(Conch_Shallow_2011, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2011_comm_count <- count(Conch_Shallow_2011_comm, vars = "SPECIES_CD")
Conch_Shallow_2011_comm_count$Year <- ('2011')
Conch_Shallow_2011_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_2011_comm_count$Type <- "Commercial"


Conch_Shallow_2011_total_count <- rbind(Conch_Shallow_2011_herb_count, Conch_Shallow_2011_comm_count)





Conch_Shallow_2012 <- import("UK/Conch_Shallow/data/Conch_Shallow_2012.xls")


Conch_Shallow_2012_herb <- merge(Conch_Shallow_2012, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2012_herb_count <- count(Conch_Shallow_2012_herb, vars = "SPECIES_CD")
Conch_Shallow_2012_herb_count$Year <- ('2012')
Conch_Shallow_2012_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_2012_herb_count$Type <- "Herbivorous"

Conch_Shallow_2012_comm <- merge(Conch_Shallow_2012, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2012_comm_count <- count(Conch_Shallow_2012_comm, vars = "SPECIES_CD")
Conch_Shallow_2012_comm_count$Year <- ('2012')
Conch_Shallow_2012_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_2012_comm_count$Type <- "Commercial"


Conch_Shallow_2012_total_count <- rbind(Conch_Shallow_2012_herb_count, Conch_Shallow_2012_comm_count)



Conch_Shallow_2014 <- import("UK/Conch_Shallow/data/Conch_Shallow_2014.xls")


Conch_Shallow_2014_herb <- merge(Conch_Shallow_2014, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2014_herb_count <- count(Conch_Shallow_2014_herb, vars = "SPECIES_CD")
Conch_Shallow_2014_herb_count$Year <- ('2014')
Conch_Shallow_2014_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_2014_herb_count$Type <- "Herbivorous"

Conch_Shallow_2014_comm <- merge(Conch_Shallow_2014, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2014_comm_count <- count(Conch_Shallow_2014_comm, vars = "SPECIES_CD")
Conch_Shallow_2014_comm_count$Year <- ('2014')
Conch_Shallow_2014_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_2014_comm_count$Type <- "Commercial"


Conch_Shallow_2014_total_count <- rbind(Conch_Shallow_2014_herb_count, Conch_Shallow_2014_comm_count)




Conch_Shallow_2016 <- import("UK/Conch_Shallow/data/Conch_Shallow_2016.xls")


Conch_Shallow_2016_herb <- merge(Conch_Shallow_2016, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2016_herb_count <- count(Conch_Shallow_2016_herb, vars = "SPECIES_CD")
Conch_Shallow_2016_herb_count$Year <- ('2016')
Conch_Shallow_2016_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_2016_herb_count$Type <- "Herbivorous"

Conch_Shallow_2016_comm <- merge(Conch_Shallow_2016, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2016_comm_count <- count(Conch_Shallow_2016_comm, vars = "SPECIES_CD")
Conch_Shallow_2016_comm_count$Year <- ('2016')
Conch_Shallow_2016_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_2016_comm_count$Type <- "Commercial"


Conch_Shallow_2016_total_count <- rbind(Conch_Shallow_2016_herb_count, Conch_Shallow_2016_comm_count)



Conch_Shallow_2018 <- import("UK/Conch_Shallow/data/Conch_Shallow_2018.xls")


Conch_Shallow_2018_herb <- merge(Conch_Shallow_2018, Herb, by = c("SPECIES_CD"))
Conch_Shallow_2018_herb_count <- count(Conch_Shallow_2018_herb, vars = "SPECIES_CD")
Conch_Shallow_2018_herb_count$Year <- ('2018')
Conch_Shallow_2018_herb_count$sitename <- ('Conch Shallow')
Conch_Shallow_2018_herb_count$Type <- "Herbivorous"

Conch_Shallow_2018_comm <- merge(Conch_Shallow_2018, Comm, by = c("SPECIES_CD"))
Conch_Shallow_2018_comm_count <- count(Conch_Shallow_2018_comm, vars = "SPECIES_CD")
Conch_Shallow_2018_comm_count$Year <- ('2018')
Conch_Shallow_2018_comm_count$sitename <- ('Conch Shallow')
Conch_Shallow_2018_comm_count$Type <- "Commercial"


Conch_Shallow_2018_total_count <- rbind(Conch_Shallow_2018_herb_count, Conch_Shallow_2018_comm_count)





Conch_Shallow_all <- rbind(Conch_Shallow_1999_total_count,Conch_Shallow_2000_total_count,Conch_Shallow_2001_total_count,Conch_Shallow_2002_total_count,Conch_Shallow_2003_total_count,Conch_Shallow_2004_total_count,Conch_Shallow_2005_total_count,Conch_Shallow_2006_total_count,Conch_Shallow_2007_total_count,Conch_Shallow_2008_total_count,Conch_Shallow_2009_total_count, Conch_Shallow_2010_total_count,Conch_Shallow_2011_total_count, Conch_Shallow_2012_total_count, Conch_Shallow_2014_total_count, Conch_Shallow_2016_total_count,Conch_Shallow_2018_total_count)


export(Conch_Shallow_all, "UK/Conch_Shallow/data/Conch_Shallow_count_herb_comm.csv")




Grecian_Rocks_1999 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_1999.xls")


Grecian_Rocks_1999_herb <- merge(Grecian_Rocks_1999, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_1999_herb_count <- count(Grecian_Rocks_1999_herb, vars = "SPECIES_CD")
Grecian_Rocks_1999_herb_count$Year <- ('1999')
Grecian_Rocks_1999_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_1999_herb_count$Type <- "Herbivorous"

Grecian_Rocks_1999_comm <- merge(Grecian_Rocks_1999, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_1999_comm_count <- count(Grecian_Rocks_1999_comm, vars = "SPECIES_CD")
Grecian_Rocks_1999_comm_count$Year <- ('1999')
Grecian_Rocks_1999_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_1999_comm_count$Type <- "Commercial"


Grecian_Rocks_1999_total_count <- rbind(Grecian_Rocks_1999_herb_count, Grecian_Rocks_1999_comm_count)




Grecian_Rocks_2000 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_2000.xls")


Grecian_Rocks_2000_herb <- merge(Grecian_Rocks_2000, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2000_herb_count <- count(Grecian_Rocks_2000_herb, vars = "SPECIES_CD")
Grecian_Rocks_2000_herb_count$Year <- ('2000')
Grecian_Rocks_2000_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2000_herb_count$Type <- "Herbivorous"

Grecian_Rocks_2000_comm <- merge(Grecian_Rocks_2000, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2000_comm_count <- count(Grecian_Rocks_2000_comm, vars = "SPECIES_CD")
Grecian_Rocks_2000_comm_count$Year <- ('2000')
Grecian_Rocks_2000_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2000_comm_count$Type <- "Commercial"


Grecian_Rocks_2000_total_count <- rbind(Grecian_Rocks_2000_herb_count, Grecian_Rocks_2000_comm_count)


Grecian_Rocks_2001 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_2001.xls")


Grecian_Rocks_2001_herb <- merge(Grecian_Rocks_2001, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2001_herb_count <- count(Grecian_Rocks_2001_herb, vars = "SPECIES_CD")
Grecian_Rocks_2001_herb_count$Year <- ('2001')
Grecian_Rocks_2001_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2001_herb_count$Type <- "Herbivorous"

Grecian_Rocks_2001_comm <- merge(Grecian_Rocks_2001, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2001_comm_count <- count(Grecian_Rocks_2001_comm, vars = "SPECIES_CD")
Grecian_Rocks_2001_comm_count$Year <- ('2001')
Grecian_Rocks_2001_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2001_comm_count$Type <- "Commercial"


Grecian_Rocks_2001_total_count <- rbind(Grecian_Rocks_2001_herb_count, Grecian_Rocks_2001_comm_count)


Grecian_Rocks_2002 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_2002.xls")


Grecian_Rocks_2002_herb <- merge(Grecian_Rocks_2002, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2002_herb_count <- count(Grecian_Rocks_2002_herb, vars = "SPECIES_CD")
Grecian_Rocks_2002_herb_count$Year <- ('2002')
Grecian_Rocks_2002_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2002_herb_count$Type <- "Herbivorous"

Grecian_Rocks_2002_comm <- merge(Grecian_Rocks_2002, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2002_comm_count <- count(Grecian_Rocks_2002_comm, vars = "SPECIES_CD")
Grecian_Rocks_2002_comm_count$Year <- ('2002')
Grecian_Rocks_2002_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2002_comm_count$Type <- "Commercial"


Grecian_Rocks_2002_total_count <- rbind(Grecian_Rocks_2002_herb_count, Grecian_Rocks_2002_comm_count)



Grecian_Rocks_2003 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_2003.xls")


Grecian_Rocks_2003_herb <- merge(Grecian_Rocks_2003, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2003_herb_count <- count(Grecian_Rocks_2003_herb, vars = "SPECIES_CD")
Grecian_Rocks_2003_herb_count$Year <- ('2003')
Grecian_Rocks_2003_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2003_herb_count$Type <- "Herbivorous"

Grecian_Rocks_2003_comm <- merge(Grecian_Rocks_2003, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2003_comm_count <- count(Grecian_Rocks_2003_comm, vars = "SPECIES_CD")
Grecian_Rocks_2003_comm_count$Year <- ('2003')
Grecian_Rocks_2003_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2003_comm_count$Type <- "Commercial"


Grecian_Rocks_2003_total_count <- rbind(Grecian_Rocks_2003_herb_count, Grecian_Rocks_2003_comm_count)




Grecian_Rocks_2004 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_2004.xls")


Grecian_Rocks_2004_herb <- merge(Grecian_Rocks_2004, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2004_herb_count <- count(Grecian_Rocks_2004_herb, vars = "SPECIES_CD")
Grecian_Rocks_2004_herb_count$Year <- ('2004')
Grecian_Rocks_2004_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2004_herb_count$Type <- "Herbivorous"

Grecian_Rocks_2004_comm <- merge(Grecian_Rocks_2004, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2004_comm_count <- count(Grecian_Rocks_2004_comm, vars = "SPECIES_CD")
Grecian_Rocks_2004_comm_count$Year <- ('2004')
Grecian_Rocks_2004_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2004_comm_count$Type <- "Commercial"


Grecian_Rocks_2004_total_count <- rbind(Grecian_Rocks_2004_herb_count, Grecian_Rocks_2004_comm_count)


Grecian_Rocks_2005 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_2005.xls")


Grecian_Rocks_2005_herb <- merge(Grecian_Rocks_2005, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2005_herb_count <- count(Grecian_Rocks_2005_herb, vars = "SPECIES_CD")
Grecian_Rocks_2005_herb_count$Year <- ('2005')
Grecian_Rocks_2005_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2005_herb_count$Type <- "Herbivorous"

Grecian_Rocks_2005_comm <- merge(Grecian_Rocks_2005, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2005_comm_count <- count(Grecian_Rocks_2005_comm, vars = "SPECIES_CD")
Grecian_Rocks_2005_comm_count$Year <- ('2005')
Grecian_Rocks_2005_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2005_comm_count$Type <- "Commercial"


Grecian_Rocks_2005_total_count <- rbind(Grecian_Rocks_2005_herb_count, Grecian_Rocks_2005_comm_count)




Grecian_Rocks_2006 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_2006.xls")


Grecian_Rocks_2006_herb <- merge(Grecian_Rocks_2006, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2006_herb_count <- count(Grecian_Rocks_2006_herb, vars = "SPECIES_CD")
Grecian_Rocks_2006_herb_count$Year <- ('2006')
Grecian_Rocks_2006_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2006_herb_count$Type <- "Herbivorous"

Grecian_Rocks_2006_comm <- merge(Grecian_Rocks_2006, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2006_comm_count <- count(Grecian_Rocks_2006_comm, vars = "SPECIES_CD")
Grecian_Rocks_2006_comm_count$Year <- ('2006')
Grecian_Rocks_2006_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2006_comm_count$Type <- "Commercial"


Grecian_Rocks_2006_total_count <- rbind(Grecian_Rocks_2006_herb_count, Grecian_Rocks_2006_comm_count)



Grecian_Rocks_2007 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_2007.xls")


Grecian_Rocks_2007_herb <- merge(Grecian_Rocks_2007, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2007_herb_count <- count(Grecian_Rocks_2007_herb, vars = "SPECIES_CD")
Grecian_Rocks_2007_herb_count$Year <- ('2007')
Grecian_Rocks_2007_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2007_herb_count$Type <- "Herbivorous"

Grecian_Rocks_2007_comm <- merge(Grecian_Rocks_2007, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2007_comm_count <- count(Grecian_Rocks_2007_comm, vars = "SPECIES_CD")
Grecian_Rocks_2007_comm_count$Year <- ('2007')
Grecian_Rocks_2007_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2007_comm_count$Type <- "Commercial"


Grecian_Rocks_2007_total_count <- rbind(Grecian_Rocks_2007_herb_count, Grecian_Rocks_2007_comm_count)




Grecian_Rocks_2008 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_2008.xls")


Grecian_Rocks_2008_herb <- merge(Grecian_Rocks_2008, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2008_herb_count <- count(Grecian_Rocks_2008_herb, vars = "SPECIES_CD")
Grecian_Rocks_2008_herb_count$Year <- ('2008')
Grecian_Rocks_2008_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2008_herb_count$Type <- "Herbivorous"

Grecian_Rocks_2008_comm <- merge(Grecian_Rocks_2008, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2008_comm_count <- count(Grecian_Rocks_2008_comm, vars = "SPECIES_CD")
Grecian_Rocks_2008_comm_count$Year <- ('2008')
Grecian_Rocks_2008_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2008_comm_count$Type <- "Commercial"


Grecian_Rocks_2008_total_count <- rbind(Grecian_Rocks_2008_herb_count, Grecian_Rocks_2008_comm_count)



Grecian_Rocks_2009 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_2009.xls")


Grecian_Rocks_2009_herb <- merge(Grecian_Rocks_2009, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2009_herb_count <- count(Grecian_Rocks_2009_herb, vars = "SPECIES_CD")
Grecian_Rocks_2009_herb_count$Year <- ('2009')
Grecian_Rocks_2009_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2009_herb_count$Type <- "Herbivorous"

Grecian_Rocks_2009_comm <- merge(Grecian_Rocks_2009, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2009_comm_count <- count(Grecian_Rocks_2009_comm, vars = "SPECIES_CD")
Grecian_Rocks_2009_comm_count$Year <- ('2009')
Grecian_Rocks_2009_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2009_comm_count$Type <- "Commercial"


Grecian_Rocks_2009_total_count <- rbind(Grecian_Rocks_2009_herb_count, Grecian_Rocks_2009_comm_count)





Grecian_Rocks_2010 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_2010.xls")


Grecian_Rocks_2010_herb <- merge(Grecian_Rocks_2010, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2010_herb_count <- count(Grecian_Rocks_2010_herb, vars = "SPECIES_CD")
Grecian_Rocks_2010_herb_count$Year <- ('2010')
Grecian_Rocks_2010_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2010_herb_count$Type <- "Herbivorous"

Grecian_Rocks_2010_comm <- merge(Grecian_Rocks_2010, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2010_comm_count <- count(Grecian_Rocks_2010_comm, vars = "SPECIES_CD")
Grecian_Rocks_2010_comm_count$Year <- ('2010')
Grecian_Rocks_2010_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2010_comm_count$Type <- "Commercial"


Grecian_Rocks_2010_total_count <- rbind(Grecian_Rocks_2010_herb_count, Grecian_Rocks_2010_comm_count)


Grecian_Rocks_2011 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_2011.xls")


Grecian_Rocks_2011_herb <- merge(Grecian_Rocks_2011, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2011_herb_count <- count(Grecian_Rocks_2011_herb, vars = "SPECIES_CD")
Grecian_Rocks_2011_herb_count$Year <- ('2011')
Grecian_Rocks_2011_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2011_herb_count$Type <- "Herbivorous"

Grecian_Rocks_2011_comm <- merge(Grecian_Rocks_2011, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2011_comm_count <- count(Grecian_Rocks_2011_comm, vars = "SPECIES_CD")
Grecian_Rocks_2011_comm_count$Year <- ('2011')
Grecian_Rocks_2011_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2011_comm_count$Type <- "Commercial"


Grecian_Rocks_2011_total_count <- rbind(Grecian_Rocks_2011_herb_count, Grecian_Rocks_2011_comm_count)





Grecian_Rocks_2012 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_2012.xls")


Grecian_Rocks_2012_herb <- merge(Grecian_Rocks_2012, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2012_herb_count <- count(Grecian_Rocks_2012_herb, vars = "SPECIES_CD")
Grecian_Rocks_2012_herb_count$Year <- ('2012')
Grecian_Rocks_2012_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2012_herb_count$Type <- "Herbivorous"

Grecian_Rocks_2012_comm <- merge(Grecian_Rocks_2012, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2012_comm_count <- count(Grecian_Rocks_2012_comm, vars = "SPECIES_CD")
Grecian_Rocks_2012_comm_count$Year <- ('2012')
Grecian_Rocks_2012_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2012_comm_count$Type <- "Commercial"


Grecian_Rocks_2012_total_count <- rbind(Grecian_Rocks_2012_herb_count, Grecian_Rocks_2012_comm_count)



Grecian_Rocks_2014 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_2014.xls")


Grecian_Rocks_2014_herb <- merge(Grecian_Rocks_2014, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2014_herb_count <- count(Grecian_Rocks_2014_herb, vars = "SPECIES_CD")
Grecian_Rocks_2014_herb_count$Year <- ('2014')
Grecian_Rocks_2014_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2014_herb_count$Type <- "Herbivorous"

Grecian_Rocks_2014_comm <- merge(Grecian_Rocks_2014, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2014_comm_count <- count(Grecian_Rocks_2014_comm, vars = "SPECIES_CD")
Grecian_Rocks_2014_comm_count$Year <- ('2014')
Grecian_Rocks_2014_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2014_comm_count$Type <- "Commercial"


Grecian_Rocks_2014_total_count <- rbind(Grecian_Rocks_2014_herb_count, Grecian_Rocks_2014_comm_count)




Grecian_Rocks_2016 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_2016.xls")


Grecian_Rocks_2016_herb <- merge(Grecian_Rocks_2016, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2016_herb_count <- count(Grecian_Rocks_2016_herb, vars = "SPECIES_CD")
Grecian_Rocks_2016_herb_count$Year <- ('2016')
Grecian_Rocks_2016_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2016_herb_count$Type <- "Herbivorous"

Grecian_Rocks_2016_comm <- merge(Grecian_Rocks_2016, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2016_comm_count <- count(Grecian_Rocks_2016_comm, vars = "SPECIES_CD")
Grecian_Rocks_2016_comm_count$Year <- ('2016')
Grecian_Rocks_2016_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2016_comm_count$Type <- "Commercial"


Grecian_Rocks_2016_total_count <- rbind(Grecian_Rocks_2016_herb_count, Grecian_Rocks_2016_comm_count)



Grecian_Rocks_2018 <- import("UK/Grecian_Rocks/data/Grecian_Rocks_2018.xls")


Grecian_Rocks_2018_herb <- merge(Grecian_Rocks_2018, Herb, by = c("SPECIES_CD"))
Grecian_Rocks_2018_herb_count <- count(Grecian_Rocks_2018_herb, vars = "SPECIES_CD")
Grecian_Rocks_2018_herb_count$Year <- ('2018')
Grecian_Rocks_2018_herb_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2018_herb_count$Type <- "Herbivorous"

Grecian_Rocks_2018_comm <- merge(Grecian_Rocks_2018, Comm, by = c("SPECIES_CD"))
Grecian_Rocks_2018_comm_count <- count(Grecian_Rocks_2018_comm, vars = "SPECIES_CD")
Grecian_Rocks_2018_comm_count$Year <- ('2018')
Grecian_Rocks_2018_comm_count$sitename <- ('Grecian Rocks')
Grecian_Rocks_2018_comm_count$Type <- "Commercial"


Grecian_Rocks_2018_total_count <- rbind(Grecian_Rocks_2018_herb_count, Grecian_Rocks_2018_comm_count)





Grecian_Rocks_all <- rbind(Grecian_Rocks_1999_total_count,Grecian_Rocks_2000_total_count,Grecian_Rocks_2001_total_count,Grecian_Rocks_2002_total_count,Grecian_Rocks_2003_total_count,Grecian_Rocks_2004_total_count,Grecian_Rocks_2005_total_count,Grecian_Rocks_2006_total_count,Grecian_Rocks_2007_total_count,Grecian_Rocks_2008_total_count,Grecian_Rocks_2009_total_count, Grecian_Rocks_2010_total_count,Grecian_Rocks_2011_total_count, Grecian_Rocks_2012_total_count, Grecian_Rocks_2014_total_count, Grecian_Rocks_2016_total_count,Grecian_Rocks_2018_total_count)


export(Grecian_Rocks_all, "UK/Grecian_Rocks/data/Grecian_Rocks_count_herb_comm.csv")




Molasses_Deep_1999 <- import("UK/Molasses_Deep/data/Molasses_Deep_1999.xls")


Molasses_Deep_1999_herb <- merge(Molasses_Deep_1999, Herb, by = c("SPECIES_CD"))
Molasses_Deep_1999_herb_count <- count(Molasses_Deep_1999_herb, vars = "SPECIES_CD")
Molasses_Deep_1999_herb_count$Year <- ('1999')
Molasses_Deep_1999_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_1999_herb_count$Type <- "Herbivorous"

Molasses_Deep_1999_comm <- merge(Molasses_Deep_1999, Comm, by = c("SPECIES_CD"))
Molasses_Deep_1999_comm_count <- count(Molasses_Deep_1999_comm, vars = "SPECIES_CD")
Molasses_Deep_1999_comm_count$Year <- ('1999')
Molasses_Deep_1999_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_1999_comm_count$Type <- "Commercial"


Molasses_Deep_1999_total_count <- rbind(Molasses_Deep_1999_herb_count, Molasses_Deep_1999_comm_count)




Molasses_Deep_2000 <- import("UK/Molasses_Deep/data/Molasses_Deep_2000.xls")


Molasses_Deep_2000_herb <- merge(Molasses_Deep_2000, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2000_herb_count <- count(Molasses_Deep_2000_herb, vars = "SPECIES_CD")
Molasses_Deep_2000_herb_count$Year <- ('2000')
Molasses_Deep_2000_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_2000_herb_count$Type <- "Herbivorous"

Molasses_Deep_2000_comm <- merge(Molasses_Deep_2000, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2000_comm_count <- count(Molasses_Deep_2000_comm, vars = "SPECIES_CD")
Molasses_Deep_2000_comm_count$Year <- ('2000')
Molasses_Deep_2000_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_2000_comm_count$Type <- "Commercial"


Molasses_Deep_2000_total_count <- rbind(Molasses_Deep_2000_herb_count, Molasses_Deep_2000_comm_count)


Molasses_Deep_2001 <- import("UK/Molasses_Deep/data/Molasses_Deep_2001.xls")


Molasses_Deep_2001_herb <- merge(Molasses_Deep_2001, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2001_herb_count <- count(Molasses_Deep_2001_herb, vars = "SPECIES_CD")
Molasses_Deep_2001_herb_count$Year <- ('2001')
Molasses_Deep_2001_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_2001_herb_count$Type <- "Herbivorous"

Molasses_Deep_2001_comm <- merge(Molasses_Deep_2001, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2001_comm_count <- count(Molasses_Deep_2001_comm, vars = "SPECIES_CD")
Molasses_Deep_2001_comm_count$Year <- ('2001')
Molasses_Deep_2001_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_2001_comm_count$Type <- "Commercial"


Molasses_Deep_2001_total_count <- rbind(Molasses_Deep_2001_herb_count, Molasses_Deep_2001_comm_count)


Molasses_Deep_2002 <- import("UK/Molasses_Deep/data/Molasses_Deep_2002.xls")


Molasses_Deep_2002_herb <- merge(Molasses_Deep_2002, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2002_herb_count <- count(Molasses_Deep_2002_herb, vars = "SPECIES_CD")
Molasses_Deep_2002_herb_count$Year <- ('2002')
Molasses_Deep_2002_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_2002_herb_count$Type <- "Herbivorous"

Molasses_Deep_2002_comm <- merge(Molasses_Deep_2002, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2002_comm_count <- count(Molasses_Deep_2002_comm, vars = "SPECIES_CD")
Molasses_Deep_2002_comm_count$Year <- ('2002')
Molasses_Deep_2002_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_2002_comm_count$Type <- "Commercial"


Molasses_Deep_2002_total_count <- rbind(Molasses_Deep_2002_herb_count, Molasses_Deep_2002_comm_count)



Molasses_Deep_2003 <- import("UK/Molasses_Deep/data/Molasses_Deep_2003.xls")


Molasses_Deep_2003_herb <- merge(Molasses_Deep_2003, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2003_herb_count <- count(Molasses_Deep_2003_herb, vars = "SPECIES_CD")
Molasses_Deep_2003_herb_count$Year <- ('2003')
Molasses_Deep_2003_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_2003_herb_count$Type <- "Herbivorous"

Molasses_Deep_2003_comm <- merge(Molasses_Deep_2003, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2003_comm_count <- count(Molasses_Deep_2003_comm, vars = "SPECIES_CD")
Molasses_Deep_2003_comm_count$Year <- ('2003')
Molasses_Deep_2003_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_2003_comm_count$Type <- "Commercial"


Molasses_Deep_2003_total_count <- rbind(Molasses_Deep_2003_herb_count, Molasses_Deep_2003_comm_count)




Molasses_Deep_2004 <- import("UK/Molasses_Deep/data/Molasses_Deep_2004.xls")


Molasses_Deep_2004_herb <- merge(Molasses_Deep_2004, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2004_herb_count <- count(Molasses_Deep_2004_herb, vars = "SPECIES_CD")
Molasses_Deep_2004_herb_count$Year <- ('2004')
Molasses_Deep_2004_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_2004_herb_count$Type <- "Herbivorous"

Molasses_Deep_2004_comm <- merge(Molasses_Deep_2004, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2004_comm_count <- count(Molasses_Deep_2004_comm, vars = "SPECIES_CD")
Molasses_Deep_2004_comm_count$Year <- ('2004')
Molasses_Deep_2004_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_2004_comm_count$Type <- "Commercial"


Molasses_Deep_2004_total_count <- rbind(Molasses_Deep_2004_herb_count, Molasses_Deep_2004_comm_count)


Molasses_Deep_2005 <- import("UK/Molasses_Deep/data/Molasses_Deep_2005.xls")


Molasses_Deep_2005_herb <- merge(Molasses_Deep_2005, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2005_herb_count <- count(Molasses_Deep_2005_herb, vars = "SPECIES_CD")
Molasses_Deep_2005_herb_count$Year <- ('2005')
Molasses_Deep_2005_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_2005_herb_count$Type <- "Herbivorous"

Molasses_Deep_2005_comm <- merge(Molasses_Deep_2005, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2005_comm_count <- count(Molasses_Deep_2005_comm, vars = "SPECIES_CD")
Molasses_Deep_2005_comm_count$Year <- ('2005')
Molasses_Deep_2005_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_2005_comm_count$Type <- "Commercial"


Molasses_Deep_2005_total_count <- rbind(Molasses_Deep_2005_herb_count, Molasses_Deep_2005_comm_count)




Molasses_Deep_2006 <- import("UK/Molasses_Deep/data/Molasses_Deep_2006.xls")


Molasses_Deep_2006_herb <- merge(Molasses_Deep_2006, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2006_herb_count <- count(Molasses_Deep_2006_herb, vars = "SPECIES_CD")
Molasses_Deep_2006_herb_count$Year <- ('2006')
Molasses_Deep_2006_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_2006_herb_count$Type <- "Herbivorous"

Molasses_Deep_2006_comm <- merge(Molasses_Deep_2006, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2006_comm_count <- count(Molasses_Deep_2006_comm, vars = "SPECIES_CD")
Molasses_Deep_2006_comm_count$Year <- ('2006')
Molasses_Deep_2006_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_2006_comm_count$Type <- "Commercial"


Molasses_Deep_2006_total_count <- rbind(Molasses_Deep_2006_herb_count, Molasses_Deep_2006_comm_count)



Molasses_Deep_2007 <- import("UK/Molasses_Deep/data/Molasses_Deep_2007.xls")


Molasses_Deep_2007_herb <- merge(Molasses_Deep_2007, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2007_herb_count <- count(Molasses_Deep_2007_herb, vars = "SPECIES_CD")
Molasses_Deep_2007_herb_count$Year <- ('2007')
Molasses_Deep_2007_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_2007_herb_count$Type <- "Herbivorous"

Molasses_Deep_2007_comm <- merge(Molasses_Deep_2007, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2007_comm_count <- count(Molasses_Deep_2007_comm, vars = "SPECIES_CD")
Molasses_Deep_2007_comm_count$Year <- ('2007')
Molasses_Deep_2007_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_2007_comm_count$Type <- "Commercial"


Molasses_Deep_2007_total_count <- rbind(Molasses_Deep_2007_herb_count, Molasses_Deep_2007_comm_count)




Molasses_Deep_2008 <- import("UK/Molasses_Deep/data/Molasses_Deep_2008.xls")


Molasses_Deep_2008_herb <- merge(Molasses_Deep_2008, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2008_herb_count <- count(Molasses_Deep_2008_herb, vars = "SPECIES_CD")
Molasses_Deep_2008_herb_count$Year <- ('2008')
Molasses_Deep_2008_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_2008_herb_count$Type <- "Herbivorous"

Molasses_Deep_2008_comm <- merge(Molasses_Deep_2008, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2008_comm_count <- count(Molasses_Deep_2008_comm, vars = "SPECIES_CD")
Molasses_Deep_2008_comm_count$Year <- ('2008')
Molasses_Deep_2008_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_2008_comm_count$Type <- "Commercial"


Molasses_Deep_2008_total_count <- rbind(Molasses_Deep_2008_herb_count, Molasses_Deep_2008_comm_count)



Molasses_Deep_2009 <- import("UK/Molasses_Deep/data/Molasses_Deep_2009.xls")


Molasses_Deep_2009_herb <- merge(Molasses_Deep_2009, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2009_herb_count <- count(Molasses_Deep_2009_herb, vars = "SPECIES_CD")
Molasses_Deep_2009_herb_count$Year <- ('2009')
Molasses_Deep_2009_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_2009_herb_count$Type <- "Herbivorous"

Molasses_Deep_2009_comm <- merge(Molasses_Deep_2009, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2009_comm_count <- count(Molasses_Deep_2009_comm, vars = "SPECIES_CD")
Molasses_Deep_2009_comm_count$Year <- ('2009')
Molasses_Deep_2009_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_2009_comm_count$Type <- "Commercial"


Molasses_Deep_2009_total_count <- rbind(Molasses_Deep_2009_herb_count, Molasses_Deep_2009_comm_count)





Molasses_Deep_2010 <- import("UK/Molasses_Deep/data/Molasses_Deep_2010.xls")


Molasses_Deep_2010_herb <- merge(Molasses_Deep_2010, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2010_herb_count <- count(Molasses_Deep_2010_herb, vars = "SPECIES_CD")
Molasses_Deep_2010_herb_count$Year <- ('2010')
Molasses_Deep_2010_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_2010_herb_count$Type <- "Herbivorous"

Molasses_Deep_2010_comm <- merge(Molasses_Deep_2010, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2010_comm_count <- count(Molasses_Deep_2010_comm, vars = "SPECIES_CD")
Molasses_Deep_2010_comm_count$Year <- ('2010')
Molasses_Deep_2010_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_2010_comm_count$Type <- "Commercial"


Molasses_Deep_2010_total_count <- rbind(Molasses_Deep_2010_herb_count, Molasses_Deep_2010_comm_count)


Molasses_Deep_2011 <- import("UK/Molasses_Deep/data/Molasses_Deep_2011.xls")


Molasses_Deep_2011_herb <- merge(Molasses_Deep_2011, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2011_herb_count <- count(Molasses_Deep_2011_herb, vars = "SPECIES_CD")
Molasses_Deep_2011_herb_count$Year <- ('2011')
Molasses_Deep_2011_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_2011_herb_count$Type <- "Herbivorous"

Molasses_Deep_2011_comm <- merge(Molasses_Deep_2011, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2011_comm_count <- count(Molasses_Deep_2011_comm, vars = "SPECIES_CD")
Molasses_Deep_2011_comm_count$Year <- ('2011')
Molasses_Deep_2011_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_2011_comm_count$Type <- "Commercial"


Molasses_Deep_2011_total_count <- rbind(Molasses_Deep_2011_herb_count, Molasses_Deep_2011_comm_count)





Molasses_Deep_2012 <- import("UK/Molasses_Deep/data/Molasses_Deep_2012.xls")


Molasses_Deep_2012_herb <- merge(Molasses_Deep_2012, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2012_herb_count <- count(Molasses_Deep_2012_herb, vars = "SPECIES_CD")
Molasses_Deep_2012_herb_count$Year <- ('2012')
Molasses_Deep_2012_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_2012_herb_count$Type <- "Herbivorous"

Molasses_Deep_2012_comm <- merge(Molasses_Deep_2012, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2012_comm_count <- count(Molasses_Deep_2012_comm, vars = "SPECIES_CD")
Molasses_Deep_2012_comm_count$Year <- ('2012')
Molasses_Deep_2012_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_2012_comm_count$Type <- "Commercial"


Molasses_Deep_2012_total_count <- rbind(Molasses_Deep_2012_herb_count, Molasses_Deep_2012_comm_count)



Molasses_Deep_2014 <- import("UK/Molasses_Deep/data/Molasses_Deep_2014.xls")


Molasses_Deep_2014_herb <- merge(Molasses_Deep_2014, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2014_herb_count <- count(Molasses_Deep_2014_herb, vars = "SPECIES_CD")
Molasses_Deep_2014_herb_count$Year <- ('2014')
Molasses_Deep_2014_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_2014_herb_count$Type <- "Herbivorous"

Molasses_Deep_2014_comm <- merge(Molasses_Deep_2014, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2014_comm_count <- count(Molasses_Deep_2014_comm, vars = "SPECIES_CD")
Molasses_Deep_2014_comm_count$Year <- ('2014')
Molasses_Deep_2014_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_2014_comm_count$Type <- "Commercial"


Molasses_Deep_2014_total_count <- rbind(Molasses_Deep_2014_herb_count, Molasses_Deep_2014_comm_count)




Molasses_Deep_2016 <- import("UK/Molasses_Deep/data/Molasses_Deep_2016.xls")


Molasses_Deep_2016_herb <- merge(Molasses_Deep_2016, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2016_herb_count <- count(Molasses_Deep_2016_herb, vars = "SPECIES_CD")
Molasses_Deep_2016_herb_count$Year <- ('2016')
Molasses_Deep_2016_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_2016_herb_count$Type <- "Herbivorous"

Molasses_Deep_2016_comm <- merge(Molasses_Deep_2016, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2016_comm_count <- count(Molasses_Deep_2016_comm, vars = "SPECIES_CD")
Molasses_Deep_2016_comm_count$Year <- ('2016')
Molasses_Deep_2016_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_2016_comm_count$Type <- "Commercial"


Molasses_Deep_2016_total_count <- rbind(Molasses_Deep_2016_herb_count, Molasses_Deep_2016_comm_count)



Molasses_Deep_2018 <- import("UK/Molasses_Deep/data/Molasses_Deep_2018.xls")


Molasses_Deep_2018_herb <- merge(Molasses_Deep_2018, Herb, by = c("SPECIES_CD"))
Molasses_Deep_2018_herb_count <- count(Molasses_Deep_2018_herb, vars = "SPECIES_CD")
Molasses_Deep_2018_herb_count$Year <- ('2018')
Molasses_Deep_2018_herb_count$sitename <- ('Molasses Deep')
Molasses_Deep_2018_herb_count$Type <- "Herbivorous"

Molasses_Deep_2018_comm <- merge(Molasses_Deep_2018, Comm, by = c("SPECIES_CD"))
Molasses_Deep_2018_comm_count <- count(Molasses_Deep_2018_comm, vars = "SPECIES_CD")
Molasses_Deep_2018_comm_count$Year <- ('2018')
Molasses_Deep_2018_comm_count$sitename <- ('Molasses Deep')
Molasses_Deep_2018_comm_count$Type <- "Commercial"


Molasses_Deep_2018_total_count <- rbind(Molasses_Deep_2018_herb_count, Molasses_Deep_2018_comm_count)





Molasses_Deep_all <- rbind(Molasses_Deep_1999_total_count,Molasses_Deep_2000_total_count,Molasses_Deep_2001_total_count,Molasses_Deep_2002_total_count,Molasses_Deep_2003_total_count,Molasses_Deep_2004_total_count,Molasses_Deep_2005_total_count,Molasses_Deep_2006_total_count,Molasses_Deep_2007_total_count,Molasses_Deep_2008_total_count,Molasses_Deep_2009_total_count, Molasses_Deep_2010_total_count,Molasses_Deep_2011_total_count, Molasses_Deep_2012_total_count, Molasses_Deep_2014_total_count, Molasses_Deep_2016_total_count,Molasses_Deep_2018_total_count)


export(Molasses_Deep_all, "UK/Molasses_Deep/data/Molasses_Deep_count_herb_comm.csv")



Molasses_Shallow_1999 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_1999.xls")


Molasses_Shallow_1999_herb <- merge(Molasses_Shallow_1999, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_1999_herb_count <- count(Molasses_Shallow_1999_herb, vars = "SPECIES_CD")
Molasses_Shallow_1999_herb_count$Year <- ('1999')
Molasses_Shallow_1999_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_1999_herb_count$Type <- "Herbivorous"

Molasses_Shallow_1999_comm <- merge(Molasses_Shallow_1999, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_1999_comm_count <- count(Molasses_Shallow_1999_comm, vars = "SPECIES_CD")
Molasses_Shallow_1999_comm_count$Year <- ('1999')
Molasses_Shallow_1999_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_1999_comm_count$Type <- "Commercial"


Molasses_Shallow_1999_total_count <- rbind(Molasses_Shallow_1999_herb_count, Molasses_Shallow_1999_comm_count)




Molasses_Shallow_2000 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_2000.xls")


Molasses_Shallow_2000_herb <- merge(Molasses_Shallow_2000, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2000_herb_count <- count(Molasses_Shallow_2000_herb, vars = "SPECIES_CD")
Molasses_Shallow_2000_herb_count$Year <- ('2000')
Molasses_Shallow_2000_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2000_herb_count$Type <- "Herbivorous"

Molasses_Shallow_2000_comm <- merge(Molasses_Shallow_2000, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2000_comm_count <- count(Molasses_Shallow_2000_comm, vars = "SPECIES_CD")
Molasses_Shallow_2000_comm_count$Year <- ('2000')
Molasses_Shallow_2000_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2000_comm_count$Type <- "Commercial"


Molasses_Shallow_2000_total_count <- rbind(Molasses_Shallow_2000_herb_count, Molasses_Shallow_2000_comm_count)


Molasses_Shallow_2001 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_2001.xls")


Molasses_Shallow_2001_herb <- merge(Molasses_Shallow_2001, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2001_herb_count <- count(Molasses_Shallow_2001_herb, vars = "SPECIES_CD")
Molasses_Shallow_2001_herb_count$Year <- ('2001')
Molasses_Shallow_2001_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2001_herb_count$Type <- "Herbivorous"

Molasses_Shallow_2001_comm <- merge(Molasses_Shallow_2001, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2001_comm_count <- count(Molasses_Shallow_2001_comm, vars = "SPECIES_CD")
Molasses_Shallow_2001_comm_count$Year <- ('2001')
Molasses_Shallow_2001_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2001_comm_count$Type <- "Commercial"


Molasses_Shallow_2001_total_count <- rbind(Molasses_Shallow_2001_herb_count, Molasses_Shallow_2001_comm_count)


Molasses_Shallow_2002 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_2002.xls")


Molasses_Shallow_2002_herb <- merge(Molasses_Shallow_2002, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2002_herb_count <- count(Molasses_Shallow_2002_herb, vars = "SPECIES_CD")
Molasses_Shallow_2002_herb_count$Year <- ('2002')
Molasses_Shallow_2002_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2002_herb_count$Type <- "Herbivorous"

Molasses_Shallow_2002_comm <- merge(Molasses_Shallow_2002, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2002_comm_count <- count(Molasses_Shallow_2002_comm, vars = "SPECIES_CD")
Molasses_Shallow_2002_comm_count$Year <- ('2002')
Molasses_Shallow_2002_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2002_comm_count$Type <- "Commercial"


Molasses_Shallow_2002_total_count <- rbind(Molasses_Shallow_2002_herb_count, Molasses_Shallow_2002_comm_count)



Molasses_Shallow_2003 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_2003.xls")


Molasses_Shallow_2003_herb <- merge(Molasses_Shallow_2003, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2003_herb_count <- count(Molasses_Shallow_2003_herb, vars = "SPECIES_CD")
Molasses_Shallow_2003_herb_count$Year <- ('2003')
Molasses_Shallow_2003_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2003_herb_count$Type <- "Herbivorous"

Molasses_Shallow_2003_comm <- merge(Molasses_Shallow_2003, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2003_comm_count <- count(Molasses_Shallow_2003_comm, vars = "SPECIES_CD")
Molasses_Shallow_2003_comm_count$Year <- ('2003')
Molasses_Shallow_2003_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2003_comm_count$Type <- "Commercial"


Molasses_Shallow_2003_total_count <- rbind(Molasses_Shallow_2003_herb_count, Molasses_Shallow_2003_comm_count)




Molasses_Shallow_2004 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_2004.xls")


Molasses_Shallow_2004_herb <- merge(Molasses_Shallow_2004, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2004_herb_count <- count(Molasses_Shallow_2004_herb, vars = "SPECIES_CD")
Molasses_Shallow_2004_herb_count$Year <- ('2004')
Molasses_Shallow_2004_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2004_herb_count$Type <- "Herbivorous"

Molasses_Shallow_2004_comm <- merge(Molasses_Shallow_2004, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2004_comm_count <- count(Molasses_Shallow_2004_comm, vars = "SPECIES_CD")
Molasses_Shallow_2004_comm_count$Year <- ('2004')
Molasses_Shallow_2004_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2004_comm_count$Type <- "Commercial"


Molasses_Shallow_2004_total_count <- rbind(Molasses_Shallow_2004_herb_count, Molasses_Shallow_2004_comm_count)


Molasses_Shallow_2005 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_2005.xls")


Molasses_Shallow_2005_herb <- merge(Molasses_Shallow_2005, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2005_herb_count <- count(Molasses_Shallow_2005_herb, vars = "SPECIES_CD")
Molasses_Shallow_2005_herb_count$Year <- ('2005')
Molasses_Shallow_2005_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2005_herb_count$Type <- "Herbivorous"

Molasses_Shallow_2005_comm <- merge(Molasses_Shallow_2005, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2005_comm_count <- count(Molasses_Shallow_2005_comm, vars = "SPECIES_CD")
Molasses_Shallow_2005_comm_count$Year <- ('2005')
Molasses_Shallow_2005_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2005_comm_count$Type <- "Commercial"


Molasses_Shallow_2005_total_count <- rbind(Molasses_Shallow_2005_herb_count, Molasses_Shallow_2005_comm_count)




Molasses_Shallow_2006 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_2006.xls")


Molasses_Shallow_2006_herb <- merge(Molasses_Shallow_2006, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2006_herb_count <- count(Molasses_Shallow_2006_herb, vars = "SPECIES_CD")
Molasses_Shallow_2006_herb_count$Year <- ('2006')
Molasses_Shallow_2006_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2006_herb_count$Type <- "Herbivorous"

Molasses_Shallow_2006_comm <- merge(Molasses_Shallow_2006, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2006_comm_count <- count(Molasses_Shallow_2006_comm, vars = "SPECIES_CD")
Molasses_Shallow_2006_comm_count$Year <- ('2006')
Molasses_Shallow_2006_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2006_comm_count$Type <- "Commercial"


Molasses_Shallow_2006_total_count <- rbind(Molasses_Shallow_2006_herb_count, Molasses_Shallow_2006_comm_count)



Molasses_Shallow_2007 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_2007.xls")


Molasses_Shallow_2007_herb <- merge(Molasses_Shallow_2007, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2007_herb_count <- count(Molasses_Shallow_2007_herb, vars = "SPECIES_CD")
Molasses_Shallow_2007_herb_count$Year <- ('2007')
Molasses_Shallow_2007_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2007_herb_count$Type <- "Herbivorous"

Molasses_Shallow_2007_comm <- merge(Molasses_Shallow_2007, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2007_comm_count <- count(Molasses_Shallow_2007_comm, vars = "SPECIES_CD")
Molasses_Shallow_2007_comm_count$Year <- ('2007')
Molasses_Shallow_2007_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2007_comm_count$Type <- "Commercial"


Molasses_Shallow_2007_total_count <- rbind(Molasses_Shallow_2007_herb_count, Molasses_Shallow_2007_comm_count)




Molasses_Shallow_2008 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_2008.xls")


Molasses_Shallow_2008_herb <- merge(Molasses_Shallow_2008, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2008_herb_count <- count(Molasses_Shallow_2008_herb, vars = "SPECIES_CD")
Molasses_Shallow_2008_herb_count$Year <- ('2008')
Molasses_Shallow_2008_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2008_herb_count$Type <- "Herbivorous"

Molasses_Shallow_2008_comm <- merge(Molasses_Shallow_2008, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2008_comm_count <- count(Molasses_Shallow_2008_comm, vars = "SPECIES_CD")
Molasses_Shallow_2008_comm_count$Year <- ('2008')
Molasses_Shallow_2008_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2008_comm_count$Type <- "Commercial"


Molasses_Shallow_2008_total_count <- rbind(Molasses_Shallow_2008_herb_count, Molasses_Shallow_2008_comm_count)



Molasses_Shallow_2009 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_2009.xls")


Molasses_Shallow_2009_herb <- merge(Molasses_Shallow_2009, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2009_herb_count <- count(Molasses_Shallow_2009_herb, vars = "SPECIES_CD")
Molasses_Shallow_2009_herb_count$Year <- ('2009')
Molasses_Shallow_2009_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2009_herb_count$Type <- "Herbivorous"

Molasses_Shallow_2009_comm <- merge(Molasses_Shallow_2009, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2009_comm_count <- count(Molasses_Shallow_2009_comm, vars = "SPECIES_CD")
Molasses_Shallow_2009_comm_count$Year <- ('2009')
Molasses_Shallow_2009_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2009_comm_count$Type <- "Commercial"


Molasses_Shallow_2009_total_count <- rbind(Molasses_Shallow_2009_herb_count, Molasses_Shallow_2009_comm_count)





Molasses_Shallow_2010 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_2010.xls")


Molasses_Shallow_2010_herb <- merge(Molasses_Shallow_2010, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2010_herb_count <- count(Molasses_Shallow_2010_herb, vars = "SPECIES_CD")
Molasses_Shallow_2010_herb_count$Year <- ('2010')
Molasses_Shallow_2010_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2010_herb_count$Type <- "Herbivorous"

Molasses_Shallow_2010_comm <- merge(Molasses_Shallow_2010, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2010_comm_count <- count(Molasses_Shallow_2010_comm, vars = "SPECIES_CD")
Molasses_Shallow_2010_comm_count$Year <- ('2010')
Molasses_Shallow_2010_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2010_comm_count$Type <- "Commercial"


Molasses_Shallow_2010_total_count <- rbind(Molasses_Shallow_2010_herb_count, Molasses_Shallow_2010_comm_count)


Molasses_Shallow_2011 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_2011.xls")


Molasses_Shallow_2011_herb <- merge(Molasses_Shallow_2011, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2011_herb_count <- count(Molasses_Shallow_2011_herb, vars = "SPECIES_CD")
Molasses_Shallow_2011_herb_count$Year <- ('2011')
Molasses_Shallow_2011_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2011_herb_count$Type <- "Herbivorous"

Molasses_Shallow_2011_comm <- merge(Molasses_Shallow_2011, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2011_comm_count <- count(Molasses_Shallow_2011_comm, vars = "SPECIES_CD")
Molasses_Shallow_2011_comm_count$Year <- ('2011')
Molasses_Shallow_2011_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2011_comm_count$Type <- "Commercial"


Molasses_Shallow_2011_total_count <- rbind(Molasses_Shallow_2011_herb_count, Molasses_Shallow_2011_comm_count)





Molasses_Shallow_2012 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_2012.xls")


Molasses_Shallow_2012_herb <- merge(Molasses_Shallow_2012, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2012_herb_count <- count(Molasses_Shallow_2012_herb, vars = "SPECIES_CD")
Molasses_Shallow_2012_herb_count$Year <- ('2012')
Molasses_Shallow_2012_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2012_herb_count$Type <- "Herbivorous"

Molasses_Shallow_2012_comm <- merge(Molasses_Shallow_2012, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2012_comm_count <- count(Molasses_Shallow_2012_comm, vars = "SPECIES_CD")
Molasses_Shallow_2012_comm_count$Year <- ('2012')
Molasses_Shallow_2012_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2012_comm_count$Type <- "Commercial"


Molasses_Shallow_2012_total_count <- rbind(Molasses_Shallow_2012_herb_count, Molasses_Shallow_2012_comm_count)



Molasses_Shallow_2014 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_2014.xls")


Molasses_Shallow_2014_herb <- merge(Molasses_Shallow_2014, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2014_herb_count <- count(Molasses_Shallow_2014_herb, vars = "SPECIES_CD")
Molasses_Shallow_2014_herb_count$Year <- ('2014')
Molasses_Shallow_2014_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2014_herb_count$Type <- "Herbivorous"

Molasses_Shallow_2014_comm <- merge(Molasses_Shallow_2014, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2014_comm_count <- count(Molasses_Shallow_2014_comm, vars = "SPECIES_CD")
Molasses_Shallow_2014_comm_count$Year <- ('2014')
Molasses_Shallow_2014_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2014_comm_count$Type <- "Commercial"


Molasses_Shallow_2014_total_count <- rbind(Molasses_Shallow_2014_herb_count, Molasses_Shallow_2014_comm_count)




Molasses_Shallow_2016 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_2016.xls")


Molasses_Shallow_2016_herb <- merge(Molasses_Shallow_2016, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2016_herb_count <- count(Molasses_Shallow_2016_herb, vars = "SPECIES_CD")
Molasses_Shallow_2016_herb_count$Year <- ('2016')
Molasses_Shallow_2016_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2016_herb_count$Type <- "Herbivorous"

Molasses_Shallow_2016_comm <- merge(Molasses_Shallow_2016, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2016_comm_count <- count(Molasses_Shallow_2016_comm, vars = "SPECIES_CD")
Molasses_Shallow_2016_comm_count$Year <- ('2016')
Molasses_Shallow_2016_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2016_comm_count$Type <- "Commercial"


Molasses_Shallow_2016_total_count <- rbind(Molasses_Shallow_2016_herb_count, Molasses_Shallow_2016_comm_count)



Molasses_Shallow_2018 <- import("UK/Molasses_Shallow/data/Molasses_Shallow_2018.xls")


Molasses_Shallow_2018_herb <- merge(Molasses_Shallow_2018, Herb, by = c("SPECIES_CD"))
Molasses_Shallow_2018_herb_count <- count(Molasses_Shallow_2018_herb, vars = "SPECIES_CD")
Molasses_Shallow_2018_herb_count$Year <- ('2018')
Molasses_Shallow_2018_herb_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2018_herb_count$Type <- "Herbivorous"

Molasses_Shallow_2018_comm <- merge(Molasses_Shallow_2018, Comm, by = c("SPECIES_CD"))
Molasses_Shallow_2018_comm_count <- count(Molasses_Shallow_2018_comm, vars = "SPECIES_CD")
Molasses_Shallow_2018_comm_count$Year <- ('2018')
Molasses_Shallow_2018_comm_count$sitename <- ('Molasses Shallow')
Molasses_Shallow_2018_comm_count$Type <- "Commercial"


Molasses_Shallow_2018_total_count <- rbind(Molasses_Shallow_2018_herb_count, Molasses_Shallow_2018_comm_count)





Molasses_Shallow_all <- rbind(Molasses_Shallow_1999_total_count,Molasses_Shallow_2000_total_count,Molasses_Shallow_2001_total_count,Molasses_Shallow_2002_total_count,Molasses_Shallow_2003_total_count,Molasses_Shallow_2004_total_count,Molasses_Shallow_2005_total_count,Molasses_Shallow_2006_total_count,Molasses_Shallow_2007_total_count,Molasses_Shallow_2008_total_count,Molasses_Shallow_2009_total_count, Molasses_Shallow_2010_total_count,Molasses_Shallow_2011_total_count, Molasses_Shallow_2012_total_count, Molasses_Shallow_2014_total_count, Molasses_Shallow_2016_total_count,Molasses_Shallow_2018_total_count)


export(Molasses_Shallow_all, "UK/Molasses_Shallow/data/Molasses_Shallow_count_herb_comm.csv")




Porter_Patch_1999 <- import("UK/Porter_Patch/data/Porter_Patch_1999.xls")


Porter_Patch_1999_herb <- merge(Porter_Patch_1999, Herb, by = c("SPECIES_CD"))
Porter_Patch_1999_herb_count <- count(Porter_Patch_1999_herb, vars = "SPECIES_CD")
Porter_Patch_1999_herb_count$Year <- ('1999')
Porter_Patch_1999_herb_count$sitename <- ('Porter Patch')
Porter_Patch_1999_herb_count$Type <- "Herbivorous"

Porter_Patch_1999_comm <- merge(Porter_Patch_1999, Comm, by = c("SPECIES_CD"))
Porter_Patch_1999_comm_count <- count(Porter_Patch_1999_comm, vars = "SPECIES_CD")
Porter_Patch_1999_comm_count$Year <- ('1999')
Porter_Patch_1999_comm_count$sitename <- ('Porter Patch')
Porter_Patch_1999_comm_count$Type <- "Commercial"


Porter_Patch_1999_total_count <- rbind(Porter_Patch_1999_herb_count, Porter_Patch_1999_comm_count)




Porter_Patch_2000 <- import("UK/Porter_Patch/data/Porter_Patch_2000.xls")


Porter_Patch_2000_herb <- merge(Porter_Patch_2000, Herb, by = c("SPECIES_CD"))
Porter_Patch_2000_herb_count <- count(Porter_Patch_2000_herb, vars = "SPECIES_CD")
Porter_Patch_2000_herb_count$Year <- ('2000')
Porter_Patch_2000_herb_count$sitename <- ('Porter Patch')
Porter_Patch_2000_herb_count$Type <- "Herbivorous"

Porter_Patch_2000_comm <- merge(Porter_Patch_2000, Comm, by = c("SPECIES_CD"))
Porter_Patch_2000_comm_count <- count(Porter_Patch_2000_comm, vars = "SPECIES_CD")
Porter_Patch_2000_comm_count$Year <- ('2000')
Porter_Patch_2000_comm_count$sitename <- ('Porter Patch')
Porter_Patch_2000_comm_count$Type <- "Commercial"


Porter_Patch_2000_total_count <- rbind(Porter_Patch_2000_herb_count, Porter_Patch_2000_comm_count)


Porter_Patch_2001 <- import("UK/Porter_Patch/data/Porter_Patch_2001.xls")


Porter_Patch_2001_herb <- merge(Porter_Patch_2001, Herb, by = c("SPECIES_CD"))
Porter_Patch_2001_herb_count <- count(Porter_Patch_2001_herb, vars = "SPECIES_CD")
Porter_Patch_2001_herb_count$Year <- ('2001')
Porter_Patch_2001_herb_count$sitename <- ('Porter Patch')
Porter_Patch_2001_herb_count$Type <- "Herbivorous"

Porter_Patch_2001_comm <- merge(Porter_Patch_2001, Comm, by = c("SPECIES_CD"))
Porter_Patch_2001_comm_count <- count(Porter_Patch_2001_comm, vars = "SPECIES_CD")
Porter_Patch_2001_comm_count$Year <- ('2001')
Porter_Patch_2001_comm_count$sitename <- ('Porter Patch')
Porter_Patch_2001_comm_count$Type <- "Commercial"


Porter_Patch_2001_total_count <- rbind(Porter_Patch_2001_herb_count, Porter_Patch_2001_comm_count)


Porter_Patch_2002 <- import("UK/Porter_Patch/data/Porter_Patch_2002.xls")


Porter_Patch_2002_herb <- merge(Porter_Patch_2002, Herb, by = c("SPECIES_CD"))
Porter_Patch_2002_herb_count <- count(Porter_Patch_2002_herb, vars = "SPECIES_CD")
Porter_Patch_2002_herb_count$Year <- ('2002')
Porter_Patch_2002_herb_count$sitename <- ('Porter Patch')
Porter_Patch_2002_herb_count$Type <- "Herbivorous"

Porter_Patch_2002_comm <- merge(Porter_Patch_2002, Comm, by = c("SPECIES_CD"))
Porter_Patch_2002_comm_count <- count(Porter_Patch_2002_comm, vars = "SPECIES_CD")
Porter_Patch_2002_comm_count$Year <- ('2002')
Porter_Patch_2002_comm_count$sitename <- ('Porter Patch')
Porter_Patch_2002_comm_count$Type <- "Commercial"


Porter_Patch_2002_total_count <- rbind(Porter_Patch_2002_herb_count, Porter_Patch_2002_comm_count)



Porter_Patch_2003 <- import("UK/Porter_Patch/data/Porter_Patch_2003.xls")


Porter_Patch_2003_herb <- merge(Porter_Patch_2003, Herb, by = c("SPECIES_CD"))
Porter_Patch_2003_herb_count <- count(Porter_Patch_2003_herb, vars = "SPECIES_CD")
Porter_Patch_2003_herb_count$Year <- ('2003')
Porter_Patch_2003_herb_count$sitename <- ('Porter Patch')
Porter_Patch_2003_herb_count$Type <- "Herbivorous"

Porter_Patch_2003_comm <- merge(Porter_Patch_2003, Comm, by = c("SPECIES_CD"))
Porter_Patch_2003_comm_count <- count(Porter_Patch_2003_comm, vars = "SPECIES_CD")
Porter_Patch_2003_comm_count$Year <- ('2003')
Porter_Patch_2003_comm_count$sitename <- ('Porter Patch')
Porter_Patch_2003_comm_count$Type <- "Commercial"


Porter_Patch_2003_total_count <- rbind(Porter_Patch_2003_herb_count, Porter_Patch_2003_comm_count)




Porter_Patch_2004 <- import("UK/Porter_Patch/data/Porter_Patch_2004.xls")


Porter_Patch_2004_herb <- merge(Porter_Patch_2004, Herb, by = c("SPECIES_CD"))
Porter_Patch_2004_herb_count <- count(Porter_Patch_2004_herb, vars = "SPECIES_CD")
Porter_Patch_2004_herb_count$Year <- ('2004')
Porter_Patch_2004_herb_count$sitename <- ('Porter Patch')
Porter_Patch_2004_herb_count$Type <- "Herbivorous"

Porter_Patch_2004_comm <- merge(Porter_Patch_2004, Comm, by = c("SPECIES_CD"))
Porter_Patch_2004_comm_count <- count(Porter_Patch_2004_comm, vars = "SPECIES_CD")
Porter_Patch_2004_comm_count$Year <- ('2004')
Porter_Patch_2004_comm_count$sitename <- ('Porter Patch')
Porter_Patch_2004_comm_count$Type <- "Commercial"


Porter_Patch_2004_total_count <- rbind(Porter_Patch_2004_herb_count, Porter_Patch_2004_comm_count)


Porter_Patch_2005 <- import("UK/Porter_Patch/data/Porter_Patch_2005.xls")


Porter_Patch_2005_herb <- merge(Porter_Patch_2005, Herb, by = c("SPECIES_CD"))
Porter_Patch_2005_herb_count <- count(Porter_Patch_2005_herb, vars = "SPECIES_CD")
Porter_Patch_2005_herb_count$Year <- ('2005')
Porter_Patch_2005_herb_count$sitename <- ('Porter Patch')
Porter_Patch_2005_herb_count$Type <- "Herbivorous"

Porter_Patch_2005_comm <- merge(Porter_Patch_2005, Comm, by = c("SPECIES_CD"))
Porter_Patch_2005_comm_count <- count(Porter_Patch_2005_comm, vars = "SPECIES_CD")
Porter_Patch_2005_comm_count$Year <- ('2005')
Porter_Patch_2005_comm_count$sitename <- ('Porter Patch')
Porter_Patch_2005_comm_count$Type <- "Commercial"


Porter_Patch_2005_total_count <- rbind(Porter_Patch_2005_herb_count, Porter_Patch_2005_comm_count)




Porter_Patch_2006 <- import("UK/Porter_Patch/data/Porter_Patch_2006.xls")


Porter_Patch_2006_herb <- merge(Porter_Patch_2006, Herb, by = c("SPECIES_CD"))
Porter_Patch_2006_herb_count <- count(Porter_Patch_2006_herb, vars = "SPECIES_CD")
Porter_Patch_2006_herb_count$Year <- ('2006')
Porter_Patch_2006_herb_count$sitename <- ('Porter Patch')
Porter_Patch_2006_herb_count$Type <- "Herbivorous"

Porter_Patch_2006_comm <- merge(Porter_Patch_2006, Comm, by = c("SPECIES_CD"))
Porter_Patch_2006_comm_count <- count(Porter_Patch_2006_comm, vars = "SPECIES_CD")
Porter_Patch_2006_comm_count$Year <- ('2006')
Porter_Patch_2006_comm_count$sitename <- ('Porter Patch')
Porter_Patch_2006_comm_count$Type <- "Commercial"


Porter_Patch_2006_total_count <- rbind(Porter_Patch_2006_herb_count, Porter_Patch_2006_comm_count)



Porter_Patch_2007 <- import("UK/Porter_Patch/data/Porter_Patch_2007.xls")


Porter_Patch_2007_herb <- merge(Porter_Patch_2007, Herb, by = c("SPECIES_CD"))
Porter_Patch_2007_herb_count <- count(Porter_Patch_2007_herb, vars = "SPECIES_CD")
Porter_Patch_2007_herb_count$Year <- ('2007')
Porter_Patch_2007_herb_count$sitename <- ('Porter Patch')
Porter_Patch_2007_herb_count$Type <- "Herbivorous"

Porter_Patch_2007_comm <- merge(Porter_Patch_2007, Comm, by = c("SPECIES_CD"))
Porter_Patch_2007_comm_count <- count(Porter_Patch_2007_comm, vars = "SPECIES_CD")
Porter_Patch_2007_comm_count$Year <- ('2007')
Porter_Patch_2007_comm_count$sitename <- ('Porter Patch')
Porter_Patch_2007_comm_count$Type <- "Commercial"


Porter_Patch_2007_total_count <- rbind(Porter_Patch_2007_herb_count, Porter_Patch_2007_comm_count)




Porter_Patch_2008 <- import("UK/Porter_Patch/data/Porter_Patch_2008.xls")


Porter_Patch_2008_herb <- merge(Porter_Patch_2008, Herb, by = c("SPECIES_CD"))
Porter_Patch_2008_herb_count <- count(Porter_Patch_2008_herb, vars = "SPECIES_CD")
Porter_Patch_2008_herb_count$Year <- ('2008')
Porter_Patch_2008_herb_count$sitename <- ('Porter Patch')
Porter_Patch_2008_herb_count$Type <- "Herbivorous"

Porter_Patch_2008_comm <- merge(Porter_Patch_2008, Comm, by = c("SPECIES_CD"))
Porter_Patch_2008_comm_count <- count(Porter_Patch_2008_comm, vars = "SPECIES_CD")
Porter_Patch_2008_comm_count$Year <- ('2008')
Porter_Patch_2008_comm_count$sitename <- ('Porter Patch')
Porter_Patch_2008_comm_count$Type <- "Commercial"


Porter_Patch_2008_total_count <- rbind(Porter_Patch_2008_herb_count, Porter_Patch_2008_comm_count)



Porter_Patch_2009 <- import("UK/Porter_Patch/data/Porter_Patch_2009.xls")


Porter_Patch_2009_herb <- merge(Porter_Patch_2009, Herb, by = c("SPECIES_CD"))
Porter_Patch_2009_herb_count <- count(Porter_Patch_2009_herb, vars = "SPECIES_CD")
Porter_Patch_2009_herb_count$Year <- ('2009')
Porter_Patch_2009_herb_count$sitename <- ('Porter Patch')
Porter_Patch_2009_herb_count$Type <- "Herbivorous"

Porter_Patch_2009_comm <- merge(Porter_Patch_2009, Comm, by = c("SPECIES_CD"))
Porter_Patch_2009_comm_count <- count(Porter_Patch_2009_comm, vars = "SPECIES_CD")
Porter_Patch_2009_comm_count$Year <- ('2009')
Porter_Patch_2009_comm_count$sitename <- ('Porter Patch')
Porter_Patch_2009_comm_count$Type <- "Commercial"


Porter_Patch_2009_total_count <- rbind(Porter_Patch_2009_herb_count, Porter_Patch_2009_comm_count)





Porter_Patch_2010 <- import("UK/Porter_Patch/data/Porter_Patch_2010.xls")


Porter_Patch_2010_herb <- merge(Porter_Patch_2010, Herb, by = c("SPECIES_CD"))
Porter_Patch_2010_herb_count <- count(Porter_Patch_2010_herb, vars = "SPECIES_CD")
Porter_Patch_2010_herb_count$Year <- ('2010')
Porter_Patch_2010_herb_count$sitename <- ('Porter Patch')
Porter_Patch_2010_herb_count$Type <- "Herbivorous"

Porter_Patch_2010_comm <- merge(Porter_Patch_2010, Comm, by = c("SPECIES_CD"))
Porter_Patch_2010_comm_count <- count(Porter_Patch_2010_comm, vars = "SPECIES_CD")
Porter_Patch_2010_comm_count$Year <- ('2010')
Porter_Patch_2010_comm_count$sitename <- ('Porter Patch')
Porter_Patch_2010_comm_count$Type <- "Commercial"


Porter_Patch_2010_total_count <- rbind(Porter_Patch_2010_herb_count, Porter_Patch_2010_comm_count)


Porter_Patch_2011 <- import("UK/Porter_Patch/data/Porter_Patch_2011.xls")


Porter_Patch_2011_herb <- merge(Porter_Patch_2011, Herb, by = c("SPECIES_CD"))
Porter_Patch_2011_herb_count <- count(Porter_Patch_2011_herb, vars = "SPECIES_CD")
Porter_Patch_2011_herb_count$Year <- ('2011')
Porter_Patch_2011_herb_count$sitename <- ('Porter Patch')
Porter_Patch_2011_herb_count$Type <- "Herbivorous"

Porter_Patch_2011_comm <- merge(Porter_Patch_2011, Comm, by = c("SPECIES_CD"))
Porter_Patch_2011_comm_count <- count(Porter_Patch_2011_comm, vars = "SPECIES_CD")
Porter_Patch_2011_comm_count$Year <- ('2011')
Porter_Patch_2011_comm_count$sitename <- ('Porter Patch')
Porter_Patch_2011_comm_count$Type <- "Commercial"


Porter_Patch_2011_total_count <- rbind(Porter_Patch_2011_herb_count, Porter_Patch_2011_comm_count)





Porter_Patch_2012 <- import("UK/Porter_Patch/data/Porter_Patch_2012.xls")


Porter_Patch_2012_herb <- merge(Porter_Patch_2012, Herb, by = c("SPECIES_CD"))
Porter_Patch_2012_herb_count <- count(Porter_Patch_2012_herb, vars = "SPECIES_CD")
Porter_Patch_2012_herb_count$Year <- ('2012')
Porter_Patch_2012_herb_count$sitename <- ('Porter Patch')
Porter_Patch_2012_herb_count$Type <- "Herbivorous"

Porter_Patch_2012_comm <- merge(Porter_Patch_2012, Comm, by = c("SPECIES_CD"))
Porter_Patch_2012_comm_count <- count(Porter_Patch_2012_comm, vars = "SPECIES_CD")
Porter_Patch_2012_comm_count$Year <- ('2012')
Porter_Patch_2012_comm_count$sitename <- ('Porter Patch')
Porter_Patch_2012_comm_count$Type <- "Commercial"


Porter_Patch_2012_total_count <- rbind(Porter_Patch_2012_herb_count, Porter_Patch_2012_comm_count)



Porter_Patch_2014 <- import("UK/Porter_Patch/data/Porter_Patch_2014.xls")


Porter_Patch_2014_herb <- merge(Porter_Patch_2014, Herb, by = c("SPECIES_CD"))
Porter_Patch_2014_herb_count <- count(Porter_Patch_2014_herb, vars = "SPECIES_CD")
Porter_Patch_2014_herb_count$Year <- ('2014')
Porter_Patch_2014_herb_count$sitename <- ('Porter Patch')
Porter_Patch_2014_herb_count$Type <- "Herbivorous"

Porter_Patch_2014_comm <- merge(Porter_Patch_2014, Comm, by = c("SPECIES_CD"))
Porter_Patch_2014_comm_count <- count(Porter_Patch_2014_comm, vars = "SPECIES_CD")
Porter_Patch_2014_comm_count$Year <- ('2014')
Porter_Patch_2014_comm_count$sitename <- ('Porter Patch')
Porter_Patch_2014_comm_count$Type <- "Commercial"


Porter_Patch_2014_total_count <- rbind(Porter_Patch_2014_herb_count, Porter_Patch_2014_comm_count)




Porter_Patch_2016 <- import("UK/Porter_Patch/data/Porter_Patch_2016.xls")


Porter_Patch_2016_herb <- merge(Porter_Patch_2016, Herb, by = c("SPECIES_CD"))
Porter_Patch_2016_herb_count <- count(Porter_Patch_2016_herb, vars = "SPECIES_CD")
Porter_Patch_2016_herb_count$Year <- ('2016')
Porter_Patch_2016_herb_count$sitename <- ('Porter Patch')
Porter_Patch_2016_herb_count$Type <- "Herbivorous"

Porter_Patch_2016_comm <- merge(Porter_Patch_2016, Comm, by = c("SPECIES_CD"))
Porter_Patch_2016_comm_count <- count(Porter_Patch_2016_comm, vars = "SPECIES_CD")
Porter_Patch_2016_comm_count$Year <- ('2016')
Porter_Patch_2016_comm_count$sitename <- ('Porter Patch')
Porter_Patch_2016_comm_count$Type <- "Commercial"


Porter_Patch_2016_total_count <- rbind(Porter_Patch_2016_herb_count, Porter_Patch_2016_comm_count)



Porter_Patch_2018 <- import("UK/Porter_Patch/data/Porter_Patch_2018.xls")


Porter_Patch_2018_herb <- merge(Porter_Patch_2018, Herb, by = c("SPECIES_CD"))
Porter_Patch_2018_herb_count <- count(Porter_Patch_2018_herb, vars = "SPECIES_CD")
Porter_Patch_2018_herb_count$Year <- ('2018')
Porter_Patch_2018_herb_count$sitename <- ('Porter Patch')
Porter_Patch_2018_herb_count$Type <- "Herbivorous"

Porter_Patch_2018_comm <- merge(Porter_Patch_2018, Comm, by = c("SPECIES_CD"))
Porter_Patch_2018_comm_count <- count(Porter_Patch_2018_comm, vars = "SPECIES_CD")
Porter_Patch_2018_comm_count$Year <- ('2018')
Porter_Patch_2018_comm_count$sitename <- ('Porter Patch')
Porter_Patch_2018_comm_count$Type <- "Commercial"


Porter_Patch_2018_total_count <- rbind(Porter_Patch_2018_herb_count, Porter_Patch_2018_comm_count)





Porter_Patch_all <- rbind(Porter_Patch_1999_total_count,Porter_Patch_2000_total_count,Porter_Patch_2001_total_count,Porter_Patch_2002_total_count,Porter_Patch_2003_total_count,Porter_Patch_2004_total_count,Porter_Patch_2005_total_count,Porter_Patch_2006_total_count,Porter_Patch_2007_total_count,Porter_Patch_2008_total_count,Porter_Patch_2009_total_count, Porter_Patch_2010_total_count,Porter_Patch_2011_total_count, Porter_Patch_2012_total_count, Porter_Patch_2014_total_count, Porter_Patch_2016_total_count,Porter_Patch_2018_total_count)


export(Porter_Patch_all, "UK/Porter_Patch/data/Porter_Patch_count_herb_comm.csv")




Turtle_1999 <- import("UK/Turtle/data/Turtle_1999.xls")


Turtle_1999_herb <- merge(Turtle_1999, Herb, by = c("SPECIES_CD"))
Turtle_1999_herb_count <- count(Turtle_1999_herb, vars = "SPECIES_CD")
Turtle_1999_herb_count$Year <- ('1999')
Turtle_1999_herb_count$sitename <- ('Turtle Reef')
Turtle_1999_herb_count$Type <- "Herbivorous"

Turtle_1999_comm <- merge(Turtle_1999, Comm, by = c("SPECIES_CD"))
Turtle_1999_comm_count <- count(Turtle_1999_comm, vars = "SPECIES_CD")
Turtle_1999_comm_count$Year <- ('1999')
Turtle_1999_comm_count$sitename <- ('Turtle Reef')
Turtle_1999_comm_count$Type <- "Commercial"


Turtle_1999_total_count <- rbind(Turtle_1999_herb_count, Turtle_1999_comm_count)




Turtle_2000 <- import("UK/Turtle/data/Turtle_2000.xls")


Turtle_2000_herb <- merge(Turtle_2000, Herb, by = c("SPECIES_CD"))
Turtle_2000_herb_count <- count(Turtle_2000_herb, vars = "SPECIES_CD")
Turtle_2000_herb_count$Year <- ('2000')
Turtle_2000_herb_count$sitename <- ('Turtle Reef')
Turtle_2000_herb_count$Type <- "Herbivorous"

Turtle_2000_comm <- merge(Turtle_2000, Comm, by = c("SPECIES_CD"))
Turtle_2000_comm_count <- count(Turtle_2000_comm, vars = "SPECIES_CD")
Turtle_2000_comm_count$Year <- ('2000')
Turtle_2000_comm_count$sitename <- ('Turtle Reef')
Turtle_2000_comm_count$Type <- "Commercial"


Turtle_2000_total_count <- rbind(Turtle_2000_herb_count, Turtle_2000_comm_count)


Turtle_2001 <- import("UK/Turtle/data/Turtle_2001.xls")


Turtle_2001_herb <- merge(Turtle_2001, Herb, by = c("SPECIES_CD"))
Turtle_2001_herb_count <- count(Turtle_2001_herb, vars = "SPECIES_CD")
Turtle_2001_herb_count$Year <- ('2001')
Turtle_2001_herb_count$sitename <- ('Turtle Reef')
Turtle_2001_herb_count$Type <- "Herbivorous"

Turtle_2001_comm <- merge(Turtle_2001, Comm, by = c("SPECIES_CD"))
Turtle_2001_comm_count <- count(Turtle_2001_comm, vars = "SPECIES_CD")
Turtle_2001_comm_count$Year <- ('2001')
Turtle_2001_comm_count$sitename <- ('Turtle Reef')
Turtle_2001_comm_count$Type <- "Commercial"


Turtle_2001_total_count <- rbind(Turtle_2001_herb_count, Turtle_2001_comm_count)


Turtle_2002 <- import("UK/Turtle/data/Turtle_2002.xls")


Turtle_2002_herb <- merge(Turtle_2002, Herb, by = c("SPECIES_CD"))
Turtle_2002_herb_count <- count(Turtle_2002_herb, vars = "SPECIES_CD")
Turtle_2002_herb_count$Year <- ('2002')
Turtle_2002_herb_count$sitename <- ('Turtle Reef')
Turtle_2002_herb_count$Type <- "Herbivorous"

Turtle_2002_comm <- merge(Turtle_2002, Comm, by = c("SPECIES_CD"))
Turtle_2002_comm_count <- count(Turtle_2002_comm, vars = "SPECIES_CD")
Turtle_2002_comm_count$Year <- ('2002')
Turtle_2002_comm_count$sitename <- ('Turtle Reef')
Turtle_2002_comm_count$Type <- "Commercial"


Turtle_2002_total_count <- rbind(Turtle_2002_herb_count, Turtle_2002_comm_count)



Turtle_2003 <- import("UK/Turtle/data/Turtle_2003.xls")


Turtle_2003_herb <- merge(Turtle_2003, Herb, by = c("SPECIES_CD"))
Turtle_2003_herb_count <- count(Turtle_2003_herb, vars = "SPECIES_CD")
Turtle_2003_herb_count$Year <- ('2003')
Turtle_2003_herb_count$sitename <- ('Turtle Reef')
Turtle_2003_herb_count$Type <- "Herbivorous"

Turtle_2003_comm <- merge(Turtle_2003, Comm, by = c("SPECIES_CD"))
Turtle_2003_comm_count <- count(Turtle_2003_comm, vars = "SPECIES_CD")
Turtle_2003_comm_count$Year <- ('2003')
Turtle_2003_comm_count$sitename <- ('Turtle Reef')
Turtle_2003_comm_count$Type <- "Commercial"


Turtle_2003_total_count <- rbind(Turtle_2003_herb_count, Turtle_2003_comm_count)




Turtle_2004 <- import("UK/Turtle/data/Turtle_2004.xls")


Turtle_2004_herb <- merge(Turtle_2004, Herb, by = c("SPECIES_CD"))
Turtle_2004_herb_count <- count(Turtle_2004_herb, vars = "SPECIES_CD")
Turtle_2004_herb_count$Year <- ('2004')
Turtle_2004_herb_count$sitename <- ('Turtle Reef')
Turtle_2004_herb_count$Type <- "Herbivorous"

Turtle_2004_comm <- merge(Turtle_2004, Comm, by = c("SPECIES_CD"))
Turtle_2004_comm_count <- count(Turtle_2004_comm, vars = "SPECIES_CD")
Turtle_2004_comm_count$Year <- ('2004')
Turtle_2004_comm_count$sitename <- ('Turtle Reef')
Turtle_2004_comm_count$Type <- "Commercial"


Turtle_2004_total_count <- rbind(Turtle_2004_herb_count, Turtle_2004_comm_count)


Turtle_2005 <- import("UK/Turtle/data/Turtle_2005.xls")


Turtle_2005_herb <- merge(Turtle_2005, Herb, by = c("SPECIES_CD"))
Turtle_2005_herb_count <- count(Turtle_2005_herb, vars = "SPECIES_CD")
Turtle_2005_herb_count$Year <- ('2005')
Turtle_2005_herb_count$sitename <- ('Turtle Reef')
Turtle_2005_herb_count$Type <- "Herbivorous"

Turtle_2005_comm <- merge(Turtle_2005, Comm, by = c("SPECIES_CD"))
Turtle_2005_comm_count <- count(Turtle_2005_comm, vars = "SPECIES_CD")
Turtle_2005_comm_count$Year <- ('2005')
Turtle_2005_comm_count$sitename <- ('Turtle Reef')
Turtle_2005_comm_count$Type <- "Commercial"


Turtle_2005_total_count <- rbind(Turtle_2005_herb_count, Turtle_2005_comm_count)




Turtle_2006 <- import("UK/Turtle/data/Turtle_2006.xls")


Turtle_2006_herb <- merge(Turtle_2006, Herb, by = c("SPECIES_CD"))
Turtle_2006_herb_count <- count(Turtle_2006_herb, vars = "SPECIES_CD")
Turtle_2006_herb_count$Year <- ('2006')
Turtle_2006_herb_count$sitename <- ('Turtle Reef')
Turtle_2006_herb_count$Type <- "Herbivorous"

Turtle_2006_comm <- merge(Turtle_2006, Comm, by = c("SPECIES_CD"))
Turtle_2006_comm_count <- count(Turtle_2006_comm, vars = "SPECIES_CD")
Turtle_2006_comm_count$Year <- ('2006')
Turtle_2006_comm_count$sitename <- ('Turtle Reef')
Turtle_2006_comm_count$Type <- "Commercial"


Turtle_2006_total_count <- rbind(Turtle_2006_herb_count, Turtle_2006_comm_count)



Turtle_2007 <- import("UK/Turtle/data/Turtle_2007.xls")


Turtle_2007_herb <- merge(Turtle_2007, Herb, by = c("SPECIES_CD"))
Turtle_2007_herb_count <- count(Turtle_2007_herb, vars = "SPECIES_CD")
Turtle_2007_herb_count$Year <- ('2007')
Turtle_2007_herb_count$sitename <- ('Turtle Reef')
Turtle_2007_herb_count$Type <- "Herbivorous"

Turtle_2007_comm <- merge(Turtle_2007, Comm, by = c("SPECIES_CD"))
Turtle_2007_comm_count <- count(Turtle_2007_comm, vars = "SPECIES_CD")
Turtle_2007_comm_count$Year <- ('2007')
Turtle_2007_comm_count$sitename <- ('Turtle Reef')
Turtle_2007_comm_count$Type <- "Commercial"


Turtle_2007_total_count <- rbind(Turtle_2007_herb_count, Turtle_2007_comm_count)




Turtle_2008 <- import("UK/Turtle/data/Turtle_2008.xls")


Turtle_2008_herb <- merge(Turtle_2008, Herb, by = c("SPECIES_CD"))
Turtle_2008_herb_count <- count(Turtle_2008_herb, vars = "SPECIES_CD")
Turtle_2008_herb_count$Year <- ('2008')
Turtle_2008_herb_count$sitename <- ('Turtle Reef')
Turtle_2008_herb_count$Type <- "Herbivorous"

Turtle_2008_comm <- merge(Turtle_2008, Comm, by = c("SPECIES_CD"))
Turtle_2008_comm_count <- count(Turtle_2008_comm, vars = "SPECIES_CD")
Turtle_2008_comm_count$Year <- ('2008')
Turtle_2008_comm_count$sitename <- ('Turtle Reef')
Turtle_2008_comm_count$Type <- "Commercial"


Turtle_2008_total_count <- rbind(Turtle_2008_herb_count, Turtle_2008_comm_count)



Turtle_2009 <- import("UK/Turtle/data/Turtle_2009.xls")


Turtle_2009_herb <- merge(Turtle_2009, Herb, by = c("SPECIES_CD"))
Turtle_2009_herb_count <- count(Turtle_2009_herb, vars = "SPECIES_CD")
Turtle_2009_herb_count$Year <- ('2009')
Turtle_2009_herb_count$sitename <- ('Turtle Reef')
Turtle_2009_herb_count$Type <- "Herbivorous"

Turtle_2009_comm <- merge(Turtle_2009, Comm, by = c("SPECIES_CD"))
Turtle_2009_comm_count <- count(Turtle_2009_comm, vars = "SPECIES_CD")
Turtle_2009_comm_count$Year <- ('2009')
Turtle_2009_comm_count$sitename <- ('Turtle Reef')
Turtle_2009_comm_count$Type <- "Commercial"


Turtle_2009_total_count <- rbind(Turtle_2009_herb_count, Turtle_2009_comm_count)





Turtle_2010 <- import("UK/Turtle/data/Turtle_2010.xls")


Turtle_2010_herb <- merge(Turtle_2010, Herb, by = c("SPECIES_CD"))
Turtle_2010_herb_count <- count(Turtle_2010_herb, vars = "SPECIES_CD")
Turtle_2010_herb_count$Year <- ('2010')
Turtle_2010_herb_count$sitename <- ('Turtle Reef')
Turtle_2010_herb_count$Type <- "Herbivorous"

Turtle_2010_comm <- merge(Turtle_2010, Comm, by = c("SPECIES_CD"))
Turtle_2010_comm_count <- count(Turtle_2010_comm, vars = "SPECIES_CD")
Turtle_2010_comm_count$Year <- ('2010')
Turtle_2010_comm_count$sitename <- ('Turtle Reef')
Turtle_2010_comm_count$Type <- "Commercial"


Turtle_2010_total_count <- rbind(Turtle_2010_herb_count, Turtle_2010_comm_count)


Turtle_2011 <- import("UK/Turtle/data/Turtle_2011.xls")


Turtle_2011_herb <- merge(Turtle_2011, Herb, by = c("SPECIES_CD"))
Turtle_2011_herb_count <- count(Turtle_2011_herb, vars = "SPECIES_CD")
Turtle_2011_herb_count$Year <- ('2011')
Turtle_2011_herb_count$sitename <- ('Turtle Reef')
Turtle_2011_herb_count$Type <- "Herbivorous"

Turtle_2011_comm <- merge(Turtle_2011, Comm, by = c("SPECIES_CD"))
Turtle_2011_comm_count <- count(Turtle_2011_comm, vars = "SPECIES_CD")
Turtle_2011_comm_count$Year <- ('2011')
Turtle_2011_comm_count$sitename <- ('Turtle Reef')
Turtle_2011_comm_count$Type <- "Commercial"


Turtle_2011_total_count <- rbind(Turtle_2011_herb_count, Turtle_2011_comm_count)





Turtle_2012 <- import("UK/Turtle/data/Turtle_2012.xls")


Turtle_2012_herb <- merge(Turtle_2012, Herb, by = c("SPECIES_CD"))
Turtle_2012_herb_count <- count(Turtle_2012_herb, vars = "SPECIES_CD")
Turtle_2012_herb_count$Year <- ('2012')
Turtle_2012_herb_count$sitename <- ('Turtle Reef')
Turtle_2012_herb_count$Type <- "Herbivorous"

Turtle_2012_comm <- merge(Turtle_2012, Comm, by = c("SPECIES_CD"))
Turtle_2012_comm_count <- count(Turtle_2012_comm, vars = "SPECIES_CD")
Turtle_2012_comm_count$Year <- ('2012')
Turtle_2012_comm_count$sitename <- ('Turtle Reef')
Turtle_2012_comm_count$Type <- "Commercial"


Turtle_2012_total_count <- rbind(Turtle_2012_herb_count, Turtle_2012_comm_count)



Turtle_2014 <- import("UK/Turtle/data/Turtle_2014.xls")


Turtle_2014_herb <- merge(Turtle_2014, Herb, by = c("SPECIES_CD"))
Turtle_2014_herb_count <- count(Turtle_2014_herb, vars = "SPECIES_CD")
Turtle_2014_herb_count$Year <- ('2014')
Turtle_2014_herb_count$sitename <- ('Turtle Reef')
Turtle_2014_herb_count$Type <- "Herbivorous"

Turtle_2014_comm <- merge(Turtle_2014, Comm, by = c("SPECIES_CD"))
Turtle_2014_comm_count <- count(Turtle_2014_comm, vars = "SPECIES_CD")
Turtle_2014_comm_count$Year <- ('2014')
Turtle_2014_comm_count$sitename <- ('Turtle Reef')
Turtle_2014_comm_count$Type <- "Commercial"


Turtle_2014_total_count <- rbind(Turtle_2014_herb_count, Turtle_2014_comm_count)




Turtle_2016 <- import("UK/Turtle/data/Turtle_2016.xls")


Turtle_2016_herb <- merge(Turtle_2016, Herb, by = c("SPECIES_CD"))
Turtle_2016_herb_count <- count(Turtle_2016_herb, vars = "SPECIES_CD")
Turtle_2016_herb_count$Year <- ('2016')
Turtle_2016_herb_count$sitename <- ('Turtle Reef')
Turtle_2016_herb_count$Type <- "Herbivorous"

Turtle_2016_comm <- merge(Turtle_2016, Comm, by = c("SPECIES_CD"))
Turtle_2016_comm_count <- count(Turtle_2016_comm, vars = "SPECIES_CD")
Turtle_2016_comm_count$Year <- ('2016')
Turtle_2016_comm_count$sitename <- ('Turtle Reef')
Turtle_2016_comm_count$Type <- "Commercial"


Turtle_2016_total_count <- rbind(Turtle_2016_herb_count, Turtle_2016_comm_count)



Turtle_2018 <- import("UK/Turtle/data/Turtle_2018.xls")


Turtle_2018_herb <- merge(Turtle_2018, Herb, by = c("SPECIES_CD"))
Turtle_2018_herb_count <- count(Turtle_2018_herb, vars = "SPECIES_CD")
Turtle_2018_herb_count$Year <- ('2018')
Turtle_2018_herb_count$sitename <- ('Turtle Reef')
Turtle_2018_herb_count$Type <- "Herbivorous"

Turtle_2018_comm <- merge(Turtle_2018, Comm, by = c("SPECIES_CD"))
Turtle_2018_comm_count <- count(Turtle_2018_comm, vars = "SPECIES_CD")
Turtle_2018_comm_count$Year <- ('2018')
Turtle_2018_comm_count$sitename <- ('Turtle Reef')
Turtle_2018_comm_count$Type <- "Commercial"


Turtle_2018_total_count <- rbind(Turtle_2018_herb_count, Turtle_2018_comm_count)





Turtle_all <- rbind(Turtle_1999_total_count,Turtle_2000_total_count,Turtle_2001_total_count,Turtle_2002_total_count,Turtle_2003_total_count,Turtle_2004_total_count,Turtle_2005_total_count,Turtle_2006_total_count,Turtle_2007_total_count,Turtle_2008_total_count,Turtle_2009_total_count, Turtle_2010_total_count,Turtle_2011_total_count, Turtle_2012_total_count, Turtle_2014_total_count, Turtle_2016_total_count,Turtle_2018_total_count)


export(Turtle_all, "UK/Turtle/data/Turtle_count_herb_comm.csv")



Two_Patches_1999 <- import("UK/Two_Patches/data/Two_Patches_1999.xls")


Two_Patches_1999_herb <- merge(Two_Patches_1999, Herb, by = c("SPECIES_CD"))
Two_Patches_1999_herb_count <- count(Two_Patches_1999_herb, vars = "SPECIES_CD")
Two_Patches_1999_herb_count$Year <- ('1999')
Two_Patches_1999_herb_count$sitename <- ('Two Patches')
Two_Patches_1999_herb_count$Type <- "Herbivorous"

Two_Patches_1999_comm <- merge(Two_Patches_1999, Comm, by = c("SPECIES_CD"))
Two_Patches_1999_comm_count <- count(Two_Patches_1999_comm, vars = "SPECIES_CD")
Two_Patches_1999_comm_count$Year <- ('1999')
Two_Patches_1999_comm_count$sitename <- ('Two Patches')
Two_Patches_1999_comm_count$Type <- "Commercial"


Two_Patches_1999_total_count <- rbind(Two_Patches_1999_herb_count, Two_Patches_1999_comm_count)




Two_Patches_2000 <- import("UK/Two_Patches/data/Two_Patches_2000.xls")


Two_Patches_2000_herb <- merge(Two_Patches_2000, Herb, by = c("SPECIES_CD"))
Two_Patches_2000_herb_count <- count(Two_Patches_2000_herb, vars = "SPECIES_CD")
Two_Patches_2000_herb_count$Year <- ('2000')
Two_Patches_2000_herb_count$sitename <- ('Two Patches')
Two_Patches_2000_herb_count$Type <- "Herbivorous"

Two_Patches_2000_comm <- merge(Two_Patches_2000, Comm, by = c("SPECIES_CD"))
Two_Patches_2000_comm_count <- count(Two_Patches_2000_comm, vars = "SPECIES_CD")
Two_Patches_2000_comm_count$Year <- ('2000')
Two_Patches_2000_comm_count$sitename <- ('Two Patches')
Two_Patches_2000_comm_count$Type <- "Commercial"


Two_Patches_2000_total_count <- rbind(Two_Patches_2000_herb_count, Two_Patches_2000_comm_count)


Two_Patches_2001 <- import("UK/Two_Patches/data/Two_Patches_2001.xls")


Two_Patches_2001_herb <- merge(Two_Patches_2001, Herb, by = c("SPECIES_CD"))
Two_Patches_2001_herb_count <- count(Two_Patches_2001_herb, vars = "SPECIES_CD")
Two_Patches_2001_herb_count$Year <- ('2001')
Two_Patches_2001_herb_count$sitename <- ('Two Patches')
Two_Patches_2001_herb_count$Type <- "Herbivorous"

Two_Patches_2001_comm <- merge(Two_Patches_2001, Comm, by = c("SPECIES_CD"))
Two_Patches_2001_comm_count <- count(Two_Patches_2001_comm, vars = "SPECIES_CD")
Two_Patches_2001_comm_count$Year <- ('2001')
Two_Patches_2001_comm_count$sitename <- ('Two Patches')
Two_Patches_2001_comm_count$Type <- "Commercial"


Two_Patches_2001_total_count <- rbind(Two_Patches_2001_herb_count, Two_Patches_2001_comm_count)


Two_Patches_2002 <- import("UK/Two_Patches/data/Two_Patches_2002.xls")


Two_Patches_2002_herb <- merge(Two_Patches_2002, Herb, by = c("SPECIES_CD"))
Two_Patches_2002_herb_count <- count(Two_Patches_2002_herb, vars = "SPECIES_CD")
Two_Patches_2002_herb_count$Year <- ('2002')
Two_Patches_2002_herb_count$sitename <- ('Two Patches')
Two_Patches_2002_herb_count$Type <- "Herbivorous"

Two_Patches_2002_comm <- merge(Two_Patches_2002, Comm, by = c("SPECIES_CD"))
Two_Patches_2002_comm_count <- count(Two_Patches_2002_comm, vars = "SPECIES_CD")
Two_Patches_2002_comm_count$Year <- ('2002')
Two_Patches_2002_comm_count$sitename <- ('Two Patches')
Two_Patches_2002_comm_count$Type <- "Commercial"


Two_Patches_2002_total_count <- rbind(Two_Patches_2002_herb_count, Two_Patches_2002_comm_count)



Two_Patches_2003 <- import("UK/Two_Patches/data/Two_Patches_2003.xls")


Two_Patches_2003_herb <- merge(Two_Patches_2003, Herb, by = c("SPECIES_CD"))
Two_Patches_2003_herb_count <- count(Two_Patches_2003_herb, vars = "SPECIES_CD")
Two_Patches_2003_herb_count$Year <- ('2003')
Two_Patches_2003_herb_count$sitename <- ('Two Patches')
Two_Patches_2003_herb_count$Type <- "Herbivorous"

Two_Patches_2003_comm <- merge(Two_Patches_2003, Comm, by = c("SPECIES_CD"))
Two_Patches_2003_comm_count <- count(Two_Patches_2003_comm, vars = "SPECIES_CD")
Two_Patches_2003_comm_count$Year <- ('2003')
Two_Patches_2003_comm_count$sitename <- ('Two Patches')
Two_Patches_2003_comm_count$Type <- "Commercial"


Two_Patches_2003_total_count <- rbind(Two_Patches_2003_herb_count, Two_Patches_2003_comm_count)




Two_Patches_2004 <- import("UK/Two_Patches/data/Two_Patches_2004.xls")


Two_Patches_2004_herb <- merge(Two_Patches_2004, Herb, by = c("SPECIES_CD"))
Two_Patches_2004_herb_count <- count(Two_Patches_2004_herb, vars = "SPECIES_CD")
Two_Patches_2004_herb_count$Year <- ('2004')
Two_Patches_2004_herb_count$sitename <- ('Two Patches')
Two_Patches_2004_herb_count$Type <- "Herbivorous"

Two_Patches_2004_comm <- merge(Two_Patches_2004, Comm, by = c("SPECIES_CD"))
Two_Patches_2004_comm_count <- count(Two_Patches_2004_comm, vars = "SPECIES_CD")
Two_Patches_2004_comm_count$Year <- ('2004')
Two_Patches_2004_comm_count$sitename <- ('Two Patches')
Two_Patches_2004_comm_count$Type <- "Commercial"


Two_Patches_2004_total_count <- rbind(Two_Patches_2004_herb_count, Two_Patches_2004_comm_count)


Two_Patches_2005 <- import("UK/Two_Patches/data/Two_Patches_2005.xls")


Two_Patches_2005_herb <- merge(Two_Patches_2005, Herb, by = c("SPECIES_CD"))
Two_Patches_2005_herb_count <- count(Two_Patches_2005_herb, vars = "SPECIES_CD")
Two_Patches_2005_herb_count$Year <- ('2005')
Two_Patches_2005_herb_count$sitename <- ('Two Patches')
Two_Patches_2005_herb_count$Type <- "Herbivorous"

Two_Patches_2005_comm <- merge(Two_Patches_2005, Comm, by = c("SPECIES_CD"))
Two_Patches_2005_comm_count <- count(Two_Patches_2005_comm, vars = "SPECIES_CD")
Two_Patches_2005_comm_count$Year <- ('2005')
Two_Patches_2005_comm_count$sitename <- ('Two Patches')
Two_Patches_2005_comm_count$Type <- "Commercial"


Two_Patches_2005_total_count <- rbind(Two_Patches_2005_herb_count, Two_Patches_2005_comm_count)




Two_Patches_2006 <- import("UK/Two_Patches/data/Two_Patches_2006.xls")


Two_Patches_2006_herb <- merge(Two_Patches_2006, Herb, by = c("SPECIES_CD"))
Two_Patches_2006_herb_count <- count(Two_Patches_2006_herb, vars = "SPECIES_CD")
Two_Patches_2006_herb_count$Year <- ('2006')
Two_Patches_2006_herb_count$sitename <- ('Two Patches')
Two_Patches_2006_herb_count$Type <- "Herbivorous"

Two_Patches_2006_comm <- merge(Two_Patches_2006, Comm, by = c("SPECIES_CD"))
Two_Patches_2006_comm_count <- count(Two_Patches_2006_comm, vars = "SPECIES_CD")
Two_Patches_2006_comm_count$Year <- ('2006')
Two_Patches_2006_comm_count$sitename <- ('Two Patches')
Two_Patches_2006_comm_count$Type <- "Commercial"


Two_Patches_2006_total_count <- rbind(Two_Patches_2006_herb_count, Two_Patches_2006_comm_count)



Two_Patches_2007 <- import("UK/Two_Patches/data/Two_Patches_2007.xls")


Two_Patches_2007_herb <- merge(Two_Patches_2007, Herb, by = c("SPECIES_CD"))
Two_Patches_2007_herb_count <- count(Two_Patches_2007_herb, vars = "SPECIES_CD")
Two_Patches_2007_herb_count$Year <- ('2007')
Two_Patches_2007_herb_count$sitename <- ('Two Patches')
Two_Patches_2007_herb_count$Type <- "Herbivorous"

Two_Patches_2007_comm <- merge(Two_Patches_2007, Comm, by = c("SPECIES_CD"))
Two_Patches_2007_comm_count <- count(Two_Patches_2007_comm, vars = "SPECIES_CD")
Two_Patches_2007_comm_count$Year <- ('2007')
Two_Patches_2007_comm_count$sitename <- ('Two Patches')
Two_Patches_2007_comm_count$Type <- "Commercial"


Two_Patches_2007_total_count <- rbind(Two_Patches_2007_herb_count, Two_Patches_2007_comm_count)




Two_Patches_2008 <- import("UK/Two_Patches/data/Two_Patches_2008.xls")


Two_Patches_2008_herb <- merge(Two_Patches_2008, Herb, by = c("SPECIES_CD"))
Two_Patches_2008_herb_count <- count(Two_Patches_2008_herb, vars = "SPECIES_CD")
Two_Patches_2008_herb_count$Year <- ('2008')
Two_Patches_2008_herb_count$sitename <- ('Two Patches')
Two_Patches_2008_herb_count$Type <- "Herbivorous"

Two_Patches_2008_comm <- merge(Two_Patches_2008, Comm, by = c("SPECIES_CD"))
Two_Patches_2008_comm_count <- count(Two_Patches_2008_comm, vars = "SPECIES_CD")
Two_Patches_2008_comm_count$Year <- ('2008')
Two_Patches_2008_comm_count$sitename <- ('Two Patches')
Two_Patches_2008_comm_count$Type <- "Commercial"


Two_Patches_2008_total_count <- rbind(Two_Patches_2008_herb_count, Two_Patches_2008_comm_count)



Two_Patches_2009 <- import("UK/Two_Patches/data/Two_Patches_2009.xls")


Two_Patches_2009_herb <- merge(Two_Patches_2009, Herb, by = c("SPECIES_CD"))
Two_Patches_2009_herb_count <- count(Two_Patches_2009_herb, vars = "SPECIES_CD")
Two_Patches_2009_herb_count$Year <- ('2009')
Two_Patches_2009_herb_count$sitename <- ('Two Patches')
Two_Patches_2009_herb_count$Type <- "Herbivorous"

Two_Patches_2009_comm <- merge(Two_Patches_2009, Comm, by = c("SPECIES_CD"))
Two_Patches_2009_comm_count <- count(Two_Patches_2009_comm, vars = "SPECIES_CD")
Two_Patches_2009_comm_count$Year <- ('2009')
Two_Patches_2009_comm_count$sitename <- ('Two Patches')
Two_Patches_2009_comm_count$Type <- "Commercial"


Two_Patches_2009_total_count <- rbind(Two_Patches_2009_herb_count, Two_Patches_2009_comm_count)





Two_Patches_2010 <- import("UK/Two_Patches/data/Two_Patches_2010.xls")


Two_Patches_2010_herb <- merge(Two_Patches_2010, Herb, by = c("SPECIES_CD"))
Two_Patches_2010_herb_count <- count(Two_Patches_2010_herb, vars = "SPECIES_CD")
Two_Patches_2010_herb_count$Year <- ('2010')
Two_Patches_2010_herb_count$sitename <- ('Two Patches')
Two_Patches_2010_herb_count$Type <- "Herbivorous"

Two_Patches_2010_comm <- merge(Two_Patches_2010, Comm, by = c("SPECIES_CD"))
Two_Patches_2010_comm_count <- count(Two_Patches_2010_comm, vars = "SPECIES_CD")
Two_Patches_2010_comm_count$Year <- ('2010')
Two_Patches_2010_comm_count$sitename <- ('Two Patches')
Two_Patches_2010_comm_count$Type <- "Commercial"


Two_Patches_2010_total_count <- rbind(Two_Patches_2010_herb_count, Two_Patches_2010_comm_count)


Two_Patches_2011 <- import("UK/Two_Patches/data/Two_Patches_2011.xls")


Two_Patches_2011_herb <- merge(Two_Patches_2011, Herb, by = c("SPECIES_CD"))
Two_Patches_2011_herb_count <- count(Two_Patches_2011_herb, vars = "SPECIES_CD")
Two_Patches_2011_herb_count$Year <- ('2011')
Two_Patches_2011_herb_count$sitename <- ('Two Patches')
Two_Patches_2011_herb_count$Type <- "Herbivorous"

Two_Patches_2011_comm <- merge(Two_Patches_2011, Comm, by = c("SPECIES_CD"))
Two_Patches_2011_comm_count <- count(Two_Patches_2011_comm, vars = "SPECIES_CD")
Two_Patches_2011_comm_count$Year <- ('2011')
Two_Patches_2011_comm_count$sitename <- ('Two Patches')
Two_Patches_2011_comm_count$Type <- "Commercial"


Two_Patches_2011_total_count <- rbind(Two_Patches_2011_herb_count, Two_Patches_2011_comm_count)





Two_Patches_2012 <- import("UK/Two_Patches/data/Two_Patches_2012.xls")


Two_Patches_2012_herb <- merge(Two_Patches_2012, Herb, by = c("SPECIES_CD"))
Two_Patches_2012_herb_count <- count(Two_Patches_2012_herb, vars = "SPECIES_CD")
Two_Patches_2012_herb_count$Year <- ('2012')
Two_Patches_2012_herb_count$sitename <- ('Two Patches')
Two_Patches_2012_herb_count$Type <- "Herbivorous"

Two_Patches_2012_comm <- merge(Two_Patches_2012, Comm, by = c("SPECIES_CD"))
Two_Patches_2012_comm_count <- count(Two_Patches_2012_comm, vars = "SPECIES_CD")
Two_Patches_2012_comm_count$Year <- ('2012')
Two_Patches_2012_comm_count$sitename <- ('Two Patches')
Two_Patches_2012_comm_count$Type <- "Commercial"


Two_Patches_2012_total_count <- rbind(Two_Patches_2012_herb_count, Two_Patches_2012_comm_count)



Two_Patches_2014 <- import("UK/Two_Patches/data/Two_Patches_2014.xls")


Two_Patches_2014_herb <- merge(Two_Patches_2014, Herb, by = c("SPECIES_CD"))
Two_Patches_2014_herb_count <- count(Two_Patches_2014_herb, vars = "SPECIES_CD")
Two_Patches_2014_herb_count$Year <- ('2014')
Two_Patches_2014_herb_count$sitename <- ('Two Patches')
Two_Patches_2014_herb_count$Type <- "Herbivorous"

Two_Patches_2014_comm <- merge(Two_Patches_2014, Comm, by = c("SPECIES_CD"))
Two_Patches_2014_comm_count <- count(Two_Patches_2014_comm, vars = "SPECIES_CD")
Two_Patches_2014_comm_count$Year <- ('2014')
Two_Patches_2014_comm_count$sitename <- ('Two Patches')
Two_Patches_2014_comm_count$Type <- "Commercial"


Two_Patches_2014_total_count <- rbind(Two_Patches_2014_herb_count, Two_Patches_2014_comm_count)




Two_Patches_2016 <- import("UK/Two_Patches/data/Two_Patches_2016.xls")


Two_Patches_2016_herb <- merge(Two_Patches_2016, Herb, by = c("SPECIES_CD"))
Two_Patches_2016_herb_count <- count(Two_Patches_2016_herb, vars = "SPECIES_CD")
Two_Patches_2016_herb_count$Year <- ('2016')
Two_Patches_2016_herb_count$sitename <- ('Two Patches')
Two_Patches_2016_herb_count$Type <- "Herbivorous"

Two_Patches_2016_comm <- merge(Two_Patches_2016, Comm, by = c("SPECIES_CD"))
Two_Patches_2016_comm_count <- count(Two_Patches_2016_comm, vars = "SPECIES_CD")
Two_Patches_2016_comm_count$Year <- ('2016')
Two_Patches_2016_comm_count$sitename <- ('Two Patches')
Two_Patches_2016_comm_count$Type <- "Commercial"


Two_Patches_2016_total_count <- rbind(Two_Patches_2016_herb_count, Two_Patches_2016_comm_count)



Two_Patches_2018 <- import("UK/Two_Patches/data/Two_Patches_2018.xls")


Two_Patches_2018_herb <- merge(Two_Patches_2018, Herb, by = c("SPECIES_CD"))
Two_Patches_2018_herb_count <- count(Two_Patches_2018_herb, vars = "SPECIES_CD")
Two_Patches_2018_herb_count$Year <- ('2018')
Two_Patches_2018_herb_count$sitename <- ('Two Patches')
Two_Patches_2018_herb_count$Type <- "Herbivorous"

Two_Patches_2018_comm <- merge(Two_Patches_2018, Comm, by = c("SPECIES_CD"))
Two_Patches_2018_comm_count <- count(Two_Patches_2018_comm, vars = "SPECIES_CD")
Two_Patches_2018_comm_count$Year <- ('2018')
Two_Patches_2018_comm_count$sitename <- ('Two Patches')
Two_Patches_2018_comm_count$Type <- "Commercial"


Two_Patches_2018_total_count <- rbind(Two_Patches_2018_herb_count, Two_Patches_2018_comm_count)





Two_Patches_all <- rbind(Two_Patches_1999_total_count,Two_Patches_2000_total_count,Two_Patches_2001_total_count,Two_Patches_2002_total_count,Two_Patches_2003_total_count,Two_Patches_2004_total_count,Two_Patches_2005_total_count,Two_Patches_2006_total_count,Two_Patches_2007_total_count,Two_Patches_2008_total_count,Two_Patches_2009_total_count, Two_Patches_2010_total_count,Two_Patches_2011_total_count, Two_Patches_2012_total_count, Two_Patches_2014_total_count, Two_Patches_2016_total_count,Two_Patches_2018_total_count)


export(Two_Patches_all, "UK/Two_Patches/data/Two_Patches_count_herb_comm.csv")



### Combine all UK


UK_reef_count_combined <- rbind(Admiral_all, Burr_Fish_all, Carysfort_Deep_all, Carysfort_Shallow_all, Conch_Deep_all, Conch_Shallow_all, Grecian_Rocks_all, Molasses_Deep_all, Molasses_Shallow_all, Porter_Patch_all, Turtle_all, Two_Patches_all)
UK_reef_count_combined$REGION <- ("UK")
export(UK_reef_count_combined, "UK/UK_fish_count.csv")




### SEF 


Broward_County_1_2013 <- import("SEF/Broward_County_1/data/Broward_County_1_2013.xls")


Broward_County_1_2013_herb <- merge(Broward_County_1_2013, Herb, by = c("SPECIES_CD"))
Broward_County_1_2013_herb_count <- count(Broward_County_1_2013_herb, vars = "SPECIES_CD")
Broward_County_1_2013_herb_count$Year <- ('2013')
Broward_County_1_2013_herb_count$sitename <- ('Broward County 1')
Broward_County_1_2013_herb_count$Type <- "Herbivorous"

Broward_County_1_2013_comm <- merge(Broward_County_1_2013, Comm, by = c("SPECIES_CD"))
Broward_County_1_2013_comm_count <- count(Broward_County_1_2013_comm, vars = "SPECIES_CD")
Broward_County_1_2013_comm_count$Year <- ('2013')
Broward_County_1_2013_comm_count$sitename <- ('Broward County 1')
Broward_County_1_2013_comm_count$Type <- "Commercial"


Broward_County_1_2013_total_count <- rbind(Broward_County_1_2013_herb_count, Broward_County_1_2013_comm_count)



Broward_County_1_2014 <- import("SEF/Broward_County_1/data/Broward_County_1_2014.xls")


Broward_County_1_2014_herb <- merge(Broward_County_1_2014, Herb, by = c("SPECIES_CD"))
Broward_County_1_2014_herb_count <- count(Broward_County_1_2014_herb, vars = "SPECIES_CD")
Broward_County_1_2014_herb_count$Year <- ('2014')
Broward_County_1_2014_herb_count$sitename <- ('Broward County 1')
Broward_County_1_2014_herb_count$Type <- "Herbivorous"

Broward_County_1_2014_comm <- merge(Broward_County_1_2014, Comm, by = c("SPECIES_CD"))
Broward_County_1_2014_comm_count <- count(Broward_County_1_2014_comm, vars = "SPECIES_CD")
Broward_County_1_2014_comm_count$Year <- ('2014')
Broward_County_1_2014_comm_count$sitename <- ('Broward County 1')
Broward_County_1_2014_comm_count$Type <- "Commercial"


Broward_County_1_2014_total_count <- rbind(Broward_County_1_2014_herb_count, Broward_County_1_2014_comm_count)


Broward_County_1_2015 <- import("SEF/Broward_County_1/data/Broward_County_1_2015.xls")


Broward_County_1_2015_herb <- merge(Broward_County_1_2015, Herb, by = c("SPECIES_CD"))
Broward_County_1_2015_herb_count <- count(Broward_County_1_2015_herb, vars = "SPECIES_CD")
Broward_County_1_2015_herb_count$Year <- ('2015')
Broward_County_1_2015_herb_count$sitename <- ('Broward County 1')
Broward_County_1_2015_herb_count$Type <- "Herbivorous"

Broward_County_1_2015_comm <- merge(Broward_County_1_2015, Comm, by = c("SPECIES_CD"))
Broward_County_1_2015_comm_count <- count(Broward_County_1_2015_comm, vars = "SPECIES_CD")
Broward_County_1_2015_comm_count$Year <- ('2015')
Broward_County_1_2015_comm_count$sitename <- ('Broward County 1')
Broward_County_1_2015_comm_count$Type <- "Commercial"


Broward_County_1_2015_total_count <- rbind(Broward_County_1_2015_herb_count, Broward_County_1_2015_comm_count)




Broward_County_1_2016 <- import("SEF/Broward_County_1/data/Broward_County_1_2016.xls")


Broward_County_1_2016_herb <- merge(Broward_County_1_2016, Herb, by = c("SPECIES_CD"))
Broward_County_1_2016_herb_count <- count(Broward_County_1_2016_herb, vars = "SPECIES_CD")
Broward_County_1_2016_herb_count$Year <- ('2016')
Broward_County_1_2016_herb_count$sitename <- ('Broward County 1')
Broward_County_1_2016_herb_count$Type <- "Herbivorous"

Broward_County_1_2016_comm <- merge(Broward_County_1_2016, Comm, by = c("SPECIES_CD"))
Broward_County_1_2016_comm_count <- count(Broward_County_1_2016_comm, vars = "SPECIES_CD")
Broward_County_1_2016_comm_count$Year <- ('2016')
Broward_County_1_2016_comm_count$sitename <- ('Broward County 1')
Broward_County_1_2016_comm_count$Type <- "Commercial"


Broward_County_1_2016_total_count <- rbind(Broward_County_1_2016_herb_count, Broward_County_1_2016_comm_count)



Broward_County_1_2018 <- import("SEF/Broward_County_1/data/Broward_County_1_2018.xls")


Broward_County_1_2018_herb <- merge(Broward_County_1_2018, Herb, by = c("SPECIES_CD"))
Broward_County_1_2018_herb_count <- count(Broward_County_1_2018_herb, vars = "SPECIES_CD")
Broward_County_1_2018_herb_count$Year <- ('2018')
Broward_County_1_2018_herb_count$sitename <- ('Broward County 1')
Broward_County_1_2018_herb_count$Type <- "Herbivorous"

Broward_County_1_2018_comm <- merge(Broward_County_1_2018, Comm, by = c("SPECIES_CD"))
Broward_County_1_2018_comm_count <- count(Broward_County_1_2018_comm, vars = "SPECIES_CD")
Broward_County_1_2018_comm_count$Year <- ('2018')
Broward_County_1_2018_comm_count$sitename <- ('Broward County 1')
Broward_County_1_2018_comm_count$Type <- "Commercial"


Broward_County_1_2018_total_count <- rbind(Broward_County_1_2018_herb_count, Broward_County_1_2018_comm_count)





Broward_County_1_all <- rbind(Broward_County_1_2013_total_count, Broward_County_1_2014_total_count, Broward_County_1_2015_total_count, Broward_County_1_2016_total_count,Broward_County_1_2018_total_count)


export(Broward_County_1_all, "SEF/Broward_County_1/data/Broward_County_1_count_herb_comm.csv")





Broward_County_2_2013 <- import("SEF/Broward_County_2/data/Broward_County_2_2013.xls")


Broward_County_2_2013_herb <- merge(Broward_County_2_2013, Herb, by = c("SPECIES_CD"))
Broward_County_2_2013_herb_count <- count(Broward_County_2_2013_herb, vars = "SPECIES_CD")
Broward_County_2_2013_herb_count$Year <- ('2013')
Broward_County_2_2013_herb_count$sitename <- ('Broward County 2')
Broward_County_2_2013_herb_count$Type <- "Herbivorous"

Broward_County_2_2013_comm <- merge(Broward_County_2_2013, Comm, by = c("SPECIES_CD"))
Broward_County_2_2013_comm_count <- count(Broward_County_2_2013_comm, vars = "SPECIES_CD")
Broward_County_2_2013_comm_count$Year <- ('2013')
Broward_County_2_2013_comm_count$sitename <- ('Broward County 2')
Broward_County_2_2013_comm_count$Type <- "Commercial"


Broward_County_2_2013_total_count <- rbind(Broward_County_2_2013_herb_count, Broward_County_2_2013_comm_count)



Broward_County_2_2014 <- import("SEF/Broward_County_2/data/Broward_County_2_2014.xls")


Broward_County_2_2014_herb <- merge(Broward_County_2_2014, Herb, by = c("SPECIES_CD"))
Broward_County_2_2014_herb_count <- count(Broward_County_2_2014_herb, vars = "SPECIES_CD")
Broward_County_2_2014_herb_count$Year <- ('2014')
Broward_County_2_2014_herb_count$sitename <- ('Broward County 2')
Broward_County_2_2014_herb_count$Type <- "Herbivorous"

Broward_County_2_2014_comm <- merge(Broward_County_2_2014, Comm, by = c("SPECIES_CD"))
Broward_County_2_2014_comm_count <- count(Broward_County_2_2014_comm, vars = "SPECIES_CD")
Broward_County_2_2014_comm_count$Year <- ('2014')
Broward_County_2_2014_comm_count$sitename <- ('Broward County 2')
Broward_County_2_2014_comm_count$Type <- "Commercial"


Broward_County_2_2014_total_count <- rbind(Broward_County_2_2014_herb_count, Broward_County_2_2014_comm_count)


Broward_County_2_2015 <- import("SEF/Broward_County_2/data/Broward_County_2_2015.xls")


Broward_County_2_2015_herb <- merge(Broward_County_2_2015, Herb, by = c("SPECIES_CD"))
Broward_County_2_2015_herb_count <- count(Broward_County_2_2015_herb, vars = "SPECIES_CD")
Broward_County_2_2015_herb_count$Year <- ('2015')
Broward_County_2_2015_herb_count$sitename <- ('Broward County 2')
Broward_County_2_2015_herb_count$Type <- "Herbivorous"

Broward_County_2_2015_comm <- merge(Broward_County_2_2015, Comm, by = c("SPECIES_CD"))
Broward_County_2_2015_comm_count <- count(Broward_County_2_2015_comm, vars = "SPECIES_CD")
Broward_County_2_2015_comm_count$Year <- ('2015')
Broward_County_2_2015_comm_count$sitename <- ('Broward County 2')
Broward_County_2_2015_comm_count$Type <- "Commercial"


Broward_County_2_2015_total_count <- rbind(Broward_County_2_2015_herb_count, Broward_County_2_2015_comm_count)




Broward_County_2_2016 <- import("SEF/Broward_County_2/data/Broward_County_2_2016.xls")


Broward_County_2_2016_herb <- merge(Broward_County_2_2016, Herb, by = c("SPECIES_CD"))
Broward_County_2_2016_herb_count <- count(Broward_County_2_2016_herb, vars = "SPECIES_CD")
Broward_County_2_2016_herb_count$Year <- ('2016')
Broward_County_2_2016_herb_count$sitename <- ('Broward County 2')
Broward_County_2_2016_herb_count$Type <- "Herbivorous"

Broward_County_2_2016_comm <- merge(Broward_County_2_2016, Comm, by = c("SPECIES_CD"))
Broward_County_2_2016_comm_count <- count(Broward_County_2_2016_comm, vars = "SPECIES_CD")
Broward_County_2_2016_comm_count$Year <- ('2016')
Broward_County_2_2016_comm_count$sitename <- ('Broward County 2')
Broward_County_2_2016_comm_count$Type <- "Commercial"


Broward_County_2_2016_total_count <- rbind(Broward_County_2_2016_herb_count, Broward_County_2_2016_comm_count)



Broward_County_2_2018 <- import("SEF/Broward_County_2/data/Broward_County_2_2018.xls")


Broward_County_2_2018_herb <- merge(Broward_County_2_2018, Herb, by = c("SPECIES_CD"))
Broward_County_2_2018_herb_count <- count(Broward_County_2_2018_herb, vars = "SPECIES_CD")
Broward_County_2_2018_herb_count$Year <- ('2018')
Broward_County_2_2018_herb_count$sitename <- ('Broward County 2')
Broward_County_2_2018_herb_count$Type <- "Herbivorous"

Broward_County_2_2018_comm <- merge(Broward_County_2_2018, Comm, by = c("SPECIES_CD"))
Broward_County_2_2018_comm_count <- count(Broward_County_2_2018_comm, vars = "SPECIES_CD")
Broward_County_2_2018_comm_count$Year <- ('2018')
Broward_County_2_2018_comm_count$sitename <- ('Broward County 2')
Broward_County_2_2018_comm_count$Type <- "Commercial"


Broward_County_2_2018_total_count <- rbind(Broward_County_2_2018_herb_count, Broward_County_2_2018_comm_count)





Broward_County_2_all <- rbind(Broward_County_2_2013_total_count, Broward_County_2_2014_total_count, Broward_County_2_2015_total_count, Broward_County_2_2016_total_count,Broward_County_2_2018_total_count)


export(Broward_County_2_all, "SEF/Broward_County_2/data/Broward_County_2_count_herb_comm.csv")





Broward_County_3_2013 <- import("SEF/Broward_County_3/data/Broward_County_3_2013.xls")


Broward_County_3_2013_herb <- merge(Broward_County_3_2013, Herb, by = c("SPECIES_CD"))
Broward_County_3_2013_herb_count <- count(Broward_County_3_2013_herb, vars = "SPECIES_CD")
Broward_County_3_2013_herb_count$Year <- ('2013')
Broward_County_3_2013_herb_count$sitename <- ('Broward County 3')
Broward_County_3_2013_herb_count$Type <- "Herbivorous"

Broward_County_3_2013_comm <- merge(Broward_County_3_2013, Comm, by = c("SPECIES_CD"))
Broward_County_3_2013_comm_count <- count(Broward_County_3_2013_comm, vars = "SPECIES_CD")
Broward_County_3_2013_comm_count$Year <- ('2013')
Broward_County_3_2013_comm_count$sitename <- ('Broward County 3')
Broward_County_3_2013_comm_count$Type <- "Commercial"


Broward_County_3_2013_total_count <- rbind(Broward_County_3_2013_herb_count, Broward_County_3_2013_comm_count)



Broward_County_3_2014 <- import("SEF/Broward_County_3/data/Broward_County_3_2014.xls")


Broward_County_3_2014_herb <- merge(Broward_County_3_2014, Herb, by = c("SPECIES_CD"))
Broward_County_3_2014_herb_count <- count(Broward_County_3_2014_herb, vars = "SPECIES_CD")
Broward_County_3_2014_herb_count$Year <- ('2014')
Broward_County_3_2014_herb_count$sitename <- ('Broward County 3')
Broward_County_3_2014_herb_count$Type <- "Herbivorous"

Broward_County_3_2014_comm <- merge(Broward_County_3_2014, Comm, by = c("SPECIES_CD"))
Broward_County_3_2014_comm_count <- count(Broward_County_3_2014_comm, vars = "SPECIES_CD")
Broward_County_3_2014_comm_count$Year <- ('2014')
Broward_County_3_2014_comm_count$sitename <- ('Broward County 3')
Broward_County_3_2014_comm_count$Type <- "Commercial"


Broward_County_3_2014_total_count <- rbind(Broward_County_3_2014_herb_count, Broward_County_3_2014_comm_count)


Broward_County_3_2015 <- import("SEF/Broward_County_3/data/Broward_County_3_2015.xls")


Broward_County_3_2015_herb <- merge(Broward_County_3_2015, Herb, by = c("SPECIES_CD"))
Broward_County_3_2015_herb_count <- count(Broward_County_3_2015_herb, vars = "SPECIES_CD")
Broward_County_3_2015_herb_count$Year <- ('2015')
Broward_County_3_2015_herb_count$sitename <- ('Broward County 3')
Broward_County_3_2015_herb_count$Type <- "Herbivorous"

Broward_County_3_2015_comm <- merge(Broward_County_3_2015, Comm, by = c("SPECIES_CD"))
Broward_County_3_2015_comm_count <- count(Broward_County_3_2015_comm, vars = "SPECIES_CD")
Broward_County_3_2015_comm_count$Year <- ('2015')
Broward_County_3_2015_comm_count$sitename <- ('Broward County 3')
Broward_County_3_2015_comm_count$Type <- "Commercial"


Broward_County_3_2015_total_count <- rbind(Broward_County_3_2015_herb_count, Broward_County_3_2015_comm_count)




Broward_County_3_2016 <- import("SEF/Broward_County_3/data/Broward_County_3_2016.xls")


Broward_County_3_2016_herb <- merge(Broward_County_3_2016, Herb, by = c("SPECIES_CD"))
Broward_County_3_2016_herb_count <- count(Broward_County_3_2016_herb, vars = "SPECIES_CD")
Broward_County_3_2016_herb_count$Year <- ('2016')
Broward_County_3_2016_herb_count$sitename <- ('Broward County 3')
Broward_County_3_2016_herb_count$Type <- "Herbivorous"

Broward_County_3_2016_comm <- merge(Broward_County_3_2016, Comm, by = c("SPECIES_CD"))
Broward_County_3_2016_comm_count <- count(Broward_County_3_2016_comm, vars = "SPECIES_CD")
Broward_County_3_2016_comm_count$Year <- ('2016')
Broward_County_3_2016_comm_count$sitename <- ('Broward County 3')
Broward_County_3_2016_comm_count$Type <- "Commercial"


Broward_County_3_2016_total_count <- rbind(Broward_County_3_2016_herb_count, Broward_County_3_2016_comm_count)



Broward_County_3_2018 <- import("SEF/Broward_County_3/data/Broward_County_3_2018.xls")


Broward_County_3_2018_herb <- merge(Broward_County_3_2018, Herb, by = c("SPECIES_CD"))
Broward_County_3_2018_herb_count <- count(Broward_County_3_2018_herb, vars = "SPECIES_CD")
Broward_County_3_2018_herb_count$Year <- ('2018')
Broward_County_3_2018_herb_count$sitename <- ('Broward County 3')
Broward_County_3_2018_herb_count$Type <- "Herbivorous"

Broward_County_3_2018_comm <- merge(Broward_County_3_2018, Comm, by = c("SPECIES_CD"))
Broward_County_3_2018_comm_count <- count(Broward_County_3_2018_comm, vars = "SPECIES_CD")
Broward_County_3_2018_comm_count$Year <- ('2018')
Broward_County_3_2018_comm_count$sitename <- ('Broward County 3')
Broward_County_3_2018_comm_count$Type <- "Commercial"


Broward_County_3_2018_total_count <- rbind(Broward_County_3_2018_herb_count, Broward_County_3_2018_comm_count)





Broward_County_3_all <- rbind(Broward_County_3_2013_total_count, Broward_County_3_2014_total_count, Broward_County_3_2015_total_count, Broward_County_3_2016_total_count,Broward_County_3_2018_total_count)


export(Broward_County_3_all, "SEF/Broward_County_3/data/Broward_County_3_count_herb_comm.csv")




Broward_County_4_2013 <- import("SEF/Broward_County_4/data/Broward_County_4_2013.xls")


Broward_County_4_2013_herb <- merge(Broward_County_4_2013, Herb, by = c("SPECIES_CD"))
Broward_County_4_2013_herb_count <- count(Broward_County_4_2013_herb, vars = "SPECIES_CD")
Broward_County_4_2013_herb_count$Year <- ('2013')
Broward_County_4_2013_herb_count$sitename <- ('Broward County 4')
Broward_County_4_2013_herb_count$Type <- "Herbivorous"

Broward_County_4_2013_comm <- merge(Broward_County_4_2013, Comm, by = c("SPECIES_CD"))
Broward_County_4_2013_comm_count <- count(Broward_County_4_2013_comm, vars = "SPECIES_CD")
Broward_County_4_2013_comm_count$Year <- ('2013')
Broward_County_4_2013_comm_count$sitename <- ('Broward County 4')
Broward_County_4_2013_comm_count$Type <- "Commercial"


Broward_County_4_2013_total_count <- rbind(Broward_County_4_2013_herb_count, Broward_County_4_2013_comm_count)



Broward_County_4_2014 <- import("SEF/Broward_County_4/data/Broward_County_4_2014.xls")


Broward_County_4_2014_herb <- merge(Broward_County_4_2014, Herb, by = c("SPECIES_CD"))
Broward_County_4_2014_herb_count <- count(Broward_County_4_2014_herb, vars = "SPECIES_CD")
Broward_County_4_2014_herb_count$Year <- ('2014')
Broward_County_4_2014_herb_count$sitename <- ('Broward County 4')
Broward_County_4_2014_herb_count$Type <- "Herbivorous"

Broward_County_4_2014_comm <- merge(Broward_County_4_2014, Comm, by = c("SPECIES_CD"))
Broward_County_4_2014_comm_count <- count(Broward_County_4_2014_comm, vars = "SPECIES_CD")
Broward_County_4_2014_comm_count$Year <- ('2014')
Broward_County_4_2014_comm_count$sitename <- ('Broward County 4')
Broward_County_4_2014_comm_count$Type <- "Commercial"


Broward_County_4_2014_total_count <- rbind(Broward_County_4_2014_herb_count, Broward_County_4_2014_comm_count)


Broward_County_4_2015 <- import("SEF/Broward_County_4/data/Broward_County_4_2015.xls")


Broward_County_4_2015_herb <- merge(Broward_County_4_2015, Herb, by = c("SPECIES_CD"))
Broward_County_4_2015_herb_count <- count(Broward_County_4_2015_herb, vars = "SPECIES_CD")
Broward_County_4_2015_herb_count$Year <- ('2015')
Broward_County_4_2015_herb_count$sitename <- ('Broward County 4')
Broward_County_4_2015_herb_count$Type <- "Herbivorous"

Broward_County_4_2015_comm <- merge(Broward_County_4_2015, Comm, by = c("SPECIES_CD"))
Broward_County_4_2015_comm_count <- count(Broward_County_4_2015_comm, vars = "SPECIES_CD")
Broward_County_4_2015_comm_count$Year <- ('2015')
Broward_County_4_2015_comm_count$sitename <- ('Broward County 4')
Broward_County_4_2015_comm_count$Type <- "Commercial"


Broward_County_4_2015_total_count <- rbind(Broward_County_4_2015_herb_count, Broward_County_4_2015_comm_count)




Broward_County_4_2016 <- import("SEF/Broward_County_4/data/Broward_County_4_2016.xls")


Broward_County_4_2016_herb <- merge(Broward_County_4_2016, Herb, by = c("SPECIES_CD"))
Broward_County_4_2016_herb_count <- count(Broward_County_4_2016_herb, vars = "SPECIES_CD")
Broward_County_4_2016_herb_count$Year <- ('2016')
Broward_County_4_2016_herb_count$sitename <- ('Broward County 4')
Broward_County_4_2016_herb_count$Type <- "Herbivorous"

Broward_County_4_2016_comm <- merge(Broward_County_4_2016, Comm, by = c("SPECIES_CD"))
Broward_County_4_2016_comm_count <- count(Broward_County_4_2016_comm, vars = "SPECIES_CD")
Broward_County_4_2016_comm_count$Year <- ('2016')
Broward_County_4_2016_comm_count$sitename <- ('Broward County 4')
Broward_County_4_2016_comm_count$Type <- "Commercial"


Broward_County_4_2016_total_count <- rbind(Broward_County_4_2016_herb_count, Broward_County_4_2016_comm_count)



Broward_County_4_2018 <- import("SEF/Broward_County_4/data/Broward_County_4_2018.xls")


Broward_County_4_2018_herb <- merge(Broward_County_4_2018, Herb, by = c("SPECIES_CD"))
Broward_County_4_2018_herb_count <- count(Broward_County_4_2018_herb, vars = "SPECIES_CD")
Broward_County_4_2018_herb_count$Year <- ('2018')
Broward_County_4_2018_herb_count$sitename <- ('Broward County 4')
Broward_County_4_2018_herb_count$Type <- "Herbivorous"

Broward_County_4_2018_comm <- merge(Broward_County_4_2018, Comm, by = c("SPECIES_CD"))
Broward_County_4_2018_comm_count <- count(Broward_County_4_2018_comm, vars = "SPECIES_CD")
Broward_County_4_2018_comm_count$Year <- ('2018')
Broward_County_4_2018_comm_count$sitename <- ('Broward County 4')
Broward_County_4_2018_comm_count$Type <- "Commercial"


Broward_County_4_2018_total_count <- rbind(Broward_County_4_2018_herb_count, Broward_County_4_2018_comm_count)





Broward_County_4_all <- rbind(Broward_County_4_2013_total_count, Broward_County_4_2014_total_count, Broward_County_4_2015_total_count, Broward_County_4_2016_total_count,Broward_County_4_2018_total_count)


export(Broward_County_4_all, "SEF/Broward_County_4/data/Broward_County_4_count_herb_comm.csv")



Broward_County_5_2013 <- import("SEF/Broward_County_5/data/Broward_County_5_2013.xls")


Broward_County_5_2013_herb <- merge(Broward_County_5_2013, Herb, by = c("SPECIES_CD"))
Broward_County_5_2013_herb_count <- count(Broward_County_5_2013_herb, vars = "SPECIES_CD")
Broward_County_5_2013_herb_count$Year <- ('2013')
Broward_County_5_2013_herb_count$sitename <- ('Broward County 5')
Broward_County_5_2013_herb_count$Type <- "Herbivorous"

Broward_County_5_2013_comm <- merge(Broward_County_5_2013, Comm, by = c("SPECIES_CD"))
Broward_County_5_2013_comm_count <- count(Broward_County_5_2013_comm, vars = "SPECIES_CD")
Broward_County_5_2013_comm_count$Year <- ('2013')
Broward_County_5_2013_comm_count$sitename <- ('Broward County 5')
Broward_County_5_2013_comm_count$Type <- "Commercial"


Broward_County_5_2013_total_count <- rbind(Broward_County_5_2013_herb_count, Broward_County_5_2013_comm_count)



Broward_County_5_2014 <- import("SEF/Broward_County_5/data/Broward_County_5_2014.xls")


Broward_County_5_2014_herb <- merge(Broward_County_5_2014, Herb, by = c("SPECIES_CD"))
Broward_County_5_2014_herb_count <- count(Broward_County_5_2014_herb, vars = "SPECIES_CD")
Broward_County_5_2014_herb_count$Year <- ('2014')
Broward_County_5_2014_herb_count$sitename <- ('Broward County 5')
Broward_County_5_2014_herb_count$Type <- "Herbivorous"

Broward_County_5_2014_comm <- merge(Broward_County_5_2014, Comm, by = c("SPECIES_CD"))
Broward_County_5_2014_comm_count <- count(Broward_County_5_2014_comm, vars = "SPECIES_CD")
Broward_County_5_2014_comm_count$Year <- ('2014')
Broward_County_5_2014_comm_count$sitename <- ('Broward County 5')
Broward_County_5_2014_comm_count$Type <- "Commercial"


Broward_County_5_2014_total_count <- rbind(Broward_County_5_2014_herb_count, Broward_County_5_2014_comm_count)


Broward_County_5_2015 <- import("SEF/Broward_County_5/data/Broward_County_5_2015.xls")


Broward_County_5_2015_herb <- merge(Broward_County_5_2015, Herb, by = c("SPECIES_CD"))
Broward_County_5_2015_herb_count <- count(Broward_County_5_2015_herb, vars = "SPECIES_CD")
Broward_County_5_2015_herb_count$Year <- ('2015')
Broward_County_5_2015_herb_count$sitename <- ('Broward County 5')
Broward_County_5_2015_herb_count$Type <- "Herbivorous"

Broward_County_5_2015_comm <- merge(Broward_County_5_2015, Comm, by = c("SPECIES_CD"))
Broward_County_5_2015_comm_count <- count(Broward_County_5_2015_comm, vars = "SPECIES_CD")
Broward_County_5_2015_comm_count$Year <- ('2015')
Broward_County_5_2015_comm_count$sitename <- ('Broward County 5')
Broward_County_5_2015_comm_count$Type <- "Commercial"


Broward_County_5_2015_total_count <- rbind(Broward_County_5_2015_herb_count, Broward_County_5_2015_comm_count)




Broward_County_5_2016 <- import("SEF/Broward_County_5/data/Broward_County_5_2016.xls")


Broward_County_5_2016_herb <- merge(Broward_County_5_2016, Herb, by = c("SPECIES_CD"))
Broward_County_5_2016_herb_count <- count(Broward_County_5_2016_herb, vars = "SPECIES_CD")
Broward_County_5_2016_herb_count$Year <- ('2016')
Broward_County_5_2016_herb_count$sitename <- ('Broward County 5')
Broward_County_5_2016_herb_count$Type <- "Herbivorous"

Broward_County_5_2016_comm <- merge(Broward_County_5_2016, Comm, by = c("SPECIES_CD"))
Broward_County_5_2016_comm_count <- count(Broward_County_5_2016_comm, vars = "SPECIES_CD")
Broward_County_5_2016_comm_count$Year <- ('2016')
Broward_County_5_2016_comm_count$sitename <- ('Broward County 5')
Broward_County_5_2016_comm_count$Type <- "Commercial"


Broward_County_5_2016_total_count <- rbind(Broward_County_5_2016_herb_count, Broward_County_5_2016_comm_count)



Broward_County_5_2018 <- import("SEF/Broward_County_5/data/Broward_County_5_2018.xls")


Broward_County_5_2018_herb <- merge(Broward_County_5_2018, Herb, by = c("SPECIES_CD"))
Broward_County_5_2018_herb_count <- count(Broward_County_5_2018_herb, vars = "SPECIES_CD")
Broward_County_5_2018_herb_count$Year <- ('2018')
Broward_County_5_2018_herb_count$sitename <- ('Broward County 5')
Broward_County_5_2018_herb_count$Type <- "Herbivorous"

Broward_County_5_2018_comm <- merge(Broward_County_5_2018, Comm, by = c("SPECIES_CD"))
Broward_County_5_2018_comm_count <- count(Broward_County_5_2018_comm, vars = "SPECIES_CD")
Broward_County_5_2018_comm_count$Year <- ('2018')
Broward_County_5_2018_comm_count$sitename <- ('Broward County 5')
Broward_County_5_2018_comm_count$Type <- "Commercial"


Broward_County_5_2018_total_count <- rbind(Broward_County_5_2018_herb_count, Broward_County_5_2018_comm_count)





Broward_County_5_all <- rbind(Broward_County_5_2013_total_count, Broward_County_5_2014_total_count, Broward_County_5_2015_total_count, Broward_County_5_2016_total_count,Broward_County_5_2018_total_count)


export(Broward_County_5_all, "SEF/Broward_County_5/data/Broward_County_5_count_herb_comm.csv")



Broward_County_6_2013 <- import("SEF/Broward_County_6/data/Broward_County_6_2013.xls")


Broward_County_6_2013_herb <- merge(Broward_County_6_2013, Herb, by = c("SPECIES_CD"))
Broward_County_6_2013_herb_count <- count(Broward_County_6_2013_herb, vars = "SPECIES_CD")
Broward_County_6_2013_herb_count$Year <- ('2013')
Broward_County_6_2013_herb_count$sitename <- ('Broward County 6')
Broward_County_6_2013_herb_count$Type <- "Herbivorous"

Broward_County_6_2013_comm <- merge(Broward_County_6_2013, Comm, by = c("SPECIES_CD"))
Broward_County_6_2013_comm_count <- count(Broward_County_6_2013_comm, vars = "SPECIES_CD")
Broward_County_6_2013_comm_count$Year <- ('2013')
Broward_County_6_2013_comm_count$sitename <- ('Broward County 6')
Broward_County_6_2013_comm_count$Type <- "Commercial"


Broward_County_6_2013_total_count <- rbind(Broward_County_6_2013_herb_count, Broward_County_6_2013_comm_count)



Broward_County_6_2014 <- import("SEF/Broward_County_6/data/Broward_County_6_2014.xls")


Broward_County_6_2014_herb <- merge(Broward_County_6_2014, Herb, by = c("SPECIES_CD"))
Broward_County_6_2014_herb_count <- count(Broward_County_6_2014_herb, vars = "SPECIES_CD")
Broward_County_6_2014_herb_count$Year <- ('2014')
Broward_County_6_2014_herb_count$sitename <- ('Broward County 6')
Broward_County_6_2014_herb_count$Type <- "Herbivorous"

Broward_County_6_2014_comm <- merge(Broward_County_6_2014, Comm, by = c("SPECIES_CD"))
Broward_County_6_2014_comm_count <- count(Broward_County_6_2014_comm, vars = "SPECIES_CD")
Broward_County_6_2014_comm_count$Year <- ('2014')
Broward_County_6_2014_comm_count$sitename <- ('Broward County 6')
Broward_County_6_2014_comm_count$Type <- "Commercial"


Broward_County_6_2014_total_count <- rbind(Broward_County_6_2014_herb_count, Broward_County_6_2014_comm_count)


Broward_County_6_2015 <- import("SEF/Broward_County_6/data/Broward_County_6_2015.xls")


Broward_County_6_2015_herb <- merge(Broward_County_6_2015, Herb, by = c("SPECIES_CD"))
Broward_County_6_2015_herb_count <- count(Broward_County_6_2015_herb, vars = "SPECIES_CD")
Broward_County_6_2015_herb_count$Year <- ('2015')
Broward_County_6_2015_herb_count$sitename <- ('Broward County 6')
Broward_County_6_2015_herb_count$Type <- "Herbivorous"

Broward_County_6_2015_comm <- merge(Broward_County_6_2015, Comm, by = c("SPECIES_CD"))
Broward_County_6_2015_comm_count <- count(Broward_County_6_2015_comm, vars = "SPECIES_CD")
Broward_County_6_2015_comm_count$Year <- ('2015')
Broward_County_6_2015_comm_count$sitename <- ('Broward County 6')
Broward_County_6_2015_comm_count$Type <- "Commercial"


Broward_County_6_2015_total_count <- rbind(Broward_County_6_2015_herb_count, Broward_County_6_2015_comm_count)




Broward_County_6_2016 <- import("SEF/Broward_County_6/data/Broward_County_6_2016.xls")


Broward_County_6_2016_herb <- merge(Broward_County_6_2016, Herb, by = c("SPECIES_CD"))
Broward_County_6_2016_herb_count <- count(Broward_County_6_2016_herb, vars = "SPECIES_CD")
Broward_County_6_2016_herb_count$Year <- ('2016')
Broward_County_6_2016_herb_count$sitename <- ('Broward County 6')
Broward_County_6_2016_herb_count$Type <- "Herbivorous"

Broward_County_6_2016_comm <- merge(Broward_County_6_2016, Comm, by = c("SPECIES_CD"))
Broward_County_6_2016_comm_count <- count(Broward_County_6_2016_comm, vars = "SPECIES_CD")
Broward_County_6_2016_comm_count$Year <- ('2016')
Broward_County_6_2016_comm_count$sitename <- ('Broward County 6')
Broward_County_6_2016_comm_count$Type <- "Commercial"


Broward_County_6_2016_total_count <- rbind(Broward_County_6_2016_herb_count, Broward_County_6_2016_comm_count)



Broward_County_6_2018 <- import("SEF/Broward_County_6/data/Broward_County_6_2018.xls")


Broward_County_6_2018_herb <- merge(Broward_County_6_2018, Herb, by = c("SPECIES_CD"))
Broward_County_6_2018_herb_count <- count(Broward_County_6_2018_herb, vars = "SPECIES_CD")
Broward_County_6_2018_herb_count$Year <- ('2018')
Broward_County_6_2018_herb_count$sitename <- ('Broward County 6')
Broward_County_6_2018_herb_count$Type <- "Herbivorous"

Broward_County_6_2018_comm <- merge(Broward_County_6_2018, Comm, by = c("SPECIES_CD"))
Broward_County_6_2018_comm_count <- count(Broward_County_6_2018_comm, vars = "SPECIES_CD")
Broward_County_6_2018_comm_count$Year <- ('2018')
Broward_County_6_2018_comm_count$sitename <- ('Broward County 6')
Broward_County_6_2018_comm_count$Type <- "Commercial"


Broward_County_6_2018_total_count <- rbind(Broward_County_6_2018_herb_count, Broward_County_6_2018_comm_count)





Broward_County_6_all <- rbind(Broward_County_6_2013_total_count, Broward_County_6_2014_total_count, Broward_County_6_2015_total_count, Broward_County_6_2016_total_count,Broward_County_6_2018_total_count)


export(Broward_County_6_all, "SEF/Broward_County_6/data/Broward_County_6_count_herb_comm.csv")





Broward_County_A_2013 <- import("SEF/Broward_County_A/data/Broward_County_A_2013.xls")


Broward_County_A_2013_herb <- merge(Broward_County_A_2013, Herb, by = c("SPECIES_CD"))
Broward_County_A_2013_herb_count <- count(Broward_County_A_2013_herb, vars = "SPECIES_CD")
Broward_County_A_2013_herb_count$Year <- ('2013')
Broward_County_A_2013_herb_count$sitename <- ('Broward County A')
Broward_County_A_2013_herb_count$Type <- "Herbivorous"

Broward_County_A_2013_comm <- merge(Broward_County_A_2013, Comm, by = c("SPECIES_CD"))
Broward_County_A_2013_comm_count <- count(Broward_County_A_2013_comm, vars = "SPECIES_CD")
Broward_County_A_2013_comm_count$Year <- ('2013')
Broward_County_A_2013_comm_count$sitename <- ('Broward County A')
Broward_County_A_2013_comm_count$Type <- "Commercial"


Broward_County_A_2013_total_count <- rbind(Broward_County_A_2013_herb_count, Broward_County_A_2013_comm_count)



Broward_County_A_2014 <- import("SEF/Broward_County_A/data/Broward_County_A_2014.xls")


Broward_County_A_2014_herb <- merge(Broward_County_A_2014, Herb, by = c("SPECIES_CD"))
Broward_County_A_2014_herb_count <- count(Broward_County_A_2014_herb, vars = "SPECIES_CD")
Broward_County_A_2014_herb_count$Year <- ('2014')
Broward_County_A_2014_herb_count$sitename <- ('Broward County A')
Broward_County_A_2014_herb_count$Type <- "Herbivorous"

Broward_County_A_2014_comm <- merge(Broward_County_A_2014, Comm, by = c("SPECIES_CD"))
Broward_County_A_2014_comm_count <- count(Broward_County_A_2014_comm, vars = "SPECIES_CD")
Broward_County_A_2014_comm_count$Year <- ('2014')
Broward_County_A_2014_comm_count$sitename <- ('Broward County A')
Broward_County_A_2014_comm_count$Type <- "Commercial"


Broward_County_A_2014_total_count <- rbind(Broward_County_A_2014_herb_count, Broward_County_A_2014_comm_count)


Broward_County_A_2015 <- import("SEF/Broward_County_A/data/Broward_County_A_2015.xls")


Broward_County_A_2015_herb <- merge(Broward_County_A_2015, Herb, by = c("SPECIES_CD"))
Broward_County_A_2015_herb_count <- count(Broward_County_A_2015_herb, vars = "SPECIES_CD")
Broward_County_A_2015_herb_count$Year <- ('2015')
Broward_County_A_2015_herb_count$sitename <- ('Broward County A')
Broward_County_A_2015_herb_count$Type <- "Herbivorous"

Broward_County_A_2015_comm <- merge(Broward_County_A_2015, Comm, by = c("SPECIES_CD"))
Broward_County_A_2015_comm_count <- count(Broward_County_A_2015_comm, vars = "SPECIES_CD")
Broward_County_A_2015_comm_count$Year <- ('2015')
Broward_County_A_2015_comm_count$sitename <- ('Broward County A')
Broward_County_A_2015_comm_count$Type <- "Commercial"


Broward_County_A_2015_total_count <- rbind(Broward_County_A_2015_herb_count, Broward_County_A_2015_comm_count)




Broward_County_A_2016 <- import("SEF/Broward_County_A/data/Broward_County_A_2016.xls")


Broward_County_A_2016_herb <- merge(Broward_County_A_2016, Herb, by = c("SPECIES_CD"))
Broward_County_A_2016_herb_count <- count(Broward_County_A_2016_herb, vars = "SPECIES_CD")
Broward_County_A_2016_herb_count$Year <- ('2016')
Broward_County_A_2016_herb_count$sitename <- ('Broward County A')
Broward_County_A_2016_herb_count$Type <- "Herbivorous"

Broward_County_A_2016_comm <- merge(Broward_County_A_2016, Comm, by = c("SPECIES_CD"))
Broward_County_A_2016_comm_count <- count(Broward_County_A_2016_comm, vars = "SPECIES_CD")
Broward_County_A_2016_comm_count$Year <- ('2016')
Broward_County_A_2016_comm_count$sitename <- ('Broward County A')
Broward_County_A_2016_comm_count$Type <- "Commercial"


Broward_County_A_2016_total_count <- rbind(Broward_County_A_2016_herb_count, Broward_County_A_2016_comm_count)



Broward_County_A_2018 <- import("SEF/Broward_County_A/data/Broward_County_A_2018.xls")


Broward_County_A_2018_herb <- merge(Broward_County_A_2018, Herb, by = c("SPECIES_CD"))
Broward_County_A_2018_herb_count <- count(Broward_County_A_2018_herb, vars = "SPECIES_CD")
Broward_County_A_2018_herb_count$Year <- ('2018')
Broward_County_A_2018_herb_count$sitename <- ('Broward County A')
Broward_County_A_2018_herb_count$Type <- "Herbivorous"

Broward_County_A_2018_comm <- merge(Broward_County_A_2018, Comm, by = c("SPECIES_CD"))
Broward_County_A_2018_comm_count <- count(Broward_County_A_2018_comm, vars = "SPECIES_CD")
Broward_County_A_2018_comm_count$Year <- ('2018')
Broward_County_A_2018_comm_count$sitename <- ('Broward County A')
Broward_County_A_2018_comm_count$Type <- "Commercial"


Broward_County_A_2018_total_count <- rbind(Broward_County_A_2018_herb_count, Broward_County_A_2018_comm_count)





Broward_County_A_all <- rbind(Broward_County_A_2013_total_count, Broward_County_A_2014_total_count, Broward_County_A_2015_total_count, Broward_County_A_2016_total_count,Broward_County_A_2018_total_count)


export(Broward_County_A_all, "SEF/Broward_County_A/data/Broward_County_A_count_herb_comm.csv")





Dade_County_1_2013 <- import("SEF/Dade_County_1/data/Dade_County_1_2013.xls")


Dade_County_1_2013_herb <- merge(Dade_County_1_2013, Herb, by = c("SPECIES_CD"))
Dade_County_1_2013_herb_count <- count(Dade_County_1_2013_herb, vars = "SPECIES_CD")
Dade_County_1_2013_herb_count$Year <- ('2013')
Dade_County_1_2013_herb_count$sitename <- ('Dade County 1')
Dade_County_1_2013_herb_count$Type <- "Herbivorous"

Dade_County_1_2013_comm <- merge(Dade_County_1_2013, Comm, by = c("SPECIES_CD"))
Dade_County_1_2013_comm_count <- count(Dade_County_1_2013_comm, vars = "SPECIES_CD")
Dade_County_1_2013_comm_count$Year <- ('2013')
Dade_County_1_2013_comm_count$sitename <- ('Dade County 1')
Dade_County_1_2013_comm_count$Type <- "Commercial"


Dade_County_1_2013_total_count <- rbind(Dade_County_1_2013_herb_count, Dade_County_1_2013_comm_count)



Dade_County_1_2014 <- import("SEF/Dade_County_1/data/Dade_County_1_2014.xls")


Dade_County_1_2014_herb <- merge(Dade_County_1_2014, Herb, by = c("SPECIES_CD"))
Dade_County_1_2014_herb_count <- count(Dade_County_1_2014_herb, vars = "SPECIES_CD")
Dade_County_1_2014_herb_count$Year <- ('2014')
Dade_County_1_2014_herb_count$sitename <- ('Dade County 1')
Dade_County_1_2014_herb_count$Type <- "Herbivorous"

Dade_County_1_2014_comm <- merge(Dade_County_1_2014, Comm, by = c("SPECIES_CD"))
Dade_County_1_2014_comm_count <- count(Dade_County_1_2014_comm, vars = "SPECIES_CD")
Dade_County_1_2014_comm_count$Year <- ('2014')
Dade_County_1_2014_comm_count$sitename <- ('Dade County 1')
Dade_County_1_2014_comm_count$Type <- "Commercial"


Dade_County_1_2014_total_count <- rbind(Dade_County_1_2014_herb_count, Dade_County_1_2014_comm_count)


Dade_County_1_2015 <- import("SEF/Dade_County_1/data/Dade_County_1_2015.xls")


Dade_County_1_2015_herb <- merge(Dade_County_1_2015, Herb, by = c("SPECIES_CD"))
Dade_County_1_2015_herb_count <- count(Dade_County_1_2015_herb, vars = "SPECIES_CD")
Dade_County_1_2015_herb_count$Year <- ('2015')
Dade_County_1_2015_herb_count$sitename <- ('Dade County 1')
Dade_County_1_2015_herb_count$Type <- "Herbivorous"

Dade_County_1_2015_comm <- merge(Dade_County_1_2015, Comm, by = c("SPECIES_CD"))
Dade_County_1_2015_comm_count <- count(Dade_County_1_2015_comm, vars = "SPECIES_CD")
Dade_County_1_2015_comm_count$Year <- ('2015')
Dade_County_1_2015_comm_count$sitename <- ('Dade County 1')
Dade_County_1_2015_comm_count$Type <- "Commercial"


Dade_County_1_2015_total_count <- rbind(Dade_County_1_2015_herb_count, Dade_County_1_2015_comm_count)




Dade_County_1_2016 <- import("SEF/Dade_County_1/data/Dade_County_1_2016.xls")


Dade_County_1_2016_herb <- merge(Dade_County_1_2016, Herb, by = c("SPECIES_CD"))
Dade_County_1_2016_herb_count <- count(Dade_County_1_2016_herb, vars = "SPECIES_CD")
Dade_County_1_2016_herb_count$Year <- ('2016')
Dade_County_1_2016_herb_count$sitename <- ('Dade County 1')
Dade_County_1_2016_herb_count$Type <- "Herbivorous"

Dade_County_1_2016_comm <- merge(Dade_County_1_2016, Comm, by = c("SPECIES_CD"))
Dade_County_1_2016_comm_count <- count(Dade_County_1_2016_comm, vars = "SPECIES_CD")
Dade_County_1_2016_comm_count$Year <- ('2016')
Dade_County_1_2016_comm_count$sitename <- ('Dade County 1')
Dade_County_1_2016_comm_count$Type <- "Commercial"


Dade_County_1_2016_total_count <- rbind(Dade_County_1_2016_herb_count, Dade_County_1_2016_comm_count)



Dade_County_1_2018 <- import("SEF/Dade_County_1/data/Dade_County_1_2018.xls")


Dade_County_1_2018_herb <- merge(Dade_County_1_2018, Herb, by = c("SPECIES_CD"))
Dade_County_1_2018_herb_count <- count(Dade_County_1_2018_herb, vars = "SPECIES_CD")
Dade_County_1_2018_herb_count$Year <- ('2018')
Dade_County_1_2018_herb_count$sitename <- ('Dade County 1')
Dade_County_1_2018_herb_count$Type <- "Herbivorous"

Dade_County_1_2018_comm <- merge(Dade_County_1_2018, Comm, by = c("SPECIES_CD"))
Dade_County_1_2018_comm_count <- count(Dade_County_1_2018_comm, vars = "SPECIES_CD")
Dade_County_1_2018_comm_count$Year <- ('2018')
Dade_County_1_2018_comm_count$sitename <- ('Dade County 1')
Dade_County_1_2018_comm_count$Type <- "Commercial"


Dade_County_1_2018_total_count <- rbind(Dade_County_1_2018_herb_count, Dade_County_1_2018_comm_count)





Dade_County_1_all <- rbind(Dade_County_1_2013_total_count, Dade_County_1_2014_total_count, Dade_County_1_2015_total_count, Dade_County_1_2016_total_count,Dade_County_1_2018_total_count)


export(Dade_County_1_all, "SEF/Dade_County_1/data/Dade_County_1_count_herb_comm.csv")





Dade_County_2_2013 <- import("SEF/Dade_County_2/data/Dade_County_2_2013.xls")


Dade_County_2_2013_herb <- merge(Dade_County_2_2013, Herb, by = c("SPECIES_CD"))
Dade_County_2_2013_herb_count <- count(Dade_County_2_2013_herb, vars = "SPECIES_CD")
Dade_County_2_2013_herb_count$Year <- ('2013')
Dade_County_2_2013_herb_count$sitename <- ('Dade County 2')
Dade_County_2_2013_herb_count$Type <- "Herbivorous"

Dade_County_2_2013_comm <- merge(Dade_County_2_2013, Comm, by = c("SPECIES_CD"))
Dade_County_2_2013_comm_count <- count(Dade_County_2_2013_comm, vars = "SPECIES_CD")
Dade_County_2_2013_comm_count$Year <- ('2013')
Dade_County_2_2013_comm_count$sitename <- ('Dade County 2')
Dade_County_2_2013_comm_count$Type <- "Commercial"


Dade_County_2_2013_total_count <- rbind(Dade_County_2_2013_herb_count, Dade_County_2_2013_comm_count)



Dade_County_2_2014 <- import("SEF/Dade_County_2/data/Dade_County_2_2014.xls")


Dade_County_2_2014_herb <- merge(Dade_County_2_2014, Herb, by = c("SPECIES_CD"))
Dade_County_2_2014_herb_count <- count(Dade_County_2_2014_herb, vars = "SPECIES_CD")
Dade_County_2_2014_herb_count$Year <- ('2014')
Dade_County_2_2014_herb_count$sitename <- ('Dade County 2')
Dade_County_2_2014_herb_count$Type <- "Herbivorous"

Dade_County_2_2014_comm <- merge(Dade_County_2_2014, Comm, by = c("SPECIES_CD"))
Dade_County_2_2014_comm_count <- count(Dade_County_2_2014_comm, vars = "SPECIES_CD")
Dade_County_2_2014_comm_count$Year <- ('2014')
Dade_County_2_2014_comm_count$sitename <- ('Dade County 2')
Dade_County_2_2014_comm_count$Type <- "Commercial"


Dade_County_2_2014_total_count <- rbind(Dade_County_2_2014_herb_count, Dade_County_2_2014_comm_count)


Dade_County_2_2015 <- import("SEF/Dade_County_2/data/Dade_County_2_2015.xls")


Dade_County_2_2015_herb <- merge(Dade_County_2_2015, Herb, by = c("SPECIES_CD"))
Dade_County_2_2015_herb_count <- count(Dade_County_2_2015_herb, vars = "SPECIES_CD")
Dade_County_2_2015_herb_count$Year <- ('2015')
Dade_County_2_2015_herb_count$sitename <- ('Dade County 2')
Dade_County_2_2015_herb_count$Type <- "Herbivorous"

Dade_County_2_2015_comm <- merge(Dade_County_2_2015, Comm, by = c("SPECIES_CD"))
Dade_County_2_2015_comm_count <- count(Dade_County_2_2015_comm, vars = "SPECIES_CD")
Dade_County_2_2015_comm_count$Year <- ('2015')
Dade_County_2_2015_comm_count$sitename <- ('Dade County 2')
Dade_County_2_2015_comm_count$Type <- "Commercial"


Dade_County_2_2015_total_count <- rbind(Dade_County_2_2015_herb_count, Dade_County_2_2015_comm_count)




Dade_County_2_2016 <- import("SEF/Dade_County_2/data/Dade_County_2_2016.xls")


Dade_County_2_2016_herb <- merge(Dade_County_2_2016, Herb, by = c("SPECIES_CD"))
Dade_County_2_2016_herb_count <- count(Dade_County_2_2016_herb, vars = "SPECIES_CD")
Dade_County_2_2016_herb_count$Year <- ('2016')
Dade_County_2_2016_herb_count$sitename <- ('Dade County 2')
Dade_County_2_2016_herb_count$Type <- "Herbivorous"

Dade_County_2_2016_comm <- merge(Dade_County_2_2016, Comm, by = c("SPECIES_CD"))
Dade_County_2_2016_comm_count <- count(Dade_County_2_2016_comm, vars = "SPECIES_CD")
Dade_County_2_2016_comm_count$Year <- ('2016')
Dade_County_2_2016_comm_count$sitename <- ('Dade County 2')
Dade_County_2_2016_comm_count$Type <- "Commercial"


Dade_County_2_2016_total_count <- rbind(Dade_County_2_2016_herb_count, Dade_County_2_2016_comm_count)



Dade_County_2_2018 <- import("SEF/Dade_County_2/data/Dade_County_2_2018.xls")


Dade_County_2_2018_herb <- merge(Dade_County_2_2018, Herb, by = c("SPECIES_CD"))
Dade_County_2_2018_herb_count <- count(Dade_County_2_2018_herb, vars = "SPECIES_CD")
Dade_County_2_2018_herb_count$Year <- ('2018')
Dade_County_2_2018_herb_count$sitename <- ('Dade County 2')
Dade_County_2_2018_herb_count$Type <- "Herbivorous"

Dade_County_2_2018_comm <- merge(Dade_County_2_2018, Comm, by = c("SPECIES_CD"))
Dade_County_2_2018_comm_count <- count(Dade_County_2_2018_comm, vars = "SPECIES_CD")
Dade_County_2_2018_comm_count$Year <- ('2018')
Dade_County_2_2018_comm_count$sitename <- ('Dade County 2')
Dade_County_2_2018_comm_count$Type <- "Commercial"


Dade_County_2_2018_total_count <- rbind(Dade_County_2_2018_herb_count, Dade_County_2_2018_comm_count)





Dade_County_2_all <- rbind(Dade_County_2_2013_total_count, Dade_County_2_2014_total_count, Dade_County_2_2015_total_count, Dade_County_2_2016_total_count,Dade_County_2_2018_total_count)


export(Dade_County_2_all, "SEF/Dade_County_2/data/Dade_County_2_count_herb_comm.csv")




Dade_County_3_2013 <- import("SEF/Dade_County_3/data/Dade_County_3_2013.xls")


Dade_County_3_2013_herb <- merge(Dade_County_3_2013, Herb, by = c("SPECIES_CD"))
Dade_County_3_2013_herb_count <- count(Dade_County_3_2013_herb, vars = "SPECIES_CD")
Dade_County_3_2013_herb_count$Year <- ('2013')
Dade_County_3_2013_herb_count$sitename <- ('Dade County 3')
Dade_County_3_2013_herb_count$Type <- "Herbivorous"

Dade_County_3_2013_comm <- merge(Dade_County_3_2013, Comm, by = c("SPECIES_CD"))
Dade_County_3_2013_comm_count <- count(Dade_County_3_2013_comm, vars = "SPECIES_CD")
Dade_County_3_2013_comm_count$Year <- ('2013')
Dade_County_3_2013_comm_count$sitename <- ('Dade County 3')
Dade_County_3_2013_comm_count$Type <- "Commercial"


Dade_County_3_2013_total_count <- rbind(Dade_County_3_2013_herb_count, Dade_County_3_2013_comm_count)



Dade_County_3_2014 <- import("SEF/Dade_County_3/data/Dade_County_3_2014.xls")


Dade_County_3_2014_herb <- merge(Dade_County_3_2014, Herb, by = c("SPECIES_CD"))
Dade_County_3_2014_herb_count <- count(Dade_County_3_2014_herb, vars = "SPECIES_CD")
Dade_County_3_2014_herb_count$Year <- ('2014')
Dade_County_3_2014_herb_count$sitename <- ('Dade County 3')
Dade_County_3_2014_herb_count$Type <- "Herbivorous"

Dade_County_3_2014_comm <- merge(Dade_County_3_2014, Comm, by = c("SPECIES_CD"))
Dade_County_3_2014_comm_count <- count(Dade_County_3_2014_comm, vars = "SPECIES_CD")
Dade_County_3_2014_comm_count$Year <- ('2014')
Dade_County_3_2014_comm_count$sitename <- ('Dade County 3')
Dade_County_3_2014_comm_count$Type <- "Commercial"


Dade_County_3_2014_total_count <- rbind(Dade_County_3_2014_herb_count, Dade_County_3_2014_comm_count)


Dade_County_3_2015 <- import("SEF/Dade_County_3/data/Dade_County_3_2015.xls")


Dade_County_3_2015_herb <- merge(Dade_County_3_2015, Herb, by = c("SPECIES_CD"))
Dade_County_3_2015_herb_count <- count(Dade_County_3_2015_herb, vars = "SPECIES_CD")
Dade_County_3_2015_herb_count$Year <- ('2015')
Dade_County_3_2015_herb_count$sitename <- ('Dade County 3')
Dade_County_3_2015_herb_count$Type <- "Herbivorous"

Dade_County_3_2015_comm <- merge(Dade_County_3_2015, Comm, by = c("SPECIES_CD"))
Dade_County_3_2015_comm_count <- count(Dade_County_3_2015_comm, vars = "SPECIES_CD")
Dade_County_3_2015_comm_count$Year <- ('2015')
Dade_County_3_2015_comm_count$sitename <- ('Dade County 3')
Dade_County_3_2015_comm_count$Type <- "Commercial"


Dade_County_3_2015_total_count <- rbind(Dade_County_3_2015_herb_count, Dade_County_3_2015_comm_count)




Dade_County_3_2016 <- import("SEF/Dade_County_3/data/Dade_County_3_2016.xls")


Dade_County_3_2016_herb <- merge(Dade_County_3_2016, Herb, by = c("SPECIES_CD"))
Dade_County_3_2016_herb_count <- count(Dade_County_3_2016_herb, vars = "SPECIES_CD")
Dade_County_3_2016_herb_count$Year <- ('2016')
Dade_County_3_2016_herb_count$sitename <- ('Dade County 3')
Dade_County_3_2016_herb_count$Type <- "Herbivorous"

Dade_County_3_2016_comm <- merge(Dade_County_3_2016, Comm, by = c("SPECIES_CD"))
Dade_County_3_2016_comm_count <- count(Dade_County_3_2016_comm, vars = "SPECIES_CD")
Dade_County_3_2016_comm_count$Year <- ('2016')
Dade_County_3_2016_comm_count$sitename <- ('Dade County 3')
Dade_County_3_2016_comm_count$Type <- "Commercial"


Dade_County_3_2016_total_count <- rbind(Dade_County_3_2016_herb_count, Dade_County_3_2016_comm_count)



Dade_County_3_2018 <- import("SEF/Dade_County_3/data/Dade_County_3_2018.xls")


Dade_County_3_2018_herb <- merge(Dade_County_3_2018, Herb, by = c("SPECIES_CD"))
Dade_County_3_2018_herb_count <- count(Dade_County_3_2018_herb, vars = "SPECIES_CD")
Dade_County_3_2018_herb_count$Year <- ('2018')
Dade_County_3_2018_herb_count$sitename <- ('Dade County 3')
Dade_County_3_2018_herb_count$Type <- "Herbivorous"

Dade_County_3_2018_comm <- merge(Dade_County_3_2018, Comm, by = c("SPECIES_CD"))
Dade_County_3_2018_comm_count <- count(Dade_County_3_2018_comm, vars = "SPECIES_CD")
Dade_County_3_2018_comm_count$Year <- ('2018')
Dade_County_3_2018_comm_count$sitename <- ('Dade County 3')
Dade_County_3_2018_comm_count$Type <- "Commercial"


Dade_County_3_2018_total_count <- rbind(Dade_County_3_2018_herb_count, Dade_County_3_2018_comm_count)





Dade_County_3_all <- rbind(Dade_County_3_2013_total_count, Dade_County_3_2014_total_count, Dade_County_3_2015_total_count, Dade_County_3_2016_total_count,Dade_County_3_2018_total_count)


export(Dade_County_3_all, "SEF/Dade_County_3/data/Dade_County_3_count_herb_comm.csv")



Dade_County_4_2013 <- import("SEF/Dade_County_4/data/Dade_County_4_2013.xls")


Dade_County_4_2013_herb <- merge(Dade_County_4_2013, Herb, by = c("SPECIES_CD"))
Dade_County_4_2013_herb_count <- count(Dade_County_4_2013_herb, vars = "SPECIES_CD")
Dade_County_4_2013_herb_count$Year <- ('2013')
Dade_County_4_2013_herb_count$sitename <- ('Dade County 4')
Dade_County_4_2013_herb_count$Type <- "Herbivorous"

Dade_County_4_2013_comm <- merge(Dade_County_4_2013, Comm, by = c("SPECIES_CD"))
Dade_County_4_2013_comm_count <- count(Dade_County_4_2013_comm, vars = "SPECIES_CD")
Dade_County_4_2013_comm_count$Year <- ('2013')
Dade_County_4_2013_comm_count$sitename <- ('Dade County 4')
Dade_County_4_2013_comm_count$Type <- "Commercial"


Dade_County_4_2013_total_count <- rbind(Dade_County_4_2013_herb_count, Dade_County_4_2013_comm_count)



Dade_County_4_2014 <- import("SEF/Dade_County_4/data/Dade_County_4_2014.xls")


Dade_County_4_2014_herb <- merge(Dade_County_4_2014, Herb, by = c("SPECIES_CD"))
Dade_County_4_2014_herb_count <- count(Dade_County_4_2014_herb, vars = "SPECIES_CD")
Dade_County_4_2014_herb_count$Year <- ('2014')
Dade_County_4_2014_herb_count$sitename <- ('Dade County 4')
Dade_County_4_2014_herb_count$Type <- "Herbivorous"

Dade_County_4_2014_comm <- merge(Dade_County_4_2014, Comm, by = c("SPECIES_CD"))
Dade_County_4_2014_comm_count <- count(Dade_County_4_2014_comm, vars = "SPECIES_CD")
Dade_County_4_2014_comm_count$Year <- ('2014')
Dade_County_4_2014_comm_count$sitename <- ('Dade County 4')
Dade_County_4_2014_comm_count$Type <- "Commercial"


Dade_County_4_2014_total_count <- rbind(Dade_County_4_2014_herb_count, Dade_County_4_2014_comm_count)


Dade_County_4_2015 <- import("SEF/Dade_County_4/data/Dade_County_4_2015.xls")


Dade_County_4_2015_herb <- merge(Dade_County_4_2015, Herb, by = c("SPECIES_CD"))
Dade_County_4_2015_herb_count <- count(Dade_County_4_2015_herb, vars = "SPECIES_CD")
Dade_County_4_2015_herb_count$Year <- ('2015')
Dade_County_4_2015_herb_count$sitename <- ('Dade County 4')
Dade_County_4_2015_herb_count$Type <- "Herbivorous"

Dade_County_4_2015_comm <- merge(Dade_County_4_2015, Comm, by = c("SPECIES_CD"))
Dade_County_4_2015_comm_count <- count(Dade_County_4_2015_comm, vars = "SPECIES_CD")
Dade_County_4_2015_comm_count$Year <- ('2015')
Dade_County_4_2015_comm_count$sitename <- ('Dade County 4')
Dade_County_4_2015_comm_count$Type <- "Commercial"


Dade_County_4_2015_total_count <- rbind(Dade_County_4_2015_herb_count, Dade_County_4_2015_comm_count)




Dade_County_4_2016 <- import("SEF/Dade_County_4/data/Dade_County_4_2016.xls")


Dade_County_4_2016_herb <- merge(Dade_County_4_2016, Herb, by = c("SPECIES_CD"))
Dade_County_4_2016_herb_count <- count(Dade_County_4_2016_herb, vars = "SPECIES_CD")
Dade_County_4_2016_herb_count$Year <- ('2016')
Dade_County_4_2016_herb_count$sitename <- ('Dade County 4')
Dade_County_4_2016_herb_count$Type <- "Herbivorous"

Dade_County_4_2016_comm <- merge(Dade_County_4_2016, Comm, by = c("SPECIES_CD"))
Dade_County_4_2016_comm_count <- count(Dade_County_4_2016_comm, vars = "SPECIES_CD")
Dade_County_4_2016_comm_count$Year <- ('2016')
Dade_County_4_2016_comm_count$sitename <- ('Dade County 4')
Dade_County_4_2016_comm_count$Type <- "Commercial"


Dade_County_4_2016_total_count <- rbind(Dade_County_4_2016_herb_count, Dade_County_4_2016_comm_count)



Dade_County_4_2018 <- import("SEF/Dade_County_4/data/Dade_County_4_2018.xls")


Dade_County_4_2018_herb <- merge(Dade_County_4_2018, Herb, by = c("SPECIES_CD"))
Dade_County_4_2018_herb_count <- count(Dade_County_4_2018_herb, vars = "SPECIES_CD")
Dade_County_4_2018_herb_count$Year <- ('2018')
Dade_County_4_2018_herb_count$sitename <- ('Dade County 4')
Dade_County_4_2018_herb_count$Type <- "Herbivorous"

Dade_County_4_2018_comm <- merge(Dade_County_4_2018, Comm, by = c("SPECIES_CD"))
Dade_County_4_2018_comm_count <- count(Dade_County_4_2018_comm, vars = "SPECIES_CD")
Dade_County_4_2018_comm_count$Year <- ('2018')
Dade_County_4_2018_comm_count$sitename <- ('Dade County 4')
Dade_County_4_2018_comm_count$Type <- "Commercial"


Dade_County_4_2018_total_count <- rbind(Dade_County_4_2018_herb_count, Dade_County_4_2018_comm_count)





Dade_County_4_all <- rbind(Dade_County_4_2013_total_count, Dade_County_4_2014_total_count, Dade_County_4_2015_total_count, Dade_County_4_2016_total_count,Dade_County_4_2018_total_count)


export(Dade_County_4_all, "SEF/Dade_County_4/data/Dade_County_4_count_herb_comm.csv")




Dade_County_5_2013 <- import("SEF/Dade_County_5/data/Dade_County_5_2013.xls")


Dade_County_5_2013_herb <- merge(Dade_County_5_2013, Herb, by = c("SPECIES_CD"))
Dade_County_5_2013_herb_count <- count(Dade_County_5_2013_herb, vars = "SPECIES_CD")
Dade_County_5_2013_herb_count$Year <- ('2013')
Dade_County_5_2013_herb_count$sitename <- ('Dade County 5')
Dade_County_5_2013_herb_count$Type <- "Herbivorous"

Dade_County_5_2013_comm <- merge(Dade_County_5_2013, Comm, by = c("SPECIES_CD"))
Dade_County_5_2013_comm_count <- count(Dade_County_5_2013_comm, vars = "SPECIES_CD")
Dade_County_5_2013_comm_count$Year <- ('2013')
Dade_County_5_2013_comm_count$sitename <- ('Dade County 5')
Dade_County_5_2013_comm_count$Type <- "Commercial"


Dade_County_5_2013_total_count <- rbind(Dade_County_5_2013_herb_count, Dade_County_5_2013_comm_count)



Dade_County_5_2014 <- import("SEF/Dade_County_5/data/Dade_County_5_2014.xls")


Dade_County_5_2014_herb <- merge(Dade_County_5_2014, Herb, by = c("SPECIES_CD"))
Dade_County_5_2014_herb_count <- count(Dade_County_5_2014_herb, vars = "SPECIES_CD")
Dade_County_5_2014_herb_count$Year <- ('2014')
Dade_County_5_2014_herb_count$sitename <- ('Dade County 5')
Dade_County_5_2014_herb_count$Type <- "Herbivorous"

Dade_County_5_2014_comm <- merge(Dade_County_5_2014, Comm, by = c("SPECIES_CD"))
Dade_County_5_2014_comm_count <- count(Dade_County_5_2014_comm, vars = "SPECIES_CD")
Dade_County_5_2014_comm_count$Year <- ('2014')
Dade_County_5_2014_comm_count$sitename <- ('Dade County 5')
Dade_County_5_2014_comm_count$Type <- "Commercial"


Dade_County_5_2014_total_count <- rbind(Dade_County_5_2014_herb_count, Dade_County_5_2014_comm_count)


Dade_County_5_2015 <- import("SEF/Dade_County_5/data/Dade_County_5_2015.xls")


Dade_County_5_2015_herb <- merge(Dade_County_5_2015, Herb, by = c("SPECIES_CD"))
Dade_County_5_2015_herb_count <- count(Dade_County_5_2015_herb, vars = "SPECIES_CD")
Dade_County_5_2015_herb_count$Year <- ('2015')
Dade_County_5_2015_herb_count$sitename <- ('Dade County 5')
Dade_County_5_2015_herb_count$Type <- "Herbivorous"

Dade_County_5_2015_comm <- merge(Dade_County_5_2015, Comm, by = c("SPECIES_CD"))
Dade_County_5_2015_comm_count <- count(Dade_County_5_2015_comm, vars = "SPECIES_CD")
Dade_County_5_2015_comm_count$Year <- ('2015')
Dade_County_5_2015_comm_count$sitename <- ('Dade County 5')
Dade_County_5_2015_comm_count$Type <- "Commercial"


Dade_County_5_2015_total_count <- rbind(Dade_County_5_2015_herb_count, Dade_County_5_2015_comm_count)




Dade_County_5_2016 <- import("SEF/Dade_County_5/data/Dade_County_5_2016.xls")


Dade_County_5_2016_herb <- merge(Dade_County_5_2016, Herb, by = c("SPECIES_CD"))
Dade_County_5_2016_herb_count <- count(Dade_County_5_2016_herb, vars = "SPECIES_CD")
Dade_County_5_2016_herb_count$Year <- ('2016')
Dade_County_5_2016_herb_count$sitename <- ('Dade County 5')
Dade_County_5_2016_herb_count$Type <- "Herbivorous"

Dade_County_5_2016_comm <- merge(Dade_County_5_2016, Comm, by = c("SPECIES_CD"))
Dade_County_5_2016_comm_count <- count(Dade_County_5_2016_comm, vars = "SPECIES_CD")
Dade_County_5_2016_comm_count$Year <- ('2016')
Dade_County_5_2016_comm_count$sitename <- ('Dade County 5')
Dade_County_5_2016_comm_count$Type <- "Commercial"


Dade_County_5_2016_total_count <- rbind(Dade_County_5_2016_herb_count, Dade_County_5_2016_comm_count)



Dade_County_5_2018 <- import("SEF/Dade_County_5/data/Dade_County_5_2018.xls")


Dade_County_5_2018_herb <- merge(Dade_County_5_2018, Herb, by = c("SPECIES_CD"))
Dade_County_5_2018_herb_count <- count(Dade_County_5_2018_herb, vars = "SPECIES_CD")
Dade_County_5_2018_herb_count$Year <- ('2018')
Dade_County_5_2018_herb_count$sitename <- ('Dade County 5')
Dade_County_5_2018_herb_count$Type <- "Herbivorous"

Dade_County_5_2018_comm <- merge(Dade_County_5_2018, Comm, by = c("SPECIES_CD"))
Dade_County_5_2018_comm_count <- count(Dade_County_5_2018_comm, vars = "SPECIES_CD")
Dade_County_5_2018_comm_count$Year <- ('2018')
Dade_County_5_2018_comm_count$sitename <- ('Dade County 5')
Dade_County_5_2018_comm_count$Type <- "Commercial"


Dade_County_5_2018_total_count <- rbind(Dade_County_5_2018_herb_count, Dade_County_5_2018_comm_count)





Dade_County_5_all <- rbind(Dade_County_5_2013_total_count, Dade_County_5_2014_total_count, Dade_County_5_2015_total_count, Dade_County_5_2016_total_count,Dade_County_5_2018_total_count)


export(Dade_County_5_all, "SEF/Dade_County_5/data/Dade_County_5_count_herb_comm.csv")



Dade_County_6_2013 <- import("SEF/Dade_County_6/data/Dade_County_6_2013.xls")


Dade_County_6_2013_herb <- merge(Dade_County_6_2013, Herb, by = c("SPECIES_CD"))
Dade_County_6_2013_herb_count <- count(Dade_County_6_2013_herb, vars = "SPECIES_CD")
Dade_County_6_2013_herb_count$Year <- ('2013')
Dade_County_6_2013_herb_count$sitename <- ('Dade County 6')
Dade_County_6_2013_herb_count$Type <- "Herbivorous"

Dade_County_6_2013_comm <- merge(Dade_County_6_2013, Comm, by = c("SPECIES_CD"))
Dade_County_6_2013_comm_count <- count(Dade_County_6_2013_comm, vars = "SPECIES_CD")
Dade_County_6_2013_comm_count$Year <- ('2013')
Dade_County_6_2013_comm_count$sitename <- ('Dade County 6')
Dade_County_6_2013_comm_count$Type <- "Commercial"


Dade_County_6_2013_total_count <- rbind(Dade_County_6_2013_herb_count, Dade_County_6_2013_comm_count)



Dade_County_6_2014 <- import("SEF/Dade_County_6/data/Dade_County_6_2014.xls")


Dade_County_6_2014_herb <- merge(Dade_County_6_2014, Herb, by = c("SPECIES_CD"))
Dade_County_6_2014_herb_count <- count(Dade_County_6_2014_herb, vars = "SPECIES_CD")
Dade_County_6_2014_herb_count$Year <- ('2014')
Dade_County_6_2014_herb_count$sitename <- ('Dade County 6')
Dade_County_6_2014_herb_count$Type <- "Herbivorous"

Dade_County_6_2014_comm <- merge(Dade_County_6_2014, Comm, by = c("SPECIES_CD"))
Dade_County_6_2014_comm_count <- count(Dade_County_6_2014_comm, vars = "SPECIES_CD")
Dade_County_6_2014_comm_count$Year <- ('2014')
Dade_County_6_2014_comm_count$sitename <- ('Dade County 6')
Dade_County_6_2014_comm_count$Type <- "Commercial"


Dade_County_6_2014_total_count <- rbind(Dade_County_6_2014_herb_count, Dade_County_6_2014_comm_count)


Dade_County_6_2015 <- import("SEF/Dade_County_6/data/Dade_County_6_2015.xls")


Dade_County_6_2015_herb <- merge(Dade_County_6_2015, Herb, by = c("SPECIES_CD"))
Dade_County_6_2015_herb_count <- count(Dade_County_6_2015_herb, vars = "SPECIES_CD")
Dade_County_6_2015_herb_count$Year <- ('2015')
Dade_County_6_2015_herb_count$sitename <- ('Dade County 6')
Dade_County_6_2015_herb_count$Type <- "Herbivorous"

Dade_County_6_2015_comm <- merge(Dade_County_6_2015, Comm, by = c("SPECIES_CD"))
Dade_County_6_2015_comm_count <- count(Dade_County_6_2015_comm, vars = "SPECIES_CD")
Dade_County_6_2015_comm_count$Year <- ('2015')
Dade_County_6_2015_comm_count$sitename <- ('Dade County 6')
Dade_County_6_2015_comm_count$Type <- "Commercial"


Dade_County_6_2015_total_count <- rbind(Dade_County_6_2015_herb_count, Dade_County_6_2015_comm_count)




Dade_County_6_2016 <- import("SEF/Dade_County_6/data/Dade_County_6_2016.xls")


Dade_County_6_2016_herb <- merge(Dade_County_6_2016, Herb, by = c("SPECIES_CD"))
Dade_County_6_2016_herb_count <- count(Dade_County_6_2016_herb, vars = "SPECIES_CD")
Dade_County_6_2016_herb_count$Year <- ('2016')
Dade_County_6_2016_herb_count$sitename <- ('Dade County 6')
Dade_County_6_2016_herb_count$Type <- "Herbivorous"

Dade_County_6_2016_comm <- merge(Dade_County_6_2016, Comm, by = c("SPECIES_CD"))
Dade_County_6_2016_comm_count <- count(Dade_County_6_2016_comm, vars = "SPECIES_CD")
Dade_County_6_2016_comm_count$Year <- ('2016')
Dade_County_6_2016_comm_count$sitename <- ('Dade County 6')
Dade_County_6_2016_comm_count$Type <- "Commercial"


Dade_County_6_2016_total_count <- rbind(Dade_County_6_2016_herb_count, Dade_County_6_2016_comm_count)



Dade_County_6_2018 <- import("SEF/Dade_County_6/data/Dade_County_6_2018.xls")


Dade_County_6_2018_herb <- merge(Dade_County_6_2018, Herb, by = c("SPECIES_CD"))
Dade_County_6_2018_herb_count <- count(Dade_County_6_2018_herb, vars = "SPECIES_CD")
Dade_County_6_2018_herb_count$Year <- ('2018')
Dade_County_6_2018_herb_count$sitename <- ('Dade County 6')
Dade_County_6_2018_herb_count$Type <- "Herbivorous"

Dade_County_6_2018_comm <- merge(Dade_County_6_2018, Comm, by = c("SPECIES_CD"))
Dade_County_6_2018_comm_count <- count(Dade_County_6_2018_comm, vars = "SPECIES_CD")
Dade_County_6_2018_comm_count$Year <- ('2018')
Dade_County_6_2018_comm_count$sitename <- ('Dade County 6')
Dade_County_6_2018_comm_count$Type <- "Commercial"


Dade_County_6_2018_total_count <- rbind(Dade_County_6_2018_herb_count, Dade_County_6_2018_comm_count)





Dade_County_6_all <- rbind(Dade_County_6_2013_total_count, Dade_County_6_2014_total_count, Dade_County_6_2015_total_count, Dade_County_6_2016_total_count,Dade_County_6_2018_total_count)


export(Dade_County_6_all, "SEF/Dade_County_6/data/Dade_County_6_count_herb_comm.csv")




Dade_County_7_2013 <- import("SEF/Dade_County_7/data/Dade_County_7_2013.xls")


Dade_County_7_2013_herb <- merge(Dade_County_7_2013, Herb, by = c("SPECIES_CD"))
Dade_County_7_2013_herb_count <- count(Dade_County_7_2013_herb, vars = "SPECIES_CD")
Dade_County_7_2013_herb_count$Year <- ('2013')
Dade_County_7_2013_herb_count$sitename <- ('Dade County 7')
Dade_County_7_2013_herb_count$Type <- "Herbivorous"

Dade_County_7_2013_comm <- merge(Dade_County_7_2013, Comm, by = c("SPECIES_CD"))
Dade_County_7_2013_comm_count <- count(Dade_County_7_2013_comm, vars = "SPECIES_CD")
Dade_County_7_2013_comm_count$Year <- ('2013')
Dade_County_7_2013_comm_count$sitename <- ('Dade County 7')
Dade_County_7_2013_comm_count$Type <- "Commercial"


Dade_County_7_2013_total_count <- rbind(Dade_County_7_2013_herb_count, Dade_County_7_2013_comm_count)



Dade_County_7_2014 <- import("SEF/Dade_County_7/data/Dade_County_7_2014.xls")


Dade_County_7_2014_herb <- merge(Dade_County_7_2014, Herb, by = c("SPECIES_CD"))
Dade_County_7_2014_herb_count <- count(Dade_County_7_2014_herb, vars = "SPECIES_CD")
Dade_County_7_2014_herb_count$Year <- ('2014')
Dade_County_7_2014_herb_count$sitename <- ('Dade County 7')
Dade_County_7_2014_herb_count$Type <- "Herbivorous"

Dade_County_7_2014_comm <- merge(Dade_County_7_2014, Comm, by = c("SPECIES_CD"))
Dade_County_7_2014_comm_count <- count(Dade_County_7_2014_comm, vars = "SPECIES_CD")
Dade_County_7_2014_comm_count$Year <- ('2014')
Dade_County_7_2014_comm_count$sitename <- ('Dade County 7')
Dade_County_7_2014_comm_count$Type <- "Commercial"


Dade_County_7_2014_total_count <- rbind(Dade_County_7_2014_herb_count, Dade_County_7_2014_comm_count)


Dade_County_7_2015 <- import("SEF/Dade_County_7/data/Dade_County_7_2015.xls")


Dade_County_7_2015_herb <- merge(Dade_County_7_2015, Herb, by = c("SPECIES_CD"))
Dade_County_7_2015_herb_count <- count(Dade_County_7_2015_herb, vars = "SPECIES_CD")
Dade_County_7_2015_herb_count$Year <- ('2015')
Dade_County_7_2015_herb_count$sitename <- ('Dade County 7')
Dade_County_7_2015_herb_count$Type <- "Herbivorous"

Dade_County_7_2015_comm <- merge(Dade_County_7_2015, Comm, by = c("SPECIES_CD"))
Dade_County_7_2015_comm_count <- count(Dade_County_7_2015_comm, vars = "SPECIES_CD")
Dade_County_7_2015_comm_count$Year <- ('2015')
Dade_County_7_2015_comm_count$sitename <- ('Dade County 7')
Dade_County_7_2015_comm_count$Type <- "Commercial"


Dade_County_7_2015_total_count <- rbind(Dade_County_7_2015_herb_count, Dade_County_7_2015_comm_count)




Dade_County_7_2016 <- import("SEF/Dade_County_7/data/Dade_County_7_2016.xls")


Dade_County_7_2016_herb <- merge(Dade_County_7_2016, Herb, by = c("SPECIES_CD"))
Dade_County_7_2016_herb_count <- count(Dade_County_7_2016_herb, vars = "SPECIES_CD")
Dade_County_7_2016_herb_count$Year <- ('2016')
Dade_County_7_2016_herb_count$sitename <- ('Dade County 7')
Dade_County_7_2016_herb_count$Type <- "Herbivorous"

Dade_County_7_2016_comm <- merge(Dade_County_7_2016, Comm, by = c("SPECIES_CD"))
Dade_County_7_2016_comm_count <- count(Dade_County_7_2016_comm, vars = "SPECIES_CD")
Dade_County_7_2016_comm_count$Year <- ('2016')
Dade_County_7_2016_comm_count$sitename <- ('Dade County 7')
Dade_County_7_2016_comm_count$Type <- "Commercial"


Dade_County_7_2016_total_count <- rbind(Dade_County_7_2016_herb_count, Dade_County_7_2016_comm_count)



Dade_County_7_2018 <- import("SEF/Dade_County_7/data/Dade_County_7_2018.xls")


Dade_County_7_2018_herb <- merge(Dade_County_7_2018, Herb, by = c("SPECIES_CD"))
Dade_County_7_2018_herb_count <- count(Dade_County_7_2018_herb, vars = "SPECIES_CD")
Dade_County_7_2018_herb_count$Year <- ('2018')
Dade_County_7_2018_herb_count$sitename <- ('Dade County 7')
Dade_County_7_2018_herb_count$Type <- "Herbivorous"

Dade_County_7_2018_comm <- merge(Dade_County_7_2018, Comm, by = c("SPECIES_CD"))
Dade_County_7_2018_comm_count <- count(Dade_County_7_2018_comm, vars = "SPECIES_CD")
Dade_County_7_2018_comm_count$Year <- ('2018')
Dade_County_7_2018_comm_count$sitename <- ('Dade County 7')
Dade_County_7_2018_comm_count$Type <- "Commercial"


Dade_County_7_2018_total_count <- rbind(Dade_County_7_2018_herb_count, Dade_County_7_2018_comm_count)





Dade_County_7_all <- rbind(Dade_County_7_2013_total_count, Dade_County_7_2014_total_count, Dade_County_7_2015_total_count, Dade_County_7_2016_total_count,Dade_County_7_2018_total_count)


export(Dade_County_7_all, "SEF/Dade_County_7/data/Dade_County_7_count_herb_comm.csv")



Dade_County_8_2013 <- import("SEF/Dade_County_8/data/Dade_County_8_2013.xls")


Dade_County_8_2013_herb <- merge(Dade_County_8_2013, Herb, by = c("SPECIES_CD"))
Dade_County_8_2013_herb_count <- count(Dade_County_8_2013_herb, vars = "SPECIES_CD")
Dade_County_8_2013_herb_count$Year <- ('2013')
Dade_County_8_2013_herb_count$sitename <- ('Dade County 8')
Dade_County_8_2013_herb_count$Type <- "Herbivorous"

Dade_County_8_2013_comm <- merge(Dade_County_8_2013, Comm, by = c("SPECIES_CD"))
Dade_County_8_2013_comm_count <- count(Dade_County_8_2013_comm, vars = "SPECIES_CD")
Dade_County_8_2013_comm_count$Year <- ('2013')
Dade_County_8_2013_comm_count$sitename <- ('Dade County 8')
Dade_County_8_2013_comm_count$Type <- "Commercial"


Dade_County_8_2013_total_count <- rbind(Dade_County_8_2013_herb_count, Dade_County_8_2013_comm_count)



Dade_County_8_2014 <- import("SEF/Dade_County_8/data/Dade_County_8_2014.xls")


Dade_County_8_2014_herb <- merge(Dade_County_8_2014, Herb, by = c("SPECIES_CD"))
Dade_County_8_2014_herb_count <- count(Dade_County_8_2014_herb, vars = "SPECIES_CD")
Dade_County_8_2014_herb_count$Year <- ('2014')
Dade_County_8_2014_herb_count$sitename <- ('Dade County 8')
Dade_County_8_2014_herb_count$Type <- "Herbivorous"

Dade_County_8_2014_comm <- merge(Dade_County_8_2014, Comm, by = c("SPECIES_CD"))
Dade_County_8_2014_comm_count <- count(Dade_County_8_2014_comm, vars = "SPECIES_CD")
Dade_County_8_2014_comm_count$Year <- ('2014')
Dade_County_8_2014_comm_count$sitename <- ('Dade County 8')
Dade_County_8_2014_comm_count$Type <- "Commercial"


Dade_County_8_2014_total_count <- rbind(Dade_County_8_2014_herb_count, Dade_County_8_2014_comm_count)


Dade_County_8_2015 <- import("SEF/Dade_County_8/data/Dade_County_8_2015.xls")


Dade_County_8_2015_herb <- merge(Dade_County_8_2015, Herb, by = c("SPECIES_CD"))
Dade_County_8_2015_herb_count <- count(Dade_County_8_2015_herb, vars = "SPECIES_CD")
Dade_County_8_2015_herb_count$Year <- ('2015')
Dade_County_8_2015_herb_count$sitename <- ('Dade County 8')
Dade_County_8_2015_herb_count$Type <- "Herbivorous"

Dade_County_8_2015_comm <- merge(Dade_County_8_2015, Comm, by = c("SPECIES_CD"))
Dade_County_8_2015_comm_count <- count(Dade_County_8_2015_comm, vars = "SPECIES_CD")
Dade_County_8_2015_comm_count$Year <- ('2015')
Dade_County_8_2015_comm_count$sitename <- ('Dade County 8')
Dade_County_8_2015_comm_count$Type <- "Commercial"


Dade_County_8_2015_total_count <- rbind(Dade_County_8_2015_herb_count, Dade_County_8_2015_comm_count)




Dade_County_8_2016 <- import("SEF/Dade_County_8/data/Dade_County_8_2016.xls")


Dade_County_8_2016_herb <- merge(Dade_County_8_2016, Herb, by = c("SPECIES_CD"))
Dade_County_8_2016_herb_count <- count(Dade_County_8_2016_herb, vars = "SPECIES_CD")
Dade_County_8_2016_herb_count$Year <- ('2016')
Dade_County_8_2016_herb_count$sitename <- ('Dade County 8')
Dade_County_8_2016_herb_count$Type <- "Herbivorous"

Dade_County_8_2016_comm <- merge(Dade_County_8_2016, Comm, by = c("SPECIES_CD"))
Dade_County_8_2016_comm_count <- count(Dade_County_8_2016_comm, vars = "SPECIES_CD")
Dade_County_8_2016_comm_count$Year <- ('2016')
Dade_County_8_2016_comm_count$sitename <- ('Dade County 8')
Dade_County_8_2016_comm_count$Type <- "Commercial"


Dade_County_8_2016_total_count <- rbind(Dade_County_8_2016_herb_count, Dade_County_8_2016_comm_count)



Dade_County_8_2018 <- import("SEF/Dade_County_8/data/Dade_County_8_2018.xls")


Dade_County_8_2018_herb <- merge(Dade_County_8_2018, Herb, by = c("SPECIES_CD"))
Dade_County_8_2018_herb_count <- count(Dade_County_8_2018_herb, vars = "SPECIES_CD")
Dade_County_8_2018_herb_count$Year <- ('2018')
Dade_County_8_2018_herb_count$sitename <- ('Dade County 8')
Dade_County_8_2018_herb_count$Type <- "Herbivorous"

Dade_County_8_2018_comm <- merge(Dade_County_8_2018, Comm, by = c("SPECIES_CD"))
Dade_County_8_2018_comm_count <- count(Dade_County_8_2018_comm, vars = "SPECIES_CD")
Dade_County_8_2018_comm_count$Year <- ('2018')
Dade_County_8_2018_comm_count$sitename <- ('Dade County 8')
Dade_County_8_2018_comm_count$Type <- "Commercial"


Dade_County_8_2018_total_count <- rbind(Dade_County_8_2018_herb_count, Dade_County_8_2018_comm_count)





Dade_County_8_all <- rbind(Dade_County_8_2013_total_count, Dade_County_8_2014_total_count, Dade_County_8_2015_total_count, Dade_County_8_2016_total_count,Dade_County_8_2018_total_count)


export(Dade_County_8_all, "SEF/Dade_County_8/data/Dade_County_8_count_herb_comm.csv")



Martin_County_1_2013 <- import("SEF/Martin_County_1/data/Martin_County_1_2013.xls")


Martin_County_1_2013_herb <- merge(Martin_County_1_2013, Herb, by = c("SPECIES_CD"))
Martin_County_1_2013_herb_count <- count(Martin_County_1_2013_herb, vars = "SPECIES_CD")
Martin_County_1_2013_herb_count$Year <- ('2013')
Martin_County_1_2013_herb_count$sitename <- ('Martin County 1')
Martin_County_1_2013_herb_count$Type <- "Herbivorous"

Martin_County_1_2013_comm <- merge(Martin_County_1_2013, Comm, by = c("SPECIES_CD"))
Martin_County_1_2013_comm_count <- count(Martin_County_1_2013_comm, vars = "SPECIES_CD")
Martin_County_1_2013_comm_count$Year <- ('2013')
Martin_County_1_2013_comm_count$sitename <- ('Martin County 1')
Martin_County_1_2013_comm_count$Type <- "Commercial"


Martin_County_1_2013_total_count <- rbind(Martin_County_1_2013_herb_count, Martin_County_1_2013_comm_count)



Martin_County_1_2014 <- import("SEF/Martin_County_1/data/Martin_County_1_2014.xls")


Martin_County_1_2014_herb <- merge(Martin_County_1_2014, Herb, by = c("SPECIES_CD"))
Martin_County_1_2014_herb_count <- count(Martin_County_1_2014_herb, vars = "SPECIES_CD")
Martin_County_1_2014_herb_count$Year <- ('2014')
Martin_County_1_2014_herb_count$sitename <- ('Martin County 1')
Martin_County_1_2014_herb_count$Type <- "Herbivorous"

Martin_County_1_2014_comm <- merge(Martin_County_1_2014, Comm, by = c("SPECIES_CD"))
Martin_County_1_2014_comm_count <- count(Martin_County_1_2014_comm, vars = "SPECIES_CD")
Martin_County_1_2014_comm_count$Year <- ('2014')
Martin_County_1_2014_comm_count$sitename <- ('Martin County 1')
Martin_County_1_2014_comm_count$Type <- "Commercial"


Martin_County_1_2014_total_count <- rbind(Martin_County_1_2014_herb_count, Martin_County_1_2014_comm_count)


Martin_County_1_2015 <- import("SEF/Martin_County_1/data/Martin_County_1_2015.xls")


Martin_County_1_2015_herb <- merge(Martin_County_1_2015, Herb, by = c("SPECIES_CD"))
Martin_County_1_2015_herb_count <- count(Martin_County_1_2015_herb, vars = "SPECIES_CD")
Martin_County_1_2015_herb_count$Year <- ('2015')
Martin_County_1_2015_herb_count$sitename <- ('Martin County 1')
Martin_County_1_2015_herb_count$Type <- "Herbivorous"

Martin_County_1_2015_comm <- merge(Martin_County_1_2015, Comm, by = c("SPECIES_CD"))
Martin_County_1_2015_comm_count <- count(Martin_County_1_2015_comm, vars = "SPECIES_CD")
Martin_County_1_2015_comm_count$Year <- ('2015')
Martin_County_1_2015_comm_count$sitename <- ('Martin County 1')
Martin_County_1_2015_comm_count$Type <- "Commercial"


Martin_County_1_2015_total_count <- rbind(Martin_County_1_2015_herb_count, Martin_County_1_2015_comm_count)




Martin_County_1_2016 <- import("SEF/Martin_County_1/data/Martin_County_1_2016.xls")


Martin_County_1_2016_herb <- merge(Martin_County_1_2016, Herb, by = c("SPECIES_CD"))
Martin_County_1_2016_herb_count <- count(Martin_County_1_2016_herb, vars = "SPECIES_CD")
Martin_County_1_2016_herb_count$Year <- ('2016')
Martin_County_1_2016_herb_count$sitename <- ('Martin County 1')
Martin_County_1_2016_herb_count$Type <- "Herbivorous"

Martin_County_1_2016_comm <- merge(Martin_County_1_2016, Comm, by = c("SPECIES_CD"))
Martin_County_1_2016_comm_count <- count(Martin_County_1_2016_comm, vars = "SPECIES_CD")
Martin_County_1_2016_comm_count$Year <- ('2016')
Martin_County_1_2016_comm_count$sitename <- ('Martin County 1')
Martin_County_1_2016_comm_count$Type <- "Commercial"


Martin_County_1_2016_total_count <- rbind(Martin_County_1_2016_herb_count, Martin_County_1_2016_comm_count)



Martin_County_1_2018 <- import("SEF/Martin_County_1/data/Martin_County_1_2018.xls")


Martin_County_1_2018_herb <- merge(Martin_County_1_2018, Herb, by = c("SPECIES_CD"))
Martin_County_1_2018_herb_count <- count(Martin_County_1_2018_herb, vars = "SPECIES_CD")
Martin_County_1_2018_herb_count$Year <- ('2018')
Martin_County_1_2018_herb_count$sitename <- ('Martin County 1')
Martin_County_1_2018_herb_count$Type <- "Herbivorous"

Martin_County_1_2018_comm <- merge(Martin_County_1_2018, Comm, by = c("SPECIES_CD"))
Martin_County_1_2018_comm_count <- count(Martin_County_1_2018_comm, vars = "SPECIES_CD")
Martin_County_1_2018_comm_count$Year <- ('2018')
Martin_County_1_2018_comm_count$sitename <- ('Martin County 1')
Martin_County_1_2018_comm_count$Type <- "Commercial"


Martin_County_1_2018_total_count <- rbind(Martin_County_1_2018_herb_count, Martin_County_1_2018_comm_count)





Martin_County_1_all <- rbind(Martin_County_1_2013_total_count, Martin_County_1_2014_total_count, Martin_County_1_2015_total_count, Martin_County_1_2016_total_count,Martin_County_1_2018_total_count)


export(Martin_County_1_all, "SEF/Martin_County_1/data/Martin_County_1_count_herb_comm.csv")



Martin_County_2_2013 <- import("SEF/Martin_County_2/data/Martin_County_2_2013.xls")


Martin_County_2_2013_herb <- merge(Martin_County_2_2013, Herb, by = c("SPECIES_CD"))
Martin_County_2_2013_herb_count <- count(Martin_County_2_2013_herb, vars = "SPECIES_CD")
Martin_County_2_2013_herb_count$Year <- ('2013')
Martin_County_2_2013_herb_count$sitename <- ('Martin County 2')
Martin_County_2_2013_herb_count$Type <- "Herbivorous"

Martin_County_2_2013_comm <- merge(Martin_County_2_2013, Comm, by = c("SPECIES_CD"))
Martin_County_2_2013_comm_count <- count(Martin_County_2_2013_comm, vars = "SPECIES_CD")
Martin_County_2_2013_comm_count$Year <- ('2013')
Martin_County_2_2013_comm_count$sitename <- ('Martin County 2')
Martin_County_2_2013_comm_count$Type <- "Commercial"


Martin_County_2_2013_total_count <- rbind(Martin_County_2_2013_herb_count, Martin_County_2_2013_comm_count)



Martin_County_2_2014 <- import("SEF/Martin_County_2/data/Martin_County_2_2014.xls")


Martin_County_2_2014_herb <- merge(Martin_County_2_2014, Herb, by = c("SPECIES_CD"))
Martin_County_2_2014_herb_count <- count(Martin_County_2_2014_herb, vars = "SPECIES_CD")
Martin_County_2_2014_herb_count$Year <- ('2014')
Martin_County_2_2014_herb_count$sitename <- ('Martin County 2')
Martin_County_2_2014_herb_count$Type <- "Herbivorous"

Martin_County_2_2014_comm <- merge(Martin_County_2_2014, Comm, by = c("SPECIES_CD"))
Martin_County_2_2014_comm_count <- count(Martin_County_2_2014_comm, vars = "SPECIES_CD")
Martin_County_2_2014_comm_count$Year <- ('2014')
Martin_County_2_2014_comm_count$sitename <- ('Martin County 2')
Martin_County_2_2014_comm_count$Type <- "Commercial"


Martin_County_2_2014_total_count <- rbind(Martin_County_2_2014_herb_count, Martin_County_2_2014_comm_count)


Martin_County_2_2015 <- import("SEF/Martin_County_2/data/Martin_County_2_2015.xls")


Martin_County_2_2015_herb <- merge(Martin_County_2_2015, Herb, by = c("SPECIES_CD"))
Martin_County_2_2015_herb_count <- count(Martin_County_2_2015_herb, vars = "SPECIES_CD")
Martin_County_2_2015_herb_count$Year <- ('2015')
Martin_County_2_2015_herb_count$sitename <- ('Martin County 2')
Martin_County_2_2015_herb_count$Type <- "Herbivorous"

Martin_County_2_2015_comm <- merge(Martin_County_2_2015, Comm, by = c("SPECIES_CD"))
Martin_County_2_2015_comm_count <- count(Martin_County_2_2015_comm, vars = "SPECIES_CD")
Martin_County_2_2015_comm_count$Year <- ('2015')
Martin_County_2_2015_comm_count$sitename <- ('Martin County 2')
Martin_County_2_2015_comm_count$Type <- "Commercial"


Martin_County_2_2015_total_count <- rbind(Martin_County_2_2015_herb_count, Martin_County_2_2015_comm_count)




Martin_County_2_2016 <- import("SEF/Martin_County_2/data/Martin_County_2_2016.xls")


Martin_County_2_2016_herb <- merge(Martin_County_2_2016, Herb, by = c("SPECIES_CD"))
Martin_County_2_2016_herb_count <- count(Martin_County_2_2016_herb, vars = "SPECIES_CD")
Martin_County_2_2016_herb_count$Year <- ('2016')
Martin_County_2_2016_herb_count$sitename <- ('Martin County 2')
Martin_County_2_2016_herb_count$Type <- "Herbivorous"

Martin_County_2_2016_comm <- merge(Martin_County_2_2016, Comm, by = c("SPECIES_CD"))
Martin_County_2_2016_comm_count <- count(Martin_County_2_2016_comm, vars = "SPECIES_CD")
Martin_County_2_2016_comm_count$Year <- ('2016')
Martin_County_2_2016_comm_count$sitename <- ('Martin County 2')
Martin_County_2_2016_comm_count$Type <- "Commercial"


Martin_County_2_2016_total_count <- rbind(Martin_County_2_2016_herb_count, Martin_County_2_2016_comm_count)



Martin_County_2_2018 <- import("SEF/Martin_County_2/data/Martin_County_2_2018.xls")


Martin_County_2_2018_herb <- merge(Martin_County_2_2018, Herb, by = c("SPECIES_CD"))
Martin_County_2_2018_herb_count <- count(Martin_County_2_2018_herb, vars = "SPECIES_CD")
Martin_County_2_2018_herb_count$Year <- ('2018')
Martin_County_2_2018_herb_count$sitename <- ('Martin County 2')
Martin_County_2_2018_herb_count$Type <- "Herbivorous"

Martin_County_2_2018_comm <- merge(Martin_County_2_2018, Comm, by = c("SPECIES_CD"))
Martin_County_2_2018_comm_count <- count(Martin_County_2_2018_comm, vars = "SPECIES_CD")
Martin_County_2_2018_comm_count$Year <- ('2018')
Martin_County_2_2018_comm_count$sitename <- ('Martin County 2')
Martin_County_2_2018_comm_count$Type <- "Commercial"


Martin_County_2_2018_total_count <- rbind(Martin_County_2_2018_herb_count, Martin_County_2_2018_comm_count)





Martin_County_2_all <- rbind(Martin_County_2_2013_total_count, Martin_County_2_2014_total_count, Martin_County_2_2015_total_count, Martin_County_2_2016_total_count,Martin_County_2_2018_total_count)


export(Martin_County_2_all, "SEF/Martin_County_2/data/Martin_County_2_count_herb_comm.csv")




Palm_Beach_1_2013 <- import("SEF/Palm_Beach_1/data/Palm_Beach_1_2013.xls")


Palm_Beach_1_2013_herb <- merge(Palm_Beach_1_2013, Herb, by = c("SPECIES_CD"))
Palm_Beach_1_2013_herb_count <- count(Palm_Beach_1_2013_herb, vars = "SPECIES_CD")
Palm_Beach_1_2013_herb_count$Year <- ('2013')
Palm_Beach_1_2013_herb_count$sitename <- ('Palm Beach 1')
Palm_Beach_1_2013_herb_count$Type <- "Herbivorous"

Palm_Beach_1_2013_comm <- merge(Palm_Beach_1_2013, Comm, by = c("SPECIES_CD"))
Palm_Beach_1_2013_comm_count <- count(Palm_Beach_1_2013_comm, vars = "SPECIES_CD")
Palm_Beach_1_2013_comm_count$Year <- ('2013')
Palm_Beach_1_2013_comm_count$sitename <- ('Palm Beach 1')
Palm_Beach_1_2013_comm_count$Type <- "Commercial"


Palm_Beach_1_2013_total_count <- rbind(Palm_Beach_1_2013_herb_count, Palm_Beach_1_2013_comm_count)



Palm_Beach_1_2014 <- import("SEF/Palm_Beach_1/data/Palm_Beach_1_2014.xls")


Palm_Beach_1_2014_herb <- merge(Palm_Beach_1_2014, Herb, by = c("SPECIES_CD"))
Palm_Beach_1_2014_herb_count <- count(Palm_Beach_1_2014_herb, vars = "SPECIES_CD")
Palm_Beach_1_2014_herb_count$Year <- ('2014')
Palm_Beach_1_2014_herb_count$sitename <- ('Palm Beach 1')
Palm_Beach_1_2014_herb_count$Type <- "Herbivorous"

Palm_Beach_1_2014_comm <- merge(Palm_Beach_1_2014, Comm, by = c("SPECIES_CD"))
Palm_Beach_1_2014_comm_count <- count(Palm_Beach_1_2014_comm, vars = "SPECIES_CD")
Palm_Beach_1_2014_comm_count$Year <- ('2014')
Palm_Beach_1_2014_comm_count$sitename <- ('Palm Beach 1')
Palm_Beach_1_2014_comm_count$Type <- "Commercial"


Palm_Beach_1_2014_total_count <- rbind(Palm_Beach_1_2014_herb_count, Palm_Beach_1_2014_comm_count)


Palm_Beach_1_2015 <- import("SEF/Palm_Beach_1/data/Palm_Beach_1_2015.xls")


Palm_Beach_1_2015_herb <- merge(Palm_Beach_1_2015, Herb, by = c("SPECIES_CD"))
Palm_Beach_1_2015_herb_count <- count(Palm_Beach_1_2015_herb, vars = "SPECIES_CD")
Palm_Beach_1_2015_herb_count$Year <- ('2015')
Palm_Beach_1_2015_herb_count$sitename <- ('Palm Beach 1')
Palm_Beach_1_2015_herb_count$Type <- "Herbivorous"

Palm_Beach_1_2015_comm <- merge(Palm_Beach_1_2015, Comm, by = c("SPECIES_CD"))
Palm_Beach_1_2015_comm_count <- count(Palm_Beach_1_2015_comm, vars = "SPECIES_CD")
Palm_Beach_1_2015_comm_count$Year <- ('2015')
Palm_Beach_1_2015_comm_count$sitename <- ('Palm Beach 1')
Palm_Beach_1_2015_comm_count$Type <- "Commercial"


Palm_Beach_1_2015_total_count <- rbind(Palm_Beach_1_2015_herb_count, Palm_Beach_1_2015_comm_count)




Palm_Beach_1_2016 <- import("SEF/Palm_Beach_1/data/Palm_Beach_1_2016.xls")


Palm_Beach_1_2016_herb <- merge(Palm_Beach_1_2016, Herb, by = c("SPECIES_CD"))
Palm_Beach_1_2016_herb_count <- count(Palm_Beach_1_2016_herb, vars = "SPECIES_CD")
Palm_Beach_1_2016_herb_count$Year <- ('2016')
Palm_Beach_1_2016_herb_count$sitename <- ('Palm Beach 1')
Palm_Beach_1_2016_herb_count$Type <- "Herbivorous"

Palm_Beach_1_2016_comm <- merge(Palm_Beach_1_2016, Comm, by = c("SPECIES_CD"))
Palm_Beach_1_2016_comm_count <- count(Palm_Beach_1_2016_comm, vars = "SPECIES_CD")
Palm_Beach_1_2016_comm_count$Year <- ('2016')
Palm_Beach_1_2016_comm_count$sitename <- ('Palm Beach 1')
Palm_Beach_1_2016_comm_count$Type <- "Commercial"


Palm_Beach_1_2016_total_count <- rbind(Palm_Beach_1_2016_herb_count, Palm_Beach_1_2016_comm_count)



Palm_Beach_1_2018 <- import("SEF/Palm_Beach_1/data/Palm_Beach_1_2018.xls")


Palm_Beach_1_2018_herb <- merge(Palm_Beach_1_2018, Herb, by = c("SPECIES_CD"))
Palm_Beach_1_2018_herb_count <- count(Palm_Beach_1_2018_herb, vars = "SPECIES_CD")
Palm_Beach_1_2018_herb_count$Year <- ('2018')
Palm_Beach_1_2018_herb_count$sitename <- ('Palm Beach 1')
Palm_Beach_1_2018_herb_count$Type <- "Herbivorous"

Palm_Beach_1_2018_comm <- merge(Palm_Beach_1_2018, Comm, by = c("SPECIES_CD"))
Palm_Beach_1_2018_comm_count <- count(Palm_Beach_1_2018_comm, vars = "SPECIES_CD")
Palm_Beach_1_2018_comm_count$Year <- ('2018')
Palm_Beach_1_2018_comm_count$sitename <- ('Palm Beach 1')
Palm_Beach_1_2018_comm_count$Type <- "Commercial"


Palm_Beach_1_2018_total_count <- rbind(Palm_Beach_1_2018_herb_count, Palm_Beach_1_2018_comm_count)





Palm_Beach_1_all <- rbind(Palm_Beach_1_2013_total_count, Palm_Beach_1_2014_total_count, Palm_Beach_1_2015_total_count, Palm_Beach_1_2016_total_count,Palm_Beach_1_2018_total_count)


export(Palm_Beach_1_all, "SEF/Palm_Beach_1/data/Palm_Beach_1_count_herb_comm.csv")




Palm_Beach_2_2013 <- import("SEF/Palm_Beach_2/data/Palm_Beach_2_2013.xls")


Palm_Beach_2_2013_herb <- merge(Palm_Beach_2_2013, Herb, by = c("SPECIES_CD"))
Palm_Beach_2_2013_herb_count <- count(Palm_Beach_2_2013_herb, vars = "SPECIES_CD")
Palm_Beach_2_2013_herb_count$Year <- ('2013')
Palm_Beach_2_2013_herb_count$sitename <- ('Palm Beach 2')
Palm_Beach_2_2013_herb_count$Type <- "Herbivorous"

Palm_Beach_2_2013_comm <- merge(Palm_Beach_2_2013, Comm, by = c("SPECIES_CD"))
Palm_Beach_2_2013_comm_count <- count(Palm_Beach_2_2013_comm, vars = "SPECIES_CD")
Palm_Beach_2_2013_comm_count$Year <- ('2013')
Palm_Beach_2_2013_comm_count$sitename <- ('Palm Beach 2')
Palm_Beach_2_2013_comm_count$Type <- "Commercial"


Palm_Beach_2_2013_total_count <- rbind(Palm_Beach_2_2013_herb_count, Palm_Beach_2_2013_comm_count)



Palm_Beach_2_2014 <- import("SEF/Palm_Beach_2/data/Palm_Beach_2_2014.xls")


Palm_Beach_2_2014_herb <- merge(Palm_Beach_2_2014, Herb, by = c("SPECIES_CD"))
Palm_Beach_2_2014_herb_count <- count(Palm_Beach_2_2014_herb, vars = "SPECIES_CD")
Palm_Beach_2_2014_herb_count$Year <- ('2014')
Palm_Beach_2_2014_herb_count$sitename <- ('Palm Beach 2')
Palm_Beach_2_2014_herb_count$Type <- "Herbivorous"

Palm_Beach_2_2014_comm <- merge(Palm_Beach_2_2014, Comm, by = c("SPECIES_CD"))
Palm_Beach_2_2014_comm_count <- count(Palm_Beach_2_2014_comm, vars = "SPECIES_CD")
Palm_Beach_2_2014_comm_count$Year <- ('2014')
Palm_Beach_2_2014_comm_count$sitename <- ('Palm Beach 2')
Palm_Beach_2_2014_comm_count$Type <- "Commercial"


Palm_Beach_2_2014_total_count <- rbind(Palm_Beach_2_2014_herb_count, Palm_Beach_2_2014_comm_count)


Palm_Beach_2_2015 <- import("SEF/Palm_Beach_2/data/Palm_Beach_2_2015.xls")


Palm_Beach_2_2015_herb <- merge(Palm_Beach_2_2015, Herb, by = c("SPECIES_CD"))
Palm_Beach_2_2015_herb_count <- count(Palm_Beach_2_2015_herb, vars = "SPECIES_CD")
Palm_Beach_2_2015_herb_count$Year <- ('2015')
Palm_Beach_2_2015_herb_count$sitename <- ('Palm Beach 2')
Palm_Beach_2_2015_herb_count$Type <- "Herbivorous"

Palm_Beach_2_2015_comm <- merge(Palm_Beach_2_2015, Comm, by = c("SPECIES_CD"))
Palm_Beach_2_2015_comm_count <- count(Palm_Beach_2_2015_comm, vars = "SPECIES_CD")
Palm_Beach_2_2015_comm_count$Year <- ('2015')
Palm_Beach_2_2015_comm_count$sitename <- ('Palm Beach 2')
Palm_Beach_2_2015_comm_count$Type <- "Commercial"


Palm_Beach_2_2015_total_count <- rbind(Palm_Beach_2_2015_herb_count, Palm_Beach_2_2015_comm_count)




Palm_Beach_2_2016 <- import("SEF/Palm_Beach_2/data/Palm_Beach_2_2016.xls")


Palm_Beach_2_2016_herb <- merge(Palm_Beach_2_2016, Herb, by = c("SPECIES_CD"))
Palm_Beach_2_2016_herb_count <- count(Palm_Beach_2_2016_herb, vars = "SPECIES_CD")
Palm_Beach_2_2016_herb_count$Year <- ('2016')
Palm_Beach_2_2016_herb_count$sitename <- ('Palm Beach 2')
Palm_Beach_2_2016_herb_count$Type <- "Herbivorous"

Palm_Beach_2_2016_comm <- merge(Palm_Beach_2_2016, Comm, by = c("SPECIES_CD"))
Palm_Beach_2_2016_comm_count <- count(Palm_Beach_2_2016_comm, vars = "SPECIES_CD")
Palm_Beach_2_2016_comm_count$Year <- ('2016')
Palm_Beach_2_2016_comm_count$sitename <- ('Palm Beach 2')
Palm_Beach_2_2016_comm_count$Type <- "Commercial"


Palm_Beach_2_2016_total_count <- rbind(Palm_Beach_2_2016_herb_count, Palm_Beach_2_2016_comm_count)



Palm_Beach_2_2018 <- import("SEF/Palm_Beach_2/data/Palm_Beach_2_2018.xls")


Palm_Beach_2_2018_herb <- merge(Palm_Beach_2_2018, Herb, by = c("SPECIES_CD"))
Palm_Beach_2_2018_herb_count <- count(Palm_Beach_2_2018_herb, vars = "SPECIES_CD")
Palm_Beach_2_2018_herb_count$Year <- ('2018')
Palm_Beach_2_2018_herb_count$sitename <- ('Palm Beach 2')
Palm_Beach_2_2018_herb_count$Type <- "Herbivorous"

Palm_Beach_2_2018_comm <- merge(Palm_Beach_2_2018, Comm, by = c("SPECIES_CD"))
Palm_Beach_2_2018_comm_count <- count(Palm_Beach_2_2018_comm, vars = "SPECIES_CD")
Palm_Beach_2_2018_comm_count$Year <- ('2018')
Palm_Beach_2_2018_comm_count$sitename <- ('Palm Beach 2')
Palm_Beach_2_2018_comm_count$Type <- "Commercial"


Palm_Beach_2_2018_total_count <- rbind(Palm_Beach_2_2018_herb_count, Palm_Beach_2_2018_comm_count)





Palm_Beach_2_all <- rbind(Palm_Beach_2_2013_total_count, Palm_Beach_2_2014_total_count, Palm_Beach_2_2015_total_count, Palm_Beach_2_2016_total_count,Palm_Beach_2_2018_total_count)


export(Palm_Beach_2_all, "SEF/Palm_Beach_2/data/Palm_Beach_2_count_herb_comm.csv")




Palm_Beach_3_2013 <- import("SEF/Palm_Beach_3/data/Palm_Beach_3_2013.xls")


Palm_Beach_3_2013_herb <- merge(Palm_Beach_3_2013, Herb, by = c("SPECIES_CD"))
Palm_Beach_3_2013_herb_count <- count(Palm_Beach_3_2013_herb, vars = "SPECIES_CD")
Palm_Beach_3_2013_herb_count$Year <- ('2013')
Palm_Beach_3_2013_herb_count$sitename <- ('Palm Beach 3')
Palm_Beach_3_2013_herb_count$Type <- "Herbivorous"

Palm_Beach_3_2013_comm <- merge(Palm_Beach_3_2013, Comm, by = c("SPECIES_CD"))
Palm_Beach_3_2013_comm_count <- count(Palm_Beach_3_2013_comm, vars = "SPECIES_CD")
Palm_Beach_3_2013_comm_count$Year <- ('2013')
Palm_Beach_3_2013_comm_count$sitename <- ('Palm Beach 3')
Palm_Beach_3_2013_comm_count$Type <- "Commercial"


Palm_Beach_3_2013_total_count <- rbind(Palm_Beach_3_2013_herb_count, Palm_Beach_3_2013_comm_count)



Palm_Beach_3_2014 <- import("SEF/Palm_Beach_3/data/Palm_Beach_3_2014.xls")


Palm_Beach_3_2014_herb <- merge(Palm_Beach_3_2014, Herb, by = c("SPECIES_CD"))
Palm_Beach_3_2014_herb_count <- count(Palm_Beach_3_2014_herb, vars = "SPECIES_CD")
Palm_Beach_3_2014_herb_count$Year <- ('2014')
Palm_Beach_3_2014_herb_count$sitename <- ('Palm Beach 3')
Palm_Beach_3_2014_herb_count$Type <- "Herbivorous"

Palm_Beach_3_2014_comm <- merge(Palm_Beach_3_2014, Comm, by = c("SPECIES_CD"))
Palm_Beach_3_2014_comm_count <- count(Palm_Beach_3_2014_comm, vars = "SPECIES_CD")
Palm_Beach_3_2014_comm_count$Year <- ('2014')
Palm_Beach_3_2014_comm_count$sitename <- ('Palm Beach 3')
Palm_Beach_3_2014_comm_count$Type <- "Commercial"


Palm_Beach_3_2014_total_count <- rbind(Palm_Beach_3_2014_herb_count, Palm_Beach_3_2014_comm_count)


Palm_Beach_3_2015 <- import("SEF/Palm_Beach_3/data/Palm_Beach_3_2015.xls")


Palm_Beach_3_2015_herb <- merge(Palm_Beach_3_2015, Herb, by = c("SPECIES_CD"))
Palm_Beach_3_2015_herb_count <- count(Palm_Beach_3_2015_herb, vars = "SPECIES_CD")
Palm_Beach_3_2015_herb_count$Year <- ('2015')
Palm_Beach_3_2015_herb_count$sitename <- ('Palm Beach 3')
Palm_Beach_3_2015_herb_count$Type <- "Herbivorous"

Palm_Beach_3_2015_comm <- merge(Palm_Beach_3_2015, Comm, by = c("SPECIES_CD"))
Palm_Beach_3_2015_comm_count <- count(Palm_Beach_3_2015_comm, vars = "SPECIES_CD")
Palm_Beach_3_2015_comm_count$Year <- ('2015')
Palm_Beach_3_2015_comm_count$sitename <- ('Palm Beach 3')
Palm_Beach_3_2015_comm_count$Type <- "Commercial"


Palm_Beach_3_2015_total_count <- rbind(Palm_Beach_3_2015_herb_count, Palm_Beach_3_2015_comm_count)




Palm_Beach_3_2016 <- import("SEF/Palm_Beach_3/data/Palm_Beach_3_2016.xls")


Palm_Beach_3_2016_herb <- merge(Palm_Beach_3_2016, Herb, by = c("SPECIES_CD"))
Palm_Beach_3_2016_herb_count <- count(Palm_Beach_3_2016_herb, vars = "SPECIES_CD")
Palm_Beach_3_2016_herb_count$Year <- ('2016')
Palm_Beach_3_2016_herb_count$sitename <- ('Palm Beach 3')
Palm_Beach_3_2016_herb_count$Type <- "Herbivorous"

Palm_Beach_3_2016_comm <- merge(Palm_Beach_3_2016, Comm, by = c("SPECIES_CD"))
Palm_Beach_3_2016_comm_count <- count(Palm_Beach_3_2016_comm, vars = "SPECIES_CD")
Palm_Beach_3_2016_comm_count$Year <- ('2016')
Palm_Beach_3_2016_comm_count$sitename <- ('Palm Beach 3')
Palm_Beach_3_2016_comm_count$Type <- "Commercial"


Palm_Beach_3_2016_total_count <- rbind(Palm_Beach_3_2016_herb_count, Palm_Beach_3_2016_comm_count)



Palm_Beach_3_2018 <- import("SEF/Palm_Beach_3/data/Palm_Beach_3_2018.xls")


Palm_Beach_3_2018_herb <- merge(Palm_Beach_3_2018, Herb, by = c("SPECIES_CD"))
Palm_Beach_3_2018_herb_count <- count(Palm_Beach_3_2018_herb, vars = "SPECIES_CD")
Palm_Beach_3_2018_herb_count$Year <- ('2018')
Palm_Beach_3_2018_herb_count$sitename <- ('Palm Beach 3')
Palm_Beach_3_2018_herb_count$Type <- "Herbivorous"

Palm_Beach_3_2018_comm <- merge(Palm_Beach_3_2018, Comm, by = c("SPECIES_CD"))
Palm_Beach_3_2018_comm_count <- count(Palm_Beach_3_2018_comm, vars = "SPECIES_CD")
Palm_Beach_3_2018_comm_count$Year <- ('2018')
Palm_Beach_3_2018_comm_count$sitename <- ('Palm Beach 3')
Palm_Beach_3_2018_comm_count$Type <- "Commercial"


Palm_Beach_3_2018_total_count <- rbind(Palm_Beach_3_2018_herb_count, Palm_Beach_3_2018_comm_count)





Palm_Beach_3_all <- rbind(Palm_Beach_3_2013_total_count, Palm_Beach_3_2014_total_count, Palm_Beach_3_2015_total_count, Palm_Beach_3_2016_total_count,Palm_Beach_3_2018_total_count)


export(Palm_Beach_3_all, "SEF/Palm_Beach_3/data/Palm_Beach_3_count_herb_comm.csv")



Palm_Beach_4_2013 <- import("SEF/Palm_Beach_4/data/Palm_Beach_4_2013.xls")


Palm_Beach_4_2013_herb <- merge(Palm_Beach_4_2013, Herb, by = c("SPECIES_CD"))
Palm_Beach_4_2013_herb_count <- count(Palm_Beach_4_2013_herb, vars = "SPECIES_CD")
Palm_Beach_4_2013_herb_count$Year <- ('2013')
Palm_Beach_4_2013_herb_count$sitename <- ('Palm Beach 4')
Palm_Beach_4_2013_herb_count$Type <- "Herbivorous"

Palm_Beach_4_2013_comm <- merge(Palm_Beach_4_2013, Comm, by = c("SPECIES_CD"))
Palm_Beach_4_2013_comm_count <- count(Palm_Beach_4_2013_comm, vars = "SPECIES_CD")
Palm_Beach_4_2013_comm_count$Year <- ('2013')
Palm_Beach_4_2013_comm_count$sitename <- ('Palm Beach 4')
Palm_Beach_4_2013_comm_count$Type <- "Commercial"


Palm_Beach_4_2013_total_count <- rbind(Palm_Beach_4_2013_herb_count, Palm_Beach_4_2013_comm_count)



Palm_Beach_4_2014 <- import("SEF/Palm_Beach_4/data/Palm_Beach_4_2014.xls")


Palm_Beach_4_2014_herb <- merge(Palm_Beach_4_2014, Herb, by = c("SPECIES_CD"))
Palm_Beach_4_2014_herb_count <- count(Palm_Beach_4_2014_herb, vars = "SPECIES_CD")
Palm_Beach_4_2014_herb_count$Year <- ('2014')
Palm_Beach_4_2014_herb_count$sitename <- ('Palm Beach 4')
Palm_Beach_4_2014_herb_count$Type <- "Herbivorous"

Palm_Beach_4_2014_comm <- merge(Palm_Beach_4_2014, Comm, by = c("SPECIES_CD"))
Palm_Beach_4_2014_comm_count <- count(Palm_Beach_4_2014_comm, vars = "SPECIES_CD")
Palm_Beach_4_2014_comm_count$Year <- ('2014')
Palm_Beach_4_2014_comm_count$sitename <- ('Palm Beach 4')
Palm_Beach_4_2014_comm_count$Type <- "Commercial"


Palm_Beach_4_2014_total_count <- rbind(Palm_Beach_4_2014_herb_count, Palm_Beach_4_2014_comm_count)


Palm_Beach_4_2015 <- import("SEF/Palm_Beach_4/data/Palm_Beach_4_2015.xls")


Palm_Beach_4_2015_herb <- merge(Palm_Beach_4_2015, Herb, by = c("SPECIES_CD"))
Palm_Beach_4_2015_herb_count <- count(Palm_Beach_4_2015_herb, vars = "SPECIES_CD")
Palm_Beach_4_2015_herb_count$Year <- ('2015')
Palm_Beach_4_2015_herb_count$sitename <- ('Palm Beach 4')
Palm_Beach_4_2015_herb_count$Type <- "Herbivorous"

Palm_Beach_4_2015_comm <- merge(Palm_Beach_4_2015, Comm, by = c("SPECIES_CD"))
Palm_Beach_4_2015_comm_count <- count(Palm_Beach_4_2015_comm, vars = "SPECIES_CD")
Palm_Beach_4_2015_comm_count$Year <- ('2015')
Palm_Beach_4_2015_comm_count$sitename <- ('Palm Beach 4')
Palm_Beach_4_2015_comm_count$Type <- "Commercial"


Palm_Beach_4_2015_total_count <- rbind(Palm_Beach_4_2015_herb_count, Palm_Beach_4_2015_comm_count)




Palm_Beach_4_2016 <- import("SEF/Palm_Beach_4/data/Palm_Beach_4_2016.xls")


Palm_Beach_4_2016_herb <- merge(Palm_Beach_4_2016, Herb, by = c("SPECIES_CD"))
Palm_Beach_4_2016_herb_count <- count(Palm_Beach_4_2016_herb, vars = "SPECIES_CD")
Palm_Beach_4_2016_herb_count$Year <- ('2016')
Palm_Beach_4_2016_herb_count$sitename <- ('Palm Beach 4')
Palm_Beach_4_2016_herb_count$Type <- "Herbivorous"

Palm_Beach_4_2016_comm <- merge(Palm_Beach_4_2016, Comm, by = c("SPECIES_CD"))
Palm_Beach_4_2016_comm_count <- count(Palm_Beach_4_2016_comm, vars = "SPECIES_CD")
Palm_Beach_4_2016_comm_count$Year <- ('2016')
Palm_Beach_4_2016_comm_count$sitename <- ('Palm Beach 4')
Palm_Beach_4_2016_comm_count$Type <- "Commercial"


Palm_Beach_4_2016_total_count <- rbind(Palm_Beach_4_2016_herb_count, Palm_Beach_4_2016_comm_count)



Palm_Beach_4_2018 <- import("SEF/Palm_Beach_4/data/Palm_Beach_4_2018.xls")


Palm_Beach_4_2018_herb <- merge(Palm_Beach_4_2018, Herb, by = c("SPECIES_CD"))
Palm_Beach_4_2018_herb_count <- count(Palm_Beach_4_2018_herb, vars = "SPECIES_CD")
Palm_Beach_4_2018_herb_count$Year <- ('2018')
Palm_Beach_4_2018_herb_count$sitename <- ('Palm Beach 4')
Palm_Beach_4_2018_herb_count$Type <- "Herbivorous"

Palm_Beach_4_2018_comm <- merge(Palm_Beach_4_2018, Comm, by = c("SPECIES_CD"))
Palm_Beach_4_2018_comm_count <- count(Palm_Beach_4_2018_comm, vars = "SPECIES_CD")
Palm_Beach_4_2018_comm_count$Year <- ('2018')
Palm_Beach_4_2018_comm_count$sitename <- ('Palm Beach 4')
Palm_Beach_4_2018_comm_count$Type <- "Commercial"


Palm_Beach_4_2018_total_count <- rbind(Palm_Beach_4_2018_herb_count, Palm_Beach_4_2018_comm_count)





Palm_Beach_4_all <- rbind(Palm_Beach_4_2013_total_count, Palm_Beach_4_2014_total_count, Palm_Beach_4_2015_total_count, Palm_Beach_4_2016_total_count,Palm_Beach_4_2018_total_count)


export(Palm_Beach_4_all, "SEF/Palm_Beach_4/data/Palm_Beach_4_count_herb_comm.csv")



Palm_Beach_5_2013 <- import("SEF/Palm_Beach_5/data/Palm_Beach_5_2013.xls")


Palm_Beach_5_2013_herb <- merge(Palm_Beach_5_2013, Herb, by = c("SPECIES_CD"))
Palm_Beach_5_2013_herb_count <- count(Palm_Beach_5_2013_herb, vars = "SPECIES_CD")
Palm_Beach_5_2013_herb_count$Year <- ('2013')
Palm_Beach_5_2013_herb_count$sitename <- ('Palm Beach 5')
Palm_Beach_5_2013_herb_count$Type <- "Herbivorous"

Palm_Beach_5_2013_comm <- merge(Palm_Beach_5_2013, Comm, by = c("SPECIES_CD"))
Palm_Beach_5_2013_comm_count <- count(Palm_Beach_5_2013_comm, vars = "SPECIES_CD")
Palm_Beach_5_2013_comm_count$Year <- ('2013')
Palm_Beach_5_2013_comm_count$sitename <- ('Palm Beach 5')
Palm_Beach_5_2013_comm_count$Type <- "Commercial"


Palm_Beach_5_2013_total_count <- rbind(Palm_Beach_5_2013_herb_count, Palm_Beach_5_2013_comm_count)



Palm_Beach_5_2014 <- import("SEF/Palm_Beach_5/data/Palm_Beach_5_2014.xls")


Palm_Beach_5_2014_herb <- merge(Palm_Beach_5_2014, Herb, by = c("SPECIES_CD"))
Palm_Beach_5_2014_herb_count <- count(Palm_Beach_5_2014_herb, vars = "SPECIES_CD")
Palm_Beach_5_2014_herb_count$Year <- ('2014')
Palm_Beach_5_2014_herb_count$sitename <- ('Palm Beach 5')
Palm_Beach_5_2014_herb_count$Type <- "Herbivorous"

Palm_Beach_5_2014_comm <- merge(Palm_Beach_5_2014, Comm, by = c("SPECIES_CD"))
Palm_Beach_5_2014_comm_count <- count(Palm_Beach_5_2014_comm, vars = "SPECIES_CD")
Palm_Beach_5_2014_comm_count$Year <- ('2014')
Palm_Beach_5_2014_comm_count$sitename <- ('Palm Beach 5')
Palm_Beach_5_2014_comm_count$Type <- "Commercial"


Palm_Beach_5_2014_total_count <- rbind(Palm_Beach_5_2014_herb_count, Palm_Beach_5_2014_comm_count)


Palm_Beach_5_2015 <- import("SEF/Palm_Beach_5/data/Palm_Beach_5_2015.xls")


Palm_Beach_5_2015_herb <- merge(Palm_Beach_5_2015, Herb, by = c("SPECIES_CD"))
Palm_Beach_5_2015_herb_count <- count(Palm_Beach_5_2015_herb, vars = "SPECIES_CD")
Palm_Beach_5_2015_herb_count$Year <- ('2015')
Palm_Beach_5_2015_herb_count$sitename <- ('Palm Beach 5')
Palm_Beach_5_2015_herb_count$Type <- "Herbivorous"

Palm_Beach_5_2015_comm <- merge(Palm_Beach_5_2015, Comm, by = c("SPECIES_CD"))
Palm_Beach_5_2015_comm_count <- count(Palm_Beach_5_2015_comm, vars = "SPECIES_CD")
Palm_Beach_5_2015_comm_count$Year <- ('2015')
Palm_Beach_5_2015_comm_count$sitename <- ('Palm Beach 5')
Palm_Beach_5_2015_comm_count$Type <- "Commercial"


Palm_Beach_5_2015_total_count <- rbind(Palm_Beach_5_2015_herb_count, Palm_Beach_5_2015_comm_count)




Palm_Beach_5_2016 <- import("SEF/Palm_Beach_5/data/Palm_Beach_5_2016.xls")


Palm_Beach_5_2016_herb <- merge(Palm_Beach_5_2016, Herb, by = c("SPECIES_CD"))
Palm_Beach_5_2016_herb_count <- count(Palm_Beach_5_2016_herb, vars = "SPECIES_CD")
Palm_Beach_5_2016_herb_count$Year <- ('2016')
Palm_Beach_5_2016_herb_count$sitename <- ('Palm Beach 5')
Palm_Beach_5_2016_herb_count$Type <- "Herbivorous"

Palm_Beach_5_2016_comm <- merge(Palm_Beach_5_2016, Comm, by = c("SPECIES_CD"))
Palm_Beach_5_2016_comm_count <- count(Palm_Beach_5_2016_comm, vars = "SPECIES_CD")
Palm_Beach_5_2016_comm_count$Year <- ('2016')
Palm_Beach_5_2016_comm_count$sitename <- ('Palm Beach 5')
Palm_Beach_5_2016_comm_count$Type <- "Commercial"


Palm_Beach_5_2016_total_count <- rbind(Palm_Beach_5_2016_herb_count, Palm_Beach_5_2016_comm_count)



Palm_Beach_5_2018 <- import("SEF/Palm_Beach_5/data/Palm_Beach_5_2018.xls")


Palm_Beach_5_2018_herb <- merge(Palm_Beach_5_2018, Herb, by = c("SPECIES_CD"))
Palm_Beach_5_2018_herb_count <- count(Palm_Beach_5_2018_herb, vars = "SPECIES_CD")
Palm_Beach_5_2018_herb_count$Year <- ('2018')
Palm_Beach_5_2018_herb_count$sitename <- ('Palm Beach 5')
Palm_Beach_5_2018_herb_count$Type <- "Herbivorous"

Palm_Beach_5_2018_comm <- merge(Palm_Beach_5_2018, Comm, by = c("SPECIES_CD"))
Palm_Beach_5_2018_comm_count <- count(Palm_Beach_5_2018_comm, vars = "SPECIES_CD")
Palm_Beach_5_2018_comm_count$Year <- ('2018')
Palm_Beach_5_2018_comm_count$sitename <- ('Palm Beach 5')
Palm_Beach_5_2018_comm_count$Type <- "Commercial"


Palm_Beach_5_2018_total_count <- rbind(Palm_Beach_5_2018_herb_count, Palm_Beach_5_2018_comm_count)





Palm_Beach_5_all <- rbind(Palm_Beach_5_2013_total_count, Palm_Beach_5_2014_total_count, Palm_Beach_5_2015_total_count, Palm_Beach_5_2016_total_count,Palm_Beach_5_2018_total_count)


export(Palm_Beach_5_all, "SEF/Palm_Beach_5/data/Palm_Beach_5_count_herb_comm.csv")




### Combine SEF


SEF_reef_count_combined <- rbind(Broward_County_1_all,Broward_County_2_all,Broward_County_3_all,Broward_County_4_all,Broward_County_5_all,Broward_County_6_all,Broward_County_A_all, Dade_County_1_all, Dade_County_2_all,Dade_County_3_all,Dade_County_4_all,Dade_County_5_all,Dade_County_6_all,Dade_County_7_all,Dade_County_8_all,Martin_County_1_all,Martin_County_2_all,Palm_Beach_1_all,Palm_Beach_2_all,Palm_Beach_3_all,Palm_Beach_4_all, Palm_Beach_5_all)
SEF_reef_count_combined$REGION <- ("SEF")
export(SEF_reef_count_combined, "SEF/SEF_fish_count.csv")


### Combine all 

All_regions_fish_count <- rbind(DT_reef_count_combined,LK_reef_count_combined,MK_reef_count_combined,UK_reef_count_combined,SEF_reef_count_combined)
export(All_regions_fish_count, "All_regions_fish_count.csv")