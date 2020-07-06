

library(rio)
library("magrittr")
library(tidyverse)
library(data.table)
library(plyr)
library(dplyr)
library(gridExtra)
library(png)
library(grid)



### Load coral data in first     sand key shallow 2005 not cooperating (look at later)

setwd("C:/Users/cara.estes/Documents/Spring_2020")

Coral_Macro_sd_load <- read_csv("CREMP_RVC/SD_Master.csv")

## filter

Coral_Macro_sd_master <- select(Coral_Macro_sd_load, Coral_Average,Coral_plus,Coral_minus,
                                Macroalgae_Average,Macroalgae_plus,Macroalgae_minus,Year,
                                sitename,REGION)

Coral_Macro_sd_master$Macroalgae_plus[Coral_Macro_sd_master$Macroalgae_plus < 0] <- 0
Coral_Macro_sd_master$Coral_minus[Coral_Macro_sd_master$Coral_minus < 0] <- 0



Coral_Macro_sd_master$Coral_Average <- Coral_Macro_sd_master$Coral_Average *100
Coral_Macro_sd_master$Coral_plus <- Coral_Macro_sd_master$Coral_plus *100
Coral_Macro_sd_master$Coral_minus <- Coral_Macro_sd_master$Coral_minus *100
Coral_Macro_sd_master$Macroalgae_Average <- Coral_Macro_sd_master$Macroalgae_Average *100
Coral_Macro_sd_master$Macroalgae_plus <- Coral_Macro_sd_master$Macroalgae_plus *100
Coral_Macro_sd_master$Macroalgae_minus <- Coral_Macro_sd_master$Macroalgae_minus *100



### rerun coral and macro data with plus and minus sd.... the fish data have very low sd

### Dry Tortugas 


DT_data <- filter(Coral_Macro_sd_master, REGION == "DT")


#DT_coral_bins <- bins(DT_data$Stony_coral,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
#view(DT_coral_bins$binct)


## Stony coral plus and minus RHI

Coral_DT_plus_1 <- subset(DT_data, Coral_plus <2.99)
Coral_DT_plus_2 <- subset(DT_data, Coral_plus >= 3  & Coral_plus < 5.13 )
Coral_DT_plus_3 <- subset(DT_data, Coral_plus >= 5.14  & Coral_plus < 9.33 )
Coral_DT_plus_4 <- subset(DT_data, Coral_plus >= 9.34  & Coral_plus < 13.78 )
Coral_DT_plus_5 <- subset(DT_data, Coral_plus >=  13.79 & Coral_plus < 30 )


Coral_DT_plus_1$RHI_Coral_plus<- "1"
Coral_DT_plus_2$RHI_Coral_plus<- "2"
Coral_DT_plus_3$RHI_Coral_plus<- "3"
Coral_DT_plus_4$RHI_Coral_plus<- "4"
Coral_DT_plus_5$RHI_Coral_plus<- "5"

Coral_DT_plus_RHI <- rbind(Coral_DT_plus_1,Coral_DT_plus_2,Coral_DT_plus_3,Coral_DT_plus_4,Coral_DT_plus_5)  


Coral_DT_minus_1 <- subset(DT_data, Coral_minus <2.99)
Coral_DT_minus_2 <- subset(DT_data, Coral_minus >= 3  & Coral_minus < 5.13 )
Coral_DT_minus_3 <- subset(DT_data, Coral_minus >= 5.14  & Coral_minus < 9.33 )
Coral_DT_minus_4 <- subset(DT_data, Coral_minus >= 9.34  & Coral_minus < 13.78 )
Coral_DT_minus_5 <- subset(DT_data, Coral_minus >=  13.79 & Coral_minus < 25.5 )


Coral_DT_minus_1$RHI_Coral_minus<- "1"
Coral_DT_minus_2$RHI_Coral_minus<- "2"
Coral_DT_minus_3$RHI_Coral_minus<- "3"
Coral_DT_minus_4$RHI_Coral_minus<- "4"
Coral_DT_minus_5$RHI_Coral_minus<- "5"

Coral_DT_minus_RHI <- rbind(Coral_DT_minus_1,Coral_DT_minus_2,Coral_DT_minus_3,Coral_DT_minus_4,Coral_DT_minus_5)  



Coral_DT_1 <- subset(DT_data, Coral_Average <2.99)
Coral_DT_2 <- subset(DT_data, Coral_Average >= 3  & Coral_Average < 5.13 )
Coral_DT_3 <- subset(DT_data, Coral_Average >= 5.14  & Coral_Average < 9.33 )
Coral_DT_4 <- subset(DT_data, Coral_Average >= 9.34  & Coral_Average < 13.78 )
Coral_DT_5 <- subset(DT_data, Coral_Average >=  13.79 & Coral_Average < 25.5 )


Coral_DT_1$RHI_Coral_Average<- "1"
Coral_DT_2$RHI_Coral_Average<- "2"
Coral_DT_3$RHI_Coral_Average<- "3"
Coral_DT_4$RHI_Coral_Average<- "4"
Coral_DT_5$RHI_Coral_Average<- "5"

Coral_DT_RHI <- rbind(Coral_DT_1,Coral_DT_2,Coral_DT_3,Coral_DT_4,Coral_DT_5) 



Coral_DT_merge_1 <- merge(Coral_DT_RHI,Coral_DT_plus_RHI)
Coral_DT_merge <- merge(Coral_DT_merge_1,Coral_DT_minus_RHI)



Macroalgae_DT_1 <- subset(DT_data, Macroalgae_Average >34.255)
Macroalgae_DT_2 <- subset(DT_data, Macroalgae_Average <= 34.254  & Macroalgae_Average > 24.213 )
Macroalgae_DT_3 <- subset(DT_data, Macroalgae_Average <= 24.212  & Macroalgae_Average > 11.676 )
Macroalgae_DT_4 <- subset(DT_data, Macroalgae_Average <= 11.675  & Macroalgae_Average > 4.57 )
Macroalgae_DT_5 <- subset(DT_data, Macroalgae_Average <= 4.56  & Macroalgae_Average > .00001)


Macroalgae_DT_1$RHI_Macroalgae_Average <- "1"
Macroalgae_DT_2$RHI_Macroalgae_Average <- "2"
Macroalgae_DT_3$RHI_Macroalgae_Average <- "3"
Macroalgae_DT_4$RHI_Macroalgae_Average <- "4"
Macroalgae_DT_5$RHI_Macroalgae_Average <- "5"

Macroalgae_DT_RHI <- rbind(Macroalgae_DT_1,Macroalgae_DT_2,Macroalgae_DT_3,Macroalgae_DT_4,Macroalgae_DT_5)  



Macroalgae_DT_plus_1 <- subset(DT_data, Macroalgae_plus >34.255)
Macroalgae_DT_plus_2 <- subset(DT_data, Macroalgae_plus <= 34.254  & Macroalgae_plus > 24.213 )
Macroalgae_DT_plus_3 <- subset(DT_data, Macroalgae_plus <= 24.212  & Macroalgae_plus > 11.676 )
Macroalgae_DT_plus_4 <- subset(DT_data, Macroalgae_plus <= 11.675  & Macroalgae_plus > 4.57 )
Macroalgae_DT_plus_5 <- subset(DT_data, Macroalgae_plus <= 4.56  & Macroalgae_plus > -Inf)


Macroalgae_DT_plus_1$RHI_Macroalgae_plus <- "1"
Macroalgae_DT_plus_2$RHI_Macroalgae_plus <- "2"
Macroalgae_DT_plus_3$RHI_Macroalgae_plus <- "3"
Macroalgae_DT_plus_4$RHI_Macroalgae_plus <- "4"
Macroalgae_DT_plus_5$RHI_Macroalgae_plus <- "5"

Macroalgae_DT_plus_RHI <- rbind(Macroalgae_DT_plus_1,Macroalgae_DT_plus_2,Macroalgae_DT_plus_3,Macroalgae_DT_plus_4,Macroalgae_DT_plus_5)  


Macroalgae_DT_minus_1 <- subset(DT_data, Macroalgae_minus >34.255)
Macroalgae_DT_minus_2 <- subset(DT_data, Macroalgae_minus <= 34.254  & Macroalgae_minus > 24.213 )
Macroalgae_DT_minus_3 <- subset(DT_data, Macroalgae_minus <= 24.212  & Macroalgae_minus > 11.676 )
Macroalgae_DT_minus_4 <- subset(DT_data, Macroalgae_minus <= 11.675  & Macroalgae_minus > 4.57 )
Macroalgae_DT_minus_5 <- subset(DT_data, Macroalgae_minus <= 4.56  & Macroalgae_minus > .00001)


