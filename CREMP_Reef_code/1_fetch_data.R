setwd("C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv")

library(knitr)
library(tidyverse)
library(rvc)
library(vegan)
library(dygraphs)
library(grDevices)
library(RColorBrewer)

```
#### Getting sample data to combine fish biomass to reefs (change region and name for each subregion)


###Southeast Florida 

RVC13_csv = "subregion_biomass/SE_F/RVC13.csv"
RVC13 = getSampleData (year = 2013, regions = "SEFCRI")
write_csv (RVC13,"subregion_biomass/SE_F/RVC13.csv")

RVC14_csv = "subregion_biomass/SE_F/RVC14.csv"
RVC14 = getSampleData (year = 2014, regions = "SEFCRI")
write_csv (RVC14,"subregion_biomass/SE_F/RVC14.csv")

RVC15_csv = "subregion_biomass/SE_F/RVC15.csv"
RVC15 = getSampleData (year = 2015, regions = "SEFCRI")
write_csv (RVC15,"subregion_biomass/SE_F/RVC15.csv")

RVC16_csv = "subregion_biomass/SE_F/RVC16.csv"
RVC16 = getSampleData (year = 2016, regions = "SEFCRI")
write_csv (RVC16,"subregion_biomass/SE_F/RVC16.csv")

RVC18_csv = "subregion_biomass/SE_F/RVC18.csv"
RVC18 = getSampleData (year = 2018, regions = "SEFCRI")
write_csv (RVC18,"subregion_biomass/SE_F/RVC18.csv")



#### FK and DT 
RVC99_csv = "subregion_biomass/FK/RVC99.csv"
RVC99 = getSampleData (year = 1999, regions = "FLA KEYS")
write_csv (RVC99,"subregion_biomass/FK/RVC99.csv")

RVC00_csv = "subregion_biomass/FK/RVC00.csv"
RVC00 = getSampleData (year = 2000, regions = "FLA KEYS")
write_csv (RVC00,"subregion_biomass/FK/RVC00.csv")

RVC01_csv = "subregion_biomass/FK/RVC01.csv"
RVC01 = getSampleData (year = 2001, regions = "FLA KEYS")
write_csv (RVC01,"subregion_biomass/FK/RVC01.csv")

RVC02_csv = "subregion_biomass/FK/RVC02.csv"
RVC02 = getSampleData (year = 2002, regions = "FLA KEYS")
write_csv (RVC02,"subregion_biomass/FK/RVC02.csv")

RVC03_csv = "subregion_biomass/FK/RVC03.csv"
RVC03 = getSampleData (year = 2003, regions = "FLA KEYS")
write_csv (RVC03,"subregion_biomass/FK/RVC03.csv")

RVC04_csv = "subregion_biomass/FK/RVC04.csv"
RVC04 = getSampleData (year = 2004, regions = "FLA KEYS")
write_csv (RVC04,"subregion_biomass/FK/RVC04.csv")

RVC05_csv = "subregion_biomass/FK/RVC05.csv"
RVC05 = getSampleData (year = 2005, regions = "FLA KEYS")
write_csv (RVC05,"subregion_biomass/FK/RVC05.csv")

RVC06_csv = "subregion_biomass/FK/RVC06.csv"
RVC06 = getSampleData (year = 2006, regions = "FLA KEYS")
write_csv (RVC06,"subregion_biomass/FK/RVC06.csv")

RVC07_csv = "subregion_biomass/FK/RVC07.csv"
RVC07 = getSampleData (year = 2007, regions = "FLA KEYS")
write_csv (RVC07,"subregion_biomass/FK/RVC07.csv")

RVC08_csv = "subregion_biomass/RVC08.csv"
RVC08 = getSampleData (year = 2008, regions = "FLA KEYS")
write_csv (RVC08,"subregion_biomass/FK/RVC08.csv")

RVC09_csv = "subregion_biomass/FK/RVC09.csv"
RVC09 = getSampleData (year = 2009, regions = "FLA KEYS")
write_csv (RVC09,"subregion_biomass/FK/RVC09.csv")

RVC10_csv = "subregion_biomass/FK/RVC10.csv"
RVC10 = getSampleData (year = 2010, regions = "FLA KEYS")
write_csv (RVC10,"subregion_biomass/FK/RVC10.csv")

RVC11_csv = "subregion_biomass/FK/RVC11.csv"
RVC11 = getSampleData (year = 2011, regions = "FLA KEYS")
write_csv (RVC11,"subregion_biomass/FK/RVC11.csv")

RVC12_csv = "subregion_biomass/RVC12.csv"
RVC12 = getSampleData (year = 2012, regions = "FLA KEYS")
write_csv (RVC12,"subregion_biomass/FK/RVC12.csv")

RVC14_csv = "subregion_biomass/FK/RVC14.csv"
RVC14 = getSampleData (year = 2014, regions = "FLA KEYS")
write_csv (RVC14,"subregion_biomass/FK/RVC14.csv")

RVC16_csv = "subregion_biomass/FK/RVC16.csv"
RVC16 = getSampleData (year = 2016, regions = "FLA KEYS")
write_csv (RVC16,"subregion_biomass/FK/RVC16.csv")

RVC18_csv = "subregion_biomass/RVC18.csv"
RVC18 = getSampleData (year = 2018, regions = "DRY TORT")
write_csv (RVC18,"subregion_biomass/DT/RVC18.csv")

### Change the data to lat, lon, fish, and length for each year

setwd("C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/SE_F")

head(RVC99)

RVC99$DEPTH <- NULL
RVC99$REGION <- NULL
RVC99$UNDERWATER_VISIBILITY <- NULL
RVC99$MONTH <- NULL
RVC99$DAY <- NULL
RVC99$STATION <- NULL
RVC99$SUBREGION_NR <- NULL
RVC99$ZONE_NR <- NULL
RVC99$MAPGRID_NR <- NULL
RVC99$STATION_NR <- NULL
RVC99$SPECIES_NR <- NULL
RVC99$PRIMARY_SAMPLE_UNIT <- NULL
RVC99$HABITAT_CD <- NULL
RVC99$MPA_NR <- NULL
RVC99$TIME_SEEN <- NULL
RVC99$PROT <- NULL
RVC99$STRAT <- NULL
RVC99$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC99[RVC99 == 0] <- NA
RVC99[RVC99 == -9] <- NA
RVC99 <- RVC99[complete.cases(RVC99),]

###Output csv
RVC99_lat_lon = "filtered/RVC99_lat_lon.csv"
write_csv (RVC99,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/FK/filtered/RVC99_lat_lon.csv" )


RVC00$DEPTH <- NULL
RVC00$REGION <- NULL
RVC00$UNDERWATER_VISIBILITY <- NULL
RVC00$MONTH <- NULL
RVC00$DAY <- NULL
RVC00$STATION <- NULL
RVC00$SUBREGION_NR <- NULL
RVC00$ZONE_NR <- NULL
RVC00$MAPGRID_NR <- NULL
RVC00$STATION_NR <- NULL
RVC00$SPECIES_NR <- NULL
RVC00$PRIMARY_SAMPLE_UNIT <- NULL
RVC00$HABITAT_CD <- NULL
RVC00$MPA_NR <- NULL
RVC00$TIME_SEEN <- NULL
RVC00$PROT <- NULL
RVC00$STRAT <- NULL
RVC00$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC00[RVC00 == 0] <- NA
RVC00[RVC00 == -9] <- NA
RVC00 <- RVC00[complete.cases(RVC00),]

###Output csv
RVC00_lat_lon = "filtered/RVC00_lat_lon.csv"
write_csv (RVC00,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/FK/filtered/RVC00_lat_lon.csv" )



RVC01$DEPTH <- NULL
RVC01$REGION <- NULL
RVC01$UNDERWATER_VISIBILITY <- NULL
RVC01$MONTH <- NULL
RVC01$DAY <- NULL
RVC01$STATION <- NULL
RVC01$SUBREGION_NR <- NULL
RVC01$ZONE_NR <- NULL
RVC01$MAPGRID_NR <- NULL
RVC01$STATION_NR <- NULL
RVC01$SPECIES_NR <- NULL
RVC01$PRIMARY_SAMPLE_UNIT <- NULL
RVC01$HABITAT_CD <- NULL
RVC01$MPA_NR <- NULL
RVC01$TIME_SEEN <- NULL
RVC01$PROT <- NULL
RVC01$STRAT <- NULL
RVC01$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC01[RVC01 == 0] <- NA
RVC01[RVC01 == -9] <- NA
RVC01 <- RVC01[complete.cases(RVC01),]

###Output csv
RVC01_lat_lon = "filtered/RVC01_lat_lon.csv"
write_csv (RVC01,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/FK/filtered/RVC01_lat_lon.csv" )


RVC02$DEPTH <- NULL
RVC02$REGION <- NULL
RVC02$UNDERWATER_VISIBILITY <- NULL
RVC02$MONTH <- NULL
RVC02$DAY <- NULL
RVC02$STATION <- NULL
RVC02$SUBREGION_NR <- NULL
RVC02$ZONE_NR <- NULL
RVC02$MAPGRID_NR <- NULL
RVC02$STATION_NR <- NULL
RVC02$SPECIES_NR <- NULL
RVC02$PRIMARY_SAMPLE_UNIT <- NULL
RVC02$HABITAT_CD <- NULL
RVC02$MPA_NR <- NULL
RVC02$TIME_SEEN <- NULL
RVC02$PROT <- NULL
RVC02$STRAT <- NULL
RVC02$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC02[RVC02 == 0] <- NA
RVC02[RVC02 == -9] <- NA
RVC02 <- RVC02[complete.cases(RVC02),]

###Output csv
RVC02_lat_lon = "filtered/RVC02_lat_lon.csv"
write_csv (RVC02,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/FK/filtered/RVC02_lat_lon.csv" )



RVC03$DEPTH <- NULL
RVC03$REGION <- NULL
RVC03$UNDERWATER_VISIBILITY <- NULL
RVC03$MONTH <- NULL
RVC03$DAY <- NULL
RVC03$STATION <- NULL
RVC03$SUBREGION_NR <- NULL
RVC03$ZONE_NR <- NULL
RVC03$MAPGRID_NR <- NULL
RVC03$STATION_NR <- NULL
RVC03$SPECIES_NR <- NULL
RVC03$PRIMARY_SAMPLE_UNIT <- NULL
RVC03$HABITAT_CD <- NULL
RVC03$MPA_NR <- NULL
RVC03$TIME_SEEN <- NULL
RVC03$PROT <- NULL
RVC03$STRAT <- NULL
RVC03$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC03[RVC03 == 0] <- NA
RVC03[RVC03 == -9] <- NA
RVC03 <- RVC03[complete.cases(RVC03),]

###Output csv
RVC03_lat_lon = "filtered/RVC03_lat_lon.csv"
write_csv (RVC03,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/FK/filtered/RVC03_lat_lon.csv" )



RVC04$DEPTH <- NULL
RVC04$REGION <- NULL
RVC04$UNDERWATER_VISIBILITY <- NULL
RVC04$MONTH <- NULL
RVC04$DAY <- NULL
RVC04$STATION <- NULL
RVC04$SUBREGION_NR <- NULL
RVC04$ZONE_NR <- NULL
RVC04$MAPGRID_NR <- NULL
RVC04$STATION_NR <- NULL
RVC04$SPECIES_NR <- NULL
RVC04$PRIMARY_SAMPLE_UNIT <- NULL
RVC04$HABITAT_CD <- NULL
RVC04$MPA_NR <- NULL
RVC04$TIME_SEEN <- NULL
RVC04$PROT <- NULL
RVC04$STRAT <- NULL
RVC04$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC04[RVC04 == 0] <- NA
RVC04[RVC04 == -9] <- NA
RVC04 <- RVC04[complete.cases(RVC04),]

###Output csv
RVC04_lat_lon = "filtered/RVC04_lat_lon.csv"
write_csv (RVC04,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/FK/filtered/RVC04_lat_lon.csv" )



RVC05$DEPTH <- NULL
RVC05$REGION <- NULL
RVC05$UNDERWATER_VISIBILITY <- NULL
RVC05$MONTH <- NULL
RVC05$DAY <- NULL
RVC05$STATION <- NULL
RVC05$SUBREGION_NR <- NULL
RVC05$ZONE_NR <- NULL
RVC05$MAPGRID_NR <- NULL
RVC05$STATION_NR <- NULL
RVC05$SPECIES_NR <- NULL
RVC05$PRIMARY_SAMPLE_UNIT <- NULL
RVC05$HABITAT_CD <- NULL
RVC05$MPA_NR <- NULL
RVC05$TIME_SEEN <- NULL
RVC05$PROT <- NULL
RVC05$STRAT <- NULL
RVC05$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC05[RVC05 == 0] <- NA
RVC05[RVC05 == -9] <- NA
RVC05 <- RVC05[complete.cases(RVC05),]

###Output csv
RVC05_lat_lon = "filtered/RVC05_lat_lon.csv"
write_csv (RVC05,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/FK/filtered/RVC05_lat_lon.csv" )



RVC06$DEPTH <- NULL
RVC06$REGION <- NULL
RVC06$UNDERWATER_VISIBILITY <- NULL
RVC06$MONTH <- NULL
RVC06$DAY <- NULL
RVC06$STATION <- NULL
RVC06$SUBREGION_NR <- NULL
RVC06$ZONE_NR <- NULL
RVC06$MAPGRID_NR <- NULL
RVC06$STATION_NR <- NULL
RVC06$SPECIES_NR <- NULL
RVC06$PRIMARY_SAMPLE_UNIT <- NULL
RVC06$HABITAT_CD <- NULL
RVC06$MPA_NR <- NULL
RVC06$TIME_SEEN <- NULL
RVC06$PROT <- NULL
RVC06$STRAT <- NULL
RVC06$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC06[RVC06 == 0] <- NA
RVC06[RVC06 == -9] <- NA
RVC06 <- RVC06[complete.cases(RVC06),]

###Output csv
RVC06_lat_lon = "filtered/RVC06_lat_lon.csv"
write_csv (RVC06,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/FK/filtered/RVC06_lat_lon.csv" )



RVC07$DEPTH <- NULL
RVC07$REGION <- NULL
RVC07$UNDERWATER_VISIBILITY <- NULL
RVC07$MONTH <- NULL
RVC07$DAY <- NULL
RVC07$STATION <- NULL
RVC07$SUBREGION_NR <- NULL
RVC07$ZONE_NR <- NULL
RVC07$MAPGRID_NR <- NULL
RVC07$STATION_NR <- NULL
RVC07$SPECIES_NR <- NULL
RVC07$PRIMARY_SAMPLE_UNIT <- NULL
RVC07$HABITAT_CD <- NULL
RVC07$MPA_NR <- NULL
RVC07$TIME_SEEN <- NULL
RVC07$PROT <- NULL
RVC07$STRAT <- NULL
RVC07$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC07[RVC07 == 0] <- NA
RVC07[RVC07 == -9] <- NA
RVC07 <- RVC07[complete.cases(RVC07),]

###Output csv
RVC07_lat_lon = "filtered/RVC07_lat_lon.csv"
write_csv (RVC07,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/FK/filtered/RVC07_lat_lon.csv" )



RVC08$DEPTH <- NULL
RVC08$REGION <- NULL
RVC08$UNDERWATER_VISIBILITY <- NULL
RVC08$MONTH <- NULL
RVC08$DAY <- NULL
RVC08$STATION <- NULL
RVC08$SUBREGION_NR <- NULL
RVC08$ZONE_NR <- NULL
RVC08$MAPGRID_NR <- NULL
RVC08$STATION_NR <- NULL
RVC08$SPECIES_NR <- NULL
RVC08$PRIMARY_SAMPLE_UNIT <- NULL
RVC08$HABITAT_CD <- NULL
RVC08$MPA_NR <- NULL
RVC08$TIME_SEEN <- NULL
RVC08$PROT <- NULL
RVC08$STRAT <- NULL
RVC08$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC08[RVC08 == 0] <- NA
RVC08[RVC08 == -9] <- NA
RVC08 <- RVC08[complete.cases(RVC08),]

###Output csv
RVC08_lat_lon = "filtered/RVC08_lat_lon.csv"
write_csv (RVC08,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/FK/filtered/RVC08_lat_lon.csv" )



RVC09$DEPTH <- NULL
RVC09$REGION <- NULL
RVC09$UNDERWATER_VISIBILITY <- NULL
RVC09$MONTH <- NULL
RVC09$DAY <- NULL
RVC09$STATION <- NULL
RVC09$SUBREGION_NR <- NULL
RVC09$ZONE_NR <- NULL
RVC09$MAPGRID_NR <- NULL
RVC09$STATION_NR <- NULL
RVC09$SPECIES_NR <- NULL
RVC09$PRIMARY_SAMPLE_UNIT <- NULL
RVC09$HABITAT_CD <- NULL
RVC09$MPA_NR <- NULL
RVC09$TIME_SEEN <- NULL
RVC09$PROT <- NULL
RVC09$STRAT <- NULL
RVC09$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC09[RVC09 == 0] <- NA
RVC09[RVC09 == -9] <- NA
RVC09 <- RVC09[complete.cases(RVC09),]

###Output csv
RVC09_lat_lon = "filtered/RVC09_lat_lon.csv"
write_csv (RVC09,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/FK/filtered/RVC09_lat_lon.csv" )



RVC10$DEPTH <- NULL
RVC10$REGION <- NULL
RVC10$UNDERWATER_VISIBILITY <- NULL
RVC10$MONTH <- NULL
RVC10$DAY <- NULL
RVC10$STATION <- NULL
RVC10$SUBREGION_NR <- NULL
RVC10$ZONE_NR <- NULL
RVC10$MAPGRID_NR <- NULL
RVC10$STATION_NR <- NULL
RVC10$SPECIES_NR <- NULL
RVC10$PRIMARY_SAMPLE_UNIT <- NULL
RVC10$HABITAT_CD <- NULL
RVC10$MPA_NR <- NULL
RVC10$TIME_SEEN <- NULL
RVC10$PROT <- NULL
RVC10$STRAT <- NULL
RVC10$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC10[RVC10 == 0] <- NA
RVC10[RVC10 == -9] <- NA
RVC10 <- RVC10[complete.cases(RVC10),]

###Output csv
RVC10_lat_lon = "filtered/RVC10_lat_lon.csv"
write_csv (RVC10,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/FK/filtered/RVC10_lat_lon.csv" )



RVC11$DEPTH <- NULL
RVC11$REGION <- NULL
RVC11$UNDERWATER_VISIBILITY <- NULL
RVC11$MONTH <- NULL
RVC11$DAY <- NULL
RVC11$STATION <- NULL
RVC11$SUBREGION_NR <- NULL
RVC11$ZONE_NR <- NULL
RVC11$MAPGRID_NR <- NULL
RVC11$STATION_NR <- NULL
RVC11$SPECIES_NR <- NULL
RVC11$PRIMARY_SAMPLE_UNIT <- NULL
RVC11$HABITAT_CD <- NULL
RVC11$MPA_NR <- NULL
RVC11$TIME_SEEN <- NULL
RVC11$PROT <- NULL
RVC11$STRAT <- NULL
RVC11$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC11[RVC11 == 0] <- NA
RVC11[RVC11 == -9] <- NA
RVC11 <- RVC11[complete.cases(RVC11),]

###Output csv
RVC11_lat_lon = "filtered/RVC11_lat_lon.csv"
write_csv (RVC11,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/FK/filtered/RVC11_lat_lon.csv" )



RVC12$DEPTH <- NULL
RVC12$REGION <- NULL
RVC12$UNDERWATER_VISIBILITY <- NULL
RVC12$MONTH <- NULL
RVC12$DAY <- NULL
RVC12$STATION <- NULL
RVC12$SUBREGION_NR <- NULL
RVC12$ZONE_NR <- NULL
RVC12$MAPGRID_NR <- NULL
RVC12$STATION_NR <- NULL
RVC12$SPECIES_NR <- NULL
RVC12$PRIMARY_SAMPLE_UNIT <- NULL
RVC12$HABITAT_CD <- NULL
RVC12$MPA_NR <- NULL
RVC12$TIME_SEEN <- NULL
RVC12$PROT <- NULL
RVC12$STRAT <- NULL
RVC12$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC12[RVC12 == 0] <- NA
RVC12[RVC12 == -9] <- NA
RVC12 <- RVC12[complete.cases(RVC12),]

###Output csv
RVC12_lat_lon = "filtered/RVC12_lat_lon.csv"
write_csv (RVC12,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/FK/filtered/RVC12_lat_lon.csv" )


### WATCH PATH !!!!!!!!

RVC13$DEPTH <- NULL
RVC13$REGION <- NULL
RVC13$UNDERWATER_VISIBILITY <- NULL
RVC13$MONTH <- NULL
RVC13$DAY <- NULL
RVC13$STATION <- NULL
RVC13$SUBREGION_NR <- NULL
RVC13$ZONE_NR <- NULL
RVC13$MAPGRID_NR <- NULL
RVC13$STATION_NR <- NULL
RVC13$SPECIES_NR <- NULL
RVC13$PRIMARY_SAMPLE_UNIT <- NULL
RVC13$HABITAT_CD <- NULL
RVC13$MPA_NR <- NULL
RVC13$TIME_SEEN <- NULL
RVC13$PROT <- NULL
RVC13$STRAT <- NULL
RVC13$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC13[RVC13 == 0] <- NA
RVC13[RVC13 == -9] <- NA
RVC13 <- RVC13[complete.cases(RVC13),]

###Output csv
RVC13_lat_lon = "filtered/RVC13_lat_lon.csv"
write_csv (RVC13,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/SE_F/filtered/RVC13_lat_lon.csv" )


RVC14$DEPTH <- NULL
RVC14$REGION <- NULL
RVC14$UNDERWATER_VISIBILITY <- NULL
RVC14$MONTH <- NULL
RVC14$DAY <- NULL
RVC14$STATION <- NULL
RVC14$SUBREGION_NR <- NULL
RVC14$ZONE_NR <- NULL
RVC14$MAPGRID_NR <- NULL
RVC14$STATION_NR <- NULL
RVC14$SPECIES_NR <- NULL
RVC14$PRIMARY_SAMPLE_UNIT <- NULL
RVC14$HABITAT_CD <- NULL
RVC14$MPA_NR <- NULL
RVC14$TIME_SEEN <- NULL
RVC14$PROT <- NULL
RVC14$STRAT <- NULL
RVC14$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC14[RVC14 == 0] <- NA
RVC14[RVC14 == -9] <- NA
RVC14 <- RVC14[complete.cases(RVC14),]

###Output csv
RVC14_lat_lon = "filtered/RVC14_lat_lon.csv"
write_csv (RVC14,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/SE_F/filtered/RVC14_lat_lon.csv" )


RVC15$DEPTH <- NULL
RVC15$REGION <- NULL
RVC15$UNDERWATER_VISIBILITY <- NULL
RVC15$MONTH <- NULL
RVC15$DAY <- NULL
RVC15$STATION <- NULL
RVC15$SUBREGION_NR <- NULL
RVC15$ZONE_NR <- NULL
RVC15$MAPGRID_NR <- NULL
RVC15$STATION_NR <- NULL
RVC15$SPECIES_NR <- NULL
RVC15$PRIMARY_SAMPLE_UNIT <- NULL
RVC15$HABITAT_CD <- NULL
RVC15$MPA_NR <- NULL
RVC15$TIME_SEEN <- NULL
RVC15$PROT <- NULL
RVC15$STRAT <- NULL
RVC15$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC15[RVC15 == 0] <- NA
RVC15[RVC15 == -9] <- NA
RVC15 <- RVC15[complete.cases(RVC15),]

###Output csv
RVC15_lat_lon = "filtered/RVC15_lat_lon.csv"
write_csv (RVC15,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/SE_F/filtered/RVC15_lat_lon.csv" )


RVC16$DEPTH <- NULL
RVC16$REGION <- NULL
RVC16$UNDERWATER_VISIBILITY <- NULL
RVC16$MONTH <- NULL
RVC16$DAY <- NULL
RVC16$STATION <- NULL
RVC16$SUBREGION_NR <- NULL
RVC16$ZONE_NR <- NULL
RVC16$MAPGRID_NR <- NULL
RVC16$STATION_NR <- NULL
RVC16$SPECIES_NR <- NULL
RVC16$PRIMARY_SAMPLE_UNIT <- NULL
RVC16$HABITAT_CD <- NULL
RVC16$MPA_NR <- NULL
RVC16$TIME_SEEN <- NULL
RVC16$PROT <- NULL
RVC16$STRAT <- NULL
RVC16$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC16[RVC16 == 0] <- NA
RVC16[RVC16 == -9] <- NA
RVC16 <- RVC16[complete.cases(RVC16),]

###Output csv
RVC16_lat_lon = "filtered/RVC16_lat_lon.csv"
write_csv (RVC16,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/SE_F/filtered/RVC16_lat_lon.csv" )



RVC18$DEPTH <- NULL
RVC18$REGION <- NULL
RVC18$UNDERWATER_VISIBILITY <- NULL
RVC18$MONTH <- NULL
RVC18$DAY <- NULL
RVC18$STATION <- NULL
RVC18$SUBREGION_NR <- NULL
RVC18$ZONE_NR <- NULL
RVC18$MAPGRID_NR <- NULL
RVC18$STATION_NR <- NULL
RVC18$SPECIES_NR <- NULL
RVC18$PRIMARY_SAMPLE_UNIT <- NULL
RVC18$HABITAT_CD <- NULL
RVC18$MPA_NR <- NULL
RVC18$TIME_SEEN <- NULL
RVC18$PROT <- NULL
RVC18$STRAT <- NULL
RVC18$NUM <- NULL

### Take out zeros and -9s (biomass focus not abundance rn)
RVC18[RVC18 == 0] <- NA
RVC18[RVC18 == -9] <- NA
RVC18 <- RVC18[complete.cases(RVC18),]

###Output csv
RVC18_lat_lon = "filtered/RVC18_lat_lon.csv"
write_csv (RVC18,"C:/Users/cara.estes/Documents/R/RVC_feb_rerun/big_csv/subregion_biomass/DT/filtered/RVC18_lat_lon.csv" )



