

library(compare)
library(rio)
library("magrittr")
library(tidyverse)
library(data.table)

setwd("C:/Users/cara.estes/Documents/Spring_2020/1996_2017")


coral_1996 <- import("1996_all.xlsx")
coral_1996<- select(coral_1996, Sample_Year, sitename, Macroalgae, Stony_coral)


## Get mean and sd for each reef and combine at end

coral_1996_Rattlesnake <- filter(coral_1996, sitename == "Rattlesnake")

coral_1996_Rattlesnake_macro <- summarise_at(coral_1996_Rattlesnake,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Rattlesnake_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Rattlesnake_coral <- summarise_at(coral_1996_Rattlesnake,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Rattlesnake_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Rattlesnake_merge <- merge(coral_1996_Rattlesnake_coral,coral_1996_Rattlesnake_macro)
coral_1996_Rattlesnake_merge$sitename <- "Rattlesnake"


coral_1996_El_Radabob <- filter(coral_1996, sitename == "El Radabob")

coral_1996_El_Radabob_macro <- summarise_at(coral_1996_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_El_Radabob_coral <- summarise_at(coral_1996_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_El_Radabob_coral) <- c("Coral_Average","Coral_SD")

coral_1996_El_Radabob_merge <- merge(coral_1996_El_Radabob_coral,coral_1996_El_Radabob_macro)
coral_1996_El_Radabob_merge$sitename <- "El Radabob"


coral_1996_Dove_Key <- filter(coral_1996, sitename == "Dove Key")

coral_1996_Dove_Key_macro <- summarise_at(coral_1996_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Dove_Key_coral <- summarise_at(coral_1996_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Dove_Key_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Dove_Key_merge <- merge(coral_1996_Dove_Key_coral,coral_1996_Dove_Key_macro)
coral_1996_Dove_Key_merge$sitename <- "Dove Key"


coral_1996_Long_Key <- filter(coral_1996, sitename == "Long Key")

coral_1996_Long_Key_macro <- summarise_at(coral_1996_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Long_Key_coral <- summarise_at(coral_1996_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Long_Key_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Long_Key_merge <- merge(coral_1996_Long_Key_coral,coral_1996_Long_Key_macro)
coral_1996_Long_Key_merge$sitename <- "Long Key"



coral_1996_Moser_Channel <- filter(coral_1996, sitename == "Moser Channel")

coral_1996_Moser_Channel_macro <- summarise_at(coral_1996_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Moser_Channel_coral <- summarise_at(coral_1996_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Moser_Channel_merge <- merge(coral_1996_Moser_Channel_coral,coral_1996_Moser_Channel_macro)
coral_1996_Moser_Channel_merge$sitename <- "Moser Channel"


coral_1996_Molasses_Keys <- filter(coral_1996, sitename == "Molasses Keys")

coral_1996_Molasses_Keys_macro <- summarise_at(coral_1996_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Molasses_Keys_coral <- summarise_at(coral_1996_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Molasses_Keys_merge <- merge(coral_1996_Molasses_Keys_coral,coral_1996_Molasses_Keys_macro)
coral_1996_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_1996_Content_Keys <- filter(coral_1996, sitename == "Content Keys")

coral_1996_Content_Keys_macro <- summarise_at(coral_1996_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Content_Keys_coral <- summarise_at(coral_1996_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Content_Keys_merge <- merge(coral_1996_Content_Keys_coral,coral_1996_Content_Keys_macro)
coral_1996_Content_Keys_merge$sitename <- "Content Keys"


coral_1996_Turtle <- filter(coral_1996, sitename == "Turtle")

coral_1996_Turtle_macro <- summarise_at(coral_1996_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Turtle_coral <- summarise_at(coral_1996_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Turtle_merge <- merge(coral_1996_Turtle_coral,coral_1996_Turtle_macro)
coral_1996_Turtle_merge$sitename <- "Turtle"


coral_1996_Porter_Patch <- filter(coral_1996, sitename == "Porter Patch")

coral_1996_Porter_Patch_macro <- summarise_at(coral_1996_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Porter_Patch_coral <- summarise_at(coral_1996_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Porter_Patch_merge <- merge(coral_1996_Porter_Patch_coral,coral_1996_Porter_Patch_macro)
coral_1996_Porter_Patch_merge$sitename <- "Porter Patch"


coral_1996_Admiral <- filter(coral_1996, sitename == "Admiral")

coral_1996_Admiral_macro <- summarise_at(coral_1996_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Admiral_coral <- summarise_at(coral_1996_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Admiral_merge <- merge(coral_1996_Admiral_coral,coral_1996_Admiral_macro)
coral_1996_Admiral_merge$sitename <- "Admiral"


coral_1996_West_Turtle_Shoal <- filter(coral_1996, sitename == "West Turtle Shoal")

coral_1996_West_Turtle_Shoal_macro <- summarise_at(coral_1996_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_West_Turtle_Shoal_coral <- summarise_at(coral_1996_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_1996_West_Turtle_Shoal_merge <- merge(coral_1996_West_Turtle_Shoal_coral,coral_1996_West_Turtle_Shoal_macro)
coral_1996_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_1996_Dustan_Rocks <- filter(coral_1996, sitename == "Dustan Rocks")

coral_1996_Dustan_Rocks_macro <- summarise_at(coral_1996_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Dustan_Rocks_coral <- summarise_at(coral_1996_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Dustan_Rocks_merge <- merge(coral_1996_Dustan_Rocks_coral,coral_1996_Dustan_Rocks_macro)
coral_1996_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_1996_West_Washer_Women <- filter(coral_1996, sitename == "West Washer Women")

coral_1996_West_Washer_Women_macro <- summarise_at(coral_1996_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_West_Washer_Women_coral <- summarise_at(coral_1996_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_1996_West_Washer_Women_merge <- merge(coral_1996_West_Washer_Women_coral,coral_1996_West_Washer_Women_macro)
coral_1996_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_1996_Western_Head <- filter(coral_1996, sitename == "Western Head")

coral_1996_Western_Head_macro <- summarise_at(coral_1996_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Western_Head_coral <- summarise_at(coral_1996_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Western_Head_merge <- merge(coral_1996_Western_Head_coral,coral_1996_Western_Head_macro)
coral_1996_Western_Head_merge$sitename <- "Western Head"


coral_1996_Cliff_Green <- filter(coral_1996, sitename == "Cliff Green")

coral_1996_Cliff_Green_macro <- summarise_at(coral_1996_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Cliff_Green_coral <- summarise_at(coral_1996_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Cliff_Green_merge <- merge(coral_1996_Cliff_Green_coral,coral_1996_Cliff_Green_macro)
coral_1996_Cliff_Green_merge$sitename <- "Cliff Green"


coral_1996_Smith_Shoal <- filter(coral_1996, sitename == "Smith Shoal")

coral_1996_Smith_Shoal_macro <- summarise_at(coral_1996_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Smith_Shoal_coral <- summarise_at(coral_1996_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Smith_Shoal_merge <- merge(coral_1996_Smith_Shoal_coral,coral_1996_Smith_Shoal_macro)
coral_1996_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_1996_Jaap_Reef <- filter(coral_1996, sitename == "Jaap Reef")

coral_1996_Jaap_Reef_macro <- summarise_at(coral_1996_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Jaap_Reef_coral <- summarise_at(coral_1996_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Jaap_Reef_merge <- merge(coral_1996_Jaap_Reef_coral,coral_1996_Jaap_Reef_macro)
coral_1996_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_1996_Carysfort_Shallow <- filter(coral_1996, sitename == "Carysfort Shallow")

coral_1996_Carysfort_Shallow_macro <- summarise_at(coral_1996_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Carysfort_Shallow_coral <- summarise_at(coral_1996_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Carysfort_Shallow_merge <- merge(coral_1996_Carysfort_Shallow_coral,coral_1996_Carysfort_Shallow_macro)
coral_1996_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_1996_Grecian_Rocks <- filter(coral_1996, sitename == "Grecian Rocks")

coral_1996_Grecian_Rocks_macro <- summarise_at(coral_1996_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Grecian_Rocks_coral <- summarise_at(coral_1996_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Grecian_Rocks_merge <- merge(coral_1996_Grecian_Rocks_coral,coral_1996_Grecian_Rocks_macro)
coral_1996_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_1996_Molasses_Shallow <- filter(coral_1996, sitename == "Molasses Shallow")

coral_1996_Molasses_Shallow_macro <- summarise_at(coral_1996_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Molasses_Shallow_coral <- summarise_at(coral_1996_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Molasses_Shallow_merge <- merge(coral_1996_Molasses_Shallow_coral,coral_1996_Molasses_Shallow_macro)
coral_1996_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_1996_Conch_Shallow <- filter(coral_1996, sitename == "Conch Shallow")

coral_1996_Conch_Shallow_macro <- summarise_at(coral_1996_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Conch_Shallow_coral <- summarise_at(coral_1996_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Conch_Shallow_merge <- merge(coral_1996_Conch_Shallow_coral,coral_1996_Conch_Shallow_macro)
coral_1996_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_1996_Alligator_Shallow <- filter(coral_1996, sitename == "Alligator Shallow")

coral_1996_Alligator_Shallow_macro <- summarise_at(coral_1996_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Alligator_Shallow_coral <- summarise_at(coral_1996_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Alligator_Shallow_merge <- merge(coral_1996_Alligator_Shallow_coral,coral_1996_Alligator_Shallow_macro)
coral_1996_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_1996_Tennessee_Shallow <- filter(coral_1996, sitename == "Tennessee Shallow")

coral_1996_Tennessee_Shallow_macro <- summarise_at(coral_1996_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Tennessee_Shallow_coral <- summarise_at(coral_1996_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Tennessee_Shallow_merge <- merge(coral_1996_Tennessee_Shallow_coral,coral_1996_Tennessee_Shallow_macro)
coral_1996_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_1996_Sombrero_Shallow <- filter(coral_1996, sitename == "Sombrero Shallow")

coral_1996_Sombrero_Shallow_macro <- summarise_at(coral_1996_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Sombrero_Shallow_coral <- summarise_at(coral_1996_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Sombrero_Shallow_merge <- merge(coral_1996_Sombrero_Shallow_coral,coral_1996_Sombrero_Shallow_macro)
coral_1996_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_1996_Looe_Key_Shallow <- filter(coral_1996, sitename == "Looe Key Shallow")

coral_1996_Looe_Key_Shallow_macro <- summarise_at(coral_1996_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Looe_Key_Shallow_coral <- summarise_at(coral_1996_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Looe_Key_Shallow_merge <- merge(coral_1996_Looe_Key_Shallow_coral,coral_1996_Looe_Key_Shallow_macro)
coral_1996_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_1996_Eastern_Sambo_Shallow <- filter(coral_1996, sitename == "Eastern Sambo Shallow")

coral_1996_Eastern_Sambo_Shallow_macro <- summarise_at(coral_1996_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Eastern_Sambo_Shallow_coral <- summarise_at(coral_1996_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Eastern_Sambo_Shallow_merge <- merge(coral_1996_Eastern_Sambo_Shallow_coral,coral_1996_Eastern_Sambo_Shallow_macro)
coral_1996_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_1996_Western_Sambo_Shallow <- filter(coral_1996, sitename == "Western Sambo Shallow")

coral_1996_Western_Sambo_Shallow_macro <- summarise_at(coral_1996_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Western_Sambo_Shallow_coral <- summarise_at(coral_1996_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Western_Sambo_Shallow_merge <- merge(coral_1996_Western_Sambo_Shallow_coral,coral_1996_Western_Sambo_Shallow_macro)
coral_1996_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_1996_Rock_Key_Shallow <- filter(coral_1996, sitename == "Rock Key Shallow")

coral_1996_Rock_Key_Shallow_macro <- summarise_at(coral_1996_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Rock_Key_Shallow_coral <- summarise_at(coral_1996_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Rock_Key_Shallow_merge <- merge(coral_1996_Rock_Key_Shallow_coral,coral_1996_Rock_Key_Shallow_macro)
coral_1996_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_1996_Sand_Key_Shallow <- filter(coral_1996, sitename == "Sand Key Shallow")

coral_1996_Sand_Key_Shallow_macro <- summarise_at(coral_1996_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Sand_Key_Shallow_coral <- summarise_at(coral_1996_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Sand_Key_Shallow_merge <- merge(coral_1996_Sand_Key_Shallow_coral,coral_1996_Sand_Key_Shallow_macro)
coral_1996_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_1996_Carysfort_Deep <- filter(coral_1996, sitename == "Carysfort Deep")

coral_1996_Carysfort_Deep_macro <- summarise_at(coral_1996_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Carysfort_Deep_coral <- summarise_at(coral_1996_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Carysfort_Deep_merge <- merge(coral_1996_Carysfort_Deep_coral,coral_1996_Carysfort_Deep_macro)
coral_1996_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_1996_Molasses_Deep <- filter(coral_1996, sitename == "Molasses Deep")

coral_1996_Molasses_Deep_macro <- summarise_at(coral_1996_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Molasses_Deep_coral <- summarise_at(coral_1996_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Molasses_Deep_merge <- merge(coral_1996_Molasses_Deep_coral,coral_1996_Molasses_Deep_macro)
coral_1996_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_1996_Conch_Deep <- filter(coral_1996, sitename == "Conch Deep")

coral_1996_Conch_Deep_macro <- summarise_at(coral_1996_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Conch_Deep_coral <- summarise_at(coral_1996_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Conch_Deep_merge <- merge(coral_1996_Conch_Deep_coral,coral_1996_Conch_Deep_macro)
coral_1996_Conch_Deep_merge$sitename <- "Conch Deep"



coral_1996_Alligator_Deep <- filter(coral_1996, sitename == "Alligator Deep")

coral_1996_Alligator_Deep_macro <- summarise_at(coral_1996_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Alligator_Deep_coral <- summarise_at(coral_1996_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Alligator_Deep_merge <- merge(coral_1996_Alligator_Deep_coral,coral_1996_Alligator_Deep_macro)
coral_1996_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_1996_Tennessee_Deep <- filter(coral_1996, sitename == "Tennessee Deep")

coral_1996_Tennessee_Deep_macro <- summarise_at(coral_1996_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Tennessee_Deep_coral <- summarise_at(coral_1996_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Tennessee_Deep_merge <- merge(coral_1996_Tennessee_Deep_coral,coral_1996_Tennessee_Deep_macro)
coral_1996_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_1996_Sombrero_Deep <- filter(coral_1996, sitename == "Sombrero Deep")

coral_1996_Sombrero_Deep_macro <- summarise_at(coral_1996_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Sombrero_Deep_coral <- summarise_at(coral_1996_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Sombrero_Deep_merge <- merge(coral_1996_Sombrero_Deep_coral,coral_1996_Sombrero_Deep_macro)
coral_1996_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_1996_Looe_Key_Deep <- filter(coral_1996, sitename == "Looe Key Deep")

coral_1996_Looe_Key_Deep_macro <- summarise_at(coral_1996_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Looe_Key_Deep_coral <- summarise_at(coral_1996_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Looe_Key_Deep_merge <- merge(coral_1996_Looe_Key_Deep_coral,coral_1996_Looe_Key_Deep_macro)
coral_1996_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_1996_Eastern_Sambo_Deep <- filter(coral_1996, sitename == "Eastern Sambo Deep")

coral_1996_Eastern_Sambo_Deep_macro <- summarise_at(coral_1996_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Eastern_Sambo_Deep_coral <- summarise_at(coral_1996_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Eastern_Sambo_Deep_merge <- merge(coral_1996_Eastern_Sambo_Deep_coral,coral_1996_Eastern_Sambo_Deep_macro)
coral_1996_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_1996_Western_Sambo_Deep <- filter(coral_1996, sitename == "Western Sambo Deep")

coral_1996_Western_Sambo_Deep_macro <- summarise_at(coral_1996_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Western_Sambo_Deep_coral <- summarise_at(coral_1996_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Western_Sambo_Deep_merge <- merge(coral_1996_Western_Sambo_Deep_coral,coral_1996_Western_Sambo_Deep_macro)
coral_1996_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_1996_Rock_Key_Deep <- filter(coral_1996, sitename == "Rock Key Deep")

coral_1996_Rock_Key_Deep_macro <- summarise_at(coral_1996_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Rock_Key_Deep_coral <- summarise_at(coral_1996_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Rock_Key_Deep_merge <- merge(coral_1996_Rock_Key_Deep_coral,coral_1996_Rock_Key_Deep_macro)
coral_1996_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_1996_Sand_Key_Deep <- filter(coral_1996, sitename == "Sand Key Deep")

coral_1996_Sand_Key_Deep_macro <- summarise_at(coral_1996_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1996_Sand_Key_Deep_coral <- summarise_at(coral_1996_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1996_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1996_Sand_Key_Deep_merge <- merge(coral_1996_Sand_Key_Deep_coral,coral_1996_Sand_Key_Deep_macro)
coral_1996_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_1996_merged <- rbind(coral_1996_Rattlesnake_merge,coral_1996_El_Radabob_merge,coral_1996_Dove_Key_merge,
                           coral_1996_Long_Key_merge,coral_1996_Moser_Channel_merge,coral_1996_Molasses_Keys_merge,
                           coral_1996_Content_Keys_merge,coral_1996_Turtle_merge,coral_1996_Porter_Patch_merge,
                           coral_1996_Admiral_merge,coral_1996_West_Turtle_Shoal_merge,coral_1996_Dustan_Rocks_merge,
                           coral_1996_West_Washer_Women_merge,coral_1996_Western_Head_merge,coral_1996_Cliff_Green_merge,
                           coral_1996_Smith_Shoal_merge,coral_1996_Jaap_Reef_merge,coral_1996_Carysfort_Shallow_merge,
                           coral_1996_Grecian_Rocks_merge,coral_1996_Molasses_Shallow_merge,coral_1996_Conch_Shallow_merge,
                           coral_1996_Alligator_Shallow_merge,coral_1996_Tennessee_Shallow_merge,coral_1996_Sombrero_Shallow_merge,
                           coral_1996_Looe_Key_Shallow_merge,coral_1996_Eastern_Sambo_Shallow_merge,coral_1996_Western_Sambo_Shallow_merge,
                           coral_1996_Rock_Key_Shallow_merge,coral_1996_Sand_Key_Shallow_merge,coral_1996_Carysfort_Deep_merge,
                           coral_1996_Molasses_Deep_merge,coral_1996_Conch_Deep_merge,coral_1996_Alligator_Deep_merge,
                           coral_1996_Tennessee_Deep_merge,coral_1996_Sombrero_Deep_merge,coral_1996_Looe_Key_Deep_merge,
                           coral_1996_Eastern_Sambo_Deep_merge,coral_1996_Western_Sambo_Deep_merge,coral_1996_Rock_Key_Deep_merge,
                           coral_1996_Sand_Key_Deep_merge)


coral_1996_merged$Year <- "1996"




coral_1997 <- import("1997_all.xlsx")
coral_1997<- select(coral_1997, Sample_Year, sitename, Macroalgae, Stony_coral)




coral_1997_Rattlesnake <- filter(coral_1997, sitename == "Rattlesnake")

coral_1997_Rattlesnake_macro <- summarise_at(coral_1997_Rattlesnake,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Rattlesnake_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Rattlesnake_coral <- summarise_at(coral_1997_Rattlesnake,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Rattlesnake_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Rattlesnake_merge <- merge(coral_1997_Rattlesnake_coral,coral_1997_Rattlesnake_macro)
coral_1997_Rattlesnake_merge$sitename <- "Rattlesnake"


coral_1997_El_Radabob <- filter(coral_1997, sitename == "El Radabob")

coral_1997_El_Radabob_macro <- summarise_at(coral_1997_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_El_Radabob_coral <- summarise_at(coral_1997_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_El_Radabob_coral) <- c("Coral_Average","Coral_SD")

coral_1997_El_Radabob_merge <- merge(coral_1997_El_Radabob_coral,coral_1997_El_Radabob_macro)
coral_1997_El_Radabob_merge$sitename <- "El Radabob"


coral_1997_Dove_Key <- filter(coral_1997, sitename == "Dove Key")

coral_1997_Dove_Key_macro <- summarise_at(coral_1997_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Dove_Key_coral <- summarise_at(coral_1997_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Dove_Key_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Dove_Key_merge <- merge(coral_1997_Dove_Key_coral,coral_1997_Dove_Key_macro)
coral_1997_Dove_Key_merge$sitename <- "Dove Key"


coral_1997_Long_Key <- filter(coral_1997, sitename == "Long Key")

coral_1997_Long_Key_macro <- summarise_at(coral_1997_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Long_Key_coral <- summarise_at(coral_1997_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Long_Key_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Long_Key_merge <- merge(coral_1997_Long_Key_coral,coral_1997_Long_Key_macro)
coral_1997_Long_Key_merge$sitename <- "Long Key"



coral_1997_Moser_Channel <- filter(coral_1997, sitename == "Moser Channel")

coral_1997_Moser_Channel_macro <- summarise_at(coral_1997_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Moser_Channel_coral <- summarise_at(coral_1997_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Moser_Channel_merge <- merge(coral_1997_Moser_Channel_coral,coral_1997_Moser_Channel_macro)
coral_1997_Moser_Channel_merge$sitename <- "Moser Channel"


coral_1997_Molasses_Keys <- filter(coral_1997, sitename == "Molasses Keys")

coral_1997_Molasses_Keys_macro <- summarise_at(coral_1997_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Molasses_Keys_coral <- summarise_at(coral_1997_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Molasses_Keys_merge <- merge(coral_1997_Molasses_Keys_coral,coral_1997_Molasses_Keys_macro)
coral_1997_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_1997_Content_Keys <- filter(coral_1997, sitename == "Content Keys")

coral_1997_Content_Keys_macro <- summarise_at(coral_1997_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Content_Keys_coral <- summarise_at(coral_1997_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Content_Keys_merge <- merge(coral_1997_Content_Keys_coral,coral_1997_Content_Keys_macro)
coral_1997_Content_Keys_merge$sitename <- "Content Keys"


coral_1997_Turtle <- filter(coral_1997, sitename == "Turtle")

coral_1997_Turtle_macro <- summarise_at(coral_1997_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Turtle_coral <- summarise_at(coral_1997_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Turtle_merge <- merge(coral_1997_Turtle_coral,coral_1997_Turtle_macro)
coral_1997_Turtle_merge$sitename <- "Turtle"


coral_1997_Porter_Patch <- filter(coral_1997, sitename == "Porter Patch")

coral_1997_Porter_Patch_macro <- summarise_at(coral_1997_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Porter_Patch_coral <- summarise_at(coral_1997_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Porter_Patch_merge <- merge(coral_1997_Porter_Patch_coral,coral_1997_Porter_Patch_macro)
coral_1997_Porter_Patch_merge$sitename <- "Porter Patch"


coral_1997_Admiral <- filter(coral_1997, sitename == "Admiral")

coral_1997_Admiral_macro <- summarise_at(coral_1997_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Admiral_coral <- summarise_at(coral_1997_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Admiral_merge <- merge(coral_1997_Admiral_coral,coral_1997_Admiral_macro)
coral_1997_Admiral_merge$sitename <- "Admiral"


coral_1997_West_Turtle_Shoal <- filter(coral_1997, sitename == "West Turtle Shoal")

coral_1997_West_Turtle_Shoal_macro <- summarise_at(coral_1997_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_West_Turtle_Shoal_coral <- summarise_at(coral_1997_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_1997_West_Turtle_Shoal_merge <- merge(coral_1997_West_Turtle_Shoal_coral,coral_1997_West_Turtle_Shoal_macro)
coral_1997_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_1997_Dustan_Rocks <- filter(coral_1997, sitename == "Dustan Rocks")

coral_1997_Dustan_Rocks_macro <- summarise_at(coral_1997_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Dustan_Rocks_coral <- summarise_at(coral_1997_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Dustan_Rocks_merge <- merge(coral_1997_Dustan_Rocks_coral,coral_1997_Dustan_Rocks_macro)
coral_1997_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_1997_West_Washer_Women <- filter(coral_1997, sitename == "West Washer Women")

coral_1997_West_Washer_Women_macro <- summarise_at(coral_1997_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_West_Washer_Women_coral <- summarise_at(coral_1997_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_1997_West_Washer_Women_merge <- merge(coral_1997_West_Washer_Women_coral,coral_1997_West_Washer_Women_macro)
coral_1997_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_1997_Western_Head <- filter(coral_1997, sitename == "Western Head")

coral_1997_Western_Head_macro <- summarise_at(coral_1997_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Western_Head_coral <- summarise_at(coral_1997_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Western_Head_merge <- merge(coral_1997_Western_Head_coral,coral_1997_Western_Head_macro)
coral_1997_Western_Head_merge$sitename <- "Western Head"


coral_1997_Cliff_Green <- filter(coral_1997, sitename == "Cliff Green")

coral_1997_Cliff_Green_macro <- summarise_at(coral_1997_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Cliff_Green_coral <- summarise_at(coral_1997_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Cliff_Green_merge <- merge(coral_1997_Cliff_Green_coral,coral_1997_Cliff_Green_macro)
coral_1997_Cliff_Green_merge$sitename <- "Cliff Green"


coral_1997_Smith_Shoal <- filter(coral_1997, sitename == "Smith Shoal")

coral_1997_Smith_Shoal_macro <- summarise_at(coral_1997_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Smith_Shoal_coral <- summarise_at(coral_1997_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Smith_Shoal_merge <- merge(coral_1997_Smith_Shoal_coral,coral_1997_Smith_Shoal_macro)
coral_1997_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_1997_Jaap_Reef <- filter(coral_1997, sitename == "Jaap Reef")

coral_1997_Jaap_Reef_macro <- summarise_at(coral_1997_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Jaap_Reef_coral <- summarise_at(coral_1997_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Jaap_Reef_merge <- merge(coral_1997_Jaap_Reef_coral,coral_1997_Jaap_Reef_macro)
coral_1997_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_1997_Carysfort_Shallow <- filter(coral_1997, sitename == "Carysfort Shallow")

coral_1997_Carysfort_Shallow_macro <- summarise_at(coral_1997_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Carysfort_Shallow_coral <- summarise_at(coral_1997_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Carysfort_Shallow_merge <- merge(coral_1997_Carysfort_Shallow_coral,coral_1997_Carysfort_Shallow_macro)
coral_1997_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_1997_Grecian_Rocks <- filter(coral_1997, sitename == "Grecian Rocks")

coral_1997_Grecian_Rocks_macro <- summarise_at(coral_1997_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Grecian_Rocks_coral <- summarise_at(coral_1997_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Grecian_Rocks_merge <- merge(coral_1997_Grecian_Rocks_coral,coral_1997_Grecian_Rocks_macro)
coral_1997_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_1997_Molasses_Shallow <- filter(coral_1997, sitename == "Molasses Shallow")

coral_1997_Molasses_Shallow_macro <- summarise_at(coral_1997_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Molasses_Shallow_coral <- summarise_at(coral_1997_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Molasses_Shallow_merge <- merge(coral_1997_Molasses_Shallow_coral,coral_1997_Molasses_Shallow_macro)
coral_1997_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_1997_Conch_Shallow <- filter(coral_1997, sitename == "Conch Shallow")

coral_1997_Conch_Shallow_macro <- summarise_at(coral_1997_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Conch_Shallow_coral <- summarise_at(coral_1997_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Conch_Shallow_merge <- merge(coral_1997_Conch_Shallow_coral,coral_1997_Conch_Shallow_macro)
coral_1997_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_1997_Alligator_Shallow <- filter(coral_1997, sitename == "Alligator Shallow")

coral_1997_Alligator_Shallow_macro <- summarise_at(coral_1997_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Alligator_Shallow_coral <- summarise_at(coral_1997_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Alligator_Shallow_merge <- merge(coral_1997_Alligator_Shallow_coral,coral_1997_Alligator_Shallow_macro)
coral_1997_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_1997_Tennessee_Shallow <- filter(coral_1997, sitename == "Tennessee Shallow")

coral_1997_Tennessee_Shallow_macro <- summarise_at(coral_1997_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Tennessee_Shallow_coral <- summarise_at(coral_1997_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Tennessee_Shallow_merge <- merge(coral_1997_Tennessee_Shallow_coral,coral_1997_Tennessee_Shallow_macro)
coral_1997_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_1997_Sombrero_Shallow <- filter(coral_1997, sitename == "Sombrero Shallow")

coral_1997_Sombrero_Shallow_macro <- summarise_at(coral_1997_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Sombrero_Shallow_coral <- summarise_at(coral_1997_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Sombrero_Shallow_merge <- merge(coral_1997_Sombrero_Shallow_coral,coral_1997_Sombrero_Shallow_macro)
coral_1997_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_1997_Looe_Key_Shallow <- filter(coral_1997, sitename == "Looe Key Shallow")

coral_1997_Looe_Key_Shallow_macro <- summarise_at(coral_1997_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Looe_Key_Shallow_coral <- summarise_at(coral_1997_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Looe_Key_Shallow_merge <- merge(coral_1997_Looe_Key_Shallow_coral,coral_1997_Looe_Key_Shallow_macro)
coral_1997_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_1997_Eastern_Sambo_Shallow <- filter(coral_1997, sitename == "Eastern Sambo Shallow")

coral_1997_Eastern_Sambo_Shallow_macro <- summarise_at(coral_1997_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Eastern_Sambo_Shallow_coral <- summarise_at(coral_1997_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Eastern_Sambo_Shallow_merge <- merge(coral_1997_Eastern_Sambo_Shallow_coral,coral_1997_Eastern_Sambo_Shallow_macro)
coral_1997_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_1997_Western_Sambo_Shallow <- filter(coral_1997, sitename == "Western Sambo Shallow")

coral_1997_Western_Sambo_Shallow_macro <- summarise_at(coral_1997_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Western_Sambo_Shallow_coral <- summarise_at(coral_1997_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Western_Sambo_Shallow_merge <- merge(coral_1997_Western_Sambo_Shallow_coral,coral_1997_Western_Sambo_Shallow_macro)
coral_1997_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_1997_Rock_Key_Shallow <- filter(coral_1997, sitename == "Rock Key Shallow")

coral_1997_Rock_Key_Shallow_macro <- summarise_at(coral_1997_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Rock_Key_Shallow_coral <- summarise_at(coral_1997_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Rock_Key_Shallow_merge <- merge(coral_1997_Rock_Key_Shallow_coral,coral_1997_Rock_Key_Shallow_macro)
coral_1997_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_1997_Sand_Key_Shallow <- filter(coral_1997, sitename == "Sand Key Shallow")

coral_1997_Sand_Key_Shallow_macro <- summarise_at(coral_1997_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Sand_Key_Shallow_coral <- summarise_at(coral_1997_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Sand_Key_Shallow_merge <- merge(coral_1997_Sand_Key_Shallow_coral,coral_1997_Sand_Key_Shallow_macro)
coral_1997_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_1997_Carysfort_Deep <- filter(coral_1997, sitename == "Carysfort Deep")

coral_1997_Carysfort_Deep_macro <- summarise_at(coral_1997_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Carysfort_Deep_coral <- summarise_at(coral_1997_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Carysfort_Deep_merge <- merge(coral_1997_Carysfort_Deep_coral,coral_1997_Carysfort_Deep_macro)
coral_1997_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_1997_Molasses_Deep <- filter(coral_1997, sitename == "Molasses Deep")

coral_1997_Molasses_Deep_macro <- summarise_at(coral_1997_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Molasses_Deep_coral <- summarise_at(coral_1997_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Molasses_Deep_merge <- merge(coral_1997_Molasses_Deep_coral,coral_1997_Molasses_Deep_macro)
coral_1997_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_1997_Conch_Deep <- filter(coral_1997, sitename == "Conch Deep")

coral_1997_Conch_Deep_macro <- summarise_at(coral_1997_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Conch_Deep_coral <- summarise_at(coral_1997_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Conch_Deep_merge <- merge(coral_1997_Conch_Deep_coral,coral_1997_Conch_Deep_macro)
coral_1997_Conch_Deep_merge$sitename <- "Conch Deep"



coral_1997_Alligator_Deep <- filter(coral_1997, sitename == "Alligator Deep")

coral_1997_Alligator_Deep_macro <- summarise_at(coral_1997_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Alligator_Deep_coral <- summarise_at(coral_1997_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Alligator_Deep_merge <- merge(coral_1997_Alligator_Deep_coral,coral_1997_Alligator_Deep_macro)
coral_1997_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_1997_Tennessee_Deep <- filter(coral_1997, sitename == "Tennessee Deep")

coral_1997_Tennessee_Deep_macro <- summarise_at(coral_1997_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Tennessee_Deep_coral <- summarise_at(coral_1997_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Tennessee_Deep_merge <- merge(coral_1997_Tennessee_Deep_coral,coral_1997_Tennessee_Deep_macro)
coral_1997_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_1997_Sombrero_Deep <- filter(coral_1997, sitename == "Sombrero Deep")

coral_1997_Sombrero_Deep_macro <- summarise_at(coral_1997_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Sombrero_Deep_coral <- summarise_at(coral_1997_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Sombrero_Deep_merge <- merge(coral_1997_Sombrero_Deep_coral,coral_1997_Sombrero_Deep_macro)
coral_1997_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_1997_Looe_Key_Deep <- filter(coral_1997, sitename == "Looe Key Deep")

coral_1997_Looe_Key_Deep_macro <- summarise_at(coral_1997_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Looe_Key_Deep_coral <- summarise_at(coral_1997_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Looe_Key_Deep_merge <- merge(coral_1997_Looe_Key_Deep_coral,coral_1997_Looe_Key_Deep_macro)
coral_1997_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_1997_Eastern_Sambo_Deep <- filter(coral_1997, sitename == "Eastern Sambo Deep")

coral_1997_Eastern_Sambo_Deep_macro <- summarise_at(coral_1997_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Eastern_Sambo_Deep_coral <- summarise_at(coral_1997_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Eastern_Sambo_Deep_merge <- merge(coral_1997_Eastern_Sambo_Deep_coral,coral_1997_Eastern_Sambo_Deep_macro)
coral_1997_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_1997_Western_Sambo_Deep <- filter(coral_1997, sitename == "Western Sambo Deep")

coral_1997_Western_Sambo_Deep_macro <- summarise_at(coral_1997_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Western_Sambo_Deep_coral <- summarise_at(coral_1997_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Western_Sambo_Deep_merge <- merge(coral_1997_Western_Sambo_Deep_coral,coral_1997_Western_Sambo_Deep_macro)
coral_1997_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_1997_Rock_Key_Deep <- filter(coral_1997, sitename == "Rock Key Deep")

coral_1997_Rock_Key_Deep_macro <- summarise_at(coral_1997_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Rock_Key_Deep_coral <- summarise_at(coral_1997_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Rock_Key_Deep_merge <- merge(coral_1997_Rock_Key_Deep_coral,coral_1997_Rock_Key_Deep_macro)
coral_1997_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_1997_Sand_Key_Deep <- filter(coral_1997, sitename == "Sand Key Deep")

coral_1997_Sand_Key_Deep_macro <- summarise_at(coral_1997_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1997_Sand_Key_Deep_coral <- summarise_at(coral_1997_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1997_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1997_Sand_Key_Deep_merge <- merge(coral_1997_Sand_Key_Deep_coral,coral_1997_Sand_Key_Deep_macro)
coral_1997_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_1997_merged <- rbind(coral_1997_Rattlesnake_merge,coral_1997_El_Radabob_merge,coral_1997_Dove_Key_merge,
                           coral_1997_Long_Key_merge,coral_1997_Moser_Channel_merge,coral_1997_Molasses_Keys_merge,
                           coral_1997_Content_Keys_merge,coral_1997_Turtle_merge,coral_1997_Porter_Patch_merge,
                           coral_1997_Admiral_merge,coral_1997_West_Turtle_Shoal_merge,coral_1997_Dustan_Rocks_merge,
                           coral_1997_West_Washer_Women_merge,coral_1997_Western_Head_merge,coral_1997_Cliff_Green_merge,
                           coral_1997_Smith_Shoal_merge,coral_1997_Jaap_Reef_merge,coral_1997_Carysfort_Shallow_merge,
                           coral_1997_Grecian_Rocks_merge,coral_1997_Molasses_Shallow_merge,coral_1997_Conch_Shallow_merge,
                           coral_1997_Alligator_Shallow_merge,coral_1997_Tennessee_Shallow_merge,coral_1997_Sombrero_Shallow_merge,
                           coral_1997_Looe_Key_Shallow_merge,coral_1997_Eastern_Sambo_Shallow_merge,coral_1997_Western_Sambo_Shallow_merge,
                           coral_1997_Rock_Key_Shallow_merge,coral_1997_Sand_Key_Shallow_merge,coral_1997_Carysfort_Deep_merge,
                           coral_1997_Molasses_Deep_merge,coral_1997_Conch_Deep_merge,coral_1997_Alligator_Deep_merge,
                           coral_1997_Tennessee_Deep_merge,coral_1997_Sombrero_Deep_merge,coral_1997_Looe_Key_Deep_merge,
                           coral_1997_Eastern_Sambo_Deep_merge,coral_1997_Western_Sambo_Deep_merge,coral_1997_Rock_Key_Deep_merge,
                           coral_1997_Sand_Key_Deep_merge)


coral_1997_merged$Year <- "1997"


coral_1998 <- import("1998_all.xlsx")
coral_1998<- select(coral_1998, Sample_Year, sitename, Macroalgae, Stony_coral)



coral_1998_Rattlesnake <- filter(coral_1998, sitename == "Rattlesnake")

coral_1998_Rattlesnake_macro <- summarise_at(coral_1998_Rattlesnake,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Rattlesnake_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Rattlesnake_coral <- summarise_at(coral_1998_Rattlesnake,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Rattlesnake_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Rattlesnake_merge <- merge(coral_1998_Rattlesnake_coral,coral_1998_Rattlesnake_macro)
coral_1998_Rattlesnake_merge$sitename <- "Rattlesnake"


coral_1998_El_Radabob <- filter(coral_1998, sitename == "El Radabob")

coral_1998_El_Radabob_macro <- summarise_at(coral_1998_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_El_Radabob_coral <- summarise_at(coral_1998_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_El_Radabob_coral) <- c("Coral_Average","Coral_SD")

coral_1998_El_Radabob_merge <- merge(coral_1998_El_Radabob_coral,coral_1998_El_Radabob_macro)
coral_1998_El_Radabob_merge$sitename <- "El Radabob"


coral_1998_Dove_Key <- filter(coral_1998, sitename == "Dove Key")

coral_1998_Dove_Key_macro <- summarise_at(coral_1998_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Dove_Key_coral <- summarise_at(coral_1998_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Dove_Key_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Dove_Key_merge <- merge(coral_1998_Dove_Key_coral,coral_1998_Dove_Key_macro)
coral_1998_Dove_Key_merge$sitename <- "Dove Key"


coral_1998_Long_Key <- filter(coral_1998, sitename == "Long Key")

coral_1998_Long_Key_macro <- summarise_at(coral_1998_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Long_Key_coral <- summarise_at(coral_1998_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Long_Key_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Long_Key_merge <- merge(coral_1998_Long_Key_coral,coral_1998_Long_Key_macro)
coral_1998_Long_Key_merge$sitename <- "Long Key"



coral_1998_Moser_Channel <- filter(coral_1998, sitename == "Moser Channel")

coral_1998_Moser_Channel_macro <- summarise_at(coral_1998_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Moser_Channel_coral <- summarise_at(coral_1998_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Moser_Channel_merge <- merge(coral_1998_Moser_Channel_coral,coral_1998_Moser_Channel_macro)
coral_1998_Moser_Channel_merge$sitename <- "Moser Channel"


coral_1998_Molasses_Keys <- filter(coral_1998, sitename == "Molasses Keys")

coral_1998_Molasses_Keys_macro <- summarise_at(coral_1998_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Molasses_Keys_coral <- summarise_at(coral_1998_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Molasses_Keys_merge <- merge(coral_1998_Molasses_Keys_coral,coral_1998_Molasses_Keys_macro)
coral_1998_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_1998_Content_Keys <- filter(coral_1998, sitename == "Content Keys")

coral_1998_Content_Keys_macro <- summarise_at(coral_1998_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Content_Keys_coral <- summarise_at(coral_1998_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Content_Keys_merge <- merge(coral_1998_Content_Keys_coral,coral_1998_Content_Keys_macro)
coral_1998_Content_Keys_merge$sitename <- "Content Keys"


coral_1998_Turtle <- filter(coral_1998, sitename == "Turtle")

coral_1998_Turtle_macro <- summarise_at(coral_1998_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Turtle_coral <- summarise_at(coral_1998_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Turtle_merge <- merge(coral_1998_Turtle_coral,coral_1998_Turtle_macro)
coral_1998_Turtle_merge$sitename <- "Turtle"


coral_1998_Porter_Patch <- filter(coral_1998, sitename == "Porter Patch")

coral_1998_Porter_Patch_macro <- summarise_at(coral_1998_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Porter_Patch_coral <- summarise_at(coral_1998_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Porter_Patch_merge <- merge(coral_1998_Porter_Patch_coral,coral_1998_Porter_Patch_macro)
coral_1998_Porter_Patch_merge$sitename <- "Porter Patch"


coral_1998_Admiral <- filter(coral_1998, sitename == "Admiral")

coral_1998_Admiral_macro <- summarise_at(coral_1998_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Admiral_coral <- summarise_at(coral_1998_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Admiral_merge <- merge(coral_1998_Admiral_coral,coral_1998_Admiral_macro)
coral_1998_Admiral_merge$sitename <- "Admiral"


coral_1998_West_Turtle_Shoal <- filter(coral_1998, sitename == "West Turtle Shoal")

coral_1998_West_Turtle_Shoal_macro <- summarise_at(coral_1998_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_West_Turtle_Shoal_coral <- summarise_at(coral_1998_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_1998_West_Turtle_Shoal_merge <- merge(coral_1998_West_Turtle_Shoal_coral,coral_1998_West_Turtle_Shoal_macro)
coral_1998_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_1998_Dustan_Rocks <- filter(coral_1998, sitename == "Dustan Rocks")

coral_1998_Dustan_Rocks_macro <- summarise_at(coral_1998_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Dustan_Rocks_coral <- summarise_at(coral_1998_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Dustan_Rocks_merge <- merge(coral_1998_Dustan_Rocks_coral,coral_1998_Dustan_Rocks_macro)
coral_1998_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_1998_West_Washer_Women <- filter(coral_1998, sitename == "West Washer Women")

coral_1998_West_Washer_Women_macro <- summarise_at(coral_1998_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_West_Washer_Women_coral <- summarise_at(coral_1998_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_1998_West_Washer_Women_merge <- merge(coral_1998_West_Washer_Women_coral,coral_1998_West_Washer_Women_macro)
coral_1998_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_1998_Western_Head <- filter(coral_1998, sitename == "Western Head")

coral_1998_Western_Head_macro <- summarise_at(coral_1998_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Western_Head_coral <- summarise_at(coral_1998_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Western_Head_merge <- merge(coral_1998_Western_Head_coral,coral_1998_Western_Head_macro)
coral_1998_Western_Head_merge$sitename <- "Western Head"


coral_1998_Cliff_Green <- filter(coral_1998, sitename == "Cliff Green")

coral_1998_Cliff_Green_macro <- summarise_at(coral_1998_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Cliff_Green_coral <- summarise_at(coral_1998_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Cliff_Green_merge <- merge(coral_1998_Cliff_Green_coral,coral_1998_Cliff_Green_macro)
coral_1998_Cliff_Green_merge$sitename <- "Cliff Green"


coral_1998_Smith_Shoal <- filter(coral_1998, sitename == "Smith Shoal")

coral_1998_Smith_Shoal_macro <- summarise_at(coral_1998_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Smith_Shoal_coral <- summarise_at(coral_1998_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Smith_Shoal_merge <- merge(coral_1998_Smith_Shoal_coral,coral_1998_Smith_Shoal_macro)
coral_1998_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_1998_Jaap_Reef <- filter(coral_1998, sitename == "Jaap Reef")

coral_1998_Jaap_Reef_macro <- summarise_at(coral_1998_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Jaap_Reef_coral <- summarise_at(coral_1998_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Jaap_Reef_merge <- merge(coral_1998_Jaap_Reef_coral,coral_1998_Jaap_Reef_macro)
coral_1998_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_1998_Carysfort_Shallow <- filter(coral_1998, sitename == "Carysfort Shallow")

coral_1998_Carysfort_Shallow_macro <- summarise_at(coral_1998_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Carysfort_Shallow_coral <- summarise_at(coral_1998_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Carysfort_Shallow_merge <- merge(coral_1998_Carysfort_Shallow_coral,coral_1998_Carysfort_Shallow_macro)
coral_1998_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_1998_Grecian_Rocks <- filter(coral_1998, sitename == "Grecian Rocks")

coral_1998_Grecian_Rocks_macro <- summarise_at(coral_1998_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Grecian_Rocks_coral <- summarise_at(coral_1998_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Grecian_Rocks_merge <- merge(coral_1998_Grecian_Rocks_coral,coral_1998_Grecian_Rocks_macro)
coral_1998_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_1998_Molasses_Shallow <- filter(coral_1998, sitename == "Molasses Shallow")

coral_1998_Molasses_Shallow_macro <- summarise_at(coral_1998_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Molasses_Shallow_coral <- summarise_at(coral_1998_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Molasses_Shallow_merge <- merge(coral_1998_Molasses_Shallow_coral,coral_1998_Molasses_Shallow_macro)
coral_1998_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_1998_Conch_Shallow <- filter(coral_1998, sitename == "Conch Shallow")

coral_1998_Conch_Shallow_macro <- summarise_at(coral_1998_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Conch_Shallow_coral <- summarise_at(coral_1998_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Conch_Shallow_merge <- merge(coral_1998_Conch_Shallow_coral,coral_1998_Conch_Shallow_macro)
coral_1998_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_1998_Alligator_Shallow <- filter(coral_1998, sitename == "Alligator Shallow")

coral_1998_Alligator_Shallow_macro <- summarise_at(coral_1998_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Alligator_Shallow_coral <- summarise_at(coral_1998_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Alligator_Shallow_merge <- merge(coral_1998_Alligator_Shallow_coral,coral_1998_Alligator_Shallow_macro)
coral_1998_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_1998_Tennessee_Shallow <- filter(coral_1998, sitename == "Tennessee Shallow")

coral_1998_Tennessee_Shallow_macro <- summarise_at(coral_1998_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Tennessee_Shallow_coral <- summarise_at(coral_1998_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Tennessee_Shallow_merge <- merge(coral_1998_Tennessee_Shallow_coral,coral_1998_Tennessee_Shallow_macro)
coral_1998_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_1998_Sombrero_Shallow <- filter(coral_1998, sitename == "Sombrero Shallow")

coral_1998_Sombrero_Shallow_macro <- summarise_at(coral_1998_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Sombrero_Shallow_coral <- summarise_at(coral_1998_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Sombrero_Shallow_merge <- merge(coral_1998_Sombrero_Shallow_coral,coral_1998_Sombrero_Shallow_macro)
coral_1998_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_1998_Looe_Key_Shallow <- filter(coral_1998, sitename == "Looe Key Shallow")

coral_1998_Looe_Key_Shallow_macro <- summarise_at(coral_1998_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Looe_Key_Shallow_coral <- summarise_at(coral_1998_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Looe_Key_Shallow_merge <- merge(coral_1998_Looe_Key_Shallow_coral,coral_1998_Looe_Key_Shallow_macro)
coral_1998_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_1998_Eastern_Sambo_Shallow <- filter(coral_1998, sitename == "Eastern Sambo Shallow")

coral_1998_Eastern_Sambo_Shallow_macro <- summarise_at(coral_1998_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Eastern_Sambo_Shallow_coral <- summarise_at(coral_1998_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Eastern_Sambo_Shallow_merge <- merge(coral_1998_Eastern_Sambo_Shallow_coral,coral_1998_Eastern_Sambo_Shallow_macro)
coral_1998_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_1998_Western_Sambo_Shallow <- filter(coral_1998, sitename == "Western Sambo Shallow")

coral_1998_Western_Sambo_Shallow_macro <- summarise_at(coral_1998_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Western_Sambo_Shallow_coral <- summarise_at(coral_1998_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Western_Sambo_Shallow_merge <- merge(coral_1998_Western_Sambo_Shallow_coral,coral_1998_Western_Sambo_Shallow_macro)
coral_1998_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_1998_Rock_Key_Shallow <- filter(coral_1998, sitename == "Rock Key Shallow")

coral_1998_Rock_Key_Shallow_macro <- summarise_at(coral_1998_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Rock_Key_Shallow_coral <- summarise_at(coral_1998_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Rock_Key_Shallow_merge <- merge(coral_1998_Rock_Key_Shallow_coral,coral_1998_Rock_Key_Shallow_macro)
coral_1998_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_1998_Sand_Key_Shallow <- filter(coral_1998, sitename == "Sand Key Shallow")

coral_1998_Sand_Key_Shallow_macro <- summarise_at(coral_1998_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Sand_Key_Shallow_coral <- summarise_at(coral_1998_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Sand_Key_Shallow_merge <- merge(coral_1998_Sand_Key_Shallow_coral,coral_1998_Sand_Key_Shallow_macro)
coral_1998_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_1998_Carysfort_Deep <- filter(coral_1998, sitename == "Carysfort Deep")

coral_1998_Carysfort_Deep_macro <- summarise_at(coral_1998_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Carysfort_Deep_coral <- summarise_at(coral_1998_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Carysfort_Deep_merge <- merge(coral_1998_Carysfort_Deep_coral,coral_1998_Carysfort_Deep_macro)
coral_1998_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_1998_Molasses_Deep <- filter(coral_1998, sitename == "Molasses Deep")

coral_1998_Molasses_Deep_macro <- summarise_at(coral_1998_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Molasses_Deep_coral <- summarise_at(coral_1998_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Molasses_Deep_merge <- merge(coral_1998_Molasses_Deep_coral,coral_1998_Molasses_Deep_macro)
coral_1998_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_1998_Conch_Deep <- filter(coral_1998, sitename == "Conch Deep")

coral_1998_Conch_Deep_macro <- summarise_at(coral_1998_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Conch_Deep_coral <- summarise_at(coral_1998_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Conch_Deep_merge <- merge(coral_1998_Conch_Deep_coral,coral_1998_Conch_Deep_macro)
coral_1998_Conch_Deep_merge$sitename <- "Conch Deep"



coral_1998_Alligator_Deep <- filter(coral_1998, sitename == "Alligator Deep")

coral_1998_Alligator_Deep_macro <- summarise_at(coral_1998_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Alligator_Deep_coral <- summarise_at(coral_1998_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Alligator_Deep_merge <- merge(coral_1998_Alligator_Deep_coral,coral_1998_Alligator_Deep_macro)
coral_1998_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_1998_Tennessee_Deep <- filter(coral_1998, sitename == "Tennessee Deep")

coral_1998_Tennessee_Deep_macro <- summarise_at(coral_1998_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Tennessee_Deep_coral <- summarise_at(coral_1998_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Tennessee_Deep_merge <- merge(coral_1998_Tennessee_Deep_coral,coral_1998_Tennessee_Deep_macro)
coral_1998_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_1998_Sombrero_Deep <- filter(coral_1998, sitename == "Sombrero Deep")

coral_1998_Sombrero_Deep_macro <- summarise_at(coral_1998_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Sombrero_Deep_coral <- summarise_at(coral_1998_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Sombrero_Deep_merge <- merge(coral_1998_Sombrero_Deep_coral,coral_1998_Sombrero_Deep_macro)
coral_1998_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_1998_Looe_Key_Deep <- filter(coral_1998, sitename == "Looe Key Deep")

coral_1998_Looe_Key_Deep_macro <- summarise_at(coral_1998_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Looe_Key_Deep_coral <- summarise_at(coral_1998_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Looe_Key_Deep_merge <- merge(coral_1998_Looe_Key_Deep_coral,coral_1998_Looe_Key_Deep_macro)
coral_1998_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_1998_Eastern_Sambo_Deep <- filter(coral_1998, sitename == "Eastern Sambo Deep")

coral_1998_Eastern_Sambo_Deep_macro <- summarise_at(coral_1998_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Eastern_Sambo_Deep_coral <- summarise_at(coral_1998_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Eastern_Sambo_Deep_merge <- merge(coral_1998_Eastern_Sambo_Deep_coral,coral_1998_Eastern_Sambo_Deep_macro)
coral_1998_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_1998_Western_Sambo_Deep <- filter(coral_1998, sitename == "Western Sambo Deep")

coral_1998_Western_Sambo_Deep_macro <- summarise_at(coral_1998_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Western_Sambo_Deep_coral <- summarise_at(coral_1998_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Western_Sambo_Deep_merge <- merge(coral_1998_Western_Sambo_Deep_coral,coral_1998_Western_Sambo_Deep_macro)
coral_1998_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_1998_Rock_Key_Deep <- filter(coral_1998, sitename == "Rock Key Deep")

coral_1998_Rock_Key_Deep_macro <- summarise_at(coral_1998_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Rock_Key_Deep_coral <- summarise_at(coral_1998_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Rock_Key_Deep_merge <- merge(coral_1998_Rock_Key_Deep_coral,coral_1998_Rock_Key_Deep_macro)
coral_1998_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_1998_Sand_Key_Deep <- filter(coral_1998, sitename == "Sand Key Deep")

coral_1998_Sand_Key_Deep_macro <- summarise_at(coral_1998_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1998_Sand_Key_Deep_coral <- summarise_at(coral_1998_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1998_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1998_Sand_Key_Deep_merge <- merge(coral_1998_Sand_Key_Deep_coral,coral_1998_Sand_Key_Deep_macro)
coral_1998_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_1998_merged <- rbind(coral_1998_Rattlesnake_merge,coral_1998_El_Radabob_merge,coral_1998_Dove_Key_merge,
                           coral_1998_Long_Key_merge,coral_1998_Moser_Channel_merge,coral_1998_Molasses_Keys_merge,
                           coral_1998_Content_Keys_merge,coral_1998_Turtle_merge,coral_1998_Porter_Patch_merge,
                           coral_1998_Admiral_merge,coral_1998_West_Turtle_Shoal_merge,coral_1998_Dustan_Rocks_merge,
                           coral_1998_West_Washer_Women_merge,coral_1998_Western_Head_merge,coral_1998_Cliff_Green_merge,
                           coral_1998_Smith_Shoal_merge,coral_1998_Jaap_Reef_merge,coral_1998_Carysfort_Shallow_merge,
                           coral_1998_Grecian_Rocks_merge,coral_1998_Molasses_Shallow_merge,coral_1998_Conch_Shallow_merge,
                           coral_1998_Alligator_Shallow_merge,coral_1998_Tennessee_Shallow_merge,coral_1998_Sombrero_Shallow_merge,
                           coral_1998_Looe_Key_Shallow_merge,coral_1998_Eastern_Sambo_Shallow_merge,coral_1998_Western_Sambo_Shallow_merge,
                           coral_1998_Rock_Key_Shallow_merge,coral_1998_Sand_Key_Shallow_merge,coral_1998_Carysfort_Deep_merge,
                           coral_1998_Molasses_Deep_merge,coral_1998_Conch_Deep_merge,coral_1998_Alligator_Deep_merge,
                           coral_1998_Tennessee_Deep_merge,coral_1998_Sombrero_Deep_merge,coral_1998_Looe_Key_Deep_merge,
                           coral_1998_Eastern_Sambo_Deep_merge,coral_1998_Western_Sambo_Deep_merge,coral_1998_Rock_Key_Deep_merge,
                           coral_1998_Sand_Key_Deep_merge)


coral_1998_merged$Year <- "1998"




coral_1999 <- import("1999_all.xlsx")
coral_1999<- select(coral_1999, Sample_Year, sitename, Macroalgae, Stony_coral)


### compare changes in sitenames using unique (or something better)

unique_1998 <- unique(coral_1998$sitename)
view(unique_1998)
unique_1999 <- unique(coral_1999$sitename)
view(unique_1999)

## add bird key reef, black coral rock, and white shoal 



coral_1999_Rattlesnake <- filter(coral_1999, sitename == "Rattlesnake")

coral_1999_Rattlesnake_macro <- summarise_at(coral_1999_Rattlesnake,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Rattlesnake_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Rattlesnake_coral <- summarise_at(coral_1999_Rattlesnake,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Rattlesnake_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Rattlesnake_merge <- merge(coral_1999_Rattlesnake_coral,coral_1999_Rattlesnake_macro)
coral_1999_Rattlesnake_merge$sitename <- "Rattlesnake"


coral_1999_El_Radabob <- filter(coral_1999, sitename == "El Radabob")

coral_1999_El_Radabob_macro <- summarise_at(coral_1999_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_El_Radabob_coral <- summarise_at(coral_1999_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_El_Radabob_coral) <- c("Coral_Average","Coral_SD")

coral_1999_El_Radabob_merge <- merge(coral_1999_El_Radabob_coral,coral_1999_El_Radabob_macro)
coral_1999_El_Radabob_merge$sitename <- "El Radabob"


coral_1999_Dove_Key <- filter(coral_1999, sitename == "Dove Key")

coral_1999_Dove_Key_macro <- summarise_at(coral_1999_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Dove_Key_coral <- summarise_at(coral_1999_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Dove_Key_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Dove_Key_merge <- merge(coral_1999_Dove_Key_coral,coral_1999_Dove_Key_macro)
coral_1999_Dove_Key_merge$sitename <- "Dove Key"


coral_1999_Long_Key <- filter(coral_1999, sitename == "Long Key")

coral_1999_Long_Key_macro <- summarise_at(coral_1999_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Long_Key_coral <- summarise_at(coral_1999_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Long_Key_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Long_Key_merge <- merge(coral_1999_Long_Key_coral,coral_1999_Long_Key_macro)
coral_1999_Long_Key_merge$sitename <- "Long Key"



coral_1999_Moser_Channel <- filter(coral_1999, sitename == "Moser Channel")

coral_1999_Moser_Channel_macro <- summarise_at(coral_1999_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Moser_Channel_coral <- summarise_at(coral_1999_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Moser_Channel_merge <- merge(coral_1999_Moser_Channel_coral,coral_1999_Moser_Channel_macro)
coral_1999_Moser_Channel_merge$sitename <- "Moser Channel"


coral_1999_Molasses_Keys <- filter(coral_1999, sitename == "Molasses Keys")

coral_1999_Molasses_Keys_macro <- summarise_at(coral_1999_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Molasses_Keys_coral <- summarise_at(coral_1999_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Molasses_Keys_merge <- merge(coral_1999_Molasses_Keys_coral,coral_1999_Molasses_Keys_macro)
coral_1999_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_1999_Content_Keys <- filter(coral_1999, sitename == "Content Keys")

coral_1999_Content_Keys_macro <- summarise_at(coral_1999_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Content_Keys_coral <- summarise_at(coral_1999_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Content_Keys_merge <- merge(coral_1999_Content_Keys_coral,coral_1999_Content_Keys_macro)
coral_1999_Content_Keys_merge$sitename <- "Content Keys"


coral_1999_Turtle <- filter(coral_1999, sitename == "Turtle")

coral_1999_Turtle_macro <- summarise_at(coral_1999_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Turtle_coral <- summarise_at(coral_1999_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Turtle_merge <- merge(coral_1999_Turtle_coral,coral_1999_Turtle_macro)
coral_1999_Turtle_merge$sitename <- "Turtle"


coral_1999_Porter_Patch <- filter(coral_1999, sitename == "Porter Patch")

coral_1999_Porter_Patch_macro <- summarise_at(coral_1999_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Porter_Patch_coral <- summarise_at(coral_1999_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Porter_Patch_merge <- merge(coral_1999_Porter_Patch_coral,coral_1999_Porter_Patch_macro)
coral_1999_Porter_Patch_merge$sitename <- "Porter Patch"


coral_1999_Admiral <- filter(coral_1999, sitename == "Admiral")

coral_1999_Admiral_macro <- summarise_at(coral_1999_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Admiral_coral <- summarise_at(coral_1999_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Admiral_merge <- merge(coral_1999_Admiral_coral,coral_1999_Admiral_macro)
coral_1999_Admiral_merge$sitename <- "Admiral"


coral_1999_West_Turtle_Shoal <- filter(coral_1999, sitename == "West Turtle Shoal")

coral_1999_West_Turtle_Shoal_macro <- summarise_at(coral_1999_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_West_Turtle_Shoal_coral <- summarise_at(coral_1999_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_1999_West_Turtle_Shoal_merge <- merge(coral_1999_West_Turtle_Shoal_coral,coral_1999_West_Turtle_Shoal_macro)
coral_1999_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_1999_Dustan_Rocks <- filter(coral_1999, sitename == "Dustan Rocks")

coral_1999_Dustan_Rocks_macro <- summarise_at(coral_1999_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Dustan_Rocks_coral <- summarise_at(coral_1999_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Dustan_Rocks_merge <- merge(coral_1999_Dustan_Rocks_coral,coral_1999_Dustan_Rocks_macro)
coral_1999_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_1999_West_Washer_Women <- filter(coral_1999, sitename == "West Washer Women")

coral_1999_West_Washer_Women_macro <- summarise_at(coral_1999_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_West_Washer_Women_coral <- summarise_at(coral_1999_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_1999_West_Washer_Women_merge <- merge(coral_1999_West_Washer_Women_coral,coral_1999_West_Washer_Women_macro)
coral_1999_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_1999_Western_Head <- filter(coral_1999, sitename == "Western Head")

coral_1999_Western_Head_macro <- summarise_at(coral_1999_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Western_Head_coral <- summarise_at(coral_1999_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Western_Head_merge <- merge(coral_1999_Western_Head_coral,coral_1999_Western_Head_macro)
coral_1999_Western_Head_merge$sitename <- "Western Head"


coral_1999_Cliff_Green <- filter(coral_1999, sitename == "Cliff Green")

coral_1999_Cliff_Green_macro <- summarise_at(coral_1999_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Cliff_Green_coral <- summarise_at(coral_1999_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Cliff_Green_merge <- merge(coral_1999_Cliff_Green_coral,coral_1999_Cliff_Green_macro)
coral_1999_Cliff_Green_merge$sitename <- "Cliff Green"


coral_1999_Smith_Shoal <- filter(coral_1999, sitename == "Smith Shoal")

coral_1999_Smith_Shoal_macro <- summarise_at(coral_1999_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Smith_Shoal_coral <- summarise_at(coral_1999_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Smith_Shoal_merge <- merge(coral_1999_Smith_Shoal_coral,coral_1999_Smith_Shoal_macro)
coral_1999_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_1999_Jaap_Reef <- filter(coral_1999, sitename == "Jaap Reef")

coral_1999_Jaap_Reef_macro <- summarise_at(coral_1999_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Jaap_Reef_coral <- summarise_at(coral_1999_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Jaap_Reef_merge <- merge(coral_1999_Jaap_Reef_coral,coral_1999_Jaap_Reef_macro)
coral_1999_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_1999_Carysfort_Shallow <- filter(coral_1999, sitename == "Carysfort Shallow")

coral_1999_Carysfort_Shallow_macro <- summarise_at(coral_1999_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Carysfort_Shallow_coral <- summarise_at(coral_1999_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Carysfort_Shallow_merge <- merge(coral_1999_Carysfort_Shallow_coral,coral_1999_Carysfort_Shallow_macro)
coral_1999_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_1999_Grecian_Rocks <- filter(coral_1999, sitename == "Grecian Rocks")

coral_1999_Grecian_Rocks_macro <- summarise_at(coral_1999_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Grecian_Rocks_coral <- summarise_at(coral_1999_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Grecian_Rocks_merge <- merge(coral_1999_Grecian_Rocks_coral,coral_1999_Grecian_Rocks_macro)
coral_1999_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_1999_Molasses_Shallow <- filter(coral_1999, sitename == "Molasses Shallow")

coral_1999_Molasses_Shallow_macro <- summarise_at(coral_1999_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Molasses_Shallow_coral <- summarise_at(coral_1999_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Molasses_Shallow_merge <- merge(coral_1999_Molasses_Shallow_coral,coral_1999_Molasses_Shallow_macro)
coral_1999_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_1999_Conch_Shallow <- filter(coral_1999, sitename == "Conch Shallow")

coral_1999_Conch_Shallow_macro <- summarise_at(coral_1999_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Conch_Shallow_coral <- summarise_at(coral_1999_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Conch_Shallow_merge <- merge(coral_1999_Conch_Shallow_coral,coral_1999_Conch_Shallow_macro)
coral_1999_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_1999_Alligator_Shallow <- filter(coral_1999, sitename == "Alligator Shallow")

coral_1999_Alligator_Shallow_macro <- summarise_at(coral_1999_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Alligator_Shallow_coral <- summarise_at(coral_1999_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Alligator_Shallow_merge <- merge(coral_1999_Alligator_Shallow_coral,coral_1999_Alligator_Shallow_macro)
coral_1999_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_1999_Tennessee_Shallow <- filter(coral_1999, sitename == "Tennessee Shallow")

coral_1999_Tennessee_Shallow_macro <- summarise_at(coral_1999_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Tennessee_Shallow_coral <- summarise_at(coral_1999_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Tennessee_Shallow_merge <- merge(coral_1999_Tennessee_Shallow_coral,coral_1999_Tennessee_Shallow_macro)
coral_1999_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_1999_Sombrero_Shallow <- filter(coral_1999, sitename == "Sombrero Shallow")

coral_1999_Sombrero_Shallow_macro <- summarise_at(coral_1999_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Sombrero_Shallow_coral <- summarise_at(coral_1999_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Sombrero_Shallow_merge <- merge(coral_1999_Sombrero_Shallow_coral,coral_1999_Sombrero_Shallow_macro)
coral_1999_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_1999_Looe_Key_Shallow <- filter(coral_1999, sitename == "Looe Key Shallow")

coral_1999_Looe_Key_Shallow_macro <- summarise_at(coral_1999_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Looe_Key_Shallow_coral <- summarise_at(coral_1999_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Looe_Key_Shallow_merge <- merge(coral_1999_Looe_Key_Shallow_coral,coral_1999_Looe_Key_Shallow_macro)
coral_1999_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_1999_Eastern_Sambo_Shallow <- filter(coral_1999, sitename == "Eastern Sambo Shallow")

coral_1999_Eastern_Sambo_Shallow_macro <- summarise_at(coral_1999_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Eastern_Sambo_Shallow_coral <- summarise_at(coral_1999_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Eastern_Sambo_Shallow_merge <- merge(coral_1999_Eastern_Sambo_Shallow_coral,coral_1999_Eastern_Sambo_Shallow_macro)
coral_1999_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_1999_Western_Sambo_Shallow <- filter(coral_1999, sitename == "Western Sambo Shallow")

coral_1999_Western_Sambo_Shallow_macro <- summarise_at(coral_1999_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Western_Sambo_Shallow_coral <- summarise_at(coral_1999_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Western_Sambo_Shallow_merge <- merge(coral_1999_Western_Sambo_Shallow_coral,coral_1999_Western_Sambo_Shallow_macro)
coral_1999_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_1999_Rock_Key_Shallow <- filter(coral_1999, sitename == "Rock Key Shallow")

coral_1999_Rock_Key_Shallow_macro <- summarise_at(coral_1999_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Rock_Key_Shallow_coral <- summarise_at(coral_1999_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Rock_Key_Shallow_merge <- merge(coral_1999_Rock_Key_Shallow_coral,coral_1999_Rock_Key_Shallow_macro)
coral_1999_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_1999_Sand_Key_Shallow <- filter(coral_1999, sitename == "Sand Key Shallow")

coral_1999_Sand_Key_Shallow_macro <- summarise_at(coral_1999_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Sand_Key_Shallow_coral <- summarise_at(coral_1999_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Sand_Key_Shallow_merge <- merge(coral_1999_Sand_Key_Shallow_coral,coral_1999_Sand_Key_Shallow_macro)
coral_1999_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_1999_Carysfort_Deep <- filter(coral_1999, sitename == "Carysfort Deep")

coral_1999_Carysfort_Deep_macro <- summarise_at(coral_1999_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Carysfort_Deep_coral <- summarise_at(coral_1999_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Carysfort_Deep_merge <- merge(coral_1999_Carysfort_Deep_coral,coral_1999_Carysfort_Deep_macro)
coral_1999_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_1999_Molasses_Deep <- filter(coral_1999, sitename == "Molasses Deep")

coral_1999_Molasses_Deep_macro <- summarise_at(coral_1999_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Molasses_Deep_coral <- summarise_at(coral_1999_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Molasses_Deep_merge <- merge(coral_1999_Molasses_Deep_coral,coral_1999_Molasses_Deep_macro)
coral_1999_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_1999_Conch_Deep <- filter(coral_1999, sitename == "Conch Deep")

coral_1999_Conch_Deep_macro <- summarise_at(coral_1999_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Conch_Deep_coral <- summarise_at(coral_1999_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Conch_Deep_merge <- merge(coral_1999_Conch_Deep_coral,coral_1999_Conch_Deep_macro)
coral_1999_Conch_Deep_merge$sitename <- "Conch Deep"



coral_1999_Alligator_Deep <- filter(coral_1999, sitename == "Alligator Deep")

coral_1999_Alligator_Deep_macro <- summarise_at(coral_1999_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Alligator_Deep_coral <- summarise_at(coral_1999_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Alligator_Deep_merge <- merge(coral_1999_Alligator_Deep_coral,coral_1999_Alligator_Deep_macro)
coral_1999_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_1999_Tennessee_Deep <- filter(coral_1999, sitename == "Tennessee Deep")

coral_1999_Tennessee_Deep_macro <- summarise_at(coral_1999_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Tennessee_Deep_coral <- summarise_at(coral_1999_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Tennessee_Deep_merge <- merge(coral_1999_Tennessee_Deep_coral,coral_1999_Tennessee_Deep_macro)
coral_1999_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_1999_Sombrero_Deep <- filter(coral_1999, sitename == "Sombrero Deep")

coral_1999_Sombrero_Deep_macro <- summarise_at(coral_1999_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Sombrero_Deep_coral <- summarise_at(coral_1999_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Sombrero_Deep_merge <- merge(coral_1999_Sombrero_Deep_coral,coral_1999_Sombrero_Deep_macro)
coral_1999_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_1999_Looe_Key_Deep <- filter(coral_1999, sitename == "Looe Key Deep")

coral_1999_Looe_Key_Deep_macro <- summarise_at(coral_1999_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Looe_Key_Deep_coral <- summarise_at(coral_1999_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Looe_Key_Deep_merge <- merge(coral_1999_Looe_Key_Deep_coral,coral_1999_Looe_Key_Deep_macro)
coral_1999_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_1999_Eastern_Sambo_Deep <- filter(coral_1999, sitename == "Eastern Sambo Deep")

coral_1999_Eastern_Sambo_Deep_macro <- summarise_at(coral_1999_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Eastern_Sambo_Deep_coral <- summarise_at(coral_1999_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Eastern_Sambo_Deep_merge <- merge(coral_1999_Eastern_Sambo_Deep_coral,coral_1999_Eastern_Sambo_Deep_macro)
coral_1999_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_1999_Western_Sambo_Deep <- filter(coral_1999, sitename == "Western Sambo Deep")

coral_1999_Western_Sambo_Deep_macro <- summarise_at(coral_1999_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Western_Sambo_Deep_coral <- summarise_at(coral_1999_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Western_Sambo_Deep_merge <- merge(coral_1999_Western_Sambo_Deep_coral,coral_1999_Western_Sambo_Deep_macro)
coral_1999_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_1999_Rock_Key_Deep <- filter(coral_1999, sitename == "Rock Key Deep")

coral_1999_Rock_Key_Deep_macro <- summarise_at(coral_1999_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Rock_Key_Deep_coral <- summarise_at(coral_1999_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Rock_Key_Deep_merge <- merge(coral_1999_Rock_Key_Deep_coral,coral_1999_Rock_Key_Deep_macro)
coral_1999_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_1999_Sand_Key_Deep <- filter(coral_1999, sitename == "Sand Key Deep")

coral_1999_Sand_Key_Deep_macro <- summarise_at(coral_1999_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Sand_Key_Deep_coral <- summarise_at(coral_1999_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Sand_Key_Deep_merge <- merge(coral_1999_Sand_Key_Deep_coral,coral_1999_Sand_Key_Deep_macro)
coral_1999_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_1999_Bird_Key_Reef <- filter(coral_1999, sitename == "Bird Key Reef")

coral_1999_Bird_Key_Reef_macro <- summarise_at(coral_1999_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Bird_Key_Reef_coral <- summarise_at(coral_1999_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Bird_Key_Reef_merge <- merge(coral_1999_Bird_Key_Reef_coral,coral_1999_Bird_Key_Reef_macro)
coral_1999_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_1999_Black_Coral_Rock <- filter(coral_1999, sitename == "Black Coral Rock")

coral_1999_Black_Coral_Rock_macro <- summarise_at(coral_1999_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_Black_Coral_Rock_coral <- summarise_at(coral_1999_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_1999_Black_Coral_Rock_merge <- merge(coral_1999_Black_Coral_Rock_coral,coral_1999_Black_Coral_Rock_macro)
coral_1999_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_1999_White_Shoal <- filter(coral_1999, sitename == "White Shoal")

coral_1999_White_Shoal_macro <- summarise_at(coral_1999_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_1999_White_Shoal_coral <- summarise_at(coral_1999_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_1999_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_1999_White_Shoal_merge <- merge(coral_1999_White_Shoal_coral,coral_1999_White_Shoal_macro)
coral_1999_White_Shoal_merge$sitename <- "White Shoal"




coral_1999_merged <- rbind(coral_1999_Rattlesnake_merge,coral_1999_El_Radabob_merge,coral_1999_Dove_Key_merge,
                           coral_1999_Long_Key_merge,coral_1999_Moser_Channel_merge,coral_1999_Molasses_Keys_merge,
                           coral_1999_Content_Keys_merge,coral_1999_Turtle_merge,coral_1999_Porter_Patch_merge,
                           coral_1999_Admiral_merge,coral_1999_West_Turtle_Shoal_merge,coral_1999_Dustan_Rocks_merge,
                           coral_1999_West_Washer_Women_merge,coral_1999_Western_Head_merge,coral_1999_Cliff_Green_merge,
                           coral_1999_Smith_Shoal_merge,coral_1999_Jaap_Reef_merge,coral_1999_Carysfort_Shallow_merge,
                           coral_1999_Grecian_Rocks_merge,coral_1999_Molasses_Shallow_merge,coral_1999_Conch_Shallow_merge,
                           coral_1999_Alligator_Shallow_merge,coral_1999_Tennessee_Shallow_merge,coral_1999_Sombrero_Shallow_merge,
                           coral_1999_Looe_Key_Shallow_merge,coral_1999_Eastern_Sambo_Shallow_merge,coral_1999_Western_Sambo_Shallow_merge,
                           coral_1999_Rock_Key_Shallow_merge,coral_1999_Sand_Key_Shallow_merge,coral_1999_Carysfort_Deep_merge,
                           coral_1999_Molasses_Deep_merge,coral_1999_Conch_Deep_merge,coral_1999_Alligator_Deep_merge,
                           coral_1999_Tennessee_Deep_merge,coral_1999_Sombrero_Deep_merge,coral_1999_Looe_Key_Deep_merge,
                           coral_1999_Eastern_Sambo_Deep_merge,coral_1999_Western_Sambo_Deep_merge,coral_1999_Rock_Key_Deep_merge,
                           coral_1999_Sand_Key_Deep_merge,coral_1999_Bird_Key_Reef_merge,coral_1999_Black_Coral_Rock_merge,
                           coral_1999_White_Shoal_merge)


coral_1999_merged$Year <- "1999"




coral_2000 <- import("2000_all.xlsx")
coral_2000<- select(coral_2000, Sample_Year, sitename, Macroalgae, Stony_coral)


### compare changes in sitenames using unique (or something better)

unique_1999 <- unique(coral_1999$sitename)
view(unique_1999)
unique_2000 <- unique(coral_2000$sitename)
view(unique_2000)




coral_2000_Rattlesnake <- filter(coral_2000, sitename == "Rattlesnake")

coral_2000_Rattlesnake_macro <- summarise_at(coral_2000_Rattlesnake,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Rattlesnake_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Rattlesnake_coral <- summarise_at(coral_2000_Rattlesnake,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Rattlesnake_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Rattlesnake_merge <- merge(coral_2000_Rattlesnake_coral,coral_2000_Rattlesnake_macro)
coral_2000_Rattlesnake_merge$sitename <- "Rattlesnake"


coral_2000_El_Radabob <- filter(coral_2000, sitename == "El Radabob")

coral_2000_El_Radabob_macro <- summarise_at(coral_2000_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_El_Radabob_coral <- summarise_at(coral_2000_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_El_Radabob_coral) <- c("Coral_Average","Coral_SD")

coral_2000_El_Radabob_merge <- merge(coral_2000_El_Radabob_coral,coral_2000_El_Radabob_macro)
coral_2000_El_Radabob_merge$sitename <- "El Radabob"


coral_2000_Dove_Key <- filter(coral_2000, sitename == "Dove Key")

coral_2000_Dove_Key_macro <- summarise_at(coral_2000_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Dove_Key_coral <- summarise_at(coral_2000_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Dove_Key_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Dove_Key_merge <- merge(coral_2000_Dove_Key_coral,coral_2000_Dove_Key_macro)
coral_2000_Dove_Key_merge$sitename <- "Dove Key"


coral_2000_Long_Key <- filter(coral_2000, sitename == "Long Key")

coral_2000_Long_Key_macro <- summarise_at(coral_2000_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Long_Key_coral <- summarise_at(coral_2000_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Long_Key_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Long_Key_merge <- merge(coral_2000_Long_Key_coral,coral_2000_Long_Key_macro)
coral_2000_Long_Key_merge$sitename <- "Long Key"



coral_2000_Moser_Channel <- filter(coral_2000, sitename == "Moser Channel")

coral_2000_Moser_Channel_macro <- summarise_at(coral_2000_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Moser_Channel_coral <- summarise_at(coral_2000_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Moser_Channel_merge <- merge(coral_2000_Moser_Channel_coral,coral_2000_Moser_Channel_macro)
coral_2000_Moser_Channel_merge$sitename <- "Moser Channel"


coral_2000_Molasses_Keys <- filter(coral_2000, sitename == "Molasses Keys")

coral_2000_Molasses_Keys_macro <- summarise_at(coral_2000_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Molasses_Keys_coral <- summarise_at(coral_2000_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Molasses_Keys_merge <- merge(coral_2000_Molasses_Keys_coral,coral_2000_Molasses_Keys_macro)
coral_2000_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2000_Content_Keys <- filter(coral_2000, sitename == "Content Keys")

coral_2000_Content_Keys_macro <- summarise_at(coral_2000_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Content_Keys_coral <- summarise_at(coral_2000_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Content_Keys_merge <- merge(coral_2000_Content_Keys_coral,coral_2000_Content_Keys_macro)
coral_2000_Content_Keys_merge$sitename <- "Content Keys"


coral_2000_Turtle <- filter(coral_2000, sitename == "Turtle")

coral_2000_Turtle_macro <- summarise_at(coral_2000_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Turtle_coral <- summarise_at(coral_2000_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Turtle_merge <- merge(coral_2000_Turtle_coral,coral_2000_Turtle_macro)
coral_2000_Turtle_merge$sitename <- "Turtle"


coral_2000_Porter_Patch <- filter(coral_2000, sitename == "Porter Patch")

coral_2000_Porter_Patch_macro <- summarise_at(coral_2000_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Porter_Patch_coral <- summarise_at(coral_2000_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Porter_Patch_merge <- merge(coral_2000_Porter_Patch_coral,coral_2000_Porter_Patch_macro)
coral_2000_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2000_Admiral <- filter(coral_2000, sitename == "Admiral")

coral_2000_Admiral_macro <- summarise_at(coral_2000_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Admiral_coral <- summarise_at(coral_2000_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Admiral_merge <- merge(coral_2000_Admiral_coral,coral_2000_Admiral_macro)
coral_2000_Admiral_merge$sitename <- "Admiral"


coral_2000_West_Turtle_Shoal <- filter(coral_2000, sitename == "West Turtle Shoal")

coral_2000_West_Turtle_Shoal_macro <- summarise_at(coral_2000_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_West_Turtle_Shoal_coral <- summarise_at(coral_2000_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2000_West_Turtle_Shoal_merge <- merge(coral_2000_West_Turtle_Shoal_coral,coral_2000_West_Turtle_Shoal_macro)
coral_2000_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2000_Dustan_Rocks <- filter(coral_2000, sitename == "Dustan Rocks")

coral_2000_Dustan_Rocks_macro <- summarise_at(coral_2000_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Dustan_Rocks_coral <- summarise_at(coral_2000_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Dustan_Rocks_merge <- merge(coral_2000_Dustan_Rocks_coral,coral_2000_Dustan_Rocks_macro)
coral_2000_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2000_West_Washer_Women <- filter(coral_2000, sitename == "West Washer Women")

coral_2000_West_Washer_Women_macro <- summarise_at(coral_2000_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_West_Washer_Women_coral <- summarise_at(coral_2000_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2000_West_Washer_Women_merge <- merge(coral_2000_West_Washer_Women_coral,coral_2000_West_Washer_Women_macro)
coral_2000_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2000_Western_Head <- filter(coral_2000, sitename == "Western Head")

coral_2000_Western_Head_macro <- summarise_at(coral_2000_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Western_Head_coral <- summarise_at(coral_2000_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Western_Head_merge <- merge(coral_2000_Western_Head_coral,coral_2000_Western_Head_macro)
coral_2000_Western_Head_merge$sitename <- "Western Head"


coral_2000_Cliff_Green <- filter(coral_2000, sitename == "Cliff Green")

coral_2000_Cliff_Green_macro <- summarise_at(coral_2000_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Cliff_Green_coral <- summarise_at(coral_2000_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Cliff_Green_merge <- merge(coral_2000_Cliff_Green_coral,coral_2000_Cliff_Green_macro)
coral_2000_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2000_Smith_Shoal <- filter(coral_2000, sitename == "Smith Shoal")

coral_2000_Smith_Shoal_macro <- summarise_at(coral_2000_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Smith_Shoal_coral <- summarise_at(coral_2000_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Smith_Shoal_merge <- merge(coral_2000_Smith_Shoal_coral,coral_2000_Smith_Shoal_macro)
coral_2000_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2000_Jaap_Reef <- filter(coral_2000, sitename == "Jaap Reef")

coral_2000_Jaap_Reef_macro <- summarise_at(coral_2000_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Jaap_Reef_coral <- summarise_at(coral_2000_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Jaap_Reef_merge <- merge(coral_2000_Jaap_Reef_coral,coral_2000_Jaap_Reef_macro)
coral_2000_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2000_Carysfort_Shallow <- filter(coral_2000, sitename == "Carysfort Shallow")

coral_2000_Carysfort_Shallow_macro <- summarise_at(coral_2000_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Carysfort_Shallow_coral <- summarise_at(coral_2000_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Carysfort_Shallow_merge <- merge(coral_2000_Carysfort_Shallow_coral,coral_2000_Carysfort_Shallow_macro)
coral_2000_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2000_Grecian_Rocks <- filter(coral_2000, sitename == "Grecian Rocks")

coral_2000_Grecian_Rocks_macro <- summarise_at(coral_2000_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Grecian_Rocks_coral <- summarise_at(coral_2000_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Grecian_Rocks_merge <- merge(coral_2000_Grecian_Rocks_coral,coral_2000_Grecian_Rocks_macro)
coral_2000_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2000_Molasses_Shallow <- filter(coral_2000, sitename == "Molasses Shallow")

coral_2000_Molasses_Shallow_macro <- summarise_at(coral_2000_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Molasses_Shallow_coral <- summarise_at(coral_2000_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Molasses_Shallow_merge <- merge(coral_2000_Molasses_Shallow_coral,coral_2000_Molasses_Shallow_macro)
coral_2000_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2000_Conch_Shallow <- filter(coral_2000, sitename == "Conch Shallow")

coral_2000_Conch_Shallow_macro <- summarise_at(coral_2000_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Conch_Shallow_coral <- summarise_at(coral_2000_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Conch_Shallow_merge <- merge(coral_2000_Conch_Shallow_coral,coral_2000_Conch_Shallow_macro)
coral_2000_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2000_Alligator_Shallow <- filter(coral_2000, sitename == "Alligator Shallow")

coral_2000_Alligator_Shallow_macro <- summarise_at(coral_2000_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Alligator_Shallow_coral <- summarise_at(coral_2000_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Alligator_Shallow_merge <- merge(coral_2000_Alligator_Shallow_coral,coral_2000_Alligator_Shallow_macro)
coral_2000_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2000_Tennessee_Shallow <- filter(coral_2000, sitename == "Tennessee Shallow")

coral_2000_Tennessee_Shallow_macro <- summarise_at(coral_2000_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Tennessee_Shallow_coral <- summarise_at(coral_2000_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Tennessee_Shallow_merge <- merge(coral_2000_Tennessee_Shallow_coral,coral_2000_Tennessee_Shallow_macro)
coral_2000_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2000_Sombrero_Shallow <- filter(coral_2000, sitename == "Sombrero Shallow")

coral_2000_Sombrero_Shallow_macro <- summarise_at(coral_2000_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Sombrero_Shallow_coral <- summarise_at(coral_2000_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Sombrero_Shallow_merge <- merge(coral_2000_Sombrero_Shallow_coral,coral_2000_Sombrero_Shallow_macro)
coral_2000_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2000_Looe_Key_Shallow <- filter(coral_2000, sitename == "Looe Key Shallow")

coral_2000_Looe_Key_Shallow_macro <- summarise_at(coral_2000_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Looe_Key_Shallow_coral <- summarise_at(coral_2000_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Looe_Key_Shallow_merge <- merge(coral_2000_Looe_Key_Shallow_coral,coral_2000_Looe_Key_Shallow_macro)
coral_2000_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2000_Eastern_Sambo_Shallow <- filter(coral_2000, sitename == "Eastern Sambo Shallow")

coral_2000_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2000_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2000_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Eastern_Sambo_Shallow_merge <- merge(coral_2000_Eastern_Sambo_Shallow_coral,coral_2000_Eastern_Sambo_Shallow_macro)
coral_2000_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2000_Western_Sambo_Shallow <- filter(coral_2000, sitename == "Western Sambo Shallow")

coral_2000_Western_Sambo_Shallow_macro <- summarise_at(coral_2000_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Western_Sambo_Shallow_coral <- summarise_at(coral_2000_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Western_Sambo_Shallow_merge <- merge(coral_2000_Western_Sambo_Shallow_coral,coral_2000_Western_Sambo_Shallow_macro)
coral_2000_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2000_Rock_Key_Shallow <- filter(coral_2000, sitename == "Rock Key Shallow")

coral_2000_Rock_Key_Shallow_macro <- summarise_at(coral_2000_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Rock_Key_Shallow_coral <- summarise_at(coral_2000_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Rock_Key_Shallow_merge <- merge(coral_2000_Rock_Key_Shallow_coral,coral_2000_Rock_Key_Shallow_macro)
coral_2000_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2000_Sand_Key_Shallow <- filter(coral_2000, sitename == "Sand Key Shallow")

coral_2000_Sand_Key_Shallow_macro <- summarise_at(coral_2000_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Sand_Key_Shallow_coral <- summarise_at(coral_2000_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Sand_Key_Shallow_merge <- merge(coral_2000_Sand_Key_Shallow_coral,coral_2000_Sand_Key_Shallow_macro)
coral_2000_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2000_Carysfort_Deep <- filter(coral_2000, sitename == "Carysfort Deep")

coral_2000_Carysfort_Deep_macro <- summarise_at(coral_2000_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Carysfort_Deep_coral <- summarise_at(coral_2000_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Carysfort_Deep_merge <- merge(coral_2000_Carysfort_Deep_coral,coral_2000_Carysfort_Deep_macro)
coral_2000_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2000_Molasses_Deep <- filter(coral_2000, sitename == "Molasses Deep")

coral_2000_Molasses_Deep_macro <- summarise_at(coral_2000_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Molasses_Deep_coral <- summarise_at(coral_2000_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Molasses_Deep_merge <- merge(coral_2000_Molasses_Deep_coral,coral_2000_Molasses_Deep_macro)
coral_2000_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2000_Conch_Deep <- filter(coral_2000, sitename == "Conch Deep")

coral_2000_Conch_Deep_macro <- summarise_at(coral_2000_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Conch_Deep_coral <- summarise_at(coral_2000_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Conch_Deep_merge <- merge(coral_2000_Conch_Deep_coral,coral_2000_Conch_Deep_macro)
coral_2000_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2000_Alligator_Deep <- filter(coral_2000, sitename == "Alligator Deep")

coral_2000_Alligator_Deep_macro <- summarise_at(coral_2000_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Alligator_Deep_coral <- summarise_at(coral_2000_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Alligator_Deep_merge <- merge(coral_2000_Alligator_Deep_coral,coral_2000_Alligator_Deep_macro)
coral_2000_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2000_Tennessee_Deep <- filter(coral_2000, sitename == "Tennessee Deep")

coral_2000_Tennessee_Deep_macro <- summarise_at(coral_2000_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Tennessee_Deep_coral <- summarise_at(coral_2000_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Tennessee_Deep_merge <- merge(coral_2000_Tennessee_Deep_coral,coral_2000_Tennessee_Deep_macro)
coral_2000_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2000_Sombrero_Deep <- filter(coral_2000, sitename == "Sombrero Deep")

coral_2000_Sombrero_Deep_macro <- summarise_at(coral_2000_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Sombrero_Deep_coral <- summarise_at(coral_2000_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Sombrero_Deep_merge <- merge(coral_2000_Sombrero_Deep_coral,coral_2000_Sombrero_Deep_macro)
coral_2000_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2000_Looe_Key_Deep <- filter(coral_2000, sitename == "Looe Key Deep")

coral_2000_Looe_Key_Deep_macro <- summarise_at(coral_2000_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Looe_Key_Deep_coral <- summarise_at(coral_2000_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Looe_Key_Deep_merge <- merge(coral_2000_Looe_Key_Deep_coral,coral_2000_Looe_Key_Deep_macro)
coral_2000_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2000_Eastern_Sambo_Deep <- filter(coral_2000, sitename == "Eastern Sambo Deep")

coral_2000_Eastern_Sambo_Deep_macro <- summarise_at(coral_2000_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Eastern_Sambo_Deep_coral <- summarise_at(coral_2000_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Eastern_Sambo_Deep_merge <- merge(coral_2000_Eastern_Sambo_Deep_coral,coral_2000_Eastern_Sambo_Deep_macro)
coral_2000_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2000_Western_Sambo_Deep <- filter(coral_2000, sitename == "Western Sambo Deep")

coral_2000_Western_Sambo_Deep_macro <- summarise_at(coral_2000_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Western_Sambo_Deep_coral <- summarise_at(coral_2000_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Western_Sambo_Deep_merge <- merge(coral_2000_Western_Sambo_Deep_coral,coral_2000_Western_Sambo_Deep_macro)
coral_2000_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2000_Rock_Key_Deep <- filter(coral_2000, sitename == "Rock Key Deep")

coral_2000_Rock_Key_Deep_macro <- summarise_at(coral_2000_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Rock_Key_Deep_coral <- summarise_at(coral_2000_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Rock_Key_Deep_merge <- merge(coral_2000_Rock_Key_Deep_coral,coral_2000_Rock_Key_Deep_macro)
coral_2000_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2000_Sand_Key_Deep <- filter(coral_2000, sitename == "Sand Key Deep")

coral_2000_Sand_Key_Deep_macro <- summarise_at(coral_2000_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Sand_Key_Deep_coral <- summarise_at(coral_2000_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Sand_Key_Deep_merge <- merge(coral_2000_Sand_Key_Deep_coral,coral_2000_Sand_Key_Deep_macro)
coral_2000_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2000_Bird_Key_Reef <- filter(coral_2000, sitename == "Bird Key Reef")

coral_2000_Bird_Key_Reef_macro <- summarise_at(coral_2000_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Bird_Key_Reef_coral <- summarise_at(coral_2000_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Bird_Key_Reef_merge <- merge(coral_2000_Bird_Key_Reef_coral,coral_2000_Bird_Key_Reef_macro)
coral_2000_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2000_Black_Coral_Rock <- filter(coral_2000, sitename == "Black Coral Rock")

coral_2000_Black_Coral_Rock_macro <- summarise_at(coral_2000_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_Black_Coral_Rock_coral <- summarise_at(coral_2000_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2000_Black_Coral_Rock_merge <- merge(coral_2000_Black_Coral_Rock_coral,coral_2000_Black_Coral_Rock_macro)
coral_2000_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2000_White_Shoal <- filter(coral_2000, sitename == "White Shoal")

coral_2000_White_Shoal_macro <- summarise_at(coral_2000_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2000_White_Shoal_coral <- summarise_at(coral_2000_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2000_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2000_White_Shoal_merge <- merge(coral_2000_White_Shoal_coral,coral_2000_White_Shoal_macro)
coral_2000_White_Shoal_merge$sitename <- "White Shoal"




coral_2000_merged <- rbind(coral_2000_Rattlesnake_merge,coral_2000_El_Radabob_merge,coral_2000_Dove_Key_merge,
                           coral_2000_Long_Key_merge,coral_2000_Moser_Channel_merge,coral_2000_Molasses_Keys_merge,
                           coral_2000_Content_Keys_merge,coral_2000_Turtle_merge,coral_2000_Porter_Patch_merge,
                           coral_2000_Admiral_merge,coral_2000_West_Turtle_Shoal_merge,coral_2000_Dustan_Rocks_merge,
                           coral_2000_West_Washer_Women_merge,coral_2000_Western_Head_merge,coral_2000_Cliff_Green_merge,
                           coral_2000_Smith_Shoal_merge,coral_2000_Jaap_Reef_merge,coral_2000_Carysfort_Shallow_merge,
                           coral_2000_Grecian_Rocks_merge,coral_2000_Molasses_Shallow_merge,coral_2000_Conch_Shallow_merge,
                           coral_2000_Alligator_Shallow_merge,coral_2000_Tennessee_Shallow_merge,coral_2000_Sombrero_Shallow_merge,
                           coral_2000_Looe_Key_Shallow_merge,coral_2000_Eastern_Sambo_Shallow_merge,coral_2000_Western_Sambo_Shallow_merge,
                           coral_2000_Rock_Key_Shallow_merge,coral_2000_Sand_Key_Shallow_merge,coral_2000_Carysfort_Deep_merge,
                           coral_2000_Molasses_Deep_merge,coral_2000_Conch_Deep_merge,coral_2000_Alligator_Deep_merge,
                           coral_2000_Tennessee_Deep_merge,coral_2000_Sombrero_Deep_merge,coral_2000_Looe_Key_Deep_merge,
                           coral_2000_Eastern_Sambo_Deep_merge,coral_2000_Western_Sambo_Deep_merge,coral_2000_Rock_Key_Deep_merge,
                           coral_2000_Sand_Key_Deep_merge,coral_2000_Bird_Key_Reef_merge,coral_2000_Black_Coral_Rock_merge,
                           coral_2000_White_Shoal_merge)


coral_2000_merged$Year <- "2000"



coral_2001 <- import("2001_all.xlsx")
coral_2001 <- select(coral_2000, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2000 <- unique(coral_2000$sitename)
view(unique_2000)
unique_2001 <- unique(coral_2001$sitename)
view(unique_2001)


coral_2001_Rattlesnake <- filter(coral_2001, sitename == "Rattlesnake")

coral_2001_Rattlesnake_macro <- summarise_at(coral_2001_Rattlesnake,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Rattlesnake_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Rattlesnake_coral <- summarise_at(coral_2001_Rattlesnake,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Rattlesnake_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Rattlesnake_merge <- merge(coral_2001_Rattlesnake_coral,coral_2001_Rattlesnake_macro)
coral_2001_Rattlesnake_merge$sitename <- "Rattlesnake"


coral_2001_El_Radabob <- filter(coral_2001, sitename == "El Radabob")

coral_2001_El_Radabob_macro <- summarise_at(coral_2001_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_El_Radabob_coral <- summarise_at(coral_2001_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_El_Radabob_coral) <- c("Coral_Average","Coral_SD")

coral_2001_El_Radabob_merge <- merge(coral_2001_El_Radabob_coral,coral_2001_El_Radabob_macro)
coral_2001_El_Radabob_merge$sitename <- "El Radabob"


coral_2001_Dove_Key <- filter(coral_2001, sitename == "Dove Key")

coral_2001_Dove_Key_macro <- summarise_at(coral_2001_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Dove_Key_coral <- summarise_at(coral_2001_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Dove_Key_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Dove_Key_merge <- merge(coral_2001_Dove_Key_coral,coral_2001_Dove_Key_macro)
coral_2001_Dove_Key_merge$sitename <- "Dove Key"


coral_2001_Long_Key <- filter(coral_2001, sitename == "Long Key")

coral_2001_Long_Key_macro <- summarise_at(coral_2001_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Long_Key_coral <- summarise_at(coral_2001_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Long_Key_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Long_Key_merge <- merge(coral_2001_Long_Key_coral,coral_2001_Long_Key_macro)
coral_2001_Long_Key_merge$sitename <- "Long Key"



coral_2001_Moser_Channel <- filter(coral_2001, sitename == "Moser Channel")

coral_2001_Moser_Channel_macro <- summarise_at(coral_2001_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Moser_Channel_coral <- summarise_at(coral_2001_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Moser_Channel_merge <- merge(coral_2001_Moser_Channel_coral,coral_2001_Moser_Channel_macro)
coral_2001_Moser_Channel_merge$sitename <- "Moser Channel"


coral_2001_Molasses_Keys <- filter(coral_2001, sitename == "Molasses Keys")

coral_2001_Molasses_Keys_macro <- summarise_at(coral_2001_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Molasses_Keys_coral <- summarise_at(coral_2001_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Molasses_Keys_merge <- merge(coral_2001_Molasses_Keys_coral,coral_2001_Molasses_Keys_macro)
coral_2001_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2001_Content_Keys <- filter(coral_2001, sitename == "Content Keys")

coral_2001_Content_Keys_macro <- summarise_at(coral_2001_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Content_Keys_coral <- summarise_at(coral_2001_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Content_Keys_merge <- merge(coral_2001_Content_Keys_coral,coral_2001_Content_Keys_macro)
coral_2001_Content_Keys_merge$sitename <- "Content Keys"


coral_2001_Turtle <- filter(coral_2001, sitename == "Turtle")

coral_2001_Turtle_macro <- summarise_at(coral_2001_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Turtle_coral <- summarise_at(coral_2001_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Turtle_merge <- merge(coral_2001_Turtle_coral,coral_2001_Turtle_macro)
coral_2001_Turtle_merge$sitename <- "Turtle"


coral_2001_Porter_Patch <- filter(coral_2001, sitename == "Porter Patch")

coral_2001_Porter_Patch_macro <- summarise_at(coral_2001_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Porter_Patch_coral <- summarise_at(coral_2001_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Porter_Patch_merge <- merge(coral_2001_Porter_Patch_coral,coral_2001_Porter_Patch_macro)
coral_2001_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2001_Admiral <- filter(coral_2001, sitename == "Admiral")

coral_2001_Admiral_macro <- summarise_at(coral_2001_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Admiral_coral <- summarise_at(coral_2001_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Admiral_merge <- merge(coral_2001_Admiral_coral,coral_2001_Admiral_macro)
coral_2001_Admiral_merge$sitename <- "Admiral"


coral_2001_West_Turtle_Shoal <- filter(coral_2001, sitename == "West Turtle Shoal")

coral_2001_West_Turtle_Shoal_macro <- summarise_at(coral_2001_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_West_Turtle_Shoal_coral <- summarise_at(coral_2001_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2001_West_Turtle_Shoal_merge <- merge(coral_2001_West_Turtle_Shoal_coral,coral_2001_West_Turtle_Shoal_macro)
coral_2001_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2001_Dustan_Rocks <- filter(coral_2001, sitename == "Dustan Rocks")

coral_2001_Dustan_Rocks_macro <- summarise_at(coral_2001_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Dustan_Rocks_coral <- summarise_at(coral_2001_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Dustan_Rocks_merge <- merge(coral_2001_Dustan_Rocks_coral,coral_2001_Dustan_Rocks_macro)
coral_2001_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2001_West_Washer_Women <- filter(coral_2001, sitename == "West Washer Women")

coral_2001_West_Washer_Women_macro <- summarise_at(coral_2001_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_West_Washer_Women_coral <- summarise_at(coral_2001_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2001_West_Washer_Women_merge <- merge(coral_2001_West_Washer_Women_coral,coral_2001_West_Washer_Women_macro)
coral_2001_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2001_Western_Head <- filter(coral_2001, sitename == "Western Head")

coral_2001_Western_Head_macro <- summarise_at(coral_2001_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Western_Head_coral <- summarise_at(coral_2001_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Western_Head_merge <- merge(coral_2001_Western_Head_coral,coral_2001_Western_Head_macro)
coral_2001_Western_Head_merge$sitename <- "Western Head"


coral_2001_Cliff_Green <- filter(coral_2001, sitename == "Cliff Green")

coral_2001_Cliff_Green_macro <- summarise_at(coral_2001_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Cliff_Green_coral <- summarise_at(coral_2001_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Cliff_Green_merge <- merge(coral_2001_Cliff_Green_coral,coral_2001_Cliff_Green_macro)
coral_2001_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2001_Smith_Shoal <- filter(coral_2001, sitename == "Smith Shoal")

coral_2001_Smith_Shoal_macro <- summarise_at(coral_2001_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Smith_Shoal_coral <- summarise_at(coral_2001_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Smith_Shoal_merge <- merge(coral_2001_Smith_Shoal_coral,coral_2001_Smith_Shoal_macro)
coral_2001_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2001_Jaap_Reef <- filter(coral_2001, sitename == "Jaap Reef")

coral_2001_Jaap_Reef_macro <- summarise_at(coral_2001_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Jaap_Reef_coral <- summarise_at(coral_2001_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Jaap_Reef_merge <- merge(coral_2001_Jaap_Reef_coral,coral_2001_Jaap_Reef_macro)
coral_2001_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2001_Carysfort_Shallow <- filter(coral_2001, sitename == "Carysfort Shallow")

coral_2001_Carysfort_Shallow_macro <- summarise_at(coral_2001_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Carysfort_Shallow_coral <- summarise_at(coral_2001_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Carysfort_Shallow_merge <- merge(coral_2001_Carysfort_Shallow_coral,coral_2001_Carysfort_Shallow_macro)
coral_2001_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2001_Grecian_Rocks <- filter(coral_2001, sitename == "Grecian Rocks")

coral_2001_Grecian_Rocks_macro <- summarise_at(coral_2001_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Grecian_Rocks_coral <- summarise_at(coral_2001_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Grecian_Rocks_merge <- merge(coral_2001_Grecian_Rocks_coral,coral_2001_Grecian_Rocks_macro)
coral_2001_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2001_Molasses_Shallow <- filter(coral_2001, sitename == "Molasses Shallow")

coral_2001_Molasses_Shallow_macro <- summarise_at(coral_2001_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Molasses_Shallow_coral <- summarise_at(coral_2001_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Molasses_Shallow_merge <- merge(coral_2001_Molasses_Shallow_coral,coral_2001_Molasses_Shallow_macro)
coral_2001_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2001_Conch_Shallow <- filter(coral_2001, sitename == "Conch Shallow")

coral_2001_Conch_Shallow_macro <- summarise_at(coral_2001_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Conch_Shallow_coral <- summarise_at(coral_2001_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Conch_Shallow_merge <- merge(coral_2001_Conch_Shallow_coral,coral_2001_Conch_Shallow_macro)
coral_2001_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2001_Alligator_Shallow <- filter(coral_2001, sitename == "Alligator Shallow")

coral_2001_Alligator_Shallow_macro <- summarise_at(coral_2001_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Alligator_Shallow_coral <- summarise_at(coral_2001_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Alligator_Shallow_merge <- merge(coral_2001_Alligator_Shallow_coral,coral_2001_Alligator_Shallow_macro)
coral_2001_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2001_Tennessee_Shallow <- filter(coral_2001, sitename == "Tennessee Shallow")

coral_2001_Tennessee_Shallow_macro <- summarise_at(coral_2001_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Tennessee_Shallow_coral <- summarise_at(coral_2001_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Tennessee_Shallow_merge <- merge(coral_2001_Tennessee_Shallow_coral,coral_2001_Tennessee_Shallow_macro)
coral_2001_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2001_Sombrero_Shallow <- filter(coral_2001, sitename == "Sombrero Shallow")

coral_2001_Sombrero_Shallow_macro <- summarise_at(coral_2001_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Sombrero_Shallow_coral <- summarise_at(coral_2001_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Sombrero_Shallow_merge <- merge(coral_2001_Sombrero_Shallow_coral,coral_2001_Sombrero_Shallow_macro)
coral_2001_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2001_Looe_Key_Shallow <- filter(coral_2001, sitename == "Looe Key Shallow")

coral_2001_Looe_Key_Shallow_macro <- summarise_at(coral_2001_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Looe_Key_Shallow_coral <- summarise_at(coral_2001_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Looe_Key_Shallow_merge <- merge(coral_2001_Looe_Key_Shallow_coral,coral_2001_Looe_Key_Shallow_macro)
coral_2001_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2001_Eastern_Sambo_Shallow <- filter(coral_2001, sitename == "Eastern Sambo Shallow")

coral_2001_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2001_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2001_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Eastern_Sambo_Shallow_merge <- merge(coral_2001_Eastern_Sambo_Shallow_coral,coral_2001_Eastern_Sambo_Shallow_macro)
coral_2001_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2001_Western_Sambo_Shallow <- filter(coral_2001, sitename == "Western Sambo Shallow")

coral_2001_Western_Sambo_Shallow_macro <- summarise_at(coral_2001_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Western_Sambo_Shallow_coral <- summarise_at(coral_2001_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Western_Sambo_Shallow_merge <- merge(coral_2001_Western_Sambo_Shallow_coral,coral_2001_Western_Sambo_Shallow_macro)
coral_2001_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2001_Rock_Key_Shallow <- filter(coral_2001, sitename == "Rock Key Shallow")

coral_2001_Rock_Key_Shallow_macro <- summarise_at(coral_2001_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Rock_Key_Shallow_coral <- summarise_at(coral_2001_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Rock_Key_Shallow_merge <- merge(coral_2001_Rock_Key_Shallow_coral,coral_2001_Rock_Key_Shallow_macro)
coral_2001_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2001_Sand_Key_Shallow <- filter(coral_2001, sitename == "Sand Key Shallow")

coral_2001_Sand_Key_Shallow_macro <- summarise_at(coral_2001_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Sand_Key_Shallow_coral <- summarise_at(coral_2001_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Sand_Key_Shallow_merge <- merge(coral_2001_Sand_Key_Shallow_coral,coral_2001_Sand_Key_Shallow_macro)
coral_2001_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2001_Carysfort_Deep <- filter(coral_2001, sitename == "Carysfort Deep")

coral_2001_Carysfort_Deep_macro <- summarise_at(coral_2001_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Carysfort_Deep_coral <- summarise_at(coral_2001_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Carysfort_Deep_merge <- merge(coral_2001_Carysfort_Deep_coral,coral_2001_Carysfort_Deep_macro)
coral_2001_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2001_Molasses_Deep <- filter(coral_2001, sitename == "Molasses Deep")

coral_2001_Molasses_Deep_macro <- summarise_at(coral_2001_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Molasses_Deep_coral <- summarise_at(coral_2001_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Molasses_Deep_merge <- merge(coral_2001_Molasses_Deep_coral,coral_2001_Molasses_Deep_macro)
coral_2001_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2001_Conch_Deep <- filter(coral_2001, sitename == "Conch Deep")

coral_2001_Conch_Deep_macro <- summarise_at(coral_2001_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Conch_Deep_coral <- summarise_at(coral_2001_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Conch_Deep_merge <- merge(coral_2001_Conch_Deep_coral,coral_2001_Conch_Deep_macro)
coral_2001_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2001_Alligator_Deep <- filter(coral_2001, sitename == "Alligator Deep")

coral_2001_Alligator_Deep_macro <- summarise_at(coral_2001_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Alligator_Deep_coral <- summarise_at(coral_2001_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Alligator_Deep_merge <- merge(coral_2001_Alligator_Deep_coral,coral_2001_Alligator_Deep_macro)
coral_2001_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2001_Tennessee_Deep <- filter(coral_2001, sitename == "Tennessee Deep")

coral_2001_Tennessee_Deep_macro <- summarise_at(coral_2001_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Tennessee_Deep_coral <- summarise_at(coral_2001_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Tennessee_Deep_merge <- merge(coral_2001_Tennessee_Deep_coral,coral_2001_Tennessee_Deep_macro)
coral_2001_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2001_Sombrero_Deep <- filter(coral_2001, sitename == "Sombrero Deep")

coral_2001_Sombrero_Deep_macro <- summarise_at(coral_2001_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Sombrero_Deep_coral <- summarise_at(coral_2001_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Sombrero_Deep_merge <- merge(coral_2001_Sombrero_Deep_coral,coral_2001_Sombrero_Deep_macro)
coral_2001_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2001_Looe_Key_Deep <- filter(coral_2001, sitename == "Looe Key Deep")

coral_2001_Looe_Key_Deep_macro <- summarise_at(coral_2001_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Looe_Key_Deep_coral <- summarise_at(coral_2001_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Looe_Key_Deep_merge <- merge(coral_2001_Looe_Key_Deep_coral,coral_2001_Looe_Key_Deep_macro)
coral_2001_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2001_Eastern_Sambo_Deep <- filter(coral_2001, sitename == "Eastern Sambo Deep")

coral_2001_Eastern_Sambo_Deep_macro <- summarise_at(coral_2001_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Eastern_Sambo_Deep_coral <- summarise_at(coral_2001_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Eastern_Sambo_Deep_merge <- merge(coral_2001_Eastern_Sambo_Deep_coral,coral_2001_Eastern_Sambo_Deep_macro)
coral_2001_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2001_Western_Sambo_Deep <- filter(coral_2001, sitename == "Western Sambo Deep")

coral_2001_Western_Sambo_Deep_macro <- summarise_at(coral_2001_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Western_Sambo_Deep_coral <- summarise_at(coral_2001_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Western_Sambo_Deep_merge <- merge(coral_2001_Western_Sambo_Deep_coral,coral_2001_Western_Sambo_Deep_macro)
coral_2001_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2001_Rock_Key_Deep <- filter(coral_2001, sitename == "Rock Key Deep")

coral_2001_Rock_Key_Deep_macro <- summarise_at(coral_2001_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Rock_Key_Deep_coral <- summarise_at(coral_2001_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Rock_Key_Deep_merge <- merge(coral_2001_Rock_Key_Deep_coral,coral_2001_Rock_Key_Deep_macro)
coral_2001_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2001_Sand_Key_Deep <- filter(coral_2001, sitename == "Sand Key Deep")

coral_2001_Sand_Key_Deep_macro <- summarise_at(coral_2001_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Sand_Key_Deep_coral <- summarise_at(coral_2001_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Sand_Key_Deep_merge <- merge(coral_2001_Sand_Key_Deep_coral,coral_2001_Sand_Key_Deep_macro)
coral_2001_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2001_Bird_Key_Reef <- filter(coral_2001, sitename == "Bird Key Reef")

coral_2001_Bird_Key_Reef_macro <- summarise_at(coral_2001_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Bird_Key_Reef_coral <- summarise_at(coral_2001_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Bird_Key_Reef_merge <- merge(coral_2001_Bird_Key_Reef_coral,coral_2001_Bird_Key_Reef_macro)
coral_2001_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2001_Black_Coral_Rock <- filter(coral_2001, sitename == "Black Coral Rock")

coral_2001_Black_Coral_Rock_macro <- summarise_at(coral_2001_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_Black_Coral_Rock_coral <- summarise_at(coral_2001_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2001_Black_Coral_Rock_merge <- merge(coral_2001_Black_Coral_Rock_coral,coral_2001_Black_Coral_Rock_macro)
coral_2001_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2001_White_Shoal <- filter(coral_2001, sitename == "White Shoal")

coral_2001_White_Shoal_macro <- summarise_at(coral_2001_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2001_White_Shoal_coral <- summarise_at(coral_2001_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2001_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2001_White_Shoal_merge <- merge(coral_2001_White_Shoal_coral,coral_2001_White_Shoal_macro)
coral_2001_White_Shoal_merge$sitename <- "White Shoal"




coral_2001_merged <- rbind(coral_2001_Rattlesnake_merge,coral_2001_El_Radabob_merge,coral_2001_Dove_Key_merge,
                           coral_2001_Long_Key_merge,coral_2001_Moser_Channel_merge,coral_2001_Molasses_Keys_merge,
                           coral_2001_Content_Keys_merge,coral_2001_Turtle_merge,coral_2001_Porter_Patch_merge,
                           coral_2001_Admiral_merge,coral_2001_West_Turtle_Shoal_merge,coral_2001_Dustan_Rocks_merge,
                           coral_2001_West_Washer_Women_merge,coral_2001_Western_Head_merge,coral_2001_Cliff_Green_merge,
                           coral_2001_Smith_Shoal_merge,coral_2001_Jaap_Reef_merge,coral_2001_Carysfort_Shallow_merge,
                           coral_2001_Grecian_Rocks_merge,coral_2001_Molasses_Shallow_merge,coral_2001_Conch_Shallow_merge,
                           coral_2001_Alligator_Shallow_merge,coral_2001_Tennessee_Shallow_merge,coral_2001_Sombrero_Shallow_merge,
                           coral_2001_Looe_Key_Shallow_merge,coral_2001_Eastern_Sambo_Shallow_merge,coral_2001_Western_Sambo_Shallow_merge,
                           coral_2001_Rock_Key_Shallow_merge,coral_2001_Sand_Key_Shallow_merge,coral_2001_Carysfort_Deep_merge,
                           coral_2001_Molasses_Deep_merge,coral_2001_Conch_Deep_merge,coral_2001_Alligator_Deep_merge,
                           coral_2001_Tennessee_Deep_merge,coral_2001_Sombrero_Deep_merge,coral_2001_Looe_Key_Deep_merge,
                           coral_2001_Eastern_Sambo_Deep_merge,coral_2001_Western_Sambo_Deep_merge,coral_2001_Rock_Key_Deep_merge,
                           coral_2001_Sand_Key_Deep_merge,coral_2001_Bird_Key_Reef_merge,coral_2001_Black_Coral_Rock_merge,
                           coral_2001_White_Shoal_merge)


coral_2001_merged$Year <- "2001"



coral_2002 <- import("2002_all.xlsx")
coral_2002 <- select(coral_2002, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2001 <- unique(coral_2001$sitename)
view(unique_2001)
unique_2002 <- unique(coral_2002$sitename)
view(unique_2002)




# coral_2002_Rattlesnake <- filter(coral_2002, sitename == "Rattlesnake")
# 
# coral_2002_Rattlesnake_macro <- summarise_at(coral_2002_Rattlesnake,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2002_Rattlesnake_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2002_Rattlesnake_coral <- summarise_at(coral_2002_Rattlesnake,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2002_Rattlesnake_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2002_Rattlesnake_merge <- merge(coral_2002_Rattlesnake_coral,coral_2002_Rattlesnake_macro)
# coral_2002_Rattlesnake_merge$sitename <- "Rattlesnake"


coral_2002_El_Radabob <- filter(coral_2002, sitename == "El Radabob")

coral_2002_El_Radabob_macro <- summarise_at(coral_2002_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_El_Radabob_coral <- summarise_at(coral_2002_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_El_Radabob_coral) <- c("Coral_Average","Coral_SD")

coral_2002_El_Radabob_merge <- merge(coral_2002_El_Radabob_coral,coral_2002_El_Radabob_macro)
coral_2002_El_Radabob_merge$sitename <- "El Radabob"


# coral_2002_Dove_Key <- filter(coral_2002, sitename == "Dove Key")
# 
# coral_2002_Dove_Key_macro <- summarise_at(coral_2002_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2002_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2002_Dove_Key_coral <- summarise_at(coral_2002_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2002_Dove_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2002_Dove_Key_merge <- merge(coral_2002_Dove_Key_coral,coral_2002_Dove_Key_macro)
# coral_2002_Dove_Key_merge$sitename <- "Dove Key"


coral_2002_Long_Key <- filter(coral_2002, sitename == "Long Key")

coral_2002_Long_Key_macro <- summarise_at(coral_2002_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Long_Key_coral <- summarise_at(coral_2002_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Long_Key_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Long_Key_merge <- merge(coral_2002_Long_Key_coral,coral_2002_Long_Key_macro)
coral_2002_Long_Key_merge$sitename <- "Long Key"



coral_2002_Moser_Channel <- filter(coral_2002, sitename == "Moser Channel")

coral_2002_Moser_Channel_macro <- summarise_at(coral_2002_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Moser_Channel_coral <- summarise_at(coral_2002_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Moser_Channel_merge <- merge(coral_2002_Moser_Channel_coral,coral_2002_Moser_Channel_macro)
coral_2002_Moser_Channel_merge$sitename <- "Moser Channel"


# coral_2002_Molasses_Keys <- filter(coral_2002, sitename == "Molasses Keys")
# 
# coral_2002_Molasses_Keys_macro <- summarise_at(coral_2002_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2002_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2002_Molasses_Keys_coral <- summarise_at(coral_2002_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2002_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2002_Molasses_Keys_merge <- merge(coral_2002_Molasses_Keys_coral,coral_2002_Molasses_Keys_macro)
# coral_2002_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2002_Content_Keys <- filter(coral_2002, sitename == "Content Keys")

coral_2002_Content_Keys_macro <- summarise_at(coral_2002_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Content_Keys_coral <- summarise_at(coral_2002_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Content_Keys_merge <- merge(coral_2002_Content_Keys_coral,coral_2002_Content_Keys_macro)
coral_2002_Content_Keys_merge$sitename <- "Content Keys"


coral_2002_Turtle <- filter(coral_2002, sitename == "Turtle")

coral_2002_Turtle_macro <- summarise_at(coral_2002_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Turtle_coral <- summarise_at(coral_2002_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Turtle_merge <- merge(coral_2002_Turtle_coral,coral_2002_Turtle_macro)
coral_2002_Turtle_merge$sitename <- "Turtle"


coral_2002_Porter_Patch <- filter(coral_2002, sitename == "Porter Patch")

coral_2002_Porter_Patch_macro <- summarise_at(coral_2002_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Porter_Patch_coral <- summarise_at(coral_2002_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Porter_Patch_merge <- merge(coral_2002_Porter_Patch_coral,coral_2002_Porter_Patch_macro)
coral_2002_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2002_Admiral <- filter(coral_2002, sitename == "Admiral")

coral_2002_Admiral_macro <- summarise_at(coral_2002_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Admiral_coral <- summarise_at(coral_2002_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Admiral_merge <- merge(coral_2002_Admiral_coral,coral_2002_Admiral_macro)
coral_2002_Admiral_merge$sitename <- "Admiral"


coral_2002_West_Turtle_Shoal <- filter(coral_2002, sitename == "West Turtle Shoal")

coral_2002_West_Turtle_Shoal_macro <- summarise_at(coral_2002_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_West_Turtle_Shoal_coral <- summarise_at(coral_2002_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2002_West_Turtle_Shoal_merge <- merge(coral_2002_West_Turtle_Shoal_coral,coral_2002_West_Turtle_Shoal_macro)
coral_2002_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2002_Dustan_Rocks <- filter(coral_2002, sitename == "Dustan Rocks")

coral_2002_Dustan_Rocks_macro <- summarise_at(coral_2002_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Dustan_Rocks_coral <- summarise_at(coral_2002_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Dustan_Rocks_merge <- merge(coral_2002_Dustan_Rocks_coral,coral_2002_Dustan_Rocks_macro)
coral_2002_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2002_West_Washer_Women <- filter(coral_2002, sitename == "West Washer Women")

coral_2002_West_Washer_Women_macro <- summarise_at(coral_2002_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_West_Washer_Women_coral <- summarise_at(coral_2002_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2002_West_Washer_Women_merge <- merge(coral_2002_West_Washer_Women_coral,coral_2002_West_Washer_Women_macro)
coral_2002_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2002_Western_Head <- filter(coral_2002, sitename == "Western Head")

coral_2002_Western_Head_macro <- summarise_at(coral_2002_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Western_Head_coral <- summarise_at(coral_2002_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Western_Head_merge <- merge(coral_2002_Western_Head_coral,coral_2002_Western_Head_macro)
coral_2002_Western_Head_merge$sitename <- "Western Head"


coral_2002_Cliff_Green <- filter(coral_2002, sitename == "Cliff Green")

coral_2002_Cliff_Green_macro <- summarise_at(coral_2002_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Cliff_Green_coral <- summarise_at(coral_2002_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Cliff_Green_merge <- merge(coral_2002_Cliff_Green_coral,coral_2002_Cliff_Green_macro)
coral_2002_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2002_Smith_Shoal <- filter(coral_2002, sitename == "Smith Shoal")

coral_2002_Smith_Shoal_macro <- summarise_at(coral_2002_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Smith_Shoal_coral <- summarise_at(coral_2002_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Smith_Shoal_merge <- merge(coral_2002_Smith_Shoal_coral,coral_2002_Smith_Shoal_macro)
coral_2002_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2002_Jaap_Reef <- filter(coral_2002, sitename == "Jaap Reef")

coral_2002_Jaap_Reef_macro <- summarise_at(coral_2002_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Jaap_Reef_coral <- summarise_at(coral_2002_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Jaap_Reef_merge <- merge(coral_2002_Jaap_Reef_coral,coral_2002_Jaap_Reef_macro)
coral_2002_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2002_Carysfort_Shallow <- filter(coral_2002, sitename == "Carysfort Shallow")

coral_2002_Carysfort_Shallow_macro <- summarise_at(coral_2002_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Carysfort_Shallow_coral <- summarise_at(coral_2002_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Carysfort_Shallow_merge <- merge(coral_2002_Carysfort_Shallow_coral,coral_2002_Carysfort_Shallow_macro)
coral_2002_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2002_Grecian_Rocks <- filter(coral_2002, sitename == "Grecian Rocks")

coral_2002_Grecian_Rocks_macro <- summarise_at(coral_2002_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Grecian_Rocks_coral <- summarise_at(coral_2002_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Grecian_Rocks_merge <- merge(coral_2002_Grecian_Rocks_coral,coral_2002_Grecian_Rocks_macro)
coral_2002_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2002_Molasses_Shallow <- filter(coral_2002, sitename == "Molasses Shallow")

coral_2002_Molasses_Shallow_macro <- summarise_at(coral_2002_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Molasses_Shallow_coral <- summarise_at(coral_2002_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Molasses_Shallow_merge <- merge(coral_2002_Molasses_Shallow_coral,coral_2002_Molasses_Shallow_macro)
coral_2002_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2002_Conch_Shallow <- filter(coral_2002, sitename == "Conch Shallow")

coral_2002_Conch_Shallow_macro <- summarise_at(coral_2002_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Conch_Shallow_coral <- summarise_at(coral_2002_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Conch_Shallow_merge <- merge(coral_2002_Conch_Shallow_coral,coral_2002_Conch_Shallow_macro)
coral_2002_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2002_Alligator_Shallow <- filter(coral_2002, sitename == "Alligator Shallow")

coral_2002_Alligator_Shallow_macro <- summarise_at(coral_2002_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Alligator_Shallow_coral <- summarise_at(coral_2002_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Alligator_Shallow_merge <- merge(coral_2002_Alligator_Shallow_coral,coral_2002_Alligator_Shallow_macro)
coral_2002_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2002_Tennessee_Shallow <- filter(coral_2002, sitename == "Tennessee Shallow")

coral_2002_Tennessee_Shallow_macro <- summarise_at(coral_2002_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Tennessee_Shallow_coral <- summarise_at(coral_2002_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Tennessee_Shallow_merge <- merge(coral_2002_Tennessee_Shallow_coral,coral_2002_Tennessee_Shallow_macro)
coral_2002_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2002_Sombrero_Shallow <- filter(coral_2002, sitename == "Sombrero Shallow")

coral_2002_Sombrero_Shallow_macro <- summarise_at(coral_2002_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Sombrero_Shallow_coral <- summarise_at(coral_2002_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Sombrero_Shallow_merge <- merge(coral_2002_Sombrero_Shallow_coral,coral_2002_Sombrero_Shallow_macro)
coral_2002_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2002_Looe_Key_Shallow <- filter(coral_2002, sitename == "Looe Key Shallow")

coral_2002_Looe_Key_Shallow_macro <- summarise_at(coral_2002_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Looe_Key_Shallow_coral <- summarise_at(coral_2002_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Looe_Key_Shallow_merge <- merge(coral_2002_Looe_Key_Shallow_coral,coral_2002_Looe_Key_Shallow_macro)
coral_2002_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2002_Eastern_Sambo_Shallow <- filter(coral_2002, sitename == "Eastern Sambo Shallow")

coral_2002_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2002_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2002_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Eastern_Sambo_Shallow_merge <- merge(coral_2002_Eastern_Sambo_Shallow_coral,coral_2002_Eastern_Sambo_Shallow_macro)
coral_2002_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2002_Western_Sambo_Shallow <- filter(coral_2002, sitename == "Western Sambo Shallow")

coral_2002_Western_Sambo_Shallow_macro <- summarise_at(coral_2002_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Western_Sambo_Shallow_coral <- summarise_at(coral_2002_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Western_Sambo_Shallow_merge <- merge(coral_2002_Western_Sambo_Shallow_coral,coral_2002_Western_Sambo_Shallow_macro)
coral_2002_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2002_Rock_Key_Shallow <- filter(coral_2002, sitename == "Rock Key Shallow")

coral_2002_Rock_Key_Shallow_macro <- summarise_at(coral_2002_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Rock_Key_Shallow_coral <- summarise_at(coral_2002_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Rock_Key_Shallow_merge <- merge(coral_2002_Rock_Key_Shallow_coral,coral_2002_Rock_Key_Shallow_macro)
coral_2002_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2002_Sand_Key_Shallow <- filter(coral_2002, sitename == "Sand Key Shallow")

coral_2002_Sand_Key_Shallow_macro <- summarise_at(coral_2002_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Sand_Key_Shallow_coral <- summarise_at(coral_2002_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Sand_Key_Shallow_merge <- merge(coral_2002_Sand_Key_Shallow_coral,coral_2002_Sand_Key_Shallow_macro)
coral_2002_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2002_Carysfort_Deep <- filter(coral_2002, sitename == "Carysfort Deep")

coral_2002_Carysfort_Deep_macro <- summarise_at(coral_2002_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Carysfort_Deep_coral <- summarise_at(coral_2002_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Carysfort_Deep_merge <- merge(coral_2002_Carysfort_Deep_coral,coral_2002_Carysfort_Deep_macro)
coral_2002_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2002_Molasses_Deep <- filter(coral_2002, sitename == "Molasses Deep")

coral_2002_Molasses_Deep_macro <- summarise_at(coral_2002_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Molasses_Deep_coral <- summarise_at(coral_2002_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Molasses_Deep_merge <- merge(coral_2002_Molasses_Deep_coral,coral_2002_Molasses_Deep_macro)
coral_2002_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2002_Conch_Deep <- filter(coral_2002, sitename == "Conch Deep")

coral_2002_Conch_Deep_macro <- summarise_at(coral_2002_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Conch_Deep_coral <- summarise_at(coral_2002_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Conch_Deep_merge <- merge(coral_2002_Conch_Deep_coral,coral_2002_Conch_Deep_macro)
coral_2002_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2002_Alligator_Deep <- filter(coral_2002, sitename == "Alligator Deep")

coral_2002_Alligator_Deep_macro <- summarise_at(coral_2002_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Alligator_Deep_coral <- summarise_at(coral_2002_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Alligator_Deep_merge <- merge(coral_2002_Alligator_Deep_coral,coral_2002_Alligator_Deep_macro)
coral_2002_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2002_Tennessee_Deep <- filter(coral_2002, sitename == "Tennessee Deep")

coral_2002_Tennessee_Deep_macro <- summarise_at(coral_2002_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Tennessee_Deep_coral <- summarise_at(coral_2002_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Tennessee_Deep_merge <- merge(coral_2002_Tennessee_Deep_coral,coral_2002_Tennessee_Deep_macro)
coral_2002_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2002_Sombrero_Deep <- filter(coral_2002, sitename == "Sombrero Deep")

coral_2002_Sombrero_Deep_macro <- summarise_at(coral_2002_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Sombrero_Deep_coral <- summarise_at(coral_2002_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Sombrero_Deep_merge <- merge(coral_2002_Sombrero_Deep_coral,coral_2002_Sombrero_Deep_macro)
coral_2002_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2002_Looe_Key_Deep <- filter(coral_2002, sitename == "Looe Key Deep")

coral_2002_Looe_Key_Deep_macro <- summarise_at(coral_2002_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Looe_Key_Deep_coral <- summarise_at(coral_2002_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Looe_Key_Deep_merge <- merge(coral_2002_Looe_Key_Deep_coral,coral_2002_Looe_Key_Deep_macro)
coral_2002_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2002_Eastern_Sambo_Deep <- filter(coral_2002, sitename == "Eastern Sambo Deep")

coral_2002_Eastern_Sambo_Deep_macro <- summarise_at(coral_2002_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Eastern_Sambo_Deep_coral <- summarise_at(coral_2002_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Eastern_Sambo_Deep_merge <- merge(coral_2002_Eastern_Sambo_Deep_coral,coral_2002_Eastern_Sambo_Deep_macro)
coral_2002_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2002_Western_Sambo_Deep <- filter(coral_2002, sitename == "Western Sambo Deep")

coral_2002_Western_Sambo_Deep_macro <- summarise_at(coral_2002_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Western_Sambo_Deep_coral <- summarise_at(coral_2002_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Western_Sambo_Deep_merge <- merge(coral_2002_Western_Sambo_Deep_coral,coral_2002_Western_Sambo_Deep_macro)
coral_2002_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2002_Rock_Key_Deep <- filter(coral_2002, sitename == "Rock Key Deep")

coral_2002_Rock_Key_Deep_macro <- summarise_at(coral_2002_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Rock_Key_Deep_coral <- summarise_at(coral_2002_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Rock_Key_Deep_merge <- merge(coral_2002_Rock_Key_Deep_coral,coral_2002_Rock_Key_Deep_macro)
coral_2002_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2002_Sand_Key_Deep <- filter(coral_2002, sitename == "Sand Key Deep")

coral_2002_Sand_Key_Deep_macro <- summarise_at(coral_2002_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Sand_Key_Deep_coral <- summarise_at(coral_2002_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Sand_Key_Deep_merge <- merge(coral_2002_Sand_Key_Deep_coral,coral_2002_Sand_Key_Deep_macro)
coral_2002_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2002_Bird_Key_Reef <- filter(coral_2002, sitename == "Bird Key Reef")

coral_2002_Bird_Key_Reef_macro <- summarise_at(coral_2002_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Bird_Key_Reef_coral <- summarise_at(coral_2002_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Bird_Key_Reef_merge <- merge(coral_2002_Bird_Key_Reef_coral,coral_2002_Bird_Key_Reef_macro)
coral_2002_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2002_Black_Coral_Rock <- filter(coral_2002, sitename == "Black Coral Rock")

coral_2002_Black_Coral_Rock_macro <- summarise_at(coral_2002_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_Black_Coral_Rock_coral <- summarise_at(coral_2002_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2002_Black_Coral_Rock_merge <- merge(coral_2002_Black_Coral_Rock_coral,coral_2002_Black_Coral_Rock_macro)
coral_2002_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2002_White_Shoal <- filter(coral_2002, sitename == "White Shoal")

coral_2002_White_Shoal_macro <- summarise_at(coral_2002_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2002_White_Shoal_coral <- summarise_at(coral_2002_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2002_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2002_White_Shoal_merge <- merge(coral_2002_White_Shoal_coral,coral_2002_White_Shoal_macro)
coral_2002_White_Shoal_merge$sitename <- "White Shoal"




coral_2002_merged <- rbind(coral_2002_El_Radabob_merge,
                           coral_2002_Long_Key_merge,coral_2002_Moser_Channel_merge,
                           coral_2002_Content_Keys_merge,coral_2002_Turtle_merge,coral_2002_Porter_Patch_merge,
                           coral_2002_Admiral_merge,coral_2002_West_Turtle_Shoal_merge,coral_2002_Dustan_Rocks_merge,
                           coral_2002_West_Washer_Women_merge,coral_2002_Western_Head_merge,coral_2002_Cliff_Green_merge,
                           coral_2002_Smith_Shoal_merge,coral_2002_Jaap_Reef_merge,coral_2002_Carysfort_Shallow_merge,
                           coral_2002_Grecian_Rocks_merge,coral_2002_Molasses_Shallow_merge,coral_2002_Conch_Shallow_merge,
                           coral_2002_Alligator_Shallow_merge,coral_2002_Tennessee_Shallow_merge,coral_2002_Sombrero_Shallow_merge,
                           coral_2002_Looe_Key_Shallow_merge,coral_2002_Eastern_Sambo_Shallow_merge,coral_2002_Western_Sambo_Shallow_merge,
                           coral_2002_Rock_Key_Shallow_merge,coral_2002_Sand_Key_Shallow_merge,coral_2002_Carysfort_Deep_merge,
                           coral_2002_Molasses_Deep_merge,coral_2002_Conch_Deep_merge,coral_2002_Alligator_Deep_merge,
                           coral_2002_Tennessee_Deep_merge,coral_2002_Sombrero_Deep_merge,coral_2002_Looe_Key_Deep_merge,
                           coral_2002_Eastern_Sambo_Deep_merge,coral_2002_Western_Sambo_Deep_merge,coral_2002_Rock_Key_Deep_merge,
                           coral_2002_Sand_Key_Deep_merge,coral_2002_Bird_Key_Reef_merge,coral_2002_Black_Coral_Rock_merge,
                           coral_2002_White_Shoal_merge)


coral_2002_merged$Year <- "2002"



coral_2003 <- import("2003_all.xlsx")
coral_2003 <- select(coral_2003, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2002 <- unique(coral_2002$sitename)
view(unique_2002)
unique_2003 <- unique(coral_2003$sitename)
view(unique_2003)




coral_2003_El_Radabob <- filter(coral_2003, sitename == "El Radabob")

coral_2003_El_Radabob_macro <- summarise_at(coral_2003_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_El_Radabob_coral <- summarise_at(coral_2003_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_El_Radabob_coral) <- c("Coral_Average","Coral_SD")

coral_2003_El_Radabob_merge <- merge(coral_2003_El_Radabob_coral,coral_2003_El_Radabob_macro)
coral_2003_El_Radabob_merge$sitename <- "El Radabob"


# coral_2003_Dove_Key <- filter(coral_2003, sitename == "Dove Key")
# 
# coral_2003_Dove_Key_macro <- summarise_at(coral_2003_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2003_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2003_Dove_Key_coral <- summarise_at(coral_2003_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2003_Dove_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2003_Dove_Key_merge <- merge(coral_2003_Dove_Key_coral,coral_2003_Dove_Key_macro)
# coral_2003_Dove_Key_merge$sitename <- "Dove Key"


coral_2003_Long_Key <- filter(coral_2003, sitename == "Long Key")

coral_2003_Long_Key_macro <- summarise_at(coral_2003_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Long_Key_coral <- summarise_at(coral_2003_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Long_Key_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Long_Key_merge <- merge(coral_2003_Long_Key_coral,coral_2003_Long_Key_macro)
coral_2003_Long_Key_merge$sitename <- "Long Key"



coral_2003_Moser_Channel <- filter(coral_2003, sitename == "Moser Channel")

coral_2003_Moser_Channel_macro <- summarise_at(coral_2003_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Moser_Channel_coral <- summarise_at(coral_2003_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Moser_Channel_merge <- merge(coral_2003_Moser_Channel_coral,coral_2003_Moser_Channel_macro)
coral_2003_Moser_Channel_merge$sitename <- "Moser Channel"


# coral_2003_Molasses_Keys <- filter(coral_2003, sitename == "Molasses Keys")
# 
# coral_2003_Molasses_Keys_macro <- summarise_at(coral_2003_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2003_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2003_Molasses_Keys_coral <- summarise_at(coral_2003_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2003_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2003_Molasses_Keys_merge <- merge(coral_2003_Molasses_Keys_coral,coral_2003_Molasses_Keys_macro)
# coral_2003_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2003_Content_Keys <- filter(coral_2003, sitename == "Content Keys")

coral_2003_Content_Keys_macro <- summarise_at(coral_2003_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Content_Keys_coral <- summarise_at(coral_2003_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Content_Keys_merge <- merge(coral_2003_Content_Keys_coral,coral_2003_Content_Keys_macro)
coral_2003_Content_Keys_merge$sitename <- "Content Keys"


coral_2003_Turtle <- filter(coral_2003, sitename == "Turtle")

coral_2003_Turtle_macro <- summarise_at(coral_2003_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Turtle_coral <- summarise_at(coral_2003_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Turtle_merge <- merge(coral_2003_Turtle_coral,coral_2003_Turtle_macro)
coral_2003_Turtle_merge$sitename <- "Turtle"


coral_2003_Porter_Patch <- filter(coral_2003, sitename == "Porter Patch")

coral_2003_Porter_Patch_macro <- summarise_at(coral_2003_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Porter_Patch_coral <- summarise_at(coral_2003_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Porter_Patch_merge <- merge(coral_2003_Porter_Patch_coral,coral_2003_Porter_Patch_macro)
coral_2003_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2003_Admiral <- filter(coral_2003, sitename == "Admiral")

coral_2003_Admiral_macro <- summarise_at(coral_2003_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Admiral_coral <- summarise_at(coral_2003_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Admiral_merge <- merge(coral_2003_Admiral_coral,coral_2003_Admiral_macro)
coral_2003_Admiral_merge$sitename <- "Admiral"


coral_2003_West_Turtle_Shoal <- filter(coral_2003, sitename == "West Turtle Shoal")

coral_2003_West_Turtle_Shoal_macro <- summarise_at(coral_2003_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_West_Turtle_Shoal_coral <- summarise_at(coral_2003_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2003_West_Turtle_Shoal_merge <- merge(coral_2003_West_Turtle_Shoal_coral,coral_2003_West_Turtle_Shoal_macro)
coral_2003_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2003_Dustan_Rocks <- filter(coral_2003, sitename == "Dustan Rocks")

coral_2003_Dustan_Rocks_macro <- summarise_at(coral_2003_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Dustan_Rocks_coral <- summarise_at(coral_2003_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Dustan_Rocks_merge <- merge(coral_2003_Dustan_Rocks_coral,coral_2003_Dustan_Rocks_macro)
coral_2003_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2003_West_Washer_Women <- filter(coral_2003, sitename == "West Washer Women")

coral_2003_West_Washer_Women_macro <- summarise_at(coral_2003_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_West_Washer_Women_coral <- summarise_at(coral_2003_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2003_West_Washer_Women_merge <- merge(coral_2003_West_Washer_Women_coral,coral_2003_West_Washer_Women_macro)
coral_2003_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2003_Western_Head <- filter(coral_2003, sitename == "Western Head")

coral_2003_Western_Head_macro <- summarise_at(coral_2003_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Western_Head_coral <- summarise_at(coral_2003_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Western_Head_merge <- merge(coral_2003_Western_Head_coral,coral_2003_Western_Head_macro)
coral_2003_Western_Head_merge$sitename <- "Western Head"


coral_2003_Cliff_Green <- filter(coral_2003, sitename == "Cliff Green")

coral_2003_Cliff_Green_macro <- summarise_at(coral_2003_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Cliff_Green_coral <- summarise_at(coral_2003_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Cliff_Green_merge <- merge(coral_2003_Cliff_Green_coral,coral_2003_Cliff_Green_macro)
coral_2003_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2003_Smith_Shoal <- filter(coral_2003, sitename == "Smith Shoal")

coral_2003_Smith_Shoal_macro <- summarise_at(coral_2003_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Smith_Shoal_coral <- summarise_at(coral_2003_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Smith_Shoal_merge <- merge(coral_2003_Smith_Shoal_coral,coral_2003_Smith_Shoal_macro)
coral_2003_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2003_Jaap_Reef <- filter(coral_2003, sitename == "Jaap Reef")

coral_2003_Jaap_Reef_macro <- summarise_at(coral_2003_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Jaap_Reef_coral <- summarise_at(coral_2003_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Jaap_Reef_merge <- merge(coral_2003_Jaap_Reef_coral,coral_2003_Jaap_Reef_macro)
coral_2003_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2003_Carysfort_Shallow <- filter(coral_2003, sitename == "Carysfort Shallow")

coral_2003_Carysfort_Shallow_macro <- summarise_at(coral_2003_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Carysfort_Shallow_coral <- summarise_at(coral_2003_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Carysfort_Shallow_merge <- merge(coral_2003_Carysfort_Shallow_coral,coral_2003_Carysfort_Shallow_macro)
coral_2003_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2003_Grecian_Rocks <- filter(coral_2003, sitename == "Grecian Rocks")

coral_2003_Grecian_Rocks_macro <- summarise_at(coral_2003_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Grecian_Rocks_coral <- summarise_at(coral_2003_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Grecian_Rocks_merge <- merge(coral_2003_Grecian_Rocks_coral,coral_2003_Grecian_Rocks_macro)
coral_2003_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2003_Molasses_Shallow <- filter(coral_2003, sitename == "Molasses Shallow")

coral_2003_Molasses_Shallow_macro <- summarise_at(coral_2003_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Molasses_Shallow_coral <- summarise_at(coral_2003_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Molasses_Shallow_merge <- merge(coral_2003_Molasses_Shallow_coral,coral_2003_Molasses_Shallow_macro)
coral_2003_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2003_Conch_Shallow <- filter(coral_2003, sitename == "Conch Shallow")

coral_2003_Conch_Shallow_macro <- summarise_at(coral_2003_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Conch_Shallow_coral <- summarise_at(coral_2003_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Conch_Shallow_merge <- merge(coral_2003_Conch_Shallow_coral,coral_2003_Conch_Shallow_macro)
coral_2003_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2003_Alligator_Shallow <- filter(coral_2003, sitename == "Alligator Shallow")

coral_2003_Alligator_Shallow_macro <- summarise_at(coral_2003_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Alligator_Shallow_coral <- summarise_at(coral_2003_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Alligator_Shallow_merge <- merge(coral_2003_Alligator_Shallow_coral,coral_2003_Alligator_Shallow_macro)
coral_2003_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2003_Tennessee_Shallow <- filter(coral_2003, sitename == "Tennessee Shallow")

coral_2003_Tennessee_Shallow_macro <- summarise_at(coral_2003_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Tennessee_Shallow_coral <- summarise_at(coral_2003_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Tennessee_Shallow_merge <- merge(coral_2003_Tennessee_Shallow_coral,coral_2003_Tennessee_Shallow_macro)
coral_2003_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2003_Sombrero_Shallow <- filter(coral_2003, sitename == "Sombrero Shallow")

coral_2003_Sombrero_Shallow_macro <- summarise_at(coral_2003_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Sombrero_Shallow_coral <- summarise_at(coral_2003_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Sombrero_Shallow_merge <- merge(coral_2003_Sombrero_Shallow_coral,coral_2003_Sombrero_Shallow_macro)
coral_2003_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2003_Looe_Key_Shallow <- filter(coral_2003, sitename == "Looe Key Shallow")

coral_2003_Looe_Key_Shallow_macro <- summarise_at(coral_2003_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Looe_Key_Shallow_coral <- summarise_at(coral_2003_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Looe_Key_Shallow_merge <- merge(coral_2003_Looe_Key_Shallow_coral,coral_2003_Looe_Key_Shallow_macro)
coral_2003_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2003_Eastern_Sambo_Shallow <- filter(coral_2003, sitename == "Eastern Sambo Shallow")

coral_2003_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2003_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2003_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Eastern_Sambo_Shallow_merge <- merge(coral_2003_Eastern_Sambo_Shallow_coral,coral_2003_Eastern_Sambo_Shallow_macro)
coral_2003_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2003_Western_Sambo_Shallow <- filter(coral_2003, sitename == "Western Sambo Shallow")

coral_2003_Western_Sambo_Shallow_macro <- summarise_at(coral_2003_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Western_Sambo_Shallow_coral <- summarise_at(coral_2003_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Western_Sambo_Shallow_merge <- merge(coral_2003_Western_Sambo_Shallow_coral,coral_2003_Western_Sambo_Shallow_macro)
coral_2003_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2003_Rock_Key_Shallow <- filter(coral_2003, sitename == "Rock Key Shallow")

coral_2003_Rock_Key_Shallow_macro <- summarise_at(coral_2003_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Rock_Key_Shallow_coral <- summarise_at(coral_2003_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Rock_Key_Shallow_merge <- merge(coral_2003_Rock_Key_Shallow_coral,coral_2003_Rock_Key_Shallow_macro)
coral_2003_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2003_Sand_Key_Shallow <- filter(coral_2003, sitename == "Sand Key Shallow")

coral_2003_Sand_Key_Shallow_macro <- summarise_at(coral_2003_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Sand_Key_Shallow_coral <- summarise_at(coral_2003_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Sand_Key_Shallow_merge <- merge(coral_2003_Sand_Key_Shallow_coral,coral_2003_Sand_Key_Shallow_macro)
coral_2003_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2003_Carysfort_Deep <- filter(coral_2003, sitename == "Carysfort Deep")

coral_2003_Carysfort_Deep_macro <- summarise_at(coral_2003_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Carysfort_Deep_coral <- summarise_at(coral_2003_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Carysfort_Deep_merge <- merge(coral_2003_Carysfort_Deep_coral,coral_2003_Carysfort_Deep_macro)
coral_2003_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2003_Molasses_Deep <- filter(coral_2003, sitename == "Molasses Deep")

coral_2003_Molasses_Deep_macro <- summarise_at(coral_2003_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Molasses_Deep_coral <- summarise_at(coral_2003_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Molasses_Deep_merge <- merge(coral_2003_Molasses_Deep_coral,coral_2003_Molasses_Deep_macro)
coral_2003_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2003_Conch_Deep <- filter(coral_2003, sitename == "Conch Deep")

coral_2003_Conch_Deep_macro <- summarise_at(coral_2003_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Conch_Deep_coral <- summarise_at(coral_2003_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Conch_Deep_merge <- merge(coral_2003_Conch_Deep_coral,coral_2003_Conch_Deep_macro)
coral_2003_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2003_Alligator_Deep <- filter(coral_2003, sitename == "Alligator Deep")

coral_2003_Alligator_Deep_macro <- summarise_at(coral_2003_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Alligator_Deep_coral <- summarise_at(coral_2003_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Alligator_Deep_merge <- merge(coral_2003_Alligator_Deep_coral,coral_2003_Alligator_Deep_macro)
coral_2003_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2003_Tennessee_Deep <- filter(coral_2003, sitename == "Tennessee Deep")

coral_2003_Tennessee_Deep_macro <- summarise_at(coral_2003_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Tennessee_Deep_coral <- summarise_at(coral_2003_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Tennessee_Deep_merge <- merge(coral_2003_Tennessee_Deep_coral,coral_2003_Tennessee_Deep_macro)
coral_2003_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2003_Sombrero_Deep <- filter(coral_2003, sitename == "Sombrero Deep")

coral_2003_Sombrero_Deep_macro <- summarise_at(coral_2003_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Sombrero_Deep_coral <- summarise_at(coral_2003_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Sombrero_Deep_merge <- merge(coral_2003_Sombrero_Deep_coral,coral_2003_Sombrero_Deep_macro)
coral_2003_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2003_Looe_Key_Deep <- filter(coral_2003, sitename == "Looe Key Deep")

coral_2003_Looe_Key_Deep_macro <- summarise_at(coral_2003_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Looe_Key_Deep_coral <- summarise_at(coral_2003_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Looe_Key_Deep_merge <- merge(coral_2003_Looe_Key_Deep_coral,coral_2003_Looe_Key_Deep_macro)
coral_2003_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2003_Eastern_Sambo_Deep <- filter(coral_2003, sitename == "Eastern Sambo Deep")

coral_2003_Eastern_Sambo_Deep_macro <- summarise_at(coral_2003_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Eastern_Sambo_Deep_coral <- summarise_at(coral_2003_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Eastern_Sambo_Deep_merge <- merge(coral_2003_Eastern_Sambo_Deep_coral,coral_2003_Eastern_Sambo_Deep_macro)
coral_2003_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2003_Western_Sambo_Deep <- filter(coral_2003, sitename == "Western Sambo Deep")

coral_2003_Western_Sambo_Deep_macro <- summarise_at(coral_2003_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Western_Sambo_Deep_coral <- summarise_at(coral_2003_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Western_Sambo_Deep_merge <- merge(coral_2003_Western_Sambo_Deep_coral,coral_2003_Western_Sambo_Deep_macro)
coral_2003_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2003_Rock_Key_Deep <- filter(coral_2003, sitename == "Rock Key Deep")

coral_2003_Rock_Key_Deep_macro <- summarise_at(coral_2003_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Rock_Key_Deep_coral <- summarise_at(coral_2003_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Rock_Key_Deep_merge <- merge(coral_2003_Rock_Key_Deep_coral,coral_2003_Rock_Key_Deep_macro)
coral_2003_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2003_Sand_Key_Deep <- filter(coral_2003, sitename == "Sand Key Deep")

coral_2003_Sand_Key_Deep_macro <- summarise_at(coral_2003_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Sand_Key_Deep_coral <- summarise_at(coral_2003_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Sand_Key_Deep_merge <- merge(coral_2003_Sand_Key_Deep_coral,coral_2003_Sand_Key_Deep_macro)
coral_2003_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2003_Bird_Key_Reef <- filter(coral_2003, sitename == "Bird Key Reef")

coral_2003_Bird_Key_Reef_macro <- summarise_at(coral_2003_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Bird_Key_Reef_coral <- summarise_at(coral_2003_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Bird_Key_Reef_merge <- merge(coral_2003_Bird_Key_Reef_coral,coral_2003_Bird_Key_Reef_macro)
coral_2003_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2003_Black_Coral_Rock <- filter(coral_2003, sitename == "Black Coral Rock")

coral_2003_Black_Coral_Rock_macro <- summarise_at(coral_2003_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Black_Coral_Rock_coral <- summarise_at(coral_2003_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Black_Coral_Rock_merge <- merge(coral_2003_Black_Coral_Rock_coral,coral_2003_Black_Coral_Rock_macro)
coral_2003_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2003_White_Shoal <- filter(coral_2003, sitename == "White Shoal")

coral_2003_White_Shoal_macro <- summarise_at(coral_2003_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_White_Shoal_coral <- summarise_at(coral_2003_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2003_White_Shoal_merge <- merge(coral_2003_White_Shoal_coral,coral_2003_White_Shoal_macro)
coral_2003_White_Shoal_merge$sitename <- "White Shoal"



coral_2003_Palm_Beach_1 <- filter(coral_2003, sitename == "Palm Beach 1")

coral_2003_Palm_Beach_1_macro <- summarise_at(coral_2003_Palm_Beach_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Palm_Beach_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Palm_Beach_1_coral <- summarise_at(coral_2003_Palm_Beach_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Palm_Beach_1_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Palm_Beach_1_merge <- merge(coral_2003_Palm_Beach_1_coral,coral_2003_Palm_Beach_1_macro)
coral_2003_Palm_Beach_1_merge$sitename <- "Palm Beach 1"


coral_2003_Palm_Beach_2 <- filter(coral_2003, sitename == "Palm Beach 2")

coral_2003_Palm_Beach_2_macro <- summarise_at(coral_2003_Palm_Beach_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Palm_Beach_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Palm_Beach_2_coral <- summarise_at(coral_2003_Palm_Beach_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Palm_Beach_2_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Palm_Beach_2_merge <- merge(coral_2003_Palm_Beach_2_coral,coral_2003_Palm_Beach_2_macro)
coral_2003_Palm_Beach_2_merge$sitename <- "Palm Beach 2"


coral_2003_Palm_Beach_3 <- filter(coral_2003, sitename == "Palm Beach 3")

coral_2003_Palm_Beach_3_macro <- summarise_at(coral_2003_Palm_Beach_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Palm_Beach_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Palm_Beach_3_coral <- summarise_at(coral_2003_Palm_Beach_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Palm_Beach_3_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Palm_Beach_3_merge <- merge(coral_2003_Palm_Beach_3_coral,coral_2003_Palm_Beach_3_macro)
coral_2003_Palm_Beach_3_merge$sitename <- "Palm Beach 3"


coral_2003_Broward_County_1 <- filter(coral_2003, sitename == "Broward County 1")

coral_2003_Broward_County_1_macro <- summarise_at(coral_2003_Broward_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Broward_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Broward_County_1_coral <- summarise_at(coral_2003_Broward_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Broward_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Broward_County_1_merge <- merge(coral_2003_Broward_County_1_coral,coral_2003_Broward_County_1_macro)
coral_2003_Broward_County_1_merge$sitename <- "Broward County 1"


coral_2003_Broward_County_2 <- filter(coral_2003, sitename == "Broward County 2")

coral_2003_Broward_County_2_macro <- summarise_at(coral_2003_Broward_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Broward_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Broward_County_2_coral <- summarise_at(coral_2003_Broward_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Broward_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Broward_County_2_merge <- merge(coral_2003_Broward_County_2_coral,coral_2003_Broward_County_2_macro)
coral_2003_Broward_County_2_merge$sitename <- "Broward County 2"


coral_2003_Broward_County_3 <- filter(coral_2003, sitename == "Broward County 3")

coral_2003_Broward_County_3_macro <- summarise_at(coral_2003_Broward_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Broward_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Broward_County_3_coral <- summarise_at(coral_2003_Broward_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Broward_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Broward_County_3_merge <- merge(coral_2003_Broward_County_3_coral,coral_2003_Broward_County_3_macro)
coral_2003_Broward_County_3_merge$sitename <- "Broward County 3"


coral_2003_Broward_County_A <- filter(coral_2003, sitename == "Broward County A")

coral_2003_Broward_County_A_macro <- summarise_at(coral_2003_Broward_County_A,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Broward_County_A_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Broward_County_A_coral <- summarise_at(coral_2003_Broward_County_A,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Broward_County_A_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Broward_County_A_merge <- merge(coral_2003_Broward_County_A_coral,coral_2003_Broward_County_A_macro)
coral_2003_Broward_County_A_merge$sitename <- "Broward County A"



coral_2003_Dade_County_1 <- filter(coral_2003, sitename == "Dade County 1")

coral_2003_Dade_County_1_macro <- summarise_at(coral_2003_Dade_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Dade_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Dade_County_1_coral <- summarise_at(coral_2003_Dade_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Dade_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Dade_County_1_merge <- merge(coral_2003_Dade_County_1_coral,coral_2003_Dade_County_1_macro)
coral_2003_Dade_County_1_merge$sitename <- "Dade County 1"


coral_2003_Dade_County_2 <- filter(coral_2003, sitename == "Dade County 2")

coral_2003_Dade_County_2_macro <- summarise_at(coral_2003_Dade_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Dade_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Dade_County_2_coral <- summarise_at(coral_2003_Dade_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Dade_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Dade_County_2_merge <- merge(coral_2003_Dade_County_2_coral,coral_2003_Dade_County_2_macro)
coral_2003_Dade_County_2_merge$sitename <- "Dade County 2"


coral_2003_Dade_County_3 <- filter(coral_2003, sitename == "Dade County 3")

coral_2003_Dade_County_3_macro <- summarise_at(coral_2003_Dade_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Dade_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2003_Dade_County_3_coral <- summarise_at(coral_2003_Dade_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2003_Dade_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2003_Dade_County_3_merge <- merge(coral_2003_Dade_County_3_coral,coral_2003_Dade_County_3_macro)
coral_2003_Dade_County_3_merge$sitename <- "Dade County 3"


coral_2003_merged <- rbind(coral_2003_El_Radabob_merge,coral_2003_Long_Key_merge,coral_2003_Moser_Channel_merge,
                           coral_2003_Content_Keys_merge,coral_2003_Turtle_merge,coral_2003_Porter_Patch_merge,
                           coral_2003_Admiral_merge,coral_2003_West_Turtle_Shoal_merge,coral_2003_Dustan_Rocks_merge,
                           coral_2003_West_Washer_Women_merge,coral_2003_Western_Head_merge,coral_2003_Cliff_Green_merge,
                           coral_2003_Smith_Shoal_merge,coral_2003_Jaap_Reef_merge,coral_2003_Carysfort_Shallow_merge,
                           coral_2003_Grecian_Rocks_merge,coral_2003_Molasses_Shallow_merge,coral_2003_Conch_Shallow_merge,
                           coral_2003_Alligator_Shallow_merge,coral_2003_Tennessee_Shallow_merge,coral_2003_Sombrero_Shallow_merge,
                           coral_2003_Looe_Key_Shallow_merge,coral_2003_Eastern_Sambo_Shallow_merge,coral_2003_Western_Sambo_Shallow_merge,
                           coral_2003_Rock_Key_Shallow_merge,coral_2003_Sand_Key_Shallow_merge,coral_2003_Carysfort_Deep_merge,
                           coral_2003_Molasses_Deep_merge,coral_2003_Conch_Deep_merge,coral_2003_Alligator_Deep_merge,
                           coral_2003_Tennessee_Deep_merge,coral_2003_Sombrero_Deep_merge,coral_2003_Looe_Key_Deep_merge,
                           coral_2003_Eastern_Sambo_Deep_merge,coral_2003_Western_Sambo_Deep_merge,coral_2003_Rock_Key_Deep_merge,
                           coral_2003_Sand_Key_Deep_merge,coral_2003_Bird_Key_Reef_merge,coral_2003_Black_Coral_Rock_merge,
                           coral_2003_White_Shoal_merge,coral_2003_Palm_Beach_1_merge,coral_2003_Palm_Beach_2_merge,
                           coral_2003_Palm_Beach_3_merge,coral_2003_Broward_County_1_merge,coral_2003_Broward_County_2_merge,
                           coral_2003_Broward_County_3_merge,coral_2003_Broward_County_A_merge,coral_2003_Dade_County_1_merge,
                           coral_2003_Dade_County_2_merge,coral_2003_Dade_County_3_merge)


coral_2003_merged$Year <- "2003"



coral_2004 <- import("2004_all.xlsx")
coral_2004 <- select(coral_2004, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2003 <- unique(coral_2003$sitename)
view(unique_2003)
unique_2004 <- unique(coral_2004$sitename)
view(unique_2004)





coral_2004_El_Radabob <- filter(coral_2004, sitename == "El Radabob")

coral_2004_El_Radabob_macro <- summarise_at(coral_2004_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_El_Radabob_coral <- summarise_at(coral_2004_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_El_Radabob_coral) <- c("Coral_Average","Coral_SD")

coral_2004_El_Radabob_merge <- merge(coral_2004_El_Radabob_coral,coral_2004_El_Radabob_macro)
coral_2004_El_Radabob_merge$sitename <- "El Radabob"


# coral_2004_Dove_Key <- filter(coral_2004, sitename == "Dove Key")
# 
# coral_2004_Dove_Key_macro <- summarise_at(coral_2004_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2004_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2004_Dove_Key_coral <- summarise_at(coral_2004_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2004_Dove_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2004_Dove_Key_merge <- merge(coral_2004_Dove_Key_coral,coral_2004_Dove_Key_macro)
# coral_2004_Dove_Key_merge$sitename <- "Dove Key"


coral_2004_Long_Key <- filter(coral_2004, sitename == "Long Key")

coral_2004_Long_Key_macro <- summarise_at(coral_2004_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Long_Key_coral <- summarise_at(coral_2004_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Long_Key_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Long_Key_merge <- merge(coral_2004_Long_Key_coral,coral_2004_Long_Key_macro)
coral_2004_Long_Key_merge$sitename <- "Long Key"



coral_2004_Moser_Channel <- filter(coral_2004, sitename == "Moser Channel")

coral_2004_Moser_Channel_macro <- summarise_at(coral_2004_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Moser_Channel_coral <- summarise_at(coral_2004_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Moser_Channel_merge <- merge(coral_2004_Moser_Channel_coral,coral_2004_Moser_Channel_macro)
coral_2004_Moser_Channel_merge$sitename <- "Moser Channel"


# coral_2004_Molasses_Keys <- filter(coral_2004, sitename == "Molasses Keys")
# 
# coral_2004_Molasses_Keys_macro <- summarise_at(coral_2004_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2004_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2004_Molasses_Keys_coral <- summarise_at(coral_2004_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2004_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2004_Molasses_Keys_merge <- merge(coral_2004_Molasses_Keys_coral,coral_2004_Molasses_Keys_macro)
# coral_2004_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2004_Content_Keys <- filter(coral_2004, sitename == "Content Keys")

coral_2004_Content_Keys_macro <- summarise_at(coral_2004_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Content_Keys_coral <- summarise_at(coral_2004_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Content_Keys_merge <- merge(coral_2004_Content_Keys_coral,coral_2004_Content_Keys_macro)
coral_2004_Content_Keys_merge$sitename <- "Content Keys"


coral_2004_Turtle <- filter(coral_2004, sitename == "Turtle")

coral_2004_Turtle_macro <- summarise_at(coral_2004_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Turtle_coral <- summarise_at(coral_2004_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Turtle_merge <- merge(coral_2004_Turtle_coral,coral_2004_Turtle_macro)
coral_2004_Turtle_merge$sitename <- "Turtle"


coral_2004_Porter_Patch <- filter(coral_2004, sitename == "Porter Patch")

coral_2004_Porter_Patch_macro <- summarise_at(coral_2004_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Porter_Patch_coral <- summarise_at(coral_2004_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Porter_Patch_merge <- merge(coral_2004_Porter_Patch_coral,coral_2004_Porter_Patch_macro)
coral_2004_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2004_Admiral <- filter(coral_2004, sitename == "Admiral")

coral_2004_Admiral_macro <- summarise_at(coral_2004_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Admiral_coral <- summarise_at(coral_2004_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Admiral_merge <- merge(coral_2004_Admiral_coral,coral_2004_Admiral_macro)
coral_2004_Admiral_merge$sitename <- "Admiral"


coral_2004_West_Turtle_Shoal <- filter(coral_2004, sitename == "West Turtle Shoal")

coral_2004_West_Turtle_Shoal_macro <- summarise_at(coral_2004_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_West_Turtle_Shoal_coral <- summarise_at(coral_2004_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2004_West_Turtle_Shoal_merge <- merge(coral_2004_West_Turtle_Shoal_coral,coral_2004_West_Turtle_Shoal_macro)
coral_2004_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2004_Dustan_Rocks <- filter(coral_2004, sitename == "Dustan Rocks")

coral_2004_Dustan_Rocks_macro <- summarise_at(coral_2004_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Dustan_Rocks_coral <- summarise_at(coral_2004_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Dustan_Rocks_merge <- merge(coral_2004_Dustan_Rocks_coral,coral_2004_Dustan_Rocks_macro)
coral_2004_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2004_West_Washer_Women <- filter(coral_2004, sitename == "West Washer Women")

coral_2004_West_Washer_Women_macro <- summarise_at(coral_2004_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_West_Washer_Women_coral <- summarise_at(coral_2004_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2004_West_Washer_Women_merge <- merge(coral_2004_West_Washer_Women_coral,coral_2004_West_Washer_Women_macro)
coral_2004_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2004_Western_Head <- filter(coral_2004, sitename == "Western Head")

coral_2004_Western_Head_macro <- summarise_at(coral_2004_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Western_Head_coral <- summarise_at(coral_2004_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Western_Head_merge <- merge(coral_2004_Western_Head_coral,coral_2004_Western_Head_macro)
coral_2004_Western_Head_merge$sitename <- "Western Head"


coral_2004_Cliff_Green <- filter(coral_2004, sitename == "Cliff Green")

coral_2004_Cliff_Green_macro <- summarise_at(coral_2004_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Cliff_Green_coral <- summarise_at(coral_2004_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Cliff_Green_merge <- merge(coral_2004_Cliff_Green_coral,coral_2004_Cliff_Green_macro)
coral_2004_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2004_Smith_Shoal <- filter(coral_2004, sitename == "Smith Shoal")

coral_2004_Smith_Shoal_macro <- summarise_at(coral_2004_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Smith_Shoal_coral <- summarise_at(coral_2004_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Smith_Shoal_merge <- merge(coral_2004_Smith_Shoal_coral,coral_2004_Smith_Shoal_macro)
coral_2004_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2004_Jaap_Reef <- filter(coral_2004, sitename == "Jaap Reef")

coral_2004_Jaap_Reef_macro <- summarise_at(coral_2004_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Jaap_Reef_coral <- summarise_at(coral_2004_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Jaap_Reef_merge <- merge(coral_2004_Jaap_Reef_coral,coral_2004_Jaap_Reef_macro)
coral_2004_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2004_Carysfort_Shallow <- filter(coral_2004, sitename == "Carysfort Shallow")

coral_2004_Carysfort_Shallow_macro <- summarise_at(coral_2004_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Carysfort_Shallow_coral <- summarise_at(coral_2004_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Carysfort_Shallow_merge <- merge(coral_2004_Carysfort_Shallow_coral,coral_2004_Carysfort_Shallow_macro)
coral_2004_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2004_Grecian_Rocks <- filter(coral_2004, sitename == "Grecian Rocks")

coral_2004_Grecian_Rocks_macro <- summarise_at(coral_2004_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Grecian_Rocks_coral <- summarise_at(coral_2004_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Grecian_Rocks_merge <- merge(coral_2004_Grecian_Rocks_coral,coral_2004_Grecian_Rocks_macro)
coral_2004_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2004_Molasses_Shallow <- filter(coral_2004, sitename == "Molasses Shallow")

coral_2004_Molasses_Shallow_macro <- summarise_at(coral_2004_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Molasses_Shallow_coral <- summarise_at(coral_2004_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Molasses_Shallow_merge <- merge(coral_2004_Molasses_Shallow_coral,coral_2004_Molasses_Shallow_macro)
coral_2004_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2004_Conch_Shallow <- filter(coral_2004, sitename == "Conch Shallow")

coral_2004_Conch_Shallow_macro <- summarise_at(coral_2004_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Conch_Shallow_coral <- summarise_at(coral_2004_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Conch_Shallow_merge <- merge(coral_2004_Conch_Shallow_coral,coral_2004_Conch_Shallow_macro)
coral_2004_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2004_Alligator_Shallow <- filter(coral_2004, sitename == "Alligator Shallow")

coral_2004_Alligator_Shallow_macro <- summarise_at(coral_2004_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Alligator_Shallow_coral <- summarise_at(coral_2004_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Alligator_Shallow_merge <- merge(coral_2004_Alligator_Shallow_coral,coral_2004_Alligator_Shallow_macro)
coral_2004_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2004_Tennessee_Shallow <- filter(coral_2004, sitename == "Tennessee Shallow")

coral_2004_Tennessee_Shallow_macro <- summarise_at(coral_2004_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Tennessee_Shallow_coral <- summarise_at(coral_2004_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Tennessee_Shallow_merge <- merge(coral_2004_Tennessee_Shallow_coral,coral_2004_Tennessee_Shallow_macro)
coral_2004_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2004_Sombrero_Shallow <- filter(coral_2004, sitename == "Sombrero Shallow")

coral_2004_Sombrero_Shallow_macro <- summarise_at(coral_2004_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Sombrero_Shallow_coral <- summarise_at(coral_2004_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Sombrero_Shallow_merge <- merge(coral_2004_Sombrero_Shallow_coral,coral_2004_Sombrero_Shallow_macro)
coral_2004_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2004_Looe_Key_Shallow <- filter(coral_2004, sitename == "Looe Key Shallow")

coral_2004_Looe_Key_Shallow_macro <- summarise_at(coral_2004_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Looe_Key_Shallow_coral <- summarise_at(coral_2004_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Looe_Key_Shallow_merge <- merge(coral_2004_Looe_Key_Shallow_coral,coral_2004_Looe_Key_Shallow_macro)
coral_2004_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2004_Eastern_Sambo_Shallow <- filter(coral_2004, sitename == "Eastern Sambo Shallow")

coral_2004_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2004_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2004_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Eastern_Sambo_Shallow_merge <- merge(coral_2004_Eastern_Sambo_Shallow_coral,coral_2004_Eastern_Sambo_Shallow_macro)
coral_2004_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2004_Western_Sambo_Shallow <- filter(coral_2004, sitename == "Western Sambo Shallow")

coral_2004_Western_Sambo_Shallow_macro <- summarise_at(coral_2004_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Western_Sambo_Shallow_coral <- summarise_at(coral_2004_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Western_Sambo_Shallow_merge <- merge(coral_2004_Western_Sambo_Shallow_coral,coral_2004_Western_Sambo_Shallow_macro)
coral_2004_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2004_Rock_Key_Shallow <- filter(coral_2004, sitename == "Rock Key Shallow")

coral_2004_Rock_Key_Shallow_macro <- summarise_at(coral_2004_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Rock_Key_Shallow_coral <- summarise_at(coral_2004_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Rock_Key_Shallow_merge <- merge(coral_2004_Rock_Key_Shallow_coral,coral_2004_Rock_Key_Shallow_macro)
coral_2004_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2004_Sand_Key_Shallow <- filter(coral_2004, sitename == "Sand Key Shallow")

coral_2004_Sand_Key_Shallow_macro <- summarise_at(coral_2004_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Sand_Key_Shallow_coral <- summarise_at(coral_2004_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Sand_Key_Shallow_merge <- merge(coral_2004_Sand_Key_Shallow_coral,coral_2004_Sand_Key_Shallow_macro)
coral_2004_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2004_Carysfort_Deep <- filter(coral_2004, sitename == "Carysfort Deep")

coral_2004_Carysfort_Deep_macro <- summarise_at(coral_2004_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Carysfort_Deep_coral <- summarise_at(coral_2004_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Carysfort_Deep_merge <- merge(coral_2004_Carysfort_Deep_coral,coral_2004_Carysfort_Deep_macro)
coral_2004_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2004_Molasses_Deep <- filter(coral_2004, sitename == "Molasses Deep")

coral_2004_Molasses_Deep_macro <- summarise_at(coral_2004_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Molasses_Deep_coral <- summarise_at(coral_2004_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Molasses_Deep_merge <- merge(coral_2004_Molasses_Deep_coral,coral_2004_Molasses_Deep_macro)
coral_2004_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2004_Conch_Deep <- filter(coral_2004, sitename == "Conch Deep")

coral_2004_Conch_Deep_macro <- summarise_at(coral_2004_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Conch_Deep_coral <- summarise_at(coral_2004_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Conch_Deep_merge <- merge(coral_2004_Conch_Deep_coral,coral_2004_Conch_Deep_macro)
coral_2004_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2004_Alligator_Deep <- filter(coral_2004, sitename == "Alligator Deep")

coral_2004_Alligator_Deep_macro <- summarise_at(coral_2004_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Alligator_Deep_coral <- summarise_at(coral_2004_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Alligator_Deep_merge <- merge(coral_2004_Alligator_Deep_coral,coral_2004_Alligator_Deep_macro)
coral_2004_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2004_Tennessee_Deep <- filter(coral_2004, sitename == "Tennessee Deep")

coral_2004_Tennessee_Deep_macro <- summarise_at(coral_2004_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Tennessee_Deep_coral <- summarise_at(coral_2004_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Tennessee_Deep_merge <- merge(coral_2004_Tennessee_Deep_coral,coral_2004_Tennessee_Deep_macro)
coral_2004_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2004_Sombrero_Deep <- filter(coral_2004, sitename == "Sombrero Deep")

coral_2004_Sombrero_Deep_macro <- summarise_at(coral_2004_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Sombrero_Deep_coral <- summarise_at(coral_2004_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Sombrero_Deep_merge <- merge(coral_2004_Sombrero_Deep_coral,coral_2004_Sombrero_Deep_macro)
coral_2004_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2004_Looe_Key_Deep <- filter(coral_2004, sitename == "Looe Key Deep")

coral_2004_Looe_Key_Deep_macro <- summarise_at(coral_2004_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Looe_Key_Deep_coral <- summarise_at(coral_2004_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Looe_Key_Deep_merge <- merge(coral_2004_Looe_Key_Deep_coral,coral_2004_Looe_Key_Deep_macro)
coral_2004_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2004_Eastern_Sambo_Deep <- filter(coral_2004, sitename == "Eastern Sambo Deep")

coral_2004_Eastern_Sambo_Deep_macro <- summarise_at(coral_2004_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Eastern_Sambo_Deep_coral <- summarise_at(coral_2004_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Eastern_Sambo_Deep_merge <- merge(coral_2004_Eastern_Sambo_Deep_coral,coral_2004_Eastern_Sambo_Deep_macro)
coral_2004_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2004_Western_Sambo_Deep <- filter(coral_2004, sitename == "Western Sambo Deep")

coral_2004_Western_Sambo_Deep_macro <- summarise_at(coral_2004_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Western_Sambo_Deep_coral <- summarise_at(coral_2004_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Western_Sambo_Deep_merge <- merge(coral_2004_Western_Sambo_Deep_coral,coral_2004_Western_Sambo_Deep_macro)
coral_2004_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2004_Rock_Key_Deep <- filter(coral_2004, sitename == "Rock Key Deep")

coral_2004_Rock_Key_Deep_macro <- summarise_at(coral_2004_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Rock_Key_Deep_coral <- summarise_at(coral_2004_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Rock_Key_Deep_merge <- merge(coral_2004_Rock_Key_Deep_coral,coral_2004_Rock_Key_Deep_macro)
coral_2004_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2004_Sand_Key_Deep <- filter(coral_2004, sitename == "Sand Key Deep")

coral_2004_Sand_Key_Deep_macro <- summarise_at(coral_2004_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Sand_Key_Deep_coral <- summarise_at(coral_2004_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Sand_Key_Deep_merge <- merge(coral_2004_Sand_Key_Deep_coral,coral_2004_Sand_Key_Deep_macro)
coral_2004_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2004_Bird_Key_Reef <- filter(coral_2004, sitename == "Bird Key Reef")

coral_2004_Bird_Key_Reef_macro <- summarise_at(coral_2004_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Bird_Key_Reef_coral <- summarise_at(coral_2004_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Bird_Key_Reef_merge <- merge(coral_2004_Bird_Key_Reef_coral,coral_2004_Bird_Key_Reef_macro)
coral_2004_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2004_Black_Coral_Rock <- filter(coral_2004, sitename == "Black Coral Rock")

coral_2004_Black_Coral_Rock_macro <- summarise_at(coral_2004_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Black_Coral_Rock_coral <- summarise_at(coral_2004_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Black_Coral_Rock_merge <- merge(coral_2004_Black_Coral_Rock_coral,coral_2004_Black_Coral_Rock_macro)
coral_2004_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2004_White_Shoal <- filter(coral_2004, sitename == "White Shoal")

coral_2004_White_Shoal_macro <- summarise_at(coral_2004_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_White_Shoal_coral <- summarise_at(coral_2004_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2004_White_Shoal_merge <- merge(coral_2004_White_Shoal_coral,coral_2004_White_Shoal_macro)
coral_2004_White_Shoal_merge$sitename <- "White Shoal"



coral_2004_Palm_Beach_1 <- filter(coral_2004, sitename == "Palm Beach 1")

coral_2004_Palm_Beach_1_macro <- summarise_at(coral_2004_Palm_Beach_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Palm_Beach_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Palm_Beach_1_coral <- summarise_at(coral_2004_Palm_Beach_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Palm_Beach_1_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Palm_Beach_1_merge <- merge(coral_2004_Palm_Beach_1_coral,coral_2004_Palm_Beach_1_macro)
coral_2004_Palm_Beach_1_merge$sitename <- "Palm Beach 1"


coral_2004_Palm_Beach_2 <- filter(coral_2004, sitename == "Palm Beach 2")

coral_2004_Palm_Beach_2_macro <- summarise_at(coral_2004_Palm_Beach_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Palm_Beach_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Palm_Beach_2_coral <- summarise_at(coral_2004_Palm_Beach_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Palm_Beach_2_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Palm_Beach_2_merge <- merge(coral_2004_Palm_Beach_2_coral,coral_2004_Palm_Beach_2_macro)
coral_2004_Palm_Beach_2_merge$sitename <- "Palm Beach 2"


coral_2004_Palm_Beach_3 <- filter(coral_2004, sitename == "Palm Beach 3")

coral_2004_Palm_Beach_3_macro <- summarise_at(coral_2004_Palm_Beach_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Palm_Beach_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Palm_Beach_3_coral <- summarise_at(coral_2004_Palm_Beach_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Palm_Beach_3_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Palm_Beach_3_merge <- merge(coral_2004_Palm_Beach_3_coral,coral_2004_Palm_Beach_3_macro)
coral_2004_Palm_Beach_3_merge$sitename <- "Palm Beach 3"


coral_2004_Broward_County_1 <- filter(coral_2004, sitename == "Broward County 1")

coral_2004_Broward_County_1_macro <- summarise_at(coral_2004_Broward_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Broward_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Broward_County_1_coral <- summarise_at(coral_2004_Broward_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Broward_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Broward_County_1_merge <- merge(coral_2004_Broward_County_1_coral,coral_2004_Broward_County_1_macro)
coral_2004_Broward_County_1_merge$sitename <- "Broward County 1"


coral_2004_Broward_County_2 <- filter(coral_2004, sitename == "Broward County 2")

coral_2004_Broward_County_2_macro <- summarise_at(coral_2004_Broward_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Broward_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Broward_County_2_coral <- summarise_at(coral_2004_Broward_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Broward_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Broward_County_2_merge <- merge(coral_2004_Broward_County_2_coral,coral_2004_Broward_County_2_macro)
coral_2004_Broward_County_2_merge$sitename <- "Broward County 2"


coral_2004_Broward_County_3 <- filter(coral_2004, sitename == "Broward County 3")

coral_2004_Broward_County_3_macro <- summarise_at(coral_2004_Broward_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Broward_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Broward_County_3_coral <- summarise_at(coral_2004_Broward_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Broward_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Broward_County_3_merge <- merge(coral_2004_Broward_County_3_coral,coral_2004_Broward_County_3_macro)
coral_2004_Broward_County_3_merge$sitename <- "Broward County 3"


coral_2004_Broward_County_A <- filter(coral_2004, sitename == "Broward County A")

coral_2004_Broward_County_A_macro <- summarise_at(coral_2004_Broward_County_A,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Broward_County_A_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Broward_County_A_coral <- summarise_at(coral_2004_Broward_County_A,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Broward_County_A_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Broward_County_A_merge <- merge(coral_2004_Broward_County_A_coral,coral_2004_Broward_County_A_macro)
coral_2004_Broward_County_A_merge$sitename <- "Broward County A"



coral_2004_Dade_County_1 <- filter(coral_2004, sitename == "Dade County 1")

coral_2004_Dade_County_1_macro <- summarise_at(coral_2004_Dade_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Dade_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Dade_County_1_coral <- summarise_at(coral_2004_Dade_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Dade_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Dade_County_1_merge <- merge(coral_2004_Dade_County_1_coral,coral_2004_Dade_County_1_macro)
coral_2004_Dade_County_1_merge$sitename <- "Dade County 1"


coral_2004_Dade_County_2 <- filter(coral_2004, sitename == "Dade County 2")

coral_2004_Dade_County_2_macro <- summarise_at(coral_2004_Dade_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Dade_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Dade_County_2_coral <- summarise_at(coral_2004_Dade_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Dade_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Dade_County_2_merge <- merge(coral_2004_Dade_County_2_coral,coral_2004_Dade_County_2_macro)
coral_2004_Dade_County_2_merge$sitename <- "Dade County 2"


coral_2004_Dade_County_3 <- filter(coral_2004, sitename == "Dade County 3")

coral_2004_Dade_County_3_macro <- summarise_at(coral_2004_Dade_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Dade_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Dade_County_3_coral <- summarise_at(coral_2004_Dade_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Dade_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Dade_County_3_merge <- merge(coral_2004_Dade_County_3_coral,coral_2004_Dade_County_3_macro)
coral_2004_Dade_County_3_merge$sitename <- "Dade County 3"


coral_2004_Mayers_Peak <- filter(coral_2004, sitename == "Mayer's Peak")

coral_2004_Mayers_Peak_macro <- summarise_at(coral_2004_Mayers_Peak,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Mayers_Peak_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Mayers_Peak_coral <- summarise_at(coral_2004_Mayers_Peak,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Mayers_Peak_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Mayers_Peak_merge <- merge(coral_2004_Mayers_Peak_coral,coral_2004_Mayers_Peak_macro)
coral_2004_Mayers_Peak_merge$sitename <- "Mayer's Peak"


coral_2004_Temptation_Rock <- filter(coral_2004, sitename == "Temptation Rock")

coral_2004_Temptation_Rock_macro <- summarise_at(coral_2004_Temptation_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Temptation_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Temptation_Rock_coral <- summarise_at(coral_2004_Temptation_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Temptation_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Temptation_Rock_merge <- merge(coral_2004_Temptation_Rock_coral,coral_2004_Temptation_Rock_macro)
coral_2004_Temptation_Rock_merge$sitename <- "Temptation Rock"


coral_2004_Palmata_Patch <- filter(coral_2004, sitename == "Palmata Patch")

coral_2004_Palmata_Patch_macro <- summarise_at(coral_2004_Palmata_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Palmata_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Palmata_Patch_coral <- summarise_at(coral_2004_Palmata_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Palmata_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Palmata_Patch_merge <- merge(coral_2004_Palmata_Patch_coral,coral_2004_Palmata_Patch_macro)
coral_2004_Palmata_Patch_merge$sitename <- "Palmata Patch"


coral_2004_Prolifera_Patch <- filter(coral_2004, sitename == "Prolifera Patch")

coral_2004_Prolifera_Patch_macro <- summarise_at(coral_2004_Prolifera_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Prolifera_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2004_Prolifera_Patch_coral <- summarise_at(coral_2004_Prolifera_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2004_Prolifera_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2004_Prolifera_Patch_merge <- merge(coral_2004_Prolifera_Patch_coral,coral_2004_Prolifera_Patch_macro)
coral_2004_Prolifera_Patch_merge$sitename <- "Prolifera Patch"


coral_2004_merged <- rbind(coral_2004_El_Radabob_merge,coral_2004_Long_Key_merge,coral_2004_Moser_Channel_merge,
                           coral_2004_Content_Keys_merge,coral_2004_Turtle_merge,coral_2004_Porter_Patch_merge,
                           coral_2004_Admiral_merge,coral_2004_West_Turtle_Shoal_merge,coral_2004_Dustan_Rocks_merge,
                           coral_2004_West_Washer_Women_merge,coral_2004_Western_Head_merge,coral_2004_Cliff_Green_merge,
                           coral_2004_Smith_Shoal_merge,coral_2004_Jaap_Reef_merge,coral_2004_Carysfort_Shallow_merge,
                           coral_2004_Grecian_Rocks_merge,coral_2004_Molasses_Shallow_merge,coral_2004_Conch_Shallow_merge,
                           coral_2004_Alligator_Shallow_merge,coral_2004_Tennessee_Shallow_merge,coral_2004_Sombrero_Shallow_merge,
                           coral_2004_Looe_Key_Shallow_merge,coral_2004_Eastern_Sambo_Shallow_merge,coral_2004_Western_Sambo_Shallow_merge,
                           coral_2004_Rock_Key_Shallow_merge,coral_2004_Sand_Key_Shallow_merge,coral_2004_Carysfort_Deep_merge,
                           coral_2004_Molasses_Deep_merge,coral_2004_Conch_Deep_merge,coral_2004_Alligator_Deep_merge,
                           coral_2004_Tennessee_Deep_merge,coral_2004_Sombrero_Deep_merge,coral_2004_Looe_Key_Deep_merge,
                           coral_2004_Eastern_Sambo_Deep_merge,coral_2004_Western_Sambo_Deep_merge,coral_2004_Rock_Key_Deep_merge,
                           coral_2004_Sand_Key_Deep_merge,coral_2004_Bird_Key_Reef_merge,coral_2004_Black_Coral_Rock_merge,
                           coral_2004_White_Shoal_merge,coral_2004_Palm_Beach_1_merge,coral_2004_Palm_Beach_2_merge,
                           coral_2004_Palm_Beach_3_merge,coral_2004_Broward_County_1_merge,coral_2004_Broward_County_2_merge,
                           coral_2004_Broward_County_3_merge,coral_2004_Broward_County_A_merge,coral_2004_Dade_County_1_merge,
                           coral_2004_Dade_County_2_merge,coral_2004_Dade_County_3_merge,coral_2004_Mayers_Peak_merge,
                           coral_2004_Temptation_Rock_merge,coral_2004_Palmata_Patch_merge,coral_2004_Prolifera_Patch_merge)


coral_2004_merged$Year <- "2004"




coral_2005 <- import("2005_all.xlsx")
coral_2005 <- select(coral_2005, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2004 <- unique(coral_2004$sitename)
view(unique_2004)
unique_2005 <- unique(coral_2005$sitename)
view(unique_2005)




coral_2005_El_Radabob <- filter(coral_2005, sitename == "El Radabob")

coral_2005_El_Radabob_macro <- summarise_at(coral_2005_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_El_Radabob_coral <- summarise_at(coral_2005_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_El_Radabob_coral) <- c("Coral_Average","Coral_SD")

coral_2005_El_Radabob_merge <- merge(coral_2005_El_Radabob_coral,coral_2005_El_Radabob_macro)
coral_2005_El_Radabob_merge$sitename <- "El Radabob"


# coral_2005_Dove_Key <- filter(coral_2005, sitename == "Dove Key")
# 
# coral_2005_Dove_Key_macro <- summarise_at(coral_2005_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2005_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2005_Dove_Key_coral <- summarise_at(coral_2005_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2005_Dove_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2005_Dove_Key_merge <- merge(coral_2005_Dove_Key_coral,coral_2005_Dove_Key_macro)
# coral_2005_Dove_Key_merge$sitename <- "Dove Key"


coral_2005_Long_Key <- filter(coral_2005, sitename == "Long Key")

coral_2005_Long_Key_macro <- summarise_at(coral_2005_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Long_Key_coral <- summarise_at(coral_2005_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Long_Key_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Long_Key_merge <- merge(coral_2005_Long_Key_coral,coral_2005_Long_Key_macro)
coral_2005_Long_Key_merge$sitename <- "Long Key"



coral_2005_Moser_Channel <- filter(coral_2005, sitename == "Moser Channel")

coral_2005_Moser_Channel_macro <- summarise_at(coral_2005_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Moser_Channel_coral <- summarise_at(coral_2005_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Moser_Channel_merge <- merge(coral_2005_Moser_Channel_coral,coral_2005_Moser_Channel_macro)
coral_2005_Moser_Channel_merge$sitename <- "Moser Channel"


# coral_2005_Molasses_Keys <- filter(coral_2005, sitename == "Molasses Keys")
# 
# coral_2005_Molasses_Keys_macro <- summarise_at(coral_2005_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2005_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2005_Molasses_Keys_coral <- summarise_at(coral_2005_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2005_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2005_Molasses_Keys_merge <- merge(coral_2005_Molasses_Keys_coral,coral_2005_Molasses_Keys_macro)
# coral_2005_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2005_Content_Keys <- filter(coral_2005, sitename == "Content Keys")

coral_2005_Content_Keys_macro <- summarise_at(coral_2005_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Content_Keys_coral <- summarise_at(coral_2005_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Content_Keys_merge <- merge(coral_2005_Content_Keys_coral,coral_2005_Content_Keys_macro)
coral_2005_Content_Keys_merge$sitename <- "Content Keys"


coral_2005_Turtle <- filter(coral_2005, sitename == "Turtle")

coral_2005_Turtle_macro <- summarise_at(coral_2005_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Turtle_coral <- summarise_at(coral_2005_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Turtle_merge <- merge(coral_2005_Turtle_coral,coral_2005_Turtle_macro)
coral_2005_Turtle_merge$sitename <- "Turtle"


coral_2005_Porter_Patch <- filter(coral_2005, sitename == "Porter Patch")

coral_2005_Porter_Patch_macro <- summarise_at(coral_2005_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Porter_Patch_coral <- summarise_at(coral_2005_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Porter_Patch_merge <- merge(coral_2005_Porter_Patch_coral,coral_2005_Porter_Patch_macro)
coral_2005_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2005_Admiral <- filter(coral_2005, sitename == "Admiral")

coral_2005_Admiral_macro <- summarise_at(coral_2005_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Admiral_coral <- summarise_at(coral_2005_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Admiral_merge <- merge(coral_2005_Admiral_coral,coral_2005_Admiral_macro)
coral_2005_Admiral_merge$sitename <- "Admiral"


coral_2005_West_Turtle_Shoal <- filter(coral_2005, sitename == "West Turtle Shoal")

coral_2005_West_Turtle_Shoal_macro <- summarise_at(coral_2005_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_West_Turtle_Shoal_coral <- summarise_at(coral_2005_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2005_West_Turtle_Shoal_merge <- merge(coral_2005_West_Turtle_Shoal_coral,coral_2005_West_Turtle_Shoal_macro)
coral_2005_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2005_Dustan_Rocks <- filter(coral_2005, sitename == "Dustan Rocks")

coral_2005_Dustan_Rocks_macro <- summarise_at(coral_2005_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Dustan_Rocks_coral <- summarise_at(coral_2005_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Dustan_Rocks_merge <- merge(coral_2005_Dustan_Rocks_coral,coral_2005_Dustan_Rocks_macro)
coral_2005_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2005_West_Washer_Women <- filter(coral_2005, sitename == "West Washer Women")

coral_2005_West_Washer_Women_macro <- summarise_at(coral_2005_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_West_Washer_Women_coral <- summarise_at(coral_2005_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2005_West_Washer_Women_merge <- merge(coral_2005_West_Washer_Women_coral,coral_2005_West_Washer_Women_macro)
coral_2005_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2005_Western_Head <- filter(coral_2005, sitename == "Western Head")

coral_2005_Western_Head_macro <- summarise_at(coral_2005_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Western_Head_coral <- summarise_at(coral_2005_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Western_Head_merge <- merge(coral_2005_Western_Head_coral,coral_2005_Western_Head_macro)
coral_2005_Western_Head_merge$sitename <- "Western Head"


coral_2005_Cliff_Green <- filter(coral_2005, sitename == "Cliff Green")

coral_2005_Cliff_Green_macro <- summarise_at(coral_2005_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Cliff_Green_coral <- summarise_at(coral_2005_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Cliff_Green_merge <- merge(coral_2005_Cliff_Green_coral,coral_2005_Cliff_Green_macro)
coral_2005_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2005_Smith_Shoal <- filter(coral_2005, sitename == "Smith Shoal")

coral_2005_Smith_Shoal_macro <- summarise_at(coral_2005_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Smith_Shoal_coral <- summarise_at(coral_2005_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Smith_Shoal_merge <- merge(coral_2005_Smith_Shoal_coral,coral_2005_Smith_Shoal_macro)
coral_2005_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2005_Jaap_Reef <- filter(coral_2005, sitename == "Jaap Reef")

coral_2005_Jaap_Reef_macro <- summarise_at(coral_2005_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Jaap_Reef_coral <- summarise_at(coral_2005_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Jaap_Reef_merge <- merge(coral_2005_Jaap_Reef_coral,coral_2005_Jaap_Reef_macro)
coral_2005_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2005_Carysfort_Shallow <- filter(coral_2005, sitename == "Carysfort Shallow")

coral_2005_Carysfort_Shallow_macro <- summarise_at(coral_2005_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Carysfort_Shallow_coral <- summarise_at(coral_2005_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Carysfort_Shallow_merge <- merge(coral_2005_Carysfort_Shallow_coral,coral_2005_Carysfort_Shallow_macro)
coral_2005_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2005_Grecian_Rocks <- filter(coral_2005, sitename == "Grecian Rocks")

coral_2005_Grecian_Rocks_macro <- summarise_at(coral_2005_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Grecian_Rocks_coral <- summarise_at(coral_2005_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Grecian_Rocks_merge <- merge(coral_2005_Grecian_Rocks_coral,coral_2005_Grecian_Rocks_macro)
coral_2005_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2005_Molasses_Shallow <- filter(coral_2005, sitename == "Molasses Shallow")

coral_2005_Molasses_Shallow_macro <- summarise_at(coral_2005_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Molasses_Shallow_coral <- summarise_at(coral_2005_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Molasses_Shallow_merge <- merge(coral_2005_Molasses_Shallow_coral,coral_2005_Molasses_Shallow_macro)
coral_2005_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2005_Conch_Shallow <- filter(coral_2005, sitename == "Conch Shallow")

coral_2005_Conch_Shallow_macro <- summarise_at(coral_2005_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Conch_Shallow_coral <- summarise_at(coral_2005_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Conch_Shallow_merge <- merge(coral_2005_Conch_Shallow_coral,coral_2005_Conch_Shallow_macro)
coral_2005_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2005_Alligator_Shallow <- filter(coral_2005, sitename == "Alligator Shallow")

coral_2005_Alligator_Shallow_macro <- summarise_at(coral_2005_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Alligator_Shallow_coral <- summarise_at(coral_2005_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Alligator_Shallow_merge <- merge(coral_2005_Alligator_Shallow_coral,coral_2005_Alligator_Shallow_macro)
coral_2005_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2005_Tennessee_Shallow <- filter(coral_2005, sitename == "Tennessee Shallow")

coral_2005_Tennessee_Shallow_macro <- summarise_at(coral_2005_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Tennessee_Shallow_coral <- summarise_at(coral_2005_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Tennessee_Shallow_merge <- merge(coral_2005_Tennessee_Shallow_coral,coral_2005_Tennessee_Shallow_macro)
coral_2005_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2005_Sombrero_Shallow <- filter(coral_2005, sitename == "Sombrero Shallow")

coral_2005_Sombrero_Shallow_macro <- summarise_at(coral_2005_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Sombrero_Shallow_coral <- summarise_at(coral_2005_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Sombrero_Shallow_merge <- merge(coral_2005_Sombrero_Shallow_coral,coral_2005_Sombrero_Shallow_macro)
coral_2005_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2005_Looe_Key_Shallow <- filter(coral_2005, sitename == "Looe Key Shallow")

coral_2005_Looe_Key_Shallow_macro <- summarise_at(coral_2005_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Looe_Key_Shallow_coral <- summarise_at(coral_2005_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Looe_Key_Shallow_merge <- merge(coral_2005_Looe_Key_Shallow_coral,coral_2005_Looe_Key_Shallow_macro)
coral_2005_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2005_Eastern_Sambo_Shallow <- filter(coral_2005, sitename == "Eastern Sambo Shallow")

coral_2005_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2005_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2005_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Eastern_Sambo_Shallow_merge <- merge(coral_2005_Eastern_Sambo_Shallow_coral,coral_2005_Eastern_Sambo_Shallow_macro)
coral_2005_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2005_Western_Sambo_Shallow <- filter(coral_2005, sitename == "Western Sambo Shallow")

coral_2005_Western_Sambo_Shallow_macro <- summarise_at(coral_2005_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Western_Sambo_Shallow_coral <- summarise_at(coral_2005_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Western_Sambo_Shallow_merge <- merge(coral_2005_Western_Sambo_Shallow_coral,coral_2005_Western_Sambo_Shallow_macro)
coral_2005_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2005_Rock_Key_Shallow <- filter(coral_2005, sitename == "Rock Key Shallow")

coral_2005_Rock_Key_Shallow_macro <- summarise_at(coral_2005_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Rock_Key_Shallow_coral <- summarise_at(coral_2005_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Rock_Key_Shallow_merge <- merge(coral_2005_Rock_Key_Shallow_coral,coral_2005_Rock_Key_Shallow_macro)
coral_2005_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2005_Sand_Key_Shallow <- filter(coral_2005, sitename == "Sand Key Shallow")

coral_2005_Sand_Key_Shallow_macro <- summarise_at(coral_2005_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Sand_Key_Shallow_coral <- summarise_at(coral_2005_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Sand_Key_Shallow_merge <- merge(coral_2005_Sand_Key_Shallow_coral,coral_2005_Sand_Key_Shallow_macro)
coral_2005_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2005_Carysfort_Deep <- filter(coral_2005, sitename == "Carysfort Deep")

coral_2005_Carysfort_Deep_macro <- summarise_at(coral_2005_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Carysfort_Deep_coral <- summarise_at(coral_2005_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Carysfort_Deep_merge <- merge(coral_2005_Carysfort_Deep_coral,coral_2005_Carysfort_Deep_macro)
coral_2005_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2005_Molasses_Deep <- filter(coral_2005, sitename == "Molasses Deep")

coral_2005_Molasses_Deep_macro <- summarise_at(coral_2005_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Molasses_Deep_coral <- summarise_at(coral_2005_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Molasses_Deep_merge <- merge(coral_2005_Molasses_Deep_coral,coral_2005_Molasses_Deep_macro)
coral_2005_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2005_Conch_Deep <- filter(coral_2005, sitename == "Conch Deep")

coral_2005_Conch_Deep_macro <- summarise_at(coral_2005_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Conch_Deep_coral <- summarise_at(coral_2005_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Conch_Deep_merge <- merge(coral_2005_Conch_Deep_coral,coral_2005_Conch_Deep_macro)
coral_2005_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2005_Alligator_Deep <- filter(coral_2005, sitename == "Alligator Deep")

coral_2005_Alligator_Deep_macro <- summarise_at(coral_2005_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Alligator_Deep_coral <- summarise_at(coral_2005_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Alligator_Deep_merge <- merge(coral_2005_Alligator_Deep_coral,coral_2005_Alligator_Deep_macro)
coral_2005_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2005_Tennessee_Deep <- filter(coral_2005, sitename == "Tennessee Deep")

coral_2005_Tennessee_Deep_macro <- summarise_at(coral_2005_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Tennessee_Deep_coral <- summarise_at(coral_2005_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Tennessee_Deep_merge <- merge(coral_2005_Tennessee_Deep_coral,coral_2005_Tennessee_Deep_macro)
coral_2005_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2005_Sombrero_Deep <- filter(coral_2005, sitename == "Sombrero Deep")

coral_2005_Sombrero_Deep_macro <- summarise_at(coral_2005_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Sombrero_Deep_coral <- summarise_at(coral_2005_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Sombrero_Deep_merge <- merge(coral_2005_Sombrero_Deep_coral,coral_2005_Sombrero_Deep_macro)
coral_2005_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2005_Looe_Key_Deep <- filter(coral_2005, sitename == "Looe Key Deep")

coral_2005_Looe_Key_Deep_macro <- summarise_at(coral_2005_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Looe_Key_Deep_coral <- summarise_at(coral_2005_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Looe_Key_Deep_merge <- merge(coral_2005_Looe_Key_Deep_coral,coral_2005_Looe_Key_Deep_macro)
coral_2005_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2005_Eastern_Sambo_Deep <- filter(coral_2005, sitename == "Eastern Sambo Deep")

coral_2005_Eastern_Sambo_Deep_macro <- summarise_at(coral_2005_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Eastern_Sambo_Deep_coral <- summarise_at(coral_2005_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Eastern_Sambo_Deep_merge <- merge(coral_2005_Eastern_Sambo_Deep_coral,coral_2005_Eastern_Sambo_Deep_macro)
coral_2005_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2005_Western_Sambo_Deep <- filter(coral_2005, sitename == "Western Sambo Deep")

coral_2005_Western_Sambo_Deep_macro <- summarise_at(coral_2005_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Western_Sambo_Deep_coral <- summarise_at(coral_2005_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Western_Sambo_Deep_merge <- merge(coral_2005_Western_Sambo_Deep_coral,coral_2005_Western_Sambo_Deep_macro)
coral_2005_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2005_Rock_Key_Deep <- filter(coral_2005, sitename == "Rock Key Deep")

coral_2005_Rock_Key_Deep_macro <- summarise_at(coral_2005_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Rock_Key_Deep_coral <- summarise_at(coral_2005_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Rock_Key_Deep_merge <- merge(coral_2005_Rock_Key_Deep_coral,coral_2005_Rock_Key_Deep_macro)
coral_2005_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2005_Sand_Key_Deep <- filter(coral_2005, sitename == "Sand Key Deep")

coral_2005_Sand_Key_Deep_macro <- summarise_at(coral_2005_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Sand_Key_Deep_coral <- summarise_at(coral_2005_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Sand_Key_Deep_merge <- merge(coral_2005_Sand_Key_Deep_coral,coral_2005_Sand_Key_Deep_macro)
coral_2005_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2005_Bird_Key_Reef <- filter(coral_2005, sitename == "Bird Key Reef")

coral_2005_Bird_Key_Reef_macro <- summarise_at(coral_2005_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Bird_Key_Reef_coral <- summarise_at(coral_2005_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Bird_Key_Reef_merge <- merge(coral_2005_Bird_Key_Reef_coral,coral_2005_Bird_Key_Reef_macro)
coral_2005_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2005_Black_Coral_Rock <- filter(coral_2005, sitename == "Black Coral Rock")

coral_2005_Black_Coral_Rock_macro <- summarise_at(coral_2005_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Black_Coral_Rock_coral <- summarise_at(coral_2005_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Black_Coral_Rock_merge <- merge(coral_2005_Black_Coral_Rock_coral,coral_2005_Black_Coral_Rock_macro)
coral_2005_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2005_White_Shoal <- filter(coral_2005, sitename == "White Shoal")

coral_2005_White_Shoal_macro <- summarise_at(coral_2005_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_White_Shoal_coral <- summarise_at(coral_2005_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2005_White_Shoal_merge <- merge(coral_2005_White_Shoal_coral,coral_2005_White_Shoal_macro)
coral_2005_White_Shoal_merge$sitename <- "White Shoal"



coral_2005_Palm_Beach_1 <- filter(coral_2005, sitename == "Palm Beach 1")

coral_2005_Palm_Beach_1_macro <- summarise_at(coral_2005_Palm_Beach_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Palm_Beach_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Palm_Beach_1_coral <- summarise_at(coral_2005_Palm_Beach_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Palm_Beach_1_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Palm_Beach_1_merge <- merge(coral_2005_Palm_Beach_1_coral,coral_2005_Palm_Beach_1_macro)
coral_2005_Palm_Beach_1_merge$sitename <- "Palm Beach 1"


coral_2005_Palm_Beach_2 <- filter(coral_2005, sitename == "Palm Beach 2")

coral_2005_Palm_Beach_2_macro <- summarise_at(coral_2005_Palm_Beach_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Palm_Beach_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Palm_Beach_2_coral <- summarise_at(coral_2005_Palm_Beach_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Palm_Beach_2_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Palm_Beach_2_merge <- merge(coral_2005_Palm_Beach_2_coral,coral_2005_Palm_Beach_2_macro)
coral_2005_Palm_Beach_2_merge$sitename <- "Palm Beach 2"


coral_2005_Palm_Beach_3 <- filter(coral_2005, sitename == "Palm Beach 3")

coral_2005_Palm_Beach_3_macro <- summarise_at(coral_2005_Palm_Beach_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Palm_Beach_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Palm_Beach_3_coral <- summarise_at(coral_2005_Palm_Beach_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Palm_Beach_3_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Palm_Beach_3_merge <- merge(coral_2005_Palm_Beach_3_coral,coral_2005_Palm_Beach_3_macro)
coral_2005_Palm_Beach_3_merge$sitename <- "Palm Beach 3"


coral_2005_Broward_County_1 <- filter(coral_2005, sitename == "Broward County 1")

coral_2005_Broward_County_1_macro <- summarise_at(coral_2005_Broward_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Broward_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Broward_County_1_coral <- summarise_at(coral_2005_Broward_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Broward_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Broward_County_1_merge <- merge(coral_2005_Broward_County_1_coral,coral_2005_Broward_County_1_macro)
coral_2005_Broward_County_1_merge$sitename <- "Broward County 1"


coral_2005_Broward_County_2 <- filter(coral_2005, sitename == "Broward County 2")

coral_2005_Broward_County_2_macro <- summarise_at(coral_2005_Broward_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Broward_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Broward_County_2_coral <- summarise_at(coral_2005_Broward_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Broward_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Broward_County_2_merge <- merge(coral_2005_Broward_County_2_coral,coral_2005_Broward_County_2_macro)
coral_2005_Broward_County_2_merge$sitename <- "Broward County 2"


coral_2005_Broward_County_3 <- filter(coral_2005, sitename == "Broward County 3")

coral_2005_Broward_County_3_macro <- summarise_at(coral_2005_Broward_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Broward_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Broward_County_3_coral <- summarise_at(coral_2005_Broward_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Broward_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Broward_County_3_merge <- merge(coral_2005_Broward_County_3_coral,coral_2005_Broward_County_3_macro)
coral_2005_Broward_County_3_merge$sitename <- "Broward County 3"


coral_2005_Broward_County_A <- filter(coral_2005, sitename == "Broward County A")

coral_2005_Broward_County_A_macro <- summarise_at(coral_2005_Broward_County_A,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Broward_County_A_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Broward_County_A_coral <- summarise_at(coral_2005_Broward_County_A,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Broward_County_A_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Broward_County_A_merge <- merge(coral_2005_Broward_County_A_coral,coral_2005_Broward_County_A_macro)
coral_2005_Broward_County_A_merge$sitename <- "Broward County A"



coral_2005_Dade_County_1 <- filter(coral_2005, sitename == "Dade County 1")

coral_2005_Dade_County_1_macro <- summarise_at(coral_2005_Dade_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Dade_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Dade_County_1_coral <- summarise_at(coral_2005_Dade_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Dade_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Dade_County_1_merge <- merge(coral_2005_Dade_County_1_coral,coral_2005_Dade_County_1_macro)
coral_2005_Dade_County_1_merge$sitename <- "Dade County 1"


coral_2005_Dade_County_2 <- filter(coral_2005, sitename == "Dade County 2")

coral_2005_Dade_County_2_macro <- summarise_at(coral_2005_Dade_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Dade_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Dade_County_2_coral <- summarise_at(coral_2005_Dade_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Dade_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Dade_County_2_merge <- merge(coral_2005_Dade_County_2_coral,coral_2005_Dade_County_2_macro)
coral_2005_Dade_County_2_merge$sitename <- "Dade County 2"


coral_2005_Dade_County_3 <- filter(coral_2005, sitename == "Dade County 3")

coral_2005_Dade_County_3_macro <- summarise_at(coral_2005_Dade_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Dade_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Dade_County_3_coral <- summarise_at(coral_2005_Dade_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Dade_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Dade_County_3_merge <- merge(coral_2005_Dade_County_3_coral,coral_2005_Dade_County_3_macro)
coral_2005_Dade_County_3_merge$sitename <- "Dade County 3"


coral_2005_Mayers_Peak <- filter(coral_2005, sitename == "Mayer's Peak")

coral_2005_Mayers_Peak_macro <- summarise_at(coral_2005_Mayers_Peak,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Mayers_Peak_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Mayers_Peak_coral <- summarise_at(coral_2005_Mayers_Peak,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Mayers_Peak_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Mayers_Peak_merge <- merge(coral_2005_Mayers_Peak_coral,coral_2005_Mayers_Peak_macro)
coral_2005_Mayers_Peak_merge$sitename <- "Mayer's Peak"


coral_2005_Temptation_Rock <- filter(coral_2005, sitename == "Temptation Rock")

coral_2005_Temptation_Rock_macro <- summarise_at(coral_2005_Temptation_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Temptation_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Temptation_Rock_coral <- summarise_at(coral_2005_Temptation_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Temptation_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Temptation_Rock_merge <- merge(coral_2005_Temptation_Rock_coral,coral_2005_Temptation_Rock_macro)
coral_2005_Temptation_Rock_merge$sitename <- "Temptation Rock"


coral_2005_Palmata_Patch <- filter(coral_2005, sitename == "Palmata Patch")

coral_2005_Palmata_Patch_macro <- summarise_at(coral_2005_Palmata_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Palmata_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Palmata_Patch_coral <- summarise_at(coral_2005_Palmata_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Palmata_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Palmata_Patch_merge <- merge(coral_2005_Palmata_Patch_coral,coral_2005_Palmata_Patch_macro)
coral_2005_Palmata_Patch_merge$sitename <- "Palmata Patch"


coral_2005_Prolifera_Patch <- filter(coral_2005, sitename == "Prolifera Patch")

coral_2005_Prolifera_Patch_macro <- summarise_at(coral_2005_Prolifera_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Prolifera_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Prolifera_Patch_coral <- summarise_at(coral_2005_Prolifera_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Prolifera_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Prolifera_Patch_merge <- merge(coral_2005_Prolifera_Patch_coral,coral_2005_Prolifera_Patch_macro)
coral_2005_Prolifera_Patch_merge$sitename <- "Prolifera Patch"


coral_2005_Loggerhead_Patch <- filter(coral_2005, sitename == "Loggerhead Patch")

coral_2005_Loggerhead_Patch_macro <- summarise_at(coral_2005_Loggerhead_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Loggerhead_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2005_Loggerhead_Patch_coral <- summarise_at(coral_2005_Loggerhead_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2005_Loggerhead_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2005_Loggerhead_Patch_merge <- merge(coral_2005_Loggerhead_Patch_coral,coral_2005_Loggerhead_Patch_macro)
coral_2005_Loggerhead_Patch_merge$sitename <- "Loggerhead Patch"


coral_2005_merged <- rbind(coral_2005_El_Radabob_merge,coral_2005_Long_Key_merge,coral_2005_Moser_Channel_merge,
                           coral_2005_Content_Keys_merge,coral_2005_Turtle_merge,coral_2005_Porter_Patch_merge,
                           coral_2005_Admiral_merge,coral_2005_West_Turtle_Shoal_merge,coral_2005_Dustan_Rocks_merge,
                           coral_2005_West_Washer_Women_merge,coral_2005_Western_Head_merge,coral_2005_Cliff_Green_merge,
                           coral_2005_Smith_Shoal_merge,coral_2005_Jaap_Reef_merge,coral_2005_Carysfort_Shallow_merge,
                           coral_2005_Grecian_Rocks_merge,coral_2005_Molasses_Shallow_merge,coral_2005_Conch_Shallow_merge,
                           coral_2005_Alligator_Shallow_merge,coral_2005_Tennessee_Shallow_merge,coral_2005_Sombrero_Shallow_merge,
                           coral_2005_Looe_Key_Shallow_merge,coral_2005_Eastern_Sambo_Shallow_merge,coral_2005_Western_Sambo_Shallow_merge,
                           coral_2005_Rock_Key_Shallow_merge,coral_2005_Sand_Key_Shallow_merge,coral_2005_Carysfort_Deep_merge,
                           coral_2005_Molasses_Deep_merge,coral_2005_Conch_Deep_merge,coral_2005_Alligator_Deep_merge,
                           coral_2005_Tennessee_Deep_merge,coral_2005_Sombrero_Deep_merge,coral_2005_Looe_Key_Deep_merge,
                           coral_2005_Eastern_Sambo_Deep_merge,coral_2005_Western_Sambo_Deep_merge,coral_2005_Rock_Key_Deep_merge,
                           coral_2005_Sand_Key_Deep_merge,coral_2005_Bird_Key_Reef_merge,coral_2005_Black_Coral_Rock_merge,
                           coral_2005_White_Shoal_merge,coral_2005_Palm_Beach_1_merge,coral_2005_Palm_Beach_2_merge,
                           coral_2005_Palm_Beach_3_merge,coral_2005_Broward_County_1_merge,coral_2005_Broward_County_2_merge,
                           coral_2005_Broward_County_3_merge,coral_2005_Broward_County_A_merge,coral_2005_Dade_County_1_merge,
                           coral_2005_Dade_County_2_merge,coral_2005_Dade_County_3_merge,coral_2005_Mayers_Peak_merge,
                           coral_2005_Temptation_Rock_merge,coral_2005_Palmata_Patch_merge,coral_2005_Prolifera_Patch_merge,
                           coral_2005_Loggerhead_Patch_merge)


coral_2005_merged$Year <- "2005"



coral_2006 <- import("2006_all.xlsx")
coral_2006 <- select(coral_2006, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2005 <- unique(coral_2005$sitename)
view(unique_2005)
unique_2006 <- unique(coral_2006$sitename)
view(unique_2006)





# coral_2006_El_Radabob <- filter(coral_2006, sitename == "El Radabob")
# 
# coral_2006_El_Radabob_macro <- summarise_at(coral_2006_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2006_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2006_El_Radabob_coral <- summarise_at(coral_2006_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2006_El_Radabob_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2006_El_Radabob_merge <- merge(coral_2006_El_Radabob_coral,coral_2006_El_Radabob_macro)
# coral_2006_El_Radabob_merge$sitename <- "El Radabob"


# coral_2006_Dove_Key <- filter(coral_2006, sitename == "Dove Key")
# 
# coral_2006_Dove_Key_macro <- summarise_at(coral_2006_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2006_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2006_Dove_Key_coral <- summarise_at(coral_2006_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2006_Dove_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2006_Dove_Key_merge <- merge(coral_2006_Dove_Key_coral,coral_2006_Dove_Key_macro)
# coral_2006_Dove_Key_merge$sitename <- "Dove Key"


coral_2006_Long_Key <- filter(coral_2006, sitename == "Long Key")

coral_2006_Long_Key_macro <- summarise_at(coral_2006_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Long_Key_coral <- summarise_at(coral_2006_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Long_Key_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Long_Key_merge <- merge(coral_2006_Long_Key_coral,coral_2006_Long_Key_macro)
coral_2006_Long_Key_merge$sitename <- "Long Key"



coral_2006_Moser_Channel <- filter(coral_2006, sitename == "Moser Channel")

coral_2006_Moser_Channel_macro <- summarise_at(coral_2006_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Moser_Channel_coral <- summarise_at(coral_2006_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Moser_Channel_merge <- merge(coral_2006_Moser_Channel_coral,coral_2006_Moser_Channel_macro)
coral_2006_Moser_Channel_merge$sitename <- "Moser Channel"


# coral_2006_Molasses_Keys <- filter(coral_2006, sitename == "Molasses Keys")
# 
# coral_2006_Molasses_Keys_macro <- summarise_at(coral_2006_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2006_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2006_Molasses_Keys_coral <- summarise_at(coral_2006_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2006_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2006_Molasses_Keys_merge <- merge(coral_2006_Molasses_Keys_coral,coral_2006_Molasses_Keys_macro)
# coral_2006_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2006_Content_Keys <- filter(coral_2006, sitename == "Content Keys")

coral_2006_Content_Keys_macro <- summarise_at(coral_2006_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Content_Keys_coral <- summarise_at(coral_2006_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Content_Keys_merge <- merge(coral_2006_Content_Keys_coral,coral_2006_Content_Keys_macro)
coral_2006_Content_Keys_merge$sitename <- "Content Keys"


coral_2006_Turtle <- filter(coral_2006, sitename == "Turtle")

coral_2006_Turtle_macro <- summarise_at(coral_2006_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Turtle_coral <- summarise_at(coral_2006_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Turtle_merge <- merge(coral_2006_Turtle_coral,coral_2006_Turtle_macro)
coral_2006_Turtle_merge$sitename <- "Turtle"


coral_2006_Porter_Patch <- filter(coral_2006, sitename == "Porter Patch")

coral_2006_Porter_Patch_macro <- summarise_at(coral_2006_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Porter_Patch_coral <- summarise_at(coral_2006_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Porter_Patch_merge <- merge(coral_2006_Porter_Patch_coral,coral_2006_Porter_Patch_macro)
coral_2006_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2006_Admiral <- filter(coral_2006, sitename == "Admiral")

coral_2006_Admiral_macro <- summarise_at(coral_2006_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Admiral_coral <- summarise_at(coral_2006_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Admiral_merge <- merge(coral_2006_Admiral_coral,coral_2006_Admiral_macro)
coral_2006_Admiral_merge$sitename <- "Admiral"


coral_2006_West_Turtle_Shoal <- filter(coral_2006, sitename == "West Turtle Shoal")

coral_2006_West_Turtle_Shoal_macro <- summarise_at(coral_2006_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_West_Turtle_Shoal_coral <- summarise_at(coral_2006_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2006_West_Turtle_Shoal_merge <- merge(coral_2006_West_Turtle_Shoal_coral,coral_2006_West_Turtle_Shoal_macro)
coral_2006_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2006_Dustan_Rocks <- filter(coral_2006, sitename == "Dustan Rocks")

coral_2006_Dustan_Rocks_macro <- summarise_at(coral_2006_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Dustan_Rocks_coral <- summarise_at(coral_2006_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Dustan_Rocks_merge <- merge(coral_2006_Dustan_Rocks_coral,coral_2006_Dustan_Rocks_macro)
coral_2006_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2006_West_Washer_Women <- filter(coral_2006, sitename == "West Washer Women")

coral_2006_West_Washer_Women_macro <- summarise_at(coral_2006_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_West_Washer_Women_coral <- summarise_at(coral_2006_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2006_West_Washer_Women_merge <- merge(coral_2006_West_Washer_Women_coral,coral_2006_West_Washer_Women_macro)
coral_2006_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2006_Western_Head <- filter(coral_2006, sitename == "Western Head")

coral_2006_Western_Head_macro <- summarise_at(coral_2006_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Western_Head_coral <- summarise_at(coral_2006_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Western_Head_merge <- merge(coral_2006_Western_Head_coral,coral_2006_Western_Head_macro)
coral_2006_Western_Head_merge$sitename <- "Western Head"


coral_2006_Cliff_Green <- filter(coral_2006, sitename == "Cliff Green")

coral_2006_Cliff_Green_macro <- summarise_at(coral_2006_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Cliff_Green_coral <- summarise_at(coral_2006_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Cliff_Green_merge <- merge(coral_2006_Cliff_Green_coral,coral_2006_Cliff_Green_macro)
coral_2006_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2006_Smith_Shoal <- filter(coral_2006, sitename == "Smith Shoal")

coral_2006_Smith_Shoal_macro <- summarise_at(coral_2006_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Smith_Shoal_coral <- summarise_at(coral_2006_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Smith_Shoal_merge <- merge(coral_2006_Smith_Shoal_coral,coral_2006_Smith_Shoal_macro)
coral_2006_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2006_Jaap_Reef <- filter(coral_2006, sitename == "Jaap Reef")

coral_2006_Jaap_Reef_macro <- summarise_at(coral_2006_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Jaap_Reef_coral <- summarise_at(coral_2006_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Jaap_Reef_merge <- merge(coral_2006_Jaap_Reef_coral,coral_2006_Jaap_Reef_macro)
coral_2006_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2006_Carysfort_Shallow <- filter(coral_2006, sitename == "Carysfort Shallow")

coral_2006_Carysfort_Shallow_macro <- summarise_at(coral_2006_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Carysfort_Shallow_coral <- summarise_at(coral_2006_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Carysfort_Shallow_merge <- merge(coral_2006_Carysfort_Shallow_coral,coral_2006_Carysfort_Shallow_macro)
coral_2006_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2006_Grecian_Rocks <- filter(coral_2006, sitename == "Grecian Rocks")

coral_2006_Grecian_Rocks_macro <- summarise_at(coral_2006_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Grecian_Rocks_coral <- summarise_at(coral_2006_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Grecian_Rocks_merge <- merge(coral_2006_Grecian_Rocks_coral,coral_2006_Grecian_Rocks_macro)
coral_2006_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2006_Molasses_Shallow <- filter(coral_2006, sitename == "Molasses Shallow")

coral_2006_Molasses_Shallow_macro <- summarise_at(coral_2006_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Molasses_Shallow_coral <- summarise_at(coral_2006_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Molasses_Shallow_merge <- merge(coral_2006_Molasses_Shallow_coral,coral_2006_Molasses_Shallow_macro)
coral_2006_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2006_Conch_Shallow <- filter(coral_2006, sitename == "Conch Shallow")

coral_2006_Conch_Shallow_macro <- summarise_at(coral_2006_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Conch_Shallow_coral <- summarise_at(coral_2006_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Conch_Shallow_merge <- merge(coral_2006_Conch_Shallow_coral,coral_2006_Conch_Shallow_macro)
coral_2006_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2006_Alligator_Shallow <- filter(coral_2006, sitename == "Alligator Shallow")

coral_2006_Alligator_Shallow_macro <- summarise_at(coral_2006_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Alligator_Shallow_coral <- summarise_at(coral_2006_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Alligator_Shallow_merge <- merge(coral_2006_Alligator_Shallow_coral,coral_2006_Alligator_Shallow_macro)
coral_2006_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2006_Tennessee_Shallow <- filter(coral_2006, sitename == "Tennessee Shallow")

coral_2006_Tennessee_Shallow_macro <- summarise_at(coral_2006_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Tennessee_Shallow_coral <- summarise_at(coral_2006_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Tennessee_Shallow_merge <- merge(coral_2006_Tennessee_Shallow_coral,coral_2006_Tennessee_Shallow_macro)
coral_2006_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2006_Sombrero_Shallow <- filter(coral_2006, sitename == "Sombrero Shallow")

coral_2006_Sombrero_Shallow_macro <- summarise_at(coral_2006_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Sombrero_Shallow_coral <- summarise_at(coral_2006_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Sombrero_Shallow_merge <- merge(coral_2006_Sombrero_Shallow_coral,coral_2006_Sombrero_Shallow_macro)
coral_2006_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2006_Looe_Key_Shallow <- filter(coral_2006, sitename == "Looe Key Shallow")

coral_2006_Looe_Key_Shallow_macro <- summarise_at(coral_2006_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Looe_Key_Shallow_coral <- summarise_at(coral_2006_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Looe_Key_Shallow_merge <- merge(coral_2006_Looe_Key_Shallow_coral,coral_2006_Looe_Key_Shallow_macro)
coral_2006_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2006_Eastern_Sambo_Shallow <- filter(coral_2006, sitename == "Eastern Sambo Shallow")

coral_2006_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2006_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2006_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Eastern_Sambo_Shallow_merge <- merge(coral_2006_Eastern_Sambo_Shallow_coral,coral_2006_Eastern_Sambo_Shallow_macro)
coral_2006_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2006_Western_Sambo_Shallow <- filter(coral_2006, sitename == "Western Sambo Shallow")

coral_2006_Western_Sambo_Shallow_macro <- summarise_at(coral_2006_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Western_Sambo_Shallow_coral <- summarise_at(coral_2006_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Western_Sambo_Shallow_merge <- merge(coral_2006_Western_Sambo_Shallow_coral,coral_2006_Western_Sambo_Shallow_macro)
coral_2006_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2006_Rock_Key_Shallow <- filter(coral_2006, sitename == "Rock Key Shallow")

coral_2006_Rock_Key_Shallow_macro <- summarise_at(coral_2006_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Rock_Key_Shallow_coral <- summarise_at(coral_2006_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Rock_Key_Shallow_merge <- merge(coral_2006_Rock_Key_Shallow_coral,coral_2006_Rock_Key_Shallow_macro)
coral_2006_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2006_Sand_Key_Shallow <- filter(coral_2006, sitename == "Sand Key Shallow")

coral_2006_Sand_Key_Shallow_macro <- summarise_at(coral_2006_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Sand_Key_Shallow_coral <- summarise_at(coral_2006_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Sand_Key_Shallow_merge <- merge(coral_2006_Sand_Key_Shallow_coral,coral_2006_Sand_Key_Shallow_macro)
coral_2006_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2006_Carysfort_Deep <- filter(coral_2006, sitename == "Carysfort Deep")

coral_2006_Carysfort_Deep_macro <- summarise_at(coral_2006_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Carysfort_Deep_coral <- summarise_at(coral_2006_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Carysfort_Deep_merge <- merge(coral_2006_Carysfort_Deep_coral,coral_2006_Carysfort_Deep_macro)
coral_2006_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2006_Molasses_Deep <- filter(coral_2006, sitename == "Molasses Deep")

coral_2006_Molasses_Deep_macro <- summarise_at(coral_2006_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Molasses_Deep_coral <- summarise_at(coral_2006_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Molasses_Deep_merge <- merge(coral_2006_Molasses_Deep_coral,coral_2006_Molasses_Deep_macro)
coral_2006_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2006_Conch_Deep <- filter(coral_2006, sitename == "Conch Deep")

coral_2006_Conch_Deep_macro <- summarise_at(coral_2006_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Conch_Deep_coral <- summarise_at(coral_2006_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Conch_Deep_merge <- merge(coral_2006_Conch_Deep_coral,coral_2006_Conch_Deep_macro)
coral_2006_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2006_Alligator_Deep <- filter(coral_2006, sitename == "Alligator Deep")

coral_2006_Alligator_Deep_macro <- summarise_at(coral_2006_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Alligator_Deep_coral <- summarise_at(coral_2006_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Alligator_Deep_merge <- merge(coral_2006_Alligator_Deep_coral,coral_2006_Alligator_Deep_macro)
coral_2006_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2006_Tennessee_Deep <- filter(coral_2006, sitename == "Tennessee Deep")

coral_2006_Tennessee_Deep_macro <- summarise_at(coral_2006_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Tennessee_Deep_coral <- summarise_at(coral_2006_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Tennessee_Deep_merge <- merge(coral_2006_Tennessee_Deep_coral,coral_2006_Tennessee_Deep_macro)
coral_2006_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2006_Sombrero_Deep <- filter(coral_2006, sitename == "Sombrero Deep")

coral_2006_Sombrero_Deep_macro <- summarise_at(coral_2006_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Sombrero_Deep_coral <- summarise_at(coral_2006_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Sombrero_Deep_merge <- merge(coral_2006_Sombrero_Deep_coral,coral_2006_Sombrero_Deep_macro)
coral_2006_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2006_Looe_Key_Deep <- filter(coral_2006, sitename == "Looe Key Deep")

coral_2006_Looe_Key_Deep_macro <- summarise_at(coral_2006_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Looe_Key_Deep_coral <- summarise_at(coral_2006_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Looe_Key_Deep_merge <- merge(coral_2006_Looe_Key_Deep_coral,coral_2006_Looe_Key_Deep_macro)
coral_2006_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2006_Eastern_Sambo_Deep <- filter(coral_2006, sitename == "Eastern Sambo Deep")

coral_2006_Eastern_Sambo_Deep_macro <- summarise_at(coral_2006_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Eastern_Sambo_Deep_coral <- summarise_at(coral_2006_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Eastern_Sambo_Deep_merge <- merge(coral_2006_Eastern_Sambo_Deep_coral,coral_2006_Eastern_Sambo_Deep_macro)
coral_2006_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2006_Western_Sambo_Deep <- filter(coral_2006, sitename == "Western Sambo Deep")

coral_2006_Western_Sambo_Deep_macro <- summarise_at(coral_2006_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Western_Sambo_Deep_coral <- summarise_at(coral_2006_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Western_Sambo_Deep_merge <- merge(coral_2006_Western_Sambo_Deep_coral,coral_2006_Western_Sambo_Deep_macro)
coral_2006_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2006_Rock_Key_Deep <- filter(coral_2006, sitename == "Rock Key Deep")

coral_2006_Rock_Key_Deep_macro <- summarise_at(coral_2006_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Rock_Key_Deep_coral <- summarise_at(coral_2006_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Rock_Key_Deep_merge <- merge(coral_2006_Rock_Key_Deep_coral,coral_2006_Rock_Key_Deep_macro)
coral_2006_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2006_Sand_Key_Deep <- filter(coral_2006, sitename == "Sand Key Deep")

coral_2006_Sand_Key_Deep_macro <- summarise_at(coral_2006_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Sand_Key_Deep_coral <- summarise_at(coral_2006_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Sand_Key_Deep_merge <- merge(coral_2006_Sand_Key_Deep_coral,coral_2006_Sand_Key_Deep_macro)
coral_2006_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2006_Bird_Key_Reef <- filter(coral_2006, sitename == "Bird Key Reef")

coral_2006_Bird_Key_Reef_macro <- summarise_at(coral_2006_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Bird_Key_Reef_coral <- summarise_at(coral_2006_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Bird_Key_Reef_merge <- merge(coral_2006_Bird_Key_Reef_coral,coral_2006_Bird_Key_Reef_macro)
coral_2006_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2006_Black_Coral_Rock <- filter(coral_2006, sitename == "Black Coral Rock")

coral_2006_Black_Coral_Rock_macro <- summarise_at(coral_2006_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Black_Coral_Rock_coral <- summarise_at(coral_2006_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Black_Coral_Rock_merge <- merge(coral_2006_Black_Coral_Rock_coral,coral_2006_Black_Coral_Rock_macro)
coral_2006_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2006_White_Shoal <- filter(coral_2006, sitename == "White Shoal")

coral_2006_White_Shoal_macro <- summarise_at(coral_2006_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_White_Shoal_coral <- summarise_at(coral_2006_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2006_White_Shoal_merge <- merge(coral_2006_White_Shoal_coral,coral_2006_White_Shoal_macro)
coral_2006_White_Shoal_merge$sitename <- "White Shoal"



coral_2006_Palm_Beach_1 <- filter(coral_2006, sitename == "Palm Beach 1")

coral_2006_Palm_Beach_1_macro <- summarise_at(coral_2006_Palm_Beach_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Palm_Beach_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Palm_Beach_1_coral <- summarise_at(coral_2006_Palm_Beach_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Palm_Beach_1_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Palm_Beach_1_merge <- merge(coral_2006_Palm_Beach_1_coral,coral_2006_Palm_Beach_1_macro)
coral_2006_Palm_Beach_1_merge$sitename <- "Palm Beach 1"


coral_2006_Palm_Beach_2 <- filter(coral_2006, sitename == "Palm Beach 2")

coral_2006_Palm_Beach_2_macro <- summarise_at(coral_2006_Palm_Beach_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Palm_Beach_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Palm_Beach_2_coral <- summarise_at(coral_2006_Palm_Beach_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Palm_Beach_2_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Palm_Beach_2_merge <- merge(coral_2006_Palm_Beach_2_coral,coral_2006_Palm_Beach_2_macro)
coral_2006_Palm_Beach_2_merge$sitename <- "Palm Beach 2"


coral_2006_Palm_Beach_3 <- filter(coral_2006, sitename == "Palm Beach 3")

coral_2006_Palm_Beach_3_macro <- summarise_at(coral_2006_Palm_Beach_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Palm_Beach_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Palm_Beach_3_coral <- summarise_at(coral_2006_Palm_Beach_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Palm_Beach_3_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Palm_Beach_3_merge <- merge(coral_2006_Palm_Beach_3_coral,coral_2006_Palm_Beach_3_macro)
coral_2006_Palm_Beach_3_merge$sitename <- "Palm Beach 3"


coral_2006_Broward_County_1 <- filter(coral_2006, sitename == "Broward County 1")

coral_2006_Broward_County_1_macro <- summarise_at(coral_2006_Broward_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Broward_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Broward_County_1_coral <- summarise_at(coral_2006_Broward_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Broward_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Broward_County_1_merge <- merge(coral_2006_Broward_County_1_coral,coral_2006_Broward_County_1_macro)
coral_2006_Broward_County_1_merge$sitename <- "Broward County 1"


coral_2006_Broward_County_2 <- filter(coral_2006, sitename == "Broward County 2")

coral_2006_Broward_County_2_macro <- summarise_at(coral_2006_Broward_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Broward_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Broward_County_2_coral <- summarise_at(coral_2006_Broward_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Broward_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Broward_County_2_merge <- merge(coral_2006_Broward_County_2_coral,coral_2006_Broward_County_2_macro)
coral_2006_Broward_County_2_merge$sitename <- "Broward County 2"


coral_2006_Broward_County_3 <- filter(coral_2006, sitename == "Broward County 3")

coral_2006_Broward_County_3_macro <- summarise_at(coral_2006_Broward_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Broward_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Broward_County_3_coral <- summarise_at(coral_2006_Broward_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Broward_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Broward_County_3_merge <- merge(coral_2006_Broward_County_3_coral,coral_2006_Broward_County_3_macro)
coral_2006_Broward_County_3_merge$sitename <- "Broward County 3"


coral_2006_Broward_County_A <- filter(coral_2006, sitename == "Broward County A")

coral_2006_Broward_County_A_macro <- summarise_at(coral_2006_Broward_County_A,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Broward_County_A_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Broward_County_A_coral <- summarise_at(coral_2006_Broward_County_A,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Broward_County_A_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Broward_County_A_merge <- merge(coral_2006_Broward_County_A_coral,coral_2006_Broward_County_A_macro)
coral_2006_Broward_County_A_merge$sitename <- "Broward County A"



coral_2006_Dade_County_1 <- filter(coral_2006, sitename == "Dade County 1")

coral_2006_Dade_County_1_macro <- summarise_at(coral_2006_Dade_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Dade_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Dade_County_1_coral <- summarise_at(coral_2006_Dade_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Dade_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Dade_County_1_merge <- merge(coral_2006_Dade_County_1_coral,coral_2006_Dade_County_1_macro)
coral_2006_Dade_County_1_merge$sitename <- "Dade County 1"


coral_2006_Dade_County_2 <- filter(coral_2006, sitename == "Dade County 2")

coral_2006_Dade_County_2_macro <- summarise_at(coral_2006_Dade_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Dade_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Dade_County_2_coral <- summarise_at(coral_2006_Dade_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Dade_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Dade_County_2_merge <- merge(coral_2006_Dade_County_2_coral,coral_2006_Dade_County_2_macro)
coral_2006_Dade_County_2_merge$sitename <- "Dade County 2"


coral_2006_Dade_County_3 <- filter(coral_2006, sitename == "Dade County 3")

coral_2006_Dade_County_3_macro <- summarise_at(coral_2006_Dade_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Dade_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Dade_County_3_coral <- summarise_at(coral_2006_Dade_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Dade_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Dade_County_3_merge <- merge(coral_2006_Dade_County_3_coral,coral_2006_Dade_County_3_macro)
coral_2006_Dade_County_3_merge$sitename <- "Dade County 3"


coral_2006_Mayers_Peak <- filter(coral_2006, sitename == "Mayer's Peak")

coral_2006_Mayers_Peak_macro <- summarise_at(coral_2006_Mayers_Peak,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Mayers_Peak_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Mayers_Peak_coral <- summarise_at(coral_2006_Mayers_Peak,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Mayers_Peak_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Mayers_Peak_merge <- merge(coral_2006_Mayers_Peak_coral,coral_2006_Mayers_Peak_macro)
coral_2006_Mayers_Peak_merge$sitename <- "Mayer's Peak"


coral_2006_Temptation_Rock <- filter(coral_2006, sitename == "Temptation Rock")

coral_2006_Temptation_Rock_macro <- summarise_at(coral_2006_Temptation_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Temptation_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Temptation_Rock_coral <- summarise_at(coral_2006_Temptation_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Temptation_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Temptation_Rock_merge <- merge(coral_2006_Temptation_Rock_coral,coral_2006_Temptation_Rock_macro)
coral_2006_Temptation_Rock_merge$sitename <- "Temptation Rock"


coral_2006_Palmata_Patch <- filter(coral_2006, sitename == "Palmata Patch")

coral_2006_Palmata_Patch_macro <- summarise_at(coral_2006_Palmata_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Palmata_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Palmata_Patch_coral <- summarise_at(coral_2006_Palmata_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Palmata_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Palmata_Patch_merge <- merge(coral_2006_Palmata_Patch_coral,coral_2006_Palmata_Patch_macro)
coral_2006_Palmata_Patch_merge$sitename <- "Palmata Patch"


coral_2006_Prolifera_Patch <- filter(coral_2006, sitename == "Prolifera Patch")

coral_2006_Prolifera_Patch_macro <- summarise_at(coral_2006_Prolifera_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Prolifera_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Prolifera_Patch_coral <- summarise_at(coral_2006_Prolifera_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Prolifera_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Prolifera_Patch_merge <- merge(coral_2006_Prolifera_Patch_coral,coral_2006_Prolifera_Patch_macro)
coral_2006_Prolifera_Patch_merge$sitename <- "Prolifera Patch"


coral_2006_Loggerhead_Patch <- filter(coral_2006, sitename == "Loggerhead Patch")

coral_2006_Loggerhead_Patch_macro <- summarise_at(coral_2006_Loggerhead_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Loggerhead_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Loggerhead_Patch_coral <- summarise_at(coral_2006_Loggerhead_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Loggerhead_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Loggerhead_Patch_merge <- merge(coral_2006_Loggerhead_Patch_coral,coral_2006_Loggerhead_Patch_macro)
coral_2006_Loggerhead_Patch_merge$sitename <- "Loggerhead Patch"


coral_2006_Martin_County_1 <- filter(coral_2006, sitename == "Martin County 1")

coral_2006_Martin_County_1_macro <- summarise_at(coral_2006_Martin_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Martin_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Martin_County_1_coral <- summarise_at(coral_2006_Martin_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Martin_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Martin_County_1_merge <- merge(coral_2006_Martin_County_1_coral,coral_2006_Martin_County_1_macro)
coral_2006_Martin_County_1_merge$sitename <- "Martin County 1"


coral_2006_Martin_County_2 <- filter(coral_2006, sitename == "Martin County 2")

coral_2006_Martin_County_2_macro <- summarise_at(coral_2006_Martin_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Martin_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2006_Martin_County_2_coral <- summarise_at(coral_2006_Martin_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2006_Martin_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2006_Martin_County_2_merge <- merge(coral_2006_Martin_County_2_coral,coral_2006_Martin_County_2_macro)
coral_2006_Martin_County_2_merge$sitename <- "Martin County 2"


coral_2006_merged <- rbind(coral_2006_Long_Key_merge,coral_2006_Moser_Channel_merge,
                           coral_2006_Content_Keys_merge,coral_2006_Turtle_merge,coral_2006_Porter_Patch_merge,
                           coral_2006_Admiral_merge,coral_2006_West_Turtle_Shoal_merge,coral_2006_Dustan_Rocks_merge,
                           coral_2006_West_Washer_Women_merge,coral_2006_Western_Head_merge,coral_2006_Cliff_Green_merge,
                           coral_2006_Smith_Shoal_merge,coral_2006_Jaap_Reef_merge,coral_2006_Carysfort_Shallow_merge,
                           coral_2006_Grecian_Rocks_merge,coral_2006_Molasses_Shallow_merge,coral_2006_Conch_Shallow_merge,
                           coral_2006_Alligator_Shallow_merge,coral_2006_Tennessee_Shallow_merge,coral_2006_Sombrero_Shallow_merge,
                           coral_2006_Looe_Key_Shallow_merge,coral_2006_Eastern_Sambo_Shallow_merge,coral_2006_Western_Sambo_Shallow_merge,
                           coral_2006_Rock_Key_Shallow_merge,coral_2006_Sand_Key_Shallow_merge,coral_2006_Carysfort_Deep_merge,
                           coral_2006_Molasses_Deep_merge,coral_2006_Conch_Deep_merge,coral_2006_Alligator_Deep_merge,
                           coral_2006_Tennessee_Deep_merge,coral_2006_Sombrero_Deep_merge,coral_2006_Looe_Key_Deep_merge,
                           coral_2006_Eastern_Sambo_Deep_merge,coral_2006_Western_Sambo_Deep_merge,coral_2006_Rock_Key_Deep_merge,
                           coral_2006_Sand_Key_Deep_merge,coral_2006_Bird_Key_Reef_merge,coral_2006_Black_Coral_Rock_merge,
                           coral_2006_White_Shoal_merge,coral_2006_Palm_Beach_1_merge,coral_2006_Palm_Beach_2_merge,
                           coral_2006_Palm_Beach_3_merge,coral_2006_Broward_County_1_merge,coral_2006_Broward_County_2_merge,
                           coral_2006_Broward_County_3_merge,coral_2006_Broward_County_A_merge,coral_2006_Dade_County_1_merge,
                           coral_2006_Dade_County_2_merge,coral_2006_Dade_County_3_merge,coral_2006_Mayers_Peak_merge,
                           coral_2006_Temptation_Rock_merge,coral_2006_Palmata_Patch_merge,coral_2006_Prolifera_Patch_merge,
                           coral_2006_Loggerhead_Patch_merge,coral_2006_Martin_County_1_merge,coral_2006_Martin_County_2_merge)


coral_2006_merged$Year <- "2006"



coral_2007 <- import("2007_all.xlsx")
coral_2007 <- select(coral_2007, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2006 <- unique(coral_2006$sitename)
view(unique_2006)
unique_2007 <- unique(coral_2007$sitename)
view(unique_2007)




# coral_2007_El_Radabob <- filter(coral_2007, sitename == "El Radabob")
# 
# coral_2007_El_Radabob_macro <- summarise_at(coral_2007_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2007_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2007_El_Radabob_coral <- summarise_at(coral_2007_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2007_El_Radabob_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2007_El_Radabob_merge <- merge(coral_2007_El_Radabob_coral,coral_2007_El_Radabob_macro)
# coral_2007_El_Radabob_merge$sitename <- "El Radabob"


# coral_2007_Dove_Key <- filter(coral_2007, sitename == "Dove Key")
# 
# coral_2007_Dove_Key_macro <- summarise_at(coral_2007_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2007_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2007_Dove_Key_coral <- summarise_at(coral_2007_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2007_Dove_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2007_Dove_Key_merge <- merge(coral_2007_Dove_Key_coral,coral_2007_Dove_Key_macro)
# coral_2007_Dove_Key_merge$sitename <- "Dove Key"


coral_2007_Long_Key <- filter(coral_2007, sitename == "Long Key")

coral_2007_Long_Key_macro <- summarise_at(coral_2007_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Long_Key_coral <- summarise_at(coral_2007_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Long_Key_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Long_Key_merge <- merge(coral_2007_Long_Key_coral,coral_2007_Long_Key_macro)
coral_2007_Long_Key_merge$sitename <- "Long Key"



coral_2007_Moser_Channel <- filter(coral_2007, sitename == "Moser Channel")

coral_2007_Moser_Channel_macro <- summarise_at(coral_2007_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Moser_Channel_coral <- summarise_at(coral_2007_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Moser_Channel_merge <- merge(coral_2007_Moser_Channel_coral,coral_2007_Moser_Channel_macro)
coral_2007_Moser_Channel_merge$sitename <- "Moser Channel"


# coral_2007_Molasses_Keys <- filter(coral_2007, sitename == "Molasses Keys")
# 
# coral_2007_Molasses_Keys_macro <- summarise_at(coral_2007_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2007_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2007_Molasses_Keys_coral <- summarise_at(coral_2007_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2007_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2007_Molasses_Keys_merge <- merge(coral_2007_Molasses_Keys_coral,coral_2007_Molasses_Keys_macro)
# coral_2007_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2007_Content_Keys <- filter(coral_2007, sitename == "Content Keys")

coral_2007_Content_Keys_macro <- summarise_at(coral_2007_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Content_Keys_coral <- summarise_at(coral_2007_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Content_Keys_merge <- merge(coral_2007_Content_Keys_coral,coral_2007_Content_Keys_macro)
coral_2007_Content_Keys_merge$sitename <- "Content Keys"


coral_2007_Turtle <- filter(coral_2007, sitename == "Turtle")

coral_2007_Turtle_macro <- summarise_at(coral_2007_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Turtle_coral <- summarise_at(coral_2007_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Turtle_merge <- merge(coral_2007_Turtle_coral,coral_2007_Turtle_macro)
coral_2007_Turtle_merge$sitename <- "Turtle"


coral_2007_Porter_Patch <- filter(coral_2007, sitename == "Porter Patch")

coral_2007_Porter_Patch_macro <- summarise_at(coral_2007_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Porter_Patch_coral <- summarise_at(coral_2007_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Porter_Patch_merge <- merge(coral_2007_Porter_Patch_coral,coral_2007_Porter_Patch_macro)
coral_2007_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2007_Admiral <- filter(coral_2007, sitename == "Admiral")

coral_2007_Admiral_macro <- summarise_at(coral_2007_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Admiral_coral <- summarise_at(coral_2007_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Admiral_merge <- merge(coral_2007_Admiral_coral,coral_2007_Admiral_macro)
coral_2007_Admiral_merge$sitename <- "Admiral"


coral_2007_West_Turtle_Shoal <- filter(coral_2007, sitename == "West Turtle Shoal")

coral_2007_West_Turtle_Shoal_macro <- summarise_at(coral_2007_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_West_Turtle_Shoal_coral <- summarise_at(coral_2007_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2007_West_Turtle_Shoal_merge <- merge(coral_2007_West_Turtle_Shoal_coral,coral_2007_West_Turtle_Shoal_macro)
coral_2007_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2007_Dustan_Rocks <- filter(coral_2007, sitename == "Dustan Rocks")

coral_2007_Dustan_Rocks_macro <- summarise_at(coral_2007_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Dustan_Rocks_coral <- summarise_at(coral_2007_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Dustan_Rocks_merge <- merge(coral_2007_Dustan_Rocks_coral,coral_2007_Dustan_Rocks_macro)
coral_2007_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2007_West_Washer_Women <- filter(coral_2007, sitename == "West Washer Women")

coral_2007_West_Washer_Women_macro <- summarise_at(coral_2007_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_West_Washer_Women_coral <- summarise_at(coral_2007_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2007_West_Washer_Women_merge <- merge(coral_2007_West_Washer_Women_coral,coral_2007_West_Washer_Women_macro)
coral_2007_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2007_Western_Head <- filter(coral_2007, sitename == "Western Head")

coral_2007_Western_Head_macro <- summarise_at(coral_2007_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Western_Head_coral <- summarise_at(coral_2007_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Western_Head_merge <- merge(coral_2007_Western_Head_coral,coral_2007_Western_Head_macro)
coral_2007_Western_Head_merge$sitename <- "Western Head"


coral_2007_Cliff_Green <- filter(coral_2007, sitename == "Cliff Green")

coral_2007_Cliff_Green_macro <- summarise_at(coral_2007_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Cliff_Green_coral <- summarise_at(coral_2007_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Cliff_Green_merge <- merge(coral_2007_Cliff_Green_coral,coral_2007_Cliff_Green_macro)
coral_2007_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2007_Smith_Shoal <- filter(coral_2007, sitename == "Smith Shoal")

coral_2007_Smith_Shoal_macro <- summarise_at(coral_2007_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Smith_Shoal_coral <- summarise_at(coral_2007_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Smith_Shoal_merge <- merge(coral_2007_Smith_Shoal_coral,coral_2007_Smith_Shoal_macro)
coral_2007_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2007_Jaap_Reef <- filter(coral_2007, sitename == "Jaap Reef")

coral_2007_Jaap_Reef_macro <- summarise_at(coral_2007_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Jaap_Reef_coral <- summarise_at(coral_2007_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Jaap_Reef_merge <- merge(coral_2007_Jaap_Reef_coral,coral_2007_Jaap_Reef_macro)
coral_2007_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2007_Carysfort_Shallow <- filter(coral_2007, sitename == "Carysfort Shallow")

coral_2007_Carysfort_Shallow_macro <- summarise_at(coral_2007_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Carysfort_Shallow_coral <- summarise_at(coral_2007_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Carysfort_Shallow_merge <- merge(coral_2007_Carysfort_Shallow_coral,coral_2007_Carysfort_Shallow_macro)
coral_2007_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2007_Grecian_Rocks <- filter(coral_2007, sitename == "Grecian Rocks")

coral_2007_Grecian_Rocks_macro <- summarise_at(coral_2007_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Grecian_Rocks_coral <- summarise_at(coral_2007_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Grecian_Rocks_merge <- merge(coral_2007_Grecian_Rocks_coral,coral_2007_Grecian_Rocks_macro)
coral_2007_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2007_Molasses_Shallow <- filter(coral_2007, sitename == "Molasses Shallow")

coral_2007_Molasses_Shallow_macro <- summarise_at(coral_2007_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Molasses_Shallow_coral <- summarise_at(coral_2007_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Molasses_Shallow_merge <- merge(coral_2007_Molasses_Shallow_coral,coral_2007_Molasses_Shallow_macro)
coral_2007_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2007_Conch_Shallow <- filter(coral_2007, sitename == "Conch Shallow")

coral_2007_Conch_Shallow_macro <- summarise_at(coral_2007_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Conch_Shallow_coral <- summarise_at(coral_2007_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Conch_Shallow_merge <- merge(coral_2007_Conch_Shallow_coral,coral_2007_Conch_Shallow_macro)
coral_2007_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2007_Alligator_Shallow <- filter(coral_2007, sitename == "Alligator Shallow")

coral_2007_Alligator_Shallow_macro <- summarise_at(coral_2007_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Alligator_Shallow_coral <- summarise_at(coral_2007_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Alligator_Shallow_merge <- merge(coral_2007_Alligator_Shallow_coral,coral_2007_Alligator_Shallow_macro)
coral_2007_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2007_Tennessee_Shallow <- filter(coral_2007, sitename == "Tennessee Shallow")

coral_2007_Tennessee_Shallow_macro <- summarise_at(coral_2007_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Tennessee_Shallow_coral <- summarise_at(coral_2007_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Tennessee_Shallow_merge <- merge(coral_2007_Tennessee_Shallow_coral,coral_2007_Tennessee_Shallow_macro)
coral_2007_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2007_Sombrero_Shallow <- filter(coral_2007, sitename == "Sombrero Shallow")

coral_2007_Sombrero_Shallow_macro <- summarise_at(coral_2007_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Sombrero_Shallow_coral <- summarise_at(coral_2007_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Sombrero_Shallow_merge <- merge(coral_2007_Sombrero_Shallow_coral,coral_2007_Sombrero_Shallow_macro)
coral_2007_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2007_Looe_Key_Shallow <- filter(coral_2007, sitename == "Looe Key Shallow")

coral_2007_Looe_Key_Shallow_macro <- summarise_at(coral_2007_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Looe_Key_Shallow_coral <- summarise_at(coral_2007_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Looe_Key_Shallow_merge <- merge(coral_2007_Looe_Key_Shallow_coral,coral_2007_Looe_Key_Shallow_macro)
coral_2007_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2007_Eastern_Sambo_Shallow <- filter(coral_2007, sitename == "Eastern Sambo Shallow")

coral_2007_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2007_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2007_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Eastern_Sambo_Shallow_merge <- merge(coral_2007_Eastern_Sambo_Shallow_coral,coral_2007_Eastern_Sambo_Shallow_macro)
coral_2007_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2007_Western_Sambo_Shallow <- filter(coral_2007, sitename == "Western Sambo Shallow")

coral_2007_Western_Sambo_Shallow_macro <- summarise_at(coral_2007_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Western_Sambo_Shallow_coral <- summarise_at(coral_2007_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Western_Sambo_Shallow_merge <- merge(coral_2007_Western_Sambo_Shallow_coral,coral_2007_Western_Sambo_Shallow_macro)
coral_2007_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2007_Rock_Key_Shallow <- filter(coral_2007, sitename == "Rock Key Shallow")

coral_2007_Rock_Key_Shallow_macro <- summarise_at(coral_2007_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Rock_Key_Shallow_coral <- summarise_at(coral_2007_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Rock_Key_Shallow_merge <- merge(coral_2007_Rock_Key_Shallow_coral,coral_2007_Rock_Key_Shallow_macro)
coral_2007_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2007_Sand_Key_Shallow <- filter(coral_2007, sitename == "Sand Key Shallow")

coral_2007_Sand_Key_Shallow_macro <- summarise_at(coral_2007_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Sand_Key_Shallow_coral <- summarise_at(coral_2007_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Sand_Key_Shallow_merge <- merge(coral_2007_Sand_Key_Shallow_coral,coral_2007_Sand_Key_Shallow_macro)
coral_2007_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2007_Carysfort_Deep <- filter(coral_2007, sitename == "Carysfort Deep")

coral_2007_Carysfort_Deep_macro <- summarise_at(coral_2007_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Carysfort_Deep_coral <- summarise_at(coral_2007_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Carysfort_Deep_merge <- merge(coral_2007_Carysfort_Deep_coral,coral_2007_Carysfort_Deep_macro)
coral_2007_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2007_Molasses_Deep <- filter(coral_2007, sitename == "Molasses Deep")

coral_2007_Molasses_Deep_macro <- summarise_at(coral_2007_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Molasses_Deep_coral <- summarise_at(coral_2007_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Molasses_Deep_merge <- merge(coral_2007_Molasses_Deep_coral,coral_2007_Molasses_Deep_macro)
coral_2007_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2007_Conch_Deep <- filter(coral_2007, sitename == "Conch Deep")

coral_2007_Conch_Deep_macro <- summarise_at(coral_2007_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Conch_Deep_coral <- summarise_at(coral_2007_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Conch_Deep_merge <- merge(coral_2007_Conch_Deep_coral,coral_2007_Conch_Deep_macro)
coral_2007_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2007_Alligator_Deep <- filter(coral_2007, sitename == "Alligator Deep")

coral_2007_Alligator_Deep_macro <- summarise_at(coral_2007_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Alligator_Deep_coral <- summarise_at(coral_2007_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Alligator_Deep_merge <- merge(coral_2007_Alligator_Deep_coral,coral_2007_Alligator_Deep_macro)
coral_2007_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2007_Tennessee_Deep <- filter(coral_2007, sitename == "Tennessee Deep")

coral_2007_Tennessee_Deep_macro <- summarise_at(coral_2007_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Tennessee_Deep_coral <- summarise_at(coral_2007_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Tennessee_Deep_merge <- merge(coral_2007_Tennessee_Deep_coral,coral_2007_Tennessee_Deep_macro)
coral_2007_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2007_Sombrero_Deep <- filter(coral_2007, sitename == "Sombrero Deep")

coral_2007_Sombrero_Deep_macro <- summarise_at(coral_2007_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Sombrero_Deep_coral <- summarise_at(coral_2007_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Sombrero_Deep_merge <- merge(coral_2007_Sombrero_Deep_coral,coral_2007_Sombrero_Deep_macro)
coral_2007_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2007_Looe_Key_Deep <- filter(coral_2007, sitename == "Looe Key Deep")

coral_2007_Looe_Key_Deep_macro <- summarise_at(coral_2007_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Looe_Key_Deep_coral <- summarise_at(coral_2007_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Looe_Key_Deep_merge <- merge(coral_2007_Looe_Key_Deep_coral,coral_2007_Looe_Key_Deep_macro)
coral_2007_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2007_Eastern_Sambo_Deep <- filter(coral_2007, sitename == "Eastern Sambo Deep")

coral_2007_Eastern_Sambo_Deep_macro <- summarise_at(coral_2007_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Eastern_Sambo_Deep_coral <- summarise_at(coral_2007_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Eastern_Sambo_Deep_merge <- merge(coral_2007_Eastern_Sambo_Deep_coral,coral_2007_Eastern_Sambo_Deep_macro)
coral_2007_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2007_Western_Sambo_Deep <- filter(coral_2007, sitename == "Western Sambo Deep")

coral_2007_Western_Sambo_Deep_macro <- summarise_at(coral_2007_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Western_Sambo_Deep_coral <- summarise_at(coral_2007_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Western_Sambo_Deep_merge <- merge(coral_2007_Western_Sambo_Deep_coral,coral_2007_Western_Sambo_Deep_macro)
coral_2007_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2007_Rock_Key_Deep <- filter(coral_2007, sitename == "Rock Key Deep")

coral_2007_Rock_Key_Deep_macro <- summarise_at(coral_2007_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Rock_Key_Deep_coral <- summarise_at(coral_2007_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Rock_Key_Deep_merge <- merge(coral_2007_Rock_Key_Deep_coral,coral_2007_Rock_Key_Deep_macro)
coral_2007_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2007_Sand_Key_Deep <- filter(coral_2007, sitename == "Sand Key Deep")

coral_2007_Sand_Key_Deep_macro <- summarise_at(coral_2007_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Sand_Key_Deep_coral <- summarise_at(coral_2007_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Sand_Key_Deep_merge <- merge(coral_2007_Sand_Key_Deep_coral,coral_2007_Sand_Key_Deep_macro)
coral_2007_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2007_Bird_Key_Reef <- filter(coral_2007, sitename == "Bird Key Reef")

coral_2007_Bird_Key_Reef_macro <- summarise_at(coral_2007_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Bird_Key_Reef_coral <- summarise_at(coral_2007_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Bird_Key_Reef_merge <- merge(coral_2007_Bird_Key_Reef_coral,coral_2007_Bird_Key_Reef_macro)
coral_2007_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2007_Black_Coral_Rock <- filter(coral_2007, sitename == "Black Coral Rock")

coral_2007_Black_Coral_Rock_macro <- summarise_at(coral_2007_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Black_Coral_Rock_coral <- summarise_at(coral_2007_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Black_Coral_Rock_merge <- merge(coral_2007_Black_Coral_Rock_coral,coral_2007_Black_Coral_Rock_macro)
coral_2007_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2007_White_Shoal <- filter(coral_2007, sitename == "White Shoal")

coral_2007_White_Shoal_macro <- summarise_at(coral_2007_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_White_Shoal_coral <- summarise_at(coral_2007_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2007_White_Shoal_merge <- merge(coral_2007_White_Shoal_coral,coral_2007_White_Shoal_macro)
coral_2007_White_Shoal_merge$sitename <- "White Shoal"



coral_2007_Palm_Beach_1 <- filter(coral_2007, sitename == "Palm Beach 1")

coral_2007_Palm_Beach_1_macro <- summarise_at(coral_2007_Palm_Beach_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Palm_Beach_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Palm_Beach_1_coral <- summarise_at(coral_2007_Palm_Beach_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Palm_Beach_1_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Palm_Beach_1_merge <- merge(coral_2007_Palm_Beach_1_coral,coral_2007_Palm_Beach_1_macro)
coral_2007_Palm_Beach_1_merge$sitename <- "Palm Beach 1"


coral_2007_Palm_Beach_2 <- filter(coral_2007, sitename == "Palm Beach 2")

coral_2007_Palm_Beach_2_macro <- summarise_at(coral_2007_Palm_Beach_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Palm_Beach_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Palm_Beach_2_coral <- summarise_at(coral_2007_Palm_Beach_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Palm_Beach_2_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Palm_Beach_2_merge <- merge(coral_2007_Palm_Beach_2_coral,coral_2007_Palm_Beach_2_macro)
coral_2007_Palm_Beach_2_merge$sitename <- "Palm Beach 2"


coral_2007_Palm_Beach_3 <- filter(coral_2007, sitename == "Palm Beach 3")

coral_2007_Palm_Beach_3_macro <- summarise_at(coral_2007_Palm_Beach_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Palm_Beach_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Palm_Beach_3_coral <- summarise_at(coral_2007_Palm_Beach_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Palm_Beach_3_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Palm_Beach_3_merge <- merge(coral_2007_Palm_Beach_3_coral,coral_2007_Palm_Beach_3_macro)
coral_2007_Palm_Beach_3_merge$sitename <- "Palm Beach 3"


coral_2007_Broward_County_1 <- filter(coral_2007, sitename == "Broward County 1")

coral_2007_Broward_County_1_macro <- summarise_at(coral_2007_Broward_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Broward_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Broward_County_1_coral <- summarise_at(coral_2007_Broward_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Broward_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Broward_County_1_merge <- merge(coral_2007_Broward_County_1_coral,coral_2007_Broward_County_1_macro)
coral_2007_Broward_County_1_merge$sitename <- "Broward County 1"


coral_2007_Broward_County_2 <- filter(coral_2007, sitename == "Broward County 2")

coral_2007_Broward_County_2_macro <- summarise_at(coral_2007_Broward_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Broward_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Broward_County_2_coral <- summarise_at(coral_2007_Broward_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Broward_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Broward_County_2_merge <- merge(coral_2007_Broward_County_2_coral,coral_2007_Broward_County_2_macro)
coral_2007_Broward_County_2_merge$sitename <- "Broward County 2"


coral_2007_Broward_County_3 <- filter(coral_2007, sitename == "Broward County 3")

coral_2007_Broward_County_3_macro <- summarise_at(coral_2007_Broward_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Broward_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Broward_County_3_coral <- summarise_at(coral_2007_Broward_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Broward_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Broward_County_3_merge <- merge(coral_2007_Broward_County_3_coral,coral_2007_Broward_County_3_macro)
coral_2007_Broward_County_3_merge$sitename <- "Broward County 3"


coral_2007_Broward_County_A <- filter(coral_2007, sitename == "Broward County A")

coral_2007_Broward_County_A_macro <- summarise_at(coral_2007_Broward_County_A,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Broward_County_A_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Broward_County_A_coral <- summarise_at(coral_2007_Broward_County_A,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Broward_County_A_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Broward_County_A_merge <- merge(coral_2007_Broward_County_A_coral,coral_2007_Broward_County_A_macro)
coral_2007_Broward_County_A_merge$sitename <- "Broward County A"



coral_2007_Dade_County_1 <- filter(coral_2007, sitename == "Dade County 1")

coral_2007_Dade_County_1_macro <- summarise_at(coral_2007_Dade_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Dade_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Dade_County_1_coral <- summarise_at(coral_2007_Dade_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Dade_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Dade_County_1_merge <- merge(coral_2007_Dade_County_1_coral,coral_2007_Dade_County_1_macro)
coral_2007_Dade_County_1_merge$sitename <- "Dade County 1"


coral_2007_Dade_County_2 <- filter(coral_2007, sitename == "Dade County 2")

coral_2007_Dade_County_2_macro <- summarise_at(coral_2007_Dade_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Dade_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Dade_County_2_coral <- summarise_at(coral_2007_Dade_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Dade_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Dade_County_2_merge <- merge(coral_2007_Dade_County_2_coral,coral_2007_Dade_County_2_macro)
coral_2007_Dade_County_2_merge$sitename <- "Dade County 2"


coral_2007_Dade_County_3 <- filter(coral_2007, sitename == "Dade County 3")

coral_2007_Dade_County_3_macro <- summarise_at(coral_2007_Dade_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Dade_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Dade_County_3_coral <- summarise_at(coral_2007_Dade_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Dade_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Dade_County_3_merge <- merge(coral_2007_Dade_County_3_coral,coral_2007_Dade_County_3_macro)
coral_2007_Dade_County_3_merge$sitename <- "Dade County 3"


coral_2007_Mayers_Peak <- filter(coral_2007, sitename == "Mayer's Peak")

coral_2007_Mayers_Peak_macro <- summarise_at(coral_2007_Mayers_Peak,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Mayers_Peak_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Mayers_Peak_coral <- summarise_at(coral_2007_Mayers_Peak,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Mayers_Peak_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Mayers_Peak_merge <- merge(coral_2007_Mayers_Peak_coral,coral_2007_Mayers_Peak_macro)
coral_2007_Mayers_Peak_merge$sitename <- "Mayer's Peak"


coral_2007_Temptation_Rock <- filter(coral_2007, sitename == "Temptation Rock")

coral_2007_Temptation_Rock_macro <- summarise_at(coral_2007_Temptation_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Temptation_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Temptation_Rock_coral <- summarise_at(coral_2007_Temptation_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Temptation_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Temptation_Rock_merge <- merge(coral_2007_Temptation_Rock_coral,coral_2007_Temptation_Rock_macro)
coral_2007_Temptation_Rock_merge$sitename <- "Temptation Rock"


coral_2007_Palmata_Patch <- filter(coral_2007, sitename == "Palmata Patch")

coral_2007_Palmata_Patch_macro <- summarise_at(coral_2007_Palmata_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Palmata_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Palmata_Patch_coral <- summarise_at(coral_2007_Palmata_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Palmata_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Palmata_Patch_merge <- merge(coral_2007_Palmata_Patch_coral,coral_2007_Palmata_Patch_macro)
coral_2007_Palmata_Patch_merge$sitename <- "Palmata Patch"


coral_2007_Prolifera_Patch <- filter(coral_2007, sitename == "Prolifera Patch")

coral_2007_Prolifera_Patch_macro <- summarise_at(coral_2007_Prolifera_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Prolifera_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Prolifera_Patch_coral <- summarise_at(coral_2007_Prolifera_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Prolifera_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Prolifera_Patch_merge <- merge(coral_2007_Prolifera_Patch_coral,coral_2007_Prolifera_Patch_macro)
coral_2007_Prolifera_Patch_merge$sitename <- "Prolifera Patch"


coral_2007_Loggerhead_Patch <- filter(coral_2007, sitename == "Loggerhead Patch")

coral_2007_Loggerhead_Patch_macro <- summarise_at(coral_2007_Loggerhead_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Loggerhead_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Loggerhead_Patch_coral <- summarise_at(coral_2007_Loggerhead_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Loggerhead_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Loggerhead_Patch_merge <- merge(coral_2007_Loggerhead_Patch_coral,coral_2007_Loggerhead_Patch_macro)
coral_2007_Loggerhead_Patch_merge$sitename <- "Loggerhead Patch"


coral_2007_Martin_County_1 <- filter(coral_2007, sitename == "Martin County 1")

coral_2007_Martin_County_1_macro <- summarise_at(coral_2007_Martin_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Martin_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Martin_County_1_coral <- summarise_at(coral_2007_Martin_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Martin_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Martin_County_1_merge <- merge(coral_2007_Martin_County_1_coral,coral_2007_Martin_County_1_macro)
coral_2007_Martin_County_1_merge$sitename <- "Martin County 1"


coral_2007_Martin_County_2 <- filter(coral_2007, sitename == "Martin County 2")

coral_2007_Martin_County_2_macro <- summarise_at(coral_2007_Martin_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Martin_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2007_Martin_County_2_coral <- summarise_at(coral_2007_Martin_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2007_Martin_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2007_Martin_County_2_merge <- merge(coral_2007_Martin_County_2_coral,coral_2007_Martin_County_2_macro)
coral_2007_Martin_County_2_merge$sitename <- "Martin County 2"


coral_2007_merged <- rbind(coral_2007_Long_Key_merge,coral_2007_Moser_Channel_merge,
                           coral_2007_Content_Keys_merge,coral_2007_Turtle_merge,coral_2007_Porter_Patch_merge,
                           coral_2007_Admiral_merge,coral_2007_West_Turtle_Shoal_merge,coral_2007_Dustan_Rocks_merge,
                           coral_2007_West_Washer_Women_merge,coral_2007_Western_Head_merge,coral_2007_Cliff_Green_merge,
                           coral_2007_Smith_Shoal_merge,coral_2007_Jaap_Reef_merge,coral_2007_Carysfort_Shallow_merge,
                           coral_2007_Grecian_Rocks_merge,coral_2007_Molasses_Shallow_merge,coral_2007_Conch_Shallow_merge,
                           coral_2007_Alligator_Shallow_merge,coral_2007_Tennessee_Shallow_merge,coral_2007_Sombrero_Shallow_merge,
                           coral_2007_Looe_Key_Shallow_merge,coral_2007_Eastern_Sambo_Shallow_merge,coral_2007_Western_Sambo_Shallow_merge,
                           coral_2007_Rock_Key_Shallow_merge,coral_2007_Sand_Key_Shallow_merge,coral_2007_Carysfort_Deep_merge,
                           coral_2007_Molasses_Deep_merge,coral_2007_Conch_Deep_merge,coral_2007_Alligator_Deep_merge,
                           coral_2007_Tennessee_Deep_merge,coral_2007_Sombrero_Deep_merge,coral_2007_Looe_Key_Deep_merge,
                           coral_2007_Eastern_Sambo_Deep_merge,coral_2007_Western_Sambo_Deep_merge,coral_2007_Rock_Key_Deep_merge,
                           coral_2007_Sand_Key_Deep_merge,coral_2007_Bird_Key_Reef_merge,coral_2007_Black_Coral_Rock_merge,
                           coral_2007_White_Shoal_merge,coral_2007_Palm_Beach_1_merge,coral_2007_Palm_Beach_2_merge,
                           coral_2007_Palm_Beach_3_merge,coral_2007_Broward_County_1_merge,coral_2007_Broward_County_2_merge,
                           coral_2007_Broward_County_3_merge,coral_2007_Broward_County_A_merge,coral_2007_Dade_County_1_merge,
                           coral_2007_Dade_County_2_merge,coral_2007_Dade_County_3_merge,coral_2007_Mayers_Peak_merge,
                           coral_2007_Temptation_Rock_merge,coral_2007_Palmata_Patch_merge,coral_2007_Prolifera_Patch_merge,
                           coral_2007_Loggerhead_Patch_merge,coral_2007_Martin_County_1_merge,coral_2007_Martin_County_2_merge)


coral_2007_merged$Year <- "2007"



coral_2008 <- import("2008_all.xlsx")
coral_2008 <- select(coral_2008, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2007 <- unique(coral_2007$sitename)
view(unique_2007)
unique_2008 <- unique(coral_2008$sitename)
view(unique_2008)



# coral_2008_El_Radabob <- filter(coral_2008, sitename == "El Radabob")
# 
# coral_2008_El_Radabob_macro <- summarise_at(coral_2008_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2008_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2008_El_Radabob_coral <- summarise_at(coral_2008_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2008_El_Radabob_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2008_El_Radabob_merge <- merge(coral_2008_El_Radabob_coral,coral_2008_El_Radabob_macro)
# coral_2008_El_Radabob_merge$sitename <- "El Radabob"


# coral_2008_Dove_Key <- filter(coral_2008, sitename == "Dove Key")
# 
# coral_2008_Dove_Key_macro <- summarise_at(coral_2008_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2008_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2008_Dove_Key_coral <- summarise_at(coral_2008_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2008_Dove_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2008_Dove_Key_merge <- merge(coral_2008_Dove_Key_coral,coral_2008_Dove_Key_macro)
# coral_2008_Dove_Key_merge$sitename <- "Dove Key"


coral_2008_Long_Key <- filter(coral_2008, sitename == "Long Key")

coral_2008_Long_Key_macro <- summarise_at(coral_2008_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Long_Key_coral <- summarise_at(coral_2008_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Long_Key_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Long_Key_merge <- merge(coral_2008_Long_Key_coral,coral_2008_Long_Key_macro)
coral_2008_Long_Key_merge$sitename <- "Long Key"



# coral_2008_Moser_Channel <- filter(coral_2008, sitename == "Moser Channel")
# 
# coral_2008_Moser_Channel_macro <- summarise_at(coral_2008_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2008_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2008_Moser_Channel_coral <- summarise_at(coral_2008_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2008_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2008_Moser_Channel_merge <- merge(coral_2008_Moser_Channel_coral,coral_2008_Moser_Channel_macro)
# coral_2008_Moser_Channel_merge$sitename <- "Moser Channel"


# coral_2008_Molasses_Keys <- filter(coral_2008, sitename == "Molasses Keys")
# 
# coral_2008_Molasses_Keys_macro <- summarise_at(coral_2008_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2008_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2008_Molasses_Keys_coral <- summarise_at(coral_2008_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2008_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2008_Molasses_Keys_merge <- merge(coral_2008_Molasses_Keys_coral,coral_2008_Molasses_Keys_macro)
# coral_2008_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2008_Content_Keys <- filter(coral_2008, sitename == "Content Keys")

coral_2008_Content_Keys_macro <- summarise_at(coral_2008_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Content_Keys_coral <- summarise_at(coral_2008_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Content_Keys_merge <- merge(coral_2008_Content_Keys_coral,coral_2008_Content_Keys_macro)
coral_2008_Content_Keys_merge$sitename <- "Content Keys"


coral_2008_Turtle <- filter(coral_2008, sitename == "Turtle")

coral_2008_Turtle_macro <- summarise_at(coral_2008_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Turtle_coral <- summarise_at(coral_2008_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Turtle_merge <- merge(coral_2008_Turtle_coral,coral_2008_Turtle_macro)
coral_2008_Turtle_merge$sitename <- "Turtle"


coral_2008_Porter_Patch <- filter(coral_2008, sitename == "Porter Patch")

coral_2008_Porter_Patch_macro <- summarise_at(coral_2008_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Porter_Patch_coral <- summarise_at(coral_2008_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Porter_Patch_merge <- merge(coral_2008_Porter_Patch_coral,coral_2008_Porter_Patch_macro)
coral_2008_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2008_Admiral <- filter(coral_2008, sitename == "Admiral")

coral_2008_Admiral_macro <- summarise_at(coral_2008_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Admiral_coral <- summarise_at(coral_2008_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Admiral_merge <- merge(coral_2008_Admiral_coral,coral_2008_Admiral_macro)
coral_2008_Admiral_merge$sitename <- "Admiral"


coral_2008_West_Turtle_Shoal <- filter(coral_2008, sitename == "West Turtle Shoal")

coral_2008_West_Turtle_Shoal_macro <- summarise_at(coral_2008_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_West_Turtle_Shoal_coral <- summarise_at(coral_2008_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2008_West_Turtle_Shoal_merge <- merge(coral_2008_West_Turtle_Shoal_coral,coral_2008_West_Turtle_Shoal_macro)
coral_2008_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2008_Dustan_Rocks <- filter(coral_2008, sitename == "Dustan Rocks")

coral_2008_Dustan_Rocks_macro <- summarise_at(coral_2008_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Dustan_Rocks_coral <- summarise_at(coral_2008_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Dustan_Rocks_merge <- merge(coral_2008_Dustan_Rocks_coral,coral_2008_Dustan_Rocks_macro)
coral_2008_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2008_West_Washer_Women <- filter(coral_2008, sitename == "West Washer Women")

coral_2008_West_Washer_Women_macro <- summarise_at(coral_2008_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_West_Washer_Women_coral <- summarise_at(coral_2008_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2008_West_Washer_Women_merge <- merge(coral_2008_West_Washer_Women_coral,coral_2008_West_Washer_Women_macro)
coral_2008_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2008_Western_Head <- filter(coral_2008, sitename == "Western Head")

coral_2008_Western_Head_macro <- summarise_at(coral_2008_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Western_Head_coral <- summarise_at(coral_2008_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Western_Head_merge <- merge(coral_2008_Western_Head_coral,coral_2008_Western_Head_macro)
coral_2008_Western_Head_merge$sitename <- "Western Head"


coral_2008_Cliff_Green <- filter(coral_2008, sitename == "Cliff Green")

coral_2008_Cliff_Green_macro <- summarise_at(coral_2008_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Cliff_Green_coral <- summarise_at(coral_2008_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Cliff_Green_merge <- merge(coral_2008_Cliff_Green_coral,coral_2008_Cliff_Green_macro)
coral_2008_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2008_Smith_Shoal <- filter(coral_2008, sitename == "Smith Shoal")

coral_2008_Smith_Shoal_macro <- summarise_at(coral_2008_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Smith_Shoal_coral <- summarise_at(coral_2008_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Smith_Shoal_merge <- merge(coral_2008_Smith_Shoal_coral,coral_2008_Smith_Shoal_macro)
coral_2008_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2008_Jaap_Reef <- filter(coral_2008, sitename == "Jaap Reef")

coral_2008_Jaap_Reef_macro <- summarise_at(coral_2008_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Jaap_Reef_coral <- summarise_at(coral_2008_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Jaap_Reef_merge <- merge(coral_2008_Jaap_Reef_coral,coral_2008_Jaap_Reef_macro)
coral_2008_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2008_Carysfort_Shallow <- filter(coral_2008, sitename == "Carysfort Shallow")

coral_2008_Carysfort_Shallow_macro <- summarise_at(coral_2008_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Carysfort_Shallow_coral <- summarise_at(coral_2008_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Carysfort_Shallow_merge <- merge(coral_2008_Carysfort_Shallow_coral,coral_2008_Carysfort_Shallow_macro)
coral_2008_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2008_Grecian_Rocks <- filter(coral_2008, sitename == "Grecian Rocks")

coral_2008_Grecian_Rocks_macro <- summarise_at(coral_2008_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Grecian_Rocks_coral <- summarise_at(coral_2008_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Grecian_Rocks_merge <- merge(coral_2008_Grecian_Rocks_coral,coral_2008_Grecian_Rocks_macro)
coral_2008_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2008_Molasses_Shallow <- filter(coral_2008, sitename == "Molasses Shallow")

coral_2008_Molasses_Shallow_macro <- summarise_at(coral_2008_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Molasses_Shallow_coral <- summarise_at(coral_2008_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Molasses_Shallow_merge <- merge(coral_2008_Molasses_Shallow_coral,coral_2008_Molasses_Shallow_macro)
coral_2008_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2008_Conch_Shallow <- filter(coral_2008, sitename == "Conch Shallow")

coral_2008_Conch_Shallow_macro <- summarise_at(coral_2008_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Conch_Shallow_coral <- summarise_at(coral_2008_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Conch_Shallow_merge <- merge(coral_2008_Conch_Shallow_coral,coral_2008_Conch_Shallow_macro)
coral_2008_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2008_Alligator_Shallow <- filter(coral_2008, sitename == "Alligator Shallow")

coral_2008_Alligator_Shallow_macro <- summarise_at(coral_2008_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Alligator_Shallow_coral <- summarise_at(coral_2008_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Alligator_Shallow_merge <- merge(coral_2008_Alligator_Shallow_coral,coral_2008_Alligator_Shallow_macro)
coral_2008_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2008_Tennessee_Shallow <- filter(coral_2008, sitename == "Tennessee Shallow")

coral_2008_Tennessee_Shallow_macro <- summarise_at(coral_2008_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Tennessee_Shallow_coral <- summarise_at(coral_2008_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Tennessee_Shallow_merge <- merge(coral_2008_Tennessee_Shallow_coral,coral_2008_Tennessee_Shallow_macro)
coral_2008_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2008_Sombrero_Shallow <- filter(coral_2008, sitename == "Sombrero Shallow")

coral_2008_Sombrero_Shallow_macro <- summarise_at(coral_2008_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Sombrero_Shallow_coral <- summarise_at(coral_2008_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Sombrero_Shallow_merge <- merge(coral_2008_Sombrero_Shallow_coral,coral_2008_Sombrero_Shallow_macro)
coral_2008_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2008_Looe_Key_Shallow <- filter(coral_2008, sitename == "Looe Key Shallow")

coral_2008_Looe_Key_Shallow_macro <- summarise_at(coral_2008_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Looe_Key_Shallow_coral <- summarise_at(coral_2008_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Looe_Key_Shallow_merge <- merge(coral_2008_Looe_Key_Shallow_coral,coral_2008_Looe_Key_Shallow_macro)
coral_2008_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2008_Eastern_Sambo_Shallow <- filter(coral_2008, sitename == "Eastern Sambo Shallow")

coral_2008_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2008_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2008_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Eastern_Sambo_Shallow_merge <- merge(coral_2008_Eastern_Sambo_Shallow_coral,coral_2008_Eastern_Sambo_Shallow_macro)
coral_2008_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2008_Western_Sambo_Shallow <- filter(coral_2008, sitename == "Western Sambo Shallow")

coral_2008_Western_Sambo_Shallow_macro <- summarise_at(coral_2008_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Western_Sambo_Shallow_coral <- summarise_at(coral_2008_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Western_Sambo_Shallow_merge <- merge(coral_2008_Western_Sambo_Shallow_coral,coral_2008_Western_Sambo_Shallow_macro)
coral_2008_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2008_Rock_Key_Shallow <- filter(coral_2008, sitename == "Rock Key Shallow")

coral_2008_Rock_Key_Shallow_macro <- summarise_at(coral_2008_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Rock_Key_Shallow_coral <- summarise_at(coral_2008_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Rock_Key_Shallow_merge <- merge(coral_2008_Rock_Key_Shallow_coral,coral_2008_Rock_Key_Shallow_macro)
coral_2008_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2008_Sand_Key_Shallow <- filter(coral_2008, sitename == "Sand Key Shallow")

coral_2008_Sand_Key_Shallow_macro <- summarise_at(coral_2008_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Sand_Key_Shallow_coral <- summarise_at(coral_2008_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Sand_Key_Shallow_merge <- merge(coral_2008_Sand_Key_Shallow_coral,coral_2008_Sand_Key_Shallow_macro)
coral_2008_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2008_Carysfort_Deep <- filter(coral_2008, sitename == "Carysfort Deep")

coral_2008_Carysfort_Deep_macro <- summarise_at(coral_2008_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Carysfort_Deep_coral <- summarise_at(coral_2008_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Carysfort_Deep_merge <- merge(coral_2008_Carysfort_Deep_coral,coral_2008_Carysfort_Deep_macro)
coral_2008_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2008_Molasses_Deep <- filter(coral_2008, sitename == "Molasses Deep")

coral_2008_Molasses_Deep_macro <- summarise_at(coral_2008_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Molasses_Deep_coral <- summarise_at(coral_2008_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Molasses_Deep_merge <- merge(coral_2008_Molasses_Deep_coral,coral_2008_Molasses_Deep_macro)
coral_2008_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2008_Conch_Deep <- filter(coral_2008, sitename == "Conch Deep")

coral_2008_Conch_Deep_macro <- summarise_at(coral_2008_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Conch_Deep_coral <- summarise_at(coral_2008_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Conch_Deep_merge <- merge(coral_2008_Conch_Deep_coral,coral_2008_Conch_Deep_macro)
coral_2008_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2008_Alligator_Deep <- filter(coral_2008, sitename == "Alligator Deep")

coral_2008_Alligator_Deep_macro <- summarise_at(coral_2008_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Alligator_Deep_coral <- summarise_at(coral_2008_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Alligator_Deep_merge <- merge(coral_2008_Alligator_Deep_coral,coral_2008_Alligator_Deep_macro)
coral_2008_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2008_Tennessee_Deep <- filter(coral_2008, sitename == "Tennessee Deep")

coral_2008_Tennessee_Deep_macro <- summarise_at(coral_2008_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Tennessee_Deep_coral <- summarise_at(coral_2008_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Tennessee_Deep_merge <- merge(coral_2008_Tennessee_Deep_coral,coral_2008_Tennessee_Deep_macro)
coral_2008_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2008_Sombrero_Deep <- filter(coral_2008, sitename == "Sombrero Deep")

coral_2008_Sombrero_Deep_macro <- summarise_at(coral_2008_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Sombrero_Deep_coral <- summarise_at(coral_2008_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Sombrero_Deep_merge <- merge(coral_2008_Sombrero_Deep_coral,coral_2008_Sombrero_Deep_macro)
coral_2008_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2008_Looe_Key_Deep <- filter(coral_2008, sitename == "Looe Key Deep")

coral_2008_Looe_Key_Deep_macro <- summarise_at(coral_2008_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Looe_Key_Deep_coral <- summarise_at(coral_2008_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Looe_Key_Deep_merge <- merge(coral_2008_Looe_Key_Deep_coral,coral_2008_Looe_Key_Deep_macro)
coral_2008_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2008_Eastern_Sambo_Deep <- filter(coral_2008, sitename == "Eastern Sambo Deep")

coral_2008_Eastern_Sambo_Deep_macro <- summarise_at(coral_2008_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Eastern_Sambo_Deep_coral <- summarise_at(coral_2008_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Eastern_Sambo_Deep_merge <- merge(coral_2008_Eastern_Sambo_Deep_coral,coral_2008_Eastern_Sambo_Deep_macro)
coral_2008_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2008_Western_Sambo_Deep <- filter(coral_2008, sitename == "Western Sambo Deep")

coral_2008_Western_Sambo_Deep_macro <- summarise_at(coral_2008_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Western_Sambo_Deep_coral <- summarise_at(coral_2008_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Western_Sambo_Deep_merge <- merge(coral_2008_Western_Sambo_Deep_coral,coral_2008_Western_Sambo_Deep_macro)
coral_2008_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2008_Rock_Key_Deep <- filter(coral_2008, sitename == "Rock Key Deep")

coral_2008_Rock_Key_Deep_macro <- summarise_at(coral_2008_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Rock_Key_Deep_coral <- summarise_at(coral_2008_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Rock_Key_Deep_merge <- merge(coral_2008_Rock_Key_Deep_coral,coral_2008_Rock_Key_Deep_macro)
coral_2008_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2008_Sand_Key_Deep <- filter(coral_2008, sitename == "Sand Key Deep")

coral_2008_Sand_Key_Deep_macro <- summarise_at(coral_2008_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Sand_Key_Deep_coral <- summarise_at(coral_2008_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Sand_Key_Deep_merge <- merge(coral_2008_Sand_Key_Deep_coral,coral_2008_Sand_Key_Deep_macro)
coral_2008_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2008_Bird_Key_Reef <- filter(coral_2008, sitename == "Bird Key Reef")

coral_2008_Bird_Key_Reef_macro <- summarise_at(coral_2008_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Bird_Key_Reef_coral <- summarise_at(coral_2008_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Bird_Key_Reef_merge <- merge(coral_2008_Bird_Key_Reef_coral,coral_2008_Bird_Key_Reef_macro)
coral_2008_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2008_Black_Coral_Rock <- filter(coral_2008, sitename == "Black Coral Rock")

coral_2008_Black_Coral_Rock_macro <- summarise_at(coral_2008_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Black_Coral_Rock_coral <- summarise_at(coral_2008_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Black_Coral_Rock_merge <- merge(coral_2008_Black_Coral_Rock_coral,coral_2008_Black_Coral_Rock_macro)
coral_2008_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2008_White_Shoal <- filter(coral_2008, sitename == "White Shoal")

coral_2008_White_Shoal_macro <- summarise_at(coral_2008_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_White_Shoal_coral <- summarise_at(coral_2008_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2008_White_Shoal_merge <- merge(coral_2008_White_Shoal_coral,coral_2008_White_Shoal_macro)
coral_2008_White_Shoal_merge$sitename <- "White Shoal"



coral_2008_Palm_Beach_1 <- filter(coral_2008, sitename == "Palm Beach 1")

coral_2008_Palm_Beach_1_macro <- summarise_at(coral_2008_Palm_Beach_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Palm_Beach_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Palm_Beach_1_coral <- summarise_at(coral_2008_Palm_Beach_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Palm_Beach_1_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Palm_Beach_1_merge <- merge(coral_2008_Palm_Beach_1_coral,coral_2008_Palm_Beach_1_macro)
coral_2008_Palm_Beach_1_merge$sitename <- "Palm Beach 1"


coral_2008_Palm_Beach_2 <- filter(coral_2008, sitename == "Palm Beach 2")

coral_2008_Palm_Beach_2_macro <- summarise_at(coral_2008_Palm_Beach_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Palm_Beach_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Palm_Beach_2_coral <- summarise_at(coral_2008_Palm_Beach_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Palm_Beach_2_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Palm_Beach_2_merge <- merge(coral_2008_Palm_Beach_2_coral,coral_2008_Palm_Beach_2_macro)
coral_2008_Palm_Beach_2_merge$sitename <- "Palm Beach 2"


coral_2008_Palm_Beach_3 <- filter(coral_2008, sitename == "Palm Beach 3")

coral_2008_Palm_Beach_3_macro <- summarise_at(coral_2008_Palm_Beach_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Palm_Beach_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Palm_Beach_3_coral <- summarise_at(coral_2008_Palm_Beach_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Palm_Beach_3_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Palm_Beach_3_merge <- merge(coral_2008_Palm_Beach_3_coral,coral_2008_Palm_Beach_3_macro)
coral_2008_Palm_Beach_3_merge$sitename <- "Palm Beach 3"


coral_2008_Broward_County_1 <- filter(coral_2008, sitename == "Broward County 1")

coral_2008_Broward_County_1_macro <- summarise_at(coral_2008_Broward_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Broward_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Broward_County_1_coral <- summarise_at(coral_2008_Broward_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Broward_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Broward_County_1_merge <- merge(coral_2008_Broward_County_1_coral,coral_2008_Broward_County_1_macro)
coral_2008_Broward_County_1_merge$sitename <- "Broward County 1"


coral_2008_Broward_County_2 <- filter(coral_2008, sitename == "Broward County 2")

coral_2008_Broward_County_2_macro <- summarise_at(coral_2008_Broward_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Broward_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Broward_County_2_coral <- summarise_at(coral_2008_Broward_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Broward_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Broward_County_2_merge <- merge(coral_2008_Broward_County_2_coral,coral_2008_Broward_County_2_macro)
coral_2008_Broward_County_2_merge$sitename <- "Broward County 2"


coral_2008_Broward_County_3 <- filter(coral_2008, sitename == "Broward County 3")

coral_2008_Broward_County_3_macro <- summarise_at(coral_2008_Broward_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Broward_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Broward_County_3_coral <- summarise_at(coral_2008_Broward_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Broward_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Broward_County_3_merge <- merge(coral_2008_Broward_County_3_coral,coral_2008_Broward_County_3_macro)
coral_2008_Broward_County_3_merge$sitename <- "Broward County 3"


coral_2008_Broward_County_A <- filter(coral_2008, sitename == "Broward County A")

coral_2008_Broward_County_A_macro <- summarise_at(coral_2008_Broward_County_A,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Broward_County_A_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Broward_County_A_coral <- summarise_at(coral_2008_Broward_County_A,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Broward_County_A_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Broward_County_A_merge <- merge(coral_2008_Broward_County_A_coral,coral_2008_Broward_County_A_macro)
coral_2008_Broward_County_A_merge$sitename <- "Broward County A"



coral_2008_Dade_County_1 <- filter(coral_2008, sitename == "Dade County 1")

coral_2008_Dade_County_1_macro <- summarise_at(coral_2008_Dade_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Dade_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Dade_County_1_coral <- summarise_at(coral_2008_Dade_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Dade_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Dade_County_1_merge <- merge(coral_2008_Dade_County_1_coral,coral_2008_Dade_County_1_macro)
coral_2008_Dade_County_1_merge$sitename <- "Dade County 1"


coral_2008_Dade_County_2 <- filter(coral_2008, sitename == "Dade County 2")

coral_2008_Dade_County_2_macro <- summarise_at(coral_2008_Dade_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Dade_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Dade_County_2_coral <- summarise_at(coral_2008_Dade_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Dade_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Dade_County_2_merge <- merge(coral_2008_Dade_County_2_coral,coral_2008_Dade_County_2_macro)
coral_2008_Dade_County_2_merge$sitename <- "Dade County 2"


coral_2008_Dade_County_3 <- filter(coral_2008, sitename == "Dade County 3")

coral_2008_Dade_County_3_macro <- summarise_at(coral_2008_Dade_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Dade_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Dade_County_3_coral <- summarise_at(coral_2008_Dade_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Dade_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Dade_County_3_merge <- merge(coral_2008_Dade_County_3_coral,coral_2008_Dade_County_3_macro)
coral_2008_Dade_County_3_merge$sitename <- "Dade County 3"


coral_2008_Mayers_Peak <- filter(coral_2008, sitename == "Mayer's Peak")

coral_2008_Mayers_Peak_macro <- summarise_at(coral_2008_Mayers_Peak,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Mayers_Peak_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Mayers_Peak_coral <- summarise_at(coral_2008_Mayers_Peak,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Mayers_Peak_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Mayers_Peak_merge <- merge(coral_2008_Mayers_Peak_coral,coral_2008_Mayers_Peak_macro)
coral_2008_Mayers_Peak_merge$sitename <- "Mayer's Peak"


coral_2008_Temptation_Rock <- filter(coral_2008, sitename == "Temptation Rock")

coral_2008_Temptation_Rock_macro <- summarise_at(coral_2008_Temptation_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Temptation_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Temptation_Rock_coral <- summarise_at(coral_2008_Temptation_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Temptation_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Temptation_Rock_merge <- merge(coral_2008_Temptation_Rock_coral,coral_2008_Temptation_Rock_macro)
coral_2008_Temptation_Rock_merge$sitename <- "Temptation Rock"


coral_2008_Palmata_Patch <- filter(coral_2008, sitename == "Palmata Patch")

coral_2008_Palmata_Patch_macro <- summarise_at(coral_2008_Palmata_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Palmata_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Palmata_Patch_coral <- summarise_at(coral_2008_Palmata_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Palmata_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Palmata_Patch_merge <- merge(coral_2008_Palmata_Patch_coral,coral_2008_Palmata_Patch_macro)
coral_2008_Palmata_Patch_merge$sitename <- "Palmata Patch"


coral_2008_Prolifera_Patch <- filter(coral_2008, sitename == "Prolifera Patch")

coral_2008_Prolifera_Patch_macro <- summarise_at(coral_2008_Prolifera_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Prolifera_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Prolifera_Patch_coral <- summarise_at(coral_2008_Prolifera_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Prolifera_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Prolifera_Patch_merge <- merge(coral_2008_Prolifera_Patch_coral,coral_2008_Prolifera_Patch_macro)
coral_2008_Prolifera_Patch_merge$sitename <- "Prolifera Patch"


coral_2008_Loggerhead_Patch <- filter(coral_2008, sitename == "Loggerhead Patch")

coral_2008_Loggerhead_Patch_macro <- summarise_at(coral_2008_Loggerhead_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Loggerhead_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Loggerhead_Patch_coral <- summarise_at(coral_2008_Loggerhead_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Loggerhead_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Loggerhead_Patch_merge <- merge(coral_2008_Loggerhead_Patch_coral,coral_2008_Loggerhead_Patch_macro)
coral_2008_Loggerhead_Patch_merge$sitename <- "Loggerhead Patch"


coral_2008_Martin_County_1 <- filter(coral_2008, sitename == "Martin County 1")

coral_2008_Martin_County_1_macro <- summarise_at(coral_2008_Martin_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Martin_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Martin_County_1_coral <- summarise_at(coral_2008_Martin_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Martin_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Martin_County_1_merge <- merge(coral_2008_Martin_County_1_coral,coral_2008_Martin_County_1_macro)
coral_2008_Martin_County_1_merge$sitename <- "Martin County 1"


coral_2008_Martin_County_2 <- filter(coral_2008, sitename == "Martin County 2")

coral_2008_Martin_County_2_macro <- summarise_at(coral_2008_Martin_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Martin_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2008_Martin_County_2_coral <- summarise_at(coral_2008_Martin_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2008_Martin_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2008_Martin_County_2_merge <- merge(coral_2008_Martin_County_2_coral,coral_2008_Martin_County_2_macro)
coral_2008_Martin_County_2_merge$sitename <- "Martin County 2"


coral_2008_merged <- rbind(coral_2008_Long_Key_merge,coral_2008_Content_Keys_merge,coral_2008_Turtle_merge,coral_2008_Porter_Patch_merge,
                           coral_2008_Admiral_merge,coral_2008_West_Turtle_Shoal_merge,coral_2008_Dustan_Rocks_merge,
                           coral_2008_West_Washer_Women_merge,coral_2008_Western_Head_merge,coral_2008_Cliff_Green_merge,
                           coral_2008_Smith_Shoal_merge,coral_2008_Jaap_Reef_merge,coral_2008_Carysfort_Shallow_merge,
                           coral_2008_Grecian_Rocks_merge,coral_2008_Molasses_Shallow_merge,coral_2008_Conch_Shallow_merge,
                           coral_2008_Alligator_Shallow_merge,coral_2008_Tennessee_Shallow_merge,coral_2008_Sombrero_Shallow_merge,
                           coral_2008_Looe_Key_Shallow_merge,coral_2008_Eastern_Sambo_Shallow_merge,coral_2008_Western_Sambo_Shallow_merge,
                           coral_2008_Rock_Key_Shallow_merge,coral_2008_Sand_Key_Shallow_merge,coral_2008_Carysfort_Deep_merge,
                           coral_2008_Molasses_Deep_merge,coral_2008_Conch_Deep_merge,coral_2008_Alligator_Deep_merge,
                           coral_2008_Tennessee_Deep_merge,coral_2008_Sombrero_Deep_merge,coral_2008_Looe_Key_Deep_merge,
                           coral_2008_Eastern_Sambo_Deep_merge,coral_2008_Western_Sambo_Deep_merge,coral_2008_Rock_Key_Deep_merge,
                           coral_2008_Sand_Key_Deep_merge,coral_2008_Bird_Key_Reef_merge,coral_2008_Black_Coral_Rock_merge,
                           coral_2008_White_Shoal_merge,coral_2008_Palm_Beach_1_merge,coral_2008_Palm_Beach_2_merge,
                           coral_2008_Palm_Beach_3_merge,coral_2008_Broward_County_1_merge,coral_2008_Broward_County_2_merge,
                           coral_2008_Broward_County_3_merge,coral_2008_Broward_County_A_merge,coral_2008_Dade_County_1_merge,
                           coral_2008_Dade_County_2_merge,coral_2008_Dade_County_3_merge,coral_2008_Mayers_Peak_merge,
                           coral_2008_Temptation_Rock_merge,coral_2008_Palmata_Patch_merge,coral_2008_Prolifera_Patch_merge,
                           coral_2008_Loggerhead_Patch_merge,coral_2008_Martin_County_1_merge,coral_2008_Martin_County_2_merge)


coral_2008_merged$Year <- "2008"



coral_2009 <- import("2009_all.xlsx")
coral_2009 <- select(coral_2009, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2008 <- unique(coral_2008$sitename)
view(unique_2008)
unique_2009 <- unique(coral_2009$sitename)
view(unique_2009)





# coral_2009_El_Radabob <- filter(coral_2009, sitename == "El Radabob")
# 
# coral_2009_El_Radabob_macro <- summarise_at(coral_2009_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2009_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2009_El_Radabob_coral <- summarise_at(coral_2009_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2009_El_Radabob_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2009_El_Radabob_merge <- merge(coral_2009_El_Radabob_coral,coral_2009_El_Radabob_macro)
# coral_2009_El_Radabob_merge$sitename <- "El Radabob"


# coral_2009_Dove_Key <- filter(coral_2009, sitename == "Dove Key")
# 
# coral_2009_Dove_Key_macro <- summarise_at(coral_2009_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2009_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2009_Dove_Key_coral <- summarise_at(coral_2009_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2009_Dove_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2009_Dove_Key_merge <- merge(coral_2009_Dove_Key_coral,coral_2009_Dove_Key_macro)
# coral_2009_Dove_Key_merge$sitename <- "Dove Key"


# coral_2009_Long_Key <- filter(coral_2009, sitename == "Long Key")
# 
# coral_2009_Long_Key_macro <- summarise_at(coral_2009_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2009_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2009_Long_Key_coral <- summarise_at(coral_2009_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2009_Long_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2009_Long_Key_merge <- merge(coral_2009_Long_Key_coral,coral_2009_Long_Key_macro)
# coral_2009_Long_Key_merge$sitename <- "Long Key"



# coral_2009_Moser_Channel <- filter(coral_2009, sitename == "Moser Channel")
# 
# coral_2009_Moser_Channel_macro <- summarise_at(coral_2009_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2009_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2009_Moser_Channel_coral <- summarise_at(coral_2009_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2009_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2009_Moser_Channel_merge <- merge(coral_2009_Moser_Channel_coral,coral_2009_Moser_Channel_macro)
# coral_2009_Moser_Channel_merge$sitename <- "Moser Channel"


# coral_2009_Molasses_Keys <- filter(coral_2009, sitename == "Molasses Keys")
# 
# coral_2009_Molasses_Keys_macro <- summarise_at(coral_2009_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2009_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2009_Molasses_Keys_coral <- summarise_at(coral_2009_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2009_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2009_Molasses_Keys_merge <- merge(coral_2009_Molasses_Keys_coral,coral_2009_Molasses_Keys_macro)
# coral_2009_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2009_Content_Keys <- filter(coral_2009, sitename == "Content Keys")

coral_2009_Content_Keys_macro <- summarise_at(coral_2009_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Content_Keys_coral <- summarise_at(coral_2009_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Content_Keys_merge <- merge(coral_2009_Content_Keys_coral,coral_2009_Content_Keys_macro)
coral_2009_Content_Keys_merge$sitename <- "Content Keys"


coral_2009_Turtle <- filter(coral_2009, sitename == "Turtle")

coral_2009_Turtle_macro <- summarise_at(coral_2009_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Turtle_coral <- summarise_at(coral_2009_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Turtle_merge <- merge(coral_2009_Turtle_coral,coral_2009_Turtle_macro)
coral_2009_Turtle_merge$sitename <- "Turtle"


coral_2009_Porter_Patch <- filter(coral_2009, sitename == "Porter Patch")

coral_2009_Porter_Patch_macro <- summarise_at(coral_2009_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Porter_Patch_coral <- summarise_at(coral_2009_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Porter_Patch_merge <- merge(coral_2009_Porter_Patch_coral,coral_2009_Porter_Patch_macro)
coral_2009_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2009_Admiral <- filter(coral_2009, sitename == "Admiral")

coral_2009_Admiral_macro <- summarise_at(coral_2009_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Admiral_coral <- summarise_at(coral_2009_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Admiral_merge <- merge(coral_2009_Admiral_coral,coral_2009_Admiral_macro)
coral_2009_Admiral_merge$sitename <- "Admiral"


coral_2009_West_Turtle_Shoal <- filter(coral_2009, sitename == "West Turtle Shoal")

coral_2009_West_Turtle_Shoal_macro <- summarise_at(coral_2009_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_West_Turtle_Shoal_coral <- summarise_at(coral_2009_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2009_West_Turtle_Shoal_merge <- merge(coral_2009_West_Turtle_Shoal_coral,coral_2009_West_Turtle_Shoal_macro)
coral_2009_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2009_Dustan_Rocks <- filter(coral_2009, sitename == "Dustan Rocks")

coral_2009_Dustan_Rocks_macro <- summarise_at(coral_2009_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Dustan_Rocks_coral <- summarise_at(coral_2009_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Dustan_Rocks_merge <- merge(coral_2009_Dustan_Rocks_coral,coral_2009_Dustan_Rocks_macro)
coral_2009_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2009_West_Washer_Women <- filter(coral_2009, sitename == "West Washer Women")

coral_2009_West_Washer_Women_macro <- summarise_at(coral_2009_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_West_Washer_Women_coral <- summarise_at(coral_2009_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2009_West_Washer_Women_merge <- merge(coral_2009_West_Washer_Women_coral,coral_2009_West_Washer_Women_macro)
coral_2009_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2009_Western_Head <- filter(coral_2009, sitename == "Western Head")

coral_2009_Western_Head_macro <- summarise_at(coral_2009_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Western_Head_coral <- summarise_at(coral_2009_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Western_Head_merge <- merge(coral_2009_Western_Head_coral,coral_2009_Western_Head_macro)
coral_2009_Western_Head_merge$sitename <- "Western Head"


coral_2009_Cliff_Green <- filter(coral_2009, sitename == "Cliff Green")

coral_2009_Cliff_Green_macro <- summarise_at(coral_2009_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Cliff_Green_coral <- summarise_at(coral_2009_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Cliff_Green_merge <- merge(coral_2009_Cliff_Green_coral,coral_2009_Cliff_Green_macro)
coral_2009_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2009_Smith_Shoal <- filter(coral_2009, sitename == "Smith Shoal")

coral_2009_Smith_Shoal_macro <- summarise_at(coral_2009_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Smith_Shoal_coral <- summarise_at(coral_2009_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Smith_Shoal_merge <- merge(coral_2009_Smith_Shoal_coral,coral_2009_Smith_Shoal_macro)
coral_2009_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2009_Jaap_Reef <- filter(coral_2009, sitename == "Jaap Reef")

coral_2009_Jaap_Reef_macro <- summarise_at(coral_2009_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Jaap_Reef_coral <- summarise_at(coral_2009_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Jaap_Reef_merge <- merge(coral_2009_Jaap_Reef_coral,coral_2009_Jaap_Reef_macro)
coral_2009_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2009_Carysfort_Shallow <- filter(coral_2009, sitename == "Carysfort Shallow")

coral_2009_Carysfort_Shallow_macro <- summarise_at(coral_2009_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Carysfort_Shallow_coral <- summarise_at(coral_2009_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Carysfort_Shallow_merge <- merge(coral_2009_Carysfort_Shallow_coral,coral_2009_Carysfort_Shallow_macro)
coral_2009_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2009_Grecian_Rocks <- filter(coral_2009, sitename == "Grecian Rocks")

coral_2009_Grecian_Rocks_macro <- summarise_at(coral_2009_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Grecian_Rocks_coral <- summarise_at(coral_2009_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Grecian_Rocks_merge <- merge(coral_2009_Grecian_Rocks_coral,coral_2009_Grecian_Rocks_macro)
coral_2009_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2009_Molasses_Shallow <- filter(coral_2009, sitename == "Molasses Shallow")

coral_2009_Molasses_Shallow_macro <- summarise_at(coral_2009_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Molasses_Shallow_coral <- summarise_at(coral_2009_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Molasses_Shallow_merge <- merge(coral_2009_Molasses_Shallow_coral,coral_2009_Molasses_Shallow_macro)
coral_2009_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2009_Conch_Shallow <- filter(coral_2009, sitename == "Conch Shallow")

coral_2009_Conch_Shallow_macro <- summarise_at(coral_2009_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Conch_Shallow_coral <- summarise_at(coral_2009_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Conch_Shallow_merge <- merge(coral_2009_Conch_Shallow_coral,coral_2009_Conch_Shallow_macro)
coral_2009_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2009_Alligator_Shallow <- filter(coral_2009, sitename == "Alligator Shallow")

coral_2009_Alligator_Shallow_macro <- summarise_at(coral_2009_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Alligator_Shallow_coral <- summarise_at(coral_2009_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Alligator_Shallow_merge <- merge(coral_2009_Alligator_Shallow_coral,coral_2009_Alligator_Shallow_macro)
coral_2009_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2009_Tennessee_Shallow <- filter(coral_2009, sitename == "Tennessee Shallow")

coral_2009_Tennessee_Shallow_macro <- summarise_at(coral_2009_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Tennessee_Shallow_coral <- summarise_at(coral_2009_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Tennessee_Shallow_merge <- merge(coral_2009_Tennessee_Shallow_coral,coral_2009_Tennessee_Shallow_macro)
coral_2009_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2009_Sombrero_Shallow <- filter(coral_2009, sitename == "Sombrero Shallow")

coral_2009_Sombrero_Shallow_macro <- summarise_at(coral_2009_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Sombrero_Shallow_coral <- summarise_at(coral_2009_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Sombrero_Shallow_merge <- merge(coral_2009_Sombrero_Shallow_coral,coral_2009_Sombrero_Shallow_macro)
coral_2009_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2009_Looe_Key_Shallow <- filter(coral_2009, sitename == "Looe Key Shallow")

coral_2009_Looe_Key_Shallow_macro <- summarise_at(coral_2009_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Looe_Key_Shallow_coral <- summarise_at(coral_2009_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Looe_Key_Shallow_merge <- merge(coral_2009_Looe_Key_Shallow_coral,coral_2009_Looe_Key_Shallow_macro)
coral_2009_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2009_Eastern_Sambo_Shallow <- filter(coral_2009, sitename == "Eastern Sambo Shallow")

coral_2009_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2009_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2009_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Eastern_Sambo_Shallow_merge <- merge(coral_2009_Eastern_Sambo_Shallow_coral,coral_2009_Eastern_Sambo_Shallow_macro)
coral_2009_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2009_Western_Sambo_Shallow <- filter(coral_2009, sitename == "Western Sambo Shallow")

coral_2009_Western_Sambo_Shallow_macro <- summarise_at(coral_2009_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Western_Sambo_Shallow_coral <- summarise_at(coral_2009_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Western_Sambo_Shallow_merge <- merge(coral_2009_Western_Sambo_Shallow_coral,coral_2009_Western_Sambo_Shallow_macro)
coral_2009_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2009_Rock_Key_Shallow <- filter(coral_2009, sitename == "Rock Key Shallow")

coral_2009_Rock_Key_Shallow_macro <- summarise_at(coral_2009_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Rock_Key_Shallow_coral <- summarise_at(coral_2009_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Rock_Key_Shallow_merge <- merge(coral_2009_Rock_Key_Shallow_coral,coral_2009_Rock_Key_Shallow_macro)
coral_2009_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2009_Sand_Key_Shallow <- filter(coral_2009, sitename == "Sand Key Shallow")

coral_2009_Sand_Key_Shallow_macro <- summarise_at(coral_2009_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Sand_Key_Shallow_coral <- summarise_at(coral_2009_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Sand_Key_Shallow_merge <- merge(coral_2009_Sand_Key_Shallow_coral,coral_2009_Sand_Key_Shallow_macro)
coral_2009_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2009_Carysfort_Deep <- filter(coral_2009, sitename == "Carysfort Deep")

coral_2009_Carysfort_Deep_macro <- summarise_at(coral_2009_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Carysfort_Deep_coral <- summarise_at(coral_2009_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Carysfort_Deep_merge <- merge(coral_2009_Carysfort_Deep_coral,coral_2009_Carysfort_Deep_macro)
coral_2009_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2009_Molasses_Deep <- filter(coral_2009, sitename == "Molasses Deep")

coral_2009_Molasses_Deep_macro <- summarise_at(coral_2009_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Molasses_Deep_coral <- summarise_at(coral_2009_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Molasses_Deep_merge <- merge(coral_2009_Molasses_Deep_coral,coral_2009_Molasses_Deep_macro)
coral_2009_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2009_Conch_Deep <- filter(coral_2009, sitename == "Conch Deep")

coral_2009_Conch_Deep_macro <- summarise_at(coral_2009_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Conch_Deep_coral <- summarise_at(coral_2009_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Conch_Deep_merge <- merge(coral_2009_Conch_Deep_coral,coral_2009_Conch_Deep_macro)
coral_2009_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2009_Alligator_Deep <- filter(coral_2009, sitename == "Alligator Deep")

coral_2009_Alligator_Deep_macro <- summarise_at(coral_2009_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Alligator_Deep_coral <- summarise_at(coral_2009_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Alligator_Deep_merge <- merge(coral_2009_Alligator_Deep_coral,coral_2009_Alligator_Deep_macro)
coral_2009_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2009_Tennessee_Deep <- filter(coral_2009, sitename == "Tennessee Deep")

coral_2009_Tennessee_Deep_macro <- summarise_at(coral_2009_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Tennessee_Deep_coral <- summarise_at(coral_2009_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Tennessee_Deep_merge <- merge(coral_2009_Tennessee_Deep_coral,coral_2009_Tennessee_Deep_macro)
coral_2009_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2009_Sombrero_Deep <- filter(coral_2009, sitename == "Sombrero Deep")

coral_2009_Sombrero_Deep_macro <- summarise_at(coral_2009_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Sombrero_Deep_coral <- summarise_at(coral_2009_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Sombrero_Deep_merge <- merge(coral_2009_Sombrero_Deep_coral,coral_2009_Sombrero_Deep_macro)
coral_2009_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2009_Looe_Key_Deep <- filter(coral_2009, sitename == "Looe Key Deep")

coral_2009_Looe_Key_Deep_macro <- summarise_at(coral_2009_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Looe_Key_Deep_coral <- summarise_at(coral_2009_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Looe_Key_Deep_merge <- merge(coral_2009_Looe_Key_Deep_coral,coral_2009_Looe_Key_Deep_macro)
coral_2009_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2009_Eastern_Sambo_Deep <- filter(coral_2009, sitename == "Eastern Sambo Deep")

coral_2009_Eastern_Sambo_Deep_macro <- summarise_at(coral_2009_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Eastern_Sambo_Deep_coral <- summarise_at(coral_2009_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Eastern_Sambo_Deep_merge <- merge(coral_2009_Eastern_Sambo_Deep_coral,coral_2009_Eastern_Sambo_Deep_macro)
coral_2009_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2009_Western_Sambo_Deep <- filter(coral_2009, sitename == "Western Sambo Deep")

coral_2009_Western_Sambo_Deep_macro <- summarise_at(coral_2009_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Western_Sambo_Deep_coral <- summarise_at(coral_2009_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Western_Sambo_Deep_merge <- merge(coral_2009_Western_Sambo_Deep_coral,coral_2009_Western_Sambo_Deep_macro)
coral_2009_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2009_Rock_Key_Deep <- filter(coral_2009, sitename == "Rock Key Deep")

coral_2009_Rock_Key_Deep_macro <- summarise_at(coral_2009_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Rock_Key_Deep_coral <- summarise_at(coral_2009_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Rock_Key_Deep_merge <- merge(coral_2009_Rock_Key_Deep_coral,coral_2009_Rock_Key_Deep_macro)
coral_2009_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2009_Sand_Key_Deep <- filter(coral_2009, sitename == "Sand Key Deep")

coral_2009_Sand_Key_Deep_macro <- summarise_at(coral_2009_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Sand_Key_Deep_coral <- summarise_at(coral_2009_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Sand_Key_Deep_merge <- merge(coral_2009_Sand_Key_Deep_coral,coral_2009_Sand_Key_Deep_macro)
coral_2009_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2009_Bird_Key_Reef <- filter(coral_2009, sitename == "Bird Key Reef")

coral_2009_Bird_Key_Reef_macro <- summarise_at(coral_2009_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Bird_Key_Reef_coral <- summarise_at(coral_2009_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Bird_Key_Reef_merge <- merge(coral_2009_Bird_Key_Reef_coral,coral_2009_Bird_Key_Reef_macro)
coral_2009_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2009_Black_Coral_Rock <- filter(coral_2009, sitename == "Black Coral Rock")

coral_2009_Black_Coral_Rock_macro <- summarise_at(coral_2009_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Black_Coral_Rock_coral <- summarise_at(coral_2009_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Black_Coral_Rock_merge <- merge(coral_2009_Black_Coral_Rock_coral,coral_2009_Black_Coral_Rock_macro)
coral_2009_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2009_White_Shoal <- filter(coral_2009, sitename == "White Shoal")

coral_2009_White_Shoal_macro <- summarise_at(coral_2009_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_White_Shoal_coral <- summarise_at(coral_2009_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2009_White_Shoal_merge <- merge(coral_2009_White_Shoal_coral,coral_2009_White_Shoal_macro)
coral_2009_White_Shoal_merge$sitename <- "White Shoal"



coral_2009_Palm_Beach_1 <- filter(coral_2009, sitename == "Palm Beach 1")

coral_2009_Palm_Beach_1_macro <- summarise_at(coral_2009_Palm_Beach_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Palm_Beach_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Palm_Beach_1_coral <- summarise_at(coral_2009_Palm_Beach_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Palm_Beach_1_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Palm_Beach_1_merge <- merge(coral_2009_Palm_Beach_1_coral,coral_2009_Palm_Beach_1_macro)
coral_2009_Palm_Beach_1_merge$sitename <- "Palm Beach 1"


coral_2009_Palm_Beach_2 <- filter(coral_2009, sitename == "Palm Beach 2")

coral_2009_Palm_Beach_2_macro <- summarise_at(coral_2009_Palm_Beach_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Palm_Beach_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Palm_Beach_2_coral <- summarise_at(coral_2009_Palm_Beach_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Palm_Beach_2_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Palm_Beach_2_merge <- merge(coral_2009_Palm_Beach_2_coral,coral_2009_Palm_Beach_2_macro)
coral_2009_Palm_Beach_2_merge$sitename <- "Palm Beach 2"


coral_2009_Palm_Beach_3 <- filter(coral_2009, sitename == "Palm Beach 3")

coral_2009_Palm_Beach_3_macro <- summarise_at(coral_2009_Palm_Beach_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Palm_Beach_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Palm_Beach_3_coral <- summarise_at(coral_2009_Palm_Beach_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Palm_Beach_3_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Palm_Beach_3_merge <- merge(coral_2009_Palm_Beach_3_coral,coral_2009_Palm_Beach_3_macro)
coral_2009_Palm_Beach_3_merge$sitename <- "Palm Beach 3"


coral_2009_Broward_County_1 <- filter(coral_2009, sitename == "Broward County 1")

coral_2009_Broward_County_1_macro <- summarise_at(coral_2009_Broward_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Broward_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Broward_County_1_coral <- summarise_at(coral_2009_Broward_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Broward_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Broward_County_1_merge <- merge(coral_2009_Broward_County_1_coral,coral_2009_Broward_County_1_macro)
coral_2009_Broward_County_1_merge$sitename <- "Broward County 1"


coral_2009_Broward_County_2 <- filter(coral_2009, sitename == "Broward County 2")

coral_2009_Broward_County_2_macro <- summarise_at(coral_2009_Broward_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Broward_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Broward_County_2_coral <- summarise_at(coral_2009_Broward_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Broward_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Broward_County_2_merge <- merge(coral_2009_Broward_County_2_coral,coral_2009_Broward_County_2_macro)
coral_2009_Broward_County_2_merge$sitename <- "Broward County 2"


coral_2009_Broward_County_3 <- filter(coral_2009, sitename == "Broward County 3")

coral_2009_Broward_County_3_macro <- summarise_at(coral_2009_Broward_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Broward_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Broward_County_3_coral <- summarise_at(coral_2009_Broward_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Broward_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Broward_County_3_merge <- merge(coral_2009_Broward_County_3_coral,coral_2009_Broward_County_3_macro)
coral_2009_Broward_County_3_merge$sitename <- "Broward County 3"


coral_2009_Broward_County_A <- filter(coral_2009, sitename == "Broward County A")

coral_2009_Broward_County_A_macro <- summarise_at(coral_2009_Broward_County_A,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Broward_County_A_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Broward_County_A_coral <- summarise_at(coral_2009_Broward_County_A,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Broward_County_A_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Broward_County_A_merge <- merge(coral_2009_Broward_County_A_coral,coral_2009_Broward_County_A_macro)
coral_2009_Broward_County_A_merge$sitename <- "Broward County A"



coral_2009_Dade_County_1 <- filter(coral_2009, sitename == "Dade County 1")

coral_2009_Dade_County_1_macro <- summarise_at(coral_2009_Dade_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Dade_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Dade_County_1_coral <- summarise_at(coral_2009_Dade_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Dade_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Dade_County_1_merge <- merge(coral_2009_Dade_County_1_coral,coral_2009_Dade_County_1_macro)
coral_2009_Dade_County_1_merge$sitename <- "Dade County 1"


coral_2009_Dade_County_2 <- filter(coral_2009, sitename == "Dade County 2")

coral_2009_Dade_County_2_macro <- summarise_at(coral_2009_Dade_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Dade_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Dade_County_2_coral <- summarise_at(coral_2009_Dade_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Dade_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Dade_County_2_merge <- merge(coral_2009_Dade_County_2_coral,coral_2009_Dade_County_2_macro)
coral_2009_Dade_County_2_merge$sitename <- "Dade County 2"


coral_2009_Dade_County_3 <- filter(coral_2009, sitename == "Dade County 3")

coral_2009_Dade_County_3_macro <- summarise_at(coral_2009_Dade_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Dade_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Dade_County_3_coral <- summarise_at(coral_2009_Dade_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Dade_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Dade_County_3_merge <- merge(coral_2009_Dade_County_3_coral,coral_2009_Dade_County_3_macro)
coral_2009_Dade_County_3_merge$sitename <- "Dade County 3"


coral_2009_Mayers_Peak <- filter(coral_2009, sitename == "Mayer's Peak")

coral_2009_Mayers_Peak_macro <- summarise_at(coral_2009_Mayers_Peak,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Mayers_Peak_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Mayers_Peak_coral <- summarise_at(coral_2009_Mayers_Peak,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Mayers_Peak_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Mayers_Peak_merge <- merge(coral_2009_Mayers_Peak_coral,coral_2009_Mayers_Peak_macro)
coral_2009_Mayers_Peak_merge$sitename <- "Mayer's Peak"


coral_2009_Temptation_Rock <- filter(coral_2009, sitename == "Temptation Rock")

coral_2009_Temptation_Rock_macro <- summarise_at(coral_2009_Temptation_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Temptation_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Temptation_Rock_coral <- summarise_at(coral_2009_Temptation_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Temptation_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Temptation_Rock_merge <- merge(coral_2009_Temptation_Rock_coral,coral_2009_Temptation_Rock_macro)
coral_2009_Temptation_Rock_merge$sitename <- "Temptation Rock"


coral_2009_Palmata_Patch <- filter(coral_2009, sitename == "Palmata Patch")

coral_2009_Palmata_Patch_macro <- summarise_at(coral_2009_Palmata_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Palmata_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Palmata_Patch_coral <- summarise_at(coral_2009_Palmata_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Palmata_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Palmata_Patch_merge <- merge(coral_2009_Palmata_Patch_coral,coral_2009_Palmata_Patch_macro)
coral_2009_Palmata_Patch_merge$sitename <- "Palmata Patch"


coral_2009_Prolifera_Patch <- filter(coral_2009, sitename == "Prolifera Patch")

coral_2009_Prolifera_Patch_macro <- summarise_at(coral_2009_Prolifera_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Prolifera_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Prolifera_Patch_coral <- summarise_at(coral_2009_Prolifera_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Prolifera_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Prolifera_Patch_merge <- merge(coral_2009_Prolifera_Patch_coral,coral_2009_Prolifera_Patch_macro)
coral_2009_Prolifera_Patch_merge$sitename <- "Prolifera Patch"


coral_2009_Loggerhead_Patch <- filter(coral_2009, sitename == "Loggerhead Patch")

coral_2009_Loggerhead_Patch_macro <- summarise_at(coral_2009_Loggerhead_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Loggerhead_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Loggerhead_Patch_coral <- summarise_at(coral_2009_Loggerhead_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Loggerhead_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Loggerhead_Patch_merge <- merge(coral_2009_Loggerhead_Patch_coral,coral_2009_Loggerhead_Patch_macro)
coral_2009_Loggerhead_Patch_merge$sitename <- "Loggerhead Patch"


coral_2009_Martin_County_1 <- filter(coral_2009, sitename == "Martin County 1")

coral_2009_Martin_County_1_macro <- summarise_at(coral_2009_Martin_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Martin_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Martin_County_1_coral <- summarise_at(coral_2009_Martin_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Martin_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Martin_County_1_merge <- merge(coral_2009_Martin_County_1_coral,coral_2009_Martin_County_1_macro)
coral_2009_Martin_County_1_merge$sitename <- "Martin County 1"


coral_2009_Martin_County_2 <- filter(coral_2009, sitename == "Martin County 2")

coral_2009_Martin_County_2_macro <- summarise_at(coral_2009_Martin_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Martin_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Martin_County_2_coral <- summarise_at(coral_2009_Martin_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Martin_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Martin_County_2_merge <- merge(coral_2009_Martin_County_2_coral,coral_2009_Martin_County_2_macro)
coral_2009_Martin_County_2_merge$sitename <- "Martin County 2"


coral_2009_Wonderland <- filter(coral_2009, sitename == "Wonderland")

coral_2009_Wonderland_macro <- summarise_at(coral_2009_Wonderland,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Wonderland_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Wonderland_coral <- summarise_at(coral_2009_Wonderland,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Wonderland_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Wonderland_merge <- merge(coral_2009_Wonderland_coral,coral_2009_Wonderland_macro)
coral_2009_Wonderland_merge$sitename <- "Wonderland"


coral_2009_Red_Dun_Reef <- filter(coral_2009, sitename == "Red Dun Reef")

coral_2009_Red_Dun_Reef_macro <- summarise_at(coral_2009_Red_Dun_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Red_Dun_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Red_Dun_Reef_coral <- summarise_at(coral_2009_Red_Dun_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Red_Dun_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Red_Dun_Reef_merge <- merge(coral_2009_Red_Dun_Reef_coral,coral_2009_Red_Dun_Reef_macro)
coral_2009_Red_Dun_Reef_merge$sitename <- "Red Dun Reef"


coral_2009_Rawa_Reef <- filter(coral_2009, sitename == "Rawa Reef")

coral_2009_Rawa_Reef_macro <- summarise_at(coral_2009_Rawa_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Rawa_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Rawa_Reef_coral <- summarise_at(coral_2009_Rawa_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Rawa_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Rawa_Reef_merge <- merge(coral_2009_Rawa_Reef_coral,coral_2009_Rawa_Reef_macro)
coral_2009_Rawa_Reef_merge$sitename <- "Rawa Reef"


coral_2009_Thor <- filter(coral_2009, sitename == "Thor")

coral_2009_Thor_macro <- summarise_at(coral_2009_Thor,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Thor_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Thor_coral <- summarise_at(coral_2009_Thor,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Thor_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Thor_merge <- merge(coral_2009_Thor_coral,coral_2009_Thor_macro)
coral_2009_Thor_merge$sitename <- "Thor"


coral_2009_Burr_Fish <- filter(coral_2009, sitename == "Burr Fish")

coral_2009_Burr_Fish_macro <- summarise_at(coral_2009_Burr_Fish,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Burr_Fish_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Burr_Fish_coral <- summarise_at(coral_2009_Burr_Fish,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Burr_Fish_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Burr_Fish_merge <- merge(coral_2009_Burr_Fish_coral,coral_2009_Burr_Fish_macro)
coral_2009_Burr_Fish_merge$sitename <- "Burr Fish"


coral_2009_Two_Patches <- filter(coral_2009, sitename == "Two Patches")

coral_2009_Two_Patches_macro <- summarise_at(coral_2009_Two_Patches,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Two_Patches_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Two_Patches_coral <- summarise_at(coral_2009_Two_Patches,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Two_Patches_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Two_Patches_merge <- merge(coral_2009_Two_Patches_coral,coral_2009_Two_Patches_macro)
coral_2009_Two_Patches_merge$sitename <- "Two Patches"


coral_2009_The_Maze <- filter(coral_2009, sitename == "The Maze")

coral_2009_The_Maze_macro <- summarise_at(coral_2009_The_Maze,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_The_Maze_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_The_Maze_coral <- summarise_at(coral_2009_The_Maze,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_The_Maze_coral) <- c("Coral_Average","Coral_SD")

coral_2009_The_Maze_merge <- merge(coral_2009_The_Maze_coral,coral_2009_The_Maze_macro)
coral_2009_The_Maze_merge$sitename <- "The Maze"


coral_2009_Davis_Rock <- filter(coral_2009, sitename == "Davis Rock")

coral_2009_Davis_Rock_macro <- summarise_at(coral_2009_Davis_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Davis_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Davis_Rock_coral <- summarise_at(coral_2009_Davis_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Davis_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Davis_Rock_merge <- merge(coral_2009_Davis_Rock_coral,coral_2009_Davis_Rock_macro)
coral_2009_Davis_Rock_merge$sitename <- "Davis Rock"


coral_2009_Texas_Rock <- filter(coral_2009, sitename == "Texas Rock")

coral_2009_Texas_Rock_macro <- summarise_at(coral_2009_Texas_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Texas_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2009_Texas_Rock_coral <- summarise_at(coral_2009_Texas_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2009_Texas_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2009_Texas_Rock_merge <- merge(coral_2009_Texas_Rock_coral,coral_2009_Texas_Rock_macro)
coral_2009_Texas_Rock_merge$sitename <- "Texas Rock"


coral_2009_merged <- rbind(coral_2009_Content_Keys_merge,coral_2009_Turtle_merge,coral_2009_Porter_Patch_merge,
                           coral_2009_Admiral_merge,coral_2009_West_Turtle_Shoal_merge,coral_2009_Dustan_Rocks_merge,
                           coral_2009_West_Washer_Women_merge,coral_2009_Western_Head_merge,coral_2009_Cliff_Green_merge,
                           coral_2009_Smith_Shoal_merge,coral_2009_Jaap_Reef_merge,coral_2009_Carysfort_Shallow_merge,
                           coral_2009_Grecian_Rocks_merge,coral_2009_Molasses_Shallow_merge,coral_2009_Conch_Shallow_merge,
                           coral_2009_Alligator_Shallow_merge,coral_2009_Tennessee_Shallow_merge,coral_2009_Sombrero_Shallow_merge,
                           coral_2009_Looe_Key_Shallow_merge,coral_2009_Eastern_Sambo_Shallow_merge,coral_2009_Western_Sambo_Shallow_merge,
                           coral_2009_Rock_Key_Shallow_merge,coral_2009_Sand_Key_Shallow_merge,coral_2009_Carysfort_Deep_merge,
                           coral_2009_Molasses_Deep_merge,coral_2009_Conch_Deep_merge,coral_2009_Alligator_Deep_merge,
                           coral_2009_Tennessee_Deep_merge,coral_2009_Sombrero_Deep_merge,coral_2009_Looe_Key_Deep_merge,
                           coral_2009_Eastern_Sambo_Deep_merge,coral_2009_Western_Sambo_Deep_merge,coral_2009_Rock_Key_Deep_merge,
                           coral_2009_Sand_Key_Deep_merge,coral_2009_Bird_Key_Reef_merge,coral_2009_Black_Coral_Rock_merge,
                           coral_2009_White_Shoal_merge,coral_2009_Palm_Beach_1_merge,coral_2009_Palm_Beach_2_merge,
                           coral_2009_Palm_Beach_3_merge,coral_2009_Broward_County_1_merge,coral_2009_Broward_County_2_merge,
                           coral_2009_Broward_County_3_merge,coral_2009_Broward_County_A_merge,coral_2009_Dade_County_1_merge,
                           coral_2009_Dade_County_2_merge,coral_2009_Dade_County_3_merge,coral_2009_Mayers_Peak_merge,
                           coral_2009_Temptation_Rock_merge,coral_2009_Palmata_Patch_merge,coral_2009_Prolifera_Patch_merge,
                           coral_2009_Loggerhead_Patch_merge,coral_2009_Martin_County_1_merge,coral_2009_Martin_County_2_merge,
                           coral_2009_Wonderland_merge,coral_2009_Red_Dun_Reef_merge,coral_2009_Rawa_Reef_merge,
                           coral_2009_Thor_merge,coral_2009_Burr_Fish_merge,coral_2009_Two_Patches_merge,
                           coral_2009_The_Maze_merge,coral_2009_Davis_Rock_merge,coral_2009_Texas_Rock_merge)


coral_2009_merged$Year <- "2009"




### this year gets crazy with adding 12 reefs and removing 24 reefs

coral_2010 <- import("2010_all.xlsx")
coral_2010$Sample_Year <- "2010"
coral_2010 <- select(coral_2010, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2009 <- unique(coral_2009$sitename)
view(unique_2009)
unique_2010 <- unique(coral_2010$sitename)
view(unique_2010)




coral_2010_Rattlesnake <- filter(coral_2010, sitename == "Rattlesnake")

coral_2010_Rattlesnake_macro <- summarise_at(coral_2010_Rattlesnake,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Rattlesnake_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Rattlesnake_coral <- summarise_at(coral_2010_Rattlesnake,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Rattlesnake_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Rattlesnake_merge <- merge(coral_2010_Rattlesnake_coral,coral_2010_Rattlesnake_macro)
coral_2010_Rattlesnake_merge$sitename <- "Rattlesnake"




coral_2010_El_Radabob <- filter(coral_2010, sitename == "El Radabob")

coral_2010_El_Radabob_macro <- summarise_at(coral_2010_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_El_Radabob_coral <- summarise_at(coral_2010_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_El_Radabob_coral) <- c("Coral_Average","Coral_SD")

coral_2010_El_Radabob_merge <- merge(coral_2010_El_Radabob_coral,coral_2010_El_Radabob_macro)
coral_2010_El_Radabob_merge$sitename <- "El Radabob"


coral_2010_Dove_Key <- filter(coral_2010, sitename == "Dove Key")

coral_2010_Dove_Key_macro <- summarise_at(coral_2010_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Dove_Key_coral <- summarise_at(coral_2010_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dove_Key_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Dove_Key_merge <- merge(coral_2010_Dove_Key_coral,coral_2010_Dove_Key_macro)
coral_2010_Dove_Key_merge$sitename <- "Dove Key"


coral_2010_Long_Key <- filter(coral_2010, sitename == "Long Key")

coral_2010_Long_Key_macro <- summarise_at(coral_2010_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Long_Key_coral <- summarise_at(coral_2010_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Long_Key_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Long_Key_merge <- merge(coral_2010_Long_Key_coral,coral_2010_Long_Key_macro)
coral_2010_Long_Key_merge$sitename <- "Long Key"



coral_2010_Moser_Channel <- filter(coral_2010, sitename == "Moser Channel")

coral_2010_Moser_Channel_macro <- summarise_at(coral_2010_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Moser_Channel_coral <- summarise_at(coral_2010_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Moser_Channel_merge <- merge(coral_2010_Moser_Channel_coral,coral_2010_Moser_Channel_macro)
coral_2010_Moser_Channel_merge$sitename <- "Moser Channel"


coral_2010_Molasses_Keys <- filter(coral_2010, sitename == "Molasses Keys")

coral_2010_Molasses_Keys_macro <- summarise_at(coral_2010_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Molasses_Keys_coral <- summarise_at(coral_2010_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Molasses_Keys_merge <- merge(coral_2010_Molasses_Keys_coral,coral_2010_Molasses_Keys_macro)
coral_2010_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2010_Content_Keys <- filter(coral_2010, sitename == "Content Keys")

coral_2010_Content_Keys_macro <- summarise_at(coral_2010_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Content_Keys_coral <- summarise_at(coral_2010_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Content_Keys_merge <- merge(coral_2010_Content_Keys_coral,coral_2010_Content_Keys_macro)
coral_2010_Content_Keys_merge$sitename <- "Content Keys"


coral_2010_Turtle <- filter(coral_2010, sitename == "Turtle")

coral_2010_Turtle_macro <- summarise_at(coral_2010_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Turtle_coral <- summarise_at(coral_2010_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Turtle_merge <- merge(coral_2010_Turtle_coral,coral_2010_Turtle_macro)
coral_2010_Turtle_merge$sitename <- "Turtle"


coral_2010_Porter_Patch <- filter(coral_2010, sitename == "Porter Patch")

coral_2010_Porter_Patch_macro <- summarise_at(coral_2010_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Porter_Patch_coral <- summarise_at(coral_2010_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Porter_Patch_merge <- merge(coral_2010_Porter_Patch_coral,coral_2010_Porter_Patch_macro)
coral_2010_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2010_Admiral <- filter(coral_2010, sitename == "Admiral")

coral_2010_Admiral_macro <- summarise_at(coral_2010_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Admiral_coral <- summarise_at(coral_2010_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Admiral_merge <- merge(coral_2010_Admiral_coral,coral_2010_Admiral_macro)
coral_2010_Admiral_merge$sitename <- "Admiral"


coral_2010_West_Turtle_Shoal <- filter(coral_2010, sitename == "West Turtle Shoal")

coral_2010_West_Turtle_Shoal_macro <- summarise_at(coral_2010_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_West_Turtle_Shoal_coral <- summarise_at(coral_2010_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2010_West_Turtle_Shoal_merge <- merge(coral_2010_West_Turtle_Shoal_coral,coral_2010_West_Turtle_Shoal_macro)
coral_2010_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2010_Dustan_Rocks <- filter(coral_2010, sitename == "Dustan Rocks")

coral_2010_Dustan_Rocks_macro <- summarise_at(coral_2010_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Dustan_Rocks_coral <- summarise_at(coral_2010_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Dustan_Rocks_merge <- merge(coral_2010_Dustan_Rocks_coral,coral_2010_Dustan_Rocks_macro)
coral_2010_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2010_West_Washer_Women <- filter(coral_2010, sitename == "West Washer Women")

coral_2010_West_Washer_Women_macro <- summarise_at(coral_2010_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_West_Washer_Women_coral <- summarise_at(coral_2010_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2010_West_Washer_Women_merge <- merge(coral_2010_West_Washer_Women_coral,coral_2010_West_Washer_Women_macro)
coral_2010_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2010_Western_Head <- filter(coral_2010, sitename == "Western Head")

coral_2010_Western_Head_macro <- summarise_at(coral_2010_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Western_Head_coral <- summarise_at(coral_2010_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Western_Head_merge <- merge(coral_2010_Western_Head_coral,coral_2010_Western_Head_macro)
coral_2010_Western_Head_merge$sitename <- "Western Head"


coral_2010_Cliff_Green <- filter(coral_2010, sitename == "Cliff Green")

coral_2010_Cliff_Green_macro <- summarise_at(coral_2010_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Cliff_Green_coral <- summarise_at(coral_2010_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Cliff_Green_merge <- merge(coral_2010_Cliff_Green_coral,coral_2010_Cliff_Green_macro)
coral_2010_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2010_Smith_Shoal <- filter(coral_2010, sitename == "Smith Shoal")

coral_2010_Smith_Shoal_macro <- summarise_at(coral_2010_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Smith_Shoal_coral <- summarise_at(coral_2010_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Smith_Shoal_merge <- merge(coral_2010_Smith_Shoal_coral,coral_2010_Smith_Shoal_macro)
coral_2010_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2010_Jaap_Reef <- filter(coral_2010, sitename == "Jaap Reef")

coral_2010_Jaap_Reef_macro <- summarise_at(coral_2010_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Jaap_Reef_coral <- summarise_at(coral_2010_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Jaap_Reef_merge <- merge(coral_2010_Jaap_Reef_coral,coral_2010_Jaap_Reef_macro)
coral_2010_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2010_Carysfort_Shallow <- filter(coral_2010, sitename == "Carysfort Shallow")

coral_2010_Carysfort_Shallow_macro <- summarise_at(coral_2010_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Carysfort_Shallow_coral <- summarise_at(coral_2010_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Carysfort_Shallow_merge <- merge(coral_2010_Carysfort_Shallow_coral,coral_2010_Carysfort_Shallow_macro)
coral_2010_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2010_Grecian_Rocks <- filter(coral_2010, sitename == "Grecian Rocks")

coral_2010_Grecian_Rocks_macro <- summarise_at(coral_2010_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Grecian_Rocks_coral <- summarise_at(coral_2010_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Grecian_Rocks_merge <- merge(coral_2010_Grecian_Rocks_coral,coral_2010_Grecian_Rocks_macro)
coral_2010_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2010_Molasses_Shallow <- filter(coral_2010, sitename == "Molasses Shallow")

coral_2010_Molasses_Shallow_macro <- summarise_at(coral_2010_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Molasses_Shallow_coral <- summarise_at(coral_2010_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Molasses_Shallow_merge <- merge(coral_2010_Molasses_Shallow_coral,coral_2010_Molasses_Shallow_macro)
coral_2010_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2010_Conch_Shallow <- filter(coral_2010, sitename == "Conch Shallow")

coral_2010_Conch_Shallow_macro <- summarise_at(coral_2010_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Conch_Shallow_coral <- summarise_at(coral_2010_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Conch_Shallow_merge <- merge(coral_2010_Conch_Shallow_coral,coral_2010_Conch_Shallow_macro)
coral_2010_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2010_Alligator_Shallow <- filter(coral_2010, sitename == "Alligator Shallow")

coral_2010_Alligator_Shallow_macro <- summarise_at(coral_2010_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Alligator_Shallow_coral <- summarise_at(coral_2010_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Alligator_Shallow_merge <- merge(coral_2010_Alligator_Shallow_coral,coral_2010_Alligator_Shallow_macro)
coral_2010_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2010_Tennessee_Shallow <- filter(coral_2010, sitename == "Tennessee Shallow")

coral_2010_Tennessee_Shallow_macro <- summarise_at(coral_2010_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Tennessee_Shallow_coral <- summarise_at(coral_2010_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Tennessee_Shallow_merge <- merge(coral_2010_Tennessee_Shallow_coral,coral_2010_Tennessee_Shallow_macro)
coral_2010_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2010_Sombrero_Shallow <- filter(coral_2010, sitename == "Sombrero Shallow")

coral_2010_Sombrero_Shallow_macro <- summarise_at(coral_2010_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Sombrero_Shallow_coral <- summarise_at(coral_2010_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Sombrero_Shallow_merge <- merge(coral_2010_Sombrero_Shallow_coral,coral_2010_Sombrero_Shallow_macro)
coral_2010_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2010_Looe_Key_Shallow <- filter(coral_2010, sitename == "Looe Key Shallow")

coral_2010_Looe_Key_Shallow_macro <- summarise_at(coral_2010_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Looe_Key_Shallow_coral <- summarise_at(coral_2010_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Looe_Key_Shallow_merge <- merge(coral_2010_Looe_Key_Shallow_coral,coral_2010_Looe_Key_Shallow_macro)
coral_2010_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2010_Eastern_Sambo_Shallow <- filter(coral_2010, sitename == "Eastern Sambo Shallow")

coral_2010_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2010_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2010_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Eastern_Sambo_Shallow_merge <- merge(coral_2010_Eastern_Sambo_Shallow_coral,coral_2010_Eastern_Sambo_Shallow_macro)
coral_2010_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2010_Western_Sambo_Shallow <- filter(coral_2010, sitename == "Western Sambo Shallow")

coral_2010_Western_Sambo_Shallow_macro <- summarise_at(coral_2010_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Western_Sambo_Shallow_coral <- summarise_at(coral_2010_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Western_Sambo_Shallow_merge <- merge(coral_2010_Western_Sambo_Shallow_coral,coral_2010_Western_Sambo_Shallow_macro)
coral_2010_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2010_Rock_Key_Shallow <- filter(coral_2010, sitename == "Rock Key Shallow")

coral_2010_Rock_Key_Shallow_macro <- summarise_at(coral_2010_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Rock_Key_Shallow_coral <- summarise_at(coral_2010_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Rock_Key_Shallow_merge <- merge(coral_2010_Rock_Key_Shallow_coral,coral_2010_Rock_Key_Shallow_macro)
coral_2010_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2010_Sand_Key_Shallow <- filter(coral_2010, sitename == "Sand Key Shallow")

coral_2010_Sand_Key_Shallow_macro <- summarise_at(coral_2010_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Sand_Key_Shallow_coral <- summarise_at(coral_2010_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Sand_Key_Shallow_merge <- merge(coral_2010_Sand_Key_Shallow_coral,coral_2010_Sand_Key_Shallow_macro)
coral_2010_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2010_Carysfort_Deep <- filter(coral_2010, sitename == "Carysfort Deep")

coral_2010_Carysfort_Deep_macro <- summarise_at(coral_2010_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Carysfort_Deep_coral <- summarise_at(coral_2010_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Carysfort_Deep_merge <- merge(coral_2010_Carysfort_Deep_coral,coral_2010_Carysfort_Deep_macro)
coral_2010_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2010_Molasses_Deep <- filter(coral_2010, sitename == "Molasses Deep")

coral_2010_Molasses_Deep_macro <- summarise_at(coral_2010_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Molasses_Deep_coral <- summarise_at(coral_2010_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Molasses_Deep_merge <- merge(coral_2010_Molasses_Deep_coral,coral_2010_Molasses_Deep_macro)
coral_2010_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2010_Conch_Deep <- filter(coral_2010, sitename == "Conch Deep")

coral_2010_Conch_Deep_macro <- summarise_at(coral_2010_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Conch_Deep_coral <- summarise_at(coral_2010_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Conch_Deep_merge <- merge(coral_2010_Conch_Deep_coral,coral_2010_Conch_Deep_macro)
coral_2010_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2010_Alligator_Deep <- filter(coral_2010, sitename == "Alligator Deep")

coral_2010_Alligator_Deep_macro <- summarise_at(coral_2010_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Alligator_Deep_coral <- summarise_at(coral_2010_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Alligator_Deep_merge <- merge(coral_2010_Alligator_Deep_coral,coral_2010_Alligator_Deep_macro)
coral_2010_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2010_Tennessee_Deep <- filter(coral_2010, sitename == "Tennessee Deep")

coral_2010_Tennessee_Deep_macro <- summarise_at(coral_2010_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Tennessee_Deep_coral <- summarise_at(coral_2010_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Tennessee_Deep_merge <- merge(coral_2010_Tennessee_Deep_coral,coral_2010_Tennessee_Deep_macro)
coral_2010_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2010_Sombrero_Deep <- filter(coral_2010, sitename == "Sombrero Deep")

coral_2010_Sombrero_Deep_macro <- summarise_at(coral_2010_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Sombrero_Deep_coral <- summarise_at(coral_2010_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Sombrero_Deep_merge <- merge(coral_2010_Sombrero_Deep_coral,coral_2010_Sombrero_Deep_macro)
coral_2010_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2010_Looe_Key_Deep <- filter(coral_2010, sitename == "Looe Key Deep")

coral_2010_Looe_Key_Deep_macro <- summarise_at(coral_2010_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Looe_Key_Deep_coral <- summarise_at(coral_2010_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Looe_Key_Deep_merge <- merge(coral_2010_Looe_Key_Deep_coral,coral_2010_Looe_Key_Deep_macro)
coral_2010_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2010_Eastern_Sambo_Deep <- filter(coral_2010, sitename == "Eastern Sambo Deep")

coral_2010_Eastern_Sambo_Deep_macro <- summarise_at(coral_2010_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Eastern_Sambo_Deep_coral <- summarise_at(coral_2010_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Eastern_Sambo_Deep_merge <- merge(coral_2010_Eastern_Sambo_Deep_coral,coral_2010_Eastern_Sambo_Deep_macro)
coral_2010_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2010_Western_Sambo_Deep <- filter(coral_2010, sitename == "Western Sambo Deep")

coral_2010_Western_Sambo_Deep_macro <- summarise_at(coral_2010_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Western_Sambo_Deep_coral <- summarise_at(coral_2010_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Western_Sambo_Deep_merge <- merge(coral_2010_Western_Sambo_Deep_coral,coral_2010_Western_Sambo_Deep_macro)
coral_2010_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2010_Rock_Key_Deep <- filter(coral_2010, sitename == "Rock Key Deep")

coral_2010_Rock_Key_Deep_macro <- summarise_at(coral_2010_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Rock_Key_Deep_coral <- summarise_at(coral_2010_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Rock_Key_Deep_merge <- merge(coral_2010_Rock_Key_Deep_coral,coral_2010_Rock_Key_Deep_macro)
coral_2010_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2010_Sand_Key_Deep <- filter(coral_2010, sitename == "Sand Key Deep")

coral_2010_Sand_Key_Deep_macro <- summarise_at(coral_2010_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Sand_Key_Deep_coral <- summarise_at(coral_2010_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Sand_Key_Deep_merge <- merge(coral_2010_Sand_Key_Deep_coral,coral_2010_Sand_Key_Deep_macro)
coral_2010_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2010_Bird_Key_Reef <- filter(coral_2010, sitename == "Bird Key Reef")

coral_2010_Bird_Key_Reef_macro <- summarise_at(coral_2010_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Bird_Key_Reef_coral <- summarise_at(coral_2010_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Bird_Key_Reef_merge <- merge(coral_2010_Bird_Key_Reef_coral,coral_2010_Bird_Key_Reef_macro)
coral_2010_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2010_Black_Coral_Rock <- filter(coral_2010, sitename == "Black Coral Rock")

coral_2010_Black_Coral_Rock_macro <- summarise_at(coral_2010_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Black_Coral_Rock_coral <- summarise_at(coral_2010_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Black_Coral_Rock_merge <- merge(coral_2010_Black_Coral_Rock_coral,coral_2010_Black_Coral_Rock_macro)
coral_2010_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2010_White_Shoal <- filter(coral_2010, sitename == "White Shoal")

coral_2010_White_Shoal_macro <- summarise_at(coral_2010_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_White_Shoal_coral <- summarise_at(coral_2010_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2010_White_Shoal_merge <- merge(coral_2010_White_Shoal_coral,coral_2010_White_Shoal_macro)
coral_2010_White_Shoal_merge$sitename <- "White Shoal"



coral_2010_Palm_Beach_1 <- filter(coral_2010, sitename == "Palm Beach 1")

coral_2010_Palm_Beach_1_macro <- summarise_at(coral_2010_Palm_Beach_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Palm_Beach_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Palm_Beach_1_coral <- summarise_at(coral_2010_Palm_Beach_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Palm_Beach_1_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Palm_Beach_1_merge <- merge(coral_2010_Palm_Beach_1_coral,coral_2010_Palm_Beach_1_macro)
coral_2010_Palm_Beach_1_merge$sitename <- "Palm Beach 1"


coral_2010_Palm_Beach_2 <- filter(coral_2010, sitename == "Palm Beach 2")

coral_2010_Palm_Beach_2_macro <- summarise_at(coral_2010_Palm_Beach_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Palm_Beach_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Palm_Beach_2_coral <- summarise_at(coral_2010_Palm_Beach_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Palm_Beach_2_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Palm_Beach_2_merge <- merge(coral_2010_Palm_Beach_2_coral,coral_2010_Palm_Beach_2_macro)
coral_2010_Palm_Beach_2_merge$sitename <- "Palm Beach 2"


coral_2010_Palm_Beach_3 <- filter(coral_2010, sitename == "Palm Beach 3")

coral_2010_Palm_Beach_3_macro <- summarise_at(coral_2010_Palm_Beach_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Palm_Beach_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Palm_Beach_3_coral <- summarise_at(coral_2010_Palm_Beach_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Palm_Beach_3_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Palm_Beach_3_merge <- merge(coral_2010_Palm_Beach_3_coral,coral_2010_Palm_Beach_3_macro)
coral_2010_Palm_Beach_3_merge$sitename <- "Palm Beach 3"



coral_2010_Palm_Beach_4 <- filter(coral_2010, sitename == "Palm Beach 4")

coral_2010_Palm_Beach_4_macro <- summarise_at(coral_2010_Palm_Beach_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Palm_Beach_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Palm_Beach_4_coral <- summarise_at(coral_2010_Palm_Beach_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Palm_Beach_4_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Palm_Beach_4_merge <- merge(coral_2010_Palm_Beach_4_coral,coral_2010_Palm_Beach_4_macro)
coral_2010_Palm_Beach_4_merge$sitename <- "Palm Beach 4"



coral_2010_Palm_Beach_5 <- filter(coral_2010, sitename == "Palm Beach 5")

coral_2010_Palm_Beach_5_macro <- summarise_at(coral_2010_Palm_Beach_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Palm_Beach_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Palm_Beach_5_coral <- summarise_at(coral_2010_Palm_Beach_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Palm_Beach_5_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Palm_Beach_5_merge <- merge(coral_2010_Palm_Beach_5_coral,coral_2010_Palm_Beach_5_macro)
coral_2010_Palm_Beach_5_merge$sitename <- "Palm Beach 5"



coral_2010_Broward_County_1 <- filter(coral_2010, sitename == "Broward County 1")

coral_2010_Broward_County_1_macro <- summarise_at(coral_2010_Broward_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Broward_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Broward_County_1_coral <- summarise_at(coral_2010_Broward_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Broward_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Broward_County_1_merge <- merge(coral_2010_Broward_County_1_coral,coral_2010_Broward_County_1_macro)
coral_2010_Broward_County_1_merge$sitename <- "Broward County 1"


coral_2010_Broward_County_2 <- filter(coral_2010, sitename == "Broward County 2")

coral_2010_Broward_County_2_macro <- summarise_at(coral_2010_Broward_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Broward_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Broward_County_2_coral <- summarise_at(coral_2010_Broward_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Broward_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Broward_County_2_merge <- merge(coral_2010_Broward_County_2_coral,coral_2010_Broward_County_2_macro)
coral_2010_Broward_County_2_merge$sitename <- "Broward County 2"


coral_2010_Broward_County_3 <- filter(coral_2010, sitename == "Broward County 3")

coral_2010_Broward_County_3_macro <- summarise_at(coral_2010_Broward_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Broward_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Broward_County_3_coral <- summarise_at(coral_2010_Broward_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Broward_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Broward_County_3_merge <- merge(coral_2010_Broward_County_3_coral,coral_2010_Broward_County_3_macro)
coral_2010_Broward_County_3_merge$sitename <- "Broward County 3"


coral_2010_Broward_County_4 <- filter(coral_2010, sitename == "Broward County 4")

coral_2010_Broward_County_4_macro <- summarise_at(coral_2010_Broward_County_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Broward_County_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Broward_County_4_coral <- summarise_at(coral_2010_Broward_County_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Broward_County_4_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Broward_County_4_merge <- merge(coral_2010_Broward_County_4_coral,coral_2010_Broward_County_4_macro)
coral_2010_Broward_County_4_merge$sitename <- "Broward County 4"


coral_2010_Broward_County_5 <- filter(coral_2010, sitename == "Broward County 5")

coral_2010_Broward_County_5_macro <- summarise_at(coral_2010_Broward_County_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Broward_County_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Broward_County_5_coral <- summarise_at(coral_2010_Broward_County_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Broward_County_5_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Broward_County_5_merge <- merge(coral_2010_Broward_County_5_coral,coral_2010_Broward_County_5_macro)
coral_2010_Broward_County_5_merge$sitename <- "Broward County 5"


coral_2010_Broward_County_6 <- filter(coral_2010, sitename == "Broward County 6")

coral_2010_Broward_County_6_macro <- summarise_at(coral_2010_Broward_County_6,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Broward_County_6_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Broward_County_6_coral <- summarise_at(coral_2010_Broward_County_6,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Broward_County_6_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Broward_County_6_merge <- merge(coral_2010_Broward_County_6_coral,coral_2010_Broward_County_6_macro)
coral_2010_Broward_County_6_merge$sitename <- "Broward County 6"




coral_2010_Broward_County_A <- filter(coral_2010, sitename == "Broward County A")

coral_2010_Broward_County_A_macro <- summarise_at(coral_2010_Broward_County_A,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Broward_County_A_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Broward_County_A_coral <- summarise_at(coral_2010_Broward_County_A,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Broward_County_A_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Broward_County_A_merge <- merge(coral_2010_Broward_County_A_coral,coral_2010_Broward_County_A_macro)
coral_2010_Broward_County_A_merge$sitename <- "Broward County A"



coral_2010_Dade_County_1 <- filter(coral_2010, sitename == "Dade County 1")

coral_2010_Dade_County_1_macro <- summarise_at(coral_2010_Dade_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dade_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Dade_County_1_coral <- summarise_at(coral_2010_Dade_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dade_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Dade_County_1_merge <- merge(coral_2010_Dade_County_1_coral,coral_2010_Dade_County_1_macro)
coral_2010_Dade_County_1_merge$sitename <- "Dade County 1"


coral_2010_Dade_County_2 <- filter(coral_2010, sitename == "Dade County 2")

coral_2010_Dade_County_2_macro <- summarise_at(coral_2010_Dade_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dade_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Dade_County_2_coral <- summarise_at(coral_2010_Dade_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dade_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Dade_County_2_merge <- merge(coral_2010_Dade_County_2_coral,coral_2010_Dade_County_2_macro)
coral_2010_Dade_County_2_merge$sitename <- "Dade County 2"


coral_2010_Dade_County_3 <- filter(coral_2010, sitename == "Dade County 3")

coral_2010_Dade_County_3_macro <- summarise_at(coral_2010_Dade_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dade_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Dade_County_3_coral <- summarise_at(coral_2010_Dade_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dade_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Dade_County_3_merge <- merge(coral_2010_Dade_County_3_coral,coral_2010_Dade_County_3_macro)
coral_2010_Dade_County_3_merge$sitename <- "Dade County 3"


coral_2010_Dade_County_4 <- filter(coral_2010, sitename == "Dade County 4")

coral_2010_Dade_County_4_macro <- summarise_at(coral_2010_Dade_County_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dade_County_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Dade_County_4_coral <- summarise_at(coral_2010_Dade_County_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dade_County_4_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Dade_County_4_merge <- merge(coral_2010_Dade_County_4_coral,coral_2010_Dade_County_4_macro)
coral_2010_Dade_County_4_merge$sitename <- "Dade County 4"


coral_2010_Dade_County_5 <- filter(coral_2010, sitename == "Dade County 5")

coral_2010_Dade_County_5_macro <- summarise_at(coral_2010_Dade_County_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dade_County_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Dade_County_5_coral <- summarise_at(coral_2010_Dade_County_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dade_County_5_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Dade_County_5_merge <- merge(coral_2010_Dade_County_5_coral,coral_2010_Dade_County_5_macro)
coral_2010_Dade_County_5_merge$sitename <- "Dade County 5"


coral_2010_Dade_County_6 <- filter(coral_2010, sitename == "Dade County 6")

coral_2010_Dade_County_6_macro <- summarise_at(coral_2010_Dade_County_6,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dade_County_6_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Dade_County_6_coral <- summarise_at(coral_2010_Dade_County_6,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dade_County_6_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Dade_County_6_merge <- merge(coral_2010_Dade_County_6_coral,coral_2010_Dade_County_6_macro)
coral_2010_Dade_County_6_merge$sitename <- "Dade County 6"


coral_2010_Dade_County_7 <- filter(coral_2010, sitename == "Dade County 7")

coral_2010_Dade_County_7_macro <- summarise_at(coral_2010_Dade_County_7,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dade_County_7_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Dade_County_7_coral <- summarise_at(coral_2010_Dade_County_7,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dade_County_7_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Dade_County_7_merge <- merge(coral_2010_Dade_County_7_coral,coral_2010_Dade_County_7_macro)
coral_2010_Dade_County_7_merge$sitename <- "Dade County 7"


coral_2010_Dade_County_8 <- filter(coral_2010, sitename == "Dade County 8")

coral_2010_Dade_County_8_macro <- summarise_at(coral_2010_Dade_County_8,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dade_County_8_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Dade_County_8_coral <- summarise_at(coral_2010_Dade_County_8,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Dade_County_8_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Dade_County_8_merge <- merge(coral_2010_Dade_County_8_coral,coral_2010_Dade_County_8_macro)
coral_2010_Dade_County_8_merge$sitename <- "Dade County 8"



coral_2010_Mayers_Peak <- filter(coral_2010, sitename == "Mayer's Peak")

coral_2010_Mayers_Peak_macro <- summarise_at(coral_2010_Mayers_Peak,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Mayers_Peak_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Mayers_Peak_coral <- summarise_at(coral_2010_Mayers_Peak,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Mayers_Peak_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Mayers_Peak_merge <- merge(coral_2010_Mayers_Peak_coral,coral_2010_Mayers_Peak_macro)
coral_2010_Mayers_Peak_merge$sitename <- "Mayer's Peak"


coral_2010_Temptation_Rock <- filter(coral_2010, sitename == "Temptation Rock")

coral_2010_Temptation_Rock_macro <- summarise_at(coral_2010_Temptation_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Temptation_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Temptation_Rock_coral <- summarise_at(coral_2010_Temptation_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Temptation_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Temptation_Rock_merge <- merge(coral_2010_Temptation_Rock_coral,coral_2010_Temptation_Rock_macro)
coral_2010_Temptation_Rock_merge$sitename <- "Temptation Rock"


coral_2010_Palmata_Patch <- filter(coral_2010, sitename == "Palmata Patch")

coral_2010_Palmata_Patch_macro <- summarise_at(coral_2010_Palmata_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Palmata_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Palmata_Patch_coral <- summarise_at(coral_2010_Palmata_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Palmata_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Palmata_Patch_merge <- merge(coral_2010_Palmata_Patch_coral,coral_2010_Palmata_Patch_macro)
coral_2010_Palmata_Patch_merge$sitename <- "Palmata Patch"


coral_2010_Prolifera_Patch <- filter(coral_2010, sitename == "Prolifera Patch")

coral_2010_Prolifera_Patch_macro <- summarise_at(coral_2010_Prolifera_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Prolifera_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Prolifera_Patch_coral <- summarise_at(coral_2010_Prolifera_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Prolifera_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Prolifera_Patch_merge <- merge(coral_2010_Prolifera_Patch_coral,coral_2010_Prolifera_Patch_macro)
coral_2010_Prolifera_Patch_merge$sitename <- "Prolifera Patch"


coral_2010_Loggerhead_Patch <- filter(coral_2010, sitename == "Loggerhead Patch")

coral_2010_Loggerhead_Patch_macro <- summarise_at(coral_2010_Loggerhead_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Loggerhead_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Loggerhead_Patch_coral <- summarise_at(coral_2010_Loggerhead_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Loggerhead_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Loggerhead_Patch_merge <- merge(coral_2010_Loggerhead_Patch_coral,coral_2010_Loggerhead_Patch_macro)
coral_2010_Loggerhead_Patch_merge$sitename <- "Loggerhead Patch"


coral_2010_Martin_County_1 <- filter(coral_2010, sitename == "Martin County 1")

coral_2010_Martin_County_1_macro <- summarise_at(coral_2010_Martin_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Martin_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Martin_County_1_coral <- summarise_at(coral_2010_Martin_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Martin_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Martin_County_1_merge <- merge(coral_2010_Martin_County_1_coral,coral_2010_Martin_County_1_macro)
coral_2010_Martin_County_1_merge$sitename <- "Martin County 1"


coral_2010_Martin_County_2 <- filter(coral_2010, sitename == "Martin County 2")

coral_2010_Martin_County_2_macro <- summarise_at(coral_2010_Martin_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Martin_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Martin_County_2_coral <- summarise_at(coral_2010_Martin_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Martin_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Martin_County_2_merge <- merge(coral_2010_Martin_County_2_coral,coral_2010_Martin_County_2_macro)
coral_2010_Martin_County_2_merge$sitename <- "Martin County 2"


coral_2010_Wonderland <- filter(coral_2010, sitename == "Wonderland")

coral_2010_Wonderland_macro <- summarise_at(coral_2010_Wonderland,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Wonderland_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Wonderland_coral <- summarise_at(coral_2010_Wonderland,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Wonderland_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Wonderland_merge <- merge(coral_2010_Wonderland_coral,coral_2010_Wonderland_macro)
coral_2010_Wonderland_merge$sitename <- "Wonderland"


coral_2010_Red_Dun_Reef <- filter(coral_2010, sitename == "Red Dun Reef")

coral_2010_Red_Dun_Reef_macro <- summarise_at(coral_2010_Red_Dun_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Red_Dun_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Red_Dun_Reef_coral <- summarise_at(coral_2010_Red_Dun_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Red_Dun_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Red_Dun_Reef_merge <- merge(coral_2010_Red_Dun_Reef_coral,coral_2010_Red_Dun_Reef_macro)
coral_2010_Red_Dun_Reef_merge$sitename <- "Red Dun Reef"


coral_2010_Rawa_Reef <- filter(coral_2010, sitename == "Rawa Reef")

coral_2010_Rawa_Reef_macro <- summarise_at(coral_2010_Rawa_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Rawa_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Rawa_Reef_coral <- summarise_at(coral_2010_Rawa_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Rawa_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Rawa_Reef_merge <- merge(coral_2010_Rawa_Reef_coral,coral_2010_Rawa_Reef_macro)
coral_2010_Rawa_Reef_merge$sitename <- "Rawa Reef"


coral_2010_Thor <- filter(coral_2010, sitename == "Thor")

coral_2010_Thor_macro <- summarise_at(coral_2010_Thor,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Thor_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Thor_coral <- summarise_at(coral_2010_Thor,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Thor_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Thor_merge <- merge(coral_2010_Thor_coral,coral_2010_Thor_macro)
coral_2010_Thor_merge$sitename <- "Thor"


coral_2010_Burr_Fish <- filter(coral_2010, sitename == "Burr Fish")

coral_2010_Burr_Fish_macro <- summarise_at(coral_2010_Burr_Fish,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Burr_Fish_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Burr_Fish_coral <- summarise_at(coral_2010_Burr_Fish,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Burr_Fish_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Burr_Fish_merge <- merge(coral_2010_Burr_Fish_coral,coral_2010_Burr_Fish_macro)
coral_2010_Burr_Fish_merge$sitename <- "Burr Fish"


coral_2010_Two_Patches <- filter(coral_2010, sitename == "Two Patches")

coral_2010_Two_Patches_macro <- summarise_at(coral_2010_Two_Patches,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Two_Patches_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Two_Patches_coral <- summarise_at(coral_2010_Two_Patches,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Two_Patches_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Two_Patches_merge <- merge(coral_2010_Two_Patches_coral,coral_2010_Two_Patches_macro)
coral_2010_Two_Patches_merge$sitename <- "Two Patches"


coral_2010_The_Maze <- filter(coral_2010, sitename == "The Maze")

coral_2010_The_Maze_macro <- summarise_at(coral_2010_The_Maze,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_The_Maze_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_The_Maze_coral <- summarise_at(coral_2010_The_Maze,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_The_Maze_coral) <- c("Coral_Average","Coral_SD")

coral_2010_The_Maze_merge <- merge(coral_2010_The_Maze_coral,coral_2010_The_Maze_macro)
coral_2010_The_Maze_merge$sitename <- "The Maze"


coral_2010_Davis_Rock <- filter(coral_2010, sitename == "Davis Rock")

coral_2010_Davis_Rock_macro <- summarise_at(coral_2010_Davis_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Davis_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Davis_Rock_coral <- summarise_at(coral_2010_Davis_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Davis_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Davis_Rock_merge <- merge(coral_2010_Davis_Rock_coral,coral_2010_Davis_Rock_macro)
coral_2010_Davis_Rock_merge$sitename <- "Davis Rock"


coral_2010_Texas_Rock <- filter(coral_2010, sitename == "Texas Rock")

coral_2010_Texas_Rock_macro <- summarise_at(coral_2010_Texas_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Texas_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2010_Texas_Rock_coral <- summarise_at(coral_2010_Texas_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2010_Texas_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2010_Texas_Rock_merge <- merge(coral_2010_Texas_Rock_coral,coral_2010_Texas_Rock_macro)
coral_2010_Texas_Rock_merge$sitename <- "Texas Rock"


coral_2010_merged <- rbind(coral_2010_Content_Keys_merge,coral_2010_Turtle_merge,coral_2010_Porter_Patch_merge,
                           coral_2010_Admiral_merge,coral_2010_West_Turtle_Shoal_merge,coral_2010_Dustan_Rocks_merge,
                           coral_2010_West_Washer_Women_merge,coral_2010_Western_Head_merge,coral_2010_Cliff_Green_merge,
                           coral_2010_Smith_Shoal_merge,coral_2010_Jaap_Reef_merge,coral_2010_Dade_County_4_merge,
                           coral_2010_Dade_County_5_merge,coral_2010_Dade_County_6_merge,
                           coral_2010_Dade_County_7_merge,coral_2010_Dade_County_8_merge,
                           coral_2010_Broward_County_4_merge,coral_2010_Broward_County_5_merge,coral_2010_Broward_County_6_merge,
                           coral_2010_Palm_Beach_4_merge,coral_2010_Palm_Beach_5_merge,coral_2010_El_Radabob_merge,
                           coral_2010_Dove_Key_merge,coral_2010_Molasses_Keys_merge,coral_2010_Long_Key_merge,coral_2010_Moser_Channel_merge,
                           coral_2010_Eastern_Sambo_Deep_merge,coral_2010_Western_Sambo_Deep_merge,coral_2010_Rock_Key_Deep_merge,
                           coral_2010_Sand_Key_Deep_merge,coral_2010_Bird_Key_Reef_merge,coral_2010_Black_Coral_Rock_merge,
                           coral_2010_Palm_Beach_1_merge,coral_2010_Palm_Beach_2_merge,
                           coral_2010_Palm_Beach_3_merge,coral_2010_Broward_County_1_merge,coral_2010_Broward_County_2_merge,
                           coral_2010_Broward_County_3_merge,coral_2010_Broward_County_A_merge,coral_2010_Dade_County_1_merge,
                           coral_2010_Dade_County_2_merge,coral_2010_Dade_County_3_merge,coral_2010_Rattlesnake_merge,
                           coral_2010_Martin_County_1_merge,coral_2010_Martin_County_2_merge,
                           coral_2010_Wonderland_merge,coral_2010_Red_Dun_Reef_merge,coral_2010_Rawa_Reef_merge,
                           coral_2010_Thor_merge,coral_2010_Burr_Fish_merge,coral_2010_Two_Patches_merge,
                           coral_2010_The_Maze_merge,coral_2010_Davis_Rock_merge,coral_2010_Texas_Rock_merge)


coral_2010_merged$Year <- "2010"




coral_2011 <- import("2011_all.xlsx")
coral_2011$Sample_Year <- "2011"
coral_2011 <- select(coral_2011, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2010 <- unique(coral_2010$sitename)
view(unique_2010)
unique_2011 <- unique(coral_2011$sitename)
view(unique_2011)


# coral_2011_Rattlesnake <- filter(coral_2011, sitename == "Rattlesnake")
# 
# coral_2011_Rattlesnake_macro <- summarise_at(coral_2011_Rattlesnake,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2011_Rattlesnake_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2011_Rattlesnake_coral <- summarise_at(coral_2011_Rattlesnake,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2011_Rattlesnake_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2011_Rattlesnake_merge <- merge(coral_2011_Rattlesnake_coral,coral_2011_Rattlesnake_macro)
# coral_2011_Rattlesnake_merge$sitename <- "Rattlesnake"
# 
# 
# 
# 
# coral_2011_El_Radabob <- filter(coral_2011, sitename == "El Radabob")
# 
# coral_2011_El_Radabob_macro <- summarise_at(coral_2011_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2011_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2011_El_Radabob_coral <- summarise_at(coral_2011_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2011_El_Radabob_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2011_El_Radabob_merge <- merge(coral_2011_El_Radabob_coral,coral_2011_El_Radabob_macro)
# coral_2011_El_Radabob_merge$sitename <- "El Radabob"
# 
# 
# coral_2011_Dove_Key <- filter(coral_2011, sitename == "Dove Key")
# 
# coral_2011_Dove_Key_macro <- summarise_at(coral_2011_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2011_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2011_Dove_Key_coral <- summarise_at(coral_2011_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2011_Dove_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2011_Dove_Key_merge <- merge(coral_2011_Dove_Key_coral,coral_2011_Dove_Key_macro)
# coral_2011_Dove_Key_merge$sitename <- "Dove Key"
# 
# 
# coral_2011_Long_Key <- filter(coral_2011, sitename == "Long Key")
# 
# coral_2011_Long_Key_macro <- summarise_at(coral_2011_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2011_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2011_Long_Key_coral <- summarise_at(coral_2011_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2011_Long_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2011_Long_Key_merge <- merge(coral_2011_Long_Key_coral,coral_2011_Long_Key_macro)
# coral_2011_Long_Key_merge$sitename <- "Long Key"
# 
# 
# 
# coral_2011_Moser_Channel <- filter(coral_2011, sitename == "Moser Channel")
# 
# coral_2011_Moser_Channel_macro <- summarise_at(coral_2011_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2011_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2011_Moser_Channel_coral <- summarise_at(coral_2011_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2011_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2011_Moser_Channel_merge <- merge(coral_2011_Moser_Channel_coral,coral_2011_Moser_Channel_macro)
# coral_2011_Moser_Channel_merge$sitename <- "Moser Channel"
# 
# 
# coral_2011_Molasses_Keys <- filter(coral_2011, sitename == "Molasses Keys")
# 
# coral_2011_Molasses_Keys_macro <- summarise_at(coral_2011_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2011_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2011_Molasses_Keys_coral <- summarise_at(coral_2011_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2011_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2011_Molasses_Keys_merge <- merge(coral_2011_Molasses_Keys_coral,coral_2011_Molasses_Keys_macro)
# coral_2011_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2011_Content_Keys <- filter(coral_2011, sitename == "Content Keys")

coral_2011_Content_Keys_macro <- summarise_at(coral_2011_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Content_Keys_coral <- summarise_at(coral_2011_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Content_Keys_merge <- merge(coral_2011_Content_Keys_coral,coral_2011_Content_Keys_macro)
coral_2011_Content_Keys_merge$sitename <- "Content Keys"


coral_2011_Turtle <- filter(coral_2011, sitename == "Turtle")

coral_2011_Turtle_macro <- summarise_at(coral_2011_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Turtle_coral <- summarise_at(coral_2011_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Turtle_merge <- merge(coral_2011_Turtle_coral,coral_2011_Turtle_macro)
coral_2011_Turtle_merge$sitename <- "Turtle"


coral_2011_Porter_Patch <- filter(coral_2011, sitename == "Porter Patch")

coral_2011_Porter_Patch_macro <- summarise_at(coral_2011_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Porter_Patch_coral <- summarise_at(coral_2011_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Porter_Patch_merge <- merge(coral_2011_Porter_Patch_coral,coral_2011_Porter_Patch_macro)
coral_2011_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2011_Admiral <- filter(coral_2011, sitename == "Admiral")

coral_2011_Admiral_macro <- summarise_at(coral_2011_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Admiral_coral <- summarise_at(coral_2011_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Admiral_merge <- merge(coral_2011_Admiral_coral,coral_2011_Admiral_macro)
coral_2011_Admiral_merge$sitename <- "Admiral"


coral_2011_West_Turtle_Shoal <- filter(coral_2011, sitename == "West Turtle Shoal")

coral_2011_West_Turtle_Shoal_macro <- summarise_at(coral_2011_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_West_Turtle_Shoal_coral <- summarise_at(coral_2011_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2011_West_Turtle_Shoal_merge <- merge(coral_2011_West_Turtle_Shoal_coral,coral_2011_West_Turtle_Shoal_macro)
coral_2011_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2011_Dustan_Rocks <- filter(coral_2011, sitename == "Dustan Rocks")

coral_2011_Dustan_Rocks_macro <- summarise_at(coral_2011_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Dustan_Rocks_coral <- summarise_at(coral_2011_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Dustan_Rocks_merge <- merge(coral_2011_Dustan_Rocks_coral,coral_2011_Dustan_Rocks_macro)
coral_2011_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2011_West_Washer_Women <- filter(coral_2011, sitename == "West Washer Women")

coral_2011_West_Washer_Women_macro <- summarise_at(coral_2011_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_West_Washer_Women_coral <- summarise_at(coral_2011_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2011_West_Washer_Women_merge <- merge(coral_2011_West_Washer_Women_coral,coral_2011_West_Washer_Women_macro)
coral_2011_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2011_Western_Head <- filter(coral_2011, sitename == "Western Head")

coral_2011_Western_Head_macro <- summarise_at(coral_2011_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Western_Head_coral <- summarise_at(coral_2011_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Western_Head_merge <- merge(coral_2011_Western_Head_coral,coral_2011_Western_Head_macro)
coral_2011_Western_Head_merge$sitename <- "Western Head"


coral_2011_Cliff_Green <- filter(coral_2011, sitename == "Cliff Green")

coral_2011_Cliff_Green_macro <- summarise_at(coral_2011_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Cliff_Green_coral <- summarise_at(coral_2011_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Cliff_Green_merge <- merge(coral_2011_Cliff_Green_coral,coral_2011_Cliff_Green_macro)
coral_2011_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2011_Smith_Shoal <- filter(coral_2011, sitename == "Smith Shoal")

coral_2011_Smith_Shoal_macro <- summarise_at(coral_2011_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Smith_Shoal_coral <- summarise_at(coral_2011_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Smith_Shoal_merge <- merge(coral_2011_Smith_Shoal_coral,coral_2011_Smith_Shoal_macro)
coral_2011_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2011_Jaap_Reef <- filter(coral_2011, sitename == "Jaap Reef")

coral_2011_Jaap_Reef_macro <- summarise_at(coral_2011_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Jaap_Reef_coral <- summarise_at(coral_2011_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Jaap_Reef_merge <- merge(coral_2011_Jaap_Reef_coral,coral_2011_Jaap_Reef_macro)
coral_2011_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2011_Carysfort_Shallow <- filter(coral_2011, sitename == "Carysfort Shallow")

coral_2011_Carysfort_Shallow_macro <- summarise_at(coral_2011_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Carysfort_Shallow_coral <- summarise_at(coral_2011_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Carysfort_Shallow_merge <- merge(coral_2011_Carysfort_Shallow_coral,coral_2011_Carysfort_Shallow_macro)
coral_2011_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2011_Grecian_Rocks <- filter(coral_2011, sitename == "Grecian Rocks")

coral_2011_Grecian_Rocks_macro <- summarise_at(coral_2011_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Grecian_Rocks_coral <- summarise_at(coral_2011_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Grecian_Rocks_merge <- merge(coral_2011_Grecian_Rocks_coral,coral_2011_Grecian_Rocks_macro)
coral_2011_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2011_Molasses_Shallow <- filter(coral_2011, sitename == "Molasses Shallow")

coral_2011_Molasses_Shallow_macro <- summarise_at(coral_2011_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Molasses_Shallow_coral <- summarise_at(coral_2011_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Molasses_Shallow_merge <- merge(coral_2011_Molasses_Shallow_coral,coral_2011_Molasses_Shallow_macro)
coral_2011_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2011_Conch_Shallow <- filter(coral_2011, sitename == "Conch Shallow")

coral_2011_Conch_Shallow_macro <- summarise_at(coral_2011_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Conch_Shallow_coral <- summarise_at(coral_2011_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Conch_Shallow_merge <- merge(coral_2011_Conch_Shallow_coral,coral_2011_Conch_Shallow_macro)
coral_2011_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2011_Alligator_Shallow <- filter(coral_2011, sitename == "Alligator Shallow")

coral_2011_Alligator_Shallow_macro <- summarise_at(coral_2011_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Alligator_Shallow_coral <- summarise_at(coral_2011_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Alligator_Shallow_merge <- merge(coral_2011_Alligator_Shallow_coral,coral_2011_Alligator_Shallow_macro)
coral_2011_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2011_Tennessee_Shallow <- filter(coral_2011, sitename == "Tennessee Shallow")

coral_2011_Tennessee_Shallow_macro <- summarise_at(coral_2011_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Tennessee_Shallow_coral <- summarise_at(coral_2011_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Tennessee_Shallow_merge <- merge(coral_2011_Tennessee_Shallow_coral,coral_2011_Tennessee_Shallow_macro)
coral_2011_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2011_Sombrero_Shallow <- filter(coral_2011, sitename == "Sombrero Shallow")

coral_2011_Sombrero_Shallow_macro <- summarise_at(coral_2011_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Sombrero_Shallow_coral <- summarise_at(coral_2011_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Sombrero_Shallow_merge <- merge(coral_2011_Sombrero_Shallow_coral,coral_2011_Sombrero_Shallow_macro)
coral_2011_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2011_Looe_Key_Shallow <- filter(coral_2011, sitename == "Looe Key Shallow")

coral_2011_Looe_Key_Shallow_macro <- summarise_at(coral_2011_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Looe_Key_Shallow_coral <- summarise_at(coral_2011_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Looe_Key_Shallow_merge <- merge(coral_2011_Looe_Key_Shallow_coral,coral_2011_Looe_Key_Shallow_macro)
coral_2011_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2011_Eastern_Sambo_Shallow <- filter(coral_2011, sitename == "Eastern Sambo Shallow")

coral_2011_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2011_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2011_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Eastern_Sambo_Shallow_merge <- merge(coral_2011_Eastern_Sambo_Shallow_coral,coral_2011_Eastern_Sambo_Shallow_macro)
coral_2011_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2011_Western_Sambo_Shallow <- filter(coral_2011, sitename == "Western Sambo Shallow")

coral_2011_Western_Sambo_Shallow_macro <- summarise_at(coral_2011_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Western_Sambo_Shallow_coral <- summarise_at(coral_2011_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Western_Sambo_Shallow_merge <- merge(coral_2011_Western_Sambo_Shallow_coral,coral_2011_Western_Sambo_Shallow_macro)
coral_2011_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2011_Rock_Key_Shallow <- filter(coral_2011, sitename == "Rock Key Shallow")

coral_2011_Rock_Key_Shallow_macro <- summarise_at(coral_2011_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Rock_Key_Shallow_coral <- summarise_at(coral_2011_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Rock_Key_Shallow_merge <- merge(coral_2011_Rock_Key_Shallow_coral,coral_2011_Rock_Key_Shallow_macro)
coral_2011_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2011_Sand_Key_Shallow <- filter(coral_2011, sitename == "Sand Key Shallow")

coral_2011_Sand_Key_Shallow_macro <- summarise_at(coral_2011_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Sand_Key_Shallow_coral <- summarise_at(coral_2011_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Sand_Key_Shallow_merge <- merge(coral_2011_Sand_Key_Shallow_coral,coral_2011_Sand_Key_Shallow_macro)
coral_2011_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2011_Carysfort_Deep <- filter(coral_2011, sitename == "Carysfort Deep")

coral_2011_Carysfort_Deep_macro <- summarise_at(coral_2011_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Carysfort_Deep_coral <- summarise_at(coral_2011_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Carysfort_Deep_merge <- merge(coral_2011_Carysfort_Deep_coral,coral_2011_Carysfort_Deep_macro)
coral_2011_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2011_Molasses_Deep <- filter(coral_2011, sitename == "Molasses Deep")

coral_2011_Molasses_Deep_macro <- summarise_at(coral_2011_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Molasses_Deep_coral <- summarise_at(coral_2011_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Molasses_Deep_merge <- merge(coral_2011_Molasses_Deep_coral,coral_2011_Molasses_Deep_macro)
coral_2011_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2011_Conch_Deep <- filter(coral_2011, sitename == "Conch Deep")

coral_2011_Conch_Deep_macro <- summarise_at(coral_2011_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Conch_Deep_coral <- summarise_at(coral_2011_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Conch_Deep_merge <- merge(coral_2011_Conch_Deep_coral,coral_2011_Conch_Deep_macro)
coral_2011_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2011_Alligator_Deep <- filter(coral_2011, sitename == "Alligator Deep")

coral_2011_Alligator_Deep_macro <- summarise_at(coral_2011_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Alligator_Deep_coral <- summarise_at(coral_2011_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Alligator_Deep_merge <- merge(coral_2011_Alligator_Deep_coral,coral_2011_Alligator_Deep_macro)
coral_2011_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2011_Tennessee_Deep <- filter(coral_2011, sitename == "Tennessee Deep")

coral_2011_Tennessee_Deep_macro <- summarise_at(coral_2011_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Tennessee_Deep_coral <- summarise_at(coral_2011_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Tennessee_Deep_merge <- merge(coral_2011_Tennessee_Deep_coral,coral_2011_Tennessee_Deep_macro)
coral_2011_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2011_Sombrero_Deep <- filter(coral_2011, sitename == "Sombrero Deep")

coral_2011_Sombrero_Deep_macro <- summarise_at(coral_2011_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Sombrero_Deep_coral <- summarise_at(coral_2011_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Sombrero_Deep_merge <- merge(coral_2011_Sombrero_Deep_coral,coral_2011_Sombrero_Deep_macro)
coral_2011_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2011_Looe_Key_Deep <- filter(coral_2011, sitename == "Looe Key Deep")

coral_2011_Looe_Key_Deep_macro <- summarise_at(coral_2011_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Looe_Key_Deep_coral <- summarise_at(coral_2011_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Looe_Key_Deep_merge <- merge(coral_2011_Looe_Key_Deep_coral,coral_2011_Looe_Key_Deep_macro)
coral_2011_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2011_Eastern_Sambo_Deep <- filter(coral_2011, sitename == "Eastern Sambo Deep")

coral_2011_Eastern_Sambo_Deep_macro <- summarise_at(coral_2011_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Eastern_Sambo_Deep_coral <- summarise_at(coral_2011_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Eastern_Sambo_Deep_merge <- merge(coral_2011_Eastern_Sambo_Deep_coral,coral_2011_Eastern_Sambo_Deep_macro)
coral_2011_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2011_Western_Sambo_Deep <- filter(coral_2011, sitename == "Western Sambo Deep")

coral_2011_Western_Sambo_Deep_macro <- summarise_at(coral_2011_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Western_Sambo_Deep_coral <- summarise_at(coral_2011_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Western_Sambo_Deep_merge <- merge(coral_2011_Western_Sambo_Deep_coral,coral_2011_Western_Sambo_Deep_macro)
coral_2011_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2011_Rock_Key_Deep <- filter(coral_2011, sitename == "Rock Key Deep")

coral_2011_Rock_Key_Deep_macro <- summarise_at(coral_2011_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Rock_Key_Deep_coral <- summarise_at(coral_2011_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Rock_Key_Deep_merge <- merge(coral_2011_Rock_Key_Deep_coral,coral_2011_Rock_Key_Deep_macro)
coral_2011_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2011_Sand_Key_Deep <- filter(coral_2011, sitename == "Sand Key Deep")

coral_2011_Sand_Key_Deep_macro <- summarise_at(coral_2011_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Sand_Key_Deep_coral <- summarise_at(coral_2011_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Sand_Key_Deep_merge <- merge(coral_2011_Sand_Key_Deep_coral,coral_2011_Sand_Key_Deep_macro)
coral_2011_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2011_Bird_Key_Reef <- filter(coral_2011, sitename == "Bird Key Reef")

coral_2011_Bird_Key_Reef_macro <- summarise_at(coral_2011_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Bird_Key_Reef_coral <- summarise_at(coral_2011_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Bird_Key_Reef_merge <- merge(coral_2011_Bird_Key_Reef_coral,coral_2011_Bird_Key_Reef_macro)
coral_2011_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2011_Black_Coral_Rock <- filter(coral_2011, sitename == "Black Coral Rock")

coral_2011_Black_Coral_Rock_macro <- summarise_at(coral_2011_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Black_Coral_Rock_coral <- summarise_at(coral_2011_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Black_Coral_Rock_merge <- merge(coral_2011_Black_Coral_Rock_coral,coral_2011_Black_Coral_Rock_macro)
coral_2011_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2011_White_Shoal <- filter(coral_2011, sitename == "White Shoal")

coral_2011_White_Shoal_macro <- summarise_at(coral_2011_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_White_Shoal_coral <- summarise_at(coral_2011_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2011_White_Shoal_merge <- merge(coral_2011_White_Shoal_coral,coral_2011_White_Shoal_macro)
coral_2011_White_Shoal_merge$sitename <- "White Shoal"



coral_2011_Palm_Beach_1 <- filter(coral_2011, sitename == "Palm Beach 1")

coral_2011_Palm_Beach_1_macro <- summarise_at(coral_2011_Palm_Beach_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Palm_Beach_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Palm_Beach_1_coral <- summarise_at(coral_2011_Palm_Beach_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Palm_Beach_1_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Palm_Beach_1_merge <- merge(coral_2011_Palm_Beach_1_coral,coral_2011_Palm_Beach_1_macro)
coral_2011_Palm_Beach_1_merge$sitename <- "Palm Beach 1"


coral_2011_Palm_Beach_2 <- filter(coral_2011, sitename == "Palm Beach 2")

coral_2011_Palm_Beach_2_macro <- summarise_at(coral_2011_Palm_Beach_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Palm_Beach_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Palm_Beach_2_coral <- summarise_at(coral_2011_Palm_Beach_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Palm_Beach_2_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Palm_Beach_2_merge <- merge(coral_2011_Palm_Beach_2_coral,coral_2011_Palm_Beach_2_macro)
coral_2011_Palm_Beach_2_merge$sitename <- "Palm Beach 2"


coral_2011_Palm_Beach_3 <- filter(coral_2011, sitename == "Palm Beach 3")

coral_2011_Palm_Beach_3_macro <- summarise_at(coral_2011_Palm_Beach_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Palm_Beach_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Palm_Beach_3_coral <- summarise_at(coral_2011_Palm_Beach_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Palm_Beach_3_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Palm_Beach_3_merge <- merge(coral_2011_Palm_Beach_3_coral,coral_2011_Palm_Beach_3_macro)
coral_2011_Palm_Beach_3_merge$sitename <- "Palm Beach 3"



coral_2011_Palm_Beach_4 <- filter(coral_2011, sitename == "Palm Beach 4")

coral_2011_Palm_Beach_4_macro <- summarise_at(coral_2011_Palm_Beach_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Palm_Beach_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Palm_Beach_4_coral <- summarise_at(coral_2011_Palm_Beach_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Palm_Beach_4_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Palm_Beach_4_merge <- merge(coral_2011_Palm_Beach_4_coral,coral_2011_Palm_Beach_4_macro)
coral_2011_Palm_Beach_4_merge$sitename <- "Palm Beach 4"



coral_2011_Palm_Beach_5 <- filter(coral_2011, sitename == "Palm Beach 5")

coral_2011_Palm_Beach_5_macro <- summarise_at(coral_2011_Palm_Beach_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Palm_Beach_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Palm_Beach_5_coral <- summarise_at(coral_2011_Palm_Beach_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Palm_Beach_5_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Palm_Beach_5_merge <- merge(coral_2011_Palm_Beach_5_coral,coral_2011_Palm_Beach_5_macro)
coral_2011_Palm_Beach_5_merge$sitename <- "Palm Beach 5"



coral_2011_Broward_County_1 <- filter(coral_2011, sitename == "Broward County 1")

coral_2011_Broward_County_1_macro <- summarise_at(coral_2011_Broward_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Broward_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Broward_County_1_coral <- summarise_at(coral_2011_Broward_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Broward_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Broward_County_1_merge <- merge(coral_2011_Broward_County_1_coral,coral_2011_Broward_County_1_macro)
coral_2011_Broward_County_1_merge$sitename <- "Broward County 1"


coral_2011_Broward_County_2 <- filter(coral_2011, sitename == "Broward County 2")

coral_2011_Broward_County_2_macro <- summarise_at(coral_2011_Broward_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Broward_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Broward_County_2_coral <- summarise_at(coral_2011_Broward_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Broward_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Broward_County_2_merge <- merge(coral_2011_Broward_County_2_coral,coral_2011_Broward_County_2_macro)
coral_2011_Broward_County_2_merge$sitename <- "Broward County 2"


coral_2011_Broward_County_3 <- filter(coral_2011, sitename == "Broward County 3")

coral_2011_Broward_County_3_macro <- summarise_at(coral_2011_Broward_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Broward_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Broward_County_3_coral <- summarise_at(coral_2011_Broward_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Broward_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Broward_County_3_merge <- merge(coral_2011_Broward_County_3_coral,coral_2011_Broward_County_3_macro)
coral_2011_Broward_County_3_merge$sitename <- "Broward County 3"


coral_2011_Broward_County_4 <- filter(coral_2011, sitename == "Broward County 4")

coral_2011_Broward_County_4_macro <- summarise_at(coral_2011_Broward_County_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Broward_County_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Broward_County_4_coral <- summarise_at(coral_2011_Broward_County_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Broward_County_4_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Broward_County_4_merge <- merge(coral_2011_Broward_County_4_coral,coral_2011_Broward_County_4_macro)
coral_2011_Broward_County_4_merge$sitename <- "Broward County 4"


coral_2011_Broward_County_5 <- filter(coral_2011, sitename == "Broward County 5")

coral_2011_Broward_County_5_macro <- summarise_at(coral_2011_Broward_County_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Broward_County_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Broward_County_5_coral <- summarise_at(coral_2011_Broward_County_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Broward_County_5_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Broward_County_5_merge <- merge(coral_2011_Broward_County_5_coral,coral_2011_Broward_County_5_macro)
coral_2011_Broward_County_5_merge$sitename <- "Broward County 5"


coral_2011_Broward_County_6 <- filter(coral_2011, sitename == "Broward County 6")

coral_2011_Broward_County_6_macro <- summarise_at(coral_2011_Broward_County_6,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Broward_County_6_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Broward_County_6_coral <- summarise_at(coral_2011_Broward_County_6,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Broward_County_6_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Broward_County_6_merge <- merge(coral_2011_Broward_County_6_coral,coral_2011_Broward_County_6_macro)
coral_2011_Broward_County_6_merge$sitename <- "Broward County 6"




coral_2011_Broward_County_A <- filter(coral_2011, sitename == "Broward County A")

coral_2011_Broward_County_A_macro <- summarise_at(coral_2011_Broward_County_A,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Broward_County_A_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Broward_County_A_coral <- summarise_at(coral_2011_Broward_County_A,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Broward_County_A_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Broward_County_A_merge <- merge(coral_2011_Broward_County_A_coral,coral_2011_Broward_County_A_macro)
coral_2011_Broward_County_A_merge$sitename <- "Broward County A"



coral_2011_Dade_County_1 <- filter(coral_2011, sitename == "Dade County 1")

coral_2011_Dade_County_1_macro <- summarise_at(coral_2011_Dade_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dade_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Dade_County_1_coral <- summarise_at(coral_2011_Dade_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dade_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Dade_County_1_merge <- merge(coral_2011_Dade_County_1_coral,coral_2011_Dade_County_1_macro)
coral_2011_Dade_County_1_merge$sitename <- "Dade County 1"


coral_2011_Dade_County_2 <- filter(coral_2011, sitename == "Dade County 2")

coral_2011_Dade_County_2_macro <- summarise_at(coral_2011_Dade_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dade_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Dade_County_2_coral <- summarise_at(coral_2011_Dade_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dade_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Dade_County_2_merge <- merge(coral_2011_Dade_County_2_coral,coral_2011_Dade_County_2_macro)
coral_2011_Dade_County_2_merge$sitename <- "Dade County 2"


coral_2011_Dade_County_3 <- filter(coral_2011, sitename == "Dade County 3")

coral_2011_Dade_County_3_macro <- summarise_at(coral_2011_Dade_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dade_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Dade_County_3_coral <- summarise_at(coral_2011_Dade_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dade_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Dade_County_3_merge <- merge(coral_2011_Dade_County_3_coral,coral_2011_Dade_County_3_macro)
coral_2011_Dade_County_3_merge$sitename <- "Dade County 3"


coral_2011_Dade_County_4 <- filter(coral_2011, sitename == "Dade County 4")

coral_2011_Dade_County_4_macro <- summarise_at(coral_2011_Dade_County_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dade_County_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Dade_County_4_coral <- summarise_at(coral_2011_Dade_County_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dade_County_4_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Dade_County_4_merge <- merge(coral_2011_Dade_County_4_coral,coral_2011_Dade_County_4_macro)
coral_2011_Dade_County_4_merge$sitename <- "Dade County 4"


coral_2011_Dade_County_5 <- filter(coral_2011, sitename == "Dade County 5")

coral_2011_Dade_County_5_macro <- summarise_at(coral_2011_Dade_County_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dade_County_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Dade_County_5_coral <- summarise_at(coral_2011_Dade_County_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dade_County_5_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Dade_County_5_merge <- merge(coral_2011_Dade_County_5_coral,coral_2011_Dade_County_5_macro)
coral_2011_Dade_County_5_merge$sitename <- "Dade County 5"


coral_2011_Dade_County_6 <- filter(coral_2011, sitename == "Dade County 6")

coral_2011_Dade_County_6_macro <- summarise_at(coral_2011_Dade_County_6,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dade_County_6_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Dade_County_6_coral <- summarise_at(coral_2011_Dade_County_6,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dade_County_6_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Dade_County_6_merge <- merge(coral_2011_Dade_County_6_coral,coral_2011_Dade_County_6_macro)
coral_2011_Dade_County_6_merge$sitename <- "Dade County 6"


coral_2011_Dade_County_7 <- filter(coral_2011, sitename == "Dade County 7")

coral_2011_Dade_County_7_macro <- summarise_at(coral_2011_Dade_County_7,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dade_County_7_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Dade_County_7_coral <- summarise_at(coral_2011_Dade_County_7,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dade_County_7_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Dade_County_7_merge <- merge(coral_2011_Dade_County_7_coral,coral_2011_Dade_County_7_macro)
coral_2011_Dade_County_7_merge$sitename <- "Dade County 7"


coral_2011_Dade_County_8 <- filter(coral_2011, sitename == "Dade County 8")

coral_2011_Dade_County_8_macro <- summarise_at(coral_2011_Dade_County_8,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dade_County_8_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Dade_County_8_coral <- summarise_at(coral_2011_Dade_County_8,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Dade_County_8_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Dade_County_8_merge <- merge(coral_2011_Dade_County_8_coral,coral_2011_Dade_County_8_macro)
coral_2011_Dade_County_8_merge$sitename <- "Dade County 8"



coral_2011_Mayers_Peak <- filter(coral_2011, sitename == "Mayer's Peak")

coral_2011_Mayers_Peak_macro <- summarise_at(coral_2011_Mayers_Peak,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Mayers_Peak_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Mayers_Peak_coral <- summarise_at(coral_2011_Mayers_Peak,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Mayers_Peak_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Mayers_Peak_merge <- merge(coral_2011_Mayers_Peak_coral,coral_2011_Mayers_Peak_macro)
coral_2011_Mayers_Peak_merge$sitename <- "Mayer's Peak"


coral_2011_Temptation_Rock <- filter(coral_2011, sitename == "Temptation Rock")

coral_2011_Temptation_Rock_macro <- summarise_at(coral_2011_Temptation_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Temptation_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Temptation_Rock_coral <- summarise_at(coral_2011_Temptation_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Temptation_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Temptation_Rock_merge <- merge(coral_2011_Temptation_Rock_coral,coral_2011_Temptation_Rock_macro)
coral_2011_Temptation_Rock_merge$sitename <- "Temptation Rock"


coral_2011_Palmata_Patch <- filter(coral_2011, sitename == "Palmata Patch")

coral_2011_Palmata_Patch_macro <- summarise_at(coral_2011_Palmata_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Palmata_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Palmata_Patch_coral <- summarise_at(coral_2011_Palmata_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Palmata_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Palmata_Patch_merge <- merge(coral_2011_Palmata_Patch_coral,coral_2011_Palmata_Patch_macro)
coral_2011_Palmata_Patch_merge$sitename <- "Palmata Patch"


coral_2011_Prolifera_Patch <- filter(coral_2011, sitename == "Prolifera Patch")

coral_2011_Prolifera_Patch_macro <- summarise_at(coral_2011_Prolifera_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Prolifera_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Prolifera_Patch_coral <- summarise_at(coral_2011_Prolifera_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Prolifera_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Prolifera_Patch_merge <- merge(coral_2011_Prolifera_Patch_coral,coral_2011_Prolifera_Patch_macro)
coral_2011_Prolifera_Patch_merge$sitename <- "Prolifera Patch"


coral_2011_Loggerhead_Patch <- filter(coral_2011, sitename == "Loggerhead Patch")

coral_2011_Loggerhead_Patch_macro <- summarise_at(coral_2011_Loggerhead_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Loggerhead_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Loggerhead_Patch_coral <- summarise_at(coral_2011_Loggerhead_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Loggerhead_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Loggerhead_Patch_merge <- merge(coral_2011_Loggerhead_Patch_coral,coral_2011_Loggerhead_Patch_macro)
coral_2011_Loggerhead_Patch_merge$sitename <- "Loggerhead Patch"


coral_2011_Martin_County_1 <- filter(coral_2011, sitename == "Martin County 1")

coral_2011_Martin_County_1_macro <- summarise_at(coral_2011_Martin_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Martin_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Martin_County_1_coral <- summarise_at(coral_2011_Martin_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Martin_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Martin_County_1_merge <- merge(coral_2011_Martin_County_1_coral,coral_2011_Martin_County_1_macro)
coral_2011_Martin_County_1_merge$sitename <- "Martin County 1"


coral_2011_Martin_County_2 <- filter(coral_2011, sitename == "Martin County 2")

coral_2011_Martin_County_2_macro <- summarise_at(coral_2011_Martin_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Martin_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Martin_County_2_coral <- summarise_at(coral_2011_Martin_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Martin_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Martin_County_2_merge <- merge(coral_2011_Martin_County_2_coral,coral_2011_Martin_County_2_macro)
coral_2011_Martin_County_2_merge$sitename <- "Martin County 2"


coral_2011_Wonderland <- filter(coral_2011, sitename == "Wonderland")

coral_2011_Wonderland_macro <- summarise_at(coral_2011_Wonderland,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Wonderland_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Wonderland_coral <- summarise_at(coral_2011_Wonderland,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Wonderland_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Wonderland_merge <- merge(coral_2011_Wonderland_coral,coral_2011_Wonderland_macro)
coral_2011_Wonderland_merge$sitename <- "Wonderland"


coral_2011_Red_Dun_Reef <- filter(coral_2011, sitename == "Red Dun Reef")

coral_2011_Red_Dun_Reef_macro <- summarise_at(coral_2011_Red_Dun_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Red_Dun_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Red_Dun_Reef_coral <- summarise_at(coral_2011_Red_Dun_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Red_Dun_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Red_Dun_Reef_merge <- merge(coral_2011_Red_Dun_Reef_coral,coral_2011_Red_Dun_Reef_macro)
coral_2011_Red_Dun_Reef_merge$sitename <- "Red Dun Reef"


coral_2011_Rawa_Reef <- filter(coral_2011, sitename == "Rawa Reef")

coral_2011_Rawa_Reef_macro <- summarise_at(coral_2011_Rawa_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Rawa_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Rawa_Reef_coral <- summarise_at(coral_2011_Rawa_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Rawa_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Rawa_Reef_merge <- merge(coral_2011_Rawa_Reef_coral,coral_2011_Rawa_Reef_macro)
coral_2011_Rawa_Reef_merge$sitename <- "Rawa Reef"


coral_2011_Thor <- filter(coral_2011, sitename == "Thor")

coral_2011_Thor_macro <- summarise_at(coral_2011_Thor,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Thor_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Thor_coral <- summarise_at(coral_2011_Thor,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Thor_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Thor_merge <- merge(coral_2011_Thor_coral,coral_2011_Thor_macro)
coral_2011_Thor_merge$sitename <- "Thor"


coral_2011_Burr_Fish <- filter(coral_2011, sitename == "Burr Fish")

coral_2011_Burr_Fish_macro <- summarise_at(coral_2011_Burr_Fish,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Burr_Fish_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Burr_Fish_coral <- summarise_at(coral_2011_Burr_Fish,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Burr_Fish_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Burr_Fish_merge <- merge(coral_2011_Burr_Fish_coral,coral_2011_Burr_Fish_macro)
coral_2011_Burr_Fish_merge$sitename <- "Burr Fish"


coral_2011_Two_Patches <- filter(coral_2011, sitename == "Two Patches")

coral_2011_Two_Patches_macro <- summarise_at(coral_2011_Two_Patches,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Two_Patches_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Two_Patches_coral <- summarise_at(coral_2011_Two_Patches,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Two_Patches_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Two_Patches_merge <- merge(coral_2011_Two_Patches_coral,coral_2011_Two_Patches_macro)
coral_2011_Two_Patches_merge$sitename <- "Two Patches"


coral_2011_The_Maze <- filter(coral_2011, sitename == "The Maze")

coral_2011_The_Maze_macro <- summarise_at(coral_2011_The_Maze,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_The_Maze_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_The_Maze_coral <- summarise_at(coral_2011_The_Maze,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_The_Maze_coral) <- c("Coral_Average","Coral_SD")

coral_2011_The_Maze_merge <- merge(coral_2011_The_Maze_coral,coral_2011_The_Maze_macro)
coral_2011_The_Maze_merge$sitename <- "The Maze"


coral_2011_Davis_Rock <- filter(coral_2011, sitename == "Davis Rock")

coral_2011_Davis_Rock_macro <- summarise_at(coral_2011_Davis_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Davis_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Davis_Rock_coral <- summarise_at(coral_2011_Davis_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Davis_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Davis_Rock_merge <- merge(coral_2011_Davis_Rock_coral,coral_2011_Davis_Rock_macro)
coral_2011_Davis_Rock_merge$sitename <- "Davis Rock"


coral_2011_Texas_Rock <- filter(coral_2011, sitename == "Texas Rock")

coral_2011_Texas_Rock_macro <- summarise_at(coral_2011_Texas_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Texas_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2011_Texas_Rock_coral <- summarise_at(coral_2011_Texas_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2011_Texas_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2011_Texas_Rock_merge <- merge(coral_2011_Texas_Rock_coral,coral_2011_Texas_Rock_macro)
coral_2011_Texas_Rock_merge$sitename <- "Texas Rock"


coral_2011_merged <- rbind(coral_2011_Content_Keys_merge,coral_2011_Turtle_merge,coral_2011_Jaap_Reef_merge,coral_2011_Carysfort_Shallow_merge,
                           coral_2011_Grecian_Rocks_merge,coral_2011_Molasses_Shallow_merge,coral_2011_Conch_Shallow_merge,
                           coral_2011_Alligator_Shallow_merge,coral_2011_Tennessee_Shallow_merge,coral_2011_Sombrero_Shallow_merge,
                           coral_2011_Looe_Key_Shallow_merge,coral_2011_Eastern_Sambo_Shallow_merge,coral_2011_Western_Sambo_Shallow_merge,
                           coral_2011_Rock_Key_Shallow_merge,coral_2011_Sand_Key_Shallow_merge,coral_2011_Carysfort_Deep_merge,
                           coral_2011_Molasses_Deep_merge,coral_2011_Conch_Deep_merge,coral_2011_Alligator_Deep_merge,
                           coral_2011_Tennessee_Deep_merge,coral_2011_Sombrero_Deep_merge,coral_2011_Looe_Key_Deep_merge,
                           coral_2011_Eastern_Sambo_Deep_merge,coral_2011_Western_Sambo_Deep_merge,coral_2011_Rock_Key_Deep_merge,
                           coral_2011_Sand_Key_Deep_merge,coral_2011_Bird_Key_Reef_merge,coral_2011_Black_Coral_Rock_merge,
                           coral_2011_White_Shoal_merge,coral_2011_Palm_Beach_1_merge,coral_2011_Palm_Beach_2_merge,
                           coral_2011_Palm_Beach_3_merge,coral_2011_Broward_County_1_merge,coral_2011_Broward_County_2_merge,
                           coral_2011_Broward_County_3_merge,coral_2011_Broward_County_A_merge,coral_2011_Dade_County_1_merge,
                           coral_2011_Dade_County_2_merge,coral_2011_Dade_County_3_merge,coral_2011_Mayers_Peak_merge,
                           coral_2011_Temptation_Rock_merge,coral_2011_Palmata_Patch_merge,coral_2011_Prolifera_Patch_merge,
                           coral_2011_Loggerhead_Patch_merge,coral_2011_Martin_County_1_merge,coral_2011_Martin_County_2_merge,
                           coral_2011_Wonderland_merge,coral_2011_Red_Dun_Reef_merge,coral_2011_Rawa_Reef_merge,
                           coral_2011_Thor_merge,coral_2011_Burr_Fish_merge,coral_2011_Two_Patches_merge,
                           coral_2011_The_Maze_merge,coral_2011_Davis_Rock_merge,coral_2011_Texas_Rock_merge,coral_2011_Dade_County_4_merge,
                           coral_2011_Dade_County_5_merge,coral_2011_Dade_County_6_merge,
                           coral_2011_Dade_County_7_merge,coral_2011_Dade_County_8_merge,
                           coral_2011_Broward_County_4_merge,coral_2011_Broward_County_5_merge,coral_2011_Broward_County_6_merge,
                           coral_2011_Palm_Beach_4_merge,coral_2011_Palm_Beach_5_merge)


coral_2011_merged$Year <- "2011"



coral_2012 <- import("2012_all.xlsx")
coral_2012$Sample_Year <- "2012"
coral_2012 <- select(coral_2012, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2011 <- unique(coral_2011$sitename)
view(unique_2011)
unique_2012 <- unique(coral_2012$sitename)
view(unique_2012)




# coral_2012_Rattlesnake <- filter(coral_2012, sitename == "Rattlesnake")
# 
# coral_2012_Rattlesnake_macro <- summarise_at(coral_2012_Rattlesnake,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2012_Rattlesnake_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2012_Rattlesnake_coral <- summarise_at(coral_2012_Rattlesnake,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2012_Rattlesnake_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2012_Rattlesnake_merge <- merge(coral_2012_Rattlesnake_coral,coral_2012_Rattlesnake_macro)
# coral_2012_Rattlesnake_merge$sitename <- "Rattlesnake"
# 
# 
# 
# 
# coral_2012_El_Radabob <- filter(coral_2012, sitename == "El Radabob")
# 
# coral_2012_El_Radabob_macro <- summarise_at(coral_2012_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2012_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2012_El_Radabob_coral <- summarise_at(coral_2012_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2012_El_Radabob_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2012_El_Radabob_merge <- merge(coral_2012_El_Radabob_coral,coral_2012_El_Radabob_macro)
# coral_2012_El_Radabob_merge$sitename <- "El Radabob"
# 
# 
# coral_2012_Dove_Key <- filter(coral_2012, sitename == "Dove Key")
# 
# coral_2012_Dove_Key_macro <- summarise_at(coral_2012_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2012_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2012_Dove_Key_coral <- summarise_at(coral_2012_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2012_Dove_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2012_Dove_Key_merge <- merge(coral_2012_Dove_Key_coral,coral_2012_Dove_Key_macro)
# coral_2012_Dove_Key_merge$sitename <- "Dove Key"
# 
# 
# coral_2012_Long_Key <- filter(coral_2012, sitename == "Long Key")
# 
# coral_2012_Long_Key_macro <- summarise_at(coral_2012_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2012_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2012_Long_Key_coral <- summarise_at(coral_2012_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2012_Long_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2012_Long_Key_merge <- merge(coral_2012_Long_Key_coral,coral_2012_Long_Key_macro)
# coral_2012_Long_Key_merge$sitename <- "Long Key"
# 
# 
# 
# coral_2012_Moser_Channel <- filter(coral_2012, sitename == "Moser Channel")
# 
# coral_2012_Moser_Channel_macro <- summarise_at(coral_2012_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2012_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2012_Moser_Channel_coral <- summarise_at(coral_2012_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2012_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2012_Moser_Channel_merge <- merge(coral_2012_Moser_Channel_coral,coral_2012_Moser_Channel_macro)
# coral_2012_Moser_Channel_merge$sitename <- "Moser Channel"
# 
# 
# coral_2012_Molasses_Keys <- filter(coral_2012, sitename == "Molasses Keys")
# 
# coral_2012_Molasses_Keys_macro <- summarise_at(coral_2012_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2012_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2012_Molasses_Keys_coral <- summarise_at(coral_2012_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2012_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2012_Molasses_Keys_merge <- merge(coral_2012_Molasses_Keys_coral,coral_2012_Molasses_Keys_macro)
# coral_2012_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2012_Content_Keys <- filter(coral_2012, sitename == "Content Keys")

coral_2012_Content_Keys_macro <- summarise_at(coral_2012_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Content_Keys_coral <- summarise_at(coral_2012_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Content_Keys_merge <- merge(coral_2012_Content_Keys_coral,coral_2012_Content_Keys_macro)
coral_2012_Content_Keys_merge$sitename <- "Content Keys"


coral_2012_Turtle <- filter(coral_2012, sitename == "Turtle")

coral_2012_Turtle_macro <- summarise_at(coral_2012_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Turtle_coral <- summarise_at(coral_2012_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Turtle_merge <- merge(coral_2012_Turtle_coral,coral_2012_Turtle_macro)
coral_2012_Turtle_merge$sitename <- "Turtle"


coral_2012_Porter_Patch <- filter(coral_2012, sitename == "Porter Patch")

coral_2012_Porter_Patch_macro <- summarise_at(coral_2012_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Porter_Patch_coral <- summarise_at(coral_2012_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Porter_Patch_merge <- merge(coral_2012_Porter_Patch_coral,coral_2012_Porter_Patch_macro)
coral_2012_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2012_Admiral <- filter(coral_2012, sitename == "Admiral")

coral_2012_Admiral_macro <- summarise_at(coral_2012_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Admiral_coral <- summarise_at(coral_2012_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Admiral_merge <- merge(coral_2012_Admiral_coral,coral_2012_Admiral_macro)
coral_2012_Admiral_merge$sitename <- "Admiral"


coral_2012_West_Turtle_Shoal <- filter(coral_2012, sitename == "West Turtle Shoal")

coral_2012_West_Turtle_Shoal_macro <- summarise_at(coral_2012_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_West_Turtle_Shoal_coral <- summarise_at(coral_2012_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2012_West_Turtle_Shoal_merge <- merge(coral_2012_West_Turtle_Shoal_coral,coral_2012_West_Turtle_Shoal_macro)
coral_2012_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2012_Dustan_Rocks <- filter(coral_2012, sitename == "Dustan Rocks")

coral_2012_Dustan_Rocks_macro <- summarise_at(coral_2012_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Dustan_Rocks_coral <- summarise_at(coral_2012_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Dustan_Rocks_merge <- merge(coral_2012_Dustan_Rocks_coral,coral_2012_Dustan_Rocks_macro)
coral_2012_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2012_West_Washer_Women <- filter(coral_2012, sitename == "West Washer Women")

coral_2012_West_Washer_Women_macro <- summarise_at(coral_2012_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_West_Washer_Women_coral <- summarise_at(coral_2012_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2012_West_Washer_Women_merge <- merge(coral_2012_West_Washer_Women_coral,coral_2012_West_Washer_Women_macro)
coral_2012_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2012_Western_Head <- filter(coral_2012, sitename == "Western Head")

coral_2012_Western_Head_macro <- summarise_at(coral_2012_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Western_Head_coral <- summarise_at(coral_2012_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Western_Head_merge <- merge(coral_2012_Western_Head_coral,coral_2012_Western_Head_macro)
coral_2012_Western_Head_merge$sitename <- "Western Head"


coral_2012_Cliff_Green <- filter(coral_2012, sitename == "Cliff Green")

coral_2012_Cliff_Green_macro <- summarise_at(coral_2012_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Cliff_Green_coral <- summarise_at(coral_2012_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Cliff_Green_merge <- merge(coral_2012_Cliff_Green_coral,coral_2012_Cliff_Green_macro)
coral_2012_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2012_Smith_Shoal <- filter(coral_2012, sitename == "Smith Shoal")

coral_2012_Smith_Shoal_macro <- summarise_at(coral_2012_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Smith_Shoal_coral <- summarise_at(coral_2012_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Smith_Shoal_merge <- merge(coral_2012_Smith_Shoal_coral,coral_2012_Smith_Shoal_macro)
coral_2012_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2012_Jaap_Reef <- filter(coral_2012, sitename == "Jaap Reef")

coral_2012_Jaap_Reef_macro <- summarise_at(coral_2012_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Jaap_Reef_coral <- summarise_at(coral_2012_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Jaap_Reef_merge <- merge(coral_2012_Jaap_Reef_coral,coral_2012_Jaap_Reef_macro)
coral_2012_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2012_Carysfort_Shallow <- filter(coral_2012, sitename == "Carysfort Shallow")

coral_2012_Carysfort_Shallow_macro <- summarise_at(coral_2012_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Carysfort_Shallow_coral <- summarise_at(coral_2012_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Carysfort_Shallow_merge <- merge(coral_2012_Carysfort_Shallow_coral,coral_2012_Carysfort_Shallow_macro)
coral_2012_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2012_Grecian_Rocks <- filter(coral_2012, sitename == "Grecian Rocks")

coral_2012_Grecian_Rocks_macro <- summarise_at(coral_2012_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Grecian_Rocks_coral <- summarise_at(coral_2012_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Grecian_Rocks_merge <- merge(coral_2012_Grecian_Rocks_coral,coral_2012_Grecian_Rocks_macro)
coral_2012_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2012_Molasses_Shallow <- filter(coral_2012, sitename == "Molasses Shallow")

coral_2012_Molasses_Shallow_macro <- summarise_at(coral_2012_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Molasses_Shallow_coral <- summarise_at(coral_2012_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Molasses_Shallow_merge <- merge(coral_2012_Molasses_Shallow_coral,coral_2012_Molasses_Shallow_macro)
coral_2012_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2012_Conch_Shallow <- filter(coral_2012, sitename == "Conch Shallow")

coral_2012_Conch_Shallow_macro <- summarise_at(coral_2012_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Conch_Shallow_coral <- summarise_at(coral_2012_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Conch_Shallow_merge <- merge(coral_2012_Conch_Shallow_coral,coral_2012_Conch_Shallow_macro)
coral_2012_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2012_Alligator_Shallow <- filter(coral_2012, sitename == "Alligator Shallow")

coral_2012_Alligator_Shallow_macro <- summarise_at(coral_2012_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Alligator_Shallow_coral <- summarise_at(coral_2012_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Alligator_Shallow_merge <- merge(coral_2012_Alligator_Shallow_coral,coral_2012_Alligator_Shallow_macro)
coral_2012_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2012_Tennessee_Shallow <- filter(coral_2012, sitename == "Tennessee Shallow")

coral_2012_Tennessee_Shallow_macro <- summarise_at(coral_2012_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Tennessee_Shallow_coral <- summarise_at(coral_2012_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Tennessee_Shallow_merge <- merge(coral_2012_Tennessee_Shallow_coral,coral_2012_Tennessee_Shallow_macro)
coral_2012_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2012_Sombrero_Shallow <- filter(coral_2012, sitename == "Sombrero Shallow")

coral_2012_Sombrero_Shallow_macro <- summarise_at(coral_2012_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Sombrero_Shallow_coral <- summarise_at(coral_2012_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Sombrero_Shallow_merge <- merge(coral_2012_Sombrero_Shallow_coral,coral_2012_Sombrero_Shallow_macro)
coral_2012_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2012_Looe_Key_Shallow <- filter(coral_2012, sitename == "Looe Key Shallow")

coral_2012_Looe_Key_Shallow_macro <- summarise_at(coral_2012_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Looe_Key_Shallow_coral <- summarise_at(coral_2012_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Looe_Key_Shallow_merge <- merge(coral_2012_Looe_Key_Shallow_coral,coral_2012_Looe_Key_Shallow_macro)
coral_2012_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2012_Eastern_Sambo_Shallow <- filter(coral_2012, sitename == "Eastern Sambo Shallow")

coral_2012_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2012_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2012_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Eastern_Sambo_Shallow_merge <- merge(coral_2012_Eastern_Sambo_Shallow_coral,coral_2012_Eastern_Sambo_Shallow_macro)
coral_2012_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2012_Western_Sambo_Shallow <- filter(coral_2012, sitename == "Western Sambo Shallow")

coral_2012_Western_Sambo_Shallow_macro <- summarise_at(coral_2012_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Western_Sambo_Shallow_coral <- summarise_at(coral_2012_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Western_Sambo_Shallow_merge <- merge(coral_2012_Western_Sambo_Shallow_coral,coral_2012_Western_Sambo_Shallow_macro)
coral_2012_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2012_Rock_Key_Shallow <- filter(coral_2012, sitename == "Rock Key Shallow")

coral_2012_Rock_Key_Shallow_macro <- summarise_at(coral_2012_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Rock_Key_Shallow_coral <- summarise_at(coral_2012_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Rock_Key_Shallow_merge <- merge(coral_2012_Rock_Key_Shallow_coral,coral_2012_Rock_Key_Shallow_macro)
coral_2012_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2012_Sand_Key_Shallow <- filter(coral_2012, sitename == "Sand Key Shallow")

coral_2012_Sand_Key_Shallow_macro <- summarise_at(coral_2012_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Sand_Key_Shallow_coral <- summarise_at(coral_2012_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Sand_Key_Shallow_merge <- merge(coral_2012_Sand_Key_Shallow_coral,coral_2012_Sand_Key_Shallow_macro)
coral_2012_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2012_Carysfort_Deep <- filter(coral_2012, sitename == "Carysfort Deep")

coral_2012_Carysfort_Deep_macro <- summarise_at(coral_2012_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Carysfort_Deep_coral <- summarise_at(coral_2012_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Carysfort_Deep_merge <- merge(coral_2012_Carysfort_Deep_coral,coral_2012_Carysfort_Deep_macro)
coral_2012_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2012_Molasses_Deep <- filter(coral_2012, sitename == "Molasses Deep")

coral_2012_Molasses_Deep_macro <- summarise_at(coral_2012_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Molasses_Deep_coral <- summarise_at(coral_2012_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Molasses_Deep_merge <- merge(coral_2012_Molasses_Deep_coral,coral_2012_Molasses_Deep_macro)
coral_2012_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2012_Conch_Deep <- filter(coral_2012, sitename == "Conch Deep")

coral_2012_Conch_Deep_macro <- summarise_at(coral_2012_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Conch_Deep_coral <- summarise_at(coral_2012_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Conch_Deep_merge <- merge(coral_2012_Conch_Deep_coral,coral_2012_Conch_Deep_macro)
coral_2012_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2012_Alligator_Deep <- filter(coral_2012, sitename == "Alligator Deep")

coral_2012_Alligator_Deep_macro <- summarise_at(coral_2012_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Alligator_Deep_coral <- summarise_at(coral_2012_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Alligator_Deep_merge <- merge(coral_2012_Alligator_Deep_coral,coral_2012_Alligator_Deep_macro)
coral_2012_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2012_Tennessee_Deep <- filter(coral_2012, sitename == "Tennessee Deep")

coral_2012_Tennessee_Deep_macro <- summarise_at(coral_2012_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Tennessee_Deep_coral <- summarise_at(coral_2012_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Tennessee_Deep_merge <- merge(coral_2012_Tennessee_Deep_coral,coral_2012_Tennessee_Deep_macro)
coral_2012_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2012_Sombrero_Deep <- filter(coral_2012, sitename == "Sombrero Deep")

coral_2012_Sombrero_Deep_macro <- summarise_at(coral_2012_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Sombrero_Deep_coral <- summarise_at(coral_2012_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Sombrero_Deep_merge <- merge(coral_2012_Sombrero_Deep_coral,coral_2012_Sombrero_Deep_macro)
coral_2012_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2012_Looe_Key_Deep <- filter(coral_2012, sitename == "Looe Key Deep")

coral_2012_Looe_Key_Deep_macro <- summarise_at(coral_2012_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Looe_Key_Deep_coral <- summarise_at(coral_2012_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Looe_Key_Deep_merge <- merge(coral_2012_Looe_Key_Deep_coral,coral_2012_Looe_Key_Deep_macro)
coral_2012_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2012_Eastern_Sambo_Deep <- filter(coral_2012, sitename == "Eastern Sambo Deep")

coral_2012_Eastern_Sambo_Deep_macro <- summarise_at(coral_2012_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Eastern_Sambo_Deep_coral <- summarise_at(coral_2012_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Eastern_Sambo_Deep_merge <- merge(coral_2012_Eastern_Sambo_Deep_coral,coral_2012_Eastern_Sambo_Deep_macro)
coral_2012_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2012_Western_Sambo_Deep <- filter(coral_2012, sitename == "Western Sambo Deep")

coral_2012_Western_Sambo_Deep_macro <- summarise_at(coral_2012_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Western_Sambo_Deep_coral <- summarise_at(coral_2012_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Western_Sambo_Deep_merge <- merge(coral_2012_Western_Sambo_Deep_coral,coral_2012_Western_Sambo_Deep_macro)
coral_2012_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2012_Rock_Key_Deep <- filter(coral_2012, sitename == "Rock Key Deep")

coral_2012_Rock_Key_Deep_macro <- summarise_at(coral_2012_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Rock_Key_Deep_coral <- summarise_at(coral_2012_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Rock_Key_Deep_merge <- merge(coral_2012_Rock_Key_Deep_coral,coral_2012_Rock_Key_Deep_macro)
coral_2012_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2012_Sand_Key_Deep <- filter(coral_2012, sitename == "Sand Key Deep")

coral_2012_Sand_Key_Deep_macro <- summarise_at(coral_2012_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Sand_Key_Deep_coral <- summarise_at(coral_2012_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Sand_Key_Deep_merge <- merge(coral_2012_Sand_Key_Deep_coral,coral_2012_Sand_Key_Deep_macro)
coral_2012_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2012_Bird_Key_Reef <- filter(coral_2012, sitename == "Bird Key Reef")

coral_2012_Bird_Key_Reef_macro <- summarise_at(coral_2012_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Bird_Key_Reef_coral <- summarise_at(coral_2012_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Bird_Key_Reef_merge <- merge(coral_2012_Bird_Key_Reef_coral,coral_2012_Bird_Key_Reef_macro)
coral_2012_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2012_Black_Coral_Rock <- filter(coral_2012, sitename == "Black Coral Rock")

coral_2012_Black_Coral_Rock_macro <- summarise_at(coral_2012_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Black_Coral_Rock_coral <- summarise_at(coral_2012_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Black_Coral_Rock_merge <- merge(coral_2012_Black_Coral_Rock_coral,coral_2012_Black_Coral_Rock_macro)
coral_2012_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2012_White_Shoal <- filter(coral_2012, sitename == "White Shoal")

coral_2012_White_Shoal_macro <- summarise_at(coral_2012_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_White_Shoal_coral <- summarise_at(coral_2012_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2012_White_Shoal_merge <- merge(coral_2012_White_Shoal_coral,coral_2012_White_Shoal_macro)
coral_2012_White_Shoal_merge$sitename <- "White Shoal"



coral_2012_Palm_Beach_1 <- filter(coral_2012, sitename == "Palm Beach 1")

coral_2012_Palm_Beach_1_macro <- summarise_at(coral_2012_Palm_Beach_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Palm_Beach_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Palm_Beach_1_coral <- summarise_at(coral_2012_Palm_Beach_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Palm_Beach_1_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Palm_Beach_1_merge <- merge(coral_2012_Palm_Beach_1_coral,coral_2012_Palm_Beach_1_macro)
coral_2012_Palm_Beach_1_merge$sitename <- "Palm Beach 1"


coral_2012_Palm_Beach_2 <- filter(coral_2012, sitename == "Palm Beach 2")

coral_2012_Palm_Beach_2_macro <- summarise_at(coral_2012_Palm_Beach_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Palm_Beach_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Palm_Beach_2_coral <- summarise_at(coral_2012_Palm_Beach_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Palm_Beach_2_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Palm_Beach_2_merge <- merge(coral_2012_Palm_Beach_2_coral,coral_2012_Palm_Beach_2_macro)
coral_2012_Palm_Beach_2_merge$sitename <- "Palm Beach 2"


coral_2012_Palm_Beach_3 <- filter(coral_2012, sitename == "Palm Beach 3")

coral_2012_Palm_Beach_3_macro <- summarise_at(coral_2012_Palm_Beach_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Palm_Beach_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Palm_Beach_3_coral <- summarise_at(coral_2012_Palm_Beach_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Palm_Beach_3_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Palm_Beach_3_merge <- merge(coral_2012_Palm_Beach_3_coral,coral_2012_Palm_Beach_3_macro)
coral_2012_Palm_Beach_3_merge$sitename <- "Palm Beach 3"



coral_2012_Palm_Beach_4 <- filter(coral_2012, sitename == "Palm Beach 4")

coral_2012_Palm_Beach_4_macro <- summarise_at(coral_2012_Palm_Beach_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Palm_Beach_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Palm_Beach_4_coral <- summarise_at(coral_2012_Palm_Beach_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Palm_Beach_4_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Palm_Beach_4_merge <- merge(coral_2012_Palm_Beach_4_coral,coral_2012_Palm_Beach_4_macro)
coral_2012_Palm_Beach_4_merge$sitename <- "Palm Beach 4"



coral_2012_Palm_Beach_5 <- filter(coral_2012, sitename == "Palm Beach 5")

coral_2012_Palm_Beach_5_macro <- summarise_at(coral_2012_Palm_Beach_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Palm_Beach_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Palm_Beach_5_coral <- summarise_at(coral_2012_Palm_Beach_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Palm_Beach_5_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Palm_Beach_5_merge <- merge(coral_2012_Palm_Beach_5_coral,coral_2012_Palm_Beach_5_macro)
coral_2012_Palm_Beach_5_merge$sitename <- "Palm Beach 5"



coral_2012_Broward_County_1 <- filter(coral_2012, sitename == "Broward County 1")

coral_2012_Broward_County_1_macro <- summarise_at(coral_2012_Broward_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Broward_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Broward_County_1_coral <- summarise_at(coral_2012_Broward_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Broward_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Broward_County_1_merge <- merge(coral_2012_Broward_County_1_coral,coral_2012_Broward_County_1_macro)
coral_2012_Broward_County_1_merge$sitename <- "Broward County 1"


coral_2012_Broward_County_2 <- filter(coral_2012, sitename == "Broward County 2")

coral_2012_Broward_County_2_macro <- summarise_at(coral_2012_Broward_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Broward_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Broward_County_2_coral <- summarise_at(coral_2012_Broward_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Broward_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Broward_County_2_merge <- merge(coral_2012_Broward_County_2_coral,coral_2012_Broward_County_2_macro)
coral_2012_Broward_County_2_merge$sitename <- "Broward County 2"


coral_2012_Broward_County_3 <- filter(coral_2012, sitename == "Broward County 3")

coral_2012_Broward_County_3_macro <- summarise_at(coral_2012_Broward_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Broward_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Broward_County_3_coral <- summarise_at(coral_2012_Broward_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Broward_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Broward_County_3_merge <- merge(coral_2012_Broward_County_3_coral,coral_2012_Broward_County_3_macro)
coral_2012_Broward_County_3_merge$sitename <- "Broward County 3"


coral_2012_Broward_County_4 <- filter(coral_2012, sitename == "Broward County 4")

coral_2012_Broward_County_4_macro <- summarise_at(coral_2012_Broward_County_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Broward_County_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Broward_County_4_coral <- summarise_at(coral_2012_Broward_County_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Broward_County_4_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Broward_County_4_merge <- merge(coral_2012_Broward_County_4_coral,coral_2012_Broward_County_4_macro)
coral_2012_Broward_County_4_merge$sitename <- "Broward County 4"


coral_2012_Broward_County_5 <- filter(coral_2012, sitename == "Broward County 5")

coral_2012_Broward_County_5_macro <- summarise_at(coral_2012_Broward_County_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Broward_County_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Broward_County_5_coral <- summarise_at(coral_2012_Broward_County_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Broward_County_5_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Broward_County_5_merge <- merge(coral_2012_Broward_County_5_coral,coral_2012_Broward_County_5_macro)
coral_2012_Broward_County_5_merge$sitename <- "Broward County 5"


coral_2012_Broward_County_6 <- filter(coral_2012, sitename == "Broward County 6")

coral_2012_Broward_County_6_macro <- summarise_at(coral_2012_Broward_County_6,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Broward_County_6_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Broward_County_6_coral <- summarise_at(coral_2012_Broward_County_6,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Broward_County_6_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Broward_County_6_merge <- merge(coral_2012_Broward_County_6_coral,coral_2012_Broward_County_6_macro)
coral_2012_Broward_County_6_merge$sitename <- "Broward County 6"




coral_2012_Broward_County_A <- filter(coral_2012, sitename == "Broward County A")

coral_2012_Broward_County_A_macro <- summarise_at(coral_2012_Broward_County_A,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Broward_County_A_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Broward_County_A_coral <- summarise_at(coral_2012_Broward_County_A,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Broward_County_A_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Broward_County_A_merge <- merge(coral_2012_Broward_County_A_coral,coral_2012_Broward_County_A_macro)
coral_2012_Broward_County_A_merge$sitename <- "Broward County A"



coral_2012_Dade_County_1 <- filter(coral_2012, sitename == "Dade County 1")

coral_2012_Dade_County_1_macro <- summarise_at(coral_2012_Dade_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dade_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Dade_County_1_coral <- summarise_at(coral_2012_Dade_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dade_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Dade_County_1_merge <- merge(coral_2012_Dade_County_1_coral,coral_2012_Dade_County_1_macro)
coral_2012_Dade_County_1_merge$sitename <- "Dade County 1"


coral_2012_Dade_County_2 <- filter(coral_2012, sitename == "Dade County 2")

coral_2012_Dade_County_2_macro <- summarise_at(coral_2012_Dade_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dade_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Dade_County_2_coral <- summarise_at(coral_2012_Dade_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dade_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Dade_County_2_merge <- merge(coral_2012_Dade_County_2_coral,coral_2012_Dade_County_2_macro)
coral_2012_Dade_County_2_merge$sitename <- "Dade County 2"


coral_2012_Dade_County_3 <- filter(coral_2012, sitename == "Dade County 3")

coral_2012_Dade_County_3_macro <- summarise_at(coral_2012_Dade_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dade_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Dade_County_3_coral <- summarise_at(coral_2012_Dade_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dade_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Dade_County_3_merge <- merge(coral_2012_Dade_County_3_coral,coral_2012_Dade_County_3_macro)
coral_2012_Dade_County_3_merge$sitename <- "Dade County 3"


coral_2012_Dade_County_4 <- filter(coral_2012, sitename == "Dade County 4")

coral_2012_Dade_County_4_macro <- summarise_at(coral_2012_Dade_County_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dade_County_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Dade_County_4_coral <- summarise_at(coral_2012_Dade_County_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dade_County_4_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Dade_County_4_merge <- merge(coral_2012_Dade_County_4_coral,coral_2012_Dade_County_4_macro)
coral_2012_Dade_County_4_merge$sitename <- "Dade County 4"


coral_2012_Dade_County_5 <- filter(coral_2012, sitename == "Dade County 5")

coral_2012_Dade_County_5_macro <- summarise_at(coral_2012_Dade_County_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dade_County_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Dade_County_5_coral <- summarise_at(coral_2012_Dade_County_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dade_County_5_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Dade_County_5_merge <- merge(coral_2012_Dade_County_5_coral,coral_2012_Dade_County_5_macro)
coral_2012_Dade_County_5_merge$sitename <- "Dade County 5"


coral_2012_Dade_County_6 <- filter(coral_2012, sitename == "Dade County 6")

coral_2012_Dade_County_6_macro <- summarise_at(coral_2012_Dade_County_6,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dade_County_6_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Dade_County_6_coral <- summarise_at(coral_2012_Dade_County_6,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dade_County_6_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Dade_County_6_merge <- merge(coral_2012_Dade_County_6_coral,coral_2012_Dade_County_6_macro)
coral_2012_Dade_County_6_merge$sitename <- "Dade County 6"


coral_2012_Dade_County_7 <- filter(coral_2012, sitename == "Dade County 7")

coral_2012_Dade_County_7_macro <- summarise_at(coral_2012_Dade_County_7,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dade_County_7_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Dade_County_7_coral <- summarise_at(coral_2012_Dade_County_7,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dade_County_7_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Dade_County_7_merge <- merge(coral_2012_Dade_County_7_coral,coral_2012_Dade_County_7_macro)
coral_2012_Dade_County_7_merge$sitename <- "Dade County 7"


coral_2012_Dade_County_8 <- filter(coral_2012, sitename == "Dade County 8")

coral_2012_Dade_County_8_macro <- summarise_at(coral_2012_Dade_County_8,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dade_County_8_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Dade_County_8_coral <- summarise_at(coral_2012_Dade_County_8,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Dade_County_8_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Dade_County_8_merge <- merge(coral_2012_Dade_County_8_coral,coral_2012_Dade_County_8_macro)
coral_2012_Dade_County_8_merge$sitename <- "Dade County 8"



coral_2012_Mayers_Peak <- filter(coral_2012, sitename == "Mayer's Peak")

coral_2012_Mayers_Peak_macro <- summarise_at(coral_2012_Mayers_Peak,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Mayers_Peak_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Mayers_Peak_coral <- summarise_at(coral_2012_Mayers_Peak,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Mayers_Peak_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Mayers_Peak_merge <- merge(coral_2012_Mayers_Peak_coral,coral_2012_Mayers_Peak_macro)
coral_2012_Mayers_Peak_merge$sitename <- "Mayer's Peak"


coral_2012_Temptation_Rock <- filter(coral_2012, sitename == "Temptation Rock")

coral_2012_Temptation_Rock_macro <- summarise_at(coral_2012_Temptation_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Temptation_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Temptation_Rock_coral <- summarise_at(coral_2012_Temptation_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Temptation_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Temptation_Rock_merge <- merge(coral_2012_Temptation_Rock_coral,coral_2012_Temptation_Rock_macro)
coral_2012_Temptation_Rock_merge$sitename <- "Temptation Rock"


coral_2012_Palmata_Patch <- filter(coral_2012, sitename == "Palmata Patch")

coral_2012_Palmata_Patch_macro <- summarise_at(coral_2012_Palmata_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Palmata_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Palmata_Patch_coral <- summarise_at(coral_2012_Palmata_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Palmata_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Palmata_Patch_merge <- merge(coral_2012_Palmata_Patch_coral,coral_2012_Palmata_Patch_macro)
coral_2012_Palmata_Patch_merge$sitename <- "Palmata Patch"


coral_2012_Prolifera_Patch <- filter(coral_2012, sitename == "Prolifera Patch")

coral_2012_Prolifera_Patch_macro <- summarise_at(coral_2012_Prolifera_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Prolifera_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Prolifera_Patch_coral <- summarise_at(coral_2012_Prolifera_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Prolifera_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Prolifera_Patch_merge <- merge(coral_2012_Prolifera_Patch_coral,coral_2012_Prolifera_Patch_macro)
coral_2012_Prolifera_Patch_merge$sitename <- "Prolifera Patch"


coral_2012_Loggerhead_Patch <- filter(coral_2012, sitename == "Loggerhead Patch")

coral_2012_Loggerhead_Patch_macro <- summarise_at(coral_2012_Loggerhead_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Loggerhead_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Loggerhead_Patch_coral <- summarise_at(coral_2012_Loggerhead_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Loggerhead_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Loggerhead_Patch_merge <- merge(coral_2012_Loggerhead_Patch_coral,coral_2012_Loggerhead_Patch_macro)
coral_2012_Loggerhead_Patch_merge$sitename <- "Loggerhead Patch"


coral_2012_Martin_County_1 <- filter(coral_2012, sitename == "Martin County 1")

coral_2012_Martin_County_1_macro <- summarise_at(coral_2012_Martin_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Martin_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Martin_County_1_coral <- summarise_at(coral_2012_Martin_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Martin_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Martin_County_1_merge <- merge(coral_2012_Martin_County_1_coral,coral_2012_Martin_County_1_macro)
coral_2012_Martin_County_1_merge$sitename <- "Martin County 1"


coral_2012_Martin_County_2 <- filter(coral_2012, sitename == "Martin County 2")

coral_2012_Martin_County_2_macro <- summarise_at(coral_2012_Martin_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Martin_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Martin_County_2_coral <- summarise_at(coral_2012_Martin_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Martin_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Martin_County_2_merge <- merge(coral_2012_Martin_County_2_coral,coral_2012_Martin_County_2_macro)
coral_2012_Martin_County_2_merge$sitename <- "Martin County 2"


coral_2012_Wonderland <- filter(coral_2012, sitename == "Wonderland")

coral_2012_Wonderland_macro <- summarise_at(coral_2012_Wonderland,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Wonderland_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Wonderland_coral <- summarise_at(coral_2012_Wonderland,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Wonderland_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Wonderland_merge <- merge(coral_2012_Wonderland_coral,coral_2012_Wonderland_macro)
coral_2012_Wonderland_merge$sitename <- "Wonderland"


coral_2012_Red_Dun_Reef <- filter(coral_2012, sitename == "Red Dun Reef")

coral_2012_Red_Dun_Reef_macro <- summarise_at(coral_2012_Red_Dun_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Red_Dun_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Red_Dun_Reef_coral <- summarise_at(coral_2012_Red_Dun_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Red_Dun_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Red_Dun_Reef_merge <- merge(coral_2012_Red_Dun_Reef_coral,coral_2012_Red_Dun_Reef_macro)
coral_2012_Red_Dun_Reef_merge$sitename <- "Red Dun Reef"


coral_2012_Rawa_Reef <- filter(coral_2012, sitename == "Rawa Reef")

coral_2012_Rawa_Reef_macro <- summarise_at(coral_2012_Rawa_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Rawa_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Rawa_Reef_coral <- summarise_at(coral_2012_Rawa_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Rawa_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Rawa_Reef_merge <- merge(coral_2012_Rawa_Reef_coral,coral_2012_Rawa_Reef_macro)
coral_2012_Rawa_Reef_merge$sitename <- "Rawa Reef"


coral_2012_Thor <- filter(coral_2012, sitename == "Thor")

coral_2012_Thor_macro <- summarise_at(coral_2012_Thor,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Thor_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Thor_coral <- summarise_at(coral_2012_Thor,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Thor_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Thor_merge <- merge(coral_2012_Thor_coral,coral_2012_Thor_macro)
coral_2012_Thor_merge$sitename <- "Thor"


coral_2012_Burr_Fish <- filter(coral_2012, sitename == "Burr Fish")

coral_2012_Burr_Fish_macro <- summarise_at(coral_2012_Burr_Fish,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Burr_Fish_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Burr_Fish_coral <- summarise_at(coral_2012_Burr_Fish,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Burr_Fish_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Burr_Fish_merge <- merge(coral_2012_Burr_Fish_coral,coral_2012_Burr_Fish_macro)
coral_2012_Burr_Fish_merge$sitename <- "Burr Fish"


coral_2012_Two_Patches <- filter(coral_2012, sitename == "Two Patches")

coral_2012_Two_Patches_macro <- summarise_at(coral_2012_Two_Patches,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Two_Patches_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Two_Patches_coral <- summarise_at(coral_2012_Two_Patches,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Two_Patches_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Two_Patches_merge <- merge(coral_2012_Two_Patches_coral,coral_2012_Two_Patches_macro)
coral_2012_Two_Patches_merge$sitename <- "Two Patches"


coral_2012_The_Maze <- filter(coral_2012, sitename == "The Maze")

coral_2012_The_Maze_macro <- summarise_at(coral_2012_The_Maze,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_The_Maze_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_The_Maze_coral <- summarise_at(coral_2012_The_Maze,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_The_Maze_coral) <- c("Coral_Average","Coral_SD")

coral_2012_The_Maze_merge <- merge(coral_2012_The_Maze_coral,coral_2012_The_Maze_macro)
coral_2012_The_Maze_merge$sitename <- "The Maze"


coral_2012_Davis_Rock <- filter(coral_2012, sitename == "Davis Rock")

coral_2012_Davis_Rock_macro <- summarise_at(coral_2012_Davis_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Davis_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Davis_Rock_coral <- summarise_at(coral_2012_Davis_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Davis_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Davis_Rock_merge <- merge(coral_2012_Davis_Rock_coral,coral_2012_Davis_Rock_macro)
coral_2012_Davis_Rock_merge$sitename <- "Davis Rock"


coral_2012_Texas_Rock <- filter(coral_2012, sitename == "Texas Rock")

coral_2012_Texas_Rock_macro <- summarise_at(coral_2012_Texas_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Texas_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2012_Texas_Rock_coral <- summarise_at(coral_2012_Texas_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2012_Texas_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2012_Texas_Rock_merge <- merge(coral_2012_Texas_Rock_coral,coral_2012_Texas_Rock_macro)
coral_2012_Texas_Rock_merge$sitename <- "Texas Rock"


coral_2012_merged <- rbind(coral_2012_Content_Keys_merge,coral_2012_Turtle_merge,coral_2012_Jaap_Reef_merge,coral_2012_Carysfort_Shallow_merge,
                           coral_2012_Grecian_Rocks_merge,coral_2012_Molasses_Shallow_merge,coral_2012_Conch_Shallow_merge,
                           coral_2012_Alligator_Shallow_merge,coral_2012_Tennessee_Shallow_merge,coral_2012_Sombrero_Shallow_merge,
                           coral_2012_Looe_Key_Shallow_merge,coral_2012_Eastern_Sambo_Shallow_merge,coral_2012_Western_Sambo_Shallow_merge,
                           coral_2012_Rock_Key_Shallow_merge,coral_2012_Sand_Key_Shallow_merge,coral_2012_Carysfort_Deep_merge,
                           coral_2012_Molasses_Deep_merge,coral_2012_Conch_Deep_merge,coral_2012_Alligator_Deep_merge,
                           coral_2012_Tennessee_Deep_merge,coral_2012_Sombrero_Deep_merge,coral_2012_Looe_Key_Deep_merge,
                           coral_2012_Eastern_Sambo_Deep_merge,coral_2012_Western_Sambo_Deep_merge,coral_2012_Rock_Key_Deep_merge,
                           coral_2012_Sand_Key_Deep_merge,coral_2012_Bird_Key_Reef_merge,coral_2012_Black_Coral_Rock_merge,
                           coral_2012_White_Shoal_merge,coral_2012_Palm_Beach_1_merge,coral_2012_Palm_Beach_2_merge,
                           coral_2012_Palm_Beach_3_merge,coral_2012_Broward_County_1_merge,coral_2012_Broward_County_2_merge,
                           coral_2012_Broward_County_3_merge,coral_2012_Broward_County_A_merge,coral_2012_Dade_County_1_merge,
                           coral_2012_Dade_County_2_merge,coral_2012_Dade_County_3_merge,coral_2012_Mayers_Peak_merge,
                           coral_2012_Temptation_Rock_merge,coral_2012_Palmata_Patch_merge,coral_2012_Prolifera_Patch_merge,
                           coral_2012_Loggerhead_Patch_merge,coral_2012_Martin_County_1_merge,coral_2012_Martin_County_2_merge,
                           coral_2012_Two_Patches_merge,coral_2012_Dade_County_4_merge,coral_2012_Dade_County_5_merge,coral_2012_Dade_County_6_merge,
                           coral_2012_Dade_County_7_merge,coral_2012_Dade_County_8_merge,
                           coral_2012_Broward_County_4_merge,coral_2012_Broward_County_5_merge,coral_2012_Broward_County_6_merge,
                           coral_2012_Palm_Beach_4_merge,coral_2012_Palm_Beach_5_merge,coral_2012_Porter_Patch_merge,
                           coral_2012_Admiral_merge,coral_2012_West_Turtle_Shoal_merge,coral_2012_Dustan_Rocks_merge,
                           coral_2012_West_Washer_Women_merge,coral_2012_Western_Head_merge,coral_2012_Cliff_Green_merge,
                           coral_2012_Smith_Shoal_merge)


coral_2012_merged$Year <- "2012"



coral_2013 <- import("2013_all.xlsx")
coral_2013$Sample_Year <- "2013"
coral_2013 <- select(coral_2013, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2012 <- unique(coral_2012$sitename)
view(unique_2012)
unique_2013 <- unique(coral_2013$sitename)
view(unique_2013)






# coral_2013_Rattlesnake <- filter(coral_2013, sitename == "Rattlesnake")
# 
# coral_2013_Rattlesnake_macro <- summarise_at(coral_2013_Rattlesnake,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2013_Rattlesnake_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2013_Rattlesnake_coral <- summarise_at(coral_2013_Rattlesnake,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2013_Rattlesnake_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2013_Rattlesnake_merge <- merge(coral_2013_Rattlesnake_coral,coral_2013_Rattlesnake_macro)
# coral_2013_Rattlesnake_merge$sitename <- "Rattlesnake"
# 
# 
# 
# 
# coral_2013_El_Radabob <- filter(coral_2013, sitename == "El Radabob")
# 
# coral_2013_El_Radabob_macro <- summarise_at(coral_2013_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2013_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2013_El_Radabob_coral <- summarise_at(coral_2013_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2013_El_Radabob_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2013_El_Radabob_merge <- merge(coral_2013_El_Radabob_coral,coral_2013_El_Radabob_macro)
# coral_2013_El_Radabob_merge$sitename <- "El Radabob"
# 
# 
# coral_2013_Dove_Key <- filter(coral_2013, sitename == "Dove Key")
# 
# coral_2013_Dove_Key_macro <- summarise_at(coral_2013_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2013_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2013_Dove_Key_coral <- summarise_at(coral_2013_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2013_Dove_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2013_Dove_Key_merge <- merge(coral_2013_Dove_Key_coral,coral_2013_Dove_Key_macro)
# coral_2013_Dove_Key_merge$sitename <- "Dove Key"
# 
# 
# coral_2013_Long_Key <- filter(coral_2013, sitename == "Long Key")
# 
# coral_2013_Long_Key_macro <- summarise_at(coral_2013_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2013_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2013_Long_Key_coral <- summarise_at(coral_2013_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2013_Long_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2013_Long_Key_merge <- merge(coral_2013_Long_Key_coral,coral_2013_Long_Key_macro)
# coral_2013_Long_Key_merge$sitename <- "Long Key"
# 
# 
# 
# coral_2013_Moser_Channel <- filter(coral_2013, sitename == "Moser Channel")
# 
# coral_2013_Moser_Channel_macro <- summarise_at(coral_2013_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2013_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2013_Moser_Channel_coral <- summarise_at(coral_2013_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2013_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2013_Moser_Channel_merge <- merge(coral_2013_Moser_Channel_coral,coral_2013_Moser_Channel_macro)
# coral_2013_Moser_Channel_merge$sitename <- "Moser Channel"
# 
# 
# coral_2013_Molasses_Keys <- filter(coral_2013, sitename == "Molasses Keys")
# 
# coral_2013_Molasses_Keys_macro <- summarise_at(coral_2013_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2013_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2013_Molasses_Keys_coral <- summarise_at(coral_2013_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2013_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2013_Molasses_Keys_merge <- merge(coral_2013_Molasses_Keys_coral,coral_2013_Molasses_Keys_macro)
# coral_2013_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2013_Content_Keys <- filter(coral_2013, sitename == "Content Keys")

coral_2013_Content_Keys_macro <- summarise_at(coral_2013_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Content_Keys_coral <- summarise_at(coral_2013_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Content_Keys_merge <- merge(coral_2013_Content_Keys_coral,coral_2013_Content_Keys_macro)
coral_2013_Content_Keys_merge$sitename <- "Content Keys"


coral_2013_Turtle <- filter(coral_2013, sitename == "Turtle")

coral_2013_Turtle_macro <- summarise_at(coral_2013_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Turtle_coral <- summarise_at(coral_2013_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Turtle_merge <- merge(coral_2013_Turtle_coral,coral_2013_Turtle_macro)
coral_2013_Turtle_merge$sitename <- "Turtle"


coral_2013_Porter_Patch <- filter(coral_2013, sitename == "Porter Patch")

coral_2013_Porter_Patch_macro <- summarise_at(coral_2013_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Porter_Patch_coral <- summarise_at(coral_2013_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Porter_Patch_merge <- merge(coral_2013_Porter_Patch_coral,coral_2013_Porter_Patch_macro)
coral_2013_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2013_Admiral <- filter(coral_2013, sitename == "Admiral")

coral_2013_Admiral_macro <- summarise_at(coral_2013_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Admiral_coral <- summarise_at(coral_2013_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Admiral_merge <- merge(coral_2013_Admiral_coral,coral_2013_Admiral_macro)
coral_2013_Admiral_merge$sitename <- "Admiral"


coral_2013_West_Turtle_Shoal <- filter(coral_2013, sitename == "West Turtle Shoal")

coral_2013_West_Turtle_Shoal_macro <- summarise_at(coral_2013_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_West_Turtle_Shoal_coral <- summarise_at(coral_2013_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2013_West_Turtle_Shoal_merge <- merge(coral_2013_West_Turtle_Shoal_coral,coral_2013_West_Turtle_Shoal_macro)
coral_2013_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2013_Dustan_Rocks <- filter(coral_2013, sitename == "Dustan Rocks")

coral_2013_Dustan_Rocks_macro <- summarise_at(coral_2013_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Dustan_Rocks_coral <- summarise_at(coral_2013_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Dustan_Rocks_merge <- merge(coral_2013_Dustan_Rocks_coral,coral_2013_Dustan_Rocks_macro)
coral_2013_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2013_West_Washer_Women <- filter(coral_2013, sitename == "West Washer Women")

coral_2013_West_Washer_Women_macro <- summarise_at(coral_2013_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_West_Washer_Women_coral <- summarise_at(coral_2013_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2013_West_Washer_Women_merge <- merge(coral_2013_West_Washer_Women_coral,coral_2013_West_Washer_Women_macro)
coral_2013_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2013_Western_Head <- filter(coral_2013, sitename == "Western Head")

coral_2013_Western_Head_macro <- summarise_at(coral_2013_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Western_Head_coral <- summarise_at(coral_2013_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Western_Head_merge <- merge(coral_2013_Western_Head_coral,coral_2013_Western_Head_macro)
coral_2013_Western_Head_merge$sitename <- "Western Head"


coral_2013_Cliff_Green <- filter(coral_2013, sitename == "Cliff Green")

coral_2013_Cliff_Green_macro <- summarise_at(coral_2013_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Cliff_Green_coral <- summarise_at(coral_2013_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Cliff_Green_merge <- merge(coral_2013_Cliff_Green_coral,coral_2013_Cliff_Green_macro)
coral_2013_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2013_Smith_Shoal <- filter(coral_2013, sitename == "Smith Shoal")

coral_2013_Smith_Shoal_macro <- summarise_at(coral_2013_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Smith_Shoal_coral <- summarise_at(coral_2013_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Smith_Shoal_merge <- merge(coral_2013_Smith_Shoal_coral,coral_2013_Smith_Shoal_macro)
coral_2013_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2013_Jaap_Reef <- filter(coral_2013, sitename == "Jaap Reef")

coral_2013_Jaap_Reef_macro <- summarise_at(coral_2013_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Jaap_Reef_coral <- summarise_at(coral_2013_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Jaap_Reef_merge <- merge(coral_2013_Jaap_Reef_coral,coral_2013_Jaap_Reef_macro)
coral_2013_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2013_Carysfort_Shallow <- filter(coral_2013, sitename == "Carysfort Shallow")

coral_2013_Carysfort_Shallow_macro <- summarise_at(coral_2013_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Carysfort_Shallow_coral <- summarise_at(coral_2013_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Carysfort_Shallow_merge <- merge(coral_2013_Carysfort_Shallow_coral,coral_2013_Carysfort_Shallow_macro)
coral_2013_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2013_Grecian_Rocks <- filter(coral_2013, sitename == "Grecian Rocks")

coral_2013_Grecian_Rocks_macro <- summarise_at(coral_2013_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Grecian_Rocks_coral <- summarise_at(coral_2013_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Grecian_Rocks_merge <- merge(coral_2013_Grecian_Rocks_coral,coral_2013_Grecian_Rocks_macro)
coral_2013_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2013_Molasses_Shallow <- filter(coral_2013, sitename == "Molasses Shallow")

coral_2013_Molasses_Shallow_macro <- summarise_at(coral_2013_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Molasses_Shallow_coral <- summarise_at(coral_2013_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Molasses_Shallow_merge <- merge(coral_2013_Molasses_Shallow_coral,coral_2013_Molasses_Shallow_macro)
coral_2013_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2013_Conch_Shallow <- filter(coral_2013, sitename == "Conch Shallow")

coral_2013_Conch_Shallow_macro <- summarise_at(coral_2013_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Conch_Shallow_coral <- summarise_at(coral_2013_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Conch_Shallow_merge <- merge(coral_2013_Conch_Shallow_coral,coral_2013_Conch_Shallow_macro)
coral_2013_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2013_Alligator_Shallow <- filter(coral_2013, sitename == "Alligator Shallow")

coral_2013_Alligator_Shallow_macro <- summarise_at(coral_2013_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Alligator_Shallow_coral <- summarise_at(coral_2013_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Alligator_Shallow_merge <- merge(coral_2013_Alligator_Shallow_coral,coral_2013_Alligator_Shallow_macro)
coral_2013_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2013_Tennessee_Shallow <- filter(coral_2013, sitename == "Tennessee Shallow")

coral_2013_Tennessee_Shallow_macro <- summarise_at(coral_2013_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Tennessee_Shallow_coral <- summarise_at(coral_2013_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Tennessee_Shallow_merge <- merge(coral_2013_Tennessee_Shallow_coral,coral_2013_Tennessee_Shallow_macro)
coral_2013_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2013_Sombrero_Shallow <- filter(coral_2013, sitename == "Sombrero Shallow")

coral_2013_Sombrero_Shallow_macro <- summarise_at(coral_2013_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Sombrero_Shallow_coral <- summarise_at(coral_2013_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Sombrero_Shallow_merge <- merge(coral_2013_Sombrero_Shallow_coral,coral_2013_Sombrero_Shallow_macro)
coral_2013_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2013_Looe_Key_Shallow <- filter(coral_2013, sitename == "Looe Key Shallow")

coral_2013_Looe_Key_Shallow_macro <- summarise_at(coral_2013_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Looe_Key_Shallow_coral <- summarise_at(coral_2013_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Looe_Key_Shallow_merge <- merge(coral_2013_Looe_Key_Shallow_coral,coral_2013_Looe_Key_Shallow_macro)
coral_2013_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2013_Eastern_Sambo_Shallow <- filter(coral_2013, sitename == "Eastern Sambo Shallow")

coral_2013_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2013_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2013_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Eastern_Sambo_Shallow_merge <- merge(coral_2013_Eastern_Sambo_Shallow_coral,coral_2013_Eastern_Sambo_Shallow_macro)
coral_2013_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2013_Western_Sambo_Shallow <- filter(coral_2013, sitename == "Western Sambo Shallow")

coral_2013_Western_Sambo_Shallow_macro <- summarise_at(coral_2013_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Western_Sambo_Shallow_coral <- summarise_at(coral_2013_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Western_Sambo_Shallow_merge <- merge(coral_2013_Western_Sambo_Shallow_coral,coral_2013_Western_Sambo_Shallow_macro)
coral_2013_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2013_Rock_Key_Shallow <- filter(coral_2013, sitename == "Rock Key Shallow")

coral_2013_Rock_Key_Shallow_macro <- summarise_at(coral_2013_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Rock_Key_Shallow_coral <- summarise_at(coral_2013_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Rock_Key_Shallow_merge <- merge(coral_2013_Rock_Key_Shallow_coral,coral_2013_Rock_Key_Shallow_macro)
coral_2013_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2013_Sand_Key_Shallow <- filter(coral_2013, sitename == "Sand Key Shallow")

coral_2013_Sand_Key_Shallow_macro <- summarise_at(coral_2013_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Sand_Key_Shallow_coral <- summarise_at(coral_2013_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Sand_Key_Shallow_merge <- merge(coral_2013_Sand_Key_Shallow_coral,coral_2013_Sand_Key_Shallow_macro)
coral_2013_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2013_Carysfort_Deep <- filter(coral_2013, sitename == "Carysfort Deep")

coral_2013_Carysfort_Deep_macro <- summarise_at(coral_2013_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Carysfort_Deep_coral <- summarise_at(coral_2013_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Carysfort_Deep_merge <- merge(coral_2013_Carysfort_Deep_coral,coral_2013_Carysfort_Deep_macro)
coral_2013_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2013_Molasses_Deep <- filter(coral_2013, sitename == "Molasses Deep")

coral_2013_Molasses_Deep_macro <- summarise_at(coral_2013_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Molasses_Deep_coral <- summarise_at(coral_2013_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Molasses_Deep_merge <- merge(coral_2013_Molasses_Deep_coral,coral_2013_Molasses_Deep_macro)
coral_2013_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2013_Conch_Deep <- filter(coral_2013, sitename == "Conch Deep")

coral_2013_Conch_Deep_macro <- summarise_at(coral_2013_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Conch_Deep_coral <- summarise_at(coral_2013_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Conch_Deep_merge <- merge(coral_2013_Conch_Deep_coral,coral_2013_Conch_Deep_macro)
coral_2013_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2013_Alligator_Deep <- filter(coral_2013, sitename == "Alligator Deep")

coral_2013_Alligator_Deep_macro <- summarise_at(coral_2013_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Alligator_Deep_coral <- summarise_at(coral_2013_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Alligator_Deep_merge <- merge(coral_2013_Alligator_Deep_coral,coral_2013_Alligator_Deep_macro)
coral_2013_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2013_Tennessee_Deep <- filter(coral_2013, sitename == "Tennessee Deep")

coral_2013_Tennessee_Deep_macro <- summarise_at(coral_2013_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Tennessee_Deep_coral <- summarise_at(coral_2013_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Tennessee_Deep_merge <- merge(coral_2013_Tennessee_Deep_coral,coral_2013_Tennessee_Deep_macro)
coral_2013_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2013_Sombrero_Deep <- filter(coral_2013, sitename == "Sombrero Deep")

coral_2013_Sombrero_Deep_macro <- summarise_at(coral_2013_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Sombrero_Deep_coral <- summarise_at(coral_2013_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Sombrero_Deep_merge <- merge(coral_2013_Sombrero_Deep_coral,coral_2013_Sombrero_Deep_macro)
coral_2013_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2013_Looe_Key_Deep <- filter(coral_2013, sitename == "Looe Key Deep")

coral_2013_Looe_Key_Deep_macro <- summarise_at(coral_2013_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Looe_Key_Deep_coral <- summarise_at(coral_2013_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Looe_Key_Deep_merge <- merge(coral_2013_Looe_Key_Deep_coral,coral_2013_Looe_Key_Deep_macro)
coral_2013_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2013_Eastern_Sambo_Deep <- filter(coral_2013, sitename == "Eastern Sambo Deep")

coral_2013_Eastern_Sambo_Deep_macro <- summarise_at(coral_2013_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Eastern_Sambo_Deep_coral <- summarise_at(coral_2013_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Eastern_Sambo_Deep_merge <- merge(coral_2013_Eastern_Sambo_Deep_coral,coral_2013_Eastern_Sambo_Deep_macro)
coral_2013_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2013_Western_Sambo_Deep <- filter(coral_2013, sitename == "Western Sambo Deep")

coral_2013_Western_Sambo_Deep_macro <- summarise_at(coral_2013_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Western_Sambo_Deep_coral <- summarise_at(coral_2013_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Western_Sambo_Deep_merge <- merge(coral_2013_Western_Sambo_Deep_coral,coral_2013_Western_Sambo_Deep_macro)
coral_2013_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2013_Rock_Key_Deep <- filter(coral_2013, sitename == "Rock Key Deep")

coral_2013_Rock_Key_Deep_macro <- summarise_at(coral_2013_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Rock_Key_Deep_coral <- summarise_at(coral_2013_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Rock_Key_Deep_merge <- merge(coral_2013_Rock_Key_Deep_coral,coral_2013_Rock_Key_Deep_macro)
coral_2013_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2013_Sand_Key_Deep <- filter(coral_2013, sitename == "Sand Key Deep")

coral_2013_Sand_Key_Deep_macro <- summarise_at(coral_2013_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Sand_Key_Deep_coral <- summarise_at(coral_2013_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Sand_Key_Deep_merge <- merge(coral_2013_Sand_Key_Deep_coral,coral_2013_Sand_Key_Deep_macro)
coral_2013_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2013_Bird_Key_Reef <- filter(coral_2013, sitename == "Bird Key Reef")

coral_2013_Bird_Key_Reef_macro <- summarise_at(coral_2013_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Bird_Key_Reef_coral <- summarise_at(coral_2013_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Bird_Key_Reef_merge <- merge(coral_2013_Bird_Key_Reef_coral,coral_2013_Bird_Key_Reef_macro)
coral_2013_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2013_Black_Coral_Rock <- filter(coral_2013, sitename == "Black Coral Rock")

coral_2013_Black_Coral_Rock_macro <- summarise_at(coral_2013_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Black_Coral_Rock_coral <- summarise_at(coral_2013_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Black_Coral_Rock_merge <- merge(coral_2013_Black_Coral_Rock_coral,coral_2013_Black_Coral_Rock_macro)
coral_2013_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2013_White_Shoal <- filter(coral_2013, sitename == "White Shoal")

coral_2013_White_Shoal_macro <- summarise_at(coral_2013_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_White_Shoal_coral <- summarise_at(coral_2013_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2013_White_Shoal_merge <- merge(coral_2013_White_Shoal_coral,coral_2013_White_Shoal_macro)
coral_2013_White_Shoal_merge$sitename <- "White Shoal"



coral_2013_Palm_Beach_1 <- filter(coral_2013, sitename == "Palm Beach 1")

coral_2013_Palm_Beach_1_macro <- summarise_at(coral_2013_Palm_Beach_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Palm_Beach_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Palm_Beach_1_coral <- summarise_at(coral_2013_Palm_Beach_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Palm_Beach_1_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Palm_Beach_1_merge <- merge(coral_2013_Palm_Beach_1_coral,coral_2013_Palm_Beach_1_macro)
coral_2013_Palm_Beach_1_merge$sitename <- "Palm Beach 1"


coral_2013_Palm_Beach_2 <- filter(coral_2013, sitename == "Palm Beach 2")

coral_2013_Palm_Beach_2_macro <- summarise_at(coral_2013_Palm_Beach_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Palm_Beach_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Palm_Beach_2_coral <- summarise_at(coral_2013_Palm_Beach_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Palm_Beach_2_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Palm_Beach_2_merge <- merge(coral_2013_Palm_Beach_2_coral,coral_2013_Palm_Beach_2_macro)
coral_2013_Palm_Beach_2_merge$sitename <- "Palm Beach 2"


coral_2013_Palm_Beach_3 <- filter(coral_2013, sitename == "Palm Beach 3")

coral_2013_Palm_Beach_3_macro <- summarise_at(coral_2013_Palm_Beach_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Palm_Beach_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Palm_Beach_3_coral <- summarise_at(coral_2013_Palm_Beach_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Palm_Beach_3_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Palm_Beach_3_merge <- merge(coral_2013_Palm_Beach_3_coral,coral_2013_Palm_Beach_3_macro)
coral_2013_Palm_Beach_3_merge$sitename <- "Palm Beach 3"



coral_2013_Palm_Beach_4 <- filter(coral_2013, sitename == "Palm Beach 4")

coral_2013_Palm_Beach_4_macro <- summarise_at(coral_2013_Palm_Beach_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Palm_Beach_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Palm_Beach_4_coral <- summarise_at(coral_2013_Palm_Beach_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Palm_Beach_4_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Palm_Beach_4_merge <- merge(coral_2013_Palm_Beach_4_coral,coral_2013_Palm_Beach_4_macro)
coral_2013_Palm_Beach_4_merge$sitename <- "Palm Beach 4"



coral_2013_Palm_Beach_5 <- filter(coral_2013, sitename == "Palm Beach 5")

coral_2013_Palm_Beach_5_macro <- summarise_at(coral_2013_Palm_Beach_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Palm_Beach_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Palm_Beach_5_coral <- summarise_at(coral_2013_Palm_Beach_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Palm_Beach_5_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Palm_Beach_5_merge <- merge(coral_2013_Palm_Beach_5_coral,coral_2013_Palm_Beach_5_macro)
coral_2013_Palm_Beach_5_merge$sitename <- "Palm Beach 5"



coral_2013_Broward_County_1 <- filter(coral_2013, sitename == "Broward County 1")

coral_2013_Broward_County_1_macro <- summarise_at(coral_2013_Broward_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Broward_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Broward_County_1_coral <- summarise_at(coral_2013_Broward_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Broward_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Broward_County_1_merge <- merge(coral_2013_Broward_County_1_coral,coral_2013_Broward_County_1_macro)
coral_2013_Broward_County_1_merge$sitename <- "Broward County 1"


coral_2013_Broward_County_2 <- filter(coral_2013, sitename == "Broward County 2")

coral_2013_Broward_County_2_macro <- summarise_at(coral_2013_Broward_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Broward_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Broward_County_2_coral <- summarise_at(coral_2013_Broward_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Broward_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Broward_County_2_merge <- merge(coral_2013_Broward_County_2_coral,coral_2013_Broward_County_2_macro)
coral_2013_Broward_County_2_merge$sitename <- "Broward County 2"


coral_2013_Broward_County_3 <- filter(coral_2013, sitename == "Broward County 3")

coral_2013_Broward_County_3_macro <- summarise_at(coral_2013_Broward_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Broward_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Broward_County_3_coral <- summarise_at(coral_2013_Broward_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Broward_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Broward_County_3_merge <- merge(coral_2013_Broward_County_3_coral,coral_2013_Broward_County_3_macro)
coral_2013_Broward_County_3_merge$sitename <- "Broward County 3"


coral_2013_Broward_County_4 <- filter(coral_2013, sitename == "Broward County 4")

coral_2013_Broward_County_4_macro <- summarise_at(coral_2013_Broward_County_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Broward_County_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Broward_County_4_coral <- summarise_at(coral_2013_Broward_County_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Broward_County_4_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Broward_County_4_merge <- merge(coral_2013_Broward_County_4_coral,coral_2013_Broward_County_4_macro)
coral_2013_Broward_County_4_merge$sitename <- "Broward County 4"


coral_2013_Broward_County_5 <- filter(coral_2013, sitename == "Broward County 5")

coral_2013_Broward_County_5_macro <- summarise_at(coral_2013_Broward_County_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Broward_County_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Broward_County_5_coral <- summarise_at(coral_2013_Broward_County_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Broward_County_5_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Broward_County_5_merge <- merge(coral_2013_Broward_County_5_coral,coral_2013_Broward_County_5_macro)
coral_2013_Broward_County_5_merge$sitename <- "Broward County 5"


coral_2013_Broward_County_6 <- filter(coral_2013, sitename == "Broward County 6")

coral_2013_Broward_County_6_macro <- summarise_at(coral_2013_Broward_County_6,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Broward_County_6_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Broward_County_6_coral <- summarise_at(coral_2013_Broward_County_6,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Broward_County_6_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Broward_County_6_merge <- merge(coral_2013_Broward_County_6_coral,coral_2013_Broward_County_6_macro)
coral_2013_Broward_County_6_merge$sitename <- "Broward County 6"




coral_2013_Broward_County_A <- filter(coral_2013, sitename == "Broward County A")

coral_2013_Broward_County_A_macro <- summarise_at(coral_2013_Broward_County_A,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Broward_County_A_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Broward_County_A_coral <- summarise_at(coral_2013_Broward_County_A,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Broward_County_A_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Broward_County_A_merge <- merge(coral_2013_Broward_County_A_coral,coral_2013_Broward_County_A_macro)
coral_2013_Broward_County_A_merge$sitename <- "Broward County A"



coral_2013_Dade_County_1 <- filter(coral_2013, sitename == "Dade County 1")

coral_2013_Dade_County_1_macro <- summarise_at(coral_2013_Dade_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dade_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Dade_County_1_coral <- summarise_at(coral_2013_Dade_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dade_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Dade_County_1_merge <- merge(coral_2013_Dade_County_1_coral,coral_2013_Dade_County_1_macro)
coral_2013_Dade_County_1_merge$sitename <- "Dade County 1"


coral_2013_Dade_County_2 <- filter(coral_2013, sitename == "Dade County 2")

coral_2013_Dade_County_2_macro <- summarise_at(coral_2013_Dade_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dade_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Dade_County_2_coral <- summarise_at(coral_2013_Dade_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dade_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Dade_County_2_merge <- merge(coral_2013_Dade_County_2_coral,coral_2013_Dade_County_2_macro)
coral_2013_Dade_County_2_merge$sitename <- "Dade County 2"


coral_2013_Dade_County_3 <- filter(coral_2013, sitename == "Dade County 3")

coral_2013_Dade_County_3_macro <- summarise_at(coral_2013_Dade_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dade_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Dade_County_3_coral <- summarise_at(coral_2013_Dade_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dade_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Dade_County_3_merge <- merge(coral_2013_Dade_County_3_coral,coral_2013_Dade_County_3_macro)
coral_2013_Dade_County_3_merge$sitename <- "Dade County 3"


coral_2013_Dade_County_4 <- filter(coral_2013, sitename == "Dade County 4")

coral_2013_Dade_County_4_macro <- summarise_at(coral_2013_Dade_County_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dade_County_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Dade_County_4_coral <- summarise_at(coral_2013_Dade_County_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dade_County_4_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Dade_County_4_merge <- merge(coral_2013_Dade_County_4_coral,coral_2013_Dade_County_4_macro)
coral_2013_Dade_County_4_merge$sitename <- "Dade County 4"


coral_2013_Dade_County_5 <- filter(coral_2013, sitename == "Dade County 5")

coral_2013_Dade_County_5_macro <- summarise_at(coral_2013_Dade_County_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dade_County_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Dade_County_5_coral <- summarise_at(coral_2013_Dade_County_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dade_County_5_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Dade_County_5_merge <- merge(coral_2013_Dade_County_5_coral,coral_2013_Dade_County_5_macro)
coral_2013_Dade_County_5_merge$sitename <- "Dade County 5"


coral_2013_Dade_County_6 <- filter(coral_2013, sitename == "Dade County 6")

coral_2013_Dade_County_6_macro <- summarise_at(coral_2013_Dade_County_6,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dade_County_6_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Dade_County_6_coral <- summarise_at(coral_2013_Dade_County_6,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dade_County_6_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Dade_County_6_merge <- merge(coral_2013_Dade_County_6_coral,coral_2013_Dade_County_6_macro)
coral_2013_Dade_County_6_merge$sitename <- "Dade County 6"


coral_2013_Dade_County_7 <- filter(coral_2013, sitename == "Dade County 7")

coral_2013_Dade_County_7_macro <- summarise_at(coral_2013_Dade_County_7,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dade_County_7_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Dade_County_7_coral <- summarise_at(coral_2013_Dade_County_7,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dade_County_7_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Dade_County_7_merge <- merge(coral_2013_Dade_County_7_coral,coral_2013_Dade_County_7_macro)
coral_2013_Dade_County_7_merge$sitename <- "Dade County 7"


coral_2013_Dade_County_8 <- filter(coral_2013, sitename == "Dade County 8")

coral_2013_Dade_County_8_macro <- summarise_at(coral_2013_Dade_County_8,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dade_County_8_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Dade_County_8_coral <- summarise_at(coral_2013_Dade_County_8,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Dade_County_8_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Dade_County_8_merge <- merge(coral_2013_Dade_County_8_coral,coral_2013_Dade_County_8_macro)
coral_2013_Dade_County_8_merge$sitename <- "Dade County 8"



coral_2013_Mayers_Peak <- filter(coral_2013, sitename == "Mayer's Peak")

coral_2013_Mayers_Peak_macro <- summarise_at(coral_2013_Mayers_Peak,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Mayers_Peak_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Mayers_Peak_coral <- summarise_at(coral_2013_Mayers_Peak,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Mayers_Peak_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Mayers_Peak_merge <- merge(coral_2013_Mayers_Peak_coral,coral_2013_Mayers_Peak_macro)
coral_2013_Mayers_Peak_merge$sitename <- "Mayer's Peak"


coral_2013_Temptation_Rock <- filter(coral_2013, sitename == "Temptation Rock")

coral_2013_Temptation_Rock_macro <- summarise_at(coral_2013_Temptation_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Temptation_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Temptation_Rock_coral <- summarise_at(coral_2013_Temptation_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Temptation_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Temptation_Rock_merge <- merge(coral_2013_Temptation_Rock_coral,coral_2013_Temptation_Rock_macro)
coral_2013_Temptation_Rock_merge$sitename <- "Temptation Rock"


coral_2013_Palmata_Patch <- filter(coral_2013, sitename == "Palmata Patch")

coral_2013_Palmata_Patch_macro <- summarise_at(coral_2013_Palmata_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Palmata_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Palmata_Patch_coral <- summarise_at(coral_2013_Palmata_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Palmata_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Palmata_Patch_merge <- merge(coral_2013_Palmata_Patch_coral,coral_2013_Palmata_Patch_macro)
coral_2013_Palmata_Patch_merge$sitename <- "Palmata Patch"


coral_2013_Prolifera_Patch <- filter(coral_2013, sitename == "Prolifera Patch")

coral_2013_Prolifera_Patch_macro <- summarise_at(coral_2013_Prolifera_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Prolifera_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Prolifera_Patch_coral <- summarise_at(coral_2013_Prolifera_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Prolifera_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Prolifera_Patch_merge <- merge(coral_2013_Prolifera_Patch_coral,coral_2013_Prolifera_Patch_macro)
coral_2013_Prolifera_Patch_merge$sitename <- "Prolifera Patch"


coral_2013_Loggerhead_Patch <- filter(coral_2013, sitename == "Loggerhead Patch")

coral_2013_Loggerhead_Patch_macro <- summarise_at(coral_2013_Loggerhead_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Loggerhead_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Loggerhead_Patch_coral <- summarise_at(coral_2013_Loggerhead_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Loggerhead_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Loggerhead_Patch_merge <- merge(coral_2013_Loggerhead_Patch_coral,coral_2013_Loggerhead_Patch_macro)
coral_2013_Loggerhead_Patch_merge$sitename <- "Loggerhead Patch"


coral_2013_Martin_County_1 <- filter(coral_2013, sitename == "Martin County 1")

coral_2013_Martin_County_1_macro <- summarise_at(coral_2013_Martin_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Martin_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Martin_County_1_coral <- summarise_at(coral_2013_Martin_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Martin_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Martin_County_1_merge <- merge(coral_2013_Martin_County_1_coral,coral_2013_Martin_County_1_macro)
coral_2013_Martin_County_1_merge$sitename <- "Martin County 1"


coral_2013_Martin_County_2 <- filter(coral_2013, sitename == "Martin County 2")

coral_2013_Martin_County_2_macro <- summarise_at(coral_2013_Martin_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Martin_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Martin_County_2_coral <- summarise_at(coral_2013_Martin_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Martin_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Martin_County_2_merge <- merge(coral_2013_Martin_County_2_coral,coral_2013_Martin_County_2_macro)
coral_2013_Martin_County_2_merge$sitename <- "Martin County 2"


coral_2013_Wonderland <- filter(coral_2013, sitename == "Wonderland")

coral_2013_Wonderland_macro <- summarise_at(coral_2013_Wonderland,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Wonderland_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Wonderland_coral <- summarise_at(coral_2013_Wonderland,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Wonderland_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Wonderland_merge <- merge(coral_2013_Wonderland_coral,coral_2013_Wonderland_macro)
coral_2013_Wonderland_merge$sitename <- "Wonderland"


coral_2013_Red_Dun_Reef <- filter(coral_2013, sitename == "Red Dun Reef")

coral_2013_Red_Dun_Reef_macro <- summarise_at(coral_2013_Red_Dun_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Red_Dun_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Red_Dun_Reef_coral <- summarise_at(coral_2013_Red_Dun_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Red_Dun_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Red_Dun_Reef_merge <- merge(coral_2013_Red_Dun_Reef_coral,coral_2013_Red_Dun_Reef_macro)
coral_2013_Red_Dun_Reef_merge$sitename <- "Red Dun Reef"


coral_2013_Rawa_Reef <- filter(coral_2013, sitename == "Rawa Reef")

coral_2013_Rawa_Reef_macro <- summarise_at(coral_2013_Rawa_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Rawa_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Rawa_Reef_coral <- summarise_at(coral_2013_Rawa_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Rawa_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Rawa_Reef_merge <- merge(coral_2013_Rawa_Reef_coral,coral_2013_Rawa_Reef_macro)
coral_2013_Rawa_Reef_merge$sitename <- "Rawa Reef"


coral_2013_Thor <- filter(coral_2013, sitename == "Thor")

coral_2013_Thor_macro <- summarise_at(coral_2013_Thor,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Thor_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Thor_coral <- summarise_at(coral_2013_Thor,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Thor_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Thor_merge <- merge(coral_2013_Thor_coral,coral_2013_Thor_macro)
coral_2013_Thor_merge$sitename <- "Thor"


coral_2013_Burr_Fish <- filter(coral_2013, sitename == "Burr Fish")

coral_2013_Burr_Fish_macro <- summarise_at(coral_2013_Burr_Fish,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Burr_Fish_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Burr_Fish_coral <- summarise_at(coral_2013_Burr_Fish,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Burr_Fish_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Burr_Fish_merge <- merge(coral_2013_Burr_Fish_coral,coral_2013_Burr_Fish_macro)
coral_2013_Burr_Fish_merge$sitename <- "Burr Fish"


coral_2013_Two_Patches <- filter(coral_2013, sitename == "Two Patches")

coral_2013_Two_Patches_macro <- summarise_at(coral_2013_Two_Patches,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Two_Patches_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Two_Patches_coral <- summarise_at(coral_2013_Two_Patches,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Two_Patches_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Two_Patches_merge <- merge(coral_2013_Two_Patches_coral,coral_2013_Two_Patches_macro)
coral_2013_Two_Patches_merge$sitename <- "Two Patches"


coral_2013_The_Maze <- filter(coral_2013, sitename == "The Maze")

coral_2013_The_Maze_macro <- summarise_at(coral_2013_The_Maze,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_The_Maze_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_The_Maze_coral <- summarise_at(coral_2013_The_Maze,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_The_Maze_coral) <- c("Coral_Average","Coral_SD")

coral_2013_The_Maze_merge <- merge(coral_2013_The_Maze_coral,coral_2013_The_Maze_macro)
coral_2013_The_Maze_merge$sitename <- "The Maze"


coral_2013_Davis_Rock <- filter(coral_2013, sitename == "Davis Rock")

coral_2013_Davis_Rock_macro <- summarise_at(coral_2013_Davis_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Davis_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Davis_Rock_coral <- summarise_at(coral_2013_Davis_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Davis_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Davis_Rock_merge <- merge(coral_2013_Davis_Rock_coral,coral_2013_Davis_Rock_macro)
coral_2013_Davis_Rock_merge$sitename <- "Davis Rock"


coral_2013_Texas_Rock <- filter(coral_2013, sitename == "Texas Rock")

coral_2013_Texas_Rock_macro <- summarise_at(coral_2013_Texas_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Texas_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2013_Texas_Rock_coral <- summarise_at(coral_2013_Texas_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2013_Texas_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2013_Texas_Rock_merge <- merge(coral_2013_Texas_Rock_coral,coral_2013_Texas_Rock_macro)
coral_2013_Texas_Rock_merge$sitename <- "Texas Rock"


coral_2013_merged <- rbind(coral_2013_Content_Keys_merge,coral_2013_Turtle_merge,coral_2013_Jaap_Reef_merge,coral_2013_Carysfort_Shallow_merge,
                           coral_2013_Grecian_Rocks_merge,coral_2013_Molasses_Shallow_merge,coral_2013_Conch_Shallow_merge,
                           coral_2013_Alligator_Shallow_merge,coral_2013_Tennessee_Shallow_merge,coral_2013_Sombrero_Shallow_merge,
                           coral_2013_Looe_Key_Shallow_merge,coral_2013_Eastern_Sambo_Shallow_merge,coral_2013_Western_Sambo_Shallow_merge,
                           coral_2013_Rock_Key_Shallow_merge,coral_2013_Sand_Key_Shallow_merge,coral_2013_Carysfort_Deep_merge,
                           coral_2013_Molasses_Deep_merge,coral_2013_Conch_Deep_merge,coral_2013_Alligator_Deep_merge,
                           coral_2013_Tennessee_Deep_merge,coral_2013_Sombrero_Deep_merge,coral_2013_Looe_Key_Deep_merge,
                           coral_2013_Eastern_Sambo_Deep_merge,coral_2013_Western_Sambo_Deep_merge,coral_2013_Rock_Key_Deep_merge,
                           coral_2013_Sand_Key_Deep_merge,coral_2013_Bird_Key_Reef_merge,coral_2013_Black_Coral_Rock_merge,
                           coral_2013_White_Shoal_merge,coral_2013_Palm_Beach_1_merge,coral_2013_Palm_Beach_2_merge,
                           coral_2013_Palm_Beach_3_merge,coral_2013_Broward_County_1_merge,coral_2013_Broward_County_2_merge,
                           coral_2013_Broward_County_3_merge,coral_2013_Broward_County_A_merge,coral_2013_Dade_County_1_merge,
                           coral_2013_Dade_County_2_merge,coral_2013_Dade_County_3_merge,coral_2013_Mayers_Peak_merge,
                           coral_2013_Temptation_Rock_merge,coral_2013_Palmata_Patch_merge,coral_2013_Prolifera_Patch_merge,
                           coral_2013_Loggerhead_Patch_merge,coral_2013_Two_Patches_merge,coral_2013_Porter_Patch_merge,coral_2013_Wonderland_merge,coral_2013_Thor_merge,
                           coral_2013_Burr_Fish_merge,coral_2013_Rawa_Reef_merge,coral_2013_Red_Dun_Reef_merge,coral_2013_The_Maze_merge,
                           coral_2013_Davis_Rock_merge,coral_2013_Texas_Rock_merge,
                           coral_2013_Admiral_merge,coral_2013_West_Turtle_Shoal_merge,coral_2013_Dustan_Rocks_merge,
                           coral_2013_West_Washer_Women_merge,coral_2013_Western_Head_merge,coral_2013_Cliff_Green_merge,
                           coral_2013_Smith_Shoal_merge)


coral_2013_merged$Year <- "2013"




coral_2014 <- import("2014_all.xlsx")
coral_2014$Sample_Year <- "2014"
coral_2014 <- select(coral_2014, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2013 <- unique(coral_2013$sitename)
view(unique_2013)
unique_2014 <- unique(coral_2014$sitename)
view(unique_2014)





# coral_2014_Rattlesnake <- filter(coral_2014, sitename == "Rattlesnake")
# 
# coral_2014_Rattlesnake_macro <- summarise_at(coral_2014_Rattlesnake,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2014_Rattlesnake_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2014_Rattlesnake_coral <- summarise_at(coral_2014_Rattlesnake,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2014_Rattlesnake_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2014_Rattlesnake_merge <- merge(coral_2014_Rattlesnake_coral,coral_2014_Rattlesnake_macro)
# coral_2014_Rattlesnake_merge$sitename <- "Rattlesnake"
# 
# 
# 
# 
# coral_2014_El_Radabob <- filter(coral_2014, sitename == "El Radabob")
# 
# coral_2014_El_Radabob_macro <- summarise_at(coral_2014_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2014_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2014_El_Radabob_coral <- summarise_at(coral_2014_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2014_El_Radabob_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2014_El_Radabob_merge <- merge(coral_2014_El_Radabob_coral,coral_2014_El_Radabob_macro)
# coral_2014_El_Radabob_merge$sitename <- "El Radabob"
# 
# 
# coral_2014_Dove_Key <- filter(coral_2014, sitename == "Dove Key")
# 
# coral_2014_Dove_Key_macro <- summarise_at(coral_2014_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2014_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2014_Dove_Key_coral <- summarise_at(coral_2014_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2014_Dove_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2014_Dove_Key_merge <- merge(coral_2014_Dove_Key_coral,coral_2014_Dove_Key_macro)
# coral_2014_Dove_Key_merge$sitename <- "Dove Key"
# 
# 
# coral_2014_Long_Key <- filter(coral_2014, sitename == "Long Key")
# 
# coral_2014_Long_Key_macro <- summarise_at(coral_2014_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2014_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2014_Long_Key_coral <- summarise_at(coral_2014_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2014_Long_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2014_Long_Key_merge <- merge(coral_2014_Long_Key_coral,coral_2014_Long_Key_macro)
# coral_2014_Long_Key_merge$sitename <- "Long Key"
# 
# 
# 
# coral_2014_Moser_Channel <- filter(coral_2014, sitename == "Moser Channel")
# 
# coral_2014_Moser_Channel_macro <- summarise_at(coral_2014_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2014_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2014_Moser_Channel_coral <- summarise_at(coral_2014_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2014_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2014_Moser_Channel_merge <- merge(coral_2014_Moser_Channel_coral,coral_2014_Moser_Channel_macro)
# coral_2014_Moser_Channel_merge$sitename <- "Moser Channel"
# 
# 
# coral_2014_Molasses_Keys <- filter(coral_2014, sitename == "Molasses Keys")
# 
# coral_2014_Molasses_Keys_macro <- summarise_at(coral_2014_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2014_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2014_Molasses_Keys_coral <- summarise_at(coral_2014_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2014_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2014_Molasses_Keys_merge <- merge(coral_2014_Molasses_Keys_coral,coral_2014_Molasses_Keys_macro)
# coral_2014_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2014_Content_Keys <- filter(coral_2014, sitename == "Content Keys")

coral_2014_Content_Keys_macro <- summarise_at(coral_2014_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Content_Keys_coral <- summarise_at(coral_2014_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Content_Keys_merge <- merge(coral_2014_Content_Keys_coral,coral_2014_Content_Keys_macro)
coral_2014_Content_Keys_merge$sitename <- "Content Keys"


coral_2014_Turtle <- filter(coral_2014, sitename == "Turtle")

coral_2014_Turtle_macro <- summarise_at(coral_2014_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Turtle_coral <- summarise_at(coral_2014_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Turtle_merge <- merge(coral_2014_Turtle_coral,coral_2014_Turtle_macro)
coral_2014_Turtle_merge$sitename <- "Turtle"


coral_2014_Porter_Patch <- filter(coral_2014, sitename == "Porter Patch")

coral_2014_Porter_Patch_macro <- summarise_at(coral_2014_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Porter_Patch_coral <- summarise_at(coral_2014_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Porter_Patch_merge <- merge(coral_2014_Porter_Patch_coral,coral_2014_Porter_Patch_macro)
coral_2014_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2014_Admiral <- filter(coral_2014, sitename == "Admiral")

coral_2014_Admiral_macro <- summarise_at(coral_2014_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Admiral_coral <- summarise_at(coral_2014_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Admiral_merge <- merge(coral_2014_Admiral_coral,coral_2014_Admiral_macro)
coral_2014_Admiral_merge$sitename <- "Admiral"


coral_2014_West_Turtle_Shoal <- filter(coral_2014, sitename == "West Turtle Shoal")

coral_2014_West_Turtle_Shoal_macro <- summarise_at(coral_2014_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_West_Turtle_Shoal_coral <- summarise_at(coral_2014_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2014_West_Turtle_Shoal_merge <- merge(coral_2014_West_Turtle_Shoal_coral,coral_2014_West_Turtle_Shoal_macro)
coral_2014_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2014_Dustan_Rocks <- filter(coral_2014, sitename == "Dustan Rocks")

coral_2014_Dustan_Rocks_macro <- summarise_at(coral_2014_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Dustan_Rocks_coral <- summarise_at(coral_2014_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Dustan_Rocks_merge <- merge(coral_2014_Dustan_Rocks_coral,coral_2014_Dustan_Rocks_macro)
coral_2014_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2014_West_Washer_Women <- filter(coral_2014, sitename == "West Washer Women")

coral_2014_West_Washer_Women_macro <- summarise_at(coral_2014_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_West_Washer_Women_coral <- summarise_at(coral_2014_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2014_West_Washer_Women_merge <- merge(coral_2014_West_Washer_Women_coral,coral_2014_West_Washer_Women_macro)
coral_2014_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2014_Western_Head <- filter(coral_2014, sitename == "Western Head")

coral_2014_Western_Head_macro <- summarise_at(coral_2014_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Western_Head_coral <- summarise_at(coral_2014_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Western_Head_merge <- merge(coral_2014_Western_Head_coral,coral_2014_Western_Head_macro)
coral_2014_Western_Head_merge$sitename <- "Western Head"


coral_2014_Cliff_Green <- filter(coral_2014, sitename == "Cliff Green")

coral_2014_Cliff_Green_macro <- summarise_at(coral_2014_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Cliff_Green_coral <- summarise_at(coral_2014_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Cliff_Green_merge <- merge(coral_2014_Cliff_Green_coral,coral_2014_Cliff_Green_macro)
coral_2014_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2014_Smith_Shoal <- filter(coral_2014, sitename == "Smith Shoal")

coral_2014_Smith_Shoal_macro <- summarise_at(coral_2014_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Smith_Shoal_coral <- summarise_at(coral_2014_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Smith_Shoal_merge <- merge(coral_2014_Smith_Shoal_coral,coral_2014_Smith_Shoal_macro)
coral_2014_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2014_Jaap_Reef <- filter(coral_2014, sitename == "Jaap Reef")

coral_2014_Jaap_Reef_macro <- summarise_at(coral_2014_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Jaap_Reef_coral <- summarise_at(coral_2014_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Jaap_Reef_merge <- merge(coral_2014_Jaap_Reef_coral,coral_2014_Jaap_Reef_macro)
coral_2014_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2014_Carysfort_Shallow <- filter(coral_2014, sitename == "Carysfort Shallow")

coral_2014_Carysfort_Shallow_macro <- summarise_at(coral_2014_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Carysfort_Shallow_coral <- summarise_at(coral_2014_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Carysfort_Shallow_merge <- merge(coral_2014_Carysfort_Shallow_coral,coral_2014_Carysfort_Shallow_macro)
coral_2014_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2014_Grecian_Rocks <- filter(coral_2014, sitename == "Grecian Rocks")

coral_2014_Grecian_Rocks_macro <- summarise_at(coral_2014_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Grecian_Rocks_coral <- summarise_at(coral_2014_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Grecian_Rocks_merge <- merge(coral_2014_Grecian_Rocks_coral,coral_2014_Grecian_Rocks_macro)
coral_2014_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2014_Molasses_Shallow <- filter(coral_2014, sitename == "Molasses Shallow")

coral_2014_Molasses_Shallow_macro <- summarise_at(coral_2014_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Molasses_Shallow_coral <- summarise_at(coral_2014_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Molasses_Shallow_merge <- merge(coral_2014_Molasses_Shallow_coral,coral_2014_Molasses_Shallow_macro)
coral_2014_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2014_Conch_Shallow <- filter(coral_2014, sitename == "Conch Shallow")

coral_2014_Conch_Shallow_macro <- summarise_at(coral_2014_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Conch_Shallow_coral <- summarise_at(coral_2014_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Conch_Shallow_merge <- merge(coral_2014_Conch_Shallow_coral,coral_2014_Conch_Shallow_macro)
coral_2014_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2014_Alligator_Shallow <- filter(coral_2014, sitename == "Alligator Shallow")

coral_2014_Alligator_Shallow_macro <- summarise_at(coral_2014_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Alligator_Shallow_coral <- summarise_at(coral_2014_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Alligator_Shallow_merge <- merge(coral_2014_Alligator_Shallow_coral,coral_2014_Alligator_Shallow_macro)
coral_2014_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2014_Tennessee_Shallow <- filter(coral_2014, sitename == "Tennessee Shallow")

coral_2014_Tennessee_Shallow_macro <- summarise_at(coral_2014_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Tennessee_Shallow_coral <- summarise_at(coral_2014_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Tennessee_Shallow_merge <- merge(coral_2014_Tennessee_Shallow_coral,coral_2014_Tennessee_Shallow_macro)
coral_2014_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2014_Sombrero_Shallow <- filter(coral_2014, sitename == "Sombrero Shallow")

coral_2014_Sombrero_Shallow_macro <- summarise_at(coral_2014_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Sombrero_Shallow_coral <- summarise_at(coral_2014_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Sombrero_Shallow_merge <- merge(coral_2014_Sombrero_Shallow_coral,coral_2014_Sombrero_Shallow_macro)
coral_2014_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2014_Looe_Key_Shallow <- filter(coral_2014, sitename == "Looe Key Shallow")

coral_2014_Looe_Key_Shallow_macro <- summarise_at(coral_2014_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Looe_Key_Shallow_coral <- summarise_at(coral_2014_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Looe_Key_Shallow_merge <- merge(coral_2014_Looe_Key_Shallow_coral,coral_2014_Looe_Key_Shallow_macro)
coral_2014_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2014_Eastern_Sambo_Shallow <- filter(coral_2014, sitename == "Eastern Sambo Shallow")

coral_2014_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2014_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2014_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Eastern_Sambo_Shallow_merge <- merge(coral_2014_Eastern_Sambo_Shallow_coral,coral_2014_Eastern_Sambo_Shallow_macro)
coral_2014_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2014_Western_Sambo_Shallow <- filter(coral_2014, sitename == "Western Sambo Shallow")

coral_2014_Western_Sambo_Shallow_macro <- summarise_at(coral_2014_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Western_Sambo_Shallow_coral <- summarise_at(coral_2014_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Western_Sambo_Shallow_merge <- merge(coral_2014_Western_Sambo_Shallow_coral,coral_2014_Western_Sambo_Shallow_macro)
coral_2014_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2014_Rock_Key_Shallow <- filter(coral_2014, sitename == "Rock Key Shallow")

coral_2014_Rock_Key_Shallow_macro <- summarise_at(coral_2014_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Rock_Key_Shallow_coral <- summarise_at(coral_2014_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Rock_Key_Shallow_merge <- merge(coral_2014_Rock_Key_Shallow_coral,coral_2014_Rock_Key_Shallow_macro)
coral_2014_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2014_Sand_Key_Shallow <- filter(coral_2014, sitename == "Sand Key Shallow")

coral_2014_Sand_Key_Shallow_macro <- summarise_at(coral_2014_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Sand_Key_Shallow_coral <- summarise_at(coral_2014_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Sand_Key_Shallow_merge <- merge(coral_2014_Sand_Key_Shallow_coral,coral_2014_Sand_Key_Shallow_macro)
coral_2014_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2014_Carysfort_Deep <- filter(coral_2014, sitename == "Carysfort Deep")

coral_2014_Carysfort_Deep_macro <- summarise_at(coral_2014_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Carysfort_Deep_coral <- summarise_at(coral_2014_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Carysfort_Deep_merge <- merge(coral_2014_Carysfort_Deep_coral,coral_2014_Carysfort_Deep_macro)
coral_2014_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2014_Molasses_Deep <- filter(coral_2014, sitename == "Molasses Deep")

coral_2014_Molasses_Deep_macro <- summarise_at(coral_2014_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Molasses_Deep_coral <- summarise_at(coral_2014_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Molasses_Deep_merge <- merge(coral_2014_Molasses_Deep_coral,coral_2014_Molasses_Deep_macro)
coral_2014_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2014_Conch_Deep <- filter(coral_2014, sitename == "Conch Deep")

coral_2014_Conch_Deep_macro <- summarise_at(coral_2014_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Conch_Deep_coral <- summarise_at(coral_2014_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Conch_Deep_merge <- merge(coral_2014_Conch_Deep_coral,coral_2014_Conch_Deep_macro)
coral_2014_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2014_Alligator_Deep <- filter(coral_2014, sitename == "Alligator Deep")

coral_2014_Alligator_Deep_macro <- summarise_at(coral_2014_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Alligator_Deep_coral <- summarise_at(coral_2014_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Alligator_Deep_merge <- merge(coral_2014_Alligator_Deep_coral,coral_2014_Alligator_Deep_macro)
coral_2014_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2014_Tennessee_Deep <- filter(coral_2014, sitename == "Tennessee Deep")

coral_2014_Tennessee_Deep_macro <- summarise_at(coral_2014_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Tennessee_Deep_coral <- summarise_at(coral_2014_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Tennessee_Deep_merge <- merge(coral_2014_Tennessee_Deep_coral,coral_2014_Tennessee_Deep_macro)
coral_2014_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2014_Sombrero_Deep <- filter(coral_2014, sitename == "Sombrero Deep")

coral_2014_Sombrero_Deep_macro <- summarise_at(coral_2014_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Sombrero_Deep_coral <- summarise_at(coral_2014_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Sombrero_Deep_merge <- merge(coral_2014_Sombrero_Deep_coral,coral_2014_Sombrero_Deep_macro)
coral_2014_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2014_Looe_Key_Deep <- filter(coral_2014, sitename == "Looe Key Deep")

coral_2014_Looe_Key_Deep_macro <- summarise_at(coral_2014_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Looe_Key_Deep_coral <- summarise_at(coral_2014_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Looe_Key_Deep_merge <- merge(coral_2014_Looe_Key_Deep_coral,coral_2014_Looe_Key_Deep_macro)
coral_2014_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2014_Eastern_Sambo_Deep <- filter(coral_2014, sitename == "Eastern Sambo Deep")

coral_2014_Eastern_Sambo_Deep_macro <- summarise_at(coral_2014_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Eastern_Sambo_Deep_coral <- summarise_at(coral_2014_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Eastern_Sambo_Deep_merge <- merge(coral_2014_Eastern_Sambo_Deep_coral,coral_2014_Eastern_Sambo_Deep_macro)
coral_2014_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2014_Western_Sambo_Deep <- filter(coral_2014, sitename == "Western Sambo Deep")

coral_2014_Western_Sambo_Deep_macro <- summarise_at(coral_2014_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Western_Sambo_Deep_coral <- summarise_at(coral_2014_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Western_Sambo_Deep_merge <- merge(coral_2014_Western_Sambo_Deep_coral,coral_2014_Western_Sambo_Deep_macro)
coral_2014_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2014_Rock_Key_Deep <- filter(coral_2014, sitename == "Rock Key Deep")

coral_2014_Rock_Key_Deep_macro <- summarise_at(coral_2014_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Rock_Key_Deep_coral <- summarise_at(coral_2014_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Rock_Key_Deep_merge <- merge(coral_2014_Rock_Key_Deep_coral,coral_2014_Rock_Key_Deep_macro)
coral_2014_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2014_Sand_Key_Deep <- filter(coral_2014, sitename == "Sand Key Deep")

coral_2014_Sand_Key_Deep_macro <- summarise_at(coral_2014_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Sand_Key_Deep_coral <- summarise_at(coral_2014_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Sand_Key_Deep_merge <- merge(coral_2014_Sand_Key_Deep_coral,coral_2014_Sand_Key_Deep_macro)
coral_2014_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2014_Bird_Key_Reef <- filter(coral_2014, sitename == "Bird Key Reef")

coral_2014_Bird_Key_Reef_macro <- summarise_at(coral_2014_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Bird_Key_Reef_coral <- summarise_at(coral_2014_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Bird_Key_Reef_merge <- merge(coral_2014_Bird_Key_Reef_coral,coral_2014_Bird_Key_Reef_macro)
coral_2014_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2014_Black_Coral_Rock <- filter(coral_2014, sitename == "Black Coral Rock")

coral_2014_Black_Coral_Rock_macro <- summarise_at(coral_2014_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Black_Coral_Rock_coral <- summarise_at(coral_2014_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Black_Coral_Rock_merge <- merge(coral_2014_Black_Coral_Rock_coral,coral_2014_Black_Coral_Rock_macro)
coral_2014_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2014_White_Shoal <- filter(coral_2014, sitename == "White Shoal")

coral_2014_White_Shoal_macro <- summarise_at(coral_2014_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_White_Shoal_coral <- summarise_at(coral_2014_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2014_White_Shoal_merge <- merge(coral_2014_White_Shoal_coral,coral_2014_White_Shoal_macro)
coral_2014_White_Shoal_merge$sitename <- "White Shoal"



coral_2014_Palm_Beach_1 <- filter(coral_2014, sitename == "Palm Beach 1")

coral_2014_Palm_Beach_1_macro <- summarise_at(coral_2014_Palm_Beach_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Palm_Beach_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Palm_Beach_1_coral <- summarise_at(coral_2014_Palm_Beach_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Palm_Beach_1_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Palm_Beach_1_merge <- merge(coral_2014_Palm_Beach_1_coral,coral_2014_Palm_Beach_1_macro)
coral_2014_Palm_Beach_1_merge$sitename <- "Palm Beach 1"


coral_2014_Palm_Beach_2 <- filter(coral_2014, sitename == "Palm Beach 2")

coral_2014_Palm_Beach_2_macro <- summarise_at(coral_2014_Palm_Beach_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Palm_Beach_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Palm_Beach_2_coral <- summarise_at(coral_2014_Palm_Beach_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Palm_Beach_2_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Palm_Beach_2_merge <- merge(coral_2014_Palm_Beach_2_coral,coral_2014_Palm_Beach_2_macro)
coral_2014_Palm_Beach_2_merge$sitename <- "Palm Beach 2"


coral_2014_Palm_Beach_3 <- filter(coral_2014, sitename == "Palm Beach 3")

coral_2014_Palm_Beach_3_macro <- summarise_at(coral_2014_Palm_Beach_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Palm_Beach_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Palm_Beach_3_coral <- summarise_at(coral_2014_Palm_Beach_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Palm_Beach_3_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Palm_Beach_3_merge <- merge(coral_2014_Palm_Beach_3_coral,coral_2014_Palm_Beach_3_macro)
coral_2014_Palm_Beach_3_merge$sitename <- "Palm Beach 3"



coral_2014_Palm_Beach_4 <- filter(coral_2014, sitename == "Palm Beach 4")

coral_2014_Palm_Beach_4_macro <- summarise_at(coral_2014_Palm_Beach_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Palm_Beach_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Palm_Beach_4_coral <- summarise_at(coral_2014_Palm_Beach_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Palm_Beach_4_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Palm_Beach_4_merge <- merge(coral_2014_Palm_Beach_4_coral,coral_2014_Palm_Beach_4_macro)
coral_2014_Palm_Beach_4_merge$sitename <- "Palm Beach 4"



coral_2014_Palm_Beach_5 <- filter(coral_2014, sitename == "Palm Beach 5")

coral_2014_Palm_Beach_5_macro <- summarise_at(coral_2014_Palm_Beach_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Palm_Beach_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Palm_Beach_5_coral <- summarise_at(coral_2014_Palm_Beach_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Palm_Beach_5_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Palm_Beach_5_merge <- merge(coral_2014_Palm_Beach_5_coral,coral_2014_Palm_Beach_5_macro)
coral_2014_Palm_Beach_5_merge$sitename <- "Palm Beach 5"



coral_2014_Broward_County_1 <- filter(coral_2014, sitename == "Broward County 1")

coral_2014_Broward_County_1_macro <- summarise_at(coral_2014_Broward_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Broward_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Broward_County_1_coral <- summarise_at(coral_2014_Broward_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Broward_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Broward_County_1_merge <- merge(coral_2014_Broward_County_1_coral,coral_2014_Broward_County_1_macro)
coral_2014_Broward_County_1_merge$sitename <- "Broward County 1"


coral_2014_Broward_County_2 <- filter(coral_2014, sitename == "Broward County 2")

coral_2014_Broward_County_2_macro <- summarise_at(coral_2014_Broward_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Broward_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Broward_County_2_coral <- summarise_at(coral_2014_Broward_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Broward_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Broward_County_2_merge <- merge(coral_2014_Broward_County_2_coral,coral_2014_Broward_County_2_macro)
coral_2014_Broward_County_2_merge$sitename <- "Broward County 2"


coral_2014_Broward_County_3 <- filter(coral_2014, sitename == "Broward County 3")

coral_2014_Broward_County_3_macro <- summarise_at(coral_2014_Broward_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Broward_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Broward_County_3_coral <- summarise_at(coral_2014_Broward_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Broward_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Broward_County_3_merge <- merge(coral_2014_Broward_County_3_coral,coral_2014_Broward_County_3_macro)
coral_2014_Broward_County_3_merge$sitename <- "Broward County 3"


coral_2014_Broward_County_4 <- filter(coral_2014, sitename == "Broward County 4")

coral_2014_Broward_County_4_macro <- summarise_at(coral_2014_Broward_County_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Broward_County_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Broward_County_4_coral <- summarise_at(coral_2014_Broward_County_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Broward_County_4_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Broward_County_4_merge <- merge(coral_2014_Broward_County_4_coral,coral_2014_Broward_County_4_macro)
coral_2014_Broward_County_4_merge$sitename <- "Broward County 4"


coral_2014_Broward_County_5 <- filter(coral_2014, sitename == "Broward County 5")

coral_2014_Broward_County_5_macro <- summarise_at(coral_2014_Broward_County_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Broward_County_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Broward_County_5_coral <- summarise_at(coral_2014_Broward_County_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Broward_County_5_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Broward_County_5_merge <- merge(coral_2014_Broward_County_5_coral,coral_2014_Broward_County_5_macro)
coral_2014_Broward_County_5_merge$sitename <- "Broward County 5"


coral_2014_Broward_County_6 <- filter(coral_2014, sitename == "Broward County 6")

coral_2014_Broward_County_6_macro <- summarise_at(coral_2014_Broward_County_6,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Broward_County_6_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Broward_County_6_coral <- summarise_at(coral_2014_Broward_County_6,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Broward_County_6_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Broward_County_6_merge <- merge(coral_2014_Broward_County_6_coral,coral_2014_Broward_County_6_macro)
coral_2014_Broward_County_6_merge$sitename <- "Broward County 6"




coral_2014_Broward_County_A <- filter(coral_2014, sitename == "Broward County A")

coral_2014_Broward_County_A_macro <- summarise_at(coral_2014_Broward_County_A,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Broward_County_A_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Broward_County_A_coral <- summarise_at(coral_2014_Broward_County_A,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Broward_County_A_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Broward_County_A_merge <- merge(coral_2014_Broward_County_A_coral,coral_2014_Broward_County_A_macro)
coral_2014_Broward_County_A_merge$sitename <- "Broward County A"



coral_2014_Dade_County_1 <- filter(coral_2014, sitename == "Dade County 1")

coral_2014_Dade_County_1_macro <- summarise_at(coral_2014_Dade_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dade_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Dade_County_1_coral <- summarise_at(coral_2014_Dade_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dade_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Dade_County_1_merge <- merge(coral_2014_Dade_County_1_coral,coral_2014_Dade_County_1_macro)
coral_2014_Dade_County_1_merge$sitename <- "Dade County 1"


coral_2014_Dade_County_2 <- filter(coral_2014, sitename == "Dade County 2")

coral_2014_Dade_County_2_macro <- summarise_at(coral_2014_Dade_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dade_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Dade_County_2_coral <- summarise_at(coral_2014_Dade_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dade_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Dade_County_2_merge <- merge(coral_2014_Dade_County_2_coral,coral_2014_Dade_County_2_macro)
coral_2014_Dade_County_2_merge$sitename <- "Dade County 2"


coral_2014_Dade_County_3 <- filter(coral_2014, sitename == "Dade County 3")

coral_2014_Dade_County_3_macro <- summarise_at(coral_2014_Dade_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dade_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Dade_County_3_coral <- summarise_at(coral_2014_Dade_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dade_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Dade_County_3_merge <- merge(coral_2014_Dade_County_3_coral,coral_2014_Dade_County_3_macro)
coral_2014_Dade_County_3_merge$sitename <- "Dade County 3"


coral_2014_Dade_County_4 <- filter(coral_2014, sitename == "Dade County 4")

coral_2014_Dade_County_4_macro <- summarise_at(coral_2014_Dade_County_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dade_County_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Dade_County_4_coral <- summarise_at(coral_2014_Dade_County_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dade_County_4_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Dade_County_4_merge <- merge(coral_2014_Dade_County_4_coral,coral_2014_Dade_County_4_macro)
coral_2014_Dade_County_4_merge$sitename <- "Dade County 4"


coral_2014_Dade_County_5 <- filter(coral_2014, sitename == "Dade County 5")

coral_2014_Dade_County_5_macro <- summarise_at(coral_2014_Dade_County_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dade_County_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Dade_County_5_coral <- summarise_at(coral_2014_Dade_County_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dade_County_5_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Dade_County_5_merge <- merge(coral_2014_Dade_County_5_coral,coral_2014_Dade_County_5_macro)
coral_2014_Dade_County_5_merge$sitename <- "Dade County 5"


coral_2014_Dade_County_6 <- filter(coral_2014, sitename == "Dade County 6")

coral_2014_Dade_County_6_macro <- summarise_at(coral_2014_Dade_County_6,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dade_County_6_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Dade_County_6_coral <- summarise_at(coral_2014_Dade_County_6,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dade_County_6_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Dade_County_6_merge <- merge(coral_2014_Dade_County_6_coral,coral_2014_Dade_County_6_macro)
coral_2014_Dade_County_6_merge$sitename <- "Dade County 6"


coral_2014_Dade_County_7 <- filter(coral_2014, sitename == "Dade County 7")

coral_2014_Dade_County_7_macro <- summarise_at(coral_2014_Dade_County_7,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dade_County_7_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Dade_County_7_coral <- summarise_at(coral_2014_Dade_County_7,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dade_County_7_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Dade_County_7_merge <- merge(coral_2014_Dade_County_7_coral,coral_2014_Dade_County_7_macro)
coral_2014_Dade_County_7_merge$sitename <- "Dade County 7"


coral_2014_Dade_County_8 <- filter(coral_2014, sitename == "Dade County 8")

coral_2014_Dade_County_8_macro <- summarise_at(coral_2014_Dade_County_8,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dade_County_8_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Dade_County_8_coral <- summarise_at(coral_2014_Dade_County_8,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Dade_County_8_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Dade_County_8_merge <- merge(coral_2014_Dade_County_8_coral,coral_2014_Dade_County_8_macro)
coral_2014_Dade_County_8_merge$sitename <- "Dade County 8"



coral_2014_Mayers_Peak <- filter(coral_2014, sitename == "Mayer's Peak")

coral_2014_Mayers_Peak_macro <- summarise_at(coral_2014_Mayers_Peak,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Mayers_Peak_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Mayers_Peak_coral <- summarise_at(coral_2014_Mayers_Peak,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Mayers_Peak_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Mayers_Peak_merge <- merge(coral_2014_Mayers_Peak_coral,coral_2014_Mayers_Peak_macro)
coral_2014_Mayers_Peak_merge$sitename <- "Mayer's Peak"


coral_2014_Temptation_Rock <- filter(coral_2014, sitename == "Temptation Rock")

coral_2014_Temptation_Rock_macro <- summarise_at(coral_2014_Temptation_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Temptation_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Temptation_Rock_coral <- summarise_at(coral_2014_Temptation_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Temptation_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Temptation_Rock_merge <- merge(coral_2014_Temptation_Rock_coral,coral_2014_Temptation_Rock_macro)
coral_2014_Temptation_Rock_merge$sitename <- "Temptation Rock"


coral_2014_Palmata_Patch <- filter(coral_2014, sitename == "Palmata Patch")

coral_2014_Palmata_Patch_macro <- summarise_at(coral_2014_Palmata_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Palmata_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Palmata_Patch_coral <- summarise_at(coral_2014_Palmata_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Palmata_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Palmata_Patch_merge <- merge(coral_2014_Palmata_Patch_coral,coral_2014_Palmata_Patch_macro)
coral_2014_Palmata_Patch_merge$sitename <- "Palmata Patch"


coral_2014_Prolifera_Patch <- filter(coral_2014, sitename == "Prolifera Patch")

coral_2014_Prolifera_Patch_macro <- summarise_at(coral_2014_Prolifera_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Prolifera_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Prolifera_Patch_coral <- summarise_at(coral_2014_Prolifera_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Prolifera_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Prolifera_Patch_merge <- merge(coral_2014_Prolifera_Patch_coral,coral_2014_Prolifera_Patch_macro)
coral_2014_Prolifera_Patch_merge$sitename <- "Prolifera Patch"


coral_2014_Loggerhead_Patch <- filter(coral_2014, sitename == "Loggerhead Patch")

coral_2014_Loggerhead_Patch_macro <- summarise_at(coral_2014_Loggerhead_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Loggerhead_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Loggerhead_Patch_coral <- summarise_at(coral_2014_Loggerhead_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Loggerhead_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Loggerhead_Patch_merge <- merge(coral_2014_Loggerhead_Patch_coral,coral_2014_Loggerhead_Patch_macro)
coral_2014_Loggerhead_Patch_merge$sitename <- "Loggerhead Patch"


coral_2014_Martin_County_1 <- filter(coral_2014, sitename == "Martin County 1")

coral_2014_Martin_County_1_macro <- summarise_at(coral_2014_Martin_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Martin_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Martin_County_1_coral <- summarise_at(coral_2014_Martin_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Martin_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Martin_County_1_merge <- merge(coral_2014_Martin_County_1_coral,coral_2014_Martin_County_1_macro)
coral_2014_Martin_County_1_merge$sitename <- "Martin County 1"


coral_2014_Martin_County_2 <- filter(coral_2014, sitename == "Martin County 2")

coral_2014_Martin_County_2_macro <- summarise_at(coral_2014_Martin_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Martin_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Martin_County_2_coral <- summarise_at(coral_2014_Martin_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Martin_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Martin_County_2_merge <- merge(coral_2014_Martin_County_2_coral,coral_2014_Martin_County_2_macro)
coral_2014_Martin_County_2_merge$sitename <- "Martin County 2"


coral_2014_Wonderland <- filter(coral_2014, sitename == "Wonderland")

coral_2014_Wonderland_macro <- summarise_at(coral_2014_Wonderland,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Wonderland_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Wonderland_coral <- summarise_at(coral_2014_Wonderland,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Wonderland_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Wonderland_merge <- merge(coral_2014_Wonderland_coral,coral_2014_Wonderland_macro)
coral_2014_Wonderland_merge$sitename <- "Wonderland"


coral_2014_Red_Dun_Reef <- filter(coral_2014, sitename == "Red Dun Reef")

coral_2014_Red_Dun_Reef_macro <- summarise_at(coral_2014_Red_Dun_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Red_Dun_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Red_Dun_Reef_coral <- summarise_at(coral_2014_Red_Dun_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Red_Dun_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Red_Dun_Reef_merge <- merge(coral_2014_Red_Dun_Reef_coral,coral_2014_Red_Dun_Reef_macro)
coral_2014_Red_Dun_Reef_merge$sitename <- "Red Dun Reef"


coral_2014_Rawa_Reef <- filter(coral_2014, sitename == "Rawa Reef")

coral_2014_Rawa_Reef_macro <- summarise_at(coral_2014_Rawa_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Rawa_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Rawa_Reef_coral <- summarise_at(coral_2014_Rawa_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Rawa_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Rawa_Reef_merge <- merge(coral_2014_Rawa_Reef_coral,coral_2014_Rawa_Reef_macro)
coral_2014_Rawa_Reef_merge$sitename <- "Rawa Reef"


coral_2014_Thor <- filter(coral_2014, sitename == "Thor")

coral_2014_Thor_macro <- summarise_at(coral_2014_Thor,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Thor_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Thor_coral <- summarise_at(coral_2014_Thor,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Thor_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Thor_merge <- merge(coral_2014_Thor_coral,coral_2014_Thor_macro)
coral_2014_Thor_merge$sitename <- "Thor"


coral_2014_Burr_Fish <- filter(coral_2014, sitename == "Burr Fish")

coral_2014_Burr_Fish_macro <- summarise_at(coral_2014_Burr_Fish,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Burr_Fish_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Burr_Fish_coral <- summarise_at(coral_2014_Burr_Fish,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Burr_Fish_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Burr_Fish_merge <- merge(coral_2014_Burr_Fish_coral,coral_2014_Burr_Fish_macro)
coral_2014_Burr_Fish_merge$sitename <- "Burr Fish"


coral_2014_Two_Patches <- filter(coral_2014, sitename == "Two Patches")

coral_2014_Two_Patches_macro <- summarise_at(coral_2014_Two_Patches,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Two_Patches_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Two_Patches_coral <- summarise_at(coral_2014_Two_Patches,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Two_Patches_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Two_Patches_merge <- merge(coral_2014_Two_Patches_coral,coral_2014_Two_Patches_macro)
coral_2014_Two_Patches_merge$sitename <- "Two Patches"


coral_2014_The_Maze <- filter(coral_2014, sitename == "The Maze")

coral_2014_The_Maze_macro <- summarise_at(coral_2014_The_Maze,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_The_Maze_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_The_Maze_coral <- summarise_at(coral_2014_The_Maze,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_The_Maze_coral) <- c("Coral_Average","Coral_SD")

coral_2014_The_Maze_merge <- merge(coral_2014_The_Maze_coral,coral_2014_The_Maze_macro)
coral_2014_The_Maze_merge$sitename <- "The Maze"


coral_2014_Davis_Rock <- filter(coral_2014, sitename == "Davis Rock")

coral_2014_Davis_Rock_macro <- summarise_at(coral_2014_Davis_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Davis_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Davis_Rock_coral <- summarise_at(coral_2014_Davis_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Davis_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Davis_Rock_merge <- merge(coral_2014_Davis_Rock_coral,coral_2014_Davis_Rock_macro)
coral_2014_Davis_Rock_merge$sitename <- "Davis Rock"


coral_2014_Texas_Rock <- filter(coral_2014, sitename == "Texas Rock")

coral_2014_Texas_Rock_macro <- summarise_at(coral_2014_Texas_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Texas_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2014_Texas_Rock_coral <- summarise_at(coral_2014_Texas_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2014_Texas_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2014_Texas_Rock_merge <- merge(coral_2014_Texas_Rock_coral,coral_2014_Texas_Rock_macro)
coral_2014_Texas_Rock_merge$sitename <- "Texas Rock"


coral_2014_merged <- rbind(coral_2014_Content_Keys_merge,coral_2014_Turtle_merge,coral_2014_Jaap_Reef_merge,coral_2014_Carysfort_Shallow_merge,
                           coral_2014_Grecian_Rocks_merge,coral_2014_Molasses_Shallow_merge,coral_2014_Conch_Shallow_merge,
                           coral_2014_Alligator_Shallow_merge,coral_2014_Tennessee_Shallow_merge,coral_2014_Sombrero_Shallow_merge,
                           coral_2014_Looe_Key_Shallow_merge,coral_2014_Eastern_Sambo_Shallow_merge,coral_2014_Western_Sambo_Shallow_merge,
                           coral_2014_Rock_Key_Shallow_merge,coral_2014_Sand_Key_Shallow_merge,coral_2014_Carysfort_Deep_merge,
                           coral_2014_Molasses_Deep_merge,coral_2014_Conch_Deep_merge,coral_2014_Alligator_Deep_merge,
                           coral_2014_Tennessee_Deep_merge,coral_2014_Sombrero_Deep_merge,coral_2014_Looe_Key_Deep_merge,
                           coral_2014_Eastern_Sambo_Deep_merge,coral_2014_Western_Sambo_Deep_merge,coral_2014_Rock_Key_Deep_merge,
                           coral_2014_Sand_Key_Deep_merge,coral_2014_Bird_Key_Reef_merge,coral_2014_Black_Coral_Rock_merge,
                           coral_2014_White_Shoal_merge,coral_2014_Palm_Beach_1_merge,coral_2014_Palm_Beach_2_merge,
                           coral_2014_Palm_Beach_3_merge,coral_2014_Broward_County_1_merge,coral_2014_Broward_County_2_merge,
                           coral_2014_Broward_County_3_merge,coral_2014_Broward_County_A_merge,coral_2014_Dade_County_1_merge,
                           coral_2014_Dade_County_2_merge,coral_2014_Dade_County_3_merge,coral_2014_Mayers_Peak_merge,
                           coral_2014_Temptation_Rock_merge,coral_2014_Palmata_Patch_merge,coral_2014_Prolifera_Patch_merge,
                           coral_2014_Loggerhead_Patch_merge,coral_2014_Two_Patches_merge,coral_2014_Porter_Patch_merge,coral_2014_Wonderland_merge,coral_2014_Thor_merge,
                           coral_2014_Burr_Fish_merge,coral_2014_Rawa_Reef_merge,coral_2014_Red_Dun_Reef_merge,coral_2014_The_Maze_merge,
                           coral_2014_Davis_Rock_merge,coral_2014_Texas_Rock_merge,
                           coral_2014_Admiral_merge,coral_2014_West_Turtle_Shoal_merge,coral_2014_Dustan_Rocks_merge,
                           coral_2014_West_Washer_Women_merge,coral_2014_Western_Head_merge,coral_2014_Cliff_Green_merge,
                           coral_2014_Smith_Shoal_merge,coral_2014_Palm_Beach_4_merge,coral_2014_Palm_Beach_5_merge,
                           coral_2014_Dade_County_4_merge,coral_2014_Dade_County_5_merge,coral_2014_Martin_County_1_merge,
                           coral_2014_Martin_County_2_merge)


coral_2014_merged$Year <- "2014"





coral_2015 <- import("2015_all.xlsx")
coral_2015$Sample_Year <- "2015"
coral_2015 <- select(coral_2015, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2014 <- unique(coral_2014$sitename)
view(unique_2014)
unique_2015 <- unique(coral_2015$sitename)
view(unique_2015)




# coral_2015_Rattlesnake <- filter(coral_2015, sitename == "Rattlesnake")
# 
# coral_2015_Rattlesnake_macro <- summarise_at(coral_2015_Rattlesnake,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2015_Rattlesnake_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2015_Rattlesnake_coral <- summarise_at(coral_2015_Rattlesnake,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2015_Rattlesnake_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2015_Rattlesnake_merge <- merge(coral_2015_Rattlesnake_coral,coral_2015_Rattlesnake_macro)
# coral_2015_Rattlesnake_merge$sitename <- "Rattlesnake"
# 
# 
# 
# 
# coral_2015_El_Radabob <- filter(coral_2015, sitename == "El Radabob")
# 
# coral_2015_El_Radabob_macro <- summarise_at(coral_2015_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2015_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2015_El_Radabob_coral <- summarise_at(coral_2015_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2015_El_Radabob_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2015_El_Radabob_merge <- merge(coral_2015_El_Radabob_coral,coral_2015_El_Radabob_macro)
# coral_2015_El_Radabob_merge$sitename <- "El Radabob"
# 
# 
# coral_2015_Dove_Key <- filter(coral_2015, sitename == "Dove Key")
# 
# coral_2015_Dove_Key_macro <- summarise_at(coral_2015_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2015_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2015_Dove_Key_coral <- summarise_at(coral_2015_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2015_Dove_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2015_Dove_Key_merge <- merge(coral_2015_Dove_Key_coral,coral_2015_Dove_Key_macro)
# coral_2015_Dove_Key_merge$sitename <- "Dove Key"
# 
# 
# coral_2015_Long_Key <- filter(coral_2015, sitename == "Long Key")
# 
# coral_2015_Long_Key_macro <- summarise_at(coral_2015_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2015_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2015_Long_Key_coral <- summarise_at(coral_2015_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2015_Long_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2015_Long_Key_merge <- merge(coral_2015_Long_Key_coral,coral_2015_Long_Key_macro)
# coral_2015_Long_Key_merge$sitename <- "Long Key"
# 
# 
# 
# coral_2015_Moser_Channel <- filter(coral_2015, sitename == "Moser Channel")
# 
# coral_2015_Moser_Channel_macro <- summarise_at(coral_2015_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2015_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2015_Moser_Channel_coral <- summarise_at(coral_2015_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2015_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2015_Moser_Channel_merge <- merge(coral_2015_Moser_Channel_coral,coral_2015_Moser_Channel_macro)
# coral_2015_Moser_Channel_merge$sitename <- "Moser Channel"
# 
# 
# coral_2015_Molasses_Keys <- filter(coral_2015, sitename == "Molasses Keys")
# 
# coral_2015_Molasses_Keys_macro <- summarise_at(coral_2015_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2015_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2015_Molasses_Keys_coral <- summarise_at(coral_2015_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2015_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2015_Molasses_Keys_merge <- merge(coral_2015_Molasses_Keys_coral,coral_2015_Molasses_Keys_macro)
# coral_2015_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2015_Content_Keys <- filter(coral_2015, sitename == "Content Keys")

coral_2015_Content_Keys_macro <- summarise_at(coral_2015_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Content_Keys_coral <- summarise_at(coral_2015_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Content_Keys_merge <- merge(coral_2015_Content_Keys_coral,coral_2015_Content_Keys_macro)
coral_2015_Content_Keys_merge$sitename <- "Content Keys"


coral_2015_Turtle <- filter(coral_2015, sitename == "Turtle")

coral_2015_Turtle_macro <- summarise_at(coral_2015_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Turtle_coral <- summarise_at(coral_2015_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Turtle_merge <- merge(coral_2015_Turtle_coral,coral_2015_Turtle_macro)
coral_2015_Turtle_merge$sitename <- "Turtle"


coral_2015_Porter_Patch <- filter(coral_2015, sitename == "Porter Patch")

coral_2015_Porter_Patch_macro <- summarise_at(coral_2015_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Porter_Patch_coral <- summarise_at(coral_2015_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Porter_Patch_merge <- merge(coral_2015_Porter_Patch_coral,coral_2015_Porter_Patch_macro)
coral_2015_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2015_Admiral <- filter(coral_2015, sitename == "Admiral")

coral_2015_Admiral_macro <- summarise_at(coral_2015_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Admiral_coral <- summarise_at(coral_2015_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Admiral_merge <- merge(coral_2015_Admiral_coral,coral_2015_Admiral_macro)
coral_2015_Admiral_merge$sitename <- "Admiral"


coral_2015_West_Turtle_Shoal <- filter(coral_2015, sitename == "West Turtle Shoal")

coral_2015_West_Turtle_Shoal_macro <- summarise_at(coral_2015_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_West_Turtle_Shoal_coral <- summarise_at(coral_2015_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2015_West_Turtle_Shoal_merge <- merge(coral_2015_West_Turtle_Shoal_coral,coral_2015_West_Turtle_Shoal_macro)
coral_2015_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2015_Dustan_Rocks <- filter(coral_2015, sitename == "Dustan Rocks")

coral_2015_Dustan_Rocks_macro <- summarise_at(coral_2015_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Dustan_Rocks_coral <- summarise_at(coral_2015_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Dustan_Rocks_merge <- merge(coral_2015_Dustan_Rocks_coral,coral_2015_Dustan_Rocks_macro)
coral_2015_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2015_West_Washer_Women <- filter(coral_2015, sitename == "West Washer Women")

coral_2015_West_Washer_Women_macro <- summarise_at(coral_2015_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_West_Washer_Women_coral <- summarise_at(coral_2015_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2015_West_Washer_Women_merge <- merge(coral_2015_West_Washer_Women_coral,coral_2015_West_Washer_Women_macro)
coral_2015_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2015_Western_Head <- filter(coral_2015, sitename == "Western Head")

coral_2015_Western_Head_macro <- summarise_at(coral_2015_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Western_Head_coral <- summarise_at(coral_2015_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Western_Head_merge <- merge(coral_2015_Western_Head_coral,coral_2015_Western_Head_macro)
coral_2015_Western_Head_merge$sitename <- "Western Head"


coral_2015_Cliff_Green <- filter(coral_2015, sitename == "Cliff Green")

coral_2015_Cliff_Green_macro <- summarise_at(coral_2015_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Cliff_Green_coral <- summarise_at(coral_2015_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Cliff_Green_merge <- merge(coral_2015_Cliff_Green_coral,coral_2015_Cliff_Green_macro)
coral_2015_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2015_Smith_Shoal <- filter(coral_2015, sitename == "Smith Shoal")

coral_2015_Smith_Shoal_macro <- summarise_at(coral_2015_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Smith_Shoal_coral <- summarise_at(coral_2015_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Smith_Shoal_merge <- merge(coral_2015_Smith_Shoal_coral,coral_2015_Smith_Shoal_macro)
coral_2015_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2015_Jaap_Reef <- filter(coral_2015, sitename == "Jaap Reef")

coral_2015_Jaap_Reef_macro <- summarise_at(coral_2015_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Jaap_Reef_coral <- summarise_at(coral_2015_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Jaap_Reef_merge <- merge(coral_2015_Jaap_Reef_coral,coral_2015_Jaap_Reef_macro)
coral_2015_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2015_Carysfort_Shallow <- filter(coral_2015, sitename == "Carysfort Shallow")

coral_2015_Carysfort_Shallow_macro <- summarise_at(coral_2015_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Carysfort_Shallow_coral <- summarise_at(coral_2015_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Carysfort_Shallow_merge <- merge(coral_2015_Carysfort_Shallow_coral,coral_2015_Carysfort_Shallow_macro)
coral_2015_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2015_Grecian_Rocks <- filter(coral_2015, sitename == "Grecian Rocks")

coral_2015_Grecian_Rocks_macro <- summarise_at(coral_2015_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Grecian_Rocks_coral <- summarise_at(coral_2015_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Grecian_Rocks_merge <- merge(coral_2015_Grecian_Rocks_coral,coral_2015_Grecian_Rocks_macro)
coral_2015_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2015_Molasses_Shallow <- filter(coral_2015, sitename == "Molasses Shallow")

coral_2015_Molasses_Shallow_macro <- summarise_at(coral_2015_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Molasses_Shallow_coral <- summarise_at(coral_2015_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Molasses_Shallow_merge <- merge(coral_2015_Molasses_Shallow_coral,coral_2015_Molasses_Shallow_macro)
coral_2015_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2015_Conch_Shallow <- filter(coral_2015, sitename == "Conch Shallow")

coral_2015_Conch_Shallow_macro <- summarise_at(coral_2015_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Conch_Shallow_coral <- summarise_at(coral_2015_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Conch_Shallow_merge <- merge(coral_2015_Conch_Shallow_coral,coral_2015_Conch_Shallow_macro)
coral_2015_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2015_Alligator_Shallow <- filter(coral_2015, sitename == "Alligator Shallow")

coral_2015_Alligator_Shallow_macro <- summarise_at(coral_2015_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Alligator_Shallow_coral <- summarise_at(coral_2015_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Alligator_Shallow_merge <- merge(coral_2015_Alligator_Shallow_coral,coral_2015_Alligator_Shallow_macro)
coral_2015_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2015_Tennessee_Shallow <- filter(coral_2015, sitename == "Tennessee Shallow")

coral_2015_Tennessee_Shallow_macro <- summarise_at(coral_2015_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Tennessee_Shallow_coral <- summarise_at(coral_2015_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Tennessee_Shallow_merge <- merge(coral_2015_Tennessee_Shallow_coral,coral_2015_Tennessee_Shallow_macro)
coral_2015_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2015_Sombrero_Shallow <- filter(coral_2015, sitename == "Sombrero Shallow")

coral_2015_Sombrero_Shallow_macro <- summarise_at(coral_2015_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Sombrero_Shallow_coral <- summarise_at(coral_2015_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Sombrero_Shallow_merge <- merge(coral_2015_Sombrero_Shallow_coral,coral_2015_Sombrero_Shallow_macro)
coral_2015_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2015_Looe_Key_Shallow <- filter(coral_2015, sitename == "Looe Key Shallow")

coral_2015_Looe_Key_Shallow_macro <- summarise_at(coral_2015_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Looe_Key_Shallow_coral <- summarise_at(coral_2015_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Looe_Key_Shallow_merge <- merge(coral_2015_Looe_Key_Shallow_coral,coral_2015_Looe_Key_Shallow_macro)
coral_2015_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2015_Eastern_Sambo_Shallow <- filter(coral_2015, sitename == "Eastern Sambo Shallow")

coral_2015_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2015_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2015_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Eastern_Sambo_Shallow_merge <- merge(coral_2015_Eastern_Sambo_Shallow_coral,coral_2015_Eastern_Sambo_Shallow_macro)
coral_2015_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2015_Western_Sambo_Shallow <- filter(coral_2015, sitename == "Western Sambo Shallow")

coral_2015_Western_Sambo_Shallow_macro <- summarise_at(coral_2015_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Western_Sambo_Shallow_coral <- summarise_at(coral_2015_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Western_Sambo_Shallow_merge <- merge(coral_2015_Western_Sambo_Shallow_coral,coral_2015_Western_Sambo_Shallow_macro)
coral_2015_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2015_Rock_Key_Shallow <- filter(coral_2015, sitename == "Rock Key Shallow")

coral_2015_Rock_Key_Shallow_macro <- summarise_at(coral_2015_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Rock_Key_Shallow_coral <- summarise_at(coral_2015_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Rock_Key_Shallow_merge <- merge(coral_2015_Rock_Key_Shallow_coral,coral_2015_Rock_Key_Shallow_macro)
coral_2015_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2015_Sand_Key_Shallow <- filter(coral_2015, sitename == "Sand Key Shallow")

coral_2015_Sand_Key_Shallow_macro <- summarise_at(coral_2015_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Sand_Key_Shallow_coral <- summarise_at(coral_2015_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Sand_Key_Shallow_merge <- merge(coral_2015_Sand_Key_Shallow_coral,coral_2015_Sand_Key_Shallow_macro)
coral_2015_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2015_Carysfort_Deep <- filter(coral_2015, sitename == "Carysfort Deep")

coral_2015_Carysfort_Deep_macro <- summarise_at(coral_2015_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Carysfort_Deep_coral <- summarise_at(coral_2015_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Carysfort_Deep_merge <- merge(coral_2015_Carysfort_Deep_coral,coral_2015_Carysfort_Deep_macro)
coral_2015_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2015_Molasses_Deep <- filter(coral_2015, sitename == "Molasses Deep")

coral_2015_Molasses_Deep_macro <- summarise_at(coral_2015_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Molasses_Deep_coral <- summarise_at(coral_2015_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Molasses_Deep_merge <- merge(coral_2015_Molasses_Deep_coral,coral_2015_Molasses_Deep_macro)
coral_2015_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2015_Conch_Deep <- filter(coral_2015, sitename == "Conch Deep")

coral_2015_Conch_Deep_macro <- summarise_at(coral_2015_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Conch_Deep_coral <- summarise_at(coral_2015_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Conch_Deep_merge <- merge(coral_2015_Conch_Deep_coral,coral_2015_Conch_Deep_macro)
coral_2015_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2015_Alligator_Deep <- filter(coral_2015, sitename == "Alligator Deep")

coral_2015_Alligator_Deep_macro <- summarise_at(coral_2015_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Alligator_Deep_coral <- summarise_at(coral_2015_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Alligator_Deep_merge <- merge(coral_2015_Alligator_Deep_coral,coral_2015_Alligator_Deep_macro)
coral_2015_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2015_Tennessee_Deep <- filter(coral_2015, sitename == "Tennessee Deep")

coral_2015_Tennessee_Deep_macro <- summarise_at(coral_2015_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Tennessee_Deep_coral <- summarise_at(coral_2015_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Tennessee_Deep_merge <- merge(coral_2015_Tennessee_Deep_coral,coral_2015_Tennessee_Deep_macro)
coral_2015_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2015_Sombrero_Deep <- filter(coral_2015, sitename == "Sombrero Deep")

coral_2015_Sombrero_Deep_macro <- summarise_at(coral_2015_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Sombrero_Deep_coral <- summarise_at(coral_2015_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Sombrero_Deep_merge <- merge(coral_2015_Sombrero_Deep_coral,coral_2015_Sombrero_Deep_macro)
coral_2015_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2015_Looe_Key_Deep <- filter(coral_2015, sitename == "Looe Key Deep")

coral_2015_Looe_Key_Deep_macro <- summarise_at(coral_2015_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Looe_Key_Deep_coral <- summarise_at(coral_2015_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Looe_Key_Deep_merge <- merge(coral_2015_Looe_Key_Deep_coral,coral_2015_Looe_Key_Deep_macro)
coral_2015_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2015_Eastern_Sambo_Deep <- filter(coral_2015, sitename == "Eastern Sambo Deep")

coral_2015_Eastern_Sambo_Deep_macro <- summarise_at(coral_2015_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Eastern_Sambo_Deep_coral <- summarise_at(coral_2015_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Eastern_Sambo_Deep_merge <- merge(coral_2015_Eastern_Sambo_Deep_coral,coral_2015_Eastern_Sambo_Deep_macro)
coral_2015_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2015_Western_Sambo_Deep <- filter(coral_2015, sitename == "Western Sambo Deep")

coral_2015_Western_Sambo_Deep_macro <- summarise_at(coral_2015_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Western_Sambo_Deep_coral <- summarise_at(coral_2015_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Western_Sambo_Deep_merge <- merge(coral_2015_Western_Sambo_Deep_coral,coral_2015_Western_Sambo_Deep_macro)
coral_2015_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2015_Rock_Key_Deep <- filter(coral_2015, sitename == "Rock Key Deep")

coral_2015_Rock_Key_Deep_macro <- summarise_at(coral_2015_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Rock_Key_Deep_coral <- summarise_at(coral_2015_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Rock_Key_Deep_merge <- merge(coral_2015_Rock_Key_Deep_coral,coral_2015_Rock_Key_Deep_macro)
coral_2015_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2015_Sand_Key_Deep <- filter(coral_2015, sitename == "Sand Key Deep")

coral_2015_Sand_Key_Deep_macro <- summarise_at(coral_2015_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Sand_Key_Deep_coral <- summarise_at(coral_2015_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Sand_Key_Deep_merge <- merge(coral_2015_Sand_Key_Deep_coral,coral_2015_Sand_Key_Deep_macro)
coral_2015_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2015_Bird_Key_Reef <- filter(coral_2015, sitename == "Bird Key Reef")

coral_2015_Bird_Key_Reef_macro <- summarise_at(coral_2015_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Bird_Key_Reef_coral <- summarise_at(coral_2015_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Bird_Key_Reef_merge <- merge(coral_2015_Bird_Key_Reef_coral,coral_2015_Bird_Key_Reef_macro)
coral_2015_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2015_Black_Coral_Rock <- filter(coral_2015, sitename == "Black Coral Rock")

coral_2015_Black_Coral_Rock_macro <- summarise_at(coral_2015_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Black_Coral_Rock_coral <- summarise_at(coral_2015_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Black_Coral_Rock_merge <- merge(coral_2015_Black_Coral_Rock_coral,coral_2015_Black_Coral_Rock_macro)
coral_2015_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2015_White_Shoal <- filter(coral_2015, sitename == "White Shoal")

coral_2015_White_Shoal_macro <- summarise_at(coral_2015_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_White_Shoal_coral <- summarise_at(coral_2015_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2015_White_Shoal_merge <- merge(coral_2015_White_Shoal_coral,coral_2015_White_Shoal_macro)
coral_2015_White_Shoal_merge$sitename <- "White Shoal"



coral_2015_Palm_Beach_1 <- filter(coral_2015, sitename == "Palm Beach 1")

coral_2015_Palm_Beach_1_macro <- summarise_at(coral_2015_Palm_Beach_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Palm_Beach_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Palm_Beach_1_coral <- summarise_at(coral_2015_Palm_Beach_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Palm_Beach_1_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Palm_Beach_1_merge <- merge(coral_2015_Palm_Beach_1_coral,coral_2015_Palm_Beach_1_macro)
coral_2015_Palm_Beach_1_merge$sitename <- "Palm Beach 1"


coral_2015_Palm_Beach_2 <- filter(coral_2015, sitename == "Palm Beach 2")

coral_2015_Palm_Beach_2_macro <- summarise_at(coral_2015_Palm_Beach_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Palm_Beach_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Palm_Beach_2_coral <- summarise_at(coral_2015_Palm_Beach_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Palm_Beach_2_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Palm_Beach_2_merge <- merge(coral_2015_Palm_Beach_2_coral,coral_2015_Palm_Beach_2_macro)
coral_2015_Palm_Beach_2_merge$sitename <- "Palm Beach 2"


coral_2015_Palm_Beach_3 <- filter(coral_2015, sitename == "Palm Beach 3")

coral_2015_Palm_Beach_3_macro <- summarise_at(coral_2015_Palm_Beach_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Palm_Beach_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Palm_Beach_3_coral <- summarise_at(coral_2015_Palm_Beach_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Palm_Beach_3_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Palm_Beach_3_merge <- merge(coral_2015_Palm_Beach_3_coral,coral_2015_Palm_Beach_3_macro)
coral_2015_Palm_Beach_3_merge$sitename <- "Palm Beach 3"



coral_2015_Palm_Beach_4 <- filter(coral_2015, sitename == "Palm Beach 4")

coral_2015_Palm_Beach_4_macro <- summarise_at(coral_2015_Palm_Beach_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Palm_Beach_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Palm_Beach_4_coral <- summarise_at(coral_2015_Palm_Beach_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Palm_Beach_4_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Palm_Beach_4_merge <- merge(coral_2015_Palm_Beach_4_coral,coral_2015_Palm_Beach_4_macro)
coral_2015_Palm_Beach_4_merge$sitename <- "Palm Beach 4"



coral_2015_Palm_Beach_5 <- filter(coral_2015, sitename == "Palm Beach 5")

coral_2015_Palm_Beach_5_macro <- summarise_at(coral_2015_Palm_Beach_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Palm_Beach_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Palm_Beach_5_coral <- summarise_at(coral_2015_Palm_Beach_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Palm_Beach_5_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Palm_Beach_5_merge <- merge(coral_2015_Palm_Beach_5_coral,coral_2015_Palm_Beach_5_macro)
coral_2015_Palm_Beach_5_merge$sitename <- "Palm Beach 5"



coral_2015_Broward_County_1 <- filter(coral_2015, sitename == "Broward County 1")

coral_2015_Broward_County_1_macro <- summarise_at(coral_2015_Broward_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Broward_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Broward_County_1_coral <- summarise_at(coral_2015_Broward_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Broward_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Broward_County_1_merge <- merge(coral_2015_Broward_County_1_coral,coral_2015_Broward_County_1_macro)
coral_2015_Broward_County_1_merge$sitename <- "Broward County 1"


coral_2015_Broward_County_2 <- filter(coral_2015, sitename == "Broward County 2")

coral_2015_Broward_County_2_macro <- summarise_at(coral_2015_Broward_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Broward_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Broward_County_2_coral <- summarise_at(coral_2015_Broward_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Broward_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Broward_County_2_merge <- merge(coral_2015_Broward_County_2_coral,coral_2015_Broward_County_2_macro)
coral_2015_Broward_County_2_merge$sitename <- "Broward County 2"


coral_2015_Broward_County_3 <- filter(coral_2015, sitename == "Broward County 3")

coral_2015_Broward_County_3_macro <- summarise_at(coral_2015_Broward_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Broward_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Broward_County_3_coral <- summarise_at(coral_2015_Broward_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Broward_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Broward_County_3_merge <- merge(coral_2015_Broward_County_3_coral,coral_2015_Broward_County_3_macro)
coral_2015_Broward_County_3_merge$sitename <- "Broward County 3"


coral_2015_Broward_County_4 <- filter(coral_2015, sitename == "Broward County 4")

coral_2015_Broward_County_4_macro <- summarise_at(coral_2015_Broward_County_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Broward_County_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Broward_County_4_coral <- summarise_at(coral_2015_Broward_County_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Broward_County_4_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Broward_County_4_merge <- merge(coral_2015_Broward_County_4_coral,coral_2015_Broward_County_4_macro)
coral_2015_Broward_County_4_merge$sitename <- "Broward County 4"


coral_2015_Broward_County_5 <- filter(coral_2015, sitename == "Broward County 5")

coral_2015_Broward_County_5_macro <- summarise_at(coral_2015_Broward_County_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Broward_County_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Broward_County_5_coral <- summarise_at(coral_2015_Broward_County_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Broward_County_5_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Broward_County_5_merge <- merge(coral_2015_Broward_County_5_coral,coral_2015_Broward_County_5_macro)
coral_2015_Broward_County_5_merge$sitename <- "Broward County 5"


coral_2015_Broward_County_6 <- filter(coral_2015, sitename == "Broward County 6")

coral_2015_Broward_County_6_macro <- summarise_at(coral_2015_Broward_County_6,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Broward_County_6_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Broward_County_6_coral <- summarise_at(coral_2015_Broward_County_6,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Broward_County_6_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Broward_County_6_merge <- merge(coral_2015_Broward_County_6_coral,coral_2015_Broward_County_6_macro)
coral_2015_Broward_County_6_merge$sitename <- "Broward County 6"




coral_2015_Broward_County_A <- filter(coral_2015, sitename == "Broward County A")

coral_2015_Broward_County_A_macro <- summarise_at(coral_2015_Broward_County_A,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Broward_County_A_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Broward_County_A_coral <- summarise_at(coral_2015_Broward_County_A,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Broward_County_A_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Broward_County_A_merge <- merge(coral_2015_Broward_County_A_coral,coral_2015_Broward_County_A_macro)
coral_2015_Broward_County_A_merge$sitename <- "Broward County A"



coral_2015_Dade_County_1 <- filter(coral_2015, sitename == "Dade County 1")

coral_2015_Dade_County_1_macro <- summarise_at(coral_2015_Dade_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dade_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Dade_County_1_coral <- summarise_at(coral_2015_Dade_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dade_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Dade_County_1_merge <- merge(coral_2015_Dade_County_1_coral,coral_2015_Dade_County_1_macro)
coral_2015_Dade_County_1_merge$sitename <- "Dade County 1"


coral_2015_Dade_County_2 <- filter(coral_2015, sitename == "Dade County 2")

coral_2015_Dade_County_2_macro <- summarise_at(coral_2015_Dade_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dade_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Dade_County_2_coral <- summarise_at(coral_2015_Dade_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dade_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Dade_County_2_merge <- merge(coral_2015_Dade_County_2_coral,coral_2015_Dade_County_2_macro)
coral_2015_Dade_County_2_merge$sitename <- "Dade County 2"


coral_2015_Dade_County_3 <- filter(coral_2015, sitename == "Dade County 3")

coral_2015_Dade_County_3_macro <- summarise_at(coral_2015_Dade_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dade_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Dade_County_3_coral <- summarise_at(coral_2015_Dade_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dade_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Dade_County_3_merge <- merge(coral_2015_Dade_County_3_coral,coral_2015_Dade_County_3_macro)
coral_2015_Dade_County_3_merge$sitename <- "Dade County 3"


coral_2015_Dade_County_4 <- filter(coral_2015, sitename == "Dade County 4")

coral_2015_Dade_County_4_macro <- summarise_at(coral_2015_Dade_County_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dade_County_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Dade_County_4_coral <- summarise_at(coral_2015_Dade_County_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dade_County_4_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Dade_County_4_merge <- merge(coral_2015_Dade_County_4_coral,coral_2015_Dade_County_4_macro)
coral_2015_Dade_County_4_merge$sitename <- "Dade County 4"


coral_2015_Dade_County_5 <- filter(coral_2015, sitename == "Dade County 5")

coral_2015_Dade_County_5_macro <- summarise_at(coral_2015_Dade_County_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dade_County_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Dade_County_5_coral <- summarise_at(coral_2015_Dade_County_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dade_County_5_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Dade_County_5_merge <- merge(coral_2015_Dade_County_5_coral,coral_2015_Dade_County_5_macro)
coral_2015_Dade_County_5_merge$sitename <- "Dade County 5"


coral_2015_Dade_County_6 <- filter(coral_2015, sitename == "Dade County 6")

coral_2015_Dade_County_6_macro <- summarise_at(coral_2015_Dade_County_6,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dade_County_6_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Dade_County_6_coral <- summarise_at(coral_2015_Dade_County_6,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dade_County_6_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Dade_County_6_merge <- merge(coral_2015_Dade_County_6_coral,coral_2015_Dade_County_6_macro)
coral_2015_Dade_County_6_merge$sitename <- "Dade County 6"


coral_2015_Dade_County_7 <- filter(coral_2015, sitename == "Dade County 7")

coral_2015_Dade_County_7_macro <- summarise_at(coral_2015_Dade_County_7,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dade_County_7_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Dade_County_7_coral <- summarise_at(coral_2015_Dade_County_7,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dade_County_7_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Dade_County_7_merge <- merge(coral_2015_Dade_County_7_coral,coral_2015_Dade_County_7_macro)
coral_2015_Dade_County_7_merge$sitename <- "Dade County 7"


coral_2015_Dade_County_8 <- filter(coral_2015, sitename == "Dade County 8")

coral_2015_Dade_County_8_macro <- summarise_at(coral_2015_Dade_County_8,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dade_County_8_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Dade_County_8_coral <- summarise_at(coral_2015_Dade_County_8,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Dade_County_8_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Dade_County_8_merge <- merge(coral_2015_Dade_County_8_coral,coral_2015_Dade_County_8_macro)
coral_2015_Dade_County_8_merge$sitename <- "Dade County 8"



coral_2015_Mayers_Peak <- filter(coral_2015, sitename == "Mayer's Peak")

coral_2015_Mayers_Peak_macro <- summarise_at(coral_2015_Mayers_Peak,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Mayers_Peak_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Mayers_Peak_coral <- summarise_at(coral_2015_Mayers_Peak,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Mayers_Peak_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Mayers_Peak_merge <- merge(coral_2015_Mayers_Peak_coral,coral_2015_Mayers_Peak_macro)
coral_2015_Mayers_Peak_merge$sitename <- "Mayer's Peak"


coral_2015_Temptation_Rock <- filter(coral_2015, sitename == "Temptation Rock")

coral_2015_Temptation_Rock_macro <- summarise_at(coral_2015_Temptation_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Temptation_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Temptation_Rock_coral <- summarise_at(coral_2015_Temptation_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Temptation_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Temptation_Rock_merge <- merge(coral_2015_Temptation_Rock_coral,coral_2015_Temptation_Rock_macro)
coral_2015_Temptation_Rock_merge$sitename <- "Temptation Rock"


coral_2015_Palmata_Patch <- filter(coral_2015, sitename == "Palmata Patch")

coral_2015_Palmata_Patch_macro <- summarise_at(coral_2015_Palmata_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Palmata_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Palmata_Patch_coral <- summarise_at(coral_2015_Palmata_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Palmata_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Palmata_Patch_merge <- merge(coral_2015_Palmata_Patch_coral,coral_2015_Palmata_Patch_macro)
coral_2015_Palmata_Patch_merge$sitename <- "Palmata Patch"


coral_2015_Prolifera_Patch <- filter(coral_2015, sitename == "Prolifera Patch")

coral_2015_Prolifera_Patch_macro <- summarise_at(coral_2015_Prolifera_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Prolifera_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Prolifera_Patch_coral <- summarise_at(coral_2015_Prolifera_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Prolifera_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Prolifera_Patch_merge <- merge(coral_2015_Prolifera_Patch_coral,coral_2015_Prolifera_Patch_macro)
coral_2015_Prolifera_Patch_merge$sitename <- "Prolifera Patch"


coral_2015_Loggerhead_Patch <- filter(coral_2015, sitename == "Loggerhead Patch")

coral_2015_Loggerhead_Patch_macro <- summarise_at(coral_2015_Loggerhead_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Loggerhead_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Loggerhead_Patch_coral <- summarise_at(coral_2015_Loggerhead_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Loggerhead_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Loggerhead_Patch_merge <- merge(coral_2015_Loggerhead_Patch_coral,coral_2015_Loggerhead_Patch_macro)
coral_2015_Loggerhead_Patch_merge$sitename <- "Loggerhead Patch"


coral_2015_Martin_County_1 <- filter(coral_2015, sitename == "Martin County 1")

coral_2015_Martin_County_1_macro <- summarise_at(coral_2015_Martin_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Martin_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Martin_County_1_coral <- summarise_at(coral_2015_Martin_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Martin_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Martin_County_1_merge <- merge(coral_2015_Martin_County_1_coral,coral_2015_Martin_County_1_macro)
coral_2015_Martin_County_1_merge$sitename <- "Martin County 1"


coral_2015_Martin_County_2 <- filter(coral_2015, sitename == "Martin County 2")

coral_2015_Martin_County_2_macro <- summarise_at(coral_2015_Martin_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Martin_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Martin_County_2_coral <- summarise_at(coral_2015_Martin_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Martin_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Martin_County_2_merge <- merge(coral_2015_Martin_County_2_coral,coral_2015_Martin_County_2_macro)
coral_2015_Martin_County_2_merge$sitename <- "Martin County 2"


coral_2015_Wonderland <- filter(coral_2015, sitename == "Wonderland")

coral_2015_Wonderland_macro <- summarise_at(coral_2015_Wonderland,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Wonderland_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Wonderland_coral <- summarise_at(coral_2015_Wonderland,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Wonderland_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Wonderland_merge <- merge(coral_2015_Wonderland_coral,coral_2015_Wonderland_macro)
coral_2015_Wonderland_merge$sitename <- "Wonderland"


coral_2015_Red_Dun_Reef <- filter(coral_2015, sitename == "Red Dun Reef")

coral_2015_Red_Dun_Reef_macro <- summarise_at(coral_2015_Red_Dun_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Red_Dun_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Red_Dun_Reef_coral <- summarise_at(coral_2015_Red_Dun_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Red_Dun_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Red_Dun_Reef_merge <- merge(coral_2015_Red_Dun_Reef_coral,coral_2015_Red_Dun_Reef_macro)
coral_2015_Red_Dun_Reef_merge$sitename <- "Red Dun Reef"


coral_2015_Rawa_Reef <- filter(coral_2015, sitename == "Rawa Reef")

coral_2015_Rawa_Reef_macro <- summarise_at(coral_2015_Rawa_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Rawa_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Rawa_Reef_coral <- summarise_at(coral_2015_Rawa_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Rawa_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Rawa_Reef_merge <- merge(coral_2015_Rawa_Reef_coral,coral_2015_Rawa_Reef_macro)
coral_2015_Rawa_Reef_merge$sitename <- "Rawa Reef"


coral_2015_Thor <- filter(coral_2015, sitename == "Thor")

coral_2015_Thor_macro <- summarise_at(coral_2015_Thor,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Thor_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Thor_coral <- summarise_at(coral_2015_Thor,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Thor_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Thor_merge <- merge(coral_2015_Thor_coral,coral_2015_Thor_macro)
coral_2015_Thor_merge$sitename <- "Thor"


coral_2015_Burr_Fish <- filter(coral_2015, sitename == "Burr Fish")

coral_2015_Burr_Fish_macro <- summarise_at(coral_2015_Burr_Fish,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Burr_Fish_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Burr_Fish_coral <- summarise_at(coral_2015_Burr_Fish,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Burr_Fish_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Burr_Fish_merge <- merge(coral_2015_Burr_Fish_coral,coral_2015_Burr_Fish_macro)
coral_2015_Burr_Fish_merge$sitename <- "Burr Fish"


coral_2015_Two_Patches <- filter(coral_2015, sitename == "Two Patches")

coral_2015_Two_Patches_macro <- summarise_at(coral_2015_Two_Patches,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Two_Patches_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Two_Patches_coral <- summarise_at(coral_2015_Two_Patches,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Two_Patches_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Two_Patches_merge <- merge(coral_2015_Two_Patches_coral,coral_2015_Two_Patches_macro)
coral_2015_Two_Patches_merge$sitename <- "Two Patches"


coral_2015_The_Maze <- filter(coral_2015, sitename == "The Maze")

coral_2015_The_Maze_macro <- summarise_at(coral_2015_The_Maze,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_The_Maze_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_The_Maze_coral <- summarise_at(coral_2015_The_Maze,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_The_Maze_coral) <- c("Coral_Average","Coral_SD")

coral_2015_The_Maze_merge <- merge(coral_2015_The_Maze_coral,coral_2015_The_Maze_macro)
coral_2015_The_Maze_merge$sitename <- "The Maze"


coral_2015_Davis_Rock <- filter(coral_2015, sitename == "Davis Rock")

coral_2015_Davis_Rock_macro <- summarise_at(coral_2015_Davis_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Davis_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Davis_Rock_coral <- summarise_at(coral_2015_Davis_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Davis_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Davis_Rock_merge <- merge(coral_2015_Davis_Rock_coral,coral_2015_Davis_Rock_macro)
coral_2015_Davis_Rock_merge$sitename <- "Davis Rock"


coral_2015_Texas_Rock <- filter(coral_2015, sitename == "Texas Rock")

coral_2015_Texas_Rock_macro <- summarise_at(coral_2015_Texas_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Texas_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2015_Texas_Rock_coral <- summarise_at(coral_2015_Texas_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2015_Texas_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2015_Texas_Rock_merge <- merge(coral_2015_Texas_Rock_coral,coral_2015_Texas_Rock_macro)
coral_2015_Texas_Rock_merge$sitename <- "Texas Rock"


coral_2015_merged <- rbind(coral_2015_Content_Keys_merge,coral_2015_Turtle_merge,coral_2015_Jaap_Reef_merge,coral_2015_Carysfort_Shallow_merge,
                           coral_2015_Grecian_Rocks_merge,coral_2015_Molasses_Shallow_merge,coral_2015_Conch_Shallow_merge,
                           coral_2015_Alligator_Shallow_merge,coral_2015_Tennessee_Shallow_merge,coral_2015_Sombrero_Shallow_merge,
                           coral_2015_Looe_Key_Shallow_merge,coral_2015_Eastern_Sambo_Shallow_merge,coral_2015_Western_Sambo_Shallow_merge,
                           coral_2015_Rock_Key_Shallow_merge,coral_2015_Sand_Key_Shallow_merge,coral_2015_Carysfort_Deep_merge,
                           coral_2015_Molasses_Deep_merge,coral_2015_Conch_Deep_merge,coral_2015_Alligator_Deep_merge,
                           coral_2015_Tennessee_Deep_merge,coral_2015_Sombrero_Deep_merge,coral_2015_Looe_Key_Deep_merge,
                           coral_2015_Eastern_Sambo_Deep_merge,coral_2015_Western_Sambo_Deep_merge,coral_2015_Rock_Key_Deep_merge,
                           coral_2015_Sand_Key_Deep_merge,coral_2015_Bird_Key_Reef_merge,coral_2015_Black_Coral_Rock_merge,
                           coral_2015_White_Shoal_merge,coral_2015_Palm_Beach_1_merge,coral_2015_Palm_Beach_2_merge,
                           coral_2015_Palm_Beach_3_merge,coral_2015_Broward_County_1_merge,coral_2015_Broward_County_2_merge,
                           coral_2015_Broward_County_3_merge,coral_2015_Broward_County_A_merge,coral_2015_Dade_County_1_merge,
                           coral_2015_Dade_County_2_merge,coral_2015_Dade_County_3_merge,coral_2015_Mayers_Peak_merge,
                           coral_2015_Temptation_Rock_merge,coral_2015_Palmata_Patch_merge,coral_2015_Prolifera_Patch_merge,
                           coral_2015_Loggerhead_Patch_merge,coral_2015_Two_Patches_merge,coral_2015_Porter_Patch_merge,coral_2015_Wonderland_merge,coral_2015_Thor_merge,
                           coral_2015_Burr_Fish_merge,coral_2015_Rawa_Reef_merge,coral_2015_Red_Dun_Reef_merge,coral_2015_The_Maze_merge,
                           coral_2015_Davis_Rock_merge,coral_2015_Texas_Rock_merge,
                           coral_2015_Admiral_merge,coral_2015_West_Turtle_Shoal_merge,coral_2015_Dustan_Rocks_merge,
                           coral_2015_West_Washer_Women_merge,coral_2015_Western_Head_merge,coral_2015_Cliff_Green_merge,
                           coral_2015_Smith_Shoal_merge,coral_2015_Palm_Beach_4_merge,coral_2015_Palm_Beach_5_merge,
                           coral_2015_Dade_County_4_merge,coral_2015_Dade_County_5_merge,coral_2015_Martin_County_1_merge,
                           coral_2015_Martin_County_2_merge)


coral_2015_merged$Year <- "2015"





coral_2016 <- import("2016_all.xlsx")
coral_2016$Sample_Year <- "2016"
coral_2016 <- select(coral_2016, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2015 <- unique(coral_2015$sitename)
view(unique_2015)
unique_2016 <- unique(coral_2016$sitename)
view(unique_2016)


# coral_2016_Rattlesnake <- filter(coral_2016, sitename == "Rattlesnake")
# 
# coral_2016_Rattlesnake_macro <- summarise_at(coral_2016_Rattlesnake,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2016_Rattlesnake_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2016_Rattlesnake_coral <- summarise_at(coral_2016_Rattlesnake,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2016_Rattlesnake_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2016_Rattlesnake_merge <- merge(coral_2016_Rattlesnake_coral,coral_2016_Rattlesnake_macro)
# coral_2016_Rattlesnake_merge$sitename <- "Rattlesnake"
# 
# 
# 
# 
# coral_2016_El_Radabob <- filter(coral_2016, sitename == "El Radabob")
# 
# coral_2016_El_Radabob_macro <- summarise_at(coral_2016_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2016_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2016_El_Radabob_coral <- summarise_at(coral_2016_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2016_El_Radabob_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2016_El_Radabob_merge <- merge(coral_2016_El_Radabob_coral,coral_2016_El_Radabob_macro)
# coral_2016_El_Radabob_merge$sitename <- "El Radabob"
# 
# 
# coral_2016_Dove_Key <- filter(coral_2016, sitename == "Dove Key")
# 
# coral_2016_Dove_Key_macro <- summarise_at(coral_2016_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2016_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2016_Dove_Key_coral <- summarise_at(coral_2016_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2016_Dove_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2016_Dove_Key_merge <- merge(coral_2016_Dove_Key_coral,coral_2016_Dove_Key_macro)
# coral_2016_Dove_Key_merge$sitename <- "Dove Key"
# 
# 
# coral_2016_Long_Key <- filter(coral_2016, sitename == "Long Key")
# 
# coral_2016_Long_Key_macro <- summarise_at(coral_2016_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2016_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2016_Long_Key_coral <- summarise_at(coral_2016_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2016_Long_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2016_Long_Key_merge <- merge(coral_2016_Long_Key_coral,coral_2016_Long_Key_macro)
# coral_2016_Long_Key_merge$sitename <- "Long Key"
# 
# 
# 
# coral_2016_Moser_Channel <- filter(coral_2016, sitename == "Moser Channel")
# 
# coral_2016_Moser_Channel_macro <- summarise_at(coral_2016_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2016_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2016_Moser_Channel_coral <- summarise_at(coral_2016_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2016_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2016_Moser_Channel_merge <- merge(coral_2016_Moser_Channel_coral,coral_2016_Moser_Channel_macro)
# coral_2016_Moser_Channel_merge$sitename <- "Moser Channel"
# 
# 
# coral_2016_Molasses_Keys <- filter(coral_2016, sitename == "Molasses Keys")
# 
# coral_2016_Molasses_Keys_macro <- summarise_at(coral_2016_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2016_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2016_Molasses_Keys_coral <- summarise_at(coral_2016_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2016_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2016_Molasses_Keys_merge <- merge(coral_2016_Molasses_Keys_coral,coral_2016_Molasses_Keys_macro)
# coral_2016_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2016_Content_Keys <- filter(coral_2016, sitename == "Content Keys")

coral_2016_Content_Keys_macro <- summarise_at(coral_2016_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Content_Keys_coral <- summarise_at(coral_2016_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Content_Keys_merge <- merge(coral_2016_Content_Keys_coral,coral_2016_Content_Keys_macro)
coral_2016_Content_Keys_merge$sitename <- "Content Keys"


coral_2016_Turtle <- filter(coral_2016, sitename == "Turtle")

coral_2016_Turtle_macro <- summarise_at(coral_2016_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Turtle_coral <- summarise_at(coral_2016_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Turtle_merge <- merge(coral_2016_Turtle_coral,coral_2016_Turtle_macro)
coral_2016_Turtle_merge$sitename <- "Turtle"


coral_2016_Porter_Patch <- filter(coral_2016, sitename == "Porter Patch")

coral_2016_Porter_Patch_macro <- summarise_at(coral_2016_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Porter_Patch_coral <- summarise_at(coral_2016_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Porter_Patch_merge <- merge(coral_2016_Porter_Patch_coral,coral_2016_Porter_Patch_macro)
coral_2016_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2016_Admiral <- filter(coral_2016, sitename == "Admiral")

coral_2016_Admiral_macro <- summarise_at(coral_2016_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Admiral_coral <- summarise_at(coral_2016_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Admiral_merge <- merge(coral_2016_Admiral_coral,coral_2016_Admiral_macro)
coral_2016_Admiral_merge$sitename <- "Admiral"


coral_2016_West_Turtle_Shoal <- filter(coral_2016, sitename == "West Turtle Shoal")

coral_2016_West_Turtle_Shoal_macro <- summarise_at(coral_2016_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_West_Turtle_Shoal_coral <- summarise_at(coral_2016_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2016_West_Turtle_Shoal_merge <- merge(coral_2016_West_Turtle_Shoal_coral,coral_2016_West_Turtle_Shoal_macro)
coral_2016_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2016_Dustan_Rocks <- filter(coral_2016, sitename == "Dustan Rocks")

coral_2016_Dustan_Rocks_macro <- summarise_at(coral_2016_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Dustan_Rocks_coral <- summarise_at(coral_2016_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Dustan_Rocks_merge <- merge(coral_2016_Dustan_Rocks_coral,coral_2016_Dustan_Rocks_macro)
coral_2016_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2016_West_Washer_Women <- filter(coral_2016, sitename == "West Washer Women")

coral_2016_West_Washer_Women_macro <- summarise_at(coral_2016_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_West_Washer_Women_coral <- summarise_at(coral_2016_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2016_West_Washer_Women_merge <- merge(coral_2016_West_Washer_Women_coral,coral_2016_West_Washer_Women_macro)
coral_2016_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2016_Western_Head <- filter(coral_2016, sitename == "Western Head")

coral_2016_Western_Head_macro <- summarise_at(coral_2016_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Western_Head_coral <- summarise_at(coral_2016_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Western_Head_merge <- merge(coral_2016_Western_Head_coral,coral_2016_Western_Head_macro)
coral_2016_Western_Head_merge$sitename <- "Western Head"


coral_2016_Cliff_Green <- filter(coral_2016, sitename == "Cliff Green")

coral_2016_Cliff_Green_macro <- summarise_at(coral_2016_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Cliff_Green_coral <- summarise_at(coral_2016_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Cliff_Green_merge <- merge(coral_2016_Cliff_Green_coral,coral_2016_Cliff_Green_macro)
coral_2016_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2016_Smith_Shoal <- filter(coral_2016, sitename == "Smith Shoal")

coral_2016_Smith_Shoal_macro <- summarise_at(coral_2016_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Smith_Shoal_coral <- summarise_at(coral_2016_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Smith_Shoal_merge <- merge(coral_2016_Smith_Shoal_coral,coral_2016_Smith_Shoal_macro)
coral_2016_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2016_Jaap_Reef <- filter(coral_2016, sitename == "Jaap Reef")

coral_2016_Jaap_Reef_macro <- summarise_at(coral_2016_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Jaap_Reef_coral <- summarise_at(coral_2016_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Jaap_Reef_merge <- merge(coral_2016_Jaap_Reef_coral,coral_2016_Jaap_Reef_macro)
coral_2016_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2016_Carysfort_Shallow <- filter(coral_2016, sitename == "Carysfort Shallow")

coral_2016_Carysfort_Shallow_macro <- summarise_at(coral_2016_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Carysfort_Shallow_coral <- summarise_at(coral_2016_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Carysfort_Shallow_merge <- merge(coral_2016_Carysfort_Shallow_coral,coral_2016_Carysfort_Shallow_macro)
coral_2016_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2016_Grecian_Rocks <- filter(coral_2016, sitename == "Grecian Rocks")

coral_2016_Grecian_Rocks_macro <- summarise_at(coral_2016_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Grecian_Rocks_coral <- summarise_at(coral_2016_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Grecian_Rocks_merge <- merge(coral_2016_Grecian_Rocks_coral,coral_2016_Grecian_Rocks_macro)
coral_2016_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2016_Molasses_Shallow <- filter(coral_2016, sitename == "Molasses Shallow")

coral_2016_Molasses_Shallow_macro <- summarise_at(coral_2016_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Molasses_Shallow_coral <- summarise_at(coral_2016_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Molasses_Shallow_merge <- merge(coral_2016_Molasses_Shallow_coral,coral_2016_Molasses_Shallow_macro)
coral_2016_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2016_Conch_Shallow <- filter(coral_2016, sitename == "Conch Shallow")

coral_2016_Conch_Shallow_macro <- summarise_at(coral_2016_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Conch_Shallow_coral <- summarise_at(coral_2016_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Conch_Shallow_merge <- merge(coral_2016_Conch_Shallow_coral,coral_2016_Conch_Shallow_macro)
coral_2016_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2016_Alligator_Shallow <- filter(coral_2016, sitename == "Alligator Shallow")

coral_2016_Alligator_Shallow_macro <- summarise_at(coral_2016_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Alligator_Shallow_coral <- summarise_at(coral_2016_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Alligator_Shallow_merge <- merge(coral_2016_Alligator_Shallow_coral,coral_2016_Alligator_Shallow_macro)
coral_2016_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2016_Tennessee_Shallow <- filter(coral_2016, sitename == "Tennessee Shallow")

coral_2016_Tennessee_Shallow_macro <- summarise_at(coral_2016_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Tennessee_Shallow_coral <- summarise_at(coral_2016_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Tennessee_Shallow_merge <- merge(coral_2016_Tennessee_Shallow_coral,coral_2016_Tennessee_Shallow_macro)
coral_2016_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2016_Sombrero_Shallow <- filter(coral_2016, sitename == "Sombrero Shallow")

coral_2016_Sombrero_Shallow_macro <- summarise_at(coral_2016_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Sombrero_Shallow_coral <- summarise_at(coral_2016_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Sombrero_Shallow_merge <- merge(coral_2016_Sombrero_Shallow_coral,coral_2016_Sombrero_Shallow_macro)
coral_2016_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2016_Looe_Key_Shallow <- filter(coral_2016, sitename == "Looe Key Shallow")

coral_2016_Looe_Key_Shallow_macro <- summarise_at(coral_2016_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Looe_Key_Shallow_coral <- summarise_at(coral_2016_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Looe_Key_Shallow_merge <- merge(coral_2016_Looe_Key_Shallow_coral,coral_2016_Looe_Key_Shallow_macro)
coral_2016_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2016_Eastern_Sambo_Shallow <- filter(coral_2016, sitename == "Eastern Sambo Shallow")

coral_2016_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2016_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2016_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Eastern_Sambo_Shallow_merge <- merge(coral_2016_Eastern_Sambo_Shallow_coral,coral_2016_Eastern_Sambo_Shallow_macro)
coral_2016_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2016_Western_Sambo_Shallow <- filter(coral_2016, sitename == "Western Sambo Shallow")

coral_2016_Western_Sambo_Shallow_macro <- summarise_at(coral_2016_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Western_Sambo_Shallow_coral <- summarise_at(coral_2016_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Western_Sambo_Shallow_merge <- merge(coral_2016_Western_Sambo_Shallow_coral,coral_2016_Western_Sambo_Shallow_macro)
coral_2016_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2016_Rock_Key_Shallow <- filter(coral_2016, sitename == "Rock Key Shallow")

coral_2016_Rock_Key_Shallow_macro <- summarise_at(coral_2016_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Rock_Key_Shallow_coral <- summarise_at(coral_2016_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Rock_Key_Shallow_merge <- merge(coral_2016_Rock_Key_Shallow_coral,coral_2016_Rock_Key_Shallow_macro)
coral_2016_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2016_Sand_Key_Shallow <- filter(coral_2016, sitename == "Sand Key Shallow")

coral_2016_Sand_Key_Shallow_macro <- summarise_at(coral_2016_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Sand_Key_Shallow_coral <- summarise_at(coral_2016_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Sand_Key_Shallow_merge <- merge(coral_2016_Sand_Key_Shallow_coral,coral_2016_Sand_Key_Shallow_macro)
coral_2016_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2016_Carysfort_Deep <- filter(coral_2016, sitename == "Carysfort Deep")

coral_2016_Carysfort_Deep_macro <- summarise_at(coral_2016_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Carysfort_Deep_coral <- summarise_at(coral_2016_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Carysfort_Deep_merge <- merge(coral_2016_Carysfort_Deep_coral,coral_2016_Carysfort_Deep_macro)
coral_2016_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2016_Molasses_Deep <- filter(coral_2016, sitename == "Molasses Deep")

coral_2016_Molasses_Deep_macro <- summarise_at(coral_2016_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Molasses_Deep_coral <- summarise_at(coral_2016_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Molasses_Deep_merge <- merge(coral_2016_Molasses_Deep_coral,coral_2016_Molasses_Deep_macro)
coral_2016_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2016_Conch_Deep <- filter(coral_2016, sitename == "Conch Deep")

coral_2016_Conch_Deep_macro <- summarise_at(coral_2016_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Conch_Deep_coral <- summarise_at(coral_2016_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Conch_Deep_merge <- merge(coral_2016_Conch_Deep_coral,coral_2016_Conch_Deep_macro)
coral_2016_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2016_Alligator_Deep <- filter(coral_2016, sitename == "Alligator Deep")

coral_2016_Alligator_Deep_macro <- summarise_at(coral_2016_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Alligator_Deep_coral <- summarise_at(coral_2016_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Alligator_Deep_merge <- merge(coral_2016_Alligator_Deep_coral,coral_2016_Alligator_Deep_macro)
coral_2016_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2016_Tennessee_Deep <- filter(coral_2016, sitename == "Tennessee Deep")

coral_2016_Tennessee_Deep_macro <- summarise_at(coral_2016_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Tennessee_Deep_coral <- summarise_at(coral_2016_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Tennessee_Deep_merge <- merge(coral_2016_Tennessee_Deep_coral,coral_2016_Tennessee_Deep_macro)
coral_2016_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2016_Sombrero_Deep <- filter(coral_2016, sitename == "Sombrero Deep")

coral_2016_Sombrero_Deep_macro <- summarise_at(coral_2016_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Sombrero_Deep_coral <- summarise_at(coral_2016_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Sombrero_Deep_merge <- merge(coral_2016_Sombrero_Deep_coral,coral_2016_Sombrero_Deep_macro)
coral_2016_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2016_Looe_Key_Deep <- filter(coral_2016, sitename == "Looe Key Deep")

coral_2016_Looe_Key_Deep_macro <- summarise_at(coral_2016_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Looe_Key_Deep_coral <- summarise_at(coral_2016_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Looe_Key_Deep_merge <- merge(coral_2016_Looe_Key_Deep_coral,coral_2016_Looe_Key_Deep_macro)
coral_2016_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2016_Eastern_Sambo_Deep <- filter(coral_2016, sitename == "Eastern Sambo Deep")

coral_2016_Eastern_Sambo_Deep_macro <- summarise_at(coral_2016_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Eastern_Sambo_Deep_coral <- summarise_at(coral_2016_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Eastern_Sambo_Deep_merge <- merge(coral_2016_Eastern_Sambo_Deep_coral,coral_2016_Eastern_Sambo_Deep_macro)
coral_2016_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2016_Western_Sambo_Deep <- filter(coral_2016, sitename == "Western Sambo Deep")

coral_2016_Western_Sambo_Deep_macro <- summarise_at(coral_2016_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Western_Sambo_Deep_coral <- summarise_at(coral_2016_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Western_Sambo_Deep_merge <- merge(coral_2016_Western_Sambo_Deep_coral,coral_2016_Western_Sambo_Deep_macro)
coral_2016_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2016_Rock_Key_Deep <- filter(coral_2016, sitename == "Rock Key Deep")

coral_2016_Rock_Key_Deep_macro <- summarise_at(coral_2016_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Rock_Key_Deep_coral <- summarise_at(coral_2016_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Rock_Key_Deep_merge <- merge(coral_2016_Rock_Key_Deep_coral,coral_2016_Rock_Key_Deep_macro)
coral_2016_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2016_Sand_Key_Deep <- filter(coral_2016, sitename == "Sand Key Deep")

coral_2016_Sand_Key_Deep_macro <- summarise_at(coral_2016_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Sand_Key_Deep_coral <- summarise_at(coral_2016_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Sand_Key_Deep_merge <- merge(coral_2016_Sand_Key_Deep_coral,coral_2016_Sand_Key_Deep_macro)
coral_2016_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2016_Bird_Key_Reef <- filter(coral_2016, sitename == "Bird Key Reef")

coral_2016_Bird_Key_Reef_macro <- summarise_at(coral_2016_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Bird_Key_Reef_coral <- summarise_at(coral_2016_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Bird_Key_Reef_merge <- merge(coral_2016_Bird_Key_Reef_coral,coral_2016_Bird_Key_Reef_macro)
coral_2016_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2016_Black_Coral_Rock <- filter(coral_2016, sitename == "Black Coral Rock")

coral_2016_Black_Coral_Rock_macro <- summarise_at(coral_2016_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Black_Coral_Rock_coral <- summarise_at(coral_2016_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Black_Coral_Rock_merge <- merge(coral_2016_Black_Coral_Rock_coral,coral_2016_Black_Coral_Rock_macro)
coral_2016_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2016_White_Shoal <- filter(coral_2016, sitename == "White Shoal")

coral_2016_White_Shoal_macro <- summarise_at(coral_2016_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_White_Shoal_coral <- summarise_at(coral_2016_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2016_White_Shoal_merge <- merge(coral_2016_White_Shoal_coral,coral_2016_White_Shoal_macro)
coral_2016_White_Shoal_merge$sitename <- "White Shoal"



coral_2016_Palm_Beach_1 <- filter(coral_2016, sitename == "Palm Beach 1")

coral_2016_Palm_Beach_1_macro <- summarise_at(coral_2016_Palm_Beach_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Palm_Beach_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Palm_Beach_1_coral <- summarise_at(coral_2016_Palm_Beach_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Palm_Beach_1_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Palm_Beach_1_merge <- merge(coral_2016_Palm_Beach_1_coral,coral_2016_Palm_Beach_1_macro)
coral_2016_Palm_Beach_1_merge$sitename <- "Palm Beach 1"


coral_2016_Palm_Beach_2 <- filter(coral_2016, sitename == "Palm Beach 2")

coral_2016_Palm_Beach_2_macro <- summarise_at(coral_2016_Palm_Beach_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Palm_Beach_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Palm_Beach_2_coral <- summarise_at(coral_2016_Palm_Beach_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Palm_Beach_2_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Palm_Beach_2_merge <- merge(coral_2016_Palm_Beach_2_coral,coral_2016_Palm_Beach_2_macro)
coral_2016_Palm_Beach_2_merge$sitename <- "Palm Beach 2"


coral_2016_Palm_Beach_3 <- filter(coral_2016, sitename == "Palm Beach 3")

coral_2016_Palm_Beach_3_macro <- summarise_at(coral_2016_Palm_Beach_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Palm_Beach_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Palm_Beach_3_coral <- summarise_at(coral_2016_Palm_Beach_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Palm_Beach_3_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Palm_Beach_3_merge <- merge(coral_2016_Palm_Beach_3_coral,coral_2016_Palm_Beach_3_macro)
coral_2016_Palm_Beach_3_merge$sitename <- "Palm Beach 3"



coral_2016_Palm_Beach_4 <- filter(coral_2016, sitename == "Palm Beach 4")

coral_2016_Palm_Beach_4_macro <- summarise_at(coral_2016_Palm_Beach_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Palm_Beach_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Palm_Beach_4_coral <- summarise_at(coral_2016_Palm_Beach_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Palm_Beach_4_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Palm_Beach_4_merge <- merge(coral_2016_Palm_Beach_4_coral,coral_2016_Palm_Beach_4_macro)
coral_2016_Palm_Beach_4_merge$sitename <- "Palm Beach 4"



coral_2016_Palm_Beach_5 <- filter(coral_2016, sitename == "Palm Beach 5")

coral_2016_Palm_Beach_5_macro <- summarise_at(coral_2016_Palm_Beach_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Palm_Beach_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Palm_Beach_5_coral <- summarise_at(coral_2016_Palm_Beach_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Palm_Beach_5_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Palm_Beach_5_merge <- merge(coral_2016_Palm_Beach_5_coral,coral_2016_Palm_Beach_5_macro)
coral_2016_Palm_Beach_5_merge$sitename <- "Palm Beach 5"



coral_2016_Broward_County_1 <- filter(coral_2016, sitename == "Broward County 1")

coral_2016_Broward_County_1_macro <- summarise_at(coral_2016_Broward_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Broward_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Broward_County_1_coral <- summarise_at(coral_2016_Broward_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Broward_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Broward_County_1_merge <- merge(coral_2016_Broward_County_1_coral,coral_2016_Broward_County_1_macro)
coral_2016_Broward_County_1_merge$sitename <- "Broward County 1"


coral_2016_Broward_County_2 <- filter(coral_2016, sitename == "Broward County 2")

coral_2016_Broward_County_2_macro <- summarise_at(coral_2016_Broward_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Broward_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Broward_County_2_coral <- summarise_at(coral_2016_Broward_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Broward_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Broward_County_2_merge <- merge(coral_2016_Broward_County_2_coral,coral_2016_Broward_County_2_macro)
coral_2016_Broward_County_2_merge$sitename <- "Broward County 2"


coral_2016_Broward_County_3 <- filter(coral_2016, sitename == "Broward County 3")

coral_2016_Broward_County_3_macro <- summarise_at(coral_2016_Broward_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Broward_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Broward_County_3_coral <- summarise_at(coral_2016_Broward_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Broward_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Broward_County_3_merge <- merge(coral_2016_Broward_County_3_coral,coral_2016_Broward_County_3_macro)
coral_2016_Broward_County_3_merge$sitename <- "Broward County 3"


coral_2016_Broward_County_4 <- filter(coral_2016, sitename == "Broward County 4")

coral_2016_Broward_County_4_macro <- summarise_at(coral_2016_Broward_County_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Broward_County_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Broward_County_4_coral <- summarise_at(coral_2016_Broward_County_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Broward_County_4_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Broward_County_4_merge <- merge(coral_2016_Broward_County_4_coral,coral_2016_Broward_County_4_macro)
coral_2016_Broward_County_4_merge$sitename <- "Broward County 4"


coral_2016_Broward_County_5 <- filter(coral_2016, sitename == "Broward County 5")

coral_2016_Broward_County_5_macro <- summarise_at(coral_2016_Broward_County_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Broward_County_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Broward_County_5_coral <- summarise_at(coral_2016_Broward_County_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Broward_County_5_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Broward_County_5_merge <- merge(coral_2016_Broward_County_5_coral,coral_2016_Broward_County_5_macro)
coral_2016_Broward_County_5_merge$sitename <- "Broward County 5"


coral_2016_Broward_County_6 <- filter(coral_2016, sitename == "Broward County 6")

coral_2016_Broward_County_6_macro <- summarise_at(coral_2016_Broward_County_6,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Broward_County_6_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Broward_County_6_coral <- summarise_at(coral_2016_Broward_County_6,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Broward_County_6_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Broward_County_6_merge <- merge(coral_2016_Broward_County_6_coral,coral_2016_Broward_County_6_macro)
coral_2016_Broward_County_6_merge$sitename <- "Broward County 6"




coral_2016_Broward_County_A <- filter(coral_2016, sitename == "Broward County A")

coral_2016_Broward_County_A_macro <- summarise_at(coral_2016_Broward_County_A,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Broward_County_A_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Broward_County_A_coral <- summarise_at(coral_2016_Broward_County_A,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Broward_County_A_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Broward_County_A_merge <- merge(coral_2016_Broward_County_A_coral,coral_2016_Broward_County_A_macro)
coral_2016_Broward_County_A_merge$sitename <- "Broward County A"



coral_2016_Dade_County_1 <- filter(coral_2016, sitename == "Dade County 1")

coral_2016_Dade_County_1_macro <- summarise_at(coral_2016_Dade_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dade_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Dade_County_1_coral <- summarise_at(coral_2016_Dade_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dade_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Dade_County_1_merge <- merge(coral_2016_Dade_County_1_coral,coral_2016_Dade_County_1_macro)
coral_2016_Dade_County_1_merge$sitename <- "Dade County 1"


coral_2016_Dade_County_2 <- filter(coral_2016, sitename == "Dade County 2")

coral_2016_Dade_County_2_macro <- summarise_at(coral_2016_Dade_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dade_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Dade_County_2_coral <- summarise_at(coral_2016_Dade_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dade_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Dade_County_2_merge <- merge(coral_2016_Dade_County_2_coral,coral_2016_Dade_County_2_macro)
coral_2016_Dade_County_2_merge$sitename <- "Dade County 2"


coral_2016_Dade_County_3 <- filter(coral_2016, sitename == "Dade County 3")

coral_2016_Dade_County_3_macro <- summarise_at(coral_2016_Dade_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dade_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Dade_County_3_coral <- summarise_at(coral_2016_Dade_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dade_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Dade_County_3_merge <- merge(coral_2016_Dade_County_3_coral,coral_2016_Dade_County_3_macro)
coral_2016_Dade_County_3_merge$sitename <- "Dade County 3"


coral_2016_Dade_County_4 <- filter(coral_2016, sitename == "Dade County 4")

coral_2016_Dade_County_4_macro <- summarise_at(coral_2016_Dade_County_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dade_County_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Dade_County_4_coral <- summarise_at(coral_2016_Dade_County_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dade_County_4_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Dade_County_4_merge <- merge(coral_2016_Dade_County_4_coral,coral_2016_Dade_County_4_macro)
coral_2016_Dade_County_4_merge$sitename <- "Dade County 4"


coral_2016_Dade_County_5 <- filter(coral_2016, sitename == "Dade County 5")

coral_2016_Dade_County_5_macro <- summarise_at(coral_2016_Dade_County_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dade_County_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Dade_County_5_coral <- summarise_at(coral_2016_Dade_County_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dade_County_5_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Dade_County_5_merge <- merge(coral_2016_Dade_County_5_coral,coral_2016_Dade_County_5_macro)
coral_2016_Dade_County_5_merge$sitename <- "Dade County 5"


coral_2016_Dade_County_6 <- filter(coral_2016, sitename == "Dade County 6")

coral_2016_Dade_County_6_macro <- summarise_at(coral_2016_Dade_County_6,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dade_County_6_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Dade_County_6_coral <- summarise_at(coral_2016_Dade_County_6,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dade_County_6_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Dade_County_6_merge <- merge(coral_2016_Dade_County_6_coral,coral_2016_Dade_County_6_macro)
coral_2016_Dade_County_6_merge$sitename <- "Dade County 6"


coral_2016_Dade_County_7 <- filter(coral_2016, sitename == "Dade County 7")

coral_2016_Dade_County_7_macro <- summarise_at(coral_2016_Dade_County_7,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dade_County_7_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Dade_County_7_coral <- summarise_at(coral_2016_Dade_County_7,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dade_County_7_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Dade_County_7_merge <- merge(coral_2016_Dade_County_7_coral,coral_2016_Dade_County_7_macro)
coral_2016_Dade_County_7_merge$sitename <- "Dade County 7"


coral_2016_Dade_County_8 <- filter(coral_2016, sitename == "Dade County 8")

coral_2016_Dade_County_8_macro <- summarise_at(coral_2016_Dade_County_8,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dade_County_8_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Dade_County_8_coral <- summarise_at(coral_2016_Dade_County_8,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Dade_County_8_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Dade_County_8_merge <- merge(coral_2016_Dade_County_8_coral,coral_2016_Dade_County_8_macro)
coral_2016_Dade_County_8_merge$sitename <- "Dade County 8"



coral_2016_Mayers_Peak <- filter(coral_2016, sitename == "Mayer's Peak")

coral_2016_Mayers_Peak_macro <- summarise_at(coral_2016_Mayers_Peak,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Mayers_Peak_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Mayers_Peak_coral <- summarise_at(coral_2016_Mayers_Peak,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Mayers_Peak_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Mayers_Peak_merge <- merge(coral_2016_Mayers_Peak_coral,coral_2016_Mayers_Peak_macro)
coral_2016_Mayers_Peak_merge$sitename <- "Mayer's Peak"


coral_2016_Temptation_Rock <- filter(coral_2016, sitename == "Temptation Rock")

coral_2016_Temptation_Rock_macro <- summarise_at(coral_2016_Temptation_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Temptation_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Temptation_Rock_coral <- summarise_at(coral_2016_Temptation_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Temptation_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Temptation_Rock_merge <- merge(coral_2016_Temptation_Rock_coral,coral_2016_Temptation_Rock_macro)
coral_2016_Temptation_Rock_merge$sitename <- "Temptation Rock"


coral_2016_Palmata_Patch <- filter(coral_2016, sitename == "Palmata Patch")

coral_2016_Palmata_Patch_macro <- summarise_at(coral_2016_Palmata_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Palmata_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Palmata_Patch_coral <- summarise_at(coral_2016_Palmata_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Palmata_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Palmata_Patch_merge <- merge(coral_2016_Palmata_Patch_coral,coral_2016_Palmata_Patch_macro)
coral_2016_Palmata_Patch_merge$sitename <- "Palmata Patch"


coral_2016_Prolifera_Patch <- filter(coral_2016, sitename == "Prolifera Patch")

coral_2016_Prolifera_Patch_macro <- summarise_at(coral_2016_Prolifera_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Prolifera_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Prolifera_Patch_coral <- summarise_at(coral_2016_Prolifera_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Prolifera_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Prolifera_Patch_merge <- merge(coral_2016_Prolifera_Patch_coral,coral_2016_Prolifera_Patch_macro)
coral_2016_Prolifera_Patch_merge$sitename <- "Prolifera Patch"


coral_2016_Loggerhead_Patch <- filter(coral_2016, sitename == "Loggerhead Patch")

coral_2016_Loggerhead_Patch_macro <- summarise_at(coral_2016_Loggerhead_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Loggerhead_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Loggerhead_Patch_coral <- summarise_at(coral_2016_Loggerhead_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Loggerhead_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Loggerhead_Patch_merge <- merge(coral_2016_Loggerhead_Patch_coral,coral_2016_Loggerhead_Patch_macro)
coral_2016_Loggerhead_Patch_merge$sitename <- "Loggerhead Patch"


coral_2016_Martin_County_1 <- filter(coral_2016, sitename == "Martin County 1")

coral_2016_Martin_County_1_macro <- summarise_at(coral_2016_Martin_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Martin_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Martin_County_1_coral <- summarise_at(coral_2016_Martin_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Martin_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Martin_County_1_merge <- merge(coral_2016_Martin_County_1_coral,coral_2016_Martin_County_1_macro)
coral_2016_Martin_County_1_merge$sitename <- "Martin County 1"


coral_2016_Martin_County_2 <- filter(coral_2016, sitename == "Martin County 2")

coral_2016_Martin_County_2_macro <- summarise_at(coral_2016_Martin_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Martin_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Martin_County_2_coral <- summarise_at(coral_2016_Martin_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Martin_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Martin_County_2_merge <- merge(coral_2016_Martin_County_2_coral,coral_2016_Martin_County_2_macro)
coral_2016_Martin_County_2_merge$sitename <- "Martin County 2"


coral_2016_Wonderland <- filter(coral_2016, sitename == "Wonderland")

coral_2016_Wonderland_macro <- summarise_at(coral_2016_Wonderland,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Wonderland_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Wonderland_coral <- summarise_at(coral_2016_Wonderland,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Wonderland_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Wonderland_merge <- merge(coral_2016_Wonderland_coral,coral_2016_Wonderland_macro)
coral_2016_Wonderland_merge$sitename <- "Wonderland"


coral_2016_Red_Dun_Reef <- filter(coral_2016, sitename == "Red Dun Reef")

coral_2016_Red_Dun_Reef_macro <- summarise_at(coral_2016_Red_Dun_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Red_Dun_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Red_Dun_Reef_coral <- summarise_at(coral_2016_Red_Dun_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Red_Dun_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Red_Dun_Reef_merge <- merge(coral_2016_Red_Dun_Reef_coral,coral_2016_Red_Dun_Reef_macro)
coral_2016_Red_Dun_Reef_merge$sitename <- "Red Dun Reef"


coral_2016_Rawa_Reef <- filter(coral_2016, sitename == "Rawa Reef")

coral_2016_Rawa_Reef_macro <- summarise_at(coral_2016_Rawa_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Rawa_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Rawa_Reef_coral <- summarise_at(coral_2016_Rawa_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Rawa_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Rawa_Reef_merge <- merge(coral_2016_Rawa_Reef_coral,coral_2016_Rawa_Reef_macro)
coral_2016_Rawa_Reef_merge$sitename <- "Rawa Reef"


coral_2016_Thor <- filter(coral_2016, sitename == "Thor")

coral_2016_Thor_macro <- summarise_at(coral_2016_Thor,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Thor_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Thor_coral <- summarise_at(coral_2016_Thor,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Thor_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Thor_merge <- merge(coral_2016_Thor_coral,coral_2016_Thor_macro)
coral_2016_Thor_merge$sitename <- "Thor"


coral_2016_Burr_Fish <- filter(coral_2016, sitename == "Burr Fish")

coral_2016_Burr_Fish_macro <- summarise_at(coral_2016_Burr_Fish,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Burr_Fish_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Burr_Fish_coral <- summarise_at(coral_2016_Burr_Fish,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Burr_Fish_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Burr_Fish_merge <- merge(coral_2016_Burr_Fish_coral,coral_2016_Burr_Fish_macro)
coral_2016_Burr_Fish_merge$sitename <- "Burr Fish"


coral_2016_Two_Patches <- filter(coral_2016, sitename == "Two Patches")

coral_2016_Two_Patches_macro <- summarise_at(coral_2016_Two_Patches,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Two_Patches_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Two_Patches_coral <- summarise_at(coral_2016_Two_Patches,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Two_Patches_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Two_Patches_merge <- merge(coral_2016_Two_Patches_coral,coral_2016_Two_Patches_macro)
coral_2016_Two_Patches_merge$sitename <- "Two Patches"


coral_2016_The_Maze <- filter(coral_2016, sitename == "The Maze")

coral_2016_The_Maze_macro <- summarise_at(coral_2016_The_Maze,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_The_Maze_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_The_Maze_coral <- summarise_at(coral_2016_The_Maze,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_The_Maze_coral) <- c("Coral_Average","Coral_SD")

coral_2016_The_Maze_merge <- merge(coral_2016_The_Maze_coral,coral_2016_The_Maze_macro)
coral_2016_The_Maze_merge$sitename <- "The Maze"


coral_2016_Davis_Rock <- filter(coral_2016, sitename == "Davis Rock")

coral_2016_Davis_Rock_macro <- summarise_at(coral_2016_Davis_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Davis_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Davis_Rock_coral <- summarise_at(coral_2016_Davis_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Davis_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Davis_Rock_merge <- merge(coral_2016_Davis_Rock_coral,coral_2016_Davis_Rock_macro)
coral_2016_Davis_Rock_merge$sitename <- "Davis Rock"


coral_2016_Texas_Rock <- filter(coral_2016, sitename == "Texas Rock")

coral_2016_Texas_Rock_macro <- summarise_at(coral_2016_Texas_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Texas_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2016_Texas_Rock_coral <- summarise_at(coral_2016_Texas_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2016_Texas_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2016_Texas_Rock_merge <- merge(coral_2016_Texas_Rock_coral,coral_2016_Texas_Rock_macro)
coral_2016_Texas_Rock_merge$sitename <- "Texas Rock"


coral_2016_merged <- rbind(coral_2016_Carysfort_Shallow_merge,
                           coral_2016_Grecian_Rocks_merge,coral_2016_Molasses_Shallow_merge,coral_2016_Conch_Shallow_merge,
                           coral_2016_Alligator_Shallow_merge,coral_2016_Tennessee_Shallow_merge,coral_2016_Sombrero_Shallow_merge,
                           coral_2016_Looe_Key_Shallow_merge,coral_2016_Eastern_Sambo_Shallow_merge,coral_2016_Western_Sambo_Shallow_merge,
                           coral_2016_Rock_Key_Shallow_merge,coral_2016_Sand_Key_Shallow_merge,coral_2016_Carysfort_Deep_merge,
                           coral_2016_Molasses_Deep_merge,coral_2016_Conch_Deep_merge,
                           coral_2016_Tennessee_Deep_merge,coral_2016_Sombrero_Deep_merge,coral_2016_Looe_Key_Deep_merge,
                           coral_2016_Eastern_Sambo_Deep_merge,coral_2016_Western_Sambo_Deep_merge,coral_2016_Rock_Key_Deep_merge,
                           coral_2016_Sand_Key_Deep_merge,coral_2016_Bird_Key_Reef_merge,coral_2016_Black_Coral_Rock_merge,
                           coral_2016_Palm_Beach_1_merge,coral_2016_Palm_Beach_2_merge,
                           coral_2016_Palm_Beach_3_merge,coral_2016_Broward_County_1_merge,coral_2016_Broward_County_2_merge,
                           coral_2016_Broward_County_3_merge,coral_2016_Broward_County_A_merge,coral_2016_Dade_County_1_merge,
                           coral_2016_Dade_County_2_merge,coral_2016_Dade_County_3_merge,coral_2016_Mayers_Peak_merge,
                           coral_2016_Loggerhead_Patch_merge,
                           coral_2016_Palm_Beach_4_merge,coral_2016_Palm_Beach_5_merge,
                           coral_2016_Dade_County_4_merge,coral_2016_Martin_County_1_merge,
                           coral_2016_Martin_County_2_merge,coral_2016_Alligator_Deep_merge)


coral_2016_merged$Year <- "2016"



coral_2017 <- import("2017_all.xlsx")
coral_2017$Sample_Year <- "2017"
coral_2017 <- select(coral_2017, Sample_Year, sitename, Macroalgae, Stony_coral)



unique_2016 <- unique(coral_2016$sitename)
view(unique_2016)
unique_2017 <- unique(coral_2017$sitename)
view(unique_2017)



# coral_2017_Rattlesnake <- filter(coral_2017, sitename == "Rattlesnake")
# 
# coral_2017_Rattlesnake_macro <- summarise_at(coral_2017_Rattlesnake,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2017_Rattlesnake_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2017_Rattlesnake_coral <- summarise_at(coral_2017_Rattlesnake,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2017_Rattlesnake_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2017_Rattlesnake_merge <- merge(coral_2017_Rattlesnake_coral,coral_2017_Rattlesnake_macro)
# coral_2017_Rattlesnake_merge$sitename <- "Rattlesnake"
# 
# 
# 
# 
# coral_2017_El_Radabob <- filter(coral_2017, sitename == "El Radabob")
# 
# coral_2017_El_Radabob_macro <- summarise_at(coral_2017_El_Radabob,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2017_El_Radabob_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2017_El_Radabob_coral <- summarise_at(coral_2017_El_Radabob,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2017_El_Radabob_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2017_El_Radabob_merge <- merge(coral_2017_El_Radabob_coral,coral_2017_El_Radabob_macro)
# coral_2017_El_Radabob_merge$sitename <- "El Radabob"
# 
# 
# coral_2017_Dove_Key <- filter(coral_2017, sitename == "Dove Key")
# 
# coral_2017_Dove_Key_macro <- summarise_at(coral_2017_Dove_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2017_Dove_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2017_Dove_Key_coral <- summarise_at(coral_2017_Dove_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2017_Dove_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2017_Dove_Key_merge <- merge(coral_2017_Dove_Key_coral,coral_2017_Dove_Key_macro)
# coral_2017_Dove_Key_merge$sitename <- "Dove Key"
# 
# 
# coral_2017_Long_Key <- filter(coral_2017, sitename == "Long Key")
# 
# coral_2017_Long_Key_macro <- summarise_at(coral_2017_Long_Key,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2017_Long_Key_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2017_Long_Key_coral <- summarise_at(coral_2017_Long_Key,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2017_Long_Key_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2017_Long_Key_merge <- merge(coral_2017_Long_Key_coral,coral_2017_Long_Key_macro)
# coral_2017_Long_Key_merge$sitename <- "Long Key"
# 
# 
# 
# coral_2017_Moser_Channel <- filter(coral_2017, sitename == "Moser Channel")
# 
# coral_2017_Moser_Channel_macro <- summarise_at(coral_2017_Moser_Channel,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2017_Moser_Channel_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2017_Moser_Channel_coral <- summarise_at(coral_2017_Moser_Channel,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2017_Moser_Channel_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2017_Moser_Channel_merge <- merge(coral_2017_Moser_Channel_coral,coral_2017_Moser_Channel_macro)
# coral_2017_Moser_Channel_merge$sitename <- "Moser Channel"
# 
# 
# coral_2017_Molasses_Keys <- filter(coral_2017, sitename == "Molasses Keys")
# 
# coral_2017_Molasses_Keys_macro <- summarise_at(coral_2017_Molasses_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2017_Molasses_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")
# 
# coral_2017_Molasses_Keys_coral <- summarise_at(coral_2017_Molasses_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
# colnames(coral_2017_Molasses_Keys_coral) <- c("Coral_Average","Coral_SD")
# 
# coral_2017_Molasses_Keys_merge <- merge(coral_2017_Molasses_Keys_coral,coral_2017_Molasses_Keys_macro)
# coral_2017_Molasses_Keys_merge$sitename <- "Molasses Keys"


coral_2017_Content_Keys <- filter(coral_2017, sitename == "Content Keys")

coral_2017_Content_Keys_macro <- summarise_at(coral_2017_Content_Keys,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Content_Keys_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Content_Keys_coral <- summarise_at(coral_2017_Content_Keys,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Content_Keys_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Content_Keys_merge <- merge(coral_2017_Content_Keys_coral,coral_2017_Content_Keys_macro)
coral_2017_Content_Keys_merge$sitename <- "Content Keys"


coral_2017_Turtle <- filter(coral_2017, sitename == "Turtle")

coral_2017_Turtle_macro <- summarise_at(coral_2017_Turtle,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Turtle_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Turtle_coral <- summarise_at(coral_2017_Turtle,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Turtle_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Turtle_merge <- merge(coral_2017_Turtle_coral,coral_2017_Turtle_macro)
coral_2017_Turtle_merge$sitename <- "Turtle"


coral_2017_Porter_Patch <- filter(coral_2017, sitename == "Porter Patch")

coral_2017_Porter_Patch_macro <- summarise_at(coral_2017_Porter_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Porter_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Porter_Patch_coral <- summarise_at(coral_2017_Porter_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Porter_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Porter_Patch_merge <- merge(coral_2017_Porter_Patch_coral,coral_2017_Porter_Patch_macro)
coral_2017_Porter_Patch_merge$sitename <- "Porter Patch"


coral_2017_Admiral <- filter(coral_2017, sitename == "Admiral")

coral_2017_Admiral_macro <- summarise_at(coral_2017_Admiral,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Admiral_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Admiral_coral <- summarise_at(coral_2017_Admiral,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Admiral_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Admiral_merge <- merge(coral_2017_Admiral_coral,coral_2017_Admiral_macro)
coral_2017_Admiral_merge$sitename <- "Admiral"


coral_2017_West_Turtle_Shoal <- filter(coral_2017, sitename == "West Turtle Shoal")

coral_2017_West_Turtle_Shoal_macro <- summarise_at(coral_2017_West_Turtle_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_West_Turtle_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_West_Turtle_Shoal_coral <- summarise_at(coral_2017_West_Turtle_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_West_Turtle_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2017_West_Turtle_Shoal_merge <- merge(coral_2017_West_Turtle_Shoal_coral,coral_2017_West_Turtle_Shoal_macro)
coral_2017_West_Turtle_Shoal_merge$sitename <- "West Turtle Shoal"


coral_2017_Dustan_Rocks <- filter(coral_2017, sitename == "Dustan Rocks")

coral_2017_Dustan_Rocks_macro <- summarise_at(coral_2017_Dustan_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dustan_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Dustan_Rocks_coral <- summarise_at(coral_2017_Dustan_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dustan_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Dustan_Rocks_merge <- merge(coral_2017_Dustan_Rocks_coral,coral_2017_Dustan_Rocks_macro)
coral_2017_Dustan_Rocks_merge$sitename <- "Dustan Rocks"


coral_2017_West_Washer_Women <- filter(coral_2017, sitename == "West Washer Women")

coral_2017_West_Washer_Women_macro <- summarise_at(coral_2017_West_Washer_Women,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_West_Washer_Women_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_West_Washer_Women_coral <- summarise_at(coral_2017_West_Washer_Women,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_West_Washer_Women_coral) <- c("Coral_Average","Coral_SD")

coral_2017_West_Washer_Women_merge <- merge(coral_2017_West_Washer_Women_coral,coral_2017_West_Washer_Women_macro)
coral_2017_West_Washer_Women_merge$sitename <- "West Washer Women"


coral_2017_Western_Head <- filter(coral_2017, sitename == "Western Head")

coral_2017_Western_Head_macro <- summarise_at(coral_2017_Western_Head,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Western_Head_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Western_Head_coral <- summarise_at(coral_2017_Western_Head,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Western_Head_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Western_Head_merge <- merge(coral_2017_Western_Head_coral,coral_2017_Western_Head_macro)
coral_2017_Western_Head_merge$sitename <- "Western Head"


coral_2017_Cliff_Green <- filter(coral_2017, sitename == "Cliff Green")

coral_2017_Cliff_Green_macro <- summarise_at(coral_2017_Cliff_Green,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Cliff_Green_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Cliff_Green_coral <- summarise_at(coral_2017_Cliff_Green,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Cliff_Green_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Cliff_Green_merge <- merge(coral_2017_Cliff_Green_coral,coral_2017_Cliff_Green_macro)
coral_2017_Cliff_Green_merge$sitename <- "Cliff Green"


coral_2017_Smith_Shoal <- filter(coral_2017, sitename == "Smith Shoal")

coral_2017_Smith_Shoal_macro <- summarise_at(coral_2017_Smith_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Smith_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Smith_Shoal_coral <- summarise_at(coral_2017_Smith_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Smith_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Smith_Shoal_merge <- merge(coral_2017_Smith_Shoal_coral,coral_2017_Smith_Shoal_macro)
coral_2017_Smith_Shoal_merge$sitename <- "Smith Shoal"


coral_2017_Jaap_Reef <- filter(coral_2017, sitename == "Jaap Reef")

coral_2017_Jaap_Reef_macro <- summarise_at(coral_2017_Jaap_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Jaap_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Jaap_Reef_coral <- summarise_at(coral_2017_Jaap_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Jaap_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Jaap_Reef_merge <- merge(coral_2017_Jaap_Reef_coral,coral_2017_Jaap_Reef_macro)
coral_2017_Jaap_Reef_merge$sitename <- "Jaap Reef"


coral_2017_Carysfort_Shallow <- filter(coral_2017, sitename == "Carysfort Shallow")

coral_2017_Carysfort_Shallow_macro <- summarise_at(coral_2017_Carysfort_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Carysfort_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Carysfort_Shallow_coral <- summarise_at(coral_2017_Carysfort_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Carysfort_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Carysfort_Shallow_merge <- merge(coral_2017_Carysfort_Shallow_coral,coral_2017_Carysfort_Shallow_macro)
coral_2017_Carysfort_Shallow_merge$sitename <- "Carysfort Shallow"



coral_2017_Grecian_Rocks <- filter(coral_2017, sitename == "Grecian Rocks")

coral_2017_Grecian_Rocks_macro <- summarise_at(coral_2017_Grecian_Rocks,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Grecian_Rocks_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Grecian_Rocks_coral <- summarise_at(coral_2017_Grecian_Rocks,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Grecian_Rocks_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Grecian_Rocks_merge <- merge(coral_2017_Grecian_Rocks_coral,coral_2017_Grecian_Rocks_macro)
coral_2017_Grecian_Rocks_merge$sitename <- "Grecian Rocks"



coral_2017_Molasses_Shallow <- filter(coral_2017, sitename == "Molasses Shallow")

coral_2017_Molasses_Shallow_macro <- summarise_at(coral_2017_Molasses_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Molasses_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Molasses_Shallow_coral <- summarise_at(coral_2017_Molasses_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Molasses_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Molasses_Shallow_merge <- merge(coral_2017_Molasses_Shallow_coral,coral_2017_Molasses_Shallow_macro)
coral_2017_Molasses_Shallow_merge$sitename <- "Molasses Shallow"


coral_2017_Conch_Shallow <- filter(coral_2017, sitename == "Conch Shallow")

coral_2017_Conch_Shallow_macro <- summarise_at(coral_2017_Conch_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Conch_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Conch_Shallow_coral <- summarise_at(coral_2017_Conch_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Conch_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Conch_Shallow_merge <- merge(coral_2017_Conch_Shallow_coral,coral_2017_Conch_Shallow_macro)
coral_2017_Conch_Shallow_merge$sitename <- "Conch Shallow"


coral_2017_Alligator_Shallow <- filter(coral_2017, sitename == "Alligator Shallow")

coral_2017_Alligator_Shallow_macro <- summarise_at(coral_2017_Alligator_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Alligator_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Alligator_Shallow_coral <- summarise_at(coral_2017_Alligator_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Alligator_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Alligator_Shallow_merge <- merge(coral_2017_Alligator_Shallow_coral,coral_2017_Alligator_Shallow_macro)
coral_2017_Alligator_Shallow_merge$sitename <- "Alligator Shallow"


coral_2017_Tennessee_Shallow <- filter(coral_2017, sitename == "Tennessee Shallow")

coral_2017_Tennessee_Shallow_macro <- summarise_at(coral_2017_Tennessee_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Tennessee_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Tennessee_Shallow_coral <- summarise_at(coral_2017_Tennessee_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Tennessee_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Tennessee_Shallow_merge <- merge(coral_2017_Tennessee_Shallow_coral,coral_2017_Tennessee_Shallow_macro)
coral_2017_Tennessee_Shallow_merge$sitename <- "Tennessee Shallow"


coral_2017_Sombrero_Shallow <- filter(coral_2017, sitename == "Sombrero Shallow")

coral_2017_Sombrero_Shallow_macro <- summarise_at(coral_2017_Sombrero_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Sombrero_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Sombrero_Shallow_coral <- summarise_at(coral_2017_Sombrero_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Sombrero_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Sombrero_Shallow_merge <- merge(coral_2017_Sombrero_Shallow_coral,coral_2017_Sombrero_Shallow_macro)
coral_2017_Sombrero_Shallow_merge$sitename <- "Sombrero Shallow"


coral_2017_Looe_Key_Shallow <- filter(coral_2017, sitename == "Looe Key Shallow")

coral_2017_Looe_Key_Shallow_macro <- summarise_at(coral_2017_Looe_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Looe_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Looe_Key_Shallow_coral <- summarise_at(coral_2017_Looe_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Looe_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Looe_Key_Shallow_merge <- merge(coral_2017_Looe_Key_Shallow_coral,coral_2017_Looe_Key_Shallow_macro)
coral_2017_Looe_Key_Shallow_merge$sitename <- "Looe Key Shallow"


coral_2017_Eastern_Sambo_Shallow <- filter(coral_2017, sitename == "Eastern Sambo Shallow")

coral_2017_Eastern_Sambo_Shallow_macro <- summarise_at(coral_2017_Eastern_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Eastern_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Eastern_Sambo_Shallow_coral <- summarise_at(coral_2017_Eastern_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Eastern_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Eastern_Sambo_Shallow_merge <- merge(coral_2017_Eastern_Sambo_Shallow_coral,coral_2017_Eastern_Sambo_Shallow_macro)
coral_2017_Eastern_Sambo_Shallow_merge$sitename <- "Eastern Sambo Shallow"


coral_2017_Western_Sambo_Shallow <- filter(coral_2017, sitename == "Western Sambo Shallow")

coral_2017_Western_Sambo_Shallow_macro <- summarise_at(coral_2017_Western_Sambo_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Western_Sambo_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Western_Sambo_Shallow_coral <- summarise_at(coral_2017_Western_Sambo_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Western_Sambo_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Western_Sambo_Shallow_merge <- merge(coral_2017_Western_Sambo_Shallow_coral,coral_2017_Western_Sambo_Shallow_macro)
coral_2017_Western_Sambo_Shallow_merge$sitename <- "Western Sambo Shallow"


coral_2017_Rock_Key_Shallow <- filter(coral_2017, sitename == "Rock Key Shallow")

coral_2017_Rock_Key_Shallow_macro <- summarise_at(coral_2017_Rock_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Rock_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Rock_Key_Shallow_coral <- summarise_at(coral_2017_Rock_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Rock_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Rock_Key_Shallow_merge <- merge(coral_2017_Rock_Key_Shallow_coral,coral_2017_Rock_Key_Shallow_macro)
coral_2017_Rock_Key_Shallow_merge$sitename <- "Rock Key Shallow"


coral_2017_Sand_Key_Shallow <- filter(coral_2017, sitename == "Sand Key Shallow")

coral_2017_Sand_Key_Shallow_macro <- summarise_at(coral_2017_Sand_Key_Shallow,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Sand_Key_Shallow_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Sand_Key_Shallow_coral <- summarise_at(coral_2017_Sand_Key_Shallow,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Sand_Key_Shallow_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Sand_Key_Shallow_merge <- merge(coral_2017_Sand_Key_Shallow_coral,coral_2017_Sand_Key_Shallow_macro)
coral_2017_Sand_Key_Shallow_merge$sitename <- "Sand Key Shallow"


coral_2017_Carysfort_Deep <- filter(coral_2017, sitename == "Carysfort Deep")

coral_2017_Carysfort_Deep_macro <- summarise_at(coral_2017_Carysfort_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Carysfort_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Carysfort_Deep_coral <- summarise_at(coral_2017_Carysfort_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Carysfort_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Carysfort_Deep_merge <- merge(coral_2017_Carysfort_Deep_coral,coral_2017_Carysfort_Deep_macro)
coral_2017_Carysfort_Deep_merge$sitename <- "Carysfort Deep"


coral_2017_Molasses_Deep <- filter(coral_2017, sitename == "Molasses Deep")

coral_2017_Molasses_Deep_macro <- summarise_at(coral_2017_Molasses_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Molasses_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Molasses_Deep_coral <- summarise_at(coral_2017_Molasses_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Molasses_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Molasses_Deep_merge <- merge(coral_2017_Molasses_Deep_coral,coral_2017_Molasses_Deep_macro)
coral_2017_Molasses_Deep_merge$sitename <- "Molasses Deep"


coral_2017_Conch_Deep <- filter(coral_2017, sitename == "Conch Deep")

coral_2017_Conch_Deep_macro <- summarise_at(coral_2017_Conch_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Conch_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Conch_Deep_coral <- summarise_at(coral_2017_Conch_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Conch_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Conch_Deep_merge <- merge(coral_2017_Conch_Deep_coral,coral_2017_Conch_Deep_macro)
coral_2017_Conch_Deep_merge$sitename <- "Conch Deep"



coral_2017_Alligator_Deep <- filter(coral_2017, sitename == "Alligator Deep")

coral_2017_Alligator_Deep_macro <- summarise_at(coral_2017_Alligator_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Alligator_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Alligator_Deep_coral <- summarise_at(coral_2017_Alligator_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Alligator_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Alligator_Deep_merge <- merge(coral_2017_Alligator_Deep_coral,coral_2017_Alligator_Deep_macro)
coral_2017_Alligator_Deep_merge$sitename <- "Alligator Deep"


coral_2017_Tennessee_Deep <- filter(coral_2017, sitename == "Tennessee Deep")

coral_2017_Tennessee_Deep_macro <- summarise_at(coral_2017_Tennessee_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Tennessee_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Tennessee_Deep_coral <- summarise_at(coral_2017_Tennessee_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Tennessee_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Tennessee_Deep_merge <- merge(coral_2017_Tennessee_Deep_coral,coral_2017_Tennessee_Deep_macro)
coral_2017_Tennessee_Deep_merge$sitename <- "Tennessee Deep"


coral_2017_Sombrero_Deep <- filter(coral_2017, sitename == "Sombrero Deep")

coral_2017_Sombrero_Deep_macro <- summarise_at(coral_2017_Sombrero_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Sombrero_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Sombrero_Deep_coral <- summarise_at(coral_2017_Sombrero_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Sombrero_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Sombrero_Deep_merge <- merge(coral_2017_Sombrero_Deep_coral,coral_2017_Sombrero_Deep_macro)
coral_2017_Sombrero_Deep_merge$sitename <- "Sombrero Deep"


coral_2017_Looe_Key_Deep <- filter(coral_2017, sitename == "Looe Key Deep")

coral_2017_Looe_Key_Deep_macro <- summarise_at(coral_2017_Looe_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Looe_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Looe_Key_Deep_coral <- summarise_at(coral_2017_Looe_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Looe_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Looe_Key_Deep_merge <- merge(coral_2017_Looe_Key_Deep_coral,coral_2017_Looe_Key_Deep_macro)
coral_2017_Looe_Key_Deep_merge$sitename <- "Looe Key Deep"


coral_2017_Eastern_Sambo_Deep <- filter(coral_2017, sitename == "Eastern Sambo Deep")

coral_2017_Eastern_Sambo_Deep_macro <- summarise_at(coral_2017_Eastern_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Eastern_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Eastern_Sambo_Deep_coral <- summarise_at(coral_2017_Eastern_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Eastern_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Eastern_Sambo_Deep_merge <- merge(coral_2017_Eastern_Sambo_Deep_coral,coral_2017_Eastern_Sambo_Deep_macro)
coral_2017_Eastern_Sambo_Deep_merge$sitename <- "Eastern Sambo Deep"


coral_2017_Western_Sambo_Deep <- filter(coral_2017, sitename == "Western Sambo Deep")

coral_2017_Western_Sambo_Deep_macro <- summarise_at(coral_2017_Western_Sambo_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Western_Sambo_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Western_Sambo_Deep_coral <- summarise_at(coral_2017_Western_Sambo_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Western_Sambo_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Western_Sambo_Deep_merge <- merge(coral_2017_Western_Sambo_Deep_coral,coral_2017_Western_Sambo_Deep_macro)
coral_2017_Western_Sambo_Deep_merge$sitename <- "Western Sambo Deep"


coral_2017_Rock_Key_Deep <- filter(coral_2017, sitename == "Rock Key Deep")

coral_2017_Rock_Key_Deep_macro <- summarise_at(coral_2017_Rock_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Rock_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Rock_Key_Deep_coral <- summarise_at(coral_2017_Rock_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Rock_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Rock_Key_Deep_merge <- merge(coral_2017_Rock_Key_Deep_coral,coral_2017_Rock_Key_Deep_macro)
coral_2017_Rock_Key_Deep_merge$sitename <- "Rock Key Deep"


coral_2017_Sand_Key_Deep <- filter(coral_2017, sitename == "Sand Key Deep")

coral_2017_Sand_Key_Deep_macro <- summarise_at(coral_2017_Sand_Key_Deep,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Sand_Key_Deep_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Sand_Key_Deep_coral <- summarise_at(coral_2017_Sand_Key_Deep,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Sand_Key_Deep_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Sand_Key_Deep_merge <- merge(coral_2017_Sand_Key_Deep_coral,coral_2017_Sand_Key_Deep_macro)
coral_2017_Sand_Key_Deep_merge$sitename <- "Sand Key Deep"


coral_2017_Bird_Key_Reef <- filter(coral_2017, sitename == "Bird Key Reef")

coral_2017_Bird_Key_Reef_macro <- summarise_at(coral_2017_Bird_Key_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Bird_Key_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Bird_Key_Reef_coral <- summarise_at(coral_2017_Bird_Key_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Bird_Key_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Bird_Key_Reef_merge <- merge(coral_2017_Bird_Key_Reef_coral,coral_2017_Bird_Key_Reef_macro)
coral_2017_Bird_Key_Reef_merge$sitename <- "Bird Key Reef"


coral_2017_Black_Coral_Rock <- filter(coral_2017, sitename == "Black Coral Rock")

coral_2017_Black_Coral_Rock_macro <- summarise_at(coral_2017_Black_Coral_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Black_Coral_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Black_Coral_Rock_coral <- summarise_at(coral_2017_Black_Coral_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Black_Coral_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Black_Coral_Rock_merge <- merge(coral_2017_Black_Coral_Rock_coral,coral_2017_Black_Coral_Rock_macro)
coral_2017_Black_Coral_Rock_merge$sitename <- "Black Coral Rock"



coral_2017_White_Shoal <- filter(coral_2017, sitename == "White Shoal")

coral_2017_White_Shoal_macro <- summarise_at(coral_2017_White_Shoal,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_White_Shoal_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_White_Shoal_coral <- summarise_at(coral_2017_White_Shoal,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_White_Shoal_coral) <- c("Coral_Average","Coral_SD")

coral_2017_White_Shoal_merge <- merge(coral_2017_White_Shoal_coral,coral_2017_White_Shoal_macro)
coral_2017_White_Shoal_merge$sitename <- "White Shoal"



coral_2017_Palm_Beach_1 <- filter(coral_2017, sitename == "Palm Beach 1")

coral_2017_Palm_Beach_1_macro <- summarise_at(coral_2017_Palm_Beach_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Palm_Beach_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Palm_Beach_1_coral <- summarise_at(coral_2017_Palm_Beach_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Palm_Beach_1_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Palm_Beach_1_merge <- merge(coral_2017_Palm_Beach_1_coral,coral_2017_Palm_Beach_1_macro)
coral_2017_Palm_Beach_1_merge$sitename <- "Palm Beach 1"


coral_2017_Palm_Beach_2 <- filter(coral_2017, sitename == "Palm Beach 2")

coral_2017_Palm_Beach_2_macro <- summarise_at(coral_2017_Palm_Beach_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Palm_Beach_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Palm_Beach_2_coral <- summarise_at(coral_2017_Palm_Beach_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Palm_Beach_2_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Palm_Beach_2_merge <- merge(coral_2017_Palm_Beach_2_coral,coral_2017_Palm_Beach_2_macro)
coral_2017_Palm_Beach_2_merge$sitename <- "Palm Beach 2"


coral_2017_Palm_Beach_3 <- filter(coral_2017, sitename == "Palm Beach 3")

coral_2017_Palm_Beach_3_macro <- summarise_at(coral_2017_Palm_Beach_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Palm_Beach_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Palm_Beach_3_coral <- summarise_at(coral_2017_Palm_Beach_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Palm_Beach_3_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Palm_Beach_3_merge <- merge(coral_2017_Palm_Beach_3_coral,coral_2017_Palm_Beach_3_macro)
coral_2017_Palm_Beach_3_merge$sitename <- "Palm Beach 3"



coral_2017_Palm_Beach_4 <- filter(coral_2017, sitename == "Palm Beach 4")

coral_2017_Palm_Beach_4_macro <- summarise_at(coral_2017_Palm_Beach_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Palm_Beach_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Palm_Beach_4_coral <- summarise_at(coral_2017_Palm_Beach_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Palm_Beach_4_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Palm_Beach_4_merge <- merge(coral_2017_Palm_Beach_4_coral,coral_2017_Palm_Beach_4_macro)
coral_2017_Palm_Beach_4_merge$sitename <- "Palm Beach 4"



coral_2017_Palm_Beach_5 <- filter(coral_2017, sitename == "Palm Beach 5")

coral_2017_Palm_Beach_5_macro <- summarise_at(coral_2017_Palm_Beach_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Palm_Beach_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Palm_Beach_5_coral <- summarise_at(coral_2017_Palm_Beach_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Palm_Beach_5_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Palm_Beach_5_merge <- merge(coral_2017_Palm_Beach_5_coral,coral_2017_Palm_Beach_5_macro)
coral_2017_Palm_Beach_5_merge$sitename <- "Palm Beach 5"



coral_2017_Broward_County_1 <- filter(coral_2017, sitename == "Broward County 1")

coral_2017_Broward_County_1_macro <- summarise_at(coral_2017_Broward_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Broward_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Broward_County_1_coral <- summarise_at(coral_2017_Broward_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Broward_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Broward_County_1_merge <- merge(coral_2017_Broward_County_1_coral,coral_2017_Broward_County_1_macro)
coral_2017_Broward_County_1_merge$sitename <- "Broward County 1"


coral_2017_Broward_County_2 <- filter(coral_2017, sitename == "Broward County 2")

coral_2017_Broward_County_2_macro <- summarise_at(coral_2017_Broward_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Broward_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Broward_County_2_coral <- summarise_at(coral_2017_Broward_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Broward_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Broward_County_2_merge <- merge(coral_2017_Broward_County_2_coral,coral_2017_Broward_County_2_macro)
coral_2017_Broward_County_2_merge$sitename <- "Broward County 2"


coral_2017_Broward_County_3 <- filter(coral_2017, sitename == "Broward County 3")

coral_2017_Broward_County_3_macro <- summarise_at(coral_2017_Broward_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Broward_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Broward_County_3_coral <- summarise_at(coral_2017_Broward_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Broward_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Broward_County_3_merge <- merge(coral_2017_Broward_County_3_coral,coral_2017_Broward_County_3_macro)
coral_2017_Broward_County_3_merge$sitename <- "Broward County 3"


coral_2017_Broward_County_4 <- filter(coral_2017, sitename == "Broward County 4")

coral_2017_Broward_County_4_macro <- summarise_at(coral_2017_Broward_County_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Broward_County_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Broward_County_4_coral <- summarise_at(coral_2017_Broward_County_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Broward_County_4_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Broward_County_4_merge <- merge(coral_2017_Broward_County_4_coral,coral_2017_Broward_County_4_macro)
coral_2017_Broward_County_4_merge$sitename <- "Broward County 4"


coral_2017_Broward_County_5 <- filter(coral_2017, sitename == "Broward County 5")

coral_2017_Broward_County_5_macro <- summarise_at(coral_2017_Broward_County_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Broward_County_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Broward_County_5_coral <- summarise_at(coral_2017_Broward_County_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Broward_County_5_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Broward_County_5_merge <- merge(coral_2017_Broward_County_5_coral,coral_2017_Broward_County_5_macro)
coral_2017_Broward_County_5_merge$sitename <- "Broward County 5"


coral_2017_Broward_County_6 <- filter(coral_2017, sitename == "Broward County 6")

coral_2017_Broward_County_6_macro <- summarise_at(coral_2017_Broward_County_6,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Broward_County_6_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Broward_County_6_coral <- summarise_at(coral_2017_Broward_County_6,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Broward_County_6_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Broward_County_6_merge <- merge(coral_2017_Broward_County_6_coral,coral_2017_Broward_County_6_macro)
coral_2017_Broward_County_6_merge$sitename <- "Broward County 6"




coral_2017_Broward_County_A <- filter(coral_2017, sitename == "Broward County A")

coral_2017_Broward_County_A_macro <- summarise_at(coral_2017_Broward_County_A,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Broward_County_A_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Broward_County_A_coral <- summarise_at(coral_2017_Broward_County_A,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Broward_County_A_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Broward_County_A_merge <- merge(coral_2017_Broward_County_A_coral,coral_2017_Broward_County_A_macro)
coral_2017_Broward_County_A_merge$sitename <- "Broward County A"



coral_2017_Dade_County_1 <- filter(coral_2017, sitename == "Dade County 1")

coral_2017_Dade_County_1_macro <- summarise_at(coral_2017_Dade_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dade_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Dade_County_1_coral <- summarise_at(coral_2017_Dade_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dade_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Dade_County_1_merge <- merge(coral_2017_Dade_County_1_coral,coral_2017_Dade_County_1_macro)
coral_2017_Dade_County_1_merge$sitename <- "Dade County 1"


coral_2017_Dade_County_2 <- filter(coral_2017, sitename == "Dade County 2")

coral_2017_Dade_County_2_macro <- summarise_at(coral_2017_Dade_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dade_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Dade_County_2_coral <- summarise_at(coral_2017_Dade_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dade_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Dade_County_2_merge <- merge(coral_2017_Dade_County_2_coral,coral_2017_Dade_County_2_macro)
coral_2017_Dade_County_2_merge$sitename <- "Dade County 2"


coral_2017_Dade_County_3 <- filter(coral_2017, sitename == "Dade County 3")

coral_2017_Dade_County_3_macro <- summarise_at(coral_2017_Dade_County_3,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dade_County_3_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Dade_County_3_coral <- summarise_at(coral_2017_Dade_County_3,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dade_County_3_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Dade_County_3_merge <- merge(coral_2017_Dade_County_3_coral,coral_2017_Dade_County_3_macro)
coral_2017_Dade_County_3_merge$sitename <- "Dade County 3"


coral_2017_Dade_County_4 <- filter(coral_2017, sitename == "Dade County 4")

coral_2017_Dade_County_4_macro <- summarise_at(coral_2017_Dade_County_4,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dade_County_4_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Dade_County_4_coral <- summarise_at(coral_2017_Dade_County_4,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dade_County_4_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Dade_County_4_merge <- merge(coral_2017_Dade_County_4_coral,coral_2017_Dade_County_4_macro)
coral_2017_Dade_County_4_merge$sitename <- "Dade County 4"


coral_2017_Dade_County_5 <- filter(coral_2017, sitename == "Dade County 5")

coral_2017_Dade_County_5_macro <- summarise_at(coral_2017_Dade_County_5,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dade_County_5_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Dade_County_5_coral <- summarise_at(coral_2017_Dade_County_5,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dade_County_5_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Dade_County_5_merge <- merge(coral_2017_Dade_County_5_coral,coral_2017_Dade_County_5_macro)
coral_2017_Dade_County_5_merge$sitename <- "Dade County 5"


coral_2017_Dade_County_6 <- filter(coral_2017, sitename == "Dade County 6")

coral_2017_Dade_County_6_macro <- summarise_at(coral_2017_Dade_County_6,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dade_County_6_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Dade_County_6_coral <- summarise_at(coral_2017_Dade_County_6,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dade_County_6_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Dade_County_6_merge <- merge(coral_2017_Dade_County_6_coral,coral_2017_Dade_County_6_macro)
coral_2017_Dade_County_6_merge$sitename <- "Dade County 6"


coral_2017_Dade_County_7 <- filter(coral_2017, sitename == "Dade County 7")

coral_2017_Dade_County_7_macro <- summarise_at(coral_2017_Dade_County_7,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dade_County_7_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Dade_County_7_coral <- summarise_at(coral_2017_Dade_County_7,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dade_County_7_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Dade_County_7_merge <- merge(coral_2017_Dade_County_7_coral,coral_2017_Dade_County_7_macro)
coral_2017_Dade_County_7_merge$sitename <- "Dade County 7"


coral_2017_Dade_County_8 <- filter(coral_2017, sitename == "Dade County 8")

coral_2017_Dade_County_8_macro <- summarise_at(coral_2017_Dade_County_8,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dade_County_8_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Dade_County_8_coral <- summarise_at(coral_2017_Dade_County_8,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Dade_County_8_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Dade_County_8_merge <- merge(coral_2017_Dade_County_8_coral,coral_2017_Dade_County_8_macro)
coral_2017_Dade_County_8_merge$sitename <- "Dade County 8"



coral_2017_Mayers_Peak <- filter(coral_2017, sitename == "Mayer's Peak")

coral_2017_Mayers_Peak_macro <- summarise_at(coral_2017_Mayers_Peak,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Mayers_Peak_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Mayers_Peak_coral <- summarise_at(coral_2017_Mayers_Peak,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Mayers_Peak_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Mayers_Peak_merge <- merge(coral_2017_Mayers_Peak_coral,coral_2017_Mayers_Peak_macro)
coral_2017_Mayers_Peak_merge$sitename <- "Mayer's Peak"


coral_2017_Temptation_Rock <- filter(coral_2017, sitename == "Temptation Rock")

coral_2017_Temptation_Rock_macro <- summarise_at(coral_2017_Temptation_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Temptation_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Temptation_Rock_coral <- summarise_at(coral_2017_Temptation_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Temptation_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Temptation_Rock_merge <- merge(coral_2017_Temptation_Rock_coral,coral_2017_Temptation_Rock_macro)
coral_2017_Temptation_Rock_merge$sitename <- "Temptation Rock"


coral_2017_Palmata_Patch <- filter(coral_2017, sitename == "Palmata Patch")

coral_2017_Palmata_Patch_macro <- summarise_at(coral_2017_Palmata_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Palmata_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Palmata_Patch_coral <- summarise_at(coral_2017_Palmata_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Palmata_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Palmata_Patch_merge <- merge(coral_2017_Palmata_Patch_coral,coral_2017_Palmata_Patch_macro)
coral_2017_Palmata_Patch_merge$sitename <- "Palmata Patch"


coral_2017_Prolifera_Patch <- filter(coral_2017, sitename == "Prolifera Patch")

coral_2017_Prolifera_Patch_macro <- summarise_at(coral_2017_Prolifera_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Prolifera_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Prolifera_Patch_coral <- summarise_at(coral_2017_Prolifera_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Prolifera_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Prolifera_Patch_merge <- merge(coral_2017_Prolifera_Patch_coral,coral_2017_Prolifera_Patch_macro)
coral_2017_Prolifera_Patch_merge$sitename <- "Prolifera Patch"


coral_2017_Loggerhead_Patch <- filter(coral_2017, sitename == "Loggerhead Patch")

coral_2017_Loggerhead_Patch_macro <- summarise_at(coral_2017_Loggerhead_Patch,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Loggerhead_Patch_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Loggerhead_Patch_coral <- summarise_at(coral_2017_Loggerhead_Patch,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Loggerhead_Patch_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Loggerhead_Patch_merge <- merge(coral_2017_Loggerhead_Patch_coral,coral_2017_Loggerhead_Patch_macro)
coral_2017_Loggerhead_Patch_merge$sitename <- "Loggerhead Patch"


coral_2017_Martin_County_1 <- filter(coral_2017, sitename == "Martin County 1")

coral_2017_Martin_County_1_macro <- summarise_at(coral_2017_Martin_County_1,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Martin_County_1_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Martin_County_1_coral <- summarise_at(coral_2017_Martin_County_1,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Martin_County_1_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Martin_County_1_merge <- merge(coral_2017_Martin_County_1_coral,coral_2017_Martin_County_1_macro)
coral_2017_Martin_County_1_merge$sitename <- "Martin County 1"


coral_2017_Martin_County_2 <- filter(coral_2017, sitename == "Martin County 2")

coral_2017_Martin_County_2_macro <- summarise_at(coral_2017_Martin_County_2,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Martin_County_2_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Martin_County_2_coral <- summarise_at(coral_2017_Martin_County_2,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Martin_County_2_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Martin_County_2_merge <- merge(coral_2017_Martin_County_2_coral,coral_2017_Martin_County_2_macro)
coral_2017_Martin_County_2_merge$sitename <- "Martin County 2"


coral_2017_Wonderland <- filter(coral_2017, sitename == "Wonderland")

coral_2017_Wonderland_macro <- summarise_at(coral_2017_Wonderland,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Wonderland_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Wonderland_coral <- summarise_at(coral_2017_Wonderland,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Wonderland_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Wonderland_merge <- merge(coral_2017_Wonderland_coral,coral_2017_Wonderland_macro)
coral_2017_Wonderland_merge$sitename <- "Wonderland"


coral_2017_Red_Dun_Reef <- filter(coral_2017, sitename == "Red Dun Reef")

coral_2017_Red_Dun_Reef_macro <- summarise_at(coral_2017_Red_Dun_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Red_Dun_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Red_Dun_Reef_coral <- summarise_at(coral_2017_Red_Dun_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Red_Dun_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Red_Dun_Reef_merge <- merge(coral_2017_Red_Dun_Reef_coral,coral_2017_Red_Dun_Reef_macro)
coral_2017_Red_Dun_Reef_merge$sitename <- "Red Dun Reef"


coral_2017_Rawa_Reef <- filter(coral_2017, sitename == "Rawa Reef")

coral_2017_Rawa_Reef_macro <- summarise_at(coral_2017_Rawa_Reef,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Rawa_Reef_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Rawa_Reef_coral <- summarise_at(coral_2017_Rawa_Reef,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Rawa_Reef_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Rawa_Reef_merge <- merge(coral_2017_Rawa_Reef_coral,coral_2017_Rawa_Reef_macro)
coral_2017_Rawa_Reef_merge$sitename <- "Rawa Reef"


coral_2017_Thor <- filter(coral_2017, sitename == "Thor")

coral_2017_Thor_macro <- summarise_at(coral_2017_Thor,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Thor_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Thor_coral <- summarise_at(coral_2017_Thor,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Thor_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Thor_merge <- merge(coral_2017_Thor_coral,coral_2017_Thor_macro)
coral_2017_Thor_merge$sitename <- "Thor"


coral_2017_Burr_Fish <- filter(coral_2017, sitename == "Burr Fish")

coral_2017_Burr_Fish_macro <- summarise_at(coral_2017_Burr_Fish,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Burr_Fish_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Burr_Fish_coral <- summarise_at(coral_2017_Burr_Fish,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Burr_Fish_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Burr_Fish_merge <- merge(coral_2017_Burr_Fish_coral,coral_2017_Burr_Fish_macro)
coral_2017_Burr_Fish_merge$sitename <- "Burr Fish"


coral_2017_Two_Patches <- filter(coral_2017, sitename == "Two Patches")

coral_2017_Two_Patches_macro <- summarise_at(coral_2017_Two_Patches,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Two_Patches_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Two_Patches_coral <- summarise_at(coral_2017_Two_Patches,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Two_Patches_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Two_Patches_merge <- merge(coral_2017_Two_Patches_coral,coral_2017_Two_Patches_macro)
coral_2017_Two_Patches_merge$sitename <- "Two Patches"


coral_2017_The_Maze <- filter(coral_2017, sitename == "The Maze")

coral_2017_The_Maze_macro <- summarise_at(coral_2017_The_Maze,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_The_Maze_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_The_Maze_coral <- summarise_at(coral_2017_The_Maze,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_The_Maze_coral) <- c("Coral_Average","Coral_SD")

coral_2017_The_Maze_merge <- merge(coral_2017_The_Maze_coral,coral_2017_The_Maze_macro)
coral_2017_The_Maze_merge$sitename <- "The Maze"


coral_2017_Davis_Rock <- filter(coral_2017, sitename == "Davis Rock")

coral_2017_Davis_Rock_macro <- summarise_at(coral_2017_Davis_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Davis_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Davis_Rock_coral <- summarise_at(coral_2017_Davis_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Davis_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Davis_Rock_merge <- merge(coral_2017_Davis_Rock_coral,coral_2017_Davis_Rock_macro)
coral_2017_Davis_Rock_merge$sitename <- "Davis Rock"


coral_2017_Texas_Rock <- filter(coral_2017, sitename == "Texas Rock")

coral_2017_Texas_Rock_macro <- summarise_at(coral_2017_Texas_Rock,vars('Macroalgae'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Texas_Rock_macro) <- c("Macroalgae_Average","Macroaglae_SD")

coral_2017_Texas_Rock_coral <- summarise_at(coral_2017_Texas_Rock,vars('Stony_coral'),funs(mean,sd), na.rm = TRUE)
colnames(coral_2017_Texas_Rock_coral) <- c("Coral_Average","Coral_SD")

coral_2017_Texas_Rock_merge <- merge(coral_2017_Texas_Rock_coral,coral_2017_Texas_Rock_macro)
coral_2017_Texas_Rock_merge$sitename <- "Texas Rock"


coral_2017_merged <- rbind(coral_2017_Carysfort_Shallow_merge,
                           coral_2017_Grecian_Rocks_merge,coral_2017_Molasses_Shallow_merge,coral_2017_Conch_Shallow_merge,
                           coral_2017_Alligator_Shallow_merge,coral_2017_Tennessee_Shallow_merge,coral_2017_Sombrero_Shallow_merge,
                           coral_2017_Looe_Key_Shallow_merge,coral_2017_Eastern_Sambo_Shallow_merge,coral_2017_Western_Sambo_Shallow_merge,
                           coral_2017_Rock_Key_Shallow_merge,coral_2017_Sand_Key_Shallow_merge,coral_2017_Carysfort_Deep_merge,
                           coral_2017_Molasses_Deep_merge,coral_2017_Conch_Deep_merge,
                           coral_2017_Tennessee_Deep_merge,coral_2017_Sombrero_Deep_merge,coral_2017_Looe_Key_Deep_merge,
                           coral_2017_Eastern_Sambo_Deep_merge,coral_2017_Western_Sambo_Deep_merge,coral_2017_Rock_Key_Deep_merge,
                           coral_2017_Sand_Key_Deep_merge,coral_2017_Bird_Key_Reef_merge,coral_2017_Black_Coral_Rock_merge,
                           coral_2017_Palm_Beach_1_merge,coral_2017_Palm_Beach_2_merge,
                           coral_2017_Palm_Beach_3_merge,coral_2017_Broward_County_1_merge,coral_2017_Broward_County_2_merge,
                           coral_2017_Broward_County_3_merge,coral_2017_Broward_County_A_merge,coral_2017_Dade_County_1_merge,
                           coral_2017_Dade_County_2_merge,coral_2017_Dade_County_3_merge,coral_2017_Mayers_Peak_merge,
                           coral_2017_Loggerhead_Patch_merge,coral_2017_Admiral_merge,coral_2017_Broward_County_4_merge,
                           coral_2017_Broward_County_5_merge,coral_2017_Broward_County_6_merge,coral_2017_Burr_Fish_merge,
                           coral_2017_Cliff_Green_merge,coral_2017_Dade_County_5_merge,coral_2017_Dade_County_6_merge,
                           coral_2017_Dade_County_7_merge,coral_2017_Dade_County_8_merge,coral_2017_Davis_Rock_merge,
                           coral_2017_Dustan_Rocks_merge,coral_2017_Jaap_Reef_merge,coral_2017_Palmata_Patch_merge,
                           coral_2017_Porter_Patch_merge,coral_2017_Prolifera_Patch_merge,coral_2017_Rawa_Reef_merge,
                           coral_2017_Red_Dun_Reef_merge,coral_2017_Smith_Shoal_merge,coral_2017_Temptation_Rock_merge,
                           coral_2017_Texas_Rock_merge,coral_2017_The_Maze_merge,coral_2017_Thor_merge,
                           coral_2017_Turtle_merge,coral_2017_Two_Patches_merge,coral_2017_West_Turtle_Shoal_merge,
                           coral_2017_West_Washer_Women_merge,coral_2017_Western_Head_merge,coral_2017_White_Shoal_merge,
                           coral_2017_Wonderland_merge,coral_2017_Palm_Beach_4_merge,coral_2017_Palm_Beach_5_merge,
                           coral_2017_Dade_County_4_merge,coral_2017_Martin_County_1_merge,
                           coral_2017_Martin_County_2_merge,coral_2017_Alligator_Deep_merge)


coral_2017_merged$Year <- "2017"



### Combine all years


CREMP_all <- rbind(coral_1996_merged,coral_1997_merged,coral_1998_merged,coral_1999_merged,
                   coral_2000_merged,coral_2001_merged,coral_2002_merged,coral_2003_merged,
                   coral_2004_merged,coral_2005_merged,coral_2006_merged,coral_2007_merged,
                   coral_2008_merged,coral_2009_merged,coral_2010_merged,coral_2011_merged,
                   coral_2012_merged,coral_2013_merged,coral_2014_merged,coral_2015_merged,
                   coral_2016_merged,coral_2017_merged)


export(CREMP_all,"Coral_Macro_w_SD_all_years.csv")



### Combine with RVC data 
CREMP_all <- read_csv("Coral_Macro_w_SD_all_years.csv")

setwd("C:/Users/cara.estes/Documents/Spring_2020/RVC_CREMP_by_REEF")

RVC_18_SD <- read_csv("All_regions_RVC_biomass_data.csv")


### Combine with join function 

CREMP_RVC_combined_SD <- merge(RVC_18_SD, CREMP_all, by = c("sitename","Year"))


export(CREMP_RVC_combined_SD,"C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/CREMP_RVC_SD.csv")