Macroalgae_DT_minus_1$RHI_Macroalgae_minus <- "1"
Macroalgae_DT_minus_2$RHI_Macroalgae_minus <- "2"
Macroalgae_DT_minus_3$RHI_Macroalgae_minus <- "3"
Macroalgae_DT_minus_4$RHI_Macroalgae_minus <- "4"
Macroalgae_DT_minus_5$RHI_Macroalgae_minus <- "5"

Macroalgae_DT_minus_RHI <- rbind(Macroalgae_DT_minus_1,Macroalgae_DT_minus_2,Macroalgae_DT_minus_3,Macroalgae_DT_minus_4,Macroalgae_DT_minus_5)  


Macroalgae_DT_merge_1 <- merge(Macroalgae_DT_RHI,Macroalgae_DT_plus_RHI)
Macroalgae_DT_merge <- merge(Macroalgae_DT_merge_1,Macroalgae_DT_minus_RHI)


DT_SD_merge <- merge(Coral_DT_merge,Macroalgae_DT_merge)



### Lower Keys 


LK_data <- filter(Coral_Macro_sd_master, REGION == "LK")


#LK_coral_bins <- bins(LK_data$Stony_coral,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
#view(LK_coral_bins$binct)


## Stony coral plus and minus RHI

Coral_LK_plus_1 <- subset(LK_data, Coral_plus <2.2)
Coral_LK_plus_2 <- subset(LK_data, Coral_plus >= 2.21  & Coral_plus < 3.72 )
Coral_LK_plus_3 <- subset(LK_data, Coral_plus >= 3.73  & Coral_plus < 5.27 )
Coral_LK_plus_4 <- subset(LK_data, Coral_plus >= 5.28  & Coral_plus < 16.66 )
Coral_LK_plus_5 <- subset(LK_data, Coral_plus >=  16.67 & Coral_plus < 42 )


Coral_LK_plus_1$RHI_Coral_plus<- "1"
Coral_LK_plus_2$RHI_Coral_plus<- "2"
Coral_LK_plus_3$RHI_Coral_plus<- "3"
Coral_LK_plus_4$RHI_Coral_plus<- "4"
Coral_LK_plus_5$RHI_Coral_plus<- "5"

Coral_LK_plus_RHI <- rbind(Coral_LK_plus_1,Coral_LK_plus_2,Coral_LK_plus_3,Coral_LK_plus_4,Coral_LK_plus_5)  


Coral_LK_minus_1 <- subset(LK_data, Coral_minus <2.2)
Coral_LK_minus_2 <- subset(LK_data, Coral_minus >= 2.21  & Coral_minus < 3.729999 )
Coral_LK_minus_3 <- subset(LK_data, Coral_minus >= 3.73  & Coral_minus < 5.279999 )
Coral_LK_minus_4 <- subset(LK_data, Coral_minus >= 5.28  & Coral_minus < 16.66 )
Coral_LK_minus_5 <- subset(LK_data, Coral_minus >=  16.67 & Coral_minus < 42 )


Coral_LK_minus_1$RHI_Coral_minus<- "1"
Coral_LK_minus_2$RHI_Coral_minus<- "2"
Coral_LK_minus_3$RHI_Coral_minus<- "3"
Coral_LK_minus_4$RHI_Coral_minus<- "4"
Coral_LK_minus_5$RHI_Coral_minus<- "5"

Coral_LK_minus_RHI <- rbind(Coral_LK_minus_1,Coral_LK_minus_2,Coral_LK_minus_3,Coral_LK_minus_4,Coral_LK_minus_5)  



Coral_LK_1 <- subset(LK_data, Coral_Average <2.2)
Coral_LK_2 <- subset(LK_data, Coral_Average >= 2.21  & Coral_Average < 3.72 )
Coral_LK_3 <- subset(LK_data, Coral_Average >= 3.73  & Coral_Average < 5.27 )
Coral_LK_4 <- subset(LK_data, Coral_Average >= 5.28  & Coral_Average < 16.66 )
Coral_LK_5 <- subset(LK_data, Coral_Average >=  16.67 & Coral_Average < 42 )


Coral_LK_1$RHI_Coral_Average<- "1"
Coral_LK_2$RHI_Coral_Average<- "2"
Coral_LK_3$RHI_Coral_Average<- "3"
Coral_LK_4$RHI_Coral_Average<- "4"
Coral_LK_5$RHI_Coral_Average<- "5"

Coral_LK_RHI <- rbind(Coral_LK_1,Coral_LK_2,Coral_LK_3,Coral_LK_4,Coral_LK_5) 



Coral_LK_merge_1 <- merge(Coral_LK_RHI,Coral_LK_plus_RHI)
Coral_LK_merge <- merge(Coral_LK_merge_1,Coral_LK_minus_RHI)



Macroalgae_LK_1 <- subset(LK_data, Macroalgae_Average >24.3)
Macroalgae_LK_2 <- subset(LK_data, Macroalgae_Average <= 24.3  & Macroalgae_Average > 10.227 )
Macroalgae_LK_3 <- subset(LK_data, Macroalgae_Average <= 10.2271  & Macroalgae_Average > 3.75 )
Macroalgae_LK_4 <- subset(LK_data, Macroalgae_Average <= 3.75 & Macroalgae_Average > 1.333 )
Macroalgae_LK_5 <- subset(LK_data, Macroalgae_Average <= 1.333  & Macroalgae_Average > 0.001)


Macroalgae_LK_1$RHI_Macroalgae_Average <- "1"
Macroalgae_LK_2$RHI_Macroalgae_Average <- "2"
Macroalgae_LK_3$RHI_Macroalgae_Average <- "3"
Macroalgae_LK_4$RHI_Macroalgae_Average <- "4"
Macroalgae_LK_5$RHI_Macroalgae_Average <- "5"

Macroalgae_LK_RHI <- rbind(Macroalgae_LK_1,Macroalgae_LK_2,Macroalgae_LK_3,Macroalgae_LK_4,Macroalgae_LK_5)  



Macroalgae_LK_plus_1 <- subset(LK_data, Macroalgae_plus >24.3)
Macroalgae_LK_plus_2 <- subset(LK_data, Macroalgae_plus <= 24.3  & Macroalgae_plus > 10.227 )
Macroalgae_LK_plus_3 <- subset(LK_data, Macroalgae_plus <= 10.2271  & Macroalgae_plus > 3.75 )
Macroalgae_LK_plus_4 <- subset(LK_data, Macroalgae_plus <= 3.75 & Macroalgae_plus > 1.333)
Macroalgae_LK_plus_5 <- subset(LK_data, Macroalgae_plus <= 1.333  & Macroalgae_plus > -Inf)


Macroalgae_LK_plus_1$RHI_Macroalgae_plus <- "1"
Macroalgae_LK_plus_2$RHI_Macroalgae_plus <- "2"
Macroalgae_LK_plus_3$RHI_Macroalgae_plus <- "3"
Macroalgae_LK_plus_4$RHI_Macroalgae_plus <- "4"
Macroalgae_LK_plus_5$RHI_Macroalgae_plus <- "5"

Macroalgae_LK_plus_RHI <- rbind(Macroalgae_LK_plus_1,Macroalgae_LK_plus_2,Macroalgae_LK_plus_3,Macroalgae_LK_plus_4,Macroalgae_LK_plus_5)  


Macroalgae_LK_minus_1 <- subset(LK_data, Macroalgae_minus >24.3)
Macroalgae_LK_minus_2 <- subset(LK_data, Macroalgae_minus <= 24.3  & Macroalgae_minus > 10.227 )
Macroalgae_LK_minus_3 <- subset(LK_data, Macroalgae_minus <= 10.2271  & Macroalgae_minus > 3.75 )
Macroalgae_LK_minus_4 <- subset(LK_data, Macroalgae_minus <= 3.75 & Macroalgae_minus > 1.333)
Macroalgae_LK_minus_5 <- subset(LK_data, Macroalgae_minus <= 1.333  & Macroalgae_minus > -Inf)


