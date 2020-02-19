
library(tidyverse)
library(data.table)

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/DT")


Bird_Key_Reef <- read_csv("Bird_Key_Reef/data/Bird_Key_biomass_data_combined.csv")
Black_Coral_Rock <- read_csv("Black_Coral_Rock/data/Black_Coral_Rock_biomass_data_combined.csv")
Davis_Rock <- read_csv("Davis_Rock/data/Davis_Rock_biomass_data_combined.csv")
Loggerhead_Patch <- read_csv("Loggerhead_Patch/data/Loggerhead_Patch_biomass_data_combined.csv")
Mayers_Peak <- read_csv("Mayers_Peak/data/Mayers_Peak_biomass_data_combined.csv")
Palmata_Patch <- read_csv("Palmata_Patch/data/Palmata_Patch_biomass_data_combined.csv")
Prolifera_Patch <- read_csv("Prolifera_Patch/data/Prolifera_Patch_biomass_data_combined.csv")
Temptation_Rock <- read_csv("Temptation_Rock/data/Temptation_Rock_biomass_data_combined.csv")
Texas_Rock <- read_csv("Texas_Rock/data/Texas_Rock_biomass_data_combined.csv")
Maze <- read_csv("The_Maze/data/Maze_biomass_data_combined.csv")
White_Shoal <- read_csv("White_Shoal/data/White_Shoal_biomass_data_combined.csv")


DT_reef_biomass_data_combined <- rbind(Bird_Key_Reef,Black_Coral_Rock, Davis_Rock, Loggerhead_Patch, Mayers_Peak, Palmata_Patch,Prolifera_Patch, Mayers_Peak, Maze, Temptation_Rock, Texas_Rock, White_Shoal)
DT_reef_biomass_data <- arrange(DT_reef_biomass_data_combined, Year,Reef, sum, max, min, mean, sd )
DT_reef_biomass_data$REGION <- ("DT")
export(DT_reef_biomass_data, "DT_reef_biomass_data.csv")

###LK

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/LK")

Eastern_Sambo_Deep <- read_csv("Eastern_Sambo_Deep/data/Eastern_Sambo_Deep_biomass_data_combined.csv")
Eastern_Sambo_Shallow <- read_csv("Eastern_Sambo_Shallow/data/Eastern_Sambo_Shallow_biomass_data_combined.csv")
Jaap_Reef <- read_csv("Jaap_Reef/data/Jaap_Reef_biomass_data_combined.csv")
Looe_Key_Deep <- read_csv("Looe_Key_Deep/data/Looe_Key_Deep_biomass_data_combined.csv")
Looe_Key_Shallow <- read_csv("Looe_Key_Shallow/data/Looe_Key_Shallow_biomass_data_combined.csv")
Red_Dun_Reef <- read_csv("Red_Dun_Reef/data/Red_Dun_Reef_biomass_data_combined.csv")
Rock_Key_Deep <- read_csv("Rock_Key_Deep/data/Rock_Key_Deep_biomass_data_combined.csv")
Rock_Key_Shallow <- read_csv("Rock_Key_Shallow/data/Rock_Key_Shallow_biomass_data_combined.csv")
Sand_Key_Deep <- read_csv("Sand_Key_Deep/data/Sand_Key_Deep_biomass_data_combined.csv")
Sand_Key_Shallow <- read_csv("Sand_Key_Shallow/data/Sand_Key_Shallow_biomass_data_combined.csv")
Smith_Shoal <- read_csv("Smith_Shoal/data/Smith_Shoal_biomass_data_combined.csv")
West_Washer_Woman <- read_csv("West_Washer_Woman/data/West_Washer_Woman_biomass_data_combined.csv")
#Western_Head <- read_csv("Western_Head/data/Western_Head_biomass_data_combined.csv")
Western_Sambo_Deep <- read_csv("Western_Sambo_Deep/data/Western_Sambo_Deep_biomass_data_combined.csv")
Western_Sambo_Shallow <- read_csv("Western_Sambo_Shallow/data/Western_Sambo_Shallow_biomass_data_combined.csv")

