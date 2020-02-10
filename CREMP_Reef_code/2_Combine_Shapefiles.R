setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/UK")

library(rio)
library("magrittr")

### Adding subregion and changing to csv after cut by shapefiles in arcgis(change UK,MK,LK for code to work)

RVC_00 <- import("RVC_00_UK.xls")
export(RVC_00,"RVC_00_UK_file.csv")
RVC_00_UK <- import("RVC_00_UK_file.csv")
RVC_00_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_00_UK))
export(RVC_00_UK,"RVC_00_UK_analyze.csv")

RVC_01 <- import("RVC_01_UK.xls")
export(RVC_01,"RVC_01_UK_file.csv")
RVC_01_UK <- import("RVC_01_UK_file.csv")
RVC_01_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_01_UK))
export(RVC_01_UK,"RVC_01_UK_analyze.csv")

RVC_02 <- import("RVC_02_UK.xls")
export(RVC_02,"RVC_02_UK_file.csv")
RVC_02_UK <- import("RVC_02_UK_file.csv")
RVC_02_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_02_UK))
export(RVC_02_UK,"RVC_02_UK_analyze.csv")

RVC_03 <- import("RVC_03_UK.xls")
export(RVC_03,"RVC_03_UK_file.csv")
RVC_03_UK <- import("RVC_03_UK_file.csv")
RVC_03_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_03_UK))
export(RVC_03_UK,"RVC_03_UK_analyze.csv")

RVC_04 <- import("RVC_04_UK.xls")
export(RVC_04,"RVC_04_UK_file.csv")
RVC_04_UK <- import("RVC_04_UK_file.csv")
RVC_04_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_04_UK))
export(RVC_04_UK,"RVC_04_UK_analyze.csv")

RVC_05 <- import("RVC_05_UK.xls")
export(RVC_05,"RVC_05_UK_file.csv")
RVC_05_UK <- import("RVC_05_UK_file.csv")
RVC_05_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_05_UK))
export(RVC_05_UK,"RVC_05_UK_analyze.csv")

RVC_06 <- import("RVC_06_UK.xls")
export(RVC_06,"RVC_06_UK_file.csv")
RVC_06_UK <- import("RVC_06_UK_file.csv")
RVC_06_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_06_UK))
export(RVC_06_UK,"RVC_06_UK_analyze.csv")

RVC_07 <- import("RVC_07_UK.xls")
export(RVC_07,"RVC_07_UK_file.csv")
RVC_07_UK <- import("RVC_07_UK_file.csv")
RVC_07_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_07_UK))
export(RVC_07_UK,"RVC_07_UK_analyze.csv")

RVC_08 <- import("RVC_08_UK.xls")
export(RVC_08,"RVC_08_UK_file.csv")
RVC_08_UK <- import("RVC_08_UK_file.csv")
RVC_08_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_08_UK))
export(RVC_08_UK,"RVC_08_UK_analyze.csv")

RVC_09 <- import("RVC_09_UK.xls")
export(RVC_09,"RVC_09_UK_file.csv")
RVC_09_UK <- import("RVC_09_UK_file.csv")
RVC_09_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_09_UK))
export(RVC_09_UK,"RVC_09_UK_analyze.csv")

RVC_10 <- import("RVC_10_UK.xls")
export(RVC_10,"RVC_10_UK_file.csv")
RVC_10_UK <- import("RVC_10_UK_file.csv")
RVC_10_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_10_UK))
export(RVC_10_UK,"RVC_10_UK_analyze.csv")

RVC_11 <- import("RVC_11_UK.xls")
export(RVC_11,"RVC_11_UK_file.csv")
RVC_11_UK <- import("RVC_11_UK_file.csv")
RVC_11_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_11_UK))
export(RVC_11_UK,"RVC_11_UK_analyze.csv")

RVC_12 <- import("RVC_12_UK.xls")
export(RVC_12,"RVC_12_UK_file.csv")
RVC_12_UK <- import("RVC_12_UK_file.csv")
RVC_12_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_12_UK))
export(RVC_12_UK,"RVC_12_UK_analyze.csv")