Macroalgae_LK_minus_1$RHI_Macroalgae_minus <- "1"
Macroalgae_LK_minus_2$RHI_Macroalgae_minus <- "2"
Macroalgae_LK_minus_3$RHI_Macroalgae_minus <- "3"
Macroalgae_LK_minus_4$RHI_Macroalgae_minus <- "4"
Macroalgae_LK_minus_5$RHI_Macroalgae_minus <- "5"

Macroalgae_LK_minus_RHI <- rbind(Macroalgae_LK_minus_1,Macroalgae_LK_minus_2,Macroalgae_LK_minus_3,Macroalgae_LK_minus_4,Macroalgae_LK_minus_5)  


Macroalgae_LK_merge_1 <- merge(Macroalgae_LK_RHI,Macroalgae_LK_plus_RHI)
Macroalgae_LK_merge <- merge(Macroalgae_LK_merge_1,Macroalgae_LK_minus_RHI)


LK_SD_merge <- merge(Coral_LK_merge,Macroalgae_LK_merge)


### Middle Keys 



MK_data <- filter(Coral_Macro_sd_master, REGION == "MK")


#MK_coral_bins <- bins(MK_data$Stony_coral,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
#view(MK_coral_bins$binct)


## Stony coral plus and minus RHI

Coral_MK_plus_1 <- subset(MK_data, Coral_plus <1.03)
Coral_MK_plus_2 <- subset(MK_data, Coral_plus >= 1.03  & Coral_plus < 1.94 )
Coral_MK_plus_3 <- subset(MK_data, Coral_plus >= 1.94  & Coral_plus < 3.43 )
Coral_MK_plus_4 <- subset(MK_data, Coral_plus>= 3.43  & Coral_plus < 12.04 )
Coral_MK_plus_5 <- subset(MK_data, Coral_plus >=  12.04 & Coral_plus < 25)


Coral_MK_plus_1$RHI_Coral_plus<- "1"
Coral_MK_plus_2$RHI_Coral_plus<- "2"
Coral_MK_plus_3$RHI_Coral_plus<- "3"
Coral_MK_plus_4$RHI_Coral_plus<- "4"
Coral_MK_plus_5$RHI_Coral_plus<- "5"

Coral_MK_plus_RHI <- rbind(Coral_MK_plus_1,Coral_MK_plus_2,Coral_MK_plus_3,Coral_MK_plus_4,Coral_MK_plus_5)  


Coral_MK_minus_1 <- subset(MK_data, Coral_minus <1.03)
Coral_MK_minus_2 <- subset(MK_data, Coral_minus >= 1.03  & Coral_minus < 1.94 )
Coral_MK_minus_3 <- subset(MK_data, Coral_minus >= 1.94  & Coral_minus < 3.43 )
Coral_MK_minus_4 <- subset(MK_data, Coral_minus>= 3.43  & Coral_minus < 12.04 )
Coral_MK_minus_5 <- subset(MK_data, Coral_minus >=  12.04 & Coral_minus < 18)


Coral_MK_minus_1$RHI_Coral_minus<- "1"
Coral_MK_minus_2$RHI_Coral_minus<- "2"
Coral_MK_minus_3$RHI_Coral_minus<- "3"
Coral_MK_minus_4$RHI_Coral_minus<- "4"
Coral_MK_minus_5$RHI_Coral_minus<- "5"

Coral_MK_minus_RHI <- rbind(Coral_MK_minus_1,Coral_MK_minus_2,Coral_MK_minus_3,Coral_MK_minus_4,Coral_MK_minus_5)  



Coral_MK_1 <- subset(MK_data, Coral_Average <1.03)
Coral_MK_2 <- subset(MK_data, Coral_Average >= 1.03  & Coral_Average < 1.94 )
Coral_MK_3 <- subset(MK_data, Coral_Average >= 1.94  & Coral_Average < 3.43 )
Coral_MK_4 <- subset(MK_data, Coral_Average>= 3.43  & Coral_Average < 12.04 )
Coral_MK_5 <- subset(MK_data, Coral_Average >=  12.04 & Coral_Average < 20)


Coral_MK_1$RHI_Coral_Average<- "1"
Coral_MK_2$RHI_Coral_Average<- "2"
Coral_MK_3$RHI_Coral_Average<- "3"
Coral_MK_4$RHI_Coral_Average<- "4"
Coral_MK_5$RHI_Coral_Average<- "5"

Coral_MK_RHI <- rbind(Coral_MK_1,Coral_MK_2,Coral_MK_3,Coral_MK_4,Coral_MK_5) 



Coral_MK_merge_1 <- merge(Coral_MK_RHI,Coral_MK_plus_RHI)
Coral_MK_merge <- merge(Coral_MK_merge_1,Coral_MK_minus_RHI)



Macroalgae_MK_1 <- subset(MK_data, Macroalgae_Average >20.468)
Macroalgae_MK_2 <- subset(MK_data, Macroalgae_Average <= 20.468  & Macroalgae_Average > 12.8 )
Macroalgae_MK_3 <- subset(MK_data, Macroalgae_Average <= 12.8  & Macroalgae_Average > 7.8 )
Macroalgae_MK_4 <- subset(MK_data, Macroalgae_Average <=  7.8 & Macroalgae_Average > 3.5)
Macroalgae_MK_5 <- subset(MK_data, Macroalgae_Average <= 3.5  & Macroalgae_Average > -Inf)


Macroalgae_MK_1$RHI_Macroalgae_Average <- "1"
Macroalgae_MK_2$RHI_Macroalgae_Average <- "2"
Macroalgae_MK_3$RHI_Macroalgae_Average <- "3"
Macroalgae_MK_4$RHI_Macroalgae_Average <- "4"
Macroalgae_MK_5$RHI_Macroalgae_Average <- "5"

Macroalgae_MK_RHI <- rbind(Macroalgae_MK_1,Macroalgae_MK_2,Macroalgae_MK_3,Macroalgae_MK_4,Macroalgae_MK_5)  



Macroalgae_MK_plus_1 <- subset(MK_data, Macroalgae_plus >20.468)
Macroalgae_MK_plus_2 <- subset(MK_data, Macroalgae_plus <= 20.468  & Macroalgae_plus > 12.8 )
Macroalgae_MK_plus_3 <- subset(MK_data, Macroalgae_plus <= 12.8  & Macroalgae_plus > 7.8 )
Macroalgae_MK_plus_4 <- subset(MK_data, Macroalgae_plus <=  7.8 & Macroalgae_plus > 3.5)
Macroalgae_MK_plus_5 <- subset(MK_data, Macroalgae_plus <= 3.5  & Macroalgae_plus > -Inf)


Macroalgae_MK_plus_1$RHI_Macroalgae_plus <- "1"
Macroalgae_MK_plus_2$RHI_Macroalgae_plus <- "2"
Macroalgae_MK_plus_3$RHI_Macroalgae_plus <- "3"
Macroalgae_MK_plus_4$RHI_Macroalgae_plus <- "4"
Macroalgae_MK_plus_5$RHI_Macroalgae_plus <- "5"

Macroalgae_MK_plus_RHI <- rbind(Macroalgae_MK_plus_1,Macroalgae_MK_plus_2,Macroalgae_MK_plus_3,Macroalgae_MK_plus_4,Macroalgae_MK_plus_5)  


Macroalgae_MK_minus_1 <- subset(MK_data, Macroalgae_minus >20.468)
Macroalgae_MK_minus_2 <- subset(MK_data, Macroalgae_minus <= 20.468  & Macroalgae_minus > 12.8 )
Macroalgae_MK_minus_3 <- subset(MK_data, Macroalgae_minus <= 12.8  & Macroalgae_minus > 7.8 )
Macroalgae_MK_minus_4 <- subset(MK_data, Macroalgae_minus <=  7.8 & Macroalgae_minus > 3.5)
Macroalgae_MK_minus_5 <- subset(MK_data, Macroalgae_minus <= 3.5  & Macroalgae_minus > -Inf)


Macroalgae_MK_minus_1$RHI_Macroalgae_minus <- "1"
Macroalgae_MK_minus_2$RHI_Macroalgae_minus <- "2"
Macroalgae_MK_minus_3$RHI_Macroalgae_minus <- "3"
Macroalgae_MK_minus_4$RHI_Macroalgae_minus <- "4"
Macroalgae_MK_minus_5$RHI_Macroalgae_minus <- "5"

