

library(rio)
library("magrittr")
library(tidyverse)
library(data.table)

setwd("C:/Users/cara.estes/Documents/Spring_2020/1996_2017")

### Combining coral data to later combine with fish data 


coral_1999 <- import("1999_regions_averages_graphs.xlsx")
coral_1999$Year <- ('1999')

coral_2000 <- import("2000_regions_averages_graphs.xlsx")
coral_2000$Year <- ('2000')

coral_2001 <- import("2001_regions_averages_graphs.xlsx")
coral_2001$Year <- ('2001')

coral_2002 <- import("2002_regions_averages_graphs.xlsx")
coral_2002$Year <- ('2002')

coral_2003 <- import("2003_regions_averages_graphs.xlsx")
coral_2003$Year <- ('2003')

coral_2004 <- import("2004_regions_averages_graphs.xlsx")
coral_2004$Year <- ('2004')

coral_2005 <- import("2005_regions_averages_graphs.xlsx")
coral_2005$Year <- ('2005')

coral_2006 <- import("2006_regions_averages_graphs.xlsx")
coral_2006$Year <- ('2006')

coral_2007 <- import("2007_regions_averages_graphs.xlsx")
coral_2007$Year <- ('2007')

coral_2008 <- import("2008_regions_averages_graphs.xlsx")
coral_2008$Year <- ('2008')

coral_2009 <- import("2009_regions_average_graphs.xlsx")
coral_2009$Year <- ('2009')

coral_2010 <- import("2010_regions_averages_graphs.xlsx")
coral_2010$Year <- ('2010')

coral_2011 <- import("2011_regions_averages_graph.xlsx")
coral_2011$Year <- ('2011')

coral_2012 <- import("2012_regions_averages_graphs.xlsx")
coral_2012$Year <- ('2012')

coral_2013 <- import("2013_regions_averages_graphs.xlsx")
coral_2013$Year <- ('2013')

coral_2014 <- import("2014_regions_averages_graphs.xlsx")
coral_2014$Year <- ('2014')

coral_2015 <- import("2015_regions_averages_graphs.xlsx")
coral_2015$Year <- ('2015')

coral_2016 <- import("2016_regions_averages_graphs.xlsx")
coral_2016$Year <- ('2016')

coral_2017 <- import("2017_regions_averages_graphs.xlsx")
coral_2017$Year <- ('2017')



CREMP_DATA_ALL <- rbind(coral_1999,coral_2000,coral_2001,coral_2002,coral_2003,coral_2004,coral_2005,coral_2006,coral_2007,coral_2008,coral_2009,coral_2010,coral_2011,coral_2012,coral_2013,coral_2014,coral_2015,coral_2016,coral_2017)
CREMP <- write_csv(CREMP_DATA_ALL, "CREMP_combined.csv")

##Add fish data

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF")

RVC_18 <- read_csv("All_regions_RVC_biomass_data.csv")


### Combine with join function 

CREMP_RVC_combined <- merge(RVC_18, CREMP, by = c("sitename","Year"))

## Clean it up 
CREMP_RVC_combined$subRegionId <- NULL
CREMP_RVC_combined_by_year <- arrange(CREMP_RVC_combined, Year)

### output (arranged by year or reef)

export(CREMP_RVC_combined_by_year,"C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/CREMP_RVC_YEAR.csv")
export(CREMP_RVC_combined,"C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/CREMP_RVC_REEF.csv" )


## output each reef into own csv if needed