LK_reef_biomass_data_combined <- rbind(Eastern_Sambo_Deep,Eastern_Sambo_Shallow,Jaap_Reef,Looe_Key_Deep,Looe_Key_Shallow,Red_Dun_Reef,Rock_Key_Deep,Rock_Key_Shallow,Sand_Key_Deep,Sand_Key_Shallow,Smith_Shoal,West_Washer_Woman,Western_Sambo_Deep,Western_Sambo_Shallow)
LK_reef_biomass_data <- arrange(LK_reef_biomass_data_combined, Year,Reef, sum, max, min, mean, sd )
LK_reef_biomass_data$REGION <- ("LK")
export(LK_reef_biomass_data, "LK_reef_biomass_data.csv")


####  MK

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/MK")

Alligator_Deep <- read_csv("Alligator_Deep/data/Alligator_Deep_biomass_data_combined.csv")
Alligator_Shallow <- read_csv("Alligator_Shallow/data/Alligator_Shallow_biomass_data_combined.csv")
Dustan_Rocks <- read_csv("Dustan_Rocks/data/Dustan_Rocks_biomass_data_combined.csv")
Long_Key <- read_csv("Long_Key/data/Long_Key_biomass_data_combined.csv")
#Molasses_Key <- read_csv("Molasses_Key/data/Molasses_Key_biomass_data_combined.csv")
#Moser_Channel <- read_csv("Moser_Channel/data/Moser_Channel_biomass_data_combined.csv")
Rawa_Reef <- read_csv("Rawa_Reef/data/Rawa_Reef_biomass_data_combined.csv")
Sombrero_Deep <- read_csv("Sombrero_Deep/data/Sombrero_Deep_biomass_data_combined.csv")
Sombrero_Shallow <- read_csv("Sombrero_Shallow/data/Sombrero_Shallow_biomass_data_combined.csv")
Tennessee_Deep <- read_csv("Tennessee_Deep/data/Tennessee_Deep_biomass_data_combined.csv")
Tennessee_Shallow <- read_csv("Tennessee_Shallow/data/Tennessee_Shallow_biomass_data_combined.csv")
Thor <- read_csv("Thor/data/Thor_biomass_data_combined.csv")
West_Turtle_Shoal <- read_csv("West_Turtle_Shoal/data/West_Turtle_Shoal_biomass_data_combined.csv")

MK_reef_biomass_data_combined <- rbind(Alligator_Deep,Alligator_Shallow,Dustan_Rocks,Long_Key,Rawa_Reef,Sombrero_Deep,Sombrero_Shallow,Tennessee_Deep,Tennessee_Shallow,Thor,West_Turtle_Shoal)
MK_reef_biomass_data <- arrange(MK_reef_biomass_data_combined, Year,Reef, sum, max, min, mean, sd )
MK_reef_biomass_data$REGION <- ("MK")
export(MK_reef_biomass_data, "MK_reef_biomass_data.csv")


#### UK

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/UK")

Admiral <- read_csv("Admiral/data/Admiral_biomass_data_combined.csv")
Burr_Fish <- read_csv("Burr_Fish/data/Burr_Fish_biomass_data_combined.csv")
Carysfort_Deep <- read_csv("Carysfort_Deep/data/Carysfort_Deep_biomass_data_combined.csv")
Carysfort_Shallow <- read_csv("Carysfort_Shallow/data/Carysfort_Shallow_biomass_data_combined.csv")
Conch_Deep <- read_csv("Conch_Deep/data/Conch_Deep_biomass_data_combined.csv")
Conch_Shallow <- read_csv("Conch_Shallow/data/Conch_Shallow_biomass_data_combined.csv")
Grecian_Rocks <- read_csv("Grecian_Rocks/data/Grecian_Rocks_biomass_data_combined.csv")
Molasses_Deep <- read_csv("Molasses_Deep/data/Molasses_Deep_biomass_data_combined.csv")
Molasses_Shallow <- read_csv("Molasses_Shallow/data/Molasses_Shallow_biomass_data_combined.csv")
Porter_Patch <- read_csv("Porter_Patch/data/Porter_Patch_biomass_data_combined.csv")
Turtle <- read_csv("Turtle/data/Turtle_biomass_data_combined.csv")
Two_Patches <- read_csv("Two_Patches/data/Two_Patches_biomass_data_combined.csv")

UK_reef_biomass_data_combined <- rbind(Admiral, Burr_Fish, Carysfort_Deep, Carysfort_Shallow, Conch_Deep, Conch_Shallow, Grecian_Rocks, Molasses_Deep, Molasses_Shallow, Porter_Patch, Turtle, Two_Patches)
UK_reef_biomass_data <- arrange(UK_reef_biomass_data_combined, Year,Reef, sum, max, min, mean, sd )
UK_reef_biomass_data$REGION <- ("UK")
export(UK_reef_biomass_data, "UK_reef_biomass_data.csv")