Macroalgae_MK_minus_RHI <- rbind(Macroalgae_MK_minus_1,Macroalgae_MK_minus_2,Macroalgae_MK_minus_3,Macroalgae_MK_minus_4,Macroalgae_MK_minus_5)  


Macroalgae_MK_merge_1 <- merge(Macroalgae_MK_RHI,Macroalgae_MK_plus_RHI)
Macroalgae_MK_merge <- merge(Macroalgae_MK_merge_1,Macroalgae_MK_minus_RHI)


MK_SD_merge <- merge(Coral_MK_merge,Macroalgae_MK_merge)




### Upper Keys 




UK_data <- filter(Coral_Macro_sd_master, REGION == "UK")


#UK_coral_bins <- bins(UK_data$Stony_coral,target.bins = 5, max.breaks = NA, exact.groups = TRUE, minpts = 1)
#view(UK_coral_bins$binct)


## Stony coral plus and minus RHI

Coral_UK_plus_1 <- subset(UK_data, Coral_plus <1.82)
Coral_UK_plus_2 <- subset(UK_data, Coral_plus >= 1.82  & Coral_plus < 2.76 )
Coral_UK_plus_3 <- subset(UK_data, Coral_plus >= 2.76  & Coral_plus < 4.05 )
Coral_UK_plus_4 <- subset(UK_data, Coral_plus>= 4.05  & Coral_plus < 7.03 )
Coral_UK_plus_5 <- subset(UK_data, Coral_plus >=  7.03 & Coral_plus < 42)


Coral_UK_plus_1$RHI_Coral_plus<- "1"
Coral_UK_plus_2$RHI_Coral_plus<- "2"
Coral_UK_plus_3$RHI_Coral_plus<- "3"
Coral_UK_plus_4$RHI_Coral_plus<- "4"
Coral_UK_plus_5$RHI_Coral_plus<- "5"

Coral_UK_plus_RHI <- rbind(Coral_UK_plus_1,Coral_UK_plus_2,Coral_UK_plus_3,Coral_UK_plus_4,Coral_UK_plus_5)  


Coral_UK_minus_1 <- subset(UK_data, Coral_minus <1.82)
Coral_UK_minus_2 <- subset(UK_data, Coral_minus >= 1.82  & Coral_minus < 2.76 )
Coral_UK_minus_3 <- subset(UK_data, Coral_minus >= 2.76  & Coral_minus < 4.05 )
Coral_UK_minus_4 <- subset(UK_data, Coral_minus>= 4.05  & Coral_minus < 7.03 )
Coral_UK_minus_5 <- subset(UK_data, Coral_minus >=  7.03 & Coral_minus < 27)


Coral_UK_minus_1$RHI_Coral_minus<- "1"
Coral_UK_minus_2$RHI_Coral_minus<- "2"
Coral_UK_minus_3$RHI_Coral_minus<- "3"
Coral_UK_minus_4$RHI_Coral_minus<- "4"
Coral_UK_minus_5$RHI_Coral_minus<- "5"

Coral_UK_minus_RHI <- rbind(Coral_UK_minus_1,Coral_UK_minus_2,Coral_UK_minus_3,Coral_UK_minus_4,Coral_UK_minus_5)  



Coral_UK_1 <- subset(UK_data, Coral_Average <1.82)
Coral_UK_2 <- subset(UK_data, Coral_Average >= 1.82  & Coral_Average < 2.76 )
Coral_UK_3 <- subset(UK_data, Coral_Average >= 2.76  & Coral_Average < 4.05 )
Coral_UK_4 <- subset(UK_data, Coral_Average>= 4.05  & Coral_Average < 7.03 )
Coral_UK_5 <- subset(UK_data, Coral_Average >=  7.03 & Coral_Average < 31)


Coral_UK_1$RHI_Coral_Average<- "1"
Coral_UK_2$RHI_Coral_Average<- "2"
Coral_UK_3$RHI_Coral_Average<- "3"
Coral_UK_4$RHI_Coral_Average<- "4"
Coral_UK_5$RHI_Coral_Average<- "5"

Coral_UK_RHI <- rbind(Coral_UK_1,Coral_UK_2,Coral_UK_3,Coral_UK_4,Coral_UK_5) 



Coral_UK_merge_1 <- merge(Coral_UK_RHI,Coral_UK_plus_RHI)
Coral_UK_merge <- merge(Coral_UK_merge_1,Coral_UK_minus_RHI)



Macroalgae_UK_1 <- subset(UK_data, Macroalgae_Average >20.24)
Macroalgae_UK_2 <- subset(UK_data, Macroalgae_Average <= 20.24  & Macroalgae_Average > 14.1 )
Macroalgae_UK_3 <- subset(UK_data, Macroalgae_Average <= 14.1 & Macroalgae_Average > 10.029 )
Macroalgae_UK_4 <- subset(UK_data, Macroalgae_Average <=  10.029 & Macroalgae_Average > 4.14 )
Macroalgae_UK_5 <- subset(UK_data, Macroalgae_Average <= 4.14  & Macroalgae_Average > -Inf)


Macroalgae_UK_1$RHI_Macroalgae_Average <- "1"
Macroalgae_UK_2$RHI_Macroalgae_Average <- "2"
Macroalgae_UK_3$RHI_Macroalgae_Average <- "3"
Macroalgae_UK_4$RHI_Macroalgae_Average <- "4"
Macroalgae_UK_5$RHI_Macroalgae_Average <- "5"

Macroalgae_UK_RHI <- rbind(Macroalgae_UK_1,Macroalgae_UK_2,Macroalgae_UK_3,Macroalgae_UK_4,Macroalgae_UK_5)  



Macroalgae_UK_plus_1 <- subset(UK_data, Macroalgae_plus >20.24)
Macroalgae_UK_plus_2 <- subset(UK_data, Macroalgae_plus <= 20.24  & Macroalgae_plus > 14.1 )
Macroalgae_UK_plus_3 <- subset(UK_data, Macroalgae_plus <= 14.1 & Macroalgae_plus > 10.029 )
Macroalgae_UK_plus_4 <- subset(UK_data, Macroalgae_plus <=  10.029 & Macroalgae_plus > 4.14 )
Macroalgae_UK_plus_5 <- subset(UK_data, Macroalgae_plus <= 4.14  & Macroalgae_plus > -Inf)


Macroalgae_UK_plus_1$RHI_Macroalgae_plus <- "1"
Macroalgae_UK_plus_2$RHI_Macroalgae_plus <- "2"
Macroalgae_UK_plus_3$RHI_Macroalgae_plus <- "3"
Macroalgae_UK_plus_4$RHI_Macroalgae_plus <- "4"
Macroalgae_UK_plus_5$RHI_Macroalgae_plus <- "5"

Macroalgae_UK_plus_RHI <- rbind(Macroalgae_UK_plus_1,Macroalgae_UK_plus_2,Macroalgae_UK_plus_3,Macroalgae_UK_plus_4,Macroalgae_UK_plus_5)  


Macroalgae_UK_minus_1 <- subset(UK_data, Macroalgae_minus >20.24)
Macroalgae_UK_minus_2 <- subset(UK_data, Macroalgae_minus <= 20.24  & Macroalgae_minus > 14.1 )
Macroalgae_UK_minus_3 <- subset(UK_data, Macroalgae_minus <= 14.1 & Macroalgae_minus > 10.029 )
Macroalgae_UK_minus_4 <- subset(UK_data, Macroalgae_minus <=  10.029 & Macroalgae_minus > 4.14 )
Macroalgae_UK_minus_5 <- subset(UK_data, Macroalgae_minus <= 4.14  & Macroalgae_minus > -Inf)


Macroalgae_UK_minus_1$RHI_Macroalgae_minus <- "1"
Macroalgae_UK_minus_2$RHI_Macroalgae_minus <- "2"
Macroalgae_UK_minus_3$RHI_Macroalgae_minus <- "3"
Macroalgae_UK_minus_4$RHI_Macroalgae_minus <- "4"
Macroalgae_UK_minus_5$RHI_Macroalgae_minus <- "5"

Macroalgae_UK_minus_RHI <- rbind(Macroalgae_UK_minus_1,Macroalgae_UK_minus_2,Macroalgae_UK_minus_3,Macroalgae_UK_minus_4,Macroalgae_UK_minus_5)  