RVC_14 <- import("RVC_14_UK.xls")
export(RVC_14,"RVC_14_UK_file.csv")
RVC_14_UK <- import("RVC_14_UK_file.csv")
RVC_14_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_14_UK))
export(RVC_14_UK,"RVC_14_UK_analyze.csv")

RVC_16 <- import("RVC_16_UK.xls")
export(RVC_16,"RVC_16_UK_file.csv")
RVC_16_UK <- import("RVC_16_UK_file.csv")
RVC_16_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_16_UK))
export(RVC_16_UK,"RVC_16_UK_analyze.csv")

RVC_18 <- import("RVC_18_UK.xls")
export(RVC_18,"RVC_18_UK_file.csv")
RVC_18_UK <- import("RVC_18_UK_file.csv")
RVC_18_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_18_UK))
export(RVC_18_UK,"RVC_18_UK_analyze.csv")

RVC_99 <- import("RVC_99_UK.xls")
export(RVC_99,"RVC_99_UK_file.csv")
RVC_99_UK <- import("RVC_99_UK_file.csv")
RVC_99_UK$SUBREGION_DOMAIN <-rep('UK',nrow(RVC_99_UK))
export(RVC_99_UK,"RVC_99_UK_analyze.csv")

## Dry Tortugas (already in csv form)

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/DT")

RVC_99_DT <- import("RVC99_lat_lon.csv")
RVC_99_DT$SUBREGION_DOMAIN <-rep('DT',nrow(RVC_99_DT))
export(RVC_99_DT,"RVC_99_DT_analyze.csv")

RVC_16_DT <- import("RVC16_lat_lon.csv")
RVC_16_DT$SUBREGION_DOMAIN <-rep('DT',nrow(RVC_16_DT))
export(RVC_16_DT,"RVC_16_DT_analyze.csv")

RVC_14_DT <- import("RVC14_lat_lon.csv")
RVC_14_DT$SUBREGION_DOMAIN <-rep('DT',nrow(RVC_14_DT))
export(RVC_14_DT,"RVC_14_DT_analyze.csv")

RVC_12_DT <- import("RVC12_lat_lon.csv")
RVC_12_DT$SUBREGION_DOMAIN <-rep('DT',nrow(RVC_12_DT))
export(RVC_12_DT,"RVC_12_DT_analyze.csv")

RVC_10_DT <- import("RVC10_lat_lon.csv")
RVC_10_DT$SUBREGION_DOMAIN <-rep('DT',nrow(RVC_10_DT))
export(RVC_10_DT,"RVC_10_DT_analyze.csv")

RVC_08_DT <- import("RVC08_lat_lon.csv")
RVC_08_DT$SUBREGION_DOMAIN <-rep('DT',nrow(RVC_08_DT))
export(RVC_08_DT,"RVC_08_DT_analyze.csv")

RVC_06_DT <- import("RVC06_lat_lon.csv")
RVC_06_DT$SUBREGION_DOMAIN <-rep('DT',nrow(RVC_06_DT))
export(RVC_06_DT,"RVC_06_DT_analyze.csv")

RVC_04_DT <- import("RVC04_lat_lon.csv")
RVC_04_DT$SUBREGION_DOMAIN <-rep('DT',nrow(RVC_04_DT))
export(RVC_04_DT,"RVC_04_DT_analyze.csv")

RVC_00_DT <- import("RVC00_lat_lon.csv")
RVC_00_DT$SUBREGION_DOMAIN <-rep('DT',nrow(RVC_00_DT))
export(RVC_00_DT,"RVC_00_DT_analyze.csv")

### SE Florida (some in csv some not)
setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_regions_tables/SE_F")


RVC_18_SE_F <- import("RVC18_lat_lon_SE_F.csv")
RVC_18_SE_F$SUBREGION_DOMAIN <-rep('SE_F',nrow(RVC_18_SE_F))
export(RVC_18_SE_F,"RVC_18_SE_F_analyze.csv")

RVC_16_SE_F <- import("RVC16_lat_lon_SE_F.csv")
RVC_16_SE_F$SUBREGION_DOMAIN <-rep('SE_F',nrow(RVC_16_SE_F))
export(RVC_16_SE_F,"RVC_16_SE_F_analyze.csv")