### SEF

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF/SEF")

Broward_County_1 <- read_csv("Broward_County_1/data/Broward_County_1_biomass_data_combined.csv")
Broward_County_2 <- read_csv("Broward_County_2/data/Broward_County_2_biomass_data_combined.csv")
Broward_County_3 <- read_csv("Broward_County_3/data/Broward_County_3_biomass_data_combined.csv")
Broward_County_4 <- read_csv("Broward_County_4/data/Broward_County_4_biomass_data_combined.csv")
Broward_County_5 <- read_csv("Broward_County_5/data/Broward_County_5_biomass_data_combined.csv")
Broward_County_6 <- read_csv("Broward_County_6/data/Broward_County_6_biomass_data_combined.csv")
Broward_County_A <- read_csv("Broward_County_A/data/Broward_County_A_biomass_data_combined.csv")
Dade_County_1 <- read_csv("Dade_County_1/data/Dade_County_1_biomass_data_combined.csv")
Dade_County_2 <- read_csv("Dade_County_2/data/Dade_County_2_biomass_data_combined.csv")
Dade_County_3 <- read_csv("Dade_County_3/data/Dade_County_3_biomass_data_combined.csv")
Dade_County_4 <- read_csv("Dade_County_4/data/Dade_County_4_biomass_data_combined.csv")
Dade_County_5 <- read_csv("Dade_County_5/data/Dade_County_5_biomass_data_combined.csv")
Dade_County_6 <- read_csv("Dade_County_6/data/Dade_County_6_biomass_data_combined.csv")
Dade_County_7 <- read_csv("Dade_County_7/data/Dade_County_7_biomass_data_combined.csv")
Dade_County_8 <- read_csv("Dade_County_8/data/Dade_County_8_biomass_data_combined.csv")
Martin_County_1 <- read_csv("Martin_County_1/data/Martin_County_1_biomass_data_combined.csv")
Martin_County_2 <- read_csv("Martin_County_2/data/Martin_County_2_biomass_data_combined.csv")
Palm_Beach_1 <- read_csv("Palm_Beach_1/data/Palm_Beach_1_biomass_data_combined.csv")
Palm_Beach_2 <- read_csv("Palm_Beach_2/data/Palm_Beach_2_biomass_data_combined.csv")
Palm_Beach_3 <- read_csv("Palm_Beach_3/data/Palm_Beach_3_biomass_data_combined.csv")
Palm_Beach_4 <- read_csv("Palm_Beach_4/data/Palm_Beach_4_biomass_data_combined.csv")
Palm_Beach_5 <- read_csv("Palm_Beach_5/data/Palm_Beach_5_biomass_data_combined.csv")


SEF_reef_biomass_data_combined <- rbind(Broward_County_1,Broward_County_2,Broward_County_3,Broward_County_4,Broward_County_5,Broward_County_6,Broward_County_A, Dade_County_1, Dade_County_2,Dade_County_3,Dade_County_4,Dade_County_5,Dade_County_6,Dade_County_7,Dade_County_8,Martin_County_1,Martin_County_2,Palm_Beach_1,Palm_Beach_2,Palm_Beach_3,Palm_Beach_4)
SEF_reef_biomass_data <- arrange(SEF_reef_biomass_data_combined, Year,Reef, sum, max, min, mean, sd )
SEF_reef_biomass_data$REGION <- ("SEF")
export(SEF_reef_biomass_data, "SEF_reef_biomass_data.csv")


##### COMBINE ALL SUBREGIONS INTO ONE LARGE CSV

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF")

DT <- read_csv("DT/DT_reef_biomass_data.csv")
LK <- read_csv("LK/LK_reef_biomass_data.csv")
MK <- read_csv("MK/MK_reef_biomass_data.csv")
UK <- read_csv("UK/UK_reef_biomass_data.csv")
SEF <- read_csv("SEF/SEF_reef_biomass_data.csv")

All_regions_biomass_data_combined <- rbind(DT,LK,MK,UK,SEF)
All_regions_biomass_data <- arrange(All_regions_biomass_data_combined, Year, Reef, sum, max, min, mean, sd)

### Change column names to add to coral data
setnames(All_regions_biomass_data, old = c('Reef'), new = c('sitename'))
export(All_regions_biomass_data, "All_regions_RVC_biomass_data.csv")