# setwd("C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC")
# 
# Admiral <- filter(CREMP_RVC_combined, sitename == "Admiral")
# export(Admiral, "Admiral.csv")
# 
# Alligator_Deep <- filter(CREMP_RVC_combined, sitename == "Alligator Deep")
# export(Alligator_Deep, "Alligator_Deep.csv")
# 
# Alligator_Shallow <- filter(CREMP_RVC_combined, sitename == "Alligator Shallow")
# export(Alligator_Shallow2, "Alligator_Shallow2.csv")
# 
# Bird_Key_Reef <- filter(CREMP_RVC_combined, sitename == "Bird Key Reef")
# export(Bird_Key_Reef2, "Bird_Key_Reef2.csv")
# 
# Broward_County_1 <- filter(CREMP_RVC_combined, sitename == "Broward County 1")
# export(Broward_County_1, "Broward_County_1.csv")
# 
# Broward_County_2 <- filter(CREMP_RVC_combined, sitename == "Broward County 2")
# export(Broward_County_2, "Broward_County_2.csv")
# 
# Broward_County_3 <- filter(CREMP_RVC_combined, sitename == "Broward County 3")
# export(Broward_County_3, "Broward_County_3.csv")
# 
# Broward_County_4 <- filter(CREMP_RVC_combined, sitename == "Broward County 4")
# export(Broward_County_4, "Broward_County_4.csv")
# 
# Broward_County_5 <- filter(CREMP_RVC_combined, sitename == "Broward County 5")
# export(Broward_County_5, "Broward_County_5.csv")
# 
# Broward_County_6 <- filter(CREMP_RVC_combined, sitename == "Broward County 6")
# export(Broward_County_6, "Broward_County_6.csv")
# 
# Broward_County_A <- filter(CREMP_RVC_combined, sitename == "Broward County A")
# export(Broward_County_A, "Broward_County_A.csv")
# 
# Burr_Fish <- filter(CREMP_RVC_combined, sitename == "Burr Fish")
# export(Burr_Fish, "Burr_Fish.csv")
# 
# Carysfort_Deep <- filter(CREMP_RVC_combined, sitename == "Carysfort Deep")
# export(Carysfort_Deep, "Carysfort_Deep.csv")
# 
# Carysfort_Shallow <- filter(CREMP_RVC_combined, sitename == "Carysfort Shallow")
# export(Carysfort_Shallow, "Carysfort_Shallow.csv")
# 
# Conch_Deep <- filter(CREMP_RVC_combined, sitename == "Conch Deep")
# export(Conch_Deep, "Conch_Deep.csv")
# 
# Conch_Shallow <- filter(CREMP_RVC_combined, sitename == "Conch Shallow")
# export(Conch_Shallow, "Conch_Shallow.csv")
# 
# Dade_County_1 <- filter(CREMP_RVC_combined, sitename == "Dade County 1")
# export(Dade_County_1, "Dade_County_1.csv")
# 
# Dade_County_2 <- filter(CREMP_RVC_combined, sitename == "Dade County 2")
# export(Dade_County_2, "Dade_County_2.csv")
# 
# Dade_County_3 <- filter(CREMP_RVC_combined, sitename == "Dade County 3")
# export(Dade_County_3, "Dade_County_3.csv")
# 
# Dade_County_4 <- filter(CREMP_RVC_combined, sitename == "Dade County 4")
# export(Dade_County_4, "Dade_County_4.csv")
# 
# Dade_County_5 <- filter(CREMP_RVC_combined, sitename == "Dade County 5")
# export(Dade_County_5, "Dade_County_5.csv")
# 
# Dade_County_6 <- filter(CREMP_RVC_combined, sitename == "Dade County 6")
# export(Dade_County_6, "Dade_County_6.csv")
# 
# Dade_County_7 <- filter(CREMP_RVC_combined, sitename == "Dade County 7")
# export(Dade_County_7, "Dade_County_7.csv")
# 
# Dade_County_8 <- filter(CREMP_RVC_combined, sitename == "Dade County 8")
# export(Dade_County_8, "Dade_County_8.csv")
# 
# Davis_Rock <- filter(CREMP_RVC_combined, sitename == "Davis Rock")
# export(Davis_Rock, "Davis_Rock.csv")
# 
# Dustan_Rocks <- filter(CREMP_RVC_combined, sitename == "Dustan Rocks")
# export(Dustan_Rocks, "Dustan_Rocks.csv")
# 
# Eastern_Sambo_Deep <- filter(CREMP_RVC_combined, sitename == "Eastern Sambo Deep")
# export(Eastern_Sambo_Deep, "Eastern_Sambo_Deep.csv")
# 
# Eastern_Sambo_Shallow <- filter(CREMP_RVC_combined, sitename == "Eastern Sambo Shallow")
# export(Eastern_Sambo_Shallow, "Eastern_Sambo_Shallow.csv")
# 
# Grecian_Rocks <- filter(CREMP_RVC_combined, sitename == "Grecian Rocks")
# export(Grecian_Rocks, "Grecian_Rocks.csv")
# 
# Loggerhead_Patch <- filter(CREMP_RVC_combined, sitename == "Loggerhead Patch")
# export(Loggerhead_Patch, "Loggerhead_Patch.csv")
# 
# Long_Key <- filter(CREMP_RVC_combined, sitename == "Long Key")
# export(Long_Key, "Long_Key.csv")
# 
# Looe_Key_Deep <- filter(CREMP_RVC_combined, sitename == "Looe Key Deep")
# export(Looe_Key_Deep, "Looe_Key_Deep.csv")
# 
# Looe_Key_Shallow <- filter(CREMP_RVC_combined, sitename == "Looe Key Shallow")
# export(Looe_Key_Shallow, "Looe_Key_Shallow.csv")
# 
# Martin_County_1 <- filter(CREMP_RVC_combined, sitename == "Martin County 1")
# export(Martin_County_1, "Martin_County_1.csv")
# 
# Martin_County_2 <- filter(CREMP_RVC_combined, sitename == "Martin County 2")
# export(Martin_County_2, "Martin_County_2.csv")
# 
# Molasses_Deep <- filter(CREMP_RVC_combined, sitename == "Molasses Deep")
# export(Molasses_Deep, "Molasses_Deep.csv")
# 
# Molasses_Shallow <- filter(CREMP_RVC_combined, sitename == "Molasses Shallow")
# export(Molasses_Shallow, "Molasses_Shallow.csv")
# 
# Palm_Beach_1 <- filter(CREMP_RVC_combined, sitename == "Palm Beach 1")
# export(Palm_Beach_1, "Palm_Beach_1.csv")
# 
# Palm_Beach_2 <- filter(CREMP_RVC_combined, sitename == "Palm Beach 2")
# export(Palm_Beach_2, "Palm_Beach_2.csv")
# 
# Palm_Beach_3 <- filter(CREMP_RVC_combined, sitename == "Palm Beach 3")
# export(Palm_Beach_3, "Palm_Beach_3.csv")
# 
# Palm_Beach_4 <- filter(CREMP_RVC_combined, sitename == "Palm Beach 4")
# export(Palm_Beach_4, "Palm_Beach_4.csv")
# 
# Palmata_Patch <- filter(CREMP_RVC_combined, sitename == "Palmata Patch")
# export(Palmata_Patch, "Palmata_Patch.csv")
# 
# Prolifera_Patch <- filter(CREMP_RVC_combined, sitename == "Prolifera Patch")
# export(Prolifera_Patch, "Prolifera_Patch.csv")
# 
# Porter_Patch <- filter(CREMP_RVC_combined, sitename == "Porter Patch")
# export(Porter_Patch, "Porter_Patch.csv")
# 
# Rawa_Reef <- filter(CREMP_RVC_combined, sitename == "Rawa Reef")
# export(Rawa_Reef, "Rawa_Reef.csv")
# 
# Rock_Key_Deep <- filter(CREMP_RVC_combined, sitename == "Rock Key Deep")
# export(Rock_Key_Deep, "Rock_Key_Deep.csv")
# 
# Rock_Key_Shallow <- filter(CREMP_RVC_combined, sitename == "Rock Key Shallow")
# export(Rock_Key_Shallow, "Rock_Key_Shallow.csv")
# 
# Sand_Key_Deep <- filter(CREMP_RVC_combined, sitename == "Sand Key Deep")
# export(Sand_Key_Deep, "Sand_Key_Deep.csv")
# 
# Sand_Key_Shallow <- filter(CREMP_RVC_combined, sitename == "Sand Key Shallow")
# export(Sand_Key_Shallow, "Sand_Key_Shallow.csv")
# 
# Smith_Shoal <- filter(CREMP_RVC_combined, sitename == "Smith Shoal")
# export(Smith_Shoal, "Smith_Shoal.csv")
# 
# Sombrero_Deep <- filter(CREMP_RVC_combined, sitename == "Sombrero Deep")
# export(Sombrero_Deep, "Sombrero_Deep.csv")
# 
# Sombrero_Shallow <- filter(CREMP_RVC_combined, sitename == "Sombrero Shallow")
# export(Sombrero_Shallow, "Sombrero_Shallow.csv")
# 
# Temptation_Rock <- filter(CREMP_RVC_combined, sitename == "Temptation Rock")
# export(Temptation_Rock, "Temptation_Rock.csv")
# 
# Tennessee_Deep <- filter(CREMP_RVC_combined, sitename == "Tennessee Deep")
# export(Tennessee_Deep, "Tennessee_Deep.csv")
# 
# Tennessee_Shallow <- filter(CREMP_RVC_combined, sitename == "Tennessee Shallow")
# export(Tennessee_Shallow, "Tennessee_Shallow.csv")
# 
# Texas_Rock <- filter(CREMP_RVC_combined, sitename == "Texas Rock")
# export(Texas_Rock, "Texas_Rock.csv")
# 
# Thor <- filter(CREMP_RVC_combined, sitename == "Thor")
# export(Thor, "Thor.csv")
# 
# Turtle <- filter(CREMP_RVC_combined, sitename == "Turtle")
# export(Turtle, "Turtle.csv")
# 
# Two_Patches <- filter(CREMP_RVC_combined, sitename == "Two Patches")
# export(Two_Patches, "Two_Patches.csv")
# 
# West_Turtle_Shoal <- filter(CREMP_RVC_combined, sitename == "West Turtle Shoal")
# export(West_Turtle_Shoal, "West_Turtle_Shoal.csv")
# 
# Western_Sambo_Deep <- filter(CREMP_RVC_combined, sitename == "Western Sambo Deep")
# export(Western_Sambo_Deep, "Western_Sambo_Deep.csv")
# 
# Western_Sambo_Shallow <- filter(CREMP_RVC_combined, sitename == "Western Sambo Shallow")
# export(Western_Sambo_Shallow, "Western_Sambo_Shallow.csv")
# 
# White_Shoal <- filter(CREMP_RVC_combined, sitename == "White Shoal")
# export(White_Shoal, "White_Shoal.csv")
# 
# 
# 