Macroalgae_UK_merge_1 <- merge(Macroalgae_UK_RHI,Macroalgae_UK_plus_RHI)
Macroalgae_UK_merge <- merge(Macroalgae_UK_merge_1,Macroalgae_UK_minus_RHI)


UK_SD_merge <- merge(Coral_UK_merge,Macroalgae_UK_merge)



### Combine all areas together

RHI_Coral_Macro_SD_all <- rbind(DT_SD_merge,LK_SD_merge,MK_SD_merge,UK_SD_merge)






### Load fish data next 

RHI_comm <- read_csv("RVC_CREMP_by_REEF/All_regions_RVC_commercial_RHI.csv")
RHI_comm_merge <- select(RHI_comm,RHI_Fish,Year,sitename,SUBREGION,sum)
colnames(RHI_comm_merge)<- c("RHI_comm","Year","sitename","SUBREGION","Comm")


RHI_herb <- read_csv("RVC_CREMP_by_REEF/All_regions_RVC_herbivorous_RHI.csv")
RHI_herb_merge <- select(RHI_herb,RHI_Fish,Year,sitename,SUBREGION,sum)
colnames(RHI_herb_merge) <- c("RHI_herb","Year","sitename","SUBREGION","Herb")

RHI_fish_all <- merge(RHI_comm_merge,RHI_herb_merge, by = c("sitename","Year","SUBREGION"))

colnames(RHI_fish_all)[3]<- "REGION"
### Combine coral/macro with 

CREMP_RVC_SD_combined <- merge(RHI_Coral_Macro_SD_all,RHI_fish_all,by = c("sitename","Year","REGION"))
#export(CREMP_RVC_SD_combined,"CREMP_RVC/CREMP_RVC_RHI_SD.csv")

### Get the average for for the regular average, plus, and minus

SD_Average <- read_csv("CREMP_RVC/CREMP_RVC_RHI_SD.csv")

CREMP_RVC_SD_combined$RHI_Average <- rowMeans(subset(SD_Average, select = c(RHI_Coral_Average,RHI_Macroalgae_Average,RHI_comm,RHI_herb)))
CREMP_RVC_SD_combined$RHI_Average_plus <- rowMeans(subset(SD_Average, select = c(RHI_Coral_plus,RHI_Macroalgae_plus,RHI_comm,RHI_herb)))
CREMP_RVC_SD_combined$RHI_Average_minus <- rowMeans(subset(SD_Average, select = c(RHI_Coral_minus,RHI_Macroalgae_minus,RHI_comm,RHI_herb)))


## Make the master to plot from 

RHI_SD_Master <- select(CREMP_RVC_SD_combined,Year,sitename,RHI_Average,RHI_Average_plus,RHI_Average_minus)
#export(RHI_SD_Master,"CREMP_RVC/RHI_SD_Master.csv")


RHI_SD_plot <- read.delim("CREMP_RVC/RHI_SD_Master.csv",sep=",")

## plot per reef 