RVC_15_SE_F <- import("RVC15_lat_lon_SE_F.csv")
RVC_15_SE_F$SUBREGION_DOMAIN <-rep('SE_F',nrow(RVC_15_SE_F))
RVC_15_SE_F$RUGOSITY_CD <- NULL
export(RVC_15_SE_F,"RVC_15_SE_F_analyze.csv")

RVC_14_SE_F <- import("RVC14_lat_lon_SE_F.csv")
RVC_14_SE_F$SUBREGION_DOMAIN <-rep('SE_F',nrow(RVC_14_SE_F))
export(RVC_14_SE_F,"RVC_14_SE_F_analyze.csv")

RVC_13_SE_F <- import("RVC13_lat_lon_SE_F.csv")
RVC_13_SE_F$SUBREGION_DOMAIN <-rep('SE_F',nrow(RVC_13_SE_F))
RVC_13_SE_F$RUGOSITY_CD <- NULL
export(RVC_13_SE_F,"RVC_13_SE_F_analyze.csv")




RVC_14_SEF_2 <- import("RVC_14_FK.xls")
export(RVC_14,"RVC_14_SE_F_FK_file.csv")
RVC_14_SE_F_FK <- import("RVC_14_SE_F_FK_file.csv")
RVC_14_SE_F_FK$SUBREGION_DOMAIN <-rep('SE_F',nrow(RVC_14_SE_F_FK))
export(RVC_14_SE_F_FK,"RVC_14_SE_F_FK_analyze.csv")

RVC_16_SEF2 <- import("RVC_16_FK.xls")
export(RVC_16,"RVC_16_SE_F_FK_file.csv")
RVC_16_SE_F_FK <- import("RVC_16_SE_F_FK_file.csv")
RVC_16_SE_F_FK$SUBREGION_DOMAIN <-rep('SE_F',nrow(RVC_16_SE_F_FK))
export(RVC_16_SE_F_FK,"RVC_16_SE_F_FK_analyze.csv")

RVC_18_SEF2 <- import("RVC_18_FK.xls")
export(RVC_18,"RVC_18_SE_F_FK_file.csv")
RVC_18_SE_F_FK <- import("RVC_18_SE_F_FK_file.csv")
RVC_18_SE_F_FK$SUBREGION_DOMAIN <-rep('SE_F',nrow(RVC_18_SE_F_FK))
export(RVC_18_SE_F_FK,"RVC_18_SE_F_FK_analyze.csv")

    ####combine SEF data with some FK data
      ### remove objectID  
RVC_18_no_object <- import('RVC_18_SE_F_FK_analyze.csv')
RVC_18_no_object$OBJECTID <- NULL

RVC_16_no_object <- import('RVC_16_SE_F_FK_analyze.csv')
RVC_16_no_object$OBJECTID <- NULL

RVC_14_no_object <- import('RVC_14_SE_F_FK_analyze.csv')
RVC_14_no_object$OBJECTID <- NULL

      ### get rid of rugosity for SEF data

RVC_18_SE_F_NO_RUG <- import('RVC_18_SE_F_analyze.csv')
RVC_18_SE_F_NO_RUG$RUGOSITY_CD <- NULL

RVC_16_SE_F_NO_RUG <- import('RVC_16_SE_F_analyze.csv')
RVC_16_SE_F_NO_RUG$RUGOSITY_CD <- NULL

RVC_14_SE_F_NO_RUG <- import('RVC_14_SE_F_analyze.csv')
RVC_14_SE_F_NO_RUG$RUGOSITY_CD <- NULL


### export and combine all SE_F data into 3 datasets for 14,16,18
### combined manually*******

export(RVC_14_no_object,'RVC_14_no_object.csv')
export(RVC_14_SE_F_NO_RUG, 'RVC_14_no_rug.csv')

export(RVC_16_no_object,'RVC_16_no_object.csv')
export(RVC_16_SE_F_NO_RUG, 'RVC_16_no_rug.csv')

export(RVC_18_no_object,'RVC_18_no_object.csv')
export(RVC_18_SE_F_NO_RUG, 'RVC_18_no_rug.csv')