Alligator_Deep_bar <- filter(RHI_SD_plot, sitename == "Alligator Deep")
Alligator_Deep_barr <- select(Alligator_Deep_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Alligator_Deep_bar_graph <- melt(Alligator_Deep_barr, id.vars = "Year")


ggplot(Alligator_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Alligator Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Alligator_Deep_bar_graph$Year), max(Alligator_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/MK/plots/Alligator_Deep_SD.png", width = 8, height = 4)


Alligator_Shallow_bar <- filter(RHI_SD_plot, sitename == "Alligator Shallow")
Alligator_Shallow_barr <- select(Alligator_Shallow_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Alligator_Shallow_bar_graph <- melt(Alligator_Shallow_barr, id.vars = "Year")


ggplot(Alligator_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Alligator Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Alligator_Shallow_bar_graph$Year), max(Alligator_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/MK/plots/Alligator_Shallow_SD.png", width = 8, height = 4)




Dustan_Rocks_bar <- filter(RHI_SD_plot, sitename == "Dustan Rocks")
Dustan_Rocks_barr <- select(Dustan_Rocks_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Dustan_Rocks_bar_graph <- melt(Dustan_Rocks_barr, id.vars = "Year")


ggplot(Dustan_Rocks_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Dustan Rocks")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Dustan_Rocks_bar_graph$Year), max(Dustan_Rocks_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/MK/plots/Dustan_Rocks_SD.png", width = 8, height = 4)



Long_Key_bar <- filter(RHI_SD_plot, sitename == "Long Key")
Long_Key_barr <- select(Long_Key_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Long_Key_bar_graph <- melt(Long_Key_barr, id.vars = "Year")


ggplot(Long_Key_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Long Key")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Long_Key_bar_graph$Year), max(Long_Key_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/MK/plots/Long_Key_SD.png", width = 8, height = 4)




Rawa_Reef_bar <- filter(RHI_SD_plot, sitename == "Rawa Reef")
Rawa_Reef_barr <- select(Rawa_Reef_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Rawa_Reef_bar_graph <- melt(Rawa_Reef_barr, id.vars = "Year")


ggplot(Rawa_Reef_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Rawa Reef")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Rawa_Reef_bar_graph$Year), max(Rawa_Reef_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/MK/plots/Rawa_Reef_SD.png", width = 8, height = 4)



Sombrero_Deep_bar <- filter(RHI_SD_plot, sitename == "Sombrero Deep")
Sombrero_Deep_barr <- select(Sombrero_Deep_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Sombrero_Deep_bar_graph <- melt(Sombrero_Deep_barr, id.vars = "Year")


ggplot(Sombrero_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Sombrero Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Sombrero_Deep_bar_graph$Year), max(Sombrero_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/MK/plots/Sombrero_Deep_SD.png", width = 8, height = 4)



Sombrero_Shallow_bar <- filter(RHI_SD_plot, sitename == "Sombrero Shallow")
Sombrero_Shallow_barr <- select(Sombrero_Shallow_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Sombrero_Shallow_bar_graph <- melt(Sombrero_Shallow_barr, id.vars = "Year")


ggplot(Sombrero_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Sombrero Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Sombrero_Shallow_bar_graph$Year), max(Sombrero_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/MK/plots/Sombrero_Shallow_SD.png", width = 8, height = 4)




Tennessee_Deep_bar <- filter(RHI_SD_plot, sitename == "Tennessee Deep")
Tennessee_Deep_barr <- select(Tennessee_Deep_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Tennessee_Deep_bar_graph <- melt(Tennessee_Deep_barr, id.vars = "Year")


ggplot(Tennessee_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Tennessee Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Tennessee_Deep_bar_graph$Year), max(Tennessee_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/MK/plots/Tennessee_Deep_SD.png", width = 8, height = 4)




Tennessee_Shallow_bar <- filter(RHI_SD_plot, sitename == "Tennessee Shallow")
Tennessee_Shallow_barr <- select(Tennessee_Shallow_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Tennessee_Shallow_bar_graph <- melt(Tennessee_Shallow_barr, id.vars = "Year")


ggplot(Tennessee_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Tennessee Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Tennessee_Shallow_bar_graph$Year), max(Tennessee_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/MK/plots/Tennessee_Shallow_SD.png", width = 8, height = 4)



Thor_bar <- filter(RHI_SD_plot, sitename == "Thor")
Thor_barr <- select(Thor_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Thor_bar_graph <- melt(Thor_barr, id.vars = "Year")


ggplot(Thor_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Thor")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Thor_bar_graph$Year), max(Thor_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/MK/plots/Thor_SD.png", width = 8, height = 4)



West_Turtle_Shoal_bar <- filter(RHI_SD_plot, sitename == "West Turtle Shoal")
West_Turtle_Shoal_barr <- select(West_Turtle_Shoal_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


West_Turtle_Shoal_bar_graph <- melt(West_Turtle_Shoal_barr, id.vars = "Year")


ggplot(West_Turtle_Shoal_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "West Turtle Shoal")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(West_Turtle_Shoal_bar_graph$Year), max(West_Turtle_Shoal_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/MK/plots/West_Turtle_Shoal_SD.png", width = 8, height = 4)


setwd("C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/RHI/MK/plots")


pdf('MK.pdf')
lapply(ll <- list.files(patt='.*[.]png'),function(x){
  img <- as.raster(readPNG(x))
  grid.newpage()
  grid.raster(img, interpolate = FALSE)
  
})
dev.off()

plots <- lapply(ll <- list.files(patt='.*[.]png'),function(x){
  img <- as.raster(readPNG(x))
  rasterGrob(img, interpolate = FALSE)
})

ggsave("MK_combined.pdf", marrangeGrob(grobs=plots, nrow=2, ncol=4))

setwd("C:/Users/cara.estes/Documents/Spring_2020")



### Lower Keys 

Eastern_Sambo_Deep_bar <- filter(RHI_SD_plot, sitename == "Eastern Sambo Deep")
Eastern_Sambo_Deep_barr <- select(Eastern_Sambo_Deep_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Eastern_Sambo_Deep_bar_graph <- melt(Eastern_Sambo_Deep_barr, id.vars = "Year")


ggplot(Eastern_Sambo_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Eastern Sambo Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Eastern_Sambo_Deep_bar_graph$Year), max(Eastern_Sambo_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/LK/plots/Eastern_Sambo_Deep_SD.png", width = 8, height = 4)




Eastern_Sambo_Shallow_bar <- filter(RHI_SD_plot, sitename == "Eastern Sambo Shallow")
Eastern_Sambo_Shallow_barr <- select(Eastern_Sambo_Shallow_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Eastern_Sambo_Shallow_bar_graph <- melt(Eastern_Sambo_Shallow_barr, id.vars = "Year")


ggplot(Eastern_Sambo_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Eastern Sambo Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Eastern_Sambo_Shallow_bar_graph$Year), max(Eastern_Sambo_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/LK/plots/Eastern_Sambo_Shallow_SD.png", width = 8, height = 4)



# 
#Jaap_Reef_bar <- filter(RHI_SD_plot, sitename == "Jaap Reef")
# Jaap_Reef_barr <- select(Jaap_Reef_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)
# 
# 
# Jaap_Reef_bar_graph <- melt(Jaap_Reef_barr, id.vars = "Year")
# 
# 
# ggplot(Jaap_Reef_bar_graph, aes(Year, value, fill=variable))+
#   ggtitle("Reef Health Index", subtitle = "Jaap Reef")+
#   geom_rect(aes(xmin = -Inf,
#                 xmax = Inf,
#                 ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
#   geom_rect(aes(xmin = -Inf,
#                 xmax = Inf,
#                 ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
#   geom_rect(aes(xmin = -Inf,
#                 xmax = Inf,
#                 ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
#   geom_rect(aes(xmin = -Inf, 
#                 xmax = Inf,
#                 ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
#   geom_rect(aes(xmin = -Inf,
#                 xmax = Inf,
#                 ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
#   geom_point()+
#   geom_line(aes(color = variable), size = 1)+
#   scale_x_continuous(breaks = round(seq(min(Jaap_Reef_bar_graph$Year), max(Jaap_Reef_bar_graph$Year), by = 2),1))+
#   scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
#   scale_color_manual(name = "Health Indicators",
#                      labels = c("RHI Average","Plus SD","Minus SD"),
#                      values=c("red", "black", "black"))+
#   scale_fill_manual(name = "Health Categories",
#                     labels = c("Very Good","Good","Fair","Poor","Critical"),
#                     values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
#                     limits = c("Very Good","Good","Fair","Poor","Critical"),
#                     guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
#   theme_light()+
#   theme(  
#     plot.title = element_text(hjust = 0.5),
#     plot.subtitle = element_text(hjust = 0.5),
#     panel.grid = element_blank(),
#     legend.title = element_text(face = "bold"),
#     legend.background = element_blank(),
#     legend.box.background = element_rect(colour = "black"))+
#   ylab("RHI")
# 
# ggsave ("CREMP_RVC/RHI/LK/plots/Jaap_Reef_SD.png", width = 8, height = 4)



Looe_Key_Deep_bar <- filter(RHI_SD_plot, sitename == "Looe Key Deep")
Looe_Key_Deep_barr <- select(Looe_Key_Deep_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Looe_Key_Deep_bar_graph <- melt(Looe_Key_Deep_barr, id.vars = "Year")


ggplot(Looe_Key_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Looe Key Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Looe_Key_Deep_bar_graph$Year), max(Looe_Key_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/LK/plots/Looe_Key_Deep_SD.png", width = 8, height = 4)




Looe_Key_Shallow_bar <- filter(RHI_SD_plot, sitename == "Looe Key Shallow")
Looe_Key_Shallow_barr <- select(Looe_Key_Shallow_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Looe_Key_Shallow_bar_graph <- melt(Looe_Key_Shallow_barr, id.vars = "Year")


ggplot(Looe_Key_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Looe Key Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Looe_Key_Shallow_bar_graph$Year), max(Looe_Key_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/LK/plots/Looe_Key_Shallow_SD.png", width = 8, height = 4)



# Red_Dun_Reef_bar <- filter(RHI_SD_plot, sitename == "Red Dun Reef")
# Red_Dun_Reef_barr <- select(Red_Dun_Reef_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)
# 
# 
# Red_Dun_Reef_bar_graph <- melt(Red_Dun_Reef_barr, id.vars = "Year")
# 
# 
# ggplot(Red_Dun_Reef_bar_graph, aes(Year, value, fill=variable))+
#   ggtitle("Reef Health Index", subtitle = "Red Dun Reef")+
#   geom_rect(aes(xmin = -Inf,
#                 xmax = Inf,
#                 ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
#   geom_rect(aes(xmin = -Inf,
#                 xmax = Inf,
#                 ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
#   geom_rect(aes(xmin = -Inf,
#                 xmax = Inf,
#                 ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
#   geom_rect(aes(xmin = -Inf, 
#                 xmax = Inf,
#                 ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
#   geom_rect(aes(xmin = -Inf,
#                 xmax = Inf,
#                 ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
#   geom_point()+
#   geom_line(aes(color = variable), size = 1)+
#   scale_x_continuous(breaks = round(seq(min(Red_Dun_Reef_bar_graph$Year), max(Red_Dun_Reef_bar_graph$Year), by = 2),1))+
#   scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
#   scale_color_manual(name = "Health Indicators",
#                      labels = c("RHI Average","Plus SD","Minus SD"),
#                      values=c("red", "black", "black"))+
#   scale_fill_manual(name = "Health Categories",
#                     labels = c("Very Good","Good","Fair","Poor","Critical"),
#                     values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
#                     limits = c("Very Good","Good","Fair","Poor","Critical"),
#                     guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
#   theme_light()+
#   theme(  
#     plot.title = element_text(hjust = 0.5),
#     plot.subtitle = element_text(hjust = 0.5),
#     panel.grid = element_blank(),
#     legend.title = element_text(face = "bold"),
#     legend.background = element_blank(),
#     legend.box.background = element_rect(colour = "black"))+
#   ylab("RHI")
# 
# ggsave ("CREMP_RVC/RHI/LK/plots/Red_Dun_Reef_SD.png", width = 8, height = 4)



Rock_Key_Deep_bar <- filter(RHI_SD_plot, sitename == "Rock Key Deep")
Rock_Key_Deep_barr <- select(Rock_Key_Deep_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Rock_Key_Deep_bar_graph <- melt(Rock_Key_Deep_barr, id.vars = "Year")


ggplot(Rock_Key_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Rock Key Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Rock_Key_Deep_bar_graph$Year), max(Rock_Key_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/LK/plots/Rock_Key_Deep_SD.png", width = 8, height = 4)



Rock_Key_Shallow_bar <- filter(RHI_SD_plot, sitename == "Rock Key Shallow")
Rock_Key_Shallow_barr <- select(Rock_Key_Shallow_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Rock_Key_Shallow_bar_graph <- melt(Rock_Key_Shallow_barr, id.vars = "Year")


ggplot(Rock_Key_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Rock Key Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Rock_Key_Shallow_bar_graph$Year), max(Rock_Key_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/LK/plots/Rock_Key_Shallow_SD.png", width = 8, height = 4)


Sand_Key_Deep_bar <- filter(RHI_SD_plot, sitename == "Sand Key Deep")
Sand_Key_Deep_barr <- select(Sand_Key_Deep_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Sand_Key_Deep_bar_graph <- melt(Sand_Key_Deep_barr, id.vars = "Year")


ggplot(Sand_Key_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Sand Key Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Sand_Key_Deep_bar_graph$Year), max(Sand_Key_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/LK/plots/Sand_Key_Deep_SD.png", width = 8, height = 4)



Sand_Key_Shallow_bar <- filter(RHI_SD_plot, sitename == "Sand Key Shallow")
Sand_Key_Shallow_barr <- select(Sand_Key_Shallow_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Sand_Key_Shallow_bar_graph <- melt(Sand_Key_Shallow_barr, id.vars = "Year")


ggplot(Sand_Key_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Sand Key Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Sand_Key_Shallow_bar_graph$Year), max(Sand_Key_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/LK/plots/Sand_Key_Shallow_SD.png", width = 8, height = 4)



Western_Sambo_Deep_bar <- filter(RHI_SD_plot, sitename == "Western Sambo Deep")
Western_Sambo_Deep_barr <- select(Western_Sambo_Deep_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Western_Sambo_Deep_bar_graph <- melt(Western_Sambo_Deep_barr, id.vars = "Year")


ggplot(Western_Sambo_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Western Sambo Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Western_Sambo_Deep_bar_graph$Year), max(Western_Sambo_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/LK/plots/Western_Sambo_Deep_SD.png", width = 8, height = 4)



Western_Sambo_Shallow_bar <- filter(RHI_SD_plot, sitename == "Western Sambo Shallow")
Western_Sambo_Shallow_barr <- select(Western_Sambo_Shallow_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Western_Sambo_Shallow_bar_graph <- melt(Western_Sambo_Shallow_barr, id.vars = "Year")


ggplot(Western_Sambo_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Western Sambo Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Western_Sambo_Shallow_bar_graph$Year), max(Western_Sambo_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/LK/plots/Western_Sambo_Shallow_SD.png", width = 8, height = 4)



setwd("C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/RHI/LK/plots")


pdf('LK.pdf')
lapply(ll <- list.files(patt='.*[.]png'),function(x){
  img <- as.raster(readPNG(x))
  grid.newpage()
  grid.raster(img, interpolate = FALSE)
  
})
dev.off()

plots <- lapply(ll <- list.files(patt='.*[.]png'),function(x){
  img <- as.raster(readPNG(x))
  rasterGrob(img, interpolate = FALSE)
})

ggsave("LK_combined.pdf", marrangeGrob(grobs=plots, nrow=2, ncol=4))

setwd("C:/Users/cara.estes/Documents/Spring_2020")



### Upper Keys 


Admiral_bar <- filter(RHI_SD_plot, sitename == "Admiral")
Admiral_barr <- select(Admiral_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Admiral_bar_graph <- melt(Admiral_barr, id.vars = "Year")


ggplot(Admiral_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Admiral")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Admiral_bar_graph$Year), max(Admiral_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/UK/plots/Admiral_SD.png", width = 8, height = 4)




Burr_Fish_bar <- filter(RHI_SD_plot, sitename == "Burr Fish")
Burr_Fish_barr <- select(Burr_Fish_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Burr_Fish_bar_graph <- melt(Burr_Fish_barr, id.vars = "Year")


ggplot(Burr_Fish_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Burr Fish")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Burr_Fish_bar_graph$Year), max(Burr_Fish_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/UK/plots/Burr_Fish_SD.png", width = 8, height = 4)




Carysfort_Deep_bar <- filter(RHI_SD_plot, sitename == "Carysfort Deep")
Carysfort_Deep_barr <- select(Carysfort_Deep_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Carysfort_Deep_bar_graph <- melt(Carysfort_Deep_barr, id.vars = "Year")


ggplot(Carysfort_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Carysfort Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Carysfort_Deep_bar_graph$Year), max(Carysfort_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/UK/plots/Carysfort_Deep_SD.png", width = 8, height = 4)



Carysfort_Shallow_bar <- filter(RHI_SD_plot, sitename == "Carysfort Shallow")
Carysfort_Shallow_barr <- select(Carysfort_Shallow_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Carysfort_Shallow_bar_graph <- melt(Carysfort_Shallow_barr, id.vars = "Year")


ggplot(Carysfort_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Carysfort Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Carysfort_Shallow_bar_graph$Year), max(Carysfort_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/UK/plots/Carysfort_Shallow_SD.png", width = 8, height = 4)



Conch_Deep_bar <- filter(RHI_SD_plot, sitename == "Conch Deep")
Conch_Deep_barr <- select(Conch_Deep_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Conch_Deep_bar_graph <- melt(Conch_Deep_barr, id.vars = "Year")


ggplot(Conch_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Conch Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Conch_Deep_bar_graph$Year), max(Conch_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/UK/plots/Conch_Deep_SD.png", width = 8, height = 4)



Conch_Shallow_bar <- filter(RHI_SD_plot, sitename == "Conch Shallow")
Conch_Shallow_barr <- select(Conch_Shallow_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Conch_Shallow_bar_graph <- melt(Conch_Shallow_barr, id.vars = "Year")


ggplot(Conch_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Conch Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Conch_Shallow_bar_graph$Year), max(Conch_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/UK/plots/Conch_Shallow_SD.png", width = 8, height = 4)



Grecian_Rocks_bar <- filter(RHI_SD_plot, sitename == "Grecian Rocks")
Grecian_Rocks_barr <- select(Grecian_Rocks_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Grecian_Rocks_bar_graph <- melt(Grecian_Rocks_barr, id.vars = "Year")


ggplot(Grecian_Rocks_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Grecian Rocks")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Grecian_Rocks_bar_graph$Year), max(Grecian_Rocks_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/UK/plots/Grecian_Rocks_SD.png", width = 8, height = 4)




Molasses_Deep_bar <- filter(RHI_SD_plot, sitename == "Molasses Deep")
Molasses_Deep_barr <- select(Molasses_Deep_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Molasses_Deep_bar_graph <- melt(Molasses_Deep_barr, id.vars = "Year")


ggplot(Molasses_Deep_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Molasses Deep")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Molasses_Deep_bar_graph$Year), max(Molasses_Deep_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/UK/plots/Molasses_Deep_SD.png", width = 8, height = 4)



Molasses_Shallow_bar <- filter(RHI_SD_plot, sitename == "Molasses Shallow")
Molasses_Shallow_barr <- select(Molasses_Shallow_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Molasses_Shallow_bar_graph <- melt(Molasses_Shallow_barr, id.vars = "Year")


ggplot(Molasses_Shallow_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Molasses Shallow")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Molasses_Shallow_bar_graph$Year), max(Molasses_Shallow_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/UK/plots/Molasses_Shallow_SD.png", width = 8, height = 4)





Porter_Patch_bar <- filter(RHI_SD_plot, sitename == "Porter Patch")
Porter_Patch_barr <- select(Porter_Patch_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Porter_Patch_bar_graph <- melt(Porter_Patch_barr, id.vars = "Year")


ggplot(Porter_Patch_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Porter Patch")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Porter_Patch_bar_graph$Year), max(Porter_Patch_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/UK/plots/Porter_Patch_SD.png", width = 8, height = 4)



Turtle_bar <- filter(RHI_SD_plot, sitename == "Turtle")
Turtle_barr <- select(Turtle_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Turtle_bar_graph <- melt(Turtle_barr, id.vars = "Year")


ggplot(Turtle_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Turtle")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Turtle_bar_graph$Year), max(Turtle_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/UK/plots/Turtle_SD.png", width = 8, height = 4)




Two_Patches_bar <- filter(RHI_SD_plot, sitename == "Two Patches")
Two_Patches_barr <- select(Two_Patches_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Two_Patches_bar_graph <- melt(Two_Patches_barr, id.vars = "Year")


ggplot(Two_Patches_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Two Patches")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Two_Patches_bar_graph$Year), max(Two_Patches_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/UK/plots/Two_Patches_SD.png", width = 8, height = 4)


setwd("C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/RHI/UK/plots")


pdf('UK.pdf')
lapply(ll <- list.files(patt='.*[.]png'),function(x){
  img <- as.raster(readPNG(x))
  grid.newpage()
  grid.raster(img, interpolate = FALSE)
  
})
dev.off()

plots <- lapply(ll <- list.files(patt='.*[.]png'),function(x){
  img <- as.raster(readPNG(x))
  rasterGrob(img, interpolate = FALSE)
})

ggsave("UK_combined.pdf", marrangeGrob(grobs=plots, nrow=2, ncol=4))

setwd("C:/Users/cara.estes/Documents/Spring_2020")



### Dry Tortugas



Brid_Key_Reef_bar <- filter(RHI_SD_plot, sitename == "Bird Key Reef")
Brid_Key_Reef_barr <- select(Brid_Key_Reef_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Brid_Key_Reef_bar_graph <- melt(Brid_Key_Reef_barr, id.vars = "Year")


ggplot(Brid_Key_Reef_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Bird Key Reef")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Brid_Key_Reef_bar_graph$Year), max(Brid_Key_Reef_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/DT/plots/Brid_Key_Reef_SD.png", width = 8, height = 4)




# Black_Coral_Rock_bar <- filter(RHI_SD_plot, sitename == "Black Coral Rock")
# Black_Coral_Rock_barr <- select(Black_Coral_Rock_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)
# 
# 
# Black_Coral_Rock_bar_graph <- melt(Black_Coral_Rock_barr, id.vars = "Year")
# 
# 
# ggplot(Black_Coral_Rock_bar_graph, aes(Year, value, fill=variable))+
#   ggtitle("Reef Health Index", subtitle = "Black Coral Rock")+
#   geom_rect(aes(xmin = -Inf,
#                 xmax = Inf,
#                 ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
#   geom_rect(aes(xmin = -Inf,
#                 xmax = Inf,
#                 ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
#   geom_rect(aes(xmin = -Inf,
#                 xmax = Inf,
#                 ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
#   geom_rect(aes(xmin = -Inf, 
#                 xmax = Inf,
#                 ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
#   geom_rect(aes(xmin = -Inf,
#                 xmax = Inf,
#                 ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
#   geom_point()+
#   geom_line(aes(color = variable), size = 1)+
#   scale_x_continuous(breaks = round(seq(min(Black_Coral_Rock_bar_graph$Year), max(Black_Coral_Rock_bar_graph$Year), by = 2),1))+
#   scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
#   scale_color_manual(name = "Health Indicators",
#                      labels = c("RHI Average","Plus SD","Minus SD"),
#                      values=c("red", "black", "black"))+
#   scale_fill_manual(name = "Health Categories",
#                     labels = c("Very Good","Good","Fair","Poor","Critical"),
#                     values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
#                     limits = c("Very Good","Good","Fair","Poor","Critical"),
#                     guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
#   theme_light()+
#   theme(  
#     plot.title = element_text(hjust = 0.5),
#     plot.subtitle = element_text(hjust = 0.5),
#     panel.grid = element_blank(),
#     legend.title = element_text(face = "bold"),
#     legend.background = element_blank(),
#     legend.box.background = element_rect(colour = "black"))+
#   ylab("RHI")
# 
# ggsave ("CREMP_RVC/RHI/DT/plots/Black_Coral_Rock_SD.png", width = 8, height = 4)




Davis_Rock_bar <- filter(RHI_SD_plot, sitename == "Davis Rock")
Davis_Rock_barr <- select(Davis_Rock_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Davis_Rock_bar_graph <- melt(Davis_Rock_barr, id.vars = "Year")


ggplot(Davis_Rock_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Davis Rock")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Davis_Rock_bar_graph$Year), max(Davis_Rock_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/DT/plots/Davis_Rock_SD.png", width = 8, height = 4)




Loggerhead_Patch_bar <- filter(RHI_SD_plot, sitename == "Loggerhead Patch")
Loggerhead_Patch_barr <- select(Loggerhead_Patch_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Loggerhead_Patch_bar_graph <- melt(Loggerhead_Patch_barr, id.vars = "Year")


ggplot(Loggerhead_Patch_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Loggerhead Patch")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Loggerhead_Patch_bar_graph$Year), max(Loggerhead_Patch_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/DT/plots/Loggerhead_Patch_SD.png", width = 8, height = 4)




Palmata_Patch_bar <- filter(RHI_SD_plot, sitename == "Palmata Patch")
Palmata_Patch_barr <- select(Palmata_Patch_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Palmata_Patch_bar_graph <- melt(Palmata_Patch_barr, id.vars = "Year")


ggplot(Palmata_Patch_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Palmata Patch")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Palmata_Patch_bar_graph$Year), max(Palmata_Patch_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/DT/plots/Palmata_Patch_SD.png", width = 8, height = 4)




Prolifera_Patch_bar <- filter(RHI_SD_plot, sitename == "Prolifera Patch")
Prolifera_Patch_barr <- select(Prolifera_Patch_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Prolifera_Patch_bar_graph <- melt(Prolifera_Patch_barr, id.vars = "Year")


ggplot(Prolifera_Patch_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Prolifera Patch")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Prolifera_Patch_bar_graph$Year), max(Prolifera_Patch_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/DT/plots/Prolifera_Patch_SD.png", width = 8, height = 4)




Temptation_Rock_bar <- filter(RHI_SD_plot, sitename == "Temptation Rock")
Temptation_Rock_barr <- select(Temptation_Rock_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Temptation_Rock_bar_graph <- melt(Temptation_Rock_barr, id.vars = "Year")


ggplot(Temptation_Rock_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Temptation Rock")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Temptation_Rock_bar_graph$Year), max(Temptation_Rock_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/DT/plots/Temptation_Rock_SD.png", width = 8, height = 4)





Texas_Rock_bar <- filter(RHI_SD_plot, sitename == "Texas Rock")
Texas_Rock_barr <- select(Texas_Rock_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


Texas_Rock_bar_graph <- melt(Texas_Rock_barr, id.vars = "Year")


ggplot(Texas_Rock_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "Texas Rock")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(Texas_Rock_bar_graph$Year), max(Texas_Rock_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/DT/plots/Texas_Rock_SD.png", width = 8, height = 4)




White_Shoal_bar <- filter(RHI_SD_plot, sitename == "White Shoal")
White_Shoal_barr <- select(White_Shoal_bar,RHI_Average,RHI_Average_plus,RHI_Average_minus,Year)


White_Shoal_bar_graph <- melt(White_Shoal_barr, id.vars = "Year")


ggplot(White_Shoal_bar_graph, aes(Year, value, fill=variable))+
  ggtitle("Reef Health Index", subtitle = "White Shoal")+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = -Inf, ymax = 1, fill = 'Critical'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 1, ymax = 2.01, fill = 'Poor'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 2, ymax = 3.01,fill = 'Fair'), alpha = .05)+
  geom_rect(aes(xmin = -Inf, 
                xmax = Inf,
                ymin = 3, ymax = 4.01, fill = 'Good'), alpha = .05)+
  geom_rect(aes(xmin = -Inf,
                xmax = Inf,
                ymin = 4, ymax = Inf, fill = 'Very Good'), alpha = .05)+
  geom_point()+
  geom_line(aes(color = variable), size = 1)+
  scale_x_continuous(breaks = round(seq(min(White_Shoal_bar_graph$Year), max(White_Shoal_bar_graph$Year), by = 2),1))+
  scale_y_continuous(limits = c(0,5), breaks = seq(0, 5, by = 1))+
  scale_color_manual(name = "Health Indicators",
                     labels = c("RHI Average","Plus SD","Minus SD"),
                     values=c("red", "black", "black"))+
  scale_fill_manual(name = "Health Categories",
                    labels = c("Very Good","Good","Fair","Poor","Critical"),
                    values = alpha(c("lightgreen","lightblue","gold","khaki","tomato")),
                    limits = c("Very Good","Good","Fair","Poor","Critical"),
                    guide = guide_legend(override.aes = list(shape = 22, size = 5)))+
  theme_light()+
  theme(  
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5),
    panel.grid = element_blank(),
    legend.title = element_text(face = "bold"),
    legend.background = element_blank(),
    legend.box.background = element_rect(colour = "black"))+
  ylab("RHI")

ggsave ("CREMP_RVC/RHI/DT/plots/White_Shoal_SD.png", width = 8, height = 4)



setwd("C:/Users/cara.estes/Documents/Spring_2020/CREMP_RVC/RHI/DT/plots")


pdf('DT.pdf')
lapply(ll <- list.files(patt='.*[.]png'),function(x){
  img <- as.raster(readPNG(x))
  grid.newpage()
  grid.raster(img, interpolate = FALSE)
  
})
dev.off()

plots <- lapply(ll <- list.files(patt='.*[.]png'),function(x){
  img <- as.raster(readPNG(x))
  rasterGrob(img, interpolate = FALSE)
})

ggsave("DT_combined.pdf", marrangeGrob(grobs=plots, nrow=2, ncol=4))

setwd("C:/Users/cara.estes/Documents/Spring_2020")



###Analyze next 


